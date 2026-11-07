; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

    ret c                                         ; $4000: $D8

    ld b, [hl]                                    ; $4001: $46
    ld sp, hl                                     ; $4002: $F9
    ld b, [hl]                                    ; $4003: $46
    ld c, $47                                     ; $4004: $0E $47
    ld sp, hl                                     ; $4006: $F9
    ld b, [hl]                                    ; $4007: $46
    ret c                                         ; $4008: $D8

    ld b, [hl]                                    ; $4009: $46
    ld sp, hl                                     ; $400A: $F9
    ld b, [hl]                                    ; $400B: $46
    dec [hl]                                      ; $400C: $35
    ld b, l                                       ; $400D: $45
    rst RST_38                                    ; $400E: $FF
    rst RST_38                                    ; $400F: $FF
    xor c                                         ; $4010: $A9
    ld c, c                                       ; $4011: $49
    cp d                                          ; $4012: $BA
    ld c, c                                       ; $4013: $49
    db $DB                                        ; $4014: $DB
    ld c, c                                       ; $4015: $49
    cp d                                          ; $4016: $BA
    ld c, c                                       ; $4017: $49
    xor c                                         ; $4018: $A9
    ld c, c                                       ; $4019: $49
    cp d                                          ; $401A: $BA
    ld c, c                                       ; $401B: $49
    db $DB                                        ; $401C: $DB
    ld c, c                                       ; $401D: $49
    cp d                                          ; $401E: $BA
    ld c, c                                       ; $401F: $49
    xor c                                         ; $4020: $A9
    ld c, c                                       ; $4021: $49
    cp d                                          ; $4022: $BA
    ld c, c                                       ; $4023: $49
    db $DB                                        ; $4024: $DB
    ld c, c                                       ; $4025: $49
    cp d                                          ; $4026: $BA
    ld c, c                                       ; $4027: $49
    rst RST_38                                    ; $4028: $FF
    rst RST_38                                    ; $4029: $FF
    ld c, a                                       ; $402A: $4F
    ld b, l                                       ; $402B: $45
    rst RST_38                                    ; $402C: $FF
    rst RST_38                                    ; $402D: $FF
    add [hl]                                      ; $402E: $86
    ld b, l                                       ; $402F: $45
    rst RST_38                                    ; $4030: $FF
    rst RST_38                                    ; $4031: $FF
    sub b                                         ; $4032: $90
    ld b, l                                       ; $4033: $45
    rst RST_38                                    ; $4034: $FF
    rst RST_38                                    ; $4035: $FF
    ret c                                         ; $4036: $D8

    ld b, l                                       ; $4037: $45
    dec d                                         ; $4038: $15
    ld b, [hl]                                    ; $4039: $46
    ret c                                         ; $403A: $D8

    ld b, l                                       ; $403B: $45
    dec d                                         ; $403C: $15
    ld b, [hl]                                    ; $403D: $46
    sub b                                         ; $403E: $90
    ld b, l                                       ; $403F: $45
    rst RST_38                                    ; $4040: $FF
    rst RST_38                                    ; $4041: $FF
    add [hl]                                      ; $4042: $86
    ld b, l                                       ; $4043: $45
    rst RST_38                                    ; $4044: $FF
    rst RST_38                                    ; $4045: $FF
    ld c, a                                       ; $4046: $4F
    ld b, l                                       ; $4047: $45
    rst RST_38                                    ; $4048: $FF
    rst RST_38                                    ; $4049: $FF
    ld c, a                                       ; $404A: $4F
    ld b, l                                       ; $404B: $45
    rst RST_38                                    ; $404C: $FF
    rst RST_38                                    ; $404D: $FF
    ld c, a                                       ; $404E: $4F
    ld b, l                                       ; $404F: $45
    rst RST_38                                    ; $4050: $FF
    rst RST_38                                    ; $4051: $FF
    ld c, a                                       ; $4052: $4F
    ld b, l                                       ; $4053: $45
    rst RST_38                                    ; $4054: $FF
    rst RST_38                                    ; $4055: $FF
    ld c, a                                       ; $4056: $4F
    ld b, l                                       ; $4057: $45
    rst RST_38                                    ; $4058: $FF
    rst RST_38                                    ; $4059: $FF
    ld c, a                                       ; $405A: $4F
    ld b, l                                       ; $405B: $45
    rst RST_38                                    ; $405C: $FF
    rst RST_38                                    ; $405D: $FF
    ld c, a                                       ; $405E: $4F
    ld b, l                                       ; $405F: $45
    rst RST_38                                    ; $4060: $FF
    rst RST_38                                    ; $4061: $FF
    ld c, a                                       ; $4062: $4F
    ld b, l                                       ; $4063: $45
    rst RST_38                                    ; $4064: $FF
    rst RST_38                                    ; $4065: $FF
    ld c, a                                       ; $4066: $4F
    ld b, l                                       ; $4067: $45
    rst RST_38                                    ; $4068: $FF
    rst RST_38                                    ; $4069: $FF
    ld c, a                                       ; $406A: $4F
    ld b, l                                       ; $406B: $45
    rst RST_38                                    ; $406C: $FF
    rst RST_38                                    ; $406D: $FF
    rst RST_38                                    ; $406E: $FF
    rst RST_38                                    ; $406F: $FF
    ld c, a                                       ; $4070: $4F
    ld b, l                                       ; $4071: $45
    rst RST_38                                    ; $4072: $FF
    rst RST_38                                    ; $4073: $FF
    add [hl]                                      ; $4074: $86
    ld b, l                                       ; $4075: $45
    rst RST_38                                    ; $4076: $FF
    rst RST_38                                    ; $4077: $FF
    sub b                                         ; $4078: $90
    ld b, l                                       ; $4079: $45
    rst RST_38                                    ; $407A: $FF
    rst RST_38                                    ; $407B: $FF
    ret c                                         ; $407C: $D8

    ld b, l                                       ; $407D: $45
    dec d                                         ; $407E: $15
    ld b, [hl]                                    ; $407F: $46
    db $DB                                        ; $4080: $DB
    ld c, b                                       ; $4081: $48
    rst RST_38                                    ; $4082: $FF
    rst RST_38                                    ; $4083: $FF
    or a                                          ; $4084: $B7
    ld c, b                                       ; $4085: $48
    sub c                                         ; $4086: $91
    ld c, b                                       ; $4087: $48
    ldh [c], a                                    ; $4088: $E2
    ld b, l                                       ; $4089: $45
    dec e                                         ; $408A: $1D
    ld b, [hl]                                    ; $408B: $46
    sbc d                                         ; $408C: $9A
    ld b, l                                       ; $408D: $45
    rst RST_38                                    ; $408E: $FF
    rst RST_38                                    ; $408F: $FF
    and h                                         ; $4090: $A4
    ld b, l                                       ; $4091: $45
    rst RST_38                                    ; $4092: $FF
    rst RST_38                                    ; $4093: $FF
    ld c, a                                       ; $4094: $4F
    ld b, l                                       ; $4095: $45
    rst RST_38                                    ; $4096: $FF
    rst RST_38                                    ; $4097: $FF
    ld c, a                                       ; $4098: $4F
    ld b, l                                       ; $4099: $45
    rst RST_38                                    ; $409A: $FF
    rst RST_38                                    ; $409B: $FF
    ld c, a                                       ; $409C: $4F
    ld b, l                                       ; $409D: $45
    rst RST_38                                    ; $409E: $FF
    rst RST_38                                    ; $409F: $FF
    ld c, a                                       ; $40A0: $4F
    ld b, l                                       ; $40A1: $45
    rst RST_38                                    ; $40A2: $FF
    rst RST_38                                    ; $40A3: $FF
    ld c, a                                       ; $40A4: $4F
    ld b, l                                       ; $40A5: $45
    rst RST_38                                    ; $40A6: $FF
    rst RST_38                                    ; $40A7: $FF
    ld c, a                                       ; $40A8: $4F
    ld b, l                                       ; $40A9: $45
    rst RST_38                                    ; $40AA: $FF
    rst RST_38                                    ; $40AB: $FF
    ld c, a                                       ; $40AC: $4F
    ld b, l                                       ; $40AD: $45
    rst RST_38                                    ; $40AE: $FF
    rst RST_38                                    ; $40AF: $FF
    ld c, a                                       ; $40B0: $4F
    ld b, l                                       ; $40B1: $45
    rst RST_38                                    ; $40B2: $FF
    rst RST_38                                    ; $40B3: $FF
    ld c, a                                       ; $40B4: $4F
    ld b, l                                       ; $40B5: $45
    rst RST_38                                    ; $40B6: $FF
    rst RST_38                                    ; $40B7: $FF
    ld c, a                                       ; $40B8: $4F
    ld b, l                                       ; $40B9: $45
    rst RST_38                                    ; $40BA: $FF
    rst RST_38                                    ; $40BB: $FF
    rst RST_38                                    ; $40BC: $FF
    rst RST_38                                    ; $40BD: $FF
    adc h                                         ; $40BE: $8C
    ld b, h                                       ; $40BF: $44
    rst RST_38                                    ; $40C0: $FF
    rst RST_38                                    ; $40C1: $FF
    xor a                                         ; $40C2: $AF
    ld b, h                                       ; $40C3: $44
    call z, $DB44                                 ; $40C4: $CC $44 $DB
    ld b, h                                       ; $40C7: $44
    call z, $AF44                                 ; $40C8: $CC $44 $AF
    ld b, h                                       ; $40CB: $44
    call z, $FF44                                 ; $40CC: $CC $44 $FF
    rst RST_38                                    ; $40CF: $FF
    ld hl, sp+$44                                 ; $40D0: $F8 $44
    rst RST_38                                    ; $40D2: $FF
    rst RST_38                                    ; $40D3: $FF
    dec de                                        ; $40D4: $1B
    ld b, l                                       ; $40D5: $45
    rst RST_38                                    ; $40D6: $FF
    rst RST_38                                    ; $40D7: $FF
    dec [hl]                                      ; $40D8: $35
    ld b, l                                       ; $40D9: $45
    rst RST_38                                    ; $40DA: $FF
    rst RST_38                                    ; $40DB: $FF
    dec de                                        ; $40DC: $1B
    ld b, l                                       ; $40DD: $45
    rst RST_38                                    ; $40DE: $FF
    rst RST_38                                    ; $40DF: $FF
    rst RST_38                                    ; $40E0: $FF
    rst RST_38                                    ; $40E1: $FF
    dec de                                        ; $40E2: $1B
    ld b, l                                       ; $40E3: $45
    rst RST_38                                    ; $40E4: $FF
    rst RST_38                                    ; $40E5: $FF
    dec [hl]                                      ; $40E6: $35
    ld b, l                                       ; $40E7: $45
    rst RST_38                                    ; $40E8: $FF
    rst RST_38                                    ; $40E9: $FF
    dec de                                        ; $40EA: $1B
    ld b, l                                       ; $40EB: $45
    rst RST_38                                    ; $40EC: $FF
    rst RST_38                                    ; $40ED: $FF
    ld hl, sp+$44                                 ; $40EE: $F8 $44
    rst RST_38                                    ; $40F0: $FF
    rst RST_38                                    ; $40F1: $FF
    rst RST_38                                    ; $40F2: $FF
    rst RST_38                                    ; $40F3: $FF
    ld c, a                                       ; $40F4: $4F
    ld b, l                                       ; $40F5: $45
    rst RST_38                                    ; $40F6: $FF
    rst RST_38                                    ; $40F7: $FF
    rst RST_38                                    ; $40F8: $FF
    rst RST_38                                    ; $40F9: $FF
    ld c, a                                       ; $40FA: $4F
    ld b, l                                       ; $40FB: $45
    rst RST_38                                    ; $40FC: $FF
    rst RST_38                                    ; $40FD: $FF
    ld a, h                                       ; $40FE: $7C
    ld b, l                                       ; $40FF: $45
    rst RST_38                                    ; $4100: $FF
    rst RST_38                                    ; $4101: $FF
    ld a, h                                       ; $4102: $7C
    ld b, l                                       ; $4103: $45
    rst RST_38                                    ; $4104: $FF
    rst RST_38                                    ; $4105: $FF
    adc $45                                       ; $4106: $CE $45
    dec c                                         ; $4108: $0D
    ld b, [hl]                                    ; $4109: $46
    adc $45                                       ; $410A: $CE $45
    dec c                                         ; $410C: $0D
    ld b, [hl]                                    ; $410D: $46
    ld a, h                                       ; $410E: $7C
    ld b, l                                       ; $410F: $45
    rst RST_38                                    ; $4110: $FF
    rst RST_38                                    ; $4111: $FF
    ld a, h                                       ; $4112: $7C
    ld b, l                                       ; $4113: $45
    rst RST_38                                    ; $4114: $FF
    rst RST_38                                    ; $4115: $FF
    ld c, a                                       ; $4116: $4F
    ld b, l                                       ; $4117: $45
    rst RST_38                                    ; $4118: $FF
    rst RST_38                                    ; $4119: $FF
    rst RST_38                                    ; $411A: $FF
    rst RST_38                                    ; $411B: $FF
    ld c, a                                       ; $411C: $4F
    ld b, l                                       ; $411D: $45
    rst RST_38                                    ; $411E: $FF
    rst RST_38                                    ; $411F: $FF
    ld a, h                                       ; $4120: $7C
    ld b, l                                       ; $4121: $45
    rst RST_38                                    ; $4122: $FF
    rst RST_38                                    ; $4123: $FF
    ccf                                           ; $4124: $3F
    ld b, [hl]                                    ; $4125: $46
    rst RST_38                                    ; $4126: $FF
    rst RST_38                                    ; $4127: $FF
    or $45                                        ; $4128: $F6 $45
    dec l                                         ; $412A: $2D
    ld b, [hl]                                    ; $412B: $46
    ld d, e                                       ; $412C: $53
    ld b, [hl]                                    ; $412D: $46
    rst RST_38                                    ; $412E: $FF
    rst RST_38                                    ; $412F: $FF
    adc $45                                       ; $4130: $CE $45
    dec c                                         ; $4132: $0D
    ld b, [hl]                                    ; $4133: $46
    ld a, h                                       ; $4134: $7C
    ld b, l                                       ; $4135: $45
    rst RST_38                                    ; $4136: $FF
    rst RST_38                                    ; $4137: $FF
    ld c, a                                       ; $4138: $4F
    ld b, l                                       ; $4139: $45
    rst RST_38                                    ; $413A: $FF
    rst RST_38                                    ; $413B: $FF
    rst RST_38                                    ; $413C: $FF
    rst RST_38                                    ; $413D: $FF
    ld c, a                                       ; $413E: $4F
    ld b, l                                       ; $413F: $45
    rst RST_38                                    ; $4140: $FF
    rst RST_38                                    ; $4141: $FF
    ld a, h                                       ; $4142: $7C
    ld b, l                                       ; $4143: $45
    rst RST_38                                    ; $4144: $FF
    rst RST_38                                    ; $4145: $FF
    ld d, e                                       ; $4146: $53
    ld b, [hl]                                    ; $4147: $46
    rst RST_38                                    ; $4148: $FF
    rst RST_38                                    ; $4149: $FF
    or $45                                        ; $414A: $F6 $45
    dec l                                         ; $414C: $2D
    ld b, [hl]                                    ; $414D: $46
    ccf                                           ; $414E: $3F
    ld b, [hl]                                    ; $414F: $46
    rst RST_38                                    ; $4150: $FF
    rst RST_38                                    ; $4151: $FF
    adc $45                                       ; $4152: $CE $45
    dec c                                         ; $4154: $0D
    ld b, [hl]                                    ; $4155: $46
    ld a, h                                       ; $4156: $7C
    ld b, l                                       ; $4157: $45
    rst RST_38                                    ; $4158: $FF
    rst RST_38                                    ; $4159: $FF
    ld c, a                                       ; $415A: $4F
    ld b, l                                       ; $415B: $45
    rst RST_38                                    ; $415C: $FF
    rst RST_38                                    ; $415D: $FF
    rst RST_38                                    ; $415E: $FF
    rst RST_38                                    ; $415F: $FF
    ld [hl], e                                    ; $4160: $73
    ld b, [hl]                                    ; $4161: $46
    adc [hl]                                      ; $4162: $8E
    ld b, [hl]                                    ; $4163: $46
    rst RST_38                                    ; $4164: $FF
    rst RST_38                                    ; $4165: $FF
    ld a, l                                       ; $4166: $7D
    ld b, [hl]                                    ; $4167: $46
    xor c                                         ; $4168: $A9
    ld b, [hl]                                    ; $4169: $46
    rst RST_38                                    ; $416A: $FF
    rst RST_38                                    ; $416B: $FF
    pop bc                                        ; $416C: $C1
    ld b, [hl]                                    ; $416D: $46
    dec c                                         ; $416E: $0D
    ld b, [hl]                                    ; $416F: $46
    ld c, a                                       ; $4170: $4F
    ld b, l                                       ; $4171: $45
    rst RST_38                                    ; $4172: $FF
    rst RST_38                                    ; $4173: $FF
    rst RST_38                                    ; $4174: $FF
    rst RST_38                                    ; $4175: $FF
    ret c                                         ; $4176: $D8

    ld b, [hl]                                    ; $4177: $46
    ld sp, hl                                     ; $4178: $F9
    ld b, [hl]                                    ; $4179: $46
    ld c, $47                                     ; $417A: $0E $47
    ld sp, hl                                     ; $417C: $F9
    ld b, [hl]                                    ; $417D: $46
    ret c                                         ; $417E: $D8

    ld b, [hl]                                    ; $417F: $46
    ld sp, hl                                     ; $4180: $F9
    ld b, [hl]                                    ; $4181: $46
    rst RST_38                                    ; $4182: $FF
    rst RST_38                                    ; $4183: $FF
    jr z, jr_007_41CD                             ; $4184: $28 $47

    ld b, d                                       ; $4186: $42
    ld b, a                                       ; $4187: $47
    ld d, h                                       ; $4188: $54
    ld b, a                                       ; $4189: $47
    rst RST_38                                    ; $418A: $FF
    rst RST_38                                    ; $418B: $FF
    jr z, jr_007_41D5                             ; $418C: $28 $47

    ld [hl], h                                    ; $418E: $74
    ld b, a                                       ; $418F: $47
    rst RST_38                                    ; $4190: $FF
    rst RST_38                                    ; $4191: $FF
    ld c, a                                       ; $4192: $4F
    ld b, l                                       ; $4193: $45
    rst RST_38                                    ; $4194: $FF
    rst RST_38                                    ; $4195: $FF
    add [hl]                                      ; $4196: $86
    ld b, a                                       ; $4197: $47
    and e                                         ; $4198: $A3
    ld b, a                                       ; $4199: $47
    cp b                                          ; $419A: $B8
    ld b, a                                       ; $419B: $47
    and e                                         ; $419C: $A3
    ld b, a                                       ; $419D: $47
    ld [hl], e                                    ; $419E: $73
    ld b, [hl]                                    ; $419F: $46
    adc [hl]                                      ; $41A0: $8E
    ld b, [hl]                                    ; $41A1: $46
    rst RST_38                                    ; $41A2: $FF
    rst RST_38                                    ; $41A3: $FF
    jp nc, $FF47                                  ; $41A4: $D2 $47 $FF

    rst RST_38                                    ; $41A7: $FF
    ldh a, [c]                                    ; $41A8: $F2
    ld b, a                                       ; $41A9: $47
    rst RST_38                                    ; $41AA: $FF
    rst RST_38                                    ; $41AB: $FF
    jp nc, $FF47                                  ; $41AC: $D2 $47 $FF

    rst RST_38                                    ; $41AF: $FF
    rst RST_38                                    ; $41B0: $FF
    rst RST_38                                    ; $41B1: $FF
    jp nc, $FF47                                  ; $41B2: $D2 $47 $FF

    rst RST_38                                    ; $41B5: $FF
    dec d                                         ; $41B6: $15
    ld c, b                                       ; $41B7: $48
    rst RST_38                                    ; $41B8: $FF
    rst RST_38                                    ; $41B9: $FF
    jp nc, $FF47                                  ; $41BA: $D2 $47 $FF

    rst RST_38                                    ; $41BD: $FF
    rst RST_38                                    ; $41BE: $FF
    rst RST_38                                    ; $41BF: $FF
    ld b, [hl]                                    ; $41C0: $46
    ld c, b                                       ; $41C1: $48
    and e                                         ; $41C2: $A3
    ld b, a                                       ; $41C3: $47
    push hl                                       ; $41C4: $E5
    ld c, b                                       ; $41C5: $48
    rst RST_38                                    ; $41C6: $FF
    rst RST_38                                    ; $41C7: $FF
    ld e, l                                       ; $41C8: $5D
    ld c, b                                       ; $41C9: $48
    add c                                         ; $41CA: $81
    ld c, b                                       ; $41CB: $48
    and e                                         ; $41CC: $A3

jr_007_41CD:
    ld c, b                                       ; $41CD: $48
    add c                                         ; $41CE: $81
    ld c, b                                       ; $41CF: $48
    ld e, c                                       ; $41D0: $59
    ld b, l                                       ; $41D1: $45
    rst RST_38                                    ; $41D2: $FF
    rst RST_38                                    ; $41D3: $FF
    rst RST_38                                    ; $41D4: $FF

jr_007_41D5:
    rst RST_38                                    ; $41D5: $FF
    xor l                                         ; $41D6: $AD
    ld c, b                                       ; $41D7: $48
    adc c                                         ; $41D8: $89
    ld c, b                                       ; $41D9: $48
    pop de                                        ; $41DA: $D1
    ld c, b                                       ; $41DB: $48
    rst RST_38                                    ; $41DC: $FF
    rst RST_38                                    ; $41DD: $FF
    ld de, $FF49                                  ; $41DE: $11 $49 $FF
    rst RST_38                                    ; $41E1: $FF
    ld de, $FF49                                  ; $41E2: $11 $49 $FF
    rst RST_38                                    ; $41E5: $FF
    ld c, a                                       ; $41E6: $4F
    ld b, l                                       ; $41E7: $45
    rst RST_38                                    ; $41E8: $FF
    rst RST_38                                    ; $41E9: $FF
    rst RST_38                                    ; $41EA: $FF
    rst RST_38                                    ; $41EB: $FF
    xor l                                         ; $41EC: $AD
    ld c, b                                       ; $41ED: $48
    adc c                                         ; $41EE: $89
    ld c, b                                       ; $41EF: $48
    add hl, hl                                    ; $41F0: $29
    ld c, b                                       ; $41F1: $48
    rst RST_38                                    ; $41F2: $FF
    rst RST_38                                    ; $41F3: $FF
    add hl, hl                                    ; $41F4: $29
    ld c, b                                       ; $41F5: $48
    rst RST_38                                    ; $41F6: $FF
    rst RST_38                                    ; $41F7: $FF
    add hl, hl                                    ; $41F8: $29
    ld c, b                                       ; $41F9: $48
    rst RST_38                                    ; $41FA: $FF
    rst RST_38                                    ; $41FB: $FF
    ld c, a                                       ; $41FC: $4F
    ld b, l                                       ; $41FD: $45
    rst RST_38                                    ; $41FE: $FF
    rst RST_38                                    ; $41FF: $FF
    rst RST_38                                    ; $4200: $FF
    rst RST_38                                    ; $4201: $FF
    ldh [c], a                                    ; $4202: $E2
    ld b, [hl]                                    ; $4203: $46
    ld sp, hl                                     ; $4204: $F9
    ld b, [hl]                                    ; $4205: $46
    ld c, c                                       ; $4206: $49
    ld b, [hl]                                    ; $4207: $46
    rst RST_38                                    ; $4208: $FF
    rst RST_38                                    ; $4209: $FF
    db $EC                                        ; $420A: $EC
    ld b, l                                       ; $420B: $45
    dec h                                         ; $420C: $25
    ld b, [hl]                                    ; $420D: $46
    xor [hl]                                      ; $420E: $AE
    ld b, l                                       ; $420F: $45
    rst RST_38                                    ; $4210: $FF
    rst RST_38                                    ; $4211: $FF
    ld c, c                                       ; $4212: $49
    ld b, [hl]                                    ; $4213: $46
    rst RST_38                                    ; $4214: $FF
    rst RST_38                                    ; $4215: $FF
    ld e, c                                       ; $4216: $59
    ld b, l                                       ; $4217: $45
    rst RST_38                                    ; $4218: $FF
    rst RST_38                                    ; $4219: $FF
    rst RST_38                                    ; $421A: $FF
    rst RST_38                                    ; $421B: $FF
    scf                                           ; $421C: $37
    ld c, c                                       ; $421D: $49
    ld c, b                                       ; $421E: $48
    ld c, c                                       ; $421F: $49
    ld c, a                                       ; $4220: $4F
    ld b, l                                       ; $4221: $45
    rst RST_38                                    ; $4222: $FF
    rst RST_38                                    ; $4223: $FF
    rst RST_38                                    ; $4224: $FF
    rst RST_38                                    ; $4225: $FF
    scf                                           ; $4226: $37
    ld c, c                                       ; $4227: $49
    ld c, b                                       ; $4228: $48
    ld c, c                                       ; $4229: $49
    scf                                           ; $422A: $37
    ld c, c                                       ; $422B: $49
    ld c, b                                       ; $422C: $48
    ld c, c                                       ; $422D: $49
    ld c, a                                       ; $422E: $4F
    ld b, l                                       ; $422F: $45
    rst RST_38                                    ; $4230: $FF
    rst RST_38                                    ; $4231: $FF
    rst RST_38                                    ; $4232: $FF
    rst RST_38                                    ; $4233: $FF
    ld h, e                                       ; $4234: $63
    ld c, c                                       ; $4235: $49
    rst RST_38                                    ; $4236: $FF
    rst RST_38                                    ; $4237: $FF
    add [hl]                                      ; $4238: $86
    ld c, c                                       ; $4239: $49
    rst RST_38                                    ; $423A: $FF
    rst RST_38                                    ; $423B: $FF
    rst RST_38                                    ; $423C: $FF
    rst RST_38                                    ; $423D: $FF
    ret c                                         ; $423E: $D8

    ld b, [hl]                                    ; $423F: $46
    ld sp, hl                                     ; $4240: $F9
    ld b, [hl]                                    ; $4241: $46
    ld c, $47                                     ; $4242: $0E $47
    ld sp, hl                                     ; $4244: $F9
    ld b, [hl]                                    ; $4245: $46
    ret c                                         ; $4246: $D8

    ld b, [hl]                                    ; $4247: $46
    ld sp, hl                                     ; $4248: $F9
    ld b, [hl]                                    ; $4249: $46
    dec [hl]                                      ; $424A: $35
    ld b, l                                       ; $424B: $45
    rst RST_38                                    ; $424C: $FF
    rst RST_38                                    ; $424D: $FF
    xor c                                         ; $424E: $A9
    ld c, c                                       ; $424F: $49
    cp d                                          ; $4250: $BA
    ld c, c                                       ; $4251: $49
    db $DB                                        ; $4252: $DB
    ld c, c                                       ; $4253: $49
    cp d                                          ; $4254: $BA
    ld c, c                                       ; $4255: $49
    xor c                                         ; $4256: $A9
    ld c, c                                       ; $4257: $49
    cp d                                          ; $4258: $BA
    ld c, c                                       ; $4259: $49
    db $DB                                        ; $425A: $DB
    ld c, c                                       ; $425B: $49
    cp d                                          ; $425C: $BA
    ld c, c                                       ; $425D: $49
    xor c                                         ; $425E: $A9
    ld c, c                                       ; $425F: $49
    cp d                                          ; $4260: $BA
    ld c, c                                       ; $4261: $49
    db $DB                                        ; $4262: $DB
    ld c, c                                       ; $4263: $49
    cp d                                          ; $4264: $BA
    ld c, c                                       ; $4265: $49
    dec [hl]                                      ; $4266: $35
    ld b, l                                       ; $4267: $45
    rst RST_38                                    ; $4268: $FF
    rst RST_38                                    ; $4269: $FF
    rst RST_38                                    ; $426A: $FF
    rst RST_38                                    ; $426B: $FF
    db $EC                                        ; $426C: $EC
    ld c, c                                       ; $426D: $49
    rst RST_38                                    ; $426E: $FF
    rst RST_38                                    ; $426F: $FF
    inc c                                         ; $4270: $0C
    ld c, d                                       ; $4271: $4A
    dec sp                                        ; $4272: $3B
    ld c, d                                       ; $4273: $4A
    sbc a                                         ; $4274: $9F
    ld d, b                                       ; $4275: $50
    rst RST_38                                    ; $4276: $FF
    rst RST_38                                    ; $4277: $FF
    rst RST_38                                    ; $4278: $FF
    rst RST_38                                    ; $4279: $FF
    inc c                                         ; $427A: $0C
    ld c, d                                       ; $427B: $4A
    dec sp                                        ; $427C: $3B
    ld c, d                                       ; $427D: $4A
    db $EC                                        ; $427E: $EC
    ld c, c                                       ; $427F: $49
    rst RST_38                                    ; $4280: $FF
    rst RST_38                                    ; $4281: $FF
    adc h                                         ; $4282: $8C
    ld b, h                                       ; $4283: $44
    rst RST_38                                    ; $4284: $FF
    rst RST_38                                    ; $4285: $FF
    rst RST_38                                    ; $4286: $FF
    rst RST_38                                    ; $4287: $FF
    dec de                                        ; $4288: $1B
    ld b, l                                       ; $4289: $45
    rst RST_38                                    ; $428A: $FF
    rst RST_38                                    ; $428B: $FF
    ld d, [hl]                                    ; $428C: $56
    ld c, d                                       ; $428D: $4A
    rst RST_38                                    ; $428E: $FF
    rst RST_38                                    ; $428F: $FF
    call nc, $BA4A                                ; $4290: $D4 $4A $BA
    ld c, c                                       ; $4293: $49
    rst RST_38                                    ; $4294: $FF
    rst RST_38                                    ; $4295: $FF
    ret c                                         ; $4296: $D8

    ld b, [hl]                                    ; $4297: $46
    ld sp, hl                                     ; $4298: $F9
    ld b, [hl]                                    ; $4299: $46
    ld c, $47                                     ; $429A: $0E $47
    ld sp, hl                                     ; $429C: $F9
    ld b, [hl]                                    ; $429D: $46
    ld c, a                                       ; $429E: $4F
    ld b, l                                       ; $429F: $45
    rst RST_38                                    ; $42A0: $FF
    rst RST_38                                    ; $42A1: $FF
    adc b                                         ; $42A2: $88
    ld c, d                                       ; $42A3: $4A
    and d                                         ; $42A4: $A2
    ld c, d                                       ; $42A5: $4A
    cp d                                          ; $42A6: $BA
    ld c, d                                       ; $42A7: $4A
    and d                                         ; $42A8: $A2
    ld c, d                                       ; $42A9: $4A
    call nc, $BA4A                                ; $42AA: $D4 $4A $BA
    ld c, c                                       ; $42AD: $49
    ldh [c], a                                    ; $42AE: $E2
    ld c, d                                       ; $42AF: $4A
    add hl, bc                                    ; $42B0: $09
    ld c, e                                       ; $42B1: $4B
    db $EC                                        ; $42B2: $EC
    ld c, d                                       ; $42B3: $4A
    add hl, bc                                    ; $42B4: $09
    ld c, e                                       ; $42B5: $4B
    rst RST_38                                    ; $42B6: $FF
    rst RST_38                                    ; $42B7: $FF
    ret c                                         ; $42B8: $D8

    ld b, [hl]                                    ; $42B9: $46
    ld sp, hl                                     ; $42BA: $F9
    ld b, [hl]                                    ; $42BB: $46
    ld c, $47                                     ; $42BC: $0E $47
    ld sp, hl                                     ; $42BE: $F9
    ld b, [hl]                                    ; $42BF: $46
    ld c, a                                       ; $42C0: $4F
    ld b, l                                       ; $42C1: $45
    rst RST_38                                    ; $42C2: $FF
    rst RST_38                                    ; $42C3: $FF
    adc b                                         ; $42C4: $88
    ld c, d                                       ; $42C5: $4A
    and d                                         ; $42C6: $A2
    ld c, d                                       ; $42C7: $4A
    cp d                                          ; $42C8: $BA
    ld c, d                                       ; $42C9: $4A
    and d                                         ; $42CA: $A2
    ld c, d                                       ; $42CB: $4A
    call nc, $BA4A                                ; $42CC: $D4 $4A $BA
    ld c, c                                       ; $42CF: $49
    db $EC                                        ; $42D0: $EC
    ld c, d                                       ; $42D1: $4A
    add hl, bc                                    ; $42D2: $09
    ld c, e                                       ; $42D3: $4B
    rst RST_38                                    ; $42D4: $FF
    rst RST_38                                    ; $42D5: $FF
    dec l                                         ; $42D6: $2D
    ld c, e                                       ; $42D7: $4B
    rst RST_38                                    ; $42D8: $FF
    rst RST_38                                    ; $42D9: $FF
    rst RST_38                                    ; $42DA: $FF
    rst RST_38                                    ; $42DB: $FF
    dec l                                         ; $42DC: $2D
    ld c, e                                       ; $42DD: $4B
    rst RST_38                                    ; $42DE: $FF
    rst RST_38                                    ; $42DF: $FF
    rst RST_38                                    ; $42E0: $FF
    rst RST_38                                    ; $42E1: $FF
    adc h                                         ; $42E2: $8C
    ld b, h                                       ; $42E3: $44
    rst RST_38                                    ; $42E4: $FF
    rst RST_38                                    ; $42E5: $FF
    dec l                                         ; $42E6: $2D
    ld c, e                                       ; $42E7: $4B
    rst RST_38                                    ; $42E8: $FF
    rst RST_38                                    ; $42E9: $FF
    ld d, e                                       ; $42EA: $53
    ld c, e                                       ; $42EB: $4B
    rst RST_38                                    ; $42EC: $FF
    rst RST_38                                    ; $42ED: $FF
    rst RST_38                                    ; $42EE: $FF
    rst RST_38                                    ; $42EF: $FF
    sbc e                                         ; $42F0: $9B
    ld c, e                                       ; $42F1: $4B
    rst RST_38                                    ; $42F2: $FF
    rst RST_38                                    ; $42F3: $FF
    rst RST_38                                    ; $42F4: $FF
    rst RST_38                                    ; $42F5: $FF
    dec l                                         ; $42F6: $2D
    ld c, e                                       ; $42F7: $4B
    rst RST_38                                    ; $42F8: $FF
    rst RST_38                                    ; $42F9: $FF
    ld d, e                                       ; $42FA: $53
    ld b, [hl]                                    ; $42FB: $46
    rst RST_38                                    ; $42FC: $FF
    rst RST_38                                    ; $42FD: $FF
    or $45                                        ; $42FE: $F6 $45
    dec l                                         ; $4300: $2D
    ld b, [hl]                                    ; $4301: $46
    ccf                                           ; $4302: $3F
    ld b, [hl]                                    ; $4303: $46
    rst RST_38                                    ; $4304: $FF
    rst RST_38                                    ; $4305: $FF
    adc $45                                       ; $4306: $CE $45
    dec c                                         ; $4308: $0D
    ld b, [hl]                                    ; $4309: $46
    ld a, h                                       ; $430A: $7C
    ld b, l                                       ; $430B: $45
    rst RST_38                                    ; $430C: $FF
    rst RST_38                                    ; $430D: $FF
    ld c, a                                       ; $430E: $4F
    ld b, l                                       ; $430F: $45
    rst RST_38                                    ; $4310: $FF
    rst RST_38                                    ; $4311: $FF
    rst RST_38                                    ; $4312: $FF
    rst RST_38                                    ; $4313: $FF
    dec l                                         ; $4314: $2D
    ld c, e                                       ; $4315: $4B
    rst RST_38                                    ; $4316: $FF
    rst RST_38                                    ; $4317: $FF
    cp [hl]                                       ; $4318: $BE
    ld c, e                                       ; $4319: $4B
    rst RST_38                                    ; $431A: $FF
    rst RST_38                                    ; $431B: $FF
    add sp, $4B                                   ; $431C: $E8 $4B
    rst RST_38                                    ; $431E: $FF
    rst RST_38                                    ; $431F: $FF
    cp [hl]                                       ; $4320: $BE
    ld c, e                                       ; $4321: $4B
    rst RST_38                                    ; $4322: $FF
    rst RST_38                                    ; $4323: $FF
    add sp, $4B                                   ; $4324: $E8 $4B
    rst RST_38                                    ; $4326: $FF
    rst RST_38                                    ; $4327: $FF
    rst RST_38                                    ; $4328: $FF
    rst RST_38                                    ; $4329: $FF
    ld d, e                                       ; $432A: $53
    ld c, e                                       ; $432B: $4B
    rst RST_38                                    ; $432C: $FF
    rst RST_38                                    ; $432D: $FF
    ld h, a                                       ; $432E: $67
    ld c, e                                       ; $432F: $4B
    rst RST_38                                    ; $4330: $FF
    rst RST_38                                    ; $4331: $FF
    ld [hl], c                                    ; $4332: $71
    ld c, e                                       ; $4333: $4B
    rst RST_38                                    ; $4334: $FF
    rst RST_38                                    ; $4335: $FF
    ld a, e                                       ; $4336: $7B
    ld c, e                                       ; $4337: $4B
    rst RST_38                                    ; $4338: $FF
    rst RST_38                                    ; $4339: $FF
    ld a, e                                       ; $433A: $7B
    ld c, e                                       ; $433B: $4B
    rst RST_38                                    ; $433C: $FF
    rst RST_38                                    ; $433D: $FF
    cp [hl]                                       ; $433E: $BE
    ld c, e                                       ; $433F: $4B
    rst RST_38                                    ; $4340: $FF
    rst RST_38                                    ; $4341: $FF
    add sp, $4B                                   ; $4342: $E8 $4B
    rst RST_38                                    ; $4344: $FF
    rst RST_38                                    ; $4345: $FF
    rst RST_38                                    ; $4346: $FF
    rst RST_38                                    ; $4347: $FF
    dec l                                         ; $4348: $2D
    ld c, e                                       ; $4349: $4B
    rst RST_38                                    ; $434A: $FF
    rst RST_38                                    ; $434B: $FF
    cp [hl]                                       ; $434C: $BE
    ld c, e                                       ; $434D: $4B
    rst RST_38                                    ; $434E: $FF
    rst RST_38                                    ; $434F: $FF
    add sp, $4B                                   ; $4350: $E8 $4B
    rst RST_38                                    ; $4352: $FF
    rst RST_38                                    ; $4353: $FF
    rst RST_38                                    ; $4354: $FF
    rst RST_38                                    ; $4355: $FF
    ret z                                         ; $4356: $C8

    ld c, e                                       ; $4357: $4B
    rst RST_38                                    ; $4358: $FF
    rst RST_38                                    ; $4359: $FF
    rst RST_38                                    ; $435A: $FF
    rst RST_38                                    ; $435B: $FF
    ld c, a                                       ; $435C: $4F
    ld b, l                                       ; $435D: $45
    rst RST_38                                    ; $435E: $FF
    rst RST_38                                    ; $435F: $FF
    ld c, a                                       ; $4360: $4F
    ld b, l                                       ; $4361: $45
    rst RST_38                                    ; $4362: $FF
    rst RST_38                                    ; $4363: $FF
    rst RST_38                                    ; $4364: $FF
    rst RST_38                                    ; $4365: $FF
    ld [hl], e                                    ; $4366: $73
    ld b, [hl]                                    ; $4367: $46
    adc [hl]                                      ; $4368: $8E
    ld b, [hl]                                    ; $4369: $46
    inc c                                         ; $436A: $0C
    ld c, h                                       ; $436B: $4C
    rst RST_38                                    ; $436C: $FF
    rst RST_38                                    ; $436D: $FF
    dec [hl]                                      ; $436E: $35
    ld c, h                                       ; $436F: $4C
    ld c, h                                       ; $4370: $4C
    ld c, h                                       ; $4371: $4C
    ld l, d                                       ; $4372: $6A
    ld c, h                                       ; $4373: $4C
    ld c, h                                       ; $4374: $4C
    ld c, h                                       ; $4375: $4C
    ld a, [hl]                                    ; $4376: $7E
    ld c, h                                       ; $4377: $4C
    rst RST_38                                    ; $4378: $FF
    rst RST_38                                    ; $4379: $FF
    rst RST_38                                    ; $437A: $FF
    rst RST_38                                    ; $437B: $FF
    ld [hl], e                                    ; $437C: $73
    ld b, [hl]                                    ; $437D: $46
    adc [hl]                                      ; $437E: $8E
    ld b, [hl]                                    ; $437F: $46
    ld [bc], a                                    ; $4380: $02
    ld c, h                                       ; $4381: $4C
    rst RST_38                                    ; $4382: $FF
    rst RST_38                                    ; $4383: $FF
    dec [hl]                                      ; $4384: $35
    ld c, h                                       ; $4385: $4C
    ld c, h                                       ; $4386: $4C
    ld c, h                                       ; $4387: $4C
    ld l, d                                       ; $4388: $6A
    ld c, h                                       ; $4389: $4C
    ld c, h                                       ; $438A: $4C
    ld c, h                                       ; $438B: $4C
    ld a, [hl]                                    ; $438C: $7E
    ld c, h                                       ; $438D: $4C
    rst RST_38                                    ; $438E: $FF
    rst RST_38                                    ; $438F: $FF
    rst RST_38                                    ; $4390: $FF
    rst RST_38                                    ; $4391: $FF
    ld b, [hl]                                    ; $4392: $46
    ld c, b                                       ; $4393: $48
    and e                                         ; $4394: $A3
    ld b, a                                       ; $4395: $47
    and c                                         ; $4396: $A1
    ld c, h                                       ; $4397: $4C
    rst RST_38                                    ; $4398: $FF
    rst RST_38                                    ; $4399: $FF
    xor e                                         ; $439A: $AB
    ld c, h                                       ; $439B: $4C
    rst RST_38                                    ; $439C: $FF
    rst RST_38                                    ; $439D: $FF
    or l                                          ; $439E: $B5
    ld c, h                                       ; $439F: $4C
    rst RST_38                                    ; $43A0: $FF
    rst RST_38                                    ; $43A1: $FF
    xor e                                         ; $43A2: $AB
    ld c, h                                       ; $43A3: $4C
    rst RST_38                                    ; $43A4: $FF
    rst RST_38                                    ; $43A5: $FF
    and c                                         ; $43A6: $A1
    ld c, h                                       ; $43A7: $4C
    rst RST_38                                    ; $43A8: $FF
    rst RST_38                                    ; $43A9: $FF
    ld c, a                                       ; $43AA: $4F
    ld b, l                                       ; $43AB: $45
    rst RST_38                                    ; $43AC: $FF
    rst RST_38                                    ; $43AD: $FF
    rst RST_38                                    ; $43AE: $FF
    rst RST_38                                    ; $43AF: $FF
    ld b, [hl]                                    ; $43B0: $46
    ld c, b                                       ; $43B1: $48
    and e                                         ; $43B2: $A3
    ld b, a                                       ; $43B3: $47
    and c                                         ; $43B4: $A1
    ld c, h                                       ; $43B5: $4C
    rst RST_38                                    ; $43B6: $FF
    rst RST_38                                    ; $43B7: $FF
    ld c, a                                       ; $43B8: $4F
    ld b, l                                       ; $43B9: $45
    rst RST_38                                    ; $43BA: $FF
    rst RST_38                                    ; $43BB: $FF
    ld h, a                                       ; $43BC: $67
    ld c, b                                       ; $43BD: $48
    add c                                         ; $43BE: $81
    ld c, b                                       ; $43BF: $48
    and e                                         ; $43C0: $A3
    ld c, b                                       ; $43C1: $48
    add c                                         ; $43C2: $81
    ld c, b                                       ; $43C3: $48
    add [hl]                                      ; $43C4: $86
    ld b, a                                       ; $43C5: $47
    and e                                         ; $43C6: $A3
    ld b, a                                       ; $43C7: $47
    cp b                                          ; $43C8: $B8
    ld b, a                                       ; $43C9: $47
    and e                                         ; $43CA: $A3
    ld b, a                                       ; $43CB: $47
    ld [hl], e                                    ; $43CC: $73
    ld b, [hl]                                    ; $43CD: $46
    adc [hl]                                      ; $43CE: $8E
    ld b, [hl]                                    ; $43CF: $46
    rst RST_38                                    ; $43D0: $FF
    rst RST_38                                    ; $43D1: $FF
    ld [hl], e                                    ; $43D2: $73
    ld b, [hl]                                    ; $43D3: $46
    adc [hl]                                      ; $43D4: $8E
    ld b, [hl]                                    ; $43D5: $46
    sbc $4C                                       ; $43D6: $DE $4C
    cp $4C                                        ; $43D8: $FE $4C
    inc de                                        ; $43DA: $13
    ld c, l                                       ; $43DB: $4D
    cp $4C                                        ; $43DC: $FE $4C
    ld [hl], e                                    ; $43DE: $73
    ld b, [hl]                                    ; $43DF: $46
    adc [hl]                                      ; $43E0: $8E
    ld b, [hl]                                    ; $43E1: $46
    rst RST_38                                    ; $43E2: $FF
    rst RST_38                                    ; $43E3: $FF
    ld c, a                                       ; $43E4: $4F
    ld b, l                                       ; $43E5: $45
    rst RST_38                                    ; $43E6: $FF
    rst RST_38                                    ; $43E7: $FF
    cp b                                          ; $43E8: $B8
    ld b, a                                       ; $43E9: $47
    and e                                         ; $43EA: $A3
    ld b, a                                       ; $43EB: $47
    inc sp                                        ; $43EC: $33
    ld c, l                                       ; $43ED: $4D
    rst RST_38                                    ; $43EE: $FF
    rst RST_38                                    ; $43EF: $FF
    ld a, h                                       ; $43F0: $7C
    ld b, l                                       ; $43F1: $45
    rst RST_38                                    ; $43F2: $FF
    rst RST_38                                    ; $43F3: $FF
    ld c, a                                       ; $43F4: $4F
    ld b, l                                       ; $43F5: $45
    rst RST_38                                    ; $43F6: $FF
    rst RST_38                                    ; $43F7: $FF
    rst RST_38                                    ; $43F8: $FF
    rst RST_38                                    ; $43F9: $FF
    ld [hl], e                                    ; $43FA: $73
    ld b, [hl]                                    ; $43FB: $46
    adc [hl]                                      ; $43FC: $8E
    ld b, [hl]                                    ; $43FD: $46
    add [hl]                                      ; $43FE: $86
    ld c, c                                       ; $43FF: $49
    rst RST_38                                    ; $4400: $FF
    rst RST_38                                    ; $4401: $FF
    ld c, a                                       ; $4402: $4F
    ld b, l                                       ; $4403: $45
    rst RST_38                                    ; $4404: $FF
    rst RST_38                                    ; $4405: $FF
    and c                                         ; $4406: $A1
    ld c, h                                       ; $4407: $4C
    rst RST_38                                    ; $4408: $FF
    rst RST_38                                    ; $4409: $FF
    jr z, jr_007_4453                             ; $440A: $28 $47

    ld b, d                                       ; $440C: $42
    ld b, a                                       ; $440D: $47
    ld d, h                                       ; $440E: $54
    ld b, a                                       ; $440F: $47
    rst RST_38                                    ; $4410: $FF
    rst RST_38                                    ; $4411: $FF
    ret c                                         ; $4412: $D8

    ld b, [hl]                                    ; $4413: $46
    ld sp, hl                                     ; $4414: $F9
    ld b, [hl]                                    ; $4415: $46
    ld c, $47                                     ; $4416: $0E $47
    ld sp, hl                                     ; $4418: $F9
    ld b, [hl]                                    ; $4419: $46
    ld c, a                                       ; $441A: $4F
    ld b, l                                       ; $441B: $45
    rst RST_38                                    ; $441C: $FF
    rst RST_38                                    ; $441D: $FF
    dec d                                         ; $441E: $15
    ld c, b                                       ; $441F: $48
    rst RST_38                                    ; $4420: $FF
    rst RST_38                                    ; $4421: $FF
    ld c, a                                       ; $4422: $4F
    ld b, l                                       ; $4423: $45
    rst RST_38                                    ; $4424: $FF
    rst RST_38                                    ; $4425: $FF
    add [hl]                                      ; $4426: $86
    ld b, a                                       ; $4427: $47
    and e                                         ; $4428: $A3
    ld b, a                                       ; $4429: $47
    and c                                         ; $442A: $A1
    ld c, h                                       ; $442B: $4C
    rst RST_38                                    ; $442C: $FF
    rst RST_38                                    ; $442D: $FF
    ld e, l                                       ; $442E: $5D
    ld c, b                                       ; $442F: $48
    add c                                         ; $4430: $81
    ld c, b                                       ; $4431: $48
    add [hl]                                      ; $4432: $86
    ld b, a                                       ; $4433: $47
    and e                                         ; $4434: $A3
    ld b, a                                       ; $4435: $47
    and c                                         ; $4436: $A1
    ld c, h                                       ; $4437: $4C
    rst RST_38                                    ; $4438: $FF
    rst RST_38                                    ; $4439: $FF
    ld e, l                                       ; $443A: $5D
    ld c, b                                       ; $443B: $48
    add c                                         ; $443C: $81
    ld c, b                                       ; $443D: $48
    ld c, a                                       ; $443E: $4F
    ld b, l                                       ; $443F: $45
    rst RST_38                                    ; $4440: $FF
    rst RST_38                                    ; $4441: $FF
    rst RST_38                                    ; $4442: $FF
    rst RST_38                                    ; $4443: $FF
    scf                                           ; $4444: $37
    ld c, c                                       ; $4445: $49
    ld c, b                                       ; $4446: $48
    ld c, c                                       ; $4447: $49
    ld d, b                                       ; $4448: $50
    ld c, l                                       ; $4449: $4D
    ld c, b                                       ; $444A: $48
    ld c, c                                       ; $444B: $49
    ld l, l                                       ; $444C: $6D
    ld c, l                                       ; $444D: $4D
    ld c, b                                       ; $444E: $48
    ld c, c                                       ; $444F: $49
    adc d                                         ; $4450: $8A
    ld c, l                                       ; $4451: $4D
    ld c, b                                       ; $4452: $48

jr_007_4453:
    ld c, c                                       ; $4453: $49
    sub [hl]                                      ; $4454: $96
    ld d, [hl]                                    ; $4455: $56
    rst RST_38                                    ; $4456: $FF
    rst RST_38                                    ; $4457: $FF
    xor d                                         ; $4458: $AA
    ld d, [hl]                                    ; $4459: $56
    rst RST_38                                    ; $445A: $FF
    rst RST_38                                    ; $445B: $FF
    and b                                         ; $445C: $A0
    ld d, [hl]                                    ; $445D: $56
    rst RST_38                                    ; $445E: $FF
    rst RST_38                                    ; $445F: $FF
    adc h                                         ; $4460: $8C
    ld d, [hl]                                    ; $4461: $56
    rst RST_38                                    ; $4462: $FF
    rst RST_38                                    ; $4463: $FF
    and b                                         ; $4464: $A0
    ld d, [hl]                                    ; $4465: $56
    rst RST_38                                    ; $4466: $FF
    rst RST_38                                    ; $4467: $FF
    ld c, a                                       ; $4468: $4F
    ld b, l                                       ; $4469: $45
    rst RST_38                                    ; $446A: $FF
    rst RST_38                                    ; $446B: $FF
    add [hl]                                      ; $446C: $86
    ld c, c                                       ; $446D: $49
    rst RST_38                                    ; $446E: $FF
    rst RST_38                                    ; $446F: $FF
    ld h, e                                       ; $4470: $63
    ld c, c                                       ; $4471: $49
    rst RST_38                                    ; $4472: $FF
    rst RST_38                                    ; $4473: $FF
    add [hl]                                      ; $4474: $86
    ld c, c                                       ; $4475: $49
    rst RST_38                                    ; $4476: $FF
    rst RST_38                                    ; $4477: $FF
    ld c, a                                       ; $4478: $4F
    ld b, l                                       ; $4479: $45
    rst RST_38                                    ; $447A: $FF
    rst RST_38                                    ; $447B: $FF
    rst RST_38                                    ; $447C: $FF
    rst RST_38                                    ; $447D: $FF
    ld c, a                                       ; $447E: $4F
    ld b, l                                       ; $447F: $45
    rst RST_38                                    ; $4480: $FF
    rst RST_38                                    ; $4481: $FF
    cp b                                          ; $4482: $B8
    ld b, a                                       ; $4483: $47
    and e                                         ; $4484: $A3
    ld b, a                                       ; $4485: $47
    ld c, a                                       ; $4486: $4F
    ld b, l                                       ; $4487: $45
    rst RST_38                                    ; $4488: $FF
    rst RST_38                                    ; $4489: $FF
    rst RST_38                                    ; $448A: $FF
    rst RST_38                                    ; $448B: $FF
    nop                                           ; $448C: $00
    ld b, $00                                     ; $448D: $06 $00
    nop                                           ; $448F: $00
    ld b, b                                       ; $4490: $40
    inc c                                         ; $4491: $0C
    sub [hl]                                      ; $4492: $96

jr_007_4493:
    ld b, h                                       ; $4493: $44
    nop                                           ; $4494: $00
    nop                                           ; $4495: $00
    ld [$EF21], sp                                ; $4496: $08 $21 $EF
    nop                                           ; $4499: $00
    jr nz, jr_007_4493                            ; $449A: $20 $F7

jr_007_449C:
    ld [bc], a                                    ; $449C: $02
    dec de                                        ; $449D: $1B
    rst RST_38                                    ; $449E: $FF
    inc b                                         ; $449F: $04
    ld hl, $0607                                  ; $44A0: $21 $07 $06
    jr nc, jr_007_449C                            ; $44A3: $30 $F7

    ld [$FF2B], sp                                ; $44A5: $08 $2B $FF
    ld a, [bc]                                    ; $44A8: $0A
    dec [hl]                                      ; $44A9: $35
    rst RST_28                                    ; $44AA: $EF
    inc c                                         ; $44AB: $0C
    inc sp                                        ; $44AC: $33
    rlca                                          ; $44AD: $07
    ld c, $00                                     ; $44AE: $0E $00
    ld b, $00                                     ; $44B0: $06 $00
    nop                                           ; $44B2: $00
    ld b, c                                       ; $44B3: $41
    inc c                                         ; $44B4: $0C
    cp c                                          ; $44B5: $B9
    ld b, h                                       ; $44B6: $44
    nop                                           ; $44B7: $00
    nop                                           ; $44B8: $00
    ld b, $22                                     ; $44B9: $06 $22
    rst RST_28                                    ; $44BB: $EF
    nop                                           ; $44BC: $00
    ld hl, $02F7                                  ; $44BD: $21 $F7 $02
    jr nz, @+$01                                  ; $44C0: $20 $FF

    inc b                                         ; $44C2: $04
    jr nz, jr_007_44CC                            ; $44C3: $20 $07

    ld b, $31                                     ; $44C5: $06 $31
    rst RST_30                                    ; $44C7: $F7
    ld [$EF35], sp                                ; $44C8: $08 $35 $EF
    ld a, [bc]                                    ; $44CB: $0A

jr_007_44CC:
    nop                                           ; $44CC: $00
    ret nz                                        ; $44CD: $C0

    ld b, c                                       ; $44CE: $41
    inc c                                         ; $44CF: $0C
    call nc, Call_000_0044                        ; $44D0: $D4 $44 $00
    nop                                           ; $44D3: $00
    ld [bc], a                                    ; $44D4: $02
    jr nc, @+$01                                  ; $44D5: $30 $FF

    nop                                           ; $44D7: $00
    jr nc, jr_007_44E1                            ; $44D8: $30 $07

    ld [bc], a                                    ; $44DA: $02
    nop                                           ; $44DB: $00
    ld b, $00                                     ; $44DC: $06 $00
    nop                                           ; $44DE: $00
    ld b, d                                       ; $44DF: $42
    inc c                                         ; $44E0: $0C

jr_007_44E1:
    push hl                                       ; $44E1: $E5
    ld b, h                                       ; $44E2: $44
    nop                                           ; $44E3: $00
    nop                                           ; $44E4: $00
    ld b, $22                                     ; $44E5: $06 $22
    rst RST_28                                    ; $44E7: $EF
    nop                                           ; $44E8: $00
    ld hl, $02F7                                  ; $44E9: $21 $F7 $02
    jr nz, @+$01                                  ; $44EC: $20 $FF

    inc b                                         ; $44EE: $04
    jr nz, jr_007_44F8                            ; $44EF: $20 $07

    ld b, $31                                     ; $44F1: $06 $31
    rst RST_30                                    ; $44F3: $F7
    ld [$EF35], sp                                ; $44F4: $08 $35 $EF
    ld a, [bc]                                    ; $44F7: $0A

jr_007_44F8:
    nop                                           ; $44F8: $00
    ld bc, $C000                                  ; $44F9: $01 $00 $C0
    ld b, d                                       ; $44FC: $42
    inc c                                         ; $44FD: $0C
    ld [bc], a                                    ; $44FE: $02
    ld b, l                                       ; $44FF: $45
    inc b                                         ; $4500: $04
    nop                                           ; $4501: $00
    ld [$EB23], sp                                ; $4502: $08 $23 $EB
    nop                                           ; $4505: $00
    rra                                           ; $4506: $1F
    di                                            ; $4507: $F3
    ld [bc], a                                    ; $4508: $02
    rra                                           ; $4509: $1F
    ei                                            ; $450A: $FB
    inc b                                         ; $450B: $04
    inc h                                         ; $450C: $24
    inc bc                                        ; $450D: $03
    ld b, $2F                                     ; $450E: $06 $2F
    di                                            ; $4510: $F3
    ld [$FB2F], sp                                ; $4511: $08 $2F $FB
    ld a, [bc]                                    ; $4514: $0A
    inc [hl]                                      ; $4515: $34
    inc bc                                        ; $4516: $03
    inc c                                         ; $4517: $0C
    ccf                                           ; $4518: $3F
    di                                            ; $4519: $F3
    ld c, $00                                     ; $451A: $0E $00
    ld bc, $C000                                  ; $451C: $01 $00 $C0
    ld b, e                                       ; $451F: $43
    inc c                                         ; $4520: $0C
    dec h                                         ; $4521: $25
    ld b, l                                       ; $4522: $45
    inc b                                         ; $4523: $04
    nop                                           ; $4524: $00
    dec b                                         ; $4525: $05
    ld e, $F5                                     ; $4526: $1E $F5
    nop                                           ; $4528: $00
    ld e, $FD                                     ; $4529: $1E $FD
    ld [bc], a                                    ; $452B: $02
    ld l, $F3                                     ; $452C: $2E $F3
    inc b                                         ; $452E: $04
    ld l, $FB                                     ; $452F: $2E $FB
    ld b, $3E                                     ; $4531: $06 $3E
    push af                                       ; $4533: $F5
    ld [$0100], sp                                ; $4534: $08 $00 $01
    nop                                           ; $4537: $00
    ld h, b                                       ; $4538: $60
    ld b, h                                       ; $4539: $44
    inc c                                         ; $453A: $0C
    ccf                                           ; $453B: $3F
    ld b, l                                       ; $453C: $45
    inc b                                         ; $453D: $04
    nop                                           ; $453E: $00
    dec b                                         ; $453F: $05
    rra                                           ; $4540: $1F
    pop af                                        ; $4541: $F1
    nop                                           ; $4542: $00
    rra                                           ; $4543: $1F
    ld sp, hl                                     ; $4544: $F9
    ld [bc], a                                    ; $4545: $02
    cpl                                           ; $4546: $2F
    rst RST_28                                    ; $4547: $EF
    inc b                                         ; $4548: $04
    cpl                                           ; $4549: $2F
    rst RST_30                                    ; $454A: $F7
    ld b, $34                                     ; $454B: $06 $34
    db $FD                                        ; $454D: $FD
    ld [$0700], sp                                ; $454E: $08 $00 $07
    nop                                           ; $4551: $00
    nop                                           ; $4552: $00
    ld b, l                                       ; $4553: $45
    inc c                                         ; $4554: $0C
    ld h, e                                       ; $4555: $63
    ld b, l                                       ; $4556: $45
    inc bc                                        ; $4557: $03
    nop                                           ; $4558: $00
    jr nz, jr_007_4562                            ; $4559: $20 $07

    nop                                           ; $455B: $00
    nop                                           ; $455C: $00
    ld b, l                                       ; $455D: $45
    inc c                                         ; $455E: $0C
    ld h, e                                       ; $455F: $63
    ld b, l                                       ; $4560: $45
    db $FD                                        ; $4561: $FD

jr_007_4562:
    nop                                           ; $4562: $00
    ld [$EF27], sp                                ; $4563: $08 $27 $EF
    nop                                           ; $4566: $00
    ld e, $F7                                     ; $4567: $1E $F7
    ld [bc], a                                    ; $4569: $02
    jr z, @+$01                                   ; $456A: $28 $FF

    inc b                                         ; $456C: $04
    add hl, hl                                    ; $456D: $29
    rlca                                          ; $456E: $07
    ld b, $37                                     ; $456F: $06 $37
    rst RST_28                                    ; $4571: $EF
    ld [$F72E], sp                                ; $4572: $08 $2E $F7
    ld a, [bc]                                    ; $4575: $0A
    jr c, @+$01                                   ; $4576: $38 $FF

    inc c                                         ; $4578: $0C
    inc a                                         ; $4579: $3C
    rlca                                          ; $457A: $07
    ld c, $00                                     ; $457B: $0E $00
    ld bc, $0000                                  ; $457D: $01 $00 $00
    ld b, [hl]                                    ; $4580: $46
    inc c                                         ; $4581: $0C
    cp b                                          ; $4582: $B8
    ld b, l                                       ; $4583: $45
    ld [bc], a                                    ; $4584: $02
    ld [$0100], sp                                ; $4585: $08 $00 $01
    nop                                           ; $4588: $00
    nop                                           ; $4589: $00
    ld b, [hl]                                    ; $458A: $46
    inc c                                         ; $458B: $0C
    cp b                                          ; $458C: $B8
    ld b, l                                       ; $458D: $45
    ld [bc], a                                    ; $458E: $02
    nop                                           ; $458F: $00
    nop                                           ; $4590: $00
    ld bc, $0000                                  ; $4591: $01 $00 $00
    ld b, [hl]                                    ; $4594: $46
    inc c                                         ; $4595: $0C
    cp b                                          ; $4596: $B8
    ld b, l                                       ; $4597: $45
    ld [bc], a                                    ; $4598: $02
    db $FC                                        ; $4599: $FC
    nop                                           ; $459A: $00
    ld bc, $0000                                  ; $459B: $01 $00 $00
    ld b, [hl]                                    ; $459E: $46
    inc c                                         ; $459F: $0C
    cp b                                          ; $45A0: $B8
    ld b, l                                       ; $45A1: $45
    ld [bc], a                                    ; $45A2: $02
    db $FD                                        ; $45A3: $FD
    nop                                           ; $45A4: $00
    ld bc, $0000                                  ; $45A5: $01 $00 $00
    ld b, [hl]                                    ; $45A8: $46
    inc c                                         ; $45A9: $0C
    cp b                                          ; $45AA: $B8
    ld b, l                                       ; $45AB: $45
    ld [bc], a                                    ; $45AC: $02
    inc bc                                        ; $45AD: $03
    ld b, b                                       ; $45AE: $40
    ld bc, $0005                                  ; $45AF: $01 $05 $00
    ld b, [hl]                                    ; $45B2: $46
    inc c                                         ; $45B3: $0C
    cp b                                          ; $45B4: $B8
    ld b, l                                       ; $45B5: $45
    inc b                                         ; $45B6: $04
    di                                            ; $45B7: $F3
    rlca                                          ; $45B8: $07
    rrca                                          ; $45B9: $0F
    rst RST_28                                    ; $45BA: $EF
    nop                                           ; $45BB: $00
    rlca                                          ; $45BC: $07
    rst RST_30                                    ; $45BD: $F7
    ld [bc], a                                    ; $45BE: $02
    ld [de], a                                    ; $45BF: $12
    rst RST_38                                    ; $45C0: $FF
    inc b                                         ; $45C1: $04
    rla                                           ; $45C2: $17
    rst RST_30                                    ; $45C3: $F7
    ld b, $22                                     ; $45C4: $06 $22
    rst RST_38                                    ; $45C6: $FF
    ld [$F727], sp                                ; $45C7: $08 $27 $F7
    ld a, [bc]                                    ; $45CA: $0A
    ld [hl-], a                                   ; $45CB: $32
    rst RST_38                                    ; $45CC: $FF
    inc c                                         ; $45CD: $0C
    nop                                           ; $45CE: $00
    ld [$E000], sp                                ; $45CF: $08 $00 $E0
    ld b, [hl]                                    ; $45D2: $46
    inc c                                         ; $45D3: $0C
    nop                                           ; $45D4: $00
    ld b, [hl]                                    ; $45D5: $46
    cp $16                                        ; $45D6: $FE $16
    nop                                           ; $45D8: $00
    ld [$E000], sp                                ; $45D9: $08 $00 $E0
    ld b, [hl]                                    ; $45DC: $46
    inc c                                         ; $45DD: $0C
    nop                                           ; $45DE: $00
    ld b, [hl]                                    ; $45DF: $46
    cp $08                                        ; $45E0: $FE $08
    nop                                           ; $45E2: $00
    ld [$E000], sp                                ; $45E3: $08 $00 $E0
    ld b, [hl]                                    ; $45E6: $46
    inc c                                         ; $45E7: $0C
    nop                                           ; $45E8: $00
    ld b, [hl]                                    ; $45E9: $46
    cp $0B                                        ; $45EA: $FE $0B
    ld b, b                                       ; $45EC: $40
    ld [$E005], sp                                ; $45ED: $08 $05 $E0
    ld b, [hl]                                    ; $45F0: $46
    inc c                                         ; $45F1: $0C
    nop                                           ; $45F2: $00
    ld b, [hl]                                    ; $45F3: $46
    nop                                           ; $45F4: $00
    ld [$0860], a                                 ; $45F5: $EA $60 $08
    nop                                           ; $45F8: $00
    ldh [rDMA], a                                 ; $45F9: $E0 $46
    inc c                                         ; $45FB: $0C
    nop                                           ; $45FC: $00
    ld b, [hl]                                    ; $45FD: $46
    rst RST_38                                    ; $45FE: $FF
    ldh [c], a                                    ; $45FF: $E2
    inc b                                         ; $4600: $04
    ld [$00F3], sp                                ; $4601: $08 $F3 $00
    ld [$02FB], sp                                ; $4604: $08 $FB $02
    ld [$0403], sp                                ; $4607: $08 $03 $04
    rlca                                          ; $460A: $07
    dec bc                                        ; $460B: $0B
    ld b, $00                                     ; $460C: $06 $00
    ld h, b                                       ; $460E: $60
    ld b, a                                       ; $460F: $47
    inc c                                         ; $4610: $0C
    dec [hl]                                      ; $4611: $35
    ld b, [hl]                                    ; $4612: $46
    cp $16                                        ; $4613: $FE $16
    nop                                           ; $4615: $00
    ld h, b                                       ; $4616: $60
    ld b, a                                       ; $4617: $47
    inc c                                         ; $4618: $0C
    dec [hl]                                      ; $4619: $35
    ld b, [hl]                                    ; $461A: $46
    cp $08                                        ; $461B: $FE $08
    nop                                           ; $461D: $00
    ld h, b                                       ; $461E: $60
    ld b, a                                       ; $461F: $47
    inc c                                         ; $4620: $0C
    dec [hl]                                      ; $4621: $35
    ld b, [hl]                                    ; $4622: $46
    cp $0B                                        ; $4623: $FE $0B
    ld b, b                                       ; $4625: $40
    ld h, b                                       ; $4626: $60
    ld b, a                                       ; $4627: $47
    inc c                                         ; $4628: $0C
    dec [hl]                                      ; $4629: $35
    ld b, [hl]                                    ; $462A: $46
    nop                                           ; $462B: $00
    ld [$6060], a                                 ; $462C: $EA $60 $60

jr_007_462F:
    ld b, a                                       ; $462F: $47
    inc c                                         ; $4630: $0C
    dec [hl]                                      ; $4631: $35
    ld b, [hl]                                    ; $4632: $46
    rst RST_38                                    ; $4633: $FF
    ldh [c], a                                    ; $4634: $E2
    inc bc                                        ; $4635: $03
    jr jr_007_462F                                ; $4636: $18 $F7

    nop                                           ; $4638: $00
    jr @+$01                                      ; $4639: $18 $FF

    ld [bc], a                                    ; $463B: $02
    add hl, de                                    ; $463C: $19
    rlca                                          ; $463D: $07
    inc b                                         ; $463E: $04
    nop                                           ; $463F: $00
    ld [$C000], sp                                ; $4640: $08 $00 $C0
    ld b, a                                       ; $4643: $47
    inc c                                         ; $4644: $0C
    ld e, l                                       ; $4645: $5D
    ld b, [hl]                                    ; $4646: $46
    dec bc                                        ; $4647: $0B
    dec d                                         ; $4648: $15
    jr nz, @+$0A                                  ; $4649: $20 $08

    dec b                                         ; $464B: $05
    ret nz                                        ; $464C: $C0

    ld b, a                                       ; $464D: $47
    inc c                                         ; $464E: $0C
    ld e, l                                       ; $464F: $5D
    ld b, [hl]                                    ; $4650: $46
    ldh a, [c]                                    ; $4651: $F2
    jr nz, jr_007_46B4                            ; $4652: $20 $60

    ld [$C000], sp                                ; $4654: $08 $00 $C0
    ld b, a                                       ; $4657: $47
    inc c                                         ; $4658: $0C
    ld e, l                                       ; $4659: $5D
    ld b, [hl]                                    ; $465A: $46
    db $F4                                        ; $465B: $F4
    ldh [c], a                                    ; $465C: $E2
    rlca                                          ; $465D: $07
    ld [de], a                                    ; $465E: $12
    rst RST_20                                    ; $465F: $E7
    nop                                           ; $4660: $00
    inc d                                         ; $4661: $14
    rst RST_28                                    ; $4662: $EF
    ld [bc], a                                    ; $4663: $02
    db $10                                        ; $4664: $10
    rst RST_30                                    ; $4665: $F7
    inc b                                         ; $4666: $04
    ld [bc], a                                    ; $4667: $02
    rst RST_20                                    ; $4668: $E7
    ld b, $04                                     ; $4669: $06 $04
    rst RST_28                                    ; $466B: $EF
    ld [$F700], sp                                ; $466C: $08 $00 $F7
    ld a, [bc]                                    ; $466F: $0A
    add hl, bc                                    ; $4670: $09
    rst RST_38                                    ; $4671: $FF
    inc c                                         ; $4672: $0C
    nop                                           ; $4673: $00
    ld b, $00                                     ; $4674: $06 $00
    and b                                         ; $4676: $A0
    ld c, b                                       ; $4677: $48
    inc c                                         ; $4678: $0C
    add a                                         ; $4679: $87
    ld b, [hl]                                    ; $467A: $46
    ld bc, $0000                                  ; $467B: $01 $00 $00
    rlca                                          ; $467E: $07
    nop                                           ; $467F: $00
    and b                                         ; $4680: $A0
    ld c, b                                       ; $4681: $48
    inc c                                         ; $4682: $0C
    add a                                         ; $4683: $87
    ld b, [hl]                                    ; $4684: $46
    inc bc                                        ; $4685: $03
    dec b                                         ; $4686: $05
    ld [bc], a                                    ; $4687: $02
    jr nz, @+$01                                  ; $4688: $20 $FF

    nop                                           ; $468A: $00
    dec e                                         ; $468B: $1D
    rlca                                          ; $468C: $07
    ld [bc], a                                    ; $468D: $02
    nop                                           ; $468E: $00
    ldh [rOBP0], a                                ; $468F: $E0 $48
    inc c                                         ; $4691: $0C
    sub [hl]                                      ; $4692: $96
    ld b, [hl]                                    ; $4693: $46
    ld bc, $0600                                  ; $4694: $01 $00 $06
    ld [hl+], a                                   ; $4697: $22
    rst RST_30                                    ; $4698: $F7
    nop                                           ; $4699: $00
    ld e, $EF                                     ; $469A: $1E $EF
    ld [bc], a                                    ; $469C: $02
    ld [hl-], a                                   ; $469D: $32
    rst RST_30                                    ; $469E: $F7
    inc b                                         ; $469F: $04
    jr nc, @+$01                                  ; $46A0: $30 $FF

    ld b, $35                                     ; $46A2: $06 $35
    rst RST_28                                    ; $46A4: $EF
    ld [$0736], sp                                ; $46A5: $08 $36 $07
    ld a, [bc]                                    ; $46A8: $0A
    nop                                           ; $46A9: $00
    and b                                         ; $46AA: $A0
    ld c, c                                       ; $46AB: $49
    inc c                                         ; $46AC: $0C
    or c                                          ; $46AD: $B1
    ld b, [hl]                                    ; $46AE: $46
    inc bc                                        ; $46AF: $03
    nop                                           ; $46B0: $00
    dec b                                         ; $46B1: $05
    dec h                                         ; $46B2: $25
    rst RST_30                                    ; $46B3: $F7

jr_007_46B4:
    nop                                           ; $46B4: $00
    dec h                                         ; $46B5: $25
    rst RST_28                                    ; $46B6: $EF
    ld [bc], a                                    ; $46B7: $02
    dec [hl]                                      ; $46B8: $35
    pop af                                        ; $46B9: $F1
    inc b                                         ; $46BA: $04
    dec [hl]                                      ; $46BB: $35
    ld sp, hl                                     ; $46BC: $F9
    ld b, $35                                     ; $46BD: $06 $35
    ld bc, $0008                                  ; $46BF: $01 $08 $00
    ld [$4000], sp                                ; $46C2: $08 $00 $40
    ld c, d                                       ; $46C5: $4A
    inc c                                         ; $46C6: $0C
    bit 0, [hl]                                   ; $46C7: $CB $46
    ld [bc], a                                    ; $46C9: $02
    ld d, $04                                     ; $46CA: $16 $04
    ld [$00EF], sp                                ; $46CC: $08 $EF $00
    ld [$02F7], sp                                ; $46CF: $08 $F7 $02
    ld [$04FF], sp                                ; $46D2: $08 $FF $04
    inc bc                                        ; $46D5: $03
    rlca                                          ; $46D6: $07
    ld b, $00                                     ; $46D7: $06 $00
    ld b, $00                                     ; $46D9: $06 $00
    ld b, b                                       ; $46DB: $40
    ld c, a                                       ; $46DC: $4F
    inc c                                         ; $46DD: $0C
    db $EC                                        ; $46DE: $EC
    ld b, [hl]                                    ; $46DF: $46
    nop                                           ; $46E0: $00
    nop                                           ; $46E1: $00
    nop                                           ; $46E2: $00
    ld b, $05                                     ; $46E3: $06 $05
    ld b, b                                       ; $46E5: $40
    ld c, a                                       ; $46E6: $4F
    inc c                                         ; $46E7: $0C
    db $EC                                        ; $46E8: $EC

jr_007_46E9:
    ld b, [hl]                                    ; $46E9: $46
    nop                                           ; $46EA: $00
    nop                                           ; $46EB: $00
    inc b                                         ; $46EC: $04
    ld e, $EF                                     ; $46ED: $1E $EF
    nop                                           ; $46EF: $00
    jr nz, jr_007_46E9                            ; $46F0: $20 $F7

    ld [bc], a                                    ; $46F2: $02
    jr nz, @+$01                                  ; $46F3: $20 $FF

jr_007_46F5:
    inc b                                         ; $46F5: $04
    jr nz, @+$09                                  ; $46F6: $20 $07

    ld b, $00                                     ; $46F8: $06 $00
    ret nz                                        ; $46FA: $C0

    ld c, a                                       ; $46FB: $4F
    inc c                                         ; $46FC: $0C
    ld bc, $0047                                  ; $46FD: $01 $47 $00

jr_007_4700:
    nop                                           ; $4700: $00
    inc b                                         ; $4701: $04
    jr nc, jr_007_46F5                            ; $4702: $30 $F1

    nop                                           ; $4704: $00
    jr nc, jr_007_4700                            ; $4705: $30 $F9

    ld [bc], a                                    ; $4707: $02
    ld sp, $0401                                  ; $4708: $31 $01 $04
    ld a, [hl-]                                   ; $470B: $3A
    add hl, bc                                    ; $470C: $09
    ld b, $00                                     ; $470D: $06 $00
    ld b, $09                                     ; $470F: $06 $09
    ld b, b                                       ; $4711: $40
    ld d, b                                       ; $4712: $50
    inc c                                         ; $4713: $0C
    jr @+$49                                      ; $4714: $18 $47

    nop                                           ; $4716: $00
    nop                                           ; $4717: $00
    dec b                                         ; $4718: $05
    daa                                           ; $4719: $27
    pop hl                                        ; $471A: $E1
    nop                                           ; $471B: $00
    ld e, $E9                                     ; $471C: $1E $E9
    ld [bc], a                                    ; $471E: $02
    rra                                           ; $471F: $1F
    pop af                                        ; $4720: $F1
    inc b                                         ; $4721: $04
    jr nz, @-$05                                  ; $4722: $20 $F9

    ld b, $20                                     ; $4724: $06 $20
    ld bc, $0008                                  ; $4726: $01 $08 $00
    ld b, $00                                     ; $4729: $06 $00
    ldh [$FF50], a                                ; $472B: $E0 $50
    inc c                                         ; $472D: $0C
    ld [hl-], a                                   ; $472E: $32
    ld b, a                                       ; $472F: $47
    ld hl, sp+$00                                 ; $4730: $F8 $00
    dec b                                         ; $4732: $05
    ld hl, $00F7                                  ; $4733: $21 $F7 $00
    jr @+$01                                      ; $4736: $18 $FF

    ld [bc], a                                    ; $4738: $02
    jr @+$09                                      ; $4739: $18 $07

    inc b                                         ; $473B: $04
    ld sp, $06F7                                  ; $473C: $31 $F7 $06
    jr c, @+$01                                   ; $473F: $38 $FF

    ld [$8000], sp                                ; $4741: $08 $00 $80
    ld d, c                                       ; $4744: $51
    inc c                                         ; $4745: $0C
    ld c, d                                       ; $4746: $4A
    ld b, a                                       ; $4747: $47
    ld hl, sp+$00                                 ; $4748: $F8 $00
    inc bc                                        ; $474A: $03
    jr z, @+$01                                   ; $474B: $28 $FF

    nop                                           ; $474D: $00
    jr z, jr_007_4757                             ; $474E: $28 $07

    ld [bc], a                                    ; $4750: $02
    jr c, @+$01                                   ; $4751: $38 $FF

    inc b                                         ; $4753: $04
    nop                                           ; $4754: $00
    ld a, [bc]                                    ; $4755: $0A
    dec bc                                        ; $4756: $0B

jr_007_4757:
    ldh [rHDMA1], a                               ; $4757: $E0 $51
    inc c                                         ; $4759: $0C
    ld e, [hl]                                    ; $475A: $5E
    ld b, a                                       ; $475B: $47
    ld hl, sp+$00                                 ; $475C: $F8 $00
    rlca                                          ; $475E: $07
    rra                                           ; $475F: $1F
    db $E3                                        ; $4760: $E3
    nop                                           ; $4761: $00
    ld hl, $02EB                                  ; $4762: $21 $EB $02
    ld hl, $04F3                                  ; $4765: $21 $F3 $04
    ld a, [hl+]                                   ; $4768: $2A
    or $06                                        ; $4769: $F6 $06
    ld a, [de]                                    ; $476B: $1A
    ei                                            ; $476C: $FB
    ld [$FA34], sp                                ; $476D: $08 $34 $FA
    ld a, [bc]                                    ; $4770: $0A
    ld de, $0CF3                                  ; $4771: $11 $F3 $0C
    nop                                           ; $4774: $00
    ret nz                                        ; $4775: $C0

    ld d, d                                       ; $4776: $52
    inc c                                         ; $4777: $0C
    ld a, h                                       ; $4778: $7C
    ld b, a                                       ; $4779: $47
    ld hl, sp+$00                                 ; $477A: $F8 $00
    inc bc                                        ; $477C: $03
    jr z, @+$01                                   ; $477D: $28 $FF

    nop                                           ; $477F: $00
    jr z, @+$09                                   ; $4780: $28 $07

    ld [bc], a                                    ; $4782: $02
    jr c, @+$01                                   ; $4783: $38 $FF

    inc b                                         ; $4785: $04
    nop                                           ; $4786: $00
    ld bc, $2014                                  ; $4787: $01 $14 $20
    ld d, e                                       ; $478A: $53
    inc c                                         ; $478B: $0C
    sub b                                         ; $478C: $90
    ld b, a                                       ; $478D: $47
    nop                                           ; $478E: $00
    nop                                           ; $478F: $00
    ld b, $12                                     ; $4790: $06 $12
    rst RST_28                                    ; $4792: $EF
    nop                                           ; $4793: $00
    ld [hl+], a                                   ; $4794: $22
    rst RST_28                                    ; $4795: $EF
    ld [bc], a                                    ; $4796: $02
    ld [hl-], a                                   ; $4797: $32
    rst RST_28                                    ; $4798: $EF
    inc b                                         ; $4799: $04
    ld c, $F7                                     ; $479A: $0E $F7
    ld b, $20                                     ; $479C: $06 $20
    rst RST_30                                    ; $479E: $F7
    ld [$F730], sp                                ; $479F: $08 $30 $F7
    ld a, [bc]                                    ; $47A2: $0A
    nop                                           ; $47A3: $00
    ldh [rHDMA3], a                               ; $47A4: $E0 $53
    inc c                                         ; $47A6: $0C
    xor e                                         ; $47A7: $AB
    ld b, a                                       ; $47A8: $47
    nop                                           ; $47A9: $00
    nop                                           ; $47AA: $00
    inc b                                         ; $47AB: $04
    dec de                                        ; $47AC: $1B
    rst RST_38                                    ; $47AD: $FF
    nop                                           ; $47AE: $00
    ld [hl+], a                                   ; $47AF: $22
    rlca                                          ; $47B0: $07
    ld [bc], a                                    ; $47B1: $02
    dec hl                                        ; $47B2: $2B
    rst RST_38                                    ; $47B3: $FF
    inc b                                         ; $47B4: $04
    dec [hl]                                      ; $47B5: $35
    rlca                                          ; $47B6: $07
    ld b, $00                                     ; $47B7: $06 $00
    ld bc, $6014                                  ; $47B9: $01 $14 $60

jr_007_47BC:
    ld d, h                                       ; $47BC: $54
    inc c                                         ; $47BD: $0C
    jp nz, Jump_000_0047                          ; $47BE: $C2 $47 $00

    nop                                           ; $47C1: $00
    dec b                                         ; $47C2: $05
    jr nz, jr_007_47BC                            ; $47C3: $20 $F7

    nop                                           ; $47C5: $00
    jr nc, @-$07                                  ; $47C6: $30 $F7

    ld [bc], a                                    ; $47C8: $02
    add hl, de                                    ; $47C9: $19
    rst RST_28                                    ; $47CA: $EF
    inc b                                         ; $47CB: $04
    ld c, $F1                                     ; $47CC: $0E $F1

jr_007_47CE:
    ld b, $37                                     ; $47CE: $06 $37
    rst RST_28                                    ; $47D0: $EF
    ld [$0700], sp                                ; $47D1: $08 $00 $07
    nop                                           ; $47D4: $00
    nop                                           ; $47D5: $00
    ld d, l                                       ; $47D6: $55
    inc c                                         ; $47D7: $0C
    call c, $0547                                 ; $47D8: $DC $47 $05
    nop                                           ; $47DB: $00
    rlca                                          ; $47DC: $07
    jr z, jr_007_47CE                             ; $47DD: $28 $EF

    nop                                           ; $47DF: $00
    dec e                                         ; $47E0: $1D
    rst RST_30                                    ; $47E1: $F7
    ld [bc], a                                    ; $47E2: $02
    jr z, @+$01                                   ; $47E3: $28 $FF

    inc b                                         ; $47E5: $04
    ld h, $07                                     ; $47E6: $26 $07
    ld b, $38                                     ; $47E8: $06 $38
    rst RST_28                                    ; $47EA: $EF
    ld [$F72D], sp                                ; $47EB: $08 $2D $F7
    ld a, [bc]                                    ; $47EE: $0A
    jr c, @+$01                                   ; $47EF: $38 $FF

    inc c                                         ; $47F1: $0C
    nop                                           ; $47F2: $00
    rlca                                          ; $47F3: $07
    dec d                                         ; $47F4: $15
    ldh [rHDMA5], a                               ; $47F5: $E0 $55
    inc c                                         ; $47F7: $0C
    db $FC                                        ; $47F8: $FC
    ld b, a                                       ; $47F9: $47
    ld bc, $0800                                  ; $47FA: $01 $00 $08
    inc h                                         ; $47FD: $24
    rst RST_20                                    ; $47FE: $E7
    nop                                           ; $47FF: $00
    dec h                                         ; $4800: $25
    rst RST_28                                    ; $4801: $EF
    ld [bc], a                                    ; $4802: $02
    daa                                           ; $4803: $27
    rst RST_30                                    ; $4804: $F7
    inc b                                         ; $4805: $04
    daa                                           ; $4806: $27
    rst RST_38                                    ; $4807: $FF
    ld b, $26                                     ; $4808: $06 $26
    rlca                                          ; $480A: $07
    ld [$F337], sp                                ; $480B: $08 $37 $F3
    ld a, [bc]                                    ; $480E: $0A
    scf                                           ; $480F: $37
    ei                                            ; $4810: $FB
    inc c                                         ; $4811: $0C
    scf                                           ; $4812: $37
    inc bc                                        ; $4813: $03
    ld c, $00                                     ; $4814: $0E $00
    rlca                                          ; $4816: $07
    ld d, $E0                                     ; $4817: $16 $E0
    ld d, [hl]                                    ; $4819: $56
    inc c                                         ; $481A: $0C
    inc sp                                        ; $481B: $33
    ld c, b                                       ; $481C: $48
    ei                                            ; $481D: $FB
    nop                                           ; $481E: $00
    jr nz, jr_007_4828                            ; $481F: $20 $07

    nop                                           ; $4821: $00
    ldh [rRP], a                                  ; $4822: $E0 $56
    inc c                                         ; $4824: $0C
    inc sp                                        ; $4825: $33
    ld c, b                                       ; $4826: $48
    ei                                            ; $4827: $FB

jr_007_4828:
    nop                                           ; $4828: $00
    nop                                           ; $4829: $00
    ld [$E017], sp                                ; $482A: $08 $17 $E0
    ld d, [hl]                                    ; $482D: $56
    inc c                                         ; $482E: $0C
    inc sp                                        ; $482F: $33
    ld c, b                                       ; $4830: $48
    or $F8                                        ; $4831: $F6 $F8
    ld b, $39                                     ; $4833: $06 $39
    ldh a, [c]                                    ; $4835: $F2
    nop                                           ; $4836: $00
    scf                                           ; $4837: $37
    ld a, [$2D02]                                 ; $4838: $FA $02 $2D
    rst RST_38                                    ; $483B: $FF
    inc b                                         ; $483C: $04
    dec hl                                        ; $483D: $2B
    rlca                                          ; $483E: $07
    ld b, $2B                                     ; $483F: $06 $2B
    rrca                                          ; $4841: $0F
    ld [$093B], sp                                ; $4842: $08 $3B $09
    ld a, [bc]                                    ; $4845: $0A
    nop                                           ; $4846: $00
    ld bc, $A000                                  ; $4847: $01 $00 $A0
    ld d, a                                       ; $484A: $57
    inc c                                         ; $484B: $0C
    ld d, b                                       ; $484C: $50
    ld c, b                                       ; $484D: $48
    nop                                           ; $484E: $00
    nop                                           ; $484F: $00
    inc b                                         ; $4850: $04
    ld [hl+], a                                   ; $4851: $22
    rst RST_30                                    ; $4852: $F7
    nop                                           ; $4853: $00
    ld [hl-], a                                   ; $4854: $32
    rst RST_30                                    ; $4855: $F7
    ld [bc], a                                    ; $4856: $02
    ld e, $EF                                     ; $4857: $1E $EF
    inc b                                         ; $4859: $04
    scf                                           ; $485A: $37
    rst RST_28                                    ; $485B: $EF
    ld b, $00                                     ; $485C: $06 $00
    ld bc, $2018                                  ; $485E: $01 $18 $20
    ld e, b                                       ; $4861: $58
    inc c                                         ; $4862: $0C
    ld [hl], c                                    ; $4863: $71
    ld c, b                                       ; $4864: $48
    nop                                           ; $4865: $00

jr_007_4866:
    nop                                           ; $4866: $00
    nop                                           ; $4867: $00
    ld bc, $2018                                  ; $4868: $01 $18 $20
    ld e, b                                       ; $486B: $58
    inc c                                         ; $486C: $0C
    ld [hl], c                                    ; $486D: $71
    ld c, b                                       ; $486E: $48
    nop                                           ; $486F: $00
    nop                                           ; $4870: $00
    dec b                                         ; $4871: $05
    dec h                                         ; $4872: $25
    rst RST_30                                    ; $4873: $F7
    nop                                           ; $4874: $00
    jr nz, jr_007_4866                            ; $4875: $20 $EF

    ld [bc], a                                    ; $4877: $02
    dec [hl]                                      ; $4878: $35
    rst RST_30                                    ; $4879: $F7
    inc b                                         ; $487A: $04
    jr nc, @+$01                                  ; $487B: $30 $FF

    ld b, $30                                     ; $487D: $06 $30
    rst RST_28                                    ; $487F: $EF
    ld [$C000], sp                                ; $4880: $08 $00 $C0
    ld e, b                                       ; $4883: $58
    inc c                                         ; $4884: $0C
    sbc c                                         ; $4885: $99
    ld c, b                                       ; $4886: $48
    nop                                           ; $4887: $00
    nop                                           ; $4888: $00
    nop                                           ; $4889: $00
    ret nz                                        ; $488A: $C0

    ld e, b                                       ; $488B: $58
    inc c                                         ; $488C: $0C
    sbc c                                         ; $488D: $99
    ld c, b                                       ; $488E: $48
    nop                                           ; $488F: $00
    ld hl, sp+$00                                 ; $4890: $F8 $00
    ret nz                                        ; $4892: $C0

    ld e, b                                       ; $4893: $58
    inc c                                         ; $4894: $0C
    sbc c                                         ; $4895: $99
    ld c, b                                       ; $4896: $48
    nop                                           ; $4897: $00
    db $EC                                        ; $4898: $EC
    inc bc                                        ; $4899: $03
    jr nz, @+$01                                  ; $489A: $20 $FF

    nop                                           ; $489C: $00
    add hl, hl                                    ; $489D: $29
    rlca                                          ; $489E: $07
    ld [bc], a                                    ; $489F: $02
    add hl, sp                                    ; $48A0: $39
    rlca                                          ; $48A1: $07
    inc b                                         ; $48A2: $04
    nop                                           ; $48A3: $00
    ld bc, $2000                                  ; $48A4: $01 $00 $20
    ld e, c                                       ; $48A7: $59
    inc c                                         ; $48A8: $0C
    pop bc                                        ; $48A9: $C1
    ld c, b                                       ; $48AA: $48
    nop                                           ; $48AB: $00
    nop                                           ; $48AC: $00
    nop                                           ; $48AD: $00
    ld [$2000], sp                                ; $48AE: $08 $00 $20
    ld e, c                                       ; $48B1: $59
    inc c                                         ; $48B2: $0C

jr_007_48B3:
    pop bc                                        ; $48B3: $C1
    ld c, b                                       ; $48B4: $48
    nop                                           ; $48B5: $00
    ld hl, sp+$00                                 ; $48B6: $F8 $00
    ld bc, $2000                                  ; $48B8: $01 $00 $20
    ld e, c                                       ; $48BB: $59
    inc c                                         ; $48BC: $0C
    pop bc                                        ; $48BD: $C1

jr_007_48BE:
    ld c, b                                       ; $48BE: $48
    nop                                           ; $48BF: $00
    db $EC                                        ; $48C0: $EC

jr_007_48C1:
    dec b                                         ; $48C1: $05
    jr z, jr_007_48B3                             ; $48C2: $28 $EF

    nop                                           ; $48C4: $00
    jr nz, jr_007_48BE                            ; $48C5: $20 $F7

    ld [bc], a                                    ; $48C7: $02
    jr nc, jr_007_48C1                            ; $48C8: $30 $F7

    inc b                                         ; $48CA: $04
    jr nc, @+$01                                  ; $48CB: $30 $FF

    ld b, $3A                                     ; $48CD: $06 $3A
    rst RST_28                                    ; $48CF: $EF
    ld [$0800], sp                                ; $48D0: $08 $00 $08
    add hl, de                                    ; $48D3: $19
    ret nz                                        ; $48D4: $C0

    ld e, c                                       ; $48D5: $59
    inc c                                         ; $48D6: $0C
    rst RST_28                                    ; $48D7: $EF
    ld c, b                                       ; $48D8: $48
    ld a, [$000E]                                 ; $48D9: $FA $0E $00
    ld [$C019], sp                                ; $48DC: $08 $19 $C0
    ld e, c                                       ; $48DF: $59
    inc c                                         ; $48E0: $0C
    rst RST_28                                    ; $48E1: $EF
    ld c, b                                       ; $48E2: $48
    ld a, [$0000]                                 ; $48E3: $FA $00 $00
    ld [$C019], sp                                ; $48E6: $08 $19 $C0
    ld e, c                                       ; $48E9: $59
    inc c                                         ; $48EA: $0C
    rst RST_28                                    ; $48EB: $EF
    ld c, b                                       ; $48EC: $48
    ei                                            ; $48ED: $FB
    inc d                                         ; $48EE: $14
    dec bc                                        ; $48EF: $0B
    dec d                                         ; $48F0: $15
    jp hl                                         ; $48F1: $E9


    nop                                           ; $48F2: $00
    inc de                                        ; $48F3: $13
    pop af                                        ; $48F4: $F1
    ld [bc], a                                    ; $48F5: $02
    rla                                           ; $48F6: $17
    ld sp, hl                                     ; $48F7: $F9
    inc b                                         ; $48F8: $04
    jr @+$03                                      ; $48F9: $18 $01

    ld b, $1F                                     ; $48FB: $06 $1F
    add hl, bc                                    ; $48FD: $09
    ld [$E905], sp                                ; $48FE: $08 $05 $E9
    ld a, [bc]                                    ; $4901: $0A
    inc bc                                        ; $4902: $03
    pop af                                        ; $4903: $F1
    inc c                                         ; $4904: $0C
    rlca                                          ; $4905: $07
    ld sp, hl                                     ; $4906: $F9
    ld c, $08                                     ; $4907: $0E $08

jr_007_4909:
    ld bc, $0F10                                  ; $4909: $01 $10 $0F
    add hl, bc                                    ; $490C: $09
    ld [de], a                                    ; $490D: $12
    dec c                                         ; $490E: $0D
    ld de, $0014                                  ; $490F: $11 $14 $00
    ld [$2019], sp                                ; $4912: $08 $19 $20
    ld e, e                                       ; $4915: $5B
    inc c                                         ; $4916: $0C
    dec de                                        ; $4917: $1B
    ld c, c                                       ; $4918: $49
    ld [bc], a                                    ; $4919: $02
    ld b, $09                                     ; $491A: $06 $09
    ld [hl+], a                                   ; $491C: $22
    ldh [rP1], a                                  ; $491D: $E0 $00
    jr nz, jr_007_4909                            ; $491F: $20 $E8

    ld [bc], a                                    ; $4921: $02
    rla                                           ; $4922: $17
    rst RST_28                                    ; $4923: $EF
    inc b                                         ; $4924: $04
    rla                                           ; $4925: $17
    rst RST_30                                    ; $4926: $F7
    ld b, $17                                     ; $4927: $06 $17
    rst RST_38                                    ; $4929: $FF
    ld [$0715], sp                                ; $492A: $08 $15 $07
    ld a, [bc]                                    ; $492D: $0A
    daa                                           ; $492E: $27
    pop af                                        ; $492F: $F1
    inc c                                         ; $4930: $0C
    daa                                           ; $4931: $27
    ld sp, hl                                     ; $4932: $F9
    ld c, $27                                     ; $4933: $0E $27
    ld bc, $0010                                  ; $4935: $01 $10 $00
    ld bc, $4000                                  ; $4938: $01 $00 $40
    ld e, h                                       ; $493B: $5C
    inc c                                         ; $493C: $0C
    ld b, c                                       ; $493D: $41
    ld c, c                                       ; $493E: $49
    ld a, [$0200]                                 ; $493F: $FA $00 $02
    inc h                                         ; $4942: $24
    rst RST_30                                    ; $4943: $F7
    nop                                           ; $4944: $00
    inc [hl]                                      ; $4945: $34
    rst RST_30                                    ; $4946: $F7
    ld [bc], a                                    ; $4947: $02
    nop                                           ; $4948: $00
    add b                                         ; $4949: $80
    ld e, h                                       ; $494A: $5C
    inc c                                         ; $494B: $0C
    ld d, b                                       ; $494C: $50
    ld c, c                                       ; $494D: $49
    ld a, [$0600]                                 ; $494E: $FA $00 $06
    inc h                                         ; $4951: $24
    rst RST_38                                    ; $4952: $FF
    nop                                           ; $4953: $00
    ld h, $07                                     ; $4954: $26 $07
    ld [bc], a                                    ; $4956: $02
    inc hl                                        ; $4957: $23
    rrca                                          ; $4958: $0F
    inc b                                         ; $4959: $04
    inc [hl]                                      ; $495A: $34
    rst RST_38                                    ; $495B: $FF
    ld b, $36                                     ; $495C: $06 $36
    rlca                                          ; $495E: $07
    ld [$0F3D], sp                                ; $495F: $08 $3D $0F
    ld a, [bc]                                    ; $4962: $0A
    nop                                           ; $4963: $00
    ld bc, $4000                                  ; $4964: $01 $00 $40
    ld e, l                                       ; $4967: $5D
    inc c                                         ; $4968: $0C
    ld l, l                                       ; $4969: $6D

jr_007_496A:
    ld c, c                                       ; $496A: $49
    nop                                           ; $496B: $00
    nop                                           ; $496C: $00
    ld [$EF23], sp                                ; $496D: $08 $23 $EF
    nop                                           ; $4970: $00
    jr nz, jr_007_496A                            ; $4971: $20 $F7

    ld [bc], a                                    ; $4973: $02
    jr nz, @+$01                                  ; $4974: $20 $FF

    inc b                                         ; $4976: $04
    inc h                                         ; $4977: $24
    rlca                                          ; $4978: $07
    ld b, $33                                     ; $4979: $06 $33
    rst RST_28                                    ; $497B: $EF
    ld [$F730], sp                                ; $497C: $08 $30 $F7
    ld a, [bc]                                    ; $497F: $0A
    jr nc, @+$01                                  ; $4980: $30 $FF

    inc c                                         ; $4982: $0C
    inc [hl]                                      ; $4983: $34
    rlca                                          ; $4984: $07
    ld c, $00                                     ; $4985: $0E $00
    ld bc, $4000                                  ; $4987: $01 $00 $40
    ld e, [hl]                                    ; $498A: $5E
    inc c                                         ; $498B: $0C
    sub b                                         ; $498C: $90
    ld c, c                                       ; $498D: $49
    nop                                           ; $498E: $00
    nop                                           ; $498F: $00
    ld [$EF26], sp                                ; $4990: $08 $26 $EF
    nop                                           ; $4993: $00
    inc hl                                        ; $4994: $23
    rst RST_30                                    ; $4995: $F7
    ld [bc], a                                    ; $4996: $02
    inc hl                                        ; $4997: $23
    rst RST_38                                    ; $4998: $FF
    inc b                                         ; $4999: $04
    inc hl                                        ; $499A: $23
    rlca                                          ; $499B: $07
    ld b, $36                                     ; $499C: $06 $36
    rst RST_28                                    ; $499E: $EF
    ld [$F733], sp                                ; $499F: $08 $33 $F7
    ld a, [bc]                                    ; $49A2: $0A
    inc sp                                        ; $49A3: $33
    rst RST_38                                    ; $49A4: $FF

jr_007_49A5:
    inc c                                         ; $49A5: $0C
    dec [hl]                                      ; $49A6: $35
    rlca                                          ; $49A7: $07
    ld c, $00                                     ; $49A8: $0E $00
    ld bc, $4000                                  ; $49AA: $01 $00 $40
    ld e, a                                       ; $49AD: $5F
    inc c                                         ; $49AE: $0C
    or e                                          ; $49AF: $B3
    ld c, c                                       ; $49B0: $49
    nop                                           ; $49B1: $00
    nop                                           ; $49B2: $00
    ld [bc], a                                    ; $49B3: $02
    jr nz, jr_007_49A5                            ; $49B4: $20 $EF

    nop                                           ; $49B6: $00
    ld e, $E7                                     ; $49B7: $1E $E7
    ld [bc], a                                    ; $49B9: $02
    nop                                           ; $49BA: $00
    add b                                         ; $49BB: $80
    ld e, a                                       ; $49BC: $5F
    inc c                                         ; $49BD: $0C
    jp nz, $0049                                  ; $49BE: $C2 $49 $00

    nop                                           ; $49C1: $00
    ld [$F71F], sp                                ; $49C2: $08 $1F $F7
    nop                                           ; $49C5: $00

jr_007_49C6:
    rra                                           ; $49C6: $1F
    rst RST_38                                    ; $49C7: $FF
    ld [bc], a                                    ; $49C8: $02
    ld hl, $0407                                  ; $49C9: $21 $07 $04
    cpl                                           ; $49CC: $2F
    rst RST_30                                    ; $49CD: $F7
    ld b, $2F                                     ; $49CE: $06 $2F
    rst RST_38                                    ; $49D0: $FF
    ld [$0731], sp                                ; $49D1: $08 $31 $07
    ld a, [bc]                                    ; $49D4: $0A
    jr nc, jr_007_49C6                            ; $49D5: $30 $EF

jr_007_49D7:
    inc c                                         ; $49D7: $0C
    ccf                                           ; $49D8: $3F
    rst RST_30                                    ; $49D9: $F7
    ld c, $00                                     ; $49DA: $0E $00
    ld bc, $8000                                  ; $49DC: $01 $00 $80
    ld h, b                                       ; $49DF: $60
    inc c                                         ; $49E0: $0C
    push hl                                       ; $49E1: $E5
    ld c, c                                       ; $49E2: $49
    nop                                           ; $49E3: $00
    nop                                           ; $49E4: $00
    ld [bc], a                                    ; $49E5: $02
    jr nz, jr_007_49D7                            ; $49E6: $20 $EF

    nop                                           ; $49E8: $00
    ld e, $E7                                     ; $49E9: $1E $E7
    ld [bc], a                                    ; $49EB: $02
    nop                                           ; $49EC: $00
    ld bc, $A000                                  ; $49ED: $01 $00 $A0
    ld h, h                                       ; $49F0: $64
    inc c                                         ; $49F1: $0C
    or $49                                        ; $49F2: $F6 $49
    nop                                           ; $49F4: $00
    nop                                           ; $49F5: $00
    rlca                                          ; $49F6: $07
    dec h                                         ; $49F7: $25
    ldh a, [c]                                    ; $49F8: $F2
    nop                                           ; $49F9: $00
    ld hl, $02FA                                  ; $49FA: $21 $FA $02
    jr nz, jr_007_4A01                            ; $49FD: $20 $02

    inc b                                         ; $49FF: $04
    rra                                           ; $4A00: $1F

jr_007_4A01:
    ld a, [bc]                                    ; $4A01: $0A
    ld b, $31                                     ; $4A02: $06 $31
    ld a, [$3008]                                 ; $4A04: $FA $08 $30
    ld [bc], a                                    ; $4A07: $02
    ld a, [bc]                                    ; $4A08: $0A
    dec a                                         ; $4A09: $3D
    ldh a, [c]                                    ; $4A0A: $F2
    inc c                                         ; $4A0B: $0C
    nop                                           ; $4A0C: $00
    ld bc, $8000                                  ; $4A0D: $01 $00 $80
    ld h, l                                       ; $4A10: $65
    inc c                                         ; $4A11: $0C
    inc [hl]                                      ; $4A12: $34
    ld c, d                                       ; $4A13: $4A
    nop                                           ; $4A14: $00
    nop                                           ; $4A15: $00
    nop                                           ; $4A16: $00
    ld bc, $8000                                  ; $4A17: $01 $00 $80
    ld h, l                                       ; $4A1A: $65
    inc c                                         ; $4A1B: $0C
    inc [hl]                                      ; $4A1C: $34
    ld c, d                                       ; $4A1D: $4A
    ei                                            ; $4A1E: $FB
    nop                                           ; $4A1F: $00
    jr nz, jr_007_4A23                            ; $4A20: $20 $01

    nop                                           ; $4A22: $00

jr_007_4A23:
    add b                                         ; $4A23: $80
    ld h, l                                       ; $4A24: $65
    inc c                                         ; $4A25: $0C
    inc [hl]                                      ; $4A26: $34
    ld c, d                                       ; $4A27: $4A
    rlca                                          ; $4A28: $07
    nop                                           ; $4A29: $00
    nop                                           ; $4A2A: $00
    ld bc, $8028                                  ; $4A2B: $01 $28 $80

jr_007_4A2E:
    ld h, l                                       ; $4A2E: $65
    inc c                                         ; $4A2F: $0C
    inc [hl]                                      ; $4A30: $34
    ld c, d                                       ; $4A31: $4A
    ei                                            ; $4A32: $FB
    nop                                           ; $4A33: $00
    ld [bc], a                                    ; $4A34: $02
    jr jr_007_4A2E                                ; $4A35: $18 $F7

    nop                                           ; $4A37: $00
    jr nz, jr_007_4A41                            ; $4A38: $20 $07

    ld [bc], a                                    ; $4A3A: $02
    nop                                           ; $4A3B: $00
    ret nz                                        ; $4A3C: $C0

    ld h, l                                       ; $4A3D: $65
    inc c                                         ; $4A3E: $0C
    ld b, e                                       ; $4A3F: $43

jr_007_4A40:
    ld c, d                                       ; $4A40: $4A

jr_007_4A41:
    nop                                           ; $4A41: $00
    nop                                           ; $4A42: $00
    ld b, $28                                     ; $4A43: $06 $28
    rst RST_28                                    ; $4A45: $EF
    nop                                           ; $4A46: $00
    jr z, jr_007_4A40                             ; $4A47: $28 $F7

    ld [bc], a                                    ; $4A49: $02
    ld h, $FF                                     ; $4A4A: $26 $FF
    inc b                                         ; $4A4C: $04
    jr nc, jr_007_4A56                            ; $4A4D: $30 $07

    ld b, $26                                     ; $4A4F: $06 $26
    rrca                                          ; $4A51: $0F
    ld [$FF36], sp                                ; $4A52: $08 $36 $FF
    ld a, [bc]                                    ; $4A55: $0A

jr_007_4A56:
    nop                                           ; $4A56: $00
    ld bc, $8000                                  ; $4A57: $01 $00 $80
    ld h, [hl]                                    ; $4A5A: $66
    inc c                                         ; $4A5B: $0C
    ld h, b                                       ; $4A5C: $60
    ld c, d                                       ; $4A5D: $4A
    nop                                           ; $4A5E: $00
    nop                                           ; $4A5F: $00
    dec c                                         ; $4A60: $0D
    dec h                                         ; $4A61: $25
    db $ED                                        ; $4A62: $ED
    nop                                           ; $4A63: $00
    rra                                           ; $4A64: $1F
    push af                                       ; $4A65: $F5
    ld [bc], a                                    ; $4A66: $02
    rra                                           ; $4A67: $1F
    db $FD                                        ; $4A68: $FD
    inc b                                         ; $4A69: $04
    jr nz, @+$07                                  ; $4A6A: $20 $05

    ld b, $35                                     ; $4A6C: $06 $35
    db $ED                                        ; $4A6E: $ED
    ld [$F52F], sp                                ; $4A6F: $08 $2F $F5
    ld a, [bc]                                    ; $4A72: $0A
    cpl                                           ; $4A73: $2F
    db $FD                                        ; $4A74: $FD
    inc c                                         ; $4A75: $0C
    jr nc, @+$07                                  ; $4A76: $30 $05

    ld c, $31                                     ; $4A78: $0E $31
    push hl                                       ; $4A7A: $E5
    db $10                                        ; $4A7B: $10
    jr nc, @+$0F                                  ; $4A7C: $30 $0D

    ld [de], a                                    ; $4A7E: $12
    ld h, $15                                     ; $4A7F: $26 $15
    inc d                                         ; $4A81: $14
    ccf                                           ; $4A82: $3F
    push af                                       ; $4A83: $F5
    ld d, $3F                                     ; $4A84: $16 $3F
    db $FD                                        ; $4A86: $FD

jr_007_4A87:
    jr jr_007_4A89                                ; $4A87: $18 $00

jr_007_4A89:
    ld bc, $C000                                  ; $4A89: $01 $00 $C0
    ld h, b                                       ; $4A8C: $60

jr_007_4A8D:
    inc c                                         ; $4A8D: $0C
    sub d                                         ; $4A8E: $92
    ld c, d                                       ; $4A8F: $4A
    nop                                           ; $4A90: $00
    nop                                           ; $4A91: $00

jr_007_4A92:
    dec b                                         ; $4A92: $05
    db $10                                        ; $4A93: $10
    rst RST_28                                    ; $4A94: $EF
    nop                                           ; $4A95: $00
    jr nz, jr_007_4A87                            ; $4A96: $20 $EF

    ld [bc], a                                    ; $4A98: $02
    jr nz, jr_007_4A92                            ; $4A99: $20 $F7

    inc b                                         ; $4A9B: $04
    jr nc, jr_007_4A8D                            ; $4A9C: $30 $EF

    ld b, $30                                     ; $4A9E: $06 $30
    rst RST_30                                    ; $4AA0: $F7
    ld [$6000], sp                                ; $4AA1: $08 $00 $60
    ld h, c                                       ; $4AA4: $61
    inc c                                         ; $4AA5: $0C
    xor d                                         ; $4AA6: $AA
    ld c, d                                       ; $4AA7: $4A
    nop                                           ; $4AA8: $00
    nop                                           ; $4AA9: $00
    dec b                                         ; $4AAA: $05
    db $10                                        ; $4AAB: $10
    rst RST_30                                    ; $4AAC: $F7
    nop                                           ; $4AAD: $00
    jr nz, @+$01                                  ; $4AAE: $20 $FF

    ld [bc], a                                    ; $4AB0: $02
    jr nz, @+$09                                  ; $4AB1: $20 $07

    inc b                                         ; $4AB3: $04
    jr nc, @+$01                                  ; $4AB4: $30 $FF

    ld b, $3C                                     ; $4AB6: $06 $3C
    rlca                                          ; $4AB8: $07
    ld [$0100], sp                                ; $4AB9: $08 $00 $01
    nop                                           ; $4ABC: $00
    nop                                           ; $4ABD: $00
    ld h, d                                       ; $4ABE: $62
    inc c                                         ; $4ABF: $0C
    call nz, $004A                                ; $4AC0: $C4 $4A $00
    nop                                           ; $4AC3: $00

jr_007_4AC4:
    dec b                                         ; $4AC4: $05
    rla                                           ; $4AC5: $17
    rst RST_28                                    ; $4AC6: $EF

jr_007_4AC7:
    nop                                           ; $4AC7: $00
    rlca                                          ; $4AC8: $07
    rst RST_28                                    ; $4AC9: $EF
    ld [bc], a                                    ; $4ACA: $02
    jr nz, jr_007_4AC4                            ; $4ACB: $20 $F7

    inc b                                         ; $4ACD: $04
    jr nc, jr_007_4AC7                            ; $4ACE: $30 $F7

    ld b, $3D                                     ; $4AD0: $06 $3D
    rst RST_28                                    ; $4AD2: $EF
    ld [$0100], sp                                ; $4AD3: $08 $00 $01
    nop                                           ; $4AD6: $00
    and b                                         ; $4AD7: $A0
    ld h, d                                       ; $4AD8: $62
    inc c                                         ; $4AD9: $0C
    sbc $4A                                       ; $4ADA: $DE $4A
    nop                                           ; $4ADC: $00
    nop                                           ; $4ADD: $00
    ld bc, $EF20                                  ; $4ADE: $01 $20 $EF
    nop                                           ; $4AE1: $00
    nop                                           ; $4AE2: $00
    ld bc, $C000                                  ; $4AE3: $01 $00 $C0
    ld h, d                                       ; $4AE6: $62
    inc c                                         ; $4AE7: $0C
    or $4A                                        ; $4AE8: $F6 $4A
    ld sp, hl                                     ; $4AEA: $F9
    pop af                                        ; $4AEB: $F1
    jr nz, jr_007_4AEF                            ; $4AEC: $20 $01

    nop                                           ; $4AEE: $00

jr_007_4AEF:
    ret nz                                        ; $4AEF: $C0

    ld h, d                                       ; $4AF0: $62
    inc c                                         ; $4AF1: $0C
    or $4A                                        ; $4AF2: $F6 $4A
    rlca                                          ; $4AF4: $07
    pop af                                        ; $4AF5: $F1
    ld b, $20                                     ; $4AF6: $06 $20
    rst RST_28                                    ; $4AF8: $EF
    nop                                           ; $4AF9: $00
    jr nz, @-$07                                  ; $4AFA: $20 $F7

    ld [bc], a                                    ; $4AFC: $02
    jr nz, @+$01                                  ; $4AFD: $20 $FF

    inc b                                         ; $4AFF: $04
    jr nz, jr_007_4B09                            ; $4B00: $20 $07

    ld b, $20                                     ; $4B02: $06 $20
    rrca                                          ; $4B04: $0F
    ld [$1720], sp                                ; $4B05: $08 $20 $17
    ld a, [bc]                                    ; $4B08: $0A

jr_007_4B09:
    nop                                           ; $4B09: $00
    add b                                         ; $4B0A: $80
    ld h, e                                       ; $4B0B: $63
    inc c                                         ; $4B0C: $0C
    ld de, $004B                                  ; $4B0D: $11 $4B $00
    nop                                           ; $4B10: $00
    add hl, bc                                    ; $4B11: $09
    dec h                                         ; $4B12: $25
    db $ED                                        ; $4B13: $ED
    nop                                           ; $4B14: $00
    rra                                           ; $4B15: $1F
    push af                                       ; $4B16: $F5
    ld [bc], a                                    ; $4B17: $02
    rra                                           ; $4B18: $1F
    db $FD                                        ; $4B19: $FD
    inc b                                         ; $4B1A: $04
    rra                                           ; $4B1B: $1F
    dec b                                         ; $4B1C: $05
    ld b, $2F                                     ; $4B1D: $06 $2F
    push af                                       ; $4B1F: $F5
    ld [$FD2F], sp                                ; $4B20: $08 $2F $FD
    ld a, [bc]                                    ; $4B23: $0A
    cpl                                           ; $4B24: $2F
    dec b                                         ; $4B25: $05
    inc c                                         ; $4B26: $0C
    ccf                                           ; $4B27: $3F
    push af                                       ; $4B28: $F5
    ld c, $3F                                     ; $4B29: $0E $3F
    db $FD                                        ; $4B2B: $FD
    stop                                          ; $4B2C: $10 $00
    ld bc, $C000                                  ; $4B2E: $01 $00 $C0
    ld c, d                                       ; $4B31: $4A
    inc c                                         ; $4B32: $0C
    scf                                           ; $4B33: $37
    ld c, e                                       ; $4B34: $4B
    db $FC                                        ; $4B35: $FC
    nop                                           ; $4B36: $00
    add hl, bc                                    ; $4B37: $09
    ld d, $F8                                     ; $4B38: $16 $F8
    nop                                           ; $4B3A: $00
    dec de                                        ; $4B3B: $1B
    nop                                           ; $4B3C: $00
    ld [bc], a                                    ; $4B3D: $02
    rra                                           ; $4B3E: $1F
    rlca                                          ; $4B3F: $07
    inc b                                         ; $4B40: $04
    ld hl, $060F                                  ; $4B41: $21 $0F $06
    dec hl                                        ; $4B44: $2B
    rst RST_38                                    ; $4B45: $FF
    ld [$072F], sp                                ; $4B46: $08 $2F $07
    ld a, [bc]                                    ; $4B49: $0A
    jr nc, @-$07                                  ; $4B4A: $30 $F7

    inc c                                         ; $4B4C: $0C
    ld sp, $0E0F                                  ; $4B4D: $31 $0F $0E
    ccf                                           ; $4B50: $3F
    rlca                                          ; $4B51: $07
    stop                                          ; $4B52: $10 $00
    ld bc, $E000                                  ; $4B54: $01 $00 $E0
    ld c, e                                       ; $4B57: $4B
    inc c                                         ; $4B58: $0C
    add l                                         ; $4B59: $85
    ld c, e                                       ; $4B5A: $4B
    or $00                                        ; $4B5B: $F6 $00
    nop                                           ; $4B5D: $00
    ld bc, $E005                                  ; $4B5E: $01 $05 $E0
    ld c, e                                       ; $4B61: $4B
    inc c                                         ; $4B62: $0C
    add l                                         ; $4B63: $85
    ld c, e                                       ; $4B64: $4B
    or $00                                        ; $4B65: $F6 $00
    jr nz, jr_007_4B6A                            ; $4B67: $20 $01

    nop                                           ; $4B69: $00

jr_007_4B6A:
    ldh [rWX], a                                  ; $4B6A: $E0 $4B
    inc c                                         ; $4B6C: $0C
    add l                                         ; $4B6D: $85
    ld c, e                                       ; $4B6E: $4B
    ld a, [bc]                                    ; $4B6F: $0A
    nop                                           ; $4B70: $00
    ld b, b                                       ; $4B71: $40
    ld bc, $E000                                  ; $4B72: $01 $00 $E0
    ld c, e                                       ; $4B75: $4B
    inc c                                         ; $4B76: $0C
    add l                                         ; $4B77: $85
    ld c, e                                       ; $4B78: $4B
    db $F4                                        ; $4B79: $F4
    inc b                                         ; $4B7A: $04
    ld h, b                                       ; $4B7B: $60
    ld bc, $E000                                  ; $4B7C: $01 $00 $E0
    ld c, e                                       ; $4B7F: $4B
    inc c                                         ; $4B80: $0C
    add l                                         ; $4B81: $85
    ld c, e                                       ; $4B82: $4B
    inc c                                         ; $4B83: $0C
    inc b                                         ; $4B84: $04
    rlca                                          ; $4B85: $07
    rra                                           ; $4B86: $1F
    db $FC                                        ; $4B87: $FC
    nop                                           ; $4B88: $00
    rra                                           ; $4B89: $1F
    inc b                                         ; $4B8A: $04
    ld [bc], a                                    ; $4B8B: $02
    ld hl, $040C                                  ; $4B8C: $21 $0C $04
    ld hl, $0614                                  ; $4B8F: $21 $14 $06

jr_007_4B92:
    jr c, jr_007_4B92                             ; $4B92: $38 $FE

    ld [$0631], sp                                ; $4B94: $08 $31 $06
    ld a, [bc]                                    ; $4B97: $0A
    ld sp, $0C0E                                  ; $4B98: $31 $0E $0C
    nop                                           ; $4B9B: $00
    ld bc, $C000                                  ; $4B9C: $01 $00 $C0
    ld c, h                                       ; $4B9F: $4C
    inc c                                         ; $4BA0: $0C
    and l                                         ; $4BA1: $A5
    ld c, e                                       ; $4BA2: $4B
    inc bc                                        ; $4BA3: $03
    nop                                           ; $4BA4: $00
    ld [$F11F], sp                                ; $4BA5: $08 $1F $F1
    nop                                           ; $4BA8: $00
    dec e                                         ; $4BA9: $1D
    ld sp, hl                                     ; $4BAA: $F9
    ld [bc], a                                    ; $4BAB: $02
    daa                                           ; $4BAC: $27
    ld bc, $2C04                                  ; $4BAD: $01 $04 $2C
    add hl, bc                                    ; $4BB0: $09
    ld b, $31                                     ; $4BB1: $06 $31
    pop af                                        ; $4BB3: $F1
    ld [$F92D], sp                                ; $4BB4: $08 $2D $F9
    ld a, [bc]                                    ; $4BB7: $0A
    scf                                           ; $4BB8: $37
    ld bc, $1C0C                                  ; $4BB9: $01 $0C $1C
    add hl, bc                                    ; $4BBC: $09
    ld c, $00                                     ; $4BBD: $0E $00
    inc e                                         ; $4BBF: $1C
    nop                                           ; $4BC0: $00
    ret nz                                        ; $4BC1: $C0

    ld c, l                                       ; $4BC2: $4D
    inc c                                         ; $4BC3: $0C
    jp nc, $F94B                                  ; $4BC4: $D2 $4B $F9

    db $10                                        ; $4BC7: $10
    ld h, b                                       ; $4BC8: $60
    inc e                                         ; $4BC9: $1C
    nop                                           ; $4BCA: $00
    ret nz                                        ; $4BCB: $C0

    ld c, l                                       ; $4BCC: $4D
    inc c                                         ; $4BCD: $0C
    jp nc, Jump_000_004B                          ; $4BCE: $D2 $4B $00

    nop                                           ; $4BD1: $00
    rlca                                          ; $4BD2: $07
    ld a, [de]                                    ; $4BD3: $1A
    rst RST_30                                    ; $4BD4: $F7
    nop                                           ; $4BD5: $00
    rra                                           ; $4BD6: $1F
    rst RST_38                                    ; $4BD7: $FF
    ld [bc], a                                    ; $4BD8: $02
    dec d                                         ; $4BD9: $15
    rlca                                          ; $4BDA: $07
    inc b                                         ; $4BDB: $04
    dec d                                         ; $4BDC: $15
    rrca                                          ; $4BDD: $0F
    ld b, $25                                     ; $4BDE: $06 $25
    rlca                                          ; $4BE0: $07
    ld [$0F25], sp                                ; $4BE1: $08 $25 $0F
    ld a, [bc]                                    ; $4BE4: $0A
    ld a, [hl+]                                   ; $4BE5: $2A
    rst RST_30                                    ; $4BE6: $F7
    inc c                                         ; $4BE7: $0C
    nop                                           ; $4BE8: $00
    inc e                                         ; $4BE9: $1C
    nop                                           ; $4BEA: $00
    and b                                         ; $4BEB: $A0
    ld c, [hl]                                    ; $4BEC: $4E
    inc c                                         ; $4BED: $0C
    ldh a, [c]                                    ; $4BEE: $F2
    ld c, e                                       ; $4BEF: $4B
    di                                            ; $4BF0: $F3
    ld [bc], a                                    ; $4BF1: $02
    dec b                                         ; $4BF2: $05
    ld sp, $0017                                  ; $4BF3: $31 $17 $00
    ld [hl-], a                                   ; $4BF6: $32
    rrca                                          ; $4BF7: $0F
    ld [bc], a                                    ; $4BF8: $02
    ld [hl-], a                                   ; $4BF9: $32
    rlca                                          ; $4BFA: $07
    inc b                                         ; $4BFB: $04
    ld [hl-], a                                   ; $4BFC: $32
    rst RST_38                                    ; $4BFD: $FF
    ld b, $39                                     ; $4BFE: $06 $39
    rst RST_30                                    ; $4C00: $F7
    ld [$BB00], sp                                ; $4C01: $08 $00 $BB
    nop                                           ; $4C04: $00
    jr nz, jr_007_4C6F                            ; $4C05: $20 $68

    inc c                                         ; $4C07: $0C
    ld d, $4C                                     ; $4C08: $16 $4C
    ld bc, $0000                                  ; $4C0A: $01 $00 $00
    ld b, $05                                     ; $4C0D: $06 $05
    jr nz, jr_007_4C79                            ; $4C0F: $20 $68

    inc c                                         ; $4C11: $0C
    ld d, $4C                                     ; $4C12: $16 $4C
    ld bc, $0A00                                  ; $4C14: $01 $00 $0A
    dec de                                        ; $4C17: $1B
    rst RST_18                                    ; $4C18: $DF
    nop                                           ; $4C19: $00
    dec e                                         ; $4C1A: $1D
    rst RST_20                                    ; $4C1B: $E7
    ld [bc], a                                    ; $4C1C: $02
    dec e                                         ; $4C1D: $1D
    rst RST_28                                    ; $4C1E: $EF
    inc b                                         ; $4C1F: $04
    ld hl, $06F7                                  ; $4C20: $21 $F7 $06
    ld hl, $08FF                                  ; $4C23: $21 $FF $08
    ld [hl+], a                                   ; $4C26: $22
    rlca                                          ; $4C27: $07
    ld a, [bc]                                    ; $4C28: $0A
    ld sp, $0CF7                                  ; $4C29: $31 $F7 $0C
    ld sp, $0EFF                                  ; $4C2C: $31 $FF $0E
    dec [hl]                                      ; $4C2F: $35
    rst RST_28                                    ; $4C30: $EF
    db $10                                        ; $4C31: $10
    ld [hl], $07                                  ; $4C32: $36 $07
    ld [de], a                                    ; $4C34: $12
    nop                                           ; $4C35: $00
    ld b, $00                                     ; $4C36: $06 $00
    ld h, b                                       ; $4C38: $60
    ld l, c                                       ; $4C39: $69
    inc c                                         ; $4C3A: $0C
    ccf                                           ; $4C3B: $3F
    ld c, h                                       ; $4C3C: $4C
    ld bc, $0400                                  ; $4C3D: $01 $00 $04
    jr nz, @+$01                                  ; $4C40: $20 $FF

    nop                                           ; $4C42: $00
    db $10                                        ; $4C43: $10
    rst RST_38                                    ; $4C44: $FF
    ld [bc], a                                    ; $4C45: $02
    jr nz, @-$07                                  ; $4C46: $20 $F7

    inc b                                         ; $4C48: $04
    db $10                                        ; $4C49: $10
    rst RST_30                                    ; $4C4A: $F7
    ld b, $00                                     ; $4C4B: $06 $00
    ldh [rBCPD], a                                ; $4C4D: $E0 $69
    inc c                                         ; $4C4F: $0C
    ld d, h                                       ; $4C50: $54
    ld c, h                                       ; $4C51: $4C
    ld bc, $0700                                  ; $4C52: $01 $00 $07
    dec e                                         ; $4C55: $1D
    rlca                                          ; $4C56: $07
    nop                                           ; $4C57: $00
    inc hl                                        ; $4C58: $23
    rrca                                          ; $4C59: $0F
    ld [bc], a                                    ; $4C5A: $02
    dec l                                         ; $4C5B: $2D
    rlca                                          ; $4C5C: $07
    inc b                                         ; $4C5D: $04
    inc de                                        ; $4C5E: $13
    rrca                                          ; $4C5F: $0F

jr_007_4C60:
    ld b, $3D                                     ; $4C60: $06 $3D
    rlca                                          ; $4C62: $07
    ld [$FF30], sp                                ; $4C63: $08 $30 $FF
    ld a, [bc]                                    ; $4C66: $0A
    jr nc, jr_007_4C60                            ; $4C67: $30 $F7

    inc c                                         ; $4C69: $0C
    nop                                           ; $4C6A: $00
    ld b, $00                                     ; $4C6B: $06 $00
    ret nz                                        ; $4C6D: $C0

    ld l, d                                       ; $4C6E: $6A

jr_007_4C6F:
    inc c                                         ; $4C6F: $0C
    ld [hl], h                                    ; $4C70: $74
    ld c, h                                       ; $4C71: $4C
    ld bc, $0300                                  ; $4C72: $01 $00 $03
    jr nz, @+$01                                  ; $4C75: $20 $FF

    nop                                           ; $4C77: $00
    db $10                                        ; $4C78: $10

jr_007_4C79:
    rst RST_38                                    ; $4C79: $FF
    ld [bc], a                                    ; $4C7A: $02
    jr nz, @-$07                                  ; $4C7B: $20 $F7

    inc b                                         ; $4C7D: $04
    nop                                           ; $4C7E: $00
    ld b, $00                                     ; $4C7F: $06 $00
    jr nz, jr_007_4CEE                            ; $4C81: $20 $6B

    inc c                                         ; $4C83: $0C
    adc b                                         ; $4C84: $88
    ld c, h                                       ; $4C85: $4C

jr_007_4C86:
    ld bc, $0800                                  ; $4C86: $01 $00 $08
    dec d                                         ; $4C89: $15
    ldh a, [c]                                    ; $4C8A: $F2
    nop                                           ; $4C8B: $00
    inc e                                         ; $4C8C: $1C
    ld a, [$1D02]                                 ; $4C8D: $FA $02 $1D
    ld [bc], a                                    ; $4C90: $02
    inc b                                         ; $4C91: $04
    jr nc, jr_007_4C86                            ; $4C92: $30 $F2

    ld b, $2C                                     ; $4C94: $06 $2C
    ld a, [$2D08]                                 ; $4C96: $FA $08 $2D
    ld [bc], a                                    ; $4C99: $02
    ld a, [bc]                                    ; $4C9A: $0A
    ld [hl-], a                                   ; $4C9B: $32
    rlca                                          ; $4C9C: $07
    inc c                                         ; $4C9D: $0C
    ld [hl+], a                                   ; $4C9E: $22
    ld a, [bc]                                    ; $4C9F: $0A
    ld c, $00                                     ; $4CA0: $0E $00
    ld b, $09                                     ; $4CA2: $06 $09
    jr nz, @+$6E                                  ; $4CA4: $20 $6C

    inc c                                         ; $4CA6: $0C
    cp a                                          ; $4CA7: $BF
    ld c, h                                       ; $4CA8: $4C
    nop                                           ; $4CA9: $00
    nop                                           ; $4CAA: $00
    nop                                           ; $4CAB: $00
    ld b, $09                                     ; $4CAC: $06 $09
    jr nz, jr_007_4D1C                            ; $4CAE: $20 $6C

    inc c                                         ; $4CB0: $0C
    cp a                                          ; $4CB1: $BF
    ld c, h                                       ; $4CB2: $4C
    nop                                           ; $4CB3: $00
    db $FC                                        ; $4CB4: $FC
    nop                                           ; $4CB5: $00
    ld b, $09                                     ; $4CB6: $06 $09
    jr nz, jr_007_4D26                            ; $4CB8: $20 $6C

    inc c                                         ; $4CBA: $0C
    cp a                                          ; $4CBB: $BF
    ld c, h                                       ; $4CBC: $4C
    nop                                           ; $4CBD: $00
    ld a, [$240A]                                 ; $4CBE: $FA $0A $24
    rst RST_18                                    ; $4CC1: $DF

jr_007_4CC2:
    nop                                           ; $4CC2: $00
    ld [hl+], a                                   ; $4CC3: $22
    rst RST_20                                    ; $4CC4: $E7
    ld [bc], a                                    ; $4CC5: $02
    jr nz, @-$0F                                  ; $4CC6: $20 $EF

    inc b                                         ; $4CC8: $04
    jr jr_007_4CC2                                ; $4CC9: $18 $F7

    ld b, $1C                                     ; $4CCB: $06 $1C
    rst RST_38                                    ; $4CCD: $FF

jr_007_4CCE:
    ld [$071F], sp                                ; $4CCE: $08 $1F $07
    ld a, [bc]                                    ; $4CD1: $0A
    dec de                                        ; $4CD2: $1B
    rrca                                          ; $4CD3: $0F
    inc c                                         ; $4CD4: $0C
    jr z, jr_007_4CCE                             ; $4CD5: $28 $F7

    ld c, $2C                                     ; $4CD7: $0E $2C
    rst RST_38                                    ; $4CD9: $FF
    db $10                                        ; $4CDA: $10
    inc sp                                        ; $4CDB: $33
    rlca                                          ; $4CDC: $07
    ld [de], a                                    ; $4CDD: $12
    nop                                           ; $4CDE: $00
    ld bc, $601A                                  ; $4CDF: $01 $1A $60
    ld l, l                                       ; $4CE2: $6D

jr_007_4CE3:
    inc c                                         ; $4CE3: $0C
    add sp, $4C                                   ; $4CE4: $E8 $4C
    rlca                                          ; $4CE6: $07
    nop                                           ; $4CE7: $00
    rlca                                          ; $4CE8: $07
    db $10                                        ; $4CE9: $10
    rst RST_28                                    ; $4CEA: $EF
    nop                                           ; $4CEB: $00
    db $10                                        ; $4CEC: $10
    rst RST_30                                    ; $4CED: $F7

jr_007_4CEE:
    ld [bc], a                                    ; $4CEE: $02
    jr @-$17                                      ; $4CEF: $18 $E7

    inc b                                         ; $4CF1: $04
    jr nz, jr_007_4CE3                            ; $4CF2: $20 $EF

    ld b, $20                                     ; $4CF4: $06 $20
    rst RST_30                                    ; $4CF6: $F7
    ld [$FF20], sp                                ; $4CF7: $08 $20 $FF
    ld a, [bc]                                    ; $4CFA: $0A
    db $10                                        ; $4CFB: $10
    rst RST_38                                    ; $4CFC: $FF
    inc c                                         ; $4CFD: $0C
    nop                                           ; $4CFE: $00
    ld b, b                                       ; $4CFF: $40
    ld l, [hl]                                    ; $4D00: $6E
    inc c                                         ; $4D01: $0C
    ld b, $4D                                     ; $4D02: $06 $4D

jr_007_4D04:
    rlca                                          ; $4D04: $07
    nop                                           ; $4D05: $00
    inc b                                         ; $4D06: $04
    ld e, $07                                     ; $4D07: $1E $07
    nop                                           ; $4D09: $00
    jr nc, jr_007_4D04                            ; $4D0A: $30 $F8

    ld [bc], a                                    ; $4D0C: $02
    jr nc, jr_007_4D0F                            ; $4D0D: $30 $00

jr_007_4D0F:
    inc b                                         ; $4D0F: $04
    inc [hl]                                      ; $4D10: $34
    ldh a, [rTMA]                                 ; $4D11: $F0 $06
    nop                                           ; $4D13: $00
    ld bc, $C01A                                  ; $4D14: $01 $1A $C0
    ld l, [hl]                                    ; $4D17: $6E
    inc c                                         ; $4D18: $0C
    dec e                                         ; $4D19: $1D
    ld c, l                                       ; $4D1A: $4D
    rlca                                          ; $4D1B: $07

jr_007_4D1C:
    nop                                           ; $4D1C: $00
    rlca                                          ; $4D1D: $07
    ld a, [de]                                    ; $4D1E: $1A
    rst RST_20                                    ; $4D1F: $E7
    nop                                           ; $4D20: $00
    db $10                                        ; $4D21: $10
    db $ED                                        ; $4D22: $ED
    ld [bc], a                                    ; $4D23: $02
    db $10                                        ; $4D24: $10
    push af                                       ; $4D25: $F5

jr_007_4D26:
    inc b                                         ; $4D26: $04
    jr nz, @+$01                                  ; $4D27: $20 $FF

    ld b, $20                                     ; $4D29: $06 $20
    rst RST_28                                    ; $4D2B: $EF
    ld [$F720], sp                                ; $4D2C: $08 $20 $F7
    ld a, [bc]                                    ; $4D2F: $0A
    db $10                                        ; $4D30: $10
    db $FD                                        ; $4D31: $FD
    inc c                                         ; $4D32: $0C
    nop                                           ; $4D33: $00
    ld bc, $A01B                                  ; $4D34: $01 $1B $A0
    ld l, a                                       ; $4D37: $6F
    inc c                                         ; $4D38: $0C
    dec a                                         ; $4D39: $3D
    ld c, l                                       ; $4D3A: $4D
    rlca                                          ; $4D3B: $07
    nop                                           ; $4D3C: $00
    ld b, $05                                     ; $4D3D: $06 $05
    or $00                                        ; $4D3F: $F6 $00
    dec d                                         ; $4D41: $15
    rst RST_30                                    ; $4D42: $F7
    ld [bc], a                                    ; $4D43: $02
    dec h                                         ; $4D44: $25
    rst RST_30                                    ; $4D45: $F7
    inc b                                         ; $4D46: $04

jr_007_4D47:
    db $10                                        ; $4D47: $10
    rst RST_28                                    ; $4D48: $EF
    ld b, $20                                     ; $4D49: $06 $20
    rst RST_28                                    ; $4D4B: $EF
    ld [$F530], sp                                ; $4D4C: $08 $30 $F5
    ld a, [bc]                                    ; $4D4F: $0A
    nop                                           ; $4D50: $00
    ld bc, $602A                                  ; $4D51: $01 $2A $60
    ld [hl], b                                    ; $4D54: $70

jr_007_4D55:
    inc c                                         ; $4D55: $0C
    ld e, d                                       ; $4D56: $5A
    ld c, l                                       ; $4D57: $4D
    nop                                           ; $4D58: $00
    nop                                           ; $4D59: $00
    ld b, $20                                     ; $4D5A: $06 $20
    rst RST_20                                    ; $4D5C: $E7
    nop                                           ; $4D5D: $00
    jr nc, jr_007_4D47                            ; $4D5E: $30 $E7

    ld [bc], a                                    ; $4D60: $02
    jr nz, @-$0F                                  ; $4D61: $20 $EF

    inc b                                         ; $4D63: $04

jr_007_4D64:
    jr nc, jr_007_4D55                            ; $4D64: $30 $EF

    ld b, $1F                                     ; $4D66: $06 $1F
    rst RST_30                                    ; $4D68: $F7
    ld [$F72F], sp                                ; $4D69: $08 $2F $F7
    ld a, [bc]                                    ; $4D6C: $0A
    nop                                           ; $4D6D: $00
    ld bc, $202A                                  ; $4D6E: $01 $2A $20
    ld [hl], c                                    ; $4D71: $71

jr_007_4D72:
    inc c                                         ; $4D72: $0C
    ld [hl], a                                    ; $4D73: $77
    ld c, l                                       ; $4D74: $4D
    nop                                           ; $4D75: $00
    nop                                           ; $4D76: $00
    ld b, $20                                     ; $4D77: $06 $20
    rst RST_20                                    ; $4D79: $E7
    nop                                           ; $4D7A: $00
    jr nc, jr_007_4D64                            ; $4D7B: $30 $E7

    ld [bc], a                                    ; $4D7D: $02
    jr nz, @-$0F                                  ; $4D7E: $20 $EF

    inc b                                         ; $4D80: $04

jr_007_4D81:
    jr nc, jr_007_4D72                            ; $4D81: $30 $EF

    ld b, $20                                     ; $4D83: $06 $20
    rst RST_30                                    ; $4D85: $F7
    ld [$F730], sp                                ; $4D86: $08 $30 $F7
    ld a, [bc]                                    ; $4D89: $0A
    nop                                           ; $4D8A: $00
    ld bc, $E02A                                  ; $4D8B: $01 $2A $E0
    ld [hl], c                                    ; $4D8E: $71

jr_007_4D8F:
    inc c                                         ; $4D8F: $0C
    sub h                                         ; $4D90: $94
    ld c, l                                       ; $4D91: $4D
    nop                                           ; $4D92: $00
    nop                                           ; $4D93: $00
    ld b, $20                                     ; $4D94: $06 $20
    rst RST_20                                    ; $4D96: $E7
    nop                                           ; $4D97: $00
    jr nc, jr_007_4D81                            ; $4D98: $30 $E7

    ld [bc], a                                    ; $4D9A: $02
    jr nz, @-$0F                                  ; $4D9B: $20 $EF

    inc b                                         ; $4D9D: $04
    jr nc, jr_007_4D8F                            ; $4D9E: $30 $EF

    ld b, $20                                     ; $4DA0: $06 $20
    rst RST_30                                    ; $4DA2: $F7
    ld [$F730], sp                                ; $4DA3: $08 $30 $F7
    ld a, [bc]                                    ; $4DA6: $0A
    sbc a                                         ; $4DA7: $9F
    ld d, b                                       ; $4DA8: $50
    rst RST_38                                    ; $4DA9: $FF
    rst RST_38                                    ; $4DAA: $FF
    cp h                                          ; $4DAB: $BC
    ld d, b                                       ; $4DAC: $50
    rst RST_38                                    ; $4DAD: $FF
    rst RST_38                                    ; $4DAE: $FF
    rst RST_18                                    ; $4DAF: $DF
    ld d, b                                       ; $4DB0: $50
    rst RST_38                                    ; $4DB1: $FF
    rst RST_38                                    ; $4DB2: $FF
    cp h                                          ; $4DB3: $BC
    ld d, b                                       ; $4DB4: $50
    rst RST_38                                    ; $4DB5: $FF
    rst RST_38                                    ; $4DB6: $FF
    rst RST_38                                    ; $4DB7: $FF
    rst RST_38                                    ; $4DB8: $FF
    ld [bc], a                                    ; $4DB9: $02
    ld d, c                                       ; $4DBA: $51
    rst RST_38                                    ; $4DBB: $FF
    rst RST_38                                    ; $4DBC: $FF
    rra                                           ; $4DBD: $1F
    ld d, c                                       ; $4DBE: $51
    rst RST_38                                    ; $4DBF: $FF
    rst RST_38                                    ; $4DC0: $FF
    ccf                                           ; $4DC1: $3F
    ld d, c                                       ; $4DC2: $51
    rst RST_38                                    ; $4DC3: $FF
    rst RST_38                                    ; $4DC4: $FF
    rra                                           ; $4DC5: $1F
    ld d, c                                       ; $4DC6: $51
    rst RST_38                                    ; $4DC7: $FF
    rst RST_38                                    ; $4DC8: $FF
    rst RST_38                                    ; $4DC9: $FF
    rst RST_38                                    ; $4DCA: $FF
    ld e, h                                       ; $4DCB: $5C
    ld d, c                                       ; $4DCC: $51
    rst RST_38                                    ; $4DCD: $FF
    rst RST_38                                    ; $4DCE: $FF
    rst RST_38                                    ; $4DCF: $FF
    rst RST_38                                    ; $4DD0: $FF
    ld e, h                                       ; $4DD1: $5C
    ld d, c                                       ; $4DD2: $51
    rst RST_38                                    ; $4DD3: $FF
    rst RST_38                                    ; $4DD4: $FF
    ld d, $4A                                     ; $4DD5: $16 $4A
    add [hl]                                      ; $4DD7: $86
    ld d, c                                       ; $4DD8: $51
    xor c                                         ; $4DD9: $A9
    ld d, c                                       ; $4DDA: $51
    db $DB                                        ; $4DDB: $DB
    ld d, c                                       ; $4DDC: $51
    ld [$FF52], sp                                ; $4DDD: $08 $52 $FF
    rst RST_38                                    ; $4DE0: $FF
    rst RST_00                                    ; $4DE1: $C7
    ld d, c                                       ; $4DE2: $51
    di                                            ; $4DE3: $F3
    ld d, c                                       ; $4DE4: $51
    jr nc, jr_007_4E39                            ; $4DE5: $30 $52

    rst RST_38                                    ; $4DE7: $FF
    rst RST_38                                    ; $4DE8: $FF
    ld c, l                                       ; $4DE9: $4D
    ld d, d                                       ; $4DEA: $52
    rst RST_38                                    ; $4DEB: $FF
    rst RST_38                                    ; $4DEC: $FF
    ld e, h                                       ; $4DED: $5C
    ld d, c                                       ; $4DEE: $51
    rst RST_38                                    ; $4DEF: $FF
    rst RST_38                                    ; $4DF0: $FF
    rst RST_38                                    ; $4DF1: $FF
    rst RST_38                                    ; $4DF2: $FF
    sub e                                         ; $4DF3: $93
    ld d, d                                       ; $4DF4: $52
    rst RST_38                                    ; $4DF5: $FF
    rst RST_38                                    ; $4DF6: $FF
    jr nz, jr_007_4E43                            ; $4DF7: $20 $4A

    adc [hl]                                      ; $4DF9: $8E
    ld d, c                                       ; $4DFA: $51
    ld [de], a                                    ; $4DFB: $12
    ld d, d                                       ; $4DFC: $52
    rst RST_38                                    ; $4DFD: $FF
    rst RST_38                                    ; $4DFE: $FF
    cp l                                          ; $4DFF: $BD
    ld d, c                                       ; $4E00: $51
    db $EB                                        ; $4E01: $EB
    ld d, c                                       ; $4E02: $51
    ld h, $52                                     ; $4E03: $26 $52
    rst RST_38                                    ; $4E05: $FF
    rst RST_38                                    ; $4E06: $FF
    or e                                          ; $4E07: $B3
    ld d, c                                       ; $4E08: $51
    db $E3                                        ; $4E09: $E3
    ld d, c                                       ; $4E0A: $51
    or b                                          ; $4E0B: $B0
    ld d, l                                       ; $4E0C: $55
    rst RST_38                                    ; $4E0D: $FF
    rst RST_38                                    ; $4E0E: $FF
    ld e, h                                       ; $4E0F: $5C
    ld d, c                                       ; $4E10: $51
    rst RST_38                                    ; $4E11: $FF
    rst RST_38                                    ; $4E12: $FF
    rst RST_38                                    ; $4E13: $FF
    rst RST_38                                    ; $4E14: $FF
    ld [hl], e                                    ; $4E15: $73
    ld d, d                                       ; $4E16: $52
    rst RST_38                                    ; $4E17: $FF
    rst RST_38                                    ; $4E18: $FF
    rst RST_38                                    ; $4E19: $FF
    rst RST_38                                    ; $4E1A: $FF
    sub e                                         ; $4E1B: $93
    ld d, d                                       ; $4E1C: $52
    rst RST_38                                    ; $4E1D: $FF
    rst RST_38                                    ; $4E1E: $FF
    rst RST_38                                    ; $4E1F: $FF
    rst RST_38                                    ; $4E20: $FF
    sbc l                                         ; $4E21: $9D
    ld d, d                                       ; $4E22: $52
    rst RST_38                                    ; $4E23: $FF
    rst RST_38                                    ; $4E24: $FF
    ld e, h                                       ; $4E25: $5C
    ld d, c                                       ; $4E26: $51
    rst RST_38                                    ; $4E27: $FF
    rst RST_38                                    ; $4E28: $FF
    rst RST_38                                    ; $4E29: $FF
    rst RST_38                                    ; $4E2A: $FF
    rst RST_00                                    ; $4E2B: $C7
    ld d, d                                       ; $4E2C: $52
    sbc $52                                       ; $4E2D: $DE $52
    or $52                                        ; $4E2F: $F6 $52
    sbc $52                                       ; $4E31: $DE $52
    rra                                           ; $4E33: $1F
    ld d, c                                       ; $4E34: $51
    rst RST_38                                    ; $4E35: $FF
    rst RST_38                                    ; $4E36: $FF
    rst RST_38                                    ; $4E37: $FF
    rst RST_38                                    ; $4E38: $FF

jr_007_4E39:
    or e                                          ; $4E39: $B3
    ld d, c                                       ; $4E3A: $51
    db $E3                                        ; $4E3B: $E3
    ld d, c                                       ; $4E3C: $51
    dec c                                         ; $4E3D: $0D
    ld d, e                                       ; $4E3E: $53
    ld hl, $3953                                  ; $4E3F: $21 $53 $39
    ld d, e                                       ; $4E42: $53

jr_007_4E43:
    ld hl, $6653                                  ; $4E43: $21 $53 $66
    ld d, c                                       ; $4E46: $51
    rst RST_38                                    ; $4E47: $FF
    rst RST_38                                    ; $4E48: $FF
    rst RST_38                                    ; $4E49: $FF
    rst RST_38                                    ; $4E4A: $FF
    jr nc, jr_007_4E9F                            ; $4E4B: $30 $52

    rst RST_38                                    ; $4E4D: $FF
    rst RST_38                                    ; $4E4E: $FF
    ld d, a                                       ; $4E4F: $57
    ld d, e                                       ; $4E50: $53
    rst RST_38                                    ; $4E51: $FF
    rst RST_38                                    ; $4E52: $FF
    xor c                                         ; $4E53: $A9
    ld d, c                                       ; $4E54: $51
    db $DB                                        ; $4E55: $DB
    ld d, c                                       ; $4E56: $51
    ld e, h                                       ; $4E57: $5C
    ld d, c                                       ; $4E58: $51
    rst RST_38                                    ; $4E59: $FF
    rst RST_38                                    ; $4E5A: $FF
    rst RST_38                                    ; $4E5B: $FF
    rst RST_38                                    ; $4E5C: $FF
    sub e                                         ; $4E5D: $93
    ld d, d                                       ; $4E5E: $52
    rst RST_38                                    ; $4E5F: $FF
    rst RST_38                                    ; $4E60: $FF
    sbc b                                         ; $4E61: $98
    ld d, e                                       ; $4E62: $53
    rst RST_38                                    ; $4E63: $FF
    rst RST_38                                    ; $4E64: $FF
    sub e                                         ; $4E65: $93
    ld d, d                                       ; $4E66: $52
    rst RST_38                                    ; $4E67: $FF
    rst RST_38                                    ; $4E68: $FF
    rst RST_38                                    ; $4E69: $FF
    rst RST_38                                    ; $4E6A: $FF
    cp b                                          ; $4E6B: $B8
    ld d, e                                       ; $4E6C: $53
    rst RST_38                                    ; $4E6D: $FF
    rst RST_38                                    ; $4E6E: $FF
    jp nc, $FF53                                  ; $4E6F: $D2 $53 $FF

    rst RST_38                                    ; $4E72: $FF
    cp b                                          ; $4E73: $B8
    ld d, e                                       ; $4E74: $53
    rst RST_38                                    ; $4E75: $FF
    rst RST_38                                    ; $4E76: $FF
    rst RST_38                                    ; $4E77: $FF
    rst RST_38                                    ; $4E78: $FF
    xor c                                         ; $4E79: $A9
    ld d, c                                       ; $4E7A: $51
    db $DB                                        ; $4E7B: $DB
    ld d, c                                       ; $4E7C: $51
    db $EC                                        ; $4E7D: $EC
    ld d, e                                       ; $4E7E: $53
    rst RST_38                                    ; $4E7F: $FF
    rst RST_38                                    ; $4E80: $FF
    rst RST_00                                    ; $4E81: $C7
    ld d, c                                       ; $4E82: $51
    di                                            ; $4E83: $F3
    ld d, c                                       ; $4E84: $51
    ld [$FF52], sp                                ; $4E85: $08 $52 $FF
    rst RST_38                                    ; $4E88: $FF
    xor c                                         ; $4E89: $A9
    ld d, c                                       ; $4E8A: $51
    db $DB                                        ; $4E8B: $DB
    ld d, c                                       ; $4E8C: $51
    rst RST_38                                    ; $4E8D: $FF
    rst RST_38                                    ; $4E8E: $FF
    jr nc, @+$54                                  ; $4E8F: $30 $52

    rst RST_38                                    ; $4E91: $FF
    rst RST_38                                    ; $4E92: $FF
    ld d, a                                       ; $4E93: $57
    ld d, e                                       ; $4E94: $53
    rst RST_38                                    ; $4E95: $FF
    rst RST_38                                    ; $4E96: $FF
    ld d, a                                       ; $4E97: $57
    ld d, e                                       ; $4E98: $53
    rst RST_38                                    ; $4E99: $FF
    rst RST_38                                    ; $4E9A: $FF
    xor c                                         ; $4E9B: $A9
    ld d, c                                       ; $4E9C: $51
    db $DB                                        ; $4E9D: $DB
    ld d, c                                       ; $4E9E: $51

jr_007_4E9F:
    ld e, h                                       ; $4E9F: $5C
    ld d, c                                       ; $4EA0: $51
    rst RST_38                                    ; $4EA1: $FF
    rst RST_38                                    ; $4EA2: $FF
    rst RST_38                                    ; $4EA3: $FF
    rst RST_38                                    ; $4EA4: $FF
    db $EC                                        ; $4EA5: $EC
    ld d, e                                       ; $4EA6: $53
    rst RST_38                                    ; $4EA7: $FF
    rst RST_38                                    ; $4EA8: $FF
    db $EC                                        ; $4EA9: $EC
    ld d, e                                       ; $4EAA: $53
    rst RST_38                                    ; $4EAB: $FF
    rst RST_38                                    ; $4EAC: $FF
    db $EC                                        ; $4EAD: $EC
    ld d, e                                       ; $4EAE: $53
    rst RST_38                                    ; $4EAF: $FF
    rst RST_38                                    ; $4EB0: $FF
    rst RST_00                                    ; $4EB1: $C7
    ld d, c                                       ; $4EB2: $51
    di                                            ; $4EB3: $F3
    ld d, c                                       ; $4EB4: $51
    ld e, h                                       ; $4EB5: $5C
    ld d, c                                       ; $4EB6: $51
    rst RST_38                                    ; $4EB7: $FF
    rst RST_38                                    ; $4EB8: $FF
    rst RST_38                                    ; $4EB9: $FF
    rst RST_38                                    ; $4EBA: $FF
    sbc b                                         ; $4EBB: $98
    ld d, e                                       ; $4EBC: $53
    rst RST_38                                    ; $4EBD: $FF
    rst RST_38                                    ; $4EBE: $FF
    ld [de], a                                    ; $4EBF: $12
    ld d, d                                       ; $4EC0: $52
    rst RST_38                                    ; $4EC1: $FF
    rst RST_38                                    ; $4EC2: $FF
    cp l                                          ; $4EC3: $BD
    ld d, c                                       ; $4EC4: $51
    db $EB                                        ; $4EC5: $EB
    ld d, c                                       ; $4EC6: $51
    ld h, $52                                     ; $4EC7: $26 $52
    rst RST_38                                    ; $4EC9: $FF
    rst RST_38                                    ; $4ECA: $FF
    or e                                          ; $4ECB: $B3
    ld d, c                                       ; $4ECC: $51
    db $E3                                        ; $4ECD: $E3
    ld d, c                                       ; $4ECE: $51
    ld b, e                                       ; $4ECF: $43
    ld d, e                                       ; $4ED0: $53
    ld hl, $6653                                  ; $4ED1: $21 $53 $66
    ld d, c                                       ; $4ED4: $51
    rst RST_38                                    ; $4ED5: $FF
    rst RST_38                                    ; $4ED6: $FF
    rst RST_38                                    ; $4ED7: $FF
    rst RST_38                                    ; $4ED8: $FF
    jr nc, jr_007_4F2D                            ; $4ED9: $30 $52

    rst RST_38                                    ; $4EDB: $FF
    rst RST_38                                    ; $4EDC: $FF
    xor c                                         ; $4EDD: $A9
    ld d, c                                       ; $4EDE: $51
    db $DB                                        ; $4EDF: $DB
    ld d, c                                       ; $4EE0: $51
    ld [$FF52], sp                                ; $4EE1: $08 $52 $FF
    rst RST_38                                    ; $4EE4: $FF
    rst RST_00                                    ; $4EE5: $C7
    ld d, c                                       ; $4EE6: $51
    di                                            ; $4EE7: $F3
    ld d, c                                       ; $4EE8: $51
    ld e, h                                       ; $4EE9: $5C
    ld d, c                                       ; $4EEA: $51
    rst RST_38                                    ; $4EEB: $FF
    rst RST_38                                    ; $4EEC: $FF
    rst RST_38                                    ; $4EED: $FF
    rst RST_38                                    ; $4EEE: $FF
    jr jr_007_4F45                                ; $4EEF: $18 $54

    rst RST_38                                    ; $4EF1: $FF
    rst RST_38                                    ; $4EF2: $FF
    ld e, h                                       ; $4EF3: $5C
    ld d, c                                       ; $4EF4: $51
    rst RST_38                                    ; $4EF5: $FF
    rst RST_38                                    ; $4EF6: $FF
    rst RST_38                                    ; $4EF7: $FF
    rst RST_38                                    ; $4EF8: $FF
    ld [de], a                                    ; $4EF9: $12
    ld d, d                                       ; $4EFA: $52
    rst RST_38                                    ; $4EFB: $FF
    rst RST_38                                    ; $4EFC: $FF
    or b                                          ; $4EFD: $B0
    ld d, l                                       ; $4EFE: $55
    rst RST_38                                    ; $4EFF: $FF
    rst RST_38                                    ; $4F00: $FF
    ld e, h                                       ; $4F01: $5C
    ld d, c                                       ; $4F02: $51
    rst RST_38                                    ; $4F03: $FF
    rst RST_38                                    ; $4F04: $FF
    rst RST_38                                    ; $4F05: $FF
    rst RST_38                                    ; $4F06: $FF
    ccf                                           ; $4F07: $3F
    ld d, h                                       ; $4F08: $54
    ld d, [hl]                                    ; $4F09: $56
    ld d, h                                       ; $4F0A: $54
    ld l, [hl]                                    ; $4F0B: $6E
    ld d, h                                       ; $4F0C: $54
    rst RST_38                                    ; $4F0D: $FF
    rst RST_38                                    ; $4F0E: $FF
    rst RST_38                                    ; $4F0F: $FF
    rst RST_38                                    ; $4F10: $FF
    ccf                                           ; $4F11: $3F
    ld d, h                                       ; $4F12: $54
    ld d, [hl]                                    ; $4F13: $56
    ld d, h                                       ; $4F14: $54
    db $DB                                        ; $4F15: $DB
    ld d, h                                       ; $4F16: $54
    rst RST_38                                    ; $4F17: $FF
    rst RST_38                                    ; $4F18: $FF
    ccf                                           ; $4F19: $3F
    ld d, h                                       ; $4F1A: $54
    ld d, [hl]                                    ; $4F1B: $56
    ld d, h                                       ; $4F1C: $54
    rst RST_38                                    ; $4F1D: $FF
    rst RST_38                                    ; $4F1E: $FF
    sub a                                         ; $4F1F: $97
    ld d, h                                       ; $4F20: $54
    xor [hl]                                      ; $4F21: $AE
    ld d, h                                       ; $4F22: $54
    sub a                                         ; $4F23: $97
    ld d, h                                       ; $4F24: $54
    cp l                                          ; $4F25: $BD
    ld d, h                                       ; $4F26: $54
    sub a                                         ; $4F27: $97
    ld d, h                                       ; $4F28: $54
    call z, $9754                                 ; $4F29: $CC $54 $97
    ld d, h                                       ; $4F2C: $54

jr_007_4F2D:
    xor [hl]                                      ; $4F2D: $AE
    ld d, h                                       ; $4F2E: $54
    sub a                                         ; $4F2F: $97
    ld d, h                                       ; $4F30: $54
    cp l                                          ; $4F31: $BD
    ld d, h                                       ; $4F32: $54
    sub a                                         ; $4F33: $97
    ld d, h                                       ; $4F34: $54
    call z, $FF54                                 ; $4F35: $CC $54 $FF
    rst RST_38                                    ; $4F38: $FF
    sub e                                         ; $4F39: $93
    ld d, d                                       ; $4F3A: $52
    rst RST_38                                    ; $4F3B: $FF
    rst RST_38                                    ; $4F3C: $FF
    ld a, [bc]                                    ; $4F3D: $0A
    ld d, l                                       ; $4F3E: $55
    rst RST_38                                    ; $4F3F: $FF
    rst RST_38                                    ; $4F40: $FF
    ccf                                           ; $4F41: $3F
    ld d, h                                       ; $4F42: $54
    ld d, [hl]                                    ; $4F43: $56
    ld d, h                                       ; $4F44: $54

jr_007_4F45:
    sub e                                         ; $4F45: $93
    ld d, d                                       ; $4F46: $52
    rst RST_38                                    ; $4F47: $FF
    rst RST_38                                    ; $4F48: $FF
    ld a, [bc]                                    ; $4F49: $0A
    ld d, l                                       ; $4F4A: $55
    rst RST_38                                    ; $4F4B: $FF
    rst RST_38                                    ; $4F4C: $FF
    ccf                                           ; $4F4D: $3F
    ld d, h                                       ; $4F4E: $54
    ld d, [hl]                                    ; $4F4F: $56
    ld d, h                                       ; $4F50: $54
    rst RST_38                                    ; $4F51: $FF
    rst RST_38                                    ; $4F52: $FF
    daa                                           ; $4F53: $27
    ld d, l                                       ; $4F54: $55
    rst RST_38                                    ; $4F55: $FF
    rst RST_38                                    ; $4F56: $FF
    rst RST_38                                    ; $4F57: $FF
    rst RST_38                                    ; $4F58: $FF
    daa                                           ; $4F59: $27
    ld d, l                                       ; $4F5A: $55
    rst RST_38                                    ; $4F5B: $FF
    rst RST_38                                    ; $4F5C: $FF
    rst RST_38                                    ; $4F5D: $FF
    rst RST_38                                    ; $4F5E: $FF
    sbc a                                         ; $4F5F: $9F
    ld d, b                                       ; $4F60: $50
    rst RST_38                                    ; $4F61: $FF
    rst RST_38                                    ; $4F62: $FF
    daa                                           ; $4F63: $27
    ld d, l                                       ; $4F64: $55
    rst RST_38                                    ; $4F65: $FF
    rst RST_38                                    ; $4F66: $FF
    ld b, a                                       ; $4F67: $47
    ld d, l                                       ; $4F68: $55
    rst RST_38                                    ; $4F69: $FF
    rst RST_38                                    ; $4F6A: $FF
    rst RST_38                                    ; $4F6B: $FF
    rst RST_38                                    ; $4F6C: $FF
    add d                                         ; $4F6D: $82
    ld d, l                                       ; $4F6E: $55
    rst RST_38                                    ; $4F6F: $FF
    rst RST_38                                    ; $4F70: $FF
    rst RST_38                                    ; $4F71: $FF
    rst RST_38                                    ; $4F72: $FF
    daa                                           ; $4F73: $27
    ld d, l                                       ; $4F74: $55
    rst RST_38                                    ; $4F75: $FF
    rst RST_38                                    ; $4F76: $FF
    ld [de], a                                    ; $4F77: $12
    ld d, d                                       ; $4F78: $52
    rst RST_38                                    ; $4F79: $FF
    rst RST_38                                    ; $4F7A: $FF
    cp l                                          ; $4F7B: $BD
    ld d, c                                       ; $4F7C: $51
    db $EB                                        ; $4F7D: $EB
    ld d, c                                       ; $4F7E: $51
    ld h, $52                                     ; $4F7F: $26 $52
    rst RST_38                                    ; $4F81: $FF
    rst RST_38                                    ; $4F82: $FF
    or e                                          ; $4F83: $B3
    ld d, c                                       ; $4F84: $51
    db $E3                                        ; $4F85: $E3
    ld d, c                                       ; $4F86: $51
    or b                                          ; $4F87: $B0
    ld d, l                                       ; $4F88: $55
    rst RST_38                                    ; $4F89: $FF
    rst RST_38                                    ; $4F8A: $FF
    ld e, h                                       ; $4F8B: $5C
    ld d, c                                       ; $4F8C: $51
    rst RST_38                                    ; $4F8D: $FF
    rst RST_38                                    ; $4F8E: $FF
    rst RST_38                                    ; $4F8F: $FF
    rst RST_38                                    ; $4F90: $FF
    daa                                           ; $4F91: $27
    ld d, l                                       ; $4F92: $55
    rst RST_38                                    ; $4F93: $FF
    rst RST_38                                    ; $4F94: $FF
    and [hl]                                      ; $4F95: $A6
    ld d, l                                       ; $4F96: $55
    rst RST_38                                    ; $4F97: $FF
    rst RST_38                                    ; $4F98: $FF
    db $DD                                        ; $4F99: $DD
    ld d, l                                       ; $4F9A: $55
    rst RST_38                                    ; $4F9B: $FF
    rst RST_38                                    ; $4F9C: $FF
    and [hl]                                      ; $4F9D: $A6
    ld d, l                                       ; $4F9E: $55
    rst RST_38                                    ; $4F9F: $FF
    rst RST_38                                    ; $4FA0: $FF
    db $DD                                        ; $4FA1: $DD
    ld d, l                                       ; $4FA2: $55
    rst RST_38                                    ; $4FA3: $FF
    rst RST_38                                    ; $4FA4: $FF
    rst RST_38                                    ; $4FA5: $FF
    rst RST_38                                    ; $4FA6: $FF
    ld b, a                                       ; $4FA7: $47
    ld d, l                                       ; $4FA8: $55
    rst RST_38                                    ; $4FA9: $FF
    rst RST_38                                    ; $4FAA: $FF
    ld d, c                                       ; $4FAB: $51
    ld d, l                                       ; $4FAC: $55
    rst RST_38                                    ; $4FAD: $FF
    rst RST_38                                    ; $4FAE: $FF
    ld e, e                                       ; $4FAF: $5B
    ld d, l                                       ; $4FB0: $55
    rst RST_38                                    ; $4FB1: $FF
    rst RST_38                                    ; $4FB2: $FF
    ld h, l                                       ; $4FB3: $65
    ld d, l                                       ; $4FB4: $55
    rst RST_38                                    ; $4FB5: $FF
    rst RST_38                                    ; $4FB6: $FF
    ld h, l                                       ; $4FB7: $65
    ld d, l                                       ; $4FB8: $55
    rst RST_38                                    ; $4FB9: $FF
    rst RST_38                                    ; $4FBA: $FF
    and [hl]                                      ; $4FBB: $A6
    ld d, l                                       ; $4FBC: $55
    rst RST_38                                    ; $4FBD: $FF
    rst RST_38                                    ; $4FBE: $FF
    db $DD                                        ; $4FBF: $DD
    ld d, l                                       ; $4FC0: $55
    rst RST_38                                    ; $4FC1: $FF
    rst RST_38                                    ; $4FC2: $FF
    rst RST_38                                    ; $4FC3: $FF
    rst RST_38                                    ; $4FC4: $FF
    daa                                           ; $4FC5: $27
    ld d, l                                       ; $4FC6: $55
    rst RST_38                                    ; $4FC7: $FF
    rst RST_38                                    ; $4FC8: $FF
    and [hl]                                      ; $4FC9: $A6
    ld d, l                                       ; $4FCA: $55
    rst RST_38                                    ; $4FCB: $FF
    rst RST_38                                    ; $4FCC: $FF
    db $DD                                        ; $4FCD: $DD
    ld d, l                                       ; $4FCE: $55
    rst RST_38                                    ; $4FCF: $FF
    rst RST_38                                    ; $4FD0: $FF
    rst RST_38                                    ; $4FD1: $FF
    rst RST_38                                    ; $4FD2: $FF
    or b                                          ; $4FD3: $B0
    ld d, l                                       ; $4FD4: $55
    rst RST_38                                    ; $4FD5: $FF
    rst RST_38                                    ; $4FD6: $FF
    rst RST_38                                    ; $4FD7: $FF
    rst RST_38                                    ; $4FD8: $FF
    ld e, h                                       ; $4FD9: $5C
    ld d, c                                       ; $4FDA: $51
    rst RST_38                                    ; $4FDB: $FF
    rst RST_38                                    ; $4FDC: $FF
    ld e, h                                       ; $4FDD: $5C
    ld d, c                                       ; $4FDE: $51
    rst RST_38                                    ; $4FDF: $FF
    rst RST_38                                    ; $4FE0: $FF
    rst RST_38                                    ; $4FE1: $FF
    rst RST_38                                    ; $4FE2: $FF
    ld e, h                                       ; $4FE3: $5C
    ld d, c                                       ; $4FE4: $51
    rst RST_38                                    ; $4FE5: $FF
    rst RST_38                                    ; $4FE6: $FF
    jr jr_007_503D                                ; $4FE7: $18 $54

    rst RST_38                                    ; $4FE9: $FF
    rst RST_38                                    ; $4FEA: $FF
    inc hl                                        ; $4FEB: $23
    ld d, [hl]                                    ; $4FEC: $56
    rst RST_38                                    ; $4FED: $FF
    rst RST_38                                    ; $4FEE: $FF
    ld a, [$FF55]                                 ; $4FEF: $FA $55 $FF
    rst RST_38                                    ; $4FF2: $FF
    ld e, h                                       ; $4FF3: $5C
    ld d, c                                       ; $4FF4: $51
    rst RST_38                                    ; $4FF5: $FF
    rst RST_38                                    ; $4FF6: $FF
    rst RST_38                                    ; $4FF7: $FF
    rst RST_38                                    ; $4FF8: $FF
    ld e, h                                       ; $4FF9: $5C
    ld d, c                                       ; $4FFA: $51
    rst RST_38                                    ; $4FFB: $FF
    rst RST_38                                    ; $4FFC: $FF
    ld a, [hl+]                                   ; $4FFD: $2A
    ld c, d                                       ; $4FFE: $4A
    add [hl]                                      ; $4FFF: $86
    ld d, c                                       ; $5000: $51
    ld c, h                                       ; $5001: $4C
    ld d, [hl]                                    ; $5002: $56
    rst RST_38                                    ; $5003: $FF
    rst RST_38                                    ; $5004: $FF
    adc h                                         ; $5005: $8C
    ld d, [hl]                                    ; $5006: $56
    rst RST_38                                    ; $5007: $FF
    rst RST_38                                    ; $5008: $FF
    xor c                                         ; $5009: $A9
    ld d, c                                       ; $500A: $51
    db $DB                                        ; $500B: $DB
    ld d, c                                       ; $500C: $51
    ld [$FF52], sp                                ; $500D: $08 $52 $FF
    rst RST_38                                    ; $5010: $FF
    rst RST_00                                    ; $5011: $C7
    ld d, c                                       ; $5012: $51
    di                                            ; $5013: $F3
    ld d, c                                       ; $5014: $51
    jr nc, jr_007_5069                            ; $5015: $30 $52

    rst RST_38                                    ; $5017: $FF
    rst RST_38                                    ; $5018: $FF
    ld c, l                                       ; $5019: $4D
    ld d, d                                       ; $501A: $52
    rst RST_38                                    ; $501B: $FF
    rst RST_38                                    ; $501C: $FF
    ld e, h                                       ; $501D: $5C
    ld d, c                                       ; $501E: $51
    rst RST_38                                    ; $501F: $FF
    rst RST_38                                    ; $5020: $FF
    rst RST_38                                    ; $5021: $FF
    rst RST_38                                    ; $5022: $FF
    ld e, h                                       ; $5023: $5C
    ld d, c                                       ; $5024: $51
    rst RST_38                                    ; $5025: $FF
    rst RST_38                                    ; $5026: $FF
    ld [hl+], a                                   ; $5027: $22
    ld d, h                                       ; $5028: $54
    rst RST_38                                    ; $5029: $FF
    rst RST_38                                    ; $502A: $FF
    and a                                         ; $502B: $A7
    ld d, d                                       ; $502C: $52
    rst RST_38                                    ; $502D: $FF
    rst RST_38                                    ; $502E: $FF
    rst RST_18                                    ; $502F: $DF
    ld d, [hl]                                    ; $5030: $56
    ld d, [hl]                                    ; $5031: $56
    ld d, h                                       ; $5032: $54
    ld a, [bc]                                    ; $5033: $0A
    ld d, l                                       ; $5034: $55
    rst RST_38                                    ; $5035: $FF
    rst RST_38                                    ; $5036: $FF
    add d                                         ; $5037: $82
    ld d, l                                       ; $5038: $55
    rst RST_38                                    ; $5039: $FF
    rst RST_38                                    ; $503A: $FF
    rst RST_38                                    ; $503B: $FF
    rst RST_38                                    ; $503C: $FF

jr_007_503D:
    sbc l                                         ; $503D: $9D
    ld d, d                                       ; $503E: $52
    rst RST_38                                    ; $503F: $FF
    rst RST_38                                    ; $5040: $FF
    ld d, [hl]                                    ; $5041: $56
    ld d, [hl]                                    ; $5042: $56
    rst RST_38                                    ; $5043: $FF
    rst RST_38                                    ; $5044: $FF
    and b                                         ; $5045: $A0
    ld d, [hl]                                    ; $5046: $56
    rst RST_38                                    ; $5047: $FF
    rst RST_38                                    ; $5048: $FF
    ld e, h                                       ; $5049: $5C
    ld d, c                                       ; $504A: $51
    rst RST_38                                    ; $504B: $FF
    rst RST_38                                    ; $504C: $FF
    rst RST_38                                    ; $504D: $FF
    rst RST_38                                    ; $504E: $FF
    ld e, h                                       ; $504F: $5C
    ld d, c                                       ; $5050: $51
    rst RST_38                                    ; $5051: $FF
    rst RST_38                                    ; $5052: $FF
    inc hl                                        ; $5053: $23
    ld d, [hl]                                    ; $5054: $56
    rst RST_38                                    ; $5055: $FF
    rst RST_38                                    ; $5056: $FF
    inc e                                         ; $5057: $1C
    ld d, d                                       ; $5058: $52
    rst RST_38                                    ; $5059: $FF
    rst RST_38                                    ; $505A: $FF
    cp l                                          ; $505B: $BD
    ld d, c                                       ; $505C: $51
    db $EB                                        ; $505D: $EB
    ld d, c                                       ; $505E: $51
    ld h, $52                                     ; $505F: $26 $52
    rst RST_38                                    ; $5061: $FF
    rst RST_38                                    ; $5062: $FF
    or e                                          ; $5063: $B3
    ld d, c                                       ; $5064: $51
    db $E3                                        ; $5065: $E3
    ld d, c                                       ; $5066: $51
    ld [de], a                                    ; $5067: $12
    ld d, d                                       ; $5068: $52

jr_007_5069:
    rst RST_38                                    ; $5069: $FF
    rst RST_38                                    ; $506A: $FF
    inc c                                         ; $506B: $0C
    ld c, d                                       ; $506C: $4A
    dec sp                                        ; $506D: $3B
    ld c, d                                       ; $506E: $4A
    ldh a, [rRP]                                  ; $506F: $F0 $56
    rst RST_38                                    ; $5071: $FF
    rst RST_38                                    ; $5072: $FF
    jr nc, @+$59                                  ; $5073: $30 $57

    rst RST_38                                    ; $5075: $FF
    rst RST_38                                    ; $5076: $FF
    db $10                                        ; $5077: $10
    ld d, a                                       ; $5078: $57
    rst RST_38                                    ; $5079: $FF
    rst RST_38                                    ; $507A: $FF
    ldh a, [rRP]                                  ; $507B: $F0 $56
    rst RST_38                                    ; $507D: $FF
    rst RST_38                                    ; $507E: $FF
    ld e, h                                       ; $507F: $5C
    ld d, c                                       ; $5080: $51
    rst RST_38                                    ; $5081: $FF
    rst RST_38                                    ; $5082: $FF
    ld e, h                                       ; $5083: $5C
    ld d, c                                       ; $5084: $51
    rst RST_38                                    ; $5085: $FF
    rst RST_38                                    ; $5086: $FF
    rst RST_38                                    ; $5087: $FF
    rst RST_38                                    ; $5088: $FF
    or e                                          ; $5089: $B3
    ld d, c                                       ; $508A: $51
    db $E3                                        ; $508B: $E3
    ld d, c                                       ; $508C: $51
    add hl, sp                                    ; $508D: $39
    ld d, e                                       ; $508E: $53
    ld hl, $0853                                  ; $508F: $21 $53 $08
    ld d, d                                       ; $5092: $52
    rst RST_38                                    ; $5093: $FF
    rst RST_38                                    ; $5094: $FF
    xor c                                         ; $5095: $A9
    ld d, c                                       ; $5096: $51
    db $DB                                        ; $5097: $DB
    ld d, c                                       ; $5098: $51
    ld e, h                                       ; $5099: $5C
    ld d, c                                       ; $509A: $51
    rst RST_38                                    ; $509B: $FF
    rst RST_38                                    ; $509C: $FF
    rst RST_38                                    ; $509D: $FF
    rst RST_38                                    ; $509E: $FF
    nop                                           ; $509F: $00
    dec e                                         ; $50A0: $1D
    nop                                           ; $50A1: $00
    nop                                           ; $50A2: $00
    ld b, b                                       ; $50A3: $40

jr_007_50A4:
    dec c                                         ; $50A4: $0D
    xor c                                         ; $50A5: $A9
    ld d, b                                       ; $50A6: $50
    ei                                            ; $50A7: $FB
    nop                                           ; $50A8: $00
    ld b, $37                                     ; $50A9: $06 $37
    db $ED                                        ; $50AB: $ED
    nop                                           ; $50AC: $00
    jr nc, jr_007_50A4                            ; $50AD: $30 $F5

jr_007_50AF:
    ld [bc], a                                    ; $50AF: $02
    jr nc, jr_007_50AF                            ; $50B0: $30 $FD

    inc b                                         ; $50B2: $04
    jr nc, @+$07                                  ; $50B3: $30 $05

    ld b, $30                                     ; $50B5: $06 $30
    dec c                                         ; $50B7: $0D
    ld [$0720], sp                                ; $50B8: $08 $20 $07
    ld a, [bc]                                    ; $50BB: $0A
    nop                                           ; $50BC: $00
    dec e                                         ; $50BD: $1D
    nop                                           ; $50BE: $00
    ret nz                                        ; $50BF: $C0

    ld b, b                                       ; $50C0: $40
    dec c                                         ; $50C1: $0D
    add $50                                       ; $50C2: $C6 $50
    ei                                            ; $50C4: $FB
    nop                                           ; $50C5: $00
    ld [$F032], sp                                ; $50C6: $08 $32 $F0
    nop                                           ; $50C9: $00
    cpl                                           ; $50CA: $2F
    ld hl, sp+$02                                 ; $50CB: $F8 $02
    cpl                                           ; $50CD: $2F
    nop                                           ; $50CE: $00
    inc b                                         ; $50CF: $04
    jr nc, @+$0A                                  ; $50D0: $30 $08

    ld b, $30                                     ; $50D2: $06 $30
    db $10                                        ; $50D4: $10
    ld [$0720], sp                                ; $50D5: $08 $20 $07
    ld a, [bc]                                    ; $50D8: $0A
    jr nz, @+$11                                  ; $50D9: $20 $0F

    inc c                                         ; $50DB: $0C
    ccf                                           ; $50DC: $3F
    ld a, [$000E]                                 ; $50DD: $FA $0E $00
    dec e                                         ; $50E0: $1D
    nop                                           ; $50E1: $00
    ret nz                                        ; $50E2: $C0

    ld b, c                                       ; $50E3: $41
    dec c                                         ; $50E4: $0D
    jp hl                                         ; $50E5: $E9


    ld d, b                                       ; $50E6: $50
    ei                                            ; $50E7: $FB
    nop                                           ; $50E8: $00
    ld [$EC32], sp                                ; $50E9: $08 $32 $EC
    nop                                           ; $50EC: $00
    cpl                                           ; $50ED: $2F

jr_007_50EE:
    db $F4                                        ; $50EE: $F4
    ld [bc], a                                    ; $50EF: $02
    jr nc, jr_007_50EE                            ; $50F0: $30 $FC

    inc b                                         ; $50F2: $04
    dec l                                         ; $50F3: $2D
    inc b                                         ; $50F4: $04
    ld b, $2D                                     ; $50F5: $06 $2D
    inc c                                         ; $50F7: $0C
    ld [$083D], sp                                ; $50F8: $08 $3D $08
    ld a, [bc]                                    ; $50FB: $0A
    dec a                                         ; $50FC: $3D
    db $10                                        ; $50FD: $10
    inc c                                         ; $50FE: $0C
    ccf                                           ; $50FF: $3F
    db $F4                                        ; $5100: $F4
    ld c, $00                                     ; $5101: $0E $00
    dec e                                         ; $5103: $1D
    nop                                           ; $5104: $00
    ret nz                                        ; $5105: $C0

jr_007_5106:
    ld b, d                                       ; $5106: $42
    dec c                                         ; $5107: $0D
    inc c                                         ; $5108: $0C
    ld d, c                                       ; $5109: $51
    ld [bc], a                                    ; $510A: $02
    nop                                           ; $510B: $00
    ld b, $30                                     ; $510C: $06 $30
    db $EC                                        ; $510E: $EC
    nop                                           ; $510F: $00
    jr nc, jr_007_5106                            ; $5110: $30 $F4

    ld [bc], a                                    ; $5112: $02
    jr nc, @-$02                                  ; $5113: $30 $FC

jr_007_5115:
    inc b                                         ; $5115: $04
    ld sp, $0604                                  ; $5116: $31 $04 $06
    inc sp                                        ; $5119: $33
    inc c                                         ; $511A: $0C
    ld [$F020], sp                                ; $511B: $08 $20 $F0
    ld a, [bc]                                    ; $511E: $0A
    nop                                           ; $511F: $00
    dec e                                         ; $5120: $1D
    nop                                           ; $5121: $00
    add b                                         ; $5122: $80
    ld b, e                                       ; $5123: $43
    dec c                                         ; $5124: $0D
    add hl, hl                                    ; $5125: $29
    ld d, c                                       ; $5126: $51
    ld [bc], a                                    ; $5127: $02
    nop                                           ; $5128: $00
    rlca                                          ; $5129: $07
    jr z, jr_007_5115                             ; $512A: $28 $E9

    nop                                           ; $512C: $00
    inc l                                         ; $512D: $2C
    pop af                                        ; $512E: $F1
    ld [bc], a                                    ; $512F: $02
    inc l                                         ; $5130: $2C
    ld sp, hl                                     ; $5131: $F9
    inc b                                         ; $5132: $04
    ld l, $01                                     ; $5133: $2E $01
    ld b, $3C                                     ; $5135: $06 $3C
    push af                                       ; $5137: $F5
    ld [$013E], sp                                ; $5138: $08 $3E $01
    ld a, [bc]                                    ; $513B: $0A
    ld h, $09                                     ; $513C: $26 $09
    inc c                                         ; $513E: $0C
    nop                                           ; $513F: $00
    dec e                                         ; $5140: $1D
    nop                                           ; $5141: $00
    ld h, b                                       ; $5142: $60

jr_007_5143:
    ld b, h                                       ; $5143: $44
    dec c                                         ; $5144: $0D
    ld c, c                                       ; $5145: $49
    ld d, c                                       ; $5146: $51
    ld [bc], a                                    ; $5147: $02

jr_007_5148:
    nop                                           ; $5148: $00
    ld b, $30                                     ; $5149: $06 $30
    db $EC                                        ; $514B: $EC
    nop                                           ; $514C: $00
    jr nc, jr_007_5143                            ; $514D: $30 $F4

    ld [bc], a                                    ; $514F: $02
    jr nc, @-$02                                  ; $5150: $30 $FC

    inc b                                         ; $5152: $04
    ld sp, $0604                                  ; $5153: $31 $04 $06
    jr nz, jr_007_5148                            ; $5156: $20 $F0

    ld [$0B24], sp                                ; $5158: $08 $24 $0B
    ld a, [bc]                                    ; $515B: $0A
    nop                                           ; $515C: $00
    ld e, $00                                     ; $515D: $1E $00
    jr nz, @+$47                                  ; $515F: $20 $45

    dec c                                         ; $5161: $0D
    ld [hl], b                                    ; $5162: $70
    ld d, c                                       ; $5163: $51
    ei                                            ; $5164: $FB
    nop                                           ; $5165: $00
    jr nz, jr_007_5186                            ; $5166: $20 $1E

    nop                                           ; $5168: $00
    jr nz, jr_007_51B0                            ; $5169: $20 $45

    dec c                                         ; $516B: $0D
    ld [hl], b                                    ; $516C: $70
    ld d, c                                       ; $516D: $51
    dec b                                         ; $516E: $05
    nop                                           ; $516F: $00
    rlca                                          ; $5170: $07
    ld [hl], $EF                                  ; $5171: $36 $EF
    nop                                           ; $5173: $00
    ld [hl-], a                                   ; $5174: $32
    rst RST_30                                    ; $5175: $F7
    ld [bc], a                                    ; $5176: $02
    ld sp, $04FF                                  ; $5177: $31 $FF $04
    dec l                                         ; $517A: $2D
    rlca                                          ; $517B: $07
    ld b, $2C                                     ; $517C: $06 $2C
    rrca                                          ; $517E: $0F
    ld [$073D], sp                                ; $517F: $08 $3D $07
    ld a, [bc]                                    ; $5182: $0A
    inc a                                         ; $5183: $3C
    rrca                                          ; $5184: $0F
    inc c                                         ; $5185: $0C

jr_007_5186:
    nop                                           ; $5186: $00
    nop                                           ; $5187: $00
    ld b, [hl]                                    ; $5188: $46
    dec c                                         ; $5189: $0D
    sub [hl]                                      ; $518A: $96
    ld d, c                                       ; $518B: $51
    ei                                            ; $518C: $FB
    db $10                                        ; $518D: $10
    jr nz, jr_007_5190                            ; $518E: $20 $00

jr_007_5190:
    ld b, [hl]                                    ; $5190: $46
    dec c                                         ; $5191: $0D
    sub [hl]                                      ; $5192: $96

jr_007_5193:
    ld d, c                                       ; $5193: $51
    rlca                                          ; $5194: $07
    db $10                                        ; $5195: $10
    ld b, $18                                     ; $5196: $06 $18
    rst RST_28                                    ; $5198: $EF
    nop                                           ; $5199: $00
    jr jr_007_5193                                ; $519A: $18 $F7

    ld [bc], a                                    ; $519C: $02
    ld d, $FF                                     ; $519D: $16 $FF
    inc b                                         ; $519F: $04
    jr nz, jr_007_51A9                            ; $51A0: $20 $07

    ld b, $22                                     ; $51A2: $06 $22
    rrca                                          ; $51A4: $0F
    ld [$FF26], sp                                ; $51A5: $08 $26 $FF
    ld a, [bc]                                    ; $51A8: $0A

jr_007_51A9:
    nop                                           ; $51A9: $00
    rra                                           ; $51AA: $1F
    nop                                           ; $51AB: $00
    ret nz                                        ; $51AC: $C0

    ld b, [hl]                                    ; $51AD: $46
    dec c                                         ; $51AE: $0D
    pop de                                        ; $51AF: $D1

jr_007_51B0:
    ld d, c                                       ; $51B0: $51
    db $FD                                        ; $51B1: $FD
    ld d, $20                                     ; $51B2: $16 $20
    rra                                           ; $51B4: $1F
    nop                                           ; $51B5: $00
    ret nz                                        ; $51B6: $C0

    ld b, [hl]                                    ; $51B7: $46
    dec c                                         ; $51B8: $0D
    pop de                                        ; $51B9: $D1
    ld d, c                                       ; $51BA: $51
    inc bc                                        ; $51BB: $03
    ld d, $40                                     ; $51BC: $16 $40
    rra                                           ; $51BE: $1F
    nop                                           ; $51BF: $00
    ret nz                                        ; $51C0: $C0

    ld b, [hl]                                    ; $51C1: $46
    dec c                                         ; $51C2: $0D
    pop de                                        ; $51C3: $D1
    ld d, c                                       ; $51C4: $51
    db $FD                                        ; $51C5: $FD
    db $EB                                        ; $51C6: $EB
    ld h, b                                       ; $51C7: $60
    rra                                           ; $51C8: $1F
    nop                                           ; $51C9: $00
    ret nz                                        ; $51CA: $C0

    ld b, [hl]                                    ; $51CB: $46
    dec c                                         ; $51CC: $0D
    pop de                                        ; $51CD: $D1
    ld d, c                                       ; $51CE: $51
    inc b                                         ; $51CF: $04
    db $EB                                        ; $51D0: $EB
    inc bc                                        ; $51D1: $03
    ld [$00F7], sp                                ; $51D2: $08 $F7 $00
    ld [$02FF], sp                                ; $51D5: $08 $FF $02
    ld [$0407], sp                                ; $51D8: $08 $07 $04
    nop                                           ; $51DB: $00
    jr nz, @+$49                                  ; $51DC: $20 $47

    dec c                                         ; $51DE: $0D
    ei                                            ; $51DF: $FB
    ld d, c                                       ; $51E0: $51
    db $FD                                        ; $51E1: $FD
    ld d, $20                                     ; $51E2: $16 $20
    jr nz, jr_007_522D                            ; $51E4: $20 $47

    dec c                                         ; $51E6: $0D
    ei                                            ; $51E7: $FB
    ld d, c                                       ; $51E8: $51
    inc bc                                        ; $51E9: $03
    ld d, $40                                     ; $51EA: $16 $40
    jr nz, jr_007_5235                            ; $51EC: $20 $47

    dec c                                         ; $51EE: $0D
    ei                                            ; $51EF: $FB
    ld d, c                                       ; $51F0: $51
    db $FD                                        ; $51F1: $FD
    db $EB                                        ; $51F2: $EB
    ld h, b                                       ; $51F3: $60
    jr nz, jr_007_523D                            ; $51F4: $20 $47

    dec c                                         ; $51F6: $0D
    ei                                            ; $51F7: $FB
    ld d, c                                       ; $51F8: $51
    inc b                                         ; $51F9: $04
    db $EB                                        ; $51FA: $EB
    inc b                                         ; $51FB: $04
    jr @-$07                                      ; $51FC: $18 $F7

    nop                                           ; $51FE: $00
    jr @+$01                                      ; $51FF: $18 $FF

    ld [bc], a                                    ; $5201: $02
    jr jr_007_520B                                ; $5202: $18 $07

    inc b                                         ; $5204: $04
    jr jr_007_5216                                ; $5205: $18 $0F

    ld b, $00                                     ; $5207: $06 $00
    rra                                           ; $5209: $1F
    nop                                           ; $520A: $00

jr_007_520B:
    and b                                         ; $520B: $A0
    ld b, a                                       ; $520C: $47
    dec c                                         ; $520D: $0D
    ld a, [hl-]                                   ; $520E: $3A
    ld d, d                                       ; $520F: $52
    rst RST_38                                    ; $5210: $FF
    dec d                                         ; $5211: $15
    jr nz, jr_007_5233                            ; $5212: $20 $1F

    nop                                           ; $5214: $00
    and b                                         ; $5215: $A0

jr_007_5216:
    ld b, a                                       ; $5216: $47
    dec c                                         ; $5217: $0D
    ld a, [hl-]                                   ; $5218: $3A
    ld d, d                                       ; $5219: $52
    ld bc, $2015                                  ; $521A: $01 $15 $20
    rra                                           ; $521D: $1F
    dec b                                         ; $521E: $05
    and b                                         ; $521F: $A0
    ld b, a                                       ; $5220: $47
    dec c                                         ; $5221: $0D
    ld a, [hl-]                                   ; $5222: $3A
    ld d, d                                       ; $5223: $52
    ld bc, $4015                                  ; $5224: $01 $15 $40
    rra                                           ; $5227: $1F
    nop                                           ; $5228: $00
    and b                                         ; $5229: $A0
    ld b, a                                       ; $522A: $47
    dec c                                         ; $522B: $0D
    ld a, [hl-]                                   ; $522C: $3A

jr_007_522D:
    ld d, d                                       ; $522D: $52
    rst RST_38                                    ; $522E: $FF
    db $EC                                        ; $522F: $EC
    ld h, b                                       ; $5230: $60
    rra                                           ; $5231: $1F
    nop                                           ; $5232: $00

jr_007_5233:
    and b                                         ; $5233: $A0
    ld b, a                                       ; $5234: $47

jr_007_5235:
    dec c                                         ; $5235: $0D
    ld a, [hl-]                                   ; $5236: $3A
    ld d, d                                       ; $5237: $52
    ld bc, $06EC                                  ; $5238: $01 $EC $06
    rla                                           ; $523B: $17
    rst RST_30                                    ; $523C: $F7

jr_007_523D:
    nop                                           ; $523D: $00
    jr @+$01                                      ; $523E: $18 $FF

    ld [bc], a                                    ; $5240: $02
    ld [$04FF], sp                                ; $5241: $08 $FF $04
    ld [de], a                                    ; $5244: $12
    rlca                                          ; $5245: $07
    ld b, $07                                     ; $5246: $06 $07
    rst RST_30                                    ; $5248: $F7
    ld [$0722], sp                                ; $5249: $08 $22 $07
    ld a, [bc]                                    ; $524C: $0A
    nop                                           ; $524D: $00
    rra                                           ; $524E: $1F
    nop                                           ; $524F: $00
    ld h, b                                       ; $5250: $60
    ld c, b                                       ; $5251: $48
    dec c                                         ; $5252: $0D
    ld d, a                                       ; $5253: $57
    ld d, d                                       ; $5254: $52
    rlca                                          ; $5255: $07
    ld a, [bc]                                    ; $5256: $0A
    add hl, bc                                    ; $5257: $09
    ld [hl+], a                                   ; $5258: $22
    rst RST_20                                    ; $5259: $E7
    nop                                           ; $525A: $00
    rra                                           ; $525B: $1F
    rst RST_28                                    ; $525C: $EF
    ld [bc], a                                    ; $525D: $02
    rra                                           ; $525E: $1F
    rst RST_30                                    ; $525F: $F7
    inc b                                         ; $5260: $04
    inc d                                         ; $5261: $14
    rst RST_38                                    ; $5262: $FF
    ld b, $2F                                     ; $5263: $06 $2F
    rst RST_28                                    ; $5265: $EF
    ld [$E732], sp                                ; $5266: $08 $32 $E7
    ld a, [bc]                                    ; $5269: $0A
    rrca                                          ; $526A: $0F
    rst RST_30                                    ; $526B: $F7
    inc c                                         ; $526C: $0C
    rrca                                          ; $526D: $0F
    rlca                                          ; $526E: $07
    ld c, $04                                     ; $526F: $0E $04
    rst RST_38                                    ; $5271: $FF
    stop                                          ; $5272: $10 $00
    dec e                                         ; $5274: $1D
    nop                                           ; $5275: $00
    add b                                         ; $5276: $80
    ld c, c                                       ; $5277: $49
    dec c                                         ; $5278: $0D
    ld a, l                                       ; $5279: $7D
    ld d, d                                       ; $527A: $52
    ei                                            ; $527B: $FB
    nop                                           ; $527C: $00
    rlca                                          ; $527D: $07
    inc l                                         ; $527E: $2C
    rst RST_30                                    ; $527F: $F7
    nop                                           ; $5280: $00
    ld l, $FF                                     ; $5281: $2E $FF
    ld [bc], a                                    ; $5283: $02
    add hl, hl                                    ; $5284: $29
    rlca                                          ; $5285: $07
    inc b                                         ; $5286: $04
    ld [hl-], a                                   ; $5287: $32
    rrca                                          ; $5288: $0F
    ld b, $3C                                     ; $5289: $06 $3C
    rst RST_30                                    ; $528B: $F7
    ld [$FF1E], sp                                ; $528C: $08 $1E $FF
    ld a, [bc]                                    ; $528F: $0A
    add hl, sp                                    ; $5290: $39
    rlca                                          ; $5291: $07
    inc c                                         ; $5292: $0C
    nop                                           ; $5293: $00
    ld e, $00                                     ; $5294: $1E $00
    ld h, b                                       ; $5296: $60
    ld c, d                                       ; $5297: $4A
    dec c                                         ; $5298: $0D
    or c                                          ; $5299: $B1
    ld d, d                                       ; $529A: $52
    db $FC                                        ; $529B: $FC
    nop                                           ; $529C: $00
    nop                                           ; $529D: $00
    rra                                           ; $529E: $1F
    nop                                           ; $529F: $00
    ld h, b                                       ; $52A0: $60
    ld c, d                                       ; $52A1: $4A
    dec c                                         ; $52A2: $0D
    or c                                          ; $52A3: $B1
    ld d, d                                       ; $52A4: $52
    ld hl, sp-$06                                 ; $52A5: $F8 $FA
    nop                                           ; $52A7: $00
    ld e, $05                                     ; $52A8: $1E $05
    ld h, b                                       ; $52AA: $60
    ld c, d                                       ; $52AB: $4A
    dec c                                         ; $52AC: $0D
    or c                                          ; $52AD: $B1
    ld d, d                                       ; $52AE: $52
    db $FC                                        ; $52AF: $FC
    nop                                           ; $52B0: $00
    rlca                                          ; $52B1: $07
    inc [hl]                                      ; $52B2: $34
    push af                                       ; $52B3: $F5
    nop                                           ; $52B4: $00
    dec l                                         ; $52B5: $2D
    db $FD                                        ; $52B6: $FD
    ld [bc], a                                    ; $52B7: $02
    dec l                                         ; $52B8: $2D
    dec b                                         ; $52B9: $05
    inc b                                         ; $52BA: $04
    jr nc, jr_007_52CA                            ; $52BB: $30 $0D

    ld b, $29                                     ; $52BD: $06 $29
    dec d                                         ; $52BF: $15
    ld [$FD3D], sp                                ; $52C0: $08 $3D $FD
    ld a, [bc]                                    ; $52C3: $0A
    dec a                                         ; $52C4: $3D
    dec b                                         ; $52C5: $05
    inc c                                         ; $52C6: $0C
    nop                                           ; $52C7: $00
    dec e                                         ; $52C8: $1D
    nop                                           ; $52C9: $00

jr_007_52CA:
    ld b, b                                       ; $52CA: $40
    ld c, a                                       ; $52CB: $4F
    dec c                                         ; $52CC: $0D
    pop de                                        ; $52CD: $D1
    ld d, d                                       ; $52CE: $52
    cp $00                                        ; $52CF: $FE $00

jr_007_52D1:
    inc b                                         ; $52D1: $04
    dec h                                         ; $52D2: $25
    rst RST_20                                    ; $52D3: $E7
    nop                                           ; $52D4: $00
    ld a, [hl+]                                   ; $52D5: $2A
    rst RST_28                                    ; $52D6: $EF
    ld [bc], a                                    ; $52D7: $02
    jr nc, jr_007_52D1                            ; $52D8: $30 $F7

    inc b                                         ; $52DA: $04
    jr nc, @+$01                                  ; $52DB: $30 $FF

    ld b, $00                                     ; $52DD: $06 $00
    ret nz                                        ; $52DF: $C0

jr_007_52E0:
    ld c, a                                       ; $52E0: $4F
    dec c                                         ; $52E1: $0D
    and $52                                       ; $52E2: $E6 $52
    cp $00                                        ; $52E4: $FE $00
    dec b                                         ; $52E6: $05
    jr nz, jr_007_52E0                            ; $52E7: $20 $F7

    nop                                           ; $52E9: $00
    jr nz, @+$01                                  ; $52EA: $20 $FF

    ld [bc], a                                    ; $52EC: $02
    jr nc, @+$09                                  ; $52ED: $30 $07

    inc b                                         ; $52EF: $04
    inc [hl]                                      ; $52F0: $34
    rrca                                          ; $52F1: $0F

jr_007_52F2:
    ld b, $38                                     ; $52F2: $06 $38
    rla                                           ; $52F4: $17
    ld [$1D00], sp                                ; $52F5: $08 $00 $1D
    ld hl, $5060                                  ; $52F8: $21 $60 $50
    dec c                                         ; $52FB: $0D
    nop                                           ; $52FC: $00

jr_007_52FD:
    ld d, e                                       ; $52FD: $53
    cp $00                                        ; $52FE: $FE $00
    inc b                                         ; $5300: $04
    jr z, jr_007_52F2                             ; $5301: $28 $EF

    nop                                           ; $5303: $00
    jr nc, jr_007_52FD                            ; $5304: $30 $F7

    ld [bc], a                                    ; $5306: $02
    jr nc, @+$01                                  ; $5307: $30 $FF

    inc b                                         ; $5309: $04
    inc h                                         ; $530A: $24
    rst RST_20                                    ; $530B: $E7
    ld b, $00                                     ; $530C: $06 $00
    jr nz, jr_007_5332                            ; $530E: $20 $22

    ldh [$FF50], a                                ; $5310: $E0 $50
    dec c                                         ; $5312: $0D
    rla                                           ; $5313: $17
    ld d, e                                       ; $5314: $53
    ld hl, sp+$00                                 ; $5315: $F8 $00
    inc bc                                        ; $5317: $03
    ld hl, $00E7                                  ; $5318: $21 $E7 $00

jr_007_531B:
    ld sp, $02E7                                  ; $531B: $31 $E7 $02
    jr nc, @-$0F                                  ; $531E: $30 $EF

    inc b                                         ; $5320: $04
    nop                                           ; $5321: $00
    ld b, b                                       ; $5322: $40
    ld d, c                                       ; $5323: $51
    dec c                                         ; $5324: $0D
    add hl, hl                                    ; $5325: $29

jr_007_5326:
    ld d, e                                       ; $5326: $53
    ld hl, sp+$00                                 ; $5327: $F8 $00

jr_007_5329:
    dec b                                         ; $5329: $05
    jr nz, jr_007_531B                            ; $532A: $20 $EF

    nop                                           ; $532C: $00
    jr nc, jr_007_5326                            ; $532D: $30 $F7

    ld [bc], a                                    ; $532F: $02
    jr nz, jr_007_5329                            ; $5330: $20 $F7

jr_007_5332:
    inc b                                         ; $5332: $04
    jr nc, @+$01                                  ; $5333: $30 $FF

    ld b, $34                                     ; $5335: $06 $34
    rlca                                          ; $5337: $07
    ld [$2000], sp                                ; $5338: $08 $00 $20
    nop                                           ; $533B: $00
    ldh [rHDMA1], a                               ; $533C: $E0 $51
    dec c                                         ; $533E: $0D
    ld c, l                                       ; $533F: $4D
    ld d, e                                       ; $5340: $53
    ld hl, sp+$00                                 ; $5341: $F8 $00

jr_007_5343:
    nop                                           ; $5343: $00
    jr nz, jr_007_5368                            ; $5344: $20 $22

    ldh [rHDMA1], a                               ; $5346: $E0 $51
    dec c                                         ; $5348: $0D
    ld c, l                                       ; $5349: $4D
    ld d, e                                       ; $534A: $53
    ld hl, sp+$00                                 ; $534B: $F8 $00
    inc bc                                        ; $534D: $03

jr_007_534E:
    rla                                           ; $534E: $17
    rst RST_20                                    ; $534F: $E7
    nop                                           ; $5350: $00

jr_007_5351:
    ld l, $E7                                     ; $5351: $2E $E7
    ld [bc], a                                    ; $5353: $02
    jr nc, @-$0F                                  ; $5354: $30 $EF

    inc b                                         ; $5356: $04
    nop                                           ; $5357: $00
    dec e                                         ; $5358: $1D
    inc hl                                        ; $5359: $23
    ld b, b                                       ; $535A: $40
    ld d, d                                       ; $535B: $52
    dec c                                         ; $535C: $0D
    ld h, c                                       ; $535D: $61
    ld d, e                                       ; $535E: $53
    ld [bc], a                                    ; $535F: $02
    dec b                                         ; $5360: $05
    ld a, [bc]                                    ; $5361: $0A
    jr z, jr_007_5343                             ; $5362: $28 $DF

    nop                                           ; $5364: $00
    jr z, jr_007_534E                             ; $5365: $28 $E7

    ld [bc], a                                    ; $5367: $02

jr_007_5368:
    jr jr_007_5351                                ; $5368: $18 $E7

    inc b                                         ; $536A: $04
    add hl, hl                                    ; $536B: $29
    rst RST_28                                    ; $536C: $EF
    ld b, $25                                     ; $536D: $06 $25
    rst RST_30                                    ; $536F: $F7
    ld [$FF26], sp                                ; $5370: $08 $26 $FF
    ld a, [bc]                                    ; $5373: $0A
    ld h, $07                                     ; $5374: $26 $07
    inc c                                         ; $5376: $0C
    dec hl                                        ; $5377: $2B
    rrca                                          ; $5378: $0F
    ld c, $19                                     ; $5379: $0E $19
    rst RST_28                                    ; $537B: $EF
    db $10                                        ; $537C: $10
    dec [hl]                                      ; $537D: $35
    rst RST_30                                    ; $537E: $F7
    ld [de], a                                    ; $537F: $12
    nop                                           ; $5380: $00
    add b                                         ; $5381: $80
    ld d, e                                       ; $5382: $53
    dec c                                         ; $5383: $0D
    adc b                                         ; $5384: $88

jr_007_5385:
    ld d, e                                       ; $5385: $53
    nop                                           ; $5386: $00
    nop                                           ; $5387: $00
    dec b                                         ; $5388: $05
    jr z, @-$0F                                   ; $5389: $28 $EF

    nop                                           ; $538B: $00
    jr z, jr_007_5385                             ; $538C: $28 $F7

    ld [bc], a                                    ; $538E: $02
    jr z, @+$01                                   ; $538F: $28 $FF

    inc b                                         ; $5391: $04
    jr z, jr_007_539B                             ; $5392: $28 $07

    ld b, $28                                     ; $5394: $06 $28
    rst RST_20                                    ; $5396: $E7
    ld [$1E00], sp                                ; $5397: $08 $00 $1E
    inc h                                         ; $539A: $24

jr_007_539B:
    jr nz, jr_007_53F1                            ; $539B: $20 $54

    dec c                                         ; $539D: $0D
    and d                                         ; $539E: $A2
    ld d, e                                       ; $539F: $53
    db $FC                                        ; $53A0: $FC
    nop                                           ; $53A1: $00
    rlca                                          ; $53A2: $07
    inc [hl]                                      ; $53A3: $34
    ld [$3300], a                                 ; $53A4: $EA $00 $33
    ldh a, [c]                                    ; $53A7: $F2
    ld [bc], a                                    ; $53A8: $02
    ld [hl-], a                                   ; $53A9: $32
    ld a, [$3004]                                 ; $53AA: $FA $04 $30
    ld [bc], a                                    ; $53AD: $02
    ld b, $2E                                     ; $53AE: $06 $2E
    ld a, [bc]                                    ; $53B0: $0A
    ld [$1227], sp                                ; $53B1: $08 $27 $12
    ld a, [bc]                                    ; $53B4: $0A
    ld a, $0A                                     ; $53B5: $3E $0A

jr_007_53B7:
    inc c                                         ; $53B7: $0C
    nop                                           ; $53B8: $00
    jr nz, jr_007_53BB                            ; $53B9: $20 $00

jr_007_53BB:
    nop                                           ; $53BB: $00
    ld d, l                                       ; $53BC: $55
    dec c                                         ; $53BD: $0D
    jp nz, $FC53                                  ; $53BE: $C2 $53 $FC

    nop                                           ; $53C1: $00
    dec b                                         ; $53C2: $05
    jr c, @-$17                                   ; $53C3: $38 $E7

    nop                                           ; $53C5: $00
    jr nc, jr_007_53B7                            ; $53C6: $30 $EF

    ld [bc], a                                    ; $53C8: $02
    ld l, $F7                                     ; $53C9: $2E $F7
    inc b                                         ; $53CB: $04
    ld [hl-], a                                   ; $53CC: $32
    rst RST_38                                    ; $53CD: $FF
    ld b, $3E                                     ; $53CE: $06 $3E

jr_007_53D0:
    rst RST_30                                    ; $53D0: $F7
    ld [$2000], sp                                ; $53D1: $08 $00 $20
    dec h                                         ; $53D4: $25
    and b                                         ; $53D5: $A0
    ld d, l                                       ; $53D6: $55
    dec c                                         ; $53D7: $0D
    call c, $FC53                                 ; $53D8: $DC $53 $FC

jr_007_53DB:
    nop                                           ; $53DB: $00
    dec b                                         ; $53DC: $05
    dec sp                                        ; $53DD: $3B
    db $DB                                        ; $53DE: $DB
    nop                                           ; $53DF: $00
    add hl, sp                                    ; $53E0: $39
    db $E3                                        ; $53E1: $E3
    ld [bc], a                                    ; $53E2: $02
    jr nc, jr_007_53D0                            ; $53E3: $30 $EB

    inc b                                         ; $53E5: $04
    jr nc, jr_007_53DB                            ; $53E6: $30 $F3

    ld b, $33                                     ; $53E8: $06 $33
    ei                                            ; $53EA: $FB
    ld [$1F00], sp                                ; $53EB: $08 $00 $1F
    ld h, $40                                     ; $53EE: $26 $40
    ld d, [hl]                                    ; $53F0: $56

jr_007_53F1:
    dec c                                         ; $53F1: $0D
    or $53                                        ; $53F2: $F6 $53
    nop                                           ; $53F4: $00
    add hl, bc                                    ; $53F5: $09
    dec bc                                        ; $53F6: $0B
    inc de                                        ; $53F7: $13
    rst RST_28                                    ; $53F8: $EF
    nop                                           ; $53F9: $00
    ld de, $02F7                                  ; $53FA: $11 $F7 $02
    ld [de], a                                    ; $53FD: $12
    rst RST_38                                    ; $53FE: $FF
    inc b                                         ; $53FF: $04
    add hl, de                                    ; $5400: $19
    rlca                                          ; $5401: $07
    ld b, $23                                     ; $5402: $06 $23
    rst RST_28                                    ; $5404: $EF
    ld [$F721], sp                                ; $5405: $08 $21 $F7
    ld a, [bc]                                    ; $5408: $0A
    ld [hl+], a                                   ; $5409: $22
    rst RST_38                                    ; $540A: $FF
    inc c                                         ; $540B: $0C
    add hl, hl                                    ; $540C: $29
    rlca                                          ; $540D: $07
    ld c, $33                                     ; $540E: $0E $33
    rst RST_28                                    ; $5410: $EF
    db $10                                        ; $5411: $10
    ld sp, $12F7                                  ; $5412: $31 $F7 $12
    ld [hl-], a                                   ; $5415: $32
    rst RST_38                                    ; $5416: $FF
    inc d                                         ; $5417: $14
    nop                                           ; $5418: $00
    dec e                                         ; $5419: $1D
    nop                                           ; $541A: $00
    and b                                         ; $541B: $A0
    ld d, a                                       ; $541C: $57
    dec c                                         ; $541D: $0D
    inc l                                         ; $541E: $2C
    ld d, h                                       ; $541F: $54
    nop                                           ; $5420: $00
    rrca                                          ; $5421: $0F
    nop                                           ; $5422: $00
    dec e                                         ; $5423: $1D
    add hl, hl                                    ; $5424: $29
    and b                                         ; $5425: $A0
    ld d, a                                       ; $5426: $57
    dec c                                         ; $5427: $0D
    inc l                                         ; $5428: $2C
    ld d, h                                       ; $5429: $54
    nop                                           ; $542A: $00
    rrca                                          ; $542B: $0F
    ld b, $25                                     ; $542C: $06 $25
    rst RST_20                                    ; $542E: $E7
    nop                                           ; $542F: $00
    rra                                           ; $5430: $1F
    rst RST_28                                    ; $5431: $EF
    ld [bc], a                                    ; $5432: $02
    ld e, $F7                                     ; $5433: $1E $F7
    inc b                                         ; $5435: $04
    inc hl                                        ; $5436: $23

jr_007_5437:
    rst RST_38                                    ; $5437: $FF
    ld b, $21                                     ; $5438: $06 $21
    rlca                                          ; $543A: $07
    ld [$0F21], sp                                ; $543B: $08 $21 $0F
    ld a, [bc]                                    ; $543E: $0A
    nop                                           ; $543F: $00
    dec e                                         ; $5440: $1D
    nop                                           ; $5441: $00

jr_007_5442:
    ld h, b                                       ; $5442: $60
    ld e, b                                       ; $5443: $58
    dec c                                         ; $5444: $0D
    ld c, c                                       ; $5445: $49
    ld d, h                                       ; $5446: $54
    inc bc                                        ; $5447: $03
    nop                                           ; $5448: $00
    inc b                                         ; $5449: $04
    jr nz, jr_007_5437                            ; $544A: $20 $EB

    nop                                           ; $544C: $00
    jr nz, jr_007_5442                            ; $544D: $20 $F3

jr_007_544F:
    ld [bc], a                                    ; $544F: $02
    dec de                                        ; $5450: $1B
    db $E3                                        ; $5451: $E3
    inc b                                         ; $5452: $04
    db $10                                        ; $5453: $10
    db $EB                                        ; $5454: $EB
    ld b, $00                                     ; $5455: $06 $00
    ldh [$FF58], a                                ; $5457: $E0 $58
    dec c                                         ; $5459: $0D

jr_007_545A:
    ld e, [hl]                                    ; $545A: $5E
    ld d, h                                       ; $545B: $54
    inc bc                                        ; $545C: $03
    nop                                           ; $545D: $00
    dec b                                         ; $545E: $05
    jr nc, jr_007_544F                            ; $545F: $30 $EE

    nop                                           ; $5461: $00

jr_007_5462:
    jr nc, jr_007_545A                            ; $5462: $30 $F6

    ld [bc], a                                    ; $5464: $02
    ld a, [hl+]                                   ; $5465: $2A
    cp $04                                        ; $5466: $FE $04
    ld a, [hl-]                                   ; $5468: $3A
    cp $06                                        ; $5469: $FE $06
    inc a                                         ; $546B: $3C
    ld b, $08                                     ; $546C: $06 $08
    nop                                           ; $546E: $00
    dec e                                         ; $546F: $1D
    nop                                           ; $5470: $00
    add b                                         ; $5471: $80
    ld e, c                                       ; $5472: $59
    dec c                                         ; $5473: $0D
    ld a, b                                       ; $5474: $78
    ld d, h                                       ; $5475: $54
    inc bc                                        ; $5476: $03
    nop                                           ; $5477: $00

jr_007_5478:
    ld a, [bc]                                    ; $5478: $0A
    jr nz, jr_007_5462                            ; $5479: $20 $E7

    nop                                           ; $547B: $00
    jr nz, @-$0F                                  ; $547C: $20 $EF

    ld [bc], a                                    ; $547E: $02
    jr nz, jr_007_5478                            ; $547F: $20 $F7

    inc b                                         ; $5481: $04
    jr nz, @+$01                                  ; $5482: $20 $FF

    ld b, $30                                     ; $5484: $06 $30
    db $EC                                        ; $5486: $EC
    ld [$F430], sp                                ; $5487: $08 $30 $F4
    ld a, [bc]                                    ; $548A: $0A
    jr nc, @-$02                                  ; $548B: $30 $FC

    inc c                                         ; $548D: $0C
    jr nc, jr_007_5494                            ; $548E: $30 $04

    ld c, $10                                     ; $5490: $0E $10
    rst RST_20                                    ; $5492: $E7
    db $10                                        ; $5493: $10

jr_007_5494:
    db $10                                        ; $5494: $10
    rst RST_28                                    ; $5495: $EF
    ld [de], a                                    ; $5496: $12
    nop                                           ; $5497: $00
    ld e, $00                                     ; $5498: $1E $00
    ret nz                                        ; $549A: $C0

jr_007_549B:
    ld e, d                                       ; $549B: $5A
    dec c                                         ; $549C: $0D
    and c                                         ; $549D: $A1
    ld d, h                                       ; $549E: $54
    db $FD                                        ; $549F: $FD
    nop                                           ; $54A0: $00
    inc b                                         ; $54A1: $04
    jr nc, jr_007_549B                            ; $54A2: $30 $F7

    nop                                           ; $54A4: $00
    cpl                                           ; $54A5: $2F
    rst RST_38                                    ; $54A6: $FF
    ld [bc], a                                    ; $54A7: $02
    ld [hl-], a                                   ; $54A8: $32
    rlca                                          ; $54A9: $07
    inc b                                         ; $54AA: $04
    ccf                                           ; $54AB: $3F
    rst RST_38                                    ; $54AC: $FF
    ld b, $00                                     ; $54AD: $06 $00
    ld b, b                                       ; $54AF: $40
    ld e, e                                       ; $54B0: $5B
    dec c                                         ; $54B1: $0D
    or [hl]                                       ; $54B2: $B6
    ld d, h                                       ; $54B3: $54
    db $FD                                        ; $54B4: $FD
    nop                                           ; $54B5: $00
    ld [bc], a                                    ; $54B6: $02
    add hl, hl                                    ; $54B7: $29
    rrca                                          ; $54B8: $0F
    nop                                           ; $54B9: $00
    add hl, sp                                    ; $54BA: $39
    rrca                                          ; $54BB: $0F
    ld [bc], a                                    ; $54BC: $02
    nop                                           ; $54BD: $00
    add b                                         ; $54BE: $80
    ld e, e                                       ; $54BF: $5B
    dec c                                         ; $54C0: $0D
    push bc                                       ; $54C1: $C5
    ld d, h                                       ; $54C2: $54
    db $FD                                        ; $54C3: $FD
    nop                                           ; $54C4: $00
    ld [bc], a                                    ; $54C5: $02
    dec h                                         ; $54C6: $25
    rrca                                          ; $54C7: $0F
    nop                                           ; $54C8: $00
    dec [hl]                                      ; $54C9: $35
    rrca                                          ; $54CA: $0F
    ld [bc], a                                    ; $54CB: $02
    nop                                           ; $54CC: $00
    ret nz                                        ; $54CD: $C0

    ld e, e                                       ; $54CE: $5B

jr_007_54CF:
    dec c                                         ; $54CF: $0D
    call nc, $FD54                                ; $54D0: $D4 $54 $FD
    nop                                           ; $54D3: $00
    ld [bc], a                                    ; $54D4: $02
    add hl, hl                                    ; $54D5: $29
    rrca                                          ; $54D6: $0F
    nop                                           ; $54D7: $00
    add hl, sp                                    ; $54D8: $39
    rrca                                          ; $54D9: $0F
    ld [bc], a                                    ; $54DA: $02
    nop                                           ; $54DB: $00
    dec e                                         ; $54DC: $1D
    nop                                           ; $54DD: $00
    ret nz                                        ; $54DE: $C0

    ld e, h                                       ; $54DF: $5C
    dec c                                         ; $54E0: $0D
    push hl                                       ; $54E1: $E5
    ld d, h                                       ; $54E2: $54
    inc bc                                        ; $54E3: $03
    nop                                           ; $54E4: $00
    inc c                                         ; $54E5: $0C
    jr nz, jr_007_54CF                            ; $54E6: $20 $E7

    nop                                           ; $54E8: $00
    dec de                                        ; $54E9: $1B
    rst RST_28                                    ; $54EA: $EF
    ld [bc], a                                    ; $54EB: $02
    ld hl, $04F7                                  ; $54EC: $21 $F7 $04
    jr z, @+$01                                   ; $54EF: $28 $FF

    ld b, $30                                     ; $54F1: $06 $30
    rst RST_20                                    ; $54F3: $E7
    ld [$EF2B], sp                                ; $54F4: $08 $2B $EF
    ld a, [bc]                                    ; $54F7: $0A
    ld sp, $0CF7                                  ; $54F8: $31 $F7 $0C
    jr c, @+$01                                   ; $54FB: $38 $FF

    ld c, $31                                     ; $54FD: $0E $31
    rst RST_18                                    ; $54FF: $DF
    db $10                                        ; $5500: $10
    jr nc, @+$09                                  ; $5501: $30 $07

    ld [de], a                                    ; $5503: $12
    ld h, $0F                                     ; $5504: $26 $0F
    inc d                                         ; $5506: $14
    dec sp                                        ; $5507: $3B
    rst RST_28                                    ; $5508: $EF
    ld d, $00                                     ; $5509: $16 $00
    dec e                                         ; $550B: $1D
    nop                                           ; $550C: $00
    nop                                           ; $550D: $00
    ld e, h                                       ; $550E: $5C
    dec c                                         ; $550F: $0D
    inc d                                         ; $5510: $14
    ld d, l                                       ; $5511: $55
    ld [bc], a                                    ; $5512: $02
    nop                                           ; $5513: $00
    ld b, $23                                     ; $5514: $06 $23
    xor $00                                       ; $5516: $EE $00
    inc hl                                        ; $5518: $23
    or $02                                        ; $5519: $F6 $02
    inc sp                                        ; $551B: $33
    ldh a, [rDIV]                                 ; $551C: $F0 $04
    inc sp                                        ; $551E: $33
    ld hl, sp+$06                                 ; $551F: $F8 $06
    ld a, [hl+]                                   ; $5521: $2A
    cp $08                                        ; $5522: $FE $08
    jr nc, jr_007_5528                            ; $5524: $30 $02

    ld a, [bc]                                    ; $5526: $0A
    nop                                           ; $5527: $00

jr_007_5528:
    dec e                                         ; $5528: $1D
    nop                                           ; $5529: $00
    ld b, b                                       ; $552A: $40
    ld c, e                                       ; $552B: $4B
    dec c                                         ; $552C: $0D
    ld sp, $FD55                                  ; $552D: $31 $55 $FD
    nop                                           ; $5530: $00
    rlca                                          ; $5531: $07
    dec h                                         ; $5532: $25
    rst RST_30                                    ; $5533: $F7
    nop                                           ; $5534: $00
    ld a, [hl+]                                   ; $5535: $2A
    rst RST_38                                    ; $5536: $FF
    ld [bc], a                                    ; $5537: $02
    dec hl                                        ; $5538: $2B
    rlca                                          ; $5539: $07
    inc b                                         ; $553A: $04
    jr z, jr_007_554C                             ; $553B: $28 $0F

    ld b, $1A                                     ; $553D: $06 $1A
    rst RST_38                                    ; $553F: $FF
    ld [$063B], sp                                ; $5540: $08 $3B $06
    ld a, [bc]                                    ; $5543: $0A
    dec d                                         ; $5544: $15
    rst RST_30                                    ; $5545: $F7
    inc c                                         ; $5546: $0C
    nop                                           ; $5547: $00
    dec e                                         ; $5548: $1D
    nop                                           ; $5549: $00
    jr nz, @+$4E                                  ; $554A: $20 $4C

jr_007_554C:
    dec c                                         ; $554C: $0D
    ld l, a                                       ; $554D: $6F
    ld d, l                                       ; $554E: $55
    db $FD                                        ; $554F: $FD
    nop                                           ; $5550: $00
    jr nz, @+$1F                                  ; $5551: $20 $1D

    nop                                           ; $5553: $00
    jr nz, jr_007_55A2                            ; $5554: $20 $4C

    dec c                                         ; $5556: $0D
    ld l, a                                       ; $5557: $6F
    ld d, l                                       ; $5558: $55
    inc bc                                        ; $5559: $03
    nop                                           ; $555A: $00
    ld b, b                                       ; $555B: $40
    dec e                                         ; $555C: $1D
    nop                                           ; $555D: $00
    jr nz, jr_007_55AC                            ; $555E: $20 $4C

    dec c                                         ; $5560: $0D
    ld l, a                                       ; $5561: $6F
    ld d, l                                       ; $5562: $55
    db $FD                                        ; $5563: $FD
    dec bc                                        ; $5564: $0B
    ld h, b                                       ; $5565: $60
    dec e                                         ; $5566: $1D
    nop                                           ; $5567: $00
    jr nz, jr_007_55B6                            ; $5568: $20 $4C

    dec c                                         ; $556A: $0D
    ld l, a                                       ; $556B: $6F
    ld d, l                                       ; $556C: $55
    inc bc                                        ; $556D: $03
    dec bc                                        ; $556E: $0B
    ld b, $30                                     ; $556F: $06 $30
    ld hl, sp+$00                                 ; $5571: $F8 $00
    jr nc, jr_007_5575                            ; $5573: $30 $00

jr_007_5575:
    ld [bc], a                                    ; $5575: $02
    jr nz, jr_007_5579                            ; $5576: $20 $01

    inc b                                         ; $5578: $04

jr_007_5579:
    jr nc, jr_007_5583                            ; $5579: $30 $08

    ld b, $20                                     ; $557B: $06 $20
    add hl, bc                                    ; $557D: $09
    ld [$F920], sp                                ; $557E: $08 $20 $F9
    ld a, [bc]                                    ; $5581: $0A
    nop                                           ; $5582: $00

jr_007_5583:
    ld e, $00                                     ; $5583: $1E $00
    ldh [$FF4C], a                                ; $5585: $E0 $4C
    dec c                                         ; $5587: $0D
    adc h                                         ; $5588: $8C
    ld d, l                                       ; $5589: $55
    db $FC                                        ; $558A: $FC
    nop                                           ; $558B: $00
    dec b                                         ; $558C: $05
    jr nc, @-$09                                  ; $558D: $30 $F5

    nop                                           ; $558F: $00
    ld l, $FD                                     ; $5590: $2E $FD
    ld [bc], a                                    ; $5592: $02
    inc l                                         ; $5593: $2C
    dec b                                         ; $5594: $05
    inc b                                         ; $5595: $04
    ld sp, $060D                                  ; $5596: $31 $0D $06
    ld a, $FD                                     ; $5599: $3E $FD
    ld [$1E00], sp                                ; $559B: $08 $00 $1E
    nop                                           ; $559E: $00
    add b                                         ; $559F: $80
    ld c, l                                       ; $55A0: $4D
    dec c                                         ; $55A1: $0D

jr_007_55A2:
    cp d                                          ; $55A2: $BA
    ld d, l                                       ; $55A3: $55
    rst RST_30                                    ; $55A4: $F7
    inc de                                        ; $55A5: $13
    jr nz, jr_007_55C6                            ; $55A6: $20 $1E

    nop                                           ; $55A8: $00
    add b                                         ; $55A9: $80
    ld c, l                                       ; $55AA: $4D
    dec c                                         ; $55AB: $0D

jr_007_55AC:
    cp d                                          ; $55AC: $BA
    ld d, l                                       ; $55AD: $55
    add hl, bc                                    ; $55AE: $09
    inc de                                        ; $55AF: $13
    ld h, b                                       ; $55B0: $60
    rra                                           ; $55B1: $1F
    nop                                           ; $55B2: $00
    add b                                         ; $55B3: $80
    ld c, l                                       ; $55B4: $4D
    dec c                                         ; $55B5: $0D

jr_007_55B6:
    cp d                                          ; $55B6: $BA
    ld d, l                                       ; $55B7: $55
    dec bc                                        ; $55B8: $0B
    db $F4                                        ; $55B9: $F4
    ld [$1419], sp                                ; $55BA: $08 $19 $14
    nop                                           ; $55BD: $00
    dec de                                        ; $55BE: $1B
    inc c                                         ; $55BF: $0C
    ld [bc], a                                    ; $55C0: $02
    dec bc                                        ; $55C1: $0B
    inc c                                         ; $55C2: $0C
    inc b                                         ; $55C3: $04
    inc hl                                        ; $55C4: $23
    inc b                                         ; $55C5: $04

jr_007_55C6:
    ld b, $13                                     ; $55C6: $06 $13
    inc b                                         ; $55C8: $04
    ld [$FC25], sp                                ; $55C9: $08 $25 $FC
    ld a, [bc]                                    ; $55CC: $0A
    dec d                                         ; $55CD: $15
    db $FC                                        ; $55CE: $FC
    inc c                                         ; $55CF: $0C
    add hl, hl                                    ; $55D0: $29
    db $F4                                        ; $55D1: $F4
    ld c, $00                                     ; $55D2: $0E $00
    ld e, $00                                     ; $55D4: $1E $00
    add b                                         ; $55D6: $80
    ld c, [hl]                                    ; $55D7: $4E
    dec c                                         ; $55D8: $0D
    rst RST_20                                    ; $55D9: $E7
    ld d, l                                       ; $55DA: $55
    ld sp, hl                                     ; $55DB: $F9
    ld [bc], a                                    ; $55DC: $02
    jr nz, jr_007_55FD                            ; $55DD: $20 $1E

    nop                                           ; $55DF: $00
    add b                                         ; $55E0: $80
    ld c, [hl]                                    ; $55E1: $4E
    dec c                                         ; $55E2: $0D
    rst RST_20                                    ; $55E3: $E7
    ld d, l                                       ; $55E4: $55
    rlca                                          ; $55E5: $07
    ld [bc], a                                    ; $55E6: $02
    ld b, $3B                                     ; $55E7: $06 $3B
    rst RST_28                                    ; $55E9: $EF
    nop                                           ; $55EA: $00
    dec [hl]                                      ; $55EB: $35
    rst RST_30                                    ; $55EC: $F7
    ld [bc], a                                    ; $55ED: $02
    inc [hl]                                      ; $55EE: $34
    rst RST_38                                    ; $55EF: $FF
    inc b                                         ; $55F0: $04
    ld [hl-], a                                   ; $55F1: $32
    rlca                                          ; $55F2: $07
    ld b, $32                                     ; $55F3: $06 $32
    rrca                                          ; $55F5: $0F
    ld [$1736], sp                                ; $55F6: $08 $36 $17
    ld a, [bc]                                    ; $55F9: $0A
    nop                                           ; $55FA: $00
    dec e                                         ; $55FB: $1D
    daa                                           ; $55FC: $27

jr_007_55FD:
    ld b, b                                       ; $55FD: $40
    ld e, [hl]                                    ; $55FE: $5E
    dec c                                         ; $55FF: $0D
    inc b                                         ; $5600: $04
    ld d, [hl]                                    ; $5601: $56
    rrca                                          ; $5602: $0F
    dec bc                                        ; $5603: $0B
    ld a, [bc]                                    ; $5604: $0A
    ld a, [de]                                    ; $5605: $1A
    rst RST_18                                    ; $5606: $DF
    nop                                           ; $5607: $00
    ld a, [hl+]                                   ; $5608: $2A
    rst RST_18                                    ; $5609: $DF
    ld [bc], a                                    ; $560A: $02
    add hl, hl                                    ; $560B: $29
    rst RST_20                                    ; $560C: $E7
    inc b                                         ; $560D: $04
    add hl, de                                    ; $560E: $19
    rst RST_20                                    ; $560F: $E7

jr_007_5610:
    ld b, $1A                                     ; $5610: $06 $1A
    rst RST_28                                    ; $5612: $EF
    ld [$EF2A], sp                                ; $5613: $08 $2A $EF
    ld a, [bc]                                    ; $5616: $0A
    ld [hl+], a                                   ; $5617: $22
    rst RST_30                                    ; $5618: $F7
    inc c                                         ; $5619: $0C
    ld [hl-], a                                   ; $561A: $32
    rst RST_30                                    ; $561B: $F7
    ld c, $1D                                     ; $561C: $0E $1D
    rst RST_38                                    ; $561E: $FF
    db $10                                        ; $561F: $10
    add hl, sp                                    ; $5620: $39
    rst RST_20                                    ; $5621: $E7
    ld [de], a                                    ; $5622: $12
    nop                                           ; $5623: $00
    dec e                                         ; $5624: $1D
    daa                                           ; $5625: $27
    add b                                         ; $5626: $80
    ld e, a                                       ; $5627: $5F
    dec c                                         ; $5628: $0D
    dec l                                         ; $5629: $2D
    ld d, [hl]                                    ; $562A: $56
    inc c                                         ; $562B: $0C
    dec bc                                        ; $562C: $0B
    ld a, [bc]                                    ; $562D: $0A
    inc hl                                        ; $562E: $23
    rst RST_18                                    ; $562F: $DF
    nop                                           ; $5630: $00
    dec de                                        ; $5631: $1B
    rst RST_20                                    ; $5632: $E7
    ld [bc], a                                    ; $5633: $02
    dec hl                                        ; $5634: $2B
    rst RST_20                                    ; $5635: $E7
    inc b                                         ; $5636: $04
    dec de                                        ; $5637: $1B
    rst RST_28                                    ; $5638: $EF
    ld b, $2B                                     ; $5639: $06 $2B
    rst RST_28                                    ; $563B: $EF
    ld [$F71B], sp                                ; $563C: $08 $1B $F7
    ld a, [bc]                                    ; $563F: $0A
    dec hl                                        ; $5640: $2B
    rst RST_30                                    ; $5641: $F7
    inc c                                         ; $5642: $0C
    inc hl                                        ; $5643: $23
    rst RST_38                                    ; $5644: $FF
    ld c, $23                                     ; $5645: $0E $23
    rlca                                          ; $5647: $07
    db $10                                        ; $5648: $10
    ld a, [de]                                    ; $5649: $1A
    rrca                                          ; $564A: $0F
    ld [de], a                                    ; $564B: $12
    nop                                           ; $564C: $00
    dec e                                         ; $564D: $1D
    jr z, jr_007_5670                             ; $564E: $28 $20

    ld h, e                                       ; $5650: $63
    dec c                                         ; $5651: $0D
    ld l, d                                       ; $5652: $6A
    ld d, [hl]                                    ; $5653: $56
    dec bc                                        ; $5654: $0B
    inc bc                                        ; $5655: $03
    ld b, b                                       ; $5656: $40
    dec e                                         ; $5657: $1D
    ld a, [hl+]                                   ; $5658: $2A
    jr nz, jr_007_56BE                            ; $5659: $20 $63

    dec c                                         ; $565B: $0D
    ld l, d                                       ; $565C: $6A
    ld d, [hl]                                    ; $565D: $56
    dec bc                                        ; $565E: $0B
    rst RST_30                                    ; $565F: $F7
    jr nz, jr_007_567F                            ; $5660: $20 $1D

    add sp, $20                                   ; $5662: $E8 $20
    ld h, e                                       ; $5664: $63
    dec c                                         ; $5665: $0D
    ld l, d                                       ; $5666: $6A
    ld d, [hl]                                    ; $5667: $56
    push af                                       ; $5668: $F5
    inc bc                                        ; $5669: $03
    dec bc                                        ; $566A: $0B
    inc de                                        ; $566B: $13
    rst RST_18                                    ; $566C: $DF
    nop                                           ; $566D: $00
    ld d, $E7                                     ; $566E: $16 $E7

jr_007_5670:
    ld [bc], a                                    ; $5670: $02
    rla                                           ; $5671: $17
    rst RST_28                                    ; $5672: $EF
    inc b                                         ; $5673: $04
    ld a, [de]                                    ; $5674: $1A
    rst RST_30                                    ; $5675: $F7
    ld b, $23                                     ; $5676: $06 $23
    rst RST_18                                    ; $5678: $DF
    ld [$E726], sp                                ; $5679: $08 $26 $E7
    ld a, [bc]                                    ; $567C: $0A
    daa                                           ; $567D: $27
    rst RST_28                                    ; $567E: $EF

jr_007_567F:
    inc c                                         ; $567F: $0C
    ld a, [hl+]                                   ; $5680: $2A
    rst RST_30                                    ; $5681: $F7
    ld c, $24                                     ; $5682: $0E $24
    rst RST_38                                    ; $5684: $FF
    db $10                                        ; $5685: $10
    inc [hl]                                      ; $5686: $34
    rst RST_38                                    ; $5687: $FF
    ld [de], a                                    ; $5688: $12
    ld [hl-], a                                   ; $5689: $32
    rlca                                          ; $568A: $07
    inc d                                         ; $568B: $14
    nop                                           ; $568C: $00
    dec e                                         ; $568D: $1D
    jr z, jr_007_5610                             ; $568E: $28 $80

    ld h, h                                       ; $5690: $64
    dec c                                         ; $5691: $0D
    or h                                          ; $5692: $B4
    ld d, [hl]                                    ; $5693: $56
    dec bc                                        ; $5694: $0B
    nop                                           ; $5695: $00
    jr nz, @+$1F                                  ; $5696: $20 $1D

    add sp, -$80                                  ; $5698: $E8 $80
    ld h, h                                       ; $569A: $64
    dec c                                         ; $569B: $0D
    or h                                          ; $569C: $B4
    ld d, [hl]                                    ; $569D: $56
    push af                                       ; $569E: $F5
    nop                                           ; $569F: $00
    ld b, b                                       ; $56A0: $40
    dec e                                         ; $56A1: $1D
    ld a, [hl+]                                   ; $56A2: $2A
    add b                                         ; $56A3: $80
    ld h, h                                       ; $56A4: $64
    dec c                                         ; $56A5: $0D
    or h                                          ; $56A6: $B4
    ld d, [hl]                                    ; $56A7: $56
    dec bc                                        ; $56A8: $0B
    ld sp, hl                                     ; $56A9: $F9
    ld h, b                                       ; $56AA: $60
    dec e                                         ; $56AB: $1D
    jp hl                                         ; $56AC: $E9


    add b                                         ; $56AD: $80
    ld h, h                                       ; $56AE: $64
    dec c                                         ; $56AF: $0D

jr_007_56B0:
    or h                                          ; $56B0: $B4
    ld d, [hl]                                    ; $56B1: $56
    push af                                       ; $56B2: $F5
    ld sp, hl                                     ; $56B3: $F9
    ld c, $19                                     ; $56B4: $0E $19
    rst RST_18                                    ; $56B6: $DF
    nop                                           ; $56B7: $00
    db $10                                        ; $56B8: $10
    rst RST_20                                    ; $56B9: $E7
    ld [bc], a                                    ; $56BA: $02

jr_007_56BB:
    db $10                                        ; $56BB: $10

jr_007_56BC:
    rst RST_28                                    ; $56BC: $EF
    inc b                                         ; $56BD: $04

jr_007_56BE:
    inc e                                         ; $56BE: $1C
    rst RST_30                                    ; $56BF: $F7
    ld b, $20                                     ; $56C0: $06 $20
    rst RST_38                                    ; $56C2: $FF
    ld [$DF29], sp                                ; $56C3: $08 $29 $DF
    ld a, [bc]                                    ; $56C6: $0A

jr_007_56C7:
    jr nz, jr_007_56B0                            ; $56C7: $20 $E7

    inc c                                         ; $56C9: $0C
    jr nz, jr_007_56BB                            ; $56CA: $20 $EF

    ld c, $2C                                     ; $56CC: $0E $2C
    rst RST_30                                    ; $56CE: $F7
    db $10                                        ; $56CF: $10
    jr nc, @+$01                                  ; $56D0: $30 $FF

    ld [de], a                                    ; $56D2: $12
    jr nc, jr_007_56BC                            ; $56D3: $30 $E7

    inc d                                         ; $56D5: $14
    jr nc, jr_007_56C7                            ; $56D6: $30 $EF

    ld d, $39                                     ; $56D8: $16 $39
    rlca                                          ; $56DA: $07
    jr jr_007_5719                                ; $56DB: $18 $3C

    rst RST_30                                    ; $56DD: $F7
    ld a, [de]                                    ; $56DE: $1A
    nop                                           ; $56DF: $00
    dec e                                         ; $56E0: $1D
    add hl, hl                                    ; $56E1: $29
    ld b, b                                       ; $56E2: $40
    ld h, [hl]                                    ; $56E3: $66

jr_007_56E4:
    dec c                                         ; $56E4: $0D
    jp hl                                         ; $56E5: $E9


    ld d, [hl]                                    ; $56E6: $56
    inc bc                                        ; $56E7: $03
    nop                                           ; $56E8: $00
    ld [bc], a                                    ; $56E9: $02

jr_007_56EA:
    jr nz, @-$11                                  ; $56EA: $20 $ED

    nop                                           ; $56EC: $00
    jr nz, jr_007_56E4                            ; $56ED: $20 $F5

    ld [bc], a                                    ; $56EF: $02
    nop                                           ; $56F0: $00
    dec e                                         ; $56F1: $1D
    nop                                           ; $56F2: $00
    add b                                         ; $56F3: $80
    ld h, [hl]                                    ; $56F4: $66

jr_007_56F5:
    dec c                                         ; $56F5: $0D
    ld a, [$0056]                                 ; $56F6: $FA $56 $00
    nop                                           ; $56F9: $00
    rlca                                          ; $56FA: $07
    jr nc, jr_007_56EA                            ; $56FB: $30 $ED

    nop                                           ; $56FD: $00
    jr nc, jr_007_56F5                            ; $56FE: $30 $F5

jr_007_5700:
    ld [bc], a                                    ; $5700: $02
    jr nc, jr_007_5700                            ; $5701: $30 $FD

    inc b                                         ; $5703: $04
    jr nc, @+$07                                  ; $5704: $30 $05

    ld b, $22                                     ; $5706: $06 $22
    dec bc                                        ; $5708: $0B
    ld [$F320], sp                                ; $5709: $08 $20 $F3
    ld a, [bc]                                    ; $570C: $0A
    ld a, [hl-]                                   ; $570D: $3A
    dec c                                         ; $570E: $0D
    inc c                                         ; $570F: $0C
    nop                                           ; $5710: $00
    dec e                                         ; $5711: $1D
    or $60                                        ; $5712: $F6 $60
    ld h, a                                       ; $5714: $67
    dec c                                         ; $5715: $0D
    ld a, [de]                                    ; $5716: $1A
    ld d, a                                       ; $5717: $57
    nop                                           ; $5718: $00

jr_007_5719:
    nop                                           ; $5719: $00

jr_007_571A:
    rlca                                          ; $571A: $07
    cpl                                           ; $571B: $2F
    rst RST_20                                    ; $571C: $E7
    nop                                           ; $571D: $00
    cpl                                           ; $571E: $2F
    rst RST_28                                    ; $571F: $EF
    ld [bc], a                                    ; $5720: $02
    jr nc, jr_007_571A                            ; $5721: $30 $F7

    inc b                                         ; $5723: $04
    jr nc, @+$01                                  ; $5724: $30 $FF

    ld b, $30                                     ; $5726: $06 $30
    rlca                                          ; $5728: $07
    ld [$0120], sp                                ; $5729: $08 $20 $01
    ld a, [bc]                                    ; $572C: $0A
    jr nz, jr_007_5738                            ; $572D: $20 $09

    inc c                                         ; $572F: $0C
    nop                                           ; $5730: $00
    dec e                                         ; $5731: $1D
    nop                                           ; $5732: $00
    ld b, b                                       ; $5733: $40
    ld l, b                                       ; $5734: $68

jr_007_5735:
    dec c                                         ; $5735: $0D
    ld a, [hl-]                                   ; $5736: $3A
    ld d, a                                       ; $5737: $57

jr_007_5738:
    nop                                           ; $5738: $00
    nop                                           ; $5739: $00
    ld [$ED30], sp                                ; $573A: $08 $30 $ED
    nop                                           ; $573D: $00
    jr nc, jr_007_5735                            ; $573E: $30 $F5

jr_007_5740:
    ld [bc], a                                    ; $5740: $02
    jr nc, jr_007_5740                            ; $5741: $30 $FD

    inc b                                         ; $5743: $04
    jr nc, @+$07                                  ; $5744: $30 $05

    ld b, $20                                     ; $5746: $06 $20
    db $ED                                        ; $5748: $ED
    ld [$0620], sp                                ; $5749: $08 $20 $06
    ld a, [bc]                                    ; $574C: $0A
    ld e, $0E                                     ; $574D: $1E $0E
    inc c                                         ; $574F: $0C
    ld a, [hl-]                                   ; $5750: $3A
    dec c                                         ; $5751: $0D
    ld c, $1C                                     ; $5752: $0E $1C
    ld e, h                                       ; $5754: $5C
    inc d                                         ; $5755: $14
    ld h, [hl]                                    ; $5756: $66
    rrca                                          ; $5757: $0F
    ld h, d                                       ; $5758: $62
    ld [hl-], a                                   ; $5759: $32
    ld h, d                                       ; $575A: $62
    ld b, h                                       ; $575B: $44
    ld h, d                                       ; $575C: $62
    ld [hl-], a                                   ; $575D: $32
    ld h, d                                       ; $575E: $62
    rst RST_38                                    ; $575F: $FF
    rst RST_38                                    ; $5760: $FF
    di                                            ; $5761: $F3
    ld e, d                                       ; $5762: $5A
    rst RST_38                                    ; $5763: $FF
    rst RST_38                                    ; $5764: $FF
    rra                                           ; $5765: $1F
    ld e, e                                       ; $5766: $5B
    rst RST_38                                    ; $5767: $FF
    rst RST_38                                    ; $5768: $FF
    di                                            ; $5769: $F3
    ld e, d                                       ; $576A: $5A
    rst RST_38                                    ; $576B: $FF
    rst RST_38                                    ; $576C: $FF
    ld c, e                                       ; $576D: $4B
    ld e, e                                       ; $576E: $5B
    rst RST_38                                    ; $576F: $FF
    rst RST_38                                    ; $5770: $FF
    rst RST_38                                    ; $5771: $FF
    rst RST_38                                    ; $5772: $FF
    ld [hl], h                                    ; $5773: $74
    ld e, e                                       ; $5774: $5B
    rst RST_38                                    ; $5775: $FF
    rst RST_38                                    ; $5776: $FF
    sbc d                                         ; $5777: $9A
    ld e, e                                       ; $5778: $5B
    rst RST_38                                    ; $5779: $FF
    rst RST_38                                    ; $577A: $FF
    jp $FF5B                                      ; $577B: $C3 $5B $FF


    rst RST_38                                    ; $577E: $FF
    sbc d                                         ; $577F: $9A
    ld e, e                                       ; $5780: $5B
    rst RST_38                                    ; $5781: $FF
    rst RST_38                                    ; $5782: $FF
    rst RST_38                                    ; $5783: $FF
    rst RST_38                                    ; $5784: $FF
    sbc d                                         ; $5785: $9A
    ld e, e                                       ; $5786: $5B
    rst RST_38                                    ; $5787: $FF
    rst RST_38                                    ; $5788: $FF
    jp $FF5B                                      ; $5789: $C3 $5B $FF


    rst RST_38                                    ; $578C: $FF
    sbc d                                         ; $578D: $9A
    ld e, e                                       ; $578E: $5B
    rst RST_38                                    ; $578F: $FF
    rst RST_38                                    ; $5790: $FF
    ld [hl], h                                    ; $5791: $74
    ld e, e                                       ; $5792: $5B
    rst RST_38                                    ; $5793: $FF
    rst RST_38                                    ; $5794: $FF
    rst RST_38                                    ; $5795: $FF
    rst RST_38                                    ; $5796: $FF
    rst RST_28                                    ; $5797: $EF
    ld e, e                                       ; $5798: $5B
    rst RST_38                                    ; $5799: $FF
    rst RST_38                                    ; $579A: $FF
    rst RST_38                                    ; $579B: $FF
    rst RST_38                                    ; $579C: $FF
    rst RST_28                                    ; $579D: $EF
    ld e, e                                       ; $579E: $5B
    rst RST_38                                    ; $579F: $FF
    rst RST_38                                    ; $57A0: $FF
    ld [de], a                                    ; $57A1: $12
    ld e, h                                       ; $57A2: $5C
    inc sp                                        ; $57A3: $33
    ld e, h                                       ; $57A4: $5C
    ld [de], a                                    ; $57A5: $12
    ld e, h                                       ; $57A6: $5C
    inc sp                                        ; $57A7: $33
    ld e, h                                       ; $57A8: $5C
    ld d, c                                       ; $57A9: $51
    ld e, h                                       ; $57AA: $5C
    rst RST_38                                    ; $57AB: $FF
    rst RST_38                                    ; $57AC: $FF
    ld d, c                                       ; $57AD: $51
    ld e, h                                       ; $57AE: $5C
    rst RST_38                                    ; $57AF: $FF
    rst RST_38                                    ; $57B0: $FF
    ld [de], a                                    ; $57B1: $12
    ld e, h                                       ; $57B2: $5C
    inc sp                                        ; $57B3: $33
    ld e, h                                       ; $57B4: $5C
    ld [de], a                                    ; $57B5: $12
    ld e, h                                       ; $57B6: $5C
    inc sp                                        ; $57B7: $33
    ld e, h                                       ; $57B8: $5C
    rst RST_28                                    ; $57B9: $EF
    ld e, e                                       ; $57BA: $5B
    rst RST_38                                    ; $57BB: $FF
    rst RST_38                                    ; $57BC: $FF
    rst RST_38                                    ; $57BD: $FF
    rst RST_38                                    ; $57BE: $FF
    ld a, d                                       ; $57BF: $7A
    ld e, h                                       ; $57C0: $5C
    rst RST_38                                    ; $57C1: $FF
    rst RST_38                                    ; $57C2: $FF
    rst RST_38                                    ; $57C3: $FF
    rst RST_38                                    ; $57C4: $FF
    and [hl]                                      ; $57C5: $A6
    ld e, h                                       ; $57C6: $5C
    rst RST_38                                    ; $57C7: $FF
    rst RST_38                                    ; $57C8: $FF
    rst RST_38                                    ; $57C9: $FF
    rst RST_38                                    ; $57CA: $FF
    ret                                           ; $57CB: $C9


    ld e, h                                       ; $57CC: $5C
    rst RST_38                                    ; $57CD: $FF
    rst RST_38                                    ; $57CE: $FF
    rst RST_28                                    ; $57CF: $EF
    ld e, e                                       ; $57D0: $5B
    rst RST_38                                    ; $57D1: $FF
    rst RST_38                                    ; $57D2: $FF
    rst RST_38                                    ; $57D3: $FF
    rst RST_38                                    ; $57D4: $FF
    nop                                           ; $57D5: $00
    ld e, l                                       ; $57D6: $5D
    rst RST_38                                    ; $57D7: $FF
    rst RST_38                                    ; $57D8: $FF
    ld [hl], c                                    ; $57D9: $71
    ld e, l                                       ; $57DA: $5D
    sbc b                                         ; $57DB: $98
    ld e, l                                       ; $57DC: $5D
    nop                                           ; $57DD: $00
    ld e, l                                       ; $57DE: $5D
    rst RST_38                                    ; $57DF: $FF
    rst RST_38                                    ; $57E0: $FF
    rst RST_38                                    ; $57E1: $FF
    rst RST_38                                    ; $57E2: $FF
    or [hl]                                       ; $57E3: $B6
    ld e, l                                       ; $57E4: $5D
    rst RST_38                                    ; $57E5: $FF
    rst RST_38                                    ; $57E6: $FF
    rst RST_18                                    ; $57E7: $DF
    ld e, l                                       ; $57E8: $5D
    di                                            ; $57E9: $F3
    ld e, l                                       ; $57EA: $5D
    inc d                                         ; $57EB: $14
    ld e, [hl]                                    ; $57EC: $5E
    di                                            ; $57ED: $F3
    ld e, l                                       ; $57EE: $5D
    or [hl]                                       ; $57EF: $B6
    ld e, l                                       ; $57F0: $5D
    rst RST_38                                    ; $57F1: $FF
    rst RST_38                                    ; $57F2: $FF
    rst RST_38                                    ; $57F3: $FF
    rst RST_38                                    ; $57F4: $FF
    jr z, jr_007_5855                             ; $57F5: $28 $5E

    rst RST_38                                    ; $57F7: $FF
    rst RST_38                                    ; $57F8: $FF
    ld h, a                                       ; $57F9: $67
    ld e, [hl]                                    ; $57FA: $5E
    rst RST_38                                    ; $57FB: $FF
    rst RST_38                                    ; $57FC: $FF
    sbc c                                         ; $57FD: $99
    ld e, [hl]                                    ; $57FE: $5E
    cp a                                          ; $57FF: $BF
    ld e, [hl]                                    ; $5800: $5E
    jp c, $BF5E                                   ; $5801: $DA $5E $BF

    ld e, [hl]                                    ; $5804: $5E
    db $D3                                        ; $5805: $D3
    ld e, h                                       ; $5806: $5C
    rst RST_38                                    ; $5807: $FF
    rst RST_38                                    ; $5808: $FF
    rst RST_38                                    ; $5809: $FF
    rst RST_38                                    ; $580A: $FF
    ld [hl], $5D                                  ; $580B: $36 $5D
    db $FD                                        ; $580D: $FD
    ld e, [hl]                                    ; $580E: $5E
    ld a, e                                       ; $580F: $7B
    ld e, l                                       ; $5810: $5D
    dec d                                         ; $5811: $15
    ld e, a                                       ; $5812: $5F
    and [hl]                                      ; $5813: $A6
    ld e, h                                       ; $5814: $5C
    rst RST_38                                    ; $5815: $FF
    rst RST_38                                    ; $5816: $FF
    rst RST_38                                    ; $5817: $FF
    rst RST_38                                    ; $5818: $FF
    db $DD                                        ; $5819: $DD
    ld e, h                                       ; $581A: $5C
    rst RST_38                                    ; $581B: $FF
    rst RST_38                                    ; $581C: $FF
    jr nc, jr_007_587E                            ; $581D: $30 $5F

    rst RST_38                                    ; $581F: $FF
    rst RST_38                                    ; $5820: $FF
    db $DD                                        ; $5821: $DD
    ld e, h                                       ; $5822: $5C
    rst RST_38                                    ; $5823: $FF
    rst RST_38                                    ; $5824: $FF
    rst RST_38                                    ; $5825: $FF
    rst RST_38                                    ; $5826: $FF
    ld h, b                                       ; $5827: $60
    ld e, a                                       ; $5828: $5F
    rst RST_38                                    ; $5829: $FF
    rst RST_38                                    ; $582A: $FF
    rst RST_20                                    ; $582B: $E7
    ld e, a                                       ; $582C: $5F
    rst RST_38                                    ; $582D: $FF
    rst RST_38                                    ; $582E: $FF
    adc h                                         ; $582F: $8C
    ld e, a                                       ; $5830: $5F
    xor a                                         ; $5831: $AF
    ld e, a                                       ; $5832: $5F
    ret nc                                        ; $5833: $D0

    ld e, a                                       ; $5834: $5F
    xor a                                         ; $5835: $AF
    ld e, a                                       ; $5836: $5F
    db $D3                                        ; $5837: $D3
    ld e, h                                       ; $5838: $5C
    rst RST_38                                    ; $5839: $FF
    rst RST_38                                    ; $583A: $FF
    rst RST_38                                    ; $583B: $FF
    rst RST_38                                    ; $583C: $FF
    ld d, $60                                     ; $583D: $16 $60
    dec l                                         ; $583F: $2D
    ld h, b                                       ; $5840: $60
    ld d, h                                       ; $5841: $54
    ld h, b                                       ; $5842: $60
    dec l                                         ; $5843: $2D
    ld h, b                                       ; $5844: $60
    ld d, h                                       ; $5845: $54
    ld h, b                                       ; $5846: $60
    dec l                                         ; $5847: $2D
    ld h, b                                       ; $5848: $60
    ld d, h                                       ; $5849: $54
    ld h, b                                       ; $584A: $60
    dec l                                         ; $584B: $2D
    ld h, b                                       ; $584C: $60
    rst RST_28                                    ; $584D: $EF
    ld e, e                                       ; $584E: $5B
    rst RST_38                                    ; $584F: $FF
    rst RST_38                                    ; $5850: $FF
    rst RST_38                                    ; $5851: $FF
    rst RST_38                                    ; $5852: $FF
    ld a, [hl-]                                   ; $5853: $3A
    ld e, a                                       ; $5854: $5F

jr_007_5855:
    rst RST_38                                    ; $5855: $FF
    rst RST_38                                    ; $5856: $FF
    ld a, [hl-]                                   ; $5857: $3A
    ld e, a                                       ; $5858: $5F
    rst RST_38                                    ; $5859: $FF
    rst RST_38                                    ; $585A: $FF
    ld a, [hl-]                                   ; $585B: $3A
    ld e, a                                       ; $585C: $5F
    rst RST_38                                    ; $585D: $FF
    rst RST_38                                    ; $585E: $FF
    ld a, [hl-]                                   ; $585F: $3A
    ld e, a                                       ; $5860: $5F
    rst RST_38                                    ; $5861: $FF
    rst RST_38                                    ; $5862: $FF
    rst RST_28                                    ; $5863: $EF
    ld e, e                                       ; $5864: $5B
    rst RST_38                                    ; $5865: $FF
    rst RST_38                                    ; $5866: $FF
    rst RST_38                                    ; $5867: $FF
    rst RST_38                                    ; $5868: $FF
    ld l, b                                       ; $5869: $68
    ld h, b                                       ; $586A: $60
    rst RST_38                                    ; $586B: $FF
    rst RST_38                                    ; $586C: $FF
    adc e                                         ; $586D: $8B
    ld h, b                                       ; $586E: $60
    or c                                          ; $586F: $B1
    ld h, b                                       ; $5870: $60
    rst RST_08                                    ; $5871: $CF
    ld h, b                                       ; $5872: $60
    or c                                          ; $5873: $B1
    ld h, b                                       ; $5874: $60
    push af                                       ; $5875: $F5
    ld h, b                                       ; $5876: $60
    or c                                          ; $5877: $B1
    ld h, b                                       ; $5878: $60
    ld a, d                                       ; $5879: $7A
    ld e, h                                       ; $587A: $5C
    rst RST_38                                    ; $587B: $FF
    rst RST_38                                    ; $587C: $FF
    rst RST_38                                    ; $587D: $FF

jr_007_587E:
    rst RST_38                                    ; $587E: $FF
    dec d                                         ; $587F: $15
    ld h, c                                       ; $5880: $61
    rst RST_38                                    ; $5881: $FF
    rst RST_38                                    ; $5882: $FF
    ld b, a                                       ; $5883: $47
    ld h, c                                       ; $5884: $61
    rst RST_38                                    ; $5885: $FF
    rst RST_38                                    ; $5886: $FF
    rst RST_38                                    ; $5887: $FF
    rst RST_38                                    ; $5888: $FF
    ld b, a                                       ; $5889: $47
    ld h, c                                       ; $588A: $61
    rst RST_38                                    ; $588B: $FF
    rst RST_38                                    ; $588C: $FF
    ld b, a                                       ; $588D: $47
    ld h, c                                       ; $588E: $61
    rst RST_38                                    ; $588F: $FF
    rst RST_38                                    ; $5890: $FF
    rst RST_28                                    ; $5891: $EF
    ld e, e                                       ; $5892: $5B
    rst RST_38                                    ; $5893: $FF
    rst RST_38                                    ; $5894: $FF
    rst RST_38                                    ; $5895: $FF
    rst RST_38                                    ; $5896: $FF
    xor e                                         ; $5897: $AB
    ld h, c                                       ; $5898: $61
    rst RST_38                                    ; $5899: $FF
    rst RST_38                                    ; $589A: $FF
    db $DD                                        ; $589B: $DD
    ld h, c                                       ; $589C: $61
    rst RST_38                                    ; $589D: $FF
    rst RST_38                                    ; $589E: $FF
    rst RST_38                                    ; $589F: $FF
    rst RST_38                                    ; $58A0: $FF
    inc e                                         ; $58A1: $1C
    ld e, h                                       ; $58A2: $5C
    inc d                                         ; $58A3: $14
    ld h, [hl]                                    ; $58A4: $66
    ld h, a                                       ; $58A5: $67
    ld h, d                                       ; $58A6: $62
    rst RST_38                                    ; $58A7: $FF
    rst RST_38                                    ; $58A8: $FF
    rrca                                          ; $58A9: $0F
    ld h, d                                       ; $58AA: $62
    ld [hl-], a                                   ; $58AB: $32
    ld h, d                                       ; $58AC: $62
    ld b, h                                       ; $58AD: $44
    ld h, d                                       ; $58AE: $62
    ld [hl-], a                                   ; $58AF: $32
    ld h, d                                       ; $58B0: $62
    rst RST_38                                    ; $58B1: $FF
    rst RST_38                                    ; $58B2: $FF
    pop hl                                        ; $58B3: $E1
    ld h, d                                       ; $58B4: $62
    rst RST_38                                    ; $58B5: $FF
    rst RST_38                                    ; $58B6: $FF
    ld a, [bc]                                    ; $58B7: $0A
    ld h, e                                       ; $58B8: $63
    rst RST_38                                    ; $58B9: $FF
    rst RST_38                                    ; $58BA: $FF
    add hl, sp                                    ; $58BB: $39
    ld h, e                                       ; $58BC: $63
    rst RST_38                                    ; $58BD: $FF
    rst RST_38                                    ; $58BE: $FF
    rst RST_38                                    ; $58BF: $FF
    rst RST_38                                    ; $58C0: $FF
    add hl, sp                                    ; $58C1: $39
    ld h, e                                       ; $58C2: $63
    rst RST_38                                    ; $58C3: $FF
    rst RST_38                                    ; $58C4: $FF
    ld a, [bc]                                    ; $58C5: $0A
    ld h, e                                       ; $58C6: $63
    rst RST_38                                    ; $58C7: $FF
    rst RST_38                                    ; $58C8: $FF
    pop hl                                        ; $58C9: $E1
    ld h, d                                       ; $58CA: $62
    rst RST_38                                    ; $58CB: $FF
    rst RST_38                                    ; $58CC: $FF
    rst RST_38                                    ; $58CD: $FF
    rst RST_38                                    ; $58CE: $FF
    ld a, d                                       ; $58CF: $7A
    ld e, h                                       ; $58D0: $5C
    rst RST_38                                    ; $58D1: $FF
    rst RST_38                                    ; $58D2: $FF
    ld h, d                                       ; $58D3: $62
    ld h, e                                       ; $58D4: $63
    rst RST_38                                    ; $58D5: $FF
    rst RST_38                                    ; $58D6: $FF
    db $DD                                        ; $58D7: $DD
    ld h, c                                       ; $58D8: $61
    rst RST_38                                    ; $58D9: $FF
    rst RST_38                                    ; $58DA: $FF
    rst RST_38                                    ; $58DB: $FF
    rst RST_38                                    ; $58DC: $FF
    ld a, d                                       ; $58DD: $7A
    ld e, h                                       ; $58DE: $5C
    rst RST_38                                    ; $58DF: $FF
    rst RST_38                                    ; $58E0: $FF
    ld a, c                                       ; $58E1: $79
    ld h, c                                       ; $58E2: $61
    rst RST_38                                    ; $58E3: $FF
    rst RST_38                                    ; $58E4: $FF
    xor e                                         ; $58E5: $AB
    ld h, c                                       ; $58E6: $61
    rst RST_38                                    ; $58E7: $FF
    rst RST_38                                    ; $58E8: $FF
    db $DD                                        ; $58E9: $DD
    ld h, c                                       ; $58EA: $61
    rst RST_38                                    ; $58EB: $FF
    rst RST_38                                    ; $58EC: $FF
    xor e                                         ; $58ED: $AB
    ld h, c                                       ; $58EE: $61
    rst RST_38                                    ; $58EF: $FF
    rst RST_38                                    ; $58F0: $FF
    db $DD                                        ; $58F1: $DD
    ld h, c                                       ; $58F2: $61
    rst RST_38                                    ; $58F3: $FF
    rst RST_38                                    ; $58F4: $FF
    ldh [c], a                                    ; $58F5: $E2
    ld h, l                                       ; $58F6: $65
    rst RST_38                                    ; $58F7: $FF
    rst RST_38                                    ; $58F8: $FF
    inc e                                         ; $58F9: $1C
    ld e, h                                       ; $58FA: $5C
    inc d                                         ; $58FB: $14
    ld h, [hl]                                    ; $58FC: $66
    rrca                                          ; $58FD: $0F
    ld h, d                                       ; $58FE: $62
    ld [hl-], a                                   ; $58FF: $32
    ld h, d                                       ; $5900: $62
    ld b, h                                       ; $5901: $44
    ld h, d                                       ; $5902: $62
    ld [hl-], a                                   ; $5903: $32
    ld h, d                                       ; $5904: $62
    sub e                                         ; $5905: $93
    ld h, d                                       ; $5906: $62
    cp d                                          ; $5907: $BA
    ld h, d                                       ; $5908: $62
    sbc l                                         ; $5909: $9D
    ld h, d                                       ; $590A: $62
    cp d                                          ; $590B: $BA
    ld h, d                                       ; $590C: $62
    rst RST_38                                    ; $590D: $FF
    rst RST_38                                    ; $590E: $FF
    ld a, d                                       ; $590F: $7A
    ld e, h                                       ; $5910: $5C
    rst RST_38                                    ; $5911: $FF
    rst RST_38                                    ; $5912: $FF
    ld a, c                                       ; $5913: $79
    ld h, c                                       ; $5914: $61
    rst RST_38                                    ; $5915: $FF
    rst RST_38                                    ; $5916: $FF
    xor e                                         ; $5917: $AB
    ld h, c                                       ; $5918: $61
    rst RST_38                                    ; $5919: $FF
    rst RST_38                                    ; $591A: $FF
    db $DD                                        ; $591B: $DD
    ld h, c                                       ; $591C: $61
    rst RST_38                                    ; $591D: $FF
    rst RST_38                                    ; $591E: $FF
    xor e                                         ; $591F: $AB
    ld h, c                                       ; $5920: $61
    rst RST_38                                    ; $5921: $FF
    rst RST_38                                    ; $5922: $FF
    db $DD                                        ; $5923: $DD
    ld h, c                                       ; $5924: $61
    rst RST_38                                    ; $5925: $FF
    rst RST_38                                    ; $5926: $FF
    ldh [c], a                                    ; $5927: $E2
    ld h, l                                       ; $5928: $65
    rst RST_38                                    ; $5929: $FF
    rst RST_38                                    ; $592A: $FF
    inc e                                         ; $592B: $1C
    ld e, h                                       ; $592C: $5C
    inc d                                         ; $592D: $14
    ld h, [hl]                                    ; $592E: $66
    rrca                                          ; $592F: $0F
    ld h, d                                       ; $5930: $62
    ld [hl-], a                                   ; $5931: $32
    ld h, d                                       ; $5932: $62
    ld b, h                                       ; $5933: $44
    ld h, d                                       ; $5934: $62
    ld [hl-], a                                   ; $5935: $32
    ld h, d                                       ; $5936: $62
    sbc l                                         ; $5937: $9D
    ld h, d                                       ; $5938: $62
    cp d                                          ; $5939: $BA
    ld h, d                                       ; $593A: $62
    rst RST_38                                    ; $593B: $FF
    rst RST_38                                    ; $593C: $FF
    sbc l                                         ; $593D: $9D
    ld h, e                                       ; $593E: $63
    rst RST_38                                    ; $593F: $FF
    rst RST_38                                    ; $5940: $FF
    rst RST_38                                    ; $5941: $FF
    rst RST_38                                    ; $5942: $FF
    sbc l                                         ; $5943: $9D
    ld h, e                                       ; $5944: $63
    rst RST_38                                    ; $5945: $FF
    rst RST_38                                    ; $5946: $FF
    rst RST_38                                    ; $5947: $FF
    rst RST_38                                    ; $5948: $FF
    di                                            ; $5949: $F3
    ld e, d                                       ; $594A: $5A
    rst RST_38                                    ; $594B: $FF
    rst RST_38                                    ; $594C: $FF
    sbc l                                         ; $594D: $9D
    ld h, e                                       ; $594E: $63
    rst RST_38                                    ; $594F: $FF
    rst RST_38                                    ; $5950: $FF
    add $63                                       ; $5951: $C6 $63
    rst RST_38                                    ; $5953: $FF
    rst RST_38                                    ; $5954: $FF
    rst RST_38                                    ; $5955: $FF
    rst RST_38                                    ; $5956: $FF
    inc de                                        ; $5957: $13
    ld h, h                                       ; $5958: $64
    rst RST_38                                    ; $5959: $FF
    rst RST_38                                    ; $595A: $FF
    rst RST_38                                    ; $595B: $FF
    rst RST_38                                    ; $595C: $FF
    sbc l                                         ; $595D: $9D
    ld h, e                                       ; $595E: $63
    rst RST_38                                    ; $595F: $FF
    rst RST_38                                    ; $5960: $FF
    ld [de], a                                    ; $5961: $12
    ld e, h                                       ; $5962: $5C
    inc sp                                        ; $5963: $33
    ld e, h                                       ; $5964: $5C
    ld [de], a                                    ; $5965: $12
    ld e, h                                       ; $5966: $5C
    inc sp                                        ; $5967: $33
    ld e, h                                       ; $5968: $5C
    ld d, c                                       ; $5969: $51
    ld e, h                                       ; $596A: $5C
    rst RST_38                                    ; $596B: $FF
    rst RST_38                                    ; $596C: $FF
    ld d, c                                       ; $596D: $51
    ld e, h                                       ; $596E: $5C
    rst RST_38                                    ; $596F: $FF
    rst RST_38                                    ; $5970: $FF
    ld [de], a                                    ; $5971: $12
    ld e, h                                       ; $5972: $5C
    inc sp                                        ; $5973: $33
    ld e, h                                       ; $5974: $5C
    rst RST_28                                    ; $5975: $EF
    ld e, e                                       ; $5976: $5B
    rst RST_38                                    ; $5977: $FF
    rst RST_38                                    ; $5978: $FF
    rst RST_38                                    ; $5979: $FF
    rst RST_38                                    ; $597A: $FF
    sbc l                                         ; $597B: $9D
    ld h, e                                       ; $597C: $63
    rst RST_38                                    ; $597D: $FF
    rst RST_38                                    ; $597E: $FF
    inc sp                                        ; $597F: $33
    ld h, h                                       ; $5980: $64
    rst RST_38                                    ; $5981: $FF
    rst RST_38                                    ; $5982: $FF
    ld h, [hl]                                    ; $5983: $66
    ld h, h                                       ; $5984: $64
    rst RST_38                                    ; $5985: $FF
    rst RST_38                                    ; $5986: $FF
    inc sp                                        ; $5987: $33
    ld h, h                                       ; $5988: $64
    rst RST_38                                    ; $5989: $FF
    rst RST_38                                    ; $598A: $FF
    ld h, [hl]                                    ; $598B: $66
    ld h, h                                       ; $598C: $64
    rst RST_38                                    ; $598D: $FF
    rst RST_38                                    ; $598E: $FF
    rst RST_38                                    ; $598F: $FF
    rst RST_38                                    ; $5990: $FF
    add $63                                       ; $5991: $C6 $63
    rst RST_38                                    ; $5993: $FF
    rst RST_38                                    ; $5994: $FF
    ret nc                                        ; $5995: $D0

    ld h, e                                       ; $5996: $63
    rst RST_38                                    ; $5997: $FF
    rst RST_38                                    ; $5998: $FF
    jp c, $FF63                                   ; $5999: $DA $63 $FF

    rst RST_38                                    ; $599C: $FF
    db $E4                                        ; $599D: $E4
    ld h, e                                       ; $599E: $63
    rst RST_38                                    ; $599F: $FF
    rst RST_38                                    ; $59A0: $FF
    db $E4                                        ; $59A1: $E4
    ld h, e                                       ; $59A2: $63
    rst RST_38                                    ; $59A3: $FF
    rst RST_38                                    ; $59A4: $FF
    inc sp                                        ; $59A5: $33
    ld h, h                                       ; $59A6: $64
    rst RST_38                                    ; $59A7: $FF
    rst RST_38                                    ; $59A8: $FF
    ld h, [hl]                                    ; $59A9: $66
    ld h, h                                       ; $59AA: $64
    rst RST_38                                    ; $59AB: $FF
    rst RST_38                                    ; $59AC: $FF
    rst RST_38                                    ; $59AD: $FF
    rst RST_38                                    ; $59AE: $FF
    sbc l                                         ; $59AF: $9D
    ld h, e                                       ; $59B0: $63
    rst RST_38                                    ; $59B1: $FF
    rst RST_38                                    ; $59B2: $FF
    inc sp                                        ; $59B3: $33
    ld h, h                                       ; $59B4: $64
    rst RST_38                                    ; $59B5: $FF
    rst RST_38                                    ; $59B6: $FF
    ld h, [hl]                                    ; $59B7: $66
    ld h, h                                       ; $59B8: $64
    rst RST_38                                    ; $59B9: $FF
    rst RST_38                                    ; $59BA: $FF
    rst RST_38                                    ; $59BB: $FF
    rst RST_38                                    ; $59BC: $FF
    dec a                                         ; $59BD: $3D
    ld h, h                                       ; $59BE: $64
    rst RST_38                                    ; $59BF: $FF
    rst RST_38                                    ; $59C0: $FF
    rst RST_38                                    ; $59C1: $FF
    rst RST_38                                    ; $59C2: $FF
    rst RST_28                                    ; $59C3: $EF
    ld e, e                                       ; $59C4: $5B
    rst RST_38                                    ; $59C5: $FF
    rst RST_38                                    ; $59C6: $FF
    rst RST_28                                    ; $59C7: $EF
    ld e, e                                       ; $59C8: $5B
    rst RST_38                                    ; $59C9: $FF
    rst RST_38                                    ; $59CA: $FF
    rst RST_38                                    ; $59CB: $FF
    rst RST_38                                    ; $59CC: $FF
    xor e                                         ; $59CD: $AB
    ld h, c                                       ; $59CE: $61
    rst RST_38                                    ; $59CF: $FF
    rst RST_38                                    ; $59D0: $FF
    push de                                       ; $59D1: $D5
    ld h, h                                       ; $59D2: $64
    rst RST_38                                    ; $59D3: $FF
    rst RST_38                                    ; $59D4: $FF
    adc h                                         ; $59D5: $8C
    ld h, h                                       ; $59D6: $64
    rst RST_38                                    ; $59D7: $FF
    rst RST_38                                    ; $59D8: $FF
    xor e                                         ; $59D9: $AB
    ld h, c                                       ; $59DA: $61
    rst RST_38                                    ; $59DB: $FF
    rst RST_38                                    ; $59DC: $FF
    rst RST_38                                    ; $59DD: $FF
    rst RST_38                                    ; $59DE: $FF
    inc l                                         ; $59DF: $2C
    ld e, l                                       ; $59E0: $5D
    ld d, e                                       ; $59E1: $53
    ld e, l                                       ; $59E2: $5D
    sub [hl]                                      ; $59E3: $96
    ld h, h                                       ; $59E4: $64
    rst RST_38                                    ; $59E5: $FF
    rst RST_38                                    ; $59E6: $FF
    rst RST_18                                    ; $59E7: $DF
    ld h, h                                       ; $59E8: $64
    rst RST_38                                    ; $59E9: $FF
    rst RST_38                                    ; $59EA: $FF
    xor e                                         ; $59EB: $AB
    ld h, c                                       ; $59EC: $61
    rst RST_38                                    ; $59ED: $FF
    rst RST_38                                    ; $59EE: $FF
    xor e                                         ; $59EF: $AB
    ld h, c                                       ; $59F0: $61
    rst RST_38                                    ; $59F1: $FF
    rst RST_38                                    ; $59F2: $FF
    rst RST_38                                    ; $59F3: $FF
    rst RST_38                                    ; $59F4: $FF
    xor e                                         ; $59F5: $AB
    ld h, c                                       ; $59F6: $61
    rst RST_38                                    ; $59F7: $FF
    rst RST_38                                    ; $59F8: $FF
    adc h                                         ; $59F9: $8C
    ld h, h                                       ; $59FA: $64
    rst RST_38                                    ; $59FB: $FF
    rst RST_38                                    ; $59FC: $FF
    bit 4, h                                      ; $59FD: $CB $64
    rst RST_38                                    ; $59FF: $FF
    rst RST_38                                    ; $5A00: $FF
    adc h                                         ; $5A01: $8C
    ld h, h                                       ; $5A02: $64
    rst RST_38                                    ; $5A03: $FF
    rst RST_38                                    ; $5A04: $FF
    inc l                                         ; $5A05: $2C
    ld e, l                                       ; $5A06: $5D
    ld d, e                                       ; $5A07: $53
    ld e, l                                       ; $5A08: $5D
    rst RST_38                                    ; $5A09: $FF
    rst RST_38                                    ; $5A0A: $FF
    jr z, jr_007_5A6B                             ; $5A0B: $28 $5E

    rst RST_38                                    ; $5A0D: $FF
    rst RST_38                                    ; $5A0E: $FF
    ld h, a                                       ; $5A0F: $67
    ld e, [hl]                                    ; $5A10: $5E
    rst RST_38                                    ; $5A11: $FF
    rst RST_38                                    ; $5A12: $FF
    sbc c                                         ; $5A13: $99
    ld e, [hl]                                    ; $5A14: $5E
    cp a                                          ; $5A15: $BF
    ld e, [hl]                                    ; $5A16: $5E
    ld a, [de]                                    ; $5A17: $1A
    ld h, l                                       ; $5A18: $65
    cp a                                          ; $5A19: $BF
    ld e, [hl]                                    ; $5A1A: $5E
    db $D3                                        ; $5A1B: $D3
    ld e, h                                       ; $5A1C: $5C
    rst RST_38                                    ; $5A1D: $FF
    rst RST_38                                    ; $5A1E: $FF
    di                                            ; $5A1F: $F3
    ld e, d                                       ; $5A20: $5A
    rst RST_38                                    ; $5A21: $FF
    rst RST_38                                    ; $5A22: $FF
    ld c, c                                       ; $5A23: $49
    ld h, l                                       ; $5A24: $65
    ld a, [hl-]                                   ; $5A25: $3A
    ld h, l                                       ; $5A26: $65
    ld c, c                                       ; $5A27: $49
    ld h, l                                       ; $5A28: $65
    ld a, b                                       ; $5A29: $78
    ld h, l                                       ; $5A2A: $65
    rst RST_38                                    ; $5A2B: $FF
    rst RST_38                                    ; $5A2C: $FF
    ld h, b                                       ; $5A2D: $60
    ld e, a                                       ; $5A2E: $5F
    rst RST_38                                    ; $5A2F: $FF
    rst RST_38                                    ; $5A30: $FF
    rst RST_20                                    ; $5A31: $E7
    ld e, a                                       ; $5A32: $5F
    rst RST_38                                    ; $5A33: $FF
    rst RST_38                                    ; $5A34: $FF
    adc h                                         ; $5A35: $8C
    ld e, a                                       ; $5A36: $5F
    xor a                                         ; $5A37: $AF
    ld e, a                                       ; $5A38: $5F
    adc d                                         ; $5A39: $8A
    ld h, l                                       ; $5A3A: $65
    and a                                         ; $5A3B: $A7
    ld h, l                                       ; $5A3C: $65
    bit 4, l                                      ; $5A3D: $CB $65
    and a                                         ; $5A3F: $A7
    ld h, l                                       ; $5A40: $65
    rst RST_28                                    ; $5A41: $EF
    ld e, e                                       ; $5A42: $5B
    rst RST_38                                    ; $5A43: $FF
    rst RST_38                                    ; $5A44: $FF
    rst RST_38                                    ; $5A45: $FF
    rst RST_38                                    ; $5A46: $FF
    ldh [c], a                                    ; $5A47: $E2
    ld h, l                                       ; $5A48: $65
    rst RST_38                                    ; $5A49: $FF
    rst RST_38                                    ; $5A4A: $FF
    inc e                                         ; $5A4B: $1C
    ld e, h                                       ; $5A4C: $5C
    inc d                                         ; $5A4D: $14
    ld h, [hl]                                    ; $5A4E: $66
    ld h, a                                       ; $5A4F: $67
    ld h, d                                       ; $5A50: $62
    rst RST_38                                    ; $5A51: $FF
    rst RST_38                                    ; $5A52: $FF
    ld [hl], b                                    ; $5A53: $70
    ld h, [hl]                                    ; $5A54: $66
    ld c, a                                       ; $5A55: $4F
    ld h, [hl]                                    ; $5A56: $66
    ld [hl-], a                                   ; $5A57: $32
    ld e, [hl]                                    ; $5A58: $5E
    rst RST_38                                    ; $5A59: $FF
    rst RST_38                                    ; $5A5A: $FF
    ld h, a                                       ; $5A5B: $67
    ld e, [hl]                                    ; $5A5C: $5E
    rst RST_38                                    ; $5A5D: $FF
    rst RST_38                                    ; $5A5E: $FF
    sbc c                                         ; $5A5F: $99
    ld e, [hl]                                    ; $5A60: $5E
    cp a                                          ; $5A61: $BF
    ld e, [hl]                                    ; $5A62: $5E
    jp c, $BF5E                                   ; $5A63: $DA $5E $BF

    ld e, [hl]                                    ; $5A66: $5E
    db $D3                                        ; $5A67: $D3
    ld e, h                                       ; $5A68: $5C
    rst RST_38                                    ; $5A69: $FF
    rst RST_38                                    ; $5A6A: $FF

jr_007_5A6B:
    rst RST_38                                    ; $5A6B: $FF
    rst RST_38                                    ; $5A6C: $FF
    ld a, d                                       ; $5A6D: $7A
    ld e, h                                       ; $5A6E: $5C
    rst RST_38                                    ; $5A6F: $FF
    rst RST_38                                    ; $5A70: $FF
    ld a, c                                       ; $5A71: $79
    ld h, c                                       ; $5A72: $61
    rst RST_38                                    ; $5A73: $FF
    rst RST_38                                    ; $5A74: $FF
    adc d                                         ; $5A75: $8A
    ld h, [hl]                                    ; $5A76: $66
    or e                                          ; $5A77: $B3
    ld h, [hl]                                    ; $5A78: $66
    bit 4, [hl]                                   ; $5A79: $CB $66
    or e                                          ; $5A7B: $B3
    ld h, [hl]                                    ; $5A7C: $66
    db $EB                                        ; $5A7D: $EB
    ld h, [hl]                                    ; $5A7E: $66
    rst RST_38                                    ; $5A7F: $FF
    rst RST_38                                    ; $5A80: $FF
    inc hl                                        ; $5A81: $23
    ld h, a                                       ; $5A82: $67
    rst RST_38                                    ; $5A83: $FF
    rst RST_38                                    ; $5A84: $FF
    adc h                                         ; $5A85: $8C
    ld h, h                                       ; $5A86: $64
    rst RST_38                                    ; $5A87: $FF
    rst RST_38                                    ; $5A88: $FF
    ld a, c                                       ; $5A89: $79
    ld h, c                                       ; $5A8A: $61
    rst RST_38                                    ; $5A8B: $FF
    rst RST_38                                    ; $5A8C: $FF
    ld d, l                                       ; $5A8D: $55
    ld h, a                                       ; $5A8E: $67
    ld [hl], l                                    ; $5A8F: $75
    ld h, a                                       ; $5A90: $67
    sub e                                         ; $5A91: $93
    ld h, a                                       ; $5A92: $67
    ld [hl], l                                    ; $5A93: $75
    ld h, a                                       ; $5A94: $67
    or b                                          ; $5A95: $B0
    ld h, a                                       ; $5A96: $67
    ld [hl], l                                    ; $5A97: $75
    ld h, a                                       ; $5A98: $67
    sub $67                                       ; $5A99: $D6 $67
    ld [hl], l                                    ; $5A9B: $75
    ld h, a                                       ; $5A9C: $67
    db $FC                                        ; $5A9D: $FC
    ld h, a                                       ; $5A9E: $67
    ld [hl], l                                    ; $5A9F: $75
    ld h, a                                       ; $5AA0: $67
    ld a, d                                       ; $5AA1: $7A
    ld e, h                                       ; $5AA2: $5C
    rst RST_38                                    ; $5AA3: $FF
    rst RST_38                                    ; $5AA4: $FF
    rst RST_38                                    ; $5AA5: $FF
    rst RST_38                                    ; $5AA6: $FF
    xor e                                         ; $5AA7: $AB
    ld h, c                                       ; $5AA8: $61
    rst RST_38                                    ; $5AA9: $FF
    rst RST_38                                    ; $5AAA: $FF
    adc h                                         ; $5AAB: $8C
    ld h, h                                       ; $5AAC: $64
    rst RST_38                                    ; $5AAD: $FF
    rst RST_38                                    ; $5AAE: $FF
    bit 4, h                                      ; $5AAF: $CB $64
    rst RST_38                                    ; $5AB1: $FF
    rst RST_38                                    ; $5AB2: $FF
    ld b, a                                       ; $5AB3: $47
    ld h, c                                       ; $5AB4: $61
    rst RST_38                                    ; $5AB5: $FF
    rst RST_38                                    ; $5AB6: $FF
    add [hl]                                      ; $5AB7: $86
    ld l, b                                       ; $5AB8: $68
    rst RST_38                                    ; $5AB9: $FF
    rst RST_38                                    ; $5ABA: $FF
    add hl, de                                    ; $5ABB: $19
    ld l, b                                       ; $5ABC: $68
    rst RST_38                                    ; $5ABD: $FF
    rst RST_38                                    ; $5ABE: $FF
    ld d, h                                       ; $5ABF: $54
    ld l, b                                       ; $5AC0: $68
    rst RST_38                                    ; $5AC1: $FF
    rst RST_38                                    ; $5AC2: $FF
    add hl, de                                    ; $5AC3: $19
    ld l, b                                       ; $5AC4: $68
    rst RST_38                                    ; $5AC5: $FF
    rst RST_38                                    ; $5AC6: $FF
    add [hl]                                      ; $5AC7: $86
    ld l, b                                       ; $5AC8: $68
    rst RST_38                                    ; $5AC9: $FF
    rst RST_38                                    ; $5ACA: $FF
    ld a, [bc]                                    ; $5ACB: $0A
    ld h, e                                       ; $5ACC: $63
    rst RST_38                                    ; $5ACD: $FF
    rst RST_38                                    ; $5ACE: $FF
    pop hl                                        ; $5ACF: $E1
    ld h, d                                       ; $5AD0: $62
    rst RST_38                                    ; $5AD1: $FF
    rst RST_38                                    ; $5AD2: $FF
    ld [de], a                                    ; $5AD3: $12
    ld e, h                                       ; $5AD4: $5C
    inc sp                                        ; $5AD5: $33
    ld e, h                                       ; $5AD6: $5C
    rst RST_28                                    ; $5AD7: $EF
    ld e, e                                       ; $5AD8: $5B
    rst RST_38                                    ; $5AD9: $FF
    rst RST_38                                    ; $5ADA: $FF
    rst RST_28                                    ; $5ADB: $EF
    ld e, e                                       ; $5ADC: $5B
    rst RST_38                                    ; $5ADD: $FF
    rst RST_38                                    ; $5ADE: $FF
    rst RST_38                                    ; $5ADF: $FF
    rst RST_38                                    ; $5AE0: $FF
    ld h, b                                       ; $5AE1: $60
    ld e, a                                       ; $5AE2: $5F
    rst RST_38                                    ; $5AE3: $FF
    rst RST_38                                    ; $5AE4: $FF
    ret nc                                        ; $5AE5: $D0

    ld e, a                                       ; $5AE6: $5F
    xor a                                         ; $5AE7: $AF
    ld e, a                                       ; $5AE8: $5F
    bit 4, l                                      ; $5AE9: $CB $65
    and a                                         ; $5AEB: $A7
    ld h, l                                       ; $5AEC: $65
    ret                                           ; $5AED: $C9


    ld e, h                                       ; $5AEE: $5C

jr_007_5AEF:
    rst RST_38                                    ; $5AEF: $FF
    rst RST_38                                    ; $5AF0: $FF
    rst RST_38                                    ; $5AF1: $FF
    rst RST_38                                    ; $5AF2: $FF
    nop                                           ; $5AF3: $00
    ld b, $00                                     ; $5AF4: $06 $00
    nop                                           ; $5AF6: $00
    ld b, b                                       ; $5AF7: $40
    ld d, $FD                                     ; $5AF8: $16 $FD

jr_007_5AFA:
    ld e, d                                       ; $5AFA: $5A
    nop                                           ; $5AFB: $00
    nop                                           ; $5AFC: $00
    dec bc                                        ; $5AFD: $0B
    jr jr_007_5AEF                                ; $5AFE: $18 $EF

    nop                                           ; $5B00: $00
    jr jr_007_5AFA                                ; $5B01: $18 $F7

    ld [bc], a                                    ; $5B03: $02
    jr @+$01                                      ; $5B04: $18 $FF

    inc b                                         ; $5B06: $04
    jr nz, jr_007_5B10                            ; $5B07: $20 $07

    ld b, $28                                     ; $5B09: $06 $28
    rst RST_28                                    ; $5B0B: $EF
    ld [$F728], sp                                ; $5B0C: $08 $28 $F7
    ld a, [bc]                                    ; $5B0F: $0A

jr_007_5B10:
    jr z, @+$01                                   ; $5B10: $28 $FF

jr_007_5B12:
    inc c                                         ; $5B12: $0C
    jr nc, jr_007_5B1C                            ; $5B13: $30 $07

    ld c, $38                                     ; $5B15: $0E $38
    rst RST_28                                    ; $5B17: $EF
    db $10                                        ; $5B18: $10
    jr c, jr_007_5B12                             ; $5B19: $38 $F7

jr_007_5B1B:
    ld [de], a                                    ; $5B1B: $12

jr_007_5B1C:
    jr c, @+$01                                   ; $5B1C: $38 $FF

    inc d                                         ; $5B1E: $14
    nop                                           ; $5B1F: $00
    ld b, $00                                     ; $5B20: $06 $00
    ld h, b                                       ; $5B22: $60
    ld b, c                                       ; $5B23: $41
    ld d, $29                                     ; $5B24: $16 $29

jr_007_5B26:
    ld e, e                                       ; $5B26: $5B
    nop                                           ; $5B27: $00
    nop                                           ; $5B28: $00
    dec bc                                        ; $5B29: $0B
    jr jr_007_5B1B                                ; $5B2A: $18 $EF

    nop                                           ; $5B2C: $00
    jr jr_007_5B26                                ; $5B2D: $18 $F7

    ld [bc], a                                    ; $5B2F: $02
    jr @+$01                                      ; $5B30: $18 $FF

    inc b                                         ; $5B32: $04
    ld e, $07                                     ; $5B33: $1E $07
    ld b, $28                                     ; $5B35: $06 $28
    rst RST_28                                    ; $5B37: $EF
    ld [$F728], sp                                ; $5B38: $08 $28 $F7
    ld a, [bc]                                    ; $5B3B: $0A
    jr z, @+$01                                   ; $5B3C: $28 $FF

jr_007_5B3E:
    inc c                                         ; $5B3E: $0C
    ld l, $07                                     ; $5B3F: $2E $07
    ld c, $38                                     ; $5B41: $0E $38
    rst RST_28                                    ; $5B43: $EF
    db $10                                        ; $5B44: $10
    jr c, jr_007_5B3E                             ; $5B45: $38 $F7

    ld [de], a                                    ; $5B47: $12
    jr c, @+$01                                   ; $5B48: $38 $FF

    inc d                                         ; $5B4A: $14
    nop                                           ; $5B4B: $00
    ld b, $00                                     ; $5B4C: $06 $00
    ret nz                                        ; $5B4E: $C0

    ld b, d                                       ; $5B4F: $42
    ld d, $55                                     ; $5B50: $16 $55
    ld e, e                                       ; $5B52: $5B
    nop                                           ; $5B53: $00
    nop                                           ; $5B54: $00
    ld a, [bc]                                    ; $5B55: $0A
    inc e                                         ; $5B56: $1C
    xor $00                                       ; $5B57: $EE $00
    inc e                                         ; $5B59: $1C
    or $02                                        ; $5B5A: $F6 $02
    dec de                                        ; $5B5C: $1B
    cp $04                                        ; $5B5D: $FE $04
    ld hl, $0606                                  ; $5B5F: $21 $06 $06
    inc l                                         ; $5B62: $2C
    xor $08                                       ; $5B63: $EE $08
    inc l                                         ; $5B65: $2C
    or $0A                                        ; $5B66: $F6 $0A
    dec hl                                        ; $5B68: $2B
    cp $0C                                        ; $5B69: $FE $0C
    ld sp, $0E06                                  ; $5B6B: $31 $06 $0E
    inc a                                         ; $5B6E: $3C
    db $F4                                        ; $5B6F: $F4
    db $10                                        ; $5B70: $10
    ld a, $EC                                     ; $5B71: $3E $EC
    ld [de], a                                    ; $5B73: $12
    nop                                           ; $5B74: $00
    ld bc, $0000                                  ; $5B75: $01 $00 $00
    ld b, h                                       ; $5B78: $44
    ld d, $7E                                     ; $5B79: $16 $7E
    ld e, e                                       ; $5B7B: $5B
    nop                                           ; $5B7C: $00
    nop                                           ; $5B7D: $00
    add hl, bc                                    ; $5B7E: $09
    rla                                           ; $5B7F: $17
    rst RST_28                                    ; $5B80: $EF
    nop                                           ; $5B81: $00
    rla                                           ; $5B82: $17
    rst RST_30                                    ; $5B83: $F7
    ld [bc], a                                    ; $5B84: $02
    rla                                           ; $5B85: $17
    rst RST_38                                    ; $5B86: $FF
    inc b                                         ; $5B87: $04
    ld e, $07                                     ; $5B88: $1E $07
    ld b, $27                                     ; $5B8A: $06 $27
    rst RST_28                                    ; $5B8C: $EF
    ld [$F727], sp                                ; $5B8D: $08 $27 $F7
    ld a, [bc]                                    ; $5B90: $0A
    daa                                           ; $5B91: $27
    rst RST_38                                    ; $5B92: $FF
    inc c                                         ; $5B93: $0C
    scf                                           ; $5B94: $37
    ei                                            ; $5B95: $FB

jr_007_5B96:
    ld c, $37                                     ; $5B96: $0E $37
    inc bc                                        ; $5B98: $03
    stop                                          ; $5B99: $10 $00
    ld bc, $2000                                  ; $5B9B: $01 $00 $20
    ld b, l                                       ; $5B9E: $45
    ld d, $A4                                     ; $5B9F: $16 $A4

jr_007_5BA1:
    ld e, e                                       ; $5BA1: $5B
    nop                                           ; $5BA2: $00
    nop                                           ; $5BA3: $00
    ld a, [bc]                                    ; $5BA4: $0A
    jr jr_007_5B96                                ; $5BA5: $18 $EF

    nop                                           ; $5BA7: $00
    jr jr_007_5BA1                                ; $5BA8: $18 $F7

    ld [bc], a                                    ; $5BAA: $02
    jr @+$01                                      ; $5BAB: $18 $FF

    inc b                                         ; $5BAD: $04
    jr nz, jr_007_5BB7                            ; $5BAE: $20 $07

    ld b, $28                                     ; $5BB0: $06 $28
    rst RST_28                                    ; $5BB2: $EF
    ld [$F728], sp                                ; $5BB3: $08 $28 $F7
    ld a, [bc]                                    ; $5BB6: $0A

jr_007_5BB7:
    jr z, @+$01                                   ; $5BB7: $28 $FF

    inc c                                         ; $5BB9: $0C
    jr nc, jr_007_5BC3                            ; $5BBA: $30 $07

    ld c, $38                                     ; $5BBC: $0E $38

jr_007_5BBE:
    rst RST_30                                    ; $5BBE: $F7
    db $10                                        ; $5BBF: $10
    jr c, @+$01                                   ; $5BC0: $38 $FF

    ld [de], a                                    ; $5BC2: $12

jr_007_5BC3:
    nop                                           ; $5BC3: $00
    ld bc, $6000                                  ; $5BC4: $01 $00 $60
    ld b, [hl]                                    ; $5BC7: $46
    ld d, $CD                                     ; $5BC8: $16 $CD

jr_007_5BCA:
    ld e, e                                       ; $5BCA: $5B
    nop                                           ; $5BCB: $00
    nop                                           ; $5BCC: $00
    dec bc                                        ; $5BCD: $0B
    jr jr_007_5BBE                                ; $5BCE: $18 $EE

    nop                                           ; $5BD0: $00
    jr @-$08                                      ; $5BD1: $18 $F6

    ld [bc], a                                    ; $5BD3: $02

jr_007_5BD4:
    jr jr_007_5BD4                                ; $5BD4: $18 $FE

jr_007_5BD6:
    inc b                                         ; $5BD6: $04
    ld hl, $0606                                  ; $5BD7: $21 $06 $06
    jr z, jr_007_5BCA                             ; $5BDA: $28 $EE

    ld [$F628], sp                                ; $5BDC: $08 $28 $F6
    ld a, [bc]                                    ; $5BDF: $0A

jr_007_5BE0:
    jr z, jr_007_5BE0                             ; $5BE0: $28 $FE

    inc c                                         ; $5BE2: $0C
    ld sp, $0E06                                  ; $5BE3: $31 $06 $0E
    jr c, jr_007_5BD6                             ; $5BE6: $38 $EE

    db $10                                        ; $5BE8: $10
    jr c, @-$08                                   ; $5BE9: $38 $F6

    ld [de], a                                    ; $5BEB: $12

jr_007_5BEC:
    jr c, jr_007_5BEC                             ; $5BEC: $38 $FE

    inc d                                         ; $5BEE: $14
    nop                                           ; $5BEF: $00
    rlca                                          ; $5BF0: $07
    nop                                           ; $5BF1: $00
    ret nz                                        ; $5BF2: $C0

    ld b, a                                       ; $5BF3: $47
    ld d, $F9                                     ; $5BF4: $16 $F9
    ld e, e                                       ; $5BF6: $5B
    ld [bc], a                                    ; $5BF7: $02
    nop                                           ; $5BF8: $00
    ld [$EF25], sp                                ; $5BF9: $08 $25 $EF
    nop                                           ; $5BFC: $00
    dec h                                         ; $5BFD: $25
    rst RST_30                                    ; $5BFE: $F7
    ld [bc], a                                    ; $5BFF: $02
    inc h                                         ; $5C00: $24
    rst RST_38                                    ; $5C01: $FF
    inc b                                         ; $5C02: $04
    ld a, [hl+]                                   ; $5C03: $2A
    rlca                                          ; $5C04: $07
    ld b, $35                                     ; $5C05: $06 $35
    rst RST_28                                    ; $5C07: $EF
    ld [$F735], sp                                ; $5C08: $08 $35 $F7
    ld a, [bc]                                    ; $5C0B: $0A
    inc [hl]                                      ; $5C0C: $34
    rst RST_38                                    ; $5C0D: $FF
    inc c                                         ; $5C0E: $0C
    ld a, [hl-]                                   ; $5C0F: $3A
    rlca                                          ; $5C10: $07
    ld c, $00                                     ; $5C11: $0E $00
    ld bc, $C000                                  ; $5C13: $01 $00 $C0
    ld c, b                                       ; $5C16: $48
    ld d, $26                                     ; $5C17: $16 $26
    ld e, h                                       ; $5C19: $5C
    nop                                           ; $5C1A: $00
    add hl, bc                                    ; $5C1B: $09
    nop                                           ; $5C1C: $00
    ld bc, $C000                                  ; $5C1D: $01 $00 $C0
    ld c, b                                       ; $5C20: $48
    ld d, $26                                     ; $5C21: $16 $26
    ld e, h                                       ; $5C23: $5C
    cp $0B                                        ; $5C24: $FE $0B
    inc b                                         ; $5C26: $04
    ld [$00EF], sp                                ; $5C27: $08 $EF $00
    ld [$02F7], sp                                ; $5C2A: $08 $F7 $02
    ld [$04FF], sp                                ; $5C2D: $08 $FF $04
    ld [$0607], sp                                ; $5C30: $08 $07 $06

jr_007_5C33:
    nop                                           ; $5C33: $00
    ld b, b                                       ; $5C34: $40
    ld c, c                                       ; $5C35: $49
    ld d, $3B                                     ; $5C36: $16 $3B
    ld e, h                                       ; $5C38: $5C
    nop                                           ; $5C39: $00
    add hl, bc                                    ; $5C3A: $09
    rlca                                          ; $5C3B: $07

jr_007_5C3C:
    jr jr_007_5C33                                ; $5C3C: $18 $F5

jr_007_5C3E:
    nop                                           ; $5C3E: $00
    jr jr_007_5C3E                                ; $5C3F: $18 $FD

    ld [bc], a                                    ; $5C41: $02
    jr jr_007_5C49                                ; $5C42: $18 $05

    inc b                                         ; $5C44: $04
    jr z, jr_007_5C3C                             ; $5C45: $28 $F5

    ld b, $28                                     ; $5C47: $06 $28

jr_007_5C49:
    db $FD                                        ; $5C49: $FD
    ld [$0528], sp                                ; $5C4A: $08 $28 $05
    ld a, [bc]                                    ; $5C4D: $0A
    jr nz, jr_007_5C5D                            ; $5C4E: $20 $0D

    inc c                                         ; $5C50: $0C
    nop                                           ; $5C51: $00
    ld [$2000], sp                                ; $5C52: $08 $00 $20
    ld c, d                                       ; $5C55: $4A
    ld d, $5B                                     ; $5C56: $16 $5B
    ld e, h                                       ; $5C58: $5C
    ld bc, $0A0E                                  ; $5C59: $01 $0E $0A
    rrca                                          ; $5C5C: $0F

jr_007_5C5D:
    rst RST_28                                    ; $5C5D: $EF
    nop                                           ; $5C5E: $00
    ld [$02F7], sp                                ; $5C5F: $08 $F7 $02
    ld [$04FF], sp                                ; $5C62: $08 $FF $04
    ld c, $07                                     ; $5C65: $0E $07
    ld b, $18                                     ; $5C67: $06 $18
    rst RST_30                                    ; $5C69: $F7
    ld [$FF18], sp                                ; $5C6A: $08 $18 $FF
    ld a, [bc]                                    ; $5C6D: $0A
    ld e, $07                                     ; $5C6E: $1E $07
    inc c                                         ; $5C70: $0C
    jr z, @+$01                                   ; $5C71: $28 $FF

    ld c, $1F                                     ; $5C73: $0E $1F
    rst RST_28                                    ; $5C75: $EF
    db $10                                        ; $5C76: $10
    rrca                                          ; $5C77: $0F

jr_007_5C78:
    rst RST_20                                    ; $5C78: $E7
    ld [de], a                                    ; $5C79: $12
    nop                                           ; $5C7A: $00
    ld b, $00                                     ; $5C7B: $06 $00
    ld h, b                                       ; $5C7D: $60
    ld c, e                                       ; $5C7E: $4B
    ld d, $84                                     ; $5C7F: $16 $84
    ld e, h                                       ; $5C81: $5C
    inc b                                         ; $5C82: $04

jr_007_5C83:
    nop                                           ; $5C83: $00
    dec bc                                        ; $5C84: $0B
    jr jr_007_5C78                                ; $5C85: $18 $F1

    nop                                           ; $5C87: $00
    jr jr_007_5C83                                ; $5C88: $18 $F9

    ld [bc], a                                    ; $5C8A: $02
    jr jr_007_5C8E                                ; $5C8B: $18 $01

    inc b                                         ; $5C8D: $04

jr_007_5C8E:
    db $10                                        ; $5C8E: $10
    add hl, bc                                    ; $5C8F: $09
    ld b, $28                                     ; $5C90: $06 $28

jr_007_5C92:
    db $F4                                        ; $5C92: $F4
    ld [$FC28], sp                                ; $5C93: $08 $28 $FC
    ld a, [bc]                                    ; $5C96: $0A
    jr z, jr_007_5C9D                             ; $5C97: $28 $04

    inc c                                         ; $5C99: $0C
    ld hl, $0E0C                                  ; $5C9A: $21 $0C $0E

jr_007_5C9D:
    jr c, jr_007_5C92                             ; $5C9D: $38 $F3

    db $10                                        ; $5C9F: $10
    jr c, jr_007_5C9D                             ; $5CA0: $38 $FB

    ld [de], a                                    ; $5CA2: $12
    jr c, jr_007_5CA8                             ; $5CA3: $38 $03

    inc d                                         ; $5CA5: $14
    nop                                           ; $5CA6: $00
    rlca                                          ; $5CA7: $07

jr_007_5CA8:
    nop                                           ; $5CA8: $00
    ret nz                                        ; $5CA9: $C0

    ld c, h                                       ; $5CAA: $4C
    ld d, $B0                                     ; $5CAB: $16 $B0
    ld e, h                                       ; $5CAD: $5C
    inc b                                         ; $5CAE: $04
    nop                                           ; $5CAF: $00

jr_007_5CB0:
    ld [$F220], sp                                ; $5CB0: $08 $20 $F2
    nop                                           ; $5CB3: $00
    jr nz, jr_007_5CB0                            ; $5CB4: $20 $FA

    ld [bc], a                                    ; $5CB6: $02
    jr nz, @+$04                                  ; $5CB7: $20 $02

    inc b                                         ; $5CB9: $04
    jr z, jr_007_5CC6                             ; $5CBA: $28 $0A

    ld b, $30                                     ; $5CBC: $06 $30
    ldh a, [c]                                    ; $5CBE: $F2
    ld [$FA30], sp                                ; $5CBF: $08 $30 $FA
    ld a, [bc]                                    ; $5CC2: $0A
    jr nc, @+$04                                  ; $5CC3: $30 $02

    inc c                                         ; $5CC5: $0C

jr_007_5CC6:
    jr c, jr_007_5CD2                             ; $5CC6: $38 $0A

    ld c, $00                                     ; $5CC8: $0E $00
    ld [$C000], sp                                ; $5CCA: $08 $00 $C0
    ld c, l                                       ; $5CCD: $4D
    ld d, $E7                                     ; $5CCE: $16 $E7
    ld e, h                                       ; $5CD0: $5C
    ld [bc], a                                    ; $5CD1: $02

jr_007_5CD2:
    rrca                                          ; $5CD2: $0F
    nop                                           ; $5CD3: $00
    ld [$C000], sp                                ; $5CD4: $08 $00 $C0
    ld c, l                                       ; $5CD7: $4D
    ld d, $E7                                     ; $5CD8: $16 $E7
    ld e, h                                       ; $5CDA: $5C
    ld [bc], a                                    ; $5CDB: $02
    add hl, de                                    ; $5CDC: $19
    nop                                           ; $5CDD: $00
    ld [$C000], sp                                ; $5CDE: $08 $00 $C0
    ld c, l                                       ; $5CE1: $4D
    ld d, $E7                                     ; $5CE2: $16 $E7
    ld e, h                                       ; $5CE4: $5C
    cp $19                                        ; $5CE5: $FE $19
    ld [$EF08], sp                                ; $5CE7: $08 $08 $EF
    nop                                           ; $5CEA: $00
    ld [$02F7], sp                                ; $5CEB: $08 $F7 $02
    ld [$04FF], sp                                ; $5CEE: $08 $FF $04
    ld c, $07                                     ; $5CF1: $0E $07
    ld b, $18                                     ; $5CF3: $06 $18
    rst RST_28                                    ; $5CF5: $EF
    ld [$F718], sp                                ; $5CF6: $08 $18 $F7
    ld a, [bc]                                    ; $5CF9: $0A
    jr @+$01                                      ; $5CFA: $18 $FF

    inc c                                         ; $5CFC: $0C
    ld e, $07                                     ; $5CFD: $1E $07
    ld c, $00                                     ; $5CFF: $0E $00
    ld b, $00                                     ; $5D01: $06 $00
    ret nz                                        ; $5D03: $C0

    ld d, h                                       ; $5D04: $54
    ld d, $0A                                     ; $5D05: $16 $0A
    ld e, l                                       ; $5D07: $5D
    nop                                           ; $5D08: $00
    nop                                           ; $5D09: $00
    dec bc                                        ; $5D0A: $0B
    rla                                           ; $5D0B: $17
    ldh a, [c]                                    ; $5D0C: $F2
    nop                                           ; $5D0D: $00
    ld d, $FA                                     ; $5D0E: $16 $FA
    ld [bc], a                                    ; $5D10: $02
    ld a, [de]                                    ; $5D11: $1A
    ld [bc], a                                    ; $5D12: $02
    inc b                                         ; $5D13: $04
    jr nz, jr_007_5D20                            ; $5D14: $20 $0A

    ld b, $26                                     ; $5D16: $06 $26
    ld a, [$2A08]                                 ; $5D18: $FA $08 $2A
    ld [bc], a                                    ; $5D1B: $02
    ld a, [bc]                                    ; $5D1C: $0A
    jr nc, jr_007_5D29                            ; $5D1D: $30 $0A

    inc c                                         ; $5D1F: $0C

jr_007_5D20:
    cpl                                           ; $5D20: $2F
    or $0E                                        ; $5D21: $F6 $0E
    ld [hl-], a                                   ; $5D23: $32
    xor $10                                       ; $5D24: $EE $10
    ld a, [hl-]                                   ; $5D26: $3A
    ld [bc], a                                    ; $5D27: $02
    ld [de], a                                    ; $5D28: $12

jr_007_5D29:
    inc de                                        ; $5D29: $13
    ld [$0014], a                                 ; $5D2A: $EA $14 $00
    ld b, $00                                     ; $5D2D: $06 $00
    jr nz, jr_007_5D87                            ; $5D2F: $20 $56

    ld d, $40                                     ; $5D31: $16 $40
    ld e, l                                       ; $5D33: $5D
    nop                                           ; $5D34: $00
    nop                                           ; $5D35: $00
    nop                                           ; $5D36: $00
    rlca                                          ; $5D37: $07
    nop                                           ; $5D38: $00
    jr nz, jr_007_5D91                            ; $5D39: $20 $56

    ld d, $40                                     ; $5D3B: $16 $40
    ld e, l                                       ; $5D3D: $5D
    ld [bc], a                                    ; $5D3E: $02
    dec bc                                        ; $5D3F: $0B
    ld b, $10                                     ; $5D40: $06 $10
    rst RST_30                                    ; $5D42: $F7
    nop                                           ; $5D43: $00
    db $10                                        ; $5D44: $10
    rst RST_38                                    ; $5D45: $FF
    ld [bc], a                                    ; $5D46: $02
    jr @+$09                                      ; $5D47: $18 $07

    inc b                                         ; $5D49: $04
    dec d                                         ; $5D4A: $15
    rrca                                          ; $5D4B: $0F
    ld b, $29                                     ; $5D4C: $06 $29
    rrca                                          ; $5D4E: $0F
    ld [$EF18], sp                                ; $5D4F: $08 $18 $EF
    ld a, [bc]                                    ; $5D52: $0A
    nop                                           ; $5D53: $00
    ldh [rRP], a                                  ; $5D54: $E0 $56
    ld d, $5B                                     ; $5D56: $16 $5B
    ld e, l                                       ; $5D58: $5D
    nop                                           ; $5D59: $00
    nop                                           ; $5D5A: $00
    rlca                                          ; $5D5B: $07
    rra                                           ; $5D5C: $1F
    rst RST_30                                    ; $5D5D: $F7
    nop                                           ; $5D5E: $00

jr_007_5D5F:
    jr nz, @+$01                                  ; $5D5F: $20 $FF

    ld [bc], a                                    ; $5D61: $02
    jr z, @+$09                                   ; $5D62: $28 $07

    inc b                                         ; $5D64: $04
    cpl                                           ; $5D65: $2F
    rst RST_30                                    ; $5D66: $F7
    ld b, $30                                     ; $5D67: $06 $30
    rst RST_38                                    ; $5D69: $FF
    ld [$0738], sp                                ; $5D6A: $08 $38 $07
    ld a, [bc]                                    ; $5D6D: $0A
    jr c, jr_007_5D5F                             ; $5D6E: $38 $EF

    inc c                                         ; $5D70: $0C
    nop                                           ; $5D71: $00
    ld b, $73                                     ; $5D72: $06 $73
    ret nz                                        ; $5D74: $C0

    ld d, a                                       ; $5D75: $57
    ld d, $85                                     ; $5D76: $16 $85
    ld e, l                                       ; $5D78: $5D
    cp $00                                        ; $5D79: $FE $00
    nop                                           ; $5D7B: $00
    rlca                                          ; $5D7C: $07

jr_007_5D7D:
    halt                                          ; $5D7D: $76
    ret nz                                        ; $5D7E: $C0

    ld d, a                                       ; $5D7F: $57
    ld d, $85                                     ; $5D80: $16 $85
    ld e, l                                       ; $5D82: $5D
    inc bc                                        ; $5D83: $03
    add hl, bc                                    ; $5D84: $09
    ld b, $19                                     ; $5D85: $06 $19

jr_007_5D87:
    rst RST_18                                    ; $5D87: $DF
    nop                                           ; $5D88: $00
    ld hl, $02E7                                  ; $5D89: $21 $E7 $02
    jr jr_007_5D7D                                ; $5D8C: $18 $EF

    inc b                                         ; $5D8E: $04
    db $10                                        ; $5D8F: $10
    rst RST_30                                    ; $5D90: $F7

jr_007_5D91:
    ld b, $10                                     ; $5D91: $06 $10
    rst RST_38                                    ; $5D93: $FF
    ld [$0720], sp                                ; $5D94: $08 $20 $07
    ld a, [bc]                                    ; $5D97: $0A

jr_007_5D98:
    nop                                           ; $5D98: $00
    add b                                         ; $5D99: $80

jr_007_5D9A:
    ld e, b                                       ; $5D9A: $58
    ld d, $A0                                     ; $5D9B: $16 $A0
    ld e, l                                       ; $5D9D: $5D
    cp $00                                        ; $5D9E: $FE $00
    rlca                                          ; $5DA0: $07
    jr nz, jr_007_5D9A                            ; $5DA1: $20 $F7

jr_007_5DA3:
    nop                                           ; $5DA3: $00

jr_007_5DA4:
    jr nz, @+$01                                  ; $5DA4: $20 $FF

    ld [bc], a                                    ; $5DA6: $02
    jr z, jr_007_5D98                             ; $5DA7: $28 $EF

    inc b                                         ; $5DA9: $04
    jr nc, jr_007_5DA3                            ; $5DAA: $30 $F7

    ld b, $30                                     ; $5DAC: $06 $30
    rst RST_38                                    ; $5DAE: $FF
    ld [$0732], sp                                ; $5DAF: $08 $32 $07
    ld a, [bc]                                    ; $5DB2: $0A
    jr c, jr_007_5DA4                             ; $5DB3: $38 $EF

    inc c                                         ; $5DB5: $0C
    nop                                           ; $5DB6: $00
    ld b, $00                                     ; $5DB7: $06 $00
    ld h, b                                       ; $5DB9: $60
    ld e, c                                       ; $5DBA: $59
    ld d, $C0                                     ; $5DBB: $16 $C0
    ld e, l                                       ; $5DBD: $5D
    ld a, [$0A00]                                 ; $5DBE: $FA $00 $0A
    add hl, de                                    ; $5DC1: $19
    rst RST_30                                    ; $5DC2: $F7
    nop                                           ; $5DC3: $00
    rla                                           ; $5DC4: $17
    rst RST_38                                    ; $5DC5: $FF
    ld [bc], a                                    ; $5DC6: $02
    rla                                           ; $5DC7: $17
    rlca                                          ; $5DC8: $07
    inc b                                         ; $5DC9: $04
    rla                                           ; $5DCA: $17
    rrca                                          ; $5DCB: $0F
    ld b, $27                                     ; $5DCC: $06 $27
    rrca                                          ; $5DCE: $0F
    ld [$0727], sp                                ; $5DCF: $08 $27 $07
    ld a, [bc]                                    ; $5DD2: $0A
    scf                                           ; $5DD3: $37
    rlca                                          ; $5DD4: $07
    inc c                                         ; $5DD5: $0C
    scf                                           ; $5DD6: $37
    rrca                                          ; $5DD7: $0F
    ld c, $27                                     ; $5DD8: $0E $27
    rst RST_38                                    ; $5DDA: $FF
    db $10                                        ; $5DDB: $10
    rra                                           ; $5DDC: $1F
    rst RST_28                                    ; $5DDD: $EF

jr_007_5DDE:
    ld [de], a                                    ; $5DDE: $12
    nop                                           ; $5DDF: $00
    ld b, $74                                     ; $5DE0: $06 $74
    and b                                         ; $5DE2: $A0
    ld e, d                                       ; $5DE3: $5A
    ld d, $E9                                     ; $5DE4: $16 $E9
    ld e, l                                       ; $5DE6: $5D
    ld a, [$0300]                                 ; $5DE7: $FA $00 $03
    ld hl, $00E7                                  ; $5DEA: $21 $E7 $00
    jr z, jr_007_5DDE                             ; $5DED: $28 $EF

    ld [bc], a                                    ; $5DEF: $02
    ld hl, $04F7                                  ; $5DF0: $21 $F7 $04
    nop                                           ; $5DF3: $00
    nop                                           ; $5DF4: $00

jr_007_5DF5:
    ld e, e                                       ; $5DF5: $5B
    ld d, $FB                                     ; $5DF6: $16 $FB
    ld e, l                                       ; $5DF8: $5D
    ld a, [$0800]                                 ; $5DF9: $FA $00 $08
    jr jr_007_5DF5                                ; $5DFC: $18 $F7

    nop                                           ; $5DFE: $00
    ld hl, $02FF                                  ; $5DFF: $21 $FF $02
    ld de, $04FF                                  ; $5E02: $11 $FF $04
    add hl, de                                    ; $5E05: $19
    rlca                                          ; $5E06: $07
    ld b, $29                                     ; $5E07: $06 $29
    rlca                                          ; $5E09: $07
    ld [$0F31], sp                                ; $5E0A: $08 $31 $0F
    ld a, [bc]                                    ; $5E0D: $0A
    add hl, sp                                    ; $5E0E: $39
    rlca                                          ; $5E0F: $07
    inc c                                         ; $5E10: $0C
    dec e                                         ; $5E11: $1D
    rrca                                          ; $5E12: $0F
    ld c, $00                                     ; $5E13: $0E $00
    ld b, $74                                     ; $5E15: $06 $74
    nop                                           ; $5E17: $00

jr_007_5E18:
    ld e, h                                       ; $5E18: $5C
    ld d, $1E                                     ; $5E19: $16 $1E
    ld e, [hl]                                    ; $5E1B: $5E
    ld a, [$0300]                                 ; $5E1C: $FA $00 $03
    jr z, jr_007_5E18                             ; $5E1F: $28 $F7

    nop                                           ; $5E21: $00
    ld hl, $02EF                                  ; $5E22: $21 $EF $02
    add hl, hl                                    ; $5E25: $29
    rst RST_20                                    ; $5E26: $E7
    inc b                                         ; $5E27: $04
    nop                                           ; $5E28: $00
    ld bc, $6000                                  ; $5E29: $01 $00 $60
    ld e, h                                       ; $5E2C: $5C
    ld d, $3C                                     ; $5E2D: $16 $3C
    ld e, [hl]                                    ; $5E2F: $5E
    dec b                                         ; $5E30: $05

jr_007_5E31:
    nop                                           ; $5E31: $00
    nop                                           ; $5E32: $00
    ld bc, $6005                                  ; $5E33: $01 $05 $60
    ld e, h                                       ; $5E36: $5C
    ld d, $3C                                     ; $5E37: $16 $3C
    ld e, [hl]                                    ; $5E39: $5E
    dec b                                         ; $5E3A: $05
    nop                                           ; $5E3B: $00

jr_007_5E3C:
    ld c, $20                                     ; $5E3C: $0E $20
    rst RST_20                                    ; $5E3E: $E7
    nop                                           ; $5E3F: $00
    jr jr_007_5E31                                ; $5E40: $18 $EF

    ld [bc], a                                    ; $5E42: $02
    jr jr_007_5E3C                                ; $5E43: $18 $F7

    inc b                                         ; $5E45: $04
    jr @+$01                                      ; $5E46: $18 $FF

    ld b, $18                                     ; $5E48: $06 $18
    rlca                                          ; $5E4A: $07
    ld [$0F10], sp                                ; $5E4B: $08 $10 $0F
    ld a, [bc]                                    ; $5E4E: $0A
    db $10                                        ; $5E4F: $10
    rla                                           ; $5E50: $17

jr_007_5E51:
    inc c                                         ; $5E51: $0C
    jr nz, jr_007_5E63                            ; $5E52: $20 $0F

    ld c, $28                                     ; $5E54: $0E $28
    rst RST_28                                    ; $5E56: $EF

jr_007_5E57:
    db $10                                        ; $5E57: $10
    jr z, jr_007_5E51                             ; $5E58: $28 $F7

    ld [de], a                                    ; $5E5A: $12
    jr z, @+$01                                   ; $5E5B: $28 $FF

    inc d                                         ; $5E5D: $14
    jr c, jr_007_5E57                             ; $5E5E: $38 $F7

    ld d, $38                                     ; $5E60: $16 $38
    rst RST_38                                    ; $5E62: $FF

jr_007_5E63:
    jr jr_007_5E95                                ; $5E63: $18 $30

    rst RST_20                                    ; $5E65: $E7
    ld a, [de]                                    ; $5E66: $1A
    nop                                           ; $5E67: $00
    ld bc, $2000                                  ; $5E68: $01 $00 $20
    ld e, [hl]                                    ; $5E6B: $5E

jr_007_5E6C:
    ld d, $71                                     ; $5E6C: $16 $71
    ld e, [hl]                                    ; $5E6E: $5E
    ld bc, $0D00                                  ; $5E6F: $01 $00 $0D
    dec d                                         ; $5E72: $15
    push hl                                       ; $5E73: $E5
    nop                                           ; $5E74: $00
    db $10                                        ; $5E75: $10
    db $EC                                        ; $5E76: $EC
    ld [bc], a                                    ; $5E77: $02
    jr nz, @-$0F                                  ; $5E78: $20 $EF

    inc b                                         ; $5E7A: $04
    jr nc, jr_007_5E6C                            ; $5E7B: $30 $EF

jr_007_5E7D:
    ld b, $10                                     ; $5E7D: $06 $10
    db $F4                                        ; $5E7F: $F4

jr_007_5E80:
    ld [$FC10], sp                                ; $5E80: $08 $10 $FC
    ld a, [bc]                                    ; $5E83: $0A
    jr nz, jr_007_5E7D                            ; $5E84: $20 $F7

    inc c                                         ; $5E86: $0C
    jr nc, jr_007_5E80                            ; $5E87: $30 $F7

    ld c, $20                                     ; $5E89: $0E $20
    rst RST_38                                    ; $5E8B: $FF
    db $10                                        ; $5E8C: $10
    jr nc, @+$01                                  ; $5E8D: $30 $FF

    ld [de], a                                    ; $5E8F: $12
    inc hl                                        ; $5E90: $23
    rlca                                          ; $5E91: $07
    inc d                                         ; $5E92: $14
    inc sp                                        ; $5E93: $33
    rlca                                          ; $5E94: $07

jr_007_5E95:
    ld d, $0B                                     ; $5E95: $16 $0B
    inc b                                         ; $5E97: $04
    jr jr_007_5E9A                                ; $5E98: $18 $00

jr_007_5E9A:
    ld bc, $C075                                  ; $5E9A: $01 $75 $C0
    ld e, a                                       ; $5E9D: $5F
    ld d, $A3                                     ; $5E9E: $16 $A3
    ld e, [hl]                                    ; $5EA0: $5E
    ld bc, $0900                                  ; $5EA1: $01 $00 $09
    dec e                                         ; $5EA4: $1D
    rst RST_28                                    ; $5EA5: $EF
    nop                                           ; $5EA6: $00
    dec l                                         ; $5EA7: $2D
    rst RST_28                                    ; $5EA8: $EF
    ld [bc], a                                    ; $5EA9: $02
    dec hl                                        ; $5EAA: $2B
    rst RST_20                                    ; $5EAB: $E7
    inc b                                         ; $5EAC: $04
    inc hl                                        ; $5EAD: $23
    rst RST_18                                    ; $5EAE: $DF
    ld b, $1B                                     ; $5EAF: $06 $1B
    rst RST_20                                    ; $5EB1: $E7
    ld [$F730], sp                                ; $5EB2: $08 $30 $F7
    ld a, [bc]                                    ; $5EB5: $0A
    jr nc, @+$01                                  ; $5EB6: $30 $FF

    inc c                                         ; $5EB8: $0C
    dec a                                         ; $5EB9: $3D
    rst RST_28                                    ; $5EBA: $EF
    ld c, $13                                     ; $5EBB: $0E $13
    rst RST_18                                    ; $5EBD: $DF
    stop                                          ; $5EBE: $10 $00
    ldh [$FF60], a                                ; $5EC0: $E0 $60
    ld d, $C7                                     ; $5EC2: $16 $C7
    ld e, [hl]                                    ; $5EC4: $5E
    ld bc, $0600                                  ; $5EC5: $01 $00 $06
    jr nz, @-$07                                  ; $5EC8: $20 $F7

    nop                                           ; $5ECA: $00
    jr nz, @+$01                                  ; $5ECB: $20 $FF

    ld [bc], a                                    ; $5ECD: $02
    jr nz, @+$09                                  ; $5ECE: $20 $07

    inc b                                         ; $5ED0: $04
    db $10                                        ; $5ED1: $10
    rst RST_30                                    ; $5ED2: $F7
    ld b, $10                                     ; $5ED3: $06 $10
    rst RST_38                                    ; $5ED5: $FF

jr_007_5ED6:
    ld [$0710], sp                                ; $5ED6: $08 $10 $07

jr_007_5ED9:
    ld a, [bc]                                    ; $5ED9: $0A
    nop                                           ; $5EDA: $00
    ld bc, $A000                                  ; $5EDB: $01 $00 $A0
    ld h, c                                       ; $5EDE: $61
    ld d, $E4                                     ; $5EDF: $16 $E4
    ld e, [hl]                                    ; $5EE1: $5E
    ld bc, $0800                                  ; $5EE2: $01 $00 $08
    jr nz, jr_007_5ED6                            ; $5EE5: $20 $EF

    nop                                           ; $5EE7: $00
    jr nc, jr_007_5ED9                            ; $5EE8: $30 $EF

    ld [bc], a                                    ; $5EEA: $02
    jr nc, @-$07                                  ; $5EEB: $30 $F7

    inc b                                         ; $5EED: $04
    jr nc, @+$01                                  ; $5EEE: $30 $FF

    ld b, $20                                     ; $5EF0: $06 $20
    rst RST_20                                    ; $5EF2: $E7
    ld [$E730], sp                                ; $5EF3: $08 $30 $E7
    ld a, [bc]                                    ; $5EF6: $0A
    db $10                                        ; $5EF7: $10
    rst RST_28                                    ; $5EF8: $EF
    inc c                                         ; $5EF9: $0C
    jr c, jr_007_5F03                             ; $5EFA: $38 $07

    ld c, $00                                     ; $5EFC: $0E $00
    and b                                         ; $5EFE: $A0
    ld h, d                                       ; $5EFF: $62
    ld d, $05                                     ; $5F00: $16 $05
    ld e, a                                       ; $5F02: $5F

jr_007_5F03:
    ld [de], a                                    ; $5F03: $12
    nop                                           ; $5F04: $00
    dec b                                         ; $5F05: $05
    dec hl                                        ; $5F06: $2B
    rst RST_20                                    ; $5F07: $E7
    nop                                           ; $5F08: $00
    dec hl                                        ; $5F09: $2B
    rst RST_28                                    ; $5F0A: $EF
    ld [bc], a                                    ; $5F0B: $02
    inc sp                                        ; $5F0C: $33
    rst RST_30                                    ; $5F0D: $F7

jr_007_5F0E:
    inc b                                         ; $5F0E: $04
    dec sp                                        ; $5F0F: $3B
    rst RST_20                                    ; $5F10: $E7
    ld b, $3B                                     ; $5F11: $06 $3B
    rst RST_28                                    ; $5F13: $EF
    ld [$4000], sp                                ; $5F14: $08 $00 $40
    ld h, e                                       ; $5F17: $63
    ld d, $1D                                     ; $5F18: $16 $1D
    ld e, a                                       ; $5F1A: $5F
    ld a, [bc]                                    ; $5F1B: $0A
    ld [$2106], sp                                ; $5F1C: $08 $06 $21
    ldh a, [rP1]                                  ; $5F1F: $F0 $00
    ld hl, $02F8                                  ; $5F21: $21 $F8 $02
    jr z, jr_007_5F0E                             ; $5F24: $28 $E8

    inc b                                         ; $5F26: $04
    ld sp, $06F0                                  ; $5F27: $31 $F0 $06
    ld sp, $08F8                                  ; $5F2A: $31 $F8 $08
    jr nc, jr_007_5F2F                            ; $5F2D: $30 $00

jr_007_5F2F:
    ld a, [bc]                                    ; $5F2F: $0A
    nop                                           ; $5F30: $00
    ld c, d                                       ; $5F31: $4A

jr_007_5F32:
    ld [hl], a                                    ; $5F32: $77
    nop                                           ; $5F33: $00
    ld h, h                                       ; $5F34: $64

jr_007_5F35:
    ld d, $44                                     ; $5F35: $16 $44
    ld e, a                                       ; $5F37: $5F
    db $FD                                        ; $5F38: $FD
    nop                                           ; $5F39: $00
    nop                                           ; $5F3A: $00
    ld [$007B], sp                                ; $5F3B: $08 $7B $00
    ld h, h                                       ; $5F3E: $64
    ld d, $44                                     ; $5F3F: $16 $44
    ld e, a                                       ; $5F41: $5F
    ld b, $F6                                     ; $5F42: $06 $F6
    add hl, bc                                    ; $5F44: $09
    ld a, [hl-]                                   ; $5F45: $3A
    ldh [rP1], a                                  ; $5F46: $E0 $00
    jr z, jr_007_5F32                             ; $5F48: $28 $E8

    ld [bc], a                                    ; $5F4A: $02
    jr c, jr_007_5F35                             ; $5F4B: $38 $E8

    inc b                                         ; $5F4D: $04
    daa                                           ; $5F4E: $27
    ldh a, [rTMA]                                 ; $5F4F: $F0 $06
    scf                                           ; $5F51: $37
    ldh a, [$FF08]                                ; $5F52: $F0 $08
    ld e, $F8                                     ; $5F54: $1E $F8
    ld a, [bc]                                    ; $5F56: $0A
    ld l, $F8                                     ; $5F57: $2E $F8
    inc c                                         ; $5F59: $0C
    ld a, [hl+]                                   ; $5F5A: $2A
    nop                                           ; $5F5B: $00
    ld c, $3A                                     ; $5F5C: $0E $3A
    nop                                           ; $5F5E: $00
    stop                                          ; $5F5F: $10 $00
    ld bc, $2000                                  ; $5F61: $01 $00 $20
    ld h, l                                       ; $5F64: $65
    ld d, $6A                                     ; $5F65: $16 $6A
    ld e, a                                       ; $5F67: $5F
    ld b, $F8                                     ; $5F68: $06 $F8
    dec bc                                        ; $5F6A: $0B
    inc h                                         ; $5F6B: $24
    rst RST_20                                    ; $5F6C: $E7
    nop                                           ; $5F6D: $00
    ld a, [hl+]                                   ; $5F6E: $2A
    rst RST_28                                    ; $5F6F: $EF
    ld [bc], a                                    ; $5F70: $02
    add hl, hl                                    ; $5F71: $29
    rst RST_30                                    ; $5F72: $F7
    inc b                                         ; $5F73: $04
    ld l, $FF                                     ; $5F74: $2E $FF
    ld b, $2E                                     ; $5F76: $06 $2E
    rlca                                          ; $5F78: $07
    ld [$0F2D], sp                                ; $5F79: $08 $2D $0F
    ld a, [bc]                                    ; $5F7C: $0A
    jr c, @-$17                                   ; $5F7D: $38 $E7

    inc c                                         ; $5F7F: $0C
    ld a, [hl-]                                   ; $5F80: $3A
    rst RST_28                                    ; $5F81: $EF
    ld c, $39                                     ; $5F82: $0E $39
    rst RST_30                                    ; $5F84: $F7
    db $10                                        ; $5F85: $10
    ld a, $FF                                     ; $5F86: $3E $FF
    ld [de], a                                    ; $5F88: $12
    ld b, b                                       ; $5F89: $40

jr_007_5F8A:
    rlca                                          ; $5F8A: $07

jr_007_5F8B:
    inc d                                         ; $5F8B: $14
    nop                                           ; $5F8C: $00
    ld bc, $8079                                  ; $5F8D: $01 $79 $80
    ld h, [hl]                                    ; $5F90: $66
    ld d, $96                                     ; $5F91: $16 $96
    ld e, a                                       ; $5F93: $5F
    inc bc                                        ; $5F94: $03
    ld hl, sp+$08                                 ; $5F95: $F8 $08
    ld [$00EF], sp                                ; $5F97: $08 $EF $00
    jr jr_007_5F8B                                ; $5F9A: $18 $EF

    ld [bc], a                                    ; $5F9C: $02

jr_007_5F9D:
    ld [$04E7], sp                                ; $5F9D: $08 $E7 $04
    db $10                                        ; $5FA0: $10
    rst RST_18                                    ; $5FA1: $DF
    ld b, $18                                     ; $5FA2: $06 $18
    rst RST_20                                    ; $5FA4: $E7
    ld [$E728], sp                                ; $5FA5: $08 $28 $E7
    ld a, [bc]                                    ; $5FA8: $0A
    jr nz, jr_007_5F8A                            ; $5FA9: $20 $DF

    inc c                                         ; $5FAB: $0C
    jr z, jr_007_5F9D                             ; $5FAC: $28 $EF

    ld c, $00                                     ; $5FAE: $0E $00
    add b                                         ; $5FB0: $80
    ld h, a                                       ; $5FB1: $67
    ld d, $B7                                     ; $5FB2: $16 $B7

jr_007_5FB4:
    ld e, a                                       ; $5FB4: $5F
    inc bc                                        ; $5FB5: $03
    ld hl, sp+$08                                 ; $5FB6: $F8 $08
    ld [$00F7], sp                                ; $5FB8: $08 $F7 $00
    jr jr_007_5FB4                                ; $5FBB: $18 $F7

    ld [bc], a                                    ; $5FBD: $02
    ld e, $FF                                     ; $5FBE: $1E $FF
    inc b                                         ; $5FC0: $04
    jr z, @-$07                                   ; $5FC1: $28 $F7

    ld b, $38                                     ; $5FC3: $06 $38
    rst RST_30                                    ; $5FC5: $F7
    ld [$FF2E], sp                                ; $5FC6: $08 $2E $FF
    ld a, [bc]                                    ; $5FC9: $0A
    ld h, $07                                     ; $5FCA: $26 $07
    inc c                                         ; $5FCC: $0C
    ld a, $FF                                     ; $5FCD: $3E $FF

jr_007_5FCF:
    ld c, $00                                     ; $5FCF: $0E $00
    ld bc, $8000                                  ; $5FD1: $01 $00 $80
    ld l, b                                       ; $5FD4: $68
    ld d, $DA                                     ; $5FD5: $16 $DA
    ld e, a                                       ; $5FD7: $5F
    inc bc                                        ; $5FD8: $03
    ld hl, sp+$04                                 ; $5FD9: $F8 $04
    ld [$00EF], sp                                ; $5FDB: $08 $EF $00
    jr jr_007_5FCF                                ; $5FDE: $18 $EF

    ld [bc], a                                    ; $5FE0: $02
    ld a, [hl+]                                   ; $5FE1: $2A
    rst RST_28                                    ; $5FE2: $EF
    inc b                                         ; $5FE3: $04
    nop                                           ; $5FE4: $00
    rst RST_20                                    ; $5FE5: $E7
    ld b, $00                                     ; $5FE6: $06 $00
    ld bc, $0078                                  ; $5FE8: $01 $78 $00

jr_007_5FEB:
    ld l, c                                       ; $5FEB: $69
    ld d, $F1                                     ; $5FEC: $16 $F1
    ld e, a                                       ; $5FEE: $5F
    ld [bc], a                                    ; $5FEF: $02
    nop                                           ; $5FF0: $00
    inc c                                         ; $5FF1: $0C
    dec h                                         ; $5FF2: $25
    pop hl                                        ; $5FF3: $E1
    nop                                           ; $5FF4: $00
    ld a, [hl+]                                   ; $5FF5: $2A

jr_007_5FF6:
    jp hl                                         ; $5FF6: $E9


    ld [bc], a                                    ; $5FF7: $02
    jr nz, jr_007_5FEB                            ; $5FF8: $20 $F1

jr_007_5FFA:
    inc b                                         ; $5FFA: $04
    jr nz, jr_007_5FF6                            ; $5FFB: $20 $F9

    ld b, $2B                                     ; $5FFD: $06 $2B
    ld bc, $1508                                  ; $5FFF: $01 $08 $15
    pop hl                                        ; $6002: $E1
    ld a, [bc]                                    ; $6003: $0A
    ld a, [de]                                    ; $6004: $1A
    jp hl                                         ; $6005: $E9


    inc c                                         ; $6006: $0C
    jr nc, jr_007_5FFA                            ; $6007: $30 $F1

    ld c, $30                                     ; $6009: $0E $30
    ld sp, hl                                     ; $600B: $F9
    db $10                                        ; $600C: $10
    dec de                                        ; $600D: $1B
    ld bc, $1D12                                  ; $600E: $01 $12 $1D
    add hl, bc                                    ; $6011: $09
    inc d                                         ; $6012: $14
    db $10                                        ; $6013: $10
    push af                                       ; $6014: $F5
    ld d, $00                                     ; $6015: $16 $00
    ld [$807A], sp                                ; $6017: $08 $7A $80
    ld l, d                                       ; $601A: $6A
    ld d, $20                                     ; $601B: $16 $20
    ld h, b                                       ; $601D: $60
    ld sp, hl                                     ; $601E: $F9
    db $10                                        ; $601F: $10
    inc b                                         ; $6020: $04
    db $10                                        ; $6021: $10
    rst RST_18                                    ; $6022: $DF
    nop                                           ; $6023: $00
    db $10                                        ; $6024: $10
    rst RST_20                                    ; $6025: $E7
    ld [bc], a                                    ; $6026: $02

jr_007_6027:
    ld [$04EF], sp                                ; $6027: $08 $EF $04
    nop                                           ; $602A: $00
    rst RST_20                                    ; $602B: $E7
    ld b, $00                                     ; $602C: $06 $00
    nop                                           ; $602E: $00
    ld l, e                                       ; $602F: $6B
    ld d, $35                                     ; $6030: $16 $35
    ld h, b                                       ; $6032: $60
    ld sp, hl                                     ; $6033: $F9
    db $10                                        ; $6034: $10

jr_007_6035:
    ld a, [bc]                                    ; $6035: $0A
    jr jr_007_6027                                ; $6036: $18 $EF

    nop                                           ; $6038: $00
    ld [$02F7], sp                                ; $6039: $08 $F7 $02
    jr jr_007_6035                                ; $603C: $18 $F7

    inc b                                         ; $603E: $04
    ld [$06FF], sp                                ; $603F: $08 $FF $06
    ld [$0807], sp                                ; $6042: $08 $07 $08
    jr @+$01                                      ; $6045: $18 $FF

    ld a, [bc]                                    ; $6047: $0A
    jr jr_007_6051                                ; $6048: $18 $07

    inc c                                         ; $604A: $0C

jr_007_604B:
    jr jr_007_605C                                ; $604B: $18 $0F

    ld c, $18                                     ; $604D: $0E $18
    rla                                           ; $604F: $17
    db $10                                        ; $6050: $10

jr_007_6051:
    ld [$120F], sp                                ; $6051: $08 $0F $12
    nop                                           ; $6054: $00
    ld [$407A], sp                                ; $6055: $08 $7A $40
    ld l, h                                       ; $6058: $6C
    ld d, $5E                                     ; $6059: $16 $5E
    ld h, b                                       ; $605B: $60

jr_007_605C:
    ld sp, hl                                     ; $605C: $F9
    ld [$1803], sp                                ; $605D: $08 $03 $18
    rst RST_18                                    ; $6060: $DF
    nop                                           ; $6061: $00
    jr jr_007_604B                                ; $6062: $18 $E7

    ld [bc], a                                    ; $6064: $02
    db $10                                        ; $6065: $10
    rst RST_28                                    ; $6066: $EF
    inc b                                         ; $6067: $04
    nop                                           ; $6068: $00
    ld bc, $A002                                  ; $6069: $01 $02 $A0
    ld l, h                                       ; $606C: $6C
    ld d, $72                                     ; $606D: $16 $72

jr_007_606F:
    ld h, b                                       ; $606F: $60
    inc b                                         ; $6070: $04
    nop                                           ; $6071: $00
    ld [$EF20], sp                                ; $6072: $08 $20 $EF
    nop                                           ; $6075: $00
    jr nz, jr_007_606F                            ; $6076: $20 $F7

    ld [bc], a                                    ; $6078: $02
    jr nz, @+$01                                  ; $6079: $20 $FF

    inc b                                         ; $607B: $04
    jr nz, jr_007_6085                            ; $607C: $20 $07

    ld b, $30                                     ; $607E: $06 $30
    rst RST_28                                    ; $6080: $EF
    ld [$F730], sp                                ; $6081: $08 $30 $F7
    ld a, [bc]                                    ; $6084: $0A

jr_007_6085:
    jr nc, @+$01                                  ; $6085: $30 $FF

    inc c                                         ; $6087: $0C
    jr nc, @+$09                                  ; $6088: $30 $07

    ld c, $00                                     ; $608A: $0E $00
    ld bc, $A005                                  ; $608C: $01 $05 $A0
    ld l, l                                       ; $608F: $6D
    ld d, $95                                     ; $6090: $16 $95
    ld h, b                                       ; $6092: $60
    ld [bc], a                                    ; $6093: $02
    nop                                           ; $6094: $00
    add hl, bc                                    ; $6095: $09
    jr @-$17                                      ; $6096: $18 $E7

    nop                                           ; $6098: $00
    jr z, @-$17                                   ; $6099: $28 $E7

    ld [bc], a                                    ; $609B: $02

jr_007_609C:
    db $10                                        ; $609C: $10
    rst RST_28                                    ; $609D: $EF
    inc b                                         ; $609E: $04
    db $10                                        ; $609F: $10
    rst RST_30                                    ; $60A0: $F7
    ld b, $20                                     ; $60A1: $06 $20
    rst RST_28                                    ; $60A3: $EF
    ld [$F720], sp                                ; $60A4: $08 $20 $F7
    ld a, [bc]                                    ; $60A7: $0A
    jr nz, @+$01                                  ; $60A8: $20 $FF

    inc c                                         ; $60AA: $0C
    jr nc, jr_007_609C                            ; $60AB: $30 $EF

    ld c, $30                                     ; $60AD: $0E $30
    rst RST_30                                    ; $60AF: $F7
    stop                                          ; $60B0: $10 $00
    ret nz                                        ; $60B2: $C0

    ld l, [hl]                                    ; $60B3: $6E
    ld d, $B9                                     ; $60B4: $16 $B9
    ld h, b                                       ; $60B6: $60
    ld [bc], a                                    ; $60B7: $02
    nop                                           ; $60B8: $00
    rlca                                          ; $60B9: $07
    db $10                                        ; $60BA: $10
    rst RST_38                                    ; $60BB: $FF
    nop                                           ; $60BC: $00
    db $10                                        ; $60BD: $10
    rlca                                          ; $60BE: $07
    ld [bc], a                                    ; $60BF: $02
    jr nz, @+$09                                  ; $60C0: $20 $07

    inc b                                         ; $60C2: $04
    jr nz, jr_007_60D4                            ; $60C3: $20 $0F

    ld b, $30                                     ; $60C5: $06 $30
    rst RST_38                                    ; $60C7: $FF
    ld [$0737], sp                                ; $60C8: $08 $37 $07
    ld a, [bc]                                    ; $60CB: $0A
    db $10                                        ; $60CC: $10
    rrca                                          ; $60CD: $0F
    inc c                                         ; $60CE: $0C
    nop                                           ; $60CF: $00
    ld bc, $A000                                  ; $60D0: $01 $00 $A0
    ld l, a                                       ; $60D3: $6F

jr_007_60D4:
    ld d, $D9                                     ; $60D4: $16 $D9
    ld h, b                                       ; $60D6: $60
    ld [bc], a                                    ; $60D7: $02
    nop                                           ; $60D8: $00
    add hl, bc                                    ; $60D9: $09
    rla                                           ; $60DA: $17
    rst RST_20                                    ; $60DB: $E7
    nop                                           ; $60DC: $00
    daa                                           ; $60DD: $27
    rst RST_20                                    ; $60DE: $E7
    ld [bc], a                                    ; $60DF: $02
    inc d                                         ; $60E0: $14
    rst RST_28                                    ; $60E1: $EF
    inc b                                         ; $60E2: $04
    inc h                                         ; $60E3: $24
    rst RST_28                                    ; $60E4: $EF
    ld b, $14                                     ; $60E5: $06 $14
    rst RST_30                                    ; $60E7: $F7
    ld [$FF20], sp                                ; $60E8: $08 $20 $FF
    ld a, [bc]                                    ; $60EB: $0A
    inc h                                         ; $60EC: $24
    rst RST_30                                    ; $60ED: $F7
    inc c                                         ; $60EE: $0C
    inc [hl]                                      ; $60EF: $34
    rst RST_28                                    ; $60F0: $EF
    ld c, $34                                     ; $60F1: $0E $34
    rst RST_30                                    ; $60F3: $F7
    stop                                          ; $60F4: $10 $00
    ld bc, $C000                                  ; $60F6: $01 $00 $C0
    ld [hl], b                                    ; $60F9: $70
    ld d, $FF                                     ; $60FA: $16 $FF
    ld h, b                                       ; $60FC: $60
    ld [bc], a                                    ; $60FD: $02
    nop                                           ; $60FE: $00
    rlca                                          ; $60FF: $07
    add hl, de                                    ; $6100: $19
    rst RST_20                                    ; $6101: $E7
    nop                                           ; $6102: $00
    add hl, de                                    ; $6103: $19
    rst RST_28                                    ; $6104: $EF
    ld [bc], a                                    ; $6105: $02
    inc d                                         ; $6106: $14
    rst RST_30                                    ; $6107: $F7
    inc b                                         ; $6108: $04
    jr nz, @+$01                                  ; $6109: $20 $FF

    ld b, $24                                     ; $610B: $06 $24
    rst RST_30                                    ; $610D: $F7
    ld [$EF30], sp                                ; $610E: $08 $30 $EF

jr_007_6111:
    ld a, [bc]                                    ; $6111: $0A
    inc [hl]                                      ; $6112: $34
    rst RST_30                                    ; $6113: $F7
    inc c                                         ; $6114: $0C
    nop                                           ; $6115: $00
    ld bc, $A000                                  ; $6116: $01 $00 $A0
    ld [hl], c                                    ; $6119: $71
    ld d, $1F                                     ; $611A: $16 $1F

jr_007_611C:
    ld h, c                                       ; $611C: $61
    db $FC                                        ; $611D: $FC
    ld [bc], a                                    ; $611E: $02
    dec c                                         ; $611F: $0D
    jr jr_007_6111                                ; $6120: $18 $EF

    nop                                           ; $6122: $00
    jr jr_007_611C                                ; $6123: $18 $F7

    ld [bc], a                                    ; $6125: $02
    db $10                                        ; $6126: $10
    rst RST_38                                    ; $6127: $FF
    inc b                                         ; $6128: $04
    db $10                                        ; $6129: $10
    rlca                                          ; $612A: $07
    ld b, $10                                     ; $612B: $06 $10
    rrca                                          ; $612D: $0F
    ld [$FF20], sp                                ; $612E: $08 $20 $FF
    ld a, [bc]                                    ; $6131: $0A
    jr nz, jr_007_613B                            ; $6132: $20 $07

jr_007_6134:
    inc c                                         ; $6134: $0C
    jr nz, jr_007_6146                            ; $6135: $20 $0F

    ld c, $20                                     ; $6137: $0E $20
    rla                                           ; $6139: $17
    db $10                                        ; $613A: $10

jr_007_613B:
    jr z, jr_007_6134                             ; $613B: $28 $F7

    ld [de], a                                    ; $613D: $12

jr_007_613E:
    jr nc, @+$01                                  ; $613E: $30 $FF

    inc d                                         ; $6140: $14
    jr nc, @+$09                                  ; $6141: $30 $07

    ld d, $38                                     ; $6143: $16 $38
    rst RST_30                                    ; $6145: $F7

jr_007_6146:
    jr jr_007_6148                                ; $6146: $18 $00

jr_007_6148:
    ld bc, $4000                                  ; $6148: $01 $00 $40
    ld [hl], e                                    ; $614B: $73
    ld d, $51                                     ; $614C: $16 $51
    ld h, c                                       ; $614E: $61
    inc c                                         ; $614F: $0C
    ld [bc], a                                    ; $6150: $02
    dec c                                         ; $6151: $0D
    jr @-$1F                                      ; $6152: $18 $DF

    nop                                           ; $6154: $00
    jr jr_007_613E                                ; $6155: $18 $E7

    ld [bc], a                                    ; $6157: $02
    db $10                                        ; $6158: $10
    rst RST_28                                    ; $6159: $EF
    inc b                                         ; $615A: $04
    db $10                                        ; $615B: $10
    rst RST_30                                    ; $615C: $F7

jr_007_615D:
    ld b, $10                                     ; $615D: $06 $10
    rst RST_38                                    ; $615F: $FF
    ld [$EF20], sp                                ; $6160: $08 $20 $EF
    ld a, [bc]                                    ; $6163: $0A
    jr nz, jr_007_615D                            ; $6164: $20 $F7

    inc c                                         ; $6166: $0C
    jr nz, @+$01                                  ; $6167: $20 $FF

    ld c, $20                                     ; $6169: $0E $20
    rlca                                          ; $616B: $07

jr_007_616C:
    db $10                                        ; $616C: $10
    jr z, @-$17                                   ; $616D: $28 $E7

    ld [de], a                                    ; $616F: $12
    jr nc, @-$0F                                  ; $6170: $30 $EF

    inc d                                         ; $6172: $14
    jr nc, jr_007_616C                            ; $6173: $30 $F7

    ld d, $38                                     ; $6175: $16 $38
    rst RST_20                                    ; $6177: $E7
    jr jr_007_617A                                ; $6178: $18 $00

jr_007_617A:
    ld bc, $E000                                  ; $617A: $01 $00 $E0
    ld [hl], h                                    ; $617D: $74
    ld d, $83                                     ; $617E: $16 $83
    ld h, c                                       ; $6180: $61
    ei                                            ; $6181: $FB
    nop                                           ; $6182: $00
    dec c                                         ; $6183: $0D
    ld [de], a                                    ; $6184: $12
    rst RST_28                                    ; $6185: $EF
    nop                                           ; $6186: $00
    dec d                                         ; $6187: $15
    rst RST_30                                    ; $6188: $F7
    ld [bc], a                                    ; $6189: $02
    dec d                                         ; $618A: $15
    rst RST_38                                    ; $618B: $FF
    inc b                                         ; $618C: $04
    dec d                                         ; $618D: $15
    rlca                                          ; $618E: $07
    ld b, $14                                     ; $618F: $06 $14
    rrca                                          ; $6191: $0F
    ld [$170F], sp                                ; $6192: $08 $0F $17
    ld a, [bc]                                    ; $6195: $0A
    dec h                                         ; $6196: $25
    db $FD                                        ; $6197: $FD
    inc c                                         ; $6198: $0C
    dec h                                         ; $6199: $25
    dec b                                         ; $619A: $05
    ld c, $25                                     ; $619B: $0E $25
    dec c                                         ; $619D: $0D
    db $10                                        ; $619E: $10
    dec h                                         ; $619F: $25
    dec d                                         ; $61A0: $15
    ld [de], a                                    ; $61A1: $12
    jr nc, @-$06                                  ; $61A2: $30 $F8

    inc d                                         ; $61A4: $14
    dec [hl]                                      ; $61A5: $35
    nop                                           ; $61A6: $00
    ld d, $35                                     ; $61A7: $16 $35
    ld [$0018], sp                                ; $61A9: $08 $18 $00
    ld bc, $8000                                  ; $61AC: $01 $00 $80
    halt                                          ; $61AF: $76
    ld d, $B5                                     ; $61B0: $16 $B5
    ld h, c                                       ; $61B2: $61

jr_007_61B3:
    nop                                           ; $61B3: $00
    nop                                           ; $61B4: $00
    dec c                                         ; $61B5: $0D
    jr @-$0E                                      ; $61B6: $18 $F0

    nop                                           ; $61B8: $00
    jr jr_007_61B3                                ; $61B9: $18 $F8

    ld [bc], a                                    ; $61BB: $02
    jr jr_007_61BE                                ; $61BC: $18 $00

jr_007_61BE:
    inc b                                         ; $61BE: $04

jr_007_61BF:
    jr @+$0A                                      ; $61BF: $18 $08

    ld b, $28                                     ; $61C1: $06 $28
    ldh a, [$FF08]                                ; $61C3: $F0 $08
    jr z, jr_007_61BF                             ; $61C5: $28 $F8

    ld a, [bc]                                    ; $61C7: $0A
    jr z, jr_007_61CA                             ; $61C8: $28 $00

jr_007_61CA:
    inc c                                         ; $61CA: $0C
    jr z, @+$0A                                   ; $61CB: $28 $08

    ld c, $22                                     ; $61CD: $0E $22
    db $10                                        ; $61CF: $10
    db $10                                        ; $61D0: $10
    jr c, @-$08                                   ; $61D1: $38 $F6

    ld [de], a                                    ; $61D3: $12
    jr c, jr_007_61DB                             ; $61D4: $38 $05

    inc d                                         ; $61D6: $14
    jr c, jr_007_61E6                             ; $61D7: $38 $0D

    ld d, $3B                                     ; $61D9: $16 $3B

jr_007_61DB:
    xor $18                                       ; $61DB: $EE $18
    nop                                           ; $61DD: $00
    ld bc, $2000                                  ; $61DE: $01 $00 $20
    ld a, b                                       ; $61E1: $78
    ld d, $E7                                     ; $61E2: $16 $E7
    ld h, c                                       ; $61E4: $61

jr_007_61E5:
    nop                                           ; $61E5: $00

jr_007_61E6:
    nop                                           ; $61E6: $00
    dec c                                         ; $61E7: $0D
    jr @-$0E                                      ; $61E8: $18 $F0

    nop                                           ; $61EA: $00
    jr jr_007_61E5                                ; $61EB: $18 $F8

    ld [bc], a                                    ; $61ED: $02
    jr jr_007_61F0                                ; $61EE: $18 $00

jr_007_61F0:
    inc b                                         ; $61F0: $04

jr_007_61F1:
    jr @+$0A                                      ; $61F1: $18 $08

    ld b, $28                                     ; $61F3: $06 $28
    ldh a, [$FF08]                                ; $61F5: $F0 $08
    jr z, jr_007_61F1                             ; $61F7: $28 $F8

    ld a, [bc]                                    ; $61F9: $0A
    jr z, jr_007_61FC                             ; $61FA: $28 $00

jr_007_61FC:
    inc c                                         ; $61FC: $0C
    jr z, @+$0A                                   ; $61FD: $28 $08

jr_007_61FF:
    ld c, $23                                     ; $61FF: $0E $23
    db $10                                        ; $6201: $10
    db $10                                        ; $6202: $10
    jr c, @-$0F                                   ; $6203: $38 $EF

    ld [de], a                                    ; $6205: $12
    jr c, jr_007_61FF                             ; $6206: $38 $F7

    inc d                                         ; $6208: $14
    jr c, jr_007_6210                             ; $6209: $38 $05

    ld d, $38                                     ; $620B: $16 $38
    dec c                                         ; $620D: $0D
    jr jr_007_6210                                ; $620E: $18 $00

jr_007_6210:
    ld bc, $C000                                  ; $6210: $01 $00 $C0
    ld a, c                                       ; $6213: $79
    ld d, $19                                     ; $6214: $16 $19
    ld h, d                                       ; $6216: $62

jr_007_6217:
    ld [bc], a                                    ; $6217: $02
    nop                                           ; $6218: $00
    ld [$F020], sp                                ; $6219: $08 $20 $F0
    nop                                           ; $621C: $00
    jr nz, jr_007_6217                            ; $621D: $20 $F8

    ld [bc], a                                    ; $621F: $02
    jr nz, jr_007_6222                            ; $6220: $20 $00

jr_007_6222:
    inc b                                         ; $6222: $04
    jr nz, @+$0A                                  ; $6223: $20 $08

    ld b, $10                                     ; $6225: $06 $10
    ldh a, [$FF08]                                ; $6227: $F0 $08
    db $10                                        ; $6229: $10
    ld hl, sp+$0A                                 ; $622A: $F8 $0A
    stop                                          ; $622C: $10 $00

jr_007_622E:
    inc c                                         ; $622E: $0C
    db $10                                        ; $622F: $10
    ld [$000E], sp                                ; $6230: $08 $0E $00
    ret nz                                        ; $6233: $C0

    ld a, d                                       ; $6234: $7A
    ld d, $3A                                     ; $6235: $16 $3A
    ld h, d                                       ; $6237: $62
    ld [bc], a                                    ; $6238: $02

jr_007_6239:
    nop                                           ; $6239: $00
    inc bc                                        ; $623A: $03
    jr nc, jr_007_622E                            ; $623B: $30 $F1

    nop                                           ; $623D: $00
    jr nc, jr_007_6239                            ; $623E: $30 $F9

    ld [bc], a                                    ; $6240: $02
    jr nc, jr_007_6244                            ; $6241: $30 $01

    inc b                                         ; $6243: $04

jr_007_6244:
    nop                                           ; $6244: $00
    ld bc, $2000                                  ; $6245: $01 $00 $20
    ld a, e                                       ; $6248: $7B
    ld d, $4E                                     ; $6249: $16 $4E
    ld h, d                                       ; $624B: $62

jr_007_624C:
    ld [bc], a                                    ; $624C: $02
    nop                                           ; $624D: $00
    ld [$F020], sp                                ; $624E: $08 $20 $F0
    nop                                           ; $6251: $00
    jr nz, jr_007_624C                            ; $6252: $20 $F8

    ld [bc], a                                    ; $6254: $02
    jr nz, jr_007_6257                            ; $6255: $20 $00

jr_007_6257:
    inc b                                         ; $6257: $04
    jr nz, @+$0A                                  ; $6258: $20 $08

    ld b, $10                                     ; $625A: $06 $10
    ldh a, [$FF08]                                ; $625C: $F0 $08
    db $10                                        ; $625E: $10
    ld hl, sp+$0A                                 ; $625F: $F8 $0A
    stop                                          ; $6261: $10 $00
    inc c                                         ; $6263: $0C
    db $10                                        ; $6264: $10
    ld [$000E], sp                                ; $6265: $08 $0E $00
    ld bc, $2000                                  ; $6268: $01 $00 $20
    ld a, h                                       ; $626B: $7C
    ld d, $71                                     ; $626C: $16 $71
    ld h, d                                       ; $626E: $62

jr_007_626F:
    ld [bc], a                                    ; $626F: $02
    nop                                           ; $6270: $00
    dec bc                                        ; $6271: $0B
    add hl, de                                    ; $6272: $19
    ldh a, [rP1]                                  ; $6273: $F0 $00
    jr jr_007_626F                                ; $6275: $18 $F8

    ld [bc], a                                    ; $6277: $02
    dec e                                         ; $6278: $1D
    nop                                           ; $6279: $00
    inc b                                         ; $627A: $04

jr_007_627B:
    jr jr_007_6285                                ; $627B: $18 $08

    ld b, $29                                     ; $627D: $06 $29
    ldh a, [$FF08]                                ; $627F: $F0 $08
    jr z, jr_007_627B                             ; $6281: $28 $F8

    ld a, [bc]                                    ; $6283: $0A
    dec l                                         ; $6284: $2D

jr_007_6285:
    nop                                           ; $6285: $00
    inc c                                         ; $6286: $0C

jr_007_6287:
    jr z, jr_007_6291                             ; $6287: $28 $08

    ld c, $39                                     ; $6289: $0E $39
    ldh a, [rNR10]                                ; $628B: $F0 $10
    jr c, jr_007_6287                             ; $628D: $38 $F8

    ld [de], a                                    ; $628F: $12
    dec a                                         ; $6290: $3D

jr_007_6291:
    nop                                           ; $6291: $00
    inc d                                         ; $6292: $14
    nop                                           ; $6293: $00
    ld bc, $8000                                  ; $6294: $01 $00 $80
    ld a, l                                       ; $6297: $7D
    ld d, $A7                                     ; $6298: $16 $A7
    ld h, d                                       ; $629A: $62
    ld [bc], a                                    ; $629B: $02

jr_007_629C:
    db $EC                                        ; $629C: $EC
    jr nz, jr_007_62A0                            ; $629D: $20 $01

    nop                                           ; $629F: $00

jr_007_62A0:
    add b                                         ; $62A0: $80
    ld a, l                                       ; $62A1: $7D
    ld d, $A7                                     ; $62A2: $16 $A7
    ld h, d                                       ; $62A4: $62
    nop                                           ; $62A5: $00
    db $EC                                        ; $62A6: $EC

jr_007_62A7:
    ld b, $20                                     ; $62A7: $06 $20
    rst RST_20                                    ; $62A9: $E7
    nop                                           ; $62AA: $00
    jr nz, jr_007_629C                            ; $62AB: $20 $EF

    ld [bc], a                                    ; $62AD: $02
    jr nz, jr_007_62A7                            ; $62AE: $20 $F7

    inc b                                         ; $62B0: $04
    jr nz, @+$01                                  ; $62B1: $20 $FF

    ld b, $20                                     ; $62B3: $06 $20
    rlca                                          ; $62B5: $07
    ld [$0F20], sp                                ; $62B6: $08 $20 $0F
    ld a, [bc]                                    ; $62B9: $0A
    nop                                           ; $62BA: $00
    ld b, b                                       ; $62BB: $40
    ld a, [hl]                                    ; $62BC: $7E
    ld d, $C2                                     ; $62BD: $16 $C2
    ld h, d                                       ; $62BF: $62
    ld [bc], a                                    ; $62C0: $02
    nop                                           ; $62C1: $00
    ld a, [bc]                                    ; $62C2: $0A
    ld e, $F1                                     ; $62C3: $1E $F1
    nop                                           ; $62C5: $00
    inc d                                         ; $62C6: $14
    rst RST_30                                    ; $62C7: $F7
    ld [bc], a                                    ; $62C8: $02
    inc d                                         ; $62C9: $14
    rst RST_38                                    ; $62CA: $FF
    inc b                                         ; $62CB: $04
    inc d                                         ; $62CC: $14
    rlca                                          ; $62CD: $07
    ld b, $2E                                     ; $62CE: $06 $2E
    pop af                                        ; $62D0: $F1
    ld [$F924], sp                                ; $62D1: $08 $24 $F9
    ld a, [bc]                                    ; $62D4: $0A
    inc h                                         ; $62D5: $24
    ld bc, $240C                                  ; $62D6: $01 $0C $24
    add hl, bc                                    ; $62D9: $09
    ld c, $34                                     ; $62DA: $0E $34
    ld sp, hl                                     ; $62DC: $F9
    db $10                                        ; $62DD: $10
    inc [hl]                                      ; $62DE: $34
    ld bc, $0012                                  ; $62DF: $01 $12 $00
    ld bc, $0000                                  ; $62E2: $01 $00 $00
    ld b, b                                       ; $62E5: $40
    ld hl, $62EB                                  ; $62E6: $21 $EB $62
    inc b                                         ; $62E9: $04
    dec bc                                        ; $62EA: $0B
    ld a, [bc]                                    ; $62EB: $0A
    ld c, $EF                                     ; $62EC: $0E $EF
    nop                                           ; $62EE: $00
    ld [$02F7], sp                                ; $62EF: $08 $F7 $02
    ld [$04FF], sp                                ; $62F2: $08 $FF $04
    ld [$0607], sp                                ; $62F5: $08 $07 $06
    jr @-$07                                      ; $62F8: $18 $F7

    ld [$FF18], sp                                ; $62FA: $08 $18 $FF
    ld a, [bc]                                    ; $62FD: $0A

jr_007_62FE:
    jr jr_007_6307                                ; $62FE: $18 $07

    inc c                                         ; $6300: $0C
    rra                                           ; $6301: $1F
    rst RST_28                                    ; $6302: $EF
    ld c, $28                                     ; $6303: $0E $28
    rst RST_30                                    ; $6305: $F7
    db $10                                        ; $6306: $10

jr_007_6307:
    jr z, @+$01                                   ; $6307: $28 $FF

jr_007_6309:
    ld [de], a                                    ; $6309: $12
    nop                                           ; $630A: $00
    ld bc, $4000                                  ; $630B: $01 $00 $40
    ld b, c                                       ; $630E: $41
    ld hl, $6314                                  ; $630F: $21 $14 $63
    nop                                           ; $6312: $00
    ld [bc], a                                    ; $6313: $02
    inc c                                         ; $6314: $0C
    jr z, jr_007_62FE                             ; $6315: $28 $E7

    nop                                           ; $6317: $00
    jr nz, jr_007_6309                            ; $6318: $20 $EF

jr_007_631A:
    ld [bc], a                                    ; $631A: $02
    ld [$04F6], sp                                ; $631B: $08 $F6 $04
    ld [$06FE], sp                                ; $631E: $08 $FE $06
    jr jr_007_631A                                ; $6321: $18 $F7

    ld [$FF18], sp                                ; $6323: $08 $18 $FF
    ld a, [bc]                                    ; $6326: $0A
    jr jr_007_6330                                ; $6327: $18 $07

    inc c                                         ; $6329: $0C
    jr @+$11                                      ; $632A: $18 $0F

jr_007_632C:
    ld c, $28                                     ; $632C: $0E $28
    rst RST_30                                    ; $632E: $F7
    db $10                                        ; $632F: $10

jr_007_6330:
    jr z, @+$01                                   ; $6330: $28 $FF

    ld [de], a                                    ; $6332: $12
    jr c, jr_007_632C                             ; $6333: $38 $F7

    inc d                                         ; $6335: $14
    jr c, @+$01                                   ; $6336: $38 $FF

    ld d, $00                                     ; $6338: $16 $00
    ld bc, $C000                                  ; $633A: $01 $00 $C0
    ld b, d                                       ; $633D: $42
    ld hl, $6343                                  ; $633E: $21 $43 $63
    ei                                            ; $6341: $FB
    ld bc, $1C0A                                  ; $6342: $01 $0A $1C
    rst RST_18                                    ; $6345: $DF
    nop                                           ; $6346: $00
    jr nz, jr_007_6330                            ; $6347: $20 $E7

    ld [bc], a                                    ; $6349: $02
    ld hl, $04EF                                  ; $634A: $21 $EF $04
    ld hl, $06F7                                  ; $634D: $21 $F7 $06
    ld hl, $08FF                                  ; $6350: $21 $FF $08
    jr nz, jr_007_635C                            ; $6353: $20 $07

    ld a, [bc]                                    ; $6355: $0A
    jr nz, jr_007_6367                            ; $6356: $20 $0F

    inc c                                         ; $6358: $0C
    ld sp, $0EF7                                  ; $6359: $31 $F7 $0E

jr_007_635C:
    ld sp, $10FF                                  ; $635C: $31 $FF $10

jr_007_635F:
    jr nc, @+$09                                  ; $635F: $30 $07

    ld [de], a                                    ; $6361: $12
    nop                                           ; $6362: $00
    ld bc, $0000                                  ; $6363: $01 $00 $00
    ld b, h                                       ; $6366: $44

jr_007_6367:
    ld hl, $636C                                  ; $6367: $21 $6C $63

jr_007_636A:
    nop                                           ; $636A: $00
    nop                                           ; $636B: $00
    db $10                                        ; $636C: $10
    jr nc, @-$19                                  ; $636D: $30 $E5

    nop                                           ; $636F: $00
    jr nc, jr_007_635F                            ; $6370: $30 $ED

    ld [bc], a                                    ; $6372: $02
    jr nc, jr_007_636A                            ; $6373: $30 $F5

jr_007_6375:
    inc b                                         ; $6375: $04
    jr nc, jr_007_6375                            ; $6376: $30 $FD

    ld b, $30                                     ; $6378: $06 $30
    dec b                                         ; $637A: $05
    ld [$0D30], sp                                ; $637B: $08 $30 $0D
    ld a, [bc]                                    ; $637E: $0A
    jr z, jr_007_6396                             ; $637F: $28 $15

    inc c                                         ; $6381: $0C
    jr nz, @-$09                                  ; $6382: $20 $F5

    ld c, $20                                     ; $6384: $0E $20
    db $FD                                        ; $6386: $FD
    db $10                                        ; $6387: $10
    jr nz, @+$07                                  ; $6388: $20 $05

    ld [de], a                                    ; $638A: $12
    jr nz, jr_007_639A                            ; $638B: $20 $0D

    inc d                                         ; $638D: $14
    jr nz, @-$11                                  ; $638E: $20 $ED

    ld d, $10                                     ; $6390: $16 $10
    db $ED                                        ; $6392: $ED
    jr jr_007_63A5                                ; $6393: $18 $10

    push af                                       ; $6395: $F5

jr_007_6396:
    ld a, [de]                                    ; $6396: $1A
    db $10                                        ; $6397: $10
    db $FD                                        ; $6398: $FD
    inc e                                         ; $6399: $1C

jr_007_639A:
    db $10                                        ; $639A: $10
    dec b                                         ; $639B: $05
    ld e, $00                                     ; $639C: $1E $00
    ld bc, $C000                                  ; $639E: $01 $00 $C0
    ld c, [hl]                                    ; $63A1: $4E
    ld d, $A7                                     ; $63A2: $16 $A7
    ld h, e                                       ; $63A4: $63

jr_007_63A5:
    db $FD                                        ; $63A5: $FD
    nop                                           ; $63A6: $00
    ld a, [bc]                                    ; $63A7: $0A
    daa                                           ; $63A8: $27
    ld sp, hl                                     ; $63A9: $F9
    nop                                           ; $63AA: $00
    dec de                                        ; $63AB: $1B
    ld bc, $1B02                                  ; $63AC: $01 $02 $1B
    add hl, bc                                    ; $63AF: $09
    inc b                                         ; $63B0: $04
    jr jr_007_63C4                                ; $63B1: $18 $11

    ld b, $2B                                     ; $63B3: $06 $2B
    ld bc, $2B08                                  ; $63B5: $01 $08 $2B
    add hl, bc                                    ; $63B8: $09
    ld a, [bc]                                    ; $63B9: $0A
    jr z, jr_007_63CD                             ; $63BA: $28 $11

    inc c                                         ; $63BC: $0C
    scf                                           ; $63BD: $37
    ld sp, hl                                     ; $63BE: $F9
    ld c, $3B                                     ; $63BF: $0E $3B
    rlca                                          ; $63C1: $07
    db $10                                        ; $63C2: $10
    dec sp                                        ; $63C3: $3B

jr_007_63C4:
    pop af                                        ; $63C4: $F1
    ld [de], a                                    ; $63C5: $12
    nop                                           ; $63C6: $00
    ld bc, $0000                                  ; $63C7: $01 $00 $00
    ld d, b                                       ; $63CA: $50
    ld d, $EE                                     ; $63CB: $16 $EE

jr_007_63CD:
    ld h, e                                       ; $63CD: $63
    ld a, [$2000]                                 ; $63CE: $FA $00 $20
    ld bc, $0000                                  ; $63D1: $01 $00 $00
    ld d, b                                       ; $63D4: $50
    ld d, $EE                                     ; $63D5: $16 $EE
    ld h, e                                       ; $63D7: $63
    ld b, $00                                     ; $63D8: $06 $00
    ld b, b                                       ; $63DA: $40
    ld bc, $0000                                  ; $63DB: $01 $00 $00
    ld d, b                                       ; $63DE: $50
    ld d, $EE                                     ; $63DF: $16 $EE
    ld h, e                                       ; $63E1: $63
    ld a, [$6000]                                 ; $63E2: $FA $00 $60
    ld bc, $0000                                  ; $63E5: $01 $00 $00
    ld d, b                                       ; $63E8: $50
    ld d, $EE                                     ; $63E9: $16 $EE

jr_007_63EB:
    ld h, e                                       ; $63EB: $63
    ld b, $00                                     ; $63EC: $06 $00
    inc c                                         ; $63EE: $0C
    jr nz, @-$0F                                  ; $63EF: $20 $EF

    nop                                           ; $63F1: $00
    jr nz, jr_007_63EB                            ; $63F2: $20 $F7

    ld [bc], a                                    ; $63F4: $02
    ld a, [de]                                    ; $63F5: $1A
    rst RST_38                                    ; $63F6: $FF
    inc b                                         ; $63F7: $04
    ld a, [de]                                    ; $63F8: $1A
    rlca                                          ; $63F9: $07
    ld b, $1F                                     ; $63FA: $06 $1F
    rrca                                          ; $63FC: $0F
    ld [$FF2A], sp                                ; $63FD: $08 $2A $FF
    ld a, [bc]                                    ; $6400: $0A
    ld a, [hl+]                                   ; $6401: $2A
    rlca                                          ; $6402: $07
    inc c                                         ; $6403: $0C
    cpl                                           ; $6404: $2F
    rrca                                          ; $6405: $0F
    ld c, $31                                     ; $6406: $0E $31
    rst RST_30                                    ; $6408: $F7
    db $10                                        ; $6409: $10
    ld a, [hl-]                                   ; $640A: $3A
    rst RST_38                                    ; $640B: $FF
    ld [de], a                                    ; $640C: $12
    ld a, [hl-]                                   ; $640D: $3A
    rlca                                          ; $640E: $07
    inc d                                         ; $640F: $14
    ccf                                           ; $6410: $3F
    rrca                                          ; $6411: $0F
    ld d, $00                                     ; $6412: $16 $00
    ld bc, $8000                                  ; $6414: $01 $00 $80

jr_007_6417:
    ld d, c                                       ; $6417: $51
    ld d, $1D                                     ; $6418: $16 $1D
    ld h, h                                       ; $641A: $64
    ld [bc], a                                    ; $641B: $02
    nop                                           ; $641C: $00
    rlca                                          ; $641D: $07
    jr nc, jr_007_6417                            ; $641E: $30 $F7

    nop                                           ; $6420: $00
    dec h                                         ; $6421: $25
    rst RST_38                                    ; $6422: $FF
    ld [bc], a                                    ; $6423: $02
    dec [hl]                                      ; $6424: $35
    rst RST_38                                    ; $6425: $FF
    inc b                                         ; $6426: $04
    inc h                                         ; $6427: $24
    rlca                                          ; $6428: $07
    ld b, $34                                     ; $6429: $06 $34
    rlca                                          ; $642B: $07
    ld [$0F29], sp                                ; $642C: $08 $29 $0F
    ld a, [bc]                                    ; $642F: $0A
    add hl, sp                                    ; $6430: $39
    rrca                                          ; $6431: $0F
    inc c                                         ; $6432: $0C
    nop                                           ; $6433: $00
    ld bc, $6000                                  ; $6434: $01 $00 $60
    ld d, d                                       ; $6437: $52
    ld d, $47                                     ; $6438: $16 $47
    ld h, h                                       ; $643A: $64
    inc b                                         ; $643B: $04
    ld e, $60                                     ; $643C: $1E $60
    ld bc, $6000                                  ; $643E: $01 $00 $60
    ld d, d                                       ; $6441: $52
    ld d, $47                                     ; $6442: $16 $47
    ld h, h                                       ; $6444: $64
    inc bc                                        ; $6445: $03
    nop                                           ; $6446: $00
    ld a, [bc]                                    ; $6447: $0A
    ld [$00E7], sp                                ; $6448: $08 $E7 $00

jr_007_644B:
    ld [$02EF], sp                                ; $644B: $08 $EF $02
    ld [$04F7], sp                                ; $644E: $08 $F7 $04
    ld [$06FF], sp                                ; $6451: $08 $FF $06
    db $10                                        ; $6454: $10
    rlca                                          ; $6455: $07

jr_007_6456:
    ld [$E71B], sp                                ; $6456: $08 $1B $E7
    ld a, [bc]                                    ; $6459: $0A
    jr jr_007_644B                                ; $645A: $18 $EF

    inc c                                         ; $645C: $0C
    jr jr_007_6456                                ; $645D: $18 $F7

    ld c, $18                                     ; $645F: $0E $18
    rst RST_38                                    ; $6461: $FF
    db $10                                        ; $6462: $10
    jr nz, @+$09                                  ; $6463: $20 $07

    ld [de], a                                    ; $6465: $12
    nop                                           ; $6466: $00
    ld bc, $A000                                  ; $6467: $01 $00 $A0
    ld d, e                                       ; $646A: $53
    ld d, $70                                     ; $646B: $16 $70
    ld h, h                                       ; $646D: $64
    inc b                                         ; $646E: $04
    inc bc                                        ; $646F: $03
    add hl, bc                                    ; $6470: $09
    ld l, $07                                     ; $6471: $2E $07
    nop                                           ; $6473: $00
    ld l, $FF                                     ; $6474: $2E $FF
    ld [bc], a                                    ; $6476: $02
    cpl                                           ; $6477: $2F
    rst RST_30                                    ; $6478: $F7
    inc b                                         ; $6479: $04
    dec l                                         ; $647A: $2D
    rst RST_28                                    ; $647B: $EF
    ld b, $35                                     ; $647C: $06 $35
    rst RST_20                                    ; $647E: $E7
    ld [$EF3D], sp                                ; $647F: $08 $3D $EF
    ld a, [bc]                                    ; $6482: $0A
    ld a, $07                                     ; $6483: $3E $07
    inc c                                         ; $6485: $0C
    ld a, $FF                                     ; $6486: $3E $FF
    ld c, $3A                                     ; $6488: $0E $3A
    rst RST_18                                    ; $648A: $DF
    stop                                          ; $648B: $10 $00
    ld b, $09                                     ; $648D: $06 $09
    nop                                           ; $648F: $00
    ld b, [hl]                                    ; $6490: $46
    ld hl, $64A0                                  ; $6491: $21 $A0 $64
    nop                                           ; $6494: $00
    nop                                           ; $6495: $00
    nop                                           ; $6496: $00
    ld b, $00                                     ; $6497: $06 $00
    nop                                           ; $6499: $00
    ld b, [hl]                                    ; $649A: $46
    ld hl, $64A0                                  ; $649B: $21 $A0 $64
    nop                                           ; $649E: $00
    nop                                           ; $649F: $00
    ld c, $1E                                     ; $64A0: $0E $1E
    pop hl                                        ; $64A2: $E1
    nop                                           ; $64A3: $00
    dec e                                         ; $64A4: $1D
    jp hl                                         ; $64A5: $E9


    ld [bc], a                                    ; $64A6: $02
    ld a, [de]                                    ; $64A7: $1A
    pop af                                        ; $64A8: $F1
    inc b                                         ; $64A9: $04
    ld e, $F9                                     ; $64AA: $1E $F9
    ld b, $1A                                     ; $64AC: $06 $1A
    ld bc, $2508                                  ; $64AE: $01 $08 $25
    add hl, bc                                    ; $64B1: $09
    ld a, [bc]                                    ; $64B2: $0A
    ld a, [hl+]                                   ; $64B3: $2A
    pop af                                        ; $64B4: $F1
    inc c                                         ; $64B5: $0C
    ld l, $F9                                     ; $64B6: $2E $F9
    ld c, $2A                                     ; $64B8: $0E $2A
    ld bc, $3510                                  ; $64BA: $01 $10 $35
    add hl, bc                                    ; $64BD: $09
    ld [de], a                                    ; $64BE: $12
    ld [hl], $11                                  ; $64BF: $36 $11
    inc d                                         ; $64C1: $14
    ld a, [hl-]                                   ; $64C2: $3A
    di                                            ; $64C3: $F3
    ld d, $2D                                     ; $64C4: $16 $2D
    jp hl                                         ; $64C6: $E9


    jr jr_007_6503                                ; $64C7: $18 $3A

    ld bc, $001A                                  ; $64C9: $01 $1A $00
    ld b, $09                                     ; $64CC: $06 $09
    ret nz                                        ; $64CE: $C0

    ld b, a                                       ; $64CF: $47
    ld hl, $64E9                                  ; $64D0: $21 $E9 $64
    nop                                           ; $64D3: $00
    nop                                           ; $64D4: $00
    nop                                           ; $64D5: $00

jr_007_64D6:
    ld b, $05                                     ; $64D6: $06 $05
    ret nz                                        ; $64D8: $C0

    ld b, a                                       ; $64D9: $47
    ld hl, $64E9                                  ; $64DA: $21 $E9 $64
    nop                                           ; $64DD: $00
    nop                                           ; $64DE: $00
    nop                                           ; $64DF: $00
    ld b, $00                                     ; $64E0: $06 $00
    ret nz                                        ; $64E2: $C0

    ld b, a                                       ; $64E3: $47
    ld hl, $64E9                                  ; $64E4: $21 $E9 $64
    nop                                           ; $64E7: $00
    nop                                           ; $64E8: $00
    db $10                                        ; $64E9: $10
    jr nz, @-$1F                                  ; $64EA: $20 $DF

    nop                                           ; $64EC: $00
    jr nz, jr_007_64D6                            ; $64ED: $20 $E7

    ld [bc], a                                    ; $64EF: $02
    ld a, [de]                                    ; $64F0: $1A
    rst RST_28                                    ; $64F1: $EF
    inc b                                         ; $64F2: $04
    inc e                                         ; $64F3: $1C
    rst RST_30                                    ; $64F4: $F7
    ld b, $1A                                     ; $64F5: $06 $1A
    rst RST_38                                    ; $64F7: $FF
    ld [$071A], sp                                ; $64F8: $08 $1A $07
    ld a, [bc]                                    ; $64FB: $0A
    ld a, [hl+]                                   ; $64FC: $2A
    rst RST_28                                    ; $64FD: $EF
    inc c                                         ; $64FE: $0C
    inc l                                         ; $64FF: $2C
    rst RST_30                                    ; $6500: $F7
    ld c, $2A                                     ; $6501: $0E $2A

jr_007_6503:
    rst RST_38                                    ; $6503: $FF
    db $10                                        ; $6504: $10
    ld a, [hl+]                                   ; $6505: $2A
    rlca                                          ; $6506: $07
    ld [de], a                                    ; $6507: $12
    ld a, [hl+]                                   ; $6508: $2A
    rrca                                          ; $6509: $0F
    inc d                                         ; $650A: $14
    ld a, [hl-]                                   ; $650B: $3A
    rst RST_28                                    ; $650C: $EF
    ld d, $3C                                     ; $650D: $16 $3C
    rst RST_30                                    ; $650F: $F7
    jr jr_007_654C                                ; $6510: $18 $3A

    rlca                                          ; $6512: $07
    ld a, [de]                                    ; $6513: $1A
    ld a, [hl-]                                   ; $6514: $3A
    rrca                                          ; $6515: $0F
    inc e                                         ; $6516: $1C
    ld a, [hl-]                                   ; $6517: $3A
    rst RST_38                                    ; $6518: $FF
    ld e, $00                                     ; $6519: $1E $00
    cp e                                          ; $651B: $BB
    nop                                           ; $651C: $00
    ret nz                                        ; $651D: $C0

    ld c, c                                       ; $651E: $49
    ld hl, $6524                                  ; $651F: $21 $24 $65
    ld sp, hl                                     ; $6522: $F9
    nop                                           ; $6523: $00
    rlca                                          ; $6524: $07
    dec e                                         ; $6525: $1D
    rst RST_30                                    ; $6526: $F7

jr_007_6527:
    nop                                           ; $6527: $00
    dec l                                         ; $6528: $2D
    rst RST_30                                    ; $6529: $F7
    ld [bc], a                                    ; $652A: $02
    jr nc, @+$01                                  ; $652B: $30 $FF

    inc b                                         ; $652D: $04
    jr nc, jr_007_6537                            ; $652E: $30 $07

    ld b, $25                                     ; $6530: $06 $25
    rst RST_28                                    ; $6532: $EF
    ld [$EF15], sp                                ; $6533: $08 $15 $EF
    ld a, [bc]                                    ; $6536: $0A

jr_007_6537:
    dec a                                         ; $6537: $3D
    rst RST_30                                    ; $6538: $F7
    inc c                                         ; $6539: $0C
    nop                                           ; $653A: $00
    and b                                         ; $653B: $A0
    ld c, d                                       ; $653C: $4A
    ld hl, $6542                                  ; $653D: $21 $42 $65
    nop                                           ; $6540: $00
    nop                                           ; $6541: $00
    ld [bc], a                                    ; $6542: $02
    jr @-$17                                      ; $6543: $18 $E7

    nop                                           ; $6545: $00
    jr jr_007_6527                                ; $6546: $18 $DF

    ld [bc], a                                    ; $6548: $02
    nop                                           ; $6549: $00
    ld b, $00                                     ; $654A: $06 $00

jr_007_654C:
    ldh [rWY], a                                  ; $654C: $E0 $4A
    ld hl, $6553                                  ; $654E: $21 $53 $65
    nop                                           ; $6551: $00
    nop                                           ; $6552: $00
    inc c                                         ; $6553: $0C
    inc e                                         ; $6554: $1C
    rst RST_28                                    ; $6555: $EF
    nop                                           ; $6556: $00
    dec de                                        ; $6557: $1B
    rst RST_30                                    ; $6558: $F7
    ld [bc], a                                    ; $6559: $02
    ld a, [de]                                    ; $655A: $1A
    rst RST_38                                    ; $655B: $FF
    inc b                                         ; $655C: $04
    rra                                           ; $655D: $1F
    rlca                                          ; $655E: $07
    ld b, $2C                                     ; $655F: $06 $2C
    rst RST_28                                    ; $6561: $EF
    ld [$F72B], sp                                ; $6562: $08 $2B $F7

jr_007_6565:
    ld a, [bc]                                    ; $6565: $0A
    ld a, [hl+]                                   ; $6566: $2A
    rst RST_38                                    ; $6567: $FF
    inc c                                         ; $6568: $0C
    cpl                                           ; $6569: $2F
    rlca                                          ; $656A: $07
    ld c, $1A                                     ; $656B: $0E $1A
    rrca                                          ; $656D: $0F
    db $10                                        ; $656E: $10
    inc a                                         ; $656F: $3C

jr_007_6570:
    rst RST_28                                    ; $6570: $EF
    ld [de], a                                    ; $6571: $12
    dec sp                                        ; $6572: $3B
    rst RST_30                                    ; $6573: $F7
    inc d                                         ; $6574: $14
    ld a, [hl-]                                   ; $6575: $3A
    rst RST_38                                    ; $6576: $FF
    ld d, $00                                     ; $6577: $16 $00
    ld h, b                                       ; $6579: $60
    ld c, h                                       ; $657A: $4C
    ld hl, $6580                                  ; $657B: $21 $80 $65
    nop                                           ; $657E: $00
    nop                                           ; $657F: $00
    inc bc                                        ; $6580: $03
    ld [$00E0], sp                                ; $6581: $08 $E0 $00
    jr jr_007_6565                                ; $6584: $18 $DF

    ld [bc], a                                    ; $6586: $02
    jr jr_007_6570                                ; $6587: $18 $E7

    inc b                                         ; $6589: $04
    nop                                           ; $658A: $00
    ld bc, $C012                                  ; $658B: $01 $12 $C0
    ld c, h                                       ; $658E: $4C
    ld hl, $6594                                  ; $658F: $21 $94 $65
    add hl, bc                                    ; $6592: $09
    ld sp, hl                                     ; $6593: $F9
    ld b, $08                                     ; $6594: $06 $08
    rst RST_28                                    ; $6596: $EF
    nop                                           ; $6597: $00
    ld [$02F7], sp                                ; $6598: $08 $F7 $02
    ld [$04FF], sp                                ; $659B: $08 $FF $04
    db $10                                        ; $659E: $10
    rlca                                          ; $659F: $07
    ld b, $18                                     ; $65A0: $06 $18
    rst RST_38                                    ; $65A2: $FF
    ld [$0720], sp                                ; $65A3: $08 $20 $07
    ld a, [bc]                                    ; $65A6: $0A
    nop                                           ; $65A7: $00
    add b                                         ; $65A8: $80
    ld c, l                                       ; $65A9: $4D
    ld hl, $65AF                                  ; $65AA: $21 $AF $65
    add hl, bc                                    ; $65AD: $09
    ld sp, hl                                     ; $65AE: $F9
    add hl, bc                                    ; $65AF: $09
    jr z, @-$1F                                   ; $65B0: $28 $DF

jr_007_65B2:
    nop                                           ; $65B2: $00
    rra                                           ; $65B3: $1F
    rst RST_20                                    ; $65B4: $E7
    ld [bc], a                                    ; $65B5: $02
    dec e                                         ; $65B6: $1D
    rst RST_28                                    ; $65B7: $EF
    inc b                                         ; $65B8: $04
    jr jr_007_65B2                                ; $65B9: $18 $F7

    ld b, $28                                     ; $65BB: $06 $28
    rst RST_30                                    ; $65BD: $F7

jr_007_65BE:
    ld [$E72F], sp                                ; $65BE: $08 $2F $E7
    ld a, [bc]                                    ; $65C1: $0A
    dec l                                         ; $65C2: $2D
    rst RST_28                                    ; $65C3: $EF
    inc c                                         ; $65C4: $0C
    jr c, jr_007_65BE                             ; $65C5: $38 $F7

    ld c, $3D                                     ; $65C7: $0E $3D
    rst RST_28                                    ; $65C9: $EF
    stop                                          ; $65CA: $10 $00
    ld bc, $8000                                  ; $65CC: $01 $00 $80
    ld a, a                                       ; $65CF: $7F
    ld d, $D5                                     ; $65D0: $16 $D5
    ld h, l                                       ; $65D2: $65
    add hl, bc                                    ; $65D3: $09
    ld sp, hl                                     ; $65D4: $F9
    inc b                                         ; $65D5: $04
    ld [$00FF], sp                                ; $65D6: $08 $FF $00
    ld [$0207], sp                                ; $65D9: $08 $07 $02
    jr @+$01                                      ; $65DC: $18 $FF

    inc b                                         ; $65DE: $04
    jr @+$09                                      ; $65DF: $18 $07

    ld b, $00                                     ; $65E1: $06 $00
    ld bc, $A000                                  ; $65E3: $01 $00 $A0
    ld c, [hl]                                    ; $65E6: $4E
    ld hl, $65EC                                  ; $65E7: $21 $EC $65
    ld [bc], a                                    ; $65EA: $02
    nop                                           ; $65EB: $00
    dec c                                         ; $65EC: $0D
    add hl, de                                    ; $65ED: $19
    rst RST_20                                    ; $65EE: $E7
    nop                                           ; $65EF: $00
    add hl, de                                    ; $65F0: $19
    rst RST_28                                    ; $65F1: $EF
    ld [bc], a                                    ; $65F2: $02
    add hl, de                                    ; $65F3: $19
    rst RST_30                                    ; $65F4: $F7

jr_007_65F5:
    inc b                                         ; $65F5: $04
    add hl, de                                    ; $65F6: $19
    rst RST_38                                    ; $65F7: $FF
    ld b, $19                                     ; $65F8: $06 $19
    rlca                                          ; $65FA: $07
    ld [$0F18], sp                                ; $65FB: $08 $18 $0F
    ld a, [bc]                                    ; $65FE: $0A
    add hl, hl                                    ; $65FF: $29
    or $0C                                        ; $6600: $F6 $0C
    add hl, hl                                    ; $6602: $29
    cp $0E                                        ; $6603: $FE $0E
    jr nc, jr_007_65F5                            ; $6605: $30 $EE

    db $10                                        ; $6607: $10
    dec hl                                        ; $6608: $2B
    ld b, $12                                     ; $6609: $06 $12
    add hl, sp                                    ; $660B: $39
    or $14                                        ; $660C: $F6 $14
    add hl, sp                                    ; $660E: $39
    cp $16                                        ; $660F: $FE $16
    dec sp                                        ; $6611: $3B
    ld b, $18                                     ; $6612: $06 $18
    nop                                           ; $6614: $00
    ld b, b                                       ; $6615: $40
    ld d, b                                       ; $6616: $50
    ld hl, $661C                                  ; $6617: $21 $1C $66
    ld [bc], a                                    ; $661A: $02
    nop                                           ; $661B: $00
    rlca                                          ; $661C: $07
    inc hl                                        ; $661D: $23
    ldh a, [rP1]                                  ; $661E: $F0 $00
    inc hl                                        ; $6620: $23
    ld hl, sp+$02                                 ; $6621: $F8 $02
    inc hl                                        ; $6623: $23
    nop                                           ; $6624: $00
    inc b                                         ; $6625: $04
    inc sp                                        ; $6626: $33
    ldh a, [rTMA]                                 ; $6627: $F0 $06
    inc sp                                        ; $6629: $33
    ld hl, sp+$08                                 ; $662A: $F8 $08
    inc sp                                        ; $662C: $33
    nop                                           ; $662D: $00
    ld a, [bc]                                    ; $662E: $0A
    dec hl                                        ; $662F: $2B
    ld [$000C], sp                                ; $6630: $08 $0C $00
    ld bc, $2000                                  ; $6633: $01 $00 $20
    ld d, c                                       ; $6636: $51
    ld hl, $663C                                  ; $6637: $21 $3C $66
    ld [bc], a                                    ; $663A: $02
    nop                                           ; $663B: $00
    ld b, $10                                     ; $663C: $06 $10
    rlca                                          ; $663E: $07
    nop                                           ; $663F: $00
    jr nz, @+$01                                  ; $6640: $20 $FF

    ld [bc], a                                    ; $6642: $02
    jr nz, @+$09                                  ; $6643: $20 $07

    inc b                                         ; $6645: $04
    jr jr_007_6657                                ; $6646: $18 $0F

    ld b, $28                                     ; $6648: $06 $28
    rrca                                          ; $664A: $0F
    ld [$FF30], sp                                ; $664B: $08 $30 $FF
    ld a, [bc]                                    ; $664E: $0A
    nop                                           ; $664F: $00
    ldh [rHDMA1], a                               ; $6650: $E0 $51

jr_007_6652:
    ld hl, $6657                                  ; $6652: $21 $57 $66
    ld [bc], a                                    ; $6655: $02
    nop                                           ; $6656: $00

jr_007_6657:
    ld [$EF10], sp                                ; $6657: $08 $10 $EF
    nop                                           ; $665A: $00
    db $10                                        ; $665B: $10
    rst RST_30                                    ; $665C: $F7
    ld [bc], a                                    ; $665D: $02
    db $10                                        ; $665E: $10
    rst RST_38                                    ; $665F: $FF
    inc b                                         ; $6660: $04
    jr nz, jr_007_6652                            ; $6661: $20 $EF

jr_007_6663:
    ld b, $20                                     ; $6663: $06 $20
    rst RST_30                                    ; $6665: $F7
    ld [$EF30], sp                                ; $6666: $08 $30 $EF
    ld a, [bc]                                    ; $6669: $0A
    jr nc, jr_007_6663                            ; $666A: $30 $F7

    inc c                                         ; $666C: $0C
    ld a, [hl-]                                   ; $666D: $3A
    rlca                                          ; $666E: $07
    ld c, $00                                     ; $666F: $0E $00
    ld bc, $E000                                  ; $6671: $01 $00 $E0
    ld d, d                                       ; $6674: $52
    ld hl, $667A                                  ; $6675: $21 $7A $66
    ld [bc], a                                    ; $6678: $02
    nop                                           ; $6679: $00
    dec b                                         ; $667A: $05
    jr nz, @+$01                                  ; $667B: $20 $FF

    nop                                           ; $667D: $00
    db $10                                        ; $667E: $10
    rlca                                          ; $667F: $07
    ld [bc], a                                    ; $6680: $02
    jr nz, @+$09                                  ; $6681: $20 $07

    inc b                                         ; $6683: $04
    jr nc, @+$01                                  ; $6684: $30 $FF

    ld b, $28                                     ; $6686: $06 $28
    rrca                                          ; $6688: $0F
    ld [$0100], sp                                ; $6689: $08 $00 $01
    nop                                           ; $668C: $00
    add b                                         ; $668D: $80
    ld d, e                                       ; $668E: $53
    ld hl, $6694                                  ; $668F: $21 $94 $66
    ld sp, hl                                     ; $6692: $F9
    nop                                           ; $6693: $00
    ld a, [bc]                                    ; $6694: $0A
    jr nz, @-$0A                                  ; $6695: $20 $F4

    nop                                           ; $6697: $00
    jr nz, @-$02                                  ; $6698: $20 $FC

    ld [bc], a                                    ; $669A: $02
    jr nz, @+$06                                  ; $669B: $20 $04

    inc b                                         ; $669D: $04
    jr nz, jr_007_66AC                            ; $669E: $20 $0C

    ld b, $20                                     ; $66A0: $06 $20
    inc d                                         ; $66A2: $14
    ld [$F410], sp                                ; $66A3: $08 $10 $F4
    ld a, [bc]                                    ; $66A6: $0A
    db $10                                        ; $66A7: $10
    db $FC                                        ; $66A8: $FC
    inc c                                         ; $66A9: $0C
    db $10                                        ; $66AA: $10
    inc b                                         ; $66AB: $04

jr_007_66AC:
    ld c, $10                                     ; $66AC: $0E $10
    inc c                                         ; $66AE: $0C
    db $10                                        ; $66AF: $10
    db $10                                        ; $66B0: $10
    inc d                                         ; $66B1: $14
    ld [de], a                                    ; $66B2: $12
    nop                                           ; $66B3: $00
    ret nz                                        ; $66B4: $C0

jr_007_66B5:
    ld d, h                                       ; $66B5: $54
    ld hl, $66BB                                  ; $66B6: $21 $BB $66
    ld sp, hl                                     ; $66B9: $F9
    nop                                           ; $66BA: $00
    dec b                                         ; $66BB: $05
    jr nc, jr_007_66B5                            ; $66BC: $30 $F7

    nop                                           ; $66BE: $00
    jr nc, @+$01                                  ; $66BF: $30 $FF

    ld [bc], a                                    ; $66C1: $02
    jr nc, @+$09                                  ; $66C2: $30 $07

    inc b                                         ; $66C4: $04
    jr nc, jr_007_66D6                            ; $66C5: $30 $0F

    ld b, $2E                                     ; $66C7: $06 $2E
    rla                                           ; $66C9: $17
    ld [$0100], sp                                ; $66CA: $08 $00 $01
    nop                                           ; $66CD: $00
    ld h, b                                       ; $66CE: $60

jr_007_66CF:
    ld d, l                                       ; $66CF: $55
    ld hl, $66D5                                  ; $66D0: $21 $D5 $66
    ld sp, hl                                     ; $66D3: $F9
    nop                                           ; $66D4: $00
    rlca                                          ; $66D5: $07

jr_007_66D6:
    jr nz, jr_007_66CF                            ; $66D6: $20 $F7

    nop                                           ; $66D8: $00
    jr nz, @+$01                                  ; $66D9: $20 $FF

    ld [bc], a                                    ; $66DB: $02
    jr nz, @+$09                                  ; $66DC: $20 $07

    inc b                                         ; $66DE: $04
    jr nz, jr_007_66F0                            ; $66DF: $20 $0F

    ld b, $10                                     ; $66E1: $06 $10
    rst RST_38                                    ; $66E3: $FF
    ld [$0710], sp                                ; $66E4: $08 $10 $07
    ld a, [bc]                                    ; $66E7: $0A
    db $10                                        ; $66E8: $10
    rrca                                          ; $66E9: $0F
    inc c                                         ; $66EA: $0C
    nop                                           ; $66EB: $00
    ld bc, $407C                                  ; $66EC: $01 $7C $40
    ld d, [hl]                                    ; $66EF: $56

jr_007_66F0:
    ld hl, $66F5                                  ; $66F0: $21 $F5 $66
    ld sp, hl                                     ; $66F3: $F9
    nop                                           ; $66F4: $00
    rrca                                          ; $66F5: $0F
    inc hl                                        ; $66F6: $23
    db $EC                                        ; $66F7: $EC
    nop                                           ; $66F8: $00
    dec de                                        ; $66F9: $1B
    db $F4                                        ; $66FA: $F4
    ld [bc], a                                    ; $66FB: $02
    dec hl                                        ; $66FC: $2B
    db $F4                                        ; $66FD: $F4
    inc b                                         ; $66FE: $04
    add hl, de                                    ; $66FF: $19
    db $FC                                        ; $6700: $FC
    ld b, $29                                     ; $6701: $06 $29
    db $FC                                        ; $6703: $FC
    ld [$0417], sp                                ; $6704: $08 $17 $04
    ld a, [bc]                                    ; $6707: $0A
    daa                                           ; $6708: $27
    inc b                                         ; $6709: $04
    inc c                                         ; $670A: $0C
    add hl, de                                    ; $670B: $19
    inc c                                         ; $670C: $0C
    ld c, $29                                     ; $670D: $0E $29
    inc c                                         ; $670F: $0C
    db $10                                        ; $6710: $10
    add hl, de                                    ; $6711: $19
    inc d                                         ; $6712: $14
    ld [de], a                                    ; $6713: $12
    add hl, hl                                    ; $6714: $29
    inc d                                         ; $6715: $14
    inc d                                         ; $6716: $14
    add hl, sp                                    ; $6717: $39
    db $FC                                        ; $6718: $FC
    ld d, $37                                     ; $6719: $16 $37
    inc b                                         ; $671B: $04
    jr @+$3B                                      ; $671C: $18 $39

    inc c                                         ; $671E: $0C

jr_007_671F:
    ld a, [de]                                    ; $671F: $1A
    dec sp                                        ; $6720: $3B
    db $F4                                        ; $6721: $F4
    inc e                                         ; $6722: $1C
    nop                                           ; $6723: $00
    ld bc, $207C                                  ; $6724: $01 $7C $20
    ld e, b                                       ; $6727: $58
    ld hl, $672D                                  ; $6728: $21 $2D $67
    ld bc, $0D00                                  ; $672B: $01 $00 $0D
    jr nz, jr_007_671F                            ; $672E: $20 $EF

    nop                                           ; $6730: $00
    jr @-$07                                      ; $6731: $18 $F7

    ld [bc], a                                    ; $6733: $02
    jr @+$01                                      ; $6734: $18 $FF

    inc b                                         ; $6736: $04
    jr jr_007_6740                                ; $6737: $18 $07

    ld b, $18                                     ; $6739: $06 $18
    rrca                                          ; $673B: $0F
    ld [$F728], sp                                ; $673C: $08 $28 $F7
    ld a, [bc]                                    ; $673F: $0A

jr_007_6740:
    jr z, @+$01                                   ; $6740: $28 $FF

    inc c                                         ; $6742: $0C
    jr z, jr_007_674C                             ; $6743: $28 $07

jr_007_6745:
    ld c, $28                                     ; $6745: $0E $28
    rrca                                          ; $6747: $0F
    db $10                                        ; $6748: $10
    jr nc, @-$0F                                  ; $6749: $30 $EF

    ld [de], a                                    ; $674B: $12

jr_007_674C:
    jr c, jr_007_6745                             ; $674C: $38 $F7

    inc d                                         ; $674E: $14
    jr c, @+$01                                   ; $674F: $38 $FF

    ld d, $38                                     ; $6751: $16 $38
    rlca                                          ; $6753: $07
    jr jr_007_6756                                ; $6754: $18 $00

jr_007_6756:
    ld bc, $C000                                  ; $6756: $01 $00 $C0

jr_007_6759:
    ld e, c                                       ; $6759: $59
    ld hl, $675F                                  ; $675A: $21 $5F $67
    ld sp, hl                                     ; $675D: $F9
    nop                                           ; $675E: $00
    rlca                                          ; $675F: $07
    jr nz, jr_007_6759                            ; $6760: $20 $F7

    nop                                           ; $6762: $00
    jr @+$01                                      ; $6763: $18 $FF

    ld [bc], a                                    ; $6765: $02
    jr @+$09                                      ; $6766: $18 $07

    inc b                                         ; $6768: $04
    db $10                                        ; $6769: $10
    rrca                                          ; $676A: $0F
    ld b, $10                                     ; $676B: $06 $10
    rst RST_30                                    ; $676D: $F7
    ld [$FF08], sp                                ; $676E: $08 $08 $FF
    ld a, [bc]                                    ; $6771: $0A
    ld [$0C07], sp                                ; $6772: $08 $07 $0C
    nop                                           ; $6775: $00
    and b                                         ; $6776: $A0
    ld e, d                                       ; $6777: $5A
    ld hl, $677D                                  ; $6778: $21 $7D $67
    ld sp, hl                                     ; $677B: $F9
    nop                                           ; $677C: $00
    rlca                                          ; $677D: $07
    jr nc, @-$04                                  ; $677E: $30 $FA

    nop                                           ; $6780: $00
    jr z, @+$01                                   ; $6781: $28 $FF

    ld [bc], a                                    ; $6783: $02
    jr z, @+$09                                   ; $6784: $28 $07

    inc b                                         ; $6786: $04
    jr nz, jr_007_6798                            ; $6787: $20 $0F

    ld b, $27                                     ; $6789: $06 $27
    rla                                           ; $678B: $17
    ld [$0238], sp                                ; $678C: $08 $38 $02
    ld a, [bc]                                    ; $678F: $0A
    scf                                           ; $6790: $37
    ld a, [bc]                                    ; $6791: $0A
    inc c                                         ; $6792: $0C
    nop                                           ; $6793: $00
    ld bc, $8000                                  ; $6794: $01 $00 $80
    ld e, e                                       ; $6797: $5B

jr_007_6798:
    ld hl, $679D                                  ; $6798: $21 $9D $67
    pop af                                        ; $679B: $F1
    nop                                           ; $679C: $00
    ld b, $18                                     ; $679D: $06 $18
    rlca                                          ; $679F: $07
    nop                                           ; $67A0: $00
    jr @+$11                                      ; $67A1: $18 $0F

    ld [bc], a                                    ; $67A3: $02
    db $10                                        ; $67A4: $10
    rla                                           ; $67A5: $17
    inc b                                         ; $67A6: $04
    ld [$0607], sp                                ; $67A7: $08 $07 $06
    ld [$080F], sp                                ; $67AA: $08 $0F $08
    ld [de], a                                    ; $67AD: $12
    rst RST_38                                    ; $67AE: $FF
    ld a, [bc]                                    ; $67AF: $0A
    nop                                           ; $67B0: $00
    ld bc, $4005                                  ; $67B1: $01 $05 $40
    ld e, h                                       ; $67B4: $5C
    ld hl, $67BA                                  ; $67B5: $21 $BA $67
    pop af                                        ; $67B8: $F1
    ld hl, sp+$09                                 ; $67B9: $F8 $09
    jr nz, jr_007_67C4                            ; $67BB: $20 $07

    nop                                           ; $67BD: $00
    jr nz, jr_007_67CF                            ; $67BE: $20 $0F

    ld [bc], a                                    ; $67C0: $02
    db $10                                        ; $67C1: $10
    rlca                                          ; $67C2: $07
    inc b                                         ; $67C3: $04

jr_007_67C4:
    db $10                                        ; $67C4: $10
    rrca                                          ; $67C5: $0F
    ld b, $18                                     ; $67C6: $06 $18
    rla                                           ; $67C8: $17
    ld [$FF1A], sp                                ; $67C9: $08 $1A $FF
    ld a, [bc]                                    ; $67CC: $0A
    ld a, [bc]                                    ; $67CD: $0A
    nop                                           ; $67CE: $00

jr_007_67CF:
    inc c                                         ; $67CF: $0C
    ld [$0E16], sp                                ; $67D0: $08 $16 $0E
    nop                                           ; $67D3: $00
    ld [$0010], sp                                ; $67D4: $08 $10 $00
    ld bc, $6000                                  ; $67D7: $01 $00 $60
    ld e, l                                       ; $67DA: $5D
    ld hl, $67E0                                  ; $67DB: $21 $E0 $67
    pop af                                        ; $67DE: $F1
    ld hl, sp+$09                                 ; $67DF: $F8 $09
    jr nz, jr_007_67EA                            ; $67E1: $20 $07

    nop                                           ; $67E3: $00
    jr nz, jr_007_67F5                            ; $67E4: $20 $0F

    ld [bc], a                                    ; $67E6: $02
    jr jr_007_6800                                ; $67E7: $18 $17

    inc b                                         ; $67E9: $04

jr_007_67EA:
    db $10                                        ; $67EA: $10
    rlca                                          ; $67EB: $07
    ld b, $10                                     ; $67EC: $06 $10
    rrca                                          ; $67EE: $0F
    ld [$FF1A], sp                                ; $67EF: $08 $1A $FF
    ld a, [bc]                                    ; $67F2: $0A
    nop                                           ; $67F3: $00
    inc bc                                        ; $67F4: $03

jr_007_67F5:
    inc c                                         ; $67F5: $0C
    ld a, [bc]                                    ; $67F6: $0A
    rst RST_38                                    ; $67F7: $FF
    ld c, $08                                     ; $67F8: $0E $08
    ld [de], a                                    ; $67FA: $12
    stop                                          ; $67FB: $10 $00
    ld bc, $8000                                  ; $67FD: $01 $00 $80

jr_007_6800:
    ld e, [hl]                                    ; $6800: $5E
    ld hl, $6806                                  ; $6801: $21 $06 $68
    ld sp, hl                                     ; $6804: $F9

jr_007_6805:
    ld hl, sp+$06                                 ; $6805: $F8 $06
    jr nz, @+$01                                  ; $6807: $20 $FF

    nop                                           ; $6809: $00
    jr nz, @+$09                                  ; $680A: $20 $07

    ld [bc], a                                    ; $680C: $02
    jr jr_007_681E                                ; $680D: $18 $0F

    inc b                                         ; $680F: $04

jr_007_6810:
    db $10                                        ; $6810: $10
    rst RST_38                                    ; $6811: $FF
    ld b, $10                                     ; $6812: $06 $10
    rlca                                          ; $6814: $07
    ld [$F71A], sp                                ; $6815: $08 $1A $F7
    ld a, [bc]                                    ; $6818: $0A
    nop                                           ; $6819: $00
    nop                                           ; $681A: $00
    nop                                           ; $681B: $00
    ld b, b                                       ; $681C: $40
    ld e, a                                       ; $681D: $5F

jr_007_681E:
    ld hl, $6823                                  ; $681E: $21 $23 $68
    nop                                           ; $6821: $00
    nop                                           ; $6822: $00
    db $10                                        ; $6823: $10
    jr nz, jr_007_6805                            ; $6824: $20 $DF

    nop                                           ; $6826: $00
    jr nz, jr_007_6810                            ; $6827: $20 $E7

    ld [bc], a                                    ; $6829: $02
    ld e, $EF                                     ; $682A: $1E $EF
    inc b                                         ; $682C: $04
    rla                                           ; $682D: $17
    rst RST_30                                    ; $682E: $F7
    ld b, $27                                     ; $682F: $06 $27
    rst RST_30                                    ; $6831: $F7
    ld [$FF15], sp                                ; $6832: $08 $15 $FF
    ld a, [bc]                                    ; $6835: $0A
    dec h                                         ; $6836: $25
    rst RST_38                                    ; $6837: $FF
    inc c                                         ; $6838: $0C
    inc de                                        ; $6839: $13
    rlca                                          ; $683A: $07
    ld c, $23                                     ; $683B: $0E $23
    rlca                                          ; $683D: $07
    db $10                                        ; $683E: $10
    db $10                                        ; $683F: $10
    rrca                                          ; $6840: $0F
    ld [de], a                                    ; $6841: $12
    jr nz, jr_007_6853                            ; $6842: $20 $0F

    inc d                                         ; $6844: $14
    rrca                                          ; $6845: $0F
    rla                                           ; $6846: $17
    ld d, $1F                                     ; $6847: $16 $1F
    rla                                           ; $6849: $17
    jr jr_007_687B                                ; $684A: $18 $2F

    rla                                           ; $684C: $17
    ld a, [de]                                    ; $684D: $1A
    jr nc, jr_007_685F                            ; $684E: $30 $0F

    inc e                                         ; $6850: $1C
    ld l, $EF                                     ; $6851: $2E $EF

jr_007_6853:
    ld e, $00                                     ; $6853: $1E $00
    nop                                           ; $6855: $00
    rst RST_30                                    ; $6856: $F7
    ld b, b                                       ; $6857: $40
    ld h, c                                       ; $6858: $61
    ld hl, $685E                                  ; $6859: $21 $5E $68
    nop                                           ; $685C: $00
    nop                                           ; $685D: $00
    dec c                                         ; $685E: $0D

jr_007_685F:
    dec b                                         ; $685F: $05
    rst RST_28                                    ; $6860: $EF
    nop                                           ; $6861: $00
    ld b, $F7                                     ; $6862: $06 $F7
    ld [bc], a                                    ; $6864: $02
    add hl, bc                                    ; $6865: $09
    rst RST_38                                    ; $6866: $FF
    inc b                                         ; $6867: $04
    ld c, $07                                     ; $6868: $0E $07
    ld b, $FE                                     ; $686A: $06 $FE
    rlca                                          ; $686C: $07
    ld [$0F0D], sp                                ; $686D: $08 $0D $0F
    ld a, [bc]                                    ; $6870: $0A
    inc c                                         ; $6871: $0C
    rla                                           ; $6872: $17
    inc c                                         ; $6873: $0C
    inc e                                         ; $6874: $1C
    rla                                           ; $6875: $17
    ld c, $1D                                     ; $6876: $0E $1D
    rrca                                          ; $6878: $0F
    db $10                                        ; $6879: $10
    ld [hl+], a                                   ; $687A: $22

jr_007_687B:
    rlca                                          ; $687B: $07
    ld [de], a                                    ; $687C: $12
    ld h, $FF                                     ; $687D: $26 $FF
    inc d                                         ; $687F: $14
    ld a, [hl+]                                   ; $6880: $2A
    rst RST_30                                    ; $6881: $F7
    ld d, $2C                                     ; $6882: $16 $2C
    rla                                           ; $6884: $17
    jr jr_007_6887                                ; $6885: $18 $00

jr_007_6887:
    nop                                           ; $6887: $00
    nop                                           ; $6888: $00
    ldh [$FF62], a                                ; $6889: $E0 $62
    ld hl, $6890                                  ; $688B: $21 $90 $68
    nop                                           ; $688E: $00
    nop                                           ; $688F: $00
    ld bc, $FF20                                  ; $6890: $01 $20 $FF
    nop                                           ; $6893: $00
    ldh [c], a                                    ; $6894: $E2
    ld l, d                                       ; $6895: $6A
    rst RST_38                                    ; $6896: $FF
    rst RST_38                                    ; $6897: $FF
    ld e, d                                       ; $6898: $5A
    ld l, e                                       ; $6899: $6B
    rst RST_38                                    ; $689A: $FF
    rst RST_38                                    ; $689B: $FF
    bit 5, e                                      ; $689C: $CB $6B
    rst RST_38                                    ; $689E: $FF
    rst RST_38                                    ; $689F: $FF
    ld e, d                                       ; $68A0: $5A
    ld l, e                                       ; $68A1: $6B
    rst RST_38                                    ; $68A2: $FF
    rst RST_38                                    ; $68A3: $FF
    rst RST_38                                    ; $68A4: $FF
    rst RST_38                                    ; $68A5: $FF
    ldh [c], a                                    ; $68A6: $E2
    ld l, d                                       ; $68A7: $6A
    rst RST_38                                    ; $68A8: $FF
    rst RST_38                                    ; $68A9: $FF
    ld e, d                                       ; $68AA: $5A
    ld l, e                                       ; $68AB: $6B
    rst RST_38                                    ; $68AC: $FF
    rst RST_38                                    ; $68AD: $FF
    bit 5, e                                      ; $68AE: $CB $6B
    rst RST_38                                    ; $68B0: $FF
    rst RST_38                                    ; $68B1: $FF
    ld e, d                                       ; $68B2: $5A
    ld l, e                                       ; $68B3: $6B
    rst RST_38                                    ; $68B4: $FF
    rst RST_38                                    ; $68B5: $FF
    rst RST_38                                    ; $68B6: $FF
    rst RST_38                                    ; $68B7: $FF
    ld e, d                                       ; $68B8: $5A
    ld l, e                                       ; $68B9: $6B
    rst RST_38                                    ; $68BA: $FF
    rst RST_38                                    ; $68BB: $FF
    bit 5, e                                      ; $68BC: $CB $6B
    rst RST_38                                    ; $68BE: $FF
    rst RST_38                                    ; $68BF: $FF
    ld e, d                                       ; $68C0: $5A
    ld l, e                                       ; $68C1: $6B
    rst RST_38                                    ; $68C2: $FF
    rst RST_38                                    ; $68C3: $FF
    ldh [c], a                                    ; $68C4: $E2
    ld l, d                                       ; $68C5: $6A
    rst RST_38                                    ; $68C6: $FF
    rst RST_38                                    ; $68C7: $FF
    rst RST_38                                    ; $68C8: $FF
    rst RST_38                                    ; $68C9: $FF
    bit 5, e                                      ; $68CA: $CB $6B
    rst RST_38                                    ; $68CC: $FF
    rst RST_38                                    ; $68CD: $FF
    rst RST_38                                    ; $68CE: $FF
    rst RST_38                                    ; $68CF: $FF
    ldh [c], a                                    ; $68D0: $E2
    ld l, d                                       ; $68D1: $6A
    rst RST_38                                    ; $68D2: $FF
    rst RST_38                                    ; $68D3: $FF
    ldh [c], a                                    ; $68D4: $E2
    ld l, d                                       ; $68D5: $6A
    rst RST_38                                    ; $68D6: $FF
    rst RST_38                                    ; $68D7: $FF
    ldh [c], a                                    ; $68D8: $E2
    ld l, d                                       ; $68D9: $6A
    rst RST_38                                    ; $68DA: $FF
    rst RST_38                                    ; $68DB: $FF
    cp d                                          ; $68DC: $BA
    ld l, l                                       ; $68DD: $6D
    rst RST_38                                    ; $68DE: $FF
    rst RST_38                                    ; $68DF: $FF
    db $D3                                        ; $68E0: $D3
    ld l, [hl]                                    ; $68E1: $6E
    rst RST_38                                    ; $68E2: $FF
    rst RST_38                                    ; $68E3: $FF
    ld l, a                                       ; $68E4: $6F
    ld l, h                                       ; $68E5: $6C
    rst RST_38                                    ; $68E6: $FF
    rst RST_38                                    ; $68E7: $FF
    rst RST_38                                    ; $68E8: $FF
    rst RST_38                                    ; $68E9: $FF
    rst RST_00                                    ; $68EA: $C7
    ld [hl], c                                    ; $68EB: $71
    rst RST_38                                    ; $68EC: $FF
    rst RST_38                                    ; $68ED: $FF
    ldh [c], a                                    ; $68EE: $E2
    ld l, d                                       ; $68EF: $6A
    rst RST_38                                    ; $68F0: $FF
    rst RST_38                                    ; $68F1: $FF
    rst RST_38                                    ; $68F2: $FF
    rst RST_38                                    ; $68F3: $FF
    dec bc                                        ; $68F4: $0B
    ld l, h                                       ; $68F5: $6C
    rst RST_38                                    ; $68F6: $FF
    rst RST_38                                    ; $68F7: $FF
    dec a                                         ; $68F8: $3D
    ld l, h                                       ; $68F9: $6C
    rst RST_38                                    ; $68FA: $FF
    rst RST_38                                    ; $68FB: $FF
    ld l, a                                       ; $68FC: $6F
    ld l, h                                       ; $68FD: $6C
    rst RST_38                                    ; $68FE: $FF
    rst RST_38                                    ; $68FF: $FF
    rst RST_38                                    ; $6900: $FF
    rst RST_38                                    ; $6901: $FF
    and c                                         ; $6902: $A1
    ld l, h                                       ; $6903: $6C
    rst RST_38                                    ; $6904: $FF
    rst RST_38                                    ; $6905: $FF
    sub $6C                                       ; $6906: $D6 $6C
    rst RST_38                                    ; $6908: $FF
    rst RST_38                                    ; $6909: $FF
    rst RST_38                                    ; $690A: $FF
    rst RST_38                                    ; $690B: $FF
    dec bc                                        ; $690C: $0B
    ld l, l                                       ; $690D: $6D
    rst RST_38                                    ; $690E: $FF
    rst RST_38                                    ; $690F: $FF
    scf                                           ; $6910: $37
    ld l, l                                       ; $6911: $6D
    ld e, l                                       ; $6912: $5D
    ld l, l                                       ; $6913: $6D
    scf                                           ; $6914: $37
    ld l, l                                       ; $6915: $6D
    ld [hl], d                                    ; $6916: $72
    ld l, l                                       ; $6917: $6D
    add a                                         ; $6918: $87
    ld l, l                                       ; $6919: $6D
    rst RST_38                                    ; $691A: $FF
    rst RST_38                                    ; $691B: $FF
    rst RST_38                                    ; $691C: $FF
    rst RST_38                                    ; $691D: $FF
    cp d                                          ; $691E: $BA
    ld l, l                                       ; $691F: $6D
    rst RST_38                                    ; $6920: $FF
    rst RST_38                                    ; $6921: $FF
    db $EC                                        ; $6922: $EC
    ld l, l                                       ; $6923: $6D
    rst RST_38                                    ; $6924: $FF
    rst RST_38                                    ; $6925: $FF
    ld l, a                                       ; $6926: $6F
    ld l, h                                       ; $6927: $6C
    rst RST_38                                    ; $6928: $FF
    rst RST_38                                    ; $6929: $FF
    rst RST_38                                    ; $692A: $FF
    rst RST_38                                    ; $692B: $FF
    sub b                                         ; $692C: $90
    ld l, e                                       ; $692D: $6B
    ld e, $6E                                     ; $692E: $1E $6E
    ld [hl+], a                                   ; $6930: $22
    ld l, e                                       ; $6931: $6B
    ld [hl], $6E                                  ; $6932: $36 $6E
    rst RST_38                                    ; $6934: $FF
    rst RST_38                                    ; $6935: $FF
    ld c, [hl]                                    ; $6936: $4E
    ld l, [hl]                                    ; $6937: $6E
    rst RST_38                                    ; $6938: $FF
    rst RST_38                                    ; $6939: $FF
    ld a, l                                       ; $693A: $7D
    ld l, [hl]                                    ; $693B: $6E
    sbc l                                         ; $693C: $9D
    ld l, [hl]                                    ; $693D: $6E
    ld a, l                                       ; $693E: $7D
    ld l, [hl]                                    ; $693F: $6E
    cp b                                          ; $6940: $B8
    ld l, [hl]                                    ; $6941: $6E
    add a                                         ; $6942: $87
    ld l, l                                       ; $6943: $6D
    rst RST_38                                    ; $6944: $FF
    rst RST_38                                    ; $6945: $FF
    rst RST_38                                    ; $6946: $FF
    rst RST_38                                    ; $6947: $FF
    cp d                                          ; $6948: $BA
    ld l, l                                       ; $6949: $6D
    rst RST_38                                    ; $694A: $FF
    rst RST_38                                    ; $694B: $FF
    db $D3                                        ; $694C: $D3
    ld l, [hl]                                    ; $694D: $6E
    rst RST_38                                    ; $694E: $FF
    rst RST_38                                    ; $694F: $FF
    ld l, a                                       ; $6950: $6F
    ld l, h                                       ; $6951: $6C
    rst RST_38                                    ; $6952: $FF
    rst RST_38                                    ; $6953: $FF
    ld l, a                                       ; $6954: $6F
    ld l, h                                       ; $6955: $6C
    rst RST_38                                    ; $6956: $FF
    rst RST_38                                    ; $6957: $FF
    rst RST_38                                    ; $6958: $FF
    rst RST_38                                    ; $6959: $FF
    or [hl]                                       ; $695A: $B6
    ld [hl], b                                    ; $695B: $70
    rst RST_38                                    ; $695C: $FF
    rst RST_38                                    ; $695D: $FF
    ld c, $6F                                     ; $695E: $0E $6F
    dec hl                                        ; $6960: $2B
    ld l, a                                       ; $6961: $6F
    ld c, c                                       ; $6962: $49
    ld l, a                                       ; $6963: $6F
    dec hl                                        ; $6964: $2B
    ld l, a                                       ; $6965: $6F
    add a                                         ; $6966: $87
    ld l, l                                       ; $6967: $6D
    rst RST_38                                    ; $6968: $FF
    rst RST_38                                    ; $6969: $FF
    rst RST_38                                    ; $696A: $FF
    rst RST_38                                    ; $696B: $FF
    rst RST_00                                    ; $696C: $C7
    ld [hl], c                                    ; $696D: $71
    rst RST_38                                    ; $696E: $FF
    rst RST_38                                    ; $696F: $FF
    ld h, e                                       ; $6970: $63
    ld l, a                                       ; $6971: $6F
    rst RST_38                                    ; $6972: $FF
    rst RST_38                                    ; $6973: $FF
    or [hl]                                       ; $6974: $B6
    ld [hl], b                                    ; $6975: $70
    rst RST_38                                    ; $6976: $FF
    rst RST_38                                    ; $6977: $FF
    ldh [c], a                                    ; $6978: $E2
    ld l, d                                       ; $6979: $6A
    rst RST_38                                    ; $697A: $FF
    rst RST_38                                    ; $697B: $FF
    rst RST_38                                    ; $697C: $FF
    rst RST_38                                    ; $697D: $FF
    ldh [c], a                                    ; $697E: $E2
    ld [hl], b                                    ; $697F: $70
    ld a, [hl+]                                   ; $6980: $2A
    ld [hl], c                                    ; $6981: $71
    adc a                                         ; $6982: $8F
    ld l, a                                       ; $6983: $6F
    rst RST_38                                    ; $6984: $FF
    rst RST_38                                    ; $6985: $FF
    rst RST_38                                    ; $6986: $FF
    rst RST_38                                    ; $6987: $FF
    or [hl]                                       ; $6988: $B6
    ld [hl], b                                    ; $6989: $70
    rst RST_38                                    ; $698A: $FF
    rst RST_38                                    ; $698B: $FF
    cp [hl]                                       ; $698C: $BE
    ld l, a                                       ; $698D: $6F
    rst RST_38                                    ; $698E: $FF
    rst RST_38                                    ; $698F: $FF
    ldh [c], a                                    ; $6990: $E2
    ld [hl], b                                    ; $6991: $70
    ld a, [hl+]                                   ; $6992: $2A
    ld [hl], c                                    ; $6993: $71
    rst RST_38                                    ; $6994: $FF
    rst RST_38                                    ; $6995: $FF
    ld e, d                                       ; $6996: $5A
    ld l, e                                       ; $6997: $6B
    rst RST_38                                    ; $6998: $FF
    rst RST_38                                    ; $6999: $FF
    rst RST_38                                    ; $699A: $FF
    rst RST_38                                    ; $699B: $FF
    ld c, [hl]                                    ; $699C: $4E
    ld l, [hl]                                    ; $699D: $6E
    rst RST_38                                    ; $699E: $FF
    rst RST_38                                    ; $699F: $FF
    ld a, l                                       ; $69A0: $7D
    ld l, [hl]                                    ; $69A1: $6E
    sbc l                                         ; $69A2: $9D
    ld l, [hl]                                    ; $69A3: $6E
    ld a, l                                       ; $69A4: $7D
    ld l, [hl]                                    ; $69A5: $6E
    cp b                                          ; $69A6: $B8
    ld l, [hl]                                    ; $69A7: $6E
    add a                                         ; $69A8: $87
    ld l, l                                       ; $69A9: $6D
    rst RST_38                                    ; $69AA: $FF
    rst RST_38                                    ; $69AB: $FF
    cp [hl]                                       ; $69AC: $BE
    ld l, a                                       ; $69AD: $6F
    rst RST_38                                    ; $69AE: $FF
    rst RST_38                                    ; $69AF: $FF
    ldh [c], a                                    ; $69B0: $E2
    ld [hl], b                                    ; $69B1: $70
    ld a, [hl+]                                   ; $69B2: $2A
    ld [hl], c                                    ; $69B3: $71
    bit 5, e                                      ; $69B4: $CB $6B
    rst RST_38                                    ; $69B6: $FF
    rst RST_38                                    ; $69B7: $FF
    rst RST_38                                    ; $69B8: $FF
    rst RST_38                                    ; $69B9: $FF
    ldh a, [$FF6F]                                ; $69BA: $F0 $6F
    rst RST_38                                    ; $69BC: $FF
    rst RST_38                                    ; $69BD: $FF
    rst RST_38                                    ; $69BE: $FF
    rst RST_38                                    ; $69BF: $FF
    ld e, b                                       ; $69C0: $58
    ld [hl], b                                    ; $69C1: $70
    rst RST_38                                    ; $69C2: $FF
    rst RST_38                                    ; $69C3: $FF
    rst RST_38                                    ; $69C4: $FF
    rst RST_38                                    ; $69C5: $FF
    ldh [c], a                                    ; $69C6: $E2
    ld l, d                                       ; $69C7: $6A
    rst RST_38                                    ; $69C8: $FF
    rst RST_38                                    ; $69C9: $FF
    ldh a, [$FF6F]                                ; $69CA: $F0 $6F
    rst RST_38                                    ; $69CC: $FF
    rst RST_38                                    ; $69CD: $FF
    ldh a, [$FF6F]                                ; $69CE: $F0 $6F
    rst RST_38                                    ; $69D0: $FF
    rst RST_38                                    ; $69D1: $FF
    rst RST_38                                    ; $69D2: $FF
    rst RST_38                                    ; $69D3: $FF
    ldh a, [$FF6F]                                ; $69D4: $F0 $6F
    rst RST_38                                    ; $69D6: $FF
    rst RST_38                                    ; $69D7: $FF
    rst RST_38                                    ; $69D8: $FF
    rst RST_38                                    ; $69D9: $FF
    ldh a, [$FF6F]                                ; $69DA: $F0 $6F
    rst RST_38                                    ; $69DC: $FF
    rst RST_38                                    ; $69DD: $FF
    rst RST_38                                    ; $69DE: $FF
    rst RST_38                                    ; $69DF: $FF
    ld e, b                                       ; $69E0: $58
    ld [hl], b                                    ; $69E1: $70
    rst RST_38                                    ; $69E2: $FF
    rst RST_38                                    ; $69E3: $FF
    ldh a, [$FF6F]                                ; $69E4: $F0 $6F
    rst RST_38                                    ; $69E6: $FF
    rst RST_38                                    ; $69E7: $FF
    ldh a, [$FF6F]                                ; $69E8: $F0 $6F
    rst RST_38                                    ; $69EA: $FF
    rst RST_38                                    ; $69EB: $FF
    ldh a, [$FF6F]                                ; $69EC: $F0 $6F
    rst RST_38                                    ; $69EE: $FF
    rst RST_38                                    ; $69EF: $FF
    ldh a, [$FF6F]                                ; $69F0: $F0 $6F
    rst RST_38                                    ; $69F2: $FF
    rst RST_38                                    ; $69F3: $FF
    ldh a, [$FF6F]                                ; $69F4: $F0 $6F
    rst RST_38                                    ; $69F6: $FF
    rst RST_38                                    ; $69F7: $FF
    ldh [c], a                                    ; $69F8: $E2
    ld l, d                                       ; $69F9: $6A
    rst RST_38                                    ; $69FA: $FF
    rst RST_38                                    ; $69FB: $FF
    rst RST_38                                    ; $69FC: $FF
    rst RST_38                                    ; $69FD: $FF
    ld e, b                                       ; $69FE: $58
    ld [hl], b                                    ; $69FF: $70
    rst RST_38                                    ; $6A00: $FF
    rst RST_38                                    ; $6A01: $FF
    ld c, $70                                     ; $6A02: $0E $70
    rst RST_38                                    ; $6A04: $FF
    rst RST_38                                    ; $6A05: $FF
    db $EC                                        ; $6A06: $EC
    ld l, d                                       ; $6A07: $6A
    rst RST_38                                    ; $6A08: $FF
    rst RST_38                                    ; $6A09: $FF
    ld c, $70                                     ; $6A0A: $0E $70
    rst RST_38                                    ; $6A0C: $FF
    rst RST_38                                    ; $6A0D: $FF
    db $EC                                        ; $6A0E: $EC
    ld l, d                                       ; $6A0F: $6A
    rst RST_38                                    ; $6A10: $FF
    rst RST_38                                    ; $6A11: $FF
    rst RST_38                                    ; $6A12: $FF
    rst RST_38                                    ; $6A13: $FF
    ld e, b                                       ; $6A14: $58
    ld [hl], b                                    ; $6A15: $70
    rst RST_38                                    ; $6A16: $FF
    rst RST_38                                    ; $6A17: $FF
    ld c, [hl]                                    ; $6A18: $4E
    ld [hl], b                                    ; $6A19: $70
    rst RST_38                                    ; $6A1A: $FF
    rst RST_38                                    ; $6A1B: $FF
    ld b, h                                       ; $6A1C: $44
    ld [hl], b                                    ; $6A1D: $70
    rst RST_38                                    ; $6A1E: $FF
    rst RST_38                                    ; $6A1F: $FF
    ld a, [hl-]                                   ; $6A20: $3A
    ld [hl], b                                    ; $6A21: $70
    rst RST_38                                    ; $6A22: $FF
    rst RST_38                                    ; $6A23: $FF
    ld a, [hl-]                                   ; $6A24: $3A
    ld [hl], b                                    ; $6A25: $70
    rst RST_38                                    ; $6A26: $FF
    rst RST_38                                    ; $6A27: $FF
    ld c, $70                                     ; $6A28: $0E $70
    rst RST_38                                    ; $6A2A: $FF
    rst RST_38                                    ; $6A2B: $FF
    db $EC                                        ; $6A2C: $EC
    ld l, d                                       ; $6A2D: $6A
    rst RST_38                                    ; $6A2E: $FF
    rst RST_38                                    ; $6A2F: $FF
    rst RST_38                                    ; $6A30: $FF
    rst RST_38                                    ; $6A31: $FF
    ldh a, [$FF6F]                                ; $6A32: $F0 $6F
    rst RST_38                                    ; $6A34: $FF
    rst RST_38                                    ; $6A35: $FF
    ld a, [hl-]                                   ; $6A36: $3A
    ld [hl], b                                    ; $6A37: $70
    rst RST_38                                    ; $6A38: $FF
    rst RST_38                                    ; $6A39: $FF
    db $EC                                        ; $6A3A: $EC
    ld l, d                                       ; $6A3B: $6A
    rst RST_38                                    ; $6A3C: $FF
    rst RST_38                                    ; $6A3D: $FF
    rst RST_38                                    ; $6A3E: $FF
    rst RST_38                                    ; $6A3F: $FF
    ld e, b                                       ; $6A40: $58
    ld [hl], b                                    ; $6A41: $70
    rst RST_38                                    ; $6A42: $FF
    rst RST_38                                    ; $6A43: $FF
    rst RST_38                                    ; $6A44: $FF
    rst RST_38                                    ; $6A45: $FF
    ld e, b                                       ; $6A46: $58
    ld [hl], b                                    ; $6A47: $70
    rst RST_38                                    ; $6A48: $FF
    rst RST_38                                    ; $6A49: $FF
    ldh [c], a                                    ; $6A4A: $E2
    ld l, d                                       ; $6A4B: $6A
    rst RST_38                                    ; $6A4C: $FF
    rst RST_38                                    ; $6A4D: $FF
    rst RST_38                                    ; $6A4E: $FF
    rst RST_38                                    ; $6A4F: $FF
    add c                                         ; $6A50: $81
    ld [hl], b                                    ; $6A51: $70
    sbc b                                         ; $6A52: $98
    ld [hl], b                                    ; $6A53: $70
    add c                                         ; $6A54: $81
    ld [hl], b                                    ; $6A55: $70
    sbc b                                         ; $6A56: $98
    ld [hl], b                                    ; $6A57: $70
    add c                                         ; $6A58: $81
    ld [hl], b                                    ; $6A59: $70
    sbc b                                         ; $6A5A: $98
    ld [hl], b                                    ; $6A5B: $70
    rst RST_38                                    ; $6A5C: $FF
    rst RST_38                                    ; $6A5D: $FF
    ldh [c], a                                    ; $6A5E: $E2
    ld [hl], b                                    ; $6A5F: $70
    ld a, [hl+]                                   ; $6A60: $2A
    ld [hl], c                                    ; $6A61: $71
    db $EC                                        ; $6A62: $EC
    ld [hl], b                                    ; $6A63: $70
    ld [de], a                                    ; $6A64: $12
    ld [hl], c                                    ; $6A65: $71
    ldh [c], a                                    ; $6A66: $E2
    ld [hl], b                                    ; $6A67: $70
    ld a, [hl+]                                   ; $6A68: $2A
    ld [hl], c                                    ; $6A69: $71
    ldh [c], a                                    ; $6A6A: $E2
    ld l, d                                       ; $6A6B: $6A
    rst RST_38                                    ; $6A6C: $FF
    rst RST_38                                    ; $6A6D: $FF
    rst RST_38                                    ; $6A6E: $FF
    rst RST_38                                    ; $6A6F: $FF
    rst RST_00                                    ; $6A70: $C7
    ld [hl], c                                    ; $6A71: $71
    rst RST_38                                    ; $6A72: $FF
    rst RST_38                                    ; $6A73: $FF
    ccf                                           ; $6A74: $3F
    ld [hl], c                                    ; $6A75: $71
    rst RST_38                                    ; $6A76: $FF
    rst RST_38                                    ; $6A77: $FF
    ld a, b                                       ; $6A78: $78
    ld [hl], c                                    ; $6A79: $71
    rst RST_38                                    ; $6A7A: $FF
    rst RST_38                                    ; $6A7B: $FF
    push de                                       ; $6A7C: $D5
    ld l, e                                       ; $6A7D: $6B
    rst RST_38                                    ; $6A7E: $FF
    rst RST_38                                    ; $6A7F: $FF
    sbc [hl]                                      ; $6A80: $9E
    ld [hl], c                                    ; $6A81: $71
    rst RST_38                                    ; $6A82: $FF
    rst RST_38                                    ; $6A83: $FF
    rst RST_00                                    ; $6A84: $C7
    ld [hl], c                                    ; $6A85: $71
    rst RST_38                                    ; $6A86: $FF
    rst RST_38                                    ; $6A87: $FF
    ld e, d                                       ; $6A88: $5A
    ld l, e                                       ; $6A89: $6B
    rst RST_38                                    ; $6A8A: $FF
    rst RST_38                                    ; $6A8B: $FF
    rst RST_38                                    ; $6A8C: $FF
    rst RST_38                                    ; $6A8D: $FF
    dec bc                                        ; $6A8E: $0B
    ld l, h                                       ; $6A8F: $6C
    rst RST_38                                    ; $6A90: $FF
    rst RST_38                                    ; $6A91: $FF
    db $ED                                        ; $6A92: $ED
    ld [hl], c                                    ; $6A93: $71
    db $10                                        ; $6A94: $10
    ld [hl], d                                    ; $6A95: $72
    jr z, jr_007_6B0A                             ; $6A96: $28 $72

    db $10                                        ; $6A98: $10
    ld [hl], d                                    ; $6A99: $72
    ld l, a                                       ; $6A9A: $6F
    ld l, h                                       ; $6A9B: $6C
    rst RST_38                                    ; $6A9C: $FF
    rst RST_38                                    ; $6A9D: $FF
    rst RST_38                                    ; $6A9E: $FF
    rst RST_38                                    ; $6A9F: $FF
    dec bc                                        ; $6AA0: $0B
    ld l, h                                       ; $6AA1: $6C
    rst RST_38                                    ; $6AA2: $FF
    rst RST_38                                    ; $6AA3: $FF
    ld d, d                                       ; $6AA4: $52
    ld [hl], d                                    ; $6AA5: $72
    rst RST_38                                    ; $6AA6: $FF
    rst RST_38                                    ; $6AA7: $FF
    and c                                         ; $6AA8: $A1
    ld l, h                                       ; $6AA9: $6C
    rst RST_38                                    ; $6AAA: $FF
    rst RST_38                                    ; $6AAB: $FF
    add a                                         ; $6AAC: $87
    ld l, l                                       ; $6AAD: $6D
    rst RST_38                                    ; $6AAE: $FF
    rst RST_38                                    ; $6AAF: $FF
    rst RST_38                                    ; $6AB0: $FF
    rst RST_38                                    ; $6AB1: $FF
    dec bc                                        ; $6AB2: $0B
    ld l, h                                       ; $6AB3: $6C
    rst RST_38                                    ; $6AB4: $FF
    rst RST_38                                    ; $6AB5: $FF
    ld [hl-], a                                   ; $6AB6: $32
    ld [hl], d                                    ; $6AB7: $72
    db $10                                        ; $6AB8: $10
    ld [hl], d                                    ; $6AB9: $72
    ld c, c                                       ; $6ABA: $49
    ld [hl], c                                    ; $6ABB: $71
    rst RST_38                                    ; $6ABC: $FF
    rst RST_38                                    ; $6ABD: $FF
    ld a, b                                       ; $6ABE: $78
    ld [hl], c                                    ; $6ABF: $71
    rst RST_38                                    ; $6AC0: $FF
    rst RST_38                                    ; $6AC1: $FF
    rst RST_18                                    ; $6AC2: $DF
    ld l, e                                       ; $6AC3: $6B
    rst RST_38                                    ; $6AC4: $FF
    rst RST_38                                    ; $6AC5: $FF
    rst RST_18                                    ; $6AC6: $DF
    ld l, e                                       ; $6AC7: $6B
    rst RST_38                                    ; $6AC8: $FF
    rst RST_38                                    ; $6AC9: $FF
    sbc [hl]                                      ; $6ACA: $9E
    ld [hl], c                                    ; $6ACB: $71
    rst RST_38                                    ; $6ACC: $FF
    rst RST_38                                    ; $6ACD: $FF
    rst RST_00                                    ; $6ACE: $C7
    ld [hl], c                                    ; $6ACF: $71
    rst RST_38                                    ; $6AD0: $FF
    rst RST_38                                    ; $6AD1: $FF
    ld e, d                                       ; $6AD2: $5A
    ld l, e                                       ; $6AD3: $6B
    rst RST_38                                    ; $6AD4: $FF
    rst RST_38                                    ; $6AD5: $FF
    ld e, d                                       ; $6AD6: $5A
    ld l, e                                       ; $6AD7: $6B
    rst RST_38                                    ; $6AD8: $FF
    rst RST_38                                    ; $6AD9: $FF
    rst RST_38                                    ; $6ADA: $FF
    rst RST_38                                    ; $6ADB: $FF
    ldh [c], a                                    ; $6ADC: $E2
    ld l, d                                       ; $6ADD: $6A
    rst RST_38                                    ; $6ADE: $FF
    rst RST_38                                    ; $6ADF: $FF
    rst RST_38                                    ; $6AE0: $FF
    rst RST_38                                    ; $6AE1: $FF
    nop                                           ; $6AE2: $00
    inc c                                         ; $6AE3: $0C
    nop                                           ; $6AE4: $00
    jr nz, jr_007_6B2A                            ; $6AE5: $20 $43

    rla                                           ; $6AE7: $17
    or $6A                                        ; $6AE8: $F6 $6A
    db $FD                                        ; $6AEA: $FD
    nop                                           ; $6AEB: $00
    ld h, b                                       ; $6AEC: $60
    inc c                                         ; $6AED: $0C
    nop                                           ; $6AEE: $00
    jr nz, @+$45                                  ; $6AEF: $20 $43

    rla                                           ; $6AF1: $17
    or $6A                                        ; $6AF2: $F6 $6A
    inc bc                                        ; $6AF4: $03
    ld c, $0B                                     ; $6AF5: $0E $0B
    dec h                                         ; $6AF7: $25
    rst RST_20                                    ; $6AF8: $E7
    nop                                           ; $6AF9: $00
    dec hl                                        ; $6AFA: $2B
    rst RST_28                                    ; $6AFB: $EF
    ld [bc], a                                    ; $6AFC: $02
    ld a, [hl+]                                   ; $6AFD: $2A
    rst RST_30                                    ; $6AFE: $F7
    inc b                                         ; $6AFF: $04
    add hl, hl                                    ; $6B00: $29
    rst RST_38                                    ; $6B01: $FF
    ld b, $29                                     ; $6B02: $06 $29
    rlca                                          ; $6B04: $07
    ld [$0F28], sp                                ; $6B05: $08 $28 $0F
    ld a, [bc]                                    ; $6B08: $0A
    dec sp                                        ; $6B09: $3B

jr_007_6B0A:
    rst RST_28                                    ; $6B0A: $EF
    inc c                                         ; $6B0B: $0C
    ld a, [hl-]                                   ; $6B0C: $3A
    rst RST_30                                    ; $6B0D: $F7
    ld c, $39                                     ; $6B0E: $0E $39
    rst RST_38                                    ; $6B10: $FF
    db $10                                        ; $6B11: $10
    add hl, sp                                    ; $6B12: $39
    rlca                                          ; $6B13: $07
    ld [de], a                                    ; $6B14: $12
    jr c, jr_007_6B26                             ; $6B15: $38 $0F

    inc d                                         ; $6B17: $14
    nop                                           ; $6B18: $00
    inc c                                         ; $6B19: $0C
    nop                                           ; $6B1A: $00
    nop                                           ; $6B1B: $00
    ld b, b                                       ; $6B1C: $40
    rla                                           ; $6B1D: $17
    inc l                                         ; $6B1E: $2C
    ld l, e                                       ; $6B1F: $6B
    db $FD                                        ; $6B20: $FD

jr_007_6B21:
    nop                                           ; $6B21: $00
    nop                                           ; $6B22: $00
    inc c                                         ; $6B23: $0C
    add c                                         ; $6B24: $81
    nop                                           ; $6B25: $00

jr_007_6B26:
    ld b, b                                       ; $6B26: $40
    rla                                           ; $6B27: $17
    inc l                                         ; $6B28: $2C
    ld l, e                                       ; $6B29: $6B

jr_007_6B2A:
    db $FD                                        ; $6B2A: $FD
    nop                                           ; $6B2B: $00

jr_007_6B2C:
    ld [$E720], sp                                ; $6B2C: $08 $20 $E7
    nop                                           ; $6B2F: $00
    jr nz, jr_007_6B21                            ; $6B30: $20 $EF

    ld [bc], a                                    ; $6B32: $02
    jr nz, jr_007_6B2C                            ; $6B33: $20 $F7

    inc b                                         ; $6B35: $04
    jr nz, @+$01                                  ; $6B36: $20 $FF

    ld b, $29                                     ; $6B38: $06 $29
    rlca                                          ; $6B3A: $07
    ld [$0F28], sp                                ; $6B3B: $08 $28 $0F
    ld a, [bc]                                    ; $6B3E: $0A
    add hl, sp                                    ; $6B3F: $39

jr_007_6B40:
    rlca                                          ; $6B40: $07
    inc c                                         ; $6B41: $0C
    jr c, jr_007_6B53                             ; $6B42: $38 $0F

    ld c, $00                                     ; $6B44: $0E $00
    nop                                           ; $6B46: $00
    ld b, c                                       ; $6B47: $41
    rla                                           ; $6B48: $17
    ld c, l                                       ; $6B49: $4D

jr_007_6B4A:
    ld l, e                                       ; $6B4A: $6B
    db $FD                                        ; $6B4B: $FD
    nop                                           ; $6B4C: $00
    inc b                                         ; $6B4D: $04
    jr nc, @+$01                                  ; $6B4E: $30 $FF

    nop                                           ; $6B50: $00
    jr nc, jr_007_6B4A                            ; $6B51: $30 $F7

jr_007_6B53:
    ld [bc], a                                    ; $6B53: $02
    jr nc, @-$0F                                  ; $6B54: $30 $EF

    inc b                                         ; $6B56: $04
    jr nc, jr_007_6B40                            ; $6B57: $30 $E7

jr_007_6B59:
    ld b, $00                                     ; $6B59: $06 $00
    inc c                                         ; $6B5B: $0C
    nop                                           ; $6B5C: $00
    add b                                         ; $6B5D: $80
    ld b, h                                       ; $6B5E: $44
    rla                                           ; $6B5F: $17
    ld h, h                                       ; $6B60: $64
    ld l, e                                       ; $6B61: $6B
    db $FD                                        ; $6B62: $FD
    nop                                           ; $6B63: $00

jr_007_6B64:
    dec bc                                        ; $6B64: $0B
    inc h                                         ; $6B65: $24
    rst RST_20                                    ; $6B66: $E7
    nop                                           ; $6B67: $00
    jr z, jr_007_6B59                             ; $6B68: $28 $EF

    ld [bc], a                                    ; $6B6A: $02
    jr z, jr_007_6B64                             ; $6B6B: $28 $F7

    inc b                                         ; $6B6D: $04
    jr z, @+$01                                   ; $6B6E: $28 $FF

    ld b, $28                                     ; $6B70: $06 $28
    rlca                                          ; $6B72: $07
    ld [$0F2E], sp                                ; $6B73: $08 $2E $0F
    ld a, [bc]                                    ; $6B76: $0A
    jr c, @-$0E                                   ; $6B77: $38 $F0

    inc c                                         ; $6B79: $0C
    jr c, @-$06                                   ; $6B7A: $38 $F8

    ld c, $38                                     ; $6B7C: $0E $38
    nop                                           ; $6B7E: $00
    db $10                                        ; $6B7F: $10
    jr c, jr_007_6B8A                             ; $6B80: $38 $08

    ld [de], a                                    ; $6B82: $12
    inc sp                                        ; $6B83: $33

jr_007_6B84:
    rla                                           ; $6B84: $17
    inc d                                         ; $6B85: $14
    nop                                           ; $6B86: $00
    inc c                                         ; $6B87: $0C
    nop                                           ; $6B88: $00
    add b                                         ; $6B89: $80

jr_007_6B8A:
    ld b, c                                       ; $6B8A: $41
    rla                                           ; $6B8B: $17
    sbc d                                         ; $6B8C: $9A
    ld l, e                                       ; $6B8D: $6B
    db $FD                                        ; $6B8E: $FD

jr_007_6B8F:
    nop                                           ; $6B8F: $00
    nop                                           ; $6B90: $00
    inc c                                         ; $6B91: $0C
    add c                                         ; $6B92: $81
    add b                                         ; $6B93: $80
    ld b, c                                       ; $6B94: $41
    rla                                           ; $6B95: $17
    sbc d                                         ; $6B96: $9A
    ld l, e                                       ; $6B97: $6B
    db $FD                                        ; $6B98: $FD
    nop                                           ; $6B99: $00

jr_007_6B9A:
    add hl, bc                                    ; $6B9A: $09
    jr nz, jr_007_6B84                            ; $6B9B: $20 $E7

    nop                                           ; $6B9D: $00
    jr nz, jr_007_6B8F                            ; $6B9E: $20 $EF

    ld [bc], a                                    ; $6BA0: $02
    jr nz, jr_007_6B9A                            ; $6BA1: $20 $F7

    inc b                                         ; $6BA3: $04
    jr nz, @+$01                                  ; $6BA4: $20 $FF

    ld b, $28                                     ; $6BA6: $06 $28
    rlca                                          ; $6BA8: $07
    ld [$0F2E], sp                                ; $6BA9: $08 $2E $0F
    ld a, [bc]                                    ; $6BAC: $0A
    jr c, @+$09                                   ; $6BAD: $38 $07

    inc c                                         ; $6BAF: $0C
    daa                                           ; $6BB0: $27

jr_007_6BB1:
    rla                                           ; $6BB1: $17
    ld c, $3E                                     ; $6BB2: $0E $3E
    rrca                                          ; $6BB4: $0F
    stop                                          ; $6BB5: $10 $00
    and b                                         ; $6BB7: $A0
    ld b, d                                       ; $6BB8: $42
    rla                                           ; $6BB9: $17
    cp [hl]                                       ; $6BBA: $BE

jr_007_6BBB:
    ld l, e                                       ; $6BBB: $6B
    db $FD                                        ; $6BBC: $FD
    nop                                           ; $6BBD: $00
    inc b                                         ; $6BBE: $04
    jr nc, @+$01                                  ; $6BBF: $30 $FF

    nop                                           ; $6BC1: $00
    jr nc, jr_007_6BBB                            ; $6BC2: $30 $F7

    ld [bc], a                                    ; $6BC4: $02
    jr nc, @-$0F                                  ; $6BC5: $30 $EF

    inc b                                         ; $6BC7: $04
    jr nc, jr_007_6BB1                            ; $6BC8: $30 $E7

    ld b, $00                                     ; $6BCA: $06 $00
    inc c                                         ; $6BCC: $0C
    nop                                           ; $6BCD: $00
    ldh [rLYC], a                                 ; $6BCE: $E0 $45
    rla                                           ; $6BD0: $17
    jp hl                                         ; $6BD1: $E9


    ld l, e                                       ; $6BD2: $6B
    db $FD                                        ; $6BD3: $FD
    nop                                           ; $6BD4: $00
    nop                                           ; $6BD5: $00
    ld c, $0F                                     ; $6BD6: $0E $0F
    ldh [rLYC], a                                 ; $6BD8: $E0 $45
    rla                                           ; $6BDA: $17
    jp hl                                         ; $6BDB: $E9


    ld l, e                                       ; $6BDC: $6B
    db $FD                                        ; $6BDD: $FD
    ld c, b                                       ; $6BDE: $48
    nop                                           ; $6BDF: $00
    ld c, $05                                     ; $6BE0: $0E $05
    ldh [rLYC], a                                 ; $6BE2: $E0 $45
    rla                                           ; $6BE4: $17
    jp hl                                         ; $6BE5: $E9


    ld l, e                                       ; $6BE6: $6B
    db $FD                                        ; $6BE7: $FD
    ld c, b                                       ; $6BE8: $48
    dec bc                                        ; $6BE9: $0B
    dec h                                         ; $6BEA: $25
    rst RST_20                                    ; $6BEB: $E7
    nop                                           ; $6BEC: $00
    dec hl                                        ; $6BED: $2B
    rst RST_28                                    ; $6BEE: $EF
    ld [bc], a                                    ; $6BEF: $02
    add hl, hl                                    ; $6BF0: $29
    rst RST_30                                    ; $6BF1: $F7
    inc b                                         ; $6BF2: $04
    jr z, @+$01                                   ; $6BF3: $28 $FF

    ld b, $28                                     ; $6BF5: $06 $28
    rlca                                          ; $6BF7: $07
    ld [$0F2F], sp                                ; $6BF8: $08 $2F $0F
    ld a, [bc]                                    ; $6BFB: $0A
    dec sp                                        ; $6BFC: $3B
    rst RST_28                                    ; $6BFD: $EF
    inc c                                         ; $6BFE: $0C
    add hl, sp                                    ; $6BFF: $39
    rst RST_30                                    ; $6C00: $F7
    ld c, $38                                     ; $6C01: $0E $38
    rst RST_38                                    ; $6C03: $FF
    db $10                                        ; $6C04: $10
    jr c, jr_007_6C0E                             ; $6C05: $38 $07

    ld [de], a                                    ; $6C07: $12
    dec sp                                        ; $6C08: $3B
    rla                                           ; $6C09: $17
    inc d                                         ; $6C0A: $14
    nop                                           ; $6C0B: $00
    inc c                                         ; $6C0C: $0C
    nop                                           ; $6C0D: $00

jr_007_6C0E:
    ldh [rOBP1], a                                ; $6C0E: $E0 $49
    rla                                           ; $6C10: $17
    dec d                                         ; $6C11: $15
    ld l, h                                       ; $6C12: $6C
    cp $00                                        ; $6C13: $FE $00
    dec c                                         ; $6C15: $0D
    ld hl, $00E7                                  ; $6C16: $21 $E7 $00
    ld e, $EF                                     ; $6C19: $1E $EF
    ld [bc], a                                    ; $6C1B: $02
    ld e, $F7                                     ; $6C1C: $1E $F7
    inc b                                         ; $6C1E: $04
    inc e                                         ; $6C1F: $1C
    rst RST_38                                    ; $6C20: $FF
    ld b, $1D                                     ; $6C21: $06 $1D
    rlca                                          ; $6C23: $07
    ld [$0F1E], sp                                ; $6C24: $08 $1E $0F
    ld a, [bc]                                    ; $6C27: $0A
    ld l, $EF                                     ; $6C28: $2E $EF
    inc c                                         ; $6C2A: $0C
    ld l, $F7                                     ; $6C2B: $2E $F7
    ld c, $2C                                     ; $6C2D: $0E $2C
    rst RST_38                                    ; $6C2F: $FF
    db $10                                        ; $6C30: $10
    dec l                                         ; $6C31: $2D
    rlca                                          ; $6C32: $07
    ld [de], a                                    ; $6C33: $12
    ld l, $0F                                     ; $6C34: $2E $0F
    inc d                                         ; $6C36: $14
    inc a                                         ; $6C37: $3C
    rst RST_38                                    ; $6C38: $FF
    ld d, $3D                                     ; $6C39: $16 $3D
    rlca                                          ; $6C3B: $07
    jr jr_007_6C3E                                ; $6C3C: $18 $00

jr_007_6C3E:
    inc c                                         ; $6C3E: $0C
    ld a, l                                       ; $6C3F: $7D
    add b                                         ; $6C40: $80
    ld c, e                                       ; $6C41: $4B
    rla                                           ; $6C42: $17
    ld b, a                                       ; $6C43: $47
    ld l, h                                       ; $6C44: $6C
    db $FD                                        ; $6C45: $FD
    nop                                           ; $6C46: $00
    dec c                                         ; $6C47: $0D
    ld l, $DF                                     ; $6C48: $2E $DF
    nop                                           ; $6C4A: $00
    dec h                                         ; $6C4B: $25
    rst RST_20                                    ; $6C4C: $E7
    ld [bc], a                                    ; $6C4D: $02
    ld [hl+], a                                   ; $6C4E: $22
    rst RST_28                                    ; $6C4F: $EF
    inc b                                         ; $6C50: $04
    inc hl                                        ; $6C51: $23
    rst RST_30                                    ; $6C52: $F7
    ld b, $21                                     ; $6C53: $06 $21
    rst RST_38                                    ; $6C55: $FF
    ld [$0729], sp                                ; $6C56: $08 $29 $07
    ld a, [bc]                                    ; $6C59: $0A
    ld [hl-], a                                   ; $6C5A: $32
    rrca                                          ; $6C5B: $0F
    inc c                                         ; $6C5C: $0C
    dec [hl]                                      ; $6C5D: $35
    rst RST_20                                    ; $6C5E: $E7
    ld c, $32                                     ; $6C5F: $0E $32
    rst RST_28                                    ; $6C61: $EF
    db $10                                        ; $6C62: $10
    inc sp                                        ; $6C63: $33
    rst RST_30                                    ; $6C64: $F7
    ld [de], a                                    ; $6C65: $12
    ld sp, $14FF                                  ; $6C66: $31 $FF $14
    add hl, sp                                    ; $6C69: $39
    rlca                                          ; $6C6A: $07
    ld d, $39                                     ; $6C6B: $16 $39
    rla                                           ; $6C6D: $17
    jr jr_007_6C70                                ; $6C6E: $18 $00

jr_007_6C70:
    inc c                                         ; $6C70: $0C
    nop                                           ; $6C71: $00
    jr nz, jr_007_6CC1                            ; $6C72: $20 $4D

    rla                                           ; $6C74: $17
    ld a, c                                       ; $6C75: $79
    ld l, h                                       ; $6C76: $6C
    db $FD                                        ; $6C77: $FD
    nop                                           ; $6C78: $00

jr_007_6C79:
    dec c                                         ; $6C79: $0D
    inc h                                         ; $6C7A: $24
    rst RST_20                                    ; $6C7B: $E7
    nop                                           ; $6C7C: $00
    ld a, [hl+]                                   ; $6C7D: $2A
    rst RST_28                                    ; $6C7E: $EF
    ld [bc], a                                    ; $6C7F: $02
    jr nz, jr_007_6C79                            ; $6C80: $20 $F7

    inc b                                         ; $6C82: $04
    rra                                           ; $6C83: $1F
    rst RST_38                                    ; $6C84: $FF
    ld b, $1F                                     ; $6C85: $06 $1F
    rlca                                          ; $6C87: $07
    ld [$F730], sp                                ; $6C88: $08 $30 $F7
    ld a, [bc]                                    ; $6C8B: $0A
    cpl                                           ; $6C8C: $2F
    rst RST_38                                    ; $6C8D: $FF
    inc c                                         ; $6C8E: $0C
    cpl                                           ; $6C8F: $2F
    rlca                                          ; $6C90: $07
    ld c, $30                                     ; $6C91: $0E $30
    rrca                                          ; $6C93: $0F
    db $10                                        ; $6C94: $10
    ld a, [hl-]                                   ; $6C95: $3A
    rst RST_28                                    ; $6C96: $EF
    ld [de], a                                    ; $6C97: $12
    ccf                                           ; $6C98: $3F
    rst RST_38                                    ; $6C99: $FF
    inc d                                         ; $6C9A: $14
    ccf                                           ; $6C9B: $3F
    rlca                                          ; $6C9C: $07
    ld d, $24                                     ; $6C9D: $16 $24
    rla                                           ; $6C9F: $17
    jr jr_007_6CA2                                ; $6CA0: $18 $00

jr_007_6CA2:
    inc c                                         ; $6CA2: $0C
    ld a, [hl]                                    ; $6CA3: $7E
    ret nz                                        ; $6CA4: $C0

    ld c, [hl]                                    ; $6CA5: $4E
    rla                                           ; $6CA6: $17
    xor e                                         ; $6CA7: $AB
    ld l, h                                       ; $6CA8: $6C
    db $FD                                        ; $6CA9: $FD
    nop                                           ; $6CAA: $00
    ld c, $28                                     ; $6CAB: $0E $28
    rst RST_18                                    ; $6CAD: $DF
    nop                                           ; $6CAE: $00
    inc hl                                        ; $6CAF: $23
    rst RST_20                                    ; $6CB0: $E7
    ld [bc], a                                    ; $6CB1: $02
    inc sp                                        ; $6CB2: $33
    rst RST_20                                    ; $6CB3: $E7
    inc b                                         ; $6CB4: $04
    ld [hl+], a                                   ; $6CB5: $22
    rst RST_28                                    ; $6CB6: $EF
    ld b, $32                                     ; $6CB7: $06 $32
    rst RST_28                                    ; $6CB9: $EF
    ld [$F722], sp                                ; $6CBA: $08 $22 $F7
    ld a, [bc]                                    ; $6CBD: $0A
    ld [hl-], a                                   ; $6CBE: $32
    rst RST_30                                    ; $6CBF: $F7
    inc c                                         ; $6CC0: $0C

jr_007_6CC1:
    ld [hl+], a                                   ; $6CC1: $22
    rst RST_38                                    ; $6CC2: $FF
    ld c, $32                                     ; $6CC3: $0E $32
    rst RST_38                                    ; $6CC5: $FF
    db $10                                        ; $6CC6: $10
    ld [hl+], a                                   ; $6CC7: $22
    rlca                                          ; $6CC8: $07
    ld [de], a                                    ; $6CC9: $12
    ld [hl-], a                                   ; $6CCA: $32
    rlca                                          ; $6CCB: $07
    inc d                                         ; $6CCC: $14
    ld [hl+], a                                   ; $6CCD: $22
    rrca                                          ; $6CCE: $0F
    ld d, $32                                     ; $6CCF: $16 $32
    rrca                                          ; $6CD1: $0F
    jr jr_007_6CFB                                ; $6CD2: $18 $27

    rla                                           ; $6CD4: $17
    ld a, [de]                                    ; $6CD5: $1A
    nop                                           ; $6CD6: $00
    inc c                                         ; $6CD7: $0C
    ld a, [hl]                                    ; $6CD8: $7E
    add b                                         ; $6CD9: $80
    ld d, b                                       ; $6CDA: $50
    rla                                           ; $6CDB: $17
    ldh [$FF6C], a                                ; $6CDC: $E0 $6C
    db $FD                                        ; $6CDE: $FD
    nop                                           ; $6CDF: $00
    ld c, $28                                     ; $6CE0: $0E $28
    rst RST_18                                    ; $6CE2: $DF
    nop                                           ; $6CE3: $00
    inc h                                         ; $6CE4: $24
    rst RST_20                                    ; $6CE5: $E7
    ld [bc], a                                    ; $6CE6: $02
    inc h                                         ; $6CE7: $24
    rst RST_28                                    ; $6CE8: $EF
    inc b                                         ; $6CE9: $04
    inc [hl]                                      ; $6CEA: $34
    rst RST_28                                    ; $6CEB: $EF
    ld b, $29                                     ; $6CEC: $06 $29
    rst RST_30                                    ; $6CEE: $F7
    ld [$FF24], sp                                ; $6CEF: $08 $24 $FF
    ld a, [bc]                                    ; $6CF2: $0A
    inc hl                                        ; $6CF3: $23
    rlca                                          ; $6CF4: $07
    inc c                                         ; $6CF5: $0C
    inc hl                                        ; $6CF6: $23
    rrca                                          ; $6CF7: $0F
    ld c, $39                                     ; $6CF8: $0E $39
    rst RST_30                                    ; $6CFA: $F7

jr_007_6CFB:
    db $10                                        ; $6CFB: $10
    inc [hl]                                      ; $6CFC: $34
    rst RST_38                                    ; $6CFD: $FF
    ld [de], a                                    ; $6CFE: $12
    inc sp                                        ; $6CFF: $33
    rlca                                          ; $6D00: $07
    inc d                                         ; $6D01: $14
    inc sp                                        ; $6D02: $33
    rrca                                          ; $6D03: $0F
    ld d, $28                                     ; $6D04: $16 $28
    rla                                           ; $6D06: $17
    jr jr_007_6D3D                                ; $6D07: $18 $34

    rst RST_20                                    ; $6D09: $E7
    ld a, [de]                                    ; $6D0A: $1A
    nop                                           ; $6D0B: $00
    inc c                                         ; $6D0C: $0C
    nop                                           ; $6D0D: $00
    ld b, b                                       ; $6D0E: $40
    ld d, d                                       ; $6D0F: $52
    rla                                           ; $6D10: $17
    dec d                                         ; $6D11: $15

jr_007_6D12:
    ld l, l                                       ; $6D12: $6D
    ei                                            ; $6D13: $FB
    nop                                           ; $6D14: $00
    dec bc                                        ; $6D15: $0B
    ld a, [hl+]                                   ; $6D16: $2A
    rst RST_28                                    ; $6D17: $EF
    nop                                           ; $6D18: $00
    jr z, jr_007_6D12                             ; $6D19: $28 $F7

    ld [bc], a                                    ; $6D1B: $02
    dec h                                         ; $6D1C: $25
    rst RST_38                                    ; $6D1D: $FF
    inc b                                         ; $6D1E: $04
    dec h                                         ; $6D1F: $25
    rlca                                          ; $6D20: $07
    ld b, $25                                     ; $6D21: $06 $25
    rrca                                          ; $6D23: $0F
    ld [$FF35], sp                                ; $6D24: $08 $35 $FF
    ld a, [bc]                                    ; $6D27: $0A
    dec [hl]                                      ; $6D28: $35
    rlca                                          ; $6D29: $07
    inc c                                         ; $6D2A: $0C
    dec [hl]                                      ; $6D2B: $35
    rrca                                          ; $6D2C: $0F
    ld c, $38                                     ; $6D2D: $0E $38
    rst RST_30                                    ; $6D2F: $F7
    db $10                                        ; $6D30: $10
    ld a, [hl-]                                   ; $6D31: $3A
    rst RST_28                                    ; $6D32: $EF

jr_007_6D33:
    ld [de], a                                    ; $6D33: $12
    add hl, hl                                    ; $6D34: $29
    rla                                           ; $6D35: $17
    inc d                                         ; $6D36: $14
    nop                                           ; $6D37: $00
    inc c                                         ; $6D38: $0C
    ld a, a                                       ; $6D39: $7F
    and b                                         ; $6D3A: $A0
    ld d, e                                       ; $6D3B: $53
    rla                                           ; $6D3C: $17

jr_007_6D3D:
    ld b, c                                       ; $6D3D: $41

jr_007_6D3E:
    ld l, l                                       ; $6D3E: $6D
    db $FD                                        ; $6D3F: $FD
    nop                                           ; $6D40: $00
    add hl, bc                                    ; $6D41: $09
    jr nz, jr_007_6D33                            ; $6D42: $20 $EF

    nop                                           ; $6D44: $00
    jr nz, jr_007_6D3E                            ; $6D45: $20 $F7

jr_007_6D47:
    ld [bc], a                                    ; $6D47: $02
    add hl, hl                                    ; $6D48: $29
    rst RST_38                                    ; $6D49: $FF
    inc b                                         ; $6D4A: $04
    ld a, [hl+]                                   ; $6D4B: $2A
    rlca                                          ; $6D4C: $07
    ld b, $2B                                     ; $6D4D: $06 $2B
    rrca                                          ; $6D4F: $0F
    ld [$1725], sp                                ; $6D50: $08 $25 $17
    ld a, [bc]                                    ; $6D53: $0A
    add hl, sp                                    ; $6D54: $39
    rst RST_38                                    ; $6D55: $FF
    inc c                                         ; $6D56: $0C
    ld a, [hl-]                                   ; $6D57: $3A
    rlca                                          ; $6D58: $07
    ld c, $3B                                     ; $6D59: $0E $3B
    rrca                                          ; $6D5B: $0F
    stop                                          ; $6D5C: $10 $00
    ret nz                                        ; $6D5E: $C0

    ld d, h                                       ; $6D5F: $54
    rla                                           ; $6D60: $17
    ld h, l                                       ; $6D61: $65
    ld l, l                                       ; $6D62: $6D
    db $FD                                        ; $6D63: $FD
    nop                                           ; $6D64: $00
    inc b                                         ; $6D65: $04
    jr nc, jr_007_6D47                            ; $6D66: $30 $DF

jr_007_6D68:
    nop                                           ; $6D68: $00
    jr nc, @-$17                                  ; $6D69: $30 $E7

    ld [bc], a                                    ; $6D6B: $02
    jr nc, @-$0F                                  ; $6D6C: $30 $EF

    inc b                                         ; $6D6E: $04
    jr nc, jr_007_6D68                            ; $6D6F: $30 $F7

    ld b, $00                                     ; $6D71: $06 $00
    ld b, b                                       ; $6D73: $40
    ld d, l                                       ; $6D74: $55
    rla                                           ; $6D75: $17
    ld a, d                                       ; $6D76: $7A
    ld l, l                                       ; $6D77: $6D
    db $FD                                        ; $6D78: $FD
    nop                                           ; $6D79: $00
    inc b                                         ; $6D7A: $04
    ld h, $DF                                     ; $6D7B: $26 $DF

jr_007_6D7D:
    nop                                           ; $6D7D: $00
    ld [hl-], a                                   ; $6D7E: $32
    rst RST_20                                    ; $6D7F: $E7
    ld [bc], a                                    ; $6D80: $02
    jr nc, @-$0F                                  ; $6D81: $30 $EF

    inc b                                         ; $6D83: $04
    jr nc, jr_007_6D7D                            ; $6D84: $30 $F7

    ld b, $00                                     ; $6D86: $06 $00
    inc c                                         ; $6D88: $0C
    nop                                           ; $6D89: $00
    ret nz                                        ; $6D8A: $C0

    ld d, l                                       ; $6D8B: $55
    rla                                           ; $6D8C: $17
    sbc e                                         ; $6D8D: $9B
    ld l, l                                       ; $6D8E: $6D
    db $FC                                        ; $6D8F: $FC
    nop                                           ; $6D90: $00
    jr nz, jr_007_6D9F                            ; $6D91: $20 $0C

    nop                                           ; $6D93: $00
    ret nz                                        ; $6D94: $C0

    ld d, l                                       ; $6D95: $55
    rla                                           ; $6D96: $17
    sbc e                                         ; $6D97: $9B
    ld l, l                                       ; $6D98: $6D
    ld sp, hl                                     ; $6D99: $F9
    nop                                           ; $6D9A: $00
    ld a, [bc]                                    ; $6D9B: $0A
    ld a, [hl+]                                   ; $6D9C: $2A
    di                                            ; $6D9D: $F3
    nop                                           ; $6D9E: $00

jr_007_6D9F:
    dec h                                         ; $6D9F: $25
    ei                                            ; $6DA0: $FB
    ld [bc], a                                    ; $6DA1: $02
    add hl, hl                                    ; $6DA2: $29
    inc bc                                        ; $6DA3: $03
    inc b                                         ; $6DA4: $04
    dec h                                         ; $6DA5: $25
    dec bc                                        ; $6DA6: $0B
    ld b, $3A                                     ; $6DA7: $06 $3A
    di                                            ; $6DA9: $F3
    ld [$FB35], sp                                ; $6DAA: $08 $35 $FB
    ld a, [bc]                                    ; $6DAD: $0A
    add hl, sp                                    ; $6DAE: $39
    inc bc                                        ; $6DAF: $03
    inc c                                         ; $6DB0: $0C
    dec [hl]                                      ; $6DB1: $35
    dec bc                                        ; $6DB2: $0B
    ld c, $29                                     ; $6DB3: $0E $29
    inc de                                        ; $6DB5: $13
    db $10                                        ; $6DB6: $10
    inc [hl]                                      ; $6DB7: $34
    dec de                                        ; $6DB8: $1B
    ld [de], a                                    ; $6DB9: $12
    nop                                           ; $6DBA: $00
    inc c                                         ; $6DBB: $0C
    nop                                           ; $6DBC: $00
    nop                                           ; $6DBD: $00
    ld d, a                                       ; $6DBE: $57
    rla                                           ; $6DBF: $17
    call nz, $FD6D                                ; $6DC0: $C4 $6D $FD
    nop                                           ; $6DC3: $00
    dec c                                         ; $6DC4: $0D
    ld hl, $00E6                                  ; $6DC5: $21 $E6 $00
    daa                                           ; $6DC8: $27
    xor $02                                       ; $6DC9: $EE $02
    ld h, $F6                                     ; $6DCB: $26 $F6
    inc b                                         ; $6DCD: $04
    rra                                           ; $6DCE: $1F
    cp $06                                        ; $6DCF: $FE $06
    jr nz, @+$08                                  ; $6DD1: $20 $06

    ld [$0E20], sp                                ; $6DD3: $08 $20 $0E
    ld a, [bc]                                    ; $6DD6: $0A
    scf                                           ; $6DD7: $37
    xor $0C                                       ; $6DD8: $EE $0C

jr_007_6DDA:
    ld [hl], $F6                                  ; $6DDA: $36 $F6
    ld c, $2F                                     ; $6DDC: $0E $2F
    cp $10                                        ; $6DDE: $FE $10
    jr nc, @+$08                                  ; $6DE0: $30 $06

    ld [de], a                                    ; $6DE2: $12
    jr nc, @+$10                                  ; $6DE3: $30 $0E

    inc d                                         ; $6DE5: $14
    db $10                                        ; $6DE6: $10
    ld b, $16                                     ; $6DE7: $06 $16
    db $10                                        ; $6DE9: $10
    ld c, $18                                     ; $6DEA: $0E $18
    nop                                           ; $6DEC: $00
    inc c                                         ; $6DED: $0C
    add b                                         ; $6DEE: $80
    and b                                         ; $6DEF: $A0
    ld e, b                                       ; $6DF0: $58
    rla                                           ; $6DF1: $17
    or $6D                                        ; $6DF2: $F6 $6D
    db $FD                                        ; $6DF4: $FD
    nop                                           ; $6DF5: $00
    dec c                                         ; $6DF6: $0D
    jr nc, jr_007_6DDA                            ; $6DF7: $30 $E1

    nop                                           ; $6DF9: $00
    ld l, $E9                                     ; $6DFA: $2E $E9
    ld [bc], a                                    ; $6DFC: $02
    dec hl                                        ; $6DFD: $2B
    pop af                                        ; $6DFE: $F1
    inc b                                         ; $6DFF: $04
    add hl, hl                                    ; $6E00: $29
    ld sp, hl                                     ; $6E01: $F9
    ld b, $28                                     ; $6E02: $06 $28
    ld bc, $2908                                  ; $6E04: $01 $08 $29
    add hl, bc                                    ; $6E07: $09
    ld a, [bc]                                    ; $6E08: $0A
    inc sp                                        ; $6E09: $33
    ld de, $3B0C                                  ; $6E0A: $11 $0C $3B
    pop af                                        ; $6E0D: $F1
    ld c, $39                                     ; $6E0E: $0E $39
    ld sp, hl                                     ; $6E10: $F9
    db $10                                        ; $6E11: $10
    jr c, jr_007_6E15                             ; $6E12: $38 $01

    ld [de], a                                    ; $6E14: $12

jr_007_6E15:
    add hl, sp                                    ; $6E15: $39
    add hl, bc                                    ; $6E16: $09
    inc d                                         ; $6E17: $14
    ld a, $E9                                     ; $6E18: $3E $E9
    ld d, $3A                                     ; $6E1A: $16 $3A
    add hl, de                                    ; $6E1C: $19
    jr jr_007_6E1F                                ; $6E1D: $18 $00

jr_007_6E1F:
    ld b, b                                       ; $6E1F: $40
    ld e, d                                       ; $6E20: $5A
    rla                                           ; $6E21: $17
    ld h, $6E                                     ; $6E22: $26 $6E
    db $FD                                        ; $6E24: $FD
    nop                                           ; $6E25: $00
    dec b                                         ; $6E26: $05
    ld [hl], $DF                                  ; $6E27: $36 $DF

jr_007_6E29:
    nop                                           ; $6E29: $00
    jr nc, @-$17                                  ; $6E2A: $30 $E7

    ld [bc], a                                    ; $6E2C: $02
    jr nc, @-$0F                                  ; $6E2D: $30 $EF

    inc b                                         ; $6E2F: $04
    jr nc, jr_007_6E29                            ; $6E30: $30 $F7

    ld b, $30                                     ; $6E32: $06 $30
    rst RST_38                                    ; $6E34: $FF
    ld [$E000], sp                                ; $6E35: $08 $00 $E0
    ld e, d                                       ; $6E38: $5A
    rla                                           ; $6E39: $17
    ld a, $6E                                     ; $6E3A: $3E $6E
    db $FD                                        ; $6E3C: $FD
    nop                                           ; $6E3D: $00
    dec b                                         ; $6E3E: $05
    scf                                           ; $6E3F: $37
    rst RST_18                                    ; $6E40: $DF

jr_007_6E41:
    nop                                           ; $6E41: $00
    jr nc, @-$17                                  ; $6E42: $30 $E7

    ld [bc], a                                    ; $6E44: $02
    jr nc, @-$0F                                  ; $6E45: $30 $EF

    inc b                                         ; $6E47: $04
    jr nc, jr_007_6E41                            ; $6E48: $30 $F7

    ld b, $30                                     ; $6E4A: $06 $30
    rst RST_38                                    ; $6E4C: $FF
    ld [$0C00], sp                                ; $6E4D: $08 $00 $0C
    add d                                         ; $6E50: $82
    add b                                         ; $6E51: $80
    ld e, e                                       ; $6E52: $5B
    rla                                           ; $6E53: $17
    ld e, b                                       ; $6E54: $58
    ld l, [hl]                                    ; $6E55: $6E
    ei                                            ; $6E56: $FB
    nop                                           ; $6E57: $00
    inc c                                         ; $6E58: $0C
    inc [hl]                                      ; $6E59: $34
    rst RST_18                                    ; $6E5A: $DF
    nop                                           ; $6E5B: $00
    ld sp, $02E7                                  ; $6E5C: $31 $E7 $02
    cpl                                           ; $6E5F: $2F
    rst RST_28                                    ; $6E60: $EF
    inc b                                         ; $6E61: $04
    inc l                                         ; $6E62: $2C
    rst RST_30                                    ; $6E63: $F7
    ld b, $23                                     ; $6E64: $06 $23
    rst RST_38                                    ; $6E66: $FF
    ld [$0721], sp                                ; $6E67: $08 $21 $07
    ld a, [bc]                                    ; $6E6A: $0A
    jr nz, jr_007_6E7C                            ; $6E6B: $20 $0F

    inc c                                         ; $6E6D: $0C
    inc a                                         ; $6E6E: $3C
    rst RST_30                                    ; $6E6F: $F7
    ld c, $33                                     ; $6E70: $0E $33
    rst RST_38                                    ; $6E72: $FF
    db $10                                        ; $6E73: $10
    ld sp, $1207                                  ; $6E74: $31 $07 $12
    jr nc, jr_007_6E88                            ; $6E77: $30 $0F

    inc d                                         ; $6E79: $14
    jr z, jr_007_6E93                             ; $6E7A: $28 $17

jr_007_6E7C:
    ld d, $00                                     ; $6E7C: $16 $00
    inc c                                         ; $6E7E: $0C
    nop                                           ; $6E7F: $00
    nop                                           ; $6E80: $00
    ld e, l                                       ; $6E81: $5D

jr_007_6E82:
    rla                                           ; $6E82: $17
    add a                                         ; $6E83: $87
    ld l, [hl]                                    ; $6E84: $6E
    ld [$0700], sp                                ; $6E85: $08 $00 $07

jr_007_6E88:
    inc sp                                        ; $6E88: $33
    rst RST_18                                    ; $6E89: $DF
    nop                                           ; $6E8A: $00
    dec [hl]                                      ; $6E8B: $35
    rst RST_20                                    ; $6E8C: $E7
    ld [bc], a                                    ; $6E8D: $02
    dec h                                         ; $6E8E: $25
    rst RST_20                                    ; $6E8F: $E7
    inc b                                         ; $6E90: $04
    jr nz, jr_007_6E82                            ; $6E91: $20 $EF

jr_007_6E93:
    ld b, $20                                     ; $6E93: $06 $20
    rst RST_30                                    ; $6E95: $F7
    ld [$FF20], sp                                ; $6E96: $08 $20 $FF
    ld a, [bc]                                    ; $6E99: $0A
    jr nz, jr_007_6EA3                            ; $6E9A: $20 $07

    inc c                                         ; $6E9C: $0C
    nop                                           ; $6E9D: $00
    ldh [$FF5D], a                                ; $6E9E: $E0 $5D
    rla                                           ; $6EA0: $17
    and l                                         ; $6EA1: $A5

jr_007_6EA2:
    ld l, [hl]                                    ; $6EA2: $6E

jr_007_6EA3:
    ld [$0600], sp                                ; $6EA3: $08 $00 $06
    jr nc, @-$0F                                  ; $6EA6: $30 $EF

    nop                                           ; $6EA8: $00
    jr nc, jr_007_6EA2                            ; $6EA9: $30 $F7

    ld [bc], a                                    ; $6EAB: $02
    jr nc, @+$01                                  ; $6EAC: $30 $FF

    inc b                                         ; $6EAE: $04
    jr nc, jr_007_6EB8                            ; $6EAF: $30 $07

    ld b, $2E                                     ; $6EB1: $06 $2E
    rrca                                          ; $6EB3: $0F
    ld [$1730], sp                                ; $6EB4: $08 $30 $17
    ld a, [bc]                                    ; $6EB7: $0A

jr_007_6EB8:
    nop                                           ; $6EB8: $00
    and b                                         ; $6EB9: $A0
    ld e, [hl]                                    ; $6EBA: $5E
    rla                                           ; $6EBB: $17
    ret nz                                        ; $6EBC: $C0

jr_007_6EBD:
    ld l, [hl]                                    ; $6EBD: $6E
    ld [$0600], sp                                ; $6EBE: $08 $00 $06
    jr nc, @-$0F                                  ; $6EC1: $30 $EF

    nop                                           ; $6EC3: $00
    jr nc, jr_007_6EBD                            ; $6EC4: $30 $F7

    ld [bc], a                                    ; $6EC6: $02
    jr nc, @+$01                                  ; $6EC7: $30 $FF

    inc b                                         ; $6EC9: $04
    jr nc, jr_007_6ED3                            ; $6ECA: $30 $07

    ld b, $2E                                     ; $6ECC: $06 $2E
    rrca                                          ; $6ECE: $0F
    ld [$1730], sp                                ; $6ECF: $08 $30 $17
    ld a, [bc]                                    ; $6ED2: $0A

jr_007_6ED3:
    nop                                           ; $6ED3: $00
    inc c                                         ; $6ED4: $0C
    db $10                                        ; $6ED5: $10
    ld h, b                                       ; $6ED6: $60
    ld e, a                                       ; $6ED7: $5F

jr_007_6ED8:
    rla                                           ; $6ED8: $17
    db $DD                                        ; $6ED9: $DD
    ld l, [hl]                                    ; $6EDA: $6E
    db $FD                                        ; $6EDB: $FD
    nop                                           ; $6EDC: $00
    db $10                                        ; $6EDD: $10
    ld [$00E7], sp                                ; $6EDE: $08 $E7 $00
    ld [$02EF], sp                                ; $6EE1: $08 $EF $02
    jr @-$17                                      ; $6EE4: $18 $E7

    inc b                                         ; $6EE6: $04
    jr jr_007_6ED8                                ; $6EE7: $18 $EF

    ld b, $10                                     ; $6EE9: $06 $10
    rst RST_30                                    ; $6EEB: $F7

jr_007_6EEC:
    ld [$FF18], sp                                ; $6EEC: $08 $18 $FF
    ld a, [bc]                                    ; $6EEF: $0A
    jr nz, jr_007_6EF9                            ; $6EF0: $20 $07

    inc c                                         ; $6EF2: $0C
    jr nz, jr_007_6EEC                            ; $6EF3: $20 $F7

    ld c, $28                                     ; $6EF5: $0E $28
    rst RST_38                                    ; $6EF7: $FF

jr_007_6EF8:
    db $10                                        ; $6EF8: $10

jr_007_6EF9:
    jr nc, @+$09                                  ; $6EF9: $30 $07

    ld [de], a                                    ; $6EFB: $12
    jr z, @-$0F                                   ; $6EFC: $28 $EF

    inc d                                         ; $6EFE: $14
    jr nc, jr_007_6EF8                            ; $6EFF: $30 $F7

    ld d, $28                                     ; $6F01: $16 $28
    rst RST_20                                    ; $6F03: $E7
    jr jr_007_6F36                                ; $6F04: $18 $30

    rrca                                          ; $6F06: $0F
    ld a, [de]                                    ; $6F07: $1A
    jr c, jr_007_6EF9                             ; $6F08: $38 $EF

    inc e                                         ; $6F0A: $1C
    jr c, @+$01                                   ; $6F0B: $38 $FF

    ld e, $00                                     ; $6F0D: $1E $00
    inc c                                         ; $6F0F: $0C
    nop                                           ; $6F10: $00
    ld h, b                                       ; $6F11: $60
    ld h, c                                       ; $6F12: $61
    rla                                           ; $6F13: $17
    jr jr_007_6F85                                ; $6F14: $18 $6F

    db $FD                                        ; $6F16: $FD
    nop                                           ; $6F17: $00
    ld b, $22                                     ; $6F18: $06 $22
    rlca                                          ; $6F1A: $07
    nop                                           ; $6F1B: $00
    ld [hl-], a                                   ; $6F1C: $32
    rlca                                          ; $6F1D: $07
    ld [bc], a                                    ; $6F1E: $02
    jr nz, jr_007_6F30                            ; $6F1F: $20 $0F

    inc b                                         ; $6F21: $04
    jr nc, jr_007_6F33                            ; $6F22: $30 $0F

    ld b, $25                                     ; $6F24: $06 $25
    rla                                           ; $6F26: $17
    ld [$1735], sp                                ; $6F27: $08 $35 $17
    ld a, [bc]                                    ; $6F2A: $0A
    nop                                           ; $6F2B: $00
    jr nz, jr_007_6F90                            ; $6F2C: $20 $62

    rla                                           ; $6F2E: $17
    inc sp                                        ; $6F2F: $33

jr_007_6F30:
    ld l, a                                       ; $6F30: $6F
    db $FD                                        ; $6F31: $FD
    nop                                           ; $6F32: $00

jr_007_6F33:
    rlca                                          ; $6F33: $07
    inc h                                         ; $6F34: $24
    rst RST_20                                    ; $6F35: $E7

jr_007_6F36:
    nop                                           ; $6F36: $00
    ld a, [hl+]                                   ; $6F37: $2A
    rst RST_28                                    ; $6F38: $EF
    ld [bc], a                                    ; $6F39: $02
    add hl, hl                                    ; $6F3A: $29
    rst RST_30                                    ; $6F3B: $F7
    inc b                                         ; $6F3C: $04
    inc hl                                        ; $6F3D: $23
    rst RST_38                                    ; $6F3E: $FF
    ld b, $33                                     ; $6F3F: $06 $33
    rst RST_38                                    ; $6F41: $FF
    ld [$F739], sp                                ; $6F42: $08 $39 $F7
    ld a, [bc]                                    ; $6F45: $0A
    ld a, [hl-]                                   ; $6F46: $3A
    rst RST_28                                    ; $6F47: $EF
    inc c                                         ; $6F48: $0C
    nop                                           ; $6F49: $00
    inc c                                         ; $6F4A: $0C
    nop                                           ; $6F4B: $00
    nop                                           ; $6F4C: $00
    ld h, e                                       ; $6F4D: $63
    rla                                           ; $6F4E: $17
    ld d, e                                       ; $6F4F: $53
    ld l, a                                       ; $6F50: $6F
    db $FD                                        ; $6F51: $FD
    nop                                           ; $6F52: $00
    dec b                                         ; $6F53: $05
    ld [hl+], a                                   ; $6F54: $22
    rlca                                          ; $6F55: $07
    nop                                           ; $6F56: $00
    ld [hl-], a                                   ; $6F57: $32
    rlca                                          ; $6F58: $07
    ld [bc], a                                    ; $6F59: $02
    dec e                                         ; $6F5A: $1D
    rrca                                          ; $6F5B: $0F
    inc b                                         ; $6F5C: $04
    jr nc, jr_007_6F6E                            ; $6F5D: $30 $0F

    ld b, $33                                     ; $6F5F: $06 $33
    rla                                           ; $6F61: $17
    ld [$0C00], sp                                ; $6F62: $08 $00 $0C
    nop                                           ; $6F65: $00
    and b                                         ; $6F66: $A0
    ld h, e                                       ; $6F67: $63
    rla                                           ; $6F68: $17
    ld l, l                                       ; $6F69: $6D
    ld l, a                                       ; $6F6A: $6F
    db $FD                                        ; $6F6B: $FD
    nop                                           ; $6F6C: $00
    dec bc                                        ; $6F6D: $0B

jr_007_6F6E:
    dec h                                         ; $6F6E: $25
    rst RST_20                                    ; $6F6F: $E7
    nop                                           ; $6F70: $00
    inc hl                                        ; $6F71: $23
    rst RST_28                                    ; $6F72: $EF
    ld [bc], a                                    ; $6F73: $02
    inc hl                                        ; $6F74: $23
    rst RST_30                                    ; $6F75: $F7
    inc b                                         ; $6F76: $04
    inc hl                                        ; $6F77: $23
    rst RST_38                                    ; $6F78: $FF
    ld b, $23                                     ; $6F79: $06 $23
    rlca                                          ; $6F7B: $07
    ld [$0F23], sp                                ; $6F7C: $08 $23 $0F
    ld a, [bc]                                    ; $6F7F: $0A
    inc sp                                        ; $6F80: $33
    db $ED                                        ; $6F81: $ED
    inc c                                         ; $6F82: $0C
    inc sp                                        ; $6F83: $33
    push af                                       ; $6F84: $F5

jr_007_6F85:
    ld c, $33                                     ; $6F85: $0E $33
    db $FD                                        ; $6F87: $FD
    db $10                                        ; $6F88: $10
    inc sp                                        ; $6F89: $33
    dec b                                         ; $6F8A: $05
    ld [de], a                                    ; $6F8B: $12
    inc sp                                        ; $6F8C: $33
    dec c                                         ; $6F8D: $0D
    inc d                                         ; $6F8E: $14
    nop                                           ; $6F8F: $00

jr_007_6F90:
    inc c                                         ; $6F90: $0C
    nop                                           ; $6F91: $00
    nop                                           ; $6F92: $00
    ld h, l                                       ; $6F93: $65
    rla                                           ; $6F94: $17
    sbc c                                         ; $6F95: $99
    ld l, a                                       ; $6F96: $6F
    db $FD                                        ; $6F97: $FD
    nop                                           ; $6F98: $00
    inc c                                         ; $6F99: $0C
    dec h                                         ; $6F9A: $25
    rst RST_20                                    ; $6F9B: $E7
    nop                                           ; $6F9C: $00
    dec hl                                        ; $6F9D: $2B
    rst RST_28                                    ; $6F9E: $EF
    ld [bc], a                                    ; $6F9F: $02
    add hl, hl                                    ; $6FA0: $29
    rst RST_30                                    ; $6FA1: $F7
    inc b                                         ; $6FA2: $04
    inc h                                         ; $6FA3: $24
    rst RST_38                                    ; $6FA4: $FF
    ld b, $23                                     ; $6FA5: $06 $23
    rlca                                          ; $6FA7: $07
    ld [$0F1E], sp                                ; $6FA8: $08 $1E $0F
    ld a, [bc]                                    ; $6FAB: $0A
    dec sp                                        ; $6FAC: $3B
    rst RST_28                                    ; $6FAD: $EF
    inc c                                         ; $6FAE: $0C
    add hl, sp                                    ; $6FAF: $39
    rst RST_30                                    ; $6FB0: $F7
    ld c, $34                                     ; $6FB1: $0E $34
    rst RST_38                                    ; $6FB3: $FF
    db $10                                        ; $6FB4: $10
    inc sp                                        ; $6FB5: $33
    rlca                                          ; $6FB6: $07
    ld [de], a                                    ; $6FB7: $12
    inc sp                                        ; $6FB8: $33
    rrca                                          ; $6FB9: $0F
    inc d                                         ; $6FBA: $14
    dec sp                                        ; $6FBB: $3B
    rla                                           ; $6FBC: $17
    ld d, $00                                     ; $6FBD: $16 $00
    inc c                                         ; $6FBF: $0C
    nop                                           ; $6FC0: $00
    add b                                         ; $6FC1: $80
    ld h, [hl]                                    ; $6FC2: $66
    rla                                           ; $6FC3: $17
    ret z                                         ; $6FC4: $C8

    ld l, a                                       ; $6FC5: $6F
    db $FD                                        ; $6FC6: $FD
    nop                                           ; $6FC7: $00
    dec c                                         ; $6FC8: $0D
    dec l                                         ; $6FC9: $2D
    rst RST_20                                    ; $6FCA: $E7
    nop                                           ; $6FCB: $00
    ld a, [hl+]                                   ; $6FCC: $2A
    rst RST_28                                    ; $6FCD: $EF
    ld [bc], a                                    ; $6FCE: $02
    add hl, hl                                    ; $6FCF: $29
    rst RST_30                                    ; $6FD0: $F7
    inc b                                         ; $6FD1: $04
    inc hl                                        ; $6FD2: $23
    rst RST_38                                    ; $6FD3: $FF
    ld b, $22                                     ; $6FD4: $06 $22
    rlca                                          ; $6FD6: $07
    ld [$0F22], sp                                ; $6FD7: $08 $22 $0F
    ld a, [bc]                                    ; $6FDA: $0A
    add hl, hl                                    ; $6FDB: $29
    rla                                           ; $6FDC: $17
    inc c                                         ; $6FDD: $0C
    inc sp                                        ; $6FDE: $33
    rst RST_38                                    ; $6FDF: $FF
    ld c, $32                                     ; $6FE0: $0E $32
    rlca                                          ; $6FE2: $07
    db $10                                        ; $6FE3: $10
    ld [hl-], a                                   ; $6FE4: $32
    rrca                                          ; $6FE5: $0F
    ld [de], a                                    ; $6FE6: $12
    add hl, sp                                    ; $6FE7: $39
    rst RST_30                                    ; $6FE8: $F7
    inc d                                         ; $6FE9: $14
    ld a, [hl-]                                   ; $6FEA: $3A
    rst RST_28                                    ; $6FEB: $EF
    ld d, $3D                                     ; $6FEC: $16 $3D
    rst RST_20                                    ; $6FEE: $E7
    jr jr_007_6FF1                                ; $6FEF: $18 $00

jr_007_6FF1:
    inc c                                         ; $6FF1: $0C
    nop                                           ; $6FF2: $00
    ld b, b                                       ; $6FF3: $40
    ld b, a                                       ; $6FF4: $47
    rla                                           ; $6FF5: $17
    jr jr_007_7068                                ; $6FF6: $18 $70

    db $FC                                        ; $6FF8: $FC
    nop                                           ; $6FF9: $00
    jr nz, jr_007_7008                            ; $6FFA: $20 $0C

    nop                                           ; $6FFC: $00
    ld b, b                                       ; $6FFD: $40
    ld b, a                                       ; $6FFE: $47
    rla                                           ; $6FFF: $17
    jr @+$72                                      ; $7000: $18 $70

jr_007_7002:
    inc b                                         ; $7002: $04
    nop                                           ; $7003: $00
    ld b, b                                       ; $7004: $40
    inc c                                         ; $7005: $0C
    nop                                           ; $7006: $00
    ld b, b                                       ; $7007: $40

jr_007_7008:
    ld b, a                                       ; $7008: $47
    rla                                           ; $7009: $17
    jr jr_007_707C                                ; $700A: $18 $70

    db $FC                                        ; $700C: $FC
    dec bc                                        ; $700D: $0B
    ld h, b                                       ; $700E: $60
    inc c                                         ; $700F: $0C
    nop                                           ; $7010: $00
    ld b, b                                       ; $7011: $40
    ld b, a                                       ; $7012: $47
    rla                                           ; $7013: $17
    jr jr_007_7086                                ; $7014: $18 $70

    inc b                                         ; $7016: $04
    dec bc                                        ; $7017: $0B

jr_007_7018:
    dec bc                                        ; $7018: $0B
    jr nz, jr_007_7002                            ; $7019: $20 $E7

    nop                                           ; $701B: $00
    inc h                                         ; $701C: $24
    rst RST_28                                    ; $701D: $EF
    ld [bc], a                                    ; $701E: $02
    jr z, jr_007_7018                             ; $701F: $28 $F7

    inc b                                         ; $7021: $04
    jr z, @+$01                                   ; $7022: $28 $FF

    ld b, $22                                     ; $7024: $06 $22
    rlca                                          ; $7026: $07

jr_007_7027:
    ld [$0F21], sp                                ; $7027: $08 $21 $0F
    ld a, [bc]                                    ; $702A: $0A
    inc [hl]                                      ; $702B: $34
    rst RST_28                                    ; $702C: $EF
    inc c                                         ; $702D: $0C
    jr c, jr_007_7027                             ; $702E: $38 $F7

    ld c, $38                                     ; $7030: $0E $38
    rst RST_38                                    ; $7032: $FF
    db $10                                        ; $7033: $10
    ld [hl-], a                                   ; $7034: $32
    rlca                                          ; $7035: $07
    ld [de], a                                    ; $7036: $12
    ld sp, $140F                                  ; $7037: $31 $0F $14
    nop                                           ; $703A: $00
    inc c                                         ; $703B: $0C
    nop                                           ; $703C: $00
    and b                                         ; $703D: $A0
    ld c, b                                       ; $703E: $48
    rla                                           ; $703F: $17
    ld h, d                                       ; $7040: $62
    ld [hl], b                                    ; $7041: $70
    ld hl, sp+$08                                 ; $7042: $F8 $08
    jr nz, jr_007_7052                            ; $7044: $20 $0C

    nop                                           ; $7046: $00
    and b                                         ; $7047: $A0
    ld c, b                                       ; $7048: $48
    rla                                           ; $7049: $17
    ld h, d                                       ; $704A: $62
    ld [hl], b                                    ; $704B: $70
    ld [$4008], sp                                ; $704C: $08 $08 $40
    ld bc, $A000                                  ; $704F: $01 $00 $A0

jr_007_7052:
    ld c, b                                       ; $7052: $48
    rla                                           ; $7053: $17
    ld h, d                                       ; $7054: $62
    ld [hl], b                                    ; $7055: $70
    ld hl, sp-$06                                 ; $7056: $F8 $FA
    ld h, b                                       ; $7058: $60
    ld bc, $A000                                  ; $7059: $01 $00 $A0
    ld c, b                                       ; $705C: $48
    rla                                           ; $705D: $17
    ld h, d                                       ; $705E: $62
    ld [hl], b                                    ; $705F: $70
    ld [$0AFA], sp                                ; $7060: $08 $FA $0A
    inc de                                        ; $7063: $13
    rst RST_28                                    ; $7064: $EF
    nop                                           ; $7065: $00
    ld a, [de]                                    ; $7066: $1A
    rst RST_30                                    ; $7067: $F7

jr_007_7068:
    ld [bc], a                                    ; $7068: $02
    jr @+$01                                      ; $7069: $18 $FF

    inc b                                         ; $706B: $04
    jr jr_007_7075                                ; $706C: $18 $07

    ld b, $1B                                     ; $706E: $06 $1B
    rrca                                          ; $7070: $0F
    ld [$FF28], sp                                ; $7071: $08 $28 $FF
    ld a, [bc]                                    ; $7074: $0A

jr_007_7075:
    jr z, jr_007_707E                             ; $7075: $28 $07

    inc c                                         ; $7077: $0C
    dec hl                                        ; $7078: $2B
    rrca                                          ; $7079: $0F
    ld c, $38                                     ; $707A: $0E $38

jr_007_707C:
    rlca                                          ; $707C: $07

jr_007_707D:
    db $10                                        ; $707D: $10

jr_007_707E:
    dec sp                                        ; $707E: $3B
    rrca                                          ; $707F: $0F
    ld [de], a                                    ; $7080: $12
    nop                                           ; $7081: $00
    inc c                                         ; $7082: $0C

jr_007_7083:
    ld [bc], a                                    ; $7083: $02
    jr nz, jr_007_70EE                            ; $7084: $20 $68

jr_007_7086:
    rla                                           ; $7086: $17
    adc e                                         ; $7087: $8B

jr_007_7088:
    ld [hl], b                                    ; $7088: $70
    ld bc, $0400                                  ; $7089: $01 $00 $04
    jr z, jr_007_707D                             ; $708C: $28 $EF

jr_007_708E:
    nop                                           ; $708E: $00
    jr z, jr_007_7088                             ; $708F: $28 $F7

    ld [bc], a                                    ; $7091: $02
    jr c, jr_007_7083                             ; $7092: $38 $EF

    inc b                                         ; $7094: $04
    jr c, jr_007_708E                             ; $7095: $38 $F7

    ld b, $00                                     ; $7097: $06 $00
    and b                                         ; $7099: $A0
    ld l, b                                       ; $709A: $68
    rla                                           ; $709B: $17
    and b                                         ; $709C: $A0
    ld [hl], b                                    ; $709D: $70
    ld bc, $0700                                  ; $709E: $01 $00 $07
    jr nz, @+$01                                  ; $70A1: $20 $FF

    nop                                           ; $70A3: $00
    jr nz, @+$09                                  ; $70A4: $20 $07

    ld [bc], a                                    ; $70A6: $02
    jr nz, jr_007_70B8                            ; $70A7: $20 $0F

    inc b                                         ; $70A9: $04
    jr nc, @+$01                                  ; $70AA: $30 $FF

    ld b, $30                                     ; $70AC: $06 $30
    rlca                                          ; $70AE: $07
    ld [$0F30], sp                                ; $70AF: $08 $30 $0F
    ld a, [bc]                                    ; $70B2: $0A
    jr z, jr_007_70CC                             ; $70B3: $28 $17

    inc c                                         ; $70B5: $0C
    nop                                           ; $70B6: $00
    inc c                                         ; $70B7: $0C

jr_007_70B8:
    nop                                           ; $70B8: $00
    add b                                         ; $70B9: $80
    ld l, c                                       ; $70BA: $69
    rla                                           ; $70BB: $17
    ret nz                                        ; $70BC: $C0

    ld [hl], b                                    ; $70BD: $70
    cp $00                                        ; $70BE: $FE $00
    dec bc                                        ; $70C0: $0B
    ld hl, $00E7                                  ; $70C1: $21 $E7 $00
    daa                                           ; $70C4: $27
    rst RST_28                                    ; $70C5: $EF
    ld [bc], a                                    ; $70C6: $02
    ld h, $F7                                     ; $70C7: $26 $F7
    inc b                                         ; $70C9: $04
    dec h                                         ; $70CA: $25
    rst RST_38                                    ; $70CB: $FF

jr_007_70CC:
    ld b, $24                                     ; $70CC: $06 $24
    rlca                                          ; $70CE: $07
    ld [$0F24], sp                                ; $70CF: $08 $24 $0F
    ld a, [bc]                                    ; $70D2: $0A
    scf                                           ; $70D3: $37
    rst RST_28                                    ; $70D4: $EF
    inc c                                         ; $70D5: $0C
    ld [hl], $F7                                  ; $70D6: $36 $F7
    ld c, $35                                     ; $70D8: $0E $35
    rst RST_38                                    ; $70DA: $FF
    db $10                                        ; $70DB: $10
    inc [hl]                                      ; $70DC: $34
    rlca                                          ; $70DD: $07
    ld [de], a                                    ; $70DE: $12
    dec [hl]                                      ; $70DF: $35

jr_007_70E0:
    rrca                                          ; $70E0: $0F
    inc d                                         ; $70E1: $14
    nop                                           ; $70E2: $00
    inc c                                         ; $70E3: $0C
    nop                                           ; $70E4: $00
    ldh [rOCPS], a                                ; $70E5: $E0 $6A
    rla                                           ; $70E7: $17
    or $70                                        ; $70E8: $F6 $70
    db $FD                                        ; $70EA: $FD

jr_007_70EB:
    nop                                           ; $70EB: $00
    nop                                           ; $70EC: $00
    inc c                                         ; $70ED: $0C

jr_007_70EE:
    nop                                           ; $70EE: $00
    ldh [rOCPS], a                                ; $70EF: $E0 $6A
    rla                                           ; $70F1: $17
    or $70                                        ; $70F2: $F6 $70
    db $FD                                        ; $70F4: $FD
    nop                                           ; $70F5: $00

jr_007_70F6:
    add hl, bc                                    ; $70F6: $09
    jr nz, jr_007_70E0                            ; $70F7: $20 $E7

    nop                                           ; $70F9: $00
    jr nz, jr_007_70EB                            ; $70FA: $20 $EF

    ld [bc], a                                    ; $70FC: $02
    jr nz, jr_007_70F6                            ; $70FD: $20 $F7

    inc b                                         ; $70FF: $04
    jr nz, @+$01                                  ; $7100: $20 $FF

    ld b, $20                                     ; $7102: $06 $20
    rlca                                          ; $7104: $07
    ld [$0F1E], sp                                ; $7105: $08 $1E $0F
    ld a, [bc]                                    ; $7108: $0A
    jr nc, @+$09                                  ; $7109: $30 $07

    inc c                                         ; $710B: $0C
    jr nc, jr_007_711D                            ; $710C: $30 $0F

    ld c, $33                                     ; $710E: $0E $33
    rla                                           ; $7110: $17
    stop                                          ; $7111: $10 $00
    nop                                           ; $7113: $00
    ld l, h                                       ; $7114: $6C
    rla                                           ; $7115: $17
    ld a, [de]                                    ; $7116: $1A
    ld [hl], c                                    ; $7117: $71
    db $FD                                        ; $7118: $FD
    nop                                           ; $7119: $00
    dec b                                         ; $711A: $05
    ld [hl], $DF                                  ; $711B: $36 $DF

jr_007_711D:
    nop                                           ; $711D: $00
    jr nc, @-$17                                  ; $711E: $30 $E7

    ld [bc], a                                    ; $7120: $02
    jr nc, @-$0F                                  ; $7121: $30 $EF

    inc b                                         ; $7123: $04
    jr nc, jr_007_711D                            ; $7124: $30 $F7

    ld b, $30                                     ; $7126: $06 $30
    rst RST_38                                    ; $7128: $FF
    ld [$A000], sp                                ; $7129: $08 $00 $A0
    ld l, h                                       ; $712C: $6C
    rla                                           ; $712D: $17
    ld [hl-], a                                   ; $712E: $32
    ld [hl], c                                    ; $712F: $71
    db $FD                                        ; $7130: $FD
    nop                                           ; $7131: $00

jr_007_7132:
    inc b                                         ; $7132: $04
    jr nc, @-$17                                  ; $7133: $30 $E7

    nop                                           ; $7135: $00
    jr nc, @-$0F                                  ; $7136: $30 $EF

    ld [bc], a                                    ; $7138: $02
    jr nc, jr_007_7132                            ; $7139: $30 $F7

    inc b                                         ; $713B: $04
    jr nc, @+$01                                  ; $713C: $30 $FF

    ld b, $00                                     ; $713E: $06 $00
    inc c                                         ; $7140: $0C
    nop                                           ; $7141: $00
    jr nz, jr_007_71B1                            ; $7142: $20 $6D

    rla                                           ; $7144: $17
    ld d, e                                       ; $7145: $53
    ld [hl], c                                    ; $7146: $71
    db $F4                                        ; $7147: $F4

jr_007_7148:
    nop                                           ; $7148: $00
    nop                                           ; $7149: $00
    inc c                                         ; $714A: $0C
    dec b                                         ; $714B: $05
    jr nz, jr_007_71BB                            ; $714C: $20 $6D

    rla                                           ; $714E: $17
    ld d, e                                       ; $714F: $53
    ld [hl], c                                    ; $7150: $71
    db $F4                                        ; $7151: $F4
    nop                                           ; $7152: $00
    inc c                                         ; $7153: $0C
    inc sp                                        ; $7154: $33
    rst RST_20                                    ; $7155: $E7
    nop                                           ; $7156: $00
    jr z, jr_007_7148                             ; $7157: $28 $EF

    ld [bc], a                                    ; $7159: $02
    dec hl                                        ; $715A: $2B
    rst RST_30                                    ; $715B: $F7
    inc b                                         ; $715C: $04
    daa                                           ; $715D: $27
    rst RST_38                                    ; $715E: $FF
    ld b, $1F                                     ; $715F: $06 $1F
    rlca                                          ; $7161: $07
    ld [$0F1E], sp                                ; $7162: $08 $1E $0F
    ld a, [bc]                                    ; $7165: $0A
    cpl                                           ; $7166: $2F
    rlca                                          ; $7167: $07
    inc c                                         ; $7168: $0C
    ld l, $0F                                     ; $7169: $2E $0F
    ld c, $37                                     ; $716B: $0E $37
    rst RST_38                                    ; $716D: $FF
    db $10                                        ; $716E: $10
    jr c, @-$0F                                   ; $716F: $38 $EF

    ld [de], a                                    ; $7171: $12
    dec sp                                        ; $7172: $3B
    rst RST_30                                    ; $7173: $F7
    inc d                                         ; $7174: $14
    ccf                                           ; $7175: $3F
    rlca                                          ; $7176: $07
    ld d, $00                                     ; $7177: $16 $00
    inc c                                         ; $7179: $0C
    nop                                           ; $717A: $00
    and b                                         ; $717B: $A0

jr_007_717C:
    ld l, [hl]                                    ; $717C: $6E
    rla                                           ; $717D: $17
    add d                                         ; $717E: $82
    ld [hl], c                                    ; $717F: $71
    db $F4                                        ; $7180: $F4
    nop                                           ; $7181: $00
    add hl, bc                                    ; $7182: $09
    dec l                                         ; $7183: $2D
    db $EC                                        ; $7184: $EC
    nop                                           ; $7185: $00
    jr z, jr_007_717C                             ; $7186: $28 $F4

    ld [bc], a                                    ; $7188: $02
    jr nc, @-$02                                  ; $7189: $30 $FC

    inc b                                         ; $718B: $04
    jr z, @+$06                                   ; $718C: $28 $04

    ld b, $2D                                     ; $718E: $06 $2D
    inc c                                         ; $7190: $0C
    ld [$F438], sp                                ; $7191: $08 $38 $F4
    ld a, [bc]                                    ; $7194: $0A
    jr c, @+$06                                   ; $7195: $38 $04

    inc c                                         ; $7197: $0C
    dec a                                         ; $7198: $3D
    db $EC                                        ; $7199: $EC
    ld c, $3D                                     ; $719A: $0E $3D
    inc c                                         ; $719C: $0C
    stop                                          ; $719D: $10 $00
    inc c                                         ; $719F: $0C
    add e                                         ; $71A0: $83
    ret nz                                        ; $71A1: $C0

    ld l, a                                       ; $71A2: $6F
    rla                                           ; $71A3: $17

jr_007_71A4:
    xor b                                         ; $71A4: $A8
    ld [hl], c                                    ; $71A5: $71
    rrca                                          ; $71A6: $0F
    inc d                                         ; $71A7: $14
    ld a, [bc]                                    ; $71A8: $0A
    dec c                                         ; $71A9: $0D
    rst RST_18                                    ; $71AA: $DF
    nop                                           ; $71AB: $00
    db $10                                        ; $71AC: $10
    rst RST_20                                    ; $71AD: $E7
    ld [bc], a                                    ; $71AE: $02
    inc d                                         ; $71AF: $14
    rst RST_28                                    ; $71B0: $EF

jr_007_71B1:
    inc b                                         ; $71B1: $04
    dec d                                         ; $71B2: $15
    rst RST_30                                    ; $71B3: $F7
    ld b, $1D                                     ; $71B4: $06 $1D
    rst RST_38                                    ; $71B6: $FF
    ld [$DF1D], sp                                ; $71B7: $08 $1D $DF
    ld a, [bc]                                    ; $71BA: $0A

jr_007_71BB:
    jr nz, jr_007_71A4                            ; $71BB: $20 $E7

    inc c                                         ; $71BD: $0C
    inc h                                         ; $71BE: $24
    rst RST_28                                    ; $71BF: $EF
    ld c, $25                                     ; $71C0: $0E $25
    rst RST_30                                    ; $71C2: $F7
    db $10                                        ; $71C3: $10
    dec l                                         ; $71C4: $2D
    rst RST_38                                    ; $71C5: $FF
    ld [de], a                                    ; $71C6: $12
    nop                                           ; $71C7: $00
    inc c                                         ; $71C8: $0C
    nop                                           ; $71C9: $00
    nop                                           ; $71CA: $00
    ld [hl], c                                    ; $71CB: $71
    rla                                           ; $71CC: $17
    pop de                                        ; $71CD: $D1
    ld [hl], c                                    ; $71CE: $71
    dec b                                         ; $71CF: $05
    rst RST_38                                    ; $71D0: $FF
    add hl, bc                                    ; $71D1: $09
    inc [hl]                                      ; $71D2: $34
    rst RST_18                                    ; $71D3: $DF
    nop                                           ; $71D4: $00
    dec l                                         ; $71D5: $2D
    rst RST_20                                    ; $71D6: $E7
    ld [bc], a                                    ; $71D7: $02
    daa                                           ; $71D8: $27
    rst RST_28                                    ; $71D9: $EF
    inc b                                         ; $71DA: $04
    rra                                           ; $71DB: $1F
    rst RST_30                                    ; $71DC: $F7
    ld b, $1E                                     ; $71DD: $06 $1E
    rst RST_38                                    ; $71DF: $FF
    ld [$E73D], sp                                ; $71E0: $08 $3D $E7
    ld a, [bc]                                    ; $71E3: $0A

jr_007_71E4:
    scf                                           ; $71E4: $37
    rst RST_28                                    ; $71E5: $EF
    inc c                                         ; $71E6: $0C
    cpl                                           ; $71E7: $2F
    rst RST_30                                    ; $71E8: $F7
    ld c, $2E                                     ; $71E9: $0E $2E
    rst RST_38                                    ; $71EB: $FF
    stop                                          ; $71EC: $10 $00
    inc c                                         ; $71EE: $0C
    inc de                                        ; $71EF: $13
    jr nz, @+$74                                  ; $71F0: $20 $72

    rla                                           ; $71F2: $17
    rst RST_30                                    ; $71F3: $F7
    ld [hl], c                                    ; $71F4: $71
    db $F4                                        ; $71F5: $F4
    nop                                           ; $71F6: $00
    ld [$DF34], sp                                ; $71F7: $08 $34 $DF

jr_007_71FA:
    nop                                           ; $71FA: $00
    jr nc, jr_007_71E4                            ; $71FB: $30 $E7

    ld [bc], a                                    ; $71FD: $02
    inc l                                         ; $71FE: $2C
    rst RST_28                                    ; $71FF: $EF
    inc b                                         ; $7200: $04
    jr z, jr_007_71FA                             ; $7201: $28 $F7

jr_007_7203:
    ld b, $2A                                     ; $7203: $06 $2A
    rst RST_38                                    ; $7205: $FF
    ld [$0720], sp                                ; $7206: $08 $20 $07
    ld a, [bc]                                    ; $7209: $0A
    jr c, jr_007_7203                             ; $720A: $38 $F7

    inc c                                         ; $720C: $0C
    ld a, [hl-]                                   ; $720D: $3A
    rst RST_38                                    ; $720E: $FF
    ld c, $00                                     ; $720F: $0E $00
    jr nz, jr_007_7286                            ; $7211: $20 $73

    rla                                           ; $7213: $17
    jr jr_007_7288                                ; $7214: $18 $72

    db $F4                                        ; $7216: $F4
    nop                                           ; $7217: $00
    dec b                                         ; $7218: $05
    jr nc, jr_007_7222                            ; $7219: $30 $07

    nop                                           ; $721B: $00
    inc h                                         ; $721C: $24
    rrca                                          ; $721D: $0F
    ld [bc], a                                    ; $721E: $02
    ld [hl+], a                                   ; $721F: $22
    rla                                           ; $7220: $17
    inc b                                         ; $7221: $04

jr_007_7222:
    inc [hl]                                      ; $7222: $34
    rrca                                          ; $7223: $0F
    ld b, $32                                     ; $7224: $06 $32
    rla                                           ; $7226: $17
    ld [$0C00], sp                                ; $7227: $08 $00 $0C
    nop                                           ; $722A: $00
    ret nz                                        ; $722B: $C0

    ld [hl], e                                    ; $722C: $73
    rla                                           ; $722D: $17
    inc a                                         ; $722E: $3C
    ld [hl], d                                    ; $722F: $72
    db $F4                                        ; $7230: $F4

jr_007_7231:
    nop                                           ; $7231: $00
    nop                                           ; $7232: $00
    inc c                                         ; $7233: $0C
    add hl, bc                                    ; $7234: $09
    ret nz                                        ; $7235: $C0

    ld [hl], e                                    ; $7236: $73
    rla                                           ; $7237: $17
    inc a                                         ; $7238: $3C
    ld [hl], d                                    ; $7239: $72
    db $F4                                        ; $723A: $F4
    nop                                           ; $723B: $00
    rlca                                          ; $723C: $07
    inc sp                                        ; $723D: $33

jr_007_723E:
    rst RST_20                                    ; $723E: $E7
    nop                                           ; $723F: $00
    jr z, jr_007_7231                             ; $7240: $28 $EF

    ld [bc], a                                    ; $7242: $02
    dec hl                                        ; $7243: $2B
    rst RST_30                                    ; $7244: $F7
    inc b                                         ; $7245: $04
    ld a, [hl+]                                   ; $7246: $2A
    rst RST_38                                    ; $7247: $FF
    ld b, $20                                     ; $7248: $06 $20
    rlca                                          ; $724A: $07
    ld [$F73B], sp                                ; $724B: $08 $3B $F7
    ld a, [bc]                                    ; $724E: $0A

jr_007_724F:
    ld a, [hl-]                                   ; $724F: $3A
    rst RST_38                                    ; $7250: $FF
    inc c                                         ; $7251: $0C
    nop                                           ; $7252: $00
    inc c                                         ; $7253: $0C
    ld a, [hl]                                    ; $7254: $7E
    and b                                         ; $7255: $A0
    ld [hl], h                                    ; $7256: $74
    rla                                           ; $7257: $17
    ld e, h                                       ; $7258: $5C
    ld [hl], d                                    ; $7259: $72
    db $FD                                        ; $725A: $FD
    nop                                           ; $725B: $00
    db $10                                        ; $725C: $10
    jr nz, jr_007_723E                            ; $725D: $20 $DF

    nop                                           ; $725F: $00
    jr nc, @-$1F                                  ; $7260: $30 $DF

    ld [bc], a                                    ; $7262: $02
    jr nz, @-$17                                  ; $7263: $20 $E7

    inc b                                         ; $7265: $04
    jr nc, jr_007_724F                            ; $7266: $30 $E7

jr_007_7268:
    ld b, $20                                     ; $7268: $06 $20
    rst RST_28                                    ; $726A: $EF

jr_007_726B:
    ld [$EF30], sp                                ; $726B: $08 $30 $EF
    ld a, [bc]                                    ; $726E: $0A
    jr nz, jr_007_7268                            ; $726F: $20 $F7

    inc c                                         ; $7271: $0C
    jr nc, jr_007_726B                            ; $7272: $30 $F7

    ld c, $20                                     ; $7274: $0E $20
    rst RST_38                                    ; $7276: $FF
    db $10                                        ; $7277: $10
    jr nc, @+$01                                  ; $7278: $30 $FF

    ld [de], a                                    ; $727A: $12
    jr nz, @+$09                                  ; $727B: $20 $07

    inc d                                         ; $727D: $14
    jr nc, jr_007_7287                            ; $727E: $30 $07

    ld d, $20                                     ; $7280: $16 $20
    rrca                                          ; $7282: $0F
    jr jr_007_72B5                                ; $7283: $18 $30

    rrca                                          ; $7285: $0F

jr_007_7286:
    ld a, [de]                                    ; $7286: $1A

jr_007_7287:
    db $10                                        ; $7287: $10

jr_007_7288:
    rst RST_28                                    ; $7288: $EF
    inc e                                         ; $7289: $1C
    daa                                           ; $728A: $27
    rla                                           ; $728B: $17
    ld e, $FF                                     ; $728C: $1E $FF
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

jr_007_72B5:
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
