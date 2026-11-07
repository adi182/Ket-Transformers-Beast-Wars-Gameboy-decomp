; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $019", ROMX[$4000], BANK[$19]

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
    ld a, a                                       ; $4016: $7F
    nop                                           ; $4017: $00
    ld a, [$FA07]                                 ; $4018: $FA $07 $FA
    rlca                                          ; $401B: $07
    rst RST_38                                    ; $401C: $FF
    rlca                                          ; $401D: $07
    ld a, a                                       ; $401E: $7F
    nop                                           ; $401F: $00
    inc a                                         ; $4020: $3C
    nop                                           ; $4021: $00
    ld a, [hl-]                                   ; $4022: $3A
    inc e                                         ; $4023: $1C
    db $FD                                        ; $4024: $FD
    ld b, $0D                                     ; $4025: $06 $0D
    or $0D                                        ; $4027: $F6 $0D
    or $FD                                        ; $4029: $F6 $FD
    or $FF                                        ; $402B: $F6 $FF
    nop                                           ; $402D: $00
    ld e, $0D                                     ; $402E: $1E $0D
    rst RST_38                                    ; $4030: $FF
    nop                                           ; $4031: $00
    rst RST_38                                    ; $4032: $FF
    rst RST_18                                    ; $4033: $DF
    rst RST_38                                    ; $4034: $FF
    cp a                                          ; $4035: $BF
    rst RST_38                                    ; $4036: $FF
    add b                                         ; $4037: $80
    rst RST_38                                    ; $4038: $FF
    rra                                           ; $4039: $1F
    ccf                                           ; $403A: $3F
    rst RST_18                                    ; $403B: $DF
    rst RST_38                                    ; $403C: $FF
    rra                                           ; $403D: $1F
    sbc a                                         ; $403E: $9F
    ld l, a                                       ; $403F: $6F
    ld a, a                                       ; $4040: $7F
    nop                                           ; $4041: $00
    ld c, b                                       ; $4042: $48
    scf                                           ; $4043: $37
    ld c, b                                       ; $4044: $48
    scf                                           ; $4045: $37
    rst RST_38                                    ; $4046: $FF
    nop                                           ; $4047: $00
    add hl, bc                                    ; $4048: $09
    or $17                                        ; $4049: $F6 $17
    add sp, -$11                                  ; $404B: $E8 $EF
    rst RST_10                                    ; $404D: $D7
    rst RST_18                                    ; $404E: $DF
    cpl                                           ; $404F: $2F
    ld e, a                                       ; $4050: $5F
    xor a                                         ; $4051: $AF
    rst RST_38                                    ; $4052: $FF
    nop                                           ; $4053: $00
    rst RST_38                                    ; $4054: $FF
    rst RST_30                                    ; $4055: $F7
    rst RST_38                                    ; $4056: $FF
    rst RST_28                                    ; $4057: $EF
    rst RST_38                                    ; $4058: $FF
    rrca                                          ; $4059: $0F
    rst RST_38                                    ; $405A: $FF
    ldh [rIE], a                                  ; $405B: $E0 $FF
    ldh [$FFF0], a                                ; $405D: $E0 $F0
    rst RST_28                                    ; $405F: $EF
    ld bc, $0300                                  ; $4060: $01 $00 $03
    ld bc, $0103                                  ; $4063: $01 $03 $01
    inc bc                                        ; $4066: $03
    nop                                           ; $4067: $00
    ld bc, $0100                                  ; $4068: $01 $00 $01
    nop                                           ; $406B: $00
    nop                                           ; $406C: $00
    nop                                           ; $406D: $00
    nop                                           ; $406E: $00
    nop                                           ; $406F: $00
    nop                                           ; $4070: $00
    nop                                           ; $4071: $00
    nop                                           ; $4072: $00
    nop                                           ; $4073: $00
    nop                                           ; $4074: $00
    nop                                           ; $4075: $00
    nop                                           ; $4076: $00
    nop                                           ; $4077: $00
    nop                                           ; $4078: $00
    nop                                           ; $4079: $00
    nop                                           ; $407A: $00
    nop                                           ; $407B: $00
    nop                                           ; $407C: $00
    nop                                           ; $407D: $00
    nop                                           ; $407E: $00
    nop                                           ; $407F: $00
    rst RST_38                                    ; $4080: $FF
    nop                                           ; $4081: $00
    nop                                           ; $4082: $00
    nop                                           ; $4083: $00
    nop                                           ; $4084: $00
    nop                                           ; $4085: $00
    nop                                           ; $4086: $00
    nop                                           ; $4087: $00
    nop                                           ; $4088: $00
    nop                                           ; $4089: $00
    nop                                           ; $408A: $00
    nop                                           ; $408B: $00
    nop                                           ; $408C: $00
    nop                                           ; $408D: $00
    nop                                           ; $408E: $00
    nop                                           ; $408F: $00
    nop                                           ; $4090: $00
    nop                                           ; $4091: $00
    nop                                           ; $4092: $00
    nop                                           ; $4093: $00
    nop                                           ; $4094: $00
    nop                                           ; $4095: $00
    nop                                           ; $4096: $00
    nop                                           ; $4097: $00
    nop                                           ; $4098: $00
    nop                                           ; $4099: $00
    nop                                           ; $409A: $00
    nop                                           ; $409B: $00
    nop                                           ; $409C: $00
    nop                                           ; $409D: $00
    nop                                           ; $409E: $00
    nop                                           ; $409F: $00
    rst RST_38                                    ; $40A0: $FF
    ldh a, [$FFF8]                                ; $40A1: $F0 $F8
    rlca                                          ; $40A3: $07
    rrca                                          ; $40A4: $0F
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
    nop                                           ; $40B9: $00
    nop                                           ; $40BA: $00
    nop                                           ; $40BB: $00
    nop                                           ; $40BC: $00
    nop                                           ; $40BD: $00
    nop                                           ; $40BE: $00
    nop                                           ; $40BF: $00
    ldh [rP1], a                                  ; $40C0: $E0 $00
    db $10                                        ; $40C2: $10
    ldh [rNR34], a                                ; $40C3: $E0 $1E
    ldh [rSB], a                                  ; $40C5: $E0 $01
    cp $1F                                        ; $40C7: $FE $1F
    ldh [rIE], a                                  ; $40C9: $E0 $FF
    nop                                           ; $40CB: $00
    rst RST_38                                    ; $40CC: $FF
    cp [hl]                                       ; $40CD: $BE
    rst RST_38                                    ; $40CE: $FF
    ld a, [hl]                                    ; $40CF: $7E
    rst RST_38                                    ; $40D0: $FF
    ld a, [hl]                                    ; $40D1: $7E
    rst RST_38                                    ; $40D2: $FF
    nop                                           ; $40D3: $00
    rst RST_38                                    ; $40D4: $FF
    cp a                                          ; $40D5: $BF
    rst RST_38                                    ; $40D6: $FF
    ld a, a                                       ; $40D7: $7F
    rst RST_38                                    ; $40D8: $FF
    ld a, a                                       ; $40D9: $7F
    rst RST_38                                    ; $40DA: $FF
    ld a, a                                       ; $40DB: $7F
    rst RST_38                                    ; $40DC: $FF
    nop                                           ; $40DD: $00
    push de                                       ; $40DE: $D5
    ld a, [hl+]                                   ; $40DF: $2A
    call z, Call_019_7333                         ; $40E0: $CC $33 $73
    adc h                                         ; $40E3: $8C
    rst RST_38                                    ; $40E4: $FF
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
    ldh a, [rP1]                                  ; $4100: $F0 $00
    ld hl, sp-$10                                 ; $4102: $F8 $F0
    ld hl, sp-$10                                 ; $4104: $F8 $F0
    ld hl, sp-$10                                 ; $4106: $F8 $F0
    cp $F0                                        ; $4108: $FE $F0
    rst RST_38                                    ; $410A: $FF
    ld c, $FF                                     ; $410B: $0E $FF
    cp [hl]                                       ; $410D: $BE
    rst RST_38                                    ; $410E: $FF
    cp [hl]                                       ; $410F: $BE
    rst RST_38                                    ; $4110: $FF
    cp h                                          ; $4111: $BC
    rst RST_38                                    ; $4112: $FF
    cp b                                          ; $4113: $B8
    db $FD                                        ; $4114: $FD
    ld [bc], a                                    ; $4115: $02
    ld d, a                                       ; $4116: $57
    xor b                                         ; $4117: $A8
    rst RST_08                                    ; $4118: $CF
    jr nc, jr_019_414D                            ; $4119: $30 $32

    call z, Call_000_00FC                         ; $411B: $CC $FC $00
    nop                                           ; $411E: $00
    nop                                           ; $411F: $00
    nop                                           ; $4120: $00
    nop                                           ; $4121: $00
    nop                                           ; $4122: $00
    nop                                           ; $4123: $00
    nop                                           ; $4124: $00
    nop                                           ; $4125: $00
    nop                                           ; $4126: $00
    nop                                           ; $4127: $00
    nop                                           ; $4128: $00
    nop                                           ; $4129: $00
    nop                                           ; $412A: $00
    nop                                           ; $412B: $00
    nop                                           ; $412C: $00
    nop                                           ; $412D: $00
    nop                                           ; $412E: $00
    nop                                           ; $412F: $00
    nop                                           ; $4130: $00
    nop                                           ; $4131: $00
    nop                                           ; $4132: $00
    nop                                           ; $4133: $00
    nop                                           ; $4134: $00
    nop                                           ; $4135: $00
    rlca                                          ; $4136: $07
    nop                                           ; $4137: $00
    rrca                                          ; $4138: $0F
    nop                                           ; $4139: $00
    rrca                                          ; $413A: $0F
    nop                                           ; $413B: $00
    rrca                                          ; $413C: $0F
    nop                                           ; $413D: $00
    rlca                                          ; $413E: $07
    nop                                           ; $413F: $00
    rrca                                          ; $4140: $0F
    nop                                           ; $4141: $00
    ld c, $07                                     ; $4142: $0E $07

jr_019_4144:
    rst RST_38                                    ; $4144: $FF
    ld bc, $7DA3                                  ; $4145: $01 $A3 $7D
    and e                                         ; $4148: $A3
    ld a, l                                       ; $4149: $7D
    rst RST_38                                    ; $414A: $FF
    ld a, c                                       ; $414B: $79
    rst RST_38                                    ; $414C: $FF

jr_019_414D:
    nop                                           ; $414D: $00
    rrca                                          ; $414E: $0F
    ld b, $FF                                     ; $414F: $06 $FF
    nop                                           ; $4151: $00
    rst RST_38                                    ; $4152: $FF
    rst RST_18                                    ; $4153: $DF
    rst RST_38                                    ; $4154: $FF
    cp a                                          ; $4155: $BF
    rst RST_38                                    ; $4156: $FF
    add b                                         ; $4157: $80
    rst RST_38                                    ; $4158: $FF
    rra                                           ; $4159: $1F
    rst RST_38                                    ; $415A: $FF
    rra                                           ; $415B: $1F
    ccf                                           ; $415C: $3F
    rst RST_18                                    ; $415D: $DF
    rst RST_38                                    ; $415E: $FF
    rrca                                          ; $415F: $0F
    ccf                                           ; $4160: $3F
    nop                                           ; $4161: $00
    inc h                                         ; $4162: $24
    dec de                                        ; $4163: $1B
    and h                                         ; $4164: $A4
    dec de                                        ; $4165: $1B
    ld a, l                                       ; $4166: $7D
    add d                                         ; $4167: $82
    ld c, [hl]                                    ; $4168: $4E
    or c                                          ; $4169: $B1
    ld c, h                                       ; $416A: $4C
    or e                                          ; $416B: $B3
    ld c, l                                       ; $416C: $4D
    or d                                          ; $416D: $B2
    ei                                            ; $416E: $FB
    dec b                                         ; $416F: $05
    ld c, e                                       ; $4170: $4B
    or l                                          ; $4171: $B5
    rst RST_38                                    ; $4172: $FF
    nop                                           ; $4173: $00
    rst RST_38                                    ; $4174: $FF
    rst RST_30                                    ; $4175: $F7
    rst RST_38                                    ; $4176: $FF
    rst RST_28                                    ; $4177: $EF
    rst RST_38                                    ; $4178: $FF
    rrca                                          ; $4179: $0F
    rst RST_38                                    ; $417A: $FF
    ldh [$FFF0], a                                ; $417B: $E0 $F0
    rst RST_28                                    ; $417D: $EF
    rst RST_38                                    ; $417E: $FF
    ldh [$FFC0], a                                ; $417F: $E0 $C0
    nop                                           ; $4181: $00
    jr nz, jr_019_4144                            ; $4182: $20 $C0

    inc a                                         ; $4184: $3C
    ret nz                                        ; $4185: $C0

    jp nz, Jump_019_4F3C                          ; $4186: $C2 $3C $4F

    or b                                          ; $4189: $B0
    rst RST_38                                    ; $418A: $FF
    nop                                           ; $418B: $00
    rst RST_38                                    ; $418C: $FF
    rst RST_30                                    ; $418D: $F7
    rst RST_38                                    ; $418E: $FF
    rst RST_28                                    ; $418F: $EF
    rst RST_38                                    ; $4190: $FF
    rst RST_28                                    ; $4191: $EF
    rst RST_38                                    ; $4192: $FF
    nop                                           ; $4193: $00
    rst RST_38                                    ; $4194: $FF
    cp a                                          ; $4195: $BF
    rst RST_38                                    ; $4196: $FF
    ld a, a                                       ; $4197: $7F
    rst RST_38                                    ; $4198: $FF
    ld a, a                                       ; $4199: $7F
    rst RST_38                                    ; $419A: $FF
    ld a, a                                       ; $419B: $7F
    rst RST_38                                    ; $419C: $FF
    nop                                           ; $419D: $00
    push de                                       ; $419E: $D5
    ld a, [hl+]                                   ; $419F: $2A
    ldh [rP1], a                                  ; $41A0: $E0 $00
    ldh a, [$FF60]                                ; $41A2: $F0 $60
    ldh a, [$FF60]                                ; $41A4: $F0 $60
    ldh a, [$FF60]                                ; $41A6: $F0 $60
    cp $60                                        ; $41A8: $FE $60
    rst RST_38                                    ; $41AA: $FF
    ld c, $FF                                     ; $41AB: $0E $FF
    cp [hl]                                       ; $41AD: $BE
    rst RST_38                                    ; $41AE: $FF
    cp [hl]                                       ; $41AF: $BE
    rst RST_38                                    ; $41B0: $FF
    cp h                                          ; $41B1: $BC
    db $FD                                        ; $41B2: $FD
    cp d                                          ; $41B3: $BA
    db $FD                                        ; $41B4: $FD
    ld [bc], a                                    ; $41B5: $02
    ld d, a                                       ; $41B6: $57
    xor b                                         ; $41B7: $A8
    inc sp                                        ; $41B8: $33
    call z, Call_000_30CE                         ; $41B9: $CC $CE $30
    db $FC                                        ; $41BC: $FC
    nop                                           ; $41BD: $00
    nop                                           ; $41BE: $00
    nop                                           ; $41BF: $00
    ld bc, $0300                                  ; $41C0: $01 $00 $03
    ld bc, $0103                                  ; $41C3: $01 $03 $01
    inc bc                                        ; $41C6: $03
    nop                                           ; $41C7: $00
    ld bc, $0100                                  ; $41C8: $01 $00 $01
    nop                                           ; $41CB: $00
    nop                                           ; $41CC: $00
    nop                                           ; $41CD: $00
    nop                                           ; $41CE: $00
    nop                                           ; $41CF: $00
    nop                                           ; $41D0: $00
    nop                                           ; $41D1: $00
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
    rst RST_38                                    ; $41E0: $FF
    nop                                           ; $41E1: $00
    nop                                           ; $41E2: $00
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
    ld hl, sp-$09                                 ; $4200: $F8 $F7
    rst RST_38                                    ; $4202: $FF
    nop                                           ; $4203: $00
    rrca                                          ; $4204: $0F
    nop                                           ; $4205: $00
    nop                                           ; $4206: $00
    nop                                           ; $4207: $00
    nop                                           ; $4208: $00
    nop                                           ; $4209: $00
    nop                                           ; $420A: $00
    nop                                           ; $420B: $00
    nop                                           ; $420C: $00
    nop                                           ; $420D: $00
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
    nop                                           ; $421E: $00
    nop                                           ; $421F: $00
    ld [hl], e                                    ; $4220: $73
    adc h                                         ; $4221: $8C
    call z, $FF33                                 ; $4222: $CC $33 $FF
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

jr_019_4238:
    nop                                           ; $4238: $00
    nop                                           ; $4239: $00
    nop                                           ; $423A: $00
    nop                                           ; $423B: $00
    nop                                           ; $423C: $00
    nop                                           ; $423D: $00
    nop                                           ; $423E: $00
    nop                                           ; $423F: $00
    inc bc                                        ; $4240: $03
    nop                                           ; $4241: $00
    inc bc                                        ; $4242: $03
    ld bc, $007F                                  ; $4243: $01 $7F $00
    db $FD                                        ; $4246: $FD
    inc bc                                        ; $4247: $03
    db $FD                                        ; $4248: $FD
    inc bc                                        ; $4249: $03
    rst RST_38                                    ; $424A: $FF
    inc bc                                        ; $424B: $03
    ld a, a                                       ; $424C: $7F
    nop                                           ; $424D: $00
    rlca                                          ; $424E: $07
    inc bc                                        ; $424F: $03
    rst RST_38                                    ; $4250: $FF
    nop                                           ; $4251: $00
    rst RST_38                                    ; $4252: $FF
    rst RST_18                                    ; $4253: $DF
    rst RST_38                                    ; $4254: $FF
    cp a                                          ; $4255: $BF
    rst RST_38                                    ; $4256: $FF
    add b                                         ; $4257: $80
    rst RST_38                                    ; $4258: $FF
    rra                                           ; $4259: $1F
    ccf                                           ; $425A: $3F
    rst RST_18                                    ; $425B: $DF
    rst RST_38                                    ; $425C: $FF
    rra                                           ; $425D: $1F
    sbc a                                         ; $425E: $9F
    ld l, a                                       ; $425F: $6F
    rra                                           ; $4260: $1F
    nop                                           ; $4261: $00
    jp nc, $B20D                                  ; $4262: $D2 $0D $B2

    call Call_019_60DF                            ; $4265: $CD $DF $60
    pop de                                        ; $4268: $D1
    ld l, [hl]                                    ; $4269: $6E
    pop de                                        ; $426A: $D1
    ld l, [hl]                                    ; $426B: $6E
    sbc $6D                                       ; $426C: $DE $6D
    cp $01                                        ; $426E: $FE $01
    jp nc, $FFAD                                  ; $4270: $D2 $AD $FF

    nop                                           ; $4273: $00
    rst RST_38                                    ; $4274: $FF
    rst RST_30                                    ; $4275: $F7
    rst RST_38                                    ; $4276: $FF
    rst RST_28                                    ; $4277: $EF
    rst RST_38                                    ; $4278: $FF
    rrca                                          ; $4279: $0F
    rst RST_38                                    ; $427A: $FF
    ldh [rIE], a                                  ; $427B: $E0 $FF
    ldh [$FFF0], a                                ; $427D: $E0 $F0
    rst RST_28                                    ; $427F: $EF
    add b                                         ; $4280: $80
    nop                                           ; $4281: $00
    ld b, b                                       ; $4282: $40
    add b                                         ; $4283: $80
    ld [hl], b                                    ; $4284: $70
    add b                                         ; $4285: $80
    ret z                                         ; $4286: $C8

    jr nc, jr_019_4238                            ; $4287: $30 $AF

    ld d, b                                       ; $4289: $50
    ld a, a                                       ; $428A: $7F
    add b                                         ; $428B: $80
    rst RST_38                                    ; $428C: $FF
    ld a, $FF                                     ; $428D: $3E $FF
    ld a, l                                       ; $428F: $7D
    rst RST_38                                    ; $4290: $FF
    ld a, l                                       ; $4291: $7D
    rst RST_38                                    ; $4292: $FF
    nop                                           ; $4293: $00
    rst RST_38                                    ; $4294: $FF
    cp a                                          ; $4295: $BF
    rst RST_38                                    ; $4296: $FF
    ld a, a                                       ; $4297: $7F
    rst RST_38                                    ; $4298: $FF
    ld a, a                                       ; $4299: $7F
    rst RST_38                                    ; $429A: $FF
    ld a, a                                       ; $429B: $7F
    rst RST_38                                    ; $429C: $FF
    nop                                           ; $429D: $00
    push de                                       ; $429E: $D5
    ld a, [hl+]                                   ; $429F: $2A
    ret nz                                        ; $42A0: $C0

    nop                                           ; $42A1: $00
    ldh [rP1], a                                  ; $42A2: $E0 $00
    ldh [$FF80], a                                ; $42A4: $E0 $80
    ldh [$FF80], a                                ; $42A6: $E0 $80
    cp $80                                        ; $42A8: $FE $80
    rst RST_38                                    ; $42AA: $FF
    ld c, $FF                                     ; $42AB: $0E $FF
    cp [hl]                                       ; $42AD: $BE
    rst RST_38                                    ; $42AE: $FF
    cp [hl]                                       ; $42AF: $BE
    rst RST_38                                    ; $42B0: $FF
    cp h                                          ; $42B1: $BC
    rst RST_38                                    ; $42B2: $FF
    cp b                                          ; $42B3: $B8
    db $FD                                        ; $42B4: $FD
    ld [bc], a                                    ; $42B5: $02
    ld d, a                                       ; $42B6: $57
    xor b                                         ; $42B7: $A8
    rst RST_08                                    ; $42B8: $CF
    jr nc, jr_019_42ED                            ; $42B9: $30 $32

    call z, Call_000_00FC                         ; $42BB: $CC $FC $00
    nop                                           ; $42BE: $00
    nop                                           ; $42BF: $00
    ld bc, $0300                                  ; $42C0: $01 $00 $03
    ld bc, $0103                                  ; $42C3: $01 $03 $01
    inc bc                                        ; $42C6: $03
    nop                                           ; $42C7: $00
    ld bc, $0100                                  ; $42C8: $01 $00 $01
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
    rst RST_38                                    ; $42E0: $FF
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

jr_019_42ED:
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
    nop                                           ; $42FD: $00
    nop                                           ; $42FE: $00
    nop                                           ; $42FF: $00
    rst RST_38                                    ; $4300: $FF
    ldh a, [$FFF8]                                ; $4301: $F0 $F8
    rlca                                          ; $4303: $07
    rrca                                          ; $4304: $0F
    nop                                           ; $4305: $00
    nop                                           ; $4306: $00
    nop                                           ; $4307: $00
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
    call z, Call_019_7333                         ; $4320: $CC $33 $73
    adc h                                         ; $4323: $8C
    rst RST_38                                    ; $4324: $FF
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
    nop                                           ; $4332: $00
    nop                                           ; $4333: $00
    nop                                           ; $4334: $00
    nop                                           ; $4335: $00
    nop                                           ; $4336: $00
    nop                                           ; $4337: $00
    nop                                           ; $4338: $00
    nop                                           ; $4339: $00
    nop                                           ; $433A: $00
    nop                                           ; $433B: $00
    nop                                           ; $433C: $00
    nop                                           ; $433D: $00
    nop                                           ; $433E: $00
    nop                                           ; $433F: $00
    nop                                           ; $4340: $00
    nop                                           ; $4341: $00
    nop                                           ; $4342: $00
    nop                                           ; $4343: $00
    nop                                           ; $4344: $00
    nop                                           ; $4345: $00
    nop                                           ; $4346: $00
    nop                                           ; $4347: $00
    nop                                           ; $4348: $00
    nop                                           ; $4349: $00
    nop                                           ; $434A: $00
    nop                                           ; $434B: $00
    nop                                           ; $434C: $00
    nop                                           ; $434D: $00
    nop                                           ; $434E: $00
    nop                                           ; $434F: $00
    nop                                           ; $4350: $00
    nop                                           ; $4351: $00
    ld bc, $0100                                  ; $4352: $01 $00 $01
    nop                                           ; $4355: $00
    ld a, a                                       ; $4356: $7F
    nop                                           ; $4357: $00
    sub c                                         ; $4358: $91
    ld a, [hl]                                    ; $4359: $7E
    sub c                                         ; $435A: $91
    ld a, [hl]                                    ; $435B: $7E
    rst RST_38                                    ; $435C: $FF
    ld a, [hl]                                    ; $435D: $7E
    ld a, a                                       ; $435E: $7F
    nop                                           ; $435F: $00
    add b                                         ; $4360: $80
    nop                                           ; $4361: $00
    ret nz                                        ; $4362: $C0

    add b                                         ; $4363: $80
    cp a                                          ; $4364: $BF
    ret nz                                        ; $4365: $C0

    and b                                         ; $4366: $A0
    rst RST_18                                    ; $4367: $DF
    and b                                         ; $4368: $A0
    rst RST_18                                    ; $4369: $DF
    cp a                                          ; $436A: $BF
    rst RST_18                                    ; $436B: $DF
    rst RST_38                                    ; $436C: $FF
    nop                                           ; $436D: $00
    ld bc, $0F00                                  ; $436E: $01 $00 $0F
    nop                                           ; $4371: $00
    rra                                           ; $4372: $1F
    rrca                                          ; $4373: $0F
    ccf                                           ; $4374: $3F
    rra                                           ; $4375: $1F
    ccf                                           ; $4376: $3F
    rra                                           ; $4377: $1F
    ccf                                           ; $4378: $3F
    rlca                                          ; $4379: $07
    rra                                           ; $437A: $1F
    nop                                           ; $437B: $00
    add hl, de                                    ; $437C: $19
    ld b, $0F                                     ; $437D: $06 $0F
    nop                                           ; $437F: $00
    ccf                                           ; $4380: $3F
    nop                                           ; $4381: $00
    jr nz, jr_019_43A3                            ; $4382: $20 $1F

jr_019_4384:
    jr nz, jr_019_43A5                            ; $4384: $20 $1F

    db $FC                                        ; $4386: $FC
    inc bc                                        ; $4387: $03
    inc h                                         ; $4388: $24
    db $DB                                        ; $4389: $DB
    ld e, a                                       ; $438A: $5F
    and b                                         ; $438B: $A0
    cp a                                          ; $438C: $BF
    ld e, e                                       ; $438D: $5B
    ld a, a                                       ; $438E: $7F
    or a                                          ; $438F: $B7
    ld a, a                                       ; $4390: $7F
    or a                                          ; $4391: $B7
    rst RST_38                                    ; $4392: $FF
    nop                                           ; $4393: $00
    rst RST_38                                    ; $4394: $FF
    rst RST_38                                    ; $4395: $FF
    rst RST_38                                    ; $4396: $FF
    rst RST_38                                    ; $4397: $FF
    rst RST_38                                    ; $4398: $FF
    rst RST_38                                    ; $4399: $FF
    rst RST_38                                    ; $439A: $FF
    rst RST_38                                    ; $439B: $FF
    rst RST_38                                    ; $439C: $FF
    nop                                           ; $439D: $00
    ld d, l                                       ; $439E: $55
    xor d                                         ; $439F: $AA
    ldh [rP1], a                                  ; $43A0: $E0 $00
    db $10                                        ; $43A2: $10

jr_019_43A3:
    ldh [$FF1F], a                                ; $43A3: $E0 $1F

jr_019_43A5:
    ldh [rP1], a                                  ; $43A5: $E0 $00
    rst RST_38                                    ; $43A7: $FF
    rra                                           ; $43A8: $1F
    ldh [rIE], a                                  ; $43A9: $E0 $FF
    rrca                                          ; $43AB: $0F
    rst RST_38                                    ; $43AC: $FF
    rst RST_28                                    ; $43AD: $EF
    rst RST_38                                    ; $43AE: $FF
    rst RST_28                                    ; $43AF: $EF
    rst RST_38                                    ; $43B0: $FF
    rst RST_28                                    ; $43B1: $EF
    rst RST_38                                    ; $43B2: $FF
    nop                                           ; $43B3: $00
    rst RST_38                                    ; $43B4: $FF
    rst RST_28                                    ; $43B5: $EF
    rst RST_38                                    ; $43B6: $FF

jr_019_43B7:
    rst RST_28                                    ; $43B7: $EF
    rst RST_38                                    ; $43B8: $FF
    rst RST_28                                    ; $43B9: $EF
    rst RST_38                                    ; $43BA: $FF
    rst RST_28                                    ; $43BB: $EF
    rst RST_38                                    ; $43BC: $FF
    nop                                           ; $43BD: $00
    ld d, l                                       ; $43BE: $55
    xor d                                         ; $43BF: $AA
    ret nz                                        ; $43C0: $C0

    nop                                           ; $43C1: $00
    jr nz, jr_019_4384                            ; $43C2: $20 $C0

    ret nc                                        ; $43C4: $D0

    jr nz, jr_019_43B7                            ; $43C5: $20 $F0

    ret nz                                        ; $43C7: $C0

    ldh a, [$FFC0]                                ; $43C8: $F0 $C0
    ldh [$FFC0], a                                ; $43CA: $E0 $C0
    rst RST_38                                    ; $43CC: $FF
    ret nz                                        ; $43CD: $C0

    rst RST_38                                    ; $43CE: $FF
    rra                                           ; $43CF: $1F
    rst RST_38                                    ; $43D0: $FF
    rst RST_38                                    ; $43D1: $FF
    rst RST_38                                    ; $43D2: $FF
    rst RST_38                                    ; $43D3: $FF
    rst RST_38                                    ; $43D4: $FF
    db $FC                                        ; $43D5: $FC
    rst RST_38                                    ; $43D6: $FF
    db $FC                                        ; $43D7: $FC
    db $FD                                        ; $43D8: $FD
    ld [bc], a                                    ; $43D9: $02
    ld d, e                                       ; $43DA: $53
    xor h                                         ; $43DB: $AC
    ccf                                           ; $43DC: $3F
    ret nz                                        ; $43DD: $C0

    call z, $8030                                 ; $43DE: $CC $30 $80
    nop                                           ; $43E1: $00
    ret nz                                        ; $43E2: $C0

    add b                                         ; $43E3: $80
    ret nz                                        ; $43E4: $C0

    add b                                         ; $43E5: $80
    ret nz                                        ; $43E6: $C0

    add b                                         ; $43E7: $80
    ret nz                                        ; $43E8: $C0

    nop                                           ; $43E9: $00
    add b                                         ; $43EA: $80
    nop                                           ; $43EB: $00
    add b                                         ; $43EC: $80
    nop                                           ; $43ED: $00
    add b                                         ; $43EE: $80
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
    inc sp                                        ; $4400: $33
    call z, Call_000_33CC                         ; $4401: $CC $CC $33
    rst RST_38                                    ; $4404: $FF
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
    nop                                           ; $441C: $00
    nop                                           ; $441D: $00
    nop                                           ; $441E: $00
    nop                                           ; $441F: $00
    inc sp                                        ; $4420: $33
    call z, Call_000_33CC                         ; $4421: $CC $CC $33
    rst RST_38                                    ; $4424: $FF
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
    nop                                           ; $443A: $00
    nop                                           ; $443B: $00
    nop                                           ; $443C: $00
    nop                                           ; $443D: $00
    nop                                           ; $443E: $00
    nop                                           ; $443F: $00
    ldh a, [rP1]                                  ; $4440: $F0 $00
    nop                                           ; $4442: $00
    nop                                           ; $4443: $00
    nop                                           ; $4444: $00
    nop                                           ; $4445: $00
    nop                                           ; $4446: $00
    nop                                           ; $4447: $00
    nop                                           ; $4448: $00
    nop                                           ; $4449: $00
    nop                                           ; $444A: $00
    nop                                           ; $444B: $00
    nop                                           ; $444C: $00
    nop                                           ; $444D: $00
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
    inc bc                                        ; $4460: $03
    nop                                           ; $4461: $00
    nop                                           ; $4462: $00
    nop                                           ; $4463: $00
    nop                                           ; $4464: $00
    nop                                           ; $4465: $00
    nop                                           ; $4466: $00
    nop                                           ; $4467: $00
    nop                                           ; $4468: $00
    nop                                           ; $4469: $00
    nop                                           ; $446A: $00
    nop                                           ; $446B: $00
    nop                                           ; $446C: $00
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
    ld bc, $0100                                  ; $4492: $01 $00 $01
    nop                                           ; $4495: $00
    ld a, a                                       ; $4496: $7F
    nop                                           ; $4497: $00
    sub c                                         ; $4498: $91
    ld a, [hl]                                    ; $4499: $7E
    sub c                                         ; $449A: $91
    ld a, [hl]                                    ; $449B: $7E
    rst RST_38                                    ; $449C: $FF
    ld a, [hl]                                    ; $449D: $7E
    ld a, a                                       ; $449E: $7F
    nop                                           ; $449F: $00
    add b                                         ; $44A0: $80
    nop                                           ; $44A1: $00
    ret nz                                        ; $44A2: $C0

    add b                                         ; $44A3: $80
    cp a                                          ; $44A4: $BF
    ret nz                                        ; $44A5: $C0

    and b                                         ; $44A6: $A0
    rst RST_18                                    ; $44A7: $DF
    and b                                         ; $44A8: $A0
    rst RST_18                                    ; $44A9: $DF
    cp a                                          ; $44AA: $BF
    rst RST_18                                    ; $44AB: $DF
    rst RST_38                                    ; $44AC: $FF
    nop                                           ; $44AD: $00
    ld bc, $0F00                                  ; $44AE: $01 $00 $0F
    nop                                           ; $44B1: $00
    rra                                           ; $44B2: $1F
    rrca                                          ; $44B3: $0F
    ccf                                           ; $44B4: $3F
    rra                                           ; $44B5: $1F
    ccf                                           ; $44B6: $3F
    rra                                           ; $44B7: $1F
    ccf                                           ; $44B8: $3F
    rlca                                          ; $44B9: $07
    rra                                           ; $44BA: $1F
    nop                                           ; $44BB: $00
    add hl, de                                    ; $44BC: $19
    ld b, $0D                                     ; $44BD: $06 $0D
    ld [bc], a                                    ; $44BF: $02
    ccf                                           ; $44C0: $3F
    nop                                           ; $44C1: $00
    jr nz, jr_019_44E3                            ; $44C2: $20 $1F

jr_019_44C4:
    jr nz, jr_019_44E5                            ; $44C4: $20 $1F

    db $FC                                        ; $44C6: $FC
    inc bc                                        ; $44C7: $03
    inc h                                         ; $44C8: $24
    db $DB                                        ; $44C9: $DB
    ld e, a                                       ; $44CA: $5F
    and b                                         ; $44CB: $A0
    cp a                                          ; $44CC: $BF
    ld e, e                                       ; $44CD: $5B
    ld a, a                                       ; $44CE: $7F
    or a                                          ; $44CF: $B7
    ld a, a                                       ; $44D0: $7F
    or a                                          ; $44D1: $B7
    rst RST_38                                    ; $44D2: $FF
    nop                                           ; $44D3: $00
    rst RST_38                                    ; $44D4: $FF
    rst RST_38                                    ; $44D5: $FF
    rst RST_38                                    ; $44D6: $FF
    rst RST_38                                    ; $44D7: $FF
    rst RST_38                                    ; $44D8: $FF
    rst RST_38                                    ; $44D9: $FF
    rst RST_38                                    ; $44DA: $FF
    rst RST_38                                    ; $44DB: $FF
    rst RST_38                                    ; $44DC: $FF
    nop                                           ; $44DD: $00
    rst RST_38                                    ; $44DE: $FF
    nop                                           ; $44DF: $00
    ldh [rP1], a                                  ; $44E0: $E0 $00
    db $10                                        ; $44E2: $10

jr_019_44E3:
    ldh [$FF1F], a                                ; $44E3: $E0 $1F

jr_019_44E5:
    ldh [rP1], a                                  ; $44E5: $E0 $00
    rst RST_38                                    ; $44E7: $FF
    rra                                           ; $44E8: $1F
    ldh [rIE], a                                  ; $44E9: $E0 $FF
    rrca                                          ; $44EB: $0F
    rst RST_38                                    ; $44EC: $FF
    rst RST_28                                    ; $44ED: $EF
    rst RST_38                                    ; $44EE: $FF
    rst RST_28                                    ; $44EF: $EF
    rst RST_38                                    ; $44F0: $FF
    rst RST_28                                    ; $44F1: $EF
    rst RST_38                                    ; $44F2: $FF
    nop                                           ; $44F3: $00
    rst RST_38                                    ; $44F4: $FF
    rst RST_28                                    ; $44F5: $EF
    rst RST_38                                    ; $44F6: $FF

