; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

    ld d, d                                       ; $4000: $52
    ld b, e                                       ; $4001: $43
    rst RST_38                                    ; $4002: $FF
    rst RST_38                                    ; $4003: $FF
    rst RST_38                                    ; $4004: $FF
    rst RST_38                                    ; $4005: $FF
    ld d, d                                       ; $4006: $52
    ld b, e                                       ; $4007: $43
    rst RST_38                                    ; $4008: $FF
    rst RST_38                                    ; $4009: $FF
    ld [hl], l                                    ; $400A: $75
    ld b, e                                       ; $400B: $43
    rst RST_38                                    ; $400C: $FF
    rst RST_38                                    ; $400D: $FF
    sbc e                                         ; $400E: $9B
    ld b, e                                       ; $400F: $43
    rst RST_38                                    ; $4010: $FF
    rst RST_38                                    ; $4011: $FF
    cp [hl]                                       ; $4012: $BE
    ld b, e                                       ; $4013: $43
    rst RST_38                                    ; $4014: $FF
    rst RST_38                                    ; $4015: $FF
    rst RST_38                                    ; $4016: $FF
    rst RST_38                                    ; $4017: $FF
    pop hl                                        ; $4018: $E1
    ld b, e                                       ; $4019: $43
    ei                                            ; $401A: $FB
    ld b, e                                       ; $401B: $43
    dec c                                         ; $401C: $0D
    ld b, h                                       ; $401D: $44
    rst RST_38                                    ; $401E: $FF
    rst RST_38                                    ; $401F: $FF
    pop hl                                        ; $4020: $E1
    ld b, e                                       ; $4021: $43
    ei                                            ; $4022: $FB
    ld b, e                                       ; $4023: $43
    dec l                                         ; $4024: $2D
    ld b, h                                       ; $4025: $44
    rst RST_38                                    ; $4026: $FF
    rst RST_38                                    ; $4027: $FF
    rst RST_38                                    ; $4028: $FF
    rst RST_38                                    ; $4029: $FF
    dec l                                         ; $402A: $2D
    ld b, h                                       ; $402B: $44
    rst RST_38                                    ; $402C: $FF
    rst RST_38                                    ; $402D: $FF
    pop hl                                        ; $402E: $E1
    ld b, e                                       ; $402F: $43
    ei                                            ; $4030: $FB
    ld b, e                                       ; $4031: $43
    dec c                                         ; $4032: $0D
    ld b, h                                       ; $4033: $44
    rst RST_38                                    ; $4034: $FF
    rst RST_38                                    ; $4035: $FF
    pop hl                                        ; $4036: $E1
    ld b, e                                       ; $4037: $43
    ei                                            ; $4038: $FB
    ld b, e                                       ; $4039: $43
    rst RST_38                                    ; $403A: $FF
    rst RST_38                                    ; $403B: $FF
    ld d, b                                       ; $403C: $50
    ld b, h                                       ; $403D: $44
    ld [hl], c                                    ; $403E: $71
    ld b, h                                       ; $403F: $44
    rst RST_38                                    ; $4040: $FF
    rst RST_38                                    ; $4041: $FF
    ld d, b                                       ; $4042: $50
    ld b, h                                       ; $4043: $44
    ld [hl], c                                    ; $4044: $71
    ld b, h                                       ; $4045: $44
    add [hl]                                      ; $4046: $86
    ld b, h                                       ; $4047: $44
    and a                                         ; $4048: $A7
    ld b, h                                       ; $4049: $44
    add [hl]                                      ; $404A: $86
    ld b, h                                       ; $404B: $44
    and a                                         ; $404C: $A7
    ld b, h                                       ; $404D: $44
    ld e, d                                       ; $404E: $5A
    ld b, h                                       ; $404F: $44
    jp z, Jump_00A_5A44                           ; $4050: $CA $44 $5A

    ld b, h                                       ; $4053: $44
    jp z, $8644                                   ; $4054: $CA $44 $86

    ld b, h                                       ; $4057: $44
    and a                                         ; $4058: $A7
    ld b, h                                       ; $4059: $44
    add [hl]                                      ; $405A: $86
    ld b, h                                       ; $405B: $44
    and a                                         ; $405C: $A7
    ld b, h                                       ; $405D: $44
    ld d, b                                       ; $405E: $50
    ld b, h                                       ; $405F: $44
    ld [hl], c                                    ; $4060: $71
    ld b, h                                       ; $4061: $44
    rst RST_38                                    ; $4062: $FF
    rst RST_38                                    ; $4063: $FF
    ldh [c], a                                    ; $4064: $E2
    ld b, h                                       ; $4065: $44
    rst RST_38                                    ; $4066: $FF
    rst RST_38                                    ; $4067: $FF
    rst RST_38                                    ; $4068: $FF
    rst RST_38                                    ; $4069: $FF
    dec b                                         ; $406A: $05
    ld b, l                                       ; $406B: $45
    inc e                                         ; $406C: $1C
    ld b, l                                       ; $406D: $45
    rst RST_38                                    ; $406E: $FF
    rst RST_38                                    ; $406F: $FF
    ld sp, $FF45                                  ; $4070: $31 $45 $FF
    rst RST_38                                    ; $4073: $FF
    ld d, b                                       ; $4074: $50
    ld b, h                                       ; $4075: $44
    ld [hl], c                                    ; $4076: $71
    ld b, h                                       ; $4077: $44
    rst RST_38                                    ; $4078: $FF
    rst RST_38                                    ; $4079: $FF
    ld d, c                                       ; $407A: $51
    ld b, l                                       ; $407B: $45
    rst RST_38                                    ; $407C: $FF
    rst RST_38                                    ; $407D: $FF
    ld [hl], c                                    ; $407E: $71
    ld b, l                                       ; $407F: $45
    rst RST_38                                    ; $4080: $FF
    rst RST_38                                    ; $4081: $FF
    ld d, c                                       ; $4082: $51
    ld b, l                                       ; $4083: $45
    rst RST_38                                    ; $4084: $FF
    rst RST_38                                    ; $4085: $FF
    rst RST_38                                    ; $4086: $FF
    rst RST_38                                    ; $4087: $FF
    ld d, c                                       ; $4088: $51
    ld b, l                                       ; $4089: $45
    rst RST_38                                    ; $408A: $FF
    rst RST_38                                    ; $408B: $FF
    sub h                                         ; $408C: $94
    ld b, l                                       ; $408D: $45
    rst RST_38                                    ; $408E: $FF
    rst RST_38                                    ; $408F: $FF
    ld d, c                                       ; $4090: $51
    ld b, l                                       ; $4091: $45
    rst RST_38                                    ; $4092: $FF
    rst RST_38                                    ; $4093: $FF
    rst RST_38                                    ; $4094: $FF
    rst RST_38                                    ; $4095: $FF
    or a                                          ; $4096: $B7
    ld b, l                                       ; $4097: $45
    ret c                                         ; $4098: $D8

    ld b, l                                       ; $4099: $45
    db $ED                                        ; $409A: $ED
    ld b, l                                       ; $409B: $45
    rst RST_38                                    ; $409C: $FF
    rst RST_38                                    ; $409D: $FF
    ld a, [de]                                    ; $409E: $1A
    ld b, [hl]                                    ; $409F: $46
    rst RST_38                                    ; $40A0: $FF
    rst RST_38                                    ; $40A1: $FF
    ld b, [hl]                                    ; $40A2: $46
    ld b, [hl]                                    ; $40A3: $46
    ld e, l                                       ; $40A4: $5D
    ld b, [hl]                                    ; $40A5: $46
    db $ED                                        ; $40A6: $ED
    ld b, l                                       ; $40A7: $45
    rst RST_38                                    ; $40A8: $FF
    rst RST_38                                    ; $40A9: $FF
    rst RST_38                                    ; $40AA: $FF
    rst RST_38                                    ; $40AB: $FF
    ld a, b                                       ; $40AC: $78
    ld b, [hl]                                    ; $40AD: $46
    rst RST_38                                    ; $40AE: $FF
    rst RST_38                                    ; $40AF: $FF
    sbc b                                         ; $40B0: $98
    ld b, [hl]                                    ; $40B1: $46
    rst RST_38                                    ; $40B2: $FF
    rst RST_38                                    ; $40B3: $FF
    ld a, b                                       ; $40B4: $78
    ld b, [hl]                                    ; $40B5: $46
    rst RST_38                                    ; $40B6: $FF
    rst RST_38                                    ; $40B7: $FF
    rst RST_38                                    ; $40B8: $FF
    rst RST_38                                    ; $40B9: $FF
    ld a, b                                       ; $40BA: $78
    ld b, [hl]                                    ; $40BB: $46
    rst RST_38                                    ; $40BC: $FF
    rst RST_38                                    ; $40BD: $FF
    cp e                                          ; $40BE: $BB
    ld b, [hl]                                    ; $40BF: $46
    rst RST_38                                    ; $40C0: $FF
    rst RST_38                                    ; $40C1: $FF
    ld a, b                                       ; $40C2: $78
    ld b, [hl]                                    ; $40C3: $46
    rst RST_38                                    ; $40C4: $FF
    rst RST_38                                    ; $40C5: $FF
    rst RST_38                                    ; $40C6: $FF
    rst RST_38                                    ; $40C7: $FF
    ld a, b                                       ; $40C8: $78
    ld b, [hl]                                    ; $40C9: $46
    rst RST_38                                    ; $40CA: $FF
    rst RST_38                                    ; $40CB: $FF
    db $E4                                        ; $40CC: $E4
    ld b, [hl]                                    ; $40CD: $46
    add hl, de                                    ; $40CE: $19
    ld b, a                                       ; $40CF: $47
    inc sp                                        ; $40D0: $33
    ld b, a                                       ; $40D1: $47
    ld h, e                                       ; $40D2: $63
    ld b, a                                       ; $40D3: $47
    add b                                         ; $40D4: $80
    ld b, a                                       ; $40D5: $47
    ld h, e                                       ; $40D6: $63
    ld b, a                                       ; $40D7: $47
    ld a, b                                       ; $40D8: $78
    ld b, [hl]                                    ; $40D9: $46
    rst RST_38                                    ; $40DA: $FF
    rst RST_38                                    ; $40DB: $FF
    rst RST_38                                    ; $40DC: $FF
    rst RST_38                                    ; $40DD: $FF
    ld hl, sp+$46                                 ; $40DE: $F8 $46
    push bc                                       ; $40E0: $C5
    ld b, a                                       ; $40E1: $47
    dec a                                         ; $40E2: $3D
    ld b, a                                       ; $40E3: $47
    push hl                                       ; $40E4: $E5
    ld b, a                                       ; $40E5: $47
    sub h                                         ; $40E6: $94
    ld b, a                                       ; $40E7: $47
    push hl                                       ; $40E8: $E5
    ld b, a                                       ; $40E9: $47
    sub h                                         ; $40EA: $94
    ld b, a                                       ; $40EB: $47
    push hl                                       ; $40EC: $E5
    ld b, a                                       ; $40ED: $47
    ld d, b                                       ; $40EE: $50
    ld b, h                                       ; $40EF: $44
    ld [hl], c                                    ; $40F0: $71
    ld b, h                                       ; $40F1: $44
    rst RST_38                                    ; $40F2: $FF
    rst RST_38                                    ; $40F3: $FF
    ld sp, $FF45                                  ; $40F4: $31 $45 $FF
    rst RST_38                                    ; $40F7: $FF
    dec b                                         ; $40F8: $05
    ld c, b                                       ; $40F9: $48
    rst RST_38                                    ; $40FA: $FF
    rst RST_38                                    ; $40FB: $FF
    dec b                                         ; $40FC: $05
    ld c, b                                       ; $40FD: $48
    rst RST_38                                    ; $40FE: $FF
    rst RST_38                                    ; $40FF: $FF
    dec b                                         ; $4100: $05
    ld c, b                                       ; $4101: $48
    rst RST_38                                    ; $4102: $FF
    rst RST_38                                    ; $4103: $FF
    ld d, b                                       ; $4104: $50
    ld b, h                                       ; $4105: $44
    ld [hl], c                                    ; $4106: $71
    ld b, h                                       ; $4107: $44
    rst RST_38                                    ; $4108: $FF
    rst RST_38                                    ; $4109: $FF
    ld a, b                                       ; $410A: $78
    ld b, [hl]                                    ; $410B: $46
    rst RST_38                                    ; $410C: $FF
    rst RST_38                                    ; $410D: $FF
    add b                                         ; $410E: $80
    ld b, a                                       ; $410F: $47
    ld h, e                                       ; $4110: $63
    ld b, a                                       ; $4111: $47
    sbc [hl]                                      ; $4112: $9E
    ld c, c                                       ; $4113: $49
    rst RST_38                                    ; $4114: $FF
    rst RST_38                                    ; $4115: $FF
    rst RST_38                                    ; $4116: $FF
    rst RST_38                                    ; $4117: $FF
    or l                                          ; $4118: $B5
    ld c, d                                       ; $4119: $4A
    rst RST_38                                    ; $411A: $FF
    rst RST_38                                    ; $411B: $FF
    dec hl                                        ; $411C: $2B
    ld c, b                                       ; $411D: $48
    rst RST_38                                    ; $411E: $FF
    rst RST_38                                    ; $411F: $FF
    xor $46                                       ; $4120: $EE $46
    cp l                                          ; $4122: $BD
    ld b, a                                       ; $4123: $47
    adc d                                         ; $4124: $8A
    ld b, a                                       ; $4125: $47
    ld l, e                                       ; $4126: $6B
    ld b, a                                       ; $4127: $47
    adc d                                         ; $4128: $8A
    ld b, a                                       ; $4129: $47
    ld l, e                                       ; $412A: $6B
    ld b, a                                       ; $412B: $47
    or l                                          ; $412C: $B5
    ld c, d                                       ; $412D: $4A
    rst RST_38                                    ; $412E: $FF
    rst RST_38                                    ; $412F: $FF
    rst RST_38                                    ; $4130: $FF
    rst RST_38                                    ; $4131: $FF
    ld d, c                                       ; $4132: $51
    ld c, b                                       ; $4133: $48
    rst RST_38                                    ; $4134: $FF
    rst RST_38                                    ; $4135: $FF
    add a                                         ; $4136: $87
    ld c, b                                       ; $4137: $48
    rst RST_38                                    ; $4138: $FF
    rst RST_38                                    ; $4139: $FF
    rst RST_38                                    ; $413A: $FF
    rst RST_38                                    ; $413B: $FF
    add [hl]                                      ; $413C: $86
    ld b, h                                       ; $413D: $44
    and a                                         ; $413E: $A7
    ld b, h                                       ; $413F: $44
    add [hl]                                      ; $4140: $86
    ld b, h                                       ; $4141: $44
    and a                                         ; $4142: $A7
    ld b, h                                       ; $4143: $44
    ld d, b                                       ; $4144: $50
    ld b, h                                       ; $4145: $44
    ld [hl], c                                    ; $4146: $71
    ld b, h                                       ; $4147: $44
    rst RST_38                                    ; $4148: $FF
    rst RST_38                                    ; $4149: $FF
    ret nz                                        ; $414A: $C0

    ld c, b                                       ; $414B: $48
    rst RST_38                                    ; $414C: $FF
    rst RST_38                                    ; $414D: $FF
    jp hl                                         ; $414E: $E9


    ld c, b                                       ; $414F: $48
    rst RST_38                                    ; $4150: $FF
    rst RST_38                                    ; $4151: $FF
    rst RST_38                                    ; $4152: $FF
    rst RST_38                                    ; $4153: $FF
    or l                                          ; $4154: $B5
    ld c, d                                       ; $4155: $4A
    rst RST_38                                    ; $4156: $FF
    rst RST_38                                    ; $4157: $FF
    add hl, bc                                    ; $4158: $09
    ld c, c                                       ; $4159: $49
    rst RST_38                                    ; $415A: $FF
    rst RST_38                                    ; $415B: $FF
    db $10                                        ; $415C: $10
    ld c, l                                       ; $415D: $4D
    dec l                                         ; $415E: $2D
    ld c, l                                       ; $415F: $4D
    rst RST_38                                    ; $4160: $FF
    rst RST_38                                    ; $4161: $FF
    ld [hl-], a                                   ; $4162: $32
    ld c, c                                       ; $4163: $49
    rst RST_38                                    ; $4164: $FF
    rst RST_38                                    ; $4165: $FF
    ld d, l                                       ; $4166: $55
    ld c, c                                       ; $4167: $49
    rst RST_38                                    ; $4168: $FF
    rst RST_38                                    ; $4169: $FF
    ld a, e                                       ; $416A: $7B
    ld c, c                                       ; $416B: $49
    rst RST_38                                    ; $416C: $FF
    rst RST_38                                    ; $416D: $FF
    rst RST_38                                    ; $416E: $FF
    rst RST_38                                    ; $416F: $FF
    ld a, e                                       ; $4170: $7B
    ld c, c                                       ; $4171: $49
    rst RST_38                                    ; $4172: $FF
    rst RST_38                                    ; $4173: $FF
    ld d, l                                       ; $4174: $55
    ld c, c                                       ; $4175: $49
    rst RST_38                                    ; $4176: $FF
    rst RST_38                                    ; $4177: $FF
    ld [hl-], a                                   ; $4178: $32
    ld c, c                                       ; $4179: $49
    rst RST_38                                    ; $417A: $FF
    rst RST_38                                    ; $417B: $FF
    rst RST_38                                    ; $417C: $FF
    rst RST_38                                    ; $417D: $FF
    sbc [hl]                                      ; $417E: $9E
    ld c, c                                       ; $417F: $49
    rst RST_38                                    ; $4180: $FF
    rst RST_38                                    ; $4181: $FF
    ret c                                         ; $4182: $D8

    ld c, c                                       ; $4183: $49
    rst RST_38                                    ; $4184: $FF
    rst RST_38                                    ; $4185: $FF
    inc b                                         ; $4186: $04
    ld c, d                                       ; $4187: $4A
    rst RST_38                                    ; $4188: $FF
    rst RST_38                                    ; $4189: $FF
    rst RST_38                                    ; $418A: $FF
    rst RST_38                                    ; $418B: $FF
    or l                                          ; $418C: $B5
    ld c, d                                       ; $418D: $4A
    rst RST_38                                    ; $418E: $FF
    rst RST_38                                    ; $418F: $FF
    daa                                           ; $4190: $27
    ld c, d                                       ; $4191: $4A
    rst RST_38                                    ; $4192: $FF
    rst RST_38                                    ; $4193: $FF
    ld c, d                                       ; $4194: $4A
    ld c, d                                       ; $4195: $4A
    ld [hl], h                                    ; $4196: $74
    ld c, d                                       ; $4197: $4A
    ld d, h                                       ; $4198: $54
    ld c, d                                       ; $4199: $4A
    ld [hl], h                                    ; $419A: $74
    ld c, d                                       ; $419B: $4A
    rst RST_38                                    ; $419C: $FF
    rst RST_38                                    ; $419D: $FF
    or l                                          ; $419E: $B5
    ld c, d                                       ; $419F: $4A
    rst RST_38                                    ; $41A0: $FF
    rst RST_38                                    ; $41A1: $FF
    daa                                           ; $41A2: $27
    ld c, d                                       ; $41A3: $4A
    rst RST_38                                    ; $41A4: $FF
    rst RST_38                                    ; $41A5: $FF
    ld d, h                                       ; $41A6: $54
    ld c, d                                       ; $41A7: $4A
    ld [hl], h                                    ; $41A8: $74
    ld c, d                                       ; $41A9: $4A
    rst RST_38                                    ; $41AA: $FF
    rst RST_38                                    ; $41AB: $FF
    sub d                                         ; $41AC: $92
    ld c, d                                       ; $41AD: $4A
    rst RST_38                                    ; $41AE: $FF
    rst RST_38                                    ; $41AF: $FF
    rst RST_38                                    ; $41B0: $FF
    rst RST_38                                    ; $41B1: $FF
    sub d                                         ; $41B2: $92
    ld c, d                                       ; $41B3: $4A
    rst RST_38                                    ; $41B4: $FF
    rst RST_38                                    ; $41B5: $FF
    rst RST_38                                    ; $41B6: $FF
    rst RST_38                                    ; $41B7: $FF
    ld d, d                                       ; $41B8: $52
    ld b, e                                       ; $41B9: $43
    rst RST_38                                    ; $41BA: $FF
    rst RST_38                                    ; $41BB: $FF
    sub d                                         ; $41BC: $92
    ld c, d                                       ; $41BD: $4A
    rst RST_38                                    ; $41BE: $FF
    rst RST_38                                    ; $41BF: $FF
    or l                                          ; $41C0: $B5
    ld c, d                                       ; $41C1: $4A
    rst RST_38                                    ; $41C2: $FF
    rst RST_38                                    ; $41C3: $FF
    rst RST_38                                    ; $41C4: $FF
    rst RST_38                                    ; $41C5: $FF
    di                                            ; $41C6: $F3
    ld c, d                                       ; $41C7: $4A
    rst RST_38                                    ; $41C8: $FF
    rst RST_38                                    ; $41C9: $FF
    rst RST_38                                    ; $41CA: $FF
    rst RST_38                                    ; $41CB: $FF
    sub d                                         ; $41CC: $92
    ld c, d                                       ; $41CD: $4A
    rst RST_38                                    ; $41CE: $FF
    rst RST_38                                    ; $41CF: $FF
    add [hl]                                      ; $41D0: $86
    ld b, h                                       ; $41D1: $44
    and a                                         ; $41D2: $A7
    ld b, h                                       ; $41D3: $44
    add [hl]                                      ; $41D4: $86
    ld b, h                                       ; $41D5: $44
    and a                                         ; $41D6: $A7
    ld b, h                                       ; $41D7: $44
    add [hl]                                      ; $41D8: $86
    ld b, h                                       ; $41D9: $44
    and a                                         ; $41DA: $A7
    ld b, h                                       ; $41DB: $44
    add [hl]                                      ; $41DC: $86
    ld b, h                                       ; $41DD: $44
    and a                                         ; $41DE: $A7
    ld b, h                                       ; $41DF: $44
    add [hl]                                      ; $41E0: $86
    ld b, h                                       ; $41E1: $44
    and a                                         ; $41E2: $A7
    ld b, h                                       ; $41E3: $44
    ld d, b                                       ; $41E4: $50
    ld b, h                                       ; $41E5: $44
    ld [hl], c                                    ; $41E6: $71
    ld b, h                                       ; $41E7: $44
    rst RST_38                                    ; $41E8: $FF
    rst RST_38                                    ; $41E9: $FF
    sub d                                         ; $41EA: $92
    ld c, d                                       ; $41EB: $4A
    rst RST_38                                    ; $41EC: $FF
    rst RST_38                                    ; $41ED: $FF
    inc de                                        ; $41EE: $13
    ld c, e                                       ; $41EF: $4B
    rst RST_38                                    ; $41F0: $FF
    rst RST_38                                    ; $41F1: $FF
    ld c, c                                       ; $41F2: $49
    ld c, e                                       ; $41F3: $4B
    rst RST_38                                    ; $41F4: $FF
    rst RST_38                                    ; $41F5: $FF
    inc de                                        ; $41F6: $13
    ld c, e                                       ; $41F7: $4B
    rst RST_38                                    ; $41F8: $FF
    rst RST_38                                    ; $41F9: $FF
    ld c, c                                       ; $41FA: $49
    ld c, e                                       ; $41FB: $4B
    rst RST_38                                    ; $41FC: $FF
    rst RST_38                                    ; $41FD: $FF
    rst RST_38                                    ; $41FE: $FF
    rst RST_38                                    ; $41FF: $FF
    or l                                          ; $4200: $B5
    ld c, d                                       ; $4201: $4A
    rst RST_38                                    ; $4202: $FF
    rst RST_38                                    ; $4203: $FF
    cp a                                          ; $4204: $BF
    ld c, d                                       ; $4205: $4A
    rst RST_38                                    ; $4206: $FF
    rst RST_38                                    ; $4207: $FF
    ret                                           ; $4208: $C9


    ld c, d                                       ; $4209: $4A
    rst RST_38                                    ; $420A: $FF
    rst RST_38                                    ; $420B: $FF
    db $D3                                        ; $420C: $D3
    ld c, d                                       ; $420D: $4A
    rst RST_38                                    ; $420E: $FF
    rst RST_38                                    ; $420F: $FF
    db $D3                                        ; $4210: $D3
    ld c, d                                       ; $4211: $4A
    rst RST_38                                    ; $4212: $FF
    rst RST_38                                    ; $4213: $FF
    inc de                                        ; $4214: $13
    ld c, e                                       ; $4215: $4B
    rst RST_38                                    ; $4216: $FF
    rst RST_38                                    ; $4217: $FF
    ld c, c                                       ; $4218: $49
    ld c, e                                       ; $4219: $4B
    rst RST_38                                    ; $421A: $FF
    rst RST_38                                    ; $421B: $FF
    rst RST_38                                    ; $421C: $FF
    rst RST_38                                    ; $421D: $FF
    sub d                                         ; $421E: $92
    ld c, d                                       ; $421F: $4A
    rst RST_38                                    ; $4220: $FF
    rst RST_38                                    ; $4221: $FF
    inc de                                        ; $4222: $13
    ld c, e                                       ; $4223: $4B
    rst RST_38                                    ; $4224: $FF
    rst RST_38                                    ; $4225: $FF
    ld c, c                                       ; $4226: $49
    ld c, e                                       ; $4227: $4B
    rst RST_38                                    ; $4228: $FF
    rst RST_38                                    ; $4229: $FF
    rst RST_38                                    ; $422A: $FF
    rst RST_38                                    ; $422B: $FF
    dec e                                         ; $422C: $1D
    ld c, e                                       ; $422D: $4B
    rst RST_38                                    ; $422E: $FF
    rst RST_38                                    ; $422F: $FF
    rst RST_38                                    ; $4230: $FF
    rst RST_38                                    ; $4231: $FF
    ld d, b                                       ; $4232: $50
    ld b, h                                       ; $4233: $44
    ld [hl], c                                    ; $4234: $71
    ld b, h                                       ; $4235: $44
    ld d, b                                       ; $4236: $50
    ld b, h                                       ; $4237: $44
    ld [hl], c                                    ; $4238: $71
    ld b, h                                       ; $4239: $44
    rst RST_38                                    ; $423A: $FF
    rst RST_38                                    ; $423B: $FF
    pop bc                                        ; $423C: $C1
    ld b, l                                       ; $423D: $45
    ld l, h                                       ; $423E: $6C
    ld c, e                                       ; $423F: $4B
    add h                                         ; $4240: $84
    ld c, e                                       ; $4241: $4B
    rst RST_38                                    ; $4242: $FF
    rst RST_38                                    ; $4243: $FF
    cp c                                          ; $4244: $B9
    ld c, e                                       ; $4245: $4B
    rst RST_38                                    ; $4246: $FF
    rst RST_38                                    ; $4247: $FF
    ldh [c], a                                    ; $4248: $E2
    ld c, e                                       ; $4249: $4B
    rst RST_38                                    ; $424A: $FF
    rst RST_38                                    ; $424B: $FF
    dec bc                                        ; $424C: $0B
    ld c, h                                       ; $424D: $4C
    ld l, e                                       ; $424E: $6B
    ld b, a                                       ; $424F: $47
    ld a, [hl-]                                   ; $4250: $3A
    ld c, h                                       ; $4251: $4C
    ld l, e                                       ; $4252: $6B
    ld b, a                                       ; $4253: $47
    rst RST_38                                    ; $4254: $FF
    rst RST_38                                    ; $4255: $FF
    db $ED                                        ; $4256: $ED
    ld b, l                                       ; $4257: $45
    rst RST_38                                    ; $4258: $FF
    rst RST_38                                    ; $4259: $FF
    ld h, c                                       ; $425A: $61
    ld c, h                                       ; $425B: $4C
    rst RST_38                                    ; $425C: $FF
    rst RST_38                                    ; $425D: $FF
    adc d                                         ; $425E: $8A
    ld c, h                                       ; $425F: $4C
    rst RST_38                                    ; $4260: $FF
    rst RST_38                                    ; $4261: $FF
    ld d, a                                       ; $4262: $57
    ld c, h                                       ; $4263: $4C
    rst RST_38                                    ; $4264: $FF
    rst RST_38                                    ; $4265: $FF
    db $ED                                        ; $4266: $ED
    ld b, l                                       ; $4267: $45
    rst RST_38                                    ; $4268: $FF
    rst RST_38                                    ; $4269: $FF
    rst RST_38                                    ; $426A: $FF
    rst RST_38                                    ; $426B: $FF
    db $ED                                        ; $426C: $ED
    ld b, l                                       ; $426D: $45
    rst RST_38                                    ; $426E: $FF
    rst RST_38                                    ; $426F: $FF
    ld d, a                                       ; $4270: $57
    ld c, h                                       ; $4271: $4C
    rst RST_38                                    ; $4272: $FF
    rst RST_38                                    ; $4273: $FF
    adc d                                         ; $4274: $8A
    ld c, h                                       ; $4275: $4C
    rst RST_38                                    ; $4276: $FF
    rst RST_38                                    ; $4277: $FF
    ld d, a                                       ; $4278: $57
    ld c, h                                       ; $4279: $4C
    rst RST_38                                    ; $427A: $FF
    rst RST_38                                    ; $427B: $FF
    db $ED                                        ; $427C: $ED
    ld b, l                                       ; $427D: $45
    rst RST_38                                    ; $427E: $FF
    rst RST_38                                    ; $427F: $FF
    rst RST_38                                    ; $4280: $FF
    rst RST_38                                    ; $4281: $FF
    or l                                          ; $4282: $B5
    ld c, d                                       ; $4283: $4A
    rst RST_38                                    ; $4284: $FF
    rst RST_38                                    ; $4285: $FF
    ld e, e                                       ; $4286: $5B
    ld c, b                                       ; $4287: $48
    rst RST_38                                    ; $4288: $FF
    rst RST_38                                    ; $4289: $FF
    sub c                                         ; $428A: $91
    ld c, b                                       ; $428B: $48
    rst RST_38                                    ; $428C: $FF
    rst RST_38                                    ; $428D: $FF
    or e                                          ; $428E: $B3
    ld c, h                                       ; $428F: $4C
    rst RST_38                                    ; $4290: $FF
    rst RST_38                                    ; $4291: $FF
    or l                                          ; $4292: $B5
    ld c, d                                       ; $4293: $4A
    rst RST_38                                    ; $4294: $FF
    rst RST_38                                    ; $4295: $FF
    rst RST_38                                    ; $4296: $FF
    rst RST_38                                    ; $4297: $FF
    sub d                                         ; $4298: $92
    ld c, d                                       ; $4299: $4A
    rst RST_38                                    ; $429A: $FF
    rst RST_38                                    ; $429B: $FF
    dec hl                                        ; $429C: $2B
    ld c, b                                       ; $429D: $48
    rst RST_38                                    ; $429E: $FF
    rst RST_38                                    ; $429F: $FF
    xor b                                         ; $42A0: $A8
    ld c, c                                       ; $42A1: $49
    rst RST_38                                    ; $42A2: $FF
    rst RST_38                                    ; $42A3: $FF
    ld d, b                                       ; $42A4: $50
    ld b, h                                       ; $42A5: $44
    ld [hl], c                                    ; $42A6: $71
    ld b, h                                       ; $42A7: $44
    sub $4C                                       ; $42A8: $D6 $4C
    and a                                         ; $42AA: $A7
    ld b, h                                       ; $42AB: $44
    db $ED                                        ; $42AC: $ED
    ld c, h                                       ; $42AD: $4C
    rst RST_38                                    ; $42AE: $FF
    rst RST_38                                    ; $42AF: $FF
    db $ED                                        ; $42B0: $ED
    ld c, h                                       ; $42B1: $4C
    rst RST_38                                    ; $42B2: $FF
    rst RST_38                                    ; $42B3: $FF
    rst RST_38                                    ; $42B4: $FF
    rst RST_38                                    ; $42B5: $FF
    sub d                                         ; $42B6: $92
    ld c, d                                       ; $42B7: $4A
    rst RST_38                                    ; $42B8: $FF
    rst RST_38                                    ; $42B9: $FF
    dec hl                                        ; $42BA: $2B
    ld c, b                                       ; $42BB: $48
    rst RST_38                                    ; $42BC: $FF
    rst RST_38                                    ; $42BD: $FF
    xor b                                         ; $42BE: $A8
    ld c, c                                       ; $42BF: $49
    rst RST_38                                    ; $42C0: $FF
    rst RST_38                                    ; $42C1: $FF
    ld d, b                                       ; $42C2: $50
    ld b, h                                       ; $42C3: $44
    ld [hl], c                                    ; $42C4: $71
    ld b, h                                       ; $42C5: $44
    sub $4C                                       ; $42C6: $D6 $4C
    and a                                         ; $42C8: $A7
    ld b, h                                       ; $42C9: $44
    db $ED                                        ; $42CA: $ED
    ld c, h                                       ; $42CB: $4C
    rst RST_38                                    ; $42CC: $FF
    rst RST_38                                    ; $42CD: $FF
    db $ED                                        ; $42CE: $ED
    ld c, h                                       ; $42CF: $4C
    rst RST_38                                    ; $42D0: $FF
    rst RST_38                                    ; $42D1: $FF
    dec hl                                        ; $42D2: $2B
    ld c, b                                       ; $42D3: $48
    rst RST_38                                    ; $42D4: $FF
    rst RST_38                                    ; $42D5: $FF
    xor b                                         ; $42D6: $A8
    ld c, c                                       ; $42D7: $49
    rst RST_38                                    ; $42D8: $FF
    rst RST_38                                    ; $42D9: $FF
    ld d, b                                       ; $42DA: $50
    ld b, h                                       ; $42DB: $44
    ld [hl], c                                    ; $42DC: $71
    ld b, h                                       ; $42DD: $44
    sub $4C                                       ; $42DE: $D6 $4C
    and a                                         ; $42E0: $A7
    ld b, h                                       ; $42E1: $44
    xor b                                         ; $42E2: $A8
    ld c, c                                       ; $42E3: $49
    rst RST_38                                    ; $42E4: $FF
    rst RST_38                                    ; $42E5: $FF
    ld [bc], a                                    ; $42E6: $02
    ld b, a                                       ; $42E7: $47
    ld hl, $A847                                  ; $42E8: $21 $47 $A8
    ld c, c                                       ; $42EB: $49
    rst RST_38                                    ; $42EC: $FF
    rst RST_38                                    ; $42ED: $FF
    sbc [hl]                                      ; $42EE: $9E
    ld b, a                                       ; $42EF: $47
    db $ED                                        ; $42F0: $ED
    ld b, a                                       ; $42F1: $47
    or d                                          ; $42F2: $B2
    ld c, c                                       ; $42F3: $49
    rst RST_38                                    ; $42F4: $FF
    rst RST_38                                    ; $42F5: $FF
    sub b                                         ; $42F6: $90
    ld b, h                                       ; $42F7: $44
    xor a                                         ; $42F8: $AF
    ld b, h                                       ; $42F9: $44
    sub b                                         ; $42FA: $90
    ld b, h                                       ; $42FB: $44
    xor a                                         ; $42FC: $AF
    ld b, h                                       ; $42FD: $44
    sub h                                         ; $42FE: $94
    ld b, a                                       ; $42FF: $47
    push hl                                       ; $4300: $E5
    ld b, a                                       ; $4301: $47
    add [hl]                                      ; $4302: $86
    ld b, h                                       ; $4303: $44
    and a                                         ; $4304: $A7
    ld b, h                                       ; $4305: $44
    ld d, b                                       ; $4306: $50
    ld b, h                                       ; $4307: $44
    ld [hl], c                                    ; $4308: $71
    ld b, h                                       ; $4309: $44
    rst RST_38                                    ; $430A: $FF
    rst RST_38                                    ; $430B: $FF
    db $10                                        ; $430C: $10
    ld c, l                                       ; $430D: $4D
    dec l                                         ; $430E: $2D
    ld c, l                                       ; $430F: $4D
    db $10                                        ; $4310: $10
    ld c, l                                       ; $4311: $4D
    ld b, l                                       ; $4312: $45
    ld c, l                                       ; $4313: $4D
    db $10                                        ; $4314: $10
    ld c, l                                       ; $4315: $4D
    ld e, l                                       ; $4316: $5D
    ld c, l                                       ; $4317: $4D
    db $10                                        ; $4318: $10
    ld c, l                                       ; $4319: $4D
    ld [hl], l                                    ; $431A: $75
    ld c, l                                       ; $431B: $4D
    sub b                                         ; $431C: $90
    ld c, l                                       ; $431D: $4D
    rst RST_38                                    ; $431E: $FF
    rst RST_38                                    ; $431F: $FF
    cp a                                          ; $4320: $BF
    ld c, l                                       ; $4321: $4D
    rst RST_38                                    ; $4322: $FF
    rst RST_38                                    ; $4323: $FF
    push hl                                       ; $4324: $E5
    ld c, l                                       ; $4325: $4D
    rst RST_38                                    ; $4326: $FF
    rst RST_38                                    ; $4327: $FF
    cp a                                          ; $4328: $BF
    ld c, l                                       ; $4329: $4D
    rst RST_38                                    ; $432A: $FF
    rst RST_38                                    ; $432B: $FF
    dec bc                                        ; $432C: $0B
    ld c, [hl]                                    ; $432D: $4E
    rst RST_38                                    ; $432E: $FF
    rst RST_38                                    ; $432F: $FF
    ld b, e                                       ; $4330: $43
    ld c, [hl]                                    ; $4331: $4E
    rst RST_38                                    ; $4332: $FF
    rst RST_38                                    ; $4333: $FF
    adc d                                         ; $4334: $8A
    ld c, [hl]                                    ; $4335: $4E
    ld [hl], d                                    ; $4336: $72
    ld c, [hl]                                    ; $4337: $4E
    adc d                                         ; $4338: $8A
    ld c, [hl]                                    ; $4339: $4E
    and a                                         ; $433A: $A7
    ld c, [hl]                                    ; $433B: $4E
    adc d                                         ; $433C: $8A
    ld c, [hl]                                    ; $433D: $4E
    cp a                                          ; $433E: $BF
    ld c, [hl]                                    ; $433F: $4E
    adc d                                         ; $4340: $8A
    ld c, [hl]                                    ; $4341: $4E
    rst RST_10                                    ; $4342: $D7
    ld c, [hl]                                    ; $4343: $4E
    adc d                                         ; $4344: $8A
    ld c, [hl]                                    ; $4345: $4E
    rst RST_28                                    ; $4346: $EF
    ld c, [hl]                                    ; $4347: $4E
    adc d                                         ; $4348: $8A
    ld c, [hl]                                    ; $4349: $4E
    rlca                                          ; $434A: $07
    ld c, a                                       ; $434B: $4F
    rst RST_30                                    ; $434C: $F7
    ld b, l                                       ; $434D: $45
    rst RST_38                                    ; $434E: $FF
    rst RST_38                                    ; $434F: $FF
    rst RST_38                                    ; $4350: $FF
    rst RST_38                                    ; $4351: $FF
    nop                                           ; $4352: $00
    ld bc, $0000                                  ; $4353: $01 $00 $00
    ld b, b                                       ; $4356: $40
    ld [de], a                                    ; $4357: $12
    ld e, h                                       ; $4358: $5C
    ld b, e                                       ; $4359: $43
    nop                                           ; $435A: $00
    nop                                           ; $435B: $00
    ld [$EE23], sp                                ; $435C: $08 $23 $EE
    nop                                           ; $435F: $00
    rra                                           ; $4360: $1F
    or $02                                        ; $4361: $F6 $02
    dec de                                        ; $4363: $1B
    cp $04                                        ; $4364: $FE $04
    ld [hl+], a                                   ; $4366: $22
    ld b, $06                                     ; $4367: $06 $06
    cpl                                           ; $4369: $2F
    or $08                                        ; $436A: $F6 $08
    dec hl                                        ; $436C: $2B
    cp $0A                                        ; $436D: $FE $0A
    ld [hl-], a                                   ; $436F: $32
    inc bc                                        ; $4370: $03
    inc c                                         ; $4371: $0C
    inc sp                                        ; $4372: $33
    xor $0E                                       ; $4373: $EE $0E
    nop                                           ; $4375: $00
    ld bc, $0000                                  ; $4376: $01 $00 $00
    ld b, c                                       ; $4379: $41
    ld [de], a                                    ; $437A: $12

jr_00A_437B:
    ld a, a                                       ; $437B: $7F
    ld b, e                                       ; $437C: $43
    nop                                           ; $437D: $00
    nop                                           ; $437E: $00
    add hl, bc                                    ; $437F: $09
    inc h                                         ; $4380: $24
    xor $00                                       ; $4381: $EE $00
    jr nz, jr_00A_437B                            ; $4383: $20 $F6

    ld [bc], a                                    ; $4385: $02
    rra                                           ; $4386: $1F

jr_00A_4387:
    cp $04                                        ; $4387: $FE $04
    inc hl                                        ; $4389: $23
    ld b, $06                                     ; $438A: $06 $06
    inc [hl]                                      ; $438C: $34
    xor $08                                       ; $438D: $EE $08
    jr nc, jr_00A_4387                            ; $438F: $30 $F6

    ld a, [bc]                                    ; $4391: $0A
    cpl                                           ; $4392: $2F
    cp $0C                                        ; $4393: $FE $0C
    inc sp                                        ; $4395: $33
    ld b, $0E                                     ; $4396: $06 $0E
    ccf                                           ; $4398: $3F
    cp $10                                        ; $4399: $FE $10
    nop                                           ; $439B: $00
    ld bc, $2000                                  ; $439C: $01 $00 $20
    ld b, d                                       ; $439F: $42
    ld [de], a                                    ; $43A0: $12
    and l                                         ; $43A1: $A5
    ld b, e                                       ; $43A2: $43
    nop                                           ; $43A3: $00
    nop                                           ; $43A4: $00
    ld [$EF25], sp                                ; $43A5: $08 $25 $EF
    nop                                           ; $43A8: $00
    ld hl, $02F7                                  ; $43A9: $21 $F7 $02
    jr nz, @+$01                                  ; $43AC: $20 $FF

    inc b                                         ; $43AE: $04
    inc h                                         ; $43AF: $24
    rlca                                          ; $43B0: $07
    ld b, $35                                     ; $43B1: $06 $35
    rst RST_28                                    ; $43B3: $EF
    ld [$F731], sp                                ; $43B4: $08 $31 $F7
    ld a, [bc]                                    ; $43B7: $0A
    jr nc, @+$01                                  ; $43B8: $30 $FF

    inc c                                         ; $43BA: $0C
    inc [hl]                                      ; $43BB: $34
    rlca                                          ; $43BC: $07
    ld c, $00                                     ; $43BD: $0E $00
    ld bc, $2000                                  ; $43BF: $01 $00 $20
    ld b, e                                       ; $43C2: $43
    ld [de], a                                    ; $43C3: $12
    ret z                                         ; $43C4: $C8

    ld b, e                                       ; $43C5: $43
    nop                                           ; $43C6: $00
    nop                                           ; $43C7: $00
    ld [$EF22], sp                                ; $43C8: $08 $22 $EF
    nop                                           ; $43CB: $00
    rra                                           ; $43CC: $1F
    rst RST_30                                    ; $43CD: $F7
    ld [bc], a                                    ; $43CE: $02
    ld e, $FF                                     ; $43CF: $1E $FF
    inc b                                         ; $43D1: $04
    ld [hl+], a                                   ; $43D2: $22
    rlca                                          ; $43D3: $07
    ld b, $33                                     ; $43D4: $06 $33
    rst RST_28                                    ; $43D6: $EF
    ld [$F72F], sp                                ; $43D7: $08 $2F $F7
    ld a, [bc]                                    ; $43DA: $0A
    ld l, $FF                                     ; $43DB: $2E $FF
    inc c                                         ; $43DD: $0C
    inc [hl]                                      ; $43DE: $34
    inc bc                                        ; $43DF: $03
    ld c, $00                                     ; $43E0: $0E $00
    ld bc, $2000                                  ; $43E2: $01 $00 $20
    ld b, h                                       ; $43E5: $44
    ld [de], a                                    ; $43E6: $12
    db $EB                                        ; $43E7: $EB
    ld b, e                                       ; $43E8: $43
    nop                                           ; $43E9: $00
    nop                                           ; $43EA: $00
    dec b                                         ; $43EB: $05
    rra                                           ; $43EC: $1F
    or $00                                        ; $43ED: $F6 $00
    add hl, hl                                    ; $43EF: $29
    xor $02                                       ; $43F0: $EE $02
    cpl                                           ; $43F2: $2F
    or $04                                        ; $43F3: $F6 $04

jr_00A_43F5:
    jr nc, jr_00A_43F5                            ; $43F5: $30 $FE

    ld b, $30                                     ; $43F7: $06 $30
    ld b, $08                                     ; $43F9: $06 $08
    nop                                           ; $43FB: $00
    ret nz                                        ; $43FC: $C0

    ld b, h                                       ; $43FD: $44
    ld [de], a                                    ; $43FE: $12
    inc bc                                        ; $43FF: $03
    ld b, h                                       ; $4400: $44
    nop                                           ; $4401: $00
    nop                                           ; $4402: $00
    inc bc                                        ; $4403: $03

jr_00A_4404:
    jr nz, jr_00A_4404                            ; $4404: $20 $FE

    nop                                           ; $4406: $00
    jr nz, @+$08                                  ; $4407: $20 $06

    ld [bc], a                                    ; $4409: $02
    db $10                                        ; $440A: $10
    cp $04                                        ; $440B: $FE $04
    nop                                           ; $440D: $00
    ld bc, $2000                                  ; $440E: $01 $00 $20
    ld b, l                                       ; $4411: $45
    ld [de], a                                    ; $4412: $12
    rla                                           ; $4413: $17
    ld b, h                                       ; $4414: $44
    nop                                           ; $4415: $00
    nop                                           ; $4416: $00

jr_00A_4417:
    rlca                                          ; $4417: $07
    ld hl, $00F2                                  ; $4418: $21 $F2 $00
    jr nz, jr_00A_4417                            ; $441B: $20 $FA

    ld [bc], a                                    ; $441D: $02
    jr nz, @+$04                                  ; $441E: $20 $02

    inc b                                         ; $4420: $04
    jr nc, jr_00A_4417                            ; $4421: $30 $F4

    ld b, $30                                     ; $4423: $06 $30
    db $FC                                        ; $4425: $FC
    ld [$0430], sp                                ; $4426: $08 $30 $04
    ld a, [bc]                                    ; $4429: $0A
    stop                                          ; $442A: $10 $00
    inc c                                         ; $442C: $0C
    nop                                           ; $442D: $00
    ld bc, $0000                                  ; $442E: $01 $00 $00
    ld b, [hl]                                    ; $4431: $46
    ld [de], a                                    ; $4432: $12
    scf                                           ; $4433: $37
    ld b, h                                       ; $4434: $44
    nop                                           ; $4435: $00
    nop                                           ; $4436: $00
    ld [$F620], sp                                ; $4437: $08 $20 $F6

jr_00A_443A:
    nop                                           ; $443A: $00

jr_00A_443B:
    jr nz, jr_00A_443B                            ; $443B: $20 $FE

    ld [bc], a                                    ; $443D: $02
    jr nz, @+$08                                  ; $443E: $20 $06

    inc b                                         ; $4440: $04
    jr nc, @-$08                                  ; $4441: $30 $F6

    ld b, $30                                     ; $4443: $06 $30
    cp $08                                        ; $4445: $FE $08
    jr nc, @+$08                                  ; $4447: $30 $06

    ld a, [bc]                                    ; $4449: $0A
    jr z, jr_00A_443A                             ; $444A: $28 $EE

    inc c                                         ; $444C: $0C
    db $10                                        ; $444D: $10
    cp $0E                                        ; $444E: $FE $0E
    nop                                           ; $4450: $00
    rlca                                          ; $4451: $07
    nop                                           ; $4452: $00
    nop                                           ; $4453: $00
    ld b, a                                       ; $4454: $47
    ld [de], a                                    ; $4455: $12
    ld h, h                                       ; $4456: $64
    ld b, h                                       ; $4457: $44
    ld [bc], a                                    ; $4458: $02
    nop                                           ; $4459: $00

jr_00A_445A:
    nop                                           ; $445A: $00
    ld [$0000], sp                                ; $445B: $08 $00 $00
    ld b, a                                       ; $445E: $47
    ld [de], a                                    ; $445F: $12
    ld h, h                                       ; $4460: $64
    ld b, h                                       ; $4461: $44
    nop                                           ; $4462: $00
    rst RST_30                                    ; $4463: $F7
    inc b                                         ; $4464: $04

jr_00A_4465:
    jr nz, jr_00A_445A                            ; $4465: $20 $F3

    nop                                           ; $4467: $00
    jr nz, jr_00A_4465                            ; $4468: $20 $FB

    ld [bc], a                                    ; $446A: $02
    jr nz, jr_00A_4470                            ; $446B: $20 $03

    inc b                                         ; $446D: $04
    rra                                           ; $446E: $1F
    dec bc                                        ; $446F: $0B

jr_00A_4470:
    ld b, $00                                     ; $4470: $06 $00
    add b                                         ; $4472: $80
    ld b, a                                       ; $4473: $47
    ld [de], a                                    ; $4474: $12
    ld a, c                                       ; $4475: $79
    ld b, h                                       ; $4476: $44

jr_00A_4477:
    ld [bc], a                                    ; $4477: $02
    nop                                           ; $4478: $00
    inc b                                         ; $4479: $04
    jr nc, @-$0E                                  ; $447A: $30 $F0

    nop                                           ; $447C: $00
    jr nc, jr_00A_4477                            ; $447D: $30 $F8

    ld [bc], a                                    ; $447F: $02
    jr nc, jr_00A_4482                            ; $4480: $30 $00

jr_00A_4482:
    inc b                                         ; $4482: $04
    jr nc, jr_00A_448D                            ; $4483: $30 $08

    ld b, $00                                     ; $4485: $06 $00
    ld [$0000], sp                                ; $4487: $08 $00 $00
    ld c, b                                       ; $448A: $48
    ld [de], a                                    ; $448B: $12
    sbc d                                         ; $448C: $9A

jr_00A_448D:
    ld b, h                                       ; $448D: $44
    nop                                           ; $448E: $00
    rlca                                          ; $448F: $07
    ld h, b                                       ; $4490: $60
    ld [$0005], sp                                ; $4491: $08 $05 $00
    ld c, b                                       ; $4494: $48
    ld [de], a                                    ; $4495: $12
    sbc d                                         ; $4496: $9A
    ld b, h                                       ; $4497: $44
    nop                                           ; $4498: $00
    xor $04                                       ; $4499: $EE $04
    db $10                                        ; $449B: $10
    ldh a, [rP1]                                  ; $449C: $F0 $00
    db $10                                        ; $449E: $10
    ld hl, sp+$02                                 ; $449F: $F8 $02
    stop                                          ; $44A1: $10 $00
    inc b                                         ; $44A3: $04
    db $10                                        ; $44A4: $10
    ld [$0006], sp                                ; $44A5: $08 $06 $00
    add b                                         ; $44A8: $80

jr_00A_44A9:
    ld c, b                                       ; $44A9: $48
    ld [de], a                                    ; $44AA: $12
    or a                                          ; $44AB: $B7
    ld b, h                                       ; $44AC: $44
    nop                                           ; $44AD: $00
    rlca                                          ; $44AE: $07
    ld h, b                                       ; $44AF: $60
    add b                                         ; $44B0: $80
    ld c, b                                       ; $44B1: $48
    ld [de], a                                    ; $44B2: $12
    or a                                          ; $44B3: $B7

jr_00A_44B4:
    ld b, h                                       ; $44B4: $44
    nop                                           ; $44B5: $00
    xor $06                                       ; $44B6: $EE $06
    jr nz, jr_00A_44A9                            ; $44B8: $20 $EF

    nop                                           ; $44BA: $00
    jr nz, jr_00A_44B4                            ; $44BB: $20 $F7

    ld [bc], a                                    ; $44BD: $02
    jr nz, @+$01                                  ; $44BE: $20 $FF

    inc b                                         ; $44C0: $04
    jr nz, jr_00A_44CA                            ; $44C1: $20 $07

    ld b, $30                                     ; $44C3: $06 $30

jr_00A_44C5:
    db $FC                                        ; $44C5: $FC
    ld [$0430], sp                                ; $44C6: $08 $30 $04
    ld a, [bc]                                    ; $44C9: $0A

jr_00A_44CA:
    nop                                           ; $44CA: $00
    ld b, b                                       ; $44CB: $40
    ld c, c                                       ; $44CC: $49
    ld [de], a                                    ; $44CD: $12
    jp nc, Jump_000_0044                          ; $44CE: $D2 $44 $00

    rrca                                          ; $44D1: $0F
    dec b                                         ; $44D2: $05
    jr jr_00A_44C5                                ; $44D3: $18 $F0

    nop                                           ; $44D5: $00
    jr @-$06                                      ; $44D6: $18 $F8

    ld [bc], a                                    ; $44D8: $02
    jr jr_00A_44DB                                ; $44D9: $18 $00

jr_00A_44DB:
    inc b                                         ; $44DB: $04
    jr jr_00A_44E6                                ; $44DC: $18 $08

    ld b, $28                                     ; $44DE: $06 $28
    or $08                                        ; $44E0: $F6 $08
    nop                                           ; $44E2: $00
    ld bc, $E000                                  ; $44E3: $01 $00 $E0

jr_00A_44E6:
    ld c, c                                       ; $44E6: $49
    ld [de], a                                    ; $44E7: $12
    db $EC                                        ; $44E8: $EC
    ld b, h                                       ; $44E9: $44

jr_00A_44EA:
    ld bc, $0800                                  ; $44EA: $01 $00 $08
    jr nz, @-$0E                                  ; $44ED: $20 $F0

    nop                                           ; $44EF: $00
    jr nz, jr_00A_44EA                            ; $44F0: $20 $F8

    ld [bc], a                                    ; $44F2: $02
    jr nz, jr_00A_44F5                            ; $44F3: $20 $00

jr_00A_44F5:
    inc b                                         ; $44F5: $04
    jr nz, @+$0A                                  ; $44F6: $20 $08

    ld b, $30                                     ; $44F8: $06 $30
    or $08                                        ; $44FA: $F6 $08

jr_00A_44FC:
    jr nc, jr_00A_44FC                            ; $44FC: $30 $FE

    ld a, [bc]                                    ; $44FE: $0A
    jr nc, jr_00A_4507                            ; $44FF: $30 $06

    inc c                                         ; $4501: $0C
    add hl, sp                                    ; $4502: $39

jr_00A_4503:
    xor $0E                                       ; $4503: $EE $0E
    nop                                           ; $4505: $00
    rlca                                          ; $4506: $07

jr_00A_4507:
    nop                                           ; $4507: $00
    ldh [rWY], a                                  ; $4508: $E0 $4A
    ld [de], a                                    ; $450A: $12
    rrca                                          ; $450B: $0F
    ld b, l                                       ; $450C: $45
    ld [bc], a                                    ; $450D: $02

jr_00A_450E:
    nop                                           ; $450E: $00
    inc b                                         ; $450F: $04
    jr nz, jr_00A_4503                            ; $4510: $20 $F1

    nop                                           ; $4512: $00
    jr nz, jr_00A_450E                            ; $4513: $20 $F9

    ld [bc], a                                    ; $4515: $02
    jr nz, jr_00A_4519                            ; $4516: $20 $01

    inc b                                         ; $4518: $04

jr_00A_4519:
    jr nz, jr_00A_4524                            ; $4519: $20 $09

    ld b, $00                                     ; $451B: $06 $00
    ld h, b                                       ; $451D: $60
    ld c, e                                       ; $451E: $4B
    ld [de], a                                    ; $451F: $12
    inc h                                         ; $4520: $24
    ld b, l                                       ; $4521: $45

jr_00A_4522:
    ld [bc], a                                    ; $4522: $02
    nop                                           ; $4523: $00

jr_00A_4524:
    inc b                                         ; $4524: $04
    jr nc, @-$0E                                  ; $4525: $30 $F0

    nop                                           ; $4527: $00
    jr nc, jr_00A_4522                            ; $4528: $30 $F8

    ld [bc], a                                    ; $452A: $02
    jr nc, jr_00A_452D                            ; $452B: $30 $00

jr_00A_452D:
    inc b                                         ; $452D: $04
    jr nc, jr_00A_4538                            ; $452E: $30 $08

    ld b, $00                                     ; $4530: $06 $00
    ld [$E000], sp                                ; $4532: $08 $00 $E0
    ld c, e                                       ; $4535: $4B
    ld [de], a                                    ; $4536: $12
    dec sp                                        ; $4537: $3B

jr_00A_4538:
    ld b, l                                       ; $4538: $45
    ld bc, $0707                                  ; $4539: $01 $07 $07
    inc d                                         ; $453C: $14
    ldh a, [rP1]                                  ; $453D: $F0 $00
    inc d                                         ; $453F: $14
    ld hl, sp+$02                                 ; $4540: $F8 $02
    inc d                                         ; $4542: $14
    nop                                           ; $4543: $00
    inc b                                         ; $4544: $04
    inc d                                         ; $4545: $14
    ld [$2406], sp                                ; $4546: $08 $06 $24
    rst RST_30                                    ; $4549: $F7
    ld [$FF24], sp                                ; $454A: $08 $24 $FF
    ld a, [bc]                                    ; $454D: $0A
    inc h                                         ; $454E: $24
    rlca                                          ; $454F: $07
    inc c                                         ; $4550: $0C
    nop                                           ; $4551: $00
    ld bc, $E000                                  ; $4552: $01 $00 $E0
    ld d, c                                       ; $4555: $51
    ld [de], a                                    ; $4556: $12

jr_00A_4557:
    ld e, e                                       ; $4557: $5B
    ld b, l                                       ; $4558: $45
    nop                                           ; $4559: $00
    nop                                           ; $455A: $00
    rlca                                          ; $455B: $07
    inc hl                                        ; $455C: $23
    xor $00                                       ; $455D: $EE $00
    jr nz, jr_00A_4557                            ; $455F: $20 $F6

    ld [bc], a                                    ; $4561: $02

jr_00A_4562:
    jr nz, jr_00A_4562                            ; $4562: $20 $FE

    inc b                                         ; $4564: $04
    jr nz, jr_00A_456D                            ; $4565: $20 $06

    ld b, $30                                     ; $4567: $06 $30
    ldh a, [c]                                    ; $4569: $F2
    ld [$FA30], sp                                ; $456A: $08 $30 $FA

jr_00A_456D:
    ld a, [bc]                                    ; $456D: $0A
    jr nc, jr_00A_4572                            ; $456E: $30 $02

    inc c                                         ; $4570: $0C
    nop                                           ; $4571: $00

jr_00A_4572:
    ld bc, $C05A                                  ; $4572: $01 $5A $C0
    ld d, d                                       ; $4575: $52
    ld [de], a                                    ; $4576: $12
    ld a, e                                       ; $4577: $7B
    ld b, l                                       ; $4578: $45
    nop                                           ; $4579: $00
    nop                                           ; $457A: $00
    ld [$E229], sp                                ; $457B: $08 $29 $E2
    nop                                           ; $457E: $00
    rra                                           ; $457F: $1F
    ld [$2002], a                                 ; $4580: $EA $02 $20
    ldh a, [c]                                    ; $4583: $F2
    inc b                                         ; $4584: $04
    jr nz, @-$04                                  ; $4585: $20 $FA

    ld b, $21                                     ; $4587: $06 $21
    ld [bc], a                                    ; $4589: $02

jr_00A_458A:
    ld [$F231], sp                                ; $458A: $08 $31 $F2
    ld a, [bc]                                    ; $458D: $0A
    jr nc, jr_00A_458A                            ; $458E: $30 $FA

    inc c                                         ; $4590: $0C
    ld sp, $0E02                                  ; $4591: $31 $02 $0E
    nop                                           ; $4594: $00
    ld bc, $C05B                                  ; $4595: $01 $5B $C0
    ld d, e                                       ; $4598: $53
    ld [de], a                                    ; $4599: $12
    sbc [hl]                                      ; $459A: $9E
    ld b, l                                       ; $459B: $45
    ld bc, $0800                                  ; $459C: $01 $00 $08
    add hl, hl                                    ; $459F: $29
    push hl                                       ; $45A0: $E5
    nop                                           ; $45A1: $00
    inc hl                                        ; $45A2: $23
    db $ED                                        ; $45A3: $ED
    ld [bc], a                                    ; $45A4: $02
    inc h                                         ; $45A5: $24
    push af                                       ; $45A6: $F5
    inc b                                         ; $45A7: $04
    inc d                                         ; $45A8: $14
    push af                                       ; $45A9: $F5
    ld b, $2E                                     ; $45AA: $06 $2E
    db $FD                                        ; $45AC: $FD
    ld [$FD1E], sp                                ; $45AD: $08 $1E $FD
    ld a, [bc]                                    ; $45B0: $0A
    inc e                                         ; $45B1: $1C
    dec b                                         ; $45B2: $05
    inc c                                         ; $45B3: $0C
    dec [hl]                                      ; $45B4: $35
    inc bc                                        ; $45B5: $03
    ld c, $00                                     ; $45B6: $0E $00
    ld bc, $C000                                  ; $45B8: $01 $00 $C0
    ld d, h                                       ; $45BB: $54
    ld [de], a                                    ; $45BC: $12
    bit 0, l                                      ; $45BD: $CB $45
    ld hl, sp+$00                                 ; $45BF: $F8 $00
    nop                                           ; $45C1: $00
    ld bc, $C000                                  ; $45C2: $01 $00 $C0
    ld d, h                                       ; $45C5: $54
    ld [de], a                                    ; $45C6: $12
    bit 0, l                                      ; $45C7: $CB $45
    ld a, [$0400]                                 ; $45C9: $FA $00 $04

jr_00A_45CC:
    jr nz, jr_00A_45CC                            ; $45CC: $20 $FE

    nop                                           ; $45CE: $00

jr_00A_45CF:
    jr nc, jr_00A_45CF                            ; $45CF: $30 $FE

    ld [bc], a                                    ; $45D1: $02
    dec e                                         ; $45D2: $1D
    or $04                                        ; $45D3: $F6 $04
    dec [hl]                                      ; $45D5: $35
    or $06                                        ; $45D6: $F6 $06
    nop                                           ; $45D8: $00
    ld b, b                                       ; $45D9: $40
    ld d, l                                       ; $45DA: $55
    ld [de], a                                    ; $45DB: $12
    ldh [rLYC], a                                 ; $45DC: $E0 $45
    ld hl, sp+$00                                 ; $45DE: $F8 $00
    inc b                                         ; $45E0: $04
    rra                                           ; $45E1: $1F
    ld b, $00                                     ; $45E2: $06 $00
    cpl                                           ; $45E4: $2F
    ld b, $02                                     ; $45E5: $06 $02
    ld [hl+], a                                   ; $45E7: $22
    ld c, $04                                     ; $45E8: $0E $04
    inc [hl]                                      ; $45EA: $34
    dec bc                                        ; $45EB: $0B
    ld b, $00                                     ; $45EC: $06 $00
    ld bc, $C000                                  ; $45EE: $01 $00 $C0
    ld d, l                                       ; $45F1: $55
    ld [de], a                                    ; $45F2: $12
    ld bc, $F946                                  ; $45F3: $01 $46 $F9
    nop                                           ; $45F6: $00
    nop                                           ; $45F7: $00
    ld bc, $C000                                  ; $45F8: $01 $00 $C0
    ld d, l                                       ; $45FB: $55
    ld [de], a                                    ; $45FC: $12
    ld bc, $FD46                                  ; $45FD: $01 $46 $FD
    nop                                           ; $4600: $00
    ld [$F629], sp                                ; $4601: $08 $29 $F6
    nop                                           ; $4604: $00

jr_00A_4605:
    jr nz, jr_00A_4605                            ; $4605: $20 $FE

    ld [bc], a                                    ; $4607: $02
    jr nz, @+$08                                  ; $4608: $20 $06

    inc b                                         ; $460A: $04
    dec e                                         ; $460B: $1D
    ld c, $06                                     ; $460C: $0E $06
    add hl, sp                                    ; $460E: $39
    or $08                                        ; $460F: $F6 $08

jr_00A_4611:
    jr nc, jr_00A_4611                            ; $4611: $30 $FE

    ld a, [bc]                                    ; $4613: $0A
    jr nc, @+$08                                  ; $4614: $30 $06

    inc c                                         ; $4616: $0C
    jr c, jr_00A_4627                             ; $4617: $38 $0E

    ld c, $00                                     ; $4619: $0E $00
    ld bc, $C05C                                  ; $461B: $01 $5C $C0
    ld d, [hl]                                    ; $461E: $56
    ld [de], a                                    ; $461F: $12
    inc h                                         ; $4620: $24
    ld b, [hl]                                    ; $4621: $46
    ld sp, hl                                     ; $4622: $F9
    nop                                           ; $4623: $00
    dec bc                                        ; $4624: $0B
    ld [hl+], a                                   ; $4625: $22
    rst RST_18                                    ; $4626: $DF

jr_00A_4627:
    nop                                           ; $4627: $00
    ld [hl+], a                                   ; $4628: $22
    rst RST_20                                    ; $4629: $E7
    ld [bc], a                                    ; $462A: $02
    ld [hl+], a                                   ; $462B: $22
    rst RST_28                                    ; $462C: $EF
    inc b                                         ; $462D: $04
    ld hl, $06F7                                  ; $462E: $21 $F7 $06
    ld hl, $08FF                                  ; $4631: $21 $FF $08
    ld sp, $0AF7                                  ; $4634: $31 $F7 $0A
    ld sp, $0CFF                                  ; $4637: $31 $FF $0C
    ld [hl+], a                                   ; $463A: $22
    rlca                                          ; $463B: $07
    ld c, $32                                     ; $463C: $0E $32
    rlca                                          ; $463E: $07
    db $10                                        ; $463F: $10
    ld [hl+], a                                   ; $4640: $22
    rrca                                          ; $4641: $0F
    ld [de], a                                    ; $4642: $12
    jr c, jr_00A_4654                             ; $4643: $38 $0F

    inc d                                         ; $4645: $14
    nop                                           ; $4646: $00
    ld bc, $2000                                  ; $4647: $01 $00 $20
    ld e, b                                       ; $464A: $58
    ld [de], a                                    ; $464B: $12
    ld d, b                                       ; $464C: $50
    ld b, [hl]                                    ; $464D: $46
    ld sp, hl                                     ; $464E: $F9
    nop                                           ; $464F: $00
    inc b                                         ; $4650: $04
    rra                                           ; $4651: $1F
    or $00                                        ; $4652: $F6 $00

jr_00A_4654:
    ld sp, $02F6                                  ; $4654: $31 $F6 $02
    ld e, $EE                                     ; $4657: $1E $EE
    inc b                                         ; $4659: $04
    rra                                           ; $465A: $1F
    and $06                                       ; $465B: $E6 $06
    nop                                           ; $465D: $00
    and b                                         ; $465E: $A0
    ld e, b                                       ; $465F: $58
    ld [de], a                                    ; $4660: $12
    ld h, l                                       ; $4661: $65
    ld b, [hl]                                    ; $4662: $46
    ld sp, hl                                     ; $4663: $F9
    nop                                           ; $4664: $00
    ld b, $20                                     ; $4665: $06 $20
    cp $00                                        ; $4667: $FE $00

jr_00A_4669:
    jr nc, jr_00A_4669                            ; $4669: $30 $FE

    ld [bc], a                                    ; $466B: $02
    inc h                                         ; $466C: $24
    ld b, $04                                     ; $466D: $06 $04
    inc [hl]                                      ; $466F: $34
    ld b, $06                                     ; $4670: $06 $06
    jr nz, jr_00A_4682                            ; $4672: $20 $0E

    ld [$0E37], sp                                ; $4674: $08 $37 $0E
    ld a, [bc]                                    ; $4677: $0A
    nop                                           ; $4678: $00
    rlca                                          ; $4679: $07
    nop                                           ; $467A: $00
    ld h, b                                       ; $467B: $60
    ld e, c                                       ; $467C: $59
    ld [de], a                                    ; $467D: $12
    add d                                         ; $467E: $82
    ld b, [hl]                                    ; $467F: $46
    ld [bc], a                                    ; $4680: $02
    nop                                           ; $4681: $00

jr_00A_4682:
    rlca                                          ; $4682: $07
    daa                                           ; $4683: $27
    db $EC                                        ; $4684: $EC
    nop                                           ; $4685: $00
    dec h                                         ; $4686: $25
    db $F4                                        ; $4687: $F4
    ld [bc], a                                    ; $4688: $02
    inc h                                         ; $4689: $24
    db $FC                                        ; $468A: $FC
    inc b                                         ; $468B: $04
    dec h                                         ; $468C: $25
    inc b                                         ; $468D: $04
    ld b, $35                                     ; $468E: $06 $35
    db $F4                                        ; $4690: $F4
    ld [$FC34], sp                                ; $4691: $08 $34 $FC
    ld a, [bc]                                    ; $4694: $0A
    dec [hl]                                      ; $4695: $35
    inc b                                         ; $4696: $04
    inc c                                         ; $4697: $0C
    nop                                           ; $4698: $00
    rlca                                          ; $4699: $07
    ld e, l                                       ; $469A: $5D
    ld b, b                                       ; $469B: $40
    ld e, d                                       ; $469C: $5A
    ld [de], a                                    ; $469D: $12
    and d                                         ; $469E: $A2
    ld b, [hl]                                    ; $469F: $46
    ld [bc], a                                    ; $46A0: $02
    nop                                           ; $46A1: $00
    ld [$E224], sp                                ; $46A2: $08 $24 $E2
    nop                                           ; $46A5: $00
    inc hl                                        ; $46A6: $23
    ld [$2502], a                                 ; $46A7: $EA $02 $25
    ldh a, [c]                                    ; $46AA: $F2
    inc b                                         ; $46AB: $04
    inc h                                         ; $46AC: $24
    ld a, [$2506]                                 ; $46AD: $FA $06 $25
    ld [bc], a                                    ; $46B0: $02
    ld [$F235], sp                                ; $46B1: $08 $35 $F2
    ld a, [bc]                                    ; $46B4: $0A
    inc [hl]                                      ; $46B5: $34
    ld a, [$350C]                                 ; $46B6: $FA $0C $35
    ld [bc], a                                    ; $46B9: $02
    ld c, $00                                     ; $46BA: $0E $00
    ld c, d                                       ; $46BC: $4A
    ld e, [hl]                                    ; $46BD: $5E
    ld b, b                                       ; $46BE: $40
    ld e, e                                       ; $46BF: $5B
    ld [de], a                                    ; $46C0: $12
    push bc                                       ; $46C1: $C5
    ld b, [hl]                                    ; $46C2: $46
    or $00                                        ; $46C3: $F6 $00
    ld a, [bc]                                    ; $46C5: $0A
    dec [hl]                                      ; $46C6: $35
    ldh [c], a                                    ; $46C7: $E2
    nop                                           ; $46C8: $00
    inc [hl]                                      ; $46C9: $34
    ld [$3402], a                                 ; $46CA: $EA $02 $34
    ldh a, [c]                                    ; $46CD: $F2
    inc b                                         ; $46CE: $04
    inc [hl]                                      ; $46CF: $34
    ld a, [$3506]                                 ; $46D0: $FA $06 $35
    ld [bc], a                                    ; $46D3: $02
    ld [$0B25], sp                                ; $46D4: $08 $25 $0B
    ld a, [bc]                                    ; $46D7: $0A
    inc h                                         ; $46D8: $24
    di                                            ; $46D9: $F3
    inc c                                         ; $46DA: $0C
    inc h                                         ; $46DB: $24
    ei                                            ; $46DC: $FB
    ld c, $25                                     ; $46DD: $0E $25
    inc bc                                        ; $46DF: $03
    db $10                                        ; $46E0: $10
    ld [hl+], a                                   ; $46E1: $22
    db $EB                                        ; $46E2: $EB
    ld [de], a                                    ; $46E3: $12
    nop                                           ; $46E4: $00
    rlca                                          ; $46E5: $07
    nop                                           ; $46E6: $00
    add b                                         ; $46E7: $80
    ld e, h                                       ; $46E8: $5C
    ld [de], a                                    ; $46E9: $12
    inc c                                         ; $46EA: $0C
    ld b, a                                       ; $46EB: $47
    or $00                                        ; $46EC: $F6 $00
    nop                                           ; $46EE: $00
    ld [$8005], sp                                ; $46EF: $08 $05 $80
    ld e, h                                       ; $46F2: $5C
    ld [de], a                                    ; $46F3: $12
    inc c                                         ; $46F4: $0C
    ld b, a                                       ; $46F5: $47
    di                                            ; $46F6: $F3
    db $FD                                        ; $46F7: $FD
    nop                                           ; $46F8: $00
    ld [$8000], sp                                ; $46F9: $08 $00 $80
    ld e, h                                       ; $46FC: $5C
    ld [de], a                                    ; $46FD: $12
    inc c                                         ; $46FE: $0C
    ld b, a                                       ; $46FF: $47
    db $F4                                        ; $4700: $F4
    push af                                       ; $4701: $F5
    nop                                           ; $4702: $00
    ld [$8005], sp                                ; $4703: $08 $05 $80
    ld e, h                                       ; $4706: $5C
    ld [de], a                                    ; $4707: $12
    inc c                                         ; $4708: $0C
    ld b, a                                       ; $4709: $47
    ldh a, [c]                                    ; $470A: $F2
    nop                                           ; $470B: $00
    inc b                                         ; $470C: $04
    jr nz, jr_00A_4712                            ; $470D: $20 $03

    nop                                           ; $470F: $00
    jr nz, jr_00A_471D                            ; $4710: $20 $0B

jr_00A_4712:
    ld [bc], a                                    ; $4712: $02
    jr nz, jr_00A_4728                            ; $4713: $20 $13

    inc b                                         ; $4715: $04
    db $10                                        ; $4716: $10
    rlca                                          ; $4717: $07
    ld b, $00                                     ; $4718: $06 $00
    nop                                           ; $471A: $00
    ld e, l                                       ; $471B: $5D
    ld [de], a                                    ; $471C: $12

jr_00A_471D:
    add hl, hl                                    ; $471D: $29
    ld b, a                                       ; $471E: $47
    or $00                                        ; $471F: $F6 $00
    nop                                           ; $4721: $00
    nop                                           ; $4722: $00
    ld e, l                                       ; $4723: $5D
    ld [de], a                                    ; $4724: $12
    add hl, hl                                    ; $4725: $29
    ld b, a                                       ; $4726: $47
    ldh a, [c]                                    ; $4727: $F2

jr_00A_4728:
    nop                                           ; $4728: $00
    inc bc                                        ; $4729: $03
    inc sp                                        ; $472A: $33
    cp $00                                        ; $472B: $FE $00
    jr nc, jr_00A_4735                            ; $472D: $30 $06

    ld [bc], a                                    ; $472F: $02
    jr nc, @+$10                                  ; $4730: $30 $0E

    inc b                                         ; $4732: $04
    nop                                           ; $4733: $00
    rlca                                          ; $4734: $07

jr_00A_4735:
    ld e, a                                       ; $4735: $5F
    ld h, b                                       ; $4736: $60
    ld e, l                                       ; $4737: $5D
    ld [de], a                                    ; $4738: $12
    ld b, a                                       ; $4739: $47
    ld b, a                                       ; $473A: $47
    ld hl, sp+$00                                 ; $473B: $F8 $00
    nop                                           ; $473D: $00
    ld [$6060], sp                                ; $473E: $08 $60 $60
    ld e, l                                       ; $4741: $5D
    ld [de], a                                    ; $4742: $12
    ld b, a                                       ; $4743: $47
    ld b, a                                       ; $4744: $47
    ld hl, sp-$0D                                 ; $4745: $F8 $F3
    add hl, bc                                    ; $4747: $09
    inc [hl]                                      ; $4748: $34
    or $00                                        ; $4749: $F6 $00
    inc h                                         ; $474B: $24
    or $02                                        ; $474C: $F6 $02

jr_00A_474E:
    jr nz, jr_00A_474E                            ; $474E: $20 $FE

    inc b                                         ; $4750: $04
    dec [hl]                                      ; $4751: $35
    xor $06                                       ; $4752: $EE $06
    dec h                                         ; $4754: $25
    xor $08                                       ; $4755: $EE $08
    ld sp, $0AE6                                  ; $4757: $31 $E6 $0A
    inc d                                         ; $475A: $14
    ld b, $0C                                     ; $475B: $06 $0C
    inc d                                         ; $475D: $14
    or $0E                                        ; $475E: $F6 $0E
    ld b, c                                       ; $4760: $41
    and $10                                       ; $4761: $E6 $10
    nop                                           ; $4763: $00
    add b                                         ; $4764: $80
    ld e, [hl]                                    ; $4765: $5E
    ld [de], a                                    ; $4766: $12
    ld [hl], e                                    ; $4767: $73
    ld b, a                                       ; $4768: $47
    ld hl, sp+$00                                 ; $4769: $F8 $00
    nop                                           ; $476B: $00
    add b                                         ; $476C: $80
    ld e, [hl]                                    ; $476D: $5E
    ld [de], a                                    ; $476E: $12
    ld [hl], e                                    ; $476F: $73
    ld b, a                                       ; $4770: $47
    push af                                       ; $4771: $F5
    nop                                           ; $4772: $00
    inc b                                         ; $4773: $04

jr_00A_4774:
    jr nc, jr_00A_4774                            ; $4774: $30 $FE

    nop                                           ; $4776: $00
    jr nc, @+$08                                  ; $4777: $30 $06

    ld [bc], a                                    ; $4779: $02
    scf                                           ; $477A: $37
    ld c, $04                                     ; $477B: $0E $04
    ld b, b                                       ; $477D: $40
    cp $06                                        ; $477E: $FE $06
    nop                                           ; $4780: $00
    rlca                                          ; $4781: $07
    nop                                           ; $4782: $00
    nop                                           ; $4783: $00
    ld e, a                                       ; $4784: $5F
    ld [de], a                                    ; $4785: $12
    xor b                                         ; $4786: $A8
    ld b, a                                       ; $4787: $47
    ld hl, sp+$00                                 ; $4788: $F8 $00
    nop                                           ; $478A: $00
    rlca                                          ; $478B: $07
    dec b                                         ; $478C: $05
    nop                                           ; $478D: $00
    ld e, a                                       ; $478E: $5F
    ld [de], a                                    ; $478F: $12
    xor b                                         ; $4790: $A8
    ld b, a                                       ; $4791: $47
    push af                                       ; $4792: $F5
    nop                                           ; $4793: $00
    nop                                           ; $4794: $00
    ld [$0060], sp                                ; $4795: $08 $60 $00
    ld e, a                                       ; $4798: $5F
    ld [de], a                                    ; $4799: $12
    xor b                                         ; $479A: $A8
    ld b, a                                       ; $479B: $47

jr_00A_479C:
    ld hl, sp-$0D                                 ; $479C: $F8 $F3
    ld h, b                                       ; $479E: $60
    ld [$0005], sp                                ; $479F: $08 $05 $00
    ld e, a                                       ; $47A2: $5F
    ld [de], a                                    ; $47A3: $12
    xor b                                         ; $47A4: $A8
    ld b, a                                       ; $47A5: $47
    db $FD                                        ; $47A6: $FD
    add hl, bc                                    ; $47A7: $09
    inc b                                         ; $47A8: $04
    ld sp, $00F6                                  ; $47A9: $31 $F6 $00
    jr c, jr_00A_479C                             ; $47AC: $38 $EE

    ld [bc], a                                    ; $47AE: $02
    ld hl, $04F6                                  ; $47AF: $21 $F6 $04

jr_00A_47B2:
    jr nz, jr_00A_47B2                            ; $47B2: $20 $FE

    ld b, $00                                     ; $47B4: $06 $00
    add b                                         ; $47B6: $80
    ld e, a                                       ; $47B7: $5F
    ld [de], a                                    ; $47B8: $12
    call $FA47                                    ; $47B9: $CD $47 $FA
    ld c, $00                                     ; $47BC: $0E $00
    add b                                         ; $47BE: $80
    ld e, a                                       ; $47BF: $5F
    ld [de], a                                    ; $47C0: $12
    call Call_000_0447                            ; $47C1: $CD $47 $04
    dec d                                         ; $47C4: $15
    nop                                           ; $47C5: $00
    add b                                         ; $47C6: $80
    ld e, a                                       ; $47C7: $5F
    ld [de], a                                    ; $47C8: $12

jr_00A_47C9:
    call Call_000_0447                            ; $47C9: $CD $47 $04
    dec c                                         ; $47CC: $0D
    dec b                                         ; $47CD: $05
    inc e                                         ; $47CE: $1C
    xor $00                                       ; $47CF: $EE $00
    jr jr_00A_47C9                                ; $47D1: $18 $F6

    ld [bc], a                                    ; $47D3: $02

jr_00A_47D4:
    jr jr_00A_47D4                                ; $47D4: $18 $FE

    inc b                                         ; $47D6: $04
    dec h                                         ; $47D7: $25
    ld [bc], a                                    ; $47D8: $02
    ld b, $28                                     ; $47D9: $06 $28
    or $08                                        ; $47DB: $F6 $08
    nop                                           ; $47DD: $00
    jr nz, @+$62                                  ; $47DE: $20 $60

    ld [de], a                                    ; $47E0: $12
    push af                                       ; $47E1: $F5
    ld b, a                                       ; $47E2: $47
    ld a, [$000E]                                 ; $47E3: $FA $0E $00
    jr nz, jr_00A_4848                            ; $47E6: $20 $60

    ld [de], a                                    ; $47E8: $12
    push af                                       ; $47E9: $F5
    ld b, a                                       ; $47EA: $47
    nop                                           ; $47EB: $00
    dec bc                                        ; $47EC: $0B
    ld h, b                                       ; $47ED: $60

jr_00A_47EE:
    jr nz, jr_00A_4850                            ; $47EE: $20 $60

    ld [de], a                                    ; $47F0: $12
    push af                                       ; $47F1: $F5
    ld b, a                                       ; $47F2: $47
    push af                                       ; $47F3: $F5
    pop af                                        ; $47F4: $F1
    dec b                                         ; $47F5: $05
    jr jr_00A_47EE                                ; $47F6: $18 $F6

    nop                                           ; $47F8: $00

jr_00A_47F9:
    jr jr_00A_47F9                                ; $47F9: $18 $FE

    ld [bc], a                                    ; $47FB: $02
    ld [hl+], a                                   ; $47FC: $22
    dec b                                         ; $47FD: $05
    inc b                                         ; $47FE: $04
    jr z, @-$08                                   ; $47FF: $28 $F6

    ld b, $26                                     ; $4801: $06 $26
    dec c                                         ; $4803: $0D
    ld [$0800], sp                                ; $4804: $08 $00 $08
    ld h, c                                       ; $4807: $61
    ret nz                                        ; $4808: $C0

    ld h, b                                       ; $4809: $60
    ld [de], a                                    ; $480A: $12
    rrca                                          ; $480B: $0F
    ld c, b                                       ; $480C: $48
    nop                                           ; $480D: $00
    ld c, $09                                     ; $480E: $0E $09
    jr nz, @-$19                                  ; $4810: $20 $E5

    nop                                           ; $4812: $00
    jr nz, @-$11                                  ; $4813: $20 $ED

    ld [bc], a                                    ; $4815: $02
    add hl, de                                    ; $4816: $19
    push af                                       ; $4817: $F5
    inc b                                         ; $4818: $04
    add hl, de                                    ; $4819: $19
    db $FD                                        ; $481A: $FD
    ld b, $19                                     ; $481B: $06 $19
    dec b                                         ; $481D: $05
    ld [$0D19], sp                                ; $481E: $08 $19 $0D
    ld a, [bc]                                    ; $4821: $0A
    add hl, bc                                    ; $4822: $09
    ld a, [$090C]                                 ; $4823: $FA $0C $09
    ld [bc], a                                    ; $4826: $02
    ld c, $09                                     ; $4827: $0E $09
    ld a, [bc]                                    ; $4829: $0A
    stop                                          ; $482A: $10 $00
    ld bc, $E005                                  ; $482C: $01 $05 $E0
    ld h, c                                       ; $482F: $61
    ld [de], a                                    ; $4830: $12
    dec [hl]                                      ; $4831: $35
    ld c, b                                       ; $4832: $48
    nop                                           ; $4833: $00
    rst RST_38                                    ; $4834: $FF
    add hl, bc                                    ; $4835: $09
    daa                                           ; $4836: $27
    ldh [c], a                                    ; $4837: $E2
    nop                                           ; $4838: $00
    dec h                                         ; $4839: $25
    ld [$2102], a                                 ; $483A: $EA $02 $21
    ldh a, [c]                                    ; $483D: $F2
    inc b                                         ; $483E: $04
    ld hl, $06FA                                  ; $483F: $21 $FA $06
    dec d                                         ; $4842: $15
    ld [$3108], a                                 ; $4843: $EA $08 $31
    ldh a, [c]                                    ; $4846: $F2
    ld a, [bc]                                    ; $4847: $0A

jr_00A_4848:
    ld sp, $0CFA                                  ; $4848: $31 $FA $0C
    dec [hl]                                      ; $484B: $35
    ld [bc], a                                    ; $484C: $02
    ld c, $39                                     ; $484D: $0E $39
    ld a, [bc]                                    ; $484F: $0A

jr_00A_4850:
    stop                                          ; $4850: $10 $00
    ld bc, $0000                                  ; $4852: $01 $00 $00
    ld h, e                                       ; $4855: $63
    ld [de], a                                    ; $4856: $12
    ld h, l                                       ; $4857: $65
    ld c, b                                       ; $4858: $48
    db $FC                                        ; $4859: $FC
    nop                                           ; $485A: $00
    nop                                           ; $485B: $00
    ld bc, $0064                                  ; $485C: $01 $64 $00
    ld h, e                                       ; $485F: $63
    ld [de], a                                    ; $4860: $12

jr_00A_4861:
    ld h, l                                       ; $4861: $65
    ld c, b                                       ; $4862: $48
    db $FC                                        ; $4863: $FC
    nop                                           ; $4864: $00
    dec bc                                        ; $4865: $0B
    daa                                           ; $4866: $27
    xor $00                                       ; $4867: $EE $00
    jr nz, jr_00A_4861                            ; $4869: $20 $F6

    ld [bc], a                                    ; $486B: $02
    dec e                                         ; $486C: $1D
    cp $04                                        ; $486D: $FE $04
    jr jr_00A_4877                                ; $486F: $18 $06

    ld b, $18                                     ; $4871: $06 $18
    ld c, $08                                     ; $4873: $0E $08
    jr z, @+$08                                   ; $4875: $28 $06

jr_00A_4877:
    ld a, [bc]                                    ; $4877: $0A
    dec hl                                        ; $4878: $2B
    ld c, $0C                                     ; $4879: $0E $0C
    scf                                           ; $487B: $37
    xor $0E                                       ; $487C: $EE $0E
    jr nc, @-$08                                  ; $487E: $30 $F6

    db $10                                        ; $4880: $10
    dec l                                         ; $4881: $2D
    cp $12                                        ; $4882: $FE $12
    jr c, jr_00A_488C                             ; $4884: $38 $06

    inc d                                         ; $4886: $14
    nop                                           ; $4887: $00
    ld bc, $6000                                  ; $4888: $01 $00 $60
    ld h, h                                       ; $488B: $64

jr_00A_488C:
    ld [de], a                                    ; $488C: $12
    sbc e                                         ; $488D: $9B
    ld c, b                                       ; $488E: $48
    db $FC                                        ; $488F: $FC
    nop                                           ; $4890: $00
    nop                                           ; $4891: $00
    ld bc, $6064                                  ; $4892: $01 $64 $60
    ld h, h                                       ; $4895: $64
    ld [de], a                                    ; $4896: $12
    sbc e                                         ; $4897: $9B
    ld c, b                                       ; $4898: $48

jr_00A_4899:
    db $FC                                        ; $4899: $FC
    nop                                           ; $489A: $00
    inc c                                         ; $489B: $0C
    dec h                                         ; $489C: $25
    ldh a, [rP1]                                  ; $489D: $F0 $00
    jr nz, jr_00A_4899                            ; $489F: $20 $F8

    ld [bc], a                                    ; $48A1: $02
    ld a, [de]                                    ; $48A2: $1A
    nop                                           ; $48A3: $00
    inc b                                         ; $48A4: $04

jr_00A_48A5:
    jr jr_00A_48AF                                ; $48A5: $18 $08

    ld b, $35                                     ; $48A7: $06 $35
    ldh a, [$FF08]                                ; $48A9: $F0 $08
    jr nc, jr_00A_48A5                            ; $48AB: $30 $F8

    ld a, [bc]                                    ; $48AD: $0A
    ld a, [hl+]                                   ; $48AE: $2A

jr_00A_48AF:
    nop                                           ; $48AF: $00
    inc c                                         ; $48B0: $0C
    jr z, jr_00A_48BB                             ; $48B1: $28 $08

    ld c, $28                                     ; $48B3: $0E $28
    db $10                                        ; $48B5: $10
    db $10                                        ; $48B6: $10
    jr c, jr_00A_48C1                             ; $48B7: $38 $08

    ld [de], a                                    ; $48B9: $12
    ld a, [hl-]                                   ; $48BA: $3A

jr_00A_48BB:
    nop                                           ; $48BB: $00
    inc d                                         ; $48BC: $14
    ld d, $10                                     ; $48BD: $16 $10
    ld d, $00                                     ; $48BF: $16 $00

jr_00A_48C1:
    ld bc, $E000                                  ; $48C1: $01 $00 $E0
    ld h, l                                       ; $48C4: $65
    ld [de], a                                    ; $48C5: $12
    jp z, LCDCInterrupt                           ; $48C6: $CA $48 $00

    nop                                           ; $48C9: $00
    ld a, [bc]                                    ; $48CA: $0A
    inc h                                         ; $48CB: $24
    db $ED                                        ; $48CC: $ED
    nop                                           ; $48CD: $00
    rra                                           ; $48CE: $1F
    push af                                       ; $48CF: $F5
    ld [bc], a                                    ; $48D0: $02
    rra                                           ; $48D1: $1F
    db $FD                                        ; $48D2: $FD
    inc b                                         ; $48D3: $04
    jr nz, @+$07                                  ; $48D4: $20 $05

    ld b, $24                                     ; $48D6: $06 $24
    dec c                                         ; $48D8: $0D
    ld [$ED34], sp                                ; $48D9: $08 $34 $ED
    ld a, [bc]                                    ; $48DC: $0A
    cpl                                           ; $48DD: $2F
    push af                                       ; $48DE: $F5
    inc c                                         ; $48DF: $0C
    cpl                                           ; $48E0: $2F
    db $FD                                        ; $48E1: $FD
    ld c, $30                                     ; $48E2: $0E $30
    dec b                                         ; $48E4: $05
    db $10                                        ; $48E5: $10
    ccf                                           ; $48E6: $3F
    db $FD                                        ; $48E7: $FD
    ld [de], a                                    ; $48E8: $12
    nop                                           ; $48E9: $00
    ld bc, $2000                                  ; $48EA: $01 $00 $20
    ld h, a                                       ; $48ED: $67
    ld [de], a                                    ; $48EE: $12

jr_00A_48EF:
    di                                            ; $48EF: $F3
    ld c, b                                       ; $48F0: $48
    nop                                           ; $48F1: $00
    nop                                           ; $48F2: $00
    rlca                                          ; $48F3: $07

jr_00A_48F4:
    inc h                                         ; $48F4: $24
    xor $00                                       ; $48F5: $EE $00
    jr nz, jr_00A_48EF                            ; $48F7: $20 $F6

    ld [bc], a                                    ; $48F9: $02

jr_00A_48FA:
    jr nz, jr_00A_48FA                            ; $48FA: $20 $FE

    inc b                                         ; $48FC: $04
    inc h                                         ; $48FD: $24
    ld b, $06                                     ; $48FE: $06 $06
    jr nc, jr_00A_48F4                            ; $4900: $30 $F2

    ld [$FA30], sp                                ; $4902: $08 $30 $FA
    ld a, [bc]                                    ; $4905: $0A
    jr nc, jr_00A_490A                            ; $4906: $30 $02

    inc c                                         ; $4908: $0C
    nop                                           ; $4909: $00

jr_00A_490A:
    ld bc, $0000                                  ; $490A: $01 $00 $00
    ld l, b                                       ; $490D: $68
    ld [de], a                                    ; $490E: $12
    inc de                                        ; $490F: $13
    ld c, c                                       ; $4910: $49
    nop                                           ; $4911: $00
    nop                                           ; $4912: $00
    ld a, [bc]                                    ; $4913: $0A
    ld e, $F6                                     ; $4914: $1E $F6
    nop                                           ; $4916: $00
    dec de                                        ; $4917: $1B
    cp $02                                        ; $4918: $FE $02
    ld l, $F6                                     ; $491A: $2E $F6
    inc b                                         ; $491C: $04
    dec hl                                        ; $491D: $2B
    cp $06                                        ; $491E: $FE $06
    dec bc                                        ; $4920: $0B
    cp $08                                        ; $4921: $FE $08
    add hl, de                                    ; $4923: $19
    ld b, $0A                                     ; $4924: $06 $0A
    add hl, bc                                    ; $4926: $09
    ld b, $0C                                     ; $4927: $06 $0C
    ld [hl-], a                                   ; $4929: $32
    ld b, $0E                                     ; $492A: $06 $0E
    scf                                           ; $492C: $37
    xor $10                                       ; $492D: $EE $10
    ld [hl+], a                                   ; $492F: $22
    xor $12                                       ; $4930: $EE $12
    nop                                           ; $4932: $00
    ld bc, $0000                                  ; $4933: $01 $00 $00
    ld l, h                                       ; $4936: $6C
    ld [de], a                                    ; $4937: $12
    inc a                                         ; $4938: $3C
    ld c, c                                       ; $4939: $49
    nop                                           ; $493A: $00
    nop                                           ; $493B: $00
    ld [$EF1E], sp                                ; $493C: $08 $1E $EF
    nop                                           ; $493F: $00
    ld e, $F7                                     ; $4940: $1E $F7
    ld [bc], a                                    ; $4942: $02
    ld e, $FF                                     ; $4943: $1E $FF
    inc b                                         ; $4945: $04
    ld e, $07                                     ; $4946: $1E $07
    ld b, $2E                                     ; $4948: $06 $2E
    xor $08                                       ; $494A: $EE $08
    ld l, $F6                                     ; $494C: $2E $F6
    ld a, [bc]                                    ; $494E: $0A
    ld l, $FE                                     ; $494F: $2E $FE
    inc c                                         ; $4951: $0C

jr_00A_4952:
    ld l, $06                                     ; $4952: $2E $06
    ld c, $00                                     ; $4954: $0E $00
    ld bc, $0000                                  ; $4956: $01 $00 $00
    ld l, l                                       ; $4959: $6D
    ld [de], a                                    ; $495A: $12

jr_00A_495B:
    ld e, a                                       ; $495B: $5F
    ld c, c                                       ; $495C: $49

jr_00A_495D:
    ld [bc], a                                    ; $495D: $02
    db $FC                                        ; $495E: $FC
    add hl, bc                                    ; $495F: $09
    jr nz, jr_00A_4952                            ; $4960: $20 $F0

    nop                                           ; $4962: $00
    jr nz, jr_00A_495D                            ; $4963: $20 $F8

    ld [bc], a                                    ; $4965: $02
    jr nz, jr_00A_4968                            ; $4966: $20 $00

jr_00A_4968:
    inc b                                         ; $4968: $04
    jr nc, jr_00A_495B                            ; $4969: $30 $F0

    ld b, $30                                     ; $496B: $06 $30
    ld hl, sp+$08                                 ; $496D: $F8 $08
    jr nc, jr_00A_4971                            ; $496F: $30 $00

jr_00A_4971:
    ld a, [bc]                                    ; $4971: $0A
    jr z, jr_00A_497C                             ; $4972: $28 $08

    inc c                                         ; $4974: $0C
    ld b, b                                       ; $4975: $40
    rst RST_30                                    ; $4976: $F7
    ld c, $40                                     ; $4977: $0E $40
    ld [bc], a                                    ; $4979: $02
    stop                                          ; $497A: $10 $00

jr_00A_497C:
    ld bc, $2000                                  ; $497C: $01 $00 $20

jr_00A_497F:
    ld l, [hl]                                    ; $497F: $6E
    ld [de], a                                    ; $4980: $12
    add l                                         ; $4981: $85
    ld c, c                                       ; $4982: $49
    ld [bc], a                                    ; $4983: $02
    db $FC                                        ; $4984: $FC
    ld [$F420], sp                                ; $4985: $08 $20 $F4
    nop                                           ; $4988: $00
    jr nz, @-$02                                  ; $4989: $20 $FC

    ld [bc], a                                    ; $498B: $02
    jr z, @+$06                                   ; $498C: $28 $04

    inc b                                         ; $498E: $04
    jr nc, jr_00A_497F                            ; $498F: $30 $EE

    ld b, $30                                     ; $4991: $06 $30
    or $08                                        ; $4993: $F6 $08

jr_00A_4995:
    jr nc, jr_00A_4995                            ; $4995: $30 $FE

    ld a, [bc]                                    ; $4997: $0A
    ld b, b                                       ; $4998: $40
    db $F4                                        ; $4999: $F4
    inc c                                         ; $499A: $0C
    ld b, b                                       ; $499B: $40
    cp $0E                                        ; $499C: $FE $0E
    nop                                           ; $499E: $00
    ld bc, $2000                                  ; $499F: $01 $00 $20
    ld l, a                                       ; $49A2: $6F
    ld [de], a                                    ; $49A3: $12
    cp h                                          ; $49A4: $BC
    ld c, c                                       ; $49A5: $49
    ld bc, $0000                                  ; $49A6: $01 $00 $00
    ld bc, $2005                                  ; $49A9: $01 $05 $20
    ld l, a                                       ; $49AC: $6F
    ld [de], a                                    ; $49AD: $12
    cp h                                          ; $49AE: $BC
    ld c, c                                       ; $49AF: $49
    inc bc                                        ; $49B0: $03
    nop                                           ; $49B1: $00
    ld h, b                                       ; $49B2: $60
    ld bc, $2005                                  ; $49B3: $01 $05 $20
    ld l, a                                       ; $49B6: $6F
    ld [de], a                                    ; $49B7: $12
    cp h                                          ; $49B8: $BC
    ld c, c                                       ; $49B9: $49
    ei                                            ; $49BA: $FB
    ldh a, [c]                                    ; $49BB: $F2
    add hl, bc                                    ; $49BC: $09
    ld a, [de]                                    ; $49BD: $1A
    pop af                                        ; $49BE: $F1
    nop                                           ; $49BF: $00
    ld a, [de]                                    ; $49C0: $1A
    ld sp, hl                                     ; $49C1: $F9
    ld [bc], a                                    ; $49C2: $02
    ld a, [de]                                    ; $49C3: $1A
    ld bc, $2A04                                  ; $49C4: $01 $04 $2A
    rst RST_28                                    ; $49C7: $EF
    ld b, $2A                                     ; $49C8: $06 $2A
    rst RST_30                                    ; $49CA: $F7
    ld [$FF2A], sp                                ; $49CB: $08 $2A $FF
    ld a, [bc]                                    ; $49CE: $0A
    ld a, [hl-]                                   ; $49CF: $3A
    xor $0C                                       ; $49D0: $EE $0C
    ld a, [hl-]                                   ; $49D2: $3A

jr_00A_49D3:
    or $0E                                        ; $49D3: $F6 $0E
    ld a, [hl-]                                   ; $49D5: $3A
    ld bc, $0010                                  ; $49D6: $01 $10 $00
    ld bc, $4000                                  ; $49D9: $01 $00 $40
    ld [hl], b                                    ; $49DC: $70
    ld [de], a                                    ; $49DD: $12

jr_00A_49DE:
    ldh [c], a                                    ; $49DE: $E2
    ld c, c                                       ; $49DF: $49
    nop                                           ; $49E0: $00
    nop                                           ; $49E1: $00
    dec bc                                        ; $49E2: $0B
    ld sp, $00E3                                  ; $49E3: $31 $E3 $00
    jr nc, jr_00A_49D3                            ; $49E6: $30 $EB

    ld [bc], a                                    ; $49E8: $02

jr_00A_49E9:
    jr nc, jr_00A_49DE                            ; $49E9: $30 $F3

    inc b                                         ; $49EB: $04
    jr nc, jr_00A_49E9                            ; $49EC: $30 $FB

    ld b, $30                                     ; $49EE: $06 $30
    inc bc                                        ; $49F0: $03
    ld [$0B30], sp                                ; $49F1: $08 $30 $0B
    ld a, [bc]                                    ; $49F4: $0A
    ld h, $13                                     ; $49F5: $26 $13
    inc c                                         ; $49F7: $0C
    jr nz, @-$11                                  ; $49F8: $20 $ED

    ld c, $20                                     ; $49FA: $0E $20
    push af                                       ; $49FC: $F5

jr_00A_49FD:
    db $10                                        ; $49FD: $10
    jr nz, jr_00A_49FD                            ; $49FE: $20 $FD

    ld [de], a                                    ; $4A00: $12
    jr nz, jr_00A_4A08                            ; $4A01: $20 $05

    inc d                                         ; $4A03: $14
    nop                                           ; $4A04: $00
    ld bc, $A000                                  ; $4A05: $01 $00 $A0

jr_00A_4A08:
    ld [hl], c                                    ; $4A08: $71

jr_00A_4A09:
    ld [de], a                                    ; $4A09: $12
    ld c, $4A                                     ; $4A0A: $0E $4A
    nop                                           ; $4A0C: $00
    nop                                           ; $4A0D: $00
    ld [$ED25], sp                                ; $4A0E: $08 $25 $ED
    nop                                           ; $4A11: $00
    jr nz, jr_00A_4A09                            ; $4A12: $20 $F5

jr_00A_4A14:
    ld [bc], a                                    ; $4A14: $02
    jr nz, jr_00A_4A14                            ; $4A15: $20 $FD

    inc b                                         ; $4A17: $04
    dec h                                         ; $4A18: $25
    dec b                                         ; $4A19: $05
    ld b, $35                                     ; $4A1A: $06 $35
    db $ED                                        ; $4A1C: $ED
    ld [$F530], sp                                ; $4A1D: $08 $30 $F5

jr_00A_4A20:
    ld a, [bc]                                    ; $4A20: $0A
    jr nc, jr_00A_4A20                            ; $4A21: $30 $FD

    inc c                                         ; $4A23: $0C
    dec [hl]                                      ; $4A24: $35
    dec b                                         ; $4A25: $05
    ld c, $00                                     ; $4A26: $0E $00
    ld bc, $4000                                  ; $4A28: $01 $00 $40
    ld l, c                                       ; $4A2B: $69
    ld [de], a                                    ; $4A2C: $12
    ld sp, $024A                                  ; $4A2D: $31 $4A $02
    nop                                           ; $4A30: $00
    ld [$EF1E], sp                                ; $4A31: $08 $1E $EF
    nop                                           ; $4A34: $00
    dec e                                         ; $4A35: $1D
    rst RST_30                                    ; $4A36: $F7
    ld [bc], a                                    ; $4A37: $02
    dec e                                         ; $4A38: $1D
    rst RST_38                                    ; $4A39: $FF
    inc b                                         ; $4A3A: $04
    inc e                                         ; $4A3B: $1C
    rlca                                          ; $4A3C: $07
    ld b, $2D                                     ; $4A3D: $06 $2D
    rst RST_30                                    ; $4A3F: $F7
    ld [$FF2D], sp                                ; $4A40: $08 $2D $FF
    ld a, [bc]                                    ; $4A43: $0A
    inc sp                                        ; $4A44: $33
    rlca                                          ; $4A45: $07
    inc c                                         ; $4A46: $0C
    dec [hl]                                      ; $4A47: $35
    ldh a, [$FF0E]                                ; $4A48: $F0 $0E
    nop                                           ; $4A4A: $00
    ld bc, $4000                                  ; $4A4B: $01 $00 $40
    ld l, d                                       ; $4A4E: $6A
    ld [de], a                                    ; $4A4F: $12
    ld e, [hl]                                    ; $4A50: $5E
    ld c, d                                       ; $4A51: $4A
    inc bc                                        ; $4A52: $03
    dec b                                         ; $4A53: $05
    jr nz, jr_00A_4A57                            ; $4A54: $20 $01

    nop                                           ; $4A56: $00

jr_00A_4A57:
    ld b, b                                       ; $4A57: $40
    ld l, d                                       ; $4A58: $6A
    ld [de], a                                    ; $4A59: $12
    ld e, [hl]                                    ; $4A5A: $5E
    ld c, d                                       ; $4A5B: $4A
    db $FD                                        ; $4A5C: $FD
    dec b                                         ; $4A5D: $05
    rlca                                          ; $4A5E: $07
    ld [$00EA], sp                                ; $4A5F: $08 $EA $00
    ld [$02F2], sp                                ; $4A62: $08 $F2 $02
    ld [$04FA], sp                                ; $4A65: $08 $FA $04
    ld [$0602], sp                                ; $4A68: $08 $02 $06
    ld [$080A], sp                                ; $4A6B: $08 $0A $08
    ld [$0A12], sp                                ; $4A6E: $08 $12 $0A
    jr @-$10                                      ; $4A71: $18 $EE

    inc c                                         ; $4A73: $0C
    nop                                           ; $4A74: $00
    jr nz, @+$6D                                  ; $4A75: $20 $6B

    ld [de], a                                    ; $4A77: $12
    ld a, h                                       ; $4A78: $7C
    ld c, d                                       ; $4A79: $4A
    ld [bc], a                                    ; $4A7A: $02
    nop                                           ; $4A7B: $00
    rlca                                          ; $4A7C: $07
    rra                                           ; $4A7D: $1F
    db $F4                                        ; $4A7E: $F4
    nop                                           ; $4A7F: $00
    dec e                                         ; $4A80: $1D
    db $FC                                        ; $4A81: $FC
    ld [bc], a                                    ; $4A82: $02
    dec e                                         ; $4A83: $1D
    inc b                                         ; $4A84: $04
    inc b                                         ; $4A85: $04
    inc [hl]                                      ; $4A86: $34
    pop af                                        ; $4A87: $F1
    ld b, $2D                                     ; $4A88: $06 $2D
    ld sp, hl                                     ; $4A8A: $F9
    ld [$012D], sp                                ; $4A8B: $08 $2D $01
    ld a, [bc]                                    ; $4A8E: $0A
    dec [hl]                                      ; $4A8F: $35
    rlca                                          ; $4A90: $07
    inc c                                         ; $4A91: $0C
    nop                                           ; $4A92: $00
    ld bc, $C000                                  ; $4A93: $01 $00 $C0
    ld c, h                                       ; $4A96: $4C
    ld [de], a                                    ; $4A97: $12
    sbc h                                         ; $4A98: $9C
    ld c, d                                       ; $4A99: $4A
    nop                                           ; $4A9A: $00
    nop                                           ; $4A9B: $00
    ld [$EC1E], sp                                ; $4A9C: $08 $1E $EC
    nop                                           ; $4A9F: $00
    ld e, $F4                                     ; $4AA0: $1E $F4
    ld [bc], a                                    ; $4AA2: $02
    rra                                           ; $4AA3: $1F
    db $FC                                        ; $4AA4: $FC
    inc b                                         ; $4AA5: $04
    jr nz, @+$06                                  ; $4AA6: $20 $04

    ld b, $1D                                     ; $4AA8: $06 $1D
    inc c                                         ; $4AAA: $0C
    ld [$F430], sp                                ; $4AAB: $08 $30 $F4
    ld a, [bc]                                    ; $4AAE: $0A
    cpl                                           ; $4AAF: $2F
    db $FC                                        ; $4AB0: $FC
    inc c                                         ; $4AB1: $0C
    ld sp, $0E04                                  ; $4AB2: $31 $04 $0E
    nop                                           ; $4AB5: $00
    ld bc, $C000                                  ; $4AB6: $01 $00 $C0
    ld c, l                                       ; $4AB9: $4D
    ld [de], a                                    ; $4ABA: $12
    db $DD                                        ; $4ABB: $DD
    ld c, d                                       ; $4ABC: $4A
    nop                                           ; $4ABD: $00
    nop                                           ; $4ABE: $00
    jr nz, jr_00A_4AC2                            ; $4ABF: $20 $01

    nop                                           ; $4AC1: $00

jr_00A_4AC2:
    ret nz                                        ; $4AC2: $C0

    ld c, l                                       ; $4AC3: $4D
    ld [de], a                                    ; $4AC4: $12
    db $DD                                        ; $4AC5: $DD
    ld c, d                                       ; $4AC6: $4A
    nop                                           ; $4AC7: $00
    nop                                           ; $4AC8: $00
    ld b, b                                       ; $4AC9: $40
    ld bc, $C000                                  ; $4ACA: $01 $00 $C0
    ld c, l                                       ; $4ACD: $4D
    ld [de], a                                    ; $4ACE: $12
    db $DD                                        ; $4ACF: $DD
    ld c, d                                       ; $4AD0: $4A
    nop                                           ; $4AD1: $00
    inc b                                         ; $4AD2: $04
    ld h, b                                       ; $4AD3: $60
    ld bc, $C000                                  ; $4AD4: $01 $00 $C0
    ld c, l                                       ; $4AD7: $4D
    ld [de], a                                    ; $4AD8: $12

jr_00A_4AD9:
    db $DD                                        ; $4AD9: $DD
    ld c, d                                       ; $4ADA: $4A
    nop                                           ; $4ADB: $00
    inc b                                         ; $4ADC: $04
    rlca                                          ; $4ADD: $07
    inc h                                         ; $4ADE: $24
    xor $00                                       ; $4ADF: $EE $00
    jr nz, jr_00A_4AD9                            ; $4AE1: $20 $F6

    ld [bc], a                                    ; $4AE3: $02

jr_00A_4AE4:
    jr nz, jr_00A_4AE4                            ; $4AE4: $20 $FE

    inc b                                         ; $4AE6: $04
    inc hl                                        ; $4AE7: $23
    ld b, $06                                     ; $4AE8: $06 $06
    jr nc, @-$0A                                  ; $4AEA: $30 $F4

    ld [$FC30], sp                                ; $4AEC: $08 $30 $FC

jr_00A_4AEF:
    ld a, [bc]                                    ; $4AEF: $0A
    jr nc, jr_00A_4AF6                            ; $4AF0: $30 $04

    inc c                                         ; $4AF2: $0C
    nop                                           ; $4AF3: $00
    rlca                                          ; $4AF4: $07
    nop                                           ; $4AF5: $00

jr_00A_4AF6:
    and b                                         ; $4AF6: $A0
    ld c, [hl]                                    ; $4AF7: $4E
    ld [de], a                                    ; $4AF8: $12
    db $FD                                        ; $4AF9: $FD
    ld c, d                                       ; $4AFA: $4A
    ld [bc], a                                    ; $4AFB: $02
    nop                                           ; $4AFC: $00
    rlca                                          ; $4AFD: $07
    jr z, jr_00A_4AEF                             ; $4AFE: $28 $EF

    nop                                           ; $4B00: $00
    inc h                                         ; $4B01: $24
    rst RST_30                                    ; $4B02: $F7
    ld [bc], a                                    ; $4B03: $02
    inc h                                         ; $4B04: $24
    rst RST_38                                    ; $4B05: $FF
    inc b                                         ; $4B06: $04
    jr z, jr_00A_4B10                             ; $4B07: $28 $07

    ld b, $34                                     ; $4B09: $06 $34
    db $F4                                        ; $4B0B: $F4
    ld [$FC34], sp                                ; $4B0C: $08 $34 $FC
    ld a, [bc]                                    ; $4B0F: $0A

jr_00A_4B10:
    inc [hl]                                      ; $4B10: $34
    inc b                                         ; $4B11: $04
    inc c                                         ; $4B12: $0C
    nop                                           ; $4B13: $00
    inc e                                         ; $4B14: $1C
    nop                                           ; $4B15: $00
    add b                                         ; $4B16: $80
    ld c, a                                       ; $4B17: $4F
    ld [de], a                                    ; $4B18: $12
    daa                                           ; $4B19: $27
    ld c, e                                       ; $4B1A: $4B
    ld bc, $6015                                  ; $4B1B: $01 $15 $60
    inc e                                         ; $4B1E: $1C
    nop                                           ; $4B1F: $00
    add b                                         ; $4B20: $80
    ld c, a                                       ; $4B21: $4F
    ld [de], a                                    ; $4B22: $12
    daa                                           ; $4B23: $27
    ld c, e                                       ; $4B24: $4B
    nop                                           ; $4B25: $00
    nop                                           ; $4B26: $00
    dec bc                                        ; $4B27: $0B
    dec de                                        ; $4B28: $1B
    inc c                                         ; $4B29: $0C
    nop                                           ; $4B2A: $00
    inc de                                        ; $4B2B: $13
    inc b                                         ; $4B2C: $04
    ld [bc], a                                    ; $4B2D: $02
    inc hl                                        ; $4B2E: $23
    inc b                                         ; $4B2F: $04
    inc b                                         ; $4B30: $04
    inc de                                        ; $4B31: $13
    db $FC                                        ; $4B32: $FC
    ld b, $23                                     ; $4B33: $06 $23
    db $FC                                        ; $4B35: $FC
    ld [$0203], sp                                ; $4B36: $08 $03 $02
    ld a, [bc]                                    ; $4B39: $0A
    inc de                                        ; $4B3A: $13
    db $F4                                        ; $4B3B: $F4
    inc c                                         ; $4B3C: $0C
    inc hl                                        ; $4B3D: $23
    db $F4                                        ; $4B3E: $F4
    ld c, $10                                     ; $4B3F: $0E $10
    db $EC                                        ; $4B41: $EC
    db $10                                        ; $4B42: $10
    inc h                                         ; $4B43: $24
    db $EC                                        ; $4B44: $EC
    ld [de], a                                    ; $4B45: $12
    ld [bc], a                                    ; $4B46: $02
    ld a, [bc]                                    ; $4B47: $0A
    inc d                                         ; $4B48: $14
    nop                                           ; $4B49: $00
    inc e                                         ; $4B4A: $1C
    nop                                           ; $4B4B: $00
    ldh [$FF50], a                                ; $4B4C: $E0 $50
    ld [de], a                                    ; $4B4E: $12
    ld d, e                                       ; $4B4F: $53
    ld c, e                                       ; $4B50: $4B
    rst RST_38                                    ; $4B51: $FF
    ld [bc], a                                    ; $4B52: $02
    ld [$0D2E], sp                                ; $4B53: $08 $2E $0D
    nop                                           ; $4B56: $00
    inc [hl]                                      ; $4B57: $34
    dec b                                         ; $4B58: $05
    ld [bc], a                                    ; $4B59: $02
    daa                                           ; $4B5A: $27
    db $FD                                        ; $4B5B: $FD
    inc b                                         ; $4B5C: $04
    scf                                           ; $4B5D: $37
    db $FD                                        ; $4B5E: $FD
    ld b, $30                                     ; $4B5F: $06 $30
    push af                                       ; $4B61: $F5
    ld [$F540], sp                                ; $4B62: $08 $40 $F5
    ld a, [bc]                                    ; $4B65: $0A
    scf                                           ; $4B66: $37
    db $ED                                        ; $4B67: $ED
    inc c                                         ; $4B68: $0C
    ld b, h                                       ; $4B69: $44
    dec b                                         ; $4B6A: $05
    ld c, $00                                     ; $4B6B: $0E $00
    and b                                         ; $4B6D: $A0
    ld [hl], d                                    ; $4B6E: $72
    ld [de], a                                    ; $4B6F: $12
    ld [hl], h                                    ; $4B70: $74
    ld c, e                                       ; $4B71: $4B
    ld a, [$0500]                                 ; $4B72: $FA $00 $05
    inc e                                         ; $4B75: $1C
    ld b, $00                                     ; $4B76: $06 $00
    inc l                                         ; $4B78: $2C
    ld b, $02                                     ; $4B79: $06 $02
    ld [hl+], a                                   ; $4B7B: $22
    ld c, $04                                     ; $4B7C: $0E $04
    ld [de], a                                    ; $4B7E: $12
    ld c, $06                                     ; $4B7F: $0E $06
    inc [hl]                                      ; $4B81: $34
    dec bc                                        ; $4B82: $0B
    ld [$0100], sp                                ; $4B83: $08 $00 $01
    ld h, d                                       ; $4B86: $62
    ld b, b                                       ; $4B87: $40
    ld [hl], e                                    ; $4B88: $73
    ld [de], a                                    ; $4B89: $12

jr_00A_4B8A:
    adc [hl]                                      ; $4B8A: $8E
    ld c, e                                       ; $4B8B: $4B
    ld a, [$0E00]                                 ; $4B8C: $FA $00 $0E
    dec h                                         ; $4B8F: $25
    call c, $2800                                 ; $4B90: $DC $00 $28
    db $E4                                        ; $4B93: $E4
    ld [bc], a                                    ; $4B94: $02
    add hl, hl                                    ; $4B95: $29
    db $EC                                        ; $4B96: $EC
    inc b                                         ; $4B97: $04
    ld [hl+], a                                   ; $4B98: $22
    db $F4                                        ; $4B99: $F4
    ld b, $21                                     ; $4B9A: $06 $21
    db $FC                                        ; $4B9C: $FC
    ld [$0422], sp                                ; $4B9D: $08 $22 $04
    ld a, [bc]                                    ; $4BA0: $0A
    dec h                                         ; $4BA1: $25
    inc c                                         ; $4BA2: $0C
    inc c                                         ; $4BA3: $0C
    jr jr_00A_4B8A                                ; $4BA4: $18 $E4

    ld c, $19                                     ; $4BA6: $0E $19
    db $EC                                        ; $4BA8: $EC
    db $10                                        ; $4BA9: $10
    ld [hl-], a                                   ; $4BAA: $32
    db $F4                                        ; $4BAB: $F4
    ld [de], a                                    ; $4BAC: $12
    ld sp, $14FC                                  ; $4BAD: $31 $FC $14
    ld [hl-], a                                   ; $4BB0: $32
    inc b                                         ; $4BB1: $04
    ld d, $35                                     ; $4BB2: $16 $35
    inc c                                         ; $4BB4: $0C
    jr jr_00A_4BD6                                ; $4BB5: $18 $1F

    inc d                                         ; $4BB7: $14
    ld a, [de]                                    ; $4BB8: $1A
    nop                                           ; $4BB9: $00
    ld bc, $0000                                  ; $4BBA: $01 $00 $00
    ld [hl], l                                    ; $4BBD: $75
    ld [de], a                                    ; $4BBE: $12
    jp $024B                                      ; $4BBF: $C3 $4B $02


    nop                                           ; $4BC2: $00
    ld a, [bc]                                    ; $4BC3: $0A
    rra                                           ; $4BC4: $1F
    xor $00                                       ; $4BC5: $EE $00
    ld e, $F6                                     ; $4BC7: $1E $F6
    ld [bc], a                                    ; $4BC9: $02
    ld e, $FE                                     ; $4BCA: $1E $FE
    inc b                                         ; $4BCC: $04
    rra                                           ; $4BCD: $1F
    ld b, $06                                     ; $4BCE: $06 $06
    inc e                                         ; $4BD0: $1C
    ld c, $08                                     ; $4BD1: $0E $08
    cpl                                           ; $4BD3: $2F
    xor $0A                                       ; $4BD4: $EE $0A

jr_00A_4BD6:
    ld l, $F6                                     ; $4BD6: $2E $F6
    inc c                                         ; $4BD8: $0C
    ld l, $FE                                     ; $4BD9: $2E $FE
    ld c, $37                                     ; $4BDB: $0E $37
    inc b                                         ; $4BDD: $04
    db $10                                        ; $4BDE: $10
    ld a, $F6                                     ; $4BDF: $3E $F6
    ld [de], a                                    ; $4BE1: $12

jr_00A_4BE2:
    nop                                           ; $4BE2: $00
    ld bc, $4000                                  ; $4BE3: $01 $00 $40
    halt                                          ; $4BE6: $76
    ld [de], a                                    ; $4BE7: $12
    db $EC                                        ; $4BE8: $EC
    ld c, e                                       ; $4BE9: $4B
    ld [bc], a                                    ; $4BEA: $02
    nop                                           ; $4BEB: $00
    ld a, [bc]                                    ; $4BEC: $0A
    jr jr_00A_4BE2                                ; $4BED: $18 $F3

    nop                                           ; $4BEF: $00
    ld a, [de]                                    ; $4BF0: $1A
    ei                                            ; $4BF1: $FB
    ld [bc], a                                    ; $4BF2: $02
    dec de                                        ; $4BF3: $1B
    inc bc                                        ; $4BF4: $03
    inc b                                         ; $4BF5: $04
    dec de                                        ; $4BF6: $1B
    dec bc                                        ; $4BF7: $0B
    ld b, $28                                     ; $4BF8: $06 $28
    di                                            ; $4BFA: $F3
    ld [$FB2A], sp                                ; $4BFB: $08 $2A $FB
    ld a, [bc]                                    ; $4BFE: $0A
    inc [hl]                                      ; $4BFF: $34
    ld bc, $320C                                  ; $4C00: $01 $0C $32
    rst RST_28                                    ; $4C03: $EF
    ld c, $3B                                     ; $4C04: $0E $3B
    rst RST_30                                    ; $4C06: $F7
    db $10                                        ; $4C07: $10
    inc de                                        ; $4C08: $13
    db $EB                                        ; $4C09: $EB
    ld [de], a                                    ; $4C0A: $12
    nop                                           ; $4C0B: $00
    rlca                                          ; $4C0C: $07
    ld h, e                                       ; $4C0D: $63
    add b                                         ; $4C0E: $80
    ld [hl], a                                    ; $4C0F: $77
    ld [de], a                                    ; $4C10: $12
    dec d                                         ; $4C11: $15

jr_00A_4C12:
    ld c, h                                       ; $4C12: $4C
    db $ED                                        ; $4C13: $ED
    nop                                           ; $4C14: $00
    inc c                                         ; $4C15: $0C
    dec l                                         ; $4C16: $2D
    cp $00                                        ; $4C17: $FE $00
    jr nz, @+$08                                  ; $4C19: $20 $06

jr_00A_4C1B:
    ld [bc], a                                    ; $4C1B: $02
    dec a                                         ; $4C1C: $3D
    cp $04                                        ; $4C1D: $FE $04
    ld [hl-], a                                   ; $4C1F: $32
    or $06                                        ; $4C20: $F6 $06
    jr nc, jr_00A_4C12                            ; $4C22: $30 $EE

    ld [$E637], sp                                ; $4C24: $08 $37 $E6
    ld a, [bc]                                    ; $4C27: $0A
    ld [hl+], a                                   ; $4C28: $22
    or $0C                                        ; $4C29: $F6 $0C
    jr nz, jr_00A_4C1B                            ; $4C2B: $20 $EE

    ld c, $27                                     ; $4C2D: $0E $27
    and $10                                       ; $4C2F: $E6 $10
    inc e                                         ; $4C31: $1C
    cp $12                                        ; $4C32: $FE $12
    ld [de], a                                    ; $4C34: $12
    or $14                                        ; $4C35: $F6 $14
    rrca                                          ; $4C37: $0F
    ld b, $16                                     ; $4C38: $06 $16
    nop                                           ; $4C3A: $00
    rlca                                          ; $4C3B: $07
    nop                                           ; $4C3C: $00
    nop                                           ; $4C3D: $00
    ld a, c                                       ; $4C3E: $79
    ld [de], a                                    ; $4C3F: $12
    ld b, h                                       ; $4C40: $44

jr_00A_4C41:
    ld c, h                                       ; $4C41: $4C
    db $ED                                        ; $4C42: $ED
    nop                                           ; $4C43: $00
    ld b, $32                                     ; $4C44: $06 $32
    cp $00                                        ; $4C46: $FE $00
    ld [hl+], a                                   ; $4C48: $22
    cp $02                                        ; $4C49: $FE $02
    jr nz, jr_00A_4C53                            ; $4C4B: $20 $06

    inc b                                         ; $4C4D: $04
    ld a, [hl-]                                   ; $4C4E: $3A
    or $06                                        ; $4C4F: $F6 $06
    jr nc, jr_00A_4C41                            ; $4C51: $30 $EE

jr_00A_4C53:
    ld [$E639], sp                                ; $4C53: $08 $39 $E6
    ld a, [bc]                                    ; $4C56: $0A
    nop                                           ; $4C57: $00
    cp e                                          ; $4C58: $BB
    nop                                           ; $4C59: $00
    ret nz                                        ; $4C5A: $C0

    ld a, c                                       ; $4C5B: $79
    ld [de], a                                    ; $4C5C: $12
    ld l, e                                       ; $4C5D: $6B
    ld c, h                                       ; $4C5E: $4C
    ld sp, hl                                     ; $4C5F: $F9
    nop                                           ; $4C60: $00
    nop                                           ; $4C61: $00
    ld bc, $C005                                  ; $4C62: $01 $05 $C0
    ld a, c                                       ; $4C65: $79
    ld [de], a                                    ; $4C66: $12
    ld l, e                                       ; $4C67: $6B
    ld c, h                                       ; $4C68: $4C
    ld sp, hl                                     ; $4C69: $F9
    nop                                           ; $4C6A: $00
    ld a, [bc]                                    ; $4C6B: $0A
    ld [hl+], a                                   ; $4C6C: $22
    db $E4                                        ; $4C6D: $E4
    nop                                           ; $4C6E: $00
    ld [hl+], a                                   ; $4C6F: $22
    db $EC                                        ; $4C70: $EC
    ld [bc], a                                    ; $4C71: $02
    rra                                           ; $4C72: $1F
    db $F4                                        ; $4C73: $F4
    inc b                                         ; $4C74: $04
    ld hl, $06FC                                  ; $4C75: $21 $FC $06
    ld hl, $0804                                  ; $4C78: $21 $04 $08
    ld hl, $0A0C                                  ; $4C7B: $21 $0C $0A
    ld sp, $0CFA                                  ; $4C7E: $31 $FA $0C
    ld sp, $0E02                                  ; $4C81: $31 $02 $0E
    ld sp, $100A                                  ; $4C84: $31 $0A $10
    dec sp                                        ; $4C87: $3B
    ldh a, [c]                                    ; $4C88: $F2
    ld [de], a                                    ; $4C89: $12
    nop                                           ; $4C8A: $00
    cp e                                          ; $4C8B: $BB
    nop                                           ; $4C8C: $00
    nop                                           ; $4C8D: $00
    ld a, e                                       ; $4C8E: $7B
    ld [de], a                                    ; $4C8F: $12
    sub h                                         ; $4C90: $94
    ld c, h                                       ; $4C91: $4C
    pop af                                        ; $4C92: $F1
    nop                                           ; $4C93: $00
    ld a, [bc]                                    ; $4C94: $0A
    ld [hl+], a                                   ; $4C95: $22
    rst RST_28                                    ; $4C96: $EF
    nop                                           ; $4C97: $00
    ld [hl+], a                                   ; $4C98: $22
    rst RST_30                                    ; $4C99: $F7
    ld [bc], a                                    ; $4C9A: $02
    rra                                           ; $4C9B: $1F
    rst RST_38                                    ; $4C9C: $FF
    inc b                                         ; $4C9D: $04
    inc e                                         ; $4C9E: $1C
    rlca                                          ; $4C9F: $07
    ld b, $21                                     ; $4CA0: $06 $21
    rrca                                          ; $4CA2: $0F
    ld [$1723], sp                                ; $4CA3: $08 $23 $17
    ld a, [bc]                                    ; $4CA6: $0A
    inc l                                         ; $4CA7: $2C
    rlca                                          ; $4CA8: $07
    inc c                                         ; $4CA9: $0C
    ld sp, $0E0F                                  ; $4CAA: $31 $0F $0E
    inc [hl]                                      ; $4CAD: $34
    rst RST_38                                    ; $4CAE: $FF
    db $10                                        ; $4CAF: $10
    inc sp                                        ; $4CB0: $33
    rla                                           ; $4CB1: $17
    ld [de], a                                    ; $4CB2: $12
    nop                                           ; $4CB3: $00
    ld bc, $4065                                  ; $4CB4: $01 $65 $40
    ld a, h                                       ; $4CB7: $7C
    ld [de], a                                    ; $4CB8: $12
    cp l                                          ; $4CB9: $BD
    ld c, h                                       ; $4CBA: $4C
    db $FC                                        ; $4CBB: $FC
    ld bc, $1F08                                  ; $4CBC: $01 $08 $1F
    db $EB                                        ; $4CBF: $EB
    nop                                           ; $4CC0: $00
    dec e                                         ; $4CC1: $1D
    di                                            ; $4CC2: $F3
    ld [bc], a                                    ; $4CC3: $02
    add hl, de                                    ; $4CC4: $19
    ei                                            ; $4CC5: $FB
    inc b                                         ; $4CC6: $04
    dec de                                        ; $4CC7: $1B
    inc bc                                        ; $4CC8: $03
    ld b, $2D                                     ; $4CC9: $06 $2D
    di                                            ; $4CCB: $F3
    ld [$FB29], sp                                ; $4CCC: $08 $29 $FB
    ld a, [bc]                                    ; $4CCF: $0A
    inc l                                         ; $4CD0: $2C
    inc bc                                        ; $4CD1: $03
    inc c                                         ; $4CD2: $0C
    jr c, jr_00A_4CDE                             ; $4CD3: $38 $09

    ld c, $00                                     ; $4CD5: $0E $00
    ld bc, $4009                                  ; $4CD7: $01 $09 $40
    ld a, l                                       ; $4CDA: $7D
    ld [de], a                                    ; $4CDB: $12
    ldh [$FF4C], a                                ; $4CDC: $E0 $4C

jr_00A_4CDE:
    nop                                           ; $4CDE: $00
    rlca                                          ; $4CDF: $07
    inc b                                         ; $4CE0: $04
    db $10                                        ; $4CE1: $10
    xor $00                                       ; $4CE2: $EE $00
    db $10                                        ; $4CE4: $10
    or $02                                        ; $4CE5: $F6 $02
    db $10                                        ; $4CE7: $10
    cp $04                                        ; $4CE8: $FE $04
    db $10                                        ; $4CEA: $10
    ld b, $06                                     ; $4CEB: $06 $06
    nop                                           ; $4CED: $00
    ld bc, $C005                                  ; $4CEE: $01 $05 $C0
    ld a, l                                       ; $4CF1: $7D
    ld [de], a                                    ; $4CF2: $12
    rst RST_30                                    ; $4CF3: $F7
    ld c, h                                       ; $4CF4: $4C
    inc b                                         ; $4CF5: $04
    inc de                                        ; $4CF6: $13
    ld [$EB10], sp                                ; $4CF7: $08 $10 $EB
    nop                                           ; $4CFA: $00
    ld a, [bc]                                    ; $4CFB: $0A
    ei                                            ; $4CFC: $FB
    ld [bc], a                                    ; $4CFD: $02
    ld [bc], a                                    ; $4CFE: $02
    inc bc                                        ; $4CFF: $03
    inc b                                         ; $4D00: $04
    rla                                           ; $4D01: $17
    di                                            ; $4D02: $F3
    ld b, $1A                                     ; $4D03: $06 $1A
    ei                                            ; $4D05: $FB
    ld [$0312], sp                                ; $4D06: $08 $12 $03
    ld a, [bc]                                    ; $4D09: $0A
    ld hl, $0CEB                                  ; $4D0A: $21 $EB $0C
    rlca                                          ; $4D0D: $07
    di                                            ; $4D0E: $F3
    ld c, $00                                     ; $4D0F: $0E $00
    ld bc, $0000                                  ; $4D11: $01 $00 $00
    ld h, e                                       ; $4D14: $63
    ld hl, $4D1A                                  ; $4D15: $21 $1A $4D
    rst RST_38                                    ; $4D18: $FF

jr_00A_4D19:
    nop                                           ; $4D19: $00
    ld b, $1C                                     ; $4D1A: $06 $1C
    cp $00                                        ; $4D1C: $FE $00
    inc l                                         ; $4D1E: $2C
    cp $02                                        ; $4D1F: $FE $02
    jr nz, jr_00A_4D19                            ; $4D21: $20 $F6

    inc b                                         ; $4D23: $04
    ld [hl+], a                                   ; $4D24: $22
    xor $06                                       ; $4D25: $EE $06
    inc [hl]                                      ; $4D27: $34
    or $08                                        ; $4D28: $F6 $08
    dec e                                         ; $4D2A: $1D
    and $0A                                       ; $4D2B: $E6 $0A
    nop                                           ; $4D2D: $00
    ret nz                                        ; $4D2E: $C0

    ld h, e                                       ; $4D2F: $63
    ld hl, $4D35                                  ; $4D30: $21 $35 $4D
    rst RST_38                                    ; $4D33: $FF
    nop                                           ; $4D34: $00
    dec b                                         ; $4D35: $05
    ld hl, $0006                                  ; $4D36: $21 $06 $00
    ld sp, $0206                                  ; $4D39: $31 $06 $02
    inc hl                                        ; $4D3C: $23
    ld c, $04                                     ; $4D3D: $0E $04
    inc sp                                        ; $4D3F: $33
    ld c, $06                                     ; $4D40: $0E $06
    rra                                           ; $4D42: $1F
    ld d, $08                                     ; $4D43: $16 $08
    nop                                           ; $4D45: $00
    ld h, b                                       ; $4D46: $60
    ld h, h                                       ; $4D47: $64
    ld hl, $4D4D                                  ; $4D48: $21 $4D $4D
    rst RST_38                                    ; $4D4B: $FF
    nop                                           ; $4D4C: $00
    dec b                                         ; $4D4D: $05
    ld hl, $0006                                  ; $4D4E: $21 $06 $00
    ld sp, $0206                                  ; $4D51: $31 $06 $02
    inc hl                                        ; $4D54: $23
    ld c, $04                                     ; $4D55: $0E $04
    inc sp                                        ; $4D57: $33
    ld c, $06                                     ; $4D58: $0E $06
    inc h                                         ; $4D5A: $24
    ld d, $08                                     ; $4D5B: $16 $08
    nop                                           ; $4D5D: $00
    nop                                           ; $4D5E: $00
    ld h, l                                       ; $4D5F: $65
    ld hl, $4D65                                  ; $4D60: $21 $65 $4D
    rst RST_38                                    ; $4D63: $FF
    nop                                           ; $4D64: $00
    dec b                                         ; $4D65: $05
    ld hl, $0006                                  ; $4D66: $21 $06 $00
    ld sp, $0206                                  ; $4D69: $31 $06 $02
    inc hl                                        ; $4D6C: $23
    ld c, $04                                     ; $4D6D: $0E $04
    inc sp                                        ; $4D6F: $33
    ld c, $06                                     ; $4D70: $0E $06
    inc h                                         ; $4D72: $24
    ld d, $08                                     ; $4D73: $16 $08
    nop                                           ; $4D75: $00
    and b                                         ; $4D76: $A0
    ld h, l                                       ; $4D77: $65
    ld hl, $4D7D                                  ; $4D78: $21 $7D $4D
    rst RST_38                                    ; $4D7B: $FF
    nop                                           ; $4D7C: $00
    ld b, $21                                     ; $4D7D: $06 $21
    ld b, $00                                     ; $4D7F: $06 $00
    ld sp, $0206                                  ; $4D81: $31 $06 $02
    inc hl                                        ; $4D84: $23
    ld c, $04                                     ; $4D85: $0E $04
    inc sp                                        ; $4D87: $33
    ld c, $06                                     ; $4D88: $0E $06
    jr z, @+$18                                   ; $4D8A: $28 $16

    ld [$1618], sp                                ; $4D8C: $08 $18 $16
    ld a, [bc]                                    ; $4D8F: $0A
    nop                                           ; $4D90: $00
    ld bc, $6000                                  ; $4D91: $01 $00 $60
    ld h, [hl]                                    ; $4D94: $66
    ld hl, $4D9A                                  ; $4D95: $21 $9A $4D
    cp $00                                        ; $4D98: $FE $00
    inc c                                         ; $4D9A: $0C
    ld a, [hl+]                                   ; $4D9B: $2A

jr_00A_4D9C:
    db $F4                                        ; $4D9C: $F4
    nop                                           ; $4D9D: $00
    jr nz, jr_00A_4D9C                            ; $4D9E: $20 $FC

    ld [bc], a                                    ; $4DA0: $02
    jr nc, @-$02                                  ; $4DA1: $30 $FC

    inc b                                         ; $4DA3: $04
    inc e                                         ; $4DA4: $1C
    inc b                                         ; $4DA5: $04
    ld b, $2C                                     ; $4DA6: $06 $2C
    inc b                                         ; $4DA8: $04
    ld [$0C18], sp                                ; $4DA9: $08 $18 $0C
    ld a, [bc]                                    ; $4DAC: $0A
    jr z, jr_00A_4DBB                             ; $4DAD: $28 $0C

    inc c                                         ; $4DAF: $0C
    jr jr_00A_4DC6                                ; $4DB0: $18 $14

    ld c, $28                                     ; $4DB2: $0E $28
    inc d                                         ; $4DB4: $14
    db $10                                        ; $4DB5: $10
    ld a, [hl-]                                   ; $4DB6: $3A
    db $F4                                        ; $4DB7: $F4
    ld [de], a                                    ; $4DB8: $12
    jr c, jr_00A_4DC4                             ; $4DB9: $38 $09

jr_00A_4DBB:
    inc d                                         ; $4DBB: $14
    rra                                           ; $4DBC: $1F
    inc e                                         ; $4DBD: $1C
    ld d, $00                                     ; $4DBE: $16 $00
    ld bc, $C002                                  ; $4DC0: $01 $02 $C0
    ld a, [hl]                                    ; $4DC3: $7E

jr_00A_4DC4:
    ld [de], a                                    ; $4DC4: $12
    ret                                           ; $4DC5: $C9


jr_00A_4DC6:
    ld c, l                                       ; $4DC6: $4D
    nop                                           ; $4DC7: $00
    nop                                           ; $4DC8: $00
    add hl, bc                                    ; $4DC9: $09
    dec hl                                        ; $4DCA: $2B
    db $EC                                        ; $4DCB: $EC
    nop                                           ; $4DCC: $00
    ld a, [de]                                    ; $4DCD: $1A
    db $F4                                        ; $4DCE: $F4
    ld [bc], a                                    ; $4DCF: $02
    dec de                                        ; $4DD0: $1B
    db $FC                                        ; $4DD1: $FC
    inc b                                         ; $4DD2: $04
    rra                                           ; $4DD3: $1F
    inc b                                         ; $4DD4: $04
    ld b, $20                                     ; $4DD5: $06 $20
    inc c                                         ; $4DD7: $0C
    ld [$F42A], sp                                ; $4DD8: $08 $2A $F4
    ld a, [bc]                                    ; $4DDB: $0A
    dec hl                                        ; $4DDC: $2B
    db $FC                                        ; $4DDD: $FC
    inc c                                         ; $4DDE: $0C
    inc [hl]                                      ; $4DDF: $34
    inc b                                         ; $4DE0: $04
    ld c, $37                                     ; $4DE1: $0E $37
    inc c                                         ; $4DE3: $0C
    stop                                          ; $4DE4: $10 $00
    ld bc, $E002                                  ; $4DE6: $01 $02 $E0
    ld h, a                                       ; $4DE9: $67
    ld hl, $4DEF                                  ; $4DEA: $21 $EF $4D
    nop                                           ; $4DED: $00
    ld bc, $2A09                                  ; $4DEE: $01 $09 $2A
    db $EC                                        ; $4DF1: $EC
    nop                                           ; $4DF2: $00
    add hl, de                                    ; $4DF3: $19
    db $F4                                        ; $4DF4: $F4
    ld [bc], a                                    ; $4DF5: $02
    ld a, [de]                                    ; $4DF6: $1A
    db $FC                                        ; $4DF7: $FC
    inc b                                         ; $4DF8: $04
    ld e, $04                                     ; $4DF9: $1E $04
    ld b, $1F                                     ; $4DFB: $06 $1F
    inc c                                         ; $4DFD: $0C
    ld [$F429], sp                                ; $4DFE: $08 $29 $F4
    ld a, [bc]                                    ; $4E01: $0A
    ld a, [hl+]                                   ; $4E02: $2A
    db $FC                                        ; $4E03: $FC
    inc c                                         ; $4E04: $0C
    inc sp                                        ; $4E05: $33
    inc b                                         ; $4E06: $04
    ld c, $36                                     ; $4E07: $0E $36
    inc c                                         ; $4E09: $0C
    stop                                          ; $4E0A: $10 $00
    ld bc, $0002                                  ; $4E0C: $01 $02 $00
    ld l, c                                       ; $4E0F: $69
    ld hl, $4E15                                  ; $4E10: $21 $15 $4E
    push af                                       ; $4E13: $F5
    nop                                           ; $4E14: $00
    rrca                                          ; $4E15: $0F
    ld [hl+], a                                   ; $4E16: $22
    and $00                                       ; $4E17: $E6 $00
    ld [de], a                                    ; $4E19: $12
    and $02                                       ; $4E1A: $E6 $02
    ld [hl+], a                                   ; $4E1C: $22
    xor $04                                       ; $4E1D: $EE $04
    ld [de], a                                    ; $4E1F: $12
    xor $06                                       ; $4E20: $EE $06
    ld [hl+], a                                   ; $4E22: $22
    or $08                                        ; $4E23: $F6 $08
    ld [de], a                                    ; $4E25: $12
    or $0A                                        ; $4E26: $F6 $0A
    rra                                           ; $4E28: $1F
    cp $0C                                        ; $4E29: $FE $0C
    cpl                                           ; $4E2B: $2F
    cp $0E                                        ; $4E2C: $FE $0E
    rra                                           ; $4E2E: $1F
    ld b, $10                                     ; $4E2F: $06 $10
    cpl                                           ; $4E31: $2F
    ld b, $12                                     ; $4E32: $06 $12
    rra                                           ; $4E34: $1F
    ld c, $14                                     ; $4E35: $0E $14
    cpl                                           ; $4E37: $2F
    ld c, $16                                     ; $4E38: $0E $16
    ld [hl+], a                                   ; $4E3A: $22
    ld d, $18                                     ; $4E3B: $16 $18
    ld [de], a                                    ; $4E3D: $12
    ld d, $1A                                     ; $4E3E: $16 $1A
    scf                                           ; $4E40: $37
    inc d                                         ; $4E41: $14
    inc e                                         ; $4E42: $1C
    nop                                           ; $4E43: $00
    ld bc, $E002                                  ; $4E44: $01 $02 $E0
    ld l, d                                       ; $4E47: $6A
    ld hl, $4E4D                                  ; $4E48: $21 $4D $4E
    push af                                       ; $4E4B: $F5
    nop                                           ; $4E4C: $00
    inc c                                         ; $4E4D: $0C
    inc h                                         ; $4E4E: $24
    db $EB                                        ; $4E4F: $EB
    nop                                           ; $4E50: $00
    inc d                                         ; $4E51: $14
    db $EB                                        ; $4E52: $EB
    ld [bc], a                                    ; $4E53: $02
    inc h                                         ; $4E54: $24
    di                                            ; $4E55: $F3
    inc b                                         ; $4E56: $04
    inc d                                         ; $4E57: $14
    di                                            ; $4E58: $F3
    ld b, $1F                                     ; $4E59: $06 $1F
    ei                                            ; $4E5B: $FB
    ld [$FB2F], sp                                ; $4E5C: $08 $2F $FB
    ld a, [bc]                                    ; $4E5F: $0A
    rra                                           ; $4E60: $1F
    inc bc                                        ; $4E61: $03
    inc c                                         ; $4E62: $0C

jr_00A_4E63:
    cpl                                           ; $4E63: $2F
    inc bc                                        ; $4E64: $03
    ld c, $1B                                     ; $4E65: $0E $1B
    dec bc                                        ; $4E67: $0B
    db $10                                        ; $4E68: $10
    dec hl                                        ; $4E69: $2B
    dec bc                                        ; $4E6A: $0B
    ld [de], a                                    ; $4E6B: $12
    ld [hl+], a                                   ; $4E6C: $22
    inc de                                        ; $4E6D: $13
    inc d                                         ; $4E6E: $14
    inc [hl]                                      ; $4E6F: $34
    inc de                                        ; $4E70: $13
    ld d, $00                                     ; $4E71: $16 $00
    ld h, b                                       ; $4E73: $60
    ld l, h                                       ; $4E74: $6C
    ld hl, $4E7A                                  ; $4E75: $21 $7A $4E
    push af                                       ; $4E78: $F5
    nop                                           ; $4E79: $00
    dec b                                         ; $4E7A: $05
    jr jr_00A_4E63                                ; $4E7B: $18 $E6

    nop                                           ; $4E7D: $00
    dec e                                         ; $4E7E: $1D
    xor $02                                       ; $4E7F: $EE $02
    ld e, $F6                                     ; $4E81: $1E $F6
    inc b                                         ; $4E83: $04
    rra                                           ; $4E84: $1F
    cp $06                                        ; $4E85: $FE $06
    ld sp, $08FE                                  ; $4E87: $31 $FE $08
    nop                                           ; $4E8A: $00
    ld bc, $0000                                  ; $4E8B: $01 $00 $00
    ld l, l                                       ; $4E8E: $6D
    ld hl, $4E94                                  ; $4E8F: $21 $94 $4E
    push af                                       ; $4E92: $F5
    nop                                           ; $4E93: $00
    ld b, $21                                     ; $4E94: $06 $21
    ld b, $00                                     ; $4E96: $06 $00

jr_00A_4E98:
    ld sp, $0206                                  ; $4E98: $31 $06 $02
    inc h                                         ; $4E9B: $24
    ld c, $04                                     ; $4E9C: $0E $04
    inc [hl]                                      ; $4E9E: $34
    ld c, $06                                     ; $4E9F: $0E $06
    scf                                           ; $4EA1: $37
    ld d, $08                                     ; $4EA2: $16 $08
    jr nz, jr_00A_4EBC                            ; $4EA4: $20 $16

    ld a, [bc]                                    ; $4EA6: $0A
    nop                                           ; $4EA7: $00
    ret nz                                        ; $4EA8: $C0

    ld l, l                                       ; $4EA9: $6D
    ld hl, $4EAF                                  ; $4EAA: $21 $AF $4E
    push af                                       ; $4EAD: $F5
    nop                                           ; $4EAE: $00
    dec b                                         ; $4EAF: $05

jr_00A_4EB0:
    jr jr_00A_4E98                                ; $4EB0: $18 $E6

    nop                                           ; $4EB2: $00
    dec e                                         ; $4EB3: $1D
    xor $02                                       ; $4EB4: $EE $02
    ld e, $F6                                     ; $4EB6: $1E $F6
    inc b                                         ; $4EB8: $04
    rra                                           ; $4EB9: $1F
    cp $06                                        ; $4EBA: $FE $06

jr_00A_4EBC:
    ld sp, $08FE                                  ; $4EBC: $31 $FE $08
    nop                                           ; $4EBF: $00
    ld h, b                                       ; $4EC0: $60
    ld l, [hl]                                    ; $4EC1: $6E
    ld hl, $4EC7                                  ; $4EC2: $21 $C7 $4E
    push af                                       ; $4EC5: $F5
    nop                                           ; $4EC6: $00
    dec b                                         ; $4EC7: $05

jr_00A_4EC8:
    jr jr_00A_4EB0                                ; $4EC8: $18 $E6

    nop                                           ; $4ECA: $00
    dec e                                         ; $4ECB: $1D
    xor $02                                       ; $4ECC: $EE $02
    ld e, $F6                                     ; $4ECE: $1E $F6
    inc b                                         ; $4ED0: $04
    rra                                           ; $4ED1: $1F
    cp $06                                        ; $4ED2: $FE $06
    ld sp, $08FE                                  ; $4ED4: $31 $FE $08
    nop                                           ; $4ED7: $00
    nop                                           ; $4ED8: $00
    ld l, a                                       ; $4ED9: $6F
    ld hl, $4EDF                                  ; $4EDA: $21 $DF $4E
    push af                                       ; $4EDD: $F5
    nop                                           ; $4EDE: $00
    dec b                                         ; $4EDF: $05
    jr jr_00A_4EC8                                ; $4EE0: $18 $E6

    nop                                           ; $4EE2: $00
    dec e                                         ; $4EE3: $1D
    xor $02                                       ; $4EE4: $EE $02
    ld e, $F6                                     ; $4EE6: $1E $F6
    inc b                                         ; $4EE8: $04
    rra                                           ; $4EE9: $1F
    cp $06                                        ; $4EEA: $FE $06
    ld sp, $08FE                                  ; $4EEC: $31 $FE $08
    nop                                           ; $4EEF: $00
    and b                                         ; $4EF0: $A0
    ld l, a                                       ; $4EF1: $6F
    ld hl, $4EF7                                  ; $4EF2: $21 $F7 $4E
    push af                                       ; $4EF5: $F5
    ld [$1005], sp                                ; $4EF6: $08 $05 $10
    and $00                                       ; $4EF9: $E6 $00
    dec d                                         ; $4EFB: $15
    xor $02                                       ; $4EFC: $EE $02
    ld d, $F6                                     ; $4EFE: $16 $F6
    inc b                                         ; $4F00: $04
    rla                                           ; $4F01: $17
    cp $06                                        ; $4F02: $FE $06
    add hl, hl                                    ; $4F04: $29
    cp $08                                        ; $4F05: $FE $08
    nop                                           ; $4F07: $00
    ld b, b                                       ; $4F08: $40
    ld [hl], b                                    ; $4F09: $70
    ld hl, $4F0F                                  ; $4F0A: $21 $0F $4F
    push af                                       ; $4F0D: $F5
    ld [$1005], sp                                ; $4F0E: $08 $05 $10
    and $00                                       ; $4F11: $E6 $00
    dec d                                         ; $4F13: $15
    xor $02                                       ; $4F14: $EE $02
    ld d, $F6                                     ; $4F16: $16 $F6
    inc b                                         ; $4F18: $04
    rla                                           ; $4F19: $17
    cp $06                                        ; $4F1A: $FE $06
    add hl, hl                                    ; $4F1C: $29
    cp $08                                        ; $4F1D: $FE $08
    db $D3                                        ; $4F1F: $D3
    ld d, c                                       ; $4F20: $51
    rst RST_38                                    ; $4F21: $FF
    rst RST_38                                    ; $4F22: $FF
    di                                            ; $4F23: $F3
    ld d, c                                       ; $4F24: $51
    rst RST_38                                    ; $4F25: $FF
    rst RST_38                                    ; $4F26: $FF
    add hl, de                                    ; $4F27: $19
    ld d, d                                       ; $4F28: $52
    inc sp                                        ; $4F29: $33
    ld d, d                                       ; $4F2A: $52
    di                                            ; $4F2B: $F3
    ld d, c                                       ; $4F2C: $51
    rst RST_38                                    ; $4F2D: $FF
    rst RST_38                                    ; $4F2E: $FF
    rst RST_38                                    ; $4F2F: $FF
    rst RST_38                                    ; $4F30: $FF
    ld c, b                                       ; $4F31: $48
    ld d, d                                       ; $4F32: $52
    rst RST_38                                    ; $4F33: $FF
    rst RST_38                                    ; $4F34: $FF
    ld l, e                                       ; $4F35: $6B
    ld d, d                                       ; $4F36: $52
    rst RST_38                                    ; $4F37: $FF
    rst RST_38                                    ; $4F38: $FF
    ld c, b                                       ; $4F39: $48
    ld d, d                                       ; $4F3A: $52
    rst RST_38                                    ; $4F3B: $FF
    rst RST_38                                    ; $4F3C: $FF
    adc [hl]                                      ; $4F3D: $8E
    ld d, d                                       ; $4F3E: $52
    rst RST_38                                    ; $4F3F: $FF
    rst RST_38                                    ; $4F40: $FF
    rst RST_38                                    ; $4F41: $FF
    rst RST_38                                    ; $4F42: $FF
    adc [hl]                                      ; $4F43: $8E
    ld d, d                                       ; $4F44: $52
    rst RST_38                                    ; $4F45: $FF
    rst RST_38                                    ; $4F46: $FF
    ld c, b                                       ; $4F47: $48
    ld d, d                                       ; $4F48: $52
    rst RST_38                                    ; $4F49: $FF
    rst RST_38                                    ; $4F4A: $FF
    ld l, e                                       ; $4F4B: $6B
    ld d, d                                       ; $4F4C: $52
    rst RST_38                                    ; $4F4D: $FF
    rst RST_38                                    ; $4F4E: $FF
    ld c, b                                       ; $4F4F: $48
    ld d, d                                       ; $4F50: $52
    rst RST_38                                    ; $4F51: $FF
    rst RST_38                                    ; $4F52: $FF
    rst RST_38                                    ; $4F53: $FF
    rst RST_38                                    ; $4F54: $FF
    or h                                          ; $4F55: $B4
    ld d, d                                       ; $4F56: $52
    rst RST_38                                    ; $4F57: $FF
    rst RST_38                                    ; $4F58: $FF
    rst RST_38                                    ; $4F59: $FF
    rst RST_38                                    ; $4F5A: $FF
    or h                                          ; $4F5B: $B4
    ld d, d                                       ; $4F5C: $52
    rst RST_38                                    ; $4F5D: $FF
    rst RST_38                                    ; $4F5E: $FF
    db $DB                                        ; $4F5F: $DB
    ld d, d                                       ; $4F60: $52
    rst RST_38                                    ; $4F61: $FF
    rst RST_38                                    ; $4F62: $FF
    db $DB                                        ; $4F63: $DB
    ld d, d                                       ; $4F64: $52
    rst RST_38                                    ; $4F65: $FF
    rst RST_38                                    ; $4F66: $FF
    db $DB                                        ; $4F67: $DB
    ld d, d                                       ; $4F68: $52
    rst RST_38                                    ; $4F69: $FF
    rst RST_38                                    ; $4F6A: $FF
    db $DB                                        ; $4F6B: $DB
    ld d, d                                       ; $4F6C: $52
    rst RST_38                                    ; $4F6D: $FF
    rst RST_38                                    ; $4F6E: $FF
    db $DB                                        ; $4F6F: $DB
    ld d, d                                       ; $4F70: $52
    rst RST_38                                    ; $4F71: $FF
    rst RST_38                                    ; $4F72: $FF
    db $DB                                        ; $4F73: $DB
    ld d, d                                       ; $4F74: $52
    rst RST_38                                    ; $4F75: $FF
    rst RST_38                                    ; $4F76: $FF
    or h                                          ; $4F77: $B4
    ld d, d                                       ; $4F78: $52
    rst RST_38                                    ; $4F79: $FF
    rst RST_38                                    ; $4F7A: $FF
    rst RST_38                                    ; $4F7B: $FF
    rst RST_38                                    ; $4F7C: $FF
    cp $52                                        ; $4F7D: $FE $52
    rra                                           ; $4F7F: $1F
    ld d, e                                       ; $4F80: $53
    rst RST_38                                    ; $4F81: $FF
    rst RST_38                                    ; $4F82: $FF
    inc [hl]                                      ; $4F83: $34
    ld d, e                                       ; $4F84: $53
    rst RST_38                                    ; $4F85: $FF
    rst RST_38                                    ; $4F86: $FF
    rst RST_38                                    ; $4F87: $FF
    rst RST_38                                    ; $4F88: $FF
    ld [$5453], sp                                ; $4F89: $08 $53 $54
    ld d, e                                       ; $4F8C: $53
    or h                                          ; $4F8D: $B4
    ld d, d                                       ; $4F8E: $52
    rst RST_38                                    ; $4F8F: $FF
    rst RST_38                                    ; $4F90: $FF
    rst RST_38                                    ; $4F91: $FF
    rst RST_38                                    ; $4F92: $FF
    ld l, c                                       ; $4F93: $69
    ld d, e                                       ; $4F94: $53
    add b                                         ; $4F95: $80
    ld d, e                                       ; $4F96: $53
    cp h                                          ; $4F97: $BC
    ld d, e                                       ; $4F98: $53
    add b                                         ; $4F99: $80
    ld d, e                                       ; $4F9A: $53
    sbc e                                         ; $4F9B: $9B
    ld d, e                                       ; $4F9C: $53
    add b                                         ; $4F9D: $80
    ld d, e                                       ; $4F9E: $53
    rst RST_38                                    ; $4F9F: $FF
    rst RST_38                                    ; $4FA0: $FF
    db $D3                                        ; $4FA1: $D3
    ld d, e                                       ; $4FA2: $53
    rst RST_38                                    ; $4FA3: $FF
    rst RST_38                                    ; $4FA4: $FF
    ld sp, hl                                     ; $4FA5: $F9
    ld d, e                                       ; $4FA6: $53
    rst RST_38                                    ; $4FA7: $FF
    rst RST_38                                    ; $4FA8: $FF
    db $D3                                        ; $4FA9: $D3
    ld d, e                                       ; $4FAA: $53
    rst RST_38                                    ; $4FAB: $FF
    rst RST_38                                    ; $4FAC: $FF
    rst RST_38                                    ; $4FAD: $FF
    rst RST_38                                    ; $4FAE: $FF
    db $D3                                        ; $4FAF: $D3
    ld d, c                                       ; $4FB0: $51
    rst RST_38                                    ; $4FB1: $FF
    rst RST_38                                    ; $4FB2: $FF
    rst RST_38                                    ; $4FB3: $FF
    rst RST_38                                    ; $4FB4: $FF
    ld h, $54                                     ; $4FB5: $26 $54
    rst RST_38                                    ; $4FB7: $FF
    rst RST_38                                    ; $4FB8: $FF
    ld d, [hl]                                    ; $4FB9: $56
    ld d, h                                       ; $4FBA: $54
    rst RST_38                                    ; $4FBB: $FF
    rst RST_38                                    ; $4FBC: $FF
    add [hl]                                      ; $4FBD: $86
    ld d, h                                       ; $4FBE: $54
    xor d                                         ; $4FBF: $AA
    ld d, h                                       ; $4FC0: $54
    cp $52                                        ; $4FC1: $FE $52
    rra                                           ; $4FC3: $1F
    ld d, e                                       ; $4FC4: $53
    rst RST_38                                    ; $4FC5: $FF
    rst RST_38                                    ; $4FC6: $FF
    jp nz, $D954                                  ; $4FC7: $C2 $54 $D9

    ld d, h                                       ; $4FCA: $54
    pop af                                        ; $4FCB: $F1
    ld d, h                                       ; $4FCC: $54
    reti                                          ; $4FCD: $D9


    ld d, h                                       ; $4FCE: $54
    jp nz, $D954                                  ; $4FCF: $C2 $54 $D9

    ld d, h                                       ; $4FD2: $54
    rst RST_38                                    ; $4FD3: $FF
    rst RST_38                                    ; $4FD4: $FF
    ld [$FF55], sp                                ; $4FD5: $08 $55 $FF
    rst RST_38                                    ; $4FD8: $FF
    inc a                                         ; $4FD9: $3C
    ld d, l                                       ; $4FDA: $55
    rst RST_38                                    ; $4FDB: $FF
    rst RST_38                                    ; $4FDC: $FF
    ld [$FF55], sp                                ; $4FDD: $08 $55 $FF
    rst RST_38                                    ; $4FE0: $FF
    rst RST_38                                    ; $4FE1: $FF
    rst RST_38                                    ; $4FE2: $FF
    ld l, c                                       ; $4FE3: $69
    ld d, l                                       ; $4FE4: $55
    and c                                         ; $4FE5: $A1
    ld d, l                                       ; $4FE6: $55
    add $55                                       ; $4FE7: $C6 $55
    rst RST_38                                    ; $4FE9: $FF
    rst RST_38                                    ; $4FEA: $FF
    and $55                                       ; $4FEB: $E6 $55
    rst RST_38                                    ; $4FED: $FF
    rst RST_38                                    ; $4FEE: $FF
    rst RST_38                                    ; $4FEF: $FF
    rst RST_38                                    ; $4FF0: $FF
    inc e                                         ; $4FF1: $1C
    ld d, l                                       ; $4FF2: $55
    rst RST_38                                    ; $4FF3: $FF
    rst RST_38                                    ; $4FF4: $FF
    inc bc                                        ; $4FF5: $03
    ld d, h                                       ; $4FF6: $54
    rst RST_38                                    ; $4FF7: $FF
    rst RST_38                                    ; $4FF8: $FF
    inc bc                                        ; $4FF9: $03
    ld d, h                                       ; $4FFA: $54
    rst RST_38                                    ; $4FFB: $FF
    rst RST_38                                    ; $4FFC: $FF
    inc bc                                        ; $4FFD: $03
    ld d, h                                       ; $4FFE: $54
    rst RST_38                                    ; $4FFF: $FF
    rst RST_38                                    ; $5000: $FF
    ld h, l                                       ; $5001: $65
    ld d, [hl]                                    ; $5002: $56
    rst RST_38                                    ; $5003: $FF
    rst RST_38                                    ; $5004: $FF
    rst RST_38                                    ; $5005: $FF
    rst RST_38                                    ; $5006: $FF
    ld [de], a                                    ; $5007: $12
    ld d, l                                       ; $5008: $55
    rst RST_38                                    ; $5009: $FF
    rst RST_38                                    ; $500A: $FF
    ld b, [hl]                                    ; $500B: $46
    ld d, l                                       ; $500C: $55
    rst RST_38                                    ; $500D: $FF
    rst RST_38                                    ; $500E: $FF
    ld b, [hl]                                    ; $500F: $46
    ld d, l                                       ; $5010: $55
    rst RST_38                                    ; $5011: $FF
    rst RST_38                                    ; $5012: $FF
    ld b, [hl]                                    ; $5013: $46
    ld d, l                                       ; $5014: $55
    rst RST_38                                    ; $5015: $FF
    rst RST_38                                    ; $5016: $FF
    or h                                          ; $5017: $B4
    ld d, d                                       ; $5018: $52
    rst RST_38                                    ; $5019: $FF
    rst RST_38                                    ; $501A: $FF
    rst RST_38                                    ; $501B: $FF
    rst RST_38                                    ; $501C: $FF
    and l                                         ; $501D: $A5
    ld d, e                                       ; $501E: $53
    add b                                         ; $501F: $80
    ld d, e                                       ; $5020: $53
    ld b, $56                                     ; $5021: $06 $56
    rst RST_38                                    ; $5023: $FF
    rst RST_38                                    ; $5024: $FF
    cpl                                           ; $5025: $2F
    ld d, [hl]                                    ; $5026: $56
    rst RST_38                                    ; $5027: $FF
    rst RST_38                                    ; $5028: $FF
    cpl                                           ; $5029: $2F
    ld d, [hl]                                    ; $502A: $56
    rst RST_38                                    ; $502B: $FF
    rst RST_38                                    ; $502C: $FF
    rst RST_38                                    ; $502D: $FF
    rst RST_38                                    ; $502E: $FF
    add l                                         ; $502F: $85
    ld d, [hl]                                    ; $5030: $56
    rst RST_38                                    ; $5031: $FF
    rst RST_38                                    ; $5032: $FF
    xor b                                         ; $5033: $A8
    ld d, [hl]                                    ; $5034: $56
    rst RST_38                                    ; $5035: $FF
    rst RST_38                                    ; $5036: $FF
    rst RST_38                                    ; $5037: $FF
    rst RST_38                                    ; $5038: $FF
    db $DB                                        ; $5039: $DB
    ld d, d                                       ; $503A: $52
    rst RST_38                                    ; $503B: $FF
    rst RST_38                                    ; $503C: $FF
    ld e, e                                       ; $503D: $5B
    ld d, [hl]                                    ; $503E: $56
    rst RST_38                                    ; $503F: $FF
    rst RST_38                                    ; $5040: $FF
    or h                                          ; $5041: $B4
    ld d, d                                       ; $5042: $52
    rst RST_38                                    ; $5043: $FF
    rst RST_38                                    ; $5044: $FF
    rst RST_38                                    ; $5045: $FF
    rst RST_38                                    ; $5046: $FF
    ret z                                         ; $5047: $C8

    ld d, [hl]                                    ; $5048: $56
    rst RST_38                                    ; $5049: $FF
    rst RST_38                                    ; $504A: $FF
    pop af                                        ; $504B: $F1
    ld d, [hl]                                    ; $504C: $56
    rst RST_38                                    ; $504D: $FF
    rst RST_38                                    ; $504E: $FF
    rst RST_38                                    ; $504F: $FF
    rst RST_38                                    ; $5050: $FF
    add hl, de                                    ; $5051: $19
    ld d, d                                       ; $5052: $52
    inc sp                                        ; $5053: $33
    ld d, d                                       ; $5054: $52
    xor [hl]                                      ; $5055: $AE
    ld d, a                                       ; $5056: $57
    rst RST_38                                    ; $5057: $FF
    rst RST_38                                    ; $5058: $FF
    db $E3                                        ; $5059: $E3
    ld d, a                                       ; $505A: $57
    rst RST_38                                    ; $505B: $FF
    rst RST_38                                    ; $505C: $FF
    rst RST_38                                    ; $505D: $FF
    rst RST_38                                    ; $505E: $FF
    jr nz, jr_00A_50B8                            ; $505F: $20 $57

    add b                                         ; $5061: $80
    ld d, e                                       ; $5062: $53
    ld a, [hl-]                                   ; $5063: $3A
    ld d, a                                       ; $5064: $57
    add b                                         ; $5065: $80
    ld d, e                                       ; $5066: $53
    ld d, a                                       ; $5067: $57
    ld d, a                                       ; $5068: $57
    add b                                         ; $5069: $80
    ld d, e                                       ; $506A: $53
    ld [hl], h                                    ; $506B: $74
    ld d, a                                       ; $506C: $57
    add b                                         ; $506D: $80
    ld d, e                                       ; $506E: $53
    sub c                                         ; $506F: $91
    ld d, a                                       ; $5070: $57
    add b                                         ; $5071: $80
    ld d, e                                       ; $5072: $53
    rst RST_38                                    ; $5073: $FF
    rst RST_38                                    ; $5074: $FF
    di                                            ; $5075: $F3
    ld d, c                                       ; $5076: $51
    rst RST_38                                    ; $5077: $FF
    rst RST_38                                    ; $5078: $FF
    add hl, de                                    ; $5079: $19
    ld d, d                                       ; $507A: $52
    inc sp                                        ; $507B: $33
    ld d, d                                       ; $507C: $52
    ret z                                         ; $507D: $C8

    ld d, [hl]                                    ; $507E: $56
    rst RST_38                                    ; $507F: $FF
    rst RST_38                                    ; $5080: $FF
    db $E3                                        ; $5081: $E3
    ld d, a                                       ; $5082: $57
    rst RST_38                                    ; $5083: $FF
    rst RST_38                                    ; $5084: $FF
    rst RST_38                                    ; $5085: $FF
    rst RST_38                                    ; $5086: $FF
    or h                                          ; $5087: $B4
    ld d, d                                       ; $5088: $52
    rst RST_38                                    ; $5089: $FF
    rst RST_38                                    ; $508A: $FF
    jp nz, $D954                                  ; $508B: $C2 $54 $D9

    ld d, h                                       ; $508E: $54
    add $55                                       ; $508F: $C6 $55
    rst RST_38                                    ; $5091: $FF
    rst RST_38                                    ; $5092: $FF
    ld h, a                                       ; $5093: $67
    ld e, b                                       ; $5094: $58
    rst RST_38                                    ; $5095: $FF
    rst RST_38                                    ; $5096: $FF
    rst RST_38                                    ; $5097: $FF
    rst RST_38                                    ; $5098: $FF
    inc c                                         ; $5099: $0C
    ld e, b                                       ; $509A: $58
    inc sp                                        ; $509B: $33
    ld d, d                                       ; $509C: $52
    rst RST_38                                    ; $509D: $FF
    rst RST_38                                    ; $509E: $FF
    ld h, $58                                     ; $509F: $26 $58
    rst RST_38                                    ; $50A1: $FF
    rst RST_38                                    ; $50A2: $FF
    rst RST_38                                    ; $50A3: $FF
    rst RST_38                                    ; $50A4: $FF
    db $D3                                        ; $50A5: $D3
    ld d, c                                       ; $50A6: $51
    rst RST_38                                    ; $50A7: $FF
    rst RST_38                                    ; $50A8: $FF
    inc c                                         ; $50A9: $0C
    ld e, b                                       ; $50AA: $58
    inc sp                                        ; $50AB: $33
    ld d, d                                       ; $50AC: $52
    ld h, $58                                     ; $50AD: $26 $58
    rst RST_38                                    ; $50AF: $FF
    rst RST_38                                    ; $50B0: $FF
    rst RST_38                                    ; $50B1: $FF
    rst RST_38                                    ; $50B2: $FF
    ld h, a                                       ; $50B3: $67
    ld e, b                                       ; $50B4: $58
    rst RST_38                                    ; $50B5: $FF
    rst RST_38                                    ; $50B6: $FF
    rst RST_38                                    ; $50B7: $FF

jr_00A_50B8:
    rst RST_38                                    ; $50B8: $FF
    inc c                                         ; $50B9: $0C
    ld e, b                                       ; $50BA: $58
    inc sp                                        ; $50BB: $33
    ld d, d                                       ; $50BC: $52
    db $DB                                        ; $50BD: $DB
    ld d, d                                       ; $50BE: $52
    rst RST_38                                    ; $50BF: $FF
    rst RST_38                                    ; $50C0: $FF
    db $DB                                        ; $50C1: $DB
    ld d, d                                       ; $50C2: $52
    rst RST_38                                    ; $50C3: $FF
    rst RST_38                                    ; $50C4: $FF
    db $DB                                        ; $50C5: $DB
    ld d, d                                       ; $50C6: $52
    rst RST_38                                    ; $50C7: $FF
    rst RST_38                                    ; $50C8: $FF
    db $DB                                        ; $50C9: $DB
    ld d, d                                       ; $50CA: $52
    rst RST_38                                    ; $50CB: $FF
    rst RST_38                                    ; $50CC: $FF
    db $DB                                        ; $50CD: $DB
    ld d, d                                       ; $50CE: $52
    rst RST_38                                    ; $50CF: $FF
    rst RST_38                                    ; $50D0: $FF
    or h                                          ; $50D1: $B4
    ld d, d                                       ; $50D2: $52
    rst RST_38                                    ; $50D3: $FF
    rst RST_38                                    ; $50D4: $FF
    rst RST_38                                    ; $50D5: $FF
    rst RST_38                                    ; $50D6: $FF
    inc c                                         ; $50D7: $0C
    ld e, b                                       ; $50D8: $58
    inc sp                                        ; $50D9: $33
    ld d, d                                       ; $50DA: $52
    add a                                         ; $50DB: $87
    ld e, b                                       ; $50DC: $58
    rst RST_38                                    ; $50DD: $FF
    rst RST_38                                    ; $50DE: $FF
    or a                                          ; $50DF: $B7
    ld e, b                                       ; $50E0: $58
    rst RST_38                                    ; $50E1: $FF
    rst RST_38                                    ; $50E2: $FF
    add a                                         ; $50E3: $87
    ld e, b                                       ; $50E4: $58
    rst RST_38                                    ; $50E5: $FF
    rst RST_38                                    ; $50E6: $FF
    or a                                          ; $50E7: $B7
    ld e, b                                       ; $50E8: $58
    rst RST_38                                    ; $50E9: $FF
    rst RST_38                                    ; $50EA: $FF
    rst RST_38                                    ; $50EB: $FF
    rst RST_38                                    ; $50EC: $FF
    ld h, $58                                     ; $50ED: $26 $58
    rst RST_38                                    ; $50EF: $FF
    rst RST_38                                    ; $50F0: $FF
    jr nc, @+$5A                                  ; $50F1: $30 $58

    rst RST_38                                    ; $50F3: $FF
    rst RST_38                                    ; $50F4: $FF
    ld a, [hl-]                                   ; $50F5: $3A
    ld e, b                                       ; $50F6: $58
    rst RST_38                                    ; $50F7: $FF
    rst RST_38                                    ; $50F8: $FF
    ld b, h                                       ; $50F9: $44
    ld e, b                                       ; $50FA: $58
    rst RST_38                                    ; $50FB: $FF
    rst RST_38                                    ; $50FC: $FF
    ld b, h                                       ; $50FD: $44
    ld e, b                                       ; $50FE: $58
    rst RST_38                                    ; $50FF: $FF
    rst RST_38                                    ; $5100: $FF
    add a                                         ; $5101: $87
    ld e, b                                       ; $5102: $58
    rst RST_38                                    ; $5103: $FF
    rst RST_38                                    ; $5104: $FF
    or a                                          ; $5105: $B7
    ld e, b                                       ; $5106: $58
    rst RST_38                                    ; $5107: $FF
    rst RST_38                                    ; $5108: $FF
    rst RST_38                                    ; $5109: $FF
    rst RST_38                                    ; $510A: $FF
    inc c                                         ; $510B: $0C
    ld e, b                                       ; $510C: $58
    inc sp                                        ; $510D: $33
    ld d, d                                       ; $510E: $52
    add a                                         ; $510F: $87
    ld e, b                                       ; $5110: $58
    rst RST_38                                    ; $5111: $FF
    rst RST_38                                    ; $5112: $FF
    or a                                          ; $5113: $B7
    ld e, b                                       ; $5114: $58
    rst RST_38                                    ; $5115: $FF
    rst RST_38                                    ; $5116: $FF
    rst RST_38                                    ; $5117: $FF
    rst RST_38                                    ; $5118: $FF
    sub c                                         ; $5119: $91
    ld e, b                                       ; $511A: $58
    rst RST_38                                    ; $511B: $FF
    rst RST_38                                    ; $511C: $FF
    rst RST_38                                    ; $511D: $FF
    rst RST_38                                    ; $511E: $FF
    or h                                          ; $511F: $B4
    ld d, d                                       ; $5120: $52
    rst RST_38                                    ; $5121: $FF
    rst RST_38                                    ; $5122: $FF
    or h                                          ; $5123: $B4
    ld d, d                                       ; $5124: $52
    rst RST_38                                    ; $5125: $FF
    rst RST_38                                    ; $5126: $FF
    rst RST_38                                    ; $5127: $FF
    rst RST_38                                    ; $5128: $FF
    ld h, $54                                     ; $5129: $26 $54
    rst RST_38                                    ; $512B: $FF
    rst RST_38                                    ; $512C: $FF
    jp c, $FF58                                   ; $512D: $DA $58 $FF

    rst RST_38                                    ; $5130: $FF
    ld b, $59                                     ; $5131: $06 $59
    xor d                                         ; $5133: $AA
    ld d, h                                       ; $5134: $54
    add [hl]                                      ; $5135: $86
    ld d, h                                       ; $5136: $54
    xor d                                         ; $5137: $AA
    ld d, h                                       ; $5138: $54
    ld [hl-], a                                   ; $5139: $32
    ld e, c                                       ; $513A: $59
    rst RST_38                                    ; $513B: $FF
    rst RST_38                                    ; $513C: $FF
    ld [hl], a                                    ; $513D: $77
    ld e, c                                       ; $513E: $59
    rst RST_38                                    ; $513F: $FF
    rst RST_38                                    ; $5140: $FF
    or b                                          ; $5141: $B0
    ld e, c                                       ; $5142: $59
    rst RST_38                                    ; $5143: $FF
    rst RST_38                                    ; $5144: $FF
    reti                                          ; $5145: $D9


    ld e, c                                       ; $5146: $59
    ldh a, [$FF59]                                ; $5147: $F0 $59
    ld de, $A95A                                  ; $5149: $11 $5A $A9
    ld d, l                                       ; $514C: $55
    ld [hl], e                                    ; $514D: $73
    ld d, l                                       ; $514E: $55
    xor c                                         ; $514F: $A9
    ld d, l                                       ; $5150: $55
    rst RST_38                                    ; $5151: $FF
    rst RST_38                                    ; $5152: $FF
    cp $52                                        ; $5153: $FE $52
    rra                                           ; $5155: $1F
    ld d, e                                       ; $5156: $53
    inc a                                         ; $5157: $3C
    ld e, c                                       ; $5158: $59
    rst RST_38                                    ; $5159: $FF
    rst RST_38                                    ; $515A: $FF
    add c                                         ; $515B: $81
    ld e, c                                       ; $515C: $59
    rst RST_38                                    ; $515D: $FF
    rst RST_38                                    ; $515E: $FF
    or b                                          ; $515F: $B0
    ld e, c                                       ; $5160: $59
    rst RST_38                                    ; $5161: $FF
    rst RST_38                                    ; $5162: $FF
    db $D3                                        ; $5163: $D3
    ld d, c                                       ; $5164: $51
    rst RST_38                                    ; $5165: $FF
    rst RST_38                                    ; $5166: $FF
    rst RST_38                                    ; $5167: $FF
    rst RST_38                                    ; $5168: $FF
    and l                                         ; $5169: $A5
    ld d, e                                       ; $516A: $53
    add b                                         ; $516B: $80
    ld d, e                                       ; $516C: $53
    ld b, $56                                     ; $516D: $06 $56
    rst RST_38                                    ; $516F: $FF
    rst RST_38                                    ; $5170: $FF
    cpl                                           ; $5171: $2F
    ld d, [hl]                                    ; $5172: $56
    rst RST_38                                    ; $5173: $FF
    rst RST_38                                    ; $5174: $FF
    cpl                                           ; $5175: $2F
    ld d, [hl]                                    ; $5176: $56
    rst RST_38                                    ; $5177: $FF
    rst RST_38                                    ; $5178: $FF
    jr nc, jr_00A_51CF                            ; $5179: $30 $54

    rst RST_38                                    ; $517B: $FF
    rst RST_38                                    ; $517C: $FF
    ld h, b                                       ; $517D: $60
    ld d, h                                       ; $517E: $54
    rst RST_38                                    ; $517F: $FF
    rst RST_38                                    ; $5180: $FF
    sub b                                         ; $5181: $90
    ld d, h                                       ; $5182: $54
    xor d                                         ; $5183: $AA
    ld d, h                                       ; $5184: $54
    rst RST_38                                    ; $5185: $FF
    rst RST_38                                    ; $5186: $FF
    or h                                          ; $5187: $B4
    ld d, d                                       ; $5188: $52
    rst RST_38                                    ; $5189: $FF
    rst RST_38                                    ; $518A: $FF
    ld a, [hl-]                                   ; $518B: $3A
    ld e, d                                       ; $518C: $5A
    rst RST_38                                    ; $518D: $FF
    rst RST_38                                    ; $518E: $FF
    ld de, $A95A                                  ; $518F: $11 $5A $A9
    ld d, l                                       ; $5192: $55
    ld a, l                                       ; $5193: $7D
    ld d, l                                       ; $5194: $55
    xor c                                         ; $5195: $A9
    ld d, l                                       ; $5196: $55
    or h                                          ; $5197: $B4
    ld d, d                                       ; $5198: $52
    rst RST_38                                    ; $5199: $FF
    rst RST_38                                    ; $519A: $FF
    rst RST_38                                    ; $519B: $FF
    rst RST_38                                    ; $519C: $FF
    and l                                         ; $519D: $A5
    ld d, e                                       ; $519E: $53
    add b                                         ; $519F: $80
    ld d, e                                       ; $51A0: $53
    ld b, $56                                     ; $51A1: $06 $56
    rst RST_38                                    ; $51A3: $FF
    rst RST_38                                    ; $51A4: $FF
    cpl                                           ; $51A5: $2F
    ld d, [hl]                                    ; $51A6: $56
    rst RST_38                                    ; $51A7: $FF
    rst RST_38                                    ; $51A8: $FF
    cpl                                           ; $51A9: $2F
    ld d, [hl]                                    ; $51AA: $56
    rst RST_38                                    ; $51AB: $FF
    rst RST_38                                    ; $51AC: $FF
    ld b, $56                                     ; $51AD: $06 $56
    rst RST_38                                    ; $51AF: $FF
    rst RST_38                                    ; $51B0: $FF
    cpl                                           ; $51B1: $2F
    ld d, [hl]                                    ; $51B2: $56
    rst RST_38                                    ; $51B3: $FF
    rst RST_38                                    ; $51B4: $FF
    cpl                                           ; $51B5: $2F
    ld d, [hl]                                    ; $51B6: $56
    rst RST_38                                    ; $51B7: $FF
    rst RST_38                                    ; $51B8: $FF
    jr nc, jr_00A_520F                            ; $51B9: $30 $54

    rst RST_38                                    ; $51BB: $FF
    rst RST_38                                    ; $51BC: $FF
    ld h, b                                       ; $51BD: $60
    ld d, h                                       ; $51BE: $54
    rst RST_38                                    ; $51BF: $FF
    rst RST_38                                    ; $51C0: $FF
    sub b                                         ; $51C1: $90
    ld d, h                                       ; $51C2: $54
    xor d                                         ; $51C3: $AA
    ld d, h                                       ; $51C4: $54
    ld b, h                                       ; $51C5: $44
    ld e, d                                       ; $51C6: $5A
    rst RST_38                                    ; $51C7: $FF
    rst RST_38                                    ; $51C8: $FF
    add a                                         ; $51C9: $87
    ld d, l                                       ; $51CA: $55
    or c                                          ; $51CB: $B1
    ld d, l                                       ; $51CC: $55
    add a                                         ; $51CD: $87
    ld d, l                                       ; $51CE: $55

jr_00A_51CF:
    or c                                          ; $51CF: $B1
    ld d, l                                       ; $51D0: $55
    rst RST_38                                    ; $51D1: $FF
    rst RST_38                                    ; $51D2: $FF
    nop                                           ; $51D3: $00
    ld bc, $0000                                  ; $51D4: $01 $00 $00
    ld b, b                                       ; $51D7: $40
    inc de                                        ; $51D8: $13
    db $DD                                        ; $51D9: $DD
    ld d, c                                       ; $51DA: $51
    ei                                            ; $51DB: $FB
    nop                                           ; $51DC: $00

jr_00A_51DD:
    rlca                                          ; $51DD: $07
    jr nz, jr_00A_51DD                            ; $51DE: $20 $FD

    nop                                           ; $51E0: $00
    jr nz, jr_00A_51E8                            ; $51E1: $20 $05

    ld [bc], a                                    ; $51E3: $02
    ld h, $0D                                     ; $51E4: $26 $0D
    inc b                                         ; $51E6: $04
    cpl                                           ; $51E7: $2F

jr_00A_51E8:
    push af                                       ; $51E8: $F5
    ld b, $30                                     ; $51E9: $06 $30
    db $FD                                        ; $51EB: $FD
    ld [$0530], sp                                ; $51EC: $08 $30 $05
    ld a, [bc]                                    ; $51EF: $0A
    add hl, sp                                    ; $51F0: $39
    dec c                                         ; $51F1: $0D
    inc c                                         ; $51F2: $0C
    nop                                           ; $51F3: $00
    ld bc, $E000                                  ; $51F4: $01 $00 $E0
    ld b, b                                       ; $51F7: $40
    inc de                                        ; $51F8: $13
    db $FD                                        ; $51F9: $FD
    ld d, c                                       ; $51FA: $51
    ei                                            ; $51FB: $FB
    nop                                           ; $51FC: $00

jr_00A_51FD:
    add hl, bc                                    ; $51FD: $09
    jr nz, jr_00A_51FD                            ; $51FE: $20 $FD

    nop                                           ; $5200: $00
    jr nz, @+$07                                  ; $5201: $20 $05

    ld [bc], a                                    ; $5203: $02
    dec h                                         ; $5204: $25
    dec c                                         ; $5205: $0D

jr_00A_5206:
    inc b                                         ; $5206: $04
    jr nc, jr_00A_5206                            ; $5207: $30 $FD

    ld b, $30                                     ; $5209: $06 $30
    dec b                                         ; $520B: $05
    ld [$F52E], sp                                ; $520C: $08 $2E $F5

jr_00A_520F:
    ld a, [bc]                                    ; $520F: $0A
    ld a, $F5                                     ; $5210: $3E $F5
    inc c                                         ; $5212: $0C
    add hl, sp                                    ; $5213: $39
    dec c                                         ; $5214: $0D
    ld c, $10                                     ; $5215: $0E $10
    ld bc, $0010                                  ; $5217: $01 $10 $00
    ld bc, $0000                                  ; $521A: $01 $00 $00
    ld b, d                                       ; $521D: $42
    inc de                                        ; $521E: $13
    inc hl                                        ; $521F: $23
    ld d, d                                       ; $5220: $52
    ei                                            ; $5221: $FB
    nop                                           ; $5222: $00
    dec b                                         ; $5223: $05
    jr nz, @-$09                                  ; $5224: $20 $F5

jr_00A_5226:
    nop                                           ; $5226: $00
    jr nz, jr_00A_5226                            ; $5227: $20 $FD

    ld [bc], a                                    ; $5229: $02
    jr nz, jr_00A_5231                            ; $522A: $20 $05

    inc b                                         ; $522C: $04
    jr nz, jr_00A_523C                            ; $522D: $20 $0D

    ld b, $10                                     ; $522F: $06 $10

jr_00A_5231:
    ld [bc], a                                    ; $5231: $02
    ld [$A000], sp                                ; $5232: $08 $00 $A0
    ld b, d                                       ; $5235: $42
    inc de                                        ; $5236: $13
    dec sp                                        ; $5237: $3B
    ld d, d                                       ; $5238: $52
    ei                                            ; $5239: $FB
    nop                                           ; $523A: $00
    inc b                                         ; $523B: $04

jr_00A_523C:
    jr nc, @-$09                                  ; $523C: $30 $F5

jr_00A_523E:
    nop                                           ; $523E: $00
    jr nc, jr_00A_523E                            ; $523F: $30 $FD

    ld [bc], a                                    ; $5241: $02
    jr nc, jr_00A_5249                            ; $5242: $30 $05

    inc b                                         ; $5244: $04
    jr nc, @+$0F                                  ; $5245: $30 $0D

    ld b, $00                                     ; $5247: $06 $00

jr_00A_5249:
    ld bc, $2000                                  ; $5249: $01 $00 $20
    ld b, e                                       ; $524C: $43
    inc de                                        ; $524D: $13
    ld d, d                                       ; $524E: $52
    ld d, d                                       ; $524F: $52
    rst RST_38                                    ; $5250: $FF
    nop                                           ; $5251: $00
    ld [$F223], sp                                ; $5252: $08 $23 $F2
    nop                                           ; $5255: $00
    inc hl                                        ; $5256: $23
    ld a, [$2302]                                 ; $5257: $FA $02 $23
    ld [bc], a                                    ; $525A: $02
    inc b                                         ; $525B: $04
    inc hl                                        ; $525C: $23
    ld a, [bc]                                    ; $525D: $0A
    ld b, $33                                     ; $525E: $06 $33
    or $08                                        ; $5260: $F6 $08
    inc sp                                        ; $5262: $33
    cp $0A                                        ; $5263: $FE $0A
    inc sp                                        ; $5265: $33
    ld b, $0C                                     ; $5266: $06 $0C
    dec sp                                        ; $5268: $3B
    ld c, $0E                                     ; $5269: $0E $0E
    nop                                           ; $526B: $00
    ld bc, $2000                                  ; $526C: $01 $00 $20
    ld b, h                                       ; $526F: $44
    inc de                                        ; $5270: $13
    ld [hl], l                                    ; $5271: $75
    ld d, d                                       ; $5272: $52
    rst RST_38                                    ; $5273: $FF
    nop                                           ; $5274: $00
    ld [$F124], sp                                ; $5275: $08 $24 $F1
    nop                                           ; $5278: $00
    inc h                                         ; $5279: $24
    ld sp, hl                                     ; $527A: $F9
    ld [bc], a                                    ; $527B: $02
    dec hl                                        ; $527C: $2B
    ld bc, $2E04                                  ; $527D: $01 $04 $2E
    add hl, bc                                    ; $5280: $09
    ld b, $34                                     ; $5281: $06 $34
    pop af                                        ; $5283: $F1
    ld [$F934], sp                                ; $5284: $08 $34 $F9
    ld a, [bc]                                    ; $5287: $0A
    dec sp                                        ; $5288: $3B
    ld bc, $3E0C                                  ; $5289: $01 $0C $3E
    add hl, bc                                    ; $528C: $09
    ld c, $00                                     ; $528D: $0E $00
    ld bc, $2000                                  ; $528F: $01 $00 $20
    ld b, l                                       ; $5292: $45
    inc de                                        ; $5293: $13
    sbc b                                         ; $5294: $98
    ld d, d                                       ; $5295: $52
    rst RST_38                                    ; $5296: $FF
    nop                                           ; $5297: $00
    add hl, bc                                    ; $5298: $09
    inc h                                         ; $5299: $24
    ldh a, [rP1]                                  ; $529A: $F0 $00
    inc h                                         ; $529C: $24
    ld hl, sp+$02                                 ; $529D: $F8 $02
    dec hl                                        ; $529F: $2B
    nop                                           ; $52A0: $00
    inc b                                         ; $52A1: $04
    dec l                                         ; $52A2: $2D
    ld [$3406], sp                                ; $52A3: $08 $06 $34
    ldh a, [$FF08]                                ; $52A6: $F0 $08
    inc [hl]                                      ; $52A8: $34
    ld hl, sp+$0A                                 ; $52A9: $F8 $0A
    dec sp                                        ; $52AB: $3B
    nop                                           ; $52AC: $00
    inc c                                         ; $52AD: $0C
    dec a                                         ; $52AE: $3D
    ld [$3B0E], sp                                ; $52AF: $08 $0E $3B
    db $10                                        ; $52B2: $10
    stop                                          ; $52B3: $10 $00
    rlca                                          ; $52B5: $07
    nop                                           ; $52B6: $00
    ld b, b                                       ; $52B7: $40
    ld b, [hl]                                    ; $52B8: $46
    inc de                                        ; $52B9: $13
    ret z                                         ; $52BA: $C8

    ld d, d                                       ; $52BB: $52
    db $FC                                        ; $52BC: $FC
    nop                                           ; $52BD: $00
    jr nz, jr_00A_52C7                            ; $52BE: $20 $07

    nop                                           ; $52C0: $00
    ld b, b                                       ; $52C1: $40
    ld b, [hl]                                    ; $52C2: $46
    inc de                                        ; $52C3: $13
    ret z                                         ; $52C4: $C8

    ld d, d                                       ; $52C5: $52
    inc b                                         ; $52C6: $04

jr_00A_52C7:
    nop                                           ; $52C7: $00
    ld b, $20                                     ; $52C8: $06 $20
    push af                                       ; $52CA: $F5

jr_00A_52CB:
    nop                                           ; $52CB: $00
    jr nz, jr_00A_52CB                            ; $52CC: $20 $FD

jr_00A_52CE:
    ld [bc], a                                    ; $52CE: $02
    jr nz, jr_00A_52D6                            ; $52CF: $20 $05

    inc b                                         ; $52D1: $04
    jr nc, jr_00A_52CE                            ; $52D2: $30 $FA

    ld b, $30                                     ; $52D4: $06 $30

jr_00A_52D6:
    ld [bc], a                                    ; $52D6: $02
    ld [$0A30], sp                                ; $52D7: $08 $30 $0A
    ld a, [bc]                                    ; $52DA: $0A
    nop                                           ; $52DB: $00
    ld [$0000], sp                                ; $52DC: $08 $00 $00
    ld b, a                                       ; $52DF: $47
    inc de                                        ; $52E0: $13
    push hl                                       ; $52E1: $E5
    ld d, d                                       ; $52E2: $52
    db $FC                                        ; $52E3: $FC
    dec bc                                        ; $52E4: $0B
    ld [$FD10], sp                                ; $52E5: $08 $10 $FD
    nop                                           ; $52E8: $00
    db $10                                        ; $52E9: $10
    dec b                                         ; $52EA: $05
    ld [bc], a                                    ; $52EB: $02
    dec d                                         ; $52EC: $15
    dec c                                         ; $52ED: $0D
    inc b                                         ; $52EE: $04
    dec e                                         ; $52EF: $1D
    or $06                                        ; $52F0: $F6 $06

jr_00A_52F2:
    jr nz, jr_00A_52F2                            ; $52F2: $20 $FE

    ld [$0620], sp                                ; $52F4: $08 $20 $06
    ld a, [bc]                                    ; $52F7: $0A
    dec l                                         ; $52F8: $2D
    ld a, [$300C]                                 ; $52F9: $FA $0C $30
    dec b                                         ; $52FC: $05
    ld c, $00                                     ; $52FD: $0E $00
    ld bc, $0000                                  ; $52FF: $01 $00 $00
    ld c, b                                       ; $5302: $48
    inc de                                        ; $5303: $13
    ld [de], a                                    ; $5304: $12
    ld d, e                                       ; $5305: $53
    ei                                            ; $5306: $FB
    nop                                           ; $5307: $00
    nop                                           ; $5308: $00
    ld [$0000], sp                                ; $5309: $08 $00 $00

jr_00A_530C:
    ld c, b                                       ; $530C: $48
    inc de                                        ; $530D: $13
    ld [de], a                                    ; $530E: $12
    ld d, e                                       ; $530F: $53
    ld sp, hl                                     ; $5310: $F9
    db $FC                                        ; $5311: $FC
    inc b                                         ; $5312: $04
    jr nz, jr_00A_530C                            ; $5313: $20 $F7

    nop                                           ; $5315: $00
    jr nz, @+$01                                  ; $5316: $20 $FF

    ld [bc], a                                    ; $5318: $02
    jr nz, jr_00A_5322                            ; $5319: $20 $07

    inc b                                         ; $531B: $04
    jr nz, jr_00A_532D                            ; $531C: $20 $0F

    ld b, $00                                     ; $531E: $06 $00
    add b                                         ; $5320: $80
    ld c, b                                       ; $5321: $48

jr_00A_5322:
    inc de                                        ; $5322: $13
    daa                                           ; $5323: $27
    ld d, e                                       ; $5324: $53
    ei                                            ; $5325: $FB
    nop                                           ; $5326: $00
    inc b                                         ; $5327: $04
    jr nc, jr_00A_5322                            ; $5328: $30 $F8

    nop                                           ; $532A: $00
    jr nc, jr_00A_532D                            ; $532B: $30 $00

jr_00A_532D:
    ld [bc], a                                    ; $532D: $02
    jr nc, jr_00A_5338                            ; $532E: $30 $08

    inc b                                         ; $5330: $04
    jr nc, @+$12                                  ; $5331: $30 $10

    ld b, $00                                     ; $5333: $06 $00
    rlca                                          ; $5335: $07
    nop                                           ; $5336: $00
    nop                                           ; $5337: $00

jr_00A_5338:
    ld c, c                                       ; $5338: $49
    inc de                                        ; $5339: $13
    ld a, $53                                     ; $533A: $3E $53
    db $FD                                        ; $533C: $FD
    nop                                           ; $533D: $00
    rlca                                          ; $533E: $07
    ld a, [hl+]                                   ; $533F: $2A
    ldh a, [rP1]                                  ; $5340: $F0 $00
    ld h, $F8                                     ; $5342: $26 $F8
    ld [bc], a                                    ; $5344: $02
    jr z, jr_00A_5347                             ; $5345: $28 $00

jr_00A_5347:
    inc b                                         ; $5347: $04
    ld a, [de]                                    ; $5348: $1A
    ldh a, [rTMA]                                 ; $5349: $F0 $06
    ld [hl], $F8                                  ; $534B: $36 $F8
    ld [$0038], sp                                ; $534D: $08 $38 $00
    ld a, [bc]                                    ; $5350: $0A
    jr nc, jr_00A_535B                            ; $5351: $30 $08

    inc c                                         ; $5353: $0C
    nop                                           ; $5354: $00
    ldh [rOBP1], a                                ; $5355: $E0 $49

jr_00A_5357:
    inc de                                        ; $5357: $13
    ld e, h                                       ; $5358: $5C
    ld d, e                                       ; $5359: $53
    ld sp, hl                                     ; $535A: $F9

jr_00A_535B:
    inc b                                         ; $535B: $04
    inc b                                         ; $535C: $04
    jr z, jr_00A_5357                             ; $535D: $28 $F8

    nop                                           ; $535F: $00
    jr z, jr_00A_5362                             ; $5360: $28 $00

jr_00A_5362:
    ld [bc], a                                    ; $5362: $02
    jr z, jr_00A_536D                             ; $5363: $28 $08

    inc b                                         ; $5365: $04
    jr z, @+$12                                   ; $5366: $28 $10

    ld b, $00                                     ; $5368: $06 $00
    ld bc, $0000                                  ; $536A: $01 $00 $00

jr_00A_536D:
    ld c, a                                       ; $536D: $4F

jr_00A_536E:
    inc de                                        ; $536E: $13
    ld [hl], e                                    ; $536F: $73
    ld d, e                                       ; $5370: $53
    ei                                            ; $5371: $FB
    nop                                           ; $5372: $00
    inc b                                         ; $5373: $04
    jr nz, @-$09                                  ; $5374: $20 $F5

    nop                                           ; $5376: $00
    jr nc, jr_00A_536E                            ; $5377: $30 $F5

    ld [bc], a                                    ; $5379: $02
    jr z, @-$11                                   ; $537A: $28 $ED

    inc b                                         ; $537C: $04
    inc hl                                        ; $537D: $23
    push hl                                       ; $537E: $E5
    ld b, $00                                     ; $537F: $06 $00
    add b                                         ; $5381: $80
    ld c, a                                       ; $5382: $4F
    inc de                                        ; $5383: $13
    adc b                                         ; $5384: $88
    ld d, e                                       ; $5385: $53
    ei                                            ; $5386: $FB
    nop                                           ; $5387: $00
    ld b, $20                                     ; $5388: $06 $20
    db $FD                                        ; $538A: $FD
    nop                                           ; $538B: $00
    jr nz, @+$07                                  ; $538C: $20 $05

    ld [bc], a                                    ; $538E: $02
    ld h, $0D                                     ; $538F: $26 $0D

jr_00A_5391:
    inc b                                         ; $5391: $04
    jr nc, jr_00A_5391                            ; $5392: $30 $FD

    ld b, $30                                     ; $5394: $06 $30
    dec b                                         ; $5396: $05
    ld [$0D3A], sp                                ; $5397: $08 $3A $0D
    ld a, [bc]                                    ; $539A: $0A
    nop                                           ; $539B: $00
    ld bc, $4000                                  ; $539C: $01 $00 $40
    ld d, b                                       ; $539F: $50
    inc de                                        ; $53A0: $13
    xor a                                         ; $53A1: $AF
    ld d, e                                       ; $53A2: $53
    ei                                            ; $53A3: $FB
    nop                                           ; $53A4: $00
    nop                                           ; $53A5: $00
    ld bc, $4000                                  ; $53A6: $01 $00 $40
    ld d, b                                       ; $53A9: $50

jr_00A_53AA:
    inc de                                        ; $53AA: $13
    xor a                                         ; $53AB: $AF
    ld d, e                                       ; $53AC: $53
    ei                                            ; $53AD: $FB
    nop                                           ; $53AE: $00
    inc b                                         ; $53AF: $04
    jr nz, @-$09                                  ; $53B0: $20 $F5

    nop                                           ; $53B2: $00
    jr nc, jr_00A_53AA                            ; $53B3: $30 $F5

    ld [bc], a                                    ; $53B5: $02
    add hl, hl                                    ; $53B6: $29
    db $ED                                        ; $53B7: $ED
    inc b                                         ; $53B8: $04
    ld hl, $06E5                                  ; $53B9: $21 $E5 $06
    nop                                           ; $53BC: $00
    ld bc, $C067                                  ; $53BD: $01 $67 $C0
    ld d, b                                       ; $53C0: $50

jr_00A_53C1:
    inc de                                        ; $53C1: $13
    add $53                                       ; $53C2: $C6 $53
    ei                                            ; $53C4: $FB
    nop                                           ; $53C5: $00
    inc b                                         ; $53C6: $04
    jr nz, @-$09                                  ; $53C7: $20 $F5

    nop                                           ; $53C9: $00
    jr nc, jr_00A_53C1                            ; $53CA: $30 $F5

    ld [bc], a                                    ; $53CC: $02
    ld h, $ED                                     ; $53CD: $26 $ED
    inc b                                         ; $53CF: $04
    ld e, $E5                                     ; $53D0: $1E $E5
    ld b, $00                                     ; $53D2: $06 $00
    ld bc, $4000                                  ; $53D4: $01 $00 $40
    ld d, c                                       ; $53D7: $51
    inc de                                        ; $53D8: $13
    db $DD                                        ; $53D9: $DD
    ld d, e                                       ; $53DA: $53
    ld a, [$0900]                                 ; $53DB: $FA $00 $09
    cpl                                           ; $53DE: $2F
    ld a, [$2700]                                 ; $53DF: $FA $00 $27
    ld [bc], a                                    ; $53E2: $02
    ld [bc], a                                    ; $53E3: $02
    rra                                           ; $53E4: $1F
    ld a, [bc]                                    ; $53E5: $0A
    inc b                                         ; $53E6: $04
    ld h, $12                                     ; $53E7: $26 $12
    ld b, $28                                     ; $53E9: $06 $28
    ld a, [de]                                    ; $53EB: $1A
    ld [$0237], sp                                ; $53EC: $08 $37 $02
    ld a, [bc]                                    ; $53EF: $0A
    cpl                                           ; $53F0: $2F
    ld a, [bc]                                    ; $53F1: $0A
    inc c                                         ; $53F2: $0C
    ld d, $12                                     ; $53F3: $16 $12
    ld c, $3F                                     ; $53F5: $0E $3F
    ld a, [$0010]                                 ; $53F7: $FA $10 $00
    rlca                                          ; $53FA: $07
    ld l, b                                       ; $53FB: $68
    ld h, b                                       ; $53FC: $60
    ld d, d                                       ; $53FD: $52
    inc de                                        ; $53FE: $13
    dec c                                         ; $53FF: $0D
    ld d, h                                       ; $5400: $54
    db $FD                                        ; $5401: $FD
    ld a, [bc]                                    ; $5402: $0A
    nop                                           ; $5403: $00
    ld [$606D], sp                                ; $5404: $08 $6D $60
    ld d, d                                       ; $5407: $52
    inc de                                        ; $5408: $13
    dec c                                         ; $5409: $0D
    ld d, h                                       ; $540A: $54
    db $FD                                        ; $540B: $FD
    inc b                                         ; $540C: $04
    ld [$F529], sp                                ; $540D: $08 $29 $F5

jr_00A_5410:
    nop                                           ; $5410: $00
    jr nz, jr_00A_5410                            ; $5411: $20 $FD

    ld [bc], a                                    ; $5413: $02
    dec e                                         ; $5414: $1D
    dec b                                         ; $5415: $05
    inc b                                         ; $5416: $04
    inc hl                                        ; $5417: $23
    dec c                                         ; $5418: $0D
    ld b, $30                                     ; $5419: $06 $30
    db $FD                                        ; $541B: $FD
    ld [$052D], sp                                ; $541C: $08 $2D $05
    ld a, [bc]                                    ; $541F: $0A
    inc de                                        ; $5420: $13
    dec c                                         ; $5421: $0D
    inc c                                         ; $5422: $0C
    ld hl, $0E15                                  ; $5423: $21 $15 $0E
    nop                                           ; $5426: $00
    ld bc, $6000                                  ; $5427: $01 $00 $60
    ld d, e                                       ; $542A: $53
    inc de                                        ; $542B: $13
    ld a, [hl-]                                   ; $542C: $3A
    ld d, h                                       ; $542D: $54
    push af                                       ; $542E: $F5
    nop                                           ; $542F: $00
    nop                                           ; $5430: $00
    ld bc, $6005                                  ; $5431: $01 $05 $60
    ld d, e                                       ; $5434: $53
    inc de                                        ; $5435: $13
    ld a, [hl-]                                   ; $5436: $3A
    ld d, h                                       ; $5437: $54
    push af                                       ; $5438: $F5
    nop                                           ; $5439: $00
    add hl, bc                                    ; $543A: $09
    ld [hl+], a                                   ; $543B: $22
    db $FD                                        ; $543C: $FD
    nop                                           ; $543D: $00
    jr nz, @+$07                                  ; $543E: $20 $05

    ld [bc], a                                    ; $5440: $02
    dec h                                         ; $5441: $25
    dec c                                         ; $5442: $0D
    inc b                                         ; $5443: $04
    ld h, $15                                     ; $5444: $26 $15
    ld b, $21                                     ; $5446: $06 $21
    dec e                                         ; $5448: $1D
    ld [$FD32], sp                                ; $5449: $08 $32 $FD
    ld a, [bc]                                    ; $544C: $0A
    jr nc, jr_00A_5454                            ; $544D: $30 $05

    inc c                                         ; $544F: $0C
    dec [hl]                                      ; $5450: $35
    dec c                                         ; $5451: $0D
    ld c, $3A                                     ; $5452: $0E $3A

jr_00A_5454:
    dec d                                         ; $5454: $15
    stop                                          ; $5455: $10 $00
    ld bc, $8000                                  ; $5457: $01 $00 $80
    ld d, h                                       ; $545A: $54
    inc de                                        ; $545B: $13
    ld l, d                                       ; $545C: $6A
    ld d, h                                       ; $545D: $54
    push af                                       ; $545E: $F5
    nop                                           ; $545F: $00
    nop                                           ; $5460: $00
    ld bc, $8005                                  ; $5461: $01 $05 $80
    ld d, h                                       ; $5464: $54
    inc de                                        ; $5465: $13
    ld l, d                                       ; $5466: $6A
    ld d, h                                       ; $5467: $54
    push af                                       ; $5468: $F5
    nop                                           ; $5469: $00
    add hl, bc                                    ; $546A: $09
    inc hl                                        ; $546B: $23
    db $F4                                        ; $546C: $F4
    nop                                           ; $546D: $00
    ld d, $FE                                     ; $546E: $16 $FE
    ld [bc], a                                    ; $5470: $02
    ld d, $06                                     ; $5471: $16 $06
    inc b                                         ; $5473: $04
    ld h, $FC                                     ; $5474: $26 $FC
    ld b, $26                                     ; $5476: $06 $26
    inc b                                         ; $5478: $04
    ld [$0C26], sp                                ; $5479: $08 $26 $0C
    ld a, [bc]                                    ; $547C: $0A
    ld [hl], $FF                                  ; $547D: $36 $FF
    inc c                                         ; $547F: $0C
    ld [hl], $07                                  ; $5480: $36 $07
    ld c, $36                                     ; $5482: $0E $36
    rrca                                          ; $5484: $0F
    stop                                          ; $5485: $10 $00
    ld bc, $A069                                  ; $5487: $01 $69 $A0
    ld d, l                                       ; $548A: $55
    inc de                                        ; $548B: $13
    sbc d                                         ; $548C: $9A
    ld d, h                                       ; $548D: $54
    push af                                       ; $548E: $F5
    nop                                           ; $548F: $00
    nop                                           ; $5490: $00
    ld bc, $A005                                  ; $5491: $01 $05 $A0
    ld d, l                                       ; $5494: $55
    inc de                                        ; $5495: $13
    sbc d                                         ; $5496: $9A
    ld d, h                                       ; $5497: $54
    push af                                       ; $5498: $F5
    nop                                           ; $5499: $00

jr_00A_549A:
    dec b                                         ; $549A: $05
    jr nc, jr_00A_549A                            ; $549B: $30 $FD

jr_00A_549D:
    nop                                           ; $549D: $00
    jr nz, jr_00A_549D                            ; $549E: $20 $FD

    ld [bc], a                                    ; $54A0: $02
    inc h                                         ; $54A1: $24
    push af                                       ; $54A2: $F5
    inc b                                         ; $54A3: $04
    daa                                           ; $54A4: $27
    db $ED                                        ; $54A5: $ED
    ld b, $27                                     ; $54A6: $06 $27
    push hl                                       ; $54A8: $E5
    ld [$4000], sp                                ; $54A9: $08 $00 $40
    ld d, [hl]                                    ; $54AC: $56
    inc de                                        ; $54AD: $13
    or d                                          ; $54AE: $B2
    ld d, h                                       ; $54AF: $54
    push af                                       ; $54B0: $F5
    nop                                           ; $54B1: $00
    dec b                                         ; $54B2: $05
    ld h, $05                                     ; $54B3: $26 $05
    nop                                           ; $54B5: $00
    ld [hl], $05                                  ; $54B6: $36 $05
    ld [bc], a                                    ; $54B8: $02
    ld a, [hl+]                                   ; $54B9: $2A
    dec c                                         ; $54BA: $0D
    inc b                                         ; $54BB: $04
    ld a, [de]                                    ; $54BC: $1A
    dec c                                         ; $54BD: $0D
    ld b, $32                                     ; $54BE: $06 $32
    dec d                                         ; $54C0: $15
    ld [$0700], sp                                ; $54C1: $08 $00 $07
    nop                                           ; $54C4: $00
    ldh [rRP], a                                  ; $54C5: $E0 $56
    inc de                                        ; $54C7: $13
    call z, $F454                                 ; $54C8: $CC $54 $F4
    nop                                           ; $54CB: $00
    inc b                                         ; $54CC: $04
    dec hl                                        ; $54CD: $2B
    db $FD                                        ; $54CE: $FD
    nop                                           ; $54CF: $00
    dec de                                        ; $54D0: $1B
    db $FD                                        ; $54D1: $FD
    ld [bc], a                                    ; $54D2: $02
    daa                                           ; $54D3: $27
    push af                                       ; $54D4: $F5
    inc b                                         ; $54D5: $04
    cpl                                           ; $54D6: $2F
    db $ED                                        ; $54D7: $ED
    ld b, $00                                     ; $54D8: $06 $00
    ld h, b                                       ; $54DA: $60
    ld d, a                                       ; $54DB: $57
    inc de                                        ; $54DC: $13
    pop hl                                        ; $54DD: $E1
    ld d, h                                       ; $54DE: $54
    db $F4                                        ; $54DF: $F4
    nop                                           ; $54E0: $00
    dec b                                         ; $54E1: $05
    dec h                                         ; $54E2: $25
    dec b                                         ; $54E3: $05
    nop                                           ; $54E4: $00
    dec [hl]                                      ; $54E5: $35
    dec b                                         ; $54E6: $05
    ld [bc], a                                    ; $54E7: $02
    dec l                                         ; $54E8: $2D
    dec c                                         ; $54E9: $0D
    inc b                                         ; $54EA: $04
    dec a                                         ; $54EB: $3D
    dec c                                         ; $54EC: $0D
    ld b, $33                                     ; $54ED: $06 $33
    dec d                                         ; $54EF: $15
    ld [$0700], sp                                ; $54F0: $08 $00 $07
    ld l, d                                       ; $54F3: $6A
    nop                                           ; $54F4: $00
    ld e, b                                       ; $54F5: $58
    inc de                                        ; $54F6: $13
    ei                                            ; $54F7: $FB
    ld d, h                                       ; $54F8: $54
    db $F4                                        ; $54F9: $F4
    nop                                           ; $54FA: $00
    inc b                                         ; $54FB: $04
    dec de                                        ; $54FC: $1B
    db $FD                                        ; $54FD: $FD
    nop                                           ; $54FE: $00
    dec hl                                        ; $54FF: $2B
    db $FD                                        ; $5500: $FD
    ld [bc], a                                    ; $5501: $02
    inc h                                         ; $5502: $24
    push af                                       ; $5503: $F5
    inc b                                         ; $5504: $04
    ld hl, $06ED                                  ; $5505: $21 $ED $06
    nop                                           ; $5508: $00
    ld c, d                                       ; $5509: $4A
    nop                                           ; $550A: $00
    add b                                         ; $550B: $80
    ld e, b                                       ; $550C: $58
    inc de                                        ; $550D: $13
    ld h, $55                                     ; $550E: $26 $55
    di                                            ; $5510: $F3
    nop                                           ; $5511: $00
    nop                                           ; $5512: $00
    ld [$8000], sp                                ; $5513: $08 $00 $80
    ld e, b                                       ; $5516: $58
    inc de                                        ; $5517: $13
    ld h, $55                                     ; $5518: $26 $55
    ei                                            ; $551A: $FB
    ei                                            ; $551B: $FB
    jr nz, jr_00A_5526                            ; $551C: $20 $08

    nop                                           ; $551E: $00
    add b                                         ; $551F: $80
    ld e, b                                       ; $5520: $58
    inc de                                        ; $5521: $13
    ld h, $55                                     ; $5522: $26 $55
    dec b                                         ; $5524: $05
    ei                                            ; $5525: $FB

jr_00A_5526:
    rlca                                          ; $5526: $07
    inc h                                         ; $5527: $24
    rst RST_30                                    ; $5528: $F7
    nop                                           ; $5529: $00
    inc h                                         ; $552A: $24
    rst RST_38                                    ; $552B: $FF
    ld [bc], a                                    ; $552C: $02
    jr z, @+$09                                   ; $552D: $28 $07

    inc b                                         ; $552F: $04
    inc [hl]                                      ; $5530: $34
    rst RST_30                                    ; $5531: $F7
    ld b, $34                                     ; $5532: $06 $34
    rst RST_38                                    ; $5534: $FF
    ld [$0738], sp                                ; $5535: $08 $38 $07
    ld a, [bc]                                    ; $5538: $0A
    dec [hl]                                      ; $5539: $35
    rrca                                          ; $553A: $0F
    inc c                                         ; $553B: $0C
    nop                                           ; $553C: $00
    ld c, d                                       ; $553D: $4A
    ld l, e                                       ; $553E: $6B
    ld h, b                                       ; $553F: $60
    ld e, c                                       ; $5540: $59
    inc de                                        ; $5541: $13
    ld d, b                                       ; $5542: $50
    ld d, l                                       ; $5543: $55
    di                                            ; $5544: $F3
    nop                                           ; $5545: $00
    nop                                           ; $5546: $00
    ld [$606E], sp                                ; $5547: $08 $6E $60
    ld e, c                                       ; $554A: $59
    inc de                                        ; $554B: $13
    ld d, b                                       ; $554C: $50
    ld d, l                                       ; $554D: $55
    rst RST_38                                    ; $554E: $FF
    ei                                            ; $554F: $FB
    ld [$F626], sp                                ; $5550: $08 $26 $F6
    nop                                           ; $5553: $00
    ld h, $FE                                     ; $5554: $26 $FE
    ld [bc], a                                    ; $5556: $02
    add hl, hl                                    ; $5557: $29
    ld b, $04                                     ; $5558: $06 $04
    ld a, [hl+]                                   ; $555A: $2A
    and $06                                       ; $555B: $E6 $06
    ld [hl-], a                                   ; $555D: $32
    xor $08                                       ; $555E: $EE $08
    ld [hl], $F6                                  ; $5560: $36 $F6
    ld a, [bc]                                    ; $5562: $0A
    ld [hl], $FE                                  ; $5563: $36 $FE
    inc c                                         ; $5565: $0C
    add hl, sp                                    ; $5566: $39
    ld b, $0E                                     ; $5567: $06 $0E
    nop                                           ; $5569: $00
    rlca                                          ; $556A: $07
    nop                                           ; $556B: $00
    ld h, b                                       ; $556C: $60
    ld e, d                                       ; $556D: $5A
    inc de                                        ; $556E: $13
    sub c                                         ; $556F: $91
    ld d, l                                       ; $5570: $55
    db $F4                                        ; $5571: $F4
    nop                                           ; $5572: $00
    nop                                           ; $5573: $00
    rlca                                          ; $5574: $07
    nop                                           ; $5575: $00
    ld h, b                                       ; $5576: $60
    ld e, d                                       ; $5577: $5A
    inc de                                        ; $5578: $13
    sub c                                         ; $5579: $91
    ld d, l                                       ; $557A: $55
    ld hl, sp+$00                                 ; $557B: $F8 $00
    nop                                           ; $557D: $00
    rlca                                          ; $557E: $07
    ld [hl], d                                    ; $557F: $72
    ld h, b                                       ; $5580: $60
    ld e, d                                       ; $5581: $5A
    inc de                                        ; $5582: $13
    sub c                                         ; $5583: $91
    ld d, l                                       ; $5584: $55
    ld hl, sp+$00                                 ; $5585: $F8 $00
    jr nz, jr_00A_558A                            ; $5587: $20 $01

    dec b                                         ; $5589: $05

jr_00A_558A:
    ld h, b                                       ; $558A: $60
    ld e, d                                       ; $558B: $5A

jr_00A_558C:
    inc de                                        ; $558C: $13
    sub c                                         ; $558D: $91
    ld d, l                                       ; $558E: $55
    inc c                                         ; $558F: $0C
    nop                                           ; $5590: $00
    dec b                                         ; $5591: $05
    ld l, $FD                                     ; $5592: $2E $FD
    nop                                           ; $5594: $00
    jr nc, jr_00A_558C                            ; $5595: $30 $F5

    ld [bc], a                                    ; $5597: $02
    dec [hl]                                      ; $5598: $35
    db $ED                                        ; $5599: $ED
    inc b                                         ; $559A: $04
    ld e, $FD                                     ; $559B: $1E $FD
    ld b, $20                                     ; $559D: $06 $20
    push af                                       ; $559F: $F5
    ld [$0000], sp                                ; $55A0: $08 $00 $00
    ld e, e                                       ; $55A3: $5B
    inc de                                        ; $55A4: $13
    cp c                                          ; $55A5: $B9
    ld d, l                                       ; $55A6: $55
    db $F4                                        ; $55A7: $F4
    nop                                           ; $55A8: $00
    nop                                           ; $55A9: $00
    nop                                           ; $55AA: $00
    ld e, e                                       ; $55AB: $5B
    inc de                                        ; $55AC: $13
    cp c                                          ; $55AD: $B9
    ld d, l                                       ; $55AE: $55
    ld hl, sp+$00                                 ; $55AF: $F8 $00
    jr nz, jr_00A_55B3                            ; $55B1: $20 $00

jr_00A_55B3:
    ld e, e                                       ; $55B3: $5B
    inc de                                        ; $55B4: $13
    cp c                                          ; $55B5: $B9
    ld d, l                                       ; $55B6: $55
    inc c                                         ; $55B7: $0C
    nop                                           ; $55B8: $00
    inc b                                         ; $55B9: $04
    inc l                                         ; $55BA: $2C
    dec b                                         ; $55BB: $05
    nop                                           ; $55BC: $00
    jr nc, jr_00A_55CC                            ; $55BD: $30 $0D

    ld [bc], a                                    ; $55BF: $02
    inc sp                                        ; $55C0: $33
    dec d                                         ; $55C1: $15
    inc b                                         ; $55C2: $04
    inc a                                         ; $55C3: $3C
    dec b                                         ; $55C4: $05
    ld b, $00                                     ; $55C5: $06 $00
    ld bc, $8000                                  ; $55C7: $01 $00 $80
    ld e, e                                       ; $55CA: $5B
    inc de                                        ; $55CB: $13

jr_00A_55CC:
    ret nc                                        ; $55CC: $D0

    ld d, l                                       ; $55CD: $55
    db $F4                                        ; $55CE: $F4
    nop                                           ; $55CF: $00
    rlca                                          ; $55D0: $07
    jr nc, @-$09                                  ; $55D1: $30 $F5

    nop                                           ; $55D3: $00
    ld l, $FD                                     ; $55D4: $2E $FD
    ld [bc], a                                    ; $55D6: $02
    jr nc, jr_00A_55DE                            ; $55D7: $30 $05

    inc b                                         ; $55D9: $04
    jr nc, @+$0F                                  ; $55DA: $30 $0D

    ld b, $20                                     ; $55DC: $06 $20

jr_00A_55DE:
    ld bc, $2008                                  ; $55DE: $01 $08 $20
    add hl, bc                                    ; $55E1: $09
    ld a, [bc]                                    ; $55E2: $0A
    inc [hl]                                      ; $55E3: $34
    dec d                                         ; $55E4: $15
    inc c                                         ; $55E5: $0C
    nop                                           ; $55E6: $00
    ld bc, $606C                                  ; $55E7: $01 $6C $60
    ld e, h                                       ; $55EA: $5C
    inc de                                        ; $55EB: $13
    ldh a, [rHDMA5]                               ; $55EC: $F0 $55
    db $F4                                        ; $55EE: $F4
    nop                                           ; $55EF: $00
    rlca                                          ; $55F0: $07
    ld e, $FD                                     ; $55F1: $1E $FD
    nop                                           ; $55F3: $00
    jr nz, @+$07                                  ; $55F4: $20 $05

    ld [bc], a                                    ; $55F6: $02
    jr nz, @+$0F                                  ; $55F7: $20 $0D

    inc b                                         ; $55F9: $04
    ld l, $FF                                     ; $55FA: $2E $FF
    ld b, $30                                     ; $55FC: $06 $30
    rlca                                          ; $55FE: $07
    ld [$0F30], sp                                ; $55FF: $08 $30 $0F
    ld a, [bc]                                    ; $5602: $0A
    db $10                                        ; $5603: $10
    ld bc, $000C                                  ; $5604: $01 $0C $00
    ld bc, $4005                                  ; $5607: $01 $05 $40
    ld e, l                                       ; $560A: $5D
    inc de                                        ; $560B: $13
    db $10                                        ; $560C: $10
    ld d, [hl]                                    ; $560D: $56
    ld hl, sp+$00                                 ; $560E: $F8 $00
    ld a, [bc]                                    ; $5610: $0A
    ld [de], a                                    ; $5611: $12
    db $EB                                        ; $5612: $EB
    nop                                           ; $5613: $00
    inc e                                         ; $5614: $1C
    di                                            ; $5615: $F3
    ld [bc], a                                    ; $5616: $02
    rra                                           ; $5617: $1F
    ei                                            ; $5618: $FB
    inc b                                         ; $5619: $04
    ld e, $03                                     ; $561A: $1E $03
    ld b, $20                                     ; $561C: $06 $20
    dec bc                                        ; $561E: $0B
    ld [$132B], sp                                ; $561F: $08 $2B $13
    ld a, [bc]                                    ; $5622: $0A
    ld sp, $0CFB                                  ; $5623: $31 $FB $0C
    ld l, $03                                     ; $5626: $2E $03
    ld c, $30                                     ; $5628: $0E $30
    dec bc                                        ; $562A: $0B
    db $10                                        ; $562B: $10
    ld a, $03                                     ; $562C: $3E $03
    ld [de], a                                    ; $562E: $12
    nop                                           ; $562F: $00
    ld bc, $8005                                  ; $5630: $01 $05 $80
    ld e, [hl]                                    ; $5633: $5E
    inc de                                        ; $5634: $13
    add hl, sp                                    ; $5635: $39
    ld d, [hl]                                    ; $5636: $56
    ld hl, sp+$00                                 ; $5637: $F8 $00
    dec bc                                        ; $5639: $0B
    ld h, $FB                                     ; $563A: $26 $FB
    nop                                           ; $563C: $00
    ld l, $03                                     ; $563D: $2E $03
    ld [bc], a                                    ; $563F: $02
    jr z, @+$0D                                   ; $5640: $28 $0B

    inc b                                         ; $5642: $04
    jr z, jr_00A_5658                             ; $5643: $28 $13

    ld b, $28                                     ; $5645: $06 $28
    dec de                                        ; $5647: $1B
    ld [$0B18], sp                                ; $5648: $08 $18 $0B
    ld a, [bc]                                    ; $564B: $0A
    jr jr_00A_5661                                ; $564C: $18 $13

    inc c                                         ; $564E: $0C
    ld e, $03                                     ; $564F: $1E $03
    ld c, $38                                     ; $5651: $0E $38
    dec bc                                        ; $5653: $0B
    db $10                                        ; $5654: $10
    jr c, jr_00A_566A                             ; $5655: $38 $13

    ld [de], a                                    ; $5657: $12

jr_00A_5658:
    inc sp                                        ; $5658: $33
    di                                            ; $5659: $F3
    inc d                                         ; $565A: $14
    nop                                           ; $565B: $00
    ld bc, $E000                                  ; $565C: $01 $00 $E0
    ld e, a                                       ; $565F: $5F
    inc de                                        ; $5660: $13

jr_00A_5661:
    ld l, a                                       ; $5661: $6F
    ld d, [hl]                                    ; $5662: $56
    ld hl, sp+$00                                 ; $5663: $F8 $00
    jr nz, jr_00A_5668                            ; $5665: $20 $01

    nop                                           ; $5667: $00

jr_00A_5668:
    ldh [$FF5F], a                                ; $5668: $E0 $5F

jr_00A_566A:
    inc de                                        ; $566A: $13
    ld l, a                                       ; $566B: $6F
    ld d, [hl]                                    ; $566C: $56
    ld [$0700], sp                                ; $566D: $08 $00 $07
    dec e                                         ; $5670: $1D
    or $00                                        ; $5671: $F6 $00
    inc e                                         ; $5673: $1C
    cp $02                                        ; $5674: $FE $02
    inc h                                         ; $5676: $24
    ld b, $04                                     ; $5677: $06 $04
    dec l                                         ; $5679: $2D
    ld c, $06                                     ; $567A: $0E $06
    inc l                                         ; $567C: $2C
    cp $08                                        ; $567D: $FE $08
    inc [hl]                                      ; $567F: $34
    ld b, $0A                                     ; $5680: $06 $0A
    dec a                                         ; $5682: $3D
    ld c, $0C                                     ; $5683: $0E $0C
    nop                                           ; $5685: $00
    ld [$C000], sp                                ; $5686: $08 $00 $C0
    ld h, b                                       ; $5689: $60
    inc de                                        ; $568A: $13
    adc a                                         ; $568B: $8F
    ld d, [hl]                                    ; $568C: $56
    ld hl, sp+$00                                 ; $568D: $F8 $00
    ld [$EF2D], sp                                ; $568F: $08 $2D $EF
    nop                                           ; $5692: $00
    daa                                           ; $5693: $27
    rst RST_30                                    ; $5694: $F7
    ld [bc], a                                    ; $5695: $02
    dec h                                         ; $5696: $25
    rst RST_38                                    ; $5697: $FF
    inc b                                         ; $5698: $04
    dec h                                         ; $5699: $25
    rlca                                          ; $569A: $07
    ld b, $2A                                     ; $569B: $06 $2A
    rrca                                          ; $569D: $0F
    ld [$F717], sp                                ; $569E: $08 $17 $F7
    ld a, [bc]                                    ; $56A1: $0A
    dec d                                         ; $56A2: $15
    rst RST_38                                    ; $56A3: $FF
    inc c                                         ; $56A4: $0C
    inc l                                         ; $56A5: $2C
    rla                                           ; $56A6: $17
    ld c, $00                                     ; $56A7: $0E $00
    ld bc, $C000                                  ; $56A9: $01 $00 $C0
    ld h, c                                       ; $56AC: $61
    inc de                                        ; $56AD: $13
    or d                                          ; $56AE: $B2
    ld d, [hl]                                    ; $56AF: $56
    ld hl, sp+$00                                 ; $56B0: $F8 $00
    rlca                                          ; $56B2: $07
    dec h                                         ; $56B3: $25
    ld a, [$2E00]                                 ; $56B4: $FA $00 $2E
    ld [bc], a                                    ; $56B7: $02
    ld [bc], a                                    ; $56B8: $02
    dec h                                         ; $56B9: $25
    ld a, [bc]                                    ; $56BA: $0A
    inc b                                         ; $56BB: $04
    dec h                                         ; $56BC: $25
    ld [de], a                                    ; $56BD: $12
    ld b, $1E                                     ; $56BE: $06 $1E
    ld [bc], a                                    ; $56C0: $02
    ld [$FA35], sp                                ; $56C1: $08 $35 $FA
    ld a, [bc]                                    ; $56C4: $0A
    ld [hl], $F2                                  ; $56C5: $36 $F2
    inc c                                         ; $56C7: $0C
    nop                                           ; $56C8: $00
    ld bc, $A000                                  ; $56C9: $01 $00 $A0
    ld h, d                                       ; $56CC: $62
    inc de                                        ; $56CD: $13
    jp nc, $FB56                                  ; $56CE: $D2 $56 $FB

    nop                                           ; $56D1: $00
    ld a, [bc]                                    ; $56D2: $0A
    db $10                                        ; $56D3: $10
    push af                                       ; $56D4: $F5
    nop                                           ; $56D5: $00
    db $10                                        ; $56D6: $10
    rst RST_38                                    ; $56D7: $FF
    ld [bc], a                                    ; $56D8: $02
    db $10                                        ; $56D9: $10
    rlca                                          ; $56DA: $07
    inc b                                         ; $56DB: $04
    inc e                                         ; $56DC: $1C
    inc c                                         ; $56DD: $0C
    ld b, $20                                     ; $56DE: $06 $20
    db $F4                                        ; $56E0: $F4

jr_00A_56E1:
    ld [$FC20], sp                                ; $56E1: $08 $20 $FC
    ld a, [bc]                                    ; $56E4: $0A
    jr nz, @+$06                                  ; $56E5: $20 $04

    inc c                                         ; $56E7: $0C
    jr nc, jr_00A_56E1                            ; $56E8: $30 $F7

    ld c, $30                                     ; $56EA: $0E $30
    rst RST_38                                    ; $56EC: $FF
    db $10                                        ; $56ED: $10
    ld sp, $1207                                  ; $56EE: $31 $07 $12
    nop                                           ; $56F1: $00
    ld bc, $E000                                  ; $56F2: $01 $00 $E0
    ld h, e                                       ; $56F5: $63
    inc de                                        ; $56F6: $13
    ei                                            ; $56F7: $FB
    ld d, [hl]                                    ; $56F8: $56
    ei                                            ; $56F9: $FB
    nop                                           ; $56FA: $00
    inc c                                         ; $56FB: $0C

jr_00A_56FC:
    db $10                                        ; $56FC: $10
    or $00                                        ; $56FD: $F6 $00
    db $10                                        ; $56FF: $10
    cp $02                                        ; $5700: $FE $02
    db $10                                        ; $5702: $10
    ld b, $04                                     ; $5703: $06 $04
    inc e                                         ; $5705: $1C
    ld c, $06                                     ; $5706: $0E $06
    jr nz, jr_00A_56FC                            ; $5708: $20 $F2

    ld [$FA20], sp                                ; $570A: $08 $20 $FA
    ld a, [bc]                                    ; $570D: $0A
    jr nz, @+$04                                  ; $570E: $20 $02

    inc c                                         ; $5710: $0C
    jr nz, jr_00A_571D                            ; $5711: $20 $0A

    ld c, $30                                     ; $5713: $0E $30
    push af                                       ; $5715: $F5

jr_00A_5716:
    db $10                                        ; $5716: $10
    jr nc, jr_00A_5716                            ; $5717: $30 $FD

    ld [de], a                                    ; $5719: $12
    jr nc, jr_00A_5721                            ; $571A: $30 $05

    inc d                                         ; $571C: $14

jr_00A_571D:
    jr c, @+$0F                                   ; $571D: $38 $0D

    ld d, $00                                     ; $571F: $16 $00

jr_00A_5721:
    ld bc, $6000                                  ; $5721: $01 $00 $60
    ld h, l                                       ; $5724: $65
    inc de                                        ; $5725: $13
    ld a, [hl+]                                   ; $5726: $2A
    ld d, a                                       ; $5727: $57
    db $EB                                        ; $5728: $EB
    nop                                           ; $5729: $00
    dec b                                         ; $572A: $05
    jr nz, jr_00A_5732                            ; $572B: $20 $05

    nop                                           ; $572D: $00
    jr nc, jr_00A_5735                            ; $572E: $30 $05

    ld [bc], a                                    ; $5730: $02
    cpl                                           ; $5731: $2F

jr_00A_5732:
    db $FD                                        ; $5732: $FD
    inc b                                         ; $5733: $04
    rra                                           ; $5734: $1F

jr_00A_5735:
    db $FD                                        ; $5735: $FD
    ld b, $23                                     ; $5736: $06 $23
    push af                                       ; $5738: $F5
    ld [$0100], sp                                ; $5739: $08 $00 $01
    nop                                           ; $573C: $00
    nop                                           ; $573D: $00
    ld h, [hl]                                    ; $573E: $66
    inc de                                        ; $573F: $13
    ld b, h                                       ; $5740: $44
    ld d, a                                       ; $5741: $57
    db $EB                                        ; $5742: $EB
    nop                                           ; $5743: $00
    ld b, $20                                     ; $5744: $06 $20
    dec b                                         ; $5746: $05
    nop                                           ; $5747: $00
    jr nc, jr_00A_574F                            ; $5748: $30 $05

    ld [bc], a                                    ; $574A: $02
    jr nc, @-$11                                  ; $574B: $30 $ED

    inc b                                         ; $574D: $04
    dec hl                                        ; $574E: $2B

jr_00A_574F:
    push af                                       ; $574F: $F5
    ld b, $25                                     ; $5750: $06 $25
    db $FD                                        ; $5752: $FD
    ld [$F51B], sp                                ; $5753: $08 $1B $F5
    ld a, [bc]                                    ; $5756: $0A
    nop                                           ; $5757: $00
    ld bc, $C066                                  ; $5758: $01 $66 $C0
    ld h, [hl]                                    ; $575B: $66
    inc de                                        ; $575C: $13
    ld h, c                                       ; $575D: $61
    ld d, a                                       ; $575E: $57
    db $EB                                        ; $575F: $EB
    nop                                           ; $5760: $00
    ld b, $22                                     ; $5761: $06 $22
    dec b                                         ; $5763: $05
    nop                                           ; $5764: $00
    ld [hl-], a                                   ; $5765: $32
    dec b                                         ; $5766: $05
    ld [bc], a                                    ; $5767: $02
    ld hl, $04FD                                  ; $5768: $21 $FD $04
    ld e, $F5                                     ; $576B: $1E $F5
    ld b, $2F                                     ; $576D: $06 $2F
    di                                            ; $576F: $F3
    ld [$EB27], sp                                ; $5770: $08 $27 $EB
    ld a, [bc]                                    ; $5773: $0A
    nop                                           ; $5774: $00
    ld bc, $8066                                  ; $5775: $01 $66 $80
    ld h, a                                       ; $5778: $67
    inc de                                        ; $5779: $13
    ld a, [hl]                                    ; $577A: $7E
    ld d, a                                       ; $577B: $57
    db $EB                                        ; $577C: $EB
    nop                                           ; $577D: $00
    ld b, $30                                     ; $577E: $06 $30
    dec b                                         ; $5780: $05
    nop                                           ; $5781: $00
    jr nz, @+$07                                  ; $5782: $20 $05

    ld [bc], a                                    ; $5784: $02
    ld [hl], $EB                                  ; $5785: $36 $EB
    inc b                                         ; $5787: $04
    ld [hl], $F3                                  ; $5788: $36 $F3
    ld b, $21                                     ; $578A: $06 $21
    db $FD                                        ; $578C: $FD
    ld [$F51E], sp                                ; $578D: $08 $1E $F5
    ld a, [bc]                                    ; $5790: $0A
    nop                                           ; $5791: $00
    ld bc, $4066                                  ; $5792: $01 $66 $40
    ld l, b                                       ; $5795: $68
    inc de                                        ; $5796: $13
    sbc e                                         ; $5797: $9B
    ld d, a                                       ; $5798: $57
    db $EB                                        ; $5799: $EB
    nop                                           ; $579A: $00
    ld b, $20                                     ; $579B: $06 $20
    dec b                                         ; $579D: $05
    nop                                           ; $579E: $00
    jr nc, jr_00A_57A6                            ; $579F: $30 $05

    ld [bc], a                                    ; $57A1: $02
    inc a                                         ; $57A2: $3C
    db $EB                                        ; $57A3: $EB
    inc b                                         ; $57A4: $04
    inc a                                         ; $57A5: $3C

jr_00A_57A6:
    di                                            ; $57A6: $F3
    ld b, $21                                     ; $57A7: $06 $21
    db $FD                                        ; $57A9: $FD
    ld [$F51E], sp                                ; $57AA: $08 $1E $F5
    ld a, [bc]                                    ; $57AD: $0A
    nop                                           ; $57AE: $00
    ld bc, $4000                                  ; $57AF: $01 $00 $40
    ld l, d                                       ; $57B2: $6A
    inc de                                        ; $57B3: $13
    cp b                                          ; $57B4: $B8
    ld d, a                                       ; $57B5: $57

jr_00A_57B6:
    ei                                            ; $57B6: $FB
    nop                                           ; $57B7: $00
    ld c, $30                                     ; $57B8: $0E $30
    push hl                                       ; $57BA: $E5
    nop                                           ; $57BB: $00
    jr nc, @-$11                                  ; $57BC: $30 $ED

    ld [bc], a                                    ; $57BE: $02
    jr nc, jr_00A_57B6                            ; $57BF: $30 $F5

jr_00A_57C1:
    inc b                                         ; $57C1: $04
    jr nc, jr_00A_57C1                            ; $57C2: $30 $FD

jr_00A_57C4:
    ld b, $30                                     ; $57C4: $06 $30
    dec b                                         ; $57C6: $05
    ld [$0D30], sp                                ; $57C7: $08 $30 $0D
    ld a, [bc]                                    ; $57CA: $0A
    jr z, @+$17                                   ; $57CB: $28 $15

    inc c                                         ; $57CD: $0C
    jr nz, jr_00A_57C4                            ; $57CE: $20 $F4

    ld c, $20                                     ; $57D0: $0E $20
    db $FC                                        ; $57D2: $FC
    db $10                                        ; $57D3: $10
    jr nz, jr_00A_57DA                            ; $57D4: $20 $04

    ld [de], a                                    ; $57D6: $12
    jr nz, @+$0E                                  ; $57D7: $20 $0C

    inc d                                         ; $57D9: $14

jr_00A_57DA:
    db $10                                        ; $57DA: $10
    ld hl, sp+$16                                 ; $57DB: $F8 $16
    stop                                          ; $57DD: $10 $00
    jr jr_00A_57F1                                ; $57DF: $18 $10

    ld [$001A], sp                                ; $57E1: $08 $1A $00
    ld bc, $0000                                  ; $57E4: $01 $00 $00
    ld l, c                                       ; $57E7: $69
    inc de                                        ; $57E8: $13
    db $ED                                        ; $57E9: $ED
    ld d, a                                       ; $57EA: $57
    ei                                            ; $57EB: $FB
    nop                                           ; $57EC: $00
    ld a, [bc]                                    ; $57ED: $0A
    ld e, $F4                                     ; $57EE: $1E $F4
    nop                                           ; $57F0: $00

jr_00A_57F1:
    ld e, $FC                                     ; $57F1: $1E $FC
    ld [bc], a                                    ; $57F3: $02
    inc e                                         ; $57F4: $1C
    inc b                                         ; $57F5: $04
    inc b                                         ; $57F6: $04
    inc e                                         ; $57F7: $1C
    inc c                                         ; $57F8: $0C
    ld b, $2E                                     ; $57F9: $06 $2E
    rst RST_30                                    ; $57FB: $F7
    ld [$FF2C], sp                                ; $57FC: $08 $2C $FF
    ld a, [bc]                                    ; $57FF: $0A
    inc l                                         ; $5800: $2C
    rlca                                          ; $5801: $07
    inc c                                         ; $5802: $0C
    ld a, $F7                                     ; $5803: $3E $F7
    ld c, $3C                                     ; $5805: $0E $3C
    rst RST_38                                    ; $5807: $FF
    db $10                                        ; $5808: $10
    inc a                                         ; $5809: $3C
    rlca                                          ; $580A: $07
    ld [de], a                                    ; $580B: $12
    nop                                           ; $580C: $00
    ld bc, $6000                                  ; $580D: $01 $00 $60
    ld c, d                                       ; $5810: $4A
    inc de                                        ; $5811: $13
    ld d, $58                                     ; $5812: $16 $58
    ei                                            ; $5814: $FB
    nop                                           ; $5815: $00
    dec b                                         ; $5816: $05
    jr nz, @-$09                                  ; $5817: $20 $F5

jr_00A_5819:
    nop                                           ; $5819: $00
    jr nz, jr_00A_5819                            ; $581A: $20 $FD

    ld [bc], a                                    ; $581C: $02
    jr nz, jr_00A_5824                            ; $581D: $20 $05

    inc b                                         ; $581F: $04
    jr nz, jr_00A_582F                            ; $5820: $20 $0D

    ld b, $10                                     ; $5822: $06 $10

jr_00A_5824:
    ld [bc], a                                    ; $5824: $02
    ld [$0100], sp                                ; $5825: $08 $00 $01
    nop                                           ; $5828: $00
    nop                                           ; $5829: $00
    ld c, e                                       ; $582A: $4B
    inc de                                        ; $582B: $13
    ld c, [hl]                                    ; $582C: $4E
    ld e, b                                       ; $582D: $58
    ei                                            ; $582E: $FB

jr_00A_582F:
    nop                                           ; $582F: $00
    jr nz, jr_00A_5833                            ; $5830: $20 $01

    nop                                           ; $5832: $00

jr_00A_5833:
    nop                                           ; $5833: $00
    ld c, e                                       ; $5834: $4B
    inc de                                        ; $5835: $13
    ld c, [hl]                                    ; $5836: $4E
    ld e, b                                       ; $5837: $58
    dec b                                         ; $5838: $05
    nop                                           ; $5839: $00
    ld b, b                                       ; $583A: $40
    ld bc, $0000                                  ; $583B: $01 $00 $00
    ld c, e                                       ; $583E: $4B
    inc de                                        ; $583F: $13
    ld c, [hl]                                    ; $5840: $4E
    ld e, b                                       ; $5841: $58
    ei                                            ; $5842: $FB
    inc b                                         ; $5843: $04
    ld h, b                                       ; $5844: $60
    ld bc, $0000                                  ; $5845: $01 $00 $00
    ld c, e                                       ; $5848: $4B
    inc de                                        ; $5849: $13
    ld c, [hl]                                    ; $584A: $4E
    ld e, b                                       ; $584B: $58
    dec b                                         ; $584C: $05
    inc b                                         ; $584D: $04
    ld [$F526], sp                                ; $584E: $08 $26 $F5

jr_00A_5851:
    nop                                           ; $5851: $00
    jr nz, jr_00A_5851                            ; $5852: $20 $FD

    ld [bc], a                                    ; $5854: $02
    ld hl, $0405                                  ; $5855: $21 $05 $04
    ld h, $0D                                     ; $5858: $26 $0D
    ld b, $36                                     ; $585A: $06 $36
    push af                                       ; $585C: $F5
    ld [$FD30], sp                                ; $585D: $08 $30 $FD
    ld a, [bc]                                    ; $5860: $0A
    ld sp, $0C05                                  ; $5861: $31 $05 $0C
    ld [hl], $0D                                  ; $5864: $36 $0D
    ld c, $00                                     ; $5866: $0E $00
    ld bc, $0000                                  ; $5868: $01 $00 $00
    ld c, h                                       ; $586B: $4C
    inc de                                        ; $586C: $13
    ld [hl], c                                    ; $586D: $71
    ld e, b                                       ; $586E: $58
    ld a, [$0700]                                 ; $586F: $FA $00 $07
    jr z, @-$13                                   ; $5872: $28 $EB

    nop                                           ; $5874: $00

jr_00A_5875:
    dec l                                         ; $5875: $2D
    di                                            ; $5876: $F3
    ld [bc], a                                    ; $5877: $02
    jr nz, jr_00A_5875                            ; $5878: $20 $FB

    inc b                                         ; $587A: $04
    jr nz, jr_00A_5880                            ; $587B: $20 $03

    ld b, $30                                     ; $587D: $06 $30
    ei                                            ; $587F: $FB

jr_00A_5880:
    ld [$0330], sp                                ; $5880: $08 $30 $03
    ld a, [bc]                                    ; $5883: $0A
    jr nc, @+$0D                                  ; $5884: $30 $0B

    inc c                                         ; $5886: $0C
    nop                                           ; $5887: $00
    inc e                                         ; $5888: $1C
    nop                                           ; $5889: $00
    ldh [$FF4C], a                                ; $588A: $E0 $4C
    inc de                                        ; $588C: $13
    sbc e                                         ; $588D: $9B
    ld e, b                                       ; $588E: $58
    db $FD                                        ; $588F: $FD

jr_00A_5890:
    ld [$1C60], sp                                ; $5890: $08 $60 $1C
    nop                                           ; $5893: $00
    ldh [$FF4C], a                                ; $5894: $E0 $4C
    inc de                                        ; $5896: $13
    sbc e                                         ; $5897: $9B
    ld e, b                                       ; $5898: $58
    dec bc                                        ; $5899: $0B
    db $F4                                        ; $589A: $F4

jr_00A_589B:
    add hl, bc                                    ; $589B: $09
    jr nz, jr_00A_5890                            ; $589C: $20 $F2

    nop                                           ; $589E: $00
    jr nz, jr_00A_589B                            ; $589F: $20 $FA

    ld [bc], a                                    ; $58A1: $02
    jr nz, @+$04                                  ; $58A2: $20 $02

    inc b                                         ; $58A4: $04
    jr nz, jr_00A_58B1                            ; $58A5: $20 $0A

    ld b, $22                                     ; $58A7: $06 $22
    ld [de], a                                    ; $58A9: $12

jr_00A_58AA:
    ld [$F230], sp                                ; $58AA: $08 $30 $F2
    ld a, [bc]                                    ; $58AD: $0A
    jr nc, jr_00A_58AA                            ; $58AE: $30 $FA

    inc c                                         ; $58B0: $0C

jr_00A_58B1:
    jr nc, jr_00A_58B5                            ; $58B1: $30 $02

    ld c, $30                                     ; $58B3: $0E $30

jr_00A_58B5:
    ld a, [bc]                                    ; $58B5: $0A
    stop                                          ; $58B6: $10 $00
    inc e                                         ; $58B8: $1C
    nop                                           ; $58B9: $00
    nop                                           ; $58BA: $00
    ld c, [hl]                                    ; $58BB: $4E
    inc de                                        ; $58BC: $13
    pop bc                                        ; $58BD: $C1
    ld e, b                                       ; $58BE: $58
    rst RST_38                                    ; $58BF: $FF
    ld bc, $3808                                  ; $58C0: $01 $08 $38
    db $EC                                        ; $58C3: $EC
    nop                                           ; $58C4: $00
    cpl                                           ; $58C5: $2F

jr_00A_58C6:
    db $F4                                        ; $58C6: $F4
    ld [bc], a                                    ; $58C7: $02
    jr nc, jr_00A_58C6                            ; $58C8: $30 $FC

    inc b                                         ; $58CA: $04
    jr nc, @+$06                                  ; $58CB: $30 $04

    ld b, $30                                     ; $58CD: $06 $30
    inc c                                         ; $58CF: $0C
    ld [$F43F], sp                                ; $58D0: $08 $3F $F4
    ld a, [bc]                                    ; $58D3: $0A
    ld b, b                                       ; $58D4: $40
    db $FC                                        ; $58D5: $FC
    inc c                                         ; $58D6: $0C
    ld b, b                                       ; $58D7: $40
    inc b                                         ; $58D8: $04
    ld c, $00                                     ; $58D9: $0E $00
    ld bc, $0000                                  ; $58DB: $01 $00 $00
    ld l, h                                       ; $58DE: $6C
    inc de                                        ; $58DF: $13
    db $E4                                        ; $58E0: $E4
    ld e, b                                       ; $58E1: $58
    push af                                       ; $58E2: $F5
    nop                                           ; $58E3: $00
    dec bc                                        ; $58E4: $0B
    inc hl                                        ; $58E5: $23
    push af                                       ; $58E6: $F5
    nop                                           ; $58E7: $00
    rla                                           ; $58E8: $17
    db $FD                                        ; $58E9: $FD
    ld [bc], a                                    ; $58EA: $02
    rla                                           ; $58EB: $17
    dec b                                         ; $58EC: $05
    inc b                                         ; $58ED: $04
    rla                                           ; $58EE: $17
    dec c                                         ; $58EF: $0D
    ld b, $27                                     ; $58F0: $06 $27
    db $FD                                        ; $58F2: $FD
    ld [$0527], sp                                ; $58F3: $08 $27 $05
    ld a, [bc]                                    ; $58F6: $0A
    daa                                           ; $58F7: $27
    dec c                                         ; $58F8: $0D
    inc c                                         ; $58F9: $0C
    scf                                           ; $58FA: $37
    rst RST_38                                    ; $58FB: $FF
    ld c, $37                                     ; $58FC: $0E $37
    rlca                                          ; $58FE: $07
    db $10                                        ; $58FF: $10
    scf                                           ; $5900: $37
    rrca                                          ; $5901: $0F
    ld [de], a                                    ; $5902: $12
    inc hl                                        ; $5903: $23
    db $ED                                        ; $5904: $ED
    inc d                                         ; $5905: $14
    nop                                           ; $5906: $00
    ld bc, $606F                                  ; $5907: $01 $6F $60
    ld l, l                                       ; $590A: $6D
    inc de                                        ; $590B: $13
    db $10                                        ; $590C: $10
    ld e, c                                       ; $590D: $59
    db $ED                                        ; $590E: $ED
    nop                                           ; $590F: $00
    dec bc                                        ; $5910: $0B
    daa                                           ; $5911: $27
    db $ED                                        ; $5912: $ED
    nop                                           ; $5913: $00
    daa                                           ; $5914: $27
    push af                                       ; $5915: $F5
    ld [bc], a                                    ; $5916: $02
    inc h                                         ; $5917: $24
    db $FD                                        ; $5918: $FD
    inc b                                         ; $5919: $04
    daa                                           ; $591A: $27
    dec b                                         ; $591B: $05
    ld b, $37                                     ; $591C: $06 $37
    dec b                                         ; $591E: $05
    ld [$EE17], sp                                ; $591F: $08 $17 $EE
    ld a, [bc]                                    ; $5922: $0A
    rla                                           ; $5923: $17
    or $0C                                        ; $5924: $F6 $0C
    inc d                                         ; $5926: $14
    cp $0E                                        ; $5927: $FE $0E
    rrca                                          ; $5929: $0F
    ld b, $10                                     ; $592A: $06 $10
    inc c                                         ; $592C: $0C
    ld c, $12                                     ; $592D: $0E $12
    rlca                                          ; $592F: $07
    or $14                                        ; $5930: $F6 $14
    nop                                           ; $5932: $00
    ld bc, $C000                                  ; $5933: $01 $00 $C0
    ld l, [hl]                                    ; $5936: $6E
    inc de                                        ; $5937: $13
    ld b, [hl]                                    ; $5938: $46
    ld e, c                                       ; $5939: $59
    push af                                       ; $593A: $F5
    nop                                           ; $593B: $00
    nop                                           ; $593C: $00
    ld bc, $C005                                  ; $593D: $01 $05 $C0
    ld l, [hl]                                    ; $5940: $6E
    inc de                                        ; $5941: $13
    ld b, [hl]                                    ; $5942: $46
    ld e, c                                       ; $5943: $59
    push af                                       ; $5944: $F5
    nop                                           ; $5945: $00
    db $10                                        ; $5946: $10
    inc hl                                        ; $5947: $23
    pop af                                        ; $5948: $F1
    nop                                           ; $5949: $00
    ld a, [hl+]                                   ; $594A: $2A
    ld sp, hl                                     ; $594B: $F9
    ld [bc], a                                    ; $594C: $02
    jr z, jr_00A_5950                             ; $594D: $28 $01

    inc b                                         ; $594F: $04

jr_00A_5950:
    inc e                                         ; $5950: $1C
    add hl, bc                                    ; $5951: $09
    ld b, $3A                                     ; $5952: $06 $3A
    ld sp, hl                                     ; $5954: $F9
    ld [$0138], sp                                ; $5955: $08 $38 $01
    ld a, [bc]                                    ; $5958: $0A
    inc l                                         ; $5959: $2C
    add hl, bc                                    ; $595A: $09
    inc c                                         ; $595B: $0C
    ld a, [de]                                    ; $595C: $1A
    ld sp, hl                                     ; $595D: $F9
    ld c, $18                                     ; $595E: $0E $18
    ld bc, $0C10                                  ; $5960: $01 $10 $0C
    add hl, bc                                    ; $5963: $09
    ld [de], a                                    ; $5964: $12
    jr nz, jr_00A_5978                            ; $5965: $20 $11

    inc d                                         ; $5967: $14
    inc h                                         ; $5968: $24
    add hl, de                                    ; $5969: $19
    ld d, $14                                     ; $596A: $16 $14
    add hl, de                                    ; $596C: $19
    jr jr_00A_597F                                ; $596D: $18 $10

    ld de, $301A                                  ; $596F: $11 $1A $30
    ld de, $001C                                  ; $5972: $11 $1C $00
    ld bc, $001E                                  ; $5975: $01 $1E $00

jr_00A_5978:
    ld bc, $C070                                  ; $5978: $01 $70 $C0
    ld [hl], b                                    ; $597B: $70
    inc de                                        ; $597C: $13
    adc e                                         ; $597D: $8B
    ld e, c                                       ; $597E: $59

jr_00A_597F:
    or $00                                        ; $597F: $F6 $00
    nop                                           ; $5981: $00
    ld bc, $C005                                  ; $5982: $01 $05 $C0
    ld [hl], b                                    ; $5985: $70
    inc de                                        ; $5986: $13
    adc e                                         ; $5987: $8B
    ld e, c                                       ; $5988: $59
    or $00                                        ; $5989: $F6 $00
    inc c                                         ; $598B: $0C
    ld h, $F2                                     ; $598C: $26 $F2
    nop                                           ; $598E: $00
    inc hl                                        ; $598F: $23
    ld a, [$2102]                                 ; $5990: $FA $02 $21
    ld [bc], a                                    ; $5993: $02
    inc b                                         ; $5994: $04
    rra                                           ; $5995: $1F
    ld a, [bc]                                    ; $5996: $0A
    ld b, $26                                     ; $5997: $06 $26
    ld [de], a                                    ; $5999: $12
    ld [$1A23], sp                                ; $599A: $08 $23 $1A
    ld a, [bc]                                    ; $599D: $0A
    ld sp, $0C02                                  ; $599E: $31 $02 $0C
    cpl                                           ; $59A1: $2F
    ld a, [bc]                                    ; $59A2: $0A
    ld c, $33                                     ; $59A3: $0E $33
    ld a, [$3610]                                 ; $59A5: $FA $10 $36
    ld [de], a                                    ; $59A8: $12
    ld [de], a                                    ; $59A9: $12
    ld d, $F2                                     ; $59AA: $16 $F2
    inc d                                         ; $59AC: $14
    ccf                                           ; $59AD: $3F
    ld a, [bc]                                    ; $59AE: $0A
    ld d, $00                                     ; $59AF: $16 $00
    ld bc, $4000                                  ; $59B1: $01 $00 $40
    ld [hl], d                                    ; $59B4: $72
    inc de                                        ; $59B5: $13
    cp d                                          ; $59B6: $BA
    ld e, c                                       ; $59B7: $59
    or $00                                        ; $59B8: $F6 $00
    ld a, [bc]                                    ; $59BA: $0A
    ld hl, $00F2                                  ; $59BB: $21 $F2 $00
    dec h                                         ; $59BE: $25
    ld a, [$2002]                                 ; $59BF: $FA $02 $20
    ld [bc], a                                    ; $59C2: $02
    inc b                                         ; $59C3: $04
    jr nz, jr_00A_59D0                            ; $59C4: $20 $0A

    ld b, $26                                     ; $59C6: $06 $26
    ld [de], a                                    ; $59C8: $12
    ld [$1236], sp                                ; $59C9: $08 $36 $12
    ld a, [bc]                                    ; $59CC: $0A
    jr nc, @+$04                                  ; $59CD: $30 $02

    inc c                                         ; $59CF: $0C

jr_00A_59D0:
    jr nc, @+$0C                                  ; $59D0: $30 $0A

    ld c, $3A                                     ; $59D2: $0E $3A
    ld a, [$1010]                                 ; $59D4: $FA $10 $10
    rlca                                          ; $59D7: $07
    ld [de], a                                    ; $59D8: $12
    nop                                           ; $59D9: $00
    ld bc, $8000                                  ; $59DA: $01 $00 $80
    ld [hl], e                                    ; $59DD: $73
    inc de                                        ; $59DE: $13
    db $E3                                        ; $59DF: $E3
    ld e, c                                       ; $59E0: $59
    push af                                       ; $59E1: $F5
    nop                                           ; $59E2: $00
    inc b                                         ; $59E3: $04
    rra                                           ; $59E4: $1F
    dec b                                         ; $59E5: $05
    nop                                           ; $59E6: $00
    cpl                                           ; $59E7: $2F
    dec b                                         ; $59E8: $05
    ld [bc], a                                    ; $59E9: $02
    dec h                                         ; $59EA: $25
    db $FD                                        ; $59EB: $FD
    inc b                                         ; $59EC: $04
    dec [hl]                                      ; $59ED: $35
    db $FD                                        ; $59EE: $FD
    ld b, $00                                     ; $59EF: $06 $00
    nop                                           ; $59F1: $00
    ld [hl], h                                    ; $59F2: $74
    inc de                                        ; $59F3: $13
    ld hl, sp+$59                                 ; $59F4: $F8 $59
    push af                                       ; $59F6: $F5
    nop                                           ; $59F7: $00
    ld [$0D1D], sp                                ; $59F8: $08 $1D $0D
    nop                                           ; $59FB: $00
    dec l                                         ; $59FC: $2D
    dec c                                         ; $59FD: $0D
    ld [bc], a                                    ; $59FE: $02
    ld e, $15                                     ; $59FF: $1E $15
    inc b                                         ; $5A01: $04
    ld l, $15                                     ; $5A02: $2E $15
    ld b, $23                                     ; $5A04: $06 $23
    dec e                                         ; $5A06: $1D
    ld [$1D33], sp                                ; $5A07: $08 $33 $1D
    ld a, [bc]                                    ; $5A0A: $0A
    dec a                                         ; $5A0B: $3D
    dec c                                         ; $5A0C: $0D
    inc c                                         ; $5A0D: $0C
    ld a, $15                                     ; $5A0E: $3E $15
    ld c, $00                                     ; $5A10: $0E $00
    rlca                                          ; $5A12: $07
    ld [hl], c                                    ; $5A13: $71
    nop                                           ; $5A14: $00
    ld [hl], l                                    ; $5A15: $75
    inc de                                        ; $5A16: $13
    dec de                                        ; $5A17: $1B
    ld e, d                                       ; $5A18: $5A
    nop                                           ; $5A19: $00
    nop                                           ; $5A1A: $00
    ld a, [bc]                                    ; $5A1B: $0A
    cpl                                           ; $5A1C: $2F
    push af                                       ; $5A1D: $F5
    nop                                           ; $5A1E: $00
    rra                                           ; $5A1F: $1F
    ld hl, sp+$02                                 ; $5A20: $F8 $02
    cpl                                           ; $5A22: $2F
    db $ED                                        ; $5A23: $ED
    inc b                                         ; $5A24: $04
    rra                                           ; $5A25: $1F
    ldh a, [rTMA]                                 ; $5A26: $F0 $06
    rra                                           ; $5A28: $1F
    add sp, $08                                   ; $5A29: $E8 $08
    cpl                                           ; $5A2B: $2F
    push hl                                       ; $5A2C: $E5
    ld a, [bc]                                    ; $5A2D: $0A
    inc d                                         ; $5A2E: $14
    db $FC                                        ; $5A2F: $FC
    inc c                                         ; $5A30: $0C
    ld [de], a                                    ; $5A31: $12
    inc b                                         ; $5A32: $04
    ld c, $0F                                     ; $5A33: $0E $0F
    db $F4                                        ; $5A35: $F4
    db $10                                        ; $5A36: $10
    db $10                                        ; $5A37: $10
    inc c                                         ; $5A38: $0C
    ld [de], a                                    ; $5A39: $12
    nop                                           ; $5A3A: $00
    ld bc, $E071                                  ; $5A3B: $01 $71 $E0
    halt                                          ; $5A3E: $76
    inc de                                        ; $5A3F: $13
    ld c, [hl]                                    ; $5A40: $4E
    ld e, d                                       ; $5A41: $5A
    ld sp, hl                                     ; $5A42: $F9
    inc bc                                        ; $5A43: $03

Jump_00A_5A44:
    jr nz, jr_00A_5A47                            ; $5A44: $20 $01

    dec b                                         ; $5A46: $05

jr_00A_5A47:
    ldh [rPCM12], a                               ; $5A47: $E0 $76
    inc de                                        ; $5A49: $13
    ld c, [hl]                                    ; $5A4A: $4E
    ld e, d                                       ; $5A4B: $5A
    rlca                                          ; $5A4C: $07
    inc bc                                        ; $5A4D: $03
    ld [$0019], sp                                ; $5A4E: $08 $19 $00
    nop                                           ; $5A51: $00
    add hl, de                                    ; $5A52: $19
    ld [$1902], sp                                ; $5A53: $08 $02 $19
    db $10                                        ; $5A56: $10
    inc b                                         ; $5A57: $04
    dec de                                        ; $5A58: $1B
    jr jr_00A_5A61                                ; $5A59: $18 $06

    add hl, hl                                    ; $5A5B: $29
    db $FC                                        ; $5A5C: $FC
    ld [$0429], sp                                ; $5A5D: $08 $29 $04
    ld a, [bc]                                    ; $5A60: $0A

jr_00A_5A61:
    add hl, hl                                    ; $5A61: $29
    inc c                                         ; $5A62: $0C
    inc c                                         ; $5A63: $0C
    ld [hl], $0E                                  ; $5A64: $36 $0E
    ld c, $C2                                     ; $5A66: $0E $C2
    ld e, a                                       ; $5A68: $5F
    rst RST_38                                    ; $5A69: $FF
    rst RST_38                                    ; $5A6A: $FF
    db $EB                                        ; $5A6B: $EB
    ld e, a                                       ; $5A6C: $5F
    add hl, bc                                    ; $5A6D: $09
    ld h, b                                       ; $5A6E: $60
    ld a, d                                       ; $5A6F: $7A
    ld h, [hl]                                    ; $5A70: $66
    add hl, bc                                    ; $5A71: $09
    ld h, b                                       ; $5A72: $60
    sbc [hl]                                      ; $5A73: $9E
    ld h, [hl]                                    ; $5A74: $66
    rst RST_38                                    ; $5A75: $FF
    rst RST_38                                    ; $5A76: $FF
    xor a                                         ; $5A77: $AF
    ld h, e                                       ; $5A78: $63
    pop hl                                        ; $5A79: $E1
    ld h, e                                       ; $5A7A: $63
    rst RST_38                                    ; $5A7B: $FF
    rst RST_38                                    ; $5A7C: $FF
    xor l                                         ; $5A7D: $AD
    ld e, l                                       ; $5A7E: $5D
    rst RST_38                                    ; $5A7F: $FF
    rst RST_38                                    ; $5A80: $FF
    reti                                          ; $5A81: $D9


    ld e, l                                       ; $5A82: $5D
    rst RST_38                                    ; $5A83: $FF
    rst RST_38                                    ; $5A84: $FF
    ld [$FF5E], sp                                ; $5A85: $08 $5E $FF
    rst RST_38                                    ; $5A88: $FF
    reti                                          ; $5A89: $D9


    ld e, l                                       ; $5A8A: $5D
    rst RST_38                                    ; $5A8B: $FF
    rst RST_38                                    ; $5A8C: $FF
    rst RST_38                                    ; $5A8D: $FF
    rst RST_38                                    ; $5A8E: $FF
    scf                                           ; $5A8F: $37
    ld e, [hl]                                    ; $5A90: $5E
    ld c, e                                       ; $5A91: $4B
    ld e, [hl]                                    ; $5A92: $5E
    ld l, h                                       ; $5A93: $6C
    ld e, [hl]                                    ; $5A94: $5E
    rst RST_38                                    ; $5A95: $FF
    rst RST_38                                    ; $5A96: $FF
    sub d                                         ; $5A97: $92
    ld e, [hl]                                    ; $5A98: $5E
    rst RST_38                                    ; $5A99: $FF
    rst RST_38                                    ; $5A9A: $FF
    ld l, h                                       ; $5A9B: $6C
    ld e, [hl]                                    ; $5A9C: $5E
    rst RST_38                                    ; $5A9D: $FF
    rst RST_38                                    ; $5A9E: $FF
    rst RST_38                                    ; $5A9F: $FF
    rst RST_38                                    ; $5AA0: $FF
    ld l, h                                       ; $5AA1: $6C
    ld e, [hl]                                    ; $5AA2: $5E
    rst RST_38                                    ; $5AA3: $FF
    rst RST_38                                    ; $5AA4: $FF
    sub d                                         ; $5AA5: $92
    ld e, [hl]                                    ; $5AA6: $5E
    rst RST_38                                    ; $5AA7: $FF
    rst RST_38                                    ; $5AA8: $FF
    ld l, h                                       ; $5AA9: $6C
    ld e, [hl]                                    ; $5AAA: $5E
    rst RST_38                                    ; $5AAB: $FF
    rst RST_38                                    ; $5AAC: $FF
    scf                                           ; $5AAD: $37
    ld e, [hl]                                    ; $5AAE: $5E
    ld c, e                                       ; $5AAF: $4B
    ld e, [hl]                                    ; $5AB0: $5E
    rst RST_38                                    ; $5AB1: $FF
    rst RST_38                                    ; $5AB2: $FF
    cp [hl]                                       ; $5AB3: $BE
    ld e, [hl]                                    ; $5AB4: $5E
    rst RST_38                                    ; $5AB5: $FF
    rst RST_38                                    ; $5AB6: $FF
    rst RST_38                                    ; $5AB7: $FF
    rst RST_38                                    ; $5AB8: $FF
    cp [hl]                                       ; $5AB9: $BE
    ld e, [hl]                                    ; $5ABA: $5E
    rst RST_38                                    ; $5ABB: $FF
    rst RST_38                                    ; $5ABC: $FF
    db $E4                                        ; $5ABD: $E4
    ld e, [hl]                                    ; $5ABE: $5E
    rst RST_38                                    ; $5ABF: $FF
    rst RST_38                                    ; $5AC0: $FF
    db $E4                                        ; $5AC1: $E4
    ld e, [hl]                                    ; $5AC2: $5E
    rst RST_38                                    ; $5AC3: $FF
    rst RST_38                                    ; $5AC4: $FF
    dec c                                         ; $5AC5: $0D
    ld e, a                                       ; $5AC6: $5F
    rst RST_38                                    ; $5AC7: $FF
    rst RST_38                                    ; $5AC8: $FF
    dec c                                         ; $5AC9: $0D
    ld e, a                                       ; $5ACA: $5F
    rst RST_38                                    ; $5ACB: $FF
    rst RST_38                                    ; $5ACC: $FF
    db $E4                                        ; $5ACD: $E4
    ld e, [hl]                                    ; $5ACE: $5E
    rst RST_38                                    ; $5ACF: $FF
    rst RST_38                                    ; $5AD0: $FF
    db $E4                                        ; $5AD1: $E4
    ld e, [hl]                                    ; $5AD2: $5E
    rst RST_38                                    ; $5AD3: $FF
    rst RST_38                                    ; $5AD4: $FF
    cp [hl]                                       ; $5AD5: $BE
    ld e, [hl]                                    ; $5AD6: $5E
    rst RST_38                                    ; $5AD7: $FF
    rst RST_38                                    ; $5AD8: $FF
    rst RST_38                                    ; $5AD9: $FF
    rst RST_38                                    ; $5ADA: $FF
    inc sp                                        ; $5ADB: $33
    ld e, a                                       ; $5ADC: $5F
    rst RST_38                                    ; $5ADD: $FF
    rst RST_38                                    ; $5ADE: $FF
    rst RST_38                                    ; $5ADF: $FF
    rst RST_38                                    ; $5AE0: $FF
    ld h, d                                       ; $5AE1: $62
    ld e, a                                       ; $5AE2: $5F
    adc h                                         ; $5AE3: $8C
    ld e, a                                       ; $5AE4: $5F
    rst RST_38                                    ; $5AE5: $FF
    rst RST_38                                    ; $5AE6: $FF
    ld l, h                                       ; $5AE7: $6C
    ld e, a                                       ; $5AE8: $5F
    and a                                         ; $5AE9: $A7
    ld e, a                                       ; $5AEA: $5F
    cp [hl]                                       ; $5AEB: $BE
    ld e, [hl]                                    ; $5AEC: $5E
    rst RST_38                                    ; $5AED: $FF
    rst RST_38                                    ; $5AEE: $FF
    rst RST_38                                    ; $5AEF: $FF
    rst RST_38                                    ; $5AF0: $FF
    jp nz, $FF5F                                  ; $5AF1: $C2 $5F $FF

    rst RST_38                                    ; $5AF4: $FF
    db $EB                                        ; $5AF5: $EB
    ld e, a                                       ; $5AF6: $5F
    add hl, bc                                    ; $5AF7: $09
    ld h, b                                       ; $5AF8: $60
    jp nz, $FF5F                                  ; $5AF9: $C2 $5F $FF

    rst RST_38                                    ; $5AFC: $FF
    rst RST_38                                    ; $5AFD: $FF
    rst RST_38                                    ; $5AFE: $FF
    dec l                                         ; $5AFF: $2D
    ld h, b                                       ; $5B00: $60
    rst RST_38                                    ; $5B01: $FF
    rst RST_38                                    ; $5B02: $FF
    ld e, c                                       ; $5B03: $59
    ld h, b                                       ; $5B04: $60
    rst RST_38                                    ; $5B05: $FF
    rst RST_38                                    ; $5B06: $FF
    dec l                                         ; $5B07: $2D
    ld h, b                                       ; $5B08: $60
    rst RST_38                                    ; $5B09: $FF
    rst RST_38                                    ; $5B0A: $FF
    rst RST_38                                    ; $5B0B: $FF
    rst RST_38                                    ; $5B0C: $FF
    jp nz, $FF5F                                  ; $5B0D: $C2 $5F $FF

    rst RST_38                                    ; $5B10: $FF
    ld a, d                                       ; $5B11: $7A
    ld h, [hl]                                    ; $5B12: $66
    add hl, bc                                    ; $5B13: $09
    ld h, b                                       ; $5B14: $60
    db $EB                                        ; $5B15: $EB
    ld e, a                                       ; $5B16: $5F
    add hl, bc                                    ; $5B17: $09
    ld h, b                                       ; $5B18: $60
    dec l                                         ; $5B19: $2D
    ld h, b                                       ; $5B1A: $60
    rst RST_38                                    ; $5B1B: $FF
    rst RST_38                                    ; $5B1C: $FF
    db $DD                                        ; $5B1D: $DD
    ld h, [hl]                                    ; $5B1E: $66
    ld b, $67                                     ; $5B1F: $06 $67
    ld e, c                                       ; $5B21: $59
    ld h, b                                       ; $5B22: $60
    rst RST_38                                    ; $5B23: $FF
    rst RST_38                                    ; $5B24: $FF
    jp nz, $FF5F                                  ; $5B25: $C2 $5F $FF

    rst RST_38                                    ; $5B28: $FF
    rst RST_38                                    ; $5B29: $FF
    rst RST_38                                    ; $5B2A: $FF
    adc e                                         ; $5B2B: $8B
    ld h, b                                       ; $5B2C: $60
    xor b                                         ; $5B2D: $A8
    ld h, b                                       ; $5B2E: $60
    push bc                                       ; $5B2F: $C5
    ld h, b                                       ; $5B30: $60
    ld hl, sp+$60                                 ; $5B31: $F8 $60
    adc e                                         ; $5B33: $8B
    ld h, b                                       ; $5B34: $60
    xor b                                         ; $5B35: $A8
    ld h, b                                       ; $5B36: $60
    rst RST_38                                    ; $5B37: $FF
    rst RST_38                                    ; $5B38: $FF
    dec c                                         ; $5B39: $0D
    ld h, c                                       ; $5B3A: $61
    xor b                                         ; $5B3B: $A8
    ld h, b                                       ; $5B3C: $60
    ld sp, $6161                                  ; $5B3D: $31 $61 $61
    ld h, c                                       ; $5B40: $61
    dec c                                         ; $5B41: $0D
    ld h, c                                       ; $5B42: $61
    xor b                                         ; $5B43: $A8
    ld h, b                                       ; $5B44: $60
    rst RST_38                                    ; $5B45: $FF
    rst RST_38                                    ; $5B46: $FF
    halt                                          ; $5B47: $76
    ld h, c                                       ; $5B48: $61
    rst RST_38                                    ; $5B49: $FF
    rst RST_38                                    ; $5B4A: $FF
    sbc a                                         ; $5B4B: $9F
    ld h, c                                       ; $5B4C: $61
    rst RST_38                                    ; $5B4D: $FF
    rst RST_38                                    ; $5B4E: $FF
    bit 4, c                                      ; $5B4F: $CB $61
    rst RST_38                                    ; $5B51: $FF
    rst RST_38                                    ; $5B52: $FF
    nop                                           ; $5B53: $00
    ld h, d                                       ; $5B54: $62
    rst RST_38                                    ; $5B55: $FF
    rst RST_38                                    ; $5B56: $FF
    dec c                                         ; $5B57: $0D
    ld h, c                                       ; $5B58: $61
    xor b                                         ; $5B59: $A8
    ld h, b                                       ; $5B5A: $60
    rst RST_38                                    ; $5B5B: $FF
    rst RST_38                                    ; $5B5C: $FF
    ld l, h                                       ; $5B5D: $6C
    ld e, a                                       ; $5B5E: $5F
    and a                                         ; $5B5F: $A7
    ld e, a                                       ; $5B60: $5F
    rst RST_08                                    ; $5B61: $CF
    ld h, b                                       ; $5B62: $60
    add hl, hl                                    ; $5B63: $29
    ld h, d                                       ; $5B64: $62
    rst RST_08                                    ; $5B65: $CF
    ld h, b                                       ; $5B66: $60
    add hl, hl                                    ; $5B67: $29
    ld h, d                                       ; $5B68: $62
    rst RST_08                                    ; $5B69: $CF
    ld h, b                                       ; $5B6A: $60
    add hl, hl                                    ; $5B6B: $29
    ld h, d                                       ; $5B6C: $62
    cp [hl]                                       ; $5B6D: $BE
    ld e, [hl]                                    ; $5B6E: $5E
    rst RST_38                                    ; $5B6F: $FF
    rst RST_38                                    ; $5B70: $FF
    rst RST_38                                    ; $5B71: $FF
    rst RST_38                                    ; $5B72: $FF
    rla                                           ; $5B73: $17
    ld h, c                                       ; $5B74: $61
    or b                                          ; $5B75: $B0
    ld h, b                                       ; $5B76: $60
    dec sp                                        ; $5B77: $3B
    ld h, c                                       ; $5B78: $61
    ld a, $62                                     ; $5B79: $3E $62
    dec sp                                        ; $5B7B: $3B
    ld h, c                                       ; $5B7C: $61
    ld a, $62                                     ; $5B7D: $3E $62
    dec sp                                        ; $5B7F: $3B
    ld h, c                                       ; $5B80: $61
    ld a, $62                                     ; $5B81: $3E $62
    cp [hl]                                       ; $5B83: $BE
    ld e, [hl]                                    ; $5B84: $5E
    rst RST_38                                    ; $5B85: $FF
    rst RST_38                                    ; $5B86: $FF
    rst RST_38                                    ; $5B87: $FF
    rst RST_38                                    ; $5B88: $FF
    jp nz, $FF5F                                  ; $5B89: $C2 $5F $FF

    rst RST_38                                    ; $5B8C: $FF
    add h                                         ; $5B8D: $84
    ld h, [hl]                                    ; $5B8E: $66
    add hl, bc                                    ; $5B8F: $09
    ld h, b                                       ; $5B90: $60
    ld d, e                                       ; $5B91: $53
    ld h, d                                       ; $5B92: $62
    rst RST_38                                    ; $5B93: $FF
    rst RST_38                                    ; $5B94: $FF
    ld a, a                                       ; $5B95: $7F
    ld h, d                                       ; $5B96: $62
    rst RST_38                                    ; $5B97: $FF
    rst RST_38                                    ; $5B98: $FF
    cp [hl]                                       ; $5B99: $BE
    ld h, d                                       ; $5B9A: $62
    rst RST_38                                    ; $5B9B: $FF
    rst RST_38                                    ; $5B9C: $FF
    db $ED                                        ; $5B9D: $ED
    ld h, d                                       ; $5B9E: $62
    rst RST_38                                    ; $5B9F: $FF
    rst RST_38                                    ; $5BA0: $FF
    ld [hl+], a                                   ; $5BA1: $22
    ld h, e                                       ; $5BA2: $63
    rst RST_38                                    ; $5BA3: $FF
    rst RST_38                                    ; $5BA4: $FF
    jp nz, $FF5F                                  ; $5BA5: $C2 $5F $FF

    rst RST_38                                    ; $5BA8: $FF
    rst RST_38                                    ; $5BA9: $FF
    rst RST_38                                    ; $5BAA: $FF
    ld c, [hl]                                    ; $5BAB: $4E
    ld h, e                                       ; $5BAC: $63
    rst RST_38                                    ; $5BAD: $FF
    rst RST_38                                    ; $5BAE: $FF
    cp [hl]                                       ; $5BAF: $BE
    ld e, [hl]                                    ; $5BB0: $5E
    rst RST_38                                    ; $5BB1: $FF
    rst RST_38                                    ; $5BB2: $FF
    rst RST_38                                    ; $5BB3: $FF
    rst RST_38                                    ; $5BB4: $FF
    db $E4                                        ; $5BB5: $E4
    ld e, [hl]                                    ; $5BB6: $5E
    rst RST_38                                    ; $5BB7: $FF
    rst RST_38                                    ; $5BB8: $FF
    dec c                                         ; $5BB9: $0D
    ld e, a                                       ; $5BBA: $5F
    rst RST_38                                    ; $5BBB: $FF
    rst RST_38                                    ; $5BBC: $FF
    cp [hl]                                       ; $5BBD: $BE
    ld e, [hl]                                    ; $5BBE: $5E
    rst RST_38                                    ; $5BBF: $FF
    rst RST_38                                    ; $5BC0: $FF
    rst RST_38                                    ; $5BC1: $FF
    rst RST_38                                    ; $5BC2: $FF
    inc sp                                        ; $5BC3: $33
    ld e, a                                       ; $5BC4: $5F
    rst RST_38                                    ; $5BC5: $FF
    rst RST_38                                    ; $5BC6: $FF
    ld a, d                                       ; $5BC7: $7A
    ld h, e                                       ; $5BC8: $63
    rst RST_38                                    ; $5BC9: $FF
    rst RST_38                                    ; $5BCA: $FF
    rst RST_38                                    ; $5BCB: $FF
    rst RST_38                                    ; $5BCC: $FF
    jp nz, $FF5F                                  ; $5BCD: $C2 $5F $FF

    rst RST_38                                    ; $5BD0: $FF
    db $EB                                        ; $5BD1: $EB
    ld e, a                                       ; $5BD2: $5F
    add hl, bc                                    ; $5BD3: $09
    ld h, b                                       ; $5BD4: $60
    ld a, d                                       ; $5BD5: $7A
    ld h, [hl]                                    ; $5BD6: $66
    add hl, bc                                    ; $5BD7: $09
    ld h, b                                       ; $5BD8: $60
    sbc [hl]                                      ; $5BD9: $9E
    ld h, [hl]                                    ; $5BDA: $66
    rst RST_38                                    ; $5BDB: $FF
    rst RST_38                                    ; $5BDC: $FF
    xor a                                         ; $5BDD: $AF
    ld h, e                                       ; $5BDE: $63
    pop hl                                        ; $5BDF: $E1
    ld h, e                                       ; $5BE0: $63
    jp nz, $FF5F                                  ; $5BE1: $C2 $5F $FF

    rst RST_38                                    ; $5BE4: $FF
    rst RST_38                                    ; $5BE5: $FF
    rst RST_38                                    ; $5BE6: $FF
    db $ED                                        ; $5BE7: $ED
    ld h, e                                       ; $5BE8: $63
    rst RST_38                                    ; $5BE9: $FF
    rst RST_38                                    ; $5BEA: $FF
    inc hl                                        ; $5BEB: $23
    ld h, h                                       ; $5BEC: $64
    rst RST_38                                    ; $5BED: $FF
    rst RST_38                                    ; $5BEE: $FF
    ld d, d                                       ; $5BEF: $52
    ld h, h                                       ; $5BF0: $64
    rst RST_38                                    ; $5BF1: $FF
    rst RST_38                                    ; $5BF2: $FF
    rst RST_38                                    ; $5BF3: $FF
    rst RST_38                                    ; $5BF4: $FF
    ld d, d                                       ; $5BF5: $52
    ld h, h                                       ; $5BF6: $64
    rst RST_38                                    ; $5BF7: $FF
    rst RST_38                                    ; $5BF8: $FF
    inc hl                                        ; $5BF9: $23
    ld h, h                                       ; $5BFA: $64
    rst RST_38                                    ; $5BFB: $FF
    rst RST_38                                    ; $5BFC: $FF
    db $ED                                        ; $5BFD: $ED
    ld h, e                                       ; $5BFE: $63
    rst RST_38                                    ; $5BFF: $FF
    rst RST_38                                    ; $5C00: $FF
    rst RST_38                                    ; $5C01: $FF
    rst RST_38                                    ; $5C02: $FF
    ld l, h                                       ; $5C03: $6C
    ld e, [hl]                                    ; $5C04: $5E
    rst RST_38                                    ; $5C05: $FF
    rst RST_38                                    ; $5C06: $FF
    add h                                         ; $5C07: $84
    ld h, h                                       ; $5C08: $64
    rst RST_38                                    ; $5C09: $FF
    rst RST_38                                    ; $5C0A: $FF
    cp a                                          ; $5C0B: $BF
    ld h, h                                       ; $5C0C: $64
    rst RST_38                                    ; $5C0D: $FF
    rst RST_38                                    ; $5C0E: $FF
    rst RST_38                                    ; $5C0F: $FF
    rst RST_38                                    ; $5C10: $FF
    cp [hl]                                       ; $5C11: $BE
    ld h, d                                       ; $5C12: $62
    rst RST_38                                    ; $5C13: $FF
    rst RST_38                                    ; $5C14: $FF
    db $ED                                        ; $5C15: $ED
    ld h, d                                       ; $5C16: $62
    rst RST_38                                    ; $5C17: $FF
    rst RST_38                                    ; $5C18: $FF
    ld [hl+], a                                   ; $5C19: $22
    ld h, e                                       ; $5C1A: $63
    rst RST_38                                    ; $5C1B: $FF
    rst RST_38                                    ; $5C1C: $FF
    cp $64                                        ; $5C1D: $FE $64
    rst RST_38                                    ; $5C1F: $FF
    rst RST_38                                    ; $5C20: $FF
    ld [hl], $65                                  ; $5C21: $36 $65
    ld d, a                                       ; $5C23: $57
    ld h, l                                       ; $5C24: $65
    ld b, b                                       ; $5C25: $40
    ld h, l                                       ; $5C26: $65
    ld d, a                                       ; $5C27: $57
    ld h, l                                       ; $5C28: $65
    rst RST_38                                    ; $5C29: $FF
    rst RST_38                                    ; $5C2A: $FF
    cp [hl]                                       ; $5C2B: $BE
    ld h, d                                       ; $5C2C: $62
    rst RST_38                                    ; $5C2D: $FF
    rst RST_38                                    ; $5C2E: $FF
    db $ED                                        ; $5C2F: $ED
    ld h, d                                       ; $5C30: $62
    rst RST_38                                    ; $5C31: $FF
    rst RST_38                                    ; $5C32: $FF
    ld [hl+], a                                   ; $5C33: $22
    ld h, e                                       ; $5C34: $63
    rst RST_38                                    ; $5C35: $FF
    rst RST_38                                    ; $5C36: $FF
    cp $64                                        ; $5C37: $FE $64
    rst RST_38                                    ; $5C39: $FF
    rst RST_38                                    ; $5C3A: $FF
    ld b, b                                       ; $5C3B: $40
    ld h, l                                       ; $5C3C: $65
    ld d, a                                       ; $5C3D: $57
    ld h, l                                       ; $5C3E: $65
    rst RST_38                                    ; $5C3F: $FF
    rst RST_38                                    ; $5C40: $FF
    adc [hl]                                      ; $5C41: $8E
    ld h, l                                       ; $5C42: $65
    rst RST_38                                    ; $5C43: $FF
    rst RST_38                                    ; $5C44: $FF
    rst RST_38                                    ; $5C45: $FF
    rst RST_38                                    ; $5C46: $FF
    adc [hl]                                      ; $5C47: $8E
    ld h, l                                       ; $5C48: $65
    rst RST_38                                    ; $5C49: $FF
    rst RST_38                                    ; $5C4A: $FF
    rst RST_38                                    ; $5C4B: $FF
    rst RST_38                                    ; $5C4C: $FF
    xor l                                         ; $5C4D: $AD
    ld e, l                                       ; $5C4E: $5D
    rst RST_38                                    ; $5C4F: $FF
    rst RST_38                                    ; $5C50: $FF
    adc [hl]                                      ; $5C51: $8E
    ld h, l                                       ; $5C52: $65
    rst RST_38                                    ; $5C53: $FF
    rst RST_38                                    ; $5C54: $FF
    cp d                                          ; $5C55: $BA
    ld h, l                                       ; $5C56: $65
    rst RST_38                                    ; $5C57: $FF
    rst RST_38                                    ; $5C58: $FF
    rst RST_38                                    ; $5C59: $FF
    rst RST_38                                    ; $5C5A: $FF
    ld bc, $FF66                                  ; $5C5B: $01 $66 $FF
    rst RST_38                                    ; $5C5E: $FF
    rst RST_38                                    ; $5C5F: $FF
    rst RST_38                                    ; $5C60: $FF
    adc [hl]                                      ; $5C61: $8E
    ld h, l                                       ; $5C62: $65
    rst RST_38                                    ; $5C63: $FF
    rst RST_38                                    ; $5C64: $FF
    db $E4                                        ; $5C65: $E4
    ld e, [hl]                                    ; $5C66: $5E
    rst RST_38                                    ; $5C67: $FF
    rst RST_38                                    ; $5C68: $FF
    db $E4                                        ; $5C69: $E4
    ld e, [hl]                                    ; $5C6A: $5E
    rst RST_38                                    ; $5C6B: $FF
    rst RST_38                                    ; $5C6C: $FF
    dec c                                         ; $5C6D: $0D
    ld e, a                                       ; $5C6E: $5F
    rst RST_38                                    ; $5C6F: $FF
    rst RST_38                                    ; $5C70: $FF
    dec c                                         ; $5C71: $0D
    ld e, a                                       ; $5C72: $5F
    rst RST_38                                    ; $5C73: $FF
    rst RST_38                                    ; $5C74: $FF
    db $E4                                        ; $5C75: $E4
    ld e, [hl]                                    ; $5C76: $5E
    rst RST_38                                    ; $5C77: $FF
    rst RST_38                                    ; $5C78: $FF
    cp [hl]                                       ; $5C79: $BE
    ld e, [hl]                                    ; $5C7A: $5E
    rst RST_38                                    ; $5C7B: $FF
    rst RST_38                                    ; $5C7C: $FF
    rst RST_38                                    ; $5C7D: $FF
    rst RST_38                                    ; $5C7E: $FF
    adc [hl]                                      ; $5C7F: $8E
    ld h, l                                       ; $5C80: $65
    rst RST_38                                    ; $5C81: $FF
    rst RST_38                                    ; $5C82: $FF
    inc h                                         ; $5C83: $24
    ld h, [hl]                                    ; $5C84: $66
    rst RST_38                                    ; $5C85: $FF
    rst RST_38                                    ; $5C86: $FF
    ld d, h                                       ; $5C87: $54
    ld h, [hl]                                    ; $5C88: $66
    rst RST_38                                    ; $5C89: $FF
    rst RST_38                                    ; $5C8A: $FF
    inc h                                         ; $5C8B: $24
    ld h, [hl]                                    ; $5C8C: $66
    rst RST_38                                    ; $5C8D: $FF
    rst RST_38                                    ; $5C8E: $FF
    ld d, h                                       ; $5C8F: $54
    ld h, [hl]                                    ; $5C90: $66
    rst RST_38                                    ; $5C91: $FF
    rst RST_38                                    ; $5C92: $FF
    rst RST_38                                    ; $5C93: $FF
    rst RST_38                                    ; $5C94: $FF
    cp d                                          ; $5C95: $BA
    ld h, l                                       ; $5C96: $65
    rst RST_38                                    ; $5C97: $FF
    rst RST_38                                    ; $5C98: $FF
    call nz, $FF65                                ; $5C99: $C4 $65 $FF
    rst RST_38                                    ; $5C9C: $FF
    adc $65                                       ; $5C9D: $CE $65
    rst RST_38                                    ; $5C9F: $FF
    rst RST_38                                    ; $5CA0: $FF
    ret c                                         ; $5CA1: $D8

    ld h, l                                       ; $5CA2: $65
    rst RST_38                                    ; $5CA3: $FF
    rst RST_38                                    ; $5CA4: $FF
    ret c                                         ; $5CA5: $D8

    ld h, l                                       ; $5CA6: $65
    rst RST_38                                    ; $5CA7: $FF
    rst RST_38                                    ; $5CA8: $FF
    inc h                                         ; $5CA9: $24
    ld h, [hl]                                    ; $5CAA: $66
    rst RST_38                                    ; $5CAB: $FF
    rst RST_38                                    ; $5CAC: $FF
    ld d, h                                       ; $5CAD: $54
    ld h, [hl]                                    ; $5CAE: $66
    rst RST_38                                    ; $5CAF: $FF
    rst RST_38                                    ; $5CB0: $FF
    rst RST_38                                    ; $5CB1: $FF
    rst RST_38                                    ; $5CB2: $FF
    adc [hl]                                      ; $5CB3: $8E
    ld h, l                                       ; $5CB4: $65
    rst RST_38                                    ; $5CB5: $FF
    rst RST_38                                    ; $5CB6: $FF
    inc h                                         ; $5CB7: $24
    ld h, [hl]                                    ; $5CB8: $66
    rst RST_38                                    ; $5CB9: $FF
    rst RST_38                                    ; $5CBA: $FF
    ld d, h                                       ; $5CBB: $54
    ld h, [hl]                                    ; $5CBC: $66
    rst RST_38                                    ; $5CBD: $FF
    rst RST_38                                    ; $5CBE: $FF
    rst RST_38                                    ; $5CBF: $FF
    rst RST_38                                    ; $5CC0: $FF
    ld l, $66                                     ; $5CC1: $2E $66
    rst RST_38                                    ; $5CC3: $FF
    rst RST_38                                    ; $5CC4: $FF
    rst RST_38                                    ; $5CC5: $FF
    rst RST_38                                    ; $5CC6: $FF
    cp [hl]                                       ; $5CC7: $BE
    ld e, [hl]                                    ; $5CC8: $5E
    rst RST_38                                    ; $5CC9: $FF
    rst RST_38                                    ; $5CCA: $FF
    cp [hl]                                       ; $5CCB: $BE
    ld e, [hl]                                    ; $5CCC: $5E
    rst RST_38                                    ; $5CCD: $FF
    rst RST_38                                    ; $5CCE: $FF
    rst RST_38                                    ; $5CCF: $FF
    rst RST_38                                    ; $5CD0: $FF
    jp nz, $FF5F                                  ; $5CD1: $C2 $5F $FF

    rst RST_38                                    ; $5CD4: $FF
    xor b                                         ; $5CD5: $A8
    ld h, [hl]                                    ; $5CD6: $66
    rst RST_38                                    ; $5CD7: $FF
    rst RST_38                                    ; $5CD8: $FF
    ld a, d                                       ; $5CD9: $7A
    ld h, [hl]                                    ; $5CDA: $66
    add hl, bc                                    ; $5CDB: $09
    ld h, b                                       ; $5CDC: $60
    rst RST_38                                    ; $5CDD: $FF
    rst RST_38                                    ; $5CDE: $FF
    jp nz, $FF5F                                  ; $5CDF: $C2 $5F $FF

    rst RST_38                                    ; $5CE2: $FF
    ld a, d                                       ; $5CE3: $7A
    ld h, [hl]                                    ; $5CE4: $66
    add hl, bc                                    ; $5CE5: $09
    ld h, b                                       ; $5CE6: $60
    sbc [hl]                                      ; $5CE7: $9E
    ld h, [hl]                                    ; $5CE8: $66
    rst RST_38                                    ; $5CE9: $FF
    rst RST_38                                    ; $5CEA: $FF
    ld a, d                                       ; $5CEB: $7A
    ld h, [hl]                                    ; $5CEC: $66
    add hl, bc                                    ; $5CED: $09
    ld h, b                                       ; $5CEE: $60
    jp nz, $FF5F                                  ; $5CEF: $C2 $5F $FF

    rst RST_38                                    ; $5CF2: $FF
    rst RST_38                                    ; $5CF3: $FF
    rst RST_38                                    ; $5CF4: $FF
    jp nz, $FF5F                                  ; $5CF5: $C2 $5F $FF

    rst RST_38                                    ; $5CF8: $FF
    push af                                       ; $5CF9: $F5
    ld e, a                                       ; $5CFA: $5F
    add hl, bc                                    ; $5CFB: $09
    ld h, b                                       ; $5CFC: $60
    ld a, d                                       ; $5CFD: $7A
    ld h, [hl]                                    ; $5CFE: $66
    add hl, bc                                    ; $5CFF: $09
    ld h, b                                       ; $5D00: $60
    sbc [hl]                                      ; $5D01: $9E
    ld h, [hl]                                    ; $5D02: $66
    rst RST_38                                    ; $5D03: $FF
    rst RST_38                                    ; $5D04: $FF
    ld a, d                                       ; $5D05: $7A
    ld h, [hl]                                    ; $5D06: $66
    add hl, bc                                    ; $5D07: $09
    ld h, b                                       ; $5D08: $60
    rst RST_38                                    ; $5D09: $FF
    rst RST_38                                    ; $5D0A: $FF
    jp nz, $FF5F                                  ; $5D0B: $C2 $5F $FF

    rst RST_38                                    ; $5D0E: $FF
    ld c, [hl]                                    ; $5D0F: $4E
    ld h, e                                       ; $5D10: $63
    rst RST_38                                    ; $5D11: $FF
    rst RST_38                                    ; $5D12: $FF
    db $DD                                        ; $5D13: $DD
    ld h, [hl]                                    ; $5D14: $66
    ld b, $67                                     ; $5D15: $06 $67
    db $DD                                        ; $5D17: $DD
    ld h, [hl]                                    ; $5D18: $66
    ld hl, $5967                                  ; $5D19: $21 $67 $59
    ld h, b                                       ; $5D1C: $60
    rst RST_38                                    ; $5D1D: $FF
    rst RST_38                                    ; $5D1E: $FF
    jp nz, $FF5F                                  ; $5D1F: $C2 $5F $FF

    rst RST_38                                    ; $5D22: $FF
    rst RST_38                                    ; $5D23: $FF
    rst RST_38                                    ; $5D24: $FF
    jp nz, $FF5F                                  ; $5D25: $C2 $5F $FF

    rst RST_38                                    ; $5D28: $FF
    ret                                           ; $5D29: $C9


    ld h, h                                       ; $5D2A: $64
    rst RST_38                                    ; $5D2B: $FF
    rst RST_38                                    ; $5D2C: $FF
    add hl, sp                                    ; $5D2D: $39
    ld h, a                                       ; $5D2E: $67
    rst RST_38                                    ; $5D2F: $FF
    rst RST_38                                    ; $5D30: $FF
    ld e, a                                       ; $5D31: $5F
    ld h, l                                       ; $5D32: $65
    rst RST_38                                    ; $5D33: $FF
    rst RST_38                                    ; $5D34: $FF
    rst RST_38                                    ; $5D35: $FF
    rst RST_38                                    ; $5D36: $FF
    cp [hl]                                       ; $5D37: $BE
    ld h, d                                       ; $5D38: $62
    rst RST_38                                    ; $5D39: $FF
    rst RST_38                                    ; $5D3A: $FF
    sbc a                                         ; $5D3B: $9F
    ld h, c                                       ; $5D3C: $61
    rst RST_38                                    ; $5D3D: $FF
    rst RST_38                                    ; $5D3E: $FF
    ld l, [hl]                                    ; $5D3F: $6E
    ld h, a                                       ; $5D40: $67
    rst RST_38                                    ; $5D41: $FF
    rst RST_38                                    ; $5D42: $FF
    sbc d                                         ; $5D43: $9A
    ld h, a                                       ; $5D44: $67
    cp l                                          ; $5D45: $BD
    ld h, a                                       ; $5D46: $67
    db $DB                                        ; $5D47: $DB
    ld h, a                                       ; $5D48: $67
    ld bc, $1C68                                  ; $5D49: $01 $68 $1C
    ld l, b                                       ; $5D4C: $68
    rst RST_38                                    ; $5D4D: $FF
    rst RST_38                                    ; $5D4E: $FF
    db $E4                                        ; $5D4F: $E4
    ld e, [hl]                                    ; $5D50: $5E
    rst RST_38                                    ; $5D51: $FF
    rst RST_38                                    ; $5D52: $FF
    cp [hl]                                       ; $5D53: $BE
    ld e, [hl]                                    ; $5D54: $5E
    rst RST_38                                    ; $5D55: $FF
    rst RST_38                                    ; $5D56: $FF
    rst RST_38                                    ; $5D57: $FF
    rst RST_38                                    ; $5D58: $FF
    adc c                                         ; $5D59: $89
    ld h, d                                       ; $5D5A: $62
    rst RST_38                                    ; $5D5B: $FF
    rst RST_38                                    ; $5D5C: $FF
    cp [hl]                                       ; $5D5D: $BE
    ld h, d                                       ; $5D5E: $62
    rst RST_38                                    ; $5D5F: $FF
    rst RST_38                                    ; $5D60: $FF
    jp nz, $FF5F                                  ; $5D61: $C2 $5F $FF

    rst RST_38                                    ; $5D64: $FF
    push af                                       ; $5D65: $F5
    ld e, a                                       ; $5D66: $5F
    add hl, bc                                    ; $5D67: $09
    ld h, b                                       ; $5D68: $60
    ld a, d                                       ; $5D69: $7A
    ld h, [hl]                                    ; $5D6A: $66
    add hl, bc                                    ; $5D6B: $09
    ld h, b                                       ; $5D6C: $60
    sbc [hl]                                      ; $5D6D: $9E
    ld h, [hl]                                    ; $5D6E: $66
    rst RST_38                                    ; $5D6F: $FF
    rst RST_38                                    ; $5D70: $FF
    ld a, d                                       ; $5D71: $7A
    ld h, [hl]                                    ; $5D72: $66
    add hl, bc                                    ; $5D73: $09
    ld h, b                                       ; $5D74: $60
    push af                                       ; $5D75: $F5
    ld e, a                                       ; $5D76: $5F
    add hl, bc                                    ; $5D77: $09
    ld h, b                                       ; $5D78: $60
    jp nz, $FF5F                                  ; $5D79: $C2 $5F $FF

    rst RST_38                                    ; $5D7C: $FF
    rst RST_38                                    ; $5D7D: $FF
    rst RST_38                                    ; $5D7E: $FF
    jp nz, $FF5F                                  ; $5D7F: $C2 $5F $FF

    rst RST_38                                    ; $5D82: $FF
    ld c, [hl]                                    ; $5D83: $4E
    ld h, e                                       ; $5D84: $63
    rst RST_38                                    ; $5D85: $FF
    rst RST_38                                    ; $5D86: $FF
    db $DD                                        ; $5D87: $DD
    ld h, [hl]                                    ; $5D88: $66
    ld b, $67                                     ; $5D89: $06 $67
    rst RST_30                                    ; $5D8B: $F7
    ld h, e                                       ; $5D8C: $63
    rst RST_38                                    ; $5D8D: $FF
    rst RST_38                                    ; $5D8E: $FF
    jp nz, $FF5F                                  ; $5D8F: $C2 $5F $FF

    rst RST_38                                    ; $5D92: $FF
    push af                                       ; $5D93: $F5
    ld e, a                                       ; $5D94: $5F
    add hl, bc                                    ; $5D95: $09
    ld h, b                                       ; $5D96: $60
    ld b, l                                       ; $5D97: $45
    ld l, b                                       ; $5D98: $68
    rst RST_38                                    ; $5D99: $FF
    rst RST_38                                    ; $5D9A: $FF
    ld a, d                                       ; $5D9B: $7A
    ld l, b                                       ; $5D9C: $68
    rst RST_38                                    ; $5D9D: $FF
    rst RST_38                                    ; $5D9E: $FF
    push af                                       ; $5D9F: $F5
    ld e, a                                       ; $5DA0: $5F
    add hl, bc                                    ; $5DA1: $09
    ld h, b                                       ; $5DA2: $60
    jp nz, $FF5F                                  ; $5DA3: $C2 $5F $FF

    rst RST_38                                    ; $5DA6: $FF
    jp nz, $FF5F                                  ; $5DA7: $C2 $5F $FF

    rst RST_38                                    ; $5DAA: $FF
    rst RST_38                                    ; $5DAB: $FF
    rst RST_38                                    ; $5DAC: $FF
    nop                                           ; $5DAD: $00
    ld b, $00                                     ; $5DAE: $06 $00
    nop                                           ; $5DB0: $00
    ld b, b                                       ; $5DB1: $40
    inc e                                         ; $5DB2: $1C

jr_00A_5DB3:
    or a                                          ; $5DB3: $B7
    ld e, l                                       ; $5DB4: $5D
    nop                                           ; $5DB5: $00
    nop                                           ; $5DB6: $00
    dec bc                                        ; $5DB7: $0B
    jr nc, @-$10                                  ; $5DB8: $30 $EE

    nop                                           ; $5DBA: $00
    jr nc, jr_00A_5DB3                            ; $5DBB: $30 $F6

    ld [bc], a                                    ; $5DBD: $02

jr_00A_5DBE:
    jr nc, jr_00A_5DBE                            ; $5DBE: $30 $FE

    inc b                                         ; $5DC0: $04
    jr nc, jr_00A_5DC9                            ; $5DC1: $30 $06

    ld b, $20                                     ; $5DC3: $06 $20
    xor $08                                       ; $5DC5: $EE $08
    jr nz, @-$08                                  ; $5DC7: $20 $F6

jr_00A_5DC9:
    ld a, [bc]                                    ; $5DC9: $0A

jr_00A_5DCA:
    jr nz, jr_00A_5DCA                            ; $5DCA: $20 $FE

    inc c                                         ; $5DCC: $0C
    jr nz, jr_00A_5DD5                            ; $5DCD: $20 $06

    ld c, $2A                                     ; $5DCF: $0E $2A
    ld c, $10                                     ; $5DD1: $0E $10

jr_00A_5DD3:
    db $10                                        ; $5DD3: $10
    ei                                            ; $5DD4: $FB

jr_00A_5DD5:
    ld [de], a                                    ; $5DD5: $12
    db $10                                        ; $5DD6: $10
    inc bc                                        ; $5DD7: $03
    inc d                                         ; $5DD8: $14
    nop                                           ; $5DD9: $00
    ld b, $00                                     ; $5DDA: $06 $00
    ld h, b                                       ; $5DDC: $60
    ld b, c                                       ; $5DDD: $41

jr_00A_5DDE:
    inc e                                         ; $5DDE: $1C
    db $E3                                        ; $5DDF: $E3
    ld e, l                                       ; $5DE0: $5D
    nop                                           ; $5DE1: $00
    nop                                           ; $5DE2: $00
    inc c                                         ; $5DE3: $0C
    jr nc, jr_00A_5DD3                            ; $5DE4: $30 $ED

    nop                                           ; $5DE6: $00
    jr nc, jr_00A_5DDE                            ; $5DE7: $30 $F5

jr_00A_5DE9:
    ld [bc], a                                    ; $5DE9: $02
    jr nc, jr_00A_5DE9                            ; $5DEA: $30 $FD

    inc b                                         ; $5DEC: $04
    jr nc, @+$07                                  ; $5DED: $30 $05

    ld b, $20                                     ; $5DEF: $06 $20
    db $ED                                        ; $5DF1: $ED
    ld [$F520], sp                                ; $5DF2: $08 $20 $F5

jr_00A_5DF5:
    ld a, [bc]                                    ; $5DF5: $0A
    jr nz, jr_00A_5DF5                            ; $5DF6: $20 $FD

    inc c                                         ; $5DF8: $0C
    jr nz, jr_00A_5E00                            ; $5DF9: $20 $05

    ld c, $22                                     ; $5DFB: $0E $22
    dec c                                         ; $5DFD: $0D
    db $10                                        ; $5DFE: $10
    db $10                                        ; $5DFF: $10

jr_00A_5E00:
    ei                                            ; $5E00: $FB

jr_00A_5E01:
    ld [de], a                                    ; $5E01: $12
    db $10                                        ; $5E02: $10
    inc bc                                        ; $5E03: $03
    inc d                                         ; $5E04: $14
    db $10                                        ; $5E05: $10
    dec bc                                        ; $5E06: $0B
    ld d, $00                                     ; $5E07: $16 $00
    ld b, $00                                     ; $5E09: $06 $00
    ldh [rSCY], a                                 ; $5E0B: $E0 $42
    inc e                                         ; $5E0D: $1C
    ld [de], a                                    ; $5E0E: $12
    ld e, [hl]                                    ; $5E0F: $5E
    nop                                           ; $5E10: $00
    nop                                           ; $5E11: $00
    inc c                                         ; $5E12: $0C
    jr nc, jr_00A_5E01                            ; $5E13: $30 $EC

    nop                                           ; $5E15: $00
    jr nc, @-$0A                                  ; $5E16: $30 $F4

    ld [bc], a                                    ; $5E18: $02
    jr nc, @-$02                                  ; $5E19: $30 $FC

    inc b                                         ; $5E1B: $04
    jr nc, @+$06                                  ; $5E1C: $30 $04

    ld b, $20                                     ; $5E1E: $06 $20
    db $EC                                        ; $5E20: $EC
    ld [$F420], sp                                ; $5E21: $08 $20 $F4
    ld a, [bc]                                    ; $5E24: $0A
    jr nz, @-$02                                  ; $5E25: $20 $FC

    inc c                                         ; $5E27: $0C
    jr nz, jr_00A_5E2E                            ; $5E28: $20 $04

    ld c, $22                                     ; $5E2A: $0E $22
    inc c                                         ; $5E2C: $0C
    db $10                                        ; $5E2D: $10

jr_00A_5E2E:
    db $10                                        ; $5E2E: $10
    db $FC                                        ; $5E2F: $FC
    ld [de], a                                    ; $5E30: $12
    db $10                                        ; $5E31: $10
    inc b                                         ; $5E32: $04
    inc d                                         ; $5E33: $14
    ld [de], a                                    ; $5E34: $12
    inc c                                         ; $5E35: $0C
    ld d, $00                                     ; $5E36: $16 $00
    ld bc, $6000                                  ; $5E38: $01 $00 $60
    ld b, h                                       ; $5E3B: $44
    inc e                                         ; $5E3C: $1C

jr_00A_5E3D:
    ld b, c                                       ; $5E3D: $41
    ld e, [hl]                                    ; $5E3E: $5E
    nop                                           ; $5E3F: $00
    nop                                           ; $5E40: $00
    inc bc                                        ; $5E41: $03
    jr jr_00A_5E3D                                ; $5E42: $18 $F9

    nop                                           ; $5E44: $00
    jr jr_00A_5E48                                ; $5E45: $18 $01

    ld [bc], a                                    ; $5E47: $02

jr_00A_5E48:
    jr jr_00A_5E53                                ; $5E48: $18 $09

    inc b                                         ; $5E4A: $04
    nop                                           ; $5E4B: $00
    ret nz                                        ; $5E4C: $C0

    ld b, h                                       ; $5E4D: $44
    inc e                                         ; $5E4E: $1C
    ld d, e                                       ; $5E4F: $53
    ld e, [hl]                                    ; $5E50: $5E
    nop                                           ; $5E51: $00

jr_00A_5E52:
    nop                                           ; $5E52: $00

jr_00A_5E53:
    ld [$F128], sp                                ; $5E53: $08 $28 $F1
    nop                                           ; $5E56: $00
    jr z, jr_00A_5E52                             ; $5E57: $28 $F9

    ld [bc], a                                    ; $5E59: $02
    jr z, jr_00A_5E5D                             ; $5E5A: $28 $01

    inc b                                         ; $5E5C: $04

jr_00A_5E5D:
    jr z, jr_00A_5E68                             ; $5E5D: $28 $09

    ld b, $38                                     ; $5E5F: $06 $38
    di                                            ; $5E61: $F3
    ld [$FB38], sp                                ; $5E62: $08 $38 $FB
    ld a, [bc]                                    ; $5E65: $0A
    jr c, jr_00A_5E6B                             ; $5E66: $38 $03

jr_00A_5E68:
    inc c                                         ; $5E68: $0C
    ld a, [hl-]                                   ; $5E69: $3A
    dec bc                                        ; $5E6A: $0B

jr_00A_5E6B:
    ld c, $00                                     ; $5E6B: $0E $00
    ld bc, $C000                                  ; $5E6D: $01 $00 $C0
    ld b, l                                       ; $5E70: $45
    inc e                                         ; $5E71: $1C
    halt                                          ; $5E72: $76
    ld e, [hl]                                    ; $5E73: $5E
    nop                                           ; $5E74: $00
    nop                                           ; $5E75: $00
    add hl, bc                                    ; $5E76: $09
    scf                                           ; $5E77: $37
    ld hl, sp+$00                                 ; $5E78: $F8 $00
    scf                                           ; $5E7A: $37
    nop                                           ; $5E7B: $00
    ld [bc], a                                    ; $5E7C: $02
    jr z, @-$0E                                   ; $5E7D: $28 $F0

    inc b                                         ; $5E7F: $04
    daa                                           ; $5E80: $27
    ld hl, sp+$06                                 ; $5E81: $F8 $06
    daa                                           ; $5E83: $27
    nop                                           ; $5E84: $00
    ld [$0827], sp                                ; $5E85: $08 $27 $08
    ld a, [bc]                                    ; $5E88: $0A
    rla                                           ; $5E89: $17
    rst RST_30                                    ; $5E8A: $F7
    inc c                                         ; $5E8B: $0C

jr_00A_5E8C:
    rla                                           ; $5E8C: $17
    rst RST_38                                    ; $5E8D: $FF
    ld c, $17                                     ; $5E8E: $0E $17
    rlca                                          ; $5E90: $07
    stop                                          ; $5E91: $10 $00
    ld bc, $E000                                  ; $5E93: $01 $00 $E0
    ld b, [hl]                                    ; $5E96: $46

jr_00A_5E97:
    inc e                                         ; $5E97: $1C
    sbc h                                         ; $5E98: $9C
    ld e, [hl]                                    ; $5E99: $5E
    nop                                           ; $5E9A: $00
    nop                                           ; $5E9B: $00
    dec bc                                        ; $5E9C: $0B
    jr nc, jr_00A_5E8C                            ; $5E9D: $30 $ED

    nop                                           ; $5E9F: $00
    jr nc, jr_00A_5E97                            ; $5EA0: $30 $F5

jr_00A_5EA2:
    ld [bc], a                                    ; $5EA2: $02
    jr nc, jr_00A_5EA2                            ; $5EA3: $30 $FD

    inc b                                         ; $5EA5: $04
    jr nc, @+$07                                  ; $5EA6: $30 $05

    ld b, $20                                     ; $5EA8: $06 $20
    rst RST_28                                    ; $5EAA: $EF
    ld [$F720], sp                                ; $5EAB: $08 $20 $F7
    ld a, [bc]                                    ; $5EAE: $0A
    jr nz, @+$01                                  ; $5EAF: $20 $FF

    inc c                                         ; $5EB1: $0C
    jr nz, @+$09                                  ; $5EB2: $20 $07

    ld c, $2A                                     ; $5EB4: $0E $2A
    dec c                                         ; $5EB6: $0D
    db $10                                        ; $5EB7: $10
    db $10                                        ; $5EB8: $10

jr_00A_5EB9:
    ld a, [$1012]                                 ; $5EB9: $FA $12 $10
    ld [bc], a                                    ; $5EBC: $02
    inc d                                         ; $5EBD: $14
    nop                                           ; $5EBE: $00
    rlca                                          ; $5EBF: $07
    nop                                           ; $5EC0: $00
    ld b, b                                       ; $5EC1: $40
    ld c, b                                       ; $5EC2: $48
    inc e                                         ; $5EC3: $1C

jr_00A_5EC4:
    ret z                                         ; $5EC4: $C8

    ld e, [hl]                                    ; $5EC5: $5E
    ld bc, $0900                                  ; $5EC6: $01 $00 $09
    jr nc, jr_00A_5EB9                            ; $5EC9: $30 $EE

    nop                                           ; $5ECB: $00
    jr nc, jr_00A_5EC4                            ; $5ECC: $30 $F6

    ld [bc], a                                    ; $5ECE: $02

jr_00A_5ECF:
    jr nc, jr_00A_5ECF                            ; $5ECF: $30 $FE

    inc b                                         ; $5ED1: $04
    jr nc, jr_00A_5EDA                            ; $5ED2: $30 $06

    ld b, $20                                     ; $5ED4: $06 $20
    xor $08                                       ; $5ED6: $EE $08
    jr nz, @-$08                                  ; $5ED8: $20 $F6

jr_00A_5EDA:
    ld a, [bc]                                    ; $5EDA: $0A

jr_00A_5EDB:
    jr nz, jr_00A_5EDB                            ; $5EDB: $20 $FE

    inc c                                         ; $5EDD: $0C
    jr nz, @+$08                                  ; $5EDE: $20 $06

    ld c, $28                                     ; $5EE0: $0E $28
    ld c, $10                                     ; $5EE2: $0E $10
    nop                                           ; $5EE4: $00
    ld bc, $6000                                  ; $5EE5: $01 $00 $60
    ld c, c                                       ; $5EE8: $49
    inc e                                         ; $5EE9: $1C
    xor $5E                                       ; $5EEA: $EE $5E
    ld [bc], a                                    ; $5EEC: $02
    add hl, bc                                    ; $5EED: $09
    ld a, [bc]                                    ; $5EEE: $0A
    rla                                           ; $5EEF: $17
    db $EC                                        ; $5EF0: $EC
    nop                                           ; $5EF1: $00
    ld de, $02F4                                  ; $5EF2: $11 $F4 $02
    db $10                                        ; $5EF5: $10
    db $FC                                        ; $5EF6: $FC
    inc b                                         ; $5EF7: $04
    db $10                                        ; $5EF8: $10
    inc b                                         ; $5EF9: $04
    ld b, $17                                     ; $5EFA: $06 $17
    inc c                                         ; $5EFC: $0C
    ld [$F421], sp                                ; $5EFD: $08 $21 $F4
    ld a, [bc]                                    ; $5F00: $0A
    jr nz, @-$02                                  ; $5F01: $20 $FC

    inc c                                         ; $5F03: $0C
    jr nz, jr_00A_5F0A                            ; $5F04: $20 $04

    ld c, $30                                     ; $5F06: $0E $30
    db $FC                                        ; $5F08: $FC
    db $10                                        ; $5F09: $10

jr_00A_5F0A:
    ld sp, $12F4                                  ; $5F0A: $31 $F4 $12
    nop                                           ; $5F0D: $00
    ld [$A000], sp                                ; $5F0E: $08 $00 $A0
    ld c, d                                       ; $5F11: $4A
    inc e                                         ; $5F12: $1C
    rla                                           ; $5F13: $17
    ld e, a                                       ; $5F14: $5F
    ld [bc], a                                    ; $5F15: $02
    add hl, bc                                    ; $5F16: $09
    add hl, bc                                    ; $5F17: $09
    dec d                                         ; $5F18: $15
    db $ED                                        ; $5F19: $ED
    nop                                           ; $5F1A: $00
    ld [de], a                                    ; $5F1B: $12
    push af                                       ; $5F1C: $F5
    ld [bc], a                                    ; $5F1D: $02
    ld de, $04FD                                  ; $5F1E: $11 $FD $04
    ld de, $0605                                  ; $5F21: $11 $05 $06
    ld [hl+], a                                   ; $5F24: $22
    db $F4                                        ; $5F25: $F4
    ld [$FC21], sp                                ; $5F26: $08 $21 $FC
    ld a, [bc]                                    ; $5F29: $0A
    ld hl, $0C04                                  ; $5F2A: $21 $04 $0C
    db $10                                        ; $5F2D: $10
    dec c                                         ; $5F2E: $0D
    ld c, $31                                     ; $5F2F: $0E $31
    cp $10                                        ; $5F31: $FE $10
    nop                                           ; $5F33: $00
    ld b, $00                                     ; $5F34: $06 $00
    ret nz                                        ; $5F36: $C0

    ld c, e                                       ; $5F37: $4B
    inc e                                         ; $5F38: $1C
    dec a                                         ; $5F39: $3D
    ld e, a                                       ; $5F3A: $5F
    ld bc, $0C00                                  ; $5F3B: $01 $00 $0C
    daa                                           ; $5F3E: $27
    ld [$3000], a                                 ; $5F3F: $EA $00 $30
    ldh a, [c]                                    ; $5F42: $F2
    ld [bc], a                                    ; $5F43: $02
    jr nc, @-$04                                  ; $5F44: $30 $FA

    inc b                                         ; $5F46: $04
    jr nc, jr_00A_5F4B                            ; $5F47: $30 $02

    ld b, $30                                     ; $5F49: $06 $30

jr_00A_5F4B:
    ld a, [bc]                                    ; $5F4B: $0A
    ld [$1236], sp                                ; $5F4C: $08 $36 $12
    ld a, [bc]                                    ; $5F4F: $0A
    jr nz, jr_00A_5F57                            ; $5F50: $20 $05

jr_00A_5F52:
    inc c                                         ; $5F52: $0C
    jr nz, jr_00A_5F52                            ; $5F53: $20 $FD

    ld c, $20                                     ; $5F55: $0E $20

jr_00A_5F57:
    push af                                       ; $5F57: $F5
    db $10                                        ; $5F58: $10
    jr nz, @-$11                                  ; $5F59: $20 $ED

    ld [de], a                                    ; $5F5B: $12
    db $10                                        ; $5F5C: $10
    di                                            ; $5F5D: $F3
    inc d                                         ; $5F5E: $14
    db $10                                        ; $5F5F: $10
    ei                                            ; $5F60: $FB
    ld d, $00                                     ; $5F61: $16 $00
    rlca                                          ; $5F63: $07
    nop                                           ; $5F64: $00
    ld b, b                                       ; $5F65: $40

jr_00A_5F66:
    ld c, l                                       ; $5F66: $4D
    inc e                                         ; $5F67: $1C
    halt                                          ; $5F68: $76
    ld e, a                                       ; $5F69: $5F
    ld bc, $0000                                  ; $5F6A: $01 $00 $00
    ld [$4000], sp                                ; $5F6D: $08 $00 $40
    ld c, l                                       ; $5F70: $4D

jr_00A_5F71:
    inc e                                         ; $5F71: $1C
    halt                                          ; $5F72: $76
    ld e, a                                       ; $5F73: $5F
    ld bc, $07F6                                  ; $5F74: $01 $F6 $07
    jr z, jr_00A_5F66                             ; $5F77: $28 $ED

    nop                                           ; $5F79: $00
    jr z, jr_00A_5F71                             ; $5F7A: $28 $F5

jr_00A_5F7C:
    ld [bc], a                                    ; $5F7C: $02
    jr z, jr_00A_5F7C                             ; $5F7D: $28 $FD

    inc b                                         ; $5F7F: $04
    jr z, @+$07                                   ; $5F80: $28 $05

    ld b, $33                                     ; $5F82: $06 $33

jr_00A_5F84:
    dec c                                         ; $5F84: $0D
    ld [$F618], sp                                ; $5F85: $08 $18 $F6
    ld a, [bc]                                    ; $5F88: $0A

jr_00A_5F89:
    jr jr_00A_5F89                                ; $5F89: $18 $FE

    inc c                                         ; $5F8B: $0C
    nop                                           ; $5F8C: $00
    jr nz, @+$50                                  ; $5F8D: $20 $4E

jr_00A_5F8F:
    inc e                                         ; $5F8F: $1C
    sub h                                         ; $5F90: $94
    ld e, a                                       ; $5F91: $5F
    ld bc, $0600                                  ; $5F92: $01 $00 $06
    jr c, jr_00A_5F84                             ; $5F95: $38 $ED

    nop                                           ; $5F97: $00
    jr c, jr_00A_5F8F                             ; $5F98: $38 $F5

jr_00A_5F9A:
    ld [bc], a                                    ; $5F9A: $02
    jr c, jr_00A_5F9A                             ; $5F9B: $38 $FD

    inc b                                         ; $5F9D: $04
    jr c, @+$07                                   ; $5F9E: $38 $05

    ld b, $38                                     ; $5FA0: $06 $38
    dec c                                         ; $5FA2: $0D
    ld [$1530], sp                                ; $5FA3: $08 $30 $15
    ld a, [bc]                                    ; $5FA6: $0A
    nop                                           ; $5FA7: $00
    ldh [$FF4E], a                                ; $5FA8: $E0 $4E

jr_00A_5FAA:
    inc e                                         ; $5FAA: $1C
    xor a                                         ; $5FAB: $AF
    ld e, a                                       ; $5FAC: $5F
    ld bc, $06F6                                  ; $5FAD: $01 $F6 $06
    jr c, @-$11                                   ; $5FB0: $38 $ED

    nop                                           ; $5FB2: $00
    jr c, jr_00A_5FAA                             ; $5FB3: $38 $F5

jr_00A_5FB5:
    ld [bc], a                                    ; $5FB5: $02
    jr c, jr_00A_5FB5                             ; $5FB6: $38 $FD

    inc b                                         ; $5FB8: $04
    jr c, @+$07                                   ; $5FB9: $38 $05

    ld b, $38                                     ; $5FBB: $06 $38
    dec c                                         ; $5FBD: $0D
    ld [$153D], sp                                ; $5FBE: $08 $3D $15
    ld a, [bc]                                    ; $5FC1: $0A
    nop                                           ; $5FC2: $00
    ld b, $00                                     ; $5FC3: $06 $00
    add b                                         ; $5FC5: $80
    ld d, l                                       ; $5FC6: $55
    inc e                                         ; $5FC7: $1C
    call z, $FA5F                                 ; $5FC8: $CC $5F $FA
    nop                                           ; $5FCB: $00
    ld a, [bc]                                    ; $5FCC: $0A
    jr nc, jr_00A_5FDB                            ; $5FCD: $30 $0C

    nop                                           ; $5FCF: $00
    ld a, [hl+]                                   ; $5FD0: $2A
    inc b                                         ; $5FD1: $04
    ld [bc], a                                    ; $5FD2: $02
    cpl                                           ; $5FD3: $2F
    db $FC                                        ; $5FD4: $FC
    inc b                                         ; $5FD5: $04
    cpl                                           ; $5FD6: $2F
    db $F4                                        ; $5FD7: $F4
    ld b, $20                                     ; $5FD8: $06 $20
    inc c                                         ; $5FDA: $0C

jr_00A_5FDB:
    ld [$041A], sp                                ; $5FDB: $08 $1A $04
    ld a, [bc]                                    ; $5FDE: $0A
    rra                                           ; $5FDF: $1F
    db $FC                                        ; $5FE0: $FC
    inc c                                         ; $5FE1: $0C
    rra                                           ; $5FE2: $1F
    db $F4                                        ; $5FE3: $F4
    ld c, $1C                                     ; $5FE4: $0E $1C
    db $EC                                        ; $5FE6: $EC
    db $10                                        ; $5FE7: $10
    rrca                                          ; $5FE8: $0F
    db $FC                                        ; $5FE9: $FC
    ld [de], a                                    ; $5FEA: $12
    nop                                           ; $5FEB: $00

jr_00A_5FEC:
    ld b, $A7                                     ; $5FEC: $06 $A7
    ret nz                                        ; $5FEE: $C0

    ld d, [hl]                                    ; $5FEF: $56
    inc e                                         ; $5FF0: $1C

jr_00A_5FF1:
    rst RST_38                                    ; $5FF1: $FF
    ld e, a                                       ; $5FF2: $5F
    ldh a, [c]                                    ; $5FF3: $F2
    nop                                           ; $5FF4: $00
    nop                                           ; $5FF5: $00

jr_00A_5FF6:
    ld b, $00                                     ; $5FF6: $06 $00
    ret nz                                        ; $5FF8: $C0

    ld d, [hl]                                    ; $5FF9: $56
    inc e                                         ; $5FFA: $1C
    rst RST_38                                    ; $5FFB: $FF
    ld e, a                                       ; $5FFC: $5F
    ldh a, [c]                                    ; $5FFD: $F2
    nop                                           ; $5FFE: $00
    inc bc                                        ; $5FFF: $03
    jr nz, jr_00A_5FF6                            ; $6000: $20 $F4

    nop                                           ; $6002: $00
    jr nz, jr_00A_5FF1                            ; $6003: $20 $EC

    ld [bc], a                                    ; $6005: $02
    jr nz, jr_00A_5FEC                            ; $6006: $20 $E4

    inc b                                         ; $6008: $04
    nop                                           ; $6009: $00
    jr nz, jr_00A_6063                            ; $600A: $20 $57

    inc e                                         ; $600C: $1C
    ld de, $F260                                  ; $600D: $11 $60 $F2
    nop                                           ; $6010: $00
    add hl, bc                                    ; $6011: $09
    jr nc, jr_00A_6026                            ; $6012: $30 $12

    nop                                           ; $6014: $00
    dec l                                         ; $6015: $2D
    ld a, [bc]                                    ; $6016: $0A

jr_00A_6017:
    ld [bc], a                                    ; $6017: $02
    jr nc, @+$04                                  ; $6018: $30 $02

    inc b                                         ; $601A: $04
    jr nc, jr_00A_6017                            ; $601B: $30 $FA

    ld b, $20                                     ; $601D: $06 $20
    ld [de], a                                    ; $601F: $12
    ld [$0A1D], sp                                ; $6020: $08 $1D $0A

jr_00A_6023:
    ld a, [bc]                                    ; $6023: $0A
    jr nz, @+$04                                  ; $6024: $20 $02

jr_00A_6026:
    inc c                                         ; $6026: $0C
    jr nz, jr_00A_6023                            ; $6027: $20 $FA

    ld c, $10                                     ; $6029: $0E $10
    nop                                           ; $602B: $00
    stop                                          ; $602C: $10 $00
    ld b, $00                                     ; $602E: $06 $00
    ld b, b                                       ; $6030: $40
    ld e, b                                       ; $6031: $58
    inc e                                         ; $6032: $1C
    scf                                           ; $6033: $37
    ld h, b                                       ; $6034: $60
    ld a, [$0B00]                                 ; $6035: $FA $00 $0B
    cpl                                           ; $6038: $2F
    rst RST_28                                    ; $6039: $EF
    nop                                           ; $603A: $00
    cpl                                           ; $603B: $2F
    rst RST_30                                    ; $603C: $F7
    ld [bc], a                                    ; $603D: $02
    add hl, hl                                    ; $603E: $29
    ei                                            ; $603F: $FB
    inc b                                         ; $6040: $04
    jr nc, jr_00A_6046                            ; $6041: $30 $03

    ld b, $30                                     ; $6043: $06 $30
    dec bc                                        ; $6045: $0B

jr_00A_6046:
    ld [$F31F], sp                                ; $6046: $08 $1F $F3
    ld a, [bc]                                    ; $6049: $0A
    add hl, de                                    ; $604A: $19
    ei                                            ; $604B: $FB
    inc c                                         ; $604C: $0C
    jr nz, jr_00A_6052                            ; $604D: $20 $03

    ld c, $20                                     ; $604F: $0E $20
    dec bc                                        ; $6051: $0B

jr_00A_6052:
    db $10                                        ; $6052: $10
    db $10                                        ; $6053: $10
    dec b                                         ; $6054: $05
    ld [de], a                                    ; $6055: $12
    db $10                                        ; $6056: $10
    db $FD                                        ; $6057: $FD
    inc d                                         ; $6058: $14
    nop                                           ; $6059: $00
    ld b, $A8                                     ; $605A: $06 $A8
    and b                                         ; $605C: $A0
    ld e, c                                       ; $605D: $59
    inc e                                         ; $605E: $1C
    ld h, e                                       ; $605F: $63
    ld h, b                                       ; $6060: $60
    ldh a, [c]                                    ; $6061: $F2
    nop                                           ; $6062: $00

jr_00A_6063:
    dec c                                         ; $6063: $0D
    jr nc, jr_00A_6079                            ; $6064: $30 $13

    nop                                           ; $6066: $00
    ld a, [hl+]                                   ; $6067: $2A
    dec bc                                        ; $6068: $0B
    ld [bc], a                                    ; $6069: $02
    cpl                                           ; $606A: $2F
    inc bc                                        ; $606B: $03
    inc b                                         ; $606C: $04
    cpl                                           ; $606D: $2F
    ei                                            ; $606E: $FB
    ld b, $20                                     ; $606F: $06 $20
    inc de                                        ; $6071: $13
    ld [$0B1A], sp                                ; $6072: $08 $1A $0B
    ld a, [bc]                                    ; $6075: $0A
    rra                                           ; $6076: $1F
    inc bc                                        ; $6077: $03
    inc c                                         ; $6078: $0C

jr_00A_6079:
    rra                                           ; $6079: $1F
    ei                                            ; $607A: $FB
    ld c, $20                                     ; $607B: $0E $20
    di                                            ; $607D: $F3
    db $10                                        ; $607E: $10
    dec h                                         ; $607F: $25
    db $EB                                        ; $6080: $EB
    ld [de], a                                    ; $6081: $12
    inc e                                         ; $6082: $1C
    db $E3                                        ; $6083: $E3
    inc d                                         ; $6084: $14
    db $10                                        ; $6085: $10
    inc de                                        ; $6086: $13
    ld d, $0A                                     ; $6087: $16 $0A
    dec bc                                        ; $6089: $0B
    jr jr_00A_608C                                ; $608A: $18 $00

jr_00A_608C:
    rlca                                          ; $608C: $07
    nop                                           ; $608D: $00
    ld b, b                                       ; $608E: $40
    ld e, e                                       ; $608F: $5B
    inc e                                         ; $6090: $1C
    sub l                                         ; $6091: $95
    ld h, b                                       ; $6092: $60
    ld bc, $0600                                  ; $6093: $01 $00 $06
    inc h                                         ; $6096: $24
    db $FC                                        ; $6097: $FC
    nop                                           ; $6098: $00
    inc [hl]                                      ; $6099: $34
    db $FC                                        ; $609A: $FC
    ld [bc], a                                    ; $609B: $02
    inc hl                                        ; $609C: $23
    db $F4                                        ; $609D: $F4
    inc b                                         ; $609E: $04
    inc sp                                        ; $609F: $33
    db $F4                                        ; $60A0: $F4
    ld b, $22                                     ; $60A1: $06 $22
    db $EC                                        ; $60A3: $EC
    ld [$EC32], sp                                ; $60A4: $08 $32 $EC
    ld a, [bc]                                    ; $60A7: $0A
    nop                                           ; $60A8: $00
    nop                                           ; $60A9: $00
    ld e, h                                       ; $60AA: $5C
    inc e                                         ; $60AB: $1C
    cp b                                          ; $60AC: $B8
    ld h, b                                       ; $60AD: $60
    ld bc, $0000                                  ; $60AE: $01 $00 $00
    nop                                           ; $60B1: $00
    ld e, h                                       ; $60B2: $5C
    inc e                                         ; $60B3: $1C
    cp b                                          ; $60B4: $B8
    ld h, b                                       ; $60B5: $60
    rst RST_38                                    ; $60B6: $FF
    or $04                                        ; $60B7: $F6 $04
    inc h                                         ; $60B9: $24
    inc b                                         ; $60BA: $04

jr_00A_60BB:
    nop                                           ; $60BB: $00
    inc [hl]                                      ; $60BC: $34
    inc b                                         ; $60BD: $04
    ld [bc], a                                    ; $60BE: $02
    ld h, $0C                                     ; $60BF: $26 $0C
    inc b                                         ; $60C1: $04
    ld [hl], $0C                                  ; $60C2: $36 $0C
    ld b, $00                                     ; $60C4: $06 $00
    rlca                                          ; $60C6: $07
    xor c                                         ; $60C7: $A9
    add b                                         ; $60C8: $80
    ld e, h                                       ; $60C9: $5C
    inc e                                         ; $60CA: $1C
    reti                                          ; $60CB: $D9


    ld h, b                                       ; $60CC: $60
    ld bc, $0000                                  ; $60CD: $01 $00 $00
    ld [$80AC], sp                                ; $60D0: $08 $AC $80
    ld e, h                                       ; $60D3: $5C
    inc e                                         ; $60D4: $1C
    reti                                          ; $60D5: $D9


    ld h, b                                       ; $60D6: $60
    ld bc, $0AF7                                  ; $60D7: $01 $F7 $0A
    jr z, jr_00A_60BB                             ; $60DA: $28 $DF

jr_00A_60DC:
    nop                                           ; $60DC: $00
    daa                                           ; $60DD: $27
    rst RST_20                                    ; $60DE: $E7
    ld [bc], a                                    ; $60DF: $02
    jr z, @-$0F                                   ; $60E0: $28 $EF

    inc b                                         ; $60E2: $04

jr_00A_60E3:
    jr z, jr_00A_60DC                             ; $60E3: $28 $F7

    ld b, $28                                     ; $60E5: $06 $28
    rst RST_38                                    ; $60E7: $FF
    ld [$0728], sp                                ; $60E8: $08 $28 $07
    ld a, [bc]                                    ; $60EB: $0A
    ld [hl-], a                                   ; $60EC: $32
    rrca                                          ; $60ED: $0F
    inc c                                         ; $60EE: $0C
    jr jr_00A_60E3                                ; $60EF: $18 $F2

    ld c, $18                                     ; $60F1: $0E $18
    ld a, [$1810]                                 ; $60F3: $FA $10 $18
    ld [bc], a                                    ; $60F6: $02
    ld [de], a                                    ; $60F7: $12
    nop                                           ; $60F8: $00
    ret nz                                        ; $60F9: $C0

    ld e, l                                       ; $60FA: $5D
    inc e                                         ; $60FB: $1C
    nop                                           ; $60FC: $00
    ld h, c                                       ; $60FD: $61
    ld bc, $0400                                  ; $60FE: $01 $00 $04
    jr c, @-$0C                                   ; $6101: $38 $F2

    nop                                           ; $6103: $00
    jr c, @-$04                                   ; $6104: $38 $FA

    ld [bc], a                                    ; $6106: $02
    jr c, jr_00A_610B                             ; $6107: $38 $02

    inc b                                         ; $6109: $04
    dec a                                         ; $610A: $3D

jr_00A_610B:
    ld a, [bc]                                    ; $610B: $0A
    ld b, $00                                     ; $610C: $06 $00
    rlca                                          ; $610E: $07
    nop                                           ; $610F: $00
    ld b, b                                       ; $6110: $40
    ld e, [hl]                                    ; $6111: $5E
    inc e                                         ; $6112: $1C
    ld hl, $0161                                  ; $6113: $21 $61 $01
    nop                                           ; $6116: $00
    nop                                           ; $6117: $00
    ld [$4000], sp                                ; $6118: $08 $00 $40
    ld e, [hl]                                    ; $611B: $5E
    inc e                                         ; $611C: $1C
    ld hl, $FF61                                  ; $611D: $21 $61 $FF
    or $05                                        ; $6120: $F6 $05
    inc h                                         ; $6122: $24
    db $FC                                        ; $6123: $FC
    nop                                           ; $6124: $00
    inc [hl]                                      ; $6125: $34
    db $FC                                        ; $6126: $FC
    ld [bc], a                                    ; $6127: $02
    dec hl                                        ; $6128: $2B
    db $F4                                        ; $6129: $F4
    inc b                                         ; $612A: $04
    dec sp                                        ; $612B: $3B
    db $F4                                        ; $612C: $F4
    ld b, $3D                                     ; $612D: $06 $3D
    db $EC                                        ; $612F: $EC
    ld [$0700], sp                                ; $6130: $08 $00 $07
    xor d                                         ; $6133: $AA
    ldh [$FF5E], a                                ; $6134: $E0 $5E
    inc e                                         ; $6136: $1C
    ld b, l                                       ; $6137: $45
    ld h, c                                       ; $6138: $61
    ld bc, $0000                                  ; $6139: $01 $00 $00
    ld [$E0AD], sp                                ; $613C: $08 $AD $E0
    ld e, [hl]                                    ; $613F: $5E

jr_00A_6140:
    inc e                                         ; $6140: $1C
    ld b, l                                       ; $6141: $45
    ld h, c                                       ; $6142: $61
    ld bc, $09F6                                  ; $6143: $01 $F6 $09
    jr z, jr_00A_614F                             ; $6146: $28 $07

    nop                                           ; $6148: $00
    jr z, @+$01                                   ; $6149: $28 $FF

    ld [bc], a                                    ; $614B: $02
    jr z, @-$07                                   ; $614C: $28 $F7

    inc b                                         ; $614E: $04

jr_00A_614F:
    jr z, jr_00A_6140                             ; $614F: $28 $EF

    ld b, $30                                     ; $6151: $06 $30
    rst RST_20                                    ; $6153: $E7
    ld [$DF37], sp                                ; $6154: $08 $37 $DF
    ld a, [bc]                                    ; $6157: $0A

jr_00A_6158:
    jr @-$06                                      ; $6158: $18 $F8

    inc c                                         ; $615A: $0C
    jr jr_00A_615D                                ; $615B: $18 $00

jr_00A_615D:
    ld c, $18                                     ; $615D: $0E $18
    ld [$0010], sp                                ; $615F: $08 $10 $00
    nop                                           ; $6162: $00

jr_00A_6163:
    ld h, b                                       ; $6163: $60
    inc e                                         ; $6164: $1C
    ld l, c                                       ; $6165: $69
    ld h, c                                       ; $6166: $61
    ld bc, $0400                                  ; $6167: $01 $00 $04
    jr c, jr_00A_6158                             ; $616A: $38 $EC

    nop                                           ; $616C: $00
    jr c, jr_00A_6163                             ; $616D: $38 $F4

    ld [bc], a                                    ; $616F: $02
    jr c, @-$02                                   ; $6170: $38 $FC

    inc b                                         ; $6172: $04
    jr c, jr_00A_6179                             ; $6173: $38 $04

jr_00A_6175:
    ld b, $00                                     ; $6175: $06 $00
    rlca                                          ; $6177: $07
    nop                                           ; $6178: $00

jr_00A_6179:
    add b                                         ; $6179: $80
    ld h, b                                       ; $617A: $60
    inc e                                         ; $617B: $1C
    add b                                         ; $617C: $80
    ld h, c                                       ; $617D: $61
    ld bc, $0A00                                  ; $617E: $01 $00 $0A
    jr nc, jr_00A_6175                            ; $6181: $30 $F2

    nop                                           ; $6183: $00
    jr nc, @-$04                                  ; $6184: $30 $FA

    ld [bc], a                                    ; $6186: $02
    jr nc, @+$04                                  ; $6187: $30 $02

    inc b                                         ; $6189: $04
    jr nc, jr_00A_6196                            ; $618A: $30 $0A

    ld b, $20                                     ; $618C: $06 $20

jr_00A_618E:
    db $F4                                        ; $618E: $F4
    ld [$FC20], sp                                ; $618F: $08 $20 $FC
    ld a, [bc]                                    ; $6192: $0A
    jr nz, @+$06                                  ; $6193: $20 $04

    inc c                                         ; $6195: $0C

jr_00A_6196:
    jr nz, jr_00A_61A4                            ; $6196: $20 $0C

    ld c, $30                                     ; $6198: $0E $30
    ld [de], a                                    ; $619A: $12
    db $10                                        ; $619B: $10
    add hl, sp                                    ; $619C: $39
    ld a, [de]                                    ; $619D: $1A
    ld [de], a                                    ; $619E: $12
    nop                                           ; $619F: $00
    inc e                                         ; $61A0: $1C
    xor d                                         ; $61A1: $AA
    ret nz                                        ; $61A2: $C0

    ld h, c                                       ; $61A3: $61

jr_00A_61A4:
    inc e                                         ; $61A4: $1C
    xor c                                         ; $61A5: $A9
    ld h, c                                       ; $61A6: $61
    nop                                           ; $61A7: $00
    nop                                           ; $61A8: $00
    dec bc                                        ; $61A9: $0B
    jr nc, jr_00A_618E                            ; $61AA: $30 $E2

    nop                                           ; $61AC: $00
    jr nc, @-$14                                  ; $61AD: $30 $EA

jr_00A_61AF:
    ld [bc], a                                    ; $61AF: $02
    jr nc, jr_00A_61A4                            ; $61B0: $30 $F2

    inc b                                         ; $61B2: $04
    jr nc, jr_00A_61AF                            ; $61B3: $30 $FA

    ld b, $30                                     ; $61B5: $06 $30
    ld [bc], a                                    ; $61B7: $02
    ld [$0A30], sp                                ; $61B8: $08 $30 $0A
    ld a, [bc]                                    ; $61BB: $0A

jr_00A_61BC:
    dec hl                                        ; $61BC: $2B
    ld [de], a                                    ; $61BD: $12
    inc c                                         ; $61BE: $0C

jr_00A_61BF:
    jr nz, jr_00A_61CB                            ; $61BF: $20 $0A

jr_00A_61C1:
    ld c, $20                                     ; $61C1: $0E $20
    ld [bc], a                                    ; $61C3: $02
    db $10                                        ; $61C4: $10
    jr nz, jr_00A_61C1                            ; $61C5: $20 $FA

    ld [de], a                                    ; $61C7: $12

jr_00A_61C8:
    jr nz, jr_00A_61BC                            ; $61C8: $20 $F2

jr_00A_61CA:
    inc d                                         ; $61CA: $14

jr_00A_61CB:
    nop                                           ; $61CB: $00
    rlca                                          ; $61CC: $07
    xor e                                         ; $61CD: $AB
    jr nz, @+$65                                  ; $61CE: $20 $63

    inc e                                         ; $61D0: $1C
    push de                                       ; $61D1: $D5
    ld h, c                                       ; $61D2: $61

jr_00A_61D3:
    ld bc, $0E00                                  ; $61D3: $01 $00 $0E
    jr nc, @-$22                                  ; $61D6: $30 $DC

    nop                                           ; $61D8: $00
    jr nc, jr_00A_61BF                            ; $61D9: $30 $E4

    ld [bc], a                                    ; $61DB: $02
    jr nc, jr_00A_61CA                            ; $61DC: $30 $EC

    inc b                                         ; $61DE: $04
    jr nc, @-$0A                                  ; $61DF: $30 $F4

    ld b, $30                                     ; $61E1: $06 $30
    db $FC                                        ; $61E3: $FC
    ld [$0430], sp                                ; $61E4: $08 $30 $04
    ld a, [bc]                                    ; $61E7: $0A
    jr nz, jr_00A_61C8                            ; $61E8: $20 $DE

    inc c                                         ; $61EA: $0C
    jr nz, jr_00A_61D3                            ; $61EB: $20 $E6

    ld c, $20                                     ; $61ED: $0E $20
    xor $10                                       ; $61EF: $EE $10
    jr nz, @-$08                                  ; $61F1: $20 $F6

    ld [de], a                                    ; $61F3: $12

jr_00A_61F4:
    jr nz, jr_00A_61F4                            ; $61F4: $20 $FE

    inc d                                         ; $61F6: $14
    dec h                                         ; $61F7: $25
    ld b, $16                                     ; $61F8: $06 $16
    db $10                                        ; $61FA: $10
    db $FC                                        ; $61FB: $FC
    jr jr_00A_6210                                ; $61FC: $18 $12

    inc b                                         ; $61FE: $04

jr_00A_61FF:
    ld a, [de]                                    ; $61FF: $1A
    nop                                           ; $6200: $00
    rlca                                          ; $6201: $07
    nop                                           ; $6202: $00
    ldh [$FF64], a                                ; $6203: $E0 $64
    inc e                                         ; $6205: $1C
    ld a, [bc]                                    ; $6206: $0A
    ld h, d                                       ; $6207: $62
    ld bc, $0A00                                  ; $6208: $01 $00 $0A
    jr nc, jr_00A_61FF                            ; $620B: $30 $F2

    nop                                           ; $620D: $00
    jr nc, @-$04                                  ; $620E: $30 $FA

jr_00A_6210:
    ld [bc], a                                    ; $6210: $02
    jr nc, @+$04                                  ; $6211: $30 $02

    inc b                                         ; $6213: $04
    jr nc, jr_00A_6220                            ; $6214: $30 $0A

    ld b, $20                                     ; $6216: $06 $20
    ldh a, [c]                                    ; $6218: $F2
    ld [$FA20], sp                                ; $6219: $08 $20 $FA
    ld a, [bc]                                    ; $621C: $0A
    jr nz, @+$04                                  ; $621D: $20 $02

    inc c                                         ; $621F: $0C

jr_00A_6220:
    jr nz, jr_00A_622C                            ; $6220: $20 $0A

    ld c, $10                                     ; $6222: $0E $10
    db $FD                                        ; $6224: $FD
    db $10                                        ; $6225: $10

jr_00A_6226:
    db $10                                        ; $6226: $10
    dec b                                         ; $6227: $05
    ld [de], a                                    ; $6228: $12
    nop                                           ; $6229: $00
    jr nz, @+$68                                  ; $622A: $20 $66

jr_00A_622C:
    inc e                                         ; $622C: $1C
    ld sp, $0162                                  ; $622D: $31 $62 $01
    rlca                                          ; $6230: $07

jr_00A_6231:
    inc b                                         ; $6231: $04
    jr z, jr_00A_6226                             ; $6232: $28 $F2

    nop                                           ; $6234: $00

jr_00A_6235:
    jr z, jr_00A_6231                             ; $6235: $28 $FA

    ld [bc], a                                    ; $6237: $02
    jr z, @+$04                                   ; $6238: $28 $02

    inc b                                         ; $623A: $04
    ld l, $0A                                     ; $623B: $2E $0A
    ld b, $00                                     ; $623D: $06 $00
    and b                                         ; $623F: $A0

jr_00A_6240:
    ld h, [hl]                                    ; $6240: $66
    inc e                                         ; $6241: $1C
    ld b, [hl]                                    ; $6242: $46
    ld h, d                                       ; $6243: $62
    ld bc, $0406                                  ; $6244: $01 $06 $04
    jr z, jr_00A_6235                             ; $6247: $28 $EC

    nop                                           ; $6249: $00
    jr z, jr_00A_6240                             ; $624A: $28 $F4

    ld [bc], a                                    ; $624C: $02
    jr z, @-$02                                   ; $624D: $28 $FC

    inc b                                         ; $624F: $04
    jr z, @+$06                                   ; $6250: $28 $04

    ld b, $00                                     ; $6252: $06 $00
    ld bc, $2005                                  ; $6254: $01 $05 $20
    ld h, a                                       ; $6257: $67
    inc e                                         ; $6258: $1C
    ld e, l                                       ; $6259: $5D
    ld h, d                                       ; $625A: $62

jr_00A_625B:
    ld a, [$0BF8]                                 ; $625B: $FA $F8 $0B
    jr c, @+$0C                                   ; $625E: $38 $0A

jr_00A_6260:
    nop                                           ; $6260: $00
    inc [hl]                                      ; $6261: $34
    ld [bc], a                                    ; $6262: $02
    ld [bc], a                                    ; $6263: $02
    jr c, jr_00A_6260                             ; $6264: $38 $FA

    inc b                                         ; $6266: $04

jr_00A_6267:
    jr c, jr_00A_625B                             ; $6267: $38 $F2

    ld b, $28                                     ; $6269: $06 $28
    ld a, [bc]                                    ; $626B: $0A

jr_00A_626C:
    ld [$0224], sp                                ; $626C: $08 $24 $02
    ld a, [bc]                                    ; $626F: $0A
    jr z, jr_00A_626C                             ; $6270: $28 $FA

    inc c                                         ; $6272: $0C
    jr z, jr_00A_6267                             ; $6273: $28 $F2

    ld c, $21                                     ; $6275: $0E $21
    ld [$1F10], a                                 ; $6277: $EA $10 $1F
    ldh [c], a                                    ; $627A: $E2
    ld [de], a                                    ; $627B: $12
    rra                                           ; $627C: $1F
    call c, Call_000_0014                         ; $627D: $DC $14 $00
    ld bc, $8005                                  ; $6280: $01 $05 $80
    ld l, b                                       ; $6283: $68
    inc e                                         ; $6284: $1C
    sub e                                         ; $6285: $93
    ld h, d                                       ; $6286: $62
    ld a, [$00F8]                                 ; $6287: $FA $F8 $00
    ld bc, $8000                                  ; $628A: $01 $00 $80
    ld l, b                                       ; $628D: $68
    inc e                                         ; $628E: $1C
    sub e                                         ; $628F: $93
    ld h, d                                       ; $6290: $62
    ld a, [$0EF8]                                 ; $6291: $FA $F8 $0E
    jr c, @-$09                                   ; $6294: $38 $F5

jr_00A_6296:
    nop                                           ; $6296: $00
    jr c, jr_00A_6296                             ; $6297: $38 $FD

    ld [bc], a                                    ; $6299: $02
    scf                                           ; $629A: $37
    dec b                                         ; $629B: $05
    inc b                                         ; $629C: $04
    scf                                           ; $629D: $37
    dec c                                         ; $629E: $0D
    ld b, $28                                     ; $629F: $06 $28
    push af                                       ; $62A1: $F5
    ld [$FD28], sp                                ; $62A2: $08 $28 $FD
    ld a, [bc]                                    ; $62A5: $0A

jr_00A_62A6:
    daa                                           ; $62A6: $27
    dec b                                         ; $62A7: $05
    inc c                                         ; $62A8: $0C
    daa                                           ; $62A9: $27
    dec c                                         ; $62AA: $0D
    ld c, $27                                     ; $62AB: $0E $27
    dec d                                         ; $62AD: $15
    db $10                                        ; $62AE: $10
    jr jr_00A_62A6                                ; $62AF: $18 $F5

jr_00A_62B1:
    ld [de], a                                    ; $62B1: $12
    jr jr_00A_62B1                                ; $62B2: $18 $FD

    inc d                                         ; $62B4: $14
    rla                                           ; $62B5: $17
    dec b                                         ; $62B6: $05
    ld d, $08                                     ; $62B7: $16 $08
    push af                                       ; $62B9: $F5
    jr jr_00A_62C4                                ; $62BA: $18 $08

    db $FD                                        ; $62BC: $FD
    ld a, [de]                                    ; $62BD: $1A
    nop                                           ; $62BE: $00
    ld bc, $4000                                  ; $62BF: $01 $00 $40
    ld l, d                                       ; $62C2: $6A
    inc e                                         ; $62C3: $1C

jr_00A_62C4:
    ret z                                         ; $62C4: $C8

    ld h, d                                       ; $62C5: $62
    ld a, [$0CF8]                                 ; $62C6: $FA $F8 $0C
    scf                                           ; $62C9: $37
    pop af                                        ; $62CA: $F1
    nop                                           ; $62CB: $00
    scf                                           ; $62CC: $37
    ld sp, hl                                     ; $62CD: $F9
    ld [bc], a                                    ; $62CE: $02
    ld [hl], $01                                  ; $62CF: $36 $01
    inc b                                         ; $62D1: $04
    jr c, jr_00A_62DD                             ; $62D2: $38 $09

    ld b, $27                                     ; $62D4: $06 $27
    jp hl                                         ; $62D6: $E9


    ld [$F127], sp                                ; $62D7: $08 $27 $F1
    ld a, [bc]                                    ; $62DA: $0A
    daa                                           ; $62DB: $27
    ld sp, hl                                     ; $62DC: $F9

jr_00A_62DD:
    inc c                                         ; $62DD: $0C
    ld h, $01                                     ; $62DE: $26 $01
    ld c, $28                                     ; $62E0: $0E $28
    add hl, bc                                    ; $62E2: $09
    db $10                                        ; $62E3: $10
    jr nc, @+$13                                  ; $62E4: $30 $11

    ld [de], a                                    ; $62E6: $12
    inc a                                         ; $62E7: $3C
    add hl, de                                    ; $62E8: $19
    inc d                                         ; $62E9: $14
    rla                                           ; $62EA: $17
    ld sp, hl                                     ; $62EB: $F9
    ld d, $00                                     ; $62EC: $16 $00
    ld bc, $C005                                  ; $62EE: $01 $05 $C0
    ld l, e                                       ; $62F1: $6B
    inc e                                         ; $62F2: $1C
    rst RST_30                                    ; $62F3: $F7
    ld h, d                                       ; $62F4: $62
    ld a, [$0EF8]                                 ; $62F5: $FA $F8 $0E
    inc l                                         ; $62F8: $2C
    call c, Call_000_2100                         ; $62F9: $DC $00 $21
    ldh [c], a                                    ; $62FC: $E2
    ld [bc], a                                    ; $62FD: $02
    ld hl, $04EA                                  ; $62FE: $21 $EA $04
    ld hl, $06F2                                  ; $6301: $21 $F2 $06
    ld hl, $08FA                                  ; $6304: $21 $FA $08
    ld sp, $0AE4                                  ; $6307: $31 $E4 $0A
    ld sp, $0CEC                                  ; $630A: $31 $EC $0C
    ld sp, $0EF4                                  ; $630D: $31 $F4 $0E
    ld sp, $10FC                                  ; $6310: $31 $FC $10
    ld hl, $1202                                  ; $6313: $21 $02 $12
    ld sp, $1404                                  ; $6316: $31 $04 $14
    ld b, c                                       ; $6319: $41
    di                                            ; $631A: $F3
    ld d, $3F                                     ; $631B: $16 $3F
    rlca                                          ; $631D: $07
    jr jr_00A_6364                                ; $631E: $18 $44

    db $EB                                        ; $6320: $EB
    ld a, [de]                                    ; $6321: $1A
    nop                                           ; $6322: $00
    ld bc, $8000                                  ; $6323: $01 $00 $80
    ld l, l                                       ; $6326: $6D
    inc e                                         ; $6327: $1C
    inc l                                         ; $6328: $2C
    ld h, e                                       ; $6329: $63
    ld a, [$0BF8]                                 ; $632A: $FA $F8 $0B
    ld hl, $00EF                                  ; $632D: $21 $EF $00
    ld hl, $02F7                                  ; $6330: $21 $F7 $02
    ld hl, $04FF                                  ; $6333: $21 $FF $04
    dec l                                         ; $6336: $2D
    rlca                                          ; $6337: $07
    ld b, $31                                     ; $6338: $06 $31
    rst RST_28                                    ; $633A: $EF
    ld [$F731], sp                                ; $633B: $08 $31 $F7
    ld a, [bc]                                    ; $633E: $0A
    ld sp, $0CFF                                  ; $633F: $31 $FF $0C
    dec a                                         ; $6342: $3D
    rlca                                          ; $6343: $07
    ld c, $41                                     ; $6344: $0E $41
    rst RST_28                                    ; $6346: $EF
    db $10                                        ; $6347: $10
    ld b, c                                       ; $6348: $41
    rst RST_30                                    ; $6349: $F7
    ld [de], a                                    ; $634A: $12
    inc de                                        ; $634B: $13
    rlca                                          ; $634C: $07
    inc d                                         ; $634D: $14
    nop                                           ; $634E: $00
    ld b, $00                                     ; $634F: $06 $00
    ldh [$FF6E], a                                ; $6351: $E0 $6E
    inc e                                         ; $6353: $1C
    ld e, b                                       ; $6354: $58
    ld h, e                                       ; $6355: $63
    ld hl, sp-$08                                 ; $6356: $F8 $F8
    dec bc                                        ; $6358: $0B
    jr c, jr_00A_636F                             ; $6359: $38 $14

    nop                                           ; $635B: $00
    ld [hl], $0C                                  ; $635C: $36 $0C
    ld [bc], a                                    ; $635E: $02
    inc sp                                        ; $635F: $33
    inc b                                         ; $6360: $04
    inc b                                         ; $6361: $04
    inc sp                                        ; $6362: $33
    db $FC                                        ; $6363: $FC

jr_00A_6364:
    ld b, $2C                                     ; $6364: $06 $2C
    db $F4                                        ; $6366: $F4
    ld [$EC2C], sp                                ; $6367: $08 $2C $EC
    ld a, [bc]                                    ; $636A: $0A
    inc hl                                        ; $636B: $23
    rst RST_30                                    ; $636C: $F7
    inc c                                         ; $636D: $0C
    inc hl                                        ; $636E: $23

jr_00A_636F:
    rst RST_38                                    ; $636F: $FF
    ld c, $26                                     ; $6370: $0E $26
    rlca                                          ; $6372: $07
    db $10                                        ; $6373: $10
    ld hl, $120F                                  ; $6374: $21 $0F $12
    ld d, $07                                     ; $6377: $16 $07
    inc d                                         ; $6379: $14

jr_00A_637A:
    nop                                           ; $637A: $00
    ld b, $00                                     ; $637B: $06 $00
    ld b, b                                       ; $637D: $40
    ld [hl], b                                    ; $637E: $70
    inc e                                         ; $637F: $1C
    add h                                         ; $6380: $84
    ld h, e                                       ; $6381: $63
    nop                                           ; $6382: $00
    nop                                           ; $6383: $00
    ld c, $28                                     ; $6384: $0E $28
    add sp, $00                                   ; $6386: $E8 $00
    jr nc, jr_00A_637A                            ; $6388: $30 $F0

    ld [bc], a                                    ; $638A: $02
    jr nc, @-$06                                  ; $638B: $30 $F8

jr_00A_638D:
    inc b                                         ; $638D: $04
    jr nc, jr_00A_6390                            ; $638E: $30 $00

jr_00A_6390:
    ld b, $30                                     ; $6390: $06 $30
    ld [$2B08], sp                                ; $6392: $08 $08 $2B
    db $10                                        ; $6395: $10
    ld a, [bc]                                    ; $6396: $0A
    jr nz, @-$0E                                  ; $6397: $20 $F0

    inc c                                         ; $6399: $0C
    jr nz, @-$06                                  ; $639A: $20 $F8

    ld c, $20                                     ; $639C: $0E $20
    nop                                           ; $639E: $00
    db $10                                        ; $639F: $10
    jr nz, jr_00A_63AA                            ; $63A0: $20 $08

    ld [de], a                                    ; $63A2: $12
    jr jr_00A_638D                                ; $63A3: $18 $E8

    inc d                                         ; $63A5: $14
    db $10                                        ; $63A6: $10
    ldh a, [rNR21]                                ; $63A7: $F0 $16
    db $10                                        ; $63A9: $10

jr_00A_63AA:
    ld hl, sp+$18                                 ; $63AA: $F8 $18
    stop                                          ; $63AC: $10 $00
    ld a, [de]                                    ; $63AE: $1A
    nop                                           ; $63AF: $00
    ld b, $00                                     ; $63B0: $06 $00
    nop                                           ; $63B2: $00
    ld [hl], d                                    ; $63B3: $72
    inc e                                         ; $63B4: $1C
    cp c                                          ; $63B5: $B9
    ld h, e                                       ; $63B6: $63
    ldh a, [c]                                    ; $63B7: $F2
    ld hl, sp+$0D                                 ; $63B8: $F8 $0D
    ld e, $E7                                     ; $63BA: $1E $E7
    nop                                           ; $63BC: $00
    ld h, $EF                                     ; $63BD: $26 $EF
    ld [bc], a                                    ; $63BF: $02
    inc h                                         ; $63C0: $24
    rst RST_30                                    ; $63C1: $F7
    inc b                                         ; $63C2: $04
    dec h                                         ; $63C3: $25
    rst RST_38                                    ; $63C4: $FF
    ld b, $25                                     ; $63C5: $06 $25
    rlca                                          ; $63C7: $07
    ld [$0F25], sp                                ; $63C8: $08 $25 $0F
    ld a, [bc]                                    ; $63CB: $0A
    ld h, $14                                     ; $63CC: $26 $14
    inc c                                         ; $63CE: $0C
    ld sp, $0EE7                                  ; $63CF: $31 $E7 $0E
    jr c, @-$02                                   ; $63D2: $38 $FC

    db $10                                        ; $63D4: $10
    dec [hl]                                      ; $63D5: $35
    inc b                                         ; $63D6: $04
    ld [de], a                                    ; $63D7: $12
    dec [hl]                                      ; $63D8: $35
    inc c                                         ; $63D9: $0C
    inc d                                         ; $63DA: $14
    dec a                                         ; $63DB: $3D
    inc d                                         ; $63DC: $14
    ld d, $45                                     ; $63DD: $16 $45
    inc b                                         ; $63DF: $04
    jr jr_00A_63E2                                ; $63E0: $18 $00

jr_00A_63E2:
    and b                                         ; $63E2: $A0
    ld [hl], e                                    ; $63E3: $73
    inc e                                         ; $63E4: $1C
    jp hl                                         ; $63E5: $E9


    ld h, e                                       ; $63E6: $63
    ldh a, [c]                                    ; $63E7: $F2
    ld hl, sp+$01                                 ; $63E8: $F8 $01
    inc h                                         ; $63EA: $24
    db $E4                                        ; $63EB: $E4
    nop                                           ; $63EC: $00
    nop                                           ; $63ED: $00
    ld bc, $0000                                  ; $63EE: $01 $00 $00
    ld b, b                                       ; $63F1: $40
    inc hl                                        ; $63F2: $23
    ld bc, $0064                                  ; $63F3: $01 $64 $00
    ld [bc], a                                    ; $63F6: $02
    nop                                           ; $63F7: $00
    ld bc, $0005                                  ; $63F8: $01 $05 $00
    ld b, b                                       ; $63FB: $40
    inc hl                                        ; $63FC: $23
    ld bc, $0064                                  ; $63FD: $01 $64 $00
    ld [bc], a                                    ; $6400: $02
    dec bc                                        ; $6401: $0B
    add hl, de                                    ; $6402: $19
    push hl                                       ; $6403: $E5
    nop                                           ; $6404: $00
    add hl, de                                    ; $6405: $19
    db $ED                                        ; $6406: $ED
    ld [bc], a                                    ; $6407: $02
    ld d, $F5                                     ; $6408: $16 $F5
    inc b                                         ; $640A: $04
    ld d, $FD                                     ; $640B: $16 $FD
    ld b, $16                                     ; $640D: $06 $16
    dec b                                         ; $640F: $05
    ld [$F426], sp                                ; $6410: $08 $26 $F4
    ld a, [bc]                                    ; $6413: $0A
    ld h, $FC                                     ; $6414: $26 $FC
    inc c                                         ; $6416: $0C
    ld h, $04                                     ; $6417: $26 $04
    ld c, $36                                     ; $6419: $0E $36
    ei                                            ; $641B: $FB
    db $10                                        ; $641C: $10
    ld [hl], $03                                  ; $641D: $36 $03
    ld [de], a                                    ; $641F: $12
    ld e, $0C                                     ; $6420: $1E $0C
    inc d                                         ; $6422: $14
    nop                                           ; $6423: $00
    ld bc, $6000                                  ; $6424: $01 $00 $60
    ld b, c                                       ; $6427: $41
    inc hl                                        ; $6428: $23
    dec l                                         ; $6429: $2D
    ld h, h                                       ; $642A: $64
    nop                                           ; $642B: $00
    ld [bc], a                                    ; $642C: $02
    inc c                                         ; $642D: $0C
    add hl, de                                    ; $642E: $19
    db $DD                                        ; $642F: $DD
    nop                                           ; $6430: $00
    add hl, de                                    ; $6431: $19
    push hl                                       ; $6432: $E5
    ld [bc], a                                    ; $6433: $02
    ld d, $ED                                     ; $6434: $16 $ED
    inc b                                         ; $6436: $04
    ld d, $F5                                     ; $6437: $16 $F5
    ld b, $12                                     ; $6439: $06 $12
    db $FD                                        ; $643B: $FD
    ld [$0512], sp                                ; $643C: $08 $12 $05
    ld a, [bc]                                    ; $643F: $0A

jr_00A_6440:
    ld c, $0D                                     ; $6440: $0E $0D
    inc c                                         ; $6442: $0C
    ld h, $F4                                     ; $6443: $26 $F4
    ld c, $22                                     ; $6445: $0E $22
    db $FC                                        ; $6447: $FC
    db $10                                        ; $6448: $10
    ld [hl+], a                                   ; $6449: $22
    inc b                                         ; $644A: $04

jr_00A_644B:
    ld [de], a                                    ; $644B: $12
    ld [hl-], a                                   ; $644C: $32
    ei                                            ; $644D: $FB
    inc d                                         ; $644E: $14
    ld [hl-], a                                   ; $644F: $32
    inc bc                                        ; $6450: $03
    ld d, $00                                     ; $6451: $16 $00
    ld bc, $E000                                  ; $6453: $01 $00 $E0

jr_00A_6456:
    ld b, d                                       ; $6456: $42
    inc hl                                        ; $6457: $23
    ld e, h                                       ; $6458: $5C
    ld h, h                                       ; $6459: $64
    nop                                           ; $645A: $00
    ld [bc], a                                    ; $645B: $02
    dec c                                         ; $645C: $0D
    jr jr_00A_6440                                ; $645D: $18 $E1

    nop                                           ; $645F: $00
    jr jr_00A_644B                                ; $6460: $18 $E9

    ld [bc], a                                    ; $6462: $02
    jr jr_00A_6456                                ; $6463: $18 $F1

    inc b                                         ; $6465: $04
    inc e                                         ; $6466: $1C
    ld sp, hl                                     ; $6467: $F9
    ld b, $1C                                     ; $6468: $06 $1C
    ld bc, $2308                                  ; $646A: $01 $08 $23
    add hl, bc                                    ; $646D: $09

jr_00A_646E:
    ld a, [bc]                                    ; $646E: $0A
    ld [hl+], a                                   ; $646F: $22
    ld de, $1C0C                                  ; $6470: $11 $0C $1C
    add hl, de                                    ; $6473: $19
    ld c, $2C                                     ; $6474: $0E $2C
    ld bc, $2C10                                  ; $6476: $01 $10 $2C
    ld sp, hl                                     ; $6479: $F9
    ld [de], a                                    ; $647A: $12
    jr z, jr_00A_646E                             ; $647B: $28 $F1

    inc d                                         ; $647D: $14
    jr z, @-$15                                   ; $647E: $28 $E9

    ld d, $3C                                     ; $6480: $16 $3C
    rst RST_38                                    ; $6482: $FF
    jr jr_00A_6485                                ; $6483: $18 $00

jr_00A_6485:
    ld b, $00                                     ; $6485: $06 $00

jr_00A_6487:
    add b                                         ; $6487: $80
    ld b, h                                       ; $6488: $44
    inc hl                                        ; $6489: $23
    adc [hl]                                      ; $648A: $8E
    ld h, h                                       ; $648B: $64
    ld b, $F8                                     ; $648C: $06 $F8
    db $10                                        ; $648E: $10
    jr c, @-$1E                                   ; $648F: $38 $E0

    nop                                           ; $6491: $00

jr_00A_6492:
    jr c, @-$16                                   ; $6492: $38 $E8

    ld [bc], a                                    ; $6494: $02
    jr c, jr_00A_6487                             ; $6495: $38 $F0

    inc b                                         ; $6497: $04
    jr c, jr_00A_6492                             ; $6498: $38 $F8

    ld b, $38                                     ; $649A: $06 $38

jr_00A_649C:
    nop                                           ; $649C: $00
    ld [$0838], sp                                ; $649D: $08 $38 $08
    ld a, [bc]                                    ; $64A0: $0A
    ld l, $10                                     ; $64A1: $2E $10
    inc c                                         ; $64A3: $0C
    jr z, @-$1E                                   ; $64A4: $28 $E0

    ld c, $28                                     ; $64A6: $0E $28
    add sp, $10                                   ; $64A8: $E8 $10
    jr z, jr_00A_649C                             ; $64AA: $28 $F0

    ld [de], a                                    ; $64AC: $12
    jr z, @-$06                                   ; $64AD: $28 $F8

    inc d                                         ; $64AF: $14
    jr z, jr_00A_64B2                             ; $64B0: $28 $00

jr_00A_64B2:
    ld d, $28                                     ; $64B2: $16 $28
    ld [$1818], sp                                ; $64B4: $08 $18 $18

jr_00A_64B7:
    db $F4                                        ; $64B7: $F4
    ld a, [de]                                    ; $64B8: $1A
    jr jr_00A_64B7                                ; $64B9: $18 $FC

    inc e                                         ; $64BB: $1C
    jr jr_00A_64C2                                ; $64BC: $18 $04

    ld e, $00                                     ; $64BE: $1E $00
    ld b, $00                                     ; $64C0: $06 $00

jr_00A_64C2:
    add b                                         ; $64C2: $80
    ld b, [hl]                                    ; $64C3: $46
    inc hl                                        ; $64C4: $23
    db $D3                                        ; $64C5: $D3
    ld h, h                                       ; $64C6: $64
    ld b, $F8                                     ; $64C7: $06 $F8
    nop                                           ; $64C9: $00
    ld b, $BA                                     ; $64CA: $06 $BA

jr_00A_64CC:
    add b                                         ; $64CC: $80
    ld b, [hl]                                    ; $64CD: $46
    inc hl                                        ; $64CE: $23
    db $D3                                        ; $64CF: $D3
    ld h, h                                       ; $64D0: $64
    inc b                                         ; $64D1: $04
    ld hl, sp+$0E                                 ; $64D2: $F8 $0E
    ld l, $E0                                     ; $64D4: $2E $E0
    nop                                           ; $64D6: $00

jr_00A_64D7:
    jr c, @-$16                                   ; $64D7: $38 $E8

    ld [bc], a                                    ; $64D9: $02
    jr c, jr_00A_64CC                             ; $64DA: $38 $F0

    inc b                                         ; $64DC: $04
    jr c, jr_00A_64D7                             ; $64DD: $38 $F8

    ld b, $38                                     ; $64DF: $06 $38
    nop                                           ; $64E1: $00
    ld [$E828], sp                                ; $64E2: $08 $28 $E8
    ld a, [bc]                                    ; $64E5: $0A
    jr z, @-$0E                                   ; $64E6: $28 $F0

    inc c                                         ; $64E8: $0C
    jr z, @-$06                                   ; $64E9: $28 $F8

jr_00A_64EB:
    ld c, $28                                     ; $64EB: $0E $28
    nop                                           ; $64ED: $00
    db $10                                        ; $64EE: $10
    cpl                                           ; $64EF: $2F
    ld [$2D12], sp                                ; $64F0: $08 $12 $2D
    db $10                                        ; $64F3: $10
    inc d                                         ; $64F4: $14
    jr jr_00A_64EB                                ; $64F5: $18 $F4

    ld d, $18                                     ; $64F7: $16 $18
    db $FC                                        ; $64F9: $FC
    jr jr_00A_6514                                ; $64FA: $18 $18

    inc b                                         ; $64FC: $04
    ld a, [de]                                    ; $64FD: $1A
    nop                                           ; $64FE: $00
    ld bc, $C000                                  ; $64FF: $01 $00 $C0
    ld [hl], e                                    ; $6502: $73
    inc e                                         ; $6503: $1C
    ld [$FE65], sp                                ; $6504: $08 $65 $FE
    ld hl, sp+$0F                                 ; $6507: $F8 $0F
    scf                                           ; $6509: $37
    db $EC                                        ; $650A: $EC
    nop                                           ; $650B: $00
    scf                                           ; $650C: $37

jr_00A_650D:
    db $F4                                        ; $650D: $F4
    ld [bc], a                                    ; $650E: $02
    jr c, jr_00A_650D                             ; $650F: $38 $FC

    inc b                                         ; $6511: $04
    jr c, @+$06                                   ; $6512: $38 $04

jr_00A_6514:
    ld b, $32                                     ; $6514: $06 $32
    inc c                                         ; $6516: $0C
    ld [$E531], sp                                ; $6517: $08 $31 $E5
    ld a, [bc]                                    ; $651A: $0A
    ld hl, $0CE5                                  ; $651B: $21 $E5 $0C
    daa                                           ; $651E: $27
    db $ED                                        ; $651F: $ED

jr_00A_6520:
    ld c, $28                                     ; $6520: $0E $28
    push af                                       ; $6522: $F5

jr_00A_6523:
    db $10                                        ; $6523: $10
    jr z, jr_00A_6523                             ; $6524: $28 $FD

    ld [de], a                                    ; $6526: $12
    jr z, jr_00A_652E                             ; $6527: $28 $05

    inc d                                         ; $6529: $14
    jr jr_00A_6520                                ; $652A: $18 $F4

    ld d, $18                                     ; $652C: $16 $18

jr_00A_652E:
    db $FC                                        ; $652E: $FC
    jr @+$1A                                      ; $652F: $18 $18

    inc b                                         ; $6531: $04
    ld a, [de]                                    ; $6532: $1A
    ld a, [hl-]                                   ; $6533: $3A

jr_00A_6534:
    inc d                                         ; $6534: $14
    inc e                                         ; $6535: $1C
    nop                                           ; $6536: $00
    ld bc, $A000                                  ; $6537: $01 $00 $A0
    ld [hl], l                                    ; $653A: $75
    inc e                                         ; $653B: $1C
    ld c, d                                       ; $653C: $4A
    ld h, l                                       ; $653D: $65
    cp $F8                                        ; $653E: $FE $F8
    jr nz, jr_00A_6543                            ; $6540: $20 $01

    nop                                           ; $6542: $00

jr_00A_6543:
    and b                                         ; $6543: $A0
    ld [hl], l                                    ; $6544: $75
    inc e                                         ; $6545: $1C
    ld c, d                                       ; $6546: $4A
    ld h, l                                       ; $6547: $65
    cp $F8                                        ; $6548: $FE $F8

jr_00A_654A:
    inc b                                         ; $654A: $04
    jr jr_00A_6534                                ; $654B: $18 $E7

    nop                                           ; $654D: $00
    jr @-$0F                                      ; $654E: $18 $EF

    ld [bc], a                                    ; $6550: $02
    jr jr_00A_654A                                ; $6551: $18 $F7

    inc b                                         ; $6553: $04
    jr @+$01                                      ; $6554: $18 $FF

    ld b, $00                                     ; $6556: $06 $00
    jr nz, @+$78                                  ; $6558: $20 $76

    inc e                                         ; $655A: $1C
    ld l, c                                       ; $655B: $69
    ld h, l                                       ; $655C: $65
    cp $F8                                        ; $655D: $FE $F8
    nop                                           ; $655F: $00
    ld bc, $2000                                  ; $6560: $01 $00 $20
    halt                                          ; $6563: $76
    inc e                                         ; $6564: $1C
    ld l, c                                       ; $6565: $69
    ld h, l                                       ; $6566: $65
    dec b                                         ; $6567: $05
    ld hl, sp+$0C                                 ; $6568: $F8 $0C
    ld a, [hl+]                                   ; $656A: $2A
    rst RST_20                                    ; $656B: $E7
    nop                                           ; $656C: $00
    inc sp                                        ; $656D: $33
    rst RST_28                                    ; $656E: $EF
    ld [bc], a                                    ; $656F: $02
    inc sp                                        ; $6570: $33
    rst RST_30                                    ; $6571: $F7
    inc b                                         ; $6572: $04
    inc sp                                        ; $6573: $33
    rst RST_38                                    ; $6574: $FF
    ld b, $2B                                     ; $6575: $06 $2B
    rlca                                          ; $6577: $07
    ld [$0F35], sp                                ; $6578: $08 $35 $0F
    ld a, [bc]                                    ; $657B: $0A
    inc hl                                        ; $657C: $23
    rst RST_28                                    ; $657D: $EF
    inc c                                         ; $657E: $0C
    inc hl                                        ; $657F: $23
    rst RST_30                                    ; $6580: $F7
    ld c, $23                                     ; $6581: $0E $23
    rst RST_38                                    ; $6583: $FF
    db $10                                        ; $6584: $10
    ld b, e                                       ; $6585: $43
    rst RST_28                                    ; $6586: $EF
    ld [de], a                                    ; $6587: $12
    ld b, e                                       ; $6588: $43

jr_00A_6589:
    rst RST_38                                    ; $6589: $FF
    inc d                                         ; $658A: $14
    ld a, [hl-]                                   ; $658B: $3A
    rst RST_20                                    ; $658C: $E7
    ld d, $00                                     ; $658D: $16 $00
    ld bc, $A000                                  ; $658F: $01 $00 $A0
    ld c, a                                       ; $6592: $4F
    inc e                                         ; $6593: $1C

jr_00A_6594:
    sbc b                                         ; $6594: $98
    ld h, l                                       ; $6595: $65
    nop                                           ; $6596: $00
    nop                                           ; $6597: $00
    dec bc                                        ; $6598: $0B
    jr nc, jr_00A_6589                            ; $6599: $30 $EE

    nop                                           ; $659B: $00
    jr nc, jr_00A_6594                            ; $659C: $30 $F6

    ld [bc], a                                    ; $659E: $02

jr_00A_659F:
    jr nc, jr_00A_659F                            ; $659F: $30 $FE

    inc b                                         ; $65A1: $04
    jr nc, jr_00A_65AA                            ; $65A2: $30 $06

    ld b, $20                                     ; $65A4: $06 $20
    xor $08                                       ; $65A6: $EE $08
    jr nz, @-$08                                  ; $65A8: $20 $F6

jr_00A_65AA:
    ld a, [bc]                                    ; $65AA: $0A

jr_00A_65AB:
    jr nz, jr_00A_65AB                            ; $65AB: $20 $FE

    inc c                                         ; $65AD: $0C
    jr nz, jr_00A_65B6                            ; $65AE: $20 $06

    ld c, $2A                                     ; $65B0: $0E $2A
    ld c, $10                                     ; $65B2: $0E $10
    db $10                                        ; $65B4: $10
    db $FD                                        ; $65B5: $FD

jr_00A_65B6:
    ld [de], a                                    ; $65B6: $12
    db $10                                        ; $65B7: $10
    dec b                                         ; $65B8: $05
    inc d                                         ; $65B9: $14
    nop                                           ; $65BA: $00
    ld bc, $0000                                  ; $65BB: $01 $00 $00
    ld d, c                                       ; $65BE: $51
    inc e                                         ; $65BF: $1C
    ldh [c], a                                    ; $65C0: $E2
    ld h, l                                       ; $65C1: $65
    inc bc                                        ; $65C2: $03
    nop                                           ; $65C3: $00
    jr nz, jr_00A_65C7                            ; $65C4: $20 $01

    nop                                           ; $65C6: $00

jr_00A_65C7:
    nop                                           ; $65C7: $00
    ld d, c                                       ; $65C8: $51
    inc e                                         ; $65C9: $1C
    ldh [c], a                                    ; $65CA: $E2
    ld h, l                                       ; $65CB: $65
    db $FD                                        ; $65CC: $FD
    nop                                           ; $65CD: $00
    ld b, b                                       ; $65CE: $40
    ld bc, $0000                                  ; $65CF: $01 $00 $00
    ld d, c                                       ; $65D2: $51
    inc e                                         ; $65D3: $1C
    ldh [c], a                                    ; $65D4: $E2
    ld h, l                                       ; $65D5: $65

jr_00A_65D6:
    inc bc                                        ; $65D6: $03
    inc bc                                        ; $65D7: $03
    ld h, b                                       ; $65D8: $60
    ld bc, $0000                                  ; $65D9: $01 $00 $00
    ld d, c                                       ; $65DC: $51
    inc e                                         ; $65DD: $1C
    ldh [c], a                                    ; $65DE: $E2
    ld h, l                                       ; $65DF: $65
    db $FD                                        ; $65E0: $FD

jr_00A_65E1:
    inc bc                                        ; $65E1: $03
    ld a, [bc]                                    ; $65E2: $0A
    jr nc, jr_00A_65D6                            ; $65E3: $30 $F1

    nop                                           ; $65E5: $00
    jr nc, jr_00A_65E1                            ; $65E6: $30 $F9

    ld [bc], a                                    ; $65E8: $02
    jr nc, jr_00A_65EC                            ; $65E9: $30 $01

    inc b                                         ; $65EB: $04

jr_00A_65EC:
    jr nc, jr_00A_65F7                            ; $65EC: $30 $09

    ld b, $20                                     ; $65EE: $06 $20
    di                                            ; $65F0: $F3
    ld [$FB20], sp                                ; $65F1: $08 $20 $FB
    ld a, [bc]                                    ; $65F4: $0A
    jr nz, jr_00A_65FA                            ; $65F5: $20 $03

jr_00A_65F7:
    inc c                                         ; $65F7: $0C
    jr nz, jr_00A_6605                            ; $65F8: $20 $0B

jr_00A_65FA:
    ld c, $10                                     ; $65FA: $0E $10
    ld sp, hl                                     ; $65FC: $F9
    db $10                                        ; $65FD: $10

jr_00A_65FE:
    db $10                                        ; $65FE: $10
    ld bc, $0012                                  ; $65FF: $01 $12 $00
    ld bc, $4000                                  ; $6602: $01 $00 $40

jr_00A_6605:
    ld d, d                                       ; $6605: $52
    inc e                                         ; $6606: $1C
    dec bc                                        ; $6607: $0B
    ld h, [hl]                                    ; $6608: $66

jr_00A_6609:
    ld bc, $0800                                  ; $6609: $01 $00 $08
    jr nc, jr_00A_65FE                            ; $660C: $30 $F0

    nop                                           ; $660E: $00
    jr nc, jr_00A_6609                            ; $660F: $30 $F8

    ld [bc], a                                    ; $6611: $02
    jr nc, jr_00A_6614                            ; $6612: $30 $00

jr_00A_6614:
    inc b                                         ; $6614: $04
    jr nc, @+$0A                                  ; $6615: $30 $08

    ld b, $20                                     ; $6617: $06 $20
    ld hl, sp+$08                                 ; $6619: $F8 $08
    jr nz, jr_00A_661D                            ; $661B: $20 $00

jr_00A_661D:
    ld a, [bc]                                    ; $661D: $0A
    jr nz, jr_00A_6628                            ; $661E: $20 $08

    inc c                                         ; $6620: $0C
    ld a, [hl+]                                   ; $6621: $2A
    db $10                                        ; $6622: $10
    ld c, $00                                     ; $6623: $0E $00
    inc e                                         ; $6625: $1C
    nop                                           ; $6626: $00
    ld b, b                                       ; $6627: $40

jr_00A_6628:
    ld d, e                                       ; $6628: $53
    inc e                                         ; $6629: $1C
    jr c, jr_00A_6692                             ; $662A: $38 $66

    ld bc, $6010                                  ; $662C: $01 $10 $60
    inc e                                         ; $662F: $1C
    nop                                           ; $6630: $00
    ld b, b                                       ; $6631: $40
    ld d, e                                       ; $6632: $53
    inc e                                         ; $6633: $1C
    jr c, jr_00A_669C                             ; $6634: $38 $66

    nop                                           ; $6636: $00
    nop                                           ; $6637: $00
    add hl, bc                                    ; $6638: $09
    dec h                                         ; $6639: $25

jr_00A_663A:
    jp hl                                         ; $663A: $E9


    nop                                           ; $663B: $00
    dec h                                         ; $663C: $25
    pop af                                        ; $663D: $F1
    ld [bc], a                                    ; $663E: $02
    jr z, jr_00A_663A                             ; $663F: $28 $F9

    inc b                                         ; $6641: $04
    jr z, @+$03                                   ; $6642: $28 $01

    ld b, $28                                     ; $6644: $06 $28
    add hl, bc                                    ; $6646: $09
    ld [$F618], sp                                ; $6647: $08 $18 $F6
    ld a, [bc]                                    ; $664A: $0A

jr_00A_664B:
    jr jr_00A_664B                                ; $664B: $18 $FE

    inc c                                         ; $664D: $0C
    jr jr_00A_6656                                ; $664E: $18 $06

    ld c, $1A                                     ; $6650: $0E $1A
    ld c, $10                                     ; $6652: $0E $10
    nop                                           ; $6654: $00
    inc e                                         ; $6655: $1C

jr_00A_6656:
    nop                                           ; $6656: $00
    ld h, b                                       ; $6657: $60

jr_00A_6658:
    ld d, h                                       ; $6658: $54
    inc e                                         ; $6659: $1C
    ld e, [hl]                                    ; $665A: $5E
    ld h, [hl]                                    ; $665B: $66
    nop                                           ; $665C: $00
    ld [bc], a                                    ; $665D: $02
    add hl, bc                                    ; $665E: $09
    ld [hl], $EC                                  ; $665F: $36 $EC
    nop                                           ; $6661: $00
    jr c, jr_00A_6658                             ; $6662: $38 $F4

    ld [bc], a                                    ; $6664: $02
    jr c, @-$02                                   ; $6665: $38 $FC

    inc b                                         ; $6667: $04
    jr c, @+$06                                   ; $6668: $38 $04

    ld b, $38                                     ; $666A: $06 $38
    inc c                                         ; $666C: $0C
    ld [$F428], sp                                ; $666D: $08 $28 $F4
    ld a, [bc]                                    ; $6670: $0A
    jr z, @-$02                                   ; $6671: $28 $FC

    inc c                                         ; $6673: $0C
    jr z, @+$06                                   ; $6674: $28 $04

    ld c, $28                                     ; $6676: $0E $28
    inc c                                         ; $6678: $0C
    stop                                          ; $6679: $10 $00
    cp e                                          ; $667B: $BB
    nop                                           ; $667C: $00
    ld b, b                                       ; $667D: $40
    ld c, b                                       ; $667E: $48
    inc hl                                        ; $667F: $23
    adc [hl]                                      ; $6680: $8E
    ld h, [hl]                                    ; $6681: $66
    ldh a, [c]                                    ; $6682: $F2
    nop                                           ; $6683: $00
    nop                                           ; $6684: $00
    ld b, $05                                     ; $6685: $06 $05
    ld b, b                                       ; $6687: $40
    ld c, b                                       ; $6688: $48
    inc hl                                        ; $6689: $23
    adc [hl]                                      ; $668A: $8E
    ld h, [hl]                                    ; $668B: $66
    ldh a, [c]                                    ; $668C: $F2
    nop                                           ; $668D: $00
    dec b                                         ; $668E: $05
    rra                                           ; $668F: $1F
    db $F4                                        ; $6690: $F4
    nop                                           ; $6691: $00

jr_00A_6692:
    inc e                                         ; $6692: $1C
    db $EC                                        ; $6693: $EC
    ld [bc], a                                    ; $6694: $02
    inc l                                         ; $6695: $2C
    db $EC                                        ; $6696: $EC
    inc b                                         ; $6697: $04
    inc d                                         ; $6698: $14
    db $E4                                        ; $6699: $E4
    ld b, $2B                                     ; $669A: $06 $2B

jr_00A_669C:
    db $E4                                        ; $669C: $E4
    ld [$BB00], sp                                ; $669D: $08 $00 $BB
    nop                                           ; $66A0: $00
    ldh [rOBP0], a                                ; $66A1: $E0 $48
    inc hl                                        ; $66A3: $23
    or d                                          ; $66A4: $B2
    ld h, [hl]                                    ; $66A5: $66
    ldh a, [c]                                    ; $66A6: $F2
    nop                                           ; $66A7: $00
    nop                                           ; $66A8: $00
    ld b, $05                                     ; $66A9: $06 $05
    ldh [rOBP0], a                                ; $66AB: $E0 $48
    inc hl                                        ; $66AD: $23
    or d                                          ; $66AE: $B2
    ld h, [hl]                                    ; $66AF: $66
    ldh a, [c]                                    ; $66B0: $F2
    nop                                           ; $66B1: $00
    ld c, $30                                     ; $66B2: $0E $30
    inc de                                        ; $66B4: $13
    nop                                           ; $66B5: $00
    ld a, [hl+]                                   ; $66B6: $2A
    dec bc                                        ; $66B7: $0B
    ld [bc], a                                    ; $66B8: $02
    cpl                                           ; $66B9: $2F
    inc bc                                        ; $66BA: $03
    inc b                                         ; $66BB: $04
    cpl                                           ; $66BC: $2F
    ei                                            ; $66BD: $FB
    ld b, $20                                     ; $66BE: $06 $20
    inc de                                        ; $66C0: $13
    ld [$0B1A], sp                                ; $66C1: $08 $1A $0B
    ld a, [bc]                                    ; $66C4: $0A
    rra                                           ; $66C5: $1F
    inc bc                                        ; $66C6: $03
    inc c                                         ; $66C7: $0C
    rra                                           ; $66C8: $1F
    ei                                            ; $66C9: $FB
    ld c, $1E                                     ; $66CA: $0E $1E
    di                                            ; $66CC: $F3
    db $10                                        ; $66CD: $10
    dec de                                        ; $66CE: $1B
    db $EB                                        ; $66CF: $EB
    ld [de], a                                    ; $66D0: $12
    dec hl                                        ; $66D1: $2B
    db $EB                                        ; $66D2: $EB
    inc d                                         ; $66D3: $14
    inc de                                        ; $66D4: $13
    db $E3                                        ; $66D5: $E3
    ld d, $2C                                     ; $66D6: $16 $2C
    db $E3                                        ; $66D8: $E3
    jr jr_00A_66EA                                ; $66D9: $18 $0F

    inc bc                                        ; $66DB: $03
    ld a, [de]                                    ; $66DC: $1A
    nop                                           ; $66DD: $00
    db $F4                                        ; $66DE: $F4
    xor b                                         ; $66DF: $A8
    and b                                         ; $66E0: $A0
    ld c, d                                       ; $66E1: $4A
    inc hl                                        ; $66E2: $23
    rst RST_20                                    ; $66E3: $E7
    ld h, [hl]                                    ; $66E4: $66
    di                                            ; $66E5: $F3
    nop                                           ; $66E6: $00
    ld a, [bc]                                    ; $66E7: $0A
    jr jr_00A_66F6                                ; $66E8: $18 $0C

jr_00A_66EA:
    nop                                           ; $66EA: $00
    jr nz, jr_00A_66F1                            ; $66EB: $20 $04

    ld [bc], a                                    ; $66ED: $02
    jr nz, @-$02                                  ; $66EE: $20 $FC

    inc b                                         ; $66F0: $04

jr_00A_66F1:
    inc h                                         ; $66F1: $24
    db $F4                                        ; $66F2: $F4
    ld b, $34                                     ; $66F3: $06 $34
    db $F4                                        ; $66F5: $F4

jr_00A_66F6:
    ld [$EC1E], sp                                ; $66F6: $08 $1E $EC
    ld a, [bc]                                    ; $66F9: $0A
    dec h                                         ; $66FA: $25
    db $E4                                        ; $66FB: $E4
    inc c                                         ; $66FC: $0C
    dec de                                        ; $66FD: $1B
    call c, Call_000_100E                         ; $66FE: $DC $0E $10
    db $FD                                        ; $6701: $FD
    db $10                                        ; $6702: $10
    db $10                                        ; $6703: $10
    dec b                                         ; $6704: $05
    ld [de], a                                    ; $6705: $12
    nop                                           ; $6706: $00
    ldh [rWX], a                                  ; $6707: $E0 $4B
    inc hl                                        ; $6709: $23
    ld c, $67                                     ; $670A: $0E $67
    di                                            ; $670C: $F3
    nop                                           ; $670D: $00
    ld b, $30                                     ; $670E: $06 $30
    db $FC                                        ; $6710: $FC
    nop                                           ; $6711: $00
    jr nc, jr_00A_6718                            ; $6712: $30 $04

    ld [bc], a                                    ; $6714: $02
    jr z, jr_00A_6723                             ; $6715: $28 $0C

    inc b                                         ; $6717: $04

jr_00A_6718:
    jr z, @+$16                                   ; $6718: $28 $14

    ld b, $38                                     ; $671A: $06 $38
    inc c                                         ; $671C: $0C
    ld [$1438], sp                                ; $671D: $08 $38 $14
    ld a, [bc]                                    ; $6720: $0A
    nop                                           ; $6721: $00
    and b                                         ; $6722: $A0

jr_00A_6723:
    ld c, h                                       ; $6723: $4C
    inc hl                                        ; $6724: $23
    add hl, hl                                    ; $6725: $29
    ld h, a                                       ; $6726: $67
    di                                            ; $6727: $F3

jr_00A_6728:
    nop                                           ; $6728: $00
    dec b                                         ; $6729: $05
    jr nc, jr_00A_6728                            ; $672A: $30 $FC

    nop                                           ; $672C: $00
    jr nc, jr_00A_6733                            ; $672D: $30 $04

    ld [bc], a                                    ; $672F: $02
    jr z, jr_00A_673E                             ; $6730: $28 $0C

    inc b                                         ; $6732: $04

jr_00A_6733:
    jr c, jr_00A_6741                             ; $6733: $38 $0C

    ld b, $37                                     ; $6735: $06 $37
    inc d                                         ; $6737: $14
    ld [$0100], sp                                ; $6738: $08 $00 $01
    cp d                                          ; $673B: $BA
    ld b, b                                       ; $673C: $40
    ld c, l                                       ; $673D: $4D

jr_00A_673E:
    inc hl                                        ; $673E: $23
    ld b, e                                       ; $673F: $43
    ld h, a                                       ; $6740: $67

jr_00A_6741:
    inc b                                         ; $6741: $04
    ld hl, sp+$0E                                 ; $6742: $F8 $0E
    ld l, $E0                                     ; $6744: $2E $E0
    nop                                           ; $6746: $00
    ld a, [hl+]                                   ; $6747: $2A
    add sp, $02                                   ; $6748: $E8 $02
    inc hl                                        ; $674A: $23
    ldh a, [rDIV]                                 ; $674B: $F0 $04
    inc hl                                        ; $674D: $23
    ld hl, sp+$06                                 ; $674E: $F8 $06
    inc hl                                        ; $6750: $23
    nop                                           ; $6751: $00
    ld [$E83A], sp                                ; $6752: $08 $3A $E8
    ld a, [bc]                                    ; $6755: $0A
    inc sp                                        ; $6756: $33
    ldh a, [$FF0C]                                ; $6757: $F0 $0C
    inc sp                                        ; $6759: $33
    ld hl, sp+$0E                                 ; $675A: $F8 $0E
    inc sp                                        ; $675C: $33

jr_00A_675D:
    nop                                           ; $675D: $00
    db $10                                        ; $675E: $10
    ld b, e                                       ; $675F: $43
    ldh a, [rNR12]                                ; $6760: $F0 $12
    ld b, e                                       ; $6762: $43
    rst RST_38                                    ; $6763: $FF
    inc d                                         ; $6764: $14
    ld b, [hl]                                    ; $6765: $46
    rlca                                          ; $6766: $07
    ld d, $2B                                     ; $6767: $16 $2B
    ld [$3618], sp                                ; $6769: $08 $18 $36
    db $10                                        ; $676C: $10
    ld a, [de]                                    ; $676D: $1A
    nop                                           ; $676E: $00

jr_00A_676F:
    inc e                                         ; $676F: $1C
    xor [hl]                                      ; $6770: $AE
    nop                                           ; $6771: $00
    ld c, a                                       ; $6772: $4F

jr_00A_6773:
    inc hl                                        ; $6773: $23
    ld a, b                                       ; $6774: $78
    ld h, a                                       ; $6775: $67
    rlca                                          ; $6776: $07
    ld hl, sp+$0B                                 ; $6777: $F8 $0B
    jr c, jr_00A_675D                             ; $6779: $38 $E2

    nop                                           ; $677B: $00
    jr c, @-$14                                   ; $677C: $38 $EA

jr_00A_677E:
    ld [bc], a                                    ; $677E: $02
    jr c, jr_00A_6773                             ; $677F: $38 $F2

    inc b                                         ; $6781: $04
    jr c, jr_00A_677E                             ; $6782: $38 $FA

    ld b, $38                                     ; $6784: $06 $38
    ld [bc], a                                    ; $6786: $02
    ld [$0A42], sp                                ; $6787: $08 $42 $0A
    ld a, [bc]                                    ; $678A: $0A
    jr z, jr_00A_676F                             ; $678B: $28 $E2

    inc c                                         ; $678D: $0C
    jr z, @-$14                                   ; $678E: $28 $EA

jr_00A_6790:
    ld c, $28                                     ; $6790: $0E $28
    ldh a, [c]                                    ; $6792: $F2
    db $10                                        ; $6793: $10
    jr z, jr_00A_6790                             ; $6794: $28 $FA

    ld [de], a                                    ; $6796: $12
    jr z, jr_00A_679B                             ; $6797: $28 $02

    inc d                                         ; $6799: $14

jr_00A_679A:
    nop                                           ; $679A: $00

jr_00A_679B:
    ld bc, $60AF                                  ; $679B: $01 $AF $60
    ld d, b                                       ; $679E: $50
    inc hl                                        ; $679F: $23
    and h                                         ; $67A0: $A4
    ld h, a                                       ; $67A1: $67
    ld b, $E8                                     ; $67A2: $06 $E8
    ld [$E830], sp                                ; $67A4: $08 $30 $E8
    nop                                           ; $67A7: $00
    jr nc, jr_00A_679A                            ; $67A8: $30 $F0

jr_00A_67AA:
    ld [bc], a                                    ; $67AA: $02
    jr nc, @-$06                                  ; $67AB: $30 $F8

    inc b                                         ; $67AD: $04
    jr nc, jr_00A_67B0                            ; $67AE: $30 $00

jr_00A_67B0:
    ld b, $20                                     ; $67B0: $06 $20
    ld [$2008], a                                 ; $67B2: $EA $08 $20

jr_00A_67B5:
    ldh a, [c]                                    ; $67B5: $F2
    ld a, [bc]                                    ; $67B6: $0A
    jr nz, @-$04                                  ; $67B7: $20 $FA

    inc c                                         ; $67B9: $0C
    db $10                                        ; $67BA: $10
    db $EC                                        ; $67BB: $EC
    ld c, $00                                     ; $67BC: $0E $00
    ld h, b                                       ; $67BE: $60
    ld d, c                                       ; $67BF: $51

jr_00A_67C0:
    inc hl                                        ; $67C0: $23
    push bc                                       ; $67C1: $C5
    ld h, a                                       ; $67C2: $67
    ld c, $00                                     ; $67C3: $0E $00
    rlca                                          ; $67C5: $07
    jr z, jr_00A_67AA                             ; $67C6: $28 $E2

    nop                                           ; $67C8: $00
    jr z, jr_00A_67B5                             ; $67C9: $28 $EA

jr_00A_67CB:
    ld [bc], a                                    ; $67CB: $02

jr_00A_67CC:
    jr z, jr_00A_67C0                             ; $67CC: $28 $F2

    inc b                                         ; $67CE: $04
    jr z, jr_00A_67CB                             ; $67CF: $28 $FA

    ld b, $38                                     ; $67D1: $06 $38
    ldh [c], a                                    ; $67D3: $E2
    ld [$EA38], sp                                ; $67D4: $08 $38 $EA
    ld a, [bc]                                    ; $67D7: $0A
    jr c, jr_00A_67CC                             ; $67D8: $38 $F2

    inc c                                         ; $67DA: $0C

jr_00A_67DB:
    nop                                           ; $67DB: $00
    ld bc, $4000                                  ; $67DC: $01 $00 $40
    ld d, d                                       ; $67DF: $52
    inc hl                                        ; $67E0: $23
    push hl                                       ; $67E1: $E5
    ld h, a                                       ; $67E2: $67
    ld b, $F2                                     ; $67E3: $06 $F2
    add hl, bc                                    ; $67E5: $09

jr_00A_67E6:
    jr z, @-$16                                   ; $67E6: $28 $E8

    nop                                           ; $67E8: $00
    jr z, jr_00A_67DB                             ; $67E9: $28 $F0

    ld [bc], a                                    ; $67EB: $02
    jr z, jr_00A_67E6                             ; $67EC: $28 $F8

    inc b                                         ; $67EE: $04
    jr z, jr_00A_67F1                             ; $67EF: $28 $00

jr_00A_67F1:
    ld b, $36                                     ; $67F1: $06 $36
    ld [$1808], sp                                ; $67F3: $08 $08 $18
    db $EB                                        ; $67F6: $EB
    ld a, [bc]                                    ; $67F7: $0A

jr_00A_67F8:
    jr @-$0B                                      ; $67F8: $18 $F3

    inc c                                         ; $67FA: $0C
    jr jr_00A_67F8                                ; $67FB: $18 $FB

    ld c, $08                                     ; $67FD: $0E $08
    db $EC                                        ; $67FF: $EC
    stop                                          ; $6800: $10 $00
    ld h, b                                       ; $6802: $60
    ld d, e                                       ; $6803: $53
    inc hl                                        ; $6804: $23
    add hl, bc                                    ; $6805: $09
    ld l, b                                       ; $6806: $68
    cp $0A                                        ; $6807: $FE $0A
    ld b, $20                                     ; $6809: $06 $20
    di                                            ; $680B: $F3
    nop                                           ; $680C: $00
    jr nz, @-$03                                  ; $680D: $20 $FB

    ld [bc], a                                    ; $680F: $02
    jr nz, jr_00A_6815                            ; $6810: $20 $03

    inc b                                         ; $6812: $04
    jr nz, jr_00A_6820                            ; $6813: $20 $0B

jr_00A_6815:
    ld b, $30                                     ; $6815: $06 $30
    ei                                            ; $6817: $FB
    ld [$0330], sp                                ; $6818: $08 $30 $03
    ld a, [bc]                                    ; $681B: $0A
    nop                                           ; $681C: $00
    ld bc, $2000                                  ; $681D: $01 $00 $20

jr_00A_6820:
    ld d, h                                       ; $6820: $54
    inc hl                                        ; $6821: $23
    ld h, $68                                     ; $6822: $26 $68
    ld c, $FB                                     ; $6824: $0E $FB
    ld a, [bc]                                    ; $6826: $0A
    add hl, hl                                    ; $6827: $29
    push hl                                       ; $6828: $E5
    nop                                           ; $6829: $00
    inc sp                                        ; $682A: $33
    db $ED                                        ; $682B: $ED
    ld [bc], a                                    ; $682C: $02
    inc hl                                        ; $682D: $23
    db $ED                                        ; $682E: $ED
    inc b                                         ; $682F: $04
    add hl, de                                    ; $6830: $19
    push hl                                       ; $6831: $E5
    ld b, $13                                     ; $6832: $06 $13
    db $ED                                        ; $6834: $ED
    ld [$F52A], sp                                ; $6835: $08 $2A $F5
    ld a, [bc]                                    ; $6838: $0A
    ld a, [de]                                    ; $6839: $1A
    push af                                       ; $683A: $F5
    inc c                                         ; $683B: $0C
    inc sp                                        ; $683C: $33
    db $FD                                        ; $683D: $FD
    ld c, $1A                                     ; $683E: $0E $1A
    db $FD                                        ; $6840: $FD
    db $10                                        ; $6841: $10
    ld a, [bc]                                    ; $6842: $0A
    db $FC                                        ; $6843: $FC
    ld [de], a                                    ; $6844: $12
    nop                                           ; $6845: $00
    ld bc, $6000                                  ; $6846: $01 $00 $60
    ld d, l                                       ; $6849: $55
    inc hl                                        ; $684A: $23
    ld c, a                                       ; $684B: $4F
    ld l, b                                       ; $684C: $68
    ld a, [$0E00]                                 ; $684D: $FA $00 $0E
    ld d, $DF                                     ; $6850: $16 $DF
    nop                                           ; $6852: $00
    ld e, $E7                                     ; $6853: $1E $E7
    ld [bc], a                                    ; $6855: $02
    inc e                                         ; $6856: $1C
    rst RST_28                                    ; $6857: $EF
    inc b                                         ; $6858: $04
    ld e, $F7                                     ; $6859: $1E $F7
    ld b, $19                                     ; $685B: $06 $19
    rst RST_38                                    ; $685D: $FF
    ld [$071A], sp                                ; $685E: $08 $1A $07
    ld a, [bc]                                    ; $6861: $0A
    ld e, $0F                                     ; $6862: $1E $0F
    inc c                                         ; $6864: $0C
    add hl, hl                                    ; $6865: $29
    rst RST_18                                    ; $6866: $DF
    ld c, $2E                                     ; $6867: $0E $2E
    rst RST_30                                    ; $6869: $F7
    db $10                                        ; $686A: $10
    add hl, hl                                    ; $686B: $29
    rst RST_38                                    ; $686C: $FF
    ld [de], a                                    ; $686D: $12
    ld a, [hl+]                                   ; $686E: $2A
    rlca                                          ; $686F: $07
    inc d                                         ; $6870: $14
    ld [hl-], a                                   ; $6871: $32
    rst RST_28                                    ; $6872: $EF
    ld d, $3E                                     ; $6873: $16 $3E
    rst RST_30                                    ; $6875: $F7
    jr jr_00A_68AF                                ; $6876: $18 $37

    inc c                                         ; $6878: $0C
    ld a, [de]                                    ; $6879: $1A
    nop                                           ; $687A: $00
    ld bc, $20F8                                  ; $687B: $01 $F8 $20
    ld d, a                                       ; $687E: $57
    inc hl                                        ; $687F: $23
    add h                                         ; $6880: $84
    ld l, b                                       ; $6881: $68
    ld a, [$0E00]                                 ; $6882: $FA $00 $0E
    ld d, $E0                                     ; $6885: $16 $E0
    nop                                           ; $6887: $00
    ld e, $E8                                     ; $6888: $1E $E8
    ld [bc], a                                    ; $688A: $02
    inc e                                         ; $688B: $1C
    ldh a, [rDIV]                                 ; $688C: $F0 $04
    ld e, $F8                                     ; $688E: $1E $F8
    ld b, $19                                     ; $6890: $06 $19
    nop                                           ; $6892: $00
    ld [$081A], sp                                ; $6893: $08 $1A $08
    ld a, [bc]                                    ; $6896: $0A
    ld e, $10                                     ; $6897: $1E $10
    inc c                                         ; $6899: $0C
    add hl, hl                                    ; $689A: $29
    ldh [$FF0E], a                                ; $689B: $E0 $0E
    ld [hl-], a                                   ; $689D: $32
    ldh a, [rNR10]                                ; $689E: $F0 $10
    ld l, $F8                                     ; $68A0: $2E $F8
    ld [de], a                                    ; $68A2: $12
    add hl, hl                                    ; $68A3: $29
    nop                                           ; $68A4: $00
    inc d                                         ; $68A5: $14
    ld a, [hl+]                                   ; $68A6: $2A
    ld [$3E16], sp                                ; $68A7: $08 $16 $3E
    ld hl, sp+$18                                 ; $68AA: $F8 $18
    scf                                           ; $68AC: $37
    inc c                                         ; $68AD: $0C
    ld a, [de]                                    ; $68AE: $1A

jr_00A_68AF:
    or e                                          ; $68AF: $B3
    ld l, e                                       ; $68B0: $6B
    rst RST_38                                    ; $68B1: $FF
    rst RST_38                                    ; $68B2: $FF
    db $ED                                        ; $68B3: $ED
    ld l, e                                       ; $68B4: $6B
    rst RST_38                                    ; $68B5: $FF
    rst RST_38                                    ; $68B6: $FF
    inc de                                        ; $68B7: $13
    ld l, h                                       ; $68B8: $6C
    rst RST_38                                    ; $68B9: $FF
    rst RST_38                                    ; $68BA: $FF
    add hl, sp                                    ; $68BB: $39
    ld l, h                                       ; $68BC: $6C
    rst RST_38                                    ; $68BD: $FF
    rst RST_38                                    ; $68BE: $FF
    rst RST_38                                    ; $68BF: $FF
    rst RST_38                                    ; $68C0: $FF
    ld e, a                                       ; $68C1: $5F
    ld l, h                                       ; $68C2: $6C
    rst RST_38                                    ; $68C3: $FF
    rst RST_38                                    ; $68C4: $FF
    adc b                                         ; $68C5: $88
    ld l, h                                       ; $68C6: $6C
    rst RST_38                                    ; $68C7: $FF
    rst RST_38                                    ; $68C8: $FF
    ld e, a                                       ; $68C9: $5F
    ld l, h                                       ; $68CA: $6C
    rst RST_38                                    ; $68CB: $FF
    rst RST_38                                    ; $68CC: $FF
    or c                                          ; $68CD: $B1
    ld l, h                                       ; $68CE: $6C
    rst RST_38                                    ; $68CF: $FF
    rst RST_38                                    ; $68D0: $FF
    rst RST_38                                    ; $68D1: $FF
    rst RST_38                                    ; $68D2: $FF
    or c                                          ; $68D3: $B1
    ld l, h                                       ; $68D4: $6C
    rst RST_38                                    ; $68D5: $FF
    rst RST_38                                    ; $68D6: $FF
    ld e, a                                       ; $68D7: $5F
    ld l, h                                       ; $68D8: $6C
    rst RST_38                                    ; $68D9: $FF
    rst RST_38                                    ; $68DA: $FF
    adc b                                         ; $68DB: $88
    ld l, h                                       ; $68DC: $6C
    rst RST_38                                    ; $68DD: $FF
    rst RST_38                                    ; $68DE: $FF
    ld e, a                                       ; $68DF: $5F
    ld l, h                                       ; $68E0: $6C
    rst RST_38                                    ; $68E1: $FF
    rst RST_38                                    ; $68E2: $FF
    rst RST_38                                    ; $68E3: $FF
    rst RST_38                                    ; $68E4: $FF
    rst RST_10                                    ; $68E5: $D7
    ld l, h                                       ; $68E6: $6C
    rst RST_38                                    ; $68E7: $FF
    rst RST_38                                    ; $68E8: $FF
    rst RST_38                                    ; $68E9: $FF
    rst RST_38                                    ; $68EA: $FF
    rst RST_10                                    ; $68EB: $D7
    ld l, h                                       ; $68EC: $6C
    rst RST_38                                    ; $68ED: $FF
    rst RST_38                                    ; $68EE: $FF
    db $FD                                        ; $68EF: $FD
    ld l, h                                       ; $68F0: $6C
    rst RST_38                                    ; $68F1: $FF
    rst RST_38                                    ; $68F2: $FF
    db $FD                                        ; $68F3: $FD
    ld l, h                                       ; $68F4: $6C
    rst RST_38                                    ; $68F5: $FF
    rst RST_38                                    ; $68F6: $FF
    db $FD                                        ; $68F7: $FD
    ld l, h                                       ; $68F8: $6C
    rst RST_38                                    ; $68F9: $FF
    rst RST_38                                    ; $68FA: $FF
    db $FD                                        ; $68FB: $FD
    ld l, h                                       ; $68FC: $6C
    rst RST_38                                    ; $68FD: $FF
    rst RST_38                                    ; $68FE: $FF
    db $FD                                        ; $68FF: $FD
    ld l, h                                       ; $6900: $6C
    rst RST_38                                    ; $6901: $FF
    rst RST_38                                    ; $6902: $FF
    db $FD                                        ; $6903: $FD
    ld l, h                                       ; $6904: $6C
    rst RST_38                                    ; $6905: $FF
    rst RST_38                                    ; $6906: $FF
    rst RST_10                                    ; $6907: $D7
    ld l, h                                       ; $6908: $6C
    rst RST_38                                    ; $6909: $FF
    rst RST_38                                    ; $690A: $FF
    rst RST_38                                    ; $690B: $FF
    rst RST_38                                    ; $690C: $FF
    add hl, hl                                    ; $690D: $29
    ld l, l                                       ; $690E: $6D
    rst RST_38                                    ; $690F: $FF
    rst RST_38                                    ; $6910: $FF
    rst RST_38                                    ; $6911: $FF
    rst RST_38                                    ; $6912: $FF
    ld c, h                                       ; $6913: $4C
    ld l, l                                       ; $6914: $6D
    ld a, l                                       ; $6915: $7D
    ld l, l                                       ; $6916: $6D
    rst RST_38                                    ; $6917: $FF
    rst RST_38                                    ; $6918: $FF
    sub d                                         ; $6919: $92
    ld l, l                                       ; $691A: $6D
    rst RST_38                                    ; $691B: $FF
    rst RST_38                                    ; $691C: $FF
    rst RST_10                                    ; $691D: $D7
    ld l, h                                       ; $691E: $6C
    rst RST_38                                    ; $691F: $FF
    rst RST_38                                    ; $6920: $FF
    rst RST_38                                    ; $6921: $FF
    rst RST_38                                    ; $6922: $FF
    ld c, d                                       ; $6923: $4A
    ld [hl], d                                    ; $6924: $72
    ld h, a                                       ; $6925: $67
    ld [hl], d                                    ; $6926: $72
    ld d, [hl]                                    ; $6927: $56
    ld l, l                                       ; $6928: $6D
    cp b                                          ; $6929: $B8
    ld l, l                                       ; $692A: $6D
    ld c, d                                       ; $692B: $4A
    ld [hl], d                                    ; $692C: $72
    ld h, a                                       ; $692D: $67
    ld [hl], d                                    ; $692E: $72
    rst RST_38                                    ; $692F: $FF
    rst RST_38                                    ; $6930: $FF
    add hl, hl                                    ; $6931: $29
    ld l, l                                       ; $6932: $6D
    rst RST_38                                    ; $6933: $FF
    rst RST_38                                    ; $6934: $FF
    ret nc                                        ; $6935: $D0

    ld l, l                                       ; $6936: $6D
    rst RST_38                                    ; $6937: $FF
    rst RST_38                                    ; $6938: $FF
    add hl, hl                                    ; $6939: $29
    ld l, l                                       ; $693A: $6D
    rst RST_38                                    ; $693B: $FF
    rst RST_38                                    ; $693C: $FF
    rst RST_38                                    ; $693D: $FF
    rst RST_38                                    ; $693E: $FF
    ld sp, hl                                     ; $693F: $F9
    ld l, l                                       ; $6940: $6D
    dec l                                         ; $6941: $2D
    ld l, [hl]                                    ; $6942: $6E
    ld c, d                                       ; $6943: $4A
    ld l, [hl]                                    ; $6944: $6E
    rst RST_38                                    ; $6945: $FF
    rst RST_38                                    ; $6946: $FF
    add h                                         ; $6947: $84
    ld l, [hl]                                    ; $6948: $6E
    rst RST_38                                    ; $6949: $FF
    rst RST_38                                    ; $694A: $FF
    rst RST_38                                    ; $694B: $FF
    rst RST_38                                    ; $694C: $FF
    cp [hl]                                       ; $694D: $BE
    ld l, [hl]                                    ; $694E: $6E
    rst RST_38                                    ; $694F: $FF
    rst RST_38                                    ; $6950: $FF
    db $E4                                        ; $6951: $E4
    ld l, [hl]                                    ; $6952: $6E
    rst RST_38                                    ; $6953: $FF
    rst RST_38                                    ; $6954: $FF
    ld h, b                                       ; $6955: $60
    ld l, l                                       ; $6956: $6D
    cp b                                          ; $6957: $B8
    ld l, l                                       ; $6958: $6D
    rst RST_38                                    ; $6959: $FF
    rst RST_38                                    ; $695A: $FF
    db $10                                        ; $695B: $10
    ld l, a                                       ; $695C: $6F
    rst RST_38                                    ; $695D: $FF
    rst RST_38                                    ; $695E: $FF
    ld [hl], $6F                                  ; $695F: $36 $6F
    rst RST_38                                    ; $6961: $FF
    rst RST_38                                    ; $6962: $FF
    db $10                                        ; $6963: $10
    ld l, a                                       ; $6964: $6F
    rst RST_38                                    ; $6965: $FF
    rst RST_38                                    ; $6966: $FF
    rst RST_38                                    ; $6967: $FF
    rst RST_38                                    ; $6968: $FF
    ld h, d                                       ; $6969: $62
    ld l, a                                       ; $696A: $6F
    rst RST_38                                    ; $696B: $FF
    rst RST_38                                    ; $696C: $FF
    adc a                                         ; $696D: $8F
    ld l, a                                       ; $696E: $6F
    rst RST_38                                    ; $696F: $FF
    rst RST_38                                    ; $6970: $FF
    ld h, d                                       ; $6971: $62
    ld l, a                                       ; $6972: $6F
    rst RST_38                                    ; $6973: $FF
    rst RST_38                                    ; $6974: $FF
    rst RST_38                                    ; $6975: $FF
    rst RST_38                                    ; $6976: $FF
    push bc                                       ; $6977: $C5
    ld l, a                                       ; $6978: $6F
    rst RST_38                                    ; $6979: $FF
    rst RST_38                                    ; $697A: $FF
    ldh a, [c]                                    ; $697B: $F2
    ld l, a                                       ; $697C: $6F
    rst RST_38                                    ; $697D: $FF
    rst RST_38                                    ; $697E: $FF
    ldh a, [c]                                    ; $697F: $F2
    ld l, a                                       ; $6980: $6F
    rst RST_38                                    ; $6981: $FF
    rst RST_38                                    ; $6982: $FF
    ldh a, [c]                                    ; $6983: $F2
    ld l, a                                       ; $6984: $6F
    rst RST_38                                    ; $6985: $FF
    rst RST_38                                    ; $6986: $FF
    rst RST_10                                    ; $6987: $D7
    ld l, h                                       ; $6988: $6C
    rst RST_38                                    ; $6989: $FF
    rst RST_38                                    ; $698A: $FF
    rst RST_38                                    ; $698B: $FF
    rst RST_38                                    ; $698C: $FF
    ld l, h                                       ; $698D: $6C
    ld l, a                                       ; $698E: $6F
    rst RST_38                                    ; $698F: $FF
    rst RST_38                                    ; $6990: $FF
    sbc c                                         ; $6991: $99
    ld l, a                                       ; $6992: $6F
    rst RST_38                                    ; $6993: $FF
    rst RST_38                                    ; $6994: $FF
    sbc c                                         ; $6995: $99
    ld l, a                                       ; $6996: $6F
    rst RST_38                                    ; $6997: $FF
    rst RST_38                                    ; $6998: $FF
    sbc c                                         ; $6999: $99
    ld l, a                                       ; $699A: $6F
    rst RST_38                                    ; $699B: $FF
    rst RST_38                                    ; $699C: $FF
    rst RST_10                                    ; $699D: $D7
    ld l, h                                       ; $699E: $6C
    rst RST_38                                    ; $699F: $FF
    rst RST_38                                    ; $69A0: $FF
    rst RST_38                                    ; $69A1: $FF
    rst RST_38                                    ; $69A2: $FF
    ld sp, hl                                     ; $69A3: $F9
    ld l, l                                       ; $69A4: $6D
    dec l                                         ; $69A5: $2D
    ld l, [hl]                                    ; $69A6: $6E
    ld d, h                                       ; $69A7: $54
    ld l, [hl]                                    ; $69A8: $6E
    rst RST_38                                    ; $69A9: $FF
    rst RST_38                                    ; $69AA: $FF
    sbc b                                         ; $69AB: $98
    ld l, [hl]                                    ; $69AC: $6E
    rst RST_38                                    ; $69AD: $FF
    rst RST_38                                    ; $69AE: $FF
    dec h                                         ; $69AF: $25
    ld [hl], b                                    ; $69B0: $70
    rst RST_38                                    ; $69B1: $FF
    rst RST_38                                    ; $69B2: $FF
    dec c                                         ; $69B3: $0D
    ld l, [hl]                                    ; $69B4: $6E
    dec [hl]                                      ; $69B5: $35
    ld l, [hl]                                    ; $69B6: $6E
    rst RST_00                                    ; $69B7: $C7
    ld l, e                                       ; $69B8: $6B
    rst RST_38                                    ; $69B9: $FF
    rst RST_38                                    ; $69BA: $FF
    rst RST_38                                    ; $69BB: $FF
    rst RST_38                                    ; $69BC: $FF
    ld c, e                                       ; $69BD: $4B
    ld [hl], b                                    ; $69BE: $70
    rst RST_38                                    ; $69BF: $FF
    rst RST_38                                    ; $69C0: $FF
    rst RST_10                                    ; $69C1: $D7
    ld l, h                                       ; $69C2: $6C
    rst RST_38                                    ; $69C3: $FF
    rst RST_38                                    ; $69C4: $FF
    rst RST_38                                    ; $69C5: $FF
    rst RST_38                                    ; $69C6: $FF
    rst RST_08                                    ; $69C7: $CF
    ld l, a                                       ; $69C8: $6F
    rst RST_38                                    ; $69C9: $FF
    rst RST_38                                    ; $69CA: $FF
    rst RST_08                                    ; $69CB: $CF
    ld l, a                                       ; $69CC: $6F
    rst RST_38                                    ; $69CD: $FF
    rst RST_38                                    ; $69CE: $FF
    rst RST_10                                    ; $69CF: $D7
    ld l, h                                       ; $69D0: $6C
    rst RST_38                                    ; $69D1: $FF
    rst RST_38                                    ; $69D2: $FF
    rst RST_38                                    ; $69D3: $FF
    rst RST_38                                    ; $69D4: $FF
    add a                                         ; $69D5: $87
    ld [hl], b                                    ; $69D6: $70
    rst RST_38                                    ; $69D7: $FF
    rst RST_38                                    ; $69D8: $FF
    add hl, sp                                    ; $69D9: $39
    ld [hl], e                                    ; $69DA: $73
    rst RST_38                                    ; $69DB: $FF
    rst RST_38                                    ; $69DC: $FF
    rst RST_38                                    ; $69DD: $FF
    rst RST_38                                    ; $69DE: $FF
    rra                                           ; $69DF: $1F
    ld [hl], c                                    ; $69E0: $71
    rst RST_38                                    ; $69E1: $FF
    rst RST_38                                    ; $69E2: $FF
    ld [de], a                                    ; $69E3: $12
    ld [hl], d                                    ; $69E4: $72
    rst RST_38                                    ; $69E5: $FF
    rst RST_38                                    ; $69E6: $FF
    rra                                           ; $69E7: $1F
    ld [hl], c                                    ; $69E8: $71
    rst RST_38                                    ; $69E9: $FF
    rst RST_38                                    ; $69EA: $FF
    rst RST_38                                    ; $69EB: $FF
    rst RST_38                                    ; $69EC: $FF
    or b                                          ; $69ED: $B0
    ld [hl], b                                    ; $69EE: $70
    call $E570                                    ; $69EF: $CD $70 $E5
    ld [hl], b                                    ; $69F2: $70
    call Call_000_0270                            ; $69F3: $CD $70 $02
    ld [hl], c                                    ; $69F6: $71
    call $E570                                    ; $69F7: $CD $70 $E5
    ld [hl], b                                    ; $69FA: $70
    call $FF70                                    ; $69FB: $CD $70 $FF
    rst RST_38                                    ; $69FE: $FF
    rra                                           ; $69FF: $1F
    ld [hl], c                                    ; $6A00: $71
    rst RST_38                                    ; $6A01: $FF
    rst RST_38                                    ; $6A02: $FF
    ld b, l                                       ; $6A03: $45
    ld [hl], c                                    ; $6A04: $71
    rst RST_38                                    ; $6A05: $FF
    rst RST_38                                    ; $6A06: $FF
    ld l, [hl]                                    ; $6A07: $6E
    ld [hl], c                                    ; $6A08: $71
    rst RST_38                                    ; $6A09: $FF
    rst RST_38                                    ; $6A0A: $FF
    ld b, l                                       ; $6A0B: $45
    ld [hl], c                                    ; $6A0C: $71
    rst RST_38                                    ; $6A0D: $FF
    rst RST_38                                    ; $6A0E: $FF
    sub a                                         ; $6A0F: $97
    ld [hl], c                                    ; $6A10: $71
    rst RST_38                                    ; $6A11: $FF
    rst RST_38                                    ; $6A12: $FF
    ret nz                                        ; $6A13: $C0

    ld [hl], c                                    ; $6A14: $71
    rst RST_38                                    ; $6A15: $FF
    rst RST_38                                    ; $6A16: $FF
    jp hl                                         ; $6A17: $E9


    ld [hl], c                                    ; $6A18: $71
    rst RST_38                                    ; $6A19: $FF
    rst RST_38                                    ; $6A1A: $FF
    ret nz                                        ; $6A1B: $C0

    ld [hl], c                                    ; $6A1C: $71
    rst RST_38                                    ; $6A1D: $FF
    rst RST_38                                    ; $6A1E: $FF
    ld [de], a                                    ; $6A1F: $12
    ld [hl], d                                    ; $6A20: $72
    rst RST_38                                    ; $6A21: $FF
    rst RST_38                                    ; $6A22: $FF
    rra                                           ; $6A23: $1F
    ld [hl], c                                    ; $6A24: $71
    rst RST_38                                    ; $6A25: $FF
    rst RST_38                                    ; $6A26: $FF
    rst RST_38                                    ; $6A27: $FF
    rst RST_38                                    ; $6A28: $FF
    ld c, d                                       ; $6A29: $4A
    ld [hl], d                                    ; $6A2A: $72
    ld h, a                                       ; $6A2B: $67
    ld [hl], d                                    ; $6A2C: $72
    rst RST_38                                    ; $6A2D: $FF
    rst RST_38                                    ; $6A2E: $FF
    ld c, d                                       ; $6A2F: $4A
    ld [hl], d                                    ; $6A30: $72
    ld h, a                                       ; $6A31: $67
    ld [hl], d                                    ; $6A32: $72
    rst RST_38                                    ; $6A33: $FF
    rst RST_38                                    ; $6A34: $FF
    or e                                          ; $6A35: $B3
    ld l, e                                       ; $6A36: $6B
    rst RST_38                                    ; $6A37: $FF
    rst RST_38                                    ; $6A38: $FF
    ld c, d                                       ; $6A39: $4A
    ld [hl], d                                    ; $6A3A: $72
    ld h, a                                       ; $6A3B: $67
    ld [hl], d                                    ; $6A3C: $72
    ld a, h                                       ; $6A3D: $7C
    ld [hl], d                                    ; $6A3E: $72
    rst RST_38                                    ; $6A3F: $FF
    rst RST_38                                    ; $6A40: $FF
    rst RST_38                                    ; $6A41: $FF
    rst RST_38                                    ; $6A42: $FF
    ret nz                                        ; $6A43: $C0

    ld [hl], d                                    ; $6A44: $72
    rst RST_38                                    ; $6A45: $FF
    rst RST_38                                    ; $6A46: $FF
    rst RST_38                                    ; $6A47: $FF
    rst RST_38                                    ; $6A48: $FF
    ld c, d                                       ; $6A49: $4A
    ld [hl], d                                    ; $6A4A: $72
    ld h, a                                       ; $6A4B: $67
    ld [hl], d                                    ; $6A4C: $72
    db $FD                                        ; $6A4D: $FD
    ld l, h                                       ; $6A4E: $6C
    rst RST_38                                    ; $6A4F: $FF
    rst RST_38                                    ; $6A50: $FF
    db $FD                                        ; $6A51: $FD
    ld l, h                                       ; $6A52: $6C
    rst RST_38                                    ; $6A53: $FF
    rst RST_38                                    ; $6A54: $FF
    db $FD                                        ; $6A55: $FD
    ld l, h                                       ; $6A56: $6C
    rst RST_38                                    ; $6A57: $FF
    rst RST_38                                    ; $6A58: $FF
    db $FD                                        ; $6A59: $FD
    ld l, h                                       ; $6A5A: $6C
    rst RST_38                                    ; $6A5B: $FF
    rst RST_38                                    ; $6A5C: $FF
    db $FD                                        ; $6A5D: $FD
    ld l, h                                       ; $6A5E: $6C
    rst RST_38                                    ; $6A5F: $FF
    rst RST_38                                    ; $6A60: $FF
    rst RST_10                                    ; $6A61: $D7
    ld l, h                                       ; $6A62: $6C
    rst RST_38                                    ; $6A63: $FF
    rst RST_38                                    ; $6A64: $FF
    rst RST_38                                    ; $6A65: $FF
    rst RST_38                                    ; $6A66: $FF
    ld c, d                                       ; $6A67: $4A
    ld [hl], d                                    ; $6A68: $72
    ld h, a                                       ; $6A69: $67
    ld [hl], d                                    ; $6A6A: $72
    and $72                                       ; $6A6B: $E6 $72
    rst RST_38                                    ; $6A6D: $FF
    rst RST_38                                    ; $6A6E: $FF
    ld d, $73                                     ; $6A6F: $16 $73
    rst RST_38                                    ; $6A71: $FF
    rst RST_38                                    ; $6A72: $FF
    and $72                                       ; $6A73: $E6 $72
    rst RST_38                                    ; $6A75: $FF
    rst RST_38                                    ; $6A76: $FF
    ld d, $73                                     ; $6A77: $16 $73
    rst RST_38                                    ; $6A79: $FF
    rst RST_38                                    ; $6A7A: $FF
    rst RST_38                                    ; $6A7B: $FF
    rst RST_38                                    ; $6A7C: $FF
    ld a, h                                       ; $6A7D: $7C
    ld [hl], d                                    ; $6A7E: $72
    rst RST_38                                    ; $6A7F: $FF
    rst RST_38                                    ; $6A80: $FF
    add [hl]                                      ; $6A81: $86
    ld [hl], d                                    ; $6A82: $72
    rst RST_38                                    ; $6A83: $FF
    rst RST_38                                    ; $6A84: $FF
    sub b                                         ; $6A85: $90
    ld [hl], d                                    ; $6A86: $72
    rst RST_38                                    ; $6A87: $FF
    rst RST_38                                    ; $6A88: $FF
    sbc d                                         ; $6A89: $9A
    ld [hl], d                                    ; $6A8A: $72
    rst RST_38                                    ; $6A8B: $FF
    rst RST_38                                    ; $6A8C: $FF
    sbc d                                         ; $6A8D: $9A
    ld [hl], d                                    ; $6A8E: $72
    rst RST_38                                    ; $6A8F: $FF
    rst RST_38                                    ; $6A90: $FF
    and $72                                       ; $6A91: $E6 $72
    rst RST_38                                    ; $6A93: $FF
    rst RST_38                                    ; $6A94: $FF
    ld d, $73                                     ; $6A95: $16 $73
    rst RST_38                                    ; $6A97: $FF
    rst RST_38                                    ; $6A98: $FF
    rst RST_38                                    ; $6A99: $FF
    rst RST_38                                    ; $6A9A: $FF
    ld c, d                                       ; $6A9B: $4A
    ld [hl], d                                    ; $6A9C: $72
    ld h, a                                       ; $6A9D: $67
    ld [hl], d                                    ; $6A9E: $72
    and $72                                       ; $6A9F: $E6 $72
    rst RST_38                                    ; $6AA1: $FF
    rst RST_38                                    ; $6AA2: $FF
    ld d, $73                                     ; $6AA3: $16 $73
    rst RST_38                                    ; $6AA5: $FF
    rst RST_38                                    ; $6AA6: $FF
    rst RST_38                                    ; $6AA7: $FF
    rst RST_38                                    ; $6AA8: $FF
    ldh a, [$FF72]                                ; $6AA9: $F0 $72
    rst RST_38                                    ; $6AAB: $FF
    rst RST_38                                    ; $6AAC: $FF
    rst RST_38                                    ; $6AAD: $FF
    rst RST_38                                    ; $6AAE: $FF
    rst RST_10                                    ; $6AAF: $D7
    ld l, h                                       ; $6AB0: $6C
    rst RST_38                                    ; $6AB1: $FF
    rst RST_38                                    ; $6AB2: $FF
    rst RST_10                                    ; $6AB3: $D7
    ld l, h                                       ; $6AB4: $6C
    rst RST_38                                    ; $6AB5: $FF
    rst RST_38                                    ; $6AB6: $FF
    rst RST_38                                    ; $6AB7: $FF
    rst RST_38                                    ; $6AB8: $FF
    add hl, sp                                    ; $6AB9: $39
    ld [hl], e                                    ; $6ABA: $73
    rst RST_38                                    ; $6ABB: $FF
    rst RST_38                                    ; $6ABC: $FF
    ld e, a                                       ; $6ABD: $5F
    ld [hl], e                                    ; $6ABE: $73
    rst RST_38                                    ; $6ABF: $FF
    rst RST_38                                    ; $6AC0: $FF
    ld e, [hl]                                    ; $6AC1: $5E
    ld l, [hl]                                    ; $6AC2: $6E
    rst RST_38                                    ; $6AC3: $FF
    rst RST_38                                    ; $6AC4: $FF
    adc [hl]                                      ; $6AC5: $8E
    ld l, [hl]                                    ; $6AC6: $6E
    rst RST_38                                    ; $6AC7: $FF
    rst RST_38                                    ; $6AC8: $FF
    rst RST_38                                    ; $6AC9: $FF
    rst RST_38                                    ; $6ACA: $FF
    adc [hl]                                      ; $6ACB: $8E
    ld l, [hl]                                    ; $6ACC: $6E
    rst RST_38                                    ; $6ACD: $FF
    rst RST_38                                    ; $6ACE: $FF
    cp h                                          ; $6ACF: $BC
    ld [hl], e                                    ; $6AD0: $73
    rst RST_38                                    ; $6AD1: $FF
    rst RST_38                                    ; $6AD2: $FF
    add l                                         ; $6AD3: $85
    ld [hl], e                                    ; $6AD4: $73
    rst RST_38                                    ; $6AD5: $FF
    rst RST_38                                    ; $6AD6: $FF
    or d                                          ; $6AD7: $B2
    ld [hl], e                                    ; $6AD8: $73
    rst RST_38                                    ; $6AD9: $FF
    rst RST_38                                    ; $6ADA: $FF
    adc a                                         ; $6ADB: $8F
    ld [hl], e                                    ; $6ADC: $73
    rst RST_38                                    ; $6ADD: $FF
    rst RST_38                                    ; $6ADE: $FF
    cp h                                          ; $6ADF: $BC
    ld [hl], e                                    ; $6AE0: $73
    rst RST_38                                    ; $6AE1: $FF
    rst RST_38                                    ; $6AE2: $FF
    rst RST_18                                    ; $6AE3: $DF
    ld [hl], e                                    ; $6AE4: $73
    rst RST_38                                    ; $6AE5: $FF
    rst RST_38                                    ; $6AE6: $FF
    rst RST_18                                    ; $6AE7: $DF
    ld [hl], e                                    ; $6AE8: $73
    rst RST_38                                    ; $6AE9: $FF
    rst RST_38                                    ; $6AEA: $FF
    adc [hl]                                      ; $6AEB: $8E
    ld l, [hl]                                    ; $6AEC: $6E
    rst RST_38                                    ; $6AED: $FF
    rst RST_38                                    ; $6AEE: $FF
    rst RST_38                                    ; $6AEF: $FF
    rst RST_38                                    ; $6AF0: $FF
    add hl, sp                                    ; $6AF1: $39
    ld [hl], e                                    ; $6AF2: $73
    rst RST_38                                    ; $6AF3: $FF
    rst RST_38                                    ; $6AF4: $FF
    dec bc                                        ; $6AF5: $0B
    ld [hl], h                                    ; $6AF6: $74
    jr z, jr_00A_6B6D                             ; $6AF7: $28 $74

    ld c, c                                       ; $6AF9: $49
    ld [hl], h                                    ; $6AFA: $74
    jr z, jr_00A_6B71                             ; $6AFB: $28 $74

    ld d, h                                       ; $6AFD: $54
    ld l, [hl]                                    ; $6AFE: $6E
    rst RST_38                                    ; $6AFF: $FF
    rst RST_38                                    ; $6B00: $FF
    sbc b                                         ; $6B01: $98
    ld l, [hl]                                    ; $6B02: $6E
    rst RST_38                                    ; $6B03: $FF
    rst RST_38                                    ; $6B04: $FF
    dec h                                         ; $6B05: $25
    ld [hl], b                                    ; $6B06: $70
    rst RST_38                                    ; $6B07: $FF
    rst RST_38                                    ; $6B08: $FF
    dec c                                         ; $6B09: $0D
    ld l, [hl]                                    ; $6B0A: $6E
    dec [hl]                                      ; $6B0B: $35
    ld l, [hl]                                    ; $6B0C: $6E
    rst RST_00                                    ; $6B0D: $C7
    ld l, e                                       ; $6B0E: $6B
    rst RST_38                                    ; $6B0F: $FF
    rst RST_38                                    ; $6B10: $FF
    or e                                          ; $6B11: $B3
    ld l, e                                       ; $6B12: $6B
    rst RST_38                                    ; $6B13: $FF
    rst RST_38                                    ; $6B14: $FF
    rst RST_38                                    ; $6B15: $FF
    rst RST_38                                    ; $6B16: $FF
    ld h, d                                       ; $6B17: $62
    ld l, a                                       ; $6B18: $6F
    rst RST_38                                    ; $6B19: $FF
    rst RST_38                                    ; $6B1A: $FF
    adc a                                         ; $6B1B: $8F
    ld l, a                                       ; $6B1C: $6F
    rst RST_38                                    ; $6B1D: $FF
    rst RST_38                                    ; $6B1E: $FF
    or [hl]                                       ; $6B1F: $B6
    ld [hl], h                                    ; $6B20: $74
    rst RST_38                                    ; $6B21: $FF
    rst RST_38                                    ; $6B22: $FF
    add e                                         ; $6B23: $83
    ld [hl], h                                    ; $6B24: $74
    rst RST_38                                    ; $6B25: $FF
    rst RST_38                                    ; $6B26: $FF
    ld e, l                                       ; $6B27: $5D
    ld [hl], h                                    ; $6B28: $74
    rst RST_38                                    ; $6B29: $FF
    rst RST_38                                    ; $6B2A: $FF
    xor h                                         ; $6B2B: $AC
    ld [hl], h                                    ; $6B2C: $74
    rst RST_38                                    ; $6B2D: $FF
    rst RST_38                                    ; $6B2E: $FF
    ld e, l                                       ; $6B2F: $5D
    ld [hl], h                                    ; $6B30: $74
    rst RST_38                                    ; $6B31: $FF
    rst RST_38                                    ; $6B32: $FF
    add e                                         ; $6B33: $83
    ld [hl], h                                    ; $6B34: $74
    rst RST_38                                    ; $6B35: $FF
    rst RST_38                                    ; $6B36: $FF
    add l                                         ; $6B37: $85
    ld [hl], e                                    ; $6B38: $73
    rst RST_38                                    ; $6B39: $FF
    rst RST_38                                    ; $6B3A: $FF
    cp h                                          ; $6B3B: $BC
    ld [hl], e                                    ; $6B3C: $73
    rst RST_38                                    ; $6B3D: $FF
    rst RST_38                                    ; $6B3E: $FF
    adc a                                         ; $6B3F: $8F
    ld [hl], e                                    ; $6B40: $73
    rst RST_38                                    ; $6B41: $FF
    rst RST_38                                    ; $6B42: $FF
    or d                                          ; $6B43: $B2
    ld [hl], e                                    ; $6B44: $73
    rst RST_38                                    ; $6B45: $FF
    rst RST_38                                    ; $6B46: $FF
    add l                                         ; $6B47: $85
    ld [hl], e                                    ; $6B48: $73
    rst RST_38                                    ; $6B49: $FF
    rst RST_38                                    ; $6B4A: $FF
    rst RST_10                                    ; $6B4B: $D7
    ld l, h                                       ; $6B4C: $6C
    rst RST_38                                    ; $6B4D: $FF
    rst RST_38                                    ; $6B4E: $FF
    rst RST_10                                    ; $6B4F: $D7
    ld l, h                                       ; $6B50: $6C
    rst RST_38                                    ; $6B51: $FF
    rst RST_38                                    ; $6B52: $FF
    rst RST_38                                    ; $6B53: $FF
    rst RST_38                                    ; $6B54: $FF
    rst RST_10                                    ; $6B55: $D7
    ld l, h                                       ; $6B56: $6C
    rst RST_38                                    ; $6B57: $FF
    rst RST_38                                    ; $6B58: $FF
    ld d, l                                       ; $6B59: $55
    ld [hl], b                                    ; $6B5A: $70
    rst RST_38                                    ; $6B5B: $FF
    rst RST_38                                    ; $6B5C: $FF
    ret nz                                        ; $6B5D: $C0

    ld [hl], d                                    ; $6B5E: $72
    rst RST_38                                    ; $6B5F: $FF
    rst RST_38                                    ; $6B60: $FF
    ld c, d                                       ; $6B61: $4A
    ld l, [hl]                                    ; $6B62: $6E
    rst RST_38                                    ; $6B63: $FF
    rst RST_38                                    ; $6B64: $FF
    add hl, sp                                    ; $6B65: $39
    ld [hl], e                                    ; $6B66: $73
    rst RST_38                                    ; $6B67: $FF
    rst RST_38                                    ; $6B68: $FF
    ld e, a                                       ; $6B69: $5F
    ld [hl], e                                    ; $6B6A: $73
    rst RST_38                                    ; $6B6B: $FF
    rst RST_38                                    ; $6B6C: $FF

jr_00A_6B6D:
    push hl                                       ; $6B6D: $E5
    ld [hl], h                                    ; $6B6E: $74
    ld sp, hl                                     ; $6B6F: $F9
    ld [hl], h                                    ; $6B70: $74

jr_00A_6B71:
    rla                                           ; $6B71: $17
    ld [hl], l                                    ; $6B72: $75
    ld sp, hl                                     ; $6B73: $F9
    ld [hl], h                                    ; $6B74: $74
    scf                                           ; $6B75: $37
    ld [hl], l                                    ; $6B76: $75
    ld sp, hl                                     ; $6B77: $F9
    ld [hl], h                                    ; $6B78: $74
    jr z, jr_00A_6BF1                             ; $6B79: $28 $76

    rst RST_38                                    ; $6B7B: $FF
    rst RST_38                                    ; $6B7C: $FF
    ld d, a                                       ; $6B7D: $57
    halt                                          ; $6B7E: $76
    rst RST_38                                    ; $6B7F: $FF
    rst RST_38                                    ; $6B80: $FF
    ld d, h                                       ; $6B81: $54
    ld [hl], l                                    ; $6B82: $75
    rst RST_38                                    ; $6B83: $FF
    rst RST_38                                    ; $6B84: $FF
    add e                                         ; $6B85: $83
    ld [hl], l                                    ; $6B86: $75
    rst RST_38                                    ; $6B87: $FF
    rst RST_38                                    ; $6B88: $FF
    cp e                                          ; $6B89: $BB
    ld [hl], l                                    ; $6B8A: $75
    rst RST_38                                    ; $6B8B: $FF
    rst RST_38                                    ; $6B8C: $FF
    ldh a, [$FF75]                                ; $6B8D: $F0 $75
    rst RST_38                                    ; $6B8F: $FF
    rst RST_38                                    ; $6B90: $FF
    sub d                                         ; $6B91: $92
    halt                                          ; $6B92: $76
    rst RST_38                                    ; $6B93: $FF
    rst RST_38                                    ; $6B94: $FF
    pop bc                                        ; $6B95: $C1
    halt                                          ; $6B96: $76
    rst RST_38                                    ; $6B97: $FF
    rst RST_38                                    ; $6B98: $FF
    db $FC                                        ; $6B99: $FC
    halt                                          ; $6B9A: $76
    rst RST_38                                    ; $6B9B: $FF
    rst RST_38                                    ; $6B9C: $FF
    scf                                           ; $6B9D: $37
    ld [hl], a                                    ; $6B9E: $77
    rst RST_38                                    ; $6B9F: $FF
    rst RST_38                                    ; $6BA0: $FF
    ld [hl], d                                    ; $6BA1: $72
    ld [hl], a                                    ; $6BA2: $77
    ld sp, hl                                     ; $6BA3: $F9
    ld [hl], h                                    ; $6BA4: $74
    ld e, a                                       ; $6BA5: $5F
    ld [hl], e                                    ; $6BA6: $73
    rst RST_38                                    ; $6BA7: $FF
    rst RST_38                                    ; $6BA8: $FF
    add hl, sp                                    ; $6BA9: $39
    ld [hl], e                                    ; $6BAA: $73
    rst RST_38                                    ; $6BAB: $FF
    rst RST_38                                    ; $6BAC: $FF
    rst RST_10                                    ; $6BAD: $D7
    ld l, h                                       ; $6BAE: $6C
    rst RST_38                                    ; $6BAF: $FF
    rst RST_38                                    ; $6BB0: $FF
    rst RST_38                                    ; $6BB1: $FF
    rst RST_38                                    ; $6BB2: $FF
    nop                                           ; $6BB3: $00
    ld bc, $0000                                  ; $6BB4: $01 $00 $00
    ld b, b                                       ; $6BB7: $40
    dec e                                         ; $6BB8: $1D
    pop de                                        ; $6BB9: $D1
    ld l, e                                       ; $6BBA: $6B
    nop                                           ; $6BBB: $00
    nop                                           ; $6BBC: $00
    jr nz, jr_00A_6BC0                            ; $6BBD: $20 $01

    nop                                           ; $6BBF: $00

jr_00A_6BC0:
    nop                                           ; $6BC0: $00
    ld b, b                                       ; $6BC1: $40
    dec e                                         ; $6BC2: $1D
    pop de                                        ; $6BC3: $D1
    ld l, e                                       ; $6BC4: $6B
    nop                                           ; $6BC5: $00
    nop                                           ; $6BC6: $00
    jr nz, jr_00A_6BCA                            ; $6BC7: $20 $01

    dec b                                         ; $6BC9: $05

jr_00A_6BCA:
    nop                                           ; $6BCA: $00
    ld b, b                                       ; $6BCB: $40
    dec e                                         ; $6BCC: $1D
    pop de                                        ; $6BCD: $D1
    ld l, e                                       ; $6BCE: $6B
    nop                                           ; $6BCF: $00
    nop                                           ; $6BD0: $00
    add hl, bc                                    ; $6BD1: $09
    dec de                                        ; $6BD2: $1B
    add sp, $00                                   ; $6BD3: $E8 $00
    dec de                                        ; $6BD5: $1B
    ldh a, [rSC]                                  ; $6BD6: $F0 $02
    rra                                           ; $6BD8: $1F
    ld hl, sp+$04                                 ; $6BD9: $F8 $04
    ld h, $00                                     ; $6BDB: $26 $00
    ld b, $2E                                     ; $6BDD: $06 $2E
    ld [$2F08], sp                                ; $6BDF: $08 $08 $2F
    ld hl, sp+$0A                                 ; $6BE2: $F8 $0A
    cpl                                           ; $6BE4: $2F
    ldh a, [$FF0C]                                ; $6BE5: $F0 $0C
    ld [hl], $00                                  ; $6BE7: $36 $00
    ld c, $3E                                     ; $6BE9: $0E $3E
    ld [$0010], sp                                ; $6BEB: $08 $10 $00
    ld bc, $2000                                  ; $6BEE: $01 $00 $20

jr_00A_6BF1:
    ld b, c                                       ; $6BF1: $41
    dec e                                         ; $6BF2: $1D
    rst RST_30                                    ; $6BF3: $F7
    ld l, e                                       ; $6BF4: $6B
    nop                                           ; $6BF5: $00
    nop                                           ; $6BF6: $00

jr_00A_6BF7:
    add hl, bc                                    ; $6BF7: $09
    inc e                                         ; $6BF8: $1C
    rst RST_20                                    ; $6BF9: $E7
    nop                                           ; $6BFA: $00
    inc e                                         ; $6BFB: $1C
    rst RST_28                                    ; $6BFC: $EF
    ld [bc], a                                    ; $6BFD: $02
    jr nz, jr_00A_6BF7                            ; $6BFE: $20 $F7

    inc b                                         ; $6C00: $04
    daa                                           ; $6C01: $27
    rst RST_38                                    ; $6C02: $FF
    ld b, $2D                                     ; $6C03: $06 $2D
    rlca                                          ; $6C05: $07
    ld [$F730], sp                                ; $6C06: $08 $30 $F7
    ld a, [bc]                                    ; $6C09: $0A
    ld sp, $0CEF                                  ; $6C0A: $31 $EF $0C
    scf                                           ; $6C0D: $37
    rst RST_38                                    ; $6C0E: $FF
    ld c, $3D                                     ; $6C0F: $0E $3D
    rlca                                          ; $6C11: $07
    stop                                          ; $6C12: $10 $00
    ld bc, $4000                                  ; $6C14: $01 $00 $40
    ld b, d                                       ; $6C17: $42
    dec e                                         ; $6C18: $1D
    dec e                                         ; $6C19: $1D

jr_00A_6C1A:
    ld l, h                                       ; $6C1A: $6C
    nop                                           ; $6C1B: $00
    nop                                           ; $6C1C: $00
    add hl, bc                                    ; $6C1D: $09
    jr nc, jr_00A_6C24                            ; $6C1E: $30 $04

    nop                                           ; $6C20: $00
    jr nc, @-$02                                  ; $6C21: $30 $FC

    ld [bc], a                                    ; $6C23: $02

jr_00A_6C24:
    jr nc, jr_00A_6C1A                            ; $6C24: $30 $F4

    inc b                                         ; $6C26: $04
    jr nc, @-$12                                  ; $6C27: $30 $EC

    ld b, $20                                     ; $6C29: $06 $20
    ld [bc], a                                    ; $6C2B: $02
    ld [$FA20], sp                                ; $6C2C: $08 $20 $FA
    ld a, [bc]                                    ; $6C2F: $0A
    jr nz, jr_00A_6C24                            ; $6C30: $20 $F2

    inc c                                         ; $6C32: $0C
    jr nz, @-$14                                  ; $6C33: $20 $EA

    ld c, $1C                                     ; $6C35: $0E $1C
    ldh [c], a                                    ; $6C37: $E2
    stop                                          ; $6C38: $10 $00
    ld bc, $6000                                  ; $6C3A: $01 $00 $60
    ld b, e                                       ; $6C3D: $43
    dec e                                         ; $6C3E: $1D
    ld b, e                                       ; $6C3F: $43

jr_00A_6C40:
    ld l, h                                       ; $6C40: $6C
    nop                                           ; $6C41: $00
    nop                                           ; $6C42: $00
    add hl, bc                                    ; $6C43: $09
    jr nc, jr_00A_6C4A                            ; $6C44: $30 $04

    nop                                           ; $6C46: $00
    jr nc, @-$02                                  ; $6C47: $30 $FC

    ld [bc], a                                    ; $6C49: $02

jr_00A_6C4A:
    jr nc, jr_00A_6C40                            ; $6C4A: $30 $F4

    inc b                                         ; $6C4C: $04
    jr nc, @-$12                                  ; $6C4D: $30 $EC

    ld b, $20                                     ; $6C4F: $06 $20
    ld [bc], a                                    ; $6C51: $02
    ld [$FA20], sp                                ; $6C52: $08 $20 $FA
    ld a, [bc]                                    ; $6C55: $0A
    jr nz, jr_00A_6C4A                            ; $6C56: $20 $F2

    inc c                                         ; $6C58: $0C
    jr nz, @-$14                                  ; $6C59: $20 $EA

    ld c, $1B                                     ; $6C5B: $0E $1B
    ldh [c], a                                    ; $6C5D: $E2
    stop                                          ; $6C5E: $10 $00
    ld bc, $8000                                  ; $6C60: $01 $00 $80
    ld b, h                                       ; $6C63: $44

jr_00A_6C64:
    dec e                                         ; $6C64: $1D
    ld l, c                                       ; $6C65: $69
    ld l, h                                       ; $6C66: $6C
    ld [bc], a                                    ; $6C67: $02
    nop                                           ; $6C68: $00

jr_00A_6C69:
    ld a, [bc]                                    ; $6C69: $0A
    jr nc, jr_00A_6C69                            ; $6C6A: $30 $FD

    nop                                           ; $6C6C: $00
    jr nc, jr_00A_6C64                            ; $6C6D: $30 $F5

    ld [bc], a                                    ; $6C6F: $02
    jr nc, @-$11                                  ; $6C70: $30 $ED

    inc b                                         ; $6C72: $04
    jr nz, @+$01                                  ; $6C73: $20 $FF

    ld b, $20                                     ; $6C75: $06 $20
    rst RST_30                                    ; $6C77: $F7
    ld [$EF20], sp                                ; $6C78: $08 $20 $EF
    ld a, [bc]                                    ; $6C7B: $0A
    inc e                                         ; $6C7C: $1C
    rst RST_20                                    ; $6C7D: $E7
    inc c                                         ; $6C7E: $0C
    inc e                                         ; $6C7F: $1C
    rst RST_18                                    ; $6C80: $DF
    ld c, $30                                     ; $6C81: $0E $30
    dec b                                         ; $6C83: $05
    db $10                                        ; $6C84: $10
    add hl, hl                                    ; $6C85: $29
    ld a, [bc]                                    ; $6C86: $0A
    ld [de], a                                    ; $6C87: $12

jr_00A_6C88:
    nop                                           ; $6C88: $00
    ld bc, $C000                                  ; $6C89: $01 $00 $C0
    ld b, l                                       ; $6C8C: $45

jr_00A_6C8D:
    dec e                                         ; $6C8D: $1D
    sub d                                         ; $6C8E: $92
    ld l, h                                       ; $6C8F: $6C
    ld [bc], a                                    ; $6C90: $02
    nop                                           ; $6C91: $00

jr_00A_6C92:
    ld a, [bc]                                    ; $6C92: $0A
    jr nc, jr_00A_6C92                            ; $6C93: $30 $FD

    nop                                           ; $6C95: $00
    jr nc, jr_00A_6C8D                            ; $6C96: $30 $F5

    ld [bc], a                                    ; $6C98: $02
    jr nc, jr_00A_6C88                            ; $6C99: $30 $ED

jr_00A_6C9B:
    inc b                                         ; $6C9B: $04
    jr nz, jr_00A_6C9B                            ; $6C9C: $20 $FD

    ld b, $20                                     ; $6C9E: $06 $20
    push af                                       ; $6CA0: $F5
    ld [$ED20], sp                                ; $6CA1: $08 $20 $ED
    ld a, [bc]                                    ; $6CA4: $0A
    ld e, $E5                                     ; $6CA5: $1E $E5
    inc c                                         ; $6CA7: $0C
    ld e, $DD                                     ; $6CA8: $1E $DD
    ld c, $30                                     ; $6CAA: $0E $30
    dec b                                         ; $6CAC: $05
    db $10                                        ; $6CAD: $10
    add hl, hl                                    ; $6CAE: $29
    dec c                                         ; $6CAF: $0D
    ld [de], a                                    ; $6CB0: $12
    nop                                           ; $6CB1: $00
    ld bc, $0000                                  ; $6CB2: $01 $00 $00
    ld b, a                                       ; $6CB5: $47

jr_00A_6CB6:
    dec e                                         ; $6CB6: $1D
    cp e                                          ; $6CB7: $BB
    ld l, h                                       ; $6CB8: $6C
    ld [bc], a                                    ; $6CB9: $02
    nop                                           ; $6CBA: $00

jr_00A_6CBB:
    add hl, bc                                    ; $6CBB: $09
    jr nc, jr_00A_6CBB                            ; $6CBC: $30 $FD

    nop                                           ; $6CBE: $00
    jr nc, jr_00A_6CB6                            ; $6CBF: $30 $F5

    ld [bc], a                                    ; $6CC1: $02
    dec hl                                        ; $6CC2: $2B
    dec b                                         ; $6CC3: $05
    inc b                                         ; $6CC4: $04
    ld a, [hl+]                                   ; $6CC5: $2A
    dec c                                         ; $6CC6: $0D
    ld b, $20                                     ; $6CC7: $06 $20
    db $FD                                        ; $6CC9: $FD

jr_00A_6CCA:
    ld [$F520], sp                                ; $6CCA: $08 $20 $F5
    ld a, [bc]                                    ; $6CCD: $0A
    ld [hl+], a                                   ; $6CCE: $22
    db $ED                                        ; $6CCF: $ED
    inc c                                         ; $6CD0: $0C
    ld e, $E5                                     ; $6CD1: $1E $E5
    ld c, $1E                                     ; $6CD3: $0E $1E
    db $DD                                        ; $6CD5: $DD
    stop                                          ; $6CD6: $10 $00
    rlca                                          ; $6CD8: $07
    nop                                           ; $6CD9: $00
    jr nz, jr_00A_6D24                            ; $6CDA: $20 $48

    dec e                                         ; $6CDC: $1D
    pop hl                                        ; $6CDD: $E1
    ld l, h                                       ; $6CDE: $6C
    nop                                           ; $6CDF: $00

jr_00A_6CE0:
    nop                                           ; $6CE0: $00
    add hl, bc                                    ; $6CE1: $09
    jr z, jr_00A_6CCA                             ; $6CE2: $28 $E6

    nop                                           ; $6CE4: $00
    daa                                           ; $6CE5: $27
    xor $02                                       ; $6CE6: $EE $02
    jr z, jr_00A_6CE0                             ; $6CE8: $28 $F6

    inc b                                         ; $6CEA: $04
    dec hl                                        ; $6CEB: $2B
    cp $06                                        ; $6CEC: $FE $06
    cpl                                           ; $6CEE: $2F
    ld b, $08                                     ; $6CEF: $06 $08
    scf                                           ; $6CF1: $37
    db $EC                                        ; $6CF2: $EC
    ld a, [bc]                                    ; $6CF3: $0A
    scf                                           ; $6CF4: $37

jr_00A_6CF5:
    db $F4                                        ; $6CF5: $F4
    inc c                                         ; $6CF6: $0C
    jr c, jr_00A_6CF5                             ; $6CF7: $38 $FC

    ld c, $3B                                     ; $6CF9: $0E $3B
    inc b                                         ; $6CFB: $04
    stop                                          ; $6CFC: $10 $00
    ld [$4000], sp                                ; $6CFE: $08 $00 $40
    ld c, c                                       ; $6D01: $49
    dec e                                         ; $6D02: $1D
    rlca                                          ; $6D03: $07
    ld l, l                                       ; $6D04: $6D
    ld [bc], a                                    ; $6D05: $02
    ei                                            ; $6D06: $FB
    dec bc                                        ; $6D07: $0B
    ld [hl+], a                                   ; $6D08: $22
    ldh [rP1], a                                  ; $6D09: $E0 $00
    ld hl, $02E8                                  ; $6D0B: $21 $E8 $02
    ld [hl+], a                                   ; $6D0E: $22
    ldh a, [rDIV]                                 ; $6D0F: $F0 $04
    ld h, $F8                                     ; $6D11: $26 $F8
    ld b, $2C                                     ; $6D13: $06 $2C
    nop                                           ; $6D15: $00
    ld [$082D], sp                                ; $6D16: $08 $2D $08
    ld a, [bc]                                    ; $6D19: $0A
    ld sp, $0CE8                                  ; $6D1A: $31 $E8 $0C
    ld [hl-], a                                   ; $6D1D: $32
    ldh a, [$FF0E]                                ; $6D1E: $F0 $0E
    ld [hl], $F8                                  ; $6D20: $36 $F8
    db $10                                        ; $6D22: $10
    inc a                                         ; $6D23: $3C

jr_00A_6D24:
    nop                                           ; $6D24: $00
    ld [de], a                                    ; $6D25: $12
    daa                                           ; $6D26: $27
    db $10                                        ; $6D27: $10
    inc d                                         ; $6D28: $14
    nop                                           ; $6D29: $00
    ld bc, $A000                                  ; $6D2A: $01 $00 $A0
    ld c, d                                       ; $6D2D: $4A
    dec e                                         ; $6D2E: $1D
    inc sp                                        ; $6D2F: $33
    ld l, l                                       ; $6D30: $6D
    nop                                           ; $6D31: $00
    nop                                           ; $6D32: $00
    ld [$EA24], sp                                ; $6D33: $08 $24 $EA
    nop                                           ; $6D36: $00
    inc h                                         ; $6D37: $24
    ldh a, [c]                                    ; $6D38: $F2
    ld [bc], a                                    ; $6D39: $02
    inc h                                         ; $6D3A: $24
    ld a, [$2404]                                 ; $6D3B: $FA $04 $24
    ld [bc], a                                    ; $6D3E: $02
    ld b, $34                                     ; $6D3F: $06 $34
    ldh a, [$FF08]                                ; $6D41: $F0 $08
    inc [hl]                                      ; $6D43: $34
    ld hl, sp+$0A                                 ; $6D44: $F8 $0A
    inc [hl]                                      ; $6D46: $34
    nop                                           ; $6D47: $00
    inc c                                         ; $6D48: $0C
    jr nc, jr_00A_6D53                            ; $6D49: $30 $08

    ld c, $00                                     ; $6D4B: $0E $00
    rlca                                          ; $6D4D: $07
    nop                                           ; $6D4E: $00
    and b                                         ; $6D4F: $A0
    ld c, e                                       ; $6D50: $4B
    dec e                                         ; $6D51: $1D
    ld l, d                                       ; $6D52: $6A

jr_00A_6D53:
    ld l, l                                       ; $6D53: $6D
    rst RST_38                                    ; $6D54: $FF
    nop                                           ; $6D55: $00
    nop                                           ; $6D56: $00
    rlca                                          ; $6D57: $07
    or b                                          ; $6D58: $B0
    and b                                         ; $6D59: $A0
    ld c, e                                       ; $6D5A: $4B
    dec e                                         ; $6D5B: $1D
    ld l, d                                       ; $6D5C: $6A
    ld l, l                                       ; $6D5D: $6D
    ei                                            ; $6D5E: $FB
    nop                                           ; $6D5F: $00
    nop                                           ; $6D60: $00
    rlca                                          ; $6D61: $07
    nop                                           ; $6D62: $00
    and b                                         ; $6D63: $A0
    ld c, e                                       ; $6D64: $4B
    dec e                                         ; $6D65: $1D
    ld l, d                                       ; $6D66: $6A
    ld l, l                                       ; $6D67: $6D
    ei                                            ; $6D68: $FB
    nop                                           ; $6D69: $00
    ld b, $29                                     ; $6D6A: $06 $29
    rst RST_30                                    ; $6D6C: $F7
    nop                                           ; $6D6D: $00
    add hl, sp                                    ; $6D6E: $39
    rst RST_30                                    ; $6D6F: $F7
    ld [bc], a                                    ; $6D70: $02
    add hl, hl                                    ; $6D71: $29
    rst RST_28                                    ; $6D72: $EF
    inc b                                         ; $6D73: $04
    add hl, sp                                    ; $6D74: $39
    rst RST_28                                    ; $6D75: $EF
    ld b, $2B                                     ; $6D76: $06 $2B
    rst RST_20                                    ; $6D78: $E7
    ld [$E73B], sp                                ; $6D79: $08 $3B $E7
    ld a, [bc]                                    ; $6D7C: $0A
    nop                                           ; $6D7D: $00
    ld h, b                                       ; $6D7E: $60
    ld c, h                                       ; $6D7F: $4C
    dec e                                         ; $6D80: $1D
    add l                                         ; $6D81: $85
    ld l, l                                       ; $6D82: $6D
    rst RST_38                                    ; $6D83: $FF
    nop                                           ; $6D84: $00
    inc b                                         ; $6D85: $04
    ld a, [hl+]                                   ; $6D86: $2A
    rst RST_38                                    ; $6D87: $FF
    nop                                           ; $6D88: $00
    ld a, [hl-]                                   ; $6D89: $3A
    rst RST_38                                    ; $6D8A: $FF
    ld [bc], a                                    ; $6D8B: $02
    jr nc, @+$09                                  ; $6D8C: $30 $07

    inc b                                         ; $6D8E: $04
    jr nz, jr_00A_6D98                            ; $6D8F: $20 $07

    ld b, $00                                     ; $6D91: $06 $00
    ld [$E000], sp                                ; $6D93: $08 $00 $E0
    ld c, h                                       ; $6D96: $4C
    dec e                                         ; $6D97: $1D

jr_00A_6D98:
    sbc h                                         ; $6D98: $9C
    ld l, l                                       ; $6D99: $6D
    ld b, $00                                     ; $6D9A: $06 $00
    add hl, bc                                    ; $6D9C: $09
    ld [hl+], a                                   ; $6D9D: $22
    pop hl                                        ; $6D9E: $E1
    nop                                           ; $6D9F: $00
    ld hl, $02E9                                  ; $6DA0: $21 $E9 $02
    ld hl, $04F1                                  ; $6DA3: $21 $F1 $04
    inc hl                                        ; $6DA6: $23
    ld sp, hl                                     ; $6DA7: $F9
    ld b, $29                                     ; $6DA8: $06 $29
    ld bc, $3108                                  ; $6DAA: $01 $08 $31
    jp hl                                         ; $6DAD: $E9


    ld a, [bc]                                    ; $6DAE: $0A
    ld sp, $0CF1                                  ; $6DAF: $31 $F1 $0C
    inc sp                                        ; $6DB2: $33
    ld sp, hl                                     ; $6DB3: $F9
    ld c, $39                                     ; $6DB4: $0E $39
    ld bc, $0010                                  ; $6DB6: $01 $10 $00
    and b                                         ; $6DB9: $A0

jr_00A_6DBA:
    ld d, e                                       ; $6DBA: $53
    dec e                                         ; $6DBB: $1D
    ret nz                                        ; $6DBC: $C0

    ld l, l                                       ; $6DBD: $6D
    inc bc                                        ; $6DBE: $03

jr_00A_6DBF:
    nop                                           ; $6DBF: $00
    dec b                                         ; $6DC0: $05
    jr nc, jr_00A_6DC4                            ; $6DC1: $30 $01

jr_00A_6DC3:
    nop                                           ; $6DC3: $00

jr_00A_6DC4:
    jr nc, jr_00A_6DBF                            ; $6DC4: $30 $F9

    ld [bc], a                                    ; $6DC6: $02
    jr nc, jr_00A_6DBA                            ; $6DC7: $30 $F1

    inc b                                         ; $6DC9: $04
    jr nz, jr_00A_6DC3                            ; $6DCA: $20 $F7

    ld b, $20                                     ; $6DCC: $06 $20
    rst RST_38                                    ; $6DCE: $FF
    ld [$0100], sp                                ; $6DCF: $08 $00 $01
    or c                                          ; $6DD2: $B1
    ld b, b                                       ; $6DD3: $40
    ld d, h                                       ; $6DD4: $54
    dec e                                         ; $6DD5: $1D
    jp c, $FF6D                                   ; $6DD6: $DA $6D $FF

    nop                                           ; $6DD9: $00
    ld a, [bc]                                    ; $6DDA: $0A
    inc hl                                        ; $6DDB: $23
    dec c                                         ; $6DDC: $0D
    nop                                           ; $6DDD: $00
    ld [hl+], a                                   ; $6DDE: $22
    dec b                                         ; $6DDF: $05
    ld [bc], a                                    ; $6DE0: $02
    inc hl                                        ; $6DE1: $23
    db $FD                                        ; $6DE2: $FD
    inc b                                         ; $6DE3: $04
    dec h                                         ; $6DE4: $25
    push af                                       ; $6DE5: $F5
    ld b, $33                                     ; $6DE6: $06 $33
    db $FD                                        ; $6DE8: $FD
    ld [$0532], sp                                ; $6DE9: $08 $32 $05
    ld a, [bc]                                    ; $6DEC: $0A
    dec [hl]                                      ; $6DED: $35
    push af                                       ; $6DEE: $F5
    inc c                                         ; $6DEF: $0C
    ld l, $ED                                     ; $6DF0: $2E $ED
    ld c, $24                                     ; $6DF2: $0E $24
    push hl                                       ; $6DF4: $E5
    db $10                                        ; $6DF5: $10
    ld e, $DD                                     ; $6DF6: $1E $DD
    ld [de], a                                    ; $6DF8: $12
    nop                                           ; $6DF9: $00
    ld bc, $8000                                  ; $6DFA: $01 $00 $80
    ld d, l                                       ; $6DFD: $55
    dec e                                         ; $6DFE: $1D
    rla                                           ; $6DFF: $17
    ld l, [hl]                                    ; $6E00: $6E
    ld hl, sp+$00                                 ; $6E01: $F8 $00
    jr nz, jr_00A_6E06                            ; $6E03: $20 $01

    nop                                           ; $6E05: $00

jr_00A_6E06:
    add b                                         ; $6E06: $80
    ld d, l                                       ; $6E07: $55
    dec e                                         ; $6E08: $1D
    rla                                           ; $6E09: $17
    ld l, [hl]                                    ; $6E0A: $6E
    inc b                                         ; $6E0B: $04
    nop                                           ; $6E0C: $00
    jr nz, jr_00A_6E10                            ; $6E0D: $20 $01

    dec b                                         ; $6E0F: $05

jr_00A_6E10:
    add b                                         ; $6E10: $80
    ld d, l                                       ; $6E11: $55
    dec e                                         ; $6E12: $1D
    rla                                           ; $6E13: $17
    ld l, [hl]                                    ; $6E14: $6E
    inc b                                         ; $6E15: $04
    nop                                           ; $6E16: $00

jr_00A_6E17:
    rlca                                          ; $6E17: $07
    jr nz, jr_00A_6E21                            ; $6E18: $20 $07

    nop                                           ; $6E1A: $00
    jr nz, @+$01                                  ; $6E1B: $20 $FF

    ld [bc], a                                    ; $6E1D: $02
    jr nz, jr_00A_6E17                            ; $6E1E: $20 $F7

    inc b                                         ; $6E20: $04

jr_00A_6E21:
    dec e                                         ; $6E21: $1D
    rst RST_28                                    ; $6E22: $EF
    ld b, $0D                                     ; $6E23: $06 $0D
    rst RST_28                                    ; $6E25: $EF
    ld [$F710], sp                                ; $6E26: $08 $10 $F7
    ld a, [bc]                                    ; $6E29: $0A
    db $10                                        ; $6E2A: $10
    rst RST_38                                    ; $6E2B: $FF
    inc c                                         ; $6E2C: $0C
    nop                                           ; $6E2D: $00
    ld h, b                                       ; $6E2E: $60
    ld d, [hl]                                    ; $6E2F: $56
    dec e                                         ; $6E30: $1D
    dec a                                         ; $6E31: $3D
    ld l, [hl]                                    ; $6E32: $6E

jr_00A_6E33:
    ld hl, sp+$00                                 ; $6E33: $F8 $00
    jr nz, @+$62                                  ; $6E35: $20 $60

    ld d, [hl]                                    ; $6E37: $56
    dec e                                         ; $6E38: $1D
    dec a                                         ; $6E39: $3D
    ld l, [hl]                                    ; $6E3A: $6E
    inc b                                         ; $6E3B: $04
    nop                                           ; $6E3C: $00
    inc b                                         ; $6E3D: $04

jr_00A_6E3E:
    jr nc, jr_00A_6E33                            ; $6E3E: $30 $F3

    nop                                           ; $6E40: $00
    jr nc, jr_00A_6E3E                            ; $6E41: $30 $FB

    ld [bc], a                                    ; $6E43: $02
    jr nc, jr_00A_6E49                            ; $6E44: $30 $03

    inc b                                         ; $6E46: $04
    jr nc, jr_00A_6E54                            ; $6E47: $30 $0B

jr_00A_6E49:
    ld b, $00                                     ; $6E49: $06 $00
    rlca                                          ; $6E4B: $07
    or d                                          ; $6E4C: $B2
    ldh [rRP], a                                  ; $6E4D: $E0 $56
    dec e                                         ; $6E4F: $1D
    ld l, b                                       ; $6E50: $68
    ld l, [hl]                                    ; $6E51: $6E
    ld hl, sp+$00                                 ; $6E52: $F8 $00

jr_00A_6E54:
    nop                                           ; $6E54: $00
    rlca                                          ; $6E55: $07
    dec b                                         ; $6E56: $05
    ldh [rRP], a                                  ; $6E57: $E0 $56
    dec e                                         ; $6E59: $1D
    ld l, b                                       ; $6E5A: $68
    ld l, [hl]                                    ; $6E5B: $6E
    ld hl, sp+$00                                 ; $6E5C: $F8 $00
    nop                                           ; $6E5E: $00
    cp h                                          ; $6E5F: $BC
    nop                                           ; $6E60: $00
    ldh [rRP], a                                  ; $6E61: $E0 $56
    dec e                                         ; $6E63: $1D
    ld l, b                                       ; $6E64: $68
    ld l, [hl]                                    ; $6E65: $6E
    ld hl, sp+$00                                 ; $6E66: $F8 $00
    add hl, bc                                    ; $6E68: $09
    jr nc, jr_00A_6E74                            ; $6E69: $30 $09

    nop                                           ; $6E6B: $00
    cpl                                           ; $6E6C: $2F
    ld bc, $2F02                                  ; $6E6D: $01 $02 $2F
    ld sp, hl                                     ; $6E70: $F9
    inc b                                         ; $6E71: $04
    cpl                                           ; $6E72: $2F
    pop af                                        ; $6E73: $F1

jr_00A_6E74:
    ld b, $2F                                     ; $6E74: $06 $2F
    jp hl                                         ; $6E76: $E9


    ld [$E71F], sp                                ; $6E77: $08 $1F $E7
    ld a, [bc]                                    ; $6E7A: $0A
    rra                                           ; $6E7B: $1F
    rst RST_28                                    ; $6E7C: $EF
    inc c                                         ; $6E7D: $0C
    rra                                           ; $6E7E: $1F
    rst RST_30                                    ; $6E7F: $F7
    ld c, $1F                                     ; $6E80: $0E $1F
    rst RST_38                                    ; $6E82: $FF
    stop                                          ; $6E83: $10 $00
    rlca                                          ; $6E85: $07
    or d                                          ; $6E86: $B2
    nop                                           ; $6E87: $00
    ld e, b                                       ; $6E88: $58
    dec e                                         ; $6E89: $1D
    and d                                         ; $6E8A: $A2
    ld l, [hl]                                    ; $6E8B: $6E
    ld hl, sp+$00                                 ; $6E8C: $F8 $00
    nop                                           ; $6E8E: $00
    rlca                                          ; $6E8F: $07
    nop                                           ; $6E90: $00
    nop                                           ; $6E91: $00
    ld e, b                                       ; $6E92: $58
    dec e                                         ; $6E93: $1D
    and d                                         ; $6E94: $A2
    ld l, [hl]                                    ; $6E95: $6E
    ld hl, sp+$00                                 ; $6E96: $F8 $00
    nop                                           ; $6E98: $00
    rlca                                          ; $6E99: $07
    dec b                                         ; $6E9A: $05
    nop                                           ; $6E9B: $00
    ld e, b                                       ; $6E9C: $58
    dec e                                         ; $6E9D: $1D
    and d                                         ; $6E9E: $A2
    ld l, [hl]                                    ; $6E9F: $6E
    ld hl, sp+$00                                 ; $6EA0: $F8 $00
    add hl, bc                                    ; $6EA2: $09
    jr nc, jr_00A_6EAE                            ; $6EA3: $30 $09

    nop                                           ; $6EA5: $00
    cpl                                           ; $6EA6: $2F
    ld bc, $2F02                                  ; $6EA7: $01 $02 $2F
    ld sp, hl                                     ; $6EAA: $F9
    inc b                                         ; $6EAB: $04
    cpl                                           ; $6EAC: $2F
    pop af                                        ; $6EAD: $F1

jr_00A_6EAE:
    ld b, $2F                                     ; $6EAE: $06 $2F
    jp hl                                         ; $6EB0: $E9


    ld [$FE1F], sp                                ; $6EB1: $08 $1F $FE
    ld a, [bc]                                    ; $6EB4: $0A
    rra                                           ; $6EB5: $1F
    or $0C                                        ; $6EB6: $F6 $0C
    rra                                           ; $6EB8: $1F
    xor $0E                                       ; $6EB9: $EE $0E
    ld [hl+], a                                   ; $6EBB: $22

jr_00A_6EBC:
    and $10                                       ; $6EBC: $E6 $10
    nop                                           ; $6EBE: $00
    rlca                                          ; $6EBF: $07
    nop                                           ; $6EC0: $00
    jr nz, @+$5B                                  ; $6EC1: $20 $59

    dec e                                         ; $6EC3: $1D
    ret z                                         ; $6EC4: $C8

    ld l, [hl]                                    ; $6EC5: $6E
    ei                                            ; $6EC6: $FB
    nop                                           ; $6EC7: $00
    add hl, bc                                    ; $6EC8: $09
    add hl, hl                                    ; $6EC9: $29
    and $00                                       ; $6ECA: $E6 $00
    jr z, jr_00A_6EBC                             ; $6ECC: $28 $EE

    ld [bc], a                                    ; $6ECE: $02
    add hl, hl                                    ; $6ECF: $29
    or $04                                        ; $6ED0: $F6 $04
    add hl, hl                                    ; $6ED2: $29
    cp $06                                        ; $6ED3: $FE $06
    cpl                                           ; $6ED5: $2F
    ld bc, $3808                                  ; $6ED6: $01 $08 $38
    jp hl                                         ; $6ED9: $E9


    ld a, [bc]                                    ; $6EDA: $0A
    add hl, sp                                    ; $6EDB: $39
    pop af                                        ; $6EDC: $F1
    inc c                                         ; $6EDD: $0C
    add hl, sp                                    ; $6EDE: $39
    ld sp, hl                                     ; $6EDF: $F9
    ld c, $30                                     ; $6EE0: $0E $30
    add hl, bc                                    ; $6EE2: $09
    stop                                          ; $6EE3: $10 $00
    rlca                                          ; $6EE5: $07
    or e                                          ; $6EE6: $B3
    ld b, b                                       ; $6EE7: $40
    ld e, d                                       ; $6EE8: $5A
    dec e                                         ; $6EE9: $1D
    xor $6E                                       ; $6EEA: $EE $6E
    ei                                            ; $6EEC: $FB
    nop                                           ; $6EED: $00
    dec bc                                        ; $6EEE: $0B
    dec l                                         ; $6EEF: $2D
    rst RST_18                                    ; $6EF0: $DF
    nop                                           ; $6EF1: $00
    add hl, hl                                    ; $6EF2: $29
    rst RST_20                                    ; $6EF3: $E7
    ld [bc], a                                    ; $6EF4: $02
    add hl, hl                                    ; $6EF5: $29
    rst RST_28                                    ; $6EF6: $EF
    inc b                                         ; $6EF7: $04
    ld a, [hl+]                                   ; $6EF8: $2A
    rst RST_30                                    ; $6EF9: $F7
    ld b, $2B                                     ; $6EFA: $06 $2B
    rst RST_38                                    ; $6EFC: $FF
    ld [$072F], sp                                ; $6EFD: $08 $2F $07
    ld a, [bc]                                    ; $6F00: $0A
    add hl, sp                                    ; $6F01: $39
    rst RST_20                                    ; $6F02: $E7

jr_00A_6F03:
    inc c                                         ; $6F03: $0C
    add hl, sp                                    ; $6F04: $39
    rst RST_28                                    ; $6F05: $EF
    ld c, $3A                                     ; $6F06: $0E $3A
    rst RST_30                                    ; $6F08: $F7
    db $10                                        ; $6F09: $10
    dec sp                                        ; $6F0A: $3B
    rst RST_38                                    ; $6F0B: $FF
    ld [de], a                                    ; $6F0C: $12
    add hl, sp                                    ; $6F0D: $39

jr_00A_6F0E:
    ld a, [bc]                                    ; $6F0E: $0A
    inc d                                         ; $6F0F: $14
    nop                                           ; $6F10: $00
    rlca                                          ; $6F11: $07
    nop                                           ; $6F12: $00
    and b                                         ; $6F13: $A0
    ld e, e                                       ; $6F14: $5B
    dec e                                         ; $6F15: $1D
    ld a, [de]                                    ; $6F16: $1A
    ld l, a                                       ; $6F17: $6F
    db $FC                                        ; $6F18: $FC

jr_00A_6F19:
    nop                                           ; $6F19: $00
    add hl, bc                                    ; $6F1A: $09
    jr z, jr_00A_6F03                             ; $6F1B: $28 $E6

    nop                                           ; $6F1D: $00
    jr z, jr_00A_6F0E                             ; $6F1E: $28 $EE

    ld [bc], a                                    ; $6F20: $02

jr_00A_6F21:
    jr z, jr_00A_6F19                             ; $6F21: $28 $F6

    inc b                                         ; $6F23: $04

jr_00A_6F24:
    jr z, jr_00A_6F24                             ; $6F24: $28 $FE

    ld b, $2F                                     ; $6F26: $06 $2F
    ld [bc], a                                    ; $6F28: $02
    ld [$EA38], sp                                ; $6F29: $08 $38 $EA

jr_00A_6F2C:
    ld a, [bc]                                    ; $6F2C: $0A
    jr c, jr_00A_6F21                             ; $6F2D: $38 $F2

    inc c                                         ; $6F2F: $0C
    jr c, jr_00A_6F2C                             ; $6F30: $38 $FA

    ld c, $30                                     ; $6F32: $0E $30
    ld a, [bc]                                    ; $6F34: $0A
    stop                                          ; $6F35: $10 $00
    rlca                                          ; $6F37: $07
    or h                                          ; $6F38: $B4
    ret nz                                        ; $6F39: $C0

    ld e, h                                       ; $6F3A: $5C
    dec e                                         ; $6F3B: $1D
    ld b, b                                       ; $6F3C: $40
    ld l, a                                       ; $6F3D: $6F
    db $FC                                        ; $6F3E: $FC
    nop                                           ; $6F3F: $00
    dec bc                                        ; $6F40: $0B
    inc a                                         ; $6F41: $3C
    rst RST_18                                    ; $6F42: $DF
    nop                                           ; $6F43: $00
    ld a, [hl+]                                   ; $6F44: $2A
    and $02                                       ; $6F45: $E6 $02
    add hl, hl                                    ; $6F47: $29
    xor $04                                       ; $6F48: $EE $04
    ld a, [hl+]                                   ; $6F4A: $2A
    or $06                                        ; $6F4B: $F6 $06
    dec hl                                        ; $6F4D: $2B
    cp $08                                        ; $6F4E: $FE $08
    cpl                                           ; $6F50: $2F
    ld b, $0A                                     ; $6F51: $06 $0A
    ld a, [hl-]                                   ; $6F53: $3A
    rst RST_20                                    ; $6F54: $E7
    inc c                                         ; $6F55: $0C
    add hl, sp                                    ; $6F56: $39
    rst RST_28                                    ; $6F57: $EF
    ld c, $3A                                     ; $6F58: $0E $3A
    rst RST_30                                    ; $6F5A: $F7
    db $10                                        ; $6F5B: $10
    dec sp                                        ; $6F5C: $3B
    rst RST_38                                    ; $6F5D: $FF
    ld [de], a                                    ; $6F5E: $12
    jr c, jr_00A_6F6B                             ; $6F5F: $38 $0A

    inc d                                         ; $6F61: $14
    nop                                           ; $6F62: $00
    ld bc, $2000                                  ; $6F63: $01 $00 $20
    ld e, [hl]                                    ; $6F66: $5E
    dec e                                         ; $6F67: $1D
    halt                                          ; $6F68: $76
    ld l, a                                       ; $6F69: $6F
    nop                                           ; $6F6A: $00

jr_00A_6F6B:
    ld bc, $0800                                  ; $6F6B: $01 $00 $08
    nop                                           ; $6F6E: $00
    jr nz, jr_00A_6FCF                            ; $6F6F: $20 $5E

    dec e                                         ; $6F71: $1D
    halt                                          ; $6F72: $76
    ld l, a                                       ; $6F73: $6F
    db $FC                                        ; $6F74: $FC
    ld sp, hl                                     ; $6F75: $F9
    ld [$EF2C], sp                                ; $6F76: $08 $2C $EF
    nop                                           ; $6F79: $00
    rra                                           ; $6F7A: $1F
    ld hl, sp+$02                                 ; $6F7B: $F8 $02
    rra                                           ; $6F7D: $1F
    nop                                           ; $6F7E: $00
    inc b                                         ; $6F7F: $04
    rra                                           ; $6F80: $1F
    ld [$2F06], sp                                ; $6F81: $08 $06 $2F
    rst RST_30                                    ; $6F84: $F7
    ld [$FF2F], sp                                ; $6F85: $08 $2F $FF
    ld a, [bc]                                    ; $6F88: $0A
    cpl                                           ; $6F89: $2F
    rlca                                          ; $6F8A: $07
    inc c                                         ; $6F8B: $0C
    inc sp                                        ; $6F8C: $33
    rrca                                          ; $6F8D: $0F
    ld c, $00                                     ; $6F8E: $0E $00
    ld bc, $20B5                                  ; $6F90: $01 $B5 $20
    ld e, a                                       ; $6F93: $5F
    dec e                                         ; $6F94: $1D
    and e                                         ; $6F95: $A3
    ld l, a                                       ; $6F96: $6F
    nop                                           ; $6F97: $00
    nop                                           ; $6F98: $00
    nop                                           ; $6F99: $00
    ld [$20B7], sp                                ; $6F9A: $08 $B7 $20
    ld e, a                                       ; $6F9D: $5F
    dec e                                         ; $6F9E: $1D
    and e                                         ; $6F9F: $A3
    ld l, a                                       ; $6FA0: $6F
    db $FC                                        ; $6FA1: $FC
    ld sp, hl                                     ; $6FA2: $F9
    dec bc                                        ; $6FA3: $0B
    ld sp, $00E4                                  ; $6FA4: $31 $E4 $00
    inc sp                                        ; $6FA7: $33
    db $EC                                        ; $6FA8: $EC
    ld [bc], a                                    ; $6FA9: $02
    inc hl                                        ; $6FAA: $23
    db $F4                                        ; $6FAB: $F4
    inc b                                         ; $6FAC: $04
    ld [hl+], a                                   ; $6FAD: $22
    db $FC                                        ; $6FAE: $FC
    ld b, $24                                     ; $6FAF: $06 $24
    inc b                                         ; $6FB1: $04
    ld [$F433], sp                                ; $6FB2: $08 $33 $F4
    ld a, [bc]                                    ; $6FB5: $0A
    ld [hl-], a                                   ; $6FB6: $32
    db $FC                                        ; $6FB7: $FC
    inc c                                         ; $6FB8: $0C
    inc [hl]                                      ; $6FB9: $34
    inc b                                         ; $6FBA: $04
    ld c, $29                                     ; $6FBB: $0E $29
    inc c                                         ; $6FBD: $0C
    db $10                                        ; $6FBE: $10
    add hl, sp                                    ; $6FBF: $39
    inc c                                         ; $6FC0: $0C
    ld [de], a                                    ; $6FC1: $12
    dec [hl]                                      ; $6FC2: $35
    inc d                                         ; $6FC3: $14
    inc d                                         ; $6FC4: $14
    nop                                           ; $6FC5: $00
    ld [$80B6], sp                                ; $6FC6: $08 $B6 $80
    ld h, b                                       ; $6FC9: $60
    dec e                                         ; $6FCA: $1D
    reti                                          ; $6FCB: $D9


    ld l, a                                       ; $6FCC: $6F
    dec b                                         ; $6FCD: $05
    add hl, bc                                    ; $6FCE: $09

jr_00A_6FCF:
    nop                                           ; $6FCF: $00
    ld [$8000], sp                                ; $6FD0: $08 $00 $80
    ld h, b                                       ; $6FD3: $60
    dec e                                         ; $6FD4: $1D
    reti                                          ; $6FD5: $D9


    ld l, a                                       ; $6FD6: $6F
    dec b                                         ; $6FD7: $05
    ld de, $1A08                                  ; $6FD8: $11 $08 $1A
    db $E4                                        ; $6FDB: $E4
    nop                                           ; $6FDC: $00
    dec e                                         ; $6FDD: $1D
    add sp, $02                                   ; $6FDE: $E8 $02
    dec c                                         ; $6FE0: $0D
    ldh a, [rDIV]                                 ; $6FE1: $F0 $04
    rrca                                          ; $6FE3: $0F
    ld hl, sp+$06                                 ; $6FE4: $F8 $06
    ld de, $0800                                  ; $6FE6: $11 $00 $08
    rra                                           ; $6FE9: $1F
    ldh a, [$FF0A]                                ; $6FEA: $F0 $0A
    rra                                           ; $6FEC: $1F
    ld hl, sp+$0C                                 ; $6FED: $F8 $0C
    ld hl, $0E00                                  ; $6FEF: $21 $00 $0E
    nop                                           ; $6FF2: $00
    ld [$80B6], sp                                ; $6FF3: $08 $B6 $80
    ld h, c                                       ; $6FF6: $61
    dec e                                         ; $6FF7: $1D
    db $FC                                        ; $6FF8: $FC
    ld l, a                                       ; $6FF9: $6F
    dec b                                         ; $6FFA: $05

jr_00A_6FFB:
    add hl, bc                                    ; $6FFB: $09
    ld a, [bc]                                    ; $6FFC: $0A
    db $10                                        ; $6FFD: $10
    rst RST_20                                    ; $6FFE: $E7
    nop                                           ; $6FFF: $00
    db $10                                        ; $7000: $10
    rst RST_28                                    ; $7001: $EF
    ld [bc], a                                    ; $7002: $02
    db $10                                        ; $7003: $10
    rst RST_30                                    ; $7004: $F7
    inc b                                         ; $7005: $04

jr_00A_7006:
    db $10                                        ; $7006: $10
    rst RST_38                                    ; $7007: $FF
    ld b, $20                                     ; $7008: $06 $20
    jp c, Jump_000_2008                           ; $700A: $DA $08 $20

    ldh [c], a                                    ; $700D: $E2
    ld a, [bc]                                    ; $700E: $0A
    jr nz, jr_00A_6FFB                            ; $700F: $20 $EA

    inc c                                         ; $7011: $0C
    jr nz, jr_00A_7006                            ; $7012: $20 $F2

    ld c, $20                                     ; $7014: $0E $20
    ld a, [$2010]                                 ; $7016: $FA $10 $20
    ld [bc], a                                    ; $7019: $02
    ld [de], a                                    ; $701A: $12
    nop                                           ; $701B: $00
    ld bc, $C002                                  ; $701C: $01 $02 $C0
    ld h, d                                       ; $701F: $62
    dec e                                         ; $7020: $1D
    cpl                                           ; $7021: $2F
    ld [hl], b                                    ; $7022: $70
    nop                                           ; $7023: $00
    nop                                           ; $7024: $00
    nop                                           ; $7025: $00
    ld bc, $C005                                  ; $7026: $01 $05 $C0
    ld h, d                                       ; $7029: $62
    dec e                                         ; $702A: $1D
    cpl                                           ; $702B: $2F
    ld [hl], b                                    ; $702C: $70
    nop                                           ; $702D: $00
    nop                                           ; $702E: $00
    add hl, bc                                    ; $702F: $09
    dec h                                         ; $7030: $25
    db $E4                                        ; $7031: $E4
    nop                                           ; $7032: $00
    dec h                                         ; $7033: $25
    db $EC                                        ; $7034: $EC
    ld [bc], a                                    ; $7035: $02
    daa                                           ; $7036: $27
    db $F4                                        ; $7037: $F4
    inc b                                         ; $7038: $04
    daa                                           ; $7039: $27
    db $FC                                        ; $703A: $FC
    ld b, $27                                     ; $703B: $06 $27
    inc b                                         ; $703D: $04
    ld [$0437], sp                                ; $703E: $08 $37 $04
    ld a, [bc]                                    ; $7041: $0A
    scf                                           ; $7042: $37
    db $FC                                        ; $7043: $FC
    inc c                                         ; $7044: $0C
    scf                                           ; $7045: $37
    db $F4                                        ; $7046: $F4
    ld c, $35                                     ; $7047: $0E $35
    db $EC                                        ; $7049: $EC
    stop                                          ; $704A: $10 $00
    ld bc, $E000                                  ; $704C: $01 $00 $E0
    ld h, e                                       ; $704F: $63
    dec e                                         ; $7050: $1D
    ld e, a                                       ; $7051: $5F
    ld [hl], b                                    ; $7052: $70

jr_00A_7053:
    nop                                           ; $7053: $00
    ld hl, sp+$00                                 ; $7054: $F8 $00

jr_00A_7056:
    ld bc, $E002                                  ; $7056: $01 $02 $E0
    ld h, e                                       ; $7059: $63
    dec e                                         ; $705A: $1D
    ld e, a                                       ; $705B: $5F
    ld [hl], b                                    ; $705C: $70
    nop                                           ; $705D: $00
    ld hl, sp+$0D                                 ; $705E: $F8 $0D
    jr c, jr_00A_7071                             ; $7060: $38 $0F

jr_00A_7062:
    nop                                           ; $7062: $00
    jr c, @+$09                                   ; $7063: $38 $07

    ld [bc], a                                    ; $7065: $02
    jr c, @+$01                                   ; $7066: $38 $FF

    inc b                                         ; $7068: $04
    jr c, jr_00A_7062                             ; $7069: $38 $F7

    ld b, $38                                     ; $706B: $06 $38
    rst RST_28                                    ; $706D: $EF
    ld [$E730], sp                                ; $706E: $08 $30 $E7

jr_00A_7071:
    ld a, [bc]                                    ; $7071: $0A
    jr nc, jr_00A_7053                            ; $7072: $30 $DF

    inc c                                         ; $7074: $0C
    jr nz, jr_00A_7056                            ; $7075: $20 $DF

jr_00A_7077:
    ld c, $20                                     ; $7077: $0E $20
    rst RST_20                                    ; $7079: $E7
    db $10                                        ; $707A: $10
    jr z, @-$0F                                   ; $707B: $28 $EF

    ld [de], a                                    ; $707D: $12
    jr z, jr_00A_7077                             ; $707E: $28 $F7

    inc d                                         ; $7080: $14
    jr z, @+$01                                   ; $7081: $28 $FF

    ld d, $28                                     ; $7083: $16 $28
    ld c, $18                                     ; $7085: $0E $18
    nop                                           ; $7087: $00
    ld bc, $8000                                  ; $7088: $01 $00 $80
    ld h, l                                       ; $708B: $65
    dec e                                         ; $708C: $1D
    sub c                                         ; $708D: $91
    ld [hl], b                                    ; $708E: $70
    ld hl, sp+$00                                 ; $708F: $F8 $00
    ld a, [bc]                                    ; $7091: $0A
    db $10                                        ; $7092: $10

jr_00A_7093:
    db $FD                                        ; $7093: $FD
    nop                                           ; $7094: $00
    db $10                                        ; $7095: $10
    dec b                                         ; $7096: $05
    ld [bc], a                                    ; $7097: $02
    jr nz, jr_00A_7093                            ; $7098: $20 $F9

    inc b                                         ; $709A: $04
    jr nz, @+$03                                  ; $709B: $20 $01

    ld b, $30                                     ; $709D: $06 $30
    dec bc                                        ; $709F: $0B
    ld [$0330], sp                                ; $70A0: $08 $30 $03
    ld a, [bc]                                    ; $70A3: $0A
    jr nc, @-$03                                  ; $70A4: $30 $FB

    inc c                                         ; $70A6: $0C
    jr nc, @-$0B                                  ; $70A7: $30 $F3

    ld c, $3B                                     ; $70A9: $0E $3B
    db $EB                                        ; $70AB: $EB
    db $10                                        ; $70AC: $10
    jr nz, jr_00A_70B8                            ; $70AD: $20 $09

    ld [de], a                                    ; $70AF: $12
    nop                                           ; $70B0: $00
    ld bc, $C000                                  ; $70B1: $01 $00 $C0
    ld h, [hl]                                    ; $70B4: $66
    dec e                                         ; $70B5: $1D
    cp d                                          ; $70B6: $BA
    ld [hl], b                                    ; $70B7: $70

jr_00A_70B8:
    nop                                           ; $70B8: $00
    nop                                           ; $70B9: $00
    ld b, $1E                                     ; $70BA: $06 $1E
    rst RST_28                                    ; $70BC: $EF
    nop                                           ; $70BD: $00
    ld l, $EF                                     ; $70BE: $2E $EF
    ld [bc], a                                    ; $70C0: $02
    ld a, $EF                                     ; $70C1: $3E $EF
    inc b                                         ; $70C3: $04
    ld e, $E7                                     ; $70C4: $1E $E7
    ld b, $2E                                     ; $70C6: $06 $2E
    rst RST_20                                    ; $70C8: $E7
    ld [$DF15], sp                                ; $70C9: $08 $15 $DF
    ld a, [bc]                                    ; $70CC: $0A
    nop                                           ; $70CD: $00
    add b                                         ; $70CE: $80

jr_00A_70CF:
    ld h, a                                       ; $70CF: $67
    dec e                                         ; $70D0: $1D
    push de                                       ; $70D1: $D5

jr_00A_70D2:
    ld [hl], b                                    ; $70D2: $70
    nop                                           ; $70D3: $00
    nop                                           ; $70D4: $00
    dec b                                         ; $70D5: $05
    jr nz, jr_00A_70CF                            ; $70D6: $20 $F7

    nop                                           ; $70D8: $00
    jr nc, jr_00A_70D2                            ; $70D9: $30 $F7

    ld [bc], a                                    ; $70DB: $02
    daa                                           ; $70DC: $27
    rst RST_38                                    ; $70DD: $FF
    inc b                                         ; $70DE: $04
    scf                                           ; $70DF: $37
    rst RST_38                                    ; $70E0: $FF
    ld b, $30                                     ; $70E1: $06 $30
    rlca                                          ; $70E3: $07
    ld [$0100], sp                                ; $70E4: $08 $00 $01
    nop                                           ; $70E7: $00
    jr nz, jr_00A_7152                            ; $70E8: $20 $68

    dec e                                         ; $70EA: $1D
    rst RST_28                                    ; $70EB: $EF
    ld [hl], b                                    ; $70EC: $70
    nop                                           ; $70ED: $00
    nop                                           ; $70EE: $00
    ld b, $1E                                     ; $70EF: $06 $1E
    rst RST_28                                    ; $70F1: $EF
    nop                                           ; $70F2: $00
    ld l, $EF                                     ; $70F3: $2E $EF
    ld [bc], a                                    ; $70F5: $02
    ld a, $EF                                     ; $70F6: $3E $EF
    inc b                                         ; $70F8: $04
    ld e, $E7                                     ; $70F9: $1E $E7
    ld b, $2E                                     ; $70FB: $06 $2E
    rst RST_20                                    ; $70FD: $E7
    ld [$DF15], sp                                ; $70FE: $08 $15 $DF
    ld a, [bc]                                    ; $7101: $0A
    nop                                           ; $7102: $00
    ld bc, $E000                                  ; $7103: $01 $00 $E0
    ld l, b                                       ; $7106: $68
    dec e                                         ; $7107: $1D
    inc c                                         ; $7108: $0C
    ld [hl], c                                    ; $7109: $71
    nop                                           ; $710A: $00
    nop                                           ; $710B: $00
    ld b, $1E                                     ; $710C: $06 $1E
    rst RST_28                                    ; $710E: $EF
    nop                                           ; $710F: $00
    ld l, $EF                                     ; $7110: $2E $EF
    ld [bc], a                                    ; $7112: $02
    ld a, $EF                                     ; $7113: $3E $EF
    inc b                                         ; $7115: $04
    ld l, $E7                                     ; $7116: $2E $E7
    ld b, $1E                                     ; $7118: $06 $1E
    rst RST_20                                    ; $711A: $E7
    ld [$DF15], sp                                ; $711B: $08 $15 $DF
    ld a, [bc]                                    ; $711E: $0A
    nop                                           ; $711F: $00
    ld bc, $A000                                  ; $7120: $01 $00 $A0
    ld l, c                                       ; $7123: $69
    dec e                                         ; $7124: $1D
    add hl, hl                                    ; $7125: $29
    ld [hl], c                                    ; $7126: $71
    ld [bc], a                                    ; $7127: $02
    nop                                           ; $7128: $00

jr_00A_7129:
    add hl, bc                                    ; $7129: $09
    dec de                                        ; $712A: $1B
    rst RST_20                                    ; $712B: $E7
    nop                                           ; $712C: $00
    inc e                                         ; $712D: $1C
    rst RST_28                                    ; $712E: $EF
    ld [bc], a                                    ; $712F: $02
    jr nz, jr_00A_7129                            ; $7130: $20 $F7

    inc b                                         ; $7132: $04
    jr nz, @+$01                                  ; $7133: $20 $FF

    ld b, $30                                     ; $7135: $06 $30
    ldh a, [c]                                    ; $7137: $F2
    ld [$FA30], sp                                ; $7138: $08 $30 $FA
    ld a, [bc]                                    ; $713B: $0A
    jr nc, @+$04                                  ; $713C: $30 $02

    inc c                                         ; $713E: $0C
    ld [hl], $EA                                  ; $713F: $36 $EA
    ld c, $15                                     ; $7141: $0E $15
    rst RST_18                                    ; $7143: $DF
    stop                                          ; $7144: $10 $00
    ld bc, $C000                                  ; $7146: $01 $00 $C0
    ld l, d                                       ; $7149: $6A

jr_00A_714A:
    dec e                                         ; $714A: $1D
    ld c, a                                       ; $714B: $4F
    ld [hl], c                                    ; $714C: $71
    ld [bc], a                                    ; $714D: $02
    nop                                           ; $714E: $00

jr_00A_714F:
    ld a, [bc]                                    ; $714F: $0A
    jr nc, @+$04                                  ; $7150: $30 $02

jr_00A_7152:
    nop                                           ; $7152: $00

jr_00A_7153:
    jr nc, jr_00A_714F                            ; $7153: $30 $FA

    ld [bc], a                                    ; $7155: $02
    jr nc, jr_00A_714A                            ; $7156: $30 $F2

    inc b                                         ; $7158: $04
    jr nc, @-$14                                  ; $7159: $30 $EA

    ld b, $20                                     ; $715B: $06 $20
    rst RST_38                                    ; $715D: $FF
    ld [$F720], sp                                ; $715E: $08 $20 $F7
    ld a, [bc]                                    ; $7161: $0A
    jr nz, jr_00A_7153                            ; $7162: $20 $EF

    inc c                                         ; $7164: $0C
    dec de                                        ; $7165: $1B
    rst RST_20                                    ; $7166: $E7
    ld c, $10                                     ; $7167: $0E $10
    rst RST_28                                    ; $7169: $EF
    db $10                                        ; $716A: $10
    dec d                                         ; $716B: $15
    rst RST_18                                    ; $716C: $DF
    ld [de], a                                    ; $716D: $12

jr_00A_716E:
    nop                                           ; $716E: $00
    ld bc, $0000                                  ; $716F: $01 $00 $00
    ld l, h                                       ; $7172: $6C

jr_00A_7173:
    dec e                                         ; $7173: $1D
    ld a, b                                       ; $7174: $78
    ld [hl], c                                    ; $7175: $71
    ld [bc], a                                    ; $7176: $02
    nop                                           ; $7177: $00

jr_00A_7178:
    ld a, [bc]                                    ; $7178: $0A
    jr nc, @+$04                                  ; $7179: $30 $02

jr_00A_717B:
    nop                                           ; $717B: $00
    jr nc, jr_00A_7178                            ; $717C: $30 $FA

    ld [bc], a                                    ; $717E: $02
    jr nc, jr_00A_7173                            ; $717F: $30 $F2

    inc b                                         ; $7181: $04
    jr nc, jr_00A_716E                            ; $7182: $30 $EA

    ld b, $20                                     ; $7184: $06 $20
    cp $08                                        ; $7186: $FE $08
    jr nz, @-$08                                  ; $7188: $20 $F6

    ld a, [bc]                                    ; $718A: $0A
    jr nz, jr_00A_717B                            ; $718B: $20 $EE

    inc c                                         ; $718D: $0C
    dec de                                        ; $718E: $1B
    and $0E                                       ; $718F: $E6 $0E
    db $10                                        ; $7191: $10
    xor $10                                       ; $7192: $EE $10
    dec d                                         ; $7194: $15
    sbc $12                                       ; $7195: $DE $12

jr_00A_7197:
    nop                                           ; $7197: $00
    ld bc, $4000                                  ; $7198: $01 $00 $40
    ld l, l                                       ; $719B: $6D

jr_00A_719C:
    dec e                                         ; $719C: $1D
    and c                                         ; $719D: $A1
    ld [hl], c                                    ; $719E: $71
    ld [bc], a                                    ; $719F: $02
    nop                                           ; $71A0: $00

jr_00A_71A1:
    ld a, [bc]                                    ; $71A1: $0A
    jr nc, @+$04                                  ; $71A2: $30 $02

    nop                                           ; $71A4: $00

jr_00A_71A5:
    jr nc, jr_00A_71A1                            ; $71A5: $30 $FA

    ld [bc], a                                    ; $71A7: $02
    jr nc, jr_00A_719C                            ; $71A8: $30 $F2

    inc b                                         ; $71AA: $04
    jr nc, jr_00A_7197                            ; $71AB: $30 $EA

    ld b, $20                                     ; $71AD: $06 $20
    rst RST_38                                    ; $71AF: $FF
    ld [$F720], sp                                ; $71B0: $08 $20 $F7
    ld a, [bc]                                    ; $71B3: $0A
    jr nz, jr_00A_71A5                            ; $71B4: $20 $EF

    inc c                                         ; $71B6: $0C
    dec de                                        ; $71B7: $1B
    rst RST_20                                    ; $71B8: $E7
    ld c, $10                                     ; $71B9: $0E $10
    rst RST_28                                    ; $71BB: $EF
    db $10                                        ; $71BC: $10
    dec d                                         ; $71BD: $15
    rst RST_18                                    ; $71BE: $DF
    ld [de], a                                    ; $71BF: $12

jr_00A_71C0:
    nop                                           ; $71C0: $00
    ld bc, $8000                                  ; $71C1: $01 $00 $80
    ld l, [hl]                                    ; $71C4: $6E

jr_00A_71C5:
    dec e                                         ; $71C5: $1D
    jp z, $0271                                   ; $71C6: $CA $71 $02

    nop                                           ; $71C9: $00

jr_00A_71CA:
    ld a, [bc]                                    ; $71CA: $0A
    jr nc, @+$04                                  ; $71CB: $30 $02

    nop                                           ; $71CD: $00

jr_00A_71CE:
    jr nc, jr_00A_71CA                            ; $71CE: $30 $FA

    ld [bc], a                                    ; $71D0: $02
    jr nc, jr_00A_71C5                            ; $71D1: $30 $F2

    inc b                                         ; $71D3: $04
    jr nc, jr_00A_71C0                            ; $71D4: $30 $EA

    ld b, $20                                     ; $71D6: $06 $20
    rst RST_38                                    ; $71D8: $FF
    ld [$F720], sp                                ; $71D9: $08 $20 $F7
    ld a, [bc]                                    ; $71DC: $0A
    jr nz, jr_00A_71CE                            ; $71DD: $20 $EF

    inc c                                         ; $71DF: $0C
    dec de                                        ; $71E0: $1B
    rst RST_20                                    ; $71E1: $E7
    ld c, $10                                     ; $71E2: $0E $10
    rst RST_28                                    ; $71E4: $EF
    db $10                                        ; $71E5: $10
    dec d                                         ; $71E6: $15
    rst RST_18                                    ; $71E7: $DF
    ld [de], a                                    ; $71E8: $12
    nop                                           ; $71E9: $00
    ld bc, $C000                                  ; $71EA: $01 $00 $C0
    ld l, a                                       ; $71ED: $6F
    dec e                                         ; $71EE: $1D
    di                                            ; $71EF: $F3
    ld [hl], c                                    ; $71F0: $71
    ld [bc], a                                    ; $71F1: $02
    nop                                           ; $71F2: $00
    ld a, [bc]                                    ; $71F3: $0A
    rra                                           ; $71F4: $1F
    and $00                                       ; $71F5: $E6 $00
    rra                                           ; $71F7: $1F
    xor $02                                       ; $71F8: $EE $02
    rra                                           ; $71FA: $1F
    or $04                                        ; $71FB: $F6 $04

jr_00A_71FD:
    jr nz, jr_00A_71FD                            ; $71FD: $20 $FE

    ld b, $2F                                     ; $71FF: $06 $2F
    ld [$2F08], a                                 ; $7201: $EA $08 $2F
    ldh a, [c]                                    ; $7204: $F2
    ld a, [bc]                                    ; $7205: $0A
    cpl                                           ; $7206: $2F
    ld a, [$300C]                                 ; $7207: $FA $0C $30
    ld [bc], a                                    ; $720A: $02
    ld c, $15                                     ; $720B: $0E $15
    sbc $10                                       ; $720D: $DE $10
    rrca                                          ; $720F: $0F
    xor $12                                       ; $7210: $EE $12
    nop                                           ; $7212: $00
    ld bc, $0000                                  ; $7213: $01 $00 $00
    ld [hl], c                                    ; $7216: $71
    dec e                                         ; $7217: $1D
    inc e                                         ; $7218: $1C
    ld [hl], d                                    ; $7219: $72
    ld [bc], a                                    ; $721A: $02
    nop                                           ; $721B: $00
    rrca                                          ; $721C: $0F

jr_00A_721D:
    jr nc, @+$0F                                  ; $721D: $30 $0D

    nop                                           ; $721F: $00
    jr nc, @+$07                                  ; $7220: $30 $05

jr_00A_7222:
    ld [bc], a                                    ; $7222: $02
    jr nc, jr_00A_7222                            ; $7223: $30 $FD

    inc b                                         ; $7225: $04
    jr nc, jr_00A_721D                            ; $7226: $30 $F5

    ld b, $30                                     ; $7228: $06 $30
    db $ED                                        ; $722A: $ED
    ld [$E530], sp                                ; $722B: $08 $30 $E5
    ld a, [bc]                                    ; $722E: $0A
    jr nz, @+$14                                  ; $722F: $20 $12

    inc c                                         ; $7231: $0C
    jr nz, jr_00A_7236                            ; $7232: $20 $02

    ld c, $20                                     ; $7234: $0E $20

jr_00A_7236:
    ld a, [$2010]                                 ; $7236: $FA $10 $20
    ldh a, [c]                                    ; $7239: $F2
    ld [de], a                                    ; $723A: $12
    jr nz, @-$14                                  ; $723B: $20 $EA

    inc d                                         ; $723D: $14
    db $10                                        ; $723E: $10
    ldh a, [c]                                    ; $723F: $F2
    ld d, $10                                     ; $7240: $16 $10
    ld [$1B18], a                                 ; $7242: $EA $18 $1B
    ldh [c], a                                    ; $7245: $E2
    ld a, [de]                                    ; $7246: $1A
    dec hl                                        ; $7247: $2B

jr_00A_7248:
    db $DD                                        ; $7248: $DD

jr_00A_7249:
    inc e                                         ; $7249: $1C
    nop                                           ; $724A: $00
    ld bc, $0000                                  ; $724B: $01 $00 $00
    ld c, [hl]                                    ; $724E: $4E
    dec e                                         ; $724F: $1D
    ld d, h                                       ; $7250: $54
    ld [hl], d                                    ; $7251: $72
    rlca                                          ; $7252: $07
    nop                                           ; $7253: $00
    ld b, $20                                     ; $7254: $06 $20
    ei                                            ; $7256: $FB
    nop                                           ; $7257: $00
    jr nz, @-$0B                                  ; $7258: $20 $F3

    ld [bc], a                                    ; $725A: $02
    jr nz, jr_00A_7248                            ; $725B: $20 $EB

    inc b                                         ; $725D: $04
    db $10                                        ; $725E: $10
    xor $06                                       ; $725F: $EE $06
    db $10                                        ; $7261: $10
    and $08                                       ; $7262: $E6 $08

jr_00A_7264:
    jr nz, jr_00A_7249                            ; $7264: $20 $E3

    ld a, [bc]                                    ; $7266: $0A
    nop                                           ; $7267: $00
    ret nz                                        ; $7268: $C0

    ld c, [hl]                                    ; $7269: $4E
    dec e                                         ; $726A: $1D
    ld l, a                                       ; $726B: $6F
    ld [hl], d                                    ; $726C: $72
    rlca                                          ; $726D: $07
    nop                                           ; $726E: $00

jr_00A_726F:
    inc b                                         ; $726F: $04
    jr nc, @-$17                                  ; $7270: $30 $E7

    nop                                           ; $7272: $00
    jr nc, jr_00A_7264                            ; $7273: $30 $EF

    ld [bc], a                                    ; $7275: $02
    jr nc, jr_00A_726F                            ; $7276: $30 $F7

    inc b                                         ; $7278: $04
    jr nc, @+$01                                  ; $7279: $30 $FF

    ld b, $00                                     ; $727B: $06 $00
    ld bc, $4000                                  ; $727D: $01 $00 $40
    ld c, a                                       ; $7280: $4F
    dec e                                         ; $7281: $1D
    and h                                         ; $7282: $A4
    ld [hl], d                                    ; $7283: $72
    rlca                                          ; $7284: $07
    nop                                           ; $7285: $00
    jr nz, jr_00A_7289                            ; $7286: $20 $01

    nop                                           ; $7288: $00

jr_00A_7289:
    ld b, b                                       ; $7289: $40
    ld c, a                                       ; $728A: $4F
    dec e                                         ; $728B: $1D
    and h                                         ; $728C: $A4
    ld [hl], d                                    ; $728D: $72
    ld sp, hl                                     ; $728E: $F9
    nop                                           ; $728F: $00
    ld b, b                                       ; $7290: $40
    ld bc, $4000                                  ; $7291: $01 $00 $40
    ld c, a                                       ; $7294: $4F
    dec e                                         ; $7295: $1D
    and h                                         ; $7296: $A4
    ld [hl], d                                    ; $7297: $72
    rlca                                          ; $7298: $07
    dec b                                         ; $7299: $05
    ld h, b                                       ; $729A: $60
    ld bc, $4000                                  ; $729B: $01 $00 $40
    ld c, a                                       ; $729E: $4F
    dec e                                         ; $729F: $1D
    and h                                         ; $72A0: $A4
    ld [hl], d                                    ; $72A1: $72
    ld sp, hl                                     ; $72A2: $F9
    dec b                                         ; $72A3: $05
    add hl, bc                                    ; $72A4: $09
    add hl, hl                                    ; $72A5: $29
    ldh [rP1], a                                  ; $72A6: $E0 $00
    inc h                                         ; $72A8: $24
    add sp, $02                                   ; $72A9: $E8 $02
    inc h                                         ; $72AB: $24
    ldh a, [rDIV]                                 ; $72AC: $F0 $04
    ld h, $F8                                     ; $72AE: $26 $F8
    ld b, $2B                                     ; $72B0: $06 $2B
    nop                                           ; $72B2: $00
    ld [$E834], sp                                ; $72B3: $08 $34 $E8
    ld a, [bc]                                    ; $72B6: $0A
    inc [hl]                                      ; $72B7: $34
    ldh a, [$FF0C]                                ; $72B8: $F0 $0C
    ld [hl], $F8                                  ; $72BA: $36 $F8
    ld c, $3B                                     ; $72BC: $0E $3B
    nop                                           ; $72BE: $00
    stop                                          ; $72BF: $10 $00
    ld bc, $6000                                  ; $72C1: $01 $00 $60
    ld d, b                                       ; $72C4: $50
    dec e                                         ; $72C5: $1D
    jp z, $FC72                                   ; $72C6: $CA $72 $FC

    nop                                           ; $72C9: $00
    add hl, bc                                    ; $72CA: $09
    ld a, [hl+]                                   ; $72CB: $2A
    ld [$2700], a                                 ; $72CC: $EA $00 $27
    ldh a, [c]                                    ; $72CF: $F2
    ld [bc], a                                    ; $72D0: $02
    daa                                           ; $72D1: $27
    ld a, [$2704]                                 ; $72D2: $FA $04 $27
    ld [bc], a                                    ; $72D5: $02
    ld b, $27                                     ; $72D6: $06 $27
    ld a, [bc]                                    ; $72D8: $0A
    ld [$F137], sp                                ; $72D9: $08 $37 $F1
    ld a, [bc]                                    ; $72DC: $0A
    scf                                           ; $72DD: $37
    ld sp, hl                                     ; $72DE: $F9
    inc c                                         ; $72DF: $0C
    scf                                           ; $72E0: $37
    ld bc, $370E                                  ; $72E1: $01 $0E $37
    add hl, bc                                    ; $72E4: $09
    stop                                          ; $72E5: $10 $00
    inc e                                         ; $72E7: $1C
    nop                                           ; $72E8: $00
    add b                                         ; $72E9: $80
    ld d, c                                       ; $72EA: $51
    dec e                                         ; $72EB: $1D
    ld a, [$0972]                                 ; $72EC: $FA $72 $09
    ei                                            ; $72EF: $FB
    ld h, b                                       ; $72F0: $60

jr_00A_72F1:
    inc e                                         ; $72F1: $1C
    nop                                           ; $72F2: $00
    add b                                         ; $72F3: $80
    ld d, c                                       ; $72F4: $51
    dec e                                         ; $72F5: $1D
    ld a, [$0B72]                                 ; $72F6: $FA $72 $0B
    db $F4                                        ; $72F9: $F4
    add hl, bc                                    ; $72FA: $09
    dec hl                                        ; $72FB: $2B

jr_00A_72FC:
    jp hl                                         ; $72FC: $E9


    nop                                           ; $72FD: $00
    jr z, jr_00A_72F1                             ; $72FE: $28 $F1

    ld [bc], a                                    ; $7300: $02
    jr z, jr_00A_72FC                             ; $7301: $28 $F9

    inc b                                         ; $7303: $04
    dec sp                                        ; $7304: $3B
    jp hl                                         ; $7305: $E9


    ld b, $38                                     ; $7306: $06 $38
    pop af                                        ; $7308: $F1
    ld [$F938], sp                                ; $7309: $08 $38 $F9
    ld a, [bc]                                    ; $730C: $0A
    scf                                           ; $730D: $37
    ld bc, $330C                                  ; $730E: $01 $0C $33
    add hl, bc                                    ; $7311: $09
    ld c, $27                                     ; $7312: $0E $27
    ld bc, $0010                                  ; $7314: $01 $10 $00
    inc e                                         ; $7317: $1C
    nop                                           ; $7318: $00
    and b                                         ; $7319: $A0
    ld d, d                                       ; $731A: $52
    dec e                                         ; $731B: $1D
    jr nz, @+$75                                  ; $731C: $20 $73

    rlca                                          ; $731E: $07
    nop                                           ; $731F: $00
    ld [$E136], sp                                ; $7320: $08 $36 $E1
    nop                                           ; $7323: $00
    ld sp, $02E9                                  ; $7324: $31 $E9 $02
    ld sp, $04F1                                  ; $7327: $31 $F1 $04
    ld sp, $06F9                                  ; $732A: $31 $F9 $06
    ld sp, $0801                                  ; $732D: $31 $01 $08
    ld sp, $0A09                                  ; $7330: $31 $09 $0A
    ld hl, $0CF0                                  ; $7333: $21 $F0 $0C
    ld hl, $0EF8                                  ; $7336: $21 $F8 $0E
    nop                                           ; $7339: $00
    ld bc, $E000                                  ; $733A: $01 $00 $E0
    ld e, b                                       ; $733D: $58
    inc hl                                        ; $733E: $23
    ld b, e                                       ; $733F: $43
    ld [hl], e                                    ; $7340: $73
    ld hl, sp+$00                                 ; $7341: $F8 $00
    add hl, bc                                    ; $7343: $09
    ld [de], a                                    ; $7344: $12
    cp $00                                        ; $7345: $FE $00
    ld [de], a                                    ; $7347: $12
    ld b, $02                                     ; $7348: $06 $02
    ld [hl+], a                                   ; $734A: $22
    ld hl, sp+$04                                 ; $734B: $F8 $04
    ld [hl+], a                                   ; $734D: $22
    nop                                           ; $734E: $00
    ld b, $22                                     ; $734F: $06 $22
    ld [$3208], sp                                ; $7351: $08 $08 $32
    di                                            ; $7354: $F3
    ld a, [bc]                                    ; $7355: $0A
    ld [hl-], a                                   ; $7356: $32
    ei                                            ; $7357: $FB
    inc c                                         ; $7358: $0C
    ld [hl-], a                                   ; $7359: $32
    inc bc                                        ; $735A: $03
    ld c, $32                                     ; $735B: $0E $32
    dec bc                                        ; $735D: $0B
    stop                                          ; $735E: $10 $00
    ld bc, $0000                                  ; $7360: $01 $00 $00
    ld e, d                                       ; $7363: $5A
    inc hl                                        ; $7364: $23
    ld l, c                                       ; $7365: $69
    ld [hl], e                                    ; $7366: $73
    ld hl, sp+$00                                 ; $7367: $F8 $00
    add hl, bc                                    ; $7369: $09
    ld [de], a                                    ; $736A: $12
    nop                                           ; $736B: $00
    nop                                           ; $736C: $00
    ld [de], a                                    ; $736D: $12
    ld [$2202], sp                                ; $736E: $08 $02 $22
    ld hl, sp+$04                                 ; $7371: $F8 $04
    ld [hl+], a                                   ; $7373: $22
    nop                                           ; $7374: $00
    ld b, $22                                     ; $7375: $06 $22
    ld [$3208], sp                                ; $7377: $08 $08 $32
    di                                            ; $737A: $F3
    ld a, [bc]                                    ; $737B: $0A
    ld [hl-], a                                   ; $737C: $32
    ei                                            ; $737D: $FB
    inc c                                         ; $737E: $0C
    ld [hl-], a                                   ; $737F: $32
    inc bc                                        ; $7380: $03
    ld c, $32                                     ; $7381: $0E $32
    dec bc                                        ; $7383: $0B
    stop                                          ; $7384: $10 $00
    ld [$20B8], sp                                ; $7386: $08 $B8 $20
    ld e, e                                       ; $7389: $5B
    inc hl                                        ; $738A: $23
    sbc c                                         ; $738B: $99
    ld [hl], e                                    ; $738C: $73
    ld [bc], a                                    ; $738D: $02
    dec c                                         ; $738E: $0D
    ld h, b                                       ; $738F: $60
    ld [$20B8], sp                                ; $7390: $08 $B8 $20
    ld e, e                                       ; $7393: $5B
    inc hl                                        ; $7394: $23
    sbc c                                         ; $7395: $99
    ld [hl], e                                    ; $7396: $73
    cp $EF                                        ; $7397: $FE $EF
    ld [$EF15], sp                                ; $7399: $08 $15 $EF
    nop                                           ; $739C: $00
    ld [de], a                                    ; $739D: $12
    rst RST_30                                    ; $739E: $F7
    ld [bc], a                                    ; $739F: $02
    ld [de], a                                    ; $73A0: $12
    rst RST_38                                    ; $73A1: $FF
    inc b                                         ; $73A2: $04
    jr jr_00A_73AC                                ; $73A3: $18 $07

    ld b, $25                                     ; $73A5: $06 $25
    rst RST_28                                    ; $73A7: $EF
    ld [$F722], sp                                ; $73A8: $08 $22 $F7
    ld a, [bc]                                    ; $73AB: $0A

jr_00A_73AC:
    ld [hl+], a                                   ; $73AC: $22
    rst RST_38                                    ; $73AD: $FF
    inc c                                         ; $73AE: $0C
    jr z, jr_00A_73B8                             ; $73AF: $28 $07

    ld c, $00                                     ; $73B1: $0E $00
    ld [$20B8], sp                                ; $73B3: $08 $B8 $20
    ld e, h                                       ; $73B6: $5C
    inc hl                                        ; $73B7: $23

jr_00A_73B8:
    add $73                                       ; $73B8: $C6 $73
    ld [bc], a                                    ; $73BA: $02
    dec c                                         ; $73BB: $0D
    ld h, b                                       ; $73BC: $60
    ld [$20B8], sp                                ; $73BD: $08 $B8 $20
    ld e, h                                       ; $73C0: $5C
    inc hl                                        ; $73C1: $23
    add $73                                       ; $73C2: $C6 $73
    cp $F0                                        ; $73C4: $FE $F0
    ld [$EF16], sp                                ; $73C6: $08 $16 $EF
    nop                                           ; $73C9: $00
    ld [de], a                                    ; $73CA: $12
    rst RST_30                                    ; $73CB: $F7
    ld [bc], a                                    ; $73CC: $02
    ld [de], a                                    ; $73CD: $12
    rst RST_38                                    ; $73CE: $FF
    inc b                                         ; $73CF: $04
    inc de                                        ; $73D0: $13
    rlca                                          ; $73D1: $07
    ld b, $26                                     ; $73D2: $06 $26
    rst RST_28                                    ; $73D4: $EF
    ld [$F722], sp                                ; $73D5: $08 $22 $F7
    ld a, [bc]                                    ; $73D8: $0A
    ld [hl+], a                                   ; $73D9: $22
    rst RST_38                                    ; $73DA: $FF
    inc c                                         ; $73DB: $0C
    inc hl                                        ; $73DC: $23
    rlca                                          ; $73DD: $07
    ld c, $00                                     ; $73DE: $0E $00
    rlca                                          ; $73E0: $07
    cp c                                          ; $73E1: $B9
    jr nz, @+$5F                                  ; $73E2: $20 $5D

    inc hl                                        ; $73E4: $23
    jp hl                                         ; $73E5: $E9


    ld [hl], e                                    ; $73E6: $73
    dec bc                                        ; $73E7: $0B
    cp $0B                                        ; $73E8: $FE $0B
    ld a, [hl+]                                   ; $73EA: $2A
    call c, $2C00                                 ; $73EB: $DC $00 $2C
    db $E4                                        ; $73EE: $E4
    ld [bc], a                                    ; $73EF: $02
    ld [hl-], a                                   ; $73F0: $32
    db $EC                                        ; $73F1: $EC
    inc b                                         ; $73F2: $04
    ld [hl-], a                                   ; $73F3: $32
    db $F4                                        ; $73F4: $F4
    ld b, $2D                                     ; $73F5: $06 $2D
    db $FC                                        ; $73F7: $FC
    ld [$0421], sp                                ; $73F8: $08 $21 $04
    ld a, [bc]                                    ; $73FB: $0A
    ld a, [hl-]                                   ; $73FC: $3A
    call c, Call_000_3C0C                         ; $73FD: $DC $0C $3C
    db $E4                                        ; $7400: $E4
    ld c, $3D                                     ; $7401: $0E $3D
    db $FC                                        ; $7403: $FC
    db $10                                        ; $7404: $10
    ld sp, $1204                                  ; $7405: $31 $04 $12
    ld [hl-], a                                   ; $7408: $32
    inc c                                         ; $7409: $0C
    inc d                                         ; $740A: $14
    nop                                           ; $740B: $00
    ld bc, $8000                                  ; $740C: $01 $00 $80
    ld e, [hl]                                    ; $740F: $5E
    inc hl                                        ; $7410: $23
    dec d                                         ; $7411: $15
    ld [hl], h                                    ; $7412: $74
    ld hl, sp+$00                                 ; $7413: $F8 $00
    ld b, $08                                     ; $7415: $06 $08
    inc bc                                        ; $7417: $03
    nop                                           ; $7418: $00
    ld [$02FB], sp                                ; $7419: $08 $FB $02
    ld [$04F3], sp                                ; $741C: $08 $F3 $04

jr_00A_741F:
    jr jr_00A_741F                                ; $741F: $18 $FE

    ld b, $18                                     ; $7421: $06 $18
    or $08                                        ; $7423: $F6 $08
    rla                                           ; $7425: $17
    xor $0A                                       ; $7426: $EE $0A
    nop                                           ; $7428: $00
    ld b, b                                       ; $7429: $40
    ld e, a                                       ; $742A: $5F
    inc hl                                        ; $742B: $23

jr_00A_742C:
    jr nc, jr_00A_74A2                            ; $742C: $30 $74

    ld hl, sp+$00                                 ; $742E: $F8 $00
    ld [$F420], sp                                ; $7430: $08 $20 $F4
    nop                                           ; $7433: $00
    jr nz, @-$02                                  ; $7434: $20 $FC

    ld [bc], a                                    ; $7436: $02

jr_00A_7437:
    jr nc, jr_00A_742C                            ; $7437: $30 $F3

    inc b                                         ; $7439: $04
    jr nc, jr_00A_7437                            ; $743A: $30 $FB

    ld b, $30                                     ; $743C: $06 $30
    inc bc                                        ; $743E: $03
    ld [$0B30], sp                                ; $743F: $08 $30 $0B
    ld a, [bc]                                    ; $7442: $0A
    jr nz, @+$06                                  ; $7443: $20 $04

    inc c                                         ; $7445: $0C
    jr nz, jr_00A_7454                            ; $7446: $20 $0C

    ld c, $00                                     ; $7448: $0E $00
    ld bc, $4000                                  ; $744A: $01 $00 $40
    ld h, b                                       ; $744D: $60
    inc hl                                        ; $744E: $23
    ld d, e                                       ; $744F: $53
    ld [hl], h                                    ; $7450: $74
    ld hl, sp+$00                                 ; $7451: $F8 $00
    inc bc                                        ; $7453: $03

jr_00A_7454:
    db $10                                        ; $7454: $10
    ldh a, [rP1]                                  ; $7455: $F0 $00
    db $10                                        ; $7457: $10
    ld hl, sp+$02                                 ; $7458: $F8 $02
    stop                                          ; $745A: $10 $00
    inc b                                         ; $745C: $04
    nop                                           ; $745D: $00
    ld bc, $A000                                  ; $745E: $01 $00 $A0
    ld h, b                                       ; $7461: $60
    inc hl                                        ; $7462: $23
    ld h, a                                       ; $7463: $67
    ld [hl], h                                    ; $7464: $74
    ld [$0903], sp                                ; $7465: $08 $03 $09
    ld a, [de]                                    ; $7468: $1A
    and $00                                       ; $7469: $E6 $00
    rla                                           ; $746B: $17
    xor $02                                       ; $746C: $EE $02
    jr @-$08                                      ; $746E: $18 $F6

    inc b                                         ; $7470: $04
    add hl, bc                                    ; $7471: $09
    cp $06                                        ; $7472: $FE $06
    add hl, de                                    ; $7474: $19

jr_00A_7475:
    cp $08                                        ; $7475: $FE $08
    ld a, [hl+]                                   ; $7477: $2A
    and $0A                                       ; $7478: $E6 $0A
    daa                                           ; $747A: $27
    xor $0C                                       ; $747B: $EE $0C
    jr z, jr_00A_7475                             ; $747D: $28 $F6

    ld c, $29                                     ; $747F: $0E $29
    cp $10                                        ; $7481: $FE $10
    nop                                           ; $7483: $00
    ld bc, $C005                                  ; $7484: $01 $05 $C0
    ld h, c                                       ; $7487: $61
    inc hl                                        ; $7488: $23
    adc l                                         ; $7489: $8D
    ld [hl], h                                    ; $748A: $74
    ld [$0A03], sp                                ; $748B: $08 $03 $0A
    jr jr_00A_7475                                ; $748E: $18 $E5

    nop                                           ; $7490: $00
    inc c                                         ; $7491: $0C
    db $ED                                        ; $7492: $ED
    ld [bc], a                                    ; $7493: $02
    inc c                                         ; $7494: $0C
    push af                                       ; $7495: $F5
    inc b                                         ; $7496: $04
    jr z, @-$19                                   ; $7497: $28 $E5

    ld b, $1C                                     ; $7499: $06 $1C
    db $ED                                        ; $749B: $ED
    ld [$F51C], sp                                ; $749C: $08 $1C $F5
    ld a, [bc]                                    ; $749F: $0A
    db $10                                        ; $74A0: $10
    db $FD                                        ; $74A1: $FD

jr_00A_74A2:
    inc c                                         ; $74A2: $0C

jr_00A_74A3:
    jr nz, jr_00A_74A2                            ; $74A3: $20 $FD

    ld c, $2C                                     ; $74A5: $0E $2C
    push af                                       ; $74A7: $F5

jr_00A_74A8:
    db $10                                        ; $74A8: $10
    jr nc, jr_00A_74A3                            ; $74A9: $30 $F8

    ld [de], a                                    ; $74AB: $12
    nop                                           ; $74AC: $00
    ld bc, $0005                                  ; $74AD: $01 $05 $00
    ld h, e                                       ; $74B0: $63
    inc hl                                        ; $74B1: $23
    ret nz                                        ; $74B2: $C0

    ld [hl], h                                    ; $74B3: $74
    ld [$0003], sp                                ; $74B4: $08 $03 $00
    ld bc, $0000                                  ; $74B7: $01 $00 $00
    ld h, e                                       ; $74BA: $63
    inc hl                                        ; $74BB: $23
    ret nz                                        ; $74BC: $C0

    ld [hl], h                                    ; $74BD: $74
    ld [$0C03], sp                                ; $74BE: $08 $03 $0C
    jr jr_00A_74A8                                ; $74C1: $18 $E5

    nop                                           ; $74C3: $00
    dec d                                         ; $74C4: $15
    db $ED                                        ; $74C5: $ED
    ld [bc], a                                    ; $74C6: $02
    dec d                                         ; $74C7: $15
    push af                                       ; $74C8: $F5
    inc b                                         ; $74C9: $04
    inc de                                        ; $74CA: $13
    db $FD                                        ; $74CB: $FD
    ld b, $11                                     ; $74CC: $06 $11
    dec b                                         ; $74CE: $05
    ld [$E528], sp                                ; $74CF: $08 $28 $E5
    ld a, [bc]                                    ; $74D2: $0A
    dec h                                         ; $74D3: $25
    db $ED                                        ; $74D4: $ED
    inc c                                         ; $74D5: $0C

jr_00A_74D6:
    dec h                                         ; $74D6: $25
    push af                                       ; $74D7: $F5
    ld c, $23                                     ; $74D8: $0E $23
    db $FD                                        ; $74DA: $FD
    db $10                                        ; $74DB: $10
    inc sp                                        ; $74DC: $33
    db $FD                                        ; $74DD: $FD
    ld [de], a                                    ; $74DE: $12
    jr c, jr_00A_74D6                             ; $74DF: $38 $F5

    inc d                                         ; $74E1: $14
    ld [$160D], sp                                ; $74E2: $08 $0D $16
    nop                                           ; $74E5: $00
    ld bc, $8000                                  ; $74E6: $01 $00 $80
    ld h, h                                       ; $74E9: $64
    inc hl                                        ; $74EA: $23
    rst RST_28                                    ; $74EB: $EF
    ld [hl], h                                    ; $74EC: $74
    ld [$0300], sp                                ; $74ED: $08 $00 $03
    db $10                                        ; $74F0: $10
    db $EC                                        ; $74F1: $EC
    nop                                           ; $74F2: $00
    db $10                                        ; $74F3: $10
    db $F4                                        ; $74F4: $F4
    ld [bc], a                                    ; $74F5: $02
    db $10                                        ; $74F6: $10
    db $FC                                        ; $74F7: $FC
    inc b                                         ; $74F8: $04
    nop                                           ; $74F9: $00
    ldh [$FF64], a                                ; $74FA: $E0 $64
    inc hl                                        ; $74FC: $23
    ld bc, $0075                                  ; $74FD: $01 $75 $00
    ld hl, sp+$07                                 ; $7500: $F8 $07
    daa                                           ; $7502: $27
    rst RST_30                                    ; $7503: $F7
    nop                                           ; $7504: $00
    jr z, @+$01                                   ; $7505: $28 $FF

    ld [bc], a                                    ; $7507: $02
    scf                                           ; $7508: $37
    ld [$3704], a                                 ; $7509: $EA $04 $37
    ldh a, [c]                                    ; $750C: $F2
    ld b, $37                                     ; $750D: $06 $37
    ld a, [$3808]                                 ; $750F: $FA $08 $38
    ld [bc], a                                    ; $7512: $02
    ld a, [bc]                                    ; $7513: $0A
    daa                                           ; $7514: $27
    ld [$000C], a                                 ; $7515: $EA $0C $00
    ld bc, $C000                                  ; $7518: $01 $00 $C0

jr_00A_751B:
    ld h, l                                       ; $751B: $65
    inc hl                                        ; $751C: $23
    ld hl, $0875                                  ; $751D: $21 $75 $08
    ld hl, sp+$07                                 ; $7520: $F8 $07
    jr @-$12                                      ; $7522: $18 $EC

    nop                                           ; $7524: $00
    jr jr_00A_751B                                ; $7525: $18 $F4

    ld [bc], a                                    ; $7527: $02
    jr @-$02                                      ; $7528: $18 $FC

    inc b                                         ; $752A: $04
    ld [$06E7], sp                                ; $752B: $08 $E7 $06
    ld [$08EF], sp                                ; $752E: $08 $EF $08
    ld [$0AF7], sp                                ; $7531: $08 $F7 $0A
    ld [$0CFF], sp                                ; $7534: $08 $FF $0C
    nop                                           ; $7537: $00
    ld bc, $A000                                  ; $7538: $01 $00 $A0

jr_00A_753B:
    ld h, [hl]                                    ; $753B: $66
    inc hl                                        ; $753C: $23
    ld b, c                                       ; $753D: $41
    ld [hl], l                                    ; $753E: $75
    ld [$06F8], sp                                ; $753F: $08 $F8 $06
    jr @-$12                                      ; $7542: $18 $EC

    nop                                           ; $7544: $00
    jr jr_00A_753B                                ; $7545: $18 $F4

    ld [bc], a                                    ; $7547: $02
    jr @-$02                                      ; $7548: $18 $FC

    inc b                                         ; $754A: $04
    ld [$06E7], sp                                ; $754B: $08 $E7 $06
    ld [$08EF], sp                                ; $754E: $08 $EF $08
    ld [$0AFD], sp                                ; $7551: $08 $FD $0A
    nop                                           ; $7554: $00
    nop                                           ; $7555: $00
    ld b, $60                                     ; $7556: $06 $60
    ld h, a                                       ; $7558: $67
    inc hl                                        ; $7559: $23
    ld e, [hl]                                    ; $755A: $5E
    ld [hl], l                                    ; $755B: $75
    nop                                           ; $755C: $00
    ld [$0F0C], sp                                ; $755D: $08 $0C $0F
    ldh [rP1], a                                  ; $7560: $E0 $00
    ld [de], a                                    ; $7562: $12
    add sp, $02                                   ; $7563: $E8 $02
    add hl, bc                                    ; $7565: $09
    ldh a, [rDIV]                                 ; $7566: $F0 $04
    ld c, $F8                                     ; $7568: $0E $F8
    ld b, $0E                                     ; $756A: $06 $0E
    nop                                           ; $756C: $00
    ld [$E01F], sp                                ; $756D: $08 $1F $E0
    ld a, [bc]                                    ; $7570: $0A
    add hl, de                                    ; $7571: $19
    ldh a, [$FF0C]                                ; $7572: $F0 $0C
    ld e, $F8                                     ; $7574: $1E $F8
    ld c, $1E                                     ; $7576: $0E $1E
    nop                                           ; $7578: $00
    db $10                                        ; $7579: $10
    jr jr_00A_7584                                ; $757A: $18 $08

    ld [de], a                                    ; $757C: $12
    ld [hl+], a                                   ; $757D: $22
    add sp, $14                                   ; $757E: $E8 $14
    ld l, $F8                                     ; $7580: $2E $F8
    ld d, $00                                     ; $7582: $16 $00

jr_00A_7584:
    nop                                           ; $7584: $00
    ld b, $E0                                     ; $7585: $06 $E0
    ld l, b                                       ; $7587: $68
    inc hl                                        ; $7588: $23
    adc l                                         ; $7589: $8D
    ld [hl], l                                    ; $758A: $75
    nop                                           ; $758B: $00
    ld [$0F0F], sp                                ; $758C: $08 $0F $0F
    ldh [rP1], a                                  ; $758F: $E0 $00
    ld [de], a                                    ; $7591: $12
    add sp, $02                                   ; $7592: $E8 $02
    add hl, bc                                    ; $7594: $09
    ldh a, [rDIV]                                 ; $7595: $F0 $04
    rrca                                          ; $7597: $0F
    ld hl, sp+$06                                 ; $7598: $F8 $06
    ld c, $00                                     ; $759A: $0E $00
    ld [$E01F], sp                                ; $759C: $08 $1F $E0
    ld a, [bc]                                    ; $759F: $0A
    ld [hl+], a                                   ; $75A0: $22
    add sp, $0C                                   ; $75A1: $E8 $0C
    add hl, de                                    ; $75A3: $19
    ldh a, [$FF0E]                                ; $75A4: $F0 $0E
    rra                                           ; $75A6: $1F
    ld hl, sp+$10                                 ; $75A7: $F8 $10
    ld e, $00                                     ; $75A9: $1E $00
    ld [de], a                                    ; $75AB: $12
    add hl, de                                    ; $75AC: $19
    ld [$2914], sp                                ; $75AD: $08 $14 $29
    ldh a, [rNR21]                                ; $75B0: $F0 $16
    cpl                                           ; $75B2: $2F
    ld hl, sp+$18                                 ; $75B3: $F8 $18
    ld l, $00                                     ; $75B5: $2E $00
    ld a, [de]                                    ; $75B7: $1A
    add hl, hl                                    ; $75B8: $29
    ld [$001C], sp                                ; $75B9: $08 $1C $00
    nop                                           ; $75BC: $00
    ld b, $C0                                     ; $75BD: $06 $C0
    ld l, d                                       ; $75BF: $6A
    inc hl                                        ; $75C0: $23
    push bc                                       ; $75C1: $C5
    ld [hl], l                                    ; $75C2: $75
    nop                                           ; $75C3: $00
    ld hl, sp+$0E                                 ; $75C4: $F8 $0E
    ld a, [hl+]                                   ; $75C6: $2A
    sbc $00                                       ; $75C7: $DE $00
    ld [hl+], a                                   ; $75C9: $22
    and $02                                       ; $75CA: $E6 $02
    ld hl, $04EE                                  ; $75CC: $21 $EE $04
    daa                                           ; $75CF: $27
    or $06                                        ; $75D0: $F6 $06
    daa                                           ; $75D2: $27
    cp $08                                        ; $75D3: $FE $08
    add hl, hl                                    ; $75D5: $29
    ld b, $0A                                     ; $75D6: $06 $0A
    ld a, [hl+]                                   ; $75D8: $2A
    ld c, $0C                                     ; $75D9: $0E $0C
    ld [hl-], a                                   ; $75DB: $32
    and $0E                                       ; $75DC: $E6 $0E
    ld sp, $10EE                                  ; $75DE: $31 $EE $10
    ld sp, $12F6                                  ; $75E1: $31 $F6 $12
    scf                                           ; $75E4: $37
    cp $14                                        ; $75E5: $FE $14
    add hl, sp                                    ; $75E7: $39
    ld b, $16                                     ; $75E8: $06 $16
    ld a, [hl-]                                   ; $75EA: $3A
    ld c, $18                                     ; $75EB: $0E $18
    ld b, c                                       ; $75ED: $41
    pop af                                        ; $75EE: $F1
    ld a, [de]                                    ; $75EF: $1A
    nop                                           ; $75F0: $00
    nop                                           ; $75F1: $00
    ld b, $80                                     ; $75F2: $06 $80
    ld l, h                                       ; $75F4: $6C
    inc hl                                        ; $75F5: $23
    ld a, [$0075]                                 ; $75F6: $FA $75 $00
    ld hl, sp+$0F                                 ; $75F9: $F8 $0F
    dec de                                        ; $75FB: $1B
    rst RST_18                                    ; $75FC: $DF
    nop                                           ; $75FD: $00
    rra                                           ; $75FE: $1F
    rst RST_20                                    ; $75FF: $E7
    ld [bc], a                                    ; $7600: $02
    ld a, [de]                                    ; $7601: $1A
    rst RST_28                                    ; $7602: $EF
    inc b                                         ; $7603: $04
    ld e, $F7                                     ; $7604: $1E $F7
    ld b, $2B                                     ; $7606: $06 $2B
    rst RST_18                                    ; $7608: $DF
    ld [$E72F], sp                                ; $7609: $08 $2F $E7
    ld a, [bc]                                    ; $760C: $0A
    ld a, [hl+]                                   ; $760D: $2A
    rst RST_28                                    ; $760E: $EF
    inc c                                         ; $760F: $0C
    ld l, $F7                                     ; $7610: $2E $F7
    ld c, $28                                     ; $7612: $0E $28
    rst RST_38                                    ; $7614: $FF

jr_00A_7615:
    db $10                                        ; $7615: $10
    jr z, @+$09                                   ; $7616: $28 $07

    ld [de], a                                    ; $7618: $12
    ld h, $0F                                     ; $7619: $26 $0F
    inc d                                         ; $761B: $14
    ld a, $F1                                     ; $761C: $3E $F1
    ld d, $38                                     ; $761E: $16 $38
    ld sp, hl                                     ; $7620: $F9
    jr jr_00A_765B                                ; $7621: $18 $38

    ld bc, $381A                                  ; $7623: $01 $1A $38
    add hl, bc                                    ; $7626: $09
    inc e                                         ; $7627: $1C
    nop                                           ; $7628: $00
    nop                                           ; $7629: $00
    ld b, $60                                     ; $762A: $06 $60
    ld l, [hl]                                    ; $762C: $6E
    inc hl                                        ; $762D: $23
    ld [hl-], a                                   ; $762E: $32
    halt                                          ; $762F: $76
    inc c                                         ; $7630: $0C
    nop                                           ; $7631: $00
    inc c                                         ; $7632: $0C
    jr nc, jr_00A_7615                            ; $7633: $30 $E0

    nop                                           ; $7635: $00
    dec l                                         ; $7636: $2D

jr_00A_7637:
    add sp, $02                                   ; $7637: $E8 $02
    jr z, @-$0E                                   ; $7639: $28 $F0

    inc b                                         ; $763B: $04
    cpl                                           ; $763C: $2F
    ld hl, sp+$06                                 ; $763D: $F8 $06
    inc h                                         ; $763F: $24
    nop                                           ; $7640: $00
    ld [$081F], sp                                ; $7641: $08 $1F $08
    ld a, [bc]                                    ; $7644: $0A
    jr jr_00A_7637                                ; $7645: $18 $F0

    inc c                                         ; $7647: $0C
    rra                                           ; $7648: $1F
    ld hl, sp+$0E                                 ; $7649: $F8 $0E
    inc d                                         ; $764B: $14
    nop                                           ; $764C: $00
    db $10                                        ; $764D: $10
    rrca                                          ; $764E: $0F
    ld [$0F12], sp                                ; $764F: $08 $12 $0F
    ld a, [$1C14]                                 ; $7652: $FA $14 $1C
    add sp, $16                                   ; $7655: $E8 $16
    nop                                           ; $7657: $00
    nop                                           ; $7658: $00
    ld b, $E0                                     ; $7659: $06 $E0

jr_00A_765B:
    ld l, a                                       ; $765B: $6F
    inc hl                                        ; $765C: $23
    ld h, c                                       ; $765D: $61
    halt                                          ; $765E: $76
    inc c                                         ; $765F: $0C
    nop                                           ; $7660: $00
    db $10                                        ; $7661: $10
    dec hl                                        ; $7662: $2B
    rst RST_10                                    ; $7663: $D7
    nop                                           ; $7664: $00
    cpl                                           ; $7665: $2F
    rst RST_18                                    ; $7666: $DF
    ld [bc], a                                    ; $7667: $02
    inc hl                                        ; $7668: $23
    rst RST_20                                    ; $7669: $E7
    inc b                                         ; $766A: $04
    inc h                                         ; $766B: $24
    rst RST_28                                    ; $766C: $EF
    ld b, $12                                     ; $766D: $06 $12
    rst RST_30                                    ; $766F: $F7
    ld [$FF12], sp                                ; $7670: $08 $12 $FF
    ld a, [bc]                                    ; $7673: $0A
    ld [hl+], a                                   ; $7674: $22
    rst RST_30                                    ; $7675: $F7
    inc c                                         ; $7676: $0C
    ld [hl+], a                                   ; $7677: $22
    rst RST_38                                    ; $7678: $FF
    ld c, $19                                     ; $7679: $0E $19
    rlca                                          ; $767B: $07
    db $10                                        ; $767C: $10
    add hl, hl                                    ; $767D: $29
    rlca                                          ; $767E: $07
    ld [de], a                                    ; $767F: $12
    inc sp                                        ; $7680: $33
    rst RST_20                                    ; $7681: $E7

jr_00A_7682:
    inc d                                         ; $7682: $14
    inc [hl]                                      ; $7683: $34
    rst RST_28                                    ; $7684: $EF
    ld d, $32                                     ; $7685: $16 $32
    rst RST_30                                    ; $7687: $F7
    jr @+$34                                      ; $7688: $18 $32

    rst RST_38                                    ; $768A: $FF
    ld a, [de]                                    ; $768B: $1A
    ccf                                           ; $768C: $3F

jr_00A_768D:
    rst RST_18                                    ; $768D: $DF
    inc e                                         ; $768E: $1C
    dec sp                                        ; $768F: $3B
    rst RST_10                                    ; $7690: $D7
    ld e, $00                                     ; $7691: $1E $00
    nop                                           ; $7693: $00
    ld b, $E0                                     ; $7694: $06 $E0
    ld [hl], c                                    ; $7696: $71
    inc hl                                        ; $7697: $23

jr_00A_7698:
    sbc h                                         ; $7698: $9C
    halt                                          ; $7699: $76
    nop                                           ; $769A: $00
    nop                                           ; $769B: $00
    inc c                                         ; $769C: $0C
    ld h, $D8                                     ; $769D: $26 $D8
    nop                                           ; $769F: $00
    jr nz, jr_00A_7682                            ; $76A0: $20 $E0

    ld [bc], a                                    ; $76A2: $02
    jr nz, jr_00A_768D                            ; $76A3: $20 $E8

    inc b                                         ; $76A5: $04
    jr nz, jr_00A_7698                            ; $76A6: $20 $F0

    ld b, $30                                     ; $76A8: $06 $30
    db $DD                                        ; $76AA: $DD
    ld [$E530], sp                                ; $76AB: $08 $30 $E5
    ld a, [bc]                                    ; $76AE: $0A
    jr nc, @-$11                                  ; $76AF: $30 $ED

    inc c                                         ; $76B1: $0C
    jr nc, @-$09                                  ; $76B2: $30 $F5

    ld c, $24                                     ; $76B4: $0E $24
    ld hl, sp+$10                                 ; $76B6: $F8 $10
    jr z, jr_00A_76BA                             ; $76B8: $28 $00

jr_00A_76BA:
    ld [de], a                                    ; $76BA: $12

jr_00A_76BB:
    jr z, jr_00A_76C5                             ; $76BB: $28 $08

    inc d                                         ; $76BD: $14
    ld hl, $1610                                  ; $76BE: $21 $10 $16
    nop                                           ; $76C1: $00
    nop                                           ; $76C2: $00
    ld b, $60                                     ; $76C3: $06 $60

jr_00A_76C5:
    ld [hl], e                                    ; $76C5: $73

jr_00A_76C6:
    inc hl                                        ; $76C6: $23
    bit 6, [hl]                                   ; $76C7: $CB $76
    nop                                           ; $76C9: $00
    nop                                           ; $76CA: $00
    db $10                                        ; $76CB: $10
    dec h                                         ; $76CC: $25
    rst RST_10                                    ; $76CD: $D7

jr_00A_76CE:
    nop                                           ; $76CE: $00
    jr nz, @-$1F                                  ; $76CF: $20 $DF

    ld [bc], a                                    ; $76D1: $02
    jr nz, jr_00A_76BB                            ; $76D2: $20 $E7

    inc b                                         ; $76D4: $04
    jr nz, jr_00A_76C6                            ; $76D5: $20 $EF

    ld b, $20                                     ; $76D7: $06 $20

jr_00A_76D9:
    rst RST_30                                    ; $76D9: $F7
    ld [$FF20], sp                                ; $76DA: $08 $20 $FF
    ld a, [bc]                                    ; $76DD: $0A
    jr nz, jr_00A_76E7                            ; $76DE: $20 $07

    inc c                                         ; $76E0: $0C
    dec de                                        ; $76E1: $1B
    rrca                                          ; $76E2: $0F
    ld c, $30                                     ; $76E3: $0E $30
    db $DD                                        ; $76E5: $DD
    db $10                                        ; $76E6: $10

jr_00A_76E7:
    jr nc, jr_00A_76CE                            ; $76E7: $30 $E5

    ld [de], a                                    ; $76E9: $12
    jr nc, jr_00A_76D9                            ; $76EA: $30 $ED

    inc d                                         ; $76EC: $14
    jr nc, @-$09                                  ; $76ED: $30 $F5

    ld d, $30                                     ; $76EF: $16 $30
    db $FD                                        ; $76F1: $FD
    jr jr_00A_7724                                ; $76F2: $18 $30

    dec b                                         ; $76F4: $05
    ld a, [de]                                    ; $76F5: $1A
    dec hl                                        ; $76F6: $2B
    dec c                                         ; $76F7: $0D
    inc e                                         ; $76F8: $1C
    db $10                                        ; $76F9: $10
    db $ED                                        ; $76FA: $ED
    ld e, $00                                     ; $76FB: $1E $00
    nop                                           ; $76FD: $00
    ld b, $60                                     ; $76FE: $06 $60
    ld [hl], l                                    ; $7700: $75
    inc hl                                        ; $7701: $23
    ld b, $77                                     ; $7702: $06 $77
    nop                                           ; $7704: $00
    ld hl, sp+$10                                 ; $7705: $F8 $10
    inc hl                                        ; $7707: $23
    db $DB                                        ; $7708: $DB
    nop                                           ; $7709: $00
    add hl, hl                                    ; $770A: $29
    db $E3                                        ; $770B: $E3
    ld [bc], a                                    ; $770C: $02
    ld hl, $04EB                                  ; $770D: $21 $EB $04
    rra                                           ; $7710: $1F
    di                                            ; $7711: $F3
    ld b, $1F                                     ; $7712: $06 $1F
    ei                                            ; $7714: $FB
    ld [$0325], sp                                ; $7715: $08 $25 $03
    ld a, [bc]                                    ; $7718: $0A
    jr z, jr_00A_7726                             ; $7719: $28 $0B

    inc c                                         ; $771B: $0C
    add hl, sp                                    ; $771C: $39
    pop hl                                        ; $771D: $E1
    ld c, $31                                     ; $771E: $0E $31
    db $EB                                        ; $7720: $EB
    db $10                                        ; $7721: $10
    cpl                                           ; $7722: $2F
    di                                            ; $7723: $F3

jr_00A_7724:
    ld [de], a                                    ; $7724: $12
    cpl                                           ; $7725: $2F

jr_00A_7726:
    ei                                            ; $7726: $FB
    inc d                                         ; $7727: $14
    dec [hl]                                      ; $7728: $35
    inc bc                                        ; $7729: $03
    ld d, $3F                                     ; $772A: $16 $3F
    di                                            ; $772C: $F3
    jr jr_00A_776E                                ; $772D: $18 $3F

    ei                                            ; $772F: $FB
    ld a, [de]                                    ; $7730: $1A
    ld b, l                                       ; $7731: $45
    inc bc                                        ; $7732: $03
    inc e                                         ; $7733: $1C
    ld b, d                                       ; $7734: $42
    dec bc                                        ; $7735: $0B
    ld e, $00                                     ; $7736: $1E $00
    nop                                           ; $7738: $00
    ld b, $60                                     ; $7739: $06 $60
    ld [hl], a                                    ; $773B: $77
    inc hl                                        ; $773C: $23
    ld b, c                                       ; $773D: $41
    ld [hl], a                                    ; $773E: $77
    ld [bc], a                                    ; $773F: $02
    ld hl, sp+$10                                 ; $7740: $F8 $10
    inc hl                                        ; $7742: $23
    rst RST_10                                    ; $7743: $D7
    nop                                           ; $7744: $00
    ld e, $DF                                     ; $7745: $1E $DF
    ld [bc], a                                    ; $7747: $02
    ld a, [de]                                    ; $7748: $1A
    rst RST_20                                    ; $7749: $E7
    inc b                                         ; $774A: $04
    dec de                                        ; $774B: $1B
    rst RST_28                                    ; $774C: $EF
    ld b, $21                                     ; $774D: $06 $21
    rst RST_30                                    ; $774F: $F7
    ld [$FF28], sp                                ; $7750: $08 $28 $FF
    ld a, [bc]                                    ; $7753: $0A
    inc sp                                        ; $7754: $33
    rst RST_10                                    ; $7755: $D7
    inc c                                         ; $7756: $0C
    ld l, $DF                                     ; $7757: $2E $DF
    ld c, $2A                                     ; $7759: $0E $2A
    rst RST_20                                    ; $775B: $E7
    db $10                                        ; $775C: $10
    ld l, $EF                                     ; $775D: $2E $EF
    ld [de], a                                    ; $775F: $12
    ld sp, $14F7                                  ; $7760: $31 $F7 $14
    jr c, @+$01                                   ; $7763: $38 $FF

    ld d, $3E                                     ; $7765: $16 $3E
    pop af                                        ; $7767: $F1
    jr jr_00A_77A8                                ; $7768: $18 $3E

    rlca                                          ; $776A: $07
    ld a, [de]                                    ; $776B: $1A
    jr z, @+$09                                   ; $776C: $28 $07

jr_00A_776E:
    inc e                                         ; $776E: $1C
    ld b, a                                       ; $776F: $47
    rst RST_30                                    ; $7770: $F7
    ld e, $00                                     ; $7771: $1E $00
    ld bc, $6000                                  ; $7773: $01 $00 $60
    ld a, c                                       ; $7776: $79
    inc hl                                        ; $7777: $23
    ld a, h                                       ; $7778: $7C
    ld [hl], a                                    ; $7779: $77
    ld hl, sp+$00                                 ; $777A: $F8 $00
    inc bc                                        ; $777C: $03
    db $10                                        ; $777D: $10
    db $FC                                        ; $777E: $FC
    nop                                           ; $777F: $00
    db $10                                        ; $7780: $10
    inc b                                         ; $7781: $04
    ld [bc], a                                    ; $7782: $02
    db $10                                        ; $7783: $10
    inc c                                         ; $7784: $0C
    inc b                                         ; $7785: $04
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

jr_00A_77A8:
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
