; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $033", ROMX[$4000], BANK[$33]

    xor a                                         ; $4000: $AF
    add b                                         ; $4001: $80
    jr nz, jr_033_4004                            ; $4002: $20 $00

jr_033_4004:
    rlca                                          ; $4004: $07
    nop                                           ; $4005: $00
    jr jr_033_4026                                ; $4006: $18 $1E

    ld hl, $502F                                  ; $4008: $21 $2F $50
    inc bc                                        ; $400B: $03
    ccf                                           ; $400C: $3F
    ld b, b                                       ; $400D: $40
    halt                                          ; $400E: $76
    adc c                                         ; $400F: $89
    ld a, a                                       ; $4010: $7F
    add b                                         ; $4011: $80
    dec b                                         ; $4012: $05
    inc e                                         ; $4013: $1C
    ld [de], a                                    ; $4014: $12
    ret nz                                        ; $4015: $C0

    ld a, e                                       ; $4016: $7B
    add h                                         ; $4017: $84
    dec l                                         ; $4018: $2D
    dec de                                        ; $4019: $1B
    inc h                                         ; $401A: $24
    ld d, l                                       ; $401B: $55
    ld a, b                                       ; $401C: $78
    cp a                                          ; $401D: $BF
    ld [$70FF], sp                                ; $401E: $08 $FF $70
    inc a                                         ; $4021: $3C
    inc b                                         ; $4022: $04
    nop                                           ; $4023: $00
    inc a                                         ; $4024: $3C
    nop                                           ; $4025: $00

jr_033_4026:
    ld de, $E020                                  ; $4026: $11 $20 $E0
    db $10                                        ; $4029: $10
    dec b                                         ; $402A: $05
    ldh a, [$FF08]                                ; $402B: $F0 $08
    ret c                                         ; $402D: $D8

    ld c, h                                       ; $402E: $4C
    nop                                           ; $402F: $00
    db $FC                                        ; $4030: $FC
    ld [bc], a                                    ; $4031: $02
    ld a, h                                       ; $4032: $7C
    add d                                         ; $4033: $82
    db $F4                                        ; $4034: $F4
    ld a, [bc]                                    ; $4035: $0A
    ld hl, sp+$04                                 ; $4036: $F8 $04
    push hl                                       ; $4038: $E5
    dec h                                         ; $4039: $25
    dec [hl]                                      ; $403A: $35
    ld d, h                                       ; $403B: $54
    jr nc, jr_033_407A                            ; $403C: $30 $3C

    ld [$70FE], sp                                ; $403E: $08 $FE $70
    sub $44                                       ; $4041: $D6 $44
    ld a, l                                       ; $4043: $7D
    ld bc, $0600                                  ; $4044: $01 $00 $06
    and b                                         ; $4047: $A0
    inc [hl]                                      ; $4048: $34
    rrca                                          ; $4049: $0F
    add c                                         ; $404A: $81
    ld a, h                                       ; $404B: $7C
    ld e, $21                                     ; $404C: $1E $21
    cpl                                           ; $404E: $2F
    ld d, b                                       ; $404F: $50
    dec sp                                        ; $4050: $3B
    ld b, h                                       ; $4051: $44
    db $FD                                        ; $4052: $FD
    sub c                                         ; $4053: $91
    dec b                                         ; $4054: $05
    ld e, l                                       ; $4055: $5D
    and d                                         ; $4056: $A2
    dec c                                         ; $4057: $0D
    scf                                           ; $4058: $37
    ld c, b                                       ; $4059: $48
    rra                                           ; $405A: $1F
    call nc, $607D                                ; $405B: $D4 $7D $60
    ld [$00FF], sp                                ; $405E: $08 $FF $00
    add sp, -$13                                  ; $4061: $E8 $ED
    or b                                          ; $4063: $B0
    inc [hl]                                      ; $4064: $34
    sub b                                         ; $4065: $90
    call $14E8                                    ; $4066: $CD $E8 $14
    push af                                       ; $4069: $F5
    cp h                                          ; $406A: $BC
    ld b, d                                       ; $406B: $42
    db $EC                                        ; $406C: $EC
    ld [de], a                                    ; $406D: $12
    rst RST_20                                    ; $406E: $E7
    rst RST_30                                    ; $406F: $F7
    rst RST_30                                    ; $4070: $F7
    adc b                                         ; $4071: $88
    ld b, b                                       ; $4072: $40
    ld a, h                                       ; $4073: $7C
    ld [$ECFF], sp                                ; $4074: $08 $FF $EC
    ei                                            ; $4077: $FB
    inc b                                         ; $4078: $04
    db $EC                                        ; $4079: $EC

jr_033_407A:
    ld [$08EC], sp                                ; $407A: $08 $EC $08
    ccf                                           ; $407D: $3F
    xor h                                         ; $407E: $AC
    and h                                         ; $407F: $A4
    adc a                                         ; $4080: $8F
    ldh a, [$FF7B]                                ; $4081: $F0 $7B
    dec [hl]                                      ; $4083: $35
    rst RST_28                                    ; $4084: $EF
    ld [$18C4], sp                                ; $4085: $08 $C4 $18
    dec b                                         ; $4088: $05
    rst RST_38                                    ; $4089: $FF
    inc d                                         ; $408A: $14
    inc b                                         ; $408B: $04
    nop                                           ; $408C: $00
    jr c, jr_033_40BF                             ; $408D: $38 $30

    inc a                                         ; $408F: $3C
    nop                                           ; $4090: $00
    ld d, h                                       ; $4091: $54
    rst RST_38                                    ; $4092: $FF
    db $ED                                        ; $4093: $ED
    rst RST_38                                    ; $4094: $FF
    and h                                         ; $4095: $A4
    inc b                                         ; $4096: $04
    db $FC                                        ; $4097: $FC
    ld [$08BC], sp                                ; $4098: $08 $BC $08
    db $FC                                        ; $409B: $FC
    dec b                                         ; $409C: $05
    call c, $AC08                                 ; $409D: $DC $08 $AC
    ld [$F407], sp                                ; $40A0: $08 $07 $F4
    cp b                                          ; $40A3: $B8
    ccf                                           ; $40A4: $3F
    cp h                                          ; $40A5: $BC
    ld e, b                                       ; $40A6: $58
    inc d                                         ; $40A7: $14
    inc c                                         ; $40A8: $0C
    dec [hl]                                      ; $40A9: $35
    ld b, l                                       ; $40AA: $45
    db $ED                                        ; $40AB: $ED
    rst RST_38                                    ; $40AC: $FF
    ld a, a                                       ; $40AD: $7F
    ld bc, $A004                                  ; $40AE: $01 $04 $A0
    ld [$08F8], sp                                ; $40B1: $08 $F8 $08
    or h                                          ; $40B4: $B4
    ld [$C8FC], sp                                ; $40B5: $08 $FC $C8
    ld [$05D5], sp                                ; $40B8: $08 $D5 $05
    db $ED                                        ; $40BB: $ED
    call z, $DB7B                                 ; $40BC: $CC $7B $DB

jr_033_40BF:
    ld e, a                                       ; $40BF: $5F
    ld [hl], l                                    ; $40C0: $75
    dec c                                         ; $40C1: $0D
    ld [hl], a                                    ; $40C2: $77
    inc h                                         ; $40C3: $24
    ld a, $FF                                     ; $40C4: $3E $FF
    cp $A4                                        ; $40C6: $FE $A4
    cp $08                                        ; $40C8: $FE $08
    cp b                                          ; $40CA: $B8
    xor $DF                                       ; $40CB: $EE $DF
    db $DD                                        ; $40CD: $DD
    dec e                                         ; $40CE: $1D
    push hl                                       ; $40CF: $E5
    ret c                                         ; $40D0: $D8

    rst RST_38                                    ; $40D1: $FF
    xor $00                                       ; $40D2: $EE $00
    ld c, h                                       ; $40D4: $4C
    ld e, l                                       ; $40D5: $5D
    rst RST_38                                    ; $40D6: $FF
    dec c                                         ; $40D7: $0D
    ld bc, $F8F0                                  ; $40D8: $01 $F0 $F8
    inc b                                         ; $40DB: $04
    xor b                                         ; $40DC: $A8
    ld [$04F7], sp                                ; $40DD: $08 $F7 $04
    ld a, $6E                                     ; $40E0: $3E $6E
    dec a                                         ; $40E2: $3D
    db $ED                                        ; $40E3: $ED
    dec c                                         ; $40E4: $0D
    ld e, $04                                     ; $40E5: $1E $04
    dec sp                                        ; $40E7: $3B
    inc [hl]                                      ; $40E8: $34
    nop                                           ; $40E9: $00
    rrca                                          ; $40EA: $0F
    nop                                           ; $40EB: $00
    ld [hl], a                                    ; $40EC: $77
    inc bc                                        ; $40ED: $03
    rst RST_38                                    ; $40EE: $FF
    dec c                                         ; $40EF: $0D
    ld bc, $0480                                  ; $40F0: $01 $80 $04
    xor h                                         ; $40F3: $AC
    ld [$607A], sp                                ; $40F4: $08 $7A $60
    ld [$E5CD], sp                                ; $40F7: $08 $CD $E5
    inc b                                         ; $40FA: $04
    ld [hl], b                                    ; $40FB: $70
    db $FD                                        ; $40FC: $FD
    db $F4                                        ; $40FD: $F4
    rst RST_38                                    ; $40FE: $FF
    inc b                                         ; $40FF: $04
    dec c                                         ; $4100: $0D
    dec b                                         ; $4101: $05
    dec l                                         ; $4102: $2D
    dec a                                         ; $4103: $3D
    rst RST_38                                    ; $4104: $FF
    rst RST_38                                    ; $4105: $FF
    and b                                         ; $4106: $A0
    rst RST_18                                    ; $4107: $DF
    inc b                                         ; $4108: $04
    xor l                                         ; $4109: $AD
    ld e, $08                                     ; $410A: $1E $08
    ret nc                                        ; $410C: $D0

    ret z                                         ; $410D: $C8

    and $F4                                       ; $410E: $E6 $F4
    cpl                                           ; $4110: $2F
    ld a, [hl]                                    ; $4111: $7E
    dec a                                         ; $4112: $3D
    dec c                                         ; $4113: $0D
    ld l, a                                       ; $4114: $6F
    inc e                                         ; $4115: $1C

jr_033_4116:
    dec l                                         ; $4116: $2D
    dec b                                         ; $4117: $05
    nop                                           ; $4118: $00
    rst RST_38                                    ; $4119: $FF
    ld b, h                                       ; $411A: $44
    rst RST_38                                    ; $411B: $FF
    rst RST_38                                    ; $411C: $FF
    and b                                         ; $411D: $A0
    inc b                                         ; $411E: $04
    or h                                          ; $411F: $B4
    xor l                                         ; $4120: $AD
    ld [$ACDD], sp                                ; $4121: $08 $DD $AC
    ld [$04EE], sp                                ; $4124: $08 $EE $04
    dec c                                         ; $4127: $0D
    inc b                                         ; $4128: $04
    ld a, h                                       ; $4129: $7C
    rst RST_30                                    ; $412A: $F7
    ld d, a                                       ; $412B: $57
    ld a, b                                       ; $412C: $78
    push af                                       ; $412D: $F5
    ret nz                                        ; $412E: $C0

    nop                                           ; $412F: $00
    add b                                         ; $4130: $80
    rst RST_38                                    ; $4131: $FF

jr_033_4132:
    rst RST_38                                    ; $4132: $FF
    inc bc                                        ; $4133: $03
    xor b                                         ; $4134: $A8
    ld bc, $0418                                  ; $4135: $01 $18 $04
    inc h                                         ; $4138: $24
    ld [$3C7A], sp                                ; $4139: $08 $7A $3C
    cp c                                          ; $413C: $B9
    add hl, hl                                    ; $413D: $29
    ld a, [hl]                                    ; $413E: $7E
    or c                                          ; $413F: $B1
    inc b                                         ; $4140: $04
    add d                                         ; $4141: $82
    adc h                                         ; $4142: $8C
    ld b, h                                       ; $4143: $44
    jr c, jr_033_4146                             ; $4144: $38 $00

jr_033_4146:
    cp $4B                                        ; $4146: $FE $4B
    inc bc                                        ; $4148: $03
    inc bc                                        ; $4149: $03
    inc bc                                        ; $414A: $03
    nop                                           ; $414B: $00
    ld l, b                                       ; $414C: $68
    inc b                                         ; $414D: $04
    ld b, d                                       ; $414E: $42
    or h                                          ; $414F: $B4
    ld [$6C9D], sp                                ; $4150: $08 $9D $6C
    dec b                                         ; $4153: $05
    adc l                                         ; $4154: $8D
    inc b                                         ; $4155: $04
    ld b, c                                       ; $4156: $41
    ld a, $3F                                     ; $4157: $3E $3F
    ld [hl+], a                                   ; $4159: $22
    inc e                                         ; $415A: $1C
    nop                                           ; $415B: $00
    ld c, e                                       ; $415C: $4B
    inc bc                                        ; $415D: $03
    inc bc                                        ; $415E: $03
    inc bc                                        ; $415F: $03
    nop                                           ; $4160: $00
    ld a, [$5545]                                 ; $4161: $FA $45 $55
    ld h, l                                       ; $4164: $65
    ld [hl], l                                    ; $4165: $75
    add l                                         ; $4166: $85
    ld e, [hl]                                    ; $4167: $5E
    sbc h                                         ; $4168: $9C
    inc h                                         ; $4169: $24
    ld a, [hl]                                    ; $416A: $7E
    jr jr_033_416D                                ; $416B: $18 $00

jr_033_416D:
    ld c, e                                       ; $416D: $4B
    inc bc                                        ; $416E: $03
    inc bc                                        ; $416F: $03
    inc bc                                        ; $4170: $03
    nop                                           ; $4171: $00
    jr c, jr_033_4116                             ; $4172: $38 $A2

    inc b                                         ; $4174: $04
    ld b, h                                       ; $4175: $44
    ld [$7C82], sp                                ; $4176: $08 $82 $7C
    or c                                          ; $4179: $B1
    ld [hl], h                                    ; $417A: $74
    cp c                                          ; $417B: $B9

Jump_033_417C:
    cp [hl]                                       ; $417C: $BE
    ld b, $42                                     ; $417D: $06 $42
    add h                                         ; $417F: $84
    nop                                           ; $4180: $00
    ld c, e                                       ; $4181: $4B
    inc bc                                        ; $4182: $03
    nop                                           ; $4183: $00
    inc bc                                        ; $4184: $03
    pop bc                                        ; $4185: $C1
    push hl                                       ; $4186: $E5
    ld [$1E21], sp                                ; $4187: $08 $21 $1E
    ld c, e                                       ; $418A: $4B
    dec a                                         ; $418B: $3D
    ld b, e                                       ; $418C: $43
    inc b                                         ; $418D: $04
    ld b, b                                       ; $418E: $40
    add c                                         ; $418F: $81
    ld e, h                                       ; $4190: $5C
    and b                                         ; $4191: $A0
    ld a, a                                       ; $4192: $7F
    adc h                                         ; $4193: $8C
    ld [hl], e                                    ; $4194: $73
    sbc [hl]                                      ; $4195: $9E
    ld l, l                                       ; $4196: $6D
    add b                                         ; $4197: $80
    db $FC                                        ; $4198: $FC
    dec l                                         ; $4199: $2D
    inc l                                         ; $419A: $2C
    inc de                                        ; $419B: $13
    ld de, $080F                                  ; $419C: $11 $0F $08
    rlca                                          ; $419F: $07
    jp c, Jump_033_6430                           ; $41A0: $DA $30 $64

    rst RST_38                                    ; $41A3: $FF
    inc b                                         ; $41A4: $04
    dec c                                         ; $41A5: $0D
    ret nz                                        ; $41A6: $C0

    inc b                                         ; $41A7: $04
    jr nz, jr_033_4132                            ; $41A8: $20 $88

    ld [$6090], sp                                ; $41AA: $08 $90 $60
    ret nc                                        ; $41AD: $D0

    ld l, b                                       ; $41AE: $68
    call z, $8AB0                                 ; $41AF: $CC $B0 $8A
    adc c                                         ; $41B2: $89
    db $F4                                        ; $41B3: $F4
    ld [bc], a                                    ; $41B4: $02
    db $FC                                        ; $41B5: $FC
    ld [hl-], a                                   ; $41B6: $32
    jr jr_033_4233                                ; $41B7: $18 $7A

    or h                                          ; $41B9: $B4
    dec b                                         ; $41BA: $05
    inc bc                                        ; $41BB: $03
    inc [hl]                                      ; $41BC: $34
    ret z                                         ; $41BD: $C8

    inc h                                         ; $41BE: $24
    ld hl, sp+$18                                 ; $41BF: $F8 $18
    ldh [$FF30], a                                ; $41C1: $E0 $30
    ld h, h                                       ; $41C3: $64
    ld a, a                                       ; $41C4: $7F
    cp $04                                        ; $41C5: $FE $04
    dec c                                         ; $41C7: $0D
    sbc b                                         ; $41C8: $98
    inc b                                         ; $41C9: $04
    and l                                         ; $41CA: $A5
    dec b                                         ; $41CB: $05
    cp h                                          ; $41CC: $BC
    nop                                           ; $41CD: $00
    ld c, $2B                                     ; $41CE: $0E $2B
    dec e                                         ; $41D0: $1D
    ld b, e                                       ; $41D1: $43
    dec a                                         ; $41D2: $3D
    ld b, c                                       ; $41D3: $41
    ld a, $86                                     ; $41D4: $3E $86
    inc c                                         ; $41D6: $0C
    ld a, c                                       ; $41D7: $79
    xor a                                         ; $41D8: $AF
    halt                                          ; $41D9: $76
    adc a                                         ; $41DA: $8F
    inc b                                         ; $41DB: $04
    dec d                                         ; $41DC: $15
    ld c, b                                       ; $41DD: $48
    ccf                                           ; $41DE: $3F
    or l                                          ; $41DF: $B5
    call nc, $FF1F                                ; $41E0: $D4 $1F $FF
    dec c                                         ; $41E3: $0D
    add b                                         ; $41E4: $80
    inc b                                         ; $41E5: $04
    ld [hl], b                                    ; $41E6: $70
    ld [$7C81], sp                                ; $41E7: $08 $81 $7C
    ldh a, [$FF84]                                ; $41EA: $F0 $84
    ld a, b                                       ; $41EC: $78
    jp nc, $C2BC                                  ; $41ED: $D2 $BC $C2

    inc b                                         ; $41F0: $04
    dec [hl]                                      ; $41F1: $35
    or d                                          ; $41F2: $B2
    ld c, h                                       ; $41F3: $4C
    rst RST_30                                    ; $41F4: $F7
    push af                                       ; $41F5: $F5
    inc b                                         ; $41F6: $04
    db $F4                                        ; $41F7: $F4
    sbc b                                         ; $41F8: $98
    db $F4                                        ; $41F9: $F4
    ld [hl], l                                    ; $41FA: $75
    ld h, b                                       ; $41FB: $60
    ld d, h                                       ; $41FC: $54
    rst RST_38                                    ; $41FD: $FF
    dec c                                         ; $41FE: $0D
    ld bc, $0604                                  ; $41FF: $01 $04 $06
    ld [$1840], sp                                ; $4202: $08 $40 $18
    db $FC                                        ; $4205: $FC
    inc l                                         ; $4206: $2C
    inc de                                        ; $4207: $13
    ld e, [hl]                                    ; $4208: $5E
    dec l                                         ; $4209: $2D
    sbc [hl]                                      ; $420A: $9E
    ld l, l                                       ; $420B: $6D
    ld [hl], $8C                                  ; $420C: $36 $8C
    ld [hl], e                                    ; $420E: $73
    ld d, b                                       ; $420F: $50
    ret nz                                        ; $4210: $C0

    and b                                         ; $4211: $A0
    inc b                                         ; $4212: $04
    dec c                                         ; $4213: $0D
    ld b, b                                       ; $4214: $40
    cp l                                          ; $4215: $BD
    db $F4                                        ; $4216: $F4
    ld [hl+], a                                   ; $4217: $22
    db $F4                                        ; $4218: $F4
    ld c, l                                       ; $4219: $4D
    rst RST_38                                    ; $421A: $FF
    dec c                                         ; $421B: $0D
    ret nz                                        ; $421C: $C0

    inc b                                         ; $421D: $04
    ld d, h                                       ; $421E: $54
    jr nz, jr_033_4229                            ; $421F: $20 $08

    ld d, b                                       ; $4221: $50
    or h                                          ; $4222: $B4
    db $10                                        ; $4223: $10
    inc b                                         ; $4224: $04
    ld [$69F0], sp                                ; $4225: $08 $F0 $69
    inc d                                         ; $4228: $14

jr_033_4229:
    call nc, Call_033_64DD                        ; $4229: $D4 $DD $64
    ldh [$FFF4], a                                ; $422C: $E0 $F4

jr_033_422E:
    ld l, b                                       ; $422E: $68
    dec b                                         ; $422F: $05
    xor a                                         ; $4230: $AF
    nop                                           ; $4231: $00
    sub b                                         ; $4232: $90

jr_033_4233:
    dec [hl]                                      ; $4233: $35
    jr nc, jr_033_428A                            ; $4234: $30 $54

    jr nc, jr_033_422E                            ; $4236: $30 $F6

    dec c                                         ; $4238: $0D
    ld hl, sp-$68                                 ; $4239: $F8 $98
    inc b                                         ; $423B: $04
    inc l                                         ; $423C: $2C
    ld [$1605], sp                                ; $423D: $08 $05 $16
    add hl, bc                                    ; $4240: $09
    cpl                                           ; $4241: $2F
    add a                                         ; $4242: $87
    ld [$364F], sp                                ; $4243: $08 $4F $36
    ld b, [hl]                                    ; $4246: $46
    add hl, sp                                    ; $4247: $39
    and h                                         ; $4248: $A4
    db $E4                                        ; $4249: $E4
    db $ED                                        ; $424A: $ED
    or a                                          ; $424B: $B7
    rlca                                          ; $424C: $07
    inc h                                         ; $424D: $24
    db $FC                                        ; $424E: $FC
    call nz, Call_000_100F                        ; $424F: $C4 $0F $10
    or $0D                                        ; $4252: $F6 $0D
    rst RST_30                                    ; $4254: $F7
    ld bc, $04E8                                  ; $4255: $01 $E8 $04
    push af                                       ; $4258: $F5
    ld c, b                                       ; $4259: $48
    cp h                                          ; $425A: $BC
    db $ED                                        ; $425B: $ED
    dec b                                         ; $425C: $05

jr_033_425D:
    add hl, bc                                    ; $425D: $09
    ld l, d                                       ; $425E: $6A
    sbc h                                         ; $425F: $9C
    ldh a, [c]                                    ; $4260: $F2
    ld l, h                                       ; $4261: $6C
    dec b                                         ; $4262: $05
    ld h, h                                       ; $4263: $64
    sbc b                                         ; $4264: $98
    dec h                                         ; $4265: $25
    ld l, e                                       ; $4266: $6B
    jr c, jr_033_425D                             ; $4267: $38 $F4

    adc h                                         ; $4269: $8C
    add b                                         ; $426A: $80
    push af                                       ; $426B: $F5

Jump_033_426C:
    cp $04                                        ; $426C: $FE $04
    dec c                                         ; $426E: $0D
    db $EB                                        ; $426F: $EB
    ld bc, $04F0                                  ; $4270: $01 $F0 $04
    jr jr_033_427D                                ; $4273: $18 $08

    ld hl, $CDBC                                  ; $4275: $21 $BC $CD
    dec c                                         ; $4278: $0D
    ld b, e                                       ; $4279: $43

jr_033_427A:
    inc a                                         ; $427A: $3C
    ld b, a                                       ; $427B: $47
    dec sp                                        ; $427C: $3B

jr_033_427D:
    dec b                                         ; $427D: $05
    dec d                                         ; $427E: $15
    jr z, jr_033_42AD                             ; $427F: $28 $2C

    ld c, a                                       ; $4281: $4F
    jr nz, jr_033_427A                            ; $4282: $20 $F6

    inc c                                         ; $4284: $0C
    inc bc                                        ; $4285: $03
    rst RST_38                                    ; $4286: $FF
    rst RST_38                                    ; $4287: $FF
    xor b                                         ; $4288: $A8
    inc b                                         ; $4289: $04

jr_033_428A:
    db $F4                                        ; $428A: $F4
    inc a                                         ; $428B: $3C
    ld [$8C05], sp                                ; $428C: $08 $05 $8C

jr_033_428F:
    ldh [$FFD5], a                                ; $428F: $E0 $D5
    add h                                         ; $4291: $84
    ld a, b                                       ; $4292: $78
    ret c                                         ; $4293: $D8

    dec b                                         ; $4294: $05
    dec d                                         ; $4295: $15
    inc d                                         ; $4296: $14
    inc b                                         ; $4297: $04
    dec c                                         ; $4298: $0D
    ld [$30F0], sp                                ; $4299: $08 $F0 $30
    rst RST_38                                    ; $429C: $FF
    ld b, h                                       ; $429D: $44
    db $10                                        ; $429E: $10
    or $0D                                        ; $429F: $F6 $0D
    ld bc, $04A0                                  ; $42A1: $01 $A0 $04
    inc a                                         ; $42A4: $3C
    ret nc                                        ; $42A5: $D0

    ld [$073C], sp                                ; $42A6: $08 $3C $07
    dec b                                         ; $42A9: $05
    ld sp, $4B0E                                  ; $42AA: $31 $0E $4B

jr_033_42AD:
    dec a                                         ; $42AD: $3D
    rst RST_00                                    ; $42AE: $C7
    db $F4                                        ; $42AF: $F4
    inc b                                         ; $42B0: $04
    ld b, c                                       ; $42B1: $41
    ld a, $40                                     ; $42B2: $3E $40
    ret nc                                        ; $42B4: $D0

    inc c                                         ; $42B5: $0C
    inc b                                         ; $42B6: $04
    adc a                                         ; $42B7: $8F
    cp h                                          ; $42B8: $BC
    rra                                           ; $42B9: $1F
    db $10                                        ; $42BA: $10
    rrca                                          ; $42BB: $0F
    rst RST_38                                    ; $42BC: $FF
    rst RST_38                                    ; $42BD: $FF
    ldh [rDIV], a                                 ; $42BE: $E0 $04
    db $F4                                        ; $42C0: $F4
    inc l                                         ; $42C1: $2C
    ld [$CDBD], sp                                ; $42C2: $08 $BD $CD
    sub h                                         ; $42C5: $94
    db $EC                                        ; $42C6: $EC
    call nz, $BDB8                                ; $42C7: $C4 $B8 $BD
    dec b                                         ; $42CA: $05
    add h                                         ; $42CB: $84
    inc d                                         ; $42CC: $14
    rst RST_30                                    ; $42CD: $F7
    push af                                       ; $42CE: $F5
    sub h                                         ; $42CF: $94
    add b                                         ; $42D0: $80
    rst RST_38                                    ; $42D1: $FF
    ldh a, [$FF0D]                                ; $42D2: $F0 $0D
    ret c                                         ; $42D4: $D8

    inc b                                         ; $42D5: $04
    push hl                                       ; $42D6: $E5
    add hl, bc                                    ; $42D7: $09
    ld b, $12                                     ; $42D8: $06 $12
    inc c                                         ; $42DA: $0C
    ld d, b                                       ; $42DB: $50
    ld a, [de]                                    ; $42DC: $1A
    inc b                                         ; $42DD: $04
    add hl, hl                                    ; $42DE: $29
    inc d                                         ; $42DF: $14
    ld d, h                                       ; $42E0: $54
    inc hl                                        ; $42E1: $23
    adc e                                         ; $42E2: $8B
    ld [hl], b                                    ; $42E3: $70
    ld d, e                                       ; $42E4: $53
    and h                                         ; $42E5: $A4
    ld a, h                                       ; $42E6: $7C
    adc d                                         ; $42E7: $8A
    inc c                                         ; $42E8: $0C
    ld a, l                                       ; $42E9: $7D
    ld [bc], a                                    ; $42EA: $02
    push af                                       ; $42EB: $F5
    ld d, l                                       ; $42EC: $55
    cp d                                          ; $42ED: $BA
    push af                                       ; $42EE: $F5
    rst RST_38                                    ; $42EF: $FF
    inc b                                         ; $42F0: $04
    dec c                                         ; $42F1: $0D
    ld bc, $04B0                                  ; $42F2: $01 $B0 $04
    jr z, jr_033_428F                             ; $42F5: $28 $98

    jr c, jr_033_433D                             ; $42F7: $38 $44

    jr c, jr_033_4367                             ; $42F9: $38 $6C

    inc b                                         ; $42FB: $04
    ld [hl+], a                                   ; $42FC: $22
    inc e                                         ; $42FD: $1C
    sbc h                                         ; $42FE: $9C
    push de                                       ; $42FF: $D5
    ld h, $1D                                     ; $4300: $26 $1D
    add h                                         ; $4302: $84
    add h                                         ; $4303: $84
    adc b                                         ; $4304: $88
    add h                                         ; $4305: $84
    ldh a, [rNR50]                                ; $4306: $F0 $24
    push de                                       ; $4308: $D5
    ld hl, sp-$0A                                 ; $4309: $F8 $F6
    cp $0E                                        ; $430B: $FE $0E
    inc bc                                        ; $430D: $03
    inc b                                         ; $430E: $04
    inc b                                         ; $430F: $04
    ld [$0DFE], sp                                ; $4310: $08 $FE $0D
    or h                                          ; $4313: $B4
    inc b                                         ; $4314: $04
    ld [hl], b                                    ; $4315: $70
    ld [$0CFC], sp                                ; $4316: $08 $FC $0C
    ld d, d                                       ; $4319: $52
    ld [hl], e                                    ; $431A: $73
    ld hl, $7C0D                                  ; $431B: $21 $0D $7C
    inc e                                         ; $431E: $1C
    xor b                                         ; $431F: $A8
    ld b, b                                       ; $4320: $40
    or h                                          ; $4321: $B4
    inc d                                         ; $4322: $14
    ld a, [hl]                                    ; $4323: $7E
    ld a, [bc]                                    ; $4324: $0A
    ld d, b                                       ; $4325: $50
    nop                                           ; $4326: $00
    xor $FF                                       ; $4327: $EE $FF
    ld bc, $20A5                                  ; $4329: $01 $A5 $20
    xor a                                         ; $432C: $AF
    inc b                                         ; $432D: $04
    ld d, b                                       ; $432E: $50
    ld [$4E24], sp                                ; $432F: $08 $24 $4E
    db $E4                                        ; $4332: $E4
    sbc a                                         ; $4333: $9F
    ld [$485F], sp                                ; $4334: $08 $5F $48
    inc c                                         ; $4337: $0C
    and b                                         ; $4338: $A0
    add h                                         ; $4339: $84
    nop                                           ; $433A: $00
    ld e, [hl]                                    ; $433B: $5E
    rst RST_38                                    ; $433C: $FF

jr_033_433D:
    dec c                                         ; $433D: $0D
    push af                                       ; $433E: $F5
    inc bc                                        ; $433F: $03
    inc bc                                        ; $4340: $03
    inc bc                                        ; $4341: $03
    inc bc                                        ; $4342: $03
    ld bc, $0304                                  ; $4343: $01 $04 $03
    ld [$076A], sp                                ; $4346: $08 $6A $07
    ld [$0F05], sp                                ; $4349: $08 $05 $0F
    ld [$081F], sp                                ; $434C: $08 $1F $08
    ccf                                           ; $434F: $3F
    sbc a                                         ; $4350: $9F
    ld [$1D3B], sp                                ; $4351: $08 $3B $1D
    ld b, l                                       ; $4354: $45
    jr nz, jr_033_435B                            ; $4355: $20 $04

    jr jr_033_4361                                ; $4357: $18 $08

    and c                                         ; $4359: $A1
    dec h                                         ; $435A: $25

jr_033_435B:
    ld a, a                                       ; $435B: $7F
    ld [$3C6F], sp                                ; $435C: $08 $6F $3C
    rst RST_38                                    ; $435F: $FF
    ld a, e                                       ; $4360: $7B

jr_033_4361:
    call nz, Call_033_7753                        ; $4361: $C4 $53 $77
    call nz, $05F7                                ; $4364: $C4 $F7 $05

jr_033_4367:
    ld a, h                                       ; $4367: $7C
    cp e                                          ; $4368: $BB
    inc h                                         ; $4369: $24
    dec l                                         ; $436A: $2D
    cp l                                          ; $436B: $BD
    ld [bc], a                                    ; $436C: $02
    rst RST_18                                    ; $436D: $DF
    inc b                                         ; $436E: $04
    inc a                                         ; $436F: $3C
    inc b                                         ; $4370: $04
    ld a, l                                       ; $4371: $7D
    ldh a, [rDIV]                                 ; $4372: $F0 $04
    db $DB                                        ; $4374: $DB
    inc d                                         ; $4375: $14
    ld [$21BF], sp                                ; $4376: $08 $BF $21
    nop                                           ; $4379: $00
    ei                                            ; $437A: $FB
    add h                                         ; $437B: $84
    ld b, c                                       ; $437C: $41
    and l                                         ; $437D: $A5
    sbc b                                         ; $437E: $98
    rst RST_28                                    ; $437F: $EF
    dec b                                         ; $4380: $05
    sbc l                                         ; $4381: $9D
    xor $20                                       ; $4382: $EE $20
    call c, $EB24                                 ; $4384: $DC $24 $EB
    ld [$3C6D], sp                                ; $4387: $08 $6D $3C
    db $FD                                        ; $438A: $FD
    ld [$55F9], sp                                ; $438B: $08 $F9 $55
    ld a, l                                       ; $438E: $7D
    sub $03                                       ; $438F: $D6 $03
    ld bc, $0480                                  ; $4391: $01 $80 $04
    ret nz                                        ; $4394: $C0

    ld [$E005], sp                                ; $4395: $08 $05 $E0
    push af                                       ; $4398: $F5
    ld [$08A8], sp                                ; $4399: $08 $A8 $08
    rlca                                          ; $439C: $07
    ld a, b                                       ; $439D: $78
    ld [$04F8], sp                                ; $439E: $08 $F8 $04
    ld d, a                                       ; $43A1: $57
    ld a, h                                       ; $43A2: $7C
    ld [$04EC], sp                                ; $43A3: $08 $EC $04
    db $FC                                        ; $43A6: $FC
    inc b                                         ; $43A7: $04
    ld l, a                                       ; $43A8: $6F
    inc bc                                        ; $43A9: $03
    xor l                                         ; $43AA: $AD
    ld bc, $0401                                  ; $43AB: $01 $01 $04
    inc bc                                        ; $43AE: $03
    ld [$0705], sp                                ; $43AF: $08 $05 $07
    ld [$0F5B], sp                                ; $43B2: $08 $5B $0F
    ld [$081F], sp                                ; $43B5: $08 $1F $08
    dec b                                         ; $43B8: $05
    ccf                                           ; $43B9: $3F
    ld [$0F05], sp                                ; $43BA: $08 $05 $0F
    ld [hl], a                                    ; $43BD: $77
    dec sp                                        ; $43BE: $3B
    ld a, a                                       ; $43BF: $7F
    inc sp                                        ; $43C0: $33
    ld h, a                                       ; $43C1: $67
    jr nc, @+$06                                  ; $43C2: $30 $04

    inc e                                         ; $43C4: $1C
    cp [hl]                                       ; $43C5: $BE
    ld [$08FF], sp                                ; $43C6: $08 $FF $08
    inc b                                         ; $43C9: $04
    ld bc, $04B8                                  ; $43CA: $01 $B8 $04
    ei                                            ; $43CD: $FB
    dec a                                         ; $43CE: $3D
    cp $F7                                        ; $43CF: $FE $F7
    db $10                                        ; $43D1: $10
    rlca                                          ; $43D2: $07
    inc e                                         ; $43D3: $1C
    dec l                                         ; $43D4: $2D
    rst RST_28                                    ; $43D5: $EF
    inc d                                         ; $43D6: $14
    cp a                                          ; $43D7: $BF
    inc c                                         ; $43D8: $0C
    rst RST_20                                    ; $43D9: $E7
    ld c, c                                       ; $43DA: $49
    ld [hl], l                                    ; $43DB: $75
    jr nz, @+$06                                  ; $43DC: $20 $04

    ld e, [hl]                                    ; $43DE: $5E
    inc bc                                        ; $43DF: $03
    jp hl                                         ; $43E0: $E9


    ld bc, $74C8                                  ; $43E1: $01 $C8 $74
    rst RST_18                                    ; $43E4: $DF
    ret nc                                        ; $43E5: $D0

    xor $5F                                       ; $43E6: $EE $5F
    ld h, b                                       ; $43E8: $60
    rst RST_38                                    ; $43E9: $FF
    inc c                                         ; $43EA: $0C
    inc b                                         ; $43EB: $04
    jr nz, jr_033_440A                            ; $43EC: $20 $1C

    inc h                                         ; $43EE: $24
    ld [$0834], sp                                ; $43EF: $08 $34 $08
    ld [$FF4B], a                                 ; $43F2: $EA $4B $FF
    ld bc, $04C0                                  ; $43F5: $01 $C0 $04
    ldh [$FF08], a                                ; $43F8: $E0 $08
    ldh a, [$FFCF]                                ; $43FA: $F0 $CF
    ld [$F805], sp                                ; $43FC: $08 $05 $F8
    ld [hl], b                                    ; $43FF: $70
    ld b, $18                                     ; $4400: $06 $18
    cp b                                          ; $4402: $B8
    ld [$06BF], sp                                ; $4403: $08 $BF $06
    ld a, b                                       ; $4406: $78
    ld b, $1E                                     ; $4407: $06 $1E
    ld [hl], a                                    ; $4409: $77

jr_033_440A:
    inc bc                                        ; $440A: $03
    inc bc                                        ; $440B: $03
    inc bc                                        ; $440C: $03
    ld [$0303], a                                 ; $440D: $EA $03 $03
    ld bc, $0401                                  ; $4410: $01 $01 $04
    inc bc                                        ; $4413: $03
    ld [$FD07], sp                                ; $4414: $08 $07 $FD
    ld [$0327], sp                                ; $4417: $08 $27 $03
    inc bc                                        ; $441A: $03
    inc [hl]                                      ; $441B: $34
    inc b                                         ; $441C: $04
    rra                                           ; $441D: $1F
    ld [$3F50], sp                                ; $441E: $08 $50 $3F
    ld [$087F], sp                                ; $4421: $08 $7F $08
    ld l, a                                       ; $4424: $6F
    inc a                                         ; $4425: $3C
    rst RST_38                                    ; $4426: $FF
    ld a, e                                       ; $4427: $7B
    add hl, hl                                    ; $4428: $29
    cp $77                                        ; $4429: $FE $77
    db $EC                                        ; $442B: $EC
    rst RST_30                                    ; $442C: $F7
    dec b                                         ; $442D: $05
    ld a, h                                       ; $442E: $7C
    cp e                                          ; $442F: $BB
    ld e, a                                       ; $4430: $5F
    db $DD                                        ; $4431: $DD
    inc bc                                        ; $4432: $03
    inc bc                                        ; $4433: $03
    ldh a, [rDIV]                                 ; $4434: $F0 $04
    ld d, h                                       ; $4436: $54
    ld [$08BF], sp                                ; $4437: $08 $BF $08
    jp c, Jump_000_006C                           ; $443A: $DA $6C $00

    ei                                            ; $443D: $FB
    add h                                         ; $443E: $84
    ld [$98DF], sp                                ; $443F: $08 $DF $98
    rst RST_28                                    ; $4442: $EF
    sub a                                         ; $4443: $97
    dec b                                         ; $4444: $05
    sbc l                                         ; $4445: $9D
    xor $20                                       ; $4446: $EE $20
    call c, $035F                                 ; $4448: $DC $5F $03
    inc bc                                        ; $444B: $03
    sub $03                                       ; $444C: $D6 $03
    ld bc, $0480                                  ; $444E: $01 $80 $04
    ret nz                                        ; $4451: $C0

    ld [$E005], sp                                ; $4452: $08 $05 $E0
    cp $08                                        ; $4455: $FE $08
    xor b                                         ; $4457: $A8
    ld [$4707], sp                                ; $4458: $08 $07 $47
    inc bc                                        ; $445B: $03
    ld bc, $AF03                                  ; $445C: $01 $03 $AF
    inc b                                         ; $445F: $04
    rlca                                          ; $4460: $07
    ld [$080F], sp                                ; $4461: $08 $0F $08
    call nc, $CC08                                ; $4464: $D4 $08 $CC
    sub [hl]                                      ; $4467: $96
    ld [$1D3B], sp                                ; $4468: $08 $3B $1D
    inc c                                         ; $446B: $0C
    add hl, de                                    ; $446C: $19
    ld d, $25                                     ; $446D: $16 $25
    ld bc, $10F8                                  ; $446F: $01 $F8 $10
    ld c, l                                       ; $4472: $4D
    inc b                                         ; $4473: $04
    inc d                                         ; $4474: $14
    ld [$3C7F], sp                                ; $4475: $08 $7F $3C
    rst RST_28                                    ; $4478: $EF
    db $10                                        ; $4479: $10
    ld a, e                                       ; $447A: $7B
    db $FC                                        ; $447B: $FC
    ld [hl], a                                    ; $447C: $77
    inc b                                         ; $447D: $04
    rst RST_30                                    ; $447E: $F7
    cp a                                          ; $447F: $BF
    ret c                                         ; $4480: $D8

    rst RST_38                                    ; $4481: $FF
    ld l, d                                       ; $4482: $6A
    sbc a                                         ; $4483: $9F
    inc b                                         ; $4484: $04
    nop                                           ; $4485: $00
    cp $04                                        ; $4486: $FE $04
    rst RST_18                                    ; $4488: $DF
    ld de, $BFF3                                  ; $4489: $11 $F3 $BF
    nop                                           ; $448C: $00
    db $ED                                        ; $448D: $ED
    dec b                                         ; $448E: $05
    dec d                                         ; $448F: $15
    inc b                                         ; $4490: $04
    ld [hl], h                                    ; $4491: $74
    ld d, h                                       ; $4492: $54
    inc b                                         ; $4493: $04
    rst RST_30                                    ; $4494: $F7
    inc c                                         ; $4495: $0C
    ld [$8804], sp                                ; $4496: $08 $04 $88
    ei                                            ; $4499: $FB
    ld c, b                                       ; $449A: $48
    and h                                         ; $449B: $A4
    adc b                                         ; $449C: $88
    dec a                                         ; $449D: $3D
    ld e, a                                       ; $449E: $5F
    db $EC                                        ; $449F: $EC
    inc e                                         ; $44A0: $1C
    db $10                                        ; $44A1: $10
    ld h, [hl]                                    ; $44A2: $66
    nop                                           ; $44A3: $00
    or $30                                        ; $44A4: $F6 $30
    rst RST_38                                    ; $44A6: $FF
    ld e, [hl]                                    ; $44A7: $5E
    nop                                           ; $44A8: $00
    or b                                          ; $44A9: $B0
    inc b                                         ; $44AA: $04
    call nc, Call_033_7D2E                        ; $44AB: $D4 $2E $7D
    inc bc                                        ; $44AE: $03
    ld d, l                                       ; $44AF: $55
    add b                                         ; $44B0: $80
    inc b                                         ; $44B1: $04
    ret nz                                        ; $44B2: $C0

    ld [$08E0], sp                                ; $44B3: $08 $E0 $08
    ldh a, [$FF08]                                ; $44B6: $F0 $08
    ld e, a                                       ; $44B8: $5F
    ld [hl], b                                    ; $44B9: $70
    inc b                                         ; $44BA: $04
    ld hl, sp+$10                                 ; $44BB: $F8 $10
    or b                                          ; $44BD: $B0
    ld [$0498], sp                                ; $44BE: $08 $98 $04
    sub a                                         ; $44C1: $97
    dec c                                         ; $44C2: $0D
    ld a, h                                       ; $44C3: $7C
    cp b                                          ; $44C4: $B8
    inc c                                         ; $44C5: $0C
    jr nc, @+$06                                  ; $44C6: $30 $04

    inc [hl]                                      ; $44C8: $34
    db $ED                                        ; $44C9: $ED
    db $ED                                        ; $44CA: $ED
    jr nz, jr_033_44D1                            ; $44CB: $20 $04

    sub h                                         ; $44CD: $94
    add hl, sp                                    ; $44CE: $39
    inc b                                         ; $44CF: $04
    db $F4                                        ; $44D0: $F4

jr_033_44D1:
    ld a, e                                       ; $44D1: $7B
    inc b                                         ; $44D2: $04
    push af                                       ; $44D3: $F5
    nop                                           ; $44D4: $00
    db $E4                                        ; $44D5: $E4
    dec b                                         ; $44D6: $05
    nop                                           ; $44D7: $00
    rlca                                          ; $44D8: $07
    nop                                           ; $44D9: $00
    inc bc                                        ; $44DA: $03
    nop                                           ; $44DB: $00
    cp $BB                                        ; $44DC: $FE $BB
    inc bc                                        ; $44DE: $03
    nop                                           ; $44DF: $00
    inc a                                         ; $44E0: $3C
    ld h, l                                       ; $44E1: $65
    ld b, $15                                     ; $44E2: $06 $15
    rst RST_38                                    ; $44E4: $FF
    ld e, a                                       ; $44E5: $5F
    di                                            ; $44E6: $F3
    nop                                           ; $44E7: $00
    db $ED                                        ; $44E8: $ED
    dec b                                         ; $44E9: $05
    dec d                                         ; $44EA: $15
    inc l                                         ; $44EB: $2C
    ld [$7F03], sp                                ; $44EC: $08 $03 $7F
    ei                                            ; $44EF: $FB
    add hl, bc                                    ; $44F0: $09
    xor [hl]                                      ; $44F1: $AE
    nop                                           ; $44F2: $00
    ld a, [hl]                                    ; $44F3: $7E
    inc e                                         ; $44F4: $1C
    rlca                                          ; $44F5: $07
    rlca                                          ; $44F6: $07
    or [hl]                                       ; $44F7: $B6
    nop                                           ; $44F8: $00
    rst RST_18                                    ; $44F9: $DF
    inc b                                         ; $44FA: $04
    ld l, l                                       ; $44FB: $6D
    rst RST_30                                    ; $44FC: $F7
    ld h, c                                       ; $44FD: $61
    add l                                         ; $44FE: $85
    cp a                                          ; $44FF: $BF
    ld l, e                                       ; $4500: $6B
    cp $68                                        ; $4501: $FE $68
    adc d                                         ; $4503: $8A
    db $FC                                        ; $4504: $FC
    nop                                           ; $4505: $00
    ldh [rP1], a                                  ; $4506: $E0 $00
    ld a, a                                       ; $4508: $7F

jr_033_4509:
    ret z                                         ; $4509: $C8

    rlca                                          ; $450A: $07
    ld b, $7C                                     ; $450B: $06 $7C
    cp b                                          ; $450D: $B8
    inc a                                         ; $450E: $3C
    jr c, jr_033_4509                             ; $450F: $38 $F8

    ldh a, [$FFFA]                                ; $4511: $F0 $FA
    dec b                                         ; $4513: $05
    nop                                           ; $4514: $00
    ld d, b                                       ; $4515: $50
    dec b                                         ; $4516: $05
    nop                                           ; $4517: $00
    ret nz                                        ; $4518: $C0

    nop                                           ; $4519: $00
    add b                                         ; $451A: $80
    rst RST_38                                    ; $451B: $FF
    nop                                           ; $451C: $00
    ld l, [hl]                                    ; $451D: $6E
    inc bc                                        ; $451E: $03
    ld b, h                                       ; $451F: $44
    inc b                                         ; $4520: $04
    ld e, h                                       ; $4521: $5C
    ld b, $15                                     ; $4522: $06 $15
    db $ED                                        ; $4524: $ED
    call nc, Call_000_00CC                        ; $4525: $D4 $CC $00
    rra                                           ; $4528: $1F
    dec b                                         ; $4529: $05
    nop                                           ; $452A: $00
    rrca                                          ; $452B: $0F
    nop                                           ; $452C: $00
    ld e, a                                       ; $452D: $5F
    rlca                                          ; $452E: $07
    nop                                           ; $452F: $00
    ld bc, $6300                                  ; $4530: $01 $00 $63
    inc bc                                        ; $4533: $03
    ld [bc], a                                    ; $4534: $02
    ld c, h                                       ; $4535: $4C
    ld [$0665], a                                 ; $4536: $EA $65 $06
    dec d                                         ; $4539: $15
    rst RST_38                                    ; $453A: $FF
    ld bc, $00E7                                  ; $453B: $01 $E7 $00
    db $DB                                        ; $453E: $DB
    db $FD                                        ; $453F: $FD
    dec b                                         ; $4540: $05
    dec d                                         ; $4541: $15
    ld h, $01                                     ; $4542: $26 $01
    or l                                          ; $4544: $B5
    and l                                         ; $4545: $A5
    inc bc                                        ; $4546: $03
    nop                                           ; $4547: $00
    ld sp, hl                                     ; $4548: $F9
    ld a, [hl]                                    ; $4549: $7E
    inc h                                         ; $454A: $24
    rlca                                          ; $454B: $07
    rlca                                          ; $454C: $07
    ld [bc], a                                    ; $454D: $02
    rst RST_28                                    ; $454E: $EF
    rst RST_30                                    ; $454F: $F7
    ld [hl], a                                    ; $4550: $77
    pop de                                        ; $4551: $D1
    ld bc, $BFBC                                  ; $4552: $01 $BC $BF
    ld [$FE3E], sp                                ; $4555: $08 $3E $FE
    db $FC                                        ; $4558: $FC
    nop                                           ; $4559: $00
    ld a, b                                       ; $455A: $78
    ldh a, [rP1]                                  ; $455B: $F0 $00
    ld a, a                                       ; $455D: $7F
    rlca                                          ; $455E: $07
    ld b, $B8                                     ; $455F: $06 $B8
    ret nc                                        ; $4561: $D0

    ld hl, sp+$5A                                 ; $4562: $F8 $5A
    sub b                                         ; $4564: $90
    inc a                                         ; $4565: $3C
    ldh [rTIMA], a                                ; $4566: $E0 $05
    nop                                           ; $4568: $00
    ret nz                                        ; $4569: $C0

    nop                                           ; $456A: $00
    add b                                         ; $456B: $80
    rst RST_38                                    ; $456C: $FF
    nop                                           ; $456D: $00
    ld e, [hl]                                    ; $456E: $5E
    inc bc                                        ; $456F: $03
    inc bc                                        ; $4570: $03
    ld d, h                                       ; $4571: $54
    inc b                                         ; $4572: $04
    sbc h                                         ; $4573: $9C
    ld b, $8A                                     ; $4574: $06 $8A
    dec d                                         ; $4576: $15
    rlca                                          ; $4577: $07
    inc bc                                        ; $4578: $03
    rrca                                          ; $4579: $0F
    ld [$081F], sp                                ; $457A: $08 $1F $08
    ccf                                           ; $457D: $3F
    sub [hl]                                      ; $457E: $96
    ld [$1D3B], sp                                ; $457F: $08 $3B $1D
    db $F4                                        ; $4582: $F4
    add hl, sp                                    ; $4583: $39
    inc b                                         ; $4584: $04
    jr jr_033_4602                                ; $4585: $18 $7B

    rst RST_38                                    ; $4587: $FF
    inc b                                         ; $4588: $04
    dec h                                         ; $4589: $25
    dec b                                         ; $458A: $05
    nop                                           ; $458B: $00
    ld b, h                                       ; $458C: $44
    ld d, l                                       ; $458D: $55
    inc d                                         ; $458E: $14
    ld h, h                                       ; $458F: $64
    and $34                                       ; $4590: $E6 $34
    ld b, $15                                     ; $4592: $06 $15
    rst RST_38                                    ; $4594: $FF
    inc a                                         ; $4595: $3C
    inc b                                         ; $4596: $04
    ld [bc], a                                    ; $4597: $02
    rst RST_18                                    ; $4598: $DF
    xor e                                         ; $4599: $AB
    inc b                                         ; $459A: $04
    cp $11                                        ; $459B: $FE $11
    di                                            ; $459D: $F3
    nop                                           ; $459E: $00
    db $ED                                        ; $459F: $ED
    dec b                                         ; $45A0: $05
    dec d                                         ; $45A1: $15
    rst RST_28                                    ; $45A2: $EF
    ld d, h                                       ; $45A3: $54
    ld b, e                                       ; $45A4: $43
    nop                                           ; $45A5: $00
    ei                                            ; $45A6: $FB
    add hl, bc                                    ; $45A7: $09
    ld [hl], b                                    ; $45A8: $70
    inc b                                         ; $45A9: $04
    ld [hl], l                                    ; $45AA: $75
    push af                                       ; $45AB: $F5
    dec b                                         ; $45AC: $05
    inc d                                         ; $45AD: $14
    ld l, l                                       ; $45AE: $6D
    inc l                                         ; $45AF: $2C
    db $FD                                        ; $45B0: $FD
    ld [$4FF9], sp                                ; $45B1: $08 $F9 $4F
    db $DB                                        ; $45B4: $DB
    dec h                                         ; $45B5: $25
    ld l, l                                       ; $45B6: $6D
    rst RST_30                                    ; $45B7: $F7
    ld h, c                                       ; $45B8: $61
    add l                                         ; $45B9: $85
    cp a                                          ; $45BA: $BF
    or h                                          ; $45BB: $B4
    ld l, l                                       ; $45BC: $6D

jr_033_45BD:
    push bc                                       ; $45BD: $C5
    inc bc                                        ; $45BE: $03
    ld a, [hl]                                    ; $45BF: $7E
    ld a, b                                       ; $45C0: $78
    ldh a, [$FFF8]                                ; $45C1: $F0 $F8
    inc b                                         ; $45C3: $04
    ld a, h                                       ; $45C4: $7C
    ld [$EC5A], sp                                ; $45C5: $08 $5A $EC
    inc b                                         ; $45C8: $04
    db $FC                                        ; $45C9: $FC
    inc b                                         ; $45CA: $04
    inc d                                         ; $45CB: $14
    cp b                                          ; $45CC: $B8
    inc c                                         ; $45CD: $0C
    jr c, jr_033_45BD                             ; $45CE: $38 $ED

    dec l                                         ; $45D0: $2D
    dec b                                         ; $45D1: $05
    nop                                           ; $45D2: $00
    ldh [rTIMA], a                                ; $45D3: $E0 $05
    nop                                           ; $45D5: $00
    ret nz                                        ; $45D6: $C0

    inc e                                         ; $45D7: $1C
    ld a, a                                       ; $45D8: $7F
    add b                                         ; $45D9: $80
    inc [hl]                                      ; $45DA: $34
    ld l, h                                       ; $45DB: $6C
    dec b                                         ; $45DC: $05
    inc d                                         ; $45DD: $14
    inc b                                         ; $45DE: $04
    inc bc                                        ; $45DF: $03
    inc bc                                        ; $45E0: $03
    push de                                       ; $45E1: $D5
    inc bc                                        ; $45E2: $03
    inc bc                                        ; $45E3: $03
    ld bc, $0704                                  ; $45E4: $01 $04 $07
    ld [$080F], sp                                ; $45E7: $08 $0F $08
    ld d, a                                       ; $45EA: $57
    ld e, $08                                     ; $45EB: $1E $08
    rla                                           ; $45ED: $17
    inc b                                         ; $45EE: $04
    rra                                           ; $45EF: $1F
    dec b                                         ; $45F0: $05
    inc e                                         ; $45F1: $1C
    inc b                                         ; $45F2: $04
    ld a, [$034B]                                 ; $45F3: $FA $4B $03
    inc bc                                        ; $45F6: $03
    inc bc                                        ; $45F7: $03
    nop                                           ; $45F8: $00
    rst RST_38                                    ; $45F9: $FF
    inc b                                         ; $45FA: $04
    rst RST_18                                    ; $45FB: $DF
    db $E4                                        ; $45FC: $E4
    ld [$E000], sp                                ; $45FD: $08 $00 $E0
    db $EC                                        ; $4600: $EC
    ei                                            ; $4601: $FB

jr_033_4602:
    inc c                                         ; $4602: $0C
    ldh a, [$FFBF]                                ; $4603: $F0 $BF
    cp $08                                        ; $4605: $FE $08
    ld de, $0335                                  ; $4607: $11 $35 $03
    inc bc                                        ; $460A: $03
    inc bc                                        ; $460B: $03
    inc bc                                        ; $460C: $03
    add b                                         ; $460D: $80
    rst RST_08                                    ; $460E: $CF
    add l                                         ; $460F: $85
    ld [$3FF7], sp                                ; $4610: $08 $F7 $3F
    nop                                           ; $4613: $00
    sub b                                         ; $4614: $90
    ld l, h                                       ; $4615: $6C
    db $F4                                        ; $4616: $F4
    ld e, a                                       ; $4617: $5F

jr_033_4618:
    ld a, a                                       ; $4618: $7F
    jr nz, jr_033_4618                            ; $4619: $20 $FD

    ld a, a                                       ; $461B: $7F
    inc bc                                        ; $461C: $03
    inc bc                                        ; $461D: $03
    inc bc                                        ; $461E: $03
    inc bc                                        ; $461F: $03
    xor e                                         ; $4620: $AB
    add [hl]                                      ; $4621: $86
    ldh [$FF08], a                                ; $4622: $E0 $08
    ld [hl], b                                    ; $4624: $70
    ld [$FCF8], sp                                ; $4625: $08 $F8 $FC
    ld b, $C0                                     ; $4628: $06 $C0
    dec d                                         ; $462A: $15
    inc l                                         ; $462B: $2C
    reti                                          ; $462C: $D9


    nop                                           ; $462D: $00
    ld b, h                                       ; $462E: $44
    nop                                           ; $462F: $00
    nop                                           ; $4630: $00
    ld b, $39                                     ; $4631: $06 $39
    ld h, c                                       ; $4633: $61
    jr nz, jr_033_464E                            ; $4634: $20 $18

    ld e, e                                       ; $4636: $5B
    dec b                                         ; $4637: $05
    ld e, b                                       ; $4638: $58
    db $10                                        ; $4639: $10
    ld e, a                                       ; $463A: $5F
    rra                                           ; $463B: $1F
    ccf                                           ; $463C: $3F
    nop                                           ; $463D: $00
    ld sp, $7600                                  ; $463E: $31 $00 $76
    ld a, $00                                     ; $4641: $3E $00
    ld h, b                                       ; $4643: $60
    add b                                         ; $4644: $80
    rlca                                          ; $4645: $07
    nop                                           ; $4646: $00
    or c                                          ; $4647: $B1
    dec b                                         ; $4648: $05
    add d                                         ; $4649: $82
    nop                                           ; $464A: $00
    ld c, $6E                                     ; $464B: $0E $6E
    inc sp                                        ; $464D: $33

jr_033_464E:
    ld b, e                                       ; $464E: $43
    nop                                           ; $464F: $00

jr_033_4650:
    ld [bc], a                                    ; $4650: $02
    sub $04                                       ; $4651: $D6 $04
    jr nz, jr_033_465F                            ; $4653: $20 $0A

    sub b                                         ; $4655: $90
    ld l, b                                       ; $4656: $68
    ld h, h                                       ; $4657: $64
    nop                                           ; $4658: $00
    ld c, b                                       ; $4659: $48
    db $EC                                        ; $465A: $EC
    nop                                           ; $465B: $00
    ldh [$FFF2], a                                ; $465C: $E0 $F2
    db $F4                                        ; $465E: $F4

jr_033_465F:
    ret nz                                        ; $465F: $C0

    add $B4                                       ; $4660: $C6 $B4
    or d                                          ; $4662: $B2
    ld a, [$F82A]                                 ; $4663: $FA $2A $F8
    adc h                                         ; $4666: $8C
    nop                                           ; $4667: $00
    call c, $D800                                 ; $4668: $DC $00 $D8
    nop                                           ; $466B: $00
    ld [hl+], a                                   ; $466C: $22
    ld c, e                                       ; $466D: $4B
    jr nz, jr_033_4650                            ; $466E: $20 $E0

    ldh a, [c]                                    ; $4670: $F2
    nop                                           ; $4671: $00
    ld a, [bc]                                    ; $4672: $0A
    ld c, $00                                     ; $4673: $0E $00
    ld sp, $1F55                                  ; $4675: $31 $55 $1F
    nop                                           ; $4678: $00
    ld bc, $0202                                  ; $4679: $01 $02 $02
    nop                                           ; $467C: $00
    inc c                                         ; $467D: $0C
    nop                                           ; $467E: $00

jr_033_467F:
    push de                                       ; $467F: $D5
    or c                                          ; $4680: $B1
    rrca                                          ; $4681: $0F
    inc b                                         ; $4682: $04
    nop                                           ; $4683: $00
    add hl, bc                                    ; $4684: $09
    nop                                           ; $4685: $00
    jr jr_033_4688                                ; $4686: $18 $00

jr_033_4688:
    ld e, a                                       ; $4688: $5F
    ld l, b                                       ; $4689: $68
    nop                                           ; $468A: $00
    ld [$7100], sp                                ; $468B: $08 $00 $71
    ld bc, $0FF1                                  ; $468E: $01 $F1 $0F
    ld d, l                                       ; $4691: $55
    daa                                           ; $4692: $27
    nop                                           ; $4693: $00
    ldh a, [rP1]                                  ; $4694: $F0 $00
    jr nz, jr_033_4698                            ; $4696: $20 $00

jr_033_4698:
    ld h, b                                       ; $4698: $60
    nop                                           ; $4699: $00
    ld a, l                                       ; $469A: $7D
    and b                                         ; $469B: $A0
    nop                                           ; $469C: $00
    ld d, c                                       ; $469D: $51
    or c                                          ; $469E: $B1
    pop af                                        ; $469F: $F1
    rrca                                          ; $46A0: $0F
    ret c                                         ; $46A1: $D8

    nop                                           ; $46A2: $00
    ld d, l                                       ; $46A3: $55
    ld b, l                                       ; $46A4: $45
    nop                                           ; $46A5: $00
    ld b, c                                       ; $46A6: $41
    inc b                                         ; $46A7: $04
    ld b, d                                       ; $46A8: $42
    nop                                           ; $46A9: $00
    call c, $DA00                                 ; $46AA: $DC $00 $DA
    pop af                                        ; $46AD: $F1
    dec bc                                        ; $46AE: $0B
    ld a, [bc]                                    ; $46AF: $0A
    nop                                           ; $46B0: $00
    ld sp, $0010                                  ; $46B1: $31 $10 $00
    ld a, h                                       ; $46B4: $7C
    rst RST_10                                    ; $46B5: $D7
    nop                                           ; $46B6: $00
    ld sp, $0055                                  ; $46B7: $31 $55 $00
    ld d, h                                       ; $46BA: $54
    inc b                                         ; $46BB: $04
    pop af                                        ; $46BC: $F1
    rrca                                          ; $46BD: $0F
    ld d, l                                       ; $46BE: $55
    stop                                          ; $46BF: $10 $00
    jr nz, jr_033_46C3                            ; $46C1: $20 $00

jr_033_46C3:
    ld h, b                                       ; $46C3: $60
    nop                                           ; $46C4: $00
    and b                                         ; $46C5: $A0
    nop                                           ; $46C6: $00
    push af                                       ; $46C7: $F5
    ld d, c                                       ; $46C8: $51
    inc bc                                        ; $46C9: $03
    pop af                                        ; $46CA: $F1
    rlca                                          ; $46CB: $07
    ld a, a                                       ; $46CC: $7F
    ld [de], a                                    ; $46CD: $12
    ld a, [hl]                                    ; $46CE: $7E
    db $10                                        ; $46CF: $10
    ld d, h                                       ; $46D0: $54
    ld a, l                                       ; $46D1: $7D
    db $10                                        ; $46D2: $10
    ld a, d                                       ; $46D3: $7A
    db $10                                        ; $46D4: $10
    ld a, b                                       ; $46D5: $78
    db $10                                        ; $46D6: $10
    ld [hl], c                                    ; $46D7: $71
    rlca                                          ; $46D8: $07
    ld b, h                                       ; $46D9: $44
    halt                                          ; $46DA: $76
    db $10                                        ; $46DB: $10
    ld h, e                                       ; $46DC: $63
    rrca                                          ; $46DD: $0F
    ld l, l                                       ; $46DE: $6D
    db $10                                        ; $46DF: $10
    ld b, [hl]                                    ; $46E0: $46
    rra                                           ; $46E1: $1F
    ld c, $58                                     ; $46E2: $0E $58
    inc e                                         ; $46E4: $1C
    inc sp                                        ; $46E5: $33
    jr nc, jr_033_4748                            ; $46E6: $30 $60

    ldh a, [$FF03]                                ; $46E8: $F0 $03
    sub d                                         ; $46EA: $92
    and h                                         ; $46EB: $A4
    db $10                                        ; $46EC: $10
    jp nz, Jump_000_0210                          ; $46ED: $C2 $10 $02

    jr jr_033_4702                                ; $46F0: $18 $10

    ld [$9160], sp                                ; $46F2: $08 $60 $91
    nop                                           ; $46F5: $00
    ret nz                                        ; $46F6: $C0

    db $EC                                        ; $46F7: $EC
    add b                                         ; $46F8: $80
    ld e, b                                       ; $46F9: $58
    add h                                         ; $46FA: $84
    or b                                          ; $46FB: $B0
    add b                                         ; $46FC: $80
    jr z, jr_033_467F                             ; $46FD: $28 $80

    sub b                                         ; $46FF: $90
    ld b, b                                       ; $4700: $40
    ld [hl+], a                                   ; $4701: $22

jr_033_4702:
    ld b, b                                       ; $4702: $40
    ld b, $10                                     ; $4703: $06 $10
    adc [hl]                                      ; $4705: $8E
    or [hl]                                       ; $4706: $B6
    ret nz                                        ; $4707: $C0

    cp $10                                        ; $4708: $FE $10
    rlca                                          ; $470A: $07
    ld [bc], a                                    ; $470B: $02
    nop                                           ; $470C: $00
    ld sp, $AB08                                  ; $470D: $31 $08 $AB

jr_033_4710:
    nop                                           ; $4710: $00
    rra                                           ; $4711: $1F
    nop                                           ; $4712: $00
    add hl, bc                                    ; $4713: $09
    ld b, $13                                     ; $4714: $06 $13
    nop                                           ; $4716: $00
    pop af                                        ; $4717: $F1
    or l                                          ; $4718: $B5
    dec bc                                        ; $4719: $0B
    add b                                         ; $471A: $80
    nop                                           ; $471B: $00
    ld sp, $0010                                  ; $471C: $31 $10 $00
    ld d, b                                       ; $471F: $50
    ld b, $5D                                     ; $4720: $06 $5D
    ld d, h                                       ; $4722: $54
    nop                                           ; $4723: $00
    ld e, c                                       ; $4724: $59
    nop                                           ; $4725: $00
    pop af                                        ; $4726: $F1
    dec bc                                        ; $4727: $0B
    jr z, jr_033_472A                             ; $4728: $28 $00

jr_033_472A:
    xor e                                         ; $472A: $AB
    ld sp, $0022                                  ; $472B: $31 $22 $00
    and d                                         ; $472E: $A2
    nop                                           ; $472F: $00
    and e                                         ; $4730: $A3
    nop                                           ; $4731: $00
    ld sp, $01AE                                  ; $4732: $31 $AE $01
    sub d                                         ; $4735: $92
    nop                                           ; $4736: $00
    ld [de], a                                    ; $4737: $12
    nop                                           ; $4738: $00
    pop af                                        ; $4739: $F1
    rrca                                          ; $473A: $0F
    rra                                           ; $473B: $1F
    xor e                                         ; $473C: $AB
    nop                                           ; $473D: $00
    ld de, $9102                                  ; $473E: $11 $02 $91
    nop                                           ; $4741: $00
    ld d, c                                       ; $4742: $51
    nop                                           ; $4743: $00
    ld d, c                                       ; $4744: $51
    ld [$F1B1], a                                 ; $4745: $EA $B1 $F1

jr_033_4748:
    rrca                                          ; $4748: $0F
    ld h, b                                       ; $4749: $60
    nop                                           ; $474A: $00
    inc d                                         ; $474B: $14
    nop                                           ; $474C: $00
    inc b                                         ; $474D: $04
    xor a                                         ; $474E: $AF
    inc b                                         ; $474F: $04
    ld [$7000], sp                                ; $4750: $08 $00 $70
    nop                                           ; $4753: $00
    pop af                                        ; $4754: $F1
    rrca                                          ; $4755: $0F
    rrca                                          ; $4756: $0F
    add b                                         ; $4757: $80
    rlca                                          ; $4758: $07
    ld a, h                                       ; $4759: $7C
    ld bc, $0378                                  ; $475A: $01 $78 $03
    ld h, b                                       ; $475D: $60
    rlca                                          ; $475E: $07
    ld b, b                                       ; $475F: $40
    ld e, l                                       ; $4760: $5D
    rra                                           ; $4761: $1F
    add b                                         ; $4762: $80
    ccf                                           ; $4763: $3F
    db $10                                        ; $4764: $10
    jr nc, jr_033_47D7                            ; $4765: $30 $70

    rrca                                          ; $4767: $0F
    ld de, $908E                                  ; $4768: $11 $8E $90
    ld de, $0E4E                                  ; $476B: $11 $4E $0E
    jr nc, jr_033_4710                            ; $476E: $30 $A0

    jr nz, jr_033_47A0                            ; $4770: $20 $2E

    adc l                                         ; $4772: $8D
    sub b                                         ; $4773: $90
    ld [hl], b                                    ; $4774: $70
    ld c, b                                       ; $4775: $48
    ld c, h                                       ; $4776: $4C
    ld h, b                                       ; $4777: $60
    ld [bc], a                                    ; $4778: $02
    sbc [hl]                                      ; $4779: $9E
    db $10                                        ; $477A: $10
    add b                                         ; $477B: $80
    and b                                         ; $477C: $A0
    ret nz                                        ; $477D: $C0

    ld d, $E0                                     ; $477E: $16 $E0
    ld a, [bc]                                    ; $4780: $0A
    ldh a, [rDIV]                                 ; $4781: $F0 $04
    ld hl, sp+$5C                                 ; $4783: $F8 $5C
    ld [de], a                                    ; $4785: $12
    ld d, b                                       ; $4786: $50
    ld b, $92                                     ; $4787: $06 $92
    ld [hl], b                                    ; $4789: $70
    jr nc, jr_033_47C6                            ; $478A: $30 $3A

    cp d                                          ; $478C: $BA
    ld [de], a                                    ; $478D: $12
    ld [bc], a                                    ; $478E: $02
    add d                                         ; $478F: $82
    jr c, jr_033_47D2                             ; $4790: $38 $40

    nop                                           ; $4792: $00
    add h                                         ; $4793: $84
    nop                                           ; $4794: $00
    call z, $30D5                                 ; $4795: $CC $D5 $30
    ld a, [bc]                                    ; $4798: $0A
    rra                                           ; $4799: $1F
    nop                                           ; $479A: $00
    ld bc, $0202                                  ; $479B: $01 $02 $02
    nop                                           ; $479E: $00
    ld d, a                                       ; $479F: $57

jr_033_47A0:
    inc b                                         ; $47A0: $04
    nop                                           ; $47A1: $00
    ld a, [bc]                                    ; $47A2: $0A
    nop                                           ; $47A3: $00
    ld de, $F100                                  ; $47A4: $11 $00 $F1
    rrca                                          ; $47A7: $0F
    ld d, l                                       ; $47A8: $55
    inc a                                         ; $47A9: $3C
    nop                                           ; $47AA: $00
    inc h                                         ; $47AB: $24
    ld [bc], a                                    ; $47AC: $02
    ld b, l                                       ; $47AD: $45
    nop                                           ; $47AE: $00
    inc b                                         ; $47AF: $04
    nop                                           ; $47B0: $00
    ld e, [hl]                                    ; $47B1: $5E
    ld [$7000], sp                                ; $47B2: $08 $00 $70
    nop                                           ; $47B5: $00
    pop af                                        ; $47B6: $F1
    rrca                                          ; $47B7: $0F
    ld bc, $B702                                  ; $47B8: $01 $02 $B7
    ld [bc], a                                    ; $47BB: $02
    ldh a, [c]                                    ; $47BC: $F2
    nop                                           ; $47BD: $00
    ld d, e                                       ; $47BE: $53
    inc b                                         ; $47BF: $04
    nop                                           ; $47C0: $00
    di                                            ; $47C1: $F3
    add hl, bc                                    ; $47C2: $09

Call_033_47C3:
    ld l, e                                       ; $47C3: $6B
    and b                                         ; $47C4: $A0
    nop                                           ; $47C5: $00

jr_033_47C6:
    ld sp, $0880                                  ; $47C6: $31 $80 $08
    ld b, b                                       ; $47C9: $40
    ld [bc], a                                    ; $47CA: $02
    pop af                                        ; $47CB: $F1
    ld sp, hl                                     ; $47CC: $F9
    rrca                                          ; $47CD: $0F
    rrca                                          ; $47CE: $0F
    rrca                                          ; $47CF: $0F
    rrca                                          ; $47D0: $0F
    rlca                                          ; $47D1: $07

jr_033_47D2:
    ld a, a                                       ; $47D2: $7F

jr_033_47D3:
    jr z, jr_033_47E5                             ; $47D3: $28 $10

    jr nz, jr_033_4817                            ; $47D5: $20 $40

jr_033_47D7:
    ld c, h                                       ; $47D7: $4C
    ld d, b                                       ; $47D8: $50
    ld d, l                                       ; $47D9: $55
    ld de, $0969                                  ; $47DA: $11 $69 $09
    ld [hl], h                                    ; $47DD: $74
    add hl, bc                                    ; $47DE: $09
    inc b                                         ; $47DF: $04
    ld [hl], c                                    ; $47E0: $71
    rlca                                          ; $47E1: $07
    ld h, b                                       ; $47E2: $60
    sub b                                         ; $47E3: $90
    ld e, a                                       ; $47E4: $5F

jr_033_47E5:
    rra                                           ; $47E5: $1F
    jr nz, jr_033_47D3                            ; $47E6: $20 $EB

    ld bc, $11B0                                  ; $47E8: $01 $B0 $11
    ld b, b                                       ; $47EB: $40
    jr nz, jr_033_486D                            ; $47EC: $20 $7F

    add d                                         ; $47EE: $82
    ld bc, $FE50                                  ; $47EF: $01 $50 $FE
    ld [de], a                                    ; $47F2: $12
    ld a, $10                                     ; $47F3: $3E $10
    sbc [hl]                                      ; $47F5: $9E
    add b                                         ; $47F6: $80
    adc [hl]                                      ; $47F7: $8E
    and b                                         ; $47F8: $A0

jr_033_47F9:
    ld b, l                                       ; $47F9: $45
    ld c, $50                                     ; $47FA: $0E $50
    and $F0                                       ; $47FC: $E6 $F0
    ld [bc], a                                    ; $47FE: $02
    jr nc, jr_033_47F9                            ; $47FF: $30 $F8

    nop                                           ; $4801: $00
    jp nc, $0120                                  ; $4802: $D2 $20 $01

    inc h                                         ; $4805: $24
    ld [hl], b                                    ; $4806: $70
    jr nz, @+$08                                  ; $4807: $20 $06

    ld b, b                                       ; $4809: $40
    cp $D5                                        ; $480A: $FE $D5
    add d                                         ; $480C: $82
    add hl, bc                                    ; $480D: $09
    ld bc, $0902                                  ; $480E: $01 $02 $09
    nop                                           ; $4811: $00
    dec b                                         ; $4812: $05
    nop                                           ; $4813: $00
    ld l, [hl]                                    ; $4814: $6E
    ld [bc], a                                    ; $4815: $02
    nop                                           ; $4816: $00

jr_033_4817:
    ld sp, $0018                                  ; $4817: $31 $18 $00
    pop af                                        ; $481A: $F1
    dec bc                                        ; $481B: $0B
    ld a, [bc]                                    ; $481C: $0A
    push de                                       ; $481D: $D5
    nop                                           ; $481E: $00
    ld sp, $0021                                  ; $481F: $31 $21 $00
    ld a, h                                       ; $4822: $7C
    nop                                           ; $4823: $00
    inc h                                         ; $4824: $24
    ld b, $75                                     ; $4825: $06 $75
    ld c, l                                       ; $4827: $4D
    nop                                           ; $4828: $00
    pop af                                        ; $4829: $F1
    rrca                                          ; $482A: $0F
    ldh a, [c]                                    ; $482B: $F2
    nop                                           ; $482C: $00
    ld [de], a                                    ; $482D: $12
    nop                                           ; $482E: $00
    ld d, l                                       ; $482F: $55
    inc de                                        ; $4830: $13
    nop                                           ; $4831: $00
    ld [hl+], a                                   ; $4832: $22
    nop                                           ; $4833: $00
    ld b, d                                       ; $4834: $42
    nop                                           ; $4835: $00
    and d                                         ; $4836: $A2
    nop                                           ; $4837: $00
    push af                                       ; $4838: $F5
    sub c                                         ; $4839: $91
    pop af                                        ; $483A: $F1
    rrca                                          ; $483B: $0F
    dec b                                         ; $483C: $05
    sbc a                                         ; $483D: $9F
    nop                                           ; $483E: $00
    ld b, b                                       ; $483F: $40
    nop                                           ; $4840: $00
    push de                                       ; $4841: $D5
    ei                                            ; $4842: $FB
    add hl, bc                                    ; $4843: $09
    db $10                                        ; $4844: $10
    ld [bc], a                                    ; $4845: $02
    jr nz, jr_033_484A                            ; $4846: $20 $02

    ld b, h                                       ; $4848: $44
    ld [bc], a                                    ; $4849: $02

jr_033_484A:
    ld a, l                                       ; $484A: $7D
    ld a, h                                       ; $484B: $7C
    nop                                           ; $484C: $00
    pop af                                        ; $484D: $F1
    rrca                                          ; $484E: $0F
    rrca                                          ; $484F: $0F
    rlca                                          ; $4850: $07
    ld b, [hl]                                    ; $4851: $46
    ld hl, $3955                                  ; $4852: $21 $55 $39
    db $10                                        ; $4855: $10
    inc e                                         ; $4856: $1C
    db $10                                        ; $4857: $10
    ccf                                           ; $4858: $3F
    db $10                                        ; $4859: $10
    ld a, a                                       ; $485A: $7F
    db $10                                        ; $485B: $10
    dec d                                         ; $485C: $15
    ld [hl], b                                    ; $485D: $70
    dec bc                                        ; $485E: $0B
    dec sp                                        ; $485F: $3B
    jr nc, @+$32                                  ; $4860: $30 $30

    ld [hl], d                                    ; $4862: $72
    ld e, h                                       ; $4863: $5C
    inc [hl]                                      ; $4864: $34
    ld l, b                                       ; $4865: $68
    ld h, e                                       ; $4866: $63
    or d                                          ; $4867: $B2
    ld [bc], a                                    ; $4868: $02
    ld a, $10                                     ; $4869: $3E $10
    ld e, $C0                                     ; $486B: $1E $C0

jr_033_486D:
    ld c, $98                                     ; $486D: $0E $98
    db $10                                        ; $486F: $10
    ld b, $F0                                     ; $4870: $06 $F0
    ld [de], a                                    ; $4872: $12
    ld d, b                                       ; $4873: $50
    ld a, [hl+]                                   ; $4874: $2A
    add sp, $04                                   ; $4875: $E8 $04
    sub l                                         ; $4877: $95
    jr nc, jr_033_487C                            ; $4878: $30 $02

    db $FC                                        ; $487A: $FC
    db $10                                        ; $487B: $10

jr_033_487C:
    ld h, b                                       ; $487C: $60
    db $10                                        ; $487D: $10
    db $F4                                        ; $487E: $F4
    ld [hl], b                                    ; $487F: $70
    dec c                                         ; $4880: $0D
    ld [hl], b                                    ; $4881: $70
    nop                                           ; $4882: $00
    add b                                         ; $4883: $80
    ld a, [hl]                                    ; $4884: $7E
    jr nz, @+$0D                                  ; $4885: $20 $0B

    inc bc                                        ; $4887: $03
    nop                                           ; $4888: $00
    ld d, a                                       ; $4889: $57
    ld c, $00                                     ; $488A: $0E $00
    ld [bc], a                                    ; $488C: $02
    nop                                           ; $488D: $00
    rra                                           ; $488E: $1F
    nop                                           ; $488F: $00
    ld sp, $7B01                                  ; $4890: $31 $01 $7B
    inc c                                         ; $4893: $0C
    nop                                           ; $4894: $00
    pop af                                        ; $4895: $F1
    rrca                                          ; $4896: $0F
    dec b                                         ; $4897: $05
    ld a, l                                       ; $4898: $7D
    nop                                           ; $4899: $00
    ld d, e                                       ; $489A: $53
    ld [hl], l                                    ; $489B: $75
    ld bc, $F700                                  ; $489C: $01 $00 $F7
    add hl, bc                                    ; $489F: $09
    rst RST_30                                    ; $48A0: $F7
    nop                                           ; $48A1: $00
    sub b                                         ; $48A2: $90
    nop                                           ; $48A3: $00
    ld d, l                                       ; $48A4: $55
    ret nc                                        ; $48A5: $D0

    nop                                           ; $48A6: $00
    jr nc, jr_033_48A9                            ; $48A7: $30 $00

jr_033_48A9:
    ld de, $2200                                  ; $48A9: $11 $00 $22
    nop                                           ; $48AC: $00
    ld [hl], l                                    ; $48AD: $75
    call nz, $F100                                ; $48AE: $C4 $00 $F1
    rrca                                          ; $48B1: $0F
    ret nz                                        ; $48B2: $C0

    nop                                           ; $48B3: $00
    ld b, b                                       ; $48B4: $40
    ld [bc], a                                    ; $48B5: $02
    ld a, a                                       ; $48B6: $7F
    add b                                         ; $48B7: $80
    nop                                           ; $48B8: $00
    sub c                                         ; $48B9: $91
    ld sp, $5171                                  ; $48BA: $31 $71 $51
    rrca                                          ; $48BD: $0F
    rrca                                          ; $48BE: $0F
    ldh [rIF], a                                  ; $48BF: $E0 $0F
    rrca                                          ; $48C1: $0F
    rlca                                          ; $48C2: $07
    ld b, b                                       ; $48C3: $40
    ld b, $31                                     ; $48C4: $06 $31
    add hl, sp                                    ; $48C6: $39
    ld e, b                                       ; $48C7: $58
    nop                                           ; $48C8: $00
    inc e                                         ; $48C9: $1C
    ld l, l                                       ; $48CA: $6D
    inc c                                         ; $48CB: $0C
    ld d, d                                       ; $48CC: $52
    ld bc, $0304                                  ; $48CD: $01 $04 $03
    ld [$4B05], sp                                ; $48D0: $08 $05 $4B
    ld c, b                                       ; $48D3: $48
    ld l, d                                       ; $48D4: $6A
    jr nz, jr_033_490E                            ; $48D5: $20 $37

    ldh a, [$FF36]                                ; $48D7: $F0 $36
    ld d, b                                       ; $48D9: $50
    ld de, $0007                                  ; $48DA: $11 $07 $00
    ld a, a                                       ; $48DD: $7F
    db $10                                        ; $48DE: $10
    dec hl                                        ; $48DF: $2B
    ld b, b                                       ; $48E0: $40
    ld e, $30                                     ; $48E1: $1E $30
    add b                                         ; $48E3: $80
    ld [bc], a                                    ; $48E4: $02
    ld [$C406], sp                                ; $48E5: $08 $06 $C4
    ldh a, [c]                                    ; $48E8: $F2
    ld [hl], b                                    ; $48E9: $70
    ld a, d                                       ; $48EA: $7A
    sbc b                                         ; $48EB: $98
    db $10                                        ; $48EC: $10
    ld a, [de]                                    ; $48ED: $1A
    inc b                                         ; $48EE: $04
    ldh [c], a                                    ; $48EF: $E2
    and b                                         ; $48F0: $A0
    adc [hl]                                      ; $48F1: $8E
    ld d, b                                       ; $48F2: $50
    ld d, [hl]                                    ; $48F3: $56
    ld hl, sp+$76                                 ; $48F4: $F8 $76
    ld a, [$F050]                                 ; $48F6: $FA $50 $F0
    db $10                                        ; $48F9: $10
    cp $50                                        ; $48FA: $FE $50
    ld [hl-], a                                   ; $48FC: $32
    ld [$E637], sp                                ; $48FD: $08 $37 $E6
    ld c, $40                                     ; $4900: $0E $40
    rlca                                          ; $4902: $07
    ld [bc], a                                    ; $4903: $02
    nop                                           ; $4904: $00
    ld sp, $ABF0                                  ; $4905: $31 $F0 $AB
    nop                                           ; $4908: $00
    rra                                           ; $4909: $1F
    nop                                           ; $490A: $00
    add hl, bc                                    ; $490B: $09
    ld b, $13                                     ; $490C: $06 $13

jr_033_490E:
    nop                                           ; $490E: $00
    pop af                                        ; $490F: $F1
    or l                                          ; $4910: $B5
    dec bc                                        ; $4911: $0B
    add b                                         ; $4912: $80
    nop                                           ; $4913: $00
    ld sp, $0004                                  ; $4914: $31 $04 $00
    add hl, bc                                    ; $4917: $09
    nop                                           ; $4918: $00
    ld e, a                                       ; $4919: $5F
    add hl, de                                    ; $491A: $19
    nop                                           ; $491B: $00
    ld l, c                                       ; $491C: $69
    nop                                           ; $491D: $00
    ld d, c                                       ; $491E: $51
    inc bc                                        ; $491F: $03
    pop af                                        ; $4920: $F1
    rrca                                          ; $4921: $0F
    ld e, d                                       ; $4922: $5A
    ld b, e                                       ; $4923: $43
    nop                                           ; $4924: $00
    ld b, d                                       ; $4925: $42
    nop                                           ; $4926: $00
    ld sp, $0044                                  ; $4927: $31 $44 $00
    ld b, b                                       ; $492A: $40
    xor [hl]                                      ; $492B: $AE
    nop                                           ; $492C: $00
    ld d, b                                       ; $492D: $50
    nop                                           ; $492E: $00
    ld h, a                                       ; $492F: $67
    nop                                           ; $4930: $00
    pop af                                        ; $4931: $F1
    dec bc                                        ; $4932: $0B
    and b                                         ; $4933: $A0
    push de                                       ; $4934: $D5
    nop                                           ; $4935: $00
    ld sp, $00C0                                  ; $4936: $31 $C0 $00
    ld b, b                                       ; $4939: $40
    ld [bc], a                                    ; $493A: $02
    rst RST_18                                    ; $493B: $DF
    nop                                           ; $493C: $00
    cp l                                          ; $493D: $BD
    ld sp, $0080                                  ; $493E: $31 $80 $00
    pop de                                        ; $4941: $D1
    rrca                                          ; $4942: $0F
    ld bc, $0220                                  ; $4943: $01 $20 $02
    ld d, a                                       ; $4946: $57
    jr nc, jr_033_4949                            ; $4947: $30 $00

jr_033_4949:
    jr z, jr_033_494B                             ; $4949: $28 $00

jr_033_494B:
    inc h                                         ; $494B: $24
    nop                                           ; $494C: $00
    sub e                                         ; $494D: $93
    pop af                                        ; $494E: $F1
    ld [$0F0F], a                                 ; $494F: $EA $0F $0F
    rlca                                          ; $4952: $07
    ld a, b                                       ; $4953: $78
    db $10                                        ; $4954: $10
    ld h, b                                       ; $4955: $60
    db $10                                        ; $4956: $10
    ld b, b                                       ; $4957: $40
    xor d                                         ; $4958: $AA
    add e                                         ; $4959: $83
    inc e                                         ; $495A: $1C
    db $10                                        ; $495B: $10
    ccf                                           ; $495C: $3F
    db $10                                        ; $495D: $10
    inc hl                                        ; $495E: $23
    ld [hl-], a                                   ; $495F: $32
    ld a, l                                       ; $4960: $7D
    xor e                                         ; $4961: $AB
    ld [de], a                                    ; $4962: $12
    ld l, a                                       ; $4963: $6F
    db $10                                        ; $4964: $10
    ld [hl], b                                    ; $4965: $70
    sub d                                         ; $4966: $92
    rrca                                          ; $4967: $0F
    db $10                                        ; $4968: $10
    ld [bc], a                                    ; $4969: $02
    ld d, l                                       ; $496A: $55
    ld a, $10                                     ; $496B: $3E $10
    ld c, $10                                     ; $496D: $0E $10
    ld b, $10                                     ; $496F: $06 $10
    ld [bc], a                                    ; $4971: $02
    add c                                         ; $4972: $81
    ld d, l                                       ; $4973: $55
    ld [hl], b                                    ; $4974: $70
    db $10                                        ; $4975: $10
    ld a, [$8A10]                                 ; $4976: $FA $10 $8A
    db $10                                        ; $4979: $10
    ld hl, sp+$10                                 ; $497A: $F8 $10
    ld d, l                                       ; $497C: $55
    ld a, h                                       ; $497D: $7C
    db $10                                        ; $497E: $10
    ld a, [hl]                                    ; $497F: $7E
    db $10                                        ; $4980: $10
    xor $10                                       ; $4981: $EE $10
    ld e, $10                                     ; $4983: $1E $10
    ld e, d                                       ; $4985: $5A
    db $FC                                        ; $4986: $FC
    db $10                                        ; $4987: $10
    ldh a, [rNR10]                                ; $4988: $F0 $10
    inc c                                         ; $498A: $0C
    rra                                           ; $498B: $1F
    nop                                           ; $498C: $00
    ld bc, $06F5                                  ; $498D: $01 $F5 $06
    sub c                                         ; $4990: $91
    di                                            ; $4991: $F3
    rrca                                          ; $4992: $0F
    ld h, c                                       ; $4993: $61
    nop                                           ; $4994: $00
    inc d                                         ; $4995: $14
    nop                                           ; $4996: $00
    ld d, a                                       ; $4997: $57
    dec b                                         ; $4998: $05
    ld [bc], a                                    ; $4999: $02
    add hl, bc                                    ; $499A: $09
    nop                                           ; $499B: $00
    ld [hl], c                                    ; $499C: $71
    nop                                           ; $499D: $00
    di                                            ; $499E: $F3
    add hl, bc                                    ; $499F: $09
    ld l, d                                       ; $49A0: $6A

jr_033_49A1:
    jr z, jr_033_49A3                             ; $49A1: $28 $00

jr_033_49A3:
    ld sp, $0040                                  ; $49A3: $31 $40 $00
    ldh a, [rP1]                                  ; $49A6: $F0 $00
    ld b, c                                       ; $49A8: $41
    xor [hl]                                      ; $49A9: $AE
    nop                                           ; $49AA: $00
    ld d, [hl]                                    ; $49AB: $56
    nop                                           ; $49AC: $00
    ld d, b                                       ; $49AD: $50
    inc b                                         ; $49AE: $04
    pop af                                        ; $49AF: $F1
    rrca                                          ; $49B0: $0F
    ld b, b                                       ; $49B1: $40
    cp a                                          ; $49B2: $BF
    nop                                           ; $49B3: $00
    add b                                         ; $49B4: $80
    ld a, [bc]                                    ; $49B5: $0A
    pop af                                        ; $49B6: $F1
    rrca                                          ; $49B7: $0F
    rrca                                          ; $49B8: $0F
    rrca                                          ; $49B9: $0F
    rrca                                          ; $49BA: $0F
    xor c                                         ; $49BB: $A9
    rlca                                          ; $49BC: $07
    ld a, a                                       ; $49BD: $7F
    ld [de], a                                    ; $49BE: $12
    ld h, b                                       ; $49BF: $60
    db $10                                        ; $49C0: $10
    ld b, b                                       ; $49C1: $40
    ld e, $20                                     ; $49C2: $1E $20
    ld d, h                                       ; $49C4: $54
    ld l, $10                                     ; $49C5: $2E $10
    ccf                                           ; $49C7: $3F
    ld d, b                                       ; $49C8: $50
    rra                                           ; $49C9: $1F
    sub b                                         ; $49CA: $90
    rlca                                          ; $49CB: $07
    ld a, b                                       ; $49CC: $78
    ld [hl], l                                    ; $49CD: $75
    ld bc, $71D2                                  ; $49CE: $01 $D2 $71
    jr nc, @+$81                                  ; $49D1: $30 $7F

    db $10                                        ; $49D3: $10
    ld a, h                                       ; $49D4: $7C
    db $10                                        ; $49D5: $10
    and b                                         ; $49D6: $A0
    inc bc                                        ; $49D7: $03
    adc [hl]                                      ; $49D8: $8E
    db $10                                        ; $49D9: $10
    halt                                          ; $49DA: $76
    ld [hl], b                                    ; $49DB: $70
    adc d                                         ; $49DC: $8A
    adc b                                         ; $49DD: $88
    add h                                         ; $49DE: $84
    xor c                                         ; $49DF: $A9
    nop                                           ; $49E0: $00
    call nz, $6400                                ; $49E1: $C4 $00 $64
    nop                                           ; $49E4: $00
    jr c, jr_033_49A1                             ; $49E5: $38 $BA

    ret nz                                        ; $49E7: $C0

    ld d, l                                       ; $49E8: $55
    add $10                                       ; $49E9: $C6 $10
    cp $10                                        ; $49EB: $FE $10
    ld a, [hl]                                    ; $49ED: $7E
    ld [hl-], a                                   ; $49EE: $32
    ld a, $10                                     ; $49EF: $3E $10
    ld l, d                                       ; $49F1: $6A
    ld c, $52                                     ; $49F2: $0E $52
    ld a, [bc]                                    ; $49F4: $0A
    ld bc, $0902                                  ; $49F5: $01 $02 $09
    nop                                           ; $49F8: $00
    dec b                                         ; $49F9: $05
    or a                                          ; $49FA: $B7
    nop                                           ; $49FB: $00
    ld [bc], a                                    ; $49FC: $02
    nop                                           ; $49FD: $00
    ld sp, $0018                                  ; $49FE: $31 $18 $00
    pop af                                        ; $4A01: $F1
    dec bc                                        ; $4A02: $0B
    ld l, d                                       ; $4A03: $6A
    ld a, [bc]                                    ; $4A04: $0A
    nop                                           ; $4A05: $00
    ld sp, $0020                                  ; $4A06: $31 $20 $00
    ld a, h                                       ; $4A09: $7C
    nop                                           ; $4A0A: $00
    inc h                                         ; $4A0B: $24
    cp d                                          ; $4A0C: $BA
    ld b, $4C                                     ; $4A0D: $06 $4C
    nop                                           ; $4A0F: $00
    pop af                                        ; $4A10: $F1
    rrca                                          ; $4A11: $0F
    add a                                         ; $4A12: $87
    nop                                           ; $4A13: $00
    add h                                         ; $4A14: $84
    xor e                                         ; $4A15: $AB
    nop                                           ; $4A16: $00
    call nz, $A400                                ; $4A17: $C4 $00 $A4
    nop                                           ; $4A1A: $00
    sub h                                         ; $4A1B: $94
    nop                                           ; $4A1C: $00
    ld [hl], c                                    ; $4A1D: $71
    ld [$F1B1], a                                 ; $4A1E: $EA $B1 $F1
    rrca                                          ; $4A21: $0F
    ret c                                         ; $4A22: $D8

    nop                                           ; $4A23: $00
    ld b, l                                       ; $4A24: $45
    nop                                           ; $4A25: $00
    ld b, c                                       ; $4A26: $41
    xor a                                         ; $4A27: $AF
    inc b                                         ; $4A28: $04
    ld b, d                                       ; $4A29: $42
    nop                                           ; $4A2A: $00
    call c, $F100                                 ; $4A2B: $DC $00 $F1
    rrca                                          ; $4A2E: $0F
    rrca                                          ; $4A2F: $0F
    ldh [rIF], a                                  ; $4A30: $E0 $0F
    rrca                                          ; $4A32: $0F
    rlca                                          ; $4A33: $07
    ld l, l                                       ; $4A34: $6D
    ld h, b                                       ; $4A35: $60
    ld [hl-], a                                   ; $4A36: $32
    ld [hl], b                                    ; $4A37: $70
    dec bc                                        ; $4A38: $0B
    inc de                                        ; $4A39: $13
    jr c, jr_033_4A84                             ; $4A3A: $38 $48

    jr jr_033_4A6E                                ; $4A3C: $18 $30

    dec de                                        ; $4A3E: $1B
    ld e, b                                       ; $4A3F: $58
    nop                                           ; $4A40: $00
    pop de                                        ; $4A41: $D1
    ld d, l                                       ; $4A42: $55
    ld e, e                                       ; $4A43: $5B

jr_033_4A44:
    ld d, b                                       ; $4A44: $50
    ld a, [hl+]                                   ; $4A45: $2A
    nop                                           ; $4A46: $00
    ld sp, $3F00                                  ; $4A47: $31 $00 $3F
    nop                                           ; $4A4A: $00
    rrca                                          ; $4A4B: $0F
    ld [hl], a                                    ; $4A4C: $77
    ld a, a                                       ; $4A4D: $7F
    ld a, b                                       ; $4A4E: $78
    ld a, h                                       ; $4A4F: $7C
    nop                                           ; $4A50: $00
    jr nc, jr_033_4A44                            ; $4A51: $30 $F1

    ld bc, $5A02                                  ; $4A53: $01 $02 $5A
    ld [bc], a                                    ; $4A56: $02
    inc d                                         ; $4A57: $14
    add [hl]                                      ; $4A58: $86
    ld [$10CE], sp                                ; $4A59: $08 $CE $10
    inc c                                         ; $4A5C: $0C
    ld a, [hl-]                                   ; $4A5D: $3A
    add sp, -$14                                  ; $4A5E: $E8 $EC
    jr nc, jr_033_4A62                            ; $4A60: $30 $00

jr_033_4A62:
    pop de                                        ; $4A62: $D1
    ld l, h                                       ; $4A63: $6C
    nop                                           ; $4A64: $00
    xor b                                         ; $4A65: $A8
    xor d                                         ; $4A66: $AA
    nop                                           ; $4A67: $00
    call nz, $FE00                                ; $4A68: $C4 $00 $FE
    nop                                           ; $4A6B: $00
    adc $00                                       ; $4A6C: $CE $00

jr_033_4A6E:
    db $FC                                        ; $4A6E: $FC
    ld [$D100], a                                 ; $4A6F: $EA $00 $D1
    dec bc                                        ; $4A72: $0B
    rra                                           ; $4A73: $1F
    nop                                           ; $4A74: $00
    ld bc, $0202                                  ; $4A75: $01 $02 $02
    xor e                                         ; $4A78: $AB
    nop                                           ; $4A79: $00
    inc b                                         ; $4A7A: $04
    nop                                           ; $4A7B: $00
    ld a, [bc]                                    ; $4A7C: $0A
    nop                                           ; $4A7D: $00
    ld de, $F100                                  ; $4A7E: $11 $00 $F1
    xor d                                         ; $4A81: $AA
    rrca                                          ; $4A82: $0F
    inc a                                         ; $4A83: $3C

jr_033_4A84:
    nop                                           ; $4A84: $00
    inc h                                         ; $4A85: $24
    nop                                           ; $4A86: $00
    inc [hl]                                      ; $4A87: $34
    nop                                           ; $4A88: $00
    ld c, l                                       ; $4A89: $4D
    xor e                                         ; $4A8A: $AB
    nop                                           ; $4A8B: $00
    inc b                                         ; $4A8C: $04
    nop                                           ; $4A8D: $00
    ld [$7000], sp                                ; $4A8E: $08 $00 $70
    nop                                           ; $4A91: $00
    pop af                                        ; $4A92: $F1
    or l                                          ; $4A93: $B5
    rrca                                          ; $4A94: $0F
    rlca                                          ; $4A95: $07
    nop                                           ; $4A96: $00
    ld sp, $0001                                  ; $4A97: $31 $01 $00
    pop af                                        ; $4A9A: $F1
    nop                                           ; $4A9B: $00
    db $DD                                        ; $4A9C: $DD
    ld sp, $0601                                  ; $4A9D: $31 $01 $06
    nop                                           ; $4AA0: $00
    or c                                          ; $4AA1: $B1
    rrca                                          ; $4AA2: $0F
    ret nz                                        ; $4AA3: $C0

    nop                                           ; $4AA4: $00
    ld d, l                                       ; $4AA5: $55
    ld b, b                                       ; $4AA6: $40
    ld [bc], a                                    ; $4AA7: $02
    sub h                                         ; $4AA8: $94
    nop                                           ; $4AA9: $00
    dec d                                         ; $4AAA: $15
    nop                                           ; $4AAB: $00
    ld bc, $7500                                  ; $4AAC: $01 $00 $75
    ld c, $00                                     ; $4AAF: $0E $00
    pop af                                        ; $4AB1: $F1
    add hl, bc                                    ; $4AB2: $09
    inc b                                         ; $4AB3: $04
    nop                                           ; $4AB4: $00
    ld a, [bc]                                    ; $4AB5: $0A
    nop                                           ; $4AB6: $00
    xor e                                         ; $4AB7: $AB
    ld sp, $0008                                  ; $4AB8: $31 $08 $00
    jr z, jr_033_4ABF                             ; $4ABB: $28 $02

    add hl, hl                                    ; $4ABD: $29
    nop                                           ; $4ABE: $00

jr_033_4ABF:
    ld sp, $2456                                  ; $4ABF: $31 $56 $24
    nop                                           ; $4AC2: $00
    ld b, h                                       ; $4AC3: $44
    nop                                           ; $4AC4: $00
    nop                                           ; $4AC5: $00
    rrca                                          ; $4AC6: $0F
    ld b, $F0                                     ; $4AC7: $06 $F0
    db $E4                                        ; $4AC9: $E4
    nop                                           ; $4ACA: $00
    db $FD                                        ; $4ACB: $FD
    ld bc, $204F                                  ; $4ACC: $01 $4F $20
    ld de, $4011                                  ; $4ACF: $11 $11 $40
    add b                                         ; $4AD2: $80
    ld h, b                                       ; $4AD3: $60
    ld c, [hl]                                    ; $4AD4: $4E
    rrca                                          ; $4AD5: $0F
    ccf                                           ; $4AD6: $3F
    ld bc, $1F21                                  ; $4AD7: $01 $21 $1F
    ld a, a                                       ; $4ADA: $7F
    add hl, hl                                    ; $4ADB: $29
    dec e                                         ; $4ADC: $1D
    ld a, l                                       ; $4ADD: $7D
    ld de, $500E                                  ; $4ADE: $11 $0E $50
    rla                                           ; $4AE1: $17
    dec hl                                        ; $4AE2: $2B
    or b                                          ; $4AE3: $B0
    ld b, $4F                                     ; $4AE4: $06 $4F
    nop                                           ; $4AE6: $00
    ld [hl], e                                    ; $4AE7: $73
    ld b, b                                       ; $4AE8: $40
    jr nz, jr_033_4B1B                            ; $4AE9: $20 $30

    ld [bc], a                                    ; $4AEB: $02
    jp nz, Jump_000_3841                          ; $4AEC: $C2 $41 $38

    ld de, $24C0                                  ; $4AEF: $11 $C0 $24
    add b                                         ; $4AF2: $80
    ld e, b                                       ; $4AF3: $58
    inc a                                         ; $4AF4: $3C
    nop                                           ; $4AF5: $00
    ld d, c                                       ; $4AF6: $51
    ldh [rP1], a                                  ; $4AF7: $E0 $00
    db $FC                                        ; $4AF9: $FC
    nop                                           ; $4AFA: $00
    db $EC                                        ; $4AFB: $EC
    xor $2E                                       ; $4AFC: $EE $2E
    db $10                                        ; $4AFE: $10
    inc h                                         ; $4AFF: $24
    ld e, $FE                                     ; $4B00: $1E $FE
    ld h, b                                       ; $4B02: $60
    ld [$20F8], a                                 ; $4B03: $EA $F8 $20
    nop                                           ; $4B06: $00
    ldh a, [$FFD5]                                ; $4B07: $F0 $D5
    db $10                                        ; $4B09: $10
    inc c                                         ; $4B0A: $0C
    rra                                           ; $4B0B: $1F
    nop                                           ; $4B0C: $00
    ld bc, $0500                                  ; $4B0D: $01 $00 $05
    nop                                           ; $4B10: $00
    ld d, a                                       ; $4B11: $57
    ld b, $00                                     ; $4B12: $06 $00
    inc b                                         ; $4B14: $04
    ld [bc], a                                    ; $4B15: $02
    jr jr_033_4B18                                ; $4B16: $18 $00

jr_033_4B18:
    pop af                                        ; $4B18: $F1
    rrca                                          ; $4B19: $0F
    ld d, a                                       ; $4B1A: $57

jr_033_4B1B:
    stop                                          ; $4B1B: $10 $00
    ld d, b                                       ; $4B1D: $50
    nop                                           ; $4B1E: $00
    ld d, c                                       ; $4B1F: $51
    nop                                           ; $4B20: $00
    ld sp, $5D01                                  ; $4B21: $31 $01 $5D
    ld d, h                                       ; $4B24: $54
    nop                                           ; $4B25: $00
    ld e, b                                       ; $4B26: $58
    nop                                           ; $4B27: $00
    pop af                                        ; $4B28: $F1
    rrca                                          ; $4B29: $0F
    rst RST_20                                    ; $4B2A: $E7
    nop                                           ; $4B2B: $00
    xor d                                         ; $4B2C: $AA
    ld sp, $00F7                                  ; $4B2D: $31 $F7 $00
    jr nz, jr_033_4B32                            ; $4B30: $20 $00

jr_033_4B32:
    ld h, $00                                     ; $4B32: $26 $00
    ld hl, $00BA                                  ; $4B34: $21 $BA $00
    ret nz                                        ; $4B37: $C0

    nop                                           ; $4B38: $00
    or c                                          ; $4B39: $B1
    rrca                                          ; $4B3A: $0F
    rra                                           ; $4B3B: $1F
    nop                                           ; $4B3C: $00
    pop bc                                        ; $4B3D: $C1
    xor d                                         ; $4B3E: $AA
    nop                                           ; $4B3F: $00
    ld bc, $C200                                  ; $4B40: $01 $00 $C2
    nop                                           ; $4B43: $00
    inc b                                         ; $4B44: $04
    nop                                           ; $4B45: $00
    adc d                                         ; $4B46: $8A
    cp a                                          ; $4B47: $BF
    nop                                           ; $4B48: $00
    ld d, c                                       ; $4B49: $51
    nop                                           ; $4B4A: $00
    pop af                                        ; $4B4B: $F1
    rrca                                          ; $4B4C: $0F
    rrca                                          ; $4B4D: $0F
    rrca                                          ; $4B4E: $0F
    rrca                                          ; $4B4F: $0F
    xor b                                         ; $4B50: $A8
    rlca                                          ; $4B51: $07
    ld a, a                                       ; $4B52: $7F
    db $10                                        ; $4B53: $10
    ld h, c                                       ; $4B54: $61
    db $10                                        ; $4B55: $10
    ld b, [hl]                                    ; $4B56: $46
    ld b, $4F                                     ; $4B57: $06 $4F
    ld h, c                                       ; $4B59: $61
    rrca                                          ; $4B5A: $0F
    jr nc, jr_033_4B6D                            ; $4B5B: $30 $10

    ld b, b                                       ; $4B5D: $40
    rlca                                          ; $4B5E: $07
    ld h, b                                       ; $4B5F: $60
    inc bc                                        ; $4B60: $03
    db $10                                        ; $4B61: $10
    xor d                                         ; $4B62: $AA
    or b                                          ; $4B63: $B0
    ld [hl], b                                    ; $4B64: $70
    ld de, $1108                                  ; $4B65: $11 $08 $11
    ld [hl], c                                    ; $4B68: $71
    db $10                                        ; $4B69: $10
    ld [hl], h                                    ; $4B6A: $74
    ld a, [de]                                    ; $4B6B: $1A
    inc c                                         ; $4B6C: $0C

jr_033_4B6D:
    ld a, h                                       ; $4B6D: $7C
    inc b                                         ; $4B6E: $04
    and b                                         ; $4B6F: $A0
    ld [bc], a                                    ; $4B70: $02
    cp $14                                        ; $4B71: $FE $14
    ld a, [hl]                                    ; $4B73: $7E
    add d                                         ; $4B74: $82
    db $10                                        ; $4B75: $10
    ld a, $B8                                     ; $4B76: $3E $B8
    ld [bc], a                                    ; $4B78: $02
    add b                                         ; $4B79: $80
    ld [$5C50], sp                                ; $4B7A: $08 $50 $5C
    xor d                                         ; $4B7D: $AA
    db $10                                        ; $4B7E: $10
    ld hl, sp+$10                                 ; $4B7F: $F8 $10
    ld [hl], d                                    ; $4B81: $72
    db $10                                        ; $4B82: $10
    and $10                                       ; $4B83: $E6 $10
    adc $AD                                       ; $4B85: $CE $AD
    db $10                                        ; $4B87: $10
    sbc [hl]                                      ; $4B88: $9E
    db $10                                        ; $4B89: $10
    ld a, $10                                     ; $4B8A: $3E $10
    dec bc                                        ; $4B8C: $0B
    ld e, $00                                     ; $4B8D: $1E $00
    ld d, l                                       ; $4B8F: $55
    ld [bc], a                                    ; $4B90: $02
    inc b                                         ; $4B91: $04
    inc b                                         ; $4B92: $04
    nop                                           ; $4B93: $00
    ld a, [bc]                                    ; $4B94: $0A
    nop                                           ; $4B95: $00
    ld [de], a                                    ; $4B96: $12
    nop                                           ; $4B97: $00
    push de                                       ; $4B98: $D5
    pop af                                        ; $4B99: $F1
    rrca                                          ; $4B9A: $0F
    ld a, b                                       ; $4B9B: $78
    nop                                           ; $4B9C: $00
    ld c, b                                       ; $4B9D: $48
    nop                                           ; $4B9E: $00
    ld l, b                                       ; $4B9F: $68
    nop                                           ; $4BA0: $00
    ld d, l                                       ; $4BA1: $55
    sbc e                                         ; $4BA2: $9B
    nop                                           ; $4BA3: $00
    ld [$1000], sp                                ; $4BA4: $08 $00 $10
    nop                                           ; $4BA7: $00
    ldh [rP1], a                                  ; $4BA8: $E0 $00
    push de                                       ; $4BAA: $D5
    pop af                                        ; $4BAB: $F1
    rrca                                          ; $4BAC: $0F
    ld e, $00                                     ; $4BAD: $1E $00
    ld [bc], a                                    ; $4BAF: $02
    ld [bc], a                                    ; $4BB0: $02
    jp nz, $5700                                  ; $4BB1: $C2 $00 $57

    inc b                                         ; $4BB4: $04
    nop                                           ; $4BB5: $00
    ld a, [bc]                                    ; $4BB6: $0A
    nop                                           ; $4BB7: $00
    ld [de], a                                    ; $4BB8: $12
    nop                                           ; $4BB9: $00
    pop af                                        ; $4BBA: $F1
    rrca                                          ; $4BBB: $0F
    ld d, l                                       ; $4BBC: $55
    ld a, d                                       ; $4BBD: $7A
    nop                                           ; $4BBE: $00
    ld c, d                                       ; $4BBF: $4A
    ld [bc], a                                    ; $4BC0: $02
    adc d                                         ; $4BC1: $8A
    nop                                           ; $4BC2: $00
    ld [$5D00], sp                                ; $4BC3: $08 $00 $5D
    stop                                          ; $4BC6: $10 $00
    db $E3                                        ; $4BC8: $E3
    nop                                           ; $4BC9: $00
    pop af                                        ; $4BCA: $F1
    rrca                                          ; $4BCB: $0F
    ld b, b                                       ; $4BCC: $40
    inc b                                         ; $4BCD: $04
    ld l, [hl]                                    ; $4BCE: $6E
    ld c, a                                       ; $4BCF: $4F
    nop                                           ; $4BD0: $00
    ld sp, $0080                                  ; $4BD1: $31 $80 $00
    di                                            ; $4BD4: $F3
    rrca                                          ; $4BD5: $0F
    db $10                                        ; $4BD6: $10
    xor e                                         ; $4BD7: $AB
    ld [bc], a                                    ; $4BD8: $02
    jr nz, jr_033_4BDD                            ; $4BD9: $20 $02

    ld b, h                                       ; $4BDB: $44
    ld [bc], a                                    ; $4BDC: $02

jr_033_4BDD:
    ld a, h                                       ; $4BDD: $7C
    nop                                           ; $4BDE: $00
    pop af                                        ; $4BDF: $F1
    xor d                                         ; $4BE0: $AA
    rlca                                          ; $4BE1: $07
    ld a, a                                       ; $4BE2: $7F
    db $10                                        ; $4BE3: $10
    ld a, [hl]                                    ; $4BE4: $7E
    db $10                                        ; $4BE5: $10
    ld a, l                                       ; $4BE6: $7D
    db $10                                        ; $4BE7: $10
    ld h, b                                       ; $4BE8: $60
    adc e                                         ; $4BE9: $8B
    db $10                                        ; $4BEA: $10
    ld d, b                                       ; $4BEB: $50
    db $10                                        ; $4BEC: $10
    dec a                                         ; $4BED: $3D
    nop                                           ; $4BEE: $00
    dec e                                         ; $4BEF: $1D
    nop                                           ; $4BF0: $00
    add c                                         ; $4BF1: $81

jr_033_4BF2:
    inc bc                                        ; $4BF2: $03
    ld b, b                                       ; $4BF3: $40
    jr c, jr_033_4C66                             ; $4BF4: $38 $70

    ld c, $7F                                     ; $4BF6: $0E $7F
    inc bc                                        ; $4BF8: $03
    db $10                                        ; $4BF9: $10
    add b                                         ; $4BFA: $80
    pop de                                        ; $4BFB: $D1
    inc de                                        ; $4BFC: $13
    inc b                                         ; $4BFD: $04
    ld e, $10                                     ; $4BFE: $1E $10
    jr z, jr_033_4BF2                             ; $4C00: $28 $F0

    ld b, $00                                     ; $4C02: $06 $00
    ld h, l                                       ; $4C04: $65
    ld [$6010], sp                                ; $4C05: $08 $10 $60
    add b                                         ; $4C08: $80
    add [hl]                                      ; $4C09: $86
    db $10                                        ; $4C0A: $10
    adc d                                         ; $4C0B: $8A
    ld b, b                                       ; $4C0C: $40
    ld d, h                                       ; $4C0D: $54
    db $10                                        ; $4C0E: $10
    db $10                                        ; $4C0F: $10

jr_033_4C10:
    ld [hl+], a                                   ; $4C10: $22
    db $10                                        ; $4C11: $10
    inc d                                         ; $4C12: $14
    ld [hl], b                                    ; $4C13: $70
    adc b                                         ; $4C14: $88
    ldh [$FF86], a                                ; $4C15: $E0 $86
    nop                                           ; $4C17: $00
    ld hl, sp+$38                                 ; $4C18: $F8 $38
    cp $0E                                        ; $4C1A: $FE $0E
    sub b                                         ; $4C1C: $90
    ld b, $02                                     ; $4C1D: $06 $02
    push de                                       ; $4C1F: $D5
    nop                                           ; $4C20: $00
    ld sp, $0010                                  ; $4C21: $31 $10 $00
    inc de                                        ; $4C24: $13
    nop                                           ; $4C25: $00
    inc e                                         ; $4C26: $1C
    nop                                           ; $4C27: $00
    db $DD                                        ; $4C28: $DD
    ld d, c                                       ; $4C29: $51
    inc bc                                        ; $4C2A: $03
    rrca                                          ; $4C2B: $0F
    nop                                           ; $4C2C: $00
    pop af                                        ; $4C2D: $F1
    dec bc                                        ; $4C2E: $0B
    add b                                         ; $4C2F: $80
    nop                                           ; $4C30: $00
    xor a                                         ; $4C31: $AF
    ld sp, $0401                                  ; $4C32: $31 $01 $04
    ld a, l                                       ; $4C35: $7D
    nop                                           ; $4C36: $00
    ld d, e                                       ; $4C37: $53
    pop de                                        ; $4C38: $D1
    dec c                                         ; $4C39: $0D
    ld l, d                                       ; $4C3A: $6A
    jr z, jr_033_4C3D                             ; $4C3B: $28 $00

jr_033_4C3D:
    ld d, e                                       ; $4C3D: $53
    jr nc, jr_033_4C40                            ; $4C3E: $30 $00

jr_033_4C40:
    ret nz                                        ; $4C40: $C0

    nop                                           ; $4C41: $00
    rlca                                          ; $4C42: $07
    sbc $00                                       ; $4C43: $DE $00
    sub e                                         ; $4C45: $93
    ldh a, [rP1]                                  ; $4C46: $F0 $00
    ld d, e                                       ; $4C48: $53
    rrca                                          ; $4C49: $0F
    inc bc                                        ; $4C4A: $03
    ret nz                                        ; $4C4B: $C0

    cp $00                                        ; $4C4C: $FE $00
    db $FD                                        ; $4C4E: $FD
    rrca                                          ; $4C4F: $0F
    rrca                                          ; $4C50: $0F
    rrca                                          ; $4C51: $0F
    rrca                                          ; $4C52: $0F
    ld bc, $A03F                                  ; $4C53: $01 $3F $A0
    nop                                           ; $4C56: $00
    rrca                                          ; $4C57: $0F
    nop                                           ; $4C58: $00
    inc bc                                        ; $4C59: $03
    ld [hl], e                                    ; $4C5A: $73
    ld bc, $2005                                  ; $4C5B: $01 $05 $20
    ld a, [hl-]                                   ; $4C5E: $3A
    ld [hl+], a                                   ; $4C5F: $22
    ld b, b                                       ; $4C60: $40
    ld b, b                                       ; $4C61: $40
    and b                                         ; $4C62: $A0
    jr nz, jr_033_4CB6                            ; $4C63: $20 $51

    ld h, b                                       ; $4C65: $60

jr_033_4C66:
    ld h, b                                       ; $4C66: $60
    ld d, d                                       ; $4C67: $52
    nop                                           ; $4C68: $00
    ldh [rLY], a                                  ; $4C69: $E0 $44
    jr nc, @+$06                                  ; $4C6B: $30 $04

    ld d, b                                       ; $4C6D: $50
    ld [hl], b                                    ; $4C6E: $70
    dec c                                         ; $4C6F: $0D
    jr c, jr_033_4CB4                             ; $4C70: $38 $42

    ld [bc], a                                    ; $4C72: $02
    ld d, b                                       ; $4C73: $50
    and b                                         ; $4C74: $A0
    ld [bc], a                                    ; $4C75: $02
    add b                                         ; $4C76: $80
    db $FC                                        ; $4C77: $FC
    ret nz                                        ; $4C78: $C0

    ld b, c                                       ; $4C79: $41
    ldh a, [rNR10]                                ; $4C7A: $F0 $10
    adc $82                                       ; $4C7C: $CE $82
    and b                                         ; $4C7E: $A0
    db $10                                        ; $4C7F: $10
    ld d, b                                       ; $4C80: $50
    ldh a, [$FFC2]                                ; $4C81: $F0 $C2
    and c                                         ; $4C83: $A1
    jr nz, jr_033_4C10                            ; $4C84: $20 $8A

    inc b                                         ; $4C86: $04
    ld b, $00                                     ; $4C87: $06 $00
    ldh [rNR43], a                                ; $4C89: $E0 $22
    sub c                                         ; $4C8B: $91
    jr nc, jr_033_4CAE                            ; $4C8C: $30 $20

    ld a, [bc]                                    ; $4C8E: $0A
    ld [hl], b                                    ; $4C8F: $70
    or b                                          ; $4C90: $B0
    ld b, d                                       ; $4C91: $42
    ld b, b                                       ; $4C92: $40
    ld d, b                                       ; $4C93: $50
    push de                                       ; $4C94: $D5
    and b                                         ; $4C95: $A0
    ld a, [bc]                                    ; $4C96: $0A
    rra                                           ; $4C97: $1F
    nop                                           ; $4C98: $00
    ld bc, $0202                                  ; $4C99: $01 $02 $02
    nop                                           ; $4C9C: $00
    ld d, a                                       ; $4C9D: $57
    inc b                                         ; $4C9E: $04
    nop                                           ; $4C9F: $00
    ld a, [bc]                                    ; $4CA0: $0A
    nop                                           ; $4CA1: $00
    ld de, $F100                                  ; $4CA2: $11 $00 $F1
    rrca                                          ; $4CA5: $0F
    ld d, [hl]                                    ; $4CA6: $56
    jr nz, jr_033_4CA9                            ; $4CA7: $20 $00

jr_033_4CA9:
    ld a, h                                       ; $4CA9: $7C
    nop                                           ; $4CAA: $00
    db $10                                        ; $4CAB: $10
    ld [bc], a                                    ; $4CAC: $02
    ld d, c                                       ; $4CAD: $51

jr_033_4CAE:
    ld [$00BA], sp                                ; $4CAE: $08 $BA $00
    add hl, bc                                    ; $4CB1: $09
    nop                                           ; $4CB2: $00
    pop af                                        ; $4CB3: $F1

jr_033_4CB4:
    rrca                                          ; $4CB4: $0F
    ld [bc], a                                    ; $4CB5: $02

jr_033_4CB6:
    nop                                           ; $4CB6: $00
    rrca                                          ; $4CB7: $0F
    xor d                                         ; $4CB8: $AA
    nop                                           ; $4CB9: $00
    ld [$C800], sp                                ; $4CBA: $08 $00 $C8
    nop                                           ; $4CBD: $00
    ld b, b                                       ; $4CBE: $40
    nop                                           ; $4CBF: $00
    ld b, c                                       ; $4CC0: $41
    cp d                                          ; $4CC1: $BA
    nop                                           ; $4CC2: $00
    and $00                                       ; $4CC3: $E6 $00
    pop af                                        ; $4CC5: $F1
    rrca                                          ; $4CC6: $0F
    jr nz, jr_033_4CC9                            ; $4CC7: $20 $00

jr_033_4CC9:
    and b                                         ; $4CC9: $A0
    xor e                                         ; $4CCA: $AB
    inc b                                         ; $4CCB: $04
    and d                                         ; $4CCC: $A2
    nop                                           ; $4CCD: $00
    inc h                                         ; $4CCE: $24
    nop                                           ; $4CCF: $00
    jr c, jr_033_4CD2                             ; $4CD0: $38 $00

jr_033_4CD2:
    pop af                                        ; $4CD2: $F1
    ld a, [$0F0F]                                 ; $4CD3: $FA $0F $0F
    rrca                                          ; $4CD6: $0F
    rrca                                          ; $4CD7: $0F
    rlca                                          ; $4CD8: $07
    ld a, a                                       ; $4CD9: $7F
    inc d                                         ; $4CDA: $14
    ld a, b                                       ; $4CDB: $78
    add b                                         ; $4CDC: $80
    db $10                                        ; $4CDD: $10
    ld h, a                                       ; $4CDE: $67
    rlca                                          ; $4CDF: $07
    ld c, e                                       ; $4CE0: $4B
    inc de                                        ; $4CE1: $13
    ld e, b                                       ; $4CE2: $58
    ld [bc], a                                    ; $4CE3: $02
    dec h                                         ; $4CE4: $25
    jp $1070                                      ; $4CE5: $C3 $70 $10


    jr jr_033_4D2F                                ; $4CE8: $18 $45

    jr c, @+$43                                   ; $4CEA: $38 $41

    db $10                                        ; $4CEC: $10
    jr nc, @+$27                                  ; $4CED: $30 $25

    jr nz, jr_033_4D0E                            ; $4CEF: $20 $1D

    sub b                                         ; $4CF1: $90
    ld [hl], d                                    ; $4CF2: $72
    inc c                                         ; $4CF3: $0C
    ldh [$FF7C], a                                ; $4CF4: $E0 $7C
    ld b, b                                       ; $4CF6: $40
    sub h                                         ; $4CF7: $94
    nop                                           ; $4CF8: $00
    cp $22                                        ; $4CF9: $FE $22
    db $10                                        ; $4CFB: $10
    inc d                                         ; $4CFC: $14
    ld sp, $041E                                  ; $4CFD: $31 $1E $04
    ld bc, $E0C6                                  ; $4D00: $01 $C6 $E0
    adc d                                         ; $4D03: $8A
    ret nc                                        ; $4D04: $D0

    ld a, [de]                                    ; $4D05: $1A
    ld b, b                                       ; $4D06: $40
    inc h                                         ; $4D07: $24
    ldh a, [rSTAT]                                ; $4D08: $F0 $41
    inc a                                         ; $4D0A: $3C
    db $10                                        ; $4D0B: $10
    ld h, $18                                     ; $4D0C: $26 $18

jr_033_4D0E:
    ld [bc], a                                    ; $4D0E: $02
    inc e                                         ; $4D0F: $1C
    ld [hl+], a                                   ; $4D10: $22
    ldh a, [rBGP]                                 ; $4D11: $F0 $47
    jr c, @+$72                                   ; $4D13: $38 $70

    ld e, [hl]                                    ; $4D15: $5E
    jr nz, jr_033_4D5E                            ; $4D16: $20 $46

    ld b, c                                       ; $4D18: $41
    inc b                                         ; $4D19: $04
    ldh a, [$FFDE]                                ; $4D1A: $F0 $DE
    nop                                           ; $4D1C: $00
    ld sp, $001F                                  ; $4D1D: $31 $1F $00
    inc sp                                        ; $4D20: $33
    sub c                                         ; $4D21: $91
    inc bc                                        ; $4D22: $03
    inc c                                         ; $4D23: $0C
    db $ED                                        ; $4D24: $ED
    nop                                           ; $4D25: $00
    or c                                          ; $4D26: $B1
    dec bc                                        ; $4D27: $0B
    add b                                         ; $4D28: $80
    nop                                           ; $4D29: $00
    ld [hl], l                                    ; $4D2A: $75
    ld [$5500], sp                                ; $4D2B: $08 $00 $55
    inc de                                        ; $4D2E: $13

jr_033_4D2F:
    nop                                           ; $4D2F: $00
    jr nc, jr_033_4D32                            ; $4D30: $30 $00

jr_033_4D32:
    ld d, b                                       ; $4D32: $50
    nop                                           ; $4D33: $00
    stop                                          ; $4D34: $10 $00
    db $DB                                        ; $4D36: $DB
    push af                                       ; $4D37: $F5
    rlca                                          ; $4D38: $07
    ld bc, $3100                                  ; $4D39: $01 $00 $31
    inc c                                         ; $4D3C: $0C
    nop                                           ; $4D3D: $00
    inc sp                                        ; $4D3E: $33
    ld l, [hl]                                    ; $4D3F: $6E
    ldh [rP1], a                                  ; $4D40: $E0 $00
    db $D3                                        ; $4D42: $D3
    ld c, $00                                     ; $4D43: $0E $00
    ld d, c                                       ; $4D45: $51
    dec bc                                        ; $4D46: $0B
    ld b, b                                       ; $4D47: $40
    push de                                       ; $4D48: $D5
    nop                                           ; $4D49: $00
    ld d, e                                       ; $4D4A: $53
    add b                                         ; $4D4B: $80
    ld [bc], a                                    ; $4D4C: $02
    cp l                                          ; $4D4D: $BD
    nop                                           ; $4D4E: $00
    sub b                                         ; $4D4F: $90
    nop                                           ; $4D50: $00
    ld e, [hl]                                    ; $4D51: $5E
    stop                                          ; $4D52: $10 $00
    inc a                                         ; $4D54: $3C
    nop                                           ; $4D55: $00
    di                                            ; $4D56: $F3
    rrca                                          ; $4D57: $0F
    inc bc                                        ; $4D58: $03
    ldh a, [$FFF8]                                ; $4D59: $F0 $F8
    nop                                           ; $4D5B: $00
    db $FD                                        ; $4D5C: $FD
    rrca                                          ; $4D5D: $0F

jr_033_4D5E:
    rrca                                          ; $4D5E: $0F
    ld bc, $017C                                  ; $4D5F: $01 $7C $01
    ld a, e                                       ; $4D62: $7B
    ld [bc], a                                    ; $4D63: $02
    inc bc                                        ; $4D64: $03
    ld h, a                                       ; $4D65: $67
    rlca                                          ; $4D66: $07
    ld e, a                                       ; $4D67: $5F
    rra                                           ; $4D68: $1F
    ccf                                           ; $4D69: $3F
    nop                                           ; $4D6A: $00
    ld c, a                                       ; $4D6B: $4F
    jr z, @+$11                                   ; $4D6C: $28 $0F

    ld l, a                                       ; $4D6E: $6F
    ld [de], a                                    ; $4D6F: $12
    inc hl                                        ; $4D70: $23
    ret nc                                        ; $4D71: $D0

    inc e                                         ; $4D72: $1C
    ld e, l                                       ; $4D73: $5D
    nop                                           ; $4D74: $00
    ld c, e                                       ; $4D75: $4B
    ld b, c                                       ; $4D76: $41
    jr nc, jr_033_4DD5                            ; $4D77: $30 $5C

    ld hl, $1240                                  ; $4D79: $21 $40 $12
    ld hl, $0002                                  ; $4D7C: $21 $02 $00
    ld a, $80                                     ; $4D7F: $3E $80
    ld c, $C0                                     ; $4D81: $0E $C0
    add [hl]                                      ; $4D83: $86
    ldh a, [$FFC2]                                ; $4D84: $F0 $C2
    ld hl, sp+$36                                 ; $4D86: $F8 $36
    ldh [$FFFC], a                                ; $4D88: $E0 $FC
    db $10                                        ; $4D8A: $10
    jr nc, @-$38                                  ; $4D8B: $30 $C6

    ld [hl], b                                    ; $4D8D: $70
    ld de, $0282                                  ; $4D8E: $11 $82 $02
    adc b                                         ; $4D91: $88
    ld [hl], d                                    ; $4D92: $72
    ld [hl], b                                    ; $4D93: $70
    ld [bc], a                                    ; $4D94: $02
    nop                                           ; $4D95: $00
    ld [hl], h                                    ; $4D96: $74
    jr nc, @+$0A                                  ; $4D97: $30 $08

    ld a, [de]                                    ; $4D99: $1A
    ld b, $20                                     ; $4D9A: $06 $20
    ld [de], a                                    ; $4D9C: $12
    ld h, b                                       ; $4D9D: $60
    ld a, [bc]                                    ; $4D9E: $0A
    ld bc, $0200                                  ; $4D9F: $01 $00 $02
    xor e                                         ; $4DA2: $AB
    nop                                           ; $4DA3: $00
    ld b, $00                                     ; $4DA4: $06 $00
    ld a, [bc]                                    ; $4DA6: $0A
    nop                                           ; $4DA7: $00
    ld [de], a                                    ; $4DA8: $12
    nop                                           ; $4DA9: $00
    ld [hl], c                                    ; $4DAA: $71
    ld [$F101], a                                 ; $4DAB: $EA $01 $F1
    rrca                                          ; $4DAE: $0F
    jr nz, jr_033_4DB1                            ; $4DAF: $20 $00

jr_033_4DB1:
    ld a, h                                       ; $4DB1: $7C
    nop                                           ; $4DB2: $00
    inc h                                         ; $4DB3: $24
    cp e                                          ; $4DB4: $BB
    nop                                           ; $4DB5: $00
    dec h                                         ; $4DB6: $25
    nop                                           ; $4DB7: $00
    ld sp, $4C01                                  ; $4DB8: $31 $01 $4C
    nop                                           ; $4DBB: $00
    pop af                                        ; $4DBC: $F1
    xor e                                         ; $4DBD: $AB
    rrca                                          ; $4DBE: $0F
    ld [bc], a                                    ; $4DBF: $02
    ld [bc], a                                    ; $4DC0: $02
    inc bc                                        ; $4DC1: $03
    nop                                           ; $4DC2: $00
    ldh a, [c]                                    ; $4DC3: $F2

jr_033_4DC4:
    nop                                           ; $4DC4: $00
    ld [hl], e                                    ; $4DC5: $73
    db $ED                                        ; $4DC6: $ED
    ld bc, $0DF1                                  ; $4DC7: $01 $F1 $0D
    and b                                         ; $4DCA: $A0
    nop                                           ; $4DCB: $00
    ld [hl], l                                    ; $4DCC: $75
    add b                                         ; $4DCD: $80
    nop                                           ; $4DCE: $00
    ld a, a                                       ; $4DCF: $7F
    ld b, b                                       ; $4DD0: $40
    nop                                           ; $4DD1: $00
    sub l                                         ; $4DD2: $95
    rrca                                          ; $4DD3: $0F
    rrca                                          ; $4DD4: $0F

jr_033_4DD5:
    rrca                                          ; $4DD5: $0F
    rrca                                          ; $4DD6: $0F
    dec b                                         ; $4DD7: $05
    ld c, b                                       ; $4DD8: $48
    nop                                           ; $4DD9: $00
    ld d, [hl]                                    ; $4DDA: $56
    nop                                           ; $4DDB: $00
    ld a, [bc]                                    ; $4DDC: $0A
    inc bc                                        ; $4DDD: $03
    db $10                                        ; $4DDE: $10

jr_033_4DDF:
    rlca                                          ; $4DDF: $07
    jr nz, jr_033_4DF2                            ; $4DE0: $20 $10

    ld [bc], a                                    ; $4DE2: $02
    db $10                                        ; $4DE3: $10
    ld b, $01                                     ; $4DE4: $06 $01
    ld c, $10                                     ; $4DE6: $0E $10
    ld a, [bc]                                    ; $4DE8: $0A
    dec b                                         ; $4DE9: $05
    ld d, $09                                     ; $4DEA: $16 $09
    ld h, d                                       ; $4DEC: $62
    dec d                                         ; $4DED: $15
    ld b, b                                       ; $4DEE: $40
    ld de, $0817                                  ; $4DEF: $11 $17 $08

jr_033_4DF2:
    nop                                           ; $4DF2: $00
    inc c                                         ; $4DF3: $0C
    rst RST_38                                    ; $4DF4: $FF
    add h                                         ; $4DF5: $84
    db $10                                        ; $4DF6: $10
    add hl, hl                                    ; $4DF7: $29
    sub $AA                                       ; $4DF8: $D6 $AA
    ld d, l                                       ; $4DFA: $55
    inc de                                        ; $4DFB: $13
    xor e                                         ; $4DFC: $AB
    ld d, h                                       ; $4DFD: $54
    ld a, [$D011]                                 ; $4DFE: $FA $11 $D0
    jr nz, @+$12                                  ; $4E01: $20 $10

    nop                                           ; $4E03: $00
    nop                                           ; $4E04: $00
    ld a, [bc]                                    ; $4E05: $0A
    ret nz                                        ; $4E06: $C0

    or l                                          ; $4E07: $B5
    db $10                                        ; $4E08: $10
    ldh [rNR41], a                                ; $4E09: $E0 $20
    db $10                                        ; $4E0B: $10
    ld b, b                                       ; $4E0C: $40
    ld d, c                                       ; $4E0D: $51
    and b                                         ; $4E0E: $A0
    jr nc, jr_033_4DC4                            ; $4E0F: $30 $B3

    ld de, $2050                                  ; $4E11: $11 $50 $20
    ld de, $20D0                                  ; $4E14: $11 $D0 $20
    ld de, $AAC0                                  ; $4E17: $11 $C0 $AA
    ld [bc], a                                    ; $4E1A: $02
    inc b                                         ; $4E1B: $04
    db $10                                        ; $4E1C: $10
    ld c, $20                                     ; $4E1D: $0E $20
    ld b, h                                       ; $4E1F: $44
    jr nc, @-$1E                                  ; $4E20: $30 $E0

    inc h                                         ; $4E22: $24
    ld b, b                                       ; $4E23: $40
    ld b, e                                       ; $4E24: $43
    jr nc, @+$09                                  ; $4E25: $30 $07

    inc bc                                        ; $4E27: $03
    db $10                                        ; $4E28: $10
    ld [bc], a                                    ; $4E29: $02
    ld b, $60                                     ; $4E2A: $06 $60
    ld bc, $10D0                                  ; $4E2C: $01 $D0 $10
    ld a, [bc]                                    ; $4E2F: $0A
    dec b                                         ; $4E30: $05
    ld [hl], $09                                  ; $4E31: $36 $09
    ld c, c                                       ; $4E33: $49

jr_033_4E34:
    xor d                                         ; $4E34: $AA
    jr nz, jr_033_4E6E                            ; $4E35: $20 $37

    jr nc, jr_033_4E58                            ; $4E37: $30 $1F

    ret nc                                        ; $4E39: $D0

    nop                                           ; $4E3A: $00
    nop                                           ; $4E3B: $00
    db $10                                        ; $4E3C: $10
    xor l                                         ; $4E3D: $AD
    db $10                                        ; $4E3E: $10
    jr c, jr_033_4E61                             ; $4E3F: $38 $20

    ld de, $0261                                  ; $4E41: $11 $61 $02
    ld a, h                                       ; $4E44: $7C
    db $10                                        ; $4E45: $10
    ld [bc], a                                    ; $4E46: $02
    xor e                                         ; $4E47: $AB

jr_033_4E48:
    ld d, h                                       ; $4E48: $54
    add hl, hl                                    ; $4E49: $29
    sub $AA                                       ; $4E4A: $D6 $AA
    ld d, l                                       ; $4E4C: $55
    inc de                                        ; $4E4D: $13
    rst RST_38                                    ; $4E4E: $FF
    ld l, d                                       ; $4E4F: $6A
    ld a, [hl+]                                   ; $4E50: $2A
    db $10                                        ; $4E51: $10
    inc b                                         ; $4E52: $04
    nop                                           ; $4E53: $00
    ld [bc], a                                    ; $4E54: $02
    add b                                         ; $4E55: $80
    db $10                                        ; $4E56: $10
    ret nz                                        ; $4E57: $C0

jr_033_4E58:
    and d                                         ; $4E58: $A2
    jr nz, jr_033_4DDF                            ; $4E59: $20 $84

    jr nc, jr_033_4E6B                            ; $4E5B: $30 $0E

    inc b                                         ; $4E5D: $04
    call nz, $E030                                ; $4E5E: $C4 $30 $E0

jr_033_4E61:
    db $DB                                        ; $4E61: $DB
    add b                                         ; $4E62: $80
    db $10                                        ; $4E63: $10
    ld b, b                                       ; $4E64: $40
    jr nz, jr_033_4EB7                            ; $4E65: $20 $50

    and b                                         ; $4E67: $A0
    jr nc, jr_033_4E7B                            ; $4E68: $30 $11

jr_033_4E6A:
    ld d, l                                       ; $4E6A: $55

jr_033_4E6B:
    ld e, b                                       ; $4E6B: $58
    jr nz, @-$5A                                  ; $4E6C: $20 $A4

jr_033_4E6E:
    jr nz, jr_033_4E48                            ; $4E6E: $20 $D8

    jr nc, jr_033_4E6A                            ; $4E70: $30 $F8

    ld [hl], b                                    ; $4E72: $70
    ret nc                                        ; $4E73: $D0

    ret nz                                        ; $4E74: $C0

    nop                                           ; $4E75: $00
    ccf                                           ; $4E76: $3F
    db $10                                        ; $4E77: $10
    ld a, l                                       ; $4E78: $7D
    ld [de], a                                    ; $4E79: $12
    halt                                          ; $4E7A: $76

jr_033_4E7B:
    add hl, hl                                    ; $4E7B: $29
    ld [bc], a                                    ; $4E7C: $02
    ld l, e                                       ; $4E7D: $6B
    inc d                                         ; $4E7E: $14
    ld l, h                                       ; $4E7F: $6C
    inc de                                        ; $4E80: $13
    ld d, a                                       ; $4E81: $57
    jr z, jr_033_4E94                             ; $4E82: $28 $10

    dec hl                                        ; $4E84: $2B
    daa                                           ; $4E85: $27
    ld [hl], a                                    ; $4E86: $77
    dec bc                                        ; $4E87: $0B
    ldh a, [rTAC]                                 ; $4E88: $F0 $07
    ld a, a                                       ; $4E8A: $7F
    jr nz, jr_033_4EBE                            ; $4E8B: $20 $31

    nop                                           ; $4E8D: $00
    ld e, d                                       ; $4E8E: $5A
    inc bc                                        ; $4E8F: $03
    nop                                           ; $4E90: $00
    ld bc, $0011                                  ; $4E91: $01 $11 $00

jr_033_4E94:
    nop                                           ; $4E94: $00
    ld bc, $A880                                  ; $4E95: $01 $80 $A8
    db $10                                        ; $4E98: $10
    ld h, b                                       ; $4E99: $60

jr_033_4E9A:
    jr nz, jr_033_4E34                            ; $4E9A: $20 $98

    jr nz, jr_033_4E9A                            ; $4E9C: $20 $FC

    ld [$8274], sp                                ; $4E9E: $08 $74 $82
    ld b, b                                       ; $4EA1: $40
    add sp, $70                                   ; $4EA2: $E8 $70
    call c, $F2E0                                 ; $4EA4: $DC $E0 $F2
    add b                                         ; $4EA7: $80
    db $F4                                        ; $4EA8: $F4
    ld e, a                                       ; $4EA9: $5F
    ld hl, sp+$70                                 ; $4EAA: $F8 $70
    ldh a, [rP1]                                  ; $4EAC: $F0 $00
    ld [hl], b                                    ; $4EAE: $70
    ld b, b                                       ; $4EAF: $40
    jr nz, @-$7E                                  ; $4EB0: $20 $80

    ld [de], a                                    ; $4EB2: $12
    db $10                                        ; $4EB3: $10
    sub d                                         ; $4EB4: $92
    inc c                                         ; $4EB5: $0C
    nop                                           ; $4EB6: $00

jr_033_4EB7:
    nop                                           ; $4EB7: $00
    inc b                                         ; $4EB8: $04
    db $10                                        ; $4EB9: $10
    ld c, $9E                                     ; $4EBA: $0E $9E
    jr nz, jr_033_4EDD                            ; $4EBC: $20 $1F

jr_033_4EBE:
    ld a, [bc]                                    ; $4EBE: $0A
    nop                                           ; $4EBF: $00
    ld d, b                                       ; $4EC0: $50
    rrca                                          ; $4EC1: $0F
    ld bc, $AA01                                  ; $4EC2: $01 $01 $AA
    db $10                                        ; $4EC5: $10
    inc bc                                        ; $4EC6: $03
    jr nz, jr_033_4ED0                            ; $4EC7: $20 $07

    jr nc, jr_033_4F43                            ; $4EC9: $30 $78

jr_033_4ECB:
    db $10                                        ; $4ECB: $10
    db $FD                                        ; $4ECC: $FD
    sbc b                                         ; $4ECD: $98
    jr nz, @+$01                                  ; $4ECE: $20 $FF

jr_033_4ED0:
    add l                                         ; $4ED0: $85
    ld sp, $3871                                  ; $4ED1: $31 $71 $38
    db $10                                        ; $4ED4: $10
    ld [hl], b                                    ; $4ED5: $70
    ld a, [hl]                                    ; $4ED6: $7E
    jr nz, @+$13                                  ; $4ED7: $20 $11

    ld d, c                                       ; $4ED9: $51
    ld [hl], e                                    ; $4EDA: $73
    nop                                           ; $4EDB: $00
    ret nc                                        ; $4EDC: $D0

jr_033_4EDD:
    ld bc, $82BE                                  ; $4EDD: $01 $BE $82
    db $10                                        ; $4EE0: $10
    push de                                       ; $4EE1: $D5
    xor d                                         ; $4EE2: $AA
    ld [$8055], a                                 ; $4EE3: $EA $55 $80
    ld d, b                                       ; $4EE6: $50
    ret nz                                        ; $4EE7: $C0

    sbc l                                         ; $4EE8: $9D
    jr nz, jr_033_4ECB                            ; $4EE9: $20 $E0

    ld b, b                                       ; $4EEB: $40
    nop                                           ; $4EEC: $00
    ldh a, [c]                                    ; $4EED: $F2
    rrca                                          ; $4EEE: $0F
    ret nz                                        ; $4EEF: $C0

    db $10                                        ; $4EF0: $10
    ld d, l                                       ; $4EF1: $55
    jr nz, jr_033_4F14                            ; $4EF2: $20 $20

    ldh a, [$FF94]                                ; $4EF4: $F0 $94
    ld c, $10                                     ; $4EF6: $0E $10
    rra                                           ; $4EF8: $1F
    jr nz, jr_033_4ED0                            ; $4EF9: $20 $D5

    ld sp, $010F                                  ; $4EFB: $31 $0F $01

jr_033_4EFE:
    db $10                                        ; $4EFE: $10
    inc bc                                        ; $4EFF: $03
    jr nz, jr_033_4F09                            ; $4F00: $20 $07

    ld [hl], d                                    ; $4F02: $72
    ld d, e                                       ; $4F03: $53
    ld a, b                                       ; $4F04: $78
    db $10                                        ; $4F05: $10
    db $FD                                        ; $4F06: $FD
    jr nz, @+$01                                  ; $4F07: $20 $FF

jr_033_4F09:
    add l                                         ; $4F09: $85
    ld sp, $0F71                                  ; $4F0A: $31 $71 $0F
    ld [hl], b                                    ; $4F0D: $70
    jr nz, jr_033_4F48                            ; $4F0E: $20 $38

    db $10                                        ; $4F10: $10
    ld de, $7351                                  ; $4F11: $11 $51 $73

jr_033_4F14:
    nop                                           ; $4F14: $00
    and e                                         ; $4F15: $A3
    ret nc                                        ; $4F16: $D0

    cp [hl]                                       ; $4F17: $BE
    db $10                                        ; $4F18: $10
    push de                                       ; $4F19: $D5

jr_033_4F1A:
    xor d                                         ; $4F1A: $AA
    ld [$4020], a                                 ; $4F1B: $EA $20 $40
    xor [hl]                                      ; $4F1E: $AE
    ld [bc], a                                    ; $4F1F: $02
    ret nz                                        ; $4F20: $C0

    db $10                                        ; $4F21: $10
    ldh [rNR41], a                                ; $4F22: $E0 $20
    ld sp, $C00F                                  ; $4F24: $31 $0F $C0
    xor a                                         ; $4F27: $AF
    db $10                                        ; $4F28: $10
    jr nz, jr_033_4F4B                            ; $4F29: $20 $20

    ldh a, [$FFFA]                                ; $4F2B: $F0 $FA
    rrca                                          ; $4F2D: $0F
    rrca                                          ; $4F2E: $0F
    rrca                                          ; $4F2F: $0F
    add a                                         ; $4F30: $87
    dec b                                         ; $4F31: $05
    rrca                                          ; $4F32: $0F
    ld bc, $0307                                  ; $4F33: $01 $07 $03
    dec de                                        ; $4F36: $1B
    nop                                           ; $4F37: $00
    ldh a, [$FFD5]                                ; $4F38: $F0 $D5
    ld de, $0000                                  ; $4F3A: $11 $00 $00
    add hl, bc                                    ; $4F3D: $09
    rst RST_38                                    ; $4F3E: $FF
    inc bc                                        ; $4F3F: $03
    rst RST_10                                    ; $4F40: $D7
    inc d                                         ; $4F41: $14
    ld d, l                                       ; $4F42: $55

jr_033_4F43:
    db $D3                                        ; $4F43: $D3
    db $10                                        ; $4F44: $10
    pop de                                        ; $4F45: $D1
    db $10                                        ; $4F46: $10
    ret                                           ; $4F47: $C9


jr_033_4F48:
    ld h, b                                       ; $4F48: $60
    adc b                                         ; $4F49: $88
    ld h, b                                       ; $4F4A: $60

jr_033_4F4B:
    dec b                                         ; $4F4B: $05
    adc h                                         ; $4F4C: $8C
    sub d                                         ; $4F4D: $92
    inc c                                         ; $4F4E: $0C
    ld a, [bc]                                    ; $4F4F: $0A
    inc b                                         ; $4F50: $04

jr_033_4F51:
    nop                                           ; $4F51: $00
    nop                                           ; $4F52: $00
    dec b                                         ; $4F53: $05
    dec bc                                        ; $4F54: $0B
    ldh [$FF80], a                                ; $4F55: $E0 $80
    and b                                         ; $4F57: $A0
    ret nz                                        ; $4F58: $C0

    dec e                                         ; $4F59: $1D
    jr nz, jr_033_4F6C                            ; $4F5A: $20 $10

    nop                                           ; $4F5C: $00
    ld c, b                                       ; $4F5D: $48
    nop                                           ; $4F5E: $00
    add hl, bc                                    ; $4F5F: $09
    ccf                                           ; $4F60: $3F
    dec e                                         ; $4F61: $1D
    db $10                                        ; $4F62: $10
    dec de                                        ; $4F63: $1B
    rra                                           ; $4F64: $1F
    inc bc                                        ; $4F65: $03
    ld e, a                                       ; $4F66: $5F
    rlca                                          ; $4F67: $07
    db $10                                        ; $4F68: $10
    rrca                                          ; $4F69: $0F
    db $10                                        ; $4F6A: $10
    ld d, b                                       ; $4F6B: $50

jr_033_4F6C:
    jr nz, jr_033_4EFE                            ; $4F6C: $20 $90

    jr nz, jr_033_4F1A                            ; $4F6E: $20 $AA

    db $10                                        ; $4F70: $10
    ld e, $00                                     ; $4F71: $1E $00
    nop                                           ; $4F73: $00
    dec c                                         ; $4F74: $0D
    rst RST_38                                    ; $4F75: $FF
    inc bc                                        ; $4F76: $03
    rst RST_10                                    ; $4F77: $D7
    and c                                         ; $4F78: $A1
    inc d                                         ; $4F79: $14
    db $D3                                        ; $4F7A: $D3

jr_033_4F7B:
    db $10                                        ; $4F7B: $10
    sub c                                         ; $4F7C: $91
    cp l                                          ; $4F7D: $BD
    db $10                                        ; $4F7E: $10
    jr c, jr_033_4F91                             ; $4F7F: $38 $10

    dec h                                         ; $4F81: $25
    ld c, b                                       ; $4F82: $48
    jr nc, jr_033_4F96                            ; $4F83: $30 $11

    sub b                                         ; $4F85: $90
    ld h, b                                       ; $4F86: $60
    nop                                           ; $4F87: $00
    nop                                           ; $4F88: $00
    dec b                                         ; $4F89: $05
    add hl, bc                                    ; $4F8A: $09
    db $FC                                        ; $4F8B: $FC
    cp b                                          ; $4F8C: $B8
    and h                                         ; $4F8D: $A4
    ret c                                         ; $4F8E: $D8

    jr nz, jr_033_4F51                            ; $4F8F: $20 $C0

jr_033_4F91:
    and b                                         ; $4F91: $A0
    db $10                                        ; $4F92: $10
    ld bc, $E0D0                                  ; $4F93: $01 $D0 $E0

jr_033_4F96:
    add sp, -$10                                  ; $4F96: $E8 $F0
    db $F4                                        ; $4F98: $F4
    ld hl, sp+$04                                 ; $4F99: $F8 $04
    db $10                                        ; $4F9B: $10
    xor b                                         ; $4F9C: $A8
    nop                                           ; $4F9D: $00
    nop                                           ; $4F9E: $00
    rrca                                          ; $4F9F: $0F
    inc bc                                        ; $4FA0: $03
    db $10                                        ; $4FA1: $10
    rlca                                          ; $4FA2: $07
    ld [bc], a                                    ; $4FA3: $02
    rrca                                          ; $4FA4: $0F
    ld bc, $1604                                  ; $4FA5: $01 $04 $16
    add hl, bc                                    ; $4FA8: $09
    rla                                           ; $4FA9: $17
    ld [$050B], sp                                ; $4FAA: $08 $0B $05
    sub b                                         ; $4FAD: $90
    ld a, [hl]                                    ; $4FAE: $7E
    ld bc, $E010                                  ; $4FAF: $01 $10 $E0
    pop af                                        ; $4FB2: $F1
    ld b, b                                       ; $4FB3: $40
    db $10                                        ; $4FB4: $10
    dec bc                                        ; $4FB5: $0B
    ldh [$FF88], a                                ; $4FB6: $E0 $88
    db $10                                        ; $4FB8: $10
    jr nz, jr_033_4F7B                            ; $4FB9: $20 $C0

jr_033_4FBB:
    ret nc                                        ; $4FBB: $D0

    jr nz, jr_033_502E                            ; $4FBC: $20 $70

    add b                                         ; $4FBE: $80
    add sp, -$55                                  ; $4FBF: $E8 $AB
    jr nz, jr_033_4FBB                            ; $4FC1: $20 $F8

jr_033_4FC3:
    and b                                         ; $4FC3: $A0
    db $F4                                        ; $4FC4: $F4
    jr nz, jr_033_4FC3                            ; $4FC5: $20 $FC

    jr nc, @+$22                                  ; $4FC7: $30 $20

    ld b, h                                       ; $4FC9: $44
    or b                                          ; $4FCA: $B0
    ld d, b                                       ; $4FCB: $50
    adc b                                         ; $4FCC: $88
    adc h                                         ; $4FCD: $8C
    nop                                           ; $4FCE: $00
    rlca                                          ; $4FCF: $07
    dec bc                                        ; $4FD0: $0B
    dec b                                         ; $4FD1: $05
    and [hl]                                      ; $4FD2: $A6
    ld de, $2017                                  ; $4FD3: $11 $17 $20
    rrca                                          ; $4FD6: $0F
    inc bc                                        ; $4FD7: $03
    inc sp                                        ; $4FD8: $33
    ld d, $01                                     ; $4FD9: $16 $01
    sub l                                         ; $4FDB: $95
    stop                                          ; $4FDC: $10 $00
    rlca                                          ; $4FDE: $07
    db $10                                        ; $4FDF: $10
    inc b                                         ; $4FE0: $04
    ld [hl], b                                    ; $4FE1: $70
    ld [bc], a                                    ; $4FE2: $02
    ld [hl], b                                    ; $4FE3: $70
    ldh [rP1], a                                  ; $4FE4: $E0 $00
    ld d, b                                       ; $4FE6: $50
    ld bc, $A2FD                                  ; $4FE7: $01 $FD $A2
    rst RST_18                                    ; $4FEA: $DF
    cp h                                          ; $4FEB: $BC
    rst RST_28                                    ; $4FEC: $EF
    ld b, $DD                                     ; $4FED: $06 $DD
    rst RST_20                                    ; $4FEF: $E7
    reti                                          ; $4FF0: $D9


    rst RST_38                                    ; $4FF1: $FF
    db $E3                                        ; $4FF2: $E3
    db $10                                        ; $4FF3: $10
    inc bc                                        ; $4FF4: $03
    rst RST_10                                    ; $4FF5: $D7
    xor b                                         ; $4FF6: $A8
    db $10                                        ; $4FF7: $10
    db $EB                                        ; $4FF8: $EB
    ld [de], a                                    ; $4FF9: $12
    sub a                                         ; $4FFA: $97
    db $10                                        ; $4FFB: $10
    ld h, b                                       ; $4FFC: $60
    ccf                                           ; $4FFD: $3F
    ret nz                                        ; $4FFE: $C0

    jr z, jr_033_5041                             ; $4FFF: $28 $40

    add b                                         ; $5001: $80
    nop                                           ; $5002: $00
    nop                                           ; $5003: $00
    ld bc, $D028                                  ; $5004: $01 $28 $D0
    or b                                          ; $5007: $B0
    or h                                          ; $5008: $B4
    sub b                                         ; $5009: $90
    xor b                                         ; $500A: $A8
    ld [hl], $11                                  ; $500B: $36 $11
    cp b                                          ; $500D: $B8
    ld [de], a                                    ; $500E: $12
    ld hl, sp-$80                                 ; $500F: $F8 $80
    sbc [hl]                                      ; $5011: $9E
    stop                                          ; $5012: $10 $00
    ldh a, [rNR10]                                ; $5014: $F0 $10
    ld h, b                                       ; $5016: $60
    db $10                                        ; $5017: $10
    dec b                                         ; $5018: $05
    rrca                                          ; $5019: $0F
    ld c, l                                       ; $501A: $4D
    inc bc                                        ; $501B: $03
    ld de, $0B17                                  ; $501C: $11 $17 $0B
    dec [hl]                                      ; $501F: $35
    ld d, $01                                     ; $5020: $16 $01
    db $10                                        ; $5022: $10
    dec hl                                        ; $5023: $2B
    nop                                           ; $5024: $00
    rlca                                          ; $5025: $07
    db $10                                        ; $5026: $10
    inc b                                         ; $5027: $04
    ld [hl], b                                    ; $5028: $70
    ld [bc], a                                    ; $5029: $02
    ld [hl], b                                    ; $502A: $70
    nop                                           ; $502B: $00
    ret nz                                        ; $502C: $C0

    ld d, b                                       ; $502D: $50

jr_033_502E:
    ld bc, $62FD                                  ; $502E: $01 $FD $62
    cp a                                          ; $5031: $BF
    ld a, h                                       ; $5032: $7C
    rst RST_18                                    ; $5033: $DF
    cp l                                          ; $5034: $BD
    dec c                                         ; $5035: $0D
    rst RST_20                                    ; $5036: $E7
    reti                                          ; $5037: $D9


    rst RST_38                                    ; $5038: $FF
    db $E3                                        ; $5039: $E3
    db $10                                        ; $503A: $10
    inc bc                                        ; $503B: $03
    rst RST_10                                    ; $503C: $D7
    db $10                                        ; $503D: $10
    ld d, b                                       ; $503E: $50
    db $EB                                        ; $503F: $EB
    ld [de], a                                    ; $5040: $12

jr_033_5041:
    sub a                                         ; $5041: $97
    db $10                                        ; $5042: $10
    ld h, b                                       ; $5043: $60
    ccf                                           ; $5044: $3F
    ret nz                                        ; $5045: $C0

    ld b, b                                       ; $5046: $40
    ld d, c                                       ; $5047: $51
    add b                                         ; $5048: $80
    nop                                           ; $5049: $00
    nop                                           ; $504A: $00
    ld bc, $D028                                  ; $504B: $01 $28 $D0
    or b                                          ; $504E: $B0
    sub b                                         ; $504F: $90
    ld l, c                                       ; $5050: $69
    xor b                                         ; $5051: $A8
    ld [hl], $11                                  ; $5052: $36 $11
    cp b                                          ; $5054: $B8
    ld [de], a                                    ; $5055: $12
    ld hl, sp-$80                                 ; $5056: $F8 $80
    db $10                                        ; $5058: $10
    ccf                                           ; $5059: $3F
    nop                                           ; $505A: $00
    ldh a, [rNR10]                                ; $505B: $F0 $10
    ld h, b                                       ; $505D: $60
    db $10                                        ; $505E: $10
    rrca                                          ; $505F: $0F
    rrca                                          ; $5060: $0F
    rrca                                          ; $5061: $0F
    ret nz                                        ; $5062: $C0

    rrca                                          ; $5063: $0F
    dec b                                         ; $5064: $05
    ld b, h                                       ; $5065: $44
    nop                                           ; $5066: $00
    ld l, d                                       ; $5067: $6A
    nop                                           ; $5068: $00
    rrca                                          ; $5069: $0F
    inc b                                         ; $506A: $04
    ld bc, $0310                                  ; $506B: $01 $10 $03
    db $10                                        ; $506E: $10
    rlca                                          ; $506F: $07
    push de                                       ; $5070: $D5
    inc d                                         ; $5071: $14
    add hl, bc                                    ; $5072: $09
    db $10                                        ; $5073: $10
    db $10                                        ; $5074: $10
    jr c, jr_033_5087                             ; $5075: $38 $10

    ld a, h                                       ; $5077: $7C
    db $10                                        ; $5078: $10
    ld d, l                                       ; $5079: $55
    cp $60                                        ; $507A: $FE $60
    ld l, h                                       ; $507C: $6C
    ld h, b                                       ; $507D: $60
    jp c, $B760                                   ; $507E: $DA $60 $B7

    db $10                                        ; $5081: $10
    db $10                                        ; $5082: $10
    ld a, l                                       ; $5083: $7D
    add $C7                                       ; $5084: $C6 $C7
    ld [hl], b                                    ; $5086: $70

jr_033_5087:
    cp e                                          ; $5087: $BB
    ld b, h                                       ; $5088: $44
    ld b, l                                       ; $5089: $45
    cp d                                          ; $508A: $BA
    ld l, e                                       ; $508B: $6B
    nop                                           ; $508C: $00
    rrca                                          ; $508D: $0F
    ld b, $80                                     ; $508E: $06 $80
    db $10                                        ; $5090: $10
    ret nz                                        ; $5091: $C0

    inc d                                         ; $5092: $14
    dec b                                         ; $5093: $05
    ld l, e                                       ; $5094: $6B
    ld bc, $0176                                  ; $5095: $01 $76 $01
    db $10                                        ; $5098: $10
    db $10                                        ; $5099: $10
    jr c, @+$22                                   ; $509A: $38 $20

    ld sp, $01AD                                  ; $509C: $31 $AD $01
    ld bc, $0714                                  ; $509F: $01 $14 $07
    sub d                                         ; $50A2: $92
    ld bc, $1080                                  ; $50A3: $01 $80 $10
    ld l, d                                       ; $50A6: $6A
    ret nz                                        ; $50A7: $C0

    jr nz, jr_033_50DB                            ; $50A8: $20 $31

    ld de, $3810                                  ; $50AA: $11 $10 $38
    db $10                                        ; $50AD: $10
    ld a, h                                       ; $50AE: $7C
    adc d                                         ; $50AF: $8A
    db $10                                        ; $50B0: $10
    cp $10                                        ; $50B1: $FE $10
    ld l, h                                       ; $50B3: $6C
    ld h, b                                       ; $50B4: $60
    jp c, $B660                                   ; $50B5: $DA $60 $B6

    add e                                         ; $50B8: $83
    db $10                                        ; $50B9: $10
    ld a, l                                       ; $50BA: $7D
    add $C7                                       ; $50BB: $C6 $C7
    cp d                                          ; $50BD: $BA
    xor e                                         ; $50BE: $AB
    ld d, b                                       ; $50BF: $50
    jr nc, @-$53                                  ; $50C0: $30 $AB

    stop                                          ; $50C2: $10 $00
    ld b, $80                                     ; $50C4: $06 $80
    db $10                                        ; $50C6: $10
    ret nz                                        ; $50C7: $C0

    jr nz, @+$33                                  ; $50C8: $20 $31

    xor [hl]                                      ; $50CA: $AE
    inc bc                                        ; $50CB: $03
    ld [$1C10], sp                                ; $50CC: $08 $10 $1C
    jr nz, @+$33                                  ; $50CF: $20 $31

    dec b                                         ; $50D1: $05
    ret nz                                        ; $50D2: $C0

    and b                                         ; $50D3: $A0
    db $10                                        ; $50D4: $10
    ldh [rNR10], a                                ; $50D5: $E0 $10
    ret c                                         ; $50D7: $D8

    ld h, b                                       ; $50D8: $60
    sub $78                                       ; $50D9: $D6 $78

jr_033_50DB:
    ld d, l                                       ; $50DB: $55
    ld b, b                                       ; $50DC: $40
    ld a, $11                                     ; $50DD: $3E $11
    ld [hl], $1D                                  ; $50DF: $36 $1D
    dec [hl]                                      ; $50E1: $35
    dec de                                        ; $50E2: $1B
    ld a, [de]                                    ; $50E3: $1A
    rlca                                          ; $50E4: $07
    nop                                           ; $50E5: $00
    ld a, [hl-]                                   ; $50E6: $3A
    rla                                           ; $50E7: $17
    ld a, [hl]                                    ; $50E8: $7E
    ld sp, $143B                                  ; $50E9: $31 $3B $14
    add hl, de                                    ; $50EC: $19
    ld b, $4D                                     ; $50ED: $06 $4D
    ld [$0490], sp                                ; $50EF: $08 $90 $04
    inc bc                                        ; $50F2: $03
    ld de, $0000                                  ; $50F3: $11 $00 $00
    ld bc, $4055                                  ; $50F6: $01 $55 $40
    db $10                                        ; $50F9: $10
    ldh [rNR41], a                                ; $50FA: $E0 $20
    ldh a, [rNR41]                                ; $50FC: $F0 $20
    ld hl, sp+$50                                 ; $50FE: $F8 $50
    ld bc, $B846                                  ; $5100: $01 $46 $B8
    pop hl                                        ; $5103: $E1
    sbc [hl]                                      ; $5104: $9E
    ld sp, $1ECE                                  ; $5105: $31 $CE $1E
    sub b                                         ; $5108: $90
    ld b, b                                       ; $5109: $40
    inc e                                         ; $510A: $1C
    db $10                                        ; $510B: $10
    inc h                                         ; $510C: $24
    ret c                                         ; $510D: $D8

    call nz, $C338                                ; $510E: $C4 $38 $C3
    inc a                                         ; $5111: $3C
    ld b, $F5                                     ; $5112: $06 $F5
    ld [$0088], sp                                ; $5114: $08 $88 $00
    inc c                                         ; $5117: $0C
    db $10                                        ; $5118: $10
    ld bc, $A101                                  ; $5119: $01 $01 $A1
    db $10                                        ; $511C: $10
    dec de                                        ; $511D: $1B

jr_033_511E:
    jr nz, @+$41                                  ; $511E: $20 $3F

    ld a, [de]                                    ; $5120: $1A
    ld a, e                                       ; $5121: $7B
    ld hl, $FA00                                  ; $5122: $21 $00 $FA
    or h                                          ; $5125: $B4
    ld de, $7305                                  ; $5126: $11 $05 $73
    ld sp, $527F                                  ; $5129: $31 $7F $52
    ldh a, [$FFA6]                                ; $512C: $F0 $A6
    db $10                                        ; $512E: $10
    ei                                            ; $512F: $FB

jr_033_5130:
    jr nz, @+$01                                  ; $5130: $20 $FF

    dec bc                                        ; $5132: $0B
    ld sp, $E071                                  ; $5133: $31 $71 $E0
    ld a, [de]                                    ; $5136: $1A
    ld b, b                                       ; $5137: $40
    ret nz                                        ; $5138: $C0

    add b                                         ; $5139: $80
    ld de, $7851                                  ; $513A: $11 $51 $78
    sub b                                         ; $513D: $90
    cp $83                                        ; $513E: $FE $83
    db $10                                        ; $5140: $10
    rst RST_28                                    ; $5141: $EF
    jr c, jr_033_511E                             ; $5142: $38 $DA

    ld a, h                                       ; $5144: $7C
    or a                                          ; $5145: $B7
    ld h, b                                       ; $5146: $60
    ld d, b                                       ; $5147: $50
    rst RST_10                                    ; $5148: $D7

jr_033_5149:
    and c                                         ; $5149: $A1
    inc b                                         ; $514A: $04
    add b                                         ; $514B: $80
    db $10                                        ; $514C: $10
    ret nz                                        ; $514D: $C0

    jr nz, jr_033_5181                            ; $514E: $20 $31

    rrca                                          ; $5150: $0F
    xor d                                         ; $5151: $AA
    ld bc, $10FC                                  ; $5152: $01 $FC $10
    ld sp, $7B10                                  ; $5155: $31 $10 $7B
    jr nz, jr_033_5199                            ; $5158: $20 $3F

    rra                                           ; $515A: $1F
    ld a, [bc]                                    ; $515B: $0A
    dec bc                                        ; $515C: $0B
    ld bc, $7000                                  ; $515D: $01 $00 $70
    ld de, $5503                                  ; $5160: $11 $03 $55
    push de                                       ; $5163: $D5
    ld [hl], l                                    ; $5164: $75
    ld sp, $107F                                  ; $5165: $31 $7F $10
    pop af                                        ; $5168: $F1
    db $10                                        ; $5169: $10
    ei                                            ; $516A: $FB
    jr nz, @+$0E                                  ; $516B: $20 $0C

jr_033_516D:
    rst RST_38                                    ; $516D: $FF
    ld a, [bc]                                    ; $516E: $0A
    ld a, [$00F0]                                 ; $516F: $FA $F0 $00
    ld [hl], b                                    ; $5172: $70
    ret nz                                        ; $5173: $C0

    add b                                         ; $5174: $80
    dec a                                         ; $5175: $3D
    ldh [rLCDC], a                                ; $5176: $E0 $40
    ld de, $0051                                  ; $5178: $11 $51 $00
    sub b                                         ; $517B: $90
    jr c, jr_033_518E                             ; $517C: $38 $10

    ld d, c                                       ; $517E: $51
    cp $10                                        ; $517F: $FE $10

jr_033_5181:
    rst RST_28                                    ; $5181: $EF
    ld b, b                                       ; $5182: $40
    jp c, $B77C                                   ; $5183: $DA $7C $B7

    ld h, b                                       ; $5186: $60
    xor a                                         ; $5187: $AF
    ld d, b                                       ; $5188: $50
    ld a, b                                       ; $5189: $78
    pop de                                        ; $518A: $D1
    ret nz                                        ; $518B: $C0

    jr nz, jr_033_51BF                            ; $518C: $20 $31

jr_033_518E:
    rrca                                          ; $518E: $0F
    rlca                                          ; $518F: $07
    ld a, l                                       ; $5190: $7D
    db $FC                                        ; $5191: $FC
    cp $0F                                        ; $5192: $FE $0F
    rrca                                          ; $5194: $0F
    rrca                                          ; $5195: $0F
    ld bc, $123F                                  ; $5196: $01 $3F $12

jr_033_5199:
    jr nz, jr_033_51C6                            ; $5199: $20 $2B

    inc d                                         ; $519B: $14
    ld de, $344B                                  ; $519C: $11 $4B $34
    ld b, a                                       ; $519F: $47
    jr c, jr_033_5149                             ; $51A0: $38 $A7

    rlca                                          ; $51A2: $07
    ld e, d                                       ; $51A3: $5A
    cp a                                          ; $51A4: $BF
    ld b, b                                       ; $51A5: $40
    ld a, a                                       ; $51A6: $7F
    ld a, $00                                     ; $51A7: $3E $00
    ldh a, [$FF0B]                                ; $51A9: $F0 $0B
    jr nz, jr_033_5130                            ; $51AB: $20 $83

    ld a, h                                       ; $51AD: $7C
    inc de                                        ; $51AE: $13
    rst RST_00                                    ; $51AF: $C7
    jr c, jr_033_516D                             ; $51B0: $38 $BB

    ld b, h                                       ; $51B2: $44
    ld b, l                                       ; $51B3: $45
    ld l, d                                       ; $51B4: $6A
    cp d                                          ; $51B5: $BA
    dec [hl]                                      ; $51B6: $35
    ret nz                                        ; $51B7: $C0

    nop                                           ; $51B8: $00
    dec bc                                        ; $51B9: $0B
    ld hl, sp+$12                                 ; $51BA: $F8 $12
    xor b                                         ; $51BC: $A8
    ld b, b                                       ; $51BD: $40
    ld d, b                                       ; $51BE: $50

jr_033_51BF:
    ld de, $58A4                                  ; $51BF: $11 $A4 $58
    call nz, $CA38                                ; $51C2: $C4 $38 $CA
    or h                                          ; $51C5: $B4

jr_033_51C6:
    dec e                                         ; $51C6: $1D
    ld a, [$FC04]                                 ; $51C7: $FA $04 $FC
    ldh [$FFF1], a                                ; $51CA: $E0 $F1
    dec bc                                        ; $51CC: $0B
    ccf                                           ; $51CD: $3F
    ld [de], a                                    ; $51CE: $12
    nop                                           ; $51CF: $00
    cpl                                           ; $51D0: $2F
    db $10                                        ; $51D1: $10
    dec hl                                        ; $51D2: $2B
    inc d                                         ; $51D3: $14
    ld c, e                                       ; $51D4: $4B
    inc [hl]                                      ; $51D5: $34
    ld b, a                                       ; $51D6: $47
    jr c, jr_033_51DC                             ; $51D7: $38 $03

    and a                                         ; $51D9: $A7
    ld e, d                                       ; $51DA: $5A
    cp a                                          ; $51DB: $BF

jr_033_51DC:
    ld b, b                                       ; $51DC: $40
    ld a, a                                       ; $51DD: $7F
    ld a, $00                                     ; $51DE: $3E $00
    ldh a, [$FF81]                                ; $51E0: $F0 $81
    dec bc                                        ; $51E2: $0B
    add hl, sp                                    ; $51E3: $39
    add $45                                       ; $51E4: $C6 $45
    cp d                                          ; $51E6: $BA
    add e                                         ; $51E7: $83
    ld a, h                                       ; $51E8: $7C
    inc de                                        ; $51E9: $13
    sbc d                                         ; $51EA: $9A
    ld [hl], c                                    ; $51EB: $71
    cp e                                          ; $51EC: $BB
    ld b, h                                       ; $51ED: $44
    inc sp                                        ; $51EE: $33
    add b                                         ; $51EF: $80
    nop                                           ; $51F0: $00
    dec bc                                        ; $51F1: $0B
    ld hl, sp-$80                                 ; $51F2: $F8 $80
    ld [de], a                                    ; $51F4: $12
    add sp, $10                                   ; $51F5: $E8 $10
    xor b                                         ; $51F7: $A8
    ld d, b                                       ; $51F8: $50
    and h                                         ; $51F9: $A4
    ld e, b                                       ; $51FA: $58
    call nz, $3803                                ; $51FB: $C4 $03 $38
    jp z, $FAB4                                   ; $51FE: $CA $B4 $FA

    inc b                                         ; $5201: $04
    db $FC                                        ; $5202: $FC
    ldh [$FFF1], a                                ; $5203: $E0 $F1
    ret nc                                        ; $5205: $D0

    rrca                                          ; $5206: $0F
    ld bc, $101C                                  ; $5207: $01 $1C $10
    dec de                                        ; $520A: $1B
    inc c                                         ; $520B: $0C
    ld a, [de]                                    ; $520C: $1A
    rrca                                          ; $520D: $0F
    ld [$070A], sp                                ; $520E: $08 $0A $07
    dec bc                                        ; $5211: $0B
    ld b, $00                                     ; $5212: $06 $00
    ld bc, $050E                                  ; $5214: $01 $0E $05
    ld h, e                                       ; $5217: $63
    rra                                           ; $5218: $1F
    or b                                          ; $5219: $B0
    ld sp, $0304                                  ; $521A: $31 $04 $03
    ld [bc], a                                    ; $521D: $02
    sub b                                         ; $521E: $90
    nop                                           ; $521F: $00

jr_033_5220:
    ld d, l                                       ; $5220: $55
    nop                                           ; $5221: $00
    rlca                                          ; $5222: $07
    jr nz, jr_033_5235                            ; $5223: $20 $10

    ld [hl], b                                    ; $5225: $70
    jr nz, jr_033_5220                            ; $5226: $20 $F8

jr_033_5228:
    jr nz, jr_033_522B                            ; $5228: $20 $01

    db $F4                                        ; $522A: $F4

jr_033_522B:
    ld [$DC22], sp                                ; $522B: $08 $22 $DC
    ld e, [hl]                                    ; $522E: $5E
    ldh [$FF98], a                                ; $522F: $E0 $98
    db $10                                        ; $5231: $10
    ld bc, $D028                                  ; $5232: $01 $28 $D0

jr_033_5235:
    call z, $FA30                                 ; $5235: $CC $30 $FA
    nop                                           ; $5238: $00
    sub d                                         ; $5239: $92
    db $10                                        ; $523A: $10
    ld h, a                                       ; $523B: $67
    adc h                                         ; $523C: $8C
    db $10                                        ; $523D: $10
    ld bc, $3E7F                                  ; $523E: $01 $7F $3E
    db $10                                        ; $5241: $10
    add hl, sp                                    ; $5242: $39
    db $10                                        ; $5243: $10
    ld a, [bc]                                    ; $5244: $0A
    cp a                                          ; $5245: $BF
    ld b, b                                       ; $5246: $40
    and a                                         ; $5247: $A7
    ld e, b                                       ; $5248: $58
    ld d, c                                       ; $5249: $51
    ccf                                           ; $524A: $3F
    db $10                                        ; $524B: $10
    rrca                                          ; $524C: $0F
    xor d                                         ; $524D: $AA
    db $10                                        ; $524E: $10
    rlca                                          ; $524F: $07
    ld [de], a                                    ; $5250: $12
    inc bc                                        ; $5251: $03
    db $10                                        ; $5252: $10
    ld bc, $FF10                                  ; $5253: $01 $10 $FF
    add h                                         ; $5256: $84
    ld [de], a                                    ; $5257: $12
    cp e                                          ; $5258: $BB
    ld b, h                                       ; $5259: $44
    ld b, l                                       ; $525A: $45
    cp d                                          ; $525B: $BA
    dec [hl]                                      ; $525C: $35
    rst RST_00                                    ; $525D: $C7
    jr c, jr_033_5293                             ; $525E: $38 $33

    add e                                         ; $5260: $83
    ld a, h                                       ; $5261: $7C
    inc de                                        ; $5262: $13
    ld [hl], c                                    ; $5263: $71
    add hl, sp                                    ; $5264: $39
    nop                                           ; $5265: $00
    ld d, b                                       ; $5266: $50
    db $10                                        ; $5267: $10
    ld c, l                                       ; $5268: $4D
    ld bc, $FC32                                  ; $5269: $01 $32 $FC
    ld hl, sp+$10                                 ; $526C: $F8 $10
    inc [hl]                                      ; $526E: $34
    cp $30                                        ; $526F: $FE $30
    ret nc                                        ; $5271: $D0

    db $10                                        ; $5272: $10
    jr nc, @+$01                                  ; $5273: $30 $FF

    db $10                                        ; $5275: $10
    ei                                            ; $5276: $FB
    inc b                                         ; $5277: $04
    swap h                                        ; $5278: $CB $34
    push af                                       ; $527A: $F5
    ld d, c                                       ; $527B: $51
    sub c                                         ; $527C: $91
    ret nz                                        ; $527D: $C0

    db $10                                        ; $527E: $10
    ret nz                                        ; $527F: $C0

    ld [de], a                                    ; $5280: $12
    add b                                         ; $5281: $80
    db $10                                        ; $5282: $10
    xor b                                         ; $5283: $A8
    ld bc, $117F                                  ; $5284: $01 $7F $11
    ld a, $39                                     ; $5287: $3E $39
    cp a                                          ; $5289: $BF
    ld b, b                                       ; $528A: $40
    and a                                         ; $528B: $A7
    ld d, l                                       ; $528C: $55
    ld e, b                                       ; $528D: $58
    ld d, c                                       ; $528E: $51
    ccf                                           ; $528F: $3F
    db $10                                        ; $5290: $10
    rrca                                          ; $5291: $0F
    db $10                                        ; $5292: $10

jr_033_5293:
    rlca                                          ; $5293: $07
    ld [de], a                                    ; $5294: $12
    ld d, h                                       ; $5295: $54
    inc bc                                        ; $5296: $03
    db $10                                        ; $5297: $10
    ld bc, $FF10                                  ; $5298: $01 $10 $FF
    ld [de], a                                    ; $529B: $12
    cp e                                          ; $529C: $BB
    ld b, h                                       ; $529D: $44
    ld hl, $BA45                                  ; $529E: $21 $45 $BA
    dec [hl]                                      ; $52A1: $35
    rst RST_00                                    ; $52A2: $C7
    jr c, jr_033_5228                             ; $52A3: $38 $83

    ld a, h                                       ; $52A5: $7C
    inc de                                        ; $52A6: $13
    sbc d                                         ; $52A7: $9A
    ld [hl], c                                    ; $52A8: $71
    add hl, sp                                    ; $52A9: $39
    nop                                           ; $52AA: $00
    ld d, b                                       ; $52AB: $50

jr_033_52AC:
    db $10                                        ; $52AC: $10
    ld bc, $FC32                                  ; $52AD: $01 $32 $FC
    xor [hl]                                      ; $52B0: $AE
    ld de, $33F8                                  ; $52B1: $11 $F8 $33
    cp $30                                        ; $52B4: $FE $30
    db $10                                        ; $52B6: $10

jr_033_52B7:
    jr nc, @+$01                                  ; $52B7: $30 $FF

    add a                                         ; $52B9: $87
    jr nc, jr_033_52B7                            ; $52BA: $30 $FB

    inc b                                         ; $52BC: $04
    swap h                                        ; $52BD: $CB $34
    ld d, c                                       ; $52BF: $51
    or c                                          ; $52C0: $B1
    and b                                         ; $52C1: $A0
    xor a                                         ; $52C2: $AF
    db $10                                        ; $52C3: $10
    ret nz                                        ; $52C4: $C0

    ld [de], a                                    ; $52C5: $12
    add b                                         ; $52C6: $80
    db $10                                        ; $52C7: $10
    rrca                                          ; $52C8: $0F
    rrca                                          ; $52C9: $0F
    rrca                                          ; $52CA: $0F
    ret nz                                        ; $52CB: $C0

    rrca                                          ; $52CC: $0F
    ld bc, $004B                                  ; $52CD: $01 $4B $00
    ld d, h                                       ; $52D0: $54
    nop                                           ; $52D1: $00
    ld c, $01                                     ; $52D2: $0E $01
    db $10                                        ; $52D4: $10
    ld [bc], a                                    ; $52D5: $02
    jr nz, @+$06                                  ; $52D6: $20 $04

    inc bc                                        ; $52D8: $03
    db $FD                                        ; $52D9: $FD
    ld de, $9351                                  ; $52DA: $11 $51 $93
    ld de, $0640                                  ; $52DD: $11 $40 $06
    inc c                                         ; $52E0: $0C
    db $10                                        ; $52E1: $10
    ld b, d                                       ; $52E2: $42
    ld [hl-], a                                   ; $52E3: $32
    jr nz, jr_033_5327                            ; $52E4: $20 $41

    ld a, $80                                     ; $52E6: $3E $80
    ld a, a                                       ; $52E8: $7F
    ld h, b                                       ; $52E9: $60
    rst RST_38                                    ; $52EA: $FF
    call nc, Call_000_0C1E                        ; $52EB: $D4 $1E $0C
    add b                                         ; $52EE: $80
    db $10                                        ; $52EF: $10

jr_033_52F0:
    ld b, b                                       ; $52F0: $40
    jr nz, jr_033_5313                            ; $52F1: $20 $20

    ret nz                                        ; $52F3: $C0

    dec l                                         ; $52F4: $2D
    db $10                                        ; $52F5: $10
    ldh [rNR11], a                                ; $52F6: $E0 $11
    ld h, b                                       ; $52F8: $60
    ld [hl], b                                    ; $52F9: $70
    or c                                          ; $52FA: $B1
    add h                                         ; $52FB: $84
    db $10                                        ; $52FC: $10
    dec [hl]                                      ; $52FD: $35
    adc [hl]                                      ; $52FE: $8E
    inc b                                         ; $52FF: $04
    jr nz, jr_033_5304                            ; $5300: $20 $02

    ld [bc], a                                    ; $5302: $02
    db $10                                        ; $5303: $10

jr_033_5304:
    rlca                                          ; $5304: $07
    jr nz, @+$4F                                  ; $5305: $20 $4D

    ld [hl+], a                                   ; $5307: $22
    jr nc, jr_033_537A                            ; $5308: $30 $70

    jr nz, jr_033_530C                            ; $530A: $20 $00

jr_033_530C:
    jr nc, jr_033_530F                            ; $530C: $30 $01

    or c                                          ; $530E: $B1

jr_033_530F:
    adc l                                         ; $530F: $8D
    jr nz, jr_033_5316                            ; $5310: $20 $04

    inc bc                                        ; $5312: $03

jr_033_5313:
    ld [$11E0], sp                                ; $5313: $08 $E0 $11

jr_033_5316:
    ld b, $70                                     ; $5316: $06 $70
    and d                                         ; $5318: $A2
    or c                                          ; $5319: $B1
    ld hl, $7110                                  ; $531A: $21 $10 $71
    jr nz, jr_033_532F                            ; $531D: $20 $10

    jr nc, jr_033_5359                            ; $531F: $30 $38

    ld [$3120], a                                 ; $5321: $EA $20 $31
    ld bc, $1030                                  ; $5324: $01 $30 $10

jr_033_5327:
    ld c, h                                       ; $5327: $4C
    jr nz, jr_033_52AC                            ; $5328: $20 $82

    ld d, $7C                                     ; $532A: $16 $7C
    ld bc, $60FE                                  ; $532C: $01 $FE $60

jr_033_532F:
    rst RST_38                                    ; $532F: $FF
    ld e, $02                                     ; $5330: $1E $02
    ld b, b                                       ; $5332: $40
    or l                                          ; $5333: $B5
    db $10                                        ; $5334: $10
    ldh [rNR41], a                                ; $5335: $E0 $20
    ld sp, $1008                                  ; $5337: $31 $08 $10
    inc e                                         ; $533A: $1C
    jr nz, jr_033_52F0                            ; $533B: $20 $B3

    ld sp, $D180                                  ; $533D: $31 $80 $D1
    jr nz, @+$22                                  ; $5340: $20 $20

    ret nz                                        ; $5342: $C0

    ld de, $D451                                  ; $5343: $11 $51 $D4
    sub c                                         ; $5346: $91
    or e                                          ; $5347: $B3
    ld bc, $0230                                  ; $5348: $01 $30 $02
    jr nz, jr_033_5351                            ; $534B: $20 $04

    inc bc                                        ; $534D: $03
    ld bc, $0708                                  ; $534E: $01 $08 $07

jr_033_5351:
    db $10                                        ; $5351: $10
    rrca                                          ; $5352: $0F
    jr nz, @+$21                                  ; $5353: $20 $1F

    jr @+$52                                      ; $5355: $18 $50

    and b                                         ; $5357: $A0
    sub c                                         ; $5358: $91

jr_033_5359:
    ld b, h                                       ; $5359: $44
    db $10                                        ; $535A: $10
    add sp, $47                                   ; $535B: $E8 $47
    ld a, b                                       ; $535D: $78
    daa                                           ; $535E: $27
    ld a, h                                       ; $535F: $7C
    ld sp, $3F3B                                  ; $5360: $31 $3B $3F
    and b                                         ; $5363: $A0
    ldh [$FF0D], a                                ; $5364: $E0 $0D
    dec e                                         ; $5366: $1D
    ld [$2800], sp                                ; $5367: $08 $00 $28
    nop                                           ; $536A: $00
    add b                                         ; $536B: $80
    db $10                                        ; $536C: $10
    ld b, b                                       ; $536D: $40
    jr nz, jr_033_5390                            ; $536E: $20 $20

    ret nz                                        ; $5370: $C0

    jr jr_033_53C5                                ; $5371: $18 $52

    ldh [$FFE0], a                                ; $5373: $E0 $E0
    ld hl, sp-$50                                 ; $5375: $F8 $B0
    ldh a, [$FF30]                                ; $5377: $F0 $30
    ld [hl], b                                    ; $5379: $70

jr_033_537A:
    ld [de], a                                    ; $537A: $12
    add h                                         ; $537B: $84
    ld [hl], b                                    ; $537C: $70
    rla                                           ; $537D: $17
    ldh [c], a                                    ; $537E: $E2
    rrca                                          ; $537F: $0F
    ldh a, [c]                                    ; $5380: $F2
    db $10                                        ; $5381: $10
    or $1E                                        ; $5382: $F6 $1E
    ld de, $FCE4                                  ; $5384: $11 $E4 $FC
    db $10                                        ; $5387: $10
    db $10                                        ; $5388: $10
    sbc b                                         ; $5389: $98
    call c, $0088                                 ; $538A: $DC $88 $00
    add hl, sp                                    ; $538D: $39
    nop                                           ; $538E: $00
    inc c                                         ; $538F: $0C

jr_033_5390:
    db $10                                        ; $5390: $10
    or b                                          ; $5391: $B0
    jr nz, jr_033_53D3                            ; $5392: $20 $3F

    ld [de], a                                    ; $5394: $12
    nop                                           ; $5395: $00
    ld [$0F50], a                                 ; $5396: $EA $50 $0F
    dec b                                         ; $5399: $05
    inc bc                                        ; $539A: $03
    db $10                                        ; $539B: $10
    ld a, b                                       ; $539C: $78
    db $10                                        ; $539D: $10
    db $FD                                        ; $539E: $FD
    sbc b                                         ; $539F: $98
    jr nz, @+$01                                  ; $53A0: $20 $FF

    add l                                         ; $53A2: $85
    ld sp, $7071                                  ; $53A3: $31 $71 $70
    jr nz, jr_033_53E0                            ; $53A6: $20 $38

    ld a, [hl]                                    ; $53A8: $7E
    db $10                                        ; $53A9: $10

jr_033_53AA:
    ld de, $7351                                  ; $53AA: $11 $51 $73
    nop                                           ; $53AD: $00
    ret nc                                        ; $53AE: $D0

    inc bc                                        ; $53AF: $03
    inc bc                                        ; $53B0: $03
    xor d                                         ; $53B1: $AA
    db $10                                        ; $53B2: $10
    rra                                           ; $53B3: $1F
    jr nz, @-$3E                                  ; $53B4: $20 $C0

    jr nc, @-$1E                                  ; $53B6: $30 $E0

    jr nz, jr_033_53AA                            ; $53B8: $20 $F0

    ld [hl], l                                    ; $53BA: $75
    jr nz, jr_033_53BD                            ; $53BB: $20 $00

jr_033_53BD:
    db $F4                                        ; $53BD: $F4
    rrca                                          ; $53BE: $0F
    ret nz                                        ; $53BF: $C0

    db $10                                        ; $53C0: $10
    ldh [rNR42], a                                ; $53C1: $E0 $21
    xor b                                         ; $53C3: $A8
    nop                                           ; $53C4: $00

jr_033_53C5:
    inc b                                         ; $53C5: $04
    db $10                                        ; $53C6: $10
    ld c, $20                                     ; $53C7: $0E $20
    rra                                           ; $53C9: $1F
    ld a, [bc]                                    ; $53CA: $0A
    ld e, $7A                                     ; $53CB: $1E $7A
    ld [$A100], sp                                ; $53CD: $08 $00 $A1
    rrca                                          ; $53D0: $0F
    nop                                           ; $53D1: $00
    inc bc                                        ; $53D2: $03

jr_033_53D3:
    ld [hl-], a                                   ; $53D3: $32

jr_033_53D4:
    ld a, b                                       ; $53D4: $78
    and [hl]                                      ; $53D5: $A6
    db $10                                        ; $53D6: $10
    db $FD                                        ; $53D7: $FD
    jr nz, @+$01                                  ; $53D8: $20 $FF

    add l                                         ; $53DA: $85
    ld sp, $3871                                  ; $53DB: $31 $71 $38
    rra                                           ; $53DE: $1F
    db $10                                        ; $53DF: $10

jr_033_53E0:
    ld [hl], b                                    ; $53E0: $70
    jr nz, jr_033_53F4                            ; $53E1: $20 $11

    ld d, c                                       ; $53E3: $51
    ld [hl], e                                    ; $53E4: $73
    nop                                           ; $53E5: $00
    ret nc                                        ; $53E6: $D0

    xor l                                         ; $53E7: $AD
    ld bc, $101F                                  ; $53E8: $01 $1F $10
    ccf                                           ; $53EB: $3F
    ld hl, $8000                                  ; $53EC: $21 $00 $80
    db $10                                        ; $53EF: $10
    ld c, a                                       ; $53F0: $4F
    ret nz                                        ; $53F1: $C0

    jr nz, jr_033_53D4                            ; $53F2: $20 $E0

jr_033_53F4:
    ld b, b                                       ; $53F4: $40
    ld de, $A100                                  ; $53F5: $11 $00 $A1
    ld c, $5F                                     ; $53F8: $0E $5F
    ret nz                                        ; $53FA: $C0

    db $10                                        ; $53FB: $10
    ldh [rNR42], a                                ; $53FC: $E0 $21
    rrca                                          ; $53FE: $0F

Call_033_53FF:
    rrca                                          ; $53FF: $0F
    rrca                                          ; $5400: $0F
    ld c, $00                                     ; $5401: $0E $00
    ld h, h                                       ; $5403: $64
    inc bc                                        ; $5404: $03
    ld [hl], h                                    ; $5405: $74
    inc hl                                        ; $5406: $23
    ld a, h                                       ; $5407: $7C
    inc sp                                        ; $5408: $33
    ld a, $19                                     ; $5409: $3E $19
    ld [$1C3F], sp                                ; $540B: $08 $3F $1C
    rra                                           ; $540E: $1F
    rrca                                          ; $540F: $0F
    nop                                           ; $5410: $00
    ld b, $07                                     ; $5411: $06 $07
    ld bc, $30EA                                  ; $5413: $01 $EA $30
    ldh a, [$FF72]                                ; $5416: $F0 $72
    nop                                           ; $5418: $00
    ld a, [bc]                                    ; $5419: $0A
    rst RST_38                                    ; $541A: $FF
    rla                                           ; $541B: $17
    add b                                         ; $541C: $80
    ld l, b                                       ; $541D: $68
    ld a, a                                       ; $541E: $7F
    ld hl, $BD10                                  ; $541F: $21 $10 $BD
    db $10                                        ; $5422: $10
    sbc h                                         ; $5423: $9C
    cp [hl]                                       ; $5424: $BE
    inc e                                         ; $5425: $1C
    jr c, @+$20                                   ; $5426: $38 $1E

    inc c                                         ; $5428: $0C
    nop                                           ; $5429: $00
    ldh [rTAC], a                                 ; $542A: $E0 $07
    adc [hl]                                      ; $542C: $8E
    inc b                                         ; $542D: $04
    ld e, [hl]                                    ; $542E: $5E
    inc b                                         ; $542F: $04
    adc h                                         ; $5430: $8C
    ld a, $DC                                     ; $5431: $3E $DC
    inc a                                         ; $5433: $3C

jr_033_5434:
    ret c                                         ; $5434: $D8

    ld de, $30F8                                  ; $5435: $11 $F8 $30
    rra                                           ; $5438: $1F
    ldh a, [$FFC0]                                ; $5439: $F0 $C0
    ldh [rNR10], a                                ; $543B: $E0 $10
    jr nc, @+$22                                  ; $543D: $30 $20

    ld [hl], c                                    ; $543F: $71
    nop                                           ; $5440: $00
    ld b, b                                       ; $5441: $40
    nop                                           ; $5442: $00

jr_033_5443:
    add hl, bc                                    ; $5443: $09
    ld [hl], d                                    ; $5444: $72
    ld hl, $317A                                  ; $5445: $21 $7A $31
    ld a, h                                       ; $5448: $7C
    dec sp                                        ; $5449: $3B
    jr nz, jr_033_5488                            ; $544A: $20 $3C

    dec de                                        ; $544C: $1B
    ld de, $0C1F                                  ; $544D: $11 $1F $0C
    rrca                                          ; $5450: $0F
    inc bc                                        ; $5451: $03
    rlca                                          ; $5452: $07
    pop af                                        ; $5453: $F1
    db $10                                        ; $5454: $10
    jr nc, jr_033_5477                            ; $5455: $30 $20

    db $10                                        ; $5457: $10
    ld b, $0E                                     ; $5458: $06 $0E
    inc b                                         ; $545A: $04
    nop                                           ; $545B: $00
    ld d, e                                       ; $545C: $53
    nop                                           ; $545D: $00
    ld [$17FF], sp                                ; $545E: $08 $FF $17
    ld bc, $21FE                                  ; $5461: $01 $FE $21
    db $10                                        ; $5464: $10
    ld b, e                                       ; $5465: $43
    cp l                                          ; $5466: $BD
    db $10                                        ; $5467: $10
    add hl, sp                                    ; $5468: $39
    dec a                                         ; $5469: $3D
    jr jr_033_54A8                                ; $546A: $18 $3C

    stop                                          ; $546C: $10 $00
    ret nz                                        ; $546E: $C0

    ldh [rTAC], a                                 ; $546F: $E0 $07
    ld b, h                                       ; $5471: $44
    add b                                         ; $5472: $80
    ld l, $C4                                     ; $5473: $2E $C4

jr_033_5475:
    ld a, $CC                                     ; $5475: $3E $CC

jr_033_5477:
    ld [bc], a                                    ; $5477: $02
    ld a, h                                       ; $5478: $7C
    sbc b                                         ; $5479: $98
    db $FC                                        ; $547A: $FC
    jr c, jr_033_5475                             ; $547B: $38 $F8

    ldh a, [rP1]                                  ; $547D: $F0 $00
    ld h, b                                       ; $547F: $60
    ld l, [hl]                                    ; $5480: $6E
    ldh [$FFD0], a                                ; $5481: $E0 $D0
    db $10                                        ; $5483: $10
    ret nz                                        ; $5484: $C0

    ld d, b                                       ; $5485: $50
    jr nz, @+$12                                  ; $5486: $20 $10

jr_033_5488:
    jr nz, jr_033_5434                            ; $5488: $20 $AA

    nop                                           ; $548A: $00
    nop                                           ; $548B: $00

jr_033_548C:
    dec bc                                        ; $548C: $0B
    ld bc, $0210                                  ; $548D: $01 $10 $02
    jr nz, @+$06                                  ; $5490: $20 $04

    ld a, [de]                                    ; $5492: $1A
    inc bc                                        ; $5493: $03
    ld [$3107], sp                                ; $5494: $08 $07 $31
    ld de, $5018                                  ; $5497: $11 $18 $50
    jr c, jr_033_54A4                             ; $549A: $38 $08

    rla                                           ; $549C: $17
    inc a                                         ; $549D: $3C
    dec de                                        ; $549E: $1B
    rra                                           ; $549F: $1F
    ret nz                                        ; $54A0: $C0

    rrca                                          ; $54A1: $0F
    dec b                                         ; $54A2: $05
    dec e                                         ; $54A3: $1D

jr_033_54A4:
    push de                                       ; $54A4: $D5
    jr nc, jr_033_54A7                            ; $54A5: $30 $00

jr_033_54A7:
    nop                                           ; $54A7: $00

jr_033_54A8:
    dec b                                         ; $54A8: $05
    add b                                         ; $54A9: $80
    db $10                                        ; $54AA: $10
    ld b, b                                       ; $54AB: $40
    jr nz, jr_033_54B8                            ; $54AC: $20 $0A

    jr nz, @-$3E                                  ; $54AE: $20 $C0

    db $10                                        ; $54B0: $10
    ldh [$FF31], a                                ; $54B1: $E0 $31
    jr z, jr_033_54C5                             ; $54B3: $28 $10

    inc a                                         ; $54B5: $3C
    ld b, d                                       ; $54B6: $42
    ret z                                         ; $54B7: $C8

jr_033_54B8:
    db $10                                        ; $54B8: $10
    ret c                                         ; $54B9: $D8

    jr c, jr_033_548C                             ; $54BA: $38 $D0

    ldh a, [$FFA0]                                ; $54BC: $F0 $A0
    ld hl, sp+$54                                 ; $54BE: $F8 $54
    or b                                          ; $54C0: $B0
    jr nc, jr_033_5443                            ; $54C1: $30 $80

    nop                                           ; $54C3: $00
    nop                                           ; $54C4: $00

jr_033_54C5:
    ld bc, $0304                                  ; $54C5: $01 $04 $03
    ld [$0708], sp                                ; $54C8: $08 $08 $07
    db $10                                        ; $54CB: $10
    rrca                                          ; $54CC: $0F
    ldh [$FF1F], a                                ; $54CD: $E0 $1F
    ld b, b                                       ; $54CF: $40
    ccf                                           ; $54D0: $3F
    xor d                                         ; $54D1: $AA
    ret nc                                        ; $54D2: $D0

    ld a, a                                       ; $54D3: $7F
    ld de, $70E0                                  ; $54D4: $11 $E0 $70
    ldh a, [$FFB0]                                ; $54D7: $F0 $B0
    ld hl, sp-$69                                 ; $54D9: $F8 $97
    ldh a, [$FFFC]                                ; $54DB: $F0 $FC
    inc bc                                        ; $54DD: $03
    add b                                         ; $54DE: $80
    nop                                           ; $54DF: $00
    ldh [rNR10], a                                ; $54E0: $E0 $10
    add b                                         ; $54E2: $80
    call nz, $0310                                ; $54E3: $C4 $10 $03
    cp a                                          ; $54E6: $BF
    inc e                                         ; $54E7: $1C
    sbc h                                         ; $54E8: $9C
    ret nc                                        ; $54E9: $D0

    ld [hl], b                                    ; $54EA: $70
    adc a                                         ; $54EB: $8F
    and c                                         ; $54EC: $A1
    ld h, b                                       ; $54ED: $60
    rst RST_38                                    ; $54EE: $FF
    add hl, de                                    ; $54EF: $19
    ld b, b                                       ; $54F0: $40
    cp a                                          ; $54F1: $BF
    pop af                                        ; $54F2: $F1
    ld c, $62                                     ; $54F3: $0E $62
    ld b, [hl]                                    ; $54F5: $46
    ld bc, $0310                                  ; $54F6: $01 $10 $03
    rrca                                          ; $54F9: $0F
    ld b, $00                                     ; $54FA: $06 $00
    ld [hl], b                                    ; $54FC: $70
    ldh a, [rSB]                                  ; $54FD: $F0 $01
    ld h, b                                       ; $54FF: $60
    ld a, b                                       ; $5500: $78
    add b                                         ; $5501: $80
    ld a, h                                       ; $5502: $7C
    cp b                                          ; $5503: $B8
    ld a, $DC                                     ; $5504: $3E $DC
    db $10                                        ; $5506: $10
    ld c, c                                       ; $5507: $49
    ret nz                                        ; $5508: $C0

    ld sp, $DE3F                                  ; $5509: $31 $3F $DE
    db $10                                        ; $550C: $10
    jp nz, $B07F                                  ; $550D: $C2 $7F $B0

    ld [hl+], a                                   ; $5510: $22
    rst RST_38                                    ; $5511: $FF
    ld e, h                                       ; $5512: $5C
    db $10                                        ; $5513: $10
    ld l, h                                       ; $5514: $6C
    cp $E4                                        ; $5515: $FE $E4
    db $10                                        ; $5517: $10
    call nz, $FC28                                ; $5518: $C4 $28 $FC
    add b                                         ; $551B: $80
    nop                                           ; $551C: $00
    nop                                           ; $551D: $00
    ld bc, $0304                                  ; $551E: $01 $04 $03
    ld [$0701], sp                                ; $5521: $08 $01 $07
    db $10                                        ; $5524: $10
    rrca                                          ; $5525: $0F
    jr nz, jr_033_5547                            ; $5526: $20 $1F

    ld b, b                                       ; $5528: $40
    ccf                                           ; $5529: $3F
    ret nc                                        ; $552A: $D0

    ld d, l                                       ; $552B: $55
    ld a, a                                       ; $552C: $7F
    ld de, $70E0                                  ; $552D: $11 $E0 $70
    ldh a, [$FFB0]                                ; $5530: $F0 $B0
    ld hl, sp-$10                                 ; $5532: $F8 $F0
    cpl                                           ; $5534: $2F
    db $FC                                        ; $5535: $FC
    inc bc                                        ; $5536: $03
    add b                                         ; $5537: $80
    nop                                           ; $5538: $00
    ldh [rNR10], a                                ; $5539: $E0 $10
    add b                                         ; $553B: $80
    db $10                                        ; $553C: $10
    xor c                                         ; $553D: $A9
    inc bc                                        ; $553E: $03

jr_033_553F:
    sbc a                                         ; $553F: $9F
    db $10                                        ; $5540: $10
    sbc h                                         ; $5541: $9C
    ret nc                                        ; $5542: $D0

    ld [hl], b                                    ; $5543: $70
    adc a                                         ; $5544: $8F
    ld b, b                                       ; $5545: $40
    ld b, d                                       ; $5546: $42

jr_033_5547:
    rst RST_38                                    ; $5547: $FF
    add hl, de                                    ; $5548: $19
    ld b, b                                       ; $5549: $40
    cp a                                          ; $554A: $BF
    pop af                                        ; $554B: $F1
    ld c, $62                                     ; $554C: $0E $62
    inc bc                                        ; $554E: $03
    sbc b                                         ; $554F: $98
    db $10                                        ; $5550: $10
    ld b, $07                                     ; $5551: $06 $07
    ld d, b                                       ; $5553: $50
    ld bc, $60F0                                  ; $5554: $01 $F0 $60
    ld a, h                                       ; $5557: $7C
    ld bc, $7E80                                  ; $5558: $01 $80 $7E
    cp h                                          ; $555B: $BC
    inc a                                         ; $555C: $3C
    ret c                                         ; $555D: $D8

    ld a, $C0                                     ; $555E: $3E $C0
    db $10                                        ; $5560: $10
    jr jr_033_553F                                ; $5561: $18 $DC

    ccf                                           ; $5563: $3F
    sbc $10                                       ; $5564: $DE $10
    ld d, b                                       ; $5566: $50
    ld a, a                                       ; $5567: $7F
    cp b                                          ; $5568: $B8
    rst RST_38                                    ; $5569: $FF
    ld d, d                                       ; $556A: $52
    ld e, h                                       ; $556B: $5C
    db $10                                        ; $556C: $10
    ld l, h                                       ; $556D: $6C
    db $10                                        ; $556E: $10
    and $FE                                       ; $556F: $E6 $FE
    sub b                                         ; $5571: $90
    db $FC                                        ; $5572: $FC
    ccf                                           ; $5573: $3F
    nop                                           ; $5574: $00
    add b                                         ; $5575: $80
    db $10                                        ; $5576: $10
    rrca                                          ; $5577: $0F
    rrca                                          ; $5578: $0F
    rrca                                          ; $5579: $0F
    rrca                                          ; $557A: $0F
    ld bc, $4041                                  ; $557B: $01 $41 $40
    ld [hl], h                                    ; $557E: $74
    nop                                           ; $557F: $00
    rlca                                          ; $5580: $07
    rlca                                          ; $5581: $07
    inc b                                         ; $5582: $04
    inc bc                                        ; $5583: $03
    ld [$010E], sp                                ; $5584: $08 $0E $01
    ld [bc], a                                    ; $5587: $02
    ld [de], a                                    ; $5588: $12
    dec c                                         ; $5589: $0D
    inc de                                        ; $558A: $13
    inc c                                         ; $558B: $0C
    rla                                           ; $558C: $17
    ld [$187D], sp                                ; $558D: $08 $7D $18
    xor h                                         ; $5590: $AC
    ld [$103C], sp                                ; $5591: $08 $3C $10
    ld a, d                                       ; $5594: $7A
    db $10                                        ; $5595: $10
    ld [$7E24], sp                                ; $5596: $08 $24 $7E
    rst RST_10                                    ; $5599: $D7
    dec l                                         ; $559A: $2D
    ld l, b                                       ; $559B: $68
    jp c, $D928                                   ; $559C: $DA $28 $D9

    jr nz, @+$0F                                  ; $559F: $20 $0D

    db $FD                                        ; $55A1: $FD
    call nc, $0707                                ; $55A2: $D4 $07 $07
    add b                                         ; $55A5: $80
    ld [$08F0], sp                                ; $55A6: $08 $F0 $08
    adc b                                         ; $55A9: $88
    ld [hl], b                                    ; $55AA: $70
    ld a, [bc]                                    ; $55AB: $0A
    ret z                                         ; $55AC: $C8

    jr nc, @-$16                                  ; $55AD: $30 $E8

    db $10                                        ; $55AF: $10
    ld e, c                                       ; $55B0: $59
    ld [bc], a                                    ; $55B1: $02
    ld [$EF07], sp                                ; $55B2: $08 $07 $EF
    db $10                                        ; $55B5: $10
    add hl, de                                    ; $55B6: $19
    ld bc, $0820                                  ; $55B7: $01 $20 $08
    add b                                         ; $55BA: $80
    db $10                                        ; $55BB: $10
    add hl, de                                    ; $55BC: $19
    and b                                         ; $55BD: $A0
    dec b                                         ; $55BE: $05
    inc bc                                        ; $55BF: $03
    ld [$010E], sp                                ; $55C0: $08 $0E $01
    ld [de], a                                    ; $55C3: $12
    dec c                                         ; $55C4: $0D
    inc de                                        ; $55C5: $13
    dec d                                         ; $55C6: $15
    inc c                                         ; $55C7: $0C
    rla                                           ; $55C8: $17
    ld [$187D], sp                                ; $55C9: $08 $7D $18
    ld [$103C], sp                                ; $55CC: $08 $3C $10
    ld h, [hl]                                    ; $55CF: $66
    ld a, d                                       ; $55D0: $7A
    db $10                                        ; $55D1: $10
    ld [$7E24], sp                                ; $55D2: $08 $24 $7E
    dec l                                         ; $55D5: $2D
    ld l, b                                       ; $55D6: $68
    jp c, $28BA                                   ; $55D7: $DA $BA $28

    reti                                          ; $55DA: $D9


    jr nz, jr_033_55EA                            ; $55DB: $20 $0D

    db $EB                                        ; $55DD: $EB
    jr nz, jr_033_55E8                            ; $55DE: $20 $08

    ld [hl], b                                    ; $55E0: $70
    db $EB                                        ; $55E1: $EB
    db $10                                        ; $55E2: $10
    add hl, de                                    ; $55E3: $19
    dec b                                         ; $55E4: $05
    ld [$1C08], sp                                ; $55E5: $08 $08 $1C

jr_033_55E8:
    db $10                                        ; $55E8: $10

jr_033_55E9:
    add hl, de                                    ; $55E9: $19

jr_033_55EA:
    ld d, h                                       ; $55EA: $54
    add b                                         ; $55EB: $80
    ld [$08F0], sp                                ; $55EC: $08 $F0 $08
    adc b                                         ; $55EF: $88
    and b                                         ; $55F0: $A0
    ret z                                         ; $55F1: $C8

    jr nc, jr_033_560D                            ; $55F2: $30 $19

    add sp, $10                                   ; $55F4: $E8 $10
    rlca                                          ; $55F6: $07
    jr c, jr_033_5601                             ; $55F7: $38 $08

    inc bc                                        ; $55F9: $03
    ccf                                           ; $55FA: $3F
    ld [$6729], sp                                ; $55FB: $08 $29 $67
    dec de                                        ; $55FE: $1B
    add hl, bc                                    ; $55FF: $09
    ld a, a                                       ; $5600: $7F

jr_033_5601:
    jr z, jr_033_5672                             ; $5601: $28 $6F

    inc de                                        ; $5603: $13
    ld [$145C], sp                                ; $5604: $08 $5C $14
    ld [$0D17], sp                                ; $5607: $08 $17 $0D
    ld l, b                                       ; $560A: $68
    cp b                                          ; $560B: $B8
    ld h, d                                       ; $560C: $62

jr_033_560D:
    dec e                                         ; $560D: $1D
    inc [hl]                                      ; $560E: $34
    halt                                          ; $560F: $76
    add hl, bc                                    ; $5610: $09
    ret z                                         ; $5611: $C8

    jr z, @-$3E                                   ; $5612: $28 $C0

    ld [$8040], sp                                ; $5614: $08 $40 $80
    ld c, d                                       ; $5617: $4A
    ld a, b                                       ; $5618: $78
    ld [$B04C], sp                                ; $5619: $08 $4C $B0
    add hl, bc                                    ; $561C: $09
    ld a, h                                       ; $561D: $7C
    jr z, jr_033_568C                             ; $561E: $28 $6C

    dec d                                         ; $5620: $15
    sub b                                         ; $5621: $90
    xor h                                         ; $5622: $AC
    ld d, b                                       ; $5623: $50
    ld [$0DD0], sp                                ; $5624: $08 $D0 $0D
    db $FC                                        ; $5627: $FC
    cp b                                          ; $5628: $B8
    ld b, $8C                                     ; $5629: $06 $8C
    ld [hl], b                                    ; $562B: $70
    call c, $F820                                 ; $562C: $DC $20 $F8
    jr z, @+$09                                   ; $562F: $28 $07

    ld bc, $02F5                                  ; $5631: $01 $F5 $02

jr_033_5634:
    ld e, a                                       ; $5634: $5F
    ld a, h                                       ; $5635: $7C
    ld [$100E], sp                                ; $5636: $08 $0E $10
    rra                                           ; $5639: $1F
    jr jr_033_55E9                                ; $563A: $18 $AD

    ld [$6D0F], sp                                ; $563C: $08 $0F $6D
    rst RST_38                                    ; $563F: $FF
    nop                                           ; $5640: $00
    cpl                                           ; $5641: $2F
    ld a, [hl]                                    ; $5642: $7E
    nop                                           ; $5643: $00
    ld a, c                                       ; $5644: $79
    add c                                         ; $5645: $81
    nop                                           ; $5646: $00
    add hl, de                                    ; $5647: $19
    ld e, d                                       ; $5648: $5A
    ld [de], a                                    ; $5649: $12
    add e                                         ; $564A: $83
    ld a, h                                       ; $564B: $7C
    or h                                          ; $564C: $B4
    cp l                                          ; $564D: $BD
    inc b                                         ; $564E: $04
    add b                                         ; $564F: $80
    ld [bc], a                                    ; $5650: $02
    ld e, a                                       ; $5651: $5F
    ld a, h                                       ; $5652: $7C
    ld [$08F0], sp                                ; $5653: $08 $F0 $08
    ld [hl], l                                    ; $5656: $75
    ld hl, sp+$09                                 ; $5657: $F8 $09
    ld hl, $0100                                  ; $5659: $21 $00 $01
    nop                                           ; $565C: $00
    inc bc                                        ; $565D: $03
    ld [bc], a                                    ; $565E: $02
    ld a, [$AB29]                                 ; $565F: $FA $29 $AB
    dec l                                         ; $5662: $2D
    ld c, h                                       ; $5663: $4C
    ld [$100E], sp                                ; $5664: $08 $0E $10
    rra                                           ; $5667: $1F
    rst RST_28                                    ; $5668: $EF
    jr jr_033_5674                                ; $5669: $18 $09

    ld bc, $00FF                                  ; $566B: $01 $FF $00
    ld a, e                                       ; $566E: $7B
    dec hl                                        ; $566F: $2B
    add hl, de                                    ; $5670: $19
    ld a, c                                       ; $5671: $79

jr_033_5672:
    add c                                         ; $5672: $81
    nop                                           ; $5673: $00

jr_033_5674:
    ld l, l                                       ; $5674: $6D
    ld e, d                                       ; $5675: $5A
    ld [de], a                                    ; $5676: $12
    add e                                         ; $5677: $83
    ld a, h                                       ; $5678: $7C
    ld h, e                                       ; $5679: $63
    ld e, a                                       ; $567A: $5F
    add b                                         ; $567B: $80
    nop                                           ; $567C: $00
    ret nz                                        ; $567D: $C0

    ld [bc], a                                    ; $567E: $02
    add hl, hl                                    ; $567F: $29
    xor e                                         ; $5680: $AB
    dec l                                         ; $5681: $2D
    ld c, h                                       ; $5682: $4C
    xor a                                         ; $5683: $AF
    ld [$08F0], sp                                ; $5684: $08 $F0 $08
    ld hl, sp+$0A                                 ; $5687: $F8 $0A
    rlca                                          ; $5689: $07
    rlca                                          ; $568A: $07
    rlca                                          ; $568B: $07

jr_033_568C:
    ld hl, sp+$07                                 ; $568C: $F8 $07
    rlca                                          ; $568E: $07
    rlca                                          ; $568F: $07
    rlca                                          ; $5690: $07
    rlca                                          ; $5691: $07
    dec de                                        ; $5692: $1B
    inc b                                         ; $5693: $04
    db $10                                        ; $5694: $10
    rrca                                          ; $5695: $0F
    rrca                                          ; $5696: $0F
    rla                                           ; $5697: $17
    ld [$381F], sp                                ; $5698: $08 $1F $38
    add hl, bc                                    ; $569B: $09
    add hl, sp                                    ; $569C: $39
    add hl, bc                                    ; $569D: $09
    ld hl, sp+$3B                                 ; $569E: $F8 $3B
    ld [$1A2B], sp                                ; $56A0: $08 $2B $1A
    dec b                                         ; $56A3: $05
    reti                                          ; $56A4: $D9


    ld a, [hl]                                    ; $56A5: $7E
    rst RST_38                                    ; $56A6: $FF

jr_033_56A7:
    and e                                         ; $56A7: $A3

jr_033_56A8:
    jr jr_033_56A7                                ; $56A8: $18 $FD

    jr jr_033_56A7                                ; $56AA: $18 $FB

    inc a                                         ; $56AC: $3C
    jp Jump_000_1108                              ; $56AD: $C3 $08 $11


    adc a                                         ; $56B0: $8F
    jr nc, jr_033_5634                            ; $56B1: $30 $81

    db $DB                                        ; $56B3: $DB
    inc h                                         ; $56B4: $24
    add hl, bc                                    ; $56B5: $09
    ld a, c                                       ; $56B6: $79
    dec bc                                        ; $56B7: $0B
    ld d, b                                       ; $56B8: $50
    add b                                         ; $56B9: $80
    cp $58                                        ; $56BA: $FE $58
    and b                                         ; $56BC: $A0
    ret z                                         ; $56BD: $C8

    jr nc, jr_033_56A8                            ; $56BE: $30 $E8

    db $10                                        ; $56C0: $10
    ld hl, sp-$31                                 ; $56C1: $F8 $CF
    jr c, jr_033_56CE                             ; $56C3: $38 $09

    ld [$09F0], sp                                ; $56C5: $08 $F0 $09
    dec sp                                        ; $56C8: $3B
    ld [$C92B], sp                                ; $56C9: $08 $2B $C9
    ld a, [de]                                    ; $56CC: $1A
    dec b                                         ; $56CD: $05

jr_033_56CE:
    dec de                                        ; $56CE: $1B
    inc b                                         ; $56CF: $04
    ldh [rIF], a                                  ; $56D0: $E0 $0F
    rla                                           ; $56D2: $17
    ret nz                                        ; $56D3: $C0

    ld a, a                                       ; $56D4: $7F
    rra                                           ; $56D5: $1F
    jr c, jr_033_56E1                             ; $56D6: $38 $09

    add hl, sp                                    ; $56D8: $39

jr_033_56D9:
    add hl, bc                                    ; $56D9: $09
    ld a, [hl-]                                   ; $56DA: $3A
    rra                                           ; $56DB: $1F
    cp $14                                        ; $56DC: $FE $14
    reti                                          ; $56DE: $D9


    ld a, [hl]                                    ; $56DF: $7E

jr_033_56E0:
    rst RST_38                                    ; $56E0: $FF

jr_033_56E1:
    jr jr_033_56E0                                ; $56E1: $18 $FD

jr_033_56E3:
    jr jr_033_56E0                                ; $56E3: $18 $FB

    inc a                                         ; $56E5: $3C
    ld [hl], c                                    ; $56E6: $71
    jp Jump_000_1108                              ; $56E7: $C3 $08 $11


    jr nc, @-$7D                                  ; $56EA: $30 $81

    db $DB                                        ; $56EC: $DB
    inc h                                         ; $56ED: $24
    add hl, bc                                    ; $56EE: $09
    ldh a, [$FF79]                                ; $56EF: $F0 $79
    dec bc                                        ; $56F1: $0B
    ld d, b                                       ; $56F2: $50
    cp $58                                        ; $56F3: $FE $58
    and b                                         ; $56F5: $A0
    ret z                                         ; $56F6: $C8

    jr nc, @+$1B                                  ; $56F7: $30 $19

    add sp, $10                                   ; $56F9: $E8 $10
    ld hl, sp+$38                                 ; $56FB: $F8 $38
    add hl, bc                                    ; $56FD: $09
    ld [$09F0], sp                                ; $56FE: $08 $F0 $09
    db $F4                                        ; $5701: $F4
    ld a, [hl-]                                   ; $5702: $3A
    rra                                           ; $5703: $1F
    cp $03                                        ; $5704: $FE $03
    inc bc                                        ; $5706: $03
    ld [$010F], sp                                ; $5707: $08 $0F $01
    ld [bc], a                                    ; $570A: $02
    inc de                                        ; $570B: $13
    dec c                                         ; $570C: $0D
    rla                                           ; $570D: $17
    add hl, bc                                    ; $570E: $09
    dec de                                        ; $570F: $1B
    dec b                                         ; $5710: $05
    ld [$B304], sp                                ; $5711: $08 $04 $B3
    ld [$0907], sp                                ; $5714: $08 $07 $09
    ld c, b                                       ; $5717: $48
    ld [$8010], sp                                ; $5718: $08 $10 $80
    nop                                           ; $571B: $00
    call nc, $02E7                                ; $571C: $D4 $E7 $02
    add b                                         ; $571F: $80
    ld [$08E0], sp                                ; $5720: $08 $E0 $08
    sub b                                         ; $5723: $90
    ld h, b                                       ; $5724: $60
    dec bc                                        ; $5725: $0B
    ret nc                                        ; $5726: $D0

    jr nz, jr_033_56D9                            ; $5727: $20 $B0

    ld b, b                                       ; $5729: $40
    ld a, [bc]                                    ; $572A: $0A
    ret nz                                        ; $572B: $C0

jr_033_572C:
    add hl, bc                                    ; $572C: $09
    ld c, c                                       ; $572D: $49
    push af                                       ; $572E: $F5
    ld hl, sp-$80                                 ; $572F: $F8 $80
    adc c                                         ; $5731: $89
    dec b                                         ; $5732: $05
    rra                                           ; $5733: $1F
    add hl, bc                                    ; $5734: $09
    rrca                                          ; $5735: $0F
    add hl, de                                    ; $5736: $19
    ld e, e                                       ; $5737: $5B
    ccf                                           ; $5738: $3F
    jr @+$61                                      ; $5739: $18 $5F

    sbc b                                         ; $573B: $98
    ld [$282F], sp                                ; $573C: $08 $2F $28
    ld a, [hl-]                                   ; $573F: $3A
    ld c, e                                       ; $5740: $4B
    ld a, a                                       ; $5741: $7F
    jr jr_033_56E3                                ; $5742: $18 $9F

    ld l, a                                       ; $5744: $6F
    ld [$1060], sp                                ; $5745: $08 $60 $10
    jr z, jr_033_5797                             ; $5748: $28 $4D

    add hl, de                                    ; $574A: $19
    ld [$183C], sp                                ; $574B: $08 $3C $18
    nop                                           ; $574E: $00
    ld a, [$30C3]                                 ; $574F: $FA $C3 $30
    ld [hl], $C1                                  ; $5752: $36 $C1
    ld a, $0F                                     ; $5754: $3E $0F
    dec c                                         ; $5756: $0D
    rst RST_38                                    ; $5757: $FF
    sbc b                                         ; $5758: $98
    dec bc                                        ; $5759: $0B
    call c, $882A                                 ; $575A: $DC $2A $88
    cp l                                          ; $575D: $BD

jr_033_575E:
    db $FC                                        ; $575E: $FC
    ld hl, sp+$09                                 ; $575F: $F8 $09
    ldh a, [rNR24]                                ; $5761: $F0 $19
    db $FC                                        ; $5763: $FC
    sub l                                         ; $5764: $95

jr_033_5765:
    jr jr_033_5765                                ; $5765: $18 $FE

    inc b                                         ; $5767: $04
    sbc b                                         ; $5768: $98
    or $08                                        ; $5769: $F6 $08
    ld b, $28                                     ; $576B: $06 $28
    cp $39                                        ; $576D: $FE $39
    ld e, b                                       ; $576F: $58
    add hl, de                                    ; $5770: $19
    ld l, b                                       ; $5771: $68
    jr jr_033_5784                                ; $5772: $18 $10

    ld [$B9C0], sp                                ; $5774: $08 $C0 $B9
    ld [$1020], sp                                ; $5777: $08 $20 $10
    add hl, de                                    ; $577A: $19
    ld bc, $0F1F                                  ; $577B: $01 $1F $0F
    ld [$1AA7], sp                                ; $577E: $08 $A7 $1A
    ccf                                           ; $5781: $3F
    jr jr_033_57E3                                ; $5782: $18 $5F

jr_033_5784:
    cpl                                           ; $5784: $2F
    ld [$2880], sp                                ; $5785: $08 $80 $28
    and l                                         ; $5788: $A5
    ld a, [hl-]                                   ; $5789: $3A
    ld a, a                                       ; $578A: $7F
    jr jr_033_572C                                ; $578B: $18 $9F

    ld h, b                                       ; $578D: $60
    ld [$006F], sp                                ; $578E: $08 $6F $00
    and [hl]                                      ; $5791: $A6
    jr c, jr_033_57AD                             ; $5792: $38 $19

    ld [$183C], sp                                ; $5794: $08 $3C $18

jr_033_5797:
    nop                                           ; $5797: $00
    ld a, [$9BC3]                                 ; $5798: $FA $C3 $9B
    jr nc, jr_033_575E                            ; $579B: $30 $C1

    ld a, $0F                                     ; $579D: $3E $0F
    dec c                                         ; $579F: $0D
    rst RST_38                                    ; $57A0: $FF
    sbc b                                         ; $57A1: $98
    dec bc                                        ; $57A2: $0B
    inc de                                        ; $57A3: $13
    call c, $BD88                                 ; $57A4: $DC $88 $BD
    db $FC                                        ; $57A7: $FC
    ld hl, sp-$10                                 ; $57A8: $F8 $F0
    ld [$4A1A], sp                                ; $57AA: $08 $1A $4A

jr_033_57AD:
    db $FC                                        ; $57AD: $FC

jr_033_57AE:
    jr jr_033_57AE                                ; $57AE: $18 $FE

    db $F4                                        ; $57B0: $F4
    sbc b                                         ; $57B1: $98
    ld b, $08                                     ; $57B2: $06 $08
    or $FF                                        ; $57B4: $F6 $FF
    jr z, jr_033_57F1                             ; $57B6: $28 $39

    ld e, b                                       ; $57B8: $58
    add hl, de                                    ; $57B9: $19
    ld l, b                                       ; $57BA: $68
    jr jr_033_57BD                                ; $57BB: $18 $00

jr_033_57BD:
    jr jr_033_581E                                ; $57BD: $18 $5F

    ret nz                                        ; $57BF: $C0

    ld [$1020], sp                                ; $57C0: $08 $20 $10
    add hl, de                                    ; $57C3: $19
    rlca                                          ; $57C4: $07
    rlca                                          ; $57C5: $07
    rlca                                          ; $57C6: $07
    db $FC                                        ; $57C7: $FC
    rlca                                          ; $57C8: $07
    rlca                                          ; $57C9: $07
    rlca                                          ; $57CA: $07
    rlca                                          ; $57CB: $07
    rlca                                          ; $57CC: $07
    ld bc, $404C                                  ; $57CD: $01 $4C $40
    ld l, e                                       ; $57D0: $6B
    nop                                           ; $57D1: $00
    rlca                                          ; $57D2: $07
    ld [bc], a                                    ; $57D3: $02
    inc bc                                        ; $57D4: $03
    ld [$1007], sp                                ; $57D5: $08 $07 $10
    dec bc                                        ; $57D8: $0B
    ld c, e                                       ; $57D9: $4B
    rrca                                          ; $57DA: $0F
    db $10                                        ; $57DB: $10
    rra                                           ; $57DC: $1F
    ld b, $18                                     ; $57DD: $06 $18
    dec b                                         ; $57DF: $05
    jr jr_033_581B                                ; $57E0: $18 $39

    or h                                          ; $57E2: $B4

jr_033_57E3:
    add hl, bc                                    ; $57E3: $09
    inc b                                         ; $57E4: $04
    rst RST_18                                    ; $57E5: $DF
    db $FD                                        ; $57E6: $FD
    call z, $F010                                 ; $57E7: $CC $10 $F0
    rst RST_08                                    ; $57EA: $CF
    ld hl, $FFF8                                  ; $57EB: $21 $F8 $FF
    add hl, bc                                    ; $57EE: $09
    add [hl]                                      ; $57EF: $86
    ld a, c                                       ; $57F0: $79

jr_033_57F1:
    reti                                          ; $57F1: $D9


    and $28                                       ; $57F2: $E6 $28
    ld b, $67                                     ; $57F4: $06 $67
    ldh [c], a                                    ; $57F6: $E2
    db $FD                                        ; $57F7: $FD
    ldh a, [c]                                    ; $57F8: $F2
    xor l                                         ; $57F9: $AD
    rst RST_18                                    ; $57FA: $DF
    dec b                                         ; $57FB: $05
    add b                                         ; $57FC: $80
    xor l                                         ; $57FD: $AD
    inc c                                         ; $57FE: $0C
    ld b, b                                       ; $57FF: $40
    db $10                                        ; $5800: $10
    ld h, b                                       ; $5801: $60
    ld [$E019], sp                                ; $5802: $08 $19 $E0
    ld c, h                                       ; $5805: $4C
    xor a                                         ; $5806: $AF
    sbc c                                         ; $5807: $99
    inc b                                         ; $5808: $04
    ld [$100E], sp                                ; $5809: $08 $0E $10
    add hl, de                                    ; $580C: $19
    ld c, b                                       ; $580D: $48
    ld [$78D2], sp                                ; $580E: $08 $D2 $78
    db $10                                        ; $5811: $10
    ld b, e                                       ; $5812: $43
    jr @+$09                                      ; $5813: $18 $07

    inc bc                                        ; $5815: $03
    dec bc                                        ; $5816: $0B
    rrca                                          ; $5817: $0F
    sub a                                         ; $5818: $97
    db $10                                        ; $5819: $10
    rra                                           ; $581A: $1F

jr_033_581B:
    ld b, $18                                     ; $581B: $06 $18
    dec b                                         ; $581D: $05

jr_033_581E:
    jr jr_033_5859                                ; $581E: $18 $39

    add hl, bc                                    ; $5820: $09
    xor e                                         ; $5821: $AB
    ret nz                                        ; $5822: $C0

    jr nz, jr_033_57BD                            ; $5823: $20 $98

    ld [hl], b                                    ; $5825: $70
    db $10                                        ; $5826: $10
    ld hl, $0518                                  ; $5827: $21 $18 $05
    ret nc                                        ; $582A: $D0

    ld [hl], b                                    ; $582B: $70
    ld [$10CC], sp                                ; $582C: $08 $CC $10
    ldh a, [$FFCF]                                ; $582F: $F0 $CF
    ld hl, sp-$01                                 ; $5831: $F8 $FF
    add h                                         ; $5833: $84
    add hl, bc                                    ; $5834: $09
    add [hl]                                      ; $5835: $86
    ld a, c                                       ; $5836: $79
    reti                                          ; $5837: $D9


    and $28                                       ; $5838: $E6 $28
    ld h, a                                       ; $583A: $67
    ldh [c], a                                    ; $583B: $E2
    dec d                                         ; $583C: $15
    db $FD                                        ; $583D: $FD
    ldh a, [c]                                    ; $583E: $F2
    xor l                                         ; $583F: $AD
    xor c                                         ; $5840: $A9
    add b                                         ; $5841: $80
    ld [$10C0], sp                                ; $5842: $08 $C0 $10
    xor a                                         ; $5845: $AF
    add hl, de                                    ; $5846: $19
    ld [$1C08], sp                                ; $5847: $08 $08 $1C
    db $10                                        ; $584A: $10
    add hl, de                                    ; $584B: $19
    add hl, sp                                    ; $584C: $39
    dec bc                                        ; $584D: $0B
    ld e, d                                       ; $584E: $5A
    ld b, b                                       ; $584F: $40
    db $10                                        ; $5850: $10
    ld h, b                                       ; $5851: $60
    ld [$E019], sp                                ; $5852: $08 $19 $E0
    ld c, h                                       ; $5855: $4C
    ld bc, $18B0                                  ; $5856: $01 $B0 $18

jr_033_5859:
    ld [bc], a                                    ; $5859: $02
    db $10                                        ; $585A: $10
    add hl, bc                                    ; $585B: $09
    inc [hl]                                      ; $585C: $34
    inc bc                                        ; $585D: $03
    ld a, [hl]                                    ; $585E: $7E
    scf                                           ; $585F: $37
    ld [bc], a                                    ; $5860: $02
    ld a, a                                       ; $5861: $7F
    dec a                                         ; $5862: $3D
    ccf                                           ; $5863: $3F
    rla                                           ; $5864: $17
    rra                                           ; $5865: $1F
    dec c                                         ; $5866: $0D
    ld [$A707], sp                                ; $5867: $08 $07 $A7
    ld [$400F], sp                                ; $586A: $08 $0F $40
    ld a, [de]                                    ; $586D: $1A
    dec de                                        ; $586E: $1B
    xor b                                         ; $586F: $A8
    add b                                         ; $5870: $80
    sbc b                                         ; $5871: $98
    xor $40                                       ; $5872: $EE $40
    db $10                                        ; $5874: $10
    ld b, b                                       ; $5875: $40
    ld b, $00                                     ; $5876: $06 $00
    jr c, jr_033_587B                             ; $5878: $38 $01

    add b                                         ; $587A: $80

jr_033_587B:
    and b                                         ; $587B: $A0
    ld [$1040], sp                                ; $587C: $08 $40 $10
    inc h                                         ; $587F: $24
    ret nz                                        ; $5880: $C0

    xor d                                         ; $5881: $AA
    ld b, h                                       ; $5882: $44
    sub d                                         ; $5883: $92
    ld [bc], a                                    ; $5884: $02
    ld l, h                                       ; $5885: $6C
    add h                                         ; $5886: $84
    ld hl, sp-$2C                                 ; $5887: $F8 $D4
    xor b                                         ; $5889: $A8
    jp c, $C250                                   ; $588A: $DA $50 $C2

    nop                                           ; $588D: $00
    db $FC                                        ; $588E: $FC
    pop af                                        ; $588F: $F1
    sbc $F9                                       ; $5890: $DE $F9
    or $7D                                        ; $5892: $F6 $7D
    or d                                          ; $5894: $B2
    cp $1A                                        ; $5895: $FE $1A
    jr @+$20                                      ; $5897: $18 $1E

    inc c                                         ; $5899: $0C
    nop                                           ; $589A: $00
    ld a, [$0803]                                 ; $589B: $FA $03 $08
    scf                                           ; $589E: $37
    add e                                         ; $589F: $83
    db $10                                        ; $58A0: $10
    ld a, a                                       ; $58A1: $7F
    inc [hl]                                      ; $58A2: $34
    rst RST_38                                    ; $58A3: $FF
    ld d, h                                       ; $58A4: $54
    ld d, a                                       ; $58A5: $57
    jr z, @+$4B                                   ; $58A6: $28 $49

    cp d                                          ; $58A8: $BA
    ld bc, $0A01                                  ; $58A9: $01 $01 $0A
    dec b                                         ; $58AC: $05
    add hl, sp                                    ; $58AD: $39
    rra                                           ; $58AE: $1F
    ld [$D43F], sp                                ; $58AF: $08 $3F $D4
    ld de, $B002                                  ; $58B2: $11 $02 $B0
    ld [$10F8], sp                                ; $58B5: $08 $F8 $10
    db $FC                                        ; $58B8: $FC
    xor b                                         ; $58B9: $A8
    sub $00                                       ; $58BA: $D6 $00
    ld c, d                                       ; $58BC: $4A
    add b                                         ; $58BD: $80
    ld [$10C0], sp                                ; $58BE: $08 $C0 $10
    add hl, bc                                    ; $58C1: $09
    ldh [rOCPS], a                                ; $58C2: $E0 $6A
    ld b, b                                       ; $58C4: $40
    nop                                           ; $58C5: $00
    jr c, @+$04                                   ; $58C6: $38 $02

    ld [$09FF], sp                                ; $58C8: $08 $FF $09
    ld sp, hl                                     ; $58CB: $F9
    cp l                                          ; $58CC: $BD
    ld [$FBA6], sp                                ; $58CD: $08 $A6 $FB
    rlca                                          ; $58D0: $07
    rlca                                          ; $58D1: $07
    inc bc                                        ; $58D2: $03
    add b                                         ; $58D3: $80
    ld [$C056], sp                                ; $58D4: $08 $56 $C0
    ld [$10F8], sp                                ; $58D7: $08 $F8 $10
    db $FC                                        ; $58DA: $FC
    db $10                                        ; $58DB: $10
    ld c, c                                       ; $58DC: $49
    rlca                                          ; $58DD: $07
    and b                                         ; $58DE: $A0
    ld [$102F], sp                                ; $58DF: $08 $2F $10
    ld a, a                                       ; $58E2: $7F
    jr z, @+$01                                   ; $58E3: $28 $FF

    ld c, b                                       ; $58E5: $48
    rst RST_28                                    ; $58E6: $EF
    ld l, e                                       ; $58E7: $6B
    ld b, a                                       ; $58E8: $47
    nop                                           ; $58E9: $00
    ld c, b                                       ; $58EA: $48
    ld bc, $0308                                  ; $58EB: $01 $08 $03
    db $10                                        ; $58EE: $10
    add hl, de                                    ; $58EF: $19
    jp nc, $0309                                  ; $58F0: $D2 $09 $03

    add hl, de                                    ; $58F3: $19
    ld [$183F], sp                                ; $58F4: $08 $3F $18
    ld [$A81F], sp                                ; $58F7: $08 $1F $A8
    add hl, sp                                    ; $58FA: $39
    add b                                         ; $58FB: $80
    ld [$10D0], sp                                ; $58FC: $08 $D0 $10
    ld hl, sp+$50                                 ; $58FF: $F8 $50
    db $FC                                        ; $5901: $FC
    sbc l                                         ; $5902: $9D
    ld hl, sp-$24                                 ; $5903: $F8 $DC
    adc b                                         ; $5905: $88
    nop                                           ; $5906: $00
    xor d                                         ; $5907: $AA
    ld l, c                                       ; $5908: $69
    ret nz                                        ; $5909: $C0

    db $10                                        ; $590A: $10
    push de                                       ; $590B: $D5
    add hl, bc                                    ; $590C: $09
    add hl, hl                                    ; $590D: $29
    ld [bc], a                                    ; $590E: $02
    ld [$09FF], sp                                ; $590F: $08 $FF $09
    ld sp, hl                                     ; $5912: $F9
    ld [$A67A], sp                                ; $5913: $08 $7A $A6
    sub d                                         ; $5916: $92
    rlca                                          ; $5917: $07
    rlca                                          ; $5918: $07
    inc b                                         ; $5919: $04
    add b                                         ; $591A: $80
    ld [$AFC0], sp                                ; $591B: $08 $C0 $AF
    ld [$10F8], sp                                ; $591E: $08 $F8 $10
    db $FC                                        ; $5921: $FC
    db $10                                        ; $5922: $10
    ld a, a                                       ; $5923: $7F
    rlca                                          ; $5924: $07
    rlca                                          ; $5925: $07
    ld sp, hl                                     ; $5926: $F9
    rlca                                          ; $5927: $07
    rlca                                          ; $5928: $07
    rlca                                          ; $5929: $07
    rlca                                          ; $592A: $07
    rlca                                          ; $592B: $07
    rrca                                          ; $592C: $0F
    inc b                                         ; $592D: $04
    ld [$0755], sp                                ; $592E: $08 $55 $07
    ld [$1A05], sp                                ; $5931: $08 $05 $1A
    ld [bc], a                                    ; $5934: $02
    db $10                                        ; $5935: $10
    inc bc                                        ; $5936: $03
    ld [$1BF8], sp                                ; $5937: $08 $F8 $1B
    ld [$D700], sp                                ; $593A: $08 $00 $D7
    inc b                                         ; $593D: $04
    ld hl, sp-$49                                 ; $593E: $F8 $B7
    ei                                            ; $5940: $FB
    ld bc, $BBB4                                  ; $5941: $01 $B4 $BB
    call nc, Call_033_5BBC                        ; $5944: $D4 $BC $5B
    cp l                                          ; $5947: $BD
    ld d, d                                       ; $5948: $52
    jr jr_033_595B                                ; $5949: $18 $10

    db $DB                                        ; $594B: $DB
    ld a, h                                       ; $594C: $7C
    adc e                                         ; $594D: $8B
    ld [$FAB3], sp                                ; $594E: $08 $B3 $FA
    ld [hl], c                                    ; $5951: $71
    pop af                                        ; $5952: $F1
    ld [hl], e                                    ; $5953: $73
    ld h, b                                       ; $5954: $60
    nop                                           ; $5955: $00
    rst RST_20                                    ; $5956: $E7
    ld [bc], a                                    ; $5957: $02
    ld b, b                                       ; $5958: $40
    add b                                         ; $5959: $80
    rrca                                          ; $595A: $0F

jr_033_595B:
    rrca                                          ; $595B: $0F
    pop hl                                        ; $595C: $E1
    nop                                           ; $595D: $00
    rst RST_10                                    ; $595E: $D7
    inc b                                         ; $595F: $04
    rra                                           ; $5960: $1F
    inc b                                         ; $5961: $04
    ccf                                           ; $5962: $3F
    rla                                           ; $5963: $17
    ld [$1355], sp                                ; $5964: $08 $55 $13
    jr z, @+$08                                   ; $5967: $28 $06

    ld [$3A0C], sp                                ; $5969: $08 $0C $3A
    ld e, $00                                     ; $596C: $1E $00
    ldh [$FFB7], a                                ; $596E: $E0 $B7
    rlca                                          ; $5970: $07
    nop                                           ; $5971: $00
    ld hl, sp-$49                                 ; $5972: $F8 $B7
    ei                                            ; $5974: $FB
    or h                                          ; $5975: $B4
    cp e                                          ; $5976: $BB
    db $10                                        ; $5977: $10
    call nc, $DBBC                                ; $5978: $D4 $BC $DB
    ld [$FED3], sp                                ; $597B: $08 $D3 $FE
    sbc c                                         ; $597E: $99
    db $FD                                        ; $597F: $FD
    ld de, $7808                                  ; $5980: $11 $08 $78
    jr nc, jr_033_59FD                            ; $5983: $30 $78

    ld [hl], b                                    ; $5985: $70
    ldh a, [$FF60]                                ; $5986: $F0 $60
    nop                                           ; $5988: $00
    db $E3                                        ; $5989: $E3
    rst RST_20                                    ; $598A: $E7
    ld [bc], a                                    ; $598B: $02
    ld e, b                                       ; $598C: $58
    add b                                         ; $598D: $80
    ld d, b                                       ; $598E: $50
    and b                                         ; $598F: $A0
    add hl, bc                                    ; $5990: $09
    add hl, hl                                    ; $5991: $29
    ccf                                           ; $5992: $3F
    or b                                          ; $5993: $B0
    ld b, b                                       ; $5994: $40
    ldh [$FFC0], a                                ; $5995: $E0 $C0
    add hl, bc                                    ; $5997: $09
    nop                                           ; $5998: $00
    or a                                          ; $5999: $B7
    rlca                                          ; $599A: $07
    xor e                                         ; $599B: $AB
    inc b                                         ; $599C: $04
    ld bc, $0B08                                  ; $599D: $01 $08 $0B
    ld [$101F], sp                                ; $59A0: $08 $1F $10
    ld [$0E55], sp                                ; $59A3: $08 $55 $0E
    ld a, [de]                                    ; $59A6: $1A
    rrca                                          ; $59A7: $0F
    nop                                           ; $59A8: $00
    dec b                                         ; $59A9: $05
    ld [$4903], sp                                ; $59AA: $08 $03 $49
    ld [hl], a                                    ; $59AD: $77
    dec c                                         ; $59AE: $0D
    jr jr_033_59B1                                ; $59AF: $18 $00

jr_033_59B1:
    and b                                         ; $59B1: $A0
    ld [bc], a                                    ; $59B2: $02
    ld [$03B9], sp                                ; $59B3: $08 $B9 $03
    ld d, d                                       ; $59B6: $52
    add b                                         ; $59B7: $80
    ld [$1040], sp                                ; $59B8: $08 $40 $10
    jr nz, @-$3E                                  ; $59BB: $20 $C0

    add hl, bc                                    ; $59BD: $09
    sub b                                         ; $59BE: $90
    jr nz, @-$1E                                  ; $59BF: $20 $E0

    ret nc                                        ; $59C1: $D0

    ld [$50E8], sp                                ; $59C2: $08 $E8 $50
    ret z                                         ; $59C5: $C8

    ldh a, [$FFFC]                                ; $59C6: $F0 $FC
    jr z, @-$5E                                   ; $59C8: $28 $A0

    ldh [c], a                                    ; $59CA: $E2
    db $10                                        ; $59CB: $10
    xor h                                         ; $59CC: $AC
    ld d, b                                       ; $59CD: $50
    ld a, b                                       ; $59CE: $78
    or b                                          ; $59CF: $B0
    or h                                          ; $59D0: $B4
    jr jr_033_59EB                                ; $59D1: $18 $18

    inc e                                         ; $59D3: $1C
    ld [$D800], sp                                ; $59D4: $08 $00 $D8
    ccf                                           ; $59D7: $3F
    ld a, [de]                                    ; $59D8: $1A
    inc de                                        ; $59D9: $13
    dec de                                        ; $59DA: $1B
    ld c, $0C                                     ; $59DB: $0E $0C
    inc bc                                        ; $59DD: $03
    nop                                           ; $59DE: $00
    jr c, jr_033_59E2                             ; $59DF: $38 $01

    ld a, [bc]                                    ; $59E1: $0A

jr_033_59E2:
    add hl, hl                                    ; $59E2: $29
    dec bc                                        ; $59E3: $0B
    dec a                                         ; $59E4: $3D
    ld [bc], a                                    ; $59E5: $02
    ld h, e                                       ; $59E6: $63
    dec e                                         ; $59E7: $1D
    add hl, bc                                    ; $59E8: $09
    ld a, a                                       ; $59E9: $7F
    ld d, b                                       ; $59EA: $50

jr_033_59EB:
    xor b                                         ; $59EB: $A8
    or d                                          ; $59EC: $B2
    ld c, b                                       ; $59ED: $48
    rrca                                          ; $59EE: $0F
    ld [$FF05], sp                                ; $59EF: $08 $05 $FF

jr_033_59F2:
    rst RST_20                                    ; $59F2: $E7
    ld [$807D], sp                                ; $59F3: $08 $7D $80
    ld l, b                                       ; $59F6: $68
    rst RST_00                                    ; $59F7: $C7
    ld a, [hl]                                    ; $59F8: $7E
    cp a                                          ; $59F9: $BF
    ei                                            ; $59FA: $FB
    ld [hl], h                                    ; $59FB: $74
    di                                            ; $59FC: $F3

jr_033_59FD:
    ld l, h                                       ; $59FD: $6C
    nop                                           ; $59FE: $00
    ldh a, [$FF6F]                                ; $59FF: $F0 $6F
    db $EC                                        ; $5A01: $EC
    db $D3                                        ; $5A02: $D3
    pop hl                                        ; $5A03: $E1
    sbc $C6                                       ; $5A04: $DE $C6
    cp c                                          ; $5A06: $B9
    cp b                                          ; $5A07: $B8
    adc b                                         ; $5A08: $88
    add b                                         ; $5A09: $80
    ld [$FEB9], sp                                ; $5A0A: $08 $B9 $FE
    db $FC                                        ; $5A0D: $FC
    ld a, b                                       ; $5A0E: $78
    ld hl, sp+$75                                 ; $5A0F: $F8 $75
    ld [hl], b                                    ; $5A11: $70
    db $10                                        ; $5A12: $10
    ret nz                                        ; $5A13: $C0

    db $10                                        ; $5A14: $10
    ldh [$FF09], a                                ; $5A15: $E0 $09
    ld l, b                                       ; $5A17: $68
    jr z, jr_033_5A6E                             ; $5A18: $28 $54

    adc b                                         ; $5A1A: $88
    jr nz, @-$7A                                  ; $5A1B: $20 $84

    ld d, b                                       ; $5A1D: $50
    ld b, $70                                     ; $5A1E: $06 $70
    ld a, $C0                                     ; $5A20: $3E $C0
    ld a, b                                       ; $5A22: $78
    cp $A9                                        ; $5A23: $FE $A9
    ld [$FE60], sp                                ; $5A25: $08 $60 $FE
    rra                                           ; $5A28: $1F
    ld a, [bc]                                    ; $5A29: $0A
    dec bc                                        ; $5A2A: $0B
    sbc e                                         ; $5A2B: $9B
    sub b                                         ; $5A2C: $90
    inc b                                         ; $5A2D: $04
    inc bc                                        ; $5A2E: $03
    nop                                           ; $5A2F: $00
    jr c, jr_033_5A33                             ; $5A30: $38 $01

    ld a, [bc]                                    ; $5A32: $0A

jr_033_5A33:
    add hl, hl                                    ; $5A33: $29
    ld a, [bc]                                    ; $5A34: $0A
    dec a                                         ; $5A35: $3D
    ld [bc], a                                    ; $5A36: $02
    ld h, e                                       ; $5A37: $63
    dec e                                         ; $5A38: $1D
    add hl, bc                                    ; $5A39: $09
    ld a, a                                       ; $5A3A: $7F
    ld d, b                                       ; $5A3B: $50
    ccf                                           ; $5A3C: $3F
    and l                                         ; $5A3D: $A5
    ld c, b                                       ; $5A3E: $48
    rrca                                          ; $5A3F: $0F
    cp $FF                                        ; $5A40: $FE $FF
    rst RST_20                                    ; $5A42: $E7
    ld [$687D], sp                                ; $5A43: $08 $7D $68
    nop                                           ; $5A46: $00
    rst RST_00                                    ; $5A47: $C7
    ld a, [hl]                                    ; $5A48: $7E
    cp a                                          ; $5A49: $BF
    ei                                            ; $5A4A: $FB
    ld [hl], h                                    ; $5A4B: $74
    di                                            ; $5A4C: $F3
    ld l, h                                       ; $5A4D: $6C
    ldh a, [rSB]                                  ; $5A4E: $F0 $01
    ld l, a                                       ; $5A50: $6F
    db $EC                                        ; $5A51: $EC
    db $D3                                        ; $5A52: $D3
    pop hl                                        ; $5A53: $E1
    sbc $C6                                       ; $5A54: $DE $C6
    cp c                                          ; $5A56: $B9
    adc b                                         ; $5A57: $88
    ld [hl], b                                    ; $5A58: $70
    add b                                         ; $5A59: $80
    ld [$FEB9], sp                                ; $5A5A: $08 $B9 $FE
    db $FC                                        ; $5A5D: $FC
    ld a, b                                       ; $5A5E: $78
    ld hl, sp+$70                                 ; $5A5F: $F8 $70
    ld [$C010], a                                 ; $5A61: $EA $10 $C0
    db $10                                        ; $5A64: $10
    ldh [$FF09], a                                ; $5A65: $E0 $09
    ld l, b                                       ; $5A67: $68
    jr z, jr_033_59F2                             ; $5A68: $28 $88

    xor b                                         ; $5A6A: $A8
    jr nz, @-$7A                                  ; $5A6B: $20 $84

    ld d, b                                       ; $5A6D: $50

jr_033_5A6E:
    ld b, $70                                     ; $5A6E: $06 $70
    ld a, $C0                                     ; $5A70: $3E $C0
    cp $FF                                        ; $5A72: $FE $FF
    xor c                                         ; $5A74: $A9
    ld [$FE60], sp                                ; $5A75: $08 $60 $FE
    rlca                                          ; $5A78: $07
    rlca                                          ; $5A79: $07
    rlca                                          ; $5A7A: $07
    rlca                                          ; $5A7B: $07
    ldh a, [rTAC]                                 ; $5A7C: $F0 $07
    rlca                                          ; $5A7E: $07
    rlca                                          ; $5A7F: $07
    rlca                                          ; $5A80: $07

jr_033_5A81:
    ld b, a                                       ; $5A81: $47
    ld b, b                                       ; $5A82: $40
    ld l, e                                       ; $5A83: $6B
    nop                                           ; $5A84: $00
    rlca                                          ; $5A85: $07
    nop                                           ; $5A86: $00
    ld bc, $0308                                  ; $5A87: $01 $08 $03
    db $10                                        ; $5A8A: $10
    ld a, [bc]                                    ; $5A8B: $0A
    xor b                                         ; $5A8C: $A8
    ld a, [hl+]                                   ; $5A8D: $2A
    ld b, $10                                     ; $5A8E: $06 $10
    dec c                                         ; $5A90: $0D
    db $10                                        ; $5A91: $10
    dec bc                                        ; $5A92: $0B
    dec b                                         ; $5A93: $05
    ld c, $CD                                     ; $5A94: $0E $CD

jr_033_5A96:
    jr z, jr_033_5AD1                             ; $5A96: $28 $39

    inc c                                         ; $5A98: $0C
    rlca                                          ; $5A99: $07
    rst RST_28                                    ; $5A9A: $EF
    inc bc                                        ; $5A9B: $03
    cp [hl]                                       ; $5A9C: $BE
    ld [$FF15], sp                                ; $5A9D: $08 $15 $FF
    ld a, $C0                                     ; $5AA0: $3E $C0
    ld de, $10C1                                  ; $5AA2: $11 $C1 $10
    inc a                                         ; $5AA5: $3C
    add hl, hl                                    ; $5AA6: $29
    push af                                       ; $5AA7: $F5
    ld d, c                                       ; $5AA8: $51
    ld c, $07                                     ; $5AA9: $0E $07
    nop                                           ; $5AAB: $00
    ld b, b                                       ; $5AAC: $40
    ld [$10E0], sp                                ; $5AAD: $08 $E0 $10
    adc d                                         ; $5AB0: $8A
    add hl, bc                                    ; $5AB1: $09
    ld h, b                                       ; $5AB2: $60
    add b                                         ; $5AB3: $80
    jr nz, jr_033_5A96                            ; $5AB4: $20 $E0

    sub b                                         ; $5AB6: $90
    jr nz, jr_033_5A81                            ; $5AB7: $20 $C8

    ld l, $30                                     ; $5AB9: $2E $30
    ld l, b                                       ; $5ABB: $68
    jr nz, @+$3A                                  ; $5ABC: $20 $38

    jr c, jr_033_5AE0                             ; $5ABE: $38 $20

    ld [$D710], sp                                ; $5AC0: $08 $10 $D7
    add b                                         ; $5AC3: $80
    cp c                                          ; $5AC4: $B9
    ld [$1C08], sp                                ; $5AC5: $08 $08 $1C
    db $10                                        ; $5AC8: $10

jr_033_5AC9:
    add hl, de                                    ; $5AC9: $19
    ld bc, $015D                                  ; $5ACA: $01 $5D $01
    ld [$1003], sp                                ; $5ACD: $08 $03 $10
    ld a, [bc]                                    ; $5AD0: $0A

jr_033_5AD1:
    ld a, [hl+]                                   ; $5AD1: $2A
    ld b, $10                                     ; $5AD2: $06 $10
    ld b, a                                       ; $5AD4: $47
    dec c                                         ; $5AD5: $0D
    db $10                                        ; $5AD6: $10
    dec bc                                        ; $5AD7: $0B
    dec b                                         ; $5AD8: $05
    ld c, $28                                     ; $5AD9: $0E $28
    add hl, sp                                    ; $5ADB: $39
    ret z                                         ; $5ADC: $C8

    ld l, b                                       ; $5ADD: $68

jr_033_5ADE:
    rlca                                          ; $5ADE: $07
    rst RST_28                                    ; $5ADF: $EF

jr_033_5AE0:
    inc bc                                        ; $5AE0: $03
    cp [hl]                                       ; $5AE1: $BE
    ld [$3EFF], sp                                ; $5AE2: $08 $FF $3E
    ret nz                                        ; $5AE5: $C0

    xor a                                         ; $5AE6: $AF
    ld de, $10C1                                  ; $5AE7: $11 $C1 $10
    inc a                                         ; $5AEA: $3C
    add hl, hl                                    ; $5AEB: $29
    ld d, c                                       ; $5AEC: $51
    ld c, $02                                     ; $5AED: $0E $02
    or l                                          ; $5AEF: $B5
    ld sp, hl                                     ; $5AF0: $F9
    inc e                                         ; $5AF1: $1C
    db $10                                        ; $5AF2: $10
    add hl, de                                    ; $5AF3: $19
    ld b, b                                       ; $5AF4: $40
    ld [$10E0], sp                                ; $5AF5: $08 $E0 $10
    adc d                                         ; $5AF8: $8A
    add hl, bc                                    ; $5AF9: $09
    ld h, b                                       ; $5AFA: $60
    add b                                         ; $5AFB: $80
    jr nz, jr_033_5ADE                            ; $5AFC: $20 $E0

    sub b                                         ; $5AFE: $90
    jr nz, jr_033_5AC9                            ; $5AFF: $20 $C8

    cpl                                           ; $5B01: $2F
    jr nc, @+$6A                                  ; $5B02: $30 $68

    jr nz, @+$3A                                  ; $5B04: $20 $38

    jr c, jr_033_5B28                             ; $5B06: $38 $20

    ld [$A8B8], sp                                ; $5B08: $08 $B8 $A8
    add b                                         ; $5B0B: $80
    ld bc, $07A8                                  ; $5B0C: $01 $A8 $07
    db $10                                        ; $5B0F: $10
    add hl, bc                                    ; $5B10: $09
    ld b, $14                                     ; $5B11: $06 $14
    db $10                                        ; $5B13: $10
    dec bc                                        ; $5B14: $0B
    ld e, $05                                     ; $5B15: $1E $05
    add hl, bc                                    ; $5B17: $09
    db $10                                        ; $5B18: $10
    rrca                                          ; $5B19: $0F
    inc a                                         ; $5B1A: $3C
    inc bc                                        ; $5B1B: $03
    ld a, h                                       ; $5B1C: $7C
    ld b, e                                       ; $5B1D: $43
    db $10                                        ; $5B1E: $10
    xor b                                         ; $5B1F: $A8
    jr z, jr_033_5B5B                             ; $5B20: $28 $39

    add hl, de                                    ; $5B22: $19
    ld b, b                                       ; $5B23: $40
    ccf                                           ; $5B24: $3F
    ld e, [hl]                                    ; $5B25: $5E
    ld a, $B8                                     ; $5B26: $3E $B8

jr_033_5B28:
    ld [bc], a                                    ; $5B28: $02
    ld [$E870], sp                                ; $5B29: $08 $70 $E8
    ld bc, $A3C0                                  ; $5B2C: $01 $C0 $A3
    ld [$1020], sp                                ; $5B2F: $08 $20 $10
    ld d, b                                       ; $5B32: $50
    and b                                         ; $5B33: $A0
    ldh a, [$FF80]                                ; $5B34: $F0 $80
    add hl, bc                                    ; $5B36: $09
    or l                                          ; $5B37: $B5
    cp b                                          ; $5B38: $B8
    ldh [$FFE0], a                                ; $5B39: $E0 $E0
    ld c, b                                       ; $5B3B: $48
    jp nz, Jump_000_0C10                          ; $5B3C: $C2 $10 $0C

    ld b, b                                       ; $5B3F: $40
    and [hl]                                      ; $5B40: $A6
    add hl, sp                                    ; $5B41: $39
    jr @+$0A                                      ; $5B42: $18 $08

    inc b                                         ; $5B44: $04
    ld hl, sp+$00                                 ; $5B45: $F8 $00
    cp b                                          ; $5B47: $B8
    add b                                         ; $5B48: $80
    push de                                       ; $5B49: $D5
    ld [$0303], a                                 ; $5B4A: $EA $03 $03
    ld [$1007], sp                                ; $5B4D: $08 $07 $10
    rrca                                          ; $5B50: $0F
    add b                                         ; $5B51: $80
    db $ED                                        ; $5B52: $ED
    nop                                           ; $5B53: $00

jr_033_5B54:
    ld l, [hl]                                    ; $5B54: $6E
    inc bc                                        ; $5B55: $03
    ld bc, $1099                                  ; $5B56: $01 $99 $10
    ld a, $10                                     ; $5B59: $3E $10

jr_033_5B5B:
    ld c, $7D                                     ; $5B5B: $0E $7D
    ld [hl], $3B                                  ; $5B5D: $36 $3B
    dec c                                         ; $5B5F: $0D
    ld e, c                                       ; $5B60: $59
    jr c, jr_033_5B6B                             ; $5B61: $38 $08

    ld a, a                                       ; $5B63: $7F
    sbc b                                         ; $5B64: $98
    db $10                                        ; $5B65: $10
    rst RST_38                                    ; $5B66: $FF
    ld b, c                                       ; $5B67: $41
    add hl, de                                    ; $5B68: $19
    add hl, sp                                    ; $5B69: $39
    inc e                                         ; $5B6A: $1C

jr_033_5B6B:
    ld [$7A38], sp                                ; $5B6B: $08 $38 $7A
    db $10                                        ; $5B6E: $10
    add hl, bc                                    ; $5B6F: $09
    add hl, hl                                    ; $5B70: $29
    nop                                           ; $5B71: $00
    ld c, b                                       ; $5B72: $48
    add b                                         ; $5B73: $80
    ld [$CFBF], sp                                ; $5B74: $08 $BF $CF
    ld [$3F98], sp                                ; $5B77: $08 $98 $3F
    ret nz                                        ; $5B7A: $C0

    db $10                                        ; $5B7B: $10
    ld hl, $01F9                                  ; $5B7C: $21 $F9 $01
    ld d, a                                       ; $5B7F: $57
    ld h, b                                       ; $5B80: $60
    ld [$10F0], sp                                ; $5B81: $08 $F0 $10
    ld a, b                                       ; $5B84: $78
    cp b                                          ; $5B85: $B8
    nop                                           ; $5B86: $00
    ld d, e                                       ; $5B87: $53
    xor c                                         ; $5B88: $A9
    ld b, $20                                     ; $5B89: $06 $20
    ld [$10D0], sp                                ; $5B8B: $08 $D0 $10
    sub b                                         ; $5B8E: $90
    ldh [$FF88], a                                ; $5B8F: $E0 $88
    push de                                       ; $5B91: $D5
    ld [$C020], sp                                ; $5B92: $08 $20 $C0
    ld e, c                                       ; $5B95: $59
    ld bc, $0308                                  ; $5B96: $01 $08 $03
    db $10                                        ; $5B99: $10
    ld b, e                                       ; $5B9A: $43
    rlca                                          ; $5B9B: $07
    db $10                                        ; $5B9C: $10
    rrca                                          ; $5B9D: $0F
    ld b, $0E                                     ; $5B9E: $06 $0E
    inc b                                         ; $5BA0: $04
    nop                                           ; $5BA1: $00
    rst RST_30                                    ; $5BA2: $F7
    and c                                         ; $5BA3: $A1
    sbc h                                         ; $5BA4: $9C
    ld a, $10                                     ; $5BA5: $3E $10
    ld a, l                                       ; $5BA7: $7D
    ld [hl], $3B                                  ; $5BA8: $36 $3B
    dec c                                         ; $5BAA: $0D
    jr z, jr_033_5B54                             ; $5BAB: $28 $A7

    ld c, b                                       ; $5BAD: $48
    ld a, a                                       ; $5BAE: $7F
    db $10                                        ; $5BAF: $10
    rst RST_38                                    ; $5BB0: $FF
    ld b, c                                       ; $5BB1: $41
    add hl, bc                                    ; $5BB2: $09
    add hl, hl                                    ; $5BB3: $29
    ld c, c                                       ; $5BB4: $49
    rrca                                          ; $5BB5: $0F
    jr c, @+$12                                   ; $5BB6: $38 $10

    inc e                                         ; $5BB8: $1C
    ld [$2909], sp                                ; $5BB9: $08 $09 $29

Call_033_5BBC:
    nop                                           ; $5BBC: $00
    ld c, b                                       ; $5BBD: $48
    ld e, c                                       ; $5BBE: $59
    add b                                         ; $5BBF: $80
    ld [$08BF], sp                                ; $5BC0: $08 $BF $08
    sbc b                                         ; $5BC3: $98
    ccf                                           ; $5BC4: $3F
    ret nz                                        ; $5BC5: $C0

    db $10                                        ; $5BC6: $10
    ld [$0821], a                                 ; $5BC7: $EA $21 $08
    nop                                           ; $5BCA: $00
    ld b, b                                       ; $5BCB: $40
    ld [$10E0], sp                                ; $5BCC: $08 $E0 $10
    ldh a, [rNR30]                                ; $5BCF: $F0 $1A
    ld h, b                                       ; $5BD1: $60
    ld a, b                                       ; $5BD2: $78
    jr nc, @-$43                                  ; $5BD3: $30 $BB

    dec b                                         ; $5BD5: $05
    jr nz, jr_033_5BE0                            ; $5BD6: $20 $08

    ld d, b                                       ; $5BD8: $50
    cp l                                          ; $5BD9: $BD
    db $10                                        ; $5BDA: $10
    sub b                                         ; $5BDB: $90
    adc b                                         ; $5BDC: $88
    ld [$20B0], sp                                ; $5BDD: $08 $B0 $20

jr_033_5BE0:
    ret nz                                        ; $5BE0: $C0

    add hl, bc                                    ; $5BE1: $09
    rst RST_38                                    ; $5BE2: $FF
    sub [hl]                                      ; $5BE3: $96
    rlca                                          ; $5BE4: $07
    rlca                                          ; $5BE5: $07
    rlca                                          ; $5BE6: $07
    rlca                                          ; $5BE7: $07
    rlca                                          ; $5BE8: $07
    rlca                                          ; $5BE9: $07
    rlca                                          ; $5BEA: $07
    sbc c                                         ; $5BEB: $99
    nop                                           ; $5BEC: $00
    inc c                                         ; $5BED: $0C
    rlca                                          ; $5BEE: $07
    rrca                                          ; $5BEF: $0F
    add hl, bc                                    ; $5BF0: $09
    inc b                                         ; $5BF1: $04
    inc bc                                        ; $5BF2: $03
    add hl, bc                                    ; $5BF3: $09
    ld a, e                                       ; $5BF4: $7B
    ld [$0028], sp                                ; $5BF5: $08 $28 $00
    rst RST_10                                    ; $5BF8: $D7
    dec b                                         ; $5BF9: $05
    rst RST_38                                    ; $5BFA: $FF
    rrca                                          ; $5BFB: $0F
    dec bc                                        ; $5BFC: $0B

jr_033_5BFD:
    nop                                           ; $5BFD: $00
    ld b, c                                       ; $5BFE: $41
    cp [hl]                                       ; $5BFF: $BE
    pop bc                                        ; $5C00: $C1
    ld a, $21                                     ; $5C01: $3E $21
    ld e, $11                                     ; $5C03: $1E $11
    ld c, $0C                                     ; $5C05: $0E $0C
    ld [$0607], sp                                ; $5C07: $08 $07 $06

jr_033_5C0A:
    ld bc, $F400                                  ; $5C0A: $01 $00 $F4
    db $10                                        ; $5C0D: $10
    ldh [$FFCD], a                                ; $5C0E: $E0 $CD
    rrca                                          ; $5C10: $0F
    dec c                                         ; $5C11: $0D
    adc b                                         ; $5C12: $88
    ld [hl], b                                    ; $5C13: $70
    nop                                           ; $5C14: $00
    xor d                                         ; $5C15: $AA
    ret nz                                        ; $5C16: $C0

    ld [$2070], sp                                ; $5C17: $08 $70 $20
    db $10                                        ; $5C1A: $10
    ld d, b                                       ; $5C1B: $50
    db $FC                                        ; $5C1C: $FC
    inc l                                         ; $5C1D: $2C
    rla                                           ; $5C1E: $17
    inc e                                         ; $5C1F: $1C
    rlca                                          ; $5C20: $07
    ld e, e                                       ; $5C21: $5B
    inc c                                         ; $5C22: $0C
    inc c                                         ; $5C23: $0C
    jr jr_033_5C2E                                ; $5C24: $18 $08

    sbc b                                         ; $5C26: $98
    rra                                           ; $5C27: $1F
    add hl, de                                    ; $5C28: $19
    nop                                           ; $5C29: $00
    db $EC                                        ; $5C2A: $EC
    xor h                                         ; $5C2B: $AC

jr_033_5C2C:
    rlca                                          ; $5C2C: $07
    ld [bc], a                                    ; $5C2D: $02

jr_033_5C2E:
    rst RST_38                                    ; $5C2E: $FF
    rrca                                          ; $5C2F: $0F
    dec bc                                        ; $5C30: $0B
    pop bc                                        ; $5C31: $C1
    ld a, $40                                     ; $5C32: $3E $40
    ld b, c                                       ; $5C34: $41
    ld [$1E21], sp                                ; $5C35: $08 $21 $1E
    ld de, $080E                                  ; $5C38: $11 $0E $08
    rlca                                          ; $5C3B: $07
    jr nc, jr_033_5C44                            ; $5C3C: $30 $06

    ld bc, $F400                                  ; $5C3E: $01 $00 $F4
    ld [de], a                                    ; $5C41: $12
    db $EC                                        ; $5C42: $EC
    inc e                                         ; $5C43: $1C

jr_033_5C44:
    ldh [rLCDC], a                                ; $5C44: $E0 $40
    db $10                                        ; $5C46: $10
    inc c                                         ; $5C47: $0C
    inc c                                         ; $5C48: $0C
    ldh a, [rSC]                                  ; $5C49: $F0 $02
    db $FC                                        ; $5C4B: $FC
    adc h                                         ; $5C4C: $8C
    ld [hl], b                                    ; $5C4D: $70
    rst RST_10                                    ; $5C4E: $D7
    jr nz, jr_033_5BFD                            ; $5C4F: $20 $AC

    ret nz                                        ; $5C51: $C0

    ld [$1020], sp                                ; $5C52: $08 $20 $10
    add b                                         ; $5C55: $80
    ld c, h                                       ; $5C56: $4C
    and b                                         ; $5C57: $A0
    inc bc                                        ; $5C58: $03
    inc bc                                        ; $5C59: $03
    ld [$0107], sp                                ; $5C5A: $08 $07 $01
    dec bc                                        ; $5C5D: $0B
    inc b                                         ; $5C5E: $04
    rrca                                          ; $5C5F: $0F
    pop de                                        ; $5C60: $D1
    ldh a, [$FF09]                                ; $5C61: $F0 $09
    inc d                                         ; $5C63: $14
    jr nc, jr_033_5C89                            ; $5C64: $30 $23

    inc e                                         ; $5C66: $1C
    jr @+$62                                      ; $5C67: $18 $60

    ld b, a                                       ; $5C69: $47
    ld [$1208], sp                                ; $5C6A: $08 $08 $12
    dec c                                         ; $5C6D: $0D
    ld c, $88                                     ; $5C6E: $0E $88
    ld h, b                                       ; $5C70: $60
    ld [$00D4], sp                                ; $5C71: $08 $D4 $00
    cp $80                                        ; $5C74: $FE $80
    ld [$08C0], sp                                ; $5C76: $08 $C0 $08
    and b                                         ; $5C79: $A0
    ld b, b                                       ; $5C7A: $40
    ld l, b                                       ; $5C7B: $68
    ldh [$FF30], a                                ; $5C7C: $E0 $30
    add hl, bc                                    ; $5C7E: $09
    ld d, b                                       ; $5C7F: $50
    jr nc, jr_033_5C0A                            ; $5C80: $30 $88

    ld [hl], b                                    ; $5C82: $70
    jr nc, jr_033_5C2C                            ; $5C83: $30 $A7

    ld h, b                                       ; $5C85: $60
    jr nz, jr_033_5C90                            ; $5C86: $20 $08

    sub b                                         ; $5C88: $90

jr_033_5C89:
    ld h, b                                       ; $5C89: $60
    ld e, b                                       ; $5C8A: $58
    xor d                                         ; $5C8B: $AA
    inc bc                                        ; $5C8C: $03
    ld [bc], a                                    ; $5C8D: $02
    ld e, $0B                                     ; $5C8E: $1E $0B

jr_033_5C90:
    ld [hl], $1B                                  ; $5C90: $36 $1B
    inc a                                         ; $5C92: $3C
    rla                                           ; $5C93: $17
    dec c                                         ; $5C94: $0D
    inc d                                         ; $5C95: $14
    and b                                         ; $5C96: $A0
    ld e, b                                       ; $5C97: $58
    inc [hl]                                      ; $5C98: $34
    ld [$357A], sp                                ; $5C99: $08 $7A $35
    ld a, l                                       ; $5C9C: $7D
    ld [bc], a                                    ; $5C9D: $02
    ld a, $37                                     ; $5C9E: $3E $37
    ld bc, $DC07                                  ; $5CA0: $01 $07 $DC
    inc b                                         ; $5CA3: $04
    rst RST_38                                    ; $5CA4: $FF
    rrca                                          ; $5CA5: $0F
    rrca                                          ; $5CA6: $0F
    add hl, bc                                    ; $5CA7: $09
    ld sp, $3FC0                                  ; $5CA8: $31 $C0 $3F
    ld hl, $6007                                  ; $5CAB: $21 $07 $60
    add b                                         ; $5CAE: $80
    jr nz, jr_033_5D21                            ; $5CAF: $20 $70

    ld bc, $E010                                  ; $5CB1: $01 $10 $E0
    ld [$04F0], sp                                ; $5CB4: $08 $F0 $04
    ld hl, sp+$06                                 ; $5CB7: $F8 $06
    ld [$6302], sp                                ; $5CB9: $08 $02 $63
    sbc h                                         ; $5CBC: $9C
    inc sp                                        ; $5CBD: $33
    call z, $E41B                                 ; $5CBE: $CC $1B $E4
    add hl, bc                                    ; $5CC1: $09
    db $DB                                        ; $5CC2: $DB
    ld sp, $FE24                                  ; $5CC3: $31 $24 $FE
    rst RST_30                                    ; $5CC6: $F7
    nop                                           ; $5CC7: $00
    ld e, $0B                                     ; $5CC8: $1E $0B
    ld [hl], $80                                  ; $5CCA: $36 $80
    ld a, [hl+]                                   ; $5CCC: $2A
    inc a                                         ; $5CCD: $3C

Call_033_5CCE:
    rla                                           ; $5CCE: $17
    dec c                                         ; $5CCF: $0D
    inc d                                         ; $5CD0: $14
    ld e, b                                       ; $5CD1: $58
    inc [hl]                                      ; $5CD2: $34
    ld [$037A], sp                                ; $5CD3: $08 $7A $03
    dec [hl]                                      ; $5CD6: $35
    ld a, l                                       ; $5CD7: $7D
    ld [bc], a                                    ; $5CD8: $02
    ld a, $01                                     ; $5CD9: $3E $01
    rlca                                          ; $5CDB: $07
    rst RST_30                                    ; $5CDC: $F7
    ld bc, $FF73                                  ; $5CDD: $01 $73 $FF
    rrca                                          ; $5CE0: $0F
    rrca                                          ; $5CE1: $0F
    add hl, bc                                    ; $5CE2: $09
    ret nz                                        ; $5CE3: $C0

    ccf                                           ; $5CE4: $3F
    ld hl, $1007                                  ; $5CE5: $21 $07 $10
    ld h, b                                       ; $5CE8: $60
    add b                                         ; $5CE9: $80
    jr nz, @+$72                                  ; $5CEA: $20 $70

    db $10                                        ; $5CEC: $10
    ldh [$FF08], a                                ; $5CED: $E0 $08
    ldh a, [rNR10]                                ; $5CEF: $F0 $10
    inc b                                         ; $5CF1: $04
    ld hl, sp+$06                                 ; $5CF2: $F8 $06
    ld [$9C63], sp                                ; $5CF4: $08 $63 $9C
    inc sp                                        ; $5CF7: $33
    call z, $1B23                                 ; $5CF8: $CC $23 $1B
    db $E4                                        ; $5CFB: $E4
    add hl, bc                                    ; $5CFC: $09
    db $DB                                        ; $5CFD: $DB
    inc h                                         ; $5CFE: $24
    cp $F7                                        ; $5CFF: $FE $F7

jr_033_5D01:
    rlca                                          ; $5D01: $07
    rst RST_38                                    ; $5D02: $FF
    rlca                                          ; $5D03: $07
    rlca                                          ; $5D04: $07
    rlca                                          ; $5D05: $07
    rlca                                          ; $5D06: $07
    rlca                                          ; $5D07: $07
    rlca                                          ; $5D08: $07
    rlca                                          ; $5D09: $07
    nop                                           ; $5D0A: $00
    ld b, [hl]                                    ; $5D0B: $46
    nop                                           ; $5D0C: $00
    ld d, l                                       ; $5D0D: $55
    nop                                           ; $5D0E: $00
    ld b, $0C                                     ; $5D0F: $06 $0C
    db $10                                        ; $5D11: $10
    ld e, $20                                     ; $5D12: $1E $20
    ccf                                           ; $5D14: $3F
    jr nz, @-$74                                  ; $5D15: $20 $8A

    ld de, $1D3A                                  ; $5D17: $11 $3A $1D
    ld [hl+], a                                   ; $5D1A: $22
    ld [de], a                                    ; $5D1B: $12
    ld hl, $2070                                  ; $5D1C: $21 $70 $20
    dec d                                         ; $5D1F: $15
    rra                                           ; $5D20: $1F

jr_033_5D21:
    db $10                                        ; $5D21: $10
    rrca                                          ; $5D22: $0F
    inc de                                        ; $5D23: $13
    nop                                           ; $5D24: $00
    ld [bc], a                                    ; $5D25: $02
    ld a, [bc]                                    ; $5D26: $0A
    db $10                                        ; $5D27: $10
    ld d, l                                       ; $5D28: $55
    inc c                                         ; $5D29: $0C
    db $10                                        ; $5D2A: $10
    ld a, [hl]                                    ; $5D2B: $7E
    db $10                                        ; $5D2C: $10
    add c                                         ; $5D2D: $81
    ld hl, $1FFF                                  ; $5D2E: $21 $FF $1F
    call nc, Call_000_0612                        ; $5D31: $D4 $12 $06
    ld h, b                                       ; $5D34: $60
    db $10                                        ; $5D35: $10
    ldh a, [rNR41]                                ; $5D36: $F0 $20
    ld hl, sp+$70                                 ; $5D38: $F8 $70
    adc d                                         ; $5D3A: $8A
    ld de, $B078                                  ; $5D3B: $11 $78 $B0
    ld c, b                                       ; $5D3E: $48
    ld [de], a                                    ; $5D3F: $12
    adc b                                         ; $5D40: $88
    ld [hl], b                                    ; $5D41: $70
    ld [$E095], sp                                ; $5D42: $08 $95 $E0
    db $10                                        ; $5D45: $10
    ldh [rNR13], a                                ; $5D46: $E0 $13
    nop                                           ; $5D48: $00
    nop                                           ; $5D49: $00
    ld bc, $DD10                                  ; $5D4A: $01 $10 $DD
    ld d, b                                       ; $5D4D: $50
    db $10                                        ; $5D4E: $10
    jr c, jr_033_5D71                             ; $5D4F: $38 $20

    ld sp, $7101                                  ; $5D51: $31 $01 $71
    db $10                                        ; $5D54: $10
    ld a, [bc]                                    ; $5D55: $0A
    ld sp, hl                                     ; $5D56: $F9
    ld [hl], b                                    ; $5D57: $70
    cp $79                                        ; $5D58: $FE $79
    ld de, $80EA                                  ; $5D5A: $11 $EA $80
    add a                                         ; $5D5D: $87
    db $10                                        ; $5D5E: $10
    ld a, b                                       ; $5D5F: $78
    ld b, b                                       ; $5D60: $40
    ccf                                           ; $5D61: $3F
    ld de, $1F20                                  ; $5D62: $11 $20 $1F
    db $10                                        ; $5D65: $10
    rrca                                          ; $5D66: $0F
    dec d                                         ; $5D67: $15
    add b                                         ; $5D68: $80
    nop                                           ; $5D69: $00
    ret nz                                        ; $5D6A: $C0

    jr nz, jr_033_5D01                            ; $5D6B: $20 $94

    jr nc, jr_033_5D7B                            ; $5D6D: $30 $0C

    db $10                                        ; $5D6F: $10
    ld d, a                                       ; $5D70: $57

jr_033_5D71:
    ld a, [hl]                                    ; $5D71: $7E
    db $10                                        ; $5D72: $10
    add c                                         ; $5D73: $81
    ld hl, $1FFF                                  ; $5D74: $21 $FF $1F
    ld [de], a                                    ; $5D77: $12
    nop                                           ; $5D78: $00
    ld d, e                                       ; $5D79: $53
    ld b, b                                       ; $5D7A: $40

jr_033_5D7B:
    db $10                                        ; $5D7B: $10
    ldh [c], a                                    ; $5D7C: $E2
    jr nz, @+$49                                  ; $5D7D: $20 $47

    ld [bc], a                                    ; $5D7F: $02
    nop                                           ; $5D80: $00
    add c                                         ; $5D81: $81
    and c                                         ; $5D82: $A1
    nop                                           ; $5D83: $00
    sbc h                                         ; $5D84: $9C
    db $10                                        ; $5D85: $10
    cp [hl]                                       ; $5D86: $BE
    inc e                                         ; $5D87: $1C
    ld a, [hl]                                    ; $5D88: $7E
    cp h                                          ; $5D89: $BC
    ld de, $6E42                                  ; $5D8A: $11 $42 $6E
    add b                                         ; $5D8D: $80
    jp nz, Jump_000_043C                          ; $5D8E: $C2 $3C $04

    ld hl, sp+$11                                 ; $5D91: $F8 $11
    ld [$F00B], sp                                ; $5D93: $08 $0B $F0
    db $10                                        ; $5D96: $10
    ldh [rP1], a                                  ; $5D97: $E0 $00
    nop                                           ; $5D99: $00
    inc bc                                        ; $5D9A: $03
    db $10                                        ; $5D9B: $10
    sub b                                         ; $5D9C: $90
    jp nc, $9020                                  ; $5D9D: $D2 $20 $90

    rlca                                          ; $5DA0: $07
    ld de, $0F70                                  ; $5DA1: $11 $70 $0F
    ret nz                                        ; $5DA4: $C0

    ld a, a                                       ; $5DA5: $7F
    adc e                                         ; $5DA6: $8B
    ld de, $3F40                                  ; $5DA7: $11 $40 $3F
    inc a                                         ; $5DAA: $3C
    sub b                                         ; $5DAB: $90
    ld c, $10                                     ; $5DAC: $0E $10
    and b                                         ; $5DAE: $A0
    dec hl                                        ; $5DAF: $2B
    inc bc                                        ; $5DB0: $03
    add hl, bc                                    ; $5DB1: $09
    jr nc, jr_033_5DBC                            ; $5DB2: $30 $08

    db $10                                        ; $5DB4: $10
    rra                                           ; $5DB5: $1F
    add b                                         ; $5DB6: $80
    nop                                           ; $5DB7: $00
    ld a, [hl+]                                   ; $5DB8: $2A
    nop                                           ; $5DB9: $00
    and b                                         ; $5DBA: $A0
    db $10                                        ; $5DBB: $10

jr_033_5DBC:
    ret nz                                        ; $5DBC: $C0

    db $10                                        ; $5DBD: $10
    jr nz, @+$22                                  ; $5DBE: $20 $20

    db $10                                        ; $5DC0: $10
    inc [hl]                                      ; $5DC1: $34
    ldh [rNR34], a                                ; $5DC2: $E0 $1E
    db $10                                        ; $5DC4: $10
    ldh [$FFFE], a                                ; $5DC5: $E0 $FE
    ld de, $FC02                                  ; $5DC7: $11 $02 $FC
    dec d                                         ; $5DCA: $15
    inc b                                         ; $5DCB: $04
    ld hl, sp+$0C                                 ; $5DCC: $F8 $0C
    db $10                                        ; $5DCE: $10
    ld a, [hl-]                                   ; $5DCF: $3A

jr_033_5DD0:
    ld d, b                                       ; $5DD0: $50
    ldh [c], a                                    ; $5DD1: $E2
    db $10                                        ; $5DD2: $10
    dec l                                         ; $5DD3: $2D
    rst RST_38                                    ; $5DD4: $FF
    sbc [hl]                                      ; $5DD5: $9E
    nop                                           ; $5DD6: $00
    nop                                           ; $5DD7: $00
    rrca                                          ; $5DD8: $0F
    rlca                                          ; $5DD9: $07
    inc c                                         ; $5DDA: $0C
    db $10                                        ; $5DDB: $10
    ld b, b                                       ; $5DDC: $40
    ld e, $20                                     ; $5DDD: $1E $20
    ld a, $1C                                     ; $5DDF: $3E $1C
    ld [hl], h                                    ; $5DE1: $74
    jr c, @-$1A                                   ; $5DE2: $38 $E4

    ld a, b                                       ; $5DE4: $78
    inc d                                         ; $5DE5: $14
    ldh [c], a                                    ; $5DE6: $E2
    ld a, h                                       ; $5DE7: $7C
    add hl, de                                    ; $5DE8: $19
    or b                                          ; $5DE9: $B0
    ccf                                           ; $5DEA: $3F
    jr nz, jr_033_5E6C                            ; $5DEB: $20 $7F

    ld a, [hl+]                                   ; $5DED: $2A
    ccf                                           ; $5DEE: $3F
    dec hl                                        ; $5DEF: $2B
    ld bc, $7000                                  ; $5DF0: $01 $00 $70
    ld bc, $5331                                  ; $5DF3: $01 $31 $53
    ld [hl], e                                    ; $5DF6: $73
    ld d, [hl]                                    ; $5DF7: $56
    rlca                                          ; $5DF8: $07
    db $10                                        ; $5DF9: $10
    rrca                                          ; $5DFA: $0F
    jr nz, jr_033_5E1C                            ; $5DFB: $20 $1F

    jr nz, @+$12                                  ; $5DFD: $20 $10

    ld c, $54                                     ; $5DFF: $0E $54
    inc hl                                        ; $5E01: $23
    jr nz, jr_033_5DD0                            ; $5E02: $20 $CC

    sub b                                         ; $5E04: $90
    cp $20                                        ; $5E05: $FE $20
    rst RST_38                                    ; $5E07: $FF
    ld a, [hl+]                                   ; $5E08: $2A
    ld [hl-], a                                   ; $5E09: $32
    ld [$00C0], a                                 ; $5E0A: $EA $C0 $00
    ld [hl], b                                    ; $5E0D: $70
    ldh [rLCDC], a                                ; $5E0E: $E0 $40
    jr nc, @-$7E                                  ; $5E10: $30 $80

    rst RST_38                                    ; $5E12: $FF
    ld de, $7351                                  ; $5E13: $11 $51 $73
    nop                                           ; $5E16: $00
    ret nc                                        ; $5E17: $D0

    inc de                                        ; $5E18: $13
    ld bc, $D433                                  ; $5E19: $01 $33 $D4

jr_033_5E1C:
    rrca                                          ; $5E1C: $0F
    ld bc, $100C                                  ; $5E1D: $01 $0C $10
    ld e, $20                                     ; $5E20: $1E $20
    ld a, $1C                                     ; $5E22: $3E $1C
    ld [bc], a                                    ; $5E24: $02
    ld [hl], h                                    ; $5E25: $74
    jr c, @-$1A                                   ; $5E26: $38 $E4

    ld a, b                                       ; $5E28: $78
    ldh [c], a                                    ; $5E29: $E2
    ld a, h                                       ; $5E2A: $7C
    pop de                                        ; $5E2B: $D1
    add hl, bc                                    ; $5E2C: $09
    and c                                         ; $5E2D: $A1
    db $10                                        ; $5E2E: $10
    rra                                           ; $5E2F: $1F

jr_033_5E30:
    jr nz, @+$41                                  ; $5E30: $20 $3F

    ld a, [de]                                    ; $5E32: $1A
    dec sp                                        ; $5E33: $3B
    ld de, $BA00                                  ; $5E34: $11 $00 $BA
    ld [hl], b                                    ; $5E37: $70
    ld bc, $02C1                                  ; $5E38: $01 $C1 $02
    ld d, c                                       ; $5E3B: $51
    rlca                                          ; $5E3C: $07
    db $10                                        ; $5E3D: $10
    rrca                                          ; $5E3E: $0F
    jr @+$08                                      ; $5E3F: $18 $06

    rra                                           ; $5E41: $1F
    ld c, $10                                     ; $5E42: $0E $10
    ld b, b                                       ; $5E44: $40
    dec l                                         ; $5E45: $2D
    ld e, $21                                     ; $5E46: $1E $21
    call nc, $F110                                ; $5E48: $D4 $10 $F1
    ret z                                         ; $5E4B: $C8

    db $10                                        ; $5E4C: $10
    db $FC                                        ; $5E4D: $FC

jr_033_5E4E:
    jr nz, jr_033_5E4E                            ; $5E4E: $20 $FE

    inc l                                         ; $5E50: $2C
    db $10                                        ; $5E51: $10
    xor $C4                                       ; $5E52: $EE $C4
    add $70                                       ; $5E54: $C6 $70
    ret nz                                        ; $5E56: $C0

    add b                                         ; $5E57: $80
    ldh [rLCDC], a                                ; $5E58: $E0 $40
    rst RST_38                                    ; $5E5A: $FF
    ld de, $7351                                  ; $5E5B: $11 $51 $73
    jr nc, jr_033_5E30                            ; $5E5E: $30 $D0

    ld b, b                                       ; $5E60: $40
    db $10                                        ; $5E61: $10
    rrca                                          ; $5E62: $0F
    ldh a, [c]                                    ; $5E63: $F2
    rrca                                          ; $5E64: $0F
    rrca                                          ; $5E65: $0F
    rrca                                          ; $5E66: $0F
    inc bc                                        ; $5E67: $03
    ld [$1507], sp                                ; $5E68: $08 $07 $15
    inc c                                         ; $5E6B: $0C

jr_033_5E6C:
    and d                                         ; $5E6C: $A2
    db $10                                        ; $5E6D: $10
    rrca                                          ; $5E6E: $0F
    ld de, $0B03                                  ; $5E6F: $11 $03 $0B
    inc b                                         ; $5E72: $04
    sub c                                         ; $5E73: $91
    rra                                           ; $5E74: $1F
    push de                                       ; $5E75: $D5
    ld h, b                                       ; $5E76: $60
    nop                                           ; $5E77: $00
    nop                                           ; $5E78: $00
    ld a, [bc]                                    ; $5E79: $0A
    rst RST_38                                    ; $5E7A: $FF
    dec d                                         ; $5E7B: $15
    db $10                                        ; $5E7C: $10
    db $10                                        ; $5E7D: $10
    and e                                         ; $5E7E: $A3
    nop                                           ; $5E7F: $00
    rst RST_28                                    ; $5E80: $EF
    db $10                                        ; $5E81: $10
    rst RST_00                                    ; $5E82: $C7
    rst RST_10                                    ; $5E83: $D7
    jr z, jr_033_5EF6                             ; $5E84: $28 $70

    ld d, b                                       ; $5E86: $50
    ld sp, hl                                     ; $5E87: $F9
    nop                                           ; $5E88: $00
    ld d, b                                       ; $5E89: $50
    nop                                           ; $5E8A: $00
    ldh [$FF09], a                                ; $5E8B: $E0 $09
    jr nz, @-$3E                                  ; $5E8D: $20 $C0

    dec d                                         ; $5E8F: $15
    ld d, c                                       ; $5E90: $51
    ld h, b                                       ; $5E91: $60
    db $10                                        ; $5E92: $10
    ldh [rNR11], a                                ; $5E93: $E0 $11
    add b                                         ; $5E95: $80
    and b                                         ; $5E96: $A0
    ld b, b                                       ; $5E97: $40
    sub c                                         ; $5E98: $91
    ld l, c                                       ; $5E99: $69
    ldh a, [$FF60]                                ; $5E9A: $F0 $60
    nop                                           ; $5E9C: $00
    nop                                           ; $5E9D: $00
    add hl, bc                                    ; $5E9E: $09
    ld [$1507], sp                                ; $5E9F: $08 $07 $15
    ld d, d                                       ; $5EA2: $52
    inc c                                         ; $5EA3: $0C
    db $10                                        ; $5EA4: $10
    rrca                                          ; $5EA5: $0F
    ld de, $3703                                  ; $5EA6: $11 $03 $37
    add b                                         ; $5EA9: $80
    ld a, b                                       ; $5EAA: $78
    ld [hl], l                                    ; $5EAB: $75

jr_033_5EAC:
    ccf                                           ; $5EAC: $3F
    nop                                           ; $5EAD: $00
    ld h, b                                       ; $5EAE: $60
    nop                                           ; $5EAF: $00
    nop                                           ; $5EB0: $00
    ld a, [bc]                                    ; $5EB1: $0A
    rst RST_38                                    ; $5EB2: $FF
    dec d                                         ; $5EB3: $15
    ld l, b                                       ; $5EB4: $68
    db $10                                        ; $5EB5: $10
    stop                                          ; $5EB6: $10 $00
    rst RST_28                                    ; $5EB8: $EF
    db $10                                        ; $5EB9: $10
    rst RST_00                                    ; $5EBA: $C7
    rst RST_10                                    ; $5EBB: $D7
    jr z, jr_033_5EAC                             ; $5EBC: $28 $EE

    nop                                           ; $5EBE: $00
    jr nc, jr_033_5EC1                            ; $5EBF: $30 $00

jr_033_5EC1:
    ld bc, $E000                                  ; $5EC1: $01 $00 $E0
    add hl, bc                                    ; $5EC4: $09
    jr nz, jr_033_5F1B                            ; $5EC5: $20 $54

    ret nz                                        ; $5EC7: $C0

    dec d                                         ; $5EC8: $15
    ld h, b                                       ; $5EC9: $60
    db $10                                        ; $5ECA: $10
    ldh [rNR11], a                                ; $5ECB: $E0 $11
    add b                                         ; $5ECD: $80
    ret c                                         ; $5ECE: $D8

    sbc l                                         ; $5ECF: $9D
    add b                                         ; $5ED0: $80
    inc a                                         ; $5ED1: $3C
    ld hl, sp+$00                                 ; $5ED2: $F8 $00
    ld h, b                                       ; $5ED4: $60
    nop                                           ; $5ED5: $00
    nop                                           ; $5ED6: $00
    rrca                                          ; $5ED7: $0F
    ld d, h                                       ; $5ED8: $54
    ld bc, $0210                                  ; $5ED9: $01 $10 $02
    jr nz, jr_033_5EE4                            ; $5EDC: $20 $06

    db $10                                        ; $5EDE: $10
    ld [$0D07], sp                                ; $5EDF: $08 $07 $0D
    jr @+$11                                      ; $5EE2: $18 $0F

jr_033_5EE4:
    inc c                                         ; $5EE4: $0C
    inc bc                                        ; $5EE5: $03
    ld [hl], b                                    ; $5EE6: $70
    db $10                                        ; $5EE7: $10
    dec b                                         ; $5EE8: $05
    db $10                                        ; $5EE9: $10
    ld l, d                                       ; $5EEA: $6A
    inc b                                         ; $5EEB: $04
    db $10                                        ; $5EEC: $10
    and b                                         ; $5EED: $A0
    ld [bc], a                                    ; $5EEE: $02
    nop                                           ; $5EEF: $00
    nop                                           ; $5EF0: $00
    rlca                                          ; $5EF1: $07
    jr nz, @-$4A                                  ; $5EF2: $20 $B4

    db $10                                        ; $5EF4: $10
    ret nz                                        ; $5EF5: $C0

jr_033_5EF6:
    ld sp, $3820                                  ; $5EF6: $31 $20 $38
    db $10                                        ; $5EF9: $10
    inc c                                         ; $5EFA: $0C
    ld hl, sp+$2B                                 ; $5EFB: $F8 $2B
    ld [$11F0], sp                                ; $5EFD: $08 $F0 $11
    ld e, b                                       ; $5F00: $58
    db $10                                        ; $5F01: $10
    db $EC                                        ; $5F02: $EC
    ld [hl], b                                    ; $5F03: $70
    nop                                           ; $5F04: $00
    ret nz                                        ; $5F05: $C0

    ldh a, [rTAC]                                 ; $5F06: $F0 $07
    jp nz, Jump_033_417C                          ; $5F08: $C2 $7C $41

    ld a, $3F                                     ; $5F0B: $3E $3F
    rlca                                          ; $5F0D: $07
    ld d, $1F                                     ; $5F0E: $16 $1F
    rrca                                          ; $5F10: $0F
    ld e, $10                                     ; $5F11: $1E $10
    ld c, $50                                     ; $5F13: $0E $50
    ld sp, $367E                                  ; $5F15: $31 $7E $36
    ld bc, $D0FF                                  ; $5F18: $01 $FF $D0

jr_033_5F1B:
    ld de, $807F                                  ; $5F1B: $11 $7F $80
    ldh a, [rP1]                                  ; $5F1E: $F0 $00
    add c                                         ; $5F20: $81
    rlca                                          ; $5F21: $07
    inc hl                                        ; $5F22: $23
    inc e                                         ; $5F23: $1C
    pop af                                        ; $5F24: $F1
    ld c, $88                                     ; $5F25: $0E $88
    rst RST_30                                    ; $5F27: $F7
    ld h, b                                       ; $5F28: $60
    ld c, l                                       ; $5F29: $4D
    rst RST_38                                    ; $5F2A: $FF
    add hl, de                                    ; $5F2B: $19
    add b                                         ; $5F2C: $80
    ld a, a                                       ; $5F2D: $7F
    ld h, e                                       ; $5F2E: $63
    add hl, bc                                    ; $5F2F: $09
    or b                                          ; $5F30: $B0
    db $10                                        ; $5F31: $10
    ld b, d                                       ; $5F32: $42
    ld c, h                                       ; $5F33: $4C
    jr nz, @+$04                                  ; $5F34: $20 $02

    db $FC                                        ; $5F36: $FC
    ld bc, $15FE                                  ; $5F37: $01 $FE $15
    rlca                                          ; $5F3A: $07
    rla                                           ; $5F3B: $17
    ld hl, sp+$7F                                 ; $5F3C: $F8 $7F
    add b                                         ; $5F3E: $80
    ld b, b                                       ; $5F3F: $40
    nop                                           ; $5F40: $00
    ld b, b                                       ; $5F41: $40
    db $10                                        ; $5F42: $10
    rlca                                          ; $5F43: $07
    nop                                           ; $5F44: $00
    jp nz, Jump_033_417C                          ; $5F45: $C2 $7C $41

    ld a, $3F                                     ; $5F48: $3E $3F
    rlca                                          ; $5F4A: $07
    rra                                           ; $5F4B: $1F
    rrca                                          ; $5F4C: $0F
    ld e, b                                       ; $5F4D: $58
    ld e, $10                                     ; $5F4E: $1E $10
    ld c, $50                                     ; $5F50: $0E $50
    ld sp, $017E                                  ; $5F52: $31 $7E $01
    rst RST_38                                    ; $5F55: $FF
    jp c, $11D0                                   ; $5F56: $DA $D0 $11

    ld a, a                                       ; $5F59: $7F
    add b                                         ; $5F5A: $80
    ldh a, [rP1]                                  ; $5F5B: $F0 $00
    rlca                                          ; $5F5D: $07
    ld [hl+], a                                   ; $5F5E: $22
    dec b                                         ; $5F5F: $05
    inc e                                         ; $5F60: $1C
    pop af                                        ; $5F61: $F1
    ld c, $88                                     ; $5F62: $0E $88
    rst RST_30                                    ; $5F64: $F7
    ld h, b                                       ; $5F65: $60
    rst RST_38                                    ; $5F66: $FF
    add hl, de                                    ; $5F67: $19
    dec [hl]                                      ; $5F68: $35
    add b                                         ; $5F69: $80
    ld a, a                                       ; $5F6A: $7F
    ld h, e                                       ; $5F6B: $63
    add hl, bc                                    ; $5F6C: $09
    or b                                          ; $5F6D: $B0
    db $10                                        ; $5F6E: $10
    ld c, h                                       ; $5F6F: $4C
    jr nz, jr_033_5F7A                            ; $5F70: $20 $08

    ld [bc], a                                    ; $5F72: $02
    db $FC                                        ; $5F73: $FC
    ld bc, $15FE                                  ; $5F74: $01 $FE $15
    rlca                                          ; $5F77: $07
    ld hl, sp+$7F                                 ; $5F78: $F8 $7F

jr_033_5F7A:
    ld e, a                                       ; $5F7A: $5F
    add b                                         ; $5F7B: $80
    ld b, b                                       ; $5F7C: $40
    nop                                           ; $5F7D: $00
    ld b, b                                       ; $5F7E: $40
    db $10                                        ; $5F7F: $10
    rrca                                          ; $5F80: $0F
    rrca                                          ; $5F81: $0F
    rrca                                          ; $5F82: $0F
    ret nz                                        ; $5F83: $C0

    rrca                                          ; $5F84: $0F
    rlca                                          ; $5F85: $07
    ld c, a                                       ; $5F86: $4F
    ld b, b                                       ; $5F87: $40
    ld l, d                                       ; $5F88: $6A
    nop                                           ; $5F89: $00
    rlca                                          ; $5F8A: $07
    ld [bc], a                                    ; $5F8B: $02
    ld bc, $0308                                  ; $5F8C: $01 $08 $03
    ld [$D407], sp                                ; $5F8F: $08 $07 $D4
    db $10                                        ; $5F92: $10
    ld [$1902], sp                                ; $5F93: $08 $02 $19
    dec bc                                        ; $5F96: $0B
    jr c, jr_033_5FB6                             ; $5F97: $38 $1D

    ld [$1F5E], sp                                ; $5F99: $08 $5E $1F
    ld [$400F], sp                                ; $5F9C: $08 $0F $40
    nop                                           ; $5F9F: $00
    rst RST_10                                    ; $5FA0: $D7
    nop                                           ; $5FA1: $00
    ld a, h                                       ; $5FA2: $7C
    and d                                         ; $5FA3: $A2
    ld [$10E3], sp                                ; $5FA4: $08 $E3 $10
    ldh a, [rIE]                                  ; $5FA7: $F0 $FF
    ld hl, sp+$08                                 ; $5FA9: $F8 $08
    db $FD                                        ; $5FAB: $FD
    ld e, d                                       ; $5FAC: $5A
    ld a, [hl]                                    ; $5FAD: $7E
    add hl, bc                                    ; $5FAE: $09
    ld sp, hl                                     ; $5FAF: $F9
    ld [$E039], sp                                ; $5FB0: $08 $39 $E0
    ld [$7AE8], sp                                ; $5FB3: $08 $E8 $7A

jr_033_5FB6:
    rst RST_30                                    ; $5FB6: $F7
    add hl, bc                                    ; $5FB7: $09
    add hl, hl                                    ; $5FB8: $29
    rst RST_38                                    ; $5FB9: $FF
    inc bc                                        ; $5FBA: $03
    add b                                         ; $5FBB: $80
    ld [$FEC0], sp                                ; $5FBC: $08 $C0 $FE
    ld [$1088], sp                                ; $5FBF: $08 $88 $10
    ld [$B830], sp                                ; $5FC2: $08 $30 $B8
    jr @-$2A                                      ; $5FC5: $18 $D4

    ld [bc], a                                    ; $5FC7: $02
    ld [$8854], sp                                ; $5FC8: $08 $54 $88
    ld l, b                                       ; $5FCB: $68
    sub b                                         ; $5FCC: $90
    db $10                                        ; $5FCD: $10
    ld d, b                                       ; $5FCE: $50
    ld h, b                                       ; $5FCF: $60
    rst RST_30                                    ; $5FD0: $F7
    sub c                                         ; $5FD1: $91
    inc b                                         ; $5FD2: $04
    ld [hl], b                                    ; $5FD3: $70
    ld [$101C], sp                                ; $5FD4: $08 $1C $10
    add hl, de                                    ; $5FD7: $19
    ld bc, $015D                                  ; $5FD8: $01 $5D $01
    ld [$1003], sp                                ; $5FDB: $08 $03 $10
    ld [$0B18], sp                                ; $5FDE: $08 $18 $0B
    jr jr_033_6046                                ; $5FE1: $18 $63

    dec e                                         ; $5FE3: $1D
    ld h, b                                       ; $5FE4: $60
    add hl, bc                                    ; $5FE5: $09
    rrca                                          ; $5FE6: $0F
    inc b                                         ; $5FE7: $04
    rlca                                          ; $5FE8: $07
    ld d, b                                       ; $5FE9: $50
    ld e, c                                       ; $5FEA: $59
    ld e, l                                       ; $5FEB: $5D
    jr nz, jr_033_5FF6                            ; $5FEC: $20 $08

    ld [hl], b                                    ; $5FEE: $70
    db $10                                        ; $5FEF: $10
    add hl, de                                    ; $5FF0: $19
    ld bc, $081F                                  ; $5FF1: $01 $1F $08
    ld c, e                                       ; $5FF4: $4B
    ld a, [hl]                                    ; $5FF5: $7E

jr_033_5FF6:
    db $10                                        ; $5FF6: $10
    db $FC                                        ; $5FF7: $FC
    ld a, a                                       ; $5FF8: $7F
    ld a, [bc]                                    ; $5FF9: $0A
    cp a                                          ; $5FFA: $BF
    inc c                                         ; $5FFB: $0C
    jr c, jr_033_6023                             ; $5FFC: $38 $25

    ld hl, sp-$01                                 ; $5FFE: $F8 $FF
    ld [$E8F7], sp                                ; $6000: $08 $F7 $E8
    ld [$28E0], sp                                ; $6003: $08 $E0 $28
    jp c, $E9C9                                   ; $6006: $DA $C9 $E9

    ld [hl], b                                    ; $6009: $70
    db $10                                        ; $600A: $10
    add hl, de                                    ; $600B: $19
    add b                                         ; $600C: $80
    ld [$8942], sp                                ; $600D: $08 $42 $89
    db $10                                        ; $6010: $10
    daa                                           ; $6011: $27
    jp nz, Jump_000_1862                          ; $6012: $C2 $62 $18

    ldh a, [$FF60]                                ; $6015: $F0 $60
    ld [$60D1], sp                                ; $6017: $08 $D1 $60
    add hl, de                                    ; $601A: $19
    ld l, b                                       ; $601B: $68
    jr c, jr_033_6072                             ; $601C: $38 $54

    adc b                                         ; $601E: $88
    ld [hl], h                                    ; $601F: $74
    ld [$0875], sp                                ; $6020: $08 $75 $08

jr_033_6023:
    ld b, b                                       ; $6023: $40
    ret z                                         ; $6024: $C8

    jr c, @+$1F                                   ; $6025: $38 $1D

    cp b                                          ; $6027: $B8
    inc hl                                        ; $6028: $23
    stop                                          ; $6029: $10 $00
    ld [hl], d                                    ; $602B: $72
    dec a                                         ; $602C: $3D
    db $FD                                        ; $602D: $FD
    ld a, [hl]                                    ; $602E: $7E
    db $FC                                        ; $602F: $FC
    ld c, a                                       ; $6030: $4F
    ld a, h                                       ; $6031: $7C
    scf                                           ; $6032: $37
    ld b, h                                       ; $6033: $44
    ld e, [hl]                                    ; $6034: $5E
    ld [$0F3E], sp                                ; $6035: $08 $3E $0F
    ld e, $08                                     ; $6038: $1E $08
    ccf                                           ; $603A: $3F
    rra                                           ; $603B: $1F
    ld l, e                                       ; $603C: $6B
    ld [hl], e                                    ; $603D: $73
    db $10                                        ; $603E: $10
    add b                                         ; $603F: $80
    inc bc                                        ; $6040: $03
    nop                                           ; $6041: $00
    ld bc, $0009                                  ; $6042: $01 $09 $00
    push de                                       ; $6045: $D5

jr_033_6046:
    ret c                                         ; $6046: $D8

    ld bc, $0880                                  ; $6047: $01 $80 $08
    ret nz                                        ; $604A: $C0

    db $10                                        ; $604B: $10
    ld hl, sp+$08                                 ; $604C: $F8 $08
    add hl, bc                                    ; $604E: $09
    adc b                                         ; $604F: $88
    ld [hl], b                                    ; $6050: $70
    db $10                                        ; $6051: $10
    ldh [$FF09], a                                ; $6052: $E0 $09

jr_033_6054:
    ld c, $F0                                     ; $6054: $0E $F0
    adc b                                         ; $6056: $88
    ld l, d                                       ; $6057: $6A
    cp $F0                                        ; $6058: $FE $F0
    jr jr_033_6074                                ; $605A: $18 $18

    jr c, @-$36                                   ; $605C: $38 $C8

    jr jr_033_6054                                ; $605E: $18 $F4

    rst RST_08                                    ; $6060: $CF
    sub b                                         ; $6061: $90
    ld b, b                                       ; $6062: $40
    call z, $A8CF                                 ; $6063: $CC $CF $A8
    ret                                           ; $6066: $C9


    jp hl                                         ; $6067: $E9


    ld bc, $0350                                  ; $6068: $01 $50 $03
    ld [$1037], sp                                ; $606B: $08 $37 $10
    ld a, a                                       ; $606E: $7F
    inc [hl]                                      ; $606F: $34
    rst RST_38                                    ; $6070: $FF
    ld h, h                                       ; $6071: $64

jr_033_6072:
    ld a, a                                       ; $6072: $7F
    ld h, a                                       ; $6073: $67

jr_033_6074:
    jr z, jr_033_60BF                             ; $6074: $28 $49

    ld hl, sp+$69                                 ; $6076: $F8 $69
    db $10                                        ; $6078: $10
    add hl, bc                                    ; $6079: $09
    add hl, hl                                    ; $607A: $29
    ld [$193B], a                                 ; $607B: $EA $3B $19
    ld bc, $1A07                                  ; $607E: $01 $07 $1A
    add b                                         ; $6081: $80
    ld [$83D8], sp                                ; $6082: $08 $D8 $83
    db $10                                        ; $6085: $10
    db $FC                                        ; $6086: $FC
    ld e, b                                       ; $6087: $58
    cp $4C                                        ; $6088: $FE $4C
    call z, $4928                                 ; $608A: $CC $28 $49
    ld a, a                                       ; $608D: $7F
    ret nz                                        ; $608E: $C0

    ld a, [de]                                    ; $608F: $1A
    dec hl                                        ; $6090: $2B
    dec sp                                        ; $6091: $3B
    ld sp, hl                                     ; $6092: $F9
    dec bc                                        ; $6093: $0B
    rlca                                          ; $6094: $07
    rlca                                          ; $6095: $07
    ld d, h                                       ; $6096: $54
    ld [bc], a                                    ; $6097: $02
    ld a, [bc]                                    ; $6098: $0A
    ld b, $0A                                     ; $6099: $06 $0A
    add [hl]                                      ; $609B: $86
    ld [$844E], sp                                ; $609C: $08 $4E $84
    ld b, l                                       ; $609F: $45
    ld e, [hl]                                    ; $60A0: $5E
    ld [$4CBA], sp                                ; $60A1: $08 $BA $4C
    inc bc                                        ; $60A4: $03
    jr c, jr_033_60CE                             ; $60A5: $38 $27

    db $10                                        ; $60A7: $10
    inc bc                                        ; $60A8: $03
    ld a, a                                       ; $60A9: $7F
    inc h                                         ; $60AA: $24
    rst RST_38                                    ; $60AB: $FF
    ld d, h                                       ; $60AC: $54
    rst RST_30                                    ; $60AD: $F7
    ld b, e                                       ; $60AE: $43
    nop                                           ; $60AF: $00
    ld c, b                                       ; $60B0: $48
    cp a                                          ; $60B1: $BF
    ld b, b                                       ; $60B2: $40
    ld bc, $1800                                  ; $60B3: $01 $00 $18
    add hl, bc                                    ; $60B6: $09
    add hl, hl                                    ; $60B7: $29
    dec sp                                        ; $60B8: $3B
    dec b                                         ; $60B9: $05
    ld d, h                                       ; $60BA: $54
    rlca                                          ; $60BB: $07
    ld [$0880], sp                                ; $60BC: $08 $80 $08

jr_033_60BF:
    ret z                                         ; $60BF: $C8

    db $10                                        ; $60C0: $10
    db $FC                                        ; $60C1: $FC
    ld c, b                                       ; $60C2: $48
    ld c, l                                       ; $60C3: $4D
    cp $F8                                        ; $60C4: $FE $F8
    sub $84                                       ; $60C6: $D6 $84
    nop                                           ; $60C8: $00

jr_033_60C9:
    ld e, d                                       ; $60C9: $5A
    ret nz                                        ; $60CA: $C0

    db $10                                        ; $60CB: $10
    ei                                            ; $60CC: $FB
    add hl, bc                                    ; $60CD: $09

jr_033_60CE:
    add hl, hl                                    ; $60CE: $29
    dec sp                                        ; $60CF: $3B
    add hl, de                                    ; $60D0: $19
    inc bc                                        ; $60D1: $03
    ld bc, $072C                                  ; $60D2: $01 $2C $07
    xor d                                         ; $60D5: $AA
    inc bc                                        ; $60D6: $03
    ld [bc], a                                    ; $60D7: $02
    ld a, [bc]                                    ; $60D8: $0A
    ld b, $0A                                     ; $60D9: $06 $0A
    ld b, [hl]                                    ; $60DB: $46
    ld [$27AE], sp                                ; $60DC: $08 $AE $27
    ld b, h                                       ; $60DF: $44
    cp [hl]                                       ; $60E0: $BE
    ld [$CC3A], sp                                ; $60E1: $08 $3A $CC
    cp a                                          ; $60E4: $BF
    rlca                                          ; $60E5: $07
    rlca                                          ; $60E6: $07
    ld a, [$0707]                                 ; $60E7: $FA $07 $07
    rlca                                          ; $60EA: $07
    rlca                                          ; $60EB: $07
    rlca                                          ; $60EC: $07
    ld bc, $0308                                  ; $60ED: $01 $08 $03
    or c                                          ; $60F0: $B1
    db $10                                        ; $60F1: $10
    rlca                                          ; $60F2: $07
    db $10                                        ; $60F3: $10
    add hl, bc                                    ; $60F4: $09
    rrca                                          ; $60F5: $0F
    ld b, $0E                                     ; $60F6: $06 $0E
    jr nz, jr_033_60C9                            ; $60F8: $20 $CF

    ld a, [bc]                                    ; $60FA: $0A
    jr c, jr_033_611B                             ; $60FB: $38 $1E

    dec bc                                        ; $60FD: $0B
    add hl, hl                                    ; $60FE: $29
    nop                                           ; $60FF: $00
    rst RST_20                                    ; $6100: $E7
    ld [bc], a                                    ; $6101: $02
    inc h                                         ; $6102: $24
    add sp, -$09                                  ; $6103: $E8 $F7
    add hl, bc                                    ; $6105: $09
    ldh [rIE], a                                  ; $6106: $E0 $FF
    dec hl                                        ; $6108: $2B
    pop hl                                        ; $6109: $E1
    ld a, [hl]                                    ; $610A: $7E

jr_033_610B:
    ld [hl+], a                                   ; $610B: $22
    ld [hl], l                                    ; $610C: $75
    cp d                                          ; $610D: $BA
    ld [$719A], sp                                ; $610E: $08 $9A $71
    sbc [hl]                                      ; $6111: $9E
    nop                                           ; $6112: $00
    ld [$1E49], sp                                ; $6113: $08 $49 $1E
    ld [$040E], sp                                ; $6116: $08 $0E $04
    add hl, bc                                    ; $6119: $09
    rlca                                          ; $611A: $07

jr_033_611B:
    ld [bc], a                                    ; $611B: $02
    nop                                           ; $611C: $00
    sub h                                         ; $611D: $94
    ld a, [$C030]                                 ; $611E: $FA $30 $C0
    ld h, b                                       ; $6121: $60
    ldh a, [$FF09]                                ; $6122: $F0 $09
    ld c, b                                       ; $6124: $48

jr_033_6125:
    or b                                          ; $6125: $B0
    inc bc                                        ; $6126: $03
    adc b                                         ; $6127: $88
    ld [hl], b                                    ; $6128: $70
    jr jr_033_610B                                ; $6129: $18 $E0

    inc d                                         ; $612B: $14
    add sp, $29                                   ; $612C: $E8 $29
    nop                                           ; $612E: $00
    db $E3                                        ; $612F: $E3
    sbc d                                         ; $6130: $9A
    rlca                                          ; $6131: $07
    inc bc                                        ; $6132: $03
    rlca                                          ; $6133: $07
    ld bc, $100F                                  ; $6134: $01 $0F $10
    ld a, [bc]                                    ; $6137: $0A
    ld sp, $0E06                                  ; $6138: $31 $06 $0E
    jr @+$0A                                      ; $613B: $18 $08

    inc bc                                        ; $613D: $03
    ld e, $0B                                     ; $613E: $1E $0B
    add hl, hl                                    ; $6140: $29
    db $E4                                        ; $6141: $E4
    nop                                           ; $6142: $00
    rst RST_00                                    ; $6143: $C7
    ld b, $E8                                     ; $6144: $06 $E8
    rst RST_30                                    ; $6146: $F7
    add hl, bc                                    ; $6147: $09
    ldh [rIE], a                                  ; $6148: $E0 $FF
    add b                                         ; $614A: $80
    ld a, [hl+]                                   ; $614B: $2A
    ld [hl], a                                    ; $614C: $77
    ld h, b                                       ; $614D: $60
    cp a                                          ; $614E: $BF
    ld [hl], c                                    ; $614F: $71
    xor [hl]                                      ; $6150: $AE
    di                                            ; $6151: $F3
    inc l                                         ; $6152: $2C
    add hl, bc                                    ; $6153: $09
    ld [hl], e                                    ; $6154: $73
    inc a                                         ; $6155: $3C
    inc [hl]                                      ; $6156: $34
    ld [$3809], sp                                ; $6157: $08 $09 $38
    db $10                                        ; $615A: $10
    add hl, bc                                    ; $615B: $09
    ld [hl-], a                                   ; $615C: $32
    ld [hl], b                                    ; $615D: $70
    jr nz, jr_033_6160                            ; $615E: $20 $00

jr_033_6160:
    ld a, [$8040]                                 ; $6160: $FA $40 $80
    jr z, jr_033_6125                             ; $6163: $28 $C0

    and e                                         ; $6165: $A3
    ld d, b                                       ; $6166: $50
    ldh [$FF09], a                                ; $6167: $E0 $09
    ld c, b                                       ; $6169: $48
    or b                                          ; $616A: $B0
    adc b                                         ; $616B: $88
    add b                                         ; $616C: $80
    or b                                          ; $616D: $B0
    daa                                           ; $616E: $27
    ldh a, [rNR23]                                ; $616F: $F0 $18
    jr c, @+$16                                   ; $6171: $38 $14

    add sp, $39                                   ; $6173: $E8 $39
    nop                                           ; $6175: $00
    cp d                                          ; $6176: $BA
    push de                                       ; $6177: $D5
    rlca                                          ; $6178: $07
    inc bc                                        ; $6179: $03
    inc bc                                        ; $617A: $03
    ld [$1006], sp                                ; $617B: $08 $06 $10
    ld e, $08                                     ; $617E: $1E $08
    add hl, bc                                    ; $6180: $09
    ld l, $1B                                     ; $6181: $2E $1B
    ld a, b                                       ; $6183: $78
    daa                                           ; $6184: $27
    ld [$7E3F], sp                                ; $6185: $08 $3F $7E
    jr jr_033_61D1                                ; $6188: $18 $47

    cpl                                           ; $618A: $2F
    jr c, jr_033_61AA                             ; $618B: $38 $1D

    ld [bc], a                                    ; $618D: $02
    dec b                                         ; $618E: $05
    ld [$E700], sp                                ; $618F: $08 $00 $E7
    and b                                         ; $6192: $A0
    inc b                                         ; $6193: $04
    or b                                          ; $6194: $B0
    ld [$30C8], sp                                ; $6195: $08 $C8 $30
    sub b                                         ; $6198: $90
    ldh [$FF3C], a                                ; $6199: $E0 $3C
    ld e, e                                       ; $619B: $5B
    ret nz                                        ; $619C: $C0

    xor b                                         ; $619D: $A8
    db $FC                                        ; $619E: $FC
    jr jr_033_61C9                                ; $619F: $18 $28

    ldh a, [$FF28]                                ; $61A1: $F0 $28
    ld c, b                                       ; $61A3: $48
    ld [hl], b                                    ; $61A4: $70
    ld h, b                                       ; $61A5: $60
    nop                                           ; $61A6: $00
    rst RST_00                                    ; $61A7: $C7
    nop                                           ; $61A8: $00
    inc c                                         ; $61A9: $0C

jr_033_61AA:
    rlca                                          ; $61AA: $07
    ld e, $0F                                     ; $61AB: $1E $0F
    ld l, c                                       ; $61AD: $69
    rra                                           ; $61AE: $1F
    jr nz, @+$0A                                  ; $61AF: $20 $08

    ld a, [bc]                                    ; $61B1: $0A
    add hl, bc                                    ; $61B2: $09
    ccf                                           ; $61B3: $3F
    ld a, [de]                                    ; $61B4: $1A
    ld [$1C6A], sp                                ; $61B5: $08 $6A $1C
    ld [$2F30], sp                                ; $61B8: $08 $30 $2F
    ld [$0867], sp                                ; $61BB: $08 $67 $08
    ld [hl], b                                    ; $61BE: $70
    sbc b                                         ; $61BF: $98
    adc b                                         ; $61C0: $88
    inc a                                         ; $61C1: $3C
    inc bc                                        ; $61C2: $03
    db $10                                        ; $61C3: $10
    cp $86                                        ; $61C4: $FE $86
    ld bc, $004F                                  ; $61C6: $01 $4F $00

jr_033_61C9:
    add l                                         ; $61C9: $85
    rst RST_38                                    ; $61CA: $FF
    dec b                                         ; $61CB: $05
    rst RST_18                                    ; $61CC: $DF
    xor b                                         ; $61CD: $A8
    call c, $CFAB                                 ; $61CE: $DC $AB $CF

jr_033_61D1:
    ld c, d                                       ; $61D1: $4A
    cp a                                          ; $61D2: $BF
    jr c, jr_033_6254                             ; $61D3: $38 $7F

    cp $10                                        ; $61D5: $FE $10
    db $FC                                        ; $61D7: $FC
    ld [$E680], sp                                ; $61D8: $08 $80 $E6
    ld [$08A0], sp                                ; $61DB: $08 $A0 $08
    ccf                                           ; $61DE: $3F
    ret nz                                        ; $61DF: $C0

    ld hl, $3A05                                  ; $61E0: $21 $05 $3A
    ld a, [hl+]                                   ; $61E3: $2A
    call z, Call_000_0832                         ; $61E4: $CC $32 $08
    and d                                         ; $61E7: $A2
    ldh [$FFC2], a                                ; $61E8: $E0 $C2
    or b                                          ; $61EA: $B0
    inc b                                         ; $61EB: $04
    ld b, d                                       ; $61EC: $42
    ld hl, sp+$0B                                 ; $61ED: $F8 $0B
    inc c                                         ; $61EF: $0C
    ldh a, [rNR34]                                ; $61F0: $F0 $1E
    ldh [$FFDB], a                                ; $61F2: $E0 $DB
    cp $F4                                        ; $61F4: $FE $F4
    ld [$FE50], sp                                ; $61F6: $08 $50 $FE
    adc b                                         ; $61F9: $88
    rlca                                          ; $61FA: $07
    adc b                                         ; $61FB: $88
    rrca                                          ; $61FC: $0F
    rra                                           ; $61FD: $1F
    jp c, Jump_000_0820                           ; $61FE: $DA $20 $08

    ld a, [bc]                                    ; $6201: $0A
    add hl, bc                                    ; $6202: $09
    cp b                                          ; $6203: $B8
    ld a, [de]                                    ; $6204: $1A
    ld [$D51C], sp                                ; $6205: $08 $1C $D5
    ld [$2F30], sp                                ; $6208: $08 $30 $2F
    ld [$0867], sp                                ; $620B: $08 $67 $08
    ld [hl], b                                    ; $620E: $70
    adc b                                         ; $620F: $88
    jr nc, jr_033_624E                            ; $6210: $30 $3C

    inc bc                                        ; $6212: $03
    db $10                                        ; $6213: $10
    cp $8A                                        ; $6214: $FE $8A
    ld bc, $895F                                  ; $6216: $01 $5F $89
    nop                                           ; $6219: $00
    rst RST_38                                    ; $621A: $FF
    add hl, bc                                    ; $621B: $09
    rst RST_18                                    ; $621C: $DF

jr_033_621D:
    xor b                                         ; $621D: $A8
    call c, $CFAB                                 ; $621E: $DC $AB $CF
    cp a                                          ; $6221: $BF
    sub l                                         ; $6222: $95
    jr c, jr_033_62A4                             ; $6223: $38 $7F

    cp $10                                        ; $6225: $FE $10
    db $FC                                        ; $6227: $FC
    ld [$0880], sp                                ; $6228: $08 $80 $08
    call z, $08A0                                 ; $622B: $CC $A0 $08
    ccf                                           ; $622E: $3F
    ret nz                                        ; $622F: $C0

    ld hl, $3A05                                  ; $6230: $21 $05 $3A
    call z, $3254                                 ; $6233: $CC $54 $32
    ld [$E0A2], sp                                ; $6236: $08 $A2 $E0
    jp nz, Jump_000_04B0                          ; $6239: $C2 $B0 $04

    ld hl, sp-$7B                                 ; $623C: $F8 $85
    dec bc                                        ; $623E: $0B
    inc c                                         ; $623F: $0C
    ldh a, [rNR34]                                ; $6240: $F0 $1E
    ldh [$FFDB], a                                ; $6242: $E0 $DB
    cp $08                                        ; $6244: $FE $08
    rst RST_38                                    ; $6246: $FF
    ld d, b                                       ; $6247: $50
    cp $07                                        ; $6248: $FE $07
    rlca                                          ; $624A: $07
    rlca                                          ; $624B: $07
    rlca                                          ; $624C: $07
    rlca                                          ; $624D: $07

jr_033_624E:
    rlca                                          ; $624E: $07
    ret nz                                        ; $624F: $C0

    rlca                                          ; $6250: $07
    rlca                                          ; $6251: $07
    ld d, h                                       ; $6252: $54
    nop                                           ; $6253: $00

jr_033_6254:
    ld d, a                                       ; $6254: $57
    nop                                           ; $6255: $00
    inc b                                         ; $6256: $04
    ld bc, $0310                                  ; $6257: $01 $10 $03
    jr nz, jr_033_626D                            ; $625A: $20 $11

    ld d, c                                       ; $625C: $51
    jp hl                                         ; $625D: $E9


    ld bc, $1050                                  ; $625E: $01 $50 $10
    inc b                                         ; $6261: $04
    jr nz, @+$0A                                  ; $6262: $20 $08

    rlca                                          ; $6264: $07
    ld de, $0B4D                                  ; $6265: $11 $4D $0B
    ld h, b                                       ; $6268: $60
    scf                                           ; $6269: $37

jr_033_626A:
    ld [bc], a                                    ; $626A: $02
    jr nc, jr_033_621D                            ; $626B: $30 $B0

jr_033_626D:
    ld de, $A810                                  ; $626D: $11 $10 $A8
    rlca                                          ; $6270: $07
    xor d                                         ; $6271: $AA
    db $10                                        ; $6272: $10
    push de                                       ; $6273: $D5
    jr nz, @-$1B                                  ; $6274: $20 $E3

    call c, Call_033_53FF                         ; $6276: $DC $FF $53
    ld h, e                                       ; $6279: $63
    db $10                                        ; $627A: $10
    ld [hl], $10                                  ; $627B: $36 $10
    ld l, e                                       ; $627D: $6B
    ld a, a                                       ; $627E: $7F
    sub b                                         ; $627F: $90
    db $10                                        ; $6280: $10
    ld hl, $9480                                  ; $6281: $21 $80 $94
    ld d, b                                       ; $6284: $50
    inc h                                         ; $6285: $24
    db $DB                                        ; $6286: $DB
    ld [$60F7], sp                                ; $6287: $08 $F7 $60
    xor e                                         ; $628A: $AB
    add b                                         ; $628B: $80
    nop                                           ; $628C: $00
    inc b                                         ; $628D: $04
    ld b, b                                       ; $628E: $40
    db $10                                        ; $628F: $10
    ldh [rNR41], a                                ; $6290: $E0 $20
    db $10                                        ; $6292: $10
    ld a, h                                       ; $6293: $7C
    ret nz                                        ; $6294: $C0

    nop                                           ; $6295: $00
    ldh [rP1], a                                  ; $6296: $E0 $00
    ld [hl], c                                    ; $6298: $71
    db $10                                        ; $6299: $10
    sub b                                         ; $629A: $90
    ld h, b                                       ; $629B: $60
    jr nz, jr_033_62A6                            ; $629C: $20 $08

    ldh a, [rNR11]                                ; $629E: $F0 $11
    add sp, $10                                   ; $62A0: $E8 $10
    halt                                          ; $62A2: $76
    and b                                         ; $62A3: $A0

jr_033_62A4:
    ld l, b                                       ; $62A4: $68
    xor e                                         ; $62A5: $AB

jr_033_62A6:
    ldh [$FFC4], a                                ; $62A6: $E0 $C4
    ret nc                                        ; $62A8: $D0

    inc b                                         ; $62A9: $04
    db $10                                        ; $62AA: $10
    ld c, $20                                     ; $62AB: $0E $20
    ld sp, $05AD                                  ; $62AD: $31 $AD $05
    ld b, b                                       ; $62B0: $40
    db $10                                        ; $62B1: $10
    ldh [rNR41], a                                ; $62B2: $E0 $20
    ld sp, $100C                                  ; $62B4: $31 $0C $10

jr_033_62B7:
    ld b, b                                       ; $62B7: $40
    ld [de], a                                    ; $62B8: $12
    jr nz, jr_033_62DC                            ; $62B9: $20 $21

    ld e, $27                                     ; $62BB: $1E $27
    jr jr_033_62EE                                ; $62BD: $18 $2F

    ld d, $1A                                     ; $62BF: $16 $1A

jr_033_62C1:
    ld d, a                                       ; $62C1: $57
    ld a, [bc]                                    ; $62C2: $0A
    ld l, a                                       ; $62C3: $6F
    or b                                          ; $62C4: $B0
    inc bc                                        ; $62C5: $03
    ld b, c                                       ; $62C6: $41
    db $10                                        ; $62C7: $10
    db $E3                                        ; $62C8: $E3
    and h                                         ; $62C9: $A4
    jr nz, jr_033_62B7                            ; $62CA: $20 $EB

    db $10                                        ; $62CC: $10
    push de                                       ; $62CD: $D5
    ld a, [hl+]                                   ; $62CE: $2A
    ld d, b                                       ; $62CF: $50
    ld e, l                                       ; $62D0: $5D
    rst RST_38                                    ; $62D1: $FF
    rla                                           ; $62D2: $17
    ld h, e                                       ; $62D3: $63
    ld a, a                                       ; $62D4: $7F
    ld [hl], $30                                  ; $62D5: $36 $30
    ld l, e                                       ; $62D7: $6B
    jr nc, jr_033_626A                            ; $62D8: $30 $90

    stop                                          ; $62DA: $10 $00

jr_033_62DC:
    nop                                           ; $62DC: $00
    xor b                                         ; $62DD: $A8
    ld d, a                                       ; $62DE: $57
    ld d, b                                       ; $62DF: $50
    xor a                                         ; $62E0: $AF
    db $10                                        ; $62E1: $10
    rst RST_28                                    ; $62E2: $EF
    add b                                         ; $62E3: $80
    push af                                       ; $62E4: $F5
    add c                                         ; $62E5: $81
    nop                                           ; $62E6: $00
    ld d, b                                       ; $62E7: $50
    db $10                                        ; $62E8: $10
    jr c, jr_033_630B                             ; $62E9: $38 $20

    sub b                                         ; $62EB: $90
    jr nc, jr_033_62C1                            ; $62EC: $30 $D3

jr_033_62EE:
    sub b                                         ; $62EE: $90
    db $10                                        ; $62EF: $10
    add d                                         ; $62F0: $82
    db $10                                        ; $62F1: $10
    add a                                         ; $62F2: $87
    ld [bc], a                                    ; $62F3: $02
    ld sp, $4001                                  ; $62F4: $31 $01 $40
    sbc b                                         ; $62F7: $98
    db $10                                        ; $62F8: $10
    inc h                                         ; $62F9: $24
    jr @+$44                                      ; $62FA: $18 $42

    inc a                                         ; $62FC: $3C
    ldh a, [c]                                    ; $62FD: $F2
    inc c                                         ; $62FE: $0C
    dec b                                         ; $62FF: $05

Jump_033_6300:
    ld a, d                                       ; $6300: $7A
    or h                                          ; $6301: $B4
    ld [hl], l                                    ; $6302: $75
    xor b                                         ; $6303: $A8
    ei                                            ; $6304: $FB
    or b                                          ; $6305: $B0
    inc b                                         ; $6306: $04
    db $10                                        ; $6307: $10
    ld e, d                                       ; $6308: $5A
    ld c, $20                                     ; $6309: $0E $20

jr_033_630B:
    rrca                                          ; $630B: $0F
    db $10                                        ; $630C: $10
    ret nz                                        ; $630D: $C0

    rlca                                          ; $630E: $07
    nop                                           ; $630F: $00
    inc bc                                        ; $6310: $03
    ld b, a                                       ; $6311: $47
    ld a, a                                       ; $6312: $7F
    jr nz, jr_033_62A4                            ; $6313: $20 $8F

    ld [hl], a                                    ; $6315: $77
    sbc b                                         ; $6316: $98
    ld de, $7160                                  ; $6317: $11 $60 $71
    ld a, [hl+]                                   ; $631A: $2A
    ccf                                           ; $631B: $3F
    rra                                           ; $631C: $1F
    db $10                                        ; $631D: $10
    dec e                                         ; $631E: $1D
    db $10                                        ; $631F: $10
    dec c                                         ; $6320: $0D
    ld [hl], b                                    ; $6321: $70
    dec a                                         ; $6322: $3D
    and l                                         ; $6323: $A5

jr_033_6324:
    db $10                                        ; $6324: $10
    ld bc, $0000                                  ; $6325: $01 $00 $00
    ld b, b                                       ; $6328: $40
    db $10                                        ; $6329: $10
    ldh [rNR41], a                                ; $632A: $E0 $20
    sub d                                         ; $632C: $92
    ld de, $C060                                  ; $632D: $11 $60 $C0
    nop                                           ; $6330: $00
    add b                                         ; $6331: $80
    ld hl, sp+$10                                 ; $6332: $F8 $10
    call nz, $B82E                                ; $6334: $C4 $2E $B8
    ld b, h                                       ; $6337: $44
    ld b, b                                       ; $6338: $40
    ld h, h                                       ; $6339: $64
    db $10                                        ; $633A: $10
    ld [hl], c                                    ; $633B: $71
    db $10                                        ; $633C: $10
    ldh a, [$FFA2]                                ; $633D: $F0 $A2
    db $10                                        ; $633F: $10

jr_033_6340:
    ld [hl], b                                    ; $6340: $70

jr_033_6341:
    db $10                                        ; $6341: $10
    ld h, b                                       ; $6342: $60
    db $FC                                        ; $6343: $FC
    ld a, b                                       ; $6344: $78
    stop                                          ; $6345: $10 $00
    or l                                          ; $6347: $B5
    ld bc, $1C0F                                  ; $6348: $01 $0F $1C
    ld bc, $1401                                  ; $634B: $01 $01 $14
    inc bc                                        ; $634E: $03
    jr nz, jr_033_6324                            ; $634F: $20 $D3

    or b                                          ; $6351: $B0
    db $10                                        ; $6352: $10
    rra                                           ; $6353: $1F
    jr nz, jr_033_6395                            ; $6354: $20 $3F

    ld e, $10                                     ; $6356: $1E $10
    ld b, b                                       ; $6358: $40
    ld d, l                                       ; $6359: $55
    rst RST_08                                    ; $635A: $CF
    or b                                          ; $635B: $B0
    rst RST_18                                    ; $635C: $DF
    ld [de], a                                    ; $635D: $12
    sbc a                                         ; $635E: $9F
    db $10                                        ; $635F: $10
    rst RST_38                                    ; $6360: $FF
    inc d                                         ; $6361: $14
    ld e, c                                       ; $6362: $59
    add h                                         ; $6363: $84
    db $10                                        ; $6364: $10
    adc $20                                       ; $6365: $CE $20
    inc de                                        ; $6367: $13
    rst RST_08                                    ; $6368: $CF
    add [hl]                                      ; $6369: $86
    ld de, $DF2D                                  ; $636A: $11 $2D $DF
    add a                                         ; $636D: $87
    ldh a, [$FF03]                                ; $636E: $F0 $03
    db $10                                        ; $6370: $10
    jr nc, jr_033_6373                            ; $6371: $30 $00

jr_033_6373:
    nop                                           ; $6373: $00
    ld e, d                                       ; $6374: $5A
    add b                                         ; $6375: $80
    inc d                                         ; $6376: $14
    ldh [rNR14], a                                ; $6377: $E0 $14
    add hl, bc                                    ; $6379: $09
    db $FC                                        ; $637A: $FC
    db $10                                        ; $637B: $10

jr_033_637C:
    cp $4A                                        ; $637C: $FE $4A
    cp h                                          ; $637E: $BC
    jr nc, jr_033_6341                            ; $637F: $30 $C0

    ldh [rNR10], a                                ; $6381: $E0 $10
    rrca                                          ; $6383: $0F
    ld [hl], b                                    ; $6384: $70
    dec bc                                        ; $6385: $0B
    rlca                                          ; $6386: $07
    inc b                                         ; $6387: $04
    ld a, [bc]                                    ; $6388: $0A
    dec b                                         ; $6389: $05

jr_033_638A:
    add hl, bc                                    ; $638A: $09
    ld b, $31                                     ; $638B: $06 $31
    ld [hl], c                                    ; $638D: $71
    or c                                          ; $638E: $B1
    cp c                                          ; $638F: $B9
    ld bc, $100E                                  ; $6390: $01 $0E $10
    ld d, b                                       ; $6393: $50
    or b                                          ; $6394: $B0

jr_033_6395:
    rlca                                          ; $6395: $07
    inc bc                                        ; $6396: $03
    nop                                           ; $6397: $00
    ld l, c                                       ; $6398: $69
    ld bc, $1050                                  ; $6399: $01 $50 $10
    rra                                           ; $639C: $1F
    jr nz, jr_033_63DE                            ; $639D: $20 $3F

    ld e, $10                                     ; $639F: $1E $10
    and b                                         ; $63A1: $A0
    ld b, b                                       ; $63A2: $40
    rst RST_08                                    ; $63A3: $CF
    ldh a, [$FF59]                                ; $63A4: $F0 $59
    add [hl]                                      ; $63A6: $86
    sub $09                                       ; $63A7: $D6 $09
    sub [hl]                                      ; $63A9: $96
    or e                                          ; $63AA: $B3
    db $10                                        ; $63AB: $10
    or $10                                        ; $63AC: $F6 $10
    ld [hl], b                                    ; $63AE: $70
    and [hl]                                      ; $63AF: $A6
    rst RST_38                                    ; $63B0: $FF
    or b                                          ; $63B1: $B0
    ld bc, $0154                                  ; $63B2: $01 $54 $01
    db $10                                        ; $63B5: $10
    inc bc                                        ; $63B6: $03
    jr nz, jr_033_6340                            ; $63B7: $20 $87

    jr nz, jr_033_638A                            ; $63B9: $20 $CF

    add [hl]                                      ; $63BB: $86
    cp a                                          ; $63BC: $BF
    ld de, $60DF                                  ; $63BD: $11 $DF $60
    ldh a, [rSVBK]                                ; $63C0: $F0 $70
    db $10                                        ; $63C2: $10
    jr nc, @-$1E                                  ; $63C3: $30 $E0

    xor c                                         ; $63C5: $A9
    nop                                           ; $63C6: $00
    add b                                         ; $63C7: $80
    inc d                                         ; $63C8: $14
    ldh [rNR10], a                                ; $63C9: $E0 $10
    and b                                         ; $63CB: $A0
    ld b, b                                       ; $63CC: $40
    ld sp, $01BD                                  ; $63CD: $31 $BD $01
    ret nz                                        ; $63D0: $C0

    ld de, $D1C0                                  ; $63D1: $11 $C0 $D1
    ld bc, $10FC                                  ; $63D4: $01 $FC $10
    scf                                           ; $63D7: $37
    cp $BC                                        ; $63D8: $FE $BC
    jr nc, jr_033_637C                            ; $63DA: $30 $A0

    ldh [$FFE1], a                                ; $63DC: $E0 $E1

jr_033_63DE:
    rrca                                          ; $63DE: $0F
    rrca                                          ; $63DF: $0F
    ld [$0F0F], a                                 ; $63E0: $EA $0F $0F
    nop                                           ; $63E3: $00
    ld bc, $0310                                  ; $63E4: $01 $10 $03
    jr nz, jr_033_63F0                            ; $63E7: $20 $07

    db $EB                                        ; $63E9: $EB
    jr nz, jr_033_63FF                            ; $63EA: $20 $13

    ld [hl], c                                    ; $63EC: $71
    rrca                                          ; $63ED: $0F
    db $10                                        ; $63EE: $10
    rra                                           ; $63EF: $1F

jr_033_63F0:
    jr nz, jr_033_6402                            ; $63F0: $20 $10

    rst RST_00                                    ; $63F2: $C7
    ldh a, [$FF0B]                                ; $63F3: $F0 $0B
    add b                                         ; $63F5: $80
    ld a, a                                       ; $63F6: $7F
    rst RST_38                                    ; $63F7: $FF
    jr nz, @+$12                                  ; $63F8: $20 $10

    dec b                                         ; $63FA: $05
    ld d, d                                       ; $63FB: $52
    db $DD                                        ; $63FC: $DD
    ld [de], a                                    ; $63FD: $12
    sbc h                                         ; $63FE: $9C

jr_033_63FF:
    ld de, $1CBE                                  ; $63FF: $11 $BE $1C

jr_033_6402:
    nop                                           ; $6402: $00
    ld [$15D5], sp                                ; $6403: $08 $D5 $15
    nop                                           ; $6406: $00
    nop                                           ; $6407: $00
    ld bc, $1080                                  ; $6408: $01 $80 $10
    ret nz                                        ; $640B: $C0

    jr nz, jr_033_646B                            ; $640C: $20 $5D

    ldh [rNR41], a                                ; $640E: $E0 $20
    ldh a, [rNR41]                                ; $6410: $F0 $20
    inc de                                        ; $6412: $13
    ld [hl], c                                    ; $6413: $71
    ld hl, sp+$10                                 ; $6414: $F8 $10
    ld l, d                                       ; $6416: $6A
    db $FC                                        ; $6417: $FC
    jr nz, jr_033_642A                            ; $6418: $20 $10

    nop                                           ; $641A: $00
    dec bc                                        ; $641B: $0B
    jr nz, @+$34                                  ; $641C: $20 $32

    ld bc, $10AF                                  ; $641E: $01 $AF $10
    inc bc                                        ; $6421: $03
    jr nz, @+$09                                  ; $6422: $20 $07

    jr nz, jr_033_6439                            ; $6424: $20 $13

    ld [hl], c                                    ; $6426: $71
    sub e                                         ; $6427: $93
    ld a, [bc]                                    ; $6428: $0A
    rrca                                          ; $6429: $0F

jr_033_642A:
    ld b, $1E                                     ; $642A: $06 $1E

jr_033_642C:
    inc c                                         ; $642C: $0C
    nop                                           ; $642D: $00
    nop                                           ; $642E: $00
    dec b                                         ; $642F: $05

Jump_033_6430:
    add b                                         ; $6430: $80
    ld a, [hl-]                                   ; $6431: $3A
    ld a, a                                       ; $6432: $7F
    rst RST_38                                    ; $6433: $FF
    jr nc, @+$12                                  ; $6434: $30 $10

    dec b                                         ; $6436: $05
    db $DD                                        ; $6437: $DD
    ld [de], a                                    ; $6438: $12

jr_033_6439:
    sbc h                                         ; $6439: $9C
    sub [hl]                                      ; $643A: $96
    ld de, $1CBE                                  ; $643B: $11 $BE $1C
    nop                                           ; $643E: $00

jr_033_643F:
    ld [$0015], sp                                ; $643F: $08 $15 $00
    nop                                           ; $6442: $00
    xor d                                         ; $6443: $AA
    ld bc, $1082                                  ; $6444: $01 $82 $10
    add b                                         ; $6447: $80
    db $10                                        ; $6448: $10
    ret nz                                        ; $6449: $C0

    jr nz, jr_033_642C                            ; $644A: $20 $E0

    cp h                                          ; $644C: $BC
    jr nz, jr_033_643F                            ; $644D: $20 $F0

    jr nz, jr_033_6464                            ; $644F: $20 $13

    ld [hl], c                                    ; $6451: $71
    sub d                                         ; $6452: $92
    ld h, b                                       ; $6453: $60
    ld a, b                                       ; $6454: $78
    dec d                                         ; $6455: $15
    jr nc, @+$3E                                  ; $6456: $30 $3C

    jr jr_033_645A                                ; $6458: $18 $00

jr_033_645A:
    nop                                           ; $645A: $00
    add hl, bc                                    ; $645B: $09
    ld [bc], a                                    ; $645C: $02
    db $10                                        ; $645D: $10
    ld h, d                                       ; $645E: $62
    rlca                                          ; $645F: $07
    jr nz, jr_033_6473                            ; $6460: $20 $11

    ld b, $03                                     ; $6462: $06 $03

jr_033_6464:
    rra                                           ; $6464: $1F
    db $10                                        ; $6465: $10
    daa                                           ; $6466: $27
    dec hl                                        ; $6467: $2B
    dec de                                        ; $6468: $1B

jr_033_6469:
    inc h                                         ; $6469: $24
    ld b, b                                       ; $646A: $40

jr_033_646B:
    inc e                                         ; $646B: $1C
    ld d, b                                       ; $646C: $50
    rrca                                          ; $646D: $0F
    ret nz                                        ; $646E: $C0

    ld b, b                                       ; $646F: $40
    push de                                       ; $6470: $D5
    jr nz, jr_033_6483                            ; $6471: $20 $10

jr_033_6473:
    dec c                                         ; $6473: $0D
    jr nz, jr_033_647B                            ; $6474: $20 $05

    jr nc, jr_033_6481                            ; $6476: $30 $09

    nop                                           ; $6478: $00
    ld d, [hl]                                    ; $6479: $56
    nop                                           ; $647A: $00

jr_033_647B:
    inc bc                                        ; $647B: $03
    add b                                         ; $647C: $80
    db $10                                        ; $647D: $10
    ret nz                                        ; $647E: $C0

jr_033_647F:
    jr nz, @+$15                                  ; $647F: $20 $13

jr_033_6481:
    ldh a, [$FF8A]                                ; $6481: $F0 $8A

jr_033_6483:
    db $10                                        ; $6483: $10
    ret z                                         ; $6484: $C8

    or b                                          ; $6485: $B0
    ld c, b                                       ; $6486: $48
    ld b, b                                       ; $6487: $40
    ld [hl], b                                    ; $6488: $70
    ld d, b                                       ; $6489: $50
    ldh [$FFF5], a                                ; $648A: $E0 $F5
    and b                                         ; $648C: $A0
    ld b, b                                       ; $648D: $40
    jr nz, jr_033_64A0                            ; $648E: $20 $10

    ld h, b                                       ; $6490: $60
    jr nz, jr_033_64D3                            ; $6491: $20 $40

    jr nc, jr_033_64D9                            ; $6493: $30 $44

    jr nz, jr_033_6497                            ; $6495: $20 $00

jr_033_6497:
    nop                                           ; $6497: $00
    rra                                           ; $6498: $1F
    rrca                                          ; $6499: $0F
    nop                                           ; $649A: $00
    rlca                                          ; $649B: $07
    ccf                                           ; $649C: $3F
    ld [bc], a                                    ; $649D: $02
    ld [bc], a                                    ; $649E: $02
    ld b, [hl]                                    ; $649F: $46

jr_033_64A0:
    add hl, sp                                    ; $64A0: $39
    and d                                         ; $64A1: $A2
    ld a, l                                       ; $64A2: $7D
    add d                                         ; $64A3: $82
    ld [de], a                                    ; $64A4: $12
    push bc                                       ; $64A5: $C5
    ld bc, $FF3A                                  ; $64A6: $01 $3A $FF
    ld bc, $037F                                  ; $64A9: $01 $7F $03
    rrca                                          ; $64AC: $0F
    nop                                           ; $64AD: $00
    db $10                                        ; $64AE: $10
    sub a                                         ; $64AF: $97
    jr nc, jr_033_64F1                            ; $64B0: $30 $3F

    rlca                                          ; $64B2: $07
    ld [hl], b                                    ; $64B3: $70
    ld a, $00                                     ; $64B4: $3E $00
    or b                                          ; $64B6: $B0
    nop                                           ; $64B7: $00
    jp c, $F090                                   ; $64B8: $DA $90 $F0

    rst RST_08                                    ; $64BB: $CF
    db $10                                        ; $64BC: $10
    ld bc, $0002                                  ; $64BD: $01 $02 $00
    db $FD                                        ; $64C0: $FD

jr_033_64C1:
    add hl, bc                                    ; $64C1: $09
    ld h, d                                       ; $64C2: $62
    sbc l                                         ; $64C3: $9D
    db $F4                                        ; $64C4: $F4
    ld l, e                                       ; $64C5: $6B
    ld de, $F5FA                                  ; $64C6: $11 $FA $F5
    or b                                          ; $64C9: $B0
    ld d, b                                       ; $64CA: $50
    ld hl, sp+$12                                 ; $64CB: $F8 $12
    ld b, b                                       ; $64CD: $40
    ld [hl-], a                                   ; $64CE: $32
    jr jr_033_64F0                                ; $64CF: $18 $1F

    rst RST_28                                    ; $64D1: $EF
    xor a                                         ; $64D2: $AF

jr_033_64D3:
    ld b, l                                       ; $64D3: $45
    ld d, b                                       ; $64D4: $50
    nop                                           ; $64D5: $00
    nop                                           ; $64D6: $00
    ldh [$FFC0], a                                ; $64D7: $E0 $C0

jr_033_64D9:
    nop                                           ; $64D9: $00
    add b                                         ; $64DA: $80
    jr nc, jr_033_647F                            ; $64DB: $30 $A2

Call_033_64DD:
    ld d, b                                       ; $64DD: $50
    db $10                                        ; $64DE: $10
    jr nz, jr_033_6469                            ; $64DF: $20 $88

    ldh a, [$FF08]                                ; $64E1: $F0 $08
    inc d                                         ; $64E3: $14
    inc e                                         ; $64E4: $1C
    xor l                                         ; $64E5: $AD
    sub b                                         ; $64E6: $90
    db $FC                                        ; $64E7: $FC
    ret nc                                        ; $64E8: $D0

    ld hl, sp+$10                                 ; $64E9: $F8 $10
    ld bc, $1280                                  ; $64EB: $01 $80 $12
    sub b                                         ; $64EE: $90
    inc bc                                        ; $64EF: $03

jr_033_64F0:
    rra                                           ; $64F0: $1F

jr_033_64F1:
    rrca                                          ; $64F1: $0F
    nop                                           ; $64F2: $00
    rlca                                          ; $64F3: $07
    ccf                                           ; $64F4: $3F
    ld [bc], a                                    ; $64F5: $02
    ld b, [hl]                                    ; $64F6: $46
    ld [$A239], sp                                ; $64F7: $08 $39 $A2
    ld a, l                                       ; $64FA: $7D
    add d                                         ; $64FB: $82
    ld [de], a                                    ; $64FC: $12
    push bc                                       ; $64FD: $C5
    ld a, [hl-]                                   ; $64FE: $3A
    rst RST_38                                    ; $64FF: $FF
    ld b, $01                                     ; $6500: $06 $01
    ld a, a                                       ; $6502: $7F
    inc bc                                        ; $6503: $03
    rrca                                          ; $6504: $0F
    nop                                           ; $6505: $00
    db $10                                        ; $6506: $10
    jr nc, jr_033_6548                            ; $6507: $30 $3F

    ld e, a                                       ; $6509: $5F
    rlca                                          ; $650A: $07
    ld [hl], b                                    ; $650B: $70
    ld a, $00                                     ; $650C: $3E $00
    or b                                          ; $650E: $B0
    nop                                           ; $650F: $00
    sub b                                         ; $6510: $90
    ldh a, [rBCPS]                                ; $6511: $F0 $68
    rst RST_08                                    ; $6513: $CF
    db $10                                        ; $6514: $10

jr_033_6515:
    ld bc, $0002                                  ; $6515: $01 $02 $00
    db $FD                                        ; $6518: $FD
    ld h, d                                       ; $6519: $62
    sbc l                                         ; $651A: $9D
    dec h                                         ; $651B: $25
    db $F4                                        ; $651C: $F4
    ld l, e                                       ; $651D: $6B
    ld de, $F5FA                                  ; $651E: $11 $FA $F5
    or b                                          ; $6521: $B0
    ld hl, sp+$12                                 ; $6522: $F8 $12
    ld b, c                                       ; $6524: $41
    ld b, b                                       ; $6525: $40
    ld [hl-], a                                   ; $6526: $32
    jr jr_033_6548                                ; $6527: $18 $1F

    rst RST_28                                    ; $6529: $EF
    xor a                                         ; $652A: $AF
    ld d, b                                       ; $652B: $50
    nop                                           ; $652C: $00
    ld d, $00                                     ; $652D: $16 $00
    ldh [$FFC0], a                                ; $652F: $E0 $C0
    nop                                           ; $6531: $00
    add b                                         ; $6532: $80
    jr nc, jr_033_6585                            ; $6533: $30 $50

    db $10                                        ; $6535: $10
    adc d                                         ; $6536: $8A
    jr nz, jr_033_64C1                            ; $6537: $20 $88

    ldh a, [$FF08]                                ; $6539: $F0 $08
    inc d                                         ; $653B: $14
    inc e                                         ; $653C: $1C
    sub b                                         ; $653D: $90
    db $FC                                        ; $653E: $FC
    or a                                          ; $653F: $B7
    ret nc                                        ; $6540: $D0

    ld hl, sp+$10                                 ; $6541: $F8 $10

jr_033_6543:
    ld bc, $1280                                  ; $6543: $01 $80 $12
    rrca                                          ; $6546: $0F
    rrca                                          ; $6547: $0F

jr_033_6548:
    ldh [rIF], a                                  ; $6548: $E0 $0F
    rrca                                          ; $654A: $0F
    inc bc                                        ; $654B: $03
    ld c, l                                       ; $654C: $4D
    ld b, b                                       ; $654D: $40
    ld d, h                                       ; $654E: $54
    nop                                           ; $654F: $00
    ld b, $04                                     ; $6550: $06 $04
    ld [$100E], sp                                ; $6552: $08 $0E $10
    rlca                                          ; $6555: $07
    ld [bc], a                                    ; $6556: $02
    sub d                                         ; $6557: $92
    nop                                           ; $6558: $00
    ld bc, $1005                                  ; $6559: $01 $05 $10
    add hl, bc                                    ; $655C: $09
    ld b, $09                                     ; $655D: $06 $09
    ld de, $609E                                  ; $655F: $11 $9E $60
    ld [de], a                                    ; $6562: $12
    dec c                                         ; $6563: $0D

jr_033_6564:
    dec bc                                        ; $6564: $0B
    jr nc, @+$7A                                  ; $6565: $30 $78

    rst RST_38                                    ; $6567: $FF
    jr jr_033_6515                                ; $6568: $18 $AB

    ld [$103C], sp                                ; $656A: $08 $3C $10
    ld a, [hl]                                    ; $656D: $7E
    jr jr_033_64F1                                ; $656E: $18 $81

    db $10                                        ; $6570: $10
    add hl, bc                                    ; $6571: $09
    cp d                                          ; $6572: $BA
    jr nz, @+$01                                  ; $6573: $20 $FF

    rrca                                          ; $6575: $0F
    inc c                                         ; $6576: $0C
    ld b, $20                                     ; $6577: $06 $20
    ld [$9470], sp                                ; $6579: $08 $70 $94
    db $10                                        ; $657C: $10
    ldh [rLCDC], a                                ; $657D: $E0 $40
    nop                                           ; $657F: $00
    add b                                         ; $6580: $80
    jr nz, jr_033_6543                            ; $6581: $20 $C0

    sub b                                         ; $6583: $90
    ld d, e                                       ; $6584: $53

jr_033_6585:
    ld h, b                                       ; $6585: $60
    add hl, bc                                    ; $6586: $09
    adc b                                         ; $6587: $88
    ld h, b                                       ; $6588: $60
    ld c, b                                       ; $6589: $48
    or b                                          ; $658A: $B0
    dec bc                                        ; $658B: $0B
    jr nc, jr_033_6564                            ; $658C: $30 $D6

    ld a, b                                       ; $658E: $78
    ret                                           ; $658F: $C9


    ld bc, $0308                                  ; $6590: $01 $08 $03
    db $10                                        ; $6593: $10
    add hl, de                                    ; $6594: $19
    inc b                                         ; $6595: $04
    and [hl]                                      ; $6596: $A6
    ld [$100E], sp                                ; $6597: $08 $0E $10
    rlca                                          ; $659A: $07
    ld [bc], a                                    ; $659B: $02
    nop                                           ; $659C: $00
    ld b, b                                       ; $659D: $40
    dec b                                         ; $659E: $05
    sub h                                         ; $659F: $94
    db $10                                        ; $65A0: $10
    add hl, bc                                    ; $65A1: $09
    ld b, $09                                     ; $65A2: $06 $09
    ld de, $1260                                  ; $65A4: $11 $60 $12
    dec c                                         ; $65A7: $0D
    xor d                                         ; $65A8: $AA
    dec bc                                        ; $65A9: $0B
    ld a, $40                                     ; $65AA: $3E $40
    db $10                                        ; $65AC: $10
    cp b                                          ; $65AD: $B8
    jr c, jr_033_65C0                             ; $65AE: $38 $10

    sub b                                         ; $65B0: $90
    push de                                       ; $65B1: $D5
    jr @+$03                                      ; $65B2: $18 $01

    jr jr_033_65BE                                ; $65B4: $18 $08

    inc a                                         ; $65B6: $3C
    db $10                                        ; $65B7: $10
    ld a, [hl]                                    ; $65B8: $7E
    jr jr_033_6632                                ; $65B9: $18 $77

    add c                                         ; $65BB: $81
    db $10                                        ; $65BC: $10
    add hl, bc                                    ; $65BD: $09

jr_033_65BE:
    jr nz, @+$01                                  ; $65BE: $20 $FF

jr_033_65C0:
    rrca                                          ; $65C0: $0F
    inc c                                         ; $65C1: $0C
    nop                                           ; $65C2: $00
    ld e, d                                       ; $65C3: $5A
    ld b, b                                       ; $65C4: $40
    ld [$10E0], sp                                ; $65C5: $08 $E0 $10
    add hl, de                                    ; $65C8: $19

jr_033_65C9:
    jr nz, jr_033_65D3                            ; $65C9: $20 $08

    ld [hl], b                                    ; $65CB: $70
    pop de                                        ; $65CC: $D1
    db $10                                        ; $65CD: $10
    ld a, [hl-]                                   ; $65CE: $3A
    add b                                         ; $65CF: $80
    jr nz, @-$3E                                  ; $65D0: $20 $C0

    sub b                                         ; $65D2: $90

jr_033_65D3:
    ld h, b                                       ; $65D3: $60
    add hl, bc                                    ; $65D4: $09
    ld c, d                                       ; $65D5: $4A
    adc b                                         ; $65D6: $88
    ld h, b                                       ; $65D7: $60
    ld c, b                                       ; $65D8: $48
    or b                                          ; $65D9: $B0
    dec bc                                        ; $65DA: $0B
    ld a, h                                       ; $65DB: $7C
    ld b, b                                       ; $65DC: $40
    ld bc, $B8A0                                  ; $65DD: $01 $A0 $B8
    inc sp                                        ; $65E0: $33
    db $10                                        ; $65E1: $10
    ccf                                           ; $65E2: $3F
    db $10                                        ; $65E3: $10
    jr jr_033_65ED                                ; $65E4: $18 $07

    jr z, jr_033_6640                             ; $65E6: $28 $58

    rla                                           ; $65E8: $17
    ld l, b                                       ; $65E9: $68
    scf                                           ; $65EA: $37
    add hl, bc                                    ; $65EB: $09
    ld a, b                                       ; $65EC: $78

jr_033_65ED:
    inc bc                                        ; $65ED: $03
    ld a, $0D                                     ; $65EE: $3E $0D
    ld bc, $3C7F                                  ; $65F0: $01 $7F $3C
    ld a, l                                       ; $65F3: $7D
    ld [bc], a                                    ; $65F4: $02
    dec bc                                        ; $65F5: $0B
    dec b                                         ; $65F6: $05
    rrca                                          ; $65F7: $0F
    ld c, b                                       ; $65F8: $48
    add l                                         ; $65F9: $85
    jr @+$06                                      ; $65FA: $18 $04

    ld d, $08                                     ; $65FC: $16 $08
    inc c                                         ; $65FE: $0C
    add sp, -$80                                  ; $65FF: $E8 $80
    ld [$9050], sp                                ; $6601: $08 $50 $90
    ld [$F8F8], sp                                ; $6604: $08 $F8 $F8
    jr c, jr_033_65C9                             ; $6607: $38 $C0

    inc e                                         ; $6609: $1C
    ldh [$FF3E], a                                ; $660A: $E0 $3E
    inc d                                         ; $660C: $14
    add sp, $78                                   ; $660D: $E8 $78
    ld [$38E8], sp                                ; $660F: $08 $E8 $38
    ld [$29DC], sp                                ; $6612: $08 $DC $29
    cp $18                                        ; $6615: $FE $18
    db $10                                        ; $6617: $10
    and b                                         ; $6618: $A0
    ld b, b                                       ; $6619: $40
    ret nc                                        ; $661A: $D0

    db $FC                                        ; $661B: $FC
    ld a, b                                       ; $661C: $78
    ld b, [hl]                                    ; $661D: $46
    and $38                                       ; $661E: $E6 $38
    ld a, [de]                                    ; $6620: $1A
    inc b                                         ; $6621: $04
    ld b, $D8                                     ; $6622: $06 $D8
    inc bc                                        ; $6624: $03
    rlca                                          ; $6625: $07
    and e                                         ; $6626: $A3
    ld [$400F], sp                                ; $6627: $08 $0F $40
    ld e, $08                                     ; $662A: $1E $08
    inc e                                         ; $662C: $1C
    ld [$E900], sp                                ; $662D: $08 $00 $E9
    ld l, h                                       ; $6630: $6C
    rlca                                          ; $6631: $07

jr_033_6632:
    ld l, c                                       ; $6632: $69
    rra                                           ; $6633: $1F
    sbc c                                         ; $6634: $99
    dec bc                                        ; $6635: $0B
    ld a, [hl]                                    ; $6636: $7E
    jr z, jr_033_66A8                             ; $6637: $28 $6F

    rst RST_38                                    ; $6639: $FF
    db $10                                        ; $663A: $10
    ld [$0A81], sp                                ; $663B: $08 $81 $0A
    jr z, jr_033_6689                             ; $663E: $28 $49

jr_033_6640:
    ld l, b                                       ; $6640: $68
    sbc a                                         ; $6641: $9F
    ld a, b                                       ; $6642: $78
    jr c, @+$12                                   ; $6643: $38 $10

    add hl, bc                                    ; $6645: $09
    add hl, hl                                    ; $6646: $29
    add hl, bc                                    ; $6647: $09
    reti                                          ; $6648: $D9


    ld bc, $F053                                  ; $6649: $01 $53 $F0
    ld [$100E], sp                                ; $664C: $08 $0E $10
    rlca                                          ; $664F: $07
    ld a, [$0042]                                 ; $6650: $FA $42 $00
    ld c, a                                       ; $6653: $4F
    ldh [$FF59], a                                ; $6654: $E0 $59
    ld h, b                                       ; $6656: $60
    ld a, b                                       ; $6657: $78
    jp z, Jump_033_6300                           ; $6658: $CA $00 $63

    rlca                                          ; $665B: $07
    xor c                                         ; $665C: $A9
    nop                                           ; $665D: $00
    jr @+$0A                                      ; $665E: $18 $08

    inc h                                         ; $6660: $24
    db $10                                        ; $6661: $10
    ld [de], a                                    ; $6662: $12
    inc c                                         ; $6663: $0C
    ld c, e                                       ; $6664: $4B
    xor a                                         ; $6665: $AF
    ld hl, $101F                                  ; $6666: $21 $1F $10
    ccf                                           ; $6669: $3F
    ld d, b                                       ; $666A: $50
    nop                                           ; $666B: $00
    rst RST_00                                    ; $666C: $C7
    ld b, $65                                     ; $666D: $06 $65
    ld [$10A9], sp                                ; $666F: $08 $A9 $10
    inc e                                         ; $6672: $1C
    dec bc                                        ; $6673: $0B
    add hl, sp                                    ; $6674: $39
    ld a, [hl]                                    ; $6675: $7E
    ld [$FF6E], sp                                ; $6676: $08 $6E $FF
    db $10                                        ; $6679: $10
    ld [$0A81], sp                                ; $667A: $08 $81 $0A
    jr z, jr_033_66C8                             ; $667D: $28 $49

    jr c, jr_033_6700                             ; $667F: $38 $7F

    db $10                                        ; $6681: $10
    adc b                                         ; $6682: $88
    sbc c                                         ; $6683: $99
    ld [$0929], sp                                ; $6684: $08 $29 $09
    nop                                           ; $6687: $00
    ld e, b                                       ; $6688: $58

jr_033_6689:
    ld [hl], e                                    ; $6689: $73
    ldh a, [$FF08]                                ; $668A: $F0 $08
    ldh [rNR10], a                                ; $668C: $E0 $10
    rlca                                          ; $668E: $07
    ei                                            ; $668F: $FB
    ld sp, hl                                     ; $6690: $F9
    ld bc, $3053                                  ; $6691: $01 $53 $30
    ld [$10F8], sp                                ; $6694: $08 $F8 $10
    db $FC                                        ; $6697: $FC
    ld c, b                                       ; $6698: $48
    nop                                           ; $6699: $00
    ld d, e                                       ; $669A: $53
    call nc, $0207                                ; $669B: $D4 $07 $02
    inc c                                         ; $669E: $0C

jr_033_669F:
    ld [$1012], sp                                ; $669F: $08 $12 $10
    adc c                                         ; $66A2: $89
    ld b, $FF                                     ; $66A3: $06 $FF
    ld l, a                                       ; $66A5: $6F
    rlca                                          ; $66A6: $07
    rlca                                          ; $66A7: $07

jr_033_66A8:
    rlca                                          ; $66A8: $07
    rlca                                          ; $66A9: $07
    rlca                                          ; $66AA: $07
    rlca                                          ; $66AB: $07
    rlca                                          ; $66AC: $07
    ld d, b                                       ; $66AD: $50
    inc bc                                        ; $66AE: $03
    ld [$081F], sp                                ; $66AF: $08 $1F $08
    ld a, $1D                                     ; $66B2: $3E $1D
    ccf                                           ; $66B4: $3F
    jr @-$6A                                      ; $66B5: $18 $94

    db $10                                        ; $66B7: $10
    ld b, $09                                     ; $66B8: $06 $09
    ld [$4807], sp                                ; $66BA: $08 $07 $48
    dec bc                                        ; $66BD: $0B

jr_033_66BE:
    inc b                                         ; $66BE: $04
    ld e, b                                       ; $66BF: $58
    dec c                                         ; $66C0: $0D
    jr jr_033_66C4                                ; $66C1: $18 $01

    rst RST_10                                    ; $66C3: $D7

jr_033_66C4:
    dec b                                         ; $66C4: $05
    rst RST_38                                    ; $66C5: $FF
    add c                                         ; $66C6: $81
    ld a, [hl]                                    ; $66C7: $7E

jr_033_66C8:
    ld a, [hl-]                                   ; $66C8: $3A
    jp Jump_000_113C                              ; $66C9: $C3 $3C $11


    ld [$6C38], sp                                ; $66CC: $08 $38 $6C
    ld [$6799], sp                                ; $66CF: $08 $99 $67
    ld h, [hl]                                    ; $66D2: $66
    jr z, @+$62                                   ; $66D3: $28 $60

    jr jr_033_66BE                                ; $66D5: $18 $E7

    add hl, bc                                    ; $66D7: $09
    nop                                           ; $66D8: $00
    rst RST_18                                    ; $66D9: $DF
    adc b                                         ; $66DA: $88
    ld [bc], a                                    ; $66DB: $02
    ld b, b                                       ; $66DC: $40
    add b                                         ; $66DD: $80
    ld hl, sp+$18                                 ; $66DE: $F8 $18
    ld a, h                                       ; $66E0: $7C
    cp b                                          ; $66E1: $B8
    db $FC                                        ; $66E2: $FC
    adc d                                         ; $66E3: $8A
    and b                                         ; $66E4: $A0
    ret c                                         ; $66E5: $D8

    ld h, b                                       ; $66E6: $60
    sub b                                         ; $66E7: $90
    ld [$48E0], sp                                ; $66E8: $08 $E0 $48
    ret nc                                        ; $66EB: $D0

    inc a                                         ; $66EC: $3C
    jr nz, jr_033_669F                            ; $66ED: $20 $B0

    jr @-$7E                                      ; $66EF: $18 $80

    rst RST_10                                    ; $66F1: $D7
    inc b                                         ; $66F2: $04
    ccf                                           ; $66F3: $3F
    inc e                                         ; $66F4: $1C
    inc h                                         ; $66F5: $24
    rra                                           ; $66F6: $1F
    ld c, $00                                     ; $66F7: $0E $00
    dec b                                         ; $66F9: $05
    rrca                                          ; $66FA: $0F
    jr c, jr_033_6717                             ; $66FB: $38 $1A

    dec c                                         ; $66FD: $0D
    ld h, b                                       ; $66FE: $60
    ld [de], a                                    ; $66FF: $12

jr_033_6700:
    ld [$1529], sp                                ; $6700: $08 $29 $15
    ld [$010A], sp                                ; $6703: $08 $0A $01
    inc bc                                        ; $6706: $03
    pop bc                                        ; $6707: $C1
    rst RST_10                                    ; $6708: $D7
    dec b                                         ; $6709: $05
    rst RST_38                                    ; $670A: $FF
    add c                                         ; $670B: $81
    ld a, [hl]                                    ; $670C: $7E
    jp Jump_000_113C                              ; $670D: $C3 $3C $11


    db $D3                                        ; $6710: $D3
    jr nc, jr_033_6713                            ; $6711: $30 $00

jr_033_6713:
    xor $08                                       ; $6713: $EE $08
    sbc c                                         ; $6715: $99
    ld h, [hl]                                    ; $6716: $66

jr_033_6717:
    jr c, @+$62                                   ; $6717: $38 $60

    ld a, h                                       ; $6719: $7C
    inc h                                         ; $671A: $24
    ld c, b                                       ; $671B: $48
    add hl, bc                                    ; $671C: $09
    nop                                           ; $671D: $00
    rst RST_18                                    ; $671E: $DF
    ld [bc], a                                    ; $671F: $02
    ld a, h                                       ; $6720: $7C
    cp b                                          ; $6721: $B8
    inc h                                         ; $6722: $24

jr_033_6723:
    ld hl, sp+$70                                 ; $6723: $F8 $70
    nop                                           ; $6725: $00
    and b                                         ; $6726: $A0
    ldh a, [$FF38]                                ; $6727: $F0 $38
    ld l, b                                       ; $6729: $68
    or b                                          ; $672A: $B0
    ld h, b                                       ; $672B: $60
    ld c, b                                       ; $672C: $48
    ld [$A829], sp                                ; $672D: $08 $29 $A8
    db $10                                        ; $6730: $10
    ld d, b                                       ; $6731: $50
    add b                                         ; $6732: $80
    ret nz                                        ; $6733: $C0

    ld [$07D7], a                                 ; $6734: $EA $D7 $07
    nop                                           ; $6737: $00
    ld [bc], a                                    ; $6738: $02
    ld [$1007], sp                                ; $6739: $08 $07 $10
    ld a, [bc]                                    ; $673C: $0A
    ld b, [hl]                                    ; $673D: $46
    dec b                                         ; $673E: $05
    dec bc                                        ; $673F: $0B
    ld c, $01                                     ; $6740: $0E $01
    dec e                                         ; $6742: $1D
    db $10                                        ; $6743: $10
    add hl, de                                    ; $6744: $19
    inc bc                                        ; $6745: $03
    cp l                                          ; $6746: $BD
    ld [$1004], sp                                ; $6747: $08 $04 $10
    adc b                                         ; $674A: $88
    rst RST_20                                    ; $674B: $E7
    ld [bc], a                                    ; $674C: $02
    and b                                         ; $674D: $A0
    ld [$F048], sp                                ; $674E: $08 $48 $F0
    db $10                                        ; $6751: $10
    jr z, @-$2E                                   ; $6752: $28 $D0

    dec bc                                        ; $6754: $0B
    jr c, jr_033_6717                             ; $6755: $38 $C0

    db $FC                                        ; $6757: $FC
    dec [hl]                                      ; $6758: $35
    jr jr_033_6723                                ; $6759: $18 $C8

    ld h, b                                       ; $675B: $60
    nop                                           ; $675C: $00
    ldh [rNR23], a                                ; $675D: $E0 $18
    jr nc, jr_033_67A9                            ; $675F: $30 $48

    xor d                                         ; $6761: $AA
    sbc $1F                                       ; $6762: $DE $1F
    reti                                          ; $6764: $D9


    rrca                                          ; $6765: $0F
    ld [hl], b                                    ; $6766: $70
    ld e, a                                       ; $6767: $5F
    add hl, bc                                    ; $6768: $09
    ld b, b                                       ; $6769: $40
    ld h, b                                       ; $676A: $60
    ccf                                           ; $676B: $3F
    dec bc                                        ; $676C: $0B
    ld e, b                                       ; $676D: $58
    ld c, a                                       ; $676E: $4F
    ld hl, sp+$07                                 ; $676F: $F8 $07
    ld [hl], a                                    ; $6771: $77
    ld [$1904], sp                                ; $6772: $08 $04 $19
    ld b, $0E                                     ; $6775: $06 $0E
    ld bc, $FE03                                  ; $6777: $01 $03 $FE
    add a                                         ; $677A: $87
    ld a, d                                       ; $677B: $7A
    ld a, [hl+]                                   ; $677C: $2A
    rst RST_20                                    ; $677D: $E7
    dec de                                        ; $677E: $1B
    or b                                          ; $677F: $B0
    ret nz                                        ; $6780: $C0

    and b                                         ; $6781: $A0
    ld sp, hl                                     ; $6782: $F9
    add b                                         ; $6783: $80
    cp $C8                                        ; $6784: $FE $C8
    dec c                                         ; $6786: $0D
    cp b                                          ; $6787: $B8
    db $FD                                        ; $6788: $FD
    ld [bc], a                                    ; $6789: $02
    ld [$38C7], sp                                ; $678A: $08 $C7 $38
    dec a                                         ; $678D: $3D
    ld [hl+], a                                   ; $678E: $22
    jp nz, $FEFF                                  ; $678F: $C2 $FF $FE

    ld [de], a                                    ; $6792: $12
    inc c                                         ; $6793: $0C
    sub d                                         ; $6794: $92
    ld [$00E2], sp                                ; $6795: $08 $E2 $00
    inc e                                         ; $6798: $1C
    sub $E8                                       ; $6799: $D6 $E8
    db $EC                                        ; $679B: $EC
    db $10                                        ; $679C: $10
    ld a, d                                       ; $679D: $7A
    add h                                         ; $679E: $84
    jp nc, Jump_033_6C21                          ; $679F: $D2 $21 $6C

    sub e                                         ; $67A2: $93
    ld [$94EB], sp                                ; $67A3: $08 $EB $94
    ccf                                           ; $67A6: $3F
    ret nz                                        ; $67A7: $C0

    reti                                          ; $67A8: $D9


jr_033_67A9:
    ld b, l                                       ; $67A9: $45
    cp [hl]                                       ; $67AA: $BE
    jr jr_033_67D9                                ; $67AB: $18 $2C

    ret nc                                        ; $67AD: $D0

    ld hl, sp-$04                                 ; $67AE: $F8 $FC
    rra                                           ; $67B0: $1F
    ld [$F00B], sp                                ; $67B1: $08 $0B $F0
    rrca                                          ; $67B4: $0F
    ldh [$FF5F], a                                ; $67B5: $E0 $5F
    add hl, bc                                    ; $67B7: $09
    ld b, b                                       ; $67B8: $40
    or b                                          ; $67B9: $B0
    dec bc                                        ; $67BA: $0B
    and b                                         ; $67BB: $A0
    ld e, b                                       ; $67BC: $58
    ld c, a                                       ; $67BD: $4F
    xor b                                         ; $67BE: $A8
    rlca                                          ; $67BF: $07
    ld [hl], a                                    ; $67C0: $77
    ld [$0619], sp                                ; $67C1: $08 $19 $06
    jr jr_033_67D4                                ; $67C4: $18 $0E

    ld bc, $EC03                                  ; $67C6: $01 $03 $EC
    ld bc, $7B87                                  ; $67C9: $01 $87 $7B
    rst RST_20                                    ; $67CC: $E7
    ld d, l                                       ; $67CD: $55
    dec de                                        ; $67CE: $1B
    or b                                          ; $67CF: $B0
    ret nz                                        ; $67D0: $C0

    and b                                         ; $67D1: $A0
    ld sp, hl                                     ; $67D2: $F9
    add b                                         ; $67D3: $80

jr_033_67D4:
    cp $0D                                        ; $67D4: $FE $0D
    sub b                                         ; $67D6: $90

jr_033_67D7:
    cp b                                          ; $67D7: $B8
    db $FD                                        ; $67D8: $FD

jr_033_67D9:
    ld [bc], a                                    ; $67D9: $02
    ld [$38C7], sp                                ; $67DA: $08 $C7 $38
    dec a                                         ; $67DD: $3D
    jp nz, $FF40                                  ; $67DE: $C2 $40 $FF

    cp $89                                        ; $67E1: $FE $89
    ld b, $91                                     ; $67E3: $06 $91
    ld c, $E2                                     ; $67E5: $0E $E2
    inc e                                         ; $67E7: $1C
    nop                                           ; $67E8: $00
    sub $E8                                       ; $67E9: $D6 $E8
    db $EC                                        ; $67EB: $EC
    db $10                                        ; $67EC: $10
    ld a, d                                       ; $67ED: $7A
    add h                                         ; $67EE: $84
    jp nc, Jump_033_426C                          ; $67EF: $D2 $6C $42

    sub e                                         ; $67F2: $93
    ld [$94EB], sp                                ; $67F3: $08 $EB $94
    ccf                                           ; $67F6: $3F
    ret nz                                        ; $67F7: $C0

    reti                                          ; $67F8: $D9


    cp [hl]                                       ; $67F9: $BE
    adc a                                         ; $67FA: $8F
    jr jr_033_6829                                ; $67FB: $18 $2C

    ret nc                                        ; $67FD: $D0

    ld hl, sp-$04                                 ; $67FE: $F8 $FC
    rlca                                          ; $6800: $07
    rlca                                          ; $6801: $07
    rlca                                          ; $6802: $07
    ld hl, sp+$07                                 ; $6803: $F8 $07
    rlca                                          ; $6805: $07
    rlca                                          ; $6806: $07
    rlca                                          ; $6807: $07
    rlca                                          ; $6808: $07
    dec a                                         ; $6809: $3D
    nop                                           ; $680A: $00
    ld l, d                                       ; $680B: $6A
    nop                                           ; $680C: $00
    rrca                                          ; $680D: $0F
    ld b, $01                                     ; $680E: $06 $01
    db $10                                        ; $6810: $10
    ld [bc], a                                    ; $6811: $02
    jr nz, jr_033_6819                            ; $6812: $20 $05

    sub l                                         ; $6814: $95
    jr nz, jr_033_6822                            ; $6815: $20 $0B

    inc b                                         ; $6817: $04
    or e                                          ; $6818: $B3

jr_033_6819:
    jr @+$12                                      ; $6819: $18 $10

    inc a                                         ; $681B: $3C
    ld [de], a                                    ; $681C: $12
    ld e, d                                       ; $681D: $5A
    halt                                          ; $681E: $76
    ld h, b                                       ; $681F: $60
    ld a, d                                       ; $6820: $7A
    ld b, b                                       ; $6821: $40

jr_033_6822:
    inc de                                        ; $6822: $13
    ld [hl], d                                    ; $6823: $72
    db $10                                        ; $6824: $10
    rst RST_20                                    ; $6825: $E7
    or e                                          ; $6826: $B3
    sub b                                         ; $6827: $90
    rst RST_38                                    ; $6828: $FF

jr_033_6829:
    ret nc                                        ; $6829: $D0

    ld sp, $7E81                                  ; $682A: $31 $81 $7E
    ld de, $D571                                  ; $682D: $11 $71 $D5
    rrca                                          ; $6830: $0F
    rlca                                          ; $6831: $07
    add b                                         ; $6832: $80

jr_033_6833:
    db $10                                        ; $6833: $10
    ld b, b                                       ; $6834: $40
    jr nz, jr_033_67D7                            ; $6835: $20 $A0

    jr nz, jr_033_686E                            ; $6837: $20 $35

    ret nc                                        ; $6839: $D0

    jr nz, jr_033_6833                            ; $683A: $20 $F7

    ld bc, $1001                                  ; $683C: $01 $01 $10
    inc bc                                        ; $683F: $03
    ld [de], a                                    ; $6840: $12
    ld d, d                                       ; $6841: $52
    rrca                                          ; $6842: $0F
    db $10                                        ; $6843: $10
    ld e, $20                                     ; $6844: $1E $20
    ld l, $1F                                     ; $6846: $2E $1F
    db $10                                        ; $6848: $10
    dec e                                         ; $6849: $1D
    cp $50                                        ; $684A: $FE $50

jr_033_684C:
    ldh [$FFF1], a                                ; $684C: $E0 $F1
    nop                                           ; $684E: $00
    ld hl, $0742                                  ; $684F: $21 $42 $07

jr_033_6852:
    add b                                         ; $6852: $80
    xor d                                         ; $6853: $AA
    db $10                                        ; $6854: $10
    ret nz                                        ; $6855: $C0

    db $10                                        ; $6856: $10
    ldh [rNR10], a                                ; $6857: $E0 $10
    rst RST_38                                    ; $6859: $FF
    db $10                                        ; $685A: $10
    ld a, a                                       ; $685B: $7F
    nop                                           ; $685C: $00
    adc a                                         ; $685D: $8F
    cp a                                          ; $685E: $BF
    ld b, b                                       ; $685F: $40
    rst RST_18                                    ; $6860: $DF
    jr nz, jr_033_6852                            ; $6861: $20 $EF

    db $10                                        ; $6863: $10
    halt                                          ; $6864: $76
    xor [hl]                                      ; $6865: $AE
    ld [hl], b                                    ; $6866: $70
    inc bc                                        ; $6867: $03
    ret nz                                        ; $6868: $C0

    ld [hl], b                                    ; $6869: $70
    jr nc, jr_033_684C                            ; $686A: $30 $E0

    ld c, $80                                     ; $686C: $0E $80

jr_033_686E:
    xor b                                         ; $686E: $A8
    db $10                                        ; $686F: $10
    ld b, b                                       ; $6870: $40
    jr nz, @-$5E                                  ; $6871: $20 $A0

jr_033_6873:
    jr nz, @-$2E                                  ; $6873: $20 $D0

    jr nz, jr_033_6873                            ; $6875: $20 $FC

    sub c                                         ; $6877: $91
    ld [hl], b                                    ; $6878: $70
    sbc a                                         ; $6879: $9F
    ld h, b                                       ; $687A: $60
    db $10                                        ; $687B: $10
    ld h, e                                       ; $687C: $63
    adc e                                         ; $687D: $8B
    ld [hl], a                                    ; $687E: $77
    ld h, b                                       ; $687F: $60
    pop de                                        ; $6880: $D1
    rrca                                          ; $6881: $0F
    ld [$10E0], sp                                ; $6882: $08 $E0 $10
    ld hl, sp-$40                                 ; $6885: $F8 $C0
    db $FC                                        ; $6887: $FC
    ld b, c                                       ; $6888: $41
    xor c                                         ; $6889: $A9
    ld [bc], a                                    ; $688A: $02
    inc bc                                        ; $688B: $03
    db $10                                        ; $688C: $10
    inc b                                         ; $688D: $04
    jr nz, jr_033_689F                            ; $688E: $20 $0F

    rlca                                          ; $6890: $07
    ld de, $3F14                                  ; $6891: $11 $14 $3F
    ld b, $78                                     ; $6894: $06 $78
    jr nc, jr_033_6913                            ; $6896: $30 $7B

    and b                                         ; $6898: $A0
    dec a                                         ; $6899: $3D
    ld [bc], a                                    ; $689A: $02
    cpl                                           ; $689B: $2F
    ld e, $01                                     ; $689C: $1E $01
    or b                                          ; $689E: $B0

jr_033_689F:
    nop                                           ; $689F: $00
    db $10                                        ; $68A0: $10
    ld [hl], b                                    ; $68A1: $70
    dec d                                         ; $68A2: $15
    add b                                         ; $68A3: $80
    and h                                         ; $68A4: $A4
    inc b                                         ; $68A5: $04
    add c                                         ; $68A6: $81
    ld d, $42                                     ; $68A7: $16 $42
    cp l                                          ; $68A9: $BD
    jr nc, jr_033_692A                            ; $68AA: $30 $7E

    db $DB                                        ; $68AC: $DB
    ld c, d                                       ; $68AD: $4A
    inc h                                         ; $68AE: $24
    ld de, $A55A                                  ; $68AF: $11 $5A $A5
    ld [hl], c                                    ; $68B2: $71
    jp $E710                                      ; $68B3: $C3 $10 $E7


    ld [$6010], a                                 ; $68B6: $EA $10 $60
    stop                                          ; $68B9: $10 $00
    ld [bc], a                                    ; $68BB: $02
    ret nz                                        ; $68BC: $C0

    db $10                                        ; $68BD: $10
    jr nz, @-$6D                                  ; $68BE: $20 $91

    jr nz, @-$2E                                  ; $68C0: $20 $D0

    ldh [rNR11], a                                ; $68C2: $E0 $11
    call c, Call_000_1E60                         ; $68C4: $DC $60 $1E
    jr nc, jr_033_6909                            ; $68C7: $30 $40

    sbc $A0                                       ; $68C9: $DE $A0
    cp h                                          ; $68CB: $BC
    ld b, b                                       ; $68CC: $40
    ld a, b                                       ; $68CD: $78
    add b                                         ; $68CE: $80
    ldh a, [rP1]                                  ; $68CF: $F0 $00
    db $FD                                        ; $68D1: $FD
    db $10                                        ; $68D2: $10
    ld [hl], b                                    ; $68D3: $70
    dec d                                         ; $68D4: $15
    add b                                         ; $68D5: $80
    rrca                                          ; $68D6: $0F
    ld [$1007], sp                                ; $68D7: $08 $07 $10
    ld a, [de]                                    ; $68DA: $1A
    rra                                           ; $68DB: $1F
    inc bc                                        ; $68DC: $03
    ccf                                           ; $68DD: $3F
    ld b, c                                       ; $68DE: $41
    ld c, $01                                     ; $68DF: $0E $01
    db $10                                        ; $68E1: $10
    ld [bc], a                                    ; $68E2: $02
    and d                                         ; $68E3: $A2
    jr nz, jr_033_68EB                            ; $68E4: $20 $05

    jr nz, jr_033_68F3                            ; $68E6: $20 $0B

    inc b                                         ; $68E8: $04
    ccf                                           ; $68E9: $3F
    ld [hl], b                                    ; $68EA: $70

jr_033_68EB:
    ld sp, hl                                     ; $68EB: $F9
    ld b, [hl]                                    ; $68EC: $46
    ld b, $10                                     ; $68ED: $06 $10
    add $D1                                       ; $68EF: $C6 $D1
    xor $60                                       ; $68F1: $EE $60

jr_033_68F3:
    ld [$AA01], sp                                ; $68F3: $08 $01 $AA
    db $10                                        ; $68F6: $10
    inc bc                                        ; $68F7: $03
    db $10                                        ; $68F8: $10
    rlca                                          ; $68F9: $07
    db $10                                        ; $68FA: $10
    rst RST_38                                    ; $68FB: $FF
    db $10                                        ; $68FC: $10
    cp $00                                        ; $68FD: $FE $00
    pop af                                        ; $68FF: $F1
    db $FD                                        ; $6900: $FD
    ld [bc], a                                    ; $6901: $02
    ei                                            ; $6902: $FB
    inc b                                         ; $6903: $04
    rst RST_30                                    ; $6904: $F7
    ld [$AE6E], sp                                ; $6905: $08 $6E $AE
    ld [hl], b                                    ; $6908: $70

jr_033_6909:
    ret nz                                        ; $6909: $C0

    ret nz                                        ; $690A: $C0

    ld c, $30                                     ; $690B: $0E $30
    ldh [$FF08], a                                ; $690D: $E0 $08
    add b                                         ; $690F: $80
    ld [$F010], a                                 ; $6910: $EA $10 $F0

jr_033_6913:
    ld [de], a                                    ; $6913: $12
    ldh a, [rNR10]                                ; $6914: $F0 $10
    ld a, b                                       ; $6916: $78
    jr nz, jr_033_698D                            ; $6917: $20 $74

    ld e, a                                       ; $6919: $5F
    ld hl, sp+$10                                 ; $691A: $F8 $10
    cp b                                          ; $691C: $B8
    ld d, b                                       ; $691D: $50
    ldh [$FFF1], a                                ; $691E: $E0 $F1
    nop                                           ; $6920: $00
    ld hl, $42F9                                  ; $6921: $21 $F9 $42
    rrca                                          ; $6924: $0F
    rrca                                          ; $6925: $0F
    rrca                                          ; $6926: $0F
    dec c                                         ; $6927: $0D
    rrca                                          ; $6928: $0F
    inc b                                         ; $6929: $04

jr_033_692A:
    ld d, $82                                     ; $692A: $16 $82
    sub b                                         ; $692C: $90
    ld e, $01                                     ; $692D: $1E $01
    dec a                                         ; $692F: $3D
    ld [bc], a                                    ; $6930: $02
    ld a, e                                       ; $6931: $7B
    ld [hl], b                                    ; $6932: $70
    ld a, b                                       ; $6933: $78
    ld e, $07                                     ; $6934: $1E $07
    ccf                                           ; $6936: $3F
    ld b, $B0                                     ; $6937: $06 $B0
    jr nc, jr_033_694C                            ; $6939: $30 $11

    add b                                         ; $693B: $80
    inc bc                                        ; $693C: $03
    and d                                         ; $693D: $A2
    nop                                           ; $693E: $00
    nop                                           ; $693F: $00
    inc bc                                        ; $6940: $03
    and l                                         ; $6941: $A5
    ld a, [hl]                                    ; $6942: $7E
    rst RST_20                                    ; $6943: $E7
    db $10                                        ; $6944: $10
    jp $10A9                                      ; $6945: $C3 $A9 $10


    add c                                         ; $6948: $81

jr_033_6949:
    db $10                                        ; $6949: $10
    ld e, d                                       ; $694A: $5A
    add b                                         ; $694B: $80

jr_033_694C:
    db $DB                                        ; $694C: $DB
    inc h                                         ; $694D: $24
    ld de, $7196                                  ; $694E: $11 $96 $71
    ld b, d                                       ; $6951: $42
    cp l                                          ; $6952: $BD
    jr nc, jr_033_6955                            ; $6953: $30 $00

jr_033_6955:
    dec d                                         ; $6955: $15
    dec b                                         ; $6956: $05
    ldh a, [$FF60]                                ; $6957: $F0 $60
    jr nz, @+$18                                  ; $6959: $20 $16

    sub b                                         ; $695B: $90
    ld a, b                                       ; $695C: $78
    add b                                         ; $695D: $80
    cp h                                          ; $695E: $BC
    ld b, b                                       ; $695F: $40
    sbc $83                                       ; $6960: $DE $83
    ld [hl], b                                    ; $6962: $70
    ld e, $E0                                     ; $6963: $1E $E0
    call c, $D060                                 ; $6965: $DC $60 $D0
    jr nc, jr_033_697B                            ; $6968: $30 $11

    xor e                                         ; $696A: $AB
    add b                                         ; $696B: $80
    ret nz                                        ; $696C: $C0

    nop                                           ; $696D: $00
    nop                                           ; $696E: $00
    inc b                                         ; $696F: $04
    ld bc, $2111                                  ; $6970: $01 $11 $21
    ld c, b                                       ; $6973: $48
    ld e, $20                                     ; $6974: $1E $20
    ld l, $1D                                     ; $6976: $2E $1D
    db $10                                        ; $6978: $10
    rra                                           ; $6979: $1F

jr_033_697A:
    db $10                                        ; $697A: $10

jr_033_697B:
    rrca                                          ; $697B: $0F
    call c, $9000                                 ; $697C: $DC $00 $90
    inc bc                                        ; $697F: $03
    ld [de], a                                    ; $6980: $12
    pop af                                        ; $6981: $F1
    add hl, bc                                    ; $6982: $09
    ld [hl], b                                    ; $6983: $70
    adc a                                         ; $6984: $8F
    sub b                                         ; $6985: $90
    ldh a, [rIE]                                  ; $6986: $F0 $FF
    halt                                          ; $6988: $76
    jr nc, jr_033_697A                            ; $6989: $30 $EF

    db $10                                        ; $698B: $10
    rst RST_18                                    ; $698C: $DF

jr_033_698D:
    jr nz, jr_033_69AC                            ; $698D: $20 $1D

    cp a                                          ; $698F: $BF
    ld b, b                                       ; $6990: $40
    ld a, a                                       ; $6991: $7F
    ld [hl], b                                    ; $6992: $70
    and b                                         ; $6993: $A0
    ldh a, [$FFE0]                                ; $6994: $F0 $E0
    db $10                                        ; $6996: $10
    ld e, b                                       ; $6997: $58
    ret nz                                        ; $6998: $C0

    db $10                                        ; $6999: $10
    add b                                         ; $699A: $80
    db $10                                        ; $699B: $10
    add hl, bc                                    ; $699C: $09
    adc c                                         ; $699D: $89
    ld [hl], a                                    ; $699E: $77
    sbc h                                         ; $699F: $9C
    ld [$9F63], sp                                ; $69A0: $08 $63 $9F
    ld h, b                                       ; $69A3: $60
    db $FC                                        ; $69A4: $FC

jr_033_69A5:
    ld [hl], b                                    ; $69A5: $70
    ret nc                                        ; $69A6: $D0

    jr nz, jr_033_6949                            ; $69A7: $20 $A0

    ld e, h                                       ; $69A9: $5C
    ld b, b                                       ; $69AA: $40
    nop                                           ; $69AB: $00

jr_033_69AC:
    add b                                         ; $69AC: $80
    nop                                           ; $69AD: $00
    ld [hl], b                                    ; $69AE: $70
    rrca                                          ; $69AF: $0F
    call c, $38E0                                 ; $69B0: $DC $E0 $38
    jr c, @-$3E                                   ; $69B3: $38 $C0

    jr nz, @-$04                                  ; $69B5: $20 $FA

    rrca                                          ; $69B7: $0F
    dec bc                                        ; $69B8: $0B
    inc b                                         ; $69B9: $04
    dec b                                         ; $69BA: $05
    ld e, l                                       ; $69BB: $5D
    ld [bc], a                                    ; $69BC: $02
    nop                                           ; $69BD: $00
    ld bc, $F800                                  ; $69BE: $01 $00 $F8
    rrca                                          ; $69C1: $0F
    rst RST_38                                    ; $69C2: $FF
    db $10                                        ; $69C3: $10
    ld h, $81                                     ; $69C4: $26 $81
    ld a, [hl]                                    ; $69C6: $7E
    ld de, $18E7                                  ; $69C7: $11 $E7 $18
    ld [hl], c                                    ; $69CA: $71
    ld sp, $2F72                                  ; $69CB: $31 $72 $2F
    inc a                                         ; $69CE: $3C
    ld a, d                                       ; $69CF: $7A
    inc d                                         ; $69D0: $14
    halt                                          ; $69D1: $76
    sub b                                         ; $69D2: $90
    jr nz, jr_033_69A5                            ; $69D3: $20 $D0

    ld de, $40E1                                  ; $69D5: $11 $E1 $40
    db $10                                        ; $69D8: $10
    inc bc                                        ; $69D9: $03
    ret nc                                        ; $69DA: $D0

    jr nz, @-$5E                                  ; $69DB: $20 $A0

    ld b, b                                       ; $69DD: $40
    nop                                           ; $69DE: $00
    ld a, b                                       ; $69DF: $78
    add b                                         ; $69E0: $80
    nop                                           ; $69E1: $00
    or h                                          ; $69E2: $B4
    rrca                                          ; $69E3: $0F
    inc bc                                        ; $69E4: $03
    dec sp                                        ; $69E5: $3B

jr_033_69E6:
    rlca                                          ; $69E6: $07
    inc e                                         ; $69E7: $1C
    ld [hl], b                                    ; $69E8: $70
    inc bc                                        ; $69E9: $03
    jr nz, jr_033_69E6                            ; $69EA: $20 $FA

    rrca                                          ; $69EC: $0F
    sub c                                         ; $69ED: $91
    xor $39                                       ; $69EE: $EE $39
    add $10                                       ; $69F0: $C6 $10
    ld sp, hl                                     ; $69F2: $F9
    ld b, $3F                                     ; $69F3: $06 $3F
    ld [hl], b                                    ; $69F5: $70
    dec bc                                        ; $69F6: $0B
    inc b                                         ; $69F7: $04
    dec b                                         ; $69F8: $05
    ld [bc], a                                    ; $69F9: $02
    cp b                                          ; $69FA: $B8
    nop                                           ; $69FB: $00
    ld bc, $7000                                  ; $69FC: $01 $00 $70

jr_033_69FF:
    rrca                                          ; $69FF: $0F
    ld c, $F1                                     ; $6A00: $0E $F1
    ret nz                                        ; $6A02: $C0

    jr nz, @+$01                                  ; $6A03: $20 $FF

    ld l, [hl]                                    ; $6A05: $6E
    jr nc, jr_033_69FF                            ; $6A06: $30 $F7

    ld [$04FB], sp                                ; $6A08: $08 $FB $04
    db $FD                                        ; $6A0B: $FD
    ld a, [hl-]                                   ; $6A0C: $3A
    ld [bc], a                                    ; $6A0D: $02
    cp $70                                        ; $6A0E: $FE $70
    and b                                         ; $6A10: $A0
    ldh a, [rTAC]                                 ; $6A11: $F0 $07
    db $10                                        ; $6A13: $10
    inc bc                                        ; $6A14: $03
    or [hl]                                       ; $6A15: $B6
    db $10                                        ; $6A16: $10
    ld bc, $0A10                                  ; $6A17: $01 $10 $0A
    add b                                         ; $6A1A: $80
    ld de, $7821                                  ; $6A1B: $11 $21 $78
    sub c                                         ; $6A1E: $91
    jr nz, jr_033_6A95                            ; $6A1F: $20 $74

jr_033_6A21:
    cp b                                          ; $6A21: $B8
    db $10                                        ; $6A22: $10
    ld hl, sp+$08                                 ; $6A23: $F8 $08
    ldh a, [rP1]                                  ; $6A25: $F0 $00
    cp a                                          ; $6A27: $BF
    sub b                                         ; $6A28: $90

jr_033_6A29:
    ret nz                                        ; $6A29: $C0

    ld [de], a                                    ; $6A2A: $12
    pop af                                        ; $6A2B: $F1
    rrca                                          ; $6A2C: $0F
    rrca                                          ; $6A2D: $0F
    rrca                                          ; $6A2E: $0F
    rrca                                          ; $6A2F: $0F
    add b                                         ; $6A30: $80
    add hl, bc                                    ; $6A31: $09
    ld b, d                                       ; $6A32: $42
    nop                                           ; $6A33: $00
    ld d, l                                       ; $6A34: $55
    nop                                           ; $6A35: $00
    ld c, $80                                     ; $6A36: $0E $80
    db $10                                        ; $6A38: $10
    ld b, b                                       ; $6A39: $40
    jr nz, @-$5E                                  ; $6A3A: $20 $A0

    jr nz, jr_033_6A7F                            ; $6A3C: $20 $41

    ld d, b                                       ; $6A3E: $50
    jr nz, jr_033_6A29                            ; $6A3F: $20 $E8

    db $10                                        ; $6A41: $10
    db $F4                                        ; $6A42: $F4
    ld [$B0F8], sp                                ; $6A43: $08 $F8 $B0
    ld a, l                                       ; $6A46: $7D

jr_033_6A47:
    ld [hl], b                                    ; $6A47: $70
    db $10                                        ; $6A48: $10
    rrca                                          ; $6A49: $0F
    rrca                                          ; $6A4A: $0F
    rrca                                          ; $6A4B: $0F
    rlca                                          ; $6A4C: $07
    jr jr_033_6A5F                                ; $6A4D: $18 $10

    ld b, e                                       ; $6A4F: $43
    inc a                                         ; $6A50: $3C
    db $10                                        ; $6A51: $10
    ld a, [hl]                                    ; $6A52: $7E

jr_033_6A53:
    inc h                                         ; $6A53: $24
    rst RST_38                                    ; $6A54: $FF
    ld h, [hl]                                    ; $6A55: $66
    rst RST_30                                    ; $6A56: $F7
    rrca                                          ; $6A57: $0F
    xor b                                         ; $6A58: $A8
    dec bc                                        ; $6A59: $0B
    jr nz, @+$12                                  ; $6A5A: $20 $10

    ld d, b                                       ; $6A5C: $50
    jr nz, jr_033_6A47                            ; $6A5D: $20 $E8

jr_033_6A5F:
    db $10                                        ; $6A5F: $10
    db $F4                                        ; $6A60: $F4
    nop                                           ; $6A61: $00
    ld [$04FA], sp                                ; $6A62: $08 $FA $04
    ld [hl], l                                    ; $6A65: $75
    ld a, [bc]                                    ; $6A66: $0A
    ld l, $11                                     ; $6A67: $2E $11
    rra                                           ; $6A69: $1F
    ld [hl-], a                                   ; $6A6A: $32
    ld b, $0F                                     ; $6A6B: $06 $0F

jr_033_6A6D:
    ldh a, [rNR10]                                ; $6A6D: $F0 $10
    ld bc, $B01B                                  ; $6A6F: $01 $1B $B0
    dec a                                         ; $6A72: $3D
    ld h, $02                                     ; $6A73: $26 $02
    ld h, b                                       ; $6A75: $60
    and b                                         ; $6A76: $A0
    rst RST_28                                    ; $6A77: $EF
    db $10                                        ; $6A78: $10
    and b                                         ; $6A79: $A0
    ld c, $80                                     ; $6A7A: $0E $80
    xor d                                         ; $6A7C: $AA
    db $10                                        ; $6A7D: $10
    ld b, b                                       ; $6A7E: $40

jr_033_6A7F:
    jr nz, jr_033_6A21                            ; $6A7F: $20 $A0

    jr nz, jr_033_6A53                            ; $6A81: $20 $D0

    jr nz, jr_033_6A6D                            ; $6A83: $20 $E8

    add hl, bc                                    ; $6A85: $09
    db $10                                        ; $6A86: $10
    db $F4                                        ; $6A87: $F4
    ld l, b                                       ; $6A88: $68
    ld a, [bc]                                    ; $6A89: $0A
    jr nz, @-$2F                                  ; $6A8A: $20 $CF

    or b                                          ; $6A8C: $B0
    ldh [$FFF5], a                                ; $6A8D: $E0 $F5

jr_033_6A8F:
    rrca                                          ; $6A8F: $0F
    rrca                                          ; $6A90: $0F
    rrca                                          ; $6A91: $0F
    ld c, $0E                                     ; $6A92: $0E $0E
    db $10                                        ; $6A94: $10

jr_033_6A95:
    rra                                           ; $6A95: $1F
    db $10                                        ; $6A96: $10
    ld [bc], a                                    ; $6A97: $02
    cpl                                           ; $6A98: $2F
    db $10                                        ; $6A99: $10
    rla                                           ; $6A9A: $17
    ld [$050A], sp                                ; $6A9B: $08 $0A $05
    nop                                           ; $6A9E: $00
    ld [bc], a                                    ; $6A9F: $02
    cp d                                          ; $6AA0: $BA
    nop                                           ; $6AA1: $00
    ld bc, $B000                                  ; $6AA2: $01 $00 $B0
    rrca                                          ; $6AA5: $0F
    ld bc, $0310                                  ; $6AA6: $01 $10 $03
    and b                                         ; $6AA9: $A0
    db $10                                        ; $6AAA: $10
    add a                                         ; $6AAB: $87
    db $10                                        ; $6AAC: $10
    ld c, h                                       ; $6AAD: $4C
    add e                                         ; $6AAE: $83
    db $FD                                        ; $6AAF: $FD
    ld [bc], a                                    ; $6AB0: $02
    push af                                       ; $6AB1: $F5
    nop                                           ; $6AB2: $00
    ld c, d                                       ; $6AB3: $4A
    ld sp, hl                                     ; $6AB4: $F9
    ld b, [hl]                                    ; $6AB5: $46
    ld a, l                                       ; $6AB6: $7D
    sub d                                         ; $6AB7: $92
    cp l                                          ; $6AB8: $BD
    ld d, e                                       ; $6AB9: $53
    ld e, l                                       ; $6ABA: $5D
    inc b                                         ; $6ABB: $04
    ld h, $2C                                     ; $6ABC: $26 $2C
    rla                                           ; $6ABE: $17
    inc d                                         ; $6ABF: $14
    dec bc                                        ; $6AC0: $0B
    nop                                           ; $6AC1: $00
    inc b                                         ; $6AC2: $04
    dec b                                         ; $6AC3: $05
    ld a, [bc]                                    ; $6AC4: $0A
    ld [bc], a                                    ; $6AC5: $02
    inc bc                                        ; $6AC6: $03
    nop                                           ; $6AC7: $00
    ld bc, $8110                                  ; $6AC8: $01 $10 $81
    db $10                                        ; $6ACB: $10
    jp Jump_000_12A1                              ; $6ACC: $C3 $A1 $12


    inc a                                         ; $6ACF: $3C
    jr nz, jr_033_6A8F                            ; $6AD0: $20 $BD

    ld b, d                                       ; $6AD2: $42
    and l                                         ; $6AD3: $A5
    ld e, d                                       ; $6AD4: $5A
    ld sp, $9929                                  ; $6AD5: $31 $29 $99
    rst RST_20                                    ; $6AD8: $E7
    add b                                         ; $6AD9: $80
    ld a, [hl]                                    ; $6ADA: $7E
    ld [hl], c                                    ; $6ADB: $71

jr_033_6ADC:
    inc h                                         ; $6ADC: $24
    db $DB                                        ; $6ADD: $DB
    pop af                                        ; $6ADE: $F1
    add hl, sp                                    ; $6ADF: $39
    rst RST_38                                    ; $6AE0: $FF
    nop                                           ; $6AE1: $00
    db $10                                        ; $6AE2: $10
    ld h, b                                       ; $6AE3: $60
    ld [hl-], a                                   ; $6AE4: $32
    ld b, d                                       ; $6AE5: $42
    add b                                         ; $6AE6: $80
    jr nc, jr_033_6B39                            ; $6AE7: $30 $50

    ret nz                                        ; $6AE9: $C0

    db $10                                        ; $6AEA: $10
    pop hl                                        ; $6AEB: $E1
    db $10                                        ; $6AEC: $10
    ld [hl-], a                                   ; $6AED: $32
    pop bc                                        ; $6AEE: $C1
    cp a                                          ; $6AEF: $BF
    ld b, b                                       ; $6AF0: $40
    nop                                           ; $6AF1: $00
    xor a                                         ; $6AF2: $AF
    ld d, d                                       ; $6AF3: $52
    sbc a                                         ; $6AF4: $9F
    ld h, d                                       ; $6AF5: $62
    cp [hl]                                       ; $6AF6: $BE
    ld c, c                                       ; $6AF7: $49
    cp l                                          ; $6AF8: $BD
    jp z, $BA02                                   ; $6AF9: $CA $02 $BA

    ld h, h                                       ; $6AFC: $64
    inc [hl]                                      ; $6AFD: $34
    add sp, $28                                   ; $6AFE: $E8 $28
    ret nc                                        ; $6B00: $D0

    nop                                           ; $6B01: $00
    jr nz, jr_033_6B0B                            ; $6B02: $20 $07

    and b                                         ; $6B04: $A0
    ld b, b                                       ; $6B05: $40
    ret nz                                        ; $6B06: $C0

    nop                                           ; $6B07: $00
    add b                                         ; $6B08: $80
    db $10                                        ; $6B09: $10
    rrca                                          ; $6B0A: $0F

jr_033_6B0B:
    rrca                                          ; $6B0B: $0F
    ld [$0F0F], a                                 ; $6B0C: $EA $0F $0F
    rrca                                          ; $6B0F: $0F
    ld bc, $0210                                  ; $6B10: $01 $10 $02
    jr nz, jr_033_6B1A                            ; $6B13: $20 $05

    and b                                         ; $6B15: $A0
    jr nz, @+$0D                                  ; $6B16: $20 $0B

    jr nz, jr_033_6B31                            ; $6B18: $20 $17

jr_033_6B1A:
    ld [$162F], sp                                ; $6B1A: $08 $2F $16
    ld d, b                                       ; $6B1D: $50
    sbc d                                         ; $6B1E: $9A
    jr nz, @-$0B                                  ; $6B1F: $20 $F3

    dec c                                         ; $6B21: $0D
    ldh [rSC], a                                  ; $6B22: $E0 $02
    inc b                                         ; $6B24: $04
    db $10                                        ; $6B25: $10
    ld a, [bc]                                    ; $6B26: $0A
    ret nz                                        ; $6B27: $C0

jr_033_6B28:
    jr nz, @-$0C                                  ; $6B28: $20 $F2

    db $10                                        ; $6B2A: $10
    ld e, a                                       ; $6B2B: $5F
    jr nz, jr_033_6ADC                            ; $6B2C: $20 $AE

    ld d, b                                       ; $6B2E: $50
    ld [hl], h                                    ; $6B2F: $74
    inc c                                         ; $6B30: $0C

jr_033_6B31:
    adc b                                         ; $6B31: $88
    ld hl, sp+$60                                 ; $6B32: $F8 $60
    ldh a, [$FFF0]                                ; $6B34: $F0 $F0
    db $10                                        ; $6B36: $10
    add b                                         ; $6B37: $80
    ret c                                         ; $6B38: $D8

jr_033_6B39:
    adc c                                         ; $6B39: $89
    or b                                          ; $6B3A: $B0
    cp h                                          ; $6B3B: $BC
    ld b, b                                       ; $6B3C: $40
    ld b, $A0                                     ; $6B3D: $06 $A0
    rst RST_30                                    ; $6B3F: $F7
    ld [$AAA0], sp                                ; $6B40: $08 $A0 $AA
    ld c, $01                                     ; $6B43: $0E $01
    db $10                                        ; $6B45: $10
    ld [bc], a                                    ; $6B46: $02
    jr nz, jr_033_6B4E                            ; $6B47: $20 $05

    jr nz, jr_033_6B55                            ; $6B49: $20 $0A

    add d                                         ; $6B4B: $82
    jr nz, jr_033_6B65                            ; $6B4C: $20 $17

jr_033_6B4E:
    ld [$102F], sp                                ; $6B4E: $08 $2F $10
    rra                                           ; $6B51: $1F
    or b                                          ; $6B52: $B0
    ld c, $B1                                     ; $6B53: $0E $B1

jr_033_6B55:
    ldh a, [c]                                    ; $6B55: $F2
    inc bc                                        ; $6B56: $03
    db $10                                        ; $6B57: $10
    pop af                                        ; $6B58: $F1
    dec bc                                        ; $6B59: $0B
    inc b                                         ; $6B5A: $04
    inc d                                         ; $6B5B: $14
    jr nz, jr_033_6B5E                            ; $6B5C: $20 $00

jr_033_6B5E:
    inc l                                         ; $6B5E: $2C
    rla                                           ; $6B5F: $17
    ld e, l                                       ; $6B60: $5D
    ld h, $BD                                     ; $6B61: $26 $BD
    ld d, e                                       ; $6B63: $53
    ld a, l                                       ; $6B64: $7D

jr_033_6B65:
    sub d                                         ; $6B65: $92
    nop                                           ; $6B66: $00

jr_033_6B67:
    ld sp, hl                                     ; $6B67: $F9
    ld b, [hl]                                    ; $6B68: $46
    push af                                       ; $6B69: $F5
    ld c, d                                       ; $6B6A: $4A
    db $FD                                        ; $6B6B: $FD
    ld [bc], a                                    ; $6B6C: $02
    ld c, h                                       ; $6B6D: $4C
    add e                                         ; $6B6E: $83
    inc d                                         ; $6B6F: $14
    add a                                         ; $6B70: $87
    nop                                           ; $6B71: $00
    inc bc                                        ; $6B72: $03
    db $10                                        ; $6B73: $10
    ld bc, $FF10                                  ; $6B74: $01 $10 $FF
    ld b, d                                       ; $6B77: $42
    jp nc, Jump_000_3110                          ; $6B78: $D2 $10 $31

    inc h                                         ; $6B7B: $24
    ld sp, $C33C                                  ; $6B7C: $31 $3C $C3
    ld b, b                                       ; $6B7F: $40
    db $DB                                        ; $6B80: $DB
    jr nz, jr_033_6B28                            ; $6B81: $20 $A5

    ld e, d                                       ; $6B83: $5A
    ld b, b                                       ; $6B84: $40
    ld a, [hl]                                    ; $6B85: $7E
    sbc c                                         ; $6B86: $99
    rst RST_20                                    ; $6B87: $E7
    cp l                                          ; $6B88: $BD
    ld b, d                                       ; $6B89: $42
    push af                                       ; $6B8A: $F5
    ld [hl], c                                    ; $6B8B: $71
    ld sp, $00F1                                  ; $6B8C: $31 $F1 $00
    nop                                           ; $6B8F: $00
    ld de, $1081                                  ; $6B90: $11 $81 $10
    ld d, b                                       ; $6B93: $50
    add b                                         ; $6B94: $80
    db $10                                        ; $6B95: $10
    ret nz                                        ; $6B96: $C0

    db $10                                        ; $6B97: $10
    and b                                         ; $6B98: $A0
    ld b, b                                       ; $6B99: $40
    ret nc                                        ; $6B9A: $D0

    jr nz, jr_033_6BDD                            ; $6B9B: $20 $40

    jr z, jr_033_6BBF                             ; $6B9D: $28 $20

    inc [hl]                                      ; $6B9F: $34
    add sp, -$46                                  ; $6BA0: $E8 $BA
    ld h, h                                       ; $6BA2: $64
    cp l                                          ; $6BA3: $BD
    jp z, $BE00                                   ; $6BA4: $CA $00 $BE

    ld c, c                                       ; $6BA7: $49
    sbc a                                         ; $6BA8: $9F
    ld h, d                                       ; $6BA9: $62
    xor a                                         ; $6BAA: $AF
    ld d, d                                       ; $6BAB: $52
    cp a                                          ; $6BAC: $BF
    ld b, b                                       ; $6BAD: $40
    dec b                                         ; $6BAE: $05
    ld [hl-], a                                   ; $6BAF: $32
    pop bc                                        ; $6BB0: $C1
    pop hl                                        ; $6BB1: $E1
    nop                                           ; $6BB2: $00
    ret nz                                        ; $6BB3: $C0

    db $10                                        ; $6BB4: $10
    add b                                         ; $6BB5: $80
    stop                                          ; $6BB6: $10 $00
    rst RST_28                                    ; $6BB8: $EF
    ld de, $1F60                                  ; $6BB9: $11 $60 $1F
    ld e, $01                                     ; $6BBC: $1E $01
    dec de                                        ; $6BBE: $1B

jr_033_6BBF:
    inc b                                         ; $6BBF: $04
    ld a, [$5111]                                 ; $6BC0: $FA $11 $51
    sub c                                         ; $6BC3: $91
    pop de                                        ; $6BC4: $D1
    db $10                                        ; $6BC5: $10
    db $10                                        ; $6BC6: $10
    ld d, c                                       ; $6BC7: $51
    dec a                                         ; $6BC8: $3D
    ld e, d                                       ; $6BC9: $5A
    ld [bc], a                                    ; $6BCA: $02
    pop de                                        ; $6BCB: $D1
    rrca                                          ; $6BCC: $0F
    ret nc                                        ; $6BCD: $D0

    stop                                          ; $6BCE: $10 $00
    add b                                         ; $6BD0: $80
    ld b, $40                                     ; $6BD1: $06 $40
    ld l, $F0                                     ; $6BD3: $2E $F0
    rst RST_08                                    ; $6BD5: $CF
    jr nc, jr_033_6B67                            ; $6BD6: $30 $8F

    pop af                                        ; $6BD8: $F1

jr_033_6BD9:
    ld a, a                                       ; $6BD9: $7F
    add h                                         ; $6BDA: $84
    cp [hl]                                       ; $6BDB: $BE
    sub b                                         ; $6BDC: $90

jr_033_6BDD:
    ldh [rNR11], a                                ; $6BDD: $E0 $11
    ld d, c                                       ; $6BDF: $51
    sub c                                         ; $6BE0: $91
    pop de                                        ; $6BE1: $D1
    db $10                                        ; $6BE2: $10
    or b                                          ; $6BE3: $B0
    jr nz, jr_033_6BF0                            ; $6BE4: $20 $0A

    db $F4                                        ; $6BE6: $F4
    nop                                           ; $6BE7: $00
    ld l, b                                       ; $6BE8: $68
    add sp, $10                                   ; $6BE9: $E8 $10

jr_033_6BEB:
    ret nc                                        ; $6BEB: $D0

    and b                                         ; $6BEC: $A0
    xor d                                         ; $6BED: $AA
    nop                                           ; $6BEE: $00
    ld b, b                                       ; $6BEF: $40

jr_033_6BF0:
    nop                                           ; $6BF0: $00
    add b                                         ; $6BF1: $80
    nop                                           ; $6BF2: $00
    nop                                           ; $6BF3: $00
    ld de, $AFC0                                  ; $6BF4: $11 $C0 $AF
    jr nz, jr_033_6BD9                            ; $6BF7: $20 $E0

    jr nz, jr_033_6BEB                            ; $6BF9: $20 $F0

    ld d, b                                       ; $6BFB: $50
    ld de, $9151                                  ; $6BFC: $11 $51 $91
    ret nz                                        ; $6BFF: $C0

    pop de                                        ; $6C00: $D1
    rrca                                          ; $6C01: $0F
    ld [hl], l                                    ; $6C02: $75
    ld a, [bc]                                    ; $6C03: $0A
    ld a, [$F404]                                 ; $6C04: $FA $04 $F4
    ld [$E80E], sp                                ; $6C07: $08 $0E $E8
    db $10                                        ; $6C0A: $10
    ld d, b                                       ; $6C0B: $50
    jr nz, jr_033_6C0E                            ; $6C0C: $20 $00

jr_033_6C0E:
    db $F4                                        ; $6C0E: $F4

Call_033_6C0F:
    rrca                                          ; $6C0F: $0F
    ld [hl], b                                    ; $6C10: $70
    and b                                         ; $6C11: $A0
    db $10                                        ; $6C12: $10
    ld hl, sp+$10                                 ; $6C13: $F8 $10
    db $F4                                        ; $6C15: $F4
    ld [$10E8], sp                                ; $6C16: $08 $E8 $10
    ld d, b                                       ; $6C19: $50
    ld d, a                                       ; $6C1A: $57
    and b                                         ; $6C1B: $A0
    nop                                           ; $6C1C: $00
    ld b, b                                       ; $6C1D: $40
    nop                                           ; $6C1E: $00
    add b                                         ; $6C1F: $80
    nop                                           ; $6C20: $00

Jump_033_6C21:
    or b                                          ; $6C21: $B0
    rrca                                          ; $6C22: $0F
    pop bc                                        ; $6C23: $C1
    rrca                                          ; $6C24: $0F
    rrca                                          ; $6C25: $0F
    rst RST_38                                    ; $6C26: $FF

jr_033_6C27:
    ld h, [hl]                                    ; $6C27: $66
    ld a, [hl]                                    ; $6C28: $7E
    inc h                                         ; $6C29: $24
    inc a                                         ; $6C2A: $3C
    ld d, b                                       ; $6C2B: $50
    ld a, b                                       ; $6C2C: $78
    jr jr_033_6C27                                ; $6C2D: $18 $F8

    rrca                                          ; $6C2F: $0F
    rrca                                          ; $6C30: $0F
    rrca                                          ; $6C31: $0F
    xor [hl]                                      ; $6C32: $AE
    ld d, b                                       ; $6C33: $50
    ld e, a                                       ; $6C34: $5F
    ld bc, $2F20                                  ; $6C35: $01 $20 $2F
    db $10                                        ; $6C38: $10
    rla                                           ; $6C39: $17
    ld [$040A], sp                                ; $6C3A: $08 $0A $04
    nop                                           ; $6C3D: $00
    push de                                       ; $6C3E: $D5
    db $F4                                        ; $6C3F: $F4
    rrca                                          ; $6C40: $0F
    ld bc, $0310                                  ; $6C41: $01 $10 $03
    jr nz, jr_033_6C4D                            ; $6C44: $20 $07

    jr nz, jr_033_6CC6                            ; $6C46: $20 $7E

jr_033_6C48:
    rrca                                          ; $6C48: $0F
    ld d, b                                       ; $6C49: $50
    ld de, $9151                                  ; $6C4A: $11 $51 $91

jr_033_6C4D:
    pop de                                        ; $6C4D: $D1
    rrca                                          ; $6C4E: $0F
    di                                            ; $6C4F: $F3
    ld bc, $F10C                                  ; $6C50: $01 $0C $F1
    adc a                                         ; $6C53: $8F
    cp $21                                        ; $6C54: $FE $21
    ld hl, sp+$07                                 ; $6C56: $F8 $07
    ld de, $51F1                                  ; $6C58: $11 $F1 $51
    sub c                                         ; $6C5B: $91
    pop de                                        ; $6C5C: $D1
    db $10                                        ; $6C5D: $10
    dec c                                         ; $6C5E: $0D
    ld d, b                                       ; $6C5F: $50
    cpl                                           ; $6C60: $2F
    nop                                           ; $6C61: $00
    dec b                                         ; $6C62: $05
    ld d, $17                                     ; $6C63: $16 $17
    ld [$050B], sp                                ; $6C65: $08 $0B $05
    nop                                           ; $6C68: $00
    ld [bc], a                                    ; $6C69: $02
    nop                                           ; $6C6A: $00
    ld b, b                                       ; $6C6B: $40
    ld bc, $0000                                  ; $6C6C: $01 $00 $00
    rst RST_30                                    ; $6C6F: $F7
    adc b                                         ; $6C70: $88
    ld b, $F8                                     ; $6C71: $06 $F8
    ld a, b                                       ; $6C73: $78
    rra                                           ; $6C74: $1F
    add b                                         ; $6C75: $80
    ret c                                         ; $6C76: $D8

    jr nz, jr_033_6C8A                            ; $6C77: $20 $11

    ld d, c                                       ; $6C79: $51
    sub c                                         ; $6C7A: $91
    pop de                                        ; $6C7B: $D1
    db $10                                        ; $6C7C: $10
    ld c, e                                       ; $6C7D: $4B
    ld [$BC51], sp                                ; $6C7E: $08 $51 $BC
    ld b, b                                       ; $6C81: $40
    pop de                                        ; $6C82: $D1
    ldh a, [$FFD0]                                ; $6C83: $F0 $D0
    db $10                                        ; $6C85: $10
    ld c, b                                       ; $6C86: $48
    nop                                           ; $6C87: $00
    add b                                         ; $6C88: $80
    ld h, b                                       ; $6C89: $60

jr_033_6C8A:
    ld [hl], h                                    ; $6C8A: $74
    ldh a, [rHDMA2]                               ; $6C8B: $F0 $52
    ld b, b                                       ; $6C8D: $40
    ld l, d                                       ; $6C8E: $6A
    nop                                           ; $6C8F: $00
    rlca                                          ; $6C90: $07
    inc b                                         ; $6C91: $04
    ld bc, $0308                                  ; $6C92: $01 $08 $03
    ld [$0E07], sp                                ; $6C95: $08 $07 $0E

jr_033_6C98:
    ld [bc], a                                    ; $6C98: $02
    dec c                                         ; $6C99: $0D
    ld b, $05                                     ; $6C9A: $06 $05
    jr jr_033_6C9E                                ; $6C9C: $18 $00

jr_033_6C9E:
    ld d, b                                       ; $6C9E: $50
    ld [hl], c                                    ; $6C9F: $71
    add l                                         ; $6CA0: $85
    ld c, b                                       ; $6CA1: $48
    ld c, d                                       ; $6CA2: $4A
    ld sp, $1926                                  ; $6CA3: $31 $26 $19
    rst RST_08                                    ; $6CA6: $CF
    ld a, [hl]                                    ; $6CA7: $7E
    ld [$FF56], sp                                ; $6CA8: $08 $56 $FF
    db $10                                        ; $6CAB: $10
    pop bc                                        ; $6CAC: $C1
    ld [$2080], sp                                ; $6CAD: $08 $80 $20
    dec bc                                        ; $6CB0: $0B
    cp $7A                                        ; $6CB1: $FE $7A
    add c                                         ; $6CB3: $81
    add hl, bc                                    ; $6CB4: $09
    jr nz, jr_033_6C48                            ; $6CB5: $20 $91

    db $10                                        ; $6CB7: $10
    ld b, d                                       ; $6CB8: $42
    ld [$FA24], sp                                ; $6CB9: $08 $24 $FA
    ld [hl-], a                                   ; $6CBC: $32
    rlca                                          ; $6CBD: $07
    inc bc                                        ; $6CBE: $03
    ret c                                         ; $6CBF: $D8

jr_033_6CC0:
    ld [$08C0], sp                                ; $6CC0: $08 $C0 $08
    and b                                         ; $6CC3: $A0
    dec e                                         ; $6CC4: $1D
    ld b, b                                       ; $6CC5: $40

jr_033_6CC6:
    sub b                                         ; $6CC6: $90
    ld h, b                                       ; $6CC7: $60
    add hl, de                                    ; $6CC8: $19
    nop                                           ; $6CC9: $00
    ld d, b                                       ; $6CCA: $50
    adc [hl]                                      ; $6CCB: $8E
    ld c, b                                       ; $6CCC: $48
    ld a, [bc]                                    ; $6CCD: $0A
    ld d, d                                       ; $6CCE: $52
    adc h                                         ; $6CCF: $8C
    ld h, h                                       ; $6CD0: $64
    sbc b                                         ; $6CD1: $98
    sbc c                                         ; $6CD2: $99
    inc b                                         ; $6CD3: $04
    ld [$EA0E], sp                                ; $6CD4: $08 $0E $EA
    db $10                                        ; $6CD7: $10
    add hl, de                                    ; $6CD8: $19
    inc bc                                        ; $6CD9: $03
    jr nz, jr_033_6CE4                            ; $6CDA: $20 $08

    ld [hl], c                                    ; $6CDC: $71
    db $10                                        ; $6CDD: $10
    inc hl                                        ; $6CDE: $23
    add e                                         ; $6CDF: $83
    jr jr_033_6CE9                                ; $6CE0: $18 $07

    ld [bc], a                                    ; $6CE2: $02
    dec c                                         ; $6CE3: $0D

jr_033_6CE4:
    ld b, $65                                     ; $6CE4: $06 $65
    jr jr_033_6CC0                                ; $6CE6: $18 $D8

    nop                                           ; $6CE8: $00

jr_033_6CE9:
    ld hl, $3049                                  ; $6CE9: $21 $49 $30
    ld c, d                                       ; $6CEC: $4A
    ld sp, $1926                                  ; $6CED: $31 $26 $19
    db $10                                        ; $6CF0: $10
    cp d                                          ; $6CF1: $BA
    ld a, b                                       ; $6CF2: $78
    jr c, jr_033_6D05                             ; $6CF3: $38 $10

    add hl, de                                    ; $6CF5: $19
    ld bc, $087E                                  ; $6CF6: $01 $7E $08
    rst RST_38                                    ; $6CF9: $FF
    xor h                                         ; $6CFA: $AC
    db $10                                        ; $6CFB: $10
    pop bc                                        ; $6CFC: $C1
    ld [$2080], sp                                ; $6CFD: $08 $80 $20
    dec bc                                        ; $6D00: $0B
    cp $81                                        ; $6D01: $FE $81
    push af                                       ; $6D03: $F5
    add hl, bc                                    ; $6D04: $09

jr_033_6D05:
    jr nz, jr_033_6C98                            ; $6D05: $20 $91

    db $10                                        ; $6D07: $10
    ld b, d                                       ; $6D08: $42
    ld [$3224], sp                                ; $6D09: $08 $24 $32
    db $DD                                        ; $6D0C: $DD
    ld bc, $38F9                                  ; $6D0D: $01 $F9 $38
    db $10                                        ; $6D10: $10
    add hl, de                                    ; $6D11: $19
    ld bc, $0804                                  ; $6D12: $01 $04 $08
    ld d, b                                       ; $6D15: $50
    adc [hl]                                      ; $6D16: $8E
    db $10                                        ; $6D17: $10
    call nz, $A018                                ; $6D18: $C4 $18 $A0
    ld b, b                                       ; $6D1B: $40
    sub b                                         ; $6D1C: $90
    ld h, b                                       ; $6D1D: $60
    ld b, b                                       ; $6D1E: $40
    and [hl]                                      ; $6D1F: $A6
    jr jr_033_6D6C                                ; $6D20: $18 $4A

    add h                                         ; $6D22: $84
    sub d                                         ; $6D23: $92
    inc c                                         ; $6D24: $0C
    ld d, d                                       ; $6D25: $52
    adc h                                         ; $6D26: $8C
    dec d                                         ; $6D27: $15
    ld h, h                                       ; $6D28: $64
    sbc b                                         ; $6D29: $98
    ld bc, $0378                                  ; $6D2A: $01 $78 $03
    db $10                                        ; $6D2D: $10
    ld b, $10                                     ; $6D2E: $06 $10
    add l                                         ; $6D30: $85
    ld d, b                                       ; $6D31: $50
    rlca                                          ; $6D32: $07
    jr jr_033_6D44                                ; $6D33: $18 $0F

    ld [hl], e                                    ; $6D35: $73
    jr nz, @-$3F                                  ; $6D36: $20 $BF

    xor b                                         ; $6D38: $A8
    ld [$2758], sp                                ; $6D39: $08 $58 $27
    ld h, d                                       ; $6D3C: $62
    rra                                           ; $6D3D: $1F
    cp b                                          ; $6D3E: $B8
    ld l, a                                       ; $6D3F: $6F
    ld [hl], l                                    ; $6D40: $75
    ld a, [bc]                                    ; $6D41: $0A
    rla                                           ; $6D42: $17
    adc l                                         ; $6D43: $8D

jr_033_6D44:
    ld [hl], d                                    ; $6D44: $72
    ld a, l                                       ; $6D45: $7D
    jr jr_033_6D65                                ; $6D46: $18 $1D

    ld [$8850], sp                                ; $6D48: $08 $50 $88
    push de                                       ; $6D4B: $D5
    nop                                           ; $6D4C: $00

jr_033_6D4D:
    add sp, -$40                                  ; $6D4D: $E8 $C0
    ld [$10E0], sp                                ; $6D4F: $08 $E0 $10
    db $10                                        ; $6D52: $10
    stop                                          ; $6D53: $10 $00
    ld [$04F0], sp                                ; $6D55: $08 $F0 $04
    ld hl, sp-$32                                 ; $6D58: $F8 $CE
    jr nc, jr_033_6D4D                            ; $6D5A: $30 $F1

    ld c, $44                                     ; $6D5C: $0E $44
    ld b, $28                                     ; $6D5E: $06 $28
    ld c, c                                       ; $6D60: $49
    or $46                                        ; $6D61: $F6 $46
    jr jr_033_6D9E                                ; $6D63: $18 $39

jr_033_6D65:
    add $09                                       ; $6D65: $C6 $09
    ld a, $D8                                     ; $6D67: $3E $D8
    cp h                                          ; $6D69: $BC
    ld e, b                                       ; $6D6A: $58
    add hl, bc                                    ; $6D6B: $09

jr_033_6D6C:
    db $FC                                        ; $6D6C: $FC
    jr jr_033_6D6F                                ; $6D6D: $18 $00

jr_033_6D6F:
    xor c                                         ; $6D6F: $A9
    add sp, $07                                   ; $6D70: $E8 $07
    ld [$106F], sp                                ; $6D72: $08 $6F $10
    rst RST_38                                    ; $6D75: $FF
    ld l, b                                       ; $6D76: $68
    add hl, de                                    ; $6D77: $19
    ld d, a                                       ; $6D78: $57
    inc bc                                        ; $6D79: $03
    ld c, c                                       ; $6D7A: $49
    ld [bc], a                                    ; $6D7B: $02
    jr jr_033_6D7F                                ; $6D7C: $18 $01

    add hl, bc                                    ; $6D7E: $09

jr_033_6D7F:
    add hl, hl                                    ; $6D7F: $29
    dec sp                                        ; $6D80: $3B
    ld a, [$6800]                                 ; $6D81: $FA $00 $68
    ld bc, $8A30                                  ; $6D84: $01 $30 $8A
    inc c                                         ; $6D87: $0C
    db $10                                        ; $6D88: $10

jr_033_6D89:
    add b                                         ; $6D89: $80
    and a                                         ; $6D8A: $A7
    jr z, jr_033_6D65                             ; $6D8B: $28 $D8

    db $10                                        ; $6D8D: $10
    db $FC                                        ; $6D8E: $FC
    ld e, b                                       ; $6D8F: $58
    add hl, de                                    ; $6D90: $19
    add hl, sp                                    ; $6D91: $39
    ld bc, $19F4                                  ; $6D92: $01 $F4 $19
    dec hl                                        ; $6D95: $2B
    add sp, $08                                   ; $6D96: $E8 $08
    push hl                                       ; $6D98: $E5
    cp b                                          ; $6D99: $B8
    ld d, l                                       ; $6D9A: $55
    ld [hl+], a                                   ; $6D9B: $22
    nop                                           ; $6D9C: $00
    ld c, l                                       ; $6D9D: $4D

jr_033_6D9E:
    ld [hl-], a                                   ; $6D9E: $32
    add hl, hl                                    ; $6D9F: $29
    ld d, $1B                                     ; $6DA0: $16 $1B

jr_033_6DA2:
    inc b                                         ; $6DA2: $04
    or [hl]                                       ; $6DA3: $B6
    add hl, bc                                    ; $6DA4: $09
    db $F4                                        ; $6DA5: $F4
    add d                                         ; $6DA6: $82
    rlca                                          ; $6DA7: $07
    rlca                                          ; $6DA8: $07
    ld [bc], a                                    ; $6DA9: $02
    ld h, b                                       ; $6DAA: $60

jr_033_6DAB:
    ld [$40A0], sp                                ; $6DAB: $08 $A0 $40
    jp c, $0009                                   ; $6DAE: $DA $09 $00

    add b                                         ; $6DB1: $80
    nop                                           ; $6DB2: $00
    jr c, jr_033_6DBC                             ; $6DB3: $38 $07

    ld [$862F], sp                                ; $6DB5: $08 $2F $86
    db $10                                        ; $6DB8: $10
    ld a, a                                       ; $6DB9: $7F
    jr z, jr_033_6DAB                             ; $6DBA: $28 $EF

jr_033_6DBC:
    ld b, a                                       ; $6DBC: $47
    nop                                           ; $6DBD: $00
    jr c, @+$05                                   ; $6DBE: $38 $03

    ld e, a                                       ; $6DC0: $5F
    ld bc, $0240                                  ; $6DC1: $01 $40 $02
    add hl, bc                                    ; $6DC4: $09
    add hl, hl                                    ; $6DC5: $29
    dec sp                                        ; $6DC6: $3B
    nop                                           ; $6DC7: $00
    ld l, b                                       ; $6DC8: $68
    ld [$1901], a                                 ; $6DC9: $EA $01 $19
    add hl, sp                                    ; $6DCC: $39
    inc c                                         ; $6DCD: $0C
    db $10                                        ; $6DCE: $10
    add b                                         ; $6DCF: $80
    jr z, jr_033_6DA2                             ; $6DD0: $28 $D0

    add a                                         ; $6DD2: $87
    db $10                                        ; $6DD3: $10
    ld hl, sp+$50                                 ; $6DD4: $F8 $50
    call c, $0088                                 ; $6DD6: $DC $88 $00
    jr c, jr_033_6E24                             ; $6DD9: $38 $49

    ret nc                                        ; $6DDB: $D0

    inc bc                                        ; $6DDC: $03
    add hl, hl                                    ; $6DDD: $29
    add c                                         ; $6DDE: $81
    ld [$01C2], sp                                ; $6DDF: $08 $C2 $01
    and d                                         ; $6DE2: $A2

jr_033_6DE3:
    ld b, c                                       ; $6DE3: $41
    nop                                           ; $6DE4: $00
    sub l                                         ; $6DE5: $95
    ld h, d                                       ; $6DE6: $62
    ld l, l                                       ; $6DE7: $6D
    ld [de], a                                    ; $6DE8: $12

jr_033_6DE9:
    dec de                                        ; $6DE9: $1B
    inc b                                         ; $6DEA: $04
    or [hl]                                       ; $6DEB: $B6
    add hl, bc                                    ; $6DEC: $09
    ld [$07A4], a                                 ; $6DED: $EA $A4 $07
    inc b                                         ; $6DF0: $04
    add b                                         ; $6DF1: $80
    ld a, [bc]                                    ; $6DF2: $0A
    and b                                         ; $6DF3: $A0
    ld [$1F50], sp                                ; $6DF4: $08 $50 $1F

jr_033_6DF7:
    jr nz, jr_033_6D89                            ; $6DF7: $20 $90

    ld h, b                                       ; $6DF9: $60
    nop                                           ; $6DFA: $00
    ld b, b                                       ; $6DFB: $40
    ld c, c                                       ; $6DFC: $49
    rlca                                          ; $6DFD: $07
    rlca                                          ; $6DFE: $07
    db $FC                                        ; $6DFF: $FC
    rlca                                          ; $6E00: $07
    rlca                                          ; $6E01: $07
    rlca                                          ; $6E02: $07
    rlca                                          ; $6E03: $07
    rlca                                          ; $6E04: $07
    rlca                                          ; $6E05: $07
    dec e                                         ; $6E06: $1D
    ld [bc], a                                    ; $6E07: $02
    inc b                                         ; $6E08: $04
    ld [hl], d                                    ; $6E09: $72
    dec c                                         ; $6E0A: $0D
    add a                                         ; $6E0B: $87
    ld a, b                                       ; $6E0C: $78
    db $FD                                        ; $6E0D: $FD
    jr z, @+$1D                                   ; $6E0E: $28 $1B

    inc b                                         ; $6E10: $04
    dec d                                         ; $6E11: $15
    dec h                                         ; $6E12: $25
    jr @+$3B                                      ; $6E13: $18 $39

    ld l, b                                       ; $6E15: $68
    inc bc                                        ; $6E16: $03
    ld [$4807], sp                                ; $6E17: $08 $07 $48
    ld a, h                                       ; $6E1A: $7C

jr_033_6E1B:
    rrca                                          ; $6E1B: $0F
    db $10                                        ; $6E1C: $10
    add hl, bc                                    ; $6E1D: $09
    nop                                           ; $6E1E: $00
    rst RST_30                                    ; $6E1F: $F7
    nop                                           ; $6E20: $00
    inc h                                         ; $6E21: $24
    rst RST_38                                    ; $6E22: $FF
    db $ED                                        ; $6E23: $ED

jr_033_6E24:
    add hl, bc                                    ; $6E24: $09
    jr nz, jr_033_6E40                            ; $6E25: $20 $19

    db $DB                                        ; $6E27: $DB
    nop                                           ; $6E28: $00
    ld de, $09A5                                  ; $6E29: $11 $A5 $09
    inc d                                         ; $6E2C: $14
    cp l                                          ; $6E2D: $BD
    ld b, d                                       ; $6E2E: $42
    ld a, [hl]                                    ; $6E2F: $7E
    jr @-$17                                      ; $6E30: $18 $E7

    jr jr_033_6DF7                                ; $6E32: $18 $C3

    add c                                         ; $6E34: $81
    ldh [rP1], a                                  ; $6E35: $E0 $00
    rst RST_30                                    ; $6E37: $F7
    nop                                           ; $6E38: $00
    cp b                                          ; $6E39: $B8
    ld b, b                                       ; $6E3A: $40
    ld c, [hl]                                    ; $6E3B: $4E
    or b                                          ; $6E3C: $B0
    pop hl                                        ; $6E3D: $E1
    jr nz, jr_033_6E5E                            ; $6E3E: $20 $1E

jr_033_6E40:
    cp a                                          ; $6E40: $BF
    jr z, jr_033_6E1B                             ; $6E41: $28 $D8

    jr nz, jr_033_6DE9                            ; $6E43: $20 $A4

    jr jr_033_6DE3                                ; $6E45: $18 $9C

    xor e                                         ; $6E47: $AB
    ld l, b                                       ; $6E48: $68
    ret nz                                        ; $6E49: $C0

    ld [$48E0], sp                                ; $6E4A: $08 $E0 $48
    ldh a, [rNR10]                                ; $6E4D: $F0 $10
    add hl, bc                                    ; $6E4F: $09
    ldh [c], a                                    ; $6E50: $E2
    nop                                           ; $6E51: $00
    rst RST_30                                    ; $6E52: $F7
    nop                                           ; $6E53: $00
    dec a                                         ; $6E54: $3D
    ld [bc], a                                    ; $6E55: $02
    ld b, d                                       ; $6E56: $42
    db $10                                        ; $6E57: $10
    sbc a                                         ; $6E58: $9F
    ld hl, $E560                                  ; $6E59: $21 $60 $E5
    jr z, jr_033_6E69                             ; $6E5C: $28 $0B

jr_033_6E5E:
    inc b                                         ; $6E5E: $04
    dec d                                         ; $6E5F: $15
    ld [$5609], sp                                ; $6E60: $08 $09 $56
    dec de                                        ; $6E63: $1B
    ld a, b                                       ; $6E64: $78
    rrca                                          ; $6E65: $0F
    ld c, b                                       ; $6E66: $48
    rra                                           ; $6E67: $1F
    db $10                                        ; $6E68: $10

jr_033_6E69:
    ld [$E70E], sp                                ; $6E69: $08 $0E $E7
    nop                                           ; $6E6C: $00
    rst RST_30                                    ; $6E6D: $F7
    nop                                           ; $6E6E: $00
    inc h                                         ; $6E6F: $24
    rst RST_38                                    ; $6E70: $FF
    add hl, bc                                    ; $6E71: $09
    jr nz, @+$1B                                  ; $6E72: $20 $19

    ld l, b                                       ; $6E74: $68
    db $DB                                        ; $6E75: $DB
    nop                                           ; $6E76: $00
    ld de, $09A5                                  ; $6E77: $11 $A5 $09
    cp l                                          ; $6E7A: $BD
    ld b, d                                       ; $6E7B: $42
    ld h, [hl]                                    ; $6E7C: $66
    inc a                                         ; $6E7D: $3C
    add c                                         ; $6E7E: $81
    jp $1070                                      ; $6E7F: $C3 $70 $10


jr_033_6E82:
    rst RST_20                                    ; $6E82: $E7
    ld [bc], a                                    ; $6E83: $02
    cp h                                          ; $6E84: $BC
    ld b, b                                       ; $6E85: $40
    call nz, Call_000_1090                        ; $6E86: $C4 $90 $10
    ld sp, hl                                     ; $6E89: $F9
    ld b, $A7                                     ; $6E8A: $06 $A7
    jr z, jr_033_6E5E                             ; $6E8C: $28 $D0

    jr nz, jr_033_6ECA                            ; $6E8E: $20 $3A

    xor b                                         ; $6E90: $A8
    db $10                                        ; $6E91: $10
    add hl, bc                                    ; $6E92: $09
    jr z, @+$7A                                   ; $6E93: $28 $78

    ldh a, [rOBP0]                                ; $6E95: $F0 $48
    ld hl, sp-$23                                 ; $6E97: $F8 $DD
    db $10                                        ; $6E99: $10
    ld [$0070], sp                                ; $6E9A: $08 $70 $00
    rst RST_30                                    ; $6E9D: $F7
    inc b                                         ; $6E9E: $04
    ld bc, $5008                                  ; $6E9F: $01 $08 $50
    inc bc                                        ; $6EA2: $03
    db $10                                        ; $6EA3: $10
    ld b, $10                                     ; $6EA4: $06 $10
    dec e                                         ; $6EA6: $1D
    ld [bc], a                                    ; $6EA7: $02
    inc hl                                        ; $6EA8: $23
    inc e                                         ; $6EA9: $1C
    pop bc                                        ; $6EAA: $C1
    nop                                           ; $6EAB: $00
    jr z, @+$23                                   ; $6EAC: $28 $21

    rra                                           ; $6EAE: $1F
    add hl, de                                    ; $6EAF: $19
    rlca                                          ; $6EB0: $07
    ld h, $10                                     ; $6EB1: $26 $10
    ld a, [hl]                                    ; $6EB3: $7E
    ld e, $78                                     ; $6EB4: $1E $78
    jr nz, jr_033_6F20                            ; $6EB6: $20 $68

    ld [$00F7], sp                                ; $6EB8: $08 $F7 $00
    add b                                         ; $6EBB: $80
    xor d                                         ; $6EBC: $AA
    ld [$10C0], sp                                ; $6EBD: $08 $C0 $10
    jr nz, jr_033_6ED2                            ; $6EC0: $20 $10

    ret c                                         ; $6EC2: $D8

    db $10                                        ; $6EC3: $10
    db $E4                                        ; $6EC4: $E4
    ld b, d                                       ; $6EC5: $42
    jr jr_033_6EC8                                ; $6EC6: $18 $00

jr_033_6EC8:
    ldh [rLY], a                                  ; $6EC8: $E0 $44

jr_033_6ECA:
    ld hl, sp+$58                                 ; $6ECA: $F8 $58
    jr jr_033_6E82                                ; $6ECC: $18 $B4

    ld b, $48                                     ; $6ECE: $06 $48
    cp b                                          ; $6ED0: $B8
    ld b, b                                       ; $6ED1: $40

jr_033_6ED2:
    ldh a, [$FFA0]                                ; $6ED2: $F0 $A0
    ld [$3FDC], sp                                ; $6ED4: $08 $DC $3F
    and [hl]                                      ; $6ED7: $A6
    ld [$107F], sp                                ; $6ED8: $08 $7F $10
    jp Jump_000_0F7C                              ; $6EDB: $C3 $7C $0F


    ld [$903C], sp                                ; $6EDE: $08 $3C $90
    ldh [$FF1F], a                                ; $6EE1: $E0 $1F
    rst RST_38                                    ; $6EE3: $FF
    adc b                                         ; $6EE4: $88
    pop af                                        ; $6EE5: $F1
    ld c, $FA                                     ; $6EE6: $0E $FA
    dec b                                         ; $6EE8: $05
    ldh [c], a                                    ; $6EE9: $E2
    xor b                                         ; $6EEA: $A8
    db $EC                                        ; $6EEB: $EC
    ld bc, $B44B                                  ; $6EEC: $01 $4B $B4
    add b                                         ; $6EEF: $80
    ld d, b                                       ; $6EF0: $50
    and b                                         ; $6EF1: $A0
    sbc h                                         ; $6EF2: $9C
    ld [$7E9D], sp                                ; $6EF3: $08 $9D $7E
    add hl, hl                                    ; $6EF6: $29
    add hl, bc                                    ; $6EF7: $09
    add hl, hl                                    ; $6EF8: $29
    add sp, $37                                   ; $6EF9: $E8 $37
    jr nz, @-$34                                  ; $6EFB: $20 $CA

    dec [hl]                                      ; $6EFD: $35
    adc c                                         ; $6EFE: $89
    xor h                                         ; $6EFF: $AC
    ld d, e                                       ; $6F00: $53
    ld h, [hl]                                    ; $6F01: $66
    sbc c                                         ; $6F02: $99
    rst RST_38                                    ; $6F03: $FF
    add sp, -$02                                  ; $6F04: $E8 $FE
    xor b                                         ; $6F06: $A8
    ld [$08F0], sp                                ; $6F07: $08 $F0 $08
    db $FC                                        ; $6F0A: $FC
    db $10                                        ; $6F0B: $10
    ld e, $00                                     ; $6F0C: $1E $00
    db $E4                                        ; $6F0E: $E4
    rst RST_20                                    ; $6F0F: $E7
    ld a, [de]                                    ; $6F10: $1A
    ei                                            ; $6F11: $FB
    inc b                                         ; $6F12: $04
    rra                                           ; $6F13: $1F
    ld [$15EF], a                                 ; $6F14: $EA $EF $15
    inc d                                         ; $6F17: $14
    rst RST_30                                    ; $6F18: $F7
    ld l, b                                       ; $6F19: $68
    ret z                                         ; $6F1A: $C8

    ld b, $08                                     ; $6F1B: $06 $08
    ld c, $08                                     ; $6F1D: $0E $08
    ld a, [hl+]                                   ; $6F1F: $2A

jr_033_6F20:
    inc c                                         ; $6F20: $0C
    cp $FE                                        ; $6F21: $FE $FE
    ccf                                           ; $6F23: $3F
    ld [$107F], sp                                ; $6F24: $08 $7F $10
    jp $7C63                                      ; $6F27: $C3 $63 $7C


    rrca                                          ; $6F2A: $0F
    ld [$E03C], sp                                ; $6F2B: $08 $3C $E0
    rra                                           ; $6F2E: $1F
    ret c                                         ; $6F2F: $D8

    adc b                                         ; $6F30: $88
    ld c, h                                       ; $6F31: $4C
    pop af                                        ; $6F32: $F1
    ld hl, sp-$06                                 ; $6F33: $F8 $FA
    dec b                                         ; $6F35: $05
    xor b                                         ; $6F36: $A8
    cp $4B                                        ; $6F37: $FE $4B
    or h                                          ; $6F39: $B4
    ld d, e                                       ; $6F3A: $53
    add b                                         ; $6F3B: $80
    ld d, b                                       ; $6F3C: $50
    and b                                         ; $6F3D: $A0
    ld [$7E9D], sp                                ; $6F3E: $08 $9D $7E
    add hl, hl                                    ; $6F41: $29

jr_033_6F42:
    add hl, bc                                    ; $6F42: $09
    add h                                         ; $6F43: $84
    add hl, hl                                    ; $6F44: $29
    add sp, $37                                   ; $6F45: $E8 $37
    jp z, $8935                                   ; $6F47: $CA $35 $89

    xor h                                         ; $6F4A: $AC
    ld d, e                                       ; $6F4B: $53
    dec e                                         ; $6F4C: $1D
    ld h, [hl]                                    ; $6F4D: $66
    sbc c                                         ; $6F4E: $99
    rst RST_38                                    ; $6F4F: $FF
    cp $A8                                        ; $6F50: $FE $A8
    ld [$08F0], sp                                ; $6F52: $08 $F0 $08
    nop                                           ; $6F55: $00
    db $FC                                        ; $6F56: $FC
    db $10                                        ; $6F57: $10
    ld e, $E4                                     ; $6F58: $1E $E4
    rst RST_20                                    ; $6F5A: $E7
    ld a, [de]                                    ; $6F5B: $1A
    ei                                            ; $6F5C: $FB
    inc b                                         ; $6F5D: $04
    ld [bc], a                                    ; $6F5E: $02
    rra                                           ; $6F5F: $1F
    ld [$14EF], a                                 ; $6F60: $EA $EF $14
    rst RST_30                                    ; $6F63: $F7
    ld l, b                                       ; $6F64: $68
    ret z                                         ; $6F65: $C8

    ld b, $A7                                     ; $6F66: $06 $A7
    ld [$080E], sp                                ; $6F68: $08 $0E $08
    inc c                                         ; $6F6B: $0C
    cp $FE                                        ; $6F6C: $FE $FE
    rlca                                          ; $6F6E: $07
    rlca                                          ; $6F6F: $07
    db $FC                                        ; $6F70: $FC
    rlca                                          ; $6F71: $07
    rlca                                          ; $6F72: $07
    rlca                                          ; $6F73: $07
    rlca                                          ; $6F74: $07
    rlca                                          ; $6F75: $07
    rlca                                          ; $6F76: $07
    ld [hl], $00                                  ; $6F77: $36 $00
    ld d, l                                       ; $6F79: $55
    nop                                           ; $6F7A: $00
    inc b                                         ; $6F7B: $04
    inc bc                                        ; $6F7C: $03
    db $10                                        ; $6F7D: $10
    inc b                                         ; $6F7E: $04
    db $10                                        ; $6F7F: $10
    ld [$5512], sp                                ; $6F80: $08 $12 $55
    db $10                                        ; $6F83: $10
    db $10                                        ; $6F84: $10
    ld de, $1210                                  ; $6F85: $11 $10 $12
    db $10                                        ; $6F88: $10
    inc c                                         ; $6F89: $0C
    jp nc, $0376                                  ; $6F8A: $D2 $76 $03

    db $10                                        ; $6F8D: $10
    dec b                                         ; $6F8E: $05
    or c                                          ; $6F8F: $B1
    rra                                           ; $6F90: $1F
    jr nz, jr_033_6FA3                            ; $6F91: $20 $10

    dec c                                         ; $6F93: $0D
    dec d                                         ; $6F94: $15
    cp h                                          ; $6F95: $BC
    inc de                                        ; $6F96: $13
    ld [hl], b                                    ; $6F97: $70
    ld b, b                                       ; $6F98: $40
    inc a                                         ; $6F99: $3C
    db $10                                        ; $6F9A: $10

jr_033_6F9B:
    ld a, h                                       ; $6F9B: $7C
    ld d, b                                       ; $6F9C: $50
    ld de, $04BB                                  ; $6F9D: $11 $BB $04
    jr nc, jr_033_6FF2                            ; $6FA0: $30 $50

    ld a, a                                       ; $6FA2: $7F

jr_033_6FA3:
    db $10                                        ; $6FA3: $10
    or b                                          ; $6FA4: $B0
    jr nc, jr_033_6FA7                            ; $6FA5: $30 $00

jr_033_6FA7:
    rst RST_30                                    ; $6FA7: $F7
    jr jr_033_6F42                                ; $6FA8: $18 $98

    rrca                                          ; $6FAA: $0F
    adc l                                         ; $6FAB: $8D
    ld b, $67                                     ; $6FAC: $06 $67
    ld bc, $2136                                  ; $6FAE: $01 $36 $21
    nop                                           ; $6FB1: $00
    ldh a, [rNR10]                                ; $6FB2: $F0 $10
    ld hl, sp+$20                                 ; $6FB4: $F8 $20
    db $10                                        ; $6FB6: $10
    or b                                          ; $6FB7: $B0
    dec [hl]                                      ; $6FB8: $35
    dec [hl]                                      ; $6FB9: $35
    ret z                                         ; $6FBA: $C8

    ret nz                                        ; $6FBB: $C0

    ld b, b                                       ; $6FBC: $40
    inc [hl]                                      ; $6FBD: $34
    db $10                                        ; $6FBE: $10
    ld a, $50                                     ; $6FBF: $3E $50
    ld de, $20DD                                  ; $6FC1: $11 $DD $20
    inc b                                         ; $6FC4: $04
    ld d, b                                       ; $6FC5: $50
    or $08                                        ; $6FC6: $F6 $08
    dec b                                         ; $6FC8: $05
    jr nc, jr_033_6FCB                            ; $6FC9: $30 $00

jr_033_6FCB:
    rst RST_20                                    ; $6FCB: $E7
    jr jr_033_6FD7                                ; $6FCC: $18 $09

    ldh a, [$FF91]                                ; $6FCE: $F0 $91
    ld h, b                                       ; $6FD0: $60
    ld h, [hl]                                    ; $6FD1: $66
    add b                                         ; $6FD2: $80
    ld a, [hl+]                                   ; $6FD3: $2A
    add h                                         ; $6FD4: $84
    nop                                           ; $6FD5: $00
    dec b                                         ; $6FD6: $05

jr_033_6FD7:
    ret nz                                        ; $6FD7: $C0

    db $10                                        ; $6FD8: $10
    jr nz, jr_033_6FEB                            ; $6FD9: $20 $10

    db $10                                        ; $6FDB: $10
    xor d                                         ; $6FDC: $AA
    ld [de], a                                    ; $6FDD: $12
    ld [$8810], sp                                ; $6FDE: $08 $10 $88
    db $10                                        ; $6FE1: $10
    ld c, b                                       ; $6FE2: $48
    db $10                                        ; $6FE3: $10
    jr nc, jr_033_6F9B                            ; $6FE4: $30 $B5

    jp nc, Jump_000_10C0                          ; $6FE6: $D2 $C0 $10

    dec bc                                        ; $6FE9: $0B
    inc bc                                        ; $6FEA: $03

jr_033_6FEB:
    db $10                                        ; $6FEB: $10
    inc b                                         ; $6FEC: $04
    db $10                                        ; $6FED: $10
    ld d, l                                       ; $6FEE: $55
    inc c                                         ; $6FEF: $0C
    db $10                                        ; $6FF0: $10
    ld [de], a                                    ; $6FF1: $12

jr_033_6FF2:
    db $10                                        ; $6FF2: $10
    ld de, $3C10                                  ; $6FF3: $11 $10 $3C
    db $10                                        ; $6FF6: $10
    ld d, b                                       ; $6FF7: $50
    ld c, d                                       ; $6FF8: $4A
    db $10                                        ; $6FF9: $10
    rst RST_08                                    ; $6FFA: $CF
    db $10                                        ; $6FFB: $10
    rra                                           ; $6FFC: $1F
    rrca                                          ; $6FFD: $0F
    ld [hl-], a                                   ; $6FFE: $32
    dec e                                         ; $6FFF: $1D
    inc sp                                        ; $7000: $33
    ld l, d                                       ; $7001: $6A
    dec [hl]                                      ; $7002: $35
    sub b                                         ; $7003: $90
    db $10                                        ; $7004: $10
    ld [$A055], a                                 ; $7005: $EA $55 $A0
    inc b                                         ; $7008: $04
    ld d, l                                       ; $7009: $55
    add b                                         ; $700A: $80
    db $10                                        ; $700B: $10
    ld h, b                                       ; $700C: $60
    db $10                                        ; $700D: $10
    db $10                                        ; $700E: $10
    db $10                                        ; $700F: $10
    ld [$5412], sp                                ; $7010: $08 $12 $54
    adc b                                         ; $7013: $88
    db $10                                        ; $7014: $10
    ld d, b                                       ; $7015: $50
    db $10                                        ; $7016: $10
    ld hl, sp+$10                                 ; $7017: $F8 $10
    cp $78                                        ; $7019: $FE $78
    ld b, $EF                                     ; $701B: $06 $EF
    ld [hl], $6F                                  ; $701D: $36 $6F
    or [hl]                                       ; $701F: $B6
    add [hl]                                      ; $7020: $86
    ld d, b                                       ; $7021: $50
    db $10                                        ; $7022: $10
    ld a, h                                       ; $7023: $7C
    ld [$55AA], sp                                ; $7024: $08 $AA $55
    ld c, d                                       ; $7027: $4A
    dec [hl]                                      ; $7028: $35
    ld de, $1D22                                  ; $7029: $11 $22 $1D
    db $10                                        ; $702C: $10
    ld a, [de]                                    ; $702D: $1A

jr_033_702E:
    rrca                                          ; $702E: $0F
    rst RST_08                                    ; $702F: $CF
    nop                                           ; $7030: $00
    ld [hl], b                                    ; $7031: $70
    db $10                                        ; $7032: $10
    inc a                                         ; $7033: $3C
    db $10                                        ; $7034: $10
    ld de, $10AA                                  ; $7035: $11 $AA $10
    ld [de], a                                    ; $7038: $12
    db $10                                        ; $7039: $10
    inc c                                         ; $703A: $0C
    db $10                                        ; $703B: $10
    inc b                                         ; $703C: $04
    db $10                                        ; $703D: $10
    inc bc                                        ; $703E: $03
    ret z                                         ; $703F: $C8

    db $10                                        ; $7040: $10
    dec b                                         ; $7041: $05
    add [hl]                                      ; $7042: $86
    ld a, h                                       ; $7043: $7C
    db $10                                        ; $7044: $10
    ld a, b                                       ; $7045: $78
    ld l, a                                       ; $7046: $6F
    or [hl]                                       ; $7047: $B6
    dec d                                         ; $7048: $15
    rst RST_28                                    ; $7049: $EF
    ld [hl], $C6                                  ; $704A: $36 $C6
    ld d, b                                       ; $704C: $50
    ld hl, sp-$50                                 ; $704D: $F8 $B0
    ld d, b                                       ; $704F: $50
    db $10                                        ; $7050: $10
    ld d, l                                       ; $7051: $55
    adc b                                         ; $7052: $88
    db $10                                        ; $7053: $10
    ld [$1012], sp                                ; $7054: $08 $12 $10
    db $10                                        ; $7057: $10
    ld h, b                                       ; $7058: $60
    db $10                                        ; $7059: $10
    ld l, d                                       ; $705A: $6A
    add b                                         ; $705B: $80
    db $10                                        ; $705C: $10
    dec bc                                        ; $705D: $0B
    inc bc                                        ; $705E: $03
    db $10                                        ; $705F: $10
    inc b                                         ; $7060: $04
    db $10                                        ; $7061: $10
    inc c                                         ; $7062: $0C
    xor d                                         ; $7063: $AA
    db $10                                        ; $7064: $10
    ld [de], a                                    ; $7065: $12
    db $10                                        ; $7066: $10
    ld de, $1010                                  ; $7067: $11 $10 $10
    db $10                                        ; $706A: $10
    ld [$12DA], sp                                ; $706B: $08 $DA $12
    pop de                                        ; $706E: $D1
    inc bc                                        ; $706F: $03
    db $10                                        ; $7070: $10
    dec b                                         ; $7071: $05
    ld hl, $6710                                  ; $7072: $21 $10 $67
    nop                                           ; $7075: $00
    ld bc, $068D                                  ; $7076: $01 $8D $06
    sbc b                                         ; $7079: $98
    rrca                                          ; $707A: $0F
    rst RST_30                                    ; $707B: $F7
    jr jr_033_702E                                ; $707C: $18 $B0

    ld [$7F1F], sp                                ; $707E: $08 $1F $7F
    db $10                                        ; $7081: $10
    jr nc, jr_033_70B4                            ; $7082: $30 $30

    cp e                                          ; $7084: $BB

jr_033_7085:
    inc b                                         ; $7085: $04
    ld a, h                                       ; $7086: $7C
    dec hl                                        ; $7087: $2B
    inc de                                        ; $7088: $13
    inc a                                         ; $7089: $3C
    ld d, b                                       ; $708A: $50
    ld [hl], b                                    ; $708B: $70
    db $10                                        ; $708C: $10
    cp h                                          ; $708D: $BC
    ld d, b                                       ; $708E: $50
    jr nz, jr_033_70F5                            ; $708F: $20 $64

    inc c                                         ; $7091: $0C
    ld de, $0000                                  ; $7092: $11 $00 $00
    add h                                         ; $7095: $84
    db $10                                        ; $7096: $10
    ld h, [hl]                                    ; $7097: $66
    add b                                         ; $7098: $80
    nop                                           ; $7099: $00
    sub c                                         ; $709A: $91
    ld h, b                                       ; $709B: $60
    add hl, bc                                    ; $709C: $09
    ldh a, [$FFE7]                                ; $709D: $F0 $E7
    jr jr_033_70A6                                ; $709F: $18 $05

    ld hl, sp+$10                                 ; $70A1: $F8 $10
    or $08                                        ; $70A3: $F6 $08
    inc b                                         ; $70A5: $04

jr_033_70A6:
    jr nc, jr_033_7085                            ; $70A6: $30 $DD

    jr nz, jr_033_70E8                            ; $70A8: $20 $3E

    ret z                                         ; $70AA: $C8

    ld d, [hl]                                    ; $70AB: $56
    inc [hl]                                      ; $70AC: $34
    ld d, b                                       ; $70AD: $50
    ld b, $10                                     ; $70AE: $06 $10
    dec [hl]                                      ; $70B0: $35
    ld d, b                                       ; $70B1: $50
    jr nz, jr_033_70E4                            ; $70B2: $20 $30

jr_033_70B4:
    push de                                       ; $70B4: $D5
    ld de, $0000                                  ; $70B5: $11 $00 $00
    dec b                                         ; $70B8: $05
    ret nz                                        ; $70B9: $C0

    db $10                                        ; $70BA: $10
    jr nz, @+$12                                  ; $70BB: $20 $10

    xor d                                         ; $70BD: $AA
    or c                                          ; $70BE: $B1
    ld c, b                                       ; $70BF: $48
    db $10                                        ; $70C0: $10
    adc b                                         ; $70C1: $88
    db $10                                        ; $70C2: $10
    ld [$1010], sp                                ; $70C3: $08 $10 $10
    jp c, $D112                                   ; $70C6: $DA $12 $D1

    ret nz                                        ; $70C9: $C0

    db $10                                        ; $70CA: $10
    dec bc                                        ; $70CB: $0B
    ld bc, $0610                                  ; $70CC: $01 $10 $06
    xor d                                         ; $70CF: $AA
    db $10                                        ; $70D0: $10
    ld [$1010], sp                                ; $70D1: $08 $10 $10
    ld [de], a                                    ; $70D4: $12
    ld de, $0A10                                  ; $70D5: $11 $10 $0A
    and b                                         ; $70D8: $A0
    db $10                                        ; $70D9: $10
    rra                                           ; $70DA: $1F
    db $10                                        ; $70DB: $10
    ld a, a                                       ; $70DC: $7F
    ld e, $F7                                     ; $70DD: $1E $F7
    ld l, h                                       ; $70DF: $6C
    or $36                                        ; $70E0: $F6 $36
    ld l, l                                       ; $70E2: $6D
    ld h, c                                       ; $70E3: $61

jr_033_70E4:
    ld d, b                                       ; $70E4: $50
    db $10                                        ; $70E5: $10
    ld a, $A0                                     ; $70E6: $3E $A0

jr_033_70E8:
    inc b                                         ; $70E8: $04
    ret nz                                        ; $70E9: $C0

    xor d                                         ; $70EA: $AA
    db $10                                        ; $70EB: $10
    jr nz, @+$12                                  ; $70EC: $20 $10

    jr nc, jr_033_7100                            ; $70EE: $30 $10

    ld c, b                                       ; $70F0: $48
    db $10                                        ; $70F1: $10
    adc b                                         ; $70F2: $88
    xor d                                         ; $70F3: $AA
    db $10                                        ; $70F4: $10

jr_033_70F5:
    inc a                                         ; $70F5: $3C
    db $10                                        ; $70F6: $10
    ld d, d                                       ; $70F7: $52
    db $10                                        ; $70F8: $10
    di                                            ; $70F9: $F3
    db $10                                        ; $70FA: $10

jr_033_70FB:
    ld hl, sp+$06                                 ; $70FB: $F8 $06
    ldh a, [$FF4C]                                ; $70FD: $F0 $4C
    cp b                                          ; $70FF: $B8

jr_033_7100:
    ld d, [hl]                                    ; $7100: $56
    xor h                                         ; $7101: $AC
    sub b                                         ; $7102: $90
    db $10                                        ; $7103: $10
    ld d, a                                       ; $7104: $57
    db $10                                        ; $7105: $10
    xor d                                         ; $7106: $AA
    ld h, c                                       ; $7107: $61
    ld a, $10                                     ; $7108: $3E $10
    ld e, $F6                                     ; $710A: $1E $F6
    ld l, l                                       ; $710C: $6D
    rst RST_30                                    ; $710D: $F7
    ld [hl+], a                                   ; $710E: $22
    ld l, h                                       ; $710F: $6C
    ld h, e                                       ; $7110: $63
    ld d, b                                       ; $7111: $50
    rra                                           ; $7112: $1F
    nop                                           ; $7113: $00
    ld a, [bc]                                    ; $7114: $0A
    db $10                                        ; $7115: $10
    ld de, $10AA                                  ; $7116: $11 $AA $10
    db $10                                        ; $7119: $10
    ld [de], a                                    ; $711A: $12
    ld [$0610], sp                                ; $711B: $08 $10 $06
    db $10                                        ; $711E: $10
    ld bc, $10C2                                  ; $711F: $01 $C2 $10
    dec b                                         ; $7122: $05
    ld d, l                                       ; $7123: $55
    xor d                                         ; $7124: $AA
    ld d, d                                       ; $7125: $52
    xor h                                         ; $7126: $AC
    ld de, $0E44                                  ; $7127: $11 $44 $0E
    cp b                                          ; $712A: $B8
    ld [$F3F0], sp                                ; $712B: $08 $F0 $F3
    or b                                          ; $712E: $B0
    ld [hl], b                                    ; $712F: $70
    db $10                                        ; $7130: $10
    inc a                                         ; $7131: $3C
    xor d                                         ; $7132: $AA
    db $10                                        ; $7133: $10
    adc b                                         ; $7134: $88
    db $10                                        ; $7135: $10
    ld c, b                                       ; $7136: $48
    db $10                                        ; $7137: $10
    jr nc, jr_033_714A                            ; $7138: $30 $10

    jr nz, jr_033_70FB                            ; $713A: $20 $BF

    db $10                                        ; $713C: $10
    ret nz                                        ; $713D: $C0

    db $10                                        ; $713E: $10
    rrca                                          ; $713F: $0F
    rrca                                          ; $7140: $0F
    rrca                                          ; $7141: $0F
    rrca                                          ; $7142: $0F
    rrca                                          ; $7143: $0F
    rst RST_38                                    ; $7144: $FF
    rrca                                          ; $7145: $0F
    rrca                                          ; $7146: $0F
    rrca                                          ; $7147: $0F
    rrca                                          ; $7148: $0F
    rrca                                          ; $7149: $0F

jr_033_714A:
    rrca                                          ; $714A: $0F
    rrca                                          ; $714B: $0F
    rrca                                          ; $714C: $0F
    rst RST_38                                    ; $714D: $FF
    rrca                                          ; $714E: $0F
    rrca                                          ; $714F: $0F
    rrca                                          ; $7150: $0F
    rrca                                          ; $7151: $0F
    rrca                                          ; $7152: $0F
    rrca                                          ; $7153: $0F
    rrca                                          ; $7154: $0F
    rrca                                          ; $7155: $0F
    rst RST_38                                    ; $7156: $FF
    rrca                                          ; $7157: $0F
    rrca                                          ; $7158: $0F
    rrca                                          ; $7159: $0F
    rrca                                          ; $715A: $0F
    rrca                                          ; $715B: $0F
    rrca                                          ; $715C: $0F
    rrca                                          ; $715D: $0F
    rrca                                          ; $715E: $0F
    ldh a, [rIF]                                  ; $715F: $F0 $0F
    rrca                                          ; $7161: $0F
    rrca                                          ; $7162: $0F
    dec b                                         ; $7163: $05
    cp l                                          ; $7164: $BD
    add b                                         ; $7165: $80
    ld a, e                                       ; $7166: $7B
    nop                                           ; $7167: $00
    inc bc                                        ; $7168: $03
    inc bc                                        ; $7169: $03
    inc bc                                        ; $716A: $03
    ld [bc], a                                    ; $716B: $02
    rst RST_38                                    ; $716C: $FF
    rlca                                          ; $716D: $07
    rlca                                          ; $716E: $07
    rst RST_38                                    ; $716F: $FF
    rlca                                          ; $7170: $07
    ld b, $13                                     ; $7171: $06 $13
    rlca                                          ; $7173: $07
    rlca                                          ; $7174: $07
    rlca                                          ; $7175: $07
    inc bc                                        ; $7176: $03
    inc bc                                        ; $7177: $03
    push de                                       ; $7178: $D5
    inc bc                                        ; $7179: $03
    inc bc                                        ; $717A: $03
    jr jr_033_717D                                ; $717B: $18 $00

jr_033_717D:
    inc h                                         ; $717D: $24
    nop                                           ; $717E: $00
    ld h, [hl]                                    ; $717F: $66
    inc bc                                        ; $7180: $03
    cp l                                          ; $7181: $BD
    nop                                           ; $7182: $00
    ld a, [hl]                                    ; $7183: $7E
    nop                                           ; $7184: $00
    dec c                                         ; $7185: $0D
    cp c                                          ; $7186: $B9
    ld bc, $0008                                  ; $7187: $01 $08 $00
    ld a, l                                       ; $718A: $7D
    inc c                                         ; $718B: $0C
    nop                                           ; $718C: $00
    dec l                                         ; $718D: $2D
    dec c                                         ; $718E: $0D
    dec e                                         ; $718F: $1D
    scf                                           ; $7190: $37
    ld b, d                                       ; $7191: $42
    nop                                           ; $7192: $00
    ld a, [hl]                                    ; $7193: $7E
    ld e, a                                       ; $7194: $5F
    nop                                           ; $7195: $00
    dec c                                         ; $7196: $0D
    inc bc                                        ; $7197: $03
    ld bc, $3DA5                                  ; $7198: $01 $A5 $3D
    ld bc, $00D7                                  ; $719B: $01 $D7 $00
    ld d, a                                       ; $719E: $57
    ld a, b                                       ; $719F: $78
    nop                                           ; $71A0: $00
    inc b                                         ; $71A1: $04
    ld [bc], a                                    ; $71A2: $02
    db $ED                                        ; $71A3: $ED
    dec h                                         ; $71A4: $25
    ld d, l                                       ; $71A5: $55
    db $FD                                        ; $71A6: $FD
    nop                                           ; $71A7: $00
    add hl, bc                                    ; $71A8: $09
    nop                                           ; $71A9: $00
    ld de, $2100                                  ; $71AA: $11 $00 $21

jr_033_71AD:
    inc bc                                        ; $71AD: $03
    cp [hl]                                       ; $71AE: $BE
    nop                                           ; $71AF: $00
    inc e                                         ; $71B0: $1C
    nop                                           ; $71B1: $00
    ld l, a                                       ; $71B2: $6F
    db $DD                                        ; $71B3: $DD
    ld l, a                                       ; $71B4: $6F
    xor l                                         ; $71B5: $AD
    ld b, h                                       ; $71B6: $44
    cp a                                          ; $71B7: $BF
    nop                                           ; $71B8: $00
    add b                                         ; $71B9: $80
    nop                                           ; $71BA: $00
    ccf                                           ; $71BB: $3F
    inc bc                                        ; $71BC: $03
    inc bc                                        ; $71BD: $03
    inc bc                                        ; $71BE: $03
    ld bc, $7C5F                                  ; $71BF: $01 $5F $7C
    nop                                           ; $71C2: $00
    ld h, [hl]                                    ; $71C3: $66
    ld [bc], a                                    ; $71C4: $02
    rla                                           ; $71C5: $17
    rla                                           ; $71C6: $17
    ld b, a                                       ; $71C7: $47
    cp l                                          ; $71C8: $BD
    ld e, [hl]                                    ; $71C9: $5E
    inc c                                         ; $71CA: $0C
    nop                                           ; $71CB: $00
    ld a, [hl]                                    ; $71CC: $7E
    nop                                           ; $71CD: $00
    dec c                                         ; $71CE: $0D
    dec e                                         ; $71CF: $1D
    scf                                           ; $71D0: $37
    db $10                                        ; $71D1: $10
    or l                                          ; $71D2: $B5
    nop                                           ; $71D3: $00
    ld a, l                                       ; $71D4: $7D
    nop                                           ; $71D5: $00
    dec c                                         ; $71D6: $0D
    ld a, $00                                     ; $71D7: $3E $00
    ld d, c                                       ; $71D9: $51
    ld [bc], a                                    ; $71DA: $02
    ld l, d                                       ; $71DB: $6A
    ld [hl+], a                                   ; $71DC: $22
    nop                                           ; $71DD: $00
    dec a                                         ; $71DE: $3D
    jr nz, jr_033_71E1                            ; $71DF: $20 $00

jr_033_71E1:
    ld l, [hl]                                    ; $71E1: $6E
    nop                                           ; $71E2: $00
    ld sp, $00AD                                  ; $71E3: $31 $AD $00
    ld hl, $6100                                  ; $71E6: $21 $00 $61
    ld [bc], a                                    ; $71E9: $02
    ccf                                           ; $71EA: $3F
    ld b, d                                       ; $71EB: $42
    inc bc                                        ; $71EC: $03
    sub $02                                       ; $71ED: $D6 $02
    dec l                                         ; $71EF: $2D
    inc b                                         ; $71F0: $04
    nop                                           ; $71F1: $00
    jr c, jr_033_71F4                             ; $71F2: $38 $00

jr_033_71F4:
    dec a                                         ; $71F4: $3D
    rst RST_38                                    ; $71F5: $FF
    and b                                         ; $71F6: $A0
    nop                                           ; $71F7: $00
    ldh a, [rP1]                                  ; $71F8: $F0 $00
    db $E3                                        ; $71FA: $E3
    ldh [$FFD8], a                                ; $71FB: $E0 $D8
    ret nz                                        ; $71FD: $C0

    and b                                         ; $71FE: $A0
    inc bc                                        ; $71FF: $03
    add a                                         ; $7200: $87
    ret z                                         ; $7201: $C8

    add c                                         ; $7202: $81
    pop bc                                        ; $7203: $C1
    add e                                         ; $7204: $83
    db $D3                                        ; $7205: $D3
    inc d                                         ; $7206: $14
    dec a                                         ; $7207: $3D
    xor e                                         ; $7208: $AB
    ld d, l                                       ; $7209: $55
    ld b, $54                                     ; $720A: $06 $54
    ld l, h                                       ; $720C: $6C
    inc b                                         ; $720D: $04
    inc h                                         ; $720E: $24
    inc b                                         ; $720F: $04
    ld c, h                                       ; $7210: $4C
    ld l, b                                       ; $7211: $68
    db $DB                                        ; $7212: $DB
    dec l                                         ; $7213: $2D
    inc bc                                        ; $7214: $03
    rra                                           ; $7215: $1F
    nop                                           ; $7216: $00
    rst RST_00                                    ; $7217: $C7
    rlca                                          ; $7218: $07
    dec sp                                        ; $7219: $3B
    dec sp                                        ; $721A: $3B
    inc bc                                        ; $721B: $03
    dec d                                         ; $721C: $15
    ld [hl], b                                    ; $721D: $70
    ld [$1D7C], sp                                ; $721E: $08 $7C $1D
    inc c                                         ; $7221: $0C
    jr z, jr_033_71AD                             ; $7222: $28 $89

    inc b                                         ; $7224: $04
    sub h                                         ; $7225: $94
    add h                                         ; $7226: $84
    and a                                         ; $7227: $A7
    adc h                                         ; $7228: $8C
    rst RST_20                                    ; $7229: $E7
    adc a                                         ; $722A: $8F
    ld bc, $AF44                                  ; $722B: $01 $44 $AF
    ld b, $AE                                     ; $722E: $06 $AE
    adc [hl]                                      ; $7230: $8E
    add $04                                       ; $7231: $C6 $04
    inc a                                         ; $7233: $3C
    ld a, [hl]                                    ; $7234: $7E
    xor c                                         ; $7235: $A9
    inc b                                         ; $7236: $04
    cp l                                          ; $7237: $BD
    adc l                                         ; $7238: $8D
    db $E3                                        ; $7239: $E3
    ld bc, $22F7                                  ; $723A: $01 $F7 $22
    nop                                           ; $723D: $00
    call nz, $02C8                                ; $723E: $C4 $C8 $02
    inc de                                        ; $7241: $13
    ld b, c                                       ; $7242: $41
    adc l                                         ; $7243: $8D
    adc h                                         ; $7244: $8C
    call Call_000_30E1                            ; $7245: $CD $E1 $30
    push bc                                       ; $7248: $C5
    pop af                                        ; $7249: $F1
    inc a                                         ; $724A: $3C
    inc b                                         ; $724B: $04
    ld h, l                                       ; $724C: $65
    ld [hl], c                                    ; $724D: $71
    dec h                                         ; $724E: $25
    ld sp, $2756                                  ; $724F: $31 $56 $27
    inc b                                         ; $7252: $04
    sub a                                         ; $7253: $97
    or h                                          ; $7254: $B4
    db $D3                                        ; $7255: $D3
    inc b                                         ; $7256: $04
    ldh [$FF83], a                                ; $7257: $E0 $83
    ld a, [de]                                    ; $7259: $1A
    xor b                                         ; $725A: $A8
    add b                                         ; $725B: $80
    ret nz                                        ; $725C: $C0

    inc b                                         ; $725D: $04
    nop                                           ; $725E: $00
    cp [hl]                                       ; $725F: $BE
    inc b                                         ; $7260: $04
    xor d                                         ; $7261: $AA
    cp $A5                                        ; $7262: $FE $A5
    add l                                         ; $7264: $85
    ld hl, $0080                                  ; $7265: $21 $80 $00
    ret nc                                        ; $7268: $D0

    ld e, $D9                                     ; $7269: $1E $D9
    or c                                          ; $726B: $B1
    inc b                                         ; $726C: $04
    or [hl]                                       ; $726D: $B6
    inc b                                         ; $726E: $04
    dec a                                         ; $726F: $3D
    ld l, e                                       ; $7270: $6B
    ld h, c                                       ; $7271: $61
    res 6, h                                      ; $7272: $CB $B4
    ld d, l                                       ; $7274: $55
    sbc e                                         ; $7275: $9B
    inc a                                         ; $7276: $3C
    dec l                                         ; $7277: $2D
    adc b                                         ; $7278: $88
    ld bc, $7D01                                  ; $7279: $01 $01 $7D
    inc b                                         ; $727C: $04
    ld [hl], l                                    ; $727D: $75
    ld d, l                                       ; $727E: $55
    dec a                                         ; $727F: $3D
    ld bc, $9528                                  ; $7280: $01 $28 $95
    add b                                         ; $7283: $80
    jp z, Jump_000_2504                           ; $7284: $CA $04 $25

    and b                                         ; $7287: $A0
    call z, $D0CC                                 ; $7288: $CC $CC $D0
    adc a                                         ; $728B: $8F
    db $10                                        ; $728C: $10
    sbc h                                         ; $728D: $9C
    inc b                                         ; $728E: $04
    ld l, b                                       ; $728F: $68
    sbc b                                         ; $7290: $98
    ld b, a                                       ; $7291: $47
    inc bc                                        ; $7292: $03
    ccf                                           ; $7293: $3F
    nop                                           ; $7294: $00
    rra                                           ; $7295: $1F
    rst RST_18                                    ; $7296: $DF
    rrca                                          ; $7297: $0F
    cp a                                          ; $7298: $BF
    nop                                           ; $7299: $00
    rlca                                          ; $729A: $07
    nop                                           ; $729B: $00
    cpl                                           ; $729C: $2F
    inc bc                                        ; $729D: $03
    inc bc                                        ; $729E: $03
    inc bc                                        ; $729F: $03
    add h                                         ; $72A0: $84

jr_033_72A1:
    ld [de], a                                    ; $72A1: $12
    sbc c                                         ; $72A2: $99
    sub b                                         ; $72A3: $90
    call $C2B4                                    ; $72A4: $CD $B4 $C2
    cp l                                          ; $72A7: $BD
    ret nc                                        ; $72A8: $D0

    push hl                                       ; $72A9: $E5
    or h                                          ; $72AA: $B4
    inc b                                         ; $72AB: $04
    jp c, Jump_000_0518                           ; $72AC: $DA $18 $05

    and $04                                       ; $72AF: $E6 $04
    ld bc, $28E1                                  ; $72B1: $01 $E1 $28
    inc c                                         ; $72B4: $0C
    ld e, $D0                                     ; $72B5: $1E $D0
    cp a                                          ; $72B7: $BF
    ldh a, [$FF9F]                                ; $72B8: $F0 $9F
    ld h, $2F                                     ; $72BA: $26 $2F
    ld d, [hl]                                    ; $72BC: $56
    add $BC                                       ; $72BD: $C6 $BC
    inc l                                         ; $72BF: $2C
    call z, Call_000_1C8D                         ; $72C0: $CC $8D $1C
    add l                                         ; $72C3: $85
    ld a, a                                       ; $72C4: $7F
    ldh [rP1], a                                  ; $72C5: $E0 $00
    stop                                          ; $72C7: $10 $00
    daa                                           ; $72C9: $27
    rst RST_20                                    ; $72CA: $E7
    ld c, e                                       ; $72CB: $4B
    ei                                            ; $72CC: $FB
    reti                                          ; $72CD: $D9


    dec hl                                        ; $72CE: $2B
    db $FD                                        ; $72CF: $FD
    sub c                                         ; $72D0: $91
    inc b                                         ; $72D1: $04

jr_033_72D2:
    or e                                          ; $72D2: $B3
    inc d                                         ; $72D3: $14
    db $FC                                        ; $72D4: $FC
    add h                                         ; $72D5: $84
    ld bc, $48EE                                  ; $72D6: $01 $EE $48
    ld c, $00                                     ; $72D9: $0E $00
    or [hl]                                       ; $72DB: $B6
    ld b, $25                                     ; $72DC: $06 $25
    nop                                           ; $72DE: $00
    ld l, l                                       ; $72DF: $6D
    inc hl                                        ; $72E0: $23
    ld l, a                                       ; $72E1: $6F
    nop                                           ; $72E2: $00
    ret z                                         ; $72E3: $C8

    add d                                         ; $72E4: $82
    jr c, jr_033_72A1                             ; $72E5: $38 $BA

    db $10                                        ; $72E7: $10
    inc bc                                        ; $72E8: $03
    call nc, Call_000_3DA5                        ; $72E9: $D4 $A5 $3D
    add a                                         ; $72EC: $87
    and h                                         ; $72ED: $A4
    adc e                                         ; $72EE: $8B
    ldh a, [rOCPD]                                ; $72EF: $F0 $6B
    inc bc                                        ; $72F1: $03
    ld a, [hl]                                    ; $72F2: $7E
    rlca                                          ; $72F3: $07
    nop                                           ; $72F4: $00
    add sp, $00                                   ; $72F5: $E8 $00
    scf                                           ; $72F7: $37
    inc bc                                        ; $72F8: $03
    inc bc                                        ; $72F9: $03
    ldh a, [$FF9B]                                ; $72FA: $F0 $9B
    nop                                           ; $72FC: $00
    ldh [$FFEF], a                                ; $72FD: $E0 $EF
    dec b                                         ; $72FF: $05
    db $10                                        ; $7300: $10
    di                                            ; $7301: $F3
    db $F4                                        ; $7302: $F4
    nop                                           ; $7303: $00
    db $DB                                        ; $7304: $DB
    dec l                                         ; $7305: $2D
    dec c                                         ; $7306: $0D
    db $E3                                        ; $7307: $E3
    jr z, jr_033_72D2                             ; $7308: $28 $C8

    ld e, $B0                                     ; $730A: $1E $B0
    inc e                                         ; $730C: $1C
    db $F4                                        ; $730D: $F4
    rlca                                          ; $730E: $07
    dec b                                         ; $730F: $05
    ld bc, $BF9D                                  ; $7310: $01 $9D $BF
    xor h                                         ; $7313: $AC
    rst RST_18                                    ; $7314: $DF
    rra                                           ; $7315: $1F
    sub b                                         ; $7316: $90
    ld [hl], b                                    ; $7317: $70
    rrca                                          ; $7318: $0F
    rst RST_30                                    ; $7319: $F7
    call z, $C33B                                 ; $731A: $CC $3B $C3
    dec e                                         ; $731D: $1D
    pop hl                                        ; $731E: $E1
    ld d, c                                       ; $731F: $51
    cp $00                                        ; $7320: $FE $00
    db $FD                                        ; $7322: $FD
    ld a, h                                       ; $7323: $7C
    ld a, [$F4F9]                                 ; $7324: $FA $F9 $F4
    and h                                         ; $7327: $A4
    ld a, d                                       ; $7328: $7A
    db $EC                                        ; $7329: $EC
    sub b                                         ; $732A: $90
    dec b                                         ; $732B: $05
    db $10                                        ; $732C: $10
    ret nz                                        ; $732D: $C0

    adc h                                         ; $732E: $8C
    nop                                           ; $732F: $00
    jr jr_033_7345                                ; $7330: $18 $13

    ld h, a                                       ; $7332: $67
    adc a                                         ; $7333: $8F
    ld [hl], b                                    ; $7334: $70
    ld h, b                                       ; $7335: $60
    ld hl, sp+$03                                 ; $7336: $F8 $03
    ld c, h                                       ; $7338: $4C
    call nz, Call_033_5CCE                        ; $7339: $C4 $CE $5C
    dec b                                         ; $733C: $05
    add e                                         ; $733D: $83
    ld a, h                                       ; $733E: $7C
    xor b                                         ; $733F: $A8
    ret nz                                        ; $7340: $C0

    inc b                                         ; $7341: $04
    add c                                         ; $7342: $81
    rst RST_38                                    ; $7343: $FF
    ld a, h                                       ; $7344: $7C

jr_033_7345:
    jr nz, jr_033_737B                            ; $7345: $20 $34

    nop                                           ; $7347: $00
    cp l                                          ; $7348: $BD
    rst RST_00                                    ; $7349: $C7
    rst RST_08                                    ; $734A: $CF
    ld l, b                                       ; $734B: $68
    db $ED                                        ; $734C: $ED
    db $FC                                        ; $734D: $FC
    ld b, b                                       ; $734E: $40
    ld hl, sp-$3F                                 ; $734F: $F8 $C1
    nop                                           ; $7351: $00
    call nz, $C4FB                                ; $7352: $C4 $FB $C4
    cp $28                                        ; $7355: $FE $28
    inc h                                         ; $7357: $24
    add hl, hl                                    ; $7358: $29
    ld [bc], a                                    ; $7359: $02
    ld c, b                                       ; $735A: $48
    add h                                         ; $735B: $84
    inc a                                         ; $735C: $3C
    ldh [rHDMA4], a                               ; $735D: $E0 $54
    inc [hl]                                      ; $735F: $34
    or h                                          ; $7360: $B4
    ld h, [hl]                                    ; $7361: $66
    inc e                                         ; $7362: $1C
    ld h, d                                       ; $7363: $62
    and b                                         ; $7364: $A0
    and d                                         ; $7365: $A2
    or e                                          ; $7366: $B3
    ld [hl], $88                                  ; $7367: $36 $88
    xor d                                         ; $7369: $AA
    dec a                                         ; $736A: $3D
    add l                                         ; $736B: $85
    rst RST_08                                    ; $736C: $CF
    ld c, b                                       ; $736D: $48
    cp b                                          ; $736E: $B8
    inc sp                                        ; $736F: $33
    ld c, e                                       ; $7370: $4B
    ld h, c                                       ; $7371: $61
    ret nc                                        ; $7372: $D0

    inc hl                                        ; $7373: $23
    and e                                         ; $7374: $A3
    jr jr_033_73A6                                ; $7375: $18 $2F

    call z, $ED00                                 ; $7377: $CC $00 $ED
    add a                                         ; $737A: $87

jr_033_737B:
    inc bc                                        ; $737B: $03
    ld bc, $0180                                  ; $737C: $01 $80 $01
    inc c                                         ; $737F: $0C
    add a                                         ; $7380: $87
    ld [$D8FC], sp                                ; $7381: $08 $FC $D8
    ld de, $0203                                  ; $7384: $11 $03 $02
    cp b                                          ; $7387: $B8
    nop                                           ; $7388: $00
    inc e                                         ; $7389: $1C
    sbc h                                         ; $738A: $9C
    rst RST_28                                    ; $738B: $EF
    add sp, -$60                                  ; $738C: $E8 $A0
    inc b                                         ; $738E: $04
    ld [hl], a                                    ; $738F: $77
    cpl                                           ; $7390: $2F
    inc bc                                        ; $7391: $03
    ld b, a                                       ; $7392: $47
    jr c, @+$26                                   ; $7393: $38 $24

    add e                                         ; $7395: $83
    ld de, $F3E0                                  ; $7396: $11 $E0 $F3
    adc b                                         ; $7399: $88
    dec b                                         ; $739A: $05
    ld sp, hl                                     ; $739B: $F9
    add h                                         ; $739C: $84

jr_033_739D:
    add sp, $05                                   ; $739D: $E8 $05
    cp a                                          ; $739F: $BF
    pop de                                        ; $73A0: $D1
    adc a                                         ; $73A1: $8F
    inc b                                         ; $73A2: $04
    or b                                          ; $73A3: $B0
    rlca                                          ; $73A4: $07
    or a                                          ; $73A5: $B7

jr_033_73A6:
    xor [hl]                                      ; $73A6: $AE
    sub b                                         ; $73A7: $90
    rst RST_10                                    ; $73A8: $D7
    inc b                                         ; $73A9: $04
    jp Jump_000_0304                              ; $73AA: $C3 $04 $03


    nop                                           ; $73AD: $00
    cp a                                          ; $73AE: $BF
    xor e                                         ; $73AF: $AB
    jr c, @+$61                                   ; $73B0: $38 $5F

    add b                                         ; $73B2: $80
    ld bc, $7105                                  ; $73B3: $01 $05 $71
    inc b                                         ; $73B6: $04
    and b                                         ; $73B7: $A0
    ld hl, sp-$58                                 ; $73B8: $F8 $A8
    or l                                          ; $73BA: $B5
    ld h, b                                       ; $73BB: $60
    nop                                           ; $73BC: $00
    db $10                                        ; $73BD: $10
    cp e                                          ; $73BE: $BB
    add hl, de                                    ; $73BF: $19
    push bc                                       ; $73C0: $C5
    ld d, l                                       ; $73C1: $55
    add a                                         ; $73C2: $87
    ld c, b                                       ; $73C3: $48
    rst RST_20                                    ; $73C4: $E7
    inc b                                         ; $73C5: $04
    sub b                                         ; $73C6: $90
    inc b                                         ; $73C7: $04
    sub a                                         ; $73C8: $97
    jr jr_033_7428                                ; $73C9: $18 $5D

    ldh [$FF0C], a                                ; $73CB: $E0 $0C
    sbc a                                         ; $73CD: $9F
    nop                                           ; $73CE: $00
    rrc b                                         ; $73CF: $CB $08
    ld b, b                                       ; $73D1: $40
    adc l                                         ; $73D2: $8D
    ld c, e                                       ; $73D3: $4B
    rra                                           ; $73D4: $1F
    and b                                         ; $73D5: $A0
    rst RST_18                                    ; $73D6: $DF
    ret nz                                        ; $73D7: $C0

    dec c                                         ; $73D8: $0D
    cp [hl]                                       ; $73D9: $BE
    jr nz, jr_033_739D                            ; $73DA: $20 $C1

    sub $3D                                       ; $73DC: $D6 $3D
    add h                                         ; $73DE: $84
    dec b                                         ; $73DF: $05
    adc l                                         ; $73E0: $8D
    add c                                         ; $73E1: $81
    cp h                                          ; $73E2: $BC
    and b                                         ; $73E3: $A0
    dec sp                                        ; $73E4: $3B
    rst RST_10                                    ; $73E5: $D7
    xor h                                         ; $73E6: $AC
    nop                                           ; $73E7: $00
    rst RST_30                                    ; $73E8: $F7
    nop                                           ; $73E9: $00
    rrca                                          ; $73EA: $0F
    nop                                           ; $73EB: $00
    dec a                                         ; $73EC: $3D
    inc bc                                        ; $73ED: $03
    and c                                         ; $73EE: $A1
    ld bc, $02FE                                  ; $73EF: $01 $FE $02
    db $FC                                        ; $73F2: $FC
    db $FD                                        ; $73F3: $FD
    ld hl, sp-$05                                 ; $73F4: $F8 $FB
    dec b                                         ; $73F6: $05
    or l                                          ; $73F7: $B5
    scf                                           ; $73F8: $37
    jr jr_033_73FB                                ; $73F9: $18 $00

jr_033_73FB:
    and b                                         ; $73FB: $A0
    db $E3                                        ; $73FC: $E3
    adc b                                         ; $73FD: $88
    or $80                                        ; $73FE: $F6 $80
    ld [hl], h                                    ; $7400: $74
    adc h                                         ; $7401: $8C
    cp c                                          ; $7402: $B9
    jp nz, Jump_033_7F02                          ; $7403: $C2 $02 $7F

    nop                                           ; $7406: $00
    ccf                                           ; $7407: $3F
    cp a                                          ; $7408: $BF
    daa                                           ; $7409: $27
    sbc a                                         ; $740A: $9F
    ld e, a                                       ; $740B: $5F
    dec b                                         ; $740C: $05
    rra                                           ; $740D: $1F
    rst RST_18                                    ; $740E: $DF
    ld d, h                                       ; $740F: $54
    add sp, -$7C                                  ; $7410: $E8 $84
    and b                                         ; $7412: $A0
    nop                                           ; $7413: $00
    push af                                       ; $7414: $F5
    nop                                           ; $7415: $00
    ldh [$FFE8], a                                ; $7416: $E0 $E8
    add b                                         ; $7418: $80
    adc a                                         ; $7419: $8F
    ret nz                                        ; $741A: $C0

    ld d, l                                       ; $741B: $55
    ret c                                         ; $741C: $D8

    inc b                                         ; $741D: $04
    ret z                                         ; $741E: $C8

    inc d                                         ; $741F: $14
    sbc l                                         ; $7420: $9D
    inc c                                         ; $7421: $0C
    db $DD                                        ; $7422: $DD
    add h                                         ; $7423: $84
    dec de                                        ; $7424: $1B
    jp $F734                                      ; $7425: $C3 $34 $F7


jr_033_7428:
    dec c                                         ; $7428: $0D
    and [hl]                                      ; $7429: $A6
    add a                                         ; $742A: $87
    ld c, $88                                     ; $742B: $0E $88
    cp e                                          ; $742D: $BB
    inc b                                         ; $742E: $04
    and $A4                                       ; $742F: $E6 $A4
    adc b                                         ; $7431: $88
    nop                                           ; $7432: $00
    di                                            ; $7433: $F3
    ld b, $2C                                     ; $7434: $06 $2C
    cp e                                          ; $7436: $BB
    inc b                                         ; $7437: $04
    rst RST_28                                    ; $7438: $EF

jr_033_7439:
    inc b                                         ; $7439: $04
    call nc, Call_033_7704                        ; $743A: $D4 $04 $77
    dec e                                         ; $743D: $1D
    xor h                                         ; $743E: $AC
    ccf                                           ; $743F: $3F
    db $ED                                        ; $7440: $ED
    ldh a, [rP1]                                  ; $7441: $F0 $00
    db $10                                        ; $7443: $10
    inc bc                                        ; $7444: $03
    inc bc                                        ; $7445: $03
    ld [bc], a                                    ; $7446: $02
    ld b, h                                       ; $7447: $44
    xor b                                         ; $7448: $A8
    db $FC                                        ; $7449: $FC
    ld [bc], a                                    ; $744A: $02
    sub b                                         ; $744B: $90
    sub $D8                                       ; $744C: $D6 $D8
    call c, $90C1                                 ; $744E: $DC $C1 $90
    ld b, a                                       ; $7451: $47
    and c                                         ; $7452: $A1
    db $F4                                        ; $7453: $F4
    or e                                          ; $7454: $B3
    ld [$3E52], sp                                ; $7455: $08 $52 $3E
    call z, $2404                                 ; $7458: $CC $04 $24
    sub a                                         ; $745B: $97
    dec b                                         ; $745C: $05
    cp h                                          ; $745D: $BC

jr_033_745E:
    rlca                                          ; $745E: $07
    or c                                          ; $745F: $B1
    inc d                                         ; $7460: $14
    pop hl                                        ; $7461: $E1
    rra                                           ; $7462: $1F
    ld h, l                                       ; $7463: $65
    rst RST_18                                    ; $7464: $DF
    dec b                                         ; $7465: $05
    add a                                         ; $7466: $87
    db $FC                                        ; $7467: $FC
    db $FD                                        ; $7468: $FD
    adc b                                         ; $7469: $88
    ei                                            ; $746A: $FB
    call $EE72                                    ; $746B: $CD $72 $EE
    db $FC                                        ; $746E: $FC
    ld d, b                                       ; $746F: $50
    nop                                           ; $7470: $00
    pop af                                        ; $7471: $F1
    push af                                       ; $7472: $F5
    inc h                                         ; $7473: $24
    ld a, [$3DE1]                                 ; $7474: $FA $E1 $3D
    cp b                                          ; $7477: $B8
    dec b                                         ; $7478: $05
    add e                                         ; $7479: $83
    ld a, b                                       ; $747A: $78
    ld a, h                                       ; $747B: $7C
    ld e, $70                                     ; $747C: $1E $70
    xor e                                         ; $747E: $AB
    adc h                                         ; $747F: $8C
    and a                                         ; $7480: $A7
    jr jr_033_745E                                ; $7481: $18 $DB

    inc h                                         ; $7483: $24
    inc a                                         ; $7484: $3C
    dec a                                         ; $7485: $3D
    jr nz, jr_033_7439                            ; $7486: $20 $B1

    call nz, Call_033_6C0F                        ; $7488: $C4 $0F $6C
    inc l                                         ; $748B: $2C
    rst RST_30                                    ; $748C: $F7
    inc bc                                        ; $748D: $03
    ld a, e                                       ; $748E: $7B
    inc b                                         ; $748F: $04

jr_033_7490:
    ld [de], a                                    ; $7490: $12
    cp e                                          ; $7491: $BB
    add c                                         ; $7492: $81
    cp l                                          ; $7493: $BD
    call nc, $BC7D                                ; $7494: $D4 $7D $BC
    nop                                           ; $7497: $00
    jp c, $00A2                                   ; $7498: $DA $A2 $00

    rst RST_20                                    ; $749B: $E7
    nop                                           ; $749C: $00
    cp c                                          ; $749D: $B9
    ld sp, hl                                     ; $749E: $F9
    cp [hl]                                       ; $749F: $BE
    nop                                           ; $74A0: $00
    sbc [hl]                                      ; $74A1: $9E
    add [hl]                                      ; $74A2: $86
    inc b                                         ; $74A3: $04
    call z, $C0DD                                 ; $74A4: $CC $DD $C0
    jp $A884                                      ; $74A7: $C3 $84 $A8


    add l                                         ; $74AA: $85
    inc b                                         ; $74AB: $04
    or l                                          ; $74AC: $B5
    adc l                                         ; $74AD: $8D
    xor l                                         ; $74AE: $AD
    adc a                                         ; $74AF: $8F
    xor a                                         ; $74B0: $AF
    inc e                                         ; $74B1: $1C
    ld [hl], b                                    ; $74B2: $70
    ld [$8CFF], sp                                ; $74B3: $08 $FF $8C
    sub h                                         ; $74B6: $94
    ld hl, sp-$13                                 ; $74B7: $F8 $ED
    sub h                                         ; $74B9: $94
    add h                                         ; $74BA: $84
    call nc, $E694                                ; $74BB: $D4 $94 $E6
    ld d, b                                       ; $74BE: $50
    ld e, h                                       ; $74BF: $5C
    dec b                                         ; $74C0: $05
    dec b                                         ; $74C1: $05
    add hl, sp                                    ; $74C2: $39
    inc b                                         ; $74C3: $04
    adc h                                         ; $74C4: $8C
    bit 0, h                                      ; $74C5: $CB $44
    ld sp, $F134                                  ; $74C7: $31 $34 $F1
    ret nc                                        ; $74CA: $D0

    rst RST_08                                    ; $74CB: $CF
    inc b                                         ; $74CC: $04
    push bc                                       ; $74CD: $C5
    add sp, -$58                                  ; $74CE: $E8 $A8
    cp h                                          ; $74D0: $BC
    ldh a, [rP1]                                  ; $74D1: $F0 $00
    ld a, [$FD6C]                                 ; $74D3: $FA $6C $FD
    db $FC                                        ; $74D6: $FC
    cp $FC                                        ; $74D7: $FE $FC
    nop                                           ; $74D9: $00
    ld a, b                                       ; $74DA: $78
    nop                                           ; $74DB: $00
    add l                                         ; $74DC: $85
    inc b                                         ; $74DD: $04
    inc h                                         ; $74DE: $24
    ld bc, $5F80                                  ; $74DF: $01 $80 $5F
    ld b, $10                                     ; $74E2: $06 $10
    jr @+$06                                      ; $74E4: $18 $04

    ld l, b                                       ; $74E6: $68
    inc b                                         ; $74E7: $04
    ld [hl], h                                    ; $74E8: $74
    ld sp, $008A                                  ; $74E9: $31 $8A $00
    rla                                           ; $74EC: $17
    ld h, c                                       ; $74ED: $61
    rst RST_28                                    ; $74EE: $EF
    jr c, jr_033_7490                             ; $74EF: $38 $9F

    inc b                                         ; $74F1: $04
    ccf                                           ; $74F2: $3F
    rst RST_10                                    ; $74F3: $D7
    inc b                                         ; $74F4: $04
    adc b                                         ; $74F5: $88
    add hl, de                                    ; $74F6: $19
    call z, Call_000_3C3D                         ; $74F7: $CC $3D $3C
    adc b                                         ; $74FA: $88
    dec a                                         ; $74FB: $3D
    cp $03                                        ; $74FC: $FE $03
    ld bc, $00A8                                  ; $74FE: $01 $A8 $00
    sub b                                         ; $7501: $90
    nop                                           ; $7502: $00
    call $5FE0                                    ; $7503: $CD $E0 $5F
    pop hl                                        ; $7506: $E1
    inc b                                         ; $7507: $04
    db $E3                                        ; $7508: $E3
    scf                                           ; $7509: $37
    sbc b                                         ; $750A: $98
    inc bc                                        ; $750B: $03
    ld bc, $FA80                                  ; $750C: $01 $80 $FA
    xor $3B                                       ; $750F: $EE $3B
    ld [bc], a                                    ; $7511: $02
    cp h                                          ; $7512: $BC
    nop                                           ; $7513: $00
    rra                                           ; $7514: $1F
    nop                                           ; $7515: $00
    rrca                                          ; $7516: $0F
    add d                                         ; $7517: $82
    ld bc, $078F                                  ; $7518: $01 $8F $07
    rst RST_00                                    ; $751B: $C7
    ret nz                                        ; $751C: $C0

    jp nc, $D304                                  ; $751D: $D2 $04 $D3

    push af                                       ; $7520: $F5
    inc b                                         ; $7521: $04
    inc d                                         ; $7522: $14
    ld l, b                                       ; $7523: $68
    dec e                                         ; $7524: $1D
    rst RST_08                                    ; $7525: $CF
    inc b                                         ; $7526: $04
    call z, $55B4                                 ; $7527: $CC $B4 $55
    rst RST_28                                    ; $752A: $EF
    ret z                                         ; $752B: $C8

    rst RST_30                                    ; $752C: $F7
    add h                                         ; $752D: $84
    inc e                                         ; $752E: $1C
    sub [hl]                                      ; $752F: $96
    rst RST_10                                    ; $7530: $D7
    ld b, $E5                                     ; $7531: $06 $E5
    xor [hl]                                      ; $7533: $AE
    adc $0C                                       ; $7534: $CE $0C
    inc bc                                        ; $7536: $03
    ld c, e                                       ; $7537: $4B
    inc b                                         ; $7538: $04
    rlc h                                         ; $7539: $CB $04
    ld [hl], l                                    ; $753B: $75
    db $E3                                        ; $753C: $E3
    ld a, h                                       ; $753D: $7C
    inc b                                         ; $753E: $04
    inc c                                         ; $753F: $0C
    di                                            ; $7540: $F3
    inc b                                         ; $7541: $04
    or e                                          ; $7542: $B3
    or h                                          ; $7543: $B4
    ld a, [hl]                                    ; $7544: $7E
    ld [hl], a                                    ; $7545: $77
    call nz, $8C84                                ; $7546: $C4 $84 $8C
    nop                                           ; $7549: $00
    sbc h                                         ; $754A: $9C
    nop                                           ; $754B: $00
    add b                                         ; $754C: $80
    rst RST_00                                    ; $754D: $C7
    ld bc, $83E4                                  ; $754E: $01 $E4 $83
    sbc a                                         ; $7551: $9F
    adc b                                         ; $7552: $88
    inc b                                         ; $7553: $04
    dec d                                         ; $7554: $15
    ld a, b                                       ; $7555: $78
    db $EB                                        ; $7556: $EB
    adc a                                         ; $7557: $8F
    inc bc                                        ; $7558: $03
    db $FC                                        ; $7559: $FC
    ld bc, $0464                                  ; $755A: $01 $64 $04
    add $01                                       ; $755D: $C6 $01
    pop af                                        ; $755F: $F1
    sub h                                         ; $7560: $94
    nop                                           ; $7561: $00
    inc h                                         ; $7562: $24
    inc bc                                        ; $7563: $03
    pop hl                                        ; $7564: $E1
    add c                                         ; $7565: $81
    pop af                                        ; $7566: $F1
    inc c                                         ; $7567: $0C
    ld a, [$1405]                                 ; $7568: $FA $05 $14
    ld b, d                                       ; $756B: $42
    inc bc                                        ; $756C: $03
    nop                                           ; $756D: $00
    cp $00                                        ; $756E: $FE $00
    ldh a, [$FFF5]                                ; $7570: $F0 $F5
    inc [hl]                                      ; $7572: $34
    ldh [$FF84], a                                ; $7573: $E0 $84
    ldh [$FFD7], a                                ; $7575: $E0 $D7
    inc b                                         ; $7577: $04
    rst RST_18                                    ; $7578: $DF
    scf                                           ; $7579: $37
    ld h, c                                       ; $757A: $61
    db $FC                                        ; $757B: $FC
    nop                                           ; $757C: $00
    sub l                                         ; $757D: $95
    rla                                           ; $757E: $17
    rst RST_20                                    ; $757F: $E7
    ld b, $F6                                     ; $7580: $06 $F6
    dec b                                         ; $7582: $05
    dec hl                                        ; $7583: $2B
    ld a, [bc]                                    ; $7584: $0A
    ldh a, [c]                                    ; $7585: $F2
    ccf                                           ; $7586: $3F
    ld a, a                                       ; $7587: $7F
    nop                                           ; $7588: $00
    cp a                                          ; $7589: $BF
    nop                                           ; $758A: $00
    ld h, b                                       ; $758B: $60
    xor b                                         ; $758C: $A8
    nop                                           ; $758D: $00
    ld e, a                                       ; $758E: $5F
    nop                                           ; $758F: $00
    cpl                                           ; $7590: $2F
    ld [bc], a                                    ; $7591: $02
    ret nc                                        ; $7592: $D0

    rst RST_08                                    ; $7593: $CF
    add sp, -$01                                  ; $7594: $E8 $FF
    ld h, h                                       ; $7596: $64
    xor b                                         ; $7597: $A8
    or b                                          ; $7598: $B0
    cp l                                          ; $7599: $BD
    ld d, l                                       ; $759A: $55
    stop                                          ; $759B: $10 $00
    dec h                                         ; $759D: $25
    jp nz, $A00D                                  ; $759E: $C2 $0D $A0

    ei                                            ; $75A1: $FB
    ld bc, $00FD                                  ; $75A2: $01 $FD $00
    inc [hl]                                      ; $75A5: $34
    jr nz, jr_033_75C6                            ; $75A6: $20 $1E

    rra                                           ; $75A8: $1F
    ret z                                         ; $75A9: $C8

    rst RST_00                                    ; $75AA: $C7
    inc d                                         ; $75AB: $14
    jr z, @+$06                                   ; $75AC: $28 $04

    ld c, h                                       ; $75AE: $4C
    inc c                                         ; $75AF: $0C
    call nc, $850C                                ; $75B0: $D4 $0C $85
    rst RST_28                                    ; $75B3: $EF
    nop                                           ; $75B4: $00
    rst RST_10                                    ; $75B5: $D7
    inc l                                         ; $75B6: $2C
    scf                                           ; $75B7: $37
    rlca                                          ; $75B8: $07
    rrca                                          ; $75B9: $0F
    dec bc                                        ; $75BA: $0B
    di                                            ; $75BB: $F3
    dec b                                         ; $75BC: $05
    ld sp, hl                                     ; $75BD: $F9
    jr nc, jr_033_7624                            ; $75BE: $30 $64

    ld l, h                                       ; $75C0: $6C
    ei                                            ; $75C1: $FB
    or $03                                        ; $75C2: $F6 $03
    inc bc                                        ; $75C4: $03
    inc bc                                        ; $75C5: $03

jr_033_75C6:
    nop                                           ; $75C6: $00
    rst RST_30                                    ; $75C7: $F7
    call nz, $F8C0                                ; $75C8: $C4 $C0 $F8

jr_033_75CB:
    ld l, d                                       ; $75CB: $6A
    add b                                         ; $75CC: $80
    nop                                           ; $75CD: $00
    and h                                         ; $75CE: $A4
    add hl, sp                                    ; $75CF: $39
    inc b                                         ; $75D0: $04
    ld a, a                                       ; $75D1: $7F
    inc b                                         ; $75D2: $04
    ld d, e                                       ; $75D3: $53
    ld l, a                                       ; $75D4: $6F
    xor h                                         ; $75D5: $AC
    inc e                                         ; $75D6: $1C
    dec a                                         ; $75D7: $3D
    add c                                         ; $75D8: $81
    inc e                                         ; $75D9: $1C
    adc h                                         ; $75DA: $8C
    dec b                                         ; $75DB: $05
    inc d                                         ; $75DC: $14
    ld d, e                                       ; $75DD: $53
    add hl, bc                                    ; $75DE: $09
    ld e, b                                       ; $75DF: $58
    add hl, de                                    ; $75E0: $19
    call z, $833D                                 ; $75E1: $CC $3D $83
    ld [hl+], a                                   ; $75E4: $22
    ld [bc], a                                    ; $75E5: $02
    ld a, c                                       ; $75E6: $79
    db $FC                                        ; $75E7: $FC
    call nc, Call_000_0507                        ; $75E8: $D4 $07 $05
    and b                                         ; $75EB: $A0
    pop af                                        ; $75EC: $F1
    adc [hl]                                      ; $75ED: $8E
    nop                                           ; $75EE: $00
    ld [$00A8], a                                 ; $75EF: $EA $A8 $00
    dec a                                         ; $75F2: $3D

jr_033_75F3:
    ld l, l                                       ; $75F3: $6D

jr_033_75F4:
    nop                                           ; $75F4: $00
    sub d                                         ; $75F5: $92
    xor b                                         ; $75F6: $A8
    ld d, $A3                                     ; $75F7: $16 $A3
    and h                                         ; $75F9: $A4
    ld e, a                                       ; $75FA: $5F
    call $1FC0                                    ; $75FB: $CD $C0 $1F
    rst RST_18                                    ; $75FE: $DF
    dec c                                         ; $75FF: $0D
    dec a                                         ; $7600: $3D
    inc bc                                        ; $7601: $03
    xor e                                         ; $7602: $AB
    and e                                         ; $7603: $A3
    ld e, e                                       ; $7604: $5B
    inc bc                                        ; $7605: $03
    rl e                                          ; $7606: $CB $13
    inc d                                         ; $7608: $14
    inc b                                         ; $7609: $04
    ld bc, $330B                                  ; $760A: $01 $0B $33
    sub a                                         ; $760D: $97
    and a                                         ; $760E: $A7
    rla                                           ; $760F: $17
    daa                                           ; $7610: $27
    and $00                                       ; $7611: $E6 $00
    ld e, h                                       ; $7613: $5C
    sbc l                                         ; $7614: $9D
    nop                                           ; $7615: $00
    cp $00                                        ; $7616: $FE $00
    sbc l                                         ; $7618: $9D
    jr @-$1D                                      ; $7619: $18 $E1

    pop de                                        ; $761B: $D1
    inc b                                         ; $761C: $04
    rst RST_08                                    ; $761D: $CF
    xor [hl]                                      ; $761E: $AE
    sbc a                                         ; $761F: $9F
    ret c                                         ; $7620: $D8

    cp a                                          ; $7621: $BF
    add h                                         ; $7622: $84
    rrca                                          ; $7623: $0F

jr_033_7624:
    or b                                          ; $7624: $B0
    ld [de], a                                    ; $7625: $12
    or [hl]                                       ; $7626: $B6
    and b                                         ; $7627: $A0
    xor a                                         ; $7628: $AF
    dec d                                         ; $7629: $15
    jr nc, jr_033_75F3                            ; $762A: $30 $C7

jr_033_762C:
    inc l                                         ; $762C: $2C
    db $E3                                        ; $762D: $E3
    dec b                                         ; $762E: $05
    jr c, jr_033_75F4                             ; $762F: $38 $C3

    db $FC                                        ; $7631: $FC
    ld bc, $0007                                  ; $7632: $01 $07 $00
    db $DB                                        ; $7635: $DB
    nop                                           ; $7636: $00
    ld h, l                                       ; $7637: $65
    ld d, a                                       ; $7638: $57
    nop                                           ; $7639: $00
    jr c, jr_033_75CB                             ; $763A: $38 $8F

    cpl                                           ; $763C: $2F
    ld [hl], h                                    ; $763D: $74
    ld e, a                                       ; $763E: $5F
    ld [hl], h                                    ; $763F: $74
    halt                                          ; $7640: $76
    ccf                                           ; $7641: $3F
    ld [hl], h                                    ; $7642: $74
    nop                                           ; $7643: $00
    ld [$48B3], sp                                ; $7644: $08 $B3 $48
    ld [hl], b                                    ; $7647: $70
    ldh a, [$FFA8]                                ; $7648: $F0 $A8
    jr nz, jr_033_762C                            ; $764A: $20 $E0

    ret nz                                        ; $764C: $C0

    add b                                         ; $764D: $80
    ret nz                                        ; $764E: $C0

    add c                                         ; $764F: $81
    pop af                                        ; $7650: $F1
    add [hl]                                      ; $7651: $86
    sbc a                                         ; $7652: $9F
    inc l                                         ; $7653: $2C
    add h                                         ; $7654: $84
    rst RST_38                                    ; $7655: $FF
    nop                                           ; $7656: $00
    add l                                         ; $7657: $85
    ldh [$FFB0], a                                ; $7658: $E0 $B0
    jr jr_033_7666                                ; $765A: $18 $0A

    jr jr_033_767C                                ; $765C: $18 $1E

    ld h, b                                       ; $765E: $60
    ld a, [hl]                                    ; $765F: $7E
    ld b, h                                       ; $7660: $44
    db $FD                                        ; $7661: $FD
    inc e                                         ; $7662: $1C
    di                                            ; $7663: $F3
    db $F4                                        ; $7664: $F4
    inc b                                         ; $7665: $04

jr_033_7666:
    dec a                                         ; $7666: $3D
    add b                                         ; $7667: $80
    ld [bc], a                                    ; $7668: $02
    ld hl, $1300                                  ; $7669: $21 $00 $13
    dec e                                         ; $766C: $1D
    dec de                                        ; $766D: $1B
    ld b, a                                       ; $766E: $47
    add hl, de                                    ; $766F: $19
    rst RST_00                                    ; $7670: $C7
    ld h, h                                       ; $7671: $64
    ld a, h                                       ; $7672: $7C
    add hl, bc                                    ; $7673: $09
    dec a                                         ; $7674: $3D
    ld bc, $A028                                  ; $7675: $01 $28 $A0
    sub d                                         ; $7678: $92
    ret nz                                        ; $7679: $C0

    adc d                                         ; $767A: $8A
    inc b                                         ; $767B: $04

jr_033_767C:
    adc b                                         ; $767C: $88
    db $E4                                        ; $767D: $E4
    sub e                                         ; $767E: $93
    dec a                                         ; $767F: $3D
    rst RST_20                                    ; $7680: $E7
    sub b                                         ; $7681: $90
    dec b                                         ; $7682: $05
    inc d                                         ; $7683: $14
    inc b                                         ; $7684: $04
    dec a                                         ; $7685: $3D
    ld c, a                                       ; $7686: $4F
    ld a, h                                       ; $7687: $7C
    jr z, jr_033_76AA                             ; $7688: $28 $20

    ld de, $0CA0                                  ; $768A: $11 $A0 $0C
    nop                                           ; $768D: $00
    inc sp                                        ; $768E: $33
    inc a                                         ; $768F: $3C
    jp $EC9C                                      ; $7690: $C3 $9C $EC


    inc bc                                        ; $7693: $03
    ld a, h                                       ; $7694: $7C
    inc b                                         ; $7695: $04
    dec a                                         ; $7696: $3D
    sub b                                         ; $7697: $90
    and a                                         ; $7698: $A7
    dec c                                         ; $7699: $0D
    ld a, $23                                     ; $769A: $3E $23
    dec b                                         ; $769C: $05
    inc e                                         ; $769D: $1C
    inc b                                         ; $769E: $04
    inc a                                         ; $769F: $3C
    inc b                                         ; $76A0: $04
    ld hl, sp+$07                                 ; $76A1: $F8 $07
    ld h, e                                       ; $76A3: $63
    pop af                                        ; $76A4: $F1
    jr jr_033_770B                                ; $76A5: $18 $64

    ret nz                                        ; $76A7: $C0

    and e                                         ; $76A8: $A3
    pop bc                                        ; $76A9: $C1

jr_033_76AA:
    inc a                                         ; $76AA: $3C
    ld h, b                                       ; $76AB: $60
    ld h, [hl]                                    ; $76AC: $66
    xor a                                         ; $76AD: $AF
    inc d                                         ; $76AE: $14
    ret nc                                        ; $76AF: $D0

    add a                                         ; $76B0: $87
    rst RST_08                                    ; $76B1: $CF
    rlca                                          ; $76B2: $07
    inc b                                         ; $76B3: $04
    rst RST_10                                    ; $76B4: $D7
    dec b                                         ; $76B5: $05
    inc e                                         ; $76B6: $1C
    add d                                         ; $76B7: $82
    ret                                           ; $76B8: $C9


    push hl                                       ; $76B9: $E5
    db $E3                                        ; $76BA: $E3
    ld h, h                                       ; $76BB: $64
    ld e, $00                                     ; $76BC: $1E $00
    xor l                                         ; $76BE: $AD
    sbc l                                         ; $76BF: $9D
    cp a                                          ; $76C0: $BF
    ld [bc], a                                    ; $76C1: $02
    or c                                          ; $76C2: $B1
    inc b                                         ; $76C3: $04
    add h                                         ; $76C4: $84
    pop hl                                        ; $76C5: $E1
    inc [hl]                                      ; $76C6: $34
    jp z, Jump_000_3894                           ; $76C7: $CA $94 $38

    ld sp, hl                                     ; $76CA: $F9
    ld bc, $F500                                  ; $76CB: $01 $00 $F5
    inc d                                         ; $76CE: $14
    ld [hl], l                                    ; $76CF: $75
    ld sp, $7971                                  ; $76D0: $31 $71 $79
    ld [bc], a                                    ; $76D3: $02
    or b                                          ; $76D4: $B0
    sub a                                         ; $76D5: $97
    or d                                          ; $76D6: $B2
    adc e                                         ; $76D7: $8B
    or b                                          ; $76D8: $B0
    nop                                           ; $76D9: $00
    add l                                         ; $76DA: $85
    add c                                         ; $76DB: $81
    sbc l                                         ; $76DC: $9D
    add b                                         ; $76DD: $80
    call z, $F0E0                                 ; $76DE: $CC $E0 $F0
    ld hl, sp-$03                                 ; $76E1: $F8 $FD
    sub c                                         ; $76E3: $91
    nop                                           ; $76E4: $00
    inc d                                         ; $76E5: $14
    sbc l                                         ; $76E6: $9D
    ld b, $01                                     ; $76E7: $06 $01
    ccf                                           ; $76E9: $3F
    nop                                           ; $76EA: $00
    dec e                                         ; $76EB: $1D
    nop                                           ; $76EC: $00
    ld b, b                                       ; $76ED: $40
    ld c, $D6                                     ; $76EE: $0E $D6
    xor b                                         ; $76F0: $A8
    nop                                           ; $76F1: $00
    ld d, l                                       ; $76F2: $55
    and h                                         ; $76F3: $A4
    ld c, b                                       ; $76F4: $48
    ld d, a                                       ; $76F5: $57
    inc b                                         ; $76F6: $04
    rst RST_00                                    ; $76F7: $C7
    pop bc                                        ; $76F8: $C1
    push bc                                       ; $76F9: $C5

jr_033_76FA:
    dec e                                         ; $76FA: $1D
    dec a                                         ; $76FB: $3D
    rrca                                          ; $76FC: $0F
    ld [hl], l                                    ; $76FD: $75
    ld a, a                                       ; $76FE: $7F
    ld h, d                                       ; $76FF: $62
    inc bc                                        ; $7700: $03
    ld [bc], a                                    ; $7701: $02
    db $FC                                        ; $7702: $FC
    nop                                           ; $7703: $00

Call_033_7704:
    ei                                            ; $7704: $FB
    nop                                           ; $7705: $00
    ld e, l                                       ; $7706: $5D
    rst RST_30                                    ; $7707: $F7
    nop                                           ; $7708: $00
    rst RST_20                                    ; $7709: $E7

jr_033_770A:
    nop                                           ; $770A: $00

jr_033_770B:
    cpl                                           ; $770B: $2F
    ld bc, $00FE                                  ; $770C: $01 $FE $00
    ld d, c                                       ; $770F: $51
    jr jr_033_7712                                ; $7710: $18 $00

jr_033_7712:
    ld h, c                                       ; $7712: $61
    add sp, $63                                   ; $7713: $E8 $63
    ldh a, [$FF67]                                ; $7715: $F0 $67
    inc b                                         ; $7717: $04
    ldh a, [$FF37]                                ; $7718: $F0 $37
    ld bc, $01B5                                  ; $771A: $01 $B5 $01
    db $DD                                        ; $771D: $DD
    inc bc                                        ; $771E: $03
    db $DB                                        ; $771F: $DB
    dec b                                         ; $7720: $05
    jr nc, jr_033_76FA                            ; $7721: $30 $D7

    add hl, bc                                    ; $7723: $09
    db $E4                                        ; $7724: $E4
    nop                                           ; $7725: $00
    add d                                         ; $7726: $82
    add e                                         ; $7727: $83
    add b                                         ; $7728: $80
    add c                                         ; $7729: $81
    db $DD                                        ; $772A: $DD
    inc b                                         ; $772B: $04
    nop                                           ; $772C: $00
    ret nz                                        ; $772D: $C0

    nop                                           ; $772E: $00
    ld a, b                                       ; $772F: $78
    nop                                           ; $7730: $00
    ld hl, sp+$00                                 ; $7731: $F8 $00
    cp $65                                        ; $7733: $FE $65
    add l                                         ; $7735: $85
    ld b, b                                       ; $7736: $40
    inc e                                         ; $7737: $1C
    ld h, b                                       ; $7738: $60
    inc l                                         ; $7739: $2C
    inc b                                         ; $773A: $04
    nop                                           ; $773B: $00
    push af                                       ; $773C: $F5
    ld a, b                                       ; $773D: $78
    rlca                                          ; $773E: $07
    inc b                                         ; $773F: $04
    ld bc, $109F                                  ; $7740: $01 $9F $10
    cp a                                          ; $7743: $BF
    inc b                                         ; $7744: $04
    ld bc, $0DB3                                  ; $7745: $01 $B3 $0D
    or c                                          ; $7748: $B1
    rrca                                          ; $7749: $0F
    cp c                                          ; $774A: $B9
    rlca                                          ; $774B: $07
    cp l                                          ; $774C: $BD
    ld d, b                                       ; $774D: $50
    cp $25                                        ; $774E: $FE $25
    ld bc, $03F7                                  ; $7750: $01 $F7 $03

Call_033_7753:
    inc bc                                        ; $7753: $03
    inc bc                                        ; $7754: $03
    push hl                                       ; $7755: $E5
    ret z                                         ; $7756: $C8

    xor d                                         ; $7757: $AA
    or h                                          ; $7758: $B4
    call nz, $D504                                ; $7759: $C4 $04 $D5
    inc b                                         ; $775C: $04
    db $ED                                        ; $775D: $ED
    call nc, $BAF3                                ; $775E: $D4 $F3 $BA
    db $E4                                        ; $7761: $E4
    ld sp, hl                                     ; $7762: $F9
    cp $8A                                        ; $7763: $FE $8A
    ld [bc], a                                    ; $7765: $02
    add c                                         ; $7766: $81
    dec b                                         ; $7767: $05
    ld sp, $08BD                                  ; $7768: $31 $BD $08
    ld a, a                                       ; $776B: $7F
    dec b                                         ; $776C: $05
    add a                                         ; $776D: $87
    inc bc                                        ; $776E: $03
    ld bc, $00FC                                  ; $776F: $01 $FC $00
    and [hl]                                      ; $7772: $A6
    ld [hl], b                                    ; $7773: $70
    ld a, [$F480]                                 ; $7774: $FA $80 $F4
    add sp, $00                                   ; $7777: $E8 $00
    dec h                                         ; $7779: $25
    pop hl                                        ; $777A: $E1
    adc l                                         ; $777B: $8D
    and h                                         ; $777C: $A4
    jp nz, $82C1                                  ; $777D: $C2 $C1 $82

    ld a, b                                       ; $7780: $78
    ld l, b                                       ; $7781: $68
    nop                                           ; $7782: $00
    ldh [$FF35], a                                ; $7783: $E0 $35
    jr nz, jr_033_770A                            ; $7785: $20 $83

    inc c                                         ; $7787: $0C
    inc b                                         ; $7788: $04
    db $10                                        ; $7789: $10
    dec a                                         ; $778A: $3D
    ld hl, $0B34                                  ; $778B: $21 $34 $0B
    sbc a                                         ; $778E: $9F
    ld h, c                                       ; $778F: $61
    ld d, c                                       ; $7790: $51
    and c                                         ; $7791: $A1
    nop                                           ; $7792: $00
    ld b, c                                       ; $7793: $41
    nop                                           ; $7794: $00
    cp b                                          ; $7795: $B8
    ldh [$FFF1], a                                ; $7796: $E0 $F1
    ld l, h                                       ; $7798: $6C
    inc b                                         ; $7799: $04
    ret nz                                        ; $779A: $C0

    add $86                                       ; $779B: $C6 $86
    adc a                                         ; $779D: $8F

jr_033_779E:
    add a                                         ; $779E: $87
    ld a, [$7804]                                 ; $779F: $FA $04 $78
    ld h, b                                       ; $77A2: $60
    xor h                                         ; $77A3: $AC
    ld a, b                                       ; $77A4: $78
    cp h                                          ; $77A5: $BC
    inc b                                         ; $77A6: $04
    rst RST_08                                    ; $77A7: $CF
    xor e                                         ; $77A8: $AB
    jr nc, jr_033_779E                            ; $77A9: $30 $F3

    jr jr_033_780D                                ; $77AB: $18 $60

    adc h                                         ; $77AD: $8C
    rra                                           ; $77AE: $1F
    and l                                         ; $77AF: $A5
    inc e                                         ; $77B0: $1C
    ld a, $90                                     ; $77B1: $3E $90
    ret c                                         ; $77B3: $D8

    db $10                                        ; $77B4: $10
    ld [bc], a                                    ; $77B5: $02
    ld a, h                                       ; $77B6: $7C
    add hl, bc                                    ; $77B7: $09
    inc h                                         ; $77B8: $24
    ld de, $8EE8                                  ; $77B9: $11 $E8 $8E
    ld b, h                                       ; $77BC: $44
    inc b                                         ; $77BD: $04
    add hl, hl                                    ; $77BE: $29
    jr jr_033_77E6                                ; $77BF: $18 $25

    add hl, de                                    ; $77C1: $19
    ld d, e                                       ; $77C2: $53
    add hl, de                                    ; $77C3: $19
    dec l                                         ; $77C4: $2D
    swap l                                        ; $77C5: $CB $35
    dec d                                         ; $77C7: $15
    add b                                         ; $77C8: $80
    db $F4                                        ; $77C9: $F4
    rst RST_30                                    ; $77CA: $F7
    ld [$F507], sp                                ; $77CB: $08 $07 $F5
    ldh a, [c]                                    ; $77CE: $F2
    ei                                            ; $77CF: $FB
    ld hl, sp-$04                                 ; $77D0: $F8 $FC
    nop                                           ; $77D2: $00
    ld [hl], h                                    ; $77D3: $74
    inc bc                                        ; $77D4: $03
    sub $00                                       ; $77D5: $D6 $00
    add b                                         ; $77D7: $80
    jr nc, jr_033_77DA                            ; $77D8: $30 $00

jr_033_77DA:
    inc c                                         ; $77DA: $0C
    nop                                           ; $77DB: $00
    db $F4                                        ; $77DC: $F4
    ld [hl], e                                    ; $77DD: $73
    db $E3                                        ; $77DE: $E3
    or a                                          ; $77DF: $B7
    inc bc                                        ; $77E0: $03
    nop                                           ; $77E1: $00
    dec d                                         ; $77E2: $15
    add hl, bc                                    ; $77E3: $09
    rrca                                          ; $77E4: $0F
    or h                                          ; $77E5: $B4

jr_033_77E6:
    ld [bc], a                                    ; $77E6: $02
    ld d, c                                       ; $77E7: $51
    pop bc                                        ; $77E8: $C1
    nop                                           ; $77E9: $00
    ld sp, $0D00                                  ; $77EA: $31 $00 $0D
    call Call_033_47C3                            ; $77ED: $CD $C3 $47
    rst RST_18                                    ; $77F0: $DF
    inc bc                                        ; $77F1: $03
    ld bc, $13BF                                  ; $77F2: $01 $BF $13
    inc bc                                        ; $77F5: $03
    cpl                                           ; $77F6: $2F
    inc de                                        ; $77F7: $13
    nop                                           ; $77F8: $00
    ld l, l                                       ; $77F9: $6D
    ei                                            ; $77FA: $FB
    inc de                                        ; $77FB: $13
    ld [bc], a                                    ; $77FC: $02
    rst RST_30                                    ; $77FD: $F7
    inc de                                        ; $77FE: $13
    ld [bc], a                                    ; $77FF: $02
    rst RST_18                                    ; $7800: $DF
    inc b                                         ; $7801: $04
    ld l, d                                       ; $7802: $6A
    db $FD                                        ; $7803: $FD
    dec de                                        ; $7804: $1B
    inc bc                                        ; $7805: $03
    db $ED                                        ; $7806: $ED
    inc b                                         ; $7807: $04
    ld l, e                                       ; $7808: $6B
    inc b                                         ; $7809: $04
    xor e                                         ; $780A: $AB
    ld d, b                                       ; $780B: $50
    ld d, l                                       ; $780C: $55

jr_033_780D:
    inc b                                         ; $780D: $04
    add e                                         ; $780E: $83
    ld a, [hl+]                                   ; $780F: $2A
    ld h, c                                       ; $7810: $61
    nop                                           ; $7811: $00
    ld [bc], a                                    ; $7812: $02
    nop                                           ; $7813: $00
    ld hl, sp+$60                                 ; $7814: $F8 $60
    ldh a, [rLCDC]                                ; $7816: $F0 $40
    ldh [$FF50], a                                ; $7818: $E0 $50
    ret nz                                        ; $781A: $C0

    cp b                                          ; $781B: $B8
    db $10                                        ; $781C: $10
    add b                                         ; $781D: $80
    db $10                                        ; $781E: $10
    rrca                                          ; $781F: $0F
    dec b                                         ; $7820: $05
    db $FC                                        ; $7821: $FC
    ld [hl], b                                    ; $7822: $70
    ld hl, sp+$0A                                 ; $7823: $F8 $0A
    ld h, b                                       ; $7825: $60
    ldh a, [rLCDC]                                ; $7826: $F0 $40
    ldh [rSVBK], a                                ; $7828: $E0 $70
    ret nz                                        ; $782A: $C0

    db $10                                        ; $782B: $10
    add b                                         ; $782C: $80
    jp nc, Jump_000_0FF4                          ; $782D: $D2 $F4 $0F

    db $FC                                        ; $7830: $FC
    db $10                                        ; $7831: $10
    cp $38                                        ; $7832: $FE $38
    jr nc, jr_033_7866                            ; $7834: $30 $30

    dec d                                         ; $7836: $15
    ld hl, sp+$20                                 ; $7837: $F8 $20
    ldh a, [rSVBK]                                ; $7839: $F0 $70
    ldh [rNR10], a                                ; $783B: $E0 $10
    ld b, b                                       ; $783D: $40
    ldh a, [c]                                    ; $783E: $F2
    xor c                                         ; $783F: $A9
    rrca                                          ; $7840: $0F
    db $FC                                        ; $7841: $FC
    db $10                                        ; $7842: $10
    cp $10                                        ; $7843: $FE $10
    rst RST_38                                    ; $7845: $FF
    inc e                                         ; $7846: $1C
    jr nc, jr_033_7893                            ; $7847: $30 $4A

    jr jr_033_78BB                                ; $7849: $18 $70

    db $10                                        ; $784B: $10
    ld hl, sp+$70                                 ; $784C: $F8 $70
    ld [hl], b                                    ; $784E: $70
    db $10                                        ; $784F: $10
    jr nz, @+$01                                  ; $7850: $20 $FF

    db $10                                        ; $7852: $10
    rrca                                          ; $7853: $0F
    rrca                                          ; $7854: $0F
    rrca                                          ; $7855: $0F
    rrca                                          ; $7856: $0F
    rrca                                          ; $7857: $0F
    rrca                                          ; $7858: $0F
    rrca                                          ; $7859: $0F
    or l                                          ; $785A: $B5
    ld [$000E], sp                                ; $785B: $08 $0E $00
    ld sp, $001F                                  ; $785E: $31 $1F $00
    ld bc, $5D02                                  ; $7861: $01 $02 $5D
    ld [bc], a                                    ; $7864: $02
    nop                                           ; $7865: $00

jr_033_7866:
    inc c                                         ; $7866: $0C
    nop                                           ; $7867: $00
    or c                                          ; $7868: $B1
    rrca                                          ; $7869: $0F
    inc b                                         ; $786A: $04
    nop                                           ; $786B: $00
    ld d, l                                       ; $786C: $55
    add hl, bc                                    ; $786D: $09
    nop                                           ; $786E: $00
    jr jr_033_7871                                ; $786F: $18 $00

jr_033_7871:
    ld l, b                                       ; $7871: $68
    nop                                           ; $7872: $00
    ld [$F500], sp                                ; $7873: $08 $00 $F5
    ld [hl], c                                    ; $7876: $71
    ld bc, $0FF1                                  ; $7877: $01 $F1 $0F
    daa                                           ; $787A: $27
    nop                                           ; $787B: $00
    ldh a, [rP1]                                  ; $787C: $F0 $00
    ld d, a                                       ; $787E: $57
    jr nz, jr_033_7881                            ; $787F: $20 $00

jr_033_7881:
    ld h, b                                       ; $7881: $60
    nop                                           ; $7882: $00
    and b                                         ; $7883: $A0
    nop                                           ; $7884: $00
    ld d, c                                       ; $7885: $51
    or c                                          ; $7886: $B1
    push de                                       ; $7887: $D5
    pop af                                        ; $7888: $F1
    rrca                                          ; $7889: $0F
    ret c                                         ; $788A: $D8

    nop                                           ; $788B: $00
    ld b, l                                       ; $788C: $45
    nop                                           ; $788D: $00
    ld b, c                                       ; $788E: $41
    inc b                                         ; $788F: $04
    ld e, l                                       ; $7890: $5D
    ld b, d                                       ; $7891: $42
    nop                                           ; $7892: $00

jr_033_7893:
    call c, $F100                                 ; $7893: $DC $00 $F1
    dec bc                                        ; $7896: $0B
    ld a, [bc]                                    ; $7897: $0A
    nop                                           ; $7898: $00
    xor l                                         ; $7899: $AD
    ld sp, $0010                                  ; $789A: $31 $10 $00
    ld a, h                                       ; $789D: $7C
    nop                                           ; $789E: $00
    ld sp, $0055                                  ; $789F: $31 $55 $00
    ld [hl], l                                    ; $78A2: $75
    ld d, h                                       ; $78A3: $54
    inc b                                         ; $78A4: $04
    pop af                                        ; $78A5: $F1
    rrca                                          ; $78A6: $0F
    stop                                          ; $78A7: $10 $00
    jr nz, jr_033_78AB                            ; $78A9: $20 $00

jr_033_78AB:
    ld e, a                                       ; $78AB: $5F
    ld h, b                                       ; $78AC: $60
    nop                                           ; $78AD: $00
    and b                                         ; $78AE: $A0
    nop                                           ; $78AF: $00
    ld d, c                                       ; $78B0: $51
    inc bc                                        ; $78B1: $03
    pop af                                        ; $78B2: $F1
    dec bc                                        ; $78B3: $0B
    ld l, d                                       ; $78B4: $6A
    ld [bc], a                                    ; $78B5: $02
    nop                                           ; $78B6: $00
    ld sp, $0008                                  ; $78B7: $31 $08 $00
    rra                                           ; $78BA: $1F

jr_033_78BB:
    nop                                           ; $78BB: $00
    add hl, bc                                    ; $78BC: $09
    cp e                                          ; $78BD: $BB
    ld b, $13                                     ; $78BE: $06 $13
    nop                                           ; $78C0: $00
    pop af                                        ; $78C1: $F1
    dec bc                                        ; $78C2: $0B
    add b                                         ; $78C3: $80
    nop                                           ; $78C4: $00
    ld sp, $1055                                  ; $78C5: $31 $55 $10
    nop                                           ; $78C8: $00
    ld d, b                                       ; $78C9: $50
    ld b, $54                                     ; $78CA: $06 $54
    nop                                           ; $78CC: $00
    ld e, c                                       ; $78CD: $59
    nop                                           ; $78CE: $00
    jp c, Jump_000_0BF1                           ; $78CF: $DA $F1 $0B

    jr z, jr_033_78D4                             ; $78D2: $28 $00

jr_033_78D4:
    ld sp, $0022                                  ; $78D4: $31 $22 $00
    and d                                         ; $78D7: $A2
    cp d                                          ; $78D8: $BA
    nop                                           ; $78D9: $00
    and e                                         ; $78DA: $A3
    nop                                           ; $78DB: $00
    ld sp, $9201                                  ; $78DC: $31 $01 $92
    nop                                           ; $78DF: $00
    ld [de], a                                    ; $78E0: $12
    ld [$F100], a                                 ; $78E1: $EA $00 $F1
    rrca                                          ; $78E4: $0F
    rra                                           ; $78E5: $1F
    nop                                           ; $78E6: $00
    ld de, $9102                                  ; $78E7: $11 $02 $91
    cp [hl]                                       ; $78EA: $BE
    nop                                           ; $78EB: $00
    ld d, c                                       ; $78EC: $51
    nop                                           ; $78ED: $00
    ld d, c                                       ; $78EE: $51
    or c                                          ; $78EF: $B1
    pop af                                        ; $78F0: $F1
    rrca                                          ; $78F1: $0F
    ld h, b                                       ; $78F2: $60
    xor d                                         ; $78F3: $AA
    nop                                           ; $78F4: $00
    inc d                                         ; $78F5: $14
    nop                                           ; $78F6: $00
    inc b                                         ; $78F7: $04
    inc b                                         ; $78F8: $04
    ld [$7000], sp                                ; $78F9: $08 $00 $70
    ld [$F100], a                                 ; $78FC: $EA $00 $F1
    rrca                                          ; $78FF: $0F
    rra                                           ; $7900: $1F
    nop                                           ; $7901: $00
    ld bc, $0202                                  ; $7902: $01 $02 $02
    xor e                                         ; $7905: $AB
    nop                                           ; $7906: $00
    inc b                                         ; $7907: $04
    nop                                           ; $7908: $00
    ld a, [bc]                                    ; $7909: $0A
    nop                                           ; $790A: $00
    ld de, $F100                                  ; $790B: $11 $00 $F1
    xor d                                         ; $790E: $AA
    rrca                                          ; $790F: $0F
    inc a                                         ; $7910: $3C
    nop                                           ; $7911: $00
    inc h                                         ; $7912: $24
    ld [bc], a                                    ; $7913: $02
    ld b, l                                       ; $7914: $45
    nop                                           ; $7915: $00
    inc b                                         ; $7916: $04
    xor a                                         ; $7917: $AF
    nop                                           ; $7918: $00
    ld [$7000], sp                                ; $7919: $08 $00 $70
    nop                                           ; $791C: $00
    pop af                                        ; $791D: $F1
    rrca                                          ; $791E: $0F
    ld bc, $025B                                  ; $791F: $01 $5B $02
    ld [bc], a                                    ; $7922: $02
    ldh a, [c]                                    ; $7923: $F2
    nop                                           ; $7924: $00
    ld d, e                                       ; $7925: $53
    inc b                                         ; $7926: $04
    nop                                           ; $7927: $00
    di                                            ; $7928: $F3
    or l                                          ; $7929: $B5
    add hl, bc                                    ; $792A: $09
    and b                                         ; $792B: $A0
    nop                                           ; $792C: $00
    ld sp, $0880                                  ; $792D: $31 $80 $08
    ld b, b                                       ; $7930: $40
    ld [bc], a                                    ; $7931: $02
    push de                                       ; $7932: $D5
    pop af                                        ; $7933: $F1
    rrca                                          ; $7934: $0F
    ld bc, $0902                                  ; $7935: $01 $02 $09
    nop                                           ; $7938: $00
    dec b                                         ; $7939: $05
    nop                                           ; $793A: $00
    ld l, [hl]                                    ; $793B: $6E
    ld [bc], a                                    ; $793C: $02
    nop                                           ; $793D: $00
    ld sp, $0018                                  ; $793E: $31 $18 $00
    pop af                                        ; $7941: $F1
    dec bc                                        ; $7942: $0B
    ld a, [bc]                                    ; $7943: $0A
    push de                                       ; $7944: $D5
    nop                                           ; $7945: $00
    ld sp, $0021                                  ; $7946: $31 $21 $00
    ld a, h                                       ; $7949: $7C
    nop                                           ; $794A: $00
    inc h                                         ; $794B: $24
    ld b, $75                                     ; $794C: $06 $75
    ld c, l                                       ; $794E: $4D
    nop                                           ; $794F: $00
    pop af                                        ; $7950: $F1
    rrca                                          ; $7951: $0F
    ldh a, [c]                                    ; $7952: $F2
    nop                                           ; $7953: $00
    ld [de], a                                    ; $7954: $12
    nop                                           ; $7955: $00
    ld d, l                                       ; $7956: $55
    inc de                                        ; $7957: $13
    nop                                           ; $7958: $00
    ld [hl+], a                                   ; $7959: $22
    nop                                           ; $795A: $00
    ld b, d                                       ; $795B: $42
    nop                                           ; $795C: $00
    and d                                         ; $795D: $A2
    nop                                           ; $795E: $00
    push af                                       ; $795F: $F5
    sub c                                         ; $7960: $91
    pop af                                        ; $7961: $F1
    rrca                                          ; $7962: $0F
    dec b                                         ; $7963: $05
    sbc a                                         ; $7964: $9F
    nop                                           ; $7965: $00
    ld b, b                                       ; $7966: $40
    nop                                           ; $7967: $00
    push de                                       ; $7968: $D5
    ei                                            ; $7969: $FB
    add hl, bc                                    ; $796A: $09
    db $10                                        ; $796B: $10
    ld [bc], a                                    ; $796C: $02
    jr nz, jr_033_7971                            ; $796D: $20 $02

    ld b, h                                       ; $796F: $44
    ld [bc], a                                    ; $7970: $02

jr_033_7971:
    ld [hl], l                                    ; $7971: $75
    ld a, h                                       ; $7972: $7C
    nop                                           ; $7973: $00
    pop af                                        ; $7974: $F1
    rrca                                          ; $7975: $0F
    inc bc                                        ; $7976: $03
    nop                                           ; $7977: $00
    ld c, $00                                     ; $7978: $0E $00
    ld e, l                                       ; $797A: $5D
    ld [bc], a                                    ; $797B: $02
    nop                                           ; $797C: $00
    rra                                           ; $797D: $1F
    nop                                           ; $797E: $00
    ld sp, $0C01                                  ; $797F: $31 $01 $0C
    nop                                           ; $7982: $00
    db $ED                                        ; $7983: $ED
    pop af                                        ; $7984: $F1
    rrca                                          ; $7985: $0F
    dec b                                         ; $7986: $05
    ld a, l                                       ; $7987: $7D
    nop                                           ; $7988: $00
    ld d, e                                       ; $7989: $53
    ld bc, $D500                                  ; $798A: $01 $00 $D5
    rst RST_30                                    ; $798D: $F7
    add hl, bc                                    ; $798E: $09
    rst RST_30                                    ; $798F: $F7
    nop                                           ; $7990: $00
    sub b                                         ; $7991: $90
    nop                                           ; $7992: $00
    ret nc                                        ; $7993: $D0

    nop                                           ; $7994: $00
    ld d, l                                       ; $7995: $55
    jr nc, jr_033_7998                            ; $7996: $30 $00

jr_033_7998:
    ld de, $2200                                  ; $7998: $11 $00 $22
    nop                                           ; $799B: $00
    call nz, $D500                                ; $799C: $C4 $00 $D5
    pop af                                        ; $799F: $F1
    rrca                                          ; $79A0: $0F
    ret nz                                        ; $79A1: $C0

    nop                                           ; $79A2: $00
    ld b, b                                       ; $79A3: $40
    ld [bc], a                                    ; $79A4: $02
    add b                                         ; $79A5: $80
    nop                                           ; $79A6: $00
    ei                                            ; $79A7: $FB
    sub c                                         ; $79A8: $91
    ld sp, $5171                                  ; $79A9: $31 $71 $51
    dec bc                                        ; $79AC: $0B
    ld [bc], a                                    ; $79AD: $02
    nop                                           ; $79AE: $00
    ld sp, $0855                                  ; $79AF: $31 $55 $08
    nop                                           ; $79B2: $00
    rra                                           ; $79B3: $1F
    nop                                           ; $79B4: $00
    add hl, bc                                    ; $79B5: $09
    ld b, $13                                     ; $79B6: $06 $13
    nop                                           ; $79B8: $00
    jp c, Jump_000_0BF1                           ; $79B9: $DA $F1 $0B

    add b                                         ; $79BC: $80
    nop                                           ; $79BD: $00
    ld sp, $0004                                  ; $79BE: $31 $04 $00
    add hl, bc                                    ; $79C1: $09
    xor a                                         ; $79C2: $AF
    nop                                           ; $79C3: $00
    add hl, de                                    ; $79C4: $19
    nop                                           ; $79C5: $00
    ld l, c                                       ; $79C6: $69
    nop                                           ; $79C7: $00
    ld d, c                                       ; $79C8: $51
    inc bc                                        ; $79C9: $03
    pop af                                        ; $79CA: $F1
    xor l                                         ; $79CB: $AD
    rrca                                          ; $79CC: $0F
    ld b, e                                       ; $79CD: $43
    nop                                           ; $79CE: $00
    ld b, d                                       ; $79CF: $42
    nop                                           ; $79D0: $00
    ld sp, $0044                                  ; $79D1: $31 $44 $00
    ld d, a                                       ; $79D4: $57
    ld b, b                                       ; $79D5: $40
    nop                                           ; $79D6: $00
    ld d, b                                       ; $79D7: $50
    nop                                           ; $79D8: $00
    ld h, a                                       ; $79D9: $67
    nop                                           ; $79DA: $00
    pop af                                        ; $79DB: $F1
    dec bc                                        ; $79DC: $0B
    ld l, d                                       ; $79DD: $6A
    and b                                         ; $79DE: $A0
    nop                                           ; $79DF: $00
    ld sp, $00C0                                  ; $79E0: $31 $C0 $00
    ld b, b                                       ; $79E3: $40
    ld [bc], a                                    ; $79E4: $02
    rst RST_18                                    ; $79E5: $DF
    sbc $00                                       ; $79E6: $DE $00
    ld sp, $0080                                  ; $79E8: $31 $80 $00
    pop de                                        ; $79EB: $D1
    rrca                                          ; $79EC: $0F
    ld bc, $AB20                                  ; $79ED: $01 $20 $AB
    ld [bc], a                                    ; $79F0: $02
    jr nc, jr_033_79F3                            ; $79F1: $30 $00

jr_033_79F3:
    jr z, jr_033_79F5                             ; $79F3: $28 $00

jr_033_79F5:
    inc h                                         ; $79F5: $24
    nop                                           ; $79F6: $00
    sub e                                         ; $79F7: $93
    db $EB                                        ; $79F8: $EB
    pop af                                        ; $79F9: $F1
    rrca                                          ; $79FA: $0F
    ld bc, $001F                                  ; $79FB: $01 $1F $00
    ld bc, $9106                                  ; $79FE: $01 $06 $91
    push de                                       ; $7A01: $D5
    di                                            ; $7A02: $F3
    rrca                                          ; $7A03: $0F
    ld h, c                                       ; $7A04: $61
    nop                                           ; $7A05: $00
    inc d                                         ; $7A06: $14
    nop                                           ; $7A07: $00
    dec b                                         ; $7A08: $05
    ld [bc], a                                    ; $7A09: $02
    ld e, l                                       ; $7A0A: $5D
    add hl, bc                                    ; $7A0B: $09
    nop                                           ; $7A0C: $00
    ld [hl], c                                    ; $7A0D: $71
    nop                                           ; $7A0E: $00
    di                                            ; $7A0F: $F3
    add hl, bc                                    ; $7A10: $09
    jr z, jr_033_7A13                             ; $7A11: $28 $00

jr_033_7A13:
    xor d                                         ; $7A13: $AA
    ld sp, $0040                                  ; $7A14: $31 $40 $00
    ldh a, [rP1]                                  ; $7A17: $F0 $00
    ld b, c                                       ; $7A19: $41
    nop                                           ; $7A1A: $00
    ld d, [hl]                                    ; $7A1B: $56
    cp d                                          ; $7A1C: $BA
    nop                                           ; $7A1D: $00
    ld d, b                                       ; $7A1E: $50
    inc b                                         ; $7A1F: $04
    pop af                                        ; $7A20: $F1
    rrca                                          ; $7A21: $0F
    ld b, b                                       ; $7A22: $40
    nop                                           ; $7A23: $00
    add b                                         ; $7A24: $80
    ld [$F10A], a                                 ; $7A25: $EA $0A $F1
    rrca                                          ; $7A28: $0F
    ld bc, $0902                                  ; $7A29: $01 $02 $09
    nop                                           ; $7A2C: $00
    dec b                                         ; $7A2D: $05
    or a                                          ; $7A2E: $B7
    nop                                           ; $7A2F: $00
    ld [bc], a                                    ; $7A30: $02
    nop                                           ; $7A31: $00
    ld sp, $0018                                  ; $7A32: $31 $18 $00
    pop af                                        ; $7A35: $F1
    dec bc                                        ; $7A36: $0B
    ld l, d                                       ; $7A37: $6A
    ld a, [bc]                                    ; $7A38: $0A
    nop                                           ; $7A39: $00
    ld sp, $0020                                  ; $7A3A: $31 $20 $00
    ld a, h                                       ; $7A3D: $7C
    nop                                           ; $7A3E: $00
    inc h                                         ; $7A3F: $24
    cp d                                          ; $7A40: $BA
    ld b, $4C                                     ; $7A41: $06 $4C
    nop                                           ; $7A43: $00
    pop af                                        ; $7A44: $F1
    rrca                                          ; $7A45: $0F
    add a                                         ; $7A46: $87
    nop                                           ; $7A47: $00
    add h                                         ; $7A48: $84
    xor e                                         ; $7A49: $AB
    nop                                           ; $7A4A: $00
    call nz, $A400                                ; $7A4B: $C4 $00 $A4
    nop                                           ; $7A4E: $00
    sub h                                         ; $7A4F: $94
    nop                                           ; $7A50: $00
    ld [hl], c                                    ; $7A51: $71
    ld [$F1B1], a                                 ; $7A52: $EA $B1 $F1
    rrca                                          ; $7A55: $0F
    ret c                                         ; $7A56: $D8

    nop                                           ; $7A57: $00
    ld b, l                                       ; $7A58: $45
    nop                                           ; $7A59: $00
    ld b, c                                       ; $7A5A: $41
    xor [hl]                                      ; $7A5B: $AE
    inc b                                         ; $7A5C: $04
    ld b, d                                       ; $7A5D: $42
    nop                                           ; $7A5E: $00
    call c, $F100                                 ; $7A5F: $DC $00 $F1

jr_033_7A62:
    rrca                                          ; $7A62: $0F
    rra                                           ; $7A63: $1F
    xor d                                         ; $7A64: $AA
    nop                                           ; $7A65: $00
    ld bc, $0202                                  ; $7A66: $01 $02 $02
    nop                                           ; $7A69: $00
    inc b                                         ; $7A6A: $04
    nop                                           ; $7A6B: $00
    ld a, [bc]                                    ; $7A6C: $0A
    cp d                                          ; $7A6D: $BA
    nop                                           ; $7A6E: $00
    ld de, $F100                                  ; $7A6F: $11 $00 $F1
    rrca                                          ; $7A72: $0F
    inc a                                         ; $7A73: $3C
    nop                                           ; $7A74: $00
    inc h                                         ; $7A75: $24
    xor d                                         ; $7A76: $AA
    nop                                           ; $7A77: $00
    inc [hl]                                      ; $7A78: $34
    nop                                           ; $7A79: $00
    ld c, l                                       ; $7A7A: $4D
    nop                                           ; $7A7B: $00
    inc b                                         ; $7A7C: $04
    nop                                           ; $7A7D: $00
    ld [$00BB], sp                                ; $7A7E: $08 $BB $00
    ld [hl], b                                    ; $7A81: $70
    nop                                           ; $7A82: $00
    pop af                                        ; $7A83: $F1
    rrca                                          ; $7A84: $0F
    rlca                                          ; $7A85: $07
    nop                                           ; $7A86: $00
    ld sp, $015D                                  ; $7A87: $31 $5D $01
    nop                                           ; $7A8A: $00
    pop af                                        ; $7A8B: $F1
    nop                                           ; $7A8C: $00
    ld sp, $0601                                  ; $7A8D: $31 $01 $06
    nop                                           ; $7A90: $00
    push de                                       ; $7A91: $D5
    or c                                          ; $7A92: $B1
    rrca                                          ; $7A93: $0F
    ret nz                                        ; $7A94: $C0

    nop                                           ; $7A95: $00
    ld b, b                                       ; $7A96: $40
    ld [bc], a                                    ; $7A97: $02
    sub h                                         ; $7A98: $94
    nop                                           ; $7A99: $00
    ld d, a                                       ; $7A9A: $57
    dec d                                         ; $7A9B: $15
    nop                                           ; $7A9C: $00
    ld bc, $0E00                                  ; $7A9D: $01 $00 $0E
    nop                                           ; $7AA0: $00
    pop af                                        ; $7AA1: $F1
    add hl, bc                                    ; $7AA2: $09
    ld e, d                                       ; $7AA3: $5A
    inc b                                         ; $7AA4: $04
    nop                                           ; $7AA5: $00
    ld a, [bc]                                    ; $7AA6: $0A
    nop                                           ; $7AA7: $00
    ld sp, $0008                                  ; $7AA8: $31 $08 $00
    jr z, jr_033_7A62                             ; $7AAB: $28 $B5

    ld [bc], a                                    ; $7AAD: $02
    add hl, hl                                    ; $7AAE: $29
    nop                                           ; $7AAF: $00
    ld sp, $0024                                  ; $7AB0: $31 $24 $00
    ld b, h                                       ; $7AB3: $44
    nop                                           ; $7AB4: $00
    ld l, [hl]                                    ; $7AB5: $6E
    nop                                           ; $7AB6: $00
    rrca                                          ; $7AB7: $0F
    ld b, $F0                                     ; $7AB8: $06 $F0
    nop                                           ; $7ABA: $00
    db $FD                                        ; $7ABB: $FD
    add hl, bc                                    ; $7ABC: $09
    rra                                           ; $7ABD: $1F
    xor d                                         ; $7ABE: $AA
    nop                                           ; $7ABF: $00
    ld bc, $0500                                  ; $7AC0: $01 $00 $05
    nop                                           ; $7AC3: $00
    ld b, $00                                     ; $7AC4: $06 $00
    inc b                                         ; $7AC6: $04
    cp d                                          ; $7AC7: $BA
    ld [bc], a                                    ; $7AC8: $02
    jr jr_033_7ACB                                ; $7AC9: $18 $00

jr_033_7ACB:
    pop af                                        ; $7ACB: $F1
    rrca                                          ; $7ACC: $0F
    stop                                          ; $7ACD: $10 $00
    ld d, b                                       ; $7ACF: $50
    cp d                                          ; $7AD0: $BA
    nop                                           ; $7AD1: $00
    ld d, c                                       ; $7AD2: $51
    nop                                           ; $7AD3: $00
    ld sp, $5401                                  ; $7AD4: $31 $01 $54
    nop                                           ; $7AD7: $00
    ld e, b                                       ; $7AD8: $58
    db $ED                                        ; $7AD9: $ED
    nop                                           ; $7ADA: $00
    pop af                                        ; $7ADB: $F1
    rrca                                          ; $7ADC: $0F
    rst RST_20                                    ; $7ADD: $E7
    nop                                           ; $7ADE: $00
    ld sp, $00F7                                  ; $7ADF: $31 $F7 $00
    ld d, l                                       ; $7AE2: $55
    jr nz, jr_033_7AE5                            ; $7AE3: $20 $00

jr_033_7AE5:
    ld h, $00                                     ; $7AE5: $26 $00
    ld hl, $C000                                  ; $7AE7: $21 $00 $C0
    nop                                           ; $7AEA: $00
    push de                                       ; $7AEB: $D5
    or c                                          ; $7AEC: $B1
    rrca                                          ; $7AED: $0F
    rra                                           ; $7AEE: $1F
    nop                                           ; $7AEF: $00
    pop bc                                        ; $7AF0: $C1
    nop                                           ; $7AF1: $00
    ld bc, $5500                                  ; $7AF2: $01 $00 $55
    jp nz, Jump_000_0400                          ; $7AF5: $C2 $00 $04

    nop                                           ; $7AF8: $00
    adc d                                         ; $7AF9: $8A
    nop                                           ; $7AFA: $00
    ld d, c                                       ; $7AFB: $51
    nop                                           ; $7AFC: $00
    push de                                       ; $7AFD: $D5
    pop af                                        ; $7AFE: $F1
    rrca                                          ; $7AFF: $0F
    ld e, $00                                     ; $7B00: $1E $00
    ld [bc], a                                    ; $7B02: $02
    inc b                                         ; $7B03: $04
    inc b                                         ; $7B04: $04
    nop                                           ; $7B05: $00
    ld e, l                                       ; $7B06: $5D
    ld a, [bc]                                    ; $7B07: $0A
    nop                                           ; $7B08: $00
    ld [de], a                                    ; $7B09: $12
    nop                                           ; $7B0A: $00
    pop af                                        ; $7B0B: $F1
    rrca                                          ; $7B0C: $0F
    ld a, b                                       ; $7B0D: $78
    nop                                           ; $7B0E: $00
    ld d, l                                       ; $7B0F: $55
    ld c, b                                       ; $7B10: $48
    nop                                           ; $7B11: $00
    ld l, b                                       ; $7B12: $68
    nop                                           ; $7B13: $00
    sbc e                                         ; $7B14: $9B
    nop                                           ; $7B15: $00
    ld [$5D00], sp                                ; $7B16: $08 $00 $5D
    stop                                          ; $7B19: $10 $00
    ldh [rP1], a                                  ; $7B1B: $E0 $00
    pop af                                        ; $7B1D: $F1
    rrca                                          ; $7B1E: $0F
    ld e, $00                                     ; $7B1F: $1E $00
    ld d, l                                       ; $7B21: $55
    ld [bc], a                                    ; $7B22: $02
    ld [bc], a                                    ; $7B23: $02
    jp nz, Jump_000_0400                          ; $7B24: $C2 $00 $04

    nop                                           ; $7B27: $00
    ld a, [bc]                                    ; $7B28: $0A
    nop                                           ; $7B29: $00
    ld [hl], l                                    ; $7B2A: $75
    ld [de], a                                    ; $7B2B: $12
    nop                                           ; $7B2C: $00
    pop af                                        ; $7B2D: $F1
    rrca                                          ; $7B2E: $0F
    ld a, d                                       ; $7B2F: $7A
    nop                                           ; $7B30: $00
    ld c, d                                       ; $7B31: $4A
    ld [bc], a                                    ; $7B32: $02
    ld d, l                                       ; $7B33: $55
    adc d                                         ; $7B34: $8A
    nop                                           ; $7B35: $00
    ld [$1000], sp                                ; $7B36: $08 $00 $10
    nop                                           ; $7B39: $00
    db $E3                                        ; $7B3A: $E3
    nop                                           ; $7B3B: $00
    sub $F1                                       ; $7B3C: $D6 $F1
    rrca                                          ; $7B3E: $0F
    ld b, b                                       ; $7B3F: $40
    inc b                                         ; $7B40: $04
    ld c, a                                       ; $7B41: $4F
    nop                                           ; $7B42: $00
    ld sp, $EA80                                  ; $7B43: $31 $80 $EA
    nop                                           ; $7B46: $00
    di                                            ; $7B47: $F3
    rrca                                          ; $7B48: $0F
    db $10                                        ; $7B49: $10
    ld [bc], a                                    ; $7B4A: $02
    jr nz, jr_033_7B4F                            ; $7B4B: $20 $02

    ld b, h                                       ; $7B4D: $44
    cp e                                          ; $7B4E: $BB

jr_033_7B4F:
    ld [bc], a                                    ; $7B4F: $02
    ld a, h                                       ; $7B50: $7C
    nop                                           ; $7B51: $00
    pop af                                        ; $7B52: $F1
    dec bc                                        ; $7B53: $0B
    ld [bc], a                                    ; $7B54: $02
    nop                                           ; $7B55: $00
    ld sp, $1057                                  ; $7B56: $31 $57 $10
    nop                                           ; $7B59: $00
    inc de                                        ; $7B5A: $13
    nop                                           ; $7B5B: $00
    inc e                                         ; $7B5C: $1C
    nop                                           ; $7B5D: $00
    ld d, c                                       ; $7B5E: $51
    inc bc                                        ; $7B5F: $03
    halt                                          ; $7B60: $76
    rrca                                          ; $7B61: $0F
    nop                                           ; $7B62: $00
    pop af                                        ; $7B63: $F1
    dec bc                                        ; $7B64: $0B
    add b                                         ; $7B65: $80
    nop                                           ; $7B66: $00
    ld sp, $BD01                                  ; $7B67: $31 $01 $BD
    inc b                                         ; $7B6A: $04
    ld a, l                                       ; $7B6B: $7D
    nop                                           ; $7B6C: $00
    ld d, e                                       ; $7B6D: $53
    pop de                                        ; $7B6E: $D1
    dec c                                         ; $7B6F: $0D
    jr z, jr_033_7B72                             ; $7B70: $28 $00

jr_033_7B72:
    xor e                                         ; $7B72: $AB
    ld d, e                                       ; $7B73: $53
    jr nc, jr_033_7B76                            ; $7B74: $30 $00

jr_033_7B76:
    ret nz                                        ; $7B76: $C0

    nop                                           ; $7B77: $00
    rlca                                          ; $7B78: $07
    nop                                           ; $7B79: $00
    sub e                                         ; $7B7A: $93
    ld a, e                                       ; $7B7B: $7B
    ldh a, [rP1]                                  ; $7B7C: $F0 $00
    ld d, e                                       ; $7B7E: $53
    rrca                                          ; $7B7F: $0F
    inc bc                                        ; $7B80: $03
    ret nz                                        ; $7B81: $C0

    nop                                           ; $7B82: $00
    db $FD                                        ; $7B83: $FD
    ld h, $40                                     ; $7B84: $26 $40
    ld c, e                                       ; $7B86: $4B
    nop                                           ; $7B87: $00
    nop                                           ; $7B88: $00
    ld bc, $087C                                  ; $7B89: $01 $7C $08
    ld a, l                                       ; $7B8C: $7D
    ld a, [de]                                    ; $7B8D: $1A
    rrca                                          ; $7B8E: $0F
    xor a                                         ; $7B8F: $AF
    ld e, c                                       ; $7B90: $59
    ld a, a                                       ; $7B91: $7F
    ld [$297E], sp                                ; $7B92: $08 $7E $29
    cp c                                          ; $7B95: $B9
    rlca                                          ; $7B96: $07
    rlca                                          ; $7B97: $07
    rst RST_38                                    ; $7B98: $FF
    call c, $390B                                 ; $7B99: $DC $0B $39
    rrca                                          ; $7B9C: $0F
    ld a, [bc]                                    ; $7B9D: $0A
    rst RST_28                                    ; $7B9E: $EF
    rlca                                          ; $7B9F: $07
    ld bc, $98BF                                  ; $7BA0: $01 $BF $98
    ld a, l                                       ; $7BA3: $7D
    inc c                                         ; $7BA4: $0C
    db $EB                                        ; $7BA5: $EB
    dec l                                         ; $7BA6: $2D
    ld c, h                                       ; $7BA7: $4C
    rst RST_28                                    ; $7BA8: $EF
    rlca                                          ; $7BA9: $07
    rst RST_38                                    ; $7BAA: $FF
    ld bc, $EBDF                                  ; $7BAB: $01 $DF $EB
    ld a, [bc]                                    ; $7BAE: $0A
    ld c, [hl]                                    ; $7BAF: $4E
    rst RST_28                                    ; $7BB0: $EF
    rlca                                          ; $7BB1: $07
    ld bc, $DCEF                                  ; $7BB2: $01 $EF $DC
    add hl, de                                    ; $7BB5: $19
    dec bc                                        ; $7BB6: $0B
    ld a, [hl]                                    ; $7BB7: $7E
    ld e, [hl]                                    ; $7BB8: $5E
    add hl, de                                    ; $7BB9: $19
    ld [$FBEF], sp                                ; $7BBA: $08 $EF $FB
    rlca                                          ; $7BBD: $07
    ld bc, $DAAB                                  ; $7BBE: $01 $AB $DA
    add hl, bc                                    ; $7BC1: $09
    ld a, [hl]                                    ; $7BC2: $7E
    ld a, [bc]                                    ; $7BC3: $0A
    dec sp                                        ; $7BC4: $3B
    cp $7B                                        ; $7BC5: $FE $7B
    ld [$07EF], sp                                ; $7BC7: $08 $EF $07
    ld bc, $0BDC                                  ; $7BCA: $01 $DC $0B
    ld a, [hl]                                    ; $7BCD: $7E

jr_033_7BCE:
    rst RST_18                                    ; $7BCE: $DF
    ld a, [bc]                                    ; $7BCF: $0A
    add hl, hl                                    ; $7BD0: $29
    ld a, h                                       ; $7BD1: $7C
    inc e                                         ; $7BD2: $1C
    ld [$07EF], sp                                ; $7BD3: $08 $EF $07
    ld bc, $DEBF                                  ; $7BD6: $01 $BF $DE
    ld a, [hl]                                    ; $7BD9: $7E
    inc c                                         ; $7BDA: $0C
    ld e, e                                       ; $7BDB: $5B
    ld l, e                                       ; $7BDC: $6B
    jr jr_033_7BCE                                ; $7BDD: $18 $EF

    rlca                                          ; $7BDF: $07
    db $DD                                        ; $7BE0: $DD
    ld bc, $7EBC                                  ; $7BE1: $01 $BC $7E
    ld a, [bc]                                    ; $7BE4: $0A
    add hl, hl                                    ; $7BE5: $29
    add hl, bc                                    ; $7BE6: $09
    ld a, a                                       ; $7BE7: $7F
    ld l, d                                       ; $7BE8: $6A
    db $FD                                        ; $7BE9: $FD
    inc c                                         ; $7BEA: $0C
    rst RST_28                                    ; $7BEB: $EF
    rlca                                          ; $7BEC: $07
    ld bc, $F9AA                                  ; $7BED: $01 $AA $F9
    ld a, [hl]                                    ; $7BF0: $7E
    ld a, [bc]                                    ; $7BF1: $0A
    rst RST_38                                    ; $7BF2: $FF
    add hl, hl                                    ; $7BF3: $29
    add hl, bc                                    ; $7BF4: $09
    ld e, c                                       ; $7BF5: $59
    ld l, e                                       ; $7BF6: $6B
    ld a, [de]                                    ; $7BF7: $1A
    rst RST_28                                    ; $7BF8: $EF
    rlca                                          ; $7BF9: $07
    ld bc, $FCB6                                  ; $7BFA: $01 $B6 $FC
    ld a, [hl]                                    ; $7BFD: $7E
    ld a, [bc]                                    ; $7BFE: $0A
    dec sp                                        ; $7BFF: $3B
    ld a, h                                       ; $7C00: $7C
    inc e                                         ; $7C01: $1C
    add hl, bc                                    ; $7C02: $09
    ld a, a                                       ; $7C03: $7F
    rst RST_38                                    ; $7C04: $FF
    rst RST_28                                    ; $7C05: $EF
    rlca                                          ; $7C06: $07
    ld bc, $0DFC                                  ; $7C07: $01 $FC $0D
    ld sp, hl                                     ; $7C0A: $F9
    dec bc                                        ; $7C0B: $0B
    ld e, h                                       ; $7C0C: $5C
    push af                                       ; $7C0D: $F5
    rst RST_28                                    ; $7C0E: $EF
    rlca                                          ; $7C0F: $07
    ld bc, $7FAA                                  ; $7C10: $01 $AA $7F
    call c, $1C7C                                 ; $7C13: $DC $7C $1C
    rst RST_38                                    ; $7C16: $FF
    dec hl                                        ; $7C17: $2B
    ld a, [bc]                                    ; $7C18: $0A
    rst RST_28                                    ; $7C19: $EF
    rlca                                          ; $7C1A: $07
    ld bc, $0FDC                                  ; $7C1B: $01 $DC $0F
    ld hl, sp-$02                                 ; $7C1E: $F8 $FE
    ld a, [bc]                                    ; $7C20: $0A
    ld c, h                                       ; $7C21: $4C
    rst RST_28                                    ; $7C22: $EF
    rlca                                          ; $7C23: $07
    ld bc, $0ABD                                  ; $7C24: $01 $BD $0A
    ld a, a                                       ; $7C27: $7F
    cp a                                          ; $7C28: $BF
    ld a, [de]                                    ; $7C29: $1A
    ld a, l                                       ; $7C2A: $7D
    ld c, h                                       ; $7C2B: $4C
    ld a, [hl+]                                   ; $7C2C: $2A
    rst RST_28                                    ; $7C2D: $EF
    rlca                                          ; $7C2E: $07
    ld bc, $FFCC                                  ; $7C2F: $01 $CC $FF
    db $DB                                        ; $7C32: $DB
    ld [$1A4E], a                                 ; $7C33: $EA $4E $1A
    rst RST_28                                    ; $7C36: $EF
    rlca                                          ; $7C37: $07
    ld bc, $DFDE                                  ; $7C38: $01 $DE $DF
    dec bc                                        ; $7C3B: $0B
    add hl, sp                                    ; $7C3C: $39
    ld a, a                                       ; $7C3D: $7F
    ld e, a                                       ; $7C3E: $5F
    rst RST_28                                    ; $7C3F: $EF
    rlca                                          ; $7C40: $07
    ld bc, $EFFC                                  ; $7C41: $01 $FC $EF
    db $ED                                        ; $7C44: $ED
    dec sp                                        ; $7C45: $3B
    ld c, e                                       ; $7C46: $4B
    ld a, [hl]                                    ; $7C47: $7E
    add hl, bc                                    ; $7C48: $09
    rst RST_28                                    ; $7C49: $EF
    rlca                                          ; $7C4A: $07
    ld bc, $FFF7                                  ; $7C4B: $01 $F7 $FF
    inc c                                         ; $7C4E: $0C
    ld e, c                                       ; $7C4F: $59
    dec bc                                        ; $7C50: $0B
    ld a, [hl]                                    ; $7C51: $7E
    add hl, bc                                    ; $7C52: $09
    rst RST_28                                    ; $7C53: $EF
    rlca                                          ; $7C54: $07
    db $FD                                        ; $7C55: $FD
    ld bc, $FBBA                                  ; $7C56: $01 $BA $FB
    add hl, de                                    ; $7C59: $19
    dec hl                                        ; $7C5A: $2B
    dec bc                                        ; $7C5B: $0B
    ld a, [hl]                                    ; $7C5C: $7E
    dec bc                                        ; $7C5D: $0B
    ei                                            ; $7C5E: $FB
    rst RST_28                                    ; $7C5F: $EF
    rlca                                          ; $7C60: $07
    ld bc, $0DFA                                  ; $7C61: $01 $FA $0D
    ld a, l                                       ; $7C64: $7D
    ld a, [bc]                                    ; $7C65: $0A
    ld hl, sp-$06                                 ; $7C66: $F8 $FA
    rrca                                          ; $7C68: $0F
    rst RST_28                                    ; $7C69: $EF
    rlca                                          ; $7C6A: $07
    ld bc, $7C98                                  ; $7C6B: $01 $98 $7C
    ld a, [$FE7F]                                 ; $7C6E: $FA $7F $FE

jr_033_7C71:
    inc l                                         ; $7C71: $2C
    ld a, [$EF0F]                                 ; $7C72: $FA $0F $EF
    rlca                                          ; $7C75: $07
    ld bc, $7C98                                  ; $7C76: $01 $98 $7C
    rst RST_18                                    ; $7C79: $DF
    call z, Call_033_7D29                         ; $7C7A: $CC $29 $7D
    ld a, [hl+]                                   ; $7C7D: $2A
    dec de                                        ; $7C7E: $1B
    dec bc                                        ; $7C7F: $0B
    jr c, jr_033_7C71                             ; $7C80: $38 $EF

    rst RST_28                                    ; $7C82: $EF
    rlca                                          ; $7C83: $07
    ld bc, $7FDA                                  ; $7C84: $01 $DA $7F
    db $DD                                        ; $7C87: $DD
    inc l                                         ; $7C88: $2C
    add hl, bc                                    ; $7C89: $09
    ld l, e                                       ; $7C8A: $6B
    ei                                            ; $7C8B: $FB
    ld e, b                                       ; $7C8C: $58
    rst RST_28                                    ; $7C8D: $EF
    rlca                                          ; $7C8E: $07
    ld bc, $7C98                                  ; $7C8F: $01 $98 $7C
    xor c                                         ; $7C92: $A9
    ld a, [de]                                    ; $7C93: $1A
    rst RST_18                                    ; $7C94: $DF
    dec hl                                        ; $7C95: $2B
    add hl, bc                                    ; $7C96: $09
    ld a, [hl]                                    ; $7C97: $7E
    ld a, [bc]                                    ; $7C98: $0A
    dec sp                                        ; $7C99: $3B
    ld [$07EF], sp                                ; $7C9A: $08 $EF $07
    rst RST_10                                    ; $7C9D: $D7
    ld bc, $7F98                                  ; $7C9E: $01 $98 $7F
    cp d                                          ; $7CA1: $BA
    ld a, h                                       ; $7CA2: $7C
    ld a, [$0D3B]                                 ; $7CA3: $FA $3B $0D
    db $FD                                        ; $7CA6: $FD
    ld l, c                                       ; $7CA7: $69
    ld [$07EF], sp                                ; $7CA8: $08 $EF $07
    ld bc, $7EDE                                  ; $7CAB: $01 $DE $7E
    db $FC                                        ; $7CAE: $FC
    rst RST_38                                    ; $7CAF: $FF
    ld c, e                                       ; $7CB0: $4B
    add hl, hl                                    ; $7CB1: $29
    ld a, [bc]                                    ; $7CB2: $0A
    rst RST_28                                    ; $7CB3: $EF
    rlca                                          ; $7CB4: $07

jr_033_7CB5:
    ld bc, $0ADF                                  ; $7CB5: $01 $DF $0A
    cp $3F                                        ; $7CB8: $FE $3F
    ld a, [bc]                                    ; $7CBA: $0A
    rst RST_28                                    ; $7CBB: $EF
    rlca                                          ; $7CBC: $07
    ld bc, $0CCF                                  ; $7CBD: $01 $CF $0C
    ld a, l                                       ; $7CC0: $7D
    rst RST_38                                    ; $7CC1: $FF
    ld a, [bc]                                    ; $7CC2: $0A
    dec hl                                        ; $7CC3: $2B
    jr jr_033_7CB5                                ; $7CC4: $18 $EF

    rlca                                          ; $7CC6: $07
    ld bc, $0FFC                                  ; $7CC7: $01 $FC $0F
    ld a, [hl]                                    ; $7CCA: $7E
    ld a, l                                       ; $7CCB: $7D
    inc c                                         ; $7CCC: $0C
    ld c, d                                       ; $7CCD: $4A
    rst RST_28                                    ; $7CCE: $EF
    rlca                                          ; $7CCF: $07
    ld bc, $7FEC                                  ; $7CD0: $01 $EC $7F
    rst RST_38                                    ; $7CD3: $FF
    db $DB                                        ; $7CD4: $DB
    inc c                                         ; $7CD5: $0C
    ld e, c                                       ; $7CD6: $59
    add hl, bc                                    ; $7CD7: $09
    ld a, [hl-]                                   ; $7CD8: $3A
    rst RST_28                                    ; $7CD9: $EF
    rlca                                          ; $7CDA: $07
    ld bc, $FEEE                                  ; $7CDB: $01 $EE $FE
    rrca                                          ; $7CDE: $0F
    dec bc                                        ; $7CDF: $0B
    ld a, l                                       ; $7CE0: $7D
    add hl, de                                    ; $7CE1: $19
    rst RST_28                                    ; $7CE2: $EF
    rlca                                          ; $7CE3: $07
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

Call_033_7D29:
    rst RST_38                                    ; $7D29: $FF
    rst RST_38                                    ; $7D2A: $FF
    rst RST_38                                    ; $7D2B: $FF
    rst RST_38                                    ; $7D2C: $FF
    rst RST_38                                    ; $7D2D: $FF

Call_033_7D2E:
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

Jump_033_7F02:
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