jr_019_44F7:
    rst RST_28                                    ; $44F7: $EF
    rst RST_38                                    ; $44F8: $FF
    rst RST_28                                    ; $44F9: $EF
    rst RST_38                                    ; $44FA: $FF
    rst RST_28                                    ; $44FB: $EF
    rst RST_38                                    ; $44FC: $FF
    nop                                           ; $44FD: $00
    rst RST_38                                    ; $44FE: $FF
    nop                                           ; $44FF: $00
    ret nz                                        ; $4500: $C0

    nop                                           ; $4501: $00
    jr nz, jr_019_44C4                            ; $4502: $20 $C0

    ret nc                                        ; $4504: $D0

    jr nz, jr_019_44F7                            ; $4505: $20 $F0

    ret nz                                        ; $4507: $C0

    ldh a, [$FFC0]                                ; $4508: $F0 $C0
    ldh [$FFC0], a                                ; $450A: $E0 $C0
    rst RST_38                                    ; $450C: $FF
    ret nz                                        ; $450D: $C0

    rst RST_38                                    ; $450E: $FF
    rra                                           ; $450F: $1F
    rst RST_38                                    ; $4510: $FF
    rst RST_38                                    ; $4511: $FF
    rst RST_38                                    ; $4512: $FF
    rst RST_38                                    ; $4513: $FF
    rst RST_38                                    ; $4514: $FF
    db $FC                                        ; $4515: $FC
    rst RST_38                                    ; $4516: $FF
    db $FC                                        ; $4517: $FC
    cp $01                                        ; $4518: $FE $01
    ld sp, hl                                     ; $451A: $F9
    ld b, $57                                     ; $451B: $06 $57
    xor b                                         ; $451D: $A8
    adc $30                                       ; $451E: $CE $30
    add b                                         ; $4520: $80
    nop                                           ; $4521: $00
    ret nz                                        ; $4522: $C0

    add b                                         ; $4523: $80
    ret nz                                        ; $4524: $C0

    add b                                         ; $4525: $80
    ret nz                                        ; $4526: $C0

    add b                                         ; $4527: $80
    ret nz                                        ; $4528: $C0

    nop                                           ; $4529: $00
    add b                                         ; $452A: $80
    nop                                           ; $452B: $00
    add b                                         ; $452C: $80
    nop                                           ; $452D: $00
    add b                                         ; $452E: $80
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
    ld d, l                                       ; $4540: $55
    xor d                                         ; $4541: $AA
    call z, $3333                                 ; $4542: $CC $33 $33
    call z, Call_000_00FF                         ; $4545: $CC $FF $00
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
    nop                                           ; $4559: $00
    nop                                           ; $455A: $00
    nop                                           ; $455B: $00
    nop                                           ; $455C: $00
    nop                                           ; $455D: $00
    nop                                           ; $455E: $00
    nop                                           ; $455F: $00
    ld d, l                                       ; $4560: $55
    xor d                                         ; $4561: $AA
    call z, $3333                                 ; $4562: $CC $33 $33
    call z, Call_000_00FF                         ; $4565: $CC $FF $00
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
    inc a                                         ; $4580: $3C
    ret nz                                        ; $4581: $C0

    ldh a, [rP1]                                  ; $4582: $F0 $00
    nop                                           ; $4584: $00
    nop                                           ; $4585: $00
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
    nop                                           ; $4597: $00
    nop                                           ; $4598: $00
    nop                                           ; $4599: $00
    nop                                           ; $459A: $00
    nop                                           ; $459B: $00
    nop                                           ; $459C: $00
    nop                                           ; $459D: $00
    nop                                           ; $459E: $00
    nop                                           ; $459F: $00
    ld b, $01                                     ; $45A0: $06 $01
    inc bc                                        ; $45A2: $03
    nop                                           ; $45A3: $00
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
    nop                                           ; $45C0: $00
    nop                                           ; $45C1: $00
    nop                                           ; $45C2: $00
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
    ld bc, $0100                                  ; $45D2: $01 $00 $01
    nop                                           ; $45D5: $00
    ld a, a                                       ; $45D6: $7F
    nop                                           ; $45D7: $00
    sub c                                         ; $45D8: $91
    ld a, [hl]                                    ; $45D9: $7E
    sub c                                         ; $45DA: $91
    ld a, [hl]                                    ; $45DB: $7E
    rst RST_38                                    ; $45DC: $FF
    ld a, [hl]                                    ; $45DD: $7E
    ld a, a                                       ; $45DE: $7F
    nop                                           ; $45DF: $00
    add b                                         ; $45E0: $80
    nop                                           ; $45E1: $00
    ret nz                                        ; $45E2: $C0

    add b                                         ; $45E3: $80
    cp a                                          ; $45E4: $BF
    ret nz                                        ; $45E5: $C0

    and b                                         ; $45E6: $A0
    rst RST_18                                    ; $45E7: $DF
    and b                                         ; $45E8: $A0
    rst RST_18                                    ; $45E9: $DF
    cp a                                          ; $45EA: $BF
    rst RST_18                                    ; $45EB: $DF
    rst RST_38                                    ; $45EC: $FF
    nop                                           ; $45ED: $00
    ld bc, $0100                                  ; $45EE: $01 $00 $01
    nop                                           ; $45F1: $00
    rrca                                          ; $45F2: $0F
    nop                                           ; $45F3: $00
    rra                                           ; $45F4: $1F
    rrca                                          ; $45F5: $0F
    ccf                                           ; $45F6: $3F
    rra                                           ; $45F7: $1F
    ccf                                           ; $45F8: $3F
    rra                                           ; $45F9: $1F
    ccf                                           ; $45FA: $3F
    rlca                                          ; $45FB: $07
    rra                                           ; $45FC: $1F
    nop                                           ; $45FD: $00
    add hl, de                                    ; $45FE: $19
    ld b, $3F                                     ; $45FF: $06 $3F
    nop                                           ; $4601: $00
    jr nz, jr_019_4623                            ; $4602: $20 $1F

jr_019_4604:
    jr nz, jr_019_4625                            ; $4604: $20 $1F

    db $FC                                        ; $4606: $FC
    inc bc                                        ; $4607: $03
    inc h                                         ; $4608: $24
    db $DB                                        ; $4609: $DB
    ld b, h                                       ; $460A: $44
    cp e                                          ; $460B: $BB
    sbc a                                         ; $460C: $9F
    ld h, b                                       ; $460D: $60
    ccf                                           ; $460E: $3F
    db $DB                                        ; $460F: $DB
    ld a, a                                       ; $4610: $7F
    or a                                          ; $4611: $B7
    rst RST_38                                    ; $4612: $FF
    scf                                           ; $4613: $37
    rst RST_38                                    ; $4614: $FF
    nop                                           ; $4615: $00
    rst RST_38                                    ; $4616: $FF
    rst RST_38                                    ; $4617: $FF
    rst RST_38                                    ; $4618: $FF
    rst RST_38                                    ; $4619: $FF
    rst RST_38                                    ; $461A: $FF
    rst RST_38                                    ; $461B: $FF
    rst RST_38                                    ; $461C: $FF
    rst RST_38                                    ; $461D: $FF
    rst RST_38                                    ; $461E: $FF
    nop                                           ; $461F: $00
    ldh [rP1], a                                  ; $4620: $E0 $00
    db $10                                        ; $4622: $10

jr_019_4623:
    ldh [$FF1F], a                                ; $4623: $E0 $1F

jr_019_4625:
    ldh [rP1], a                                  ; $4625: $E0 $00
    rst RST_38                                    ; $4627: $FF
    nop                                           ; $4628: $00
    rst RST_38                                    ; $4629: $FF
    rra                                           ; $462A: $1F
    ldh [rIE], a                                  ; $462B: $E0 $FF
    rrca                                          ; $462D: $0F
    rst RST_38                                    ; $462E: $FF
    rst RST_28                                    ; $462F: $EF
    rst RST_38                                    ; $4630: $FF
    rst RST_28                                    ; $4631: $EF
    rst RST_38                                    ; $4632: $FF
    rst RST_28                                    ; $4633: $EF
    rst RST_38                                    ; $4634: $FF
    nop                                           ; $4635: $00
    rst RST_38                                    ; $4636: $FF
    rst RST_28                                    ; $4637: $EF
    rst RST_38                                    ; $4638: $FF

jr_019_4639:
    rst RST_28                                    ; $4639: $EF
    rst RST_38                                    ; $463A: $FF
    rst RST_28                                    ; $463B: $EF
    rst RST_38                                    ; $463C: $FF
    rst RST_28                                    ; $463D: $EF
    rst RST_38                                    ; $463E: $FF
    nop                                           ; $463F: $00
    ret nz                                        ; $4640: $C0

    nop                                           ; $4641: $00
    jr nz, jr_019_4604                            ; $4642: $20 $C0

    db $10                                        ; $4644: $10
    ldh [$FFD0], a                                ; $4645: $E0 $D0
    jr nz, jr_019_4639                            ; $4647: $20 $F0

    ret nz                                        ; $4649: $C0

    ldh [$FFC0], a                                ; $464A: $E0 $C0
    ldh [$FFC0], a                                ; $464C: $E0 $C0
    rst RST_38                                    ; $464E: $FF
    ret nz                                        ; $464F: $C0

    rst RST_38                                    ; $4650: $FF
    rra                                           ; $4651: $1F
    rst RST_38                                    ; $4652: $FF
    rst RST_38                                    ; $4653: $FF
    rst RST_38                                    ; $4654: $FF
    rst RST_38                                    ; $4655: $FF
    rst RST_38                                    ; $4656: $FF
    db $FC                                        ; $4657: $FC
    rst RST_38                                    ; $4658: $FF
    db $FC                                        ; $4659: $FC
    db $FD                                        ; $465A: $FD
    ld [bc], a                                    ; $465B: $02
    ld d, e                                       ; $465C: $53
    xor h                                         ; $465D: $AC
    ccf                                           ; $465E: $3F
    ret nz                                        ; $465F: $C0

    add b                                         ; $4660: $80
    nop                                           ; $4661: $00
    ret nz                                        ; $4662: $C0

    add b                                         ; $4663: $80
    ret nz                                        ; $4664: $C0

    add b                                         ; $4665: $80
    ret nz                                        ; $4666: $C0

    add b                                         ; $4667: $80
    ret nz                                        ; $4668: $C0

    nop                                           ; $4669: $00
    add b                                         ; $466A: $80
    nop                                           ; $466B: $00
    add b                                         ; $466C: $80
    nop                                           ; $466D: $00
    add b                                         ; $466E: $80
    nop                                           ; $466F: $00
    nop                                           ; $4670: $00
    nop                                           ; $4671: $00
    nop                                           ; $4672: $00
    nop                                           ; $4673: $00
    nop                                           ; $4674: $00
    nop                                           ; $4675: $00
    nop                                           ; $4676: $00
    nop                                           ; $4677: $00
    nop                                           ; $4678: $00
    nop                                           ; $4679: $00
    nop                                           ; $467A: $00
    nop                                           ; $467B: $00
    nop                                           ; $467C: $00
    nop                                           ; $467D: $00
    nop                                           ; $467E: $00
    nop                                           ; $467F: $00
    ld d, l                                       ; $4680: $55
    xor d                                         ; $4681: $AA
    inc sp                                        ; $4682: $33
    call z, Call_000_33CC                         ; $4683: $CC $CC $33
    rst RST_38                                    ; $4686: $FF
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
    ld d, l                                       ; $46A0: $55
    xor d                                         ; $46A1: $AA
    inc sp                                        ; $46A2: $33
    call z, Call_000_33CC                         ; $46A3: $CC $CC $33
    rst RST_38                                    ; $46A6: $FF
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
    call z, $F030                                 ; $46C0: $CC $30 $F0
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
    nop                                           ; $46D7: $00
    nop                                           ; $46D8: $00
    nop                                           ; $46D9: $00
    nop                                           ; $46DA: $00
    nop                                           ; $46DB: $00
    nop                                           ; $46DC: $00
    nop                                           ; $46DD: $00
    nop                                           ; $46DE: $00
    nop                                           ; $46DF: $00
    rrca                                          ; $46E0: $0F
    nop                                           ; $46E1: $00
    inc bc                                        ; $46E2: $03
    nop                                           ; $46E3: $00
    nop                                           ; $46E4: $00
    nop                                           ; $46E5: $00
    nop                                           ; $46E6: $00
    nop                                           ; $46E7: $00
    nop                                           ; $46E8: $00
    nop                                           ; $46E9: $00
    nop                                           ; $46EA: $00
    nop                                           ; $46EB: $00
    nop                                           ; $46EC: $00
    nop                                           ; $46ED: $00
    nop                                           ; $46EE: $00
    nop                                           ; $46EF: $00
    nop                                           ; $46F0: $00
    nop                                           ; $46F1: $00
    nop                                           ; $46F2: $00
    nop                                           ; $46F3: $00
    nop                                           ; $46F4: $00
    nop                                           ; $46F5: $00
    nop                                           ; $46F6: $00
    nop                                           ; $46F7: $00
    nop                                           ; $46F8: $00
    nop                                           ; $46F9: $00
    nop                                           ; $46FA: $00
    nop                                           ; $46FB: $00
    nop                                           ; $46FC: $00
    nop                                           ; $46FD: $00
    nop                                           ; $46FE: $00
    nop                                           ; $46FF: $00
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
    inc e                                         ; $4714: $1C
    nop                                           ; $4715: $00
    ccf                                           ; $4716: $3F
    nop                                           ; $4717: $00
    ld a, $01                                     ; $4718: $3E $01
    ld a, $01                                     ; $471A: $3E $01
    rra                                           ; $471C: $1F
    inc bc                                        ; $471D: $03
    inc bc                                        ; $471E: $03
    nop                                           ; $471F: $00
    adc h                                         ; $4720: $8C
    nop                                           ; $4721: $00
    ld a, [hl]                                    ; $4722: $7E
    adc h                                         ; $4723: $8C
    dec c                                         ; $4724: $0D
    or $8D                                        ; $4725: $F6 $8D
    or $FD                                        ; $4727: $F6 $FD
    ld l, [hl]                                    ; $4729: $6E
    ld a, d                                       ; $472A: $7A
    dec c                                         ; $472B: $0D
    rrca                                          ; $472C: $0F
    ld bc, $0003                                  ; $472D: $01 $03 $00
    rlca                                          ; $4730: $07
    ld [bc], a                                    ; $4731: $02
    rrca                                          ; $4732: $0F
    ld b, $1F                                     ; $4733: $06 $1F
    ld c, $FF                                     ; $4735: $0E $FF
    nop                                           ; $4737: $00
    rst RST_38                                    ; $4738: $FF
    rst RST_18                                    ; $4739: $DF
    rst RST_38                                    ; $473A: $FF
    cp a                                          ; $473B: $BF
    rst RST_38                                    ; $473C: $FF
    add b                                         ; $473D: $80
    rst RST_38                                    ; $473E: $FF
    rra                                           ; $473F: $1F
    ld e, $00                                     ; $4740: $1E $00
    dec h                                         ; $4742: $25
    ld a, [de]                                    ; $4743: $1A
    db $E4                                        ; $4744: $E4
    dec de                                        ; $4745: $1B

jr_019_4746:
    ld a, $C1                                     ; $4746: $3E $C1
    dec bc                                        ; $4748: $0B
    db $F4                                        ; $4749: $F4
    push de                                       ; $474A: $D5
    ld [$10EF], a                                 ; $474B: $EA $EF $10
    cpl                                           ; $474E: $2F
    rst RST_10                                    ; $474F: $D7
    ccf                                           ; $4750: $3F
    rst RST_08                                    ; $4751: $CF
    rst RST_38                                    ; $4752: $FF
    rrca                                          ; $4753: $0F
    rst RST_38                                    ; $4754: $FF
    nop                                           ; $4755: $00
    rst RST_38                                    ; $4756: $FF
    rst RST_30                                    ; $4757: $F7
    rst RST_38                                    ; $4758: $FF
    rst RST_28                                    ; $4759: $EF
    rst RST_38                                    ; $475A: $FF
    rrca                                          ; $475B: $0F
    rst RST_38                                    ; $475C: $FF
    ldh [rIE], a                                  ; $475D: $E0 $FF
    ldh [$FF80], a                                ; $475F: $E0 $80
    nop                                           ; $4761: $00
    ld [hl], b                                    ; $4762: $70
    add b                                         ; $4763: $80
    jr jr_019_4746                                ; $4764: $18 $E0

    rlca                                          ; $4766: $07
    ld hl, sp+$1F                                 ; $4767: $F8 $1F
    ldh [rIE], a                                  ; $4769: $E0 $FF
    nop                                           ; $476B: $00
    rst RST_38                                    ; $476C: $FF
    cp [hl]                                       ; $476D: $BE
    rst RST_38                                    ; $476E: $FF
    ld a, [hl]                                    ; $476F: $7E
    rst RST_38                                    ; $4770: $FF
    ld a, [hl]                                    ; $4771: $7E
    rst RST_38                                    ; $4772: $FF
    nop                                           ; $4773: $00
    rst RST_38                                    ; $4774: $FF
    cp a                                          ; $4775: $BF
    rst RST_38                                    ; $4776: $FF
    ld a, a                                       ; $4777: $7F
    rst RST_38                                    ; $4778: $FF
    ld a, a                                       ; $4779: $7F
    rst RST_38                                    ; $477A: $FF
    ld a, a                                       ; $477B: $7F
    rst RST_38                                    ; $477C: $FF
    nop                                           ; $477D: $00
    push de                                       ; $477E: $D5
    ld a, [hl+]                                   ; $477F: $2A
    ld bc, $0300                                  ; $4780: $01 $00 $03
    ld bc, $0103                                  ; $4783: $01 $03 $01
    inc bc                                        ; $4786: $03
    nop                                           ; $4787: $00
    ld bc, $0100                                  ; $4788: $01 $00 $01
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
    ccf                                           ; $47A0: $3F
    rst RST_18                                    ; $47A1: $DF
    rst RST_38                                    ; $47A2: $FF
    rra                                           ; $47A3: $1F
    sbc a                                         ; $47A4: $9F
    ld l, a                                       ; $47A5: $6F
    rst RST_38                                    ; $47A6: $FF
    nop                                           ; $47A7: $00
    nop                                           ; $47A8: $00
    nop                                           ; $47A9: $00
    nop                                           ; $47AA: $00
    nop                                           ; $47AB: $00
    nop                                           ; $47AC: $00
    nop                                           ; $47AD: $00
    nop                                           ; $47AE: $00
    nop                                           ; $47AF: $00
    nop                                           ; $47B0: $00
    nop                                           ; $47B1: $00
    nop                                           ; $47B2: $00
    nop                                           ; $47B3: $00
    nop                                           ; $47B4: $00
    nop                                           ; $47B5: $00
    nop                                           ; $47B6: $00
    nop                                           ; $47B7: $00
    nop                                           ; $47B8: $00
    nop                                           ; $47B9: $00
    nop                                           ; $47BA: $00
    nop                                           ; $47BB: $00
    nop                                           ; $47BC: $00
    nop                                           ; $47BD: $00
    nop                                           ; $47BE: $00
    nop                                           ; $47BF: $00
    ldh a, [$FFEF]                                ; $47C0: $F0 $EF
    rst RST_38                                    ; $47C2: $FF
    ldh a, [$FFF8]                                ; $47C3: $F0 $F8
    rlca                                          ; $47C5: $07
    rrca                                          ; $47C6: $0F
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
    call z, Call_019_7333                         ; $47E0: $CC $33 $73
    adc h                                         ; $47E3: $8C
    rst RST_38                                    ; $47E4: $FF
    nop                                           ; $47E5: $00
    nop                                           ; $47E6: $00
    nop                                           ; $47E7: $00
    nop                                           ; $47E8: $00
    nop                                           ; $47E9: $00
    nop                                           ; $47EA: $00
    nop                                           ; $47EB: $00
    nop                                           ; $47EC: $00
    nop                                           ; $47ED: $00
    nop                                           ; $47EE: $00
    nop                                           ; $47EF: $00
    nop                                           ; $47F0: $00
    nop                                           ; $47F1: $00
    nop                                           ; $47F2: $00
    nop                                           ; $47F3: $00
    nop                                           ; $47F4: $00
    nop                                           ; $47F5: $00
    nop                                           ; $47F6: $00
    nop                                           ; $47F7: $00
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
    nop                                           ; $480A: $00
    nop                                           ; $480B: $00
    nop                                           ; $480C: $00
    nop                                           ; $480D: $00
    nop                                           ; $480E: $00
    nop                                           ; $480F: $00
    nop                                           ; $4810: $00
    nop                                           ; $4811: $00
    nop                                           ; $4812: $00
    nop                                           ; $4813: $00
    ld c, $00                                     ; $4814: $0E $00
    rra                                           ; $4816: $1F
    nop                                           ; $4817: $00
    rra                                           ; $4818: $1F
    nop                                           ; $4819: $00
    rra                                           ; $481A: $1F
    nop                                           ; $481B: $00
    rrca                                          ; $481C: $0F
    ld bc, $0003                                  ; $481D: $01 $03 $00
    add b                                         ; $4820: $80
    nop                                           ; $4821: $00
    ld h, b                                       ; $4822: $60
    add b                                         ; $4823: $80

jr_019_4824:
    ld e, $E0                                     ; $4824: $1E $E0
    rlca                                          ; $4826: $07
    ld a, [$FBC6]                                 ; $4827: $FA $C6 $FB
    or $3B                                        ; $482A: $F6 $3B
    ld a, $07                                     ; $482C: $3E $07
    dec c                                         ; $482E: $0D
    ld b, $07                                     ; $482F: $06 $07
    ld bc, $0001                                  ; $4831: $01 $01 $00
    ld bc, $0100                                  ; $4834: $01 $00 $01
    nop                                           ; $4837: $00
    inc bc                                        ; $4838: $03
    nop                                           ; $4839: $00
    rlca                                          ; $483A: $07
    inc bc                                        ; $483B: $03
    rrca                                          ; $483C: $0F
    ld b, $1F                                     ; $483D: $06 $1F
    ld c, $8E                                     ; $483F: $0E $8E
    nop                                           ; $4841: $00
    db $D3                                        ; $4842: $D3
    inc c                                         ; $4843: $0C
    or d                                          ; $4844: $B2
    ld c, l                                       ; $4845: $4D
    inc c                                         ; $4846: $0C
    di                                            ; $4847: $F3
    adc [hl]                                      ; $4848: $8E
    pop af                                        ; $4849: $F1
    db $EB                                        ; $484A: $EB
    ld [hl], h                                    ; $484B: $74
    ld a, d                                       ; $484C: $7A
    add l                                         ; $484D: $85
    sub h                                         ; $484E: $94
    ld l, e                                       ; $484F: $6B
    sub a                                         ; $4850: $97
    ld l, b                                       ; $4851: $68
    rst RST_38                                    ; $4852: $FF
    rlca                                          ; $4853: $07
    rst RST_38                                    ; $4854: $FF
    rrca                                          ; $4855: $0F
    rst RST_38                                    ; $4856: $FF
    rrca                                          ; $4857: $0F
    rst RST_38                                    ; $4858: $FF
    nop                                           ; $4859: $00
    rst RST_38                                    ; $485A: $FF
    rst RST_30                                    ; $485B: $F7
    rst RST_38                                    ; $485C: $FF
    rst RST_28                                    ; $485D: $EF
    rst RST_38                                    ; $485E: $FF
    rrca                                          ; $485F: $0F
    ret nz                                        ; $4860: $C0

    nop                                           ; $4861: $00
    jr nc, jr_019_4824                            ; $4862: $30 $C0

    db $10                                        ; $4864: $10
    ldh [$FF0C], a                                ; $4865: $E0 $0C
    ldh a, [$FF82]                                ; $4867: $F0 $82
    ld a, h                                       ; $4869: $7C
    sbc a                                         ; $486A: $9F
    ld h, b                                       ; $486B: $60
    rst RST_38                                    ; $486C: $FF
    nop                                           ; $486D: $00
    rst RST_38                                    ; $486E: $FF
    cp [hl]                                       ; $486F: $BE
    rst RST_38                                    ; $4870: $FF
    ld a, [hl]                                    ; $4871: $7E
    rst RST_38                                    ; $4872: $FF
    ld a, [hl]                                    ; $4873: $7E
    rst RST_38                                    ; $4874: $FF
    nop                                           ; $4875: $00
    rst RST_38                                    ; $4876: $FF
    cp a                                          ; $4877: $BF
    rst RST_38                                    ; $4878: $FF
    ld a, a                                       ; $4879: $7F
    rst RST_38                                    ; $487A: $FF
    ld a, a                                       ; $487B: $7F
    rst RST_38                                    ; $487C: $FF
    ld a, a                                       ; $487D: $7F
    rst RST_38                                    ; $487E: $FF
    nop                                           ; $487F: $00
    nop                                           ; $4880: $00
    nop                                           ; $4881: $00
    ld bc, $0300                                  ; $4882: $01 $00 $03
    ld bc, $0103                                  ; $4885: $01 $03 $01
    inc bc                                        ; $4888: $03
    nop                                           ; $4889: $00
    ld bc, $0100                                  ; $488A: $01 $00 $01
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
    nop                                           ; $489C: $00
    nop                                           ; $489D: $00
    nop                                           ; $489E: $00
    nop                                           ; $489F: $00
    rst RST_38                                    ; $48A0: $FF
    nop                                           ; $48A1: $00
    rst RST_38                                    ; $48A2: $FF
    rst RST_18                                    ; $48A3: $DF
    rst RST_38                                    ; $48A4: $FF
    cp a                                          ; $48A5: $BF
    rst RST_38                                    ; $48A6: $FF
    add b                                         ; $48A7: $80
    rst RST_38                                    ; $48A8: $FF
    rra                                           ; $48A9: $1F
    ccf                                           ; $48AA: $3F
    rst RST_18                                    ; $48AB: $DF
    rst RST_38                                    ; $48AC: $FF
    rra                                           ; $48AD: $1F
    sbc a                                         ; $48AE: $9F
    ld l, a                                       ; $48AF: $6F
    rst RST_38                                    ; $48B0: $FF
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
    rst RST_38                                    ; $48C0: $FF
    ldh [rIE], a                                  ; $48C1: $E0 $FF
    ldh [$FFF0], a                                ; $48C3: $E0 $F0
    rst RST_28                                    ; $48C5: $EF
    rst RST_38                                    ; $48C6: $FF
    ldh a, [$FFF8]                                ; $48C7: $F0 $F8
    rlca                                          ; $48C9: $07
    rrca                                          ; $48CA: $0F
    nop                                           ; $48CB: $00
    nop                                           ; $48CC: $00
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
    push de                                       ; $48E0: $D5
    ld a, [hl+]                                   ; $48E1: $2A
    call z, Call_019_7333                         ; $48E2: $CC $33 $73
    adc h                                         ; $48E5: $8C
    rst RST_38                                    ; $48E6: $FF
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
    nop                                           ; $4900: $00
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
    rlca                                          ; $490C: $07
    nop                                           ; $490D: $00
    jr c, jr_019_4917                             ; $490E: $38 $07

    ld [hl], b                                    ; $4910: $70
    rrca                                          ; $4911: $0F
    ld a, e                                       ; $4912: $7B
    rlca                                          ; $4913: $07
    ld a, a                                       ; $4914: $7F
    inc b                                         ; $4915: $04
    ld a, h                                       ; $4916: $7C

jr_019_4917:
    nop                                           ; $4917: $00
    ld sp, $0100                                  ; $4918: $31 $00 $01
    nop                                           ; $491B: $00
    ld bc, $0000                                  ; $491C: $01 $00 $00
    nop                                           ; $491F: $00
    dec a                                         ; $4920: $3D
    ld e, $3E                                     ; $4921: $1E $3E
    inc bc                                        ; $4923: $03
    and $1B                                       ; $4924: $E6 $1B
    ld b, $FB                                     ; $4926: $06 $FB
    ld c, $FB                                     ; $4928: $0E $FB
    ld a, a                                       ; $492A: $7F
    ldh a, [rIE]                                  ; $492B: $F0 $FF
    add [hl]                                      ; $492D: $86
    rst RST_38                                    ; $492E: $FF
    nop                                           ; $492F: $00
    rst RST_38                                    ; $4930: $FF
    ld l, a                                       ; $4931: $6F
    rst RST_38                                    ; $4932: $FF
    rst RST_18                                    ; $4933: $DF
    rst RST_38                                    ; $4934: $FF
    ret nz                                        ; $4935: $C0

    rst RST_38                                    ; $4936: $FF
    rrca                                          ; $4937: $0F
    sbc a                                         ; $4938: $9F
    ld l, a                                       ; $4939: $6F
    rst RST_38                                    ; $493A: $FF
    rrca                                          ; $493B: $0F
    ld c, a                                       ; $493C: $4F
    scf                                           ; $493D: $37
    ld a, a                                       ; $493E: $7F
    nop                                           ; $493F: $00
    ccf                                           ; $4940: $3F
    nop                                           ; $4941: $00
    inc h                                         ; $4942: $24
    dec de                                        ; $4943: $1B

jr_019_4944:
    inc h                                         ; $4944: $24
    dec de                                        ; $4945: $1B
    rst RST_38                                    ; $4946: $FF
    nop                                           ; $4947: $00
    add h                                         ; $4948: $84
    ld a, e                                       ; $4949: $7B
    adc e                                         ; $494A: $8B
    ld [hl], h                                    ; $494B: $74
    rst RST_30                                    ; $494C: $F7
    ld l, e                                       ; $494D: $6B
    rst RST_28                                    ; $494E: $EF
    rla                                           ; $494F: $17
    cpl                                           ; $4950: $2F
    rst RST_10                                    ; $4951: $D7
    rst RST_38                                    ; $4952: $FF
    nop                                           ; $4953: $00
    rst RST_38                                    ; $4954: $FF
    ei                                            ; $4955: $FB
    rst RST_38                                    ; $4956: $FF
    rst RST_30                                    ; $4957: $F7
    rst RST_38                                    ; $4958: $FF
    rlca                                          ; $4959: $07
    rst RST_38                                    ; $495A: $FF
    ldh a, [rIE]                                  ; $495B: $F0 $FF
    ldh a, [$FFF8]                                ; $495D: $F0 $F8
    rst RST_30                                    ; $495F: $F7
    ldh [rP1], a                                  ; $4960: $E0 $00
    jr jr_019_4944                                ; $4962: $18 $E0

    ld c, $F0                                     ; $4964: $0E $F0
    add c                                         ; $4966: $81
    ld a, [hl]                                    ; $4967: $7E
    adc a                                         ; $4968: $8F
    ld [hl], b                                    ; $4969: $70
    rst RST_38                                    ; $496A: $FF
    nop                                           ; $496B: $00
    rst RST_38                                    ; $496C: $FF
    rst RST_18                                    ; $496D: $DF
    rst RST_38                                    ; $496E: $FF
    cp a                                          ; $496F: $BF
    rst RST_38                                    ; $4970: $FF
    cp a                                          ; $4971: $BF
    rst RST_38                                    ; $4972: $FF
    nop                                           ; $4973: $00
    rst RST_38                                    ; $4974: $FF
    rst RST_18                                    ; $4975: $DF
    rst RST_38                                    ; $4976: $FF
    cp a                                          ; $4977: $BF
    rst RST_38                                    ; $4978: $FF
    cp a                                          ; $4979: $BF
    rst RST_38                                    ; $497A: $FF
    ccf                                           ; $497B: $3F
    rst RST_38                                    ; $497C: $FF
    ld bc, $946B                                  ; $497D: $01 $6B $94
    add b                                         ; $4980: $80
    nop                                           ; $4981: $00
    add b                                         ; $4982: $80
    nop                                           ; $4983: $00
    ldh [rP1], a                                  ; $4984: $E0 $00
    ld hl, sp+$60                                 ; $4986: $F8 $60
    db $FC                                        ; $4988: $FC
    ld a, b                                       ; $4989: $78
    db $FC                                        ; $498A: $FC
    ld a, b                                       ; $498B: $78
    db $FC                                        ; $498C: $FC

jr_019_498D:
    ld a, b                                       ; $498D: $78
    db $FC                                        ; $498E: $FC
    jr c, jr_019_498D                             ; $498F: $38 $FC

    ret nz                                        ; $4991: $C0

    cp $D8                                        ; $4992: $FE $D8
    rst RST_38                                    ; $4994: $FF
    sbc $FF                                       ; $4995: $DE $FF
    sbc $FF                                       ; $4997: $DE $FF
    ld b, $5F                                     ; $4999: $06 $5F
    and d                                         ; $499B: $A2
    rst RST_28                                    ; $499C: $EF
    db $10                                        ; $499D: $10
    sbc e                                         ; $499E: $9B
    ld h, h                                       ; $499F: $64
    nop                                           ; $49A0: $00
    nop                                           ; $49A1: $00
    nop                                           ; $49A2: $00
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
    ld e, $00                                     ; $49BE: $1E $00
    rst RST_38                                    ; $49C0: $FF
    ld hl, sp-$04                                 ; $49C1: $F8 $FC
    inc bc                                        ; $49C3: $03
    rra                                           ; $49C4: $1F
    nop                                           ; $49C5: $00
    rlca                                          ; $49C6: $07
    nop                                           ; $49C7: $00
    inc bc                                        ; $49C8: $03
    nop                                           ; $49C9: $00
    ld bc, $0000                                  ; $49CA: $01 $00 $00
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
    and $19                                       ; $49E0: $E6 $19
    add hl, sp                                    ; $49E2: $39
    add $FF                                       ; $49E3: $C6 $FF
    nop                                           ; $49E5: $00
    rst RST_38                                    ; $49E6: $FF
    nop                                           ; $49E7: $00
    pop af                                        ; $49E8: $F1
    nop                                           ; $49E9: $00
    ldh [rP1], a                                  ; $49EA: $E0 $00
    nop                                           ; $49EC: $00
    nop                                           ; $49ED: $00
    nop                                           ; $49EE: $00
    nop                                           ; $49EF: $00
    nop                                           ; $49F0: $00
    nop                                           ; $49F1: $00
    nop                                           ; $49F2: $00
    nop                                           ; $49F3: $00
    nop                                           ; $49F4: $00
    nop                                           ; $49F5: $00
    nop                                           ; $49F6: $00
    nop                                           ; $49F7: $00

jr_019_49F8:
    nop                                           ; $49F8: $00
    nop                                           ; $49F9: $00
    nop                                           ; $49FA: $00
    nop                                           ; $49FB: $00
    nop                                           ; $49FC: $00
    nop                                           ; $49FD: $00
    nop                                           ; $49FE: $00
    nop                                           ; $49FF: $00
    rst RST_20                                    ; $4A00: $E7
    jr jr_019_49F8                                ; $4A01: $18 $F5

    ld a, [bc]                                    ; $4A03: $0A
    ld a, [$7C04]                                 ; $4A04: $FA $04 $7C
    nop                                           ; $4A07: $00
    nop                                           ; $4A08: $00
    nop                                           ; $4A09: $00
    nop                                           ; $4A0A: $00
    nop                                           ; $4A0B: $00
    nop                                           ; $4A0C: $00
    nop                                           ; $4A0D: $00
    nop                                           ; $4A0E: $00
    nop                                           ; $4A0F: $00
    nop                                           ; $4A10: $00
    nop                                           ; $4A11: $00

