; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $013", ROMX[$4000], BANK[$13]

    rlca                                          ; $4000: $07
    nop                                           ; $4001: $00
    rrca                                          ; $4002: $0F
    rlca                                          ; $4003: $07
    ccf                                           ; $4004: $3F
    rrca                                          ; $4005: $0F
    ld a, a                                       ; $4006: $7F
    ccf                                           ; $4007: $3F
    ld a, l                                       ; $4008: $7D
    inc hl                                        ; $4009: $23
    ld l, l                                       ; $400A: $6D
    inc de                                        ; $400B: $13
    db $DB                                        ; $400C: $DB
    ld h, a                                       ; $400D: $67
    add a                                         ; $400E: $87
    ld a, a                                       ; $400F: $7F
    rst RST_30                                    ; $4010: $F7
    ld c, $87                                     ; $4011: $0E $87
    ld a, [hl]                                    ; $4013: $7E
    ld a, [hl]                                    ; $4014: $7E
    dec a                                         ; $4015: $3D
    ld a, h                                       ; $4016: $7C
    inc bc                                        ; $4017: $03
    and b                                         ; $4018: $A0
    ld e, a                                       ; $4019: $5F
    and b                                         ; $401A: $A0
    ld e, a                                       ; $401B: $5F
    and b                                         ; $401C: $A0
    ld e, a                                       ; $401D: $5F
    ld e, a                                       ; $401E: $5F
    db $20, $80                                   ; $401F: $20 $80
    nop                                           ; $4021: $00
    ret nz                                        ; $4022: $C0

    add b                                         ; $4023: $80
    ldh [$FFC0], a                                ; $4024: $E0 $C0
    ldh a, [$FFE0]                                ; $4026: $F0 $E0
    ldh a, [$FFE0]                                ; $4028: $F0 $E0
    ld hl, sp-$10                                 ; $402A: $F8 $F0
    rst RST_38                                    ; $402C: $FF
    ld a, b                                       ; $402D: $78
    rst RST_38                                    ; $402E: $FF
    ld a, a                                       ; $402F: $7F
    rst RST_38                                    ; $4030: $FF
    rst RST_38                                    ; $4031: $FF
    rst RST_38                                    ; $4032: $FF
    rst RST_38                                    ; $4033: $FF
    ld [hl], a                                    ; $4034: $77
    rst RST_38                                    ; $4035: $FF
    inc sp                                        ; $4036: $33
    rst RST_28                                    ; $4037: $EF
    ld sp, $78EF                                  ; $4038: $31 $EF $78
    rst RST_28                                    ; $403B: $EF
    rst RST_38                                    ; $403C: $FF
    rst RST_30                                    ; $403D: $F7
    rst RST_38                                    ; $403E: $FF
    nop                                           ; $403F: $00
    nop                                           ; $4040: $00
    nop                                           ; $4041: $00
    ret nz                                        ; $4042: $C0

    nop                                           ; $4043: $00
    ldh [$FFC0], a                                ; $4044: $E0 $C0
    ldh a, [$FFE0]                                ; $4046: $F0 $E0
    ldh a, [$FFE0]                                ; $4048: $F0 $E0
    ld hl, sp-$10                                 ; $404A: $F8 $F0
    ld hl, sp-$10                                 ; $404C: $F8 $F0
    db $FC                                        ; $404E: $FC
    ld hl, sp-$04                                 ; $404F: $F8 $FC

jr_013_4051:
    jr c, jr_013_4051                             ; $4051: $38 $FE

    db $FC                                        ; $4053: $FC
    cp $FC                                        ; $4054: $FE $FC
    cp $FC                                        ; $4056: $FE $FC
    cp $FC                                        ; $4058: $FE $FC
    db $FC                                        ; $405A: $FC
    ld hl, sp-$08                                 ; $405B: $F8 $F8
    ldh [$FFE0], a                                ; $405D: $E0 $E0
    nop                                           ; $405F: $00
    ld b, $00                                     ; $4060: $06 $00
    add hl, de                                    ; $4062: $19
    ld b, $25                                     ; $4063: $06 $25
    ld a, [de]                                    ; $4065: $1A
    ccf                                           ; $4066: $3F
    ld bc, $1B27                                  ; $4067: $01 $27 $1B
    rra                                           ; $406A: $1F
    inc bc                                        ; $406B: $03
    inc de                                        ; $406C: $13
    inc c                                         ; $406D: $0C
    rrca                                          ; $406E: $0F
    nop                                           ; $406F: $00
    ld [bc], a                                    ; $4070: $02
    ld bc, $0102                                  ; $4071: $01 $02 $01
    ld bc, $0100                                  ; $4074: $01 $00 $01
    nop                                           ; $4077: $00
    nop                                           ; $4078: $00
    nop                                           ; $4079: $00
    ld bc, $0200                                  ; $407A: $01 $00 $02
    ld bc, $0003                                  ; $407D: $01 $03 $00
    ret nz                                        ; $4080: $C0

    ccf                                           ; $4081: $3F
    ret nc                                        ; $4082: $D0

    xor a                                         ; $4083: $AF
    ret nc                                        ; $4084: $D0

    xor a                                         ; $4085: $AF
    add sp, -$69                                  ; $4086: $E8 $97
    add sp, $57                                   ; $4088: $E8 $57
    push af                                       ; $408A: $F5
    ld [$F679], a                                 ; $408B: $EA $79 $F6
    ld a, a                                       ; $408E: $7F
    ld hl, sp+$7E                                 ; $408F: $F8 $7E
    db $FC                                        ; $4091: $FC
    ld a, [hl]                                    ; $4092: $7E
    ld hl, sp-$02                                 ; $4093: $F8 $FE
    db $F4                                        ; $4095: $F4
    rst RST_38                                    ; $4096: $FF
    ld a, [hl]                                    ; $4097: $7E
    rst RST_38                                    ; $4098: $FF
    ld e, $9F                                     ; $4099: $1E $9F
    ld l, [hl]                                    ; $409B: $6E
    cp $00                                        ; $409C: $FE $00
    nop                                           ; $409E: $00
    nop                                           ; $409F: $00
    sbc a                                         ; $40A0: $9F
    ld l, a                                       ; $40A1: $6F
    rst RST_18                                    ; $40A2: $DF
    cpl                                           ; $40A3: $2F
    sbc a                                         ; $40A4: $9F
    ld l, a                                       ; $40A5: $6F
    ld l, a                                       ; $40A6: $6F
    sub a                                         ; $40A7: $97
    rst RST_00                                    ; $40A8: $C7
    dec sp                                        ; $40A9: $3B
    rst RST_38                                    ; $40AA: $FF
    ret nz                                        ; $40AB: $C0

    sbc a                                         ; $40AC: $9F
    cp $9F                                        ; $40AD: $FE $9F
    cp $9F                                        ; $40AF: $FE $9F
    ld a, [hl]                                    ; $40B1: $7E
    rst RST_18                                    ; $40B2: $DF
    ld a, l                                       ; $40B3: $7D
    rst RST_38                                    ; $40B4: $FF
    ld a, a                                       ; $40B5: $7F
    ld a, a                                       ; $40B6: $7F
    ccf                                           ; $40B7: $3F
    ccf                                           ; $40B8: $3F
    rra                                           ; $40B9: $1F
    ccf                                           ; $40BA: $3F
    ld bc, $2A55                                  ; $40BB: $01 $55 $2A
    ld a, a                                       ; $40BE: $7F
    nop                                           ; $40BF: $00

jr_013_40C0:
    add b                                         ; $40C0: $80
    nop                                           ; $40C1: $00
    ret nz                                        ; $40C2: $C0

    add b                                         ; $40C3: $80
    ret nz                                        ; $40C4: $C0

    add b                                         ; $40C5: $80
    ret nz                                        ; $40C6: $C0

    add b                                         ; $40C7: $80
    ldh [$FFC0], a                                ; $40C8: $E0 $C0
    ldh [$FFC0], a                                ; $40CA: $E0 $C0
    ldh [rP1], a                                  ; $40CC: $E0 $00
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
    rlca                                          ; $40E0: $07
    inc bc                                        ; $40E1: $03
    rra                                           ; $40E2: $1F
    rlca                                          ; $40E3: $07
    ccf                                           ; $40E4: $3F
    rra                                           ; $40E5: $1F
    ld a, $11                                     ; $40E6: $3E $11
    ld [hl], $09                                  ; $40E8: $36 $09
    ld l, l                                       ; $40EA: $6D
    inc sp                                        ; $40EB: $33
    ld b, e                                       ; $40EC: $43
    ccf                                           ; $40ED: $3F
    ld a, e                                       ; $40EE: $7B
    rlca                                          ; $40EF: $07
    ld b, e                                       ; $40F0: $43
    ccf                                           ; $40F1: $3F
    ccf                                           ; $40F2: $3F
    ld e, $5E                                     ; $40F3: $1E $5E
    ld hl, $5FA0                                  ; $40F5: $21 $A0 $5F
    and b                                         ; $40F8: $A0
    ld e, a                                       ; $40F9: $5F
    and b                                         ; $40FA: $A0
    ld e, a                                       ; $40FB: $5F
    rst RST_18                                    ; $40FC: $DF
    jr nz, jr_013_40C0                            ; $40FD: $20 $C1

    ld a, $E0                                     ; $40FF: $3E $E0
    ret nz                                        ; $4101: $C0

    ldh a, [$FFE0]                                ; $4102: $F0 $E0
    ldh a, [$FFE0]                                ; $4104: $F0 $E0
    ld hl, sp-$10                                 ; $4106: $F8 $F0
    ld hl, sp-$10                                 ; $4108: $F8 $F0
    cp $B8                                        ; $410A: $FE $B8
    rst RST_38                                    ; $410C: $FF
    cp [hl]                                       ; $410D: $BE
    rst RST_38                                    ; $410E: $FF
    ld a, a                                       ; $410F: $7F
    rst RST_38                                    ; $4110: $FF
    ld a, a                                       ; $4111: $7F
    rst RST_30                                    ; $4112: $F7
    rst RST_28                                    ; $4113: $EF
    inc sp                                        ; $4114: $33
    rst RST_28                                    ; $4115: $EF
    inc sp                                        ; $4116: $33
    rst RST_28                                    ; $4117: $EF
    add hl, sp                                    ; $4118: $39
    rst RST_28                                    ; $4119: $EF
    ld a, a                                       ; $411A: $7F
    rst RST_30                                    ; $411B: $F7
    rst RST_38                                    ; $411C: $FF
    nop                                           ; $411D: $00
    rra                                           ; $411E: $1F
    rst RST_28                                    ; $411F: $EF
    nop                                           ; $4120: $00
    nop                                           ; $4121: $00
    add b                                         ; $4122: $80
    nop                                           ; $4123: $00
    ldh [$FF80], a                                ; $4124: $E0 $80
    ldh a, [$FFE0]                                ; $4126: $F0 $E0
    ldh a, [$FFE0]                                ; $4128: $F0 $E0
    ld hl, sp-$10                                 ; $412A: $F8 $F0
    ld hl, sp-$10                                 ; $412C: $F8 $F0
    db $FC                                        ; $412E: $FC
    ld hl, sp-$04                                 ; $412F: $F8 $FC

jr_013_4131:
    jr c, jr_013_4131                             ; $4131: $38 $FE

    db $FC                                        ; $4133: $FC
    cp $FC                                        ; $4134: $FE $FC
    cp $FC                                        ; $4136: $FE $FC
    cp $FC                                        ; $4138: $FE $FC
    db $FC                                        ; $413A: $FC
    ld hl, sp-$08                                 ; $413B: $F8 $F8
    ldh [$FFE0], a                                ; $413D: $E0 $E0

Jump_013_413F:
    nop                                           ; $413F: $00
    jp nc, $D1AD                                  ; $4140: $D2 $AD $D1

    xor [hl]                                      ; $4143: $AE
    pop de                                        ; $4144: $D1
    xor [hl]                                      ; $4145: $AE
    add sp, -$69                                  ; $4146: $E8 $97
    add sp, $57                                   ; $4148: $E8 $57
    push af                                       ; $414A: $F5
    ld [$F679], a                                 ; $414B: $EA $79 $F6
    ld a, a                                       ; $414E: $7F
    ld hl, sp+$7E                                 ; $414F: $F8 $7E
    db $FC                                        ; $4151: $FC
    ld a, [hl]                                    ; $4152: $7E
    ld hl, sp-$02                                 ; $4153: $F8 $FE
    db $F4                                        ; $4155: $F4
    rst RST_38                                    ; $4156: $FF
    ld a, [hl]                                    ; $4157: $7E
    rst RST_38                                    ; $4158: $FF
    ld e, $9F                                     ; $4159: $1E $9F
    ld l, [hl]                                    ; $415B: $6E
    cp $00                                        ; $415C: $FE $00
    nop                                           ; $415E: $00
    nop                                           ; $415F: $00
    rst RST_18                                    ; $4160: $DF
    cpl                                           ; $4161: $2F
    sbc a                                         ; $4162: $9F
    ld l, a                                       ; $4163: $6F
    ld l, a                                       ; $4164: $6F
    sub a                                         ; $4165: $97
    rst RST_00                                    ; $4166: $C7
    dec sp                                        ; $4167: $3B
    cp a                                          ; $4168: $BF
    ld b, b                                       ; $4169: $40
    rst RST_38                                    ; $416A: $FF
    cp [hl]                                       ; $416B: $BE
    sbc a                                         ; $416C: $9F
    cp $9F                                        ; $416D: $FE $9F
    cp $9F                                        ; $416F: $FE $9F
    ld a, [hl]                                    ; $4171: $7E
    rst RST_18                                    ; $4172: $DF
    ld a, l                                       ; $4173: $7D
    rst RST_38                                    ; $4174: $FF
    ld a, a                                       ; $4175: $7F
    ld a, a                                       ; $4176: $7F
    ccf                                           ; $4177: $3F
    ccf                                           ; $4178: $3F
    rra                                           ; $4179: $1F
    ccf                                           ; $417A: $3F
    ld bc, $2A55                                  ; $417B: $01 $55 $2A
    ld a, a                                       ; $417E: $7F
    nop                                           ; $417F: $00
    inc b                                         ; $4180: $04
    nop                                           ; $4181: $00
    dec sp                                        ; $4182: $3B
    inc b                                         ; $4183: $04
    ld c, e                                       ; $4184: $4B
    dec [hl]                                      ; $4185: $35
    ccf                                           ; $4186: $3F
    dec bc                                        ; $4187: $0B
    ld c, a                                       ; $4188: $4F
    scf                                           ; $4189: $37
    ccf                                           ; $418A: $3F
    rlca                                          ; $418B: $07
    daa                                           ; $418C: $27
    dec de                                        ; $418D: $1B
    rra                                           ; $418E: $1F
    nop                                           ; $418F: $00
    ld bc, $0200                                  ; $4190: $01 $00 $02
    ld bc, $0102                                  ; $4193: $01 $02 $01
    ld bc, $0100                                  ; $4196: $01 $00 $01
    nop                                           ; $4199: $00
    nop                                           ; $419A: $00
    nop                                           ; $419B: $00
    ld bc, $0200                                  ; $419C: $01 $00 $02
    ld bc, $0003                                  ; $419F: $01 $03 $00
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
    nop                                           ; $41B4: $00
    nop                                           ; $41B5: $00
    nop                                           ; $41B6: $00
    nop                                           ; $41B7: $00
    nop                                           ; $41B8: $00
    nop                                           ; $41B9: $00
    nop                                           ; $41BA: $00
    nop                                           ; $41BB: $00
    nop                                           ; $41BC: $00
    nop                                           ; $41BD: $00
    nop                                           ; $41BE: $00
    nop                                           ; $41BF: $00
    add b                                         ; $41C0: $80
    nop                                           ; $41C1: $00
    ret nz                                        ; $41C2: $C0

    add b                                         ; $41C3: $80
    ret nz                                        ; $41C4: $C0

    add b                                         ; $41C5: $80
    ret nz                                        ; $41C6: $C0

    add b                                         ; $41C7: $80
    ldh [$FFC0], a                                ; $41C8: $E0 $C0
    ldh [$FFC0], a                                ; $41CA: $E0 $C0
    ldh [rP1], a                                  ; $41CC: $E0 $00
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
    nop                                           ; $41E0: $00
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
    inc a                                         ; $41FE: $3C

jr_013_41FF:
    nop                                           ; $41FF: $00
    nop                                           ; $4200: $00
    nop                                           ; $4201: $00
    nop                                           ; $4202: $00
    nop                                           ; $4203: $00
    nop                                           ; $4204: $00
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
    inc b                                         ; $4218: $04
    nop                                           ; $4219: $00
    ld a, [bc]                                    ; $421A: $0A
    inc b                                         ; $421B: $04
    ld a, e                                       ; $421C: $7B
    inc b                                         ; $421D: $04
    sbc a                                         ; $421E: $9F
    ld l, e                                       ; $421F: $6B
    rrca                                          ; $4220: $0F
    inc bc                                        ; $4221: $03
    rra                                           ; $4222: $1F
    rrca                                          ; $4223: $0F
    rra                                           ; $4224: $1F
    ld [$041B], sp                                ; $4225: $08 $1B $04
    ld [hl], $19                                  ; $4228: $36 $19
    ld hl, $3D1F                                  ; $422A: $21 $1F $3D
    inc bc                                        ; $422D: $03
    ld hl, $3F1F                                  ; $422E: $21 $1F $3F
    ld c, $5E                                     ; $4231: $0E $5E
    ld hl, $5FA0                                  ; $4233: $21 $A0 $5F
    and b                                         ; $4236: $A0
    ld e, a                                       ; $4237: $5F
    and b                                         ; $4238: $A0
    ld e, a                                       ; $4239: $5F
    rst RST_18                                    ; $423A: $DF
    jr nz, jr_013_41FF                            ; $423B: $20 $C2

    dec a                                         ; $423D: $3D
    pop de                                        ; $423E: $D1
    xor [hl]                                      ; $423F: $AE
    ld hl, sp-$10                                 ; $4240: $F8 $F0
    ld hl, sp-$10                                 ; $4242: $F8 $F0
    ld a, h                                       ; $4244: $7C
    ld hl, sp+$7C                                 ; $4245: $F8 $7C
    ld hl, sp-$02                                 ; $4247: $F8 $FE
    call c, $DEFF                                 ; $4249: $DC $FF $DE
    rst RST_38                                    ; $424C: $FF
    cp e                                          ; $424D: $BB
    rst RST_38                                    ; $424E: $FF
    or a                                          ; $424F: $B7
    rst RST_30                                    ; $4250: $F7
    ld l, a                                       ; $4251: $6F
    scf                                           ; $4252: $37
    rst RST_28                                    ; $4253: $EF
    inc sp                                        ; $4254: $33
    rst RST_28                                    ; $4255: $EF
    dec sp                                        ; $4256: $3B
    rst RST_28                                    ; $4257: $EF
    ld a, a                                       ; $4258: $7F
    rst RST_30                                    ; $4259: $F7
    rst RST_38                                    ; $425A: $FF
    nop                                           ; $425B: $00
    rra                                           ; $425C: $1F
    rst RST_28                                    ; $425D: $EF
    rst RST_18                                    ; $425E: $DF
    cpl                                           ; $425F: $2F
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
    add b                                         ; $426A: $80
    nop                                           ; $426B: $00
    ldh [$FF80], a                                ; $426C: $E0 $80
    ldh a, [$FFE0]                                ; $426E: $F0 $E0
    ldh a, [$FFE0]                                ; $4270: $F0 $E0
    ld hl, sp-$10                                 ; $4272: $F8 $F0
    ld hl, sp-$10                                 ; $4274: $F8 $F0
    db $FC                                        ; $4276: $FC
    ld hl, sp-$04                                 ; $4277: $F8 $FC

jr_013_4279:
    jr c, jr_013_4279                             ; $4279: $38 $FE

    db $FC                                        ; $427B: $FC
    cp $FC                                        ; $427C: $FE $FC
    cp $FC                                        ; $427E: $FE $FC
    nop                                           ; $4280: $00
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
    inc a                                         ; $429C: $3C
    nop                                           ; $429D: $00
    ld a, [hl]                                    ; $429E: $7E
    inc a                                         ; $429F: $3C
    ld a, a                                       ; $42A0: $7F
    rra                                           ; $42A1: $1F
    sbc a                                         ; $42A2: $9F
    ld l, a                                       ; $42A3: $6F
    ld a, a                                       ; $42A4: $7F
    rrca                                          ; $42A5: $0F
    ld c, a                                       ; $42A6: $4F
    scf                                           ; $42A7: $37
    ccf                                           ; $42A8: $3F
    nop                                           ; $42A9: $00
    ld bc, $0200                                  ; $42AA: $01 $00 $02
    ld bc, $0102                                  ; $42AD: $01 $02 $01
    ld [bc], a                                    ; $42B0: $02
    ld bc, $0001                                  ; $42B1: $01 $01 $00
    ld bc, $0000                                  ; $42B4: $01 $00 $00
    nop                                           ; $42B7: $00
    ld bc, $0200                                  ; $42B8: $01 $00 $02
    ld bc, $0003                                  ; $42BB: $01 $03 $00
    nop                                           ; $42BE: $00
    nop                                           ; $42BF: $00
    pop de                                        ; $42C0: $D1
    xor [hl]                                      ; $42C1: $AE
    jp nc, $E9AD                                  ; $42C2: $D2 $AD $E9

    sub [hl]                                      ; $42C5: $96
    jp hl                                         ; $42C6: $E9


    ld d, [hl]                                    ; $42C7: $56
    db $F4                                        ; $42C8: $F4
    db $EB                                        ; $42C9: $EB
    ld a, c                                       ; $42CA: $79
    or $7F                                        ; $42CB: $F6 $7F
    ld hl, sp-$01                                 ; $42CD: $F8 $FF
    db $FC                                        ; $42CF: $FC
    cp $F8                                        ; $42D0: $FE $F8
    cp $F4                                        ; $42D2: $FE $F4
    cp $FC                                        ; $42D4: $FE $FC
    rst RST_38                                    ; $42D6: $FF
    ld a, [hl]                                    ; $42D7: $7E
    rst RST_38                                    ; $42D8: $FF
    ld e, $9F                                     ; $42D9: $1E $9F
    ld l, [hl]                                    ; $42DB: $6E
    cp $00                                        ; $42DC: $FE $00
    nop                                           ; $42DE: $00
    nop                                           ; $42DF: $00
    rra                                           ; $42E0: $1F
    rst RST_28                                    ; $42E1: $EF
    rst RST_08                                    ; $42E2: $CF
    scf                                           ; $42E3: $37
    add a                                         ; $42E4: $87
    ld a, e                                       ; $42E5: $7B
    ld a, a                                       ; $42E6: $7F
    add b                                         ; $42E7: $80
    rst RST_38                                    ; $42E8: $FF
    ld e, $9F                                     ; $42E9: $1E $9F
    cp $9F                                        ; $42EB: $FE $9F
    cp $9F                                        ; $42ED: $FE $9F
    cp $BF                                        ; $42EF: $FE $BF
    ld a, a                                       ; $42F1: $7F
    rst RST_38                                    ; $42F2: $FF
    ld a, a                                       ; $42F3: $7F
    ld a, a                                       ; $42F4: $7F
    ccf                                           ; $42F5: $3F
    ld a, a                                       ; $42F6: $7F
    ccf                                           ; $42F7: $3F
    ccf                                           ; $42F8: $3F
    rra                                           ; $42F9: $1F
    ccf                                           ; $42FA: $3F
    ld bc, $2A55                                  ; $42FB: $01 $55 $2A
    ld a, a                                       ; $42FE: $7F
    nop                                           ; $42FF: $00
    cp $FC                                        ; $4300: $FE $FC
    db $FC                                        ; $4302: $FC
    ld hl, sp-$08                                 ; $4303: $F8 $F8
    ldh [$FFE0], a                                ; $4305: $E0 $E0
    nop                                           ; $4307: $00
    nop                                           ; $4308: $00
    nop                                           ; $4309: $00
    nop                                           ; $430A: $00
    nop                                           ; $430B: $00
    nop                                           ; $430C: $00
    nop                                           ; $430D: $00
    nop                                           ; $430E: $00
    nop                                           ; $430F: $00
    add b                                         ; $4310: $80
    nop                                           ; $4311: $00
    add b                                         ; $4312: $80
    nop                                           ; $4313: $00
    ret nz                                        ; $4314: $C0

    add b                                         ; $4315: $80
    ret nz                                        ; $4316: $C0

    add b                                         ; $4317: $80
    ret nz                                        ; $4318: $C0

    add b                                         ; $4319: $80
    ldh [$FFC0], a                                ; $431A: $E0 $C0
    ldh [$FFC0], a                                ; $431C: $E0 $C0
    ldh [rP1], a                                  ; $431E: $E0 $00
    nop                                           ; $4320: $00
    nop                                           ; $4321: $00
    rlca                                          ; $4322: $07
    nop                                           ; $4323: $00
    rrca                                          ; $4324: $0F
    rlca                                          ; $4325: $07
    ccf                                           ; $4326: $3F
    rrca                                          ; $4327: $0F
    ld a, a                                       ; $4328: $7F
    ccf                                           ; $4329: $3F
    ld a, l                                       ; $432A: $7D
    inc hl                                        ; $432B: $23
    ld l, l                                       ; $432C: $6D
    inc de                                        ; $432D: $13
    db $DB                                        ; $432E: $DB
    ld h, a                                       ; $432F: $67
    add a                                         ; $4330: $87
    ld a, a                                       ; $4331: $7F
    rst RST_30                                    ; $4332: $F7
    ld c, $87                                     ; $4333: $0E $87
    ld a, l                                       ; $4335: $7D
    ld a, a                                       ; $4336: $7F
    dec sp                                        ; $4337: $3B
    ccf                                           ; $4338: $3F
    inc bc                                        ; $4339: $03
    rlca                                          ; $433A: $07
    inc bc                                        ; $433B: $03
    rlca                                          ; $433C: $07
    inc bc                                        ; $433D: $03
    rlca                                          ; $433E: $07
    inc bc                                        ; $433F: $03
    nop                                           ; $4340: $00
    nop                                           ; $4341: $00
    add b                                         ; $4342: $80
    nop                                           ; $4343: $00
    ret nz                                        ; $4344: $C0

    add b                                         ; $4345: $80
    ldh [$FFC0], a                                ; $4346: $E0 $C0
    ldh a, [$FFE0]                                ; $4348: $F0 $E0
    ld hl, sp-$10                                 ; $434A: $F8 $F0
    db $FC                                        ; $434C: $FC
    ld hl, sp-$02                                 ; $434D: $F8 $FE
    ld a, h                                       ; $434F: $7C
    rst RST_38                                    ; $4350: $FF
    ld a, [hl]                                    ; $4351: $7E
    rst RST_38                                    ; $4352: $FF
    ld a, a                                       ; $4353: $7F
    rst RST_38                                    ; $4354: $FF
    rst RST_38                                    ; $4355: $FF
    rst RST_38                                    ; $4356: $FF
    rst RST_38                                    ; $4357: $FF
    rst RST_38                                    ; $4358: $FF
    rst RST_30                                    ; $4359: $F7
    rst RST_38                                    ; $435A: $FF
    ei                                            ; $435B: $FB
    rst RST_38                                    ; $435C: $FF
    ei                                            ; $435D: $FB
    rst RST_38                                    ; $435E: $FF
    ei                                            ; $435F: $FB
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
    add b                                         ; $4370: $80
    nop                                           ; $4371: $00
    ldh [$FF80], a                                ; $4372: $E0 $80
    rst RST_38                                    ; $4374: $FF
    ldh [rIE], a                                  ; $4375: $E0 $FF
    rst RST_38                                    ; $4377: $FF
    rst RST_38                                    ; $4378: $FF
    rst RST_38                                    ; $4379: $FF
    rst RST_38                                    ; $437A: $FF
    rst RST_38                                    ; $437B: $FF
    rst RST_38                                    ; $437C: $FF
    rst RST_38                                    ; $437D: $FF
    rst RST_38                                    ; $437E: $FF
    rst RST_38                                    ; $437F: $FF
    nop                                           ; $4380: $00
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
    ret nz                                        ; $4396: $C0

    nop                                           ; $4397: $00
    ldh [$FFC0], a                                ; $4398: $E0 $C0
    ldh [$FFC0], a                                ; $439A: $E0 $C0
    ldh a, [$FFE0]                                ; $439C: $F0 $E0
    ldh a, [$FFE0]                                ; $439E: $F0 $E0
    rst RST_38                                    ; $43A0: $FF
    ld e, a                                       ; $43A1: $5F
    rst RST_38                                    ; $43A2: $FF
    ld e, a                                       ; $43A3: $5F
    rst RST_38                                    ; $43A4: $FF
    ld l, a                                       ; $43A5: $6F
    ld a, a                                       ; $43A6: $7F
    daa                                           ; $43A7: $27
    ld a, a                                       ; $43A8: $7F
    cpl                                           ; $43A9: $2F
    ld a, a                                       ; $43AA: $7F
    cpl                                           ; $43AB: $2F
    rst RST_38                                    ; $43AC: $FF
    ld l, a                                       ; $43AD: $6F
    rst RST_38                                    ; $43AE: $FF
    ld l, a                                       ; $43AF: $6F
    rst RST_38                                    ; $43B0: $FF
    ld l, a                                       ; $43B1: $6F
    rst RST_38                                    ; $43B2: $FF
    ld c, [hl]                                    ; $43B3: $4E
    sbc $21                                       ; $43B4: $DE $21
    sbc b                                         ; $43B6: $98
    ld h, a                                       ; $43B7: $67
    ld a, a                                       ; $43B8: $7F
    nop                                           ; $43B9: $00
    nop                                           ; $43BA: $00
    nop                                           ; $43BB: $00
    nop                                           ; $43BC: $00
    nop                                           ; $43BD: $00
    nop                                           ; $43BE: $00
    nop                                           ; $43BF: $00
    rst RST_38                                    ; $43C0: $FF
    rst RST_18                                    ; $43C1: $DF
    rst RST_38                                    ; $43C2: $FF
    sbc $FD                                       ; $43C3: $DE $FD
    sbc $E3                                       ; $43C5: $DE $E3
    db $DD                                        ; $43C7: $DD
    rst RST_38                                    ; $43C8: $FF
    pop bc                                        ; $43C9: $C1
    rst RST_38                                    ; $43CA: $FF
    adc $FF                                       ; $43CB: $CE $FF
    adc $DF                                       ; $43CD: $CE $DF
    adc a                                         ; $43CF: $8F
    rst RST_28                                    ; $43D0: $EF
    add a                                         ; $43D1: $87
    sbc a                                         ; $43D2: $9F
    ld h, a                                       ; $43D3: $67
    rst RST_10                                    ; $43D4: $D7
    dec hl                                        ; $43D5: $2B
    rra                                           ; $43D6: $1F
    ldh [$FFF1], a                                ; $43D7: $E0 $F1
    nop                                           ; $43D9: $00
    nop                                           ; $43DA: $00
    nop                                           ; $43DB: $00
    nop                                           ; $43DC: $00
    nop                                           ; $43DD: $00
    nop                                           ; $43DE: $00
    nop                                           ; $43DF: $00
    rst RST_38                                    ; $43E0: $FF
    ld a, [hl]                                    ; $43E1: $7E
    rst RST_38                                    ; $43E2: $FF
    cp $FE                                        ; $43E3: $FE $FE
    db $FC                                        ; $43E5: $FC
    cp $FC                                        ; $43E6: $FE $FC
    ld a, [hl]                                    ; $43E8: $7E
    db $FC                                        ; $43E9: $FC
    ld a, [hl]                                    ; $43EA: $7E
    db $FC                                        ; $43EB: $FC
    ccf                                           ; $43EC: $3F
    cp $BF                                        ; $43ED: $FE $BF
    ld a, [hl]                                    ; $43EF: $7E
    rst RST_38                                    ; $43F0: $FF
    ld a, a                                       ; $43F1: $7F
    rst RST_38                                    ; $43F2: $FF
    cp a                                          ; $43F3: $BF
    rst RST_38                                    ; $43F4: $FF
    rra                                           ; $43F5: $1F
    ld e, a                                       ; $43F6: $5F
    xor a                                         ; $43F7: $AF
    rst RST_38                                    ; $43F8: $FF
    nop                                           ; $43F9: $00
    nop                                           ; $43FA: $00
    nop                                           ; $43FB: $00
    nop                                           ; $43FC: $00
    nop                                           ; $43FD: $00
    nop                                           ; $43FE: $00
    nop                                           ; $43FF: $00
    add b                                         ; $4400: $80
    nop                                           ; $4401: $00
    add b                                         ; $4402: $80
    nop                                           ; $4403: $00
    add b                                         ; $4404: $80
    nop                                           ; $4405: $00
    add b                                         ; $4406: $80
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
    rlca                                          ; $4420: $07
    nop                                           ; $4421: $00
    rrca                                          ; $4422: $0F
    rlca                                          ; $4423: $07
    ccf                                           ; $4424: $3F
    rrca                                          ; $4425: $0F
    ld a, a                                       ; $4426: $7F
    ccf                                           ; $4427: $3F
    ld a, l                                       ; $4428: $7D
    inc hl                                        ; $4429: $23
    ld l, l                                       ; $442A: $6D
    inc de                                        ; $442B: $13
    db $DB                                        ; $442C: $DB
    ld h, a                                       ; $442D: $67
    add a                                         ; $442E: $87
    ld a, a                                       ; $442F: $7F
    rst RST_30                                    ; $4430: $F7
    ld c, $87                                     ; $4431: $0E $87
    ld a, [hl]                                    ; $4433: $7E
    ld a, a                                       ; $4434: $7F
    dec a                                         ; $4435: $3D
    ccf                                           ; $4436: $3F
    inc bc                                        ; $4437: $03
    ld a, [hl-]                                   ; $4438: $3A
    dec d                                         ; $4439: $15
    ld a, d                                       ; $443A: $7A
    dec [hl]                                      ; $443B: $35
    ld a, d                                       ; $443C: $7A
    dec [hl]                                      ; $443D: $35
    ld a, l                                       ; $443E: $7D
    ld a, [hl-]                                   ; $443F: $3A
    add b                                         ; $4440: $80
    nop                                           ; $4441: $00
    ret nz                                        ; $4442: $C0

    add b                                         ; $4443: $80
    ldh [$FFC0], a                                ; $4444: $E0 $C0
    ldh a, [$FFE0]                                ; $4446: $F0 $E0
    ld hl, sp-$10                                 ; $4448: $F8 $F0
    db $FC                                        ; $444A: $FC
    ld hl, sp-$02                                 ; $444B: $F8 $FE
    ld a, h                                       ; $444D: $7C
    rst RST_38                                    ; $444E: $FF
    ld a, [hl]                                    ; $444F: $7E
    rst RST_38                                    ; $4450: $FF
    rst RST_38                                    ; $4451: $FF
    rst RST_38                                    ; $4452: $FF
    cp $FF                                        ; $4453: $FE $FF
    rst RST_38                                    ; $4455: $FF
    ld a, a                                       ; $4456: $7F
    cp a                                          ; $4457: $BF
    ld a, a                                       ; $4458: $7F
    cp a                                          ; $4459: $BF
    ld a, a                                       ; $445A: $7F
    cp a                                          ; $445B: $BF
    ld a, a                                       ; $445C: $7F
    cp a                                          ; $445D: $BF
    ccf                                           ; $445E: $3F
    rst RST_18                                    ; $445F: $DF
    add b                                         ; $4460: $80
    nop                                           ; $4461: $00
    ldh [$FF80], a                                ; $4462: $E0 $80
    cp $E0                                        ; $4464: $FE $E0
    rst RST_38                                    ; $4466: $FF
    ld a, [hl]                                    ; $4467: $7E
    rst RST_38                                    ; $4468: $FF
    ld a, a                                       ; $4469: $7F
    rst RST_38                                    ; $446A: $FF
    cp a                                          ; $446B: $BF
    rst RST_38                                    ; $446C: $FF
    cp a                                          ; $446D: $BF
    rst RST_38                                    ; $446E: $FF
    xor a                                         ; $446F: $AF
    rst RST_38                                    ; $4470: $FF
    rst RST_18                                    ; $4471: $DF
    rst RST_38                                    ; $4472: $FF
    rst RST_18                                    ; $4473: $DF
    rst RST_38                                    ; $4474: $FF
    rst RST_18                                    ; $4475: $DF
    rst RST_38                                    ; $4476: $FF
    rst RST_18                                    ; $4477: $DF
    rst RST_38                                    ; $4478: $FF
    rst RST_18                                    ; $4479: $DF
    rst RST_38                                    ; $447A: $FF
    db $DB                                        ; $447B: $DB
    rst RST_38                                    ; $447C: $FF
    call c, $DEFF                                 ; $447D: $DC $FF $DE
    add b                                         ; $4480: $80
    nop                                           ; $4481: $00
    ret nz                                        ; $4482: $C0

    add b                                         ; $4483: $80
    ret nz                                        ; $4484: $C0

    add b                                         ; $4485: $80
    ldh [$FFC0], a                                ; $4486: $E0 $C0
    ldh [$FFC0], a                                ; $4488: $E0 $C0
    ldh [$FFC0], a                                ; $448A: $E0 $C0
    ldh [$FFC0], a                                ; $448C: $E0 $C0
    ldh a, [$FFA0]                                ; $448E: $F0 $A0
    db $FC                                        ; $4490: $FC
    or b                                          ; $4491: $B0
    cp $7C                                        ; $4492: $FE $7C
    rst RST_38                                    ; $4494: $FF
    ld a, [hl]                                    ; $4495: $7E
    rst RST_38                                    ; $4496: $FF
    cp $FF                                        ; $4497: $FE $FF
    ld a, [hl]                                    ; $4499: $7E
    ld a, [hl]                                    ; $449A: $7E
    inc a                                         ; $449B: $3C
    cp $0C                                        ; $449C: $FE $0C
    ld c, h                                       ; $449E: $4C
    or b                                          ; $449F: $B0
    ld a, l                                       ; $44A0: $7D
    ld a, [hl-]                                   ; $44A1: $3A
    cp $7D                                        ; $44A2: $FE $7D
    rst RST_38                                    ; $44A4: $FF
    ld a, [hl]                                    ; $44A5: $7E
    rst RST_38                                    ; $44A6: $FF
    ld a, [hl]                                    ; $44A7: $7E
    rst RST_38                                    ; $44A8: $FF
    ld a, [hl]                                    ; $44A9: $7E
    cp $7C                                        ; $44AA: $FE $7C
    cp $7C                                        ; $44AC: $FE $7C
    rst RST_38                                    ; $44AE: $FF
    ld a, h                                       ; $44AF: $7C
    ld a, h                                       ; $44B0: $7C
    inc sp                                        ; $44B1: $33
    halt                                          ; $44B2: $76
    add hl, bc                                    ; $44B3: $09
    ld b, b                                       ; $44B4: $40
    ccf                                           ; $44B5: $3F
    ccf                                           ; $44B6: $3F
    nop                                           ; $44B7: $00
    nop                                           ; $44B8: $00
    nop                                           ; $44B9: $00
    nop                                           ; $44BA: $00
    nop                                           ; $44BB: $00
    nop                                           ; $44BC: $00
    nop                                           ; $44BD: $00
    nop                                           ; $44BE: $00
    nop                                           ; $44BF: $00
    cp a                                          ; $44C0: $BF
    ld e, a                                       ; $44C1: $5F
    ld e, a                                       ; $44C2: $5F
    xor a                                         ; $44C3: $AF
    rst RST_38                                    ; $44C4: $FF
    rrca                                          ; $44C5: $0F
    rrca                                          ; $44C6: $0F
    rlca                                          ; $44C7: $07
    rrca                                          ; $44C8: $0F
    rlca                                          ; $44C9: $07
    rrca                                          ; $44CA: $0F
    rlca                                          ; $44CB: $07
    rrca                                          ; $44CC: $0F
    rlca                                          ; $44CD: $07
    rrca                                          ; $44CE: $0F
    rlca                                          ; $44CF: $07
    adc a                                         ; $44D0: $8F
    rlca                                          ; $44D1: $07
    add a                                         ; $44D2: $87
    nop                                           ; $44D3: $00
    add h                                         ; $44D4: $84
    inc bc                                        ; $44D5: $03
    add e                                         ; $44D6: $83
    nop                                           ; $44D7: $00
    nop                                           ; $44D8: $00
    nop                                           ; $44D9: $00
    nop                                           ; $44DA: $00
    nop                                           ; $44DB: $00
    nop                                           ; $44DC: $00
    nop                                           ; $44DD: $00
    nop                                           ; $44DE: $00
    nop                                           ; $44DF: $00
    rst RST_38                                    ; $44E0: $FF
    adc $CF                                       ; $44E1: $CE $CF
    ld [hl], $6F                                  ; $44E3: $36 $6F
    sub [hl]                                      ; $44E5: $96
    rrca                                          ; $44E6: $0F
    or $FE                                        ; $44E7: $F6 $FE
    nop                                           ; $44E9: $00
    nop                                           ; $44EA: $00
    nop                                           ; $44EB: $00
    nop                                           ; $44EC: $00
    nop                                           ; $44ED: $00
    nop                                           ; $44EE: $00
    nop                                           ; $44EF: $00
    nop                                           ; $44F0: $00
    nop                                           ; $44F1: $00
    nop                                           ; $44F2: $00
    nop                                           ; $44F3: $00
    nop                                           ; $44F4: $00
    nop                                           ; $44F5: $00
    nop                                           ; $44F6: $00
    nop                                           ; $44F7: $00
    nop                                           ; $44F8: $00
    nop                                           ; $44F9: $00
    nop                                           ; $44FA: $00
    nop                                           ; $44FB: $00
    nop                                           ; $44FC: $00
    nop                                           ; $44FD: $00
    nop                                           ; $44FE: $00
    nop                                           ; $44FF: $00
    ld hl, sp+$00                                 ; $4500: $F8 $00
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
    nop                                           ; $4512: $00
    nop                                           ; $4513: $00
    nop                                           ; $4514: $00
    nop                                           ; $4515: $00
    nop                                           ; $4516: $00
    nop                                           ; $4517: $00
    nop                                           ; $4518: $00
    nop                                           ; $4519: $00
    nop                                           ; $451A: $00
    nop                                           ; $451B: $00
    nop                                           ; $451C: $00
    nop                                           ; $451D: $00
    nop                                           ; $451E: $00
    nop                                           ; $451F: $00
    inc bc                                        ; $4520: $03
    nop                                           ; $4521: $00
    rlca                                          ; $4522: $07
    inc bc                                        ; $4523: $03
    rra                                           ; $4524: $1F
    rlca                                          ; $4525: $07
    ccf                                           ; $4526: $3F
    rra                                           ; $4527: $1F
    ld a, $11                                     ; $4528: $3E $11
    ld [hl], $09                                  ; $452A: $36 $09
    ld l, l                                       ; $452C: $6D
    inc sp                                        ; $452D: $33
    ld b, e                                       ; $452E: $43
    ccf                                           ; $452F: $3F
    ld a, e                                       ; $4530: $7B
    inc b                                         ; $4531: $04
    ld b, a                                       ; $4532: $47
    dec sp                                        ; $4533: $3B
    ccf                                           ; $4534: $3F
    rla                                           ; $4535: $17
    rra                                           ; $4536: $1F
    rlca                                          ; $4537: $07
    rra                                           ; $4538: $1F
    rrca                                          ; $4539: $0F
    rra                                           ; $453A: $1F
    rrca                                          ; $453B: $0F
    rra                                           ; $453C: $1F
    rrca                                          ; $453D: $0F
    rra                                           ; $453E: $1F
    rrca                                          ; $453F: $0F
    ret nz                                        ; $4540: $C0

    nop                                           ; $4541: $00
    ldh [$FFC0], a                                ; $4542: $E0 $C0
    ldh a, [$FFE0]                                ; $4544: $F0 $E0
    ld hl, sp-$10                                 ; $4546: $F8 $F0
    db $FC                                        ; $4548: $FC
    ld hl, sp-$02                                 ; $4549: $F8 $FE
    db $FC                                        ; $454B: $FC
    rst RST_38                                    ; $454C: $FF
    cp [hl]                                       ; $454D: $BE
    rst RST_38                                    ; $454E: $FF
    cp a                                          ; $454F: $BF
    rst RST_38                                    ; $4550: $FF
    ccf                                           ; $4551: $3F
    rst RST_38                                    ; $4552: $FF
    rst RST_18                                    ; $4553: $DF
    rst RST_38                                    ; $4554: $FF
    rst RST_38                                    ; $4555: $FF
    rst RST_38                                    ; $4556: $FF
    rst RST_38                                    ; $4557: $FF
    rst RST_38                                    ; $4558: $FF
    ei                                            ; $4559: $FB
    rst RST_38                                    ; $455A: $FF
    rst RST_20                                    ; $455B: $E7
    rst RST_38                                    ; $455C: $FF
    rst RST_28                                    ; $455D: $EF
    rst RST_38                                    ; $455E: $FF
    rst RST_28                                    ; $455F: $EF
    ret nz                                        ; $4560: $C0

    nop                                           ; $4561: $00
    ldh a, [$FFC0]                                ; $4562: $F0 $C0
    rst RST_38                                    ; $4564: $FF
    ldh a, [rIE]                                  ; $4565: $F0 $FF
    rst RST_38                                    ; $4567: $FF
    rst RST_38                                    ; $4568: $FF
    rst RST_38                                    ; $4569: $FF
    rst RST_38                                    ; $456A: $FF
    rst RST_38                                    ; $456B: $FF
    rst RST_38                                    ; $456C: $FF
    rst RST_38                                    ; $456D: $FF
    rst RST_38                                    ; $456E: $FF
    rst RST_38                                    ; $456F: $FF
    rst RST_38                                    ; $4570: $FF
    ei                                            ; $4571: $FB
    rst RST_30                                    ; $4572: $F7
    ei                                            ; $4573: $FB
    rst RST_28                                    ; $4574: $EF
    di                                            ; $4575: $F3
    rra                                           ; $4576: $1F
    db $EB                                        ; $4577: $EB
    rst RST_38                                    ; $4578: $FF
    add hl, de                                    ; $4579: $19
    ei                                            ; $457A: $FB
    pop af                                        ; $457B: $F1
    ld sp, hl                                     ; $457C: $F9
    ldh a, [$FFF8]                                ; $457D: $F0 $F8
    ldh a, [$FF80]                                ; $457F: $F0 $80
    nop                                           ; $4581: $00
    ldh [$FF80], a                                ; $4582: $E0 $80
    ldh a, [$FFE0]                                ; $4584: $F0 $E0
    ldh a, [$FFE0]                                ; $4586: $F0 $E0
    ld hl, sp-$10                                 ; $4588: $F8 $F0
    ld hl, sp-$10                                 ; $458A: $F8 $F0
    ld hl, sp-$10                                 ; $458C: $F8 $F0
    db $FC                                        ; $458E: $FC
    ld hl, sp-$04                                 ; $458F: $F8 $FC
    ld hl, sp-$02                                 ; $4591: $F8 $FE
    db $FC                                        ; $4593: $FC
    ld a, [hl]                                    ; $4594: $7E
    db $FC                                        ; $4595: $FC
    ld a, [hl]                                    ; $4596: $7E
    db $FC                                        ; $4597: $FC
    ccf                                           ; $4598: $3F
    cp $BF                                        ; $4599: $FE $BF
    ld a, [hl]                                    ; $459B: $7E
    rst RST_38                                    ; $459C: $FF
    ld a, a                                       ; $459D: $7F
    ld a, a                                       ; $459E: $7F
    ccf                                           ; $459F: $3F
    ccf                                           ; $45A0: $3F
    rra                                           ; $45A1: $1F
    ccf                                           ; $45A2: $3F
    rra                                           ; $45A3: $1F
    ccf                                           ; $45A4: $3F
    rra                                           ; $45A5: $1F
    ld a, a                                       ; $45A6: $7F
    ccf                                           ; $45A7: $3F
    ld a, a                                       ; $45A8: $7F
    ccf                                           ; $45A9: $3F
    ld a, a                                       ; $45AA: $7F
    ccf                                           ; $45AB: $3F
    rst RST_38                                    ; $45AC: $FF
    ld a, [hl]                                    ; $45AD: $7E
    rst RST_38                                    ; $45AE: $FF
    ld a, h                                       ; $45AF: $7C
    db $FC                                        ; $45B0: $FC
    ld [hl], e                                    ; $45B1: $73
    halt                                          ; $45B2: $76
    add hl, bc                                    ; $45B3: $09
    ld b, b                                       ; $45B4: $40
    ccf                                           ; $45B5: $3F
    ccf                                           ; $45B6: $3F
    nop                                           ; $45B7: $00
    nop                                           ; $45B8: $00
    nop                                           ; $45B9: $00
    nop                                           ; $45BA: $00
    nop                                           ; $45BB: $00
    nop                                           ; $45BC: $00
    nop                                           ; $45BD: $00
    nop                                           ; $45BE: $00
    nop                                           ; $45BF: $00
    rst RST_38                                    ; $45C0: $FF
    rst RST_18                                    ; $45C1: $DF
    rst RST_28                                    ; $45C2: $EF
    rst RST_18                                    ; $45C3: $DF
    ldh a, [$FFCF]                                ; $45C4: $F0 $CF
    rst RST_38                                    ; $45C6: $FF
    or b                                          ; $45C7: $B0
    rst RST_38                                    ; $45C8: $FF
    ld a, l                                       ; $45C9: $7D
    rst RST_38                                    ; $45CA: $FF
    ld a, l                                       ; $45CB: $7D
    rst RST_38                                    ; $45CC: $FF
    ld a, e                                       ; $45CD: $7B
    rst RST_38                                    ; $45CE: $FF
    ld a, e                                       ; $45CF: $7B
    rst RST_38                                    ; $45D0: $FF
    ld [hl], c                                    ; $45D1: $71
    push af                                       ; $45D2: $F5
    ld a, [bc]                                    ; $45D3: $0A
    adc a                                         ; $45D4: $8F
    nop                                           ; $45D5: $00
    add b                                         ; $45D6: $80
    nop                                           ; $45D7: $00
    nop                                           ; $45D8: $00
    nop                                           ; $45D9: $00
    nop                                           ; $45DA: $00
    nop                                           ; $45DB: $00
    nop                                           ; $45DC: $00
    nop                                           ; $45DD: $00
    nop                                           ; $45DE: $00
    nop                                           ; $45DF: $00
    ldh a, [$FFE0]                                ; $45E0: $F0 $E0
    ldh a, [$FFE0]                                ; $45E2: $F0 $E0
    ldh a, [$FFE0]                                ; $45E4: $F0 $E0
    pop hl                                        ; $45E6: $E1
    nop                                           ; $45E7: $00
    ld bc, $0000                                  ; $45E8: $01 $00 $00
    nop                                           ; $45EB: $00
    nop                                           ; $45EC: $00
    nop                                           ; $45ED: $00
    nop                                           ; $45EE: $00
    nop                                           ; $45EF: $00
    nop                                           ; $45F0: $00
    nop                                           ; $45F1: $00
    nop                                           ; $45F2: $00
    nop                                           ; $45F3: $00
    nop                                           ; $45F4: $00
    nop                                           ; $45F5: $00
    nop                                           ; $45F6: $00
    nop                                           ; $45F7: $00
    nop                                           ; $45F8: $00
    nop                                           ; $45F9: $00
    nop                                           ; $45FA: $00
    nop                                           ; $45FB: $00
    nop                                           ; $45FC: $00
    nop                                           ; $45FD: $00
    nop                                           ; $45FE: $00
    nop                                           ; $45FF: $00
    rst RST_38                                    ; $4600: $FF
    rra                                           ; $4601: $1F
    ld e, a                                       ; $4602: $5F
    xor a                                         ; $4603: $AF
    rst RST_38                                    ; $4604: $FF
    nop                                           ; $4605: $00
    nop                                           ; $4606: $00
    nop                                           ; $4607: $00
    nop                                           ; $4608: $00
    nop                                           ; $4609: $00
    nop                                           ; $460A: $00
    nop                                           ; $460B: $00
    nop                                           ; $460C: $00
    nop                                           ; $460D: $00
    nop                                           ; $460E: $00
    nop                                           ; $460F: $00
    nop                                           ; $4610: $00
    nop                                           ; $4611: $00
    nop                                           ; $4612: $00
    nop                                           ; $4613: $00
    nop                                           ; $4614: $00
    nop                                           ; $4615: $00
    nop                                           ; $4616: $00
    nop                                           ; $4617: $00
    nop                                           ; $4618: $00
    nop                                           ; $4619: $00
    nop                                           ; $461A: $00
    nop                                           ; $461B: $00
    nop                                           ; $461C: $00
    nop                                           ; $461D: $00
    nop                                           ; $461E: $00
    nop                                           ; $461F: $00
    add b                                         ; $4620: $80
    nop                                           ; $4621: $00
    add b                                         ; $4622: $80
    nop                                           ; $4623: $00
    add b                                         ; $4624: $80
    nop                                           ; $4625: $00
    add b                                         ; $4626: $80
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
    nop                                           ; $463A: $00
    nop                                           ; $463B: $00
    nop                                           ; $463C: $00
    nop                                           ; $463D: $00
    nop                                           ; $463E: $00
    nop                                           ; $463F: $00
    nop                                           ; $4640: $00
    nop                                           ; $4641: $00
    nop                                           ; $4642: $00
    nop                                           ; $4643: $00
    nop                                           ; $4644: $00
    nop                                           ; $4645: $00
    nop                                           ; $4646: $00
    nop                                           ; $4647: $00
    inc bc                                        ; $4648: $03
    nop                                           ; $4649: $00
    rlca                                          ; $464A: $07
    inc bc                                        ; $464B: $03
    rra                                           ; $464C: $1F
    rlca                                          ; $464D: $07
    ccf                                           ; $464E: $3F
    rra                                           ; $464F: $1F
    ld a, $11                                     ; $4650: $3E $11
    ld [hl], $09                                  ; $4652: $36 $09
    ld l, l                                       ; $4654: $6D
    inc sp                                        ; $4655: $33
    ld b, e                                       ; $4656: $43
    ccf                                           ; $4657: $3F
    ld a, e                                       ; $4658: $7B
    rlca                                          ; $4659: $07
    ld b, e                                       ; $465A: $43
    ld a, $3F                                     ; $465B: $3E $3F
    dec e                                         ; $465D: $1D
    rra                                           ; $465E: $1F
    ld bc, $0000                                  ; $465F: $01 $00 $00
    nop                                           ; $4662: $00
    nop                                           ; $4663: $00
    nop                                           ; $4664: $00
    nop                                           ; $4665: $00
    nop                                           ; $4666: $00
    nop                                           ; $4667: $00
    ret nz                                        ; $4668: $C0

    nop                                           ; $4669: $00
    ldh [$FFC0], a                                ; $466A: $E0 $C0
    ldh a, [$FFE0]                                ; $466C: $F0 $E0
    ld hl, sp-$10                                 ; $466E: $F8 $F0
    db $FC                                        ; $4670: $FC
    ld hl, sp-$04                                 ; $4671: $F8 $FC
    ld hl, sp-$02                                 ; $4673: $F8 $FE
    cp h                                          ; $4675: $BC
    rst RST_38                                    ; $4676: $FF
    cp [hl]                                       ; $4677: $BE
    rst RST_38                                    ; $4678: $FF
    ccf                                           ; $4679: $3F
    rst RST_38                                    ; $467A: $FF
    rst RST_38                                    ; $467B: $FF
    rst RST_38                                    ; $467C: $FF
    rst RST_38                                    ; $467D: $FF
    rst RST_38                                    ; $467E: $FF
    ei                                            ; $467F: $FB
    nop                                           ; $4680: $00
    nop                                           ; $4681: $00
    nop                                           ; $4682: $00
    nop                                           ; $4683: $00
    nop                                           ; $4684: $00
    nop                                           ; $4685: $00
    nop                                           ; $4686: $00
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
    add b                                         ; $4696: $80
    nop                                           ; $4697: $00
    ret nz                                        ; $4698: $C0

    add b                                         ; $4699: $80
    ldh [$FFC0], a                                ; $469A: $E0 $C0
    ldh [$FFC0], a                                ; $469C: $E0 $C0
    ldh a, [$FFE0]                                ; $469E: $F0 $E0
    ld a, a                                       ; $46A0: $7F
    ccf                                           ; $46A1: $3F
    ld a, a                                       ; $46A2: $7F
    ccf                                           ; $46A3: $3F
    ld a, a                                       ; $46A4: $7F
    ccf                                           ; $46A5: $3F
    rst RST_38                                    ; $46A6: $FF
    ld e, a                                       ; $46A7: $5F
    rst RST_38                                    ; $46A8: $FF
    ld e, a                                       ; $46A9: $5F
    rst RST_38                                    ; $46AA: $FF
    ld l, a                                       ; $46AB: $6F
    ld a, a                                       ; $46AC: $7F
    daa                                           ; $46AD: $27
    ld a, a                                       ; $46AE: $7F
    cpl                                           ; $46AF: $2F
    ld a, a                                       ; $46B0: $7F
    cpl                                           ; $46B1: $2F
    rst RST_38                                    ; $46B2: $FF
    ld l, a                                       ; $46B3: $6F
    rst RST_38                                    ; $46B4: $FF
    ld l, a                                       ; $46B5: $6F
    rst RST_38                                    ; $46B6: $FF
    ld l, a                                       ; $46B7: $6F
    rst RST_38                                    ; $46B8: $FF
    ld c, [hl]                                    ; $46B9: $4E
    sbc $21                                       ; $46BA: $DE $21
    sbc b                                         ; $46BC: $98
    ld h, a                                       ; $46BD: $67
    ld a, a                                       ; $46BE: $7F
    nop                                           ; $46BF: $00
    cp $BC                                        ; $46C0: $FE $BC
    rst RST_38                                    ; $46C2: $FF
    cp [hl]                                       ; $46C3: $BE
    rst RST_38                                    ; $46C4: $FF
    cp a                                          ; $46C5: $BF
    rst RST_38                                    ; $46C6: $FF
    rst RST_18                                    ; $46C7: $DF
    rst RST_38                                    ; $46C8: $FF
    rst RST_18                                    ; $46C9: $DF
    rst RST_38                                    ; $46CA: $FF
    pop de                                        ; $46CB: $D1
    rst RST_38                                    ; $46CC: $FF
    rst RST_08                                    ; $46CD: $CF
    rst RST_38                                    ; $46CE: $FF
    rst RST_18                                    ; $46CF: $DF
    rst RST_38                                    ; $46D0: $FF
    rst RST_18                                    ; $46D1: $DF
    rst RST_38                                    ; $46D2: $FF
    rst RST_18                                    ; $46D3: $DF
    rst RST_38                                    ; $46D4: $FF
    sbc a                                         ; $46D5: $9F
    rst RST_38                                    ; $46D6: $FF
    adc a                                         ; $46D7: $8F
    sbc a                                         ; $46D8: $9F
    ld h, a                                       ; $46D9: $67
    rst RST_18                                    ; $46DA: $DF
    ld hl, $EA15                                  ; $46DB: $21 $15 $EA
    rst RST_38                                    ; $46DE: $FF
    nop                                           ; $46DF: $00
    nop                                           ; $46E0: $00
    nop                                           ; $46E1: $00
    nop                                           ; $46E2: $00
    nop                                           ; $46E3: $00
    ret nz                                        ; $46E4: $C0

    nop                                           ; $46E5: $00
    ldh [$FFC0], a                                ; $46E6: $E0 $C0
    ldh a, [$FFE0]                                ; $46E8: $F0 $E0
    ldh a, [$FFE0]                                ; $46EA: $F0 $E0
    ld hl, sp-$10                                 ; $46EC: $F8 $F0
    ld hl, sp-$10                                 ; $46EE: $F8 $F0
    ld hl, sp-$10                                 ; $46F0: $F8 $F0
    ld hl, sp+$30                                 ; $46F2: $F8 $30
    ldh a, [$FFC0]                                ; $46F4: $F0 $C0
    ldh a, [$FFE0]                                ; $46F6: $F0 $E0
    ld hl, sp-$10                                 ; $46F8: $F8 $F0
    ld hl, sp-$10                                 ; $46FA: $F8 $F0
    ld hl, sp-$10                                 ; $46FC: $F8 $F0
    ldh a, [rP1]                                  ; $46FE: $F0 $00
    nop                                           ; $4700: $00
    nop                                           ; $4701: $00
    rlca                                          ; $4702: $07
    nop                                           ; $4703: $00
    rrca                                          ; $4704: $0F
    rlca                                          ; $4705: $07
    ccf                                           ; $4706: $3F
    rrca                                          ; $4707: $0F
    ld a, a                                       ; $4708: $7F
    ccf                                           ; $4709: $3F
    ld a, l                                       ; $470A: $7D
    inc hl                                        ; $470B: $23
    db $ED                                        ; $470C: $ED
    inc de                                        ; $470D: $13
    db $DB                                        ; $470E: $DB
    ld h, a                                       ; $470F: $67
    add a                                         ; $4710: $87
    ld a, a                                       ; $4711: $7F
    rst RST_30                                    ; $4712: $F7
    ld c, $87                                     ; $4713: $0E $87
    ld a, [hl]                                    ; $4715: $7E
    ld a, [hl]                                    ; $4716: $7E
    dec a                                         ; $4717: $3D
    cp h                                          ; $4718: $BC
    ld b, e                                       ; $4719: $43
    jr nz, @-$1F                                  ; $471A: $20 $DF

    jr nz, @-$1F                                  ; $471C: $20 $DF

    ld hl, $00DF                                  ; $471E: $21 $DF $00
    nop                                           ; $4721: $00
    add b                                         ; $4722: $80
    nop                                           ; $4723: $00
    ret nz                                        ; $4724: $C0

    add b                                         ; $4725: $80
    ldh [$FFC0], a                                ; $4726: $E0 $C0
    ldh [$FFC0], a                                ; $4728: $E0 $C0
    ldh a, [$FFE0]                                ; $472A: $F0 $E0
    ldh a, [$FFE0]                                ; $472C: $F0 $E0
    rst RST_38                                    ; $472E: $FF
    ld [hl], b                                    ; $472F: $70
    rst RST_38                                    ; $4730: $FF
    ld a, a                                       ; $4731: $7F
    rst RST_38                                    ; $4732: $FF
    rst RST_38                                    ; $4733: $FF
    rst RST_38                                    ; $4734: $FF
    rst RST_28                                    ; $4735: $EF
    ld l, a                                       ; $4736: $6F
    rst RST_18                                    ; $4737: $DF
    ld l, a                                       ; $4738: $6F
    rst RST_18                                    ; $4739: $DF
    ld h, a                                       ; $473A: $67
    rst RST_18                                    ; $473B: $DF
    rst RST_38                                    ; $473C: $FF
    sbc b                                         ; $473D: $98
    ei                                            ; $473E: $FB
    ld h, l                                       ; $473F: $65
    nop                                           ; $4740: $00
    nop                                           ; $4741: $00
    nop                                           ; $4742: $00
    nop                                           ; $4743: $00
    nop                                           ; $4744: $00
    nop                                           ; $4745: $00
    ret nz                                        ; $4746: $C0

    nop                                           ; $4747: $00
    ldh [$FFC0], a                                ; $4748: $E0 $C0
    ldh a, [$FFE0]                                ; $474A: $F0 $E0
    ldh a, [$FFE0]                                ; $474C: $F0 $E0
    ld hl, sp-$10                                 ; $474E: $F8 $F0
    db $FC                                        ; $4750: $FC
    sbc b                                         ; $4751: $98
    db $FC                                        ; $4752: $FC
    ld a, b                                       ; $4753: $78
    cp $FC                                        ; $4754: $FE $FC
    cp $FC                                        ; $4756: $FE $FC
    cp $FC                                        ; $4758: $FE $FC
    cp $FC                                        ; $475A: $FE $FC
    db $FC                                        ; $475C: $FC
    ld hl, sp-$08                                 ; $475D: $F8 $F8
    nop                                           ; $475F: $00
    ld [bc], a                                    ; $4760: $02
    ld bc, $0102                                  ; $4761: $01 $02 $01
    ld e, $01                                     ; $4764: $1E $01
    dec h                                         ; $4766: $25
    ld a, [de]                                    ; $4767: $1A
    rra                                           ; $4768: $1F
    nop                                           ; $4769: $00
    inc hl                                        ; $476A: $23
    inc e                                         ; $476B: $1C
    dec e                                         ; $476C: $1D
    ld [bc], a                                    ; $476D: $02
    inc de                                        ; $476E: $13
    inc c                                         ; $476F: $0C
    rrca                                          ; $4770: $0F
    nop                                           ; $4771: $00
    inc bc                                        ; $4772: $03
    ld bc, $0307                                  ; $4773: $01 $07 $03
    rlca                                          ; $4776: $07
    inc bc                                        ; $4777: $03
    dec bc                                        ; $4778: $0B
    rlca                                          ; $4779: $07
    add hl, bc                                    ; $477A: $09
    rlca                                          ; $477B: $07
    dec b                                         ; $477C: $05
    inc bc                                        ; $477D: $03
    rlca                                          ; $477E: $07
    inc bc                                        ; $477F: $03
    cp a                                          ; $4780: $BF
    ld b, c                                       ; $4781: $41
    ld bc, $40FF                                  ; $4782: $01 $FF $40
    cp a                                          ; $4785: $BF
    ld b, b                                       ; $4786: $40
    cp a                                          ; $4787: $BF
    ld b, b                                       ; $4788: $40
    cp a                                          ; $4789: $BF
    and c                                         ; $478A: $A1
    ld e, [hl]                                    ; $478B: $5E
    and e                                         ; $478C: $A3
    ld e, l                                       ; $478D: $5D
    db $D3                                        ; $478E: $D3
    xor l                                         ; $478F: $AD
    and $DB                                       ; $4790: $E6 $DB
    cp $E3                                        ; $4792: $FE $E3
    ld a, [$FBF1]                                 ; $4794: $FA $F1 $FB
    pop hl                                        ; $4797: $E1
    ei                                            ; $4798: $FB
    pop af                                        ; $4799: $F1
    ld sp, hl                                     ; $479A: $F9
    ldh a, [$FFF9]                                ; $479B: $F0 $F9
    ldh a, [$FFF8]                                ; $479D: $F0 $F8
    ldh a, [$FFE7]                                ; $479F: $F0 $E7
    db $DB                                        ; $47A1: $DB
    rst RST_20                                    ; $47A2: $E7
    db $DB                                        ; $47A3: $DB
    di                                            ; $47A4: $F3
    db $ED                                        ; $47A5: $ED
    di                                            ; $47A6: $F3
    db $ED                                        ; $47A7: $ED
    rst RST_38                                    ; $47A8: $FF
    ldh a, [$FFFC]                                ; $47A9: $F0 $FC
    ld hl, sp-$04                                 ; $47AB: $F8 $FC
    ld hl, sp-$04                                 ; $47AD: $F8 $FC
    ld hl, sp+$7C                                 ; $47AF: $F8 $7C
    ld hl, sp+$7C                                 ; $47B1: $F8 $7C
    ld hl, sp+$3E                                 ; $47B3: $F8 $3E
    db $FC                                        ; $47B5: $FC
    ld a, [hl]                                    ; $47B6: $7E
    db $FC                                        ; $47B7: $FC
    cp $FC                                        ; $47B8: $FE $FC
    rst RST_38                                    ; $47BA: $FF
    cp $FF                                        ; $47BB: $FE $FF
    cp $FF                                        ; $47BD: $FE $FF
    ld a, [hl]                                    ; $47BF: $7E
    ld a, a                                       ; $47C0: $7F
    ccf                                           ; $47C1: $3F
    ccf                                           ; $47C2: $3F
    rra                                           ; $47C3: $1F
    ccf                                           ; $47C4: $3F
    rra                                           ; $47C5: $1F
    ccf                                           ; $47C6: $3F
    ld [bc], a                                    ; $47C7: $02
    ld d, d                                       ; $47C8: $52
    inc l                                         ; $47C9: $2C
    inc [hl]                                      ; $47CA: $34
    ld [$0008], sp                                ; $47CB: $08 $08 $00
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
    ld a, a                                       ; $47E0: $7F
    ld a, $7F                                     ; $47E1: $3E $7F
    ld b, $A6                                     ; $47E3: $06 $A6
    ld e, b                                       ; $47E5: $58
    add sp, $10                                   ; $47E6: $E8 $10
    stop                                          ; $47E8: $10 $00
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
    inc b                                         ; $4806: $04
    nop                                           ; $4807: $00
    ld a, [de]                                    ; $4808: $1A
    inc b                                         ; $4809: $04
    ld l, d                                       ; $480A: $6A
    inc d                                         ; $480B: $14
    xor [hl]                                      ; $480C: $AE
    ld d, b                                       ; $480D: $50
    cp l                                          ; $480E: $BD
    ld b, d                                       ; $480F: $42
    ld sp, hl                                     ; $4810: $F9
    ld b, $FF                                     ; $4811: $06 $FF
    nop                                           ; $4813: $00
    rst RST_38                                    ; $4814: $FF
    ld b, c                                       ; $4815: $41
    rst RST_38                                    ; $4816: $FF
    ld a, l                                       ; $4817: $7D
    rst RST_38                                    ; $4818: $FF
    ld a, a                                       ; $4819: $7F
    rst RST_38                                    ; $481A: $FF
    ld a, a                                       ; $481B: $7F
    rst RST_38                                    ; $481C: $FF
    ld a, a                                       ; $481D: $7F
    rst RST_38                                    ; $481E: $FF
    ld a, a                                       ; $481F: $7F
    ld bc, $0300                                  ; $4820: $01 $00 $03
    ld bc, $030F                                  ; $4823: $01 $0F $03
    rra                                           ; $4826: $1F
    rrca                                          ; $4827: $0F
    rra                                           ; $4828: $1F
    inc c                                         ; $4829: $0C
    rra                                           ; $482A: $1F
    nop                                           ; $482B: $00
    ld [hl], $19                                  ; $482C: $36 $19
    ld hl, $F91F                                  ; $482E: $21 $1F $F9
    rlca                                          ; $4831: $07
    push hl                                       ; $4832: $E5
    db $DB                                        ; $4833: $DB
    rst RST_38                                    ; $4834: $FF
    rst RST_28                                    ; $4835: $EF
    rst RST_38                                    ; $4836: $FF
    ret nz                                        ; $4837: $C0

    ret nc                                        ; $4838: $D0

    xor a                                         ; $4839: $AF
    ret nc                                        ; $483A: $D0

    xor a                                         ; $483B: $AF
    pop de                                        ; $483C: $D1
    xor [hl]                                      ; $483D: $AE
    xor $11                                       ; $483E: $EE $11
    ldh [rP1], a                                  ; $4840: $E0 $00
    ldh a, [$FFE0]                                ; $4842: $F0 $E0
    ld hl, sp-$10                                 ; $4844: $F8 $F0
    ld hl, sp-$10                                 ; $4846: $F8 $F0
    ld a, h                                       ; $4848: $7C
    ld hl, sp+$7C                                 ; $4849: $F8 $7C
    ld hl, sp-$01                                 ; $484B: $F8 $FF
    call c, $DFFF                                 ; $484D: $DC $FF $DF
    rst RST_38                                    ; $4850: $FF
    or a                                          ; $4851: $B7
    rst RST_38                                    ; $4852: $FF
    xor a                                         ; $4853: $AF
    rst RST_30                                    ; $4854: $F7
    rrca                                          ; $4855: $0F
    rla                                           ; $4856: $17
    rst RST_28                                    ; $4857: $EF
    inc de                                        ; $4858: $13
    rst RST_28                                    ; $4859: $EF
    add hl, sp                                    ; $485A: $39
    or $FF                                        ; $485B: $F6 $FF
    ld bc, $DF3F                                  ; $485D: $01 $3F $DF
    nop                                           ; $4860: $00
    nop                                           ; $4861: $00
    nop                                           ; $4862: $00
    nop                                           ; $4863: $00
    nop                                           ; $4864: $00
    nop                                           ; $4865: $00
    nop                                           ; $4866: $00
    nop                                           ; $4867: $00
    nop                                           ; $4868: $00
    nop                                           ; $4869: $00
    nop                                           ; $486A: $00
    nop                                           ; $486B: $00
    add b                                         ; $486C: $80
    nop                                           ; $486D: $00
    ldh [$FF80], a                                ; $486E: $E0 $80
    ldh a, [$FFE0]                                ; $4870: $F0 $E0
    ldh a, [$FFE0]                                ; $4872: $F0 $E0
    ld hl, sp-$10                                 ; $4874: $F8 $F0
    ld hl, sp-$10                                 ; $4876: $F8 $F0
    ld hl, sp-$10                                 ; $4878: $F8 $F0
    ld hl, sp+$70                                 ; $487A: $F8 $70
    db $FC                                        ; $487C: $FC
    ld hl, sp-$04                                 ; $487D: $F8 $FC
    ld hl, sp-$02                                 ; $487F: $F8 $FE
    ld [hl], b                                    ; $4881: $70
    ld [hl], b                                    ; $4882: $70
    nop                                           ; $4883: $00
    nop                                           ; $4884: $00
    nop                                           ; $4885: $00
    nop                                           ; $4886: $00
    nop                                           ; $4887: $00
    nop                                           ; $4888: $00
    nop                                           ; $4889: $00
    ld bc, $0100                                  ; $488A: $01 $00 $01
    nop                                           ; $488D: $00
    ld [bc], a                                    ; $488E: $02
    ld bc, $0102                                  ; $488F: $01 $02 $01
    inc bc                                        ; $4892: $03
    ld bc, $0307                                  ; $4893: $01 $07 $03
    rlca                                          ; $4896: $07
    inc bc                                        ; $4897: $03
    rrca                                          ; $4898: $0F
    nop                                           ; $4899: $00
    inc d                                         ; $489A: $14
    dec bc                                        ; $489B: $0B
    rra                                           ; $489C: $1F
    nop                                           ; $489D: $00
    nop                                           ; $489E: $00
    nop                                           ; $489F: $00
    ld b, a                                       ; $48A0: $47
    jr c, jr_013_48F5                             ; $48A1: $38 $52

    dec l                                         ; $48A3: $2D
    ld d, l                                       ; $48A4: $55
    ld a, [hl+]                                   ; $48A5: $2A
    ld l, a                                       ; $48A6: $6F
    db $10                                        ; $48A7: $10
    add sp, $57                                   ; $48A8: $E8 $57
    push af                                       ; $48AA: $F5
    ld [$F679], a                                 ; $48AB: $EA $79 $F6
    ld a, a                                       ; $48AE: $7F
    ld hl, sp+$7E                                 ; $48AF: $F8 $7E
    db $FC                                        ; $48B1: $FC
    ld a, h                                       ; $48B2: $7C
    ld hl, sp-$04                                 ; $48B3: $F8 $FC
    ld hl, sp-$08                                 ; $48B5: $F8 $F8
    ldh a, [$FFF8]                                ; $48B7: $F0 $F8
    ldh a, [$FFF8]                                ; $48B9: $F0 $F8
    ld [hl], b                                    ; $48BB: $70
    ldh a, [rP1]                                  ; $48BC: $F0 $00
    nop                                           ; $48BE: $00
    nop                                           ; $48BF: $00
    ld a, a                                       ; $48C0: $7F
    cp a                                          ; $48C1: $BF
    ld a, a                                       ; $48C2: $7F
    cp a                                          ; $48C3: $BF
    cp a                                          ; $48C4: $BF
    ld e, a                                       ; $48C5: $5F
    rra                                           ; $48C6: $1F
    rst RST_28                                    ; $48C7: $EF
    rst RST_38                                    ; $48C8: $FF
    nop                                           ; $48C9: $00
    rst RST_38                                    ; $48CA: $FF
    cp $9F                                        ; $48CB: $FE $9F
    cp $9F                                        ; $48CD: $FE $9F
    cp $9F                                        ; $48CF: $FE $9F
    ld a, [hl]                                    ; $48D1: $7E
    rst RST_18                                    ; $48D2: $DF
    ld a, l                                       ; $48D3: $7D
    rst RST_38                                    ; $48D4: $FF
    ld a, a                                       ; $48D5: $7F
    ld a, a                                       ; $48D6: $7F
    ccf                                           ; $48D7: $3F
    ccf                                           ; $48D8: $3F
    rra                                           ; $48D9: $1F
    ccf                                           ; $48DA: $3F
    ld bc, $2A55                                  ; $48DB: $01 $55 $2A
    ld a, a                                       ; $48DE: $7F
    nop                                           ; $48DF: $00
    ld hl, sp-$10                                 ; $48E0: $F8 $F0
    ld hl, sp-$10                                 ; $48E2: $F8 $F0
    ldh a, [$FFE0]                                ; $48E4: $F0 $E0
    ldh [$FF80], a                                ; $48E6: $E0 $80
    add b                                         ; $48E8: $80
    nop                                           ; $48E9: $00
    nop                                           ; $48EA: $00
    nop                                           ; $48EB: $00
    nop                                           ; $48EC: $00
    nop                                           ; $48ED: $00
    nop                                           ; $48EE: $00
    nop                                           ; $48EF: $00
    nop                                           ; $48F0: $00
    nop                                           ; $48F1: $00
    add b                                         ; $48F2: $80
    nop                                           ; $48F3: $00
    ret nz                                        ; $48F4: $C0

jr_013_48F5:
    add b                                         ; $48F5: $80
    ret nz                                        ; $48F6: $C0

    add b                                         ; $48F7: $80
    ret nz                                        ; $48F8: $C0

    add b                                         ; $48F9: $80
    ldh [$FFC0], a                                ; $48FA: $E0 $C0
    ldh [$FFC0], a                                ; $48FC: $E0 $C0
    ldh [rP1], a                                  ; $48FE: $E0 $00
    ccf                                           ; $4900: $3F
    ld [$3649], sp                                ; $4901: $08 $49 $36
    ld b, c                                       ; $4904: $41
    ld a, $BD                                     ; $4905: $3E $BD
    ld a, [hl]                                    ; $4907: $7E
    rst RST_38                                    ; $4908: $FF
    ld a, [hl]                                    ; $4909: $7E
    rst RST_38                                    ; $490A: $FF
    ld a, [hl]                                    ; $490B: $7E
    rst RST_38                                    ; $490C: $FF
    ld a, [hl]                                    ; $490D: $7E
    rst RST_38                                    ; $490E: $FF
    ld a, [hl]                                    ; $490F: $7E
    rst RST_38                                    ; $4910: $FF
    ld a, a                                       ; $4911: $7F
    rst RST_38                                    ; $4912: $FF
    ld a, a                                       ; $4913: $7F
    ld a, a                                       ; $4914: $7F
    ccf                                           ; $4915: $3F
    ld a, a                                       ; $4916: $7F
    ccf                                           ; $4917: $3F
    ld a, a                                       ; $4918: $7F
    ccf                                           ; $4919: $3F
    ccf                                           ; $491A: $3F
    rra                                           ; $491B: $1F
    rra                                           ; $491C: $1F
    rrca                                          ; $491D: $0F
    rrca                                          ; $491E: $0F
    nop                                           ; $491F: $00
    ld e, $00                                     ; $4920: $1E $00
    cp a                                          ; $4922: $BF
    ld e, $FF                                     ; $4923: $1E $FF
    ccf                                           ; $4925: $3F
    rst RST_38                                    ; $4926: $FF
    rst RST_38                                    ; $4927: $FF
    rst RST_30                                    ; $4928: $F7
    adc a                                         ; $4929: $8F
    or a                                          ; $492A: $B7
    ld c, a                                       ; $492B: $4F
    ld l, a                                       ; $492C: $6F
    sbc l                                         ; $492D: $9D
    rra                                           ; $492E: $1F
    db $FD                                        ; $492F: $FD
    rst RST_38                                    ; $4930: $FF
    inc bc                                        ; $4931: $03
    rst RST_00                                    ; $4932: $C7
    dec a                                         ; $4933: $3D
    rst RST_08                                    ; $4934: $CF
    rst RST_38                                    ; $4935: $FF
    rst RST_18                                    ; $4936: $DF
    rst RST_38                                    ; $4937: $FF
    rst RST_38                                    ; $4938: $FF
    ld a, a                                       ; $4939: $7F
    rst RST_38                                    ; $493A: $FF
    ld a, [hl]                                    ; $493B: $7E
    rst RST_38                                    ; $493C: $FF
    ld a, [hl]                                    ; $493D: $7E
    rst RST_38                                    ; $493E: $FF
    db $FD                                        ; $493F: $FD
    add b                                         ; $4940: $80
    nop                                           ; $4941: $00
    ret nz                                        ; $4942: $C0

    add b                                         ; $4943: $80
    ldh [$FFC0], a                                ; $4944: $E0 $C0
    ld hl, sp-$40                                 ; $4946: $F8 $C0
    db $FC                                        ; $4948: $FC
    ld hl, sp-$02                                 ; $4949: $F8 $FE
    db $FC                                        ; $494B: $FC
    cp $FC                                        ; $494C: $FE $FC
    rst RST_38                                    ; $494E: $FF
    cp $FF                                        ; $494F: $FE $FF
    rst RST_38                                    ; $4951: $FF
    rst RST_38                                    ; $4952: $FF
    rst RST_38                                    ; $4953: $FF
    rst RST_38                                    ; $4954: $FF
    rst RST_38                                    ; $4955: $FF
    rst RST_38                                    ; $4956: $FF
    rst RST_38                                    ; $4957: $FF
    rst RST_38                                    ; $4958: $FF
    rst RST_38                                    ; $4959: $FF
    rst RST_38                                    ; $495A: $FF
    ld hl, sp+$7F                                 ; $495B: $F8 $7F
    rst RST_30                                    ; $495D: $F7
    sbc a                                         ; $495E: $9F
    ld l, a                                       ; $495F: $6F
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
    nop                                           ; $4972: $00
    nop                                           ; $4973: $00
    nop                                           ; $4974: $00
    nop                                           ; $4975: $00
    nop                                           ; $4976: $00
    nop                                           ; $4977: $00
    rlca                                          ; $4978: $07
    nop                                           ; $4979: $00
    ld a, [de]                                    ; $497A: $1A
    dec b                                         ; $497B: $05
    ld a, [hl+]                                   ; $497C: $2A
    dec d                                         ; $497D: $15
    cpl                                           ; $497E: $2F
    db $10                                        ; $497F: $10
    db $FC                                        ; $4980: $FC
    di                                            ; $4981: $F3
    di                                            ; $4982: $F3
    ret nz                                        ; $4983: $C0

    jp Jump_000_0101                              ; $4984: $C3 $01 $01


    nop                                           ; $4987: $00
    ld bc, $0000                                  ; $4988: $01 $00 $00
    nop                                           ; $498B: $00
    ld bc, $0200                                  ; $498C: $01 $00 $02
    ld bc, $0003                                  ; $498F: $01 $03 $00
    nop                                           ; $4992: $00
    nop                                           ; $4993: $00
    nop                                           ; $4994: $00
    nop                                           ; $4995: $00
    nop                                           ; $4996: $00
    nop                                           ; $4997: $00
    nop                                           ; $4998: $00
    nop                                           ; $4999: $00
    nop                                           ; $499A: $00
    nop                                           ; $499B: $00
    nop                                           ; $499C: $00
    nop                                           ; $499D: $00
    nop                                           ; $499E: $00
    nop                                           ; $499F: $00
    rst RST_38                                    ; $49A0: $FF
    adc a                                         ; $49A1: $8F
    rst RST_38                                    ; $49A2: $FF
    rst RST_28                                    ; $49A3: $EF
    rst RST_38                                    ; $49A4: $FF
    rst RST_28                                    ; $49A5: $EF
    rst RST_38                                    ; $49A6: $FF
    ld [hl], a                                    ; $49A7: $77
    rst RST_38                                    ; $49A8: $FF
    dec de                                        ; $49A9: $1B
    sbc a                                         ; $49AA: $9F
    ld l, b                                       ; $49AB: $68
    ld a, [$0F05]                                 ; $49AC: $FA $05 $0F
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
    ret nz                                        ; $49C0: $C0

    nop                                           ; $49C1: $00
    ldh a, [$FFC0]                                ; $49C2: $F0 $C0
    ld hl, sp-$10                                 ; $49C4: $F8 $F0
    db $FC                                        ; $49C6: $FC
    ld hl, sp-$04                                 ; $49C7: $F8 $FC
    ld hl, sp-$02                                 ; $49C9: $F8 $FE
    db $FC                                        ; $49CB: $FC
    cp $FC                                        ; $49CC: $FE $FC
    cp $FC                                        ; $49CE: $FE $FC
    cp $FC                                        ; $49D0: $FE $FC
    db $FC                                        ; $49D2: $FC
    sbc b                                         ; $49D3: $98
    ld hl, sp-$20                                 ; $49D4: $F8 $E0
    ld hl, sp-$10                                 ; $49D6: $F8 $F0
    db $FC                                        ; $49D8: $FC
    ld hl, sp-$04                                 ; $49D9: $F8 $FC
    ld hl, sp-$04                                 ; $49DB: $F8 $FC
    ld a, b                                       ; $49DD: $78
    db $FC                                        ; $49DE: $FC
    nop                                           ; $49DF: $00
    cp $70                                        ; $49E0: $FE $70
    ld [hl], b                                    ; $49E2: $70
    nop                                           ; $49E3: $00
    nop                                           ; $49E4: $00
    nop                                           ; $49E5: $00
    inc bc                                        ; $49E6: $03
    nop                                           ; $49E7: $00
    rlca                                          ; $49E8: $07
    inc bc                                        ; $49E9: $03
    rrca                                          ; $49EA: $0F
    rlca                                          ; $49EB: $07
    rrca                                          ; $49EC: $0F
    rlca                                          ; $49ED: $07
    dec bc                                        ; $49EE: $0B
    rlca                                          ; $49EF: $07
    add hl, bc                                    ; $49F0: $09
    rlca                                          ; $49F1: $07
    dec b                                         ; $49F2: $05
    inc bc                                        ; $49F3: $03
    inc bc                                        ; $49F4: $03
    nop                                           ; $49F5: $00
    nop                                           ; $49F6: $00
    nop                                           ; $49F7: $00
    nop                                           ; $49F8: $00
    nop                                           ; $49F9: $00
    nop                                           ; $49FA: $00
    nop                                           ; $49FB: $00
    nop                                           ; $49FC: $00
    nop                                           ; $49FD: $00
    nop                                           ; $49FE: $00
    nop                                           ; $49FF: $00
    ld b, a                                       ; $4A00: $47
    jr c, jr_013_4A55                             ; $4A01: $38 $52

    dec l                                         ; $4A03: $2D
    push de                                       ; $4A04: $D5
    ld a, [hl+]                                   ; $4A05: $2A
    rst RST_28                                    ; $4A06: $EF
    ret nc                                        ; $4A07: $D0

    db $EB                                        ; $4A08: $EB
    push de                                       ; $4A09: $D5
    rst RST_30                                    ; $4A0A: $F7
    jp hl                                         ; $4A0B: $E9


    ei                                            ; $4A0C: $FB
    push af                                       ; $4A0D: $F5
    rst RST_38                                    ; $4A0E: $FF
    ld sp, hl                                     ; $4A0F: $F9
    rst RST_38                                    ; $4A10: $FF
    ldh a, [c]                                    ; $4A11: $F2
    rst RST_38                                    ; $4A12: $FF
    adc $FE                                       ; $4A13: $CE $FE
    inc a                                         ; $4A15: $3C
    cp h                                          ; $4A16: $BC
    ld c, b                                       ; $4A17: $48
    ld l, b                                       ; $4A18: $68
    db $10                                        ; $4A19: $10
    stop                                          ; $4A1A: $10 $00
    nop                                           ; $4A1C: $00
    nop                                           ; $4A1D: $00
    nop                                           ; $4A1E: $00
    nop                                           ; $4A1F: $00
    ld a, a                                       ; $4A20: $7F
    cp a                                          ; $4A21: $BF
    ld a, a                                       ; $4A22: $7F
    cp a                                          ; $4A23: $BF
    cp a                                          ; $4A24: $BF
    ld e, a                                       ; $4A25: $5F
    rra                                           ; $4A26: $1F
    rst RST_28                                    ; $4A27: $EF
    rst RST_38                                    ; $4A28: $FF
    nop                                           ; $4A29: $00
    ld a, a                                       ; $4A2A: $7F
    cp $7F                                        ; $4A2B: $FE $7F
    cp $3F                                        ; $4A2D: $FE $3F
    cp $3F                                        ; $4A2F: $FE $3F
    db $FD                                        ; $4A31: $FD
    cp a                                          ; $4A32: $BF
    db $FD                                        ; $4A33: $FD
    rst RST_38                                    ; $4A34: $FF

jr_013_4A35:
    ld a, d                                       ; $4A35: $7A
    ld a, [hl]                                    ; $4A36: $7E
    ld bc, $152A                                  ; $4A37: $01 $2A $15
    dec d                                         ; $4A3A: $15
    nop                                           ; $4A3B: $00
    nop                                           ; $4A3C: $00
    nop                                           ; $4A3D: $00
    nop                                           ; $4A3E: $00
    nop                                           ; $4A3F: $00
    ld hl, sp-$10                                 ; $4A40: $F8 $F0
    ld hl, sp-$10                                 ; $4A42: $F8 $F0
    ldh a, [$FFE0]                                ; $4A44: $F0 $E0
    ldh [$FF80], a                                ; $4A46: $E0 $80
    add b                                         ; $4A48: $80
    nop                                           ; $4A49: $00
    nop                                           ; $4A4A: $00
    nop                                           ; $4A4B: $00
    nop                                           ; $4A4C: $00
    nop                                           ; $4A4D: $00
    add b                                         ; $4A4E: $80
    nop                                           ; $4A4F: $00
    add b                                         ; $4A50: $80
    nop                                           ; $4A51: $00
    add b                                         ; $4A52: $80
    nop                                           ; $4A53: $00
    add b                                         ; $4A54: $80

jr_013_4A55:
    nop                                           ; $4A55: $00
    add b                                         ; $4A56: $80
    nop                                           ; $4A57: $00
    add b                                         ; $4A58: $80
    nop                                           ; $4A59: $00
    nop                                           ; $4A5A: $00
    nop                                           ; $4A5B: $00
    nop                                           ; $4A5C: $00
    nop                                           ; $4A5D: $00
    nop                                           ; $4A5E: $00

jr_013_4A5F:
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
    inc b                                         ; $4A78: $04
    nop                                           ; $4A79: $00
    ld a, [bc]                                    ; $4A7A: $0A
    inc b                                         ; $4A7B: $04
    ld a, e                                       ; $4A7C: $7B
    inc b                                         ; $4A7D: $04
    sbc a                                         ; $4A7E: $9F
    ld l, e                                       ; $4A7F: $6B
    rrca                                          ; $4A80: $0F
    inc bc                                        ; $4A81: $03
    rra                                           ; $4A82: $1F
    rrca                                          ; $4A83: $0F
    rra                                           ; $4A84: $1F
    ld c, $1F                                     ; $4A85: $0E $1F
    ld [$113E], sp                                ; $4A87: $08 $3E $11
    ld hl, $3D1F                                  ; $4A8A: $21 $1F $3D
    inc bc                                        ; $4A8D: $03
    ld hl, $3F1F                                  ; $4A8E: $21 $1F $3F
    rrca                                          ; $4A91: $0F
    ld e, a                                       ; $4A92: $5F
    jr nz, jr_013_4A35                            ; $4A93: $20 $A0

    ld e, a                                       ; $4A95: $5F
    and b                                         ; $4A96: $A0
    ld e, a                                       ; $4A97: $5F
    and b                                         ; $4A98: $A0
    ld e, a                                       ; $4A99: $5F
    rst RST_18                                    ; $4A9A: $DF
    jr nz, jr_013_4A5F                            ; $4A9B: $20 $C2

    dec a                                         ; $4A9D: $3D
    pop de                                        ; $4A9E: $D1
    xor [hl]                                      ; $4A9F: $AE
    ld hl, sp-$10                                 ; $4AA0: $F8 $F0
    ld hl, sp-$10                                 ; $4AA2: $F8 $F0
    ld a, h                                       ; $4AA4: $7C
    ld hl, sp+$7C                                 ; $4AA5: $F8 $7C
    ld hl, sp-$02                                 ; $4AA7: $F8 $FE
    call c, $DCFF                                 ; $4AA9: $DC $FF $DC
    rst RST_38                                    ; $4AAC: $FF
    cp a                                          ; $4AAD: $BF
    rst RST_38                                    ; $4AAE: $FF
    or a                                          ; $4AAF: $B7
    rst RST_30                                    ; $4AB0: $F7
    ld l, a                                       ; $4AB1: $6F
    scf                                           ; $4AB2: $37
    rst RST_28                                    ; $4AB3: $EF
    inc sp                                        ; $4AB4: $33
    rst RST_28                                    ; $4AB5: $EF
    dec sp                                        ; $4AB6: $3B
    rst RST_28                                    ; $4AB7: $EF
    ld a, a                                       ; $4AB8: $7F
    rst RST_30                                    ; $4AB9: $F7
    rst RST_38                                    ; $4ABA: $FF
    nop                                           ; $4ABB: $00
    rra                                           ; $4ABC: $1F
    rst RST_28                                    ; $4ABD: $EF
    rst RST_18                                    ; $4ABE: $DF
    cpl                                           ; $4ABF: $2F
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
    add b                                         ; $4ACA: $80
    nop                                           ; $4ACB: $00
    ldh [$FF80], a                                ; $4ACC: $E0 $80
    ldh a, [$FFE0]                                ; $4ACE: $F0 $E0
    ldh a, [$FFE0]                                ; $4AD0: $F0 $E0
    ld hl, sp-$10                                 ; $4AD2: $F8 $F0
    ld hl, sp-$10                                 ; $4AD4: $F8 $F0
    db $FC                                        ; $4AD6: $FC
    ld hl, sp-$04                                 ; $4AD7: $F8 $FC

jr_013_4AD9:
    jr c, jr_013_4AD9                             ; $4AD9: $38 $FE

    db $FC                                        ; $4ADB: $FC
    cp $FC                                        ; $4ADC: $FE $FC
    cp $FC                                        ; $4ADE: $FE $FC
    nop                                           ; $4AE0: $00
    nop                                           ; $4AE1: $00
    nop                                           ; $4AE2: $00
    nop                                           ; $4AE3: $00
    nop                                           ; $4AE4: $00
    nop                                           ; $4AE5: $00
    nop                                           ; $4AE6: $00
    nop                                           ; $4AE7: $00
    nop                                           ; $4AE8: $00
    nop                                           ; $4AE9: $00
    nop                                           ; $4AEA: $00
    nop                                           ; $4AEB: $00
    nop                                           ; $4AEC: $00
    nop                                           ; $4AED: $00
    nop                                           ; $4AEE: $00
    nop                                           ; $4AEF: $00
    nop                                           ; $4AF0: $00
    nop                                           ; $4AF1: $00
    nop                                           ; $4AF2: $00
    nop                                           ; $4AF3: $00
    nop                                           ; $4AF4: $00
    nop                                           ; $4AF5: $00
    nop                                           ; $4AF6: $00
    nop                                           ; $4AF7: $00
    nop                                           ; $4AF8: $00
    nop                                           ; $4AF9: $00
    nop                                           ; $4AFA: $00
    nop                                           ; $4AFB: $00
    inc a                                         ; $4AFC: $3C
    nop                                           ; $4AFD: $00
    ld a, [hl]                                    ; $4AFE: $7E
    inc a                                         ; $4AFF: $3C
    ld bc, $0100                                  ; $4B00: $01 $00 $01
    nop                                           ; $4B03: $00
    ld bc, $0000                                  ; $4B04: $01 $00 $00
    nop                                           ; $4B07: $00
    nop                                           ; $4B08: $00
    nop                                           ; $4B09: $00
    nop                                           ; $4B0A: $00
    nop                                           ; $4B0B: $00
    nop                                           ; $4B0C: $00
    nop                                           ; $4B0D: $00
    nop                                           ; $4B0E: $00
    nop                                           ; $4B0F: $00
    ld c, $00                                     ; $4B10: $0E $00
    add hl, bc                                    ; $4B12: $09
    ld b, $3C                                     ; $4B13: $06 $3C
    inc bc                                        ; $4B15: $03
    ld b, e                                       ; $4B16: $43
    inc a                                         ; $4B17: $3C
    ccf                                           ; $4B18: $3F
    ld bc, $0D13                                  ; $4B19: $01 $13 $0D
    cpl                                           ; $4B1C: $2F
    ld de, $0235                                  ; $4B1D: $11 $35 $02
    rrca                                          ; $4B20: $0F
    nop                                           ; $4B21: $00
    rra                                           ; $4B22: $1F
    rrca                                          ; $4B23: $0F
    ld a, a                                       ; $4B24: $7F
    rra                                           ; $4B25: $1F
    rst RST_38                                    ; $4B26: $FF
    ld a, a                                       ; $4B27: $7F
    ei                                            ; $4B28: $FB
    ld b, a                                       ; $4B29: $47
    db $DB                                        ; $4B2A: $DB
    daa                                           ; $4B2B: $27
    or a                                          ; $4B2C: $B7
    adc $0F                                       ; $4B2D: $CE $0F
    cp $EF                                        ; $4B2F: $FE $EF
    dec e                                         ; $4B31: $1D
    cpl                                           ; $4B32: $2F
    dec e                                         ; $4B33: $1D
    ld e, h                                       ; $4B34: $5C
    dec sp                                        ; $4B35: $3B
    ld a, b                                       ; $4B36: $78
    rlca                                          ; $4B37: $07
    ld d, b                                       ; $4B38: $50
    cpl                                           ; $4B39: $2F
    ld d, b                                       ; $4B3A: $50
    cpl                                           ; $4B3B: $2F
    ld d, b                                       ; $4B3C: $50
    cpl                                           ; $4B3D: $2F
    cpl                                           ; $4B3E: $2F
    db $10                                        ; $4B3F: $10
    add b                                         ; $4B40: $80
    nop                                           ; $4B41: $00
    ret nz                                        ; $4B42: $C0

    add b                                         ; $4B43: $80
    ldh [$FFC0], a                                ; $4B44: $E0 $C0
    ld hl, sp-$20                                 ; $4B46: $F8 $E0
    db $FC                                        ; $4B48: $FC
    ld hl, sp-$01                                 ; $4B49: $F8 $FF
    db $FC                                        ; $4B4B: $FC
    rst RST_38                                    ; $4B4C: $FF
    ei                                            ; $4B4D: $FB
    rst RST_38                                    ; $4B4E: $FF

jr_013_4B4F:
    rst RST_38                                    ; $4B4F: $FF
    rst RST_38                                    ; $4B50: $FF
    rst RST_38                                    ; $4B51: $FF
    dec sp                                        ; $4B52: $3B
    rst RST_30                                    ; $4B53: $F7
    add hl, de                                    ; $4B54: $19
    rst RST_30                                    ; $4B55: $F7
    jr jr_013_4B4F                                ; $4B56: $18 $F7

    inc a                                         ; $4B58: $3C
    rst RST_30                                    ; $4B59: $F7
    ld a, a                                       ; $4B5A: $7F
    ei                                            ; $4B5B: $FB
    rst RST_38                                    ; $4B5C: $FF
    nop                                           ; $4B5D: $00
    add a                                         ; $4B5E: $87
    ld a, e                                       ; $4B5F: $7B
    add b                                         ; $4B60: $80
    nop                                           ; $4B61: $00
    ldh [$FF80], a                                ; $4B62: $E0 $80
    ldh a, [$FFE0]                                ; $4B64: $F0 $E0
    ld hl, sp-$10                                 ; $4B66: $F8 $F0
    ld hl, sp-$10                                 ; $4B68: $F8 $F0
    db $FC                                        ; $4B6A: $FC
    ld hl, sp-$04                                 ; $4B6B: $F8 $FC
    ld hl, sp+$7E                                 ; $4B6D: $F8 $7E
    db $FC                                        ; $4B6F: $FC
    cp $8C                                        ; $4B70: $FE $8C
    rst RST_38                                    ; $4B72: $FF
    halt                                          ; $4B73: $76
    rst RST_38                                    ; $4B74: $FF
    cp $FF                                        ; $4B75: $FE $FF
    cp $FF                                        ; $4B77: $FE $FF
    cp $FE                                        ; $4B79: $FE $FE
    db $FC                                        ; $4B7B: $FC
    db $FC                                        ; $4B7C: $FC
    ldh a, [$FFF0]                                ; $4B7D: $F0 $F0
    nop                                           ; $4B7F: $00
    dec bc                                        ; $4B80: $0B
    inc b                                         ; $4B81: $04
    dec c                                         ; $4B82: $0D
    nop                                           ; $4B83: $00
    ld bc, $0100                                  ; $4B84: $01 $00 $01
    nop                                           ; $4B87: $00
    nop                                           ; $4B88: $00
    nop                                           ; $4B89: $00
    nop                                           ; $4B8A: $00
    nop                                           ; $4B8B: $00
    ld bc, $0200                                  ; $4B8C: $01 $00 $02
    ld bc, $0003                                  ; $4B8F: $01 $03 $00
    nop                                           ; $4B92: $00
    nop                                           ; $4B93: $00
    nop                                           ; $4B94: $00
    nop                                           ; $4B95: $00
    nop                                           ; $4B96: $00
    nop                                           ; $4B97: $00
    nop                                           ; $4B98: $00
    nop                                           ; $4B99: $00
    nop                                           ; $4B9A: $00
    nop                                           ; $4B9B: $00
    nop                                           ; $4B9C: $00
    nop                                           ; $4B9D: $00
    nop                                           ; $4B9E: $00
    nop                                           ; $4B9F: $00
    ldh [$FF1F], a                                ; $4BA0: $E0 $1F
    add sp, -$29                                  ; $4BA2: $E8 $D7
    add sp, -$29                                  ; $4BA4: $E8 $D7
    db $F4                                        ; $4BA6: $F4
    set 6, h                                      ; $4BA7: $CB $F4
    xor e                                         ; $4BA9: $AB
    ld a, [$BC75]                                 ; $4BAA: $FA $75 $BC
    ld a, e                                       ; $4BAD: $7B
    ccf                                           ; $4BAE: $3F
    db $FC                                        ; $4BAF: $FC
    ld a, a                                       ; $4BB0: $7F
    cp $7E                                        ; $4BB1: $FE $7E
    ld hl, sp-$02                                 ; $4BB3: $F8 $FE
    ld a, h                                       ; $4BB5: $7C
    rst RST_38                                    ; $4BB6: $FF
    ld a, [hl]                                    ; $4BB7: $7E
    rst RST_38                                    ; $4BB8: $FF
    ld e, $9F                                     ; $4BB9: $1E $9F
    ld l, [hl]                                    ; $4BBB: $6E
    cp $00                                        ; $4BBC: $FE $00
    nop                                           ; $4BBE: $00
    nop                                           ; $4BBF: $00
    ld [hl], a                                    ; $4BC0: $77
    adc e                                         ; $4BC1: $8B
    ld b, a                                       ; $4BC2: $47
    cp e                                          ; $4BC3: $BB
    sbc e                                         ; $4BC4: $9B
    ld h, l                                       ; $4BC5: $65
    ld h, c                                       ; $4BC6: $61
    sbc [hl]                                      ; $4BC7: $9E
    ld a, a                                       ; $4BC8: $7F
    add b                                         ; $4BC9: $80
    rst RST_08                                    ; $4BCA: $CF
    ld a, a                                       ; $4BCB: $7F
    rst RST_08                                    ; $4BCC: $CF
    ld a, a                                       ; $4BCD: $7F
    sbc a                                         ; $4BCE: $9F
    ld a, [hl]                                    ; $4BCF: $7E
    rst RST_18                                    ; $4BD0: $DF
    ld a, l                                       ; $4BD1: $7D
    rst RST_38                                    ; $4BD2: $FF
    ld a, a                                       ; $4BD3: $7F
    ld a, a                                       ; $4BD4: $7F
    ccf                                           ; $4BD5: $3F
    ccf                                           ; $4BD6: $3F
    rra                                           ; $4BD7: $1F
    ccf                                           ; $4BD8: $3F
    ld bc, $2A55                                  ; $4BD9: $01 $55 $2A
    ld a, a                                       ; $4BDC: $7F
    nop                                           ; $4BDD: $00
    nop                                           ; $4BDE: $00
    nop                                           ; $4BDF: $00
    add b                                         ; $4BE0: $80
    nop                                           ; $4BE1: $00
    add b                                         ; $4BE2: $80
    nop                                           ; $4BE3: $00
    nop                                           ; $4BE4: $00
    nop                                           ; $4BE5: $00
    add b                                         ; $4BE6: $80
    nop                                           ; $4BE7: $00
    ret nz                                        ; $4BE8: $C0

    add b                                         ; $4BE9: $80
    ret nz                                        ; $4BEA: $C0

    add b                                         ; $4BEB: $80
    ret nz                                        ; $4BEC: $C0

    add b                                         ; $4BED: $80
    ldh [$FFC0], a                                ; $4BEE: $E0 $C0
    ldh [$FFC0], a                                ; $4BF0: $E0 $C0
    ldh [rP1], a                                  ; $4BF2: $E0 $00
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
    nop                                           ; $4C00: $00
    nop                                           ; $4C01: $00
    nop                                           ; $4C02: $00
    nop                                           ; $4C03: $00
    nop                                           ; $4C04: $00
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
    rlca                                          ; $4C10: $07
    nop                                           ; $4C11: $00
    inc b                                         ; $4C12: $04
    inc bc                                        ; $4C13: $03
    inc bc                                        ; $4C14: $03
    nop                                           ; $4C15: $00
    ld [bc], a                                    ; $4C16: $02
    ld bc, $0205                                  ; $4C17: $01 $05 $02
    rlca                                          ; $4C1A: $07
    nop                                           ; $4C1B: $00
    ld bc, $0100                                  ; $4C1C: $01 $00 $01
    nop                                           ; $4C1F: $00
    nop                                           ; $4C20: $00
    nop                                           ; $4C21: $00
    nop                                           ; $4C22: $00
    nop                                           ; $4C23: $00
    rlca                                          ; $4C24: $07
    nop                                           ; $4C25: $00
    rst RST_38                                    ; $4C26: $FF
    rlca                                          ; $4C27: $07
    ld a, a                                       ; $4C28: $7F
    cp a                                          ; $4C29: $BF
    ld a, a                                       ; $4C2A: $7F
    cp a                                          ; $4C2B: $BF
    ld a, a                                       ; $4C2C: $7F
    cp a                                          ; $4C2D: $BF
    cp a                                          ; $4C2E: $BF
    ld e, a                                       ; $4C2F: $5F
    rra                                           ; $4C30: $1F
    rst RST_28                                    ; $4C31: $EF
    ld a, a                                       ; $4C32: $7F
    add b                                         ; $4C33: $80
    add b                                         ; $4C34: $80
    nop                                           ; $4C35: $00
    nop                                           ; $4C36: $00
    nop                                           ; $4C37: $00
    ld bc, $0100                                  ; $4C38: $01 $00 $01
    nop                                           ; $4C3B: $00
    ld bc, $0100                                  ; $4C3C: $01 $00 $01
    nop                                           ; $4C3F: $00
    nop                                           ; $4C40: $00
    nop                                           ; $4C41: $00
    rlca                                          ; $4C42: $07
    nop                                           ; $4C43: $00
    dec b                                         ; $4C44: $05
    inc bc                                        ; $4C45: $03
    ld [hl], h                                    ; $4C46: $74
    inc bc                                        ; $4C47: $03
    ld l, l                                       ; $4C48: $6D
    ld [hl-], a                                   ; $4C49: $32
    ld [hl], c                                    ; $4C4A: $71
    ld a, $3E                                     ; $4C4B: $3E $3E
    rra                                           ; $4C4D: $1F
    ccf                                           ; $4C4E: $3F
    rrca                                          ; $4C4F: $0F
    ccf                                           ; $4C50: $3F
    rla                                           ; $4C51: $17
    rra                                           ; $4C52: $1F
    ld [$0F1F], sp                                ; $4C53: $08 $1F $0F
    rra                                           ; $4C56: $1F
    rrca                                          ; $4C57: $0F
    ccf                                           ; $4C58: $3F
    db $10                                        ; $4C59: $10
    ccf                                           ; $4C5A: $3F
    rrca                                          ; $4C5B: $0F
    ld a, a                                       ; $4C5C: $7F
    ccf                                           ; $4C5D: $3F
    rst RST_38                                    ; $4C5E: $FF
    ld a, a                                       ; $4C5F: $7F
    nop                                           ; $4C60: $00
    nop                                           ; $4C61: $00
    nop                                           ; $4C62: $00
    nop                                           ; $4C63: $00
    ldh [rP1], a                                  ; $4C64: $E0 $00
    ldh a, [$FF60]                                ; $4C66: $F0 $60
    ld [hl], b                                    ; $4C68: $70
    and b                                         ; $4C69: $A0
    ld hl, sp+$30                                 ; $4C6A: $F8 $30
    db $FC                                        ; $4C6C: $FC
    jr c, jr_013_4CAB                             ; $4C6D: $38 $3C

    ld hl, sp-$04                                 ; $4C6F: $F8 $FC
    ld hl, sp-$04                                 ; $4C71: $F8 $FC
    ld hl, sp-$08                                 ; $4C73: $F8 $F8
    ldh a, [$FFF8]                                ; $4C75: $F0 $F8
    ldh [$FFFC], a                                ; $4C77: $E0 $FC
    ld hl, sp-$02                                 ; $4C79: $F8 $FE
    cp h                                          ; $4C7B: $BC
    cp $DC                                        ; $4C7C: $FE $DC
    rst RST_38                                    ; $4C7E: $FF
    sbc $FF                                       ; $4C7F: $DE $FF
    ld a, a                                       ; $4C81: $7F
    rst RST_38                                    ; $4C82: $FF
    rst RST_38                                    ; $4C83: $FF
    rst RST_38                                    ; $4C84: $FF
    rst RST_38                                    ; $4C85: $FF
    rst RST_38                                    ; $4C86: $FF
    cp $FF                                        ; $4C87: $FE $FF
    db $FD                                        ; $4C89: $FD
    rst RST_38                                    ; $4C8A: $FF
    db $E3                                        ; $4C8B: $E3
    db $FC                                        ; $4C8C: $FC
    dec de                                        ; $4C8D: $1B
    rst RST_38                                    ; $4C8E: $FF
    ld a, h                                       ; $4C8F: $7C
    rst RST_38                                    ; $4C90: $FF
    ld a, h                                       ; $4C91: $7C
    db $FD                                        ; $4C92: $FD
    ld hl, sp-$04                                 ; $4C93: $F8 $FC
    ldh a, [$FFF2]                                ; $4C95: $F0 $F2
    db $EC                                        ; $4C97: $EC
    cp $A0                                        ; $4C98: $FE $A0
    cp b                                          ; $4C9A: $B8
    ld b, b                                       ; $4C9B: $40
    add h                                         ; $4C9C: $84
    ld a, b                                       ; $4C9D: $78
    ld a, h                                       ; $4C9E: $7C
    nop                                           ; $4C9F: $00
    rst RST_38                                    ; $4CA0: $FF
    cp $FF                                        ; $4CA1: $FE $FF
    rst RST_38                                    ; $4CA3: $FF
    rst RST_38                                    ; $4CA4: $FF
    sbc a                                         ; $4CA5: $9F
    rst RST_38                                    ; $4CA6: $FF
    ld a, a                                       ; $4CA7: $7F
    rst RST_38                                    ; $4CA8: $FF
    rst RST_38                                    ; $4CA9: $FF
    rst RST_38                                    ; $4CAA: $FF

jr_013_4CAB:
    ld hl, sp-$01                                 ; $4CAB: $F8 $FF
    rst RST_30                                    ; $4CAD: $F7
    rra                                           ; $4CAE: $1F
    rst RST_28                                    ; $4CAF: $EF
    rst RST_38                                    ; $4CB0: $FF
    rrca                                          ; $4CB1: $0F
    rst RST_38                                    ; $4CB2: $FF
    rst RST_28                                    ; $4CB3: $EF
    rst RST_38                                    ; $4CB4: $FF
    ld l, a                                       ; $4CB5: $6F
    ld a, a                                       ; $4CB6: $7F
    scf                                           ; $4CB7: $37
    ld a, a                                       ; $4CB8: $7F
    dec bc                                        ; $4CB9: $0B
    xor a                                         ; $4CBA: $AF
    ld d, b                                       ; $4CBB: $50
    ld a, [$0F05]                                 ; $4CBC: $FA $05 $0F
    nop                                           ; $4CBF: $00
    nop                                           ; $4CC0: $00
    nop                                           ; $4CC1: $00
    add b                                         ; $4CC2: $80
    nop                                           ; $4CC3: $00
    ldh [$FF80], a                                ; $4CC4: $E0 $80
    ldh a, [$FFE0]                                ; $4CC6: $F0 $E0
    ld hl, sp-$10                                 ; $4CC8: $F8 $F0
    ld hl, sp-$10                                 ; $4CCA: $F8 $F0
    db $FC                                        ; $4CCC: $FC
    ld hl, sp-$04                                 ; $4CCD: $F8 $FC
    ld hl, sp-$04                                 ; $4CCF: $F8 $FC
    ld hl, sp-$04                                 ; $4CD1: $F8 $FC
    sbc b                                         ; $4CD3: $98
    ld hl, sp-$20                                 ; $4CD4: $F8 $E0
    ld hl, sp-$10                                 ; $4CD6: $F8 $F0
    db $FC                                        ; $4CD8: $FC
    ld hl, sp-$04                                 ; $4CD9: $F8 $FC
    ld hl, sp-$04                                 ; $4CDB: $F8 $FC
    ld a, b                                       ; $4CDD: $78
    ld hl, sp+$00                                 ; $4CDE: $F8 $00
    nop                                           ; $4CE0: $00
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
    jr jr_013_4CEE                                ; $4CEC: $18 $00

jr_013_4CEE:
    inc d                                         ; $4CEE: $14
    ld [$043B], sp                                ; $4CEF: $08 $3B $04
    daa                                           ; $4CF2: $27
    dec de                                        ; $4CF3: $1B
    rla                                           ; $4CF4: $17
    dec bc                                        ; $4CF5: $0B
    rra                                           ; $4CF6: $1F
    rlca                                          ; $4CF7: $07
    rra                                           ; $4CF8: $1F
    rrca                                          ; $4CF9: $0F

jr_013_4CFA:
    rra                                           ; $4CFA: $1F
    rrca                                          ; $4CFB: $0F
    rrca                                          ; $4CFC: $0F
    rlca                                          ; $4CFD: $07
    rlca                                          ; $4CFE: $07

jr_013_4CFF:
    nop                                           ; $4CFF: $00
    nop                                           ; $4D00: $00
    nop                                           ; $4D01: $00
    nop                                           ; $4D02: $00
    nop                                           ; $4D03: $00
    ld b, $00                                     ; $4D04: $06 $00
    dec b                                         ; $4D06: $05
    ld [bc], a                                    ; $4D07: $02
    ld a, [de]                                    ; $4D08: $1A
    ld bc, $0916                                  ; $4D09: $01 $16 $09
    dec bc                                        ; $4D0C: $0B
    inc b                                         ; $4D0D: $04
    ld a, a                                       ; $4D0E: $7F
    inc bc                                        ; $4D0F: $03
    adc a                                         ; $4D10: $8F
    ld [hl], e                                    ; $4D11: $73
    rst RST_20                                    ; $4D12: $E7
    db $FD                                        ; $4D13: $FD
    rst RST_38                                    ; $4D14: $FF
    cp $FF                                        ; $4D15: $FE $FF
    db $FC                                        ; $4D17: $FC
    db $FC                                        ; $4D18: $FC
    ei                                            ; $4D19: $FB
    ei                                            ; $4D1A: $FB
    or h                                          ; $4D1B: $B4
    db $F4                                        ; $4D1C: $F4
    dec hl                                        ; $4D1D: $2B
    jr nc, jr_013_4D2F                            ; $4D1E: $30 $0F

    nop                                           ; $4D20: $00
    nop                                           ; $4D21: $00
    ld b, b                                       ; $4D22: $40
    nop                                           ; $4D23: $00
    and b                                         ; $4D24: $A0
    ld b, b                                       ; $4D25: $40
    and b                                         ; $4D26: $A0
    ld b, b                                       ; $4D27: $40
    cp b                                          ; $4D28: $B8
    ld b, b                                       ; $4D29: $40
    xor b                                         ; $4D2A: $A8
    ld d, b                                       ; $4D2B: $50
    ret z                                         ; $4D2C: $C8

    jr nc, jr_013_4CFF                            ; $4D2D: $30 $D0

jr_013_4D2F:
    and b                                         ; $4D2F: $A0
    ldh [$FFC0], a                                ; $4D30: $E0 $C0
    rst RST_28                                    ; $4D32: $EF
    ret nz                                        ; $4D33: $C0

    pop af                                        ; $4D34: $F1
    ld c, $0F                                     ; $4D35: $0E $0F
    ldh a, [$FFD1]                                ; $4D37: $F0 $D1
    ld l, $10                                     ; $4D39: $2E $10
    rst RST_28                                    ; $4D3B: $EF
    db $10                                        ; $4D3C: $10
    rst RST_28                                    ; $4D3D: $EF
    db $10                                        ; $4D3E: $10
    rst RST_28                                    ; $4D3F: $EF
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
    jr c, jr_013_4D50                             ; $4D4E: $38 $00

jr_013_4D50:
    cpl                                           ; $4D50: $2F
    jr jr_013_4CFA                                ; $4D51: $18 $A7

    dec de                                        ; $4D53: $1B
    ld l, e                                       ; $4D54: $6B
    sub l                                         ; $4D55: $95
    adc a                                         ; $4D56: $8F
    pop af                                        ; $4D57: $F1
    rst RST_30                                    ; $4D58: $F7
    ld sp, hl                                     ; $4D59: $F9
    ld sp, hl                                     ; $4D5A: $F9
    ld a, a                                       ; $4D5B: $7F
    ld a, a                                       ; $4D5C: $7F
    sbc a                                         ; $4D5D: $9F
    ld a, a                                       ; $4D5E: $7F
    rst RST_20                                    ; $4D5F: $E7
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
    add b                                         ; $4D70: $80
    nop                                           ; $4D71: $00
    ret nz                                        ; $4D72: $C0

    add b                                         ; $4D73: $80
    ldh [$FFC0], a                                ; $4D74: $E0 $C0
    ldh [$FFC0], a                                ; $4D76: $E0 $C0
    ldh [$FFC0], a                                ; $4D78: $E0 $C0
    ldh [$FFC0], a                                ; $4D7A: $E0 $C0
    ret nz                                        ; $4D7C: $C0

    add b                                         ; $4D7D: $80
    add b                                         ; $4D7E: $80
    nop                                           ; $4D7F: $00
    nop                                           ; $4D80: $00
    nop                                           ; $4D81: $00
    ld h, e                                       ; $4D82: $63
    nop                                           ; $4D83: $00
    ld e, a                                       ; $4D84: $5F
    inc hl                                        ; $4D85: $23
    ld l, a                                       ; $4D86: $6F
    rla                                           ; $4D87: $17
    sbc a                                         ; $4D88: $9F
    ld h, a                                       ; $4D89: $67
    ld l, a                                       ; $4D8A: $6F
    rla                                           ; $4D8B: $17
    sbc a                                         ; $4D8C: $9F
    ld l, a                                       ; $4D8D: $6F
    ld a, a                                       ; $4D8E: $7F
    rra                                           ; $4D8F: $1F
    ccf                                           ; $4D90: $3F

jr_013_4D91:
    rra                                           ; $4D91: $1F
    rra                                           ; $4D92: $1F
    inc c                                         ; $4D93: $0C
    inc c                                         ; $4D94: $0C
    nop                                           ; $4D95: $00
    nop                                           ; $4D96: $00
    nop                                           ; $4D97: $00
    nop                                           ; $4D98: $00
    nop                                           ; $4D99: $00
    nop                                           ; $4D9A: $00
    nop                                           ; $4D9B: $00
    nop                                           ; $4D9C: $00
    nop                                           ; $4D9D: $00
    nop                                           ; $4D9E: $00
    nop                                           ; $4D9F: $00
    ld sp, hl                                     ; $4DA0: $F9
    ld b, $DE                                     ; $4DA1: $06 $DE
    ld sp, hl                                     ; $4DA3: $F9
    add [hl]                                      ; $4DA4: $86
    ld sp, hl                                     ; $4DA5: $F9
    push hl                                       ; $4DA6: $E5
    ld a, [$FAFD]                                 ; $4DA7: $FA $FD $FA
    db $FC                                        ; $4DAA: $FC
    ei                                            ; $4DAB: $FB
    db $FD                                        ; $4DAC: $FD
    cp d                                          ; $4DAD: $BA
    rst RST_38                                    ; $4DAE: $FF
    reti                                          ; $4DAF: $D9


    rst RST_18                                    ; $4DB0: $DF
    add e                                         ; $4DB1: $83
    add a                                         ; $4DB2: $87
    inc bc                                        ; $4DB3: $03
    rlca                                          ; $4DB4: $07
    inc bc                                        ; $4DB5: $03
    rlca                                          ; $4DB6: $07
    inc bc                                        ; $4DB7: $03
    inc bc                                        ; $4DB8: $03
    ld bc, $0103                                  ; $4DB9: $01 $03 $01
    ld bc, $0000                                  ; $4DBC: $01 $00 $00
    nop                                           ; $4DBF: $00
    jr nc, jr_013_4D91                            ; $4DC0: $30 $CF

    ret c                                         ; $4DC2: $D8

    cpl                                           ; $4DC3: $2F
    ld e, h                                       ; $4DC4: $5C
    xor a                                         ; $4DC5: $AF
    ld e, a                                       ; $4DC6: $5F
    xor a                                         ; $4DC7: $AF
    rra                                           ; $4DC8: $1F
    add sp, -$04                                  ; $4DC9: $E8 $FC
    rlca                                          ; $4DCB: $07
    ld hl, sp-$11                                 ; $4DCC: $F8 $EF
    ld sp, hl                                     ; $4DCE: $F9
    rst RST_28                                    ; $4DCF: $EF
    ei                                            ; $4DD0: $FB
    rst RST_28                                    ; $4DD1: $EF
    rst RST_38                                    ; $4DD2: $FF
    rst RST_30                                    ; $4DD3: $F7
    rst RST_38                                    ; $4DD4: $FF
    rst RST_30                                    ; $4DD5: $F7
    rst RST_38                                    ; $4DD6: $FF
    rst RST_30                                    ; $4DD7: $F7
    rst RST_38                                    ; $4DD8: $FF
    rst RST_28                                    ; $4DD9: $EF
    rst RST_38                                    ; $4DDA: $FF
    db $FC                                        ; $4DDB: $FC
    db $FC                                        ; $4DDC: $FC
    ldh a, [$FFF0]                                ; $4DDD: $F0 $F0
    nop                                           ; $4DDF: $00
    ld a, a                                       ; $4DE0: $7F
    rst RST_38                                    ; $4DE1: $FF
    ld a, a                                       ; $4DE2: $7F
    rst RST_38                                    ; $4DE3: $FF
    rst RST_38                                    ; $4DE4: $FF
    cp $FE                                        ; $4DE5: $FE $FE
    db $FC                                        ; $4DE7: $FC
    cp $7C                                        ; $4DE8: $FE $7C
    ld a, h                                       ; $4DEA: $7C
    add sp, -$08                                  ; $4DEB: $E8 $F8
    ldh a, [$FFF8]                                ; $4DED: $F0 $F8
    ldh a, [$FFF8]                                ; $4DEF: $F0 $F8
    ldh a, [$FFF0]                                ; $4DF1: $F0 $F0
    ldh [$FFF0], a                                ; $4DF3: $E0 $F0
    ldh [$FFE0], a                                ; $4DF5: $E0 $E0
    ret nz                                        ; $4DF7: $C0

    ret nz                                        ; $4DF8: $C0

    nop                                           ; $4DF9: $00
    nop                                           ; $4DFA: $00
    nop                                           ; $4DFB: $00
    nop                                           ; $4DFC: $00
    nop                                           ; $4DFD: $00
    nop                                           ; $4DFE: $00
    nop                                           ; $4DFF: $00
    inc e                                         ; $4E00: $1C
    nop                                           ; $4E01: $00
    inc de                                        ; $4E02: $13
    inc c                                         ; $4E03: $0C
    rrca                                          ; $4E04: $0F
    inc bc                                        ; $4E05: $03
    inc de                                        ; $4E06: $13
    dec c                                         ; $4E07: $0D
    rra                                           ; $4E08: $1F
    inc bc                                        ; $4E09: $03
    rrca                                          ; $4E0A: $0F
    rlca                                          ; $4E0B: $07
    rlca                                          ; $4E0C: $07
    inc bc                                        ; $4E0D: $03
    inc bc                                        ; $4E0E: $03
    nop                                           ; $4E0F: $00
    nop                                           ; $4E10: $00
    nop                                           ; $4E11: $00
    nop                                           ; $4E12: $00
    nop                                           ; $4E13: $00
    nop                                           ; $4E14: $00
    nop                                           ; $4E15: $00
    nop                                           ; $4E16: $00
    nop                                           ; $4E17: $00
    nop                                           ; $4E18: $00
    nop                                           ; $4E19: $00
    nop                                           ; $4E1A: $00
    nop                                           ; $4E1B: $00
    nop                                           ; $4E1C: $00
    nop                                           ; $4E1D: $00
    nop                                           ; $4E1E: $00
    nop                                           ; $4E1F: $00
    rrca                                          ; $4E20: $0F
    nop                                           ; $4E21: $00
    inc de                                        ; $4E22: $13
    rrca                                          ; $4E23: $0F
    ccf                                           ; $4E24: $3F
    rra                                           ; $4E25: $1F
    ccf                                           ; $4E26: $3F
    rra                                           ; $4E27: $1F
    ld a, a                                       ; $4E28: $7F
    ld a, $7F                                     ; $4E29: $3E $7F
    dec a                                         ; $4E2B: $3D
    ld a, [hl]                                    ; $4E2C: $7E
    dec a                                         ; $4E2D: $3D
    ld a, [hl]                                    ; $4E2E: $7E
    dec a                                         ; $4E2F: $3D
    ld a, a                                       ; $4E30: $7F
    jr nc, jr_013_4EA4                            ; $4E31: $30 $71

    rrca                                          ; $4E33: $0F
    rst RST_00                                    ; $4E34: $C7
    ld a, a                                       ; $4E35: $7F
    rst RST_38                                    ; $4E36: $FF
    rst RST_38                                    ; $4E37: $FF
    rst RST_38                                    ; $4E38: $FF
    rst RST_00                                    ; $4E39: $C7
    rst RST_00                                    ; $4E3A: $C7
    cp b                                          ; $4E3B: $B8
    rst RST_08                                    ; $4E3C: $CF
    or a                                          ; $4E3D: $B7

jr_013_4E3E:
    rst RST_28                                    ; $4E3E: $EF
    sub a                                         ; $4E3F: $97
    ret nz                                        ; $4E40: $C0

    nop                                           ; $4E41: $00
    rst RST_38                                    ; $4E42: $FF
    ret nz                                        ; $4E43: $C0

    pop hl                                        ; $4E44: $E1
    ld a, $9C                                     ; $4E45: $3E $9C
    db $E3                                        ; $4E47: $E3
    ld h, c                                       ; $4E48: $61
    sbc [hl]                                      ; $4E49: $9E
    add c                                         ; $4E4A: $81
    ld a, [hl]                                    ; $4E4B: $7E
    ld bc, $81FE                                  ; $4E4C: $01 $FE $81
    ld a, [hl]                                    ; $4E4F: $7E
    pop bc                                        ; $4E50: $C1
    cp [hl]                                       ; $4E51: $BE
    db $E3                                        ; $4E52: $E3
    rst RST_18                                    ; $4E53: $DF
    rst RST_38                                    ; $4E54: $FF
    cp $FF                                        ; $4E55: $FE $FF
    ld bc, $F7FF                                  ; $4E57: $01 $FF $F7
    rst RST_38                                    ; $4E5A: $FF
    rst RST_28                                    ; $4E5B: $EF
    rst RST_38                                    ; $4E5C: $FF
    rst RST_38                                    ; $4E5D: $FF
    rst RST_38                                    ; $4E5E: $FF
    rst RST_38                                    ; $4E5F: $FF
    nop                                           ; $4E60: $00
    nop                                           ; $4E61: $00
    ldh [rP1], a                                  ; $4E62: $E0 $00
    db $10                                        ; $4E64: $10
    ldh [$FFEB], a                                ; $4E65: $E0 $EB
    db $10                                        ; $4E67: $10
    dec e                                         ; $4E68: $1D
    ldh [c], a                                    ; $4E69: $E2
    dec c                                         ; $4E6A: $0D
    or $0D                                        ; $4E6B: $F6 $0D
    or $8C                                        ; $4E6D: $F6 $8C
    rst RST_30                                    ; $4E6F: $F7
    adc a                                         ; $4E70: $8F
    rst RST_30                                    ; $4E71: $F7
    rst RST_08                                    ; $4E72: $CF
    ld a, e                                       ; $4E73: $7B
    rst RST_38                                    ; $4E74: $FF
    jr jr_013_4E3E                                ; $4E75: $18 $C7

    db $FD                                        ; $4E77: $FD
    adc a                                         ; $4E78: $8F
    rst RST_38                                    ; $4E79: $FF
    cp a                                          ; $4E7A: $BF
    cp $FF                                        ; $4E7B: $FE $FF
    cp $FF                                        ; $4E7D: $FE $FF
    cp $00                                        ; $4E7F: $FE $00
    nop                                           ; $4E81: $00
    nop                                           ; $4E82: $00
    nop                                           ; $4E83: $00
    nop                                           ; $4E84: $00
    nop                                           ; $4E85: $00
    ret nz                                        ; $4E86: $C0

    nop                                           ; $4E87: $00
    ld a, b                                       ; $4E88: $78
    ret nz                                        ; $4E89: $C0

    inc a                                         ; $4E8A: $3C
    ret c                                         ; $4E8B: $D8

    inc a                                         ; $4E8C: $3C
    ret c                                         ; $4E8D: $D8

    ld a, $CC                                     ; $4E8E: $3E $CC
    sbc a                                         ; $4E90: $9F
    xor $CF                                       ; $4E91: $EE $CF
    cp $FF                                        ; $4E93: $FE $FF
    cp $FF                                        ; $4E95: $FE $FF
    ld a, $FE                                     ; $4E97: $3E $FE
    db $FC                                        ; $4E99: $FC
    db $FC                                        ; $4E9A: $FC
    ldh a, [$FFF0]                                ; $4E9B: $F0 $F0
    ret nz                                        ; $4E9D: $C0

    ret nz                                        ; $4E9E: $C0

    nop                                           ; $4E9F: $00
    rst RST_08                                    ; $4EA0: $CF
    or a                                          ; $4EA1: $B7
    rst RST_08                                    ; $4EA2: $CF
    scf                                           ; $4EA3: $37

jr_013_4EA4:
    scf                                           ; $4EA4: $37
    dec bc                                        ; $4EA5: $0B
    rrca                                          ; $4EA6: $0F
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
    nop                                           ; $4EBA: $00
    nop                                           ; $4EBB: $00
    nop                                           ; $4EBC: $00
    nop                                           ; $4EBD: $00
    nop                                           ; $4EBE: $00
    nop                                           ; $4EBF: $00
    rst RST_38                                    ; $4EC0: $FF
    rst RST_38                                    ; $4EC1: $FF
    rst RST_38                                    ; $4EC2: $FF
    rst RST_30                                    ; $4EC3: $F7
    rst RST_38                                    ; $4EC4: $FF
    nop                                           ; $4EC5: $00
    nop                                           ; $4EC6: $00
    nop                                           ; $4EC7: $00
    nop                                           ; $4EC8: $00
    nop                                           ; $4EC9: $00
    nop                                           ; $4ECA: $00
    nop                                           ; $4ECB: $00
    nop                                           ; $4ECC: $00
    nop                                           ; $4ECD: $00
    nop                                           ; $4ECE: $00
    nop                                           ; $4ECF: $00
    nop                                           ; $4ED0: $00
    nop                                           ; $4ED1: $00
    nop                                           ; $4ED2: $00
    nop                                           ; $4ED3: $00
    nop                                           ; $4ED4: $00
    nop                                           ; $4ED5: $00
    nop                                           ; $4ED6: $00
    nop                                           ; $4ED7: $00
    nop                                           ; $4ED8: $00
    nop                                           ; $4ED9: $00
    nop                                           ; $4EDA: $00
    nop                                           ; $4EDB: $00
    nop                                           ; $4EDC: $00
    nop                                           ; $4EDD: $00
    nop                                           ; $4EDE: $00
    nop                                           ; $4EDF: $00
    cp $FC                                        ; $4EE0: $FE $FC
    db $FC                                        ; $4EE2: $FC
    ldh a, [$FFF0]                                ; $4EE3: $F0 $F0
    nop                                           ; $4EE5: $00
    nop                                           ; $4EE6: $00
    nop                                           ; $4EE7: $00
    nop                                           ; $4EE8: $00
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
    inc bc                                        ; $4F04: $03
    nop                                           ; $4F05: $00
    rlca                                          ; $4F06: $07
    inc bc                                        ; $4F07: $03
    rlca                                          ; $4F08: $07
    ld [bc], a                                    ; $4F09: $02
    ld b, $01                                     ; $4F0A: $06 $01
    dec c                                         ; $4F0C: $0D
    ld b, $08                                     ; $4F0D: $06 $08
    rlca                                          ; $4F0F: $07
    rlca                                          ; $4F10: $07
    nop                                           ; $4F11: $00
    rra                                           ; $4F12: $1F
    ld b, $FE                                     ; $4F13: $06 $FE
    dec e                                         ; $4F15: $1D
    rst RST_38                                    ; $4F16: $FF
    cp h                                          ; $4F17: $BC
    cp $FD                                        ; $4F18: $FE $FD
    cp $FD                                        ; $4F1A: $FE $FD
    cp $FD                                        ; $4F1C: $FE $FD
    rst RST_38                                    ; $4F1E: $FF
    cp $FF                                        ; $4F1F: $FE $FF
    ld hl, sp-$07                                 ; $4F21: $F8 $F9
    nop                                           ; $4F23: $00
    ld bc, $0100                                  ; $4F24: $01 $00 $01
    nop                                           ; $4F27: $00
    inc bc                                        ; $4F28: $03
    ld bc, $0307                                  ; $4F29: $01 $07 $03
    dec c                                         ; $4F2C: $0D
    rlca                                          ; $4F2D: $07
    add hl, bc                                    ; $4F2E: $09
    rlca                                          ; $4F2F: $07
    add hl, bc                                    ; $4F30: $09
    rlca                                          ; $4F31: $07
    dec b                                         ; $4F32: $05
    inc bc                                        ; $4F33: $03
    rlca                                          ; $4F34: $07
    inc bc                                        ; $4F35: $03
    inc bc                                        ; $4F36: $03
    ld bc, $0007                                  ; $4F37: $01 $07 $00
    ld a, [bc]                                    ; $4F3A: $0A
    dec b                                         ; $4F3B: $05
    rrca                                          ; $4F3C: $0F
    nop                                           ; $4F3D: $00
    nop                                           ; $4F3E: $00
    nop                                           ; $4F3F: $00
    nop                                           ; $4F40: $00
    nop                                           ; $4F41: $00
    nop                                           ; $4F42: $00
    nop                                           ; $4F43: $00
    rrca                                          ; $4F44: $0F
    nop                                           ; $4F45: $00
    ccf                                           ; $4F46: $3F
    rrca                                          ; $4F47: $0F
    ld a, a                                       ; $4F48: $7F
    ccf                                           ; $4F49: $3F
    cp a                                          ; $4F4A: $BF
    ld c, a                                       ; $4F4B: $4F
    adc a                                         ; $4F4C: $8F
    ld [hl], a                                    ; $4F4D: $77
    rrca                                          ; $4F4E: $0F
    rst RST_30                                    ; $4F4F: $F7
    scf                                           ; $4F50: $37
    ret z                                         ; $4F51: $C8

    ld d, h                                       ; $4F52: $54
    adc b                                         ; $4F53: $88
    ld c, h                                       ; $4F54: $4C
    add b                                         ; $4F55: $80
    ret nz                                        ; $4F56: $C0

    nop                                           ; $4F57: $00
    nop                                           ; $4F58: $00
    nop                                           ; $4F59: $00
    nop                                           ; $4F5A: $00
    nop                                           ; $4F5B: $00
    nop                                           ; $4F5C: $00
    nop                                           ; $4F5D: $00
    nop                                           ; $4F5E: $00
    nop                                           ; $4F5F: $00
    nop                                           ; $4F60: $00
    nop                                           ; $4F61: $00
    nop                                           ; $4F62: $00
    nop                                           ; $4F63: $00
    nop                                           ; $4F64: $00
    nop                                           ; $4F65: $00
    nop                                           ; $4F66: $00
    nop                                           ; $4F67: $00
    nop                                           ; $4F68: $00
    nop                                           ; $4F69: $00
    nop                                           ; $4F6A: $00
    nop                                           ; $4F6B: $00
    nop                                           ; $4F6C: $00
    nop                                           ; $4F6D: $00
    nop                                           ; $4F6E: $00
    nop                                           ; $4F6F: $00
    nop                                           ; $4F70: $00
    nop                                           ; $4F71: $00
    nop                                           ; $4F72: $00
    nop                                           ; $4F73: $00
    nop                                           ; $4F74: $00
    nop                                           ; $4F75: $00
    nop                                           ; $4F76: $00
    nop                                           ; $4F77: $00
    ld bc, $0100                                  ; $4F78: $01 $00 $01
    nop                                           ; $4F7B: $00
    ld bc, $0100                                  ; $4F7C: $01 $00 $01
    nop                                           ; $4F7F: $00
    ld a, b                                       ; $4F80: $78
    nop                                           ; $4F81: $00
    db $FC                                        ; $4F82: $FC
    ld a, b                                       ; $4F83: $78
    cp $FC                                        ; $4F84: $FE $FC
    rst RST_38                                    ; $4F86: $FF
    cp $DF                                        ; $4F87: $FE $DF
    ccf                                           ; $4F89: $3F
    rst RST_18                                    ; $4F8A: $DF
    ccf                                           ; $4F8B: $3F
    cp a                                          ; $4F8C: $BF
    ld [hl], a                                    ; $4F8D: $77
    ld a, a                                       ; $4F8E: $7F
    rst RST_30                                    ; $4F8F: $F7
    ld a, a                                       ; $4F90: $7F
    rst RST_28                                    ; $4F91: $EF
    ld a, a                                       ; $4F92: $7F
    rst RST_28                                    ; $4F93: $EF
    pop hl                                        ; $4F94: $E1
    rst RST_18                                    ; $4F95: $DF
    ret nz                                        ; $4F96: $C0

    ccf                                           ; $4F97: $3F
    add b                                         ; $4F98: $80
    ld a, a                                       ; $4F99: $7F
    add c                                         ; $4F9A: $81
    ld a, a                                       ; $4F9B: $7F
    add e                                         ; $4F9C: $83
    ld a, a                                       ; $4F9D: $7F
    ld a, a                                       ; $4F9E: $7F
    add b                                         ; $4F9F: $80
    nop                                           ; $4FA0: $00
    nop                                           ; $4FA1: $00
    nop                                           ; $4FA2: $00
    nop                                           ; $4FA3: $00
    nop                                           ; $4FA4: $00
    nop                                           ; $4FA5: $00
    nop                                           ; $4FA6: $00
    nop                                           ; $4FA7: $00
    add b                                         ; $4FA8: $80
    nop                                           ; $4FA9: $00
    ldh [$FF80], a                                ; $4FAA: $E0 $80
    db $FC                                        ; $4FAC: $FC
    ldh [rIE], a                                  ; $4FAD: $E0 $FF
    call c, $FFFF                                 ; $4FAF: $DC $FF $FF
    rst RST_38                                    ; $4FB2: $FF
    rst RST_38                                    ; $4FB3: $FF
    rst RST_18                                    ; $4FB4: $DF
    cp a                                          ; $4FB5: $BF
    rst RST_08                                    ; $4FB6: $CF
    cp a                                          ; $4FB7: $BF
    rst RST_00                                    ; $4FB8: $C7
    cp a                                          ; $4FB9: $BF
    db $E3                                        ; $4FBA: $E3
    cp a                                          ; $4FBB: $BF
    rst RST_38                                    ; $4FBC: $FF
    call c, Call_000_03FF                         ; $4FBD: $DC $FF $03
    nop                                           ; $4FC0: $00
    nop                                           ; $4FC1: $00
    nop                                           ; $4FC2: $00
    nop                                           ; $4FC3: $00
    add b                                         ; $4FC4: $80
    nop                                           ; $4FC5: $00
    ret nz                                        ; $4FC6: $C0

    add b                                         ; $4FC7: $80
    ret nz                                        ; $4FC8: $C0

    add b                                         ; $4FC9: $80
    ldh [$FFC0], a                                ; $4FCA: $E0 $C0
    ldh [$FFC0], a                                ; $4FCC: $E0 $C0
    ldh a, [$FFE0]                                ; $4FCE: $F0 $E0
    ldh a, [$FF60]                                ; $4FD0: $F0 $60
    ld hl, sp-$50                                 ; $4FD2: $F8 $B0
    ld hl, sp-$10                                 ; $4FD4: $F8 $F0
    ld hl, sp-$10                                 ; $4FD6: $F8 $F0
    ld hl, sp-$10                                 ; $4FD8: $F8 $F0
    ldh a, [$FFE0]                                ; $4FDA: $F0 $E0
    ldh [$FF80], a                                ; $4FDC: $E0 $80
    add b                                         ; $4FDE: $80
    nop                                           ; $4FDF: $00
    inc b                                         ; $4FE0: $04
    ei                                            ; $4FE1: $FB
    ld b, e                                       ; $4FE2: $43
    cp h                                          ; $4FE3: $BC
    ld b, d                                       ; $4FE4: $42
    cp l                                          ; $4FE5: $BD
    and h                                         ; $4FE6: $A4
    ld e, e                                       ; $4FE7: $5B
    and e                                         ; $4FE8: $A3
    ld e, h                                       ; $4FE9: $5C
    pop de                                        ; $4FEA: $D1
    xor [hl]                                      ; $4FEB: $AE
    ldh [c], a                                    ; $4FEC: $E2
    db $DD                                        ; $4FED: $DD
    cp $E1                                        ; $4FEE: $FE $E1
    cp $F9                                        ; $4FF0: $FE $F9
    ld sp, hl                                     ; $4FF2: $F9
    ret nz                                        ; $4FF3: $C0

    ld sp, hl                                     ; $4FF4: $F9
    ldh a, [$FFFC]                                ; $4FF5: $F0 $FC
    ld hl, sp-$04                                 ; $4FF7: $F8 $FC
    ld a, b                                       ; $4FF9: $78
    ld a, h                                       ; $4FFA: $7C
    cp b                                          ; $4FFB: $B8
    ld hl, sp+$00                                 ; $4FFC: $F8 $00
    nop                                           ; $4FFE: $00
    nop                                           ; $4FFF: $00
    ccf                                           ; $5000: $3F
    rst RST_18                                    ; $5001: $DF
    cp a                                          ; $5002: $BF
    ld e, a                                       ; $5003: $5F
    ccf                                           ; $5004: $3F
    rst RST_18                                    ; $5005: $DF
    rst RST_18                                    ; $5006: $DF
    cpl                                           ; $5007: $2F
    rrca                                          ; $5008: $0F
    rst RST_30                                    ; $5009: $F7
    rst RST_38                                    ; $500A: $FF
    nop                                           ; $500B: $00
    ld a, h                                       ; $500C: $7C
    ld hl, sp+$7E                                 ; $500D: $F8 $7E
    db $FC                                        ; $500F: $FC
    ld a, $FC                                     ; $5010: $3E $FC
    cp a                                          ; $5012: $BF
    ld a, [$FFFF]                                 ; $5013: $FA $FF $FF
    rst RST_38                                    ; $5016: $FF
    ld a, a                                       ; $5017: $7F
    ld a, a                                       ; $5018: $7F
    ccf                                           ; $5019: $3F
    ccf                                           ; $501A: $3F
    ld bc, $2A55                                  ; $501B: $01 $55 $2A
    ld a, a                                       ; $501E: $7F
    nop                                           ; $501F: $00
    add b                                         ; $5020: $80
    nop                                           ; $5021: $00
    add b                                         ; $5022: $80
    nop                                           ; $5023: $00
    add b                                         ; $5024: $80
    nop                                           ; $5025: $00
    ret nz                                        ; $5026: $C0

    add b                                         ; $5027: $80
    ret nz                                        ; $5028: $C0

    add b                                         ; $5029: $80
    ret nz                                        ; $502A: $C0

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
    inc bc                                        ; $5044: $03
    nop                                           ; $5045: $00
    rlca                                          ; $5046: $07
    inc bc                                        ; $5047: $03
    rlca                                          ; $5048: $07
    ld [bc], a                                    ; $5049: $02
    ld b, $01                                     ; $504A: $06 $01
    dec c                                         ; $504C: $0D
    ld b, $08                                     ; $504D: $06 $08
    rlca                                          ; $504F: $07
    rlca                                          ; $5050: $07
    nop                                           ; $5051: $00
    rra                                           ; $5052: $1F
    ld b, $FE                                     ; $5053: $06 $FE
    dec e                                         ; $5055: $1D
    rst RST_38                                    ; $5056: $FF
    cp h                                          ; $5057: $BC
    cp $FD                                        ; $5058: $FE $FD
    cp $FD                                        ; $505A: $FE $FD
    cp $FD                                        ; $505C: $FE $FD
    rst RST_38                                    ; $505E: $FF
    cp $FF                                        ; $505F: $FE $FF
    ld hl, sp-$07                                 ; $5061: $F8 $F9
    nop                                           ; $5063: $00
    ld bc, $0100                                  ; $5064: $01 $00 $01
    nop                                           ; $5067: $00
    inc bc                                        ; $5068: $03
    ld bc, $0307                                  ; $5069: $01 $07 $03
    dec c                                         ; $506C: $0D
    rlca                                          ; $506D: $07
    add hl, bc                                    ; $506E: $09
    rlca                                          ; $506F: $07
    add hl, bc                                    ; $5070: $09
    rlca                                          ; $5071: $07
    dec b                                         ; $5072: $05
    inc bc                                        ; $5073: $03
    rlca                                          ; $5074: $07
    inc bc                                        ; $5075: $03
    inc bc                                        ; $5076: $03
    ld bc, $0007                                  ; $5077: $01 $07 $00
    ld a, [bc]                                    ; $507A: $0A
    dec b                                         ; $507B: $05
    rrca                                          ; $507C: $0F
    nop                                           ; $507D: $00
    nop                                           ; $507E: $00
    nop                                           ; $507F: $00
    ld hl, sp+$00                                 ; $5080: $F8 $00
    rst RST_38                                    ; $5082: $FF
    ld a, b                                       ; $5083: $78
    ld a, a                                       ; $5084: $7F
    sbc a                                         ; $5085: $9F
    rra                                           ; $5086: $1F
    rst RST_28                                    ; $5087: $EF
    sbc a                                         ; $5088: $9F
    ld l, a                                       ; $5089: $6F
    sbc a                                         ; $508A: $9F
    ld l, a                                       ; $508B: $6F
    ld a, a                                       ; $508C: $7F
    adc a                                         ; $508D: $8F
    adc a                                         ; $508E: $8F
    nop                                           ; $508F: $00
    nop                                           ; $5090: $00
    nop                                           ; $5091: $00
    nop                                           ; $5092: $00
    nop                                           ; $5093: $00
    nop                                           ; $5094: $00
    nop                                           ; $5095: $00
    nop                                           ; $5096: $00
    nop                                           ; $5097: $00
    nop                                           ; $5098: $00
    nop                                           ; $5099: $00
    nop                                           ; $509A: $00
    nop                                           ; $509B: $00
    nop                                           ; $509C: $00
    nop                                           ; $509D: $00
    nop                                           ; $509E: $00
    nop                                           ; $509F: $00
    nop                                           ; $50A0: $00
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
    nop                                           ; $50AC: $00
    nop                                           ; $50AD: $00
    nop                                           ; $50AE: $00
    nop                                           ; $50AF: $00
    rlca                                          ; $50B0: $07
    nop                                           ; $50B1: $00
    ld [$0E07], sp                                ; $50B2: $08 $07 $0E
    ld bc, $0007                                  ; $50B5: $01 $07 $00
    rlca                                          ; $50B8: $07
    nop                                           ; $50B9: $00
    nop                                           ; $50BA: $00
    nop                                           ; $50BB: $00
    ld bc, $0100                                  ; $50BC: $01 $00 $01
    nop                                           ; $50BF: $00
    nop                                           ; $50C0: $00
    nop                                           ; $50C1: $00
    nop                                           ; $50C2: $00
    nop                                           ; $50C3: $00
    inc bc                                        ; $50C4: $03
    nop                                           ; $50C5: $00
    rlca                                          ; $50C6: $07
    inc bc                                        ; $50C7: $03
    rlca                                          ; $50C8: $07
    ld [bc], a                                    ; $50C9: $02
    ld b, $01                                     ; $50CA: $06 $01
    dec c                                         ; $50CC: $0D
    ld b, $08                                     ; $50CD: $06 $08
    rlca                                          ; $50CF: $07
    rlca                                          ; $50D0: $07
    nop                                           ; $50D1: $00
    rra                                           ; $50D2: $1F
    ld b, $FE                                     ; $50D3: $06 $FE
    dec e                                         ; $50D5: $1D
    rst RST_38                                    ; $50D6: $FF
    cp h                                          ; $50D7: $BC
    cp $FD                                        ; $50D8: $FE $FD
    cp $FD                                        ; $50DA: $FE $FD
    cp $FD                                        ; $50DC: $FE $FD
    rst RST_38                                    ; $50DE: $FF
    cp $FF                                        ; $50DF: $FE $FF
    ld hl, sp-$07                                 ; $50E1: $F8 $F9
    nop                                           ; $50E3: $00
    ld bc, $0100                                  ; $50E4: $01 $00 $01
    nop                                           ; $50E7: $00
    inc bc                                        ; $50E8: $03
    ld bc, $0307                                  ; $50E9: $01 $07 $03
    dec c                                         ; $50EC: $0D
    rlca                                          ; $50ED: $07
    add hl, bc                                    ; $50EE: $09
    rlca                                          ; $50EF: $07
    add hl, bc                                    ; $50F0: $09
    rlca                                          ; $50F1: $07
    dec b                                         ; $50F2: $05
    inc bc                                        ; $50F3: $03
    rlca                                          ; $50F4: $07
    inc bc                                        ; $50F5: $03
    inc bc                                        ; $50F6: $03
    ld bc, $0007                                  ; $50F7: $01 $07 $00
    ld a, [bc]                                    ; $50FA: $0A
    dec b                                         ; $50FB: $05
    rrca                                          ; $50FC: $0F
    nop                                           ; $50FD: $00
    nop                                           ; $50FE: $00
    nop                                           ; $50FF: $00
    add b                                         ; $5100: $80
    nop                                           ; $5101: $00
    ld h, b                                       ; $5102: $60
    add b                                         ; $5103: $80
    ld [hl], b                                    ; $5104: $70
    and b                                         ; $5105: $A0
    inc a                                         ; $5106: $3C
    ret nc                                        ; $5107: $D0

    sbc a                                         ; $5108: $9F
    ld l, h                                       ; $5109: $6C
    rra                                           ; $510A: $1F
    rst RST_28                                    ; $510B: $EF
    ccf                                           ; $510C: $3F
    rst RST_18                                    ; $510D: $DF
    rst RST_38                                    ; $510E: $FF
    rra                                           ; $510F: $1F
    ccf                                           ; $5110: $3F
    rra                                           ; $5111: $1F
    rra                                           ; $5112: $1F
    rlca                                          ; $5113: $07
    rlca                                          ; $5114: $07
    nop                                           ; $5115: $00
    nop                                           ; $5116: $00
    nop                                           ; $5117: $00
    nop                                           ; $5118: $00
    nop                                           ; $5119: $00
    nop                                           ; $511A: $00
    nop                                           ; $511B: $00
    nop                                           ; $511C: $00
    nop                                           ; $511D: $00
    nop                                           ; $511E: $00
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
    ld b, $00                                     ; $512C: $06 $00
    dec b                                         ; $512E: $05
    ld [bc], a                                    ; $512F: $02
    ld [bc], a                                    ; $5130: $02
    ld bc, $010E                                  ; $5131: $01 $0E $01
    rrca                                          ; $5134: $0F
    nop                                           ; $5135: $00
    inc bc                                        ; $5136: $03
    nop                                           ; $5137: $00
    nop                                           ; $5138: $00
    nop                                           ; $5139: $00
    ld bc, $0200                                  ; $513A: $01 $00 $02
    ld bc, $0003                                  ; $513D: $01 $03 $00
    ld bc, $0300                                  ; $5140: $01 $00 $03
    ld bc, $0103                                  ; $5143: $01 $03 $01
    rlca                                          ; $5146: $07
    inc bc                                        ; $5147: $03
    rlca                                          ; $5148: $07
    inc bc                                        ; $5149: $03
    rlca                                          ; $514A: $07
    inc bc                                        ; $514B: $03
    rlca                                          ; $514C: $07
    inc bc                                        ; $514D: $03
    rlca                                          ; $514E: $07
    inc bc                                        ; $514F: $03
    rlca                                          ; $5150: $07
    inc bc                                        ; $5151: $03
    rlca                                          ; $5152: $07
    inc bc                                        ; $5153: $03
    rrca                                          ; $5154: $0F
    dec b                                         ; $5155: $05
    rra                                           ; $5156: $1F
    rrca                                          ; $5157: $0F
    rra                                           ; $5158: $1F
    rrca                                          ; $5159: $0F
    rra                                           ; $515A: $1F
    rrca                                          ; $515B: $0F
    ccf                                           ; $515C: $3F
    inc e                                         ; $515D: $1C
    dec a                                         ; $515E: $3D
    ld a, [de]                                    ; $515F: $1A
    ld bc, $0700                                  ; $5160: $01 $00 $07
    ld bc, $070F                                  ; $5163: $01 $0F $07
    rrca                                          ; $5166: $0F
    rlca                                          ; $5167: $07
    rra                                           ; $5168: $1F
    ld c, $1F                                     ; $5169: $0E $1F
    ld c, $3F                                     ; $516B: $0E $3F
    rra                                           ; $516D: $1F
    rst RST_38                                    ; $516E: $FF
    ccf                                           ; $516F: $3F
    rst RST_38                                    ; $5170: $FF
    rst RST_38                                    ; $5171: $FF
    rst RST_38                                    ; $5172: $FF
    rst RST_38                                    ; $5173: $FF
    rst RST_38                                    ; $5174: $FF
    rst RST_38                                    ; $5175: $FF
    cp $FF                                        ; $5176: $FE $FF
    ld hl, sp-$39                                 ; $5178: $F8 $C7
    ld hl, sp-$09                                 ; $517A: $F8 $F7
    rst RST_38                                    ; $517C: $FF
    ld hl, sp-$31                                 ; $517D: $F8 $CF
    ei                                            ; $517F: $FB
    nop                                           ; $5180: $00
    nop                                           ; $5181: $00
    nop                                           ; $5182: $00
    nop                                           ; $5183: $00
    nop                                           ; $5184: $00
    nop                                           ; $5185: $00
    rrca                                          ; $5186: $0F
    nop                                           ; $5187: $00
    rra                                           ; $5188: $1F
    rrca                                          ; $5189: $0F
    ccf                                           ; $518A: $3F
    rra                                           ; $518B: $1F
    ld a, a                                       ; $518C: $7F
    ccf                                           ; $518D: $3F
    ld a, l                                       ; $518E: $7D
    ld a, $FD                                     ; $518F: $3E $FD
    ld a, [hl]                                    ; $5191: $7E
    cp $F7                                        ; $5192: $FE $F7
    rst RST_38                                    ; $5194: $FF
    jp Jump_013_7CFF                              ; $5195: $C3 $FF $7C


    rst RST_38                                    ; $5198: $FF
    rst RST_38                                    ; $5199: $FF
    rst RST_38                                    ; $519A: $FF
    rst RST_38                                    ; $519B: $FF
    rst RST_38                                    ; $519C: $FF
    rst RST_38                                    ; $519D: $FF
    rst RST_38                                    ; $519E: $FF
    rst RST_38                                    ; $519F: $FF
    ldh a, [rNR41]                                ; $51A0: $F0 $20
    or b                                          ; $51A2: $B0
    ld b, b                                       ; $51A3: $40
    call c, Call_000_0F30                         ; $51A4: $DC $30 $0F
    db $F4                                        ; $51A7: $F4
    ld a, a                                       ; $51A8: $7F
    add a                                         ; $51A9: $87
    adc a                                         ; $51AA: $8F
    ld [hl], a                                    ; $51AB: $77
    rst RST_38                                    ; $51AC: $FF
    ld l, a                                       ; $51AD: $6F
    rst RST_38                                    ; $51AE: $FF
    sbc a                                         ; $51AF: $9F
    rst RST_38                                    ; $51B0: $FF
    adc a                                         ; $51B1: $8F
    rst RST_38                                    ; $51B2: $FF
    ld [hl], b                                    ; $51B3: $70
    rst RST_38                                    ; $51B4: $FF
    cp $FF                                        ; $51B5: $FE $FF
    cp $FF                                        ; $51B7: $FE $FF
    cp $FE                                        ; $51B9: $FE $FE
    db $FD                                        ; $51BB: $FD
    db $FC                                        ; $51BC: $FC
    ei                                            ; $51BD: $FB
    rst RST_38                                    ; $51BE: $FF
    nop                                           ; $51BF: $00
    nop                                           ; $51C0: $00
    nop                                           ; $51C1: $00
    ret nz                                        ; $51C2: $C0

    nop                                           ; $51C3: $00
    ldh a, [$FFC0]                                ; $51C4: $F0 $C0
    db $FC                                        ; $51C6: $FC
    ldh a, [$FFF2]                                ; $51C7: $F0 $F2
    call z, $BEC1                                 ; $51C9: $CC $C1 $BE
    reti                                          ; $51CC: $D9


    and [hl]                                      ; $51CD: $A6
    push af                                       ; $51CE: $F5
    ld [bc], a                                    ; $51CF: $02
    dec d                                         ; $51D0: $15
    ldh [c], a                                    ; $51D1: $E2
    ld h, e                                       ; $51D2: $63
    add b                                         ; $51D3: $80
    jr nz, @-$3E                                  ; $51D4: $20 $C0

    ret nc                                        ; $51D6: $D0

    jr nz, jr_013_5249                            ; $51D7: $20 $70

    add b                                         ; $51D9: $80
    add b                                         ; $51DA: $80
    nop                                           ; $51DB: $00
    nop                                           ; $51DC: $00
    nop                                           ; $51DD: $00
    nop                                           ; $51DE: $00
    nop                                           ; $51DF: $00
    rst RST_08                                    ; $51E0: $CF
    ei                                            ; $51E1: $FB
    set 6, c                                      ; $51E2: $CB $F1
    db $DB                                        ; $51E4: $DB
    ldh a, [$FFFB]                                ; $51E5: $F0 $FB
    pop af                                        ; $51E7: $F1
    rst RST_30                                    ; $51E8: $F7
    db $E3                                        ; $51E9: $E3
    rst RST_20                                    ; $51EA: $E7
    jp Jump_000_03E7                              ; $51EB: $C3 $E7 $03


    ld d, e                                       ; $51EE: $53
    and b                                         ; $51EF: $A0
    ldh a, [rP1]                                  ; $51F0: $F0 $00
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
    ld a, a                                       ; $5202: $7F
    cp a                                          ; $5203: $BF
    ccf                                           ; $5204: $3F
    rst RST_18                                    ; $5205: $DF
    rra                                           ; $5206: $1F
    rst RST_20                                    ; $5207: $E7
    scf                                           ; $5208: $37
    jp $B07B                                      ; $5209: $C3 $7B $B0


    db $FC                                        ; $520C: $FC
    ld a, b                                       ; $520D: $78
    db $F4                                        ; $520E: $F4
    ld hl, sp-$0E                                 ; $520F: $F8 $F2
    db $FC                                        ; $5211: $FC
    ldh a, [c]                                    ; $5212: $F2
    db $FC                                        ; $5213: $FC
    db $F4                                        ; $5214: $F4
    ld hl, sp-$04                                 ; $5215: $F8 $FC
    ld a, b                                       ; $5217: $78
    ld hl, sp-$10                                 ; $5218: $F8 $F0
    db $FC                                        ; $521A: $FC
    ret nz                                        ; $521B: $C0

    jp z, $FEB4                                   ; $521C: $CA $B4 $FE

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
    nop                                           ; $5238: $00
    nop                                           ; $5239: $00
    add b                                         ; $523A: $80
    nop                                           ; $523B: $00
    ldh [$FF80], a                                ; $523C: $E0 $80
    ldh a, [$FFE0]                                ; $523E: $F0 $E0
    ccf                                           ; $5240: $3F
    nop                                           ; $5241: $00
    nop                                           ; $5242: $00
    nop                                           ; $5243: $00
    nop                                           ; $5244: $00
    nop                                           ; $5245: $00
    nop                                           ; $5246: $00
    nop                                           ; $5247: $00
    nop                                           ; $5248: $00

jr_013_5249:
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
    rlca                                          ; $5260: $07
    nop                                           ; $5261: $00
    rra                                           ; $5262: $1F
    rlca                                          ; $5263: $07
    daa                                           ; $5264: $27
    rra                                           ; $5265: $1F
    ld c, a                                       ; $5266: $4F
    ccf                                           ; $5267: $3F
    ld e, a                                       ; $5268: $5F
    ccf                                           ; $5269: $3F
    cp a                                          ; $526A: $BF
    ld a, [hl]                                    ; $526B: $7E
    cp a                                          ; $526C: $BF
    ld a, a                                       ; $526D: $7F
    cp a                                          ; $526E: $BF
    ld a, a                                       ; $526F: $7F
    ld a, a                                       ; $5270: $7F
    ccf                                           ; $5271: $3F
    ld e, a                                       ; $5272: $5F
    ccf                                           ; $5273: $3F
    ccf                                           ; $5274: $3F
    rra                                           ; $5275: $1F
    rra                                           ; $5276: $1F
    rlca                                          ; $5277: $07
    rlca                                          ; $5278: $07
    nop                                           ; $5279: $00
    nop                                           ; $527A: $00
    nop                                           ; $527B: $00
    nop                                           ; $527C: $00
    nop                                           ; $527D: $00
    nop                                           ; $527E: $00
    nop                                           ; $527F: $00
    ld bc, $0100                                  ; $5280: $01 $00 $01
    nop                                           ; $5283: $00
    rlca                                          ; $5284: $07
    ld bc, $071F                                  ; $5285: $01 $1F $07
    ccf                                           ; $5288: $3F
    rra                                           ; $5289: $1F
    ccf                                           ; $528A: $3F
    dec e                                         ; $528B: $1D
    ld a, a                                       ; $528C: $7F
    dec sp                                        ; $528D: $3B
    ld a, a                                       ; $528E: $7F
    dec sp                                        ; $528F: $3B
    rst RST_38                                    ; $5290: $FF
    ld a, a                                       ; $5291: $7F
    rst RST_38                                    ; $5292: $FF
    rst RST_38                                    ; $5293: $FF
    rst RST_38                                    ; $5294: $FF
    db $FD                                        ; $5295: $FD
    db $FD                                        ; $5296: $FD
    cp $F0                                        ; $5297: $FE $F0
    rst RST_38                                    ; $5299: $FF
    cp $81                                        ; $529A: $FE $81
    rst RST_38                                    ; $529C: $FF
    ld a, [hl]                                    ; $529D: $7E
    rst RST_38                                    ; $529E: $FF
    rst RST_38                                    ; $529F: $FF
    inc a                                         ; $52A0: $3C
    nop                                           ; $52A1: $00
    ld a, [hl]                                    ; $52A2: $7E
    inc a                                         ; $52A3: $3C
    rst RST_38                                    ; $52A4: $FF
    ld a, [hl]                                    ; $52A5: $7E
    rst RST_38                                    ; $52A6: $FF
    rst RST_38                                    ; $52A7: $FF
    rst RST_30                                    ; $52A8: $F7
    ld hl, sp-$0A                                 ; $52A9: $F8 $F6
    ld sp, hl                                     ; $52AB: $F9
    ei                                            ; $52AC: $FB
    call c, $0FFC                                 ; $52AD: $DC $FC $0F
    db $FD                                        ; $52B0: $FD
    ldh a, [c]                                    ; $52B1: $F2
    cp $FD                                        ; $52B2: $FE $FD
    rst RST_38                                    ; $52B4: $FF
    db $FD                                        ; $52B5: $FD
    rst RST_38                                    ; $52B6: $FF
    cp $FF                                        ; $52B7: $FE $FF
    cp $FF                                        ; $52B9: $FE $FF
    db $FD                                        ; $52BB: $FD
    rst RST_38                                    ; $52BC: $FF
    rst RST_38                                    ; $52BD: $FF
    rst RST_38                                    ; $52BE: $FF
    ld a, a                                       ; $52BF: $7F
    ld [hl], b                                    ; $52C0: $70
    ret nz                                        ; $52C1: $C0

    ccf                                           ; $52C2: $3F
    ret nc                                        ; $52C3: $D0

    rst RST_38                                    ; $52C4: $FF
    rra                                           ; $52C5: $1F
    ccf                                           ; $52C6: $3F
    rst RST_18                                    ; $52C7: $DF
    rst RST_38                                    ; $52C8: $FF
    cp a                                          ; $52C9: $BF
    rst RST_38                                    ; $52CA: $FF
    ld a, a                                       ; $52CB: $7F
    rst RST_38                                    ; $52CC: $FF
    ccf                                           ; $52CD: $3F
    rst RST_38                                    ; $52CE: $FF
    ret nz                                        ; $52CF: $C0

    db $FC                                        ; $52D0: $FC
    ei                                            ; $52D1: $FB
    db $FD                                        ; $52D2: $FD
    ld a, [$FBFC]                                 ; $52D3: $FA $FC $FB
    ld a, [$F3F5]                                 ; $52D6: $FA $F5 $F3
    db $EC                                        ; $52D9: $EC
    ld a, [$0A04]                                 ; $52DA: $FA $04 $0A
    inc b                                         ; $52DD: $04
    inc b                                         ; $52DE: $04
    nop                                           ; $52DF: $00
    rst RST_38                                    ; $52E0: $FF
    rst RST_38                                    ; $52E1: $FF
    rst RST_38                                    ; $52E2: $FF
    rst RST_38                                    ; $52E3: $FF
    rst RST_38                                    ; $52E4: $FF

jr_013_52E5:
    rst RST_30                                    ; $52E5: $F7
    rst RST_38                                    ; $52E6: $FF
    rst RST_28                                    ; $52E7: $EF
    rst RST_38                                    ; $52E8: $FF
    adc a                                         ; $52E9: $8F
    adc a                                         ; $52EA: $8F
    ld bc, $0001                                  ; $52EB: $01 $01 $00
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
    ld a, a                                       ; $5300: $7F
    sbc a                                         ; $5301: $9F
    sbc a                                         ; $5302: $9F
    ld l, c                                       ; $5303: $69
    ld sp, hl                                     ; $5304: $F9
    add a                                         ; $5305: $87
    rst RST_30                                    ; $5306: $F7
    add sp, -$06                                  ; $5307: $E8 $FA
    db $F4                                        ; $5309: $F4
    db $F4                                        ; $530A: $F4
    add sp, -$08                                  ; $530B: $E8 $F8
    ldh a, [$FFF8]                                ; $530D: $F0 $F8
    ldh a, [$FFF0]                                ; $530F: $F0 $F0
    ldh [$FFE0], a                                ; $5311: $E0 $E0
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
    nop                                           ; $532C: $00
    nop                                           ; $532D: $00
    nop                                           ; $532E: $00
    nop                                           ; $532F: $00
    nop                                           ; $5330: $00
    nop                                           ; $5331: $00
    nop                                           ; $5332: $00
    nop                                           ; $5333: $00
    nop                                           ; $5334: $00
    nop                                           ; $5335: $00
    nop                                           ; $5336: $00
    nop                                           ; $5337: $00
    add b                                         ; $5338: $80
    nop                                           ; $5339: $00
    ret nz                                        ; $533A: $C0

    add b                                         ; $533B: $80
    ret nz                                        ; $533C: $C0

    add b                                         ; $533D: $80
    ret nz                                        ; $533E: $C0

    nop                                           ; $533F: $00
    nop                                           ; $5340: $00
    nop                                           ; $5341: $00
    jr c, jr_013_5344                             ; $5342: $38 $00

jr_013_5344:
    ld c, b                                       ; $5344: $48
    jr nc, jr_013_52E5                            ; $5345: $30 $9E

    ld h, b                                       ; $5347: $60
    pop hl                                        ; $5348: $E1
    ld e, $FE                                     ; $5349: $1E $FE
    ret nz                                        ; $534B: $C0

    db $E4                                        ; $534C: $E4
    ret c                                         ; $534D: $D8

    ld a, [$D6C4]                                 ; $534E: $FA $C4 $D6
    and b                                         ; $5351: $A0
    add sp, $10                                   ; $5352: $E8 $10
    ld e, b                                       ; $5354: $58
    add b                                         ; $5355: $80
    add b                                         ; $5356: $80
    nop                                           ; $5357: $00
    add b                                         ; $5358: $80
    nop                                           ; $5359: $00
    ld b, b                                       ; $535A: $40
    add b                                         ; $535B: $80
    ld b, b                                       ; $535C: $40
    add b                                         ; $535D: $80
    add b                                         ; $535E: $80
    nop                                           ; $535F: $00
    inc bc                                        ; $5360: $03
    nop                                           ; $5361: $00
    rlca                                          ; $5362: $07
    inc bc                                        ; $5363: $03
    rlca                                          ; $5364: $07
    ld [bc], a                                    ; $5365: $02
    ld b, $01                                     ; $5366: $06 $01
    dec c                                         ; $5368: $0D
    ld b, $08                                     ; $5369: $06 $08
    rlca                                          ; $536B: $07
    rlca                                          ; $536C: $07
    nop                                           ; $536D: $00
    rrca                                          ; $536E: $0F
    rlca                                          ; $536F: $07
    rra                                           ; $5370: $1F
    rrca                                          ; $5371: $0F
    inc de                                        ; $5372: $13
    rrca                                          ; $5373: $0F
    ld de, $080F                                  ; $5374: $11 $0F $08
    rlca                                          ; $5377: $07
    rrca                                          ; $5378: $0F
    rlca                                          ; $5379: $07
    rlca                                          ; $537A: $07
    inc bc                                        ; $537B: $03
    rst RST_38                                    ; $537C: $FF
    nop                                           ; $537D: $00
    adc a                                         ; $537E: $8F
    ld [hl], a                                    ; $537F: $77
    ld a, b                                       ; $5380: $78
    nop                                           ; $5381: $00
    db $FC                                        ; $5382: $FC
    ld a, b                                       ; $5383: $78
    cp $FC                                        ; $5384: $FE $FC
    rst RST_38                                    ; $5386: $FF
    cp $DF                                        ; $5387: $FE $DF
    ld a, $9F                                     ; $5389: $3E $9F
    ld a, a                                       ; $538B: $7F
    ccf                                           ; $538C: $3F
    rst RST_18                                    ; $538D: $DF
    rst RST_38                                    ; $538E: $FF
    ccf                                           ; $538F: $3F
    rst RST_38                                    ; $5390: $FF
    rst RST_38                                    ; $5391: $FF
    rst RST_38                                    ; $5392: $FF
    cp $FF                                        ; $5393: $FE $FF
    rst RST_28                                    ; $5395: $EF
    rst RST_38                                    ; $5396: $FF
    rst RST_30                                    ; $5397: $F7
    rst RST_38                                    ; $5398: $FF
    ei                                            ; $5399: $FB
    rst RST_38                                    ; $539A: $FF
    ei                                            ; $539B: $FB
    rst RST_38                                    ; $539C: $FF
    db $FD                                        ; $539D: $FD
    rst RST_38                                    ; $539E: $FF
    sbc l                                         ; $539F: $9D
    add b                                         ; $53A0: $80
    nop                                           ; $53A1: $00
    ldh a, [$FF80]                                ; $53A2: $F0 $80
    db $FC                                        ; $53A4: $FC
    ld [hl], b                                    ; $53A5: $70
    cp $FC                                        ; $53A6: $FE $FC
    rst RST_38                                    ; $53A8: $FF
    cp $FF                                        ; $53A9: $FE $FF
    ld a, a                                       ; $53AB: $7F
    rst RST_38                                    ; $53AC: $FF
    ld a, a                                       ; $53AD: $7F
    rst RST_38                                    ; $53AE: $FF
    ld [hl], a                                    ; $53AF: $77
    rst RST_38                                    ; $53B0: $FF
    ld [hl], a                                    ; $53B1: $77
    rst RST_38                                    ; $53B2: $FF
    rst RST_28                                    ; $53B3: $EF
    rst RST_38                                    ; $53B4: $FF
    rst RST_28                                    ; $53B5: $EF
    rst RST_28                                    ; $53B6: $EF
    rst RST_00                                    ; $53B7: $C7
    rst RST_20                                    ; $53B8: $E7
    pop bc                                        ; $53B9: $C1
    pop af                                        ; $53BA: $F1
    ldh [$FFF0], a                                ; $53BB: $E0 $F0
    and b                                         ; $53BD: $A0
    ldh a, [$FFA0]                                ; $53BE: $F0 $A0
    inc bc                                        ; $53C0: $03
    nop                                           ; $53C1: $00
    inc e                                         ; $53C2: $1C
    inc bc                                        ; $53C3: $03
    daa                                           ; $53C4: $27
    jr jr_013_5406                                ; $53C5: $18 $3F

    rlca                                          ; $53C7: $07
    cp a                                          ; $53C8: $BF
    rra                                           ; $53C9: $1F
    rst RST_38                                    ; $53CA: $FF
    cp a                                          ; $53CB: $BF
    rst RST_38                                    ; $53CC: $FF
    cp a                                          ; $53CD: $BF
    rst RST_38                                    ; $53CE: $FF
    rst RST_18                                    ; $53CF: $DF
    rst RST_38                                    ; $53D0: $FF
    rst RST_38                                    ; $53D1: $FF
    rst RST_38                                    ; $53D2: $FF
    rst RST_38                                    ; $53D3: $FF
    rst RST_38                                    ; $53D4: $FF
    rst RST_38                                    ; $53D5: $FF
    rst RST_38                                    ; $53D6: $FF
    cp $FE                                        ; $53D7: $FE $FE
    ld a, h                                       ; $53D9: $7C
    ld a, h                                       ; $53DA: $7C
    jr nc, jr_013_540D                            ; $53DB: $30 $30

    nop                                           ; $53DD: $00
    nop                                           ; $53DE: $00
    nop                                           ; $53DF: $00
    nop                                           ; $53E0: $00
    nop                                           ; $53E1: $00
    nop                                           ; $53E2: $00
    nop                                           ; $53E3: $00
    nop                                           ; $53E4: $00
    nop                                           ; $53E5: $00
    nop                                           ; $53E6: $00
    nop                                           ; $53E7: $00
    nop                                           ; $53E8: $00
    nop                                           ; $53E9: $00
    add b                                         ; $53EA: $80
    nop                                           ; $53EB: $00
    ld b, b                                       ; $53EC: $40
    add b                                         ; $53ED: $80
    ld b, b                                       ; $53EE: $40
    add b                                         ; $53EF: $80
    and b                                         ; $53F0: $A0
    ld b, b                                       ; $53F1: $40
    ret nc                                        ; $53F2: $D0

    and b                                         ; $53F3: $A0
    ldh [$FFC0], a                                ; $53F4: $E0 $C0
    ldh [$FFC0], a                                ; $53F6: $E0 $C0
    ldh [$FFC0], a                                ; $53F8: $E0 $C0
    ret nz                                        ; $53FA: $C0

    add b                                         ; $53FB: $80
    ret nz                                        ; $53FC: $C0

    add b                                         ; $53FD: $80
    add b                                         ; $53FE: $80
    nop                                           ; $53FF: $00
    ld l, a                                       ; $5400: $6F
    rla                                           ; $5401: $17
    ld c, a                                       ; $5402: $4F
    scf                                           ; $5403: $37
    or a                                          ; $5404: $B7
    ld c, e                                       ; $5405: $4B

jr_013_5406:
    db $E3                                        ; $5406: $E3
    dec e                                         ; $5407: $1D
    rra                                           ; $5408: $1F
    nop                                           ; $5409: $00
    rra                                           ; $540A: $1F
    rrca                                          ; $540B: $0F
    cpl                                           ; $540C: $2F

jr_013_540D:
    rra                                           ; $540D: $1F
    daa                                           ; $540E: $27
    ld e, $17                                     ; $540F: $1E $17
    rrca                                          ; $5411: $0F
    rra                                           ; $5412: $1F
    rrca                                          ; $5413: $0F
    rrca                                          ; $5414: $0F
    rlca                                          ; $5415: $07
    rra                                           ; $5416: $1F
    inc bc                                        ; $5417: $03
    dec hl                                        ; $5418: $2B
    dec d                                         ; $5419: $15
    ccf                                           ; $541A: $3F
    nop                                           ; $541B: $00
    nop                                           ; $541C: $00
    nop                                           ; $541D: $00
    nop                                           ; $541E: $00
    nop                                           ; $541F: $00
    rst RST_38                                    ; $5420: $FF
    ld a, [hl]                                    ; $5421: $7E
    rst RST_38                                    ; $5422: $FF
    cp $FF                                        ; $5423: $FE $FF
    cp $FF                                        ; $5425: $FE $FF
    cp $FF                                        ; $5427: $FE $FF
    db $FD                                        ; $5429: $FD
    rst RST_38                                    ; $542A: $FF
    di                                            ; $542B: $F3
    rst RST_38                                    ; $542C: $FF
    rrca                                          ; $542D: $0F
    rst RST_38                                    ; $542E: $FF
    ld hl, sp-$05                                 ; $542F: $F8 $FB
    add c                                         ; $5431: $81
    pop hl                                        ; $5432: $E1
    ld b, b                                       ; $5433: $40
    ldh [$FFC0], a                                ; $5434: $E0 $C0
    ldh a, [$FFE0]                                ; $5436: $F0 $E0
    ldh a, [$FFE0]                                ; $5438: $F0 $E0
    ldh a, [$FFE0]                                ; $543A: $F0 $E0
    ldh a, [$FFE0]                                ; $543C: $F0 $E0
    ldh [rP1], a                                  ; $543E: $E0 $00
    ld hl, sp-$70                                 ; $5440: $F8 $90
    db $FC                                        ; $5442: $FC
    jr c, @-$02                                   ; $5443: $38 $FC

    ld hl, sp-$02                                 ; $5445: $F8 $FE
    ldh a, [rIE]                                  ; $5447: $F0 $FF
    xor $FF                                       ; $5449: $EE $FF
    ld a, a                                       ; $544B: $7F
    rst RST_38                                    ; $544C: $FF
    ld a, a                                       ; $544D: $7F
    ld a, a                                       ; $544E: $7F
    ccf                                           ; $544F: $3F
    ccf                                           ; $5450: $3F
    rrca                                          ; $5451: $0F
    ld e, a                                       ; $5452: $5F
    cpl                                           ; $5453: $2F
    ld a, a                                       ; $5454: $7F
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
    add b                                         ; $5460: $80
    nop                                           ; $5461: $00
    add b                                         ; $5462: $80
    nop                                           ; $5463: $00
    ret nz                                        ; $5464: $C0

    add b                                         ; $5465: $80
    ret nz                                        ; $5466: $C0

    add b                                         ; $5467: $80
    ret nz                                        ; $5468: $C0

    add b                                         ; $5469: $80
    add b                                         ; $546A: $80
    nop                                           ; $546B: $00
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
    nop                                           ; $5480: $00
    nop                                           ; $5481: $00
    nop                                           ; $5482: $00
    nop                                           ; $5483: $00
    nop                                           ; $5484: $00
    nop                                           ; $5485: $00
    nop                                           ; $5486: $00
    nop                                           ; $5487: $00
    inc bc                                        ; $5488: $03
    nop                                           ; $5489: $00
    rlca                                          ; $548A: $07
    inc bc                                        ; $548B: $03
    rra                                           ; $548C: $1F
    rlca                                          ; $548D: $07
    ccf                                           ; $548E: $3F
    rra                                           ; $548F: $1F
    ld a, $11                                     ; $5490: $3E $11
    ld [hl], $09                                  ; $5492: $36 $09
    ld l, l                                       ; $5494: $6D
    inc sp                                        ; $5495: $33
    ld b, c                                       ; $5496: $41
    ccf                                           ; $5497: $3F
    ld [hl], e                                    ; $5498: $73
    rrca                                          ; $5499: $0F
    adc e                                         ; $549A: $8B
    ld [hl], a                                    ; $549B: $77
    rst RST_38                                    ; $549C: $FF
    ld a, $3E                                     ; $549D: $3E $3E
    nop                                           ; $549F: $00
    nop                                           ; $54A0: $00
    nop                                           ; $54A1: $00
    nop                                           ; $54A2: $00
    nop                                           ; $54A3: $00
    inc b                                         ; $54A4: $04
    nop                                           ; $54A5: $00
    dec bc                                        ; $54A6: $0B
    inc b                                         ; $54A7: $04
    scf                                           ; $54A8: $37
    dec bc                                        ; $54A9: $0B
    ld c, a                                       ; $54AA: $4F
    scf                                           ; $54AB: $37
    ld e, a                                       ; $54AC: $5F
    cpl                                           ; $54AD: $2F
    ld e, a                                       ; $54AE: $5F
    cpl                                           ; $54AF: $2F
    ccf                                           ; $54B0: $3F
    rrca                                          ; $54B1: $0F
    cpl                                           ; $54B2: $2F
    rla                                           ; $54B3: $17
    cpl                                           ; $54B4: $2F
    rla                                           ; $54B5: $17
    rra                                           ; $54B6: $1F
    inc bc                                        ; $54B7: $03
    inc bc                                        ; $54B8: $03
    nop                                           ; $54B9: $00
    ccf                                           ; $54BA: $3F
    inc bc                                        ; $54BB: $03
    ld a, a                                       ; $54BC: $7F
    dec a                                         ; $54BD: $3D
    rst RST_38                                    ; $54BE: $FF
    ld a, a                                       ; $54BF: $7F
    nop                                           ; $54C0: $00
    nop                                           ; $54C1: $00
    nop                                           ; $54C2: $00
    nop                                           ; $54C3: $00
    nop                                           ; $54C4: $00
    nop                                           ; $54C5: $00
    add b                                         ; $54C6: $80
    nop                                           ; $54C7: $00
    ldh [$FF80], a                                ; $54C8: $E0 $80
    ldh a, [$FFE0]                                ; $54CA: $F0 $E0
    ld hl, sp-$10                                 ; $54CC: $F8 $F0
    db $FC                                        ; $54CE: $FC
    ld hl, sp-$02                                 ; $54CF: $F8 $FE
    db $FC                                        ; $54D1: $FC
    cp $FC                                        ; $54D2: $FE $FC
    rst RST_38                                    ; $54D4: $FF
    cp $FF                                        ; $54D5: $FE $FF
    ld a, [hl]                                    ; $54D7: $7E
    cp $FC                                        ; $54D8: $FE $FC
    db $FC                                        ; $54DA: $FC
    ld hl, sp-$04                                 ; $54DB: $F8 $FC
    ld hl, sp-$08                                 ; $54DD: $F8 $F8
    ldh a, [$FF3F]                                ; $54DF: $F0 $3F
    rra                                           ; $54E1: $1F
    rst RST_38                                    ; $54E2: $FF
    ccf                                           ; $54E3: $3F
    rst RST_38                                    ; $54E4: $FF
    rst RST_18                                    ; $54E5: $DF
    rst RST_38                                    ; $54E6: $FF
    rst RST_28                                    ; $54E7: $EF
    rst RST_38                                    ; $54E8: $FF
    ei                                            ; $54E9: $FB
    rst RST_38                                    ; $54EA: $FF
    rst RST_38                                    ; $54EB: $FF
    rst RST_38                                    ; $54EC: $FF
    rst RST_38                                    ; $54ED: $FF
    rst RST_38                                    ; $54EE: $FF
    cp a                                          ; $54EF: $BF
    rst RST_38                                    ; $54F0: $FF
    cp a                                          ; $54F1: $BF
    rst RST_38                                    ; $54F2: $FF
    cp [hl]                                       ; $54F3: $BE
    rst RST_38                                    ; $54F4: $FF
    ld l, a                                       ; $54F5: $6F
    rst RST_38                                    ; $54F6: $FF
    rst RST_18                                    ; $54F7: $DF
    rst RST_38                                    ; $54F8: $FF
    ld e, a                                       ; $54F9: $5F
    ld l, a                                       ; $54FA: $6F
    rra                                           ; $54FB: $1F
    cpl                                           ; $54FC: $2F
    rra                                           ; $54FD: $1F
    inc de                                        ; $54FE: $13
    rrca                                          ; $54FF: $0F
    cp $FC                                        ; $5500: $FE $FC
    db $FC                                        ; $5502: $FC
    ret c                                         ; $5503: $D8

    ld hl, sp-$20                                 ; $5504: $F8 $E0
    ldh a, [$FFE0]                                ; $5506: $F0 $E0
    ld hl, sp-$10                                 ; $5508: $F8 $F0
    db $FC                                        ; $550A: $FC
    jr c, @+$01                                   ; $550B: $38 $FF

    call z, $F3FF                                 ; $550D: $CC $FF $F3
    rst RST_38                                    ; $5510: $FF
    adc a                                         ; $5511: $8F
    rst RST_38                                    ; $5512: $FF
    ld a, a                                       ; $5513: $7F
    rst RST_38                                    ; $5514: $FF
    rst RST_38                                    ; $5515: $FF
    rst RST_38                                    ; $5516: $FF
    rst RST_38                                    ; $5517: $FF
    rst RST_38                                    ; $5518: $FF
    ei                                            ; $5519: $FB
    rst RST_38                                    ; $551A: $FF
    ei                                            ; $551B: $FB
    rst RST_38                                    ; $551C: $FF
    ei                                            ; $551D: $FB
    rst RST_18                                    ; $551E: $DF
    rst RST_30                                    ; $551F: $F7
    nop                                           ; $5520: $00
    nop                                           ; $5521: $00
    nop                                           ; $5522: $00
    nop                                           ; $5523: $00
    nop                                           ; $5524: $00
    nop                                           ; $5525: $00
    nop                                           ; $5526: $00
    nop                                           ; $5527: $00
    nop                                           ; $5528: $00
    nop                                           ; $5529: $00
    nop                                           ; $552A: $00
    nop                                           ; $552B: $00
    add b                                         ; $552C: $80
    nop                                           ; $552D: $00
    ret nz                                        ; $552E: $C0

    add b                                         ; $552F: $80
    ldh [$FFC0], a                                ; $5530: $E0 $C0
    ldh [$FFC0], a                                ; $5532: $E0 $C0
    ldh a, [$FFE0]                                ; $5534: $F0 $E0
    ld hl, sp-$20                                 ; $5536: $F8 $E0
    db $FC                                        ; $5538: $FC
    add sp, -$04                                  ; $5539: $E8 $FC
    add sp, -$02                                  ; $553B: $E8 $FE
    db $EC                                        ; $553D: $EC
    rst RST_38                                    ; $553E: $FF
    ret z                                         ; $553F: $C8

    ld b, e                                       ; $5540: $43
    inc a                                         ; $5541: $3C
    ld a, a                                       ; $5542: $7F
    inc bc                                        ; $5543: $03
    cp a                                          ; $5544: $BF
    ld a, a                                       ; $5545: $7F
    sbc a                                         ; $5546: $9F
    ld a, [hl]                                    ; $5547: $7E
    sbc a                                         ; $5548: $9F
    ld a, c                                       ; $5549: $79
    ld e, a                                       ; $554A: $5F
    ccf                                           ; $554B: $3F
    ld a, a                                       ; $554C: $7F
    ccf                                           ; $554D: $3F
    ld a, a                                       ; $554E: $7F
    rrca                                          ; $554F: $0F
    xor a                                         ; $5550: $AF
    ld d, a                                       ; $5551: $57
    rst RST_38                                    ; $5552: $FF
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
    cp $1D                                        ; $5560: $FE $1D
    sbc h                                         ; $5562: $9C
    ld h, e                                       ; $5563: $63
    pop hl                                        ; $5564: $E1
    sbc [hl]                                      ; $5565: $9E
    xor c                                         ; $5566: $A9
    ld d, $9E                                     ; $5567: $16 $9E
    nop                                           ; $5569: $00
    ret nz                                        ; $556A: $C0

    add b                                         ; $556B: $80
    ret nz                                        ; $556C: $C0

    add b                                         ; $556D: $80
    ret nz                                        ; $556E: $C0

    add b                                         ; $556F: $80
    ret nz                                        ; $5570: $C0

    add b                                         ; $5571: $80
    add b                                         ; $5572: $80
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
    db $FC                                        ; $5580: $FC
    ld a, b                                       ; $5581: $78
    cp $7C                                        ; $5582: $FE $7C
    cp $E0                                        ; $5584: $FE $E0
    rst RST_38                                    ; $5586: $FF
    ret nz                                        ; $5587: $C0

    rst RST_38                                    ; $5588: $FF
    nop                                           ; $5589: $00
    ld a, a                                       ; $558A: $7F
    nop                                           ; $558B: $00
    dec a                                         ; $558C: $3D
    ld [bc], a                                    ; $558D: $02
    ld [de], a                                    ; $558E: $12
    inc c                                         ; $558F: $0C
    ld a, [bc]                                    ; $5590: $0A
    inc b                                         ; $5591: $04
    inc b                                         ; $5592: $04
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
    ld sp, hl                                     ; $55A0: $F9
    ld a, [hl]                                    ; $55A1: $7E
    jr nz, @-$1F                                  ; $55A2: $20 $DF

    jr nz, @-$1F                                  ; $55A4: $20 $DF

    ld de, $EFEE                                  ; $55A6: $11 $EE $EF
    ld bc, $0F13                                  ; $55A9: $01 $13 $0F
    rla                                           ; $55AC: $17
    rrca                                          ; $55AD: $0F
    daa                                           ; $55AE: $27
    rra                                           ; $55AF: $1F
    daa                                           ; $55B0: $27
    rra                                           ; $55B1: $1F
    daa                                           ; $55B2: $27
    rra                                           ; $55B3: $1F
    rla                                           ; $55B4: $17
    rrca                                          ; $55B5: $0F
    rra                                           ; $55B6: $1F
    rrca                                          ; $55B7: $0F
    rrca                                          ; $55B8: $0F
    rlca                                          ; $55B9: $07
    rra                                           ; $55BA: $1F
    inc bc                                        ; $55BB: $03
    dec hl                                        ; $55BC: $2B
    dec d                                         ; $55BD: $15
    ccf                                           ; $55BE: $3F
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
    ldh [rP1], a                                  ; $55CE: $E0 $00
    ld hl, sp-$40                                 ; $55D0: $F8 $C0
    rst RST_38                                    ; $55D2: $FF
    ld hl, sp-$01                                 ; $55D3: $F8 $FF
    cp $FF                                        ; $55D5: $FE $FF
    db $FD                                        ; $55D7: $FD
    rst RST_38                                    ; $55D8: $FF
    db $FD                                        ; $55D9: $FD
    rst RST_38                                    ; $55DA: $FF
    cp a                                          ; $55DB: $BF
    cp $9F                                        ; $55DC: $FE $9F
    cp $7D                                        ; $55DE: $FE $7D
    nop                                           ; $55E0: $00
    nop                                           ; $55E1: $00
    nop                                           ; $55E2: $00
    nop                                           ; $55E3: $00
    nop                                           ; $55E4: $00
    nop                                           ; $55E5: $00
    inc bc                                        ; $55E6: $03
    nop                                           ; $55E7: $00
    ccf                                           ; $55E8: $3F
    inc bc                                        ; $55E9: $03
    rst RST_38                                    ; $55EA: $FF
    daa                                           ; $55EB: $27
    rst RST_38                                    ; $55EC: $FF
    rst RST_18                                    ; $55ED: $DF
    cp $D1                                        ; $55EE: $FE $D1
    or $C9                                        ; $55F0: $F6 $C9
    ld sp, hl                                     ; $55F2: $F9
    and a                                         ; $55F3: $A7
    pop bc                                        ; $55F4: $C1
    cp a                                          ; $55F5: $BF
    rst RST_38                                    ; $55F6: $FF
    jp $BFC3                                      ; $55F7: $C3 $C3 $BF


    rst RST_38                                    ; $55FA: $FF
    ld a, $3E                                     ; $55FB: $3E $3E
    ld bc, $0001                                  ; $55FD: $01 $01 $00
    nop                                           ; $5600: $00
    nop                                           ; $5601: $00
    nop                                           ; $5602: $00
    nop                                           ; $5603: $00
    ld bc, $FF00                                  ; $5604: $01 $00 $FF
    ld bc, $FBFF                                  ; $5607: $01 $FF $FB
    rst RST_38                                    ; $560A: $FF
    rst RST_38                                    ; $560B: $FF
    rst RST_38                                    ; $560C: $FF
    rst RST_38                                    ; $560D: $FF
    rst RST_38                                    ; $560E: $FF
    rst RST_38                                    ; $560F: $FF
    rst RST_38                                    ; $5610: $FF
    rst RST_38                                    ; $5611: $FF
    rst RST_38                                    ; $5612: $FF
    rst RST_38                                    ; $5613: $FF
    rst RST_38                                    ; $5614: $FF
    ldh a, [$FFF0]                                ; $5615: $F0 $F0
    nop                                           ; $5617: $00
    add b                                         ; $5618: $80
    nop                                           ; $5619: $00
    add b                                         ; $561A: $80
    nop                                           ; $561B: $00
    add b                                         ; $561C: $80
    nop                                           ; $561D: $00
    add b                                         ; $561E: $80
    nop                                           ; $561F: $00
    nop                                           ; $5620: $00
    nop                                           ; $5621: $00
    nop                                           ; $5622: $00
    nop                                           ; $5623: $00
    nop                                           ; $5624: $00
    nop                                           ; $5625: $00
    nop                                           ; $5626: $00
    nop                                           ; $5627: $00
    rlca                                          ; $5628: $07
    nop                                           ; $5629: $00
    rra                                           ; $562A: $1F
    rlca                                          ; $562B: $07
    ccf                                           ; $562C: $3F
    rra                                           ; $562D: $1F
    ld a, a                                       ; $562E: $7F
    rra                                           ; $562F: $1F
    ld a, a                                       ; $5630: $7F
    rra                                           ; $5631: $1F
    ld a, a                                       ; $5632: $7F
    rra                                           ; $5633: $1F
    ld e, a                                       ; $5634: $5F
    cpl                                           ; $5635: $2F
    ld e, a                                       ; $5636: $5F
    ld l, $4E                                     ; $5637: $2E $4E
    ld sp, $1B24                                  ; $5639: $31 $24 $1B
    ld e, $01                                     ; $563C: $1E $01
    ld bc, $0300                                  ; $563E: $01 $00 $03
    nop                                           ; $5641: $00
    rrca                                          ; $5642: $0F
    inc bc                                        ; $5643: $03
    ld a, a                                       ; $5644: $7F
    rrca                                          ; $5645: $0F
    rst RST_38                                    ; $5646: $FF
    ld a, a                                       ; $5647: $7F
    rst RST_38                                    ; $5648: $FF
    rst RST_38                                    ; $5649: $FF
    rst RST_38                                    ; $564A: $FF
    rst RST_38                                    ; $564B: $FF
    rst RST_38                                    ; $564C: $FF
    rst RST_38                                    ; $564D: $FF
    rst RST_38                                    ; $564E: $FF
    rst RST_38                                    ; $564F: $FF
    ei                                            ; $5650: $FB
    cp $03                                        ; $5651: $FE $03
    db $FC                                        ; $5653: $FC
    inc c                                         ; $5654: $0C
    di                                            ; $5655: $F3
    rst RST_38                                    ; $5656: $FF
    ld [$BC7F], sp                                ; $5657: $08 $7F $BC
    rst RST_38                                    ; $565A: $FF
    dec e                                         ; $565B: $1D
    rst RST_38                                    ; $565C: $FF
    db $FD                                        ; $565D: $FD
    rst RST_38                                    ; $565E: $FF
    ei                                            ; $565F: $FB
    rst RST_38                                    ; $5660: $FF
    ei                                            ; $5661: $FB
    ei                                            ; $5662: $FB
    pop af                                        ; $5663: $F1
    pop af                                        ; $5664: $F1
    ret nz                                        ; $5665: $C0

    ldh [$FF80], a                                ; $5666: $E0 $80
    ldh a, [$FF60]                                ; $5668: $F0 $60
    ldh a, [$FFE0]                                ; $566A: $F0 $E0
    ldh a, [$FFE0]                                ; $566C: $F0 $E0
    ldh a, [$FFE0]                                ; $566E: $F0 $E0
    ldh [$FFC0], a                                ; $5670: $E0 $C0
    ret nz                                        ; $5672: $C0

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
    nop                                           ; $567E: $00
    nop                                           ; $567F: $00
    db $FC                                        ; $5680: $FC
    ld a, b                                       ; $5681: $78
    db $FC                                        ; $5682: $FC
    ld a, b                                       ; $5683: $78
    db $FC                                        ; $5684: $FC
    ld a, b                                       ; $5685: $78
    db $FC                                        ; $5686: $FC
    ld a, b                                       ; $5687: $78
    db $FC                                        ; $5688: $FC
    ld hl, sp-$04                                 ; $5689: $F8 $FC
    ldh a, [$FFF4]                                ; $568B: $F0 $F4
    ld [$F804], sp                                ; $568D: $08 $04 $F8
    ld c, a                                       ; $5690: $4F
    or b                                          ; $5691: $B0
    rst RST_38                                    ; $5692: $FF
    rlca                                          ; $5693: $07
    rst RST_38                                    ; $5694: $FF
    rst RST_30                                    ; $5695: $F7
    rst RST_38                                    ; $5696: $FF
    rst RST_28                                    ; $5697: $EF
    rst RST_38                                    ; $5698: $FF
    rst RST_38                                    ; $5699: $FF
    rst RST_38                                    ; $569A: $FF
    rst RST_38                                    ; $569B: $FF
    rst RST_38                                    ; $569C: $FF
    ld a, h                                       ; $569D: $7C
    ld a, h                                       ; $569E: $7C
    nop                                           ; $569F: $00
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
    nop                                           ; $56B2: $00
    nop                                           ; $56B3: $00
    nop                                           ; $56B4: $00
    nop                                           ; $56B5: $00
    ldh [rP1], a                                  ; $56B6: $E0 $00
    ldh a, [$FFE0]                                ; $56B8: $F0 $E0
    ld hl, sp-$10                                 ; $56BA: $F8 $F0
    ld hl, sp-$10                                 ; $56BC: $F8 $F0
    db $FC                                        ; $56BE: $FC
    ld hl, sp-$80                                 ; $56BF: $F8 $80
    nop                                           ; $56C1: $00
    ret nz                                        ; $56C2: $C0

    add b                                         ; $56C3: $80
    ldh [$FFC0], a                                ; $56C4: $E0 $C0
    ldh [$FF80], a                                ; $56C6: $E0 $80
    and b                                         ; $56C8: $A0
    ld b, b                                       ; $56C9: $40
    and b                                         ; $56CA: $A0
    ld b, b                                       ; $56CB: $40
    sub b                                         ; $56CC: $90
    ld h, b                                       ; $56CD: $60
    ld [hl], b                                    ; $56CE: $70
    nop                                           ; $56CF: $00
    nop                                           ; $56D0: $00
    nop                                           ; $56D1: $00
    nop                                           ; $56D2: $00
    nop                                           ; $56D3: $00
    nop                                           ; $56D4: $00
    nop                                           ; $56D5: $00
    nop                                           ; $56D6: $00
    nop                                           ; $56D7: $00
    nop                                           ; $56D8: $00
    nop                                           ; $56D9: $00
    nop                                           ; $56DA: $00
    nop                                           ; $56DB: $00
    nop                                           ; $56DC: $00
    nop                                           ; $56DD: $00
    nop                                           ; $56DE: $00
    nop                                           ; $56DF: $00
    rrca                                          ; $56E0: $0F
    cp $EF                                        ; $56E1: $FE $EF
    inc e                                         ; $56E3: $1C
    rrca                                          ; $56E4: $0F
    ei                                            ; $56E5: $FB
    rst RST_38                                    ; $56E6: $FF
    ld [hl], a                                    ; $56E7: $77
    rst RST_38                                    ; $56E8: $FF
    add a                                         ; $56E9: $87
    rst RST_38                                    ; $56EA: $FF
    rst RST_30                                    ; $56EB: $F7
    rst RST_38                                    ; $56EC: $FF
    rst RST_30                                    ; $56ED: $F7
    rst RST_38                                    ; $56EE: $FF
    rst RST_30                                    ; $56EF: $F7
    rst RST_30                                    ; $56F0: $F7
    jp Jump_000_03C7                              ; $56F1: $C3 $C7 $03


    inc bc                                        ; $56F4: $03
    ld bc, $0003                                  ; $56F5: $01 $03 $00
    ld bc, $0100                                  ; $56F8: $01 $00 $01
    nop                                           ; $56FB: $00
    ld bc, $0100                                  ; $56FC: $01 $00 $01
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
    rrca                                          ; $5712: $0F
    nop                                           ; $5713: $00
    rra                                           ; $5714: $1F
    rrca                                          ; $5715: $0F
    ld a, a                                       ; $5716: $7F
    rra                                           ; $5717: $1F
    rst RST_38                                    ; $5718: $FF
    ld a, a                                       ; $5719: $7F
    ei                                            ; $571A: $FB
    ld b, a                                       ; $571B: $47
    db $DB                                        ; $571C: $DB
    daa                                           ; $571D: $27
    or a                                          ; $571E: $B7
    adc $00                                       ; $571F: $CE $00
    nop                                           ; $5721: $00
    nop                                           ; $5722: $00
    nop                                           ; $5723: $00
    nop                                           ; $5724: $00
    nop                                           ; $5725: $00
    ld bc, $0100                                  ; $5726: $01 $00 $01
    nop                                           ; $5729: $00
    ld bc, $0300                                  ; $572A: $01 $00 $03
    nop                                           ; $572D: $00
    rst RST_38                                    ; $572E: $FF
    inc bc                                        ; $572F: $03
    rst RST_38                                    ; $5730: $FF
    ei                                            ; $5731: $FB
    rst RST_38                                    ; $5732: $FF
    rst RST_38                                    ; $5733: $FF
    rst RST_38                                    ; $5734: $FF
    rst RST_38                                    ; $5735: $FF
    rst RST_38                                    ; $5736: $FF
    ld a, a                                       ; $5737: $7F
    rst RST_38                                    ; $5738: $FF
    ld a, a                                       ; $5739: $7F
    ld a, a                                       ; $573A: $7F
    adc a                                         ; $573B: $8F
    ld c, a                                       ; $573C: $4F
    add b                                         ; $573D: $80
    ret nz                                        ; $573E: $C0

    nop                                           ; $573F: $00
    inc bc                                        ; $5740: $03
    nop                                           ; $5741: $00
    rlca                                          ; $5742: $07
    inc bc                                        ; $5743: $03
    dec bc                                        ; $5744: $0B
    inc b                                         ; $5745: $04
    ld [$1007], sp                                ; $5746: $08 $07 $10
    rrca                                          ; $5749: $0F
    inc de                                        ; $574A: $13
    inc c                                         ; $574B: $0C
    dec d                                         ; $574C: $15
    ld [$0814], sp                                ; $574D: $08 $14 $08
    inc c                                         ; $5750: $0C
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
    add b                                         ; $5760: $80
    nop                                           ; $5761: $00
    ret nz                                        ; $5762: $C0

    add b                                         ; $5763: $80
    ldh [$FFC0], a                                ; $5764: $E0 $C0
    ldh a, [$FFE0]                                ; $5766: $F0 $E0
    ldh a, [$FFE0]                                ; $5768: $F0 $E0
    ld hl, sp-$10                                 ; $576A: $F8 $F0
    cp $F8                                        ; $576C: $FE $F8
    rst RST_38                                    ; $576E: $FF
    cp $FF                                        ; $576F: $FE $FF
    rst RST_38                                    ; $5771: $FF
    rst RST_38                                    ; $5772: $FF
    rst RST_38                                    ; $5773: $FF
    rst RST_38                                    ; $5774: $FF
    rst RST_28                                    ; $5775: $EF
    rst RST_38                                    ; $5776: $FF
    rst RST_30                                    ; $5777: $F7
    rst RST_38                                    ; $5778: $FF
    rst RST_30                                    ; $5779: $F7
    rst RST_38                                    ; $577A: $FF
    rst RST_30                                    ; $577B: $F7
    rst RST_38                                    ; $577C: $FF
    ei                                            ; $577D: $FB
    rst RST_38                                    ; $577E: $FF
    ei                                            ; $577F: $FB
    rst RST_38                                    ; $5780: $FF
    ei                                            ; $5781: $FB
    rst RST_38                                    ; $5782: $FF
    ld a, d                                       ; $5783: $7A
    rst RST_38                                    ; $5784: $FF
    ld sp, hl                                     ; $5785: $F9
    rst RST_38                                    ; $5786: $FF
    db $FD                                        ; $5787: $FD
    rst RST_38                                    ; $5788: $FF
    db $FD                                        ; $5789: $FD
    rst RST_38                                    ; $578A: $FF
    db $FD                                        ; $578B: $FD
    rst RST_38                                    ; $578C: $FF
    ld a, b                                       ; $578D: $78
    ld sp, hl                                     ; $578E: $F9
    ld h, [hl]                                    ; $578F: $66
    db $ED                                        ; $5790: $ED
    ld [de], a                                    ; $5791: $12
    add c                                         ; $5792: $81
    ld a, [hl]                                    ; $5793: $7E
    ld a, a                                       ; $5794: $7F
    nop                                           ; $5795: $00
    nop                                           ; $5796: $00
    nop                                           ; $5797: $00
    nop                                           ; $5798: $00
    nop                                           ; $5799: $00
    nop                                           ; $579A: $00
    nop                                           ; $579B: $00
    nop                                           ; $579C: $00
    nop                                           ; $579D: $00
    nop                                           ; $579E: $00
    nop                                           ; $579F: $00
    add b                                         ; $57A0: $80
    nop                                           ; $57A1: $00
    add b                                         ; $57A2: $80
    nop                                           ; $57A3: $00
    ret nz                                        ; $57A4: $C0

    add b                                         ; $57A5: $80
    ldh a, [$FFC0]                                ; $57A6: $F0 $C0
    db $FC                                        ; $57A8: $FC
    ldh a, [rIE]                                  ; $57A9: $F0 $FF
    db $FC                                        ; $57AB: $FC
    rst RST_38                                    ; $57AC: $FF
    rst RST_38                                    ; $57AD: $FF
    rst RST_38                                    ; $57AE: $FF
    rst RST_38                                    ; $57AF: $FF
    rst RST_38                                    ; $57B0: $FF
    rra                                           ; $57B1: $1F
    rst RST_38                                    ; $57B2: $FF
    rst RST_38                                    ; $57B3: $FF
    rst RST_38                                    ; $57B4: $FF
    rst RST_38                                    ; $57B5: $FF
    rst RST_38                                    ; $57B6: $FF
    ld sp, hl                                     ; $57B7: $F9
    rst RST_38                                    ; $57B8: $FF
    cp $FF                                        ; $57B9: $FE $FF
    rst RST_38                                    ; $57BB: $FF
    rst RST_38                                    ; $57BC: $FF
    rst RST_38                                    ; $57BD: $FF
    rst RST_38                                    ; $57BE: $FF
    ccf                                           ; $57BF: $3F
    rst RST_38                                    ; $57C0: $FF
    adc a                                         ; $57C1: $8F
    xor a                                         ; $57C2: $AF
    ld d, [hl]                                    ; $57C3: $56
    cp $00                                        ; $57C4: $FE $00
    nop                                           ; $57C6: $00
    nop                                           ; $57C7: $00
    nop                                           ; $57C8: $00
    nop                                           ; $57C9: $00
    nop                                           ; $57CA: $00
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
    add b                                         ; $57E0: $80
    nop                                           ; $57E1: $00
    add b                                         ; $57E2: $80
    nop                                           ; $57E3: $00
    ret nz                                        ; $57E4: $C0

    add b                                         ; $57E5: $80
    ret nz                                        ; $57E6: $C0

    add b                                         ; $57E7: $80
    ret nz                                        ; $57E8: $C0

    add b                                         ; $57E9: $80
    ret nz                                        ; $57EA: $C0

    add b                                         ; $57EB: $80
    add b                                         ; $57EC: $80
    nop                                           ; $57ED: $00
    add b                                         ; $57EE: $80
    nop                                           ; $57EF: $00
    ret nz                                        ; $57F0: $C0

    add b                                         ; $57F1: $80
    ret nz                                        ; $57F2: $C0

    add b                                         ; $57F3: $80
    ret nz                                        ; $57F4: $C0

    add b                                         ; $57F5: $80
    add b                                         ; $57F6: $80
    nop                                           ; $57F7: $00
    nop                                           ; $57F8: $00
    nop                                           ; $57F9: $00
    nop                                           ; $57FA: $00
    nop                                           ; $57FB: $00
    nop                                           ; $57FC: $00
    nop                                           ; $57FD: $00
    nop                                           ; $57FE: $00
    nop                                           ; $57FF: $00
    nop                                           ; $5800: $00
    nop                                           ; $5801: $00
    nop                                           ; $5802: $00
    nop                                           ; $5803: $00
    nop                                           ; $5804: $00
    nop                                           ; $5805: $00
    nop                                           ; $5806: $00
    nop                                           ; $5807: $00
    nop                                           ; $5808: $00
    nop                                           ; $5809: $00
    nop                                           ; $580A: $00
    nop                                           ; $580B: $00
    nop                                           ; $580C: $00
    nop                                           ; $580D: $00
    nop                                           ; $580E: $00
    nop                                           ; $580F: $00
    nop                                           ; $5810: $00
    nop                                           ; $5811: $00
    rrca                                          ; $5812: $0F
    nop                                           ; $5813: $00
    rra                                           ; $5814: $1F
    rrca                                          ; $5815: $0F
    ld a, a                                       ; $5816: $7F
    rra                                           ; $5817: $1F
    rst RST_38                                    ; $5818: $FF
    ld a, a                                       ; $5819: $7F
    ei                                            ; $581A: $FB
    ld b, a                                       ; $581B: $47
    db $DB                                        ; $581C: $DB
    daa                                           ; $581D: $27
    or a                                          ; $581E: $B7
    adc $0F                                       ; $581F: $CE $0F
    cp $EF                                        ; $5821: $FE $EF
    inc e                                         ; $5823: $1C
    rrca                                          ; $5824: $0F
    ei                                            ; $5825: $FB
    rst RST_38                                    ; $5826: $FF
    ld [hl], a                                    ; $5827: $77
    rst RST_38                                    ; $5828: $FF
    add a                                         ; $5829: $87
    rst RST_38                                    ; $582A: $FF
    rst RST_30                                    ; $582B: $F7
    rst RST_38                                    ; $582C: $FF
    rst RST_30                                    ; $582D: $F7
    rst RST_38                                    ; $582E: $FF
    rst RST_20                                    ; $582F: $E7
    rst RST_20                                    ; $5830: $E7
    inc bc                                        ; $5831: $03
    rlca                                          ; $5832: $07
    inc bc                                        ; $5833: $03
    inc bc                                        ; $5834: $03
    ld bc, $0003                                  ; $5835: $01 $03 $00
    ld bc, $0100                                  ; $5838: $01 $00 $01
    nop                                           ; $583B: $00
    ld bc, $0100                                  ; $583C: $01 $00 $01
    nop                                           ; $583F: $00
    nop                                           ; $5840: $00
    nop                                           ; $5841: $00
    nop                                           ; $5842: $00
    nop                                           ; $5843: $00
    nop                                           ; $5844: $00
    nop                                           ; $5845: $00
    nop                                           ; $5846: $00
    nop                                           ; $5847: $00
    nop                                           ; $5848: $00
    nop                                           ; $5849: $00
    nop                                           ; $584A: $00
    nop                                           ; $584B: $00
    add c                                         ; $584C: $81
    nop                                           ; $584D: $00
    pop hl                                        ; $584E: $E1
    add b                                         ; $584F: $80
    ei                                            ; $5850: $FB
    ld h, b                                       ; $5851: $60
    rst RST_38                                    ; $5852: $FF
    ld a, d                                       ; $5853: $7A
    rst RST_38                                    ; $5854: $FF
    ei                                            ; $5855: $FB
    rst RST_38                                    ; $5856: $FF
    rst RST_38                                    ; $5857: $FF
    rst RST_38                                    ; $5858: $FF
    rst RST_38                                    ; $5859: $FF
    rst RST_38                                    ; $585A: $FF
    ccf                                           ; $585B: $3F
    ccf                                           ; $585C: $3F
    rlca                                          ; $585D: $07
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
    jr nc, jr_013_586C                            ; $586A: $30 $00

jr_013_586C:
    jr z, jr_013_587E                             ; $586C: $28 $10

    inc d                                         ; $586E: $14
    ld [$0C73], sp                                ; $586F: $08 $73 $0C
    ld a, e                                       ; $5872: $7B
    dec b                                         ; $5873: $05
    add hl, de                                    ; $5874: $19
    ld b, $04                                     ; $5875: $06 $04
    inc bc                                        ; $5877: $03
    ld [$1107], sp                                ; $5878: $08 $07 $11
    ld c, $1F                                     ; $587B: $0E $1F
    nop                                           ; $587D: $00

jr_013_587E:
    ld bc, $0100                                  ; $587E: $01 $00 $01
    nop                                           ; $5881: $00
    inc bc                                        ; $5882: $03
    ld bc, $030F                                  ; $5883: $01 $0F $03
    rra                                           ; $5886: $1F
    rrca                                          ; $5887: $0F
    rra                                           ; $5888: $1F
    ld [$041B], sp                                ; $5889: $08 $1B $04
    ld [hl], $19                                  ; $588C: $36 $19
    ld hl, $3D1F                                  ; $588E: $21 $1F $3D
    inc bc                                        ; $5891: $03
    ld hl, $1F1F                                  ; $5892: $21 $1F $1F
    ld c, $0F                                     ; $5895: $0E $0F
    nop                                           ; $5897: $00
    ld bc, $0100                                  ; $5898: $01 $00 $01
    nop                                           ; $589B: $00
    nop                                           ; $589C: $00
    nop                                           ; $589D: $00
    nop                                           ; $589E: $00
    nop                                           ; $589F: $00
    ldh [rP1], a                                  ; $58A0: $E0 $00
    ldh a, [$FFE0]                                ; $58A2: $F0 $E0
    db $FC                                        ; $58A4: $FC
    ldh a, [rIE]                                  ; $58A5: $F0 $FF
    db $FC                                        ; $58A7: $FC
    ld a, a                                       ; $58A8: $7F
    rst RST_38                                    ; $58A9: $FF
    ld a, a                                       ; $58AA: $7F
    rst RST_38                                    ; $58AB: $FF
    rst RST_38                                    ; $58AC: $FF
    rst RST_18                                    ; $58AD: $DF
    rst RST_38                                    ; $58AE: $FF
    rst RST_10                                    ; $58AF: $D7
    rst RST_38                                    ; $58B0: $FF
    xor a                                         ; $58B1: $AF
    cp a                                          ; $58B2: $BF
    ld e, a                                       ; $58B3: $5F
    ld a, a                                       ; $58B4: $7F
    cp a                                          ; $58B5: $BF
    ld a, a                                       ; $58B6: $7F
    cp a                                          ; $58B7: $BF
    ld a, a                                       ; $58B8: $7F
    cp a                                          ; $58B9: $BF
    ld a, a                                       ; $58BA: $7F
    cp a                                          ; $58BB: $BF
    cp a                                          ; $58BC: $BF
    ld e, a                                       ; $58BD: $5F
    ld a, a                                       ; $58BE: $7F
    rra                                           ; $58BF: $1F
    ret nz                                        ; $58C0: $C0

    nop                                           ; $58C1: $00
    ldh [$FFC0], a                                ; $58C2: $E0 $C0
    ldh a, [$FFE0]                                ; $58C4: $F0 $E0
    ld hl, sp-$10                                 ; $58C6: $F8 $F0
    ld hl, sp-$10                                 ; $58C8: $F8 $F0
    db $FC                                        ; $58CA: $FC
    ld hl, sp-$04                                 ; $58CB: $F8 $FC
    ld a, b                                       ; $58CD: $78
    cp $BC                                        ; $58CE: $FE $BC
    cp $BC                                        ; $58D0: $FE $BC
    cp $BC                                        ; $58D2: $FE $BC
    cp $DC                                        ; $58D4: $FE $DC
    cp $DC                                        ; $58D6: $FE $DC
    rst RST_38                                    ; $58D8: $FF
    sbc $FF                                       ; $58D9: $DE $FF
    rst RST_28                                    ; $58DB: $EF
    rst RST_38                                    ; $58DC: $FF
    rst RST_28                                    ; $58DD: $EF
    rst RST_38                                    ; $58DE: $FF
    rst RST_28                                    ; $58DF: $EF
    ld [hl], e                                    ; $58E0: $73
    nop                                           ; $58E1: $00
    ld c, a                                       ; $58E2: $4F
    inc sp                                        ; $58E3: $33
    ccf                                           ; $58E4: $3F
    ld c, $FF                                     ; $58E5: $0E $FF
    dec c                                         ; $58E7: $0D
    adc a                                         ; $58E8: $8F
    ld [hl], e                                    ; $58E9: $73
    ld l, a                                       ; $58EA: $6F
    rla                                           ; $58EB: $17
    rra                                           ; $58EC: $1F
    rrca                                          ; $58ED: $0F
    rrca                                          ; $58EE: $0F
    rlca                                          ; $58EF: $07
    rlca                                          ; $58F0: $07
    ld bc, $0001                                  ; $58F1: $01 $01 $00
    nop                                           ; $58F4: $00
    nop                                           ; $58F5: $00
    nop                                           ; $58F6: $00
    nop                                           ; $58F7: $00
    nop                                           ; $58F8: $00
    nop                                           ; $58F9: $00
    nop                                           ; $58FA: $00
    nop                                           ; $58FB: $00
    nop                                           ; $58FC: $00
    nop                                           ; $58FD: $00
    nop                                           ; $58FE: $00
    nop                                           ; $58FF: $00
    rst RST_38                                    ; $5900: $FF
    rrca                                          ; $5901: $0F
    rst RST_38                                    ; $5902: $FF
    inc hl                                        ; $5903: $23
    rst RST_38                                    ; $5904: $FF
    rst RST_30                                    ; $5905: $F7
    rst RST_38                                    ; $5906: $FF
    rst RST_30                                    ; $5907: $F7
    rst RST_38                                    ; $5908: $FF
    rst RST_30                                    ; $5909: $F7
    rst RST_38                                    ; $590A: $FF
    ei                                            ; $590B: $FB
    rst RST_38                                    ; $590C: $FF
    db $EB                                        ; $590D: $EB
    rst RST_38                                    ; $590E: $FF
    push hl                                       ; $590F: $E5
    rst RST_20                                    ; $5910: $E7
    ret nz                                        ; $5911: $C0

    pop bc                                        ; $5912: $C1
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
    rst RST_38                                    ; $5920: $FF
    rst RST_30                                    ; $5921: $F7
    rst RST_38                                    ; $5922: $FF
    rst RST_30                                    ; $5923: $F7
    rst RST_38                                    ; $5924: $FF
    rst RST_30                                    ; $5925: $F7
    rst RST_38                                    ; $5926: $FF
    jp $2CD3                                      ; $5927: $C3 $D3 $2C


    ld a, [bc]                                    ; $592A: $0A
    db $F4                                        ; $592B: $F4
    jp nz, Jump_000_3C3C                          ; $592C: $C2 $3C $3C

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
    add b                                         ; $5940: $80
    nop                                           ; $5941: $00
    add b                                         ; $5942: $80
    nop                                           ; $5943: $00
    ret nz                                        ; $5944: $C0

    add b                                         ; $5945: $80
    ret nz                                        ; $5946: $C0

    add b                                         ; $5947: $80
    ret nz                                        ; $5948: $C0

    add b                                         ; $5949: $80
    add b                                         ; $594A: $80
    nop                                           ; $594B: $00
    add b                                         ; $594C: $80
    nop                                           ; $594D: $00
    nop                                           ; $594E: $00
    nop                                           ; $594F: $00
    nop                                           ; $5950: $00
    nop                                           ; $5951: $00
    nop                                           ; $5952: $00
    nop                                           ; $5953: $00
    nop                                           ; $5954: $00
    nop                                           ; $5955: $00
    nop                                           ; $5956: $00
    nop                                           ; $5957: $00
    nop                                           ; $5958: $00
    nop                                           ; $5959: $00
    nop                                           ; $595A: $00
    nop                                           ; $595B: $00
    nop                                           ; $595C: $00
    nop                                           ; $595D: $00
    nop                                           ; $595E: $00
    nop                                           ; $595F: $00
    ld bc, $0300                                  ; $5960: $01 $00 $03
    ld bc, $030F                                  ; $5963: $01 $0F $03
    rra                                           ; $5966: $1F
    rrca                                          ; $5967: $0F
    rra                                           ; $5968: $1F
    ld [$041B], sp                                ; $5969: $08 $1B $04
    ld [hl], $19                                  ; $596C: $36 $19
    ld hl, $3D1F                                  ; $596E: $21 $1F $3D
    inc bc                                        ; $5971: $03
    ld hl, $1F1F                                  ; $5972: $21 $1F $1F
    ld c, $0F                                     ; $5975: $0E $0F
    nop                                           ; $5977: $00
    pop af                                        ; $5978: $F1
    nop                                           ; $5979: $00
    rst RST_38                                    ; $597A: $FF
    ldh a, [$FFFC]                                ; $597B: $F0 $FC
    dec bc                                        ; $597D: $0B
    cp $F1                                        ; $597E: $FE $F1
    ldh [rP1], a                                  ; $5980: $E0 $00
    ld hl, sp-$20                                 ; $5982: $F8 $E0
    rst RST_38                                    ; $5984: $FF
    ld hl, sp-$01                                 ; $5985: $F8 $FF
    rst RST_38                                    ; $5987: $FF
    ld a, a                                       ; $5988: $7F
    rst RST_38                                    ; $5989: $FF
    ld a, a                                       ; $598A: $7F
    rst RST_38                                    ; $598B: $FF
    rst RST_38                                    ; $598C: $FF
    rst RST_10                                    ; $598D: $D7
    rst RST_38                                    ; $598E: $FF
    rst RST_08                                    ; $598F: $CF
    rst RST_38                                    ; $5990: $FF
    sbc a                                         ; $5991: $9F
    cp a                                          ; $5992: $BF
    ld e, a                                       ; $5993: $5F
    ld a, a                                       ; $5994: $7F
    cp a                                          ; $5995: $BF
    ld a, a                                       ; $5996: $7F
    cp a                                          ; $5997: $BF
    ld a, a                                       ; $5998: $7F
    cp a                                          ; $5999: $BF
    cp a                                          ; $599A: $BF
    ld e, a                                       ; $599B: $5F
    ld a, a                                       ; $599C: $7F
    sbc a                                         ; $599D: $9F
    rra                                           ; $599E: $1F
    rst RST_28                                    ; $599F: $EF
    ret nz                                        ; $59A0: $C0

    nop                                           ; $59A1: $00
    ldh [$FFC0], a                                ; $59A2: $E0 $C0
    ldh a, [$FFE0]                                ; $59A4: $F0 $E0
    ldh a, [$FFE0]                                ; $59A6: $F0 $E0
    ld hl, sp-$10                                 ; $59A8: $F8 $F0
    ld hl, sp-$10                                 ; $59AA: $F8 $F0
    db $FC                                        ; $59AC: $FC
    ld a, b                                       ; $59AD: $78
    db $FC                                        ; $59AE: $FC
    cp b                                          ; $59AF: $B8
    db $FC                                        ; $59B0: $FC
    ret c                                         ; $59B1: $D8

    db $FC                                        ; $59B2: $FC
    ret c                                         ; $59B3: $D8

    db $FC                                        ; $59B4: $FC
    add sp, -$08                                  ; $59B5: $E8 $F8
    ldh [$FFF8], a                                ; $59B7: $E0 $F8
    ldh [$FFF8], a                                ; $59B9: $E0 $F8
    ldh a, [$FFF8]                                ; $59BB: $F0 $F8
    ldh a, [$FFF8]                                ; $59BD: $F0 $F8
    ldh a, [rP1]                                  ; $59BF: $F0 $00
    nop                                           ; $59C1: $00
    nop                                           ; $59C2: $00
    nop                                           ; $59C3: $00
    nop                                           ; $59C4: $00
    nop                                           ; $59C5: $00
    nop                                           ; $59C6: $00
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
    ld bc, $0200                                  ; $59D2: $01 $00 $02
    ld bc, $0003                                  ; $59D5: $01 $03 $00
    inc b                                         ; $59D8: $04
    inc bc                                        ; $59D9: $03
    inc bc                                        ; $59DA: $03
    nop                                           ; $59DB: $00
    ld [bc], a                                    ; $59DC: $02
    ld bc, $0001                                  ; $59DD: $01 $01 $00
    ld bc, $8700                                  ; $59E0: $01 $00 $87
    ld bc, $867F                                  ; $59E3: $01 $7F $86
    cp a                                          ; $59E6: $BF
    ld d, c                                       ; $59E7: $51
    rst RST_38                                    ; $59E8: $FF
    rrca                                          ; $59E9: $0F
    ld a, a                                       ; $59EA: $7F
    cp a                                          ; $59EB: $BF
    rst RST_38                                    ; $59EC: $FF
    ld a, a                                       ; $59ED: $7F
    ld a, a                                       ; $59EE: $7F
    cp a                                          ; $59EF: $BF
    rst RST_38                                    ; $59F0: $FF
    ld a, a                                       ; $59F1: $7F
    rst RST_38                                    ; $59F2: $FF
    ld a, a                                       ; $59F3: $7F
    ld a, a                                       ; $59F4: $7F
    inc a                                         ; $59F5: $3C
    inc a                                         ; $59F6: $3C
    nop                                           ; $59F7: $00
    nop                                           ; $59F8: $00
    nop                                           ; $59F9: $00
    nop                                           ; $59FA: $00
    nop                                           ; $59FB: $00
    nop                                           ; $59FC: $00
    nop                                           ; $59FD: $00
    nop                                           ; $59FE: $00
    nop                                           ; $59FF: $00
    rst RST_38                                    ; $5A00: $FF
    cp $FF                                        ; $5A01: $FE $FF
    rst RST_38                                    ; $5A03: $FF
    rst RST_38                                    ; $5A04: $FF
    rst RST_38                                    ; $5A05: $FF
    rst RST_38                                    ; $5A06: $FF
    rst RST_38                                    ; $5A07: $FF
    rst RST_38                                    ; $5A08: $FF
    ld a, a                                       ; $5A09: $7F
    rst RST_38                                    ; $5A0A: $FF
    adc a                                         ; $5A0B: $8F
    adc a                                         ; $5A0C: $8F
    inc bc                                        ; $5A0D: $03
    inc bc                                        ; $5A0E: $03
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
    sbc a                                         ; $5A20: $9F
    ld [hl], c                                    ; $5A21: $71
    rst RST_38                                    ; $5A22: $FF
    cp e                                          ; $5A23: $BB
    rst RST_38                                    ; $5A24: $FF
    ei                                            ; $5A25: $FB
    rst RST_38                                    ; $5A26: $FF
    ei                                            ; $5A27: $FB
    rst RST_38                                    ; $5A28: $FF
    db $FD                                        ; $5A29: $FD
    rst RST_38                                    ; $5A2A: $FF
    db $FD                                        ; $5A2B: $FD
    db $FD                                        ; $5A2C: $FD
    ldh a, [$FFF0]                                ; $5A2D: $F0 $F0
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
    db $FC                                        ; $5A40: $FC
    ld hl, sp-$04                                 ; $5A41: $F8 $FC
    ld hl, sp-$02                                 ; $5A43: $F8 $FE
    ldh a, [$FFF9]                                ; $5A45: $F0 $F9
    and $ED                                       ; $5A47: $E6 $ED
    ld [de], a                                    ; $5A49: $12
    add c                                         ; $5A4A: $81
    ld a, [hl]                                    ; $5A4B: $7E
    ld a, [hl]                                    ; $5A4C: $7E
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
    rst RST_30                                    ; $5A60: $F7
    rst RST_08                                    ; $5A61: $CF
    rst RST_30                                    ; $5A62: $F7
    rrca                                          ; $5A63: $0F
    ld l, a                                       ; $5A64: $6F
    sbc l                                         ; $5A65: $9D
    rra                                           ; $5A66: $1F
    ld sp, hl                                     ; $5A67: $F9
    rst RST_18                                    ; $5A68: $DF
    daa                                           ; $5A69: $27
    ccf                                           ; $5A6A: $3F
    rst RST_18                                    ; $5A6B: $DF
    rst RST_38                                    ; $5A6C: $FF
    rst RST_18                                    ; $5A6D: $DF
    rst RST_38                                    ; $5A6E: $FF
    ccf                                           ; $5A6F: $3F
    rst RST_38                                    ; $5A70: $FF
    ccf                                           ; $5A71: $3F
    rst RST_38                                    ; $5A72: $FF
    rst RST_18                                    ; $5A73: $DF
    rst RST_38                                    ; $5A74: $FF
    rst RST_38                                    ; $5A75: $FF
    rst RST_38                                    ; $5A76: $FF
    rst RST_38                                    ; $5A77: $FF
    rst RST_38                                    ; $5A78: $FF
    cp $FE                                        ; $5A79: $FE $FE
    ld hl, sp-$08                                 ; $5A7B: $F8 $F8
    ldh [$FFE0], a                                ; $5A7D: $E0 $E0
    nop                                           ; $5A7F: $00
    inc bc                                        ; $5A80: $03
    ld bc, $0102                                  ; $5A81: $01 $02 $01
    inc bc                                        ; $5A84: $03
    nop                                           ; $5A85: $00
    ld [bc], a                                    ; $5A86: $02
    ld bc, $0003                                  ; $5A87: $01 $03 $00
    rst RST_38                                    ; $5A8A: $FF
    inc bc                                        ; $5A8B: $03
    ccf                                           ; $5A8C: $3F
    sbc $FF                                       ; $5A8D: $DE $FF
    ld bc, $EF1F                                  ; $5A8F: $01 $1F $EF
    rst RST_18                                    ; $5A92: $DF
    cpl                                           ; $5A93: $2F
    ld e, a                                       ; $5A94: $5F
    xor a                                         ; $5A95: $AF
    adc a                                         ; $5A96: $8F
    ld [hl], a                                    ; $5A97: $77
    rlca                                          ; $5A98: $07
    ei                                            ; $5A99: $FB
    ld b, a                                       ; $5A9A: $47
    cp b                                          ; $5A9B: $B8
    sbc b                                         ; $5A9C: $98
    ld h, b                                       ; $5A9D: $60
    ld h, b                                       ; $5A9E: $60
    nop                                           ; $5A9F: $00
    ld bc, $0200                                  ; $5AA0: $01 $00 $02
    ld bc, $0001                                  ; $5AA3: $01 $01 $00
    ld bc, $0100                                  ; $5AA6: $01 $00 $01
    nop                                           ; $5AA9: $00
    ld [bc], a                                    ; $5AAA: $02
    ld bc, $0304                                  ; $5AAB: $01 $04 $03
    rlca                                          ; $5AAE: $07
    nop                                           ; $5AAF: $00
    ld [bc], a                                    ; $5AB0: $02
    ld bc, $0003                                  ; $5AB1: $01 $03 $00
    nop                                           ; $5AB4: $00
    nop                                           ; $5AB5: $00
    nop                                           ; $5AB6: $00
    nop                                           ; $5AB7: $00
    nop                                           ; $5AB8: $00
    nop                                           ; $5AB9: $00
    nop                                           ; $5ABA: $00
    nop                                           ; $5ABB: $00
    nop                                           ; $5ABC: $00
    nop                                           ; $5ABD: $00
    nop                                           ; $5ABE: $00
    nop                                           ; $5ABF: $00
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
    nop                                           ; $5AD6: $00
    nop                                           ; $5AD7: $00
    inc e                                         ; $5AD8: $1C
    nop                                           ; $5AD9: $00
    ccf                                           ; $5ADA: $3F
    inc e                                         ; $5ADB: $1C
    rst RST_38                                    ; $5ADC: $FF
    ccf                                           ; $5ADD: $3F
    rst RST_38                                    ; $5ADE: $FF
    rst RST_38                                    ; $5ADF: $FF
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
    nop                                           ; $5AF7: $00
    nop                                           ; $5AF8: $00
    nop                                           ; $5AF9: $00
    ld bc, $0100                                  ; $5AFA: $01 $00 $01
    nop                                           ; $5AFD: $00
    ld bc, $8000                                  ; $5AFE: $01 $00 $80
    nop                                           ; $5B01: $00
    ld hl, sp-$80                                 ; $5B02: $F8 $80
    cp $F8                                        ; $5B04: $FE $F8
    rst RST_38                                    ; $5B06: $FF
    cp $FF                                        ; $5B07: $FE $FF
    rst RST_38                                    ; $5B09: $FF
    rst RST_38                                    ; $5B0A: $FF
    rst RST_38                                    ; $5B0B: $FF
    rst RST_38                                    ; $5B0C: $FF
    rst RST_18                                    ; $5B0D: $DF
    rst RST_38                                    ; $5B0E: $FF
    rst RST_28                                    ; $5B0F: $EF
    rst RST_38                                    ; $5B10: $FF
    rst RST_28                                    ; $5B11: $EF
    rst RST_38                                    ; $5B12: $FF
    rst RST_28                                    ; $5B13: $EF
    rst RST_38                                    ; $5B14: $FF
    xor $EF                                       ; $5B15: $EE $EF
    db $DD                                        ; $5B17: $DD
    jp $E3BD                                      ; $5B18: $C3 $BD $E3


    dec e                                         ; $5B1B: $1D
    rra                                           ; $5B1C: $1F
    ld bc, $060F                                  ; $5B1D: $01 $0F $06
    add b                                         ; $5B20: $80
    nop                                           ; $5B21: $00
    db $FC                                        ; $5B22: $FC
    add b                                         ; $5B23: $80
    rst RST_38                                    ; $5B24: $FF
    db $FC                                        ; $5B25: $FC
    rst RST_38                                    ; $5B26: $FF
    rst RST_38                                    ; $5B27: $FF
    rst RST_38                                    ; $5B28: $FF
    rst RST_38                                    ; $5B29: $FF
    rst RST_38                                    ; $5B2A: $FF
    rra                                           ; $5B2B: $1F
    rst RST_38                                    ; $5B2C: $FF
    rst RST_38                                    ; $5B2D: $FF
    rst RST_38                                    ; $5B2E: $FF
    rst RST_38                                    ; $5B2F: $FF
    rst RST_38                                    ; $5B30: $FF
    ld sp, hl                                     ; $5B31: $F9
    rst RST_38                                    ; $5B32: $FF
    cp $FF                                        ; $5B33: $FE $FF
    rst RST_38                                    ; $5B35: $FF
    rst RST_38                                    ; $5B36: $FF
    rst RST_38                                    ; $5B37: $FF
    rst RST_38                                    ; $5B38: $FF
    ccf                                           ; $5B39: $3F
    rst RST_38                                    ; $5B3A: $FF
    adc a                                         ; $5B3B: $8F
    xor a                                         ; $5B3C: $AF
    ld d, [hl]                                    ; $5B3D: $56
    cp $00                                        ; $5B3E: $FE $00
    add b                                         ; $5B40: $80
    nop                                           ; $5B41: $00
    add b                                         ; $5B42: $80
    nop                                           ; $5B43: $00
    ret nz                                        ; $5B44: $C0

    add b                                         ; $5B45: $80
    ret nz                                        ; $5B46: $C0

    add b                                         ; $5B47: $80
    ret nz                                        ; $5B48: $C0

    add b                                         ; $5B49: $80
    ret nz                                        ; $5B4A: $C0

    add b                                         ; $5B4B: $80
    add b                                         ; $5B4C: $80
    nop                                           ; $5B4D: $00
    add b                                         ; $5B4E: $80
    nop                                           ; $5B4F: $00
    ret nz                                        ; $5B50: $C0

    add b                                         ; $5B51: $80
    ret nz                                        ; $5B52: $C0

    add b                                         ; $5B53: $80
    ret nz                                        ; $5B54: $C0

    add b                                         ; $5B55: $80
    add b                                         ; $5B56: $80
    nop                                           ; $5B57: $00
    nop                                           ; $5B58: $00
    nop                                           ; $5B59: $00
    nop                                           ; $5B5A: $00
    nop                                           ; $5B5B: $00
    nop                                           ; $5B5C: $00
    nop                                           ; $5B5D: $00
    nop                                           ; $5B5E: $00
    nop                                           ; $5B5F: $00
    rra                                           ; $5B60: $1F
    inc bc                                        ; $5B61: $03
    dec hl                                        ; $5B62: $2B
    dec d                                         ; $5B63: $15
    ccf                                           ; $5B64: $3F
    nop                                           ; $5B65: $00
    nop                                           ; $5B66: $00
    nop                                           ; $5B67: $00
    nop                                           ; $5B68: $00
    nop                                           ; $5B69: $00
    nop                                           ; $5B6A: $00
    nop                                           ; $5B6B: $00
    nop                                           ; $5B6C: $00
    nop                                           ; $5B6D: $00
    nop                                           ; $5B6E: $00
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
    inc bc                                        ; $5B80: $03
    nop                                           ; $5B81: $00
    scf                                           ; $5B82: $37
    inc bc                                        ; $5B83: $03
    ld c, a                                       ; $5B84: $4F
    inc sp                                        ; $5B85: $33
    ld h, e                                       ; $5B86: $63
    inc e                                         ; $5B87: $1C
    scf                                           ; $5B88: $37
    dec bc                                        ; $5B89: $0B
    ld c, a                                       ; $5B8A: $4F
    inc sp                                        ; $5B8B: $33
    ld h, a                                       ; $5B8C: $67
    dec de                                        ; $5B8D: $1B
    scf                                           ; $5B8E: $37
    dec bc                                        ; $5B8F: $0B
    ld d, e                                       ; $5B90: $53
    dec l                                         ; $5B91: $2D
    ld h, c                                       ; $5B92: $61
    ld e, $28                                     ; $5B93: $1E $28
    rla                                           ; $5B95: $17
    ld c, e                                       ; $5B96: $4B
    inc [hl]                                      ; $5B97: $34
    ld d, h                                       ; $5B98: $54
    jr z, jr_013_5C13                             ; $5B99: $28 $78

    nop                                           ; $5B9B: $00
    nop                                           ; $5B9C: $00
    nop                                           ; $5B9D: $00
    nop                                           ; $5B9E: $00
    nop                                           ; $5B9F: $00
    ccf                                           ; $5BA0: $3F
    dec bc                                        ; $5BA1: $0B
    rst RST_38                                    ; $5BA2: $FF
    daa                                           ; $5BA3: $27
    rst RST_38                                    ; $5BA4: $FF
    rst RST_30                                    ; $5BA5: $F7
    rst RST_38                                    ; $5BA6: $FF
    rst RST_08                                    ; $5BA7: $CF
    rst RST_38                                    ; $5BA8: $FF
    cpl                                           ; $5BA9: $2F
    rst RST_38                                    ; $5BAA: $FF
    rst RST_38                                    ; $5BAB: $FF
    rst RST_38                                    ; $5BAC: $FF
    rst RST_38                                    ; $5BAD: $FF
    rst RST_38                                    ; $5BAE: $FF
    rst RST_38                                    ; $5BAF: $FF
    rst RST_38                                    ; $5BB0: $FF
    db $FC                                        ; $5BB1: $FC
    db $FC                                        ; $5BB2: $FC
    ld hl, sp-$08                                 ; $5BB3: $F8 $F8
    ldh [$FFE0], a                                ; $5BB5: $E0 $E0
    nop                                           ; $5BB7: $00
    add b                                         ; $5BB8: $80
    nop                                           ; $5BB9: $00
    nop                                           ; $5BBA: $00
    nop                                           ; $5BBB: $00
    nop                                           ; $5BBC: $00
    nop                                           ; $5BBD: $00
    nop                                           ; $5BBE: $00
    nop                                           ; $5BBF: $00
    rst RST_38                                    ; $5BC0: $FF
    rst RST_38                                    ; $5BC1: $FF
    rst RST_38                                    ; $5BC2: $FF
    rst RST_38                                    ; $5BC3: $FF
    rst RST_38                                    ; $5BC4: $FF
    rst RST_38                                    ; $5BC5: $FF
    rst RST_38                                    ; $5BC6: $FF
    pop af                                        ; $5BC7: $F1
    rst RST_30                                    ; $5BC8: $F7
    rst RST_08                                    ; $5BC9: $CF
    jp Jump_013_413F                              ; $5BCA: $C3 $3F $41


    ccf                                           ; $5BCD: $3F
    ld sp, $1F0E                                  ; $5BCE: $31 $0E $1F
    nop                                           ; $5BD1: $00
    rra                                           ; $5BD2: $1F
    ld c, $0F                                     ; $5BD3: $0E $0F
    ld b, $0F                                     ; $5BD5: $06 $0F
    rlca                                          ; $5BD7: $07
    rra                                           ; $5BD8: $1F
    inc bc                                        ; $5BD9: $03
    dec hl                                        ; $5BDA: $2B
    dec d                                         ; $5BDB: $15
    ccf                                           ; $5BDC: $3F
    nop                                           ; $5BDD: $00
    nop                                           ; $5BDE: $00
    nop                                           ; $5BDF: $00
    ldh a, [$FFE0]                                ; $5BE0: $F0 $E0
    ld hl, sp-$10                                 ; $5BE2: $F8 $F0
    cp $F8                                        ; $5BE4: $FE $F8
    rst RST_38                                    ; $5BE6: $FF
    cp $FF                                        ; $5BE7: $FE $FF
    rst RST_38                                    ; $5BE9: $FF
    rst RST_38                                    ; $5BEA: $FF
    adc a                                         ; $5BEB: $8F
    rst RST_38                                    ; $5BEC: $FF
    ld a, a                                       ; $5BED: $7F
    rst RST_38                                    ; $5BEE: $FF
    rst RST_38                                    ; $5BEF: $FF
    rst RST_38                                    ; $5BF0: $FF
    rst RST_38                                    ; $5BF1: $FF
    rst RST_38                                    ; $5BF2: $FF
    ld sp, hl                                     ; $5BF3: $F9
    rst RST_38                                    ; $5BF4: $FF
    cp $FF                                        ; $5BF5: $FE $FF
    ld a, a                                       ; $5BF7: $7F
    rst RST_38                                    ; $5BF8: $FF
    cp a                                          ; $5BF9: $BF
    rst RST_38                                    ; $5BFA: $FF
    adc a                                         ; $5BFB: $8F
    xor a                                         ; $5BFC: $AF
    ld d, a                                       ; $5BFD: $57
    rst RST_38                                    ; $5BFE: $FF
    nop                                           ; $5BFF: $00
    nop                                           ; $5C00: $00
    nop                                           ; $5C01: $00
    rlca                                          ; $5C02: $07
    nop                                           ; $5C03: $00
    dec b                                         ; $5C04: $05
    inc bc                                        ; $5C05: $03
    ld [hl], h                                    ; $5C06: $74
    inc bc                                        ; $5C07: $03
    ld l, l                                       ; $5C08: $6D
    ld [hl-], a                                   ; $5C09: $32
    ld [hl], c                                    ; $5C0A: $71
    ld a, $3E                                     ; $5C0B: $3E $3E
    rra                                           ; $5C0D: $1F
    ccf                                           ; $5C0E: $3F
    rrca                                          ; $5C0F: $0F
    ccf                                           ; $5C10: $3F
    rla                                           ; $5C11: $17
    rra                                           ; $5C12: $1F

jr_013_5C13:
    ld [$0F3F], sp                                ; $5C13: $08 $3F $0F
    ld a, a                                       ; $5C16: $7F
    cpl                                           ; $5C17: $2F
    rst RST_38                                    ; $5C18: $FF
    ld [hl], b                                    ; $5C19: $70
    rst RST_38                                    ; $5C1A: $FF
    ld c, a                                       ; $5C1B: $4F
    rst RST_38                                    ; $5C1C: $FF
    cp a                                          ; $5C1D: $BF
    rst RST_38                                    ; $5C1E: $FF
    ld a, a                                       ; $5C1F: $7F
    nop                                           ; $5C20: $00
    nop                                           ; $5C21: $00
    nop                                           ; $5C22: $00
    nop                                           ; $5C23: $00
    ldh [rP1], a                                  ; $5C24: $E0 $00
    ldh a, [$FF60]                                ; $5C26: $F0 $60
    ld [hl], b                                    ; $5C28: $70
    and b                                         ; $5C29: $A0
    ld hl, sp+$30                                 ; $5C2A: $F8 $30
    db $FC                                        ; $5C2C: $FC
    jr c, jr_013_5C6B                             ; $5C2D: $38 $3C

    ld hl, sp-$04                                 ; $5C2F: $F8 $FC
    ld hl, sp-$04                                 ; $5C31: $F8 $FC
    ld hl, sp-$08                                 ; $5C33: $F8 $F8
    ldh a, [$FFF8]                                ; $5C35: $F0 $F8
    ldh [$FFFC], a                                ; $5C37: $E0 $FC
    ld hl, sp-$02                                 ; $5C39: $F8 $FE
    cp h                                          ; $5C3B: $BC
    cp $DC                                        ; $5C3C: $FE $DC
    rst RST_38                                    ; $5C3E: $FF
    sbc $80                                       ; $5C3F: $DE $80
    nop                                           ; $5C41: $00
    add b                                         ; $5C42: $80
    nop                                           ; $5C43: $00
    ret nz                                        ; $5C44: $C0

    add b                                         ; $5C45: $80
    ret nz                                        ; $5C46: $C0

    add b                                         ; $5C47: $80
    ret nz                                        ; $5C48: $C0

    add b                                         ; $5C49: $80
    ret nz                                        ; $5C4A: $C0

    add b                                         ; $5C4B: $80
    add b                                         ; $5C4C: $80
    nop                                           ; $5C4D: $00
    add b                                         ; $5C4E: $80
    nop                                           ; $5C4F: $00
    ret nz                                        ; $5C50: $C0

    add b                                         ; $5C51: $80
    ret nz                                        ; $5C52: $C0

    add b                                         ; $5C53: $80
    ret nz                                        ; $5C54: $C0

    add b                                         ; $5C55: $80
    add b                                         ; $5C56: $80
    nop                                           ; $5C57: $00
    nop                                           ; $5C58: $00
    nop                                           ; $5C59: $00
    nop                                           ; $5C5A: $00
    nop                                           ; $5C5B: $00
    nop                                           ; $5C5C: $00
    nop                                           ; $5C5D: $00
    nop                                           ; $5C5E: $00
    nop                                           ; $5C5F: $00
    ld [de], a                                    ; $5C60: $12
    dec c                                         ; $5C61: $0D
    inc h                                         ; $5C62: $24
    dec de                                        ; $5C63: $1B
    ld c, b                                       ; $5C64: $48
    scf                                           ; $5C65: $37
    ld l, h                                       ; $5C66: $6C
    inc de                                        ; $5C67: $13
    rst RST_38                                    ; $5C68: $FF
    ld l, h                                       ; $5C69: $6C
    rst RST_38                                    ; $5C6A: $FF

jr_013_5C6B:
    ld l, a                                       ; $5C6B: $6F
    rst RST_38                                    ; $5C6C: $FF
    ld l, a                                       ; $5C6D: $6F
    rst RST_38                                    ; $5C6E: $FF
    ld l, a                                       ; $5C6F: $6F
    rst RST_38                                    ; $5C70: $FF
    ld l, a                                       ; $5C71: $6F
    rst RST_38                                    ; $5C72: $FF
    ld l, a                                       ; $5C73: $6F
    rst RST_38                                    ; $5C74: $FF
    ld l, a                                       ; $5C75: $6F
    rst RST_38                                    ; $5C76: $FF
    ld l, a                                       ; $5C77: $6F
    rst RST_38                                    ; $5C78: $FF
    ld l, a                                       ; $5C79: $6F
    ld a, a                                       ; $5C7A: $7F
    scf                                           ; $5C7B: $37
    ld a, a                                       ; $5C7C: $7F
    scf                                           ; $5C7D: $37
    ccf                                           ; $5C7E: $3F
    dec de                                        ; $5C7F: $1B
    ret nz                                        ; $5C80: $C0

    nop                                           ; $5C81: $00
    adc $00                                       ; $5C82: $CE $00
    dec hl                                        ; $5C84: $2B
    add $E9                                       ; $5C85: $C6 $E9
    ld b, $DA                                     ; $5C87: $06 $DA
    and l                                         ; $5C89: $A5
    db $E3                                        ; $5C8A: $E3
    cp h                                          ; $5C8B: $BC
    db $FD                                        ; $5C8C: $FD
    cp [hl]                                       ; $5C8D: $BE
    cp $DF                                        ; $5C8E: $FE $DF
    rst RST_38                                    ; $5C90: $FF
    rst RST_08                                    ; $5C91: $CF
    rst RST_38                                    ; $5C92: $FF
    or e                                          ; $5C93: $B3
    rst RST_38                                    ; $5C94: $FF
    db $FD                                        ; $5C95: $FD
    rst RST_38                                    ; $5C96: $FF
    cp $FF                                        ; $5C97: $FE $FF
    cp $FF                                        ; $5C99: $FE $FF
    rst RST_38                                    ; $5C9B: $FF
    rst RST_38                                    ; $5C9C: $FF
    rst RST_38                                    ; $5C9D: $FF
    rst RST_38                                    ; $5C9E: $FF
    ld a, a                                       ; $5C9F: $7F
    nop                                           ; $5CA0: $00
    nop                                           ; $5CA1: $00
    nop                                           ; $5CA2: $00
    nop                                           ; $5CA3: $00
    ret nz                                        ; $5CA4: $C0

    nop                                           ; $5CA5: $00
    ldh [$FFC0], a                                ; $5CA6: $E0 $C0
    ldh [rLCDC], a                                ; $5CA8: $E0 $40
    ldh a, [$FF60]                                ; $5CAA: $F0 $60
    ld hl, sp+$70                                 ; $5CAC: $F8 $70
    ld a, b                                       ; $5CAE: $78
    ldh a, [$FFF8]                                ; $5CAF: $F0 $F8
    ldh a, [$FFF8]                                ; $5CB1: $F0 $F8
    ldh a, [$FFF0]                                ; $5CB3: $F0 $F0
    ldh [$FFF0], a                                ; $5CB5: $E0 $F0
    ret nz                                        ; $5CB7: $C0

    ld hl, sp-$10                                 ; $5CB8: $F8 $F0
    ld hl, sp-$10                                 ; $5CBA: $F8 $F0
    db $FC                                        ; $5CBC: $FC
    ld hl, sp-$04                                 ; $5CBD: $F8 $FC
    ld hl, sp+$7F                                 ; $5CBF: $F8 $7F
    rla                                           ; $5CC1: $17
    rra                                           ; $5CC2: $1F
    add hl, bc                                    ; $5CC3: $09
    dec c                                         ; $5CC4: $0D
    ld [bc], a                                    ; $5CC5: $02
    ld [bc], a                                    ; $5CC6: $02
    ld bc, $0102                                  ; $5CC7: $01 $02 $01
    ld bc, $0100                                  ; $5CCA: $01 $00 $01
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
    rst RST_38                                    ; $5CE0: $FF
    ld a, a                                       ; $5CE1: $7F
    ccf                                           ; $5CE2: $3F
    rst RST_38                                    ; $5CE3: $FF
    ccf                                           ; $5CE4: $3F
    rst RST_38                                    ; $5CE5: $FF
    rra                                           ; $5CE6: $1F
    rst RST_38                                    ; $5CE7: $FF
    rra                                           ; $5CE8: $1F
    rst RST_38                                    ; $5CE9: $FF
    sbc a                                         ; $5CEA: $9F
    ld a, [hl]                                    ; $5CEB: $7E
    ld c, a                                       ; $5CEC: $4F
    dec a                                         ; $5CED: $3D
    ld h, a                                       ; $5CEE: $67
    dec de                                        ; $5CEF: $1B
    ld a, a                                       ; $5CF0: $7F
    inc hl                                        ; $5CF1: $23
    ld a, a                                       ; $5CF2: $7F
    dec sp                                        ; $5CF3: $3B
    ccf                                           ; $5CF4: $3F
    dec e                                         ; $5CF5: $1D
    ccf                                           ; $5CF6: $3F
    dec e                                         ; $5CF7: $1D
    ld a, a                                       ; $5CF8: $7F
    ld c, $AF                                     ; $5CF9: $0E $AF
    ld d, [hl]                                    ; $5CFB: $56
    cp $01                                        ; $5CFC: $FE $01
    inc bc                                        ; $5CFE: $03
    nop                                           ; $5CFF: $00
    ldh a, [$FFE0]                                ; $5D00: $F0 $E0
    ldh [$FFC0], a                                ; $5D02: $E0 $C0
    ldh [$FFC0], a                                ; $5D04: $E0 $C0
    ldh a, [$FFE0]                                ; $5D06: $F0 $E0
    db $FC                                        ; $5D08: $FC
    ldh a, [$FFFE]                                ; $5D09: $F0 $FE
    inc e                                         ; $5D0B: $1C
    cp $FC                                        ; $5D0C: $FE $FC
    rst RST_38                                    ; $5D0E: $FF
    cp $FF                                        ; $5D0F: $FE $FF
    cp $FF                                        ; $5D11: $FE $FF
    or $FF                                        ; $5D13: $F6 $FF
    ld a, [$FCFE]                                 ; $5D15: $FA $FE $FC
    cp $FC                                        ; $5D18: $FE $FC
    rst RST_38                                    ; $5D1A: $FF
    ld a, $BF                                     ; $5D1B: $3E $BF
    ld e, [hl]                                    ; $5D1D: $5E
    rst RST_38                                    ; $5D1E: $FF
    nop                                           ; $5D1F: $00
    nop                                           ; $5D20: $00
    nop                                           ; $5D21: $00
    nop                                           ; $5D22: $00
    nop                                           ; $5D23: $00
    nop                                           ; $5D24: $00
    nop                                           ; $5D25: $00
    nop                                           ; $5D26: $00
    nop                                           ; $5D27: $00
    nop                                           ; $5D28: $00
    nop                                           ; $5D29: $00
    nop                                           ; $5D2A: $00
    nop                                           ; $5D2B: $00
    nop                                           ; $5D2C: $00
    nop                                           ; $5D2D: $00
    nop                                           ; $5D2E: $00
    nop                                           ; $5D2F: $00
    nop                                           ; $5D30: $00
    nop                                           ; $5D31: $00
    nop                                           ; $5D32: $00
    nop                                           ; $5D33: $00
    nop                                           ; $5D34: $00
    nop                                           ; $5D35: $00
    nop                                           ; $5D36: $00
    nop                                           ; $5D37: $00
    ccf                                           ; $5D38: $3F
    nop                                           ; $5D39: $00
    reti                                          ; $5D3A: $D9


    ld h, $26                                     ; $5D3B: $26 $26
    ret c                                         ; $5D3D: $D8

    ld c, d                                       ; $5D3E: $4A
    or h                                          ; $5D3F: $B4
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
    ld bc, $0200                                  ; $5D56: $01 $00 $02
    ld bc, $0102                                  ; $5D59: $01 $02 $01
    ld [bc], a                                    ; $5D5C: $02
    ld bc, $0001                                  ; $5D5D: $01 $01 $00
    ld h, b                                       ; $5D60: $60
    nop                                           ; $5D61: $00
    and b                                         ; $5D62: $A0
    ld b, b                                       ; $5D63: $40
    cp $00                                        ; $5D64: $FE $00
    add c                                         ; $5D66: $81
    ld a, [hl]                                    ; $5D67: $7E
    rra                                           ; $5D68: $1F
    ldh [rIE], a                                  ; $5D69: $E0 $FF
    rra                                           ; $5D6B: $1F
    ld a, a                                       ; $5D6C: $7F
    ccf                                           ; $5D6D: $3F
    ld a, a                                       ; $5D6E: $7F
    ccf                                           ; $5D6F: $3F
    ld a, a                                       ; $5D70: $7F
    ccf                                           ; $5D71: $3F
    ld a, a                                       ; $5D72: $7F
    ccf                                           ; $5D73: $3F
    ccf                                           ; $5D74: $3F
    rra                                           ; $5D75: $1F
    ccf                                           ; $5D76: $3F
    rra                                           ; $5D77: $1F
    rra                                           ; $5D78: $1F
    rrca                                          ; $5D79: $0F
    rra                                           ; $5D7A: $1F
    rrca                                          ; $5D7B: $0F
    rrca                                          ; $5D7C: $0F
    inc bc                                        ; $5D7D: $03
    inc bc                                        ; $5D7E: $03
    nop                                           ; $5D7F: $00
    nop                                           ; $5D80: $00
    nop                                           ; $5D81: $00
    nop                                           ; $5D82: $00
    nop                                           ; $5D83: $00
    add b                                         ; $5D84: $80
    nop                                           ; $5D85: $00
    ret nz                                        ; $5D86: $C0

    add b                                         ; $5D87: $80
    rst RST_08                                    ; $5D88: $CF
    add b                                         ; $5D89: $80
    rst RST_38                                    ; $5D8A: $FF
    rst RST_08                                    ; $5D8B: $CF
    rst RST_38                                    ; $5D8C: $FF
    rst RST_18                                    ; $5D8D: $DF
    rst RST_38                                    ; $5D8E: $FF
    rst RST_18                                    ; $5D8F: $DF
    rst RST_38                                    ; $5D90: $FF
    rst RST_38                                    ; $5D91: $FF
    rst RST_38                                    ; $5D92: $FF
    rst RST_38                                    ; $5D93: $FF

jr_013_5D94:
    rst RST_38                                    ; $5D94: $FF
    rst RST_38                                    ; $5D95: $FF
    rst RST_38                                    ; $5D96: $FF
    cp [hl]                                       ; $5D97: $BE
    rst RST_38                                    ; $5D98: $FF
    ld bc, $0307                                  ; $5D99: $01 $07 $03
    inc bc                                        ; $5D9C: $03
    ld bc, $0001                                  ; $5D9D: $01 $01 $00
    ld e, $00                                     ; $5DA0: $1E $00
    ccf                                           ; $5DA2: $3F
    ld e, $7F                                     ; $5DA3: $1E $7F
    ccf                                           ; $5DA5: $3F

jr_013_5DA6:
    ld a, a                                       ; $5DA6: $7F
    ccf                                           ; $5DA7: $3F
    ei                                            ; $5DA8: $FB
    ld a, h                                       ; $5DA9: $7C
    ei                                            ; $5DAA: $FB
    db $FC                                        ; $5DAB: $FC
    db $FD                                        ; $5DAC: $FD
    ld l, [hl]                                    ; $5DAD: $6E
    cp $AF                                        ; $5DAE: $FE $AF
    cp $B7                                        ; $5DB0: $FE $B7
    add a                                         ; $5DB2: $87
    ld hl, sp-$40                                 ; $5DB3: $F8 $C0
    rst RST_38                                    ; $5DB5: $FF
    ret nz                                        ; $5DB6: $C0

    rst RST_38                                    ; $5DB7: $FF
    ldh [$FFBF], a                                ; $5DB8: $E0 $BF
    ldh a, [$FFDF]                                ; $5DBA: $F0 $DF
    db $FC                                        ; $5DBC: $FC
    rst RST_28                                    ; $5DBD: $EF
    rst RST_28                                    ; $5DBE: $EF
    ldh a, [$FFC0]                                ; $5DBF: $F0 $C0
    nop                                           ; $5DC1: $00
    ldh [$FFC0], a                                ; $5DC2: $E0 $C0
    ldh [rLCDC], a                                ; $5DC4: $E0 $40
    ld h, b                                       ; $5DC6: $60
    add b                                         ; $5DC7: $80
    or b                                          ; $5DC8: $B0
    ld h, b                                       ; $5DC9: $60
    db $10                                        ; $5DCA: $10
    ldh [$FFF0], a                                ; $5DCB: $E0 $F0
    nop                                           ; $5DCD: $00
    db $10                                        ; $5DCE: $10
    ldh [$FFE0], a                                ; $5DCF: $E0 $E0
    nop                                           ; $5DD1: $00
    jr nc, jr_013_5D94                            ; $5DD2: $30 $C0

    jr z, jr_013_5DA6                             ; $5DD4: $28 $D0

    rla                                           ; $5DD6: $17
    add sp, $17                                   ; $5DD7: $E8 $17
    db $EB                                        ; $5DD9: $EB
    rst RST_30                                    ; $5DDA: $F7
    dec bc                                        ; $5DDB: $0B
    rrca                                          ; $5DDC: $0F
    or $2F                                        ; $5DDD: $F6 $2F
    sub $FC                                       ; $5DDF: $D6 $FC
    nop                                           ; $5DE1: $00
    jp nz, $9EBC                                  ; $5DE2: $C2 $BC $9E

    ld h, b                                       ; $5DE5: $60
    inc a                                         ; $5DE6: $3C
    ret nz                                        ; $5DE7: $C0

    ld a, $C0                                     ; $5DE8: $3E $C0
    ld h, $C0                                     ; $5DEA: $26 $C0
    ret nc                                        ; $5DEC: $D0

    jr nz, jr_013_5E1F                            ; $5DED: $20 $30

    nop                                           ; $5DEF: $00
    nop                                           ; $5DF0: $00
    nop                                           ; $5DF1: $00
    nop                                           ; $5DF2: $00
    nop                                           ; $5DF3: $00
    nop                                           ; $5DF4: $00
    nop                                           ; $5DF5: $00
    nop                                           ; $5DF6: $00
    nop                                           ; $5DF7: $00
    nop                                           ; $5DF8: $00
    nop                                           ; $5DF9: $00
    nop                                           ; $5DFA: $00
    nop                                           ; $5DFB: $00
    nop                                           ; $5DFC: $00
    nop                                           ; $5DFD: $00
    nop                                           ; $5DFE: $00
    nop                                           ; $5DFF: $00
    ld bc, $0300                                  ; $5E00: $01 $00 $03
    ld bc, $0103                                  ; $5E03: $01 $03 $01
    inc bc                                        ; $5E06: $03
    ld bc, $0307                                  ; $5E07: $01 $07 $03
    rlca                                          ; $5E0A: $07
    inc bc                                        ; $5E0B: $03
    rrca                                          ; $5E0C: $0F
    inc bc                                        ; $5E0D: $03
    rra                                           ; $5E0E: $1F
    dec bc                                        ; $5E0F: $0B
    ccf                                           ; $5E10: $3F
    rra                                           ; $5E11: $1F
    ccf                                           ; $5E12: $3F
    rra                                           ; $5E13: $1F
    ld a, a                                       ; $5E14: $7F
    ccf                                           ; $5E15: $3F
    ld a, a                                       ; $5E16: $7F
    ccf                                           ; $5E17: $3F
    rst RST_38                                    ; $5E18: $FF
    ld h, b                                       ; $5E19: $60
    ld [$FF55], a                                 ; $5E1A: $EA $55 $FF
    nop                                           ; $5E1D: $00
    nop                                           ; $5E1E: $00

jr_013_5E1F:
    nop                                           ; $5E1F: $00
    ldh a, [rIE]                                  ; $5E20: $F0 $FF
    ldh a, [$FF7F]                                ; $5E22: $F0 $7F
    ldh a, [$FF7F]                                ; $5E24: $F0 $7F
    ldh a, [rIE]                                  ; $5E26: $F0 $FF
    ldh [rIE], a                                  ; $5E28: $E0 $FF
    ldh a, [rIE]                                  ; $5E2A: $F0 $FF
    ld hl, sp-$09                                 ; $5E2C: $F8 $F7
    db $FD                                        ; $5E2E: $FD
    ld a, [$F8FF]                                 ; $5E2F: $FA $FF $F8
    jp hl                                         ; $5E32: $E9


    ldh a, [$FFC9]                                ; $5E33: $F0 $C9
    ldh a, [$FF91]                                ; $5E35: $F0 $91
    ldh [$FFE1], a                                ; $5E37: $E0 $E1
    ret nz                                        ; $5E39: $C0

    db $E3                                        ; $5E3A: $E3
    pop bc                                        ; $5E3B: $C1
    jp $8381                                      ; $5E3C: $C3 $81 $83


    ld bc, $D62F                                  ; $5E3F: $01 $2F $D6
    cpl                                           ; $5E42: $2F
    sub $5E                                       ; $5E43: $D6 $5E
    and b                                         ; $5E45: $A0
    ld e, h                                       ; $5E46: $5C
    xor b                                         ; $5E47: $A8
    cp [hl]                                       ; $5E48: $BE
    ld e, h                                       ; $5E49: $5C
    ld a, d                                       ; $5E4A: $7A
    cp h                                          ; $5E4B: $BC
    ld sp, hl                                     ; $5E4C: $F9
    ld a, [hl]                                    ; $5E4D: $7E
    db $FD                                        ; $5E4E: $FD
    cp $FD                                        ; $5E4F: $FE $FD
    ld a, [hl]                                    ; $5E51: $7E
    cp $BC                                        ; $5E52: $FE $BC
    cp $FC                                        ; $5E54: $FE $FC
    db $FC                                        ; $5E56: $FC
    ld hl, sp-$02                                 ; $5E57: $F8 $FE
    ldh [$FFE5], a                                ; $5E59: $E0 $E5
    jp c, Jump_000_00FF                           ; $5E5B: $DA $FF $00

    nop                                           ; $5E5E: $00
    nop                                           ; $5E5F: $00
    add c                                         ; $5E60: $81
    nop                                           ; $5E61: $00
    add b                                         ; $5E62: $80
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
    nop                                           ; $5E7C: $00
    nop                                           ; $5E7D: $00
    nop                                           ; $5E7E: $00
    nop                                           ; $5E7F: $00
    nop                                           ; $5E80: $00
    nop                                           ; $5E81: $00
    nop                                           ; $5E82: $00
    nop                                           ; $5E83: $00
    nop                                           ; $5E84: $00
    nop                                           ; $5E85: $00
    nop                                           ; $5E86: $00
    nop                                           ; $5E87: $00
    nop                                           ; $5E88: $00
    nop                                           ; $5E89: $00
    nop                                           ; $5E8A: $00
    nop                                           ; $5E8B: $00
    nop                                           ; $5E8C: $00
    nop                                           ; $5E8D: $00
    rlca                                          ; $5E8E: $07
    nop                                           ; $5E8F: $00
    rrca                                          ; $5E90: $0F
    rlca                                          ; $5E91: $07
    rra                                           ; $5E92: $1F
    rrca                                          ; $5E93: $0F
    ccf                                           ; $5E94: $3F
    rra                                           ; $5E95: $1F
    ld a, a                                       ; $5E96: $7F
    rra                                           ; $5E97: $1F
    sbc a                                         ; $5E98: $9F
    ld l, a                                       ; $5E99: $6F
    ld l, a                                       ; $5E9A: $6F
    sub a                                         ; $5E9B: $97
    rst RST_10                                    ; $5E9C: $D7
    inc hl                                        ; $5E9D: $23
    ld h, e                                       ; $5E9E: $63
    nop                                           ; $5E9F: $00
    adc a                                         ; $5EA0: $8F
    rlca                                          ; $5EA1: $07
    rst RST_38                                    ; $5EA2: $FF
    add a                                         ; $5EA3: $87
    rst RST_38                                    ; $5EA4: $FF
    cp e                                          ; $5EA5: $BB
    rst RST_38                                    ; $5EA6: $FF
    rst RST_38                                    ; $5EA7: $FF
    rst RST_38                                    ; $5EA8: $FF
    rst RST_38                                    ; $5EA9: $FF
    rst RST_38                                    ; $5EAA: $FF
    rst RST_38                                    ; $5EAB: $FF
    rst RST_38                                    ; $5EAC: $FF
    rst RST_38                                    ; $5EAD: $FF
    rst RST_38                                    ; $5EAE: $FF
    ld hl, sp-$05                                 ; $5EAF: $F8 $FB
    ld bc, $0003                                  ; $5EB1: $01 $03 $00
    rlca                                          ; $5EB4: $07
    inc bc                                        ; $5EB5: $03
    rlca                                          ; $5EB6: $07
    inc bc                                        ; $5EB7: $03
    rlca                                          ; $5EB8: $07
    inc bc                                        ; $5EB9: $03
    rlca                                          ; $5EBA: $07
    inc bc                                        ; $5EBB: $03
    inc bc                                        ; $5EBC: $03
    ld bc, $0001                                  ; $5EBD: $01 $01 $00
    rlca                                          ; $5EC0: $07
    nop                                           ; $5EC1: $00
    rlca                                          ; $5EC2: $07
    inc bc                                        ; $5EC3: $03
    ld a, a                                       ; $5EC4: $7F
    rlca                                          ; $5EC5: $07
    rst RST_38                                    ; $5EC6: $FF
    ld a, b                                       ; $5EC7: $78
    rst RST_38                                    ; $5EC8: $FF
    add a                                         ; $5EC9: $87
    rst RST_38                                    ; $5ECA: $FF
    rst RST_38                                    ; $5ECB: $FF
    rst RST_38                                    ; $5ECC: $FF
    rst RST_38                                    ; $5ECD: $FF
    rst RST_38                                    ; $5ECE: $FF
    rst RST_38                                    ; $5ECF: $FF

jr_013_5ED0:
    rst RST_38                                    ; $5ED0: $FF
    rst RST_38                                    ; $5ED1: $FF
    rst RST_38                                    ; $5ED2: $FF
    rst RST_38                                    ; $5ED3: $FF
    di                                            ; $5ED4: $F3
    rst RST_28                                    ; $5ED5: $EF
    ld sp, hl                                     ; $5ED6: $F9
    rst RST_00                                    ; $5ED7: $C7
    rst RST_38                                    ; $5ED8: $FF
    jr c, jr_013_5ED0                             ; $5ED9: $38 $F5

    ld hl, sp-$0B                                 ; $5EDB: $F8 $F5
    ld hl, sp-$1C                                 ; $5EDD: $F8 $E4
    ld hl, sp-$01                                 ; $5EDF: $F8 $FF
    cp $FF                                        ; $5EE1: $FE $FF
    rst RST_38                                    ; $5EE3: $FF
    rst RST_38                                    ; $5EE4: $FF
    ld b, $FF                                     ; $5EE5: $06 $FF
    rst RST_38                                    ; $5EE7: $FF
    rst RST_38                                    ; $5EE8: $FF
    rst RST_38                                    ; $5EE9: $FF
    rst RST_38                                    ; $5EEA: $FF
    rst RST_38                                    ; $5EEB: $FF
    rst RST_38                                    ; $5EEC: $FF
    rst RST_38                                    ; $5EED: $FF
    rst RST_38                                    ; $5EEE: $FF
    rst RST_38                                    ; $5EEF: $FF
    rst RST_38                                    ; $5EF0: $FF
    rst RST_38                                    ; $5EF1: $FF
    rst RST_38                                    ; $5EF2: $FF
    db $FD                                        ; $5EF3: $FD
    rst RST_38                                    ; $5EF4: $FF
    cp $FF                                        ; $5EF5: $FE $FF
    cp $FF                                        ; $5EF7: $FE $FF
    rst RST_38                                    ; $5EF9: $FF
    rst RST_38                                    ; $5EFA: $FF
    rst RST_38                                    ; $5EFB: $FF
    rst RST_38                                    ; $5EFC: $FF
    rst RST_38                                    ; $5EFD: $FF
    rst RST_38                                    ; $5EFE: $FF
    ld a, [hl]                                    ; $5EFF: $7E
    nop                                           ; $5F00: $00
    nop                                           ; $5F01: $00
    add b                                         ; $5F02: $80
    nop                                           ; $5F03: $00
    ret nz                                        ; $5F04: $C0

    nop                                           ; $5F05: $00
    ldh a, [$FFC0]                                ; $5F06: $F0 $C0
    db $FC                                        ; $5F08: $FC
    ldh a, [$FFFE]                                ; $5F09: $F0 $FE
    db $FC                                        ; $5F0B: $FC
    rst RST_38                                    ; $5F0C: $FF
    ld a, $FF                                     ; $5F0D: $3E $FF
    ld a, [hl]                                    ; $5F0F: $7E
    rst RST_08                                    ; $5F10: $CF
    ld a, [hl]                                    ; $5F11: $7E
    cp a                                          ; $5F12: $BF
    adc $FE                                       ; $5F13: $CE $FE
    adc h                                         ; $5F15: $8C
    call c, $BCA8                                 ; $5F16: $DC $A8 $BC
    ld e, b                                       ; $5F19: $58
    ld hl, sp+$40                                 ; $5F1A: $F8 $40
    ret nz                                        ; $5F1C: $C0

    nop                                           ; $5F1D: $00
    nop                                           ; $5F1E: $00
    nop                                           ; $5F1F: $00
    nop                                           ; $5F20: $00
    nop                                           ; $5F21: $00
    nop                                           ; $5F22: $00
    nop                                           ; $5F23: $00
    nop                                           ; $5F24: $00
    nop                                           ; $5F25: $00
    nop                                           ; $5F26: $00
    nop                                           ; $5F27: $00
    nop                                           ; $5F28: $00
    nop                                           ; $5F29: $00
    nop                                           ; $5F2A: $00
    nop                                           ; $5F2B: $00
    nop                                           ; $5F2C: $00
    nop                                           ; $5F2D: $00
    inc bc                                        ; $5F2E: $03
    nop                                           ; $5F2F: $00
    rrca                                          ; $5F30: $0F
    inc bc                                        ; $5F31: $03
    rra                                           ; $5F32: $1F
    rrca                                          ; $5F33: $0F
    ccf                                           ; $5F34: $3F
    rra                                           ; $5F35: $1F
    ccf                                           ; $5F36: $3F
    rra                                           ; $5F37: $1F
    ccf                                           ; $5F38: $3F
    rra                                           ; $5F39: $1F
    ccf                                           ; $5F3A: $3F
    rra                                           ; $5F3B: $1F
    rra                                           ; $5F3C: $1F
    rrca                                          ; $5F3D: $0F
    rrca                                          ; $5F3E: $0F
    rlca                                          ; $5F3F: $07
    nop                                           ; $5F40: $00
    nop                                           ; $5F41: $00
    nop                                           ; $5F42: $00
    nop                                           ; $5F43: $00
    nop                                           ; $5F44: $00
    nop                                           ; $5F45: $00
    nop                                           ; $5F46: $00
    nop                                           ; $5F47: $00
    nop                                           ; $5F48: $00
    nop                                           ; $5F49: $00
    nop                                           ; $5F4A: $00
    nop                                           ; $5F4B: $00
    ld hl, sp+$00                                 ; $5F4C: $F8 $00
    or $E8                                        ; $5F4E: $F6 $E8
    ld sp, hl                                     ; $5F50: $F9
    or $FD                                        ; $5F51: $F6 $FD
    ld a, [$FAFD]                                 ; $5F53: $FA $FD $FA
    cp $38                                        ; $5F56: $FE $38
    ld a, [$FCC4]                                 ; $5F58: $FA $C4 $FC

jr_013_5F5B:
    ldh [$FFFE], a                                ; $5F5B: $E0 $FE
    db $FC                                        ; $5F5D: $FC
    rst RST_38                                    ; $5F5E: $FF
    cp $00                                        ; $5F5F: $FE $00
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
    nop                                           ; $5F76: $00
    nop                                           ; $5F77: $00
    nop                                           ; $5F78: $00
    nop                                           ; $5F79: $00
    inc bc                                        ; $5F7A: $03
    nop                                           ; $5F7B: $00
    rlca                                          ; $5F7C: $07
    inc bc                                        ; $5F7D: $03
    rrca                                          ; $5F7E: $0F
    rlca                                          ; $5F7F: $07
    add sp, -$10                                  ; $5F80: $E8 $F0
    ld hl, sp-$10                                 ; $5F82: $F8 $F0
    ld sp, hl                                     ; $5F84: $F9
    ldh a, [$FFF9]                                ; $5F85: $F0 $F9
    ldh [$FFE9], a                                ; $5F87: $E0 $E9
    ret nc                                        ; $5F89: $D0

    push hl                                       ; $5F8A: $E5
    ld e, b                                       ; $5F8B: $58
    ld a, a                                       ; $5F8C: $7F
    ld bc, $0103                                  ; $5F8D: $01 $03 $01
    inc bc                                        ; $5F90: $03
    ld bc, $0205                                  ; $5F91: $01 $05 $02
    add hl, bc                                    ; $5F94: $09
    ld b, $0E                                     ; $5F95: $06 $0E
    ld bc, $0304                                  ; $5F97: $01 $04 $03
    rlca                                          ; $5F9A: $07
    nop                                           ; $5F9B: $00
    nop                                           ; $5F9C: $00
    nop                                           ; $5F9D: $00
    nop                                           ; $5F9E: $00
    nop                                           ; $5F9F: $00
    rst RST_38                                    ; $5FA0: $FF
    ld a, [hl]                                    ; $5FA1: $7E
    rst RST_38                                    ; $5FA2: $FF
    ld a, [hl]                                    ; $5FA3: $7E
    rst RST_38                                    ; $5FA4: $FF
    cp $FF                                        ; $5FA5: $FE $FF
    cp $FF                                        ; $5FA7: $FE $FF
    cp $FE                                        ; $5FA9: $FE $FE
    db $FC                                        ; $5FAB: $FC
    cp $FC                                        ; $5FAC: $FE $FC
    cp $FC                                        ; $5FAE: $FE $FC
    db $FC                                        ; $5FB0: $FC
    ld hl, sp-$04                                 ; $5FB1: $F8 $FC
    ld a, b                                       ; $5FB3: $78
    ld a, b                                       ; $5FB4: $78
    add b                                         ; $5FB5: $80
    ld d, b                                       ; $5FB6: $50
    and b                                         ; $5FB7: $A0
    ret nc                                        ; $5FB8: $D0

    jr nz, jr_013_5F5B                            ; $5FB9: $20 $A0

    ld b, b                                       ; $5FBB: $40
    ret nz                                        ; $5FBC: $C0

    nop                                           ; $5FBD: $00
    nop                                           ; $5FBE: $00
    nop                                           ; $5FBF: $00
    ld bc, $0100                                  ; $5FC0: $01 $00 $01
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
    nop                                           ; $5FD0: $00
    nop                                           ; $5FD1: $00
    nop                                           ; $5FD2: $00
    nop                                           ; $5FD3: $00
    nop                                           ; $5FD4: $00
    nop                                           ; $5FD5: $00
    nop                                           ; $5FD6: $00
    nop                                           ; $5FD7: $00
    nop                                           ; $5FD8: $00
    nop                                           ; $5FD9: $00
    nop                                           ; $5FDA: $00
    nop                                           ; $5FDB: $00
    nop                                           ; $5FDC: $00
    nop                                           ; $5FDD: $00
    nop                                           ; $5FDE: $00
    nop                                           ; $5FDF: $00
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
    ld bc, $0300                                  ; $5FEC: $01 $00 $03
    ld bc, $0103                                  ; $5FEF: $01 $03 $01
    inc bc                                        ; $5FF2: $03
    nop                                           ; $5FF3: $00
    ld b, $03                                     ; $5FF4: $06 $03
    inc b                                         ; $5FF6: $04
    inc bc                                        ; $5FF7: $03
    rlca                                          ; $5FF8: $07
    nop                                           ; $5FF9: $00
    inc b                                         ; $5FFA: $04
    inc bc                                        ; $5FFB: $03
    inc bc                                        ; $5FFC: $03
    ld bc, $0001                                  ; $5FFD: $01 $01 $00
    nop                                           ; $6000: $00
    nop                                           ; $6001: $00
    nop                                           ; $6002: $00
    nop                                           ; $6003: $00
    nop                                           ; $6004: $00
    nop                                           ; $6005: $00
    nop                                           ; $6006: $00
    nop                                           ; $6007: $00
    nop                                           ; $6008: $00
    nop                                           ; $6009: $00
    inc a                                         ; $600A: $3C
    nop                                           ; $600B: $00
    ld a, [hl]                                    ; $600C: $7E
    inc a                                         ; $600D: $3C
    rst RST_38                                    ; $600E: $FF
    ld a, [hl]                                    ; $600F: $7E
    rst RST_38                                    ; $6010: $FF
    rst RST_38                                    ; $6011: $FF
    rst RST_28                                    ; $6012: $EF
    rra                                           ; $6013: $1F
    ld l, a                                       ; $6014: $6F
    sbc a                                         ; $6015: $9F
    rst RST_18                                    ; $6016: $DF
    dec sp                                        ; $6017: $3B
    ccf                                           ; $6018: $3F
    ldh a, [$FFBF]                                ; $6019: $F0 $BF
    ld c, a                                       ; $601B: $4F
    ld a, a                                       ; $601C: $7F
    cp a                                          ; $601D: $BF
    rst RST_38                                    ; $601E: $FF
    cp a                                          ; $601F: $BF
    add b                                         ; $6020: $80
    nop                                           ; $6021: $00
    add b                                         ; $6022: $80
    nop                                           ; $6023: $00
    ldh [$FF80], a                                ; $6024: $E0 $80
    ld hl, sp-$20                                 ; $6026: $F8 $E0
    db $FC                                        ; $6028: $FC
    ld hl, sp-$04                                 ; $6029: $F8 $FC
    ld hl, sp-$02                                 ; $602B: $F8 $FE
    db $FC                                        ; $602D: $FC
    cp $FC                                        ; $602E: $FE $FC
    rst RST_38                                    ; $6030: $FF
    sbc $FF                                       ; $6031: $DE $FF
    rst RST_18                                    ; $6033: $DF
    rst RST_38                                    ; $6034: $FF
    rst RST_18                                    ; $6035: $DF
    rst RST_38                                    ; $6036: $FF
    cp a                                          ; $6037: $BF
    rst RST_38                                    ; $6038: $FF
    cp a                                          ; $6039: $BF
    rst RST_18                                    ; $603A: $DF
    ccf                                           ; $603B: $3F
    rst RST_18                                    ; $603C: $DF
    cp [hl]                                       ; $603D: $BE
    rst RST_00                                    ; $603E: $C7
    cp [hl]                                       ; $603F: $BE
    ldh a, [rP1]                                  ; $6040: $F0 $00
    db $FC                                        ; $6042: $FC
    ldh a, [$FFFE]                                ; $6043: $F0 $FE
    db $FC                                        ; $6045: $FC
    cp $FC                                        ; $6046: $FE $FC
    rst RST_38                                    ; $6048: $FF
    ld a, [hl]                                    ; $6049: $7E
    rst RST_38                                    ; $604A: $FF
    ld a, [hl]                                    ; $604B: $7E
    rst RST_38                                    ; $604C: $FF
    cp $FF                                        ; $604D: $FE $FF
    cp $FE                                        ; $604F: $FE $FE
    db $FC                                        ; $6051: $FC
    cp $F8                                        ; $6052: $FE $F8
    db $FC                                        ; $6054: $FC
    ld hl, sp-$08                                 ; $6055: $F8 $F8
    or b                                          ; $6057: $B0
    ld hl, sp-$40                                 ; $6058: $F8 $C0
    ld hl, sp-$10                                 ; $605A: $F8 $F0
    ld hl, sp-$10                                 ; $605C: $F8 $F0
    ld hl, sp-$10                                 ; $605E: $F8 $F0
    rst RST_38                                    ; $6060: $FF
    ccf                                           ; $6061: $3F
    ld a, a                                       ; $6062: $7F
    ccf                                           ; $6063: $3F
    ld a, a                                       ; $6064: $7F
    rra                                           ; $6065: $1F
    ld a, a                                       ; $6066: $7F
    rra                                           ; $6067: $1F
    ld a, a                                       ; $6068: $7F
    cpl                                           ; $6069: $2F
    ld a, a                                       ; $606A: $7F
    ccf                                           ; $606B: $3F
    ccf                                           ; $606C: $3F
    rra                                           ; $606D: $1F
    ccf                                           ; $606E: $3F
    rra                                           ; $606F: $1F
    ccf                                           ; $6070: $3F
    rra                                           ; $6071: $1F
    rra                                           ; $6072: $1F
    rrca                                          ; $6073: $0F
    rra                                           ; $6074: $1F
    rrca                                          ; $6075: $0F
    rra                                           ; $6076: $1F
    rrca                                          ; $6077: $0F
    rrca                                          ; $6078: $0F
    rlca                                          ; $6079: $07
    rlca                                          ; $607A: $07
    nop                                           ; $607B: $00
    ld [bc], a                                    ; $607C: $02
    ld bc, $0001                                  ; $607D: $01 $01 $00
    db $E3                                        ; $6080: $E3
    sbc l                                         ; $6081: $9D
    rst RST_18                                    ; $6082: $DF
    add c                                         ; $6083: $81
    rst RST_20                                    ; $6084: $E7
    jp $C3E7                                      ; $6085: $C3 $E7 $C3


    rst RST_38                                    ; $6088: $FF
    add e                                         ; $6089: $83
    and a                                         ; $608A: $A7
    ld e, e                                       ; $608B: $5B
    rra                                           ; $608C: $1F
    db $E3                                        ; $608D: $E3
    rra                                           ; $608E: $1F
    db $E3                                        ; $608F: $E3
    rst RST_00                                    ; $6090: $C7
    dec sp                                        ; $6091: $3B
    ccf                                           ; $6092: $3F
    nop                                           ; $6093: $00
    dec d                                         ; $6094: $15
    ld a, [bc]                                    ; $6095: $0A
    rra                                           ; $6096: $1F
    nop                                           ; $6097: $00
    nop                                           ; $6098: $00
    nop                                           ; $6099: $00
    nop                                           ; $609A: $00
    nop                                           ; $609B: $00
    nop                                           ; $609C: $00
    nop                                           ; $609D: $00
    nop                                           ; $609E: $00
    nop                                           ; $609F: $00
    ldh a, [$FFE0]                                ; $60A0: $F0 $E0
    ldh a, [$FFE0]                                ; $60A2: $F0 $E0
    ldh [rP1], a                                  ; $60A4: $E0 $00
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
    nop                                           ; $60BC: $00
    nop                                           ; $60BD: $00
    nop                                           ; $60BE: $00
    nop                                           ; $60BF: $00
    rst RST_38                                    ; $60C0: $FF
    nop                                           ; $60C1: $00
    add a                                         ; $60C2: $87
    ld a, e                                       ; $60C3: $7B
    ld [hl], e                                    ; $60C4: $73
    dec c                                         ; $60C5: $0D
    add hl, bc                                    ; $60C6: $09
    ld b, $7F                                     ; $60C7: $06 $7F
    ld bc, $3D43                                  ; $60C9: $01 $43 $3D
    dec sp                                        ; $60CC: $3B
    dec b                                         ; $60CD: $05
    ld hl, $3E1E                                  ; $60CE: $21 $1E $3E
    ld bc, $020D                                  ; $60D1: $01 $0D $02
    ld a, [bc]                                    ; $60D4: $0A
    inc b                                         ; $60D5: $04
    inc b                                         ; $60D6: $04
    nop                                           ; $60D7: $00
    nop                                           ; $60D8: $00
    nop                                           ; $60D9: $00
    nop                                           ; $60DA: $00
    nop                                           ; $60DB: $00
    nop                                           ; $60DC: $00
    nop                                           ; $60DD: $00
    nop                                           ; $60DE: $00
    nop                                           ; $60DF: $00
    dec c                                         ; $60E0: $0D
    ld [bc], a                                    ; $60E1: $02
    dec de                                        ; $60E2: $1B
    inc c                                         ; $60E3: $0C
    db $10                                        ; $60E4: $10
    rrca                                          ; $60E5: $0F
    ld e, $01                                     ; $60E6: $1E $01
    inc de                                        ; $60E8: $13
    inc c                                         ; $60E9: $0C
    ccf                                           ; $60EA: $3F
    inc bc                                        ; $60EB: $03
    rst RST_38                                    ; $60EC: $FF
    dec sp                                        ; $60ED: $3B
    rst RST_38                                    ; $60EE: $FF
    rst RST_30                                    ; $60EF: $F7
    rst RST_38                                    ; $60F0: $FF
    rst RST_00                                    ; $60F1: $C7
    rst RST_38                                    ; $60F2: $FF
    dec sp                                        ; $60F3: $3B
    rst RST_38                                    ; $60F4: $FF
    rst RST_38                                    ; $60F5: $FF
    rst RST_38                                    ; $60F6: $FF
    rst RST_38                                    ; $60F7: $FF
    rst RST_38                                    ; $60F8: $FF
    rst RST_38                                    ; $60F9: $FF
    rst RST_38                                    ; $60FA: $FF
    rst RST_38                                    ; $60FB: $FF
    rst RST_38                                    ; $60FC: $FF
    ld a, h                                       ; $60FD: $7C
    db $FC                                        ; $60FE: $FC
    nop                                           ; $60FF: $00
    cp $FC                                        ; $6100: $FE $FC
    cp a                                          ; $6102: $BF
    ld a, [hl]                                    ; $6103: $7E
    cp a                                          ; $6104: $BF
    ld a, a                                       ; $6105: $7F
    ld a, a                                       ; $6106: $7F
    rst RST_28                                    ; $6107: $EF
    rst RST_38                                    ; $6108: $FF
    rst RST_28                                    ; $6109: $EF
    rst RST_38                                    ; $610A: $FF
    rlca                                          ; $610B: $07
    rst RST_38                                    ; $610C: $FF
    ei                                            ; $610D: $FB
    rst RST_38                                    ; $610E: $FF
    rst RST_38                                    ; $610F: $FF
    rst RST_38                                    ; $6110: $FF
    rst RST_38                                    ; $6111: $FF
    rst RST_38                                    ; $6112: $FF
    rst RST_38                                    ; $6113: $FF
    rst RST_38                                    ; $6114: $FF
    rst RST_38                                    ; $6115: $FF
    rst RST_38                                    ; $6116: $FF
    ei                                            ; $6117: $FB
    ei                                            ; $6118: $FB
    rst RST_30                                    ; $6119: $F7
    ldh a, [$FFCF]                                ; $611A: $F0 $CF
    ret z                                         ; $611C: $C8

    add a                                         ; $611D: $87
    add a                                         ; $611E: $87
    nop                                           ; $611F: $00
    nop                                           ; $6120: $00
    nop                                           ; $6121: $00
    nop                                           ; $6122: $00
    nop                                           ; $6123: $00
    add b                                         ; $6124: $80
    nop                                           ; $6125: $00
    ldh [$FF80], a                                ; $6126: $E0 $80
    ld hl, sp-$20                                 ; $6128: $F8 $E0
    rst RST_38                                    ; $612A: $FF
    ld hl, sp-$01                                 ; $612B: $F8 $FF
    rst RST_38                                    ; $612D: $FF
    rst RST_38                                    ; $612E: $FF
    rst RST_38                                    ; $612F: $FF
    rst RST_38                                    ; $6130: $FF
    rst RST_38                                    ; $6131: $FF
    rst RST_38                                    ; $6132: $FF
    rst RST_38                                    ; $6133: $FF
    rst RST_38                                    ; $6134: $FF
    db $FD                                        ; $6135: $FD
    rst RST_38                                    ; $6136: $FF
    ei                                            ; $6137: $FB
    rst RST_20                                    ; $6138: $E7
    ei                                            ; $6139: $FB
    dec c                                         ; $613A: $0D
    di                                            ; $613B: $F3
    ld [hl-], a                                   ; $613C: $32
    pop bc                                        ; $613D: $C1
    pop bc                                        ; $613E: $C1
    nop                                           ; $613F: $00
    add b                                         ; $6140: $80
    nop                                           ; $6141: $00
    db $E3                                        ; $6142: $E3
    add b                                         ; $6143: $80
    rst RST_38                                    ; $6144: $FF
    db $E3                                        ; $6145: $E3
    rst RST_38                                    ; $6146: $FF
    rst RST_28                                    ; $6147: $EF
    rst RST_38                                    ; $6148: $FF
    or $FF                                        ; $6149: $F6 $FF
    pop af                                        ; $614B: $F1
    rst RST_38                                    ; $614C: $FF
    rst RST_30                                    ; $614D: $F7
    rst RST_38                                    ; $614E: $FF
    rst RST_38                                    ; $614F: $FF
    rst RST_38                                    ; $6150: $FF
    rst RST_38                                    ; $6151: $FF
    rst RST_38                                    ; $6152: $FF
    rst RST_38                                    ; $6153: $FF
    ccf                                           ; $6154: $3F
    rst RST_38                                    ; $6155: $FF
    rst RST_08                                    ; $6156: $CF
    ccf                                           ; $6157: $3F
    ccf                                           ; $6158: $3F
    nop                                           ; $6159: $00
    nop                                           ; $615A: $00
    nop                                           ; $615B: $00
    nop                                           ; $615C: $00
    nop                                           ; $615D: $00
    nop                                           ; $615E: $00
    nop                                           ; $615F: $00
    nop                                           ; $6160: $00
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
    ld bc, $0700                                  ; $6178: $01 $00 $07
    ld bc, $070F                                  ; $617B: $01 $0F $07
    rrca                                          ; $617E: $0F
    inc b                                         ; $617F: $04
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
    nop                                           ; $6198: $00
    nop                                           ; $6199: $00
    ldh a, [rP1]                                  ; $619A: $F0 $00
    ld hl, sp-$10                                 ; $619C: $F8 $F0
    db $FC                                        ; $619E: $FC
    ld hl, sp-$80                                 ; $619F: $F8 $80
    nop                                           ; $61A1: $00
    ret nz                                        ; $61A2: $C0

    add b                                         ; $61A3: $80
    ldh [rP1], a                                  ; $61A4: $E0 $00
    ldh a, [$FFE0]                                ; $61A6: $F0 $E0
    ld hl, sp-$10                                 ; $61A8: $F8 $F0
    ld hl, sp-$10                                 ; $61AA: $F8 $F0
    db $F4                                        ; $61AC: $F4
    add sp, -$06                                  ; $61AD: $E8 $FA
    db $F4                                        ; $61AF: $F4
    or $C8                                        ; $61B0: $F6 $C8
    ret                                           ; $61B2: $C9


    ld b, $06                                     ; $61B3: $06 $06
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
    nop                                           ; $61C0: $00
    nop                                           ; $61C1: $00
    inc bc                                        ; $61C2: $03
    nop                                           ; $61C3: $00
    rlca                                          ; $61C4: $07
    inc bc                                        ; $61C5: $03
    rlca                                          ; $61C6: $07
    ld [bc], a                                    ; $61C7: $02
    ld b, $01                                     ; $61C8: $06 $01
    dec c                                         ; $61CA: $0D
    ld b, $08                                     ; $61CB: $06 $08
    rlca                                          ; $61CD: $07
    rrca                                          ; $61CE: $0F
    nop                                           ; $61CF: $00
    ld [$0707], sp                                ; $61D0: $08 $07 $07
    inc bc                                        ; $61D3: $03
    rlca                                          ; $61D4: $07
    nop                                           ; $61D5: $00
    rlca                                          ; $61D6: $07
    inc bc                                        ; $61D7: $03
    rrca                                          ; $61D8: $0F
    rlca                                          ; $61D9: $07
    rrca                                          ; $61DA: $0F
    ld b, $1F                                     ; $61DB: $06 $1F
    dec c                                         ; $61DD: $0D
    ccf                                           ; $61DE: $3F
    dec c                                         ; $61DF: $0D
    rst RST_38                                    ; $61E0: $FF
    ld a, a                                       ; $61E1: $7F
    rst RST_38                                    ; $61E2: $FF
    ld a, a                                       ; $61E3: $7F
    rst RST_38                                    ; $61E4: $FF
    ld a, a                                       ; $61E5: $7F
    rst RST_38                                    ; $61E6: $FF
    ld a, $FF                                     ; $61E7: $3E $FF
    cp $FF                                        ; $61E9: $FE $FF
    db $FC                                        ; $61EB: $FC
    cp $FC                                        ; $61EC: $FE $FC
    db $FC                                        ; $61EE: $FC
    ld hl, sp-$04                                 ; $61EF: $F8 $FC
    ld hl, sp-$08                                 ; $61F1: $F8 $F8
    ldh a, [$FFF8]                                ; $61F3: $F0 $F8
    ldh a, [$FFF0]                                ; $61F5: $F0 $F0
    ldh [$FFE0], a                                ; $61F7: $E0 $E0
    ret nz                                        ; $61F9: $C0

    ldh [$FFC0], a                                ; $61FA: $E0 $C0
    ret nz                                        ; $61FC: $C0

    add b                                         ; $61FD: $80
    add b                                         ; $61FE: $80
    nop                                           ; $61FF: $00
    nop                                           ; $6200: $00
    nop                                           ; $6201: $00
    nop                                           ; $6202: $00
    nop                                           ; $6203: $00
    add e                                         ; $6204: $83
    nop                                           ; $6205: $00
    rst RST_38                                    ; $6206: $FF
    add e                                         ; $6207: $83
    rst RST_38                                    ; $6208: $FF
    rst RST_38                                    ; $6209: $FF
    rst RST_38                                    ; $620A: $FF
    db $FC                                        ; $620B: $FC
    rst RST_38                                    ; $620C: $FF
    ei                                            ; $620D: $FB
    rst RST_38                                    ; $620E: $FF
    rst RST_30                                    ; $620F: $F7
    rst RST_38                                    ; $6210: $FF
    rst RST_30                                    ; $6211: $F7
    rst RST_28                                    ; $6212: $EF
    rst RST_30                                    ; $6213: $F7
    rst RST_08                                    ; $6214: $CF
    or a                                          ; $6215: $B7
    rst RST_00                                    ; $6216: $C7
    cp e                                          ; $6217: $BB
    adc e                                         ; $6218: $8B
    ld [hl], b                                    ; $6219: $70
    ld sp, $C2C0                                  ; $621A: $31 $C0 $C2
    ld bc, $0003                                  ; $621D: $01 $03 $00
    nop                                           ; $6220: $00
    nop                                           ; $6221: $00
    ldh a, [rP1]                                  ; $6222: $F0 $00
    db $FC                                        ; $6224: $FC
    ldh a, [$FFFE]                                ; $6225: $F0 $FE
    db $FC                                        ; $6227: $FC
    cp $FC                                        ; $6228: $FE $FC
    rst RST_38                                    ; $622A: $FF
    ld a, [hl]                                    ; $622B: $7E
    rst RST_38                                    ; $622C: $FF
    cp $FF                                        ; $622D: $FE $FF
    cp $FF                                        ; $622F: $FE $FF
    and $FE                                       ; $6231: $E6 $FE
    ld hl, sp-$02                                 ; $6233: $F8 $FE
    db $FC                                        ; $6235: $FC
    rst RST_38                                    ; $6236: $FF
    cp $FF                                        ; $6237: $FE $FF
    cp $FF                                        ; $6239: $FE $FF
    ld a, $BE                                     ; $623B: $3E $BE
    ld e, b                                       ; $623D: $58
    ld hl, sp+$00                                 ; $623E: $F8 $00
    nop                                           ; $6240: $00
    nop                                           ; $6241: $00
    nop                                           ; $6242: $00
    nop                                           ; $6243: $00
    nop                                           ; $6244: $00
    nop                                           ; $6245: $00
    nop                                           ; $6246: $00
    nop                                           ; $6247: $00
    nop                                           ; $6248: $00
    nop                                           ; $6249: $00
    nop                                           ; $624A: $00
    nop                                           ; $624B: $00
    ld [hl], b                                    ; $624C: $70
    nop                                           ; $624D: $00
    db $FC                                        ; $624E: $FC
    ld [hl], b                                    ; $624F: $70
    cp $FC                                        ; $6250: $FE $FC
    rst RST_38                                    ; $6252: $FF
    cp $DF                                        ; $6253: $FE $DF
    ccf                                           ; $6255: $3F
    rst RST_18                                    ; $6256: $DF
    ccf                                           ; $6257: $3F
    cp a                                          ; $6258: $BF
    ld [hl], a                                    ; $6259: $77
    ld a, a                                       ; $625A: $7F
    rst RST_20                                    ; $625B: $E7
    ld a, a                                       ; $625C: $7F
    sbc a                                         ; $625D: $9F
    rst RST_38                                    ; $625E: $FF
    ccf                                           ; $625F: $3F
    ld e, a                                       ; $6260: $5F
    dec l                                         ; $6261: $2D
    adc a                                         ; $6262: $8F
    ld [hl], e                                    ; $6263: $73
    scf                                           ; $6264: $37
    set 7, a                                      ; $6265: $CB $FF
    rlca                                          ; $6267: $07
    rrca                                          ; $6268: $0F
    rst RST_30                                    ; $6269: $F7
    rst RST_28                                    ; $626A: $EF
    rla                                           ; $626B: $17
    add a                                         ; $626C: $87
    ld a, e                                       ; $626D: $7B
    ld a, e                                       ; $626E: $7B
    dec b                                         ; $626F: $05
    scf                                           ; $6270: $37
    ld [$1028], sp                                ; $6271: $08 $28 $10
    jr nc, jr_013_6276                            ; $6274: $30 $00

jr_013_6276:
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
    ld bc, $0200                                  ; $6280: $01 $00 $02
    ld bc, $0003                                  ; $6283: $01 $03 $00
    ld bc, $0000                                  ; $6286: $01 $00 $00
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
    nop                                           ; $62A0: $00
    nop                                           ; $62A1: $00
    nop                                           ; $62A2: $00
    nop                                           ; $62A3: $00
    nop                                           ; $62A4: $00
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
    ld c, $00                                     ; $62B8: $0E $00
    dec [hl]                                      ; $62BA: $35
    ld a, [bc]                                    ; $62BB: $0A
    ld d, l                                       ; $62BC: $55
    ld a, [hl+]                                   ; $62BD: $2A
    ld e, a                                       ; $62BE: $5F
    jr nz, jr_013_62C1                            ; $62BF: $20 $00

jr_013_62C1:
    nop                                           ; $62C1: $00
    nop                                           ; $62C2: $00
    nop                                           ; $62C3: $00
    nop                                           ; $62C4: $00
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
    ld a, b                                       ; $62DC: $78
    nop                                           ; $62DD: $00
    db $FC                                        ; $62DE: $FC
    ld a, b                                       ; $62DF: $78
    nop                                           ; $62E0: $00
    nop                                           ; $62E1: $00
    nop                                           ; $62E2: $00
    nop                                           ; $62E3: $00
    nop                                           ; $62E4: $00
    nop                                           ; $62E5: $00
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
    ld a, $00                                     ; $62F6: $3E $00
    ld b, l                                       ; $62F8: $45
    ld a, [hl-]                                   ; $62F9: $3A
    ld [hl], a                                    ; $62FA: $77
    ld [$738F], sp                                ; $62FB: $08 $8F $73
    cp a                                          ; $62FE: $BF
    ld c, a                                       ; $62FF: $4F
    and b                                         ; $6300: $A0
    ld b, b                                       ; $6301: $40
    ldh [rP1], a                                  ; $6302: $E0 $00
    ldh a, [$FF60]                                ; $6304: $F0 $60
    ld hl, sp-$10                                 ; $6306: $F8 $F0
    ld hl, sp-$10                                 ; $6308: $F8 $F0
    db $FC                                        ; $630A: $FC
    ld hl, sp-$04                                 ; $630B: $F8 $FC
    ld hl, sp-$02                                 ; $630D: $F8 $FE
    db $FC                                        ; $630F: $FC
    cp $FC                                        ; $6310: $FE $FC
    cp $FC                                        ; $6312: $FE $FC
    cp $FC                                        ; $6314: $FE $FC
    cp $FC                                        ; $6316: $FE $FC
    db $FC                                        ; $6318: $FC
    ld a, b                                       ; $6319: $78
    db $FC                                        ; $631A: $FC
    ld hl, sp-$08                                 ; $631B: $F8 $F8
    ret nz                                        ; $631D: $C0

    ret nz                                        ; $631E: $C0

    nop                                           ; $631F: $00
    ld a, [hl]                                    ; $6320: $7E
    dec l                                         ; $6321: $2D
    ld a, a                                       ; $6322: $7F
    ld a, $7F                                     ; $6323: $3E $7F
    ccf                                           ; $6325: $3F
    rst RST_38                                    ; $6326: $FF
    ld a, a                                       ; $6327: $7F
    rst RST_38                                    ; $6328: $FF
    ld a, [hl]                                    ; $6329: $7E
    rst RST_38                                    ; $632A: $FF
    ld a, b                                       ; $632B: $78
    rst RST_38                                    ; $632C: $FF
    halt                                          ; $632D: $76
    rst RST_38                                    ; $632E: $FF
    ld a, [hl]                                    ; $632F: $7E
    rst RST_38                                    ; $6330: $FF
    ld a, [hl]                                    ; $6331: $7E
    cp $7D                                        ; $6332: $FE $7D
    db $FD                                        ; $6334: $FD
    ld a, d                                       ; $6335: $7A
    ld a, l                                       ; $6336: $7D
    ld a, [hl-]                                   ; $6337: $3A
    dec a                                         ; $6338: $3D
    ld [bc], a                                    ; $6339: $02
    ld [bc], a                                    ; $633A: $02
    ld bc, $0102                                  ; $633B: $01 $02 $01
    ld [bc], a                                    ; $633E: $02
    ld bc, $9F7F                                  ; $633F: $01 $7F $9F
    rst RST_38                                    ; $6342: $FF
    ld a, a                                       ; $6343: $7F
    ei                                            ; $6344: $FB
    ld b, a                                       ; $6345: $47
    db $DB                                        ; $6346: $DB
    daa                                           ; $6347: $27
    or a                                          ; $6348: $B7
    adc $0F                                       ; $6349: $CE $0F
    cp $EF                                        ; $634B: $FE $EF
    dec e                                         ; $634D: $1D
    inc e                                         ; $634E: $1C
    db $E3                                        ; $634F: $E3
    ldh [$FF1F], a                                ; $6350: $E0 $1F
    add b                                         ; $6352: $80
    ld a, a                                       ; $6353: $7F
    nop                                           ; $6354: $00
    rst RST_38                                    ; $6355: $FF
    ld bc, $07FF                                  ; $6356: $01 $FF $07
    cp $FF                                        ; $6359: $FE $FF
    ld bc, $FF01                                  ; $635B: $01 $01 $FF
    add c                                         ; $635E: $81
    ld a, a                                       ; $635F: $7F
    rst RST_10                                    ; $6360: $D7
    adc e                                         ; $6361: $8B
    rst RST_08                                    ; $6362: $CF
    add a                                         ; $6363: $87
    rst RST_20                                    ; $6364: $E7
    jp $E3FF                                      ; $6365: $C3 $FF $E3


    rst RST_38                                    ; $6368: $FF
    db $DD                                        ; $6369: $DD
    rst RST_38                                    ; $636A: $FF
    cp l                                          ; $636B: $BD
    rst RST_38                                    ; $636C: $FF
    cp [hl]                                       ; $636D: $BE
    ccf                                           ; $636E: $3F
    cp $7F                                        ; $636F: $FE $7F
    rst RST_38                                    ; $6371: $FF
    ld a, a                                       ; $6372: $7F
    rst RST_38                                    ; $6373: $FF
    rst RST_38                                    ; $6374: $FF
    xor a                                         ; $6375: $AF
    rst RST_38                                    ; $6376: $FF
    ld [hl], b                                    ; $6377: $70
    db $FC                                        ; $6378: $FC
    ld hl, sp-$08                                 ; $6379: $F8 $F8
    ldh a, [$FFF0]                                ; $637B: $F0 $F0
    ldh [$FFE0], a                                ; $637D: $E0 $E0
    ret nz                                        ; $637F: $C0

    inc d                                         ; $6380: $14
    dec bc                                        ; $6381: $0B
    inc d                                         ; $6382: $14
    dec bc                                        ; $6383: $0B
    ld a, [de]                                    ; $6384: $1A
    dec b                                         ; $6385: $05
    ld a, [hl-]                                   ; $6386: $3A
    dec d                                         ; $6387: $15
    ld a, l                                       ; $6388: $7D
    ld a, [hl-]                                   ; $6389: $3A
    ld e, [hl]                                    ; $638A: $5E
    dec a                                         ; $638B: $3D
    sbc a                                         ; $638C: $9F
    ld a, [hl]                                    ; $638D: $7E
    cp a                                          ; $638E: $BF
    ld a, a                                       ; $638F: $7F
    cp a                                          ; $6390: $BF
    ld a, [hl]                                    ; $6391: $7E
    ld a, a                                       ; $6392: $7F
    dec a                                         ; $6393: $3D
    ld a, a                                       ; $6394: $7F
    ccf                                           ; $6395: $3F
    ccf                                           ; $6396: $3F
    rra                                           ; $6397: $1F
    ld a, a                                       ; $6398: $7F
    rlca                                          ; $6399: $07
    and a                                         ; $639A: $A7
    ld e, e                                       ; $639B: $5B
    rst RST_38                                    ; $639C: $FF
    nop                                           ; $639D: $00
    nop                                           ; $639E: $00
    nop                                           ; $639F: $00
    rrca                                          ; $63A0: $0F
    cp $07                                        ; $63A1: $FE $07
    rst RST_38                                    ; $63A3: $FF
    rlca                                          ; $63A4: $07
    rst RST_38                                    ; $63A5: $FF
    rrca                                          ; $63A6: $0F
    rst RST_38                                    ; $63A7: $FF
    rra                                           ; $63A8: $1F
    rst RST_28                                    ; $63A9: $EF
    cp a                                          ; $63AA: $BF
    ld e, a                                       ; $63AB: $5F
    rst RST_38                                    ; $63AC: $FF
    rra                                           ; $63AD: $1F
    sub a                                         ; $63AE: $97
    rrca                                          ; $63AF: $0F
    sub e                                         ; $63B0: $93
    rrca                                          ; $63B1: $0F
    adc c                                         ; $63B2: $89
    rlca                                          ; $63B3: $07
    add a                                         ; $63B4: $87
    inc bc                                        ; $63B5: $03
    rst RST_00                                    ; $63B6: $C7
    add e                                         ; $63B7: $83
    jp $C181                                      ; $63B8: $C3 $81 $C1


    add b                                         ; $63BB: $80
    add c                                         ; $63BC: $81
    nop                                           ; $63BD: $00
    ld bc, $8000                                  ; $63BE: $01 $00 $80
    nop                                           ; $63C1: $00
    ret nz                                        ; $63C2: $C0

    add b                                         ; $63C3: $80
    ret nz                                        ; $63C4: $C0

    add b                                         ; $63C5: $80
    ret nz                                        ; $63C6: $C0

    add b                                         ; $63C7: $80
    ldh [$FFC0], a                                ; $63C8: $E0 $C0
    ldh [$FFC0], a                                ; $63CA: $E0 $C0
    ldh a, [$FFC0]                                ; $63CC: $F0 $C0
    ld hl, sp-$30                                 ; $63CE: $F8 $D0
    db $FC                                        ; $63D0: $FC
    ld hl, sp-$04                                 ; $63D1: $F8 $FC
    ld hl, sp-$02                                 ; $63D3: $F8 $FE
    db $FC                                        ; $63D5: $FC
    cp $FC                                        ; $63D6: $FE $FC
    rst RST_38                                    ; $63D8: $FF
    ld b, $57                                     ; $63D9: $06 $57
    xor d                                         ; $63DB: $AA
    rst RST_38                                    ; $63DC: $FF
    nop                                           ; $63DD: $00
    nop                                           ; $63DE: $00
    nop                                           ; $63DF: $00
    nop                                           ; $63E0: $00
    nop                                           ; $63E1: $00
    nop                                           ; $63E2: $00
    nop                                           ; $63E3: $00
    nop                                           ; $63E4: $00
    nop                                           ; $63E5: $00
    nop                                           ; $63E6: $00
    nop                                           ; $63E7: $00
    nop                                           ; $63E8: $00
    nop                                           ; $63E9: $00
    nop                                           ; $63EA: $00
    nop                                           ; $63EB: $00
    nop                                           ; $63EC: $00
    nop                                           ; $63ED: $00
    nop                                           ; $63EE: $00
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
    ld c, $00                                     ; $63F9: $0E $00
    ccf                                           ; $63FB: $3F
    nop                                           ; $63FC: $00
    ld a, a                                       ; $63FD: $7F
    nop                                           ; $63FE: $00
    rst RST_38                                    ; $63FF: $FF
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
    nop                                           ; $6418: $00
    nop                                           ; $6419: $00
    nop                                           ; $641A: $00
    dec a                                         ; $641B: $3D
    nop                                           ; $641C: $00
    rst RST_38                                    ; $641D: $FF
    nop                                           ; $641E: $00
    rst RST_38                                    ; $641F: $FF
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
    nop                                           ; $642A: $00
    nop                                           ; $642B: $00
    nop                                           ; $642C: $00
    nop                                           ; $642D: $00
    nop                                           ; $642E: $00
    nop                                           ; $642F: $00
    nop                                           ; $6430: $00
    nop                                           ; $6431: $00
    nop                                           ; $6432: $00
    nop                                           ; $6433: $00
    nop                                           ; $6434: $00
    ld a, $00                                     ; $6435: $3E $00
    ld a, a                                       ; $6437: $7F
    nop                                           ; $6438: $00
    rst RST_38                                    ; $6439: $FF
    nop                                           ; $643A: $00
    rst RST_38                                    ; $643B: $FF
    nop                                           ; $643C: $00
    rst RST_38                                    ; $643D: $FF
    inc bc                                        ; $643E: $03
    rst RST_38                                    ; $643F: $FF
    nop                                           ; $6440: $00
    add b                                         ; $6441: $80
    nop                                           ; $6442: $00
    ret nz                                        ; $6443: $C0

    nop                                           ; $6444: $00
    ret nz                                        ; $6445: $C0

    nop                                           ; $6446: $00
    ldh [$FF80], a                                ; $6447: $E0 $80
    ldh a, [$FFC0]                                ; $6449: $F0 $C0
    ld hl, sp-$40                                 ; $644B: $F8 $C0
    ld hl, sp-$20                                 ; $644D: $F8 $E0
    db $FC                                        ; $644F: $FC
    ldh [$FFFC], a                                ; $6450: $E0 $FC
    ldh a, [$FFFE]                                ; $6452: $F0 $FE
    ldh a, [$FFFE]                                ; $6454: $F0 $FE
    ldh a, [$FFFE]                                ; $6456: $F0 $FE
    ldh a, [$FFFE]                                ; $6458: $F0 $FE
    ldh [$FFFC], a                                ; $645A: $E0 $FC
    ldh [$FFFC], a                                ; $645C: $E0 $FC
    add b                                         ; $645E: $80
    ld hl, sp+$00                                 ; $645F: $F8 $00
    rra                                           ; $6461: $1F
    nop                                           ; $6462: $00
    rra                                           ; $6463: $1F
    dec b                                         ; $6464: $05
    ccf                                           ; $6465: $3F
    rlca                                          ; $6466: $07
    ccf                                           ; $6467: $3F
    rrca                                          ; $6468: $0F
    ld a, a                                       ; $6469: $7F
    rrca                                          ; $646A: $0F
    ld a, a                                       ; $646B: $7F
    ld c, $7F                                     ; $646C: $0E $7F
    dec e                                         ; $646E: $1D
    rst RST_38                                    ; $646F: $FF
    rra                                           ; $6470: $1F
    rst RST_38                                    ; $6471: $FF
    rra                                           ; $6472: $1F
    rst RST_38                                    ; $6473: $FF
    rra                                           ; $6474: $1F
    rst RST_38                                    ; $6475: $FF
    ld e, $FF                                     ; $6476: $1E $FF
    ld c, $7F                                     ; $6478: $0E $7F
    nop                                           ; $647A: $00
    ccf                                           ; $647B: $3F
    nop                                           ; $647C: $00
    rra                                           ; $647D: $1F
    nop                                           ; $647E: $00
    inc bc                                        ; $647F: $03
    inc bc                                        ; $6480: $03
    rst RST_38                                    ; $6481: $FF
    rlca                                          ; $6482: $07
    rst RST_38                                    ; $6483: $FF
    rra                                           ; $6484: $1F
    rst RST_38                                    ; $6485: $FF
    sub b                                         ; $6486: $90
    rst RST_38                                    ; $6487: $FF
    ret nz                                        ; $6488: $C0

    rst RST_38                                    ; $6489: $FF
    and c                                         ; $648A: $A1
    rst RST_38                                    ; $648B: $FF
    inc bc                                        ; $648C: $03
    rst RST_38                                    ; $648D: $FF
    add e                                         ; $648E: $83
    rst RST_38                                    ; $648F: $FF
    add b                                         ; $6490: $80
    rst RST_38                                    ; $6491: $FF
    add b                                         ; $6492: $80
    rst RST_38                                    ; $6493: $FF
    nop                                           ; $6494: $00
    rst RST_38                                    ; $6495: $FF
    nop                                           ; $6496: $00
    rst RST_38                                    ; $6497: $FF
    nop                                           ; $6498: $00
    rst RST_38                                    ; $6499: $FF
    ld bc, $00FF                                  ; $649A: $01 $FF $00
    rst RST_38                                    ; $649D: $FF
    nop                                           ; $649E: $00
    rst RST_38                                    ; $649F: $FF
    ret nz                                        ; $64A0: $C0

    rst RST_38                                    ; $64A1: $FF
    pop hl                                        ; $64A2: $E1
    rst RST_38                                    ; $64A3: $FF
    db $E3                                        ; $64A4: $E3
    rst RST_38                                    ; $64A5: $FF
    pop af                                        ; $64A6: $F1
    rst RST_38                                    ; $64A7: $FF
    ld sp, hl                                     ; $64A8: $F9
    rst RST_38                                    ; $64A9: $FF
    or [hl]                                       ; $64AA: $B6
    rst RST_38                                    ; $64AB: $FF
    xor [hl]                                      ; $64AC: $AE
    rst RST_38                                    ; $64AD: $FF
    ld l, a                                       ; $64AE: $6F
    rst RST_38                                    ; $64AF: $FF
    rrca                                          ; $64B0: $0F
    rst RST_38                                    ; $64B1: $FF
    rra                                           ; $64B2: $1F
    rst RST_38                                    ; $64B3: $FF
    rra                                           ; $64B4: $1F
    rst RST_38                                    ; $64B5: $FF
    dec hl                                        ; $64B6: $2B
    rst RST_38                                    ; $64B7: $FF
    ld e, h                                       ; $64B8: $5C
    rst RST_38                                    ; $64B9: $FF
    cp [hl]                                       ; $64BA: $BE
    rst RST_38                                    ; $64BB: $FF
    ld a, h                                       ; $64BC: $7C
    rst RST_38                                    ; $64BD: $FF
    ld a, b                                       ; $64BE: $78
    rst RST_38                                    ; $64BF: $FF
    ld hl, sp-$01                                 ; $64C0: $F8 $FF
    db $FC                                        ; $64C2: $FC
    rst RST_38                                    ; $64C3: $FF
    db $FC                                        ; $64C4: $FC
    rst RST_38                                    ; $64C5: $FF
    cp $FF                                        ; $64C6: $FE $FF
    cp $FF                                        ; $64C8: $FE $FF
    rst RST_38                                    ; $64CA: $FF
    rst RST_38                                    ; $64CB: $FF
    rst RST_38                                    ; $64CC: $FF
    rst RST_38                                    ; $64CD: $FF
    ld a, a                                       ; $64CE: $7F
    rst RST_38                                    ; $64CF: $FF
    ld a, a                                       ; $64D0: $7F
    rst RST_38                                    ; $64D1: $FF
    cp [hl]                                       ; $64D2: $BE
    rst RST_38                                    ; $64D3: $FF
    cp $FF                                        ; $64D4: $FE $FF
    ld hl, sp-$01                                 ; $64D6: $F8 $FF
    nop                                           ; $64D8: $00
    rst RST_38                                    ; $64D9: $FF
    nop                                           ; $64DA: $00
    db $FC                                        ; $64DB: $FC
    nop                                           ; $64DC: $00
    add b                                         ; $64DD: $80
    nop                                           ; $64DE: $00
    nop                                           ; $64DF: $00
    nop                                           ; $64E0: $00
    rra                                           ; $64E1: $1F
    nop                                           ; $64E2: $00
    rra                                           ; $64E3: $1F
    nop                                           ; $64E4: $00
    rra                                           ; $64E5: $1F
    nop                                           ; $64E6: $00
    rra                                           ; $64E7: $1F
    inc b                                         ; $64E8: $04
    ccf                                           ; $64E9: $3F
    ld c, $7F                                     ; $64EA: $0E $7F
    rlca                                          ; $64EC: $07
    ld a, a                                       ; $64ED: $7F
    rlca                                          ; $64EE: $07
    rst RST_38                                    ; $64EF: $FF
    rrca                                          ; $64F0: $0F
    rst RST_38                                    ; $64F1: $FF
    rra                                           ; $64F2: $1F
    rst RST_38                                    ; $64F3: $FF
    ld c, $7F                                     ; $64F4: $0E $7F
    rlca                                          ; $64F6: $07
    ccf                                           ; $64F7: $3F
    ld bc, $007F                                  ; $64F8: $01 $7F $00
    rst RST_38                                    ; $64FB: $FF
    nop                                           ; $64FC: $00
    rst RST_38                                    ; $64FD: $FF
    nop                                           ; $64FE: $00
    nop                                           ; $64FF: $00
    inc bc                                        ; $6500: $03
    rst RST_38                                    ; $6501: $FF
    inc bc                                        ; $6502: $03
    rst RST_38                                    ; $6503: $FF
    ld bc, $01FF                                  ; $6504: $01 $FF $01
    rst RST_38                                    ; $6507: $FF
    inc bc                                        ; $6508: $03
    rst RST_38                                    ; $6509: $FF
    inc bc                                        ; $650A: $03
    rst RST_38                                    ; $650B: $FF
    rlca                                          ; $650C: $07
    rst RST_38                                    ; $650D: $FF
    add a                                         ; $650E: $87
    rst RST_38                                    ; $650F: $FF
    pop bc                                        ; $6510: $C1
    rst RST_38                                    ; $6511: $FF
    add b                                         ; $6512: $80
    rst RST_38                                    ; $6513: $FF
    ld b, b                                       ; $6514: $40
    rst RST_38                                    ; $6515: $FF
    ldh [rIE], a                                  ; $6516: $E0 $FF
    ldh [rIE], a                                  ; $6518: $E0 $FF
    ldh [rIE], a                                  ; $651A: $E0 $FF
    nop                                           ; $651C: $00
    ld sp, hl                                     ; $651D: $F9
    nop                                           ; $651E: $00
    ld bc, $F080                                  ; $651F: $01 $80 $F0
    add b                                         ; $6522: $80
    ldh a, [$FFC0]                                ; $6523: $F0 $C0
    ld hl, sp-$40                                 ; $6525: $F8 $C0
    ld hl, sp-$20                                 ; $6527: $F8 $E0
    db $FC                                        ; $6529: $FC
    ldh [$FFFC], a                                ; $652A: $E0 $FC
    ldh a, [$FFFE]                                ; $652C: $F0 $FE
    ldh a, [rIE]                                  ; $652E: $F0 $FF
    db $F4                                        ; $6530: $F4
    rst RST_38                                    ; $6531: $FF
    cp $FF                                        ; $6532: $FE $FF
    ld a, [hl]                                    ; $6534: $7E
    rst RST_38                                    ; $6535: $FF
    rst RST_38                                    ; $6536: $FF
    rst RST_38                                    ; $6537: $FF
    rst RST_38                                    ; $6538: $FF
    rst RST_38                                    ; $6539: $FF
    ld b, c                                       ; $653A: $41
    rst RST_38                                    ; $653B: $FF
    nop                                           ; $653C: $00
    rst RST_38                                    ; $653D: $FF
    nop                                           ; $653E: $00
    rst RST_38                                    ; $653F: $FF
    nop                                           ; $6540: $00
    add b                                         ; $6541: $80
    nop                                           ; $6542: $00
    ret nz                                        ; $6543: $C0

    nop                                           ; $6544: $00
    ret nz                                        ; $6545: $C0

    nop                                           ; $6546: $00
    ldh [rP1], a                                  ; $6547: $E0 $00
    ldh [$FF80], a                                ; $6549: $E0 $80
    ldh a, [$FF80]                                ; $654B: $F0 $80
    ldh a, [rP1]                                  ; $654D: $F0 $00
    ldh a, [rP1]                                  ; $654F: $F0 $00
    nop                                           ; $6551: $00
    nop                                           ; $6552: $00
    nop                                           ; $6553: $00
    nop                                           ; $6554: $00
    nop                                           ; $6555: $00
    nop                                           ; $6556: $00
    nop                                           ; $6557: $00
    nop                                           ; $6558: $00
    nop                                           ; $6559: $00
    nop                                           ; $655A: $00
    nop                                           ; $655B: $00
    nop                                           ; $655C: $00
    nop                                           ; $655D: $00
    nop                                           ; $655E: $00
    nop                                           ; $655F: $00
    nop                                           ; $6560: $00
    nop                                           ; $6561: $00
    nop                                           ; $6562: $00
    nop                                           ; $6563: $00
    inc bc                                        ; $6564: $03
    nop                                           ; $6565: $00
    rlca                                          ; $6566: $07
    inc bc                                        ; $6567: $03
    rlca                                          ; $6568: $07
    ld [bc], a                                    ; $6569: $02
    ld b, $01                                     ; $656A: $06 $01
    dec c                                         ; $656C: $0D
    ld b, $08                                     ; $656D: $06 $08
    rlca                                          ; $656F: $07
    rlca                                          ; $6570: $07
    nop                                           ; $6571: $00
    rra                                           ; $6572: $1F
    ld b, $FE                                     ; $6573: $06 $FE
    dec e                                         ; $6575: $1D
    rst RST_38                                    ; $6576: $FF
    cp h                                          ; $6577: $BC
    cp $FD                                        ; $6578: $FE $FD
    cp $FD                                        ; $657A: $FE $FD
    cp $FD                                        ; $657C: $FE $FD
    rst RST_38                                    ; $657E: $FF
    cp $FF                                        ; $657F: $FE $FF
    ld hl, sp-$07                                 ; $6581: $F8 $F9
    nop                                           ; $6583: $00
    ld bc, $0100                                  ; $6584: $01 $00 $01
    nop                                           ; $6587: $00
    inc bc                                        ; $6588: $03
    ld bc, $0307                                  ; $6589: $01 $07 $03
    dec c                                         ; $658C: $0D
    rlca                                          ; $658D: $07
    ld sp, hl                                     ; $658E: $F9
    rlca                                          ; $658F: $07
    jp hl                                         ; $6590: $E9


    rlca                                          ; $6591: $07
    push bc                                       ; $6592: $C5
    inc bc                                        ; $6593: $03
    rst RST_20                                    ; $6594: $E7
    add e                                         ; $6595: $83
    di                                            ; $6596: $F3
    pop hl                                        ; $6597: $E1
    rst RST_20                                    ; $6598: $E7
    nop                                           ; $6599: $00
    ld a, [bc]                                    ; $659A: $0A
    dec b                                         ; $659B: $05
    rrca                                          ; $659C: $0F
    nop                                           ; $659D: $00
    nop                                           ; $659E: $00
    nop                                           ; $659F: $00
    rrca                                          ; $65A0: $0F
    rst RST_30                                    ; $65A1: $F7
    scf                                           ; $65A2: $37
    ret z                                         ; $65A3: $C8

    ld [hl], h                                    ; $65A4: $74
    adc b                                         ; $65A5: $88
    ld a, h                                       ; $65A6: $7C
    or b                                          ; $65A7: $B0
    ld hl, sp+$10                                 ; $65A8: $F8 $10
    ld a, b                                       ; $65AA: $78
    db $10                                        ; $65AB: $10
    ld a, h                                       ; $65AC: $7C
    jr @+$01                                      ; $65AD: $18 $FF

    ld e, b                                       ; $65AF: $58
    rst RST_38                                    ; $65B0: $FF
    ld e, h                                       ; $65B1: $5C
    rst RST_38                                    ; $65B2: $FF
    ld c, [hl]                                    ; $65B3: $4E
    rst RST_38                                    ; $65B4: $FF
    ld c, a                                       ; $65B5: $4F
    rst RST_38                                    ; $65B6: $FF
    ld h, a                                       ; $65B7: $67
    ld a, a                                       ; $65B8: $7F
    ld hl, $3079                                  ; $65B9: $21 $79 $30
    jr c, jr_013_65CE                             ; $65BC: $38 $10

    jr jr_013_65C0                                ; $65BE: $18 $00

jr_013_65C0:
    nop                                           ; $65C0: $00
    nop                                           ; $65C1: $00
    nop                                           ; $65C2: $00
    nop                                           ; $65C3: $00
    nop                                           ; $65C4: $00
    nop                                           ; $65C5: $00
    nop                                           ; $65C6: $00
    nop                                           ; $65C7: $00
    nop                                           ; $65C8: $00
    nop                                           ; $65C9: $00
    nop                                           ; $65CA: $00
    nop                                           ; $65CB: $00
    nop                                           ; $65CC: $00
    nop                                           ; $65CD: $00

jr_013_65CE:
    nop                                           ; $65CE: $00
    nop                                           ; $65CF: $00
    nop                                           ; $65D0: $00
    nop                                           ; $65D1: $00
    nop                                           ; $65D2: $00
    nop                                           ; $65D3: $00
    nop                                           ; $65D4: $00
    nop                                           ; $65D5: $00
    rrca                                          ; $65D6: $0F
    nop                                           ; $65D7: $00
    ccf                                           ; $65D8: $3F
    rrca                                          ; $65D9: $0F
    ld a, a                                       ; $65DA: $7F
    ccf                                           ; $65DB: $3F
    cp a                                          ; $65DC: $BF
    ld c, a                                       ; $65DD: $4F
    adc a                                         ; $65DE: $8F
    ld [hl], a                                    ; $65DF: $77
    nop                                           ; $65E0: $00
    nop                                           ; $65E1: $00
    nop                                           ; $65E2: $00
    nop                                           ; $65E3: $00
    nop                                           ; $65E4: $00
    nop                                           ; $65E5: $00
    nop                                           ; $65E6: $00
    nop                                           ; $65E7: $00
    nop                                           ; $65E8: $00
    nop                                           ; $65E9: $00
    nop                                           ; $65EA: $00
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
    ld bc, $0100                                  ; $65F8: $01 $00 $01
    nop                                           ; $65FB: $00
    ld bc, $0100                                  ; $65FC: $01 $00 $01
    nop                                           ; $65FF: $00
    nop                                           ; $6600: $00
    nop                                           ; $6601: $00
    nop                                           ; $6602: $00
    nop                                           ; $6603: $00
    inc bc                                        ; $6604: $03
    nop                                           ; $6605: $00
    rlca                                          ; $6606: $07
    inc bc                                        ; $6607: $03
    rlca                                          ; $6608: $07
    ld [bc], a                                    ; $6609: $02
    ld b, $01                                     ; $660A: $06 $01
    dec c                                         ; $660C: $0D
    ld b, $08                                     ; $660D: $06 $08
    rlca                                          ; $660F: $07
    rlca                                          ; $6610: $07
    nop                                           ; $6611: $00
    rra                                           ; $6612: $1F
    ld b, $FE                                     ; $6613: $06 $FE
    dec e                                         ; $6615: $1D
    rst RST_38                                    ; $6616: $FF
    cp h                                          ; $6617: $BC
    cp $FD                                        ; $6618: $FE $FD
    cp $FD                                        ; $661A: $FE $FD
    cp $FD                                        ; $661C: $FE $FD
    rst RST_38                                    ; $661E: $FF
    cp $FF                                        ; $661F: $FE $FF
    ld hl, sp-$07                                 ; $6621: $F8 $F9
    nop                                           ; $6623: $00
    ld bc, $0100                                  ; $6624: $01 $00 $01
    nop                                           ; $6627: $00
    inc bc                                        ; $6628: $03
    ld bc, $0307                                  ; $6629: $01 $07 $03
    dec c                                         ; $662C: $0D
    rlca                                          ; $662D: $07
    add hl, bc                                    ; $662E: $09
    rlca                                          ; $662F: $07
    add hl, bc                                    ; $6630: $09
    rlca                                          ; $6631: $07
    dec b                                         ; $6632: $05
    inc bc                                        ; $6633: $03
    rlca                                          ; $6634: $07
    inc bc                                        ; $6635: $03
    inc bc                                        ; $6636: $03
    ld bc, $0007                                  ; $6637: $01 $07 $00
    ld a, [bc]                                    ; $663A: $0A
    dec b                                         ; $663B: $05
    rrca                                          ; $663C: $0F
    nop                                           ; $663D: $00
    nop                                           ; $663E: $00
    nop                                           ; $663F: $00
    inc bc                                        ; $6640: $03
    nop                                           ; $6641: $00
    rlca                                          ; $6642: $07
    inc bc                                        ; $6643: $03
    rrca                                          ; $6644: $0F
    ld b, $0F                                     ; $6645: $06 $0F
    nop                                           ; $6647: $00
    ld bc, $0100                                  ; $6648: $01 $00 $01
    nop                                           ; $664B: $00
    inc bc                                        ; $664C: $03
    ld bc, $0103                                  ; $664D: $01 $03 $01
    inc bc                                        ; $6650: $03
    ld bc, $0103                                  ; $6651: $01 $03 $01
    ld bc, $0000                                  ; $6654: $01 $00 $00
    nop                                           ; $6657: $00
    nop                                           ; $6658: $00
    nop                                           ; $6659: $00
    nop                                           ; $665A: $00
    nop                                           ; $665B: $00
    nop                                           ; $665C: $00
    nop                                           ; $665D: $00
    nop                                           ; $665E: $00
    nop                                           ; $665F: $00
    ld c, $01                                     ; $6660: $0E $01
    rlca                                          ; $6662: $07
    nop                                           ; $6663: $00
    rlca                                          ; $6664: $07
    nop                                           ; $6665: $00
    nop                                           ; $6666: $00
    nop                                           ; $6667: $00
    ld sp, hl                                     ; $6668: $F9
    nop                                           ; $6669: $00
    rst RST_38                                    ; $666A: $FF
    ld hl, sp-$01                                 ; $666B: $F8 $FF
    add b                                         ; $666D: $80
    rst RST_38                                    ; $666E: $FF
    rra                                           ; $666F: $1F
    rst RST_38                                    ; $6670: $FF
    ld a, h                                       ; $6671: $7C
    db $FC                                        ; $6672: $FC
    ldh a, [$FFF8]                                ; $6673: $F0 $F8
    ldh [$FFF8], a                                ; $6675: $E0 $F8
    ret nz                                        ; $6677: $C0

    ldh a, [$FF80]                                ; $6678: $F0 $80
    ldh a, [rP1]                                  ; $667A: $F0 $00
    or b                                          ; $667C: $B0
    nop                                           ; $667D: $00
    stop                                          ; $667E: $10 $00
    nop                                           ; $6680: $00
    nop                                           ; $6681: $00
    nop                                           ; $6682: $00
    nop                                           ; $6683: $00
    nop                                           ; $6684: $00
    nop                                           ; $6685: $00
    nop                                           ; $6686: $00
    nop                                           ; $6687: $00
    ld hl, sp+$00                                 ; $6688: $F8 $00
    rst RST_38                                    ; $668A: $FF
    ld a, b                                       ; $668B: $78
    ld a, a                                       ; $668C: $7F
    sbc a                                         ; $668D: $9F
    rra                                           ; $668E: $1F
    rst RST_28                                    ; $668F: $EF
    sbc a                                         ; $6690: $9F
    ld l, a                                       ; $6691: $6F
    sbc a                                         ; $6692: $9F
    ld l, a                                       ; $6693: $6F
    ld a, a                                       ; $6694: $7F
    adc a                                         ; $6695: $8F
    rst RST_08                                    ; $6696: $CF
    nop                                           ; $6697: $00
    ret nz                                        ; $6698: $C0

    add b                                         ; $6699: $80
    ret nz                                        ; $669A: $C0

    add b                                         ; $669B: $80
    ret nz                                        ; $669C: $C0

    add b                                         ; $669D: $80
    ret nz                                        ; $669E: $C0

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
    nop                                           ; $66B2: $00
    nop                                           ; $66B3: $00
    nop                                           ; $66B4: $00
    nop                                           ; $66B5: $00
    nop                                           ; $66B6: $00
    nop                                           ; $66B7: $00
    nop                                           ; $66B8: $00
    nop                                           ; $66B9: $00
    nop                                           ; $66BA: $00
    nop                                           ; $66BB: $00
    rlca                                          ; $66BC: $07
    nop                                           ; $66BD: $00
    ld [$0307], sp                                ; $66BE: $08 $07 $03
    nop                                           ; $66C1: $00
    rlca                                          ; $66C2: $07
    inc bc                                        ; $66C3: $03
    rlca                                          ; $66C4: $07
    ld [bc], a                                    ; $66C5: $02
    ld b, $01                                     ; $66C6: $06 $01
    dec c                                         ; $66C8: $0D
    ld b, $08                                     ; $66C9: $06 $08
    rlca                                          ; $66CB: $07
    rlca                                          ; $66CC: $07
    nop                                           ; $66CD: $00
    rra                                           ; $66CE: $1F
    ld b, $FE                                     ; $66CF: $06 $FE
    dec e                                         ; $66D1: $1D
    rst RST_38                                    ; $66D2: $FF
    cp h                                          ; $66D3: $BC
    cp $FD                                        ; $66D4: $FE $FD
    cp $FD                                        ; $66D6: $FE $FD
    cp $FD                                        ; $66D8: $FE $FD
    rst RST_38                                    ; $66DA: $FF
    cp $FF                                        ; $66DB: $FE $FF
    ld hl, sp-$07                                 ; $66DD: $F8 $F9
    nop                                           ; $66DF: $00
    ld bc, $0100                                  ; $66E0: $01 $00 $01
    nop                                           ; $66E3: $00
    inc bc                                        ; $66E4: $03
    ld bc, $0307                                  ; $66E5: $01 $07 $03
    dec c                                         ; $66E8: $0D
    rlca                                          ; $66E9: $07
    add hl, bc                                    ; $66EA: $09
    rlca                                          ; $66EB: $07
    add hl, bc                                    ; $66EC: $09
    rlca                                          ; $66ED: $07
    dec b                                         ; $66EE: $05
    inc bc                                        ; $66EF: $03
    rlca                                          ; $66F0: $07
    inc bc                                        ; $66F1: $03
    inc bc                                        ; $66F2: $03
    ld bc, $0007                                  ; $66F3: $01 $07 $00
    ld a, [bc]                                    ; $66F6: $0A
    dec b                                         ; $66F7: $05
    rrca                                          ; $66F8: $0F
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
    add b                                         ; $670A: $80
    nop                                           ; $670B: $00
    ld h, b                                       ; $670C: $60
    add b                                         ; $670D: $80
    ld [hl], b                                    ; $670E: $70
    and b                                         ; $670F: $A0
    inc a                                         ; $6710: $3C
    ret nc                                        ; $6711: $D0

    sbc a                                         ; $6712: $9F
    ld l, h                                       ; $6713: $6C
    rra                                           ; $6714: $1F
    rst RST_28                                    ; $6715: $EF
    ccf                                           ; $6716: $3F
    rst RST_18                                    ; $6717: $DF
    rst RST_38                                    ; $6718: $FF
    rra                                           ; $6719: $1F
    ccf                                           ; $671A: $3F
    rra                                           ; $671B: $1F
    rra                                           ; $671C: $1F
    rlca                                          ; $671D: $07
    rlca                                          ; $671E: $07
    nop                                           ; $671F: $00
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
    nop                                           ; $672A: $00
    nop                                           ; $672B: $00
    ld b, $00                                     ; $672C: $06 $00
    dec b                                         ; $672E: $05
    ld [bc], a                                    ; $672F: $02
    ld [bc], a                                    ; $6730: $02
    ld bc, $010E                                  ; $6731: $01 $0E $01
    rrca                                          ; $6734: $0F
    nop                                           ; $6735: $00
    inc bc                                        ; $6736: $03
    nop                                           ; $6737: $00
    nop                                           ; $6738: $00
    nop                                           ; $6739: $00
    ld bc, $0200                                  ; $673A: $01 $00 $02
    ld bc, $0003                                  ; $673D: $01 $03 $00
    jr jr_013_6742                                ; $6740: $18 $00

jr_013_6742:
    inc e                                         ; $6742: $1C
    ld [$0C9E], sp                                ; $6743: $08 $9E $0C
    cp $84                                        ; $6746: $FE $84
    rst RST_38                                    ; $6748: $FF
    and $FF                                       ; $6749: $E6 $FF
    ldh a, [c]                                    ; $674B: $F2
    rst RST_38                                    ; $674C: $FF
    ld [hl], d                                    ; $674D: $72
    rst RST_38                                    ; $674E: $FF
    ld a, [hl-]                                   ; $674F: $3A
    rst RST_38                                    ; $6750: $FF
    ld a, [de]                                    ; $6751: $1A
    ld a, $18                                     ; $6752: $3E $18
    ld e, $08                                     ; $6754: $1E $08
    inc e                                         ; $6756: $1C
    ld [$1C3E], sp                                ; $6757: $08 $3E $1C
    ld a, $00                                     ; $675A: $3E $00
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
    rlca                                          ; $6774: $07
    nop                                           ; $6775: $00
    rrca                                          ; $6776: $0F
    rlca                                          ; $6777: $07
    rlca                                          ; $6778: $07
    ld bc, $0003                                  ; $6779: $01 $03 $00
    rlca                                          ; $677C: $07
    nop                                           ; $677D: $00
    rrca                                          ; $677E: $0F
    nop                                           ; $677F: $00
    rst RST_38                                    ; $6780: $FF
    ld hl, sp-$07                                 ; $6781: $F8 $F9
    nop                                           ; $6783: $00
    ld bc, $0100                                  ; $6784: $01 $00 $01
    nop                                           ; $6787: $00
    inc bc                                        ; $6788: $03
    ld bc, $0307                                  ; $6789: $01 $07 $03
    dec c                                         ; $678C: $0D
    rlca                                          ; $678D: $07
    add hl, bc                                    ; $678E: $09
    rlca                                          ; $678F: $07
    add hl, bc                                    ; $6790: $09
    rlca                                          ; $6791: $07
    dec b                                         ; $6792: $05
    inc bc                                        ; $6793: $03
    rlca                                          ; $6794: $07
    inc bc                                        ; $6795: $03
    inc bc                                        ; $6796: $03
    ld bc, $0007                                  ; $6797: $01 $07 $00
    ld a, [bc]                                    ; $679A: $0A
    dec b                                         ; $679B: $05
    rrca                                          ; $679C: $0F
    nop                                           ; $679D: $00
    nop                                           ; $679E: $00
    nop                                           ; $679F: $00
    nop                                           ; $67A0: $00
    nop                                           ; $67A1: $00
    nop                                           ; $67A2: $00
    nop                                           ; $67A3: $00
    inc bc                                        ; $67A4: $03
    nop                                           ; $67A5: $00
    rlca                                          ; $67A6: $07
    inc bc                                        ; $67A7: $03
    rlca                                          ; $67A8: $07
    ld [bc], a                                    ; $67A9: $02
    ld b, $01                                     ; $67AA: $06 $01
    dec c                                         ; $67AC: $0D
    ld b, $08                                     ; $67AD: $06 $08
    rlca                                          ; $67AF: $07
    rlca                                          ; $67B0: $07
    nop                                           ; $67B1: $00
    rra                                           ; $67B2: $1F
    ld b, $FE                                     ; $67B3: $06 $FE
    dec e                                         ; $67B5: $1D
    rst RST_38                                    ; $67B6: $FF
    cp h                                          ; $67B7: $BC
    cp $FD                                        ; $67B8: $FE $FD
    cp $FD                                        ; $67BA: $FE $FD
    cp $FD                                        ; $67BC: $FE $FD
    rst RST_38                                    ; $67BE: $FF
    cp $02                                        ; $67BF: $FE $02
    nop                                           ; $67C1: $00
    inc bc                                        ; $67C2: $03
    nop                                           ; $67C3: $00
    inc bc                                        ; $67C4: $03
    nop                                           ; $67C5: $00
    inc bc                                        ; $67C6: $03
    nop                                           ; $67C7: $00
    rlca                                          ; $67C8: $07
    nop                                           ; $67C9: $00
    rlca                                          ; $67CA: $07
    ld bc, $03CF                                  ; $67CB: $01 $CF $03
    rst RST_38                                    ; $67CE: $FF
    ld c, a                                       ; $67CF: $4F
    rst RST_38                                    ; $67D0: $FF
    ld a, [hl]                                    ; $67D1: $7E
    rst RST_38                                    ; $67D2: $FF
    ld b, b                                       ; $67D3: $40
    rst RST_18                                    ; $67D4: $DF

jr_013_67D5:
    rlca                                          ; $67D5: $07
    rlca                                          ; $67D6: $07

jr_013_67D7:
    nop                                           ; $67D7: $00
    nop                                           ; $67D8: $00
    nop                                           ; $67D9: $00
    nop                                           ; $67DA: $00
    nop                                           ; $67DB: $00
    nop                                           ; $67DC: $00
    nop                                           ; $67DD: $00
    nop                                           ; $67DE: $00
    nop                                           ; $67DF: $00
    jr nz, jr_013_67E2                            ; $67E0: $20 $00

jr_013_67E2:
    ld [hl], b                                    ; $67E2: $70
    jr nz, jr_013_67D5                            ; $67E3: $20 $F0

    jr nz, jr_013_67D7                            ; $67E5: $20 $F0

    ld h, b                                       ; $67E7: $60
    ldh a, [$FFE0]                                ; $67E8: $F0 $E0
    ldh [$FFC0], a                                ; $67EA: $E0 $C0
    ldh [$FFC0], a                                ; $67EC: $E0 $C0
    db $FC                                        ; $67EE: $FC
    add b                                         ; $67EF: $80
    db $FC                                        ; $67F0: $FC
    jr @-$06                                      ; $67F1: $18 $F8

    ld [hl], b                                    ; $67F3: $70
    ldh a, [$FFC0]                                ; $67F4: $F0 $C0
    ret nz                                        ; $67F6: $C0

    nop                                           ; $67F7: $00
    nop                                           ; $67F8: $00
    nop                                           ; $67F9: $00
    nop                                           ; $67FA: $00
    nop                                           ; $67FB: $00
    nop                                           ; $67FC: $00
    nop                                           ; $67FD: $00
    nop                                           ; $67FE: $00
    nop                                           ; $67FF: $00
    nop                                           ; $6800: $00
    nop                                           ; $6801: $00
    nop                                           ; $6802: $00
    nop                                           ; $6803: $00
    nop                                           ; $6804: $00
    nop                                           ; $6805: $00
    nop                                           ; $6806: $00
    nop                                           ; $6807: $00
    nop                                           ; $6808: $00
    nop                                           ; $6809: $00
    add b                                         ; $680A: $80
    nop                                           ; $680B: $00
    ld h, b                                       ; $680C: $60
    add b                                         ; $680D: $80
    ld [hl], b                                    ; $680E: $70
    and b                                         ; $680F: $A0
    inc a                                         ; $6810: $3C
    ret nc                                        ; $6811: $D0

    sbc a                                         ; $6812: $9F
    ld l, h                                       ; $6813: $6C
    rra                                           ; $6814: $1F
    rst RST_28                                    ; $6815: $EF
    ccf                                           ; $6816: $3F
    rst RST_18                                    ; $6817: $DF
    rst RST_38                                    ; $6818: $FF
    rra                                           ; $6819: $1F
    ccf                                           ; $681A: $3F
    rra                                           ; $681B: $1F
    rra                                           ; $681C: $1F
    rlca                                          ; $681D: $07
    rlca                                          ; $681E: $07
    nop                                           ; $681F: $00
    nop                                           ; $6820: $00
    nop                                           ; $6821: $00
    nop                                           ; $6822: $00
    nop                                           ; $6823: $00
    nop                                           ; $6824: $00
    nop                                           ; $6825: $00
    nop                                           ; $6826: $00
    nop                                           ; $6827: $00
    nop                                           ; $6828: $00
    nop                                           ; $6829: $00
    nop                                           ; $682A: $00
    nop                                           ; $682B: $00
    ld b, $00                                     ; $682C: $06 $00
    dec b                                         ; $682E: $05
    ld [bc], a                                    ; $682F: $02
    ld [bc], a                                    ; $6830: $02
    ld bc, $010E                                  ; $6831: $01 $0E $01
    rrca                                          ; $6834: $0F
    nop                                           ; $6835: $00
    inc bc                                        ; $6836: $03
    nop                                           ; $6837: $00
    nop                                           ; $6838: $00
    nop                                           ; $6839: $00
    ld bc, $0200                                  ; $683A: $01 $00 $02
    ld bc, $0003                                  ; $683D: $01 $03 $00
    nop                                           ; $6840: $00
    nop                                           ; $6841: $00
    nop                                           ; $6842: $00
    nop                                           ; $6843: $00
    inc bc                                        ; $6844: $03
    nop                                           ; $6845: $00
    rlca                                          ; $6846: $07
    inc bc                                        ; $6847: $03
    rlca                                          ; $6848: $07
    ld [bc], a                                    ; $6849: $02
    ld b, $01                                     ; $684A: $06 $01
    dec c                                         ; $684C: $0D
    ld b, $08                                     ; $684D: $06 $08
    rlca                                          ; $684F: $07
    rlca                                          ; $6850: $07
    nop                                           ; $6851: $00
    rra                                           ; $6852: $1F
    ld b, $FE                                     ; $6853: $06 $FE
    dec e                                         ; $6855: $1D
    rst RST_38                                    ; $6856: $FF
    cp h                                          ; $6857: $BC
    cp $FD                                        ; $6858: $FE $FD
    cp $FD                                        ; $685A: $FE $FD
    cp $FD                                        ; $685C: $FE $FD
    rst RST_38                                    ; $685E: $FF
    cp $FF                                        ; $685F: $FE $FF
    ld hl, sp-$07                                 ; $6861: $F8 $F9
    nop                                           ; $6863: $00
    ld bc, $0100                                  ; $6864: $01 $00 $01
    nop                                           ; $6867: $00
    inc bc                                        ; $6868: $03
    ld bc, $0307                                  ; $6869: $01 $07 $03
    dec c                                         ; $686C: $0D
    rlca                                          ; $686D: $07
    add hl, bc                                    ; $686E: $09
    rlca                                          ; $686F: $07
    add hl, bc                                    ; $6870: $09
    rlca                                          ; $6871: $07
    dec b                                         ; $6872: $05
    inc bc                                        ; $6873: $03
    rlca                                          ; $6874: $07
    inc bc                                        ; $6875: $03
    inc bc                                        ; $6876: $03
    ld bc, $0007                                  ; $6877: $01 $07 $00
    ld a, [bc]                                    ; $687A: $0A
    dec b                                         ; $687B: $05
    rrca                                          ; $687C: $0F
    nop                                           ; $687D: $00
    nop                                           ; $687E: $00
    nop                                           ; $687F: $00
    pop bc                                        ; $6880: $C1
    nop                                           ; $6881: $00
    rst RST_38                                    ; $6882: $FF
    ld b, c                                       ; $6883: $41
    rst RST_38                                    ; $6884: $FF
    ld [hl], b                                    ; $6885: $70
    rst RST_38                                    ; $6886: $FF
    ld c, a                                       ; $6887: $4F
    rst RST_18                                    ; $6888: $DF
    rlca                                          ; $6889: $07
    rlca                                          ; $688A: $07
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
    nop                                           ; $689A: $00
    nop                                           ; $689B: $00
    nop                                           ; $689C: $00
    nop                                           ; $689D: $00
    nop                                           ; $689E: $00
    nop                                           ; $689F: $00
    ret nz                                        ; $68A0: $C0

    nop                                           ; $68A1: $00
    db $FC                                        ; $68A2: $FC
    ret nz                                        ; $68A3: $C0

    cp $0C                                        ; $68A4: $FE $0C
    db $FC                                        ; $68A6: $FC
    ld hl, sp-$08                                 ; $68A7: $F8 $F8
    ldh [$FFE0], a                                ; $68A9: $E0 $E0
    nop                                           ; $68AB: $00
    nop                                           ; $68AC: $00
    nop                                           ; $68AD: $00
    nop                                           ; $68AE: $00
    nop                                           ; $68AF: $00
    nop                                           ; $68B0: $00
    nop                                           ; $68B1: $00
    nop                                           ; $68B2: $00
    nop                                           ; $68B3: $00
    nop                                           ; $68B4: $00
    nop                                           ; $68B5: $00
    nop                                           ; $68B6: $00
    nop                                           ; $68B7: $00
    nop                                           ; $68B8: $00
    nop                                           ; $68B9: $00
    nop                                           ; $68BA: $00
    nop                                           ; $68BB: $00
    nop                                           ; $68BC: $00
    nop                                           ; $68BD: $00
    nop                                           ; $68BE: $00
    nop                                           ; $68BF: $00
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
    add b                                         ; $68CA: $80
    nop                                           ; $68CB: $00
    ld h, b                                       ; $68CC: $60
    add b                                         ; $68CD: $80
    ld [hl], b                                    ; $68CE: $70
    and b                                         ; $68CF: $A0
    inc a                                         ; $68D0: $3C
    ret nc                                        ; $68D1: $D0

    sbc a                                         ; $68D2: $9F
    ld l, h                                       ; $68D3: $6C
    rra                                           ; $68D4: $1F
    rst RST_28                                    ; $68D5: $EF
    ccf                                           ; $68D6: $3F
    rst RST_18                                    ; $68D7: $DF
    rst RST_38                                    ; $68D8: $FF
    rra                                           ; $68D9: $1F
    ccf                                           ; $68DA: $3F
    rra                                           ; $68DB: $1F
    rra                                           ; $68DC: $1F
    rlca                                          ; $68DD: $07
    rlca                                          ; $68DE: $07
    nop                                           ; $68DF: $00
    nop                                           ; $68E0: $00
    nop                                           ; $68E1: $00
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
    ld b, $00                                     ; $68EC: $06 $00
    dec b                                         ; $68EE: $05
    ld [bc], a                                    ; $68EF: $02
    ld [bc], a                                    ; $68F0: $02
    ld bc, $010E                                  ; $68F1: $01 $0E $01
    rrca                                          ; $68F4: $0F
    nop                                           ; $68F5: $00
    inc bc                                        ; $68F6: $03
    nop                                           ; $68F7: $00
    nop                                           ; $68F8: $00
    nop                                           ; $68F9: $00
    ld bc, $0200                                  ; $68FA: $01 $00 $02
    ld bc, $0003                                  ; $68FD: $01 $03 $00
    inc bc                                        ; $6900: $03
    nop                                           ; $6901: $00
    dec c                                         ; $6902: $0D
    ld [bc], a                                    ; $6903: $02
    dec d                                         ; $6904: $15
    ld a, [bc]                                    ; $6905: $0A
    rla                                           ; $6906: $17
    ld [$153E], sp                                ; $6907: $08 $3E $15
    ccf                                           ; $690A: $3F
    ld e, $7F                                     ; $690B: $1E $7F
    ccf                                           ; $690D: $3F
    ld a, a                                       ; $690E: $7F
    ld a, $7F                                     ; $690F: $3E $7F
    jr c, @+$01                                   ; $6911: $38 $FF

    halt                                          ; $6913: $76
    rst RST_38                                    ; $6914: $FF
    ld a, [hl]                                    ; $6915: $7E
    rst RST_38                                    ; $6916: $FF
    ld a, [hl]                                    ; $6917: $7E
    cp $7D                                        ; $6918: $FE $7D
    db $FD                                        ; $691A: $FD
    ld a, d                                       ; $691B: $7A
    ld a, l                                       ; $691C: $7D
    ld a, [hl-]                                   ; $691D: $3A
    dec a                                         ; $691E: $3D
    ld [bc], a                                    ; $691F: $02
    add b                                         ; $6920: $80
    nop                                           ; $6921: $00
    ld c, a                                       ; $6922: $4F
    add b                                         ; $6923: $80
    ld e, a                                       ; $6924: $5F
    adc a                                         ; $6925: $8F
    rst RST_38                                    ; $6926: $FF
    rra                                           ; $6927: $1F
    rst RST_38                                    ; $6928: $FF
    ld a, a                                       ; $6929: $7F
    ei                                            ; $692A: $FB
    ld b, a                                       ; $692B: $47
    db $DB                                        ; $692C: $DB
    daa                                           ; $692D: $27
    or a                                          ; $692E: $B7
    adc $0F                                       ; $692F: $CE $0F
    cp $EF                                        ; $6931: $FE $EF
    dec e                                         ; $6933: $1D
    inc e                                         ; $6934: $1C
    db $E3                                        ; $6935: $E3
    ldh [$FF1F], a                                ; $6936: $E0 $1F
    add b                                         ; $6938: $80
    ld a, a                                       ; $6939: $7F
    nop                                           ; $693A: $00
    rst RST_38                                    ; $693B: $FF
    ld bc, $07FF                                  ; $693C: $01 $FF $07
    cp $0F                                        ; $693F: $FE $0F
    nop                                           ; $6941: $00
    ld de, $1D0E                                  ; $6942: $11 $0E $1D
    ld [bc], a                                    ; $6945: $02
    inc hl                                        ; $6946: $23
    inc e                                         ; $6947: $1C
    xor a                                         ; $6948: $AF
    inc de                                        ; $6949: $13
    rst RST_28                                    ; $694A: $EF
    sub a                                         ; $694B: $97
    rst RST_18                                    ; $694C: $DF
    xor a                                         ; $694D: $AF
    rst RST_28                                    ; $694E: $EF
    rst RST_10                                    ; $694F: $D7
    rst RST_38                                    ; $6950: $FF
    rst RST_20                                    ; $6951: $E7
    rst RST_38                                    ; $6952: $FF
    db $DB                                        ; $6953: $DB
    rst RST_38                                    ; $6954: $FF
    cp e                                          ; $6955: $BB
    rst RST_38                                    ; $6956: $FF
    cp l                                          ; $6957: $BD
    ccf                                           ; $6958: $3F
    db $FD                                        ; $6959: $FD
    ld a, a                                       ; $695A: $7F
    cp $7F                                        ; $695B: $FE $7F
    rst RST_38                                    ; $695D: $FF
    rst RST_38                                    ; $695E: $FF
    xor a                                         ; $695F: $AF
    add b                                         ; $6960: $80
    nop                                           ; $6961: $00
    ld b, b                                       ; $6962: $40
    add b                                         ; $6963: $80
    ret nz                                        ; $6964: $C0

    nop                                           ; $6965: $00
    ldh [$FFC0], a                                ; $6966: $E0 $C0
    ldh a, [$FFE0]                                ; $6968: $F0 $E0
    ld hl, sp-$10                                 ; $696A: $F8 $F0
    ld hl, sp-$10                                 ; $696C: $F8 $F0
    db $FC                                        ; $696E: $FC
    ld hl, sp-$04                                 ; $696F: $F8 $FC
    ld hl, sp-$02                                 ; $6971: $F8 $FE
    db $FC                                        ; $6973: $FC
    cp $FC                                        ; $6974: $FE $FC
    cp $FC                                        ; $6976: $FE $FC
    cp $FC                                        ; $6978: $FE $FC
    db $FC                                        ; $697A: $FC
    ld hl, sp-$04                                 ; $697B: $F8 $FC
    ld hl, sp-$08                                 ; $697D: $F8 $F8
    ldh [rNR22], a                                ; $697F: $E0 $17
    ld [$0F10], sp                                ; $6981: $08 $10 $0F
    inc d                                         ; $6984: $14
    dec bc                                        ; $6985: $0B
    inc d                                         ; $6986: $14
    dec bc                                        ; $6987: $0B
    inc d                                         ; $6988: $14
    dec bc                                        ; $6989: $0B
    ld a, [de]                                    ; $698A: $1A
    dec b                                         ; $698B: $05
    ld a, [hl-]                                   ; $698C: $3A
    dec d                                         ; $698D: $15
    ld a, l                                       ; $698E: $7D
    ld a, [hl-]                                   ; $698F: $3A
    ld e, [hl]                                    ; $6990: $5E
    dec a                                         ; $6991: $3D
    sbc a                                         ; $6992: $9F
    ld a, [hl]                                    ; $6993: $7E
    cp a                                          ; $6994: $BF
    ld a, a                                       ; $6995: $7F
    rst RST_38                                    ; $6996: $FF
    ld a, [hl]                                    ; $6997: $7E
    ld a, a                                       ; $6998: $7F
    add hl, sp                                    ; $6999: $39
    ccf                                           ; $699A: $3F
    rra                                           ; $699B: $1F
    ld a, a                                       ; $699C: $7F
    rlca                                          ; $699D: $07
    and a                                         ; $699E: $A7
    ld e, e                                       ; $699F: $5B
    rrca                                          ; $69A0: $0F
    ei                                            ; $69A1: $FB
    ccf                                           ; $69A2: $3F
    rst RST_30                                    ; $69A3: $F7
    rst RST_38                                    ; $69A4: $FF
    rrca                                          ; $69A5: $0F
    rrca                                          ; $69A6: $0F
    rst RST_38                                    ; $69A7: $FF
    rrca                                          ; $69A8: $0F
    cp $0F                                        ; $69A9: $FE $0F
    cp $07                                        ; $69AB: $FE $07
    rst RST_38                                    ; $69AD: $FF
    rlca                                          ; $69AE: $07
    rst RST_38                                    ; $69AF: $FF
    rrca                                          ; $69B0: $0F
    rst RST_38                                    ; $69B1: $FF
    rra                                           ; $69B2: $1F
    rst RST_28                                    ; $69B3: $EF
    cp a                                          ; $69B4: $BF
    ld e, a                                       ; $69B5: $5F
    rst RST_38                                    ; $69B6: $FF
    rra                                           ; $69B7: $1F
    sub a                                         ; $69B8: $97
    rrca                                          ; $69B9: $0F
    sub e                                         ; $69BA: $93
    rrca                                          ; $69BB: $0F
    adc c                                         ; $69BC: $89
    rlca                                          ; $69BD: $07
    rst RST_00                                    ; $69BE: $C7
    add e                                         ; $69BF: $83
    rst RST_38                                    ; $69C0: $FF
    add b                                         ; $69C1: $80
    ldh [$FFC0], a                                ; $69C2: $E0 $C0
    ret nz                                        ; $69C4: $C0

    add b                                         ; $69C5: $80
    add b                                         ; $69C6: $80
    nop                                           ; $69C7: $00
    nop                                           ; $69C8: $00
    nop                                           ; $69C9: $00
    nop                                           ; $69CA: $00
    nop                                           ; $69CB: $00
    add b                                         ; $69CC: $80
    nop                                           ; $69CD: $00
    add b                                         ; $69CE: $80
    nop                                           ; $69CF: $00
    ret nz                                        ; $69D0: $C0

    add b                                         ; $69D1: $80
    ret nz                                        ; $69D2: $C0

    add b                                         ; $69D3: $80
    ldh [$FFC0], a                                ; $69D4: $E0 $C0
    ldh a, [$FFC0]                                ; $69D6: $F0 $C0
    ld hl, sp-$30                                 ; $69D8: $F8 $D0
    db $FC                                        ; $69DA: $FC
    ld hl, sp-$04                                 ; $69DB: $F8 $FC
    ld hl, sp-$02                                 ; $69DD: $F8 $FE
    db $FC                                        ; $69DF: $FC
    rst RST_38                                    ; $69E0: $FF
    nop                                           ; $69E1: $00
    nop                                           ; $69E2: $00
    nop                                           ; $69E3: $00
    nop                                           ; $69E4: $00
    nop                                           ; $69E5: $00
    nop                                           ; $69E6: $00
    nop                                           ; $69E7: $00
    nop                                           ; $69E8: $00
    nop                                           ; $69E9: $00
    nop                                           ; $69EA: $00
    nop                                           ; $69EB: $00
    nop                                           ; $69EC: $00
    nop                                           ; $69ED: $00
    nop                                           ; $69EE: $00
    nop                                           ; $69EF: $00
    nop                                           ; $69F0: $00
    nop                                           ; $69F1: $00
    nop                                           ; $69F2: $00
    nop                                           ; $69F3: $00
    nop                                           ; $69F4: $00
    nop                                           ; $69F5: $00
    nop                                           ; $69F6: $00
    nop                                           ; $69F7: $00
    nop                                           ; $69F8: $00
    nop                                           ; $69F9: $00
    nop                                           ; $69FA: $00
    nop                                           ; $69FB: $00
    nop                                           ; $69FC: $00
    nop                                           ; $69FD: $00
    nop                                           ; $69FE: $00
    nop                                           ; $69FF: $00
    rst RST_00                                    ; $6A00: $C7
    add e                                         ; $6A01: $83
    jp $8181                                      ; $6A02: $C3 $81 $81


    nop                                           ; $6A05: $00
    ld bc, $0000                                  ; $6A06: $01 $00 $00
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
    nop                                           ; $6A16: $00
    nop                                           ; $6A17: $00
    nop                                           ; $6A18: $00
    nop                                           ; $6A19: $00
    nop                                           ; $6A1A: $00
    nop                                           ; $6A1B: $00
    nop                                           ; $6A1C: $00
    nop                                           ; $6A1D: $00
    nop                                           ; $6A1E: $00
    nop                                           ; $6A1F: $00
    cp $FC                                        ; $6A20: $FE $FC
    rst RST_38                                    ; $6A22: $FF
    ld b, $57                                     ; $6A23: $06 $57
    xor d                                         ; $6A25: $AA
    rst RST_38                                    ; $6A26: $FF
    nop                                           ; $6A27: $00
    nop                                           ; $6A28: $00
    nop                                           ; $6A29: $00
    nop                                           ; $6A2A: $00
    nop                                           ; $6A2B: $00
    nop                                           ; $6A2C: $00
    nop                                           ; $6A2D: $00
    nop                                           ; $6A2E: $00
    nop                                           ; $6A2F: $00
    nop                                           ; $6A30: $00
    nop                                           ; $6A31: $00
    nop                                           ; $6A32: $00
    nop                                           ; $6A33: $00
    nop                                           ; $6A34: $00
    nop                                           ; $6A35: $00
    nop                                           ; $6A36: $00
    nop                                           ; $6A37: $00
    nop                                           ; $6A38: $00
    nop                                           ; $6A39: $00
    nop                                           ; $6A3A: $00
    nop                                           ; $6A3B: $00
    nop                                           ; $6A3C: $00
    nop                                           ; $6A3D: $00
    nop                                           ; $6A3E: $00
    nop                                           ; $6A3F: $00
    nop                                           ; $6A40: $00
    nop                                           ; $6A41: $00
    ld b, b                                       ; $6A42: $40
    nop                                           ; $6A43: $00
    jr nc, jr_013_6A46                            ; $6A44: $30 $00

jr_013_6A46:
    inc a                                         ; $6A46: $3C
    db $10                                        ; $6A47: $10
    rra                                           ; $6A48: $1F
    inc c                                         ; $6A49: $0C
    dec de                                        ; $6A4A: $1B
    rrca                                          ; $6A4B: $0F
    inc c                                         ; $6A4C: $0C
    rlca                                          ; $6A4D: $07
    inc c                                         ; $6A4E: $0C
    rlca                                          ; $6A4F: $07
    ld b, $03                                     ; $6A50: $06 $03
    ld b, $03                                     ; $6A52: $06 $03
    inc bc                                        ; $6A54: $03
    ld bc, $0103                                  ; $6A55: $01 $03 $01
    ld bc, $0100                                  ; $6A58: $01 $00 $01
    nop                                           ; $6A5B: $00
    nop                                           ; $6A5C: $00
    nop                                           ; $6A5D: $00
    nop                                           ; $6A5E: $00
    nop                                           ; $6A5F: $00
    ld bc, $0100                                  ; $6A60: $01 $00 $01
    nop                                           ; $6A63: $00
    ld bc, $0100                                  ; $6A64: $01 $00 $01
    nop                                           ; $6A67: $00
    ld bc, $8100                                  ; $6A68: $01 $00 $81
    nop                                           ; $6A6B: $00
    pop hl                                        ; $6A6C: $E1
    add b                                         ; $6A6D: $80
    ld a, c                                       ; $6A6E: $79
    ldh [$FF1F], a                                ; $6A6F: $E0 $1F
    ld hl, sp+$07                                 ; $6A71: $F8 $07
    cp $01                                        ; $6A73: $FE $01
    rst RST_38                                    ; $6A75: $FF
    nop                                           ; $6A76: $00
    rst RST_38                                    ; $6A77: $FF
    add b                                         ; $6A78: $80
    rst RST_38                                    ; $6A79: $FF
    add b                                         ; $6A7A: $80
    rst RST_38                                    ; $6A7B: $FF
    ret nz                                        ; $6A7C: $C0

    ld a, a                                       ; $6A7D: $7F
    ret nz                                        ; $6A7E: $C0

    ld a, a                                       ; $6A7F: $7F
    or l                                          ; $6A80: $B5
    ldh [c], a                                    ; $6A81: $E2
    sbc l                                         ; $6A82: $9D
    ldh a, [c]                                    ; $6A83: $F2
    adc l                                         ; $6A84: $8D
    ld a, [$FD86]                                 ; $6A85: $FA $86 $FD
    adc e                                         ; $6A88: $8B
    or $91                                        ; $6A89: $F6 $91
    rst RST_28                                    ; $6A8B: $EF
    sub b                                         ; $6A8C: $90
    rst RST_28                                    ; $6A8D: $EF
    and b                                         ; $6A8E: $A0
    rst RST_18                                    ; $6A8F: $DF
    and b                                         ; $6A90: $A0
    rst RST_18                                    ; $6A91: $DF
    and b                                         ; $6A92: $A0
    rst RST_18                                    ; $6A93: $DF
    sub c                                         ; $6A94: $91
    xor $08                                       ; $6A95: $EE $08
    rst RST_30                                    ; $6A97: $F7
    ld e, $E1                                     ; $6A98: $1E $E1
    add hl, hl                                    ; $6A9A: $29
    sub $3F                                       ; $6A9B: $D6 $3F
    ret nz                                        ; $6A9D: $C0

    nop                                           ; $6A9E: $00
    rst RST_38                                    ; $6A9F: $FF
    inc bc                                        ; $6AA0: $03
    db $FD                                        ; $6AA1: $FD
    ld b, $FB                                     ; $6AA2: $06 $FB
    ld b, $FB                                     ; $6AA4: $06 $FB
    adc h                                         ; $6AA6: $8C
    ld [hl], a                                    ; $6AA7: $77
    adc h                                         ; $6AA8: $8C
    ld [hl], a                                    ; $6AA9: $77
    call c, $F82B                                 ; $6AAA: $DC $2B $F8
    adc a                                         ; $6AAD: $8F
    ld a, b                                       ; $6AAE: $78
    rst RST_10                                    ; $6AAF: $D7
    inc h                                         ; $6AB0: $24
    ei                                            ; $6AB1: $FB
    ld h, h                                       ; $6AB2: $64
    sbc e                                         ; $6AB3: $9B
    and d                                         ; $6AB4: $A2
    ld e, l                                       ; $6AB5: $5D
    ld de, $11EE                                  ; $6AB6: $11 $EE $11
    xor $10                                       ; $6AB9: $EE $10
    rst RST_28                                    ; $6ABB: $EF
    ldh [$FF1F], a                                ; $6ABC: $E0 $1F
    nop                                           ; $6ABE: $00
    rst RST_38                                    ; $6ABF: $FF
    ld [hl], e                                    ; $6AC0: $73
    and c                                         ; $6AC1: $A1
    ld [hl], e                                    ; $6AC2: $73
    and c                                         ; $6AC3: $A1
    scf                                           ; $6AC4: $37
    db $E3                                        ; $6AC5: $E3
    scf                                           ; $6AC6: $37
    db $E3                                        ; $6AC7: $E3
    dec a                                         ; $6AC8: $3D
    rst RST_20                                    ; $6AC9: $E7
    dec a                                         ; $6ACA: $3D
    rst RST_20                                    ; $6ACB: $E7
    add hl, sp                                    ; $6ACC: $39
    rst RST_28                                    ; $6ACD: $EF
    dec a                                         ; $6ACE: $3D
    db $EB                                        ; $6ACF: $EB
    dec sp                                        ; $6AD0: $3B
    push af                                       ; $6AD1: $F5
    ld hl, $01FF                                  ; $6AD2: $21 $FF $01
    rst RST_38                                    ; $6AD5: $FF
    nop                                           ; $6AD6: $00
    rst RST_38                                    ; $6AD7: $FF
    nop                                           ; $6AD8: $00
    rst RST_38                                    ; $6AD9: $FF
    cp [hl]                                       ; $6ADA: $BE
    ld b, c                                       ; $6ADB: $41
    ld d, l                                       ; $6ADC: $55
    xor d                                         ; $6ADD: $AA
    ld a, a                                       ; $6ADE: $7F
    add b                                         ; $6ADF: $80
    add b                                         ; $6AE0: $80
    nop                                           ; $6AE1: $00
    add c                                         ; $6AE2: $81
    nop                                           ; $6AE3: $00
    add e                                         ; $6AE4: $83
    ld bc, $0386                                  ; $6AE5: $01 $86 $03
    adc h                                         ; $6AE8: $8C
    rlca                                          ; $6AE9: $07
    sbc b                                         ; $6AEA: $98
    rrca                                          ; $6AEB: $0F
    or c                                          ; $6AEC: $B1
    rra                                           ; $6AED: $1F
    pop hl                                        ; $6AEE: $E1
    ccf                                           ; $6AEF: $3F
    jp $837E                                      ; $6AF0: $C3 $7E $83


    cp $06                                        ; $6AF3: $FE $06
    db $FC                                        ; $6AF5: $FC
    add [hl]                                      ; $6AF6: $86
    ld a, h                                       ; $6AF7: $7C
    adc h                                         ; $6AF8: $8C
    ld a, b                                       ; $6AF9: $78
    ld c, h                                       ; $6AFA: $4C
    cp b                                          ; $6AFB: $B8
    ld e, b                                       ; $6AFC: $58
    or b                                          ; $6AFD: $B0
    ret c                                         ; $6AFE: $D8

    jr nc, jr_013_6B01                            ; $6AFF: $30 $00

jr_013_6B01:
    nop                                           ; $6B01: $00
    ld bc, $0200                                  ; $6B02: $01 $00 $02
    nop                                           ; $6B05: $00
    ld b, $00                                     ; $6B06: $06 $00
    inc c                                         ; $6B08: $0C
    nop                                           ; $6B09: $00
    inc e                                         ; $6B0A: $1C
    ld [$1038], sp                                ; $6B0B: $08 $38 $10
    ld a, b                                       ; $6B0E: $78
    jr nc, jr_013_6B01                            ; $6B0F: $30 $F0

    ld h, b                                       ; $6B11: $60
    or b                                          ; $6B12: $B0
    ldh [$FF60], a                                ; $6B13: $E0 $60
    ret nz                                        ; $6B15: $C0

    ld h, b                                       ; $6B16: $60
    ret nz                                        ; $6B17: $C0

    ret nz                                        ; $6B18: $C0

    add b                                         ; $6B19: $80
    ret nz                                        ; $6B1A: $C0

    add b                                         ; $6B1B: $80
    add b                                         ; $6B1C: $80
    nop                                           ; $6B1D: $00
    add b                                         ; $6B1E: $80
    nop                                           ; $6B1F: $00
    dec d                                         ; $6B20: $15
    ld a, [bc]                                    ; $6B21: $0A
    rla                                           ; $6B22: $17
    ld [$153E], sp                                ; $6B23: $08 $3E $15
    ccf                                           ; $6B26: $3F
    ld e, $7F                                     ; $6B27: $1E $7F
    ccf                                           ; $6B29: $3F
    ld a, a                                       ; $6B2A: $7F
    ld a, $7F                                     ; $6B2B: $3E $7F
    jr c, @+$01                                   ; $6B2D: $38 $FF

    halt                                          ; $6B2F: $76
    rst RST_38                                    ; $6B30: $FF
    ld a, [hl]                                    ; $6B31: $7E
    rst RST_38                                    ; $6B32: $FF
    ld a, [hl]                                    ; $6B33: $7E
    cp $7D                                        ; $6B34: $FE $7D
    db $FD                                        ; $6B36: $FD
    ld a, d                                       ; $6B37: $7A
    ld a, l                                       ; $6B38: $7D
    ld a, [hl-]                                   ; $6B39: $3A
    db $FD                                        ; $6B3A: $FD
    ld [bc], a                                    ; $6B3B: $02
    ldh [c], a                                    ; $6B3C: $E2
    ld b, c                                       ; $6B3D: $41
    ldh a, [c]                                    ; $6B3E: $F2
    ld h, c                                       ; $6B3F: $61
    ld e, a                                       ; $6B40: $5F
    adc a                                         ; $6B41: $8F
    rst RST_38                                    ; $6B42: $FF
    rra                                           ; $6B43: $1F
    rst RST_38                                    ; $6B44: $FF
    ld a, a                                       ; $6B45: $7F
    ei                                            ; $6B46: $FB
    ld b, a                                       ; $6B47: $47
    db $DB                                        ; $6B48: $DB
    daa                                           ; $6B49: $27
    or a                                          ; $6B4A: $B7
    adc $0F                                       ; $6B4B: $CE $0F
    cp $EF                                        ; $6B4D: $FE $EF
    dec e                                         ; $6B4F: $1D
    inc e                                         ; $6B50: $1C
    db $E3                                        ; $6B51: $E3
    ldh [$FF1F], a                                ; $6B52: $E0 $1F
    add b                                         ; $6B54: $80
    ld a, a                                       ; $6B55: $7F
    nop                                           ; $6B56: $00

jr_013_6B57:
    rst RST_38                                    ; $6B57: $FF
    ld bc, $07FF                                  ; $6B58: $01 $FF $07
    cp $FF                                        ; $6B5B: $FE $FF
    ld bc, $FE01                                  ; $6B5D: $01 $01 $FE
    xor a                                         ; $6B60: $AF
    inc de                                        ; $6B61: $13
    rst RST_28                                    ; $6B62: $EF
    sub a                                         ; $6B63: $97
    rst RST_18                                    ; $6B64: $DF
    xor a                                         ; $6B65: $AF
    rst RST_28                                    ; $6B66: $EF
    rst RST_10                                    ; $6B67: $D7
    rst RST_38                                    ; $6B68: $FF
    rst RST_20                                    ; $6B69: $E7
    rst RST_38                                    ; $6B6A: $FF
    db $DB                                        ; $6B6B: $DB
    rst RST_38                                    ; $6B6C: $FF
    or e                                          ; $6B6D: $B3
    rst RST_38                                    ; $6B6E: $FF
    and l                                         ; $6B6F: $A5
    ccf                                           ; $6B70: $3F
    push hl                                       ; $6B71: $E5
    ld a, a                                       ; $6B72: $7F
    sub $7F                                       ; $6B73: $D6 $7F
    rst RST_10                                    ; $6B75: $D7
    rst RST_38                                    ; $6B76: $FF
    or a                                          ; $6B77: $B7
    rst RST_38                                    ; $6B78: $FF
    jr nc, jr_013_6B57                            ; $6B79: $30 $DC

    ld [hl], b                                    ; $6B7B: $70
    ret c                                         ; $6B7C: $D8

    ld [hl], b                                    ; $6B7D: $70
    sbc b                                         ; $6B7E: $98
    ldh a, [$FFF0]                                ; $6B7F: $F0 $F0
    ldh [$FFF8], a                                ; $6B81: $E0 $F8
    ldh a, [$FFF8]                                ; $6B83: $F0 $F8
    ldh a, [$FFFC]                                ; $6B85: $F0 $FC
    ld hl, sp-$04                                 ; $6B87: $F8 $FC
    ld hl, sp-$02                                 ; $6B89: $F8 $FE
    db $FC                                        ; $6B8B: $FC
    cp $FC                                        ; $6B8C: $FE $FC
    cp $FC                                        ; $6B8E: $FE $FC
    cp $FC                                        ; $6B90: $FE $FC
    db $FC                                        ; $6B92: $FC
    ld hl, sp-$04                                 ; $6B93: $F8 $FC
    ld hl, sp-$08                                 ; $6B95: $F8 $F8
    ldh [$FFE0], a                                ; $6B97: $E0 $E0
    nop                                           ; $6B99: $00
    ld b, b                                       ; $6B9A: $40
    nop                                           ; $6B9B: $00
    ret nz                                        ; $6B9C: $C0

    nop                                           ; $6B9D: $00
    ret nz                                        ; $6B9E: $C0

    nop                                           ; $6B9F: $00
    nop                                           ; $6BA0: $00
    nop                                           ; $6BA1: $00
    nop                                           ; $6BA2: $00
    nop                                           ; $6BA3: $00
    nop                                           ; $6BA4: $00
    nop                                           ; $6BA5: $00
    nop                                           ; $6BA6: $00
    nop                                           ; $6BA7: $00
    nop                                           ; $6BA8: $00
    nop                                           ; $6BA9: $00
    nop                                           ; $6BAA: $00
    nop                                           ; $6BAB: $00
    nop                                           ; $6BAC: $00
    nop                                           ; $6BAD: $00
    nop                                           ; $6BAE: $00
    nop                                           ; $6BAF: $00
    nop                                           ; $6BB0: $00
    nop                                           ; $6BB1: $00
    nop                                           ; $6BB2: $00
    nop                                           ; $6BB3: $00
    nop                                           ; $6BB4: $00
    nop                                           ; $6BB5: $00
    nop                                           ; $6BB6: $00
    nop                                           ; $6BB7: $00
    nop                                           ; $6BB8: $00
    nop                                           ; $6BB9: $00
    nop                                           ; $6BBA: $00
    nop                                           ; $6BBB: $00
    jr c, jr_013_6BBE                             ; $6BBC: $38 $00

jr_013_6BBE:
    call nc, RST_28                               ; $6BBE: $D4 $28 $00
    nop                                           ; $6BC1: $00
    nop                                           ; $6BC2: $00
    nop                                           ; $6BC3: $00
    nop                                           ; $6BC4: $00
    nop                                           ; $6BC5: $00
    nop                                           ; $6BC6: $00
    nop                                           ; $6BC7: $00
    nop                                           ; $6BC8: $00
    nop                                           ; $6BC9: $00
    nop                                           ; $6BCA: $00
    nop                                           ; $6BCB: $00
    nop                                           ; $6BCC: $00
    nop                                           ; $6BCD: $00
    nop                                           ; $6BCE: $00
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
    ld bc, $0100                                  ; $6BDA: $01 $00 $01
    nop                                           ; $6BDD: $00
    ldh a, [c]                                    ; $6BDE: $F2
    ld bc, $0000                                  ; $6BDF: $01 $00 $00
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
    ld hl, sp+$00                                 ; $6BF8: $F8 $00
    inc d                                         ; $6BFA: $14
    add sp, -$24                                  ; $6BFB: $E8 $DC
    jr nz, jr_013_6C3D                            ; $6BFD: $20 $3E

    call z, RST_00                                ; $6BFF: $CC $00 $00
    nop                                           ; $6C02: $00
    nop                                           ; $6C03: $00
    nop                                           ; $6C04: $00
    nop                                           ; $6C05: $00
    nop                                           ; $6C06: $00
    nop                                           ; $6C07: $00

jr_013_6C08:
    rlca                                          ; $6C08: $07
    nop                                           ; $6C09: $00
    rrca                                          ; $6C0A: $0F
    rlca                                          ; $6C0B: $07
    ccf                                           ; $6C0C: $3F
    rrca                                          ; $6C0D: $0F
    ld a, a                                       ; $6C0E: $7F
    ccf                                           ; $6C0F: $3F
    ld a, l                                       ; $6C10: $7D
    inc hl                                        ; $6C11: $23
    ld l, l                                       ; $6C12: $6D
    inc de                                        ; $6C13: $13
    db $DB                                        ; $6C14: $DB
    ld h, a                                       ; $6C15: $67
    add e                                         ; $6C16: $83
    ld a, a                                       ; $6C17: $7F
    rst RST_20                                    ; $6C18: $E7
    rra                                           ; $6C19: $1F
    rla                                           ; $6C1A: $17
    xor $FF                                       ; $6C1B: $EE $FF
    ld a, l                                       ; $6C1D: $7D
    ld a, l                                       ; $6C1E: $7D
    nop                                           ; $6C1F: $00
    nop                                           ; $6C20: $00
    nop                                           ; $6C21: $00
    inc bc                                        ; $6C22: $03
    nop                                           ; $6C23: $00
    dec b                                         ; $6C24: $05
    ld [bc], a                                    ; $6C25: $02
    ld a, [de]                                    ; $6C26: $1A
    dec b                                         ; $6C27: $05
    inc h                                         ; $6C28: $24
    dec de                                        ; $6C29: $1B
    jr z, jr_013_6C43                             ; $6C2A: $28 $17

    jr z, jr_013_6C45                             ; $6C2C: $28 $17

    jr jr_013_6C37                                ; $6C2E: $18 $07

    inc d                                         ; $6C30: $14
    dec bc                                        ; $6C31: $0B
    inc d                                         ; $6C32: $14
    dec bc                                        ; $6C33: $0B
    ld c, $01                                     ; $6C34: $0E $01
    rlca                                          ; $6C36: $07

jr_013_6C37:
    nop                                           ; $6C37: $00
    ld e, $01                                     ; $6C38: $1E $01
    ccf                                           ; $6C3A: $3F
    ld e, $7F                                     ; $6C3B: $1E $7F

jr_013_6C3D:
    ccf                                           ; $6C3D: $3F
    ld a, a                                       ; $6C3E: $7F
    ccf                                           ; $6C3F: $3F
    nop                                           ; $6C40: $00
    nop                                           ; $6C41: $00
    nop                                           ; $6C42: $00

jr_013_6C43:
    nop                                           ; $6C43: $00
    ret nz                                        ; $6C44: $C0

jr_013_6C45:
    nop                                           ; $6C45: $00
    jr nc, jr_013_6C08                            ; $6C46: $30 $C0

    inc c                                         ; $6C48: $0C
    ldh a, [rTMA]                                 ; $6C49: $F0 $06
    ld hl, sp+$03                                 ; $6C4B: $F8 $03
    db $FC                                        ; $6C4D: $FC
    ld bc, $01FE                                  ; $6C4E: $01 $FE $01
    cp $00                                        ; $6C51: $FE $00
    rst RST_38                                    ; $6C53: $FF
    ld b, b                                       ; $6C54: $40
    cp a                                          ; $6C55: $BF
    add c                                         ; $6C56: $81
    ld a, [hl]                                    ; $6C57: $7E

jr_013_6C58:
    ld [bc], a                                    ; $6C58: $02
    db $FD                                        ; $6C59: $FD
    ld [bc], a                                    ; $6C5A: $02
    db $FD                                        ; $6C5B: $FD
    add h                                         ; $6C5C: $84
    ld a, e                                       ; $6C5D: $7B
    call nz, $007B                                ; $6C5E: $C4 $7B $00
    nop                                           ; $6C61: $00
    nop                                           ; $6C62: $00
    nop                                           ; $6C63: $00
    nop                                           ; $6C64: $00
    nop                                           ; $6C65: $00
    nop                                           ; $6C66: $00
    nop                                           ; $6C67: $00
    nop                                           ; $6C68: $00
    nop                                           ; $6C69: $00

jr_013_6C6A:
    nop                                           ; $6C6A: $00
    nop                                           ; $6C6B: $00
    nop                                           ; $6C6C: $00
    nop                                           ; $6C6D: $00
    add b                                         ; $6C6E: $80
    nop                                           ; $6C6F: $00
    ld b, b                                       ; $6C70: $40
    add b                                         ; $6C71: $80
    and b                                         ; $6C72: $A0
    ld b, b                                       ; $6C73: $40
    or b                                          ; $6C74: $B0
    ld h, b                                       ; $6C75: $60
    jr c, jr_013_6C58                             ; $6C76: $38 $E0

    jr jr_013_6C6A                                ; $6C78: $18 $F0

    inc e                                         ; $6C7A: $1C
    ld hl, sp+$0C                                 ; $6C7B: $F8 $0C
    ld hl, sp+$0E                                 ; $6C7D: $F8 $0E
    db $FC                                        ; $6C7F: $FC
    rst RST_38                                    ; $6C80: $FF
    ld a, a                                       ; $6C81: $7F
    rst RST_38                                    ; $6C82: $FF
    cp a                                          ; $6C83: $BF
    rst RST_38                                    ; $6C84: $FF
    rst RST_18                                    ; $6C85: $DF
    rst RST_38                                    ; $6C86: $FF
    rst RST_30                                    ; $6C87: $F7
    rst RST_38                                    ; $6C88: $FF
    cp $FF                                        ; $6C89: $FE $FF
    rst RST_38                                    ; $6C8B: $FF
    rst RST_38                                    ; $6C8C: $FF
    ld a, a                                       ; $6C8D: $7F
    rst RST_38                                    ; $6C8E: $FF
    ld a, a                                       ; $6C8F: $7F
    rst RST_38                                    ; $6C90: $FF
    ld a, h                                       ; $6C91: $7C
    rst RST_38                                    ; $6C92: $FF
    rst RST_18                                    ; $6C93: $DF
    rst RST_38                                    ; $6C94: $FF
    cp a                                          ; $6C95: $BF
    rst RST_38                                    ; $6C96: $FF
    cp a                                          ; $6C97: $BF
    rst RST_18                                    ; $6C98: $DF
    ccf                                           ; $6C99: $3F
    ld e, a                                       ; $6C9A: $5F
    ccf                                           ; $6C9B: $3F
    daa                                           ; $6C9C: $27
    rra                                           ; $6C9D: $1F
    db $10                                        ; $6C9E: $10
    rrca                                          ; $6C9F: $0F
    add sp, -$49                                  ; $6CA0: $E8 $B7
    ldh a, [$FFCF]                                ; $6CA2: $F0 $CF
    db $FC                                        ; $6CA4: $FC
    rst RST_18                                    ; $6CA5: $DF
    rst RST_38                                    ; $6CA6: $FF
    rst RST_28                                    ; $6CA7: $EF
    rst RST_38                                    ; $6CA8: $FF
    ld [hl], e                                    ; $6CA9: $73
    rst RST_38                                    ; $6CAA: $FF
    sbc b                                         ; $6CAB: $98
    rst RST_38                                    ; $6CAC: $FF
    rst RST_20                                    ; $6CAD: $E7
    rst RST_38                                    ; $6CAE: $FF
    rra                                           ; $6CAF: $1F
    rst RST_38                                    ; $6CB0: $FF
    rst RST_38                                    ; $6CB1: $FF
    rst RST_38                                    ; $6CB2: $FF
    rst RST_38                                    ; $6CB3: $FF
    rst RST_38                                    ; $6CB4: $FF
    rst RST_38                                    ; $6CB5: $FF
    rst RST_38                                    ; $6CB6: $FF
    rst RST_30                                    ; $6CB7: $F7
    rst RST_38                                    ; $6CB8: $FF
    rst RST_30                                    ; $6CB9: $F7
    rst RST_38                                    ; $6CBA: $FF
    rst RST_30                                    ; $6CBB: $F7
    cp a                                          ; $6CBC: $BF
    rst RST_28                                    ; $6CBD: $EF
    rst RST_38                                    ; $6CBE: $FF
    rlca                                          ; $6CBF: $07
    ld c, $FC                                     ; $6CC0: $0E $FC
    ld e, $FC                                     ; $6CC2: $1E $FC
    ld a, $FC                                     ; $6CC4: $3E $FC
    rst RST_38                                    ; $6CC6: $FF
    db $FC                                        ; $6CC7: $FC
    rst RST_38                                    ; $6CC8: $FF
    ld hl, sp-$01                                 ; $6CC9: $F8 $FF
    ldh a, [rIE]                                  ; $6CCB: $F0 $FF
    nop                                           ; $6CCD: $00
    rst RST_38                                    ; $6CCE: $FF
    add b                                         ; $6CCF: $80
    rst RST_38                                    ; $6CD0: $FF
    add b                                         ; $6CD1: $80
    rst RST_38                                    ; $6CD2: $FF
    ret nz                                        ; $6CD3: $C0

    cp $C0                                        ; $6CD4: $FE $C0
    cp $D0                                        ; $6CD6: $FE $D0
    cp $D0                                        ; $6CD8: $FE $D0
    cp $D8                                        ; $6CDA: $FE $D8
    cp $90                                        ; $6CDC: $FE $90
    cp a                                          ; $6CDE: $BF
    ld e, [hl]                                    ; $6CDF: $5E
    ld a, a                                       ; $6CE0: $7F
    inc bc                                        ; $6CE1: $03
    cp a                                          ; $6CE2: $BF
    ld a, a                                       ; $6CE3: $7F
    sbc a                                         ; $6CE4: $9F
    ld a, [hl]                                    ; $6CE5: $7E
    sbc a                                         ; $6CE6: $9F
    ld a, c                                       ; $6CE7: $79
    ld e, a                                       ; $6CE8: $5F
    ccf                                           ; $6CE9: $3F
    ld a, a                                       ; $6CEA: $7F
    ccf                                           ; $6CEB: $3F
    ld a, a                                       ; $6CEC: $7F
    rrca                                          ; $6CED: $0F
    xor a                                         ; $6CEE: $AF
    ld d, a                                       ; $6CEF: $57
    rst RST_38                                    ; $6CF0: $FF
    nop                                           ; $6CF1: $00
    nop                                           ; $6CF2: $00
    nop                                           ; $6CF3: $00
    nop                                           ; $6CF4: $00
    nop                                           ; $6CF5: $00
    nop                                           ; $6CF6: $00
    nop                                           ; $6CF7: $00
    nop                                           ; $6CF8: $00
    nop                                           ; $6CF9: $00
    nop                                           ; $6CFA: $00
    nop                                           ; $6CFB: $00
    nop                                           ; $6CFC: $00
    nop                                           ; $6CFD: $00
    nop                                           ; $6CFE: $00
    nop                                           ; $6CFF: $00
    sbc h                                         ; $6D00: $9C
    ld h, e                                       ; $6D01: $63
    pop hl                                        ; $6D02: $E1
    sbc [hl]                                      ; $6D03: $9E
    xor c                                         ; $6D04: $A9
    ld d, $9E                                     ; $6D05: $16 $9E
    nop                                           ; $6D07: $00
    ret nz                                        ; $6D08: $C0

    add b                                         ; $6D09: $80
    ret nz                                        ; $6D0A: $C0

    add b                                         ; $6D0B: $80
    ret nz                                        ; $6D0C: $C0

    add b                                         ; $6D0D: $80
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
    nop                                           ; $6D1E: $00
    nop                                           ; $6D1F: $00
    cp $7C                                        ; $6D20: $FE $7C
    cp $E0                                        ; $6D22: $FE $E0
    rst RST_38                                    ; $6D24: $FF
    ret nz                                        ; $6D25: $C0

    rst RST_38                                    ; $6D26: $FF
    nop                                           ; $6D27: $00
    ld a, a                                       ; $6D28: $7F
    nop                                           ; $6D29: $00
    dec a                                         ; $6D2A: $3D
    ld [bc], a                                    ; $6D2B: $02
    ld [de], a                                    ; $6D2C: $12
    inc c                                         ; $6D2D: $0C
    ld a, [bc]                                    ; $6D2E: $0A
    inc b                                         ; $6D2F: $04
    inc b                                         ; $6D30: $04
    nop                                           ; $6D31: $00
    nop                                           ; $6D32: $00
    nop                                           ; $6D33: $00
    nop                                           ; $6D34: $00
    nop                                           ; $6D35: $00
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
    ld bc, $0100                                  ; $6D5A: $01 $00 $01
    nop                                           ; $6D5D: $00
    nop                                           ; $6D5E: $00
    nop                                           ; $6D5F: $00
    ldh [$FF7F], a                                ; $6D60: $E0 $7F
    ret nz                                        ; $6D62: $C0

    ld a, a                                       ; $6D63: $7F
    ret nz                                        ; $6D64: $C0

    ld a, a                                       ; $6D65: $7F
    ret nz                                        ; $6D66: $C0

    ld a, a                                       ; $6D67: $7F
    add a                                         ; $6D68: $87
    ld a, b                                       ; $6D69: $78
    sbc b                                         ; $6D6A: $98
    ld h, a                                       ; $6D6B: $67
    and b                                         ; $6D6C: $A0
    ld e, a                                       ; $6D6D: $5F
    and b                                         ; $6D6E: $A0
    ld e, a                                       ; $6D6F: $5F
    and b                                         ; $6D70: $A0
    ld e, a                                       ; $6D71: $5F
    and b                                         ; $6D72: $A0
    ld e, a                                       ; $6D73: $5F
    ret nc                                        ; $6D74: $D0

    cpl                                           ; $6D75: $2F
    ld d, c                                       ; $6D76: $51
    ld l, $4E                                     ; $6D77: $2E $4E
    ld sp, $1B24                                  ; $6D79: $31 $24 $1B
    ld a, $01                                     ; $6D7C: $3E $01
    ld bc, $0300                                  ; $6D7E: $01 $00 $03
    cp $02                                        ; $6D81: $FE $02
    db $FC                                        ; $6D83: $FC
    inc bc                                        ; $6D84: $03
    db $FC                                        ; $6D85: $FC
    rst RST_38                                    ; $6D86: $FF
    ld bc, $FB07                                  ; $6D87: $01 $07 $FB
    rlca                                          ; $6D8A: $07
    ei                                            ; $6D8B: $FB
    rlca                                          ; $6D8C: $07
    ei                                            ; $6D8D: $FB
    rrca                                          ; $6D8E: $0F
    rst RST_30                                    ; $6D8F: $F7
    rrca                                          ; $6D90: $0F
    rst RST_30                                    ; $6D91: $F7
    rrca                                          ; $6D92: $0F
    rst RST_30                                    ; $6D93: $F7
    rrca                                          ; $6D94: $0F
    ldh a, [$FFF0]                                ; $6D95: $F0 $F0
    nop                                           ; $6D97: $00
    add b                                         ; $6D98: $80
    nop                                           ; $6D99: $00
    add b                                         ; $6D9A: $80
    nop                                           ; $6D9B: $00
    add b                                         ; $6D9C: $80
    nop                                           ; $6D9D: $00
    add b                                         ; $6D9E: $80
    nop                                           ; $6D9F: $00
    ret nz                                        ; $6DA0: $C0

    add b                                         ; $6DA1: $80
    add b                                         ; $6DA2: $80
    nop                                           ; $6DA3: $00
    nop                                           ; $6DA4: $00
    nop                                           ; $6DA5: $00
    inc bc                                        ; $6DA6: $03
    nop                                           ; $6DA7: $00
    ccf                                           ; $6DA8: $3F
    inc bc                                        ; $6DA9: $03
    rst RST_38                                    ; $6DAA: $FF
    daa                                           ; $6DAB: $27
    rst RST_38                                    ; $6DAC: $FF
    rst RST_18                                    ; $6DAD: $DF
    cp $D1                                        ; $6DAE: $FE $D1
    or $C9                                        ; $6DB0: $F6 $C9
    ld sp, hl                                     ; $6DB2: $F9
    and a                                         ; $6DB3: $A7
    pop bc                                        ; $6DB4: $C1

jr_013_6DB5:
    cp a                                          ; $6DB5: $BF
    rst RST_38                                    ; $6DB6: $FF

jr_013_6DB7:
    jp $BFC3                                      ; $6DB7: $C3 $C3 $BF


    rst RST_38                                    ; $6DBA: $FF
    ld a, $3E                                     ; $6DBB: $3E $3E
    ld bc, $0001                                  ; $6DBD: $01 $01 $00
    ldh [rP1], a                                  ; $6DC0: $E0 $00
    ld hl, sp-$40                                 ; $6DC2: $F8 $C0
    rst RST_38                                    ; $6DC4: $FF
    ld hl, sp-$01                                 ; $6DC5: $F8 $FF
    cp $FF                                        ; $6DC7: $FE $FF
    db $FD                                        ; $6DC9: $FD
    rst RST_38                                    ; $6DCA: $FF
    db $FD                                        ; $6DCB: $FD
    rst RST_38                                    ; $6DCC: $FF
    cp a                                          ; $6DCD: $BF
    cp $9F                                        ; $6DCE: $FE $9F
    cp $7D                                        ; $6DD0: $FE $7D
    ld sp, hl                                     ; $6DD2: $F9
    ld a, [hl]                                    ; $6DD3: $7E
    jr nz, jr_013_6DB5                            ; $6DD4: $20 $DF

    jr nz, jr_013_6DB7                            ; $6DD6: $20 $DF

    ld de, $EFEE                                  ; $6DD8: $11 $EE $EF
    ld bc, $0F13                                  ; $6DDB: $01 $13 $0F
    rla                                           ; $6DDE: $17
    rrca                                          ; $6DDF: $0F
    daa                                           ; $6DE0: $27
    rra                                           ; $6DE1: $1F
    daa                                           ; $6DE2: $27
    rra                                           ; $6DE3: $1F
    daa                                           ; $6DE4: $27
    rra                                           ; $6DE5: $1F
    rla                                           ; $6DE6: $17
    rrca                                          ; $6DE7: $0F
    rra                                           ; $6DE8: $1F
    rrca                                          ; $6DE9: $0F
    rrca                                          ; $6DEA: $0F
    rlca                                          ; $6DEB: $07
    rra                                           ; $6DEC: $1F
    inc bc                                        ; $6DED: $03
    dec hl                                        ; $6DEE: $2B
    dec d                                         ; $6DEF: $15
    ccf                                           ; $6DF0: $3F
    nop                                           ; $6DF1: $00
    nop                                           ; $6DF2: $00
    nop                                           ; $6DF3: $00
    nop                                           ; $6DF4: $00
    nop                                           ; $6DF5: $00
    nop                                           ; $6DF6: $00
    nop                                           ; $6DF7: $00
    nop                                           ; $6DF8: $00
    nop                                           ; $6DF9: $00
    nop                                           ; $6DFA: $00
    nop                                           ; $6DFB: $00
    nop                                           ; $6DFC: $00
    nop                                           ; $6DFD: $00
    nop                                           ; $6DFE: $00
    nop                                           ; $6DFF: $00
    nop                                           ; $6E00: $00
    nop                                           ; $6E01: $00
    nop                                           ; $6E02: $00
    nop                                           ; $6E03: $00
    ld bc, $0300                                  ; $6E04: $01 $00 $03
    ld bc, $0307                                  ; $6E07: $01 $07 $03
    rrca                                          ; $6E0A: $0F
    rlca                                          ; $6E0B: $07
    rra                                           ; $6E0C: $1F
    rrca                                          ; $6E0D: $0F
    rra                                           ; $6E0E: $1F
    rrca                                          ; $6E0F: $0F
    ccf                                           ; $6E10: $3F
    rra                                           ; $6E11: $1F
    ccf                                           ; $6E12: $3F
    rra                                           ; $6E13: $1F
    ld a, a                                       ; $6E14: $7F
    ccf                                           ; $6E15: $3F
    ld a, [hl]                                    ; $6E16: $7E
    ccf                                           ; $6E17: $3F
    ld a, b                                       ; $6E18: $78
    ccf                                           ; $6E19: $3F
    ldh a, [$FF7F]                                ; $6E1A: $F0 $7F
    ldh [$FF7F], a                                ; $6E1C: $E0 $7F
    ret nz                                        ; $6E1E: $C0

    ld a, a                                       ; $6E1F: $7F
    ccf                                           ; $6E20: $3F
    nop                                           ; $6E21: $00
    rst RST_38                                    ; $6E22: $FF
    nop                                           ; $6E23: $00
    rst RST_38                                    ; $6E24: $FF
    nop                                           ; $6E25: $00
    rst RST_38                                    ; $6E26: $FF
    ld hl, sp-$01                                 ; $6E27: $F8 $FF
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
    ld a, a                                       ; $6E36: $7F
    rst RST_38                                    ; $6E37: $FF
    rra                                           ; $6E38: $1F
    rst RST_38                                    ; $6E39: $FF
    rrca                                          ; $6E3A: $0F
    rst RST_38                                    ; $6E3B: $FF
    rrca                                          ; $6E3C: $0F
    cp $06                                        ; $6E3D: $FE $06
    db $FC                                        ; $6E3F: $FC
    ccf                                           ; $6E40: $3F
    nop                                           ; $6E41: $00
    rst RST_38                                    ; $6E42: $FF
    nop                                           ; $6E43: $00
    rst RST_38                                    ; $6E44: $FF
    nop                                           ; $6E45: $00
    rst RST_38                                    ; $6E46: $FF
    nop                                           ; $6E47: $00
    rst RST_38                                    ; $6E48: $FF
    nop                                           ; $6E49: $00
    rst RST_38                                    ; $6E4A: $FF
    nop                                           ; $6E4B: $00
    rst RST_38                                    ; $6E4C: $FF
    nop                                           ; $6E4D: $00
    rst RST_38                                    ; $6E4E: $FF
    nop                                           ; $6E4F: $00
    rst RST_38                                    ; $6E50: $FF
    add b                                         ; $6E51: $80
    rst RST_38                                    ; $6E52: $FF
    add b                                         ; $6E53: $80
    rst RST_38                                    ; $6E54: $FF
    ret nz                                        ; $6E55: $C0

    cp $C0                                        ; $6E56: $FE $C0
    ld hl, sp-$40                                 ; $6E58: $F8 $C0
    ldh a, [$FFC0]                                ; $6E5A: $F0 $C0
    ldh [$FF80], a                                ; $6E5C: $E0 $80
    ret nz                                        ; $6E5E: $C0

    add b                                         ; $6E5F: $80
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
    ldh [rP1], a                                  ; $6E6A: $E0 $00
    cp $00                                        ; $6E6C: $FE $00
    rst RST_38                                    ; $6E6E: $FF
    nop                                           ; $6E6F: $00
    rst RST_38                                    ; $6E70: $FF
    nop                                           ; $6E71: $00
    rst RST_38                                    ; $6E72: $FF
    nop                                           ; $6E73: $00
    rst RST_38                                    ; $6E74: $FF
    nop                                           ; $6E75: $00
    rst RST_38                                    ; $6E76: $FF
    nop                                           ; $6E77: $00
    rst RST_38                                    ; $6E78: $FF
    nop                                           ; $6E79: $00
    cp $00                                        ; $6E7A: $FE $00
    ldh [rP1], a                                  ; $6E7C: $E0 $00
    add b                                         ; $6E7E: $80
    nop                                           ; $6E7F: $00
    nop                                           ; $6E80: $00
    nop                                           ; $6E81: $00
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
    add b                                         ; $6E94: $80
    nop                                           ; $6E95: $00
    ldh [rP1], a                                  ; $6E96: $E0 $00
    ld hl, sp+$00                                 ; $6E98: $F8 $00
    db $FC                                        ; $6E9A: $FC
    nop                                           ; $6E9B: $00
    cp $00                                        ; $6E9C: $FE $00
    rst RST_38                                    ; $6E9E: $FF
    nop                                           ; $6E9F: $00
    nop                                           ; $6EA0: $00
    nop                                           ; $6EA1: $00
    nop                                           ; $6EA2: $00
    nop                                           ; $6EA3: $00
    nop                                           ; $6EA4: $00
    nop                                           ; $6EA5: $00
    nop                                           ; $6EA6: $00
    nop                                           ; $6EA7: $00
    nop                                           ; $6EA8: $00
    nop                                           ; $6EA9: $00
    nop                                           ; $6EAA: $00
    nop                                           ; $6EAB: $00
    nop                                           ; $6EAC: $00
    nop                                           ; $6EAD: $00
    nop                                           ; $6EAE: $00
    nop                                           ; $6EAF: $00
    nop                                           ; $6EB0: $00
    nop                                           ; $6EB1: $00
    nop                                           ; $6EB2: $00
    nop                                           ; $6EB3: $00
    nop                                           ; $6EB4: $00
    nop                                           ; $6EB5: $00
    nop                                           ; $6EB6: $00
    nop                                           ; $6EB7: $00
    nop                                           ; $6EB8: $00
    nop                                           ; $6EB9: $00
    nop                                           ; $6EBA: $00
    nop                                           ; $6EBB: $00
    inc bc                                        ; $6EBC: $03
    nop                                           ; $6EBD: $00
    rrca                                          ; $6EBE: $0F
    nop                                           ; $6EBF: $00
    nop                                           ; $6EC0: $00
    nop                                           ; $6EC1: $00
    nop                                           ; $6EC2: $00
    nop                                           ; $6EC3: $00
    nop                                           ; $6EC4: $00
    nop                                           ; $6EC5: $00
    nop                                           ; $6EC6: $00
    nop                                           ; $6EC7: $00
    nop                                           ; $6EC8: $00
    nop                                           ; $6EC9: $00
    nop                                           ; $6ECA: $00
    nop                                           ; $6ECB: $00
    inc bc                                        ; $6ECC: $03
    nop                                           ; $6ECD: $00
    rlca                                          ; $6ECE: $07
    inc bc                                        ; $6ECF: $03
    rlca                                          ; $6ED0: $07
    ld [bc], a                                    ; $6ED1: $02
    ld b, $01                                     ; $6ED2: $06 $01
    dec c                                         ; $6ED4: $0D
    ld b, $08                                     ; $6ED5: $06 $08
    rlca                                          ; $6ED7: $07
    ld c, $01                                     ; $6ED8: $0E $01
    ld de, $1F0E                                  ; $6EDA: $11 $0E $1F
    rlca                                          ; $6EDD: $07
    rlca                                          ; $6EDE: $07
    nop                                           ; $6EDF: $00
    rst RST_38                                    ; $6EE0: $FF
    rst RST_38                                    ; $6EE1: $FF
    rst RST_18                                    ; $6EE2: $DF
    ccf                                           ; $6EE3: $3F
    rst RST_18                                    ; $6EE4: $DF
    ccf                                           ; $6EE5: $3F
    cp a                                          ; $6EE6: $BF
    ld [hl], a                                    ; $6EE7: $77
    ccf                                           ; $6EE8: $3F
    rst RST_30                                    ; $6EE9: $F7
    ld a, a                                       ; $6EEA: $7F
    rst RST_30                                    ; $6EEB: $F7
    ld a, a                                       ; $6EEC: $7F
    db $ED                                        ; $6EED: $ED
    rst RST_38                                    ; $6EEE: $FF
    db $DB                                        ; $6EEF: $DB
    rst RST_18                                    ; $6EF0: $DF
    dec bc                                        ; $6EF1: $0B
    dec c                                         ; $6EF2: $0D
    inc bc                                        ; $6EF3: $03
    dec b                                         ; $6EF4: $05
    inc bc                                        ; $6EF5: $03
    ld [bc], a                                    ; $6EF6: $02
    ld bc, $0001                                  ; $6EF7: $01 $01 $00
    ld bc, $0200                                  ; $6EFA: $01 $00 $02
    ld bc, $0102                                  ; $6EFD: $01 $02 $01
    rst RST_38                                    ; $6F00: $FF
    db $FC                                        ; $6F01: $FC
    cp $FC                                        ; $6F02: $FE $FC
    rst RST_38                                    ; $6F04: $FF
    ld a, [hl]                                    ; $6F05: $7E
    rst RST_38                                    ; $6F06: $FF
    rst RST_20                                    ; $6F07: $E7
    rst RST_38                                    ; $6F08: $FF
    ld sp, hl                                     ; $6F09: $F9
    rst RST_38                                    ; $6F0A: $FF
    cp $FF                                        ; $6F0B: $FE $FF
    pop af                                        ; $6F0D: $F1
    rst RST_38                                    ; $6F0E: $FF
    rst RST_08                                    ; $6F0F: $CF
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
    ld a, e                                       ; $6F1A: $7B
    cp $0F                                        ; $6F1B: $FE $0F
    ldh a, [$FFFE]                                ; $6F1D: $F0 $FE
    dec c                                         ; $6F1F: $0D
    pop bc                                        ; $6F20: $C1
    add b                                         ; $6F21: $80
    pop hl                                        ; $6F22: $E1
    ret nz                                        ; $6F23: $C0

    pop af                                        ; $6F24: $F1
    ldh [$FFF1], a                                ; $6F25: $E0 $F1
    ldh [$FFF9], a                                ; $6F27: $E0 $F9
    ldh a, [$FFF9]                                ; $6F29: $F0 $F9
    ldh a, [$FFF1]                                ; $6F2B: $F0 $F1
    ldh [$FFE3], a                                ; $6F2D: $E0 $E3
    pop bc                                        ; $6F2F: $C1
    db $E3                                        ; $6F30: $E3
    pop bc                                        ; $6F31: $C1
    jp $C281                                      ; $6F32: $C3 $81 $C2


    add c                                         ; $6F35: $81
    add [hl]                                      ; $6F36: $86
    inc bc                                        ; $6F37: $03
    ld b, $03                                     ; $6F38: $06 $03
    inc c                                         ; $6F3A: $0C
    rlca                                          ; $6F3B: $07
    jr @+$09                                      ; $6F3C: $18 $07

    sbc b                                         ; $6F3E: $98
    rrca                                          ; $6F3F: $0F
    ld [bc], a                                    ; $6F40: $02
    ld bc, $0001                                  ; $6F41: $01 $01 $00
    ld bc, $0100                                  ; $6F44: $01 $00 $01
    nop                                           ; $6F47: $00
    ld [bc], a                                    ; $6F48: $02
    ld bc, $0003                                  ; $6F49: $01 $03 $00
    nop                                           ; $6F4C: $00
    nop                                           ; $6F4D: $00
    nop                                           ; $6F4E: $00
    nop                                           ; $6F4F: $00
    nop                                           ; $6F50: $00
    nop                                           ; $6F51: $00
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
    rst RST_38                                    ; $6F60: $FF
    cp $7E                                        ; $6F61: $FE $7E
    ld hl, sp+$7E                                 ; $6F63: $F8 $7E
    db $E4                                        ; $6F65: $E4
    ld a, a                                       ; $6F66: $7F
    cp $FF                                        ; $6F67: $FE $FF
    cp $FF                                        ; $6F69: $FE $FF
    ld a, $BF                                     ; $6F6B: $3E $BF
    ld e, [hl]                                    ; $6F6D: $5E
    cp $00                                        ; $6F6E: $FE $00
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
    ldh a, [$FF8F]                                ; $6F80: $F0 $8F
    add sp, $37                                   ; $6F82: $E8 $37

jr_013_6F84:
    add h                                         ; $6F84: $84
    ld a, e                                       ; $6F85: $7B
    inc b                                         ; $6F86: $04
    ei                                            ; $6F87: $FB
    ld [bc], a                                    ; $6F88: $02
    db $FD                                        ; $6F89: $FD
    inc bc                                        ; $6F8A: $03
    db $FC                                        ; $6F8B: $FC
    add d                                         ; $6F8C: $82
    ld a, l                                       ; $6F8D: $7D
    add d                                         ; $6F8E: $82
    ld a, l                                       ; $6F8F: $7D
    add d                                         ; $6F90: $82
    ld a, l                                       ; $6F91: $7D
    ld b, $F9                                     ; $6F92: $06 $F9
    adc d                                         ; $6F94: $8A
    ld [hl], l                                    ; $6F95: $75
    ld [hl], d                                    ; $6F96: $72
    adc l                                         ; $6F97: $8D
    add h                                         ; $6F98: $84
    ld a, e                                       ; $6F99: $7B
    xor a                                         ; $6F9A: $AF
    ld d, b                                       ; $6F9B: $50
    ld a, e                                       ; $6F9C: $7B
    nop                                           ; $6F9D: $00
    ld bc, $0100                                  ; $6F9E: $01 $00 $01
    nop                                           ; $6FA1: $00
    ld [bc], a                                    ; $6FA2: $02
    ld bc, $0102                                  ; $6FA3: $01 $02 $01
    ld [bc], a                                    ; $6FA6: $02
    ld bc, $0001                                  ; $6FA7: $01 $01 $00
    ld bc, $0100                                  ; $6FAA: $01 $00 $01
    nop                                           ; $6FAD: $00
    nop                                           ; $6FAE: $00
    nop                                           ; $6FAF: $00
    nop                                           ; $6FB0: $00
    nop                                           ; $6FB1: $00
    ld bc, $0300                                  ; $6FB2: $01 $00 $03
    ld bc, $0307                                  ; $6FB5: $01 $07 $03
    rlca                                          ; $6FB8: $07
    inc bc                                        ; $6FB9: $03
    ld a, a                                       ; $6FBA: $7F
    rlca                                          ; $6FBB: $07
    rst RST_38                                    ; $6FBC: $FF
    ld a, e                                       ; $6FBD: $7B
    rst RST_38                                    ; $6FBE: $FF
    db $FD                                        ; $6FBF: $FD
    jr nz, jr_013_6FC2                            ; $6FC0: $20 $00

jr_013_6FC2:
    ld e, h                                       ; $6FC2: $5C
    jr nz, jr_013_6F84                            ; $6FC3: $20 $BF

    ld e, h                                       ; $6FC5: $5C
    ld a, a                                       ; $6FC6: $7F
    cp a                                          ; $6FC7: $BF
    rst RST_38                                    ; $6FC8: $FF
    ld a, a                                       ; $6FC9: $7F
    rst RST_38                                    ; $6FCA: $FF
    ld a, a                                       ; $6FCB: $7F
    rst RST_38                                    ; $6FCC: $FF
    ld a, a                                       ; $6FCD: $7F
    ld a, a                                       ; $6FCE: $7F
    cp a                                          ; $6FCF: $BF
    ld a, a                                       ; $6FD0: $7F
    cp a                                          ; $6FD1: $BF
    rst RST_38                                    ; $6FD2: $FF
    dec de                                        ; $6FD3: $1B
    rra                                           ; $6FD4: $1F
    rlca                                          ; $6FD5: $07
    rst RST_38                                    ; $6FD6: $FF
    rra                                           ; $6FD7: $1F
    rst RST_38                                    ; $6FD8: $FF
    rst RST_28                                    ; $6FD9: $EF
    rst RST_38                                    ; $6FDA: $FF
    rst RST_38                                    ; $6FDB: $FF
    rst RST_38                                    ; $6FDC: $FF
    rst RST_38                                    ; $6FDD: $FF
    rst RST_38                                    ; $6FDE: $FF
    ei                                            ; $6FDF: $FB
    nop                                           ; $6FE0: $00
    nop                                           ; $6FE1: $00
    nop                                           ; $6FE2: $00
    nop                                           ; $6FE3: $00
    ldh a, [rP1]                                  ; $6FE4: $F0 $00
    rst RST_38                                    ; $6FE6: $FF
    nop                                           ; $6FE7: $00
    rst RST_38                                    ; $6FE8: $FF
    nop                                           ; $6FE9: $00
    ld a, a                                       ; $6FEA: $7F
    nop                                           ; $6FEB: $00
    ccf                                           ; $6FEC: $3F
    nop                                           ; $6FED: $00
    rra                                           ; $6FEE: $1F
    nop                                           ; $6FEF: $00
    rra                                           ; $6FF0: $1F
    nop                                           ; $6FF1: $00
    rrca                                          ; $6FF2: $0F
    nop                                           ; $6FF3: $00
    rlca                                          ; $6FF4: $07
    nop                                           ; $6FF5: $00
    rlca                                          ; $6FF6: $07
    nop                                           ; $6FF7: $00
    inc bc                                        ; $6FF8: $03
    nop                                           ; $6FF9: $00
    inc bc                                        ; $6FFA: $03
    nop                                           ; $6FFB: $00
    inc bc                                        ; $6FFC: $03
    nop                                           ; $6FFD: $00
    add e                                         ; $6FFE: $83
    nop                                           ; $6FFF: $00
    add b                                         ; $7000: $80
    rst RST_38                                    ; $7001: $FF
    add b                                         ; $7002: $80
    rst RST_38                                    ; $7003: $FF
    add b                                         ; $7004: $80
    rst RST_38                                    ; $7005: $FF
    add b                                         ; $7006: $80
    rst RST_38                                    ; $7007: $FF
    nop                                           ; $7008: $00
    rst RST_38                                    ; $7009: $FF
    nop                                           ; $700A: $00
    rst RST_38                                    ; $700B: $FF
    nop                                           ; $700C: $00
    rst RST_38                                    ; $700D: $FF
    nop                                           ; $700E: $00
    rst RST_38                                    ; $700F: $FF
    nop                                           ; $7010: $00
    rst RST_38                                    ; $7011: $FF
    nop                                           ; $7012: $00
    rst RST_38                                    ; $7013: $FF
    nop                                           ; $7014: $00
    rst RST_38                                    ; $7015: $FF
    nop                                           ; $7016: $00
    rst RST_38                                    ; $7017: $FF
    nop                                           ; $7018: $00
    rst RST_38                                    ; $7019: $FF
    nop                                           ; $701A: $00
    rst RST_38                                    ; $701B: $FF
    nop                                           ; $701C: $00
    rst RST_38                                    ; $701D: $FF
    nop                                           ; $701E: $00
    rst RST_38                                    ; $701F: $FF
    inc bc                                        ; $7020: $03
    cp $03                                        ; $7021: $FE $03
    cp $03                                        ; $7023: $FE $03
    cp $03                                        ; $7025: $FE $03
    cp $02                                        ; $7027: $FE $02
    db $FC                                        ; $7029: $FC
    ld b, $FC                                     ; $702A: $06 $FC
    ld b, $FC                                     ; $702C: $06 $FC
    ld b, $FC                                     ; $702E: $06 $FC
    inc c                                         ; $7030: $0C
    ld hl, sp+$0C                                 ; $7031: $F8 $0C
    ld hl, sp+$18                                 ; $7033: $F8 $18
    ldh a, [$FF38]                                ; $7035: $F0 $38
    ldh [$FF30], a                                ; $7037: $E0 $30
    ldh [$FF60], a                                ; $7039: $E0 $60
    ret nz                                        ; $703B: $C0

    ret nz                                        ; $703C: $C0

    add b                                         ; $703D: $80
    add b                                         ; $703E: $80
    nop                                           ; $703F: $00
    nop                                           ; $7040: $00
    nop                                           ; $7041: $00
    add b                                         ; $7042: $80
    nop                                           ; $7043: $00
    ret nz                                        ; $7044: $C0

    nop                                           ; $7045: $00
    ldh [$FF80], a                                ; $7046: $E0 $80
    ldh a, [$FFE0]                                ; $7048: $F0 $E0
    ld hl, sp-$20                                 ; $704A: $F8 $E0
    ld hl, sp-$10                                 ; $704C: $F8 $F0
    db $FC                                        ; $704E: $FC
    ld hl, sp+$7C                                 ; $704F: $F8 $7C
    ld hl, sp+$1E                                 ; $7051: $F8 $1E
    db $FC                                        ; $7053: $FC
    ld c, $FC                                     ; $7054: $0E $FC
    ld c, $FC                                     ; $7056: $0E $FC
    ld b, $FC                                     ; $7058: $06 $FC
    rlca                                          ; $705A: $07
    cp $07                                        ; $705B: $FE $07
    cp $03                                        ; $705D: $FE $03
    cp $C0                                        ; $705F: $FE $C0
    nop                                           ; $7061: $00
    ldh a, [rP1]                                  ; $7062: $F0 $00
    db $FC                                        ; $7064: $FC
    nop                                           ; $7065: $00
    cp $00                                        ; $7066: $FE $00
    rst RST_38                                    ; $7068: $FF
    nop                                           ; $7069: $00
    rst RST_38                                    ; $706A: $FF
    nop                                           ; $706B: $00
    rst RST_38                                    ; $706C: $FF
    nop                                           ; $706D: $00
    rst RST_38                                    ; $706E: $FF
    rrca                                          ; $706F: $0F
    rst RST_38                                    ; $7070: $FF
    ccf                                           ; $7071: $3F
    rst RST_38                                    ; $7072: $FF
    ld a, a                                       ; $7073: $7F
    rst RST_38                                    ; $7074: $FF
    ld a, a                                       ; $7075: $7F
    rst RST_38                                    ; $7076: $FF
    rst RST_38                                    ; $7077: $FF
    ld hl, sp-$01                                 ; $7078: $F8 $FF
    ldh [rIE], a                                  ; $707A: $E0 $FF
    ret nz                                        ; $707C: $C0

    rst RST_38                                    ; $707D: $FF
    ret nz                                        ; $707E: $C0

    rst RST_38                                    ; $707F: $FF
    nop                                           ; $7080: $00
    rst RST_38                                    ; $7081: $FF
    nop                                           ; $7082: $00
    rst RST_38                                    ; $7083: $FF
    add b                                         ; $7084: $80
    ld a, a                                       ; $7085: $7F
    add c                                         ; $7086: $81
    ld a, a                                       ; $7087: $7F
    ld b, e                                       ; $7088: $43
    cp [hl]                                       ; $7089: $BE
    xor $1C                                       ; $708A: $EE $1C
    inc e                                         ; $708C: $1C
    ldh [$FF38], a                                ; $708D: $E0 $38
    ret nz                                        ; $708F: $C0

    ld hl, sp+$00                                 ; $7090: $F8 $00
    db $FC                                        ; $7092: $FC
    nop                                           ; $7093: $00
    db $FC                                        ; $7094: $FC
    nop                                           ; $7095: $00
    db $FC                                        ; $7096: $FC
    nop                                           ; $7097: $00
    db $F4                                        ; $7098: $F4
    ld [$3048], sp                                ; $7099: $08 $48 $30
    jr z, jr_013_70AE                             ; $709C: $28 $10

    stop                                          ; $709E: $10 $00
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
    nop                                           ; $70AC: $00
    nop                                           ; $70AD: $00

jr_013_70AE:
    nop                                           ; $70AE: $00
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
    rlca                                          ; $70BC: $07
    nop                                           ; $70BD: $00
    ld bc, $2100                                  ; $70BE: $01 $00 $21
    ld e, $42                                     ; $70C1: $1E $42
    dec a                                         ; $70C3: $3D

jr_013_70C4:
    ld b, d                                       ; $70C4: $42
    dec a                                         ; $70C5: $3D
    add l                                         ; $70C6: $85
    ld a, d                                       ; $70C7: $7A
    adc d                                         ; $70C8: $8A
    ld [hl], l                                    ; $70C9: $75
    add h                                         ; $70CA: $84
    ld a, e                                       ; $70CB: $7B
    add h                                         ; $70CC: $84
    ld a, e                                       ; $70CD: $7B
    ld b, h                                       ; $70CE: $44
    dec sp                                        ; $70CF: $3B
    ld b, d                                       ; $70D0: $42
    dec a                                         ; $70D1: $3D
    ld [hl+], a                                   ; $70D2: $22
    dec e                                         ; $70D3: $1D
    ld sp, $181E                                  ; $70D4: $31 $1E $18
    rrca                                          ; $70D7: $0F
    inc c                                         ; $70D8: $0C
    rlca                                          ; $70D9: $07
    ld b, $03                                     ; $70DA: $06 $03
    inc bc                                        ; $70DC: $03
    ld bc, $0001                                  ; $70DD: $01 $01 $00
    ldh [rP1], a                                  ; $70E0: $E0 $00
    jr jr_013_70C4                                ; $70E2: $18 $E0

    inc b                                         ; $70E4: $04
    ld hl, sp-$3E                                 ; $70E5: $F8 $C2
    inc a                                         ; $70E7: $3C
    add hl, sp                                    ; $70E8: $39
    add $E4                                       ; $70E9: $C6 $E4
    dec de                                        ; $70EB: $1B
    inc e                                         ; $70EC: $1C
    db $E3                                        ; $70ED: $E3
    dec b                                         ; $70EE: $05
    ld a, [$FD02]                                 ; $70EF: $FA $02 $FD
    ld [bc], a                                    ; $70F2: $02
    db $FD                                        ; $70F3: $FD
    inc b                                         ; $70F4: $04
    ei                                            ; $70F5: $FB
    nop                                           ; $70F6: $00
    rst RST_38                                    ; $70F7: $FF
    nop                                           ; $70F8: $00
    rst RST_38                                    ; $70F9: $FF
    nop                                           ; $70FA: $00
    rst RST_38                                    ; $70FB: $FF
    add b                                         ; $70FC: $80
    ld a, a                                       ; $70FD: $7F
    ld b, c                                       ; $70FE: $41
    cp [hl]                                       ; $70FF: $BE
    inc bc                                        ; $7100: $03
    nop                                           ; $7101: $00
    rlca                                          ; $7102: $07
    inc bc                                        ; $7103: $03
    rlca                                          ; $7104: $07
    ld [bc], a                                    ; $7105: $02
    ld b, $01                                     ; $7106: $06 $01
    dec c                                         ; $7108: $0D
    ld b, $0F                                     ; $7109: $06 $0F
    ld bc, $0E3F                                  ; $710B: $01 $3F $0E
    rst RST_38                                    ; $710E: $FF
    ccf                                           ; $710F: $3F
    rst RST_38                                    ; $7110: $FF
    ld c, a                                       ; $7111: $4F
    ccf                                           ; $7112: $3F
    ldh a, [c]                                    ; $7113: $F2
    rra                                           ; $7114: $1F
    db $FC                                        ; $7115: $FC
    rra                                           ; $7116: $1F
    xor $1F                                       ; $7117: $EE $1F
    rst RST_28                                    ; $7119: $EF
    rrca                                          ; $711A: $0F
    rst RST_38                                    ; $711B: $FF
    rrca                                          ; $711C: $0F
    rst RST_38                                    ; $711D: $FF
    rra                                           ; $711E: $1F
    rst RST_28                                    ; $711F: $EF
    ld a, b                                       ; $7120: $78
    nop                                           ; $7121: $00
    db $FC                                        ; $7122: $FC
    ld a, b                                       ; $7123: $78
    cp $FC                                        ; $7124: $FE $FC
    cp $FC                                        ; $7126: $FE $FC
    rst RST_18                                    ; $7128: $DF
    ld a, $DF                                     ; $7129: $3E $DF
    ld a, $BF                                     ; $712B: $3E $BF
    ld a, [hl]                                    ; $712D: $7E
    rst RST_38                                    ; $712E: $FF
    rst RST_38                                    ; $712F: $FF
    rst RST_38                                    ; $7130: $FF
    db $FC                                        ; $7131: $FC
    rst RST_38                                    ; $7132: $FF
    rst RST_38                                    ; $7133: $FF
    rst RST_38                                    ; $7134: $FF
    ld a, a                                       ; $7135: $7F
    rst RST_38                                    ; $7136: $FF
    rst RST_30                                    ; $7137: $F7
    rst RST_38                                    ; $7138: $FF
    cpl                                           ; $7139: $2F
    rst RST_38                                    ; $713A: $FF
    nop                                           ; $713B: $00
    rst RST_38                                    ; $713C: $FF
    add b                                         ; $713D: $80
    rst RST_38                                    ; $713E: $FF
    ret nz                                        ; $713F: $C0

    add b                                         ; $7140: $80
    nop                                           ; $7141: $00
    add b                                         ; $7142: $80
    nop                                           ; $7143: $00
    ldh [$FF80], a                                ; $7144: $E0 $80
    ldh a, [$FFE0]                                ; $7146: $F0 $E0
    ld sp, hl                                     ; $7148: $F9
    ldh a, [$FFDF]                                ; $7149: $F0 $DF
    ldh [$FFEF], a                                ; $714B: $E0 $EF
    db $10                                        ; $714D: $10
    rst RST_38                                    ; $714E: $FF
    nop                                           ; $714F: $00
    rst RST_38                                    ; $7150: $FF
    nop                                           ; $7151: $00
    rst RST_38                                    ; $7152: $FF
    nop                                           ; $7153: $00
    rst RST_38                                    ; $7154: $FF
    nop                                           ; $7155: $00
    rst RST_38                                    ; $7156: $FF
    nop                                           ; $7157: $00
    rst RST_38                                    ; $7158: $FF
    nop                                           ; $7159: $00
    rst RST_38                                    ; $715A: $FF
    nop                                           ; $715B: $00
    rst RST_38                                    ; $715C: $FF
    nop                                           ; $715D: $00
    rst RST_38                                    ; $715E: $FF
    nop                                           ; $715F: $00
    nop                                           ; $7160: $00
    nop                                           ; $7161: $00
    nop                                           ; $7162: $00
    nop                                           ; $7163: $00
    nop                                           ; $7164: $00
    nop                                           ; $7165: $00
    ld [bc], a                                    ; $7166: $02
    nop                                           ; $7167: $00
    ld b, $00                                     ; $7168: $06 $00
    ld e, $00                                     ; $716A: $1E $00
    ld a, h                                       ; $716C: $7C
    nop                                           ; $716D: $00
    db $FC                                        ; $716E: $FC
    nop                                           ; $716F: $00
    db $FC                                        ; $7170: $FC
    nop                                           ; $7171: $00
    ld hl, sp+$00                                 ; $7172: $F8 $00
    ld hl, sp+$00                                 ; $7174: $F8 $00
    ldh a, [rP1]                                  ; $7176: $F0 $00
    ldh a, [rP1]                                  ; $7178: $F0 $00
    ldh [rP1], a                                  ; $717A: $E0 $00
    ret nz                                        ; $717C: $C0

    nop                                           ; $717D: $00
    add b                                         ; $717E: $80
    nop                                           ; $717F: $00
    ld l, a                                       ; $7180: $6F
    sbc a                                         ; $7181: $9F
    sbc a                                         ; $7182: $9F
    ld a, a                                       ; $7183: $7F
    rra                                           ; $7184: $1F
    rst RST_38                                    ; $7185: $FF
    ccf                                           ; $7186: $3F
    rst RST_38                                    ; $7187: $FF
    rst RST_38                                    ; $7188: $FF
    rst RST_38                                    ; $7189: $FF
    rst RST_38                                    ; $718A: $FF
    rst RST_38                                    ; $718B: $FF
    rst RST_38                                    ; $718C: $FF
    cp $FF                                        ; $718D: $FE $FF
    ld hl, sp-$01                                 ; $718F: $F8 $FF
    nop                                           ; $7191: $00
    rst RST_38                                    ; $7192: $FF
    ret nz                                        ; $7193: $C0

    rst RST_38                                    ; $7194: $FF
    cp $FE                                        ; $7195: $FE $FE
    db $FC                                        ; $7197: $FC
    db $FC                                        ; $7198: $FC
    ld hl, sp-$08                                 ; $7199: $F8 $F8
    ldh a, [$FFF0]                                ; $719B: $F0 $F0
    nop                                           ; $719D: $00
    nop                                           ; $719E: $00
    nop                                           ; $719F: $00
    rst RST_38                                    ; $71A0: $FF
    ret nz                                        ; $71A1: $C0

    rst RST_38                                    ; $71A2: $FF
    ldh [rIE], a                                  ; $71A3: $E0 $FF
    ldh [rIE], a                                  ; $71A5: $E0 $FF
    ldh [rIE], a                                  ; $71A7: $E0 $FF
    ldh [rIE], a                                  ; $71A9: $E0 $FF
    ret nz                                        ; $71AB: $C0

    rst RST_38                                    ; $71AC: $FF
    ret nz                                        ; $71AD: $C0

    rst RST_38                                    ; $71AE: $FF
    add b                                         ; $71AF: $80
    rst RST_38                                    ; $71B0: $FF
    nop                                           ; $71B1: $00
    rst RST_38                                    ; $71B2: $FF
    nop                                           ; $71B3: $00
    rst RST_38                                    ; $71B4: $FF
    ld bc, $03E7                                  ; $71B5: $01 $E7 $03
    rrca                                          ; $71B8: $0F
    rlca                                          ; $71B9: $07
    rrca                                          ; $71BA: $0F
    rlca                                          ; $71BB: $07
    rrca                                          ; $71BC: $0F
    rlca                                          ; $71BD: $07
    rrca                                          ; $71BE: $0F
    rlca                                          ; $71BF: $07
    ld [hl-], a                                   ; $71C0: $32
    call $F38C                                    ; $71C1: $CD $8C $F3
    ldh [rIE], a                                  ; $71C4: $E0 $FF
    rst RST_38                                    ; $71C6: $FF
    ccf                                           ; $71C7: $3F
    ccf                                           ; $71C8: $3F
    rrca                                          ; $71C9: $0F
    rrca                                          ; $71CA: $0F
    inc bc                                        ; $71CB: $03
    inc bc                                        ; $71CC: $03
    nop                                           ; $71CD: $00
    ld bc, $0100                                  ; $71CE: $01 $00 $01
    nop                                           ; $71D1: $00
    inc bc                                        ; $71D2: $03
    ld bc, $0107                                  ; $71D3: $01 $07 $01
    dec bc                                        ; $71D6: $0B
    dec b                                         ; $71D7: $05
    rrca                                          ; $71D8: $0F
    nop                                           ; $71D9: $00
    nop                                           ; $71DA: $00
    nop                                           ; $71DB: $00
    nop                                           ; $71DC: $00
    nop                                           ; $71DD: $00
    nop                                           ; $71DE: $00
    nop                                           ; $71DF: $00
    ld hl, sp+$00                                 ; $71E0: $F8 $00
    ld hl, sp+$10                                 ; $71E2: $F8 $10
    db $F4                                        ; $71E4: $F4
    ld a, b                                       ; $71E5: $78
    db $E4                                        ; $71E6: $E4
    ld hl, sp-$18                                 ; $71E7: $F8 $E8
    ldh a, [$FFF8]                                ; $71E9: $F0 $F8
    ldh a, [$FFF0]                                ; $71EB: $F0 $F0
    ldh [$FFF8], a                                ; $71ED: $E0 $F8
    ret nz                                        ; $71EF: $C0

    call nc, $FCA8                                ; $71F0: $D4 $A8 $FC
    nop                                           ; $71F3: $00
    nop                                           ; $71F4: $00
    nop                                           ; $71F5: $00
    nop                                           ; $71F6: $00
    nop                                           ; $71F7: $00
    nop                                           ; $71F8: $00
    nop                                           ; $71F9: $00
    nop                                           ; $71FA: $00
    nop                                           ; $71FB: $00
    nop                                           ; $71FC: $00
    nop                                           ; $71FD: $00
    nop                                           ; $71FE: $00
    nop                                           ; $71FF: $00
    nop                                           ; $7200: $00
    nop                                           ; $7201: $00
    nop                                           ; $7202: $00
    nop                                           ; $7203: $00
    nop                                           ; $7204: $00
    nop                                           ; $7205: $00
    nop                                           ; $7206: $00
    nop                                           ; $7207: $00
    nop                                           ; $7208: $00
    nop                                           ; $7209: $00
    nop                                           ; $720A: $00
    nop                                           ; $720B: $00
    nop                                           ; $720C: $00
    nop                                           ; $720D: $00
    nop                                           ; $720E: $00
    nop                                           ; $720F: $00
    nop                                           ; $7210: $00
    nop                                           ; $7211: $00
    nop                                           ; $7212: $00
    nop                                           ; $7213: $00
    nop                                           ; $7214: $00
    nop                                           ; $7215: $00
    nop                                           ; $7216: $00
    nop                                           ; $7217: $00
    nop                                           ; $7218: $00
    nop                                           ; $7219: $00
    ld bc, $0E00                                  ; $721A: $01 $00 $0E
    ld bc, $0F10                                  ; $721D: $01 $10 $0F
    rlca                                          ; $7220: $07
    nop                                           ; $7221: $00
    nop                                           ; $7222: $00
    nop                                           ; $7223: $00
    nop                                           ; $7224: $00
    nop                                           ; $7225: $00

jr_013_7226:
    nop                                           ; $7226: $00
    nop                                           ; $7227: $00
    nop                                           ; $7228: $00
    nop                                           ; $7229: $00
    nop                                           ; $722A: $00
    nop                                           ; $722B: $00
    nop                                           ; $722C: $00
    nop                                           ; $722D: $00
    nop                                           ; $722E: $00
    nop                                           ; $722F: $00
    nop                                           ; $7230: $00
    nop                                           ; $7231: $00
    nop                                           ; $7232: $00
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
    nop                                           ; $7240: $00
    nop                                           ; $7241: $00
    nop                                           ; $7242: $00
    nop                                           ; $7243: $00
    nop                                           ; $7244: $00
    nop                                           ; $7245: $00
    nop                                           ; $7246: $00
    nop                                           ; $7247: $00
    nop                                           ; $7248: $00
    nop                                           ; $7249: $00
    ld bc, $0200                                  ; $724A: $01 $00 $02
    ld bc, $0102                                  ; $724D: $01 $02 $01
    dec b                                         ; $7250: $05
    ld [bc], a                                    ; $7251: $02
    dec bc                                        ; $7252: $0B
    dec b                                         ; $7253: $05
    rlca                                          ; $7254: $07
    inc bc                                        ; $7255: $03
    rlca                                          ; $7256: $07
    inc bc                                        ; $7257: $03
    rlca                                          ; $7258: $07
    inc bc                                        ; $7259: $03
    inc bc                                        ; $725A: $03
    ld bc, $0103                                  ; $725B: $01 $03 $01
    ld bc, $0000                                  ; $725E: $01 $00 $00
    nop                                           ; $7261: $00
    ret nz                                        ; $7262: $C0

    nop                                           ; $7263: $00
    jr c, jr_013_7226                             ; $7264: $38 $C0

    db $E4                                        ; $7266: $E4
    jr @-$02                                      ; $7267: $18 $FC

    ldh [$FFFD], a                                ; $7269: $E0 $FD
    ld hl, sp-$01                                 ; $726B: $F8 $FF
    db $FD                                        ; $726D: $FD
    rst RST_38                                    ; $726E: $FF
    db $FD                                        ; $726F: $FD
    rst RST_38                                    ; $7270: $FF
    ei                                            ; $7271: $FB
    rst RST_38                                    ; $7272: $FF
    rst RST_38                                    ; $7273: $FF
    rst RST_38                                    ; $7274: $FF
    rst RST_38                                    ; $7275: $FF
    rst RST_38                                    ; $7276: $FF
    rst RST_38                                    ; $7277: $FF
    rst RST_38                                    ; $7278: $FF
    ld a, a                                       ; $7279: $7F
    ld a, a                                       ; $727A: $7F
    ld a, $3E                                     ; $727B: $3E $3E
    inc c                                         ; $727D: $0C
    inc c                                         ; $727E: $0C
    nop                                           ; $727F: $00
    nop                                           ; $7280: $00
    nop                                           ; $7281: $00
    inc bc                                        ; $7282: $03
    nop                                           ; $7283: $00
    rlca                                          ; $7284: $07
    inc bc                                        ; $7285: $03
    rlca                                          ; $7286: $07
    ld [bc], a                                    ; $7287: $02
    ld b, $01                                     ; $7288: $06 $01
    dec c                                         ; $728A: $0D
    ld b, $0F                                     ; $728B: $06 $0F
    ld bc, $0E3F                                  ; $728D: $01 $3F $0E
    ld a, a                                       ; $7290: $7F
    ccf                                           ; $7291: $3F
    rst RST_38                                    ; $7292: $FF
    ld a, a                                       ; $7293: $7F
    rst RST_38                                    ; $7294: $FF
    cp $FF                                        ; $7295: $FE $FF
    cp $FF                                        ; $7297: $FE $FF
    xor $FF                                       ; $7299: $EE $FF
    xor $FF                                       ; $729B: $EE $FF
    rst RST_30                                    ; $729D: $F7
    rst RST_38                                    ; $729E: $FF
    rst RST_30                                    ; $729F: $F7
    db $FC                                        ; $72A0: $FC
    ld a, b                                       ; $72A1: $78
    cp $FC                                        ; $72A2: $FE $FC
    cp $FC                                        ; $72A4: $FE $FC
    rst RST_18                                    ; $72A6: $DF
    ld a, $DF                                     ; $72A7: $3E $DF
    ld a, $BF                                     ; $72A9: $3E $BF
    ld a, [hl]                                    ; $72AB: $7E
    rst RST_38                                    ; $72AC: $FF
    rst RST_38                                    ; $72AD: $FF
    rst RST_38                                    ; $72AE: $FF
    db $FC                                        ; $72AF: $FC
    rst RST_38                                    ; $72B0: $FF
    rst RST_38                                    ; $72B1: $FF
    rst RST_38                                    ; $72B2: $FF
    ld a, a                                       ; $72B3: $7F
    rst RST_38                                    ; $72B4: $FF
    rst RST_30                                    ; $72B5: $F7
    rst RST_38                                    ; $72B6: $FF
    rst RST_28                                    ; $72B7: $EF
    rst RST_38                                    ; $72B8: $FF
    rst RST_18                                    ; $72B9: $DF
    rst RST_38                                    ; $72BA: $FF
    rst RST_18                                    ; $72BB: $DF
    rst RST_38                                    ; $72BC: $FF
    cp a                                          ; $72BD: $BF
    rst RST_38                                    ; $72BE: $FF
    cp c                                          ; $72BF: $B9
    add b                                         ; $72C0: $80
    nop                                           ; $72C1: $00
    add b                                         ; $72C2: $80
    nop                                           ; $72C3: $00
    ldh [$FF80], a                                ; $72C4: $E0 $80
    ldh a, [$FFE0]                                ; $72C6: $F0 $E0
    ld hl, sp-$10                                 ; $72C8: $F8 $F0
    ret z                                         ; $72CA: $C8

    ldh a, [$FF88]                                ; $72CB: $F0 $88
    ldh a, [rNR10]                                ; $72CD: $F0 $10
    ldh [$FFF0], a                                ; $72CF: $E0 $F0
    ldh [$FFE0], a                                ; $72D1: $E0 $E0
    ret nz                                        ; $72D3: $C0

    rst RST_38                                    ; $72D4: $FF
    nop                                           ; $72D5: $00
    pop af                                        ; $72D6: $F1
    xor $F6                                       ; $72D7: $EE $F6
    add sp, -$0E                                  ; $72D9: $E8 $F2
    db $EC                                        ; $72DB: $EC
    db $ED                                        ; $72DC: $ED
    jp nc, $B8C7                                  ; $72DD: $D2 $C7 $B8

    ld hl, sp+$00                                 ; $72E0: $F8 $00
    ld hl, sp-$10                                 ; $72E2: $F8 $F0
    db $F4                                        ; $72E4: $F4
    ld hl, sp-$1C                                 ; $72E5: $F8 $E4
    ld a, b                                       ; $72E7: $78
    add sp, -$10                                  ; $72E8: $E8 $F0
    ld hl, sp-$10                                 ; $72EA: $F8 $F0
    ldh a, [$FFE0]                                ; $72EC: $F0 $E0
    ld hl, sp-$40                                 ; $72EE: $F8 $C0
    call nc, $FCA8                                ; $72F0: $D4 $A8 $FC
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
    rst RST_30                                    ; $7300: $F7
    db $E3                                        ; $7301: $E3
    rst RST_20                                    ; $7302: $E7
    add e                                         ; $7303: $83
    adc a                                         ; $7304: $8F
    rlca                                          ; $7305: $07
    rrca                                          ; $7306: $0F
    dec b                                         ; $7307: $05
    rrca                                          ; $7308: $0F
    dec b                                         ; $7309: $05
    rra                                           ; $730A: $1F
    add hl, bc                                    ; $730B: $09
    ccf                                           ; $730C: $3F
    inc e                                         ; $730D: $1C
    ccf                                           ; $730E: $3F
    rra                                           ; $730F: $1F
    ld a, a                                       ; $7310: $7F
    rrca                                          ; $7311: $0F
    rst RST_38                                    ; $7312: $FF
    ld [hl], a                                    ; $7313: $77
    rst RST_38                                    ; $7314: $FF
    cp $FF                                        ; $7315: $FE $FF
    cp $FE                                        ; $7317: $FE $FE
    db $FC                                        ; $7319: $FC
    db $FC                                        ; $731A: $FC
    ld hl, sp-$08                                 ; $731B: $F8 $F8
    ldh a, [$FFF0]                                ; $731D: $F0 $F0
    nop                                           ; $731F: $00
    rst RST_38                                    ; $7320: $FF
    ld a, [hl]                                    ; $7321: $7E
    rst RST_38                                    ; $7322: $FF
    ld a, a                                       ; $7323: $7F
    rst RST_38                                    ; $7324: $FF
    ld a, a                                       ; $7325: $7F
    rst RST_38                                    ; $7326: $FF
    ld a, a                                       ; $7327: $7F
    rst RST_38                                    ; $7328: $FF
    cp a                                          ; $7329: $BF
    rst RST_38                                    ; $732A: $FF
    rst RST_08                                    ; $732B: $CF
    rst RST_38                                    ; $732C: $FF
    ldh a, [rIE]                                  ; $732D: $F0 $FF
    rra                                           ; $732F: $1F
    rst RST_18                                    ; $7330: $DF
    add c                                         ; $7331: $81
    add a                                         ; $7332: $87
    ld [bc], a                                    ; $7333: $02
    rlca                                          ; $7334: $07
    inc bc                                        ; $7335: $03
    rrca                                          ; $7336: $0F
    rlca                                          ; $7337: $07
    rrca                                          ; $7338: $0F
    rlca                                          ; $7339: $07
    rrca                                          ; $733A: $0F
    rlca                                          ; $733B: $07
    rrca                                          ; $733C: $0F
    rlca                                          ; $733D: $07
    rlca                                          ; $733E: $07
    nop                                           ; $733F: $00
    ld bc, $0100                                  ; $7340: $01 $00 $01
    nop                                           ; $7343: $00
    inc bc                                        ; $7344: $03
    ld bc, $0107                                  ; $7345: $01 $07 $01
    dec bc                                        ; $7348: $0B
    dec b                                         ; $7349: $05
    rrca                                          ; $734A: $0F
    nop                                           ; $734B: $00
    nop                                           ; $734C: $00
    nop                                           ; $734D: $00
    nop                                           ; $734E: $00
    nop                                           ; $734F: $00
    nop                                           ; $7350: $00
    nop                                           ; $7351: $00
    nop                                           ; $7352: $00
    nop                                           ; $7353: $00
    nop                                           ; $7354: $00
    nop                                           ; $7355: $00
    nop                                           ; $7356: $00
    nop                                           ; $7357: $00
    nop                                           ; $7358: $00
    nop                                           ; $7359: $00
    nop                                           ; $735A: $00
    nop                                           ; $735B: $00
    nop                                           ; $735C: $00
    nop                                           ; $735D: $00
    nop                                           ; $735E: $00
    nop                                           ; $735F: $00
    nop                                           ; $7360: $00
    nop                                           ; $7361: $00
    nop                                           ; $7362: $00
    nop                                           ; $7363: $00
    nop                                           ; $7364: $00
    nop                                           ; $7365: $00
    nop                                           ; $7366: $00
    nop                                           ; $7367: $00
    nop                                           ; $7368: $00
    nop                                           ; $7369: $00
    nop                                           ; $736A: $00
    nop                                           ; $736B: $00
    nop                                           ; $736C: $00
    nop                                           ; $736D: $00
    nop                                           ; $736E: $00
    nop                                           ; $736F: $00
    nop                                           ; $7370: $00
    nop                                           ; $7371: $00
    nop                                           ; $7372: $00
    nop                                           ; $7373: $00
    nop                                           ; $7374: $00
    nop                                           ; $7375: $00
    nop                                           ; $7376: $00
    nop                                           ; $7377: $00
    nop                                           ; $7378: $00
    nop                                           ; $7379: $00
    nop                                           ; $737A: $00
    nop                                           ; $737B: $00
    nop                                           ; $737C: $00
    nop                                           ; $737D: $00
    rrca                                          ; $737E: $0F
    nop                                           ; $737F: $00
    rrca                                          ; $7380: $0F
    nop                                           ; $7381: $00
    rra                                           ; $7382: $1F
    rrca                                          ; $7383: $0F
    ld a, a                                       ; $7384: $7F
    rra                                           ; $7385: $1F
    rst RST_38                                    ; $7386: $FF
    ld a, a                                       ; $7387: $7F
    ei                                            ; $7388: $FB
    ld b, a                                       ; $7389: $47
    db $DB                                        ; $738A: $DB
    daa                                           ; $738B: $27
    or a                                          ; $738C: $B7
    adc $0F                                       ; $738D: $CE $0F
    cp $EF                                        ; $738F: $FE $EF
    dec e                                         ; $7391: $1D
    inc e                                         ; $7392: $1C
    db $E3                                        ; $7393: $E3
    ldh [$FF1F], a                                ; $7394: $E0 $1F
    add b                                         ; $7396: $80
    ld a, a                                       ; $7397: $7F
    nop                                           ; $7398: $00
    rst RST_38                                    ; $7399: $FF
    ld bc, $07FF                                  ; $739A: $01 $FF $07
    cp $FF                                        ; $739D: $FE $FF
    ld bc, $FF01                                  ; $739F: $01 $01 $FF
    add c                                         ; $73A2: $81
    ld a, a                                       ; $73A3: $7F
    add c                                         ; $73A4: $81
    ld a, a                                       ; $73A5: $7F
    add b                                         ; $73A6: $80
    ld a, a                                       ; $73A7: $7F
    ld b, b                                       ; $73A8: $40
    cp a                                          ; $73A9: $BF
    ld b, c                                       ; $73AA: $41
    cp a                                          ; $73AB: $BF
    and e                                         ; $73AC: $A3
    ld e, l                                       ; $73AD: $5D
    rst RST_10                                    ; $73AE: $D7
    xor e                                         ; $73AF: $AB
    rst RST_38                                    ; $73B0: $FF

jr_013_73B1:
    jp $E1F2                                      ; $73B1: $C3 $F2 $E1


    ldh a, [c]                                    ; $73B4: $F2
    pop bc                                        ; $73B5: $C1
    pop af                                        ; $73B6: $F1
    jr nz, jr_013_73B1                            ; $73B7: $20 $F8

    ldh a, [$FFF8]                                ; $73B9: $F0 $F8
    ldh a, [$FFF8]                                ; $73BB: $F0 $F8
    ld [hl], b                                    ; $73BD: $70
    ldh a, [rP1]                                  ; $73BE: $F0 $00
    ld bc, $0100                                  ; $73C0: $01 $00 $01
    nop                                           ; $73C3: $00
    ld bc, $0100                                  ; $73C4: $01 $00 $01
    nop                                           ; $73C7: $00
    ld bc, $0200                                  ; $73C8: $01 $00 $02
    ld bc, $0205                                  ; $73CB: $01 $05 $02
    dec b                                         ; $73CE: $05
    ld [bc], a                                    ; $73CF: $02
    dec b                                         ; $73D0: $05
    ld [bc], a                                    ; $73D1: $02
    ld [bc], a                                    ; $73D2: $02
    ld bc, $0102                                  ; $73D3: $01 $02 $01
    ld [bc], a                                    ; $73D6: $02
    ld bc, $0102                                  ; $73D7: $01 $02 $01
    ld [bc], a                                    ; $73DA: $02
    ld bc, $0003                                  ; $73DB: $01 $03 $00
    rlca                                          ; $73DE: $07
    ld [bc], a                                    ; $73DF: $02
    rrca                                          ; $73E0: $0F
    rlca                                          ; $73E1: $07
    dec bc                                        ; $73E2: $0B
    rlca                                          ; $73E3: $07
    inc de                                        ; $73E4: $13
    rrca                                          ; $73E5: $0F
    rla                                           ; $73E6: $17
    rrca                                          ; $73E7: $0F
    rra                                           ; $73E8: $1F
    rrca                                          ; $73E9: $0F
    rrca                                          ; $73EA: $0F
    rlca                                          ; $73EB: $07
    rlca                                          ; $73EC: $07
    inc bc                                        ; $73ED: $03
    rrca                                          ; $73EE: $0F
    nop                                           ; $73EF: $00
    inc d                                         ; $73F0: $14
    dec bc                                        ; $73F1: $0B
    rra                                           ; $73F2: $1F
    nop                                           ; $73F3: $00
    nop                                           ; $73F4: $00
    nop                                           ; $73F5: $00
    nop                                           ; $73F6: $00
    nop                                           ; $73F7: $00
    nop                                           ; $73F8: $00
    nop                                           ; $73F9: $00
    nop                                           ; $73FA: $00
    nop                                           ; $73FB: $00
    nop                                           ; $73FC: $00
    nop                                           ; $73FD: $00
    nop                                           ; $73FE: $00
    nop                                           ; $73FF: $00
    ld b, $00                                     ; $7400: $06 $00
    rra                                           ; $7402: $1F
    ld b, $3F                                     ; $7403: $06 $3F
    rra                                           ; $7405: $1F
    rst RST_38                                    ; $7406: $FF
    ccf                                           ; $7407: $3F
    rst RST_38                                    ; $7408: $FF
    cp h                                          ; $7409: $BC
    db $FC                                        ; $740A: $FC
    or e                                          ; $740B: $B3
    db $FC                                        ; $740C: $FC
    set 7, h                                      ; $740D: $CB $FC
    db $DB                                        ; $740F: $DB
    cp $BD                                        ; $7410: $FE $BD
    cp $BD                                        ; $7412: $FE $BD
    cp $FD                                        ; $7414: $FE $FD
    ld a, $FD                                     ; $7416: $3E $FD
    ld a, a                                       ; $7418: $7F
    cp $7F                                        ; $7419: $FE $7F
    cp $FF                                        ; $741B: $FE $FF
    or b                                          ; $741D: $B0
    db $FD                                        ; $741E: $FD
    ld a, b                                       ; $741F: $78
    db $FD                                        ; $7420: $FD
    ld hl, sp-$07                                 ; $7421: $F8 $F9
    ldh a, [$FFF1]                                ; $7423: $F0 $F1
    ldh [$FFE3], a                                ; $7425: $E0 $E3
    pop bc                                        ; $7427: $C1
    db $E3                                        ; $7428: $E3
    pop bc                                        ; $7429: $C1
    di                                            ; $742A: $F3
    pop hl                                        ; $742B: $E1
    di                                            ; $742C: $F3
    ldh [rIE], a                                  ; $742D: $E0 $FF
    ldh a, [rIE]                                  ; $742F: $F0 $FF

jr_013_7431:
    ldh a, [rIE]                                  ; $7431: $F0 $FF

jr_013_7433:
    ld hl, sp-$01                                 ; $7433: $F8 $FF
    ld hl, sp-$01                                 ; $7435: $F8 $FF
    ld a, [$FF7F]                                 ; $7437: $FA $7F $FF
    ccf                                           ; $743A: $3F
    rst RST_38                                    ; $743B: $FF
    rst RST_38                                    ; $743C: $FF
    ld a, a                                       ; $743D: $7F
    rst RST_38                                    ; $743E: $FF
    ld a, a                                       ; $743F: $7F
    add b                                         ; $7440: $80
    nop                                           ; $7441: $00
    ret nz                                        ; $7442: $C0

    add b                                         ; $7443: $80
    ld hl, sp+$00                                 ; $7444: $F8 $00

jr_013_7446:
    ld b, $F8                                     ; $7446: $06 $F8

jr_013_7448:
    ld bc, $00FE                                  ; $7448: $01 $FE $00
    rst RST_38                                    ; $744B: $FF
    nop                                           ; $744C: $00
    rst RST_38                                    ; $744D: $FF
    nop                                           ; $744E: $00
    rst RST_38                                    ; $744F: $FF
    jr nz, jr_013_7431                            ; $7450: $20 $DF

    jr nz, jr_013_7433                            ; $7452: $20 $DF

    ld b, b                                       ; $7454: $40
    cp a                                          ; $7455: $BF
    ldh [$FF1F], a                                ; $7456: $E0 $1F
    sub b                                         ; $7458: $90
    ld l, a                                       ; $7459: $6F
    ld a, h                                       ; $745A: $7C
    add e                                         ; $745B: $83
    inc de                                        ; $745C: $13
    db $EC                                        ; $745D: $EC
    adc [hl]                                      ; $745E: $8E
    pop af                                        ; $745F: $F1
    add c                                         ; $7460: $81
    cp $C0                                        ; $7461: $FE $C0
    rst RST_38                                    ; $7463: $FF
    ret nz                                        ; $7464: $C0

    rst RST_38                                    ; $7465: $FF

jr_013_7466:
    ldh a, [rIE]                                  ; $7466: $F0 $FF
    rst RST_38                                    ; $7468: $FF
    rst RST_38                                    ; $7469: $FF
    rst RST_38                                    ; $746A: $FF
    rst RST_38                                    ; $746B: $FF
    rst RST_38                                    ; $746C: $FF
    rst RST_38                                    ; $746D: $FF
    rst RST_38                                    ; $746E: $FF
    ld a, a                                       ; $746F: $7F
    rst RST_38                                    ; $7470: $FF
    ld e, $FF                                     ; $7471: $1E $FF
    nop                                           ; $7473: $00
    rst RST_38                                    ; $7474: $FF
    nop                                           ; $7475: $00
    rst RST_38                                    ; $7476: $FF
    nop                                           ; $7477: $00
    cp $00                                        ; $7478: $FE $00
    db $FC                                        ; $747A: $FC
    add b                                         ; $747B: $80
    ld hl, sp-$80                                 ; $747C: $F8 $80
    ldh a, [$FFC0]                                ; $747E: $F0 $C0
    add b                                         ; $7480: $80
    nop                                           ; $7481: $00
    ld b, b                                       ; $7482: $40
    add b                                         ; $7483: $80
    jr nz, jr_013_7446                            ; $7484: $20 $C0

    jr nc, jr_013_7448                            ; $7486: $30 $C0

    db $10                                        ; $7488: $10
    ldh [rNR10], a                                ; $7489: $E0 $10
    ldh [rNR23], a                                ; $748B: $E0 $18
    ldh [$FF28], a                                ; $748D: $E0 $28
    ret nc                                        ; $748F: $D0

    ld e, b                                       ; $7490: $58
    and b                                         ; $7491: $A0
    xor b                                         ; $7492: $A8
    ld d, b                                       ; $7493: $50
    jr z, jr_013_7466                             ; $7494: $28 $D0

    ret c                                         ; $7496: $D8

    jr nc, jr_013_74B1                            ; $7497: $30 $18

    ldh a, [$FF38]                                ; $7499: $F0 $38
    ldh a, [$FFF0]                                ; $749B: $F0 $F0
    ldh [$FFF0], a                                ; $749D: $E0 $F0
    ldh [$FFF0], a                                ; $749F: $E0 $F0
    ldh [$FFE0], a                                ; $74A1: $E0 $E0
    ret nz                                        ; $74A3: $C0

    ldh [$FF80], a                                ; $74A4: $E0 $80
    ret nz                                        ; $74A6: $C0

    nop                                           ; $74A7: $00
    ret nz                                        ; $74A8: $C0

    nop                                           ; $74A9: $00
    add b                                         ; $74AA: $80
    nop                                           ; $74AB: $00
    nop                                           ; $74AC: $00
    nop                                           ; $74AD: $00
    nop                                           ; $74AE: $00
    nop                                           ; $74AF: $00
    nop                                           ; $74B0: $00

jr_013_74B1:
    nop                                           ; $74B1: $00
    nop                                           ; $74B2: $00
    nop                                           ; $74B3: $00
    nop                                           ; $74B4: $00
    nop                                           ; $74B5: $00
    nop                                           ; $74B6: $00
    nop                                           ; $74B7: $00
    nop                                           ; $74B8: $00
    nop                                           ; $74B9: $00
    nop                                           ; $74BA: $00
    nop                                           ; $74BB: $00
    nop                                           ; $74BC: $00
    nop                                           ; $74BD: $00
    nop                                           ; $74BE: $00
    nop                                           ; $74BF: $00
    ld a, a                                       ; $74C0: $7F
    jr nz, jr_013_74ED                            ; $74C1: $20 $2A

    dec d                                         ; $74C3: $15
    ccf                                           ; $74C4: $3F
    nop                                           ; $74C5: $00
    nop                                           ; $74C6: $00
    nop                                           ; $74C7: $00
    nop                                           ; $74C8: $00
    nop                                           ; $74C9: $00
    nop                                           ; $74CA: $00
    nop                                           ; $74CB: $00
    nop                                           ; $74CC: $00
    nop                                           ; $74CD: $00
    nop                                           ; $74CE: $00
    nop                                           ; $74CF: $00
    nop                                           ; $74D0: $00
    nop                                           ; $74D1: $00
    nop                                           ; $74D2: $00
    nop                                           ; $74D3: $00
    nop                                           ; $74D4: $00
    nop                                           ; $74D5: $00
    nop                                           ; $74D6: $00
    nop                                           ; $74D7: $00
    nop                                           ; $74D8: $00
    nop                                           ; $74D9: $00
    nop                                           ; $74DA: $00
    nop                                           ; $74DB: $00
    nop                                           ; $74DC: $00
    nop                                           ; $74DD: $00
    nop                                           ; $74DE: $00
    nop                                           ; $74DF: $00
    ldh [rLCDC], a                                ; $74E0: $E0 $40
    ldh [rP1], a                                  ; $74E2: $E0 $00
    nop                                           ; $74E4: $00
    nop                                           ; $74E5: $00
    nop                                           ; $74E6: $00
    nop                                           ; $74E7: $00
    nop                                           ; $74E8: $00
    nop                                           ; $74E9: $00
    nop                                           ; $74EA: $00
    nop                                           ; $74EB: $00
    nop                                           ; $74EC: $00

jr_013_74ED:
    nop                                           ; $74ED: $00
    nop                                           ; $74EE: $00
    nop                                           ; $74EF: $00
    nop                                           ; $74F0: $00
    nop                                           ; $74F1: $00
    nop                                           ; $74F2: $00
    nop                                           ; $74F3: $00
    nop                                           ; $74F4: $00
    nop                                           ; $74F5: $00
    nop                                           ; $74F6: $00
    nop                                           ; $74F7: $00
    nop                                           ; $74F8: $00
    nop                                           ; $74F9: $00
    nop                                           ; $74FA: $00
    nop                                           ; $74FB: $00
    nop                                           ; $74FC: $00
    nop                                           ; $74FD: $00
    nop                                           ; $74FE: $00
    nop                                           ; $74FF: $00
    rst RST_30                                    ; $7500: $F7
    rrca                                          ; $7501: $0F
    ld a, a                                       ; $7502: $7F
    adc l                                         ; $7503: $8D
    ccf                                           ; $7504: $3F
    reti                                          ; $7505: $D9


    rst RST_38                                    ; $7506: $FF
    rlca                                          ; $7507: $07
    ccf                                           ; $7508: $3F
    rst RST_18                                    ; $7509: $DF
    ccf                                           ; $750A: $3F
    rst RST_18                                    ; $750B: $DF
    rst RST_38                                    ; $750C: $FF
    rra                                           ; $750D: $1F
    rst RST_38                                    ; $750E: $FF
    rra                                           ; $750F: $1F
    ccf                                           ; $7510: $3F
    rst RST_18                                    ; $7511: $DF
    rra                                           ; $7512: $1F
    rst RST_28                                    ; $7513: $EF
    rra                                           ; $7514: $1F
    rst RST_28                                    ; $7515: $EF
    rra                                           ; $7516: $1F
    xor $1E                                       ; $7517: $EE $1E
    add sp, $18                                   ; $7519: $E8 $18
    ldh [$FFE0], a                                ; $751B: $E0 $E0
    nop                                           ; $751D: $00
    nop                                           ; $751E: $00
    nop                                           ; $751F: $00
    rst RST_38                                    ; $7520: $FF
    nop                                           ; $7521: $00
    rst RST_38                                    ; $7522: $FF
    nop                                           ; $7523: $00
    rst RST_38                                    ; $7524: $FF
    nop                                           ; $7525: $00
    rst RST_38                                    ; $7526: $FF
    nop                                           ; $7527: $00
    rst RST_38                                    ; $7528: $FF
    nop                                           ; $7529: $00
    rst RST_38                                    ; $752A: $FF
    nop                                           ; $752B: $00
    cp $00                                        ; $752C: $FE $00
    db $FC                                        ; $752E: $FC
    nop                                           ; $752F: $00
    ld hl, sp+$00                                 ; $7530: $F8 $00
    ldh a, [rP1]                                  ; $7532: $F0 $00
    ldh a, [rP1]                                  ; $7534: $F0 $00
    ldh [rP1], a                                  ; $7536: $E0 $00
    ld hl, sp-$60                                 ; $7538: $F8 $A0
    ld hl, sp-$48                                 ; $753A: $F8 $B8
    ld hl, sp+$78                                 ; $753C: $F8 $78
    cp b                                          ; $753E: $B8
    ld a, b                                       ; $753F: $78
    ld bc, $02FE                                  ; $7540: $01 $FE $02
    db $FD                                        ; $7543: $FD
    ld [bc], a                                    ; $7544: $02
    db $FD                                        ; $7545: $FD
    inc bc                                        ; $7546: $03
    db $FC                                        ; $7547: $FC
    ld [bc], a                                    ; $7548: $02
    db $FD                                        ; $7549: $FD
    inc bc                                        ; $754A: $03
    db $FC                                        ; $754B: $FC
    db $FC                                        ; $754C: $FC
    inc bc                                        ; $754D: $03
    ld hl, $FEDE                                  ; $754E: $21 $DE $FE
    ld bc, $DF20                                  ; $7551: $01 $20 $DF
    ld b, b                                       ; $7554: $40
    cp a                                          ; $7555: $BF
    ld b, b                                       ; $7556: $40
    cp a                                          ; $7557: $BF
    ld b, b                                       ; $7558: $40
    cp a                                          ; $7559: $BF
    ld b, b                                       ; $755A: $40
    cp a                                          ; $755B: $BF
    jr nz, @-$1F                                  ; $755C: $20 $DF

    rst RST_38                                    ; $755E: $FF
    nop                                           ; $755F: $00
    ccf                                           ; $7560: $3F
    nop                                           ; $7561: $00
    ld a, a                                       ; $7562: $7F
    nop                                           ; $7563: $00
    rst RST_38                                    ; $7564: $FF
    nop                                           ; $7565: $00
    rst RST_38                                    ; $7566: $FF
    nop                                           ; $7567: $00
    rst RST_38                                    ; $7568: $FF
    nop                                           ; $7569: $00
    rst RST_38                                    ; $756A: $FF
    nop                                           ; $756B: $00
    rst RST_38                                    ; $756C: $FF
    nop                                           ; $756D: $00
    rst RST_38                                    ; $756E: $FF
    ldh [rIE], a                                  ; $756F: $E0 $FF
    ld hl, sp-$01                                 ; $7571: $F8 $FF
    db $FC                                        ; $7573: $FC
    rst RST_38                                    ; $7574: $FF
    db $FC                                        ; $7575: $FC
    rst RST_38                                    ; $7576: $FF
    cp $FF                                        ; $7577: $FE $FF
    cp $FF                                        ; $7579: $FE $FF
    ld sp, hl                                     ; $757B: $F9
    rst RST_38                                    ; $757C: $FF
    rst RST_30                                    ; $757D: $F7
    rrca                                          ; $757E: $0F
    or $00                                        ; $757F: $F6 $00
    nop                                           ; $7581: $00
    nop                                           ; $7582: $00
    nop                                           ; $7583: $00
    nop                                           ; $7584: $00
    nop                                           ; $7585: $00
    ld bc, $0300                                  ; $7586: $01 $00 $03
    nop                                           ; $7589: $00
    rlca                                          ; $758A: $07
    nop                                           ; $758B: $00
    rrca                                          ; $758C: $0F
    nop                                           ; $758D: $00
    rra                                           ; $758E: $1F
    inc bc                                        ; $758F: $03
    rra                                           ; $7590: $1F
    rrca                                          ; $7591: $0F
    ccf                                           ; $7592: $3F
    rra                                           ; $7593: $1F
    ccf                                           ; $7594: $3F
    rra                                           ; $7595: $1F
    ld a, a                                       ; $7596: $7F
    ccf                                           ; $7597: $3F
    ld a, a                                       ; $7598: $7F
    ccf                                           ; $7599: $3F
    ld a, a                                       ; $759A: $7F
    ccf                                           ; $759B: $3F
    ld a, a                                       ; $759C: $7F
    ccf                                           ; $759D: $3F
    cp $7F                                        ; $759E: $FE $7F
    rra                                           ; $75A0: $1F
    rrca                                          ; $75A1: $0F
    ld e, $0F                                     ; $75A2: $1E $0F
    inc e                                         ; $75A4: $1C
    rrca                                          ; $75A5: $0F
    inc e                                         ; $75A6: $1C
    rrca                                          ; $75A7: $0F
    jr @+$11                                      ; $75A8: $18 $0F

    jr jr_013_75BB                                ; $75AA: $18 $0F

    ld [$0907], sp                                ; $75AC: $08 $07 $09
    ld b, $0A                                     ; $75AF: $06 $0A
    dec b                                         ; $75B1: $05
    dec bc                                        ; $75B2: $0B
    inc b                                         ; $75B3: $04
    inc b                                         ; $75B4: $04
    inc bc                                        ; $75B5: $03
    rlca                                          ; $75B6: $07
    nop                                           ; $75B7: $00
    ld b, $01                                     ; $75B8: $06 $01
    inc bc                                        ; $75BA: $03

jr_013_75BB:
    nop                                           ; $75BB: $00
    inc bc                                        ; $75BC: $03
    nop                                           ; $75BD: $00
    ld bc, $0000                                  ; $75BE: $01 $00 $00
    nop                                           ; $75C1: $00
    nop                                           ; $75C2: $00
    nop                                           ; $75C3: $00
    nop                                           ; $75C4: $00
    nop                                           ; $75C5: $00
    nop                                           ; $75C6: $00
    nop                                           ; $75C7: $00
    nop                                           ; $75C8: $00
    nop                                           ; $75C9: $00
    nop                                           ; $75CA: $00
    nop                                           ; $75CB: $00
    nop                                           ; $75CC: $00
    nop                                           ; $75CD: $00
    rst RST_38                                    ; $75CE: $FF
    nop                                           ; $75CF: $00
    rst RST_38                                    ; $75D0: $FF
    nop                                           ; $75D1: $00
    rst RST_38                                    ; $75D2: $FF
    nop                                           ; $75D3: $00
    rst RST_38                                    ; $75D4: $FF
    nop                                           ; $75D5: $00
    rst RST_38                                    ; $75D6: $FF
    nop                                           ; $75D7: $00
    rst RST_38                                    ; $75D8: $FF
    nop                                           ; $75D9: $00
    rst RST_38                                    ; $75DA: $FF
    nop                                           ; $75DB: $00
    cp $00                                        ; $75DC: $FE $00
    ld hl, sp+$00                                 ; $75DE: $F8 $00
    nop                                           ; $75E0: $00
    nop                                           ; $75E1: $00
    nop                                           ; $75E2: $00
    nop                                           ; $75E3: $00
    nop                                           ; $75E4: $00
    nop                                           ; $75E5: $00
    nop                                           ; $75E6: $00
    nop                                           ; $75E7: $00
    nop                                           ; $75E8: $00
    nop                                           ; $75E9: $00
    nop                                           ; $75EA: $00
    nop                                           ; $75EB: $00
    nop                                           ; $75EC: $00
    nop                                           ; $75ED: $00
    nop                                           ; $75EE: $00
    nop                                           ; $75EF: $00
    nop                                           ; $75F0: $00
    nop                                           ; $75F1: $00
    add b                                         ; $75F2: $80
    nop                                           ; $75F3: $00
    ld hl, sp+$00                                 ; $75F4: $F8 $00
    cp $00                                        ; $75F6: $FE $00
    rst RST_38                                    ; $75F8: $FF
    nop                                           ; $75F9: $00
    rst RST_38                                    ; $75FA: $FF
    nop                                           ; $75FB: $00
    ldh [rP1], a                                  ; $75FC: $E0 $00
    add b                                         ; $75FE: $80
    nop                                           ; $75FF: $00
    nop                                           ; $7600: $00
    nop                                           ; $7601: $00
    nop                                           ; $7602: $00
    nop                                           ; $7603: $00
    nop                                           ; $7604: $00
    nop                                           ; $7605: $00
    nop                                           ; $7606: $00
    nop                                           ; $7607: $00
    nop                                           ; $7608: $00
    nop                                           ; $7609: $00
    nop                                           ; $760A: $00
    nop                                           ; $760B: $00
    nop                                           ; $760C: $00
    nop                                           ; $760D: $00
    nop                                           ; $760E: $00
    nop                                           ; $760F: $00
    nop                                           ; $7610: $00
    nop                                           ; $7611: $00
    nop                                           ; $7612: $00
    nop                                           ; $7613: $00
    nop                                           ; $7614: $00
    nop                                           ; $7615: $00
    nop                                           ; $7616: $00
    nop                                           ; $7617: $00
    nop                                           ; $7618: $00
    nop                                           ; $7619: $00
    rrca                                          ; $761A: $0F
    nop                                           ; $761B: $00
    ccf                                           ; $761C: $3F
    nop                                           ; $761D: $00
    rst RST_38                                    ; $761E: $FF
    nop                                           ; $761F: $00
    nop                                           ; $7620: $00
    nop                                           ; $7621: $00
    nop                                           ; $7622: $00
    nop                                           ; $7623: $00
    nop                                           ; $7624: $00
    nop                                           ; $7625: $00
    nop                                           ; $7626: $00
    nop                                           ; $7627: $00
    nop                                           ; $7628: $00
    nop                                           ; $7629: $00
    nop                                           ; $762A: $00
    nop                                           ; $762B: $00
    nop                                           ; $762C: $00
    nop                                           ; $762D: $00
    nop                                           ; $762E: $00
    nop                                           ; $762F: $00
    nop                                           ; $7630: $00
    nop                                           ; $7631: $00
    nop                                           ; $7632: $00
    nop                                           ; $7633: $00
    nop                                           ; $7634: $00
    nop                                           ; $7635: $00
    nop                                           ; $7636: $00
    nop                                           ; $7637: $00
    nop                                           ; $7638: $00
    nop                                           ; $7639: $00
    nop                                           ; $763A: $00
    nop                                           ; $763B: $00
    add b                                         ; $763C: $80
    nop                                           ; $763D: $00
    ldh [rP1], a                                  ; $763E: $E0 $00
    rst RST_30                                    ; $7640: $F7
    rst RST_08                                    ; $7641: $CF
    rst RST_30                                    ; $7642: $F7
    rrca                                          ; $7643: $0F
    ld l, a                                       ; $7644: $6F
    sbc l                                         ; $7645: $9D
    rra                                           ; $7646: $1F
    ld sp, hl                                     ; $7647: $F9
    rst RST_18                                    ; $7648: $DF
    daa                                           ; $7649: $27
    ccf                                           ; $764A: $3F
    rst RST_18                                    ; $764B: $DF
    rst RST_38                                    ; $764C: $FF
    rst RST_18                                    ; $764D: $DF
    rst RST_38                                    ; $764E: $FF
    ccf                                           ; $764F: $3F
    rst RST_38                                    ; $7650: $FF
    ccf                                           ; $7651: $3F
    rst RST_38                                    ; $7652: $FF
    rst RST_18                                    ; $7653: $DF
    rst RST_38                                    ; $7654: $FF
    rst RST_38                                    ; $7655: $FF
    rst RST_38                                    ; $7656: $FF
    rst RST_38                                    ; $7657: $FF
    rst RST_38                                    ; $7658: $FF
    cp $FE                                        ; $7659: $FE $FE
    ld hl, sp-$08                                 ; $765B: $F8 $F8
    ldh [$FFE0], a                                ; $765D: $E0 $E0
    nop                                           ; $765F: $00
    ld bc, $0300                                  ; $7660: $01 $00 $03
    ld bc, $0102                                  ; $7663: $01 $02 $01
    inc bc                                        ; $7666: $03
    nop                                           ; $7667: $00
    ld [bc], a                                    ; $7668: $02
    ld bc, $0003                                  ; $7669: $01 $03 $00
    rst RST_38                                    ; $766C: $FF
    inc bc                                        ; $766D: $03
    ccf                                           ; $766E: $3F
    sbc $FF                                       ; $766F: $DE $FF
    ld bc, $DF3F                                  ; $7671: $01 $3F $DF
    ld a, a                                       ; $7674: $7F
    cp a                                          ; $7675: $BF
    ld a, a                                       ; $7676: $7F
    cp a                                          ; $7677: $BF
    ld a, a                                       ; $7678: $7F
    cp a                                          ; $7679: $BF
    ld a, a                                       ; $767A: $7F
    cp a                                          ; $767B: $BF
    ccf                                           ; $767C: $3F
    rst RST_18                                    ; $767D: $DF
    rst RST_38                                    ; $767E: $FF
    nop                                           ; $767F: $00
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
    inc e                                         ; $7698: $1C
    nop                                           ; $7699: $00
    ccf                                           ; $769A: $3F
    inc e                                         ; $769B: $1C
    rst RST_38                                    ; $769C: $FF
    ccf                                           ; $769D: $3F
    rst RST_38                                    ; $769E: $FF
    rst RST_38                                    ; $769F: $FF
    ld bc, $0200                                  ; $76A0: $01 $00 $02
    ld bc, $0003                                  ; $76A3: $01 $03 $00
    inc b                                         ; $76A6: $04
    inc bc                                        ; $76A7: $03
    rlca                                          ; $76A8: $07
    nop                                           ; $76A9: $00
    inc b                                         ; $76AA: $04
    inc bc                                        ; $76AB: $03
    inc bc                                        ; $76AC: $03
    nop                                           ; $76AD: $00
    ld [bc], a                                    ; $76AE: $02
    ld bc, $0001                                  ; $76AF: $01 $01 $00
    nop                                           ; $76B2: $00
    nop                                           ; $76B3: $00
    nop                                           ; $76B4: $00
    nop                                           ; $76B5: $00
    nop                                           ; $76B6: $00
    nop                                           ; $76B7: $00
    nop                                           ; $76B8: $00
    nop                                           ; $76B9: $00
    nop                                           ; $76BA: $00
    nop                                           ; $76BB: $00
    nop                                           ; $76BC: $00
    nop                                           ; $76BD: $00
    nop                                           ; $76BE: $00
    nop                                           ; $76BF: $00
    nop                                           ; $76C0: $00
    nop                                           ; $76C1: $00
    nop                                           ; $76C2: $00
    nop                                           ; $76C3: $00
    nop                                           ; $76C4: $00
    nop                                           ; $76C5: $00
    nop                                           ; $76C6: $00
    nop                                           ; $76C7: $00
    nop                                           ; $76C8: $00
    nop                                           ; $76C9: $00
    nop                                           ; $76CA: $00
    nop                                           ; $76CB: $00
    nop                                           ; $76CC: $00
    nop                                           ; $76CD: $00
    nop                                           ; $76CE: $00
    nop                                           ; $76CF: $00
    nop                                           ; $76D0: $00
    nop                                           ; $76D1: $00
    nop                                           ; $76D2: $00
    nop                                           ; $76D3: $00
    nop                                           ; $76D4: $00
    nop                                           ; $76D5: $00
    nop                                           ; $76D6: $00
    nop                                           ; $76D7: $00
    nop                                           ; $76D8: $00
    nop                                           ; $76D9: $00
    nop                                           ; $76DA: $00
    nop                                           ; $76DB: $00
    ld bc, $0100                                  ; $76DC: $01 $00 $01
    nop                                           ; $76DF: $00
    nop                                           ; $76E0: $00
    nop                                           ; $76E1: $00
    ld bc, $0300                                  ; $76E2: $01 $00 $03
    ld bc, $030F                                  ; $76E5: $01 $0F $03
    rra                                           ; $76E8: $1F
    rrca                                          ; $76E9: $0F
    rra                                           ; $76EA: $1F
    ld [$041B], sp                                ; $76EB: $08 $1B $04
    ld [hl], $19                                  ; $76EE: $36 $19
    ld hl, $3D1F                                  ; $76F0: $21 $1F $3D
    inc bc                                        ; $76F3: $03
    inc hl                                        ; $76F4: $23
    inc e                                         ; $76F5: $1C
    inc a                                         ; $76F6: $3C
    inc bc                                        ; $76F7: $03
    ld d, b                                       ; $76F8: $50
    cpl                                           ; $76F9: $2F
    and b                                         ; $76FA: $A0
    ld e, a                                       ; $76FB: $5F
    and b                                         ; $76FC: $A0
    ld e, a                                       ; $76FD: $5F
    and b                                         ; $76FE: $A0
    ld e, a                                       ; $76FF: $5F
    inc bc                                        ; $7700: $03
    nop                                           ; $7701: $00
    rst RST_20                                    ; $7702: $E7
    inc bc                                        ; $7703: $03
    rst RST_38                                    ; $7704: $FF
    rst RST_20                                    ; $7705: $E7
    rst RST_38                                    ; $7706: $FF
    rst RST_30                                    ; $7707: $F7
    rst RST_38                                    ; $7708: $FF
    or $7F                                        ; $7709: $F6 $7F
    ld sp, hl                                     ; $770B: $F9
    ld a, a                                       ; $770C: $7F
    ei                                            ; $770D: $FB
    rst RST_38                                    ; $770E: $FF
    rst RST_10                                    ; $770F: $D7
    rst RST_38                                    ; $7710: $FF
    rst RST_10                                    ; $7711: $D7
    rst RST_38                                    ; $7712: $FF
    cp a                                          ; $7713: $BF
    add a                                         ; $7714: $87
    ld a, a                                       ; $7715: $7F
    rrca                                          ; $7716: $0F
    rst RST_38                                    ; $7717: $FF
    rrca                                          ; $7718: $0F
    rst RST_38                                    ; $7719: $FF
    rra                                           ; $771A: $1F
    or $3F                                        ; $771B: $F6 $3F
    rst RST_28                                    ; $771D: $EF
    rst RST_38                                    ; $771E: $FF
    rst RST_18                                    ; $771F: $DF
    ret nz                                        ; $7720: $C0

    nop                                           ; $7721: $00
    ldh [$FFC0], a                                ; $7722: $E0 $C0
    rst RST_38                                    ; $7724: $FF
    ldh [rIE], a                                  ; $7725: $E0 $FF
    sbc a                                         ; $7727: $9F
    rst RST_38                                    ; $7728: $FF
    ld a, a                                       ; $7729: $7F
    rst RST_38                                    ; $772A: $FF
    rst RST_38                                    ; $772B: $FF
    rst RST_38                                    ; $772C: $FF
    rst RST_38                                    ; $772D: $FF
    rst RST_38                                    ; $772E: $FF
    rst RST_38                                    ; $772F: $FF
    rst RST_38                                    ; $7730: $FF
    ei                                            ; $7731: $FB
    rst RST_38                                    ; $7732: $FF
    ei                                            ; $7733: $FB
    rst RST_38                                    ; $7734: $FF
    rst RST_30                                    ; $7735: $F7
    rst RST_38                                    ; $7736: $FF
    jp $C1E3                                      ; $7737: $C3 $E3 $C1


    jp $8200                                      ; $773A: $C3 $00 $82


    ld bc, $0083                                  ; $773D: $01 $83 $00
    nop                                           ; $7740: $00
    nop                                           ; $7741: $00
    ret nz                                        ; $7742: $C0

    nop                                           ; $7743: $00
    ldh [$FFC0], a                                ; $7744: $E0 $C0
    ldh a, [$FFE0]                                ; $7746: $F0 $E0
    ld hl, sp-$10                                 ; $7748: $F8 $F0
    db $FC                                        ; $774A: $FC
    ld hl, sp-$02                                 ; $774B: $F8 $FE
    ld hl, sp-$02                                 ; $774D: $F8 $FE
    db $FC                                        ; $774F: $FC
    cp $FC                                        ; $7750: $FE $FC
    rst RST_38                                    ; $7752: $FF
    db $FC                                        ; $7753: $FC
    db $FD                                        ; $7754: $FD
    ld a, [$74FA]                                 ; $7755: $FA $FA $74
    ld [hl], h                                    ; $7758: $74
    adc b                                         ; $7759: $88
    call nz, Call_013_7838                        ; $775A: $C4 $38 $78
    nop                                           ; $775D: $00
    nop                                           ; $775E: $00
    nop                                           ; $775F: $00
    dec b                                         ; $7760: $05
    ld [bc], a                                    ; $7761: $02
    inc b                                         ; $7762: $04
    inc bc                                        ; $7763: $03
    dec b                                         ; $7764: $05
    ld [bc], a                                    ; $7765: $02
    dec b                                         ; $7766: $05
    ld [bc], a                                    ; $7767: $02
    dec a                                         ; $7768: $3D
    ld [bc], a                                    ; $7769: $02
    ld a, [hl]                                    ; $776A: $7E
    dec a                                         ; $776B: $3D
    sbc [hl]                                      ; $776C: $9E
    ld a, l                                       ; $776D: $7D
    sbc a                                         ; $776E: $9F

jr_013_776F:
    ld a, [hl]                                    ; $776F: $7E
    sbc a                                         ; $7770: $9F
    ld a, a                                       ; $7771: $7F
    cp a                                          ; $7772: $BF
    ld a, a                                       ; $7773: $7F
    ld a, a                                       ; $7774: $7F
    jr c, jr_013_77F6                             ; $7775: $38 $7F

    ccf                                           ; $7777: $3F
    ccf                                           ; $7778: $3F
    rra                                           ; $7779: $1F
    ld a, a                                       ; $777A: $7F
    rlca                                          ; $777B: $07
    and a                                         ; $777C: $A7
    ld e, e                                       ; $777D: $5B
    rst RST_38                                    ; $777E: $FF
    nop                                           ; $777F: $00
    rst RST_38                                    ; $7780: $FF
    inc bc                                        ; $7781: $03
    inc bc                                        ; $7782: $03
    rst RST_38                                    ; $7783: $FF
    inc bc                                        ; $7784: $03
    rst RST_38                                    ; $7785: $FF
    inc bc                                        ; $7786: $03
    rst RST_38                                    ; $7787: $FF
    ld bc, $81FF                                  ; $7788: $01 $FF $81
    ld a, a                                       ; $778B: $7F
    add e                                         ; $778C: $83
    ld a, a                                       ; $778D: $7F
    ld b, a                                       ; $778E: $47
    cp e                                          ; $778F: $BB
    xor a                                         ; $7790: $AF
    ld d, a                                       ; $7791: $57
    rst RST_38                                    ; $7792: $FF
    add a                                         ; $7793: $87
    add l                                         ; $7794: $85
    inc bc                                        ; $7795: $03
    add h                                         ; $7796: $84
    inc bc                                        ; $7797: $03
    jp nz, $C181                                  ; $7798: $C2 $81 $C1

    add b                                         ; $779B: $80
    ret nz                                        ; $779C: $C0

    add b                                         ; $779D: $80
    add b                                         ; $779E: $80
    nop                                           ; $779F: $00
    ldh a, [$FFE0]                                ; $77A0: $F0 $E0
    ldh [$FFC0], a                                ; $77A2: $E0 $C0
    ret nz                                        ; $77A4: $C0

    add b                                         ; $77A5: $80
    ret nz                                        ; $77A6: $C0

    add b                                         ; $77A7: $80
    ldh [$FFC0], a                                ; $77A8: $E0 $C0
    ldh [$FFC0], a                                ; $77AA: $E0 $C0
    ldh a, [$FFE0]                                ; $77AC: $F0 $E0
    ldh a, [$FFE0]                                ; $77AE: $F0 $E0
    ld hl, sp-$10                                 ; $77B0: $F8 $F0
    db $FC                                        ; $77B2: $FC
    ldh a, [$FFFE]                                ; $77B3: $F0 $FE
    db $F4                                        ; $77B5: $F4
    rst RST_38                                    ; $77B6: $FF
    cp $7F                                        ; $77B7: $FE $7F
    cp $FF                                        ; $77B9: $FE $FF
    rst RST_38                                    ; $77BB: $FF
    rst RST_38                                    ; $77BC: $FF
    ld a, a                                       ; $77BD: $7F
    ld a, a                                       ; $77BE: $7F
    dec e                                         ; $77BF: $1D
    cp $FC                                        ; $77C0: $FE $FC
    cp $FC                                        ; $77C2: $FE $FC
    rst RST_38                                    ; $77C4: $FF
    halt                                          ; $77C5: $76
    ld [hl], a                                    ; $77C6: $77
    ld a, [bc]                                    ; $77C7: $0A
    ld d, [hl]                                    ; $77C8: $56
    jr z, jr_013_776F                             ; $77C9: $28 $A4

    ld e, b                                       ; $77CB: $58
    ld hl, sp+$00                                 ; $77CC: $F8 $00
    nop                                           ; $77CE: $00
    nop                                           ; $77CF: $00
    nop                                           ; $77D0: $00
    nop                                           ; $77D1: $00
    nop                                           ; $77D2: $00
    nop                                           ; $77D3: $00
    nop                                           ; $77D4: $00
    nop                                           ; $77D5: $00
    nop                                           ; $77D6: $00
    nop                                           ; $77D7: $00
    nop                                           ; $77D8: $00
    nop                                           ; $77D9: $00
    nop                                           ; $77DA: $00
    nop                                           ; $77DB: $00
    nop                                           ; $77DC: $00
    nop                                           ; $77DD: $00
    nop                                           ; $77DE: $00
    nop                                           ; $77DF: $00
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

jr_013_77F6:
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

Call_013_7838:
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

Jump_013_7CFF:
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
