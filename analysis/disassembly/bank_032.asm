; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $032", ROMX[$4000], BANK[$32]

    adc c                                         ; $4000: $89
    ld b, b                                       ; $4001: $40
    ld l, d                                       ; $4002: $6A
    rst RST_38                                    ; $4003: $FF
    rlca                                          ; $4004: $07
    nop                                           ; $4005: $00
    ld hl, sp+$00                                 ; $4006: $F8 $00
    nop                                           ; $4008: $00
    nop                                           ; $4009: $00
    pop af                                        ; $400A: $F1
    xor l                                         ; $400B: $AD
    nop                                           ; $400C: $00
    rst RST_20                                    ; $400D: $E7
    ld b, $F3                                     ; $400E: $06 $F3
    nop                                           ; $4010: $00
    ld a, c                                       ; $4011: $79
    cp $00                                        ; $4012: $FE $00
    or l                                          ; $4014: $B5
    call $0227                                    ; $4015: $CD $27 $02
    ld e, c                                       ; $4018: $59
    ld a, $00                                     ; $4019: $3E $00
    db $FC                                        ; $401B: $FC
    inc b                                         ; $401C: $04
    ld [hl], l                                    ; $401D: $75
    ld sp, hl                                     ; $401E: $F9
    nop                                           ; $401F: $00
    ret                                           ; $4020: $C9


    ld bc, $00F1                                  ; $4021: $01 $F1 $00
    di                                            ; $4024: $F3
    nop                                           ; $4025: $00
    halt                                          ; $4026: $76
    inc sp                                        ; $4027: $33
    nop                                           ; $4028: $00
    db $FD                                        ; $4029: $FD
    inc bc                                        ; $402A: $03
    ld a, a                                       ; $402B: $7F
    ld [bc], a                                    ; $402C: $02
    ld c, l                                       ; $402D: $4D
    add hl, sp                                    ; $402E: $39
    xor d                                         ; $402F: $AA
    nop                                           ; $4030: $00
    add hl, de                                    ; $4031: $19
    nop                                           ; $4032: $00
    sbc c                                         ; $4033: $99
    nop                                           ; $4034: $00
    sub e                                         ; $4035: $93
    ld [bc], a                                    ; $4036: $02
    rst RST_00                                    ; $4037: $C7
    jp c, $8D00                                   ; $4038: $DA $00 $8D

    cp $02                                        ; $403B: $FE $02
    add hl, hl                                    ; $403D: $29
    ret nz                                        ; $403E: $C0

    nop                                           ; $403F: $00
    sbc a                                         ; $4040: $9F
    db $ED                                        ; $4041: $ED
    nop                                           ; $4042: $00
    dec sp                                        ; $4043: $3B
    inc bc                                        ; $4044: $03
    rst RST_08                                    ; $4045: $CF
    nop                                           ; $4046: $00
    ld e, c                                       ; $4047: $59
    ccf                                           ; $4048: $3F
    nop                                           ; $4049: $00
    ld l, [hl]                                    ; $404A: $6E
    add b                                         ; $404B: $80
    nop                                           ; $404C: $00
    ld l, l                                       ; $404D: $6D
    ld c, a                                       ; $404E: $4F
    ld [bc], a                                    ; $404F: $02
    add hl, hl                                    ; $4050: $29
    ld a, c                                       ; $4051: $79
    ld a, $AA                                     ; $4052: $3E $AA
    nop                                           ; $4054: $00
    ld a, [hl]                                    ; $4055: $7E
    nop                                           ; $4056: $00
    cp $00                                        ; $4057: $FE $00
    db $FC                                        ; $4059: $FC
    inc b                                         ; $405A: $04
    ld hl, sp-$51                                 ; $405B: $F8 $AF
    nop                                           ; $405D: $00
    sbc c                                         ; $405E: $99
    nop                                           ; $405F: $00
    add hl, sp                                    ; $4060: $39
    nop                                           ; $4061: $00
    db $FD                                        ; $4062: $FD
    inc bc                                        ; $4063: $03
    jp hl                                         ; $4064: $E9


    xor d                                         ; $4065: $AA
    ld bc, $047F                                  ; $4066: $01 $7F $04
    sbc h                                         ; $4069: $9C
    nop                                           ; $406A: $00
    inc c                                         ; $406B: $0C
    nop                                           ; $406C: $00
    ld c, h                                       ; $406D: $4C
    xor [hl]                                      ; $406E: $AE
    nop                                           ; $406F: $00
    ret                                           ; $4070: $C9


    ld [bc], a                                    ; $4071: $02
    db $E3                                        ; $4072: $E3
    nop                                           ; $4073: $00
    rst RST_28                                    ; $4074: $EF
    dec b                                         ; $4075: $05
    rst RST_20                                    ; $4076: $E7
    xor e                                         ; $4077: $AB
    nop                                           ; $4078: $00
    pop af                                        ; $4079: $F1
    nop                                           ; $407A: $00
    db $FC                                        ; $407B: $FC
    nop                                           ; $407C: $00
    cp $00                                        ; $407D: $FE $00
    add hl, de                                    ; $407F: $19
    cp d                                          ; $4080: $BA
    add hl, sp                                    ; $4081: $39
    add a                                         ; $4082: $87
    nop                                           ; $4083: $00
    xor a                                         ; $4084: $AF
    inc bc                                        ; $4085: $03
    sbc h                                         ; $4086: $9C
    nop                                           ; $4087: $00
    sbc a                                         ; $4088: $9F
    xor l                                         ; $4089: $AD
    inc b                                         ; $408A: $04
    jr c, jr_032_408D                             ; $408B: $38 $00

jr_032_408D:
    ccf                                           ; $408D: $3F
    ld [bc], a                                    ; $408E: $02
    add hl, sp                                    ; $408F: $39
    rst RST_08                                    ; $4090: $CF
    nop                                           ; $4091: $00
    db $DD                                        ; $4092: $DD
    rst RST_08                                    ; $4093: $CF
    dec b                                         ; $4094: $05
    inc bc                                        ; $4095: $03
    nop                                           ; $4096: $00
    cp e                                          ; $4097: $BB
    ld bc, $0001                                  ; $4098: $01 $01 $00
    db $DD                                        ; $409B: $DD
    dec a                                         ; $409C: $3D
    ld bc, $0080                                  ; $409D: $01 $80 $00
    rst RST_18                                    ; $40A0: $DF
    inc bc                                        ; $40A1: $03
    rst RST_20                                    ; $40A2: $E7
    nop                                           ; $40A3: $00
    ld [hl], l                                    ; $40A4: $75
    nop                                           ; $40A5: $00
    nop                                           ; $40A6: $00
    add hl, de                                    ; $40A7: $19
    ld bc, $00E0                                  ; $40A8: $01 $E0 $00
    add a                                         ; $40AB: $87
    nop                                           ; $40AC: $00
    ld e, l                                       ; $40AD: $5D
    daa                                           ; $40AE: $27
    ld b, $8C                                     ; $40AF: $06 $8C
    nop                                           ; $40B1: $00
    rst RST_28                                    ; $40B2: $EF
    ld bc, $00FC                                  ; $40B3: $01 $FC $00
    ld l, e                                       ; $40B6: $6B
    inc a                                         ; $40B7: $3C
    nop                                           ; $40B8: $00
    add hl, de                                    ; $40B9: $19
    call z, $6400                                 ; $40BA: $CC $00 $64
    nop                                           ; $40BD: $00
    add hl, sp                                    ; $40BE: $39
    ld d, a                                       ; $40BF: $57
    sbc h                                         ; $40C0: $9C
    inc b                                         ; $40C1: $04
    ld a, $00                                     ; $40C2: $3E $00
    ld a, a                                       ; $40C4: $7F
    nop                                           ; $40C5: $00
    rst RST_28                                    ; $40C6: $EF
    rlca                                          ; $40C7: $07
    xor e                                         ; $40C8: $AB
    dec b                                         ; $40C9: $05
    ld sp, hl                                     ; $40CA: $F9
    inc b                                         ; $40CB: $04
    ld [hl], e                                    ; $40CC: $73
    nop                                           ; $40CD: $00
    rlca                                          ; $40CE: $07
    nop                                           ; $40CF: $00
    adc a                                         ; $40D0: $8F
    xor d                                         ; $40D1: $AA
    ld bc, $00C1                                  ; $40D2: $01 $C1 $00
    db $FC                                        ; $40D5: $FC
    nop                                           ; $40D6: $00
    sbc a                                         ; $40D7: $9F
    inc b                                         ; $40D8: $04
    add b                                         ; $40D9: $80
    rst RST_30                                    ; $40DA: $F7
    nop                                           ; $40DB: $00
    add hl, de                                    ; $40DC: $19
    adc e                                         ; $40DD: $8B
    add hl, hl                                    ; $40DE: $29
    ret nz                                        ; $40DF: $C0

    nop                                           ; $40E0: $00
    rst RST_28                                    ; $40E1: $EF
    ld bc, $F95B                                  ; $40E2: $01 $5B $F9
    nop                                           ; $40E5: $00
    ld a, c                                       ; $40E6: $79
    nop                                           ; $40E7: $00
    add hl, de                                    ; $40E8: $19
    ldh [rP1], a                                  ; $40E9: $E0 $00
    dec sp                                        ; $40EB: $3B
    ld d, a                                       ; $40EC: $57
    add hl, sp                                    ; $40ED: $39
    inc b                                         ; $40EE: $04
    inc a                                         ; $40EF: $3C
    nop                                           ; $40F0: $00
    ld a, [hl]                                    ; $40F1: $7E
    nop                                           ; $40F2: $00
    rst RST_28                                    ; $40F3: $EF
    ld bc, $E75B                                  ; $40F4: $01 $5B $E7
    inc b                                         ; $40F7: $04
    ld bc, $2B00                                  ; $40F8: $01 $00 $2B
    adc a                                         ; $40FB: $8F
    nop                                           ; $40FC: $00
    sbc l                                         ; $40FD: $9D
    ld l, d                                       ; $40FE: $6A
    inc bc                                        ; $40FF: $03
    nop                                           ; $4100: $00
    rst RST_28                                    ; $4101: $EF
    add e                                         ; $4102: $83
    nop                                           ; $4103: $00
    di                                            ; $4104: $F3
    ld b, $C0                                     ; $4105: $06 $C0
    xor l                                         ; $4107: $AD
    nop                                           ; $4108: $00
    sub e                                         ; $4109: $93
    nop                                           ; $410A: $00
    inc sp                                        ; $410B: $33
    ld [bc], a                                    ; $410C: $02
    add hl, hl                                    ; $410D: $29
    add $00                                       ; $410E: $C6 $00
    push de                                       ; $4110: $D5
    rst RST_28                                    ; $4111: $EF
    rlca                                          ; $4112: $07
    jr c, jr_032_4115                             ; $4113: $38 $00

jr_032_4115:
    ccf                                           ; $4115: $3F
    inc b                                         ; $4116: $04
    rra                                           ; $4117: $1F
    nop                                           ; $4118: $00
    ld l, [hl]                                    ; $4119: $6E
    rrca                                          ; $411A: $0F
    nop                                           ; $411B: $00
    dec sp                                        ; $411C: $3B
    ld a, a                                       ; $411D: $7F
    nop                                           ; $411E: $00

jr_032_411F:
    rst RST_08                                    ; $411F: $CF
    inc bc                                        ; $4120: $03
    pop bc                                        ; $4121: $C1
    xor [hl]                                      ; $4122: $AE
    nop                                           ; $4123: $00
    inc bc                                        ; $4124: $03
    nop                                           ; $4125: $00
    adc a                                         ; $4126: $8F
    nop                                           ; $4127: $00
    cp e                                          ; $4128: $BB
    dec b                                         ; $4129: $05
    sbc a                                         ; $412A: $9F
    push af                                       ; $412B: $F5
    nop                                           ; $412C: $00
    adc c                                         ; $412D: $89
    rst RST_18                                    ; $412E: $DF
    ld bc, $00F3                                  ; $412F: $01 $F3 $00
    ldh a, [c]                                    ; $4132: $F2
    nop                                           ; $4133: $00
    ld e, d                                       ; $4134: $5A
    ret nz                                        ; $4135: $C0

    nop                                           ; $4136: $00
    pop af                                        ; $4137: $F1
    nop                                           ; $4138: $00
    add hl, sp                                    ; $4139: $39
    db $E3                                        ; $413A: $E3
    ld [bc], a                                    ; $413B: $02
    jp Jump_000_00FD                              ; $413C: $C3 $FD $00


    ld l, c                                       ; $413F: $69
    ld bc, $EF59                                  ; $4140: $01 $59 $EF
    inc bc                                        ; $4143: $03
    rra                                           ; $4144: $1F
    nop                                           ; $4145: $00
    ld d, l                                       ; $4146: $55
    rst RST_08                                    ; $4147: $CF
    nop                                           ; $4148: $00
    rst RST_20                                    ; $4149: $E7
    ld b, $07                                     ; $414A: $06 $07
    nop                                           ; $414C: $00
    ld h, e                                       ; $414D: $63
    nop                                           ; $414E: $00
    ld e, [hl]                                    ; $414F: $5E
    ld h, c                                       ; $4150: $61
    nop                                           ; $4151: $00
    add hl, bc                                    ; $4152: $09
    nop                                           ; $4153: $00
    rst RST_18                                    ; $4154: $DF
    ld bc, $CCD9                                  ; $4155: $01 $D9 $CC
    xor l                                         ; $4158: $AD
    nop                                           ; $4159: $00
    ld bc, $C700                                  ; $415A: $01 $00 $C7
    nop                                           ; $415D: $00
    add hl, sp                                    ; $415E: $39
    adc a                                         ; $415F: $8F
    ld [bc], a                                    ; $4160: $02
    ld d, a                                       ; $4161: $57
    rrca                                          ; $4162: $0F
    nop                                           ; $4163: $00
    ld c, $00                                     ; $4164: $0E $00
    adc $00                                       ; $4166: $CE $00
    ld e, c                                       ; $4168: $59
    rst RST_28                                    ; $4169: $EF
    xor d                                         ; $416A: $AA
    inc bc                                        ; $416B: $03
    ld a, a                                       ; $416C: $7F
    nop                                           ; $416D: $00
    ld a, $04                                     ; $416E: $3E $04
    inc a                                         ; $4170: $3C
    ld [bc], a                                    ; $4171: $02
    jr c, jr_032_411F                             ; $4172: $38 $AB

    nop                                           ; $4174: $00
    ld a, b                                       ; $4175: $78
    nop                                           ; $4176: $00
    add hl, de                                    ; $4177: $19
    nop                                           ; $4178: $00
    add hl, sp                                    ; $4179: $39
    nop                                           ; $417A: $00
    rst RST_18                                    ; $417B: $DF
    xor d                                         ; $417C: $AA
    ld bc, $023F                                  ; $417D: $01 $3F $02
    ld a, a                                       ; $4180: $7F
    inc b                                         ; $4181: $04
    sbc h                                         ; $4182: $9C
    nop                                           ; $4183: $00
    inc c                                         ; $4184: $0C
    xor e                                         ; $4185: $AB
    nop                                           ; $4186: $00
    ld c, h                                       ; $4187: $4C
    nop                                           ; $4188: $00
    ret                                           ; $4189: $C9


    ld [bc], a                                    ; $418A: $02
    db $E3                                        ; $418B: $E3
    nop                                           ; $418C: $00
    rst RST_28                                    ; $418D: $EF
    xor d                                         ; $418E: $AA
    ld bc, $00E0                                  ; $418F: $01 $E0 $00
    cp $00                                        ; $4192: $FE $00
    rst RST_08                                    ; $4194: $CF
    inc b                                         ; $4195: $04
    ret nz                                        ; $4196: $C0

    db $EB                                        ; $4197: $EB
    nop                                           ; $4198: $00
    add hl, de                                    ; $4199: $19
    adc e                                         ; $419A: $8B
    rst RST_00                                    ; $419B: $C7
    nop                                           ; $419C: $00
    ldh a, [rP1]                                  ; $419D: $F0 $00
    rst RST_28                                    ; $419F: $EF
    xor l                                         ; $41A0: $AD
    ld bc, $007F                                  ; $41A1: $01 $7F $00
    ccf                                           ; $41A4: $3F
    nop                                           ; $41A5: $00
    dec sp                                        ; $41A6: $3B
    cp $00                                        ; $41A7: $FE $00
    ld d, l                                       ; $41A9: $55
    jr jr_032_41AC                                ; $41AA: $18 $00

jr_032_41AC:
    call z, $CF00                                 ; $41AC: $CC $00 $CF
    ld [bc], a                                    ; $41AF: $02
    sbc a                                         ; $41B0: $9F
    nop                                           ; $41B1: $00
    push de                                       ; $41B2: $D5
    adc l                                         ; $41B3: $8D
    dec b                                         ; $41B4: $05
    ld sp, hl                                     ; $41B5: $F9
    nop                                           ; $41B6: $00
    ldh a, [rP1]                                  ; $41B7: $F0 $00
    rst RST_20                                    ; $41B9: $E7
    nop                                           ; $41BA: $00
    ld l, d                                       ; $41BB: $6A
    adc a                                         ; $41BC: $8F
    nop                                           ; $41BD: $00
    sbc e                                         ; $41BE: $9B
    ld a, a                                       ; $41BF: $7F
    nop                                           ; $41C0: $00
    rra                                           ; $41C1: $1F
    nop                                           ; $41C2: $00
    rst RST_00                                    ; $41C3: $C7
    xor [hl]                                      ; $41C4: $AE
    nop                                           ; $41C5: $00
    pop af                                        ; $41C6: $F1
    nop                                           ; $41C7: $00
    db $FC                                        ; $41C8: $FC
    nop                                           ; $41C9: $00
    rst RST_28                                    ; $41CA: $EF
    ld bc, $B6CF                                  ; $41CB: $01 $CF $B6
    ld [bc], a                                    ; $41CE: $02
    nop                                           ; $41CF: $00
    nop                                           ; $41D0: $00
    add hl, de                                    ; $41D1: $19
    ret z                                         ; $41D2: $C8

    nop                                           ; $41D3: $00
    add hl, de                                    ; $41D4: $19
    sbc a                                         ; $41D5: $9F
    xor e                                         ; $41D6: $AB
    nop                                           ; $41D7: $00
    sub e                                         ; $41D8: $93
    nop                                           ; $41D9: $00
    daa                                           ; $41DA: $27
    nop                                           ; $41DB: $00
    jr nc, jr_032_41DE                            ; $41DC: $30 $00

jr_032_41DE:
    rst RST_18                                    ; $41DE: $DF
    xor l                                         ; $41DF: $AD
    dec b                                         ; $41E0: $05
    ld sp, hl                                     ; $41E1: $F9
    nop                                           ; $41E2: $00
    add hl, de                                    ; $41E3: $19
    nop                                           ; $41E4: $00
    add hl, de                                    ; $41E5: $19
    add hl, sp                                    ; $41E6: $39
    nop                                           ; $41E7: $00
    ld [hl], l                                    ; $41E8: $75
    sbc c                                         ; $41E9: $99
    nop                                           ; $41EA: $00
    add hl, de                                    ; $41EB: $19
    add hl, sp                                    ; $41EC: $39
    db $FC                                        ; $41ED: $FC
    nop                                           ; $41EE: $00
    ld e, $00                                     ; $41EF: $1E $00
    sbc $CF                                       ; $41F1: $DE $CF
    dec b                                         ; $41F3: $05
    di                                            ; $41F4: $F3
    nop                                           ; $41F5: $00
    xor c                                         ; $41F6: $A9
    cp e                                          ; $41F7: $BB
    inc bc                                        ; $41F8: $03
    sbc h                                         ; $41F9: $9C
    xor a                                         ; $41FA: $AF
    nop                                           ; $41FB: $00
    inc a                                         ; $41FC: $3C
    nop                                           ; $41FD: $00
    ld a, a                                       ; $41FE: $7F
    nop                                           ; $41FF: $00
    rst RST_08                                    ; $4200: $CF
    rst RST_38                                    ; $4201: $FF
    ld bc, $C077                                  ; $4202: $01 $77 $C0
    nop                                           ; $4205: $00
    dec hl                                        ; $4206: $2B
    dec b                                         ; $4207: $05
    ld hl, sp+$00                                 ; $4208: $F8 $00
    rst RST_08                                    ; $420A: $CF
    dec b                                         ; $420B: $05
    ld e, e                                       ; $420C: $5B
    rst RST_08                                    ; $420D: $CF
    ld [bc], a                                    ; $420E: $02
    inc bc                                        ; $420F: $03
    nop                                           ; $4210: $00
    dec hl                                        ; $4211: $2B
    rrca                                          ; $4212: $0F
    nop                                           ; $4213: $00
    ld a, e                                       ; $4214: $7B
    ld [hl], a                                    ; $4215: $77
    rlca                                          ; $4216: $07
    nop                                           ; $4217: $00
    rst RST_08                                    ; $4218: $CF
    rlca                                          ; $4219: $07
    nop                                           ; $421A: $00
    nop                                           ; $421B: $00
    ld c, a                                       ; $421C: $4F
    ld bc, $FC5D                                  ; $421D: $01 $5D $FC
    nop                                           ; $4220: $00
    pop bc                                        ; $4221: $C1
    nop                                           ; $4222: $00
    ld e, a                                       ; $4223: $5F
    ld bc, $04F8                                  ; $4224: $01 $F8 $04
    ld d, a                                       ; $4227: $57
    ld a, b                                       ; $4228: $78
    nop                                           ; $4229: $00
    add hl, sp                                    ; $422A: $39
    ld b, $3F                                     ; $422B: $06 $3F
    nop                                           ; $422D: $00
    ld e, c                                       ; $422E: $59
    ld a, c                                       ; $422F: $79
    push de                                       ; $4230: $D5
    rst RST_28                                    ; $4231: $EF
    inc bc                                        ; $4232: $03
    rst RST_20                                    ; $4233: $E7
    ld [bc], a                                    ; $4234: $02
    ldh [rP1], a                                  ; $4235: $E0 $00
    add e                                         ; $4237: $83
    nop                                           ; $4238: $00
    xor l                                         ; $4239: $AD
    add hl, hl                                    ; $423A: $29
    rst RST_00                                    ; $423B: $C7
    ld [bc], a                                    ; $423C: $02
    add a                                         ; $423D: $87
    ld [bc], a                                    ; $423E: $02
    ld c, c                                       ; $423F: $49
    and $00                                       ; $4240: $E6 $00
    push de                                       ; $4242: $D5
    rst RST_28                                    ; $4243: $EF
    dec b                                         ; $4244: $05
    jr jr_032_4247                                ; $4245: $18 $00

jr_032_4247:
    rst RST_08                                    ; $4247: $CF
    nop                                           ; $4248: $00
    adc $00                                       ; $4249: $CE $00
    ld l, e                                       ; $424B: $6B
    call z, $3904                                 ; $424C: $CC $04 $39
    sbc a                                         ; $424F: $9F
    nop                                           ; $4250: $00
    ccf                                           ; $4251: $3F
    nop                                           ; $4252: $00
    rst RST_08                                    ; $4253: $CF
    xor l                                         ; $4254: $AD
    ld bc, $02E7                                  ; $4255: $01 $E7 $02
    nop                                           ; $4258: $00
    nop                                           ; $4259: $00
    add hl, de                                    ; $425A: $19
    rlca                                          ; $425B: $07
    nop                                           ; $425C: $00
    or a                                          ; $425D: $B7
    ld c, e                                       ; $425E: $4B
    rst RST_00                                    ; $425F: $C7
    nop                                           ; $4260: $00
    dec sp                                        ; $4261: $3B
    rrca                                          ; $4262: $0F
    nop                                           ; $4263: $00
    rst RST_28                                    ; $4264: $EF
    ei                                            ; $4265: $FB
    ld d, a                                       ; $4266: $57
    and $00                                       ; $4267: $E6 $00
    add b                                         ; $4269: $80
    nop                                           ; $426A: $00
    db $E3                                        ; $426B: $E3
    nop                                           ; $426C: $00
    db $DB                                        ; $426D: $DB
    ld bc, $877D                                  ; $426E: $01 $7D $87
    ld [bc], a                                    ; $4271: $02
    ld c, c                                       ; $4272: $49
    ld bc, $01EF                                  ; $4273: $01 $EF $01
    cp $00                                        ; $4276: $FE $00
    ld d, l                                       ; $4278: $55
    ld a, $00                                     ; $4279: $3E $00
    sbc b                                         ; $427B: $98
    nop                                           ; $427C: $00
    sbc [hl]                                      ; $427D: $9E
    nop                                           ; $427E: $00
    sbc h                                         ; $427F: $9C
    ld [bc], a                                    ; $4280: $02
    ld d, l                                       ; $4281: $55
    sbc c                                         ; $4282: $99
    ld [bc], a                                    ; $4283: $02
    ccf                                           ; $4284: $3F
    nop                                           ; $4285: $00
    rrca                                          ; $4286: $0F
    nop                                           ; $4287: $00
    sbc a                                         ; $4288: $9F
    nop                                           ; $4289: $00
    push de                                       ; $428A: $D5
    rst RST_28                                    ; $428B: $EF
    ld bc, $007F                                  ; $428C: $01 $7F $00
    ld a, b                                       ; $428F: $78
    nop                                           ; $4290: $00
    ld e, $00                                     ; $4291: $1E $00
    ld d, l                                       ; $4293: $55
    ld [hl], e                                    ; $4294: $73
    nop                                           ; $4295: $00
    di                                            ; $4296: $F3
    ld [bc], a                                    ; $4297: $02
    add e                                         ; $4298: $83
    nop                                           ; $4299: $00
    ld sp, $5D00                                  ; $429A: $31 $00 $5D
    jr nc, jr_032_42A1                            ; $429D: $30 $02

    add h                                         ; $429F: $84
    nop                                           ; $42A0: $00

jr_032_42A1:
    rst RST_28                                    ; $42A1: $EF
    inc bc                                        ; $42A2: $03
    rst RST_08                                    ; $42A3: $CF
    nop                                           ; $42A4: $00
    ld [hl], l                                    ; $42A5: $75
    ld c, a                                       ; $42A6: $4F
    nop                                           ; $42A7: $00
    add hl, de                                    ; $42A8: $19
    rlca                                          ; $42A9: $07
    db $E4                                        ; $42AA: $E4
    nop                                           ; $42AB: $00
    pop hl                                        ; $42AC: $E1
    nop                                           ; $42AD: $00
    halt                                          ; $42AE: $76
    di                                            ; $42AF: $F3
    nop                                           ; $42B0: $00
    rst RST_18                                    ; $42B1: $DF
    dec b                                         ; $42B2: $05
    sbc [hl]                                      ; $42B3: $9E
    nop                                           ; $42B4: $00
    set 4, a                                      ; $42B5: $CB $E7
    db $ED                                        ; $42B7: $ED
    rlca                                          ; $42B8: $07
    nop                                           ; $42B9: $00
    cp a                                          ; $42BA: $BF
    ldh a, [c]                                    ; $42BB: $F2
    ld [bc], a                                    ; $42BC: $02
    add hl, hl                                    ; $42BD: $29
    ldh [rP1], a                                  ; $42BE: $E0 $00
    ld d, [hl]                                    ; $42C0: $56
    ld bc, $C700                                  ; $42C1: $01 $00 $C7
    nop                                           ; $42C4: $00
    sbc a                                         ; $42C5: $9F
    rlca                                          ; $42C6: $07
    nop                                           ; $42C7: $00
    rst RST_08                                    ; $42C8: $CF
    ld [$8900], a                                 ; $42C9: $EA $00 $89
    db $FD                                        ; $42CC: $FD
    ld a, a                                       ; $42CD: $7F
    ld [bc], a                                    ; $42CE: $02
    di                                            ; $42CF: $F3
    nop                                           ; $42D0: $00
    ldh a, [c]                                    ; $42D1: $F2
    xor l                                         ; $42D2: $AD
    nop                                           ; $42D3: $00
    ret nz                                        ; $42D4: $C0

    nop                                           ; $42D5: $00
    pop af                                        ; $42D6: $F1
    nop                                           ; $42D7: $00
    add hl, sp                                    ; $42D8: $39
    db $E3                                        ; $42D9: $E3
    ld [bc], a                                    ; $42DA: $02
    ld a, [hl]                                    ; $42DB: $7E
    jp Jump_032_6900                              ; $42DC: $C3 $00 $69


    ld bc, $FD59                                  ; $42DF: $01 $59 $FD
    dec b                                         ; $42E2: $05
    rra                                           ; $42E3: $1F
    xor d                                         ; $42E4: $AA
    nop                                           ; $42E5: $00
    rst RST_08                                    ; $42E6: $CF
    nop                                           ; $42E7: $00
    rst RST_20                                    ; $42E8: $E7
    ld b, $07                                     ; $42E9: $06 $07
    nop                                           ; $42EB: $00
    ld h, e                                       ; $42EC: $63
    xor a                                         ; $42ED: $AF
    nop                                           ; $42EE: $00
    ld h, c                                       ; $42EF: $61
    nop                                           ; $42F0: $00
    add hl, bc                                    ; $42F1: $09
    nop                                           ; $42F2: $00
    rst RST_18                                    ; $42F3: $DF
    ld bc, $6A99                                  ; $42F4: $01 $99 $6A
    nop                                           ; $42F7: $00
    nop                                           ; $42F8: $00
    set 4, b                                      ; $42F9: $CB $E0
    nop                                           ; $42FB: $00
    add a                                         ; $42FC: $87
    nop                                           ; $42FD: $00
    daa                                           ; $42FE: $27
    cp d                                          ; $42FF: $BA
    ld b, $8C                                     ; $4300: $06 $8C
    nop                                           ; $4302: $00
    rst RST_28                                    ; $4303: $EF
    inc bc                                        ; $4304: $03
    ld sp, hl                                     ; $4305: $F9
    nop                                           ; $4306: $00
    sbc c                                         ; $4307: $99
    xor e                                         ; $4308: $AB
    nop                                           ; $4309: $00
    ret                                           ; $430A: $C9


    nop                                           ; $430B: $00
    ld a, c                                       ; $430C: $79
    nop                                           ; $430D: $00
    add hl, sp                                    ; $430E: $39
    nop                                           ; $430F: $00
    add hl, sp                                    ; $4310: $39
    or $03                                        ; $4311: $F6 $03
    add hl, sp                                    ; $4313: $39
    ld e, c                                       ; $4314: $59
    call $02F2                                    ; $4315: $CD $F2 $02
    add hl, hl                                    ; $4318: $29
    nop                                           ; $4319: $00
    cp d                                          ; $431A: $BA
    nop                                           ; $431B: $00
    di                                            ; $431C: $F3
    nop                                           ; $431D: $00
    dec de                                        ; $431E: $1B
    ld bc, $0083                                  ; $431F: $01 $83 $00
    ld sp, $00AD                                  ; $4322: $31 $AD $00
    jr nc, jr_032_4329                            ; $4325: $30 $02

    add h                                         ; $4327: $84
    nop                                           ; $4328: $00

jr_032_4329:
    db $FD                                        ; $4329: $FD
    ld a, a                                       ; $432A: $7F
    ld [bc], a                                    ; $432B: $02
    ld e, e                                       ; $432C: $5B
    ldh a, [rP1]                                  ; $432D: $F0 $00
    cp $00                                        ; $432F: $FE $00
    ld c, c                                       ; $4331: $49
    ret nz                                        ; $4332: $C0

    nop                                           ; $4333: $00
    add hl, de                                    ; $4334: $19
    xor d                                         ; $4335: $AA
    add hl, sp                                    ; $4336: $39
    db $FC                                        ; $4337: $FC
    nop                                           ; $4338: $00
    ld hl, sp+$00                                 ; $4339: $F8 $00
    di                                            ; $433B: $F3
    nop                                           ; $433C: $00
    rst RST_20                                    ; $433D: $E7
    cp e                                          ; $433E: $BB
    nop                                           ; $433F: $00
    rst RST_08                                    ; $4340: $CF
    nop                                           ; $4341: $00
    db $FD                                        ; $4342: $FD
    dec b                                         ; $4343: $05
    ccf                                           ; $4344: $3F
    nop                                           ; $4345: $00
    cp c                                          ; $4346: $B9
    ld l, a                                       ; $4347: $6F
    rra                                           ; $4348: $1F
    nop                                           ; $4349: $00
    add hl, hl                                    ; $434A: $29
    ld a, a                                       ; $434B: $7F
    nop                                           ; $434C: $00
    ld e, c                                       ; $434D: $59
    add hl, de                                    ; $434E: $19
    add hl, sp                                    ; $434F: $39
    cp d                                          ; $4350: $BA
    ld bc, $0087                                  ; $4351: $01 $87 $00
    rst RST_18                                    ; $4354: $DF
    inc bc                                        ; $4355: $03
    pop bc                                        ; $4356: $C1
    nop                                           ; $4357: $00
    inc bc                                        ; $4358: $03
    cp e                                          ; $4359: $BB
    nop                                           ; $435A: $00
    adc a                                         ; $435B: $8F
    nop                                           ; $435C: $00
    cp e                                          ; $435D: $BB
    dec b                                         ; $435E: $05
    sbc a                                         ; $435F: $9F
    nop                                           ; $4360: $00
    adc c                                         ; $4361: $89
    rst RST_10                                    ; $4362: $D7
    rst RST_18                                    ; $4363: $DF
    ld bc, $00F9                                  ; $4364: $01 $F9 $00
    ret nz                                        ; $4367: $C0

    nop                                           ; $4368: $00
    add hl, de                                    ; $4369: $19
    ld bc, $F855                                  ; $436A: $01 $55 $F8
    nop                                           ; $436D: $00
    pop hl                                        ; $436E: $E1
    nop                                           ; $436F: $00
    ret                                           ; $4370: $C9


    ld b, $E2                                     ; $4371: $06 $E2
    nop                                           ; $4373: $00
    push de                                       ; $4374: $D5
    rst RST_28                                    ; $4375: $EF
    inc bc                                        ; $4376: $03
    ccf                                           ; $4377: $3F
    nop                                           ; $4378: $00
    rst RST_20                                    ; $4379: $E7
    nop                                           ; $437A: $00
    di                                            ; $437B: $F3
    nop                                           ; $437C: $00
    ld d, a                                       ; $437D: $57
    rra                                           ; $437E: $1F
    nop                                           ; $437F: $00
    call z, $E600                                 ; $4380: $CC $00 $E6
    nop                                           ; $4383: $00
    ld c, c                                       ; $4384: $49
    ld bc, $CF7A                                  ; $4385: $01 $7A $CF
    nop                                           ; $4388: $00
    ld e, c                                       ; $4389: $59
    rst RST_18                                    ; $438A: $DF
    ld bc, $00FC                                  ; $438B: $01 $FC $00
    ld hl, sp-$26                                 ; $438E: $F8 $DA
    nop                                           ; $4390: $00
    jp hl                                         ; $4391: $E9


    rst RST_00                                    ; $4392: $C7
    nop                                           ; $4393: $00
    sbc c                                         ; $4394: $99
    ld a, a                                       ; $4395: $7F
    nop                                           ; $4396: $00
    ccf                                           ; $4397: $3F
    xor l                                         ; $4398: $AD
    nop                                           ; $4399: $00
    adc a                                         ; $439A: $8F
    nop                                           ; $439B: $00
    db $E3                                        ; $439C: $E3
    nop                                           ; $439D: $00
    ld a, c                                       ; $439E: $79
    cp $00                                        ; $439F: $FE $00
    rst RST_10                                    ; $43A1: $D7
    rst RST_28                                    ; $43A2: $EF
    ld bc, $00F9                                  ; $43A3: $01 $F9 $00
    ld a, c                                       ; $43A6: $79
    nop                                           ; $43A7: $00
    ld sp, hl                                     ; $43A8: $F9
    inc bc                                        ; $43A9: $03
    ld d, l                                       ; $43AA: $55
    db $E4                                        ; $43AB: $E4
    nop                                           ; $43AC: $00
    ldh [rP1], a                                  ; $43AD: $E0 $00
    ldh [c], a                                    ; $43AF: $E2
    nop                                           ; $43B0: $00
    add $00                                       ; $43B1: $C6 $00
    ld e, l                                       ; $43B3: $5D
    adc $00                                       ; $43B4: $CE $00
    ld c, a                                       ; $43B6: $4F
    nop                                           ; $43B7: $00
    rst RST_28                                    ; $43B8: $EF
    dec b                                         ; $43B9: $05
    db $FC                                        ; $43BA: $FC
    nop                                           ; $43BB: $00
    xor d                                         ; $43BC: $AA
    dec hl                                        ; $43BD: $2B
    rst RST_20                                    ; $43BE: $E7
    nop                                           ; $43BF: $00
    ld h, [hl]                                    ; $43C0: $66
    ld [bc], a                                    ; $43C1: $02
    ld c, h                                       ; $43C2: $4C
    ld [bc], a                                    ; $43C3: $02
    inc e                                         ; $43C4: $1C
    push de                                       ; $43C5: $D5
    nop                                           ; $43C6: $00
    rst RST_08                                    ; $43C7: $CF
    ld sp, hl                                     ; $43C8: $F9
    nop                                           ; $43C9: $00
    add hl, sp                                    ; $43CA: $39
    nop                                           ; $43CB: $00
    ccf                                           ; $43CC: $3F
    nop                                           ; $43CD: $00
    ld l, d                                       ; $43CE: $6A
    nop                                           ; $43CF: $00
    nop                                           ; $43D0: $00
    add hl, de                                    ; $43D1: $19
    jr nz, jr_032_43D4                            ; $43D2: $20 $00

jr_032_43D4:
    inc a                                         ; $43D4: $3C
    nop                                           ; $43D5: $00
    ld a, c                                       ; $43D6: $79
    xor d                                         ; $43D7: $AA
    nop                                           ; $43D8: $00
    ld c, a                                       ; $43D9: $4F
    nop                                           ; $43DA: $00
    sbc a                                         ; $43DB: $9F
    nop                                           ; $43DC: $00
    sbc [hl]                                      ; $43DD: $9E
    nop                                           ; $43DE: $00
    ret nz                                        ; $43DF: $C0

    db $ED                                        ; $43E0: $ED
    nop                                           ; $43E1: $00
    rst RST_38                                    ; $43E2: $FF
    cp c                                          ; $43E3: $B9
    jr nc, jr_032_43E6                            ; $43E4: $30 $00

jr_032_43E6:
    add hl, hl                                    ; $43E6: $29
    ld a, h                                       ; $43E7: $7C
    nop                                           ; $43E8: $00
    ld l, e                                       ; $43E9: $6B
    pop af                                        ; $43EA: $F1
    nop                                           ; $43EB: $00
    sbc c                                         ; $43EC: $99
    db $FC                                        ; $43ED: $FC
    nop                                           ; $43EE: $00
    ld sp, hl                                     ; $43EF: $F9
    inc b                                         ; $43F0: $04
    ld l, c                                       ; $43F1: $69
    ld l, d                                       ; $43F2: $6A
    cp $00                                        ; $43F3: $FE $00
    rst RST_38                                    ; $43F5: $FF
    db $E4                                        ; $43F6: $E4
    nop                                           ; $43F7: $00
    inc h                                         ; $43F8: $24
    nop                                           ; $43F9: $00
    ccf                                           ; $43FA: $3F
    or a                                          ; $43FB: $B7
    nop                                           ; $43FC: $00
    ld a, a                                       ; $43FD: $7F
    nop                                           ; $43FE: $00
    ld c, c                                       ; $43FF: $49
    rlca                                          ; $4400: $07
    nop                                           ; $4401: $00
    sbc a                                         ; $4402: $9F
    ld bc, $0F6B                                  ; $4403: $01 $6B $0F
    nop                                           ; $4406: $00
    ld c, a                                       ; $4407: $4F
    rst RST_00                                    ; $4408: $C7
    ld b, $CF                                     ; $4409: $06 $CF
    rlca                                          ; $440B: $07
    nop                                           ; $440C: $00
    ld [$FF9D], a                                 ; $440D: $EA $9D $FF
    ld bc, $00E7                                  ; $4410: $01 $E7 $00
    and $00                                       ; $4413: $E6 $00
    nop                                           ; $4415: $00
    or l                                          ; $4416: $B5
    nop                                           ; $4417: $00
    di                                            ; $4418: $F3
    nop                                           ; $4419: $00
    add hl, de                                    ; $441A: $19
    db $FC                                        ; $441B: $FC
    nop                                           ; $441C: $00
    add b                                         ; $441D: $80
    nop                                           ; $441E: $00
    ld e, [hl]                                    ; $441F: $5E
    ld a, $00                                     ; $4420: $3E $00
    ccf                                           ; $4422: $3F
    ld [bc], a                                    ; $4423: $02
    add hl, sp                                    ; $4424: $39
    rst RST_28                                    ; $4425: $EF
    inc bc                                        ; $4426: $03
    ld h, b                                       ; $4427: $60
    xor d                                         ; $4428: $AA
    nop                                           ; $4429: $00
    cp $00                                        ; $442A: $FE $00
    inc a                                         ; $442C: $3C
    nop                                           ; $442D: $00
    ld a, b                                       ; $442E: $78
    nop                                           ; $442F: $00
    di                                            ; $4430: $F3
    xor a                                         ; $4431: $AF
    nop                                           ; $4432: $00
    ld h, a                                       ; $4433: $67
    nop                                           ; $4434: $00
    ld a, a                                       ; $4435: $7F
    nop                                           ; $4436: $00
    adc l                                         ; $4437: $8D
    rst RST_18                                    ; $4438: $DF
    inc bc                                        ; $4439: $03
    ld e, d                                       ; $443A: $5A
    rra                                           ; $443B: $1F
    nop                                           ; $443C: $00
    ccf                                           ; $443D: $3F
    nop                                           ; $443E: $00
    add hl, hl                                    ; $443F: $29
    ld e, $00                                     ; $4440: $1E $00
    call z, $00AB                                 ; $4442: $CC $AB $00
    db $E4                                        ; $4445: $E4
    nop                                           ; $4446: $00
    rst RST_20                                    ; $4447: $E7
    ld [bc], a                                    ; $4448: $02
    rst RST_08                                    ; $4449: $CF
    nop                                           ; $444A: $00
    adc c                                         ; $444B: $89
    sub $DF                                       ; $444C: $D6 $DF
    ld bc, $00F9                                  ; $444E: $01 $F9 $00
    ldh a, [rP1]                                  ; $4451: $F0 $00
    sbc c                                         ; $4453: $99
    adc a                                         ; $4454: $8F
    or [hl]                                       ; $4455: $B6
    nop                                           ; $4456: $00
    ccf                                           ; $4457: $3F
    nop                                           ; $4458: $00
    ld e, c                                       ; $4459: $59
    ld a, a                                       ; $445A: $7F
    nop                                           ; $445B: $00
    ret                                           ; $445C: $C9


    rst RST_00                                    ; $445D: $C7
    xor a                                         ; $445E: $AF
    nop                                           ; $445F: $00
    pop af                                        ; $4460: $F1
    nop                                           ; $4461: $00
    db $FC                                        ; $4462: $FC
    nop                                           ; $4463: $00
    rst RST_28                                    ; $4464: $EF
    ld bc, $75D9                                  ; $4465: $01 $D9 $75
    nop                                           ; $4468: $00
    nop                                           ; $4469: $00
    add hl, de                                    ; $446A: $19
    ld bc, $00E0                                  ; $446B: $01 $E0 $00
    add a                                         ; $446E: $87
    nop                                           ; $446F: $00
    ld e, l                                       ; $4470: $5D
    daa                                           ; $4471: $27
    ld b, $8C                                     ; $4472: $06 $8C
    nop                                           ; $4474: $00
    rst RST_28                                    ; $4475: $EF
    dec b                                         ; $4476: $05
    jr nc, jr_032_4479                            ; $4477: $30 $00

jr_032_4479:
    ld d, l                                       ; $4479: $55
    sbc a                                         ; $447A: $9F
    nop                                           ; $447B: $00
    ld a, [hl]                                    ; $447C: $7E
    nop                                           ; $447D: $00
    ld a, $00                                     ; $447E: $3E $00
    sbc [hl]                                      ; $4480: $9E
    inc b                                         ; $4481: $04
    ld e, l                                       ; $4482: $5D
    ccf                                           ; $4483: $3F
    nop                                           ; $4484: $00
    ld a, a                                       ; $4485: $7F
    nop                                           ; $4486: $00
    rst RST_08                                    ; $4487: $CF
    inc bc                                        ; $4488: $03
    inc bc                                        ; $4489: $03
    nop                                           ; $448A: $00
    ld e, [hl]                                    ; $448B: $5E
    rlca                                          ; $448C: $07
    nop                                           ; $448D: $00
    ld e, $00                                     ; $448E: $1E $00
    sbc c                                         ; $4490: $99
    rlca                                          ; $4491: $07
    ld sp, hl                                     ; $4492: $F9
    add [hl]                                      ; $4493: $86
    push de                                       ; $4494: $D5
    nop                                           ; $4495: $00
    rst RST_18                                    ; $4496: $DF
    cp $00                                        ; $4497: $FE $00
    adc $00                                       ; $4499: $CE $00
    call z, $B500                                 ; $449B: $CC $00 $B5
    add hl, de                                    ; $449E: $19
    nop                                           ; $449F: $00
    nop                                           ; $44A0: $00
    add hl, de                                    ; $44A1: $19
    sbc [hl]                                      ; $44A2: $9E
    inc b                                         ; $44A3: $04
    ld [hl], $00                                  ; $44A4: $36 $00
    ld e, d                                       ; $44A6: $5A
    jr nc, jr_032_44A9                            ; $44A7: $30 $00

jr_032_44A9:
    ld a, b                                       ; $44A9: $78
    nop                                           ; $44AA: $00
    rst RST_38                                    ; $44AB: $FF
    ld c, a                                       ; $44AC: $4F
    ld [bc], a                                    ; $44AD: $02
    ld hl, sp-$56                                 ; $44AE: $F8 $AA
    nop                                           ; $44B0: $00
    ld a, a                                       ; $44B1: $7F
    nop                                           ; $44B2: $00
    ccf                                           ; $44B3: $3F
    nop                                           ; $44B4: $00
    rra                                           ; $44B5: $1F
    nop                                           ; $44B6: $00
    ld a, h                                       ; $44B7: $7C
    xor e                                         ; $44B8: $AB
    nop                                           ; $44B9: $00
    ld a, c                                       ; $44BA: $79
    nop                                           ; $44BB: $00
    ld [hl], e                                    ; $44BC: $73
    ld [bc], a                                    ; $44BD: $02
    ld [hl], d                                    ; $44BE: $72
    nop                                           ; $44BF: $00
    adc c                                         ; $44C0: $89
    ld [$03FF], a                                 ; $44C1: $EA $FF $03
    reti                                          ; $44C4: $D9


    inc sp                                        ; $44C5: $33
    inc b                                         ; $44C6: $04
    inc bc                                        ; $44C7: $03
    nop                                           ; $44C8: $00
    ld sp, $00B5                                  ; $44C9: $31 $B5 $00
    jr nc, jr_032_44CE                            ; $44CC: $30 $00

jr_032_44CE:
    add hl, sp                                    ; $44CE: $39
    ld h, a                                       ; $44CF: $67
    nop                                           ; $44D0: $00

Call_032_44D1:
    rst RST_08                                    ; $44D1: $CF
    nop                                           ; $44D2: $00
    add b                                         ; $44D3: $80
    cp e                                          ; $44D4: $BB
    ld a, [de]                                    ; $44D5: $1A
    nop                                           ; $44D6: $00
    halt                                          ; $44D7: $76
    rst RST_38                                    ; $44D8: $FF
    rrca                                          ; $44D9: $0F
    rrca                                          ; $44DA: $0F
    ld [bc], a                                    ; $44DB: $02
    cp $0A                                        ; $44DC: $FE $0A
    pop de                                        ; $44DE: $D1
    rra                                           ; $44DF: $1F
    or l                                          ; $44E0: $B5
    nop                                           ; $44E1: $00
    rrca                                          ; $44E2: $0F
    ld a, [bc]                                    ; $44E3: $0A
    pop af                                        ; $44E4: $F1
    ldh a, [rP1]                                  ; $44E5: $F0 $00
    ldh [rSC], a                                  ; $44E7: $E0 $02
    db $EB                                        ; $44E9: $EB
    ld d, c                                       ; $44EA: $51
    sub c                                         ; $44EB: $91
    dec b                                         ; $44EC: $05
    nop                                           ; $44ED: $00
    ld b, $C1                                     ; $44EE: $06 $C1
    inc b                                         ; $44F0: $04
    ld sp, hl                                     ; $44F1: $F9
    rst RST_10                                    ; $44F2: $D7
    sub c                                         ; $44F3: $91
    dec b                                         ; $44F4: $05
    ccf                                           ; $44F5: $3F
    nop                                           ; $44F6: $00
    rra                                           ; $44F7: $1F
    ld [bc], a                                    ; $44F8: $02
    ld d, c                                       ; $44F9: $51
    rst RST_30                                    ; $44FA: $F7
    or l                                          ; $44FB: $B5
    dec b                                         ; $44FC: $05
    cp $02                                        ; $44FD: $FE $02
    reti                                          ; $44FF: $D9


    rlca                                          ; $4500: $07
    nop                                           ; $4501: $00
    ld bc, $5500                                  ; $4502: $01 $00 $55
    nop                                           ; $4505: $00
    ld [bc], a                                    ; $4506: $02
    ret nz                                        ; $4507: $C0

    nop                                           ; $4508: $00
    cp $06                                        ; $4509: $FE $06
    db $FC                                        ; $450B: $FC
    nop                                           ; $450C: $00
    ld d, l                                       ; $450D: $55
    ld a, h                                       ; $450E: $7C
    nop                                           ; $450F: $00
    inc a                                         ; $4510: $3C
    nop                                           ; $4511: $00
    jr jr_032_4514                                ; $4512: $18 $00

jr_032_4514:
    rrca                                          ; $4514: $0F
    ld a, [bc]                                    ; $4515: $0A
    ld d, l                                       ; $4516: $55
    rra                                           ; $4517: $1F
    ld [bc], a                                    ; $4518: $02
    rst RST_38                                    ; $4519: $FF
    ld [$00C0], sp                                ; $451A: $08 $C0 $00
    add b                                         ; $451D: $80
    ld [bc], a                                    ; $451E: $02
    ld d, [hl]                                    ; $451F: $56
    pop bc                                        ; $4520: $C1
    ld [$0400], sp                                ; $4521: $08 $00 $04
    rst RST_38                                    ; $4524: $FF
    ld [$0FFF], sp                                ; $4525: $08 $FF $0F
    cp d                                          ; $4528: $BA
    nop                                           ; $4529: $00
    rlca                                          ; $452A: $07
    ld [bc], a                                    ; $452B: $02
    ld sp, hl                                     ; $452C: $F9
    dec b                                         ; $452D: $05
    ldh a, [rP1]                                  ; $452E: $F0 $00
    db $FC                                        ; $4530: $FC
    or l                                          ; $4531: $B5
    nop                                           ; $4532: $00
    cp $00                                        ; $4533: $FE $00
    ld sp, hl                                     ; $4535: $F9
    ld [$0000], sp                                ; $4536: $08 $00 $00
    inc b                                         ; $4539: $04
    ld e, l                                       ; $453A: $5D
    add b                                         ; $453B: $80
    nop                                           ; $453C: $00
    ret nz                                        ; $453D: $C0

    nop                                           ; $453E: $00
    ld sp, $1F71                                  ; $453F: $31 $71 $1F
    ld [bc], a                                    ; $4542: $02
    ld e, l                                       ; $4543: $5D
    ccf                                           ; $4544: $3F
    ld [bc], a                                    ; $4545: $02
    ld a, a                                       ; $4546: $7F
    nop                                           ; $4547: $00
    ld sp, $0F91                                  ; $4548: $31 $91 $0F
    nop                                           ; $454B: $00
    ld d, l                                       ; $454C: $55
    ret nz                                        ; $454D: $C0

    nop                                           ; $454E: $00
    rst RST_38                                    ; $454F: $FF
    inc c                                         ; $4550: $0C
    nop                                           ; $4551: $00
    nop                                           ; $4552: $00
    pop bc                                        ; $4553: $C1
    inc c                                         ; $4554: $0C
    xor [hl]                                      ; $4555: $AE
    pop af                                        ; $4556: $F1
    rst RST_38                                    ; $4557: $FF
    inc c                                         ; $4558: $0C
    rrca                                          ; $4559: $0F
    nop                                           ; $455A: $00
    db $FD                                        ; $455B: $FD
    rlca                                          ; $455C: $07
    ret nz                                        ; $455D: $C0

    or l                                          ; $455E: $B5
    nop                                           ; $455F: $00
    add b                                         ; $4560: $80
    ld [bc], a                                    ; $4561: $02
    ld d, c                                       ; $4562: $51
    cp $00                                        ; $4563: $FE $00
    db $FC                                        ; $4565: $FC
    nop                                           ; $4566: $00
    ld l, d                                       ; $4567: $6A
    ldh a, [rP1]                                  ; $4568: $F0 $00
    ld [hl], c                                    ; $456A: $71
    nop                                           ; $456B: $00
    ld [bc], a                                    ; $456C: $02
    inc bc                                        ; $456D: $03
    nop                                           ; $456E: $00
    rrca                                          ; $456F: $0F
    xor l                                         ; $4570: $AD
    nop                                           ; $4571: $00
    inc b                                         ; $4572: $04
    nop                                           ; $4573: $00
    ld b, $00                                     ; $4574: $06 $00
    ld d, c                                       ; $4576: $51
    rra                                           ; $4577: $1F
    nop                                           ; $4578: $00
    ld d, l                                       ; $4579: $55
    ccf                                           ; $457A: $3F
    nop                                           ; $457B: $00
    rst RST_38                                    ; $457C: $FF
    inc b                                         ; $457D: $04
    rlca                                          ; $457E: $07
    nop                                           ; $457F: $00
    inc bc                                        ; $4580: $03
    nop                                           ; $4581: $00
    ld d, a                                       ; $4582: $57
    ld bc, $8100                                  ; $4583: $01 $00 $81
    nop                                           ; $4586: $00
    jp $F500                                      ; $4587: $C3 $00 $F5


    rrca                                          ; $458A: $0F
    ld d, l                                       ; $458B: $55
    pop bc                                        ; $458C: $C1
    inc b                                         ; $458D: $04
    ret nz                                        ; $458E: $C0

    nop                                           ; $458F: $00
    ldh [rSC], a                                  ; $4590: $E0 $02
    ldh a, [rP1]                                  ; $4592: $F0 $00
    ld d, [hl]                                    ; $4594: $56
    db $FC                                        ; $4595: $FC
    nop                                           ; $4596: $00
    rst RST_38                                    ; $4597: $FF
    ld b, $00                                     ; $4598: $06 $00
    ld b, $F7                                     ; $459A: $06 $F7
    inc bc                                        ; $459C: $03
    cp a                                          ; $459D: $BF
    nop                                           ; $459E: $00
    ld bc, $5102                                  ; $459F: $01 $02 $51
    rst RST_30                                    ; $45A2: $F7
    rrca                                          ; $45A3: $0F
    rrca                                          ; $45A4: $0F

jr_032_45A5:
    rrca                                          ; $45A5: $0F
    rst RST_38                                    ; $45A6: $FF
    rrca                                          ; $45A7: $0F
    rrca                                          ; $45A8: $0F
    rrca                                          ; $45A9: $0F
    rrca                                          ; $45AA: $0F
    rrca                                          ; $45AB: $0F
    rrca                                          ; $45AC: $0F
    rrca                                          ; $45AD: $0F
    rrca                                          ; $45AE: $0F
    rst RST_38                                    ; $45AF: $FF
    rrca                                          ; $45B0: $0F
    rrca                                          ; $45B1: $0F
    rrca                                          ; $45B2: $0F
    rrca                                          ; $45B3: $0F
    rrca                                          ; $45B4: $0F
    rrca                                          ; $45B5: $0F
    rrca                                          ; $45B6: $0F
    rrca                                          ; $45B7: $0F
    rst RST_38                                    ; $45B8: $FF
    rrca                                          ; $45B9: $0F
    rrca                                          ; $45BA: $0F
    rrca                                          ; $45BB: $0F
    rrca                                          ; $45BC: $0F
    rrca                                          ; $45BD: $0F
    rrca                                          ; $45BE: $0F
    rrca                                          ; $45BF: $0F
    rrca                                          ; $45C0: $0F
    ld hl, sp+$0F                                 ; $45C1: $F8 $0F
    rrca                                          ; $45C3: $0F
    rrca                                          ; $45C4: $0F
    rrca                                          ; $45C5: $0F
    rlca                                          ; $45C6: $07
    ld b, d                                       ; $45C7: $42
    nop                                           ; $45C8: $00
    ld d, c                                       ; $45C9: $51
    rst RST_38                                    ; $45CA: $FF
    add hl, bc                                    ; $45CB: $09
    cp $00                                        ; $45CC: $FE $00
    db $FD                                        ; $45CE: $FD
    db $FC                                        ; $45CF: $FC
    ei                                            ; $45D0: $FB
    ld d, b                                       ; $45D1: $50
    ret nz                                        ; $45D2: $C0

    jr nz, @+$33                                  ; $45D3: $20 $31

    ld hl, sp-$09                                 ; $45D5: $F8 $F7
    ldh a, [$FFCF]                                ; $45D7: $F0 $CF
    ldh [$FF9F], a                                ; $45D9: $E0 $9F
    rra                                           ; $45DB: $1F
    add b                                         ; $45DC: $80
    ld a, a                                       ; $45DD: $7F
    nop                                           ; $45DE: $00
    ret nz                                        ; $45DF: $C0

    ld de, $5000                                  ; $45E0: $11 $00 $50
    nop                                           ; $45E3: $00
    jr nz, jr_032_45A5                            ; $45E4: $20 $BF

    ccf                                           ; $45E6: $3F
    ret nc                                        ; $45E7: $D0

    rrca                                          ; $45E8: $0F
    rst RST_30                                    ; $45E9: $F7
    rlca                                          ; $45EA: $07
    ei                                            ; $45EB: $FB
    inc bc                                        ; $45EC: $03
    ld l, e                                       ; $45ED: $6B
    db $FC                                        ; $45EE: $FC
    db $F4                                        ; $45EF: $F4
    dec bc                                        ; $45F0: $0B
    rra                                           ; $45F1: $1F
    nop                                           ; $45F2: $00
    rst RST_28                                    ; $45F3: $EF
    db $FC                                        ; $45F4: $FC
    rrca                                          ; $45F5: $0F
    xor l                                         ; $45F6: $AD
    inc c                                         ; $45F7: $0C
    cp $00                                        ; $45F8: $FE $00
    db $FC                                        ; $45FA: $FC
    ld [bc], a                                    ; $45FB: $02
    ld sp, hl                                     ; $45FC: $F9
    ld a, a                                       ; $45FD: $7F
    nop                                           ; $45FE: $00
    ld l, e                                       ; $45FF: $6B
    ccf                                           ; $4600: $3F
    ld [bc], a                                    ; $4601: $02
    ld sp, hl                                     ; $4602: $F9
    ld hl, sp+$00                                 ; $4603: $F8 $00
    ldh a, [rSC]                                  ; $4605: $F0 $02
    ld sp, hl                                     ; $4607: $F9
    ld [hl], l                                    ; $4608: $75
    nop                                           ; $4609: $00
    inc b                                         ; $460A: $04
    rst RST_38                                    ; $460B: $FF
    ld sp, hl                                     ; $460C: $F9
    ld a, a                                       ; $460D: $7F
    nop                                           ; $460E: $00
    ccf                                           ; $460F: $3F
    ld [bc], a                                    ; $4610: $02
    push de                                       ; $4611: $D5
    ld sp, hl                                     ; $4612: $F9
    ld [bc], a                                    ; $4613: $02

jr_032_4614:
    ld hl, sp+$00                                 ; $4614: $F8 $00
    rst RST_30                                    ; $4616: $F7

jr_032_4617:
    jr nc, jr_032_4617                            ; $4617: $30 $FE

    nop                                           ; $4619: $00
    nop                                           ; $461A: $00
    db $FD                                        ; $461B: $FD
    db $FC                                        ; $461C: $FC
    di                                            ; $461D: $F3
    ldh a, [$FFEF]                                ; $461E: $F0 $EF
    ldh [$FFDF], a                                ; $4620: $E0 $DF
    ret nz                                        ; $4622: $C0

    ccf                                           ; $4623: $3F
    ccf                                           ; $4624: $3F
    nop                                           ; $4625: $00
    ret nz                                        ; $4626: $C0

    ld de, $5000                                  ; $4627: $11 $00 $50
    nop                                           ; $462A: $00
    sub b                                         ; $462B: $90
    ld b, b                                       ; $462C: $40
    rra                                           ; $462D: $1F
    ret nc                                        ; $462E: $D0

    rrca                                          ; $462F: $0F
    di                                            ; $4630: $F3
    rlca                                          ; $4631: $07
    ld sp, hl                                     ; $4632: $F9
    ld bc, $D0FE                                  ; $4633: $01 $FE $D0
    db $F4                                        ; $4636: $F4
    add hl, bc                                    ; $4637: $09
    ld a, a                                       ; $4638: $7F
    nop                                           ; $4639: $00
    cp a                                          ; $463A: $BF
    ccf                                           ; $463B: $3F
    rst RST_18                                    ; $463C: $DF
    ld hl, sp+$43                                 ; $463D: $F8 $43
    rst RST_30                                    ; $463F: $F7
    inc de                                        ; $4640: $13
    db $FC                                        ; $4641: $FC
    ei                                            ; $4642: $FB
    cp $FD                                        ; $4643: $FE $FD
    inc de                                        ; $4645: $13
    ld [hl], b                                    ; $4646: $70
    jr jr_032_4614                                ; $4647: $18 $CB

    nop                                           ; $4649: $00
    rst RST_38                                    ; $464A: $FF
    rra                                           ; $464B: $1F
    dec e                                         ; $464C: $1D
    rra                                           ; $464D: $1F
    rst RST_28                                    ; $464E: $EF
    ccf                                           ; $464F: $3F
    ld c, [hl]                                    ; $4650: $4E
    rst RST_18                                    ; $4651: $DF
    ld de, $BF7F                                  ; $4652: $11 $7F $BF
    add b                                         ; $4655: $80
    jr nz, jr_032_4668                            ; $4656: $20 $10

    ld b, a                                       ; $4658: $47
    xor [hl]                                      ; $4659: $AE
    db $10                                        ; $465A: $10
    dec de                                        ; $465B: $1B
    ld b, b                                       ; $465C: $40
    sbc l                                         ; $465D: $9D
    jr nc, jr_032_466F                            ; $465E: $30 $0F

    ld b, $E3                                     ; $4660: $06 $E3
    xor d                                         ; $4662: $AA
    nop                                           ; $4663: $00
    pop bc                                        ; $4664: $C1
    nop                                           ; $4665: $00
    ldh [rP1], a                                  ; $4666: $E0 $00

jr_032_4668:
    ldh a, [rP1]                                  ; $4668: $F0 $00
    db $FC                                        ; $466A: $FC
    xor d                                         ; $466B: $AA
    inc c                                         ; $466C: $0C
    ld a, h                                       ; $466D: $7C
    nop                                           ; $466E: $00

jr_032_466F:
    ccf                                           ; $466F: $3F
    ld c, $F8                                     ; $4670: $0E $F8
    nop                                           ; $4672: $00
    rst RST_38                                    ; $4673: $FF
    push de                                       ; $4674: $D5
    ld b, $91                                     ; $4675: $06 $91
    ldh a, [rSC]                                  ; $4677: $F0 $02
    nop                                           ; $4679: $00
    nop                                           ; $467A: $00
    jp $DB06                                      ; $467B: $C3 $06 $DB


    sub c                                         ; $467E: $91
    dec b                                         ; $467F: $05
    rst RST_38                                    ; $4680: $FF
    ld b, $D5                                     ; $4681: $06 $D5
    ld a, a                                       ; $4683: $7F
    nop                                           ; $4684: $00
    rst RST_30                                    ; $4685: $F7
    and c                                         ; $4686: $A1
    sub c                                         ; $4687: $91
    ccf                                           ; $4688: $3F
    ld [bc], a                                    ; $4689: $02
    ld hl, sp-$09                                 ; $468A: $F8 $F7
    db $FC                                        ; $468C: $FC
    ei                                            ; $468D: $FB
    ld de, $FE3A                                  ; $468E: $11 $3A $FE
    db $FD                                        ; $4691: $FD
    ldh [rNR41], a                                ; $4692: $E0 $20
    db $10                                        ; $4694: $10
    ldh [c], a                                    ; $4695: $E2
    db $10                                        ; $4696: $10
    ret c                                         ; $4697: $D8

    sbc h                                         ; $4698: $9C
    ld b, b                                       ; $4699: $40
    cp c                                          ; $469A: $B9
    nop                                           ; $469B: $00
    ld b, b                                       ; $469C: $40
    rra                                           ; $469D: $1F
    dec e                                         ; $469E: $1D
    rra                                           ; $469F: $1F
    rst RST_28                                    ; $46A0: $EF
    add [hl]                                      ; $46A1: $86
    inc de                                        ; $46A2: $13
    ccf                                           ; $46A3: $3F
    rst RST_18                                    ; $46A4: $DF
    ld a, a                                       ; $46A5: $7F
    cp a                                          ; $46A6: $BF
    inc de                                        ; $46A7: $13
    ld [hl], b                                    ; $46A8: $70
    db $D3                                        ; $46A9: $D3
    inc c                                         ; $46AA: $0C
    db $FC                                        ; $46AB: $FC
    or e                                          ; $46AC: $B3
    ld hl, sp-$49                                 ; $46AD: $F8 $B7
    ld de, $BB50                                  ; $46AF: $11 $50 $BB
    cp $14                                        ; $46B2: $FE $14
    cp c                                          ; $46B4: $B9
    rst RST_38                                    ; $46B5: $FF
    cp [hl]                                       ; $46B6: $BE
    db $10                                        ; $46B7: $10
    sbc a                                         ; $46B8: $9F
    db $10                                        ; $46B9: $10
    rst RST_18                                    ; $46BA: $DF
    nop                                           ; $46BB: $00
    jp nz, Jump_000_1120                          ; $46BC: $C2 $20 $11

    inc a                                         ; $46BF: $3C
    jp $BD7E                                      ; $46C0: $C3 $7E $BD


    ld b, b                                       ; $46C3: $40
    ld a, $AB                                     ; $46C4: $3E $AB
    db $10                                        ; $46C6: $10
    ld e, $10                                     ; $46C7: $1E $10
    ld b, d                                       ; $46C9: $42
    db $10                                        ; $46CA: $10
    ld a, b                                       ; $46CB: $78
    di                                            ; $46CC: $F3
    ld de, $0F00                                  ; $46CD: $11 $00 $0F
    ldh a, [$FF1F]                                ; $46D0: $F0 $1F
    rst RST_20                                    ; $46D2: $E7
    ccf                                           ; $46D3: $3F
    rst RST_18                                    ; $46D4: $DF
    ld a, a                                       ; $46D5: $7F
    sbc [hl]                                      ; $46D6: $9E
    push de                                       ; $46D7: $D5
    and c                                         ; $46D8: $A1
    jr nc, @-$61                                  ; $46D9: $30 $9D

    ld [hl], b                                    ; $46DB: $70
    db $DD                                        ; $46DC: $DD
    or b                                          ; $46DD: $B0
    xor $11                                       ; $46DE: $EE $11
    ld a, [hl+]                                   ; $46E0: $2A
    sbc a                                         ; $46E1: $9F
    ld l, [hl]                                    ; $46E2: $6E
    ldh [$FFAE], a                                ; $46E3: $E0 $AE
    ret nc                                        ; $46E5: $D0

    ld c, $10                                     ; $46E6: $0E $10
    cp l                                          ; $46E8: $BD
    push de                                       ; $46E9: $D5
    db $10                                        ; $46EA: $10
    ld c, $F8                                     ; $46EB: $0E $F8
    nop                                           ; $46ED: $00
    db $FC                                        ; $46EE: $FC
    nop                                           ; $46EF: $00
    cp $00                                        ; $46F0: $FE $00
    push de                                       ; $46F2: $D5
    rst RST_10                                    ; $46F3: $D7
    or c                                          ; $46F4: $B1
    inc a                                         ; $46F5: $3C
    nop                                           ; $46F6: $00
    jr jr_032_46F9                                ; $46F7: $18 $00

jr_032_46F9:
    nop                                           ; $46F9: $00
    ld [bc], a                                    ; $46FA: $02
    ld e, l                                       ; $46FB: $5D
    add b                                         ; $46FC: $80
    nop                                           ; $46FD: $00
    pop bc                                        ; $46FE: $C1
    nop                                           ; $46FF: $00
    ld sp, $3F71                                  ; $4700: $31 $71 $3F
    ld [bc], a                                    ; $4703: $02
    ld e, e                                       ; $4704: $5B
    ld a, a                                       ; $4705: $7F
    ld [bc], a                                    ; $4706: $02
    rst RST_38                                    ; $4707: $FF
    inc b                                         ; $4708: $04
    ld [hl], c                                    ; $4709: $71
    ld hl, sp+$00                                 ; $470A: $F8 $00
    sub l                                         ; $470C: $95
    xor e                                         ; $470D: $AB
    rlca                                          ; $470E: $07
    nop                                           ; $470F: $00
    nop                                           ; $4710: $00
    jp $C10A                                      ; $4711: $C3 $0A $C1


    nop                                           ; $4714: $00
    pop af                                        ; $4715: $F1
    ld e, b                                       ; $4716: $58
    rst RST_38                                    ; $4717: $FF
    inc c                                         ; $4718: $0C
    ld a, a                                       ; $4719: $7F
    nop                                           ; $471A: $00
    db $FD                                        ; $471B: $FD
    cp $B9                                        ; $471C: $FE $B9
    db $FC                                        ; $471E: $FC
    db $10                                        ; $471F: $10
    cp e                                          ; $4720: $BB
    ld hl, sp+$77                                 ; $4721: $F8 $77
    ld de, $76F9                                  ; $4723: $11 $F9 $76
    ei                                            ; $4726: $FB
    ld [hl], l                                    ; $4727: $75
    and [hl]                                      ; $4728: $A6
    ret nz                                        ; $4729: $C0

    ld [hl], b                                    ; $472A: $70
    db $10                                        ; $472B: $10
    cp l                                          ; $472C: $BD
    nop                                           ; $472D: $00
    jr nz, jr_032_4743                            ; $472E: $20 $13

    ldh a, [rSB]                                  ; $4730: $F0 $01
    rrca                                          ; $4732: $0F
    ld hl, sp-$19                                 ; $4733: $F8 $E7
    db $FC                                        ; $4735: $FC
    ei                                            ; $4736: $FB
    cp $79                                        ; $4737: $FE $79
    and c                                         ; $4739: $A1
    add l                                         ; $473A: $85
    db $D3                                        ; $473B: $D3
    inc a                                         ; $473C: $3C
    jp $BD7E                                      ; $473D: $C3 $7E $BD


    ld b, b                                       ; $4740: $40
    ld a, h                                       ; $4741: $7C
    db $10                                        ; $4742: $10

jr_032_4743:
    ld d, b                                       ; $4743: $50
    ld a, b                                       ; $4744: $78
    db $10                                        ; $4745: $10
    ld b, d                                       ; $4746: $42
    db $10                                        ; $4747: $10
    ld e, $3F                                     ; $4748: $1E $3F
    call Call_032_621F                            ; $474A: $CD $1F $62
    db $ED                                        ; $474D: $ED
    ld de, $DD50                                  ; $474E: $11 $50 $DD
    ld a, a                                       ; $4751: $7F
    sbc l                                         ; $4752: $9D
    or b                                          ; $4753: $B0
    ld a, l                                       ; $4754: $7D
    xor d                                         ; $4755: $AA
    db $10                                        ; $4756: $10
    ld sp, hl                                     ; $4757: $F9
    db $10                                        ; $4758: $10
    ei                                            ; $4759: $FB
    db $10                                        ; $475A: $10
    rst RST_08                                    ; $475B: $CF
    db $10                                        ; $475C: $10
    rst RST_20                                    ; $475D: $E7
    xor d                                         ; $475E: $AA
    db $10                                        ; $475F: $10
    pop af                                        ; $4760: $F1
    db $10                                        ; $4761: $10
    pop bc                                        ; $4762: $C1
    db $10                                        ; $4763: $10
    add e                                         ; $4764: $83
    ld [de], a                                    ; $4765: $12
    add b                                         ; $4766: $80
    xor l                                         ; $4767: $AD
    db $10                                        ; $4768: $10
    ret nz                                        ; $4769: $C0

    db $10                                        ; $476A: $10
    cp [hl]                                       ; $476B: $BE
    or d                                          ; $476C: $B2
    dec b                                         ; $476D: $05
    pop hl                                        ; $476E: $E1
    db $10                                        ; $476F: $10
    ld d, l                                       ; $4770: $55
    ld bc, $0010                                  ; $4771: $01 $10 $00
    db $10                                        ; $4774: $10
    rst RST_08                                    ; $4775: $CF
    db $10                                        ; $4776: $10
    ldh a, [$FFF6]                                ; $4777: $F0 $F6
    ld d, l                                       ; $4779: $55
    di                                            ; $477A: $F3
    db $10                                        ; $477B: $10
    ldh [$FFF2], a                                ; $477C: $E0 $F2
    ld a, l                                       ; $477E: $7D
    db $10                                        ; $477F: $10
    db $FD                                        ; $4780: $FD
    sub d                                         ; $4781: $92
    ld d, l                                       ; $4782: $55
    pop hl                                        ; $4783: $E1
    db $10                                        ; $4784: $10
    ldh a, [rNR12]                                ; $4785: $F0 $12
    jr nc, jr_032_4799                            ; $4787: $30 $10

    ld bc, $BD40                                  ; $4789: $01 $40 $BD
    nop                                           ; $478C: $00
    ldh [rSC], a                                  ; $478D: $E0 $02
    ld d, c                                       ; $478F: $51
    sub b                                         ; $4790: $90
    ld b, $00                                     ; $4791: $06 $00
    inc b                                         ; $4793: $04
    ld l, e                                       ; $4794: $6B
    inc bc                                        ; $4795: $03
    nop                                           ; $4796: $00
    ld sp, hl                                     ; $4797: $F9
    inc e                                         ; $4798: $1C

jr_032_4799:
    nop                                           ; $4799: $00
    ld a, [hl]                                    ; $479A: $7E
    nop                                           ; $479B: $00
    rst RST_10                                    ; $479C: $D7
    xor e                                         ; $479D: $AB
    ld bc, $003F                                  ; $479E: $01 $3F $00
    rra                                           ; $47A1: $1F
    nop                                           ; $47A2: $00
    rrca                                          ; $47A3: $0F
    nop                                           ; $47A4: $00
    ld sp, $F7D5                                  ; $47A5: $31 $D5 $F7
    rrca                                          ; $47A8: $0F
    ldh [rSC], a                                  ; $47A9: $E0 $02
    ldh a, [rP1]                                  ; $47AB: $F0 $00
    db $FC                                        ; $47AD: $FC
    nop                                           ; $47AE: $00
    or l                                          ; $47AF: $B5
    rst RST_30                                    ; $47B0: $F7
    nop                                           ; $47B1: $00
    ld b, $F7                                     ; $47B2: $06 $F7
    rra                                           ; $47B4: $1F
    nop                                           ; $47B5: $00
    rrca                                          ; $47B6: $0F
    ld [bc], a                                    ; $47B7: $02
    ld [$F751], a                                 ; $47B8: $EA $51 $F7
    nop                                           ; $47BB: $00
    cp [hl]                                       ; $47BC: $BE
    db $10                                        ; $47BD: $10
    cp a                                          ; $47BE: $BF
    db $10                                        ; $47BF: $10
    rst RST_08                                    ; $47C0: $CF
    xor d                                         ; $47C1: $AA
    db $10                                        ; $47C2: $10
    add a                                         ; $47C3: $87
    db $10                                        ; $47C4: $10
    rrca                                          ; $47C5: $0F
    ld [de], a                                    ; $47C6: $12
    inc c                                         ; $47C7: $0C
    db $10                                        ; $47C8: $10
    add b                                         ; $47C9: $80
    or l                                          ; $47CA: $B5
    db $10                                        ; $47CB: $10
    di                                            ; $47CC: $F3
    ld [hl], d                                    ; $47CD: $72
    dec b                                         ; $47CE: $05
    rst RST_08                                    ; $47CF: $CF
    db $10                                        ; $47D0: $10
    rlca                                          ; $47D1: $07
    db $10                                        ; $47D2: $10
    ld d, l                                       ; $47D3: $55
    nop                                           ; $47D4: $00
    db $10                                        ; $47D5: $10
    ld a, l                                       ; $47D6: $7D
    db $10                                        ; $47D7: $10
    add e                                         ; $47D8: $83
    or $87                                        ; $47D9: $F6 $87
    db $10                                        ; $47DB: $10
    ld d, l                                       ; $47DC: $55
    add b                                         ; $47DD: $80
    ldh a, [c]                                    ; $47DE: $F2
    di                                            ; $47DF: $F3
    db $10                                        ; $47E0: $10
    rst RST_20                                    ; $47E1: $E7
    db $10                                        ; $47E2: $10
    adc a                                         ; $47E3: $8F
    db $10                                        ; $47E4: $10
    ld d, l                                       ; $47E5: $55
    add e                                         ; $47E6: $83
    db $10                                        ; $47E7: $10
    pop bc                                        ; $47E8: $C1
    ld [de], a                                    ; $47E9: $12
    ld bc, $0310                                  ; $47EA: $01 $10 $03
    db $10                                        ; $47ED: $10
    and e                                         ; $47EE: $A3
    nop                                           ; $47EF: $00
    add b                                         ; $47F0: $80
    ld de, $9FC0                                  ; $47F1: $11 $C0 $9F
    rst RST_18                                    ; $47F4: $DF
    rla                                           ; $47F5: $17
    pop af                                        ; $47F6: $F1
    halt                                          ; $47F7: $76
    nop                                           ; $47F8: $00
    ld de, $0A21                                  ; $47F9: $11 $21 $0A
    ld bc, $0011                                  ; $47FC: $01 $11 $00
    ld sp, hl                                     ; $47FF: $F9
    ld c, c                                       ; $4800: $49
    db $FD                                        ; $4801: $FD
    rla                                           ; $4802: $17
    sbc a                                         ; $4803: $9F
    rst RST_18                                    ; $4804: $DF
    dec e                                         ; $4805: $1D
    ld sp, hl                                     ; $4806: $F9
    db $FD                                        ; $4807: $FD
    dec e                                         ; $4808: $1D
    add hl, hl                                    ; $4809: $29
    sbc a                                         ; $480A: $9F
    rst RST_18                                    ; $480B: $DF
    rla                                           ; $480C: $17
    add b                                         ; $480D: $80
    ld de, $FFC0                                  ; $480E: $11 $C0 $FF
    ld a, [bc]                                    ; $4811: $0A
    ld [hl], d                                    ; $4812: $72
    nop                                           ; $4813: $00
    ld de, $0021                                  ; $4814: $11 $21 $00
    ld sp, hl                                     ; $4817: $F9
    db $FD                                        ; $4818: $FD
    rla                                           ; $4819: $17
    ld bc, $11E0                                  ; $481A: $01 $E0 $11
    nop                                           ; $481D: $00
    pop af                                        ; $481E: $F1
    ld b, a                                       ; $481F: $47
    add b                                         ; $4820: $80
    ld d, l                                       ; $4821: $55
    di                                            ; $4822: $F3
    nop                                           ; $4823: $00
    sub e                                         ; $4824: $93
    nop                                           ; $4825: $00
    jp $E700                                      ; $4826: $C3 $00 $E7


    nop                                           ; $4829: $00
    xor d                                         ; $482A: $AA
    dec c                                         ; $482B: $0D
    add hl, de                                    ; $482C: $19
    nop                                           ; $482D: $00
    rst RST_38                                    ; $482E: $FF
    ld [bc], a                                    ; $482F: $02
    inc bc                                        ; $4830: $03
    nop                                           ; $4831: $00
    rst RST_08                                    ; $4832: $CF
    db $ED                                        ; $4833: $ED
    nop                                           ; $4834: $00
    rrca                                          ; $4835: $0F
    ld bc, $00E1                                  ; $4836: $01 $E1 $00
    jr nc, @-$02                                  ; $4839: $30 $FC

    nop                                           ; $483B: $00
    ld a, c                                       ; $483C: $79
    ei                                            ; $483D: $FB
    ld c, a                                       ; $483E: $4F
    inc bc                                        ; $483F: $03
    nop                                           ; $4840: $00
    add c                                         ; $4841: $81
    inc a                                         ; $4842: $3C
    nop                                           ; $4843: $00
    db $10                                        ; $4844: $10
    ld a, [$0305]                                 ; $4845: $FA $05 $03
    inc bc                                        ; $4848: $03
    inc bc                                        ; $4849: $03
    nop                                           ; $484A: $00
    ld a, a                                       ; $484B: $7F
    nop                                           ; $484C: $00
    cp a                                          ; $484D: $BF
    rst RST_30                                    ; $484E: $F7
    dec de                                        ; $484F: $1B
    inc bc                                        ; $4850: $03
    inc bc                                        ; $4851: $03
    ld [bc], a                                    ; $4852: $02
    cp $13                                        ; $4853: $FE $13
    inc bc                                        ; $4855: $03
    xor $0F                                       ; $4856: $EE $0F
    di                                            ; $4858: $F3
    ldh a, [$FF8F]                                ; $4859: $F0 $8F
    add b                                         ; $485B: $80
    add b                                         ; $485C: $80
    dec hl                                        ; $485D: $2B
    inc bc                                        ; $485E: $03
    xor a                                         ; $485F: $AF
    sbc a                                         ; $4860: $9F
    dec b                                         ; $4861: $05
    ccf                                           ; $4862: $3F
    rst RST_18                                    ; $4863: $DF
    dec hl                                        ; $4864: $2B
    inc bc                                        ; $4865: $03
    inc bc                                        ; $4866: $03
    or l                                          ; $4867: $B5
    nop                                           ; $4868: $00
    ld [hl], h                                    ; $4869: $74
    db $FD                                        ; $486A: $FD
    dec de                                        ; $486B: $1B
    inc bc                                        ; $486C: $03
    nop                                           ; $486D: $00
    jp Jump_000_3C00                              ; $486E: $C3 $00 $3C


    nop                                           ; $4871: $00
    rst RST_38                                    ; $4872: $FF
    db $10                                        ; $4873: $10
    dec b                                         ; $4874: $05
    inc bc                                        ; $4875: $03
    inc bc                                        ; $4876: $03
    inc bc                                        ; $4877: $03
    nop                                           ; $4878: $00
    cp b                                          ; $4879: $B8
    cp a                                          ; $487A: $BF
    di                                            ; $487B: $F3
    inc bc                                        ; $487C: $03
    xor a                                         ; $487D: $AF
    xor l                                         ; $487E: $AD
    dec b                                         ; $487F: $05
    db $FC                                        ; $4880: $FC
    ei                                            ; $4881: $FB
    dec hl                                        ; $4882: $2B
    inc bc                                        ; $4883: $03
    add a                                         ; $4884: $87
    ld l, [hl]                                    ; $4885: $6E
    rst RST_08                                    ; $4886: $CF
    rrca                                          ; $4887: $0F
    pop af                                        ; $4888: $F1
    ld bc, $2B48                                  ; $4889: $01 $48 $2B
    inc bc                                        ; $488C: $03
    rst RST_18                                    ; $488D: $DF
    inc bc                                        ; $488E: $03
    ld [bc], a                                    ; $488F: $02
    ld a, a                                       ; $4890: $7F
    inc de                                        ; $4891: $13
    inc bc                                        ; $4892: $03
    inc bc                                        ; $4893: $03
    nop                                           ; $4894: $00
    cp b                                          ; $4895: $B8
    jp hl                                         ; $4896: $E9


    cp a                                          ; $4897: $BF
    inc bc                                        ; $4898: $03
    ld [bc], a                                    ; $4899: $02
    jp Jump_000_3C00                              ; $489A: $C3 $00 $3C


    nop                                           ; $489D: $00
    db $10                                        ; $489E: $10
    db $FD                                        ; $489F: $FD
    dec b                                         ; $48A0: $05
    inc bc                                        ; $48A1: $03
    inc bc                                        ; $48A2: $03
    inc bc                                        ; $48A3: $03
    or l                                          ; $48A4: $B5
    nop                                           ; $48A5: $00
    cp a                                          ; $48A6: $BF
    dec de                                        ; $48A7: $1B
    db $E4                                        ; $48A8: $E4
    inc bc                                        ; $48A9: $03
    inc bc                                        ; $48AA: $03
    inc bc                                        ; $48AB: $03
    ld hl, sp-$09                                 ; $48AC: $F8 $F7
    dec b                                         ; $48AE: $05
    cp $F9                                        ; $48AF: $FE $F9
    rst RST_30                                    ; $48B1: $F7
    jr @+$0A                                      ; $48B2: $18 $08

    rlca                                          ; $48B4: $07
    nop                                           ; $48B5: $00
    db $FD                                        ; $48B6: $FD
    db $FD                                        ; $48B7: $FD
    rst RST_08                                    ; $48B8: $CF
    rlca                                          ; $48B9: $07
    jp $0707                                      ; $48BA: $C3 $07 $07


    ccf                                           ; $48BD: $3F
    rst RST_18                                    ; $48BE: $DF
    rra                                           ; $48BF: $1F
    rst RST_28                                    ; $48C0: $EF
    dec b                                         ; $48C1: $05
    dec d                                         ; $48C2: $15
    rst RST_38                                    ; $48C3: $FF
    push hl                                       ; $48C4: $E5
    rlca                                          ; $48C5: $07
    dec e                                         ; $48C6: $1D
    adc l                                         ; $48C7: $8D
    dec b                                         ; $48C8: $05
    xor [hl]                                      ; $48C9: $AE
    inc bc                                        ; $48CA: $03
    cp a                                          ; $48CB: $BF
    rst RST_18                                    ; $48CC: $DF
    cp a                                          ; $48CD: $BF
    ld b, $80                                     ; $48CE: $06 $80
    ld l, b                                       ; $48D0: $68
    dec b                                         ; $48D1: $05
    rra                                           ; $48D2: $1F
    dec b                                         ; $48D3: $05
    or a                                          ; $48D4: $B7
    scf                                           ; $48D5: $37
    rrca                                          ; $48D6: $0F
    rst RST_30                                    ; $48D7: $F7
    rlca                                          ; $48D8: $07
    ld b, b                                       ; $48D9: $40
    adc a                                         ; $48DA: $8F
    or l                                          ; $48DB: $B5
    dec b                                         ; $48DC: $05
    add l                                         ; $48DD: $85
    ld a, a                                       ; $48DE: $7F
    ld hl, sp+$24                                 ; $48DF: $F8 $24
    dec b                                         ; $48E1: $05
    dec d                                         ; $48E2: $15
    rst RST_18                                    ; $48E3: $DF
    cp a                                          ; $48E4: $BF
    adc a                                         ; $48E5: $8F
    rlca                                          ; $48E6: $07

jr_032_48E7:
    rst RST_30                                    ; $48E7: $F7
    rlca                                          ; $48E8: $07
    rlca                                          ; $48E9: $07
    cp a                                          ; $48EA: $BF
    and h                                         ; $48EB: $A4
    sbc a                                         ; $48EC: $9F
    jr jr_032_48F7                                ; $48ED: $18 $08

    rlca                                          ; $48EF: $07
    or a                                          ; $48F0: $B7
    nop                                           ; $48F1: $00
    cp a                                          ; $48F2: $BF
    cp l                                          ; $48F3: $BD
    or a                                          ; $48F4: $B7
    ldh a, [rLY]                                  ; $48F5: $F0 $44

jr_032_48F7:
    rlca                                          ; $48F7: $07
    or h                                          ; $48F8: $B4
    ld [hl], a                                    ; $48F9: $77
    pop af                                        ; $48FA: $F1
    or l                                          ; $48FB: $B5
    cp a                                          ; $48FC: $BF
    rlca                                          ; $48FD: $07
    ld bc, $0530                                  ; $48FE: $01 $30 $05
    rra                                           ; $4901: $1F
    rst RST_38                                    ; $4902: $FF
    dec b                                         ; $4903: $05
    adc l                                         ; $4904: $8D
    dec b                                         ; $4905: $05
    xor [hl]                                      ; $4906: $AE
    inc bc                                        ; $4907: $03

Jump_032_4908:
    cp a                                          ; $4908: $BF
    cp a                                          ; $4909: $BF
    inc b                                         ; $490A: $04
    cp l                                          ; $490B: $BD
    ld l, b                                       ; $490C: $68
    ld sp, hl                                     ; $490D: $F9
    inc l                                         ; $490E: $2C
    ld [$0007], sp                                ; $490F: $08 $07 $00
    db $FD                                        ; $4912: $FD
    cp a                                          ; $4913: $BF
    ld sp, hl                                     ; $4914: $F9
    rlca                                          ; $4915: $07
    rlca                                          ; $4916: $07
    rlca                                          ; $4917: $07
    dec b                                         ; $4918: $05
    add l                                         ; $4919: $85
    rra                                           ; $491A: $1F
    rst RST_28                                    ; $491B: $EF
    dec b                                         ; $491C: $05
    rst RST_38                                    ; $491D: $FF
    dec d                                         ; $491E: $15
    rst RST_18                                    ; $491F: $DF
    cp a                                          ; $4920: $BF
    db $E3                                        ; $4921: $E3
    inc bc                                        ; $4922: $03
    inc bc                                        ; $4923: $03
    inc bc                                        ; $4924: $03
    push bc                                       ; $4925: $C5
    xor d                                         ; $4926: $AA
    db $FC                                        ; $4927: $FC
    rst RST_10                                    ; $4928: $D7
    ld hl, sp-$5A                                 ; $4929: $F8 $A6
    db $10                                        ; $492B: $10
    or l                                          ; $492C: $B5
    jr nz, jr_032_48E7                            ; $492D: $20 $B8

    xor d                                         ; $492F: $AA
    inc b                                         ; $4930: $04
    db $DB                                        ; $4931: $DB
    inc b                                         ; $4932: $04
    db $ED                                        ; $4933: $ED
    inc b                                         ; $4934: $04
    ldh a, [c]                                    ; $4935: $F2
    rst RST_08                                    ; $4936: $CF
    add e                                         ; $4937: $83
    dec d                                         ; $4938: $15
    ld a, h                                       ; $4939: $7C
    rst RST_00                                    ; $493A: $C7
    cp e                                          ; $493B: $BB
    ret z                                         ; $493C: $C8

    sub $18                                       ; $493D: $D6 $18
    ld bc, $FD04                                  ; $493F: $01 $04 $FD
    inc d                                         ; $4942: $14
    inc b                                         ; $4943: $04
    inc h                                         ; $4944: $24
    rst RST_30                                    ; $4945: $F7
    dec b                                         ; $4946: $05
    ld l, $3E                                     ; $4947: $2E $3E
    inc b                                         ; $4949: $04
    ld e, h                                       ; $494A: $5C
    cp c                                          ; $494B: $B9
    inc b                                         ; $494C: $04
    ld [hl], e                                    ; $494D: $73
    inc b                                         ; $494E: $04
    inc h                                         ; $494F: $24
    or h                                          ; $4950: $B4
    rst RST_30                                    ; $4951: $F7
    cp $6B                                        ; $4952: $FE $6B
    add c                                         ; $4954: $81
    ld d, l                                       ; $4955: $55
    inc b                                         ; $4956: $04
    sbc h                                         ; $4957: $9C
    inc b                                         ; $4958: $04
    and $04                                       ; $4959: $E6 $04
    ret nc                                        ; $495B: $D0

    jp nc, $B507                                  ; $495C: $D2 $07 $B5

    ldh [$FF78], a                                ; $495F: $E0 $78
    di                                            ; $4961: $F3
    db $EC                                        ; $4962: $EC
    ld d, b                                       ; $4963: $50
    dec bc                                        ; $4964: $0B
    call nc, Call_000_0419                        ; $4965: $D4 $19 $04
    dec de                                        ; $4968: $1B
    inc b                                         ; $4969: $04
    db $FC                                        ; $496A: $FC
    inc b                                         ; $496B: $04
    cp a                                          ; $496C: $BF
    ccf                                           ; $496D: $3F
    ld c, d                                       ; $496E: $4A
    rst RST_18                                    ; $496F: $DF
    or l                                          ; $4970: $B5
    sbc a                                         ; $4971: $9F
    ld l, a                                       ; $4972: $6F
    db $10                                        ; $4973: $10
    xor a                                         ; $4974: $AF
    inc h                                         ; $4975: $24
    rrca                                          ; $4976: $0F
    xor a                                         ; $4977: $AF
    inc b                                         ; $4978: $04
    sub c                                         ; $4979: $91
    inc b                                         ; $497A: $04
    ld a, [hl]                                    ; $497B: $7E
    call Call_000_07BD                            ; $497C: $CD $BD $07
    inc e                                         ; $497F: $1C
    ld d, a                                       ; $4980: $57
    add b                                         ; $4981: $80
    adc $9D                                       ; $4982: $CE $9D
    inc b                                         ; $4984: $04
    adc $04                                       ; $4985: $CE $04
    inc h                                         ; $4987: $24
    cp l                                          ; $4988: $BD
    add l                                         ; $4989: $85
    dec b                                         ; $498A: $05
    pop bc                                        ; $498B: $C1
    ld a, $E3                                     ; $498C: $3E $E3
    db $DD                                        ; $498E: $DD
    jr nz, jr_032_49FC                            ; $498F: $20 $6B

    ld c, [hl]                                    ; $4991: $4E
    push af                                       ; $4992: $F5
    inc d                                         ; $4993: $14
    inc b                                         ; $4994: $04
    inc h                                         ; $4995: $24
    cp [hl]                                       ; $4996: $BE
    db $EB                                        ; $4997: $EB
    cp h                                          ; $4998: $BC
    ld h, l                                       ; $4999: $65
    db $10                                        ; $499A: $10
    ld d, l                                       ; $499B: $55
    xor l                                         ; $499C: $AD
    inc h                                         ; $499D: $24
    dec e                                         ; $499E: $1D
    inc b                                         ; $499F: $04
    db $DB                                        ; $49A0: $DB
    inc b                                         ; $49A1: $04
    or a                                          ; $49A2: $B7
    inc b                                         ; $49A3: $04
    ld [de], a                                    ; $49A4: $12
    ld c, a                                       ; $49A5: $4F
    db $FC                                        ; $49A6: $FC
    ei                                            ; $49A7: $FB
    or l                                          ; $49A8: $B5
    ld sp, hl                                     ; $49A9: $F9
    or $10                                        ; $49AA: $F6 $10
    push af                                       ; $49AC: $F5
    xor [hl]                                      ; $49AD: $AE
    inc h                                         ; $49AE: $24
    ldh a, [rDIV]                                 ; $49AF: $F0 $04
    adc c                                         ; $49B1: $89
    cp $CC                                        ; $49B2: $FE $CC
    or l                                          ; $49B4: $B5
    rlca                                          ; $49B5: $07
    add [hl]                                      ; $49B6: $86
    ld b, b                                       ; $49B7: $40
    rst RST_08                                    ; $49B8: $CF
    scf                                           ; $49B9: $37
    rst RST_28                                    ; $49BA: $EF
    ret nc                                        ; $49BB: $D0

    add hl, de                                    ; $49BC: $19
    inc b                                         ; $49BD: $04
    ret c                                         ; $49BE: $D8

    db $EC                                        ; $49BF: $EC
    inc b                                         ; $49C0: $04
    or b                                          ; $49C1: $B0
    inc b                                         ; $49C2: $04
    db $FD                                        ; $49C3: $FD
    or h                                          ; $49C4: $B4
    jr z, jr_032_4A46                             ; $49C5: $28 $7F

    add c                                         ; $49C7: $81
    rst RST_10                                    ; $49C8: $D7
    push de                                       ; $49C9: $D5
    inc b                                         ; $49CA: $04
    add hl, sp                                    ; $49CB: $39
    inc b                                         ; $49CC: $04
    ld h, a                                       ; $49CD: $67
    inc b                                         ; $49CE: $04
    ret nc                                        ; $49CF: $D0

    rlca                                          ; $49D0: $07
    xor d                                         ; $49D1: $AA
    cp [hl]                                       ; $49D2: $BE
    rst RST_10                                    ; $49D3: $D7
    cp h                                          ; $49D4: $BC
    and [hl]                                      ; $49D5: $A6
    db $10                                        ; $49D6: $10
    or l                                          ; $49D7: $B5
    inc h                                         ; $49D8: $24
    cp b                                          ; $49D9: $B8
    xor h                                         ; $49DA: $AC
    cp $ED                                        ; $49DB: $FE $ED
    inc b                                         ; $49DD: $04
    ldh a, [c]                                    ; $49DE: $F2
    cp l                                          ; $49DF: $BD
    dec b                                         ; $49E0: $05
    add e                                         ; $49E1: $83
    ld a, h                                       ; $49E2: $7C
    dec hl                                        ; $49E3: $2B
    rst RST_00                                    ; $49E4: $C7
    cp e                                          ; $49E5: $BB
    sbc b                                         ; $49E6: $98
    sub $18                                       ; $49E7: $D6 $18
    ld bc, $1404                                  ; $49E9: $01 $04 $14
    db $FD                                        ; $49EC: $FD
    inc b                                         ; $49ED: $04
    inc h                                         ; $49EE: $24
    cp l                                          ; $49EF: $BD
    rlca                                          ; $49F0: $07
    ld l, $CD                                     ; $49F1: $2E $CD
    cp c                                          ; $49F3: $B9
    inc b                                         ; $49F4: $04
    ld a, [hl]                                    ; $49F5: $7E
    ld [hl], e                                    ; $49F6: $73
    inc b                                         ; $49F7: $04

jr_032_49F8:
    dec h                                         ; $49F8: $25
    inc bc                                        ; $49F9: $03
    inc bc                                        ; $49FA: $03
    inc bc                                        ; $49FB: $03

jr_032_49FC:
    inc bc                                        ; $49FC: $03
    jp Jump_000_04AB                              ; $49FD: $C3 $AB $04


    add a                                         ; $4A00: $87
    inc b                                         ; $4A01: $04
    add b                                         ; $4A02: $80
    inc b                                         ; $4A03: $04
    ret nz                                        ; $4A04: $C0

    dec hl                                        ; $4A05: $2B
    inc bc                                        ; $4A06: $03
    xor e                                         ; $4A07: $AB
    nop                                           ; $4A08: $00
    sbc [hl]                                      ; $4A09: $9E
    inc b                                         ; $4A0A: $04
    jr jr_032_4A11                                ; $4A0B: $18 $04

    nop                                           ; $4A0D: $00
    ld b, $03                                     ; $4A0E: $06 $03
    xor a                                         ; $4A10: $AF

jr_032_4A11:
    inc bc                                        ; $4A11: $03
    pop hl                                        ; $4A12: $E1
    inc b                                         ; $4A13: $04
    ld h, b                                       ; $4A14: $60
    ld [hl], $FD                                  ; $4A15: $36 $FD
    inc bc                                        ; $4A17: $03
    inc bc                                        ; $4A18: $03
    ld a, d                                       ; $4A19: $7A
    add e                                         ; $4A1A: $83
    ld [hl], a                                    ; $4A1B: $77
    add $03                                       ; $4A1C: $C6 $03
    inc bc                                        ; $4A1E: $03
    rra                                           ; $4A1F: $1F
    inc b                                         ; $4A20: $04
    add hl, de                                    ; $4A21: $19
    rst RST_30                                    ; $4A22: $F7
    ld b, a                                       ; $4A23: $47
    dec hl                                        ; $4A24: $2B
    inc bc                                        ; $4A25: $03
    nop                                           ; $4A26: $00
    add c                                         ; $4A27: $81
    ld l, [hl]                                    ; $4A28: $6E
    cp a                                          ; $4A29: $BF
    inc bc                                        ; $4A2A: $03
    xor a                                         ; $4A2B: $AF
    inc bc                                        ; $4A2C: $03
    add a                                         ; $4A2D: $87
    inc b                                         ; $4A2E: $04
    ld b, $BF                                     ; $4A2F: $06 $BF
    dec hl                                        ; $4A31: $2B
    inc bc                                        ; $4A32: $03
    nop                                           ; $4A33: $00
    ld e, [hl]                                    ; $4A34: $5E
    ld a, c                                       ; $4A35: $79
    inc b                                         ; $4A36: $04
    jr jr_032_49F8                                ; $4A37: $18 $BF

    dec hl                                        ; $4A39: $2B
    inc bc                                        ; $4A3A: $03
    nop                                           ; $4A3B: $00
    jp $04AF                                      ; $4A3C: $C3 $AF $04


    pop hl                                        ; $4A3F: $E1
    or [hl]                                       ; $4A40: $B6
    inc bc                                        ; $4A41: $03
    dec hl                                        ; $4A42: $2B
    inc bc                                        ; $4A43: $03
    cp $35                                        ; $4A44: $FE $35

jr_032_4A46:
    db $EB                                        ; $4A46: $EB
    cp a                                          ; $4A47: $BF
    inc bc                                        ; $4A48: $03
    inc bc                                        ; $4A49: $03
    ld hl, sp+$04                                 ; $4A4A: $F8 $04
    sbc b                                         ; $4A4C: $98
    cp a                                          ; $4A4D: $BF
    dec hl                                        ; $4A4E: $2B
    rst RST_18                                    ; $4A4F: $DF
    inc bc                                        ; $4A50: $03
    nop                                           ; $4A51: $00
    pop bc                                        ; $4A52: $C1
    scf                                           ; $4A53: $37
    adc [hl]                                      ; $4A54: $8E
    inc bc                                        ; $4A55: $03
    inc bc                                        ; $4A56: $03
    db $FD                                        ; $4A57: $FD
    ld e, l                                       ; $4A58: $5D
    add a                                         ; $4A59: $87
    or [hl]                                       ; $4A5A: $B6
    ret nz                                        ; $4A5B: $C0

    dec hl                                        ; $4A5C: $2B
    inc bc                                        ; $4A5D: $03
    nop                                           ; $4A5E: $00
    sbc [hl]                                      ; $4A5F: $9E
    inc b                                         ; $4A60: $04
    ld a, d                                       ; $4A61: $7A
    jr @-$77                                      ; $4A62: $18 $87

    dec hl                                        ; $4A64: $2B
    inc bc                                        ; $4A65: $03
    nop                                           ; $4A66: $00
    pop hl                                        ; $4A67: $E1
    inc b                                         ; $4A68: $04
    ld h, b                                       ; $4A69: $60
    ld a, [$2BBF]                                 ; $4A6A: $FA $BF $2B
    inc bc                                        ; $4A6D: $03
    ld l, a                                       ; $4A6E: $6F
    inc b                                         ; $4A6F: $04
    ccf                                           ; $4A70: $3F
    dec b                                         ; $4A71: $05
    ldh a, [rVBK]                                 ; $4A72: $F0 $4F
    jr nc, jr_032_4A7B                            ; $4A74: $30 $05

    di                                            ; $4A76: $F3
    inc sp                                        ; $4A77: $33
    dec b                                         ; $4A78: $05
    ccf                                           ; $4A79: $3F
    ld e, e                                       ; $4A7A: $5B

jr_032_4A7B:
    db $10                                        ; $4A7B: $10
    db $EB                                        ; $4A7C: $EB
    ld [bc], a                                    ; $4A7D: $02
    rra                                           ; $4A7E: $1F
    nop                                           ; $4A7F: $00
    rrca                                          ; $4A80: $0F
    ld b, $CF                                     ; $4A81: $06 $CF
    dec b                                         ; $4A83: $05
    ccf                                           ; $4A84: $3F
    ccf                                           ; $4A85: $3F
    db $FC                                        ; $4A86: $FC
    call z, $8F05                                 ; $4A87: $CC $05 $8F
    rlca                                          ; $4A8A: $07
    rlca                                          ; $4A8B: $07
    rlca                                          ; $4A8C: $07
    ld c, a                                       ; $4A8D: $4F
    rst RST_38                                    ; $4A8E: $FF
    rlca                                          ; $4A8F: $07
    rlca                                          ; $4A90: $07
    rlca                                          ; $4A91: $07
    ld c, a                                       ; $4A92: $4F
    inc b                                         ; $4A93: $04
    and h                                         ; $4A94: $A4
    ld b, $02                                     ; $4A95: $06 $02
    ld a, a                                       ; $4A97: $7F
    ldh a, [rSC]                                  ; $4A98: $F0 $02
    db $E4                                        ; $4A9A: $E4
    inc bc                                        ; $4A9B: $03
    inc [hl]                                      ; $4A9C: $34
    ld b, $1B                                     ; $4A9D: $06 $1B
    ld [bc], a                                    ; $4A9F: $02
    call c, $048F                                 ; $4AA0: $DC $8F $04
    inc c                                         ; $4AA3: $0C
    ld b, $02                                     ; $4AA4: $06 $02
    ccf                                           ; $4AA6: $3F
    ld e, $40                                     ; $4AA7: $1E $40
    ld e, d                                       ; $4AA9: $5A
    rst RST_38                                    ; $4AAA: $FF
    ld [bc], a                                    ; $4AAB: $02
    ldh a, [rTAC]                                 ; $4AAC: $F0 $07
    inc b                                         ; $4AAE: $04
    pop hl                                        ; $4AAF: $E1
    ld [bc], a                                    ; $4AB0: $02
    jp $00AD                                      ; $4AB1: $C3 $AD $00


    add a                                         ; $4AB4: $87
    nop                                           ; $4AB5: $00
    rrca                                          ; $4AB6: $0F
    nop                                           ; $4AB7: $00
    ret                                           ; $4AB8: $C9


    nop                                           ; $4AB9: $00
    nop                                           ; $4ABA: $00
    cp $19                                        ; $4ABB: $FE $19
    ld c, c                                       ; $4ABD: $49
    ld bc, $0379                                  ; $4ABE: $01 $79 $03
    rlc c                                         ; $4AC1: $CB $01
    ldh a, [$FFF5]                                ; $4AC3: $F0 $F5
    rlca                                          ; $4AC5: $07
    nop                                           ; $4AC6: $00
    db $FD                                        ; $4AC7: $FD
    rlca                                          ; $4AC8: $07
    cp $00                                        ; $4AC9: $FE $00
    db $FC                                        ; $4ACB: $FC
    nop                                           ; $4ACC: $00
    ld d, a                                       ; $4ACD: $57
    ld hl, sp+$00                                 ; $4ACE: $F8 $00
    ldh [rP1], a                                  ; $4AD0: $E0 $00
    add d                                         ; $4AD2: $82
    nop                                           ; $4AD3: $00
    ld c, c                                       ; $4AD4: $49
    dec b                                         ; $4AD5: $05
    xor d                                         ; $4AD6: $AA
    db $FD                                        ; $4AD7: $FD
    pop hl                                        ; $4AD8: $E1
    nop                                           ; $4AD9: $00
    jp $8700                                      ; $4ADA: $C3 $00 $87


    nop                                           ; $4ADD: $00
    rrca                                          ; $4ADE: $0F
    cp [hl]                                       ; $4ADF: $BE
    nop                                           ; $4AE0: $00
    rra                                           ; $4AE1: $1F
    rlca                                          ; $4AE2: $07
    rlca                                          ; $4AE3: $07
    nop                                           ; $4AE4: $00
    db $FD                                        ; $4AE5: $FD
    ld bc, $EA80                                  ; $4AE6: $01 $80 $EA
    nop                                           ; $4AE9: $00
    dec hl                                        ; $4AEA: $2B
    dec b                                         ; $4AEB: $05
    cp $00                                        ; $4AEC: $FE $00
    db $FC                                        ; $4AEE: $FC
    nop                                           ; $4AEF: $00
    ld hl, sp-$55                                 ; $4AF0: $F8 $AB
    nop                                           ; $4AF2: $00
    ldh a, [rP1]                                  ; $4AF3: $F0 $00
    jp $0F00                                      ; $4AF5: $C3 $00 $0F


    nop                                           ; $4AF8: $00
    rst RST_38                                    ; $4AF9: $FF
    ld e, e                                       ; $4AFA: $5B
    ld bc, $E100                                  ; $4AFB: $01 $00 $E1
    ld [bc], a                                    ; $4AFE: $02
    adc c                                         ; $4AFF: $89
    add a                                         ; $4B00: $87
    nop                                           ; $4B01: $00
    sbc c                                         ; $4B02: $99
    ld l, [hl]                                    ; $4B03: $6E
    rra                                           ; $4B04: $1F
    nop                                           ; $4B05: $00
    add hl, de                                    ; $4B06: $19
    rlca                                          ; $4B07: $07
    nop                                           ; $4B08: $00
    ld e, c                                       ; $4B09: $59
    ld a, c                                       ; $4B0A: $79
    ldh a, [$FFDF]                                ; $4B0B: $F0 $DF
    nop                                           ; $4B0D: $00
    rst RST_38                                    ; $4B0E: $FF
    add b                                         ; $4B0F: $80
    nop                                           ; $4B10: $00
    dec hl                                        ; $4B11: $2B
    rlca                                          ; $4B12: $07
    rlca                                          ; $4B13: $07
    xor e                                         ; $4B14: $AB
    xor a                                         ; $4B15: $AF
    db $FD                                        ; $4B16: $FD
    ld bc, $E100                                  ; $4B17: $01 $00 $E1
    rlca                                          ; $4B1A: $07
    rlca                                          ; $4B1B: $07
    ld [bc], a                                    ; $4B1C: $02
    xor c                                         ; $4B1D: $A9
    db $ED                                        ; $4B1E: $ED
    db $FD                                        ; $4B1F: $FD
    dec de                                        ; $4B20: $1B
    inc bc                                        ; $4B21: $03
    db $FC                                        ; $4B22: $FC
    rlca                                          ; $4B23: $07
    inc b                                         ; $4B24: $04
    ld hl, sp+$00                                 ; $4B25: $F8 $00
    ld l, d                                       ; $4B27: $6A
    ret nz                                        ; $4B28: $C0

    nop                                           ; $4B29: $00
    rst RST_38                                    ; $4B2A: $FF
    ldh a, [rDIV]                                 ; $4B2B: $F0 $04
    jr nc, jr_032_4B2F                            ; $4B2D: $30 $00

jr_032_4B2F:
    ld hl, $00AB                                  ; $4B2F: $21 $AB $00
    inc bc                                        ; $4B32: $03
    nop                                           ; $4B33: $00
    ccf                                           ; $4B34: $3F
    ld b, $7F                                     ; $4B35: $06 $7F
    nop                                           ; $4B37: $00
    ret                                           ; $4B38: $C9


    xor e                                         ; $4B39: $AB
    db $FD                                        ; $4B3A: $FD
    rst RST_00                                    ; $4B3B: $C7
    inc b                                         ; $4B3C: $04
    rst RST_20                                    ; $4B3D: $E7
    nop                                           ; $4B3E: $00
    rst RST_08                                    ; $4B3F: $CF
    nop                                           ; $4B40: $00
    adc e                                         ; $4B41: $8B
    xor e                                         ; $4B42: $AB
    ld bc, $0488                                  ; $4B43: $01 $88 $04
    call z, $9900                                 ; $4B46: $CC $00 $99
    nop                                           ; $4B49: $00
    ld a, l                                       ; $4B4A: $7D
    ld e, a                                       ; $4B4B: $5F
    pop bc                                        ; $4B4C: $C1
    nop                                           ; $4B4D: $00
    sbc b                                         ; $4B4E: $98
    rlca                                          ; $4B4F: $07
    rlca                                          ; $4B50: $07
    inc b                                         ; $4B51: $04
    cp c                                          ; $4B52: $B9
    db $FD                                        ; $4B53: $FD
    ld d, a                                       ; $4B54: $57
    di                                            ; $4B55: $F3
    nop                                           ; $4B56: $00
    db $E3                                        ; $4B57: $E3
    nop                                           ; $4B58: $00
    jp Jump_000_2902                              ; $4B59: $C3 $02 $29


    rlca                                          ; $4B5C: $07
    push de                                       ; $4B5D: $D5
    rlca                                          ; $4B5E: $07
    db $FD                                        ; $4B5F: $FD
    pop bc                                        ; $4B60: $C1
    nop                                           ; $4B61: $00
    sbc b                                         ; $4B62: $98
    ld b, $F8                                     ; $4B63: $06 $F8
    nop                                           ; $4B65: $00
    ld l, d                                       ; $4B66: $6A
    pop af                                        ; $4B67: $F1
    nop                                           ; $4B68: $00
    xor c                                         ; $4B69: $A9
    rst RST_00                                    ; $4B6A: $C7
    nop                                           ; $4B6B: $00
    adc a                                         ; $4B6C: $8F
    inc b                                         ; $4B6D: $04
    add b                                         ; $4B6E: $80
    rst RST_38                                    ; $4B6F: $FF
    nop                                           ; $4B70: $00
    rst RST_38                                    ; $4B71: $FF
    rst RST_28                                    ; $4B72: $EF
    ld bc, $2BE9                                  ; $4B73: $01 $E9 $2B
    ld a, l                                       ; $4B76: $7D
    cp c                                          ; $4B77: $B9
    xor [hl]                                      ; $4B78: $AE
    db $FD                                        ; $4B79: $FD
    pop af                                        ; $4B7A: $F1
    ld [bc], a                                    ; $4B7B: $02
    pop hl                                        ; $4B7C: $E1
    ld [bc], a                                    ; $4B7D: $02
    ld a, c                                       ; $4B7E: $79
    ld bc, $BD91                                  ; $4B7F: $01 $91 $BD
    ld b, $80                                     ; $4B82: $06 $80
    nop                                           ; $4B84: $00
    xor e                                         ; $4B85: $AB
    db $FD                                        ; $4B86: $FD
    ld e, c                                       ; $4B87: $59
    sbc a                                         ; $4B88: $9F
    ld b, $57                                     ; $4B89: $06 $57
    add c                                         ; $4B8B: $81
    nop                                           ; $4B8C: $00
    sbc b                                         ; $4B8D: $98
    nop                                           ; $4B8E: $00
    ld hl, sp+$02                                 ; $4B8F: $F8 $02
    add hl, hl                                    ; $4B91: $29
    inc bc                                        ; $4B92: $03
    ld l, e                                       ; $4B93: $6B
    pop bc                                        ; $4B94: $C1
    nop                                           ; $4B95: $00
    db $FD                                        ; $4B96: $FD
    ldh [rP1], a                                  ; $4B97: $E0 $00
    rst RST_08                                    ; $4B99: $CF
    nop                                           ; $4B9A: $00
    rst RST_38                                    ; $4B9B: $FF
    ld [$FFCD], a                                 ; $4B9C: $EA $CD $FF
    db $FD                                        ; $4B9F: $FD
    add b                                         ; $4BA0: $80
    nop                                           ; $4BA1: $00
    ld hl, sp+$06                                 ; $4BA2: $F8 $06
    pop af                                        ; $4BA4: $F1
    cp d                                          ; $4BA5: $BA
    nop                                           ; $4BA6: $00
    db $E3                                        ; $4BA7: $E3
    rlca                                          ; $4BA8: $07
    inc b                                         ; $4BA9: $04
    db $FD                                        ; $4BAA: $FD
    pop bc                                        ; $4BAB: $C1
    nop                                           ; $4BAC: $00
    sbc b                                         ; $4BAD: $98
    cp $07                                        ; $4BAE: $FE $07
    nop                                           ; $4BB0: $00
    ld e, a                                       ; $4BB1: $5F
    ld e, l                                       ; $4BB2: $5D
    rst RST_38                                    ; $4BB3: $FF
    adc a                                         ; $4BB4: $8F
    dec b                                         ; $4BB5: $05
    ret nz                                        ; $4BB6: $C0

    xor h                                         ; $4BB7: $AC
    nop                                           ; $4BB8: $00
    ld hl, sp+$04                                 ; $4BB9: $F8 $04
    add c                                         ; $4BBB: $81
    nop                                           ; $4BBC: $00
    db $EB                                        ; $4BBD: $EB
    add hl, hl                                    ; $4BBE: $29
    ld b, b                                       ; $4BBF: $40
    ld l, [hl]                                    ; $4BC0: $6E
    nop                                           ; $4BC1: $00
    rlca                                          ; $4BC2: $07
    ld b, $FF                                     ; $4BC3: $06 $FF
    rlca                                          ; $4BC5: $07
    rlca                                          ; $4BC6: $07
    inc b                                         ; $4BC7: $04
    db $FC                                        ; $4BC8: $FC
    xor c                                         ; $4BC9: $A9
    nop                                           ; $4BCA: $00
    ld hl, sp+$00                                 ; $4BCB: $F8 $00
    ldh a, [rP1]                                  ; $4BCD: $F0 $00
    ldh [$FFE1], a                                ; $4BCF: $E0 $E1
    ld [$E357], sp                                ; $4BD1: $08 $57 $E3
    ld l, e                                       ; $4BD4: $6B
    nop                                           ; $4BD5: $00
    dec b                                         ; $4BD6: $05
    jp Jump_032_4908                              ; $4BD7: $C3 $08 $49


    cp $54                                        ; $4BDA: $FE $54
    ccf                                           ; $4BDC: $3F
    nop                                           ; $4BDD: $00
    rra                                           ; $4BDE: $1F
    nop                                           ; $4BDF: $00
    rrca                                          ; $4BE0: $0F
    ld bc, $078F                                  ; $4BE1: $01 $8F $07
    rla                                           ; $4BE4: $17
    rst RST_00                                    ; $4BE5: $C7
    ret nz                                        ; $4BE6: $C0

    jp nc, $D308                                  ; $4BE7: $D2 $08 $D3

    ld [$D028], sp                                ; $4BEA: $08 $28 $D0
    and b                                         ; $4BED: $A0
    add hl, sp                                    ; $4BEE: $39
    rst RST_08                                    ; $4BEF: $CF
    ld [$E0CC], sp                                ; $4BF0: $08 $CC $E0
    xor $F0                                       ; $4BF3: $EE $F0
    rst RST_30                                    ; $4BF5: $F7
    dec sp                                        ; $4BF6: $3B
    nop                                           ; $4BF7: $00
    inc e                                         ; $4BF8: $1C
    ld [$08E8], sp                                ; $4BF9: $08 $E8 $08
    rst RST_10                                    ; $4BFC: $D7
    ld a, [bc]                                    ; $4BFD: $0A
    add hl, hl                                    ; $4BFE: $29
    push hl                                       ; $4BFF: $E5
    add hl, bc                                    ; $4C00: $09

jr_032_4C01:
    ld bc, $0318                                  ; $4C01: $01 $18 $03
    ld c, e                                       ; $4C04: $4B
    ld [$08CB], sp                                ; $4C05: $08 $CB $08
    ld [hl], h                                    ; $4C08: $74
    db $E3                                        ; $4C09: $E3
    ld hl, sp+$08                                 ; $4C0A: $F8 $08
    jr jr_032_4C01                                ; $4C0C: $18 $F3

    ld [$0713], sp                                ; $4C0E: $08 $13 $07
    ld a, [bc]                                    ; $4C11: $0A
    ld [hl], a                                    ; $4C12: $77
    rrca                                          ; $4C13: $0F

jr_032_4C14:
    rst RST_28                                    ; $4C14: $EF
    ldh [rP1], a                                  ; $4C15: $E0 $00
    ret nz                                        ; $4C17: $C0

    nop                                           ; $4C18: $00
    add b                                         ; $4C19: $80
    di                                            ; $4C1A: $F3
    nop                                           ; $4C1B: $00
    cp b                                          ; $4C1C: $B8
    ld b, b                                       ; $4C1D: $40
    ld l, b                                       ; $4C1E: $68
    rra                                           ; $4C1F: $1F
    ld [$2908], sp                                ; $4C20: $08 $08 $29
    ret                                           ; $4C23: $C9


    ld a, [bc]                                    ; $4C24: $0A
    dec b                                         ; $4C25: $05
    rst RST_00                                    ; $4C26: $C7
    ld bc, $04C8                                  ; $4C27: $01 $C8 $04
    rst RST_38                                    ; $4C2A: $FF
    jr z, @-$02                                   ; $4C2B: $28 $FC

    ld a, [bc]                                    ; $4C2D: $0A
    cp b                                          ; $4C2E: $B8
    nop                                           ; $4C2F: $00
    ld c, b                                       ; $4C30: $48
    ld [bc], a                                    ; $4C31: $02
    jr c, jr_032_4C14                             ; $4C32: $38 $E0

    add b                                         ; $4C34: $80
    ld a, l                                       ; $4C35: $7D
    ldh a, [rNR23]                                ; $4C36: $F0 $18
    add hl, bc                                    ; $4C38: $09
    jr z, jr_032_4C44                             ; $4C39: $28 $09

    add b                                         ; $4C3B: $80
    cp $0A                                        ; $4C3C: $FE $0A
    ld a, d                                       ; $4C3E: $7A
    adc a                                         ; $4C3F: $8F
    ld [$0858], sp                                ; $4C40: $08 $58 $08
    rlca                                          ; $4C43: $07

jr_032_4C44:
    cp a                                          ; $4C44: $BF
    ld [$AAB7], sp                                ; $4C45: $08 $B7 $AA
    ld [$08F7], sp                                ; $4C48: $08 $F7 $08
    ld [hl], a                                    ; $4C4B: $77
    ld c, $7F                                     ; $4C4C: $0E $7F
    sbc h                                         ; $4C4E: $9C
    rst RST_18                                    ; $4C4F: $DF
    or l                                          ; $4C50: $B5
    ld [$1ADC], sp                                ; $4C51: $08 $DC $1A
    add hl, bc                                    ; $4C54: $09
    sbc $08                                       ; $4C55: $DE $08
    db $DD                                        ; $4C57: $DD
    ld l, d                                       ; $4C58: $6A
    ld d, a                                       ; $4C59: $57
    cp a                                          ; $4C5A: $BF
    ld a, [bc]                                    ; $4C5B: $0A
    inc bc                                        ; $4C5C: $03
    ld a, h                                       ; $4C5D: $7C
    rlca                                          ; $4C5E: $07
    xor $0B                                       ; $4C5F: $EE $0B
    xor e                                         ; $4C61: $AB
    ld d, l                                       ; $4C62: $55
    rra                                           ; $4C63: $1F
    ld [$7A6F], sp                                ; $4C64: $08 $6F $7A
    cp $08                                        ; $4C67: $FE $08
    add c                                         ; $4C69: $81
    cp h                                          ; $4C6A: $BC
    or [hl]                                       ; $4C6B: $B6
    dec b                                         ; $4C6C: $05
    ld a, a                                       ; $4C6D: $7F
    ld a, [bc]                                    ; $4C6E: $0A
    adc c                                         ; $4C6F: $89
    ld sp, hl                                     ; $4C70: $F9
    ld [hl], a                                    ; $4C71: $77
    nop                                           ; $4C72: $00
    cp l                                          ; $4C73: $BD
    cp l                                          ; $4C74: $BD
    ld a, [bc]                                    ; $4C75: $0A
    ld a, [hl]                                    ; $4C76: $7E
    ld h, a                                       ; $4C77: $67
    ld [bc], a                                    ; $4C78: $02
    reti                                          ; $4C79: $D9


    add hl, bc                                    ; $4C7A: $09
    ld b, $67                                     ; $4C7B: $06 $67
    xor [hl]                                      ; $4C7D: $AE
    ld [bc], a                                    ; $4C7E: $02
    rst RST_28                                    ; $4C7F: $EF
    ld a, [bc]                                    ; $4C80: $0A
    pop af                                        ; $4C81: $F1
    ld h, a                                       ; $4C82: $67
    rlca                                          ; $4C83: $07
    nop                                           ; $4C84: $00
    jp Jump_000_08BD                              ; $4C85: $C3 $BD $08


    rst RST_30                                    ; $4C88: $F7

jr_032_4C89:
    cp d                                          ; $4C89: $BA
    add hl, hl                                    ; $4C8A: $29
    rlca                                          ; $4C8B: $07
    nop                                           ; $4C8C: $00
    db $FC                                        ; $4C8D: $FC
    nop                                           ; $4C8E: $00
    ld d, d                                       ; $4C8F: $52
    ld hl, sp+$00                                 ; $4C90: $F8 $00
    ldh a, [rP1]                                  ; $4C92: $F0 $00
    ldh [$FFE1], a                                ; $4C94: $E0 $E1
    ld l, l                                       ; $4C96: $6D
    nop                                           ; $4C97: $00
    db $FD                                        ; $4C98: $FD
    dec b                                         ; $4C99: $05
    ld hl, sp+$08                                 ; $4C9A: $F8 $08
    ld h, e                                       ; $4C9C: $63
    xor b                                         ; $4C9D: $A8
    ld [$08FD], sp                                ; $4C9E: $08 $FD $08
    ld a, [bc]                                    ; $4CA1: $0A
    ei                                            ; $4CA2: $FB
    ccf                                           ; $4CA3: $3F
    jr nc, jr_032_4CC5                            ; $4CA4: $30 $1F

    nop                                           ; $4CA6: $00
    rrca                                          ; $4CA7: $0F
    ld bc, $008F                                  ; $4CA8: $01 $8F $00
    ldh [$FFE3], a                                ; $4CAB: $E0 $E3
    ret nz                                        ; $4CAD: $C0

    jp nc, $D3C1                                  ; $4CAE: $D2 $C1 $D3

    jp nz, $EAC7                                  ; $4CB1: $C2 $C7 $EA

    jr jr_032_4CBE                                ; $4CB4: $18 $08

    jr c, @-$2F                                   ; $4CB6: $38 $CF

    ld [$68CC], sp                                ; $4CB8: $08 $CC $68
    xor $66                                       ; $4CBB: $EE $66
    nop                                           ; $4CBD: $00

jr_032_4CBE:
    ret nc                                        ; $4CBE: $D0

    ld [$8018], sp                                ; $4CBF: $08 $18 $80
    jr @+$4A                                      ; $4CC2: $18 $48

    rst RST_10                                    ; $4CC4: $D7

jr_032_4CC5:
    cp d                                          ; $4CC5: $BA
    ld c, b                                       ; $4CC6: $48
    rst RST_30                                    ; $4CC7: $F7
    ld c, d                                       ; $4CC8: $4A
    add hl, bc                                    ; $4CC9: $09
    nop                                           ; $4CCA: $00
    rlca                                          ; $4CCB: $07
    cp b                                          ; $4CCC: $B8
    inc bc                                        ; $4CCD: $03
    ld d, e                                       ; $4CCE: $53
    ld c, e                                       ; $4CCF: $4B
    ld [$08CB], sp                                ; $4CD0: $08 $CB $08
    db $E3                                        ; $4CD3: $E3
    jp $1808                                      ; $4CD4: $C3 $08 $18


    ld d, e                                       ; $4CD7: $53
    di                                            ; $4CD8: $F3
    ld [$6813], sp                                ; $4CD9: $08 $13 $68
    ld [hl], a                                    ; $4CDC: $77
    ldh a, [$FFB8]                                ; $4CDD: $F0 $B8
    ret z                                         ; $4CDF: $C8

    db $ED                                        ; $4CE0: $ED
    nop                                           ; $4CE1: $00
    add sp, $00                                   ; $4CE2: $E8 $00
    add b                                         ; $4CE4: $80
    nop                                           ; $4CE5: $00
    ret nz                                        ; $4CE6: $C0

    rrca                                          ; $4CE7: $0F
    ld l, b                                       ; $4CE8: $68
    dec sp                                        ; $4CE9: $3B
    rra                                           ; $4CEA: $1F
    ld [$2908], sp                                ; $4CEB: $08 $08 $29
    ld [$08FF], sp                                ; $4CEE: $08 $FF $08
    dec b                                         ; $4CF1: $05
    rrca                                          ; $4CF2: $0F
    rst RST_00                                    ; $4CF3: $C7
    ld bc, $04EF                                  ; $4CF4: $01 $EF $04
    ld e, c                                       ; $4CF7: $59
    ld [$2880], sp                                ; $4CF8: $08 $80 $28
    ld hl, sp-$48                                 ; $4CFB: $F8 $B8
    nop                                           ; $4CFD: $00
    ld c, b                                       ; $4CFE: $48
    ld [bc], a                                    ; $4CFF: $02
    ld c, b                                       ; $4D00: $48
    ldh [$FF80], a                                ; $4D01: $E0 $80
    ldh a, [$FFFD]                                ; $4D03: $F0 $FD
    jr jr_032_4D10                                ; $4D05: $18 $09

    jr z, jr_032_4C89                             ; $4D07: $28 $80

    ld a, b                                       ; $4D09: $78
    ld [$0ADF], sp                                ; $4D0A: $08 $DF $0A
    xor [hl]                                      ; $4D0D: $AE
    add hl, hl                                    ; $4D0E: $29
    rst RST_30                                    ; $4D0F: $F7

jr_032_4D10:
    ld [$0AFB], sp                                ; $4D10: $08 $FB $0A
    add hl, hl                                    ; $4D13: $29
    ld a, e                                       ; $4D14: $7B
    reti                                          ; $4D15: $D9


    cp d                                          ; $4D16: $BA
    ld [$08E6], sp                                ; $4D17: $08 $E6 $08
    rlca                                          ; $4D1A: $07
    inc bc                                        ; $4D1B: $03
    ld sp, hl                                     ; $4D1C: $F9
    ld [$AFF6], sp                                ; $4D1D: $08 $F6 $AF
    ld [$086F], sp                                ; $4D20: $08 $6F $08
    sbc a                                         ; $4D23: $9F
    ld e, h                                       ; $4D24: $5C
    ei                                            ; $4D25: $FB
    add hl, bc                                    ; $4D26: $09
    add hl, hl                                    ; $4D27: $29
    rst RST_10                                    ; $4D28: $D7
    ld a, a                                       ; $4D29: $7F
    rst RST_38                                    ; $4D2A: $FF
    rst RST_30                                    ; $4D2B: $F7
    ld [$0AFB], sp                                ; $4D2C: $08 $FB $0A
    add hl, hl                                    ; $4D2F: $29
    rlca                                          ; $4D30: $07
    ld d, b                                       ; $4D31: $50
    ld h, a                                       ; $4D32: $67
    ld [$7B9B], sp                                ; $4D33: $08 $9B $7B
    ld [de], a                                    ; $4D36: $12
    nop                                           ; $4D37: $00
    ld l, $00                                     ; $4D38: $2E $00
    inc hl                                        ; $4D3A: $23
    db $10                                        ; $4D3B: $10
    ld hl, $1F1F                                  ; $4D3C: $21 $1F $1F
    ld [de], a                                    ; $4D3F: $12
    inc h                                         ; $4D40: $24
    xor [hl]                                      ; $4D41: $AE
    db $10                                        ; $4D42: $10
    rra                                           ; $4D43: $1F
    db $10                                        ; $4D44: $10
    ld bc, $1F1F                                  ; $4D45: $01 $1F $1F
    ld [de], a                                    ; $4D48: $12
    rra                                           ; $4D49: $1F
    rst RST_30                                    ; $4D4A: $F7
    ld [de], a                                    ; $4D4B: $12
    ei                                            ; $4D4C: $FB
    rra                                           ; $4D4D: $1F
    rla                                           ; $4D4E: $17
    rra                                           ; $4D4F: $1F
    ld [de], a                                    ; $4D50: $12
    ei                                            ; $4D51: $FB
    rra                                           ; $4D52: $1F
    cp l                                          ; $4D53: $BD
    rla                                           ; $4D54: $17
    rra                                           ; $4D55: $1F
    ld [de], a                                    ; $4D56: $12
    ei                                            ; $4D57: $FB
    rra                                           ; $4D58: $1F
    rla                                           ; $4D59: $17
    rra                                           ; $4D5A: $1F
    ld [de], a                                    ; $4D5B: $12
    rst RST_28                                    ; $4D5C: $EF
    ei                                            ; $4D5D: $FB
    rra                                           ; $4D5E: $1F
    rla                                           ; $4D5F: $17
    rra                                           ; $4D60: $1F
    ld [de], a                                    ; $4D61: $12
    ei                                            ; $4D62: $FB
    rra                                           ; $4D63: $1F
    rla                                           ; $4D64: $17
    ld a, e                                       ; $4D65: $7B
    rra                                           ; $4D66: $1F
    ld [de], a                                    ; $4D67: $12
    ei                                            ; $4D68: $FB
    rra                                           ; $4D69: $1F

jr_032_4D6A:
    rla                                           ; $4D6A: $17
    rra                                           ; $4D6B: $1F
    ld [de], a                                    ; $4D6C: $12
    ei                                            ; $4D6D: $FB
    sbc $1F                                       ; $4D6E: $DE $1F
    rla                                           ; $4D70: $17
    rra                                           ; $4D71: $1F
    ld [de], a                                    ; $4D72: $12
    ei                                            ; $4D73: $FB
    rra                                           ; $4D74: $1F
    rla                                           ; $4D75: $17
    rra                                           ; $4D76: $1F
    rst RST_30                                    ; $4D77: $F7
    ld [de], a                                    ; $4D78: $12
    ei                                            ; $4D79: $FB
    rra                                           ; $4D7A: $1F
    rla                                           ; $4D7B: $17
    rra                                           ; $4D7C: $1F
    ld [de], a                                    ; $4D7D: $12
    ei                                            ; $4D7E: $FB
    rra                                           ; $4D7F: $1F
    cp d                                          ; $4D80: $BA
    rla                                           ; $4D81: $17
    rra                                           ; $4D82: $1F
    ld [de], a                                    ; $4D83: $12
    ei                                            ; $4D84: $FB
    dec e                                         ; $4D85: $1D
    dec bc                                        ; $4D86: $0B
    db $10                                        ; $4D87: $10
    inc c                                         ; $4D88: $0C
    xor d                                         ; $4D89: $AA
    db $10                                        ; $4D8A: $10
    dec c                                         ; $4D8B: $0D
    db $10                                        ; $4D8C: $10
    ld c, $10                                     ; $4D8D: $0E $10
    rrca                                          ; $4D8F: $0F
    db $10                                        ; $4D90: $10
    rra                                           ; $4D91: $1F
    push af                                       ; $4D92: $F5

jr_032_4D93:
    ld [de], a                                    ; $4D93: $12
    pop af                                        ; $4D94: $F1
    rra                                           ; $4D95: $1F
    inc de                                        ; $4D96: $13
    dec d                                         ; $4D97: $15
    ld [hl-], a                                   ; $4D98: $32
    db $10                                        ; $4D99: $10
    db $10                                        ; $4D9A: $10
    ld d, l                                       ; $4D9B: $55
    ld de, $1210                                  ; $4D9C: $11 $10 $12
    db $10                                        ; $4D9F: $10
    inc de                                        ; $4DA0: $13
    db $10                                        ; $4DA1: $10
    inc d                                         ; $4DA2: $14
    db $10                                        ; $4DA3: $10
    ld d, l                                       ; $4DA4: $55
    rra                                           ; $4DA5: $1F
    ld [de], a                                    ; $4DA6: $12
    ld [bc], a                                    ; $4DA7: $02
    db $10                                        ; $4DA8: $10
    inc bc                                        ; $4DA9: $03
    db $10                                        ; $4DAA: $10
    inc b                                         ; $4DAB: $04
    ld e, h                                       ; $4DAC: $5C
    ld d, [hl]                                    ; $4DAD: $56
    ld d, $10                                     ; $4DAE: $16 $10
    rla                                           ; $4DB0: $17
    db $10                                        ; $4DB1: $10
    jr jr_032_4D6A                                ; $4DB2: $18 $B6

    ld d, l                                       ; $4DB4: $55
    rra                                           ; $4DB5: $1F
    xor d                                         ; $4DB6: $AA
    ld [de], a                                    ; $4DB7: $12
    dec b                                         ; $4DB8: $05
    db $10                                        ; $4DB9: $10
    ld b, $10                                     ; $4DBA: $06 $10
    rlca                                          ; $4DBC: $07
    ld e, h                                       ; $4DBD: $5C
    add hl, de                                    ; $4DBE: $19
    xor l                                         ; $4DBF: $AD
    db $10                                        ; $4DC0: $10
    ld a, [de]                                    ; $4DC1: $1A
    db $10                                        ; $4DC2: $10
    dec de                                        ; $4DC3: $1B
    or [hl]                                       ; $4DC4: $B6
    ld d, l                                       ; $4DC5: $55
    rra                                           ; $4DC6: $1F
    ld [de], a                                    ; $4DC7: $12
    ld d, l                                       ; $4DC8: $55
    ld [$0910], sp                                ; $4DC9: $08 $10 $09
    db $10                                        ; $4DCC: $10
    ld a, [bc]                                    ; $4DCD: $0A
    ld e, h                                       ; $4DCE: $5C
    inc e                                         ; $4DCF: $1C
    db $10                                        ; $4DD0: $10
    ld e, d                                       ; $4DD1: $5A
    dec e                                         ; $4DD2: $1D
    db $10                                        ; $4DD3: $10
    ld e, $B6                                     ; $4DD4: $1E $B6
    ld d, l                                       ; $4DD6: $55
    rra                                           ; $4DD7: $1F
    db $10                                        ; $4DD8: $10
    jr nz, jr_032_4D93                            ; $4DD9: $20 $B8

    db $10                                        ; $4DDB: $10
    ld hl, $1F1F                                  ; $4DDC: $21 $1F $1F
    ld [de], a                                    ; $4DDF: $12
    ld [hl+], a                                   ; $4DE0: $22
    xor c                                         ; $4DE1: $A9
    add b                                         ; $4DE2: $80
    ld a, e                                       ; $4DE3: $7B
    nop                                           ; $4DE4: $00
    inc bc                                        ; $4DE5: $03
    inc bc                                        ; $4DE6: $03
    inc bc                                        ; $4DE7: $03
    ld [bc], a                                    ; $4DE8: $02
    rst RST_38                                    ; $4DE9: $FF
    rlca                                          ; $4DEA: $07
    rlca                                          ; $4DEB: $07
    rst RST_38                                    ; $4DEC: $FF
    rlca                                          ; $4DED: $07
    ld b, $13                                     ; $4DEE: $06 $13
    rlca                                          ; $4DF0: $07
    rlca                                          ; $4DF1: $07
    rlca                                          ; $4DF2: $07
    inc bc                                        ; $4DF3: $03
    inc bc                                        ; $4DF4: $03
    push de                                       ; $4DF5: $D5
    inc bc                                        ; $4DF6: $03
    inc bc                                        ; $4DF7: $03
    jr jr_032_4DFA                                ; $4DF8: $18 $00

jr_032_4DFA:
    inc h                                         ; $4DFA: $24
    nop                                           ; $4DFB: $00
    ld h, [hl]                                    ; $4DFC: $66
    inc bc                                        ; $4DFD: $03
    cp l                                          ; $4DFE: $BD
    nop                                           ; $4DFF: $00
    ld a, [hl]                                    ; $4E00: $7E
    nop                                           ; $4E01: $00
    dec c                                         ; $4E02: $0D
    cp c                                          ; $4E03: $B9
    ld bc, $0008                                  ; $4E04: $01 $08 $00
    ld a, l                                       ; $4E07: $7D
    inc c                                         ; $4E08: $0C
    nop                                           ; $4E09: $00
    dec l                                         ; $4E0A: $2D
    dec c                                         ; $4E0B: $0D
    dec e                                         ; $4E0C: $1D
    scf                                           ; $4E0D: $37
    ld b, d                                       ; $4E0E: $42
    nop                                           ; $4E0F: $00
    ld a, [hl]                                    ; $4E10: $7E
    ld e, a                                       ; $4E11: $5F
    nop                                           ; $4E12: $00
    dec c                                         ; $4E13: $0D
    inc bc                                        ; $4E14: $03
    ld bc, $3DA5                                  ; $4E15: $01 $A5 $3D
    ld bc, $00D7                                  ; $4E18: $01 $D7 $00
    ld d, a                                       ; $4E1B: $57
    ld a, b                                       ; $4E1C: $78
    nop                                           ; $4E1D: $00
    inc b                                         ; $4E1E: $04
    ld [bc], a                                    ; $4E1F: $02
    db $ED                                        ; $4E20: $ED
    dec h                                         ; $4E21: $25
    ld d, l                                       ; $4E22: $55
    db $FD                                        ; $4E23: $FD
    nop                                           ; $4E24: $00
    add hl, bc                                    ; $4E25: $09
    nop                                           ; $4E26: $00
    ld de, $2100                                  ; $4E27: $11 $00 $21
    inc bc                                        ; $4E2A: $03
    cp [hl]                                       ; $4E2B: $BE
    nop                                           ; $4E2C: $00
    inc e                                         ; $4E2D: $1C
    nop                                           ; $4E2E: $00
    ld l, a                                       ; $4E2F: $6F
    db $DD                                        ; $4E30: $DD
    ld l, a                                       ; $4E31: $6F
    xor l                                         ; $4E32: $AD
    ld b, h                                       ; $4E33: $44
    cp a                                          ; $4E34: $BF
    nop                                           ; $4E35: $00
    add b                                         ; $4E36: $80
    nop                                           ; $4E37: $00
    ccf                                           ; $4E38: $3F
    inc bc                                        ; $4E39: $03
    inc bc                                        ; $4E3A: $03
    inc bc                                        ; $4E3B: $03
    ld bc, $7C5F                                  ; $4E3C: $01 $5F $7C
    nop                                           ; $4E3F: $00
    ld h, [hl]                                    ; $4E40: $66
    ld [bc], a                                    ; $4E41: $02
    rla                                           ; $4E42: $17
    rla                                           ; $4E43: $17
    ld b, a                                       ; $4E44: $47
    cp l                                          ; $4E45: $BD
    ld e, [hl]                                    ; $4E46: $5E
    inc c                                         ; $4E47: $0C
    nop                                           ; $4E48: $00
    ld a, [hl]                                    ; $4E49: $7E
    nop                                           ; $4E4A: $00
    dec c                                         ; $4E4B: $0D
    dec e                                         ; $4E4C: $1D
    scf                                           ; $4E4D: $37
    db $10                                        ; $4E4E: $10
    or l                                          ; $4E4F: $B5
    nop                                           ; $4E50: $00
    ld a, l                                       ; $4E51: $7D
    nop                                           ; $4E52: $00
    dec c                                         ; $4E53: $0D
    ld a, $00                                     ; $4E54: $3E $00
    ld d, c                                       ; $4E56: $51
    ld [bc], a                                    ; $4E57: $02
    ld l, d                                       ; $4E58: $6A
    ld [hl+], a                                   ; $4E59: $22
    nop                                           ; $4E5A: $00
    dec a                                         ; $4E5B: $3D
    jr nz, jr_032_4E5E                            ; $4E5C: $20 $00

jr_032_4E5E:
    ld l, [hl]                                    ; $4E5E: $6E
    nop                                           ; $4E5F: $00
    ld sp, $00AD                                  ; $4E60: $31 $AD $00
    ld hl, $6100                                  ; $4E63: $21 $00 $61
    ld [bc], a                                    ; $4E66: $02
    ccf                                           ; $4E67: $3F
    ld b, d                                       ; $4E68: $42
    inc bc                                        ; $4E69: $03
    sub $02                                       ; $4E6A: $D6 $02
    dec l                                         ; $4E6C: $2D
    inc b                                         ; $4E6D: $04
    nop                                           ; $4E6E: $00
    jr c, jr_032_4E71                             ; $4E6F: $38 $00

jr_032_4E71:
    dec a                                         ; $4E71: $3D
    rst RST_38                                    ; $4E72: $FF
    add b                                         ; $4E73: $80
    nop                                           ; $4E74: $00
    pop bc                                        ; $4E75: $C1
    sbc [hl]                                      ; $4E76: $9E
    pop hl                                        ; $4E77: $E1
    adc [hl]                                      ; $4E78: $8E
    ldh [c], a                                    ; $4E79: $E2
    adc h                                         ; $4E7A: $8C
    ldh [rNR22], a                                ; $4E7B: $E0 $17
    add b                                         ; $4E7D: $80
    ret nz                                        ; $4E7E: $C0

    sub a                                         ; $4E7F: $97
    ld [$05B7], sp                                ; $4E80: $08 $B7 $05
    dec a                                         ; $4E83: $3D
    ldh a, [$FF98]                                ; $4E84: $F0 $98
    ld c, h                                       ; $4E86: $4C
    ld d, [hl]                                    ; $4E87: $56
    ld b, $0C                                     ; $4E88: $06 $0C
    jr nc, jr_032_4EA2                            ; $4E8A: $30 $16

    add $19                                       ; $4E8C: $C6 $19
    push hl                                       ; $4E8E: $E5
    inc c                                         ; $4E8F: $0C
    jr @+$52                                      ; $4E90: $18 $50

    ld bc, $3DF8                                  ; $4E92: $01 $F8 $3D
    adc l                                         ; $4E95: $8D
    db $10                                        ; $4E96: $10
    ld c, d                                       ; $4E97: $4A
    sub l                                         ; $4E98: $95
    inc b                                         ; $4E99: $04
    cp c                                          ; $4E9A: $B9
    inc bc                                        ; $4E9B: $03
    dec b                                         ; $4E9C: $05
    ld [hl], c                                    ; $4E9D: $71
    inc b                                         ; $4E9E: $04
    jp hl                                         ; $4E9F: $E9


    or h                                          ; $4EA0: $B4
    inc e                                         ; $4EA1: $1C

jr_032_4EA2:
    rrc h                                         ; $4EA2: $CB $0C
    add h                                         ; $4EA4: $84
    add c                                         ; $4EA5: $81
    ld e, b                                       ; $4EA6: $58
    sbc b                                         ; $4EA7: $98
    reti                                          ; $4EA8: $D9


    add hl, de                                    ; $4EA9: $19
    sbc c                                         ; $4EAA: $99
    db $DB                                        ; $4EAB: $DB
    sbc e                                         ; $4EAC: $9B
    ret nz                                        ; $4EAD: $C0

    nop                                           ; $4EAE: $00
    rst RST_30                                    ; $4EAF: $F7
    add a                                         ; $4EB0: $87
    jr nz, @-$54                                  ; $4EB1: $20 $AA

    ld a, h                                       ; $4EB3: $7C
    add h                                         ; $4EB4: $84
    ld e, c                                       ; $4EB5: $59
    db $FC                                        ; $4EB6: $FC
    inc b                                         ; $4EB7: $04
    inc a                                         ; $4EB8: $3C
    ret nz                                        ; $4EB9: $C0

    ld b, b                                       ; $4EBA: $40
    ld de, $6260                                  ; $4EBB: $11 $60 $62
    ldh a, [rP1]                                  ; $4EBE: $F0 $00
    call z, $1DCD                                 ; $4EC0: $CC $CD $1D
    nop                                           ; $4EC3: $00
    ld h, b                                       ; $4EC4: $60
    cp l                                          ; $4EC5: $BD
    nop                                           ; $4EC6: $00
    ld a, b                                       ; $4EC7: $78
    inc hl                                        ; $4EC8: $23
    dec c                                         ; $4EC9: $0D
    ld hl, $A18F                                  ; $4ECA: $21 $8F $A1
    reti                                          ; $4ECD: $D9


    dec c                                         ; $4ECE: $0D
    ld d, h                                       ; $4ECF: $54
    ld b, c                                       ; $4ED0: $41
    inc c                                         ; $4ED1: $0C
    jr z, jr_032_4EDD                             ; $4ED2: $28 $09

    pop bc                                        ; $4ED4: $C1
    dec b                                         ; $4ED5: $05
    rra                                           ; $4ED6: $1F
    jp nz, $82DC                                  ; $4ED7: $C2 $DC $82

    sub h                                         ; $4EDA: $94
    inc b                                         ; $4EDB: $04
    ld l, h                                       ; $4EDC: $6C

jr_032_4EDD:
    inc b                                         ; $4EDD: $04
    ret c                                         ; $4EDE: $D8

    add $06                                       ; $4EDF: $C6 $06
    ldh [$FF86], a                                ; $4EE1: $E0 $86
    and b                                         ; $4EE3: $A0
    rst RST_38                                    ; $4EE4: $FF
    nop                                           ; $4EE5: $00
    add l                                         ; $4EE6: $85
    db $DD                                        ; $4EE7: $DD
    pop hl                                        ; $4EE8: $E1
    nop                                           ; $4EE9: $00
    ld c, b                                       ; $4EEA: $48
    ld b, $68                                     ; $4EEB: $06 $68
    ld l, e                                       ; $4EED: $6B
    jr z, jr_032_4F1A                             ; $4EEE: $28 $2A

    call c, Call_000_00DE                         ; $4EF0: $DC $DE $00
    dec a                                         ; $4EF3: $3D
    dec bc                                        ; $4EF4: $0B
    add h                                         ; $4EF5: $84
    sbc l                                         ; $4EF6: $9D
    inc c                                         ; $4EF7: $0C
    inc b                                         ; $4EF8: $04
    rlca                                          ; $4EF9: $07
    dec hl                                        ; $4EFA: $2B
    ld bc, $043F                                  ; $4EFB: $01 $3F $04
    ld a, l                                       ; $4EFE: $7D
    inc b                                         ; $4EFF: $04
    ei                                            ; $4F00: $FB
    inc b                                         ; $4F01: $04
    dec a                                         ; $4F02: $3D
    ei                                            ; $4F03: $FB
    ld bc, $A4B0                                  ; $4F04: $01 $B0 $A4
    sbc h                                         ; $4F07: $9C
    inc b                                         ; $4F08: $04
    cp d                                          ; $4F09: $BA
    inc b                                         ; $4F0A: $04
    ld e, b                                       ; $4F0B: $58
    db $EB                                        ; $4F0C: $EB
    inc b                                         ; $4F0D: $04
    jr nz, jr_032_4F14                            ; $4F0E: $20 $04

    rst RST_00                                    ; $4F10: $C7

jr_032_4F11:
    inc b                                         ; $4F11: $04
    cp b                                          ; $4F12: $B8
    dec d                                         ; $4F13: $15

jr_032_4F14:
    nop                                           ; $4F14: $00
    ld d, l                                       ; $4F15: $55
    ld l, h                                       ; $4F16: $6C
    sub h                                         ; $4F17: $94
    xor $06                                       ; $4F18: $EE $06

jr_032_4F1A:
    ld l, l                                       ; $4F1A: $6D
    inc b                                         ; $4F1B: $04
    xor e                                         ; $4F1C: $AB
    inc b                                         ; $4F1D: $04
    push af                                       ; $4F1E: $F5
    inc a                                         ; $4F1F: $3C
    inc b                                         ; $4F20: $04
    dec l                                         ; $4F21: $2D
    dec a                                         ; $4F22: $3D
    dec a                                         ; $4F23: $3D
    sub h                                         ; $4F24: $94
    jp Jump_032_7A04                              ; $4F25: $C3 $04 $7A


    cp c                                          ; $4F28: $B9
    inc b                                         ; $4F29: $04
    push bc                                       ; $4F2A: $C5
    jr nz, jr_032_4F31                            ; $4F2B: $20 $04

    add e                                         ; $4F2D: $83
    inc b                                         ; $4F2E: $04
    ld a, a                                       ; $4F2F: $7F
    db $ED                                        ; $4F30: $ED

jr_032_4F31:
    inc b                                         ; $4F31: $04
    adc l                                         ; $4F32: $8D
    ld bc, $00BC                                  ; $4F33: $01 $BC $00
    ld d, l                                       ; $4F36: $55
    ld sp, hl                                     ; $4F37: $F9
    nop                                           ; $4F38: $00
    ld h, a                                       ; $4F39: $67
    sub [hl]                                      ; $4F3A: $96
    nop                                           ; $4F3B: $00
    dec h                                         ; $4F3C: $25
    adc b                                         ; $4F3D: $88
    or c                                          ; $4F3E: $B1
    ld c, h                                       ; $4F3F: $4C
    adc [hl]                                      ; $4F40: $8E
    ld d, b                                       ; $4F41: $50
    sub h                                         ; $4F42: $94
    nop                                           ; $4F43: $00
    inc bc                                        ; $4F44: $03
    dec de                                        ; $4F45: $1B
    inc e                                         ; $4F46: $1C
    sbc e                                         ; $4F47: $9B
    jr nc, @-$66                                  ; $4F48: $30 $98

    jr jr_032_4F94                                ; $4F4A: $18 $48

    ld b, e                                       ; $4F4C: $43
    jr z, jr_032_4F11                             ; $4F4D: $28 $C2

    add c                                         ; $4F4F: $81
    inc l                                         ; $4F50: $2C
    ld a, e                                       ; $4F51: $7B
    ld a, c                                       ; $4F52: $79
    db $FD                                        ; $4F53: $FD
    xor l                                         ; $4F54: $AD
    nop                                           ; $4F55: $00
    sbc l                                         ; $4F56: $9D
    nop                                           ; $4F57: $00
    ld h, c                                       ; $4F58: $61
    nop                                           ; $4F59: $00
    ld d, [hl]                                    ; $4F5A: $56
    ld sp, $040D                                  ; $4F5B: $31 $0D $04
    xor d                                         ; $4F5E: $AA
    jp nc, $93E9                                  ; $4F5F: $D2 $E9 $93

    ret                                           ; $4F62: $C9


jr_032_4F63:
    sub h                                         ; $4F63: $94
    ret nz                                        ; $4F64: $C0

    or d                                          ; $4F65: $B2
    daa                                           ; $4F66: $27
    sub b                                         ; $4F67: $90
    rst RST_20                                    ; $4F68: $E7
    inc b                                         ; $4F69: $04
    db $E3                                        ; $4F6A: $E3
    xor h                                         ; $4F6B: $AC
    jr @-$21                                      ; $4F6C: $18 $DD

    ld b, [hl]                                    ; $4F6E: $46
    cp l                                          ; $4F6F: $BD
    inc c                                         ; $4F70: $0C
    ld d, l                                       ; $4F71: $55
    inc b                                         ; $4F72: $04
    sbc h                                         ; $4F73: $9C
    ld bc, $38C0                                  ; $4F74: $01 $C0 $38
    inc b                                         ; $4F77: $04
    ld h, b                                       ; $4F78: $60
    ld a, h                                       ; $4F79: $7C
    db $10                                        ; $4F7A: $10
    dec a                                         ; $4F7B: $3D
    sub c                                         ; $4F7C: $91
    adc l                                         ; $4F7D: $8D
    sub l                                         ; $4F7E: $95
    rl a                                          ; $4F7F: $CB $17
    inc d                                         ; $4F81: $14

jr_032_4F82:
    add hl, bc                                    ; $4F82: $09
    inc de                                        ; $4F83: $13
    ld c, l                                       ; $4F84: $4D
    ld [$04C7], sp                                ; $4F85: $08 $C7 $04
    add a                                         ; $4F88: $87
    ld h, l                                       ; $4F89: $65
    ld [$3DC0], a                                 ; $4F8A: $EA $C0 $3D
    ld bc, $048E                                  ; $4F8D: $01 $8E $04
    sbc h                                         ; $4F90: $9C
    dec b                                         ; $4F91: $05
    sbc a                                         ; $4F92: $9F
    ld c, l                                       ; $4F93: $4D

jr_032_4F94:
    ldh [$FF74], a                                ; $4F94: $E0 $74
    db $FC                                        ; $4F96: $FC
    add b                                         ; $4F97: $80
    jr jr_032_4F9E                                ; $4F98: $18 $04

    cp a                                          ; $4F9A: $BF
    dec c                                         ; $4F9B: $0D
    add d                                         ; $4F9C: $82
    nop                                           ; $4F9D: $00

jr_032_4F9E:
    jr jr_032_4F63                                ; $4F9E: $18 $C3

    inc a                                         ; $4FA0: $3C
    add c                                         ; $4FA1: $81
    ld a, $1C                                     ; $4FA2: $3E $1C
    ld a, [hl]                                    ; $4FA4: $7E
    call nc, $05AC                                ; $4FA5: $D4 $AC $05
    dec a                                         ; $4FA8: $3D
    inc b                                         ; $4FA9: $04
    db $DD                                        ; $4FAA: $DD
    add $01                                       ; $4FAB: $C6 $01
    db $FD                                        ; $4FAD: $FD
    add a                                         ; $4FAE: $87
    sbc b                                         ; $4FAF: $98
    ld sp, hl                                     ; $4FB0: $F9
    rlca                                          ; $4FB1: $07
    pop bc                                        ; $4FB2: $C1
    ccf                                           ; $4FB3: $3F
    add hl, de                                    ; $4FB4: $19
    inc b                                         ; $4FB5: $04
    ld e, b                                       ; $4FB6: $58
    cp a                                          ; $4FB7: $BF
    inc b                                         ; $4FB8: $04
    ld a, c                                       ; $4FB9: $79
    nop                                           ; $4FBA: $00
    ld h, b                                       ; $4FBB: $60
    nop                                           ; $4FBC: $00
    xor b                                         ; $4FBD: $A8
    nop                                           ; $4FBE: $00
    sub h                                         ; $4FBF: $94
    cp d                                          ; $4FC0: $BA
    nop                                           ; $4FC1: $00
    cp [hl]                                       ; $4FC2: $BE
    and c                                         ; $4FC3: $A1
    db $F4                                        ; $4FC4: $F4
    inc b                                         ; $4FC5: $04
    cp b                                          ; $4FC6: $B8
    inc b                                         ; $4FC7: $04
    adc a                                         ; $4FC8: $8F
    ld d, l                                       ; $4FC9: $55
    ret nc                                        ; $4FCA: $D0

    ld [$84EA], sp                                ; $4FCB: $08 $EA $84
    ld h, d                                       ; $4FCE: $62
    inc b                                         ; $4FCF: $04
    dec [hl]                                      ; $4FD0: $35
    ld h, b                                       ; $4FD1: $60
    ld c, a                                       ; $4FD2: $4F
    dec d                                         ; $4FD3: $15
    ld a, h                                       ; $4FD4: $7C
    inc d                                         ; $4FD5: $14
    ret nz                                        ; $4FD6: $C0

    inc b                                         ; $4FD7: $04
    inc e                                         ; $4FD8: $1C
    inc b                                         ; $4FD9: $04
    inc [hl]                                      ; $4FDA: $34
    ld hl, sp+$0D                                 ; $4FDB: $F8 $0D
    xor b                                         ; $4FDD: $A8
    sbc b                                         ; $4FDE: $98
    inc b                                         ; $4FDF: $04
    nop                                           ; $4FE0: $00
    pop af                                        ; $4FE1: $F1
    push af                                       ; $4FE2: $F5
    pop hl                                        ; $4FE3: $E1
    ld e, [hl]                                    ; $4FE4: $5E
    db $ED                                        ; $4FE5: $ED
    xor b                                         ; $4FE6: $A8
    add hl, de                                    ; $4FE7: $19
    call nc, $D418                                ; $4FE8: $D4 $18 $D4
    db $10                                        ; $4FEB: $10
    rst RST_10                                    ; $4FEC: $D7
    adc e                                         ; $4FED: $8B
    inc b                                         ; $4FEE: $04
    cp e                                          ; $4FEF: $BB
    sub b                                         ; $4FF0: $90
    sub e                                         ; $4FF1: $93
    ld d, h                                       ; $4FF2: $54
    sub $04                                       ; $4FF3: $D6 $04
    rla                                           ; $4FF5: $17
    xor $C1                                       ; $4FF6: $EE $C1
    sbc b                                         ; $4FF8: $98
    inc b                                         ; $4FF9: $04
    rst RST_38                                    ; $4FFA: $FF
    nop                                           ; $4FFB: $00
    jr nz, jr_032_4F82                            ; $4FFC: $20 $84

    ld [hl+], a                                   ; $4FFE: $22
    xor e                                         ; $4FFF: $AB
    inc b                                         ; $5000: $04
    or $04                                        ; $5001: $F6 $04
    ld [hl], l                                    ; $5003: $75
    inc b                                         ; $5004: $04

jr_032_5005:
    or l                                          ; $5005: $B5
    ld b, $2D                                     ; $5006: $06 $2D
    adc l                                         ; $5008: $8D
    dec a                                         ; $5009: $3D
    dec sp                                        ; $500A: $3B
    ld de, $9713                                  ; $500B: $11 $13 $97
    inc d                                         ; $500E: $14
    sub c                                         ; $500F: $91
    inc c                                         ; $5010: $0C
    push hl                                       ; $5011: $E5
    inc bc                                        ; $5012: $03
    dec a                                         ; $5013: $3D
    ld bc, $8FCF                                  ; $5014: $01 $CF $8F
    dec b                                         ; $5017: $05
    add e                                         ; $5018: $83
    cp c                                          ; $5019: $B9
    ld a, d                                       ; $501A: $7A
    sbc h                                         ; $501B: $9C
    inc b                                         ; $501C: $04
    inc d                                         ; $501D: $14
    inc b                                         ; $501E: $04
    dec d                                         ; $501F: $15
    adc h                                         ; $5020: $8C
    dec a                                         ; $5021: $3D
    ei                                            ; $5022: $FB
    jp nc, $0407                                  ; $5023: $D2 $07 $04

    rst RST_30                                    ; $5026: $F7
    inc b                                         ; $5027: $04
    inc [hl]                                      ; $5028: $34
    inc a                                         ; $5029: $3C
    cp b                                          ; $502A: $B8
    jp $C2D9                                      ; $502B: $C3 $D9 $C2


    nop                                           ; $502E: $00
    pop af                                        ; $502F: $F1
    rlca                                          ; $5030: $07
    inc b                                         ; $5031: $04
    pop bc                                        ; $5032: $C1
    rst RST_00                                    ; $5033: $C7
    or b                                          ; $5034: $B0
    ret nc                                        ; $5035: $D0

    add sp, $04                                   ; $5036: $E8 $04
    db $FD                                        ; $5038: $FD
    inc b                                         ; $5039: $04
    adc l                                         ; $503A: $8D
    or b                                          ; $503B: $B0
    or a                                          ; $503C: $B7
    cp b                                          ; $503D: $B8
    ld a, $B9                                     ; $503E: $3E $B9
    or [hl]                                       ; $5040: $B6
    nop                                           ; $5041: $00
    ld [$CC00], sp                                ; $5042: $08 $00 $CC
    nop                                           ; $5045: $00
    and b                                         ; $5046: $A0
    add $28                                       ; $5047: $C6 $28
    nop                                           ; $5049: $00
    cp a                                          ; $504A: $BF
    or h                                          ; $504B: $B4
    cp h                                          ; $504C: $BC
    add h                                         ; $504D: $84
    sub [hl]                                      ; $504E: $96
    db $10                                        ; $504F: $10
    ret                                           ; $5050: $C9


    nop                                           ; $5051: $00

jr_032_5052:
    ldh [$FFB3], a                                ; $5052: $E0 $B3
    inc d                                         ; $5054: $14
    cp b                                          ; $5055: $B8
    inc de                                        ; $5056: $13
    inc sp                                        ; $5057: $33
    inc h                                         ; $5058: $24
    sub $40                                       ; $5059: $D6 $40
    inc b                                         ; $505B: $04
    rlca                                          ; $505C: $07
    add h                                         ; $505D: $84
    ld h, a                                       ; $505E: $67
    inc b                                         ; $505F: $04
    inc c                                         ; $5060: $0C
    ld [hl], c                                    ; $5061: $71
    ld l, l                                       ; $5062: $6D
    ld [hl], l                                    ; $5063: $75
    inc b                                         ; $5064: $04
    nop                                           ; $5065: $00
    pop hl                                        ; $5066: $E1
    nop                                           ; $5067: $00
    call nz, Call_032_44D1                        ; $5068: $C4 $D1 $44
    ld h, d                                       ; $506B: $62
    ld sp, $E000                                  ; $506C: $31 $00 $E0
    sub d                                         ; $506F: $92
    sbc e                                         ; $5070: $9B
    sub c                                         ; $5071: $91
    inc b                                         ; $5072: $04
    ldh [$FF3B], a                                ; $5073: $E0 $3B
    add b                                         ; $5075: $80
    ldh a, [c]                                    ; $5076: $F2
    inc b                                         ; $5077: $04
    jr nz, @+$06                                  ; $5078: $20 $04

    add c                                         ; $507A: $81
    inc b                                         ; $507B: $04
    nop                                           ; $507C: $00
    jr c, jr_032_5005                             ; $507D: $38 $86

    rst RST_38                                    ; $507F: $FF
    nop                                           ; $5080: $00
    inc d                                         ; $5081: $14
    nop                                           ; $5082: $00
    ld l, [hl]                                    ; $5083: $6E
    cp $15                                        ; $5084: $FE $15
    dec h                                         ; $5086: $25
    ld a, a                                       ; $5087: $7F
    add d                                         ; $5088: $82
    adc h                                         ; $5089: $8C
    ld b, b                                       ; $508A: $40
    jr jr_032_5091                                ; $508B: $18 $04

    rra                                           ; $508D: $1F
    or h                                          ; $508E: $B4
    db $ED                                        ; $508F: $ED
    nop                                           ; $5090: $00

jr_032_5091:
    dec a                                         ; $5091: $3D
    xor b                                         ; $5092: $A8
    di                                            ; $5093: $F3
    inc b                                         ; $5094: $04
    ld l, b                                       ; $5095: $68
    ld h, c                                       ; $5096: $61
    nop                                           ; $5097: $00
    cpl                                           ; $5098: $2F
    ld b, c                                       ; $5099: $41
    ld b, e                                       ; $509A: $43
    call nc, Call_000_0403                        ; $509B: $D4 $03 $04
    ld [bc], a                                    ; $509E: $02
    dec a                                         ; $509F: $3D
    ld bc, $F46D                                  ; $50A0: $01 $6D $F4
    rlca                                          ; $50A3: $07
    ld b, $B4                                     ; $50A4: $06 $B4
    inc b                                         ; $50A6: $04
    cp h                                          ; $50A7: $BC
    cp a                                          ; $50A8: $BF
    pop de                                        ; $50A9: $D1
    add l                                         ; $50AA: $85
    dec a                                         ; $50AB: $3D
    scf                                           ; $50AC: $37
    or b                                          ; $50AD: $B0
    cpl                                           ; $50AE: $2F
    and b                                         ; $50AF: $A0
    rlca                                          ; $50B0: $07
    ld l, $06                                     ; $50B1: $2E $06
    cpl                                           ; $50B3: $2F
    inc d                                         ; $50B4: $14
    ret nc                                        ; $50B5: $D0

    dec a                                         ; $50B6: $3D
    dec b                                         ; $50B7: $05
    jr z, jr_032_5052                             ; $50B8: $28 $98

    rlca                                          ; $50BA: $07
    dec b                                         ; $50BB: $05
    ld d, h                                       ; $50BC: $54
    ld e, a                                       ; $50BD: $5F
    inc b                                         ; $50BE: $04
    ld e, l                                       ; $50BF: $5D
    inc b                                         ; $50C0: $04
    or e                                          ; $50C1: $B3
    add h                                         ; $50C2: $84
    cp b                                          ; $50C3: $B8
    cp c                                          ; $50C4: $B9
    xor d                                         ; $50C5: $AA
    ld [bc], a                                    ; $50C6: $02
    cp e                                          ; $50C7: $BB
    ld [bc], a                                    ; $50C8: $02
    call c, $E702                                 ; $50C9: $DC $02 $E7
    nop                                           ; $50CC: $00
    db $10                                        ; $50CD: $10
    add c                                         ; $50CE: $81
    nop                                           ; $50CF: $00
    add hl, bc                                    ; $50D0: $09
    ld c, c                                       ; $50D1: $49
    ld b, [hl]                                    ; $50D2: $46
    ld h, [hl]                                    ; $50D3: $66
    ld h, b                                       ; $50D4: $60
    ld [hl], b                                    ; $50D5: $70
    ld bc, $F004                                  ; $50D6: $01 $04 $F0
    or $E6                                        ; $50D9: $F6 $E6
    rst RST_28                                    ; $50DB: $EF
    sbc a                                         ; $50DC: $9F
    nop                                           ; $50DD: $00
    rlca                                          ; $50DE: $07
    adc a                                         ; $50DF: $8F
    dec d                                         ; $50E0: $15
    inc sp                                        ; $50E1: $33
    ld [hl], e                                    ; $50E2: $73
    rst RST_08                                    ; $50E3: $CF
    nop                                           ; $50E4: $00
    cp l                                          ; $50E5: $BD
    nop                                           ; $50E6: $00
    adc l                                         ; $50E7: $8D
    nop                                           ; $50E8: $00
    ld b, l                                       ; $50E9: $45
    ld sp, hl                                     ; $50EA: $F9
    nop                                           ; $50EB: $00
    ld [hl], c                                    ; $50EC: $71
    ld [hl], l                                    ; $50ED: $75
    adc c                                         ; $50EE: $89
    inc d                                         ; $50EF: $14
    ldh [$FF58], a                                ; $50F0: $E0 $58
    add hl, hl                                    ; $50F2: $29
    db $E3                                        ; $50F3: $E3
    ei                                            ; $50F4: $FB
    dec b                                         ; $50F5: $05
    and e                                         ; $50F6: $A3
    or h                                          ; $50F7: $B4
    add c                                         ; $50F8: $81
    reti                                          ; $50F9: $D9


    db $E4                                        ; $50FA: $E4
    ld [$0428], a                                 ; $50FB: $EA $28 $04
    inc l                                         ; $50FE: $2C
    rst RST_38                                    ; $50FF: $FF
    nop                                           ; $5100: $00
    ld b, b                                       ; $5101: $40
    nop                                           ; $5102: $00
    ret                                           ; $5103: $C9


    sbc d                                         ; $5104: $9A
    nop                                           ; $5105: $00
    ret nc                                        ; $5106: $D0

    ret nz                                        ; $5107: $C0

    ldh [rDIV], a                                 ; $5108: $E0 $04
    sbc $04                                       ; $510A: $DE $04
    dec l                                         ; $510C: $2D
    ld l, c                                       ; $510D: $69
    ld h, c                                       ; $510E: $61
    db $ED                                        ; $510F: $ED
    dec a                                         ; $5110: $3D
    db $FD                                        ; $5111: $FD
    nop                                           ; $5112: $00
    ld a, c                                       ; $5113: $79
    ld a, l                                       ; $5114: $7D
    sbc h                                         ; $5115: $9C
    adc e                                         ; $5116: $8B
    ld [$F1E1], sp                                ; $5117: $08 $E1 $F1
    rst RST_00                                    ; $511A: $C7

jr_032_511B:
    nop                                           ; $511B: $00
    rrca                                          ; $511C: $0F
    ld [bc], a                                    ; $511D: $02
    dec a                                         ; $511E: $3D
    xor c                                         ; $511F: $A9
    ld bc, $24C4                                  ; $5120: $01 $C4 $24
    and b                                         ; $5123: $A0
    ret nz                                        ; $5124: $C0

    sbc h                                         ; $5125: $9C
    db $FC                                        ; $5126: $FC
    xor h                                         ; $5127: $AC
    ld a, [$051C]                                 ; $5128: $FA $1C $05
    adc b                                         ; $512B: $88
    ld b, $01                                     ; $512C: $06 $01
    ld bc, $0270                                  ; $512E: $01 $70 $02
    inc b                                         ; $5131: $04
    di                                            ; $5132: $F3
    inc b                                         ; $5133: $04
    rlca                                          ; $5134: $07
    ld [$B0FE], sp                                ; $5135: $08 $FE $B0
    db $ED                                        ; $5138: $ED
    jr nz, jr_032_5190                            ; $5139: $20 $55

    jp c, $B1F0                                   ; $513B: $DA $F0 $B1

    ld a, $CF                                     ; $513E: $3E $CF
    inc b                                         ; $5140: $04
    add a                                         ; $5141: $87
    inc b                                         ; $5142: $04
    ldh [c], a                                    ; $5143: $E2
    inc a                                         ; $5144: $3C
    ld c, $1D                                     ; $5145: $0E $1D
    ccf                                           ; $5147: $3F
    ld hl, $ACDF                                  ; $5148: $21 $DF $AC
    cp a                                          ; $514B: $BF
    ld [bc], a                                    ; $514C: $02
    and c                                         ; $514D: $A1
    cp [hl]                                       ; $514E: $BE
    sub d                                         ; $514F: $92
    sbc l                                         ; $5150: $9D
    adc h                                         ; $5151: $8C
    adc e                                         ; $5152: $8B
    or h                                          ; $5153: $B4
    sub a                                         ; $5154: $97
    xor d                                         ; $5155: $AA
    inc b                                         ; $5156: $04
    sub b                                         ; $5157: $90
    inc l                                         ; $5158: $2C
    or b                                          ; $5159: $B0
    inc b                                         ; $515A: $04
    cp c                                          ; $515B: $B9
    inc d                                         ; $515C: $14
    ld a, a                                       ; $515D: $7F
    inc d                                         ; $515E: $14
    nop                                           ; $515F: $00
    ld hl, sp+$03                                 ; $5160: $F8 $03
    cp h                                          ; $5162: $BC
    rrca                                          ; $5163: $0F
    ld l, h                                       ; $5164: $6C
    rra                                           ; $5165: $1F
    sbc a                                         ; $5166: $9F
    call nc, Call_000_001C                        ; $5167: $D4 $1C $00
    inc a                                         ; $516A: $3C
    nop                                           ; $516B: $00
    and $D4                                       ; $516C: $E6 $D4
    ld d, c                                       ; $516E: $51
    xor a                                         ; $516F: $AF
    sbc d                                         ; $5170: $9A
    inc l                                         ; $5171: $2C
    ld [hl], c                                    ; $5172: $71
    sub c                                         ; $5173: $91
    inc c                                         ; $5174: $0C
    inc b                                         ; $5175: $04
    adc a                                         ; $5176: $8F
    xor h                                         ; $5177: $AC
    dec b                                         ; $5178: $05
    cp d                                          ; $5179: $BA
    inc b                                         ; $517A: $04
    dec de                                        ; $517B: $1B
    inc b                                         ; $517C: $04
    ld d, b                                       ; $517D: $50
    ld h, h                                       ; $517E: $64
    ld a, l                                       ; $517F: $7D
    add h                                         ; $5180: $84
    cp b                                          ; $5181: $B8
    adc d                                         ; $5182: $8A
    dec b                                         ; $5183: $05
    pop de                                        ; $5184: $D1
    reti                                          ; $5185: $D9


    push de                                       ; $5186: $D5
    nop                                           ; $5187: $00
    add l                                         ; $5188: $85
    ld [bc], a                                    ; $5189: $02
    ld [$EB2A], a                                 ; $518A: $EA $2A $EB
    rst RST_38                                    ; $518D: $FF
    nop                                           ; $518E: $00
    inc e                                         ; $518F: $1C

jr_032_5190:
    nop                                           ; $5190: $00
    ldh [c], a                                    ; $5191: $E2
    sbc h                                         ; $5192: $9C
    ld [hl], h                                    ; $5193: $74
    sub a                                         ; $5194: $97
    ld h, b                                       ; $5195: $60
    jr c, jr_032_511B                             ; $5196: $38 $83

    db $10                                        ; $5198: $10
    rst RST_00                                    ; $5199: $C7
    inc b                                         ; $519A: $04
    inc l                                         ; $519B: $2C
    dec b                                         ; $519C: $05
    add e                                         ; $519D: $83
    ld bc, $BB45                                  ; $519E: $01 $45 $BB
    ld hl, $E1DF                                  ; $51A1: $21 $DF $E1
    sbc h                                         ; $51A4: $9C
    ld b, b                                       ; $51A5: $40
    rst RST_10                                    ; $51A6: $D7
    inc e                                         ; $51A7: $1C
    inc b                                         ; $51A8: $04
    ld sp, hl                                     ; $51A9: $F9
    inc b                                         ; $51AA: $04
    pop bc                                        ; $51AB: $C1
    db $E4                                        ; $51AC: $E4
    add hl, de                                    ; $51AD: $19
    ld [bc], a                                    ; $51AE: $02
    add [hl]                                      ; $51AF: $86
    cp h                                          ; $51B0: $BC
    sub l                                         ; $51B1: $95
    sub b                                         ; $51B2: $90
    and l                                         ; $51B3: $A5
    ret nc                                        ; $51B4: $D0

    xor h                                         ; $51B5: $AC
    inc c                                         ; $51B6: $0C
    push bc                                       ; $51B7: $C5
    ld h, $80                                     ; $51B8: $26 $80
    add d                                         ; $51BA: $82
    ldh [$FFC0], a                                ; $51BB: $E0 $C0
    cp [hl]                                       ; $51BD: $BE
    inc b                                         ; $51BE: $04
    dec a                                         ; $51BF: $3D
    res 5, e                                      ; $51C0: $CB $AB
    jr nc, jr_032_51CC                            ; $51C2: $30 $08

    inc b                                         ; $51C4: $04
    jp $0704                                      ; $51C5: $C3 $04 $07


    ld e, b                                       ; $51C8: $58
    ld [hl], h                                    ; $51C9: $74
    ld a, [hl-]                                   ; $51CA: $3A
    ld b, b                                       ; $51CB: $40

jr_032_51CC:
    ld e, $48                                     ; $51CC: $1E $48
    call c, $EDCA                                 ; $51CE: $DC $CA $ED
    sub h                                         ; $51D1: $94
    inc bc                                        ; $51D2: $03
    ldh a, [c]                                    ; $51D3: $F2
    cp d                                          ; $51D4: $BA
    rlca                                          ; $51D5: $07
    ld bc, $2DEC                                  ; $51D6: $01 $EC $2D
    cp a                                          ; $51D9: $BF
    add h                                         ; $51DA: $84
    add c                                         ; $51DB: $81
    db $D3                                        ; $51DC: $D3
    ld d, h                                       ; $51DD: $54
    nop                                           ; $51DE: $00
    ldh a, [rP1]                                  ; $51DF: $F0 $00
    ldh a, [c]                                    ; $51E1: $F2
    ld hl, sp+$00                                 ; $51E2: $F8 $00
    xor h                                         ; $51E4: $AC
    add c                                         ; $51E5: $81
    nop                                           ; $51E6: $00
    sbc h                                         ; $51E7: $9C
    call c, $A1C1                                 ; $51E8: $DC $C1 $A1
    ldh [rSC], a                                  ; $51EB: $E0 $02
    xor h                                         ; $51ED: $AC
    push af                                       ; $51EE: $F5
    xor b                                         ; $51EF: $A8
    nop                                           ; $51F0: $00
    xor b                                         ; $51F1: $A8

jr_032_51F2:
    nop                                           ; $51F2: $00
    ld c, a                                       ; $51F3: $4F
    inc b                                         ; $51F4: $04
    rst RST_08                                    ; $51F5: $CF
    add hl, de                                    ; $51F6: $19
    push hl                                       ; $51F7: $E5
    ld e, h                                       ; $51F8: $5C
    jr nc, jr_032_526B                            ; $51F9: $30 $70

    cp $6D                                        ; $51FB: $FE $6D
    nop                                           ; $51FD: $00
    dec c                                         ; $51FE: $0D
    nop                                           ; $51FF: $00
    ld b, b                                       ; $5200: $40
    sbc c                                         ; $5201: $99
    nop                                           ; $5202: $00
    pop af                                        ; $5203: $F1
    rst RST_30                                    ; $5204: $F7
    rst RST_20                                    ; $5205: $E7
    jp hl                                         ; $5206: $E9


    add a                                         ; $5207: $87
    adc c                                         ; $5208: $89
    adc b                                         ; $5209: $88
    ld b, b                                       ; $520A: $40
    add hl, bc                                    ; $520B: $09
    ld h, a                                       ; $520C: $67
    ld l, c                                       ; $520D: $69
    ld [hl], h                                    ; $520E: $74
    and e                                         ; $520F: $A3
    jp nz, $E5AE                                  ; $5210: $C2 $AE $E5

    ld d, h                                       ; $5213: $54
    sub h                                         ; $5214: $94
    ld h, h                                       ; $5215: $64
    add e                                         ; $5216: $83
    db $FC                                        ; $5217: $FC
    ld [$0492], sp                                ; $5218: $08 $92 $04
    ld d, l                                       ; $521B: $55
    cp b                                          ; $521C: $B8
    inc b                                         ; $521D: $04
    rst RST_38                                    ; $521E: $FF
    nop                                           ; $521F: $00
    ld bc, $0050                                  ; $5220: $01 $50 $00
    db $E4                                        ; $5223: $E4
    and d                                         ; $5224: $A2
    inc b                                         ; $5225: $04
    inc bc                                        ; $5226: $03
    inc b                                         ; $5227: $04
    ld a, l                                       ; $5228: $7D
    jr c, jr_032_51F2                             ; $5229: $38 $C7

    inc c                                         ; $522B: $0C
    ld a, h                                       ; $522C: $7C
    pop af                                        ; $522D: $F1
    inc b                                         ; $522E: $04
    nop                                           ; $522F: $00
    dec a                                         ; $5230: $3D
    jr @-$35                                      ; $5231: $18 $C9

    ld hl, $0429                                  ; $5233: $21 $29 $04
    and d                                         ; $5236: $A2
    ld a, h                                       ; $5237: $7C
    daa                                           ; $5238: $27
    ld [$415D], sp                                ; $5239: $08 $5D $41
    ld sp, $6168                                  ; $523C: $31 $68 $61
    rst RST_38                                    ; $523F: $FF
    inc b                                         ; $5240: $04
    dec a                                         ; $5241: $3D
    ld bc, $94DC                                  ; $5242: $01 $DC $94
    nop                                           ; $5245: $00
    add h                                         ; $5246: $84
    and c                                         ; $5247: $A1
    sbc e                                         ; $5248: $9B
    ld b, $8F                                     ; $5249: $06 $8F
    ldh a, [$FF09]                                ; $524B: $F0 $09
    add $02                                       ; $524D: $C6 $02
    sbc h                                         ; $524F: $9C
    rlca                                          ; $5250: $07
    ld d, [hl]                                    ; $5251: $56
    inc b                                         ; $5252: $04
    ret nz                                        ; $5253: $C0

jr_032_5254:
    dec b                                         ; $5254: $05
    ld hl, sp+$19                                 ; $5255: $F8 $19
    inc [hl]                                      ; $5257: $34
    rst RST_00                                    ; $5258: $C7
    pop hl                                        ; $5259: $E1
    add $94                                       ; $525A: $C6 $94
    ld hl, sp+$1D                                 ; $525C: $F8 $1D
    add c                                         ; $525E: $81
    ld a, a                                       ; $525F: $7F
    dec b                                         ; $5260: $05
    jr jr_032_5254                                ; $5261: $18 $F1

    ld e, e                                       ; $5263: $5B
    rrca                                          ; $5264: $0F
    ld [$0471], sp                                ; $5265: $08 $71 $04
    or c                                          ; $5268: $B1
    db $FC                                        ; $5269: $FC
    nop                                           ; $526A: $00

jr_032_526B:
    ld c, l                                       ; $526B: $4D
    ld e, d                                       ; $526C: $5A
    di                                            ; $526D: $F3
    nop                                           ; $526E: $00
    xor l                                         ; $526F: $AD
    nop                                           ; $5270: $00
    dec h                                         ; $5271: $25
    adc b                                         ; $5272: $88
    ld b, h                                       ; $5273: $44
    adc c                                         ; $5274: $89
    xor h                                         ; $5275: $AC
    inc e                                         ; $5276: $1C
    jp Jump_000_3C84                              ; $5277: $C3 $84 $3C


    sub c                                         ; $527A: $91
    nop                                           ; $527B: $00
    sub c                                         ; $527C: $91
    sbc c                                         ; $527D: $99
    sbc [hl]                                      ; $527E: $9E
    dec b                                         ; $527F: $05
    db $10                                        ; $5280: $10
    jr jr_032_5283                                ; $5281: $18 $00

jr_032_5283:
    sub b                                         ; $5283: $90
    ld [bc], a                                    ; $5284: $02
    add h                                         ; $5285: $84
    ccf                                           ; $5286: $3F
    rst RST_10                                    ; $5287: $D7
    nop                                           ; $5288: $00
    ld a, l                                       ; $5289: $7D
    rst RST_08                                    ; $528A: $CF
    nop                                           ; $528B: $00
    or a                                          ; $528C: $B7
    nop                                           ; $528D: $00
    jr nz, jr_032_5290                            ; $528E: $20 $00

jr_032_5290:
    jr nz, @+$0B                                  ; $5290: $20 $09

    add a                                         ; $5292: $87
    ld a, h                                       ; $5293: $7C
    rst RST_20                                    ; $5294: $E7
    sub e                                         ; $5295: $93
    and a                                         ; $5296: $A7
    ret nz                                        ; $5297: $C0

    adc h                                         ; $5298: $8C
    ld de, $CBA3                                  ; $5299: $11 $A3 $CB
    db $E4                                        ; $529C: $E4
    inc h                                         ; $529D: $24
    ldh a, [$FF86]                                ; $529E: $F0 $86
    or c                                          ; $52A0: $B1
    ld l, l                                       ; $52A1: $6D
    push af                                       ; $52A2: $F5
    or b                                          ; $52A3: $B0
    ld h, l                                       ; $52A4: $65
    ld bc, $55B5                                  ; $52A5: $01 $B5 $55
    inc c                                         ; $52A8: $0C
    xor d                                         ; $52A9: $AA
    ld d, $A0                                     ; $52AA: $16 $A0
    dec h                                         ; $52AC: $25
    pop bc                                        ; $52AD: $C1
    ld [hl], $E5                                  ; $52AE: $36 $E5
    di                                            ; $52B0: $F3
    inc bc                                        ; $52B1: $03
    add hl, de                                    ; $52B2: $19
    ld b, c                                       ; $52B3: $41
    inc d                                         ; $52B4: $14
    db $ED                                        ; $52B5: $ED
    ld hl, $B0F7                                  ; $52B6: $21 $F7 $B0
    scf                                           ; $52B9: $37
    inc [hl]                                      ; $52BA: $34
    ret                                           ; $52BB: $C9


    rst RST_00                                    ; $52BC: $C7
    ld c, [hl]                                    ; $52BD: $4E
    pop af                                        ; $52BE: $F1
    ld a, a                                       ; $52BF: $7F
    cp $80                                        ; $52C0: $FE $80
    ld [$0407], sp                                ; $52C2: $08 $07 $04
    sbc a                                         ; $52C5: $9F
    and h                                         ; $52C6: $A4
    inc b                                         ; $52C7: $04
    rst RST_08                                    ; $52C8: $CF
    inc b                                         ; $52C9: $04
    db $D3                                        ; $52CA: $D3
    sub b                                         ; $52CB: $90
    dec a                                         ; $52CC: $3D
    dec sp                                        ; $52CD: $3B
    ld b, b                                       ; $52CE: $40
    inc bc                                        ; $52CF: $03
    sbc e                                         ; $52D0: $9B
    jr nz, @-$36                                  ; $52D1: $20 $C8

    inc de                                        ; $52D3: $13
    ldh [$FF08], a                                ; $52D4: $E0 $08
    and b                                         ; $52D6: $A0
    call nz, $FCC9                                ; $52D7: $C4 $C9 $FC
    inc c                                         ; $52DA: $0C
    ret nz                                        ; $52DB: $C0

    ld e, $3D                                     ; $52DC: $1E $3D
    and a                                         ; $52DE: $A7
    ld de, $AFA4                                  ; $52DF: $11 $A4 $AF
    inc b                                         ; $52E2: $04
    rrca                                          ; $52E3: $0F
    ld [$C03F], sp                                ; $52E4: $08 $3F $C0
    jr nz, jr_032_52F0                            ; $52E7: $20 $07

    inc b                                         ; $52E9: $04
    ld [bc], a                                    ; $52EA: $02
    ret c                                         ; $52EB: $D8

    sbc b                                         ; $52EC: $98
    call c, $EC9C                                 ; $52ED: $DC $9C $EC

jr_032_52F0:
    adc h                                         ; $52F0: $8C
    ld l, h                                       ; $52F1: $6C
    add e                                         ; $52F2: $83
    add h                                         ; $52F3: $84
    ld h, h                                       ; $52F4: $64
    add h                                         ; $52F5: $84
    or h                                          ; $52F6: $B4
    add a                                         ; $52F7: $87
    rst RST_30                                    ; $52F8: $F7

jr_032_52F9:
    inc b                                         ; $52F9: $04
    or $86                                        ; $52FA: $F6 $86
    and l                                         ; $52FC: $A5
    ld h, b                                       ; $52FD: $60
    inc c                                         ; $52FE: $0C
    ld c, b                                       ; $52FF: $48
    inc d                                         ; $5300: $14
    adc b                                         ; $5301: $88
    call c, Call_000_00B1                         ; $5302: $DC $B1 $00
    ld e, h                                       ; $5305: $5C
    dec [hl]                                      ; $5306: $35
    nop                                           ; $5307: $00
    inc [hl]                                      ; $5308: $34
    ld b, b                                       ; $5309: $40
    ldh a, [$FFF8]                                ; $530A: $F0 $F8
    ld b, c                                       ; $530C: $41
    ld h, a                                       ; $530D: $67
    xor d                                         ; $530E: $AA
    add l                                         ; $530F: $85
    pop af                                        ; $5310: $F1
    inc b                                         ; $5311: $04
    dec c                                         ; $5312: $0D
    nop                                           ; $5313: $00
    dec a                                         ; $5314: $3D
    nop                                           ; $5315: $00
    dec sp                                        ; $5316: $3B
    ld d, h                                       ; $5317: $54
    add hl, sp                                    ; $5318: $39
    jr z, jr_032_537C                             ; $5319: $28 $61

    call nc, $8081                                ; $531B: $D4 $81 $80
    pop hl                                        ; $531E: $E1
    or l                                          ; $531F: $B5
    ld [hl], a                                    ; $5320: $77
    add l                                         ; $5321: $85
    adc b                                         ; $5322: $88
    nop                                           ; $5323: $00
    inc d                                         ; $5324: $14
    rst RST_00                                    ; $5325: $C7
    cp b                                          ; $5326: $B8
    ret nz                                        ; $5327: $C0

    adc b                                         ; $5328: $88
    ld b, a                                       ; $5329: $47
    cp h                                          ; $532A: $BC
    call nz, $E09E                                ; $532B: $C4 $9E $E0
    adc a                                         ; $532E: $8F
    ld [hl], h                                    ; $532F: $74
    nop                                           ; $5330: $00
    inc e                                         ; $5331: $1C
    and d                                         ; $5332: $A2
    nop                                           ; $5333: $00

jr_032_5334:
    ld a, a                                       ; $5334: $7F
    inc c                                         ; $5335: $0C
    nop                                           ; $5336: $00
    ld a, h                                       ; $5337: $7C
    inc bc                                        ; $5338: $03
    nop                                           ; $5339: $00
    ld hl, sp-$54                                 ; $533A: $F8 $AC
    sub h                                         ; $533C: $94
    db $FC                                        ; $533D: $FC
    jr jr_032_53B8                                ; $533E: $18 $78

    inc b                                         ; $5340: $04
    dec a                                         ; $5341: $3D
    sbc e                                         ; $5342: $9B
    pop bc                                        ; $5343: $C1
    ld d, a                                       ; $5344: $57
    dec e                                         ; $5345: $1D
    ret nc                                        ; $5346: $D0

    sbc l                                         ; $5347: $9D
    inc c                                         ; $5348: $0C
    sbc c                                         ; $5349: $99
    inc b                                         ; $534A: $04
    jr c, jr_032_52F9                             ; $534B: $38 $AC

    xor h                                         ; $534D: $AC
    inc b                                         ; $534E: $04
    rlca                                          ; $534F: $07
    ld d, b                                       ; $5350: $50
    push af                                       ; $5351: $F5
    dec a                                         ; $5352: $3D
    ld bc, $BF8C                                  ; $5353: $01 $8C $BF
    ld [hl], c                                    ; $5356: $71
    or b                                          ; $5357: $B0
    ld l, b                                       ; $5358: $68
    and h                                         ; $5359: $A4
    cp h                                          ; $535A: $BC
    add $EF                                       ; $535B: $C6 $EF
    sub [hl]                                      ; $535D: $96
    or h                                          ; $535E: $B4
    ld a, h                                       ; $535F: $7C
    pop af                                        ; $5360: $F1
    db $10                                        ; $5361: $10
    jr jr_032_5334                                ; $5362: $18 $D0

    dec a                                         ; $5364: $3D
    ld e, b                                       ; $5365: $58
    rst RST_20                                    ; $5366: $E7
    inc hl                                        ; $5367: $23
    rlca                                          ; $5368: $07
    dec de                                        ; $5369: $1B
    ld d, e                                       ; $536A: $53
    ld c, a                                       ; $536B: $4F
    ld h, a                                       ; $536C: $67
    ld l, a                                       ; $536D: $6F
    ld bc, $0177                                  ; $536E: $01 $77 $01
    ld b, b                                       ; $5371: $40
    ld a, l                                       ; $5372: $7D
    sbc b                                         ; $5373: $98
    cp c                                          ; $5374: $B9
    add a                                         ; $5375: $87
    cp e                                          ; $5376: $BB
    add l                                         ; $5377: $85
    rst RST_10                                    ; $5378: $D7
    ret                                           ; $5379: $C9


    rst RST_00                                    ; $537A: $C7
    ret z                                         ; $537B: $C8

jr_032_537C:
    ld bc, $E1FD                                  ; $537C: $01 $FD $E1
    db $E3                                        ; $537F: $E3
    add h                                         ; $5380: $84
    db $10                                        ; $5381: $10
    ld b, b                                       ; $5382: $40
    and e                                         ; $5383: $A3
    inc c                                         ; $5384: $0C
    rst RST_00                                    ; $5385: $C7
    nop                                           ; $5386: $00
    jp hl                                         ; $5387: $E9


    ld sp, hl                                     ; $5388: $F9
    rst RST_18                                    ; $5389: $DF
    jr jr_032_5391                                ; $538A: $18 $05

    ld e, a                                       ; $538C: $5F
    sbc a                                         ; $538D: $9F
    nop                                           ; $538E: $00
    and a                                         ; $538F: $A7
    xor h                                         ; $5390: $AC

jr_032_5391:
    add a                                         ; $5391: $87
    inc bc                                        ; $5392: $03
    inc bc                                        ; $5393: $03
    ld bc, $F869                                  ; $5394: $01 $69 $F8
    nop                                           ; $5397: $00
    ld a, b                                       ; $5398: $78
    push bc                                       ; $5399: $C5
    or h                                          ; $539A: $B4
    or c                                          ; $539B: $B1
    xor e                                         ; $539C: $AB
    ld [hl], h                                    ; $539D: $74
    add b                                         ; $539E: $80
    ld h, b                                       ; $539F: $60
    xor c                                         ; $53A0: $A9
    or l                                          ; $53A1: $B5
    inc de                                        ; $53A2: $13
    push af                                       ; $53A3: $F5
    ld de, $2569                                  ; $53A4: $11 $69 $25
    scf                                           ; $53A7: $37
    dec bc                                        ; $53A8: $0B
    add e                                         ; $53A9: $83
    ld bc, $81D0                                  ; $53AA: $01 $D0 $81
    dec b                                         ; $53AD: $05
    ld b, b                                       ; $53AE: $40
    inc d                                         ; $53AF: $14
    xor [hl]                                      ; $53B0: $AE
    call c, $A887                                 ; $53B1: $DC $87 $A8
    adc a                                         ; $53B4: $8F
    ld [$8558], sp                                ; $53B5: $08 $58 $85

jr_032_53B8:
    ld a, c                                       ; $53B8: $79
    and c                                         ; $53B9: $A1
    nop                                           ; $53BA: $00
    rrca                                          ; $53BB: $0F
    nop                                           ; $53BC: $00
    inc bc                                        ; $53BD: $03
    ld b, e                                       ; $53BE: $43
    rlca                                          ; $53BF: $07
    ld h, a                                       ; $53C0: $67
    db $10                                        ; $53C1: $10
    inc l                                         ; $53C2: $2C
    ld l, a                                       ; $53C3: $6F
    sbc [hl]                                      ; $53C4: $9E
    inc [hl]                                      ; $53C5: $34
    ldh a, [$FFB4]                                ; $53C6: $F0 $B4
    dec a                                         ; $53C8: $3D
    sub e                                         ; $53C9: $93
    set 1, e                                      ; $53CA: $CB $CB
    rlca                                          ; $53CC: $07
    dec b                                         ; $53CD: $05
    ld hl, $6085                                  ; $53CE: $21 $85 $60
    ld bc, $049C                                  ; $53D1: $01 $9C $04
    add b                                         ; $53D4: $80
    dec a                                         ; $53D5: $3D
    ld c, c                                       ; $53D6: $49
    ld b, b                                       ; $53D7: $40
    ld a, l                                       ; $53D8: $7D
    nop                                           ; $53D9: $00
    rlca                                          ; $53DA: $07
    rlca                                          ; $53DB: $07
    rlca                                          ; $53DC: $07
    rlca                                          ; $53DD: $07
    inc bc                                        ; $53DE: $03
    dec b                                         ; $53DF: $05
    ld a, [bc]                                    ; $53E0: $0A
    ld d, l                                       ; $53E1: $55
    jr nz, jr_032_53EE                            ; $53E2: $20 $0A

    ccf                                           ; $53E4: $3F
    ld [$0822], sp                                ; $53E5: $08 $22 $08
    ld b, d                                       ; $53E8: $42
    ld [$025D], sp                                ; $53E9: $08 $5D $02
    inc c                                         ; $53EC: $0C
    inc a                                         ; $53ED: $3C

jr_032_53EE:
    rst RST_20                                    ; $53EE: $E7
    rlca                                          ; $53EF: $07
    ld b, $7F                                     ; $53F0: $06 $7F
    ld b, a                                       ; $53F2: $47
    push de                                       ; $53F3: $D5
    rlca                                          ; $53F4: $07
    ld b, $10                                     ; $53F5: $06 $10
    inc c                                         ; $53F7: $0C
    jr nz, jr_032_5404                            ; $53F8: $20 $0A

    ld hl, $5B08                                  ; $53FA: $21 $08 $5B
    ld b, c                                       ; $53FD: $41
    ld a, [bc]                                    ; $53FE: $0A
    ld a, a                                       ; $53FF: $7F
    rst RST_00                                    ; $5400: $C7
    nop                                           ; $5401: $00
    dec b                                         ; $5402: $05
    ld a, [bc]                                    ; $5403: $0A

jr_032_5404:
    ld bc, $0877                                  ; $5404: $01 $77 $08
    ld a, [bc]                                    ; $5407: $0A
    sbc c                                         ; $5408: $99
    dec hl                                        ; $5409: $2B
    ld c, c                                       ; $540A: $49
    ld c, $07                                     ; $540B: $0E $07
    dec b                                         ; $540D: $05
    ld d, l                                       ; $540E: $55
    ld bc, $0208                                  ; $540F: $01 $08 $02
    ld [$0804], sp                                ; $5412: $08 $04 $08
    inc c                                         ; $5415: $0C
    ld [$1457], sp                                ; $5416: $08 $57 $14
    ld [$0824], sp                                ; $5419: $08 $24 $08
    ld b, h                                       ; $541C: $44
    ld c, d                                       ; $541D: $4A
    add hl, bc                                    ; $541E: $09
    rlca                                          ; $541F: $07

jr_032_5420:
    xor d                                         ; $5420: $AA
    inc bc                                        ; $5421: $03
    dec b                                         ; $5422: $05
    ld [$0845], sp                                ; $5423: $08 $45 $08
    ld b, b                                       ; $5426: $40
    ld [$B747], sp                                ; $5427: $08 $47 $B7
    ld [$2A78], sp                                ; $542A: $08 $78 $2A
    dec c                                         ; $542D: $0D
    ccf                                           ; $542E: $3F
    rst RST_10                                    ; $542F: $D7
    rlca                                          ; $5430: $07
    nop                                           ; $5431: $00
    ld d, l                                       ; $5432: $55
    ld a, a                                       ; $5433: $7F
    ld [$0A01], sp                                ; $5434: $08 $01 $0A
    ld [bc], a                                    ; $5437: $02
    ld [$0804], sp                                ; $5438: $08 $04 $08
    ld d, [hl]                                    ; $543B: $56
    ld a, [bc]                                    ; $543C: $0A
    ld [$0811], sp                                ; $543D: $08 $11 $08
    ld h, c                                       ; $5440: $61
    or a                                          ; $5441: $B7
    ld b, $20                                     ; $5442: $06 $20
    xor e                                         ; $5444: $AB
    inc c                                         ; $5445: $0C
    jr c, @+$0A                                   ; $5446: $38 $08

    inc h                                         ; $5448: $24
    ld [$5E23], sp                                ; $5449: $08 $23 $5E
    rlca                                          ; $544C: $07
    xor d                                         ; $544D: $AA
    dec b                                         ; $544E: $05
    ld [$7F08], sp                                ; $544F: $08 $08 $7F
    ld [$0A41], sp                                ; $5452: $08 $41 $0A
    ld bc, $0CAE                                  ; $5455: $01 $AE $0C
    ld [bc], a                                    ; $5458: $02
    ld [$C73C], sp                                ; $5459: $08 $3C $C7
    rlca                                          ; $545C: $07
    inc b                                         ; $545D: $04
    inc b                                         ; $545E: $04
    xor d                                         ; $545F: $AA
    ld a, [bc]                                    ; $5460: $0A
    ld a, $08                                     ; $5461: $3E $08
    inc c                                         ; $5463: $0C
    ld [$0814], sp                                ; $5464: $08 $14 $08
    inc h                                         ; $5467: $24
    jp c, Jump_000_0297                           ; $5468: $DA $97 $02

    dec b                                         ; $546B: $05
    ld a, [bc]                                    ; $546C: $0A
    ld bc, $087F                                  ; $546D: $01 $7F $08
    ld bc, $0AAA                                  ; $5470: $01 $AA $0A
    ld [bc], a                                    ; $5473: $02
    ld [$0804], sp                                ; $5474: $08 $04 $08
    ld a, [bc]                                    ; $5477: $0A
    ld [$B511], sp                                ; $5478: $08 $11 $B5
    ld [$E761], sp                                ; $547B: $08 $61 $E7
    ld b, $1F                                     ; $547E: $06 $1F
    sbc d                                         ; $5480: $9A
    ld hl, $5508                                  ; $5481: $21 $08 $55
    ld d, c                                       ; $5484: $51
    ld [$0809], sp                                ; $5485: $08 $09 $08
    dec b                                         ; $5488: $05
    ld [$0802], sp                                ; $5489: $08 $02 $08
    ld e, l                                       ; $548C: $5D
    inc b                                         ; $548D: $04
    ld [$C738], sp                                ; $548E: $08 $38 $C7
    rlca                                          ; $5491: $07
    ld b, $2A                                     ; $5492: $06 $2A
    ld a, [bc]                                    ; $5494: $0A
    cp d                                          ; $5495: $BA
    ei                                            ; $5496: $FB
    jr jr_032_5420                                ; $5497: $18 $87

    rlca                                          ; $5499: $07
    nop                                           ; $549A: $00
    ld a, a                                       ; $549B: $7F
    ld [$DD01], sp                                ; $549C: $08 $01 $DD
    ld c, $FB                                     ; $549F: $0E $FB
    jr c, @-$47                                   ; $54A1: $38 $B7

    rlca                                          ; $54A3: $07
    ld a, [$0F08]                                 ; $54A4: $FA $08 $0F
    push af                                       ; $54A7: $F5
    ld a, [bc]                                    ; $54A8: $0A
    ld l, c                                       ; $54A9: $69
    rlca                                          ; $54AA: $07
    dec b                                         ; $54AB: $05
    rra                                           ; $54AC: $1F
    ld [$0811], sp                                ; $54AD: $08 $11 $08
    ld d, l                                       ; $54B0: $55
    ld hl, $4108                                  ; $54B1: $21 $08 $41
    ld [$0A01], sp                                ; $54B4: $08 $01 $0A
    ld [bc], a                                    ; $54B7: $02
    ld [$045A], sp                                ; $54B8: $08 $5A $04
    ld [$C738], sp                                ; $54BB: $08 $38 $C7
    inc b                                         ; $54BE: $04
    dec b                                         ; $54BF: $05
    ld [$AA25], sp                                ; $54C0: $08 $25 $AA
    ld [$0820], sp                                ; $54C3: $08 $20 $08
    ld a, a                                       ; $54C6: $7F
    ld [$0821], sp                                ; $54C7: $08 $21 $08
    ld [hl+], a                                   ; $54CA: $22
    jp c, Jump_000_0B3A                           ; $54CB: $DA $3A $0B

    rra                                           ; $54CE: $1F
    rst RST_10                                    ; $54CF: $D7
    ld b, $3E                                     ; $54D0: $06 $3E
    inc l                                         ; $54D2: $2C
    ld a, a                                       ; $54D3: $7F
    xor e                                         ; $54D4: $AB
    ld [$0C04], sp                                ; $54D5: $08 $04 $0C
    ld [$3008], sp                                ; $54D8: $08 $08 $30
    rst RST_00                                    ; $54DB: $C7
    rlca                                          ; $54DC: $07
    xor d                                         ; $54DD: $AA
    inc b                                         ; $54DE: $04
    ld [bc], a                                    ; $54DF: $02
    jp c, Jump_000_080C                           ; $54E0: $DA $0C $08

    inc d                                         ; $54E3: $14
    ld [$ED24], sp                                ; $54E4: $08 $24 $ED
    ld a, [hl-]                                   ; $54E7: $3A
    rlca                                          ; $54E8: $07
    ld bc, $0A05                                  ; $54E9: $01 $05 $0A
    ld bc, $087F                                  ; $54EC: $01 $7F $08

jr_032_54EF:
    ld d, [hl]                                    ; $54EF: $56
    ld bc, $020E                                  ; $54F0: $01 $0E $02
    ld [$E738], a                                 ; $54F3: $EA $38 $E7
    nop                                           ; $54F6: $00
    rlca                                          ; $54F7: $07
    cp $EA                                        ; $54F8: $FE $EA
    add hl, de                                    ; $54FA: $19
    rst RST_38                                    ; $54FB: $FF
    rst RST_38                                    ; $54FC: $FF
    rst RST_38                                    ; $54FD: $FF
    rlca                                          ; $54FE: $07
    ei                                            ; $54FF: $FB
    ld b, c                                       ; $5500: $41
    or $0F                                        ; $5501: $F6 $0F
    ld a, [bc]                                    ; $5503: $0A
    ld l, c                                       ; $5504: $69
    rlca                                          ; $5505: $07
    dec b                                         ; $5506: $05
    ld a, [bc]                                    ; $5507: $0A
    ld bc, $D53E                                  ; $5508: $01 $3E $D5
    ld e, h                                       ; $550B: $5C
    xor c                                         ; $550C: $A9
    inc b                                         ; $550D: $04
    inc c                                         ; $550E: $0C
    ld [$3008], sp                                ; $550F: $08 $08 $30
    rst RST_30                                    ; $5512: $F7
    db $ED                                        ; $5513: $ED
    rlca                                          ; $5514: $07
    rlca                                          ; $5515: $07
    nop                                           ; $5516: $00
    inc e                                         ; $5517: $1C
    ld a, [$3E09]                                 ; $5518: $FA $09 $3E
    ld [hl], a                                    ; $551B: $77
    xor e                                         ; $551C: $AB
    ld b, $22                                     ; $551D: $06 $22
    ld a, [bc]                                    ; $551F: $0A
    ld a, a                                       ; $5520: $7F
    inc l                                         ; $5521: $2C
    ld [bc], a                                    ; $5522: $02
    ld a, [bc]                                    ; $5523: $0A
    ld sp, hl                                     ; $5524: $F9
    ld l, l                                       ; $5525: $6D
    jr c, jr_032_54EF                             ; $5526: $38 $C7

    ld b, $40                                     ; $5528: $06 $40
    rrca                                          ; $552A: $0F
    ld [$0841], sp                                ; $552B: $08 $41 $08
    ld d, [hl]                                    ; $552E: $56
    ld b, d                                       ; $552F: $42

jr_032_5530:
    ld [$084C], sp                                ; $5530: $08 $4C $08
    ld [hl], b                                    ; $5533: $70
    rst RST_00                                    ; $5534: $C7
    nop                                           ; $5535: $00
    dec b                                         ; $5536: $05
    push de                                       ; $5537: $D5
    ld a, [bc]                                    ; $5538: $0A
    ld bc, $081F                                  ; $5539: $01 $1F $08
    ld de, $2108                                  ; $553C: $11 $08 $21
    jp c, Jump_000_0155                           ; $553F: $DA $55 $01

    ld a, [bc]                                    ; $5542: $0A
    ld [bc], a                                    ; $5543: $02
    ld [$0804], sp                                ; $5544: $08 $04 $08
    jr c, @-$07                                   ; $5547: $38 $F7

    xor a                                         ; $5549: $AF
    ld b, $3E                                     ; $554A: $06 $3E
    ld a, [de]                                    ; $554C: $1A
    ld a, a                                       ; $554D: $7F
    db $EC                                        ; $554E: $EC
    rst RST_38                                    ; $554F: $FF
    rlca                                          ; $5550: $07
    rlca                                          ; $5551: $07
    xor d                                         ; $5552: $AA
    rst RST_28                                    ; $5553: $EF
    ld [hl+], a                                   ; $5554: $22
    ld [$0814], sp                                ; $5555: $08 $14 $08
    ld [$0408], sp                                ; $5558: $08 $08 $04
    sub $B7                                       ; $555B: $D6 $B7
    ld b, $06                                     ; $555D: $06 $06
    ld [$9A3C], sp                                ; $555F: $08 $3C $9A
    add hl, bc                                    ; $5562: $09
    ld a, a                                       ; $5563: $7F
    jp c, $F92C                                   ; $5564: $DA $2C $F9

    jr nc, jr_032_5530                            ; $5567: $30 $C7

    ld b, $20                                     ; $5569: $06 $20
    ld a, [bc]                                    ; $556B: $0A
    ccf                                           ; $556C: $3F
    xor d                                         ; $556D: $AA
    ld [$0822], sp                                ; $556E: $08 $22 $08
    ld b, d                                       ; $5571: $42
    ld [$0C02], sp                                ; $5572: $08 $02 $0C
    inc a                                         ; $5575: $3C
    ld [$07C7], a                                 ; $5576: $EA $C7 $07
    nop                                           ; $5579: $00
    ld [hl], b                                    ; $557A: $70
    ld [$0809], sp                                ; $557B: $08 $09 $08
    ld bc, $0CD6                                  ; $557E: $01 $D6 $0C
    jp hl                                         ; $5581: $E9


    inc b                                         ; $5582: $04
    ld [$B778], sp                                ; $5583: $08 $78 $B7
    ld b, $07                                     ; $5586: $06 $07
    xor d                                         ; $5588: $AA
    ld [$0805], sp                                ; $5589: $08 $05 $08
    daa                                           ; $558C: $27
    ld [$0850], sp                                ; $558D: $08 $50 $08
    adc b                                         ; $5590: $88
    db $DD                                        ; $5591: $DD
    jp c, $01F9                                   ; $5592: $DA $F9 $01

    or a                                          ; $5595: $B7
    rlca                                          ; $5596: $07
    nop                                           ; $5597: $00
    ld [hl], b                                    ; $5598: $70
    inc l                                         ; $5599: $2C
    ld [hl], l                                    ; $559A: $75
    ld [hl], c                                    ; $559B: $71
    jp z, $F909                                   ; $559C: $CA $09 $F9

    inc b                                         ; $559F: $04
    ld [$C778], sp                                ; $55A0: $08 $78 $C7
    push de                                       ; $55A3: $D5
    rlca                                          ; $55A4: $07
    ld b, $10                                     ; $55A5: $06 $10
    ld [$083E], sp                                ; $55A7: $08 $3E $08
    ld [de], a                                    ; $55AA: $12
    ld [$1476], sp                                ; $55AB: $08 $76 $14
    ld a, [hl-]                                   ; $55AE: $3A
    rlca                                          ; $55AF: $07
    dec b                                         ; $55B0: $05
    jr z, jr_032_55C2                             ; $55B1: $28 $0F

    ld a, [bc]                                    ; $55B3: $0A
    add hl, hl                                    ; $55B4: $29
    xor l                                         ; $55B5: $AD
    ld [$082A], sp                                ; $55B6: $08 $2A $08
    ld c, h                                       ; $55B9: $4C
    rst RST_00                                    ; $55BA: $C7

jr_032_55BB:
    ld b, $7F                                     ; $55BB: $06 $7F
    ld [$0155], sp                                ; $55BD: $08 $55 $01
    ld a, [bc]                                    ; $55C0: $0A
    add hl, bc                                    ; $55C1: $09

jr_032_55C2:
    ld [$080A], sp                                ; $55C2: $08 $0A $08
    ld [$750C], sp                                ; $55C5: $08 $0C $75
    db $10                                        ; $55C8: $10
    rst RST_00                                    ; $55C9: $C7
    rlca                                          ; $55CA: $07
    nop                                           ; $55CB: $00
    ld a, a                                       ; $55CC: $7F
    ld [$0C41], sp                                ; $55CD: $08 $41 $0C
    ld d, [hl]                                    ; $55D0: $56
    ld bc, $020A                                  ; $55D1: $01 $0A $02
    ld [$B73C], sp                                ; $55D4: $08 $3C $B7
    nop                                           ; $55D7: $00
    dec b                                         ; $55D8: $05
    rst RST_10                                    ; $55D9: $D7
    ld a, [bc]                                    ; $55DA: $0A
    ld bc, $0A22                                  ; $55DB: $01 $22 $0A
    ld a, a                                       ; $55DE: $7F
    inc l                                         ; $55DF: $2C
    reti                                          ; $55E0: $D9


    add hl, bc                                    ; $55E1: $09
    ld e, a                                       ; $55E2: $5F
    inc b                                         ; $55E3: $04
    ld [$F738], sp                                ; $55E4: $08 $38 $F7
    ld [bc], a                                    ; $55E7: $02
    ld sp, hl                                     ; $55E8: $F9
    add hl, bc                                    ; $55E9: $09
    ld bc, $1455                                  ; $55EA: $01 $55 $14
    inc c                                         ; $55ED: $0C
    ld [de], a                                    ; $55EE: $12
    ld a, [bc]                                    ; $55EF: $0A
    ld [hl+], a                                   ; $55F0: $22
    ld [$0821], sp                                ; $55F1: $08 $21 $08
    ld l, e                                       ; $55F4: $6B
    ld b, c                                       ; $55F5: $41
    rst RST_20                                    ; $55F6: $E7
    ld b, $04                                     ; $55F7: $06 $04
    ld a, [bc]                                    ; $55F9: $0A
    ld a, a                                       ; $55FA: $7F
    inc l                                         ; $55FB: $2C
    dec bc                                        ; $55FC: $0B
    ld e, l                                       ; $55FD: $5D
    ld [$3008], sp                                ; $55FE: $08 $08 $30
    rst RST_00                                    ; $5601: $C7
    rlca                                          ; $5602: $07
    nop                                           ; $5603: $00
    ld a, $47                                     ; $5604: $3E $47
    cp d                                          ; $5606: $BA
    ld [bc], a                                    ; $5607: $02
    ld a, a                                       ; $5608: $7F
    ld b, a                                       ; $5609: $47
    rlca                                          ; $560A: $07
    nop                                           ; $560B: $00
    dec h                                         ; $560C: $25
    ld a, [bc]                                    ; $560D: $0A
    jr nz, jr_032_55BB                            ; $560E: $20 $AB

    ld [$0838], sp                                ; $5610: $08 $38 $08
    inc h                                         ; $5613: $24
    ld [$3A23], sp                                ; $5614: $08 $23 $3A
    dec bc                                        ; $5617: $0B
    push de                                       ; $5618: $D5
    rlca                                          ; $5619: $07
    dec b                                         ; $561A: $05
    ld bc, $110C                                  ; $561B: $01 $0C $11
    ld [$080A], sp                                ; $561E: $08 $0A $08
    ld l, a                                       ; $5621: $6F
    inc b                                         ; $5622: $04
    ld a, [de]                                    ; $5623: $1A
    add hl, sp                                    ; $5624: $39
    ld h, b                                       ; $5625: $60
    rst RST_00                                    ; $5626: $C7
    rlca                                          ; $5627: $07
    rlca                                          ; $5628: $07
    rlca                                          ; $5629: $07
    rst RST_38                                    ; $562A: $FF
    rlca                                          ; $562B: $07
    rlca                                          ; $562C: $07
    rlca                                          ; $562D: $07
    rlca                                          ; $562E: $07
    rlca                                          ; $562F: $07
    rlca                                          ; $5630: $07

jr_032_5631:
    rlca                                          ; $5631: $07
    rlca                                          ; $5632: $07
    rst RST_38                                    ; $5633: $FF
    rlca                                          ; $5634: $07
    rlca                                          ; $5635: $07
    rlca                                          ; $5636: $07
    rlca                                          ; $5637: $07
    rlca                                          ; $5638: $07
    rlca                                          ; $5639: $07
    rlca                                          ; $563A: $07
    rlca                                          ; $563B: $07
    rst RST_38                                    ; $563C: $FF
    rlca                                          ; $563D: $07
    rlca                                          ; $563E: $07
    rlca                                          ; $563F: $07
    rlca                                          ; $5640: $07
    rlca                                          ; $5641: $07
    rlca                                          ; $5642: $07
    rlca                                          ; $5643: $07
    rlca                                          ; $5644: $07
    rst RST_38                                    ; $5645: $FF
    rlca                                          ; $5646: $07
    rlca                                          ; $5647: $07
    rlca                                          ; $5648: $07
    rlca                                          ; $5649: $07
    rlca                                          ; $564A: $07
    rlca                                          ; $564B: $07
    rlca                                          ; $564C: $07
    rlca                                          ; $564D: $07
    ld a, [$0707]                                 ; $564E: $FA $07 $07
    rlca                                          ; $5651: $07
    rlca                                          ; $5652: $07
    dec b                                         ; $5653: $05
    ld bc, $0308                                  ; $5654: $01 $08 $03
    xor d                                         ; $5657: $AA
    ld [$2006], sp                                ; $5658: $08 $06 $20
    inc c                                         ; $565B: $0C
    jr nz, @+$1B                                  ; $565C: $20 $19

    jr nz, jr_032_5693                            ; $565E: $20 $33

    xor e                                         ; $5660: $AB
    jr nz, jr_032_56C9                            ; $5661: $20 $66

    jr nz, jr_032_5631                            ; $5663: $20 $CC

jr_032_5665:
    jr nz, @-$65                                  ; $5665: $20 $99

    jr nz, jr_032_5679                            ; $5667: $20 $10

    ld hl, sp+$20                                 ; $5669: $F8 $20
    db $10                                        ; $566B: $10
    jr nz, @+$41                                  ; $566C: $20 $3F

    add hl, sp                                    ; $566E: $39
    ld [hl], b                                    ; $566F: $70
    ld b, b                                       ; $5670: $40
    ld d, c                                       ; $5671: $51
    nop                                           ; $5672: $00
    nop                                           ; $5673: $00
    ld a, h                                       ; $5674: $7C
    ld [$3C4C], sp                                ; $5675: $08 $4C $3C
    ld h, b                                       ; $5678: $60

jr_032_5679:
    jr jr_032_5665                                ; $5679: $18 $EA

    dec bc                                        ; $567B: $0B
    rlca                                          ; $567C: $07
    ld c, b                                       ; $567D: $48
    jr nz, @+$0B                                  ; $567E: $20 $09

    ld b, b                                       ; $5680: $40
    ld [$E95C], sp                                ; $5681: $08 $5C $E9
    ld [$03C9], sp                                ; $5684: $08 $C9 $03
    ld a, [hl]                                    ; $5687: $7E
    ld [$1E66], sp                                ; $5688: $08 $66 $1E
    rst RST_28                                    ; $568B: $EF
    xor $EF                                       ; $568C: $EE $EF
    jp hl                                         ; $568E: $E9


    add hl, bc                                    ; $568F: $09
    ld a, b                                       ; $5690: $78
    ld c, b                                       ; $5691: $48
    add hl, bc                                    ; $5692: $09

jr_032_5693:
    inc bc                                        ; $5693: $03
    ld a, a                                       ; $5694: $7F
    sbc [hl]                                      ; $5695: $9E
    ld [$0F73], sp                                ; $5696: $08 $73 $0F
    rst RST_28                                    ; $5699: $EF
    rst RST_28                                    ; $569A: $EF
    add hl, bc                                    ; $569B: $09
    adc c                                         ; $569C: $89
    ld [hl], b                                    ; $569D: $70
    db $D3                                        ; $569E: $D3
    ld a, [bc]                                    ; $569F: $0A
    inc bc                                        ; $56A0: $03
    ccf                                           ; $56A1: $3F
    ld [$0739], sp                                ; $56A2: $08 $39 $07
    rst RST_28                                    ; $56A5: $EF
    rst RST_28                                    ; $56A6: $EF
    call Call_000_09E9                            ; $56A7: $CD $E9 $09
    ld h, c                                       ; $56AA: $61
    ld bc, $9C00                                  ; $56AB: $01 $00 $9C
    rra                                           ; $56AE: $1F
    ld [$1C3F], sp                                ; $56AF: $08 $3F $1C
    inc bc                                        ; $56B2: $03
    rst RST_28                                    ; $56B3: $EF
    rst RST_28                                    ; $56B4: $EF
    dec bc                                        ; $56B5: $0B
    and b                                         ; $56B6: $A0
    ld bc, $4FAC                                  ; $56B7: $01 $AC $4F
    rrca                                          ; $56BA: $0F
    ld [$010E], sp                                ; $56BB: $08 $0E $01
    rst RST_28                                    ; $56BE: $EF
    rst RST_28                                    ; $56BF: $EF
    add hl, bc                                    ; $56C0: $09
    ld bc, $063F                                  ; $56C1: $01 $3F $06
    rlca                                          ; $56C4: $07
    nop                                           ; $56C5: $00
    db $FC                                        ; $56C6: $FC
    add hl, hl                                    ; $56C7: $29
    dec sp                                        ; $56C8: $3B

jr_032_56C9:
    rst RST_28                                    ; $56C9: $EF
    rst RST_28                                    ; $56CA: $EF
    sbc e                                         ; $56CB: $9B
    ld bc, $0F0C                                  ; $56CC: $01 $0C $0F
    nop                                           ; $56CF: $00
    inc a                                         ; $56D0: $3C
    inc bc                                        ; $56D1: $03
    ld a, [bc]                                    ; $56D2: $0A
    rst RST_28                                    ; $56D3: $EF
    push bc                                       ; $56D4: $C5
    rst RST_28                                    ; $56D5: $EF
    inc bc                                        ; $56D6: $03
    add hl, de                                    ; $56D7: $19
    ld e, $1F                                     ; $56D8: $1E $1F

jr_032_56DA:
    inc a                                         ; $56DA: $3C
    ld bc, $7108                                  ; $56DB: $01 $08 $71
    ld h, c                                       ; $56DE: $61
    rst RST_28                                    ; $56DF: $EF
    rst RST_28                                    ; $56E0: $EF
    inc b                                         ; $56E1: $04
    inc sp                                        ; $56E2: $33
    inc a                                         ; $56E3: $3C
    ccf                                           ; $56E4: $3F
    inc a                                         ; $56E5: $3C
    ld e, a                                       ; $56E6: $5F
    ld [hl], b                                    ; $56E7: $70
    add hl, bc                                    ; $56E8: $09
    jr nc, jr_032_56DA                            ; $56E9: $30 $EF

    rst RST_28                                    ; $56EB: $EF
    ld bc, $7848                                  ; $56EC: $01 $48 $78
    dec d                                         ; $56EF: $15
    ld h, a                                       ; $56F0: $67
    jr c, jr_032_5772                             ; $56F1: $38 $7F

    ld c, h                                       ; $56F3: $4C
    ld a, b                                       ; $56F4: $78
    ld [$4858], sp                                ; $56F5: $08 $58 $48
    pop af                                        ; $56F8: $F1
    rst RST_28                                    ; $56F9: $EF
    rlca                                          ; $56FA: $07
    jp hl                                         ; $56FB: $E9


    add hl, bc                                    ; $56FC: $09
    ld c, [hl]                                    ; $56FD: $4E
    jr nc, jr_032_577E                            ; $56FE: $30 $7E

    ld e, h                                       ; $5700: $5C
    sbc d                                         ; $5701: $9A
    add hl, hl                                    ; $5702: $29
    ld [hl], d                                    ; $5703: $72
    inc a                                         ; $5704: $3C
    jr jr_032_576F                                ; $5705: $18 $68

    ld d, b                                       ; $5707: $50
    ld a, [bc]                                    ; $5708: $0A
    ld [hl], b                                    ; $5709: $70
    cp $7C                                        ; $570A: $FE $7C
    add hl, hl                                    ; $570C: $29
    ld e, e                                       ; $570D: $5B
    adc c                                         ; $570E: $89
    xor d                                         ; $570F: $AA
    ld a, h                                       ; $5710: $7C
    ld bc, $923F                                  ; $5711: $01 $3F $92
    ld [$1E39], sp                                ; $5714: $08 $39 $1E
    jr jr_032_5729                                ; $5717: $18 $10

    jr z, jr_032_5725                             ; $5719: $28 $0A

jr_032_571B:
    jr c, jr_032_571B                             ; $571B: $38 $FE

    ld c, b                                       ; $571D: $48
    add hl, bc                                    ; $571E: $09
    dec sp                                        ; $571F: $3B
    ld l, c                                       ; $5720: $69
    adc d                                         ; $5721: $8A
    xor $03                                       ; $5722: $EE $03
    rra                                           ; $5724: $1F

jr_032_5725:
    sub e                                         ; $5725: $93
    ld [$0F1C], sp                                ; $5726: $08 $1C $0F

jr_032_5729:
    jr jr_032_5733                                ; $5729: $18 $08

    inc d                                         ; $572B: $14
    ld c, $49                                     ; $572C: $0E $49
    ld sp, hl                                     ; $572E: $F9
    ld l, d                                       ; $572F: $6A
    rst RST_10                                    ; $5730: $D7
    ld b, $80                                     ; $5731: $06 $80

jr_032_5733:
    ld [$070E], sp                                ; $5733: $08 $0E $07
    jr jr_032_5777                                ; $5736: $18 $3F

    inc b                                         ; $5738: $04
    ld a, [bc]                                    ; $5739: $0A
    ld a, [bc]                                    ; $573A: $0A
    add hl, hl                                    ; $573B: $29
    ld c, d                                       ; $573C: $4A
    or a                                          ; $573D: $B7
    rlca                                          ; $573E: $07
    ld [bc], a                                    ; $573F: $02
    rst RST_10                                    ; $5740: $D7
    and b                                         ; $5741: $A0
    add hl, bc                                    ; $5742: $09
    inc bc                                        ; $5743: $03
    ld [$0A02], sp                                ; $5744: $08 $02 $0A
    add hl, hl                                    ; $5747: $29
    sub a                                         ; $5748: $97
    or l                                          ; $5749: $B5
    inc b                                         ; $574A: $04
    dec de                                        ; $574B: $1B

jr_032_574C:
    rlca                                          ; $574C: $07
    nop                                           ; $574D: $00
    add hl, de                                    ; $574E: $19
    nop                                           ; $574F: $00
    ld sp, $D700                                  ; $5750: $31 $00 $D7
    xor a                                         ; $5753: $AF
    rlca                                          ; $5754: $07
    ld [hl], b                                    ; $5755: $70
    nop                                           ; $5756: $00
    ld d, a                                       ; $5757: $57
    nop                                           ; $5758: $00
    add hl, de                                    ; $5759: $19
    ld c, e                                       ; $575A: $4B
    ld d, [hl]                                    ; $575B: $56
    ld bc, $8300                                  ; $575C: $01 $00 $83
    nop                                           ; $575F: $00
    add [hl]                                      ; $5760: $86
    nop                                           ; $5761: $00
    ld c, e                                       ; $5762: $4B
    db $10                                        ; $5763: $10
    xor l                                         ; $5764: $AD
    ld b, $12                                     ; $5765: $06 $12
    nop                                           ; $5767: $00
    inc c                                         ; $5768: $0C
    nop                                           ; $5769: $00
    ld l, c                                       ; $576A: $69
    di                                            ; $576B: $F3
    nop                                           ; $576C: $00
    ld d, l                                       ; $576D: $55
    inc sp                                        ; $576E: $33

jr_032_576F:
    nop                                           ; $576F: $00
    ld h, e                                       ; $5770: $63
    nop                                           ; $5771: $00

jr_032_5772:
    ret nz                                        ; $5772: $C0

    ld [bc], a                                    ; $5773: $02
    ld h, b                                       ; $5774: $60
    nop                                           ; $5775: $00
    ld l, d                                       ; $5776: $6A

jr_032_5777:
    ld sp, $7900                                  ; $5777: $31 $00 $79
    inc b                                         ; $577A: $04
    nop                                           ; $577B: $00
    adc [hl]                                      ; $577C: $8E
    nop                                           ; $577D: $00

jr_032_577E:
    ld b, l                                       ; $577E: $45
    xor a                                         ; $577F: $AF
    nop                                           ; $5780: $00
    ld b, [hl]                                    ; $5781: $46
    nop                                           ; $5782: $00
    ld c, h                                       ; $5783: $4C
    nop                                           ; $5784: $00
    ld c, c                                       ; $5785: $49
    ld bc, $5679                                  ; $5786: $01 $79 $56
    ld hl, sp+$00                                 ; $5789: $F8 $00
    jr jr_032_578F                                ; $578B: $18 $02

    add hl, de                                    ; $578D: $19
    nop                                           ; $578E: $00

jr_032_578F:
    add hl, de                                    ; $578F: $19
    jr nc, jr_032_574C                            ; $5790: $30 $BA

    nop                                           ; $5792: $00
    ldh [rP1], a                                  ; $5793: $E0 $00
    ld a, c                                       ; $5795: $79
    ld bc, $00CF                                  ; $5796: $01 $CF $00
    ld b, c                                       ; $5799: $41
    or [hl]                                       ; $579A: $B6
    nop                                           ; $579B: $00
    ld b, d                                       ; $579C: $42
    ld [bc], a                                    ; $579D: $02
    add hl, hl                                    ; $579E: $29
    ld h, b                                       ; $579F: $60
    nop                                           ; $57A0: $00
    ld l, c                                       ; $57A1: $69
    inc bc                                        ; $57A2: $03
    cp d                                          ; $57A3: $BA
    inc b                                         ; $57A4: $04
    di                                            ; $57A5: $F3
    nop                                           ; $57A6: $00
    dec a                                         ; $57A7: $3D
    ld a, c                                       ; $57A8: $79
    inc b                                         ; $57A9: $04
    nop                                           ; $57AA: $00
    adc $AB                                       ; $57AB: $CE $AB
    nop                                           ; $57AD: $00
    dec b                                         ; $57AE: $05
    nop                                           ; $57AF: $00
    ld b, $00                                     ; $57B0: $06 $00
    inc c                                         ; $57B2: $0C
    nop                                           ; $57B3: $00
    ld c, c                                       ; $57B4: $49
    ld d, l                                       ; $57B5: $55
    call nz, $2800                                ; $57B6: $C4 $00 $28
    ld [bc], a                                    ; $57B9: $02
    ld bc, $8000                                  ; $57BA: $01 $00 $80
    nop                                           ; $57BD: $00
    ld e, [hl]                                    ; $57BE: $5E
    ldh [rP1], a                                  ; $57BF: $E0 $00
    ld h, b                                       ; $57C1: $60
    nop                                           ; $57C2: $00
    add hl, sp                                    ; $57C3: $39
    jp hl                                         ; $57C4: $E9


    inc bc                                        ; $57C5: $03
    ret nz                                        ; $57C6: $C0

    xor d                                         ; $57C7: $AA
    nop                                           ; $57C8: $00
    jr nz, jr_032_57CD                            ; $57C9: $20 $02

    ld h, a                                       ; $57CB: $67
    nop                                           ; $57CC: $00

jr_032_57CD:
    and l                                         ; $57CD: $A5
    nop                                           ; $57CE: $00
    ld d, a                                       ; $57CF: $57
    db $EB                                        ; $57D0: $EB
    nop                                           ; $57D1: $00
    ld l, c                                       ; $57D2: $69
    db $DB                                        ; $57D3: $DB
    adc b                                         ; $57D4: $88
    nop                                           ; $57D5: $00
    ld d, b                                       ; $57D6: $50
    nop                                           ; $57D7: $00
    add hl, hl                                    ; $57D8: $29
    ld e, a                                       ; $57D9: $5F
    ld b, b                                       ; $57DA: $40
    nop                                           ; $57DB: $00
    ld hl, sp+$00                                 ; $57DC: $F8 $00
    ei                                            ; $57DE: $FB
    rlca                                          ; $57DF: $07
    rlca                                          ; $57E0: $07
    rlca                                          ; $57E1: $07
    rst RST_10                                    ; $57E2: $D7
    rlca                                          ; $57E3: $07
    dec b                                         ; $57E4: $05
    rst RST_38                                    ; $57E5: $FF
    add hl, bc                                    ; $57E6: $09
    ld a, a                                       ; $57E7: $7F
    add hl, de                                    ; $57E8: $19
    rlca                                          ; $57E9: $07
    rlca                                          ; $57EA: $07
    rst RST_18                                    ; $57EB: $DF
    rlca                                          ; $57EC: $07
    ei                                            ; $57ED: $FB
    add b                                         ; $57EE: $80
    ld a, [de]                                    ; $57EF: $1A
    rlca                                          ; $57F0: $07
    rlca                                          ; $57F1: $07
    rlca                                          ; $57F2: $07

jr_032_57F3:
    rlca                                          ; $57F3: $07
    rst RST_38                                    ; $57F4: $FF
    rlca                                          ; $57F5: $07
    rlca                                          ; $57F6: $07
    rlca                                          ; $57F7: $07
    rlca                                          ; $57F8: $07
    rlca                                          ; $57F9: $07
    rlca                                          ; $57FA: $07
    rlca                                          ; $57FB: $07
    rlca                                          ; $57FC: $07
    rst RST_38                                    ; $57FD: $FF
    rlca                                          ; $57FE: $07
    rlca                                          ; $57FF: $07
    rlca                                          ; $5800: $07
    rlca                                          ; $5801: $07
    rlca                                          ; $5802: $07
    rlca                                          ; $5803: $07
    rlca                                          ; $5804: $07
    rlca                                          ; $5805: $07
    rst RST_38                                    ; $5806: $FF
    rlca                                          ; $5807: $07
    rlca                                          ; $5808: $07
    rlca                                          ; $5809: $07
    rlca                                          ; $580A: $07
    rlca                                          ; $580B: $07
    rlca                                          ; $580C: $07
    rlca                                          ; $580D: $07
    rlca                                          ; $580E: $07
    rst RST_10                                    ; $580F: $D7
    rlca                                          ; $5810: $07
    dec b                                         ; $5811: $05
    ld bc, $0208                                  ; $5812: $01 $08 $02
    db $10                                        ; $5815: $10
    add hl, bc                                    ; $5816: $09
    add hl, hl                                    ; $5817: $29
    sbc d                                         ; $5818: $9A
    ld e, a                                       ; $5819: $5F
    inc b                                         ; $581A: $04
    inc bc                                        ; $581B: $03
    rst RST_08                                    ; $581C: $CF
    ld b, c                                       ; $581D: $41
    inc c                                         ; $581E: $0C
    db $10                                        ; $581F: $10
    ld [hl], b                                    ; $5820: $70
    rla                                           ; $5821: $17
    rrca                                          ; $5822: $0F
    add b                                         ; $5823: $80
    ld a, a                                       ; $5824: $7F
    jr nc, @+$01                                  ; $5825: $30 $FF

    dec bc                                        ; $5827: $0B
    add hl, sp                                    ; $5828: $39
    ld c, a                                       ; $5829: $4F
    db $EC                                        ; $582A: $EC
    rst RST_38                                    ; $582B: $FF
    ld a, b                                       ; $582C: $78
    ld [$1040], sp                                ; $582D: $08 $40 $10
    add hl, bc                                    ; $5830: $09
    jr nz, jr_032_57F3                            ; $5831: $20 $C0

    dec h                                         ; $5833: $25
    db $10                                        ; $5834: $10
    ldh [$FF09], a                                ; $5835: $E0 $09

jr_032_5837:
    ld [$0BF0], sp                                ; $5837: $08 $F0 $0B
    ld [hl], b                                    ; $583A: $70
    ld l, d                                       ; $583B: $6A
    ret nz                                        ; $583C: $C0

    add hl, bc                                    ; $583D: $09
    jr c, jr_032_5847                             ; $583E: $38 $07

    ld a, [hl]                                    ; $5840: $7E
    ld bc, $7CFF                                  ; $5841: $01 $FF $7C
    ld a, a                                       ; $5844: $7F
    rla                                           ; $5845: $17
    inc e                                         ; $5846: $1C

jr_032_5847:
    rra                                           ; $5847: $1F
    ld b, $40                                     ; $5848: $06 $40
    inc bc                                        ; $584A: $03
    dec bc                                        ; $584B: $0B
    ld c, b                                       ; $584C: $48
    ld [$68BE], sp                                ; $584D: $08 $BE $68
    nop                                           ; $5850: $00
    add hl, bc                                    ; $5851: $09
    jr z, jr_032_585C                             ; $5852: $28 $08

    rlca                                          ; $5854: $07
    ld h, c                                       ; $5855: $61
    ldh [$FF86], a                                ; $5856: $E0 $86
    ret nc                                        ; $5858: $D0

    di                                            ; $5859: $F3
    db $EC                                        ; $585A: $EC
    rst RST_30                                    ; $585B: $F7

jr_032_585C:
    dec bc                                        ; $585C: $0B
    ld sp, $1B08                                  ; $585D: $31 $08 $1B
    xor [hl]                                      ; $5860: $AE
    ld [$08FC], sp                                ; $5861: $08 $FC $08
    cp a                                          ; $5864: $BF
    ld [$0868], sp                                ; $5865: $08 $68 $08
    add hl, de                                    ; $5868: $19
    ldh [c], a                                    ; $5869: $E2
    ld sp, hl                                     ; $586A: $F9
    add hl, bc                                    ; $586B: $09

jr_032_586C:
    rlca                                          ; $586C: $07
    jr nz, @-$3E                                  ; $586D: $20 $C0

    db $10                                        ; $586F: $10
    ret z                                         ; $5870: $C8

    sub b                                         ; $5871: $90
    dec bc                                        ; $5872: $0B
    ld h, b                                       ; $5873: $60
    ret nc                                        ; $5874: $D0

    and b                                         ; $5875: $A0
    ldh a, [rOBP0]                                ; $5876: $F0 $48
    cp $30                                        ; $5878: $FE $30
    xor b                                         ; $587A: $A8
    ld d, a                                       ; $587B: $57
    ld a, [hl]                                    ; $587C: $7E
    jr jr_032_5837                                ; $587D: $18 $B8

    ld [$2880], sp                                ; $587F: $08 $80 $28
    add hl, bc                                    ; $5882: $09
    ld e, c                                       ; $5883: $59
    ld [$07F7], a                                 ; $5884: $EA $F7 $07
    inc b                                         ; $5887: $04
    inc bc                                        ; $5888: $03
    ld [$1004], sp                                ; $5889: $08 $04 $10
    ld [$074E], sp                                ; $588C: $08 $4E $07
    add hl, bc                                    ; $588F: $09
    ld b, $01                                     ; $5890: $06 $01
    nop                                           ; $5892: $00
    ld c, b                                       ; $5893: $48
    dec bc                                        ; $5894: $0B
    ld [bc], a                                    ; $5895: $02
    ld [$7910], a                                 ; $5896: $EA $10 $79
    rst RST_18                                    ; $5899: $DF
    inc a                                         ; $589A: $3C
    ld [$11C3], sp                                ; $589B: $08 $C3 $11
    rst RST_38                                    ; $589E: $FF
    ld a, [$0F0F]                                 ; $589F: $FA $0F $0F
    ld a, [bc]                                    ; $58A2: $0A
    rlca                                          ; $58A3: $07
    ld [bc], a                                    ; $58A4: $02
    add b                                         ; $58A5: $80
    ld [$8740], sp                                ; $58A6: $08 $40 $87
    db $10                                        ; $58A9: $10
    jr nz, jr_032_586C                            ; $58AA: $20 $C0

    db $10                                        ; $58AC: $10
    ldh [$FF09], a                                ; $58AD: $E0 $09
    add hl, hl                                    ; $58AF: $29
    ld c, c                                       ; $58B0: $49
    ret nz                                        ; $58B1: $C0

    dec bc                                        ; $58B2: $0B
    add hl, sp                                    ; $58B3: $39
    inc b                                         ; $58B4: $04
    inc bc                                        ; $58B5: $03
    jr z, @+$09                                   ; $58B6: $28 $07

    ld a, c                                       ; $58B8: $79
    ld h, $00                                     ; $58B9: $26 $00
    ld a, e                                       ; $58BB: $7B
    dec [hl]                                      ; $58BC: $35
    ld a, a                                       ; $58BD: $7F
    jr c, jr_032_58FF                             ; $58BE: $38 $3F

    dec de                                        ; $58C0: $1B
    rra                                           ; $58C1: $1F
    dec c                                         ; $58C2: $0D
    ld a, $0F                                     ; $58C3: $3E $0F
    ld [bc], a                                    ; $58C5: $02
    jr z, @+$7A                                   ; $58C6: $28 $78

    ld c, b                                       ; $58C8: $48
    ld a, b                                       ; $58C9: $78
    ld [$F400], sp                                ; $58CA: $08 $00 $F4
    jr z, jr_032_58D7                             ; $58CD: $28 $08

    rlca                                          ; $58CF: $07
    nop                                           ; $58D0: $00
    rst RST_38                                    ; $58D1: $FF
    add hl, bc                                    ; $58D2: $09
    add e                                         ; $58D3: $83
    ld a, h                                       ; $58D4: $7C
    dec bc                                        ; $58D5: $0B
    rst RST_00                                    ; $58D6: $C7

jr_032_58D7:
    cp e                                          ; $58D7: $BB
    rst RST_28                                    ; $58D8: $EF
    sub $30                                       ; $58D9: $D6 $30
    ld bc, $2808                                  ; $58DB: $01 $08 $28
    db $EB                                        ; $58DE: $EB
    ld [$0848], sp                                ; $58DF: $08 $48 $08
    sbc [hl]                                      ; $58E2: $9E
    ld [$9218], sp                                ; $58E3: $08 $18 $92
    rst RST_28                                    ; $58E6: $EF
    sub l                                         ; $58E7: $95
    nop                                           ; $58E8: $00
    db $10                                        ; $58E9: $10
    ldh [$FF0B], a                                ; $58EA: $E0 $0B
    cp $89                                        ; $58EC: $FE $89
    ld a, $18                                     ; $58EE: $3E $18
    ld c, $B8                                     ; $58F0: $0E $B8
    db $FC                                        ; $58F2: $FC
    ld [hl], b                                    ; $58F3: $70
    ldh a, [rOBP1]                                ; $58F4: $F0 $49
    ld [$6048], sp                                ; $58F6: $08 $48 $60
    push af                                       ; $58F9: $F5
    jp hl                                         ; $58FA: $E9


    ld a, c                                       ; $58FB: $79
    rlca                                          ; $58FC: $07
    rlca                                          ; $58FD: $07
    inc c                                         ; $58FE: $0C

jr_032_58FF:
    ld [$101E], sp                                ; $58FF: $08 $1E $10
    ld h, d                                       ; $5902: $62
    ccf                                           ; $5903: $3F
    db $10                                        ; $5904: $10
    add hl, bc                                    ; $5905: $09
    ld a, [hl-]                                   ; $5906: $3A
    dec e                                         ; $5907: $1D
    ld [hl+], a                                   ; $5908: $22
    ld a, [bc]                                    ; $5909: $0A
    ld hl, $3886                                  ; $590A: $21 $86 $38
    jr nz, @+$21                                  ; $590D: $20 $1F

    db $10                                        ; $590F: $10
    rrca                                          ; $5910: $0F
    dec bc                                        ; $5911: $0B
    db $DB                                        ; $5912: $DB
    ld a, [bc]                                    ; $5913: $0A
    xor e                                         ; $5914: $AB
    ld [$087E], a                                 ; $5915: $EA $7E $08
    add c                                         ; $5918: $81
    ld de, $0FFF                                  ; $5919: $11 $FF $0F
    rrca                                          ; $591C: $0F
    call nc, Call_000_060A                        ; $591D: $D4 $0A $06
    ld h, b                                       ; $5920: $60
    ld [$10F0], sp                                ; $5921: $08 $F0 $10
    ld hl, sp+$70                                 ; $5924: $F8 $70
    adc d                                         ; $5926: $8A
    add hl, bc                                    ; $5927: $09
    ld a, b                                       ; $5928: $78
    or b                                          ; $5929: $B0
    ld c, b                                       ; $592A: $48
    ld a, [bc]                                    ; $592B: $0A
    adc b                                         ; $592C: $88
    jr c, jr_032_5937                             ; $592D: $38 $08

    sbc l                                         ; $592F: $9D
    ld [hl], b                                    ; $5930: $70
    db $10                                        ; $5931: $10
    ldh [$FF0B], a                                ; $5932: $E0 $0B
    rst RST_38                                    ; $5934: $FF
    inc bc                                        ; $5935: $03
    inc bc                                        ; $5936: $03

jr_032_5937:
    ld [$0704], sp                                ; $5937: $08 $04 $07
    ld [bc], a                                    ; $593A: $02
    ld c, $05                                     ; $593B: $0E $05
    ld a, [bc]                                    ; $593D: $0A
    ld [$0D12], sp                                ; $593E: $08 $12 $0D
    dec l                                         ; $5941: $2D
    inc de                                        ; $5942: $13
    inc c                                         ; $5943: $0C
    ret z                                         ; $5944: $C8

    rrca                                          ; $5945: $0F
    dec c                                         ; $5946: $0D
    cp e                                          ; $5947: $BB
    inc d                                         ; $5948: $14
    ld [$70D5], sp                                ; $5949: $08 $D5 $70
    ld [$087E], sp                                ; $594C: $08 $7E $08
    add c                                         ; $594F: $81
    ld de, $0FFF                                  ; $5950: $11 $FF $0F
    db $F4                                        ; $5953: $F4

jr_032_5954:
    rrca                                          ; $5954: $0F
    ld a, [bc]                                    ; $5955: $0A
    rlca                                          ; $5956: $07
    ld [bc], a                                    ; $5957: $02
    sbc b                                         ; $5958: $98
    ld [$18BC], sp                                ; $5959: $08 $BC $18
    ld h, b                                       ; $595C: $60
    ld a, [hl]                                    ; $595D: $7E
    db $10                                        ; $595E: $10
    add hl, bc                                    ; $595F: $09
    ld l, [hl]                                    ; $5960: $6E
    sbc h                                         ; $5961: $9C
    jp nz, Jump_000_043C                          ; $5962: $C2 $3C $04

    ld b, e                                       ; $5965: $43
    ld hl, sp+$09                                 ; $5966: $F8 $09
    ld [$10F0], sp                                ; $5968: $08 $F0 $10
    ldh [$FFDF], a                                ; $596B: $E0 $DF
    inc bc                                        ; $596D: $03
    ld b, [hl]                                    ; $596E: $46
    ld sp, $7908                                  ; $596F: $31 $08 $79

jr_032_5972:
    jr nc, jr_032_5972                            ; $5972: $30 $FE

    db $10                                        ; $5974: $10
    add hl, bc                                    ; $5975: $09
    ld [$7104], a                                 ; $5976: $EA $04 $71
    add a                                         ; $5979: $87
    ld a, b                                       ; $597A: $78
    ld b, b                                       ; $597B: $40
    ccf                                           ; $597C: $3F
    add hl, bc                                    ; $597D: $09
    jr nz, @+$21                                  ; $597E: $20 $1F

    xor d                                         ; $5980: $AA
    ld hl, sp+$0F                                 ; $5981: $F8 $0F
    cp e                                          ; $5983: $BB
    inc d                                         ; $5984: $14
    ld [$080C], sp                                ; $5985: $08 $0C $08
    ld a, [hl]                                    ; $5988: $7E
    xor a                                         ; $5989: $AF
    ld [$1181], sp                                ; $598A: $08 $81 $11
    rst RST_38                                    ; $598D: $FF
    rrca                                          ; $598E: $0F

jr_032_598F:
    rrca                                          ; $598F: $0F
    ld a, [bc]                                    ; $5990: $0A
    rlca                                          ; $5991: $07
    and c                                         ; $5992: $A1
    ld [bc], a                                    ; $5993: $02
    ldh [$FF08], a                                ; $5994: $E0 $08
    ldh a, [$FF60]                                ; $5996: $F0 $60
    ld a, b                                       ; $5998: $78
    or b                                          ; $5999: $B0
    add hl, bc                                    ; $599A: $09
    ld b, [hl]                                    ; $599B: $46
    ld c, b                                       ; $599C: $48
    ld [$30C8], sp                                ; $599D: $08 $C8 $30
    ld [$0950], sp                                ; $59A0: $08 $50 $09
    db $10                                        ; $59A3: $10
    ld [$0980], a                                 ; $59A4: $EA $80 $09
    jr z, jr_032_59B0                             ; $59A7: $28 $07

    dec c                                         ; $59A9: $0D
    inc c                                         ; $59AA: $0C
    ld [$850F], sp                                ; $59AB: $08 $0F $85
    add hl, bc                                    ; $59AE: $09
    inc bc                                        ; $59AF: $03

jr_032_59B0:
    dec bc                                        ; $59B0: $0B
    inc b                                         ; $59B1: $04
    jr c, jr_032_59DC                             ; $59B2: $38 $28

    ld a, a                                       ; $59B4: $7F
    jr nc, jr_032_5954                            ; $59B5: $30 $9D

    ld [$3F00], sp                                ; $59B7: $08 $00 $3F
    ld [$0007], sp                                ; $59BA: $08 $07 $00
    rst RST_38                                    ; $59BD: $FF
    dec c                                         ; $59BE: $0D
    ld l, b                                       ; $59BF: $68
    db $10                                        ; $59C0: $10
    ld [$EF00], sp                                ; $59C1: $08 $00 $EF
    ld [$D7C7], sp                                ; $59C4: $08 $C7 $D7
    jr z, @-$0C                                   ; $59C7: $28 $F2

    jr c, jr_032_59F5                             ; $59C9: $38 $2A

    add e                                         ; $59CB: $83
    rlca                                          ; $59CC: $07
    jr nz, jr_032_598F                            ; $59CD: $20 $C0

    dec c                                         ; $59CF: $0D
    ld h, b                                       ; $59D0: $60
    and c                                         ; $59D1: $A1
    ld [$09E0], sp                                ; $59D2: $08 $E0 $09
    add b                                         ; $59D5: $80
    and b                                         ; $59D6: $A0
    ld b, b                                       ; $59D7: $40
    jr c, jr_032_5A02                             ; $59D8: $38 $28

    halt                                          ; $59DA: $76
    db $FC                                        ; $59DB: $FC

jr_032_59DC:
    jr nc, jr_032_59E6                            ; $59DC: $30 $08

    xor b                                         ; $59DE: $A8
    ld hl, sp-$09                                 ; $59DF: $F8 $F7
    nop                                           ; $59E1: $00
    ld [$0745], sp                                ; $59E2: $08 $45 $07
    dec bc                                        ; $59E5: $0B

jr_032_59E6:
    inc e                                         ; $59E6: $1C
    rrca                                          ; $59E7: $0F
    ld e, $08                                     ; $59E8: $1E $08
    rra                                           ; $59EA: $1F
    ld [$00FC], sp                                ; $59EB: $08 $FC $00
    jr c, @+$0A                                   ; $59EE: $38 $08

    ld a, b                                       ; $59F0: $78
    ld hl, sp+$18                                 ; $59F1: $F8 $18
    ld a, a                                       ; $59F3: $7F
    inc bc                                        ; $59F4: $03

jr_032_59F5:
    db $DB                                        ; $59F5: $DB
    ld [$3F28], sp                                ; $59F6: $08 $28 $3F
    rst RST_30                                    ; $59F9: $F7
    ld bc, $0DFF                                  ; $59FA: $01 $FF $0D
    cp b                                          ; $59FD: $B8
    call nc, RST_08                               ; $59FE: $D4 $08 $00
    rst RST_18                                    ; $5A01: $DF

jr_032_5A02:
    ld [$10CF], sp                                ; $5A02: $08 $CF $10
    jr nz, jr_032_5A17                            ; $5A05: $20 $10

    ld e, l                                       ; $5A07: $5D
    rst RST_28                                    ; $5A08: $EF
    jr z, jr_032_5A02                             ; $5A09: $28 $F7

    add e                                         ; $5A0B: $83
    rlca                                          ; $5A0C: $07
    ld a, b                                       ; $5A0D: $78
    ldh [$FF90], a                                ; $5A0E: $E0 $90
    ld e, b                                       ; $5A10: $58
    ret nz                                        ; $5A11: $C0

    dec bc                                        ; $5A12: $0B
    ld h, b                                       ; $5A13: $60
    ld [$8040], sp                                ; $5A14: $08 $40 $80

jr_032_5A17:
    and b                                         ; $5A17: $A0
    ld b, b                                       ; $5A18: $40
    xor [hl]                                      ; $5A19: $AE
    add hl, sp                                    ; $5A1A: $39
    jr c, jr_032_5A25                             ; $5A1B: $38 $08

    db $FC                                        ; $5A1D: $FC
    ld b, b                                       ; $5A1E: $40
    ld [$F8A8], sp                                ; $5A1F: $08 $A8 $F8
    push bc                                       ; $5A22: $C5
    rst RST_30                                    ; $5A23: $F7
    ld sp, hl                                     ; $5A24: $F9

jr_032_5A25:
    rrca                                          ; $5A25: $0F
    ld [$0B07], sp                                ; $5A26: $08 $07 $0B
    inc c                                         ; $5A29: $0C
    ld [$4083], sp                                ; $5A2A: $08 $83 $40
    inc bc                                        ; $5A2D: $03
    dec bc                                        ; $5A2E: $0B
    dec b                                         ; $5A2F: $05
    add hl, bc                                    ; $5A30: $09
    ld b, $F8                                     ; $5A31: $06 $F8
    jr c, jr_032_5AAB                             ; $5A33: $38 $76

    ld a, a                                       ; $5A35: $7F
    ld b, b                                       ; $5A36: $40
    ld [$3FA8], sp                                ; $5A37: $08 $A8 $3F
    rst RST_30                                    ; $5A3A: $F7
    ld bc, $F5FF                                  ; $5A3B: $01 $FF $F5
    dec c                                         ; $5A3E: $0D
    cp b                                          ; $5A3F: $B8
    ld [$F700], sp                                ; $5A40: $08 $00 $F7
    ld [$10E7], sp                                ; $5A43: $08 $E7 $10
    ld d, $08                                     ; $5A46: $16 $08
    db $10                                        ; $5A48: $10
    rst RST_28                                    ; $5A49: $EF
    jr z, @-$1F                                   ; $5A4A: $28 $DF

    add e                                         ; $5A4C: $83
    rlca                                          ; $5A4D: $07
    jr nz, @+$49                                  ; $5A4E: $20 $47

    ret nz                                        ; $5A50: $C0

    dec bc                                        ; $5A51: $0B
    ld [hl], b                                    ; $5A52: $70
    ldh [$FFF0], a                                ; $5A53: $E0 $F0
    ld a, [bc]                                    ; $5A55: $0A
    nop                                           ; $5A56: $00
    jr c, @-$2B                                   ; $5A57: $38 $D3

    ld [$3878], sp                                ; $5A59: $08 $78 $38
    jr @-$02                                      ; $5A5C: $18 $FC

    add b                                         ; $5A5E: $80
    ld [$6028], sp                                ; $5A5F: $08 $28 $60
    ld hl, sp-$09                                 ; $5A62: $F8 $F7
    nop                                           ; $5A64: $00
    jr nz, @+$42                                  ; $5A65: $20 $40

    ld a, [hl+]                                   ; $5A67: $2A
    nop                                           ; $5A68: $00
    ld bc, $020C                                  ; $5A69: $01 $0C $02
    ld [$0804], sp                                ; $5A6C: $08 $04 $08
    dec b                                         ; $5A6F: $05
    xor d                                         ; $5A70: $AA
    ld [$0808], sp                                ; $5A71: $08 $08 $08
    add hl, bc                                    ; $5A74: $09
    ld [$080C], sp                                ; $5A75: $08 $0C $08
    dec c                                         ; $5A78: $0D
    xor d                                         ; $5A79: $AA
    ld [$0810], sp                                ; $5A7A: $08 $10 $08
    ld de, $1408                                  ; $5A7D: $11 $08 $14
    ld [$B515], sp                                ; $5A80: $08 $15 $B5
    ld [$EE18], sp                                ; $5A83: $08 $18 $EE
    rrca                                          ; $5A86: $0F
    ld [bc], a                                    ; $5A87: $02
    ld [$0803], sp                                ; $5A88: $08 $03 $08
    ld d, l                                       ; $5A8B: $55
    ld b, $08                                     ; $5A8C: $06 $08
    rlca                                          ; $5A8E: $07
    ld [$080A], sp                                ; $5A8F: $08 $0A $08
    dec bc                                        ; $5A92: $0B
    ld [$0E55], sp                                ; $5A93: $08 $55 $0E
    ld [$080F], sp                                ; $5A96: $08 $0F $08
    ld [de], a                                    ; $5A99: $12
    ld [$0813], sp                                ; $5A9A: $08 $13 $08
    ld d, l                                       ; $5A9D: $55
    ld d, $08                                     ; $5A9E: $16 $08
    rla                                           ; $5AA0: $17
    ld [$0819], sp                                ; $5AA1: $08 $19 $08
    ld a, [de]                                    ; $5AA4: $1A
    ld [$1B55], sp                                ; $5AA5: $08 $55 $1B
    ld [$081C], sp                                ; $5AA8: $08 $1C $08

jr_032_5AAB:
    ld bc, $1D0E                                  ; $5AAB: $01 $0E $1D
    ld [$1E55], sp                                ; $5AAE: $08 $55 $1E
    ld [$081F], sp                                ; $5AB1: $08 $1F $08
    jr nz, jr_032_5ABE                            ; $5AB4: $20 $08

    ld hl, $5508                                  ; $5AB6: $21 $08 $55
    ld [hl+], a                                   ; $5AB9: $22
    ld [$0823], sp                                ; $5ABA: $08 $23 $08
    inc h                                         ; $5ABD: $24

jr_032_5ABE:
    ld [$0825], sp                                ; $5ABE: $08 $25 $08
    ld d, l                                       ; $5AC1: $55
    ld h, $08                                     ; $5AC2: $26 $08
    daa                                           ; $5AC4: $27
    ld [$0828], sp                                ; $5AC5: $08 $28 $08
    add hl, hl                                    ; $5AC8: $29
    ld [$2A55], sp                                ; $5AC9: $08 $55 $2A
    ld [$082B], sp                                ; $5ACC: $08 $2B $08
    inc l                                         ; $5ACF: $2C
    ld [$0F01], sp                                ; $5AD0: $08 $01 $0F
    push af                                       ; $5AD3: $F5
    rrca                                          ; $5AD4: $0F
    rrca                                          ; $5AD5: $0F
    rrca                                          ; $5AD6: $0F
    inc c                                         ; $5AD7: $0C
    dec l                                         ; $5AD8: $2D
    inc l                                         ; $5AD9: $2C
    ld l, $08                                     ; $5ADA: $2E $08
    ld [hl], a                                    ; $5ADC: $77
    cpl                                           ; $5ADD: $2F
    rrca                                          ; $5ADE: $0F
    rrca                                          ; $5ADF: $0F
    ld a, [bc]                                    ; $5AE0: $0A
    ld sp, $7FCF                                  ; $5AE1: $31 $CF $7F
    ld [$307B], sp                                ; $5AE4: $08 $7B $30
    adc d                                         ; $5AE7: $8A
    rrca                                          ; $5AE8: $0F
    rrca                                          ; $5AE9: $0F
    add hl, bc                                    ; $5AEA: $09
    ld [hl-], a                                   ; $5AEB: $32
    ld a, [de]                                    ; $5AEC: $1A
    rst RST_08                                    ; $5AED: $CF
    rst RST_38                                    ; $5AEE: $FF
    ld a, l                                       ; $5AEF: $7D
    ld l, a                                       ; $5AF0: $6F
    rrca                                          ; $5AF1: $0F
    cp a                                          ; $5AF2: $BF
    add hl, de                                    ; $5AF3: $19
    rst RST_08                                    ; $5AF4: $CF
    ld a, l                                       ; $5AF5: $7D
    ld l, a                                       ; $5AF6: $6F
    rst RST_38                                    ; $5AF7: $FF
    rrca                                          ; $5AF8: $0F
    cp a                                          ; $5AF9: $BF
    add hl, de                                    ; $5AFA: $19
    rst RST_08                                    ; $5AFB: $CF
    ld a, l                                       ; $5AFC: $7D
    ld l, a                                       ; $5AFD: $6F
    rrca                                          ; $5AFE: $0F
    cp a                                          ; $5AFF: $BF
    rst RST_38                                    ; $5B00: $FF
    add hl, de                                    ; $5B01: $19
    rst RST_08                                    ; $5B02: $CF
    ld a, l                                       ; $5B03: $7D
    ld l, a                                       ; $5B04: $6F
    rrca                                          ; $5B05: $0F
    cp a                                          ; $5B06: $BF
    add hl, de                                    ; $5B07: $19
    rst RST_08                                    ; $5B08: $CF
    rst RST_38                                    ; $5B09: $FF
    ld a, l                                       ; $5B0A: $7D
    ld l, a                                       ; $5B0B: $6F
    rrca                                          ; $5B0C: $0F
    cp a                                          ; $5B0D: $BF
    add hl, de                                    ; $5B0E: $19
    rst RST_08                                    ; $5B0F: $CF
    ld a, l                                       ; $5B10: $7D
    ld l, a                                       ; $5B11: $6F
    ld a, [$BF0F]                                 ; $5B12: $FA $0F $BF
    add hl, de                                    ; $5B15: $19
    rst RST_08                                    ; $5B16: $CF
    ld a, l                                       ; $5B17: $7D
    inc sp                                        ; $5B18: $33
    ld [$B734], sp                                ; $5B19: $08 $34 $B7
    ld c, $36                                     ; $5B1C: $0E $36
    ld c, a                                       ; $5B1E: $4F
    ld a, [bc]                                    ; $5B1F: $0A
    add hl, sp                                    ; $5B20: $39
    jp c, $CBCF                                   ; $5B21: $DA $CF $CB

    push de                                       ; $5B24: $D5
    ld a, e                                       ; $5B25: $7B
    dec bc                                        ; $5B26: $0B
    dec [hl]                                      ; $5B27: $35
    ld [$0837], sp                                ; $5B28: $08 $37 $08
    jr c, jr_032_5B8B                             ; $5B2B: $38 $5E

    sub $0F                                       ; $5B2D: $D6 $0F
    add hl, bc                                    ; $5B2F: $09
    ld a, [hl-]                                   ; $5B30: $3A
    ld [$3C3B], sp                                ; $5B31: $08 $3B $3C
    rst RST_08                                    ; $5B34: $CF
    inc a                                         ; $5B35: $3C
    xor e                                         ; $5B36: $AB
    ld [$083D], sp                                ; $5B37: $08 $3D $08
    ld b, b                                       ; $5B3A: $40
    ld [$FF41], sp                                ; $5B3B: $08 $41 $FF
    ld a, [bc]                                    ; $5B3E: $0A
    ld d, l                                       ; $5B3F: $55
    ld b, h                                       ; $5B40: $44
    ld [$0845], sp                                ; $5B41: $08 $45 $08
    ld b, [hl]                                    ; $5B44: $46
    ld [$0847], sp                                ; $5B45: $08 $47 $08
    ld e, d                                       ; $5B48: $5A
    ld c, b                                       ; $5B49: $48
    ld [$9F4B], sp                                ; $5B4A: $08 $4B $9F
    ld a, [bc]                                    ; $5B4D: $0A
    ld a, $08                                     ; $5B4E: $3E $08
    ccf                                           ; $5B50: $3F
    xor [hl]                                      ; $5B51: $AE
    ld [$0842], sp                                ; $5B52: $08 $42 $08
    ld b, e                                       ; $5B55: $43
    ld a, a                                       ; $5B56: $7F
    rrca                                          ; $5B57: $0F
    ld [$AD49], sp                                ; $5B58: $08 $49 $AD
    ld [$084A], sp                                ; $5B5B: $08 $4A $08
    ld c, h                                       ; $5B5E: $4C
    ld l, a                                       ; $5B5F: $6F
    ld a, [bc]                                    ; $5B60: $0A
    ld c, [hl]                                    ; $5B61: $4E
    ld [$4F56], sp                                ; $5B62: $08 $56 $4F
    ld [$0852], sp                                ; $5B65: $08 $52 $08
    ld d, e                                       ; $5B68: $53
    ld a, a                                       ; $5B69: $7F
    ld c, $56                                     ; $5B6A: $0E $56
    xor e                                         ; $5B6C: $AB
    ld [$0857], sp                                ; $5B6D: $08 $57 $08
    ld e, b                                       ; $5B70: $58
    ld [$7F5B], sp                                ; $5B71: $08 $5B $7F
    ld [$4D55], sp                                ; $5B74: $08 $55 $4D
    ld [$0850], sp                                ; $5B77: $08 $50 $08
    ld d, c                                       ; $5B7A: $51
    ld [$0854], sp                                ; $5B7B: $08 $54 $08
    ld [hl], l                                    ; $5B7E: $75
    ld d, l                                       ; $5B7F: $55
    adc a                                         ; $5B80: $8F
    cp a                                          ; $5B81: $BF
    ld [$0859], sp                                ; $5B82: $08 $59 $08
    ld e, d                                       ; $5B85: $5A
    ld [$5C40], sp                                ; $5B86: $08 $40 $5C
    ld l, l                                       ; $5B89: $6D
    ld a, [hl+]                                   ; $5B8A: $2A

jr_032_5B8B:
    ld b, b                                       ; $5B8B: $40
    ld a, [hl+]                                   ; $5B8C: $2A
    nop                                           ; $5B8D: $00
    ld bc, $020C                                  ; $5B8E: $01 $0C $02
    ld [$0804], sp                                ; $5B91: $08 $04 $08
    dec b                                         ; $5B94: $05
    xor d                                         ; $5B95: $AA
    ld [$0808], sp                                ; $5B96: $08 $08 $08
    add hl, bc                                    ; $5B99: $09
    ld [$080C], sp                                ; $5B9A: $08 $0C $08
    dec c                                         ; $5B9D: $0D
    xor d                                         ; $5B9E: $AA
    ld [$0810], sp                                ; $5B9F: $08 $10 $08
    ld de, $1408                                  ; $5BA2: $11 $08 $14
    ld [$B515], sp                                ; $5BA5: $08 $15 $B5
    ld [$EE18], sp                                ; $5BA8: $08 $18 $EE
    rrca                                          ; $5BAB: $0F
    ld [bc], a                                    ; $5BAC: $02
    ld [$0803], sp                                ; $5BAD: $08 $03 $08
    ld d, l                                       ; $5BB0: $55
    ld b, $08                                     ; $5BB1: $06 $08
    rlca                                          ; $5BB3: $07
    ld [$080A], sp                                ; $5BB4: $08 $0A $08
    dec bc                                        ; $5BB7: $0B
    ld [$0E55], sp                                ; $5BB8: $08 $55 $0E
    ld [$080F], sp                                ; $5BBB: $08 $0F $08
    ld [de], a                                    ; $5BBE: $12
    ld [$0813], sp                                ; $5BBF: $08 $13 $08
    ld d, l                                       ; $5BC2: $55
    ld d, $08                                     ; $5BC3: $16 $08
    rla                                           ; $5BC5: $17
    ld [$0819], sp                                ; $5BC6: $08 $19 $08
    ld a, [de]                                    ; $5BC9: $1A
    ld [$1B55], sp                                ; $5BCA: $08 $55 $1B
    ld [$081C], sp                                ; $5BCD: $08 $1C $08
    ld bc, $1D0E                                  ; $5BD0: $01 $0E $1D
    ld [$1E55], sp                                ; $5BD3: $08 $55 $1E
    ld [$081F], sp                                ; $5BD6: $08 $1F $08
    jr nz, jr_032_5BE3                            ; $5BD9: $20 $08

    ld hl, $5508                                  ; $5BDB: $21 $08 $55
    ld [hl+], a                                   ; $5BDE: $22
    ld [$0823], sp                                ; $5BDF: $08 $23 $08
    inc h                                         ; $5BE2: $24

jr_032_5BE3:
    ld [$0825], sp                                ; $5BE3: $08 $25 $08
    ld d, l                                       ; $5BE6: $55
    ld h, $08                                     ; $5BE7: $26 $08
    daa                                           ; $5BE9: $27
    ld [$0828], sp                                ; $5BEA: $08 $28 $08
    add hl, hl                                    ; $5BED: $29
    ld [$2A55], sp                                ; $5BEE: $08 $55 $2A
    ld [$082B], sp                                ; $5BF1: $08 $2B $08
    inc l                                         ; $5BF4: $2C
    ld [$0F01], sp                                ; $5BF5: $08 $01 $0F
    push af                                       ; $5BF8: $F5
    rrca                                          ; $5BF9: $0F
    rrca                                          ; $5BFA: $0F
    rrca                                          ; $5BFB: $0F
    inc c                                         ; $5BFC: $0C
    dec l                                         ; $5BFD: $2D
    inc l                                         ; $5BFE: $2C
    ld l, $08                                     ; $5BFF: $2E $08
    ld l, e                                       ; $5C01: $6B
    cpl                                           ; $5C02: $2F
    rrca                                          ; $5C03: $0F
    ld [$0831], sp                                ; $5C04: $08 $31 $08
    ld [hl-], a                                   ; $5C07: $32
    ld e, a                                       ; $5C08: $5F
    ld [$356B], sp                                ; $5C09: $08 $6B $35
    rst RST_08                                    ; $5C0C: $CF
    adc $30                                       ; $5C0D: $CE $30
    ld [$0F01], sp                                ; $5C0F: $08 $01 $0F
    ld [$335B], sp                                ; $5C12: $08 $5B $33
    ld [$5F34], sp                                ; $5C15: $08 $34 $5F
    ld [$CF36], sp                                ; $5C18: $08 $36 $CF
    adc $DB                                       ; $5C1B: $CE $DB
    ld l, a                                       ; $5C1D: $6F
    ld l, l                                       ; $5C1E: $6D
    inc [hl]                                      ; $5C1F: $34
    ld e, a                                       ; $5C20: $5F
    ld [$CF36], sp                                ; $5C21: $08 $36 $CF
    adc $DB                                       ; $5C24: $CE $DB
    ld l, a                                       ; $5C26: $6F
    ld l, l                                       ; $5C27: $6D
    inc [hl]                                      ; $5C28: $34
    ld e, a                                       ; $5C29: $5F
    ld [$CF36], sp                                ; $5C2A: $08 $36 $CF
    adc $DB                                       ; $5C2D: $CE $DB
    ld l, a                                       ; $5C2F: $6F
    ld l, l                                       ; $5C30: $6D
    inc [hl]                                      ; $5C31: $34
    ld e, a                                       ; $5C32: $5F
    ld [$CF36], sp                                ; $5C33: $08 $36 $CF
    adc $DB                                       ; $5C36: $CE $DB
    ld l, a                                       ; $5C38: $6F
    ld l, l                                       ; $5C39: $6D
    inc [hl]                                      ; $5C3A: $34
    ld e, a                                       ; $5C3B: $5F
    ld [$CF36], sp                                ; $5C3C: $08 $36 $CF
    adc $DB                                       ; $5C3F: $CE $DB
    ld l, a                                       ; $5C41: $6F
    ld l, l                                       ; $5C42: $6D
    inc [hl]                                      ; $5C43: $34
    ld e, a                                       ; $5C44: $5F
    ld [$CF36], sp                                ; $5C45: $08 $36 $CF
    adc $DB                                       ; $5C48: $CE $DB
    ld l, a                                       ; $5C4A: $6F
    ld l, l                                       ; $5C4B: $6D
    inc [hl]                                      ; $5C4C: $34
    ld e, a                                       ; $5C4D: $5F
    ld [$CF36], sp                                ; $5C4E: $08 $36 $CF
    adc $55                                       ; $5C51: $CE $55
    scf                                           ; $5C53: $37
    ld [$0838], sp                                ; $5C54: $08 $38 $08
    dec sp                                        ; $5C57: $3B
    ld c, $3F                                     ; $5C58: $0E $3F
    ld [$4055], sp                                ; $5C5A: $08 $55 $40
    ld [$0841], sp                                ; $5C5D: $08 $41 $08
    ld b, d                                       ; $5C60: $42
    ld e, h                                       ; $5C61: $5C
    ld b, a                                       ; $5C62: $47
    ld [$486A], sp                                ; $5C63: $08 $6A $48
    cp a                                          ; $5C66: $BF
    ld [$084D], sp                                ; $5C67: $08 $4D $08
    ld c, [hl]                                    ; $5C6A: $4E
    ld [$AA39], sp                                ; $5C6B: $08 $39 $AA
    ld [$083A], sp                                ; $5C6E: $08 $3A $08
    inc a                                         ; $5C71: $3C
    ld [$083D], sp                                ; $5C72: $08 $3D $08
    ld a, $AA                                     ; $5C75: $3E $AA
    ld [$0C01], sp                                ; $5C77: $08 $01 $0C
    ld b, e                                       ; $5C7A: $43
    ld [$0844], sp                                ; $5C7B: $08 $44 $08
    ld b, l                                       ; $5C7E: $45
    xor d                                         ; $5C7F: $AA
    ld [$0846], sp                                ; $5C80: $08 $46 $08
    ld c, c                                       ; $5C83: $49
    ld [$084A], sp                                ; $5C84: $08 $4A $08
    ld c, e                                       ; $5C87: $4B
    xor d                                         ; $5C88: $AA
    adc h                                         ; $5C89: $8C
    ld c, h                                       ; $5C8A: $4C
    ld [$084F], sp                                ; $5C8B: $08 $4F $08
    ld d, b                                       ; $5C8E: $50
    ld a, [hl-]                                   ; $5C8F: $3A
    ld d, c                                       ; $5C90: $51
    xor d                                         ; $5C91: $AA
    ld [$0852], sp                                ; $5C92: $08 $52 $08
    ld d, e                                       ; $5C95: $53
    ld [$0856], sp                                ; $5C96: $08 $56 $08
    ld d, a                                       ; $5C99: $57
    xor d                                         ; $5C9A: $AA
    ld [$085A], sp                                ; $5C9B: $08 $5A $08
    ld e, e                                       ; $5C9E: $5B
    ld a, d                                       ; $5C9F: $7A
    ld e, [hl]                                    ; $5CA0: $5E
    ld [$AA61], sp                                ; $5CA1: $08 $61 $AA
    ld [$0862], sp                                ; $5CA4: $08 $62 $08
    ld h, l                                       ; $5CA7: $65
    ld [$0866], sp                                ; $5CA8: $08 $66 $08
    ld l, c                                       ; $5CAB: $69
    xor d                                         ; $5CAC: $AA
    ld [$086A], sp                                ; $5CAD: $08 $6A $08
    ld l, l                                       ; $5CB0: $6D
    ld [$086E], sp                                ; $5CB1: $08 $6E $08
    ld d, b                                       ; $5CB4: $50
    push de                                       ; $5CB5: $D5
    xor d                                         ; $5CB6: $AA
    dec bc                                        ; $5CB7: $0B
    ld d, h                                       ; $5CB8: $54
    ld [$0855], sp                                ; $5CB9: $08 $55 $08
    ld e, b                                       ; $5CBC: $58
    ld [$5955], sp                                ; $5CBD: $08 $55 $59
    ld [$085C], sp                                ; $5CC0: $08 $5C $08
    ld e, l                                       ; $5CC3: $5D
    ld [$085F], sp                                ; $5CC4: $08 $5F $08
    ld d, l                                       ; $5CC7: $55
    ld h, b                                       ; $5CC8: $60
    ld [$0863], sp                                ; $5CC9: $08 $63 $08
    ld h, h                                       ; $5CCC: $64
    ld [$0867], sp                                ; $5CCD: $08 $67 $08
    ld d, l                                       ; $5CD0: $55
    ld l, b                                       ; $5CD1: $68
    ld [$086B], sp                                ; $5CD2: $08 $6B $08
    ld l, h                                       ; $5CD5: $6C
    ld [$086F], sp                                ; $5CD6: $08 $6F $08
    ld d, l                                       ; $5CD9: $55
    ld [hl], b                                    ; $5CDA: $70
    ld [$0871], sp                                ; $5CDB: $08 $71 $08
    ld [hl], d                                    ; $5CDE: $72
    ld [$0A01], sp                                ; $5CDF: $08 $01 $0A
    ld e, d                                       ; $5CE2: $5A
    ld [hl], e                                    ; $5CE3: $73
    ld [$3C74], sp                                ; $5CE4: $08 $74 $3C
    dec bc                                        ; $5CE7: $0B
    ld [hl], l                                    ; $5CE8: $75
    ld [$AA76], sp                                ; $5CE9: $08 $76 $AA
    ld [$0877], sp                                ; $5CEC: $08 $77 $08
    ld a, b                                       ; $5CEF: $78
    ld [$087B], sp                                ; $5CF0: $08 $7B $08
    ld a, h                                       ; $5CF3: $7C
    xor d                                         ; $5CF4: $AA
    ld a, h                                       ; $5CF5: $7C
    ld a, a                                       ; $5CF6: $7F
    ld [$0890], sp                                ; $5CF7: $08 $90 $08
    sub c                                         ; $5CFA: $91
    ld [$EA92], sp                                ; $5CFB: $08 $92 $EA
    rst RST_38                                    ; $5CFE: $FF
    rrca                                          ; $5CFF: $0F
    inc c                                         ; $5D00: $0C
    ld a, c                                       ; $5D01: $79
    ld [$087A], sp                                ; $5D02: $08 $7A $08
    ld a, l                                       ; $5D05: $7D
    or b                                          ; $5D06: $B0
    ld [$7F7E], sp                                ; $5D07: $08 $7E $7F
    dec bc                                        ; $5D0A: $0B
    dec de                                        ; $5D0B: $1B
    nop                                           ; $5D0C: $00
    ld a, [hl+]                                   ; $5D0D: $2A
    nop                                           ; $5D0E: $00
    ld bc, $0214                                  ; $5D0F: $01 $14 $02
    db $10                                        ; $5D12: $10
    inc b                                         ; $5D13: $04
    db $10                                        ; $5D14: $10
    dec b                                         ; $5D15: $05
    xor d                                         ; $5D16: $AA
    db $10                                        ; $5D17: $10
    ld [$0910], sp                                ; $5D18: $08 $10 $09
    db $10                                        ; $5D1B: $10
    inc c                                         ; $5D1C: $0C
    db $10                                        ; $5D1D: $10
    dec c                                         ; $5D1E: $0D
    xor d                                         ; $5D1F: $AA
    db $10                                        ; $5D20: $10
    db $10                                        ; $5D21: $10
    db $10                                        ; $5D22: $10
    ld de, $1410                                  ; $5D23: $11 $10 $14
    db $10                                        ; $5D26: $10
    dec d                                         ; $5D27: $15
    xor d                                         ; $5D28: $AA
    db $10                                        ; $5D29: $10
    jr jr_032_5D3C                                ; $5D2A: $18 $10

    ld bc, $021C                                  ; $5D2C: $01 $1C $02
    db $10                                        ; $5D2F: $10
    inc bc                                        ; $5D30: $03
    xor d                                         ; $5D31: $AA
    db $10                                        ; $5D32: $10
    ld b, $10                                     ; $5D33: $06 $10
    rlca                                          ; $5D35: $07
    db $10                                        ; $5D36: $10
    ld a, [bc]                                    ; $5D37: $0A
    db $10                                        ; $5D38: $10
    dec bc                                        ; $5D39: $0B
    xor d                                         ; $5D3A: $AA
    db $10                                        ; $5D3B: $10

jr_032_5D3C:
    ld c, $10                                     ; $5D3C: $0E $10
    rrca                                          ; $5D3E: $0F
    db $10                                        ; $5D3F: $10
    ld [de], a                                    ; $5D40: $12
    db $10                                        ; $5D41: $10
    inc de                                        ; $5D42: $13
    xor d                                         ; $5D43: $AA
    db $10                                        ; $5D44: $10
    ld d, $10                                     ; $5D45: $16 $10
    rla                                           ; $5D47: $17
    db $10                                        ; $5D48: $10
    add hl, de                                    ; $5D49: $19
    db $10                                        ; $5D4A: $10
    ld a, [de]                                    ; $5D4B: $1A
    xor d                                         ; $5D4C: $AA
    db $10                                        ; $5D4D: $10
    dec de                                        ; $5D4E: $1B
    db $10                                        ; $5D4F: $10
    inc e                                         ; $5D50: $1C
    db $10                                        ; $5D51: $10
    ld bc, $1D16                                  ; $5D52: $01 $16 $1D
    xor d                                         ; $5D55: $AA
    db $10                                        ; $5D56: $10
    ld e, $10                                     ; $5D57: $1E $10
    rra                                           ; $5D59: $1F
    db $10                                        ; $5D5A: $10
    jr nz, jr_032_5D6D                            ; $5D5B: $20 $10

    ld hl, $10AA                                  ; $5D5D: $21 $AA $10
    ld [hl+], a                                   ; $5D60: $22
    db $10                                        ; $5D61: $10
    inc hl                                        ; $5D62: $23
    db $10                                        ; $5D63: $10
    inc h                                         ; $5D64: $24
    db $10                                        ; $5D65: $10
    dec h                                         ; $5D66: $25
    xor d                                         ; $5D67: $AA
    db $10                                        ; $5D68: $10
    ld h, $10                                     ; $5D69: $26 $10
    daa                                           ; $5D6B: $27
    db $10                                        ; $5D6C: $10

jr_032_5D6D:
    jr z, jr_032_5D7F                             ; $5D6D: $28 $10

    add hl, hl                                    ; $5D6F: $29
    xor d                                         ; $5D70: $AA
    db $10                                        ; $5D71: $10
    ld a, [hl+]                                   ; $5D72: $2A
    db $10                                        ; $5D73: $10
    dec hl                                        ; $5D74: $2B
    db $10                                        ; $5D75: $10
    inc l                                         ; $5D76: $2C
    db $10                                        ; $5D77: $10
    ld bc, $1FEB                                  ; $5D78: $01 $EB $1F
    rra                                           ; $5D7B: $1F
    ld a, [de]                                    ; $5D7C: $1A
    dec l                                         ; $5D7D: $2D
    db $10                                        ; $5D7E: $10

jr_032_5D7F:
    ld l, $1F                                     ; $5D7F: $2E $1F
    rra                                           ; $5D81: $1F
    xor e                                         ; $5D82: $AB
    ld [de], a                                    ; $5D83: $12

jr_032_5D84:
    jr nc, jr_032_5D96                            ; $5D84: $30 $10

    cpl                                           ; $5D86: $2F
    db $10                                        ; $5D87: $10
    ld bc, $1F1F                                  ; $5D88: $01 $1F $1F
    xor [hl]                                      ; $5D8B: $AE
    ld [de], a                                    ; $5D8C: $12
    ld sp, $2F10                                  ; $5D8D: $31 $10 $2F
    db $FC                                        ; $5D90: $FC
    rra                                           ; $5D91: $1F
    rla                                           ; $5D92: $17
    ld sp, $10BA                                  ; $5D93: $31 $BA $10

jr_032_5D96:
    cpl                                           ; $5D96: $2F
    db $FC                                        ; $5D97: $FC
    rra                                           ; $5D98: $1F
    rla                                           ; $5D99: $17
    ld sp, $2F10                                  ; $5D9A: $31 $10 $2F
    db $EB                                        ; $5D9D: $EB
    db $FC                                        ; $5D9E: $FC
    rra                                           ; $5D9F: $1F
    rla                                           ; $5DA0: $17
    ld sp, $2F10                                  ; $5DA1: $31 $10 $2F
    db $FC                                        ; $5DA4: $FC
    rra                                           ; $5DA5: $1F
    xor [hl]                                      ; $5DA6: $AE
    rla                                           ; $5DA7: $17
    ld sp, $2F10                                  ; $5DA8: $31 $10 $2F
    db $FC                                        ; $5DAB: $FC
    rra                                           ; $5DAC: $1F
    rla                                           ; $5DAD: $17
    ld sp, $10BA                                  ; $5DAE: $31 $BA $10
    cpl                                           ; $5DB1: $2F
    db $FC                                        ; $5DB2: $FC
    rra                                           ; $5DB3: $1F
    rla                                           ; $5DB4: $17
    ld sp, $3210                                  ; $5DB5: $31 $10 $32
    xor e                                         ; $5DB8: $AB
    db $10                                        ; $5DB9: $10
    inc sp                                        ; $5DBA: $33
    ld [de], a                                    ; $5DBB: $12
    inc [hl]                                      ; $5DBC: $34
    or d                                          ; $5DBD: $B2
    ld [hl], $94                                  ; $5DBE: $36 $94
    rra                                           ; $5DC0: $1F
    xor d                                         ; $5DC1: $AA
    dec d                                         ; $5DC2: $15
    add hl, sp                                    ; $5DC3: $39
    db $10                                        ; $5DC4: $10
    ld bc, $3514                                  ; $5DC5: $01 $14 $35
    db $10                                        ; $5DC8: $10
    scf                                           ; $5DC9: $37
    cp d                                          ; $5DCA: $BA
    db $10                                        ; $5DCB: $10
    jr c, jr_032_5D84                             ; $5DCC: $38 $B6

    rra                                           ; $5DCE: $1F
    dec e                                         ; $5DCF: $1D
    ld a, [hl-]                                   ; $5DD0: $3A
    db $10                                        ; $5DD1: $10
    dec sp                                        ; $5DD2: $3B
    xor e                                         ; $5DD3: $AB
    db $10                                        ; $5DD4: $10
    inc a                                         ; $5DD5: $3C
    db $10                                        ; $5DD6: $10
    dec a                                         ; $5DD7: $3D
    db $10                                        ; $5DD8: $10
    ccf                                           ; $5DD9: $3F
    or $1F                                        ; $5DDA: $F6 $1F
    xor d                                         ; $5DDC: $AA
    dec e                                         ; $5DDD: $1D
    ld a, $10                                     ; $5DDE: $3E $10
    ld b, b                                       ; $5DE0: $40
    db $10                                        ; $5DE1: $10
    ld b, c                                       ; $5DE2: $41
    db $10                                        ; $5DE3: $10
    ld b, d                                       ; $5DE4: $42
    ld [$1FF8], a                                 ; $5DE5: $EA $F8 $1F
    rla                                           ; $5DE8: $17
    ld b, e                                       ; $5DE9: $43
    db $10                                        ; $5DEA: $10
    ld b, l                                       ; $5DEB: $45
    db $10                                        ; $5DEC: $10
    ld b, [hl]                                    ; $5DED: $46
    xor [hl]                                      ; $5DEE: $AE
    db $10                                        ; $5DEF: $10
    ld c, c                                       ; $5DF0: $49
    db $10                                        ; $5DF1: $10
    ld c, d                                       ; $5DF2: $4A
    or $1F                                        ; $5DF3: $F6 $1F
    rla                                           ; $5DF5: $17
    ld b, h                                       ; $5DF6: $44
    xor d                                         ; $5DF7: $AA
    db $10                                        ; $5DF8: $10
    ld b, a                                       ; $5DF9: $47
    db $10                                        ; $5DFA: $10
    ld c, b                                       ; $5DFB: $48
    db $10                                        ; $5DFC: $10
    ld c, e                                       ; $5DFD: $4B
    db $10                                        ; $5DFE: $10
    ld c, h                                       ; $5DFF: $4C
    ret nz                                        ; $5E00: $C0

    or $18                                        ; $5E01: $F6 $18
    ld hl, $2A40                                  ; $5E03: $21 $40 $2A
    nop                                           ; $5E06: $00
    ld bc, $020C                                  ; $5E07: $01 $0C $02
    ld [$0804], sp                                ; $5E0A: $08 $04 $08
    dec b                                         ; $5E0D: $05
    xor d                                         ; $5E0E: $AA
    ld [$0808], sp                                ; $5E0F: $08 $08 $08
    add hl, bc                                    ; $5E12: $09
    ld [$080C], sp                                ; $5E13: $08 $0C $08
    dec c                                         ; $5E16: $0D
    xor d                                         ; $5E17: $AA
    ld [$0810], sp                                ; $5E18: $08 $10 $08
    ld de, $1408                                  ; $5E1B: $11 $08 $14
    ld [$B515], sp                                ; $5E1E: $08 $15 $B5
    ld [$EE18], sp                                ; $5E21: $08 $18 $EE
    rrca                                          ; $5E24: $0F
    ld [bc], a                                    ; $5E25: $02
    ld [$0803], sp                                ; $5E26: $08 $03 $08
    ld d, l                                       ; $5E29: $55
    ld b, $08                                     ; $5E2A: $06 $08
    rlca                                          ; $5E2C: $07
    ld [$080A], sp                                ; $5E2D: $08 $0A $08
    dec bc                                        ; $5E30: $0B
    ld [$0E55], sp                                ; $5E31: $08 $55 $0E
    ld [$080F], sp                                ; $5E34: $08 $0F $08
    ld [de], a                                    ; $5E37: $12
    ld [$0813], sp                                ; $5E38: $08 $13 $08
    ld d, l                                       ; $5E3B: $55
    ld d, $08                                     ; $5E3C: $16 $08
    rla                                           ; $5E3E: $17
    ld [$0819], sp                                ; $5E3F: $08 $19 $08
    ld a, [de]                                    ; $5E42: $1A
    ld [$1B55], sp                                ; $5E43: $08 $55 $1B
    ld [$081C], sp                                ; $5E46: $08 $1C $08
    ld bc, $1D0E                                  ; $5E49: $01 $0E $1D
    ld [$1E55], sp                                ; $5E4C: $08 $55 $1E
    ld [$081F], sp                                ; $5E4F: $08 $1F $08
    jr nz, jr_032_5E5C                            ; $5E52: $20 $08

    ld hl, $5508                                  ; $5E54: $21 $08 $55
    ld [hl+], a                                   ; $5E57: $22
    ld [$0823], sp                                ; $5E58: $08 $23 $08
    inc h                                         ; $5E5B: $24

jr_032_5E5C:
    ld [$0825], sp                                ; $5E5C: $08 $25 $08
    ld d, l                                       ; $5E5F: $55
    ld h, $08                                     ; $5E60: $26 $08
    daa                                           ; $5E62: $27
    ld [$0828], sp                                ; $5E63: $08 $28 $08
    add hl, hl                                    ; $5E66: $29
    ld [$2A55], sp                                ; $5E67: $08 $55 $2A
    ld [$082B], sp                                ; $5E6A: $08 $2B $08
    inc l                                         ; $5E6D: $2C
    ld [$0F01], sp                                ; $5E6E: $08 $01 $0F
    push af                                       ; $5E71: $F5
    rrca                                          ; $5E72: $0F

jr_032_5E73:
    rrca                                          ; $5E73: $0F
    rrca                                          ; $5E74: $0F
    inc c                                         ; $5E75: $0C
    dec l                                         ; $5E76: $2D
    inc l                                         ; $5E77: $2C
    ld l, $08                                     ; $5E78: $2E $08
    ld l, [hl]                                    ; $5E7A: $6E
    cpl                                           ; $5E7B: $2F
    rrca                                          ; $5E7C: $0F
    ld c, $31                                     ; $5E7D: $0E $31
    xor a                                         ; $5E7F: $AF

jr_032_5E80:
    rrca                                          ; $5E80: $0F
    sbc h                                         ; $5E81: $9C
    jr nc, jr_032_5E73                            ; $5E82: $30 $EF

    xor d                                         ; $5E84: $AA
    rrca                                          ; $5E85: $0F
    dec c                                         ; $5E86: $0D
    ld [hl-], a                                   ; $5E87: $32
    ld a, [de]                                    ; $5E88: $1A
    xor a                                         ; $5E89: $AF
    rrca                                          ; $5E8A: $0F
    sbc c                                         ; $5E8B: $99
    rst RST_38                                    ; $5E8C: $FF
    adc a                                         ; $5E8D: $8F
    rrca                                          ; $5E8E: $0F
    sbc e                                         ; $5E8F: $9B
    add hl, de                                    ; $5E90: $19
    xor a                                         ; $5E91: $AF
    rrca                                          ; $5E92: $0F
    sbc c                                         ; $5E93: $99
    adc a                                         ; $5E94: $8F
    rst RST_38                                    ; $5E95: $FF
    rrca                                          ; $5E96: $0F
    sbc e                                         ; $5E97: $9B
    add hl, de                                    ; $5E98: $19
    xor a                                         ; $5E99: $AF
    rrca                                          ; $5E9A: $0F
    sbc c                                         ; $5E9B: $99
    adc a                                         ; $5E9C: $8F
    rrca                                          ; $5E9D: $0F
    rst RST_38                                    ; $5E9E: $FF
    sbc e                                         ; $5E9F: $9B
    add hl, de                                    ; $5EA0: $19
    xor a                                         ; $5EA1: $AF
    rrca                                          ; $5EA2: $0F
    sbc c                                         ; $5EA3: $99
    adc a                                         ; $5EA4: $8F
    rrca                                          ; $5EA5: $0F
    sbc e                                         ; $5EA6: $9B
    rst RST_38                                    ; $5EA7: $FF
    add hl, de                                    ; $5EA8: $19
    xor a                                         ; $5EA9: $AF
    rrca                                          ; $5EAA: $0F
    sbc c                                         ; $5EAB: $99
    adc a                                         ; $5EAC: $8F
    rrca                                          ; $5EAD: $0F
    sbc e                                         ; $5EAE: $9B
    add hl, de                                    ; $5EAF: $19
    rst RST_38                                    ; $5EB0: $FF
    xor a                                         ; $5EB1: $AF
    rrca                                          ; $5EB2: $0F
    sbc c                                         ; $5EB3: $99
    adc a                                         ; $5EB4: $8F
    rrca                                          ; $5EB5: $0F
    sbc e                                         ; $5EB6: $9B
    add hl, de                                    ; $5EB7: $19
    xor a                                         ; $5EB8: $AF
    sub $0F                                       ; $5EB9: $D6 $0F
    sbc c                                         ; $5EBB: $99
    inc sp                                        ; $5EBC: $33
    ld [$0F34], sp                                ; $5EBD: $08 $34 $0F
    ld [$BB35], sp                                ; $5EC0: $08 $35 $BB
    inc l                                         ; $5EC3: $2C
    jr c, jr_032_5E80                             ; $5EC4: $38 $BA

    xor a                                         ; $5EC6: $AF
    add hl, bc                                    ; $5EC7: $09
    dec a                                         ; $5EC8: $3D
    sbc a                                         ; $5EC9: $9F
    rrca                                          ; $5ECA: $0F
    xor d                                         ; $5ECB: $AA
    ld a, [bc]                                    ; $5ECC: $0A
    ld [hl], $08                                  ; $5ECD: $36 $08
    scf                                           ; $5ECF: $37
    ld [$0839], sp                                ; $5ED0: $08 $39 $08
    ld a, [hl-]                                   ; $5ED3: $3A
    xor l                                         ; $5ED4: $AD
    ld [$083B], sp                                ; $5ED5: $08 $3B $08
    inc a                                         ; $5ED8: $3C
    sbc a                                         ; $5ED9: $9F
    ld [$4F3E], sp                                ; $5EDA: $08 $3E $4F
    push de                                       ; $5EDD: $D5
    rrca                                          ; $5EDE: $0F
    ld a, [bc]                                    ; $5EDF: $0A
    ld b, b                                       ; $5EE0: $40
    ld [$0841], sp                                ; $5EE1: $08 $41 $08
    ld b, h                                       ; $5EE4: $44
    ld [$4555], sp                                ; $5EE5: $08 $55 $45
    ld [$0847], sp                                ; $5EE8: $08 $47 $08
    jr nc, jr_032_5F57                            ; $5EEB: $30 $6A

    ld c, d                                       ; $5EED: $4A
    ld [$4C75], sp                                ; $5EEE: $08 $75 $4C
    rst RST_08                                    ; $5EF1: $CF
    rrca                                          ; $5EF2: $0F
    inc c                                         ; $5EF3: $0C
    ccf                                           ; $5EF4: $3F
    ld [$0842], sp                                ; $5EF5: $08 $42 $08
    ld d, l                                       ; $5EF8: $55
    ld b, e                                       ; $5EF9: $43
    ld [$4A46], sp                                ; $5EFA: $08 $46 $4A
    ld c, b                                       ; $5EFD: $48
    ld [$2A49], sp                                ; $5EFE: $08 $49 $2A
    ld d, l                                       ; $5F01: $55
    ld c, e                                       ; $5F02: $4B
    ld [$084D], sp                                ; $5F03: $08 $4D $08
    ld c, [hl]                                    ; $5F06: $4E
    ld [$084F], sp                                ; $5F07: $08 $4F $08
    ld l, d                                       ; $5F0A: $6A
    ld d, b                                       ; $5F0B: $50
    cp $0F                                        ; $5F0C: $FE $0F
    ld d, c                                       ; $5F0E: $51
    ld [$0853], sp                                ; $5F0F: $08 $53 $08
    ld d, h                                       ; $5F12: $54
    xor d                                         ; $5F13: $AA
    ld [$6E57], sp                                ; $5F14: $08 $57 $6E
    ld e, b                                       ; $5F17: $58
    ld [$0859], sp                                ; $5F18: $08 $59 $08
    ld e, e                                       ; $5F1B: $5B
    xor [hl]                                      ; $5F1C: $AE
    ld [$085C], sp                                ; $5F1D: $08 $5C $08
    ld e, [hl]                                    ; $5F20: $5E
    rst RST_38                                    ; $5F21: $FF
    rrca                                          ; $5F22: $0F
    ld [$AD52], sp                                ; $5F23: $08 $52 $AD
    ld [$0855], sp                                ; $5F26: $08 $55 $08
    ld d, [hl]                                    ; $5F29: $56
    ld l, a                                       ; $5F2A: $6F
    ld a, [bc]                                    ; $5F2B: $0A
    ld e, d                                       ; $5F2C: $5A
    ld [$5D60], sp                                ; $5F2D: $08 $60 $5D
    ld e, a                                       ; $5F30: $5F
    add hl, bc                                    ; $5F31: $09
    ld hl, $2A00                                  ; $5F32: $21 $00 $2A
    nop                                           ; $5F35: $00
    ld bc, $0214                                  ; $5F36: $01 $14 $02
    db $10                                        ; $5F39: $10
    inc b                                         ; $5F3A: $04
    db $10                                        ; $5F3B: $10
    dec b                                         ; $5F3C: $05
    xor d                                         ; $5F3D: $AA
    db $10                                        ; $5F3E: $10
    ld [$0910], sp                                ; $5F3F: $08 $10 $09
    db $10                                        ; $5F42: $10
    inc c                                         ; $5F43: $0C
    db $10                                        ; $5F44: $10
    dec c                                         ; $5F45: $0D
    xor d                                         ; $5F46: $AA
    db $10                                        ; $5F47: $10
    db $10                                        ; $5F48: $10
    db $10                                        ; $5F49: $10
    ld de, $1410                                  ; $5F4A: $11 $10 $14
    db $10                                        ; $5F4D: $10
    dec d                                         ; $5F4E: $15
    xor d                                         ; $5F4F: $AA
    db $10                                        ; $5F50: $10
    jr jr_032_5F63                                ; $5F51: $18 $10

    ld bc, $021C                                  ; $5F53: $01 $1C $02
    db $10                                        ; $5F56: $10

jr_032_5F57:
    inc bc                                        ; $5F57: $03
    xor d                                         ; $5F58: $AA
    db $10                                        ; $5F59: $10
    ld b, $10                                     ; $5F5A: $06 $10
    rlca                                          ; $5F5C: $07
    db $10                                        ; $5F5D: $10
    ld a, [bc]                                    ; $5F5E: $0A
    db $10                                        ; $5F5F: $10
    dec bc                                        ; $5F60: $0B
    xor d                                         ; $5F61: $AA
    db $10                                        ; $5F62: $10

jr_032_5F63:
    ld c, $10                                     ; $5F63: $0E $10
    rrca                                          ; $5F65: $0F
    db $10                                        ; $5F66: $10
    ld [de], a                                    ; $5F67: $12
    db $10                                        ; $5F68: $10
    inc de                                        ; $5F69: $13
    xor d                                         ; $5F6A: $AA
    db $10                                        ; $5F6B: $10
    ld d, $10                                     ; $5F6C: $16 $10
    rla                                           ; $5F6E: $17
    db $10                                        ; $5F6F: $10
    add hl, de                                    ; $5F70: $19
    db $10                                        ; $5F71: $10
    ld a, [de]                                    ; $5F72: $1A
    xor d                                         ; $5F73: $AA
    db $10                                        ; $5F74: $10
    dec de                                        ; $5F75: $1B
    db $10                                        ; $5F76: $10
    inc e                                         ; $5F77: $1C
    db $10                                        ; $5F78: $10
    ld bc, $1D16                                  ; $5F79: $01 $16 $1D
    xor d                                         ; $5F7C: $AA
    db $10                                        ; $5F7D: $10
    ld e, $10                                     ; $5F7E: $1E $10
    rra                                           ; $5F80: $1F
    db $10                                        ; $5F81: $10
    jr nz, jr_032_5F94                            ; $5F82: $20 $10

    ld hl, $10AA                                  ; $5F84: $21 $AA $10
    ld [hl+], a                                   ; $5F87: $22
    db $10                                        ; $5F88: $10
    inc hl                                        ; $5F89: $23
    db $10                                        ; $5F8A: $10
    inc h                                         ; $5F8B: $24
    db $10                                        ; $5F8C: $10
    dec h                                         ; $5F8D: $25
    xor d                                         ; $5F8E: $AA
    db $10                                        ; $5F8F: $10
    ld h, $10                                     ; $5F90: $26 $10
    daa                                           ; $5F92: $27
    db $10                                        ; $5F93: $10

jr_032_5F94:
    jr z, @+$12                                   ; $5F94: $28 $10

    add hl, hl                                    ; $5F96: $29
    xor d                                         ; $5F97: $AA
    db $10                                        ; $5F98: $10
    ld a, [hl+]                                   ; $5F99: $2A
    db $10                                        ; $5F9A: $10
    dec hl                                        ; $5F9B: $2B
    db $10                                        ; $5F9C: $10
    inc l                                         ; $5F9D: $2C
    db $10                                        ; $5F9E: $10
    ld bc, $1FED                                  ; $5F9F: $01 $ED $1F
    rra                                           ; $5FA2: $1F
    inc d                                         ; $5FA3: $14
    dec l                                         ; $5FA4: $2D
    cp $13                                        ; $5FA5: $FE $13
    ld l, $10                                     ; $5FA7: $2E $10
    ld d, l                                       ; $5FA9: $55
    ld sp, $3210                                  ; $5FAA: $31 $10 $32
    ld [hl], d                                    ; $5FAD: $72
    dec [hl]                                      ; $5FAE: $35
    db $10                                        ; $5FAF: $10
    scf                                           ; $5FB0: $37
    db $F4                                        ; $5FB1: $F4
    push de                                       ; $5FB2: $D5
    rra                                           ; $5FB3: $1F
    dec d                                         ; $5FB4: $15
    cpl                                           ; $5FB5: $2F
    db $10                                        ; $5FB6: $10
    jr nc, jr_032_5FC9                            ; $5FB7: $30 $10

    inc sp                                        ; $5FB9: $33
    db $10                                        ; $5FBA: $10
    ld d, a                                       ; $5FBB: $57
    inc [hl]                                      ; $5FBC: $34
    sub d                                         ; $5FBD: $92
    ld [hl], $10                                  ; $5FBE: $36 $10
    jr c, jr_032_6014                             ; $5FC0: $38 $52

    rra                                           ; $5FC2: $1F
    rla                                           ; $5FC3: $17
    ld d, l                                       ; $5FC4: $55
    add hl, sp                                    ; $5FC5: $39
    db $10                                        ; $5FC6: $10
    ld a, [hl-]                                   ; $5FC7: $3A
    db $10                                        ; $5FC8: $10

jr_032_5FC9:
    dec a                                         ; $5FC9: $3D
    db $10                                        ; $5FCA: $10
    ld a, $10                                     ; $5FCB: $3E $10
    ld d, l                                       ; $5FCD: $55
    ld b, c                                       ; $5FCE: $41
    db $10                                        ; $5FCF: $10
    ld b, d                                       ; $5FD0: $42
    db $10                                        ; $5FD1: $10
    ld b, l                                       ; $5FD2: $45
    ldh a, [c]                                    ; $5FD3: $F2
    ld b, a                                       ; $5FD4: $47
    ld a, [de]                                    ; $5FD5: $1A
    push de                                       ; $5FD6: $D5
    pop de                                        ; $5FD7: $D1
    add hl, de                                    ; $5FD8: $19
    dec sp                                        ; $5FD9: $3B
    db $10                                        ; $5FDA: $10
    inc a                                         ; $5FDB: $3C
    db $10                                        ; $5FDC: $10
    ccf                                           ; $5FDD: $3F
    db $10                                        ; $5FDE: $10
    ld d, l                                       ; $5FDF: $55
    ld b, b                                       ; $5FE0: $40
    db $10                                        ; $5FE1: $10
    ld b, e                                       ; $5FE2: $43
    db $10                                        ; $5FE3: $10
    ld b, h                                       ; $5FE4: $44
    db $10                                        ; $5FE5: $10
    ld b, [hl]                                    ; $5FE6: $46
    db $10                                        ; $5FE7: $10
    ld d, l                                       ; $5FE8: $55
    ld b, a                                       ; $5FE9: $47
    inc e                                         ; $5FEA: $1C
    ld bc, $481C                                  ; $5FEB: $01 $1C $48
    ld [hl-], a                                   ; $5FEE: $32
    ld c, c                                       ; $5FEF: $49
    db $10                                        ; $5FF0: $10
    ld d, l                                       ; $5FF1: $55
    ld c, d                                       ; $5FF2: $4A
    db $10                                        ; $5FF3: $10
    ld c, e                                       ; $5FF4: $4B
    db $10                                        ; $5FF5: $10
    ld b, a                                       ; $5FF6: $47
    ld e, $01                                     ; $5FF7: $1E $01
    rra                                           ; $5FF9: $1F
    sub $1F                                       ; $5FFA: $D6 $1F
    ld d, $4C                                     ; $5FFC: $16 $4C
    db $10                                        ; $5FFE: $10
    ld c, l                                       ; $5FFF: $4D
    rra                                           ; $6000: $1F
    inc d                                         ; $6001: $14
    ld c, a                                       ; $6002: $4F
    xor l                                         ; $6003: $AD
    db $10                                        ; $6004: $10
    ld bc, $4E1C                                  ; $6005: $01 $1C $4E
    cp $17                                        ; $6008: $FE $17
    ld d, b                                       ; $600A: $50
    cp $6A                                        ; $600B: $FE $6A
    ld c, [hl]                                    ; $600D: $4E
    cp $17                                        ; $600E: $FE $17
    ld d, c                                       ; $6010: $51
    db $10                                        ; $6011: $10
    ld d, d                                       ; $6012: $52
    ld [hl], h                                    ; $6013: $74

jr_032_6014:
    ld d, h                                       ; $6014: $54
    cp d                                          ; $6015: $BA
    or $4E                                        ; $6016: $F6 $4E
    halt                                          ; $6018: $76
    rra                                           ; $6019: $1F
    ld de, $1053                                  ; $601A: $11 $53 $10
    ld d, d                                       ; $601D: $52
    xor l                                         ; $601E: $AD
    ld d, d                                       ; $601F: $52
    ld d, l                                       ; $6020: $55
    sub $4E                                       ; $6021: $D6 $4E
    halt                                          ; $6023: $76
    rra                                           ; $6024: $1F
    ld d, b                                       ; $6025: $50
    db $10                                        ; $6026: $10
    ld d, l                                       ; $6027: $55
    ld c, l                                       ; $6028: $4D
    db $10                                        ; $6029: $10
    ld d, [hl]                                    ; $602A: $56
    db $10                                        ; $602B: $10
    ld d, a                                       ; $602C: $57
    db $10                                        ; $602D: $10
    ld e, d                                       ; $602E: $5A
    or $6A                                        ; $602F: $F6 $6A
    ld c, [hl]                                    ; $6031: $4E
    halt                                          ; $6032: $76
    rra                                           ; $6033: $1F
    ld d, b                                       ; $6034: $50
    ld [hl-], a                                   ; $6035: $32
    ld e, b                                       ; $6036: $58
    db $10                                        ; $6037: $10
    ld e, c                                       ; $6038: $59
    xor l                                         ; $6039: $AD
    db $10                                        ; $603A: $10
    ld e, e                                       ; $603B: $5B
    or $4E                                        ; $603C: $F6 $4E
    halt                                          ; $603E: $76
    rra                                           ; $603F: $1F
    ld d, b                                       ; $6040: $50
    db $10                                        ; $6041: $10
    ld d, l                                       ; $6042: $55
    ld e, [hl]                                    ; $6043: $5E
    db $10                                        ; $6044: $10
    ld h, b                                       ; $6045: $60
    db $10                                        ; $6046: $10
    ld h, c                                       ; $6047: $61
    db $10                                        ; $6048: $10
    ld h, h                                       ; $6049: $64
    db $10                                        ; $604A: $10
    ld d, [hl]                                    ; $604B: $56
    ld h, l                                       ; $604C: $65
    db $F4                                        ; $604D: $F4
    ld e, h                                       ; $604E: $5C
    db $10                                        ; $604F: $10
    ld e, l                                       ; $6050: $5D
    rra                                           ; $6051: $1F
    inc d                                         ; $6052: $14
    ld e, a                                       ; $6053: $5F
    xor d                                         ; $6054: $AA
    db $10                                        ; $6055: $10
    ld bc, $6210                                  ; $6056: $01 $10 $62
    db $10                                        ; $6059: $10
    ld h, e                                       ; $605A: $63
    db $10                                        ; $605B: $10
    ld h, [hl]                                    ; $605C: $66
    or b                                          ; $605D: $B0
    db $10                                        ; $605E: $10
    ld h, a                                       ; $605F: $67
    sub d                                         ; $6060: $92
    db $10                                        ; $6061: $10
    xor a                                         ; $6062: $AF
    ld [$C369], a                                 ; $6063: $EA $69 $C3
    ld [$C36A], a                                 ; $6066: $EA $6A $C3
    ld [$C36B], a                                 ; $6069: $EA $6B $C3
    ld hl, $C36C                                  ; $606C: $21 $6C $C3
    ld bc, $0064                                  ; $606F: $01 $64 $00
    ld e, $00                                     ; $6072: $1E $00

jr_032_6074:
    ld [hl], e                                    ; $6074: $73
    inc hl                                        ; $6075: $23
    dec bc                                        ; $6076: $0B
    ld a, b                                       ; $6077: $78
    or c                                          ; $6078: $B1
    jr nz, jr_032_6074                            ; $6079: $20 $F9

    jp Jump_032_63D6                              ; $607B: $C3 $D6 $63


    ld a, [$C369]                                 ; $607E: $FA $69 $C3
    add a                                         ; $6081: $87
    ld hl, $608F                                  ; $6082: $21 $8F $60
    ld e, a                                       ; $6085: $5F
    ld d, $00                                     ; $6086: $16 $00
    add hl, de                                    ; $6088: $19
    ld e, [hl]                                    ; $6089: $5E
    inc hl                                        ; $608A: $23
    ld d, [hl]                                    ; $608B: $56
    ld l, e                                       ; $608C: $6B
    ld h, d                                       ; $608D: $62
    jp hl                                         ; $608E: $E9


    xor l                                         ; $608F: $AD
    ld h, b                                       ; $6090: $60
    push af                                       ; $6091: $F5
    ld h, b                                       ; $6092: $60
    dec c                                         ; $6093: $0D
    ld h, c                                       ; $6094: $61
    ld b, c                                       ; $6095: $41
    ld h, c                                       ; $6096: $61
    sbc b                                         ; $6097: $98
    ld h, c                                       ; $6098: $61
    reti                                          ; $6099: $D9


    ld h, c                                       ; $609A: $61
    ld hl, sp+$61                                 ; $609B: $F8 $61

Jump_032_609D:
    ld a, $00                                     ; $609D: $3E $00
    ld [$C399], a                                 ; $609F: $EA $99 $C3
    ld a, $00                                     ; $60A2: $3E $00
    ld [$C36A], a                                 ; $60A4: $EA $6A $C3
    ld a, $06                                     ; $60A7: $3E $06
    ld [$C369], a                                 ; $60A9: $EA $69 $C3
    ret                                           ; $60AC: $C9


    ld a, $13                                     ; $60AD: $3E $13
    ld [$C395], a                                 ; $60AF: $EA $95 $C3
    ld a, $01                                     ; $60B2: $3E $01
    ld [$C394], a                                 ; $60B4: $EA $94 $C3
    ld a, $1B                                     ; $60B7: $3E $1B
    ld [$C396], a                                 ; $60B9: $EA $96 $C3
    ld a, [$C007]                                 ; $60BC: $FA $07 $C0
    ld e, $01                                     ; $60BF: $1E $01
    or a                                          ; $60C1: $B7
    jr z, jr_032_60D8                             ; $60C2: $28 $14

    ld e, $21                                     ; $60C4: $1E $21
    cp $01                                        ; $60C6: $FE $01
    jr z, jr_032_60D8                             ; $60C8: $28 $0E

    ld e, $40                                     ; $60CA: $1E $40
    cp $02                                        ; $60CC: $FE $02
    jr z, jr_032_60D8                             ; $60CE: $28 $08

    ld e, $5F                                     ; $60D0: $1E $5F
    cp $03                                        ; $60D2: $FE $03
    jr z, jr_032_60D8                             ; $60D4: $28 $02

    ld e, $7F                                     ; $60D6: $1E $7F

jr_032_60D8:
    ld a, e                                       ; $60D8: $7B
    ld [$C393], a                                 ; $60D9: $EA $93 $C3
    ld hl, $C369                                  ; $60DC: $21 $69 $C3
    inc [hl]                                      ; $60DF: $34
    ld a, [$C36B]                                 ; $60E0: $FA $6B $C3
    add a                                         ; $60E3: $87
    jr nc, jr_032_60F4                            ; $60E4: $30 $0E

    add a                                         ; $60E6: $87
    jr c, jr_032_60F4                             ; $60E7: $38 $0B

    ld a, [$C36C]                                 ; $60E9: $FA $6C $C3
    or a                                          ; $60EC: $B7
    jr nz, jr_032_60F4                            ; $60ED: $20 $05

    ld a, $02                                     ; $60EF: $3E $02
    ld [$C36C], a                                 ; $60F1: $EA $6C $C3

jr_032_60F4:
    ret                                           ; $60F4: $C9


    ld a, [$C36B]                                 ; $60F5: $FA $6B $C3
    add a                                         ; $60F8: $87
    jr c, jr_032_610C                             ; $60F9: $38 $11

    rrca                                          ; $60FB: $0F
    or $80                                        ; $60FC: $F6 $80
    ld [$C36B], a                                 ; $60FE: $EA $6B $C3
    call Call_032_67DF                            ; $6101: $CD $DF $67
    ld hl, $C369                                  ; $6104: $21 $69 $C3
    inc [hl]                                      ; $6107: $34
    xor a                                         ; $6108: $AF
    ld [$C391], a                                 ; $6109: $EA $91 $C3

jr_032_610C:
    ret                                           ; $610C: $C9


    call Call_032_641E                            ; $610D: $CD $1E $64
    cp $F0                                        ; $6110: $FE $F0
    jr z, jr_032_612F                             ; $6112: $28 $1B

    cp $FF                                        ; $6114: $FE $FF
    jr z, jr_032_6130                             ; $6116: $28 $18

    ld a, [$C3B4]                                 ; $6118: $FA $B4 $C3
    cp $81                                        ; $611B: $FE $81
    jr nz, jr_032_6137                            ; $611D: $20 $18

    ld a, [$C369]                                 ; $611F: $FA $69 $C3
    inc a                                         ; $6122: $3C
    ld [$C36A], a                                 ; $6123: $EA $6A $C3
    xor a                                         ; $6126: $AF
    ld [$C392], a                                 ; $6127: $EA $92 $C3
    ld a, $06                                     ; $612A: $3E $06
    ld [$C369], a                                 ; $612C: $EA $69 $C3

jr_032_612F:
    ret                                           ; $612F: $C9


jr_032_6130:
    ld a, [$C36C]                                 ; $6130: $FA $6C $C3
    cp $02                                        ; $6133: $FE $02
    jr nz, jr_032_613C                            ; $6135: $20 $05

jr_032_6137:
    ld a, $80                                     ; $6137: $3E $80
    ld [$C36C], a                                 ; $6139: $EA $6C $C3

jr_032_613C:
    xor a                                         ; $613C: $AF
    ld [$C369], a                                 ; $613D: $EA $69 $C3
    ret                                           ; $6140: $C9


    ld a, [$C3B3]                                 ; $6141: $FA $B3 $C3
    cp $FF                                        ; $6144: $FE $FF
    jp z, Jump_032_609D                           ; $6146: $CA $9D $60

    ld a, [$C3C7]                                 ; $6149: $FA $C7 $C3
    and a                                         ; $614C: $A7
    jr z, jr_032_6165                             ; $614D: $28 $16

    ld a, [$C399]                                 ; $614F: $FA $99 $C3
    cp $03                                        ; $6152: $FE $03
    jr z, jr_032_6165                             ; $6154: $28 $0F

    cp $01                                        ; $6156: $FE $01
    jr z, jr_032_6165                             ; $6158: $28 $0B

    cp $06                                        ; $615A: $FE $06
    jr z, jr_032_6197                             ; $615C: $28 $39

    cp $07                                        ; $615E: $FE $07
    jr z, jr_032_6197                             ; $6160: $28 $35

    jp Jump_032_609D                              ; $6162: $C3 $9D $60


jr_032_6165:
    ld a, $01                                     ; $6165: $3E $01
    ld [$C3C9], a                                 ; $6167: $EA $C9 $C3
    ld hl, $C3CF                                  ; $616A: $21 $CF $C3
    ld a, $03                                     ; $616D: $3E $03
    call Call_032_64CC                            ; $616F: $CD $CC $64
    cp $FF                                        ; $6172: $FE $FF
    jp z, Jump_032_609D                           ; $6174: $CA $9D $60

    cp $F0                                        ; $6177: $FE $F0
    ret z                                         ; $6179: $C8

    ld a, [$C36B]                                 ; $617A: $FA $6B $C3
    inc a                                         ; $617D: $3C
    ld [$C36B], a                                 ; $617E: $EA $6B $C3
    and $0F                                       ; $6181: $E6 $0F
    cp $03                                        ; $6183: $FE $03
    jr nc, jr_032_618B                            ; $6185: $30 $04

    call Call_032_67DF                            ; $6187: $CD $DF $67
    ret                                           ; $618A: $C9


jr_032_618B:
    ld hl, $C369                                  ; $618B: $21 $69 $C3
    inc [hl]                                      ; $618E: $34
    ld a, [$C36B]                                 ; $618F: $FA $6B $C3
    or $40                                        ; $6192: $F6 $40
    ld [$C36B], a                                 ; $6194: $EA $6B $C3

jr_032_6197:
    ret                                           ; $6197: $C9


    ld a, [$C3B3]                                 ; $6198: $FA $B3 $C3
    cp $FF                                        ; $619B: $FE $FF
    jp z, Jump_032_609D                           ; $619D: $CA $9D $60

    ld a, [$C3C7]                                 ; $61A0: $FA $C7 $C3
    and a                                         ; $61A3: $A7
    jr z, jr_032_61B3                             ; $61A4: $28 $0D

    ld a, [$C399]                                 ; $61A6: $FA $99 $C3
    cp $02                                        ; $61A9: $FE $02
    jr z, jr_032_61B3                             ; $61AB: $28 $06

    cp $01                                        ; $61AD: $FE $01
    jr z, jr_032_61B3                             ; $61AF: $28 $02

    jr jr_032_61D8                                ; $61B1: $18 $25

jr_032_61B3:
    ld a, [$C3B3]                                 ; $61B3: $FA $B3 $C3
    bit 1, a                                      ; $61B6: $CB $4F
    jr nz, jr_032_61D8                            ; $61B8: $20 $1E

    call Call_032_6491                            ; $61BA: $CD $91 $64
    cp $FF                                        ; $61BD: $FE $FF
    jp z, Jump_032_609D                           ; $61BF: $CA $9D $60

    cp $F0                                        ; $61C2: $FE $F0
    ret z                                         ; $61C4: $C8

    ld a, $03                                     ; $61C5: $3E $03
    ld [$C3CC], a                                 ; $61C7: $EA $CC $C3
    xor a                                         ; $61CA: $AF
    ld [$C392], a                                 ; $61CB: $EA $92 $C3
    ld a, $06                                     ; $61CE: $3E $06
    ld [$C369], a                                 ; $61D0: $EA $69 $C3
    ld a, $05                                     ; $61D3: $3E $05
    ld [$C36A], a                                 ; $61D5: $EA $6A $C3

jr_032_61D8:
    ret                                           ; $61D8: $C9


    ld a, [$C3B3]                                 ; $61D9: $FA $B3 $C3
    cp $FF                                        ; $61DC: $FE $FF
    jp z, Jump_032_609D                           ; $61DE: $CA $9D $60

    bit 3, a                                      ; $61E1: $CB $5F
    jp nz, Jump_032_61F4                          ; $61E3: $C2 $F4 $61

    bit 1, a                                      ; $61E6: $CB $4F
    jp nz, Jump_032_61F4                          ; $61E8: $C2 $F4 $61

    xor a                                         ; $61EB: $AF
    ld [$C369], a                                 ; $61EC: $EA $69 $C3
    xor a                                         ; $61EF: $AF
    ld [$C399], a                                 ; $61F0: $EA $99 $C3
    ret                                           ; $61F3: $C9


Jump_032_61F4:
    call Call_032_662D                            ; $61F4: $CD $2D $66
    ret                                           ; $61F7: $C9


    ld hl, $C392                                  ; $61F8: $21 $92 $C3
    inc [hl]                                      ; $61FB: $34
    ld a, [hl]                                    ; $61FC: $7E
    cp $06                                        ; $61FD: $FE $06
    jr c, jr_032_6209                             ; $61FF: $38 $08

    xor a                                         ; $6201: $AF
    ld [hl], a                                    ; $6202: $77
    ld a, [$C36A]                                 ; $6203: $FA $6A $C3
    ld [$C369], a                                 ; $6206: $EA $69 $C3

jr_032_6209:
    ret                                           ; $6209: $C9


Call_032_620A:
    ld a, [$C3C8]                                 ; $620A: $FA $C8 $C3
    and a                                         ; $620D: $A7
    jp nz, Jump_032_6397                          ; $620E: $C2 $97 $63

    ld a, [$C399]                                 ; $6211: $FA $99 $C3
    cp $07                                        ; $6214: $FE $07
    jp z, Jump_032_6351                           ; $6216: $CA $51 $63

    ld a, [$C39B]                                 ; $6219: $FA $9B $C3
    and a                                         ; $621C: $A7
    jr nz, jr_032_6223                            ; $621D: $20 $04

Call_032_621F:
    call Call_032_6242                            ; $621F: $CD $42 $62
    ret                                           ; $6222: $C9


jr_032_6223:
    ld a, [$C39C]                                 ; $6223: $FA $9C $C3
    and a                                         ; $6226: $A7
    jr z, jr_032_623E                             ; $6227: $28 $15

    ld a, [$C39D]                                 ; $6229: $FA $9D $C3
    and a                                         ; $622C: $A7
    jr z, jr_032_623E                             ; $622D: $28 $0F

    ld a, [$C39E]                                 ; $622F: $FA $9E $C3
    cp $02                                        ; $6232: $FE $02
    jr z, jr_032_623A                             ; $6234: $28 $04

    call Call_032_6320                            ; $6236: $CD $20 $63
    ret                                           ; $6239: $C9


jr_032_623A:
    call Call_032_6337                            ; $623A: $CD $37 $63
    ret                                           ; $623D: $C9


jr_032_623E:
    call Call_032_6267                            ; $623E: $CD $67 $62
    ret                                           ; $6241: $C9


Call_032_6242:
    ld hl, $C3A5                                  ; $6242: $21 $A5 $C3
    ld c, [hl]                                    ; $6245: $4E
    inc [hl]                                      ; $6246: $34
    ld b, $00                                     ; $6247: $06 $00
    ld hl, $6682                                  ; $6249: $21 $82 $66
    add hl, bc                                    ; $624C: $09
    ld a, [hl]                                    ; $624D: $7E
    ldh [rSB], a                                  ; $624E: $E0 $01
    ld a, $01                                     ; $6250: $3E $01
    ldh [rSC], a                                  ; $6252: $E0 $02
    ld a, $81                                     ; $6254: $3E $81
    ldh [rSC], a                                  ; $6256: $E0 $02
    ld a, [$C3A5]                                 ; $6258: $FA $A5 $C3
    cp $02                                        ; $625B: $FE $02
    ret nz                                        ; $625D: $C0

    xor a                                         ; $625E: $AF
    ld [$C3A5], a                                 ; $625F: $EA $A5 $C3
    inc a                                         ; $6262: $3C
    ld [$C39B], a                                 ; $6263: $EA $9B $C3
    ret                                           ; $6266: $C9


Call_032_6267:
    ld a, [$C3A5]                                 ; $6267: $FA $A5 $C3
    ld c, a                                       ; $626A: $4F
    ld a, [$C3A6]                                 ; $626B: $FA $A6 $C3
    ld b, a                                       ; $626E: $47
    ld a, [$C3A7]                                 ; $626F: $FA $A7 $C3
    ld l, a                                       ; $6272: $6F
    ld a, [$C3A8]                                 ; $6273: $FA $A8 $C3
    ld h, a                                       ; $6276: $67
    add hl, bc                                    ; $6277: $09
    ldh a, [rSB]                                  ; $6278: $F0 $01
    ld [$C3B5], a                                 ; $627A: $EA $B5 $C3
    ld a, [hl]                                    ; $627D: $7E
    ldh [rSB], a                                  ; $627E: $E0 $01
    ld l, a                                       ; $6280: $6F
    ld a, [$C3AF]                                 ; $6281: $FA $AF $C3
    add l                                         ; $6284: $85
    ld [$C3AF], a                                 ; $6285: $EA $AF $C3
    ld a, [$C3B0]                                 ; $6288: $FA $B0 $C3
    adc $00                                       ; $628B: $CE $00
    ld [$C3B0], a                                 ; $628D: $EA $B0 $C3
    ld a, $01                                     ; $6290: $3E $01
    ldh [rSC], a                                  ; $6292: $E0 $02
    ld a, $81                                     ; $6294: $3E $81
    ldh [rSC], a                                  ; $6296: $E0 $02
    ld hl, $C3A5                                  ; $6298: $21 $A5 $C3
    inc [hl]                                      ; $629B: $34
    jr nz, jr_032_62A0                            ; $629C: $20 $02

    inc hl                                        ; $629E: $23
    inc [hl]                                      ; $629F: $34

jr_032_62A0:
    ld hl, $C3A5                                  ; $62A0: $21 $A5 $C3
    ld a, [$C39F]                                 ; $62A3: $FA $9F $C3
    cp [hl]                                       ; $62A6: $BE
    jr nz, jr_032_62B0                            ; $62A7: $20 $07

    inc hl                                        ; $62A9: $23
    ld a, [$C3A0]                                 ; $62AA: $FA $A0 $C3
    cp [hl]                                       ; $62AD: $BE
    jr z, jr_032_62B1                             ; $62AE: $28 $01

jr_032_62B0:
    ret                                           ; $62B0: $C9


jr_032_62B1:
    ld hl, $C39C                                  ; $62B1: $21 $9C $C3
    ld a, [hl]                                    ; $62B4: $7E
    and a                                         ; $62B5: $A7
    jr z, jr_032_62BB                             ; $62B6: $28 $03

    ld hl, $C39D                                  ; $62B8: $21 $9D $C3

jr_032_62BB:
    inc [hl]                                      ; $62BB: $34
    ld a, [$C3B8]                                 ; $62BC: $FA $B8 $C3
    and a                                         ; $62BF: $A7
    jr z, jr_032_62F4                             ; $62C0: $28 $32

    ld a, [$C399]                                 ; $62C2: $FA $99 $C3
    cp $06                                        ; $62C5: $FE $06
    jr z, jr_032_62F4                             ; $62C7: $28 $2B

    ld hl, $C39D                                  ; $62C9: $21 $9D $C3
    ld a, [hl]                                    ; $62CC: $7E
    and a                                         ; $62CD: $A7
    jr nz, jr_032_62F0                            ; $62CE: $20 $20

    xor a                                         ; $62D0: $AF
    ld [$C3A5], a                                 ; $62D1: $EA $A5 $C3
    ld [$C3A6], a                                 ; $62D4: $EA $A6 $C3
    ld a, [$C3AB]                                 ; $62D7: $FA $AB $C3
    ld [$C3A7], a                                 ; $62DA: $EA $A7 $C3
    ld a, [$C3AC]                                 ; $62DD: $FA $AC $C3
    ld [$C3A8], a                                 ; $62E0: $EA $A8 $C3
    ld a, [$C3A3]                                 ; $62E3: $FA $A3 $C3
    ld [$C39F], a                                 ; $62E6: $EA $9F $C3
    ld a, [$C3A4]                                 ; $62E9: $FA $A4 $C3
    ld [$C3A0], a                                 ; $62EC: $EA $A0 $C3
    ret                                           ; $62EF: $C9


jr_032_62F0:
    call Call_032_6307                            ; $62F0: $CD $07 $63
    ret                                           ; $62F3: $C9


jr_032_62F4:
    ld a, [$C3B5]                                 ; $62F4: $FA $B5 $C3
    ld [$C3B4], a                                 ; $62F7: $EA $B4 $C3

jr_032_62FA:
    ld a, $07                                     ; $62FA: $3E $07
    ld [$C399], a                                 ; $62FC: $EA $99 $C3
    ld a, $01                                     ; $62FF: $3E $01
    ld [$C3B1], a                                 ; $6301: $EA $B1 $C3
    call Call_032_63FB                            ; $6304: $CD $FB $63

Call_032_6307:
    ld a, [$C3A1]                                 ; $6307: $FA $A1 $C3
    ld [$C39F], a                                 ; $630A: $EA $9F $C3
    ld a, [$C3A2]                                 ; $630D: $FA $A2 $C3
    ld [$C3A0], a                                 ; $6310: $EA $A0 $C3
    ld a, [$C3A9]                                 ; $6313: $FA $A9 $C3
    ld [$C3A7], a                                 ; $6316: $EA $A7 $C3
    ld a, [$C3AA]                                 ; $6319: $FA $AA $C3
    ld [$C3A8], a                                 ; $631C: $EA $A8 $C3
    ret                                           ; $631F: $C9


Call_032_6320:
    ld c, a                                       ; $6320: $4F
    ld b, $00                                     ; $6321: $06 $00
    ld hl, $C3AF                                  ; $6323: $21 $AF $C3
    add hl, bc                                    ; $6326: $09
    ld a, [hl]                                    ; $6327: $7E
    ldh [rSB], a                                  ; $6328: $E0 $01
    ld a, $01                                     ; $632A: $3E $01
    ldh [rSC], a                                  ; $632C: $E0 $02
    ld a, $81                                     ; $632E: $3E $81
    ldh [rSC], a                                  ; $6330: $E0 $02
    ld hl, $C39E                                  ; $6332: $21 $9E $C3
    inc [hl]                                      ; $6335: $34
    ret                                           ; $6336: $C9


Call_032_6337:
    ldh a, [rSB]                                  ; $6337: $F0 $01
    ld [$C3B4], a                                 ; $6339: $EA $B4 $C3
    xor a                                         ; $633C: $AF
    ldh [rSB], a                                  ; $633D: $E0 $01
    ld a, $01                                     ; $633F: $3E $01
    ldh [rSC], a                                  ; $6341: $E0 $02
    ld a, $81                                     ; $6343: $3E $81
    ldh [rSC], a                                  ; $6345: $E0 $02
    ld hl, $C3B2                                  ; $6347: $21 $B2 $C3
    inc [hl]                                      ; $634A: $34
    ld a, [hl]                                    ; $634B: $7E
    cp $02                                        ; $634C: $FE $02
    jr z, jr_032_62FA                             ; $634E: $28 $AA

    ret                                           ; $6350: $C9


Jump_032_6351:
    ld a, [$C3B7]                                 ; $6351: $FA $B7 $C3
    ld [$C39A], a                                 ; $6354: $EA $9A $C3
    ld a, [$C3B3]                                 ; $6357: $FA $B3 $C3
    ld [$C36D], a                                 ; $635A: $EA $6D $C3
    ldh a, [rSB]                                  ; $635D: $F0 $01
    ld [$C3B3], a                                 ; $635F: $EA $B3 $C3
    cp $FF                                        ; $6362: $FE $FF
    jr nz, jr_032_6372                            ; $6364: $20 $0C

    ld a, $00                                     ; $6366: $3E $00
    ld [$C3C7], a                                 ; $6368: $EA $C7 $C3
    ld [$C399], a                                 ; $636B: $EA $99 $C3
    ld a, $02                                     ; $636E: $3E $02
    jr jr_032_638A                                ; $6370: $18 $18

jr_032_6372:
    bit 1, a                                      ; $6372: $CB $4F
    jr z, jr_032_637B                             ; $6374: $28 $05

    ld a, $01                                     ; $6376: $3E $01
    ld [$C3CE], a                                 ; $6378: $EA $CE $C3

jr_032_637B:
    bit 4, a                                      ; $637B: $CB $67
    ld a, $00                                     ; $637D: $3E $00
    ld [$C399], a                                 ; $637F: $EA $99 $C3
    ld a, $01                                     ; $6382: $3E $01
    jr nz, jr_032_6389                            ; $6384: $20 $03

    ld [$C399], a                                 ; $6386: $EA $99 $C3

jr_032_6389:
    inc a                                         ; $6389: $3C

jr_032_638A:
    ld [$C3B1], a                                 ; $638A: $EA $B1 $C3
    ld a, [$C3B8]                                 ; $638D: $FA $B8 $C3
    and a                                         ; $6390: $A7
    jr nz, jr_032_6397                            ; $6391: $20 $04

    xor a                                         ; $6393: $AF
    ld [$C3C7], a                                 ; $6394: $EA $C7 $C3

Jump_032_6397:
jr_032_6397:
    ret                                           ; $6397: $C9


    push af                                       ; $6398: $F5
    ldh a, [rSC]                                  ; $6399: $F0 $02
    bit 7, a                                      ; $639B: $CB $7F
    jr nz, jr_032_63AD                            ; $639D: $20 $0E

    push bc                                       ; $639F: $C5
    push de                                       ; $63A0: $D5
    push hl                                       ; $63A1: $E5
    ld a, $01                                     ; $63A2: $3E $01
    ld [$C3B6], a                                 ; $63A4: $EA $B6 $C3
    call Call_032_620A                            ; $63A7: $CD $0A $62
    pop hl                                        ; $63AA: $E1
    pop de                                        ; $63AB: $D1
    pop bc                                        ; $63AC: $C1

jr_032_63AD:
    pop af                                        ; $63AD: $F1
    ret                                           ; $63AE: $C9


    ld a, [$C399]                                 ; $63AF: $FA $99 $C3
    cp $01                                        ; $63B2: $FE $01
    ret nz                                        ; $63B4: $C0

    ld a, [$C3B3]                                 ; $63B5: $FA $B3 $C3
    cp $FF                                        ; $63B8: $FE $FF
    ret z                                         ; $63BA: $C8

    ld a, [$C3C7]                                 ; $63BB: $FA $C7 $C3
    and a                                         ; $63BE: $A7
    ret nz                                        ; $63BF: $C0

    ld hl, $C3CC                                  ; $63C0: $21 $CC $C3
    inc [hl]                                      ; $63C3: $34
    ld a, [hl]                                    ; $63C4: $7E
    cp $06                                        ; $63C5: $FE $06
    ret c                                         ; $63C7: $D8

    xor a                                         ; $63C8: $AF
    ld [hl], a                                    ; $63C9: $77
    ld [$C3CE], a                                 ; $63CA: $EA $CE $C3
    call Call_032_662D                            ; $63CD: $CD $2D $66
    ret                                           ; $63D0: $C9


    xor a                                         ; $63D1: $AF
    ldh [rSC], a                                  ; $63D2: $E0 $02
    ldh [rSB], a                                  ; $63D4: $E0 $01

Jump_032_63D6:
    xor a                                         ; $63D6: $AF
    ldh [rSB], a                                  ; $63D7: $E0 $01
    ldh [rSC], a                                  ; $63D9: $E0 $02
    ld [$C399], a                                 ; $63DB: $EA $99 $C3
    ld [$C3CD], a                                 ; $63DE: $EA $CD $C3
    dec a                                         ; $63E1: $3D
    ld [$C3B3], a                                 ; $63E2: $EA $B3 $C3
    ld [$C3B4], a                                 ; $63E5: $EA $B4 $C3
    ld a, $80                                     ; $63E8: $3E $80
    ld [$C393], a                                 ; $63EA: $EA $93 $C3
    call Call_032_63F1                            ; $63ED: $CD $F1 $63
    ret                                           ; $63F0: $C9


Call_032_63F1:
    xor a                                         ; $63F1: $AF
    ld [$C3B1], a                                 ; $63F2: $EA $B1 $C3
    ld [$C3B6], a                                 ; $63F5: $EA $B6 $C3
    ld [$C3C7], a                                 ; $63F8: $EA $C7 $C3

Call_032_63FB:
    xor a                                         ; $63FB: $AF
    ld [$C39B], a                                 ; $63FC: $EA $9B $C3
    ld [$C39C], a                                 ; $63FF: $EA $9C $C3
    ld [$C39D], a                                 ; $6402: $EA $9D $C3
    ld [$C39E], a                                 ; $6405: $EA $9E $C3
    ld [$C3B2], a                                 ; $6408: $EA $B2 $C3
    ld [$C3AF], a                                 ; $640B: $EA $AF $C3
    ld [$C3B0], a                                 ; $640E: $EA $B0 $C3
    ld [$C3A5], a                                 ; $6411: $EA $A5 $C3
    ld [$C3A6], a                                 ; $6414: $EA $A6 $C3
    ld [$C3C8], a                                 ; $6417: $EA $C8 $C3
    ld [$C3CE], a                                 ; $641A: $EA $CE $C3
    ret                                           ; $641D: $C9


Call_032_641E:
    ld a, [$C3C7]                                 ; $641E: $FA $C7 $C3
    and a                                         ; $6421: $A7
    jr z, jr_032_6428                             ; $6422: $28 $04

    call Call_032_6439                            ; $6424: $CD $39 $64
    ret nc                                        ; $6427: $D0

jr_032_6428:
    ld a, [$C39A]                                 ; $6428: $FA $9A $C3
    cp $01                                        ; $642B: $FE $01
    jr nz, jr_032_6433                            ; $642D: $20 $04

    call Call_032_6439                            ; $642F: $CD $39 $64
    ret nc                                        ; $6432: $D0

jr_032_6433:
    call Call_032_66A8                            ; $6433: $CD $A8 $66
    jp Jump_032_6768                              ; $6436: $C3 $68 $67


Call_032_6439:
    ld a, [$C3B1]                                 ; $6439: $FA $B1 $C3
    cp $02                                        ; $643C: $FE $02
    jr c, jr_032_6483                             ; $643E: $38 $43

    call Call_032_6487                            ; $6440: $CD $87 $64
    jr nz, jr_032_6483                            ; $6443: $20 $3E

    xor a                                         ; $6445: $AF
    ld [$C3CC], a                                 ; $6446: $EA $CC $C3
    ld [$C39A], a                                 ; $6449: $EA $9A $C3
    inc a                                         ; $644C: $3C
    ld [$C399], a                                 ; $644D: $EA $99 $C3
    ld a, [$C3B3]                                 ; $6450: $FA $B3 $C3
    cp $FF                                        ; $6453: $FE $FF
    jr z, jr_032_6479                             ; $6455: $28 $22

    bit 0, a                                      ; $6457: $CB $47
    jr nz, jr_032_6472                            ; $6459: $20 $17

    bit 1, a                                      ; $645B: $CB $4F
    jr nz, jr_032_6472                            ; $645D: $20 $13

    and $F0                                       ; $645F: $E6 $F0
    jr z, jr_032_6481                             ; $6461: $28 $1E

    xor a                                         ; $6463: $AF
    ld [$C399], a                                 ; $6464: $EA $99 $C3
    ld [$C39A], a                                 ; $6467: $EA $9A $C3
    ld a, [$C3B3]                                 ; $646A: $FA $B3 $C3
    call Call_032_67A4                            ; $646D: $CD $A4 $67
    jr jr_032_6481                                ; $6470: $18 $0F

jr_032_6472:
    scf                                           ; $6472: $37
    ret                                           ; $6473: $C9


    xor a                                         ; $6474: $AF
    ld [$C39A], a                                 ; $6475: $EA $9A $C3
    dec a                                         ; $6478: $3D

jr_032_6479:
    inc a                                         ; $6479: $3C
    ld [$C399], a                                 ; $647A: $EA $99 $C3
    dec a                                         ; $647D: $3D
    call Call_032_67A4                            ; $647E: $CD $A4 $67

jr_032_6481:
    and a                                         ; $6481: $A7
    ret                                           ; $6482: $C9


jr_032_6483:
    xor a                                         ; $6483: $AF
    ld a, $F0                                     ; $6484: $3E $F0
    ret                                           ; $6486: $C9


Call_032_6487:
    ld hl, $C3B1                                  ; $6487: $21 $B1 $C3
    ld a, [hl]                                    ; $648A: $7E
    cp $03                                        ; $648B: $FE $03
    ret z                                         ; $648D: $C8

    inc a                                         ; $648E: $3C
    ld [hl], a                                    ; $648F: $77
    ret                                           ; $6490: $C9


Call_032_6491:
    ld a, [$C399]                                 ; $6491: $FA $99 $C3
    cp $01                                        ; $6494: $FE $01
    jr z, jr_032_64A3                             ; $6496: $28 $0B

    cp $02                                        ; $6498: $FE $02
    jr z, jr_032_64A3                             ; $649A: $28 $07

    and a                                         ; $649C: $A7
    ld a, $FF                                     ; $649D: $3E $FF
    ret z                                         ; $649F: $C8

jr_032_64A0:
    ld a, $F0                                     ; $64A0: $3E $F0
    ret                                           ; $64A2: $C9


jr_032_64A3:
    ld a, [$C3CE]                                 ; $64A3: $FA $CE $C3
    and a                                         ; $64A6: $A7
    jr nz, jr_032_64A0                            ; $64A7: $20 $F7

    ld a, [$C3C7]                                 ; $64A9: $FA $C7 $C3
    and a                                         ; $64AC: $A7
    jr z, jr_032_64B3                             ; $64AD: $28 $04

    call Call_032_6439                            ; $64AF: $CD $39 $64
    ret nc                                        ; $64B2: $D0

jr_032_64B3:
    ld a, [$C39A]                                 ; $64B3: $FA $9A $C3
    cp $02                                        ; $64B6: $FE $02
    jr nz, jr_032_64BE                            ; $64B8: $20 $04

    call Call_032_6439                            ; $64BA: $CD $39 $64
    ret nc                                        ; $64BD: $D0

jr_032_64BE:
    ld a, [$C3B3]                                 ; $64BE: $FA $B3 $C3
    and $F0                                       ; $64C1: $E6 $F0
    jp nz, Jump_032_67A4                          ; $64C3: $C2 $A4 $67

    call Call_032_66B5                            ; $64C6: $CD $B5 $66
    jp Jump_032_6768                              ; $64C9: $C3 $68 $67


Call_032_64CC:
    ld c, a                                       ; $64CC: $4F
    ld a, [$C399]                                 ; $64CD: $FA $99 $C3
    and a                                         ; $64D0: $A7
    ld a, [$C3B3]                                 ; $64D1: $FA $B3 $C3
    jp z, Jump_032_67A4                           ; $64D4: $CA $A4 $67

    ld a, [$C399]                                 ; $64D7: $FA $99 $C3
    cp $01                                        ; $64DA: $FE $01
    jr z, jr_032_64E5                             ; $64DC: $28 $07

    cp $03                                        ; $64DE: $FE $03
    jr z, jr_032_64E5                             ; $64E0: $28 $03

    ld a, $F0                                     ; $64E2: $3E $F0
    ret                                           ; $64E4: $C9


jr_032_64E5:
    ld a, [$C3C7]                                 ; $64E5: $FA $C7 $C3
    and a                                         ; $64E8: $A7
    jr nz, jr_032_6536                            ; $64E9: $20 $4B

    ld a, c                                       ; $64EB: $79
    inc a                                         ; $64EC: $3C
    ld [$C3CA], a                                 ; $64ED: $EA $CA $C3
    ld a, l                                       ; $64F0: $7D
    ld [$C3AD], a                                 ; $64F1: $EA $AD $C3
    ld a, h                                       ; $64F4: $7C
    ld [$C3AE], a                                 ; $64F5: $EA $AE $C3
    ld a, [$C3B3]                                 ; $64F8: $FA $B3 $C3
    and $F0                                       ; $64FB: $E6 $F0
    jp nz, Jump_032_67A4                          ; $64FD: $C2 $A4 $67

    ld a, [$C397]                                 ; $6500: $FA $97 $C3
    ld [$C398], a                                 ; $6503: $EA $98 $C3
    and a                                         ; $6506: $A7
    jr z, jr_032_652D                             ; $6507: $28 $24

    ld a, [$C3CA]                                 ; $6509: $FA $CA $C3
    dec a                                         ; $650C: $3D
    dec a                                         ; $650D: $3D
    push af                                       ; $650E: $F5
    ld c, a                                       ; $650F: $4F
    ld b, $00                                     ; $6510: $06 $00
    push hl                                       ; $6512: $E5
    ld hl, $C388                                  ; $6513: $21 $88 $C3
    add hl, bc                                    ; $6516: $09
    ld a, [hl]                                    ; $6517: $7E
    pop hl                                        ; $6518: $E1
    ld [$C398], a                                 ; $6519: $EA $98 $C3
    pop af                                        ; $651C: $F1
    add a                                         ; $651D: $87
    ld c, a                                       ; $651E: $4F
    ld b, $00                                     ; $651F: $06 $00
    push hl                                       ; $6521: $E5
    ld hl, $C376                                  ; $6522: $21 $76 $C3
    add hl, bc                                    ; $6525: $09
    ld a, [hl+]                                   ; $6526: $2A
    ld b, [hl]                                    ; $6527: $46
    pop hl                                        ; $6528: $E1
    ld c, a                                       ; $6529: $4F
    jp Jump_032_6530                              ; $652A: $C3 $30 $65


jr_032_652D:
    ld bc, $0280                                  ; $652D: $01 $80 $02

Jump_032_6530:
    call Call_032_670C                            ; $6530: $CD $0C $67
    jp Jump_032_6768                              ; $6533: $C3 $68 $67


jr_032_6536:
    ld a, [$C3B1]                                 ; $6536: $FA $B1 $C3
    cp $02                                        ; $6539: $FE $02
    ld a, $F0                                     ; $653B: $3E $F0
    jp c, Jump_032_65DD                           ; $653D: $DA $DD $65

    call Call_032_6487                            ; $6540: $CD $87 $64
    ld a, $F0                                     ; $6543: $3E $F0
    jp nz, Jump_032_65DD                          ; $6545: $C2 $DD $65

    ld hl, $C3CA                                  ; $6548: $21 $CA $C3
    ld a, [$C3B3]                                 ; $654B: $FA $B3 $C3
    ld c, a                                       ; $654E: $4F
    and $F0                                       ; $654F: $E6 $F0
    ld a, c                                       ; $6551: $79
    jp nz, Jump_032_65CA                          ; $6552: $C2 $CA $65

    bit 1, a                                      ; $6555: $CB $4F
    jp nz, Jump_032_6572                          ; $6557: $C2 $72 $65

    bit 0, a                                      ; $655A: $CB $47
    jp nz, Jump_032_6572                          ; $655C: $C2 $72 $65

    ld a, [hl]                                    ; $655F: $7E
    and a                                         ; $6560: $A7
    ld a, [$C3B3]                                 ; $6561: $FA $B3 $C3
    jr z, jr_032_65D4                             ; $6564: $28 $6E

    ld a, [hl]                                    ; $6566: $7E
    cp $01                                        ; $6567: $FE $01
    jp z, Jump_032_65DE                           ; $6569: $CA $DE $65

    dec [hl]                                      ; $656C: $35
    ld a, [$C3B3]                                 ; $656D: $FA $B3 $C3
    jr z, jr_032_65D4                             ; $6570: $28 $62

Jump_032_6572:
    ld a, [hl]                                    ; $6572: $7E
    cp $01                                        ; $6573: $FE $01
    ld a, $F0                                     ; $6575: $3E $F0
    jp z, Jump_032_65DD                           ; $6577: $CA $DD $65

    ld bc, $0280                                  ; $657A: $01 $80 $02
    ld a, [$C397]                                 ; $657D: $FA $97 $C3
    ld [$C398], a                                 ; $6580: $EA $98 $C3
    and a                                         ; $6583: $A7
    jr z, jr_032_65A7                             ; $6584: $28 $21

    ld a, [$C3CA]                                 ; $6586: $FA $CA $C3
    dec a                                         ; $6589: $3D
    dec a                                         ; $658A: $3D
    push af                                       ; $658B: $F5
    ld c, a                                       ; $658C: $4F
    ld b, $00                                     ; $658D: $06 $00
    push hl                                       ; $658F: $E5
    ld hl, $C388                                  ; $6590: $21 $88 $C3
    add hl, bc                                    ; $6593: $09
    ld a, [hl]                                    ; $6594: $7E
    pop hl                                        ; $6595: $E1
    ld [$C398], a                                 ; $6596: $EA $98 $C3
    pop af                                        ; $6599: $F1
    add a                                         ; $659A: $87
    ld c, a                                       ; $659B: $4F
    ld b, $00                                     ; $659C: $06 $00
    push hl                                       ; $659E: $E5
    ld hl, $C376                                  ; $659F: $21 $76 $C3
    add hl, bc                                    ; $65A2: $09
    ld a, [hl+]                                   ; $65A3: $2A
    ld b, [hl]                                    ; $65A4: $46
    pop hl                                        ; $65A5: $E1
    ld c, a                                       ; $65A6: $4F

jr_032_65A7:
    ld a, [$C3B3]                                 ; $65A7: $FA $B3 $C3
    bit 1, a                                      ; $65AA: $CB $4F
    jp nz, Jump_032_65BF                          ; $65AC: $C2 $BF $65

    ld a, [$C3AB]                                 ; $65AF: $FA $AB $C3
    add $80                                       ; $65B2: $C6 $80
    ld [$C3AB], a                                 ; $65B4: $EA $AB $C3
    ld a, [$C3AC]                                 ; $65B7: $FA $AC $C3
    adc $02                                       ; $65BA: $CE $02
    ld [$C3AC], a                                 ; $65BC: $EA $AC $C3

Jump_032_65BF:
    ld a, [$C3AB]                                 ; $65BF: $FA $AB $C3
    ld l, a                                       ; $65C2: $6F
    ld a, [$C3AC]                                 ; $65C3: $FA $AC $C3
    ld h, a                                       ; $65C6: $67
    jp Jump_032_6530                              ; $65C7: $C3 $30 $65


Jump_032_65CA:
    push af                                       ; $65CA: $F5
    ld a, $01                                     ; $65CB: $3E $01
    ld [$C3C8], a                                 ; $65CD: $EA $C8 $C3
    pop af                                        ; $65D0: $F1
    call Call_032_67A4                            ; $65D1: $CD $A4 $67

Jump_032_65D4:
jr_032_65D4:
    push af                                       ; $65D4: $F5
    xor a                                         ; $65D5: $AF
    ld [$C3B8], a                                 ; $65D6: $EA $B8 $C3
    ld [$C3C7], a                                 ; $65D9: $EA $C7 $C3
    pop af                                        ; $65DC: $F1

Jump_032_65DD:
    ret                                           ; $65DD: $C9


Jump_032_65DE:
    ld a, [$C3C9]                                 ; $65DE: $FA $C9 $C3
    and a                                         ; $65E1: $A7
    ld a, [$C3B3]                                 ; $65E2: $FA $B3 $C3
    jr z, jr_032_65D4                             ; $65E5: $28 $ED

    dec [hl]                                      ; $65E7: $35
    ld a, [$C36B]                                 ; $65E8: $FA $6B $C3
    and $0F                                       ; $65EB: $E6 $0F
    cp $02                                        ; $65ED: $FE $02
    jp c, Jump_032_65D4                           ; $65EF: $DA $D4 $65

    call Call_032_675A                            ; $65F2: $CD $5A $67
    jp Jump_032_6768                              ; $65F5: $C3 $68 $67


    ld a, [$C399]                                 ; $65F8: $FA $99 $C3
    cp $01                                        ; $65FB: $FE $01
    jr z, jr_032_660A                             ; $65FD: $28 $0B

    cp $03                                        ; $65FF: $FE $03
    jr z, jr_032_660A                             ; $6601: $28 $07

    and a                                         ; $6603: $A7
    ld a, $FF                                     ; $6604: $3E $FF
    ret z                                         ; $6606: $C8

    ld a, $F0                                     ; $6607: $3E $F0
    ret                                           ; $6609: $C9


jr_032_660A:
    ld a, [$C3C7]                                 ; $660A: $FA $C7 $C3
    and a                                         ; $660D: $A7
    jr z, jr_032_6614                             ; $660E: $28 $04

    call Call_032_6439                            ; $6610: $CD $39 $64
    ret nc                                        ; $6613: $D0

jr_032_6614:
    ld a, [$C39A]                                 ; $6614: $FA $9A $C3
    cp $04                                        ; $6617: $FE $04
    jr nz, jr_032_661F                            ; $6619: $20 $04

    call Call_032_6439                            ; $661B: $CD $39 $64
    ret nc                                        ; $661E: $D0

jr_032_661F:
    ld a, [$C3B3]                                 ; $661F: $FA $B3 $C3
    and $F0                                       ; $6622: $E6 $F0
    jp nz, Jump_032_67A4                          ; $6624: $C2 $A4 $67

    call Call_032_6740                            ; $6627: $CD $40 $67
    jp Jump_032_6768                              ; $662A: $C3 $68 $67


Call_032_662D:
    ld a, [$C399]                                 ; $662D: $FA $99 $C3
    cp $01                                        ; $6630: $FE $01
    jr z, jr_032_663F                             ; $6632: $28 $0B

    cp $03                                        ; $6634: $FE $03
    jr z, jr_032_663F                             ; $6636: $28 $07

    and a                                         ; $6638: $A7
    ld a, $FF                                     ; $6639: $3E $FF
    ret z                                         ; $663B: $C8

    ld a, $F0                                     ; $663C: $3E $F0
    ret                                           ; $663E: $C9


jr_032_663F:
    ld a, [$C3C7]                                 ; $663F: $FA $C7 $C3
    and a                                         ; $6642: $A7
    jr z, jr_032_6649                             ; $6643: $28 $04

    call Call_032_6439                            ; $6645: $CD $39 $64
    ret nc                                        ; $6648: $D0

jr_032_6649:
    ld a, [$C3B3]                                 ; $6649: $FA $B3 $C3
    and $F0                                       ; $664C: $E6 $F0
    jp nz, Jump_032_67A4                          ; $664E: $C2 $A4 $67

    call Call_032_674D                            ; $6651: $CD $4D $67
    jp Jump_032_6768                              ; $6654: $C3 $68 $67


Call_032_6657:
Jump_032_6657:
    ld [$C3B7], a                                 ; $6657: $EA $B7 $C3
    ld a, d                                       ; $665A: $7A
    ld [$C3B8], a                                 ; $665B: $EA $B8 $C3
    ld a, l                                       ; $665E: $7D
    ld [$C3A7], a                                 ; $665F: $EA $A7 $C3
    ld [$C3A9], a                                 ; $6662: $EA $A9 $C3
    ld a, h                                       ; $6665: $7C
    ld [$C3A8], a                                 ; $6666: $EA $A8 $C3
    ld [$C3AA], a                                 ; $6669: $EA $AA $C3
    ld a, c                                       ; $666C: $79
    ld [$C39F], a                                 ; $666D: $EA $9F $C3
    ld [$C3A1], a                                 ; $6670: $EA $A1 $C3
    ld a, b                                       ; $6673: $78
    ld [$C3A0], a                                 ; $6674: $EA $A0 $C3
    ld [$C3A2], a                                 ; $6677: $EA $A2 $C3
    xor a                                         ; $667A: $AF
    ld [$C3B1], a                                 ; $667B: $EA $B1 $C3
    call Call_032_63FB                            ; $667E: $CD $FB $63
    ret                                           ; $6681: $C9


    adc b                                         ; $6682: $88
    inc sp                                        ; $6683: $33
    ld bc, $0000                                  ; $6684: $01 $00 $00
    nop                                           ; $6687: $00
    ld bc, $0000                                  ; $6688: $01 $00 $00
    nop                                           ; $668B: $00
    ld [bc], a                                    ; $668C: $02
    nop                                           ; $668D: $00
    inc b                                         ; $668E: $04
    nop                                           ; $668F: $00
    inc b                                         ; $6690: $04
    nop                                           ; $6691: $00
    nop                                           ; $6692: $00
    nop                                           ; $6693: $00
    inc b                                         ; $6694: $04
    nop                                           ; $6695: $00
    nop                                           ; $6696: $00
    nop                                           ; $6697: $00
    ld [$0000], sp                                ; $6698: $08 $00 $00
    nop                                           ; $669B: $00
    ld [$0000], sp                                ; $669C: $08 $00 $00
    nop                                           ; $669F: $00
    rrca                                          ; $66A0: $0F
    nop                                           ; $66A1: $00
    nop                                           ; $66A2: $00
    nop                                           ; $66A3: $00
    rrca                                          ; $66A4: $0F
    nop                                           ; $66A5: $00
    nop                                           ; $66A6: $00
    nop                                           ; $66A7: $00

Call_032_66A8:
    ld a, $01                                     ; $66A8: $3E $01
    ld d, $00                                     ; $66AA: $16 $00
    ld hl, $6684                                  ; $66AC: $21 $84 $66
    ld bc, $0008                                  ; $66AF: $01 $08 $00
    jp Jump_032_6657                              ; $66B2: $C3 $57 $66


Call_032_66B5:
    ld a, $02                                     ; $66B5: $3E $02
    ld d, $00                                     ; $66B7: $16 $00
    ld hl, $C3B9                                  ; $66B9: $21 $B9 $C3
    ld bc, $000C                                  ; $66BC: $01 $0C $00
    call Call_032_6657                            ; $66BF: $CD $57 $66
    ld hl, $668C                                  ; $66C2: $21 $8C $66
    ld de, $C3B9                                  ; $66C5: $11 $B9 $C3
    ld bc, $0004                                  ; $66C8: $01 $04 $00
    call Call_032_67D6                            ; $66CB: $CD $D6 $67
    ld de, $0006                                  ; $66CE: $11 $06 $00
    ld a, [$C394]                                 ; $66D1: $FA $94 $C3
    ld [$C3BD], a                                 ; $66D4: $EA $BD $C3
    call Call_032_6705                            ; $66D7: $CD $05 $67
    ld a, [$C395]                                 ; $66DA: $FA $95 $C3
    ld [$C3BE], a                                 ; $66DD: $EA $BE $C3
    call Call_032_6705                            ; $66E0: $CD $05 $67
    ld a, [$C396]                                 ; $66E3: $FA $96 $C3
    ld [$C3BF], a                                 ; $66E6: $EA $BF $C3
    call Call_032_6705                            ; $66E9: $CD $05 $67
    ld a, [$C393]                                 ; $66EC: $FA $93 $C3
    ld [$C3C0], a                                 ; $66EF: $EA $C0 $C3
    call Call_032_6705                            ; $66F2: $CD $05 $67
    ld a, e                                       ; $66F5: $7B
    ld [$C3C1], a                                 ; $66F6: $EA $C1 $C3
    ld a, d                                       ; $66F9: $7A
    ld [$C3C2], a                                 ; $66FA: $EA $C2 $C3
    xor a                                         ; $66FD: $AF
    ld [$C3C3], a                                 ; $66FE: $EA $C3 $C3
    ld [$C3C4], a                                 ; $6701: $EA $C4 $C3
    ret                                           ; $6704: $C9


Call_032_6705:
    add e                                         ; $6705: $83
    ld e, a                                       ; $6706: $5F
    ld a, d                                       ; $6707: $7A
    adc $00                                       ; $6708: $CE $00
    ld d, a                                       ; $670A: $57
    ret                                           ; $670B: $C9


Call_032_670C:
    ld a, l                                       ; $670C: $7D
    ld [$C3AB], a                                 ; $670D: $EA $AB $C3
    ld a, h                                       ; $6710: $7C
    ld [$C3AC], a                                 ; $6711: $EA $AC $C3
    ld a, c                                       ; $6714: $79
    ld [$C3A3], a                                 ; $6715: $EA $A3 $C3
    ld a, b                                       ; $6718: $78
    ld [$C3A4], a                                 ; $6719: $EA $A4 $C3
    push bc                                       ; $671C: $C5
    ld a, $03                                     ; $671D: $3E $03
    ld d, $01                                     ; $671F: $16 $01
    ld hl, $C3B9                                  ; $6721: $21 $B9 $C3
    ld bc, $0004                                  ; $6724: $01 $04 $00
    call Call_032_6657                            ; $6727: $CD $57 $66
    ld a, [$6690]                                 ; $672A: $FA $90 $66
    ld [$C3B9], a                                 ; $672D: $EA $B9 $C3
    ld a, [$C398]                                 ; $6730: $FA $98 $C3
    ld [$C3BA], a                                 ; $6733: $EA $BA $C3
    pop bc                                        ; $6736: $C1
    ld a, c                                       ; $6737: $79
    ld [$C3BB], a                                 ; $6738: $EA $BB $C3
    ld a, b                                       ; $673B: $78
    ld [$C3BC], a                                 ; $673C: $EA $BC $C3
    ret                                           ; $673F: $C9


Call_032_6740:
    ld a, $04                                     ; $6740: $3E $04
    ld d, $00                                     ; $6742: $16 $00
    ld hl, $6698                                  ; $6744: $21 $98 $66
    ld bc, $0008                                  ; $6747: $01 $08 $00
    jp Jump_032_6657                              ; $674A: $C3 $57 $66


Call_032_674D:
    ld a, $05                                     ; $674D: $3E $05
    ld d, $00                                     ; $674F: $16 $00
    ld hl, $66A0                                  ; $6751: $21 $A0 $66
    ld bc, $0008                                  ; $6754: $01 $08 $00
    jp Jump_032_6657                              ; $6757: $C3 $57 $66


Call_032_675A:
    ld a, $06                                     ; $675A: $3E $06
    ld d, $01                                     ; $675C: $16 $01
    ld hl, $6690                                  ; $675E: $21 $90 $66
    ld bc, $0008                                  ; $6761: $01 $08 $00
    jp Jump_032_6657                              ; $6764: $C3 $57 $66


    ret                                           ; $6767: $C9


Jump_032_6768:
    ld a, [$C399]                                 ; $6768: $FA $99 $C3
    cp $01                                        ; $676B: $FE $01
    jr z, jr_032_677B                             ; $676D: $28 $0C

    and a                                         ; $676F: $A7
    jr nz, jr_032_6779                            ; $6770: $20 $07

    ld a, [$C3B7]                                 ; $6772: $FA $B7 $C3
    cp $01                                        ; $6775: $FE $01
    jr z, jr_032_6785                             ; $6777: $28 $0C

jr_032_6779:
    scf                                           ; $6779: $37
    ret                                           ; $677A: $C9


jr_032_677B:
    ld a, [$C3B7]                                 ; $677B: $FA $B7 $C3
    cp $01                                        ; $677E: $FE $01
    jr z, jr_032_6779                             ; $6780: $28 $F7

    ld [$C399], a                                 ; $6782: $EA $99 $C3

jr_032_6785:
    xor a                                         ; $6785: $AF
    ld [$C3B1], a                                 ; $6786: $EA $B1 $C3
    ld [$C39A], a                                 ; $6789: $EA $9A $C3
    ld a, $01                                     ; $678C: $3E $01
    ld [$C3A5], a                                 ; $678E: $EA $A5 $C3
    ld [$C3C7], a                                 ; $6791: $EA $C7 $C3
    ld a, [$6682]                                 ; $6794: $FA $82 $66
    ldh [rSB], a                                  ; $6797: $E0 $01
    ld a, $01                                     ; $6799: $3E $01
    ldh [rSC], a                                  ; $679B: $E0 $02
    ld a, $81                                     ; $679D: $3E $81
    ldh [rSC], a                                  ; $679F: $E0 $02
    ld a, $F0                                     ; $67A1: $3E $F0
    ret                                           ; $67A3: $C9


Call_032_67A4:
Jump_032_67A4:
    push af                                       ; $67A4: $F5
    ld a, [$C3B3]                                 ; $67A5: $FA $B3 $C3
    cp $FF                                        ; $67A8: $FE $FF
    jr z, jr_032_67C4                             ; $67AA: $28 $18

    bit 7, a                                      ; $67AC: $CB $7F
    jr z, jr_032_67B4                             ; $67AE: $28 $04

    ld a, $01                                     ; $67B0: $3E $01
    jr jr_032_67D1                                ; $67B2: $18 $1D

jr_032_67B4:
    bit 6, a                                      ; $67B4: $CB $77
    jr z, jr_032_67BC                             ; $67B6: $28 $04

    ld a, $04                                     ; $67B8: $3E $04
    jr jr_032_67D1                                ; $67BA: $18 $15

jr_032_67BC:
    bit 5, a                                      ; $67BC: $CB $6F
    jr z, jr_032_67C4                             ; $67BE: $28 $04

    ld a, $03                                     ; $67C0: $3E $03
    jr jr_032_67D1                                ; $67C2: $18 $0D

jr_032_67C4:
    ld a, [$C3B4]                                 ; $67C4: $FA $B4 $C3
    cp $81                                        ; $67C7: $FE $81
    jr z, jr_032_67CF                             ; $67C9: $28 $04

    ld a, $02                                     ; $67CB: $3E $02
    jr jr_032_67D1                                ; $67CD: $18 $02

jr_032_67CF:
    ld a, $01                                     ; $67CF: $3E $01

jr_032_67D1:
    ld [$C36C], a                                 ; $67D1: $EA $6C $C3
    pop af                                        ; $67D4: $F1
    ret                                           ; $67D5: $C9


Call_032_67D6:
jr_032_67D6:
    ld a, [hl+]                                   ; $67D6: $2A
    ld [de], a                                    ; $67D7: $12
    inc de                                        ; $67D8: $13
    dec bc                                        ; $67D9: $0B
    ld a, c                                       ; $67DA: $79
    or b                                          ; $67DB: $B0
    jr nz, jr_032_67D6                            ; $67DC: $20 $F8

    ret                                           ; $67DE: $C9


Call_032_67DF:
    di                                            ; $67DF: $F3
    rst RST_10                                    ; $67E0: $D7
    ld a, [$C36B]                                 ; $67E1: $FA $6B $C3
    and $0F                                       ; $67E4: $E6 $0F
    swap a                                        ; $67E6: $CB $37
    add a                                         ; $67E8: $87
    add a                                         ; $67E9: $87
    ld e, a                                       ; $67EA: $5F
    ld d, $00                                     ; $67EB: $16 $00
    ld hl, $9800                                  ; $67ED: $21 $00 $98
    add hl, de                                    ; $67F0: $19
    add hl, de                                    ; $67F1: $19
    add hl, de                                    ; $67F2: $19
    ld de, $C3CF                                  ; $67F3: $11 $CF $C3
    ld c, $06                                     ; $67F6: $0E $06

jr_032_67F8:
    ld b, $14                                     ; $67F8: $06 $14

jr_032_67FA:
    push hl                                       ; $67FA: $E5
    push de                                       ; $67FB: $D5
    ld a, [hl]                                    ; $67FC: $7E
    xor $80                                       ; $67FD: $EE $80
    ld e, a                                       ; $67FF: $5F
    ld d, $00                                     ; $6800: $16 $00
    sla e                                         ; $6802: $CB $23
    rl d                                          ; $6804: $CB $12
    sla e                                         ; $6806: $CB $23
    rl d                                          ; $6808: $CB $12
    sla e                                         ; $680A: $CB $23
    rl d                                          ; $680C: $CB $12
    sla e                                         ; $680E: $CB $23
    rl d                                          ; $6810: $CB $12
    ld hl, $8800                                  ; $6812: $21 $00 $88
    add hl, de                                    ; $6815: $19
    pop de                                        ; $6816: $D1
    ld a, [hl+]                                   ; $6817: $2A
    ld [de], a                                    ; $6818: $12
    inc de                                        ; $6819: $13
    ld a, [hl+]                                   ; $681A: $2A
    ld [de], a                                    ; $681B: $12
    inc de                                        ; $681C: $13
    ld a, [hl+]                                   ; $681D: $2A
    ld [de], a                                    ; $681E: $12
    inc de                                        ; $681F: $13
    ld a, [hl+]                                   ; $6820: $2A
    ld [de], a                                    ; $6821: $12
    inc de                                        ; $6822: $13
    ld a, [hl+]                                   ; $6823: $2A
    ld [de], a                                    ; $6824: $12
    inc de                                        ; $6825: $13
    ld a, [hl+]                                   ; $6826: $2A
    ld [de], a                                    ; $6827: $12
    inc de                                        ; $6828: $13
    ld a, [hl+]                                   ; $6829: $2A
    ld [de], a                                    ; $682A: $12
    inc de                                        ; $682B: $13
    ld a, [hl+]                                   ; $682C: $2A
    ld [de], a                                    ; $682D: $12
    inc de                                        ; $682E: $13
    ld a, [hl+]                                   ; $682F: $2A
    ld [de], a                                    ; $6830: $12
    inc de                                        ; $6831: $13
    ld a, [hl+]                                   ; $6832: $2A
    ld [de], a                                    ; $6833: $12
    inc de                                        ; $6834: $13
    ld a, [hl+]                                   ; $6835: $2A
    ld [de], a                                    ; $6836: $12
    inc de                                        ; $6837: $13
    ld a, [hl+]                                   ; $6838: $2A
    ld [de], a                                    ; $6839: $12
    inc de                                        ; $683A: $13
    ld a, [hl+]                                   ; $683B: $2A
    ld [de], a                                    ; $683C: $12
    inc de                                        ; $683D: $13
    ld a, [hl+]                                   ; $683E: $2A
    ld [de], a                                    ; $683F: $12
    inc de                                        ; $6840: $13
    ld a, [hl+]                                   ; $6841: $2A
    ld [de], a                                    ; $6842: $12
    inc de                                        ; $6843: $13
    ld a, [hl+]                                   ; $6844: $2A
    ld [de], a                                    ; $6845: $12
    inc de                                        ; $6846: $13
    pop hl                                        ; $6847: $E1
    inc hl                                        ; $6848: $23
    dec b                                         ; $6849: $05
    jr nz, jr_032_67FA                            ; $684A: $20 $AE

    push de                                       ; $684C: $D5
    ld de, $000C                                  ; $684D: $11 $0C $00
    add hl, de                                    ; $6850: $19
    pop de                                        ; $6851: $D1
    dec c                                         ; $6852: $0D
    jr nz, jr_032_67F8                            ; $6853: $20 $A3

    ld a, $E7                                     ; $6855: $3E $E7
    rst RST_18                                    ; $6857: $DF
    xor a                                         ; $6858: $AF
    ldh [rSTAT], a                                ; $6859: $E0 $41
    ei                                            ; $685B: $FB
    ret                                           ; $685C: $C9


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

Jump_032_6900:
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

Jump_032_7A04:
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