jr_019_4A12:
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
    inc bc                                        ; $4A20: $03
    nop                                           ; $4A21: $00
    ld c, $01                                     ; $4A22: $0E $01
    ld a, [bc]                                    ; $4A24: $0A
    dec b                                         ; $4A25: $05
    dec bc                                        ; $4A26: $0B
    inc b                                         ; $4A27: $04
    rrca                                          ; $4A28: $0F
    inc bc                                        ; $4A29: $03
    rrca                                          ; $4A2A: $0F
    rlca                                          ; $4A2B: $07
    rrca                                          ; $4A2C: $0F
    rlca                                          ; $4A2D: $07
    rrca                                          ; $4A2E: $0F
    rlca                                          ; $4A2F: $07
    rrca                                          ; $4A30: $0F
    rlca                                          ; $4A31: $07
    rrca                                          ; $4A32: $0F
    rlca                                          ; $4A33: $07
    rrca                                          ; $4A34: $0F
    rlca                                          ; $4A35: $07
    rra                                           ; $4A36: $1F
    rlca                                          ; $4A37: $07
    rra                                           ; $4A38: $1F
    inc b                                         ; $4A39: $04
    dec a                                         ; $4A3A: $3D
    ld [bc], a                                    ; $4A3B: $02
    ld [hl], l                                    ; $4A3C: $75
    ld a, [bc]                                    ; $4A3D: $0A
    push af                                       ; $4A3E: $F5
    ld a, [bc]                                    ; $4A3F: $0A
    ld a, d                                       ; $4A40: $7A
    dec b                                         ; $4A41: $05
    ld a, e                                       ; $4A42: $7B
    inc b                                         ; $4A43: $04
    ld a, a                                       ; $4A44: $7F
    nop                                           ; $4A45: $00
    inc a                                         ; $4A46: $3C
    inc bc                                        ; $4A47: $03
    dec e                                         ; $4A48: $1D
    ld [bc], a                                    ; $4A49: $02
    ld a, [de]                                    ; $4A4A: $1A
    dec b                                         ; $4A4B: $05
    dec de                                        ; $4A4C: $1B
    inc b                                         ; $4A4D: $04
    dec a                                         ; $4A4E: $3D
    ld [bc], a                                    ; $4A4F: $02
    ld a, l                                       ; $4A50: $7D
    ld [bc], a                                    ; $4A51: $02
    rst RST_30                                    ; $4A52: $F7
    ld [$0AF5], sp                                ; $4A53: $08 $F5 $0A
    db $EB                                        ; $4A56: $EB
    inc d                                         ; $4A57: $14
    rst RST_08                                    ; $4A58: $CF
    jr nc, jr_019_4A12                            ; $4A59: $30 $B7

    ld c, c                                       ; $4A5B: $49
    ld e, a                                       ; $4A5C: $5F
    inc hl                                        ; $4A5D: $23
    ccf                                           ; $4A5E: $3F
    nop                                           ; $4A5F: $00
    nop                                           ; $4A60: $00
    nop                                           ; $4A61: $00
    ld e, $00                                     ; $4A62: $1E $00
    ccf                                           ; $4A64: $3F
    nop                                           ; $4A65: $00
    ccf                                           ; $4A66: $3F
    nop                                           ; $4A67: $00
    dec e                                         ; $4A68: $1D
    ld [bc], a                                    ; $4A69: $02
    jr jr_019_4A7B                                ; $4A6A: $18 $0F

    inc c                                         ; $4A6C: $0C
    rlca                                          ; $4A6D: $07
    db $EC                                        ; $4A6E: $EC
    rlca                                          ; $4A6F: $07
    db $FC                                        ; $4A70: $FC
    ld h, a                                       ; $4A71: $67
    cp $73                                        ; $4A72: $FE $73
    cp $13                                        ; $4A74: $FE $13
    cp $23                                        ; $4A76: $FE $23
    rst RST_38                                    ; $4A78: $FF
    or c                                          ; $4A79: $B1
    rst RST_38                                    ; $4A7A: $FF

jr_019_4A7B:
    or h                                          ; $4A7B: $B4
    rst RST_38                                    ; $4A7C: $FF
    or l                                          ; $4A7D: $B5
    cp $B1                                        ; $4A7E: $FE $B1
    db $FD                                        ; $4A80: $FD
    jp c, $DAFD                                   ; $4A81: $DA $FD $DA

    rst RST_38                                    ; $4A84: $FF
    ret c                                         ; $4A85: $D8

    db $FC                                        ; $4A86: $FC
    db $DB                                        ; $4A87: $DB

jr_019_4A88:
    rst RST_38                                    ; $4A88: $FF
    ld [$33FF], sp                                ; $4A89: $08 $FF $33

jr_019_4A8C:
    rst RST_38                                    ; $4A8C: $FF
    dec sp                                        ; $4A8D: $3B
    rst RST_38                                    ; $4A8E: $FF
    dec sp                                        ; $4A8F: $3B
    rst RST_38                                    ; $4A90: $FF
    dec sp                                        ; $4A91: $3B
    rst RST_38                                    ; $4A92: $FF
    ld [$73FF], sp                                ; $4A93: $08 $FF $73
    rst RST_38                                    ; $4A96: $FF
    ld a, e                                       ; $4A97: $7B
    rst RST_38                                    ; $4A98: $FF
    ld a, e                                       ; $4A99: $7B
    rst RST_38                                    ; $4A9A: $FF
    ld a, e                                       ; $4A9B: $7B
    rst RST_38                                    ; $4A9C: $FF
    ld a, e                                       ; $4A9D: $7B
    rst RST_38                                    ; $4A9E: $FF
    ei                                            ; $4A9F: $FB
    rst RST_38                                    ; $4AA0: $FF
    ldh a, [rIE]                                  ; $4AA1: $F0 $FF
    rst RST_30                                    ; $4AA3: $F7
    rst RST_38                                    ; $4AA4: $FF
    rrca                                          ; $4AA5: $0F
    rst RST_38                                    ; $4AA6: $FF
    rst RST_28                                    ; $4AA7: $EF
    rst RST_38                                    ; $4AA8: $FF
    rst RST_28                                    ; $4AA9: $EF
    rst RST_38                                    ; $4AAA: $FF
    ret nz                                        ; $4AAB: $C0

    ldh [$FFC0], a                                ; $4AAC: $E0 $C0
    ret nz                                        ; $4AAE: $C0

    nop                                           ; $4AAF: $00
    nop                                           ; $4AB0: $00
    nop                                           ; $4AB1: $00
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
    ld b, b                                       ; $4AC0: $40
    add b                                         ; $4AC1: $80
    ld b, b                                       ; $4AC2: $40
    add b                                         ; $4AC3: $80
    ld b, b                                       ; $4AC4: $40
    add b                                         ; $4AC5: $80
    jr nz, jr_019_4A88                            ; $4AC6: $20 $C0

    jr nz, @-$3E                                  ; $4AC8: $20 $C0

    jr c, jr_019_4A8C                             ; $4ACA: $38 $C0

    inc e                                         ; $4ACC: $1C
    add sp, -$64                                  ; $4ACD: $E8 $9C
    add sp, -$04                                  ; $4ACF: $E8 $FC
    ld [$F8F4], sp                                ; $4AD1: $08 $F4 $F8
    ld [$F0F0], sp                                ; $4AD4: $08 $F0 $F0
    nop                                           ; $4AD7: $00
    sub b                                         ; $4AD8: $90
    ldh [$FF9E], a                                ; $4AD9: $E0 $9E
    ldh [$FF92], a                                ; $4ADB: $E0 $92
    ld l, h                                       ; $4ADD: $6C
    ld d, d                                       ; $4ADE: $52
    xor h                                         ; $4ADF: $AC
    cp [hl]                                       ; $4AE0: $BE
    ld b, b                                       ; $4AE1: $40
    jp nc, $D2AC                                  ; $4AE2: $D2 $AC $D2

    xor h                                         ; $4AE5: $AC
    ldh a, [c]                                    ; $4AE6: $F2
    adc h                                         ; $4AE7: $8C
    jp nz, $C2BC                                  ; $4AE8: $C2 $BC $C2

    inc a                                         ; $4AEB: $3C
    call nz, $ECB8                                ; $4AEC: $C4 $B8 $EC
    sub b                                         ; $4AEF: $90
    add sp, -$70                                  ; $4AF0: $E8 $90
    add sp, -$70                                  ; $4AF2: $E8 $90
    ldh a, [$FF80]                                ; $4AF4: $F0 $80
    ldh a, [rP1]                                  ; $4AF6: $F0 $00
    ret nz                                        ; $4AF8: $C0

    add b                                         ; $4AF9: $80
    ret nz                                        ; $4AFA: $C0

    add b                                         ; $4AFB: $80
    add b                                         ; $4AFC: $80
    nop                                           ; $4AFD: $00
    add b                                         ; $4AFE: $80
    nop                                           ; $4AFF: $00
    nop                                           ; $4B00: $00
    nop                                           ; $4B01: $00
    nop                                           ; $4B02: $00
    nop                                           ; $4B03: $00
    nop                                           ; $4B04: $00
    nop                                           ; $4B05: $00
    nop                                           ; $4B06: $00
    nop                                           ; $4B07: $00
    nop                                           ; $4B08: $00
    nop                                           ; $4B09: $00
    nop                                           ; $4B0A: $00
    nop                                           ; $4B0B: $00
    nop                                           ; $4B0C: $00
    nop                                           ; $4B0D: $00
    nop                                           ; $4B0E: $00
    nop                                           ; $4B0F: $00
    add b                                         ; $4B10: $80
    nop                                           ; $4B11: $00
    nop                                           ; $4B12: $00
    nop                                           ; $4B13: $00
    nop                                           ; $4B14: $00
    nop                                           ; $4B15: $00
    jr jr_019_4B18                                ; $4B16: $18 $00

jr_019_4B18:
    inc d                                         ; $4B18: $14
    ld [$040E], sp                                ; $4B19: $08 $0E $04
    ld b, $00                                     ; $4B1C: $06 $00
    ld bc, $0300                                  ; $4B1E: $01 $00 $03
    inc bc                                        ; $4B21: $03
    ld [bc], a                                    ; $4B22: $02
    inc bc                                        ; $4B23: $03
    ld sp, $2901                                  ; $4B24: $31 $01 $29
    ld de, $0B1F                                  ; $4B27: $11 $1F $0B
    ld c, $03                                     ; $4B2A: $0E $03
    inc bc                                        ; $4B2C: $03
    ld bc, $0000                                  ; $4B2D: $01 $00 $00
    ld a, a                                       ; $4B30: $7F
    nop                                           ; $4B31: $00
    ld a, [$FA07]                                 ; $4B32: $FA $07 $FA
    rlca                                          ; $4B35: $07
    rst RST_38                                    ; $4B36: $FF
    rlca                                          ; $4B37: $07
    ld a, a                                       ; $4B38: $7F
    nop                                           ; $4B39: $00
    nop                                           ; $4B3A: $00
    nop                                           ; $4B3B: $00
    nop                                           ; $4B3C: $00
    nop                                           ; $4B3D: $00
    ld bc, $1000                                  ; $4B3E: $01 $00 $10
    db $10                                        ; $4B41: $10
    sub b                                         ; $4B42: $90
    sub b                                         ; $4B43: $90
    ld l, b                                       ; $4B44: $68
    ld hl, sp+$28                                 ; $4B45: $F8 $28
    ld hl, sp-$78                                 ; $4B47: $F8 $88
    ld hl, sp-$7C                                 ; $4B49: $F8 $84
    db $FC                                        ; $4B4B: $FC
    inc a                                         ; $4B4C: $3C
    ret nz                                        ; $4B4D: $C0

    cp d                                          ; $4B4E: $BA
    call c, $06FD                                 ; $4B4F: $DC $FD $06
    dec c                                         ; $4B52: $0D
    or $0D                                        ; $4B53: $F6 $0D
    or $FD                                        ; $4B55: $F6 $FD
    or $FF                                        ; $4B57: $F6 $FF
    nop                                           ; $4B59: $00
    ld e, $0D                                     ; $4B5A: $1E $0D
    rst RST_38                                    ; $4B5C: $FF
    nop                                           ; $4B5D: $00
    rst RST_38                                    ; $4B5E: $FF
    rst RST_18                                    ; $4B5F: $DF
    ld a, a                                       ; $4B60: $7F
    nop                                           ; $4B61: $00
    ld c, b                                       ; $4B62: $48
    scf                                           ; $4B63: $37
    ld c, b                                       ; $4B64: $48
    scf                                           ; $4B65: $37
    rst RST_38                                    ; $4B66: $FF
    nop                                           ; $4B67: $00
    add hl, bc                                    ; $4B68: $09
    or $17                                        ; $4B69: $F6 $17
    add sp, -$11                                  ; $4B6B: $E8 $EF
    rst RST_10                                    ; $4B6D: $D7
    rst RST_18                                    ; $4B6E: $DF
    cpl                                           ; $4B6F: $2F
    ld e, a                                       ; $4B70: $5F
    xor a                                         ; $4B71: $AF
    rst RST_38                                    ; $4B72: $FF
    nop                                           ; $4B73: $00
    rst RST_38                                    ; $4B74: $FF
    rst RST_30                                    ; $4B75: $F7
    rst RST_38                                    ; $4B76: $FF
    rst RST_28                                    ; $4B77: $EF
    rst RST_38                                    ; $4B78: $FF
    rrca                                          ; $4B79: $0F
    rst RST_38                                    ; $4B7A: $FF
    ldh [rIE], a                                  ; $4B7B: $E0 $FF
    ldh [$FFF0], a                                ; $4B7D: $E0 $F0
    rst RST_28                                    ; $4B7F: $EF
    ldh [rP1], a                                  ; $4B80: $E0 $00
    db $10                                        ; $4B82: $10
    ldh [rNR34], a                                ; $4B83: $E0 $1E
    ldh [rSB], a                                  ; $4B85: $E0 $01
    cp $1F                                        ; $4B87: $FE $1F
    ldh [rIE], a                                  ; $4B89: $E0 $FF
    nop                                           ; $4B8B: $00
    rst RST_38                                    ; $4B8C: $FF
    cp [hl]                                       ; $4B8D: $BE
    rst RST_38                                    ; $4B8E: $FF
    ld a, [hl]                                    ; $4B8F: $7E
    rst RST_38                                    ; $4B90: $FF
    ld a, [hl]                                    ; $4B91: $7E
    rst RST_38                                    ; $4B92: $FF
    nop                                           ; $4B93: $00
    rst RST_38                                    ; $4B94: $FF
    cp a                                          ; $4B95: $BF
    rst RST_38                                    ; $4B96: $FF
    ld a, a                                       ; $4B97: $7F
    rst RST_38                                    ; $4B98: $FF
    ld a, a                                       ; $4B99: $7F
    rst RST_38                                    ; $4B9A: $FF
    ld a, a                                       ; $4B9B: $7F
    rst RST_38                                    ; $4B9C: $FF
    nop                                           ; $4B9D: $00
    push de                                       ; $4B9E: $D5
    ld a, [hl+]                                   ; $4B9F: $2A
    ldh a, [rP1]                                  ; $4BA0: $F0 $00
    ld hl, sp-$10                                 ; $4BA2: $F8 $F0
    ld hl, sp-$10                                 ; $4BA4: $F8 $F0
    ld hl, sp-$10                                 ; $4BA6: $F8 $F0
    cp $F0                                        ; $4BA8: $FE $F0
    rst RST_38                                    ; $4BAA: $FF
    ld c, $FF                                     ; $4BAB: $0E $FF
    cp [hl]                                       ; $4BAD: $BE
    rst RST_38                                    ; $4BAE: $FF
    cp [hl]                                       ; $4BAF: $BE
    rst RST_38                                    ; $4BB0: $FF
    cp h                                          ; $4BB1: $BC
    rst RST_38                                    ; $4BB2: $FF
    cp b                                          ; $4BB3: $B8
    db $FD                                        ; $4BB4: $FD
    ld [bc], a                                    ; $4BB5: $02
    ld d, a                                       ; $4BB6: $57
    xor b                                         ; $4BB7: $A8
    rst RST_08                                    ; $4BB8: $CF
    jr nc, jr_019_4BED                            ; $4BB9: $30 $32

    call z, Call_000_00FC                         ; $4BBB: $CC $FC $00
    nop                                           ; $4BBE: $00
    nop                                           ; $4BBF: $00
    rst RST_38                                    ; $4BC0: $FF
    cp a                                          ; $4BC1: $BF
    rst RST_38                                    ; $4BC2: $FF
    add b                                         ; $4BC3: $80
    rst RST_38                                    ; $4BC4: $FF
    rra                                           ; $4BC5: $1F
    ccf                                           ; $4BC6: $3F
    rst RST_18                                    ; $4BC7: $DF
    rst RST_38                                    ; $4BC8: $FF
    rra                                           ; $4BC9: $1F
    sbc a                                         ; $4BCA: $9F
    ld l, a                                       ; $4BCB: $6F
    rst RST_38                                    ; $4BCC: $FF
    nop                                           ; $4BCD: $00
    nop                                           ; $4BCE: $00
    nop                                           ; $4BCF: $00
    nop                                           ; $4BD0: $00
    nop                                           ; $4BD1: $00
    nop                                           ; $4BD2: $00
    nop                                           ; $4BD3: $00
    nop                                           ; $4BD4: $00
    nop                                           ; $4BD5: $00
    nop                                           ; $4BD6: $00
    nop                                           ; $4BD7: $00
    nop                                           ; $4BD8: $00
    nop                                           ; $4BD9: $00
    nop                                           ; $4BDA: $00
    nop                                           ; $4BDB: $00
    nop                                           ; $4BDC: $00
    nop                                           ; $4BDD: $00
    nop                                           ; $4BDE: $00
    nop                                           ; $4BDF: $00
    inc bc                                        ; $4BE0: $03
    ld bc, $0103                                  ; $4BE1: $01 $03 $01
    inc bc                                        ; $4BE4: $03
    nop                                           ; $4BE5: $00
    ld bc, $0100                                  ; $4BE6: $01 $00 $01
    nop                                           ; $4BE9: $00
    nop                                           ; $4BEA: $00
    nop                                           ; $4BEB: $00
    nop                                           ; $4BEC: $00

jr_019_4BED:
    nop                                           ; $4BED: $00
    nop                                           ; $4BEE: $00
    nop                                           ; $4BEF: $00
    nop                                           ; $4BF0: $00
    nop                                           ; $4BF1: $00
    nop                                           ; $4BF2: $00
    nop                                           ; $4BF3: $00
    nop                                           ; $4BF4: $00
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
    rst RST_38                                    ; $4C00: $FF
    ldh a, [$FFF8]                                ; $4C01: $F0 $F8
    rlca                                          ; $4C03: $07
    rrca                                          ; $4C04: $0F
    nop                                           ; $4C05: $00
    nop                                           ; $4C06: $00
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
    call z, Call_019_7333                         ; $4C20: $CC $33 $73
    adc h                                         ; $4C23: $8C
    rst RST_38                                    ; $4C24: $FF
    nop                                           ; $4C25: $00
    nop                                           ; $4C26: $00
    nop                                           ; $4C27: $00
    nop                                           ; $4C28: $00
    nop                                           ; $4C29: $00
    nop                                           ; $4C2A: $00
    nop                                           ; $4C2B: $00
    nop                                           ; $4C2C: $00
    nop                                           ; $4C2D: $00
    nop                                           ; $4C2E: $00
    nop                                           ; $4C2F: $00
    nop                                           ; $4C30: $00
    nop                                           ; $4C31: $00
    nop                                           ; $4C32: $00
    nop                                           ; $4C33: $00
    nop                                           ; $4C34: $00
    nop                                           ; $4C35: $00
    nop                                           ; $4C36: $00
    nop                                           ; $4C37: $00
    nop                                           ; $4C38: $00
    nop                                           ; $4C39: $00
    nop                                           ; $4C3A: $00
    nop                                           ; $4C3B: $00
    nop                                           ; $4C3C: $00
    nop                                           ; $4C3D: $00
    nop                                           ; $4C3E: $00
    nop                                           ; $4C3F: $00
    nop                                           ; $4C40: $00
    nop                                           ; $4C41: $00
    nop                                           ; $4C42: $00
    nop                                           ; $4C43: $00
    nop                                           ; $4C44: $00
    nop                                           ; $4C45: $00
    nop                                           ; $4C46: $00
    nop                                           ; $4C47: $00
    nop                                           ; $4C48: $00
    nop                                           ; $4C49: $00
    nop                                           ; $4C4A: $00
    nop                                           ; $4C4B: $00
    nop                                           ; $4C4C: $00
    nop                                           ; $4C4D: $00
    nop                                           ; $4C4E: $00
    nop                                           ; $4C4F: $00
    nop                                           ; $4C50: $00
    nop                                           ; $4C51: $00
    nop                                           ; $4C52: $00
    nop                                           ; $4C53: $00
    nop                                           ; $4C54: $00
    nop                                           ; $4C55: $00
    nop                                           ; $4C56: $00
    nop                                           ; $4C57: $00
    inc b                                         ; $4C58: $04
    ld [$040E], sp                                ; $4C59: $08 $0E $04
    ld b, $00                                     ; $4C5C: $06 $00
    ld bc, $C000                                  ; $4C5E: $01 $00 $C0
    nop                                           ; $4C61: $00
    and b                                         ; $4C62: $A0
    ld b, b                                       ; $4C63: $40
    ld [hl], b                                    ; $4C64: $70
    jr nz, jr_019_4C97                            ; $4C65: $20 $30

    nop                                           ; $4C67: $00
    ld [$0000], sp                                ; $4C68: $08 $00 $00
    nop                                           ; $4C6B: $00
    nop                                           ; $4C6C: $00
    nop                                           ; $4C6D: $00
    ld bc, $7F00                                  ; $4C6E: $01 $00 $7F
    nop                                           ; $4C71: $00
    ld a, [$FA07]                                 ; $4C72: $FA $07 $FA
    rlca                                          ; $4C75: $07
    rst RST_38                                    ; $4C76: $FF
    rlca                                          ; $4C77: $07
    ld a, a                                       ; $4C78: $7F
    nop                                           ; $4C79: $00
    nop                                           ; $4C7A: $00
    nop                                           ; $4C7B: $00
    nop                                           ; $4C7C: $00
    nop                                           ; $4C7D: $00
    ld bc, $0000                                  ; $4C7E: $01 $00 $00
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
    inc a                                         ; $4C8C: $3C
    nop                                           ; $4C8D: $00
    cp d                                          ; $4C8E: $BA
    inc e                                         ; $4C8F: $1C
    db $FD                                        ; $4C90: $FD
    ld b, $0D                                     ; $4C91: $06 $0D
    or $0D                                        ; $4C93: $F6 $0D
    or $FD                                        ; $4C95: $F6 $FD

jr_019_4C97:
    or $FF                                        ; $4C97: $F6 $FF
    nop                                           ; $4C99: $00
    ld e, $0D                                     ; $4C9A: $1E $0D
    rst RST_38                                    ; $4C9C: $FF
    nop                                           ; $4C9D: $00
    rst RST_38                                    ; $4C9E: $FF
    rst RST_18                                    ; $4C9F: $DF
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
    ld c, $00                                     ; $4CB8: $0E $00
    rla                                           ; $4CBA: $17
    ld c, $0E                                     ; $4CBB: $0E $0E
    nop                                           ; $4CBD: $00
    nop                                           ; $4CBE: $00
    nop                                           ; $4CBF: $00
    nop                                           ; $4CC0: $00
    nop                                           ; $4CC1: $00
    nop                                           ; $4CC2: $00
    nop                                           ; $4CC3: $00
    inc b                                         ; $4CC4: $04
    inc b                                         ; $4CC5: $04
    inc bc                                        ; $4CC6: $03
    inc bc                                        ; $4CC7: $03
    ld [bc], a                                    ; $4CC8: $02
    inc bc                                        ; $4CC9: $03
    ld bc, $0F01                                  ; $4CCA: $01 $01 $0F
    rrca                                          ; $4CCD: $0F
    jr nc, jr_019_4D0F                            ; $4CCE: $30 $3F

    ld c, $0F                                     ; $4CD0: $0E $0F
    ld bc, $0001                                  ; $4CD2: $01 $01 $00
    nop                                           ; $4CD5: $00
    nop                                           ; $4CD6: $00
    nop                                           ; $4CD7: $00
    ld c, $00                                     ; $4CD8: $0E $00
    sub a                                         ; $4CDA: $97
    ld c, $0E                                     ; $4CDB: $0E $0E
    nop                                           ; $4CDD: $00
    nop                                           ; $4CDE: $00
    nop                                           ; $4CDF: $00
    nop                                           ; $4CE0: $00
    nop                                           ; $4CE1: $00
    nop                                           ; $4CE2: $00
    nop                                           ; $4CE3: $00
    ld b, b                                       ; $4CE4: $40
    ld b, b                                       ; $4CE5: $40
    jr nz, jr_019_4D08                            ; $4CE6: $20 $20

    db $F4                                        ; $4CE8: $F4
    db $F4                                        ; $4CE9: $F4
    inc l                                         ; $4CEA: $2C
    db $FC                                        ; $4CEB: $FC
    inc b                                         ; $4CEC: $04
    db $FC                                        ; $4CED: $FC
    ld [bc], a                                    ; $4CEE: $02
    cp $7F                                        ; $4CEF: $FE $7F
    add b                                         ; $4CF1: $80
    ld a, [$FA07]                                 ; $4CF2: $FA $07 $FA
    rlca                                          ; $4CF5: $07
    rst RST_38                                    ; $4CF6: $FF
    rlca                                          ; $4CF7: $07
    ld a, a                                       ; $4CF8: $7F
    nop                                           ; $4CF9: $00
    adc e                                         ; $4CFA: $8B
    rlca                                          ; $4CFB: $07
    rlca                                          ; $4CFC: $07
    nop                                           ; $4CFD: $00
    ld bc, $0000                                  ; $4CFE: $01 $00 $00
    nop                                           ; $4D01: $00
    nop                                           ; $4D02: $00
    nop                                           ; $4D03: $00
    nop                                           ; $4D04: $00
    nop                                           ; $4D05: $00
    nop                                           ; $4D06: $00
    nop                                           ; $4D07: $00

jr_019_4D08:
    nop                                           ; $4D08: $00
    nop                                           ; $4D09: $00
    nop                                           ; $4D0A: $00
    nop                                           ; $4D0B: $00
    inc a                                         ; $4D0C: $3C
    nop                                           ; $4D0D: $00
    ld a, [hl-]                                   ; $4D0E: $3A

jr_019_4D0F:
    inc e                                         ; $4D0F: $1C
    db $FD                                        ; $4D10: $FD
    ld b, $0D                                     ; $4D11: $06 $0D
    or $0D                                        ; $4D13: $F6 $0D
    or $FD                                        ; $4D15: $F6 $FD
    or $FF                                        ; $4D17: $F6 $FF
    nop                                           ; $4D19: $00
    sbc $0D                                       ; $4D1A: $DE $0D
    rst RST_38                                    ; $4D1C: $FF
    nop                                           ; $4D1D: $00
    rst RST_38                                    ; $4D1E: $FF
    rst RST_18                                    ; $4D1F: $DF
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
    nop                                           ; $4D32: $00
    nop                                           ; $4D33: $00
    nop                                           ; $4D34: $00
    nop                                           ; $4D35: $00
    nop                                           ; $4D36: $00
    nop                                           ; $4D37: $00
    nop                                           ; $4D38: $00
    nop                                           ; $4D39: $00
    pop hl                                        ; $4D3A: $E1
    ld h, b                                       ; $4D3B: $60
    nop                                           ; $4D3C: $00
    nop                                           ; $4D3D: $00
    nop                                           ; $4D3E: $00
    nop                                           ; $4D3F: $00
    nop                                           ; $4D40: $00
    nop                                           ; $4D41: $00
    nop                                           ; $4D42: $00
    nop                                           ; $4D43: $00
    nop                                           ; $4D44: $00
    nop                                           ; $4D45: $00
    nop                                           ; $4D46: $00
    nop                                           ; $4D47: $00
    nop                                           ; $4D48: $00
    nop                                           ; $4D49: $00
    nop                                           ; $4D4A: $00
    nop                                           ; $4D4B: $00
    nop                                           ; $4D4C: $00
    nop                                           ; $4D4D: $00
    nop                                           ; $4D4E: $00
    nop                                           ; $4D4F: $00
    nop                                           ; $4D50: $00
    nop                                           ; $4D51: $00
    nop                                           ; $4D52: $00
    nop                                           ; $4D53: $00
    nop                                           ; $4D54: $00
    nop                                           ; $4D55: $00
    nop                                           ; $4D56: $00
    nop                                           ; $4D57: $00
    ret nz                                        ; $4D58: $C0

    nop                                           ; $4D59: $00
    ld [hl], c                                    ; $4D5A: $71
    ret nz                                        ; $4D5B: $C0

jr_019_4D5C:
    ret nz                                        ; $4D5C: $C0

    nop                                           ; $4D5D: $00
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
    nop                                           ; $4D6E: $00
    nop                                           ; $4D6F: $00
    ld a, a                                       ; $4D70: $7F
    nop                                           ; $4D71: $00
    ld a, [$FA07]                                 ; $4D72: $FA $07 $FA
    rlca                                          ; $4D75: $07
    rst RST_38                                    ; $4D76: $FF
    rlca                                          ; $4D77: $07
    rst RST_38                                    ; $4D78: $FF
    nop                                           ; $4D79: $00
    jr c, jr_019_4D5C                             ; $4D7A: $38 $E0

    ldh [rP1], a                                  ; $4D7C: $E0 $00
    ld bc, $0000                                  ; $4D7E: $01 $00 $00
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
    inc a                                         ; $4D8C: $3C
    nop                                           ; $4D8D: $00
    ld a, [hl-]                                   ; $4D8E: $3A
    inc e                                         ; $4D8F: $1C
    db $FD                                        ; $4D90: $FD
    ld b, $0D                                     ; $4D91: $06 $0D
    or $0D                                        ; $4D93: $F6 $0D
    or $FD                                        ; $4D95: $F6 $FD
    or $FF                                        ; $4D97: $F6 $FF
    nop                                           ; $4D99: $00
    ld a, $0D                                     ; $4D9A: $3E $0D
    rst RST_38                                    ; $4D9C: $FF
    nop                                           ; $4D9D: $00
    rst RST_38                                    ; $4D9E: $FF
    rst RST_18                                    ; $4D9F: $DF
    nop                                           ; $4DA0: $00
    nop                                           ; $4DA1: $00
    nop                                           ; $4DA2: $00
    nop                                           ; $4DA3: $00
    nop                                           ; $4DA4: $00
    nop                                           ; $4DA5: $00
    nop                                           ; $4DA6: $00
    nop                                           ; $4DA7: $00
    ld bc, $0300                                  ; $4DA8: $01 $00 $03
    ld bc, $030F                                  ; $4DAB: $01 $0F $03
    inc a                                         ; $4DAE: $3C
    rrca                                          ; $4DAF: $0F
    ld [hl], b                                    ; $4DB0: $70
    ccf                                           ; $4DB1: $3F
    ret nz                                        ; $4DB2: $C0

    ld a, a                                       ; $4DB3: $7F
    ld [hl], b                                    ; $4DB4: $70
    ccf                                           ; $4DB5: $3F
    inc a                                         ; $4DB6: $3C
    rrca                                          ; $4DB7: $0F
    rrca                                          ; $4DB8: $0F
    inc bc                                        ; $4DB9: $03
    inc bc                                        ; $4DBA: $03
    ld bc, $0001                                  ; $4DBB: $01 $01 $00
    nop                                           ; $4DBE: $00

jr_019_4DBF:
    nop                                           ; $4DBF: $00
    pop hl                                        ; $4DC0: $E1

jr_019_4DC1:
    sbc a                                         ; $4DC1: $9F
    pop af                                        ; $4DC2: $F1

jr_019_4DC3:
    rst RST_28                                    ; $4DC3: $EF
    jr c, @-$07                                   ; $4DC4: $38 $F7

    jr jr_019_4DBF                                ; $4DC6: $18 $F7

    jr jr_019_4DC1                                ; $4DC8: $18 $F7

    jr jr_019_4DC3                                ; $4DCA: $18 $F7

    jr c, @-$07                                   ; $4DCC: $38 $F7

    pop af                                        ; $4DCE: $F1
    rst RST_28                                    ; $4DCF: $EF
    pop hl                                        ; $4DD0: $E1
    sbc a                                         ; $4DD1: $9F
    rst RST_38                                    ; $4DD2: $FF
    ld a, [hl]                                    ; $4DD3: $7E
    ld a, a                                       ; $4DD4: $7F
    nop                                           ; $4DD5: $00
    inc bc                                        ; $4DD6: $03
    ld bc, $0103                                  ; $4DD7: $01 $03 $01
    inc bc                                        ; $4DDA: $03
    nop                                           ; $4DDB: $00
    ld bc, $0100                                  ; $4DDC: $01 $00 $01
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
    add b                                         ; $4DEA: $80
    nop                                           ; $4DEB: $00
    sbc [hl]                                      ; $4DEC: $9E
    nop                                           ; $4DED: $00
    db $DD                                        ; $4DEE: $DD
    adc [hl]                                      ; $4DEF: $8E
    cp $83                                        ; $4DF0: $FE $83
    add $BB                                       ; $4DF2: $C6 $BB
    add $BB                                       ; $4DF4: $C6 $BB
    cp $BB                                        ; $4DF6: $FE $BB
    rst RST_38                                    ; $4DF8: $FF
    nop                                           ; $4DF9: $00
    sbc a                                         ; $4DFA: $9F
    inc c                                         ; $4DFB: $0C
    rst RST_38                                    ; $4DFC: $FF
    nop                                           ; $4DFD: $00
    rst RST_38                                    ; $4DFE: $FF
    rst RST_18                                    ; $4DFF: $DF
    nop                                           ; $4E00: $00
    nop                                           ; $4E01: $00
    nop                                           ; $4E02: $00
    nop                                           ; $4E03: $00
    nop                                           ; $4E04: $00
    nop                                           ; $4E05: $00
    nop                                           ; $4E06: $00
    nop                                           ; $4E07: $00
    nop                                           ; $4E08: $00
    nop                                           ; $4E09: $00
    ccf                                           ; $4E0A: $3F
    nop                                           ; $4E0B: $00
    inc h                                         ; $4E0C: $24
    dec de                                        ; $4E0D: $1B
    inc h                                         ; $4E0E: $24
    dec de                                        ; $4E0F: $1B
    rst RST_38                                    ; $4E10: $FF
    nop                                           ; $4E11: $00
    add h                                         ; $4E12: $84
    ld a, e                                       ; $4E13: $7B
    adc a                                         ; $4E14: $8F
    ld [hl], b                                    ; $4E15: $70
    rst RST_38                                    ; $4E16: $FF
    ld h, a                                       ; $4E17: $67
    rst RST_38                                    ; $4E18: $FF
    rrca                                          ; $4E19: $0F
    ccf                                           ; $4E1A: $3F
    rst RST_08                                    ; $4E1B: $CF
    rst RST_38                                    ; $4E1C: $FF
    nop                                           ; $4E1D: $00
    rst RST_38                                    ; $4E1E: $FF
    rst RST_30                                    ; $4E1F: $F7
    nop                                           ; $4E20: $00
    nop                                           ; $4E21: $00
    nop                                           ; $4E22: $00
    nop                                           ; $4E23: $00
    nop                                           ; $4E24: $00
    nop                                           ; $4E25: $00
    nop                                           ; $4E26: $00
    nop                                           ; $4E27: $00
    nop                                           ; $4E28: $00
    nop                                           ; $4E29: $00
    ldh a, [rP1]                                  ; $4E2A: $F0 $00
    ld [$0FF0], sp                                ; $4E2C: $08 $F0 $0F
    ldh a, [$FF80]                                ; $4E2F: $F0 $80
    ld a, a                                       ; $4E31: $7F
    sbc a                                         ; $4E32: $9F
    ld h, b                                       ; $4E33: $60
    rst RST_38                                    ; $4E34: $FF
    nop                                           ; $4E35: $00
    rst RST_38                                    ; $4E36: $FF
    cp [hl]                                       ; $4E37: $BE
    rst RST_38                                    ; $4E38: $FF
    ld a, [hl]                                    ; $4E39: $7E
    rst RST_38                                    ; $4E3A: $FF
    ld a, [hl]                                    ; $4E3B: $7E
    rst RST_38                                    ; $4E3C: $FF
    nop                                           ; $4E3D: $00
    rst RST_38                                    ; $4E3E: $FF
    cp a                                          ; $4E3F: $BF
    nop                                           ; $4E40: $00
    nop                                           ; $4E41: $00
    nop                                           ; $4E42: $00
    nop                                           ; $4E43: $00
    nop                                           ; $4E44: $00
    nop                                           ; $4E45: $00
    nop                                           ; $4E46: $00
    nop                                           ; $4E47: $00
    nop                                           ; $4E48: $00
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
    ld a, [hl]                                    ; $4E5C: $7E
    nop                                           ; $4E5D: $00
    rst RST_38                                    ; $4E5E: $FF
    ld a, [hl]                                    ; $4E5F: $7E
    rst RST_38                                    ; $4E60: $FF
    cp a                                          ; $4E61: $BF
    rst RST_38                                    ; $4E62: $FF
    add b                                         ; $4E63: $80
    rst RST_38                                    ; $4E64: $FF
    rra                                           ; $4E65: $1F
    ccf                                           ; $4E66: $3F
    rst RST_18                                    ; $4E67: $DF
    rst RST_38                                    ; $4E68: $FF
    rra                                           ; $4E69: $1F
    sbc a                                         ; $4E6A: $9F
    ld l, a                                       ; $4E6B: $6F
    rst RST_38                                    ; $4E6C: $FF
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
    rst RST_28                                    ; $4E81: $EF
    rst RST_38                                    ; $4E82: $FF
    rrca                                          ; $4E83: $0F
    rst RST_38                                    ; $4E84: $FF
    ldh [rIE], a                                  ; $4E85: $E0 $FF
    ldh [$FFF0], a                                ; $4E87: $E0 $F0
    rst RST_28                                    ; $4E89: $EF
    rst RST_38                                    ; $4E8A: $FF
    ldh a, [$FFF8]                                ; $4E8B: $F0 $F8
    rlca                                          ; $4E8D: $07
    rrca                                          ; $4E8E: $0F
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
    rst RST_38                                    ; $4EA0: $FF
    ld a, a                                       ; $4EA1: $7F
    rst RST_38                                    ; $4EA2: $FF
    ld a, a                                       ; $4EA3: $7F
    rst RST_38                                    ; $4EA4: $FF
    ld a, a                                       ; $4EA5: $7F
    rst RST_38                                    ; $4EA6: $FF
    nop                                           ; $4EA7: $00
    push de                                       ; $4EA8: $D5
    ld a, [hl+]                                   ; $4EA9: $2A
    call z, Call_019_7333                         ; $4EAA: $CC $33 $73
    adc h                                         ; $4EAD: $8C
    rst RST_38                                    ; $4EAE: $FF
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
    nop                                           ; $4EBA: $00
    nop                                           ; $4EBB: $00
    nop                                           ; $4EBC: $00
    nop                                           ; $4EBD: $00
    nop                                           ; $4EBE: $00
    nop                                           ; $4EBF: $00
    add b                                         ; $4EC0: $80
    nop                                           ; $4EC1: $00
    ldh a, [rP1]                                  ; $4EC2: $F0 $00
    ld hl, sp-$10                                 ; $4EC4: $F8 $F0
    ld hl, sp-$10                                 ; $4EC6: $F8 $F0
    ld hl, sp-$10                                 ; $4EC8: $F8 $F0
    cp $F0                                        ; $4ECA: $FE $F0
    rst RST_38                                    ; $4ECC: $FF
    ld c, $FF                                     ; $4ECD: $0E $FF
    cp [hl]                                       ; $4ECF: $BE
    rst RST_38                                    ; $4ED0: $FF
    cp [hl]                                       ; $4ED1: $BE
    rst RST_38                                    ; $4ED2: $FF
    cp h                                          ; $4ED3: $BC
    rst RST_38                                    ; $4ED4: $FF
    cp b                                          ; $4ED5: $B8
    db $FD                                        ; $4ED6: $FD
    ld [bc], a                                    ; $4ED7: $02
    ld d, a                                       ; $4ED8: $57
    xor b                                         ; $4ED9: $A8
    rst RST_08                                    ; $4EDA: $CF
    jr nc, jr_019_4F0F                            ; $4EDB: $30 $32

    call z, Call_000_00FC                         ; $4EDD: $CC $FC $00
    inc bc                                        ; $4EE0: $03
    ld bc, $0103                                  ; $4EE1: $01 $03 $01
    inc bc                                        ; $4EE4: $03
    nop                                           ; $4EE5: $00
    ld bc, $0100                                  ; $4EE6: $01 $00 $01
    nop                                           ; $4EE9: $00
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
    nop                                           ; $4F06: $00
    nop                                           ; $4F07: $00
    nop                                           ; $4F08: $00
    nop                                           ; $4F09: $00
    nop                                           ; $4F0A: $00
    nop                                           ; $4F0B: $00
    nop                                           ; $4F0C: $00
    nop                                           ; $4F0D: $00
    nop                                           ; $4F0E: $00

