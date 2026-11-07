; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

    sub c                                         ; $4000: $91
    ld b, [hl]                                    ; $4001: $46
    rst RST_38                                    ; $4002: $FF
    rst RST_38                                    ; $4003: $FF
    cp l                                          ; $4004: $BD
    ld b, [hl]                                    ; $4005: $46
    db $EB                                        ; $4006: $EB
    ld b, [hl]                                    ; $4007: $46
    sub c                                         ; $4008: $91
    ld b, [hl]                                    ; $4009: $46
    rst RST_38                                    ; $400A: $FF
    rst RST_38                                    ; $400B: $FF
    call nc, $FF44                                ; $400C: $D4 $44 $FF
    rst RST_38                                    ; $400F: $FF
    db $EC                                        ; $4010: $EC
    ld c, c                                       ; $4011: $49
    inc bc                                        ; $4012: $03
    ld c, d                                       ; $4013: $4A
    ld hl, $034A                                  ; $4014: $21 $4A $03
    ld c, d                                       ; $4017: $4A
    db $EC                                        ; $4018: $EC
    ld c, c                                       ; $4019: $49
    inc bc                                        ; $401A: $03
    ld c, d                                       ; $401B: $4A
    ld hl, $034A                                  ; $401C: $21 $4A $03
    ld c, d                                       ; $401F: $4A
    db $EC                                        ; $4020: $EC
    ld c, c                                       ; $4021: $49
    inc bc                                        ; $4022: $03
    ld c, d                                       ; $4023: $4A
    ld hl, $034A                                  ; $4024: $21 $4A $03
    ld c, d                                       ; $4027: $4A
    rst RST_38                                    ; $4028: $FF
    rst RST_38                                    ; $4029: $FF
    ret c                                         ; $402A: $D8

    ld b, e                                       ; $402B: $43
    rst RST_38                                    ; $402C: $FF
    rst RST_38                                    ; $402D: $FF
    rlca                                          ; $402E: $07
    ld b, h                                       ; $402F: $44
    dec l                                         ; $4030: $2D
    ld b, h                                       ; $4031: $44
    ccf                                           ; $4032: $3F
    ld b, h                                       ; $4033: $44
    rst RST_38                                    ; $4034: $FF
    rst RST_38                                    ; $4035: $FF
    ld l, e                                       ; $4036: $6B
    ld b, h                                       ; $4037: $44
    dec l                                         ; $4038: $2D
    ld b, h                                       ; $4039: $44
    rst RST_38                                    ; $403A: $FF
    rst RST_38                                    ; $403B: $FF
    adc [hl]                                      ; $403C: $8E
    ld b, h                                       ; $403D: $44
    rst RST_38                                    ; $403E: $FF
    rst RST_38                                    ; $403F: $FF
    or a                                          ; $4040: $B7
    ld b, h                                       ; $4041: $44
    rst RST_38                                    ; $4042: $FF
    rst RST_38                                    ; $4043: $FF
    call nc, $FF44                                ; $4044: $D4 $44 $FF
    rst RST_38                                    ; $4047: $FF
    or a                                          ; $4048: $B7
    ld b, h                                       ; $4049: $44
    rst RST_38                                    ; $404A: $FF
    rst RST_38                                    ; $404B: $FF
    rst RST_38                                    ; $404C: $FF
    rst RST_38                                    ; $404D: $FF
    or a                                          ; $404E: $B7
    ld b, h                                       ; $404F: $44
    rst RST_38                                    ; $4050: $FF
    rst RST_38                                    ; $4051: $FF
    call nc, $FF44                                ; $4052: $D4 $44 $FF
    rst RST_38                                    ; $4055: $FF
    or a                                          ; $4056: $B7
    ld b, h                                       ; $4057: $44
    rst RST_38                                    ; $4058: $FF
    rst RST_38                                    ; $4059: $FF
    adc [hl]                                      ; $405A: $8E
    ld b, h                                       ; $405B: $44
    rst RST_38                                    ; $405C: $FF
    rst RST_38                                    ; $405D: $FF
    rst RST_38                                    ; $405E: $FF
    rst RST_38                                    ; $405F: $FF
    db $FD                                        ; $4060: $FD
    ld b, h                                       ; $4061: $44
    rst RST_38                                    ; $4062: $FF
    rst RST_38                                    ; $4063: $FF
    rst RST_38                                    ; $4064: $FF
    rst RST_38                                    ; $4065: $FF
    db $FD                                        ; $4066: $FD
    ld b, h                                       ; $4067: $44
    rst RST_38                                    ; $4068: $FF
    rst RST_38                                    ; $4069: $FF
    dec l                                         ; $406A: $2D
    ld b, l                                       ; $406B: $45
    rst RST_38                                    ; $406C: $FF
    rst RST_38                                    ; $406D: $FF
    dec l                                         ; $406E: $2D
    ld b, l                                       ; $406F: $45
    rst RST_38                                    ; $4070: $FF
    rst RST_38                                    ; $4071: $FF
    ld d, [hl]                                    ; $4072: $56
    ld b, l                                       ; $4073: $45
    rst RST_38                                    ; $4074: $FF
    rst RST_38                                    ; $4075: $FF
    ld d, [hl]                                    ; $4076: $56
    ld b, l                                       ; $4077: $45
    rst RST_38                                    ; $4078: $FF
    rst RST_38                                    ; $4079: $FF
    dec l                                         ; $407A: $2D
    ld b, l                                       ; $407B: $45
    rst RST_38                                    ; $407C: $FF
    rst RST_38                                    ; $407D: $FF
    dec l                                         ; $407E: $2D
    ld b, l                                       ; $407F: $45
    rst RST_38                                    ; $4080: $FF
    rst RST_38                                    ; $4081: $FF
    db $FD                                        ; $4082: $FD
    ld b, h                                       ; $4083: $44
    rst RST_38                                    ; $4084: $FF
    rst RST_38                                    ; $4085: $FF
    rst RST_38                                    ; $4086: $FF
    rst RST_38                                    ; $4087: $FF
    db $FD                                        ; $4088: $FD
    ld b, h                                       ; $4089: $44
    rst RST_38                                    ; $408A: $FF
    rst RST_38                                    ; $408B: $FF
    add e                                         ; $408C: $83
    ld b, l                                       ; $408D: $45
    rst RST_38                                    ; $408E: $FF
    rst RST_38                                    ; $408F: $FF
    sbc $45                                       ; $4090: $DE $45
    rst RST_38                                    ; $4092: $FF
    rst RST_38                                    ; $4093: $FF
    xor l                                         ; $4094: $AD
    ld b, l                                       ; $4095: $45
    rst RST_38                                    ; $4096: $FF
    rst RST_38                                    ; $4097: $FF
    call nc, $FF45                                ; $4098: $D4 $45 $FF
    rst RST_38                                    ; $409B: $FF
    or a                                          ; $409C: $B7
    ld b, l                                       ; $409D: $45
    rst RST_38                                    ; $409E: $FF
    rst RST_38                                    ; $409F: $FF
    ei                                            ; $40A0: $FB
    ld b, l                                       ; $40A1: $45
    rst RST_38                                    ; $40A2: $FF
    rst RST_38                                    ; $40A3: $FF
    db $FD                                        ; $40A4: $FD
    ld b, h                                       ; $40A5: $44
    rst RST_38                                    ; $40A6: $FF
    rst RST_38                                    ; $40A7: $FF
    rst RST_38                                    ; $40A8: $FF
    rst RST_38                                    ; $40A9: $FF
    db $FD                                        ; $40AA: $FD
    ld b, h                                       ; $40AB: $44
    rst RST_38                                    ; $40AC: $FF
    rst RST_38                                    ; $40AD: $FF
    ei                                            ; $40AE: $FB
    ld b, l                                       ; $40AF: $45
    rst RST_38                                    ; $40B0: $FF
    rst RST_38                                    ; $40B1: $FF
    or a                                          ; $40B2: $B7
    ld b, l                                       ; $40B3: $45
    rst RST_38                                    ; $40B4: $FF
    rst RST_38                                    ; $40B5: $FF
    call nc, $FF45                                ; $40B6: $D4 $45 $FF
    rst RST_38                                    ; $40B9: $FF
    xor l                                         ; $40BA: $AD
    ld b, l                                       ; $40BB: $45
    rst RST_38                                    ; $40BC: $FF
    rst RST_38                                    ; $40BD: $FF
    sbc $45                                       ; $40BE: $DE $45
    rst RST_38                                    ; $40C0: $FF
    rst RST_38                                    ; $40C1: $FF
    dec l                                         ; $40C2: $2D
    ld b, l                                       ; $40C3: $45
    rst RST_38                                    ; $40C4: $FF
    rst RST_38                                    ; $40C5: $FF
    db $FD                                        ; $40C6: $FD
    ld b, h                                       ; $40C7: $44
    rst RST_38                                    ; $40C8: $FF
    rst RST_38                                    ; $40C9: $FF
    rst RST_38                                    ; $40CA: $FF
    rst RST_38                                    ; $40CB: $FF
    ld hl, $FF46                                  ; $40CC: $21 $46 $FF
    rst RST_38                                    ; $40CF: $FF
    rst RST_38                                    ; $40D0: $FF
    rst RST_38                                    ; $40D1: $FF
    ld b, a                                       ; $40D2: $47
    ld b, [hl]                                    ; $40D3: $46
    rst RST_38                                    ; $40D4: $FF
    rst RST_38                                    ; $40D5: $FF
    rst RST_38                                    ; $40D6: $FF
    rst RST_38                                    ; $40D7: $FF
    ld h, a                                       ; $40D8: $67
    ld b, [hl]                                    ; $40D9: $46
    rst RST_38                                    ; $40DA: $FF
    rst RST_38                                    ; $40DB: $FF
    db $FD                                        ; $40DC: $FD
    ld b, h                                       ; $40DD: $44
    rst RST_38                                    ; $40DE: $FF
    rst RST_38                                    ; $40DF: $FF
    rst RST_38                                    ; $40E0: $FF
    rst RST_38                                    ; $40E1: $FF
    sub c                                         ; $40E2: $91
    ld b, [hl]                                    ; $40E3: $46
    rst RST_38                                    ; $40E4: $FF
    rst RST_38                                    ; $40E5: $FF
    cp l                                          ; $40E6: $BD
    ld b, [hl]                                    ; $40E7: $46
    db $EB                                        ; $40E8: $EB
    ld b, [hl]                                    ; $40E9: $46
    sub c                                         ; $40EA: $91
    ld b, [hl]                                    ; $40EB: $46
    rst RST_38                                    ; $40EC: $FF
    rst RST_38                                    ; $40ED: $FF
    rst RST_38                                    ; $40EE: $FF
    rst RST_38                                    ; $40EF: $FF
    sub c                                         ; $40F0: $91
    ld b, [hl]                                    ; $40F1: $46
    rst RST_38                                    ; $40F2: $FF
    rst RST_38                                    ; $40F3: $FF
    ld b, $47                                     ; $40F4: $06 $47
    db $EB                                        ; $40F6: $EB
    ld b, [hl]                                    ; $40F7: $46
    sub c                                         ; $40F8: $91
    ld b, [hl]                                    ; $40F9: $46
    rst RST_38                                    ; $40FA: $FF
    rst RST_38                                    ; $40FB: $FF
    rst RST_38                                    ; $40FC: $FF
    rst RST_38                                    ; $40FD: $FF
    jr nz, jr_008_4147                            ; $40FE: $20 $47

    rst RST_38                                    ; $4100: $FF
    rst RST_38                                    ; $4101: $FF
    ld c, d                                       ; $4102: $4A
    ld b, a                                       ; $4103: $47
    rst RST_38                                    ; $4104: $FF
    rst RST_38                                    ; $4105: $FF
    ld a, l                                       ; $4106: $7D
    ld b, a                                       ; $4107: $47
    sbc d                                         ; $4108: $9A
    ld b, a                                       ; $4109: $47
    or d                                          ; $410A: $B2
    ld b, a                                       ; $410B: $47
    sbc d                                         ; $410C: $9A
    ld b, a                                       ; $410D: $47
    jr nz, jr_008_4157                            ; $410E: $20 $47

    rst RST_38                                    ; $4110: $FF
    rst RST_38                                    ; $4111: $FF
    rst RST_38                                    ; $4112: $FF
    rst RST_38                                    ; $4113: $FF
    ret nc                                        ; $4114: $D0

    ld b, a                                       ; $4115: $47
    rst RST_38                                    ; $4116: $FF
    rst RST_38                                    ; $4117: $FF
    di                                            ; $4118: $F3
    ld b, a                                       ; $4119: $47
    rst RST_38                                    ; $411A: $FF
    rst RST_38                                    ; $411B: $FF
    ret nc                                        ; $411C: $D0

    ld b, a                                       ; $411D: $47
    rst RST_38                                    ; $411E: $FF
    rst RST_38                                    ; $411F: $FF
    rst RST_38                                    ; $4120: $FF
    rst RST_38                                    ; $4121: $FF
    inc e                                         ; $4122: $1C
    ld c, b                                       ; $4123: $48
    rst RST_38                                    ; $4124: $FF
    rst RST_38                                    ; $4125: $FF
    ccf                                           ; $4126: $3F
    ld c, b                                       ; $4127: $48
    rst RST_38                                    ; $4128: $FF
    rst RST_38                                    ; $4129: $FF
    ld b, a                                       ; $412A: $47
    ld b, [hl]                                    ; $412B: $46
    rst RST_38                                    ; $412C: $FF
    rst RST_38                                    ; $412D: $FF
    rst RST_38                                    ; $412E: $FF
    rst RST_38                                    ; $412F: $FF
    ld l, [hl]                                    ; $4130: $6E
    ld c, b                                       ; $4131: $48
    rst RST_38                                    ; $4132: $FF
    rst RST_38                                    ; $4133: $FF
    ld l, [hl]                                    ; $4134: $6E
    ld c, b                                       ; $4135: $48
    rst RST_38                                    ; $4136: $FF
    rst RST_38                                    ; $4137: $FF
    db $FD                                        ; $4138: $FD
    ld b, h                                       ; $4139: $44
    rst RST_38                                    ; $413A: $FF
    rst RST_38                                    ; $413B: $FF
    rst RST_38                                    ; $413C: $FF
    rst RST_38                                    ; $413D: $FF
    sub a                                         ; $413E: $97
    ld c, b                                       ; $413F: $48
    rst RST_38                                    ; $4140: $FF
    rst RST_38                                    ; $4141: $FF
    ret nz                                        ; $4142: $C0

    ld c, b                                       ; $4143: $48
    rst RST_38                                    ; $4144: $FF
    rst RST_38                                    ; $4145: $FF
    ret nz                                        ; $4146: $C0

jr_008_4147:
    ld c, b                                       ; $4147: $48
    rst RST_38                                    ; $4148: $FF
    rst RST_38                                    ; $4149: $FF
    ret nz                                        ; $414A: $C0

    ld c, b                                       ; $414B: $48
    rst RST_38                                    ; $414C: $FF
    rst RST_38                                    ; $414D: $FF
    db $FD                                        ; $414E: $FD
    ld b, h                                       ; $414F: $44
    rst RST_38                                    ; $4150: $FF
    rst RST_38                                    ; $4151: $FF
    rst RST_38                                    ; $4152: $FF
    rst RST_38                                    ; $4153: $FF
    ld h, a                                       ; $4154: $67
    ld b, [hl]                                    ; $4155: $46
    rst RST_38                                    ; $4156: $FF

jr_008_4157:
    rst RST_38                                    ; $4157: $FF
    jp hl                                         ; $4158: $E9


    ld c, b                                       ; $4159: $48
    rst RST_38                                    ; $415A: $FF
    rst RST_38                                    ; $415B: $FF
    jp hl                                         ; $415C: $E9


    ld c, b                                       ; $415D: $48
    rst RST_38                                    ; $415E: $FF
    rst RST_38                                    ; $415F: $FF
    jp hl                                         ; $4160: $E9


    ld c, b                                       ; $4161: $48
    rst RST_38                                    ; $4162: $FF
    rst RST_38                                    ; $4163: $FF
    db $FD                                        ; $4164: $FD
    ld b, h                                       ; $4165: $44
    rst RST_38                                    ; $4166: $FF
    rst RST_38                                    ; $4167: $FF
    rst RST_38                                    ; $4168: $FF
    rst RST_38                                    ; $4169: $FF
    reti                                          ; $416A: $D9


    ld c, e                                       ; $416B: $4B
    rst RST_38                                    ; $416C: $FF
    rst RST_38                                    ; $416D: $FF
    cp h                                          ; $416E: $BC
    ld b, a                                       ; $416F: $47
    sbc d                                         ; $4170: $9A
    ld b, a                                       ; $4171: $47
    ld d, h                                       ; $4172: $54
    ld b, a                                       ; $4173: $47
    rst RST_38                                    ; $4174: $FF
    rst RST_38                                    ; $4175: $FF
    ld a, [hl+]                                   ; $4176: $2A
    ld b, a                                       ; $4177: $47
    rst RST_38                                    ; $4178: $FF
    rst RST_38                                    ; $4179: $FF
    db $FD                                        ; $417A: $FD
    ld b, h                                       ; $417B: $44
    rst RST_38                                    ; $417C: $FF
    rst RST_38                                    ; $417D: $FF
    rst RST_38                                    ; $417E: $FF
    rst RST_38                                    ; $417F: $FF
    rrca                                          ; $4180: $0F
    ld c, c                                       ; $4181: $49
    rst RST_38                                    ; $4182: $FF
    rst RST_38                                    ; $4183: $FF
    db $FD                                        ; $4184: $FD
    ld b, h                                       ; $4185: $44
    rst RST_38                                    ; $4186: $FF
    rst RST_38                                    ; $4187: $FF
    rst RST_38                                    ; $4188: $FF
    rst RST_38                                    ; $4189: $FF
    ld h, a                                       ; $418A: $67
    ld b, [hl]                                    ; $418B: $46
    rst RST_38                                    ; $418C: $FF
    rst RST_38                                    ; $418D: $FF
    ld h, a                                       ; $418E: $67
    ld b, [hl]                                    ; $418F: $46
    rst RST_38                                    ; $4190: $FF
    rst RST_38                                    ; $4191: $FF
    db $FD                                        ; $4192: $FD
    ld b, h                                       ; $4193: $44
    rst RST_38                                    ; $4194: $FF
    rst RST_38                                    ; $4195: $FF
    rst RST_38                                    ; $4196: $FF
    rst RST_38                                    ; $4197: $FF
    and d                                         ; $4198: $A2
    ld c, c                                       ; $4199: $49
    rst RST_38                                    ; $419A: $FF
    rst RST_38                                    ; $419B: $FF
    ld h, h                                       ; $419C: $64
    ld c, c                                       ; $419D: $49
    adc $49                                       ; $419E: $CE $49
    rst RST_38                                    ; $41A0: $FF
    rst RST_38                                    ; $41A1: $FF
    db $EC                                        ; $41A2: $EC
    ld c, c                                       ; $41A3: $49
    inc bc                                        ; $41A4: $03
    ld c, d                                       ; $41A5: $4A
    ld hl, $034A                                  ; $41A6: $21 $4A $03
    ld c, d                                       ; $41A9: $4A
    db $EC                                        ; $41AA: $EC
    ld c, c                                       ; $41AB: $49
    inc bc                                        ; $41AC: $03
    ld c, d                                       ; $41AD: $4A
    jr c, jr_008_41FA                             ; $41AE: $38 $4A

    inc bc                                        ; $41B0: $03
    ld c, d                                       ; $41B1: $4A
    db $EC                                        ; $41B2: $EC
    ld c, c                                       ; $41B3: $49
    inc bc                                        ; $41B4: $03
    ld c, d                                       ; $41B5: $4A
    rst RST_38                                    ; $41B6: $FF
    rst RST_38                                    ; $41B7: $FF
    ld c, a                                       ; $41B8: $4F
    ld c, d                                       ; $41B9: $4A
    rst RST_38                                    ; $41BA: $FF
    rst RST_38                                    ; $41BB: $FF
    ld [hl], l                                    ; $41BC: $75
    ld c, d                                       ; $41BD: $4A
    rst RST_38                                    ; $41BE: $FF
    rst RST_38                                    ; $41BF: $FF
    and h                                         ; $41C0: $A4
    ld c, d                                       ; $41C1: $4A
    rst RST_38                                    ; $41C2: $FF
    rst RST_38                                    ; $41C3: $FF
    rst RST_38                                    ; $41C4: $FF
    rst RST_38                                    ; $41C5: $FF
    and h                                         ; $41C6: $A4
    ld c, d                                       ; $41C7: $4A
    rst RST_38                                    ; $41C8: $FF
    rst RST_38                                    ; $41C9: $FF
    ld [hl], l                                    ; $41CA: $75
    ld c, d                                       ; $41CB: $4A
    rst RST_38                                    ; $41CC: $FF
    rst RST_38                                    ; $41CD: $FF
    ld c, a                                       ; $41CE: $4F
    ld c, d                                       ; $41CF: $4A
    rst RST_38                                    ; $41D0: $FF
    rst RST_38                                    ; $41D1: $FF
    rst RST_38                                    ; $41D2: $FF
    rst RST_38                                    ; $41D3: $FF
    dec [hl]                                      ; $41D4: $35
    ld c, c                                       ; $41D5: $49
    rst RST_38                                    ; $41D6: $FF
    rst RST_38                                    ; $41D7: $FF
    db $D3                                        ; $41D8: $D3
    ld c, d                                       ; $41D9: $4A
    rst RST_38                                    ; $41DA: $FF
    rst RST_38                                    ; $41DB: $FF
    ld h, h                                       ; $41DC: $64
    ld c, c                                       ; $41DD: $49
    adc $49                                       ; $41DE: $CE $49
    rst RST_38                                    ; $41E0: $FF
    rst RST_38                                    ; $41E1: $FF
    or a                                          ; $41E2: $B7
    ld b, h                                       ; $41E3: $44
    rst RST_38                                    ; $41E4: $FF
    rst RST_38                                    ; $41E5: $FF
    ld [bc], a                                    ; $41E6: $02
    ld c, e                                       ; $41E7: $4B
    ld [hl+], a                                   ; $41E8: $22
    ld c, e                                       ; $41E9: $4B
    inc [hl]                                      ; $41EA: $34
    ld c, e                                       ; $41EB: $4B
    ld [hl+], a                                   ; $41EC: $22
    ld c, e                                       ; $41ED: $4B
    ld d, c                                       ; $41EE: $51
    ld c, e                                       ; $41EF: $4B
    ld [hl+], a                                   ; $41F0: $22
    ld c, e                                       ; $41F1: $4B
    ld [hl], c                                    ; $41F2: $71
    ld c, e                                       ; $41F3: $4B
    ld [hl+], a                                   ; $41F4: $22
    ld c, e                                       ; $41F5: $4B
    adc [hl]                                      ; $41F6: $8E
    ld c, e                                       ; $41F7: $4B
    or l                                          ; $41F8: $B5
    ld c, e                                       ; $41F9: $4B

jr_008_41FA:
    sbc b                                         ; $41FA: $98
    ld c, e                                       ; $41FB: $4B
    or l                                          ; $41FC: $B5
    ld c, e                                       ; $41FD: $4B
    rst RST_38                                    ; $41FE: $FF
    rst RST_38                                    ; $41FF: $FF
    or a                                          ; $4200: $B7
    ld b, h                                       ; $4201: $44
    rst RST_38                                    ; $4202: $FF
    rst RST_38                                    ; $4203: $FF
    ld [bc], a                                    ; $4204: $02
    ld c, e                                       ; $4205: $4B
    ld [hl+], a                                   ; $4206: $22
    ld c, e                                       ; $4207: $4B
    inc [hl]                                      ; $4208: $34
    ld c, e                                       ; $4209: $4B
    ld [hl+], a                                   ; $420A: $22
    ld c, e                                       ; $420B: $4B
    ld d, c                                       ; $420C: $51
    ld c, e                                       ; $420D: $4B
    ld [hl+], a                                   ; $420E: $22
    ld c, e                                       ; $420F: $4B
    ld [hl], c                                    ; $4210: $71
    ld c, e                                       ; $4211: $4B
    ld [hl+], a                                   ; $4212: $22
    ld c, e                                       ; $4213: $4B
    sbc b                                         ; $4214: $98
    ld c, e                                       ; $4215: $4B
    or l                                          ; $4216: $B5
    ld c, e                                       ; $4217: $4B
    rst RST_38                                    ; $4218: $FF
    rst RST_38                                    ; $4219: $FF
    reti                                          ; $421A: $D9


    ld c, e                                       ; $421B: $4B
    rst RST_38                                    ; $421C: $FF
    rst RST_38                                    ; $421D: $FF
    rst RST_38                                    ; $421E: $FF
    rst RST_38                                    ; $421F: $FF
    reti                                          ; $4220: $D9


    ld c, e                                       ; $4221: $4B
    rst RST_38                                    ; $4222: $FF
    rst RST_38                                    ; $4223: $FF
    rst RST_38                                    ; $4224: $FF
    rst RST_38                                    ; $4225: $FF
    ret c                                         ; $4226: $D8

    ld b, e                                       ; $4227: $43
    rst RST_38                                    ; $4228: $FF
    rst RST_38                                    ; $4229: $FF
    reti                                          ; $422A: $D9


    ld c, e                                       ; $422B: $4B
    rst RST_38                                    ; $422C: $FF
    rst RST_38                                    ; $422D: $FF
    rst RST_38                                    ; $422E: $FF
    ld c, e                                       ; $422F: $4B
    rst RST_38                                    ; $4230: $FF
    rst RST_38                                    ; $4231: $FF
    rst RST_38                                    ; $4232: $FF
    rst RST_38                                    ; $4233: $FF
    ld b, b                                       ; $4234: $40
    ld c, h                                       ; $4235: $4C
    rst RST_38                                    ; $4236: $FF
    rst RST_38                                    ; $4237: $FF
    rst RST_38                                    ; $4238: $FF
    rst RST_38                                    ; $4239: $FF
    reti                                          ; $423A: $D9


    ld c, e                                       ; $423B: $4B
    rst RST_38                                    ; $423C: $FF
    rst RST_38                                    ; $423D: $FF
    or a                                          ; $423E: $B7
    ld b, l                                       ; $423F: $45
    rst RST_38                                    ; $4240: $FF
    rst RST_38                                    ; $4241: $FF
    call nc, $FF45                                ; $4242: $D4 $45 $FF
    rst RST_38                                    ; $4245: $FF
    xor l                                         ; $4246: $AD
    ld b, l                                       ; $4247: $45
    rst RST_38                                    ; $4248: $FF
    rst RST_38                                    ; $4249: $FF
    sbc $45                                       ; $424A: $DE $45
    rst RST_38                                    ; $424C: $FF
    rst RST_38                                    ; $424D: $FF
    dec l                                         ; $424E: $2D
    ld b, l                                       ; $424F: $45
    rst RST_38                                    ; $4250: $FF
    rst RST_38                                    ; $4251: $FF
    db $FD                                        ; $4252: $FD
    ld b, h                                       ; $4253: $44
    rst RST_38                                    ; $4254: $FF
    rst RST_38                                    ; $4255: $FF
    rst RST_38                                    ; $4256: $FF
    rst RST_38                                    ; $4257: $FF
    reti                                          ; $4258: $D9


    ld c, e                                       ; $4259: $4B
    rst RST_38                                    ; $425A: $FF
    rst RST_38                                    ; $425B: $FF
    ld h, [hl]                                    ; $425C: $66
    ld c, h                                       ; $425D: $4C
    rst RST_38                                    ; $425E: $FF
    rst RST_38                                    ; $425F: $FF
    sbc c                                         ; $4260: $99
    ld c, h                                       ; $4261: $4C
    rst RST_38                                    ; $4262: $FF
    rst RST_38                                    ; $4263: $FF
    ld h, [hl]                                    ; $4264: $66
    ld c, h                                       ; $4265: $4C
    rst RST_38                                    ; $4266: $FF
    rst RST_38                                    ; $4267: $FF
    sbc c                                         ; $4268: $99
    ld c, h                                       ; $4269: $4C
    rst RST_38                                    ; $426A: $FF
    rst RST_38                                    ; $426B: $FF
    rst RST_38                                    ; $426C: $FF
    rst RST_38                                    ; $426D: $FF
    rst RST_38                                    ; $426E: $FF
    ld c, e                                       ; $426F: $4B
    rst RST_38                                    ; $4270: $FF
    rst RST_38                                    ; $4271: $FF
    add hl, bc                                    ; $4272: $09
    ld c, h                                       ; $4273: $4C
    rst RST_38                                    ; $4274: $FF
    rst RST_38                                    ; $4275: $FF
    inc de                                        ; $4276: $13
    ld c, h                                       ; $4277: $4C
    rst RST_38                                    ; $4278: $FF
    rst RST_38                                    ; $4279: $FF
    dec e                                         ; $427A: $1D
    ld c, h                                       ; $427B: $4C
    rst RST_38                                    ; $427C: $FF
    rst RST_38                                    ; $427D: $FF
    dec e                                         ; $427E: $1D
    ld c, h                                       ; $427F: $4C
    rst RST_38                                    ; $4280: $FF
    rst RST_38                                    ; $4281: $FF
    ld h, [hl]                                    ; $4282: $66
    ld c, h                                       ; $4283: $4C
    rst RST_38                                    ; $4284: $FF
    rst RST_38                                    ; $4285: $FF
    sbc c                                         ; $4286: $99
    ld c, h                                       ; $4287: $4C
    rst RST_38                                    ; $4288: $FF
    rst RST_38                                    ; $4289: $FF
    rst RST_38                                    ; $428A: $FF
    rst RST_38                                    ; $428B: $FF
    reti                                          ; $428C: $D9


    ld c, e                                       ; $428D: $4B
    rst RST_38                                    ; $428E: $FF
    rst RST_38                                    ; $428F: $FF
    ld h, [hl]                                    ; $4290: $66
    ld c, h                                       ; $4291: $4C
    rst RST_38                                    ; $4292: $FF
    rst RST_38                                    ; $4293: $FF
    sbc c                                         ; $4294: $99
    ld c, h                                       ; $4295: $4C
    rst RST_38                                    ; $4296: $FF
    rst RST_38                                    ; $4297: $FF
    rst RST_38                                    ; $4298: $FF
    rst RST_38                                    ; $4299: $FF
    ld [hl], b                                    ; $429A: $70
    ld c, h                                       ; $429B: $4C
    rst RST_38                                    ; $429C: $FF
    rst RST_38                                    ; $429D: $FF
    rst RST_38                                    ; $429E: $FF
    rst RST_38                                    ; $429F: $FF
    db $FD                                        ; $42A0: $FD
    ld b, h                                       ; $42A1: $44
    rst RST_38                                    ; $42A2: $FF
    rst RST_38                                    ; $42A3: $FF
    db $FD                                        ; $42A4: $FD
    ld b, h                                       ; $42A5: $44
    rst RST_38                                    ; $42A6: $FF
    rst RST_38                                    ; $42A7: $FF
    rst RST_38                                    ; $42A8: $FF
    rst RST_38                                    ; $42A9: $FF
    ret c                                         ; $42AA: $D8

    ld b, e                                       ; $42AB: $43
    rst RST_38                                    ; $42AC: $FF
    rst RST_38                                    ; $42AD: $FF
    rst RST_00                                    ; $42AE: $C7
    ld b, [hl]                                    ; $42AF: $46
    db $EB                                        ; $42B0: $EB
    ld b, [hl]                                    ; $42B1: $46
    ld l, l                                       ; $42B2: $6D
    ld c, l                                       ; $42B3: $4D
    rst RST_38                                    ; $42B4: $FF
    rst RST_38                                    ; $42B5: $FF
    ret c                                         ; $42B6: $D8

    ld b, e                                       ; $42B7: $43
    rst RST_38                                    ; $42B8: $FF
    rst RST_38                                    ; $42B9: $FF
    rst RST_38                                    ; $42BA: $FF
    rst RST_38                                    ; $42BB: $FF
    ret c                                         ; $42BC: $D8

    ld b, e                                       ; $42BD: $43
    rst RST_38                                    ; $42BE: $FF
    rst RST_38                                    ; $42BF: $FF
    pop de                                        ; $42C0: $D1
    ld b, [hl]                                    ; $42C1: $46
    db $EB                                        ; $42C2: $EB
    ld b, [hl]                                    ; $42C3: $46
    ld l, l                                       ; $42C4: $6D
    ld c, l                                       ; $42C5: $4D
    rst RST_38                                    ; $42C6: $FF
    rst RST_38                                    ; $42C7: $FF
    ld l, l                                       ; $42C8: $6D
    ld c, l                                       ; $42C9: $4D
    rst RST_38                                    ; $42CA: $FF
    rst RST_38                                    ; $42CB: $FF
    ret c                                         ; $42CC: $D8

    ld b, e                                       ; $42CD: $43
    rst RST_38                                    ; $42CE: $FF
    rst RST_38                                    ; $42CF: $FF
    rst RST_38                                    ; $42D0: $FF
    rst RST_38                                    ; $42D1: $FF
    or [hl]                                       ; $42D2: $B6
    ld c, h                                       ; $42D3: $4C
    rst RST_38                                    ; $42D4: $FF
    rst RST_38                                    ; $42D5: $FF
    db $E3                                        ; $42D6: $E3
    ld c, h                                       ; $42D7: $4C
    inc b                                         ; $42D8: $04
    ld c, l                                       ; $42D9: $4D
    reti                                          ; $42DA: $D9


    ld c, h                                       ; $42DB: $4C
    ld sp, $D94D                                  ; $42DC: $31 $4D $D9
    ld c, h                                       ; $42DF: $4C
    ld d, d                                       ; $42E0: $52
    ld c, l                                       ; $42E1: $4D
    ld l, l                                       ; $42E2: $6D
    ld c, l                                       ; $42E3: $4D
    rst RST_38                                    ; $42E4: $FF
    rst RST_38                                    ; $42E5: $FF
    rst RST_38                                    ; $42E6: $FF
    rst RST_38                                    ; $42E7: $FF
    sbc c                                         ; $42E8: $99
    ld c, l                                       ; $42E9: $4D
    rst RST_38                                    ; $42EA: $FF
    rst RST_38                                    ; $42EB: $FF
    cp a                                          ; $42EC: $BF
    ld c, l                                       ; $42ED: $4D
    rst RST_38                                    ; $42EE: $FF
    rst RST_38                                    ; $42EF: $FF
    db $EB                                        ; $42F0: $EB
    ld c, l                                       ; $42F1: $4D
    rst RST_38                                    ; $42F2: $FF
    rst RST_38                                    ; $42F3: $FF
    sbc c                                         ; $42F4: $99
    ld c, l                                       ; $42F5: $4D
    rst RST_38                                    ; $42F6: $FF
    rst RST_38                                    ; $42F7: $FF
    rst RST_38                                    ; $42F8: $FF
    rst RST_38                                    ; $42F9: $FF
    cp a                                          ; $42FA: $BF
    ld c, l                                       ; $42FB: $4D
    rst RST_38                                    ; $42FC: $FF
    rst RST_38                                    ; $42FD: $FF
    ld h, $4E                                     ; $42FE: $26 $4E
    rst RST_38                                    ; $4300: $FF
    rst RST_38                                    ; $4301: $FF
    ld c, c                                       ; $4302: $49
    ld c, [hl]                                    ; $4303: $4E
    rst RST_38                                    ; $4304: $FF
    rst RST_38                                    ; $4305: $FF
    db $FD                                        ; $4306: $FD
    ld b, h                                       ; $4307: $44
    rst RST_38                                    ; $4308: $FF
    rst RST_38                                    ; $4309: $FF
    rst RST_38                                    ; $430A: $FF
    rst RST_38                                    ; $430B: $FF
    or [hl]                                       ; $430C: $B6
    ld c, h                                       ; $430D: $4C
    rst RST_38                                    ; $430E: $FF
    rst RST_38                                    ; $430F: $FF
    ld l, a                                       ; $4310: $6F
    ld c, [hl]                                    ; $4311: $4E
    adc a                                         ; $4312: $8F
    ld c, [hl]                                    ; $4313: $4E
    ld l, a                                       ; $4314: $6F
    ld c, [hl]                                    ; $4315: $4E
    xor d                                         ; $4316: $AA
    ld c, [hl]                                    ; $4317: $4E
    rst RST_38                                    ; $4318: $FF
    rst RST_38                                    ; $4319: $FF
    dec [hl]                                      ; $431A: $35
    ld c, c                                       ; $431B: $49
    rst RST_38                                    ; $431C: $FF
    rst RST_38                                    ; $431D: $FF
    ld h, h                                       ; $431E: $64
    ld c, c                                       ; $431F: $49
    ld a, b                                       ; $4320: $78
    ld c, c                                       ; $4321: $49
    ld h, h                                       ; $4322: $64
    ld c, c                                       ; $4323: $49
    adc $49                                       ; $4324: $CE $49
    or [hl]                                       ; $4326: $B6
    ld c, h                                       ; $4327: $4C
    rst RST_38                                    ; $4328: $FF
    rst RST_38                                    ; $4329: $FF
    ld h, $4E                                     ; $432A: $26 $4E
    rst RST_38                                    ; $432C: $FF
    rst RST_38                                    ; $432D: $FF
    ld c, c                                       ; $432E: $49
    ld c, [hl]                                    ; $432F: $4E
    rst RST_38                                    ; $4330: $FF
    rst RST_38                                    ; $4331: $FF
    rlca                                          ; $4332: $07
    ld b, l                                       ; $4333: $45
    rst RST_38                                    ; $4334: $FF
    rst RST_38                                    ; $4335: $FF
    ei                                            ; $4336: $FB
    ld b, l                                       ; $4337: $45
    rst RST_38                                    ; $4338: $FF
    rst RST_38                                    ; $4339: $FF
    or a                                          ; $433A: $B7
    ld b, l                                       ; $433B: $45
    rst RST_38                                    ; $433C: $FF
    rst RST_38                                    ; $433D: $FF
    call nc, $FF45                                ; $433E: $D4 $45 $FF
    rst RST_38                                    ; $4341: $FF
    ld b, e                                       ; $4342: $43
    ld c, a                                       ; $4343: $4F
    rst RST_38                                    ; $4344: $FF
    rst RST_38                                    ; $4345: $FF
    ld b, e                                       ; $4346: $43
    ld c, a                                       ; $4347: $4F
    rst RST_38                                    ; $4348: $FF
    rst RST_38                                    ; $4349: $FF
    jp c, $C54E                                   ; $434A: $DA $4E $C5

    ld c, [hl]                                    ; $434D: $4E
    db $E4                                        ; $434E: $E4
    ld c, [hl]                                    ; $434F: $4E
    ld a, [bc]                                    ; $4350: $0A
    ld c, a                                       ; $4351: $4F
    db $E4                                        ; $4352: $E4
    ld c, [hl]                                    ; $4353: $4E
    jr z, jr_008_43A5                             ; $4354: $28 $4F

    jp c, $C54E                                   ; $4356: $DA $4E $C5

    ld c, [hl]                                    ; $4359: $4E
    ld b, e                                       ; $435A: $43
    ld c, a                                       ; $435B: $4F
    rst RST_38                                    ; $435C: $FF
    rst RST_38                                    ; $435D: $FF
    xor l                                         ; $435E: $AD
    ld b, l                                       ; $435F: $45
    rst RST_38                                    ; $4360: $FF
    rst RST_38                                    ; $4361: $FF
    call nc, $FF45                                ; $4362: $D4 $45 $FF
    rst RST_38                                    ; $4365: $FF
    or a                                          ; $4366: $B7
    ld b, l                                       ; $4367: $45
    rst RST_38                                    ; $4368: $FF
    rst RST_38                                    ; $4369: $FF
    db $FD                                        ; $436A: $FD
    ld b, h                                       ; $436B: $44
    rst RST_38                                    ; $436C: $FF
    rst RST_38                                    ; $436D: $FF
    db $FD                                        ; $436E: $FD
    ld b, h                                       ; $436F: $44
    rst RST_38                                    ; $4370: $FF
    rst RST_38                                    ; $4371: $FF
    rst RST_38                                    ; $4372: $FF
    rst RST_38                                    ; $4373: $FF
    ld h, h                                       ; $4374: $64
    ld c, c                                       ; $4375: $49
    adc $49                                       ; $4376: $CE $49
    or [hl]                                       ; $4378: $B6
    ld c, h                                       ; $4379: $4C
    rst RST_38                                    ; $437A: $FF
    rst RST_38                                    ; $437B: $FF
    ld l, a                                       ; $437C: $6F
    ld c, [hl]                                    ; $437D: $4E
    adc a                                         ; $437E: $8F
    ld c, [hl]                                    ; $437F: $4E
    db $E3                                        ; $4380: $E3
    ld c, h                                       ; $4381: $4C
    add e                                         ; $4382: $83
    ld c, a                                       ; $4383: $4F
    ret c                                         ; $4384: $D8

    ld b, e                                       ; $4385: $43
    rst RST_38                                    ; $4386: $FF
    rst RST_38                                    ; $4387: $FF
    and h                                         ; $4388: $A4
    ld c, a                                       ; $4389: $4F
    rst RST_38                                    ; $438A: $FF
    rst RST_38                                    ; $438B: $FF
    reti                                          ; $438C: $D9


    ld c, a                                       ; $438D: $4F
    db $FC                                        ; $438E: $FC
    ld c, a                                       ; $438F: $4F
    reti                                          ; $4390: $D9


    ld c, a                                       ; $4391: $4F
    rla                                           ; $4392: $17
    ld d, b                                       ; $4393: $50
    ret c                                         ; $4394: $D8

    ld b, e                                       ; $4395: $43
    rst RST_38                                    ; $4396: $FF
    rst RST_38                                    ; $4397: $FF
    cpl                                           ; $4398: $2F
    ld d, b                                       ; $4399: $50
    ld d, b                                       ; $439A: $50
    ld d, b                                       ; $439B: $50
    ld a, d                                       ; $439C: $7A
    ld d, b                                       ; $439D: $50
    ld d, b                                       ; $439E: $50
    ld d, b                                       ; $439F: $50
    cp a                                          ; $43A0: $BF
    ld c, l                                       ; $43A1: $4D
    adc [hl]                                      ; $43A2: $8E
    ld d, b                                       ; $43A3: $50
    cp a                                          ; $43A4: $BF

jr_008_43A5:
    ld c, l                                       ; $43A5: $4D
    adc [hl]                                      ; $43A6: $8E
    ld d, b                                       ; $43A7: $50
    cp a                                          ; $43A8: $BF
    ld c, l                                       ; $43A9: $4D
    adc [hl]                                      ; $43AA: $8E
    ld d, b                                       ; $43AB: $50
    cp a                                          ; $43AC: $BF
    ld c, l                                       ; $43AD: $4D
    adc [hl]                                      ; $43AE: $8E
    ld d, b                                       ; $43AF: $50
    ret c                                         ; $43B0: $D8

    ld b, e                                       ; $43B1: $43
    rst RST_38                                    ; $43B2: $FF
    rst RST_38                                    ; $43B3: $FF
    add hl, sp                                    ; $43B4: $39
    ld d, b                                       ; $43B5: $50
    ld d, b                                       ; $43B6: $50
    ld d, b                                       ; $43B7: $50
    add h                                         ; $43B8: $84
    ld d, b                                       ; $43B9: $50
    ld d, b                                       ; $43BA: $50
    ld d, b                                       ; $43BB: $50
    cp a                                          ; $43BC: $BF
    ld c, l                                       ; $43BD: $4D
    sub [hl]                                      ; $43BE: $96
    ld d, b                                       ; $43BF: $50
    cp a                                          ; $43C0: $BF
    ld c, l                                       ; $43C1: $4D
    sub [hl]                                      ; $43C2: $96
    ld d, b                                       ; $43C3: $50
    cp a                                          ; $43C4: $BF
    ld c, l                                       ; $43C5: $4D
    sub [hl]                                      ; $43C6: $96
    ld d, b                                       ; $43C7: $50
    cp a                                          ; $43C8: $BF
    ld c, l                                       ; $43C9: $4D
    sub [hl]                                      ; $43CA: $96
    ld d, b                                       ; $43CB: $50
    ret c                                         ; $43CC: $D8

    ld b, e                                       ; $43CD: $43
    rst RST_38                                    ; $43CE: $FF
    rst RST_38                                    ; $43CF: $FF
    rst RST_38                                    ; $43D0: $FF
    rst RST_38                                    ; $43D1: $FF
    db $FD                                        ; $43D2: $FD
    ld b, h                                       ; $43D3: $44
    rst RST_38                                    ; $43D4: $FF
    rst RST_38                                    ; $43D5: $FF
    rst RST_38                                    ; $43D6: $FF
    rst RST_38                                    ; $43D7: $FF
    nop                                           ; $43D8: $00
    ld b, $00                                     ; $43D9: $06 $00
    nop                                           ; $43DB: $00
    ld b, b                                       ; $43DC: $40
    ld c, $E2                                     ; $43DD: $0E $E2
    ld b, e                                       ; $43DF: $43
    nop                                           ; $43E0: $00
    nop                                           ; $43E1: $00
    inc c                                         ; $43E2: $0C
    ld d, $EE                                     ; $43E3: $16 $EE
    nop                                           ; $43E5: $00
    dec e                                         ; $43E6: $1D
    or $02                                        ; $43E7: $F6 $02
    dec e                                         ; $43E9: $1D
    cp $04                                        ; $43EA: $FE $04
    dec e                                         ; $43EC: $1D
    ld b, $06                                     ; $43ED: $06 $06
    dec e                                         ; $43EF: $1D
    ld c, $08                                     ; $43F0: $0E $08
    dec l                                         ; $43F2: $2D
    or $0A                                        ; $43F3: $F6 $0A
    dec l                                         ; $43F5: $2D
    cp $0C                                        ; $43F6: $FE $0C
    dec l                                         ; $43F8: $2D
    ld b, $0E                                     ; $43F9: $06 $0E
    dec l                                         ; $43FB: $2D
    ld c, $10                                     ; $43FC: $0E $10
    dec a                                         ; $43FE: $3D
    or $12                                        ; $43FF: $F6 $12
    dec a                                         ; $4401: $3D
    ld [bc], a                                    ; $4402: $02
    inc d                                         ; $4403: $14
    dec a                                         ; $4404: $3D

jr_008_4405:
    ld a, [bc]                                    ; $4405: $0A
    ld d, $00                                     ; $4406: $16 $00
    ld b, $00                                     ; $4408: $06 $00
    add b                                         ; $440A: $80
    ld b, c                                       ; $440B: $41
    ld c, $11                                     ; $440C: $0E $11
    ld b, h                                       ; $440E: $44
    nop                                           ; $440F: $00

jr_008_4410:
    nop                                           ; $4410: $00
    add hl, bc                                    ; $4411: $09
    jr nz, jr_008_4405                            ; $4412: $20 $F1

    nop                                           ; $4414: $00
    jr nz, jr_008_4410                            ; $4415: $20 $F9

    ld [bc], a                                    ; $4417: $02
    jr nz, jr_008_441B                            ; $4418: $20 $01

    inc b                                         ; $441A: $04

jr_008_441B:
    jr nz, @+$0B                                  ; $441B: $20 $09

    ld b, $15                                     ; $441D: $06 $15
    xor $08                                       ; $441F: $EE $08
    db $10                                        ; $4421: $10
    or $0A                                        ; $4422: $F6 $0A
    db $10                                        ; $4424: $10
    cp $0C                                        ; $4425: $FE $0C
    db $10                                        ; $4427: $10
    ld b, $0E                                     ; $4428: $06 $0E
    db $10                                        ; $442A: $10
    ld c, $10                                     ; $442B: $0E $10
    nop                                           ; $442D: $00

jr_008_442E:
    and b                                         ; $442E: $A0
    ld b, d                                       ; $442F: $42
    ld c, $35                                     ; $4430: $0E $35
    ld b, h                                       ; $4432: $44
    nop                                           ; $4433: $00
    nop                                           ; $4434: $00
    inc bc                                        ; $4435: $03
    jr nc, jr_008_442E                            ; $4436: $30 $F6

    nop                                           ; $4438: $00

jr_008_4439:
    jr nc, jr_008_4439                            ; $4439: $30 $FE

    ld [bc], a                                    ; $443B: $02
    jr nc, jr_008_4444                            ; $443C: $30 $06

    inc b                                         ; $443E: $04
    nop                                           ; $443F: $00
    ld b, $00                                     ; $4440: $06 $00
    nop                                           ; $4442: $00
    ld b, e                                       ; $4443: $43

jr_008_4444:
    ld c, $49                                     ; $4444: $0E $49
    ld b, h                                       ; $4446: $44
    nop                                           ; $4447: $00
    nop                                           ; $4448: $00
    dec bc                                        ; $4449: $0B
    add hl, de                                    ; $444A: $19
    xor $00                                       ; $444B: $EE $00
    add hl, de                                    ; $444D: $19
    or $02                                        ; $444E: $F6 $02
    add hl, de                                    ; $4450: $19
    cp $04                                        ; $4451: $FE $04
    add hl, de                                    ; $4453: $19
    ld b, $06                                     ; $4454: $06 $06
    add hl, hl                                    ; $4456: $29
    ldh a, [c]                                    ; $4457: $F2
    ld [$FA29], sp                                ; $4458: $08 $29 $FA
    ld a, [bc]                                    ; $445B: $0A
    add hl, hl                                    ; $445C: $29
    ld [bc], a                                    ; $445D: $02
    inc c                                         ; $445E: $0C
    add hl, hl                                    ; $445F: $29
    ld a, [bc]                                    ; $4460: $0A
    ld c, $39                                     ; $4461: $0E $39
    or $10                                        ; $4463: $F6 $10
    add hl, sp                                    ; $4465: $39
    cp $12                                        ; $4466: $FE $12
    add hl, sp                                    ; $4468: $39
    ld b, $14                                     ; $4469: $06 $14
    nop                                           ; $446B: $00
    ld b, $00                                     ; $446C: $06 $00
    ld h, b                                       ; $446E: $60
    ld b, h                                       ; $446F: $44
    ld c, $75                                     ; $4470: $0E $75
    ld b, h                                       ; $4472: $44
    nop                                           ; $4473: $00

jr_008_4474:
    nop                                           ; $4474: $00
    ld [$F120], sp                                ; $4475: $08 $20 $F1
    nop                                           ; $4478: $00
    jr nz, jr_008_4474                            ; $4479: $20 $F9

    ld [bc], a                                    ; $447B: $02
    jr nz, jr_008_447F                            ; $447C: $20 $01

    inc b                                         ; $447E: $04

jr_008_447F:
    jr nz, jr_008_448A                            ; $447F: $20 $09

    ld b, $18                                     ; $4481: $06 $18
    rst RST_28                                    ; $4483: $EF
    ld [$F710], sp                                ; $4484: $08 $10 $F7
    ld a, [bc]                                    ; $4487: $0A
    db $10                                        ; $4488: $10
    rst RST_38                                    ; $4489: $FF

jr_008_448A:
    inc c                                         ; $448A: $0C
    db $10                                        ; $448B: $10
    rlca                                          ; $448C: $07
    ld c, $00                                     ; $448D: $0E $00
    ld bc, $6000                                  ; $448F: $01 $00 $60

jr_008_4492:
    ld b, l                                       ; $4492: $45
    ld c, $98                                     ; $4493: $0E $98
    ld b, h                                       ; $4495: $44
    db $FD                                        ; $4496: $FD
    nop                                           ; $4497: $00
    ld a, [bc]                                    ; $4498: $0A
    jr nc, jr_008_4492                            ; $4499: $30 $F7

    nop                                           ; $449B: $00
    jr nc, @+$01                                  ; $449C: $30 $FF

    ld [bc], a                                    ; $449E: $02
    jr nc, @+$09                                  ; $449F: $30 $07

    inc b                                         ; $44A1: $04
    ld h, $F2                                     ; $44A2: $26 $F2
    ld b, $20                                     ; $44A4: $06 $20
    ld a, [$2008]                                 ; $44A6: $FA $08 $20
    ld [bc], a                                    ; $44A9: $02
    ld a, [bc]                                    ; $44AA: $0A
    jr nz, jr_008_44B7                            ; $44AB: $20 $0A

    inc c                                         ; $44AD: $0C
    ld a, [hl+]                                   ; $44AE: $2A
    rrca                                          ; $44AF: $0F
    ld c, $10                                     ; $44B0: $0E $10
    cp $10                                        ; $44B2: $FE $10
    ld d, $0E                                     ; $44B4: $16 $0E
    ld [de], a                                    ; $44B6: $12

jr_008_44B7:
    nop                                           ; $44B7: $00
    ld bc, $A000                                  ; $44B8: $01 $00 $A0
    ld b, [hl]                                    ; $44BB: $46
    ld c, $C1                                     ; $44BC: $0E $C1
    ld b, h                                       ; $44BE: $44
    db $FD                                        ; $44BF: $FD
    nop                                           ; $44C0: $00
    ld b, $1C                                     ; $44C1: $06 $1C
    db $FD                                        ; $44C3: $FD
    nop                                           ; $44C4: $00
    inc e                                         ; $44C5: $1C
    dec b                                         ; $44C6: $05
    ld [bc], a                                    ; $44C7: $02
    inc l                                         ; $44C8: $2C
    db $FD                                        ; $44C9: $FD
    inc b                                         ; $44CA: $04
    inc l                                         ; $44CB: $2C
    dec b                                         ; $44CC: $05
    ld b, $3C                                     ; $44CD: $06 $3C
    db $FC                                        ; $44CF: $FC

jr_008_44D0:
    ld [$043C], sp                                ; $44D0: $08 $3C $04
    ld a, [bc]                                    ; $44D3: $0A
    nop                                           ; $44D4: $00
    ld bc, $6000                                  ; $44D5: $01 $00 $60
    ld b, a                                       ; $44D8: $47
    ld c, $DE                                     ; $44D9: $0E $DE
    ld b, h                                       ; $44DB: $44
    db $FD                                        ; $44DC: $FD
    nop                                           ; $44DD: $00
    ld a, [bc]                                    ; $44DE: $0A
    jr nz, jr_008_44D0                            ; $44DF: $20 $EF

    nop                                           ; $44E1: $00
    cpl                                           ; $44E2: $2F
    push af                                       ; $44E3: $F5
    ld [bc], a                                    ; $44E4: $02
    cpl                                           ; $44E5: $2F
    db $FD                                        ; $44E6: $FD
    inc b                                         ; $44E7: $04
    jr nc, @+$07                                  ; $44E8: $30 $05

    ld b, $2F                                     ; $44EA: $06 $2F
    dec c                                         ; $44EC: $0D
    ld [$F71F], sp                                ; $44ED: $08 $1F $F7
    ld a, [bc]                                    ; $44F0: $0A
    rra                                           ; $44F1: $1F
    rst RST_38                                    ; $44F2: $FF
    inc c                                         ; $44F3: $0C
    jr nz, jr_008_44FD                            ; $44F4: $20 $07

    ld c, $1F                                     ; $44F6: $0E $1F
    dec c                                         ; $44F8: $0D
    db $10                                        ; $44F9: $10
    rrca                                          ; $44FA: $0F
    db $FD                                        ; $44FB: $FD
    ld [de], a                                    ; $44FC: $12

jr_008_44FD:
    nop                                           ; $44FD: $00
    rlca                                          ; $44FE: $07
    nop                                           ; $44FF: $00
    and b                                         ; $4500: $A0
    ld c, b                                       ; $4501: $48
    ld c, $11                                     ; $4502: $0E $11
    ld b, l                                       ; $4504: $45
    rst RST_38                                    ; $4505: $FF
    nop                                           ; $4506: $00
    nop                                           ; $4507: $00
    rlca                                          ; $4508: $07
    dec b                                         ; $4509: $05
    and b                                         ; $450A: $A0
    ld c, b                                       ; $450B: $48
    ld c, $11                                     ; $450C: $0E $11
    ld b, l                                       ; $450E: $45
    rst RST_38                                    ; $450F: $FF
    nop                                           ; $4510: $00
    add hl, bc                                    ; $4511: $09
    ld e, $EC                                     ; $4512: $1E $EC
    nop                                           ; $4514: $00
    inc hl                                        ; $4515: $23
    db $F4                                        ; $4516: $F4
    ld [bc], a                                    ; $4517: $02
    ld [hl+], a                                   ; $4518: $22
    db $FC                                        ; $4519: $FC
    inc b                                         ; $451A: $04
    ld [hl+], a                                   ; $451B: $22
    inc b                                         ; $451C: $04
    ld b, $22                                     ; $451D: $06 $22
    inc c                                         ; $451F: $0C
    ld [$F632], sp                                ; $4520: $08 $32 $F6
    ld a, [bc]                                    ; $4523: $0A
    ld [hl-], a                                   ; $4524: $32
    cp $0C                                        ; $4525: $FE $0C
    ld [hl-], a                                   ; $4527: $32
    ld b, $0E                                     ; $4528: $06 $0E
    ld [hl-], a                                   ; $452A: $32
    ld c, $10                                     ; $452B: $0E $10
    nop                                           ; $452D: $00
    ld bc, $C000                                  ; $452E: $01 $00 $C0
    ld c, c                                       ; $4531: $49
    ld c, $37                                     ; $4532: $0E $37
    ld b, l                                       ; $4534: $45
    ld bc, $0A01                                  ; $4535: $01 $01 $0A
    inc de                                        ; $4538: $13
    xor $00                                       ; $4539: $EE $00
    ld [de], a                                    ; $453B: $12
    or $02                                        ; $453C: $F6 $02
    ld [de], a                                    ; $453E: $12
    cp $04                                        ; $453F: $FE $04
    inc d                                         ; $4541: $14
    ld b, $06                                     ; $4542: $06 $06
    ld a, [bc]                                    ; $4544: $0A
    dec c                                         ; $4545: $0D
    ld [$F622], sp                                ; $4546: $08 $22 $F6
    ld a, [bc]                                    ; $4549: $0A
    ld [hl+], a                                   ; $454A: $22
    cp $0C                                        ; $454B: $FE $0C
    inc h                                         ; $454D: $24
    ld b, $0E                                     ; $454E: $06 $0E
    ld [hl-], a                                   ; $4550: $32
    or $10                                        ; $4551: $F6 $10
    ld [hl-], a                                   ; $4553: $32
    cp $12                                        ; $4554: $FE $12
    nop                                           ; $4556: $00
    ld [$0000], sp                                ; $4557: $08 $00 $00
    ld c, e                                       ; $455A: $4B
    ld c, $6A                                     ; $455B: $0E $6A
    ld b, l                                       ; $455D: $45
    inc bc                                        ; $455E: $03
    ld c, $60                                     ; $455F: $0E $60
    ld [$0000], sp                                ; $4561: $08 $00 $00
    ld c, e                                       ; $4564: $4B
    ld c, $6A                                     ; $4565: $0E $6A
    ld b, l                                       ; $4567: $45
    cp $16                                        ; $4568: $FE $16
    ld [$EE09], sp                                ; $456A: $08 $09 $EE
    nop                                           ; $456D: $00
    add hl, bc                                    ; $456E: $09
    or $02                                        ; $456F: $F6 $02
    add hl, bc                                    ; $4571: $09
    cp $04                                        ; $4572: $FE $04
    ld [$0606], sp                                ; $4574: $08 $06 $06
    add hl, de                                    ; $4577: $19
    xor $08                                       ; $4578: $EE $08
    add hl, de                                    ; $457A: $19
    or $0A                                        ; $457B: $F6 $0A
    add hl, de                                    ; $457D: $19
    cp $0C                                        ; $457E: $FE $0C
    jr jr_008_4588                                ; $4580: $18 $06

    ld c, $00                                     ; $4582: $0E $00
    ld [$0000], sp                                ; $4584: $08 $00 $00
    ld c, h                                       ; $4587: $4C

jr_008_4588:
    ld c, $97                                     ; $4588: $0E $97
    ld b, l                                       ; $458A: $45
    ld a, [$6009]                                 ; $458B: $FA $09 $60
    ld [$0000], sp                                ; $458E: $08 $00 $00
    ld c, h                                       ; $4591: $4C
    ld c, $97                                     ; $4592: $0E $97
    ld b, l                                       ; $4594: $45
    dec bc                                        ; $4595: $0B
    dec d                                         ; $4596: $15
    rlca                                          ; $4597: $07
    jr jr_008_4588                                ; $4598: $18 $EE

    nop                                           ; $459A: $00
    ld de, $02F6                                  ; $459B: $11 $F6 $02
    dec d                                         ; $459E: $15
    cp $04                                        ; $459F: $FE $04
    inc d                                         ; $45A1: $14
    ld b, $06                                     ; $45A2: $06 $06
    inc h                                         ; $45A4: $24
    ld bc, $2408                                  ; $45A5: $01 $08 $24
    add hl, bc                                    ; $45A8: $09
    ld a, [bc]                                    ; $45A9: $0A
    daa                                           ; $45AA: $27
    ld de, $000C                                  ; $45AB: $11 $0C $00
    ld [$E000], sp                                ; $45AE: $08 $00 $E0
    ld c, h                                       ; $45B1: $4C
    ld c, $C1                                     ; $45B2: $0E $C1
    ld b, l                                       ; $45B4: $45
    inc b                                         ; $45B5: $04
    ld c, $60                                     ; $45B6: $0E $60
    ld [$E000], sp                                ; $45B8: $08 $00 $E0
    ld c, h                                       ; $45BB: $4C
    ld c, $C1                                     ; $45BC: $0E $C1

jr_008_45BE:
    ld b, l                                       ; $45BE: $45
    db $FC                                        ; $45BF: $FC
    db $EB                                        ; $45C0: $EB
    ld b, $1B                                     ; $45C1: $06 $1B
    rst RST_28                                    ; $45C3: $EF

jr_008_45C4:
    nop                                           ; $45C4: $00
    jr jr_008_45BE                                ; $45C5: $18 $F7

    ld [bc], a                                    ; $45C7: $02
    ld de, $04FF                                  ; $45C8: $11 $FF $04
    jr z, jr_008_45C4                             ; $45CB: $28 $F7

    ld b, $21                                     ; $45CD: $06 $21
    rst RST_38                                    ; $45CF: $FF
    ld [$0709], sp                                ; $45D0: $08 $09 $07
    ld a, [bc]                                    ; $45D3: $0A
    nop                                           ; $45D4: $00
    ld [$A000], sp                                ; $45D5: $08 $00 $A0
    ld c, l                                       ; $45D8: $4D
    ld c, $E8                                     ; $45D9: $0E $E8
    ld b, l                                       ; $45DB: $45
    inc b                                         ; $45DC: $04
    inc c                                         ; $45DD: $0C
    ld h, b                                       ; $45DE: $60
    ld [$A000], sp                                ; $45DF: $08 $00 $A0
    ld c, l                                       ; $45E2: $4D
    ld c, $E8                                     ; $45E3: $0E $E8
    ld b, l                                       ; $45E5: $45
    db $FC                                        ; $45E6: $FC
    db $ED                                        ; $45E7: $ED
    ld b, $11                                     ; $45E8: $06 $11
    rst RST_28                                    ; $45EA: $EF
    nop                                           ; $45EB: $00
    ld d, $F7                                     ; $45EC: $16 $F7
    ld [bc], a                                    ; $45EE: $02
    ld d, $FF                                     ; $45EF: $16 $FF
    inc b                                         ; $45F1: $04
    ld h, $F9                                     ; $45F2: $26 $F9
    ld b, $26                                     ; $45F4: $06 $26
    ld bc, $1608                                  ; $45F6: $01 $08 $16
    rlca                                          ; $45F9: $07
    ld a, [bc]                                    ; $45FA: $0A
    nop                                           ; $45FB: $00
    ld [$6000], sp                                ; $45FC: $08 $00 $60
    ld c, [hl]                                    ; $45FF: $4E
    ld c, $05                                     ; $4600: $0E $05
    ld b, [hl]                                    ; $4602: $46
    inc b                                         ; $4603: $04
    nop                                           ; $4604: $00
    add hl, bc                                    ; $4605: $09
    jr @-$08                                      ; $4606: $18 $F6

    nop                                           ; $4608: $00
    add hl, bc                                    ; $4609: $09
    cp $02                                        ; $460A: $FE $02
    ld b, $06                                     ; $460C: $06 $06
    inc b                                         ; $460E: $04
    add hl, de                                    ; $460F: $19
    cp $06                                        ; $4610: $FE $06
    ld d, $06                                     ; $4612: $16 $06

jr_008_4614:
    ld [$F228], sp                                ; $4614: $08 $28 $F2
    ld a, [bc]                                    ; $4617: $0A
    jr z, jr_008_4614                             ; $4618: $28 $FA

    inc c                                         ; $461A: $0C
    jr c, @-$0E                                   ; $461B: $38 $F0

    ld c, $13                                     ; $461D: $0E $13
    ld c, $10                                     ; $461F: $0E $10
    nop                                           ; $4621: $00
    ld b, $00                                     ; $4622: $06 $00
    add b                                         ; $4624: $80

jr_008_4625:
    ld c, a                                       ; $4625: $4F
    ld c, $2B                                     ; $4626: $0E $2B
    ld b, [hl]                                    ; $4628: $46
    cp $00                                        ; $4629: $FE $00
    add hl, bc                                    ; $462B: $09
    jr nz, jr_008_4625                            ; $462C: $20 $F7

    nop                                           ; $462E: $00
    jr nz, @+$01                                  ; $462F: $20 $FF

    ld [bc], a                                    ; $4631: $02
    jr nz, @+$09                                  ; $4632: $20 $07

    inc b                                         ; $4634: $04
    add hl, de                                    ; $4635: $19
    rrca                                          ; $4636: $0F
    ld b, $30                                     ; $4637: $06 $30
    push af                                       ; $4639: $F5
    ld [$FD30], sp                                ; $463A: $08 $30 $FD
    ld a, [bc]                                    ; $463D: $0A
    jr nc, jr_008_4645                            ; $463E: $30 $05

    inc c                                         ; $4640: $0C
    dec sp                                        ; $4641: $3B
    dec c                                         ; $4642: $0D
    ld c, $10                                     ; $4643: $0E $10

jr_008_4645:
    or $10                                        ; $4645: $F6 $10
    nop                                           ; $4647: $00
    ld bc, $A000                                  ; $4648: $01 $00 $A0

jr_008_464B:
    ld d, b                                       ; $464B: $50
    ld c, $51                                     ; $464C: $0E $51
    ld b, [hl]                                    ; $464E: $46
    db $FD                                        ; $464F: $FD
    nop                                           ; $4650: $00
    rlca                                          ; $4651: $07
    jr nc, jr_008_464B                            ; $4652: $30 $F7

    nop                                           ; $4654: $00
    jr nc, @+$01                                  ; $4655: $30 $FF

    ld [bc], a                                    ; $4657: $02
    jr nc, @+$09                                  ; $4658: $30 $07

    inc b                                         ; $465A: $04
    jr nz, @-$05                                  ; $465B: $20 $F9

    ld b, $20                                     ; $465D: $06 $20
    ld bc, $2008                                  ; $465F: $01 $08 $20
    add hl, bc                                    ; $4662: $09
    ld a, [bc]                                    ; $4663: $0A
    dec e                                         ; $4664: $1D
    ld de, $000C                                  ; $4665: $11 $0C $00
    ld [$8000], sp                                ; $4668: $08 $00 $80
    ld d, c                                       ; $466B: $51
    ld c, $7B                                     ; $466C: $0E $7B
    ld b, [hl]                                    ; $466E: $46
    db $FD                                        ; $466F: $FD
    ld [de], a                                    ; $4670: $12
    nop                                           ; $4671: $00
    ld [$8000], sp                                ; $4672: $08 $00 $80
    ld d, c                                       ; $4675: $51
    ld c, $7B                                     ; $4676: $0E $7B
    ld b, [hl]                                    ; $4678: $46
    nop                                           ; $4679: $00
    jr @+$09                                      ; $467A: $18 $07

    ld [$00F7], sp                                ; $467C: $08 $F7 $00
    ld [$02FF], sp                                ; $467F: $08 $FF $02
    ld [$0407], sp                                ; $4682: $08 $07 $04
    ld [$060F], sp                                ; $4685: $08 $0F $06
    jr @-$08                                      ; $4688: $18 $F6

    ld [$FE18], sp                                ; $468A: $08 $18 $FE
    ld a, [bc]                                    ; $468D: $0A
    jr jr_008_4696                                ; $468E: $18 $06

    inc c                                         ; $4690: $0C
    nop                                           ; $4691: $00
    ld b, $00                                     ; $4692: $06 $00
    and b                                         ; $4694: $A0
    ld d, a                                       ; $4695: $57

jr_008_4696:
    ld c, $9B                                     ; $4696: $0E $9B
    ld b, [hl]                                    ; $4698: $46
    ld sp, hl                                     ; $4699: $F9
    nop                                           ; $469A: $00
    dec bc                                        ; $469B: $0B
    dec l                                         ; $469C: $2D
    ld hl, sp+$00                                 ; $469D: $F8 $00
    add hl, hl                                    ; $469F: $29
    nop                                           ; $46A0: $00
    ld [bc], a                                    ; $46A1: $02
    jr nc, jr_008_46AC                            ; $46A2: $30 $08

    inc b                                         ; $46A4: $04
    dec sp                                        ; $46A5: $3B
    db $10                                        ; $46A6: $10
    ld b, $20                                     ; $46A7: $06 $20
    ld [$1908], sp                                ; $46A9: $08 $08 $19

jr_008_46AC:
    nop                                           ; $46AC: $00
    ld a, [bc]                                    ; $46AD: $0A
    dec d                                         ; $46AE: $15
    ld hl, sp+$0C                                 ; $46AF: $F8 $0C
    db $10                                        ; $46B1: $10
    ld [$120E], sp                                ; $46B2: $08 $0E $12
    db $10                                        ; $46B5: $10
    db $10                                        ; $46B6: $10
    ld [hl+], a                                   ; $46B7: $22
    db $10                                        ; $46B8: $10
    ld [de], a                                    ; $46B9: $12
    dec e                                         ; $46BA: $1D
    jr jr_008_46D1                                ; $46BB: $18 $14

    nop                                           ; $46BD: $00
    ld b, $2B                                     ; $46BE: $06 $2B
    nop                                           ; $46C0: $00
    ld e, c                                       ; $46C1: $59
    ld c, $DB                                     ; $46C2: $0E $DB
    ld b, [hl]                                    ; $46C4: $46
    pop af                                        ; $46C5: $F1
    nop                                           ; $46C6: $00
    nop                                           ; $46C7: $00
    ld b, $05                                     ; $46C8: $06 $05
    nop                                           ; $46CA: $00
    ld e, c                                       ; $46CB: $59
    ld c, $DB                                     ; $46CC: $0E $DB
    ld b, [hl]                                    ; $46CE: $46
    pop af                                        ; $46CF: $F1

jr_008_46D0:
    nop                                           ; $46D0: $00

jr_008_46D1:
    nop                                           ; $46D1: $00
    ld b, $00                                     ; $46D2: $06 $00
    nop                                           ; $46D4: $00
    ld e, c                                       ; $46D5: $59
    ld c, $DB                                     ; $46D6: $0E $DB
    ld b, [hl]                                    ; $46D8: $46
    pop af                                        ; $46D9: $F1
    nop                                           ; $46DA: $00
    dec b                                         ; $46DB: $05
    ld hl, $00FE                                  ; $46DC: $21 $FE $00
    ld sp, $02FE                                  ; $46DF: $31 $FE $02
    rra                                           ; $46E2: $1F
    or $04                                        ; $46E3: $F6 $04
    add hl, hl                                    ; $46E5: $29
    xor $06                                       ; $46E6: $EE $06
    jr nz, jr_008_46D0                            ; $46E8: $20 $E6

    ld [$A000], sp                                ; $46EA: $08 $00 $A0
    ld e, c                                       ; $46ED: $59
    ld c, $F3                                     ; $46EE: $0E $F3
    ld b, [hl]                                    ; $46F0: $46
    pop af                                        ; $46F1: $F1
    nop                                           ; $46F2: $00
    ld b, $20                                     ; $46F3: $06 $20
    ld b, $00                                     ; $46F5: $06 $00
    jr nz, jr_008_4707                            ; $46F7: $20 $0E

    ld [bc], a                                    ; $46F9: $02
    ld e, $16                                     ; $46FA: $1E $16
    inc b                                         ; $46FC: $04
    jr nc, @+$08                                  ; $46FD: $30 $06

    ld b, $30                                     ; $46FF: $06 $30
    ld c, $08                                     ; $4701: $0E $08
    ld a, [hl-]                                   ; $4703: $3A
    ld d, $0A                                     ; $4704: $16 $0A
    nop                                           ; $4706: $00

jr_008_4707:
    ld b, $2C                                     ; $4707: $06 $2C
    ld h, b                                       ; $4709: $60
    ld e, d                                       ; $470A: $5A
    ld c, $10                                     ; $470B: $0E $10
    ld b, a                                       ; $470D: $47
    pop af                                        ; $470E: $F1
    nop                                           ; $470F: $00
    dec b                                         ; $4710: $05
    cpl                                           ; $4711: $2F
    cp $00                                        ; $4712: $FE $00
    rra                                           ; $4714: $1F
    cp $02                                        ; $4715: $FE $02
    add hl, de                                    ; $4717: $19
    or $04                                        ; $4718: $F6 $04
    ld l, $F6                                     ; $471A: $2E $F6
    ld b, $39                                     ; $471C: $06 $39
    xor $08                                       ; $471E: $EE $08
    nop                                           ; $4720: $00
    ld bc, $0000                                  ; $4721: $01 $00 $00
    ld e, e                                       ; $4724: $5B
    ld c, $34                                     ; $4725: $0E $34
    ld b, a                                       ; $4727: $47
    nop                                           ; $4728: $00
    nop                                           ; $4729: $00
    ld h, b                                       ; $472A: $60
    ld bc, $0005                                  ; $472B: $01 $05 $00
    ld e, e                                       ; $472E: $5B
    ld c, $34                                     ; $472F: $0E $34
    ld b, a                                       ; $4731: $47
    ld b, $FA                                     ; $4732: $06 $FA
    rlca                                          ; $4734: $07
    inc hl                                        ; $4735: $23
    ldh a, [rP1]                                  ; $4736: $F0 $00
    inc hl                                        ; $4738: $23
    ld hl, sp+$02                                 ; $4739: $F8 $02
    ld hl, $0400                                  ; $473B: $21 $00 $04
    jr nz, @+$0A                                  ; $473E: $20 $08

    ld b, $31                                     ; $4740: $06 $31
    inc bc                                        ; $4742: $03
    ld [$0B28], sp                                ; $4743: $08 $28 $0B
    ld a, [bc]                                    ; $4746: $0A
    jr jr_008_4759                                ; $4747: $18 $10

    inc c                                         ; $4749: $0C
    nop                                           ; $474A: $00
    ld bc, $E000                                  ; $474B: $01 $00 $E0
    ld e, e                                       ; $474E: $5B
    ld c, $5E                                     ; $474F: $0E $5E
    ld b, a                                       ; $4751: $47
    nop                                           ; $4752: $00
    nop                                           ; $4753: $00
    nop                                           ; $4754: $00
    ld bc, $E005                                  ; $4755: $01 $05 $E0
    ld e, e                                       ; $4758: $5B

jr_008_4759:
    ld c, $5E                                     ; $4759: $0E $5E
    ld b, a                                       ; $475B: $47
    nop                                           ; $475C: $00
    nop                                           ; $475D: $00
    ld a, [bc]                                    ; $475E: $0A
    rla                                           ; $475F: $17
    cp $00                                        ; $4760: $FE $00
    jr jr_008_476A                                ; $4762: $18 $06

    ld [bc], a                                    ; $4764: $02
    jr @+$10                                      ; $4765: $18 $0E

    inc b                                         ; $4767: $04
    jr @+$18                                      ; $4768: $18 $16

jr_008_476A:
    ld b, $31                                     ; $476A: $06 $31
    inc b                                         ; $476C: $04
    ld [$0C28], sp                                ; $476D: $08 $28 $0C
    ld a, [bc]                                    ; $4770: $0A
    jr z, jr_008_4787                             ; $4771: $28 $14

    inc c                                         ; $4773: $0C
    jr c, jr_008_4782                             ; $4774: $38 $0C

    ld c, $38                                     ; $4776: $0E $38
    inc d                                         ; $4778: $14
    db $10                                        ; $4779: $10
    jr nc, jr_008_4798                            ; $477A: $30 $1C

    ld [de], a                                    ; $477C: $12
    nop                                           ; $477D: $00
    ld bc, $202D                                  ; $477E: $01 $2D $20
    ld e, l                                       ; $4781: $5D

jr_008_4782:
    ld c, $87                                     ; $4782: $0E $87
    ld b, a                                       ; $4784: $47
    nop                                           ; $4785: $00
    nop                                           ; $4786: $00

jr_008_4787:
    ld b, $23                                     ; $4787: $06 $23
    and $00                                       ; $4789: $E6 $00
    inc hl                                        ; $478B: $23
    xor $02                                       ; $478C: $EE $02
    inc de                                        ; $478E: $13
    ld [$1304], a                                 ; $478F: $EA $04 $13
    ldh a, [c]                                    ; $4792: $F2
    ld b, $23                                     ; $4793: $06 $23
    or $08                                        ; $4795: $F6 $08
    inc de                                        ; $4797: $13

jr_008_4798:
    ld a, [$000A]                                 ; $4798: $FA $0A $00
    ldh [$FF5D], a                                ; $479B: $E0 $5D
    ld c, $A2                                     ; $479D: $0E $A2
    ld b, a                                       ; $479F: $47
    nop                                           ; $47A0: $00
    nop                                           ; $47A1: $00
    dec b                                         ; $47A2: $05
    jr nc, jr_008_47A9                            ; $47A3: $30 $04

    nop                                           ; $47A5: $00
    dec l                                         ; $47A6: $2D
    inc c                                         ; $47A7: $0C
    ld [bc], a                                    ; $47A8: $02

jr_008_47A9:
    jr nz, jr_008_47B0                            ; $47A9: $20 $05

jr_008_47AB:
    inc b                                         ; $47AB: $04
    jr nz, jr_008_47AB                            ; $47AC: $20 $FD

    ld b, $1D                                     ; $47AE: $06 $1D

jr_008_47B0:
    dec c                                         ; $47B0: $0D
    ld [$0100], sp                                ; $47B1: $08 $00 $01
    dec l                                         ; $47B4: $2D
    add b                                         ; $47B5: $80
    ld e, [hl]                                    ; $47B6: $5E
    ld c, $C6                                     ; $47B7: $0E $C6
    ld b, a                                       ; $47B9: $47

jr_008_47BA:
    nop                                           ; $47BA: $00
    nop                                           ; $47BB: $00
    nop                                           ; $47BC: $00
    ld bc, $8005                                  ; $47BD: $01 $05 $80
    ld e, [hl]                                    ; $47C0: $5E
    ld c, $C6                                     ; $47C1: $0E $C6
    ld b, a                                       ; $47C3: $47
    nop                                           ; $47C4: $00
    nop                                           ; $47C5: $00
    inc bc                                        ; $47C6: $03
    jr z, @-$08                                   ; $47C7: $28 $F6

    nop                                           ; $47C9: $00
    jr z, jr_008_47BA                             ; $47CA: $28 $EE

    ld [bc], a                                    ; $47CC: $02
    ld e, $E6                                     ; $47CD: $1E $E6
    inc b                                         ; $47CF: $04
    nop                                           ; $47D0: $00
    rlca                                          ; $47D1: $07
    nop                                           ; $47D2: $00
    ldh [$FF5E], a                                ; $47D3: $E0 $5E
    ld c, $DA                                     ; $47D5: $0E $DA
    ld b, a                                       ; $47D7: $47
    rst RST_28                                    ; $47D8: $EF
    nop                                           ; $47D9: $00
    ld [$0630], sp                                ; $47DA: $08 $30 $06
    nop                                           ; $47DD: $00
    jr nc, @+$10                                  ; $47DE: $30 $0E

    ld [bc], a                                    ; $47E0: $02
    jr nc, @+$18                                  ; $47E1: $30 $16

    inc b                                         ; $47E3: $04
    jr nz, jr_008_47E8                            ; $47E4: $20 $02

    ld b, $20                                     ; $47E6: $06 $20

jr_008_47E8:
    ld a, [bc]                                    ; $47E8: $0A
    ld [$1220], sp                                ; $47E9: $08 $20 $12
    ld a, [bc]                                    ; $47EC: $0A
    jr nz, jr_008_4809                            ; $47ED: $20 $1A

    inc c                                         ; $47EF: $0C
    db $10                                        ; $47F0: $10
    rla                                           ; $47F1: $17
    ld c, $00                                     ; $47F2: $0E $00
    rlca                                          ; $47F4: $07
    ld l, $E0                                     ; $47F5: $2E $E0
    ld e, a                                       ; $47F7: $5F
    ld c, $FD                                     ; $47F8: $0E $FD
    ld b, a                                       ; $47FA: $47
    rst RST_28                                    ; $47FB: $EF
    nop                                           ; $47FC: $00
    ld a, [bc]                                    ; $47FD: $0A
    jr nc, @-$17                                  ; $47FE: $30 $E7

    nop                                           ; $4800: $00
    ld l, $EF                                     ; $4801: $2E $EF
    ld [bc], a                                    ; $4803: $02
    inc hl                                        ; $4804: $23
    rst RST_30                                    ; $4805: $F7
    inc b                                         ; $4806: $04
    dec h                                         ; $4807: $25
    rst RST_38                                    ; $4808: $FF

jr_008_4809:
    ld b, $25                                     ; $4809: $06 $25
    rlca                                          ; $480B: $07
    ld [$0F25], sp                                ; $480C: $08 $25 $0F
    ld a, [bc]                                    ; $480F: $0A
    dec [hl]                                      ; $4810: $35
    dec b                                         ; $4811: $05

jr_008_4812:
    inc c                                         ; $4812: $0C
    dec [hl]                                      ; $4813: $35
    dec c                                         ; $4814: $0D
    ld c, $37                                     ; $4815: $0E $37
    dec d                                         ; $4817: $15
    db $10                                        ; $4818: $10
    ld [hl+], a                                   ; $4819: $22
    rla                                           ; $481A: $17
    ld [de], a                                    ; $481B: $12
    nop                                           ; $481C: $00
    rlca                                          ; $481D: $07
    nop                                           ; $481E: $00
    jr nz, jr_008_4882                            ; $481F: $20 $61

    ld c, $26                                     ; $4821: $0E $26
    ld c, b                                       ; $4823: $48
    rst RST_28                                    ; $4824: $EF
    nop                                           ; $4825: $00
    ld [$0833], sp                                ; $4826: $08 $33 $08
    nop                                           ; $4829: $00
    inc sp                                        ; $482A: $33
    db $10                                        ; $482B: $10
    ld [bc], a                                    ; $482C: $02
    inc sp                                        ; $482D: $33
    jr jr_008_4834                                ; $482E: $18 $04

    inc hl                                        ; $4830: $23
    ld e, $06                                     ; $4831: $1E $06
    inc hl                                        ; $4833: $23

jr_008_4834:
    ld d, $08                                     ; $4834: $16 $08
    inc hl                                        ; $4836: $23
    ld c, $0A                                     ; $4837: $0E $0A
    ld [hl+], a                                   ; $4839: $22
    ld b, $0C                                     ; $483A: $06 $0C
    ld a, [de]                                    ; $483C: $1A
    cp $0E                                        ; $483D: $FE $0E
    nop                                           ; $483F: $00
    rlca                                          ; $4840: $07
    cpl                                           ; $4841: $2F
    jr nz, @+$64                                  ; $4842: $20 $62

    ld c, $49                                     ; $4844: $0E $49
    ld c, b                                       ; $4846: $48
    rst RST_28                                    ; $4847: $EF

jr_008_4848:
    nop                                           ; $4848: $00
    inc c                                         ; $4849: $0C
    inc sp                                        ; $484A: $33
    and $00                                       ; $484B: $E6 $00
    cpl                                           ; $484D: $2F
    xor $02                                       ; $484E: $EE $02
    jr nc, jr_008_4848                            ; $4850: $30 $F6

    inc b                                         ; $4852: $04

jr_008_4853:
    jr nc, jr_008_4853                            ; $4853: $30 $FE

    ld b, $30                                     ; $4855: $06 $30
    ld b, $08                                     ; $4857: $06 $08

jr_008_4859:
    jr nc, @+$10                                  ; $4859: $30 $0E

    ld a, [bc]                                    ; $485B: $0A
    jr nc, @+$18                                  ; $485C: $30 $16

    inc c                                         ; $485E: $0C
    jr nz, jr_008_4859                            ; $485F: $20 $F8

    ld c, $20                                     ; $4861: $0E $20
    nop                                           ; $4863: $00
    db $10                                        ; $4864: $10
    jr nz, jr_008_486F                            ; $4865: $20 $08

    ld [de], a                                    ; $4867: $12
    jr nz, @+$12                                  ; $4868: $20 $10

    inc d                                         ; $486A: $14
    jr nz, jr_008_4885                            ; $486B: $20 $18

    ld d, $00                                     ; $486D: $16 $00

jr_008_486F:
    rlca                                          ; $486F: $07
    jr nc, jr_008_4812                            ; $4870: $30 $A0

    ld h, e                                       ; $4872: $63
    ld c, $78                                     ; $4873: $0E $78
    ld c, b                                       ; $4875: $48
    di                                            ; $4876: $F3
    nop                                           ; $4877: $00
    ld a, [bc]                                    ; $4878: $0A
    jr c, @-$10                                   ; $4879: $38 $EE

    nop                                           ; $487B: $00
    cpl                                           ; $487C: $2F
    or $02                                        ; $487D: $F6 $02
    cpl                                           ; $487F: $2F
    cp $04                                        ; $4880: $FE $04

jr_008_4882:
    cpl                                           ; $4882: $2F
    ld b, $06                                     ; $4883: $06 $06

jr_008_4885:
    cpl                                           ; $4885: $2F
    ld c, $08                                     ; $4886: $0E $08
    rra                                           ; $4888: $1F
    ei                                            ; $4889: $FB
    ld a, [bc]                                    ; $488A: $0A
    rra                                           ; $488B: $1F
    inc bc                                        ; $488C: $03
    inc c                                         ; $488D: $0C
    rra                                           ; $488E: $1F
    dec bc                                        ; $488F: $0B
    ld c, $25                                     ; $4890: $0E $25
    inc de                                        ; $4892: $13
    db $10                                        ; $4893: $10
    inc h                                         ; $4894: $24
    dec de                                        ; $4895: $1B
    ld [de], a                                    ; $4896: $12
    nop                                           ; $4897: $00
    inc sp                                        ; $4898: $33
    nop                                           ; $4899: $00
    ldh [$FF64], a                                ; $489A: $E0 $64
    ld c, $A1                                     ; $489C: $0E $A1
    ld c, b                                       ; $489E: $48
    ld bc, $0A07                                  ; $489F: $01 $07 $0A
    ld [$000A], sp                                ; $48A2: $08 $0A $00
    ld [$0202], sp                                ; $48A5: $08 $02 $02
    rrca                                          ; $48A8: $0F
    ld a, [$1404]                                 ; $48A9: $FA $04 $14
    ldh a, [c]                                    ; $48AC: $F2
    ld b, $18                                     ; $48AD: $06 $18
    ld a, [bc]                                    ; $48AF: $0A
    ld [$0218], sp                                ; $48B0: $08 $18 $02
    ld a, [bc]                                    ; $48B3: $0A
    rra                                           ; $48B4: $1F
    ld a, [$240C]                                 ; $48B5: $FA $0C $24
    ldh a, [c]                                    ; $48B8: $F2
    ld c, $28                                     ; $48B9: $0E $28
    rst RST_38                                    ; $48BB: $FF
    db $10                                        ; $48BC: $10
    ld l, $EA                                     ; $48BD: $2E $EA
    ld [de], a                                    ; $48BF: $12
    nop                                           ; $48C0: $00
    inc sp                                        ; $48C1: $33
    ld sp, $6620                                  ; $48C2: $31 $20 $66
    ld c, $CA                                     ; $48C5: $0E $CA
    ld c, b                                       ; $48C7: $48
    ld bc, $0A0E                                  ; $48C8: $01 $0E $0A
    ld [$00EC], sp                                ; $48CB: $08 $EC $00
    ld [$02F4], sp                                ; $48CE: $08 $F4 $02
    ld [$04FC], sp                                ; $48D1: $08 $FC $04
    ld [$0604], sp                                ; $48D4: $08 $04 $06
    ld [$080C], sp                                ; $48D7: $08 $0C $08
    ld hl, $0AE6                                  ; $48DA: $21 $E6 $0A
    jr @-$10                                      ; $48DD: $18 $EE

    inc c                                         ; $48DF: $0C
    jr @-$08                                      ; $48E0: $18 $F6

    ld c, $18                                     ; $48E2: $0E $18
    cp $10                                        ; $48E4: $FE $10
    jr jr_008_48EE                                ; $48E6: $18 $06

    ld [de], a                                    ; $48E8: $12
    nop                                           ; $48E9: $00
    inc sp                                        ; $48EA: $33
    ld [hl-], a                                   ; $48EB: $32
    ld h, b                                       ; $48EC: $60
    ld h, a                                       ; $48ED: $67

jr_008_48EE:
    ld c, $F3                                     ; $48EE: $0E $F3
    ld c, b                                       ; $48F0: $48
    rst RST_38                                    ; $48F1: $FF
    ld c, $09                                     ; $48F2: $0E $09
    ld [$00F6], sp                                ; $48F4: $08 $F6 $00
    ld [$02FE], sp                                ; $48F7: $08 $FE $02
    ld [$0406], sp                                ; $48FA: $08 $06 $04
    ld [$060E], sp                                ; $48FD: $08 $0E $06
    jr @-$0A                                      ; $4900: $18 $F4

    ld [$FC18], sp                                ; $4902: $08 $18 $FC
    ld a, [bc]                                    ; $4905: $0A
    jr @+$06                                      ; $4906: $18 $04

    inc c                                         ; $4908: $0C
    jr z, @-$0B                                   ; $4909: $28 $F3

    ld c, $18                                     ; $490B: $0E $18
    inc c                                         ; $490D: $0C
    stop                                          ; $490E: $10 $00
    ld bc, $8000                                  ; $4910: $01 $00 $80
    ld l, b                                       ; $4913: $68
    ld c, $19                                     ; $4914: $0E $19
    ld c, c                                       ; $4916: $49
    push af                                       ; $4917: $F5
    nop                                           ; $4918: $00
    add hl, bc                                    ; $4919: $09
    add hl, de                                    ; $491A: $19
    or $00                                        ; $491B: $F6 $00

jr_008_491D:
    jr nz, jr_008_491D                            ; $491D: $20 $FE

    ld [bc], a                                    ; $491F: $02
    jr nz, @+$08                                  ; $4920: $20 $06

    inc b                                         ; $4922: $04
    jr nz, @+$10                                  ; $4923: $20 $0E

    ld b, $20                                     ; $4925: $06 $20
    ld d, $08                                     ; $4927: $16 $08

jr_008_4929:
    jr nc, jr_008_4929                            ; $4929: $30 $FE

    ld a, [bc]                                    ; $492B: $0A
    jr nc, jr_008_4934                            ; $492C: $30 $06

    inc c                                         ; $492E: $0C
    ld [hl-], a                                   ; $492F: $32
    ld c, $0E                                     ; $4930: $0E $0E
    jr c, jr_008_494A                             ; $4932: $38 $16

jr_008_4934:
    stop                                          ; $4934: $10 $00
    ld bc, $A000                                  ; $4936: $01 $00 $A0
    ld l, c                                       ; $4939: $69
    ld c, $3F                                     ; $493A: $0E $3F
    ld c, c                                       ; $493C: $49
    ld hl, sp+$00                                 ; $493D: $F8 $00
    inc c                                         ; $493F: $0C
    jr jr_008_4934                                ; $4940: $18 $F2

    nop                                           ; $4942: $00
    ld a, [de]                                    ; $4943: $1A
    ld a, [$2002]                                 ; $4944: $FA $02 $20
    ld [bc], a                                    ; $4947: $02
    inc b                                         ; $4948: $04
    inc e                                         ; $4949: $1C

jr_008_494A:
    ld a, [bc]                                    ; $494A: $0A
    ld b, $0A                                     ; $494B: $06 $0A
    ld [de], a                                    ; $494D: $12
    ld [$1A14], sp                                ; $494E: $08 $14 $1A
    ld a, [bc]                                    ; $4951: $0A
    ld a, [hl+]                                   ; $4952: $2A
    ld a, [$300C]                                 ; $4953: $FA $0C $30
    ld [bc], a                                    ; $4956: $02
    ld c, $2C                                     ; $4957: $0E $2C
    ld a, [bc]                                    ; $4959: $0A
    db $10                                        ; $495A: $10
    ld a, [de]                                    ; $495B: $1A
    ld [de], a                                    ; $495C: $12
    ld [de], a                                    ; $495D: $12
    add hl, sp                                    ; $495E: $39
    ld de, $3A14                                  ; $495F: $11 $14 $3A
    or $16                                        ; $4962: $F6 $16
    nop                                           ; $4964: $00
    ld bc, $2000                                  ; $4965: $01 $00 $20
    ld l, e                                       ; $4968: $6B
    ld c, $6E                                     ; $4969: $0E $6E
    ld c, c                                       ; $496B: $49
    ld hl, sp+$00                                 ; $496C: $F8 $00
    inc bc                                        ; $496E: $03

jr_008_496F:
    jr nz, jr_008_496F                            ; $496F: $20 $FE

    nop                                           ; $4971: $00
    jr nz, jr_008_497A                            ; $4972: $20 $06

    ld [bc], a                                    ; $4974: $02
    jr nz, @+$10                                  ; $4975: $20 $0E

    inc b                                         ; $4977: $04

jr_008_4978:
    nop                                           ; $4978: $00
    add b                                         ; $4979: $80

jr_008_497A:
    ld l, e                                       ; $497A: $6B
    ld c, $80                                     ; $497B: $0E $80
    ld c, c                                       ; $497D: $49
    ld hl, sp+$00                                 ; $497E: $F8 $00
    dec bc                                        ; $4980: $0B
    jr nc, jr_008_4978                            ; $4981: $30 $F5

jr_008_4983:
    nop                                           ; $4983: $00
    jr nc, jr_008_4983                            ; $4984: $30 $FD

    ld [bc], a                                    ; $4986: $02
    jr nc, jr_008_498E                            ; $4987: $30 $05

    inc b                                         ; $4989: $04
    jr nc, @+$0F                                  ; $498A: $30 $0D

    ld b, $30                                     ; $498C: $06 $30

jr_008_498E:
    dec d                                         ; $498E: $15

jr_008_498F:
    ld [$F220], sp                                ; $498F: $08 $20 $F2
    ld a, [bc]                                    ; $4992: $0A
    jr nz, jr_008_498F                            ; $4993: $20 $FA

    inc c                                         ; $4995: $0C
    ld [hl+], a                                   ; $4996: $22
    dec e                                         ; $4997: $1D
    ld c, $20                                     ; $4998: $0E $20
    dec d                                         ; $499A: $15
    db $10                                        ; $499B: $10
    ld [de], a                                    ; $499C: $12
    ld e, $12                                     ; $499D: $1E $12
    db $10                                        ; $499F: $10
    ldh a, [c]                                    ; $49A0: $F2
    inc d                                         ; $49A1: $14
    nop                                           ; $49A2: $00

jr_008_49A3:
    ld bc, $E000                                  ; $49A3: $01 $00 $E0
    ld l, h                                       ; $49A6: $6C
    ld c, $AC                                     ; $49A7: $0E $AC
    ld c, c                                       ; $49A9: $49
    ld hl, sp+$00                                 ; $49AA: $F8 $00
    dec bc                                        ; $49AC: $0B
    jr nc, jr_008_49A3                            ; $49AD: $30 $F4

    nop                                           ; $49AF: $00
    jr nc, @-$02                                  ; $49B0: $30 $FC

    ld [bc], a                                    ; $49B2: $02
    jr nc, @+$06                                  ; $49B3: $30 $04

    inc b                                         ; $49B5: $04
    jr nc, jr_008_49C4                            ; $49B6: $30 $0C

jr_008_49B8:
    ld b, $30                                     ; $49B8: $06 $30
    inc d                                         ; $49BA: $14
    ld [$1C38], sp                                ; $49BB: $08 $38 $1C
    ld a, [bc]                                    ; $49BE: $0A
    jr nz, jr_008_49B8                            ; $49BF: $20 $F7

    inc c                                         ; $49C1: $0C
    jr nz, @+$01                                  ; $49C2: $20 $FF

jr_008_49C4:
    ld c, $20                                     ; $49C4: $0E $20
    rlca                                          ; $49C6: $07
    db $10                                        ; $49C7: $10
    jr nz, @+$11                                  ; $49C8: $20 $0F

    ld [de], a                                    ; $49CA: $12
    jr nz, jr_008_49E4                            ; $49CB: $20 $17

    inc d                                         ; $49CD: $14
    nop                                           ; $49CE: $00
    ld b, b                                       ; $49CF: $40
    ld l, [hl]                                    ; $49D0: $6E
    ld c, $D6                                     ; $49D1: $0E $D6
    ld c, c                                       ; $49D3: $49
    ld hl, sp+$00                                 ; $49D4: $F8 $00
    rlca                                          ; $49D6: $07
    inc h                                         ; $49D7: $24
    or $00                                        ; $49D8: $F6 $00
    jr nc, @-$01                                  ; $49DA: $30 $FD

    ld [bc], a                                    ; $49DC: $02
    jr nc, jr_008_49E4                            ; $49DD: $30 $05

    inc b                                         ; $49DF: $04

jr_008_49E0:
    jr nc, @+$0F                                  ; $49E0: $30 $0D

    ld b, $24                                     ; $49E2: $06 $24

jr_008_49E4:
    dec d                                         ; $49E4: $15
    ld [$153A], sp                                ; $49E5: $08 $3A $15
    ld a, [bc]                                    ; $49E8: $0A
    jr c, jr_008_49E0                             ; $49E9: $38 $F5

    inc c                                         ; $49EB: $0C
    nop                                           ; $49EC: $00
    ld bc, $2000                                  ; $49ED: $01 $00 $20
    ld l, a                                       ; $49F0: $6F
    ld c, $F6                                     ; $49F1: $0E $F6
    ld c, c                                       ; $49F3: $49
    ld hl, sp+$00                                 ; $49F4: $F8 $00
    inc b                                         ; $49F6: $04
    jr nz, @+$08                                  ; $49F7: $20 $06

    nop                                           ; $49F9: $00
    jr nz, @+$10                                  ; $49FA: $20 $0E

    ld [bc], a                                    ; $49FC: $02
    db $10                                        ; $49FD: $10
    ld b, $04                                     ; $49FE: $06 $04
    db $10                                        ; $4A00: $10
    ld c, $06                                     ; $4A01: $0E $06
    nop                                           ; $4A03: $00
    and b                                         ; $4A04: $A0
    ld l, a                                       ; $4A05: $6F
    ld c, $0B                                     ; $4A06: $0E $0B
    ld c, d                                       ; $4A08: $4A
    ld hl, sp+$00                                 ; $4A09: $F8 $00
    rlca                                          ; $4A0B: $07
    ld e, $FE                                     ; $4A0C: $1E $FE
    nop                                           ; $4A0E: $00
    ld d, $F6                                     ; $4A0F: $16 $F6
    ld [bc], a                                    ; $4A11: $02
    ld l, $FE                                     ; $4A12: $2E $FE
    inc b                                         ; $4A14: $04
    jr nc, jr_008_4A1D                            ; $4A15: $30 $06

    ld b, $30                                     ; $4A17: $06 $30
    ld c, $08                                     ; $4A19: $0E $08
    jr nz, jr_008_4A33                            ; $4A1B: $20 $16

jr_008_4A1D:
    ld a, [bc]                                    ; $4A1D: $0A
    ld a, $FE                                     ; $4A1E: $3E $FE
    inc c                                         ; $4A20: $0C
    nop                                           ; $4A21: $00
    ld bc, $8000                                  ; $4A22: $01 $00 $80
    ld [hl], b                                    ; $4A25: $70
    ld c, $2B                                     ; $4A26: $0E $2B
    ld c, d                                       ; $4A28: $4A
    ld hl, sp+$00                                 ; $4A29: $F8 $00
    inc b                                         ; $4A2B: $04
    jr nz, @+$08                                  ; $4A2C: $20 $06

    nop                                           ; $4A2E: $00
    jr nz, jr_008_4A3F                            ; $4A2F: $20 $0E

    ld [bc], a                                    ; $4A31: $02
    db $10                                        ; $4A32: $10

jr_008_4A33:
    ld b, $04                                     ; $4A33: $06 $04
    db $10                                        ; $4A35: $10
    ld c, $06                                     ; $4A36: $0E $06
    nop                                           ; $4A38: $00
    ld bc, $0000                                  ; $4A39: $01 $00 $00
    ld [hl], c                                    ; $4A3C: $71
    ld c, $42                                     ; $4A3D: $0E $42

jr_008_4A3F:
    ld c, d                                       ; $4A3F: $4A
    ld hl, sp+$00                                 ; $4A40: $F8 $00
    inc b                                         ; $4A42: $04
    jr nz, @+$08                                  ; $4A43: $20 $06

    nop                                           ; $4A45: $00
    jr nz, jr_008_4A56                            ; $4A46: $20 $0E

    ld [bc], a                                    ; $4A48: $02
    db $10                                        ; $4A49: $10
    ld b, $04                                     ; $4A4A: $06 $04
    db $10                                        ; $4A4C: $10
    ld c, $06                                     ; $4A4D: $0E $06
    nop                                           ; $4A4F: $00
    ld bc, $0000                                  ; $4A50: $01 $00 $00
    ld [hl], a                                    ; $4A53: $77
    ld c, $59                                     ; $4A54: $0E $59

jr_008_4A56:
    ld c, d                                       ; $4A56: $4A
    ld a, [$0904]                                 ; $4A57: $FA $04 $09
    db $10                                        ; $4A5A: $10
    xor $00                                       ; $4A5B: $EE $00
    db $10                                        ; $4A5D: $10
    or $02                                        ; $4A5E: $F6 $02
    db $10                                        ; $4A60: $10
    cp $04                                        ; $4A61: $FE $04
    db $10                                        ; $4A63: $10
    ld b, $06                                     ; $4A64: $06 $06
    db $10                                        ; $4A66: $10
    ld c, $08                                     ; $4A67: $0E $08
    dec e                                         ; $4A69: $1D
    inc d                                         ; $4A6A: $14
    ld a, [bc]                                    ; $4A6B: $0A
    jr nz, jr_008_4A6E                            ; $4A6C: $20 $00

jr_008_4A6E:
    inc c                                         ; $4A6E: $0C
    jr nz, jr_008_4A79                            ; $4A6F: $20 $08

    ld c, $30                                     ; $4A71: $0E $30
    inc b                                         ; $4A73: $04
    stop                                          ; $4A74: $10 $00
    ld bc, $2000                                  ; $4A76: $01 $00 $20

jr_008_4A79:
    ld a, b                                       ; $4A79: $78
    ld c, $7F                                     ; $4A7A: $0E $7F
    ld c, d                                       ; $4A7C: $4A
    ei                                            ; $4A7D: $FB
    inc bc                                        ; $4A7E: $03
    inc c                                         ; $4A7F: $0C
    ld [hl+], a                                   ; $4A80: $22
    and $00                                       ; $4A81: $E6 $00
    rra                                           ; $4A83: $1F
    xor $02                                       ; $4A84: $EE $02
    ld a, [de]                                    ; $4A86: $1A
    or $04                                        ; $4A87: $F6 $04
    ld a, [hl+]                                   ; $4A89: $2A
    or $06                                        ; $4A8A: $F6 $06
    dec de                                        ; $4A8C: $1B
    cp $08                                        ; $4A8D: $FE $08
    dec de                                        ; $4A8F: $1B
    ld b, $0A                                     ; $4A90: $06 $0A
    ld a, [de]                                    ; $4A92: $1A
    ld c, $0C                                     ; $4A93: $0E $0C
    dec hl                                        ; $4A95: $2B
    inc bc                                        ; $4A96: $03
    ld c, $2A                                     ; $4A97: $0E $2A
    inc c                                         ; $4A99: $0C
    db $10                                        ; $4A9A: $10
    inc hl                                        ; $4A9B: $23
    inc d                                         ; $4A9C: $14
    ld [de], a                                    ; $4A9D: $12
    rla                                           ; $4A9E: $17
    inc e                                         ; $4A9F: $1C
    inc d                                         ; $4AA0: $14
    inc hl                                        ; $4AA1: $23
    inc h                                         ; $4AA2: $24
    ld d, $00                                     ; $4AA3: $16 $00
    ld bc, $A000                                  ; $4AA5: $01 $00 $A0
    ld a, c                                       ; $4AA8: $79
    ld c, $AE                                     ; $4AA9: $0E $AE
    ld c, d                                       ; $4AAB: $4A
    ld a, [$0C00]                                 ; $4AAC: $FA $00 $0C
    dec d                                         ; $4AAF: $15
    ld a, [$1800]                                 ; $4AB0: $FA $00 $18
    ld [bc], a                                    ; $4AB3: $02
    ld [bc], a                                    ; $4AB4: $02

jr_008_4AB5:
    inc de                                        ; $4AB5: $13
    dec bc                                        ; $4AB6: $0B
    inc b                                         ; $4AB7: $04
    dec h                                         ; $4AB8: $25
    ld a, [$2806]                                 ; $4AB9: $FA $06 $28
    ld [bc], a                                    ; $4ABC: $02
    ld [$0A23], sp                                ; $4ABD: $08 $23 $0A
    ld a, [bc]                                    ; $4AC0: $0A
    jr z, jr_008_4AB5                             ; $4AC1: $28 $F2

    inc c                                         ; $4AC3: $0C
    ld l, $EA                                     ; $4AC4: $2E $EA
    ld c, $35                                     ; $4AC6: $0E $35
    ld a, [$3310]                                 ; $4AC8: $FA $10 $33
    ld a, [bc]                                    ; $4ACB: $0A
    ld [de], a                                    ; $4ACC: $12
    inc hl                                        ; $4ACD: $23
    ld [de], a                                    ; $4ACE: $12
    inc d                                         ; $4ACF: $14
    ld l, $1A                                     ; $4AD0: $2E $1A
    ld d, $00                                     ; $4AD2: $16 $00
    ld bc, $2000                                  ; $4AD4: $01 $00 $20
    ld a, e                                       ; $4AD7: $7B
    ld c, $DD                                     ; $4AD8: $0E $DD
    ld c, d                                       ; $4ADA: $4A
    ld sp, hl                                     ; $4ADB: $F9
    ld [bc], a                                    ; $4ADC: $02
    inc c                                         ; $4ADD: $0C
    ld l, $EE                                     ; $4ADE: $2E $EE
    nop                                           ; $4AE0: $00
    ld l, $F6                                     ; $4AE1: $2E $F6
    ld [bc], a                                    ; $4AE3: $02
    ld l, $FE                                     ; $4AE4: $2E $FE
    inc b                                         ; $4AE6: $04
    ld l, $06                                     ; $4AE7: $2E $06
    ld b, $2E                                     ; $4AE9: $06 $2E
    ld c, $08                                     ; $4AEB: $0E $08
    ld l, $16                                     ; $4AED: $2E $16
    ld a, [bc]                                    ; $4AEF: $0A
    ld e, $F6                                     ; $4AF0: $1E $F6
    inc c                                         ; $4AF2: $0C
    ld e, $FE                                     ; $4AF3: $1E $FE
    ld c, $1E                                     ; $4AF5: $0E $1E
    ld b, $10                                     ; $4AF7: $06 $10
    ld e, $0E                                     ; $4AF9: $1E $0E
    ld [de], a                                    ; $4AFB: $12
    ld e, $16                                     ; $4AFC: $1E $16
    inc d                                         ; $4AFE: $14
    ld h, $1E                                     ; $4AFF: $26 $1E
    ld d, $00                                     ; $4B01: $16 $00
    ld bc, $8000                                  ; $4B03: $01 $00 $80
    ld [hl], c                                    ; $4B06: $71
    ld c, $0C                                     ; $4B07: $0E $0C

jr_008_4B09:
    ld c, e                                       ; $4B09: $4B
    db $F4                                        ; $4B0A: $F4
    nop                                           ; $4B0B: $00
    rlca                                          ; $4B0C: $07
    jr nz, jr_008_4B09                            ; $4B0D: $20 $FA

    nop                                           ; $4B0F: $00
    jr nz, @+$04                                  ; $4B10: $20 $02

    ld [bc], a                                    ; $4B12: $02
    jr nz, jr_008_4B1F                            ; $4B13: $20 $0A

    inc b                                         ; $4B15: $04
    jr nz, jr_008_4B2A                            ; $4B16: $20 $12

    ld b, $10                                     ; $4B18: $06 $10
    ld a, [$1008]                                 ; $4B1A: $FA $08 $10
    rlca                                          ; $4B1D: $07
    ld a, [bc]                                    ; $4B1E: $0A

jr_008_4B1F:
    ld d, $17                                     ; $4B1F: $16 $17
    inc c                                         ; $4B21: $0C
    nop                                           ; $4B22: $00
    ld h, b                                       ; $4B23: $60
    ld [hl], d                                    ; $4B24: $72
    ld c, $2A                                     ; $4B25: $0E $2A
    ld c, e                                       ; $4B27: $4B
    db $F4                                        ; $4B28: $F4
    nop                                           ; $4B29: $00

jr_008_4B2A:
    inc bc                                        ; $4B2A: $03
    jr nc, jr_008_4B2E                            ; $4B2B: $30 $01

    nop                                           ; $4B2D: $00

jr_008_4B2E:
    jr nc, jr_008_4B39                            ; $4B2E: $30 $09

    ld [bc], a                                    ; $4B30: $02
    ld a, [hl-]                                   ; $4B31: $3A
    ld de, $0004                                  ; $4B32: $11 $04 $00
    ld bc, $C000                                  ; $4B35: $01 $00 $C0
    ld [hl], d                                    ; $4B38: $72

jr_008_4B39:
    ld c, $3E                                     ; $4B39: $0E $3E
    ld c, e                                       ; $4B3B: $4B
    db $F4                                        ; $4B3C: $F4
    nop                                           ; $4B3D: $00
    ld b, $20                                     ; $4B3E: $06 $20
    db $FC                                        ; $4B40: $FC
    nop                                           ; $4B41: $00
    jr nz, jr_008_4B48                            ; $4B42: $20 $04

    ld [bc], a                                    ; $4B44: $02
    jr nz, @+$0E                                  ; $4B45: $20 $0C

    inc b                                         ; $4B47: $04

jr_008_4B48:
    jr jr_008_4B5E                                ; $4B48: $18 $14

    ld b, $10                                     ; $4B4A: $06 $10
    db $FC                                        ; $4B4C: $FC
    ld [$0610], sp                                ; $4B4D: $08 $10 $06
    ld a, [bc]                                    ; $4B50: $0A
    nop                                           ; $4B51: $00
    ld bc, $8000                                  ; $4B52: $01 $00 $80
    ld [hl], e                                    ; $4B55: $73
    ld c, $5B                                     ; $4B56: $0E $5B

jr_008_4B58:
    ld c, e                                       ; $4B58: $4B
    db $F4                                        ; $4B59: $F4
    nop                                           ; $4B5A: $00
    rlca                                          ; $4B5B: $07
    jr nz, jr_008_4B58                            ; $4B5C: $20 $FA

jr_008_4B5E:
    nop                                           ; $4B5E: $00
    jr nz, @+$04                                  ; $4B5F: $20 $02

    ld [bc], a                                    ; $4B61: $02
    jr nz, jr_008_4B6E                            ; $4B62: $20 $0A

    inc b                                         ; $4B64: $04
    db $10                                        ; $4B65: $10
    db $FD                                        ; $4B66: $FD
    ld b, $10                                     ; $4B67: $06 $10
    dec b                                         ; $4B69: $05
    ld [$1219], sp                                ; $4B6A: $08 $19 $12
    ld a, [bc]                                    ; $4B6D: $0A

jr_008_4B6E:
    dec d                                         ; $4B6E: $15
    ld a, [de]                                    ; $4B6F: $1A
    inc c                                         ; $4B70: $0C
    nop                                           ; $4B71: $00
    ld bc, $6000                                  ; $4B72: $01 $00 $60
    ld [hl], h                                    ; $4B75: $74
    ld c, $7B                                     ; $4B76: $0E $7B
    ld c, e                                       ; $4B78: $4B
    db $F4                                        ; $4B79: $F4
    nop                                           ; $4B7A: $00
    ld b, $20                                     ; $4B7B: $06 $20
    db $FC                                        ; $4B7D: $FC
    nop                                           ; $4B7E: $00
    jr nz, jr_008_4B85                            ; $4B7F: $20 $04

    ld [bc], a                                    ; $4B81: $02
    jr nz, @+$0E                                  ; $4B82: $20 $0C

    inc b                                         ; $4B84: $04

jr_008_4B85:
    jr jr_008_4B9B                                ; $4B85: $18 $14

    ld b, $10                                     ; $4B87: $06 $10
    db $FC                                        ; $4B89: $FC
    ld [$0610], sp                                ; $4B8A: $08 $10 $06
    ld a, [bc]                                    ; $4B8D: $0A
    nop                                           ; $4B8E: $00
    ld bc, $2000                                  ; $4B8F: $01 $00 $20
    ld [hl], l                                    ; $4B92: $75
    ld c, $A2                                     ; $4B93: $0E $A2
    ld c, e                                       ; $4B95: $4B
    ld hl, sp-$0F                                 ; $4B96: $F8 $F1
    jr nz, jr_008_4B9B                            ; $4B98: $20 $01

    nop                                           ; $4B9A: $00

jr_008_4B9B:
    jr nz, jr_008_4C12                            ; $4B9B: $20 $75

    ld c, $A2                                     ; $4B9D: $0E $A2
    ld c, e                                       ; $4B9F: $4B
    ld sp, hl                                     ; $4BA0: $F9
    pop af                                        ; $4BA1: $F1
    ld b, $20                                     ; $4BA2: $06 $20
    xor $00                                       ; $4BA4: $EE $00
    jr nz, @-$08                                  ; $4BA6: $20 $F6

    ld [bc], a                                    ; $4BA8: $02

jr_008_4BA9:
    jr nz, jr_008_4BA9                            ; $4BA9: $20 $FE

    inc b                                         ; $4BAB: $04
    jr nz, jr_008_4BB4                            ; $4BAC: $20 $06

    ld b, $20                                     ; $4BAE: $06 $20
    ld c, $08                                     ; $4BB0: $0E $08
    jr nz, @+$18                                  ; $4BB2: $20 $16

jr_008_4BB4:
    ld a, [bc]                                    ; $4BB4: $0A
    nop                                           ; $4BB5: $00
    ldh [$FF75], a                                ; $4BB6: $E0 $75
    ld c, $BD                                     ; $4BB8: $0E $BD
    ld c, e                                       ; $4BBA: $4B
    db $F4                                        ; $4BBB: $F4
    nop                                           ; $4BBC: $00
    add hl, bc                                    ; $4BBD: $09
    ld a, [de]                                    ; $4BBE: $1A
    db $FC                                        ; $4BBF: $FC
    nop                                           ; $4BC0: $00
    dec e                                         ; $4BC1: $1D
    inc b                                         ; $4BC2: $04
    ld [bc], a                                    ; $4BC3: $02
    rra                                           ; $4BC4: $1F
    inc c                                         ; $4BC5: $0C
    inc b                                         ; $4BC6: $04
    dec e                                         ; $4BC7: $1D
    inc d                                         ; $4BC8: $14
    ld b, $2A                                     ; $4BC9: $06 $2A
    db $FD                                        ; $4BCB: $FD
    ld [$052D], sp                                ; $4BCC: $08 $2D $05
    ld a, [bc]                                    ; $4BCF: $0A
    cpl                                           ; $4BD0: $2F
    dec c                                         ; $4BD1: $0D
    inc c                                         ; $4BD2: $0C
    dec sp                                        ; $4BD3: $3B
    ld [bc], a                                    ; $4BD4: $02
    ld c, $3E                                     ; $4BD5: $0E $3E
    ld a, [$0010]                                 ; $4BD7: $FA $10 $00
    ld bc, $6000                                  ; $4BDA: $01 $00 $60
    ld d, d                                       ; $4BDD: $52
    ld c, $E3                                     ; $4BDE: $0E $E3
    ld c, e                                       ; $4BE0: $4B
    db $FC                                        ; $4BE1: $FC
    nop                                           ; $4BE2: $00
    add hl, bc                                    ; $4BE3: $09
    ld sp, $00F7                                  ; $4BE4: $31 $F7 $00
    dec hl                                        ; $4BE7: $2B
    rst RST_38                                    ; $4BE8: $FF
    ld [bc], a                                    ; $4BE9: $02
    jr nc, @+$09                                  ; $4BEA: $30 $07

    inc b                                         ; $4BEC: $04
    dec d                                         ; $4BED: $15
    rst RST_30                                    ; $4BEE: $F7
    ld b, $1B                                     ; $4BEF: $06 $1B
    rst RST_38                                    ; $4BF1: $FF
    ld [$0720], sp                                ; $4BF2: $08 $20 $07
    ld a, [bc]                                    ; $4BF5: $0A
    ld hl, $0C0F                                  ; $4BF6: $21 $0F $0C
    ld e, $17                                     ; $4BF9: $1E $17
    ld c, $3A                                     ; $4BFB: $0E $3A
    rrca                                          ; $4BFD: $0F
    stop                                          ; $4BFE: $10 $00
    ld bc, $8000                                  ; $4C00: $01 $00 $80
    ld d, e                                       ; $4C03: $53
    ld c, $27                                     ; $4C04: $0E $27
    ld c, h                                       ; $4C06: $4C
    cp $00                                        ; $4C07: $FE $00
    jr nz, jr_008_4C0C                            ; $4C09: $20 $01

    nop                                           ; $4C0B: $00

jr_008_4C0C:
    add b                                         ; $4C0C: $80
    ld d, e                                       ; $4C0D: $53
    ld c, $27                                     ; $4C0E: $0E $27
    ld c, h                                       ; $4C10: $4C
    dec b                                         ; $4C11: $05

jr_008_4C12:
    nop                                           ; $4C12: $00
    ld b, b                                       ; $4C13: $40
    ld bc, $8000                                  ; $4C14: $01 $00 $80
    ld d, e                                       ; $4C17: $53
    ld c, $27                                     ; $4C18: $0E $27
    ld c, h                                       ; $4C1A: $4C
    ld a, [$60FB]                                 ; $4C1B: $FA $FB $60
    ld bc, $8000                                  ; $4C1E: $01 $00 $80
    ld d, e                                       ; $4C21: $53
    ld c, $27                                     ; $4C22: $0E $27
    ld c, h                                       ; $4C24: $4C
    ld b, $FB                                     ; $4C25: $06 $FB
    ld [$F61C], sp                                ; $4C27: $08 $1C $F6
    nop                                           ; $4C2A: $00

jr_008_4C2B:
    jr jr_008_4C2B                                ; $4C2B: $18 $FE

    ld [bc], a                                    ; $4C2D: $02
    ld d, $06                                     ; $4C2E: $16 $06
    inc b                                         ; $4C30: $04
    ld d, $0E                                     ; $4C31: $16 $0E
    ld b, $28                                     ; $4C33: $06 $28
    cp $08                                        ; $4C35: $FE $08
    ld h, $06                                     ; $4C37: $26 $06
    ld a, [bc]                                    ; $4C39: $0A
    ld h, $0E                                     ; $4C3A: $26 $0E
    inc c                                         ; $4C3C: $0C
    ld [hl], $04                                  ; $4C3D: $36 $04
    ld c, $00                                     ; $4C3F: $0E $00
    ld bc, $8000                                  ; $4C41: $01 $00 $80
    ld d, h                                       ; $4C44: $54
    ld c, $4A                                     ; $4C45: $0E $4A

jr_008_4C47:
    ld c, h                                       ; $4C47: $4C
    inc bc                                        ; $4C48: $03
    nop                                           ; $4C49: $00
    add hl, bc                                    ; $4C4A: $09
    cpl                                           ; $4C4B: $2F
    rst RST_28                                    ; $4C4C: $EF
    nop                                           ; $4C4D: $00
    jr nc, jr_008_4C47                            ; $4C4E: $30 $F7

    ld [bc], a                                    ; $4C50: $02
    jr nc, @+$01                                  ; $4C51: $30 $FF

    inc b                                         ; $4C53: $04
    jr nc, jr_008_4C5D                            ; $4C54: $30 $07

    ld b, $1A                                     ; $4C56: $06 $1A
    rst RST_28                                    ; $4C58: $EF
    ld [$F720], sp                                ; $4C59: $08 $20 $F7
    ld a, [bc]                                    ; $4C5C: $0A

jr_008_4C5D:
    jr nz, @+$01                                  ; $4C5D: $20 $FF

    inc c                                         ; $4C5F: $0C
    jr nz, jr_008_4C69                            ; $4C60: $20 $07

    ld c, $23                                     ; $4C62: $0E $23
    rrca                                          ; $4C64: $0F
    stop                                          ; $4C65: $10 $00
    inc e                                         ; $4C67: $1C
    nop                                           ; $4C68: $00

jr_008_4C69:
    and b                                         ; $4C69: $A0
    ld d, l                                       ; $4C6A: $55
    ld c, $7A                                     ; $4C6B: $0E $7A
    ld c, h                                       ; $4C6D: $4C
    db $FD                                        ; $4C6E: $FD
    inc h                                         ; $4C6F: $24
    ld h, b                                       ; $4C70: $60
    inc e                                         ; $4C71: $1C
    nop                                           ; $4C72: $00
    and b                                         ; $4C73: $A0
    ld d, l                                       ; $4C74: $55
    ld c, $7A                                     ; $4C75: $0E $7A
    ld c, h                                       ; $4C77: $4C
    nop                                           ; $4C78: $00
    nop                                           ; $4C79: $00
    ld a, [bc]                                    ; $4C7A: $0A
    ld [$00EE], sp                                ; $4C7B: $08 $EE $00
    ld [$02F6], sp                                ; $4C7E: $08 $F6 $02
    ld [$04FE], sp                                ; $4C81: $08 $FE $04
    ld [$0606], sp                                ; $4C84: $08 $06 $06
    ld [$080E], sp                                ; $4C87: $08 $0E $08
    ld [$0A16], sp                                ; $4C8A: $08 $16 $0A
    jr @-$0E                                      ; $4C8D: $18 $F0

    inc c                                         ; $4C8F: $0C
    jr jr_008_4C9B                                ; $4C90: $18 $09

    ld c, $18                                     ; $4C92: $0E $18
    ld de, $1810                                  ; $4C94: $11 $10 $18
    add hl, de                                    ; $4C97: $19
    ld [de], a                                    ; $4C98: $12
    nop                                           ; $4C99: $00
    inc e                                         ; $4C9A: $1C

jr_008_4C9B:
    nop                                           ; $4C9B: $00
    ldh [rRP], a                                  ; $4C9C: $E0 $56
    ld c, $A3                                     ; $4C9E: $0E $A3
    ld c, h                                       ; $4CA0: $4C
    pop af                                        ; $4CA1: $F1
    ld [bc], a                                    ; $4CA2: $02
    ld b, $30                                     ; $4CA3: $06 $30
    ld sp, hl                                     ; $4CA5: $F9
    nop                                           ; $4CA6: $00
    jr nc, jr_008_4CAA                            ; $4CA7: $30 $01

    ld [bc], a                                    ; $4CA9: $02

jr_008_4CAA:
    jr nc, jr_008_4CB5                            ; $4CAA: $30 $09

    inc b                                         ; $4CAC: $04
    jr nc, jr_008_4CC0                            ; $4CAD: $30 $11

    ld b, $30                                     ; $4CAF: $06 $30
    add hl, de                                    ; $4CB1: $19
    ld [$2137], sp                                ; $4CB2: $08 $37 $21

jr_008_4CB5:
    ld a, [bc]                                    ; $4CB5: $0A
    nop                                           ; $4CB6: $00
    ld bc, $0000                                  ; $4CB7: $01 $00 $00
    ld b, b                                       ; $4CBA: $40
    ld [hl+], a                                   ; $4CBB: $22
    ret nz                                        ; $4CBC: $C0

    ld c, h                                       ; $4CBD: $4C
    db $F4                                        ; $4CBE: $F4
    nop                                           ; $4CBF: $00

jr_008_4CC0:
    ld [$061A], sp                                ; $4CC0: $08 $1A $06
    nop                                           ; $4CC3: $00
    rla                                           ; $4CC4: $17
    ld c, $02                                     ; $4CC5: $0E $02
    inc d                                         ; $4CC7: $14
    ld d, $04                                     ; $4CC8: $16 $04
    ld a, [hl+]                                   ; $4CCA: $2A
    ld b, $06                                     ; $4CCB: $06 $06
    daa                                           ; $4CCD: $27
    ld c, $08                                     ; $4CCE: $0E $08
    inc h                                         ; $4CD0: $24
    ld d, $0A                                     ; $4CD1: $16 $0A
    ld a, [hl-]                                   ; $4CD3: $3A
    dec b                                         ; $4CD4: $05
    inc c                                         ; $4CD5: $0C
    inc [hl]                                      ; $4CD6: $34
    db $10                                        ; $4CD7: $10
    ld c, $00                                     ; $4CD8: $0E $00
    ld bc, $0000                                  ; $4CDA: $01 $00 $00
    ld b, c                                       ; $4CDD: $41
    ld [hl+], a                                   ; $4CDE: $22
    rst RST_30                                    ; $4CDF: $F7
    ld c, h                                       ; $4CE0: $4C
    ld hl, sp+$00                                 ; $4CE1: $F8 $00
    nop                                           ; $4CE3: $00
    cp e                                          ; $4CE4: $BB
    inc [hl]                                      ; $4CE5: $34
    nop                                           ; $4CE6: $00
    ld b, c                                       ; $4CE7: $41
    ld [hl+], a                                   ; $4CE8: $22
    rst RST_30                                    ; $4CE9: $F7
    ld c, h                                       ; $4CEA: $4C
    ld hl, sp+$00                                 ; $4CEB: $F8 $00
    nop                                           ; $4CED: $00
    ld b, $05                                     ; $4CEE: $06 $05
    nop                                           ; $4CF0: $00
    ld b, c                                       ; $4CF1: $41
    ld [hl+], a                                   ; $4CF2: $22
    rst RST_30                                    ; $4CF3: $F7
    ld c, h                                       ; $4CF4: $4C
    ld hl, sp+$00                                 ; $4CF5: $F8 $00
    inc b                                         ; $4CF7: $04
    ld e, $06                                     ; $4CF8: $1E $06
    nop                                           ; $4CFA: $00
    ld e, $0E                                     ; $4CFB: $1E $0E
    ld [bc], a                                    ; $4CFD: $02
    ld l, $06                                     ; $4CFE: $2E $06
    inc b                                         ; $4D00: $04
    dec [hl]                                      ; $4D01: $35
    inc c                                         ; $4D02: $0C
    ld b, $00                                     ; $4D03: $06 $00
    add b                                         ; $4D05: $80
    ld b, c                                       ; $4D06: $41
    ld [hl+], a                                   ; $4D07: $22
    inc c                                         ; $4D08: $0C
    ld c, l                                       ; $4D09: $4D
    ldh [rP1], a                                  ; $4D0A: $E0 $00
    inc c                                         ; $4D0C: $0C
    dec e                                         ; $4D0D: $1D
    ld d, $00                                     ; $4D0E: $16 $00
    dec l                                         ; $4D10: $2D
    ld d, $02                                     ; $4D11: $16 $02
    add hl, sp                                    ; $4D13: $39
    ld de, $1C04                                  ; $4D14: $11 $04 $1C
    ld c, $06                                     ; $4D17: $0E $06
    inc d                                         ; $4D19: $14

jr_008_4D1A:
    ld b, $08                                     ; $4D1A: $06 $08
    jr z, jr_008_4D24                             ; $4D1C: $28 $06

    ld a, [bc]                                    ; $4D1E: $0A
    ld a, [hl+]                                   ; $4D1F: $2A
    cp $0C                                        ; $4D20: $FE $0C
    jr z, jr_008_4D1A                             ; $4D22: $28 $F6

jr_008_4D24:
    ld c, $24                                     ; $4D24: $0E $24
    rst RST_28                                    ; $4D26: $EF
    db $10                                        ; $4D27: $10
    ld [hl+], a                                   ; $4D28: $22
    rst RST_20                                    ; $4D29: $E7
    ld [de], a                                    ; $4D2A: $12
    inc d                                         ; $4D2B: $14
    rst RST_28                                    ; $4D2C: $EF
    inc d                                         ; $4D2D: $14
    dec d                                         ; $4D2E: $15
    rst RST_30                                    ; $4D2F: $F7
    ld d, $00                                     ; $4D30: $16 $00
    nop                                           ; $4D32: $00
    ld b, e                                       ; $4D33: $43
    ld [hl+], a                                   ; $4D34: $22
    add hl, sp                                    ; $4D35: $39
    ld c, l                                       ; $4D36: $4D
    ldh [rP1], a                                  ; $4D37: $E0 $00
    ld [$161D], sp                                ; $4D39: $08 $1D $16
    nop                                           ; $4D3C: $00
    dec l                                         ; $4D3D: $2D
    ld d, $02                                     ; $4D3E: $16 $02
    add hl, sp                                    ; $4D40: $39
    ld de, $1B04                                  ; $4D41: $11 $04 $1B
    ld c, $06                                     ; $4D44: $0E $06
    inc e                                         ; $4D46: $1C
    ld b, $08                                     ; $4D47: $06 $08
    inc l                                         ; $4D49: $2C
    inc bc                                        ; $4D4A: $03
    ld a, [bc]                                    ; $4D4B: $0A
    dec hl                                        ; $4D4C: $2B
    ei                                            ; $4D4D: $FB
    inc c                                         ; $4D4E: $0C
    daa                                           ; $4D4F: $27
    push af                                       ; $4D50: $F5
    ld c, $00                                     ; $4D51: $0E $00
    nop                                           ; $4D53: $00
    ld b, h                                       ; $4D54: $44
    ld [hl+], a                                   ; $4D55: $22
    ld e, d                                       ; $4D56: $5A
    ld c, l                                       ; $4D57: $4D
    ldh [rP1], a                                  ; $4D58: $E0 $00
    ld b, $19                                     ; $4D5A: $06 $19
    ld d, $00                                     ; $4D5C: $16 $00
    add hl, hl                                    ; $4D5E: $29
    ld d, $02                                     ; $4D5F: $16 $02
    add hl, sp                                    ; $4D61: $39
    ld de, $1804                                  ; $4D62: $11 $04 $18
    ld c, $06                                     ; $4D65: $0E $06
    jr z, jr_008_4D77                             ; $4D67: $28 $0E

    ld [$0614], sp                                ; $4D69: $08 $14 $06
    ld a, [bc]                                    ; $4D6C: $0A
    nop                                           ; $4D6D: $00
    ld bc, $C000                                  ; $4D6E: $01 $00 $C0
    ld b, h                                       ; $4D71: $44
    ld [hl+], a                                   ; $4D72: $22
    ld [hl], a                                    ; $4D73: $77
    ld c, l                                       ; $4D74: $4D
    ldh a, [rP1]                                  ; $4D75: $F0 $00

jr_008_4D77:
    dec bc                                        ; $4D77: $0B
    ld d, $FB                                     ; $4D78: $16 $FB
    nop                                           ; $4D7A: $00
    rra                                           ; $4D7B: $1F
    inc bc                                        ; $4D7C: $03
    ld [bc], a                                    ; $4D7D: $02
    dec de                                        ; $4D7E: $1B
    dec bc                                        ; $4D7F: $0B
    inc b                                         ; $4D80: $04
    dec de                                        ; $4D81: $1B
    inc de                                        ; $4D82: $13
    ld b, $1B                                     ; $4D83: $06 $1B
    dec de                                        ; $4D85: $1B
    ld [$0132], sp                                ; $4D86: $08 $32 $01
    ld a, [bc]                                    ; $4D89: $0A
    dec hl                                        ; $4D8A: $2B
    add hl, bc                                    ; $4D8B: $09
    inc c                                         ; $4D8C: $0C
    dec hl                                        ; $4D8D: $2B
    ld de, $2B0E                                  ; $4D8E: $11 $0E $2B
    add hl, de                                    ; $4D91: $19
    db $10                                        ; $4D92: $10
    dec hl                                        ; $4D93: $2B
    ld hl, $3B12                                  ; $4D94: $21 $12 $3B
    inc d                                         ; $4D97: $14
    inc d                                         ; $4D98: $14
    nop                                           ; $4D99: $00
    ld bc, $2000                                  ; $4D9A: $01 $00 $20
    ld b, [hl]                                    ; $4D9D: $46
    ld [hl+], a                                   ; $4D9E: $22

jr_008_4D9F:
    and e                                         ; $4D9F: $A3
    ld c, l                                       ; $4DA0: $4D
    or $00                                        ; $4DA1: $F6 $00
    add hl, bc                                    ; $4DA3: $09
    jr nz, jr_008_4D9F                            ; $4DA4: $20 $F9

    nop                                           ; $4DA6: $00
    jr nz, jr_008_4DAA                            ; $4DA7: $20 $01

    ld [bc], a                                    ; $4DA9: $02

jr_008_4DAA:
    jr nz, jr_008_4DB5                            ; $4DAA: $20 $09

    inc b                                         ; $4DAC: $04
    jr nz, jr_008_4DC0                            ; $4DAD: $20 $11

    ld b, $18                                     ; $4DAF: $06 $18
    add hl, de                                    ; $4DB1: $19
    ld [$FB37], sp                                ; $4DB2: $08 $37 $FB

jr_008_4DB5:
    ld a, [bc]                                    ; $4DB5: $0A
    jr nc, jr_008_4DBB                            ; $4DB6: $30 $03

    inc c                                         ; $4DB8: $0C
    jr nc, jr_008_4DC6                            ; $4DB9: $30 $0B

jr_008_4DBB:
    ld c, $39                                     ; $4DBB: $0E $39
    inc de                                        ; $4DBD: $13
    stop                                          ; $4DBE: $10 $00

jr_008_4DC0:
    ld b, $00                                     ; $4DC0: $06 $00
    ld b, b                                       ; $4DC2: $40
    ld b, a                                       ; $4DC3: $47
    ld [hl+], a                                   ; $4DC4: $22
    ret                                           ; $4DC5: $C9


jr_008_4DC6:
    ld c, l                                       ; $4DC6: $4D
    push af                                       ; $4DC7: $F5
    nop                                           ; $4DC8: $00
    dec bc                                        ; $4DC9: $0B
    ld e, $FD                                     ; $4DCA: $1E $FD
    nop                                           ; $4DCC: $00
    ld [hl+], a                                   ; $4DCD: $22
    dec b                                         ; $4DCE: $05
    ld [bc], a                                    ; $4DCF: $02
    ld hl, $040D                                  ; $4DD0: $21 $0D $04
    jr nz, @+$17                                  ; $4DD3: $20 $15

    ld b, $2E                                     ; $4DD5: $06 $2E
    db $FD                                        ; $4DD7: $FD
    ld [$0532], sp                                ; $4DD8: $08 $32 $05
    ld a, [bc]                                    ; $4DDB: $0A
    ld sp, $0C0D                                  ; $4DDC: $31 $0D $0C
    jr nc, jr_008_4DF6                            ; $4DDF: $30 $15

    ld c, $3A                                     ; $4DE1: $0E $3A
    ei                                            ; $4DE3: $FB
    db $10                                        ; $4DE4: $10
    dec a                                         ; $4DE5: $3D
    di                                            ; $4DE6: $F3
    ld [de], a                                    ; $4DE7: $12
    dec e                                         ; $4DE8: $1D
    jr jr_008_4DFF                                ; $4DE9: $18 $14

    nop                                           ; $4DEB: $00
    ld b, $35                                     ; $4DEC: $06 $35

jr_008_4DEE:
    and b                                         ; $4DEE: $A0
    ld c, b                                       ; $4DEF: $48
    ld [hl+], a                                   ; $4DF0: $22
    push af                                       ; $4DF1: $F5
    ld c, l                                       ; $4DF2: $4D
    or $00                                        ; $4DF3: $F6 $00
    db $10                                        ; $4DF5: $10

jr_008_4DF6:
    jr nc, jr_008_4DEE                            ; $4DF6: $30 $F6

    nop                                           ; $4DF8: $00

jr_008_4DF9:
    jr nc, jr_008_4DF9                            ; $4DF9: $30 $FE

    ld [bc], a                                    ; $4DFB: $02
    jr nc, @+$08                                  ; $4DFC: $30 $06

    inc b                                         ; $4DFE: $04

jr_008_4DFF:
    jr nc, jr_008_4E0F                            ; $4DFF: $30 $0E

    ld b, $30                                     ; $4E01: $06 $30
    ld d, $08                                     ; $4E03: $16 $08
    jr nz, @-$08                                  ; $4E05: $20 $F6

    ld a, [bc]                                    ; $4E07: $0A

jr_008_4E08:
    jr nz, jr_008_4E08                            ; $4E08: $20 $FE

    inc c                                         ; $4E0A: $0C
    jr nz, jr_008_4E13                            ; $4E0B: $20 $06

    ld c, $20                                     ; $4E0D: $0E $20

jr_008_4E0F:
    ld c, $10                                     ; $4E0F: $0E $10
    jr nz, @+$18                                  ; $4E11: $20 $16

jr_008_4E13:
    ld [de], a                                    ; $4E13: $12
    jr nz, jr_008_4E34                            ; $4E14: $20 $1E

    inc d                                         ; $4E16: $14
    db $10                                        ; $4E17: $10
    or $16                                        ; $4E18: $F6 $16
    db $10                                        ; $4E1A: $10
    cp $18                                        ; $4E1B: $FE $18
    db $10                                        ; $4E1D: $10
    ld b, $1A                                     ; $4E1E: $06 $1A
    db $10                                        ; $4E20: $10
    ld c, $1C                                     ; $4E21: $0E $1C
    db $10                                        ; $4E23: $10
    ld d, $1E                                     ; $4E24: $16 $1E
    nop                                           ; $4E26: $00
    ld bc, $A000                                  ; $4E27: $01 $00 $A0
    ld c, d                                       ; $4E2A: $4A
    ld [hl+], a                                   ; $4E2B: $22
    jr nc, jr_008_4E7C                            ; $4E2C: $30 $4E

    db $ED                                        ; $4E2E: $ED
    nop                                           ; $4E2F: $00
    ld [$011F], sp                                ; $4E30: $08 $1F $01
    nop                                           ; $4E33: $00

jr_008_4E34:
    ld d, $09                                     ; $4E34: $16 $09
    ld [bc], a                                    ; $4E36: $02
    ld d, $11                                     ; $4E37: $16 $11
    inc b                                         ; $4E39: $04
    ld h, $09                                     ; $4E3A: $26 $09
    ld b, $26                                     ; $4E3C: $06 $26
    ld de, $3608                                  ; $4E3E: $11 $08 $36
    ld a, [bc]                                    ; $4E41: $0A
    ld a, [bc]                                    ; $4E42: $0A
    ld [hl], $12                                  ; $4E43: $36 $12
    inc c                                         ; $4E45: $0C
    ld [hl], $1A                                  ; $4E46: $36 $1A
    ld c, $00                                     ; $4E48: $0E $00
    ld bc, $A036                                  ; $4E4A: $01 $36 $A0
    ld c, e                                       ; $4E4D: $4B
    ld [hl+], a                                   ; $4E4E: $22
    ld d, e                                       ; $4E4F: $53
    ld c, [hl]                                    ; $4E50: $4E
    di                                            ; $4E51: $F3
    nop                                           ; $4E52: $00
    add hl, bc                                    ; $4E53: $09
    add hl, hl                                    ; $4E54: $29
    jp hl                                         ; $4E55: $E9


    nop                                           ; $4E56: $00
    daa                                           ; $4E57: $27
    pop af                                        ; $4E58: $F1
    ld [bc], a                                    ; $4E59: $02
    ld [hl+], a                                   ; $4E5A: $22
    ld sp, hl                                     ; $4E5B: $F9
    inc b                                         ; $4E5C: $04
    ld [hl+], a                                   ; $4E5D: $22
    ld bc, $2206                                  ; $4E5E: $01 $06 $22
    add hl, bc                                    ; $4E61: $09
    ld [$FF32], sp                                ; $4E62: $08 $32 $FF
    ld a, [bc]                                    ; $4E65: $0A
    ld [hl-], a                                   ; $4E66: $32
    rlca                                          ; $4E67: $07
    inc c                                         ; $4E68: $0C
    jr nc, jr_008_4E7A                            ; $4E69: $30 $0F

    ld c, $35                                     ; $4E6B: $0E $35
    rla                                           ; $4E6D: $17
    stop                                          ; $4E6E: $10 $00
    cp e                                          ; $4E70: $BB
    nop                                           ; $4E71: $00
    ret nz                                        ; $4E72: $C0

    ld c, h                                       ; $4E73: $4C
    ld [hl+], a                                   ; $4E74: $22
    ld a, c                                       ; $4E75: $79
    ld c, [hl]                                    ; $4E76: $4E
    or $00                                        ; $4E77: $F6 $00
    rlca                                          ; $4E79: $07

jr_008_4E7A:
    db $10                                        ; $4E7A: $10
    ei                                            ; $4E7B: $FB

jr_008_4E7C:
    nop                                           ; $4E7C: $00
    db $10                                        ; $4E7D: $10
    ld b, $02                                     ; $4E7E: $06 $02
    db $10                                        ; $4E80: $10
    inc de                                        ; $4E81: $13
    inc b                                         ; $4E82: $04
    db $10                                        ; $4E83: $10
    dec de                                        ; $4E84: $1B
    ld b, $30                                     ; $4E85: $06 $30
    rst RST_38                                    ; $4E87: $FF
    ld [$0730], sp                                ; $4E88: $08 $30 $07
    ld a, [bc]                                    ; $4E8B: $0A
    inc [hl]                                      ; $4E8C: $34
    rrca                                          ; $4E8D: $0F
    inc c                                         ; $4E8E: $0C
    nop                                           ; $4E8F: $00
    and b                                         ; $4E90: $A0
    ld c, l                                       ; $4E91: $4D
    ld [hl+], a                                   ; $4E92: $22
    sub a                                         ; $4E93: $97
    ld c, [hl]                                    ; $4E94: $4E
    or $00                                        ; $4E95: $F6 $00
    ld b, $20                                     ; $4E97: $06 $20
    or $00                                        ; $4E99: $F6 $00

jr_008_4E9B:
    jr nz, jr_008_4E9B                            ; $4E9B: $20 $FE

    ld [bc], a                                    ; $4E9D: $02
    jr nz, @+$08                                  ; $4E9E: $20 $06

    inc b                                         ; $4EA0: $04
    jr nz, @+$10                                  ; $4EA1: $20 $0E

    ld b, $20                                     ; $4EA3: $06 $20
    ld d, $08                                     ; $4EA5: $16 $08
    jr @+$20                                      ; $4EA7: $18 $1E

    ld a, [bc]                                    ; $4EA9: $0A
    nop                                           ; $4EAA: $00
    ld h, b                                       ; $4EAB: $60
    ld c, [hl]                                    ; $4EAC: $4E
    ld [hl+], a                                   ; $4EAD: $22
    or d                                          ; $4EAE: $B2
    ld c, [hl]                                    ; $4EAF: $4E
    or $00                                        ; $4EB0: $F6 $00
    ld b, $20                                     ; $4EB2: $06 $20
    rst RST_30                                    ; $4EB4: $F7
    nop                                           ; $4EB5: $00
    jr nz, @+$01                                  ; $4EB6: $20 $FF

    ld [bc], a                                    ; $4EB8: $02
    jr nz, @+$09                                  ; $4EB9: $20 $07

    inc b                                         ; $4EBB: $04
    jr nz, jr_008_4ECD                            ; $4EBC: $20 $0F

    ld b, $1B                                     ; $4EBE: $06 $1B
    rla                                           ; $4EC0: $17
    ld [$1F18], sp                                ; $4EC1: $08 $18 $1F
    ld a, [bc]                                    ; $4EC4: $0A
    nop                                           ; $4EC5: $00
    jr nz, @+$51                                  ; $4EC6: $20 $4F

    ld [hl+], a                                   ; $4EC8: $22
    call $EA4E                                    ; $4EC9: $CD $4E $EA
    nop                                           ; $4ECC: $00

jr_008_4ECD:
    inc b                                         ; $4ECD: $04
    jr z, jr_008_4EDE                             ; $4ECE: $28 $0E

    nop                                           ; $4ED0: $00
    jr c, @+$10                                   ; $4ED1: $38 $0E

    ld [bc], a                                    ; $4ED3: $02
    jr z, jr_008_4EDC                             ; $4ED4: $28 $06

    inc b                                         ; $4ED6: $04
    jr c, jr_008_4EDF                             ; $4ED7: $38 $06

    ld b, $00                                     ; $4ED9: $06 $00
    nop                                           ; $4EDB: $00

jr_008_4EDC:
    nop                                           ; $4EDC: $00
    and b                                         ; $4EDD: $A0

jr_008_4EDE:
    ld c, a                                       ; $4EDE: $4F

jr_008_4EDF:
    ld [hl+], a                                   ; $4EDF: $22
    xor $4E                                       ; $4EE0: $EE $4E
    ld [$0000], a                                 ; $4EE2: $EA $00 $00
    nop                                           ; $4EE5: $00
    ld sp, hl                                     ; $4EE6: $F9
    and b                                         ; $4EE7: $A0
    ld c, a                                       ; $4EE8: $4F
    ld [hl+], a                                   ; $4EE9: $22
    xor $4E                                       ; $4EEA: $EE $4E
    ld [$0900], a                                 ; $4EEC: $EA $00 $09
    add hl, bc                                    ; $4EEF: $09
    ld e, $00                                     ; $4EF0: $1E $00
    add hl, de                                    ; $4EF2: $19
    ld e, $02                                     ; $4EF3: $1E $02
    add hl, hl                                    ; $4EF5: $29
    ld e, $04                                     ; $4EF6: $1E $04
    add hl, sp                                    ; $4EF8: $39
    ld e, $06                                     ; $4EF9: $1E $06
    rrca                                          ; $4EFB: $0F
    ld d, $08                                     ; $4EFC: $16 $08
    rra                                           ; $4EFE: $1F
    ld d, $0A                                     ; $4EFF: $16 $0A
    cpl                                           ; $4F01: $2F
    ld d, $0C                                     ; $4F02: $16 $0C
    ccf                                           ; $4F04: $3F
    ld d, $0E                                     ; $4F05: $16 $0E
    jr @+$10                                      ; $4F07: $18 $0E

    stop                                          ; $4F09: $10 $00
    ret nz                                        ; $4F0B: $C0

    ld d, b                                       ; $4F0C: $50
    ld [hl+], a                                   ; $4F0D: $22
    ld [de], a                                    ; $4F0E: $12
    ld c, a                                       ; $4F0F: $4F
    ld [$0700], a                                 ; $4F10: $EA $00 $07
    jr z, jr_008_4F23                             ; $4F13: $28 $0E

    nop                                           ; $4F15: $00
    jr c, @+$10                                   ; $4F16: $38 $0E

    ld [bc], a                                    ; $4F18: $02
    jr z, @+$08                                   ; $4F19: $28 $06

    inc b                                         ; $4F1B: $04
    jr c, @+$08                                   ; $4F1C: $38 $06

    ld b, $29                                     ; $4F1E: $06 $29
    cp $08                                        ; $4F20: $FE $08
    add hl, sp                                    ; $4F22: $39

jr_008_4F23:
    cp $0A                                        ; $4F23: $FE $0A
    ld sp, $0CF6                                  ; $4F25: $31 $F6 $0C
    nop                                           ; $4F28: $00
    and b                                         ; $4F29: $A0
    ld d, c                                       ; $4F2A: $51
    ld [hl+], a                                   ; $4F2B: $22
    jr nc, jr_008_4F7D                            ; $4F2C: $30 $4F

    ld [$0600], a                                 ; $4F2E: $EA $00 $06
    jr z, jr_008_4F41                             ; $4F31: $28 $0E

    nop                                           ; $4F33: $00
    jr c, jr_008_4F44                             ; $4F34: $38 $0E

    ld [bc], a                                    ; $4F36: $02
    jr z, @+$08                                   ; $4F37: $28 $06

    inc b                                         ; $4F39: $04
    jr c, @+$08                                   ; $4F3A: $38 $06

    ld b, $2D                                     ; $4F3C: $06 $2D
    cp $08                                        ; $4F3E: $FE $08
    dec a                                         ; $4F40: $3D

jr_008_4F41:
    cp $0A                                        ; $4F41: $FE $0A
    nop                                           ; $4F43: $00

jr_008_4F44:
    nop                                           ; $4F44: $00
    nop                                           ; $4F45: $00
    ld h, b                                       ; $4F46: $60
    ld d, d                                       ; $4F47: $52
    ld [hl+], a                                   ; $4F48: $22
    ld c, l                                       ; $4F49: $4D
    ld c, a                                       ; $4F4A: $4F
    nop                                           ; $4F4B: $00
    nop                                           ; $4F4C: $00
    ld bc, $0620                                  ; $4F4D: $01 $20 $06
    nop                                           ; $4F50: $00
    nop                                           ; $4F51: $00
    inc sp                                        ; $4F52: $33
    ld b, l                                       ; $4F53: $45
    add b                                         ; $4F54: $80
    ld d, d                                       ; $4F55: $52
    ld [hl+], a                                   ; $4F56: $22
    ld e, e                                       ; $4F57: $5B
    ld c, a                                       ; $4F58: $4F
    ld sp, hl                                     ; $4F59: $F9
    inc b                                         ; $4F5A: $04
    dec c                                         ; $4F5B: $0D
    ld [$00F6], sp                                ; $4F5C: $08 $F6 $00
    ei                                            ; $4F5F: $FB

jr_008_4F60:
    cp $02                                        ; $4F60: $FE $02
    db $FC                                        ; $4F62: $FC
    ld b, $04                                     ; $4F63: $06 $04
    ld [$060E], sp                                ; $4F65: $08 $0E $06
    jr jr_008_4F60                                ; $4F68: $18 $F6

    ld [$FE0B], sp                                ; $4F6A: $08 $0B $FE
    ld a, [bc]                                    ; $4F6D: $0A
    inc c                                         ; $4F6E: $0C
    ld b, $0C                                     ; $4F6F: $06 $0C
    jr jr_008_4F81                                ; $4F71: $18 $0E

    ld c, $1B                                     ; $4F73: $0E $1B
    cp $10                                        ; $4F75: $FE $10
    inc e                                         ; $4F77: $1C
    ld b, $12                                     ; $4F78: $06 $12
    jr z, @+$10                                   ; $4F7A: $28 $0E

    inc d                                         ; $4F7C: $14

jr_008_4F7D:
    dec hl                                        ; $4F7D: $2B
    cp $16                                        ; $4F7E: $FE $16
    inc l                                         ; $4F80: $2C

jr_008_4F81:
    ld b, $18                                     ; $4F81: $06 $18
    nop                                           ; $4F83: $00
    jr nz, jr_008_4FDA                            ; $4F84: $20 $54

    ld [hl+], a                                   ; $4F86: $22
    adc e                                         ; $4F87: $8B
    ld c, a                                       ; $4F88: $4F
    add sp, $00                                   ; $4F89: $E8 $00
    ld [$0E1D], sp                                ; $4F8B: $08 $1D $0E
    nop                                           ; $4F8E: $00
    dec l                                         ; $4F8F: $2D
    ld c, $02                                     ; $4F90: $0E $02
    add hl, sp                                    ; $4F92: $39
    add hl, bc                                    ; $4F93: $09
    inc b                                         ; $4F94: $04
    dec de                                        ; $4F95: $1B
    ld b, $06                                     ; $4F96: $06 $06
    inc e                                         ; $4F98: $1C
    cp $08                                        ; $4F99: $FE $08
    dec h                                         ; $4F9B: $25
    or $0A                                        ; $4F9C: $F6 $0A
    dec de                                        ; $4F9E: $1B
    xor $0C                                       ; $4F9F: $EE $0C
    daa                                           ; $4FA1: $27
    and $0E                                       ; $4FA2: $E6 $0E
    nop                                           ; $4FA4: $00
    ld bc, $2000                                  ; $4FA5: $01 $00 $20
    ld d, l                                       ; $4FA8: $55
    ld [hl+], a                                   ; $4FA9: $22
    xor [hl]                                      ; $4FAA: $AE
    ld c, a                                       ; $4FAB: $4F
    ld hl, sp+$00                                 ; $4FAC: $F8 $00
    ld c, $1F                                     ; $4FAE: $0E $1F
    xor $00                                       ; $4FB0: $EE $00
    dec de                                        ; $4FB2: $1B
    or $02                                        ; $4FB3: $F6 $02
    dec de                                        ; $4FB5: $1B
    cp $04                                        ; $4FB6: $FE $04
    dec de                                        ; $4FB8: $1B
    ld b, $06                                     ; $4FB9: $06 $06
    dec de                                        ; $4FBB: $1B
    ld c, $08                                     ; $4FBC: $0E $08
    dec d                                         ; $4FBE: $15
    ld d, $0A                                     ; $4FBF: $16 $0A
    dec hl                                        ; $4FC1: $2B
    di                                            ; $4FC2: $F3
    inc c                                         ; $4FC3: $0C
    dec hl                                        ; $4FC4: $2B
    ei                                            ; $4FC5: $FB
    ld c, $2B                                     ; $4FC6: $0E $2B
    inc bc                                        ; $4FC8: $03
    db $10                                        ; $4FC9: $10
    dec hl                                        ; $4FCA: $2B
    dec bc                                        ; $4FCB: $0B
    ld [de], a                                    ; $4FCC: $12
    ld a, [hl+]                                   ; $4FCD: $2A
    inc de                                        ; $4FCE: $13
    inc d                                         ; $4FCF: $14
    dec sp                                        ; $4FD0: $3B
    cp $16                                        ; $4FD1: $FE $16
    dec sp                                        ; $4FD3: $3B
    ld a, [bc]                                    ; $4FD4: $0A
    jr jr_008_5012                                ; $4FD5: $18 $3B

    ld [de], a                                    ; $4FD7: $12
    ld a, [de]                                    ; $4FD8: $1A
    nop                                           ; $4FD9: $00

jr_008_4FDA:
    ld bc, $E000                                  ; $4FDA: $01 $00 $E0
    ld d, [hl]                                    ; $4FDD: $56
    ld [hl+], a                                   ; $4FDE: $22
    db $E3                                        ; $4FDF: $E3
    ld c, a                                       ; $4FE0: $4F
    ld hl, sp+$00                                 ; $4FE1: $F8 $00
    ld [$FE30], sp                                ; $4FE3: $08 $30 $FE
    nop                                           ; $4FE6: $00
    jr nc, jr_008_4FEF                            ; $4FE7: $30 $06

    ld [bc], a                                    ; $4FE9: $02
    jr nc, jr_008_4FFA                            ; $4FEA: $30 $0E

    inc b                                         ; $4FEC: $04
    jr nz, jr_008_4FF5                            ; $4FED: $20 $06

jr_008_4FEF:
    ld b, $20                                     ; $4FEF: $06 $20
    ld c, $08                                     ; $4FF1: $0E $08
    jr nz, jr_008_500B                            ; $4FF3: $20 $16

jr_008_4FF5:
    ld a, [bc]                                    ; $4FF5: $0A
    db $10                                        ; $4FF6: $10
    ld b, $0C                                     ; $4FF7: $06 $0C
    db $10                                        ; $4FF9: $10

jr_008_4FFA:
    db $10                                        ; $4FFA: $10
    ld c, $00                                     ; $4FFB: $0E $00
    ldh [$FF57], a                                ; $4FFD: $E0 $57
    ld [hl+], a                                   ; $4FFF: $22
    inc b                                         ; $5000: $04
    ld d, b                                       ; $5001: $50
    ld hl, sp+$00                                 ; $5002: $F8 $00
    ld b, $10                                     ; $5004: $06 $10

jr_008_5006:
    or $00                                        ; $5006: $F6 $00
    dec bc                                        ; $5008: $0B
    cp $02                                        ; $5009: $FE $02

jr_008_500B:
    ld a, [bc]                                    ; $500B: $0A
    ld b, $04                                     ; $500C: $06 $04
    jr nz, jr_008_5006                            ; $500E: $20 $F6

    ld b, $1B                                     ; $5010: $06 $1B

jr_008_5012:
    cp $08                                        ; $5012: $FE $08
    dec hl                                        ; $5014: $2B
    inc b                                         ; $5015: $04
    ld a, [bc]                                    ; $5016: $0A
    nop                                           ; $5017: $00
    and b                                         ; $5018: $A0
    ld e, b                                       ; $5019: $58
    ld [hl+], a                                   ; $501A: $22
    rra                                           ; $501B: $1F
    ld d, b                                       ; $501C: $50
    ld hl, sp+$00                                 ; $501D: $F8 $00
    dec b                                         ; $501F: $05
    add hl, bc                                    ; $5020: $09
    inc b                                         ; $5021: $04
    nop                                           ; $5022: $00
    add hl, de                                    ; $5023: $19
    cp $02                                        ; $5024: $FE $02
    add hl, hl                                    ; $5026: $29
    cp $04                                        ; $5027: $FE $04
    add hl, bc                                    ; $5029: $09
    db $FC                                        ; $502A: $FC
    ld b, $19                                     ; $502B: $06 $19
    or $08                                        ; $502D: $F6 $08
    nop                                           ; $502F: $00
    ld bc, $4000                                  ; $5030: $01 $00 $40
    ld e, c                                       ; $5033: $59
    ld [hl+], a                                   ; $5034: $22

jr_008_5035:
    ld b, e                                       ; $5035: $43
    ld d, b                                       ; $5036: $50
    inc b                                         ; $5037: $04
    xor $20                                       ; $5038: $EE $20
    ld bc, $4000                                  ; $503A: $01 $00 $40
    ld e, c                                       ; $503D: $59
    ld [hl+], a                                   ; $503E: $22
    ld b, e                                       ; $503F: $43
    ld d, b                                       ; $5040: $50
    nop                                           ; $5041: $00
    xor $04                                       ; $5042: $EE $04
    jr nz, jr_008_5035                            ; $5044: $20 $EF

    nop                                           ; $5046: $00
    inc e                                         ; $5047: $1C
    rst RST_30                                    ; $5048: $F7
    ld [bc], a                                    ; $5049: $02
    inc e                                         ; $504A: $1C
    rst RST_38                                    ; $504B: $FF
    inc b                                         ; $504C: $04
    inc e                                         ; $504D: $1C
    rlca                                          ; $504E: $07
    ld b, $00                                     ; $504F: $06 $00
    ret nz                                        ; $5051: $C0

    ld e, c                                       ; $5052: $59
    ld [hl+], a                                   ; $5053: $22
    ld e, b                                       ; $5054: $58
    ld d, b                                       ; $5055: $50
    nop                                           ; $5056: $00
    nop                                           ; $5057: $00
    dec bc                                        ; $5058: $0B
    inc e                                         ; $5059: $1C
    ld [$1C00], a                                 ; $505A: $EA $00 $1C
    ldh a, [c]                                    ; $505D: $F2
    ld [bc], a                                    ; $505E: $02
    ld a, [de]                                    ; $505F: $1A
    ld a, [$1D04]                                 ; $5060: $FA $04 $1D
    ld [bc], a                                    ; $5063: $02
    ld b, $1C                                     ; $5064: $06 $1C
    ld a, [bc]                                    ; $5066: $0A
    ld [$FA2A], sp                                ; $5067: $08 $2A $FA
    ld a, [bc]                                    ; $506A: $0A
    dec l                                         ; $506B: $2D
    ld [bc], a                                    ; $506C: $02
    inc c                                         ; $506D: $0C
    inc l                                         ; $506E: $2C
    ld a, [bc]                                    ; $506F: $0A
    ld c, $3A                                     ; $5070: $0E $3A
    or $10                                        ; $5072: $F6 $10
    dec a                                         ; $5074: $3D
    ld [bc], a                                    ; $5075: $02
    ld [de], a                                    ; $5076: $12
    dec a                                         ; $5077: $3D
    ld a, [bc]                                    ; $5078: $0A
    inc d                                         ; $5079: $14
    nop                                           ; $507A: $00
    ld bc, $2000                                  ; $507B: $01 $00 $20
    ld e, e                                       ; $507E: $5B
    ld [hl+], a                                   ; $507F: $22
    sbc [hl]                                      ; $5080: $9E
    ld d, b                                       ; $5081: $50
    inc b                                         ; $5082: $04
    xor $20                                       ; $5083: $EE $20
    ld bc, $2000                                  ; $5085: $01 $00 $20
    ld e, e                                       ; $5088: $5B
    ld [hl+], a                                   ; $5089: $22
    sbc [hl]                                      ; $508A: $9E
    ld d, b                                       ; $508B: $50
    nop                                           ; $508C: $00
    xor $00                                       ; $508D: $EE $00

jr_008_508F:
    jr nz, jr_008_50EC                            ; $508F: $20 $5B

    ld [hl+], a                                   ; $5091: $22
    sbc [hl]                                      ; $5092: $9E
    ld d, b                                       ; $5093: $50
    inc b                                         ; $5094: $04
    xor $20                                       ; $5095: $EE $20
    jr nz, jr_008_50F4                            ; $5097: $20 $5B

    ld [hl+], a                                   ; $5099: $22
    sbc [hl]                                      ; $509A: $9E
    ld d, b                                       ; $509B: $50
    nop                                           ; $509C: $00
    xor $04                                       ; $509D: $EE $04
    jr nz, jr_008_508F                            ; $509F: $20 $EE

    nop                                           ; $50A1: $00
    inc e                                         ; $50A2: $1C
    or $02                                        ; $50A3: $F6 $02
    inc e                                         ; $50A5: $1C
    cp $04                                        ; $50A6: $FE $04
    inc e                                         ; $50A8: $1C
    ld b, $06                                     ; $50A9: $06 $06
    adc l                                         ; $50AB: $8D
    ld d, e                                       ; $50AC: $53
    rst RST_38                                    ; $50AD: $FF
    rst RST_38                                    ; $50AE: $FF
    or b                                          ; $50AF: $B0
    ld d, e                                       ; $50B0: $53
    rst RST_38                                    ; $50B1: $FF
    rst RST_38                                    ; $50B2: $FF
    db $D3                                        ; $50B3: $D3
    ld d, e                                       ; $50B4: $53
    rst RST_38                                    ; $50B5: $FF
    rst RST_38                                    ; $50B6: $FF
    or $53                                        ; $50B7: $F6 $53
    rst RST_38                                    ; $50B9: $FF
    rst RST_38                                    ; $50BA: $FF
    rra                                           ; $50BB: $1F
    ld d, h                                       ; $50BC: $54
    rst RST_38                                    ; $50BD: $FF
    rst RST_38                                    ; $50BE: $FF
    rst RST_38                                    ; $50BF: $FF
    rst RST_38                                    ; $50C0: $FF
    ld c, e                                       ; $50C1: $4B
    ld d, h                                       ; $50C2: $54
    rst RST_38                                    ; $50C3: $FF
    rst RST_38                                    ; $50C4: $FF
    ld a, e                                       ; $50C5: $7B
    ld d, h                                       ; $50C6: $54
    rst RST_38                                    ; $50C7: $FF
    rst RST_38                                    ; $50C8: $FF
    and l                                         ; $50C9: $A5
    ld d, h                                       ; $50CA: $54
    rst RST_38                                    ; $50CB: $FF
    rst RST_38                                    ; $50CC: $FF
    call z, $FF54                                 ; $50CD: $CC $54 $FF
    rst RST_38                                    ; $50D0: $FF
    rst RST_38                                    ; $50D1: $FF
    rst RST_38                                    ; $50D2: $FF
    call z, $FF54                                 ; $50D3: $CC $54 $FF
    rst RST_38                                    ; $50D6: $FF
    and l                                         ; $50D7: $A5
    ld d, h                                       ; $50D8: $54
    rst RST_38                                    ; $50D9: $FF
    rst RST_38                                    ; $50DA: $FF
    ld a, e                                       ; $50DB: $7B
    ld d, h                                       ; $50DC: $54
    rst RST_38                                    ; $50DD: $FF
    rst RST_38                                    ; $50DE: $FF
    ld c, e                                       ; $50DF: $4B
    ld d, h                                       ; $50E0: $54
    rst RST_38                                    ; $50E1: $FF
    rst RST_38                                    ; $50E2: $FF
    rst RST_38                                    ; $50E3: $FF
    rst RST_38                                    ; $50E4: $FF
    di                                            ; $50E5: $F3
    ld d, h                                       ; $50E6: $54
    rst RST_38                                    ; $50E7: $FF
    rst RST_38                                    ; $50E8: $FF
    rst RST_38                                    ; $50E9: $FF
    rst RST_38                                    ; $50EA: $FF
    di                                            ; $50EB: $F3

jr_008_50EC:
    ld d, h                                       ; $50EC: $54
    rst RST_38                                    ; $50ED: $FF
    rst RST_38                                    ; $50EE: $FF
    db $10                                        ; $50EF: $10
    ld d, l                                       ; $50F0: $55
    rst RST_38                                    ; $50F1: $FF
    rst RST_38                                    ; $50F2: $FF
    db $10                                        ; $50F3: $10

jr_008_50F4:
    ld d, l                                       ; $50F4: $55
    rst RST_38                                    ; $50F5: $FF
    rst RST_38                                    ; $50F6: $FF
    dec a                                         ; $50F7: $3D
    ld d, l                                       ; $50F8: $55
    rst RST_38                                    ; $50F9: $FF
    rst RST_38                                    ; $50FA: $FF
    dec a                                         ; $50FB: $3D
    ld d, l                                       ; $50FC: $55
    rst RST_38                                    ; $50FD: $FF
    rst RST_38                                    ; $50FE: $FF
    db $10                                        ; $50FF: $10
    ld d, l                                       ; $5100: $55
    rst RST_38                                    ; $5101: $FF
    rst RST_38                                    ; $5102: $FF
    db $10                                        ; $5103: $10
    ld d, l                                       ; $5104: $55
    rst RST_38                                    ; $5105: $FF
    rst RST_38                                    ; $5106: $FF
    di                                            ; $5107: $F3
    ld d, h                                       ; $5108: $54
    rst RST_38                                    ; $5109: $FF
    rst RST_38                                    ; $510A: $FF
    rst RST_38                                    ; $510B: $FF
    rst RST_38                                    ; $510C: $FF
    ld l, d                                       ; $510D: $6A
    ld d, l                                       ; $510E: $55
    rst RST_38                                    ; $510F: $FF
    rst RST_38                                    ; $5110: $FF
    rst RST_38                                    ; $5111: $FF
    rst RST_38                                    ; $5112: $FF
    ld l, d                                       ; $5113: $6A
    ld d, l                                       ; $5114: $55
    rst RST_38                                    ; $5115: $FF
    rst RST_38                                    ; $5116: $FF
    di                                            ; $5117: $F3
    ld d, h                                       ; $5118: $54
    rst RST_38                                    ; $5119: $FF
    rst RST_38                                    ; $511A: $FF
    rst RST_38                                    ; $511B: $FF
    rst RST_38                                    ; $511C: $FF
    add a                                         ; $511D: $87
    ld d, l                                       ; $511E: $55
    rst RST_38                                    ; $511F: $FF
    rst RST_38                                    ; $5120: $FF
    rst RST_38                                    ; $5121: $FF
    rst RST_38                                    ; $5122: $FF
    and a                                         ; $5123: $A7
    ld d, l                                       ; $5124: $55
    rst RST_38                                    ; $5125: $FF
    rst RST_38                                    ; $5126: $FF
    rst RST_00                                    ; $5127: $C7
    ld d, l                                       ; $5128: $55
    push hl                                       ; $5129: $E5
    ld d, l                                       ; $512A: $55
    and a                                         ; $512B: $A7
    ld d, l                                       ; $512C: $55
    rst RST_38                                    ; $512D: $FF
    rst RST_38                                    ; $512E: $FF
    rst RST_38                                    ; $512F: $FF
    rst RST_38                                    ; $5130: $FF
    inc bc                                        ; $5131: $03
    ld d, [hl]                                    ; $5132: $56
    rst RST_38                                    ; $5133: $FF
    rst RST_38                                    ; $5134: $FF
    inc sp                                        ; $5135: $33
    ld d, [hl]                                    ; $5136: $56
    rst RST_38                                    ; $5137: $FF
    rst RST_38                                    ; $5138: $FF
    inc bc                                        ; $5139: $03
    ld d, [hl]                                    ; $513A: $56
    rst RST_38                                    ; $513B: $FF
    rst RST_38                                    ; $513C: $FF
    rst RST_38                                    ; $513D: $FF
    rst RST_38                                    ; $513E: $FF
    ld h, e                                       ; $513F: $63
    ld d, [hl]                                    ; $5140: $56
    rst RST_38                                    ; $5141: $FF
    rst RST_38                                    ; $5142: $FF
    adc c                                         ; $5143: $89
    ld d, [hl]                                    ; $5144: $56
    rst RST_38                                    ; $5145: $FF
    rst RST_38                                    ; $5146: $FF
    xor a                                         ; $5147: $AF
    ld d, [hl]                                    ; $5148: $56
    rst RST_38                                    ; $5149: $FF
    rst RST_38                                    ; $514A: $FF
    pop hl                                        ; $514B: $E1
    ld d, [hl]                                    ; $514C: $56
    rst RST_38                                    ; $514D: $FF
    rst RST_38                                    ; $514E: $FF
    inc b                                         ; $514F: $04
    ld d, a                                       ; $5150: $57
    rst RST_38                                    ; $5151: $FF
    rst RST_38                                    ; $5152: $FF
    rst RST_38                                    ; $5153: $FF
    rst RST_38                                    ; $5154: $FF
    and a                                         ; $5155: $A7
    ld d, l                                       ; $5156: $55
    rst RST_38                                    ; $5157: $FF
    rst RST_38                                    ; $5158: $FF
    ld l, $57                                     ; $5159: $2E $57
    rst RST_38                                    ; $515B: $FF
    rst RST_38                                    ; $515C: $FF
    ld d, h                                       ; $515D: $54
    ld d, a                                       ; $515E: $57
    rst RST_38                                    ; $515F: $FF
    rst RST_38                                    ; $5160: $FF
    rst RST_38                                    ; $5161: $FF
    rst RST_38                                    ; $5162: $FF
    add c                                         ; $5163: $81
    ld d, a                                       ; $5164: $57
    rst RST_38                                    ; $5165: $FF
    rst RST_38                                    ; $5166: $FF
    sbc [hl]                                      ; $5167: $9E
    ld d, a                                       ; $5168: $57
    rst RST_38                                    ; $5169: $FF
    rst RST_38                                    ; $516A: $FF
    call nz, $FF57                                ; $516B: $C4 $57 $FF
    rst RST_38                                    ; $516E: $FF
    rst RST_38                                    ; $516F: $FF
    rst RST_38                                    ; $5170: $FF
    rlca                                          ; $5171: $07
    ld e, b                                       ; $5172: $58
    rst RST_38                                    ; $5173: $FF
    rst RST_38                                    ; $5174: $FF
    rlca                                          ; $5175: $07
    ld e, b                                       ; $5176: $58
    rst RST_38                                    ; $5177: $FF
    rst RST_38                                    ; $5178: $FF
    db $E4                                        ; $5179: $E4
    ld d, a                                       ; $517A: $57
    rst RST_38                                    ; $517B: $FF
    rst RST_38                                    ; $517C: $FF
    rst RST_38                                    ; $517D: $FF
    rst RST_38                                    ; $517E: $FF
    dec l                                         ; $517F: $2D
    ld e, b                                       ; $5180: $58
    ld c, d                                       ; $5181: $4A
    ld e, b                                       ; $5182: $58
    dec l                                         ; $5183: $2D
    ld e, b                                       ; $5184: $58
    ld e, a                                       ; $5185: $5F
    ld e, b                                       ; $5186: $58
    dec l                                         ; $5187: $2D
    ld e, b                                       ; $5188: $58
    ld e, a                                       ; $5189: $5F
    ld e, b                                       ; $518A: $58
    dec l                                         ; $518B: $2D
    ld e, b                                       ; $518C: $58
    ld e, a                                       ; $518D: $5F
    ld e, b                                       ; $518E: $58
    di                                            ; $518F: $F3
    ld d, h                                       ; $5190: $54
    rst RST_38                                    ; $5191: $FF
    rst RST_38                                    ; $5192: $FF
    rst RST_38                                    ; $5193: $FF
    rst RST_38                                    ; $5194: $FF
    dec c                                         ; $5195: $0D
    ld d, [hl]                                    ; $5196: $56
    rst RST_38                                    ; $5197: $FF
    rst RST_38                                    ; $5198: $FF
    dec a                                         ; $5199: $3D
    ld d, [hl]                                    ; $519A: $56
    rst RST_38                                    ; $519B: $FF
    rst RST_38                                    ; $519C: $FF
    dec a                                         ; $519D: $3D
    ld d, [hl]                                    ; $519E: $56
    rst RST_38                                    ; $519F: $FF
    rst RST_38                                    ; $51A0: $FF
    dec a                                         ; $51A1: $3D
    ld d, [hl]                                    ; $51A2: $56
    rst RST_38                                    ; $51A3: $FF
    rst RST_38                                    ; $51A4: $FF
    di                                            ; $51A5: $F3
    ld d, h                                       ; $51A6: $54
    rst RST_38                                    ; $51A7: $FF
    rst RST_38                                    ; $51A8: $FF
    rst RST_38                                    ; $51A9: $FF
    rst RST_38                                    ; $51AA: $FF
    adc c                                         ; $51AB: $89
    ld d, [hl]                                    ; $51AC: $56
    rst RST_38                                    ; $51AD: $FF
    rst RST_38                                    ; $51AE: $FF
    pop de                                        ; $51AF: $D1
    ld d, l                                       ; $51B0: $55
    push hl                                       ; $51B1: $E5
    ld d, l                                       ; $51B2: $55
    ld [hl], c                                    ; $51B3: $71
    ld e, b                                       ; $51B4: $58
    rst RST_38                                    ; $51B5: $FF
    rst RST_38                                    ; $51B6: $FF
    sub c                                         ; $51B7: $91
    ld e, b                                       ; $51B8: $58
    rst RST_38                                    ; $51B9: $FF
    rst RST_38                                    ; $51BA: $FF
    or c                                          ; $51BB: $B1
    ld e, b                                       ; $51BC: $58
    rst RST_38                                    ; $51BD: $FF
    rst RST_38                                    ; $51BE: $FF
    sub c                                         ; $51BF: $91
    ld e, b                                       ; $51C0: $58
    rst RST_38                                    ; $51C1: $FF
    rst RST_38                                    ; $51C2: $FF
    or c                                          ; $51C3: $B1
    ld e, b                                       ; $51C4: $58
    rst RST_38                                    ; $51C5: $FF
    rst RST_38                                    ; $51C6: $FF
    sub c                                         ; $51C7: $91
    ld e, b                                       ; $51C8: $58
    rst RST_38                                    ; $51C9: $FF
    rst RST_38                                    ; $51CA: $FF
    or c                                          ; $51CB: $B1
    ld e, b                                       ; $51CC: $58
    rst RST_38                                    ; $51CD: $FF
    rst RST_38                                    ; $51CE: $FF
    ld c, $57                                     ; $51CF: $0E $57
    rst RST_38                                    ; $51D1: $FF
    rst RST_38                                    ; $51D2: $FF
    rst RST_38                                    ; $51D3: $FF
    rst RST_38                                    ; $51D4: $FF
    call nc, $FF58                                ; $51D5: $D4 $58 $FF
    rst RST_38                                    ; $51D8: $FF
    di                                            ; $51D9: $F3
    ld d, h                                       ; $51DA: $54
    rst RST_38                                    ; $51DB: $FF
    rst RST_38                                    ; $51DC: $FF
    rst RST_38                                    ; $51DD: $FF
    rst RST_38                                    ; $51DE: $FF
    db $F4                                        ; $51DF: $F4
    ld e, b                                       ; $51E0: $58
    rst RST_38                                    ; $51E1: $FF
    rst RST_38                                    ; $51E2: $FF
    db $F4                                        ; $51E3: $F4
    ld e, b                                       ; $51E4: $58
    rst RST_38                                    ; $51E5: $FF
    rst RST_38                                    ; $51E6: $FF
    di                                            ; $51E7: $F3
    ld d, h                                       ; $51E8: $54
    rst RST_38                                    ; $51E9: $FF
    rst RST_38                                    ; $51EA: $FF
    rst RST_38                                    ; $51EB: $FF
    rst RST_38                                    ; $51EC: $FF
    ld de, $FF59                                  ; $51ED: $11 $59 $FF
    rst RST_38                                    ; $51F0: $FF
    dec a                                         ; $51F1: $3D
    ld e, c                                       ; $51F2: $59
    rst RST_38                                    ; $51F3: $FF
    rst RST_38                                    ; $51F4: $FF
    rst RST_38                                    ; $51F5: $FF
    rst RST_38                                    ; $51F6: $FF
    add a                                         ; $51F7: $87
    ld d, l                                       ; $51F8: $55
    rst RST_38                                    ; $51F9: $FF
    rst RST_38                                    ; $51FA: $FF
    xor c                                         ; $51FB: $A9
    ld e, c                                       ; $51FC: $59
    rst RST_38                                    ; $51FD: $FF
    rst RST_38                                    ; $51FE: $FF
    ld de, $FF59                                  ; $51FF: $11 $59 $FF
    rst RST_38                                    ; $5202: $FF
    rst RST_38                                    ; $5203: $FF
    rst RST_38                                    ; $5204: $FF
    db $D3                                        ; $5205: $D3
    ld d, e                                       ; $5206: $53
    rst RST_38                                    ; $5207: $FF
    rst RST_38                                    ; $5208: $FF
    ld l, h                                       ; $5209: $6C
    ld e, c                                       ; $520A: $59
    ld a, l                                       ; $520B: $7D
    ld e, c                                       ; $520C: $59
    sbc e                                         ; $520D: $9B
    ld e, c                                       ; $520E: $59
    ld a, l                                       ; $520F: $7D
    ld e, c                                       ; $5210: $59
    ld l, h                                       ; $5211: $6C
    ld e, c                                       ; $5212: $59
    ld a, l                                       ; $5213: $7D
    ld e, c                                       ; $5214: $59
    rst RST_38                                    ; $5215: $FF
    rst RST_38                                    ; $5216: $FF
    inc b                                         ; $5217: $04
    ld d, a                                       ; $5218: $57
    rst RST_38                                    ; $5219: $FF
    rst RST_38                                    ; $521A: $FF
    ld c, [hl]                                    ; $521B: $4E
    ld e, h                                       ; $521C: $5C
    rst RST_38                                    ; $521D: $FF
    rst RST_38                                    ; $521E: $FF
    inc b                                         ; $521F: $04
    ld d, a                                       ; $5220: $57
    rst RST_38                                    ; $5221: $FF
    rst RST_38                                    ; $5222: $FF
    ld c, [hl]                                    ; $5223: $4E
    ld e, h                                       ; $5224: $5C
    rst RST_38                                    ; $5225: $FF
    rst RST_38                                    ; $5226: $FF
    inc b                                         ; $5227: $04
    ld d, a                                       ; $5228: $57
    rst RST_38                                    ; $5229: $FF
    rst RST_38                                    ; $522A: $FF
    ld c, [hl]                                    ; $522B: $4E
    ld e, h                                       ; $522C: $5C
    rst RST_38                                    ; $522D: $FF
    rst RST_38                                    ; $522E: $FF
    sbc $59                                       ; $522F: $DE $59
    rst RST_38                                    ; $5231: $FF
    rst RST_38                                    ; $5232: $FF
    rst RST_38                                    ; $5233: $FF
    rst RST_38                                    ; $5234: $FF
    inc b                                         ; $5235: $04
    ld e, d                                       ; $5236: $5A
    rst RST_38                                    ; $5237: $FF
    rst RST_38                                    ; $5238: $FF
    rst RST_38                                    ; $5239: $FF
    rst RST_38                                    ; $523A: $FF
    inc b                                         ; $523B: $04
    ld e, d                                       ; $523C: $5A
    rst RST_38                                    ; $523D: $FF
    rst RST_38                                    ; $523E: $FF
    rst RST_38                                    ; $523F: $FF
    rst RST_38                                    ; $5240: $FF
    adc l                                         ; $5241: $8D
    ld d, e                                       ; $5242: $53
    rst RST_38                                    ; $5243: $FF
    rst RST_38                                    ; $5244: $FF
    inc b                                         ; $5245: $04
    ld e, d                                       ; $5246: $5A
    rst RST_38                                    ; $5247: $FF
    rst RST_38                                    ; $5248: $FF
    daa                                           ; $5249: $27
    ld e, d                                       ; $524A: $5A
    rst RST_38                                    ; $524B: $FF
    rst RST_38                                    ; $524C: $FF
    rst RST_38                                    ; $524D: $FF
    rst RST_38                                    ; $524E: $FF
    ld h, l                                       ; $524F: $65
    ld e, d                                       ; $5250: $5A
    rst RST_38                                    ; $5251: $FF
    rst RST_38                                    ; $5252: $FF
    rst RST_38                                    ; $5253: $FF
    rst RST_38                                    ; $5254: $FF
    inc b                                         ; $5255: $04
    ld e, d                                       ; $5256: $5A
    rst RST_38                                    ; $5257: $FF
    rst RST_38                                    ; $5258: $FF
    db $10                                        ; $5259: $10
    ld d, l                                       ; $525A: $55
    rst RST_38                                    ; $525B: $FF
    rst RST_38                                    ; $525C: $FF
    db $10                                        ; $525D: $10
    ld d, l                                       ; $525E: $55
    rst RST_38                                    ; $525F: $FF
    rst RST_38                                    ; $5260: $FF
    dec a                                         ; $5261: $3D
    ld d, l                                       ; $5262: $55
    rst RST_38                                    ; $5263: $FF
    rst RST_38                                    ; $5264: $FF
    dec a                                         ; $5265: $3D
    ld d, l                                       ; $5266: $55
    rst RST_38                                    ; $5267: $FF
    rst RST_38                                    ; $5268: $FF
    db $10                                        ; $5269: $10
    ld d, l                                       ; $526A: $55
    rst RST_38                                    ; $526B: $FF
    rst RST_38                                    ; $526C: $FF
    di                                            ; $526D: $F3
    ld d, h                                       ; $526E: $54
    rst RST_38                                    ; $526F: $FF
    rst RST_38                                    ; $5270: $FF
    rst RST_38                                    ; $5271: $FF
    rst RST_38                                    ; $5272: $FF
    inc b                                         ; $5273: $04
    ld e, d                                       ; $5274: $5A
    rst RST_38                                    ; $5275: $FF
    rst RST_38                                    ; $5276: $FF
    add d                                         ; $5277: $82
    ld e, d                                       ; $5278: $5A
    rst RST_38                                    ; $5279: $FF
    rst RST_38                                    ; $527A: $FF
    xor h                                         ; $527B: $AC
    ld e, d                                       ; $527C: $5A
    rst RST_38                                    ; $527D: $FF
    rst RST_38                                    ; $527E: $FF
    add d                                         ; $527F: $82
    ld e, d                                       ; $5280: $5A
    rst RST_38                                    ; $5281: $FF
    rst RST_38                                    ; $5282: $FF
    xor h                                         ; $5283: $AC
    ld e, d                                       ; $5284: $5A
    rst RST_38                                    ; $5285: $FF
    rst RST_38                                    ; $5286: $FF
    rst RST_38                                    ; $5287: $FF
    rst RST_38                                    ; $5288: $FF
    daa                                           ; $5289: $27
    ld e, d                                       ; $528A: $5A
    rst RST_38                                    ; $528B: $FF
    rst RST_38                                    ; $528C: $FF
    ld sp, $FF5A                                  ; $528D: $31 $5A $FF
    rst RST_38                                    ; $5290: $FF
    dec sp                                        ; $5291: $3B
    ld e, d                                       ; $5292: $5A
    rst RST_38                                    ; $5293: $FF
    rst RST_38                                    ; $5294: $FF
    ld b, l                                       ; $5295: $45
    ld e, d                                       ; $5296: $5A
    rst RST_38                                    ; $5297: $FF
    rst RST_38                                    ; $5298: $FF
    ld b, l                                       ; $5299: $45
    ld e, d                                       ; $529A: $5A
    rst RST_38                                    ; $529B: $FF
    rst RST_38                                    ; $529C: $FF
    add d                                         ; $529D: $82
    ld e, d                                       ; $529E: $5A
    rst RST_38                                    ; $529F: $FF
    rst RST_38                                    ; $52A0: $FF
    xor h                                         ; $52A1: $AC
    ld e, d                                       ; $52A2: $5A
    rst RST_38                                    ; $52A3: $FF
    rst RST_38                                    ; $52A4: $FF
    rst RST_38                                    ; $52A5: $FF
    rst RST_38                                    ; $52A6: $FF
    inc b                                         ; $52A7: $04
    ld e, d                                       ; $52A8: $5A
    rst RST_38                                    ; $52A9: $FF
    rst RST_38                                    ; $52AA: $FF
    add d                                         ; $52AB: $82
    ld e, d                                       ; $52AC: $5A
    rst RST_38                                    ; $52AD: $FF
    rst RST_38                                    ; $52AE: $FF
    xor h                                         ; $52AF: $AC
    ld e, d                                       ; $52B0: $5A
    rst RST_38                                    ; $52B1: $FF
    rst RST_38                                    ; $52B2: $FF
    rst RST_38                                    ; $52B3: $FF
    rst RST_38                                    ; $52B4: $FF
    adc h                                         ; $52B5: $8C
    ld e, d                                       ; $52B6: $5A
    rst RST_38                                    ; $52B7: $FF
    rst RST_38                                    ; $52B8: $FF
    rst RST_38                                    ; $52B9: $FF
    rst RST_38                                    ; $52BA: $FF
    di                                            ; $52BB: $F3
    ld d, h                                       ; $52BC: $54
    rst RST_38                                    ; $52BD: $FF
    rst RST_38                                    ; $52BE: $FF
    di                                            ; $52BF: $F3
    ld d, h                                       ; $52C0: $54
    rst RST_38                                    ; $52C1: $FF
    rst RST_38                                    ; $52C2: $FF
    rst RST_38                                    ; $52C3: $FF
    rst RST_38                                    ; $52C4: $FF
    ld l, d                                       ; $52C5: $6A
    ld d, l                                       ; $52C6: $55
    rst RST_38                                    ; $52C7: $FF
    rst RST_38                                    ; $52C8: $FF
    or $53                                        ; $52C9: $F6 $53
    rst RST_38                                    ; $52CB: $FF
    rst RST_38                                    ; $52CC: $FF
    db $10                                        ; $52CD: $10
    ld d, l                                       ; $52CE: $55
    rst RST_38                                    ; $52CF: $FF
    rst RST_38                                    ; $52D0: $FF
    ld a, [de]                                    ; $52D1: $1A
    ld d, l                                       ; $52D2: $55
    rst RST_38                                    ; $52D3: $FF
    rst RST_38                                    ; $52D4: $FF
    ld e, [hl]                                    ; $52D5: $5E
    ld d, a                                       ; $52D6: $57
    rst RST_38                                    ; $52D7: $FF
    rst RST_38                                    ; $52D8: $FF
    daa                                           ; $52D9: $27
    ld e, d                                       ; $52DA: $5A
    rst RST_38                                    ; $52DB: $FF
    rst RST_38                                    ; $52DC: $FF
    rst RST_38                                    ; $52DD: $FF
    rst RST_38                                    ; $52DE: $FF
    inc b                                         ; $52DF: $04
    ld d, a                                       ; $52E0: $57
    rst RST_38                                    ; $52E1: $FF
    rst RST_38                                    ; $52E2: $FF
    inc bc                                        ; $52E3: $03
    ld d, [hl]                                    ; $52E4: $56
    rst RST_38                                    ; $52E5: $FF
    rst RST_38                                    ; $52E6: $FF
    db $D3                                        ; $52E7: $D3
    ld e, d                                       ; $52E8: $5A
    db $ED                                        ; $52E9: $ED
    ld e, d                                       ; $52EA: $5A
    db $D3                                        ; $52EB: $D3
    ld e, d                                       ; $52EC: $5A
    rst RST_38                                    ; $52ED: $FF
    ld e, d                                       ; $52EE: $5A
    di                                            ; $52EF: $F3
    ld d, h                                       ; $52F0: $54
    rst RST_38                                    ; $52F1: $FF
    rst RST_38                                    ; $52F2: $FF
    rst RST_38                                    ; $52F3: $FF
    rst RST_38                                    ; $52F4: $FF
    and a                                         ; $52F5: $A7
    ld d, l                                       ; $52F6: $55
    rst RST_38                                    ; $52F7: $FF
    rst RST_38                                    ; $52F8: $FF
    ld de, $FF5B                                  ; $52F9: $11 $5B $FF
    rst RST_38                                    ; $52FC: $FF
    ld b, e                                       ; $52FD: $43
    ld e, e                                       ; $52FE: $5B
    rst RST_38                                    ; $52FF: $FF
    rst RST_38                                    ; $5300: $FF
    ld [hl], d                                    ; $5301: $72
    ld e, e                                       ; $5302: $5B
    rst RST_38                                    ; $5303: $FF
    rst RST_38                                    ; $5304: $FF
    sbc b                                         ; $5305: $98
    ld e, e                                       ; $5306: $5B
    call nz, $D95B                                ; $5307: $C4 $5B $D9
    ld e, e                                       ; $530A: $5B
    call nz, Call_008_7B5B                        ; $530B: $C4 $5B $7B
    ld d, h                                       ; $530E: $54
    rst RST_38                                    ; $530F: $FF
    rst RST_38                                    ; $5310: $FF
    rst RST_38                                    ; $5311: $FF
    rst RST_38                                    ; $5312: $FF
    pop hl                                        ; $5313: $E1
    ld d, [hl]                                    ; $5314: $56
    rst RST_38                                    ; $5315: $FF
    rst RST_38                                    ; $5316: $FF
    inc b                                         ; $5317: $04
    ld d, a                                       ; $5318: $57
    rst RST_38                                    ; $5319: $FF
    rst RST_38                                    ; $531A: $FF
    add hl, de                                    ; $531B: $19
    ld e, h                                       ; $531C: $5C
    rst RST_38                                    ; $531D: $FF
    rst RST_38                                    ; $531E: $FF
    ld c, [hl]                                    ; $531F: $4E
    ld e, h                                       ; $5320: $5C
    rst RST_38                                    ; $5321: $FF
    rst RST_38                                    ; $5322: $FF
    or $53                                        ; $5323: $F6 $53
    rst RST_38                                    ; $5325: $FF
    rst RST_38                                    ; $5326: $FF
    rst RST_38                                    ; $5327: $FF
    rst RST_38                                    ; $5328: $FF
    di                                            ; $5329: $F3
    ld d, h                                       ; $532A: $54
    rst RST_38                                    ; $532B: $FF
    rst RST_38                                    ; $532C: $FF
    ld d, l                                       ; $532D: $55
    ld d, h                                       ; $532E: $54
    rst RST_38                                    ; $532F: $FF
    rst RST_38                                    ; $5330: $FF
    add l                                         ; $5331: $85
    ld d, h                                       ; $5332: $54
    rst RST_38                                    ; $5333: $FF
    rst RST_38                                    ; $5334: $FF
    xor a                                         ; $5335: $AF
    ld d, h                                       ; $5336: $54
    rst RST_38                                    ; $5337: $FF
    rst RST_38                                    ; $5338: $FF
    sub $54                                       ; $5339: $D6 $54
    rst RST_38                                    ; $533B: $FF
    rst RST_38                                    ; $533C: $FF
    ld d, l                                       ; $533D: $55
    ld d, h                                       ; $533E: $54
    rst RST_38                                    ; $533F: $FF
    rst RST_38                                    ; $5340: $FF
    and a                                         ; $5341: $A7
    ld d, l                                       ; $5342: $55
    rst RST_38                                    ; $5343: $FF
    rst RST_38                                    ; $5344: $FF
    ld de, $FF5B                                  ; $5345: $11 $5B $FF
    rst RST_38                                    ; $5348: $FF
    ld b, e                                       ; $5349: $43
    ld e, e                                       ; $534A: $5B
    rst RST_38                                    ; $534B: $FF
    rst RST_38                                    ; $534C: $FF
    ld [hl], d                                    ; $534D: $72
    ld e, e                                       ; $534E: $5B
    rst RST_38                                    ; $534F: $FF
    rst RST_38                                    ; $5350: $FF
    sbc b                                         ; $5351: $98
    ld e, e                                       ; $5352: $5B
    call nz, $D95B                                ; $5353: $C4 $5B $D9
    ld e, e                                       ; $5356: $5B
    call nz, Call_008_7B5B                        ; $5357: $C4 $5B $7B
    ld d, h                                       ; $535A: $54
    rst RST_38                                    ; $535B: $FF
    rst RST_38                                    ; $535C: $FF
    or b                                          ; $535D: $B0
    ld d, e                                       ; $535E: $53
    rst RST_38                                    ; $535F: $FF
    rst RST_38                                    ; $5360: $FF
    or $53                                        ; $5361: $F6 $53
    rst RST_38                                    ; $5363: $FF
    rst RST_38                                    ; $5364: $FF
    ld d, h                                       ; $5365: $54
    ld d, a                                       ; $5366: $57
    rst RST_38                                    ; $5367: $FF
    rst RST_38                                    ; $5368: $FF
    ld d, c                                       ; $5369: $51
    ld c, a                                       ; $536A: $4F
    rst RST_38                                    ; $536B: $FF
    rst RST_38                                    ; $536C: $FF
    dec a                                         ; $536D: $3D
    ld d, l                                       ; $536E: $55
    rst RST_38                                    ; $536F: $FF
    rst RST_38                                    ; $5370: $FF
    db $10                                        ; $5371: $10
    ld d, l                                       ; $5372: $55
    rst RST_38                                    ; $5373: $FF
    rst RST_38                                    ; $5374: $FF
    or $53                                        ; $5375: $F6 $53
    rst RST_38                                    ; $5377: $FF
    rst RST_38                                    ; $5378: $FF
    di                                            ; $5379: $F3
    ld d, h                                       ; $537A: $54
    rst RST_38                                    ; $537B: $FF
    rst RST_38                                    ; $537C: $FF
    inc b                                         ; $537D: $04
    ld d, a                                       ; $537E: $57
    rst RST_38                                    ; $537F: $FF
    rst RST_38                                    ; $5380: $FF
    or [hl]                                       ; $5381: $B6
    ld e, d                                       ; $5382: $5A
    rst RST_38                                    ; $5383: $FF
    rst RST_38                                    ; $5384: $FF
    rst RST_38                                    ; $5385: $FF
    rst RST_38                                    ; $5386: $FF
    di                                            ; $5387: $F3
    ld d, h                                       ; $5388: $54
    rst RST_38                                    ; $5389: $FF
    rst RST_38                                    ; $538A: $FF
    rst RST_38                                    ; $538B: $FF
    rst RST_38                                    ; $538C: $FF
    nop                                           ; $538D: $00
    ld bc, $0000                                  ; $538E: $01 $00 $00
    ld b, b                                       ; $5391: $40
    rrca                                          ; $5392: $0F
    sub a                                         ; $5393: $97
    ld d, e                                       ; $5394: $53
    nop                                           ; $5395: $00
    nop                                           ; $5396: $00
    ld [$F22E], sp                                ; $5397: $08 $2E $F2
    nop                                           ; $539A: $00
    cpl                                           ; $539B: $2F
    ld a, [$3002]                                 ; $539C: $FA $02 $30
    ld [bc], a                                    ; $539F: $02
    inc b                                         ; $53A0: $04
    jr nc, jr_008_53AD                            ; $53A1: $30 $0A

    ld b, $1F                                     ; $53A3: $06 $1F
    rst RST_30                                    ; $53A5: $F7
    ld [$FF20], sp                                ; $53A6: $08 $20 $FF
    ld a, [bc]                                    ; $53A9: $0A
    jr nz, @+$09                                  ; $53AA: $20 $07

    inc c                                         ; $53AC: $0C

jr_008_53AD:
    db $10                                        ; $53AD: $10
    db $FC                                        ; $53AE: $FC
    ld c, $00                                     ; $53AF: $0E $00
    ld bc, $0000                                  ; $53B1: $01 $00 $00
    ld b, c                                       ; $53B4: $41
    rrca                                          ; $53B5: $0F
    cp d                                          ; $53B6: $BA
    ld d, e                                       ; $53B7: $53
    nop                                           ; $53B8: $00
    nop                                           ; $53B9: $00
    ld [$EC2E], sp                                ; $53BA: $08 $2E $EC
    nop                                           ; $53BD: $00
    cpl                                           ; $53BE: $2F
    db $F4                                        ; $53BF: $F4
    ld [bc], a                                    ; $53C0: $02
    cpl                                           ; $53C1: $2F
    db $FC                                        ; $53C2: $FC
    inc b                                         ; $53C3: $04
    cpl                                           ; $53C4: $2F
    inc b                                         ; $53C5: $04
    ld b, $2F                                     ; $53C6: $06 $2F
    inc c                                         ; $53C8: $0C
    ld [$F91F], sp                                ; $53C9: $08 $1F $F9
    ld a, [bc]                                    ; $53CC: $0A
    rra                                           ; $53CD: $1F
    ld bc, $3F0C                                  ; $53CE: $01 $0C $3F
    ld bc, $000E                                  ; $53D1: $01 $0E $00
    ld bc, $0000                                  ; $53D4: $01 $00 $00
    ld b, d                                       ; $53D7: $42
    rrca                                          ; $53D8: $0F
    db $DD                                        ; $53D9: $DD
    ld d, e                                       ; $53DA: $53
    nop                                           ; $53DB: $00
    nop                                           ; $53DC: $00
    ld [$ED2B], sp                                ; $53DD: $08 $2B $ED
    nop                                           ; $53E0: $00
    inc h                                         ; $53E1: $24
    push af                                       ; $53E2: $F5
    ld [bc], a                                    ; $53E3: $02
    ld [hl+], a                                   ; $53E4: $22
    db $FD                                        ; $53E5: $FD
    inc b                                         ; $53E6: $04
    inc [hl]                                      ; $53E7: $34
    push af                                       ; $53E8: $F5
    ld b, $32                                     ; $53E9: $06 $32
    db $FD                                        ; $53EB: $FD
    ld [$0527], sp                                ; $53EC: $08 $27 $05
    ld a, [bc]                                    ; $53EF: $0A
    scf                                           ; $53F0: $37
    dec b                                         ; $53F1: $05
    inc c                                         ; $53F2: $0C
    ld [hl+], a                                   ; $53F3: $22
    dec c                                         ; $53F4: $0D
    ld c, $00                                     ; $53F5: $0E $00
    ld bc, $0000                                  ; $53F7: $01 $00 $00
    ld b, e                                       ; $53FA: $43
    rrca                                          ; $53FB: $0F
    nop                                           ; $53FC: $00
    ld d, h                                       ; $53FD: $54
    nop                                           ; $53FE: $00
    nop                                           ; $53FF: $00
    ld a, [bc]                                    ; $5400: $0A
    ld [hl+], a                                   ; $5401: $22
    db $ED                                        ; $5402: $ED
    nop                                           ; $5403: $00
    ld [hl+], a                                   ; $5404: $22
    push af                                       ; $5405: $F5
    ld [bc], a                                    ; $5406: $02
    rra                                           ; $5407: $1F
    db $FD                                        ; $5408: $FD
    inc b                                         ; $5409: $04
    ld [hl-], a                                   ; $540A: $32
    ldh a, [rTMA]                                 ; $540B: $F0 $06
    cpl                                           ; $540D: $2F
    ld hl, sp+$08                                 ; $540E: $F8 $08
    dec h                                         ; $5410: $25
    nop                                           ; $5411: $00
    ld a, [bc]                                    ; $5412: $0A
    dec [hl]                                      ; $5413: $35
    nop                                           ; $5414: $00
    inc c                                         ; $5415: $0C
    ld [hl+], a                                   ; $5416: $22
    ld [$320E], sp                                ; $5417: $08 $0E $32
    ld [$2210], sp                                ; $541A: $08 $10 $22
    db $10                                        ; $541D: $10
    ld [de], a                                    ; $541E: $12
    nop                                           ; $541F: $00
    ld bc, $4000                                  ; $5420: $01 $00 $40
    ld b, h                                       ; $5423: $44
    rrca                                          ; $5424: $0F
    add hl, hl                                    ; $5425: $29
    ld d, h                                       ; $5426: $54
    nop                                           ; $5427: $00
    nop                                           ; $5428: $00
    dec bc                                        ; $5429: $0B
    scf                                           ; $542A: $37
    db $E4                                        ; $542B: $E4
    nop                                           ; $542C: $00
    ld sp, $02EC                                  ; $542D: $31 $EC $02
    cpl                                           ; $5430: $2F

jr_008_5431:
    db $F4                                        ; $5431: $F4
    inc b                                         ; $5432: $04
    jr nc, jr_008_5431                            ; $5433: $30 $FC

    ld b, $30                                     ; $5435: $06 $30
    inc b                                         ; $5437: $04

jr_008_5438:
    ld [$0C31], sp                                ; $5438: $08 $31 $0C
    ld a, [bc]                                    ; $543B: $0A
    scf                                           ; $543C: $37
    inc d                                         ; $543D: $14
    inc c                                         ; $543E: $0C
    jr nz, jr_008_5438                            ; $543F: $20 $F7

    ld c, $20                                     ; $5441: $0E $20
    rst RST_38                                    ; $5443: $FF
    db $10                                        ; $5444: $10
    jr nz, @+$09                                  ; $5445: $20 $07

    ld [de], a                                    ; $5447: $12
    db $10                                        ; $5448: $10
    db $FC                                        ; $5449: $FC
    inc d                                         ; $544A: $14
    nop                                           ; $544B: $00
    ld bc, $A000                                  ; $544C: $01 $00 $A0
    ld b, l                                       ; $544F: $45
    rrca                                          ; $5450: $0F
    ld e, a                                       ; $5451: $5F
    ld d, h                                       ; $5452: $54
    ld [bc], a                                    ; $5453: $02
    nop                                           ; $5454: $00
    nop                                           ; $5455: $00
    ld bc, $A058                                  ; $5456: $01 $58 $A0
    ld b, l                                       ; $5459: $45
    rrca                                          ; $545A: $0F
    ld e, a                                       ; $545B: $5F
    ld d, h                                       ; $545C: $54
    ld [bc], a                                    ; $545D: $02
    nop                                           ; $545E: $00
    add hl, bc                                    ; $545F: $09
    dec hl                                        ; $5460: $2B
    pop af                                        ; $5461: $F1
    nop                                           ; $5462: $00
    dec de                                        ; $5463: $1B
    ld sp, hl                                     ; $5464: $F9
    ld [bc], a                                    ; $5465: $02
    dec de                                        ; $5466: $1B
    ld bc, $2B04                                  ; $5467: $01 $04 $2B
    ld sp, hl                                     ; $546A: $F9
    ld b, $2B                                     ; $546B: $06 $2B
    ld bc, $2E08                                  ; $546D: $01 $08 $2E
    add hl, bc                                    ; $5470: $09
    ld a, [bc]                                    ; $5471: $0A
    dec sp                                        ; $5472: $3B
    ld bc, $3B0C                                  ; $5473: $01 $0C $3B
    ld sp, hl                                     ; $5476: $F9
    ld c, $3B                                     ; $5477: $0E $3B
    pop af                                        ; $5479: $F1
    stop                                          ; $547A: $10 $00
    ld bc, $C000                                  ; $547C: $01 $00 $C0
    ld b, [hl]                                    ; $547F: $46
    rrca                                          ; $5480: $0F
    adc a                                         ; $5481: $8F
    ld d, h                                       ; $5482: $54
    ld [bc], a                                    ; $5483: $02
    nop                                           ; $5484: $00
    nop                                           ; $5485: $00
    ld bc, $C058                                  ; $5486: $01 $58 $C0
    ld b, [hl]                                    ; $5489: $46
    rrca                                          ; $548A: $0F
    adc a                                         ; $548B: $8F
    ld d, h                                       ; $548C: $54
    ld [bc], a                                    ; $548D: $02
    nop                                           ; $548E: $00
    rlca                                          ; $548F: $07
    inc e                                         ; $5490: $1C
    ld a, [$2200]                                 ; $5491: $FA $00 $22
    ld [$2C02], a                                 ; $5494: $EA $02 $2C
    ldh a, [c]                                    ; $5497: $F2
    inc b                                         ; $5498: $04
    inc l                                         ; $5499: $2C
    ld a, [$2306]                                 ; $549A: $FA $06 $23
    ld [bc], a                                    ; $549D: $02
    ld [$0233], sp                                ; $549E: $08 $33 $02
    ld a, [bc]                                    ; $54A1: $0A
    inc a                                         ; $54A2: $3C
    ld a, [$000C]                                 ; $54A3: $FA $0C $00
    ld bc, $A000                                  ; $54A6: $01 $00 $A0
    ld b, a                                       ; $54A9: $47
    rrca                                          ; $54AA: $0F
    cp c                                          ; $54AB: $B9
    ld d, h                                       ; $54AC: $54
    ld [bc], a                                    ; $54AD: $02
    nop                                           ; $54AE: $00
    nop                                           ; $54AF: $00
    ld bc, $A058                                  ; $54B0: $01 $58 $A0
    ld b, a                                       ; $54B3: $47
    rrca                                          ; $54B4: $0F
    cp c                                          ; $54B5: $B9
    ld d, h                                       ; $54B6: $54
    ld [bc], a                                    ; $54B7: $02
    nop                                           ; $54B8: $00
    ld b, $2E                                     ; $54B9: $06 $2E
    push af                                       ; $54BB: $F5
    nop                                           ; $54BC: $00
    dec l                                         ; $54BD: $2D
    db $FD                                        ; $54BE: $FD
    ld [bc], a                                    ; $54BF: $02
    inc [hl]                                      ; $54C0: $34
    inc bc                                        ; $54C1: $03
    inc b                                         ; $54C2: $04
    ld e, $F5                                     ; $54C3: $1E $F5
    ld b, $1D                                     ; $54C5: $06 $1D
    db $FD                                        ; $54C7: $FD
    ld [$0524], sp                                ; $54C8: $08 $24 $05
    ld a, [bc]                                    ; $54CB: $0A
    nop                                           ; $54CC: $00
    ld bc, $6000                                  ; $54CD: $01 $00 $60
    ld c, b                                       ; $54D0: $48
    rrca                                          ; $54D1: $0F
    ldh [rHDMA4], a                               ; $54D2: $E0 $54
    ld [bc], a                                    ; $54D4: $02
    nop                                           ; $54D5: $00
    nop                                           ; $54D6: $00
    ld bc, $6058                                  ; $54D7: $01 $58 $60
    ld c, b                                       ; $54DA: $48
    rrca                                          ; $54DB: $0F
    ldh [rHDMA4], a                               ; $54DC: $E0 $54
    ld [bc], a                                    ; $54DE: $02
    nop                                           ; $54DF: $00
    ld b, $30                                     ; $54E0: $06 $30

jr_008_54E2:
    db $F4                                        ; $54E2: $F4
    nop                                           ; $54E3: $00

jr_008_54E4:
    jr nc, jr_008_54E2                            ; $54E4: $30 $FC

    ld [bc], a                                    ; $54E6: $02
    jr nc, @+$06                                  ; $54E7: $30 $04

    inc b                                         ; $54E9: $04
    jr nz, jr_008_54E4                            ; $54EA: $20 $F8

    ld b, $20                                     ; $54EC: $06 $20
    nop                                           ; $54EE: $00
    ld [$FA10], sp                                ; $54EF: $08 $10 $FA
    ld a, [bc]                                    ; $54F2: $0A
    nop                                           ; $54F3: $00
    scf                                           ; $54F4: $37
    nop                                           ; $54F5: $00
    jr nz, @+$4B                                  ; $54F6: $20 $49

    rrca                                          ; $54F8: $0F
    db $FD                                        ; $54F9: $FD
    ld d, h                                       ; $54FA: $54
    ld hl, sp+$00                                 ; $54FB: $F8 $00
    ld b, $2F                                     ; $54FD: $06 $2F
    db $FD                                        ; $54FF: $FD
    nop                                           ; $5500: $00
    jr nc, jr_008_5508                            ; $5501: $30 $05

    ld [bc], a                                    ; $5503: $02
    jr nc, jr_008_5513                            ; $5504: $30 $0D

    inc b                                         ; $5506: $04
    ld a, [hl-]                                   ; $5507: $3A

jr_008_5508:
    dec d                                         ; $5508: $15
    ld b, $20                                     ; $5509: $06 $20
    dec b                                         ; $550B: $05
    ld [$FD1F], sp                                ; $550C: $08 $1F $FD
    ld a, [bc]                                    ; $550F: $0A
    nop                                           ; $5510: $00
    inc sp                                        ; $5511: $33
    nop                                           ; $5512: $00

jr_008_5513:
    ldh [rOBP1], a                                ; $5513: $E0 $49
    rrca                                          ; $5515: $0F
    inc h                                         ; $5516: $24
    ld d, l                                       ; $5517: $55
    cp $05                                        ; $5518: $FE $05
    ld h, b                                       ; $551A: $60
    inc sp                                        ; $551B: $33
    ld b, b                                       ; $551C: $40
    ldh [rOBP1], a                                ; $551D: $E0 $49
    rrca                                          ; $551F: $0F
    inc h                                         ; $5520: $24
    ld d, l                                       ; $5521: $55
    ld [bc], a                                    ; $5522: $02
    jp hl                                         ; $5523: $E9


    ld [$F82B], sp                                ; $5524: $08 $2B $F8
    nop                                           ; $5527: $00
    add hl, hl                                    ; $5528: $29
    nop                                           ; $5529: $00
    ld [bc], a                                    ; $552A: $02
    dec de                                        ; $552B: $1B
    ld hl, sp+$04                                 ; $552C: $F8 $04
    add hl, de                                    ; $552E: $19
    nop                                           ; $552F: $00
    ld b, $22                                     ; $5530: $06 $22
    ld [$0B08], sp                                ; $5532: $08 $08 $0B
    ld hl, sp+$0A                                 ; $5535: $F8 $0A
    add hl, bc                                    ; $5537: $09
    nop                                           ; $5538: $00
    inc c                                         ; $5539: $0C
    add hl, sp                                    ; $553A: $39
    nop                                           ; $553B: $00
    ld c, $00                                     ; $553C: $0E $00
    inc sp                                        ; $553E: $33
    nop                                           ; $553F: $00
    ldh [rWY], a                                  ; $5540: $E0 $4A
    rrca                                          ; $5542: $0F
    ld d, c                                       ; $5543: $51
    ld d, l                                       ; $5544: $55
    nop                                           ; $5545: $00
    dec c                                         ; $5546: $0D
    jr nz, @+$35                                  ; $5547: $20 $33

    nop                                           ; $5549: $00
    ldh [rWY], a                                  ; $554A: $E0 $4A
    rrca                                          ; $554C: $0F
    ld d, c                                       ; $554D: $51
    ld d, l                                       ; $554E: $55
    db $FD                                        ; $554F: $FD
    ld d, $08                                     ; $5550: $16 $08
    db $10                                        ; $5552: $10
    db $EC                                        ; $5553: $EC

jr_008_5554:
    nop                                           ; $5554: $00
    ld [$02F4], sp                                ; $5555: $08 $F4 $02
    ld [$04FC], sp                                ; $5558: $08 $FC $04
    ld [$0604], sp                                ; $555B: $08 $04 $06
    jr jr_008_5554                                ; $555E: $18 $F4

    ld [$FC18], sp                                ; $5560: $08 $18 $FC
    ld a, [bc]                                    ; $5563: $0A
    jr @+$06                                      ; $5564: $18 $04

    inc c                                         ; $5566: $0C
    db $10                                        ; $5567: $10
    inc c                                         ; $5568: $0C
    ld c, $00                                     ; $5569: $0E $00
    ld bc, $E000                                  ; $556B: $01 $00 $E0
    ld c, e                                       ; $556E: $4B
    rrca                                          ; $556F: $0F
    ld [hl], h                                    ; $5570: $74
    ld d, l                                       ; $5571: $55
    ei                                            ; $5572: $FB
    nop                                           ; $5573: $00
    ld b, $30                                     ; $5574: $06 $30
    ld hl, sp+$00                                 ; $5576: $F8 $00
    jr nc, jr_008_557A                            ; $5578: $30 $00

jr_008_557A:
    ld [bc], a                                    ; $557A: $02
    jr nc, @+$0A                                  ; $557B: $30 $08

    inc b                                         ; $557D: $04
    jr nz, @-$02                                  ; $557E: $20 $FC

    ld b, $20                                     ; $5580: $06 $20
    inc b                                         ; $5582: $04
    ld [$0210], sp                                ; $5583: $08 $10 $02
    ld a, [bc]                                    ; $5586: $0A
    nop                                           ; $5587: $00
    scf                                           ; $5588: $37
    nop                                           ; $5589: $00
    and b                                         ; $558A: $A0
    ld c, h                                       ; $558B: $4C
    rrca                                          ; $558C: $0F
    sub c                                         ; $558D: $91
    ld d, l                                       ; $558E: $55
    ld hl, sp+$00                                 ; $558F: $F8 $00
    rlca                                          ; $5591: $07
    jr nc, @-$02                                  ; $5592: $30 $FC

    nop                                           ; $5594: $00
    jr nc, jr_008_559B                            ; $5595: $30 $04

    ld [bc], a                                    ; $5597: $02
    jr nc, @+$0E                                  ; $5598: $30 $0C

    inc b                                         ; $559A: $04

jr_008_559B:
    dec sp                                        ; $559B: $3B
    inc d                                         ; $559C: $14
    ld b, $20                                     ; $559D: $06 $20
    nop                                           ; $559F: $00
    ld [$0820], sp                                ; $55A0: $08 $20 $08
    ld a, [bc]                                    ; $55A3: $0A
    db $10                                        ; $55A4: $10
    ld [$000C], sp                                ; $55A5: $08 $0C $00
    ld bc, $C000                                  ; $55A8: $01 $00 $C0
    ld d, c                                       ; $55AB: $51
    rrca                                          ; $55AC: $0F
    or c                                          ; $55AD: $B1
    ld d, l                                       ; $55AE: $55
    nop                                           ; $55AF: $00
    nop                                           ; $55B0: $00
    rlca                                          ; $55B1: $07
    dec l                                         ; $55B2: $2D
    rst RST_30                                    ; $55B3: $F7
    nop                                           ; $55B4: $00
    jr nc, @+$01                                  ; $55B5: $30 $FF

    ld [bc], a                                    ; $55B7: $02
    dec l                                         ; $55B8: $2D
    rlca                                          ; $55B9: $07
    inc b                                         ; $55BA: $04
    jr nz, @+$01                                  ; $55BB: $20 $FF

    ld b, $1D                                     ; $55BD: $06 $1D
    rlca                                          ; $55BF: $07
    ld [$0F1F], sp                                ; $55C0: $08 $1F $0F
    ld a, [bc]                                    ; $55C3: $0A
    dec a                                         ; $55C4: $3D
    ld [$000C], sp                                ; $55C5: $08 $0C $00
    ld bc, $A038                                  ; $55C8: $01 $38 $A0
    ld d, d                                       ; $55CB: $52
    rrca                                          ; $55CC: $0F
    db $DB                                        ; $55CD: $DB
    ld d, l                                       ; $55CE: $55
    nop                                           ; $55CF: $00
    nop                                           ; $55D0: $00
    nop                                           ; $55D1: $00
    ld bc, $A005                                  ; $55D2: $01 $05 $A0
    ld d, d                                       ; $55D5: $52
    rrca                                          ; $55D6: $0F
    db $DB                                        ; $55D7: $DB
    ld d, l                                       ; $55D8: $55
    nop                                           ; $55D9: $00
    nop                                           ; $55DA: $00
    inc bc                                        ; $55DB: $03
    inc l                                         ; $55DC: $2C
    ldh a, [rP1]                                  ; $55DD: $F0 $00
    dec h                                         ; $55DF: $25
    add sp, $02                                   ; $55E0: $E8 $02
    ld sp, $04E0                                  ; $55E2: $31 $E0 $04
    nop                                           ; $55E5: $00
    nop                                           ; $55E6: $00
    ld d, e                                       ; $55E7: $53
    rrca                                          ; $55E8: $0F
    db $ED                                        ; $55E9: $ED
    ld d, l                                       ; $55EA: $55
    nop                                           ; $55EB: $00
    nop                                           ; $55EC: $00
    rlca                                          ; $55ED: $07
    inc e                                         ; $55EE: $1C
    ld hl, sp+$00                                 ; $55EF: $F8 $00
    inc e                                         ; $55F1: $1C
    nop                                           ; $55F2: $00
    ld [bc], a                                    ; $55F3: $02
    inc l                                         ; $55F4: $2C
    rst RST_30                                    ; $55F5: $F7
    inc b                                         ; $55F6: $04
    inc l                                         ; $55F7: $2C
    rst RST_38                                    ; $55F8: $FF
    ld b, $2E                                     ; $55F9: $06 $2E
    rlca                                          ; $55FB: $07
    ld [$0F38], sp                                ; $55FC: $08 $38 $0F
    ld a, [bc]                                    ; $55FF: $0A
    inc a                                         ; $5600: $3C
    rst RST_38                                    ; $5601: $FF
    inc c                                         ; $5602: $0C
    nop                                           ; $5603: $00
    ld bc, $E000                                  ; $5604: $01 $00 $E0
    ld d, e                                       ; $5607: $53
    rrca                                          ; $5608: $0F
    rla                                           ; $5609: $17
    ld d, [hl]                                    ; $560A: $56
    nop                                           ; $560B: $00
    nop                                           ; $560C: $00
    nop                                           ; $560D: $00
    inc sp                                        ; $560E: $33
    nop                                           ; $560F: $00
    ldh [rHDMA3], a                               ; $5610: $E0 $53
    rrca                                          ; $5612: $0F
    rla                                           ; $5613: $17
    ld d, [hl]                                    ; $5614: $56
    ld sp, hl                                     ; $5615: $F9
    push af                                       ; $5616: $F5
    add hl, bc                                    ; $5617: $09
    dec e                                         ; $5618: $1D
    di                                            ; $5619: $F3
    nop                                           ; $561A: $00
    inc e                                         ; $561B: $1C
    ei                                            ; $561C: $FB
    ld [bc], a                                    ; $561D: $02
    inc e                                         ; $561E: $1C
    inc bc                                        ; $561F: $03
    inc b                                         ; $5620: $04
    dec de                                        ; $5621: $1B
    dec bc                                        ; $5622: $0B
    ld b, $2C                                     ; $5623: $06 $2C
    push af                                       ; $5625: $F5
    ld [$FD2C], sp                                ; $5626: $08 $2C $FD
    ld a, [bc]                                    ; $5629: $0A
    dec hl                                        ; $562A: $2B
    dec b                                         ; $562B: $05
    inc c                                         ; $562C: $0C
    dec hl                                        ; $562D: $2B
    dec c                                         ; $562E: $0D
    ld c, $3B                                     ; $562F: $0E $3B
    inc bc                                        ; $5631: $03
    stop                                          ; $5632: $10 $00
    ld bc, $0039                                  ; $5634: $01 $39 $00
    ld d, l                                       ; $5637: $55
    rrca                                          ; $5638: $0F
    ld b, a                                       ; $5639: $47
    ld d, [hl]                                    ; $563A: $56
    nop                                           ; $563B: $00
    nop                                           ; $563C: $00
    nop                                           ; $563D: $00
    inc sp                                        ; $563E: $33
    ccf                                           ; $563F: $3F
    nop                                           ; $5640: $00
    ld d, l                                       ; $5641: $55
    rrca                                          ; $5642: $0F
    ld b, a                                       ; $5643: $47
    ld d, [hl]                                    ; $5644: $56
    nop                                           ; $5645: $00
    db $F4                                        ; $5646: $F4
    add hl, bc                                    ; $5647: $09
    ld [hl], $E9                                  ; $5648: $36 $E9
    nop                                           ; $564A: $00
    dec [hl]                                      ; $564B: $35
    pop af                                        ; $564C: $F1
    ld [bc], a                                    ; $564D: $02
    cpl                                           ; $564E: $2F
    ld sp, hl                                     ; $564F: $F9
    inc b                                         ; $5650: $04
    jr nc, @+$03                                  ; $5651: $30 $01

    ld b, $33                                     ; $5653: $06 $33
    add hl, bc                                    ; $5655: $09
    ld [$113B], sp                                ; $5656: $08 $3B $11
    ld a, [bc]                                    ; $5659: $0A
    rra                                           ; $565A: $1F
    ld sp, hl                                     ; $565B: $F9
    inc c                                         ; $565C: $0C
    jr nz, @+$03                                  ; $565D: $20 $01

    ld c, $10                                     ; $565F: $0E $10
    nop                                           ; $5661: $00
    stop                                          ; $5662: $10 $00
    ld bc, $2000                                  ; $5664: $01 $00 $20
    ld d, [hl]                                    ; $5667: $56
    rrca                                          ; $5668: $0F
    ld l, l                                       ; $5669: $6D
    ld d, [hl]                                    ; $566A: $56
    ld sp, hl                                     ; $566B: $F9
    nop                                           ; $566C: $00
    add hl, bc                                    ; $566D: $09
    scf                                           ; $566E: $37
    db $F4                                        ; $566F: $F4
    nop                                           ; $5670: $00
    ld sp, $02FC                                  ; $5671: $31 $FC $02
    jr nc, @+$06                                  ; $5674: $30 $04

    inc b                                         ; $5676: $04
    jr nc, @+$0E                                  ; $5677: $30 $0C

    ld b, $20                                     ; $5679: $06 $20
    ld b, $08                                     ; $567B: $06 $08
    jr nz, jr_008_568D                            ; $567D: $20 $0E

    ld a, [bc]                                    ; $567F: $0A
    dec e                                         ; $5680: $1D
    ld d, $0C                                     ; $5681: $16 $0C
    daa                                           ; $5683: $27
    ld e, $0E                                     ; $5684: $1E $0E
    dec a                                         ; $5686: $3D
    inc d                                         ; $5687: $14
    stop                                          ; $5688: $10 $00
    ld bc, $4000                                  ; $568A: $01 $00 $40

jr_008_568D:
    ld d, a                                       ; $568D: $57
    rrca                                          ; $568E: $0F
    sub e                                         ; $568F: $93

jr_008_5690:
    ld d, [hl]                                    ; $5690: $56
    ei                                            ; $5691: $FB
    nop                                           ; $5692: $00
    add hl, bc                                    ; $5693: $09
    jr z, @-$0F                                   ; $5694: $28 $EF

    nop                                           ; $5696: $00
    jr z, jr_008_5690                             ; $5697: $28 $F7

    ld [bc], a                                    ; $5699: $02
    ld [hl+], a                                   ; $569A: $22
    rst RST_38                                    ; $569B: $FF
    inc b                                         ; $569C: $04
    jr nz, jr_008_56A6                            ; $569D: $20 $07

    ld b, $1E                                     ; $569F: $06 $1E
    ld c, $08                                     ; $56A1: $0E $08
    ld [hl-], a                                   ; $56A3: $32
    rst RST_38                                    ; $56A4: $FF
    ld a, [bc]                                    ; $56A5: $0A

jr_008_56A6:
    jr nc, jr_008_56AF                            ; $56A6: $30 $07

    inc c                                         ; $56A8: $0C
    ld [hl-], a                                   ; $56A9: $32
    rrca                                          ; $56AA: $0F
    ld c, $1A                                     ; $56AB: $0E $1A
    ld d, $10                                     ; $56AD: $16 $10

jr_008_56AF:
    nop                                           ; $56AF: $00
    ld bc, $603A                                  ; $56B0: $01 $3A $60
    ld e, b                                       ; $56B3: $58
    rrca                                          ; $56B4: $0F
    cp c                                          ; $56B5: $B9
    ld d, [hl]                                    ; $56B6: $56
    ei                                            ; $56B7: $FB
    nop                                           ; $56B8: $00
    dec c                                         ; $56B9: $0D
    dec h                                         ; $56BA: $25
    db $E4                                        ; $56BB: $E4
    nop                                           ; $56BC: $00
    dec h                                         ; $56BD: $25
    db $EC                                        ; $56BE: $EC
    ld [bc], a                                    ; $56BF: $02
    dec h                                         ; $56C0: $25
    db $F4                                        ; $56C1: $F4
    inc b                                         ; $56C2: $04
    dec d                                         ; $56C3: $15
    db $EB                                        ; $56C4: $EB
    ld b, $15                                     ; $56C5: $06 $15
    di                                            ; $56C7: $F3
    ld [$FB15], sp                                ; $56C8: $08 $15 $FB
    ld a, [bc]                                    ; $56CB: $0A
    dec h                                         ; $56CC: $25
    db $FC                                        ; $56CD: $FC
    inc c                                         ; $56CE: $0C
    dec d                                         ; $56CF: $15
    inc bc                                        ; $56D0: $03
    ld c, $25                                     ; $56D1: $0E $25
    inc b                                         ; $56D3: $04
    db $10                                        ; $56D4: $10
    dec [hl]                                      ; $56D5: $35
    rst RST_38                                    ; $56D6: $FF
    ld [de], a                                    ; $56D7: $12
    jr nc, @+$09                                  ; $56D8: $30 $07

    inc d                                         ; $56DA: $14
    jr nc, @+$11                                  ; $56DB: $30 $0F

    ld d, $3B                                     ; $56DD: $16 $3B
    rla                                           ; $56DF: $17
    jr jr_008_56E2                                ; $56E0: $18 $00

jr_008_56E2:
    ld bc, $0000                                  ; $56E2: $01 $00 $00
    ld e, d                                       ; $56E5: $5A
    rrca                                          ; $56E6: $0F
    db $EB                                        ; $56E7: $EB
    ld d, [hl]                                    ; $56E8: $56
    ei                                            ; $56E9: $FB
    nop                                           ; $56EA: $00
    ld [$ED28], sp                                ; $56EB: $08 $28 $ED
    nop                                           ; $56EE: $00
    daa                                           ; $56EF: $27
    push af                                       ; $56F0: $F5
    ld [bc], a                                    ; $56F1: $02
    daa                                           ; $56F2: $27
    db $FD                                        ; $56F3: $FD
    inc b                                         ; $56F4: $04
    daa                                           ; $56F5: $27
    dec b                                         ; $56F6: $05
    ld b, $37                                     ; $56F7: $06 $37
    db $FD                                        ; $56F9: $FD
    ld [$0537], sp                                ; $56FA: $08 $37 $05
    ld a, [bc]                                    ; $56FD: $0A
    cpl                                           ; $56FE: $2F
    dec c                                         ; $56FF: $0D
    inc c                                         ; $5700: $0C
    add hl, sp                                    ; $5701: $39
    dec d                                         ; $5702: $15
    ld c, $00                                     ; $5703: $0E $00
    ld bc, $0000                                  ; $5705: $01 $00 $00
    ld e, e                                       ; $5708: $5B
    rrca                                          ; $5709: $0F
    jr jr_008_5763                                ; $570A: $18 $57

    ld hl, sp+$00                                 ; $570C: $F8 $00
    nop                                           ; $570E: $00
    ld bc, $0005                                  ; $570F: $01 $05 $00
    ld e, e                                       ; $5712: $5B

jr_008_5713:
    rrca                                          ; $5713: $0F
    jr jr_008_576D                                ; $5714: $18 $57

    ld hl, sp+$00                                 ; $5716: $F8 $00
    rlca                                          ; $5718: $07

jr_008_5719:
    jr nz, jr_008_5713                            ; $5719: $20 $F8

    nop                                           ; $571B: $00
    jr nz, jr_008_571E                            ; $571C: $20 $00

jr_008_571E:
    ld [bc], a                                    ; $571E: $02
    jr nc, jr_008_5719                            ; $571F: $30 $F8

    inc b                                         ; $5721: $04
    jr nc, jr_008_5724                            ; $5722: $30 $00

jr_008_5724:
    ld b, $27                                     ; $5724: $06 $27
    ld [$3708], sp                                ; $5726: $08 $08 $37

jr_008_5729:
    ld [$380A], sp                                ; $5729: $08 $0A $38
    db $10                                        ; $572C: $10
    inc c                                         ; $572D: $0C
    nop                                           ; $572E: $00
    scf                                           ; $572F: $37
    dec sp                                        ; $5730: $3B
    ldh [$FF5B], a                                ; $5731: $E0 $5B
    rrca                                          ; $5733: $0F

jr_008_5734:
    jr c, jr_008_578D                             ; $5734: $38 $57

    db $FC                                        ; $5736: $FC
    nop                                           ; $5737: $00
    add hl, bc                                    ; $5738: $09
    dec [hl]                                      ; $5739: $35
    db $E3                                        ; $573A: $E3
    nop                                           ; $573B: $00
    jr z, jr_008_5729                             ; $573C: $28 $EB

    ld [bc], a                                    ; $573E: $02
    jr z, jr_008_5734                             ; $573F: $28 $F3

    inc b                                         ; $5741: $04
    cpl                                           ; $5742: $2F
    ei                                            ; $5743: $FB
    ld b, $2F                                     ; $5744: $06 $2F
    inc bc                                        ; $5746: $03
    ld [$0B33], sp                                ; $5747: $08 $33 $0B
    ld a, [bc]                                    ; $574A: $0A
    dec sp                                        ; $574B: $3B
    inc de                                        ; $574C: $13
    inc c                                         ; $574D: $0C
    rra                                           ; $574E: $1F
    ei                                            ; $574F: $FB
    ld c, $1F                                     ; $5750: $0E $1F
    inc bc                                        ; $5752: $03
    stop                                          ; $5753: $10 $00
    scf                                           ; $5755: $37
    nop                                           ; $5756: $00
    nop                                           ; $5757: $00
    ld e, l                                       ; $5758: $5D
    rrca                                          ; $5759: $0F
    ld l, b                                       ; $575A: $68
    ld d, a                                       ; $575B: $57
    ld hl, sp+$00                                 ; $575C: $F8 $00
    ld h, b                                       ; $575E: $60
    scf                                           ; $575F: $37
    ld b, b                                       ; $5760: $40
    nop                                           ; $5761: $00
    ld e, l                                       ; $5762: $5D

jr_008_5763:
    rrca                                          ; $5763: $0F
    ld l, b                                       ; $5764: $68
    ld d, a                                       ; $5765: $57
    ld [$0805], sp                                ; $5766: $08 $05 $08
    ld a, [hl-]                                   ; $5769: $3A
    ldh a, [rP1]                                  ; $576A: $F0 $00
    dec l                                         ; $576C: $2D

jr_008_576D:
    ld hl, sp+$02                                 ; $576D: $F8 $02
    cpl                                           ; $576F: $2F
    nop                                           ; $5770: $00
    inc b                                         ; $5771: $04
    jr nc, jr_008_577C                            ; $5772: $30 $08

    ld b, $33                                     ; $5774: $06 $33
    db $10                                        ; $5776: $10
    ld [$183B], sp                                ; $5777: $08 $3B $18
    ld a, [bc]                                    ; $577A: $0A
    rra                                           ; $577B: $1F

jr_008_577C:
    nop                                           ; $577C: $00
    inc c                                         ; $577D: $0C
    jr nz, jr_008_5788                            ; $577E: $20 $08

    ld c, $00                                     ; $5780: $0E $00
    scf                                           ; $5782: $37
    nop                                           ; $5783: $00
    nop                                           ; $5784: $00
    ld e, [hl]                                    ; $5785: $5E
    rrca                                          ; $5786: $0F
    adc e                                         ; $5787: $8B

jr_008_5788:
    ld d, a                                       ; $5788: $57
    db $FC                                        ; $5789: $FC
    nop                                           ; $578A: $00
    ld b, $23                                     ; $578B: $06 $23

jr_008_578D:
    ei                                            ; $578D: $FB
    nop                                           ; $578E: $00
    inc hl                                        ; $578F: $23
    inc bc                                        ; $5790: $03
    ld [bc], a                                    ; $5791: $02
    jr nz, jr_008_579F                            ; $5792: $20 $0B

    inc b                                         ; $5794: $04
    jr nc, jr_008_57A3                            ; $5795: $30 $0C

    ld b, $30                                     ; $5797: $06 $30
    inc b                                         ; $5799: $04
    ld [$FC33], sp                                ; $579A: $08 $33 $FC
    ld a, [bc]                                    ; $579D: $0A
    nop                                           ; $579E: $00

jr_008_579F:
    scf                                           ; $579F: $37
    inc a                                         ; $57A0: $3C
    ret nz                                        ; $57A1: $C0

    ld e, [hl]                                    ; $57A2: $5E

jr_008_57A3:
    rrca                                          ; $57A3: $0F
    xor b                                         ; $57A4: $A8
    ld d, a                                       ; $57A5: $57
    nop                                           ; $57A6: $00
    nop                                           ; $57A7: $00
    add hl, bc                                    ; $57A8: $09

jr_008_57A9:
    add hl, sp                                    ; $57A9: $39
    add sp, $00                                   ; $57AA: $E8 $00
    add hl, sp                                    ; $57AC: $39
    ldh a, [rSC]                                  ; $57AD: $F0 $02
    jr nc, jr_008_57A9                            ; $57AF: $30 $F8

    inc b                                         ; $57B1: $04
    jr nc, jr_008_57B4                            ; $57B2: $30 $00

jr_008_57B4:
    ld b, $36                                     ; $57B4: $06 $36
    ld [$3B08], sp                                ; $57B6: $08 $08 $3B
    db $10                                        ; $57B9: $10
    ld a, [bc]                                    ; $57BA: $0A
    cpl                                           ; $57BB: $2F

jr_008_57BC:
    jr jr_008_57CA                                ; $57BC: $18 $0C

    jr nz, jr_008_57BC                            ; $57BE: $20 $FC

    ld c, $20                                     ; $57C0: $0E $20
    inc b                                         ; $57C2: $04
    stop                                          ; $57C3: $10 $00
    scf                                           ; $57C5: $37
    nop                                           ; $57C6: $00
    ldh [$FF5F], a                                ; $57C7: $E0 $5F
    rrca                                          ; $57C9: $0F

jr_008_57CA:
    adc $57                                       ; $57CA: $CE $57
    ld hl, sp+$00                                 ; $57CC: $F8 $00
    rlca                                          ; $57CE: $07
    ld [hl], $F7                                  ; $57CF: $36 $F7
    nop                                           ; $57D1: $00
    jr nc, @+$01                                  ; $57D2: $30 $FF

    ld [bc], a                                    ; $57D4: $02
    jr nc, @+$09                                  ; $57D5: $30 $07

    inc b                                         ; $57D7: $04
    inc sp                                        ; $57D8: $33
    rrca                                          ; $57D9: $0F
    ld b, $3B                                     ; $57DA: $06 $3B
    rla                                           ; $57DC: $17
    ld [$0420], sp                                ; $57DD: $08 $20 $04
    ld a, [bc]                                    ; $57E0: $0A
    ld e, $0C                                     ; $57E1: $1E $0C
    inc c                                         ; $57E3: $0C
    nop                                           ; $57E4: $00
    scf                                           ; $57E5: $37
    nop                                           ; $57E6: $00
    ret nz                                        ; $57E7: $C0

    ld h, b                                       ; $57E8: $60
    rrca                                          ; $57E9: $0F
    xor $57                                       ; $57EA: $EE $57
    ld a, [$0800]                                 ; $57EC: $FA $00 $08
    jr nz, jr_008_57F1                            ; $57EF: $20 $00

jr_008_57F1:
    nop                                           ; $57F1: $00
    jr nz, jr_008_57FC                            ; $57F2: $20 $08

    ld [bc], a                                    ; $57F4: $02
    jr nz, @+$12                                  ; $57F5: $20 $10

    inc b                                         ; $57F7: $04
    jr nc, @+$01                                  ; $57F8: $30 $FF

    ld b, $30                                     ; $57FA: $06 $30

jr_008_57FC:
    rlca                                          ; $57FC: $07
    ld [$0F30], sp                                ; $57FD: $08 $30 $0F
    ld a, [bc]                                    ; $5800: $0A
    dec l                                         ; $5801: $2D
    rla                                           ; $5802: $17
    inc c                                         ; $5803: $0C
    ld [hl], $F7                                  ; $5804: $36 $F7
    ld c, $00                                     ; $5806: $0E $00
    scf                                           ; $5808: $37
    dec a                                         ; $5809: $3D
    ret nz                                        ; $580A: $C0

    ld h, c                                       ; $580B: $61
    rrca                                          ; $580C: $0F
    ld de, $0058                                  ; $580D: $11 $58 $00
    nop                                           ; $5810: $00
    add hl, bc                                    ; $5811: $09
    add hl, sp                                    ; $5812: $39
    and $00                                       ; $5813: $E6 $00
    scf                                           ; $5815: $37
    xor $02                                       ; $5816: $EE $02
    inc sp                                        ; $5818: $33
    or $04                                        ; $5819: $F6 $04

jr_008_581B:
    jr nc, jr_008_581B                            ; $581B: $30 $FE

    ld b, $30                                     ; $581D: $06 $30
    ld b, $08                                     ; $581F: $06 $08
    dec sp                                        ; $5821: $3B
    ld c, $0A                                     ; $5822: $0E $0A
    jr nz, @+$08                                  ; $5824: $20 $06

    inc c                                         ; $5826: $0C
    inc h                                         ; $5827: $24
    ld c, $0E                                     ; $5828: $0E $0E
    ld [hl+], a                                   ; $582A: $22
    ld d, $10                                     ; $582B: $16 $10
    nop                                           ; $582D: $00
    inc sp                                        ; $582E: $33
    ld a, $E0                                     ; $582F: $3E $E0
    ld h, d                                       ; $5831: $62
    rrca                                          ; $5832: $0F
    scf                                           ; $5833: $37
    ld e, b                                       ; $5834: $58
    nop                                           ; $5835: $00
    add hl, bc                                    ; $5836: $09
    ld b, $08                                     ; $5837: $06 $08
    push af                                       ; $5839: $F5
    nop                                           ; $583A: $00
    ld [$02FD], sp                                ; $583B: $08 $FD $02
    jr @-$06                                      ; $583E: $18 $F8

    inc b                                         ; $5840: $04
    dec d                                         ; $5841: $15
    nop                                           ; $5842: $00
    ld b, $25                                     ; $5843: $06 $25
    nop                                           ; $5845: $00
    ld [$081E], sp                                ; $5846: $08 $1E $08
    ld a, [bc]                                    ; $5849: $0A
    nop                                           ; $584A: $00
    and b                                         ; $584B: $A0
    ld h, e                                       ; $584C: $63
    rrca                                          ; $584D: $0F
    ld d, d                                       ; $584E: $52
    ld e, b                                       ; $584F: $58
    nop                                           ; $5850: $00
    add hl, bc                                    ; $5851: $09
    inc b                                         ; $5852: $04
    dec de                                        ; $5853: $1B
    add sp, $00                                   ; $5854: $E8 $00
    dec de                                        ; $5856: $1B
    ldh a, [rSC]                                  ; $5857: $F0 $02
    dec bc                                        ; $5859: $0B
    ld [$0B04], a                                 ; $585A: $EA $04 $0B
    ldh a, [c]                                    ; $585D: $F2
    ld b, $00                                     ; $585E: $06 $00
    jr nz, jr_008_58C6                            ; $5860: $20 $64

    rrca                                          ; $5862: $0F
    ld h, a                                       ; $5863: $67
    ld e, b                                       ; $5864: $58
    nop                                           ; $5865: $00
    ld bc, $2703                                  ; $5866: $01 $03 $27
    ldh a, [rP1]                                  ; $5869: $F0 $00
    ld h, $E8                                     ; $586B: $26 $E8
    ld [bc], a                                    ; $586D: $02
    ld a, [bc]                                    ; $586E: $0A
    ldh a, [rDIV]                                 ; $586F: $F0 $04
    nop                                           ; $5871: $00
    ld bc, $8005                                  ; $5872: $01 $05 $80
    ld h, h                                       ; $5875: $64
    rrca                                          ; $5876: $0F
    ld a, e                                       ; $5877: $7B
    ld e, b                                       ; $5878: $58
    nop                                           ; $5879: $00
    inc b                                         ; $587A: $04
    rlca                                          ; $587B: $07
    dec h                                         ; $587C: $25
    rst RST_20                                    ; $587D: $E7
    nop                                           ; $587E: $00
    ld a, [hl+]                                   ; $587F: $2A
    rst RST_28                                    ; $5880: $EF
    ld [bc], a                                    ; $5881: $02
    dec hl                                        ; $5882: $2B
    rst RST_30                                    ; $5883: $F7
    inc b                                         ; $5884: $04
    inc l                                         ; $5885: $2C
    rst RST_38                                    ; $5886: $FF
    ld b, $1B                                     ; $5887: $06 $1B
    rst RST_30                                    ; $5889: $F7
    ld [$FF1C], sp                                ; $588A: $08 $1C $FF
    ld a, [bc]                                    ; $588D: $0A
    ld l, $07                                     ; $588E: $2E $07
    inc c                                         ; $5890: $0C
    nop                                           ; $5891: $00
    ld bc, $6005                                  ; $5892: $01 $05 $60
    ld h, l                                       ; $5895: $65
    rrca                                          ; $5896: $0F
    sbc e                                         ; $5897: $9B
    ld e, b                                       ; $5898: $58
    nop                                           ; $5899: $00
    inc b                                         ; $589A: $04
    rlca                                          ; $589B: $07
    dec hl                                        ; $589C: $2B
    xor $00                                       ; $589D: $EE $00
    inc l                                         ; $589F: $2C
    or $02                                        ; $58A0: $F6 $02
    inc l                                         ; $58A2: $2C
    cp $04                                        ; $58A3: $FE $04
    dec hl                                        ; $58A5: $2B
    ld b, $06                                     ; $58A6: $06 $06
    inc e                                         ; $58A8: $1C
    or $08                                        ; $58A9: $F6 $08
    inc e                                         ; $58AB: $1C
    cp $0A                                        ; $58AC: $FE $0A
    inc c                                         ; $58AE: $0C
    ei                                            ; $58AF: $FB
    inc c                                         ; $58B0: $0C
    nop                                           ; $58B1: $00
    ld bc, $4005                                  ; $58B2: $01 $05 $40
    ld h, [hl]                                    ; $58B5: $66
    rrca                                          ; $58B6: $0F
    cp e                                          ; $58B7: $BB
    ld e, b                                       ; $58B8: $58
    nop                                           ; $58B9: $00
    inc b                                         ; $58BA: $04
    ld [$F026], sp                                ; $58BB: $08 $26 $F0
    nop                                           ; $58BE: $00
    dec hl                                        ; $58BF: $2B
    push af                                       ; $58C0: $F5
    ld [bc], a                                    ; $58C1: $02
    dec hl                                        ; $58C2: $2B
    db $FD                                        ; $58C3: $FD
    inc b                                         ; $58C4: $04
    ld a, [hl+]                                   ; $58C5: $2A

jr_008_58C6:
    dec b                                         ; $58C6: $05
    ld b, $1B                                     ; $58C7: $06 $1B
    ld hl, sp+$08                                 ; $58C9: $F8 $08
    dec de                                        ; $58CB: $1B
    nop                                           ; $58CC: $00
    ld a, [bc]                                    ; $58CD: $0A
    dec bc                                        ; $58CE: $0B
    db $FC                                        ; $58CF: $FC
    inc c                                         ; $58D0: $0C
    ld a, [hl-]                                   ; $58D1: $3A
    dec b                                         ; $58D2: $05
    ld c, $00                                     ; $58D3: $0E $00
    ld bc, $4000                                  ; $58D5: $01 $00 $40
    ld h, a                                       ; $58D8: $67
    rrca                                          ; $58D9: $0F
    sbc $58                                       ; $58DA: $DE $58
    dec b                                         ; $58DC: $05
    nop                                           ; $58DD: $00
    rlca                                          ; $58DE: $07
    ld l, $F1                                     ; $58DF: $2E $F1
    nop                                           ; $58E1: $00
    ld l, $F9                                     ; $58E2: $2E $F9
    ld [bc], a                                    ; $58E4: $02
    inc l                                         ; $58E5: $2C
    ld bc, $3704                                  ; $58E6: $01 $04 $37
    add hl, bc                                    ; $58E9: $09
    ld b, $1E                                     ; $58EA: $06 $1E
    pop af                                        ; $58EC: $F1
    ld [$F91E], sp                                ; $58ED: $08 $1E $F9
    ld a, [bc]                                    ; $58F0: $0A
    ld c, $F5                                     ; $58F1: $0E $F5
    inc c                                         ; $58F3: $0C
    nop                                           ; $58F4: $00
    ld bc, $2000                                  ; $58F5: $01 $00 $20
    ld l, b                                       ; $58F8: $68
    rrca                                          ; $58F9: $0F
    cp $58                                        ; $58FA: $FE $58
    inc bc                                        ; $58FC: $03
    ld b, $06                                     ; $58FD: $06 $06
    cpl                                           ; $58FF: $2F
    db $EC                                        ; $5900: $EC
    nop                                           ; $5901: $00
    add hl, hl                                    ; $5902: $29

jr_008_5903:
    db $F4                                        ; $5903: $F4
    ld [bc], a                                    ; $5904: $02
    jr z, jr_008_5903                             ; $5905: $28 $FC

    inc b                                         ; $5907: $04
    jr @-$02                                      ; $5908: $18 $FC

    ld b, $16                                     ; $590A: $06 $16
    inc b                                         ; $590C: $04
    ld [$0426], sp                                ; $590D: $08 $26 $04
    ld a, [bc]                                    ; $5910: $0A
    nop                                           ; $5911: $00
    ld bc, $E000                                  ; $5912: $01 $00 $E0
    ld l, b                                       ; $5915: $68
    rrca                                          ; $5916: $0F
    dec de                                        ; $5917: $1B
    ld e, c                                       ; $5918: $59
    nop                                           ; $5919: $00
    nop                                           ; $591A: $00
    dec bc                                        ; $591B: $0B
    ld e, $EE                                     ; $591C: $1E $EE
    nop                                           ; $591E: $00
    dec e                                         ; $591F: $1D
    or $02                                        ; $5920: $F6 $02
    ld e, $FE                                     ; $5922: $1E $FE
    inc b                                         ; $5924: $04
    dec e                                         ; $5925: $1D
    ld b, $06                                     ; $5926: $06 $06
    ld l, $EE                                     ; $5928: $2E $EE
    ld [$F62D], sp                                ; $592A: $08 $2D $F6
    ld a, [bc]                                    ; $592D: $0A
    ld l, $FE                                     ; $592E: $2E $FE
    inc c                                         ; $5930: $0C
    dec l                                         ; $5931: $2D
    ld b, $0E                                     ; $5932: $06 $0E
    ld [hl+], a                                   ; $5934: $22
    ld c, $10                                     ; $5935: $0E $10
    dec a                                         ; $5937: $3D
    or $12                                        ; $5938: $F6 $12
    dec a                                         ; $593A: $3D
    inc b                                         ; $593B: $04
    inc d                                         ; $593C: $14
    nop                                           ; $593D: $00
    ld bc, $4000                                  ; $593E: $01 $00 $40
    ld l, d                                       ; $5941: $6A
    rrca                                          ; $5942: $0F
    ld b, a                                       ; $5943: $47
    ld e, c                                       ; $5944: $59
    nop                                           ; $5945: $00
    nop                                           ; $5946: $00
    inc c                                         ; $5947: $0C
    ld e, $ED                                     ; $5948: $1E $ED
    nop                                           ; $594A: $00
    inc e                                         ; $594B: $1C
    push af                                       ; $594C: $F5
    ld [bc], a                                    ; $594D: $02
    ld e, $FD                                     ; $594E: $1E $FD
    inc b                                         ; $5950: $04
    inc e                                         ; $5951: $1C
    dec b                                         ; $5952: $05
    ld b, $2E                                     ; $5953: $06 $2E
    db $ED                                        ; $5955: $ED
    ld [$F52C], sp                                ; $5956: $08 $2C $F5
    ld a, [bc]                                    ; $5959: $0A
    ld l, $FD                                     ; $595A: $2E $FD
    inc c                                         ; $595C: $0C
    inc l                                         ; $595D: $2C
    dec b                                         ; $595E: $05
    ld c, $25                                     ; $595F: $0E $25
    dec c                                         ; $5961: $0D
    db $10                                        ; $5962: $10
    inc a                                         ; $5963: $3C

jr_008_5964:
    push af                                       ; $5964: $F5
    ld [de], a                                    ; $5965: $12
    inc a                                         ; $5966: $3C
    inc bc                                        ; $5967: $03
    inc d                                         ; $5968: $14

jr_008_5969:
    add hl, sp                                    ; $5969: $39
    dec bc                                        ; $596A: $0B
    ld d, $00                                     ; $596B: $16 $00
    ld bc, $C000                                  ; $596D: $01 $00 $C0
    ld l, e                                       ; $5970: $6B
    rrca                                          ; $5971: $0F
    halt                                          ; $5972: $76
    ld e, c                                       ; $5973: $59
    nop                                           ; $5974: $00
    nop                                           ; $5975: $00
    ld [bc], a                                    ; $5976: $02

jr_008_5977:
    jr nz, jr_008_5969                            ; $5977: $20 $F0

    nop                                           ; $5979: $00
    jr jr_008_5964                                ; $597A: $18 $E8

    ld [bc], a                                    ; $597C: $02
    nop                                           ; $597D: $00
    nop                                           ; $597E: $00
    ld l, h                                       ; $597F: $6C
    rrca                                          ; $5980: $0F
    add l                                         ; $5981: $85

jr_008_5982:
    ld e, c                                       ; $5982: $59
    nop                                           ; $5983: $00
    nop                                           ; $5984: $00
    rlca                                          ; $5985: $07
    jr nc, jr_008_5977                            ; $5986: $30 $EF

    nop                                           ; $5988: $00
    jr nc, jr_008_5982                            ; $5989: $30 $F7

    ld [bc], a                                    ; $598B: $02
    jr nc, @+$01                                  ; $598C: $30 $FF

    inc b                                         ; $598E: $04
    inc sp                                        ; $598F: $33
    rlca                                          ; $5990: $07
    ld b, $3B                                     ; $5991: $06 $3B
    rrca                                          ; $5993: $0F
    ld [$F820], sp                                ; $5994: $08 $20 $F8
    ld a, [bc]                                    ; $5997: $0A
    jr nz, jr_008_599A                            ; $5998: $20 $00

jr_008_599A:
    inc c                                         ; $599A: $0C
    nop                                           ; $599B: $00
    ld bc, $E000                                  ; $599C: $01 $00 $E0
    ld l, h                                       ; $599F: $6C
    rrca                                          ; $59A0: $0F
    and l                                         ; $59A1: $A5
    ld e, c                                       ; $59A2: $59
    nop                                           ; $59A3: $00
    nop                                           ; $59A4: $00

jr_008_59A5:
    ld bc, $F020                                  ; $59A5: $01 $20 $F0
    nop                                           ; $59A8: $00
    nop                                           ; $59A9: $00
    ld bc, $2000                                  ; $59AA: $01 $00 $20
    ld l, [hl]                                    ; $59AD: $6E
    rrca                                          ; $59AE: $0F
    or e                                          ; $59AF: $B3

jr_008_59B0:
    ld e, c                                       ; $59B0: $59

jr_008_59B1:
    nop                                           ; $59B1: $00
    nop                                           ; $59B2: $00
    ld c, $31                                     ; $59B3: $0E $31
    db $E4                                        ; $59B5: $E4
    nop                                           ; $59B6: $00
    jr nc, jr_008_59A5                            ; $59B7: $30 $EC

    ld [bc], a                                    ; $59B9: $02
    jr nc, jr_008_59B0                            ; $59BA: $30 $F4

jr_008_59BC:
    inc b                                         ; $59BC: $04
    jr nc, @-$02                                  ; $59BD: $30 $FC

    ld b, $30                                     ; $59BF: $06 $30
    inc b                                         ; $59C1: $04
    ld [$0C30], sp                                ; $59C2: $08 $30 $0C
    ld a, [bc]                                    ; $59C5: $0A
    jr nz, jr_008_59B1                            ; $59C6: $20 $E9

    inc c                                         ; $59C8: $0C
    jr nz, jr_008_59BC                            ; $59C9: $20 $F1

    ld c, $20                                     ; $59CB: $0E $20
    ld sp, hl                                     ; $59CD: $F9
    db $10                                        ; $59CE: $10
    jr nz, jr_008_59D2                            ; $59CF: $20 $01

    ld [de], a                                    ; $59D1: $12

jr_008_59D2:
    jr nz, jr_008_59DD                            ; $59D2: $20 $09

    inc d                                         ; $59D4: $14
    ld h, $14                                     ; $59D5: $26 $14
    ld d, $10                                     ; $59D7: $16 $10
    di                                            ; $59D9: $F3
    jr jr_008_59EC                                ; $59DA: $18 $10

    inc b                                         ; $59DC: $04

jr_008_59DD:
    ld a, [de]                                    ; $59DD: $1A
    nop                                           ; $59DE: $00
    ld bc, $0000                                  ; $59DF: $01 $00 $00
    ld l, l                                       ; $59E2: $6D
    rrca                                          ; $59E3: $0F
    add sp, $59                                   ; $59E4: $E8 $59
    nop                                           ; $59E6: $00
    nop                                           ; $59E7: $00
    add hl, bc                                    ; $59E8: $09
    cpl                                           ; $59E9: $2F
    ldh a, [c]                                    ; $59EA: $F2
    nop                                           ; $59EB: $00

jr_008_59EC:
    cpl                                           ; $59EC: $2F
    ld a, [$2E02]                                 ; $59ED: $FA $02 $2E
    ld [bc], a                                    ; $59F0: $02
    inc b                                         ; $59F1: $04
    cpl                                           ; $59F2: $2F
    ld a, [bc]                                    ; $59F3: $0A
    ld b, $1F                                     ; $59F4: $06 $1F
    ldh a, [c]                                    ; $59F6: $F2
    ld [$FA1F], sp                                ; $59F7: $08 $1F $FA
    ld a, [bc]                                    ; $59FA: $0A
    ld e, $02                                     ; $59FB: $1E $02
    inc c                                         ; $59FD: $0C
    rra                                           ; $59FE: $1F
    ld a, [bc]                                    ; $59FF: $0A
    ld c, $3E                                     ; $5A00: $0E $3E
    ld [bc], a                                    ; $5A02: $02
    stop                                          ; $5A03: $10 $00
    ld bc, $8000                                  ; $5A05: $01 $00 $80
    ld c, l                                       ; $5A08: $4D
    rrca                                          ; $5A09: $0F
    ld c, $5A                                     ; $5A0A: $0E $5A
    nop                                           ; $5A0C: $00
    nop                                           ; $5A0D: $00
    ld [$F530], sp                                ; $5A0E: $08 $30 $F5

jr_008_5A11:
    nop                                           ; $5A11: $00

jr_008_5A12:
    jr nc, jr_008_5A11                            ; $5A12: $30 $FD

    ld [bc], a                                    ; $5A14: $02
    jr nc, jr_008_5A1C                            ; $5A15: $30 $05

    inc b                                         ; $5A17: $04
    jr nz, jr_008_5A12                            ; $5A18: $20 $F8

    ld b, $20                                     ; $5A1A: $06 $20

jr_008_5A1C:
    nop                                           ; $5A1C: $00
    ld [$0820], sp                                ; $5A1D: $08 $20 $08
    ld a, [bc]                                    ; $5A20: $0A
    jr z, jr_008_5A30                             ; $5A21: $28 $0D

    inc c                                         ; $5A23: $0C
    jr nz, jr_008_5A3B                            ; $5A24: $20 $15

    ld c, $00                                     ; $5A26: $0E $00
    ld bc, $8000                                  ; $5A28: $01 $00 $80
    ld c, [hl]                                    ; $5A2B: $4E
    rrca                                          ; $5A2C: $0F
    ld c, a                                       ; $5A2D: $4F
    ld e, d                                       ; $5A2E: $5A
    nop                                           ; $5A2F: $00

jr_008_5A30:
    nop                                           ; $5A30: $00
    jr nz, jr_008_5A34                            ; $5A31: $20 $01

    nop                                           ; $5A33: $00

jr_008_5A34:
    add b                                         ; $5A34: $80
    ld c, [hl]                                    ; $5A35: $4E
    rrca                                          ; $5A36: $0F
    ld c, a                                       ; $5A37: $4F
    ld e, d                                       ; $5A38: $5A
    nop                                           ; $5A39: $00
    nop                                           ; $5A3A: $00

jr_008_5A3B:
    ld b, b                                       ; $5A3B: $40
    ld bc, $8000                                  ; $5A3C: $01 $00 $80
    ld c, [hl]                                    ; $5A3F: $4E
    rrca                                          ; $5A40: $0F
    ld c, a                                       ; $5A41: $4F
    ld e, d                                       ; $5A42: $5A
    nop                                           ; $5A43: $00
    inc c                                         ; $5A44: $0C
    ld h, b                                       ; $5A45: $60
    ld bc, $8000                                  ; $5A46: $01 $00 $80
    ld c, [hl]                                    ; $5A49: $4E
    rrca                                          ; $5A4A: $0F
    ld c, a                                       ; $5A4B: $4F
    ld e, d                                       ; $5A4C: $5A
    nop                                           ; $5A4D: $00
    inc c                                         ; $5A4E: $0C
    rlca                                          ; $5A4F: $07
    dec hl                                        ; $5A50: $2B
    xor $00                                       ; $5A51: $EE $00
    dec hl                                        ; $5A53: $2B
    or $02                                        ; $5A54: $F6 $02
    dec hl                                        ; $5A56: $2B
    cp $04                                        ; $5A57: $FE $04
    dec hl                                        ; $5A59: $2B
    ld b, $06                                     ; $5A5A: $06 $06
    dec sp                                        ; $5A5C: $3B
    push af                                       ; $5A5D: $F5
    ld [$FD3B], sp                                ; $5A5E: $08 $3B $FD
    ld a, [bc]                                    ; $5A61: $0A
    dec sp                                        ; $5A62: $3B
    dec b                                         ; $5A63: $05
    inc c                                         ; $5A64: $0C
    nop                                           ; $5A65: $00
    ld bc, $6000                                  ; $5A66: $01 $00 $60
    ld c, a                                       ; $5A69: $4F
    rrca                                          ; $5A6A: $0F
    ld l, a                                       ; $5A6B: $6F
    ld e, d                                       ; $5A6C: $5A
    db $FC                                        ; $5A6D: $FC
    nop                                           ; $5A6E: $00
    ld b, $32                                     ; $5A6F: $06 $32
    rst RST_30                                    ; $5A71: $F7
    nop                                           ; $5A72: $00
    jr nc, @+$01                                  ; $5A73: $30 $FF

    ld [bc], a                                    ; $5A75: $02
    cpl                                           ; $5A76: $2F
    rlca                                          ; $5A77: $07
    inc b                                         ; $5A78: $04
    inc l                                         ; $5A79: $2C
    rrca                                          ; $5A7A: $0F
    ld b, $27                                     ; $5A7B: $06 $27
    rla                                           ; $5A7D: $17
    ld [$071F], sp                                ; $5A7E: $08 $1F $07
    ld a, [bc]                                    ; $5A81: $0A
    nop                                           ; $5A82: $00
    inc e                                         ; $5A83: $1C
    nop                                           ; $5A84: $00
    jr nz, @+$52                                  ; $5A85: $20 $50

    rrca                                          ; $5A87: $0F
    sub [hl]                                      ; $5A88: $96
    ld e, d                                       ; $5A89: $5A
    rst RST_38                                    ; $5A8A: $FF
    dec e                                         ; $5A8B: $1D
    ld h, b                                       ; $5A8C: $60
    inc e                                         ; $5A8D: $1C
    nop                                           ; $5A8E: $00
    jr nz, jr_008_5AE1                            ; $5A8F: $20 $50

    rrca                                          ; $5A91: $0F
    sub [hl]                                      ; $5A92: $96
    ld e, d                                       ; $5A93: $5A
    nop                                           ; $5A94: $00
    nop                                           ; $5A95: $00
    rlca                                          ; $5A96: $07
    ld a, [de]                                    ; $5A97: $1A
    db $EB                                        ; $5A98: $EB
    nop                                           ; $5A99: $00
    inc d                                         ; $5A9A: $14
    di                                            ; $5A9B: $F3
    ld [bc], a                                    ; $5A9C: $02
    ld de, $04FB                                  ; $5A9D: $11 $FB $04
    inc de                                        ; $5AA0: $13
    inc bc                                        ; $5AA1: $03
    ld b, $15                                     ; $5AA2: $06 $15
    dec bc                                        ; $5AA4: $0B
    ld [$1319], sp                                ; $5AA5: $08 $19 $13
    ld a, [bc]                                    ; $5AA8: $0A
    ld hl, $0CF4                                  ; $5AA9: $21 $F4 $0C
    nop                                           ; $5AAC: $00
    inc e                                         ; $5AAD: $1C
    nop                                           ; $5AAE: $00
    nop                                           ; $5AAF: $00
    ld d, c                                       ; $5AB0: $51
    rrca                                          ; $5AB1: $0F
    ret nz                                        ; $5AB2: $C0

jr_008_5AB3:
    ld e, d                                       ; $5AB3: $5A
    ld hl, sp+$02                                 ; $5AB4: $F8 $02
    jr nz, jr_008_5AD4                            ; $5AB6: $20 $1C

    nop                                           ; $5AB8: $00
    nop                                           ; $5AB9: $00
    ld d, c                                       ; $5ABA: $51
    rrca                                          ; $5ABB: $0F
    ret nz                                        ; $5ABC: $C0

    ld e, d                                       ; $5ABD: $5A
    ld [$0602], sp                                ; $5ABE: $08 $02 $06
    jr nc, jr_008_5AB3                            ; $5AC1: $30 $F0

    nop                                           ; $5AC3: $00
    cpl                                           ; $5AC4: $2F
    ld hl, sp+$02                                 ; $5AC5: $F8 $02
    cpl                                           ; $5AC7: $2F
    nop                                           ; $5AC8: $00
    inc b                                         ; $5AC9: $04
    cpl                                           ; $5ACA: $2F
    ld [$2F06], sp                                ; $5ACB: $08 $06 $2F
    db $10                                        ; $5ACE: $10
    ld [$1835], sp                                ; $5ACF: $08 $35 $18
    ld a, [bc]                                    ; $5AD2: $0A
    nop                                           ; $5AD3: $00

jr_008_5AD4:
    cp e                                          ; $5AD4: $BB
    nop                                           ; $5AD5: $00
    ldh [$FF6F], a                                ; $5AD6: $E0 $6F
    rrca                                          ; $5AD8: $0F
    db $DD                                        ; $5AD9: $DD
    ld e, d                                       ; $5ADA: $5A
    db $FC                                        ; $5ADB: $FC
    nop                                           ; $5ADC: $00
    dec b                                         ; $5ADD: $05
    cpl                                           ; $5ADE: $2F
    ld hl, sp+$00                                 ; $5ADF: $F8 $00

jr_008_5AE1:
    rra                                           ; $5AE1: $1F
    ld hl, sp+$02                                 ; $5AE2: $F8 $02
    jr nz, jr_008_5AE6                            ; $5AE4: $20 $00

jr_008_5AE6:
    inc b                                         ; $5AE6: $04
    jr nz, jr_008_5AF1                            ; $5AE7: $20 $08

    ld b, $10                                     ; $5AE9: $06 $10
    nop                                           ; $5AEB: $00
    ld [$8000], sp                                ; $5AEC: $08 $00 $80
    ld [hl], b                                    ; $5AEF: $70
    rrca                                          ; $5AF0: $0F

jr_008_5AF1:
    push af                                       ; $5AF1: $F5
    ld e, d                                       ; $5AF2: $5A
    db $FC                                        ; $5AF3: $FC
    nop                                           ; $5AF4: $00
    inc bc                                        ; $5AF5: $03
    jr nc, jr_008_5AF8                            ; $5AF6: $30 $00

jr_008_5AF8:
    nop                                           ; $5AF8: $00
    jr nc, jr_008_5B03                            ; $5AF9: $30 $08

    ld [bc], a                                    ; $5AFB: $02
    add hl, sp                                    ; $5AFC: $39
    db $10                                        ; $5AFD: $10
    inc b                                         ; $5AFE: $04
    nop                                           ; $5AFF: $00
    ldh [rSVBK], a                                ; $5B00: $E0 $70
    rrca                                          ; $5B02: $0F

jr_008_5B03:
    rlca                                          ; $5B03: $07
    ld e, e                                       ; $5B04: $5B
    db $FC                                        ; $5B05: $FC
    nop                                           ; $5B06: $00
    inc bc                                        ; $5B07: $03
    jr nc, jr_008_5B0A                            ; $5B08: $30 $00

jr_008_5B0A:
    nop                                           ; $5B0A: $00
    jr nc, jr_008_5B15                            ; $5B0B: $30 $08

    ld [bc], a                                    ; $5B0D: $02
    add hl, sp                                    ; $5B0E: $39
    db $10                                        ; $5B0F: $10
    inc b                                         ; $5B10: $04
    nop                                           ; $5B11: $00
    ld bc, $4041                                  ; $5B12: $01 $41 $40

jr_008_5B15:
    ld [hl], c                                    ; $5B15: $71
    rrca                                          ; $5B16: $0F
    dec de                                        ; $5B17: $1B
    ld e, e                                       ; $5B18: $5B
    ld hl, sp+$00                                 ; $5B19: $F8 $00
    dec c                                         ; $5B1B: $0D
    ld d, $00                                     ; $5B1C: $16 $00
    nop                                           ; $5B1E: $00
    ld d, $F8                                     ; $5B1F: $16 $F8
    ld [bc], a                                    ; $5B21: $02
    ld d, $F0                                     ; $5B22: $16 $F0
    inc b                                         ; $5B24: $04
    ld hl, $06E9                                  ; $5B25: $21 $E9 $06
    ld h, $F1                                     ; $5B28: $26 $F1
    ld [$F926], sp                                ; $5B2A: $08 $26 $F9
    ld a, [bc]                                    ; $5B2D: $0A
    ld h, $01                                     ; $5B2E: $26 $01
    inc c                                         ; $5B30: $0C
    inc e                                         ; $5B31: $1C
    ld [$2C0E], sp                                ; $5B32: $08 $0E $2C
    add hl, bc                                    ; $5B35: $09
    db $10                                        ; $5B36: $10
    cpl                                           ; $5B37: $2F
    ld de, $3812                                  ; $5B38: $11 $12 $38
    add hl, de                                    ; $5B3B: $19
    inc d                                         ; $5B3C: $14
    inc a                                         ; $5B3D: $3C
    add hl, bc                                    ; $5B3E: $09
    ld d, $36                                     ; $5B3F: $16 $36
    ld bc, $0018                                  ; $5B41: $01 $18 $00
    ld bc, $E042                                  ; $5B44: $01 $42 $E0
    ld [hl], d                                    ; $5B47: $72
    rrca                                          ; $5B48: $0F
    ld c, l                                       ; $5B49: $4D
    ld e, e                                       ; $5B4A: $5B
    ld hl, sp+$00                                 ; $5B4B: $F8 $00
    inc c                                         ; $5B4D: $0C
    ld h, $E6                                     ; $5B4E: $26 $E6
    nop                                           ; $5B50: $00
    ld h, $EE                                     ; $5B51: $26 $EE
    ld [bc], a                                    ; $5B53: $02
    ld [hl], $E7                                  ; $5B54: $36 $E7
    inc b                                         ; $5B56: $04
    ld [hl], $EF                                  ; $5B57: $36 $EF
    ld b, $2F                                     ; $5B59: $06 $2F
    rst RST_30                                    ; $5B5B: $F7
    ld [$021C], sp                                ; $5B5C: $08 $1C $02
    ld a, [bc]                                    ; $5B5F: $0A
    inc e                                         ; $5B60: $1C
    ld a, [bc]                                    ; $5B61: $0A
    inc c                                         ; $5B62: $0C
    inc l                                         ; $5B63: $2C
    rst RST_38                                    ; $5B64: $FF
    ld c, $2C                                     ; $5B65: $0E $2C
    rlca                                          ; $5B67: $07
    db $10                                        ; $5B68: $10
    ld l, $0F                                     ; $5B69: $2E $0F
    ld [de], a                                    ; $5B6B: $12
    inc a                                         ; $5B6C: $3C
    rlca                                          ; $5B6D: $07
    inc d                                         ; $5B6E: $14
    jr c, @+$19                                   ; $5B6F: $38 $17

    ld d, $00                                     ; $5B71: $16 $00
    ld bc, $6043                                  ; $5B73: $01 $43 $60
    ld [hl], h                                    ; $5B76: $74
    rrca                                          ; $5B77: $0F
    ld a, h                                       ; $5B78: $7C
    ld e, e                                       ; $5B79: $5B
    nop                                           ; $5B7A: $00
    nop                                           ; $5B7B: $00
    add hl, bc                                    ; $5B7C: $09
    ld l, $EF                                     ; $5B7D: $2E $EF
    nop                                           ; $5B7F: $00
    ld hl, $02F7                                  ; $5B80: $21 $F7 $02
    inc e                                         ; $5B83: $1C
    rst RST_38                                    ; $5B84: $FF
    inc b                                         ; $5B85: $04
    ld sp, $06F7                                  ; $5B86: $31 $F7 $06
    inc l                                         ; $5B89: $2C
    rst RST_38                                    ; $5B8A: $FF
    ld [$0728], sp                                ; $5B8B: $08 $28 $07
    ld a, [bc]                                    ; $5B8E: $0A
    inc a                                         ; $5B8F: $3C
    rst RST_38                                    ; $5B90: $FF
    inc c                                         ; $5B91: $0C
    jr c, @+$09                                   ; $5B92: $38 $07

    ld c, $31                                     ; $5B94: $0E $31
    rrca                                          ; $5B96: $0F
    stop                                          ; $5B97: $10 $00
    ld bc, $8044                                  ; $5B99: $01 $44 $80
    ld [hl], l                                    ; $5B9C: $75
    rrca                                          ; $5B9D: $0F
    and d                                         ; $5B9E: $A2
    ld e, e                                       ; $5B9F: $5B
    nop                                           ; $5BA0: $00
    nop                                           ; $5BA1: $00
    dec bc                                        ; $5BA2: $0B
    inc e                                         ; $5BA3: $1C
    ld hl, sp+$00                                 ; $5BA4: $F8 $00
    inc l                                         ; $5BA6: $2C
    ld hl, sp+$02                                 ; $5BA7: $F8 $02
    inc a                                         ; $5BA9: $3C
    ld hl, sp+$04                                 ; $5BAA: $F8 $04
    ld a, [de]                                    ; $5BAC: $1A
    ldh a, [rTMA]                                 ; $5BAD: $F0 $06
    ld a, [hl+]                                   ; $5BAF: $2A
    ldh a, [$FF08]                                ; $5BB0: $F0 $08
    ld a, [hl-]                                   ; $5BB2: $3A
    ldh a, [$FF0A]                                ; $5BB3: $F0 $0A
    ld d, $E8                                     ; $5BB5: $16 $E8
    inc c                                         ; $5BB7: $0C
    ld h, $E8                                     ; $5BB8: $26 $E8
    ld c, $36                                     ; $5BBA: $0E $36
    add sp, $10                                   ; $5BBC: $E8 $10
    inc e                                         ; $5BBE: $1C
    ldh [rNR12], a                                ; $5BBF: $E0 $12
    inc l                                         ; $5BC1: $2C
    ldh [rNR14], a                                ; $5BC2: $E0 $14
    nop                                           ; $5BC4: $00
    ldh [rPCM12], a                               ; $5BC5: $E0 $76
    rrca                                          ; $5BC7: $0F
    call z, Call_000_005B                         ; $5BC8: $CC $5B $00
    nop                                           ; $5BCB: $00
    inc b                                         ; $5BCC: $04
    inc e                                         ; $5BCD: $1C
    nop                                           ; $5BCE: $00
    nop                                           ; $5BCF: $00
    inc l                                         ; $5BD0: $2C
    nop                                           ; $5BD1: $00
    ld [bc], a                                    ; $5BD2: $02
    inc a                                         ; $5BD3: $3C
    nop                                           ; $5BD4: $00
    inc b                                         ; $5BD5: $04
    jr nc, jr_008_5BE0                            ; $5BD6: $30 $08

    ld b, $00                                     ; $5BD8: $06 $00
    ld bc, $6000                                  ; $5BDA: $01 $00 $60
    ld [hl], a                                    ; $5BDD: $77
    rrca                                          ; $5BDE: $0F

jr_008_5BDF:
    db $E3                                        ; $5BDF: $E3

jr_008_5BE0:
    ld e, e                                       ; $5BE0: $5B
    nop                                           ; $5BE1: $00
    nop                                           ; $5BE2: $00
    ld b, $14                                     ; $5BE3: $06 $14
    ld a, [$2400]                                 ; $5BE5: $FA $00 $24
    ld hl, sp+$02                                 ; $5BE8: $F8 $02
    inc [hl]                                      ; $5BEA: $34
    ld hl, sp+$04                                 ; $5BEB: $F8 $04
    jr z, jr_008_5BDF                             ; $5BED: $28 $F0

    ld b, $18                                     ; $5BEF: $06 $18
    ldh a, [c]                                    ; $5BF1: $F2
    ld [$F038], sp                                ; $5BF2: $08 $38 $F0
    ld a, [bc]                                    ; $5BF5: $0A
    nop                                           ; $5BF6: $00
    ld bc, $2000                                  ; $5BF7: $01 $00 $20
    ld a, b                                       ; $5BFA: $78
    rrca                                          ; $5BFB: $0F
    nop                                           ; $5BFC: $00
    ld e, h                                       ; $5BFD: $5C
    nop                                           ; $5BFE: $00
    nop                                           ; $5BFF: $00
    ld [$F61B], sp                                ; $5C00: $08 $1B $F6
    nop                                           ; $5C03: $00

jr_008_5C04:
    jr nz, jr_008_5C04                            ; $5C04: $20 $FE

    ld [bc], a                                    ; $5C06: $02
    dec e                                         ; $5C07: $1D
    ld b, $04                                     ; $5C08: $06 $04
    inc h                                         ; $5C0A: $24
    ld c, $06                                     ; $5C0B: $0E $06
    dec hl                                        ; $5C0D: $2B
    or $08                                        ; $5C0E: $F6 $08

jr_008_5C10:
    jr nc, jr_008_5C10                            ; $5C10: $30 $FE

    ld a, [bc]                                    ; $5C12: $0A
    dec l                                         ; $5C13: $2D
    ld b, $0C                                     ; $5C14: $06 $0C
    dec sp                                        ; $5C16: $3B
    or $0E                                        ; $5C17: $F6 $0E
    nop                                           ; $5C19: $00
    ld bc, $2000                                  ; $5C1A: $01 $00 $20
    ld a, c                                       ; $5C1D: $79
    rrca                                          ; $5C1E: $0F
    inc hl                                        ; $5C1F: $23
    ld e, h                                       ; $5C20: $5C
    nop                                           ; $5C21: $00
    nop                                           ; $5C22: $00
    ld c, $24                                     ; $5C23: $0E $24
    add sp, $00                                   ; $5C25: $E8 $00
    inc d                                         ; $5C27: $14
    xor $02                                       ; $5C28: $EE $02
    inc d                                         ; $5C2A: $14
    or $04                                        ; $5C2B: $F6 $04
    inc h                                         ; $5C2D: $24
    ldh a, [rTMA]                                 ; $5C2E: $F0 $06
    inc h                                         ; $5C30: $24
    ld hl, sp+$08                                 ; $5C31: $F8 $08
    inc d                                         ; $5C33: $14
    cp $0A                                        ; $5C34: $FE $0A
    inc d                                         ; $5C36: $14
    ld b, $0C                                     ; $5C37: $06 $0C
    inc h                                         ; $5C39: $24
    nop                                           ; $5C3A: $00
    ld c, $24                                     ; $5C3B: $0E $24
    ld [$1410], sp                                ; $5C3D: $08 $10 $14
    ld c, $12                                     ; $5C40: $0E $12
    db $10                                        ; $5C42: $10
    ld d, $14                                     ; $5C43: $16 $14
    inc [hl]                                      ; $5C45: $34
    ld sp, hl                                     ; $5C46: $F9
    ld d, $34                                     ; $5C47: $16 $34
    ld bc, $3818                                  ; $5C49: $01 $18 $38
    add hl, bc                                    ; $5C4C: $09
    ld a, [de]                                    ; $5C4D: $1A
    nop                                           ; $5C4E: $00
    ld bc, $E000                                  ; $5C4F: $01 $00 $E0
    ld a, d                                       ; $5C52: $7A
    rrca                                          ; $5C53: $0F
    ld e, b                                       ; $5C54: $58
    ld e, h                                       ; $5C55: $5C
    nop                                           ; $5C56: $00
    nop                                           ; $5C57: $00
    add hl, bc                                    ; $5C58: $09
    add hl, de                                    ; $5C59: $19
    ld a, [$1C00]                                 ; $5C5A: $FA $00 $1C
    ld [bc], a                                    ; $5C5D: $02
    ld [bc], a                                    ; $5C5E: $02
    ld e, $0A                                     ; $5C5F: $1E $0A
    inc b                                         ; $5C61: $04
    ld de, $0612                                  ; $5C62: $11 $12 $06
    add hl, hl                                    ; $5C65: $29
    ld a, [$2C08]                                 ; $5C66: $FA $08 $2C
    ld [bc], a                                    ; $5C69: $02
    ld a, [bc]                                    ; $5C6A: $0A
    add hl, sp                                    ; $5C6B: $39
    ld sp, hl                                     ; $5C6C: $F9
    inc c                                         ; $5C6D: $0C
    inc a                                         ; $5C6E: $3C
    ld [bc], a                                    ; $5C6F: $02
    ld c, $39                                     ; $5C70: $0E $39
    ld a, [bc]                                    ; $5C72: $0A
    db $10                                        ; $5C73: $10
    inc c                                         ; $5C74: $0C
    ld h, d                                       ; $5C75: $62
    rst RST_38                                    ; $5C76: $FF
    rst RST_38                                    ; $5C77: $FF
    ld a, [de]                                    ; $5C78: $1A
    ld h, c                                       ; $5C79: $61
    db $E3                                        ; $5C7A: $E3
    ld e, a                                       ; $5C7B: $5F
    ld e, e                                       ; $5C7C: $5B
    ld h, [hl]                                    ; $5C7D: $66
    rst RST_38                                    ; $5C7E: $FF
    rst RST_38                                    ; $5C7F: $FF
    add $5F                                       ; $5C80: $C6 $5F
    db $E3                                        ; $5C82: $E3
    ld e, a                                       ; $5C83: $5F
    ld e, e                                       ; $5C84: $5B
    ld h, [hl]                                    ; $5C85: $66
    rst RST_38                                    ; $5C86: $FF
    rst RST_38                                    ; $5C87: $FF
    rst RST_38                                    ; $5C88: $FF
    rst RST_38                                    ; $5C89: $FF
    add $5F                                       ; $5C8A: $C6 $5F
    db $E3                                        ; $5C8C: $E3
    ld e, a                                       ; $5C8D: $5F
    push af                                       ; $5C8E: $F5
    ld e, a                                       ; $5C8F: $5F
    rrca                                          ; $5C90: $0F
    ld h, b                                       ; $5C91: $60
    inc h                                         ; $5C92: $24
    ld h, b                                       ; $5C93: $60
    rst RST_38                                    ; $5C94: $FF
    rst RST_38                                    ; $5C95: $FF
    push af                                       ; $5C96: $F5
    ld e, a                                       ; $5C97: $5F
    rrca                                          ; $5C98: $0F
    ld h, b                                       ; $5C99: $60
    rst RST_38                                    ; $5C9A: $FF
    rst RST_38                                    ; $5C9B: $FF
    ld c, d                                       ; $5C9C: $4A
    ld h, b                                       ; $5C9D: $60
    rst RST_38                                    ; $5C9E: $FF
    rst RST_38                                    ; $5C9F: $FF
    push af                                       ; $5CA0: $F5
    ld e, a                                       ; $5CA1: $5F
    ld [hl], b                                    ; $5CA2: $70
    ld h, b                                       ; $5CA3: $60
    add l                                         ; $5CA4: $85
    ld h, b                                       ; $5CA5: $60
    rst RST_38                                    ; $5CA6: $FF
    rst RST_38                                    ; $5CA7: $FF
    push af                                       ; $5CA8: $F5
    ld e, a                                       ; $5CA9: $5F
    ld [hl], b                                    ; $5CAA: $70
    ld h, b                                       ; $5CAB: $60
    rst RST_38                                    ; $5CAC: $FF
    rst RST_38                                    ; $5CAD: $FF
    push af                                       ; $5CAE: $F5
    ld e, a                                       ; $5CAF: $5F
    ld [hl], b                                    ; $5CB0: $70
    ld h, b                                       ; $5CB1: $60
    add l                                         ; $5CB2: $85
    ld h, b                                       ; $5CB3: $60
    rst RST_38                                    ; $5CB4: $FF
    rst RST_38                                    ; $5CB5: $FF
    push af                                       ; $5CB6: $F5
    ld e, a                                       ; $5CB7: $5F
    ld [hl], b                                    ; $5CB8: $70
    ld h, b                                       ; $5CB9: $60
    ld c, d                                       ; $5CBA: $4A
    ld h, b                                       ; $5CBB: $60
    rst RST_38                                    ; $5CBC: $FF
    rst RST_38                                    ; $5CBD: $FF
    rst RST_38                                    ; $5CBE: $FF
    rst RST_38                                    ; $5CBF: $FF
    xor e                                         ; $5CC0: $AB
    ld h, b                                       ; $5CC1: $60
    rst RST_38                                    ; $5CC2: $FF
    rst RST_38                                    ; $5CC3: $FF
    rst RST_38                                    ; $5CC4: $FF
    rst RST_38                                    ; $5CC5: $FF
    xor e                                         ; $5CC6: $AB
    ld h, b                                       ; $5CC7: $60
    rst RST_38                                    ; $5CC8: $FF
    rst RST_38                                    ; $5CC9: $FF
    adc $60                                       ; $5CCA: $CE $60
    rst RST_38                                    ; $5CCC: $FF
    rst RST_38                                    ; $5CCD: $FF
    adc $60                                       ; $5CCE: $CE $60
    rst RST_38                                    ; $5CD0: $FF
    rst RST_38                                    ; $5CD1: $FF
    rst RST_30                                    ; $5CD2: $F7
    ld h, b                                       ; $5CD3: $60
    rst RST_38                                    ; $5CD4: $FF
    rst RST_38                                    ; $5CD5: $FF
    rst RST_30                                    ; $5CD6: $F7
    ld h, b                                       ; $5CD7: $60
    rst RST_38                                    ; $5CD8: $FF
    rst RST_38                                    ; $5CD9: $FF
    adc $60                                       ; $5CDA: $CE $60
    rst RST_38                                    ; $5CDC: $FF
    rst RST_38                                    ; $5CDD: $FF
    adc $60                                       ; $5CDE: $CE $60
    rst RST_38                                    ; $5CE0: $FF
    rst RST_38                                    ; $5CE1: $FF
    xor e                                         ; $5CE2: $AB
    ld h, b                                       ; $5CE3: $60
    rst RST_38                                    ; $5CE4: $FF
    rst RST_38                                    ; $5CE5: $FF
    rst RST_38                                    ; $5CE6: $FF
    rst RST_38                                    ; $5CE7: $FF
    ld a, [de]                                    ; $5CE8: $1A
    ld h, c                                       ; $5CE9: $61
    db $E3                                        ; $5CEA: $E3
    ld e, a                                       ; $5CEB: $5F
    rst RST_38                                    ; $5CEC: $FF
    rst RST_38                                    ; $5CED: $FF
    ld a, [hl-]                                   ; $5CEE: $3A
    ld h, c                                       ; $5CEF: $61
    ld e, [hl]                                    ; $5CF0: $5E
    ld h, c                                       ; $5CF1: $61
    rst RST_38                                    ; $5CF2: $FF
    rst RST_38                                    ; $5CF3: $FF
    ld b, h                                       ; $5CF4: $44
    ld h, c                                       ; $5CF5: $61
    ld [hl], e                                    ; $5CF6: $73
    ld h, c                                       ; $5CF7: $61
    xor e                                         ; $5CF8: $AB
    ld h, b                                       ; $5CF9: $60
    rst RST_38                                    ; $5CFA: $FF
    rst RST_38                                    ; $5CFB: $FF
    rst RST_38                                    ; $5CFC: $FF
    rst RST_38                                    ; $5CFD: $FF
    adc [hl]                                      ; $5CFE: $8E
    ld h, c                                       ; $5CFF: $61
    or l                                          ; $5D00: $B5
    ld h, c                                       ; $5D01: $61
    ret nc                                        ; $5D02: $D0

    ld h, c                                       ; $5D03: $61
    pop af                                        ; $5D04: $F1
    ld h, c                                       ; $5D05: $61
    ld a, [de]                                    ; $5D06: $1A
    ld h, c                                       ; $5D07: $61
    db $E3                                        ; $5D08: $E3
    ld e, a                                       ; $5D09: $5F
    rst RST_38                                    ; $5D0A: $FF
    rst RST_38                                    ; $5D0B: $FF
    inc c                                         ; $5D0C: $0C
    ld h, d                                       ; $5D0D: $62
    rst RST_38                                    ; $5D0E: $FF
    rst RST_38                                    ; $5D0F: $FF
    inc l                                         ; $5D10: $2C
    ld h, d                                       ; $5D11: $62
    ld b, b                                       ; $5D12: $40
    ld h, d                                       ; $5D13: $62
    ld h, c                                       ; $5D14: $61
    ld h, d                                       ; $5D15: $62
    ld b, b                                       ; $5D16: $40
    ld h, d                                       ; $5D17: $62
    inc c                                         ; $5D18: $0C
    ld h, d                                       ; $5D19: $62
    rst RST_38                                    ; $5D1A: $FF
    rst RST_38                                    ; $5D1B: $FF
    rst RST_38                                    ; $5D1C: $FF
    rst RST_38                                    ; $5D1D: $FF
    ld a, [hl-]                                   ; $5D1E: $3A
    ld h, c                                       ; $5D1F: $61
    ld e, [hl]                                    ; $5D20: $5E
    ld h, c                                       ; $5D21: $61
    ld [hl], d                                    ; $5D22: $72
    ld h, d                                       ; $5D23: $62
    rst RST_38                                    ; $5D24: $FF
    rst RST_38                                    ; $5D25: $FF
    and l                                         ; $5D26: $A5
    ld h, d                                       ; $5D27: $62
    push de                                       ; $5D28: $D5
    ld h, d                                       ; $5D29: $62
    db $ED                                        ; $5D2A: $ED
    ld h, d                                       ; $5D2B: $62
    push de                                       ; $5D2C: $D5
    ld h, d                                       ; $5D2D: $62
    xor e                                         ; $5D2E: $AB
    ld h, b                                       ; $5D2F: $60
    rst RST_38                                    ; $5D30: $FF
    rst RST_38                                    ; $5D31: $FF
    rst RST_38                                    ; $5D32: $FF
    rst RST_38                                    ; $5D33: $FF
    sbc b                                         ; $5D34: $98
    ld h, c                                       ; $5D35: $61
    inc b                                         ; $5D36: $04
    ld h, e                                       ; $5D37: $63
    jp c, Jump_000_1F61                           ; $5D38: $DA $61 $1F

    ld h, e                                       ; $5D3B: $63
    ld a, [hl-]                                   ; $5D3C: $3A
    ld h, c                                       ; $5D3D: $61
    ld e, [hl]                                    ; $5D3E: $5E
    ld h, c                                       ; $5D3F: $61
    rst RST_38                                    ; $5D40: $FF
    rst RST_38                                    ; $5D41: $FF
    scf                                           ; $5D42: $37
    ld h, e                                       ; $5D43: $63
    rst RST_38                                    ; $5D44: $FF
    rst RST_38                                    ; $5D45: $FF
    ld e, d                                       ; $5D46: $5A
    ld h, e                                       ; $5D47: $63
    ld a, l                                       ; $5D48: $7D
    ld h, e                                       ; $5D49: $63
    ld e, d                                       ; $5D4A: $5A
    ld h, e                                       ; $5D4B: $63
    sub d                                         ; $5D4C: $92
    ld h, e                                       ; $5D4D: $63
    scf                                           ; $5D4E: $37
    ld h, e                                       ; $5D4F: $63
    rst RST_38                                    ; $5D50: $FF
    rst RST_38                                    ; $5D51: $FF
    rst RST_38                                    ; $5D52: $FF
    rst RST_38                                    ; $5D53: $FF
    inc c                                         ; $5D54: $0C
    ld h, d                                       ; $5D55: $62
    rst RST_38                                    ; $5D56: $FF
    rst RST_38                                    ; $5D57: $FF
    di                                            ; $5D58: $F3
    ld h, e                                       ; $5D59: $63
    rst RST_38                                    ; $5D5A: $FF
    rst RST_38                                    ; $5D5B: $FF
    and h                                         ; $5D5C: $A4
    ld h, e                                       ; $5D5D: $63
    pop bc                                        ; $5D5E: $C1
    ld h, e                                       ; $5D5F: $63
    sub $63                                       ; $5D60: $D6 $63
    pop bc                                        ; $5D62: $C1
    ld h, e                                       ; $5D63: $63
    ld a, [hl-]                                   ; $5D64: $3A
    ld h, c                                       ; $5D65: $61
    ld e, [hl]                                    ; $5D66: $5E
    ld h, c                                       ; $5D67: $61
    rst RST_38                                    ; $5D68: $FF
    rst RST_38                                    ; $5D69: $FF
    ld l, [hl]                                    ; $5D6A: $6E
    ld h, h                                       ; $5D6B: $64
    rst RST_38                                    ; $5D6C: $FF
    rst RST_38                                    ; $5D6D: $FF
    inc e                                         ; $5D6E: $1C
    ld h, h                                       ; $5D6F: $64
    add hl, sp                                    ; $5D70: $39
    ld h, h                                       ; $5D71: $64
    ld d, a                                       ; $5D72: $57
    ld h, h                                       ; $5D73: $64
    add hl, sp                                    ; $5D74: $39
    ld h, h                                       ; $5D75: $64
    ld d, a                                       ; $5D76: $57
    ld h, h                                       ; $5D77: $64
    add hl, sp                                    ; $5D78: $39
    ld h, h                                       ; $5D79: $64
    xor e                                         ; $5D7A: $AB
    ld h, b                                       ; $5D7B: $60
    rst RST_38                                    ; $5D7C: $FF
    rst RST_38                                    ; $5D7D: $FF
    rst RST_38                                    ; $5D7E: $FF
    rst RST_38                                    ; $5D7F: $FF
    inc l                                         ; $5D80: $2C
    ld h, d                                       ; $5D81: $62
    ld b, b                                       ; $5D82: $40
    ld h, d                                       ; $5D83: $62
    ld h, c                                       ; $5D84: $61
    ld h, d                                       ; $5D85: $62
    ld b, b                                       ; $5D86: $40
    ld h, d                                       ; $5D87: $62
    ld h, c                                       ; $5D88: $61
    ld h, d                                       ; $5D89: $62
    ld b, b                                       ; $5D8A: $40
    ld h, d                                       ; $5D8B: $62
    ld h, c                                       ; $5D8C: $61
    ld h, d                                       ; $5D8D: $62
    ld b, b                                       ; $5D8E: $40
    ld h, d                                       ; $5D8F: $62
    xor e                                         ; $5D90: $AB
    ld h, b                                       ; $5D91: $60
    rst RST_38                                    ; $5D92: $FF
    rst RST_38                                    ; $5D93: $FF
    rst RST_38                                    ; $5D94: $FF
    rst RST_38                                    ; $5D95: $FF
    sbc l                                         ; $5D96: $9D
    ld h, h                                       ; $5D97: $64
    or h                                          ; $5D98: $B4
    ld h, h                                       ; $5D99: $64
    ld [hl], d                                    ; $5D9A: $72
    ld h, d                                       ; $5D9B: $62
    rst RST_38                                    ; $5D9C: $FF
    rst RST_38                                    ; $5D9D: $FF
    and l                                         ; $5D9E: $A5
    ld h, d                                       ; $5D9F: $62
    push de                                       ; $5DA0: $D5
    ld h, d                                       ; $5DA1: $62
    db $ED                                        ; $5DA2: $ED
    ld h, d                                       ; $5DA3: $62
    push de                                       ; $5DA4: $D5
    ld h, d                                       ; $5DA5: $62
    xor e                                         ; $5DA6: $AB
    ld h, b                                       ; $5DA7: $60
    rst RST_38                                    ; $5DA8: $FF
    rst RST_38                                    ; $5DA9: $FF
    rst RST_38                                    ; $5DAA: $FF
    rst RST_38                                    ; $5DAB: $FF
    db $ED                                        ; $5DAC: $ED
    ld h, d                                       ; $5DAD: $62
    push de                                       ; $5DAE: $D5
    ld h, d                                       ; $5DAF: $62
    xor e                                         ; $5DB0: $AB
    ld h, b                                       ; $5DB1: $60
    rst RST_38                                    ; $5DB2: $FF
    rst RST_38                                    ; $5DB3: $FF
    rst RST_38                                    ; $5DB4: $FF
    rst RST_38                                    ; $5DB5: $FF
    ret                                           ; $5DB6: $C9


    ld h, a                                       ; $5DB7: $67
    rst RST_38                                    ; $5DB8: $FF
    rst RST_38                                    ; $5DB9: $FF
    ret                                           ; $5DBA: $C9


    ld h, a                                       ; $5DBB: $67
    rst RST_38                                    ; $5DBC: $FF
    rst RST_38                                    ; $5DBD: $FF
    xor e                                         ; $5DBE: $AB
    ld h, b                                       ; $5DBF: $60
    rst RST_38                                    ; $5DC0: $FF
    rst RST_38                                    ; $5DC1: $FF
    rst RST_38                                    ; $5DC2: $FF
    rst RST_38                                    ; $5DC3: $FF
    add $64                                       ; $5DC4: $C6 $64
    rst RST_38                                    ; $5DC6: $FF
    rst RST_38                                    ; $5DC7: $FF
    rst RST_28                                    ; $5DC8: $EF
    ld h, h                                       ; $5DC9: $64
    rst RST_38                                    ; $5DCA: $FF
    rst RST_38                                    ; $5DCB: $FF
    rst RST_38                                    ; $5DCC: $FF
    rst RST_38                                    ; $5DCD: $FF
    inc c                                         ; $5DCE: $0C
    ld h, d                                       ; $5DCF: $62
    rst RST_38                                    ; $5DD0: $FF
    rst RST_38                                    ; $5DD1: $FF
    ld a, [de]                                    ; $5DD2: $1A
    ld h, c                                       ; $5DD3: $61
    db $E3                                        ; $5DD4: $E3
    ld e, a                                       ; $5DD5: $5F
    ld e, e                                       ; $5DD6: $5B
    ld h, [hl]                                    ; $5DD7: $66
    rst RST_38                                    ; $5DD8: $FF
    rst RST_38                                    ; $5DD9: $FF
    add $5F                                       ; $5DDA: $C6 $5F
    db $E3                                        ; $5DDC: $E3
    ld e, a                                       ; $5DDD: $5F
    ld e, e                                       ; $5DDE: $5B
    ld h, [hl]                                    ; $5DDF: $66
    rst RST_38                                    ; $5DE0: $FF
    rst RST_38                                    ; $5DE1: $FF
    rst RST_38                                    ; $5DE2: $FF
    rst RST_38                                    ; $5DE3: $FF
    dec de                                        ; $5DE4: $1B
    ld h, l                                       ; $5DE5: $65
    rst RST_38                                    ; $5DE6: $FF
    rst RST_38                                    ; $5DE7: $FF
    ld b, h                                       ; $5DE8: $44
    ld h, l                                       ; $5DE9: $65
    rst RST_38                                    ; $5DEA: $FF
    rst RST_38                                    ; $5DEB: $FF
    ld h, a                                       ; $5DEC: $67
    ld h, l                                       ; $5DED: $65
    rst RST_38                                    ; $5DEE: $FF
    rst RST_38                                    ; $5DEF: $FF
    rst RST_38                                    ; $5DF0: $FF
    rst RST_38                                    ; $5DF1: $FF
    ld h, a                                       ; $5DF2: $67
    ld h, l                                       ; $5DF3: $65
    rst RST_38                                    ; $5DF4: $FF
    rst RST_38                                    ; $5DF5: $FF
    ld b, h                                       ; $5DF6: $44
    ld h, l                                       ; $5DF7: $65
    rst RST_38                                    ; $5DF8: $FF
    rst RST_38                                    ; $5DF9: $FF
    dec de                                        ; $5DFA: $1B
    ld h, l                                       ; $5DFB: $65
    rst RST_38                                    ; $5DFC: $FF
    rst RST_38                                    ; $5DFD: $FF
    rst RST_38                                    ; $5DFE: $FF
    rst RST_38                                    ; $5DFF: $FF
    rlca                                          ; $5E00: $07
    ld l, b                                       ; $5E01: $68
    rst RST_38                                    ; $5E02: $FF
    rst RST_38                                    ; $5E03: $FF
    sub b                                         ; $5E04: $90
    ld h, l                                       ; $5E05: $65
    rst RST_38                                    ; $5E06: $FF
    rst RST_38                                    ; $5E07: $FF
    daa                                           ; $5E08: $27
    ld l, b                                       ; $5E09: $68
    ld c, d                                       ; $5E0A: $4A
    ld l, b                                       ; $5E0B: $68
    rst RST_38                                    ; $5E0C: $FF
    rst RST_38                                    ; $5E0D: $FF
    xor e                                         ; $5E0E: $AB
    ld h, b                                       ; $5E0F: $60
    rst RST_38                                    ; $5E10: $FF
    rst RST_38                                    ; $5E11: $FF
    adc $60                                       ; $5E12: $CE $60
    rst RST_38                                    ; $5E14: $FF
    rst RST_38                                    ; $5E15: $FF
    add $64                                       ; $5E16: $C6 $64
    add sp, $65                                   ; $5E18: $E8 $65
    add $64                                       ; $5E1A: $C6 $64
    ldh a, [$FF65]                                ; $5E1C: $F0 $65
    rst RST_38                                    ; $5E1E: $FF
    rst RST_38                                    ; $5E1F: $FF
    xor e                                         ; $5E20: $AB
    ld h, b                                       ; $5E21: $60
    rst RST_38                                    ; $5E22: $FF
    rst RST_38                                    ; $5E23: $FF
    adc $60                                       ; $5E24: $CE $60
    rst RST_38                                    ; $5E26: $FF
    rst RST_38                                    ; $5E27: $FF
    add $64                                       ; $5E28: $C6 $64
    ldh a, [$FF65]                                ; $5E2A: $F0 $65
    rst RST_38                                    ; $5E2C: $FF
    rst RST_38                                    ; $5E2D: $FF
    ld [hl-], a                                   ; $5E2E: $32
    ld h, [hl]                                    ; $5E2F: $66
    rst RST_38                                    ; $5E30: $FF
    rst RST_38                                    ; $5E31: $FF
    rst RST_38                                    ; $5E32: $FF
    rst RST_38                                    ; $5E33: $FF
    ld [hl-], a                                   ; $5E34: $32
    ld h, [hl]                                    ; $5E35: $66
    rst RST_38                                    ; $5E36: $FF
    rst RST_38                                    ; $5E37: $FF
    rst RST_38                                    ; $5E38: $FF
    rst RST_38                                    ; $5E39: $FF
    add $5F                                       ; $5E3A: $C6 $5F
    db $E3                                        ; $5E3C: $E3
    ld e, a                                       ; $5E3D: $5F
    ld [hl-], a                                   ; $5E3E: $32
    ld h, [hl]                                    ; $5E3F: $66
    rst RST_38                                    ; $5E40: $FF
    rst RST_38                                    ; $5E41: $FF
    ld e, e                                       ; $5E42: $5B
    ld h, [hl]                                    ; $5E43: $66
    rst RST_38                                    ; $5E44: $FF
    rst RST_38                                    ; $5E45: $FF
    rst RST_38                                    ; $5E46: $FF
    rst RST_38                                    ; $5E47: $FF
    sbc a                                         ; $5E48: $9F
    ld h, [hl]                                    ; $5E49: $66
    rst RST_38                                    ; $5E4A: $FF
    rst RST_38                                    ; $5E4B: $FF
    rst RST_38                                    ; $5E4C: $FF
    rst RST_38                                    ; $5E4D: $FF
    ld [hl-], a                                   ; $5E4E: $32
    ld h, [hl]                                    ; $5E4F: $66
    rst RST_38                                    ; $5E50: $FF
    rst RST_38                                    ; $5E51: $FF
    adc $60                                       ; $5E52: $CE $60
    rst RST_38                                    ; $5E54: $FF
    rst RST_38                                    ; $5E55: $FF
    adc $60                                       ; $5E56: $CE $60
    rst RST_38                                    ; $5E58: $FF
    rst RST_38                                    ; $5E59: $FF
    rst RST_30                                    ; $5E5A: $F7
    ld h, b                                       ; $5E5B: $60
    rst RST_38                                    ; $5E5C: $FF
    rst RST_38                                    ; $5E5D: $FF
    rst RST_30                                    ; $5E5E: $F7
    ld h, b                                       ; $5E5F: $60
    rst RST_38                                    ; $5E60: $FF
    rst RST_38                                    ; $5E61: $FF
    adc $60                                       ; $5E62: $CE $60
    rst RST_38                                    ; $5E64: $FF
    rst RST_38                                    ; $5E65: $FF
    xor e                                         ; $5E66: $AB
    ld h, b                                       ; $5E67: $60
    rst RST_38                                    ; $5E68: $FF
    rst RST_38                                    ; $5E69: $FF
    rst RST_38                                    ; $5E6A: $FF
    rst RST_38                                    ; $5E6B: $FF
    ld [hl-], a                                   ; $5E6C: $32
    ld h, [hl]                                    ; $5E6D: $66
    rst RST_38                                    ; $5E6E: $FF
    rst RST_38                                    ; $5E6F: $FF
    ret z                                         ; $5E70: $C8

    ld h, [hl]                                    ; $5E71: $66
    rst RST_38                                    ; $5E72: $FF
    rst RST_38                                    ; $5E73: $FF
    ei                                            ; $5E74: $FB
    ld h, [hl]                                    ; $5E75: $66
    rst RST_38                                    ; $5E76: $FF
    rst RST_38                                    ; $5E77: $FF
    ret z                                         ; $5E78: $C8

    ld h, [hl]                                    ; $5E79: $66
    rst RST_38                                    ; $5E7A: $FF
    rst RST_38                                    ; $5E7B: $FF
    ei                                            ; $5E7C: $FB
    ld h, [hl]                                    ; $5E7D: $66
    rst RST_38                                    ; $5E7E: $FF
    rst RST_38                                    ; $5E7F: $FF
    rst RST_38                                    ; $5E80: $FF
    rst RST_38                                    ; $5E81: $FF
    ld e, e                                       ; $5E82: $5B
    ld h, [hl]                                    ; $5E83: $66
    rst RST_38                                    ; $5E84: $FF
    rst RST_38                                    ; $5E85: $FF
    ld h, l                                       ; $5E86: $65
    ld h, [hl]                                    ; $5E87: $66
    rst RST_38                                    ; $5E88: $FF
    rst RST_38                                    ; $5E89: $FF
    ld l, a                                       ; $5E8A: $6F
    ld h, [hl]                                    ; $5E8B: $66
    rst RST_38                                    ; $5E8C: $FF
    rst RST_38                                    ; $5E8D: $FF
    ld a, c                                       ; $5E8E: $79
    ld h, [hl]                                    ; $5E8F: $66
    rst RST_38                                    ; $5E90: $FF
    rst RST_38                                    ; $5E91: $FF
    ld a, c                                       ; $5E92: $79
    ld h, [hl]                                    ; $5E93: $66
    rst RST_38                                    ; $5E94: $FF
    rst RST_38                                    ; $5E95: $FF
    ret z                                         ; $5E96: $C8

    ld h, [hl]                                    ; $5E97: $66
    rst RST_38                                    ; $5E98: $FF
    rst RST_38                                    ; $5E99: $FF
    ei                                            ; $5E9A: $FB
    ld h, [hl]                                    ; $5E9B: $66
    rst RST_38                                    ; $5E9C: $FF
    rst RST_38                                    ; $5E9D: $FF
    rst RST_38                                    ; $5E9E: $FF
    rst RST_38                                    ; $5E9F: $FF
    ld [hl-], a                                   ; $5EA0: $32
    ld h, [hl]                                    ; $5EA1: $66
    rst RST_38                                    ; $5EA2: $FF
    rst RST_38                                    ; $5EA3: $FF
    ret z                                         ; $5EA4: $C8

    ld h, [hl]                                    ; $5EA5: $66
    rst RST_38                                    ; $5EA6: $FF
    rst RST_38                                    ; $5EA7: $FF
    ei                                            ; $5EA8: $FB
    ld h, [hl]                                    ; $5EA9: $66
    rst RST_38                                    ; $5EAA: $FF
    rst RST_38                                    ; $5EAB: $FF
    rst RST_38                                    ; $5EAC: $FF
    rst RST_38                                    ; $5EAD: $FF
    jp nc, $FF66                                  ; $5EAE: $D2 $66 $FF

    rst RST_38                                    ; $5EB1: $FF
    rst RST_38                                    ; $5EB2: $FF
    rst RST_38                                    ; $5EB3: $FF
    xor e                                         ; $5EB4: $AB
    ld h, b                                       ; $5EB5: $60
    rst RST_38                                    ; $5EB6: $FF
    rst RST_38                                    ; $5EB7: $FF
    xor e                                         ; $5EB8: $AB
    ld h, b                                       ; $5EB9: $60
    rst RST_38                                    ; $5EBA: $FF
    rst RST_38                                    ; $5EBB: $FF
    rst RST_38                                    ; $5EBC: $FF
    rst RST_38                                    ; $5EBD: $FF
    adc [hl]                                      ; $5EBE: $8E
    ld h, c                                       ; $5EBF: $61
    or l                                          ; $5EC0: $B5
    ld h, c                                       ; $5EC1: $61
    ld [hl], d                                    ; $5EC2: $72
    ld h, d                                       ; $5EC3: $62
    rst RST_38                                    ; $5EC4: $FF
    rst RST_38                                    ; $5EC5: $FF
    xor a                                         ; $5EC6: $AF
    ld h, d                                       ; $5EC7: $62
    push de                                       ; $5EC8: $D5
    ld h, d                                       ; $5EC9: $62
    db $ED                                        ; $5ECA: $ED
    ld h, d                                       ; $5ECB: $62
    push de                                       ; $5ECC: $D5
    ld h, d                                       ; $5ECD: $62
    xor e                                         ; $5ECE: $AB
    ld h, b                                       ; $5ECF: $60
    rst RST_38                                    ; $5ED0: $FF
    rst RST_38                                    ; $5ED1: $FF
    rst RST_38                                    ; $5ED2: $FF
    rst RST_38                                    ; $5ED3: $FF
    adc [hl]                                      ; $5ED4: $8E
    ld h, c                                       ; $5ED5: $61
    or l                                          ; $5ED6: $B5
    ld h, c                                       ; $5ED7: $61
    ld a, h                                       ; $5ED8: $7C
    ld h, d                                       ; $5ED9: $62
    rst RST_38                                    ; $5EDA: $FF
    rst RST_38                                    ; $5EDB: $FF
    ld hl, $4767                                  ; $5EDC: $21 $67 $47
    ld h, a                                       ; $5EDF: $67
    ld e, h                                       ; $5EE0: $5C
    ld h, a                                       ; $5EE1: $67
    ld b, a                                       ; $5EE2: $47
    ld h, a                                       ; $5EE3: $67
    ld a, [de]                                    ; $5EE4: $1A
    ld h, c                                       ; $5EE5: $61
    db $E3                                        ; $5EE6: $E3
    ld e, a                                       ; $5EE7: $5F
    rst RST_38                                    ; $5EE8: $FF
    rst RST_38                                    ; $5EE9: $FF
    ld a, [de]                                    ; $5EEA: $1A
    ld h, c                                       ; $5EEB: $61
    db $E3                                        ; $5EEC: $E3
    ld e, a                                       ; $5EED: $5F
    add b                                         ; $5EEE: $80
    ld h, a                                       ; $5EEF: $67
    sbc d                                         ; $5EF0: $9A
    ld h, a                                       ; $5EF1: $67
    xor a                                         ; $5EF2: $AF
    ld h, a                                       ; $5EF3: $67
    sbc d                                         ; $5EF4: $9A
    ld h, a                                       ; $5EF5: $67
    ret                                           ; $5EF6: $C9


    ld h, a                                       ; $5EF7: $67
    rst RST_38                                    ; $5EF8: $FF
    rst RST_38                                    ; $5EF9: $FF
    xor e                                         ; $5EFA: $AB
    ld h, b                                       ; $5EFB: $60
    rst RST_38                                    ; $5EFC: $FF
    rst RST_38                                    ; $5EFD: $FF
    rst RST_38                                    ; $5EFE: $FF
    rst RST_38                                    ; $5EFF: $FF
    ld a, [de]                                    ; $5F00: $1A
    ld h, c                                       ; $5F01: $61
    db $E3                                        ; $5F02: $E3
    ld e, a                                       ; $5F03: $5F
    halt                                          ; $5F04: $76
    ld h, a                                       ; $5F05: $67
    sbc d                                         ; $5F06: $9A
    ld h, a                                       ; $5F07: $67
    xor a                                         ; $5F08: $AF
    ld h, a                                       ; $5F09: $67
    sbc d                                         ; $5F0A: $9A
    ld h, a                                       ; $5F0B: $67
    ret                                           ; $5F0C: $C9


    ld h, a                                       ; $5F0D: $67
    rst RST_38                                    ; $5F0E: $FF
    rst RST_38                                    ; $5F0F: $FF
    xor e                                         ; $5F10: $AB
    ld h, b                                       ; $5F11: $60
    rst RST_38                                    ; $5F12: $FF
    rst RST_38                                    ; $5F13: $FF
    rst RST_38                                    ; $5F14: $FF
    rst RST_38                                    ; $5F15: $FF
    ld a, [de]                                    ; $5F16: $1A
    ld h, c                                       ; $5F17: $61
    db $E3                                        ; $5F18: $E3
    ld e, a                                       ; $5F19: $5F
    halt                                          ; $5F1A: $76
    ld h, a                                       ; $5F1B: $67
    sbc d                                         ; $5F1C: $9A
    ld h, a                                       ; $5F1D: $67
    xor a                                         ; $5F1E: $AF
    ld h, a                                       ; $5F1F: $67
    sbc d                                         ; $5F20: $9A
    ld h, a                                       ; $5F21: $67
    ret                                           ; $5F22: $C9


    ld h, a                                       ; $5F23: $67
    rst RST_38                                    ; $5F24: $FF
    rst RST_38                                    ; $5F25: $FF
    xor e                                         ; $5F26: $AB
    ld h, b                                       ; $5F27: $60
    rst RST_38                                    ; $5F28: $FF
    rst RST_38                                    ; $5F29: $FF
    ld a, [hl-]                                   ; $5F2A: $3A
    ld h, c                                       ; $5F2B: $61
    ld e, [hl]                                    ; $5F2C: $5E
    ld h, c                                       ; $5F2D: $61
    ld a, h                                       ; $5F2E: $7C
    ld h, d                                       ; $5F2F: $62
    rst RST_38                                    ; $5F30: $FF
    rst RST_38                                    ; $5F31: $FF
    and l                                         ; $5F32: $A5
    ld h, d                                       ; $5F33: $62
    push de                                       ; $5F34: $D5
    ld h, d                                       ; $5F35: $62
    db $ED                                        ; $5F36: $ED
    ld h, d                                       ; $5F37: $62
    push de                                       ; $5F38: $D5
    ld h, d                                       ; $5F39: $62
    xor e                                         ; $5F3A: $AB
    ld h, b                                       ; $5F3B: $60
    rst RST_38                                    ; $5F3C: $FF
    rst RST_38                                    ; $5F3D: $FF
    rst RST_38                                    ; $5F3E: $FF
    rst RST_38                                    ; $5F3F: $FF
    xor e                                         ; $5F40: $AB
    ld h, b                                       ; $5F41: $60
    rst RST_38                                    ; $5F42: $FF
    rst RST_38                                    ; $5F43: $FF
    sbc l                                         ; $5F44: $9D
    ld h, h                                       ; $5F45: $64
    ldh a, [c]                                    ; $5F46: $F2
    ld h, a                                       ; $5F47: $67
    inc c                                         ; $5F48: $0C
    ld h, d                                       ; $5F49: $62
    rst RST_38                                    ; $5F4A: $FF
    rst RST_38                                    ; $5F4B: $FF
    and h                                         ; $5F4C: $A4
    ld h, e                                       ; $5F4D: $63
    pop bc                                        ; $5F4E: $C1
    ld h, e                                       ; $5F4F: $63
    sub $63                                       ; $5F50: $D6 $63
    pop bc                                        ; $5F52: $C1
    ld h, e                                       ; $5F53: $63
    rlca                                          ; $5F54: $07
    ld l, b                                       ; $5F55: $68
    rst RST_38                                    ; $5F56: $FF
    rst RST_38                                    ; $5F57: $FF
    daa                                           ; $5F58: $27
    ld l, b                                       ; $5F59: $68
    ld c, d                                       ; $5F5A: $4A
    ld l, b                                       ; $5F5B: $68
    ld e, a                                       ; $5F5C: $5F
    ld l, b                                       ; $5F5D: $68
    ld c, d                                       ; $5F5E: $4A
    ld l, b                                       ; $5F5F: $68
    daa                                           ; $5F60: $27
    ld l, b                                       ; $5F61: $68
    ld c, d                                       ; $5F62: $4A
    ld l, b                                       ; $5F63: $68
    ld a, [de]                                    ; $5F64: $1A
    ld h, c                                       ; $5F65: $61
    db $E3                                        ; $5F66: $E3
    ld e, a                                       ; $5F67: $5F
    ld a, [de]                                    ; $5F68: $1A
    ld h, c                                       ; $5F69: $61
    db $E3                                        ; $5F6A: $E3
    ld e, a                                       ; $5F6B: $5F
    rst RST_38                                    ; $5F6C: $FF
    rst RST_38                                    ; $5F6D: $FF
    add $64                                       ; $5F6E: $C6 $64
    rst RST_38                                    ; $5F70: $FF
    rst RST_38                                    ; $5F71: $FF
    adc [hl]                                      ; $5F72: $8E
    ld h, c                                       ; $5F73: $61
    or l                                          ; $5F74: $B5
    ld h, c                                       ; $5F75: $61
    ld [hl], d                                    ; $5F76: $72
    ld h, d                                       ; $5F77: $62
    rst RST_38                                    ; $5F78: $FF
    rst RST_38                                    ; $5F79: $FF
    xor a                                         ; $5F7A: $AF
    ld h, d                                       ; $5F7B: $62
    push de                                       ; $5F7C: $D5
    ld h, d                                       ; $5F7D: $62
    db $ED                                        ; $5F7E: $ED
    ld h, d                                       ; $5F7F: $62
    push de                                       ; $5F80: $D5
    ld h, d                                       ; $5F81: $62
    xor e                                         ; $5F82: $AB
    ld h, b                                       ; $5F83: $60
    rst RST_38                                    ; $5F84: $FF
    rst RST_38                                    ; $5F85: $FF
    rst RST_38                                    ; $5F86: $FF
    rst RST_38                                    ; $5F87: $FF
    add $64                                       ; $5F88: $C6 $64
    rst RST_38                                    ; $5F8A: $FF
    rst RST_38                                    ; $5F8B: $FF
    ld a, [de]                                    ; $5F8C: $1A
    ld h, c                                       ; $5F8D: $61
    db $E3                                        ; $5F8E: $E3
    ld e, a                                       ; $5F8F: $5F
    adc [hl]                                      ; $5F90: $8E
    ld h, c                                       ; $5F91: $61
    or l                                          ; $5F92: $B5
    ld h, c                                       ; $5F93: $61
    jp nz, $FF68                                  ; $5F94: $C2 $68 $FF

    rst RST_38                                    ; $5F97: $FF
    db $ED                                        ; $5F98: $ED
    ld h, d                                       ; $5F99: $62
    push de                                       ; $5F9A: $D5
    ld h, d                                       ; $5F9B: $62
    ld [hl-], a                                   ; $5F9C: $32

jr_008_5F9D:
    ld h, [hl]                                    ; $5F9D: $66
    rst RST_38                                    ; $5F9E: $FF
    rst RST_38                                    ; $5F9F: $FF
    xor e                                         ; $5FA0: $AB
    ld h, b                                       ; $5FA1: $60
    rst RST_38                                    ; $5FA2: $FF
    rst RST_38                                    ; $5FA3: $FF
    rst RST_38                                    ; $5FA4: $FF
    rst RST_38                                    ; $5FA5: $FF
    ld [hl-], a                                   ; $5FA6: $32
    ld h, [hl]                                    ; $5FA7: $66
    rst RST_38                                    ; $5FA8: $FF
    rst RST_38                                    ; $5FA9: $FF
    ret z                                         ; $5FAA: $C8

    ld h, [hl]                                    ; $5FAB: $66
    rst RST_38                                    ; $5FAC: $FF
    rst RST_38                                    ; $5FAD: $FF
    ret z                                         ; $5FAE: $C8

    ld h, [hl]                                    ; $5FAF: $66
    rst RST_38                                    ; $5FB0: $FF
    rst RST_38                                    ; $5FB1: $FF
    ei                                            ; $5FB2: $FB
    ld h, [hl]                                    ; $5FB3: $66
    rst RST_38                                    ; $5FB4: $FF
    rst RST_38                                    ; $5FB5: $FF
    rst RST_38                                    ; $5FB6: $FF
    rst RST_38                                    ; $5FB7: $FF
    inc c                                         ; $5FB8: $0C
    ld h, d                                       ; $5FB9: $62
    rst RST_38                                    ; $5FBA: $FF
    rst RST_38                                    ; $5FBB: $FF
    sub $63                                       ; $5FBC: $D6 $63
    pop bc                                        ; $5FBE: $C1
    ld h, e                                       ; $5FBF: $63
    ld a, [hl-]                                   ; $5FC0: $3A
    ld h, c                                       ; $5FC1: $61
    ld e, [hl]                                    ; $5FC2: $5E
    ld h, c                                       ; $5FC3: $61
    rst RST_38                                    ; $5FC4: $FF

jr_008_5FC5:
    rst RST_38                                    ; $5FC5: $FF
    nop                                           ; $5FC6: $00
    ld b, $00                                     ; $5FC7: $06 $00
    nop                                           ; $5FC9: $00
    ld b, b                                       ; $5FCA: $40
    jr jr_008_5F9D                                ; $5FCB: $18 $D0

    ld e, a                                       ; $5FCD: $5F
    nop                                           ; $5FCE: $00
    nop                                           ; $5FCF: $00

jr_008_5FD0:
    ld b, $1E                                     ; $5FD0: $06 $1E
    rst RST_20                                    ; $5FD2: $E7

jr_008_5FD3:
    nop                                           ; $5FD3: $00
    jr nz, jr_008_5FC5                            ; $5FD4: $20 $EF

    ld [bc], a                                    ; $5FD6: $02
    jr nz, jr_008_5FD0                            ; $5FD7: $20 $F7

    inc b                                         ; $5FD9: $04
    jr nz, @+$01                                  ; $5FDA: $20 $FF

    ld b, $20                                     ; $5FDC: $06 $20
    rlca                                          ; $5FDE: $07
    ld [$FF30], sp                                ; $5FDF: $08 $30 $FF
    ld a, [bc]                                    ; $5FE2: $0A
    nop                                           ; $5FE3: $00
    ret nz                                        ; $5FE4: $C0

jr_008_5FE5:
    ld b, b                                       ; $5FE5: $40
    jr jr_008_5FD3                                ; $5FE6: $18 $EB

    ld e, a                                       ; $5FE8: $5F
    nop                                           ; $5FE9: $00
    nop                                           ; $5FEA: $00
    inc bc                                        ; $5FEB: $03
    jr nc, jr_008_5FE5                            ; $5FEC: $30 $F7

    nop                                           ; $5FEE: $00
    ld [hl-], a                                   ; $5FEF: $32
    rst RST_28                                    ; $5FF0: $EF
    ld [bc], a                                    ; $5FF1: $02
    ld [hl-], a                                   ; $5FF2: $32
    rlca                                          ; $5FF3: $07

jr_008_5FF4:
    inc b                                         ; $5FF4: $04
    nop                                           ; $5FF5: $00
    ld b, $00                                     ; $5FF6: $06 $00
    jr nz, jr_008_603B                            ; $5FF8: $20 $41

    jr @+$01                                      ; $5FFA: $18 $FF

    ld e, a                                       ; $5FFC: $5F
    nop                                           ; $5FFD: $00
    nop                                           ; $5FFE: $00

jr_008_5FFF:
    dec b                                         ; $5FFF: $05
    rra                                           ; $6000: $1F
    rst RST_20                                    ; $6001: $E7
    nop                                           ; $6002: $00
    jr nz, jr_008_5FF4                            ; $6003: $20 $EF

    ld [bc], a                                    ; $6005: $02
    jr nz, jr_008_5FFF                            ; $6006: $20 $F7

    inc b                                         ; $6008: $04
    jr nz, @+$01                                  ; $6009: $20 $FF

jr_008_600B:
    ld b, $20                                     ; $600B: $06 $20
    rlca                                          ; $600D: $07
    ld [$C000], sp                                ; $600E: $08 $00 $C0
    ld b, c                                       ; $6011: $41
    jr jr_008_602B                                ; $6012: $18 $17

    ld h, b                                       ; $6014: $60
    nop                                           ; $6015: $00

jr_008_6016:
    nop                                           ; $6016: $00
    inc b                                         ; $6017: $04

jr_008_6018:
    jr nc, jr_008_600B                            ; $6018: $30 $F1

    nop                                           ; $601A: $00

jr_008_601B:
    jr nc, jr_008_6016                            ; $601B: $30 $F9

    ld [bc], a                                    ; $601D: $02
    jr nc, jr_008_6021                            ; $601E: $30 $01

    inc b                                         ; $6020: $04

jr_008_6021:
    jr nc, jr_008_602C                            ; $6021: $30 $09

    ld b, $00                                     ; $6023: $06 $00
    ld b, $00                                     ; $6025: $06 $00
    ld b, b                                       ; $6027: $40
    ld b, d                                       ; $6028: $42
    jr jr_008_6059                                ; $6029: $18 $2E

jr_008_602B:
    ld h, b                                       ; $602B: $60

jr_008_602C:
    nop                                           ; $602C: $00
    nop                                           ; $602D: $00
    add hl, bc                                    ; $602E: $09
    jr nz, jr_008_6018                            ; $602F: $20 $E7

    nop                                           ; $6031: $00
    ld hl, $02EF                                  ; $6032: $21 $EF $02
    ld hl, $04F7                                  ; $6035: $21 $F7 $04
    ld hl, $06FF                                  ; $6038: $21 $FF $06

jr_008_603B:
    ld hl, $0807                                  ; $603B: $21 $07 $08
    ld sp, $0AF1                                  ; $603E: $31 $F1 $0A
    ld sp, $0CF9                                  ; $6041: $31 $F9 $0C
    ld sp, $0E01                                  ; $6044: $31 $01 $0E
    ld sp, $1009                                  ; $6047: $31 $09 $10
    nop                                           ; $604A: $00
    ld b, $00                                     ; $604B: $06 $00
    ld h, b                                       ; $604D: $60
    ld b, e                                       ; $604E: $43
    jr jr_008_60A5                                ; $604F: $18 $54

    ld h, b                                       ; $6051: $60
    nop                                           ; $6052: $00
    nop                                           ; $6053: $00
    add hl, bc                                    ; $6054: $09
    dec e                                         ; $6055: $1D
    rst RST_20                                    ; $6056: $E7
    nop                                           ; $6057: $00
    rra                                           ; $6058: $1F

jr_008_6059:
    rst RST_28                                    ; $6059: $EF
    ld [bc], a                                    ; $605A: $02
    rra                                           ; $605B: $1F
    rst RST_30                                    ; $605C: $F7
    inc b                                         ; $605D: $04
    rra                                           ; $605E: $1F
    rst RST_38                                    ; $605F: $FF
    ld b, $1F                                     ; $6060: $06 $1F
    rlca                                          ; $6062: $07
    ld [$F72F], sp                                ; $6063: $08 $2F $F7
    ld a, [bc]                                    ; $6066: $0A

jr_008_6067:
    cpl                                           ; $6067: $2F
    rst RST_38                                    ; $6068: $FF
    inc c                                         ; $6069: $0C
    inc [hl]                                      ; $606A: $34
    rlca                                          ; $606B: $07
    ld c, $3F                                     ; $606C: $0E $3F
    rst RST_38                                    ; $606E: $FF
    stop                                          ; $606F: $10 $00
    add b                                         ; $6071: $80
    ld b, h                                       ; $6072: $44
    jr jr_008_60ED                                ; $6073: $18 $78

    ld h, b                                       ; $6075: $60
    nop                                           ; $6076: $00
    nop                                           ; $6077: $00
    inc b                                         ; $6078: $04
    jr nc, @-$09                                  ; $6079: $30 $F5

jr_008_607B:
    nop                                           ; $607B: $00
    jr nc, jr_008_607B                            ; $607C: $30 $FD

    ld [bc], a                                    ; $607E: $02
    jr nc, jr_008_6086                            ; $607F: $30 $05

    inc b                                         ; $6081: $04
    jr nc, @-$12                                  ; $6082: $30 $EC

    ld b, $00                                     ; $6084: $06 $00

jr_008_6086:
    ld b, $00                                     ; $6086: $06 $00
    nop                                           ; $6088: $00
    ld b, l                                       ; $6089: $45
    jr jr_008_601B                                ; $608A: $18 $8F

    ld h, b                                       ; $608C: $60
    nop                                           ; $608D: $00
    nop                                           ; $608E: $00
    add hl, bc                                    ; $608F: $09
    ld hl, $00E7                                  ; $6090: $21 $E7 $00
    ld [hl+], a                                   ; $6093: $22
    rst RST_28                                    ; $6094: $EF
    ld [bc], a                                    ; $6095: $02
    ld [hl+], a                                   ; $6096: $22
    rst RST_30                                    ; $6097: $F7
    inc b                                         ; $6098: $04
    ld [hl+], a                                   ; $6099: $22
    rst RST_38                                    ; $609A: $FF
    ld b, $22                                     ; $609B: $06 $22
    rlca                                          ; $609D: $07
    ld [$EF32], sp                                ; $609E: $08 $32 $EF
    ld a, [bc]                                    ; $60A1: $0A
    ld [hl-], a                                   ; $60A2: $32
    rst RST_30                                    ; $60A3: $F7
    inc c                                         ; $60A4: $0C

jr_008_60A5:
    ld [hl-], a                                   ; $60A5: $32
    rst RST_38                                    ; $60A6: $FF
    ld c, $32                                     ; $60A7: $0E $32
    rlca                                          ; $60A9: $07
    stop                                          ; $60AA: $10 $00
    rlca                                          ; $60AC: $07

jr_008_60AD:
    nop                                           ; $60AD: $00
    jr nz, jr_008_60F6                            ; $60AE: $20 $46

    jr jr_008_6067                                ; $60B0: $18 $B5

    ld h, b                                       ; $60B2: $60
    nop                                           ; $60B3: $00
    nop                                           ; $60B4: $00
    ld [$E725], sp                                ; $60B5: $08 $25 $E7
    nop                                           ; $60B8: $00
    daa                                           ; $60B9: $27
    rst RST_28                                    ; $60BA: $EF
    ld [bc], a                                    ; $60BB: $02
    ld h, $F7                                     ; $60BC: $26 $F7
    inc b                                         ; $60BE: $04
    ld h, $FF                                     ; $60BF: $26 $FF
    ld b, $26                                     ; $60C1: $06 $26
    rlca                                          ; $60C3: $07
    ld [$F336], sp                                ; $60C4: $08 $36 $F3
    ld a, [bc]                                    ; $60C7: $0A
    ld [hl], $FB                                  ; $60C8: $36 $FB
    inc c                                         ; $60CA: $0C
    ld [hl], $03                                  ; $60CB: $36 $03
    ld c, $00                                     ; $60CD: $0E $00
    ld bc, $2000                                  ; $60CF: $01 $00 $20
    ld b, a                                       ; $60D2: $47
    jr jr_008_60AD                                ; $60D3: $18 $D8

    ld h, b                                       ; $60D5: $60
    ld b, $08                                     ; $60D6: $06 $08
    ld a, [bc]                                    ; $60D8: $0A
    ld c, $E7                                     ; $60D9: $0E $E7
    nop                                           ; $60DB: $00
    ld c, $EF                                     ; $60DC: $0E $EF
    ld [bc], a                                    ; $60DE: $02
    ld c, $F7                                     ; $60DF: $0E $F7
    inc b                                         ; $60E1: $04
    ld c, $FF                                     ; $60E2: $0E $FF
    ld b, $1E                                     ; $60E4: $06 $1E
    di                                            ; $60E6: $F3
    ld [$FB1E], sp                                ; $60E7: $08 $1E $FB
    ld a, [bc]                                    ; $60EA: $0A
    ld l, $F3                                     ; $60EB: $2E $F3

jr_008_60ED:
    inc c                                         ; $60ED: $0C
    ld l, $FB                                     ; $60EE: $2E $FB
    ld c, $FE                                     ; $60F0: $0E $FE
    pop af                                        ; $60F2: $F1
    db $10                                        ; $60F3: $10
    cp $FE                                        ; $60F4: $FE $FE

jr_008_60F6:
    ld [de], a                                    ; $60F6: $12
    nop                                           ; $60F7: $00
    ld [$6000], sp                                ; $60F8: $08 $00 $60
    ld c, b                                       ; $60FB: $48
    jr jr_008_60FF                                ; $60FC: $18 $01

    ld h, c                                       ; $60FE: $61

jr_008_60FF:
    inc b                                         ; $60FF: $04
    db $10                                        ; $6100: $10
    ld [$EA08], sp                                ; $6101: $08 $08 $EA
    nop                                           ; $6104: $00
    ld [$02F2], sp                                ; $6105: $08 $F2 $02
    ld [$04FA], sp                                ; $6108: $08 $FA $04
    ld [$0602], sp                                ; $610B: $08 $02 $06
    ld [bc], a                                    ; $610E: $02
    ldh [c], a                                    ; $610F: $E2
    ld [$FC18], sp                                ; $6110: $08 $18 $FC
    ld a, [bc]                                    ; $6113: $0A
    jr @-$0A                                      ; $6114: $18 $F4

    inc c                                         ; $6116: $0C
    ld a, [de]                                    ; $6117: $1A
    db $EC                                        ; $6118: $EC
    ld c, $00                                     ; $6119: $0E $00
    ld b, $00                                     ; $611B: $06 $00
    ld h, b                                       ; $611D: $60
    ld c, c                                       ; $611E: $49
    jr jr_008_6145                                ; $611F: $18 $24

    ld h, c                                       ; $6121: $61
    nop                                           ; $6122: $00
    nop                                           ; $6123: $00
    rlca                                          ; $6124: $07

jr_008_6125:
    dec d                                         ; $6125: $15
    add sp, $00                                   ; $6126: $E8 $00
    dec e                                         ; $6128: $1D
    ldh a, [rSC]                                  ; $6129: $F0 $02
    jr nz, jr_008_6125                            ; $612B: $20 $F8

    inc b                                         ; $612D: $04
    jr nz, jr_008_6130                            ; $612E: $20 $00

jr_008_6130:
    ld b, $1E                                     ; $6130: $06 $1E
    ld [$1008], sp                                ; $6132: $08 $08 $10
    ld hl, sp+$0A                                 ; $6135: $F8 $0A

jr_008_6137:
    jr nc, @+$01                                  ; $6137: $30 $FF

    inc c                                         ; $6139: $0C
    nop                                           ; $613A: $00
    rlca                                          ; $613B: $07
    nop                                           ; $613C: $00
    ld b, b                                       ; $613D: $40
    ld c, d                                       ; $613E: $4A
    jr jr_008_618F                                ; $613F: $18 $4E

jr_008_6141:
    ld h, c                                       ; $6141: $61
    nop                                           ; $6142: $00
    nop                                           ; $6143: $00
    nop                                           ; $6144: $00

jr_008_6145:
    ld bc, $4000                                  ; $6145: $01 $00 $40
    ld c, d                                       ; $6148: $4A
    jr jr_008_6199                                ; $6149: $18 $4E

jr_008_614B:
    ld h, c                                       ; $614B: $61
    ld [bc], a                                    ; $614C: $02
    ei                                            ; $614D: $FB
    dec b                                         ; $614E: $05
    jr nz, @-$0F                                  ; $614F: $20 $EF

    nop                                           ; $6151: $00
    jr nz, jr_008_614B                            ; $6152: $20 $F7

    ld [bc], a                                    ; $6154: $02
    jr nz, @+$01                                  ; $6155: $20 $FF

    inc b                                         ; $6157: $04
    jr nz, jr_008_6161                            ; $6158: $20 $07

    ld b, $1B                                     ; $615A: $06 $1B

jr_008_615C:
    rst RST_20                                    ; $615C: $E7
    ld [$E000], sp                                ; $615D: $08 $00 $E0
    ld c, d                                       ; $6160: $4A

jr_008_6161:
    jr jr_008_61C9                                ; $6161: $18 $66

    ld h, c                                       ; $6163: $61
    nop                                           ; $6164: $00
    nop                                           ; $6165: $00
    inc b                                         ; $6166: $04

jr_008_6167:
    jr nc, jr_008_615C                            ; $6167: $30 $F3

    nop                                           ; $6169: $00
    jr nc, jr_008_6167                            ; $616A: $30 $FB

    ld [bc], a                                    ; $616C: $02
    jr nc, jr_008_6172                            ; $616D: $30 $03

    inc b                                         ; $616F: $04
    jr nc, jr_008_617D                            ; $6170: $30 $0B

jr_008_6172:
    ld b, $00                                     ; $6172: $06 $00
    ld h, b                                       ; $6174: $60
    ld c, e                                       ; $6175: $4B
    jr @+$7D                                      ; $6176: $18 $7B

    ld h, c                                       ; $6178: $61
    nop                                           ; $6179: $00
    dec bc                                        ; $617A: $0B
    ld b, $20                                     ; $617B: $06 $20

jr_008_617D:
    or $00                                        ; $617D: $F6 $00

jr_008_617F:
    jr nz, jr_008_617F                            ; $617F: $20 $FE

    ld [bc], a                                    ; $6181: $02
    jr nz, @+$08                                  ; $6182: $20 $06

    inc b                                         ; $6184: $04
    jr nz, jr_008_6195                            ; $6185: $20 $0E

    ld b, $30                                     ; $6187: $06 $30
    or $08                                        ; $6189: $F6 $08
    jr nc, jr_008_6191                            ; $618B: $30 $04

    ld a, [bc]                                    ; $618D: $0A
    nop                                           ; $618E: $00

jr_008_618F:
    ld b, $00                                     ; $618F: $06 $00

jr_008_6191:
    jr nz, jr_008_61E5                            ; $6191: $20 $52

    jr jr_008_6137                                ; $6193: $18 $A2

jr_008_6195:
    ld h, c                                       ; $6195: $61
    nop                                           ; $6196: $00
    nop                                           ; $6197: $00
    nop                                           ; $6198: $00

jr_008_6199:
    ld b, $00                                     ; $6199: $06 $00
    jr nz, @+$54                                  ; $619B: $20 $52

    jr jr_008_6141                                ; $619D: $18 $A2

    ld h, c                                       ; $619F: $61
    inc bc                                        ; $61A0: $03
    ld b, $06                                     ; $61A1: $06 $06
    jr @-$0F                                      ; $61A3: $18 $EF

    nop                                           ; $61A5: $00
    jr nz, @+$01                                  ; $61A6: $20 $FF

    ld [bc], a                                    ; $61A8: $02
    jr nz, @+$09                                  ; $61A9: $20 $07

    inc b                                         ; $61AB: $04
    jr nz, jr_008_61BD                            ; $61AC: $20 $0F

    ld b, $10                                     ; $61AE: $06 $10
    rst RST_30                                    ; $61B0: $F7
    ld [$FF10], sp                                ; $61B1: $08 $10 $FF
    ld a, [bc]                                    ; $61B4: $0A

jr_008_61B5:
    nop                                           ; $61B5: $00
    ldh [rHDMA2], a                               ; $61B6: $E0 $52
    jr @-$41                                      ; $61B8: $18 $BD

jr_008_61BA:
    ld h, c                                       ; $61BA: $61

jr_008_61BB:
    nop                                           ; $61BB: $00
    nop                                           ; $61BC: $00

jr_008_61BD:
    ld b, $28                                     ; $61BD: $06 $28
    rst RST_28                                    ; $61BF: $EF

jr_008_61C0:
    nop                                           ; $61C0: $00
    jr nz, jr_008_61BA                            ; $61C1: $20 $F7

    ld [bc], a                                    ; $61C3: $02
    jr c, jr_008_61B5                             ; $61C4: $38 $EF

    inc b                                         ; $61C6: $04
    jr nc, jr_008_61C0                            ; $61C7: $30 $F7

jr_008_61C9:
    ld b, $30                                     ; $61C9: $06 $30
    rst RST_38                                    ; $61CB: $FF
    ld [$0733], sp                                ; $61CC: $08 $33 $07
    ld a, [bc]                                    ; $61CF: $0A
    nop                                           ; $61D0: $00
    ld b, $84                                     ; $61D1: $06 $84
    and b                                         ; $61D3: $A0
    ld d, e                                       ; $61D4: $53
    jr jr_008_61BB                                ; $61D5: $18 $E4

    ld h, c                                       ; $61D7: $61
    cp $00                                        ; $61D8: $FE $00
    nop                                           ; $61DA: $00
    rlca                                          ; $61DB: $07
    add a                                         ; $61DC: $87
    and b                                         ; $61DD: $A0
    ld d, e                                       ; $61DE: $53
    jr @-$1A                                      ; $61DF: $18 $E4

    ld h, c                                       ; $61E1: $61
    inc bc                                        ; $61E2: $03
    dec b                                         ; $61E3: $05
    inc b                                         ; $61E4: $04

jr_008_61E5:
    ld e, $DF                                     ; $61E5: $1E $DF
    nop                                           ; $61E7: $00
    ld e, $E7                                     ; $61E8: $1E $E7
    ld [bc], a                                    ; $61EA: $02
    jr nz, @+$01                                  ; $61EB: $20 $FF

    inc b                                         ; $61ED: $04
    ld e, $07                                     ; $61EE: $1E $07
    ld b, $00                                     ; $61F0: $06 $00
    jr nz, jr_008_6248                            ; $61F2: $20 $54

    jr @-$05                                      ; $61F4: $18 $F9

    ld h, c                                       ; $61F6: $61
    cp $00                                        ; $61F7: $FE $00
    ld b, $1F                                     ; $61F9: $06 $1F
    rst RST_28                                    ; $61FB: $EF
    nop                                           ; $61FC: $00
    rra                                           ; $61FD: $1F
    rst RST_30                                    ; $61FE: $F7

jr_008_61FF:
    ld [bc], a                                    ; $61FF: $02
    ld sp, $04EF                                  ; $6200: $31 $EF $04
    cpl                                           ; $6203: $2F
    rst RST_30                                    ; $6204: $F7
    ld b, $30                                     ; $6205: $06 $30
    rst RST_38                                    ; $6207: $FF
    ld [$0733], sp                                ; $6208: $08 $33 $07
    ld a, [bc]                                    ; $620B: $0A
    nop                                           ; $620C: $00
    ld b, $00                                     ; $620D: $06 $00
    ldh [rHDMA4], a                               ; $620F: $E0 $54
    jr jr_008_6229                                ; $6211: $18 $16

    ld h, d                                       ; $6213: $62
    ld hl, sp+$00                                 ; $6214: $F8 $00
    rlca                                          ; $6216: $07
    inc e                                         ; $6217: $1C
    db $FD                                        ; $6218: $FD
    nop                                           ; $6219: $00
    jr nz, jr_008_6221                            ; $621A: $20 $05

    ld [bc], a                                    ; $621C: $02
    jr nz, jr_008_622C                            ; $621D: $20 $0D

    inc b                                         ; $621F: $04
    inc h                                         ; $6220: $24

jr_008_6221:
    dec d                                         ; $6221: $15
    ld b, $2C                                     ; $6222: $06 $2C
    db $FD                                        ; $6224: $FD
    ld [$0530], sp                                ; $6225: $08 $30 $05
    ld a, [bc]                                    ; $6228: $0A

jr_008_6229:
    jr nc, jr_008_6238                            ; $6229: $30 $0D

    inc c                                         ; $622B: $0C

jr_008_622C:
    nop                                           ; $622C: $00
    ld b, $85                                     ; $622D: $06 $85
    ret nz                                        ; $622F: $C0

    ld d, l                                       ; $6230: $55
    jr jr_008_6269                                ; $6231: $18 $36

    ld h, d                                       ; $6233: $62
    ld hl, sp+$00                                 ; $6234: $F8 $00
    inc bc                                        ; $6236: $03
    inc h                                         ; $6237: $24

jr_008_6238:
    rst RST_20                                    ; $6238: $E7
    nop                                           ; $6239: $00
    inc h                                         ; $623A: $24
    rst RST_28                                    ; $623B: $EF
    ld [bc], a                                    ; $623C: $02
    inc h                                         ; $623D: $24
    rst RST_30                                    ; $623E: $F7
    inc b                                         ; $623F: $04
    nop                                           ; $6240: $00
    jr nz, jr_008_6299                            ; $6241: $20 $56

    jr jr_008_628D                                ; $6243: $18 $48

    ld h, d                                       ; $6245: $62
    ld hl, sp+$00                                 ; $6246: $F8 $00

jr_008_6248:
    ld [$F718], sp                                ; $6248: $08 $18 $F7
    nop                                           ; $624B: $00
    inc hl                                        ; $624C: $23
    rst RST_38                                    ; $624D: $FF
    ld [bc], a                                    ; $624E: $02
    inc de                                        ; $624F: $13
    rst RST_38                                    ; $6250: $FF
    inc b                                         ; $6251: $04
    dec e                                         ; $6252: $1D
    rlca                                          ; $6253: $07
    ld b, $21                                     ; $6254: $06 $21
    rrca                                          ; $6256: $0F
    ld [$072D], sp                                ; $6257: $08 $2D $07
    ld a, [bc]                                    ; $625A: $0A
    ld sp, $0C0F                                  ; $625B: $31 $0F $0C
    dec a                                         ; $625E: $3D
    rlca                                          ; $625F: $07
    ld c, $00                                     ; $6260: $0E $00
    ld b, $85                                     ; $6262: $06 $85
    jr nz, jr_008_62BD                            ; $6264: $20 $57

    jr jr_008_62D3                                ; $6266: $18 $6B

jr_008_6268:
    ld h, d                                       ; $6268: $62

jr_008_6269:
    ld hl, sp+$00                                 ; $6269: $F8 $00
    ld [bc], a                                    ; $626B: $02
    dec hl                                        ; $626C: $2B
    rst RST_28                                    ; $626D: $EF
    nop                                           ; $626E: $00

jr_008_626F:
    jr z, jr_008_6268                             ; $626F: $28 $F7

    ld [bc], a                                    ; $6271: $02
    nop                                           ; $6272: $00
    ld bc, $6000                                  ; $6273: $01 $00 $60
    ld d, a                                       ; $6276: $57
    jr jr_008_61FF                                ; $6277: $18 $86

    ld h, d                                       ; $6279: $62
    ldh a, [c]                                    ; $627A: $F2
    nop                                           ; $627B: $00
    nop                                           ; $627C: $00
    ld bc, $6092                                  ; $627D: $01 $92 $60
    ld d, a                                       ; $6280: $57
    jr @-$78                                      ; $6281: $18 $86

    ld h, d                                       ; $6283: $62
    ldh a, [c]                                    ; $6284: $F2
    nop                                           ; $6285: $00
    ld a, [bc]                                    ; $6286: $0A
    dec d                                         ; $6287: $15
    ldh a, [c]                                    ; $6288: $F2
    nop                                           ; $6289: $00
    inc hl                                        ; $628A: $23
    ld sp, hl                                     ; $628B: $F9
    ld [bc], a                                    ; $628C: $02

jr_008_628D:
    inc de                                        ; $628D: $13
    ld a, [$1304]                                 ; $628E: $FA $04 $13
    ld [bc], a                                    ; $6291: $02
    ld b, $23                                     ; $6292: $06 $23
    ld bc, $3308                                  ; $6294: $01 $08 $33
    nop                                           ; $6297: $00
    ld a, [bc]                                    ; $6298: $0A

jr_008_6299:
    inc de                                        ; $6299: $13
    ld a, [bc]                                    ; $629A: $0A
    inc c                                         ; $629B: $0C
    inc hl                                        ; $629C: $23
    add hl, bc                                    ; $629D: $09
    ld c, $33                                     ; $629E: $0E $33
    ld [$2B10], sp                                ; $62A0: $08 $10 $2B

jr_008_62A3:
    db $10                                        ; $62A3: $10
    ld [de], a                                    ; $62A4: $12
    nop                                           ; $62A5: $00

jr_008_62A6:
    ld bc, $A086                                  ; $62A6: $01 $86 $A0
    ld e, b                                       ; $62A9: $58
    jr @-$45                                      ; $62AA: $18 $B9

    ld h, d                                       ; $62AC: $62
    di                                            ; $62AD: $F3
    nop                                           ; $62AE: $00
    nop                                           ; $62AF: $00
    ld bc, $A000                                  ; $62B0: $01 $00 $A0
    ld e, b                                       ; $62B3: $58

jr_008_62B4:
    jr jr_008_626F                                ; $62B4: $18 $B9

    ld h, d                                       ; $62B6: $62

jr_008_62B7:
    di                                            ; $62B7: $F3
    nop                                           ; $62B8: $00
    add hl, bc                                    ; $62B9: $09
    jr z, jr_008_62A3                             ; $62BA: $28 $E7

    nop                                           ; $62BC: $00

jr_008_62BD:
    jr jr_008_62A6                                ; $62BD: $18 $E7

    ld [bc], a                                    ; $62BF: $02
    jr @-$0F                                      ; $62C0: $18 $EF

    inc b                                         ; $62C2: $04
    jr z, jr_008_62B4                             ; $62C3: $28 $EF

jr_008_62C5:
    ld b, $38                                     ; $62C5: $06 $38
    rst RST_28                                    ; $62C7: $EF

jr_008_62C8:
    ld [$F710], sp                                ; $62C8: $08 $10 $F7
    ld a, [bc]                                    ; $62CB: $0A
    jr nz, jr_008_62C5                            ; $62CC: $20 $F7

    inc c                                         ; $62CE: $0C
    jr nc, jr_008_62C8                            ; $62CF: $30 $F7

    ld c, $10                                     ; $62D1: $0E $10

jr_008_62D3:
    rst RST_38                                    ; $62D3: $FF
    stop                                          ; $62D4: $10 $00
    ret nz                                        ; $62D6: $C0

    ld e, c                                       ; $62D7: $59
    jr jr_008_62B7                                ; $62D8: $18 $DD

    ld h, d                                       ; $62DA: $62
    di                                            ; $62DB: $F3
    nop                                           ; $62DC: $00
    dec b                                         ; $62DD: $05
    ld h, $FF                                     ; $62DE: $26 $FF
    nop                                           ; $62E0: $00
    ld [hl], $FF                                  ; $62E1: $36 $FF
    ld [bc], a                                    ; $62E3: $02
    ld h, $07                                     ; $62E4: $26 $07
    inc b                                         ; $62E6: $04
    ld [hl], $07                                  ; $62E7: $36 $07

jr_008_62E9:
    ld b, $29                                     ; $62E9: $06 $29

jr_008_62EB:
    rrca                                          ; $62EB: $0F

jr_008_62EC:
    ld [$0600], sp                                ; $62EC: $08 $00 $06
    nop                                           ; $62EF: $00
    ld h, b                                       ; $62F0: $60
    ld e, d                                       ; $62F1: $5A
    jr jr_008_62EB                                ; $62F2: $18 $F7

    ld h, d                                       ; $62F4: $62
    di                                            ; $62F5: $F3
    nop                                           ; $62F6: $00

jr_008_62F7:
    inc b                                         ; $62F7: $04
    jr nz, jr_008_62E9                            ; $62F8: $20 $EF

jr_008_62FA:
    nop                                           ; $62FA: $00
    jr nc, jr_008_62EC                            ; $62FB: $30 $EF

    ld [bc], a                                    ; $62FD: $02
    jr nz, jr_008_62F7                            ; $62FE: $20 $F7

    inc b                                         ; $6300: $04
    jr nc, jr_008_62FA                            ; $6301: $30 $F7

    ld b, $00                                     ; $6303: $06 $00
    ldh [$FF5A], a                                ; $6305: $E0 $5A

jr_008_6307:
    jr jr_008_6315                                ; $6307: $18 $0C

    ld h, e                                       ; $6309: $63
    nop                                           ; $630A: $00
    nop                                           ; $630B: $00
    ld b, $26                                     ; $630C: $06 $26
    ld a, [$2E00]                                 ; $630E: $FA $00 $2E
    ldh a, [c]                                    ; $6311: $F2
    ld [bc], a                                    ; $6312: $02
    ld a, $F2                                     ; $6313: $3E $F2

jr_008_6315:
    inc b                                         ; $6315: $04
    ld [hl], $FA                                  ; $6316: $36 $FA
    ld b, $36                                     ; $6318: $06 $36
    ld [bc], a                                    ; $631A: $02
    ld [$0A38], sp                                ; $631B: $08 $38 $0A
    ld a, [bc]                                    ; $631E: $0A
    nop                                           ; $631F: $00
    and b                                         ; $6320: $A0
    ld e, e                                       ; $6321: $5B
    jr jr_008_634B                                ; $6322: $18 $27

    ld h, e                                       ; $6324: $63
    nop                                           ; $6325: $00
    nop                                           ; $6326: $00
    dec b                                         ; $6327: $05
    inc h                                         ; $6328: $24
    ld a, [$2400]                                 ; $6329: $FA $00 $24
    ldh a, [c]                                    ; $632C: $F2
    ld [bc], a                                    ; $632D: $02
    inc [hl]                                      ; $632E: $34
    di                                            ; $632F: $F3
    inc b                                         ; $6330: $04

jr_008_6331:
    inc [hl]                                      ; $6331: $34
    ei                                            ; $6332: $FB
    ld b, $34                                     ; $6333: $06 $34
    inc bc                                        ; $6335: $03
    ld [$0700], sp                                ; $6336: $08 $00 $07
    nop                                           ; $6339: $00
    ld b, b                                       ; $633A: $40
    ld e, h                                       ; $633B: $5C
    jr jr_008_637F                                ; $633C: $18 $41

    ld h, e                                       ; $633E: $63
    ei                                            ; $633F: $FB
    nop                                           ; $6340: $00
    ld [$F71F], sp                                ; $6341: $08 $1F $F7
    nop                                           ; $6344: $00
    jr z, @+$01                                   ; $6345: $28 $FF

    ld [bc], a                                    ; $6347: $02
    jr z, @+$09                                   ; $6348: $28 $07

    inc b                                         ; $634A: $04

jr_008_634B:
    add hl, hl                                    ; $634B: $29
    rrca                                          ; $634C: $0F
    ld b, $28                                     ; $634D: $06 $28
    rla                                           ; $634F: $17
    ld [$FF38], sp                                ; $6350: $08 $38 $FF
    ld a, [bc]                                    ; $6353: $0A
    jr c, jr_008_635D                             ; $6354: $38 $07

    inc c                                         ; $6356: $0C
    add hl, sp                                    ; $6357: $39
    rrca                                          ; $6358: $0F

jr_008_6359:
    ld c, $00                                     ; $6359: $0E $00
    rlca                                          ; $635B: $07
    adc b                                         ; $635C: $88

jr_008_635D:
    ld b, b                                       ; $635D: $40
    ld e, l                                       ; $635E: $5D
    jr @+$66                                      ; $635F: $18 $64

jr_008_6361:
    ld h, e                                       ; $6361: $63
    ei                                            ; $6362: $FB
    nop                                           ; $6363: $00
    ld [$EF1F], sp                                ; $6364: $08 $1F $EF
    nop                                           ; $6367: $00
    jr nz, jr_008_6361                            ; $6368: $20 $F7

    ld [bc], a                                    ; $636A: $02
    jr nz, @+$01                                  ; $636B: $20 $FF

    inc b                                         ; $636D: $04
    add hl, hl                                    ; $636E: $29
    rlca                                          ; $636F: $07
    ld b, $29                                     ; $6370: $06 $29
    rrca                                          ; $6372: $0F
    ld [$0739], sp                                ; $6373: $08 $39 $07
    ld a, [bc]                                    ; $6376: $0A
    add hl, sp                                    ; $6377: $39
    rrca                                          ; $6378: $0F
    inc c                                         ; $6379: $0C
    daa                                           ; $637A: $27
    rla                                           ; $637B: $17
    ld c, $00                                     ; $637C: $0E $00
    ld b, b                                       ; $637E: $40

jr_008_637F:
    ld e, [hl]                                    ; $637F: $5E
    jr jr_008_6307                                ; $6380: $18 $85

    ld h, e                                       ; $6382: $63
    ei                                            ; $6383: $FB
    nop                                           ; $6384: $00

jr_008_6385:
    inc b                                         ; $6385: $04
    dec [hl]                                      ; $6386: $35
    rst RST_20                                    ; $6387: $E7
    nop                                           ; $6388: $00
    dec [hl]                                      ; $6389: $35
    rst RST_28                                    ; $638A: $EF
    ld [bc], a                                    ; $638B: $02
    jr nc, jr_008_6385                            ; $638C: $30 $F7

    inc b                                         ; $638E: $04

jr_008_638F:
    jr nc, @+$01                                  ; $638F: $30 $FF

    ld b, $00                                     ; $6391: $06 $00
    ret nz                                        ; $6393: $C0

    ld e, [hl]                                    ; $6394: $5E
    jr jr_008_6331                                ; $6395: $18 $9A

jr_008_6397:
    ld h, e                                       ; $6397: $63
    ei                                            ; $6398: $FB
    nop                                           ; $6399: $00
    inc bc                                        ; $639A: $03
    dec [hl]                                      ; $639B: $35
    rst RST_28                                    ; $639C: $EF
    nop                                           ; $639D: $00
    jr nc, jr_008_6397                            ; $639E: $30 $F7

    ld [bc], a                                    ; $63A0: $02
    jr nc, @+$01                                  ; $63A1: $30 $FF

    inc b                                         ; $63A3: $04
    nop                                           ; $63A4: $00
    rlca                                          ; $63A5: $07

jr_008_63A6:
    adc c                                         ; $63A6: $89
    jr nz, jr_008_6408                            ; $63A7: $20 $5F

jr_008_63A9:
    jr jr_008_6359                                ; $63A9: $18 $AE

jr_008_63AB:
    ld h, e                                       ; $63AB: $63
    nop                                           ; $63AC: $00
    nop                                           ; $63AD: $00
    ld b, $20                                     ; $63AE: $06 $20
    rst RST_30                                    ; $63B0: $F7
    nop                                           ; $63B1: $00
    jr nc, jr_008_63AB                            ; $63B2: $30 $F7

    ld [bc], a                                    ; $63B4: $02
    jr nc, jr_008_63A6                            ; $63B5: $30 $EF

    inc b                                         ; $63B7: $04
    jr nz, jr_008_63A9                            ; $63B8: $20 $EF

    ld b, $10                                     ; $63BA: $06 $10
    pop af                                        ; $63BC: $F1

jr_008_63BD:
    ld [$F910], sp                                ; $63BD: $08 $10 $F9
    ld a, [bc]                                    ; $63C0: $0A
    nop                                           ; $63C1: $00
    ldh [$FF5F], a                                ; $63C2: $E0 $5F
    jr jr_008_638F                                ; $63C4: $18 $C9

    ld h, e                                       ; $63C6: $63
    nop                                           ; $63C7: $00
    nop                                           ; $63C8: $00
    inc b                                         ; $63C9: $04
    dec h                                         ; $63CA: $25
    rst RST_38                                    ; $63CB: $FF
    nop                                           ; $63CC: $00
    add hl, hl                                    ; $63CD: $29
    rlca                                          ; $63CE: $07
    ld [bc], a                                    ; $63CF: $02
    dec [hl]                                      ; $63D0: $35
    rst RST_38                                    ; $63D1: $FF
    inc b                                         ; $63D2: $04
    add hl, sp                                    ; $63D3: $39
    rlca                                          ; $63D4: $07
    ld b, $00                                     ; $63D5: $06 $00
    rlca                                          ; $63D7: $07

jr_008_63D8:
    nop                                           ; $63D8: $00
    ld h, b                                       ; $63D9: $60
    ld h, b                                       ; $63DA: $60
    jr jr_008_63BD                                ; $63DB: $18 $E0

jr_008_63DD:
    ld h, e                                       ; $63DD: $63
    nop                                           ; $63DE: $00
    nop                                           ; $63DF: $00
    ld b, $20                                     ; $63E0: $06 $20
    rst RST_30                                    ; $63E2: $F7
    nop                                           ; $63E3: $00
    jr nc, jr_008_63DD                            ; $63E4: $30 $F7

    ld [bc], a                                    ; $63E6: $02
    jr nz, jr_008_63D8                            ; $63E7: $20 $EF

    inc b                                         ; $63E9: $04
    db $10                                        ; $63EA: $10
    ld sp, hl                                     ; $63EB: $F9
    ld b, $10                                     ; $63EC: $06 $10
    pop af                                        ; $63EE: $F1
    ld [$EF36], sp                                ; $63EF: $08 $36 $EF
    ld a, [bc]                                    ; $63F2: $0A
    nop                                           ; $63F3: $00
    rlca                                          ; $63F4: $07
    adc c                                         ; $63F5: $89
    jr nz, @+$63                                  ; $63F6: $20 $61

    jr @-$01                                      ; $63F8: $18 $FD

    ld h, e                                       ; $63FA: $63
    nop                                           ; $63FB: $00
    nop                                           ; $63FC: $00
    ld a, [bc]                                    ; $63FD: $0A
    jr c, @-$0D                                   ; $63FE: $38 $F1

    nop                                           ; $6400: $00
    scf                                           ; $6401: $37
    ld sp, hl                                     ; $6402: $F9
    ld [bc], a                                    ; $6403: $02
    ld [hl], $01                                  ; $6404: $36 $01
    inc b                                         ; $6406: $04
    inc sp                                        ; $6407: $33

jr_008_6408:
    add hl, bc                                    ; $6408: $09
    ld b, $26                                     ; $6409: $06 $26
    ld de, $2808                                  ; $640B: $11 $08 $28
    pop af                                        ; $640E: $F1
    ld a, [bc]                                    ; $640F: $0A
    daa                                           ; $6410: $27
    ld sp, hl                                     ; $6411: $F9
    inc c                                         ; $6412: $0C

jr_008_6413:
    ld h, $01                                     ; $6413: $26 $01
    ld c, $23                                     ; $6415: $0E $23
    add hl, bc                                    ; $6417: $09
    db $10                                        ; $6418: $10
    ld d, $11                                     ; $6419: $16 $11
    ld [de], a                                    ; $641B: $12
    nop                                           ; $641C: $00
    ld [$608A], sp                                ; $641D: $08 $8A $60
    ld h, d                                       ; $6420: $62
    jr @+$28                                      ; $6421: $18 $26

jr_008_6423:
    ld h, h                                       ; $6423: $64
    ld a, [bc]                                    ; $6424: $0A
    cp $06                                        ; $6425: $FE $06
    db $10                                        ; $6427: $10
    rst RST_18                                    ; $6428: $DF
    nop                                           ; $6429: $00
    jr jr_008_6413                                ; $642A: $18 $E7

    ld [bc], a                                    ; $642C: $02
    db $10                                        ; $642D: $10

jr_008_642E:
    rst RST_28                                    ; $642E: $EF
    inc b                                         ; $642F: $04
    db $10                                        ; $6430: $10
    rst RST_30                                    ; $6431: $F7
    ld b, $16                                     ; $6432: $06 $16
    rst RST_38                                    ; $6434: $FF
    ld [$E708], sp                                ; $6435: $08 $08 $E7
    ld a, [bc]                                    ; $6438: $0A

jr_008_6439:
    nop                                           ; $6439: $00
    jr nz, @+$65                                  ; $643A: $20 $63

    jr jr_008_647F                                ; $643C: $18 $41

    ld h, h                                       ; $643E: $64
    ld a, [bc]                                    ; $643F: $0A
    cp $07                                        ; $6440: $FE $07
    jr z, jr_008_6423                             ; $6442: $28 $DF

jr_008_6444:
    nop                                           ; $6444: $00
    jr z, jr_008_642E                             ; $6445: $28 $E7

    ld [bc], a                                    ; $6447: $02
    jr nz, jr_008_6439                            ; $6448: $20 $EF

    inc b                                         ; $644A: $04

jr_008_644B:
    jr nz, jr_008_6444                            ; $644B: $20 $F7

    ld b, $30                                     ; $644D: $06 $30
    rst RST_28                                    ; $644F: $EF
    ld [$F730], sp                                ; $6450: $08 $30 $F7
    ld a, [bc]                                    ; $6453: $0A
    ld [hl-], a                                   ; $6454: $32
    rst RST_38                                    ; $6455: $FF
    inc c                                         ; $6456: $0C
    nop                                           ; $6457: $00
    ld [$008A], sp                                ; $6458: $08 $8A $00
    ld h, h                                       ; $645B: $64
    jr jr_008_64BF                                ; $645C: $18 $61

    ld h, h                                       ; $645E: $64
    ld a, [bc]                                    ; $645F: $0A
    cp $04                                        ; $6460: $FE $04
    jr jr_008_644B                                ; $6462: $18 $E7

    nop                                           ; $6464: $00
    db $10                                        ; $6465: $10
    rst RST_28                                    ; $6466: $EF
    ld [bc], a                                    ; $6467: $02
    db $10                                        ; $6468: $10
    rst RST_30                                    ; $6469: $F7
    inc b                                         ; $646A: $04
    ld d, $FF                                     ; $646B: $16 $FF
    ld b, $00                                     ; $646D: $06 $00
    ld [$808A], sp                                ; $646F: $08 $8A $80
    ld h, h                                       ; $6472: $64
    jr jr_008_64ED                                ; $6473: $18 $78

jr_008_6475:
    ld h, h                                       ; $6475: $64
    inc b                                         ; $6476: $04
    dec bc                                        ; $6477: $0B
    inc c                                         ; $6478: $0C
    ld de, $00DF                                  ; $6479: $11 $DF $00
    ld [de], a                                    ; $647C: $12
    rst RST_20                                    ; $647D: $E7
    ld [bc], a                                    ; $647E: $02

jr_008_647F:
    ld [de], a                                    ; $647F: $12
    rst RST_28                                    ; $6480: $EF
    inc b                                         ; $6481: $04
    ld de, $06F7                                  ; $6482: $11 $F7 $06
    ld de, $08FF                                  ; $6485: $11 $FF $08
    ld c, $06                                     ; $6488: $0E $06
    ld a, [bc]                                    ; $648A: $0A
    inc hl                                        ; $648B: $23
    rst RST_28                                    ; $648C: $EF
    inc c                                         ; $648D: $0C
    ld hl, $0EF7                                  ; $648E: $21 $F7 $0E
    ld hl, $10FF                                  ; $6491: $21 $FF $10
    ld bc, $12DF                                  ; $6494: $01 $DF $12
    ld [bc], a                                    ; $6497: $02
    rst RST_20                                    ; $6498: $E7

jr_008_6499:
    inc d                                         ; $6499: $14
    ld [bc], a                                    ; $649A: $02
    rst RST_28                                    ; $649B: $EF
    ld d, $00                                     ; $649C: $16 $00
    ld bc, $0002                                  ; $649E: $01 $02 $00
    ld h, [hl]                                    ; $64A1: $66
    jr jr_008_644B                                ; $64A2: $18 $A7

jr_008_64A4:
    ld h, h                                       ; $64A4: $64
    ld a, [$0400]                                 ; $64A5: $FA $00 $04
    jr nz, jr_008_6499                            ; $64A8: $20 $EF

    nop                                           ; $64AA: $00
    jr nz, jr_008_64A4                            ; $64AB: $20 $F7

    ld [bc], a                                    ; $64AD: $02
    jr nz, @+$01                                  ; $64AE: $20 $FF

    inc b                                         ; $64B0: $04
    jr nz, jr_008_64BA                            ; $64B1: $20 $07

    ld b, $00                                     ; $64B3: $06 $00
    add b                                         ; $64B5: $80
    ld h, [hl]                                    ; $64B6: $66
    jr jr_008_6475                                ; $64B7: $18 $BC

    ld h, h                                       ; $64B9: $64

jr_008_64BA:
    ld a, [$0300]                                 ; $64BA: $FA $00 $03
    jr nc, @-$01                                  ; $64BD: $30 $FD

jr_008_64BF:
    nop                                           ; $64BF: $00
    jr nc, jr_008_64C7                            ; $64C0: $30 $05

jr_008_64C2:
    ld [bc], a                                    ; $64C2: $02
    ld a, $F5                                     ; $64C3: $3E $F5
    inc b                                         ; $64C5: $04
    nop                                           ; $64C6: $00

jr_008_64C7:
    ld bc, $E000                                  ; $64C7: $01 $00 $E0
    ld h, [hl]                                    ; $64CA: $66
    jr @-$2E                                      ; $64CB: $18 $D0

    ld h, h                                       ; $64CD: $64
    nop                                           ; $64CE: $00
    nop                                           ; $64CF: $00
    ld a, [bc]                                    ; $64D0: $0A
    jr jr_008_64C2                                ; $64D1: $18 $EF

    nop                                           ; $64D3: $00
    inc d                                         ; $64D4: $14
    rst RST_30                                    ; $64D5: $F7
    ld [bc], a                                    ; $64D6: $02
    inc d                                         ; $64D7: $14
    rst RST_38                                    ; $64D8: $FF
    inc b                                         ; $64D9: $04
    inc d                                         ; $64DA: $14
    rlca                                          ; $64DB: $07
    ld b, $24                                     ; $64DC: $06 $24
    rst RST_30                                    ; $64DE: $F7
    ld [$FF24], sp                                ; $64DF: $08 $24 $FF
    ld a, [bc]                                    ; $64E2: $0A
    inc [hl]                                      ; $64E3: $34
    rst RST_30                                    ; $64E4: $F7
    inc c                                         ; $64E5: $0C
    inc [hl]                                      ; $64E6: $34
    rst RST_38                                    ; $64E7: $FF
    ld c, $34                                     ; $64E8: $0E $34
    rlca                                          ; $64EA: $07

jr_008_64EB:
    db $10                                        ; $64EB: $10
    inc h                                         ; $64EC: $24

jr_008_64ED:
    rlca                                          ; $64ED: $07
    ld [de], a                                    ; $64EE: $12

jr_008_64EF:
    nop                                           ; $64EF: $00
    ld bc, $2000                                  ; $64F0: $01 $00 $20
    ld l, b                                       ; $64F3: $68
    jr jr_008_64EF                                ; $64F4: $18 $F9

jr_008_64F6:
    ld h, h                                       ; $64F6: $64
    nop                                           ; $64F7: $00
    nop                                           ; $64F8: $00
    dec bc                                        ; $64F9: $0B
    jr jr_008_64EB                                ; $64FA: $18 $EF

    nop                                           ; $64FC: $00
    jr jr_008_64F6                                ; $64FD: $18 $F7

    ld [bc], a                                    ; $64FF: $02
    jr @+$01                                      ; $6500: $18 $FF

    inc b                                         ; $6502: $04
    jr jr_008_650C                                ; $6503: $18 $07

    ld b, $28                                     ; $6505: $06 $28
    ld hl, sp+$08                                 ; $6507: $F8 $08
    jr z, jr_008_650B                             ; $6509: $28 $00

jr_008_650B:
    ld a, [bc]                                    ; $650B: $0A

jr_008_650C:
    jr c, @-$06                                   ; $650C: $38 $F8

    inc c                                         ; $650E: $0C
    jr c, jr_008_6511                             ; $650F: $38 $00

jr_008_6511:
    ld c, $32                                     ; $6511: $0E $32
    ld [$0810], sp                                ; $6513: $08 $10 $08
    ld hl, sp+$12                                 ; $6516: $F8 $12
    ld [$1405], sp                                ; $6518: $08 $05 $14
    nop                                           ; $651B: $00
    ld bc, $4000                                  ; $651C: $01 $00 $40
    ld l, h                                       ; $651F: $6C
    jr @+$27                                      ; $6520: $18 $25

    ld h, l                                       ; $6522: $65
    nop                                           ; $6523: $00
    nop                                           ; $6524: $00
    ld a, [bc]                                    ; $6525: $0A
    jr @-$0F                                      ; $6526: $18 $EF

    nop                                           ; $6528: $00
    add hl, de                                    ; $6529: $19
    rst RST_30                                    ; $652A: $F7
    ld [bc], a                                    ; $652B: $02
    dec de                                        ; $652C: $1B
    rst RST_38                                    ; $652D: $FF
    inc b                                         ; $652E: $04
    inc e                                         ; $652F: $1C
    rlca                                          ; $6530: $07

jr_008_6531:
    ld b, $29                                     ; $6531: $06 $29
    rst RST_30                                    ; $6533: $F7
    ld [$FF2B], sp                                ; $6534: $08 $2B $FF
    ld a, [bc]                                    ; $6537: $0A
    add hl, sp                                    ; $6538: $39
    rst RST_30                                    ; $6539: $F7
    inc c                                         ; $653A: $0C
    dec sp                                        ; $653B: $3B
    rst RST_38                                    ; $653C: $FF
    ld c, $33                                     ; $653D: $0E $33
    rlca                                          ; $653F: $07
    db $10                                        ; $6540: $10
    dec c                                         ; $6541: $0D
    rst RST_20                                    ; $6542: $E7
    ld [de], a                                    ; $6543: $12
    nop                                           ; $6544: $00
    ld bc, $8000                                  ; $6545: $01 $00 $80
    ld l, l                                       ; $6548: $6D
    jr jr_008_6599                                ; $6549: $18 $4E

    ld h, l                                       ; $654B: $65
    nop                                           ; $654C: $00
    nop                                           ; $654D: $00
    ld [$E720], sp                                ; $654E: $08 $20 $E7
    nop                                           ; $6551: $00
    inc hl                                        ; $6552: $23

jr_008_6553:
    rst RST_28                                    ; $6553: $EF
    ld [bc], a                                    ; $6554: $02
    ld [hl+], a                                   ; $6555: $22
    rst RST_30                                    ; $6556: $F7
    inc b                                         ; $6557: $04
    ld [hl+], a                                   ; $6558: $22
    rst RST_38                                    ; $6559: $FF
    ld b, $24                                     ; $655A: $06 $24
    rlca                                          ; $655C: $07
    ld [$F732], sp                                ; $655D: $08 $32 $F7
    ld a, [bc]                                    ; $6560: $0A
    ld [hl-], a                                   ; $6561: $32
    rst RST_38                                    ; $6562: $FF
    inc c                                         ; $6563: $0C
    jr c, @+$09                                   ; $6564: $38 $07

    ld c, $00                                     ; $6566: $0E $00
    ld bc, $8000                                  ; $6568: $01 $00 $80
    ld l, [hl]                                    ; $656B: $6E
    jr jr_008_65DF                                ; $656C: $18 $71

    ld h, l                                       ; $656E: $65
    nop                                           ; $656F: $00
    nop                                           ; $6570: $00
    ld a, [bc]                                    ; $6571: $0A
    jr z, jr_008_6553                             ; $6572: $28 $DF

    nop                                           ; $6574: $00
    inc l                                         ; $6575: $2C
    rst RST_20                                    ; $6576: $E7
    ld [bc], a                                    ; $6577: $02
    dec l                                         ; $6578: $2D
    rst RST_28                                    ; $6579: $EF
    inc b                                         ; $657A: $04
    ld a, [hl+]                                   ; $657B: $2A
    rst RST_30                                    ; $657C: $F7
    ld b, $2C                                     ; $657D: $06 $2C
    rst RST_38                                    ; $657F: $FF
    ld [$0733], sp                                ; $6580: $08 $33 $07
    ld a, [bc]                                    ; $6583: $0A
    inc e                                         ; $6584: $1C
    rst RST_20                                    ; $6585: $E7
    inc c                                         ; $6586: $0C
    dec e                                         ; $6587: $1D
    rst RST_28                                    ; $6588: $EF
    ld c, $3A                                     ; $6589: $0E $3A
    rst RST_30                                    ; $658B: $F7
    db $10                                        ; $658C: $10
    inc a                                         ; $658D: $3C
    rst RST_38                                    ; $658E: $FF

jr_008_658F:
    ld [de], a                                    ; $658F: $12
    nop                                           ; $6590: $00
    ld bc, $C000                                  ; $6591: $01 $00 $C0
    ld l, a                                       ; $6594: $6F
    jr jr_008_6531                                ; $6595: $18 $9A

    ld h, l                                       ; $6597: $65
    nop                                           ; $6598: $00

jr_008_6599:
    nop                                           ; $6599: $00
    db $10                                        ; $659A: $10

jr_008_659B:
    ld d, $E7                                     ; $659B: $16 $E7
    nop                                           ; $659D: $00
    jr jr_008_658F                                ; $659E: $18 $EF

    ld [bc], a                                    ; $65A0: $02
    inc e                                         ; $65A1: $1C
    rst RST_30                                    ; $65A2: $F7
    inc b                                         ; $65A3: $04
    ld de, $06FF                                  ; $65A4: $11 $FF $06

jr_008_65A7:
    ld de, $0807                                  ; $65A7: $11 $07 $08

jr_008_65AA:
    jr z, jr_008_659B                             ; $65AA: $28 $EF

    ld a, [bc]                                    ; $65AC: $0A
    inc l                                         ; $65AD: $2C
    rst RST_30                                    ; $65AE: $F7
    inc c                                         ; $65AF: $0C
    ld hl, $0EFF                                  ; $65B0: $21 $FF $0E
    ld hl, $1007                                  ; $65B3: $21 $07 $10
    ld sp, $12E7                                  ; $65B6: $31 $E7 $12
    jr c, jr_008_65AA                             ; $65B9: $38 $EF

    inc d                                         ; $65BB: $14
    inc a                                         ; $65BC: $3C
    rst RST_30                                    ; $65BD: $F7
    ld d, $31                                     ; $65BE: $16 $31
    rst RST_38                                    ; $65C0: $FF
    jr @+$33                                      ; $65C1: $18 $31

    rlca                                          ; $65C3: $07
    ld a, [de]                                    ; $65C4: $1A
    jr nc, @+$11                                  ; $65C5: $30 $0F

    inc e                                         ; $65C7: $1C
    add hl, hl                                    ; $65C8: $29
    rla                                           ; $65C9: $17

jr_008_65CA:
    ld e, $00                                     ; $65CA: $1E $00
    ld bc, $8000                                  ; $65CC: $01 $00 $80
    ld l, c                                       ; $65CF: $69
    jr jr_008_65A7                                ; $65D0: $18 $D5

    ld h, l                                       ; $65D2: $65
    nop                                           ; $65D3: $00
    nop                                           ; $65D4: $00
    ld b, $10                                     ; $65D5: $06 $10
    ldh a, [rP1]                                  ; $65D7: $F0 $00
    jr nz, jr_008_65CA                            ; $65D9: $20 $EF

    ld [bc], a                                    ; $65DB: $02
    db $10                                        ; $65DC: $10
    ld hl, sp+$04                                 ; $65DD: $F8 $04

jr_008_65DF:
    jr nz, @-$07                                  ; $65DF: $20 $F7

    ld b, $30                                     ; $65E1: $06 $30
    rst RST_30                                    ; $65E3: $F7
    ld [$EF36], sp                                ; $65E4: $08 $36 $EF
    ld a, [bc]                                    ; $65E7: $0A
    nop                                           ; $65E8: $00
    ld b, b                                       ; $65E9: $40
    ld l, d                                       ; $65EA: $6A
    jr @-$06                                      ; $65EB: $18 $F8

jr_008_65ED:
    ld h, l                                       ; $65ED: $65
    inc bc                                        ; $65EE: $03

jr_008_65EF:
    rst RST_20                                    ; $65EF: $E7
    jr nz, jr_008_6632                            ; $65F0: $20 $40

    ld l, d                                       ; $65F2: $6A
    jr jr_008_65ED                                ; $65F3: $18 $F8

    ld h, l                                       ; $65F5: $65
    ld bc, $06E7                                  ; $65F6: $01 $E7 $06

jr_008_65F9:
    jr nz, @-$17                                  ; $65F9: $20 $E7

    nop                                           ; $65FB: $00
    jr nz, jr_008_65ED                            ; $65FC: $20 $EF

    ld [bc], a                                    ; $65FE: $02
    jr nz, @-$07                                  ; $65FF: $20 $F7

    inc b                                         ; $6601: $04
    jr nz, @+$01                                  ; $6602: $20 $FF

    ld b, $20                                     ; $6604: $06 $20
    rlca                                          ; $6606: $07
    ld [$0F20], sp                                ; $6607: $08 $20 $0F
    ld a, [bc]                                    ; $660A: $0A
    nop                                           ; $660B: $00
    nop                                           ; $660C: $00
    ld l, e                                       ; $660D: $6B
    jr @+$15                                      ; $660E: $18 $13

    ld h, [hl]                                    ; $6610: $66
    nop                                           ; $6611: $00
    nop                                           ; $6612: $00
    ld a, [bc]                                    ; $6613: $0A
    dec d                                         ; $6614: $15
    ldh a, [c]                                    ; $6615: $F2
    nop                                           ; $6616: $00
    db $10                                        ; $6617: $10
    ld a, [$2502]                                 ; $6618: $FA $02 $25
    ldh a, [c]                                    ; $661B: $F2
    inc b                                         ; $661C: $04
    jr nz, @-$04                                  ; $661D: $20 $FA

    ld b, $35                                     ; $661F: $06 $35
    ldh a, [c]                                    ; $6621: $F2
    ld [$FA30], sp                                ; $6622: $08 $30 $FA
    ld a, [bc]                                    ; $6625: $0A
    daa                                           ; $6626: $27
    ld [bc], a                                    ; $6627: $02
    inc c                                         ; $6628: $0C
    inc l                                         ; $6629: $2C
    ld a, [bc]                                    ; $662A: $0A
    ld c, $37                                     ; $662B: $0E $37
    ld [bc], a                                    ; $662D: $02
    db $10                                        ; $662E: $10
    inc a                                         ; $662F: $3C
    ld a, [bc]                                    ; $6630: $0A

jr_008_6631:
    ld [de], a                                    ; $6631: $12

jr_008_6632:
    nop                                           ; $6632: $00
    ld bc, $2000                                  ; $6633: $01 $00 $20
    ld c, h                                       ; $6636: $4C
    jr @+$3E                                      ; $6637: $18 $3C

    ld h, [hl]                                    ; $6639: $66
    nop                                           ; $663A: $00
    nop                                           ; $663B: $00
    ld a, [bc]                                    ; $663C: $0A
    inc e                                         ; $663D: $1C
    rst RST_28                                    ; $663E: $EF
    nop                                           ; $663F: $00
    jr nc, jr_008_6631                            ; $6640: $30 $EF

    ld [bc], a                                    ; $6642: $02
    ld e, $F7                                     ; $6643: $1E $F7
    inc b                                         ; $6645: $04
    cpl                                           ; $6646: $2F
    rst RST_30                                    ; $6647: $F7
    ld b, $20                                     ; $6648: $06 $20
    rst RST_38                                    ; $664A: $FF
    ld [$FF30], sp                                ; $664B: $08 $30 $FF
    ld a, [bc]                                    ; $664E: $0A

jr_008_664F:
    ld [hl+], a                                   ; $664F: $22
    rlca                                          ; $6650: $07
    inc c                                         ; $6651: $0C
    ld [hl-], a                                   ; $6652: $32
    rlca                                          ; $6653: $07
    ld c, $28                                     ; $6654: $0E $28
    rrca                                          ; $6656: $0F
    db $10                                        ; $6657: $10
    ld c, $F7                                     ; $6658: $0E $F7
    ld [de], a                                    ; $665A: $12
    nop                                           ; $665B: $00
    ld bc, $6000                                  ; $665C: $01 $00 $60
    ld c, l                                       ; $665F: $4D
    jr @-$7B                                      ; $6660: $18 $83

    ld h, [hl]                                    ; $6662: $66
    nop                                           ; $6663: $00
    nop                                           ; $6664: $00
    jr nz, jr_008_6668                            ; $6665: $20 $01

    nop                                           ; $6667: $00

jr_008_6668:
    ld h, b                                       ; $6668: $60
    ld c, l                                       ; $6669: $4D
    jr jr_008_65EF                                ; $666A: $18 $83

    ld h, [hl]                                    ; $666C: $66

jr_008_666D:
    nop                                           ; $666D: $00
    nop                                           ; $666E: $00
    ld b, b                                       ; $666F: $40
    ld bc, $6000                                  ; $6670: $01 $00 $60
    ld c, l                                       ; $6673: $4D
    jr jr_008_65F9                                ; $6674: $18 $83

    ld h, [hl]                                    ; $6676: $66
    nop                                           ; $6677: $00
    inc bc                                        ; $6678: $03
    ld h, b                                       ; $6679: $60
    ld bc, $6000                                  ; $667A: $01 $00 $60
    ld c, l                                       ; $667D: $4D
    jr @-$7B                                      ; $667E: $18 $83

    ld h, [hl]                                    ; $6680: $66
    nop                                           ; $6681: $00
    inc bc                                        ; $6682: $03
    add hl, bc                                    ; $6683: $09
    jr nz, jr_008_666D                            ; $6684: $20 $E7

    nop                                           ; $6686: $00
    ld hl, $02EF                                  ; $6687: $21 $EF $02
    ld [hl+], a                                   ; $668A: $22
    rst RST_30                                    ; $668B: $F7
    inc b                                         ; $668C: $04
    inc hl                                        ; $668D: $23
    rst RST_38                                    ; $668E: $FF
    ld b, $24                                     ; $668F: $06 $24
    rlca                                          ; $6691: $07
    ld [$EF31], sp                                ; $6692: $08 $31 $EF
    ld a, [bc]                                    ; $6695: $0A
    ld [hl-], a                                   ; $6696: $32
    rst RST_30                                    ; $6697: $F7
    inc c                                         ; $6698: $0C
    inc sp                                        ; $6699: $33
    rst RST_38                                    ; $669A: $FF
    ld c, $34                                     ; $669B: $0E $34
    rlca                                          ; $669D: $07
    stop                                          ; $669E: $10 $00
    ld bc, $8000                                  ; $66A0: $01 $00 $80
    ld c, [hl]                                    ; $66A3: $4E
    jr jr_008_664F                                ; $66A4: $18 $A9

    ld h, [hl]                                    ; $66A6: $66
    nop                                           ; $66A7: $00
    nop                                           ; $66A8: $00
    ld a, [bc]                                    ; $66A9: $0A
    rra                                           ; $66AA: $1F

jr_008_66AB:
    di                                            ; $66AB: $F3
    nop                                           ; $66AC: $00
    cpl                                           ; $66AD: $2F
    di                                            ; $66AE: $F3
    ld [bc], a                                    ; $66AF: $02
    ld e, $FB                                     ; $66B0: $1E $FB
    inc b                                         ; $66B2: $04
    ld l, $FB                                     ; $66B3: $2E $FB

jr_008_66B5:
    ld b, $26                                     ; $66B5: $06 $26
    inc bc                                        ; $66B7: $03
    ld [$0336], sp                                ; $66B8: $08 $36 $03
    ld a, [bc]                                    ; $66BB: $0A
    add hl, hl                                    ; $66BC: $29
    dec bc                                        ; $66BD: $0B
    inc c                                         ; $66BE: $0C
    add hl, sp                                    ; $66BF: $39
    dec bc                                        ; $66C0: $0B
    ld c, $1F                                     ; $66C1: $0E $1F
    db $EB                                        ; $66C3: $EB
    db $10                                        ; $66C4: $10
    ld a, $FB                                     ; $66C5: $3E $FB
    ld [de], a                                    ; $66C7: $12
    nop                                           ; $66C8: $00
    inc e                                         ; $66C9: $1C
    nop                                           ; $66CA: $00
    ret nz                                        ; $66CB: $C0

    ld c, a                                       ; $66CC: $4F
    jr jr_008_66AB                                ; $66CD: $18 $DC

    ld h, [hl]                                    ; $66CF: $66
    db $FD                                        ; $66D0: $FD
    dec de                                        ; $66D1: $1B
    ld h, b                                       ; $66D2: $60
    inc e                                         ; $66D3: $1C
    nop                                           ; $66D4: $00
    ret nz                                        ; $66D5: $C0

    ld c, a                                       ; $66D6: $4F
    jr jr_008_66B5                                ; $66D7: $18 $DC

    ld h, [hl]                                    ; $66D9: $66
    inc bc                                        ; $66DA: $03
    nop                                           ; $66DB: $00
    ld a, [bc]                                    ; $66DC: $0A
    dec bc                                        ; $66DD: $0B
    rst RST_28                                    ; $66DE: $EF
    nop                                           ; $66DF: $00
    ld c, $F7                                     ; $66E0: $0E $F7
    ld [bc], a                                    ; $66E2: $02
    ld d, $FF                                     ; $66E3: $16 $FF
    inc b                                         ; $66E5: $04
    ld d, $07                                     ; $66E6: $16 $07
    ld b, $12                                     ; $66E8: $06 $12
    rrca                                          ; $66EA: $0F
    ld [$EF21], sp                                ; $66EB: $08 $21 $EF
    ld a, [bc]                                    ; $66EE: $0A
    rra                                           ; $66EF: $1F
    rst RST_30                                    ; $66F0: $F7
    inc c                                         ; $66F1: $0C
    ld h, $FF                                     ; $66F2: $26 $FF
    ld c, $26                                     ; $66F4: $0E $26
    rlca                                          ; $66F6: $07

jr_008_66F7:
    db $10                                        ; $66F7: $10
    ld [hl+], a                                   ; $66F8: $22
    rrca                                          ; $66F9: $0F
    ld [de], a                                    ; $66FA: $12
    nop                                           ; $66FB: $00
    inc e                                         ; $66FC: $1C
    nop                                           ; $66FD: $00
    nop                                           ; $66FE: $00
    ld d, c                                       ; $66FF: $51
    jr @+$07                                      ; $6700: $18 $05

jr_008_6702:
    ld h, a                                       ; $6702: $67
    ld a, [$0903]                                 ; $6703: $FA $03 $09
    jr c, jr_008_66F7                             ; $6706: $38 $EF

    nop                                           ; $6708: $00
    jr nc, jr_008_6702                            ; $6709: $30 $F7

    ld [bc], a                                    ; $670B: $02
    ld sp, $04FF                                  ; $670C: $31 $FF $04
    dec l                                         ; $670F: $2D
    rlca                                          ; $6710: $07

jr_008_6711:
    ld b, $29                                     ; $6711: $06 $29
    rrca                                          ; $6713: $0F
    ld [$171E], sp                                ; $6714: $08 $1E $17
    ld a, [bc]                                    ; $6717: $0A

jr_008_6718:
    dec a                                         ; $6718: $3D
    rlca                                          ; $6719: $07
    inc c                                         ; $671A: $0C
    add hl, sp                                    ; $671B: $39
    rrca                                          ; $671C: $0F
    ld c, $41                                     ; $671D: $0E $41
    rst RST_38                                    ; $671F: $FF
    stop                                          ; $6720: $10 $00
    ld b, $93                                     ; $6722: $06 $93
    ret nz                                        ; $6724: $C0

    ld [hl], c                                    ; $6725: $71
    jr jr_008_6753                                ; $6726: $18 $2B

    ld h, a                                       ; $6728: $67
    nop                                           ; $6729: $00
    nop                                           ; $672A: $00
    add hl, bc                                    ; $672B: $09
    rra                                           ; $672C: $1F
    rst RST_18                                    ; $672D: $DF

jr_008_672E:
    nop                                           ; $672E: $00
    jr nz, jr_008_6718                            ; $672F: $20 $E7

    ld [bc], a                                    ; $6731: $02
    jr nz, @-$0F                                  ; $6732: $20 $EF

    inc b                                         ; $6734: $04
    jr nz, jr_008_672E                            ; $6735: $20 $F7

    ld b, $0F                                     ; $6737: $06 $0F
    rst RST_18                                    ; $6739: $DF
    ld [$E710], sp                                ; $673A: $08 $10 $E7
    ld a, [bc]                                    ; $673D: $0A
    db $10                                        ; $673E: $10
    rst RST_28                                    ; $673F: $EF
    inc c                                         ; $6740: $0C

jr_008_6741:
    db $10                                        ; $6741: $10
    rst RST_30                                    ; $6742: $F7
    ld c, $10                                     ; $6743: $0E $10
    rst RST_38                                    ; $6745: $FF

jr_008_6746:
    stop                                          ; $6746: $10 $00
    ldh [$FF72], a                                ; $6748: $E0 $72
    jr @+$51                                      ; $674A: $18 $4F

    ld h, a                                       ; $674C: $67
    nop                                           ; $674D: $00
    nop                                           ; $674E: $00
    inc b                                         ; $674F: $04
    jr nc, jr_008_6746                            ; $6750: $30 $F4

    nop                                           ; $6752: $00

jr_008_6753:
    dec h                                         ; $6753: $25
    db $FC                                        ; $6754: $FC
    ld [bc], a                                    ; $6755: $02
    dec [hl]                                      ; $6756: $35
    db $FC                                        ; $6757: $FC
    inc b                                         ; $6758: $04
    dec hl                                        ; $6759: $2B
    inc b                                         ; $675A: $04

jr_008_675B:
    ld b, $00                                     ; $675B: $06 $00
    ld b, $00                                     ; $675D: $06 $00
    ld h, b                                       ; $675F: $60
    ld [hl], e                                    ; $6760: $73
    jr @+$68                                      ; $6761: $18 $66

    ld h, a                                       ; $6763: $67
    nop                                           ; $6764: $00
    nop                                           ; $6765: $00

jr_008_6766:
    dec b                                         ; $6766: $05
    inc e                                         ; $6767: $1C
    rst RST_20                                    ; $6768: $E7
    nop                                           ; $6769: $00
    jr nz, jr_008_675B                            ; $676A: $20 $EF

    ld [bc], a                                    ; $676C: $02
    jr nz, jr_008_6766                            ; $676D: $20 $F7

jr_008_676F:
    inc b                                         ; $676F: $04
    db $10                                        ; $6770: $10
    rst RST_28                                    ; $6771: $EF
    ld b, $10                                     ; $6772: $06 $10
    rst RST_30                                    ; $6774: $F7
    ld [$0100], sp                                ; $6775: $08 $00 $01
    nop                                           ; $6778: $00
    nop                                           ; $6779: $00
    ld [hl], h                                    ; $677A: $74
    jr @-$74                                      ; $677B: $18 $8A

    ld h, a                                       ; $677D: $67
    ld hl, sp+$00                                 ; $677E: $F8 $00
    nop                                           ; $6780: $00
    ld bc, $0005                                  ; $6781: $01 $05 $00
    ld [hl], h                                    ; $6784: $74
    jr jr_008_6711                                ; $6785: $18 $8A

    ld h, a                                       ; $6787: $67
    ld hl, sp+$00                                 ; $6788: $F8 $00
    dec b                                         ; $678A: $05
    inc e                                         ; $678B: $1C
    rst RST_28                                    ; $678C: $EF
    nop                                           ; $678D: $00
    ld e, $F7                                     ; $678E: $1E $F7
    ld [bc], a                                    ; $6790: $02
    jr nz, @+$01                                  ; $6791: $20 $FF

    inc b                                         ; $6793: $04
    jr nz, jr_008_679D                            ; $6794: $20 $07

    ld b, $1F                                     ; $6796: $06 $1F
    rrca                                          ; $6798: $0F
    ld [$A000], sp                                ; $6799: $08 $00 $A0
    ld [hl], h                                    ; $679C: $74

jr_008_679D:
    jr jr_008_6741                                ; $679D: $18 $A2

    ld h, a                                       ; $679F: $67
    ld hl, sp+$00                                 ; $67A0: $F8 $00
    inc b                                         ; $67A2: $04

jr_008_67A3:
    ld [hl-], a                                   ; $67A3: $32
    rst RST_30                                    ; $67A4: $F7
    nop                                           ; $67A5: $00
    jr nc, @+$01                                  ; $67A6: $30 $FF

    ld [bc], a                                    ; $67A8: $02
    jr nc, @+$09                                  ; $67A9: $30 $07

    inc b                                         ; $67AB: $04
    ld [hl-], a                                   ; $67AC: $32
    rrca                                          ; $67AD: $0F
    ld b, $00                                     ; $67AE: $06 $00
    ld bc, $2000                                  ; $67B0: $01 $00 $20
    ld [hl], l                                    ; $67B3: $75
    jr jr_008_676F                                ; $67B4: $18 $B9

    ld h, a                                       ; $67B6: $67
    ld hl, sp+$00                                 ; $67B7: $F8 $00
    dec b                                         ; $67B9: $05
    ld d, $F0                                     ; $67BA: $16 $F0
    nop                                           ; $67BC: $00
    ld e, $F8                                     ; $67BD: $1E $F8
    ld [bc], a                                    ; $67BF: $02
    jr nz, jr_008_67C2                            ; $67C0: $20 $00

jr_008_67C2:
    inc b                                         ; $67C2: $04
    jr nz, jr_008_67CD                            ; $67C3: $20 $08

    ld b, $1E                                     ; $67C5: $06 $1E
    db $10                                        ; $67C7: $10
    ld [$0100], sp                                ; $67C8: $08 $00 $01
    nop                                           ; $67CB: $00
    ret nz                                        ; $67CC: $C0

jr_008_67CD:
    ld [hl], l                                    ; $67CD: $75
    jr jr_008_67A3                                ; $67CE: $18 $D3

    ld h, a                                       ; $67D0: $67
    or $00                                        ; $67D1: $F6 $00
    ld a, [bc]                                    ; $67D3: $0A
    ld a, [de]                                    ; $67D4: $1A
    ld hl, sp+$00                                 ; $67D5: $F8 $00
    dec de                                        ; $67D7: $1B
    nop                                           ; $67D8: $00
    ld [bc], a                                    ; $67D9: $02
    dec e                                         ; $67DA: $1D
    ld [$1D04], sp                                ; $67DB: $08 $04 $1D
    db $10                                        ; $67DE: $10
    ld b, $1D                                     ; $67DF: $06 $1D
    jr jr_008_67EB                                ; $67E1: $18 $08

    dec l                                         ; $67E3: $2D
    ld a, [$2B0A]                                 ; $67E4: $FA $0A $2B
    ld [bc], a                                    ; $67E7: $02
    inc c                                         ; $67E8: $0C
    dec l                                         ; $67E9: $2D
    ld a, [bc]                                    ; $67EA: $0A

jr_008_67EB:
    ld c, $33                                     ; $67EB: $0E $33
    rrca                                          ; $67ED: $0F
    db $10                                        ; $67EE: $10
    dec c                                         ; $67EF: $0D
    inc d                                         ; $67F0: $14

jr_008_67F1:
    ld [de], a                                    ; $67F1: $12
    nop                                           ; $67F2: $00
    nop                                           ; $67F3: $00
    ld [hl], a                                    ; $67F4: $77
    jr jr_008_67F1                                ; $67F5: $18 $FA

    ld h, a                                       ; $67F7: $67
    ei                                            ; $67F8: $FB
    nop                                           ; $67F9: $00
    inc b                                         ; $67FA: $04
    ld sp, $00F7                                  ; $67FB: $31 $F7 $00
    jr nc, @+$01                                  ; $67FE: $30 $FF

    ld [bc], a                                    ; $6800: $02
    jr nc, @+$09                                  ; $6801: $30 $07

    inc b                                         ; $6803: $04
    ld sp, $060F                                  ; $6804: $31 $0F $06
    nop                                           ; $6807: $00
    ld bc, $8000                                  ; $6808: $01 $00 $80
    ld [hl], a                                    ; $680B: $77
    jr @+$13                                      ; $680C: $18 $11

    ld l, b                                       ; $680E: $68
    ld [bc], a                                    ; $680F: $02
    nop                                           ; $6810: $00
    rlca                                          ; $6811: $07
    ld hl, $00EF                                  ; $6812: $21 $EF $00

jr_008_6815:
    ld sp, $02F0                                  ; $6815: $31 $F0 $02
    ld hl, $04F7                                  ; $6818: $21 $F7 $04
    ld sp, $06F8                                  ; $681B: $31 $F8 $06
    ld hl, $08FF                                  ; $681E: $21 $FF $08
    ld sp, $0A00                                  ; $6821: $31 $00 $0A
    inc h                                         ; $6824: $24
    rlca                                          ; $6825: $07
    inc c                                         ; $6826: $0C
    nop                                           ; $6827: $00
    ld bc, $6000                                  ; $6828: $01 $00 $60
    ld a, b                                       ; $682B: $78
    jr @+$33                                      ; $682C: $18 $31

    ld l, b                                       ; $682E: $68
    nop                                           ; $682F: $00
    nop                                           ; $6830: $00

jr_008_6831:
    ld [$EB16], sp                                ; $6831: $08 $16 $EB
    nop                                           ; $6834: $00
    dec de                                        ; $6835: $1B
    rst RST_28                                    ; $6836: $EF
    ld [bc], a                                    ; $6837: $02
    jr nz, jr_008_6831                            ; $6838: $20 $F7

    inc b                                         ; $683A: $04
    jr nz, @+$01                                  ; $683B: $20 $FF

    ld b, $1C                                     ; $683D: $06 $1C
    rlca                                          ; $683F: $07
    ld [$F710], sp                                ; $6840: $08 $10 $F7
    ld a, [bc]                                    ; $6843: $0A
    db $10                                        ; $6844: $10
    rst RST_38                                    ; $6845: $FF
    inc c                                         ; $6846: $0C
    inc c                                         ; $6847: $0C
    rlca                                          ; $6848: $07
    ld c, $00                                     ; $6849: $0E $00

jr_008_684B:
    ld h, b                                       ; $684B: $60
    ld a, c                                       ; $684C: $79
    jr jr_008_68A1                                ; $684D: $18 $52

    ld l, b                                       ; $684F: $68
    nop                                           ; $6850: $00
    nop                                           ; $6851: $00
    inc b                                         ; $6852: $04
    jr nc, jr_008_684B                            ; $6853: $30 $F6

    nop                                           ; $6855: $00
    jr nc, jr_008_6859                            ; $6856: $30 $01

    ld [bc], a                                    ; $6858: $02

jr_008_6859:
    dec [hl]                                      ; $6859: $35
    xor $04                                       ; $685A: $EE $04
    dec [hl]                                      ; $685C: $35
    add hl, bc                                    ; $685D: $09
    ld b, $00                                     ; $685E: $06 $00
    ld bc, $E000                                  ; $6860: $01 $00 $E0
    ld a, c                                       ; $6863: $79
    jr jr_008_68CF                                ; $6864: $18 $69

    ld l, b                                       ; $6866: $68
    nop                                           ; $6867: $00
    nop                                           ; $6868: $00

jr_008_6869:
    ld [$EF1C], sp                                ; $6869: $08 $1C $EF
    nop                                           ; $686C: $00
    rla                                           ; $686D: $17
    db $EB                                        ; $686E: $EB
    ld [bc], a                                    ; $686F: $02
    jr nz, jr_008_6869                            ; $6870: $20 $F7

    inc b                                         ; $6872: $04

jr_008_6873:
    jr nz, @+$01                                  ; $6873: $20 $FF

    ld b, $1D                                     ; $6875: $06 $1D
    rlca                                          ; $6877: $07
    ld [$F710], sp                                ; $6878: $08 $10 $F7
    ld a, [bc]                                    ; $687B: $0A
    db $10                                        ; $687C: $10
    rst RST_38                                    ; $687D: $FF
    inc c                                         ; $687E: $0C
    dec c                                         ; $687F: $0D
    rlca                                          ; $6880: $07
    ld c, $00                                     ; $6881: $0E $00

jr_008_6883:
    inc c                                         ; $6883: $0C
    nop                                           ; $6884: $00
    ldh [$FF7A], a                                ; $6885: $E0 $7A
    jr jr_008_6815                                ; $6887: $18 $8C

    ld l, b                                       ; $6889: $68
    ld sp, hl                                     ; $688A: $F9
    nop                                           ; $688B: $00
    ld [bc], a                                    ; $688C: $02
    jr jr_008_688F                                ; $688D: $18 $00

jr_008_688F:
    nop                                           ; $688F: $00
    inc d                                         ; $6890: $14
    ld hl, sp+$02                                 ; $6891: $F8 $02
    nop                                           ; $6893: $00
    jr nz, jr_008_6911                            ; $6894: $20 $7B

    jr @-$63                                      ; $6896: $18 $9B

    ld l, b                                       ; $6898: $68
    ld sp, hl                                     ; $6899: $F9
    nop                                           ; $689A: $00
    rlca                                          ; $689B: $07
    ld [hl-], a                                   ; $689C: $32
    rst RST_30                                    ; $689D: $F7
    nop                                           ; $689E: $00
    jr z, @+$01                                   ; $689F: $28 $FF

jr_008_68A1:
    ld [bc], a                                    ; $68A1: $02
    daa                                           ; $68A2: $27
    rlca                                          ; $68A3: $07
    inc b                                         ; $68A4: $04
    jr nc, jr_008_68B6                            ; $68A5: $30 $0F

    ld b, $38                                     ; $68A7: $06 $38
    rst RST_38                                    ; $68A9: $FF
    ld [$0737], sp                                ; $68AA: $08 $37 $07
    ld a, [bc]                                    ; $68AD: $0A
    scf                                           ; $68AE: $37
    rst RST_28                                    ; $68AF: $EF
    inc c                                         ; $68B0: $0C
    nop                                           ; $68B1: $00
    inc c                                         ; $68B2: $0C
    nop                                           ; $68B3: $00
    nop                                           ; $68B4: $00
    ld a, h                                       ; $68B5: $7C

jr_008_68B6:
    jr jr_008_6873                                ; $68B6: $18 $BB

    ld l, b                                       ; $68B8: $68
    ld sp, hl                                     ; $68B9: $F9
    nop                                           ; $68BA: $00
    ld [bc], a                                    ; $68BB: $02
    jr @+$01                                      ; $68BC: $18 $FF

    nop                                           ; $68BE: $00
    ld de, $02F7                                  ; $68BF: $11 $F7 $02
    nop                                           ; $68C2: $00
    ld bc, $4002                                  ; $68C3: $01 $02 $40
    ld a, h                                       ; $68C6: $7C
    jr @-$32                                      ; $68C7: $18 $CC

    ld l, b                                       ; $68C9: $68
    nop                                           ; $68CA: $00
    nop                                           ; $68CB: $00
    dec c                                         ; $68CC: $0D
    ld a, [de]                                    ; $68CD: $1A
    rst RST_20                                    ; $68CE: $E7

jr_008_68CF:
    nop                                           ; $68CF: $00
    ld a, [hl+]                                   ; $68D0: $2A
    rst RST_20                                    ; $68D1: $E7
    ld [bc], a                                    ; $68D2: $02
    dec e                                         ; $68D3: $1D
    rst RST_28                                    ; $68D4: $EF
    inc b                                         ; $68D5: $04
    dec l                                         ; $68D6: $2D
    rst RST_28                                    ; $68D7: $EF
    ld b, $1A                                     ; $68D8: $06 $1A
    rst RST_30                                    ; $68DA: $F7
    ld [$F72A], sp                                ; $68DB: $08 $2A $F7
    ld a, [bc]                                    ; $68DE: $0A
    ld a, [hl-]                                   ; $68DF: $3A
    rst RST_30                                    ; $68E0: $F7
    inc c                                         ; $68E1: $0C
    jr nz, @+$01                                  ; $68E2: $20 $FF

    ld c, $30                                     ; $68E4: $0E $30
    rst RST_38                                    ; $68E6: $FF
    db $10                                        ; $68E7: $10
    ld hl, $1207                                  ; $68E8: $21 $07 $12
    ld sp, $1407                                  ; $68EB: $31 $07 $14
    ld sp, $160F                                  ; $68EE: $31 $0F $16
    dec c                                         ; $68F1: $0D
    rst RST_28                                    ; $68F2: $EF
    jr jr_008_6883                                ; $68F3: $18 $8E

    ld l, e                                       ; $68F5: $6B
    push bc                                       ; $68F6: $C5
    ld l, e                                       ; $68F7: $6B
    reti                                          ; $68F8: $D9


    ld l, e                                       ; $68F9: $6B
    rst RST_38                                    ; $68FA: $FF
    rst RST_38                                    ; $68FB: $FF
    add hl, bc                                    ; $68FC: $09
    ld l, h                                       ; $68FD: $6C
    rst RST_38                                    ; $68FE: $FF
    rst RST_38                                    ; $68FF: $FF
    reti                                          ; $6900: $D9


    ld l, e                                       ; $6901: $6B
    rst RST_38                                    ; $6902: $FF
    rst RST_38                                    ; $6903: $FF
    rst RST_38                                    ; $6904: $FF
    rst RST_38                                    ; $6905: $FF
    ld [hl], $6C                                  ; $6906: $36 $6C
    rst RST_38                                    ; $6908: $FF
    rst RST_38                                    ; $6909: $FF
    ld e, a                                       ; $690A: $5F
    ld l, h                                       ; $690B: $6C
    rst RST_38                                    ; $690C: $FF
    rst RST_38                                    ; $690D: $FF
    adc b                                         ; $690E: $88
    ld l, h                                       ; $690F: $6C
    rst RST_38                                    ; $6910: $FF

jr_008_6911:
    rst RST_38                                    ; $6911: $FF
    ld e, a                                       ; $6912: $5F
    ld l, h                                       ; $6913: $6C
    rst RST_38                                    ; $6914: $FF
    rst RST_38                                    ; $6915: $FF
    rst RST_38                                    ; $6916: $FF
    rst RST_38                                    ; $6917: $FF
    ld e, a                                       ; $6918: $5F
    ld l, h                                       ; $6919: $6C
    rst RST_38                                    ; $691A: $FF
    rst RST_38                                    ; $691B: $FF
    adc b                                         ; $691C: $88
    ld l, h                                       ; $691D: $6C
    rst RST_38                                    ; $691E: $FF
    rst RST_38                                    ; $691F: $FF
    ld e, a                                       ; $6920: $5F
    ld l, h                                       ; $6921: $6C
    rst RST_38                                    ; $6922: $FF
    rst RST_38                                    ; $6923: $FF
    ld [hl], $6C                                  ; $6924: $36 $6C
    rst RST_38                                    ; $6926: $FF
    rst RST_38                                    ; $6927: $FF
    rst RST_38                                    ; $6928: $FF
    rst RST_38                                    ; $6929: $FF
    sub e                                         ; $692A: $93
    ld l, [hl]                                    ; $692B: $6E
    rst RST_38                                    ; $692C: $FF
    rst RST_38                                    ; $692D: $FF
    rst RST_38                                    ; $692E: $FF
    rst RST_38                                    ; $692F: $FF
    or c                                          ; $6930: $B1
    ld l, h                                       ; $6931: $6C
    push bc                                       ; $6932: $C5
    ld l, e                                       ; $6933: $6B
    call nc, $C56C                                ; $6934: $D4 $6C $C5
    ld l, e                                       ; $6937: $6B
    or c                                          ; $6938: $B1
    ld l, h                                       ; $6939: $6C
    push bc                                       ; $693A: $C5
    ld l, e                                       ; $693B: $6B
    dec b                                         ; $693C: $05
    ld l, a                                       ; $693D: $6F
    rra                                           ; $693E: $1F
    ld l, a                                       ; $693F: $6F
    scf                                           ; $6940: $37
    ld l, a                                       ; $6941: $6F
    rra                                           ; $6942: $1F
    ld l, a                                       ; $6943: $6F
    ld d, a                                       ; $6944: $57
    ld l, a                                       ; $6945: $6F
    rra                                           ; $6946: $1F
    ld l, a                                       ; $6947: $6F
    rst RST_38                                    ; $6948: $FF
    rst RST_38                                    ; $6949: $FF
    ld a, [de]                                    ; $694A: $1A
    ld [hl], c                                    ; $694B: $71
    rst RST_38                                    ; $694C: $FF
    rst RST_38                                    ; $694D: $FF
    adc [hl]                                      ; $694E: $8E
    ld l, e                                       ; $694F: $6B
    push bc                                       ; $6950: $C5
    ld l, e                                       ; $6951: $6B
    rst RST_38                                    ; $6952: $FF
    rst RST_38                                    ; $6953: $FF
    rst RST_30                                    ; $6954: $F7
    ld l, h                                       ; $6955: $6C
    dec bc                                        ; $6956: $0B
    ld l, l                                       ; $6957: $6D
    add hl, hl                                    ; $6958: $29
    ld l, l                                       ; $6959: $6D
    dec bc                                        ; $695A: $0B
    ld l, l                                       ; $695B: $6D
    rst RST_38                                    ; $695C: $FF
    rst RST_38                                    ; $695D: $FF
    dec a                                         ; $695E: $3D
    ld l, l                                       ; $695F: $6D
    dec bc                                        ; $6960: $0B
    ld l, l                                       ; $6961: $6D
    ld d, h                                       ; $6962: $54
    ld l, l                                       ; $6963: $6D
    dec bc                                        ; $6964: $0B
    ld l, l                                       ; $6965: $6D
    rst RST_38                                    ; $6966: $FF
    rst RST_38                                    ; $6967: $FF
    ld l, e                                       ; $6968: $6B
    ld l, l                                       ; $6969: $6D
    adc b                                         ; $696A: $88
    ld l, l                                       ; $696B: $6D
    and b                                         ; $696C: $A0
    ld l, l                                       ; $696D: $6D
    rst RST_38                                    ; $696E: $FF
    rst RST_38                                    ; $696F: $FF
    ret                                           ; $6970: $C9


    ld l, l                                       ; $6971: $6D
    adc b                                         ; $6972: $88
    ld l, l                                       ; $6973: $6D
    rst RST_38                                    ; $6974: $FF
    rst RST_38                                    ; $6975: $FF
    and $6D                                       ; $6976: $E6 $6D
    ld a, [bc]                                    ; $6978: $0A
    ld l, [hl]                                    ; $6979: $6E
    ldh a, [$FF6D]                                ; $697A: $F0 $6D
    rra                                           ; $697C: $1F
    ld l, [hl]                                    ; $697D: $6E
    and $6D                                       ; $697E: $E6 $6D
    scf                                           ; $6980: $37
    ld l, [hl]                                    ; $6981: $6E
    rst RST_38                                    ; $6982: $FF
    rst RST_38                                    ; $6983: $FF
    ld sp, hl                                     ; $6984: $F9
    ld l, a                                       ; $6985: $6F
    rst RST_38                                    ; $6986: $FF
    rst RST_38                                    ; $6987: $FF
    ld c, h                                       ; $6988: $4C
    ld l, [hl]                                    ; $6989: $6E
    ld h, [hl]                                    ; $698A: $66
    ld l, [hl]                                    ; $698B: $6E
    ld c, h                                       ; $698C: $4C
    ld l, [hl]                                    ; $698D: $6E
    ld a, [hl]                                    ; $698E: $7E
    ld l, [hl]                                    ; $698F: $6E
    rst RST_38                                    ; $6990: $FF
    rst RST_38                                    ; $6991: $FF
    sub e                                         ; $6992: $93
    ld l, [hl]                                    ; $6993: $6E
    rst RST_38                                    ; $6994: $FF
    rst RST_38                                    ; $6995: $FF
    or [hl]                                       ; $6996: $B6
    ld l, [hl]                                    ; $6997: $6E
    db $D3                                        ; $6998: $D3
    ld l, [hl]                                    ; $6999: $6E
    ldh [c], a                                    ; $699A: $E2
    ld l, [hl]                                    ; $699B: $6E
    db $D3                                        ; $699C: $D3
    ld l, [hl]                                    ; $699D: $6E
    or [hl]                                       ; $699E: $B6
    ld l, [hl]                                    ; $699F: $6E
    db $D3                                        ; $69A0: $D3
    ld l, [hl]                                    ; $69A1: $6E
    rst RST_38                                    ; $69A2: $FF
    rst RST_38                                    ; $69A3: $FF
    dec b                                         ; $69A4: $05
    ld l, a                                       ; $69A5: $6F
    rra                                           ; $69A6: $1F
    ld l, a                                       ; $69A7: $6F
    scf                                           ; $69A8: $37
    ld l, a                                       ; $69A9: $6F
    rra                                           ; $69AA: $1F
    ld l, a                                       ; $69AB: $6F
    ld d, a                                       ; $69AC: $57
    ld l, a                                       ; $69AD: $6F
    rra                                           ; $69AE: $1F
    ld l, a                                       ; $69AF: $6F
    or c                                          ; $69B0: $B1
    ld l, h                                       ; $69B1: $6C
    push bc                                       ; $69B2: $C5
    ld l, e                                       ; $69B3: $6B
    rst RST_38                                    ; $69B4: $FF
    rst RST_38                                    ; $69B5: $FF
    ld sp, hl                                     ; $69B6: $F9
    ld l, a                                       ; $69B7: $6F
    rst RST_38                                    ; $69B8: $FF
    rst RST_38                                    ; $69B9: $FF
    ld [hl], c                                    ; $69BA: $71
    ld l, a                                       ; $69BB: $6F
    rst RST_38                                    ; $69BC: $FF
    rst RST_38                                    ; $69BD: $FF
    ld a, [de]                                    ; $69BE: $1A
    ld [hl], c                                    ; $69BF: $71
    rst RST_38                                    ; $69C0: $FF
    rst RST_38                                    ; $69C1: $FF
    adc [hl]                                      ; $69C2: $8E
    ld l, e                                       ; $69C3: $6B
    push bc                                       ; $69C4: $C5
    ld l, e                                       ; $69C5: $6B
    rst RST_38                                    ; $69C6: $FF
    rst RST_38                                    ; $69C7: $FF
    ld a, [de]                                    ; $69C8: $1A
    ld [hl], c                                    ; $69C9: $71
    rst RST_38                                    ; $69CA: $FF
    rst RST_38                                    ; $69CB: $FF
    add l                                         ; $69CC: $85
    ld [hl], b                                    ; $69CD: $70
    rst RST_38                                    ; $69CE: $FF
    rst RST_38                                    ; $69CF: $FF
    ld sp, hl                                     ; $69D0: $F9
    ld l, a                                       ; $69D1: $6F
    rst RST_38                                    ; $69D2: $FF
    rst RST_38                                    ; $69D3: $FF
    adc [hl]                                      ; $69D4: $8E
    ld l, e                                       ; $69D5: $6B
    push bc                                       ; $69D6: $C5
    ld l, e                                       ; $69D7: $6B
    rst RST_38                                    ; $69D8: $FF
    rst RST_38                                    ; $69D9: $FF
    adc [hl]                                      ; $69DA: $8E
    ld l, e                                       ; $69DB: $6B
    push bc                                       ; $69DC: $C5
    ld l, e                                       ; $69DD: $6B
    and h                                         ; $69DE: $A4
    ld l, a                                       ; $69DF: $6F
    rst RST_38                                    ; $69E0: $FF
    rst RST_38                                    ; $69E1: $FF
    rst RST_38                                    ; $69E2: $FF
    rst RST_38                                    ; $69E3: $FF
    ld sp, hl                                     ; $69E4: $F9
    ld l, a                                       ; $69E5: $6F
    rst RST_38                                    ; $69E6: $FF
    rst RST_38                                    ; $69E7: $FF
    jp z, $FF6F                                   ; $69E8: $CA $6F $FF

    rst RST_38                                    ; $69EB: $FF
    or c                                          ; $69EC: $B1
    ld l, h                                       ; $69ED: $6C
    push bc                                       ; $69EE: $C5
    ld l, e                                       ; $69EF: $6B
    rst RST_38                                    ; $69F0: $FF
    rst RST_38                                    ; $69F1: $FF
    reti                                          ; $69F2: $D9


    ld l, e                                       ; $69F3: $6B
    rst RST_38                                    ; $69F4: $FF
    rst RST_38                                    ; $69F5: $FF
    rst RST_38                                    ; $69F6: $FF
    rst RST_38                                    ; $69F7: $FF
    ld sp, hl                                     ; $69F8: $F9
    ld l, a                                       ; $69F9: $6F
    rst RST_38                                    ; $69FA: $FF
    rst RST_38                                    ; $69FB: $FF
    call nc, $C56C                                ; $69FC: $D4 $6C $C5
    ld l, e                                       ; $69FF: $6B
    dec b                                         ; $6A00: $05
    ld l, a                                       ; $6A01: $6F
    rra                                           ; $6A02: $1F
    ld l, a                                       ; $6A03: $6F
    scf                                           ; $6A04: $37
    ld l, a                                       ; $6A05: $6F
    rra                                           ; $6A06: $1F
    ld l, a                                       ; $6A07: $6F
    ld d, a                                       ; $6A08: $57
    ld l, a                                       ; $6A09: $6F
    rra                                           ; $6A0A: $1F
    ld l, a                                       ; $6A0B: $6F
    dec b                                         ; $6A0C: $05
    ld l, a                                       ; $6A0D: $6F
    rra                                           ; $6A0E: $1F
    ld l, a                                       ; $6A0F: $6F
    scf                                           ; $6A10: $37
    ld l, a                                       ; $6A11: $6F
    rra                                           ; $6A12: $1F
    ld l, a                                       ; $6A13: $6F
    ld d, a                                       ; $6A14: $57
    ld l, a                                       ; $6A15: $6F
    rra                                           ; $6A16: $1F
    ld l, a                                       ; $6A17: $6F
    dec b                                         ; $6A18: $05
    ld l, a                                       ; $6A19: $6F
    rra                                           ; $6A1A: $1F
    ld l, a                                       ; $6A1B: $6F
    scf                                           ; $6A1C: $37
    ld l, a                                       ; $6A1D: $6F
    rra                                           ; $6A1E: $1F
    ld l, a                                       ; $6A1F: $6F
    ld d, a                                       ; $6A20: $57
    ld l, a                                       ; $6A21: $6F
    rra                                           ; $6A22: $1F
    ld l, a                                       ; $6A23: $6F
    rst RST_38                                    ; $6A24: $FF
    rst RST_38                                    ; $6A25: $FF
    ld sp, hl                                     ; $6A26: $F9
    ld l, a                                       ; $6A27: $6F
    rst RST_38                                    ; $6A28: $FF
    rst RST_38                                    ; $6A29: $FF
    rst RST_38                                    ; $6A2A: $FF
    rst RST_38                                    ; $6A2B: $FF
    dec a                                         ; $6A2C: $3D
    ld [hl], b                                    ; $6A2D: $70
    rst RST_38                                    ; $6A2E: $FF
    rst RST_38                                    ; $6A2F: $FF
    rst RST_38                                    ; $6A30: $FF
    rst RST_38                                    ; $6A31: $FF
    adc [hl]                                      ; $6A32: $8E
    ld l, e                                       ; $6A33: $6B
    push bc                                       ; $6A34: $C5
    ld l, e                                       ; $6A35: $6B
    ld sp, hl                                     ; $6A36: $F9
    ld l, a                                       ; $6A37: $6F
    rst RST_38                                    ; $6A38: $FF
    rst RST_38                                    ; $6A39: $FF
    ld sp, hl                                     ; $6A3A: $F9
    ld l, a                                       ; $6A3B: $6F
    rst RST_38                                    ; $6A3C: $FF
    rst RST_38                                    ; $6A3D: $FF
    rst RST_38                                    ; $6A3E: $FF
    rst RST_38                                    ; $6A3F: $FF
    ld sp, hl                                     ; $6A40: $F9
    ld l, a                                       ; $6A41: $6F
    rst RST_38                                    ; $6A42: $FF
    rst RST_38                                    ; $6A43: $FF
    rst RST_38                                    ; $6A44: $FF
    rst RST_38                                    ; $6A45: $FF
    ld sp, hl                                     ; $6A46: $F9
    ld l, a                                       ; $6A47: $6F
    rst RST_38                                    ; $6A48: $FF
    rst RST_38                                    ; $6A49: $FF
    rst RST_38                                    ; $6A4A: $FF
    rst RST_38                                    ; $6A4B: $FF
    dec a                                         ; $6A4C: $3D
    ld [hl], b                                    ; $6A4D: $70
    rst RST_38                                    ; $6A4E: $FF
    rst RST_38                                    ; $6A4F: $FF
    ld sp, hl                                     ; $6A50: $F9
    ld l, a                                       ; $6A51: $6F
    rst RST_38                                    ; $6A52: $FF
    rst RST_38                                    ; $6A53: $FF
    ld sp, hl                                     ; $6A54: $F9
    ld l, a                                       ; $6A55: $6F
    rst RST_38                                    ; $6A56: $FF
    rst RST_38                                    ; $6A57: $FF
    ld sp, hl                                     ; $6A58: $F9
    ld l, a                                       ; $6A59: $6F
    rst RST_38                                    ; $6A5A: $FF
    rst RST_38                                    ; $6A5B: $FF
    ld sp, hl                                     ; $6A5C: $F9
    ld l, a                                       ; $6A5D: $6F
    rst RST_38                                    ; $6A5E: $FF
    rst RST_38                                    ; $6A5F: $FF
    ld sp, hl                                     ; $6A60: $F9
    ld l, a                                       ; $6A61: $6F
    rst RST_38                                    ; $6A62: $FF
    rst RST_38                                    ; $6A63: $FF
    adc [hl]                                      ; $6A64: $8E
    ld l, e                                       ; $6A65: $6B
    push bc                                       ; $6A66: $C5
    ld l, e                                       ; $6A67: $6B
    rst RST_38                                    ; $6A68: $FF
    rst RST_38                                    ; $6A69: $FF
    dec a                                         ; $6A6A: $3D
    ld [hl], b                                    ; $6A6B: $70
    rst RST_38                                    ; $6A6C: $FF
    rst RST_38                                    ; $6A6D: $FF
    rla                                           ; $6A6E: $17
    ld [hl], b                                    ; $6A6F: $70
    rst RST_38                                    ; $6A70: $FF
    rst RST_38                                    ; $6A71: $FF
    and d                                         ; $6A72: $A2
    ld l, e                                       ; $6A73: $6B
    call $176B                                    ; $6A74: $CD $6B $17
    ld [hl], b                                    ; $6A77: $70
    rst RST_38                                    ; $6A78: $FF
    rst RST_38                                    ; $6A79: $FF
    and d                                         ; $6A7A: $A2
    ld l, e                                       ; $6A7B: $6B
    call $FF6B                                    ; $6A7C: $CD $6B $FF
    rst RST_38                                    ; $6A7F: $FF
    dec a                                         ; $6A80: $3D
    ld [hl], b                                    ; $6A81: $70
    rst RST_38                                    ; $6A82: $FF
    rst RST_38                                    ; $6A83: $FF
    ld d, c                                       ; $6A84: $51
    ld [hl], b                                    ; $6A85: $70
    rst RST_38                                    ; $6A86: $FF
    rst RST_38                                    ; $6A87: $FF
    ld e, e                                       ; $6A88: $5B
    ld [hl], b                                    ; $6A89: $70
    rst RST_38                                    ; $6A8A: $FF
    rst RST_38                                    ; $6A8B: $FF
    ld h, l                                       ; $6A8C: $65
    ld [hl], b                                    ; $6A8D: $70
    rst RST_38                                    ; $6A8E: $FF
    rst RST_38                                    ; $6A8F: $FF
    ld h, l                                       ; $6A90: $65
    ld [hl], b                                    ; $6A91: $70
    rst RST_38                                    ; $6A92: $FF
    rst RST_38                                    ; $6A93: $FF
    rla                                           ; $6A94: $17
    ld [hl], b                                    ; $6A95: $70
    rst RST_38                                    ; $6A96: $FF
    rst RST_38                                    ; $6A97: $FF
    and d                                         ; $6A98: $A2
    ld l, e                                       ; $6A99: $6B
    call $FF6B                                    ; $6A9A: $CD $6B $FF
    rst RST_38                                    ; $6A9D: $FF
    dec a                                         ; $6A9E: $3D
    ld [hl], b                                    ; $6A9F: $70
    rst RST_38                                    ; $6AA0: $FF
    rst RST_38                                    ; $6AA1: $FF
    rla                                           ; $6AA2: $17
    ld [hl], b                                    ; $6AA3: $70
    rst RST_38                                    ; $6AA4: $FF
    rst RST_38                                    ; $6AA5: $FF
    and d                                         ; $6AA6: $A2
    ld l, e                                       ; $6AA7: $6B
    call $FF6B                                    ; $6AA8: $CD $6B $FF
    rst RST_38                                    ; $6AAB: $FF
    ld h, l                                       ; $6AAC: $65
    ld [hl], b                                    ; $6AAD: $70
    rst RST_38                                    ; $6AAE: $FF
    rst RST_38                                    ; $6AAF: $FF
    rst RST_38                                    ; $6AB0: $FF
    rst RST_38                                    ; $6AB1: $FF
    dec a                                         ; $6AB2: $3D
    ld [hl], b                                    ; $6AB3: $70
    rst RST_38                                    ; $6AB4: $FF
    rst RST_38                                    ; $6AB5: $FF
    adc [hl]                                      ; $6AB6: $8E
    ld l, e                                       ; $6AB7: $6B
    push bc                                       ; $6AB8: $C5
    ld l, e                                       ; $6AB9: $6B
    rst RST_38                                    ; $6ABA: $FF
    rst RST_38                                    ; $6ABB: $FF
    adc [hl]                                      ; $6ABC: $8E
    ld l, e                                       ; $6ABD: $6B
    push bc                                       ; $6ABE: $C5
    ld l, e                                       ; $6ABF: $6B
    ld l, e                                       ; $6AC0: $6B
    ld l, l                                       ; $6AC1: $6D
    adc b                                         ; $6AC2: $88
    ld l, l                                       ; $6AC3: $6D
    and b                                         ; $6AC4: $A0
    ld l, l                                       ; $6AC5: $6D
    rst RST_38                                    ; $6AC6: $FF
    rst RST_38                                    ; $6AC7: $FF
    ret                                           ; $6AC8: $C9


    ld l, l                                       ; $6AC9: $6D
    adc b                                         ; $6ACA: $88
    ld l, l                                       ; $6ACB: $6D
    call nc, $C56C                                ; $6ACC: $D4 $6C $C5
    ld l, e                                       ; $6ACF: $6B
    dec b                                         ; $6AD0: $05
    ld l, a                                       ; $6AD1: $6F
    rra                                           ; $6AD2: $1F
    ld l, a                                       ; $6AD3: $6F
    scf                                           ; $6AD4: $37
    ld l, a                                       ; $6AD5: $6F
    rra                                           ; $6AD6: $1F
    ld l, a                                       ; $6AD7: $6F
    ld d, a                                       ; $6AD8: $57
    ld l, a                                       ; $6AD9: $6F
    rra                                           ; $6ADA: $1F
    ld l, a                                       ; $6ADB: $6F
    or c                                          ; $6ADC: $B1
    ld l, h                                       ; $6ADD: $6C
    push bc                                       ; $6ADE: $C5
    ld l, e                                       ; $6ADF: $6B
    adc [hl]                                      ; $6AE0: $8E
    ld l, e                                       ; $6AE1: $6B
    push bc                                       ; $6AE2: $C5
    ld l, e                                       ; $6AE3: $6B
    rst RST_38                                    ; $6AE4: $FF
    rst RST_38                                    ; $6AE5: $FF
    ld [hl], $6C                                  ; $6AE6: $36 $6C
    rst RST_38                                    ; $6AE8: $FF
    rst RST_38                                    ; $6AE9: $FF
    add l                                         ; $6AEA: $85
    ld [hl], b                                    ; $6AEB: $70
    rst RST_38                                    ; $6AEC: $FF
    rst RST_38                                    ; $6AED: $FF
    adc [hl]                                      ; $6AEE: $8E
    ld l, e                                       ; $6AEF: $6B
    push bc                                       ; $6AF0: $C5
    ld l, e                                       ; $6AF1: $6B
    reti                                          ; $6AF2: $D9


    ld l, e                                       ; $6AF3: $6B
    rst RST_38                                    ; $6AF4: $FF
    rst RST_38                                    ; $6AF5: $FF
    add hl, bc                                    ; $6AF6: $09
    ld l, h                                       ; $6AF7: $6C
    rst RST_38                                    ; $6AF8: $FF
    rst RST_38                                    ; $6AF9: $FF
    rst RST_38                                    ; $6AFA: $FF
    rst RST_38                                    ; $6AFB: $FF
    xor e                                         ; $6AFC: $AB
    ld [hl], b                                    ; $6AFD: $70
    rst RST_38                                    ; $6AFE: $FF
    rst RST_38                                    ; $6AFF: $FF
    adc $70                                       ; $6B00: $CE $70
    rst RST_38                                    ; $6B02: $FF
    rst RST_38                                    ; $6B03: $FF
    add hl, bc                                    ; $6B04: $09
    ld l, h                                       ; $6B05: $6C
    rst RST_38                                    ; $6B06: $FF
    rst RST_38                                    ; $6B07: $FF
    db $F4                                        ; $6B08: $F4
    ld [hl], b                                    ; $6B09: $70
    rst RST_38                                    ; $6B0A: $FF
    rst RST_38                                    ; $6B0B: $FF
    reti                                          ; $6B0C: $D9


    ld l, e                                       ; $6B0D: $6B
    rst RST_38                                    ; $6B0E: $FF
    rst RST_38                                    ; $6B0F: $FF
    rst RST_38                                    ; $6B10: $FF
    rst RST_38                                    ; $6B11: $FF
    ld sp, hl                                     ; $6B12: $F9
    ld l, a                                       ; $6B13: $6F
    rst RST_38                                    ; $6B14: $FF
    rst RST_38                                    ; $6B15: $FF
    ld a, e                                       ; $6B16: $7B
    ld l, a                                       ; $6B17: $6F
    rst RST_38                                    ; $6B18: $FF
    rst RST_38                                    ; $6B19: $FF
    ld b, a                                       ; $6B1A: $47
    ld [hl], b                                    ; $6B1B: $70
    rst RST_38                                    ; $6B1C: $FF
    rst RST_38                                    ; $6B1D: $FF
    sbc b                                         ; $6B1E: $98
    ld l, e                                       ; $6B1F: $6B
    push bc                                       ; $6B20: $C5
    ld l, e                                       ; $6B21: $6B
    db $E3                                        ; $6B22: $E3
    ld l, e                                       ; $6B23: $6B
    rst RST_38                                    ; $6B24: $FF
    rst RST_38                                    ; $6B25: $FF
    inc de                                        ; $6B26: $13
    ld l, h                                       ; $6B27: $6C
    rst RST_38                                    ; $6B28: $FF
    rst RST_38                                    ; $6B29: $FF
    db $E3                                        ; $6B2A: $E3
    ld l, e                                       ; $6B2B: $6B
    rst RST_38                                    ; $6B2C: $FF
    rst RST_38                                    ; $6B2D: $FF
    inc h                                         ; $6B2E: $24
    ld [hl], c                                    ; $6B2F: $71
    rst RST_38                                    ; $6B30: $FF
    rst RST_38                                    ; $6B31: $FF
    adc [hl]                                      ; $6B32: $8E
    ld l, e                                       ; $6B33: $6B
    push bc                                       ; $6B34: $C5
    ld l, e                                       ; $6B35: $6B
    adc [hl]                                      ; $6B36: $8E
    ld l, e                                       ; $6B37: $6B
    push bc                                       ; $6B38: $C5
    ld l, e                                       ; $6B39: $6B
    rst RST_38                                    ; $6B3A: $FF
    rst RST_38                                    ; $6B3B: $FF
    adc [hl]                                      ; $6B3C: $8E
    ld l, e                                       ; $6B3D: $6B
    push bc                                       ; $6B3E: $C5
    ld l, e                                       ; $6B3F: $6B
    ld l, e                                       ; $6B40: $6B
    ld l, l                                       ; $6B41: $6D
    adc b                                         ; $6B42: $88
    ld l, l                                       ; $6B43: $6D
    adc [hl]                                      ; $6B44: $8E
    ld l, e                                       ; $6B45: $6B
    push bc                                       ; $6B46: $C5
    ld l, e                                       ; $6B47: $6B
    ld sp, hl                                     ; $6B48: $F9
    ld l, a                                       ; $6B49: $6F
    rst RST_38                                    ; $6B4A: $FF
    rst RST_38                                    ; $6B4B: $FF
    adc [hl]                                      ; $6B4C: $8E
    ld l, e                                       ; $6B4D: $6B
    push bc                                       ; $6B4E: $C5
    ld l, e                                       ; $6B4F: $6B
    reti                                          ; $6B50: $D9


    ld l, e                                       ; $6B51: $6B
    rst RST_38                                    ; $6B52: $FF
    rst RST_38                                    ; $6B53: $FF
    add hl, bc                                    ; $6B54: $09
    ld l, h                                       ; $6B55: $6C
    rst RST_38                                    ; $6B56: $FF
    rst RST_38                                    ; $6B57: $FF
    reti                                          ; $6B58: $D9


    ld l, e                                       ; $6B59: $6B
    rst RST_38                                    ; $6B5A: $FF
    rst RST_38                                    ; $6B5B: $FF
    ld a, [de]                                    ; $6B5C: $1A
    ld [hl], c                                    ; $6B5D: $71
    rst RST_38                                    ; $6B5E: $FF
    rst RST_38                                    ; $6B5F: $FF
    adc [hl]                                      ; $6B60: $8E
    ld l, e                                       ; $6B61: $6B
    push bc                                       ; $6B62: $C5
    ld l, e                                       ; $6B63: $6B
    rst RST_38                                    ; $6B64: $FF
    rst RST_38                                    ; $6B65: $FF
    or c                                          ; $6B66: $B1
    ld l, h                                       ; $6B67: $6C
    push bc                                       ; $6B68: $C5
    ld l, e                                       ; $6B69: $6B
    call nc, $C56C                                ; $6B6A: $D4 $6C $C5
    ld l, e                                       ; $6B6D: $6B
    add d                                         ; $6B6E: $82
    ld l, b                                       ; $6B6F: $68
    sub e                                         ; $6B70: $93
    ld l, b                                       ; $6B71: $68
    or c                                          ; $6B72: $B1
    ld l, b                                       ; $6B73: $68
    sub e                                         ; $6B74: $93
    ld l, b                                       ; $6B75: $68
    add d                                         ; $6B76: $82
    ld l, b                                       ; $6B77: $68
    sub e                                         ; $6B78: $93
    ld l, b                                       ; $6B79: $68
    call nc, $C56C                                ; $6B7A: $D4 $6C $C5
    ld l, e                                       ; $6B7D: $6B
    or c                                          ; $6B7E: $B1
    ld l, h                                       ; $6B7F: $6C
    push bc                                       ; $6B80: $C5
    ld l, e                                       ; $6B81: $6B
    adc [hl]                                      ; $6B82: $8E
    ld l, e                                       ; $6B83: $6B
    push bc                                       ; $6B84: $C5
    ld l, e                                       ; $6B85: $6B
    rst RST_38                                    ; $6B86: $FF
    rst RST_38                                    ; $6B87: $FF
    adc [hl]                                      ; $6B88: $8E
    ld l, e                                       ; $6B89: $6B
    push bc                                       ; $6B8A: $C5
    ld l, e                                       ; $6B8B: $6B
    rst RST_38                                    ; $6B8C: $FF
    rst RST_38                                    ; $6B8D: $FF
    nop                                           ; $6B8E: $00
    inc c                                         ; $6B8F: $0C
    nop                                           ; $6B90: $00
    nop                                           ; $6B91: $00
    ld b, b                                       ; $6B92: $40
    add hl, de                                    ; $6B93: $19
    xor h                                         ; $6B94: $AC
    ld l, e                                       ; $6B95: $6B
    ld sp, hl                                     ; $6B96: $F9
    nop                                           ; $6B97: $00
    nop                                           ; $6B98: $00
    inc c                                         ; $6B99: $0C
    dec b                                         ; $6B9A: $05
    nop                                           ; $6B9B: $00
    ld b, b                                       ; $6B9C: $40
    add hl, de                                    ; $6B9D: $19
    xor h                                         ; $6B9E: $AC
    ld l, e                                       ; $6B9F: $6B
    ld sp, hl                                     ; $6BA0: $F9
    nop                                           ; $6BA1: $00
    ld h, b                                       ; $6BA2: $60
    inc c                                         ; $6BA3: $0C
    nop                                           ; $6BA4: $00
    nop                                           ; $6BA5: $00
    ld b, b                                       ; $6BA6: $40
    add hl, de                                    ; $6BA7: $19
    xor h                                         ; $6BA8: $AC
    ld l, e                                       ; $6BA9: $6B
    rlca                                          ; $6BAA: $07
    ld c, $08                                     ; $6BAB: $0E $08
    dec h                                         ; $6BAD: $25
    rst RST_28                                    ; $6BAE: $EF
    nop                                           ; $6BAF: $00
    ld l, $F7                                     ; $6BB0: $2E $F7
    ld [bc], a                                    ; $6BB2: $02
    dec l                                         ; $6BB3: $2D
    rst RST_38                                    ; $6BB4: $FF
    inc b                                         ; $6BB5: $04
    scf                                           ; $6BB6: $37
    rst RST_28                                    ; $6BB7: $EF
    ld b, $3E                                     ; $6BB8: $06 $3E
    rst RST_30                                    ; $6BBA: $F7
    ld [$FF3D], sp                                ; $6BBB: $08 $3D $FF
    ld a, [bc]                                    ; $6BBE: $0A
    dec l                                         ; $6BBF: $2D
    rlca                                          ; $6BC0: $07
    inc c                                         ; $6BC1: $0C
    dec a                                         ; $6BC2: $3D
    rlca                                          ; $6BC3: $07
    ld c, $00                                     ; $6BC4: $0E $00
    nop                                           ; $6BC6: $00
    ld b, c                                       ; $6BC7: $41
    add hl, de                                    ; $6BC8: $19
    push de                                       ; $6BC9: $D5
    ld l, e                                       ; $6BCA: $6B
    ld sp, hl                                     ; $6BCB: $F9
    nop                                           ; $6BCC: $00
    ld h, b                                       ; $6BCD: $60
    nop                                           ; $6BCE: $00
    ld b, c                                       ; $6BCF: $41
    add hl, de                                    ; $6BD0: $19
    push de                                       ; $6BD1: $D5
    ld l, e                                       ; $6BD2: $6B
    rlca                                          ; $6BD3: $07
    ld c, $01                                     ; $6BD4: $0E $01
    ld sp, $000F                                  ; $6BD6: $31 $0F $00
    nop                                           ; $6BD9: $00
    inc c                                         ; $6BDA: $0C
    nop                                           ; $6BDB: $00
    jr nz, @+$43                                  ; $6BDC: $20 $41

    add hl, de                                    ; $6BDE: $19
    db $ED                                        ; $6BDF: $ED
    ld l, e                                       ; $6BE0: $6B
    ld sp, hl                                     ; $6BE1: $F9
    nop                                           ; $6BE2: $00
    nop                                           ; $6BE3: $00
    inc c                                         ; $6BE4: $0C
    dec b                                         ; $6BE5: $05
    jr nz, @+$43                                  ; $6BE6: $20 $41

    add hl, de                                    ; $6BE8: $19
    db $ED                                        ; $6BE9: $ED
    ld l, e                                       ; $6BEA: $6B
    ld sp, hl                                     ; $6BEB: $F9
    nop                                           ; $6BEC: $00
    add hl, bc                                    ; $6BED: $09
    dec h                                         ; $6BEE: $25
    rst RST_28                                    ; $6BEF: $EF
    nop                                           ; $6BF0: $00
    ld l, $F7                                     ; $6BF1: $2E $F7
    ld [bc], a                                    ; $6BF3: $02
    dec l                                         ; $6BF4: $2D
    rst RST_38                                    ; $6BF5: $FF
    inc b                                         ; $6BF6: $04
    dec l                                         ; $6BF7: $2D
    rlca                                          ; $6BF8: $07
    ld b, $31                                     ; $6BF9: $06 $31
    rrca                                          ; $6BFB: $0F
    ld [$EF37], sp                                ; $6BFC: $08 $37 $EF
    ld a, [bc]                                    ; $6BFF: $0A
    ld a, $F7                                     ; $6C00: $3E $F7
    inc c                                         ; $6C02: $0C
    dec a                                         ; $6C03: $3D
    rst RST_38                                    ; $6C04: $FF
    ld c, $3D                                     ; $6C05: $0E $3D
    rlca                                          ; $6C07: $07
    stop                                          ; $6C08: $10 $00
    inc c                                         ; $6C0A: $0C
    nop                                           ; $6C0B: $00
    ld b, b                                       ; $6C0C: $40
    ld b, d                                       ; $6C0D: $42
    add hl, de                                    ; $6C0E: $19
    dec e                                         ; $6C0F: $1D
    ld l, h                                       ; $6C10: $6C
    ld sp, hl                                     ; $6C11: $F9
    nop                                           ; $6C12: $00
    nop                                           ; $6C13: $00
    inc c                                         ; $6C14: $0C
    dec b                                         ; $6C15: $05
    ld b, b                                       ; $6C16: $40
    ld b, d                                       ; $6C17: $42
    add hl, de                                    ; $6C18: $19
    dec e                                         ; $6C19: $1D
    ld l, h                                       ; $6C1A: $6C
    ld sp, hl                                     ; $6C1B: $F9
    nop                                           ; $6C1C: $00
    ld [$F72E], sp                                ; $6C1D: $08 $2E $F7
    nop                                           ; $6C20: $00
    dec l                                         ; $6C21: $2D
    rst RST_38                                    ; $6C22: $FF
    ld [bc], a                                    ; $6C23: $02
    dec l                                         ; $6C24: $2D
    rlca                                          ; $6C25: $07
    inc b                                         ; $6C26: $04
    ld sp, $060F                                  ; $6C27: $31 $0F $06
    scf                                           ; $6C2A: $37
    rst RST_28                                    ; $6C2B: $EF
    ld [$F73E], sp                                ; $6C2C: $08 $3E $F7
    ld a, [bc]                                    ; $6C2F: $0A
    dec a                                         ; $6C30: $3D
    rst RST_38                                    ; $6C31: $FF
    inc c                                         ; $6C32: $0C
    dec a                                         ; $6C33: $3D
    rlca                                          ; $6C34: $07
    ld c, $00                                     ; $6C35: $0E $00
    inc c                                         ; $6C37: $0C
    nop                                           ; $6C38: $00
    ld b, b                                       ; $6C39: $40
    ld b, e                                       ; $6C3A: $43
    add hl, de                                    ; $6C3B: $19
    ld b, b                                       ; $6C3C: $40
    ld l, h                                       ; $6C3D: $6C
    ld sp, hl                                     ; $6C3E: $F9
    nop                                           ; $6C3F: $00
    ld a, [bc]                                    ; $6C40: $0A
    dec h                                         ; $6C41: $25
    db $ED                                        ; $6C42: $ED
    nop                                           ; $6C43: $00
    ld l, $F5                                     ; $6C44: $2E $F5
    ld [bc], a                                    ; $6C46: $02
    dec l                                         ; $6C47: $2D
    db $FD                                        ; $6C48: $FD
    inc b                                         ; $6C49: $04
    dec l                                         ; $6C4A: $2D
    dec b                                         ; $6C4B: $05
    ld b, $2F                                     ; $6C4C: $06 $2F
    dec c                                         ; $6C4E: $0D
    ld [$1535], sp                                ; $6C4F: $08 $35 $15
    ld a, [bc]                                    ; $6C52: $0A
    dec a                                         ; $6C53: $3D
    db $FD                                        ; $6C54: $FD
    inc c                                         ; $6C55: $0C
    dec a                                         ; $6C56: $3D
    dec b                                         ; $6C57: $05
    ld c, $3F                                     ; $6C58: $0E $3F
    dec c                                         ; $6C5A: $0D
    db $10                                        ; $6C5B: $10
    ld a, $F5                                     ; $6C5C: $3E $F5
    ld [de], a                                    ; $6C5E: $12
    nop                                           ; $6C5F: $00
    inc c                                         ; $6C60: $0C
    nop                                           ; $6C61: $00
    add b                                         ; $6C62: $80
    ld b, h                                       ; $6C63: $44
    add hl, de                                    ; $6C64: $19
    ld l, c                                       ; $6C65: $69
    ld l, h                                       ; $6C66: $6C
    ld sp, hl                                     ; $6C67: $F9
    nop                                           ; $6C68: $00
    ld a, [bc]                                    ; $6C69: $0A
    inc h                                         ; $6C6A: $24
    db $ED                                        ; $6C6B: $ED
    nop                                           ; $6C6C: $00
    dec l                                         ; $6C6D: $2D
    push af                                       ; $6C6E: $F5
    ld [bc], a                                    ; $6C6F: $02
    inc l                                         ; $6C70: $2C
    db $FD                                        ; $6C71: $FD
    inc b                                         ; $6C72: $04
    inc l                                         ; $6C73: $2C
    dec b                                         ; $6C74: $05
    ld b, $2E                                     ; $6C75: $06 $2E
    dec c                                         ; $6C77: $0D
    ld [$1534], sp                                ; $6C78: $08 $34 $15
    ld a, [bc]                                    ; $6C7B: $0A
    inc a                                         ; $6C7C: $3C
    db $FD                                        ; $6C7D: $FD
    inc c                                         ; $6C7E: $0C
    inc a                                         ; $6C7F: $3C
    dec b                                         ; $6C80: $05
    ld c, $3E                                     ; $6C81: $0E $3E
    dec c                                         ; $6C83: $0D
    db $10                                        ; $6C84: $10
    dec a                                         ; $6C85: $3D
    push af                                       ; $6C86: $F5
    ld [de], a                                    ; $6C87: $12
    nop                                           ; $6C88: $00
    inc c                                         ; $6C89: $0C
    nop                                           ; $6C8A: $00
    ret nz                                        ; $6C8B: $C0

    ld b, l                                       ; $6C8C: $45
    add hl, de                                    ; $6C8D: $19
    sub d                                         ; $6C8E: $92
    ld l, h                                       ; $6C8F: $6C
    ld sp, hl                                     ; $6C90: $F9
    nop                                           ; $6C91: $00
    ld a, [bc]                                    ; $6C92: $0A
    inc h                                         ; $6C93: $24
    db $ED                                        ; $6C94: $ED
    nop                                           ; $6C95: $00
    dec l                                         ; $6C96: $2D
    push af                                       ; $6C97: $F5
    ld [bc], a                                    ; $6C98: $02
    inc l                                         ; $6C99: $2C
    db $FD                                        ; $6C9A: $FD
    inc b                                         ; $6C9B: $04
    inc l                                         ; $6C9C: $2C
    dec b                                         ; $6C9D: $05
    ld b, $2E                                     ; $6C9E: $06 $2E
    dec c                                         ; $6CA0: $0D
    ld [$1535], sp                                ; $6CA1: $08 $35 $15
    ld a, [bc]                                    ; $6CA4: $0A
    inc a                                         ; $6CA5: $3C
    db $FD                                        ; $6CA6: $FD
    inc c                                         ; $6CA7: $0C
    inc a                                         ; $6CA8: $3C
    dec b                                         ; $6CA9: $05
    ld c, $3E                                     ; $6CAA: $0E $3E
    dec c                                         ; $6CAC: $0D
    db $10                                        ; $6CAD: $10
    dec a                                         ; $6CAE: $3D
    push af                                       ; $6CAF: $F5
    ld [de], a                                    ; $6CB0: $12
    nop                                           ; $6CB1: $00
    inc c                                         ; $6CB2: $0C
    nop                                           ; $6CB3: $00
    nop                                           ; $6CB4: $00
    ld b, a                                       ; $6CB5: $47
    add hl, de                                    ; $6CB6: $19
    cp e                                          ; $6CB7: $BB
    ld l, h                                       ; $6CB8: $6C
    ld sp, hl                                     ; $6CB9: $F9
    nop                                           ; $6CBA: $00
    ld [$EF20], sp                                ; $6CBB: $08 $20 $EF
    nop                                           ; $6CBE: $00
    dec hl                                        ; $6CBF: $2B
    rst RST_30                                    ; $6CC0: $F7
    ld [bc], a                                    ; $6CC1: $02
    inc l                                         ; $6CC2: $2C
    rst RST_38                                    ; $6CC3: $FF
    inc b                                         ; $6CC4: $04
    dec l                                         ; $6CC5: $2D
    rlca                                          ; $6CC6: $07
    ld b, $37                                     ; $6CC7: $06 $37
    rst RST_28                                    ; $6CC9: $EF
    ld [$F73B], sp                                ; $6CCA: $08 $3B $F7
    ld a, [bc]                                    ; $6CCD: $0A
    inc a                                         ; $6CCE: $3C
    rst RST_38                                    ; $6CCF: $FF
    inc c                                         ; $6CD0: $0C
    dec a                                         ; $6CD1: $3D
    rlca                                          ; $6CD2: $07
    ld c, $00                                     ; $6CD3: $0E $00
    inc c                                         ; $6CD5: $0C
    nop                                           ; $6CD6: $00
    nop                                           ; $6CD7: $00
    ld c, b                                       ; $6CD8: $48
    add hl, de                                    ; $6CD9: $19
    sbc $6C                                       ; $6CDA: $DE $6C
    ld sp, hl                                     ; $6CDC: $F9
    nop                                           ; $6CDD: $00
    ld [$EF1B], sp                                ; $6CDE: $08 $1B $EF
    nop                                           ; $6CE1: $00
    ld h, $F7                                     ; $6CE2: $26 $F7
    ld [bc], a                                    ; $6CE4: $02
    ld a, [hl+]                                   ; $6CE5: $2A
    rst RST_38                                    ; $6CE6: $FF
    inc b                                         ; $6CE7: $04
    inc l                                         ; $6CE8: $2C
    rlca                                          ; $6CE9: $07
    ld b, $36                                     ; $6CEA: $06 $36
    rst RST_28                                    ; $6CEC: $EF
    ld [$F736], sp                                ; $6CED: $08 $36 $F7
    ld a, [bc]                                    ; $6CF0: $0A
    ld a, [hl-]                                   ; $6CF1: $3A
    rst RST_38                                    ; $6CF2: $FF
    inc c                                         ; $6CF3: $0C
    inc a                                         ; $6CF4: $3C
    rlca                                          ; $6CF5: $07

jr_008_6CF6:
    ld c, $00                                     ; $6CF6: $0E $00
    inc c                                         ; $6CF8: $0C
    adc e                                         ; $6CF9: $8B
    nop                                           ; $6CFA: $00
    ld c, e                                       ; $6CFB: $4B
    add hl, de                                    ; $6CFC: $19
    ld bc, $F96D                                  ; $6CFD: $01 $6D $F9
    nop                                           ; $6D00: $00

jr_008_6D01:
    inc bc                                        ; $6D01: $03
    jr @-$17                                      ; $6D02: $18 $E7

    nop                                           ; $6D04: $00
    jr z, jr_008_6CF6                             ; $6D05: $28 $EF

    ld [bc], a                                    ; $6D07: $02
    jr z, jr_008_6D01                             ; $6D08: $28 $F7

    inc b                                         ; $6D0A: $04
    nop                                           ; $6D0B: $00
    ld h, b                                       ; $6D0C: $60
    ld c, e                                       ; $6D0D: $4B
    add hl, de                                    ; $6D0E: $19
    inc de                                        ; $6D0F: $13
    ld l, l                                       ; $6D10: $6D
    ld sp, hl                                     ; $6D11: $F9
    nop                                           ; $6D12: $00
    rlca                                          ; $6D13: $07
    dec l                                         ; $6D14: $2D
    rst RST_38                                    ; $6D15: $FF

jr_008_6D16:
    nop                                           ; $6D16: $00
    dec l                                         ; $6D17: $2D
    rlca                                          ; $6D18: $07
    ld [bc], a                                    ; $6D19: $02
    ld sp, $040F                                  ; $6D1A: $31 $0F $04
    jr c, jr_008_6D16                             ; $6D1D: $38 $F7

    ld b, $38                                     ; $6D1F: $06 $38
    rst RST_28                                    ; $6D21: $EF
    ld [$FF3D], sp                                ; $6D22: $08 $3D $FF
    ld a, [bc]                                    ; $6D25: $0A
    dec a                                         ; $6D26: $3D
    rlca                                          ; $6D27: $07

jr_008_6D28:
    inc c                                         ; $6D28: $0C

jr_008_6D29:
    nop                                           ; $6D29: $00
    inc c                                         ; $6D2A: $0C
    adc e                                         ; $6D2B: $8B
    ld b, b                                       ; $6D2C: $40
    ld c, h                                       ; $6D2D: $4C
    add hl, de                                    ; $6D2E: $19
    inc sp                                        ; $6D2F: $33
    ld l, l                                       ; $6D30: $6D
    ld sp, hl                                     ; $6D31: $F9
    nop                                           ; $6D32: $00

jr_008_6D33:
    inc bc                                        ; $6D33: $03

jr_008_6D34:
    inc d                                         ; $6D34: $14
    db $E3                                        ; $6D35: $E3
    nop                                           ; $6D36: $00
    jr z, jr_008_6D28                             ; $6D37: $28 $EF

    ld [bc], a                                    ; $6D39: $02
    jr z, jr_008_6D33                             ; $6D3A: $28 $F7

    inc b                                         ; $6D3C: $04
    nop                                           ; $6D3D: $00
    inc c                                         ; $6D3E: $0C

jr_008_6D3F:
    adc h                                         ; $6D3F: $8C

jr_008_6D40:
    and b                                         ; $6D40: $A0
    ld c, h                                       ; $6D41: $4C
    add hl, de                                    ; $6D42: $19
    ld b, a                                       ; $6D43: $47
    ld l, l                                       ; $6D44: $6D
    ld sp, hl                                     ; $6D45: $F9
    nop                                           ; $6D46: $00
    inc b                                         ; $6D47: $04
    jr z, jr_008_6D29                             ; $6D48: $28 $DF

jr_008_6D4A:
    nop                                           ; $6D4A: $00

jr_008_6D4B:
    jr z, jr_008_6D34                             ; $6D4B: $28 $E7

    ld [bc], a                                    ; $6D4D: $02
    jr z, jr_008_6D3F                             ; $6D4E: $28 $EF

    inc b                                         ; $6D50: $04
    jr z, jr_008_6D4A                             ; $6D51: $28 $F7

    ld b, $00                                     ; $6D53: $06 $00
    inc c                                         ; $6D55: $0C

jr_008_6D56:
    adc h                                         ; $6D56: $8C
    jr nz, jr_008_6DA6                            ; $6D57: $20 $4D

    add hl, de                                    ; $6D59: $19
    ld e, [hl]                                    ; $6D5A: $5E
    ld l, l                                       ; $6D5B: $6D
    ld sp, hl                                     ; $6D5C: $F9
    nop                                           ; $6D5D: $00
    inc b                                         ; $6D5E: $04
    jr z, jr_008_6D40                             ; $6D5F: $28 $DF

jr_008_6D61:
    nop                                           ; $6D61: $00
    jr z, jr_008_6D4B                             ; $6D62: $28 $E7

    ld [bc], a                                    ; $6D64: $02
    jr z, jr_008_6D56                             ; $6D65: $28 $EF

    inc b                                         ; $6D67: $04
    jr z, jr_008_6D61                             ; $6D68: $28 $F7

    ld b, $00                                     ; $6D6A: $06 $00
    inc c                                         ; $6D6C: $0C
    nop                                           ; $6D6D: $00
    and b                                         ; $6D6E: $A0
    ld c, l                                       ; $6D6F: $4D
    add hl, de                                    ; $6D70: $19
    ld [hl], l                                    ; $6D71: $75
    ld l, l                                       ; $6D72: $6D
    ld sp, hl                                     ; $6D73: $F9
    nop                                           ; $6D74: $00

jr_008_6D75:
    ld b, $28                                     ; $6D75: $06 $28
    rst RST_20                                    ; $6D77: $E7
    nop                                           ; $6D78: $00
    dec l                                         ; $6D79: $2D
    rst RST_28                                    ; $6D7A: $EF
    ld [bc], a                                    ; $6D7B: $02
    jr z, jr_008_6D75                             ; $6D7C: $28 $F7

    inc b                                         ; $6D7E: $04
    jr z, @+$01                                   ; $6D7F: $28 $FF

    ld b, $28                                     ; $6D81: $06 $28
    rlca                                          ; $6D83: $07
    ld [$EF1D], sp                                ; $6D84: $08 $1D $EF
    ld a, [bc]                                    ; $6D87: $0A
    nop                                           ; $6D88: $00
    ld h, b                                       ; $6D89: $60

jr_008_6D8A:
    ld c, [hl]                                    ; $6D8A: $4E
    add hl, de                                    ; $6D8B: $19
    sub b                                         ; $6D8C: $90
    ld l, l                                       ; $6D8D: $6D
    ld sp, hl                                     ; $6D8E: $F9
    nop                                           ; $6D8F: $00
    dec b                                         ; $6D90: $05
    jr c, jr_008_6D8A                             ; $6D91: $38 $F7

    nop                                           ; $6D93: $00
    jr c, @+$01                                   ; $6D94: $38 $FF

    ld [bc], a                                    ; $6D96: $02
    jr c, @+$09                                   ; $6D97: $38 $07

    inc b                                         ; $6D99: $04
    jr nc, jr_008_6DAB                            ; $6D9A: $30 $0F

    ld b, $38                                     ; $6D9C: $06 $38
    rst RST_28                                    ; $6D9E: $EF
    ld [$0C00], sp                                ; $6D9F: $08 $00 $0C
    adc l                                         ; $6DA2: $8D
    nop                                           ; $6DA3: $00
    ld c, a                                       ; $6DA4: $4F
    add hl, de                                    ; $6DA5: $19

jr_008_6DA6:
    xor d                                         ; $6DA6: $AA
    ld l, l                                       ; $6DA7: $6D
    ld sp, hl                                     ; $6DA8: $F9
    nop                                           ; $6DA9: $00
    ld a, [bc]                                    ; $6DAA: $0A

jr_008_6DAB:
    dec h                                         ; $6DAB: $25
    rst RST_18                                    ; $6DAC: $DF
    nop                                           ; $6DAD: $00
    ld h, $E7                                     ; $6DAE: $26 $E7
    ld [bc], a                                    ; $6DB0: $02
    cpl                                           ; $6DB1: $2F
    rst RST_28                                    ; $6DB2: $EF
    inc b                                         ; $6DB3: $04
    ld l, $F7                                     ; $6DB4: $2E $F7
    ld b, $2D                                     ; $6DB6: $06 $2D
    rst RST_38                                    ; $6DB8: $FF
    ld [$072D], sp                                ; $6DB9: $08 $2D $07
    ld a, [bc]                                    ; $6DBC: $0A
    jr nc, jr_008_6DCE                            ; $6DBD: $30 $0F

    inc c                                         ; $6DBF: $0C

jr_008_6DC0:
    ld a, $F7                                     ; $6DC0: $3E $F7
    ld c, $3D                                     ; $6DC2: $0E $3D
    rst RST_38                                    ; $6DC4: $FF
    db $10                                        ; $6DC5: $10
    dec a                                         ; $6DC6: $3D
    rlca                                          ; $6DC7: $07
    ld [de], a                                    ; $6DC8: $12
    nop                                           ; $6DC9: $00
    inc c                                         ; $6DCA: $0C

jr_008_6DCB:
    nop                                           ; $6DCB: $00
    ld b, b                                       ; $6DCC: $40
    ld d, b                                       ; $6DCD: $50

jr_008_6DCE:
    add hl, de                                    ; $6DCE: $19
    db $D3                                        ; $6DCF: $D3
    ld l, l                                       ; $6DD0: $6D
    ld sp, hl                                     ; $6DD1: $F9
    nop                                           ; $6DD2: $00
    ld b, $28                                     ; $6DD3: $06 $28
    rst RST_18                                    ; $6DD5: $DF

jr_008_6DD6:
    nop                                           ; $6DD6: $00
    jr z, jr_008_6DC0                             ; $6DD7: $28 $E7

    ld [bc], a                                    ; $6DD9: $02
    jr z, jr_008_6DCB                             ; $6DDA: $28 $EF

    inc b                                         ; $6DDC: $04
    jr z, jr_008_6DD6                             ; $6DDD: $28 $F7

    ld b, $28                                     ; $6DDF: $06 $28
    rst RST_38                                    ; $6DE1: $FF
    ld [$0728], sp                                ; $6DE2: $08 $28 $07
    ld a, [bc]                                    ; $6DE5: $0A
    nop                                           ; $6DE6: $00
    inc c                                         ; $6DE7: $0C
    nop                                           ; $6DE8: $00
    nop                                           ; $6DE9: $00
    ld d, c                                       ; $6DEA: $51
    add hl, de                                    ; $6DEB: $19

jr_008_6DEC:
    ld a, [$F96D]                                 ; $6DEC: $FA $6D $F9
    nop                                           ; $6DEF: $00
    nop                                           ; $6DF0: $00
    inc c                                         ; $6DF1: $0C
    adc [hl]                                      ; $6DF2: $8E
    nop                                           ; $6DF3: $00
    ld d, c                                       ; $6DF4: $51
    add hl, de                                    ; $6DF5: $19
    ld a, [$F96D]                                 ; $6DF6: $FA $6D $F9
    nop                                           ; $6DF9: $00
    dec b                                         ; $6DFA: $05
    jr z, jr_008_6DEC                             ; $6DFB: $28 $EF

    nop                                           ; $6DFD: $00
    jr z, @-$07                                   ; $6DFE: $28 $F7

    ld [bc], a                                    ; $6E00: $02
    jr z, @+$01                                   ; $6E01: $28 $FF

    inc b                                         ; $6E03: $04

jr_008_6E04:
    jr z, jr_008_6E0D                             ; $6E04: $28 $07

    ld b, $31                                     ; $6E06: $06 $31
    rrca                                          ; $6E08: $0F
    ld [$A000], sp                                ; $6E09: $08 $00 $A0
    ld d, c                                       ; $6E0C: $51

jr_008_6E0D:
    add hl, de                                    ; $6E0D: $19
    ld [de], a                                    ; $6E0E: $12

jr_008_6E0F:
    ld l, [hl]                                    ; $6E0F: $6E
    ld sp, hl                                     ; $6E10: $F9
    nop                                           ; $6E11: $00
    inc b                                         ; $6E12: $04
    jr c, jr_008_6E04                             ; $6E13: $38 $EF

    nop                                           ; $6E15: $00
    jr c, jr_008_6E0F                             ; $6E16: $38 $F7

    ld [bc], a                                    ; $6E18: $02
    jr c, @+$01                                   ; $6E19: $38 $FF

    inc b                                         ; $6E1B: $04

jr_008_6E1C:
    jr c, jr_008_6E25                             ; $6E1C: $38 $07

    ld b, $00                                     ; $6E1E: $06 $00
    jr nz, jr_008_6E74                            ; $6E20: $20 $52

    add hl, de                                    ; $6E22: $19
    daa                                           ; $6E23: $27
    ld l, [hl]                                    ; $6E24: $6E

jr_008_6E25:
    ld sp, hl                                     ; $6E25: $F9
    nop                                           ; $6E26: $00

jr_008_6E27:
    dec b                                         ; $6E27: $05
    dec sp                                        ; $6E28: $3B
    rst RST_20                                    ; $6E29: $E7
    nop                                           ; $6E2A: $00
    jr c, jr_008_6E1C                             ; $6E2B: $38 $EF

    ld [bc], a                                    ; $6E2D: $02
    jr c, jr_008_6E27                             ; $6E2E: $38 $F7

    inc b                                         ; $6E30: $04

jr_008_6E31:
    jr c, @+$01                                   ; $6E31: $38 $FF

    ld b, $38                                     ; $6E33: $06 $38
    rlca                                          ; $6E35: $07
    ld [$C000], sp                                ; $6E36: $08 $00 $C0
    ld d, d                                       ; $6E39: $52
    add hl, de                                    ; $6E3A: $19
    ccf                                           ; $6E3B: $3F

jr_008_6E3C:
    ld l, [hl]                                    ; $6E3C: $6E
    ld sp, hl                                     ; $6E3D: $F9
    nop                                           ; $6E3E: $00
    inc b                                         ; $6E3F: $04
    jr c, jr_008_6E31                             ; $6E40: $38 $EF

    nop                                           ; $6E42: $00
    jr c, jr_008_6E3C                             ; $6E43: $38 $F7

    ld [bc], a                                    ; $6E45: $02
    jr c, @+$01                                   ; $6E46: $38 $FF

jr_008_6E48:
    inc b                                         ; $6E48: $04
    jr c, jr_008_6E52                             ; $6E49: $38 $07

    ld b, $00                                     ; $6E4B: $06 $00
    inc c                                         ; $6E4D: $0C
    adc a                                         ; $6E4E: $8F
    ld b, b                                       ; $6E4F: $40
    ld d, e                                       ; $6E50: $53
    add hl, de                                    ; $6E51: $19

jr_008_6E52:
    ld d, [hl]                                    ; $6E52: $56

jr_008_6E53:
    ld l, [hl]                                    ; $6E53: $6E
    ld sp, hl                                     ; $6E54: $F9
    nop                                           ; $6E55: $00
    dec b                                         ; $6E56: $05
    jr z, jr_008_6E48                             ; $6E57: $28 $EF

    nop                                           ; $6E59: $00
    jr z, jr_008_6E53                             ; $6E5A: $28 $F7

    ld [bc], a                                    ; $6E5C: $02
    jr z, @+$01                                   ; $6E5D: $28 $FF

    inc b                                         ; $6E5F: $04
    jr z, jr_008_6E69                             ; $6E60: $28 $07

    ld b, $33                                     ; $6E62: $06 $33
    rrca                                          ; $6E64: $0F
    ld [$E000], sp                                ; $6E65: $08 $00 $E0
    ld d, e                                       ; $6E68: $53

jr_008_6E69:
    add hl, de                                    ; $6E69: $19
    ld l, [hl]                                    ; $6E6A: $6E
    ld l, [hl]                                    ; $6E6B: $6E
    ld sp, hl                                     ; $6E6C: $F9
    nop                                           ; $6E6D: $00

jr_008_6E6E:
    dec b                                         ; $6E6E: $05
    jr c, @-$17                                   ; $6E6F: $38 $E7

    nop                                           ; $6E71: $00
    jr c, @-$0F                                   ; $6E72: $38 $EF

jr_008_6E74:
    ld [bc], a                                    ; $6E74: $02
    jr c, jr_008_6E6E                             ; $6E75: $38 $F7

    inc b                                         ; $6E77: $04

jr_008_6E78:
    jr c, @+$01                                   ; $6E78: $38 $FF

    ld b, $38                                     ; $6E7A: $06 $38
    rlca                                          ; $6E7C: $07
    ld [$8000], sp                                ; $6E7D: $08 $00 $80
    ld d, h                                       ; $6E80: $54
    add hl, de                                    ; $6E81: $19
    add [hl]                                      ; $6E82: $86

jr_008_6E83:
    ld l, [hl]                                    ; $6E83: $6E
    ld sp, hl                                     ; $6E84: $F9
    nop                                           ; $6E85: $00
    inc b                                         ; $6E86: $04
    jr c, jr_008_6E78                             ; $6E87: $38 $EF

    nop                                           ; $6E89: $00
    jr c, jr_008_6E83                             ; $6E8A: $38 $F7

    ld [bc], a                                    ; $6E8C: $02
    jr c, @+$01                                   ; $6E8D: $38 $FF

    inc b                                         ; $6E8F: $04
    jr c, jr_008_6E99                             ; $6E90: $38 $07

    ld b, $00                                     ; $6E92: $06 $00
    inc c                                         ; $6E94: $0C
    nop                                           ; $6E95: $00
    nop                                           ; $6E96: $00
    ld d, l                                       ; $6E97: $55
    add hl, de                                    ; $6E98: $19

jr_008_6E99:
    sbc l                                         ; $6E99: $9D
    ld l, [hl]                                    ; $6E9A: $6E
    ld bc, $0800                                  ; $6E9B: $01 $00 $08
    ld [hl], $E7                                  ; $6E9E: $36 $E7
    nop                                           ; $6EA0: $00
    ld l, $EF                                     ; $6EA1: $2E $EF
    ld [bc], a                                    ; $6EA3: $02
    dec hl                                        ; $6EA4: $2B
    rst RST_30                                    ; $6EA5: $F7
    inc b                                         ; $6EA6: $04
    ld a, [hl+]                                   ; $6EA7: $2A
    rst RST_38                                    ; $6EA8: $FF
    ld b, $31                                     ; $6EA9: $06 $31
    rlca                                          ; $6EAB: $07
    ld [$EF3E], sp                                ; $6EAC: $08 $3E $EF
    ld a, [bc]                                    ; $6EAF: $0A
    dec sp                                        ; $6EB0: $3B
    rst RST_30                                    ; $6EB1: $F7
    inc c                                         ; $6EB2: $0C
    ld a, [hl-]                                   ; $6EB3: $3A
    rst RST_38                                    ; $6EB4: $FF
    ld c, $00                                     ; $6EB5: $0E $00
    inc c                                         ; $6EB7: $0C
    nop                                           ; $6EB8: $00
    nop                                           ; $6EB9: $00

jr_008_6EBA:
    ld d, [hl]                                    ; $6EBA: $56
    add hl, de                                    ; $6EBB: $19
    ret nz                                        ; $6EBC: $C0

    ld l, [hl]                                    ; $6EBD: $6E
    ld bc, $0600                                  ; $6EBE: $01 $00 $06
    jr nc, jr_008_6EBA                            ; $6EC1: $30 $F7

    nop                                           ; $6EC3: $00
    ld sp, $02EF                                  ; $6EC4: $31 $EF $02
    dec sp                                        ; $6EC7: $3B
    rst RST_18                                    ; $6EC8: $DF
    inc b                                         ; $6EC9: $04
    ld [hl], $E7                                  ; $6ECA: $36 $E7
    ld b, $20                                     ; $6ECC: $06 $20
    rst RST_30                                    ; $6ECE: $F7
    ld [$FF20], sp                                ; $6ECF: $08 $20 $FF
    ld a, [bc]                                    ; $6ED2: $0A
    nop                                           ; $6ED3: $00
    ret nz                                        ; $6ED4: $C0

    ld d, [hl]                                    ; $6ED5: $56
    add hl, de                                    ; $6ED6: $19
    db $DB                                        ; $6ED7: $DB
    ld l, [hl]                                    ; $6ED8: $6E
    ld bc, $0200                                  ; $6ED9: $01 $00 $02
    jr nc, @+$01                                  ; $6EDC: $30 $FF

    nop                                           ; $6EDE: $00
    ld sp, $0207                                  ; $6EDF: $31 $07 $02
    nop                                           ; $6EE2: $00
    inc c                                         ; $6EE3: $0C
    sub b                                         ; $6EE4: $90
    nop                                           ; $6EE5: $00
    ld d, a                                       ; $6EE6: $57
    add hl, de                                    ; $6EE7: $19
    db $EC                                        ; $6EE8: $EC
    ld l, [hl]                                    ; $6EE9: $6E
    ld sp, hl                                     ; $6EEA: $F9
    nop                                           ; $6EEB: $00
    ld [$DF31], sp                                ; $6EEC: $08 $31 $DF
    nop                                           ; $6EEF: $00
    dec h                                         ; $6EF0: $25
    rst RST_20                                    ; $6EF1: $E7
    ld [bc], a                                    ; $6EF2: $02
    dec [hl]                                      ; $6EF3: $35
    rst RST_20                                    ; $6EF4: $E7
    inc b                                         ; $6EF5: $04
    inc [hl]                                      ; $6EF6: $34
    rst RST_28                                    ; $6EF7: $EF
    ld b, $31                                     ; $6EF8: $06 $31
    rst RST_30                                    ; $6EFA: $F7
    ld [$FF2A], sp                                ; $6EFB: $08 $2A $FF
    ld a, [bc]                                    ; $6EFE: $0A
    ld a, [hl-]                                   ; $6EFF: $3A
    rst RST_38                                    ; $6F00: $FF
    inc c                                         ; $6F01: $0C
    jr nz, jr_008_6F0B                            ; $6F02: $20 $07

jr_008_6F04:
    ld c, $00                                     ; $6F04: $0E $00
    inc c                                         ; $6F06: $0C
    nop                                           ; $6F07: $00
    nop                                           ; $6F08: $00
    ld e, b                                       ; $6F09: $58
    add hl, de                                    ; $6F0A: $19

jr_008_6F0B:
    rrca                                          ; $6F0B: $0F
    ld l, a                                       ; $6F0C: $6F
    nop                                           ; $6F0D: $00
    nop                                           ; $6F0E: $00

jr_008_6F0F:
    dec b                                         ; $6F0F: $05
    jr nz, @-$17                                  ; $6F10: $20 $E7

jr_008_6F12:
    nop                                           ; $6F12: $00
    jr nz, jr_008_6F04                            ; $6F13: $20 $EF

    ld [bc], a                                    ; $6F15: $02
    jr nc, jr_008_6F0F                            ; $6F16: $30 $F7

    inc b                                         ; $6F18: $04
    jr nz, jr_008_6F12                            ; $6F19: $20 $F7

    ld b, $20                                     ; $6F1B: $06 $20
    rst RST_38                                    ; $6F1D: $FF
    ld [$A000], sp                                ; $6F1E: $08 $00 $A0
    ld e, b                                       ; $6F21: $58
    add hl, de                                    ; $6F22: $19
    daa                                           ; $6F23: $27
    ld l, a                                       ; $6F24: $6F
    nop                                           ; $6F25: $00
    nop                                           ; $6F26: $00
    dec b                                         ; $6F27: $05
    ld [hl-], a                                   ; $6F28: $32
    rst RST_28                                    ; $6F29: $EF
    nop                                           ; $6F2A: $00
    jr nc, @+$01                                  ; $6F2B: $30 $FF

    ld [bc], a                                    ; $6F2D: $02
    ld sp, $0407                                  ; $6F2E: $31 $07 $04
    ld [hl], $0F                                  ; $6F31: $36 $0F
    ld b, $38                                     ; $6F33: $06 $38
    rst RST_20                                    ; $6F35: $E7
    ld [$0C00], sp                                ; $6F36: $08 $00 $0C
    sub c                                         ; $6F39: $91
    ld b, b                                       ; $6F3A: $40
    ld e, c                                       ; $6F3B: $59
    add hl, de                                    ; $6F3C: $19
    ld b, c                                       ; $6F3D: $41
    ld l, a                                       ; $6F3E: $6F
    ld sp, hl                                     ; $6F3F: $F9
    nop                                           ; $6F40: $00
    rlca                                          ; $6F41: $07
    dec d                                         ; $6F42: $15

jr_008_6F43:
    sbc $00                                       ; $6F43: $DE $00
    add hl, de                                    ; $6F45: $19
    and $02                                       ; $6F46: $E6 $02
    inc e                                         ; $6F48: $1C
    xor $04                                       ; $6F49: $EE $04
    jr nz, jr_008_6F43                            ; $6F4B: $20 $F6

    ld b, $2B                                     ; $6F4D: $06 $2B
    cp $08                                        ; $6F4F: $FE $08
    dec sp                                        ; $6F51: $3B
    cp $0A                                        ; $6F52: $FE $0A
    jr nz, jr_008_6F5C                            ; $6F54: $20 $06

    inc c                                         ; $6F56: $0C
    nop                                           ; $6F57: $00
    inc c                                         ; $6F58: $0C
    nop                                           ; $6F59: $00
    jr nz, jr_008_6FB6                            ; $6F5A: $20 $5A

jr_008_6F5C:
    add hl, de                                    ; $6F5C: $19
    ld h, c                                       ; $6F5D: $61
    ld l, a                                       ; $6F5E: $6F
    ld bc, $0500                                  ; $6F5F: $01 $00 $05
    inc e                                         ; $6F62: $1C
    and $00                                       ; $6F63: $E6 $00
    jr nz, @-$10                                  ; $6F65: $20 $EE

    ld [bc], a                                    ; $6F67: $02
    add hl, hl                                    ; $6F68: $29
    or $04                                        ; $6F69: $F6 $04
    add hl, sp                                    ; $6F6B: $39
    or $06                                        ; $6F6C: $F6 $06

jr_008_6F6E:
    jr nz, jr_008_6F6E                            ; $6F6E: $20 $FE

    ld [$0C00], sp                                ; $6F70: $08 $00 $0C
    nop                                           ; $6F73: $00
    ret nz                                        ; $6F74: $C0

    ld e, d                                       ; $6F75: $5A
    add hl, de                                    ; $6F76: $19
    add l                                         ; $6F77: $85
    ld l, a                                       ; $6F78: $6F
    ld sp, hl                                     ; $6F79: $F9
    nop                                           ; $6F7A: $00
    nop                                           ; $6F7B: $00
    inc c                                         ; $6F7C: $0C
    ld [bc], a                                    ; $6F7D: $02
    ret nz                                        ; $6F7E: $C0

    ld e, d                                       ; $6F7F: $5A
    add hl, de                                    ; $6F80: $19
    add l                                         ; $6F81: $85
    ld l, a                                       ; $6F82: $6F
    ld sp, hl                                     ; $6F83: $F9
    nop                                           ; $6F84: $00
    ld a, [bc]                                    ; $6F85: $0A
    dec h                                         ; $6F86: $25
    db $ED                                        ; $6F87: $ED
    nop                                           ; $6F88: $00
    ld l, $F5                                     ; $6F89: $2E $F5
    ld [bc], a                                    ; $6F8B: $02
    dec l                                         ; $6F8C: $2D
    db $FD                                        ; $6F8D: $FD
    inc b                                         ; $6F8E: $04
    dec l                                         ; $6F8F: $2D
    dec b                                         ; $6F90: $05
    ld b, $2F                                     ; $6F91: $06 $2F
    dec c                                         ; $6F93: $0D
    ld [$1535], sp                                ; $6F94: $08 $35 $15
    ld a, [bc]                                    ; $6F97: $0A
    dec a                                         ; $6F98: $3D
    db $FD                                        ; $6F99: $FD
    inc c                                         ; $6F9A: $0C
    dec a                                         ; $6F9B: $3D
    dec b                                         ; $6F9C: $05
    ld c, $3E                                     ; $6F9D: $0E $3E
    push af                                       ; $6F9F: $F5
    db $10                                        ; $6FA0: $10
    ccf                                           ; $6FA1: $3F
    dec c                                         ; $6FA2: $0D
    ld [de], a                                    ; $6FA3: $12
    nop                                           ; $6FA4: $00
    inc c                                         ; $6FA5: $0C
    nop                                           ; $6FA6: $00
    nop                                           ; $6FA7: $00
    ld e, h                                       ; $6FA8: $5C
    add hl, de                                    ; $6FA9: $19
    xor [hl]                                      ; $6FAA: $AE
    ld l, a                                       ; $6FAB: $6F
    inc bc                                        ; $6FAC: $03
    nop                                           ; $6FAD: $00
    add hl, bc                                    ; $6FAE: $09
    inc h                                         ; $6FAF: $24
    rst RST_20                                    ; $6FB0: $E7
    nop                                           ; $6FB1: $00
    dec l                                         ; $6FB2: $2D
    rst RST_28                                    ; $6FB3: $EF
    ld [bc], a                                    ; $6FB4: $02
    inc l                                         ; $6FB5: $2C

jr_008_6FB6:
    rst RST_30                                    ; $6FB6: $F7
    inc b                                         ; $6FB7: $04
    inc l                                         ; $6FB8: $2C
    rst RST_38                                    ; $6FB9: $FF
    ld b, $30                                     ; $6FBA: $06 $30
    rlca                                          ; $6FBC: $07
    ld [$E736], sp                                ; $6FBD: $08 $36 $E7
    ld a, [bc]                                    ; $6FC0: $0A
    dec a                                         ; $6FC1: $3D
    rst RST_28                                    ; $6FC2: $EF
    inc c                                         ; $6FC3: $0C
    inc a                                         ; $6FC4: $3C
    rst RST_30                                    ; $6FC5: $F7
    ld c, $3C                                     ; $6FC6: $0E $3C
    rst RST_38                                    ; $6FC8: $FF
    stop                                          ; $6FC9: $10 $00
    inc c                                         ; $6FCB: $0C
    nop                                           ; $6FCC: $00
    jr nz, jr_008_702C                            ; $6FCD: $20 $5D

    add hl, de                                    ; $6FCF: $19
    call nc, $016F                                ; $6FD0: $D4 $6F $01
    nop                                           ; $6FD3: $00
    inc c                                         ; $6FD4: $0C
    dec h                                         ; $6FD5: $25
    ld [$2800], a                                 ; $6FD6: $EA $00 $28
    ldh a, [c]                                    ; $6FD9: $F2
    ld [bc], a                                    ; $6FDA: $02
    ld a, [hl+]                                   ; $6FDB: $2A
    ld a, [$2504]                                 ; $6FDC: $FA $04 $25
    ld [bc], a                                    ; $6FDF: $02
    ld b, $2C                                     ; $6FE0: $06 $2C
    ld a, [bc]                                    ; $6FE2: $0A
    ld [$E230], sp                                ; $6FE3: $08 $30 $E2
    ld a, [bc]                                    ; $6FE6: $0A
    dec [hl]                                      ; $6FE7: $35
    ld [$380C], a                                 ; $6FE8: $EA $0C $38
    ldh a, [c]                                    ; $6FEB: $F2
    ld c, $3A                                     ; $6FEC: $0E $3A
    ld a, [$3510]                                 ; $6FEE: $FA $10 $35
    ld [bc], a                                    ; $6FF1: $02
    ld [de], a                                    ; $6FF2: $12
    inc a                                         ; $6FF3: $3C
    ld a, [bc]                                    ; $6FF4: $0A
    inc d                                         ; $6FF5: $14
    jr z, @+$14                                   ; $6FF6: $28 $12

    ld d, $00                                     ; $6FF8: $16 $00
    inc c                                         ; $6FFA: $0C
    nop                                           ; $6FFB: $00
    nop                                           ; $6FFC: $00
    ld c, c                                       ; $6FFD: $49
    add hl, de                                    ; $6FFE: $19
    ld hl, $FA70                                  ; $6FFF: $21 $70 $FA
    nop                                           ; $7002: $00
    jr nz, jr_008_7011                            ; $7003: $20 $0C

    nop                                           ; $7005: $00
    nop                                           ; $7006: $00
    ld c, c                                       ; $7007: $49
    add hl, de                                    ; $7008: $19
    ld hl, $0670                                  ; $7009: $21 $70 $06
    nop                                           ; $700C: $00
    ld b, b                                       ; $700D: $40
    inc c                                         ; $700E: $0C
    nop                                           ; $700F: $00
    nop                                           ; $7010: $00

jr_008_7011:
    ld c, c                                       ; $7011: $49
    add hl, de                                    ; $7012: $19

jr_008_7013:
    ld hl, $FA70                                  ; $7013: $21 $70 $FA
    nop                                           ; $7016: $00
    ld h, b                                       ; $7017: $60
    inc c                                         ; $7018: $0C
    nop                                           ; $7019: $00
    nop                                           ; $701A: $00
    ld c, c                                       ; $701B: $49
    add hl, de                                    ; $701C: $19
    ld hl, $0870                                  ; $701D: $21 $70 $08
    ld a, [bc]                                    ; $7020: $0A
    add hl, bc                                    ; $7021: $09
    jr z, jr_008_7013                             ; $7022: $28 $EF

    nop                                           ; $7024: $00
    dec hl                                        ; $7025: $2B
    rst RST_30                                    ; $7026: $F7
    ld [bc], a                                    ; $7027: $02
    add hl, hl                                    ; $7028: $29
    rst RST_38                                    ; $7029: $FF
    inc b                                         ; $702A: $04
    add hl, hl                                    ; $702B: $29

jr_008_702C:
    rlca                                          ; $702C: $07
    ld b, $2C                                     ; $702D: $06 $2C
    rrca                                          ; $702F: $0F
    ld [$F71B], sp                                ; $7030: $08 $1B $F7
    ld a, [bc]                                    ; $7033: $0A
    add hl, sp                                    ; $7034: $39
    rst RST_38                                    ; $7035: $FF
    inc c                                         ; $7036: $0C
    add hl, sp                                    ; $7037: $39
    rlca                                          ; $7038: $07
    ld c, $3C                                     ; $7039: $0E $3C
    rrca                                          ; $703B: $0F
    stop                                          ; $703C: $10 $00
    inc c                                         ; $703E: $0C
    nop                                           ; $703F: $00
    jr nz, jr_008_708C                            ; $7040: $20 $4A

    add hl, de                                    ; $7042: $19
    ld l, a                                       ; $7043: $6F
    ld [hl], b                                    ; $7044: $70
    rst RST_38                                    ; $7045: $FF
    ld [$0C00], sp                                ; $7046: $08 $00 $0C
    dec b                                         ; $7049: $05
    jr nz, jr_008_7096                            ; $704A: $20 $4A

    add hl, de                                    ; $704C: $19
    ld l, a                                       ; $704D: $6F
    ld [hl], b                                    ; $704E: $70
    rst RST_38                                    ; $704F: $FF
    ld [$0C20], sp                                ; $7050: $08 $20 $0C
    nop                                           ; $7053: $00
    jr nz, @+$4C                                  ; $7054: $20 $4A

    add hl, de                                    ; $7056: $19
    ld l, a                                       ; $7057: $6F
    ld [hl], b                                    ; $7058: $70
    ld bc, $4008                                  ; $7059: $01 $08 $40
    ld bc, $2000                                  ; $705C: $01 $00 $20
    ld c, d                                       ; $705F: $4A
    add hl, de                                    ; $7060: $19
    ld l, a                                       ; $7061: $6F
    ld [hl], b                                    ; $7062: $70
    rst RST_38                                    ; $7063: $FF
    rst RST_30                                    ; $7064: $F7
    ld h, b                                       ; $7065: $60
    ld bc, $2000                                  ; $7066: $01 $00 $20
    ld c, d                                       ; $7069: $4A

jr_008_706A:
    add hl, de                                    ; $706A: $19
    ld l, a                                       ; $706B: $6F

jr_008_706C:
    ld [hl], b                                    ; $706C: $70
    ld bc, $07F7                                  ; $706D: $01 $F7 $07
    jr jr_008_706A                                ; $7070: $18 $F8

    nop                                           ; $7072: $00
    jr z, jr_008_706C                             ; $7073: $28 $F7

    ld [bc], a                                    ; $7075: $02
    stop                                          ; $7076: $10 $00
    inc b                                         ; $7078: $04
    jr nz, @+$01                                  ; $7079: $20 $FF

    ld b, $30                                     ; $707B: $06 $30
    rst RST_38                                    ; $707D: $FF
    ld [$0715], sp                                ; $707E: $08 $15 $07
    ld a, [bc]                                    ; $7081: $0A
    dec h                                         ; $7082: $25
    rlca                                          ; $7083: $07
    inc c                                         ; $7084: $0C
    nop                                           ; $7085: $00
    inc c                                         ; $7086: $0C
    nop                                           ; $7087: $00
    and b                                         ; $7088: $A0
    ld e, [hl]                                    ; $7089: $5E
    add hl, de                                    ; $708A: $19
    adc a                                         ; $708B: $8F

jr_008_708C:
    ld [hl], b                                    ; $708C: $70
    ld bc, $0900                                  ; $708D: $01 $00 $09
    dec h                                         ; $7090: $25
    rst RST_18                                    ; $7091: $DF
    nop                                           ; $7092: $00
    ld l, $E7                                     ; $7093: $2E $E7
    ld [bc], a                                    ; $7095: $02

jr_008_7096:
    dec l                                         ; $7096: $2D
    rst RST_28                                    ; $7097: $EF
    inc b                                         ; $7098: $04
    dec l                                         ; $7099: $2D
    rst RST_30                                    ; $709A: $F7
    ld b, $2D                                     ; $709B: $06 $2D
    rst RST_38                                    ; $709D: $FF
    ld [$0730], sp                                ; $709E: $08 $30 $07
    ld a, [bc]                                    ; $70A1: $0A
    dec a                                         ; $70A2: $3D
    rst RST_28                                    ; $70A3: $EF
    inc c                                         ; $70A4: $0C
    dec a                                         ; $70A5: $3D
    rst RST_30                                    ; $70A6: $F7
    ld c, $3D                                     ; $70A7: $0E $3D
    rst RST_38                                    ; $70A9: $FF
    stop                                          ; $70AA: $10 $00
    inc c                                         ; $70AC: $0C
    nop                                           ; $70AD: $00
    ret nz                                        ; $70AE: $C0

    ld e, a                                       ; $70AF: $5F
    add hl, de                                    ; $70B0: $19
    or l                                          ; $70B1: $B5
    ld [hl], b                                    ; $70B2: $70
    ld [bc], a                                    ; $70B3: $02
    nop                                           ; $70B4: $00
    ld [$EF2B], sp                                ; $70B5: $08 $2B $EF
    nop                                           ; $70B8: $00
    add hl, hl                                    ; $70B9: $29
    rst RST_30                                    ; $70BA: $F7
    ld [bc], a                                    ; $70BB: $02
    add hl, hl                                    ; $70BC: $29
    rst RST_38                                    ; $70BD: $FF
    inc b                                         ; $70BE: $04
    dec hl                                        ; $70BF: $2B
    rlca                                          ; $70C0: $07
    ld b, $39                                     ; $70C1: $06 $39
    rst RST_30                                    ; $70C3: $F7
    ld [$FF39], sp                                ; $70C4: $08 $39 $FF
    ld a, [bc]                                    ; $70C7: $0A
    dec sp                                        ; $70C8: $3B
    rlca                                          ; $70C9: $07
    inc c                                         ; $70CA: $0C
    daa                                           ; $70CB: $27
    db $ED                                        ; $70CC: $ED
    ld c, $00                                     ; $70CD: $0E $00
    inc c                                         ; $70CF: $0C
    nop                                           ; $70D0: $00
    ret nz                                        ; $70D1: $C0

    ld h, b                                       ; $70D2: $60
    add hl, de                                    ; $70D3: $19
    ret c                                         ; $70D4: $D8

    ld [hl], b                                    ; $70D5: $70
    ld bc, $0900                                  ; $70D6: $01 $00 $09
    dec l                                         ; $70D9: $2D
    rst RST_20                                    ; $70DA: $E7
    nop                                           ; $70DB: $00
    ld l, $EF                                     ; $70DC: $2E $EF
    ld [bc], a                                    ; $70DE: $02
    dec l                                         ; $70DF: $2D
    rst RST_30                                    ; $70E0: $F7
    inc b                                         ; $70E1: $04
    dec l                                         ; $70E2: $2D
    rst RST_38                                    ; $70E3: $FF
    ld b, $2F                                     ; $70E4: $06 $2F
    rlca                                          ; $70E6: $07
    ld [$EF3E], sp                                ; $70E7: $08 $3E $EF
    ld a, [bc]                                    ; $70EA: $0A
    dec a                                         ; $70EB: $3D
    rst RST_30                                    ; $70EC: $F7
    inc c                                         ; $70ED: $0C
    dec a                                         ; $70EE: $3D
    rst RST_38                                    ; $70EF: $FF
    ld c, $3F                                     ; $70F0: $0E $3F
    rlca                                          ; $70F2: $07
    stop                                          ; $70F3: $10 $00
    inc c                                         ; $70F5: $0C
    nop                                           ; $70F6: $00
    ldh [$FF61], a                                ; $70F7: $E0 $61
    add hl, de                                    ; $70F9: $19
    cp $70                                        ; $70FA: $FE $70
    ld bc, $0900                                  ; $70FC: $01 $00 $09
    cpl                                           ; $70FF: $2F
    rst RST_28                                    ; $7100: $EF
    nop                                           ; $7101: $00
    dec l                                         ; $7102: $2D
    rst RST_30                                    ; $7103: $F7
    ld [bc], a                                    ; $7104: $02
    dec l                                         ; $7105: $2D
    rst RST_38                                    ; $7106: $FF
    inc b                                         ; $7107: $04
    dec l                                         ; $7108: $2D
    rlca                                          ; $7109: $07
    ld b, $25                                     ; $710A: $06 $25
    rrca                                          ; $710C: $0F
    ld [$E737], sp                                ; $710D: $08 $37 $E7
    ld a, [bc]                                    ; $7110: $0A
    dec a                                         ; $7111: $3D
    rst RST_30                                    ; $7112: $F7
    inc c                                         ; $7113: $0C
    dec a                                         ; $7114: $3D
    rst RST_38                                    ; $7115: $FF
    ld c, $3D                                     ; $7116: $0E $3D
    rlca                                          ; $7118: $07
    stop                                          ; $7119: $10 $00
    inc c                                         ; $711B: $0C
    nop                                           ; $711C: $00
    nop                                           ; $711D: $00
    ld h, e                                       ; $711E: $63
    add hl, de                                    ; $711F: $19
    ld l, $71                                     ; $7120: $2E $71
    inc bc                                        ; $7122: $03
    nop                                           ; $7123: $00
    nop                                           ; $7124: $00
    inc c                                         ; $7125: $0C
    dec b                                         ; $7126: $05
    nop                                           ; $7127: $00
    ld h, e                                       ; $7128: $63
    add hl, de                                    ; $7129: $19
    ld l, $71                                     ; $712A: $2E $71
    inc bc                                        ; $712C: $03
    nop                                           ; $712D: $00
    add hl, bc                                    ; $712E: $09
    inc sp                                        ; $712F: $33
    rst RST_18                                    ; $7130: $DF
    nop                                           ; $7131: $00
    dec l                                         ; $7132: $2D
    rst RST_20                                    ; $7133: $E7
    ld [bc], a                                    ; $7134: $02
    add hl, hl                                    ; $7135: $29
    rst RST_28                                    ; $7136: $EF
    inc b                                         ; $7137: $04
    daa                                           ; $7138: $27
    rst RST_30                                    ; $7139: $F7
    ld b, $2D                                     ; $713A: $06 $2D
    rst RST_38                                    ; $713C: $FF
    ld [$E73D], sp                                ; $713D: $08 $3D $E7
    ld a, [bc]                                    ; $7140: $0A
    add hl, sp                                    ; $7141: $39
    rst RST_28                                    ; $7142: $EF
    inc c                                         ; $7143: $0C
    scf                                           ; $7144: $37
    rst RST_30                                    ; $7145: $F7
    ld c, $1D                                     ; $7146: $0E $1D
    rst RST_38                                    ; $7148: $FF
    db $10                                        ; $7149: $10
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

Call_008_7B5B:
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