jr_019_4F0F:
    nop                                           ; $4F0F: $00
    nop                                           ; $4F10: $00
    nop                                           ; $4F11: $00
    nop                                           ; $4F12: $00
    nop                                           ; $4F13: $00
    nop                                           ; $4F14: $00
    nop                                           ; $4F15: $00
    rlca                                          ; $4F16: $07
    rlca                                          ; $4F17: $07
    jr c, @+$41                                   ; $4F18: $38 $3F

    ret nz                                        ; $4F1A: $C0

    rst RST_38                                    ; $4F1B: $FF
    jr c, jr_019_4F5D                             ; $4F1C: $38 $3F

    rlca                                          ; $4F1E: $07
    rlca                                          ; $4F1F: $07
    nop                                           ; $4F20: $00
    nop                                           ; $4F21: $00
    nop                                           ; $4F22: $00
    nop                                           ; $4F23: $00
    nop                                           ; $4F24: $00
    nop                                           ; $4F25: $00
    nop                                           ; $4F26: $00
    nop                                           ; $4F27: $00
    nop                                           ; $4F28: $00
    nop                                           ; $4F29: $00
    nop                                           ; $4F2A: $00
    nop                                           ; $4F2B: $00
    nop                                           ; $4F2C: $00
    nop                                           ; $4F2D: $00
    nop                                           ; $4F2E: $00
    nop                                           ; $4F2F: $00
    nop                                           ; $4F30: $00
    nop                                           ; $4F31: $00
    ccf                                           ; $4F32: $3F
    ccf                                           ; $4F33: $3F
    ret nz                                        ; $4F34: $C0

    rst RST_38                                    ; $4F35: $FF
    nop                                           ; $4F36: $00
    rst RST_38                                    ; $4F37: $FF
    dec b                                         ; $4F38: $05
    rst RST_38                                    ; $4F39: $FF
    nop                                           ; $4F3A: $00
    rst RST_38                                    ; $4F3B: $FF

Jump_019_4F3C:
    ret nz                                        ; $4F3C: $C0

    rst RST_38                                    ; $4F3D: $FF
    ccf                                           ; $4F3E: $3F
    ccf                                           ; $4F3F: $3F
    ldh [$FFE0], a                                ; $4F40: $E0 $E0
    rra                                           ; $4F42: $1F
    db $FC                                        ; $4F43: $FC
    ccf                                           ; $4F44: $3F
    cp $FF                                        ; $4F45: $FE $FF
    rst RST_38                                    ; $4F47: $FF
    ccf                                           ; $4F48: $3F
    cp $1F                                        ; $4F49: $FE $1F
    db $FC                                        ; $4F4B: $FC
    ldh [$FFE0], a                                ; $4F4C: $E0 $E0
    nop                                           ; $4F4E: $00
    nop                                           ; $4F4F: $00
    ld bc, $0300                                  ; $4F50: $01 $00 $03
    ld bc, $0103                                  ; $4F53: $01 $03 $01
    inc bc                                        ; $4F56: $03
    nop                                           ; $4F57: $00
    ld bc, $0100                                  ; $4F58: $01 $00 $01
    nop                                           ; $4F5B: $00
    nop                                           ; $4F5C: $00

jr_019_4F5D:
    nop                                           ; $4F5D: $00
    nop                                           ; $4F5E: $00
    nop                                           ; $4F5F: $00
    rlca                                          ; $4F60: $07
    nop                                           ; $4F61: $00
    rlca                                          ; $4F62: $07
    inc bc                                        ; $4F63: $03
    rst RST_38                                    ; $4F64: $FF
    nop                                           ; $4F65: $00
    ld b, c                                       ; $4F66: $41
    cp $41                                        ; $4F67: $FE $41
    cp $FF                                        ; $4F69: $FE $FF
    cp $FF                                        ; $4F6B: $FE $FF
    nop                                           ; $4F6D: $00
    rra                                           ; $4F6E: $1F
    inc c                                         ; $4F6F: $0C
    rst RST_38                                    ; $4F70: $FF
    nop                                           ; $4F71: $00
    rst RST_38                                    ; $4F72: $FF
    rst RST_18                                    ; $4F73: $DF
    rst RST_38                                    ; $4F74: $FF
    cp a                                          ; $4F75: $BF
    rst RST_38                                    ; $4F76: $FF
    add b                                         ; $4F77: $80
    rst RST_38                                    ; $4F78: $FF
    rra                                           ; $4F79: $1F
    ccf                                           ; $4F7A: $3F
    rst RST_18                                    ; $4F7B: $DF
    rst RST_38                                    ; $4F7C: $FF
    rra                                           ; $4F7D: $1F
    sbc a                                         ; $4F7E: $9F
    ld l, a                                       ; $4F7F: $6F
    ccf                                           ; $4F80: $3F
    nop                                           ; $4F81: $00
    and h                                         ; $4F82: $A4
    dec de                                        ; $4F83: $1B
    ld h, h                                       ; $4F84: $64
    sbc e                                         ; $4F85: $9B
    cp a                                          ; $4F86: $BF
    ret nz                                        ; $4F87: $C0

    and h                                         ; $4F88: $A4
    db $DB                                        ; $4F89: $DB
    xor a                                         ; $4F8A: $AF
    ret nc                                        ; $4F8B: $D0

    cp a                                          ; $4F8C: $BF
    rst RST_00                                    ; $4F8D: $C7
    rst RST_38                                    ; $4F8E: $FF
    rrca                                          ; $4F8F: $0F
    ccf                                           ; $4F90: $3F
    rst RST_08                                    ; $4F91: $CF
    rst RST_38                                    ; $4F92: $FF
    nop                                           ; $4F93: $00
    rst RST_38                                    ; $4F94: $FF
    rst RST_30                                    ; $4F95: $F7
    rst RST_38                                    ; $4F96: $FF
    rst RST_28                                    ; $4F97: $EF
    rst RST_38                                    ; $4F98: $FF
    rrca                                          ; $4F99: $0F
    rst RST_38                                    ; $4F9A: $FF
    ldh [rIE], a                                  ; $4F9B: $E0 $FF
    ldh [$FFF0], a                                ; $4F9D: $E0 $F0
    rst RST_28                                    ; $4F9F: $EF
    ldh a, [rP1]                                  ; $4FA0: $F0 $00
    ld [$0FF0], sp                                ; $4FA2: $08 $F0 $0F
    ldh a, [$FF80]                                ; $4FA5: $F0 $80
    ld a, a                                       ; $4FA7: $7F
    sbc a                                         ; $4FA8: $9F
    ld h, b                                       ; $4FA9: $60
    rst RST_38                                    ; $4FAA: $FF
    nop                                           ; $4FAB: $00
    rst RST_38                                    ; $4FAC: $FF
    cp [hl]                                       ; $4FAD: $BE
    rst RST_38                                    ; $4FAE: $FF
    ld a, [hl]                                    ; $4FAF: $7E
    rst RST_38                                    ; $4FB0: $FF
    ld a, [hl]                                    ; $4FB1: $7E
    rst RST_38                                    ; $4FB2: $FF
    nop                                           ; $4FB3: $00
    rst RST_38                                    ; $4FB4: $FF
    cp a                                          ; $4FB5: $BF
    rst RST_38                                    ; $4FB6: $FF
    ld a, a                                       ; $4FB7: $7F
    rst RST_38                                    ; $4FB8: $FF
    ld a, a                                       ; $4FB9: $7F
    rst RST_38                                    ; $4FBA: $FF
    ld a, a                                       ; $4FBB: $7F
    rst RST_38                                    ; $4FBC: $FF
    nop                                           ; $4FBD: $00
    push de                                       ; $4FBE: $D5
    ld a, [hl+]                                   ; $4FBF: $2A
    add b                                         ; $4FC0: $80
    nop                                           ; $4FC1: $00
    ldh a, [rP1]                                  ; $4FC2: $F0 $00
    ld hl, sp-$10                                 ; $4FC4: $F8 $F0
    ld hl, sp-$10                                 ; $4FC6: $F8 $F0
    ld hl, sp-$10                                 ; $4FC8: $F8 $F0
    cp $F0                                        ; $4FCA: $FE $F0
    rst RST_38                                    ; $4FCC: $FF
    ld c, $FF                                     ; $4FCD: $0E $FF
    cp [hl]                                       ; $4FCF: $BE
    rst RST_38                                    ; $4FD0: $FF
    cp [hl]                                       ; $4FD1: $BE
    rst RST_38                                    ; $4FD2: $FF
    cp h                                          ; $4FD3: $BC
    rst RST_38                                    ; $4FD4: $FF
    cp b                                          ; $4FD5: $B8
    db $FD                                        ; $4FD6: $FD
    ld [bc], a                                    ; $4FD7: $02
    ld d, a                                       ; $4FD8: $57
    xor b                                         ; $4FD9: $A8
    rst RST_08                                    ; $4FDA: $CF
    jr nc, jr_019_500F                            ; $4FDB: $30 $32

    call z, Call_000_00FC                         ; $4FDD: $CC $FC $00
    rst RST_38                                    ; $4FE0: $FF
    nop                                           ; $4FE1: $00
    nop                                           ; $4FE2: $00
    nop                                           ; $4FE3: $00
    nop                                           ; $4FE4: $00
    nop                                           ; $4FE5: $00
    nop                                           ; $4FE6: $00
    nop                                           ; $4FE7: $00
    nop                                           ; $4FE8: $00
    nop                                           ; $4FE9: $00
    nop                                           ; $4FEA: $00
    nop                                           ; $4FEB: $00
    nop                                           ; $4FEC: $00
    nop                                           ; $4FED: $00
    nop                                           ; $4FEE: $00
    nop                                           ; $4FEF: $00
    nop                                           ; $4FF0: $00
    nop                                           ; $4FF1: $00
    nop                                           ; $4FF2: $00
    nop                                           ; $4FF3: $00
    nop                                           ; $4FF4: $00
    nop                                           ; $4FF5: $00
    nop                                           ; $4FF6: $00
    nop                                           ; $4FF7: $00
    nop                                           ; $4FF8: $00
    nop                                           ; $4FF9: $00
    nop                                           ; $4FFA: $00
    nop                                           ; $4FFB: $00
    nop                                           ; $4FFC: $00
    nop                                           ; $4FFD: $00
    nop                                           ; $4FFE: $00
    nop                                           ; $4FFF: $00
    rst RST_38                                    ; $5000: $FF
    ldh a, [$FFF8]                                ; $5001: $F0 $F8
    rlca                                          ; $5003: $07
    rrca                                          ; $5004: $0F
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

jr_019_500F:
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
    nop                                           ; $5019: $00
    nop                                           ; $501A: $00
    nop                                           ; $501B: $00
    nop                                           ; $501C: $00
    nop                                           ; $501D: $00
    nop                                           ; $501E: $00
    nop                                           ; $501F: $00
    call z, Call_019_7333                         ; $5020: $CC $33 $73
    adc h                                         ; $5023: $8C
    rst RST_38                                    ; $5024: $FF
    nop                                           ; $5025: $00
    nop                                           ; $5026: $00
    nop                                           ; $5027: $00
    nop                                           ; $5028: $00
    nop                                           ; $5029: $00
    nop                                           ; $502A: $00
    nop                                           ; $502B: $00
    nop                                           ; $502C: $00
    nop                                           ; $502D: $00
    nop                                           ; $502E: $00
    nop                                           ; $502F: $00
    nop                                           ; $5030: $00
    nop                                           ; $5031: $00
    nop                                           ; $5032: $00
    nop                                           ; $5033: $00
    nop                                           ; $5034: $00
    nop                                           ; $5035: $00
    nop                                           ; $5036: $00
    nop                                           ; $5037: $00
    nop                                           ; $5038: $00
    nop                                           ; $5039: $00
    nop                                           ; $503A: $00
    nop                                           ; $503B: $00
    nop                                           ; $503C: $00
    nop                                           ; $503D: $00
    nop                                           ; $503E: $00
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
    db $FD                                        ; $5055: $FD
    nop                                           ; $5056: $00
    nop                                           ; $5057: $00
    nop                                           ; $5058: $00
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
    and b                                         ; $5075: $A0
    nop                                           ; $5076: $00
    nop                                           ; $5077: $00
    nop                                           ; $5078: $00
    nop                                           ; $5079: $00
    nop                                           ; $507A: $00
    nop                                           ; $507B: $00
    nop                                           ; $507C: $00
    nop                                           ; $507D: $00
    nop                                           ; $507E: $00
    nop                                           ; $507F: $00
    nop                                           ; $5080: $00
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
    ccf                                           ; $5090: $3F
    nop                                           ; $5091: $00
    ld a, l                                       ; $5092: $7D
    inc bc                                        ; $5093: $03
    ld a, l                                       ; $5094: $7D
    inc bc                                        ; $5095: $03
    ld a, a                                       ; $5096: $7F
    inc bc                                        ; $5097: $03
    ccf                                           ; $5098: $3F
    nop                                           ; $5099: $00
    nop                                           ; $509A: $00
    nop                                           ; $509B: $00
    nop                                           ; $509C: $00
    nop                                           ; $509D: $00
    ld bc, $0000                                  ; $509E: $01 $00 $00
    nop                                           ; $50A1: $00
    nop                                           ; $50A2: $00
    nop                                           ; $50A3: $00
    nop                                           ; $50A4: $00
    nop                                           ; $50A5: $00
    nop                                           ; $50A6: $00
    nop                                           ; $50A7: $00
    nop                                           ; $50A8: $00
    nop                                           ; $50A9: $00
    nop                                           ; $50AA: $00
    nop                                           ; $50AB: $00
    ld e, $00                                     ; $50AC: $1E $00
    dec e                                         ; $50AE: $1D
    ld c, $FE                                     ; $50AF: $0E $FE
    inc bc                                        ; $50B1: $03
    ld b, $FB                                     ; $50B2: $06 $FB
    ld b, $FB                                     ; $50B4: $06 $FB
    cp $FB                                        ; $50B6: $FE $FB
    rst RST_38                                    ; $50B8: $FF
    nop                                           ; $50B9: $00
    rra                                           ; $50BA: $1F
    inc c                                         ; $50BB: $0C
    rst RST_38                                    ; $50BC: $FF
    nop                                           ; $50BD: $00
    rst RST_38                                    ; $50BE: $FF
    rst RST_18                                    ; $50BF: $DF
    nop                                           ; $50C0: $00
    nop                                           ; $50C1: $00
    nop                                           ; $50C2: $00
    nop                                           ; $50C3: $00
    nop                                           ; $50C4: $00
    nop                                           ; $50C5: $00
    nop                                           ; $50C6: $00
    nop                                           ; $50C7: $00
    nop                                           ; $50C8: $00
    nop                                           ; $50C9: $00
    ccf                                           ; $50CA: $3F
    nop                                           ; $50CB: $00
    inc h                                         ; $50CC: $24
    dec de                                        ; $50CD: $1B
    inc h                                         ; $50CE: $24
    dec de                                        ; $50CF: $1B
    rst RST_38                                    ; $50D0: $FF
    nop                                           ; $50D1: $00
    add h                                         ; $50D2: $84
    ld a, e                                       ; $50D3: $7B
    adc a                                         ; $50D4: $8F
    ld [hl], b                                    ; $50D5: $70
    rst RST_38                                    ; $50D6: $FF
    ld h, a                                       ; $50D7: $67
    rst RST_38                                    ; $50D8: $FF
    rrca                                          ; $50D9: $0F
    ccf                                           ; $50DA: $3F
    rst RST_08                                    ; $50DB: $CF
    rst RST_38                                    ; $50DC: $FF
    nop                                           ; $50DD: $00
    rst RST_38                                    ; $50DE: $FF
    rst RST_30                                    ; $50DF: $F7
    nop                                           ; $50E0: $00
    nop                                           ; $50E1: $00
    nop                                           ; $50E2: $00
    nop                                           ; $50E3: $00
    nop                                           ; $50E4: $00
    nop                                           ; $50E5: $00
    nop                                           ; $50E6: $00
    nop                                           ; $50E7: $00
    nop                                           ; $50E8: $00
    nop                                           ; $50E9: $00
    ldh a, [rP1]                                  ; $50EA: $F0 $00
    ld [$0FF0], sp                                ; $50EC: $08 $F0 $0F
    ldh a, [$FF80]                                ; $50EF: $F0 $80
    ld a, a                                       ; $50F1: $7F
    sbc a                                         ; $50F2: $9F
    ld h, b                                       ; $50F3: $60
    rst RST_38                                    ; $50F4: $FF
    nop                                           ; $50F5: $00
    rst RST_38                                    ; $50F6: $FF
    cp [hl]                                       ; $50F7: $BE
    rst RST_38                                    ; $50F8: $FF
    ld a, [hl]                                    ; $50F9: $7E
    rst RST_38                                    ; $50FA: $FF
    ld a, [hl]                                    ; $50FB: $7E
    rst RST_38                                    ; $50FC: $FF
    nop                                           ; $50FD: $00
    rst RST_38                                    ; $50FE: $FF
    cp a                                          ; $50FF: $BF
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
    ld a, a                                       ; $5110: $7F
    nop                                           ; $5111: $00
    ld a, [$FA07]                                 ; $5112: $FA $07 $FA
    rlca                                          ; $5115: $07
    rst RST_38                                    ; $5116: $FF
    rlca                                          ; $5117: $07
    ld a, a                                       ; $5118: $7F
    nop                                           ; $5119: $00
    nop                                           ; $511A: $00
    nop                                           ; $511B: $00
    nop                                           ; $511C: $00
    nop                                           ; $511D: $00
    ld bc, $0000                                  ; $511E: $01 $00 $00
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
    inc a                                         ; $512C: $3C
    nop                                           ; $512D: $00
    ld a, [hl-]                                   ; $512E: $3A
    inc e                                         ; $512F: $1C
    db $FD                                        ; $5130: $FD
    ld b, $0D                                     ; $5131: $06 $0D
    or $0D                                        ; $5133: $F6 $0D
    or $FD                                        ; $5135: $F6 $FD
    or $FF                                        ; $5137: $F6 $FF
    nop                                           ; $5139: $00
    ld e, $0D                                     ; $513A: $1E $0D
    rst RST_38                                    ; $513C: $FF
    nop                                           ; $513D: $00
    rst RST_38                                    ; $513E: $FF
    rst RST_18                                    ; $513F: $DF
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
    ld a, a                                       ; $514A: $7F
    nop                                           ; $514B: $00
    ld c, b                                       ; $514C: $48
    scf                                           ; $514D: $37
    ld c, b                                       ; $514E: $48
    scf                                           ; $514F: $37
    rst RST_38                                    ; $5150: $FF
    nop                                           ; $5151: $00
    add hl, bc                                    ; $5152: $09
    or $17                                        ; $5153: $F6 $17
    add sp, -$11                                  ; $5155: $E8 $EF
    rst RST_10                                    ; $5157: $D7
    rst RST_18                                    ; $5158: $DF
    cpl                                           ; $5159: $2F
    ld e, a                                       ; $515A: $5F
    xor a                                         ; $515B: $AF
    rst RST_38                                    ; $515C: $FF
    nop                                           ; $515D: $00
    rst RST_38                                    ; $515E: $FF
    rst RST_30                                    ; $515F: $F7
    nop                                           ; $5160: $00
    nop                                           ; $5161: $00
    nop                                           ; $5162: $00
    nop                                           ; $5163: $00
    nop                                           ; $5164: $00
    nop                                           ; $5165: $00
    nop                                           ; $5166: $00
    nop                                           ; $5167: $00
    nop                                           ; $5168: $00
    nop                                           ; $5169: $00
    ldh [rP1], a                                  ; $516A: $E0 $00
    db $10                                        ; $516C: $10
    ldh [rNR34], a                                ; $516D: $E0 $1E
    ldh [rSB], a                                  ; $516F: $E0 $01
    cp $1F                                        ; $5171: $FE $1F
    ldh [rIE], a                                  ; $5173: $E0 $FF
    nop                                           ; $5175: $00
    rst RST_38                                    ; $5176: $FF
    cp [hl]                                       ; $5177: $BE
    rst RST_38                                    ; $5178: $FF
    ld a, [hl]                                    ; $5179: $7E
    rst RST_38                                    ; $517A: $FF
    ld a, [hl]                                    ; $517B: $7E
    rst RST_38                                    ; $517C: $FF
    nop                                           ; $517D: $00
    rst RST_38                                    ; $517E: $FF
    cp a                                          ; $517F: $BF
    ldh a, [rP1]                                  ; $5180: $F0 $00
    ld hl, sp-$10                                 ; $5182: $F8 $F0
    ld hl, sp-$10                                 ; $5184: $F8 $F0
    ld hl, sp-$10                                 ; $5186: $F8 $F0
    cp $F0                                        ; $5188: $FE $F0
    rst RST_38                                    ; $518A: $FF
    ld c, $FF                                     ; $518B: $0E $FF
    cp [hl]                                       ; $518D: $BE
    rst RST_38                                    ; $518E: $FF
    cp [hl]                                       ; $518F: $BE
    rst RST_38                                    ; $5190: $FF
    cp h                                          ; $5191: $BC
    rst RST_38                                    ; $5192: $FF
    cp b                                          ; $5193: $B8
    db $FD                                        ; $5194: $FD
    ld [bc], a                                    ; $5195: $02
    ld d, a                                       ; $5196: $57
    xor b                                         ; $5197: $A8
    rst RST_08                                    ; $5198: $CF
    jr nc, jr_019_51CD                            ; $5199: $30 $32

    call z, Call_000_00FC                         ; $519B: $CC $FC $00
    nop                                           ; $519E: $00
    nop                                           ; $519F: $00
    inc bc                                        ; $51A0: $03
    ld bc, $0103                                  ; $51A1: $01 $03 $01
    inc bc                                        ; $51A4: $03
    nop                                           ; $51A5: $00
    ld bc, $0200                                  ; $51A6: $01 $00 $02
    ld bc, $0306                                  ; $51A9: $01 $06 $03
    rlca                                          ; $51AC: $07
    nop                                           ; $51AD: $00
    nop                                           ; $51AE: $00
    nop                                           ; $51AF: $00
    nop                                           ; $51B0: $00
    nop                                           ; $51B1: $00
    nop                                           ; $51B2: $00
    nop                                           ; $51B3: $00
    nop                                           ; $51B4: $00
    nop                                           ; $51B5: $00
    nop                                           ; $51B6: $00
    nop                                           ; $51B7: $00
    nop                                           ; $51B8: $00
    nop                                           ; $51B9: $00
    nop                                           ; $51BA: $00
    nop                                           ; $51BB: $00
    nop                                           ; $51BC: $00
    nop                                           ; $51BD: $00
    nop                                           ; $51BE: $00
    nop                                           ; $51BF: $00
    rst RST_38                                    ; $51C0: $FF
    cp a                                          ; $51C1: $BF
    rst RST_38                                    ; $51C2: $FF
    add b                                         ; $51C3: $80
    rst RST_38                                    ; $51C4: $FF
    rra                                           ; $51C5: $1F
    rst RST_38                                    ; $51C6: $FF
    db $10                                        ; $51C7: $10
    ld e, a                                       ; $51C8: $5F
    and b                                         ; $51C9: $A0
    rst RST_18                                    ; $51CA: $DF
    or b                                          ; $51CB: $B0
    rst RST_38                                    ; $51CC: $FF

jr_019_51CD:
    nop                                           ; $51CD: $00
    nop                                           ; $51CE: $00
    nop                                           ; $51CF: $00
    nop                                           ; $51D0: $00
    nop                                           ; $51D1: $00
    nop                                           ; $51D2: $00
    nop                                           ; $51D3: $00
    nop                                           ; $51D4: $00
    nop                                           ; $51D5: $00
    nop                                           ; $51D6: $00
    nop                                           ; $51D7: $00
    nop                                           ; $51D8: $00
    nop                                           ; $51D9: $00
    nop                                           ; $51DA: $00
    nop                                           ; $51DB: $00
    nop                                           ; $51DC: $00
    nop                                           ; $51DD: $00
    nop                                           ; $51DE: $00
    nop                                           ; $51DF: $00
    rst RST_38                                    ; $51E0: $FF
    rst RST_28                                    ; $51E1: $EF
    rst RST_38                                    ; $51E2: $FF
    rrca                                          ; $51E3: $0F
    rst RST_38                                    ; $51E4: $FF

jr_019_51E5:
    ldh [rIE], a                                  ; $51E5: $E0 $FF
    ld h, b                                       ; $51E7: $60
    ldh a, [$FF6F]                                ; $51E8: $F0 $6F
    rst RST_38                                    ; $51EA: $FF
    jr nc, jr_019_51E5                            ; $51EB: $30 $F8

    rlca                                          ; $51ED: $07
    rrca                                          ; $51EE: $0F
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
    rst RST_38                                    ; $5200: $FF
    ld a, a                                       ; $5201: $7F
    rst RST_38                                    ; $5202: $FF
    ld a, a                                       ; $5203: $7F
    rst RST_38                                    ; $5204: $FF
    ld a, a                                       ; $5205: $7F
    rst RST_38                                    ; $5206: $FF
    nop                                           ; $5207: $00
    push de                                       ; $5208: $D5
    ld a, [hl+]                                   ; $5209: $2A
    call z, Call_019_7333                         ; $520A: $CC $33 $73
    adc h                                         ; $520D: $8C
    rst RST_38                                    ; $520E: $FF
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
    ld e, $00                                     ; $5220: $1E $00
    dec h                                         ; $5222: $25
    ld a, [de]                                    ; $5223: $1A
    ld l, l                                       ; $5224: $6D
    dec sp                                        ; $5225: $3B
    ld a, a                                       ; $5226: $7F
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
    nop                                           ; $523D: $00
    nop                                           ; $523E: $00
    nop                                           ; $523F: $00
    inc bc                                        ; $5240: $03
    ld bc, $0103                                  ; $5241: $01 $03 $01
    inc bc                                        ; $5244: $03
    nop                                           ; $5245: $00
    ld bc, $0100                                  ; $5246: $01 $00 $01
    nop                                           ; $5249: $00
    add b                                         ; $524A: $80
    nop                                           ; $524B: $00
    add b                                         ; $524C: $80
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
    rst RST_38                                    ; $5260: $FF
    cp a                                          ; $5261: $BF
    rst RST_38                                    ; $5262: $FF
    add b                                         ; $5263: $80
    rst RST_38                                    ; $5264: $FF
    rra                                           ; $5265: $1F
    ccf                                           ; $5266: $3F
    ret nc                                        ; $5267: $D0

    rst RST_38                                    ; $5268: $FF
    db $10                                        ; $5269: $10
    sbc a                                         ; $526A: $9F
    ld l, b                                       ; $526B: $68
    rst RST_38                                    ; $526C: $FF
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
    nop                                           ; $5278: $00
    nop                                           ; $5279: $00
    nop                                           ; $527A: $00
    nop                                           ; $527B: $00
    nop                                           ; $527C: $00
    nop                                           ; $527D: $00
    nop                                           ; $527E: $00
    nop                                           ; $527F: $00
    rst RST_38                                    ; $5280: $FF
    rst RST_28                                    ; $5281: $EF
    rst RST_38                                    ; $5282: $FF
    rrca                                          ; $5283: $0F
    rst RST_38                                    ; $5284: $FF

jr_019_5285:
    ldh [rIE], a                                  ; $5285: $E0 $FF
    ld h, b                                       ; $5287: $60
    ldh a, [$FF6F]                                ; $5288: $F0 $6F
    rst RST_38                                    ; $528A: $FF
    jr nc, jr_019_5285                            ; $528B: $30 $F8

    rlca                                          ; $528D: $07
    rrca                                          ; $528E: $0F
    nop                                           ; $528F: $00
    nop                                           ; $5290: $00
    nop                                           ; $5291: $00
    nop                                           ; $5292: $00
    nop                                           ; $5293: $00
    nop                                           ; $5294: $00
    nop                                           ; $5295: $00
    nop                                           ; $5296: $00
    nop                                           ; $5297: $00
    nop                                           ; $5298: $00
    nop                                           ; $5299: $00
    nop                                           ; $529A: $00
    nop                                           ; $529B: $00
    nop                                           ; $529C: $00
    nop                                           ; $529D: $00
    nop                                           ; $529E: $00
    nop                                           ; $529F: $00
    rst RST_38                                    ; $52A0: $FF
    ld a, a                                       ; $52A1: $7F
    rst RST_38                                    ; $52A2: $FF
    ld a, a                                       ; $52A3: $7F
    rst RST_38                                    ; $52A4: $FF
    ld a, a                                       ; $52A5: $7F
    rst RST_38                                    ; $52A6: $FF
    nop                                           ; $52A7: $00
    push de                                       ; $52A8: $D5
    ld a, [hl+]                                   ; $52A9: $2A
    call z, Call_019_7333                         ; $52AA: $CC $33 $73
    adc h                                         ; $52AD: $8C
    rst RST_38                                    ; $52AE: $FF
    nop                                           ; $52AF: $00
    nop                                           ; $52B0: $00
    nop                                           ; $52B1: $00
    nop                                           ; $52B2: $00
    nop                                           ; $52B3: $00
    nop                                           ; $52B4: $00
    nop                                           ; $52B5: $00
    nop                                           ; $52B6: $00
    nop                                           ; $52B7: $00
    nop                                           ; $52B8: $00
    nop                                           ; $52B9: $00
    nop                                           ; $52BA: $00
    nop                                           ; $52BB: $00
    nop                                           ; $52BC: $00
    nop                                           ; $52BD: $00
    nop                                           ; $52BE: $00
    nop                                           ; $52BF: $00
    inc bc                                        ; $52C0: $03
    ld bc, $0103                                  ; $52C1: $01 $03 $01
    inc bc                                        ; $52C4: $03
    nop                                           ; $52C5: $00
    ld bc, $0100                                  ; $52C6: $01 $00 $01
    nop                                           ; $52C9: $00
    nop                                           ; $52CA: $00
    nop                                           ; $52CB: $00
    nop                                           ; $52CC: $00
    nop                                           ; $52CD: $00
    nop                                           ; $52CE: $00
    nop                                           ; $52CF: $00
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
    cp a                                          ; $52E1: $BF
    rst RST_38                                    ; $52E2: $FF
    add b                                         ; $52E3: $80
    rst RST_38                                    ; $52E4: $FF
    rra                                           ; $52E5: $1F
    ccf                                           ; $52E6: $3F
    ret nc                                        ; $52E7: $D0

    rst RST_38                                    ; $52E8: $FF
    db $10                                        ; $52E9: $10
    sbc a                                         ; $52EA: $9F
    ld l, b                                       ; $52EB: $68
    rst RST_38                                    ; $52EC: $FF
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
    rst RST_38                                    ; $5300: $FF
    rst RST_28                                    ; $5301: $EF
    rst RST_38                                    ; $5302: $FF
    rrca                                          ; $5303: $0F
    rst RST_38                                    ; $5304: $FF

jr_019_5305:
    ldh [rIE], a                                  ; $5305: $E0 $FF
    ld h, b                                       ; $5307: $60
    ldh a, [$FF6F]                                ; $5308: $F0 $6F
    rst RST_38                                    ; $530A: $FF
    jr nc, jr_019_5305                            ; $530B: $30 $F8

    rlca                                          ; $530D: $07
    rrca                                          ; $530E: $0F
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
    rst RST_38                                    ; $5320: $FF
    ld a, a                                       ; $5321: $7F
    rst RST_38                                    ; $5322: $FF
    ld a, a                                       ; $5323: $7F
    rst RST_38                                    ; $5324: $FF
    ld a, a                                       ; $5325: $7F
    rst RST_38                                    ; $5326: $FF
    nop                                           ; $5327: $00
    push de                                       ; $5328: $D5
    ld a, [hl+]                                   ; $5329: $2A
    call z, Call_019_7333                         ; $532A: $CC $33 $73
    adc h                                         ; $532D: $8C
    rst RST_38                                    ; $532E: $FF
    nop                                           ; $532F: $00
    nop                                           ; $5330: $00
    nop                                           ; $5331: $00
    nop                                           ; $5332: $00
    nop                                           ; $5333: $00
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
    nop                                           ; $534E: $00
    nop                                           ; $534F: $00
    nop                                           ; $5350: $00
    nop                                           ; $5351: $00
    nop                                           ; $5352: $00
    nop                                           ; $5353: $00
    ld a, a                                       ; $5354: $7F
    nop                                           ; $5355: $00
    ld a, [$FA07]                                 ; $5356: $FA $07 $FA
    rlca                                          ; $5359: $07
    rst RST_38                                    ; $535A: $FF
    rlca                                          ; $535B: $07
    ld a, a                                       ; $535C: $7F
    nop                                           ; $535D: $00
    ld bc, $0000                                  ; $535E: $01 $00 $00
    nop                                           ; $5361: $00
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
    inc a                                         ; $5370: $3C
    nop                                           ; $5371: $00
    ld a, [hl-]                                   ; $5372: $3A
    inc e                                         ; $5373: $1C
    db $FD                                        ; $5374: $FD
    ld b, $0D                                     ; $5375: $06 $0D
    or $0D                                        ; $5377: $F6 $0D
    or $FD                                        ; $5379: $F6 $FD
    or $FF                                        ; $537B: $F6 $FF
    nop                                           ; $537D: $00
    cp $ED                                        ; $537E: $FE $ED
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
    ld a, a                                       ; $538E: $7F
    nop                                           ; $538F: $00
    ld c, b                                       ; $5390: $48
    scf                                           ; $5391: $37
    ld c, b                                       ; $5392: $48
    scf                                           ; $5393: $37
    rst RST_38                                    ; $5394: $FF
    nop                                           ; $5395: $00
    rrca                                          ; $5396: $0F
    rst RST_30                                    ; $5397: $F7
    rra                                           ; $5398: $1F
    rst RST_20                                    ; $5399: $E7
    rst RST_28                                    ; $539A: $EF
    rst RST_10                                    ; $539B: $D7
    rst RST_18                                    ; $539C: $DF
    daa                                           ; $539D: $27
    ld e, a                                       ; $539E: $5F
    and a                                         ; $539F: $A7
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
    ldh [rP1], a                                  ; $53AE: $E0 $00
    db $10                                        ; $53B0: $10
    ldh [rNR34], a                                ; $53B1: $E0 $1E
    ldh [$FFC1], a                                ; $53B3: $E0 $C1
    ld a, $DF                                     ; $53B5: $3E $DF
    and b                                         ; $53B7: $A0
    rst RST_38                                    ; $53B8: $FF
    add b                                         ; $53B9: $80
    rst RST_38                                    ; $53BA: $FF
    cp [hl]                                       ; $53BB: $BE
    rst RST_38                                    ; $53BC: $FF
    cp [hl]                                       ; $53BD: $BE
    rst RST_38                                    ; $53BE: $FF
    cp [hl]                                       ; $53BF: $BE
    ldh a, [rP1]                                  ; $53C0: $F0 $00
    ld hl, sp-$10                                 ; $53C2: $F8 $F0
    ld hl, sp-$10                                 ; $53C4: $F8 $F0
    ld hl, sp-$10                                 ; $53C6: $F8 $F0
    cp $F0                                        ; $53C8: $FE $F0
    rst RST_38                                    ; $53CA: $FF
    ld c, $FF                                     ; $53CB: $0E $FF
    cp [hl]                                       ; $53CD: $BE
    rst RST_38                                    ; $53CE: $FF
    cp [hl]                                       ; $53CF: $BE
    cp $BC                                        ; $53D0: $FE $BC
    db $FC                                        ; $53D2: $FC
    cp b                                          ; $53D3: $B8
    ld hl, sp+$00                                 ; $53D4: $F8 $00
    nop                                           ; $53D6: $00
    nop                                           ; $53D7: $00
    nop                                           ; $53D8: $00
    nop                                           ; $53D9: $00
    nop                                           ; $53DA: $00
    nop                                           ; $53DB: $00
    nop                                           ; $53DC: $00
    nop                                           ; $53DD: $00
    nop                                           ; $53DE: $00
    nop                                           ; $53DF: $00
    ld a, a                                       ; $53E0: $7F
    nop                                           ; $53E1: $00
    sbc a                                         ; $53E2: $9F
    ld h, b                                       ; $53E3: $60
    rst RST_38                                    ; $53E4: $FF
    nop                                           ; $53E5: $00
    sbc a                                         ; $53E6: $9F
    ld h, b                                       ; $53E7: $60
    rst RST_38                                    ; $53E8: $FF
    nop                                           ; $53E9: $00
    ld c, a                                       ; $53EA: $4F
    jr nc, jr_019_546C                            ; $53EB: $30 $7F

    nop                                           ; $53ED: $00
    nop                                           ; $53EE: $00
    nop                                           ; $53EF: $00
    nop                                           ; $53F0: $00
    nop                                           ; $53F1: $00
    nop                                           ; $53F2: $00
    nop                                           ; $53F3: $00
    nop                                           ; $53F4: $00
    nop                                           ; $53F5: $00
    nop                                           ; $53F6: $00
    nop                                           ; $53F7: $00
    nop                                           ; $53F8: $00
    nop                                           ; $53F9: $00
    nop                                           ; $53FA: $00
    nop                                           ; $53FB: $00
    nop                                           ; $53FC: $00
    nop                                           ; $53FD: $00
    nop                                           ; $53FE: $00
    nop                                           ; $53FF: $00
    rst RST_38                                    ; $5400: $FF
    nop                                           ; $5401: $00
    rst RST_38                                    ; $5402: $FF
    nop                                           ; $5403: $00
    ld hl, sp+$07                                 ; $5404: $F8 $07
    rst RST_38                                    ; $5406: $FF
    nop                                           ; $5407: $00
    ld hl, sp+$07                                 ; $5408: $F8 $07
    rst RST_38                                    ; $540A: $FF
    nop                                           ; $540B: $00
    db $FC                                        ; $540C: $FC
    inc bc                                        ; $540D: $03
    inc bc                                        ; $540E: $03
    nop                                           ; $540F: $00
    nop                                           ; $5410: $00
    nop                                           ; $5411: $00
    nop                                           ; $5412: $00
    nop                                           ; $5413: $00
    nop                                           ; $5414: $00
    nop                                           ; $5415: $00
    nop                                           ; $5416: $00
    nop                                           ; $5417: $00
    nop                                           ; $5418: $00
    nop                                           ; $5419: $00
    nop                                           ; $541A: $00
    nop                                           ; $541B: $00
    nop                                           ; $541C: $00
    nop                                           ; $541D: $00
    nop                                           ; $541E: $00
    nop                                           ; $541F: $00
    rst RST_38                                    ; $5420: $FF
    nop                                           ; $5421: $00
    rst RST_38                                    ; $5422: $FF
    nop                                           ; $5423: $00
    ld h, [hl]                                    ; $5424: $66
    sbc c                                         ; $5425: $99
    rst RST_30                                    ; $5426: $F7
    ld [$956A], sp                                ; $5427: $08 $6A $95
    and $19                                       ; $542A: $E6 $19
    add hl, sp                                    ; $542C: $39
    add $FF                                       ; $542D: $C6 $FF
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
    rst RST_38                                    ; $5440: $FF
    nop                                           ; $5441: $00
    db $FC                                        ; $5442: $FC
    inc bc                                        ; $5443: $03
    ld h, l                                       ; $5444: $65
    sbc d                                         ; $5445: $9A
    halt                                          ; $5446: $76
    adc c                                         ; $5447: $89
    xor e                                         ; $5448: $AB
    ld d, h                                       ; $5449: $54
    ld h, a                                       ; $544A: $67
    sbc b                                         ; $544B: $98
    sbc c                                         ; $544C: $99
    ld h, [hl]                                    ; $544D: $66
    cp $00                                        ; $544E: $FE $00
    nop                                           ; $5450: $00
    nop                                           ; $5451: $00
    nop                                           ; $5452: $00
    nop                                           ; $5453: $00
    nop                                           ; $5454: $00
    nop                                           ; $5455: $00
    nop                                           ; $5456: $00
    nop                                           ; $5457: $00
    nop                                           ; $5458: $00
    nop                                           ; $5459: $00
    nop                                           ; $545A: $00
    nop                                           ; $545B: $00
    nop                                           ; $545C: $00
    nop                                           ; $545D: $00
    nop                                           ; $545E: $00
    nop                                           ; $545F: $00
    rst RST_38                                    ; $5460: $FF
    nop                                           ; $5461: $00
    rst RST_38                                    ; $5462: $FF
    ccf                                           ; $5463: $3F
    rst RST_38                                    ; $5464: $FF
    ld a, a                                       ; $5465: $7F
    rst RST_38                                    ; $5466: $FF
    ld a, a                                       ; $5467: $7F
    rst RST_38                                    ; $5468: $FF
    ld a, a                                       ; $5469: $7F
    rst RST_38                                    ; $546A: $FF
    nop                                           ; $546B: $00

jr_019_546C:
    nop                                           ; $546C: $00
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
    rra                                           ; $5480: $1F
    nop                                           ; $5481: $00
    daa                                           ; $5482: $27
    jr jr_019_54C4                                ; $5483: $18 $3F

    nop                                           ; $5485: $00
    daa                                           ; $5486: $27
    jr jr_019_54C8                                ; $5487: $18 $3F

    nop                                           ; $5489: $00
    inc de                                        ; $548A: $13
    inc c                                         ; $548B: $0C
    rra                                           ; $548C: $1F
    nop                                           ; $548D: $00
    nop                                           ; $548E: $00
    nop                                           ; $548F: $00
    nop                                           ; $5490: $00
    nop                                           ; $5491: $00
    nop                                           ; $5492: $00
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
    rst RST_38                                    ; $54A0: $FF
    nop                                           ; $54A1: $00
    rst RST_38                                    ; $54A2: $FF
    inc e                                         ; $54A3: $1C
    cp $3D                                        ; $54A4: $FE $3D
    rst RST_38                                    ; $54A6: $FF
    nop                                           ; $54A7: $00
    cp $1D                                        ; $54A8: $FE $1D
    rst RST_38                                    ; $54AA: $FF
    ld e, $FF                                     ; $54AB: $1E $FF
    ld e, $1F                                     ; $54AD: $1E $1F
    rrca                                          ; $54AF: $0F
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
    rst RST_38                                    ; $54C0: $FF
    nop                                           ; $54C1: $00
    rst RST_38                                    ; $54C2: $FF
    nop                                           ; $54C3: $00

jr_019_54C4:
    add hl, de                                    ; $54C4: $19
    and $FD                                       ; $54C5: $E6 $FD
    ld [bc], a                                    ; $54C7: $02

jr_019_54C8:
    ld a, [de]                                    ; $54C8: $1A
    push hl                                       ; $54C9: $E5
    ld sp, hl                                     ; $54CA: $F9
    ld b, $0E                                     ; $54CB: $06 $0E
    pop af                                        ; $54CD: $F1
    rst RST_38                                    ; $54CE: $FF
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
    rst RST_38                                    ; $54E0: $FF
    nop                                           ; $54E1: $00
    rst RST_38                                    ; $54E2: $FF
    ccf                                           ; $54E3: $3F
    rst RST_38                                    ; $54E4: $FF
    ld a, a                                       ; $54E5: $7F
    rst RST_38                                    ; $54E6: $FF
    ld a, a                                       ; $54E7: $7F
    rst RST_38                                    ; $54E8: $FF
    ld a, a                                       ; $54E9: $7F
    rst RST_38                                    ; $54EA: $FF
    nop                                           ; $54EB: $00
    ld h, l                                       ; $54EC: $65
    sbc d                                         ; $54ED: $9A
    cp $00                                        ; $54EE: $FE $00
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
    nop                                           ; $54FE: $00
    nop                                           ; $54FF: $00
    ld bc, $0700                                  ; $5500: $01 $00 $07
    ld bc, $031C                                  ; $5503: $01 $1C $03
    ld a, $01                                     ; $5506: $3E $01
    ccf                                           ; $5508: $3F
    ld bc, $003F                                  ; $5509: $01 $3F $00
    dec e                                         ; $550C: $1D
    nop                                           ; $550D: $00
    nop                                           ; $550E: $00
    nop                                           ; $550F: $00
    nop                                           ; $5510: $00
    nop                                           ; $5511: $00
    nop                                           ; $5512: $00
    nop                                           ; $5513: $00
    nop                                           ; $5514: $00
    nop                                           ; $5515: $00
    nop                                           ; $5516: $00
    nop                                           ; $5517: $00
    nop                                           ; $5518: $00
    nop                                           ; $5519: $00
    nop                                           ; $551A: $00
    nop                                           ; $551B: $00
    nop                                           ; $551C: $00
    nop                                           ; $551D: $00
    nop                                           ; $551E: $00
    nop                                           ; $551F: $00
    ld bc, $0100                                  ; $5520: $01 $00 $01

jr_019_5523:
    nop                                           ; $5523: $00
    ld bc, $0100                                  ; $5524: $01 $00 $01
    nop                                           ; $5527: $00
    inc bc                                        ; $5528: $03
    nop                                           ; $5529: $00
    inc a                                         ; $552A: $3C
    inc bc                                        ; $552B: $03
    ld h, h                                       ; $552C: $64
    dec sp                                        ; $552D: $3B
    ld a, d                                       ; $552E: $7A
    dec e                                         ; $552F: $1D
    sbc e                                         ; $5530: $9B
    ld l, l                                       ; $5531: $6D
    rra                                           ; $5532: $1F
    db $EC                                        ; $5533: $EC
    cp a                                          ; $5534: $BF
    di                                            ; $5535: $F3
    rst RST_38                                    ; $5536: $FF
    ret nz                                        ; $5537: $C0

    rst RST_38                                    ; $5538: $FF
    rra                                           ; $5539: $1F
    ccf                                           ; $553A: $3F
    rst RST_18                                    ; $553B: $DF
    rst RST_38                                    ; $553C: $FF
    rra                                           ; $553D: $1F
    sbc a                                         ; $553E: $9F
    ld l, a                                       ; $553F: $6F
    ld b, $00                                     ; $5540: $06 $00
    add hl, de                                    ; $5542: $19
    ld b, $63                                     ; $5543: $06 $63
    inc e                                         ; $5545: $1C
    adc h                                         ; $5546: $8C
    ld [hl], e                                    ; $5547: $73
    ldh a, [rIF]                                  ; $5548: $F0 $0F
    jr z, jr_019_5523                             ; $554A: $28 $D7

    inc [hl]                                      ; $554C: $34
    res 4, a                                      ; $554D: $CB $A7
    ld e, b                                       ; $554F: $58
    ld l, a                                       ; $5550: $6F
    sub a                                         ; $5551: $97
    ld e, a                                       ; $5552: $5F
    xor a                                         ; $5553: $AF
    rst RST_18                                    ; $5554: $DF
    xor a                                         ; $5555: $AF
    rst RST_38                                    ; $5556: $FF
    nop                                           ; $5557: $00
    rst RST_38                                    ; $5558: $FF
    rst RST_30                                    ; $5559: $F7
    rst RST_38                                    ; $555A: $FF
    rst RST_28                                    ; $555B: $EF
    rst RST_38                                    ; $555C: $FF
    rrca                                          ; $555D: $0F
    rst RST_38                                    ; $555E: $FF
    ldh [rNR10], a                                ; $555F: $E0 $10
    nop                                           ; $5561: $00
    ld l, h                                       ; $5562: $6C
    db $10                                        ; $5563: $10
    sub h                                         ; $5564: $94
    ld l, b                                       ; $5565: $68
    ld h, h                                       ; $5566: $64
    sbc b                                         ; $5567: $98
    inc b                                         ; $5568: $04
    ld hl, sp+$08                                 ; $5569: $F8 $08
    ldh a, [$FF30]                                ; $556B: $F0 $30
    ret nz                                        ; $556D: $C0

    rst RST_38                                    ; $556E: $FF
    jr nz, @+$01                                  ; $556F: $20 $FF

    nop                                           ; $5571: $00
    rst RST_38                                    ; $5572: $FF
    cp [hl]                                       ; $5573: $BE
    rst RST_38                                    ; $5574: $FF
    ld a, [hl]                                    ; $5575: $7E
    rst RST_38                                    ; $5576: $FF
    ld a, [hl]                                    ; $5577: $7E
    rst RST_38                                    ; $5578: $FF
    nop                                           ; $5579: $00
    rst RST_38                                    ; $557A: $FF
    cp a                                          ; $557B: $BF
    rst RST_38                                    ; $557C: $FF
    ld a, a                                       ; $557D: $7F
    rst RST_38                                    ; $557E: $FF
    ld a, a                                       ; $557F: $7F
    ldh a, [rP1]                                  ; $5580: $F0 $00
    ld hl, sp-$10                                 ; $5582: $F8 $F0
    ld hl, sp-$10                                 ; $5584: $F8 $F0
    ld hl, sp-$10                                 ; $5586: $F8 $F0
    cp $F0                                        ; $5588: $FE $F0
    rst RST_38                                    ; $558A: $FF
    ld c, $FF                                     ; $558B: $0E $FF
    cp [hl]                                       ; $558D: $BE
    rst RST_38                                    ; $558E: $FF
    cp [hl]                                       ; $558F: $BE
    rst RST_38                                    ; $5590: $FF
    cp h                                          ; $5591: $BC
    rst RST_38                                    ; $5592: $FF
    cp b                                          ; $5593: $B8
    db $FD                                        ; $5594: $FD
    ld [bc], a                                    ; $5595: $02
    ld d, a                                       ; $5596: $57
    xor b                                         ; $5597: $A8
    rst RST_08                                    ; $5598: $CF
    jr nc, jr_019_55CD                            ; $5599: $30 $32

    call z, Call_000_00FC                         ; $559B: $CC $FC $00
    nop                                           ; $559E: $00
    nop                                           ; $559F: $00
    rst RST_38                                    ; $55A0: $FF
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
    nop                                           ; $55B8: $00
    nop                                           ; $55B9: $00
    nop                                           ; $55BA: $00
    nop                                           ; $55BB: $00
    nop                                           ; $55BC: $00
    nop                                           ; $55BD: $00
    nop                                           ; $55BE: $00
    nop                                           ; $55BF: $00
    rst RST_38                                    ; $55C0: $FF
    ldh [$FFF0], a                                ; $55C1: $E0 $F0
    rst RST_28                                    ; $55C3: $EF
    rst RST_38                                    ; $55C4: $FF
    ldh a, [$FFF8]                                ; $55C5: $F0 $F8
    rlca                                          ; $55C7: $07
    rrca                                          ; $55C8: $0F
    nop                                           ; $55C9: $00
    nop                                           ; $55CA: $00
    nop                                           ; $55CB: $00
    nop                                           ; $55CC: $00

jr_019_55CD:
    nop                                           ; $55CD: $00
    nop                                           ; $55CE: $00
    nop                                           ; $55CF: $00
    nop                                           ; $55D0: $00
    nop                                           ; $55D1: $00
    nop                                           ; $55D2: $00
    nop                                           ; $55D3: $00
    nop                                           ; $55D4: $00
    nop                                           ; $55D5: $00
    nop                                           ; $55D6: $00
    nop                                           ; $55D7: $00
    nop                                           ; $55D8: $00
    nop                                           ; $55D9: $00
    nop                                           ; $55DA: $00
    nop                                           ; $55DB: $00
    nop                                           ; $55DC: $00
    nop                                           ; $55DD: $00
    nop                                           ; $55DE: $00
    nop                                           ; $55DF: $00
    rst RST_38                                    ; $55E0: $FF
    ld a, a                                       ; $55E1: $7F
    rst RST_38                                    ; $55E2: $FF
    nop                                           ; $55E3: $00
    push de                                       ; $55E4: $D5
    ld a, [hl+]                                   ; $55E5: $2A
    call z, Call_019_7333                         ; $55E6: $CC $33 $73
    adc h                                         ; $55E9: $8C
    rst RST_38                                    ; $55EA: $FF
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
    nop                                           ; $55F6: $00
    nop                                           ; $55F7: $00
    nop                                           ; $55F8: $00
    nop                                           ; $55F9: $00
    nop                                           ; $55FA: $00
    nop                                           ; $55FB: $00
    nop                                           ; $55FC: $00
    nop                                           ; $55FD: $00
    nop                                           ; $55FE: $00
    nop                                           ; $55FF: $00
    sbc d                                         ; $5600: $9A
    ld h, l                                       ; $5601: $65
    db $D3                                        ; $5602: $D3
    inc l                                         ; $5603: $2C
    scf                                           ; $5604: $37
    ret z                                         ; $5605: $C8

    cpl                                           ; $5606: $2F
    rst RST_10                                    ; $5607: $D7
    ld l, a                                       ; $5608: $6F
    rst RST_10                                    ; $5609: $D7
    rst RST_38                                    ; $560A: $FF
    add a                                         ; $560B: $87
    rst RST_38                                    ; $560C: $FF
    nop                                           ; $560D: $00
    rst RST_38                                    ; $560E: $FF
    rst RST_30                                    ; $560F: $F7
    rst RST_38                                    ; $5610: $FF
    rst RST_28                                    ; $5611: $EF
    rst RST_38                                    ; $5612: $FF
    rrca                                          ; $5613: $0F
    rst RST_38                                    ; $5614: $FF
    ldh [rIE], a                                  ; $5615: $E0 $FF
    ldh [$FFF0], a                                ; $5617: $E0 $F0
    rst RST_28                                    ; $5619: $EF
    rst RST_38                                    ; $561A: $FF
    ldh a, [$FFF8]                                ; $561B: $F0 $F8
    rlca                                          ; $561D: $07
    rrca                                          ; $561E: $0F
    nop                                           ; $561F: $00
    ld bc, $1E00                                  ; $5620: $01 $00 $1E
    ld bc, $1D32                                  ; $5623: $01 $32 $1D
    dec a                                         ; $5626: $3D
    ld c, $CD                                     ; $5627: $0E $CD
    ld [hl], $8F                                  ; $5629: $36 $8F
    or $5F                                        ; $562B: $F6 $5F
    ld hl, sp+$7F                                 ; $562D: $F8 $7F
    db $E3                                        ; $562F: $E3
    rst RST_38                                    ; $5630: $FF
    add b                                         ; $5631: $80
    rst RST_38                                    ; $5632: $FF
    rra                                           ; $5633: $1F
    ccf                                           ; $5634: $3F
    rst RST_18                                    ; $5635: $DF
    rst RST_38                                    ; $5636: $FF
    rra                                           ; $5637: $1F
    sbc a                                         ; $5638: $9F
    ld l, a                                       ; $5639: $6F
    rst RST_38                                    ; $563A: $FF
    nop                                           ; $563B: $00
    nop                                           ; $563C: $00
    nop                                           ; $563D: $00
    nop                                           ; $563E: $00
    nop                                           ; $563F: $00
    dec de                                        ; $5640: $1B
    nop                                           ; $5641: $00
    rra                                           ; $5642: $1F
    dec bc                                        ; $5643: $0B
    inc c                                         ; $5644: $0C
    rlca                                          ; $5645: $07
    inc c                                         ; $5646: $0C
    rlca                                          ; $5647: $07
    inc b                                         ; $5648: $04
    inc bc                                        ; $5649: $03
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

jr_019_5660:
    ld bc, $0700                                  ; $5660: $01 $00 $07
    nop                                           ; $5663: $00
    rrca                                          ; $5664: $0F
    nop                                           ; $5665: $00
    rrca                                          ; $5666: $0F
    nop                                           ; $5667: $00
    rrca                                          ; $5668: $0F
    nop                                           ; $5669: $00
    rst RST_20                                    ; $566A: $E7
    nop                                           ; $566B: $00
    ldh a, [$FFE0]                                ; $566C: $F0 $E0
    jr jr_019_5660                                ; $566E: $18 $F0

    inc c                                         ; $5670: $0C
    ld hl, sp+$06                                 ; $5671: $F8 $06
    db $FC                                        ; $5673: $FC
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
    nop                                           ; $567E: $00
    nop                                           ; $567F: $00
    nop                                           ; $5680: $00
    nop                                           ; $5681: $00
    nop                                           ; $5682: $00
    nop                                           ; $5683: $00
    nop                                           ; $5684: $00
    nop                                           ; $5685: $00
    nop                                           ; $5686: $00
    nop                                           ; $5687: $00
    nop                                           ; $5688: $00
    nop                                           ; $5689: $00
    nop                                           ; $568A: $00
    nop                                           ; $568B: $00
    nop                                           ; $568C: $00
    nop                                           ; $568D: $00
    nop                                           ; $568E: $00
    nop                                           ; $568F: $00
    nop                                           ; $5690: $00
    nop                                           ; $5691: $00
    nop                                           ; $5692: $00
    nop                                           ; $5693: $00
    inc bc                                        ; $5694: $03
    nop                                           ; $5695: $00
    inc c                                         ; $5696: $0C
    inc bc                                        ; $5697: $03
    ld sp, $C60E                                  ; $5698: $31 $0E $C6
    add hl, sp                                    ; $569B: $39
    ld hl, sp+$07                                 ; $569C: $F8 $07
    sub h                                         ; $569E: $94
    ld l, e                                       ; $569F: $6B
    nop                                           ; $56A0: $00
    nop                                           ; $56A1: $00
    nop                                           ; $56A2: $00
    nop                                           ; $56A3: $00
    nop                                           ; $56A4: $00
    nop                                           ; $56A5: $00
    nop                                           ; $56A6: $00
    nop                                           ; $56A7: $00
    nop                                           ; $56A8: $00
    nop                                           ; $56A9: $00
    nop                                           ; $56AA: $00
    nop                                           ; $56AB: $00
    nop                                           ; $56AC: $00
    nop                                           ; $56AD: $00
    nop                                           ; $56AE: $00
    nop                                           ; $56AF: $00
    nop                                           ; $56B0: $00
    nop                                           ; $56B1: $00
    ld [$3600], sp                                ; $56B2: $08 $00 $36
    ld [$34CA], sp                                ; $56B5: $08 $CA $34
    or d                                          ; $56B8: $B2
    ld c, h                                       ; $56B9: $4C
    ld [bc], a                                    ; $56BA: $02
    db $FC                                        ; $56BB: $FC
    inc b                                         ; $56BC: $04
    ld hl, sp+$18                                 ; $56BD: $F8 $18
    ldh [$FF60], a                                ; $56BF: $E0 $60
    add b                                         ; $56C1: $80
    rst RST_38                                    ; $56C2: $FF
    jr nz, @+$01                                  ; $56C3: $20 $FF

    nop                                           ; $56C5: $00
    rst RST_38                                    ; $56C6: $FF
    cp [hl]                                       ; $56C7: $BE
    rst RST_38                                    ; $56C8: $FF
    ld a, [hl]                                    ; $56C9: $7E
    rst RST_38                                    ; $56CA: $FF
    ld a, [hl]                                    ; $56CB: $7E
    rst RST_38                                    ; $56CC: $FF
    nop                                           ; $56CD: $00
    rst RST_38                                    ; $56CE: $FF
    cp a                                          ; $56CF: $BF
    rst RST_38                                    ; $56D0: $FF
    ld a, a                                       ; $56D1: $7F
    rst RST_38                                    ; $56D2: $FF
    ld a, a                                       ; $56D3: $7F
    rst RST_38                                    ; $56D4: $FF
    ld a, a                                       ; $56D5: $7F
    rst RST_38                                    ; $56D6: $FF
    nop                                           ; $56D7: $00
    push de                                       ; $56D8: $D5
    ld a, [hl+]                                   ; $56D9: $2A
    call z, Call_019_7333                         ; $56DA: $CC $33 $73
    adc h                                         ; $56DD: $8C
    rst RST_38                                    ; $56DE: $FF
    nop                                           ; $56DF: $00
    ldh a, [rP1]                                  ; $56E0: $F0 $00
    ld hl, sp-$10                                 ; $56E2: $F8 $F0
    ld hl, sp-$10                                 ; $56E4: $F8 $F0
    ld hl, sp-$10                                 ; $56E6: $F8 $F0
    cp $F0                                        ; $56E8: $FE $F0
    rst RST_38                                    ; $56EA: $FF
    ld c, $FF                                     ; $56EB: $0E $FF
    cp [hl]                                       ; $56ED: $BE
    rst RST_38                                    ; $56EE: $FF
    cp [hl]                                       ; $56EF: $BE
    rst RST_38                                    ; $56F0: $FF
    cp h                                          ; $56F1: $BC
    rst RST_38                                    ; $56F2: $FF
    cp b                                          ; $56F3: $B8
    db $FD                                        ; $56F4: $FD
    ld [bc], a                                    ; $56F5: $02
    ld d, a                                       ; $56F6: $57
    xor b                                         ; $56F7: $A8
    rst RST_08                                    ; $56F8: $CF
    jr nc, @+$34                                  ; $56F9: $30 $32

    call z, Call_000_00FC                         ; $56FB: $CC $FC $00
    nop                                           ; $56FE: $00
    nop                                           ; $56FF: $00
    jr nc, jr_019_5702                            ; $5700: $30 $00

jr_019_5702:
    jr c, @+$12                                   ; $5702: $38 $10

    inc a                                         ; $5704: $3C
    jr @+$20                                      ; $5705: $18 $1E

    inc c                                         ; $5707: $0C
    rra                                           ; $5708: $1F
    ld c, $0D                                     ; $5709: $0E $0D
    rlca                                          ; $570B: $07
    ld c, $07                                     ; $570C: $0E $07
    add $03                                       ; $570E: $C6 $03
    rst RST_30                                    ; $5710: $F7
    ld b, e                                       ; $5711: $43
    ld a, a                                       ; $5712: $7F
    ld sp, $1F3F                                  ; $5713: $31 $3F $1F
    jr @+$11                                      ; $5716: $18 $0F

    inc c                                         ; $5718: $0C
    rlca                                          ; $5719: $07
    ld b, $03                                     ; $571A: $06 $03
    inc bc                                        ; $571C: $03
    ld bc, $0000                                  ; $571D: $01 $00 $00
    ret nz                                        ; $5720: $C0

    nop                                           ; $5721: $00
    ret nz                                        ; $5722: $C0

    nop                                           ; $5723: $00
    ldh [rLCDC], a                                ; $5724: $E0 $40
    ldh [rLCDC], a                                ; $5726: $E0 $40
    ldh [rLCDC], a                                ; $5728: $E0 $40
    ldh a, [$FF60]                                ; $572A: $F0 $60
    ldh a, [$FF60]                                ; $572C: $F0 $60
    ldh a, [$FF60]                                ; $572E: $F0 $60
    ret c                                         ; $5730: $D8

    ld [hl], b                                    ; $5731: $70
    ret c                                         ; $5732: $D8

    ld [hl], b                                    ; $5733: $70
    ret c                                         ; $5734: $D8

    ld [hl], b                                    ; $5735: $70
    call z, $CC78                                 ; $5736: $CC $78 $CC
    ld a, b                                       ; $5739: $78
    call z, $C678                                 ; $573A: $CC $78 $C6
    ld a, h                                       ; $573D: $7C
    add $7C                                       ; $573E: $C6 $7C
    jp $C37E                                      ; $5740: $C3 $7E $C3


    ld a, [hl]                                    ; $5743: $7E
    pop bc                                        ; $5744: $C1
    rst RST_38                                    ; $5745: $FF
    ld b, c                                       ; $5746: $41
    rst RST_38                                    ; $5747: $FF
    jr nz, @+$01                                  ; $5748: $20 $FF

    nop                                           ; $574A: $00
    rst RST_38                                    ; $574B: $FF
    nop                                           ; $574C: $00
    rst RST_38                                    ; $574D: $FF
    add b                                         ; $574E: $80
    rst RST_38                                    ; $574F: $FF
    nop                                           ; $5750: $00
    rst RST_38                                    ; $5751: $FF
    nop                                           ; $5752: $00
    rst RST_38                                    ; $5753: $FF
    nop                                           ; $5754: $00
    rst RST_38                                    ; $5755: $FF
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
    ret nz                                        ; $5760: $C0

    nop                                           ; $5761: $00
    ldh [rLCDC], a                                ; $5762: $E0 $40
    pop hl                                        ; $5764: $E1
    ld b, b                                       ; $5765: $40
    di                                            ; $5766: $F3
    ld h, b                                       ; $5767: $60
    di                                            ; $5768: $F3
    ld h, b                                       ; $5769: $60
    db $DB                                        ; $576A: $DB
    ldh a, [$FF5B]                                ; $576B: $F0 $5B
    ldh a, [$FF0D]                                ; $576D: $F0 $0D
    ld hl, sp+$0C                                 ; $576F: $F8 $0C
    ld hl, sp+$06                                 ; $5771: $F8 $06
    db $FC                                        ; $5773: $FC
    ld b, $FC                                     ; $5774: $06 $FC
    inc bc                                        ; $5776: $03
    cp $00                                        ; $5777: $FE $00
    nop                                           ; $5779: $00
    nop                                           ; $577A: $00
    nop                                           ; $577B: $00
    nop                                           ; $577C: $00
    nop                                           ; $577D: $00
    nop                                           ; $577E: $00
    nop                                           ; $577F: $00
    rlca                                          ; $5780: $07
    nop                                           ; $5781: $00
    inc c                                         ; $5782: $0C
    rlca                                          ; $5783: $07
    rrca                                          ; $5784: $0F
    inc bc                                        ; $5785: $03
    inc sp                                        ; $5786: $33
    dec c                                         ; $5787: $0D
    db $E3                                        ; $5788: $E3
    dec a                                         ; $5789: $3D
    sub a                                         ; $578A: $97
    ld a, [hl]                                    ; $578B: $7E
    rst RST_18                                    ; $578C: $DF
    jr c, @+$01                                   ; $578D: $38 $FF

    inc hl                                        ; $578F: $23
    rst RST_38                                    ; $5790: $FF
    nop                                           ; $5791: $00
    rst RST_38                                    ; $5792: $FF
    rra                                           ; $5793: $1F
    ccf                                           ; $5794: $3F
    rst RST_18                                    ; $5795: $DF
    rst RST_38                                    ; $5796: $FF
    rra                                           ; $5797: $1F
    sbc a                                         ; $5798: $9F
    ld l, a                                       ; $5799: $6F
    rst RST_38                                    ; $579A: $FF
    nop                                           ; $579B: $00
    nop                                           ; $579C: $00
    nop                                           ; $579D: $00
    nop                                           ; $579E: $00
    nop                                           ; $579F: $00
    inc bc                                        ; $57A0: $03
    nop                                           ; $57A1: $00
    inc c                                         ; $57A2: $0C
    inc bc                                        ; $57A3: $03
    ld sp, $C60E                                  ; $57A4: $31 $0E $C6
    add hl, sp                                    ; $57A7: $39
    ld hl, sp+$07                                 ; $57A8: $F8 $07
    sub h                                         ; $57AA: $94
    ld l, e                                       ; $57AB: $6B
    sbc d                                         ; $57AC: $9A
    ld h, l                                       ; $57AD: $65
    db $D3                                        ; $57AE: $D3
    inc l                                         ; $57AF: $2C
    or a                                          ; $57B0: $B7
    ld c, b                                       ; $57B1: $48
    ld l, a                                       ; $57B2: $6F
    sub a                                         ; $57B3: $97
    ld l, a                                       ; $57B4: $6F
    sub a                                         ; $57B5: $97
    rst RST_38                                    ; $57B6: $FF
    add a                                         ; $57B7: $87
    rst RST_38                                    ; $57B8: $FF
    nop                                           ; $57B9: $00
    rst RST_38                                    ; $57BA: $FF
    rst RST_30                                    ; $57BB: $F7
    rst RST_38                                    ; $57BC: $FF
    rst RST_28                                    ; $57BD: $EF
    rst RST_38                                    ; $57BE: $FF
    rrca                                          ; $57BF: $0F
    rst RST_38                                    ; $57C0: $FF
    ldh [rIE], a                                  ; $57C1: $E0 $FF
    ldh [$FFF0], a                                ; $57C3: $E0 $F0
    rst RST_28                                    ; $57C5: $EF
    rst RST_38                                    ; $57C6: $FF
    ldh a, [$FFF8]                                ; $57C7: $F0 $F8
    rlca                                          ; $57C9: $07
    rrca                                          ; $57CA: $0F
    nop                                           ; $57CB: $00
    nop                                           ; $57CC: $00
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
    nop                                           ; $57EC: $00
    nop                                           ; $57ED: $00
    nop                                           ; $57EE: $00
    nop                                           ; $57EF: $00
    nop                                           ; $57F0: $00
    nop                                           ; $57F1: $00
    ld [$3600], sp                                ; $57F2: $08 $00 $36
    ld [$34CA], sp                                ; $57F5: $08 $CA $34
    or d                                          ; $57F8: $B2
    ld c, h                                       ; $57F9: $4C
    ld [bc], a                                    ; $57FA: $02
    db $FC                                        ; $57FB: $FC
    inc b                                         ; $57FC: $04
    ld hl, sp+$18                                 ; $57FD: $F8 $18
    ldh [rP1], a                                  ; $57FF: $E0 $00
    nop                                           ; $5801: $00
    nop                                           ; $5802: $00
    nop                                           ; $5803: $00
    nop                                           ; $5804: $00
    nop                                           ; $5805: $00
    ccf                                           ; $5806: $3F
    nop                                           ; $5807: $00
    ld a, a                                       ; $5808: $7F
    ccf                                           ; $5809: $3F
    ld h, c                                       ; $580A: $61
    ccf                                           ; $580B: $3F
    ld h, b                                       ; $580C: $60
    ccf                                           ; $580D: $3F
    jr nc, jr_019_582F                            ; $580E: $30 $1F

    jr nc, @+$21                                  ; $5810: $30 $1F

    inc e                                         ; $5812: $1C
    rrca                                          ; $5813: $0F
    rrca                                          ; $5814: $0F
    inc bc                                        ; $5815: $03
    rrca                                          ; $5816: $0F
    inc b                                         ; $5817: $04
    ld b, $03                                     ; $5818: $06 $03
    inc bc                                        ; $581A: $03
    ld bc, $0001                                  ; $581B: $01 $01 $00
    nop                                           ; $581E: $00
    nop                                           ; $581F: $00
    nop                                           ; $5820: $00
    nop                                           ; $5821: $00
    nop                                           ; $5822: $00
    nop                                           ; $5823: $00
    ldh a, [rP1]                                  ; $5824: $F0 $00
    ld hl, sp-$10                                 ; $5826: $F8 $F0
    call z, $E638                                 ; $5828: $CC $38 $E6
    call c, $DC66                                 ; $582B: $DC $66 $DC
    ld h, [hl]                                    ; $582E: $66

jr_019_582F:
    call c, $DC66                                 ; $582F: $DC $66 $DC
    rst RST_20                                    ; $5832: $E7
    call c, $BACD                                 ; $5833: $DC $CD $BA
    adc l                                         ; $5836: $8D
    ld a, d                                       ; $5837: $7A
    dec e                                         ; $5838: $1D
    or $FF                                        ; $5839: $F6 $FF
    pop hl                                        ; $583B: $E1
    db $E3                                        ; $583C: $E3
    ld bc, $0001                                  ; $583D: $01 $01 $00
    ld a, d                                       ; $5840: $7A
    dec e                                         ; $5841: $1D
    ld e, [hl]                                    ; $5842: $5E
    ld hl, $18E7                                  ; $5843: $21 $E7 $18
    rst RST_20                                    ; $5846: $E7
    sbc e                                         ; $5847: $9B
    rst RST_38                                    ; $5848: $FF
    rlca                                          ; $5849: $07
    rst RST_38                                    ; $584A: $FF
    rlca                                          ; $584B: $07
    rst RST_38                                    ; $584C: $FF
    nop                                           ; $584D: $00
    rst RST_38                                    ; $584E: $FF
    ei                                            ; $584F: $FB
    rst RST_38                                    ; $5850: $FF
    rst RST_30                                    ; $5851: $F7
    rst RST_38                                    ; $5852: $FF
    rlca                                          ; $5853: $07
    rst RST_38                                    ; $5854: $FF
    ldh a, [rIE]                                  ; $5855: $F0 $FF
    ldh a, [$FFF8]                                ; $5857: $F0 $F8
    rst RST_30                                    ; $5859: $F7
    rst RST_38                                    ; $585A: $FF
    ld hl, sp-$04                                 ; $585B: $F8 $FC
    inc bc                                        ; $585D: $03
    rlca                                          ; $585E: $07
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
    add b                                         ; $5872: $80
    nop                                           ; $5873: $00
    ret nz                                        ; $5874: $C0

    add b                                         ; $5875: $80
    and e                                         ; $5876: $A3
    ret nz                                        ; $5877: $C0

    or h                                          ; $5878: $B4
    jp $D3AC                                      ; $5879: $C3 $AC $D3


    ld b, e                                       ; $587C: $43
    cp h                                          ; $587D: $BC
    db $E3                                        ; $587E: $E3
    ld a, h                                       ; $587F: $7C
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
    add b                                         ; $5896: $80
    nop                                           ; $5897: $00
    ret nz                                        ; $5898: $C0

    nop                                           ; $5899: $00
    or b                                          ; $589A: $B0
    ld b, b                                       ; $589B: $40
    inc c                                         ; $589C: $0C
    ldh a, [$FF84]                                ; $589D: $F0 $84
    ld a, b                                       ; $589F: $78
    ld bc, $0300                                  ; $58A0: $01 $00 $03
    ld bc, $0307                                  ; $58A3: $01 $07 $03
    rrca                                          ; $58A6: $0F
    rlca                                          ; $58A7: $07
    ld a, a                                       ; $58A8: $7F
    nop                                           ; $58A9: $00
    rst RST_38                                    ; $58AA: $FF
    ld l, a                                       ; $58AB: $6F
    rst RST_38                                    ; $58AC: $FF
    rst RST_18                                    ; $58AD: $DF
    rst RST_38                                    ; $58AE: $FF
    ret nz                                        ; $58AF: $C0

    rst RST_38                                    ; $58B0: $FF
    rrca                                          ; $58B1: $0F
    sbc a                                         ; $58B2: $9F
    ld l, a                                       ; $58B3: $6F
    rst RST_38                                    ; $58B4: $FF
    rrca                                          ; $58B5: $0F
    ld c, a                                       ; $58B6: $4F
    scf                                           ; $58B7: $37
    ld a, a                                       ; $58B8: $7F
    nop                                           ; $58B9: $00
    nop                                           ; $58BA: $00
    nop                                           ; $58BB: $00
    nop                                           ; $58BC: $00
    nop                                           ; $58BD: $00
    nop                                           ; $58BE: $00
    nop                                           ; $58BF: $00
    jp $AF3C                                      ; $58C0: $C3 $3C $AF


    ld d, b                                       ; $58C3: $50
    rst RST_38                                    ; $58C4: $FF
    nop                                           ; $58C5: $00
    rst RST_38                                    ; $58C6: $FF
    rst RST_18                                    ; $58C7: $DF
    rst RST_38                                    ; $58C8: $FF
    cp a                                          ; $58C9: $BF
    rst RST_38                                    ; $58CA: $FF
    cp a                                          ; $58CB: $BF
    rst RST_38                                    ; $58CC: $FF
    nop                                           ; $58CD: $00
    rst RST_38                                    ; $58CE: $FF
    rst RST_18                                    ; $58CF: $DF
    rst RST_38                                    ; $58D0: $FF
    cp a                                          ; $58D1: $BF
    rst RST_38                                    ; $58D2: $FF
    cp a                                          ; $58D3: $BF
    rst RST_38                                    ; $58D4: $FF
    ccf                                           ; $58D5: $3F
    rst RST_38                                    ; $58D6: $FF
    nop                                           ; $58D7: $00
    ld l, d                                       ; $58D8: $6A
    sub l                                         ; $58D9: $95
    and $19                                       ; $58DA: $E6 $19
    add hl, sp                                    ; $58DC: $39
    add $FF                                       ; $58DD: $C6 $FF
    nop                                           ; $58DF: $00
    ld hl, sp+$00                                 ; $58E0: $F8 $00
    db $FC                                        ; $58E2: $FC
    ld a, b                                       ; $58E3: $78
    db $FC                                        ; $58E4: $FC
    ld a, b                                       ; $58E5: $78
    db $FC                                        ; $58E6: $FC
    ld a, b                                       ; $58E7: $78
    rst RST_38                                    ; $58E8: $FF
    ld a, b                                       ; $58E9: $78
    rst RST_38                                    ; $58EA: $FF
    rlca                                          ; $58EB: $07
    rst RST_38                                    ; $58EC: $FF
    rst RST_18                                    ; $58ED: $DF
    rst RST_38                                    ; $58EE: $FF
    rst RST_18                                    ; $58EF: $DF
    rst RST_38                                    ; $58F0: $FF
    sbc $FF                                       ; $58F1: $DE $FF
    call c, $01FE                                 ; $58F3: $DC $FE $01
    xor e                                         ; $58F6: $AB
    ld d, h                                       ; $58F7: $54
    ld h, a                                       ; $58F8: $67
    sbc b                                         ; $58F9: $98
    sbc c                                         ; $58FA: $99
    ld h, [hl]                                    ; $58FB: $66
    cp $00                                        ; $58FC: $FE $00
    nop                                           ; $58FE: $00
    nop                                           ; $58FF: $00
    add b                                         ; $5900: $80
    nop                                           ; $5901: $00
    add b                                         ; $5902: $80
    nop                                           ; $5903: $00
    add b                                         ; $5904: $80
    nop                                           ; $5905: $00
    add b                                         ; $5906: $80
    nop                                           ; $5907: $00
    add b                                         ; $5908: $80
    nop                                           ; $5909: $00
    add b                                         ; $590A: $80
    nop                                           ; $590B: $00
    add b                                         ; $590C: $80
    nop                                           ; $590D: $00
    add b                                         ; $590E: $80
    nop                                           ; $590F: $00
    nop                                           ; $5910: $00
    nop                                           ; $5911: $00
    nop                                           ; $5912: $00
    nop                                           ; $5913: $00
    nop                                           ; $5914: $00
    nop                                           ; $5915: $00
    nop                                           ; $5916: $00
    nop                                           ; $5917: $00
    nop                                           ; $5918: $00
    nop                                           ; $5919: $00
    nop                                           ; $591A: $00
    nop                                           ; $591B: $00
    nop                                           ; $591C: $00
    nop                                           ; $591D: $00
    nop                                           ; $591E: $00
    nop                                           ; $591F: $00
    ld bc, $0100                                  ; $5920: $01 $00 $01
    nop                                           ; $5923: $00
    ld bc, $0000                                  ; $5924: $01 $00 $00
    nop                                           ; $5927: $00
    nop                                           ; $5928: $00
    nop                                           ; $5929: $00
    nop                                           ; $592A: $00
    nop                                           ; $592B: $00
    nop                                           ; $592C: $00
    nop                                           ; $592D: $00
    nop                                           ; $592E: $00
    nop                                           ; $592F: $00
    nop                                           ; $5930: $00
    nop                                           ; $5931: $00
    nop                                           ; $5932: $00
    nop                                           ; $5933: $00
    nop                                           ; $5934: $00
    nop                                           ; $5935: $00
    nop                                           ; $5936: $00
    nop                                           ; $5937: $00
    nop                                           ; $5938: $00
    nop                                           ; $5939: $00
    nop                                           ; $593A: $00
    nop                                           ; $593B: $00
    nop                                           ; $593C: $00
    nop                                           ; $593D: $00
    nop                                           ; $593E: $00
    nop                                           ; $593F: $00
    nop                                           ; $5940: $00
    nop                                           ; $5941: $00
    nop                                           ; $5942: $00
    nop                                           ; $5943: $00
    nop                                           ; $5944: $00
    nop                                           ; $5945: $00
    nop                                           ; $5946: $00
    nop                                           ; $5947: $00
    nop                                           ; $5948: $00
    nop                                           ; $5949: $00
    nop                                           ; $594A: $00
    nop                                           ; $594B: $00
    nop                                           ; $594C: $00
    nop                                           ; $594D: $00
    nop                                           ; $594E: $00
    nop                                           ; $594F: $00
    nop                                           ; $5950: $00
    nop                                           ; $5951: $00
    nop                                           ; $5952: $00
    nop                                           ; $5953: $00
    nop                                           ; $5954: $00
    nop                                           ; $5955: $00
    rrca                                          ; $5956: $0F
    rrca                                          ; $5957: $0F
    ld [$040F], sp                                ; $5958: $08 $0F $04
    rlca                                          ; $595B: $07
    inc bc                                        ; $595C: $03
    inc bc                                        ; $595D: $03
    ld bc, $0001                                  ; $595E: $01 $01 $00
    nop                                           ; $5961: $00
    nop                                           ; $5962: $00
    nop                                           ; $5963: $00
    nop                                           ; $5964: $00
    nop                                           ; $5965: $00
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
    ldh [$FFE0], a                                ; $5970: $E0 $E0
    inc e                                         ; $5972: $1C
    db $FC                                        ; $5973: $FC
    inc bc                                        ; $5974: $03
    rst RST_38                                    ; $5975: $FF
    add b                                         ; $5976: $80
    rst RST_38                                    ; $5977: $FF
    ld h, b                                       ; $5978: $60
    ld a, a                                       ; $5979: $7F
    jr jr_019_599B                                ; $597A: $18 $1F

    ld b, $07                                     ; $597C: $06 $07
    ld bc, $0001                                  ; $597E: $01 $01 $00
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
    add b                                         ; $598E: $80
    add b                                         ; $598F: $80
    ld [hl], b                                    ; $5990: $70
    ldh a, [$FF0C]                                ; $5991: $F0 $0C
    db $FC                                        ; $5993: $FC

jr_019_5994:
    inc bc                                        ; $5994: $03
    rst RST_38                                    ; $5995: $FF
    nop                                           ; $5996: $00
    rst RST_38                                    ; $5997: $FF
    add b                                         ; $5998: $80
    rst RST_38                                    ; $5999: $FF
    ld h, b                                       ; $599A: $60

jr_019_599B:
    ld a, a                                       ; $599B: $7F
    inc e                                         ; $599C: $1C
    rra                                           ; $599D: $1F
    inc bc                                        ; $599E: $03
    inc bc                                        ; $599F: $03
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
    add b                                         ; $59AE: $80
    add b                                         ; $59AF: $80
    ld h, b                                       ; $59B0: $60
    ret nz                                        ; $59B1: $C0

    jr c, jr_019_5994                             ; $59B2: $38 $E0

    ld d, $F8                                     ; $59B4: $16 $F8
    pop af                                        ; $59B6: $F1
    cp $F0                                        ; $59B7: $FE $F0
    rra                                           ; $59B9: $1F
    inc a                                         ; $59BA: $3C
    rrca                                          ; $59BB: $0F
    rrca                                          ; $59BC: $0F
    inc bc                                        ; $59BD: $03
    inc bc                                        ; $59BE: $03
    nop                                           ; $59BF: $00
    db $E3                                        ; $59C0: $E3
    nop                                           ; $59C1: $00
    ld [hl], h                                    ; $59C2: $74
    and e                                         ; $59C3: $A3
    ld l, h                                       ; $59C4: $6C
    or e                                          ; $59C5: $B3
    ld l, e                                       ; $59C6: $6B
    or h                                          ; $59C7: $B4
    db $EB                                        ; $59C8: $EB
    ld [hl], h                                    ; $59C9: $74
    ld e, d                                       ; $59CA: $5A
    ld l, l                                       ; $59CB: $6D
    ld a, [hl]                                    ; $59CC: $7E
    ld bc, $18E7                                  ; $59CD: $01 $E7 $18
    rst RST_20                                    ; $59D0: $E7
    sbc e                                         ; $59D1: $9B
    rst RST_38                                    ; $59D2: $FF
    rlca                                          ; $59D3: $07
    rst RST_38                                    ; $59D4: $FF
    rlca                                          ; $59D5: $07
    rst RST_38                                    ; $59D6: $FF
    nop                                           ; $59D7: $00
    rst RST_38                                    ; $59D8: $FF
    ei                                            ; $59D9: $FB
    rst RST_38                                    ; $59DA: $FF
    rst RST_30                                    ; $59DB: $F7
    rst RST_38                                    ; $59DC: $FF
    rlca                                          ; $59DD: $07
    rst RST_38                                    ; $59DE: $FF
    ldh a, [rIE]                                  ; $59DF: $F0 $FF
    ldh a, [$FFF8]                                ; $59E1: $F0 $F8
    rst RST_30                                    ; $59E3: $F7
    rst RST_38                                    ; $59E4: $FF
    ld hl, sp-$04                                 ; $59E5: $F8 $FC
    inc bc                                        ; $59E7: $03
    rlca                                          ; $59E8: $07
    nop                                           ; $59E9: $00
    nop                                           ; $59EA: $00
    nop                                           ; $59EB: $00
    nop                                           ; $59EC: $00
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
    nop                                           ; $5A00: $00
    nop                                           ; $5A01: $00
    nop                                           ; $5A02: $00
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

jr_019_5A16:
    add b                                         ; $5A16: $80
    nop                                           ; $5A17: $00
    ret nz                                        ; $5A18: $C0

    nop                                           ; $5A19: $00

jr_019_5A1A:
    or b                                          ; $5A1A: $B0
    ld b, b                                       ; $5A1B: $40
    inc c                                         ; $5A1C: $0C
    ldh a, [$FF84]                                ; $5A1D: $F0 $84
    ld a, b                                       ; $5A1F: $78
    nop                                           ; $5A20: $00
    nop                                           ; $5A21: $00
    nop                                           ; $5A22: $00
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
    inc bc                                        ; $5A34: $03
    nop                                           ; $5A35: $00
    rlca                                          ; $5A36: $07
    nop                                           ; $5A37: $00
    rlca                                          ; $5A38: $07
    nop                                           ; $5A39: $00
    rlca                                          ; $5A3A: $07
    nop                                           ; $5A3B: $00
    inc bc                                        ; $5A3C: $03
    nop                                           ; $5A3D: $00
    nop                                           ; $5A3E: $00
    nop                                           ; $5A3F: $00
    nop                                           ; $5A40: $00
    nop                                           ; $5A41: $00
    nop                                           ; $5A42: $00
    nop                                           ; $5A43: $00
    nop                                           ; $5A44: $00
    nop                                           ; $5A45: $00
    nop                                           ; $5A46: $00
    nop                                           ; $5A47: $00
    nop                                           ; $5A48: $00
    nop                                           ; $5A49: $00
    nop                                           ; $5A4A: $00
    nop                                           ; $5A4B: $00
    add b                                         ; $5A4C: $80
    nop                                           ; $5A4D: $00
    ldh [rP1], a                                  ; $5A4E: $E0 $00
    ret c                                         ; $5A50: $D8

    jr nz, jr_019_5A1A                            ; $5A51: $20 $C7

    jr c, jr_019_5A16                             ; $5A53: $38 $C1

    ld a, [hl]                                    ; $5A55: $7E
    pop af                                        ; $5A56: $F1
    ld a, $3D                                     ; $5A57: $3E $3D
    ld c, $0F                                     ; $5A59: $0E $0F
    ld bc, $0103                                  ; $5A5B: $01 $03 $01
    ld bc, $8000                                  ; $5A5E: $01 $00 $80
    nop                                           ; $5A61: $00
    ret nz                                        ; $5A62: $C0

    add b                                         ; $5A63: $80
    and e                                         ; $5A64: $A3
    ret nz                                        ; $5A65: $C0

    or h                                          ; $5A66: $B4
    jp $D3AC                                      ; $5A67: $C3 $AC $D3


    ld b, e                                       ; $5A6A: $43
    cp h                                          ; $5A6B: $BC
    db $E3                                        ; $5A6C: $E3
    ld a, h                                       ; $5A6D: $7C
    ld a, d                                       ; $5A6E: $7A
    dec e                                         ; $5A6F: $1D
    ld e, [hl]                                    ; $5A70: $5E
    ld hl, $18E7                                  ; $5A71: $21 $E7 $18
    rst RST_20                                    ; $5A74: $E7
    sbc e                                         ; $5A75: $9B
    rst RST_38                                    ; $5A76: $FF
    rlca                                          ; $5A77: $07
    rst RST_38                                    ; $5A78: $FF
    rlca                                          ; $5A79: $07
    rst RST_38                                    ; $5A7A: $FF
    nop                                           ; $5A7B: $00
    rst RST_38                                    ; $5A7C: $FF
    ei                                            ; $5A7D: $FB
    rst RST_38                                    ; $5A7E: $FF
    rst RST_30                                    ; $5A7F: $F7
    rst RST_38                                    ; $5A80: $FF
    rlca                                          ; $5A81: $07
    rst RST_38                                    ; $5A82: $FF
    ldh a, [rIE]                                  ; $5A83: $F0 $FF
    ldh a, [$FFF8]                                ; $5A85: $F0 $F8
    rst RST_30                                    ; $5A87: $F7
    rst RST_38                                    ; $5A88: $FF
    ld hl, sp-$04                                 ; $5A89: $F8 $FC
    inc bc                                        ; $5A8B: $03
    rlca                                          ; $5A8C: $07
    nop                                           ; $5A8D: $00
    nop                                           ; $5A8E: $00
    nop                                           ; $5A8F: $00
    nop                                           ; $5A90: $00
    nop                                           ; $5A91: $00
    nop                                           ; $5A92: $00
    nop                                           ; $5A93: $00
    nop                                           ; $5A94: $00
    nop                                           ; $5A95: $00
    nop                                           ; $5A96: $00
    nop                                           ; $5A97: $00
    nop                                           ; $5A98: $00
    nop                                           ; $5A99: $00
    nop                                           ; $5A9A: $00
    nop                                           ; $5A9B: $00
    nop                                           ; $5A9C: $00
    nop                                           ; $5A9D: $00
    nop                                           ; $5A9E: $00
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
    add b                                         ; $5AB6: $80
    nop                                           ; $5AB7: $00
    ret nz                                        ; $5AB8: $C0

    nop                                           ; $5AB9: $00
    or b                                          ; $5ABA: $B0
    ld b, b                                       ; $5ABB: $40
    inc c                                         ; $5ABC: $0C
    ldh a, [$FF84]                                ; $5ABD: $F0 $84
    ld a, b                                       ; $5ABF: $78
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
    ld bc, $0100                                  ; $5AD2: $01 $00 $01
    nop                                           ; $5AD5: $00
    ld a, a                                       ; $5AD6: $7F
    nop                                           ; $5AD7: $00
    adc c                                         ; $5AD8: $89
    ld a, [hl]                                    ; $5AD9: $7E
    ldh a, [$FF1F]                                ; $5ADA: $F0 $1F
    rst RST_38                                    ; $5ADC: $FF
    ld a, $7F                                     ; $5ADD: $3E $7F
    nop                                           ; $5ADF: $00
    db $FC                                        ; $5AE0: $FC
    nop                                           ; $5AE1: $00
    ldh a, [$FF80]                                ; $5AE2: $F0 $80
    cp a                                          ; $5AE4: $BF
    ret nz                                        ; $5AE5: $C0

    and b                                         ; $5AE6: $A0
    rst RST_18                                    ; $5AE7: $DF
    ret c                                         ; $5AE8: $D8

    daa                                           ; $5AE9: $27
    cp a                                          ; $5AEA: $BF
    rst RST_18                                    ; $5AEB: $DF
    rst RST_38                                    ; $5AEC: $FF
    nop                                           ; $5AED: $00
    ld bc, $0F00                                  ; $5AEE: $01 $00 $0F
    nop                                           ; $5AF1: $00
    rra                                           ; $5AF2: $1F
    rrca                                          ; $5AF3: $0F
    ccf                                           ; $5AF4: $3F
    nop                                           ; $5AF5: $00
    ccf                                           ; $5AF6: $3F
    inc bc                                        ; $5AF7: $03
    rra                                           ; $5AF8: $1F
    rlca                                          ; $5AF9: $07
    rra                                           ; $5AFA: $1F
    nop                                           ; $5AFB: $00
    add hl, bc                                    ; $5AFC: $09
    ld b, $07                                     ; $5AFD: $06 $07
    nop                                           ; $5AFF: $00
    rrca                                          ; $5B00: $0F
    nop                                           ; $5B01: $00
    jr jr_019_5B0B                                ; $5B02: $18 $07

jr_019_5B04:
    jr nz, jr_019_5B25                            ; $5B04: $20 $1F

    rst RST_38                                    ; $5B06: $FF
    nop                                           ; $5B07: $00
    ld h, $D9                                     ; $5B08: $26 $D9
    ld e, a                                       ; $5B0A: $5F

jr_019_5B0B:
    and b                                         ; $5B0B: $A0
    cp a                                          ; $5B0C: $BF
    ld e, e                                       ; $5B0D: $5B
    ld a, a                                       ; $5B0E: $7F
    sub b                                         ; $5B0F: $90
    ld a, a                                       ; $5B10: $7F
    or c                                          ; $5B11: $B1
    rst RST_38                                    ; $5B12: $FF
    nop                                           ; $5B13: $00
    rst RST_38                                    ; $5B14: $FF
    rst RST_38                                    ; $5B15: $FF
    rst RST_38                                    ; $5B16: $FF
    ld a, a                                       ; $5B17: $7F
    rst RST_38                                    ; $5B18: $FF
    rst RST_38                                    ; $5B19: $FF
    rst RST_38                                    ; $5B1A: $FF
    rst RST_38                                    ; $5B1B: $FF
    rst RST_38                                    ; $5B1C: $FF
    nop                                           ; $5B1D: $00
    ld d, l                                       ; $5B1E: $55
    xor d                                         ; $5B1F: $AA
    cp $00                                        ; $5B20: $FE $00
    jr jr_019_5B04                                ; $5B22: $18 $E0

    rra                                           ; $5B24: $1F

jr_019_5B25:
    ldh [$FF80], a                                ; $5B25: $E0 $80
    ld a, a                                       ; $5B27: $7F
    rra                                           ; $5B28: $1F
    ldh [rIE], a                                  ; $5B29: $E0 $FF
    rrca                                          ; $5B2B: $0F
    rst RST_38                                    ; $5B2C: $FF
    ldh [rIE], a                                  ; $5B2D: $E0 $FF
    ld h, a                                       ; $5B2F: $67
    rst RST_38                                    ; $5B30: $FF
    rst RST_28                                    ; $5B31: $EF
    rst RST_38                                    ; $5B32: $FF
    nop                                           ; $5B33: $00
    rst RST_38                                    ; $5B34: $FF
    rst RST_28                                    ; $5B35: $EF
    rst RST_38                                    ; $5B36: $FF
    ldh a, [rIE]                                  ; $5B37: $F0 $FF
    pop af                                        ; $5B39: $F1
    rst RST_38                                    ; $5B3A: $FF
    rst RST_30                                    ; $5B3B: $F7
    rst RST_38                                    ; $5B3C: $FF
    nop                                           ; $5B3D: $00
    ld d, l                                       ; $5B3E: $55
    xor d                                         ; $5B3F: $AA
    ret nz                                        ; $5B40: $C0

    nop                                           ; $5B41: $00
    inc a                                         ; $5B42: $3C
    ret nz                                        ; $5B43: $C0

    ret c                                         ; $5B44: $D8

    jr nz, @+$01                                  ; $5B45: $20 $FF

    ret nz                                        ; $5B47: $C0

    db $FC                                        ; $5B48: $FC
    add b                                         ; $5B49: $80
    ldh a, [$FFE0]                                ; $5B4A: $F0 $E0
    rst RST_38                                    ; $5B4C: $FF
    ret nz                                        ; $5B4D: $C0

    rst RST_38                                    ; $5B4E: $FF
    rra                                           ; $5B4F: $1F
    rst RST_38                                    ; $5B50: $FF
    rst RST_38                                    ; $5B51: $FF
    rst RST_38                                    ; $5B52: $FF
    ld a, a                                       ; $5B53: $7F
    rst RST_38                                    ; $5B54: $FF
    db $FC                                        ; $5B55: $FC
    rst RST_38                                    ; $5B56: $FF
    db $FC                                        ; $5B57: $FC
    db $FD                                        ; $5B58: $FD
    ld [bc], a                                    ; $5B59: $02
    ld d, e                                       ; $5B5A: $53
    xor h                                         ; $5B5B: $AC
    ccf                                           ; $5B5C: $3F
    ret nz                                        ; $5B5D: $C0

    call z, $FE30                                 ; $5B5E: $CC $30 $FE
    nop                                           ; $5B61: $00
    ld hl, sp-$20                                 ; $5B62: $F8 $E0
    ldh [$FFC0], a                                ; $5B64: $E0 $C0
    ld hl, sp-$40                                 ; $5B66: $F8 $C0
    ldh [rP1], a                                  ; $5B68: $E0 $00
    add b                                         ; $5B6A: $80
    nop                                           ; $5B6B: $00
    ldh a, [rP1]                                  ; $5B6C: $F0 $00
    ret nz                                        ; $5B6E: $C0

    nop                                           ; $5B6F: $00
    nop                                           ; $5B70: $00
    nop                                           ; $5B71: $00
    nop                                           ; $5B72: $00
    nop                                           ; $5B73: $00
    nop                                           ; $5B74: $00
    nop                                           ; $5B75: $00
    nop                                           ; $5B76: $00
    nop                                           ; $5B77: $00
    nop                                           ; $5B78: $00
    nop                                           ; $5B79: $00
    nop                                           ; $5B7A: $00
    nop                                           ; $5B7B: $00
    nop                                           ; $5B7C: $00
    nop                                           ; $5B7D: $00
    nop                                           ; $5B7E: $00
    nop                                           ; $5B7F: $00
    inc sp                                        ; $5B80: $33
    call z, Call_000_33CC                         ; $5B81: $CC $CC $33
    rst RST_38                                    ; $5B84: $FF
    nop                                           ; $5B85: $00
    nop                                           ; $5B86: $00
    nop                                           ; $5B87: $00
    nop                                           ; $5B88: $00
    nop                                           ; $5B89: $00
    nop                                           ; $5B8A: $00
    nop                                           ; $5B8B: $00
    nop                                           ; $5B8C: $00
    nop                                           ; $5B8D: $00
    nop                                           ; $5B8E: $00
    nop                                           ; $5B8F: $00
    nop                                           ; $5B90: $00
    nop                                           ; $5B91: $00
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
    inc sp                                        ; $5BA0: $33
    call z, Call_000_33CC                         ; $5BA1: $CC $CC $33
    rst RST_38                                    ; $5BA4: $FF
    nop                                           ; $5BA5: $00
    nop                                           ; $5BA6: $00
    nop                                           ; $5BA7: $00
    nop                                           ; $5BA8: $00
    nop                                           ; $5BA9: $00
    nop                                           ; $5BAA: $00
    nop                                           ; $5BAB: $00
    nop                                           ; $5BAC: $00
    nop                                           ; $5BAD: $00
    nop                                           ; $5BAE: $00
    nop                                           ; $5BAF: $00
    nop                                           ; $5BB0: $00
    nop                                           ; $5BB1: $00
    nop                                           ; $5BB2: $00
    nop                                           ; $5BB3: $00
    nop                                           ; $5BB4: $00
    nop                                           ; $5BB5: $00
    nop                                           ; $5BB6: $00
    nop                                           ; $5BB7: $00
    nop                                           ; $5BB8: $00
    nop                                           ; $5BB9: $00
    nop                                           ; $5BBA: $00
    nop                                           ; $5BBB: $00
    nop                                           ; $5BBC: $00
    nop                                           ; $5BBD: $00
    nop                                           ; $5BBE: $00
    nop                                           ; $5BBF: $00
    inc bc                                        ; $5BC0: $03
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
    ldh a, [rP1]                                  ; $5BE0: $F0 $00
    nop                                           ; $5BE2: $00
    nop                                           ; $5BE3: $00
    nop                                           ; $5BE4: $00
    nop                                           ; $5BE5: $00
    nop                                           ; $5BE6: $00
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
    ld a, a                                       ; $5C16: $7F
    ld a, a                                       ; $5C17: $7F
    add b                                         ; $5C18: $80
    rst RST_38                                    ; $5C19: $FF
    add b                                         ; $5C1A: $80
    rst RST_38                                    ; $5C1B: $FF
    add b                                         ; $5C1C: $80
    rst RST_38                                    ; $5C1D: $FF
    ld a, a                                       ; $5C1E: $7F
    ld a, a                                       ; $5C1F: $7F
    inc a                                         ; $5C20: $3C
    inc a                                         ; $5C21: $3C
    ld [hl+], a                                   ; $5C22: $22
    ld a, $E1                                     ; $5C23: $3E $E1
    rst RST_38                                    ; $5C25: $FF
    nop                                           ; $5C26: $00
    rst RST_38                                    ; $5C27: $FF
    nop                                           ; $5C28: $00
    rst RST_38                                    ; $5C29: $FF
    nop                                           ; $5C2A: $00
    rst RST_38                                    ; $5C2B: $FF
    ldh a, [rIE]                                  ; $5C2C: $F0 $FF
    db $10                                        ; $5C2E: $10
    rra                                           ; $5C2F: $1F
    ldh a, [rIE]                                  ; $5C30: $F0 $FF
    nop                                           ; $5C32: $00
    rst RST_38                                    ; $5C33: $FF
    nop                                           ; $5C34: $00
    rst RST_38                                    ; $5C35: $FF
    nop                                           ; $5C36: $00
    rst RST_38                                    ; $5C37: $FF
    nop                                           ; $5C38: $00
    rst RST_38                                    ; $5C39: $FF
    nop                                           ; $5C3A: $00
    rst RST_38                                    ; $5C3B: $FF
    nop                                           ; $5C3C: $00
    rst RST_38                                    ; $5C3D: $FF
    add b                                         ; $5C3E: $80
    rst RST_38                                    ; $5C3F: $FF
    ld a, a                                       ; $5C40: $7F
    ld a, a                                       ; $5C41: $7F
    ld b, b                                       ; $5C42: $40
    ld a, a                                       ; $5C43: $7F
    ld b, b                                       ; $5C44: $40
    ld a, a                                       ; $5C45: $7F
    add b                                         ; $5C46: $80
    rst RST_38                                    ; $5C47: $FF
    nop                                           ; $5C48: $00
    rst RST_38                                    ; $5C49: $FF
    nop                                           ; $5C4A: $00
    rst RST_38                                    ; $5C4B: $FF
    nop                                           ; $5C4C: $00
    rst RST_38                                    ; $5C4D: $FF
    nop                                           ; $5C4E: $00
    rst RST_38                                    ; $5C4F: $FF
    nop                                           ; $5C50: $00
    rst RST_38                                    ; $5C51: $FF
    nop                                           ; $5C52: $00
    rst RST_38                                    ; $5C53: $FF
    nop                                           ; $5C54: $00
    rst RST_38                                    ; $5C55: $FF
    nop                                           ; $5C56: $00
    rst RST_38                                    ; $5C57: $FF
    nop                                           ; $5C58: $00
    rst RST_38                                    ; $5C59: $FF
    nop                                           ; $5C5A: $00
    rst RST_38                                    ; $5C5B: $FF
    nop                                           ; $5C5C: $00
    rst RST_38                                    ; $5C5D: $FF
    nop                                           ; $5C5E: $00
    rst RST_38                                    ; $5C5F: $FF
    ldh [$FFE0], a                                ; $5C60: $E0 $E0
    db $10                                        ; $5C62: $10
    ldh a, [rNR34]                                ; $5C63: $F0 $1E
    cp $01                                        ; $5C65: $FE $01
    rst RST_38                                    ; $5C67: $FF
    ld bc, $00FF                                  ; $5C68: $01 $FF $00
    rst RST_38                                    ; $5C6B: $FF
    nop                                           ; $5C6C: $00
    rst RST_38                                    ; $5C6D: $FF
    nop                                           ; $5C6E: $00
    rst RST_38                                    ; $5C6F: $FF
    nop                                           ; $5C70: $00
    rst RST_38                                    ; $5C71: $FF
    nop                                           ; $5C72: $00
    rst RST_38                                    ; $5C73: $FF
    nop                                           ; $5C74: $00
    rst RST_38                                    ; $5C75: $FF
    nop                                           ; $5C76: $00
    rst RST_38                                    ; $5C77: $FF
    nop                                           ; $5C78: $00
    rst RST_38                                    ; $5C79: $FF
    nop                                           ; $5C7A: $00
    rst RST_38                                    ; $5C7B: $FF
    nop                                           ; $5C7C: $00
    rst RST_38                                    ; $5C7D: $FF
    nop                                           ; $5C7E: $00
    rst RST_38                                    ; $5C7F: $FF
    ldh a, [$FFF0]                                ; $5C80: $F0 $F0
    ld [$08F8], sp                                ; $5C82: $08 $F8 $08
    ld hl, sp+$08                                 ; $5C85: $F8 $08
    ld hl, sp+$0E                                 ; $5C87: $F8 $0E
    cp $01                                        ; $5C89: $FE $01
    rst RST_38                                    ; $5C8B: $FF
    ld bc, $01FF                                  ; $5C8C: $01 $FF $01
    rst RST_38                                    ; $5C8F: $FF
    ld bc, $01FF                                  ; $5C90: $01 $FF $01
    rst RST_38                                    ; $5C93: $FF
    ld bc, $01FF                                  ; $5C94: $01 $FF $01
    rst RST_38                                    ; $5C97: $FF
    ld bc, $02FF                                  ; $5C98: $01 $FF $02
    cp $FC                                        ; $5C9B: $FE $FC
    db $FC                                        ; $5C9D: $FC
    nop                                           ; $5C9E: $00
    nop                                           ; $5C9F: $00
    ld bc, $0201                                  ; $5CA0: $01 $01 $02
    inc bc                                        ; $5CA3: $03
    ld [bc], a                                    ; $5CA4: $02
    inc bc                                        ; $5CA5: $03
    ld [bc], a                                    ; $5CA6: $02
    inc bc                                        ; $5CA7: $03
    ld bc, $0101                                  ; $5CA8: $01 $01 $01
    ld bc, $0000                                  ; $5CAB: $01 $00 $00
    nop                                           ; $5CAE: $00
    nop                                           ; $5CAF: $00
    nop                                           ; $5CB0: $00
    nop                                           ; $5CB1: $00
    nop                                           ; $5CB2: $00
    nop                                           ; $5CB3: $00
    nop                                           ; $5CB4: $00
    nop                                           ; $5CB5: $00
    nop                                           ; $5CB6: $00
    nop                                           ; $5CB7: $00
    nop                                           ; $5CB8: $00
    nop                                           ; $5CB9: $00
    nop                                           ; $5CBA: $00
    nop                                           ; $5CBB: $00
    nop                                           ; $5CBC: $00
    nop                                           ; $5CBD: $00
    nop                                           ; $5CBE: $00
    nop                                           ; $5CBF: $00
    rst RST_38                                    ; $5CC0: $FF
    rst RST_38                                    ; $5CC1: $FF
    nop                                           ; $5CC2: $00
    nop                                           ; $5CC3: $00
    nop                                           ; $5CC4: $00
    nop                                           ; $5CC5: $00
    nop                                           ; $5CC6: $00
    nop                                           ; $5CC7: $00
    nop                                           ; $5CC8: $00
    nop                                           ; $5CC9: $00
    nop                                           ; $5CCA: $00
    nop                                           ; $5CCB: $00
    nop                                           ; $5CCC: $00
    nop                                           ; $5CCD: $00
    nop                                           ; $5CCE: $00
    nop                                           ; $5CCF: $00
    nop                                           ; $5CD0: $00
    nop                                           ; $5CD1: $00
    nop                                           ; $5CD2: $00
    nop                                           ; $5CD3: $00
    nop                                           ; $5CD4: $00
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
    rst RST_38                                    ; $5CE1: $FF
    ld hl, sp-$01                                 ; $5CE2: $F8 $FF
    rrca                                          ; $5CE4: $0F
    rrca                                          ; $5CE5: $0F
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
    nop                                           ; $5CF8: $00
    nop                                           ; $5CF9: $00
    nop                                           ; $5CFA: $00
    nop                                           ; $5CFB: $00
    nop                                           ; $5CFC: $00
    nop                                           ; $5CFD: $00
    nop                                           ; $5CFE: $00
    nop                                           ; $5CFF: $00
    nop                                           ; $5D00: $00
    rst RST_38                                    ; $5D01: $FF
    nop                                           ; $5D02: $00
    rst RST_38                                    ; $5D03: $FF
    rst RST_38                                    ; $5D04: $FF
    rst RST_38                                    ; $5D05: $FF
    nop                                           ; $5D06: $00
    nop                                           ; $5D07: $00
    nop                                           ; $5D08: $00
    nop                                           ; $5D09: $00
    nop                                           ; $5D0A: $00
    nop                                           ; $5D0B: $00
    nop                                           ; $5D0C: $00
    nop                                           ; $5D0D: $00
    nop                                           ; $5D0E: $00
    nop                                           ; $5D0F: $00
    nop                                           ; $5D10: $00
    nop                                           ; $5D11: $00
    nop                                           ; $5D12: $00
    nop                                           ; $5D13: $00

jr_019_5D14:
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
    ld [hl], b                                    ; $5D20: $70
    nop                                           ; $5D21: $00
    db $FC                                        ; $5D22: $FC
    nop                                           ; $5D23: $00
    ei                                            ; $5D24: $FB
    inc b                                         ; $5D25: $04
    ld hl, sp+$07                                 ; $5D26: $F8 $07
    ld a, b                                       ; $5D28: $78
    rrca                                          ; $5D29: $0F
    ld e, $07                                     ; $5D2A: $1E $07
    rlca                                          ; $5D2C: $07
    ld bc, $0001                                  ; $5D2D: $01 $01 $00
    ld bc, $0100                                  ; $5D30: $01 $00 $01
    nop                                           ; $5D33: $00
    ld bc, $0100                                  ; $5D34: $01 $00 $01
    nop                                           ; $5D37: $00
    ld bc, $0100                                  ; $5D38: $01 $00 $01
    nop                                           ; $5D3B: $00
    ld bc, $0100                                  ; $5D3C: $01 $00 $01
    nop                                           ; $5D3F: $00
    ldh a, [rP1]                                  ; $5D40: $F0 $00
    jr c, jr_019_5D14                             ; $5D42: $38 $D0

    inc [hl]                                      ; $5D44: $34
    ret c                                         ; $5D45: $D8

    or [hl]                                       ; $5D46: $B6
    ret c                                         ; $5D47: $D8

    push af                                       ; $5D48: $F5
    ld a, [hl-]                                   ; $5D49: $3A
    add sp, $37                                   ; $5D4A: $E8 $37
    db $FC                                        ; $5D4C: $FC
    adc a                                         ; $5D4D: $8F
    rst RST_28                                    ; $5D4E: $EF
    jp $E4BB                                      ; $5D4F: $C3 $BB $E4


    sbc h                                         ; $5D52: $9C
    di                                            ; $5D53: $F3
    sbc h                                         ; $5D54: $9C
    db $E3                                        ; $5D55: $E3
    xor a                                         ; $5D56: $AF
    ret c                                         ; $5D57: $D8

    rst RST_08                                    ; $5D58: $CF
    or b                                          ; $5D59: $B0
    adc a                                         ; $5D5A: $8F
    ld [hl], b                                    ; $5D5B: $70
    rst RST_38                                    ; $5D5C: $FF
    nop                                           ; $5D5D: $00
    nop                                           ; $5D5E: $00
    rst RST_38                                    ; $5D5F: $FF
    ld [hl], b                                    ; $5D60: $70
    nop                                           ; $5D61: $00
    sbc b                                         ; $5D62: $98
    ld h, b                                       ; $5D63: $60
    sub [hl]                                      ; $5D64: $96
    ld l, b                                       ; $5D65: $68
    ld h, c                                       ; $5D66: $61
    sbc [hl]                                      ; $5D67: $9E
    ld [hl], b                                    ; $5D68: $70
    adc a                                         ; $5D69: $8F
    ld e, b                                       ; $5D6A: $58
    and a                                         ; $5D6B: $A7
    call nc, $A42B                                ; $5D6C: $D4 $2B $A4
    ld e, e                                       ; $5D6F: $5B
    cp a                                          ; $5D70: $BF
    ld b, b                                       ; $5D71: $40
    jp nz, $843D                                  ; $5D72: $C2 $3D $84

    ld a, e                                       ; $5D75: $7B
    add h                                         ; $5D76: $84
    ld a, e                                       ; $5D77: $7B
    rst RST_38                                    ; $5D78: $FF
    nop                                           ; $5D79: $00
    ld b, d                                       ; $5D7A: $42
    cp l                                          ; $5D7B: $BD
    add h                                         ; $5D7C: $84

jr_019_5D7D:
    ld a, e                                       ; $5D7D: $7B
    add h                                         ; $5D7E: $84
    ld a, e                                       ; $5D7F: $7B
    stop                                          ; $5D80: $10 $00
    stop                                          ; $5D82: $10 $00
    jr nc, jr_019_5D86                            ; $5D84: $30 $00

jr_019_5D86:
    jr nc, jr_019_5D88                            ; $5D86: $30 $00

jr_019_5D88:
    ld [hl], b                                    ; $5D88: $70
    jr nz, jr_019_5DFB                            ; $5D89: $20 $70

    jr nz, jr_019_5D7D                            ; $5D8B: $20 $F0

    ld h, b                                       ; $5D8D: $60
    ldh a, [$FF60]                                ; $5D8E: $F0 $60
    or b                                          ; $5D90: $B0
    ld h, b                                       ; $5D91: $60
    or c                                          ; $5D92: $B1
    ld h, b                                       ; $5D93: $60
    ld [hl], c                                    ; $5D94: $71
    add b                                         ; $5D95: $80
    inc de                                        ; $5D96: $13

jr_019_5D97:
    pop hl                                        ; $5D97: $E1
    rst RST_38                                    ; $5D98: $FF
    nop                                           ; $5D99: $00
    db $FD                                        ; $5D9A: $FD
    rlca                                          ; $5D9B: $07
    inc a                                         ; $5D9C: $3C
    rst RST_30                                    ; $5D9D: $F7
    jr c, jr_019_5D97                             ; $5D9E: $38 $F7

    add b                                         ; $5DA0: $80
    nop                                           ; $5DA1: $00
    add b                                         ; $5DA2: $80
    nop                                           ; $5DA3: $00
    add b                                         ; $5DA4: $80
    nop                                           ; $5DA5: $00
    add b                                         ; $5DA6: $80
    nop                                           ; $5DA7: $00
    add b                                         ; $5DA8: $80
    nop                                           ; $5DA9: $00
    add c                                         ; $5DAA: $81
    nop                                           ; $5DAB: $00
    jp $C681                                      ; $5DAC: $C3 $81 $C6


    add e                                         ; $5DAF: $83
    call z, $F887                                 ; $5DB0: $CC $87 $F8
    adc a                                         ; $5DB3: $8F
    ld sp, hl                                     ; $5DB4: $F9
    ld [hl], a                                    ; $5DB5: $77
    jp hl                                         ; $5DB6: $E9


    rst RST_30                                    ; $5DB7: $F7
    jp $83FE                                      ; $5DB8: $C3 $FE $83


    cp $26                                        ; $5DBB: $FE $26
    call c, Call_000_3CC6                         ; $5DBD: $DC $C6 $3C
    nop                                           ; $5DC0: $00
    nop                                           ; $5DC1: $00
    ld b, b                                       ; $5DC2: $40
    nop                                           ; $5DC3: $00
    jr nc, jr_019_5DC6                            ; $5DC4: $30 $00

jr_019_5DC6:
    inc a                                         ; $5DC6: $3C
    db $10                                        ; $5DC7: $10
    rra                                           ; $5DC8: $1F
    inc c                                         ; $5DC9: $0C
    dec de                                        ; $5DCA: $1B
    rrca                                          ; $5DCB: $0F
    inc c                                         ; $5DCC: $0C
    rlca                                          ; $5DCD: $07
    inc c                                         ; $5DCE: $0C
    rlca                                          ; $5DCF: $07
    ld b, $03                                     ; $5DD0: $06 $03
    ld b, $03                                     ; $5DD2: $06 $03
    inc bc                                        ; $5DD4: $03
    ld bc, $0103                                  ; $5DD5: $01 $03 $01
    ld bc, $0100                                  ; $5DD8: $01 $00 $01
    nop                                           ; $5DDB: $00
    nop                                           ; $5DDC: $00
    nop                                           ; $5DDD: $00
    nop                                           ; $5DDE: $00
    nop                                           ; $5DDF: $00
    add c                                         ; $5DE0: $81
    nop                                           ; $5DE1: $00
    rst RST_20                                    ; $5DE2: $E7
    add b                                         ; $5DE3: $80
    ld a, a                                       ; $5DE4: $7F
    and $12                                       ; $5DE5: $E6 $12
    db $ED                                        ; $5DE7: $ED
    inc de                                        ; $5DE8: $13
    db $EC                                        ; $5DE9: $EC
    rra                                           ; $5DEA: $1F
    ldh [$FF09], a                                ; $5DEB: $E0 $09
    or $8F                                        ; $5DED: $F6 $8F
    ldh a, [$FF84]                                ; $5DEF: $F0 $84
    ei                                            ; $5DF1: $FB
    ret nz                                        ; $5DF2: $C0

    ld a, a                                       ; $5DF3: $7F
    ret nz                                        ; $5DF4: $C0

    ld a, a                                       ; $5DF5: $7F
    nop                                           ; $5DF6: $00
    nop                                           ; $5DF7: $00
    nop                                           ; $5DF8: $00
    nop                                           ; $5DF9: $00
    nop                                           ; $5DFA: $00

jr_019_5DFB:
    nop                                           ; $5DFB: $00
    nop                                           ; $5DFC: $00
    nop                                           ; $5DFD: $00
    nop                                           ; $5DFE: $00
    nop                                           ; $5DFF: $00
    nop                                           ; $5E00: $00
    rst RST_38                                    ; $5E01: $FF
    cp $01                                        ; $5E02: $FE $01
    nop                                           ; $5E04: $00
    rst RST_38                                    ; $5E05: $FF
    nop                                           ; $5E06: $00
    rst RST_38                                    ; $5E07: $FF
    nop                                           ; $5E08: $00
    rst RST_38                                    ; $5E09: $FF
    nop                                           ; $5E0A: $00
    rst RST_38                                    ; $5E0B: $FF
    nop                                           ; $5E0C: $00
    rst RST_38                                    ; $5E0D: $FF
    nop                                           ; $5E0E: $00
    rst RST_38                                    ; $5E0F: $FF
    nop                                           ; $5E10: $00
    nop                                           ; $5E11: $00
    nop                                           ; $5E12: $00
    nop                                           ; $5E13: $00
    nop                                           ; $5E14: $00
    nop                                           ; $5E15: $00
    nop                                           ; $5E16: $00
    nop                                           ; $5E17: $00
    nop                                           ; $5E18: $00
    nop                                           ; $5E19: $00
    nop                                           ; $5E1A: $00
    nop                                           ; $5E1B: $00
    nop                                           ; $5E1C: $00
    nop                                           ; $5E1D: $00
    nop                                           ; $5E1E: $00
    nop                                           ; $5E1F: $00
    db $FC                                        ; $5E20: $FC
    inc bc                                        ; $5E21: $03
    rst RST_38                                    ; $5E22: $FF
    nop                                           ; $5E23: $00
    add [hl]                                      ; $5E24: $86
    ld a, c                                       ; $5E25: $79
    nop                                           ; $5E26: $00
    rst RST_38                                    ; $5E27: $FF
    nop                                           ; $5E28: $00
    rst RST_38                                    ; $5E29: $FF
    nop                                           ; $5E2A: $00
    rst RST_38                                    ; $5E2B: $FF
    nop                                           ; $5E2C: $00
    nop                                           ; $5E2D: $00
    nop                                           ; $5E2E: $00
    nop                                           ; $5E2F: $00
    nop                                           ; $5E30: $00
    nop                                           ; $5E31: $00
    nop                                           ; $5E32: $00
    nop                                           ; $5E33: $00
    nop                                           ; $5E34: $00
    nop                                           ; $5E35: $00
    nop                                           ; $5E36: $00
    nop                                           ; $5E37: $00
    nop                                           ; $5E38: $00

jr_019_5E39:
    nop                                           ; $5E39: $00
    nop                                           ; $5E3A: $00
    nop                                           ; $5E3B: $00
    nop                                           ; $5E3C: $00
    nop                                           ; $5E3D: $00
    nop                                           ; $5E3E: $00
    nop                                           ; $5E3F: $00
    jr c, jr_019_5E39                             ; $5E40: $38 $F7

    rst RST_38                                    ; $5E42: $FF
    nop                                           ; $5E43: $00
    ld [bc], a                                    ; $5E44: $02
    db $FD                                        ; $5E45: $FD
    ld [bc], a                                    ; $5E46: $02
    db $FD                                        ; $5E47: $FD
    ld [bc], a                                    ; $5E48: $02
    db $FD                                        ; $5E49: $FD
    ld [bc], a                                    ; $5E4A: $02
    db $FD                                        ; $5E4B: $FD
    cp c                                          ; $5E4C: $B9
    ld b, [hl]                                    ; $5E4D: $46
    add b                                         ; $5E4E: $80
    ld a, a                                       ; $5E4F: $7F
    nop                                           ; $5E50: $00
    rst RST_38                                    ; $5E51: $FF
    nop                                           ; $5E52: $00
    rst RST_38                                    ; $5E53: $FF
    nop                                           ; $5E54: $00
    rst RST_38                                    ; $5E55: $FF
    nop                                           ; $5E56: $00
    nop                                           ; $5E57: $00
    nop                                           ; $5E58: $00
    nop                                           ; $5E59: $00
    nop                                           ; $5E5A: $00
    nop                                           ; $5E5B: $00
    nop                                           ; $5E5C: $00
    nop                                           ; $5E5D: $00
    nop                                           ; $5E5E: $00
    nop                                           ; $5E5F: $00
    inc c                                         ; $5E60: $0C
    ld hl, sp+$0C                                 ; $5E61: $F8 $0C
    ld hl, sp+$18                                 ; $5E63: $F8 $18
    ldh a, [rNR23]                                ; $5E65: $F0 $18
    ldh a, [rP1]                                  ; $5E67: $F0 $00
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
    nop                                           ; $5E7C: $00
    nop                                           ; $5E7D: $00
    nop                                           ; $5E7E: $00
    nop                                           ; $5E7F: $00
    nop                                           ; $5E80: $00

jr_019_5E81:
    nop                                           ; $5E81: $00
    ld bc, $0200                                  ; $5E82: $01 $00 $02
    nop                                           ; $5E85: $00
    ld b, $00                                     ; $5E86: $06 $00
    inc c                                         ; $5E88: $0C
    nop                                           ; $5E89: $00
    inc e                                         ; $5E8A: $1C
    ld [$1038], sp                                ; $5E8B: $08 $38 $10
    ld a, b                                       ; $5E8E: $78
    jr nc, jr_019_5E81                            ; $5E8F: $30 $F0

    ld h, b                                       ; $5E91: $60
    or b                                          ; $5E92: $B0
    ldh [$FF60], a                                ; $5E93: $E0 $60
    ret nz                                        ; $5E95: $C0

    ld h, b                                       ; $5E96: $60
    ret nz                                        ; $5E97: $C0

    ret nz                                        ; $5E98: $C0

    add b                                         ; $5E99: $80
    ret nz                                        ; $5E9A: $C0

    add b                                         ; $5E9B: $80
    add b                                         ; $5E9C: $80
    nop                                           ; $5E9D: $00
    add b                                         ; $5E9E: $80
    nop                                           ; $5E9F: $00
    nop                                           ; $5EA0: $00
    nop                                           ; $5EA1: $00
    nop                                           ; $5EA2: $00
    nop                                           ; $5EA3: $00
    nop                                           ; $5EA4: $00
    nop                                           ; $5EA5: $00
    nop                                           ; $5EA6: $00
    nop                                           ; $5EA7: $00
    nop                                           ; $5EA8: $00
    nop                                           ; $5EA9: $00
    nop                                           ; $5EAA: $00
    nop                                           ; $5EAB: $00
    nop                                           ; $5EAC: $00
    nop                                           ; $5EAD: $00
    nop                                           ; $5EAE: $00
    nop                                           ; $5EAF: $00
    nop                                           ; $5EB0: $00
    nop                                           ; $5EB1: $00
    nop                                           ; $5EB2: $00
    nop                                           ; $5EB3: $00
    nop                                           ; $5EB4: $00
    nop                                           ; $5EB5: $00
    rst RST_38                                    ; $5EB6: $FF
    nop                                           ; $5EB7: $00
    jr c, @+$09                                   ; $5EB8: $38 $07

    inc b                                         ; $5EBA: $04
    inc bc                                        ; $5EBB: $03
    ccf                                           ; $5EBC: $3F
    rlca                                          ; $5EBD: $07
    rrca                                          ; $5EBE: $0F
    nop                                           ; $5EBF: $00
    cp $00                                        ; $5EC0: $FE $00
    ccf                                           ; $5EC2: $3F
    ld b, $FE                                     ; $5EC3: $06 $FE
    inc bc                                        ; $5EC5: $03
    add a                                         ; $5EC6: $87
    ld a, [$E75E]                                 ; $5EC7: $FA $5E $E7
    rst RST_38                                    ; $5ECA: $FF
    ld a, [$00FF]                                 ; $5ECB: $FA $FF $00
    nop                                           ; $5ECE: $00
    nop                                           ; $5ECF: $00
    ld a, a                                       ; $5ED0: $7F
    nop                                           ; $5ED1: $00
    rra                                           ; $5ED2: $1F
    rlca                                          ; $5ED3: $07
    rlca                                          ; $5ED4: $07
    nop                                           ; $5ED5: $00
    ld bc, $1F00                                  ; $5ED6: $01 $00 $1F
    ld bc, $0007                                  ; $5ED9: $01 $07 $00
    nop                                           ; $5EDC: $00
    nop                                           ; $5EDD: $00
    nop                                           ; $5EDE: $00
    nop                                           ; $5EDF: $00
    rra                                           ; $5EE0: $1F
    nop                                           ; $5EE1: $00
    ld b, $01                                     ; $5EE2: $06 $01
    ld bc, $FF00                                  ; $5EE4: $01 $00 $FF
    nop                                           ; $5EE7: $00
    nop                                           ; $5EE8: $00
    rst RST_38                                    ; $5EE9: $FF
    adc a                                         ; $5EEA: $8F
    ld [hl], b                                    ; $5EEB: $70
    inc bc                                        ; $5EEC: $03
    db $FC                                        ; $5EED: $FC
    db $FD                                        ; $5EEE: $FD
    ld [bc], a                                    ; $5EEF: $02
    dec b                                         ; $5EF0: $05
    ld [bc], a                                    ; $5EF1: $02
    rst RST_38                                    ; $5EF2: $FF
    nop                                           ; $5EF3: $00
    rst RST_38                                    ; $5EF4: $FF
    rst RST_38                                    ; $5EF5: $FF
    rst RST_38                                    ; $5EF6: $FF
    rst RST_38                                    ; $5EF7: $FF
    rst RST_38                                    ; $5EF8: $FF
    rra                                           ; $5EF9: $1F
    rst RST_38                                    ; $5EFA: $FF
    rst RST_38                                    ; $5EFB: $FF
    rst RST_38                                    ; $5EFC: $FF
    nop                                           ; $5EFD: $00
    push hl                                       ; $5EFE: $E5
    ld a, [de]                                    ; $5EFF: $1A
    rst RST_38                                    ; $5F00: $FF
    nop                                           ; $5F01: $00
    nop                                           ; $5F02: $00
    rst RST_38                                    ; $5F03: $FF
    add b                                         ; $5F04: $80
    ld a, a                                       ; $5F05: $7F
    ldh a, [rIF]                                  ; $5F06: $F0 $0F
    db $10                                        ; $5F08: $10
    rst RST_28                                    ; $5F09: $EF
    rst RST_38                                    ; $5F0A: $FF
    nop                                           ; $5F0B: $00
    rst RST_38                                    ; $5F0C: $FF
    ld l, a                                       ; $5F0D: $6F
    rst RST_38                                    ; $5F0E: $FF
    call c, $DFFF                                 ; $5F0F: $DC $FF $DF
    rst RST_38                                    ; $5F12: $FF
    nop                                           ; $5F13: $00
    rst RST_38                                    ; $5F14: $FF
    rst RST_38                                    ; $5F15: $FF
    rst RST_38                                    ; $5F16: $FF
    add b                                         ; $5F17: $80
    rst RST_38                                    ; $5F18: $FF
    ldh [rIE], a                                  ; $5F19: $E0 $FF
    db $FC                                        ; $5F1B: $FC
    rst RST_38                                    ; $5F1C: $FF
    nop                                           ; $5F1D: $00

jr_019_5F1E:
    ld d, l                                       ; $5F1E: $55
    xor d                                         ; $5F1F: $AA
    add b                                         ; $5F20: $80
    nop                                           ; $5F21: $00
    ld b, b                                       ; $5F22: $40
    add b                                         ; $5F23: $80
    ld a, a                                       ; $5F24: $7F
    add b                                         ; $5F25: $80
    nop                                           ; $5F26: $00
    rst RST_38                                    ; $5F27: $FF
    ld a, a                                       ; $5F28: $7F
    add b                                         ; $5F29: $80
    rst RST_38                                    ; $5F2A: $FF
    ccf                                           ; $5F2B: $3F
    rst RST_38                                    ; $5F2C: $FF
    or b                                          ; $5F2D: $B0
    rst RST_38                                    ; $5F2E: $FF
    ld a, h                                       ; $5F2F: $7C
    rst RST_38                                    ; $5F30: $FF
    ccf                                           ; $5F31: $3F
    rst RST_38                                    ; $5F32: $FF
    nop                                           ; $5F33: $00
    rst RST_38                                    ; $5F34: $FF
    cp a                                          ; $5F35: $BF
    rst RST_38                                    ; $5F36: $FF
    jr c, @+$01                                   ; $5F37: $38 $FF

    rst RST_38                                    ; $5F39: $FF
    rst RST_38                                    ; $5F3A: $FF
    ccf                                           ; $5F3B: $3F
    rst RST_38                                    ; $5F3C: $FF
    nop                                           ; $5F3D: $00
    ld d, l                                       ; $5F3E: $55
    xor d                                         ; $5F3F: $AA
    add b                                         ; $5F40: $80
    nop                                           ; $5F41: $00
    ld b, b                                       ; $5F42: $40
    add b                                         ; $5F43: $80
    ret nz                                        ; $5F44: $C0

    nop                                           ; $5F45: $00
    ret nz                                        ; $5F46: $C0

    nop                                           ; $5F47: $00
    add b                                         ; $5F48: $80
    nop                                           ; $5F49: $00
    cp $00                                        ; $5F4A: $FE $00
    rst RST_38                                    ; $5F4C: $FF
    ld a, [hl]                                    ; $5F4D: $7E
    rst RST_38                                    ; $5F4E: $FF
    cp $FF                                        ; $5F4F: $FE $FF
    nop                                           ; $5F51: $00
    rst RST_38                                    ; $5F52: $FF
    add b                                         ; $5F53: $80
    cp $F0                                        ; $5F54: $FE $F0
    or $08                                        ; $5F56: $F6 $08
    ld c, [hl]                                    ; $5F58: $4E
    or b                                          ; $5F59: $B0
    db $FC                                        ; $5F5A: $FC
    nop                                           ; $5F5B: $00
    jr nc, jr_019_5F1E                            ; $5F5C: $30 $C0

    ret nz                                        ; $5F5E: $C0

    nop                                           ; $5F5F: $00
    inc a                                         ; $5F60: $3C
    inc bc                                        ; $5F61: $03
    rrca                                          ; $5F62: $0F
    nop                                           ; $5F63: $00
    inc bc                                        ; $5F64: $03
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
    call z, $3333                                 ; $5F80: $CC $33 $33
    call z, Call_000_00FF                         ; $5F83: $CC $FF $00
    nop                                           ; $5F86: $00
    nop                                           ; $5F87: $00
    nop                                           ; $5F88: $00
    nop                                           ; $5F89: $00
    nop                                           ; $5F8A: $00
    nop                                           ; $5F8B: $00
    nop                                           ; $5F8C: $00
    nop                                           ; $5F8D: $00
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
    call z, $3333                                 ; $5FA0: $CC $33 $33
    call z, Call_000_00FF                         ; $5FA3: $CC $FF $00
    nop                                           ; $5FA6: $00
    nop                                           ; $5FA7: $00
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
    ld a, [de]                                    ; $5FC0: $1A
    inc c                                         ; $5FC1: $0C
    ld [hl], a                                    ; $5FC2: $77
    ld [$6B94], sp                                ; $5FC3: $08 $94 $6B
    sub h                                         ; $5FC6: $94
    ld l, e                                       ; $5FC7: $6B
    rst RST_30                                    ; $5FC8: $F7
    ld l, e                                       ; $5FC9: $6B
    ld a, a                                       ; $5FCA: $7F
    nop                                           ; $5FCB: $00
    ld bc, $7F00                                  ; $5FCC: $01 $00 $7F
    nop                                           ; $5FCF: $00
    rst RST_38                                    ; $5FD0: $FF
    ld l, a                                       ; $5FD1: $6F
    rst RST_38                                    ; $5FD2: $FF
    rst RST_18                                    ; $5FD3: $DF
    rst RST_38                                    ; $5FD4: $FF
    ret nz                                        ; $5FD5: $C0

    rst RST_38                                    ; $5FD6: $FF
    rrca                                          ; $5FD7: $0F
    sbc a                                         ; $5FD8: $9F
    ld l, a                                       ; $5FD9: $6F
    rst RST_38                                    ; $5FDA: $FF
    rrca                                          ; $5FDB: $0F
    ld c, a                                       ; $5FDC: $4F
    scf                                           ; $5FDD: $37
    ld a, a                                       ; $5FDE: $7F
    nop                                           ; $5FDF: $00
    rlca                                          ; $5FE0: $07
    nop                                           ; $5FE1: $00
    inc b                                         ; $5FE2: $04
    inc bc                                        ; $5FE3: $03
    inc b                                         ; $5FE4: $04
    inc bc                                        ; $5FE5: $03
    rst RST_38                                    ; $5FE6: $FF
    nop                                           ; $5FE7: $00
    add hl, bc                                    ; $5FE8: $09
    or $7F                                        ; $5FE9: $F6 $7F
    add b                                         ; $5FEB: $80
    rst RST_38                                    ; $5FEC: $FF
    ld a, [hl]                                    ; $5FED: $7E
    rst RST_38                                    ; $5FEE: $FF
    cp $FF                                        ; $5FEF: $FE $FF
    cp $FF                                        ; $5FF1: $FE $FF
    nop                                           ; $5FF3: $00
    rst RST_38                                    ; $5FF4: $FF
    ei                                            ; $5FF5: $FB
    rst RST_38                                    ; $5FF6: $FF
    rst RST_30                                    ; $5FF7: $F7
    rst RST_38                                    ; $5FF8: $FF
    rlca                                          ; $5FF9: $07
    rst RST_38                                    ; $5FFA: $FF
    ldh a, [rIE]                                  ; $5FFB: $F0 $FF
    ldh a, [$FFF8]                                ; $5FFD: $F0 $F8
    rst RST_30                                    ; $5FFF: $F7
    ldh a, [rP1]                                  ; $6000: $F0 $00
    ld c, $F0                                     ; $6002: $0E $F0
    rrca                                          ; $6004: $0F
    ldh a, [rP1]                                  ; $6005: $F0 $00
    rst RST_38                                    ; $6007: $FF
    cp $01                                        ; $6008: $FE $01
    rst RST_38                                    ; $600A: $FF
    or $FF                                        ; $600B: $F6 $FF
    rst RST_30                                    ; $600D: $F7
    rst RST_38                                    ; $600E: $FF
    rst RST_30                                    ; $600F: $F7
    rst RST_38                                    ; $6010: $FF
    rst RST_30                                    ; $6011: $F7
    rst RST_38                                    ; $6012: $FF
    nop                                           ; $6013: $00
    rst RST_38                                    ; $6014: $FF
    rst RST_18                                    ; $6015: $DF
    rst RST_38                                    ; $6016: $FF
    cp a                                          ; $6017: $BF
    rst RST_38                                    ; $6018: $FF
    cp a                                          ; $6019: $BF
    rst RST_38                                    ; $601A: $FF
    ccf                                           ; $601B: $3F
    rst RST_38                                    ; $601C: $FF
    ld bc, $946B                                  ; $601D: $01 $6B $94
    ldh a, [rP1]                                  ; $6020: $F0 $00
    inc c                                         ; $6022: $0C
    ldh a, [$FF0A]                                ; $6023: $F0 $0A
    db $F4                                        ; $6025: $F4
    adc d                                         ; $6026: $8A
    ld [hl], h                                    ; $6027: $74
    jp z, $FA34                                   ; $6028: $CA $34 $FA

    inc b                                         ; $602B: $04
    db $FC                                        ; $602C: $FC
    ld [$08FC], sp                                ; $602D: $08 $FC $08
    db $FC                                        ; $6030: $FC
    ld [$C0FC], sp                                ; $6031: $08 $FC $C0
    cp $D8                                        ; $6034: $FE $D8
    rst RST_38                                    ; $6036: $FF
    sbc $FF                                       ; $6037: $DE $FF
    sbc $FF                                       ; $6039: $DE $FF
    ld b, $5F                                     ; $603B: $06 $5F
    and d                                         ; $603D: $A2
    rst RST_28                                    ; $603E: $EF
    db $10                                        ; $603F: $10
    rst RST_38                                    ; $6040: $FF
    ld hl, sp-$04                                 ; $6041: $F8 $FC
    inc bc                                        ; $6043: $03
    rra                                           ; $6044: $1F
    nop                                           ; $6045: $00
    rlca                                          ; $6046: $07
    nop                                           ; $6047: $00
    inc bc                                        ; $6048: $03
    nop                                           ; $6049: $00
    ld bc, $0000                                  ; $604A: $01 $00 $00
    nop                                           ; $604D: $00
    nop                                           ; $604E: $00
    nop                                           ; $604F: $00
    nop                                           ; $6050: $00
    nop                                           ; $6051: $00
    nop                                           ; $6052: $00
    nop                                           ; $6053: $00
    nop                                           ; $6054: $00
    nop                                           ; $6055: $00
    nop                                           ; $6056: $00
    nop                                           ; $6057: $00
    nop                                           ; $6058: $00
    nop                                           ; $6059: $00
    nop                                           ; $605A: $00
    nop                                           ; $605B: $00
    nop                                           ; $605C: $00
    nop                                           ; $605D: $00
    nop                                           ; $605E: $00
    nop                                           ; $605F: $00
    and $19                                       ; $6060: $E6 $19
    add hl, sp                                    ; $6062: $39
    add $FF                                       ; $6063: $C6 $FF
    nop                                           ; $6065: $00
    rst RST_38                                    ; $6066: $FF
    nop                                           ; $6067: $00
    pop af                                        ; $6068: $F1
    nop                                           ; $6069: $00
    ldh [rP1], a                                  ; $606A: $E0 $00
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

jr_019_607A:
    nop                                           ; $607A: $00
    nop                                           ; $607B: $00
    nop                                           ; $607C: $00
    nop                                           ; $607D: $00
    nop                                           ; $607E: $00
    nop                                           ; $607F: $00
    sbc e                                         ; $6080: $9B
    ld h, h                                       ; $6081: $64
    rst RST_20                                    ; $6082: $E7
    jr jr_019_607A                                ; $6083: $18 $F5

    ld a, [bc]                                    ; $6085: $0A
    ld a, [$7C04]                                 ; $6086: $FA $04 $7C
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
    nop                                           ; $609A: $00
    nop                                           ; $609B: $00
    nop                                           ; $609C: $00
    nop                                           ; $609D: $00
    nop                                           ; $609E: $00
    nop                                           ; $609F: $00
    nop                                           ; $60A0: $00
    nop                                           ; $60A1: $00
    nop                                           ; $60A2: $00
    nop                                           ; $60A3: $00
    nop                                           ; $60A4: $00
    nop                                           ; $60A5: $00
    inc bc                                        ; $60A6: $03
    nop                                           ; $60A7: $00
    ld b, $03                                     ; $60A8: $06 $03
    dec e                                         ; $60AA: $1D
    ld [bc], a                                    ; $60AB: $02
    dec h                                         ; $60AC: $25
    ld a, [de]                                    ; $60AD: $1A
    dec h                                         ; $60AE: $25
    ld a, [de]                                    ; $60AF: $1A
    dec a                                         ; $60B0: $3D
    ld a, [de]                                    ; $60B1: $1A
    rra                                           ; $60B2: $1F
    nop                                           ; $60B3: $00
    nop                                           ; $60B4: $00
    nop                                           ; $60B5: $00
    rra                                           ; $60B6: $1F
    nop                                           ; $60B7: $00
    ccf                                           ; $60B8: $3F
    dec de                                        ; $60B9: $1B
    ld a, a                                       ; $60BA: $7F
    scf                                           ; $60BB: $37
    ld a, a                                       ; $60BC: $7F
    jr nc, jr_019_613E                            ; $60BD: $30 $7F

    inc bc                                        ; $60BF: $03
    nop                                           ; $60C0: $00
    nop                                           ; $60C1: $00
    ld bc, $0100                                  ; $60C2: $01 $00 $01
    nop                                           ; $60C5: $00
    ld a, a                                       ; $60C6: $7F
    nop                                           ; $60C7: $00
    sub c                                         ; $60C8: $91
    ld a, [hl]                                    ; $60C9: $7E
    sub c                                         ; $60CA: $91
    ld a, [hl]                                    ; $60CB: $7E
    rst RST_38                                    ; $60CC: $FF
    ld a, [hl]                                    ; $60CD: $7E
    ld a, a                                       ; $60CE: $7F
    nop                                           ; $60CF: $00
    nop                                           ; $60D0: $00
    nop                                           ; $60D1: $00
    nop                                           ; $60D2: $00
    nop                                           ; $60D3: $00
    ld bc, $0300                                  ; $60D4: $01 $00 $03
    ld bc, $0103                                  ; $60D7: $01 $03 $01
    inc bc                                        ; $60DA: $03
    nop                                           ; $60DB: $00
    ld bc, $0100                                  ; $60DC: $01 $00 $01

Call_019_60DF:
    nop                                           ; $60DF: $00
    add b                                         ; $60E0: $80
    nop                                           ; $60E1: $00
    ret nz                                        ; $60E2: $C0

    add b                                         ; $60E3: $80

jr_019_60E4:
    cp a                                          ; $60E4: $BF
    ret nz                                        ; $60E5: $C0

    and b                                         ; $60E6: $A0
    rst RST_18                                    ; $60E7: $DF
    and b                                         ; $60E8: $A0
    rst RST_18                                    ; $60E9: $DF
    cp a                                          ; $60EA: $BF
    sbc $FE                                       ; $60EB: $DE $FE
    ld bc, $0102                                  ; $60ED: $01 $02 $01
    rst RST_38                                    ; $60F0: $FF
    nop                                           ; $60F1: $00
    rst RST_38                                    ; $60F2: $FF
    rst RST_18                                    ; $60F3: $DF
    rst RST_38                                    ; $60F4: $FF
    cp a                                          ; $60F5: $BF
    rst RST_38                                    ; $60F6: $FF
    add b                                         ; $60F7: $80
    rst RST_38                                    ; $60F8: $FF
    rra                                           ; $60F9: $1F
    ccf                                           ; $60FA: $3F
    rst RST_18                                    ; $60FB: $DF
    rst RST_38                                    ; $60FC: $FF
    rra                                           ; $60FD: $1F
    sbc a                                         ; $60FE: $9F
    ld l, a                                       ; $60FF: $6F
    ld a, a                                       ; $6100: $7F
    nop                                           ; $6101: $00
    ld b, b                                       ; $6102: $40
    ccf                                           ; $6103: $3F
    ld b, b                                       ; $6104: $40
    ccf                                           ; $6105: $3F
    ld hl, sp+$07                                 ; $6106: $F8 $07
    ld c, b                                       ; $6108: $48
    or a                                          ; $6109: $B7
    cp a                                          ; $610A: $BF
    ld b, b                                       ; $610B: $40
    ld a, a                                       ; $610C: $7F
    or a                                          ; $610D: $B7
    rst RST_38                                    ; $610E: $FF
    ld l, a                                       ; $610F: $6F
    rst RST_38                                    ; $6110: $FF
    ld l, a                                       ; $6111: $6F
    rst RST_38                                    ; $6112: $FF
    nop                                           ; $6113: $00
    rst RST_38                                    ; $6114: $FF
    rst RST_30                                    ; $6115: $F7
    rst RST_38                                    ; $6116: $FF
    rst RST_28                                    ; $6117: $EF
    rst RST_38                                    ; $6118: $FF
    rrca                                          ; $6119: $0F
    rst RST_38                                    ; $611A: $FF
    ldh [rIE], a                                  ; $611B: $E0 $FF
    ldh [$FFF0], a                                ; $611D: $E0 $F0
    rst RST_28                                    ; $611F: $EF
    ret nz                                        ; $6120: $C0

    nop                                           ; $6121: $00
    jr nz, jr_019_60E4                            ; $6122: $20 $C0

    ccf                                           ; $6124: $3F
    ret nz                                        ; $6125: $C0

    nop                                           ; $6126: $00
    rst RST_38                                    ; $6127: $FF
    ccf                                           ; $6128: $3F
    ret nz                                        ; $6129: $C0

    rst RST_38                                    ; $612A: $FF
    rra                                           ; $612B: $1F
    rst RST_38                                    ; $612C: $FF
    rst RST_18                                    ; $612D: $DF
    rst RST_38                                    ; $612E: $FF
    rst RST_18                                    ; $612F: $DF
    rst RST_38                                    ; $6130: $FF
    rst RST_18                                    ; $6131: $DF
    rst RST_38                                    ; $6132: $FF
    nop                                           ; $6133: $00
    rst RST_38                                    ; $6134: $FF
    cp a                                          ; $6135: $BF
    rst RST_38                                    ; $6136: $FF
    ld a, a                                       ; $6137: $7F
    rst RST_38                                    ; $6138: $FF
    ld a, a                                       ; $6139: $7F
    rst RST_38                                    ; $613A: $FF
    ld a, a                                       ; $613B: $7F
    rst RST_38                                    ; $613C: $FF
    nop                                           ; $613D: $00

jr_019_613E:
    push de                                       ; $613E: $D5
    ld a, [hl+]                                   ; $613F: $2A
    add b                                         ; $6140: $80
    nop                                           ; $6141: $00
    ld b, b                                       ; $6142: $40
    add b                                         ; $6143: $80
    and b                                         ; $6144: $A0
    ld b, b                                       ; $6145: $40
    ldh [$FF80], a                                ; $6146: $E0 $80
    ldh [$FF80], a                                ; $6148: $E0 $80
    ret nz                                        ; $614A: $C0

    add b                                         ; $614B: $80
    adc $80                                       ; $614C: $CE $80
    rst RST_38                                    ; $614E: $FF
    ld c, $FF                                     ; $614F: $0E $FF
    cp [hl]                                       ; $6151: $BE
    rst RST_38                                    ; $6152: $FF
    cp [hl]                                       ; $6153: $BE
    rst RST_38                                    ; $6154: $FF
    cp h                                          ; $6155: $BC
    rst RST_38                                    ; $6156: $FF
    cp b                                          ; $6157: $B8
    db $FD                                        ; $6158: $FD
    ld [bc], a                                    ; $6159: $02
    ld d, a                                       ; $615A: $57
    xor b                                         ; $615B: $A8
    rst RST_08                                    ; $615C: $CF
    jr nc, jr_019_6191                            ; $615D: $30 $32

    call z, Call_000_00FF                         ; $615F: $CC $FF $00
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
    rst RST_38                                    ; $6180: $FF
    ldh a, [$FFF8]                                ; $6181: $F0 $F8
    rlca                                          ; $6183: $07
    rrca                                          ; $6184: $0F
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

jr_019_6191:
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
    nop                                           ; $619E: $00
    nop                                           ; $619F: $00
    call z, Call_019_7333                         ; $61A0: $CC $33 $73
    adc h                                         ; $61A3: $8C
    rst RST_38                                    ; $61A4: $FF
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
    db $FC                                        ; $61C0: $FC
    nop                                           ; $61C1: $00
    nop                                           ; $61C2: $00
    nop                                           ; $61C3: $00
    nop                                           ; $61C4: $00
    nop                                           ; $61C5: $00
    nop                                           ; $61C6: $00
    nop                                           ; $61C7: $00
    nop                                           ; $61C8: $00
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
    ld bc, $0200                                  ; $61E0: $01 $00 $02
    ld bc, $0205                                  ; $61E3: $01 $05 $02
    rlca                                          ; $61E6: $07
    ld bc, $0107                                  ; $61E7: $01 $07 $01
    inc bc                                        ; $61EA: $03
    ld bc, $0103                                  ; $61EB: $01 $03 $01
    rst RST_38                                    ; $61EE: $FF
    nop                                           ; $61EF: $00
    rst RST_38                                    ; $61F0: $FF
    rst RST_18                                    ; $61F1: $DF
    rst RST_38                                    ; $61F2: $FF
    cp a                                          ; $61F3: $BF
    rst RST_38                                    ; $61F4: $FF
    add b                                         ; $61F5: $80
    rst RST_38                                    ; $61F6: $FF
    rra                                           ; $61F7: $1F
    ccf                                           ; $61F8: $3F
    rst RST_18                                    ; $61F9: $DF
    rst RST_38                                    ; $61FA: $FF
    rra                                           ; $61FB: $1F
    sbc a                                         ; $61FC: $9F
    ld l, a                                       ; $61FD: $6F
    rst RST_38                                    ; $61FE: $FF
    nop                                           ; $61FF: $00
    inc bc                                        ; $6200: $03
    nop                                           ; $6201: $00
    inc b                                         ; $6202: $04
    inc bc                                        ; $6203: $03
    db $FC                                        ; $6204: $FC
    inc bc                                        ; $6205: $03
    nop                                           ; $6206: $00
    rst RST_38                                    ; $6207: $FF
    db $FC                                        ; $6208: $FC
    inc bc                                        ; $6209: $03
    rst RST_38                                    ; $620A: $FF
    ld hl, sp-$01                                 ; $620B: $F8 $FF
    ei                                            ; $620D: $FB
    rst RST_38                                    ; $620E: $FF
    ei                                            ; $620F: $FB
    rst RST_38                                    ; $6210: $FF
    ei                                            ; $6211: $FB
    rst RST_38                                    ; $6212: $FF
    nop                                           ; $6213: $00
    rst RST_38                                    ; $6214: $FF
    rst RST_30                                    ; $6215: $F7
    rst RST_38                                    ; $6216: $FF
    rst RST_28                                    ; $6217: $EF
    rst RST_38                                    ; $6218: $FF
    rrca                                          ; $6219: $0F
    rst RST_38                                    ; $621A: $FF
    ldh [rIE], a                                  ; $621B: $E0 $FF
    ldh [$FFF0], a                                ; $621D: $E0 $F0
    rst RST_28                                    ; $621F: $EF
    cp $00                                        ; $6220: $FE $00
    ld [bc], a                                    ; $6222: $02
    db $FC                                        ; $6223: $FC
    ld [bc], a                                    ; $6224: $02
    db $FC                                        ; $6225: $FC
    rra                                           ; $6226: $1F
    ldh [rNR12], a                                ; $6227: $E0 $12
    db $ED                                        ; $6229: $ED
    db $FD                                        ; $622A: $FD
    ld [bc], a                                    ; $622B: $02
    cp $ED                                        ; $622C: $FE $ED
    rst RST_38                                    ; $622E: $FF
    or $FF                                        ; $622F: $F6 $FF
    or $FF                                        ; $6231: $F6 $FF
    nop                                           ; $6233: $00
    rst RST_38                                    ; $6234: $FF
    cp a                                          ; $6235: $BF
    rst RST_38                                    ; $6236: $FF
    ld a, a                                       ; $6237: $7F
    rst RST_38                                    ; $6238: $FF
    ld a, a                                       ; $6239: $7F
    rst RST_38                                    ; $623A: $FF
    ld a, a                                       ; $623B: $7F
    rst RST_38                                    ; $623C: $FF
    nop                                           ; $623D: $00
    push de                                       ; $623E: $D5
    ld a, [hl+]                                   ; $623F: $2A
    nop                                           ; $6240: $00
    nop                                           ; $6241: $00
    ld bc, $0300                                  ; $6242: $01 $00 $03
    ld bc, $03FD                                  ; $6245: $01 $FD $03
    dec b                                         ; $6248: $05
    ei                                            ; $6249: $FB
    dec b                                         ; $624A: $05
    ei                                            ; $624B: $FB
    db $FD                                        ; $624C: $FD
    ld a, e                                       ; $624D: $7B
    ld a, a                                       ; $624E: $7F
    add b                                         ; $624F: $80
    ld c, [hl]                                    ; $6250: $4E
    add b                                         ; $6251: $80
    rst RST_38                                    ; $6252: $FF
    ld c, $FF                                     ; $6253: $0E $FF
    cp [hl]                                       ; $6255: $BE
    rst RST_38                                    ; $6256: $FF
    cp [hl]                                       ; $6257: $BE
    rst RST_38                                    ; $6258: $FF
    cp h                                          ; $6259: $BC
    rst RST_38                                    ; $625A: $FF
    cp b                                          ; $625B: $B8
    db $FD                                        ; $625C: $FD
    ld [bc], a                                    ; $625D: $02
    ld d, a                                       ; $625E: $57
    xor b                                         ; $625F: $A8
    nop                                           ; $6260: $00
    nop                                           ; $6261: $00
    nop                                           ; $6262: $00
    nop                                           ; $6263: $00
    nop                                           ; $6264: $00
    nop                                           ; $6265: $00
    nop                                           ; $6266: $00
    nop                                           ; $6267: $00
    nop                                           ; $6268: $00
    nop                                           ; $6269: $00
    nop                                           ; $626A: $00
    nop                                           ; $626B: $00
    nop                                           ; $626C: $00
    nop                                           ; $626D: $00
    nop                                           ; $626E: $00
    nop                                           ; $626F: $00
    nop                                           ; $6270: $00
    nop                                           ; $6271: $00
    add b                                         ; $6272: $80
    nop                                           ; $6273: $00
    add b                                         ; $6274: $80
    nop                                           ; $6275: $00
    cp $00                                        ; $6276: $FE $00
    adc c                                         ; $6278: $89
    ld a, [hl]                                    ; $6279: $7E
    adc c                                         ; $627A: $89
    ld a, [hl]                                    ; $627B: $7E
    rst RST_38                                    ; $627C: $FF
    ld a, [hl]                                    ; $627D: $7E
    cp $00                                        ; $627E: $FE $00
    ld bc, $0300                                  ; $6280: $01 $00 $03
    ld bc, $0103                                  ; $6283: $01 $03 $01
    inc bc                                        ; $6286: $03
    nop                                           ; $6287: $00
    ld bc, $0100                                  ; $6288: $01 $00 $01
    nop                                           ; $628B: $00
    nop                                           ; $628C: $00
    nop                                           ; $628D: $00
    nop                                           ; $628E: $00
    nop                                           ; $628F: $00
    nop                                           ; $6290: $00
    nop                                           ; $6291: $00
    nop                                           ; $6292: $00
    nop                                           ; $6293: $00
    nop                                           ; $6294: $00
    nop                                           ; $6295: $00
    nop                                           ; $6296: $00
    nop                                           ; $6297: $00
    nop                                           ; $6298: $00
    nop                                           ; $6299: $00
    nop                                           ; $629A: $00
    nop                                           ; $629B: $00
    nop                                           ; $629C: $00
    nop                                           ; $629D: $00
    nop                                           ; $629E: $00
    nop                                           ; $629F: $00
    rst RST_38                                    ; $62A0: $FF
    ldh a, [$FFF8]                                ; $62A1: $F0 $F8
    rlca                                          ; $62A3: $07
    rrca                                          ; $62A4: $0F
    nop                                           ; $62A5: $00
    nop                                           ; $62A6: $00
    nop                                           ; $62A7: $00
    nop                                           ; $62A8: $00
    nop                                           ; $62A9: $00
    nop                                           ; $62AA: $00
    nop                                           ; $62AB: $00
    nop                                           ; $62AC: $00
    nop                                           ; $62AD: $00
    nop                                           ; $62AE: $00
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
    call z, Call_019_7333                         ; $62C0: $CC $33 $73
    adc h                                         ; $62C3: $8C
    rst RST_38                                    ; $62C4: $FF
    nop                                           ; $62C5: $00
    nop                                           ; $62C6: $00
    nop                                           ; $62C7: $00
    nop                                           ; $62C8: $00
    nop                                           ; $62C9: $00
    nop                                           ; $62CA: $00
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
    rst RST_08                                    ; $62E0: $CF
    jr nc, jr_019_6315                            ; $62E1: $30 $32

    call z, Call_000_00FC                         ; $62E3: $CC $FC $00
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
    ld bc, $0700                                  ; $6300: $01 $00 $07
    ld bc, $031C                                  ; $6303: $01 $1C $03
    ld a, $01                                     ; $6306: $3E $01
    ccf                                           ; $6308: $3F
    ld bc, $003F                                  ; $6309: $01 $3F $00
    inc e                                         ; $630C: $1C
    nop                                           ; $630D: $00
    nop                                           ; $630E: $00
    nop                                           ; $630F: $00
    nop                                           ; $6310: $00
    nop                                           ; $6311: $00
    nop                                           ; $6312: $00
    nop                                           ; $6313: $00
    nop                                           ; $6314: $00

jr_019_6315:
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
    ld bc, $0100                                  ; $6320: $01 $00 $01
    nop                                           ; $6323: $00
    inc bc                                        ; $6324: $03
    nop                                           ; $6325: $00
    jr c, jr_019_632F                             ; $6326: $38 $07

    ld h, h                                       ; $6328: $64
    dec sp                                        ; $6329: $3B
    ld a, d                                       ; $632A: $7A
    dec e                                         ; $632B: $1D
    sbc e                                         ; $632C: $9B
    ld l, l                                       ; $632D: $6D
    rra                                           ; $632E: $1F

jr_019_632F:
    db $EC                                        ; $632F: $EC
    cp a                                          ; $6330: $BF
    ldh a, [c]                                    ; $6331: $F2
    rst RST_38                                    ; $6332: $FF
    call Call_000_00DF                            ; $6333: $CD $DF $00
    ccf                                           ; $6336: $3F
    dec de                                        ; $6337: $1B
    ccf                                           ; $6338: $3F
    dec de                                        ; $6339: $1B
    ccf                                           ; $633A: $3F
    dec de                                        ; $633B: $1B
    ccf                                           ; $633C: $3F
    nop                                           ; $633D: $00
    inc de                                        ; $633E: $13
    inc c                                         ; $633F: $0C
    rlca                                          ; $6340: $07
    nop                                           ; $6341: $00
    jr @+$09                                      ; $6342: $18 $07

    ld h, b                                       ; $6344: $60
    rra                                           ; $6345: $1F
    add e                                         ; $6346: $83
    ld a, h                                       ; $6347: $7C
    db $EC                                        ; $6348: $EC
    inc de                                        ; $6349: $13
    ld sp, $A7CE                                  ; $634A: $31 $CE $A7
    ld e, b                                       ; $634D: $58
    ld l, e                                       ; $634E: $6B
    sub h                                         ; $634F: $94
    ld d, e                                       ; $6350: $53
    xor l                                         ; $6351: $AD
    rst RST_10                                    ; $6352: $D7
    xor e                                         ; $6353: $AB
    rst RST_10                                    ; $6354: $D7
    dec hl                                        ; $6355: $2B
    rst RST_38                                    ; $6356: $FF
    nop                                           ; $6357: $00
    rst RST_38                                    ; $6358: $FF
    rst RST_38                                    ; $6359: $FF
    rst RST_38                                    ; $635A: $FF
    cp $FF                                        ; $635B: $FE $FF
    nop                                           ; $635D: $00
    rst RST_38                                    ; $635E: $FF
    db $FD                                        ; $635F: $FD
    jr nc, jr_019_6362                            ; $6360: $30 $00

jr_019_6362:
    call z, $1730                                 ; $6362: $CC $30 $17
    add sp, -$51                                  ; $6365: $E8 $AF
    ld d, a                                       ; $6367: $57
    rst RST_18                                    ; $6368: $DF
    cpl                                           ; $6369: $2F
    ccf                                           ; $636A: $3F
    sbc $7F                                       ; $636B: $DE $7F
    add c                                         ; $636D: $81
    rst RST_38                                    ; $636E: $FF
    ld a, d                                       ; $636F: $7A
    rst RST_38                                    ; $6370: $FF
    rst RST_30                                    ; $6371: $F7
    rst RST_38                                    ; $6372: $FF
    ld c, $FF                                     ; $6373: $0E $FF
    db $ED                                        ; $6375: $ED
    rst RST_38                                    ; $6376: $FF
    db $EB                                        ; $6377: $EB
    rst RST_38                                    ; $6378: $FF
    and $FF                                       ; $6379: $E6 $FF
    dec c                                         ; $637B: $0D
    rst RST_38                                    ; $637C: $FF
    ld a, e                                       ; $637D: $7B
    rst RST_38                                    ; $637E: $FF
    rst RST_30                                    ; $637F: $F7
    rst RST_38                                    ; $6380: $FF
    jp c, $B6FF                                   ; $6381: $DA $FF $B6

    rst RST_38                                    ; $6384: $FF
    ld l, [hl]                                    ; $6385: $6E
    rst RST_38                                    ; $6386: $FF
    inc e                                         ; $6387: $1C
    rst RST_38                                    ; $6388: $FF
    sbc h                                         ; $6389: $9C
    db $FD                                        ; $638A: $FD
    ld e, d                                       ; $638B: $5A
    rst RST_38                                    ; $638C: $FF
    ret c                                         ; $638D: $D8

    ei                                            ; $638E: $FB
    call nc, $C8F7                                ; $638F: $D4 $F7 $C8
    xor $D0                                       ; $6392: $EE $D0
    db $FC                                        ; $6394: $FC
    add b                                         ; $6395: $80
    ret c                                         ; $6396: $D8

    jr nz, jr_019_63C9                            ; $6397: $20 $30

    ret nz                                        ; $6399: $C0

    ldh [rP1], a                                  ; $639A: $E0 $00
    ret nz                                        ; $639C: $C0

    nop                                           ; $639D: $00
    add b                                         ; $639E: $80
    nop                                           ; $639F: $00
    inc c                                         ; $63A0: $0C
    inc bc                                        ; $63A1: $03
    rlca                                          ; $63A2: $07
    nop                                           ; $63A3: $00
    nop                                           ; $63A4: $00
    nop                                           ; $63A5: $00
    nop                                           ; $63A6: $00
    nop                                           ; $63A7: $00
    nop                                           ; $63A8: $00
    nop                                           ; $63A9: $00
    nop                                           ; $63AA: $00
    nop                                           ; $63AB: $00
    nop                                           ; $63AC: $00
    nop                                           ; $63AD: $00
    nop                                           ; $63AE: $00
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
    rst RST_38                                    ; $63C0: $FF
    db $FD                                        ; $63C1: $FD
    rst RST_38                                    ; $63C2: $FF
    db $FD                                        ; $63C3: $FD
    rst RST_38                                    ; $63C4: $FF
    nop                                           ; $63C5: $00
    rst RST_38                                    ; $63C6: $FF
    cp $FF                                        ; $63C7: $FE $FF

jr_019_63C9:
    nop                                           ; $63C9: $00
    ret nz                                        ; $63CA: $C0

    nop                                           ; $63CB: $00
    nop                                           ; $63CC: $00
    nop                                           ; $63CD: $00
    nop                                           ; $63CE: $00
    nop                                           ; $63CF: $00
    nop                                           ; $63D0: $00
    nop                                           ; $63D1: $00
    nop                                           ; $63D2: $00
    nop                                           ; $63D3: $00
    nop                                           ; $63D4: $00
    nop                                           ; $63D5: $00
    nop                                           ; $63D6: $00
    nop                                           ; $63D7: $00
    nop                                           ; $63D8: $00
    nop                                           ; $63D9: $00
    nop                                           ; $63DA: $00
    nop                                           ; $63DB: $00
    nop                                           ; $63DC: $00
    nop                                           ; $63DD: $00
    nop                                           ; $63DE: $00
    nop                                           ; $63DF: $00
    rst RST_38                                    ; $63E0: $FF
    rrca                                          ; $63E1: $0F
    rst RST_38                                    ; $63E2: $FF
    rst RST_18                                    ; $63E3: $DF
    rst RST_38                                    ; $63E4: $FF
    sbc $FF                                       ; $63E5: $DE $FF
    ret nc                                        ; $63E7: $D0

    db $F4                                        ; $63E8: $F4
    dec bc                                        ; $63E9: $0B
    rrca                                          ; $63EA: $0F
    ldh a, [$FFF9]                                ; $63EB: $F0 $F9
    ld b, $86                                     ; $63ED: $06 $86
    ld a, b                                       ; $63EF: $78
    ld a, h                                       ; $63F0: $7C
    nop                                           ; $63F1: $00
    nop                                           ; $63F2: $00
    nop                                           ; $63F3: $00
    nop                                           ; $63F4: $00
    nop                                           ; $63F5: $00
    nop                                           ; $63F6: $00
    nop                                           ; $63F7: $00
    nop                                           ; $63F8: $00
    nop                                           ; $63F9: $00
    nop                                           ; $63FA: $00
    nop                                           ; $63FB: $00
    nop                                           ; $63FC: $00
    nop                                           ; $63FD: $00
    nop                                           ; $63FE: $00
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
    nop                                           ; $6416: $00
    nop                                           ; $6417: $00
    add b                                         ; $6418: $80
    nop                                           ; $6419: $00
    ldh [$FF80], a                                ; $641A: $E0 $80
    db $FC                                        ; $641C: $FC
    ld h, b                                       ; $641D: $60
    cp $EC                                        ; $641E: $FE $EC
    rst RST_38                                    ; $6420: $FF
    rst RST_38                                    ; $6421: $FF
    rst RST_38                                    ; $6422: $FF
    rst RST_38                                    ; $6423: $FF
    rst RST_38                                    ; $6424: $FF
    rst RST_38                                    ; $6425: $FF
    rst RST_38                                    ; $6426: $FF
    rst RST_38                                    ; $6427: $FF
    rst RST_38                                    ; $6428: $FF
    rst RST_38                                    ; $6429: $FF
    rst RST_38                                    ; $642A: $FF
    rst RST_38                                    ; $642B: $FF
    rst RST_38                                    ; $642C: $FF
    rst RST_38                                    ; $642D: $FF
    rst RST_38                                    ; $642E: $FF
    rst RST_38                                    ; $642F: $FF
    rst RST_38                                    ; $6430: $FF
    rst RST_38                                    ; $6431: $FF
    rst RST_38                                    ; $6432: $FF
    rst RST_38                                    ; $6433: $FF
    rst RST_38                                    ; $6434: $FF
    rst RST_38                                    ; $6435: $FF
    rst RST_38                                    ; $6436: $FF
    rst RST_38                                    ; $6437: $FF
    rst RST_38                                    ; $6438: $FF
    rst RST_38                                    ; $6439: $FF
    rst RST_38                                    ; $643A: $FF
    rst RST_38                                    ; $643B: $FF
    rst RST_38                                    ; $643C: $FF
    rst RST_38                                    ; $643D: $FF
    rst RST_38                                    ; $643E: $FF
    rst RST_38                                    ; $643F: $FF
    rst RST_38                                    ; $6440: $FF
    rst RST_38                                    ; $6441: $FF
    rst RST_38                                    ; $6442: $FF
    rst RST_38                                    ; $6443: $FF
    rst RST_38                                    ; $6444: $FF
    rst RST_38                                    ; $6445: $FF
    rst RST_38                                    ; $6446: $FF
    rst RST_38                                    ; $6447: $FF
    rst RST_38                                    ; $6448: $FF
    rst RST_38                                    ; $6449: $FF
    rst RST_38                                    ; $644A: $FF
    rst RST_38                                    ; $644B: $FF
    rst RST_38                                    ; $644C: $FF
    rst RST_38                                    ; $644D: $FF
    rst RST_38                                    ; $644E: $FF
    rst RST_38                                    ; $644F: $FF
    rst RST_38                                    ; $6450: $FF
    rst RST_38                                    ; $6451: $FF
    rst RST_38                                    ; $6452: $FF
    rst RST_38                                    ; $6453: $FF
    rst RST_38                                    ; $6454: $FF
    rst RST_38                                    ; $6455: $FF
    rst RST_38                                    ; $6456: $FF
    rst RST_38                                    ; $6457: $FF
    rst RST_38                                    ; $6458: $FF
    rst RST_38                                    ; $6459: $FF
    rst RST_38                                    ; $645A: $FF
    rst RST_38                                    ; $645B: $FF
    rst RST_38                                    ; $645C: $FF
    rst RST_38                                    ; $645D: $FF
    rst RST_38                                    ; $645E: $FF
    rst RST_38                                    ; $645F: $FF
    rst RST_38                                    ; $6460: $FF
    rst RST_38                                    ; $6461: $FF
    rst RST_38                                    ; $6462: $FF
    rst RST_38                                    ; $6463: $FF
    rst RST_38                                    ; $6464: $FF
    rst RST_38                                    ; $6465: $FF
    rst RST_38                                    ; $6466: $FF
    rst RST_38                                    ; $6467: $FF
    rst RST_38                                    ; $6468: $FF
    rst RST_38                                    ; $6469: $FF
    rst RST_38                                    ; $646A: $FF
    rst RST_38                                    ; $646B: $FF
    rst RST_38                                    ; $646C: $FF
    rst RST_38                                    ; $646D: $FF
    rst RST_38                                    ; $646E: $FF
    rst RST_38                                    ; $646F: $FF
    rst RST_38                                    ; $6470: $FF
    rst RST_38                                    ; $6471: $FF
    rst RST_38                                    ; $6472: $FF
    rst RST_38                                    ; $6473: $FF
    rst RST_38                                    ; $6474: $FF
    rst RST_38                                    ; $6475: $FF
    rst RST_38                                    ; $6476: $FF
    rst RST_38                                    ; $6477: $FF
    rst RST_38                                    ; $6478: $FF
    rst RST_38                                    ; $6479: $FF
    rst RST_38                                    ; $647A: $FF
    rst RST_38                                    ; $647B: $FF
    rst RST_38                                    ; $647C: $FF
    rst RST_38                                    ; $647D: $FF
    rst RST_38                                    ; $647E: $FF
    rst RST_38                                    ; $647F: $FF
    rst RST_38                                    ; $6480: $FF
    rst RST_38                                    ; $6481: $FF
    rst RST_38                                    ; $6482: $FF
    rst RST_38                                    ; $6483: $FF
    rst RST_38                                    ; $6484: $FF
    rst RST_38                                    ; $6485: $FF
    rst RST_38                                    ; $6486: $FF
    rst RST_38                                    ; $6487: $FF
    rst RST_38                                    ; $6488: $FF
    rst RST_38                                    ; $6489: $FF
    rst RST_38                                    ; $648A: $FF
    rst RST_38                                    ; $648B: $FF
    rst RST_38                                    ; $648C: $FF
    rst RST_38                                    ; $648D: $FF
    rst RST_38                                    ; $648E: $FF
    rst RST_38                                    ; $648F: $FF
    rst RST_38                                    ; $6490: $FF
    rst RST_38                                    ; $6491: $FF
    rst RST_38                                    ; $6492: $FF
    rst RST_38                                    ; $6493: $FF
    rst RST_38                                    ; $6494: $FF
    rst RST_38                                    ; $6495: $FF
    rst RST_38                                    ; $6496: $FF
    rst RST_38                                    ; $6497: $FF
    rst RST_38                                    ; $6498: $FF
    rst RST_38                                    ; $6499: $FF
    rst RST_38                                    ; $649A: $FF
    rst RST_38                                    ; $649B: $FF
    rst RST_38                                    ; $649C: $FF
    rst RST_38                                    ; $649D: $FF
    rst RST_38                                    ; $649E: $FF
    rst RST_38                                    ; $649F: $FF
    rst RST_38                                    ; $64A0: $FF
    rst RST_38                                    ; $64A1: $FF
    rst RST_38                                    ; $64A2: $FF
    rst RST_38                                    ; $64A3: $FF
    rst RST_38                                    ; $64A4: $FF
    rst RST_38                                    ; $64A5: $FF
    rst RST_38                                    ; $64A6: $FF
    rst RST_38                                    ; $64A7: $FF
    rst RST_38                                    ; $64A8: $FF
    rst RST_38                                    ; $64A9: $FF
    rst RST_38                                    ; $64AA: $FF
    rst RST_38                                    ; $64AB: $FF
    rst RST_38                                    ; $64AC: $FF
    rst RST_38                                    ; $64AD: $FF
    rst RST_38                                    ; $64AE: $FF
    rst RST_38                                    ; $64AF: $FF
    rst RST_38                                    ; $64B0: $FF
    rst RST_38                                    ; $64B1: $FF
    rst RST_38                                    ; $64B2: $FF
    rst RST_38                                    ; $64B3: $FF
    rst RST_38                                    ; $64B4: $FF
    rst RST_38                                    ; $64B5: $FF
    rst RST_38                                    ; $64B6: $FF
    rst RST_38                                    ; $64B7: $FF
    rst RST_38                                    ; $64B8: $FF
    rst RST_38                                    ; $64B9: $FF
    rst RST_38                                    ; $64BA: $FF
    rst RST_38                                    ; $64BB: $FF
    rst RST_38                                    ; $64BC: $FF
    rst RST_38                                    ; $64BD: $FF
    rst RST_38                                    ; $64BE: $FF
    rst RST_38                                    ; $64BF: $FF
    rst RST_38                                    ; $64C0: $FF
    rst RST_38                                    ; $64C1: $FF
    rst RST_38                                    ; $64C2: $FF
    rst RST_38                                    ; $64C3: $FF
    rst RST_38                                    ; $64C4: $FF
    rst RST_38                                    ; $64C5: $FF
    rst RST_38                                    ; $64C6: $FF
    rst RST_38                                    ; $64C7: $FF
    rst RST_38                                    ; $64C8: $FF
    rst RST_38                                    ; $64C9: $FF
    rst RST_38                                    ; $64CA: $FF
    rst RST_38                                    ; $64CB: $FF
    rst RST_38                                    ; $64CC: $FF
    rst RST_38                                    ; $64CD: $FF
    rst RST_38                                    ; $64CE: $FF
    rst RST_38                                    ; $64CF: $FF
    rst RST_38                                    ; $64D0: $FF
    rst RST_38                                    ; $64D1: $FF
    rst RST_38                                    ; $64D2: $FF
    rst RST_38                                    ; $64D3: $FF
    rst RST_38                                    ; $64D4: $FF
    rst RST_38                                    ; $64D5: $FF
    rst RST_38                                    ; $64D6: $FF
    rst RST_38                                    ; $64D7: $FF
    rst RST_38                                    ; $64D8: $FF
    rst RST_38                                    ; $64D9: $FF
    rst RST_38                                    ; $64DA: $FF
    rst RST_38                                    ; $64DB: $FF
    rst RST_38                                    ; $64DC: $FF
    rst RST_38                                    ; $64DD: $FF
    rst RST_38                                    ; $64DE: $FF
    rst RST_38                                    ; $64DF: $FF
    rst RST_38                                    ; $64E0: $FF
    rst RST_38                                    ; $64E1: $FF
    rst RST_38                                    ; $64E2: $FF
    rst RST_38                                    ; $64E3: $FF
    rst RST_38                                    ; $64E4: $FF
    rst RST_38                                    ; $64E5: $FF
    rst RST_38                                    ; $64E6: $FF
    rst RST_38                                    ; $64E7: $FF
    rst RST_38                                    ; $64E8: $FF
    rst RST_38                                    ; $64E9: $FF
    rst RST_38                                    ; $64EA: $FF
    rst RST_38                                    ; $64EB: $FF
    rst RST_38                                    ; $64EC: $FF
    rst RST_38                                    ; $64ED: $FF
    rst RST_38                                    ; $64EE: $FF
    rst RST_38                                    ; $64EF: $FF
    rst RST_38                                    ; $64F0: $FF
    rst RST_38                                    ; $64F1: $FF
    rst RST_38                                    ; $64F2: $FF
    rst RST_38                                    ; $64F3: $FF
    rst RST_38                                    ; $64F4: $FF
    rst RST_38                                    ; $64F5: $FF
    rst RST_38                                    ; $64F6: $FF
    rst RST_38                                    ; $64F7: $FF
    rst RST_38                                    ; $64F8: $FF
    rst RST_38                                    ; $64F9: $FF
    rst RST_38                                    ; $64FA: $FF
    rst RST_38                                    ; $64FB: $FF
    rst RST_38                                    ; $64FC: $FF
    rst RST_38                                    ; $64FD: $FF
    rst RST_38                                    ; $64FE: $FF
    rst RST_38                                    ; $64FF: $FF
    rst RST_38                                    ; $6500: $FF
    rst RST_38                                    ; $6501: $FF
    rst RST_38                                    ; $6502: $FF
    rst RST_38                                    ; $6503: $FF
    rst RST_38                                    ; $6504: $FF
    rst RST_38                                    ; $6505: $FF
    rst RST_38                                    ; $6506: $FF
    rst RST_38                                    ; $6507: $FF
    rst RST_38                                    ; $6508: $FF
    rst RST_38                                    ; $6509: $FF
    rst RST_38                                    ; $650A: $FF
    rst RST_38                                    ; $650B: $FF
    rst RST_38                                    ; $650C: $FF
    rst RST_38                                    ; $650D: $FF
    rst RST_38                                    ; $650E: $FF
    rst RST_38                                    ; $650F: $FF
    rst RST_38                                    ; $6510: $FF
    rst RST_38                                    ; $6511: $FF
    rst RST_38                                    ; $6512: $FF
    rst RST_38                                    ; $6513: $FF
    rst RST_38                                    ; $6514: $FF
    rst RST_38                                    ; $6515: $FF
    rst RST_38                                    ; $6516: $FF
    rst RST_38                                    ; $6517: $FF
    rst RST_38                                    ; $6518: $FF
    rst RST_38                                    ; $6519: $FF
    rst RST_38                                    ; $651A: $FF
    rst RST_38                                    ; $651B: $FF
    rst RST_38                                    ; $651C: $FF
    rst RST_38                                    ; $651D: $FF
    rst RST_38                                    ; $651E: $FF
    rst RST_38                                    ; $651F: $FF
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

Call_019_7333:
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
