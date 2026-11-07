; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    ld hl, $411C                                  ; $4000: $21 $1C $41
    ld de, $C333                                  ; $4003: $11 $33 $C3
    call Call_000_124C                            ; $4006: $CD $4C $12
    ld hl, $C333                                  ; $4009: $21 $33 $C3
    ld de, $4080                                  ; $400C: $11 $80 $40
    call Call_004_40C7                            ; $400F: $CD $C7 $40
    ld bc, $0010                                  ; $4012: $01 $10 $00
    call Call_004_410B                            ; $4015: $CD $0B $41
    ld hl, $4CE0                                  ; $4018: $21 $E0 $4C
    ld de, $C333                                  ; $401B: $11 $33 $C3
    call Call_000_124C                            ; $401E: $CD $4C $12
    ld hl, $C333                                  ; $4021: $21 $33 $C3
    ld de, $4092                                  ; $4024: $11 $92 $40
    call Call_004_40C7                            ; $4027: $CD $C7 $40
    ld bc, $0010                                  ; $402A: $01 $10 $00
    call Call_004_410B                            ; $402D: $CD $0B $41
    ld a, [$C283]                                 ; $4030: $FA $83 $C2
    cp $01                                        ; $4033: $FE $01
    jp z, Jump_004_403D                           ; $4035: $CA $3D $40

    cp $02                                        ; $4038: $FE $02
    jp z, Jump_004_404B                           ; $403A: $CA $4B $40

Jump_004_403D:
    ld hl, $57DA                                  ; $403D: $21 $DA $57
    ld de, $C333                                  ; $4040: $11 $33 $C3
    call Call_000_124C                            ; $4043: $CD $4C $12
    ld hl, $5B7E                                  ; $4046: $21 $7E $5B
    jr jr_004_4057                                ; $4049: $18 $0C

Jump_004_404B:
    ld hl, $57DA                                  ; $404B: $21 $DA $57
    ld de, $C333                                  ; $404E: $11 $33 $C3
    call Call_000_124C                            ; $4051: $CD $4C $12
    ld hl, $5BE0                                  ; $4054: $21 $E0 $5B

jr_004_4057:
    ld c, [hl]                                    ; $4057: $4E
    inc hl                                        ; $4058: $23
    ld b, [hl]                                    ; $4059: $46
    inc hl                                        ; $405A: $23
    ld de, $CB33                                  ; $405B: $11 $33 $CB
    call Call_004_4102                            ; $405E: $CD $02 $41
    ld hl, $C333                                  ; $4061: $21 $33 $C3
    ld de, $40A4                                  ; $4064: $11 $A4 $40
    call Call_004_40C7                            ; $4067: $CD $C7 $40
    ld bc, $0010                                  ; $406A: $01 $10 $00
    call Call_004_410B                            ; $406D: $CD $0B $41
    ld hl, $8800                                  ; $4070: $21 $00 $88
    ld bc, $1000                                  ; $4073: $01 $00 $10
    xor a                                         ; $4076: $AF

jr_004_4077:
    xor a                                         ; $4077: $AF
    ld [hl+], a                                   ; $4078: $22
    dec bc                                        ; $4079: $0B
    ld a, b                                       ; $407A: $78
    or c                                          ; $407B: $B1
    jr nz, jr_004_4077                            ; $407C: $20 $F9

    rst RST_10                                    ; $407E: $D7
    ret                                           ; $407F: $C9


    sbc c                                         ; $4080: $99
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
    sbc c                                         ; $4092: $99
    ld bc, $0000                                  ; $4093: $01 $00 $00
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
    nop                                           ; $40A0: $00
    nop                                           ; $40A1: $00
    nop                                           ; $40A2: $00
    nop                                           ; $40A3: $00
    and c                                         ; $40A4: $A1
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
    pop bc                                        ; $40B5: $C1
    inc bc                                        ; $40B6: $03
    inc b                                         ; $40B7: $04
    nop                                           ; $40B8: $00
    dec b                                         ; $40B9: $05
    nop                                           ; $40BA: $00
    ld b, $00                                     ; $40BB: $06 $00
    rlca                                          ; $40BD: $07
    nop                                           ; $40BE: $00
    nop                                           ; $40BF: $00
    nop                                           ; $40C0: $00
    nop                                           ; $40C1: $00
    nop                                           ; $40C2: $00
    nop                                           ; $40C3: $00
    nop                                           ; $40C4: $00
    nop                                           ; $40C5: $00
    nop                                           ; $40C6: $00

Call_004_40C7:
    di                                            ; $40C7: $F3
    push de                                       ; $40C8: $D5
    rst RST_10                                    ; $40C9: $D7
    ld a, $E4                                     ; $40CA: $3E $E4
    ldh [rBGP], a                                 ; $40CC: $E0 $47
    ld de, $8800                                  ; $40CE: $11 $00 $88
    ld bc, $1000                                  ; $40D1: $01 $00 $10
    call Call_004_4102                            ; $40D4: $CD $02 $41
    ld hl, $9800                                  ; $40D7: $21 $00 $98
    ld de, $000C                                  ; $40DA: $11 $0C $00
    ld a, $80                                     ; $40DD: $3E $80
    ld c, $0D                                     ; $40DF: $0E $0D

jr_004_40E1:
    ld b, $14                                     ; $40E1: $06 $14

jr_004_40E3:
    ld [hl+], a                                   ; $40E3: $22
    inc a                                         ; $40E4: $3C
    dec b                                         ; $40E5: $05
    jr nz, jr_004_40E3                            ; $40E6: $20 $FB

    add hl, de                                    ; $40E8: $19
    dec c                                         ; $40E9: $0D
    jr nz, jr_004_40E1                            ; $40EA: $20 $F5

    ld a, $81                                     ; $40EC: $3E $81
    ldh [rLCDC], a                                ; $40EE: $E0 $40
    ld bc, $0005                                  ; $40F0: $01 $05 $00
    call Call_004_410B                            ; $40F3: $CD $0B $41
    pop hl                                        ; $40F6: $E1
    call Call_000_02C6                            ; $40F7: $CD $C6 $02
    ld bc, $0006                                  ; $40FA: $01 $06 $00

jr_004_40FD:
    call Call_004_410B                            ; $40FD: $CD $0B $41
    ei                                            ; $4100: $FB
    ret                                           ; $4101: $C9


Call_004_4102:
jr_004_4102:
    ld a, [hl+]                                   ; $4102: $2A
    ld [de], a                                    ; $4103: $12
    inc de                                        ; $4104: $13
    dec bc                                        ; $4105: $0B
    ld a, b                                       ; $4106: $78
    or c                                          ; $4107: $B1
    jr nz, jr_004_4102                            ; $4108: $20 $F8

    ret                                           ; $410A: $C9


Call_004_410B:
jr_004_410B:
    ld de, $06D6                                  ; $410B: $11 $D6 $06

jr_004_410E:
    nop                                           ; $410E: $00
    nop                                           ; $410F: $00
    nop                                           ; $4110: $00
    dec de                                        ; $4111: $1B
    ld a, d                                       ; $4112: $7A
    or e                                          ; $4113: $B3
    jr nz, jr_004_410E                            ; $4114: $20 $F8

    dec bc                                        ; $4116: $0B
    ld a, b                                       ; $4117: $78
    or c                                          ; $4118: $B1
    jr nz, jr_004_410B                            ; $4119: $20 $F0

    ret                                           ; $411B: $C9


    ld c, [hl]                                    ; $411C: $4E
    ld b, c                                       ; $411D: $41
    ld a, c                                       ; $411E: $79
    nop                                           ; $411F: $00
    rlca                                          ; $4120: $07
    rlca                                          ; $4121: $07
    rlca                                          ; $4122: $07
    ld b, $01                                     ; $4123: $06 $01
    db $FC                                        ; $4125: $FC
    rrca                                          ; $4126: $0F
    reti                                          ; $4127: $D9


    dec c                                         ; $4128: $0D
    nop                                           ; $4129: $00
    inc bc                                        ; $412A: $03
    rrca                                          ; $412B: $0F
    dec c                                         ; $412C: $0D
    nop                                           ; $412D: $00
    rst RST_38                                    ; $412E: $FF
    rrca                                          ; $412F: $0F
    db $E4                                        ; $4130: $E4
    dec c                                         ; $4131: $0D
    ld b, a                                       ; $4132: $47
    rrca                                          ; $4133: $0F
    ld bc, $0DFC                                  ; $4134: $01 $FC $0D
    ccf                                           ; $4137: $3F
    add b                                         ; $4138: $80
    ld c, l                                       ; $4139: $4D
    ld b, b                                       ; $413A: $40
    add hl, bc                                    ; $413B: $09
    rra                                           ; $413C: $1F
    and b                                         ; $413D: $A0
    jr nc, jr_004_4180                            ; $413E: $30 $40

    inc bc                                        ; $4140: $03
    dec c                                         ; $4141: $0D
    or h                                          ; $4142: $B4
    ld h, b                                       ; $4143: $60
    ld a, a                                       ; $4144: $7F
    add hl, bc                                    ; $4145: $09
    ld [hl], b                                    ; $4146: $70
    ldh [rSVBK], a                                ; $4147: $E0 $70
    ret nz                                        ; $4149: $C0

    nop                                           ; $414A: $00
    ld [hl], l                                    ; $414B: $75
    rst RST_38                                    ; $414C: $FF
    dec c                                         ; $414D: $0D
    ld de, $0101                                  ; $414E: $11 $01 $01
    or b                                          ; $4151: $B0
    ld b, $08                                     ; $4152: $06 $08
    rst RST_30                                    ; $4154: $F7
    halt                                          ; $4155: $76
    ld h, c                                       ; $4156: $61
    ld [hl+], a                                   ; $4157: $22
    ld h, b                                       ; $4158: $60
    inc bc                                        ; $4159: $03
    add hl, bc                                    ; $415A: $09
    rst RST_38                                    ; $415B: $FF
    inc c                                         ; $415C: $0C

jr_004_415D:
    jr c, jr_004_415D                             ; $415D: $38 $FE

    ld bc, $77FF                                  ; $415F: $01 $FF $77
    ld hl, sp+$02                                 ; $4162: $F8 $02
    ld hl, sp+$05                                 ; $4164: $F8 $05
    nop                                           ; $4166: $00
    pop af                                        ; $4167: $F1
    ld a, [bc]                                    ; $4168: $0A
    db $E3                                        ; $4169: $E3
    inc d                                         ; $416A: $14
    rst RST_00                                    ; $416B: $C7
    jr z, jr_004_40FD                             ; $416C: $28 $8F

    ld d, b                                       ; $416E: $50
    dec b                                         ; $416F: $05
    rra                                           ; $4170: $1F
    and b                                         ; $4171: $A0
    ccf                                           ; $4172: $3F
    ld b, b                                       ; $4173: $40
    ld a, a                                       ; $4174: $7F
    ld [hl], b                                    ; $4175: $70
    rlca                                          ; $4176: $07
    ld [hl], b                                    ; $4177: $70
    ld d, l                                       ; $4178: $55
    ld c, $70                                     ; $4179: $0E $70
    inc e                                         ; $417B: $1C
    ld [hl], b                                    ; $417C: $70
    jr c, jr_004_41EF                             ; $417D: $38 $70

    ld [hl], b                                    ; $417F: $70

jr_004_4180:
    ld [hl], b                                    ; $4180: $70
    ld d, h                                       ; $4181: $54
    ldh [rSVBK], a                                ; $4182: $E0 $70
    ret nz                                        ; $4184: $C0

    ld [hl], b                                    ; $4185: $70
    add b                                         ; $4186: $80
    ei                                            ; $4187: $FB
    dec bc                                        ; $4188: $0B
    pop hl                                        ; $4189: $E1
    ld bc, $C116                                  ; $418A: $01 $16 $C1
    db $EC                                        ; $418D: $EC
    ld bc, $031E                                  ; $418E: $01 $1E $03
    ld a, h                                       ; $4191: $7C
    ld [$60FD], sp                                ; $4192: $08 $FD $60
    add hl, bc                                    ; $4195: $09
    ld a, [$5070]                                 ; $4196: $FA $70 $50
    ld [hl], b                                    ; $4199: $70
    ld a, $70                                     ; $419A: $3E $70
    ld d, c                                       ; $419C: $51
    cp $50                                        ; $419D: $FE $50
    db $FC                                        ; $419F: $FC
    dec bc                                        ; $41A0: $0B
    add b                                         ; $41A1: $80
    rst RST_38                                    ; $41A2: $FF
    nop                                           ; $41A3: $00
    rrca                                          ; $41A4: $0F
    ldh [c], a                                    ; $41A5: $E2
    inc c                                         ; $41A6: $0C
    ld b, a                                       ; $41A7: $47
    rrca                                          ; $41A8: $0F
    adc d                                         ; $41A9: $8A
    ld sp, hl                                     ; $41AA: $F9
    ld [bc], a                                    ; $41AB: $02
    ld [$2606], sp                                ; $41AC: $08 $06 $26
    ei                                            ; $41AF: $FB
    inc c                                         ; $41B0: $0C
    ld [$F304], sp                                ; $41B1: $08 $04 $F3
    add hl, bc                                    ; $41B4: $09
    jr z, @-$07                                   ; $41B5: $28 $F7

    ld a, a                                       ; $41B7: $7F
    ld [$6108], sp                                ; $41B8: $08 $08 $61
    ld [hl], d                                    ; $41BB: $72
    ld d, b                                       ; $41BC: $50
    ld [hl], d                                    ; $41BD: $72
    ld h, b                                       ; $41BE: $60
    ld [hl], h                                    ; $41BF: $74
    adc c                                         ; $41C0: $89
    ld [$DF20], sp                                ; $41C1: $08 $20 $DF
    ld h, b                                       ; $41C4: $60
    ld [$9F40], sp                                ; $41C5: $08 $40 $9F
    add hl, bc                                    ; $41C8: $09
    adc d                                         ; $41C9: $8A
    jr z, @-$3F                                   ; $41CA: $28 $BF

    rst RST_38                                    ; $41CC: $FF
    add b                                         ; $41CD: $80
    nop                                           ; $41CE: $00
    nop                                           ; $41CF: $00
    ld [$FE3F], sp                                ; $41D0: $08 $3F $FE
    ld h, b                                       ; $41D3: $60
    add c                                         ; $41D4: $81
    ld [$7261], sp                                ; $41D5: $08 $61 $72
    sub b                                         ; $41D8: $90
    ld e, b                                       ; $41D9: $58
    ld a, a                                       ; $41DA: $7F
    pop hl                                        ; $41DB: $E1
    ld [hl], b                                    ; $41DC: $70
    sub b                                         ; $41DD: $90
    ld [hl], b                                    ; $41DE: $70
    ret nz                                        ; $41DF: $C0

    ld [$09E7], sp                                ; $41E0: $08 $E7 $09
    ld [$1911], sp                                ; $41E3: $08 $11 $19
    xor $31                                       ; $41E6: $EE $31
    ld [$CE11], sp                                ; $41E8: $08 $11 $CE
    inc de                                        ; $41EB: $13
    ld [$321B], sp                                ; $41EC: $08 $1B $32

jr_004_41EF:
    call c, Call_000_0862                         ; $41EF: $DC $62 $08
    ld h, b                                       ; $41F2: $60
    jr jr_004_41FE                                ; $41F3: $18 $09

    ld h, c                                       ; $41F5: $61
    db $F4                                        ; $41F6: $F4
    ld [hl], d                                    ; $41F7: $72
    sub b                                         ; $41F8: $90
    add hl, bc                                    ; $41F9: $09
    ld h, b                                       ; $41FA: $60
    inc hl                                        ; $41FB: $23
    add hl, bc                                    ; $41FC: $09
    ret nz                                        ; $41FD: $C0

jr_004_41FE:
    ld a, a                                       ; $41FE: $7F
    ld e, e                                       ; $41FF: $5B
    add b                                         ; $4200: $80
    ld [$0A00], sp                                ; $4201: $08 $00 $0A
    jr z, @+$01                                   ; $4204: $28 $FF

    nop                                           ; $4206: $00
    jr nz, @+$01                                  ; $4207: $20 $FF

    ld [bc], a                                    ; $4209: $02
    jr nz, @+$74                                  ; $420A: $20 $72

    inc c                                         ; $420C: $0C
    ld l, d                                       ; $420D: $6A
    ld de, $2A9B                                  ; $420E: $11 $9B $2A
    ldh a, [$FF0D]                                ; $4211: $F0 $0D
    db $FD                                        ; $4213: $FD
    ld [hl], a                                    ; $4214: $77
    rst RST_38                                    ; $4215: $FF
    ld a, b                                       ; $4216: $78
    ld hl, sp-$4C                                 ; $4217: $F8 $B4
    db $F4                                        ; $4219: $F4
    db $EB                                        ; $421A: $EB
    rra                                           ; $421B: $1F
    dec de                                        ; $421C: $1B
    db $10                                        ; $421D: $10
    rlca                                          ; $421E: $07
    db $10                                        ; $421F: $10
    dec bc                                        ; $4220: $0B
    rra                                           ; $4221: $1F
    dec de                                        ; $4222: $1B
    ld e, h                                       ; $4223: $5C
    ld [hl], h                                    ; $4224: $74
    ld [$28B8], sp                                ; $4225: $08 $B8 $28
    rra                                           ; $4228: $1F
    dec de                                        ; $4229: $1B
    nop                                           ; $422A: $00
    rst RST_38                                    ; $422B: $FF
    cp $0F                                        ; $422C: $FE $0F
    dec c                                         ; $422E: $0D
    cp a                                          ; $422F: $BF
    rra                                           ; $4230: $1F
    rst RST_00                                    ; $4231: $C7
    rrca                                          ; $4232: $0F
    sbc b                                         ; $4233: $98
    db $F4                                        ; $4234: $F4
    cp d                                          ; $4235: $BA
    sbc b                                         ; $4236: $98
    ld hl, sp+$1F                                 ; $4237: $F8 $1F
    dec de                                        ; $4239: $1B
    db $10                                        ; $423A: $10
    dec bc                                        ; $423B: $0B
    db $10                                        ; $423C: $10
    rlca                                          ; $423D: $07
    rst RST_00                                    ; $423E: $C7
    rra                                           ; $423F: $1F
    dec de                                        ; $4240: $1B
    ld a, a                                       ; $4241: $7F
    nop                                           ; $4242: $00
    cp a                                          ; $4243: $BF
    ld [$1B1F], sp                                ; $4244: $08 $1F $1B
    db $FD                                        ; $4247: $FD
    nop                                           ; $4248: $00
    sub b                                         ; $4249: $90
    ld [$1FB0], sp                                ; $424A: $08 $B0 $1F
    dec de                                        ; $424D: $1B
    rst RST_38                                    ; $424E: $FF
    db $10                                        ; $424F: $10
    ldh a, [rIF]                                  ; $4250: $F0 $0F
    dec c                                         ; $4252: $0D
    rlca                                          ; $4253: $07

jr_004_4254:
    rlca                                          ; $4254: $07
    add b                                         ; $4255: $80
    ccf                                           ; $4256: $3F
    ld b, b                                       ; $4257: $40
    ld a, a                                       ; $4258: $7F
    db $FD                                        ; $4259: $FD
    jr nz, jr_004_4264                            ; $425A: $20 $08

    jr z, jr_004_4254                             ; $425C: $28 $F6

    ld e, c                                       ; $425E: $59
    ld [hl], b                                    ; $425F: $70
    ret nz                                        ; $4260: $C0

    ld h, c                                       ; $4261: $61
    ldh [c], a                                    ; $4262: $E2
    ld [hl], a                                    ; $4263: $77

jr_004_4264:
    add hl, bc                                    ; $4264: $09
    ld c, c                                       ; $4265: $49
    ld [bc], a                                    ; $4266: $02
    ld hl, sp+$0D                                 ; $4267: $F8 $0D
    ld [$2205], sp                                ; $4269: $08 $05 $22
    ldh a, [rNR31]                                ; $426C: $F0 $1B
    ld [$E00B], sp                                ; $426E: $08 $0B $E0
    scf                                           ; $4271: $37
    ld [$B617], sp                                ; $4272: $08 $17 $B6
    ret c                                         ; $4275: $D8

    ld l, a                                       ; $4276: $6F
    ld [$0760], sp                                ; $4277: $08 $60 $07
    add hl, bc                                    ; $427A: $09
    ld h, b                                       ; $427B: $60
    rrca                                          ; $427C: $0F
    jp c, Jump_004_6009                           ; $427D: $DA $09 $60

    rra                                           ; $4280: $1F
    add hl, bc                                    ; $4281: $09
    ld h, b                                       ; $4282: $60
    ccf                                           ; $4283: $3F
    add hl, bc                                    ; $4284: $09

jr_004_4285:
    add sp, -$7E                                  ; $4285: $E8 $82
    ld c, b                                       ; $4287: $48
    db $FD                                        ; $4288: $FD
    ld bc, $007F                                  ; $4289: $01 $7F $00
    cpl                                           ; $428C: $2F
    ld h, b                                       ; $428D: $60
    dec b                                         ; $428E: $05
    ld d, e                                       ; $428F: $53
    db $FC                                        ; $4290: $FC

jr_004_4291:
    jr nz, jr_004_4291                            ; $4291: $20 $FE

    add hl, bc                                    ; $4293: $09
    ld b, b                                       ; $4294: $40
    ld a, [hl]                                    ; $4295: $7E
    pop de                                        ; $4296: $D1
    ld [hl], b                                    ; $4297: $70
    or a                                          ; $4298: $B7
    add hl, sp                                    ; $4299: $39
    rst RST_38                                    ; $429A: $FF
    reti                                          ; $429B: $D9


    ld [hl], b                                    ; $429C: $70
    inc bc                                        ; $429D: $03
    jr nc, @+$43                                  ; $429E: $30 $41

    ld [$70A5], sp                                ; $42A0: $08 $A5 $70
    add c                                         ; $42A3: $81
    ret z                                         ; $42A4: $C8

    add b                                         ; $42A5: $80
    rst RST_18                                    ; $42A6: $DF
    ld [$808F], sp                                ; $42A7: $08 $8F $80
    ld a, e                                       ; $42AA: $7B
    pop af                                        ; $42AB: $F1
    ldh [c], a                                    ; $42AC: $E2
    and b                                         ; $42AD: $A0
    inc c                                         ; $42AE: $0C
    ld h, b                                       ; $42AF: $60
    ld a, a                                       ; $42B0: $7F
    add hl, bc                                    ; $42B1: $09
    ld d, [hl]                                    ; $42B2: $56
    adc d                                         ; $42B3: $8A
    inc c                                         ; $42B4: $0C
    db $FC                                        ; $42B5: $FC
    rlca                                          ; $42B6: $07
    ld hl, sp+$08                                 ; $42B7: $F8 $08
    ldh a, [rNR24]                                ; $42B9: $F0 $19
    rrca                                          ; $42BB: $0F
    rst RST_10                                    ; $42BC: $D7
    jr @+$0A                                      ; $42BD: $18 $08

jr_004_42BF:
    ldh [rNR24], a                                ; $42BF: $E0 $19
    rra                                           ; $42C1: $1F
    jr @+$0A                                      ; $42C2: $18 $08

    ld [hl], d                                    ; $42C4: $72
    ld a, [$720A]                                 ; $42C5: $FA $0A $72
    ld a, [bc]                                    ; $42C8: $0A
    ld [hl], d                                    ; $42C9: $72
    ld [$11C0], sp                                ; $42CA: $08 $C0 $11
    ccf                                           ; $42CD: $3F
    pop de                                        ; $42CE: $D1
    jr @+$0A                                      ; $42CF: $18 $08

    add b                                         ; $42D1: $80
    ld [$7F40], sp                                ; $42D2: $08 $40 $7F
    ret nc                                        ; $42D5: $D0

    ld c, b                                       ; $42D6: $48
    rrca                                          ; $42D7: $0F
    ld a, [$FF03]                                 ; $42D8: $FA $03 $FF
    nop                                           ; $42DB: $00
    ld [hl], h                                    ; $42DC: $74
    ld a, [bc]                                    ; $42DD: $0A
    ld [hl], b                                    ; $42DE: $70
    sub b                                         ; $42DF: $90
    sbc $49                                       ; $42E0: $DE $49
    ld [hl], b                                    ; $42E2: $70
    db $FC                                        ; $42E3: $FC
    ld [hl], b                                    ; $42E4: $70
    add c                                         ; $42E5: $81
    rrca                                          ; $42E6: $0F
    inc c                                         ; $42E7: $0C
    ld b, b                                       ; $42E8: $40
    ldh a, [$FFB0]                                ; $42E9: $F0 $B0
    ld d, a                                       ; $42EB: $57
    dec c                                         ; $42EC: $0D

jr_004_42ED:
    ld [hl], b                                    ; $42ED: $70
    add b                                         ; $42EE: $80
    ld [hl+], a                                   ; $42EF: $22
    sbc h                                         ; $42F0: $9C
    ld hl, $9E00                                  ; $42F1: $21 $00 $9E
    jr nc, jr_004_4285                            ; $42F4: $30 $8F

    jr jr_004_42BF                                ; $42F6: $18 $C7

    inc c                                         ; $42F8: $0C
    db $E3                                        ; $42F9: $E3
    ld b, $05                                     ; $42FA: $06 $05
    pop af                                        ; $42FC: $F1
    inc bc                                        ; $42FD: $03
    ld hl, sp+$01                                 ; $42FE: $F8 $01
    db $FC                                        ; $4300: $FC
    ld [hl], b                                    ; $4301: $70
    ld h, e                                       ; $4302: $63
    ld [hl], b                                    ; $4303: $70
    ld d, l                                       ; $4304: $55
    ld h, c                                       ; $4305: $61
    ld [hl], b                                    ; $4306: $70
    ld [hl], b                                    ; $4307: $70
    ld [hl], b                                    ; $4308: $70
    jr c, jr_004_437B                             ; $4309: $38 $70

    inc e                                         ; $430B: $1C
    ld [hl], b                                    ; $430C: $70
    ld e, c                                       ; $430D: $59

jr_004_430E:
    ld c, $70                                     ; $430E: $0E $70
    rlca                                          ; $4310: $07
    ld [hl], b                                    ; $4311: $70
    sub b                                         ; $4312: $90
    nop                                           ; $4313: $00
    rst RST_38                                    ; $4314: $FF
    ld [$7F00], sp                                ; $4315: $08 $00 $7F
    add b                                         ; $4318: $80
    ccf                                           ; $4319: $3F
    ld b, b                                       ; $431A: $40
    sbc a                                         ; $431B: $9F
    jr nz, jr_004_42ED                            ; $431C: $20 $CF

    rra                                           ; $431E: $1F
    dec b                                         ; $431F: $05
    ldh [$FF08], a                                ; $4320: $E0 $08
    ldh a, [$FF84]                                ; $4322: $F0 $84
    ld a, c                                       ; $4324: $79
    ld [hl], h                                    ; $4325: $74
    ret nz                                        ; $4326: $C0

    ld [hl], b                                    ; $4327: $70
    ld e, l                                       ; $4328: $5D
    ld h, b                                       ; $4329: $60
    ld [hl], b                                    ; $432A: $70
    jr nc, jr_004_439D                            ; $432B: $30 $70

    add b                                         ; $432D: $80
    ld [hl], b                                    ; $432E: $70
    rrca                                          ; $432F: $0F
    ld [hl], b                                    ; $4330: $70
    ld e, a                                       ; $4331: $5F
    add [hl]                                      ; $4332: $86
    ld [hl], b                                    ; $4333: $70
    cp $08                                        ; $4334: $FE $08
    sub c                                         ; $4336: $91
    rrca                                          ; $4337: $0F
    ld a, [bc]                                    ; $4338: $0A
    ld [hl], b                                    ; $4339: $70
    ld h, b                                       ; $433A: $60
    ld bc, $0D57                                  ; $433B: $01 $57 $0D
    jp nz, Jump_004_613C                          ; $433E: $C2 $3C $61

    ld e, $30                                     ; $4341: $1E $30
    nop                                           ; $4343: $00
    adc a                                         ; $4344: $8F
    jr jr_004_430E                                ; $4345: $18 $C7

    inc c                                         ; $4347: $0C
    db $E3                                        ; $4348: $E3
    ld b, $F1                                     ; $4349: $06 $F1
    inc bc                                        ; $434B: $03
    ld d, l                                       ; $434C: $55
    ld hl, sp-$20                                 ; $434D: $F8 $E0
    db $FC                                        ; $434F: $FC
    ld [hl], b                                    ; $4350: $70
    jp $E170                                      ; $4351: $C3 $70 $E1


jr_004_4354:
    ld [hl], b                                    ; $4354: $70
    ld d, l                                       ; $4355: $55

jr_004_4356:
    ld [hl], b                                    ; $4356: $70
    ld [hl], b                                    ; $4357: $70
    jr c, @+$72                                   ; $4358: $38 $70

jr_004_435A:
    inc e                                         ; $435A: $1C
    ld [hl], b                                    ; $435B: $70
    ld c, $70                                     ; $435C: $0E $70
    ld h, h                                       ; $435E: $64
    rlca                                          ; $435F: $07
    ld [hl], b                                    ; $4360: $70
    sub b                                         ; $4361: $90

jr_004_4362:
    nop                                           ; $4362: $00
    rst RST_38                                    ; $4363: $FF
    ld [$817E], sp                                ; $4364: $08 $7E $81
    adc c                                         ; $4367: $89
    and b                                         ; $4368: $A0
    ld b, d                                       ; $4369: $42
    sbc c                                         ; $436A: $99
    inc h                                         ; $436B: $24
    cp b                                          ; $436C: $B8
    jr jr_004_4356                                ; $436D: $18 $E7

    ld e, c                                       ; $436F: $59
    ei                                            ; $4370: $FB
    ld c, b                                       ; $4371: $48
    ld e, b                                       ; $4372: $58
    ld [hl], h                                    ; $4373: $74
    ld e, b                                       ; $4374: $58
    ld [hl], b                                    ; $4375: $70
    ld h, [hl]                                    ; $4376: $66
    db $10                                        ; $4377: $10
    jr nz, jr_004_435A                            ; $4378: $20 $E0

    ld [hl], b                                    ; $437A: $70

jr_004_437B:
    add b                                         ; $437B: $80
    ld e, e                                       ; $437C: $5B
    db $10                                        ; $437D: $10
    ld e, $04                                     ; $437E: $1E $04
    ld b, $01                                     ; $4380: $06 $01
    ld [$6838], a                                 ; $4382: $EA $38 $68
    ld [$0837], sp                                ; $4385: $08 $37 $08
    ccf                                           ; $4388: $3F
    ld [$D73E], sp                                ; $4389: $08 $3E $D7
    ld a, [de]                                    ; $438C: $1A
    ld [hl], b                                    ; $438D: $70
    pop hl                                        ; $438E: $E1
    ld [hl], b                                    ; $438F: $70
    ld sp, hl                                     ; $4390: $F9
    jr nz, jr_004_4354                            ; $4391: $20 $C1

    rrca                                          ; $4393: $0F
    ret nc                                        ; $4394: $D0

    ld [$FE35], sp                                ; $4395: $08 $35 $FE
    ld [$01FC], sp                                ; $4398: $08 $FC $01
    jr c, jr_004_43A0                             ; $439B: $38 $03

jr_004_439D:
    ld e, a                                       ; $439D: $5F
    jr jr_004_43A8                                ; $439E: $18 $08

jr_004_43A0:
    inc c                                         ; $43A0: $0C
    jr z, jr_004_4362                             ; $43A1: $28 $BF

    ld b, b                                       ; $43A3: $40
    sub b                                         ; $43A4: $90
    ld h, b                                       ; $43A5: $60
    rst RST_28                                    ; $43A6: $EF
    sub b                                         ; $43A7: $90

jr_004_43A8:
    add hl, bc                                    ; $43A8: $09
    add hl, hl                                    ; $43A9: $29
    ccf                                           ; $43AA: $3F
    ld d, b                                       ; $43AB: $50
    rrca                                          ; $43AC: $0F
    dec c                                         ; $43AD: $0D
    rst RST_38                                    ; $43AE: $FF
    and b                                         ; $43AF: $A0
    rrca                                          ; $43B0: $0F
    add [hl]                                      ; $43B1: $86

jr_004_43B2:
    db $10                                        ; $43B2: $10
    jp $E118                                      ; $43B3: $C3 $18 $E1


    inc c                                         ; $43B6: $0C
    ldh a, [$FF03]                                ; $43B7: $F0 $03
    ld b, $F8                                     ; $43B9: $06 $F8
    inc bc                                        ; $43BB: $03
    db $FC                                        ; $43BC: $FC
    ld bc, $82FE                                  ; $43BD: $01 $FE $82
    ld de, $70AB                                  ; $43C0: $11 $AB $70
    rst RST_20                                    ; $43C3: $E7
    ld [hl], b                                    ; $43C4: $70
    di                                            ; $43C5: $F3
    ld [hl], b                                    ; $43C6: $70
    ld sp, hl                                     ; $43C7: $F9
    halt                                          ; $43C8: $76
    ld [$1197], sp                                ; $43C9: $08 $97 $11
    cp e                                          ; $43CC: $BB
    jr c, jr_004_4417                             ; $43CD: $38 $48

    ld a, a                                       ; $43CF: $7F
    ld c, e                                       ; $43D0: $4B
    rrca                                          ; $43D1: $0F
    ld [hl], b                                    ; $43D2: $70
    ld e, b                                       ; $43D3: $58
    rst RST_00                                    ; $43D4: $C7
    ld [hl], b                                    ; $43D5: $70
    add b                                         ; $43D6: $80
    ld h, a                                       ; $43D7: $67
    add hl, bc                                    ; $43D8: $09
    add sp, $0F                                   ; $43D9: $E8 $0F
    db $FD                                        ; $43DB: $FD
    add [hl]                                      ; $43DC: $86
    ldh a, [c]                                    ; $43DD: $F2
    cpl                                           ; $43DE: $2F
    ldh [rTIMA], a                                ; $43DF: $E0 $05
    db $FC                                        ; $43E1: $FC
    add l                                         ; $43E2: $85
    ld [hl], b                                    ; $43E3: $70
    ldh a, [$FFB5]                                ; $43E4: $F0 $B5
    ld [hl], b                                    ; $43E6: $70
    cp $29                                        ; $43E7: $FE $29
    ld [hl], b                                    ; $43E9: $70
    rra                                           ; $43EA: $1F
    ld [hl], b                                    ; $43EB: $70
    inc bc                                        ; $43EC: $03
    db $FD                                        ; $43ED: $FD
    push bc                                       ; $43EE: $C5

jr_004_43EF:
    ld [de], a                                    ; $43EF: $12
    ldh a, [$FF80]                                ; $43F0: $F0 $80
    ccf                                           ; $43F2: $3F
    ret nz                                        ; $43F3: $C0

    ld a, b                                       ; $43F4: $78
    ld h, b                                       ; $43F5: $60
    jr nc, jr_004_43EF                            ; $43F6: $30 $F7

    jr nz, @+$32                                  ; $43F8: $20 $30

    ld e, e                                       ; $43FA: $5B
    halt                                          ; $43FB: $76
    ldh [$FF59], a                                ; $43FC: $E0 $59
    jr nc, jr_004_445C                            ; $43FE: $30 $5C

    cp $9A                                        ; $4400: $FE $9A
    dec c                                         ; $4402: $0D
    dec d                                         ; $4403: $15
    ld [$5F77], sp                                ; $4404: $08 $77 $5F
    dec sp                                        ; $4407: $3B
    and b                                         ; $4408: $A0
    ld [$F43F], sp                                ; $4409: $08 $3F $F4
    rlca                                          ; $440C: $07
    cp $30                                        ; $440D: $FE $30
    cp a                                          ; $440F: $BF
    add b                                         ; $4410: $80
    rla                                           ; $4411: $17
    ld a, [hl-]                                   ; $4412: $3A
    ldh a, [rSC]                                  ; $4413: $F0 $02
    jr nc, jr_004_43B2                            ; $4415: $30 $9B

jr_004_4417:
    ld [hl], b                                    ; $4417: $70
    ret nz                                        ; $4418: $C0

    ld [hl], b                                    ; $4419: $70
    ld hl, sp-$2B                                 ; $441A: $F8 $D5
    ld sp, $7F70                                  ; $441C: $31 $70 $7F
    ld [hl], b                                    ; $441F: $70
    rrca                                          ; $4420: $0F
    ld [hl], b                                    ; $4421: $70
    ld bc, $AA7B                                  ; $4422: $01 $7B $AA
    ld [$0840], sp                                ; $4425: $08 $40 $08
    ld h, b                                       ; $4428: $60
    ld [$0870], sp                                ; $4429: $08 $70 $08
    ld a, b                                       ; $442C: $78

jr_004_442D:
    rrca                                          ; $442D: $0F
    db $FC                                        ; $442E: $FC
    ld a, e                                       ; $442F: $7B
    db $FD                                        ; $4430: $FD
    ld a, d                                       ; $4431: $7A
    ld h, b                                       ; $4432: $60
    nop                                           ; $4433: $00
    or b                                          ; $4434: $B0
    ld sp, hl                                     ; $4435: $F9
    cp d                                          ; $4436: $BA
    ld [$081F], sp                                ; $4437: $08 $1F $08
    ret nc                                        ; $443A: $D0

    ld [$0807], sp                                ; $443B: $08 $07 $08
    inc b                                         ; $443E: $04
    push hl                                       ; $443F: $E5
    ld a, [bc]                                    ; $4440: $0A
    di                                            ; $4441: $F3
    ld [$01FE], sp                                ; $4442: $08 $FE $01
    ret nc                                        ; $4445: $D0

    inc bc                                        ; $4446: $03
    ld [hl+], a                                   ; $4447: $22
    db $FC                                        ; $4448: $FC
    ld c, e                                       ; $4449: $4B
    ld [hl], a                                    ; $444A: $77
    ld sp, $5A20                                  ; $444B: $31 $20 $5A
    ld c, c                                       ; $444E: $49
    db $FD                                        ; $444F: $FD
    ld a, d                                       ; $4450: $7A
    db $DD                                        ; $4451: $DD
    rrca                                          ; $4452: $0F
    dec c                                         ; $4453: $0D
    inc b                                         ; $4454: $04
    sbc b                                         ; $4455: $98
    rrca                                          ; $4456: $0F
    dec c                                         ; $4457: $0D
    rst RST_38                                    ; $4458: $FF
    rrca                                          ; $4459: $0F
    db $FD                                        ; $445A: $FD
    ld a, [bc]                                    ; $445B: $0A

jr_004_445C:
    ld de, $6F1A                                  ; $445C: $11 $1A $6F
    ld a, e                                       ; $445F: $7B
    ld l, a                                       ; $4460: $6F
    xor d                                         ; $4461: $AA
    ld [$557F], sp                                ; $4462: $08 $7F $55
    pop de                                        ; $4465: $D1
    ld bc, $9B33                                  ; $4466: $01 $33 $9B
    jr c, jr_004_446B                             ; $4469: $38 $00

jr_004_446B:
    jr c, @+$01                                   ; $446B: $38 $FF

    ld a, h                                       ; $446D: $7C
    inc bc                                        ; $446E: $03
    db $F4                                        ; $446F: $F4
    ld [hl], c                                    ; $4470: $71
    pop de                                        ; $4471: $D1
    ld b, d                                       ; $4472: $42
    jr nz, jr_004_447D                            ; $4473: $20 $08

    ld hl, sp+$38                                 ; $4475: $F8 $38
    add hl, hl                                    ; $4477: $29
    rlca                                          ; $4478: $07
    rlca                                          ; $4479: $07
    adc b                                         ; $447A: $88
    rra                                           ; $447B: $1F
    ret nz                                        ; $447C: $C0

jr_004_447D:
    rrca                                          ; $447D: $0F
    ld bc, $06E0                                  ; $447E: $01 $E0 $06
    ldh a, [$FF03]                                ; $4481: $F0 $03
    ld hl, sp+$01                                 ; $4483: $F8 $01
    db $FC                                        ; $4485: $FC
    ld d, b                                       ; $4486: $50
    ld [hl], a                                    ; $4487: $77
    cp $F1                                        ; $4488: $FE $F1
    add hl, bc                                    ; $448A: $09
    ld [hl], b                                    ; $448B: $70
    ccf                                           ; $448C: $3F
    ld [hl], b                                    ; $448D: $70
    sub b                                         ; $448E: $90
    ld [hl], b                                    ; $448F: $70
    rst RST_18                                    ; $4490: $DF
    sub b                                         ; $4491: $90
    ld [hl], b                                    ; $4492: $70
    rlca                                          ; $4493: $07
    ld [hl], b                                    ; $4494: $70
    sub b                                         ; $4495: $90
    ld [hl], b                                    ; $4496: $70
    sub b                                         ; $4497: $90
    ld [hl], d                                    ; $4498: $72
    cp [hl]                                       ; $4499: $BE
    ld a, [bc]                                    ; $449A: $0A
    ld a, a                                       ; $449B: $7F
    ld [$0890], sp                                ; $449C: $08 $90 $08
    sub b                                         ; $449F: $90
    ld [$878F], sp                                ; $44A0: $08 $8F $87
    ld [$30C7], sp                                ; $44A3: $08 $C7 $30
    ld h, e                                       ; $44A6: $63
    jr jr_004_442D                                ; $44A7: $18 $84

    ld c, $70                                     ; $44A9: $0E $70
    ld d, h                                       ; $44AB: $54
    rst RST_08                                    ; $44AC: $CF
    ld [hl], b                                    ; $44AD: $70
    rst RST_20                                    ; $44AE: $E7
    ld e, a                                       ; $44AF: $5F
    ld bc, $0508                                  ; $44B0: $01 $08 $05
    db $FC                                        ; $44B3: $FC
    ld c, $16                                     ; $44B4: $0E $16
    ldh a, [$FF5A]                                ; $44B6: $F0 $5A
    jp $09E7                                      ; $44B8: $C3 $E7 $09


    ld [hl], b                                    ; $44BB: $70
    inc bc                                        ; $44BC: $03
    and b                                         ; $44BD: $A0
    ld [hl], b                                    ; $44BE: $70
    rrca                                          ; $44BF: $0F
    ld [hl], b                                    ; $44C0: $70
    inc a                                         ; $44C1: $3C
    ld sp, $188C                                  ; $44C2: $31 $8C $18
    add $04                                       ; $44C5: $C6 $04
    inc l                                         ; $44C7: $2C
    db $E3                                        ; $44C8: $E3
    ld e, [hl]                                    ; $44C9: $5E
    pop bc                                        ; $44CA: $C1
    ld h, a                                       ; $44CB: $67
    ld a, b                                       ; $44CC: $78
    and a                                         ; $44CD: $A7
    jr nc, jr_004_452A                            ; $44CE: $30 $5A

    add a                                         ; $44D0: $87
    add b                                         ; $44D1: $80
    rlca                                          ; $44D2: $07
    ld [$7370], sp                                ; $44D3: $08 $70 $73
    ld [hl], b                                    ; $44D6: $70
    add hl, sp                                    ; $44D7: $39
    xor d                                         ; $44D8: $AA
    ld [hl], b                                    ; $44D9: $70
    inc e                                         ; $44DA: $1C
    ld [hl], b                                    ; $44DB: $70
    ld a, $70                                     ; $44DC: $3E $70
    rst RST_38                                    ; $44DE: $FF
    ld [hl], b                                    ; $44DF: $70
    rst RST_08                                    ; $44E0: $CF
    reti                                          ; $44E1: $D9


    ld sp, hl                                     ; $44E2: $F9
    add hl, bc                                    ; $44E3: $09
    add b                                         ; $44E4: $80
    ld b, b                                       ; $44E5: $40
    ld [$C07F], sp                                ; $44E6: $08 $7F $C0
    ld [$18B5], sp                                ; $44E9: $08 $B5 $18
    ccf                                           ; $44EC: $3F
    jr jr_004_44F9                                ; $44ED: $18 $0A

    ldh [rNR24], a                                ; $44EF: $E0 $19
    rra                                           ; $44F1: $1F
    cp c                                          ; $44F2: $B9
    rst RST_38                                    ; $44F3: $FF
    ld h, c                                       ; $44F4: $61
    halt                                          ; $44F5: $76
    ld a, [bc]                                    ; $44F6: $0A
    ld [hl], b                                    ; $44F7: $70
    sub b                                         ; $44F8: $90

jr_004_44F9:
    ld a, b                                       ; $44F9: $78
    ld bc, $F288                                  ; $44FA: $01 $88 $F2
    rrca                                          ; $44FD: $0F
    dec c                                         ; $44FE: $0D
    ld b, a                                       ; $44FF: $47
    dec c                                         ; $4500: $0D
    ldh [$FF1F], a                                ; $4501: $E0 $1F
    add hl, bc                                    ; $4503: $09
    ld [hl], c                                    ; $4504: $71
    add b                                         ; $4505: $80
    ld [$882B], sp                                ; $4506: $08 $2B $88
    dec e                                         ; $4509: $1D
    pop bc                                        ; $450A: $C1
    add sp, $0F                                   ; $450B: $E8 $0F
    and b                                         ; $450D: $A0

jr_004_450E:
    dec e                                         ; $450E: $1D
    ccf                                           ; $450F: $3F
    ret nz                                        ; $4510: $C0

    ld a, a                                       ; $4511: $7F
    ld [hl], d                                    ; $4512: $72
    ld a, [bc]                                    ; $4513: $0A
    ld [hl], b                                    ; $4514: $70
    ld [hl], a                                    ; $4515: $77
    ld [hl], b                                    ; $4516: $70
    ld d, b                                       ; $4517: $50
    ld a, $70                                     ; $4518: $3E $70
    ldh a, [$FF72]                                ; $451A: $F0 $72
    add b                                         ; $451C: $80
    dec b                                         ; $451D: $05
    db $FC                                        ; $451E: $FC
    ld l, $93                                     ; $451F: $2E $93
    ld l, b                                       ; $4521: $68
    ld [hl], h                                    ; $4522: $74
    rlca                                          ; $4523: $07
    ret                                           ; $4524: $C9


    nop                                           ; $4525: $00
    rst RST_38                                    ; $4526: $FF
    dec c                                         ; $4527: $0D
    ld [hl], b                                    ; $4528: $70
    ld l, a                                       ; $4529: $6F

jr_004_452A:
    inc bc                                        ; $452A: $03
    pop af                                        ; $452B: $F1
    ld [hl], b                                    ; $452C: $70
    ld hl, sp-$37                                 ; $452D: $F8 $C9
    halt                                          ; $452F: $76
    ld [$4000], sp                                ; $4530: $08 $00 $40
    ld bc, $02CF                                  ; $4533: $01 $CF $02
    cp $17                                        ; $4536: $FE $17
    ldh a, [$FFBA]                                ; $4538: $F0 $BA
    add e                                         ; $453A: $83
    db $FD                                        ; $453B: $FD
    ld [hl], b                                    ; $453C: $70
    jr z, jr_004_450E                             ; $453D: $28 $CF

    ld b, b                                       ; $453F: $40
    ld d, b                                       ; $4540: $50
    ld [hl], b                                    ; $4541: $70
    rrca                                          ; $4542: $0F
    ld [hl], b                                    ; $4543: $70
    ld c, $7C                                     ; $4544: $0E $7C
    ret nc                                        ; $4546: $D0

    rra                                           ; $4547: $1F
    add b                                         ; $4548: $80
    add a                                         ; $4549: $87
    inc c                                         ; $454A: $0C
    ld [hl], b                                    ; $454B: $70
    ldh [$FFEB], a                                ; $454C: $E0 $EB
    ld d, a                                       ; $454E: $57
    dec c                                         ; $454F: $0D
    inc bc                                        ; $4550: $03
    xor d                                         ; $4551: $AA
    nop                                           ; $4552: $00
    ld d, l                                       ; $4553: $55
    nop                                           ; $4554: $00
    ld c, b                                       ; $4555: $48
    rst RST_38                                    ; $4556: $FF
    ld [bc], a                                    ; $4557: $02
    jr nc, jr_004_4562                            ; $4558: $30 $08

    inc [hl]                                      ; $455A: $34
    ld a, [hl+]                                   ; $455B: $2A
    ld c, c                                       ; $455C: $49
    or $61                                        ; $455D: $F6 $61
    rst RST_38                                    ; $455F: $FF
    ld [hl+], a                                   ; $4560: $22
    ld a, b                                       ; $4561: $78

jr_004_4562:
    ld [$0878], sp                                ; $4562: $08 $78 $08
    inc bc                                        ; $4565: $03
    jr z, jr_004_4568                             ; $4566: $28 $00

jr_004_4568:
    cp [hl]                                       ; $4568: $BE
    ld c, b                                       ; $4569: $48
    ld d, h                                       ; $456A: $54
    cp a                                          ; $456B: $BF
    dec bc                                        ; $456C: $0B
    ld [hl], d                                    ; $456D: $72
    db $10                                        ; $456E: $10
    db $FD                                        ; $456F: $FD
    xor [hl]                                      ; $4570: $AE
    nop                                           ; $4571: $00
    ld bc, $0708                                  ; $4572: $01 $08 $07
    ret nc                                        ; $4575: $D0

jr_004_4576:
    rrca                                          ; $4576: $0F
    or b                                          ; $4577: $B0
    ld c, a                                       ; $4578: $4F

jr_004_4579:
    dec c                                         ; $4579: $0D
    ld d, l                                       ; $457A: $55
    ld [hl], d                                    ; $457B: $72
    call z, Call_000_08FE                         ; $457C: $CC $FE $08
    ld hl, sp+$08                                 ; $457F: $F8 $08
    pop af                                        ; $4581: $F1
    ld [$2766], sp                                ; $4582: $08 $66 $27
    ld [$8088], sp                                ; $4585: $08 $88 $80
    sub d                                         ; $4588: $92
    ld [hl], e                                    ; $4589: $73
    add hl, bc                                    ; $458A: $09
    ccf                                           ; $458B: $3F
    ld [$3BE3], sp                                ; $458C: $08 $E3 $3B
    pop de                                        ; $458F: $D1
    ld e, c                                       ; $4590: $59
    ldh a, [$FF98]                                ; $4591: $F0 $98
    ld [hl], b                                    ; $4593: $70
    inc a                                         ; $4594: $3C
    ld h, b                                       ; $4595: $60
    ldh [$FF74], a                                ; $4596: $E0 $74
    ld bc, $0463                                  ; $4598: $01 $63 $04
    push de                                       ; $459B: $D5
    ld b, $B6                                     ; $459C: $06 $B6
    ld e, $07                                     ; $459E: $1E $07
    ld [hl], a                                    ; $45A0: $77
    inc bc                                        ; $45A1: $03
    jr c, jr_004_4617                             ; $45A2: $38 $73

    ld d, b                                       ; $45A4: $50
    ld [$09FA], sp                                ; $45A5: $08 $FA $09
    ret nz                                        ; $45A8: $C0

    ld hl, sp-$10                                 ; $45A9: $F8 $F0
    db $FD                                        ; $45AB: $FD
    db $10                                        ; $45AC: $10
    cp $78                                        ; $45AD: $FE $78

jr_004_45AF:
    nop                                           ; $45AF: $00
    ld d, l                                       ; $45B0: $55
    jr nz, jr_004_45AF                            ; $45B1: $20 $FC

    ccf                                           ; $45B3: $3F
    ld [$08CF], sp                                ; $45B4: $08 $CF $08
    rst RST_30                                    ; $45B7: $F7
    and c                                         ; $45B8: $A1
    ld a, [bc]                                    ; $45B9: $0A
    ld bc, $8779                                  ; $45BA: $01 $79 $87
    and a                                         ; $45BD: $A7
    ld [hl], e                                    ; $45BE: $73
    ld d, l                                       ; $45BF: $55
    ld [$D5AA], sp                                ; $45C0: $08 $AA $D5
    ld [$8001], sp                                ; $45C3: $08 $01 $80
    add hl, hl                                    ; $45C6: $29
    ld a, [hl+]                                   ; $45C7: $2A
    ld c, b                                       ; $45C8: $48
    dec d                                         ; $45C9: $15
    db $FC                                        ; $45CA: $FC
    xor b                                         ; $45CB: $A8
    dec c                                         ; $45CC: $0D
    ld a, a                                       ; $45CD: $7F
    ld [hl], c                                    ; $45CE: $71
    sub l                                         ; $45CF: $95
    sub b                                         ; $45D0: $90
    ld l, b                                       ; $45D1: $68
    rrca                                          ; $45D2: $0F
    and b                                         ; $45D3: $A0
    nop                                           ; $45D4: $00
    ccf                                           ; $45D5: $3F
    add c                                         ; $45D6: $81
    inc a                                         ; $45D7: $3C
    add a                                         ; $45D8: $87
    jr nc, jr_004_4579                            ; $45D9: $30 $9E

    jr nz, jr_004_4576                            ; $45DB: $20 $99

    dec b                                         ; $45DD: $05
    ld hl, $2794                                  ; $45DE: $21 $94 $27
    sub b                                         ; $45E1: $90
    cpl                                           ; $45E2: $2F
    ld [hl], b                                    ; $45E3: $70
    ldh a, [rSVBK]                                ; $45E4: $F0 $70
    ld d, l                                       ; $45E6: $55
    ret nz                                        ; $45E7: $C0

    ld [hl], b                                    ; $45E8: $70
    jp $CF70                                      ; $45E9: $C3 $70 $CF


    ld [hl], b                                    ; $45EC: $70
    rst RST_18                                    ; $45ED: $DF
    ld [hl], b                                    ; $45EE: $70
    ld d, d                                       ; $45EF: $52
    sbc $70                                       ; $45F0: $DE $70
    ret c                                         ; $45F2: $D8

    ld [hl], b                                    ; $45F3: $70

jr_004_45F4:
    ret nc                                        ; $45F4: $D0

    rlca                                          ; $45F5: $07
    ld a, b                                       ; $45F6: $78
    ld h, a                                       ; $45F7: $67
    cpl                                           ; $45F8: $2F
    db $10                                        ; $45F9: $10
    rst RST_20                                    ; $45FA: $E7
    ld [$08A7], sp                                ; $45FB: $08 $A7 $08
    ld e, b                                       ; $45FE: $58
    add hl, bc                                    ; $45FF: $09
    ldh [$FFD6], a                                ; $4600: $E0 $D6
    dec bc                                        ; $4602: $0B
    ld [hl], b                                    ; $4603: $70
    rrca                                          ; $4604: $0F
    ld b, b                                       ; $4605: $40
    rst RST_28                                    ; $4606: $EF
    dec c                                         ; $4607: $0D
    ld d, b                                       ; $4608: $50
    ld l, a                                       ; $4609: $6F
    cp e                                          ; $460A: $BB
    inc c                                         ; $460B: $0C
    cpl                                           ; $460C: $2F
    rrca                                          ; $460D: $0F
    dec c                                         ; $460E: $0D
    nop                                           ; $460F: $00
    ret nc                                        ; $4610: $D0

    rrca                                          ; $4611: $0F
    dec c                                         ; $4612: $0D
    halt                                          ; $4613: $76
    daa                                           ; $4614: $27
    sub b                                         ; $4615: $90
    rrca                                          ; $4616: $0F

jr_004_4617:
    add hl, bc                                    ; $4617: $09
    dec h                                         ; $4618: $25
    ld a, [bc]                                    ; $4619: $0A
    nop                                           ; $461A: $00
    ld l, a                                       ; $461B: $6F
    jp Jump_000_0D0F                              ; $461C: $C3 $0F $0D


    ret nz                                        ; $461F: $C0

    ld a, a                                       ; $4620: $7F
    add b                                         ; $4621: $80
    ccf                                           ; $4622: $3F
    jr jr_004_462F                                ; $4623: $18 $0A

    ld l, a                                       ; $4625: $6F
    ldh [$FF0A], a                                ; $4626: $E0 $0A
    jr z, @+$21                                   ; $4628: $28 $1F

    jr jr_004_4634                                ; $462A: $18 $08

    halt                                          ; $462C: $76
    inc c                                         ; $462D: $0C
    db $ED                                        ; $462E: $ED

jr_004_462F:
    ld [hl], d                                    ; $462F: $72
    ld [$F011], sp                                ; $4630: $08 $11 $F0
    ld a, [bc]                                    ; $4633: $0A

jr_004_4634:
    jr z, @+$11                                   ; $4634: $28 $0F

    jr jr_004_45F4                                ; $4636: $18 $BC

    ld a, [bc]                                    ; $4638: $0A
    ld hl, sp+$0A                                 ; $4639: $F8 $0A
    sbc e                                         ; $463B: $9B
    halt                                          ; $463C: $76
    inc c                                         ; $463D: $0C
    rst RST_38                                    ; $463E: $FF
    cp $91                                        ; $463F: $FE $91
    ld [$ABFD], sp                                ; $4641: $08 $FD $AB

jr_004_4644:
    ld [$FB57], sp                                ; $4644: $08 $57 $FB
    rlca                                          ; $4647: $07
    ld [$58AA], sp                                ; $4648: $08 $AA $58
    rst RST_30                                    ; $464B: $F7
    ld [$C8F6], sp                                ; $464C: $08 $F6 $C8
    xor $70                                       ; $464F: $EE $70
    nop                                           ; $4651: $00
    daa                                           ; $4652: $27
    db $FC                                        ; $4653: $FC
    ld bc, $F809                                  ; $4654: $01 $09 $F8
    inc bc                                        ; $4657: $03
    add hl, bc                                    ; $4658: $09
    ret nc                                        ; $4659: $D0

    sub b                                         ; $465A: $90
    adc e                                         ; $465B: $8B
    ld [$E006], sp                                ; $465C: $08 $06 $E0
    ld c, $78                                     ; $465F: $0E $78
    inc c                                         ; $4661: $0C
    jr nz, jr_004_46D4                            ; $4662: $20 $70

    ld e, [hl]                                    ; $4664: $5E
    inc b                                         ; $4665: $04
    ld h, b                                       ; $4666: $60
    rst RST_38                                    ; $4667: $FF
    ld [$2838], sp                                ; $4668: $08 $38 $28
    jr @+$40                                      ; $466B: $18 $3E

    dec bc                                        ; $466D: $0B

jr_004_466E:
    ccf                                           ; $466E: $3F
    rst RST_08                                    ; $466F: $CF
    dec a                                         ; $4670: $3D
    pop hl                                        ; $4671: $E1
    ret nc                                        ; $4672: $D0

    dec c                                         ; $4673: $0D
    add hl, bc                                    ; $4674: $09
    ret nc                                        ; $4675: $D0

    scf                                           ; $4676: $37

jr_004_4677:
    ei                                            ; $4677: $FB
    nop                                           ; $4678: $00

jr_004_4679:
    ld a, b                                       ; $4679: $78
    jr z, jr_004_4679                             ; $467A: $28 $FD

    jr jr_004_46F6                                ; $467C: $18 $78

    ld [$4F05], sp                                ; $467E: $08 $05 $4F
    ld [bc], a                                    ; $4681: $02
    ld h, e                                       ; $4682: $63
    scf                                           ; $4683: $37
    ld c, h                                       ; $4684: $4C
    xor b                                         ; $4685: $A8
    ld b, e                                       ; $4686: $43
    ld [$4100], sp                                ; $4687: $08 $00 $41
    rra                                           ; $468A: $1F
    ld h, c                                       ; $468B: $61
    rst RST_28                                    ; $468C: $EF
    jr jr_004_466E                                ; $468D: $18 $DF

    ld b, $47                                     ; $468F: $06 $47
    and l                                         ; $4691: $A5
    and b                                         ; $4692: $A0
    ld hl, $8090                                  ; $4693: $21 $90 $80
    adc h                                         ; $4696: $8C
    ld [$0883], sp                                ; $4697: $08 $83 $08
    ld e, b                                       ; $469A: $58
    add c                                         ; $469B: $81
    ld [$40E1], sp                                ; $469C: $08 $E1 $40
    ld a, b                                       ; $469F: $78
    jr nz, jr_004_46C8                            ; $46A0: $20 $26

    cp b                                          ; $46A2: $B8
    jr nz, @-$45                                  ; $46A3: $20 $B9

    sbc $00                                       ; $46A5: $DE $00
    ld a, d                                       ; $46A7: $7A
    ret nc                                        ; $46A8: $D0

    reti                                          ; $46A9: $D9


    jr nc, jr_004_4644                            ; $46AA: $30 $98

    ld d, [hl]                                    ; $46AC: $56
    ld [hl], b                                    ; $46AD: $70
    jr @-$4E                                      ; $46AE: $18 $B0

    add hl, bc                                    ; $46B0: $09
    ld a, [$0848]                                 ; $46B1: $FA $48 $08
    ld d, b                                       ; $46B4: $50
    nop                                           ; $46B5: $00
    db $FC                                        ; $46B6: $FC
    ld h, b                                       ; $46B7: $60
    dec b                                         ; $46B8: $05
    push de                                       ; $46B9: $D5
    ld b, $36                                     ; $46BA: $06 $36
    rlca                                          ; $46BC: $07
    scf                                           ; $46BD: $37
    cp b                                          ; $46BE: $B8
    jr jr_004_4677                                ; $46BF: $18 $B6

    add hl, bc                                    ; $46C1: $09
    ld c, c                                       ; $46C2: $49
    ld [$0355], sp                                ; $46C3: $08 $55 $03
    ld h, e                                       ; $46C6: $63
    inc b                                         ; $46C7: $04

jr_004_46C8:
    jr c, jr_004_46CA                             ; $46C8: $38 $00

jr_004_46CA:
    ld l, $10                                     ; $46CA: $2E $10
    ld l, a                                       ; $46CC: $6F
    ld [$30CF], sp                                ; $46CD: $08 $CF $30
    ld b, b                                       ; $46D0: $40
    cpl                                           ; $46D1: $2F
    jr @+$40                                      ; $46D2: $18 $3E

jr_004_46D4:
    ld bc, $2BDC                                  ; $46D4: $01 $DC $2B
    sbc l                                         ; $46D7: $9D
    ld l, d                                       ; $46D8: $6A
    ld d, l                                       ; $46D9: $55
    rst RST_00                                    ; $46DA: $C7
    nop                                           ; $46DB: $00
    ret                                           ; $46DC: $C9


    nop                                           ; $46DD: $00
    xor [hl]                                      ; $46DE: $AE
    nop                                           ; $46DF: $00
    rrca                                          ; $46E0: $0F
    nop                                           ; $46E1: $00
    ld c, b                                       ; $46E2: $48
    adc $00                                       ; $46E3: $CE $00
    pop bc                                        ; $46E5: $C1
    ret nz                                        ; $46E6: $C0

    add sp, $28                                   ; $46E7: $E8 $28
    ld [bc], a                                    ; $46E9: $02
    ld l, b                                       ; $46EA: $68
    ld b, l                                       ; $46EB: $45
    ld a, e                                       ; $46EC: $7B
    cp b                                          ; $46ED: $B8
    inc e                                         ; $46EE: $1C
    nop                                           ; $46EF: $00
    adc b                                         ; $46F0: $88
    ld [$08FF], sp                                ; $46F1: $08 $FF $08
    inc c                                         ; $46F4: $0C
    or a                                          ; $46F5: $B7

jr_004_46F6:
    ld c, b                                       ; $46F6: $48
    ld h, e                                       ; $46F7: $63
    sbc h                                         ; $46F8: $9C
    add hl, hl                                    ; $46F9: $29
    add hl, bc                                    ; $46FA: $09
    add h                                         ; $46FB: $84
    sub h                                         ; $46FC: $94
    ld d, [hl]                                    ; $46FD: $56
    db $E3                                        ; $46FE: $E3
    nop                                           ; $46FF: $00
    ld [hl], a                                    ; $4700: $77
    nop                                           ; $4701: $00
    add b                                         ; $4702: $80
    nop                                           ; $4703: $00
    ld [hl], b                                    ; $4704: $70
    dec d                                         ; $4705: $15
    xor l                                         ; $4706: $AD
    ld [hl], b                                    ; $4707: $70
    ld b, c                                       ; $4708: $41
    ld h, b                                       ; $4709: $60
    pop bc                                        ; $470A: $C1
    ld [$6600], sp                                ; $470B: $08 $00 $66
    ld [$9E55], sp                                ; $470E: $08 $55 $9E
    ld [$08BE], sp                                ; $4711: $08 $BE $08
    inc a                                         ; $4714: $3C
    ld [$0873], sp                                ; $4715: $08 $73 $08
    ld d, l                                       ; $4718: $55
    ld c, l                                       ; $4719: $4D
    ld [$08B1], sp                                ; $471A: $08 $B1 $08
    jp nz, $9908                                  ; $471D: $C2 $08 $99

    nop                                           ; $4720: $00
    ld [hl], l                                    ; $4721: $75
    ld h, c                                       ; $4722: $61
    nop                                           ; $4723: $00
    ret nz                                        ; $4724: $C0

    nop                                           ; $4725: $00

jr_004_4726:
    jp $8C00                                      ; $4726: $C3 $00 $8C


    nop                                           ; $4729: $00
    ld d, h                                       ; $472A: $54
    or d                                          ; $472B: $B2
    nop                                           ; $472C: $00
    ld c, [hl]                                    ; $472D: $4E
    nop                                           ; $472E: $00
    dec a                                         ; $472F: $3D
    nop                                           ; $4730: $00
    ld a, a                                       ; $4731: $7F
    ccf                                           ; $4732: $3F
    sub c                                         ; $4733: $91
    nop                                           ; $4734: $00
    rra                                           ; $4735: $1F
    ld a, [hl+]                                   ; $4736: $2A
    ld [$0F15], sp                                ; $4737: $08 $15 $0F
    sub b                                         ; $473A: $90
    ld [$8810], sp                                ; $473B: $08 $10 $88
    rlca                                          ; $473E: $07
    ld c, b                                       ; $473F: $48
    ld [$0344], sp                                ; $4740: $08 $44 $03
    cp a                                          ; $4743: $BF
    add b                                         ; $4744: $80
    jr nz, jr_004_4726                            ; $4745: $20 $DF

    ret nz                                        ; $4747: $C0

    add hl, bc                                    ; $4748: $09
    rst RST_28                                    ; $4749: $EF
    ldh [$FF6F], a                                ; $474A: $E0 $6F
    ld h, b                                       ; $474C: $60
    ld [hl], a                                    ; $474D: $77
    nop                                           ; $474E: $00
    ld [hl], b                                    ; $474F: $70
    or a                                          ; $4750: $B7
    or b                                          ; $4751: $B0
    cp e                                          ; $4752: $BB
    cp b                                          ; $4753: $B8
    ld c, $00                                     ; $4754: $0E $00
    ld a, $A9                                     ; $4756: $3E $A9
    ld [$0AFF], sp                                ; $4758: $08 $FF $0A
    cp $0A                                        ; $475B: $FE $0A
    rst RST_30                                    ; $475D: $F7
    ld a, [bc]                                    ; $475E: $0A
    ld [$0B2E], sp                                ; $475F: $08 $2E $0B
    pop af                                        ; $4762: $F1
    nop                                           ; $4763: $00
    call $8800                                    ; $4764: $CD $00 $88
    nop                                           ; $4767: $00
    db $FC                                        ; $4768: $FC
    xor d                                         ; $4769: $AA
    nop                                           ; $476A: $00
    ld bc, $E101                                  ; $476B: $01 $01 $E1
    add b                                         ; $476E: $80
    ld [$2B08], a                                 ; $476F: $EA $08 $2B
    ld d, l                                       ; $4772: $55
    daa                                           ; $4773: $27
    db $10                                        ; $4774: $10
    jr nz, @+$0A                                  ; $4775: $20 $08

    db $10                                        ; $4777: $10
    ld [$2AF0], sp                                ; $4778: $08 $F0 $2A
    ld d, c                                       ; $477B: $51
    ld b, c                                       ; $477C: $41
    ld [$9087], sp                                ; $477D: $08 $87 $90
    sbc a                                         ; $4780: $9F
    inc bc                                        ; $4781: $03
    ret c                                         ; $4782: $D8

    nop                                           ; $4783: $00
    ld d, [hl]                                    ; $4784: $56
    rst RST_18                                    ; $4785: $DF
    nop                                           ; $4786: $00
    rst RST_28                                    ; $4787: $EF
    nop                                           ; $4788: $00
    rrca                                          ; $4789: $0F
    nop                                           ; $478A: $00
    add hl, hl                                    ; $478B: $29
    cp [hl]                                       ; $478C: $BE
    add c                                         ; $478D: $81
    nop                                           ; $478E: $00
    ld a, b                                       ; $478F: $78
    ld a, c                                       ; $4790: $79
    ld h, b                                       ; $4791: $60
    ld h, e                                       ; $4792: $63

jr_004_4793:
    sub b                                         ; $4793: $90
    cpl                                           ; $4794: $2F
    dec bc                                        ; $4795: $0B
    cp $B8                                        ; $4796: $FE $B8
    ldh a, [$FF0B]                                ; $4798: $F0 $0B
    jr c, jr_004_47A5                             ; $479A: $38 $09

    ld c, b                                       ; $479C: $48
    nop                                           ; $479D: $00
    ret nc                                        ; $479E: $D0

    ei                                            ; $479F: $FB
    dec bc                                        ; $47A0: $0B
    ld b, b                                       ; $47A1: $40
    add sp, $0D                                   ; $47A2: $E8 $0D
    ld c, c                                       ; $47A4: $49

jr_004_47A5:
    dec h                                         ; $47A5: $25
    sub b                                         ; $47A6: $90
    add hl, bc                                    ; $47A7: $09
    ld c, a                                       ; $47A8: $4F
    inc h                                         ; $47A9: $24
    ld [$10E4], sp                                ; $47AA: $08 $E4 $10
    dec bc                                        ; $47AD: $0B
    jr c, jr_004_47B9                             ; $47AE: $38 $09

    ld c, b                                       ; $47B0: $48
    or [hl]                                       ; $47B1: $B6
    nop                                           ; $47B2: $00
    ld l, a                                       ; $47B3: $6F
    dec bc                                        ; $47B4: $0B
    ld b, b                                       ; $47B5: $40
    rst RST_28                                    ; $47B6: $EF
    dec c                                         ; $47B7: $0D
    ld e, d                                       ; $47B8: $5A

jr_004_47B9:
    cpl                                           ; $47B9: $2F
    jp nz, $090F                                  ; $47BA: $C2 $0F $09

    sbc h                                         ; $47BD: $9C
    inc hl                                        ; $47BE: $23
    sbc [hl]                                      ; $47BF: $9E
    dec l                                         ; $47C0: $2D
    jr nz, jr_004_4793                            ; $47C1: $20 $D0

    pop af                                        ; $47C3: $F1
    rrca                                          ; $47C4: $0F
    add hl, bc                                    ; $47C5: $09
    ld [hl], b                                    ; $47C6: $70
    ld [$C021], sp                                ; $47C7: $08 $21 $C0
    inc h                                         ; $47CA: $24
    or b                                          ; $47CB: $B0
    xor d                                         ; $47CC: $AA
    dec c                                         ; $47CD: $0D
    ld h, $08                                     ; $47CE: $26 $08
    daa                                           ; $47D0: $27
    dec de                                        ; $47D1: $1B
    sub e                                         ; $47D2: $93
    db $10                                        ; $47D3: $10
    ld l, a                                       ; $47D4: $6F
    call nz, Call_000_080F                        ; $47D5: $C4 $0F $08
    ld l, [hl]                                    ; $47D8: $6E
    sub c                                         ; $47D9: $91
    ld l, l                                       ; $47DA: $6D
    jr jr_004_4848                                ; $47DB: $18 $6B

    ldh a, [$FF28]                                ; $47DD: $F0 $28
    rlca                                          ; $47DF: $07
    ld hl, sp+$0C                                 ; $47E0: $F8 $0C
    db $FC                                        ; $47E2: $FC
    ld [$0378], sp                                ; $47E3: $08 $78 $03
    ld a, h                                       ; $47E6: $7C
    db $FD                                        ; $47E7: $FD
    ld a, [bc]                                    ; $47E8: $0A
    halt                                          ; $47E9: $76
    ld a, [bc]                                    ; $47EA: $0A
    ld d, b                                       ; $47EB: $50
    sub b                                         ; $47EC: $90
    dec bc                                        ; $47ED: $0B
    inc a                                         ; $47EE: $3C
    db $10                                        ; $47EF: $10
    ld h, l                                       ; $47F0: $65
    ld a, $08                                     ; $47F1: $3E $08
    jr @+$03                                      ; $47F3: $18 $01

    ld e, $0A                                     ; $47F5: $1E $0A
    rst RST_38                                    ; $47F7: $FF
    add hl, bc                                    ; $47F8: $09
    dec de                                        ; $47F9: $1B
    nop                                           ; $47FA: $00
    cp a                                          ; $47FB: $BF
    add b                                         ; $47FC: $80
    sbc e                                         ; $47FD: $9B
    ld b, b                                       ; $47FE: $40
    cp $0C                                        ; $47FF: $FE $0C
    ld l, b                                       ; $4801: $68
    ret c                                         ; $4802: $D8

    stop                                          ; $4803: $10 $00
    ld a, a                                       ; $4805: $7F
    sub c                                         ; $4806: $91
    inc c                                         ; $4807: $0C
    ld c, $F1                                     ; $4808: $0E $F1
    rrca                                          ; $480A: $0F
    ld b, c                                       ; $480B: $41
    or $08                                        ; $480C: $F6 $08
    rst RST_30                                    ; $480E: $F7
    adc a                                         ; $480F: $8F
    ld [hl], a                                    ; $4810: $77
    rst RST_28                                    ; $4811: $EF
    inc d                                         ; $4812: $14
    add l                                         ; $4813: $85
    call nc, $0870                                ; $4814: $D4 $70 $08
    ldh a, [$FF0A]                                ; $4817: $F0 $0A
    ld [hl], b                                    ; $4819: $70
    ld [$8090], sp                                ; $481A: $08 $90 $80
    ldh [$FFFD], a                                ; $481D: $E0 $FD
    add hl, bc                                    ; $481F: $09
    ld b, b                                       ; $4820: $40
    ld a, a                                       ; $4821: $7F
    ret nz                                        ; $4822: $C0

    ccf                                           ; $4823: $3F
    pop hl                                        ; $4824: $E1
    ld e, $3D                                     ; $4825: $1E $3D
    and $19                                       ; $4827: $E6 $19
    halt                                          ; $4829: $76
    ld [$0870], sp                                ; $482A: $08 $70 $08
    cp a                                          ; $482D: $BF
    ld [$DE50], sp                                ; $482E: $08 $50 $DE
    ld [$08D8], sp                                ; $4831: $08 $D8 $08
    ld [hl], e                                    ; $4834: $73
    db $EC                                        ; $4835: $EC
    ldh [$FF5F], a                                ; $4836: $E0 $5F
    nop                                           ; $4838: $00
    ld h, b                                       ; $4839: $60
    sbc a                                         ; $483A: $9F
    ld h, $D9                                     ; $483B: $26 $D9
    dec d                                         ; $483D: $15
    ld [$F30C], a                                 ; $483E: $EA $0C $F3
    ld e, $06                                     ; $4841: $1E $06
    ei                                            ; $4843: $FB
    rst RST_00                                    ; $4844: $C7
    ld [$7080], sp                                ; $4845: $08 $80 $70

jr_004_4848:
    ld [$A953], sp                                ; $4848: $08 $53 $A9
    ld [$0807], sp                                ; $484B: $08 $07 $08
    add hl, bc                                    ; $484E: $09
    ld [$0208], sp                                ; $484F: $08 $08 $02
    nop                                           ; $4852: $00
    ld [hl], l                                    ; $4853: $75
    jp $9000                                      ; $4854: $C3 $00 $90


    nop                                           ; $4857: $00
    rst RST_30                                    ; $4858: $F7
    adc b                                         ; $4859: $88
    rst RST_38                                    ; $485A: $FF
    add hl, bc                                    ; $485B: $09
    ld sp, hl                                     ; $485C: $F9
    ld h, b                                       ; $485D: $60
    nop                                           ; $485E: $00
    db $10                                        ; $485F: $10
    add hl, de                                    ; $4860: $19
    add hl, bc                                    ; $4861: $09
    db $E3                                        ; $4862: $E3
    inc e                                         ; $4863: $1C
    add hl, bc                                    ; $4864: $09
    db $F4                                        ; $4865: $F4
    ld h, b                                       ; $4866: $60
    ld [bc], a                                    ; $4867: $02
    ld [hl], d                                    ; $4868: $72
    inc d                                         ; $4869: $14
    ldh [c], a                                    ; $486A: $E2
    ld [bc], a                                    ; $486B: $02
    ld e, $E8                                     ; $486C: $1E $E8
    ld bc, $D13C                                  ; $486E: $01 $3C $D1
    ld a, $D2                                     ; $4871: $3E $D2
    ld a, [hl]                                    ; $4873: $7E
    and c                                         ; $4874: $A1
    ld a, l                                       ; $4875: $7D
    ld [$F501], sp                                ; $4876: $08 $01 $F5
    ld c, b                                       ; $4879: $48
    halt                                          ; $487A: $76
    adc c                                         ; $487B: $89
    pop af                                        ; $487C: $F1
    adc $01                                       ; $487D: $CE $01
    ld a, b                                       ; $487F: $78
    dec sp                                        ; $4880: $3B
    ld [bc], a                                    ; $4881: $02
    ret nc                                        ; $4882: $D0

    jr jr_004_488D                                ; $4883: $18 $08

    ret nc                                        ; $4885: $D0

    xor b                                         ; $4886: $A8
    jr z, jr_004_4891                             ; $4887: $28 $08

    inc l                                         ; $4889: $2C
    ld a, [bc]                                    ; $488A: $0A
    ld d, b                                       ; $488B: $50
    ld [hl], b                                    ; $488C: $70

jr_004_488D:
    sub h                                         ; $488D: $94
    ld [hl], b                                    ; $488E: $70
    ret c                                         ; $488F: $D8

    adc b                                         ; $4890: $88

jr_004_4891:
    rst RST_38                                    ; $4891: $FF

jr_004_4892:
    inc [hl]                                      ; $4892: $34
    xor d                                         ; $4893: $AA
    ld [hl+], a                                   ; $4894: $22
    add hl, de                                    ; $4895: $19
    nop                                           ; $4896: $00

jr_004_4897:
    pop bc                                        ; $4897: $C1
    nop                                           ; $4898: $00
    ld a, $3F                                     ; $4899: $3E $3F
    ld c, [hl]                                    ; $489B: $4E
    ret nz                                        ; $489C: $C0

    jr z, jr_004_48AF                             ; $489D: $28 $10

    rst RST_30                                    ; $489F: $F7
    ld [$00C8], sp                                ; $48A0: $08 $C8 $00
    ld d, l                                       ; $48A3: $55
    ld a, [$0211]                                 ; $48A4: $FA $11 $02
    ld [hl], b                                    ; $48A7: $70
    ld [$0F70], sp                                ; $48A8: $08 $70 $0F
    db $10                                        ; $48AB: $10
    jp Jump_000_0C20                              ; $48AC: $C3 $20 $0C


jr_004_48AF:
    ld bc, $E098                                  ; $48AF: $01 $98 $E0
    cp $F1                                        ; $48B2: $FE $F1
    db $FC                                        ; $48B4: $FC
    ld [hl], e                                    ; $48B5: $73
    nop                                           ; $48B6: $00
    ld a, d                                       ; $48B7: $7A
    xor c                                         ; $48B8: $A9
    dec sp                                        ; $48B9: $3B
    ret z                                         ; $48BA: $C8

    sbc e                                         ; $48BB: $9B
    ld l, b                                       ; $48BC: $68
    db $DB                                        ; $48BD: $DB
    jr z, @+$23                                   ; $48BE: $28 $21

    db $FD                                        ; $48C0: $FD
    adc h                                         ; $48C1: $8C
    ld [hl], b                                    ; $48C2: $70
    xor $F0                                       ; $48C3: $EE $F0
    db $F4                                        ; $48C5: $F4
    ld [hl], b                                    ; $48C6: $70
    nop                                           ; $48C7: $00
    db $10                                        ; $48C8: $10
    and h                                         ; $48C9: $A4
    jr nz, jr_004_4892                            ; $48CA: $20 $C6

jr_004_48CC:
    ldh [$FF67], a                                ; $48CC: $E0 $67
    add b                                         ; $48CE: $80
    daa                                           ; $48CF: $27
    ld b, b                                       ; $48D0: $40
    ld c, d                                       ; $48D1: $4A
    inc bc                                        ; $48D2: $03
    jr c, jr_004_48CC                             ; $48D3: $38 $F7

    db $10                                        ; $48D5: $10
    ret z                                         ; $48D6: $C8

    ret c                                         ; $48D7: $D8

    add hl, bc                                    ; $48D8: $09
    dec l                                         ; $48D9: $2D
    ld b, b                                       ; $48DA: $40
    call z, $BE09                                 ; $48DB: $CC $09 $BE
    ld c, [hl]                                    ; $48DE: $4E
    ld a, [hl]                                    ; $48DF: $7E
    ld c, $77                                     ; $48E0: $0E $77
    rlca                                          ; $48E2: $07
    ld a, [hl-]                                   ; $48E3: $3A
    adc $C0                                       ; $48E4: $CE $C0
    db $10                                        ; $48E6: $10
    ret z                                         ; $48E7: $C8

    add hl, bc                                    ; $48E8: $09
    inc de                                        ; $48E9: $13
    ld a, [bc]                                    ; $48EA: $0A
    ld hl, $D8A8                                  ; $48EB: $21 $A8 $D8
    and c                                         ; $48EE: $A1
    ld [$08A8], sp                                ; $48EF: $08 $A8 $08
    or a                                          ; $48F2: $B7
    adc e                                         ; $48F3: $8B
    sbc e                                         ; $48F4: $9B
    ld [$BF45], sp                                ; $48F5: $08 $45 $BF

jr_004_48F8:
    and b                                         ; $48F8: $A0
    cp l                                          ; $48F9: $BD
    xor b                                         ; $48FA: $A8
    sbc $42                                       ; $48FB: $DE $42
    rst RST_18                                    ; $48FD: $DF
    dec h                                         ; $48FE: $25
    inc bc                                        ; $48FF: $03
    rst RST_38                                    ; $4900: $FF
    ld a, [bc]                                    ; $4901: $0A
    ld b, b                                       ; $4902: $40
    dec bc                                        ; $4903: $0B
    sub b                                         ; $4904: $90
    dec b                                         ; $4905: $05
    jr jr_004_4984                                ; $4906: $18 $7C

    ld [$0830], sp                                ; $4908: $08 $30 $08
    add sp, $08                                   ; $490B: $E8 $08
    jr c, jr_004_4897                             ; $490D: $38 $88

    nop                                           ; $490F: $00
    ld e, l                                       ; $4910: $5D
    ret c                                         ; $4911: $D8

    ld [$88F8], sp                                ; $4912: $08 $F8 $88
    ldh a, [$FF08]                                ; $4915: $F0 $08
    db $FC                                        ; $4917: $FC
    ld [$FD40], sp                                ; $4918: $08 $40 $FD
    ld [$FB3B], sp                                ; $491B: $08 $3B $FB
    rla                                           ; $491E: $17
    ld [hl], a                                    ; $491F: $77
    rrca                                          ; $4920: $0F
    cp a                                          ; $4921: $BF
    ld a, l                                       ; $4922: $7D
    add a                                         ; $4923: $87
    add hl, bc                                    ; $4924: $09
    adc b                                         ; $4925: $88
    ld a, b                                       ; $4926: $78
    ld [$0178], sp                                ; $4927: $08 $78 $01
    ld a, b                                       ; $492A: $78
    sub $F8                                       ; $492B: $D6 $F8
    ld a, b                                       ; $492D: $78
    rst RST_00                                    ; $492E: $C7
    ld a, b                                       ; $492F: $78
    rst RST_28                                    ; $4930: $EF
    ld a, b                                       ; $4931: $78
    adc b                                         ; $4932: $88
    rlca                                          ; $4933: $07
    push bc                                       ; $4934: $C5
    add hl, bc                                    ; $4935: $09
    ret z                                         ; $4936: $C8

    dec b                                         ; $4937: $05
    rst RST_30                                    ; $4938: $F7
    dec c                                         ; $4939: $0D
    ld c, b                                       ; $493A: $48
    dec e                                         ; $493B: $1D
    jr z, jr_004_48F8                             ; $493C: $28 $BA

    add hl, bc                                    ; $493E: $09
    jr jr_004_4949                                ; $493F: $18 $08

    ret nz                                        ; $4941: $C0

    add hl, bc                                    ; $4942: $09
    ld a, a                                       ; $4943: $7F
    ld [$0404], sp                                ; $4944: $08 $04 $04
    db $F4                                        ; $4947: $F4
    inc c                                         ; $4948: $0C

jr_004_4949:
    ld l, h                                       ; $4949: $6C
    sbc h                                         ; $494A: $9C
    inc e                                         ; $494B: $1C
    add hl, bc                                    ; $494C: $09
    ret c                                         ; $494D: $D8

    ld a, [de]                                    ; $494E: $1A
    inc h                                         ; $494F: $24
    ldh [rTMA], a                                 ; $4950: $E0 $06
    ld [$E10E], sp                                ; $4952: $08 $0E $E1
    add sp, -$21                                  ; $4955: $E8 $DF
    jp $E8B2                                      ; $4957: $C3 $B2 $E8


    db $E3                                        ; $495A: $E3
    ld [$F740], sp                                ; $495B: $08 $40 $F7
    ldh a, [$FF09]                                ; $495E: $F0 $09
    ei                                            ; $4960: $FB
    ld d, b                                       ; $4961: $50
    ld hl, sp+$08                                 ; $4962: $F8 $08
    jr jr_004_496E                                ; $4964: $18 $08

    ld h, b                                       ; $4966: $60
    dec sp                                        ; $4967: $3B
    inc bc                                        ; $4968: $03
    dec de                                        ; $4969: $1B
    rst RST_00                                    ; $496A: $C7
    ld [$00E0], sp                                ; $496B: $08 $E0 $00

jr_004_496E:
    inc c                                         ; $496E: $0C
    ld bc, $18D0                                  ; $496F: $01 $D0 $18
    ldh a, [$FF82]                                ; $4972: $F0 $82
    inc c                                         ; $4974: $0C
    cp a                                          ; $4975: $BF
    ld e, $FF                                     ; $4976: $1E $FF
    inc a                                         ; $4978: $3C
    rst RST_18                                    ; $4979: $DF
    cp b                                          ; $497A: $B8
    rst RST_28                                    ; $497B: $EF
    ld d, e                                       ; $497C: $53
    jr nz, @+$2A                                  ; $497D: $20 $28

    jr nc, jr_004_4989                            ; $497F: $30 $08

    ld sp, $18FE                                  ; $4981: $31 $FE $18

jr_004_4984:
    ld [$7043], sp                                ; $4984: $08 $43 $70
    add b                                         ; $4987: $80
    ret nz                                        ; $4988: $C0

jr_004_4989:
    ld [bc], a                                    ; $4989: $02
    add b                                         ; $498A: $80
    ld h, $08                                     ; $498B: $26 $08
    and b                                         ; $498D: $A0
    ldh [c], a                                    ; $498E: $E2
    ld [$08F8], sp                                ; $498F: $08 $F8 $08
    inc c                                         ; $4992: $0C
    add c                                         ; $4993: $81
    dec c                                         ; $4994: $0D
    add hl, bc                                    ; $4995: $09
    ld bc, $2835                                  ; $4996: $01 $35 $28
    sub b                                         ; $4999: $90
    and b                                         ; $499A: $A0
    ld c, b                                       ; $499B: $48
    ld a, a                                       ; $499C: $7F
    ld [$B09F], sp                                ; $499D: $08 $9F $B0
    ldh [rBCPS], a                                ; $49A0: $E0 $68
    ld [$8318], sp                                ; $49A2: $08 $18 $83
    rst RST_38                                    ; $49A5: $FF
    jp Jump_000_037E                              ; $49A6: $C3 $7E $03


    dec c                                         ; $49A9: $0D
    sub a                                         ; $49AA: $97
    ld h, a                                       ; $49AB: $67
    adc a                                         ; $49AC: $8F
    ld l, a                                       ; $49AD: $6F
    ld [hl], b                                    ; $49AE: $70
    ld e, b                                       ; $49AF: $58
    ld [hl], a                                    ; $49B0: $77
    nop                                           ; $49B1: $00
    ld d, h                                       ; $49B2: $54
    ei                                            ; $49B3: $FB
    nop                                           ; $49B4: $00
    ld a, b                                       ; $49B5: $78
    ld [$0838], sp                                ; $49B6: $08 $38 $08
    ld hl, sp-$06                                 ; $49B9: $F8 $FA

jr_004_49BB:
    jr c, jr_004_49BB                             ; $49BB: $38 $FE

    ld h, b                                       ; $49BD: $60
    rrca                                          ; $49BE: $0F
    ld a, [bc]                                    ; $49BF: $0A
    cp b                                          ; $49C0: $B8
    ld e, $E0                                     ; $49C1: $1E $E0
    dec e                                         ; $49C3: $1D
    ld l, c                                       ; $49C4: $69
    ld bc, $0B0F                                  ; $49C5: $01 $0F $0B
    dec b                                         ; $49C8: $05
    ld [$037F], sp                                ; $49C9: $08 $7F $03
    add hl, bc                                    ; $49CC: $09
    ld a, h                                       ; $49CD: $7C
    ld a, [hl]                                    ; $49CE: $7E
    cp b                                          ; $49CF: $B8
    jr jr_004_49DE                                ; $49D0: $18 $0C

    add hl, sp                                    ; $49D2: $39
    add hl, bc                                    ; $49D3: $09
    ld hl, sp-$05                                 ; $49D4: $F8 $FB
    xor d                                         ; $49D6: $AA
    add hl, bc                                    ; $49D7: $09
    pop af                                        ; $49D8: $F1
    nop                                           ; $49D9: $00
    or $00                                        ; $49DA: $F6 $00
    di                                            ; $49DC: $F3
    nop                                           ; $49DD: $00

jr_004_49DE:
    db $F4                                        ; $49DE: $F4
    xor b                                         ; $49DF: $A8
    nop                                           ; $49E0: $00
    push af                                       ; $49E1: $F5
    nop                                           ; $49E2: $00
    ld sp, hl                                     ; $49E3: $F9
    nop                                           ; $49E4: $00
    rst RST_28                                    ; $49E5: $EF
    ldh [$FF3B], a                                ; $49E6: $E0 $3B
    jr nz, jr_004_4A22                            ; $49E8: $20 $38

    ld c, $00                                     ; $49EA: $0E $00
    jp Jump_004_6103                              ; $49EC: $C3 $03 $61


    ld bc, $08B1                                  ; $49EF: $01 $B1 $08
    add c                                         ; $49F2: $81
    call c, $DAC0                                 ; $49F3: $DC $C0 $DA
    ld [$FF1F], sp                                ; $49F6: $08 $1F $FF
    rst RST_00                                    ; $49F9: $C7
    ldh [$FF08], a                                ; $49FA: $E0 $08
    ldh a, [$FF08]                                ; $49FC: $F0 $08
    inc a                                         ; $49FE: $3C
    ccf                                           ; $49FF: $3F
    sbc $DF                                       ; $4A00: $DE $DF
    ld l, [hl]                                    ; $4A02: $6E
    add l                                         ; $4A03: $85
    ret nc                                        ; $4A04: $D0

    dec hl                                        ; $4A05: $2B
    db $EB                                        ; $4A06: $EB
    dec [hl]                                      ; $4A07: $35
    push af                                       ; $4A08: $F5
    ld d, b                                       ; $4A09: $50
    inc b                                         ; $4A0A: $04
    ld [$006A], sp                                ; $4A0B: $08 $6A $00
    rrca                                          ; $4A0E: $0F
    dec bc                                        ; $4A0F: $0B
    ldh [rP1], a                                  ; $4A10: $E0 $00
    ld hl, sp+$02                                 ; $4A12: $F8 $02
    ld a, [bc]                                    ; $4A14: $0A
    sbc d                                         ; $4A15: $9A
    nop                                           ; $4A16: $00
    ld l, e                                       ; $4A17: $6B
    dec bc                                        ; $4A18: $0B
    ld bc, $0919                                  ; $4A19: $01 $19 $09
    nop                                           ; $4A1C: $00
    sbc $02                                       ; $4A1D: $DE $02
    ret z                                         ; $4A1F: $C8

    sbc [hl]                                      ; $4A20: $9E
    adc b                                         ; $4A21: $88

jr_004_4A22:
    ld a, [hl-]                                   ; $4A22: $3A
    db $10                                        ; $4A23: $10
    ld a, [$2809]                                 ; $4A24: $FA $09 $28
    cp b                                          ; $4A27: $B8
    ld [$6008], sp                                ; $4A28: $08 $08 $60
    ld [$21B9], sp                                ; $4A2B: $08 $B9 $21
    jp hl                                         ; $4A2E: $E9


    ld h, c                                       ; $4A2F: $61
    add l                                         ; $4A30: $85
    ld [$D5C5], sp                                ; $4A31: $08 $C5 $D5
    dec b                                         ; $4A34: $05
    dec d                                         ; $4A35: $15
    jr @-$11                                      ; $4A36: $18 $ED

    jr jr_004_4A3F                                ; $4A38: $18 $05

    dec c                                         ; $4A3A: $0D
    or $FE                                        ; $4A3B: $F6 $FE
    push af                                       ; $4A3D: $F5
    rst RST_38                                    ; $4A3E: $FF

jr_004_4A3F:
    nop                                           ; $4A3F: $00
    nop                                           ; $4A40: $00
    rrca                                          ; $4A41: $0F
    xor b                                         ; $4A42: $A8
    add hl, bc                                    ; $4A43: $09
    ld a, a                                       ; $4A44: $7F
    ld [$08BF], sp                                ; $4A45: $08 $BF $08

jr_004_4A48:
    ld l, c                                       ; $4A48: $69
    add hl, bc                                    ; $4A49: $09
    ld a, [bc]                                    ; $4A4A: $0A
    sbc d                                         ; $4A4B: $9A
    nop                                           ; $4A4C: $00
    ld l, e                                       ; $4A4D: $6B
    dec bc                                        ; $4A4E: $0B
    ld bc, $9B19                                  ; $4A4F: $01 $19 $9B
    nop                                           ; $4A52: $00
    rst RST_30                                    ; $4A53: $F7
    and c                                         ; $4A54: $A1
    nop                                           ; $4A55: $00
    ld [hl], a                                    ; $4A56: $77
    nop                                           ; $4A57: $00
    ld hl, sp+$07                                 ; $4A58: $F8 $07
    ldh a, [rIF]                                  ; $4A5A: $F0 $0F
    rrca                                          ; $4A5C: $0F
    xor e                                         ; $4A5D: $AB
    dec bc                                        ; $4A5E: $0B
    nop                                           ; $4A5F: $00
    nop                                           ; $4A60: $00
    ld b, b                                       ; $4A61: $40
    nop                                           ; $4A62: $00
    ld h, b                                       ; $4A63: $60
    rlca                                          ; $4A64: $07
    ld [bc], a                                    ; $4A65: $02
    and e                                         ; $4A66: $A3
    sbc e                                         ; $4A67: $9B
    ld hl, sp+$08                                 ; $4A68: $F8 $08
    cp $1F                                        ; $4A6A: $FE $1F
    rst RST_38                                    ; $4A6C: $FF
    jr @+$0A                                      ; $4A6D: $18 $08

    dec e                                         ; $4A6F: $1D
    rlca                                          ; $4A70: $07
    ei                                            ; $4A71: $FB
    inc bc                                        ; $4A72: $03
    ld c, b                                       ; $4A73: $48
    add sp, -$65                                  ; $4A74: $E8 $9B
    jr nz, jr_004_4A78                            ; $4A76: $20 $00

jr_004_4A78:
    ld d, c                                       ; $4A78: $51
    ret nz                                        ; $4A79: $C0

    ld [bc], a                                    ; $4A7A: $02
    ret nc                                        ; $4A7B: $D0

    ld [$80B4], sp                                ; $4A7C: $08 $B4 $80
    scf                                           ; $4A7F: $37
    ld a, b                                       ; $4A80: $78
    jr nz, jr_004_4A48                            ; $4A81: $20 $C5

    ld a, [hl-]                                   ; $4A83: $3A
    add hl, bc                                    ; $4A84: $09
    adc c                                         ; $4A85: $89
    halt                                          ; $4A86: $76
    adc e                                         ; $4A87: $8B
    ld [hl], h                                    ; $4A88: $74
    inc de                                        ; $4A89: $13
    ld [bc], a                                    ; $4A8A: $02
    db $EC                                        ; $4A8B: $EC
    rla                                           ; $4A8C: $17
    add sp, $27                                   ; $4A8D: $E8 $27
    ret c                                         ; $4A8F: $D8

    cpl                                           ; $4A90: $2F
    and b                                         ; $4A91: $A0
    call nz, Call_000_02AA                        ; $4A92: $C4 $AA $02
    adc b                                         ; $4A95: $88
    nop                                           ; $4A96: $00
    adc d                                         ; $4A97: $8A
    nop                                           ; $4A98: $00
    ld [de], a                                    ; $4A99: $12
    nop                                           ; $4A9A: $00
    ld d, $E8                                     ; $4A9B: $16 $E8
    nop                                           ; $4A9D: $00
    ld a, b                                       ; $4A9E: $78
    nop                                           ; $4A9F: $00
    ld l, $00                                     ; $4AA0: $2E $00
    ld c, [hl]                                    ; $4AA2: $4E
    or c                                          ; $4AA3: $B1
    db $FC                                        ; $4AA4: $FC
    inc b                                         ; $4AA5: $04
    inc bc                                        ; $4AA6: $03
    ld bc, $FFFE                                  ; $4AA7: $01 $FE $FF
    nop                                           ; $4AAA: $00
    rrca                                          ; $4AAB: $0F
    ld c, l                                       ; $4AAC: $4D
    ld c, h                                       ; $4AAD: $4C
    rst RST_38                                    ; $4AAE: $FF
    ld [hl], b                                    ; $4AAF: $70
    jr jr_004_4B22                                ; $4AB0: $18 $70

    add b                                         ; $4AB2: $80
    ld de, $1908                                  ; $4AB3: $11 $08 $19
    ld [hl], e                                    ; $4AB6: $73
    adc c                                         ; $4AB7: $89
    nop                                           ; $4AB8: $00
    db $FD                                        ; $4AB9: $FD
    call z, $08DD                                 ; $4ABA: $CC $DD $08
    sbc $C6                                       ; $4ABD: $DE $C6
    add hl, bc                                    ; $4ABF: $09
    ld [$C3DB], sp                                ; $4AC0: $08 $DB $C3
    rst RST_18                                    ; $4AC3: $DF
    ret nz                                        ; $4AC4: $C0

    ld [$F641], sp                                ; $4AC5: $08 $41 $F6
    ld d, b                                       ; $4AC8: $50
    xor d                                         ; $4AC9: $AA
    jp hl                                         ; $4ACA: $E9


    inc hl                                        ; $4ACB: $23
    ld [$0A31], sp                                ; $4ACC: $08 $31 $0A
    inc [hl]                                      ; $4ACF: $34
    ld [$A828], sp                                ; $4AD0: $08 $28 $A8
    ld [$082C], sp                                ; $4AD3: $08 $2C $08
    dec c                                         ; $4AD6: $0D
    ld [$07BF], sp                                ; $4AD7: $08 $BF $07
    cp e                                          ; $4ADA: $BB
    or d                                          ; $4ADB: $B2
    sub b                                         ; $4ADC: $90
    rst RST_38                                    ; $4ADD: $FF
    jr z, @-$36                                   ; $4ADE: $28 $C8

    ld bc, $186E                                  ; $4AE0: $01 $6E $18
    rst RST_30                                    ; $4AE3: $F7

jr_004_4AE4:
    ret z                                         ; $4AE4: $C8

    ld [$8038], sp                                ; $4AE5: $08 $38 $80
    cp l                                          ; $4AE8: $BD
    ld [$10D0], sp                                ; $4AE9: $08 $D0 $10
    call nc, $0882                                ; $4AEC: $D4 $82 $08
    ret z                                         ; $4AEF: $C8

    ld [$0CAC], sp                                ; $4AF0: $08 $AC $0C
    or c                                          ; $4AF3: $B1
    ld l, b                                       ; $4AF4: $68
    ld a, b                                       ; $4AF5: $78
    ld l, b                                       ; $4AF6: $68
    ld [bc], a                                    ; $4AF7: $02
    ld [$7AA8], sp                                ; $4AF8: $08 $A8 $7A
    jr z, jr_004_4B74                             ; $4AFB: $28 $77

    sub b                                         ; $4AFD: $90
    ei                                            ; $4AFE: $FB
    scf                                           ; $4AFF: $37

jr_004_4B00:
    jr jr_004_4B00                                ; $4B00: $18 $FE

    ld l, b                                       ; $4B02: $68
    ret z                                         ; $4B03: $C8

    dec b                                         ; $4B04: $05
    ld [$0858], sp                                ; $4B05: $08 $58 $08
    jp c, Jump_000_0AF9                           ; $4B08: $DA $F9 $0A

    adc h                                         ; $4B0B: $8C
    ld [$8050], sp                                ; $4B0C: $08 $50 $80
    ld d, b                                       ; $4B0F: $50
    ld h, b                                       ; $4B10: $60
    xor d                                         ; $4B11: $AA
    jr nz, jr_004_4AE4                            ; $4B12: $20 $D0

    ld [$08D8], sp                                ; $4B14: $08 $D8 $08
    cp [hl]                                       ; $4B17: $BE
    ld [$C6BF], sp                                ; $4B18: $08 $BF $C6
    ld [$DE00], sp                                ; $4B1B: $08 $00 $DE
    ret nz                                        ; $4B1E: $C0

    rst RST_28                                    ; $4B1F: $EF
    ld l, b                                       ; $4B20: $68
    xor c                                         ; $4B21: $A9

jr_004_4B22:
    ld a, e                                       ; $4B22: $7B
    ld [hl], $18                                  ; $4B23: $36 $18
    cp l                                          ; $4B25: $BD
    ret nz                                        ; $4B26: $C0

    ld c, b                                       ; $4B27: $48
    add $48                                       ; $4B28: $C6 $48
    jr c, jr_004_4B22                             ; $4B2A: $38 $F6

    ld a, [hl+]                                   ; $4B2C: $2A
    jr nc, jr_004_4B6A                            ; $4B2D: $30 $3B

    jr jr_004_4B48                                ; $4B2F: $18 $17

    ld [$0887], sp                                ; $4B31: $08 $87 $08
    rst RST_00                                    ; $4B34: $C7

jr_004_4B35:
    xor [hl]                                      ; $4B35: $AE
    ld [$0863], sp                                ; $4B36: $08 $63 $08
    ld hl, $A008                                  ; $4B39: $21 $08 $A0
    ld [$A40F], sp                                ; $4B3C: $08 $0F $A4
    ld [$087F], sp                                ; $4B3F: $08 $7F $08
    cp a                                          ; $4B42: $BF
    add b                                         ; $4B43: $80
    ld sp, hl                                     ; $4B44: $F9
    rst RST_18                                    ; $4B45: $DF
    ret nz                                        ; $4B46: $C0

    and d                                         ; $4B47: $A2

jr_004_4B48:
    ret c                                         ; $4B48: $D8

    ldh [$FF09], a                                ; $4B49: $E0 $09
    rst RST_30                                    ; $4B4B: $F7
    ld [hl], b                                    ; $4B4C: $70
    ei                                            ; $4B4D: $FB
    ld c, b                                       ; $4B4E: $48
    db $EB                                        ; $4B4F: $EB
    dec h                                         ; $4B50: $25
    inc bc                                        ; $4B51: $03
    ld e, e                                       ; $4B52: $5B
    ld [$013D], sp                                ; $4B53: $08 $3D $01
    add hl, bc                                    ; $4B56: $09
    inc e                                         ; $4B57: $1C
    ld c, b                                       ; $4B58: $48
    ld d, h                                       ; $4B59: $54
    dec e                                         ; $4B5A: $1D
    ld [$080B], sp                                ; $4B5B: $08 $0B $08

jr_004_4B5E:
    rlca                                          ; $4B5E: $07
    reti                                          ; $4B5F: $D9


    ld a, b                                       ; $4B60: $78
    ld sp, hl                                     ; $4B61: $F9

jr_004_4B62:
    dec e                                         ; $4B62: $1D
    jr c, jr_004_4B62                             ; $4B63: $38 $FD

    inc a                                         ; $4B65: $3C
    ld [$0870], sp                                ; $4B66: $08 $70 $08
    inc h                                         ; $4B69: $24

jr_004_4B6A:
    ld c, b                                       ; $4B6A: $48
    ld a, [$E838]                                 ; $4B6B: $FA $38 $E8
    ld c, d                                       ; $4B6E: $4A
    ret nz                                        ; $4B6F: $C0

    sbc b                                         ; $4B70: $98
    add a                                         ; $4B71: $87
    sbc b                                         ; $4B72: $98
    add e                                         ; $4B73: $83

jr_004_4B74:
    adc a                                         ; $4B74: $8F
    ld [$C0C3], sp                                ; $4B75: $08 $C3 $C0
    add d                                         ; $4B78: $82
    jr jr_004_4BC5                                ; $4B79: $18 $4A

    ld [$D348], sp                                ; $4B7B: $08 $48 $D3
    ld [$7CE9], sp                                ; $4B7E: $08 $E9 $7C
    ret c                                         ; $4B81: $D8

    cp $0E                                        ; $4B82: $FE $0E
    ret c                                         ; $4B84: $D8

    jr c, jr_004_4B35                             ; $4B85: $38 $AE

    add hl, bc                                    ; $4B87: $09
    di                                            ; $4B88: $F3
    ld [$08F8], sp                                ; $4B89: $08 $F8 $08
    ld e, b                                       ; $4B8C: $58
    ld [$AA07], sp                                ; $4B8D: $08 $07 $AA
    sbc d                                         ; $4B90: $9A
    add c                                         ; $4B91: $81
    ld [$08B0], sp                                ; $4B92: $08 $B0 $08
    cp a                                          ; $4B95: $BF
    ld [$DB7F], sp                                ; $4B96: $08 $7F $DB
    sbc d                                         ; $4B99: $9A
    add hl, bc                                    ; $4B9A: $09
    db $FD                                        ; $4B9B: $FD
    add sp, $08                                   ; $4B9C: $E8 $08
    inc b                                         ; $4B9E: $04
    dec sp                                        ; $4B9F: $3B
    dec c                                         ; $4BA0: $0D
    ld d, [hl]                                    ; $4BA1: $56
    ccf                                           ; $4BA2: $3F
    ld [$08A2], a                                 ; $4BA3: $EA $A2 $08
    ld a, c                                       ; $4BA6: $79
    ld a, a                                       ; $4BA7: $7F
    ld a, [bc]                                    ; $4BA8: $0A
    ld b, $1A                                     ; $4BA9: $06 $1A
    ld hl, sp+$01                                 ; $4BAB: $F8 $01
    cp $31                                        ; $4BAD: $FE $31
    nop                                           ; $4BAF: $00
    rrca                                          ; $4BB0: $0F
    nop                                           ; $4BB1: $00
    pop af                                        ; $4BB2: $F1
    rst RST_38                                    ; $4BB3: $FF
    dec sp                                        ; $4BB4: $3B
    add hl, bc                                    ; $4BB5: $09
    jr z, jr_004_4BB8                             ; $4BB6: $28 $00

jr_004_4BB8:
    add b                                         ; $4BB8: $80
    nop                                           ; $4BB9: $00
    ld b, b                                       ; $4BBA: $40
    nop                                           ; $4BBB: $00
    db $DD                                        ; $4BBC: $DD
    ld [hl], c                                    ; $4BBD: $71
    add hl, sp                                    ; $4BBE: $39
    ld [bc], a                                    ; $4BBF: $02
    nop                                           ; $4BC0: $00
    ld l, b                                       ; $4BC1: $68
    nop                                           ; $4BC2: $00
    db $FC                                        ; $4BC3: $FC
    nop                                           ; $4BC4: $00

jr_004_4BC5:
    ld l, d                                       ; $4BC5: $6A
    ld a, a                                       ; $4BC6: $7F
    and d                                         ; $4BC7: $A2
    jr @-$7E                                      ; $4BC8: $18 $80

    jr @-$1E                                      ; $4BCA: $18 $E0

    ld [$ACC0], sp                                ; $4BCC: $08 $C0 $AC
    add hl, sp                                    ; $4BCF: $39
    ld [hl], b                                    ; $4BD0: $70
    jr c, jr_004_4BEB                             ; $4BD1: $38 $18

    jr c, jr_004_4B5E                             ; $4BD3: $38 $89

    ld a, l                                       ; $4BD5: $7D
    ld a, h                                       ; $4BD6: $7C
    pop bc                                        ; $4BD7: $C1
    ret nc                                        ; $4BD8: $D0

    ld c, b                                       ; $4BD9: $48
    db $ED                                        ; $4BDA: $ED
    db $EC                                        ; $4BDB: $EC
    db $DD                                        ; $4BDC: $DD
    call c, $0012                                 ; $4BDD: $DC $12 $00
    ld e, a                                       ; $4BE0: $5F
    adc a                                         ; $4BE1: $8F
    nop                                           ; $4BE2: $00
    daa                                           ; $4BE3: $27
    nop                                           ; $4BE4: $00
    ld [hl], b                                    ; $4BE5: $70
    or b                                          ; $4BE6: $B0
    inc b                                         ; $4BE7: $04

jr_004_4BE8:
    cp b                                          ; $4BE8: $B8
    xor b                                         ; $4BE9: $A8
    nop                                           ; $4BEA: $00

jr_004_4BEB:
    sbc a                                         ; $4BEB: $9F
    ldh [$FF7F], a                                ; $4BEC: $E0 $7F
    cp b                                          ; $4BEE: $B8
    cp $03                                        ; $4BEF: $FE $03
    db $FD                                        ; $4BF1: $FD
    ld [$6877], a                                 ; $4BF2: $EA $77 $68
    nop                                           ; $4BF5: $00
    nop                                           ; $4BF6: $00
    nop                                           ; $4BF7: $00
    ld e, $00                                     ; $4BF8: $1E $00
    ld a, h                                       ; $4BFA: $7C
    adc [hl]                                      ; $4BFB: $8E
    nop                                           ; $4BFC: $00
    ld b, $F8                                     ; $4BFD: $06 $F8
    pop bc                                        ; $4BFF: $C1
    xor b                                         ; $4C00: $A8
    db $10                                        ; $4C01: $10
    add c                                         ; $4C02: $81
    ld a, $00                                     ; $4C03: $3E $00
    ccf                                           ; $4C05: $3F
    ret nz                                        ; $4C06: $C0

    rst RST_08                                    ; $4C07: $CF
    jr nc, @-$1B                                  ; $4C08: $30 $E3

    call c, $2EF1                                 ; $4C0A: $DC $F1 $2E
    ld a, l                                       ; $4C0D: $7D
    reti                                          ; $4C0E: $D9


    nop                                           ; $4C0F: $00
    ld [hl], b                                    ; $4C10: $70
    nop                                           ; $4C11: $00
    ld [hl], d                                    ; $4C12: $72
    nop                                           ; $4C13: $00
    ld bc, $0404                                  ; $4C14: $01 $04 $04
    ret z                                         ; $4C17: $C8

    ld [$0B8B], sp                                ; $4C18: $08 $8B $0B
    db $EB                                        ; $4C1B: $EB
    ld [$63FB], sp                                ; $4C1C: $08 $FB $63
    ld b, $C7                                     ; $4C1F: $06 $C7
    ld a, b                                       ; $4C21: $78
    pop bc                                        ; $4C22: $C1
    ld a, a                                       ; $4C23: $7F
    pop hl                                        ; $4C24: $E1
    sbc b                                         ; $4C25: $98
    ret nz                                        ; $4C26: $C0

    nop                                           ; $4C27: $00

jr_004_4C28:
    inc d                                         ; $4C28: $14
    ld h, b                                       ; $4C29: $60
    rra                                           ; $4C2A: $1F
    ld [hl], h                                    ; $4C2B: $74
    jr c, @+$16                                   ; $4C2C: $38 $14

    jr jr_004_4C94                                ; $4C2E: $18 $64

    ld h, a                                       ; $4C30: $67
    push af                                       ; $4C31: $F5
    ld [hl], b                                    ; $4C32: $70
    nop                                           ; $4C33: $00
    jr nc, jr_004_4C36                            ; $4C34: $30 $00

jr_004_4C36:
    cp [hl]                                       ; $4C36: $BE
    ld a, b                                       ; $4C37: $78
    ld b, c                                       ; $4C38: $41
    ld a, b                                       ; $4C39: $78
    ld a, [hl-]                                   ; $4C3A: $3A
    and b                                         ; $4C3B: $A0
    add b                                         ; $4C3C: $80
    jr nc, @+$1A                                  ; $4C3D: $30 $18

    ld [hl], b                                    ; $4C3F: $70
    ld bc, $0308                                  ; $4C40: $01 $08 $03
    jr nc, @+$01                                  ; $4C43: $30 $FF

    ld b, $08                                     ; $4C45: $06 $08
    jr c, jr_004_4BE8                             ; $4C47: $38 $9F

    jr nz, jr_004_4C8A                            ; $4C49: $20 $3F

    ret nz                                        ; $4C4B: $C0

    push de                                       ; $4C4C: $D5
    ld c, b                                       ; $4C4D: $48
    jr @-$70                                      ; $4C4E: $18 $8E

    nop                                           ; $4C50: $00
    db $FD                                        ; $4C51: $FD
    nop                                           ; $4C52: $00
    ei                                            ; $4C53: $FB
    nop                                           ; $4C54: $00
    ld d, l                                       ; $4C55: $55
    or $00                                        ; $4C56: $F6 $00
    add hl, bc                                    ; $4C58: $09
    ld a, b                                       ; $4C59: $78
    adc $08                                       ; $4C5A: $CE $08
    ld hl, $5008                                  ; $4C5C: $21 $08 $50
    rst RST_18                                    ; $4C5F: $DF
    ld [$0838], sp                                ; $4C60: $08 $38 $08
    sbc b                                         ; $4C63: $98
    rrca                                          ; $4C64: $0F
    ld [hl], b                                    ; $4C65: $70
    add a                                         ; $4C66: $87
    ld b, $FC                                     ; $4C67: $06 $FC
    rlca                                          ; $4C69: $07
    ld hl, sp+$03                                 ; $4C6A: $F8 $03
    cp $08                                        ; $4C6C: $FE $08
    ret nz                                        ; $4C6E: $C0

    ld bc, $FF48                                  ; $4C6F: $01 $48 $FF
    adc c                                         ; $4C72: $89
    ret nz                                        ; $4C73: $C0

    ld h, b                                       ; $4C74: $60

jr_004_4C75:
    nop                                           ; $4C75: $00
    adc b                                         ; $4C76: $88
    add b                                         ; $4C77: $80
    ld l, b                                       ; $4C78: $68
    add e                                         ; $4C79: $83
    jr jr_004_4C28                                ; $4C7A: $18 $AC

    and b                                         ; $4C7C: $A0
    inc l                                         ; $4C7D: $2C
    jr nz, jr_004_4CA6                            ; $4C7E: $20 $26

    ld [$3301], sp                                ; $4C80: $08 $01 $33
    rra                                           ; $4C83: $1F
    ldh [rIF], a                                  ; $4C84: $E0 $0F
    add hl, bc                                    ; $4C86: $09
    ld e, $E1                                     ; $4C87: $1E $E1
    ld sp, hl                                     ; $4C89: $F9

jr_004_4C8A:
    jr z, jr_004_4C75                             ; $4C8A: $28 $E9

    ld [$0C28], sp                                ; $4C8C: $08 $28 $0C
    inc e                                         ; $4C8F: $1C
    ld a, [bc]                                    ; $4C90: $0A
    jr jr_004_4C94                                ; $4C91: $18 $01

    db $10                                        ; $4C93: $10

jr_004_4C94:
    dec hl                                        ; $4C94: $2B
    inc bc                                        ; $4C95: $03
    ld hl, sp+$10                                 ; $4C96: $F8 $10
    db $FD                                        ; $4C98: $FD
    ld [$1AFA], sp                                ; $4C99: $08 $FA $1A
    ret                                           ; $4C9C: $C9


    add b                                         ; $4C9D: $80
    dec c                                         ; $4C9E: $0D
    ld d, a                                       ; $4C9F: $57
    ld b, b                                       ; $4CA0: $40
    ld l, a                                       ; $4CA1: $6F
    ld h, b                                       ; $4CA2: $60
    ld [hl], a                                    ; $4CA3: $77
    ld [hl], b                                    ; $4CA4: $70
    ei                                            ; $4CA5: $FB

jr_004_4CA6:
    and b                                         ; $4CA6: $A0
    or b                                          ; $4CA7: $B0
    ld [hl], e                                    ; $4CA8: $73
    jr jr_004_4CF6                                ; $4CA9: $18 $4B

    ld c, b                                       ; $4CAB: $48
    dec sp                                        ; $4CAC: $3B
    jr c, jr_004_4D1A                             ; $4CAD: $38 $6B

    ld h, b                                       ; $4CAF: $60
    ld l, b                                       ; $4CB0: $68
    xor l                                         ; $4CB1: $AD
    ld a, b                                       ; $4CB2: $78
    inc b                                         ; $4CB3: $04
    rst RST_30                                    ; $4CB4: $F7
    ld [$16E9], sp                                ; $4CB5: $08 $E9 $16
    inc c                                         ; $4CB8: $0C
    ld [de], a                                    ; $4CB9: $12
    db $ED                                        ; $4CBA: $ED
    db $E4                                        ; $4CBB: $E4
    dec de                                        ; $4CBC: $1B
    xor c                                         ; $4CBD: $A9
    dec bc                                        ; $4CBE: $0B
    ld d, c                                       ; $4CBF: $51
    ld d, h                                       ; $4CC0: $54
    ld a, [hl]                                    ; $4CC1: $7E
    ld h, b                                       ; $4CC2: $60
    ret z                                         ; $4CC3: $C8

    and b                                         ; $4CC4: $A0
    ld a, b                                       ; $4CC5: $78
    ld [$0878], sp                                ; $4CC6: $08 $78 $08
    db $DB                                        ; $4CC9: $DB
    and e                                         ; $4CCA: $A3
    reti                                          ; $4CCB: $D9


    add d                                         ; $4CCC: $82
    ld sp, hl                                     ; $4CCD: $F9
    ld h, c                                       ; $4CCE: $61
    sub d                                         ; $4CCF: $92
    ld l, l                                       ; $4CD0: $6D
    jr jr_004_4CDB                                ; $4CD1: $18 $08

    rst RST_28                                    ; $4CD3: $EF
    ld a, [hl-]                                   ; $4CD4: $3A
    ld a, [bc]                                    ; $4CD5: $0A
    nop                                           ; $4CD6: $00
    ld a, l                                       ; $4CD7: $7D
    add hl, bc                                    ; $4CD8: $09
    ld [hl], b                                    ; $4CD9: $70
    db $10                                        ; $4CDA: $10

jr_004_4CDB:
    ld h, b                                       ; $4CDB: $60
    ldh [$FF0A], a                                ; $4CDC: $E0 $0A
    ld c, e                                       ; $4CDE: $4B
    ld hl, $4137                                  ; $4CDF: $21 $37 $41
    dec de                                        ; $4CE2: $1B
    rst RST_38                                    ; $4CE3: $FF
    nop                                           ; $4CE4: $00
    ret                                           ; $4CE5: $C9


    ld [$3618], sp                                ; $4CE6: $08 $18 $36
    jr jr_004_4CF3                                ; $4CE9: $18 $08

    cp a                                          ; $4CEB: $BF
    add hl, de                                    ; $4CEC: $19
    jp Jump_000_0A39                              ; $4CED: $C3 $39 $0A


    nop                                           ; $4CF0: $00
    jr c, jr_004_4CFC                             ; $4CF1: $38 $09

jr_004_4CF3:
    ld [de], a                                    ; $4CF3: $12
    sub $0A                                       ; $4CF4: $D6 $0A

jr_004_4CF6:
    nop                                           ; $4CF6: $00
    inc a                                         ; $4CF7: $3C
    ld [$2138], sp                                ; $4CF8: $08 $38 $21
    adc c                                         ; $4CFB: $89

jr_004_4CFC:
    ld c, c                                       ; $4CFC: $49
    adc e                                         ; $4CFD: $8B
    add hl, de                                    ; $4CFE: $19
    or [hl]                                       ; $4CFF: $B6
    add hl, bc                                    ; $4D00: $09
    or $19                                        ; $4D01: $F6 $19
    ld c, b                                       ; $4D03: $48
    db $FD                                        ; $4D04: $FD
    ld c, b                                       ; $4D05: $48
    ei                                            ; $4D06: $FB
    ld [$0048], sp                                ; $4D07: $08 $48 $00
    inc hl                                        ; $4D0A: $23
    ld c, c                                       ; $4D0B: $49
    or a                                          ; $4D0C: $B7
    ld a, [bc]                                    ; $4D0D: $0A
    sbc h                                         ; $4D0E: $9C
    cp e                                          ; $4D0F: $BB
    dec c                                         ; $4D10: $0D
    ccf                                           ; $4D11: $3F
    db $FD                                        ; $4D12: $FD
    rlca                                          ; $4D13: $07
    ld bc, $0AC0                                  ; $4D14: $01 $C0 $0A
    adc d                                         ; $4D17: $8A
    ld b, l                                       ; $4D18: $45
    inc h                                         ; $4D19: $24

jr_004_4D1A:
    add hl, de                                    ; $4D1A: $19
    ret c                                         ; $4D1B: $D8

    rlca                                          ; $4D1C: $07
    ld hl, sp+$19                                 ; $4D1D: $F8 $19
    daa                                           ; $4D1F: $27
    db $FD                                        ; $4D20: $FD
    ld e, a                                       ; $4D21: $5F
    ei                                            ; $4D22: $FB
    ld [$50DB], sp                                ; $4D23: $08 $DB $50
    db $10                                        ; $4D26: $10
    ld [hl], b                                    ; $4D27: $70
    ld [$E819], sp                                ; $4D28: $08 $19 $E8
    ld [de], a                                    ; $4D2B: $12
    ld [hl+], a                                   ; $4D2C: $22
    adc c                                         ; $4D2D: $89
    add hl, bc                                    ; $4D2E: $09
    add hl, de                                    ; $4D2F: $19
    add $38                                       ; $4D30: $C6 $38
    rst RST_00                                    ; $4D32: $C7
    xor e                                         ; $4D33: $AB
    add hl, de                                    ; $4D34: $19
    add hl, sp                                    ; $4D35: $39
    db $FD                                        ; $4D36: $FD
    rst RST_30                                    ; $4D37: $F7
    ld [$50F6], sp                                ; $4D38: $08 $F6 $50
    db $10                                        ; $4D3B: $10
    db $FD                                        ; $4D3C: $FD
    ld [hl], b                                    ; $4D3D: $70
    ld [$1219], sp                                ; $4D3E: $08 $19 $12
    ld [hl+], a                                   ; $4D41: $22
    adc c                                         ; $4D42: $89
    inc h                                         ; $4D43: $24
    add hl, de                                    ; $4D44: $19
    dec e                                         ; $4D45: $1D
    db $DB                                        ; $4D46: $DB
    ld h, h                                       ; $4D47: $64
    sbc e                                         ; $4D48: $9B
    add hl, de                                    ; $4D49: $19
    ld a, [hl-]                                   ; $4D4A: $3A
    ei                                            ; $4D4B: $FB
    rst RST_18                                    ; $4D4C: $DF
    ld [$48FF], sp                                ; $4D4D: $08 $FF $48
    nop                                           ; $4D50: $00
    db $10                                        ; $4D51: $10
    ld [hl], b                                    ; $4D52: $70
    ld hl, $1149                                  ; $4D53: $21 $49 $11
    ld e, c                                       ; $4D56: $59
    and e                                         ; $4D57: $A3
    adc d                                         ; $4D58: $8A
    adc e                                         ; $4D59: $8B
    add hl, de                                    ; $4D5A: $19
    ld a, h                                       ; $4D5B: $7C
    sub e                                         ; $4D5C: $93
    ld l, h                                       ; $4D5D: $6C
    jr jr_004_4D68                                ; $4D5E: $18 $08

jr_004_4D60:
    rst RST_10                                    ; $4D60: $D7
    jr jr_004_4D60                                ; $4D61: $18 $FD

    ld h, h                                       ; $4D63: $64
    ld [$7074], sp                                ; $4D64: $08 $74 $70
    db $10                                        ; $4D67: $10

jr_004_4D68:
    ld h, b                                       ; $4D68: $60
    jp nz, Jump_000_250A                          ; $4D69: $C2 $0A $25

    ccf                                           ; $4D6C: $3F
    jp nz, $A27F                                  ; $4D6D: $C2 $7F $A2

    xor b                                         ; $4D70: $A8
    ld b, h                                       ; $4D71: $44
    sbc d                                         ; $4D72: $9A
    ld [$6F04], sp                                ; $4D73: $08 $04 $6F
    ld c, b                                       ; $4D76: $48
    add hl, bc                                    ; $4D77: $09
    rst RST_08                                    ; $4D78: $CF
    ld a, [bc]                                    ; $4D79: $0A
    pop bc                                        ; $4D7A: $C1
    ld a, [bc]                                    ; $4D7B: $0A
    ret nz                                        ; $4D7C: $C0

    sbc c                                         ; $4D7D: $99
    add b                                         ; $4D7E: $80
    inc sp                                        ; $4D7F: $33
    jr z, jr_004_4DE5                             ; $4D80: $28 $63

    ld [$0297], sp                                ; $4D82: $08 $97 $02
    sub b                                         ; $4D85: $90
    or e                                          ; $4D86: $B3
    or b                                          ; $4D87: $B0
    dec [hl]                                      ; $4D88: $35
    inc [hl]                                      ; $4D89: $34
    halt                                          ; $4D8A: $76
    nop                                           ; $4D8B: $00
    ld hl, sp+$15                                 ; $4D8C: $F8 $15
    rrca                                          ; $4D8E: $0F
    cp $03                                        ; $4D8F: $FE $03
    add sp, $19                                   ; $4D91: $E8 $19
    ld [$0810], sp                                ; $4D93: $08 $10 $08
    ld d, b                                       ; $4D96: $50
    ld hl, $420A                                  ; $4D97: $21 $0A $42
    ld [$EE02], sp                                ; $4D9A: $08 $02 $EE
    ld c, $E3                                     ; $4D9D: $0E $E3
    adc d                                         ; $4D9F: $8A
    ld a, b                                       ; $4DA0: $78
    push bc                                       ; $4DA1: $C5
    ld bc, $F8CE                                  ; $4DA2: $01 $CE $F8
    sbc h                                         ; $4DA5: $9C
    ld a, [bc]                                    ; $4DA6: $0A
    add hl, sp                                    ; $4DA7: $39
    xor d                                         ; $4DA8: $AA
    ld [$0879], sp                                ; $4DA9: $08 $79 $08
    rst RST_00                                    ; $4DAC: $C7
    ld [$08A3], sp                                ; $4DAD: $08 $A3 $08
    sub c                                         ; $4DB0: $91
    or c                                          ; $4DB1: $B1
    ld a, b                                       ; $4DB2: $78
    adc e                                         ; $4DB3: $8B
    sbc b                                         ; $4DB4: $98
    add hl, bc                                    ; $4DB5: $09
    ld [hl], a                                    ; $4DB6: $77
    add a                                         ; $4DB7: $87
    ld b, a                                       ; $4DB8: $47
    ld [$F8D4], sp                                ; $4DB9: $08 $D4 $F8
    ld e, b                                       ; $4DBC: $58
    dec sp                                        ; $4DBD: $3B
    nop                                           ; $4DBE: $00
    ld e, h                                       ; $4DBF: $5C
    nop                                           ; $4DC0: $00
    ld l, [hl]                                    ; $4DC1: $6E
    ld l, a                                       ; $4DC2: $6F
    ld h, c                                       ; $4DC3: $61
    ld [hl], h                                    ; $4DC4: $74
    ld h, b                                       ; $4DC5: $60
    add hl, bc                                    ; $4DC6: $09
    adc b                                         ; $4DC7: $88
    rrca                                          ; $4DC8: $0F
    cp b                                          ; $4DC9: $B8
    ccf                                           ; $4DCA: $3F
    ld [hl], b                                    ; $4DCB: $70
    ret nc                                        ; $4DCC: $D0

    nop                                           ; $4DCD: $00
    adc b                                         ; $4DCE: $88
    inc b                                         ; $4DCF: $04
    ld [$CFC4], sp                                ; $4DD0: $08 $C4 $CF
    ret nz                                        ; $4DD3: $C0

    sbc a                                         ; $4DD4: $9F
    ld a, d                                       ; $4DD5: $7A
    add b                                         ; $4DD6: $80
    add hl, bc                                    ; $4DD7: $09
    ld h, c                                       ; $4DD8: $61
    add hl, bc                                    ; $4DD9: $09
    ld sp, hl                                     ; $4DDA: $F9
    inc sp                                        ; $4DDB: $33
    ld [$D003], sp                                ; $4DDC: $08 $03 $D0
    ld l, b                                       ; $4DDF: $68

jr_004_4DE0:
    jr @-$0E                                      ; $4DE0: $18 $F0

    add sp, -$0C                                  ; $4DE2: $E8 $F4
    halt                                          ; $4DE4: $76

jr_004_4DE5:
    or $FB                                        ; $4DE5: $F6 $FB
    or h                                          ; $4DE7: $B4
    nop                                           ; $4DE8: $00
    db $FC                                        ; $4DE9: $FC
    nop                                           ; $4DEA: $00
    ld sp, hl                                     ; $4DEB: $F9
    ld a, a                                       ; $4DEC: $7F
    cp b                                          ; $4DED: $B8
    rra                                           ; $4DEE: $1F
    ldh [$FF2B], a                                ; $4DEF: $E0 $2B
    add $FD                                       ; $4DF1: $C6 $FD
    nop                                           ; $4DF3: $00
    ld a, d                                       ; $4DF4: $7A
    ret z                                         ; $4DF5: $C8

    jr nc, @-$25                                  ; $4DF6: $30 $D9

    add hl, bc                                    ; $4DF8: $09
    cp [hl]                                       ; $4DF9: $BE
    jr c, jr_004_4E1E                             ; $4DFA: $38 $22

    adc c                                         ; $4DFC: $89
    add b                                         ; $4DFD: $80
    nop                                           ; $4DFE: $00
    or b                                          ; $4DFF: $B0
    jr nc, @+$7A                                  ; $4E00: $30 $78

    ld b, $7B                                     ; $4E02: $06 $7B
    or b                                          ; $4E04: $B0
    scf                                           ; $4E05: $37
    ret nz                                        ; $4E06: $C0

    rrca                                          ; $4E07: $0F
    ld [$9858], sp                                ; $4E08: $08 $58 $98
    ld h, h                                       ; $4E0B: $64
    inc bc                                        ; $4E0C: $03
    sbc b                                         ; $4E0D: $98
    add hl, bc                                    ; $4E0E: $09
    jr c, jr_004_4DE0                             ; $4E0F: $38 $CF

    ld [hl], b                                    ; $4E11: $70
    sbc a                                         ; $4E12: $9F
    push af                                       ; $4E13: $F5
    dec c                                         ; $4E14: $0D
    ld a, [$F2CD]                                 ; $4E15: $FA $CD $F2
    dec e                                         ; $4E18: $1D
    add hl, bc                                    ; $4E19: $09
    jr z, jr_004_4E29                             ; $4E1A: $28 $0D

    ld [hl], b                                    ; $4E1C: $70
    ld d, a                                       ; $4E1D: $57

jr_004_4E1E:
    jr @+$72                                      ; $4E1E: $18 $70

    ld b, h                                       ; $4E20: $44
    ld [hl], b                                    ; $4E21: $70
    add c                                         ; $4E22: $81
    ld [hl], b                                    ; $4E23: $70
    ret z                                         ; $4E24: $C8

    ld [hl], b                                    ; $4E25: $70
    sub $08                                       ; $4E26: $D6 $08
    ld h, b                                       ; $4E28: $60

jr_004_4E29:
    jr nz, jr_004_4E33                            ; $4E29: $20 $08

    ldh [rSVBK], a                                ; $4E2B: $E0 $70
    ld [$57FD], sp                                ; $4E2D: $08 $FD $57
    ld [hl+], a                                   ; $4E30: $22
    ld hl, sp+$40                                 ; $4E31: $F8 $40

jr_004_4E33:
    ld a, [bc]                                    ; $4E33: $0A
    add b                                         ; $4E34: $80
    ld [$0D78], sp                                ; $4E35: $08 $78 $0D
    ld sp, $0398                                  ; $4E38: $31 $98 $03
    ld hl, sp+$18                                 ; $4E3B: $F8 $18
    scf                                           ; $4E3D: $37
    rlca                                          ; $4E3E: $07
    ld [hl], a                                    ; $4E3F: $77
    ld [$EF3E], sp                                ; $4E40: $08 $3E $EF
    rrca                                          ; $4E43: $0F

jr_004_4E44:
    ld bc, $0018                                  ; $4E44: $01 $18 $00
    ld d, b                                       ; $4E47: $50
    nop                                           ; $4E48: $00
    cp $4A                                        ; $4E49: $FE $4A
    dec c                                         ; $4E4B: $0D
    ld [$F201], sp                                ; $4E4C: $08 $01 $F2
    jr jr_004_4E44                                ; $4E4F: $18 $F3

    dec bc                                        ; $4E51: $0B
    inc c                                         ; $4E52: $0C
    ldh a, [c]                                    ; $4E53: $F2
    add hl, sp                                    ; $4E54: $39
    ld sp, hl                                     ; $4E55: $F9
    db $10                                        ; $4E56: $10
    ld [$CCC1], sp                                ; $4E57: $08 $C1 $CC
    dec c                                         ; $4E5A: $0D
    ret nz                                        ; $4E5B: $C0

    ld h, b                                       ; $4E5C: $60
    call $F909                                    ; $4E5D: $CD $09 $F9
    sub c                                         ; $4E60: $91
    ld l, [hl]                                    ; $4E61: $6E
    scf                                           ; $4E62: $37
    ret c                                         ; $4E63: $D8

    rst RST_28                                    ; $4E64: $EF
    nop                                           ; $4E65: $00
    jr nc, @-$2F                                  ; $4E66: $30 $CF

    ld [hl], b                                    ; $4E68: $70
    db $DD                                        ; $4E69: $DD
    ld h, d                                       ; $4E6A: $62
    sbc a                                         ; $4E6B: $9F
    ld l, h                                       ; $4E6C: $6C
    sub e                                         ; $4E6D: $93
    pop af                                        ; $4E6E: $F1
    ld [$8019], sp                                ; $4E6F: $08 $19 $80
    ld a, b                                       ; $4E72: $78
    db $10                                        ; $4E73: $10
    ret z                                         ; $4E74: $C8

    jr nz, @+$42                                  ; $4E75: $20 $40

    daa                                           ; $4E77: $27
    ld b, b                                       ; $4E78: $40
    ld [hl], $08                                  ; $4E79: $36 $08
    ld l, $4C                                     ; $4E7B: $2E $4C
    jr nc, jr_004_4E8A                            ; $4E7D: $30 $0B

    adc b                                         ; $4E7F: $88
    ld b, h                                       ; $4E80: $44
    ld h, b                                       ; $4E81: $60
    add hl, bc                                    ; $4E82: $09
    adc b                                         ; $4E83: $88
    ld [hl], a                                    ; $4E84: $77
    adc a                                         ; $4E85: $8F
    ld hl, sp-$37                                 ; $4E86: $F8 $C9
    halt                                          ; $4E88: $76
    ld b, [hl]                                    ; $4E89: $46

jr_004_4E8A:
    pop de                                        ; $4E8A: $D1
    adc b                                         ; $4E8B: $88
    ld h, c                                       ; $4E8C: $61
    sbc [hl]                                      ; $4E8D: $9E
    rst RST_38                                    ; $4E8E: $FF
    ldh a, [$FFB8]                                ; $4E8F: $F0 $B8
    inc l                                         ; $4E91: $2C
    push de                                       ; $4E92: $D5
    ret                                           ; $4E93: $C9


    ld [$0837], sp                                ; $4E94: $08 $37 $08
    jr nc, jr_004_4EA1                            ; $4E97: $30 $08

    ld [hl], $50                                  ; $4E99: $36 $50
    ld a, b                                       ; $4E9B: $78

jr_004_4E9C:
    ld l, [hl]                                    ; $4E9C: $6E
    ld [$0878], sp                                ; $4E9D: $08 $78 $08
    nop                                           ; $4EA0: $00

jr_004_4EA1:
    and b                                         ; $4EA1: $A0
    ccf                                           ; $4EA2: $3F
    ld l, b                                       ; $4EA3: $68
    ld bc, $1A0F                                  ; $4EA4: $01 $0F $1A
    jp $F006                                      ; $4EA7: $C3 $06 $F0


    ld bc, $50FC                                  ; $4EAA: $01 $FC $50
    xor $E1                                       ; $4EAD: $EE $E1
    ld a, [bc]                                    ; $4EAF: $0A
    ld [hl], b                                    ; $4EB0: $70
    ret nz                                        ; $4EB1: $C0

    ld [hl], b                                    ; $4EB2: $70
    ld e, b                                       ; $4EB3: $58
    ld [hl], b                                    ; $4EB4: $70
    inc a                                         ; $4EB5: $3C
    xor $10                                       ; $4EB6: $EE $10
    jr nz, jr_004_4F2A                            ; $4EB8: $20 $70

    inc bc                                        ; $4EBA: $03
    ld [hl], h                                    ; $4EBB: $74
    ld [$FE24], sp                                ; $4EBC: $08 $24 $FE
    jp hl                                         ; $4EBF: $E9


    add sp, $09                                   ; $4EC0: $E8 $09

jr_004_4EC2:
    add b                                         ; $4EC2: $80
    ld [bc], a                                    ; $4EC3: $02
    sub c                                         ; $4EC4: $91
    ld sp, hl                                     ; $4EC5: $F9
    inc b                                         ; $4EC6: $04

jr_004_4EC7:
    ld [$77EC], sp                                ; $4EC7: $08 $EC $77
    ld h, c                                       ; $4ECA: $61
    ld [hl], d                                    ; $4ECB: $72
    ld b, $09                                     ; $4ECC: $06 $09
    nop                                           ; $4ECE: $00
    di                                            ; $4ECF: $F3
    ld [$0888], sp                                ; $4ED0: $08 $88 $08
    inc c                                         ; $4ED3: $0C
    rst RST_20                                    ; $4ED4: $E7
    sub b                                         ; $4ED5: $90
    ld [$0F98], sp                                ; $4ED6: $08 $98 $0F
    ld h, b                                       ; $4ED9: $60
    adc [hl]                                      ; $4EDA: $8E
    ld [$9F30], sp                                ; $4EDB: $08 $30 $9F
    ld b, b                                       ; $4EDE: $40
    ld [$7261], sp                                ; $4EDF: $08 $61 $72
    jr jr_004_4EC2                                ; $4EE2: $18 $DE

    add hl, bc                                    ; $4EE4: $09
    ld h, b                                       ; $4EE5: $60
    ldh a, [$FF09]                                ; $4EE6: $F0 $09
    ld h, b                                       ; $4EE8: $60
    sub b                                         ; $4EE9: $90
    add hl, bc                                    ; $4EEA: $09
    nop                                           ; $4EEB: $00
    ld c, b                                       ; $4EEC: $48
    rst RST_38                                    ; $4EED: $FF
    ld a, [bc]                                    ; $4EEE: $0A
    cp $03                                        ; $4EEF: $FE $03
    ld [$FC01], sp                                ; $4EF1: $08 $01 $FC
    ld b, $9F                                     ; $4EF4: $06 $9F
    ld [$F902], sp                                ; $4EF6: $08 $02 $F9
    ret nc                                        ; $4EF9: $D0

    ld [$6074], sp                                ; $4EFA: $08 $74 $60
    ld [hl], d                                    ; $4EFD: $72
    ld hl, sp-$70                                 ; $4EFE: $F8 $90
    add hl, bc                                    ; $4F00: $09
    ld h, b                                       ; $4F01: $60
    sub b                                         ; $4F02: $90
    add hl, bc                                    ; $4F03: $09
    ld h, b                                       ; $4F04: $60
    ccf                                           ; $4F05: $3F
    add b                                         ; $4F06: $80
    sbc a                                         ; $4F07: $9F
    ld [$7FC0], sp                                ; $4F08: $08 $C0 $7F
    sub b                                         ; $4F0B: $90
    ld [$C328], sp                                ; $4F0C: $08 $28 $C3
    ld a, [bc]                                    ; $4F0F: $0A
    ld hl, sp+$61                                 ; $4F10: $F8 $61
    ld [hl], d                                    ; $4F12: $72
    ld h, b                                       ; $4F13: $60
    ld [hl], a                                    ; $4F14: $77
    add hl, bc                                    ; $4F15: $09
    inc b                                         ; $4F16: $04
    di                                            ; $4F17: $F3
    jr jr_004_4E9C                                ; $4F18: $18 $82

    ld [$E708], sp                                ; $4F1A: $08 $08 $E7
    ld sp, $16E4                                  ; $4F1D: $31 $E4 $16
    xor b                                         ; $4F20: $A8
    ld a, d                                       ; $4F21: $7A
    dec d                                         ; $4F22: $15
    jp $8F28                                      ; $4F23: $C3 $28 $8F


    jr nz, jr_004_4EC7                            ; $4F26: $20 $9F

    ld h, b                                       ; $4F28: $60
    inc c                                         ; $4F29: $0C

jr_004_4F2A:
    add hl, bc                                    ; $4F2A: $09
    ld [$9070], a                                 ; $4F2B: $EA $70 $90
    ld [hl], b                                    ; $4F2E: $70
    dec de                                        ; $4F2F: $1B
    ld c, b                                       ; $4F30: $48
    ccf                                           ; $4F31: $3F
    ld [hl], b                                    ; $4F32: $70
    inc a                                         ; $4F33: $3C
    and b                                         ; $4F34: $A0
    ld [hl], b                                    ; $4F35: $70
    ld [hl], b                                    ; $4F36: $70
    ld [hl], b                                    ; $4F37: $70
    ld h, b                                       ; $4F38: $60
    inc l                                         ; $4F39: $2C
    pop hl                                        ; $4F3A: $E1
    or b                                          ; $4F3B: $B0
    add a                                         ; $4F3C: $87
    adc d                                         ; $4F3D: $8A
    ld e, b                                       ; $4F3E: $58
    rra                                           ; $4F3F: $1F
    nop                                           ; $4F40: $00
    ld a, a                                       ; $4F41: $7F
    ld [$0BFF], sp                                ; $4F42: $08 $FF $0B
    ld bc, $FC55                                  ; $4F45: $01 $55 $FC
    ld [hl], b                                    ; $4F48: $70
    ld e, $70                                     ; $4F49: $1E $70
    ld a, b                                       ; $4F4B: $78
    ld [hl], b                                    ; $4F4C: $70
    ldh [rSVBK], a                                ; $4F4D: $E0 $70
    ld [hl], b                                    ; $4F4F: $70
    add b                                         ; $4F50: $80
    ld [hl], h                                    ; $4F51: $74
    ld [$0370], sp                                ; $4F52: $08 $70 $03
    ld b, $F0                                     ; $4F55: $06 $F0
    ld a, [de]                                    ; $4F57: $1A
    rlca                                          ; $4F58: $07
    jp $0F68                                      ; $4F59: $C3 $68 $0F


    and b                                         ; $4F5C: $A0
    ccf                                           ; $4F5D: $3F
    add [hl]                                      ; $4F5E: $86
    ld [$DD70], sp                                ; $4F5F: $08 $70 $DD
    ld e, b                                       ; $4F62: $58
    ld [hl], b                                    ; $4F63: $70
    inc a                                         ; $4F64: $3C
    db $10                                        ; $4F65: $10
    jr nz, @+$72                                  ; $4F66: $20 $70

    ret nz                                        ; $4F68: $C0

    halt                                          ; $4F69: $76
    sbc a                                         ; $4F6A: $9F
    ld [$31CE], sp                                ; $4F6B: $08 $CE $31

jr_004_4F6E:
    ld [$1929], sp                                ; $4F6E: $08 $29 $19
    ld [$6F19], sp                                ; $4F71: $08 $19 $6F
    jp nz, Jump_000_0838                          ; $4F74: $C2 $38 $08

    dec a                                         ; $4F77: $3D
    ld a, c                                       ; $4F78: $79
    nop                                           ; $4F79: $00
    jr c, jr_004_4F85                             ; $4F7A: $38 $09

    db $FC                                        ; $4F7C: $FC
    ld [de], a                                    ; $4F7D: $12
    ld a, [bc]                                    ; $4F7E: $0A
    nop                                           ; $4F7F: $00
    ld l, b                                       ; $4F80: $68
    ld a, [bc]                                    ; $4F81: $0A
    nop                                           ; $4F82: $00
    ld b, c                                       ; $4F83: $41
    cp [hl]                                       ; $4F84: $BE

jr_004_4F85:
    ld e, a                                       ; $4F85: $5F
    ld c, c                                       ; $4F86: $49
    ld sp, hl                                     ; $4F87: $F9
    or [hl]                                       ; $4F88: $B6
    jr jr_004_4F93                                ; $4F89: $18 $08

    ld a, [de]                                    ; $4F8B: $1A
    ld e, d                                       ; $4F8C: $5A

jr_004_4F8D:
    ld a, [$18FF]                                 ; $4F8D: $FA $FF $18
    ld [$0048], sp                                ; $4F90: $08 $48 $00

jr_004_4F93:
    ld de, $120A                                  ; $4F93: $11 $0A $12
    ld e, c                                       ; $4F96: $59
    sbc c                                         ; $4F97: $99
    nop                                           ; $4F98: $00
    ldh [$FF1F], a                                ; $4F99: $E0 $1F
    ld [$18F9], sp                                ; $4F9B: $08 $F9 $18
    rst RST_20                                    ; $4F9E: $E7
    ld [$19FF], sp                                ; $4F9F: $08 $FF $19
    add hl, sp                                    ; $4FA2: $39
    ld e, c                                       ; $4FA3: $59
    ld a, [$0918]                                 ; $4FA4: $FA $18 $09
    ld d, b                                       ; $4FA7: $50
    db $10                                        ; $4FA8: $10
    ldh [c], a                                    ; $4FA9: $E2
    dec bc                                        ; $4FAA: $0B

jr_004_4FAB:
    ld c, e                                       ; $4FAB: $4B
    ld hl, $9669                                  ; $4FAC: $21 $69 $96
    add hl, hl                                    ; $4FAF: $29
    ld sp, hl                                     ; $4FB0: $F9
    or $27                                        ; $4FB1: $F6 $27
    ld c, c                                       ; $4FB3: $49
    or [hl]                                       ; $4FB4: $B6

jr_004_4FB5:
    jr jr_004_4F6E                                ; $4FB5: $18 $B7

    ld c, b                                       ; $4FB7: $48
    jr c, jr_004_4FC2                             ; $4FB8: $38 $08

    jr jr_004_4FAB                                ; $4FBA: $18 $EF

    ld a, [$0878]                                 ; $4FBC: $FA $78 $08
    sub $70                                       ; $4FBF: $D6 $70
    db $10                                        ; $4FC1: $10

jr_004_4FC2:
    ld [hl], b                                    ; $4FC2: $70
    ld [$50F1], sp                                ; $4FC3: $08 $F1 $50
    ld c, c                                       ; $4FC6: $49
    ld de, $2022                                  ; $4FC7: $11 $22 $20
    rst RST_18                                    ; $4FCA: $DF
    inc h                                         ; $4FCB: $24
    ld sp, hl                                     ; $4FCC: $F9
    ld [hl], h                                    ; $4FCD: $74
    db $DB                                        ; $4FCE: $DB
    jr @+$0A                                      ; $4FCF: $18 $08

    add hl, de                                    ; $4FD1: $19
    ld h, h                                       ; $4FD2: $64
    jr c, jr_004_4FB5                             ; $4FD3: $38 $E0

    rra                                           ; $4FD5: $1F
    rst RST_38                                    ; $4FD6: $FF
    ld a, [$0878]                                 ; $4FD7: $FA $78 $08
    ld c, b                                       ; $4FDA: $48
    nop                                           ; $4FDB: $00
    ld de, $000A                                  ; $4FDC: $11 $0A $00
    ld [hl], e                                    ; $4FDF: $73
    sbc e                                         ; $4FE0: $9B
    ld [$2178], sp                                ; $4FE1: $08 $78 $21
    sbc c                                         ; $4FE4: $99
    ld h, [hl]                                    ; $4FE5: $66
    ld [$E6F9], sp                                ; $4FE6: $08 $F9 $E6
    add hl, de                                    ; $4FE9: $19
    ld [$3C18], sp                                ; $4FEA: $08 $18 $3C
    rst RST_20                                    ; $4FED: $E7
    jr c, @+$0A                                   ; $4FEE: $38 $08

    jr @+$01                                      ; $4FF0: $18 $FF

    ld a, [$0948]                                 ; $4FF2: $FA $48 $09
    ld [de], a                                    ; $4FF5: $12
    ld [$4970], sp                                ; $4FF6: $08 $70 $49
    ld l, b                                       ; $4FF9: $68
    push bc                                       ; $4FFA: $C5
    ld a, [bc]                                    ; $4FFB: $0A
    nop                                           ; $4FFC: $00
    ld b, $F3                                     ; $4FFD: $06 $F3
    ld [$0C08], sp                                ; $4FFF: $08 $08 $0C
    ret nz                                        ; $5002: $C0

    inc bc                                        ; $5003: $03
    jr nc, jr_004_4F8D                            ; $5004: $30 $87

    ret nc                                        ; $5006: $D0

    rra                                           ; $5007: $1F
    ld b, b                                       ; $5008: $40
    ld a, a                                       ; $5009: $7F
    ld h, b                                       ; $500A: $60
    pop af                                        ; $500B: $F1
    ld a, [$6108]                                 ; $500C: $FA $08 $61
    ld [hl], d                                    ; $500F: $72
    cp b                                          ; $5010: $B8
    ld [hl], b                                    ; $5011: $70
    ld a, b                                       ; $5012: $78
    ld [hl], b                                    ; $5013: $70
    ldh [$FFB8], a                                ; $5014: $E0 $B8
    ld [hl], b                                    ; $5016: $70
    add b                                         ; $5017: $80
    ld [hl], d                                    ; $5018: $72
    ld [$0211], sp                                ; $5019: $08 $11 $02
    cp $0B                                        ; $501C: $FE $0B
    dec bc                                        ; $501E: $0B
    ld hl, sp+$2C                                 ; $501F: $F8 $2C
    pop hl                                        ; $5021: $E1
    or b                                          ; $5022: $B0
    sub b                                         ; $5023: $90
    ret nz                                        ; $5024: $C0

    sub b                                         ; $5025: $90
    ld e, b                                       ; $5026: $58
    push af                                       ; $5027: $F5
    sub b                                         ; $5028: $90
    ld l, c                                       ; $5029: $69
    adc c                                         ; $502A: $89
    ld [hl], b                                    ; $502B: $70
    ld bc, $0770                                  ; $502C: $01 $70 $07
    ld [hl], b                                    ; $502F: $70
    ld d, l                                       ; $5030: $55
    ld e, $70                                     ; $5031: $1E $70
    ld a, b                                       ; $5033: $78
    ld [hl], b                                    ; $5034: $70
    ldh [rSVBK], a                                ; $5035: $E0 $70
    add b                                         ; $5037: $80
    ei                                            ; $5038: $FB
    jp nc, $9270                                  ; $5039: $D2 $70 $92

    inc bc                                        ; $503C: $03
    and c                                         ; $503D: $A1
    db $FC                                        ; $503E: $FC
    ld b, $08                                     ; $503F: $06 $08
    ld a, [bc]                                    ; $5041: $0A
    rra                                           ; $5042: $1F
    ld sp, hl                                     ; $5043: $F9
    ld l, $E3                                     ; $5044: $2E $E3
    ld h, c                                       ; $5046: $61
    ld [hl], d                                    ; $5047: $72
    ld h, b                                       ; $5048: $60
    ld [hl], d                                    ; $5049: $72
    sub b                                         ; $504A: $90
    ldh a, [$FF09]                                ; $504B: $F0 $09
    ld [hl], b                                    ; $504D: $70
    sub b                                         ; $504E: $90
    ld [hl], b                                    ; $504F: $70
    inc e                                         ; $5050: $1C
    ld b, b                                       ; $5051: $40
    ccf                                           ; $5052: $3F
    add b                                         ; $5053: $80
    cp [hl]                                       ; $5054: $BE
    add hl, bc                                    ; $5055: $09
    ld a, a                                       ; $5056: $7F
    sub b                                         ; $5057: $90
    add hl, bc                                    ; $5058: $09
    jp Jump_004_600A                              ; $5059: $C3 $0A $60


    ret nz                                        ; $505C: $C0

    db $FC                                        ; $505D: $FC
    add hl, bc                                    ; $505E: $09
    ld h, b                                       ; $505F: $60
    add c                                         ; $5060: $81
    ld [$0876], sp                                ; $5061: $08 $76 $08
    or b                                          ; $5064: $B0
    add a                                         ; $5065: $87
    and c                                         ; $5066: $A1
    ld [hl], b                                    ; $5067: $70
    rra                                           ; $5068: $1F
    rst RST_28                                    ; $5069: $EF
    ld bc, $07FC                                  ; $506A: $01 $FC $07
    ldh a, [rSVBK]                                ; $506D: $F0 $70
    ld e, d                                       ; $506F: $5A
    ld a, b                                       ; $5070: $78
    ld [hl], b                                    ; $5071: $70
    ldh [$FFEF], a                                ; $5072: $E0 $EF
    ld [hl], b                                    ; $5074: $70
    inc bc                                        ; $5075: $03
    ld [hl], b                                    ; $5076: $70
    rrca                                          ; $5077: $0F
    adc d                                         ; $5078: $8A
    cp a                                          ; $5079: $BF
    ld e, $C0                                     ; $507A: $1E $C0
    ld a, d                                       ; $507C: $7A
    ld l, b                                       ; $507D: $68
    add sp, $68                                   ; $507E: $E8 $68
    and b                                         ; $5080: $A0
    ld a, a                                       ; $5081: $7F
    ccf                                           ; $5082: $3F
    cp a                                          ; $5083: $BF
    ld [hl], b                                    ; $5084: $70
    ld c, b                                       ; $5085: $48
    jr nz, jr_004_50B8                            ; $5086: $20 $30

    jr nz, jr_004_50BA                            ; $5088: $20 $30

    push af                                       ; $508A: $F5
    jr nz, jr_004_50BD                            ; $508B: $20 $30

    ei                                            ; $508D: $FB
    rrca                                          ; $508E: $0F
    ld bc, $0788                                  ; $508F: $01 $88 $07
    adc b                                         ; $5092: $88
    ld [$0B67], a                                 ; $5093: $EA $67 $0B
    ld [hl], b                                    ; $5096: $70
    inc bc                                        ; $5097: $03
    ld [hl], b                                    ; $5098: $70
    rrca                                          ; $5099: $0F
    cp a                                          ; $509A: $BF
    ld e, $37                                     ; $509B: $1E $37
    ret nz                                        ; $509D: $C0

    ld a, b                                       ; $509E: $78
    ld l, b                                       ; $509F: $68
    ld a, c                                       ; $50A0: $79
    sbc h                                         ; $50A1: $9C
    ld d, b                                       ; $50A2: $50
    cp a                                          ; $50A3: $BF
    ld [hl], b                                    ; $50A4: $70
    ld [hl], l                                    ; $50A5: $75
    ccf                                           ; $50A6: $3F
    ld [hl], d                                    ; $50A7: $72
    ld [$FE70], sp                                ; $50A8: $08 $70 $FE
    cp c                                          ; $50AB: $B9
    ld a, d                                       ; $50AC: $7A
    jr nc, jr_004_5106                            ; $50AD: $30 $57

    add sp, $68                                   ; $50AF: $E8 $68
    and b                                         ; $50B1: $A0
    ld l, b                                       ; $50B2: $68
    add b                                         ; $50B3: $80
    jp Jump_004_7868                              ; $50B4: $C3 $68 $78


    rst RST_38                                    ; $50B7: $FF

jr_004_50B8:
    adc b                                         ; $50B8: $88
    cp e                                          ; $50B9: $BB

jr_004_50BA:
    ld [hl], b                                    ; $50BA: $70
    ldh a, [rNR41]                                ; $50BB: $F0 $20

jr_004_50BD:
    jr nc, @+$78                                  ; $50BD: $30 $76

    ld h, b                                       ; $50BF: $60
    dec d                                         ; $50C0: $15
    sbc [hl]                                      ; $50C1: $9E
    pop bc                                        ; $50C2: $C1
    ld e, $58                                     ; $50C3: $1E $58
    rra                                           ; $50C5: $1F
    ld [$081D], sp                                ; $50C6: $08 $1D $08
    inc d                                         ; $50C9: $14
    ld a, [hl-]                                   ; $50CA: $3A
    add b                                         ; $50CB: $80
    ld [hl], l                                    ; $50CC: $75
    ld l, b                                       ; $50CD: $68
    ld [$D468], a                                 ; $50CE: $EA $68 $D4
    rlca                                          ; $50D1: $07
    cp l                                          ; $50D2: $BD
    ld [hl], b                                    ; $50D3: $70
    ld a, $50                                     ; $50D4: $3E $50
    pop hl                                        ; $50D6: $E1
    ld a, [bc]                                    ; $50D7: $0A
    ld [hl], b                                    ; $50D8: $70
    ld a, a                                       ; $50D9: $7F
    ld [hl], b                                    ; $50DA: $70
    ldh a, [$FFF0]                                ; $50DB: $F0 $F0
    ld [hl], b                                    ; $50DD: $70
    ldh a, [rSVBK]                                ; $50DE: $F0 $70
    ld hl, sp-$56                                 ; $50E0: $F8 $AA
    nop                                           ; $50E2: $00
    ld d, l                                       ; $50E3: $55
    cp a                                          ; $50E4: $BF
    ld [$0AFF], sp                                ; $50E5: $08 $FF $0A
    jr c, jr_004_511A                             ; $50E8: $38 $30

    nop                                           ; $50EA: $00
    ld d, c                                       ; $50EB: $51
    ld b, e                                       ; $50EC: $43
    cp $0F                                        ; $50ED: $FE $0F
    ld c, $FF                                     ; $50EF: $0E $FF
    rst RST_38                                    ; $50F1: $FF
    rst RST_00                                    ; $50F2: $C7

jr_004_50F3:
    rrca                                          ; $50F3: $0F
    inc hl                                        ; $50F4: $23
    ld bc, $FC03                                  ; $50F5: $01 $03 $FC
    rlca                                          ; $50F8: $07
    ldh a, [$FF1F]                                ; $50F9: $F0 $1F
    ret nz                                        ; $50FB: $C0

    ld a, a                                       ; $50FC: $7F
    sbc a                                         ; $50FD: $9F
    ld [$70AA], sp                                ; $50FE: $08 $AA $70
    inc bc                                        ; $5101: $03
    ld [hl], b                                    ; $5102: $70
    rrca                                          ; $5103: $0F
    ld [hl], b                                    ; $5104: $70
    ccf                                           ; $5105: $3F

jr_004_5106:
    ld h, l                                       ; $5106: $65
    ld a, $88                                     ; $5107: $3E $88
    db $10                                        ; $5109: $10
    inc [hl]                                      ; $510A: $34
    pop bc                                        ; $510B: $C1
    ld h, $60                                     ; $510C: $26 $60
    inc b                                         ; $510E: $04
    ret                                           ; $510F: $C9


    ld [bc], a                                    ; $5110: $02
    inc de                                        ; $5111: $13
    reti                                          ; $5112: $D9


    rlca                                          ; $5113: $07
    db $DD                                        ; $5114: $DD
    jr jr_004_50F3                                ; $5115: $18 $DC

    ld bc, $8908                                  ; $5117: $01 $08 $89

jr_004_511A:
    rst RST_30                                    ; $511A: $F7
    ld [hl], b                                    ; $511B: $70
    sub b                                         ; $511C: $90
    reti                                          ; $511D: $D9


    ld [hl], b                                    ; $511E: $70
    ld [hl], $70                                  ; $511F: $36 $70
    and b                                         ; $5121: $A0
    ld [hl], b                                    ; $5122: $70
    ld d, h                                       ; $5123: $54
    ld [hl+], a                                   ; $5124: $22
    ld h, b                                       ; $5125: $60
    inc hl                                        ; $5126: $23
    add hl, bc                                    ; $5127: $09
    ld e, $60                                     ; $5128: $1E $60
    ld a, d                                       ; $512A: $7A
    inc bc                                        ; $512B: $03
    daa                                           ; $512C: $27
    add sp, $0F                                   ; $512D: $E8 $0F
    jr nz, @+$21                                  ; $512F: $20 $1F

    add b                                         ; $5131: $80
    pop bc                                        ; $5132: $C1
    ld a, [bc]                                    ; $5133: $0A
    ld bc, $D9D5                                  ; $5134: $01 $D5 $D9
    ld [hl], b                                    ; $5137: $70
    db $FC                                        ; $5138: $FC
    ld [hl], b                                    ; $5139: $70
    ldh a, [rSVBK]                                ; $513A: $F0 $70
    ldh [$FF74], a                                ; $513C: $E0 $74
    rst RST_38                                    ; $513E: $FF
    ld a, [bc]                                    ; $513F: $0A
    cp b                                          ; $5140: $B8
    ld a, $C9                                     ; $5141: $3E $C9
    db $FD                                        ; $5143: $FD
    ld [hl], a                                    ; $5144: $77
    ld b, a                                       ; $5145: $47
    dec bc                                        ; $5146: $0B
    nop                                           ; $5147: $00
    ld b, b                                       ; $5148: $40
    ld a, a                                       ; $5149: $7F
    adc b                                         ; $514A: $88
    adc a                                         ; $514B: $8F
    ld de, $02F1                                  ; $514C: $11 $F1 $02
    cp $EA                                        ; $514F: $FE $EA
    ld e, e                                       ; $5151: $5B
    add e                                         ; $5152: $83
    ld [hl], b                                    ; $5153: $70
    add b                                         ; $5154: $80
    ld [hl], b                                    ; $5155: $70
    ld [hl], b                                    ; $5156: $70
    ld [hl], b                                    ; $5157: $70
    ld c, $B8                                     ; $5158: $0E $B8
    ld [hl], b                                    ; $515A: $70
    ld bc, $9B5B                                  ; $515B: $01 $5B $9B
    dec c                                         ; $515E: $0D
    jr nz, jr_004_51A0                            ; $515F: $20 $3F

    ld b, h                                       ; $5161: $44
    dec e                                         ; $5162: $1D
    rst RST_00                                    ; $5163: $C7
    ld [$77F8], sp                                ; $5164: $08 $F8 $77
    add hl, bc                                    ; $5167: $09
    ld [hl], b                                    ; $5168: $70
    ret nz                                        ; $5169: $C0

    ld [hl], b                                    ; $516A: $70
    ld c, b                                       ; $516B: $48
    jr c, jr_004_51DE                             ; $516C: $38 $70

    rlca                                          ; $516E: $07
    inc bc                                        ; $516F: $03
    ld de, $0FF0                                  ; $5170: $11 $F0 $0F
    pop hl                                        ; $5173: $E1
    inc b                                         ; $5174: $04
    rra                                           ; $5175: $1F
    jp nz, $043B                                  ; $5176: $C2 $3B $04

    rst RST_30                                    ; $5179: $F7
    ldh [$FFEF], a                                ; $517A: $E0 $EF
    db $10                                        ; $517C: $10
    xor d                                         ; $517D: $AA
    jr c, jr_004_51A0                             ; $517E: $38 $20

    ld [hl], h                                    ; $5180: $74
    ld e, $70                                     ; $5181: $1E $70
    dec a                                         ; $5183: $3D
    ld [hl], b                                    ; $5184: $70
    ei                                            ; $5185: $FB
    ld sp, hl                                     ; $5186: $F9
    ld [hl], b                                    ; $5187: $70
    add b                                         ; $5188: $80
    ld [hl], b                                    ; $5189: $70
    add b                                         ; $518A: $80
    ld [hl], b                                    ; $518B: $70
    rst RST_18                                    ; $518C: $DF
    cp b                                          ; $518D: $B8
    ld l, b                                       ; $518E: $68
    ld e, a                                       ; $518F: $5F
    ld [hl], b                                    ; $5190: $70
    ld [$08E0], sp                                ; $5191: $08 $E0 $08
    sbc b                                         ; $5194: $98
    ret nz                                        ; $5195: $C0

    jr jr_004_51A0                                ; $5196: $18 $08

    ld d, a                                       ; $5198: $57
    ret nz                                        ; $5199: $C0

    add hl, de                                    ; $519A: $19
    ccf                                           ; $519B: $3F
    jr jr_004_51DC                                ; $519C: $18 $3E

    ld d, c                                       ; $519E: $51
    dec bc                                        ; $519F: $0B

jr_004_51A0:
    ld [hl], d                                    ; $51A0: $72
    rst RST_18                                    ; $51A1: $DF
    ld a, [bc]                                    ; $51A2: $0A
    ld [hl], d                                    ; $51A3: $72
    pop bc                                        ; $51A4: $C1
    add hl, de                                    ; $51A5: $19
    pop bc                                        ; $51A6: $C1
    jr @+$4A                                      ; $51A7: $18 $48

    adc b                                         ; $51A9: $88
    pop de                                        ; $51AA: $D1
    ld l, c                                       ; $51AB: $69
    sbc b                                         ; $51AC: $98
    rlca                                          ; $51AD: $07
    ld [$F80E], sp                                ; $51AE: $08 $0E $F8
    add d                                         ; $51B1: $82
    ld [$61FF], sp                                ; $51B2: $08 $FF $61
    ld [hl], d                                    ; $51B5: $72
    ldh [c], a                                    ; $51B6: $E2
    ld h, b                                       ; $51B7: $60
    sub b                                         ; $51B8: $90
    add hl, bc                                    ; $51B9: $09
    ld h, b                                       ; $51BA: $60
    sub b                                         ; $51BB: $90
    add c                                         ; $51BC: $81
    add hl, bc                                    ; $51BD: $09
    add c                                         ; $51BE: $81
    inc a                                         ; $51BF: $3C
    jp $8778                                      ; $51C0: $C3 $78 $87


    ld [hl], b                                    ; $51C3: $70
    ret z                                         ; $51C4: $C8

    jr nz, jr_004_5228                            ; $51C5: $20 $61

    sbc h                                         ; $51C7: $9C
    jr nc, jr_004_5202                            ; $51C8: $30 $38

    add [hl]                                      ; $51CA: $86
    ld [hl], c                                    ; $51CB: $71
    inc c                                         ; $51CC: $0C
    db $E3                                        ; $51CD: $E3
    ld d, a                                       ; $51CE: $57
    jr jr_004_5245                                ; $51CF: $18 $74

    adc a                                         ; $51D1: $8F
    ld [hl], b                                    ; $51D2: $70
    sbc [hl]                                      ; $51D3: $9E
    jr nc, @+$42                                  ; $51D4: $30 $40

    ld [hl], b                                    ; $51D6: $70
    ld d, b                                       ; $51D7: $50
    ld a, c                                       ; $51D8: $79
    ld [hl], b                                    ; $51D9: $70
    di                                            ; $51DA: $F3
    ld [hl], b                                    ; $51DB: $70

jr_004_51DC:
    rst RST_20                                    ; $51DC: $E7
    xor d                                         ; $51DD: $AA

jr_004_51DE:
    rst RST_38                                    ; $51DE: $FF
    ld d, l                                       ; $51DF: $55
    db $FD                                        ; $51E0: $FD
    ld [$3803], sp                                ; $51E1: $08 $03 $38
    nop                                           ; $51E4: $00
    jr c, jr_004_51E7                             ; $51E5: $38 $00

jr_004_51E7:
    nop                                           ; $51E7: $00
    ld [bc], a                                    ; $51E8: $02
    rst RST_38                                    ; $51E9: $FF
    ld b, b                                       ; $51EA: $40
    ld c, $72                                     ; $51EB: $0E $72
    db $10                                        ; $51ED: $10
    ld b, e                                       ; $51EE: $43
    ld hl, $9FB1                                  ; $51EF: $21 $B1 $9F
    ld hl, sp+$0B                                 ; $51F2: $F8 $0B
    ld b, a                                       ; $51F4: $47
    or d                                          ; $51F5: $B2
    pop de                                        ; $51F6: $D1
    ld [bc], a                                    ; $51F7: $02
    inc bc                                        ; $51F8: $03
    sbc $01                                       ; $51F9: $DE $01
    db $EC                                        ; $51FB: $EC
    ld [$1920], sp                                ; $51FC: $08 $20 $19
    rst RST_18                                    ; $51FF: $DF
    ld a, [de]                                    ; $5200: $1A
    add hl, bc                                    ; $5201: $09

jr_004_5202:
    call c, Call_004_5B02                         ; $5202: $DC $02 $5B
    ret c                                         ; $5205: $D8

    jr nz, jr_004_5229                            ; $5206: $20 $21

    dec bc                                        ; $5208: $0B
    ld [hl], b                                    ; $5209: $70
    jr nz, @+$2D                                  ; $520A: $20 $2B

    ld [hl], b                                    ; $520C: $70
    ld b, b                                       ; $520D: $40
    inc hl                                        ; $520E: $23
    ld [hl], b                                    ; $520F: $70
    daa                                           ; $5210: $27
    rlca                                          ; $5211: $07
    pop de                                        ; $5212: $D1
    inc c                                         ; $5213: $0C
    pop bc                                        ; $5214: $C1
    ld e, $0A                                     ; $5215: $1E $0A
    jp $0338                                      ; $5217: $C3 $38 $03


    db $FC                                        ; $521A: $FC
    ld b, b                                       ; $521B: $40
    ldh a, [$FF08]                                ; $521C: $F0 $08
    ld sp, hl                                     ; $521E: $F9
    dec d                                         ; $521F: $15
    rrca                                          ; $5220: $0F
    db $EB                                        ; $5221: $EB
    ld [$2E70], sp                                ; $5222: $08 $70 $2E
    ld [hl], b                                    ; $5225: $70
    ld a, $70                                     ; $5226: $3E $70

jr_004_5228:
    ld e, [hl]                                    ; $5228: $5E

jr_004_5229:
    inc a                                         ; $5229: $3C
    ld [hl], d                                    ; $522A: $72

jr_004_522B:
    ld hl, sp+$09                                 ; $522B: $F8 $09
    ld [hl], b                                    ; $522D: $70
    sub b                                         ; $522E: $90
    ld [hl], b                                    ; $522F: $70
    rst RST_30                                    ; $5230: $F7
    inc c                                         ; $5231: $0C
    add b                                         ; $5232: $80
    rst RST_38                                    ; $5233: $FF
    nop                                           ; $5234: $00
    ld a, a                                       ; $5235: $7F
    jr jr_004_5242                                ; $5236: $18 $0A

    add d                                         ; $5238: $82
    ld a, e                                       ; $5239: $7B
    rlca                                          ; $523A: $07
    ld [bc], a                                    ; $523B: $02
    ld a, h                                       ; $523C: $7C
    add e                                         ; $523D: $83
    cp $01                                        ; $523E: $FE $01
    ld l, b                                       ; $5240: $68
    halt                                          ; $5241: $76

jr_004_5242:
    ld [$70BF], sp                                ; $5242: $08 $BF $70

jr_004_5245:
    add h                                         ; $5245: $84
    ld [hl], h                                    ; $5246: $74
    ld l, b                                       ; $5247: $68
    ld [de], a                                    ; $5248: $12
    ld c, $90                                     ; $5249: $0E $90
    add hl, de                                    ; $524B: $19
    dec e                                         ; $524C: $1D
    ccf                                           ; $524D: $3F

jr_004_524E:
    ret nz                                        ; $524E: $C0

    rra                                           ; $524F: $1F
    ld [hl], a                                    ; $5250: $77
    dec bc                                        ; $5251: $0B
    ld [hl], d                                    ; $5252: $72
    ldh [$FF67], a                                ; $5253: $E0 $67
    dec d                                         ; $5255: $15
    dec b                                         ; $5256: $05
    db $FC                                        ; $5257: $FC
    cpl                                           ; $5258: $2F

jr_004_5259:
    ld e, b                                       ; $5259: $58
    ld a, a                                       ; $525A: $7F
    jr nc, jr_004_524E                            ; $525B: $30 $F1

    ld [hl], a                                    ; $525D: $77
    call c, Call_004_7008                         ; $525E: $DC $08 $70
    inc bc                                        ; $5261: $03
    ld [hl], b                                    ; $5262: $70
    ldh [rSCX], a                                 ; $5263: $E0 $43
    ld l, b                                       ; $5265: $68
    rrca                                          ; $5266: $0F
    ld [bc], a                                    ; $5267: $02
    inc [hl]                                      ; $5268: $34
    add a                                         ; $5269: $87
    ld a, d                                       ; $526A: $7A
    jp $C1DC                                      ; $526B: $C3 $DC $C1


    ld b, b                                       ; $526E: $40
    ld bc, $ABB5                                  ; $526F: $01 $B5 $AB
    cpl                                           ; $5272: $2F
    ld [$F070], sp                                ; $5273: $08 $70 $F0
    ld [hl], b                                    ; $5276: $70
    ld a, b                                       ; $5277: $78
    ld [hl], b                                    ; $5278: $70
    ld d, [hl]                                    ; $5279: $56
    inc a                                         ; $527A: $3C
    ld [hl], b                                    ; $527B: $70
    ld a, $70                                     ; $527C: $3E $70
    cp $EB                                        ; $527E: $FE $EB
    add hl, bc                                    ; $5280: $09
    rla                                           ; $5281: $17
    ld bc, $231C                                  ; $5282: $01 $1C $23
    ldh [$FF03], a                                ; $5285: $E0 $03
    ld hl, sp+$07                                 ; $5287: $F8 $07
    db $FC                                        ; $5289: $FC
    ld a, [de]                                    ; $528A: $1A
    ld a, [$D808]                                 ; $528B: $FA $08 $D8
    add hl, de                                    ; $528E: $19
    add sp, $70                                   ; $528F: $E8 $70
    db $E3                                        ; $5291: $E3
    ld [hl], b                                    ; $5292: $70
    rra                                           ; $5293: $1F
    ldh a, [rPCM12]                               ; $5294: $F0 $76
    ld a, [bc]                                    ; $5296: $0A
    ld [hl], b                                    ; $5297: $70
    sub b                                         ; $5298: $90
    rst RST_00                                    ; $5299: $C7
    jr nc, jr_004_522B                            ; $529A: $30 $8F

    ld h, b                                       ; $529C: $60
    adc [hl]                                      ; $529D: $8E
    add b                                         ; $529E: $80
    ret nz                                        ; $529F: $C0

    ccf                                           ; $52A0: $3F
    add b                                         ; $52A1: $80
    dec bc                                        ; $52A2: $0B
    ld d, c                                       ; $52A3: $51
    ld a, [bc]                                    ; $52A4: $0A
    rst RST_08                                    ; $52A5: $CF
    xor l                                         ; $52A6: $AD
    ld [hl], b                                    ; $52A7: $70
    sbc a                                         ; $52A8: $9F
    ld [hl], d                                    ; $52A9: $72
    ld a, a                                       ; $52AA: $7F
    dec bc                                        ; $52AB: $0B
    ld h, b                                       ; $52AC: $60
    ld [hl], b                                    ; $52AD: $70
    add hl, bc                                    ; $52AE: $09
    dec sp                                        ; $52AF: $3B
    rrca                                          ; $52B0: $0F
    ldh a, [$FFE8]                                ; $52B1: $F0 $E8
    ld [$E018], sp                                ; $52B3: $08 $18 $E0
    jr jr_004_52C0                                ; $52B6: $18 $08

    pop af                                        ; $52B8: $F1
    sub b                                         ; $52B9: $90
    ld [$80B1], sp                                ; $52BA: $08 $B1 $80
    ld b, b                                       ; $52BD: $40
    cp a                                          ; $52BE: $BF
    nop                                           ; $52BF: $00

jr_004_52C0:
    ld h, c                                       ; $52C0: $61
    ld hl, sp+$74                                 ; $52C1: $F8 $74
    ld a, [bc]                                    ; $52C3: $0A
    ld [hl], b                                    ; $52C4: $70
    sub b                                         ; $52C5: $90
    ld [hl], d                                    ; $52C6: $72
    rst RST_38                                    ; $52C7: $FF
    jr nc, jr_004_5259                            ; $52C8: $30 $8F

    db $DB                                        ; $52CA: $DB
    rrca                                          ; $52CB: $0F
    ld [hl], b                                    ; $52CC: $70
    add b                                         ; $52CD: $80
    dec bc                                        ; $52CE: $0B
    jr nc, @+$72                                  ; $52CF: $30 $70

    rrca                                          ; $52D1: $0F
    ld d, b                                       ; $52D2: $50
    ld c, c                                       ; $52D3: $49
    ld a, a                                       ; $52D4: $7F
    dec bc                                        ; $52D5: $0B
    cp $01                                        ; $52D6: $FE $01
    add hl, bc                                    ; $52D8: $09
    rst RST_38                                    ; $52D9: $FF
    nop                                           ; $52DA: $00
    rrca                                          ; $52DB: $0F
    ld [$0709], a                                 ; $52DC: $EA $09 $07
    rlca                                          ; $52DF: $07
    ld a, a                                       ; $52E0: $7F
    ld [$089F], sp                                ; $52E1: $08 $9F $08
    ld h, a                                       ; $52E4: $67
    nop                                           ; $52E5: $00
    add b                                         ; $52E6: $80
    ld a, c                                       ; $52E7: $79
    and b                                         ; $52E8: $A0
    or [hl]                                       ; $52E9: $B6
    ld d, b                                       ; $52EA: $50
    xor e                                         ; $52EB: $AB
    ld c, d                                       ; $52EC: $4A
    ret nc                                        ; $52ED: $D0

    ld [hl], l                                    ; $52EE: $75
    jr nz, jr_004_52FA                            ; $52EF: $20 $09

    ld d, b                                       ; $52F1: $50
    ld l, b                                       ; $52F2: $68
    ld h, b                                       ; $52F3: $60
    ld [$0818], sp                                ; $52F4: $08 $18 $08
    ld b, d                                       ; $52F7: $42
    ld h, $08                                     ; $52F8: $26 $08

jr_004_52FA:
    ld de, $0A08                                  ; $52FA: $11 $08 $0A
    inc d                                         ; $52FD: $14
    jr nz, jr_004_530F                            ; $52FE: $20 $0F

    adc d                                         ; $5300: $8A
    add hl, bc                                    ; $5301: $09
    xor d                                         ; $5302: $AA
    ld b, b                                       ; $5303: $40
    or l                                          ; $5304: $B5
    ld [$08BF], sp                                ; $5305: $08 $BF $08
    ld a, a                                       ; $5308: $7F
    adc b                                         ; $5309: $88
    or b                                          ; $530A: $B0
    ld l, e                                       ; $530B: $6B
    sub h                                         ; $530C: $94
    ld d, l                                       ; $530D: $55
    ld d, b                                       ; $530E: $50

jr_004_530F:
    add e                                         ; $530F: $83
    ld a, h                                       ; $5310: $7C
    add d                                         ; $5311: $82
    push de                                       ; $5312: $D5
    ld [$1F88], sp                                ; $5313: $08 $88 $1F
    inc c                                         ; $5316: $0C
    ld a, $0B                                     ; $5317: $3E $0B
    ld bc, $B568                                  ; $5319: $01 $68 $B5
    add hl, bc                                    ; $531C: $09
    rst RST_38                                    ; $531D: $FF
    jr nc, @+$0F                                  ; $531E: $30 $0D

    ld a, a                                       ; $5320: $7F
    ld [$08BF], sp                                ; $5321: $08 $BF $08
    dec e                                         ; $5324: $1D
    ld b, a                                       ; $5325: $47
    jr nz, jr_004_5380                            ; $5326: $20 $58

    ld [$0620], sp                                ; $5328: $08 $20 $06
    add b                                         ; $532B: $80
    ld [$4055], sp                                ; $532C: $08 $55 $40
    ld [$2018], sp                                ; $532F: $08 $18 $20
    rlca                                          ; $5332: $07
    ld [$30AF], sp                                ; $5333: $08 $AF $30
    ld a, h                                       ; $5336: $7C
    or l                                          ; $5337: $B5
    ld [$08C8], sp                                ; $5338: $08 $C8 $08
    add sp, $38                                   ; $533B: $E8 $38
    ld l, e                                       ; $533D: $6B
    sub h                                         ; $533E: $94
    ld a, [$0919]                                 ; $533F: $FA $19 $09
    jp nz, $08A0                                  ; $5342: $C2 $A0 $08

    dec de                                        ; $5345: $1B
    ld a, [bc]                                    ; $5346: $0A
    ld [hl], $BA                                  ; $5347: $36 $BA
    add hl, bc                                    ; $5349: $09
    ld bc, $7810                                  ; $534A: $01 $10 $78
    ld [$08FF], sp                                ; $534D: $08 $FF $08
    rlca                                          ; $5350: $07
    or b                                          ; $5351: $B0
    ld [$FAB8], sp                                ; $5352: $08 $B8 $FA
    add hl, bc                                    ; $5355: $09
    xor d                                         ; $5356: $AA
    ld d, l                                       ; $5357: $55
    dec [hl]                                      ; $5358: $35
    ld c, d                                       ; $5359: $4A
    inc l                                         ; $535A: $2C
    inc a                                         ; $535B: $3C
    ld b, e                                       ; $535C: $43
    adc c                                         ; $535D: $89
    ld hl, sp-$76                                 ; $535E: $F8 $8A
    nop                                           ; $5360: $00
    jr @-$7E                                      ; $5361: $18 $80

    ld c, e                                       ; $5363: $4B
    rra                                           ; $5364: $1F
    inc c                                         ; $5365: $0C
    inc bc                                        ; $5366: $03
    db $FC                                        ; $5367: $FC
    ld d, b                                       ; $5368: $50
    rst RST_38                                    ; $5369: $FF
    ld a, [bc]                                    ; $536A: $0A
    ld b, b                                       ; $536B: $40
    add b                                         ; $536C: $80
    ld [$08E0], sp                                ; $536D: $08 $E0 $08
    or a                                          ; $5370: $B7
    ld c, b                                       ; $5371: $48
    ld d, l                                       ; $5372: $55
    xor d                                         ; $5373: $AA
    inc d                                         ; $5374: $14
    ld a, l                                       ; $5375: $7D
    db $EB                                        ; $5376: $EB
    add hl, bc                                    ; $5377: $09
    pop hl                                        ; $5378: $E1
    ld bc, $0868                                  ; $5379: $01 $68 $08
    rla                                           ; $537C: $17
    inc hl                                        ; $537D: $23
    ld h, h                                       ; $537E: $64
    db $E3                                        ; $537F: $E3

jr_004_5380:
    dec bc                                        ; $5380: $0B
    ei                                            ; $5381: $FB
    db $FD                                        ; $5382: $FD
    inc bc                                        ; $5383: $03
    ld [$DDE2], sp                                ; $5384: $08 $E2 $DD
    dec e                                         ; $5387: $1D
    ld e, $4F                                     ; $5388: $1E $4F
    db $10                                        ; $538A: $10
    dec bc                                        ; $538B: $0B
    ei                                            ; $538C: $FB
    inc bc                                        ; $538D: $03
    jr nz, jr_004_5398                            ; $538E: $20 $08

    inc l                                         ; $5390: $2C
    and b                                         ; $5391: $A0
    add b                                         ; $5392: $80
    ld [$0987], sp                                ; $5393: $08 $87 $09
    ei                                            ; $5396: $FB
    rst RST_30                                    ; $5397: $F7

jr_004_5398:
    ldh a, [$FF95]                                ; $5398: $F0 $95
    ld [$BF07], sp                                ; $539A: $08 $07 $BF
    jr z, jr_004_53F4                             ; $539D: $28 $55

    ld c, d                                       ; $539F: $4A
    cp $DC                                        ; $53A0: $FE $DC
    ld l, c                                       ; $53A2: $69
    ld [$000A], sp                                ; $53A3: $08 $0A $00
    ldh [$FF73], a                                ; $53A6: $E0 $73
    ld bc, $FBFC                                  ; $53A8: $01 $FC $FB
    xor d                                         ; $53AB: $AA
    ld a, [bc]                                    ; $53AC: $0A
    ret nz                                        ; $53AD: $C0

    ld [$0840], sp                                ; $53AE: $08 $40 $08
    ld a, a                                       ; $53B1: $7F
    nop                                           ; $53B2: $00
    add b                                         ; $53B3: $80
    or $09                                        ; $53B4: $F6 $09
    ei                                            ; $53B6: $FB
    rlca                                          ; $53B7: $07
    ld [bc], a                                    ; $53B8: $02
    ccf                                           ; $53B9: $3F
    cp $0D                                        ; $53BA: $FE $0D
    ld bc, $08BA                                  ; $53BC: $01 $BA $08
    ld b, $C7                                     ; $53BF: $06 $C7
    rlca                                          ; $53C1: $07
    cp h                                          ; $53C2: $BC
    inc bc                                        ; $53C3: $03
    ld [$0A0C], sp                                ; $53C4: $08 $0C $0A
    cp $33                                        ; $53C7: $FE $33
    push af                                       ; $53C9: $F5
    rst RST_08                                    ; $53CA: $CF
    jr z, jr_004_53FB                             ; $53CB: $28 $2E

    ld [$EF76], sp                                ; $53CD: $08 $76 $EF
    cp a                                          ; $53D0: $BF
    sub b                                         ; $53D1: $90
    ld [$080F], sp                                ; $53D2: $08 $0F $08
    ld [hl], b                                    ; $53D5: $70
    ld [$8171], sp                                ; $53D6: $08 $71 $81
    adc b                                         ; $53D9: $88
    add hl, de                                    ; $53DA: $19
    ld a, [$6062]                                 ; $53DB: $FA $62 $60
    add b                                         ; $53DE: $80
    ld b, b                                       ; $53DF: $40
    ld [$6A59], sp                                ; $53E0: $08 $59 $6A
    ld [$087F], sp                                ; $53E3: $08 $7F $08
    nop                                           ; $53E6: $00
    ld bc, $08BE                                  ; $53E7: $01 $BE $08
    jp z, $8800                                   ; $53EA: $CA $00 $88

    ld [bc], a                                    ; $53ED: $02
    dec b                                         ; $53EE: $05
    db $10                                        ; $53EF: $10
    rra                                           ; $53F0: $1F
    ld [$DC3F], sp                                ; $53F1: $08 $3F $DC

jr_004_53F4:
    ld a, [bc]                                    ; $53F4: $0A
    nop                                           ; $53F5: $00
    ld a, [hl]                                    ; $53F6: $7E
    ld [$08B8], sp                                ; $53F7: $08 $B8 $08
    ld e, l                                       ; $53FA: $5D

jr_004_53FB:
    dec d                                         ; $53FB: $15
    dec [hl]                                      ; $53FC: $35
    xor $AA                                       ; $53FD: $EE $AA
    ld d, c                                       ; $53FF: $51
    xor c                                         ; $5400: $A9
    xor e                                         ; $5401: $AB
    ld [$08D6], sp                                ; $5402: $08 $D6 $08
    ld e, d                                       ; $5405: $5A
    cp $08                                        ; $5406: $FE $08
    db $FD                                        ; $5408: $FD
    ld [$A270], sp                                ; $5409: $08 $70 $A2
    ld [hl], b                                    ; $540C: $70
    ld de, $20BA                                  ; $540D: $11 $BA $20
    ret nz                                        ; $5410: $C0

    ld d, d                                       ; $5411: $52
    ld [$7C98], sp                                ; $5412: $08 $98 $7C
    add hl, bc                                    ; $5415: $09
    ld [bc], a                                    ; $5416: $02
    ld a, [bc]                                    ; $5417: $0A
    ld a, b                                       ; $5418: $78
    rst RST_38                                    ; $5419: $FF
    jr nc, @-$0F                                  ; $541A: $30 $EF

    ld l, b                                       ; $541C: $68
    rst RST_18                                    ; $541D: $DF
    ld h, b                                       ; $541E: $60
    ld e, a                                       ; $541F: $5F
    ld [hl], $80                                  ; $5420: $36 $80
    cp a                                          ; $5422: $BF
    jr jr_004_542E                                ; $5423: $18 $09

    ld a, a                                       ; $5425: $7F
    ld a, [bc]                                    ; $5426: $0A
    ld bc, $AB10                                  ; $5427: $01 $10 $AB
    ld [$0820], sp                                ; $542A: $08 $20 $08
    and b                                         ; $542D: $A0

jr_004_542E:
    ld [$0A40], sp                                ; $542E: $08 $40 $0A

Call_004_5431:
    and b                                         ; $5431: $A0
    rst RST_28                                    ; $5432: $EF
    ld a, [bc]                                    ; $5433: $0A
    cp e                                          ; $5434: $BB
    call Call_000_0CFF                            ; $5435: $CD $FF $0C
    cp e                                          ; $5438: $BB
    call $0F05                                    ; $5439: $CD $05 $0F
    db $FD                                        ; $543C: $FD
    rra                                           ; $543D: $1F
    cp $2F                                        ; $543E: $FE $2F
    rra                                           ; $5440: $1F
    dec de                                        ; $5441: $1B
    stop                                          ; $5442: $10 $00
    pop hl                                        ; $5444: $E1
    db $10                                        ; $5445: $10
    rra                                           ; $5446: $1F
    inc e                                         ; $5447: $1C
    dec e                                         ; $5448: $1D
    ldh [$FF2E], a                                ; $5449: $E0 $2E
    ret nc                                        ; $544B: $D0

    rra                                           ; $544C: $1F

jr_004_544D:
    cp d                                          ; $544D: $BA
    dec de                                        ; $544E: $1B
    rst RST_38                                    ; $544F: $FF
    rlca                                          ; $5450: $07
    ld b, $98                                     ; $5451: $06 $98
    rra                                           ; $5453: $1F
    sbc b                                         ; $5454: $98
    cpl                                           ; $5455: $2F
    rst RST_10                                    ; $5456: $D7
    rra                                           ; $5457: $1F
    dec de                                        ; $5458: $1B
    ldh [$FF88], a                                ; $5459: $E0 $88
    ret nc                                        ; $545B: $D0

    ld [$1B1F], sp                                ; $545C: $08 $1F $1B
    cp l                                          ; $545F: $BD
    nop                                           ; $5460: $00
    nop                                           ; $5461: $00
    rrca                                          ; $5462: $0F
    dec c                                         ; $5463: $0D
    ld b, a                                       ; $5464: $47
    rrca                                          ; $5465: $0F
    ldh a, [c]                                    ; $5466: $F2
    db $10                                        ; $5467: $10
    and b                                         ; $5468: $A0
    add hl, bc                                    ; $5469: $09
    ld sp, hl                                     ; $546A: $F9
    ld [$08EF], sp                                ; $546B: $08 $EF $08
    db $DD                                        ; $546E: $DD
    inc d                                         ; $546F: $14
    or h                                          ; $5470: $B4
    ld b, $26                                     ; $5471: $06 $26
    ld l, e                                       ; $5473: $6B
    ld c, [hl]                                    ; $5474: $4E
    sub $9C                                       ; $5475: $D6 $9C
    xor l                                         ; $5477: $AD
    ld [hl], b                                    ; $5478: $70
    rst RST_30                                    ; $5479: $F7
    xor d                                         ; $547A: $AA
    ld [hl], b                                    ; $547B: $70
    db $EB                                        ; $547C: $EB
    ld [hl], b                                    ; $547D: $70
    reti                                          ; $547E: $D9


    ld [hl], b                                    ; $547F: $70
    or c                                          ; $5480: $B1
    ld [hl], b                                    ; $5481: $70
    ld h, e                                       ; $5482: $63
    ld [$39AD], sp                                ; $5483: $08 $AD $39
    ld e, d                                       ; $5486: $5A
    ld [hl], e                                    ; $5487: $73
    ret z                                         ; $5488: $C8

    rst RST_20                                    ; $5489: $E7
    ld sp, hl                                     ; $548A: $F9
    rst RST_08                                    ; $548B: $CF
    nop                                           ; $548C: $00

jr_004_548D:
    di                                            ; $548D: $F3
    ld e, $C5                                     ; $548E: $1E $C5
    inc e                                         ; $5490: $1C
    jp c, Jump_004_7F18                           ; $5491: $DA $18 $7F

    ld bc, $70AE                                  ; $5494: $01 $AE $70
    add $70                                       ; $5497: $C6 $70
    adc h                                         ; $5499: $8C
    ld [hl], b                                    ; $549A: $70
    jr c, jr_004_550D                             ; $549B: $38 $70

    jr nc, jr_004_544D                            ; $549D: $30 $AE

    ld [hl], b                                    ; $549F: $70
    pop hl                                        ; $54A0: $E1
    ld [hl], b                                    ; $54A1: $70
    db $E3                                        ; $54A2: $E3
    jr nc, jr_004_54E5                            ; $54A3: $30 $40

    ld [hl], b                                    ; $54A5: $70
    cp $00                                        ; $54A6: $FE $00
    jp nz, $A09E                                  ; $54A8: $C2 $9E $A0

    sbc a                                         ; $54AB: $9F
    ldh a, [$FFDF]                                ; $54AC: $F0 $DF
    ld h, b                                       ; $54AE: $60
    ld c, a                                       ; $54AF: $4F
    jr nz, @-$66                                  ; $54B0: $20 $98

    rrca                                          ; $54B2: $0F
    jr z, jr_004_54BC                             ; $54B3: $28 $07

    ld a, [hl-]                                   ; $54B5: $3A
    inc bc                                        ; $54B6: $03
    sub $C0                                       ; $54B7: $D6 $C0
    cp d                                          ; $54B9: $BA
    ld [hl], b                                    ; $54BA: $70
    ld h, c                                       ; $54BB: $61

jr_004_54BC:
    ld [hl], b                                    ; $54BC: $70
    ld h, b                                       ; $54BD: $60
    ld [hl], b                                    ; $54BE: $70
    jr nz, jr_004_5531                            ; $54BF: $20 $70

    or b                                          ; $54C1: $B0
    xor b                                         ; $54C2: $A8
    ld [hl], d                                    ; $54C3: $72
    ld hl, sp+$70                                 ; $54C4: $F8 $70
    db $FC                                        ; $54C6: $FC
    ld [hl], b                                    ; $54C7: $70
    ccf                                           ; $54C8: $3F
    rst RST_38                                    ; $54C9: $FF
    nop                                           ; $54CA: $00
    inc de                                        ; $54CB: $13
    cp a                                          ; $54CC: $BF
    add b                                         ; $54CD: $80
    rla                                           ; $54CE: $17
    ld e, b                                       ; $54CF: $58
    ld [bc], a                                    ; $54D0: $02
    cp $30                                        ; $54D1: $FE $30
    ld b, c                                       ; $54D3: $41
    xor $0A                                       ; $54D4: $EE $0A
    ld d, b                                       ; $54D6: $50
    dec de                                        ; $54D7: $1B
    ld a, a                                       ; $54D8: $7F
    ld [hl], b                                    ; $54D9: $70
    ldh [rSVBK], a                                ; $54DA: $E0 $70
    ld bc, $74C4                                  ; $54DC: $01 $C4 $74
    ld a, [bc]                                    ; $54DF: $0A
    db $10                                        ; $54E0: $10
    rst RST_18                                    ; $54E1: $DF
    ld h, b                                       ; $54E2: $60
    adc c                                         ; $54E3: $89
    cp a                                          ; $54E4: $BF

jr_004_54E5:
    ret nz                                        ; $54E5: $C0

    and h                                         ; $54E6: $A4
    sbc b                                         ; $54E7: $98
    ld [bc], a                                    ; $54E8: $02
    ld [$FD84], sp                                ; $54E9: $08 $84 $FD
    and b                                         ; $54EC: $A0
    ld sp, hl                                     ; $54ED: $F9
    dec c                                         ; $54EE: $0D
    ld e, e                                       ; $54EF: $5B
    ld hl, sp+$70                                 ; $54F0: $F8 $70
    jr nz, jr_004_548D                            ; $54F2: $20 $99

    ld [hl], b                                    ; $54F4: $70
    ld b, b                                       ; $54F5: $40
    ld h, b                                       ; $54F6: $60
    sub b                                         ; $54F7: $90
    push af                                       ; $54F8: $F5
    add hl, bc                                    ; $54F9: $09
    ld [hl], b                                    ; $54FA: $70
    sub b                                         ; $54FB: $90
    ld [hl], b                                    ; $54FC: $70
    ld b, $70                                     ; $54FD: $06 $70
    rlca                                          ; $54FF: $07
    ld h, b                                       ; $5500: $60
    ret nz                                        ; $5501: $C0

    ld [hl], c                                    ; $5502: $71
    ld c, $4F                                     ; $5503: $0E $4F
    ret nz                                        ; $5505: $C0

    ld [hl], e                                    ; $5506: $73
    inc bc                                        ; $5507: $03
    and b                                         ; $5508: $A0
    ccf                                           ; $5509: $3F
    ei                                            ; $550A: $FB
    ld [hl], a                                    ; $550B: $77
    add hl, bc                                    ; $550C: $09

jr_004_550D:
    ld [hl], b                                    ; $550D: $70
    ld e, b                                       ; $550E: $58
    ld [hl], b                                    ; $550F: $70
    db $FC                                        ; $5510: $FC
    db $10                                        ; $5511: $10
    jr nz, @+$01                                  ; $5512: $20 $FF

    ld e, l                                       ; $5514: $5D
    ld [bc], a                                    ; $5515: $02
    or a                                          ; $5516: $B7
    ld c, $47                                     ; $5517: $0E $47
    ld a, a                                       ; $5519: $7F

jr_004_551A:
    adc h                                         ; $551A: $8C
    cp a                                          ; $551B: $BF
    ret nz                                        ; $551C: $C0

    adc $2B                                       ; $551D: $CE $2B
    rra                                           ; $551F: $1F
    ret nz                                        ; $5520: $C0

    adc a                                         ; $5521: $8F
    ld h, b                                       ; $5522: $60
    rst RST_00                                    ; $5523: $C7
    jr nc, jr_004_5526                            ; $5524: $30 $00

jr_004_5526:
    db $E3                                        ; $5526: $E3
    jr jr_004_551A                                ; $5527: $18 $F1

    inc c                                         ; $5529: $0C
    ld hl, sp+$06                                 ; $552A: $F8 $06
    db $FC                                        ; $552C: $FC
    inc bc                                        ; $552D: $03
    ld a, [hl+]                                   ; $552E: $2A
    cp $01                                        ; $552F: $FE $01

jr_004_5531:
    ld [hl], b                                    ; $5531: $70
    ccf                                           ; $5532: $3F
    ld [hl], b                                    ; $5533: $70
    sbc a                                         ; $5534: $9F
    ld [hl], b                                    ; $5535: $70
    rst RST_08                                    ; $5536: $CF
    xor e                                         ; $5537: $AB
    ld [hl], b                                    ; $5538: $70
    rst RST_20                                    ; $5539: $E7
    ld [hl], b                                    ; $553A: $70
    di                                            ; $553B: $F3
    ld [hl], b                                    ; $553C: $70
    ld sp, hl                                     ; $553D: $F9
    ld [hl], b                                    ; $553E: $70
    add b                                         ; $553F: $80
    db $E4                                        ; $5540: $E4
    ld [hl], b                                    ; $5541: $70
    add b                                         ; $5542: $80
    adc c                                         ; $5543: $89
    db $FD                                        ; $5544: $FD
    ld [bc], a                                    ; $5545: $02
    dec bc                                        ; $5546: $0B
    ld a, [$2305]                                 ; $5547: $FA $05 $23
    ei                                            ; $554A: $FB
    inc b                                         ; $554B: $04
    add hl, de                                    ; $554C: $19
    db $F4                                        ; $554D: $F4
    dec bc                                        ; $554E: $0B
    nop                                           ; $554F: $00
    ld b, $B0                                     ; $5550: $06 $B0
    xor d                                         ; $5552: $AA
    inc c                                         ; $5553: $0C
    inc bc                                        ; $5554: $03
    ld [$08AB], sp                                ; $5555: $08 $AB $08
    ld d, l                                       ; $5558: $55
    ld [$81FF], sp                                ; $5559: $08 $FF $81
    ld a, [bc]                                    ; $555C: $0A
    xor a                                         ; $555D: $AF
    ld d, b                                       ; $555E: $50
    ld e, a                                       ; $555F: $5F
    and a                                         ; $5560: $A7
    rrca                                          ; $5561: $0F
    ldh a, [rSTAT]                                ; $5562: $F0 $41
    ld a, h                                       ; $5564: $7C
    ld a, h                                       ; $5565: $7C
    ld l, h                                       ; $5566: $6C
    add hl, bc                                    ; $5567: $09
    ld d, c                                       ; $5568: $51

jr_004_5569:
    dec bc                                        ; $5569: $0B
    add hl, sp                                    ; $556A: $39
    or $0B                                        ; $556B: $F6 $0B
    ld c, b                                       ; $556D: $48
    push af                                       ; $556E: $F5
    ld [$17EF], sp                                ; $556F: $08 $EF $17
    add hl, bc                                    ; $5572: $09
    ld [$DF12], a                                 ; $5573: $EA $12 $DF
    ld d, l                                       ; $5576: $55
    jr nc, jr_004_5581                            ; $5577: $30 $08

    ccf                                           ; $5579: $3F
    ld a, c                                       ; $557A: $79
    inc bc                                        ; $557B: $03
    ld a, [bc]                                    ; $557C: $0A
    rlca                                          ; $557D: $07
    ld a, [bc]                                    ; $557E: $0A
    dec [hl]                                      ; $557F: $35
    ld [bc], a                                    ; $5580: $02

jr_004_5581:
    dec b                                         ; $5581: $05
    db $10                                        ; $5582: $10
    inc b                                         ; $5583: $04
    xor d                                         ; $5584: $AA
    sub b                                         ; $5585: $90
    ld d, l                                       ; $5586: $55
    ld [$039D], sp                                ; $5587: $08 $9D $03
    xor a                                         ; $558A: $AF
    xor b                                         ; $558B: $A8
    db $10                                        ; $558C: $10
    and b                                         ; $558D: $A0
    ld [$F9F8], sp                                ; $558E: $08 $F8 $F9
    pop de                                        ; $5591: $D1
    rrca                                          ; $5592: $0F
    ld [hl], b                                    ; $5593: $70
    ld d, b                                       ; $5594: $50
    db $FD                                        ; $5595: $FD
    rst RST_28                                    ; $5596: $EF
    db $10                                        ; $5597: $10
    ld l, l                                       ; $5598: $6D
    ld [$19F0], sp                                ; $5599: $08 $F0 $19
    dec bc                                        ; $559C: $0B
    sbc b                                         ; $559D: $98
    nop                                           ; $559E: $00
    ei                                            ; $559F: $FB
    inc b                                         ; $55A0: $04
    ld a, [bc]                                    ; $55A1: $0A
    push af                                       ; $55A2: $F5
    or l                                          ; $55A3: $B5
    adc c                                         ; $55A4: $89
    rst RST_00                                    ; $55A5: $C7
    inc c                                         ; $55A6: $0C
    dec b                                         ; $55A7: $05
    pop af                                        ; $55A8: $F1
    ld [$90FD], sp                                ; $55A9: $08 $FD $90
    ld h, b                                       ; $55AC: $60
    ld e, l                                       ; $55AD: $5D
    ld [$0CB8], sp                                ; $55AE: $08 $B8 $0C
    rst RST_30                                    ; $55B1: $F7
    ld [$15EA], sp                                ; $55B2: $08 $EA $15
    set 2, b                                      ; $55B5: $CB $D0
    db $10                                        ; $55B7: $10
    ldh [$FF1F], a                                ; $55B8: $E0 $1F
    ld [hl], b                                    ; $55BA: $70
    rst RST_38                                    ; $55BB: $FF
    sbc c                                         ; $55BC: $99
    jr z, jr_004_5569                             ; $55BD: $28 $AA

    ld [$08E1], sp                                ; $55BF: $08 $E1 $08
    db $E3                                        ; $55C2: $E3
    ld [$0807], sp                                ; $55C3: $08 $07 $08
    rrca                                          ; $55C6: $0F
    sub $08                                       ; $55C7: $D6 $08
    ld [hl], e                                    ; $55C9: $73
    xor d                                         ; $55CA: $AA
    or b                                          ; $55CB: $B0
    ld e, e                                       ; $55CC: $5B
    ld [$F4F8], sp                                ; $55CD: $08 $F8 $F4
    db $ED                                        ; $55D0: $ED
    jr c, jr_004_5643                             ; $55D1: $38 $70

    ld [$59F8], sp                                ; $55D3: $08 $F8 $59
    dec bc                                        ; $55D6: $0B
    pop af                                        ; $55D7: $F1
    ld a, [bc]                                    ; $55D8: $0A
    ld [hl], b                                    ; $55D9: $70
    ldh a, [$FF08]                                ; $55DA: $F0 $08
    rlca                                          ; $55DC: $07
    ld bc, $F9AE                                  ; $55DD: $01 $AE $F9
    ld e, a                                       ; $55E0: $5F
    or $BF                                        ; $55E1: $F6 $BF
    xor b                                         ; $55E3: $A8
    add hl, bc                                    ; $55E4: $09
    ld [$ED90], sp                                ; $55E5: $08 $90 $ED
    add hl, bc                                    ; $55E8: $09
    ld [hl], b                                    ; $55E9: $70
    rst RST_28                                    ; $55EA: $EF
    adc d                                         ; $55EB: $8A
    ld b, $B6                                     ; $55EC: $06 $B6
    ld [$0855], sp                                ; $55EE: $08 $55 $08
    rst RST_30                                    ; $55F1: $F7
    add hl, bc                                    ; $55F2: $09
    jr jr_004_55F5                                ; $55F3: $18 $00

jr_004_55F5:
    or $39                                        ; $55F5: $F6 $39
    push af                                       ; $55F7: $F5
    ld a, d                                       ; $55F8: $7A
    ld [hl], h                                    ; $55F9: $74
    adc e                                         ; $55FA: $8B
    inc d                                         ; $55FB: $14
    db $EB                                        ; $55FC: $EB
    ld l, d                                       ; $55FD: $6A
    db $E3                                        ; $55FE: $E3
    adc b                                         ; $55FF: $88
    dec bc                                        ; $5600: $0B
    jp $8308                                      ; $5601: $C3 $08 $83


    ld [$C503], sp                                ; $5604: $08 $03 $C5
    ld a, [de]                                    ; $5607: $1A
    ld c, c                                       ; $5608: $49
    db $ED                                        ; $5609: $ED
    scf                                           ; $560A: $37
    ld l, d                                       ; $560B: $6A
    ld [$28FF], sp                                ; $560C: $08 $FF $28
    add b                                         ; $560F: $80
    ld [$BF0F], sp                                ; $5610: $08 $0F $BF
    ld c, a                                       ; $5613: $4F
    ld e, a                                       ; $5614: $5F
    and b                                         ; $5615: $A0
    ld a, b                                       ; $5616: $78
    add b                                         ; $5617: $80
    dec l                                         ; $5618: $2D
    ld l, b                                       ; $5619: $68
    or b                                          ; $561A: $B0
    db $10                                        ; $561B: $10
    rlca                                          ; $561C: $07
    ld a, [bc]                                    ; $561D: $0A
    ld a, b                                       ; $561E: $78
    ldh [$FF0C], a                                ; $561F: $E0 $0C
    ld h, e                                       ; $5621: $63
    add a                                         ; $5622: $87
    ld c, b                                       ; $5623: $48
    add hl, bc                                    ; $5624: $09
    or [hl]                                       ; $5625: $B6
    db $EB                                        ; $5626: $EB
    rst RST_10                                    ; $5627: $D7
    and b                                         ; $5628: $A0
    add sp, $5D                                   ; $5629: $E8 $5D
    adc a                                         ; $562B: $8F
    ld [$0870], sp                                ; $562C: $08 $70 $08
    ld l, b                                       ; $562F: $68

jr_004_5630:
    dec c                                         ; $5630: $0D
    db $E3                                        ; $5631: $E3
    ld [$6070], sp                                ; $5632: $08 $70 $60
    ld [$0307], sp                                ; $5635: $08 $07 $03
    db $ED                                        ; $5638: $ED
    or b                                          ; $5639: $B0
    rst RST_28                                    ; $563A: $EF
    jr nc, jr_004_5630                            ; $563B: $30 $F3

    xor b                                         ; $563D: $A8
    ld bc, $09EE                                  ; $563E: $01 $EE $09
    add a                                         ; $5641: $87
    rlca                                          ; $5642: $07

jr_004_5643:
    rst RST_08                                    ; $5643: $CF
    dec b                                         ; $5644: $05
    inc b                                         ; $5645: $04
    rst RST_30                                    ; $5646: $F7
    dec e                                         ; $5647: $1D
    xor e                                         ; $5648: $AB
    ld e, l                                       ; $5649: $5D
    cp a                                          ; $564A: $BF
    add hl, bc                                    ; $564B: $09
    db $DD                                        ; $564C: $DD
    sub $11                                       ; $564D: $D6 $11
    sub l                                         ; $564F: $95
    xor d                                         ; $5650: $AA
    add hl, hl                                    ; $5651: $29
    ret nc                                        ; $5652: $D0

    inc bc                                        ; $5653: $03
    dec c                                         ; $5654: $0D
    ld b, $80                                     ; $5655: $06 $80
    ld b, c                                       ; $5657: $41
    inc e                                         ; $5658: $1C
    dec c                                         ; $5659: $0D
    jr z, jr_004_5698                             ; $565A: $28 $3C

    ld d, h                                       ; $565C: $54
    ld a, h                                       ; $565D: $7C
    ld hl, sp+$00                                 ; $565E: $F8 $00
    ld d, h                                       ; $5660: $54
    ldh a, [rP1]                                  ; $5661: $F0 $00
    ld d, l                                       ; $5663: $55
    ret nc                                        ; $5664: $D0

    ld l, d                                       ; $5665: $6A
    ld [$807F], sp                                ; $5666: $08 $7F $80
    add hl, bc                                    ; $5669: $09
    rst RST_38                                    ; $566A: $FF
    db $DB                                        ; $566B: $DB
    or $11                                        ; $566C: $F6 $11
    ld sp, hl                                     ; $566E: $F9
    add $01                                       ; $566F: $C6 $01

jr_004_5671:
    ldh a, [$FFD9]                                ; $5671: $F0 $D9
    ld [$3FC8], sp                                ; $5673: $08 $C8 $3F
    ld a, [bc]                                    ; $5676: $0A
    ld bc, $0818                                  ; $5677: $01 $18 $08
    ld [$F9A8], sp                                ; $567A: $08 $A8 $F9
    jr c, jr_004_567F                             ; $567D: $38 $00

jr_004_567F:
    ld hl, sp+$00                                 ; $567F: $F8 $00
    ld e, l                                       ; $5681: $5D
    ld a, [bc]                                    ; $5682: $0A
    db $FD                                        ; $5683: $FD
    ld e, l                                       ; $5684: $5D
    ld [de], a                                    ; $5685: $12
    add sp, -$1D                                  ; $5686: $E8 $E3
    ld [$0F80], sp                                ; $5688: $08 $80 $0F
    ldh [rP1], a                                  ; $568B: $E0 $00
    ldh [c], a                                    ; $568D: $E2
    ld [$0207], a                                 ; $568E: $EA $07 $02
    halt                                          ; $5691: $76
    ld bc, $08EE                                  ; $5692: $01 $EE $08
    cp $55                                        ; $5695: $FE $55
    pop hl                                        ; $5697: $E1

jr_004_5698:
    cp b                                          ; $5698: $B8
    dec e                                         ; $5699: $1D
    rst RST_38                                    ; $569A: $FF
    ret c                                         ; $569B: $D8

    nop                                           ; $569C: $00
    jr jr_004_569F                                ; $569D: $18 $00

jr_004_569F:
    ret                                           ; $569F: $C9


    rst RST_18                                    ; $56A0: $DF
    inc bc                                        ; $56A1: $03
    db $FD                                        ; $56A2: $FD
    ld b, d                                       ; $56A3: $42
    add hl, bc                                    ; $56A4: $09
    ei                                            ; $56A5: $FB
    ld b, l                                       ; $56A6: $45
    ld [$C503], sp                                ; $56A7: $08 $03 $C5
    push af                                       ; $56AA: $F5
    ld sp, hl                                     ; $56AB: $F9
    cp $02                                        ; $56AC: $FE $02
    add b                                         ; $56AE: $80
    ld l, b                                       ; $56AF: $68
    add hl, bc                                    ; $56B0: $09
    or [hl]                                       ; $56B1: $B6
    inc b                                         ; $56B2: $04
    ld bc, $6009                                  ; $56B3: $01 $09 $60
    inc bc                                        ; $56B6: $03
    db $10                                        ; $56B7: $10
    ld [$837F], sp                                ; $56B8: $08 $7F $83
    ld [bc], a                                    ; $56BB: $02
    ld d, a                                       ; $56BC: $57
    ld a, [$F4AF]                                 ; $56BD: $FA $AF $F4
    rst RST_38                                    ; $56C0: $FF
    ld a, [bc]                                    ; $56C1: $0A
    jr c, jr_004_5719                             ; $56C2: $38 $55

    ld d, d                                       ; $56C4: $52
    jr c, jr_004_5671                             ; $56C5: $38 $AA

    sub c                                         ; $56C7: $91
    ld b, e                                       ; $56C8: $43
    ret                                           ; $56C9: $C9


    ld hl, sp+$08                                 ; $56CA: $F8 $08
    ld d, l                                       ; $56CC: $55
    ldh a, [$FF0B]                                ; $56CD: $F0 $0B
    xor b                                         ; $56CF: $A8
    jr c, jr_004_5722                             ; $56D0: $38 $50

    ld [$00FC], sp                                ; $56D2: $08 $FC $00
    ld e, a                                       ; $56D5: $5F
    cp h                                          ; $56D6: $BC
    nop                                           ; $56D7: $00
    push de                                       ; $56D8: $D5
    ld d, b                                       ; $56D9: $50
    or b                                          ; $56DA: $B0
    ld [$09E8], sp                                ; $56DB: $08 $E8 $09
    ld d, [hl]                                    ; $56DE: $56
    ldh [$FF08], a                                ; $56DF: $E0 $08
    jr jr_004_56EB                                ; $56E1: $18 $08

    rlca                                          ; $56E3: $07
    ld a, [hl-]                                   ; $56E4: $3A
    ld [$AE7F], sp                                ; $56E5: $08 $7F $AE
    ld [bc], a                                    ; $56E8: $02
    rra                                           ; $56E9: $1F
    nop                                           ; $56EA: $00

jr_004_56EB:
    ld b, $00                                     ; $56EB: $06 $00
    ld b, b                                       ; $56ED: $40
    ld b, $55                                     ; $56EE: $06 $55
    sbc b                                         ; $56F0: $98
    ld [$40EA], sp                                ; $56F1: $08 $EA $40
    xor b                                         ; $56F4: $A8
    ld [$A0DF], sp                                ; $56F5: $08 $DF $A0
    push de                                       ; $56F8: $D5
    dec e                                         ; $56F9: $1D
    xor d                                         ; $56FA: $AA
    rst RST_28                                    ; $56FB: $EF
    db $10                                        ; $56FC: $10
    ld [$F9B8], sp                                ; $56FD: $08 $B8 $F9
    cp [hl]                                       ; $5700: $BE
    nop                                           ; $5701: $00
    rst RST_18                                    ; $5702: $DF
    jp hl                                         ; $5703: $E9


    ld bc, $020F                                  ; $5704: $01 $0F $02
    db $FD                                        ; $5707: $FD
    adc c                                         ; $5708: $89
    rrca                                          ; $5709: $0F
    inc c                                         ; $570A: $0C
    ld [hl], e                                    ; $570B: $73
    ldh [$FFAD], a                                ; $570C: $E0 $AD
    rlca                                          ; $570E: $07
    ld a, [$BF10]                                 ; $570F: $FA $10 $BF
    ld [$4A18], sp                                ; $5712: $08 $18 $4A
    ld [$5F09], sp                                ; $5715: $08 $09 $5F
    and h                                         ; $5718: $A4

jr_004_5719:
    jr @+$06                                      ; $5719: $18 $04

    ld [$D5FE], sp                                ; $571B: $08 $FE $D5
    ld [$C08A], sp                                ; $571E: $08 $8A $C0
    nop                                           ; $5721: $00

jr_004_5722:
    ldh [rSC], a                                  ; $5722: $E0 $02
    ldh a, [rP1]                                  ; $5724: $F0 $00
    xor h                                         ; $5726: $AC
    db $FD                                        ; $5727: $FD
    ei                                            ; $5728: $FB
    ld [$08F9], sp                                ; $5729: $08 $F9 $08

jr_004_572C:
    or b                                          ; $572C: $B0
    ld [bc], a                                    ; $572D: $02
    db $FD                                        ; $572E: $FD
    ld a, a                                       ; $572F: $7F
    ld bc, $08C8                                  ; $5730: $01 $C8 $08
    jr z, jr_004_576D                             ; $5733: $28 $38

    jp hl                                         ; $5735: $E9


    ld a, [$F522]                                 ; $5736: $FA $22 $F5
    ld [hl], d                                    ; $5739: $72
    ld h, b                                       ; $573A: $60
    halt                                          ; $573B: $76
    ld [$403C], sp                                ; $573C: $08 $3C $40
    sbc [hl]                                      ; $573F: $9E
    jr nz, jr_004_5743                            ; $5740: $20 $01

    xor a                                         ; $5742: $AF

jr_004_5743:
    jr nz, jr_004_57B0                            ; $5743: $20 $6B

    jr c, jr_004_5789                             ; $5745: $38 $42

    sbc $10                                       ; $5747: $DE $10
    ld l, c                                       ; $5749: $69
    ld a, [de]                                    ; $574A: $1A
    ld a, a                                       ; $574B: $7F
    add b                                         ; $574C: $80
    ccf                                           ; $574D: $3F
    cp e                                          ; $574E: $BB
    ld [hl], b                                    ; $574F: $70
    rst RST_18                                    ; $5750: $DF
    ld [hl], b                                    ; $5751: $70
    rst RST_00                                    ; $5752: $C7
    and b                                         ; $5753: $A0
    ld [hl], b                                    ; $5754: $70
    ld hl, $C074                                  ; $5755: $21 $74 $C0
    ret nc                                        ; $5758: $D0

    rra                                           ; $5759: $1F
    db $F4                                        ; $575A: $F4
    rlca                                          ; $575B: $07
    ld a, d                                       ; $575C: $7A
    db $FC                                        ; $575D: $FC
    sub c                                         ; $575E: $91
    rrca                                          ; $575F: $0F
    ld [$E070], sp                                ; $5760: $08 $70 $E0
    ld [hl], b                                    ; $5763: $70
    ld hl, sp-$3D                                 ; $5764: $F8 $C3
    ld h, a                                       ; $5766: $67
    dec bc                                        ; $5767: $0B
    ld d, $F0                                     ; $5768: $16 $F0
    ld a, [bc]                                    ; $576A: $0A
    inc bc                                        ; $576B: $03
    db $10                                        ; $576C: $10

jr_004_576D:
    sub b                                         ; $576D: $90
    ld b, e                                       ; $576E: $43
    ret nc                                        ; $576F: $D0

    or b                                          ; $5770: $B0
    ld b, b                                       ; $5771: $40
    ld a, a                                       ; $5772: $7F
    ld [bc], a                                    ; $5773: $02
    cp $40                                        ; $5774: $FE $40
    ret z                                         ; $5776: $C8

    ld l, e                                       ; $5777: $6B
    rla                                           ; $5778: $17
    ld d, b                                       ; $5779: $50

jr_004_577A:
    nop                                           ; $577A: $00
    rrca                                          ; $577B: $0F
    jr z, jr_004_577A                             ; $577C: $28 $FC

    ld [hl], b                                    ; $577E: $70
    jr c, jr_004_572C                             ; $577F: $38 $AB

    ld [hl], b                                    ; $5781: $70
    ldh [rSVBK], a                                ; $5782: $E0 $70
    add b                                         ; $5784: $80
    ld [hl], b                                    ; $5785: $70
    ld bc, $4030                                  ; $5786: $01 $30 $40

jr_004_5789:
    adc $69                                       ; $5789: $CE $69
    jr nc, @+$01                                  ; $578B: $30 $FF

    nop                                           ; $578D: $00
    ld [$B9C9], sp                                ; $578E: $08 $C9 $B9
    cp a                                          ; $5791: $BF
    rst RST_38                                    ; $5792: $FF
    ld b, b                                       ; $5793: $40
    or b                                          ; $5794: $B0
    ld b, b                                       ; $5795: $40
    ld a, b                                       ; $5796: $78
    adc b                                         ; $5797: $88
    jr nc, jr_004_577A                            ; $5798: $30 $E0

    ld [hl], d                                    ; $579A: $72
    rst RST_28                                    ; $579B: $EF
    ld [$BAC9], sp                                ; $579C: $08 $C9 $BA
    ld a, a                                       ; $579F: $7F
    ld b, c                                       ; $57A0: $41
    jr nc, jr_004_57E3                            ; $57A1: $30 $40

    ld [hl], b                                    ; $57A3: $70
    add d                                         ; $57A4: $82
    and b                                         ; $57A5: $A0
    cpl                                           ; $57A6: $2F
    ldh [$FF5F], a                                ; $57A7: $E0 $5F
    ret nz                                        ; $57A9: $C0

    ld a, $CB                                     ; $57AA: $3E $CB
    rlca                                          ; $57AC: $07
    rst RST_28                                    ; $57AD: $EF
    ld b, b                                       ; $57AE: $40
    sbc b                                         ; $57AF: $98

jr_004_57B0:
    ld b, b                                       ; $57B0: $40
    rra                                           ; $57B1: $1F
    ld [$28A8], sp                                ; $57B2: $08 $A8 $28
    add hl, de                                    ; $57B5: $19
    ld a, a                                       ; $57B6: $7F
    ccf                                           ; $57B7: $3F
    bit 6, b                                      ; $57B8: $CB $70
    sub b                                         ; $57BA: $90
    ld [hl], b                                    ; $57BB: $70
    sub b                                         ; $57BC: $90
    ld d, b                                       ; $57BD: $50
    ld h, b                                       ; $57BE: $60
    xor d                                         ; $57BF: $AA
    ld [hl], b                                    ; $57C0: $70
    add b                                         ; $57C1: $80
    jr nz, jr_004_57C7                            ; $57C2: $20 $03

    add hl, bc                                    ; $57C4: $09
    ld [hl], b                                    ; $57C5: $70
    add hl, bc                                    ; $57C6: $09

jr_004_57C7:
    add e                                         ; $57C7: $83
    or $0D                                        ; $57C8: $F6 $0D
    ret z                                         ; $57CA: $C8

    ld [$FC50], sp                                ; $57CB: $08 $50 $FC
    dec bc                                        ; $57CE: $0B
    jr nc, jr_004_584D                            ; $57CF: $30 $7C

    rst RST_18                                    ; $57D1: $DF
    rrca                                          ; $57D2: $0F
    adc b                                         ; $57D3: $88
    rst RST_38                                    ; $57D4: $FF
    ld a, [bc]                                    ; $57D5: $0A
    dec h                                         ; $57D6: $25
    inc [hl]                                      ; $57D7: $34
    ld [hl], a                                    ; $57D8: $77
    ld e, a                                       ; $57D9: $5F
    ld h, a                                       ; $57DA: $67
    nop                                           ; $57DB: $00
    dec d                                         ; $57DC: $15
    ld bc, $0210                                  ; $57DD: $01 $10 $02
    db $10                                        ; $57E0: $10
    dec b                                         ; $57E1: $05
    db $10                                        ; $57E2: $10

jr_004_57E3:
    ld b, $10                                     ; $57E3: $06 $10
    ld d, l                                       ; $57E5: $55
    add hl, bc                                    ; $57E6: $09
    db $10                                        ; $57E7: $10
    ld a, [bc]                                    ; $57E8: $0A
    db $10                                        ; $57E9: $10
    dec c                                         ; $57EA: $0D
    ld sp, $7050                                  ; $57EB: $31 $50 $70
    xor h                                         ; $57EE: $AC
    db $10                                        ; $57EF: $10
    ld c, $50                                     ; $57F0: $0E $50
    rrca                                          ; $57F2: $0F
    stop                                          ; $57F3: $10 $00
    jr @+$13                                      ; $57F5: $18 $11

    xor [hl]                                      ; $57F7: $AE
    db $10                                        ; $57F8: $10
    ld [de], a                                    ; $57F9: $12
    db $10                                        ; $57FA: $10
    inc de                                        ; $57FB: $13
    rra                                           ; $57FC: $1F
    rra                                           ; $57FD: $1F
    ld [de], a                                    ; $57FE: $12
    inc bc                                        ; $57FF: $03
    ld a, [hl+]                                   ; $5800: $2A
    db $10                                        ; $5801: $10
    inc b                                         ; $5802: $04
    db $10                                        ; $5803: $10
    rlca                                          ; $5804: $07
    db $10                                        ; $5805: $10
    ld [$0B10], sp                                ; $5806: $08 $10 $0B
    xor e                                         ; $5809: $AB
    db $10                                        ; $580A: $10
    inc c                                         ; $580B: $0C
    db $10                                        ; $580C: $10
    dec c                                         ; $580D: $0D
    ld sp, $7050                                  ; $580E: $31 $50 $70
    db $10                                        ; $5811: $10
    ld e, c                                       ; $5812: $59
    ld c, $50                                     ; $5813: $0E $50
    rrca                                          ; $5815: $0F
    stop                                          ; $5816: $10 $00
    jr jr_004_582B                                ; $5818: $18 $11

    db $10                                        ; $581A: $10
    ld e, h                                       ; $581B: $5C
    ld [de], a                                    ; $581C: $12
    db $10                                        ; $581D: $10
    inc de                                        ; $581E: $13
    rra                                           ; $581F: $1F
    rra                                           ; $5820: $1F
    ld [de], a                                    ; $5821: $12
    inc d                                         ; $5822: $14
    db $10                                        ; $5823: $10
    ld [hl], l                                    ; $5824: $75
    dec d                                         ; $5825: $15
    db $10                                        ; $5826: $10
    ld b, b                                       ; $5827: $40
    db $10                                        ; $5828: $10

jr_004_5829:
    ld [bc], a                                    ; $5829: $02
    db $10                                        ; $582A: $10

jr_004_582B:
    dec de                                        ; $582B: $1B
    db $10                                        ; $582C: $10
    ld d, [hl]                                    ; $582D: $56
    inc e                                         ; $582E: $1C
    db $10                                        ; $582F: $10
    dec c                                         ; $5830: $0D
    ld sp, $7050                                  ; $5831: $31 $50 $70
    db $10                                        ; $5834: $10
    ld c, $B2                                     ; $5835: $0E $B2
    ld d, b                                       ; $5837: $50
    rrca                                          ; $5838: $0F
    stop                                          ; $5839: $10 $00
    jr jr_004_584E                                ; $583B: $18 $11

    db $10                                        ; $583D: $10
    ld [de], a                                    ; $583E: $12
    cp b                                          ; $583F: $B8
    db $10                                        ; $5840: $10
    inc de                                        ; $5841: $13
    rra                                           ; $5842: $1F
    rra                                           ; $5843: $1F
    ld [de], a                                    ; $5844: $12
    ld d, $10                                     ; $5845: $16 $10
    rla                                           ; $5847: $17
    xor d                                         ; $5848: $AA
    db $10                                        ; $5849: $10
    add hl, de                                    ; $584A: $19
    db $10                                        ; $584B: $10
    ld a, [de]                                    ; $584C: $1A

jr_004_584D:
    db $10                                        ; $584D: $10

jr_004_584E:
    dec e                                         ; $584E: $1D
    db $10                                        ; $584F: $10
    ld e, $AD                                     ; $5850: $1E $AD
    db $10                                        ; $5852: $10
    rra                                           ; $5853: $1F
    ld sp, $7050                                  ; $5854: $31 $50 $70
    db $10                                        ; $5857: $10
    ld c, $50                                     ; $5858: $0E $50
    ld h, l                                       ; $585A: $65
    rrca                                          ; $585B: $0F
    stop                                          ; $585C: $10 $00
    jr jr_004_5871                                ; $585E: $18 $11

    db $10                                        ; $5860: $10
    ld [de], a                                    ; $5861: $12
    db $10                                        ; $5862: $10
    ld [hl], c                                    ; $5863: $71
    inc de                                        ; $5864: $13
    rra                                           ; $5865: $1F
    rra                                           ; $5866: $1F
    ld [de], a                                    ; $5867: $12
    jr nz, @+$12                                  ; $5868: $20 $10

    ld hl, $5510                                  ; $586A: $21 $10 $55
    inc h                                         ; $586D: $24
    db $10                                        ; $586E: $10
    dec h                                         ; $586F: $25
    db $10                                        ; $5870: $10

jr_004_5871:
    jr z, jr_004_5883                             ; $5871: $28 $10

    add hl, hl                                    ; $5873: $29
    db $10                                        ; $5874: $10
    ld [hl], b                                    ; $5875: $70
    inc l                                         ; $5876: $2C
    rra                                           ; $5877: $1F
    rra                                           ; $5878: $1F
    ld d, $29                                     ; $5879: $16 $29
    ld d, b                                       ; $587B: $50
    dec l                                         ; $587C: $2D
    jr jr_004_5829                                ; $587D: $18 $AA

    rla                                           ; $587F: $17
    ld [hl+], a                                   ; $5880: $22
    ret nc                                        ; $5881: $D0

    inc hl                                        ; $5882: $23

jr_004_5883:
    db $10                                        ; $5883: $10
    ld h, $10                                     ; $5884: $26 $10
    daa                                           ; $5886: $27
    xor e                                         ; $5887: $AB
    db $10                                        ; $5888: $10
    ld a, [hl+]                                   ; $5889: $2A
    db $10                                        ; $588A: $10
    dec hl                                        ; $588B: $2B
    stop                                          ; $588C: $10 $00
    rra                                           ; $588E: $1F
    rra                                           ; $588F: $1F
    add l                                         ; $5890: $85
    ld d, $2B                                     ; $5891: $16 $2B
    ld d, b                                       ; $5893: $50
    ld l, $18                                     ; $5894: $2E $18
    rla                                           ; $5896: $17
    cpl                                           ; $5897: $2F
    ret nc                                        ; $5898: $D0

    ld d, l                                       ; $5899: $55
    jr nc, jr_004_58AC                            ; $589A: $30 $10

    inc sp                                        ; $589C: $33
    db $10                                        ; $589D: $10
    inc [hl]                                      ; $589E: $34
    db $10                                        ; $589F: $10
    scf                                           ; $58A0: $37
    db $10                                        ; $58A1: $10
    ld e, h                                       ; $58A2: $5C
    dec hl                                        ; $58A3: $2B
    stop                                          ; $58A4: $10 $00
    rra                                           ; $58A6: $1F
    rra                                           ; $58A7: $1F
    ld d, $2B                                     ; $58A8: $16 $2B
    ld d, b                                       ; $58AA: $50
    ld a, [hl+]                                   ; $58AB: $2A

jr_004_58AC:
    add hl, sp                                    ; $58AC: $39
    jr jr_004_58C6                                ; $58AD: $18 $17

    ld sp, $32D0                                  ; $58AF: $31 $D0 $32
    db $10                                        ; $58B2: $10
    dec [hl]                                      ; $58B3: $35
    xor d                                         ; $58B4: $AA
    db $10                                        ; $58B5: $10
    ld [hl], $10                                  ; $58B6: $36 $10
    jr c, jr_004_58CA                             ; $58B8: $38 $10

    dec hl                                        ; $58BA: $2B
    stop                                          ; $58BB: $10 $00
    ldh [$FF1F], a                                ; $58BD: $E0 $1F
    rra                                           ; $58BF: $1F
    ld d, $2B                                     ; $58C0: $16 $2B
    ld d, b                                       ; $58C2: $50
    ld a, [hl-]                                   ; $58C3: $3A
    inc d                                         ; $58C4: $14
    dec sp                                        ; $58C5: $3B

jr_004_58C6:
    xor d                                         ; $58C6: $AA
    db $10                                        ; $58C7: $10
    inc a                                         ; $58C8: $3C
    db $10                                        ; $58C9: $10

jr_004_58CA:
    dec a                                         ; $58CA: $3D
    db $10                                        ; $58CB: $10
    ld a, $10                                     ; $58CC: $3E $10
    ccf                                           ; $58CE: $3F
    xor d                                         ; $58CF: $AA
    ret nc                                        ; $58D0: $D0

    ld b, b                                       ; $58D1: $40
    db $10                                        ; $58D2: $10
    ld b, e                                       ; $58D3: $43
    db $10                                        ; $58D4: $10
    ld [bc], a                                    ; $58D5: $02
    ld [de], a                                    ; $58D6: $12
    dec hl                                        ; $58D7: $2B
    cp b                                          ; $58D8: $B8
    stop                                          ; $58D9: $10 $00
    rra                                           ; $58DB: $1F
    rra                                           ; $58DC: $1F
    ld d, $2B                                     ; $58DD: $16 $2B
    ld d, b                                       ; $58DF: $50
    ld b, l                                       ; $58E0: $45
    ld a, [hl+]                                   ; $58E1: $2A
    inc d                                         ; $58E2: $14
    ld b, a                                       ; $58E3: $47
    db $10                                        ; $58E4: $10
    ld c, b                                       ; $58E5: $48
    db $10                                        ; $58E6: $10
    ld c, e                                       ; $58E7: $4B
    db $10                                        ; $58E8: $10
    ld c, h                                       ; $58E9: $4C
    xor d                                         ; $58EA: $AA
    db $10                                        ; $58EB: $10
    ld b, c                                       ; $58EC: $41
    ret nc                                        ; $58ED: $D0

    ld b, d                                       ; $58EE: $42
    db $10                                        ; $58EF: $10
    ld b, h                                       ; $58F0: $44
    db $10                                        ; $58F1: $10
    ld [bc], a                                    ; $58F2: $02
    xor [hl]                                      ; $58F3: $AE
    ld [de], a                                    ; $58F4: $12
    dec hl                                        ; $58F5: $2B
    stop                                          ; $58F6: $10 $00
    rra                                           ; $58F8: $1F
    rra                                           ; $58F9: $1F
    ld d, $2B                                     ; $58FA: $16 $2B
    ld a, [bc]                                    ; $58FC: $0A
    ld d, b                                       ; $58FD: $50
    ld b, [hl]                                    ; $58FE: $46
    inc d                                         ; $58FF: $14
    ld c, c                                       ; $5900: $49
    db $10                                        ; $5901: $10
    ld c, d                                       ; $5902: $4A
    db $10                                        ; $5903: $10
    ld c, l                                       ; $5904: $4D
    xor [hl]                                      ; $5905: $AE
    db $10                                        ; $5906: $10
    ld c, [hl]                                    ; $5907: $4E
    db $10                                        ; $5908: $10
    ld c, a                                       ; $5909: $4F
    ret nc                                        ; $590A: $D0

    ret nz                                        ; $590B: $C0

    db $10                                        ; $590C: $10
    ld d, e                                       ; $590D: $53
    xor e                                         ; $590E: $AB
    db $10                                        ; $590F: $10
    ld [bc], a                                    ; $5910: $02
    ld [de], a                                    ; $5911: $12
    dec hl                                        ; $5912: $2B
    stop                                          ; $5913: $10 $00
    rra                                           ; $5915: $1F
    rra                                           ; $5916: $1F
    add d                                         ; $5917: $82
    ld d, $2B                                     ; $5918: $16 $2B
    ld d, b                                       ; $591A: $50
    ld d, a                                       ; $591B: $57
    inc d                                         ; $591C: $14
    ld e, c                                       ; $591D: $59
    db $10                                        ; $591E: $10
    ld e, d                                       ; $591F: $5A
    xor d                                         ; $5920: $AA
    db $10                                        ; $5921: $10
    ld e, l                                       ; $5922: $5D
    db $10                                        ; $5923: $10
    ld e, [hl]                                    ; $5924: $5E
    db $10                                        ; $5925: $10
    ld d, c                                       ; $5926: $51
    ret nc                                        ; $5927: $D0

    ld d, d                                       ; $5928: $52
    xor d                                         ; $5929: $AA
    db $10                                        ; $592A: $10
    ld d, h                                       ; $592B: $54
    db $10                                        ; $592C: $10
    ld d, l                                       ; $592D: $55
    db $10                                        ; $592E: $10
    ld d, [hl]                                    ; $592F: $56
    db $10                                        ; $5930: $10
    dec hl                                        ; $5931: $2B
    cp b                                          ; $5932: $B8
    stop                                          ; $5933: $10 $00
    rra                                           ; $5935: $1F
    rra                                           ; $5936: $1F
    ld d, $2B                                     ; $5937: $16 $2B
    ld d, b                                       ; $5939: $50
    ld e, b                                       ; $593A: $58
    ld a, [hl+]                                   ; $593B: $2A
    inc d                                         ; $593C: $14
    ld e, e                                       ; $593D: $5B
    db $10                                        ; $593E: $10
    ld e, h                                       ; $593F: $5C
    db $10                                        ; $5940: $10
    ld e, a                                       ; $5941: $5F
    db $10                                        ; $5942: $10
    ld h, b                                       ; $5943: $60
    xor d                                         ; $5944: $AA
    db $10                                        ; $5945: $10
    ld h, c                                       ; $5946: $61
    ret nc                                        ; $5947: $D0

    ld h, d                                       ; $5948: $62
    db $10                                        ; $5949: $10
    ld h, l                                       ; $594A: $65
    db $10                                        ; $594B: $10
    ld h, [hl]                                    ; $594C: $66
    xor e                                         ; $594D: $AB
    db $10                                        ; $594E: $10
    ld l, c                                       ; $594F: $69
    db $10                                        ; $5950: $10
    dec hl                                        ; $5951: $2B
    stop                                          ; $5952: $10 $00
    rra                                           ; $5954: $1F
    rra                                           ; $5955: $1F
    add d                                         ; $5956: $82
    ld d, $2B                                     ; $5957: $16 $2B
    ld d, b                                       ; $5959: $50
    ld l, e                                       ; $595A: $6B
    inc d                                         ; $595B: $14
    ld l, l                                       ; $595C: $6D
    db $10                                        ; $595D: $10
    ld l, [hl]                                    ; $595E: $6E
    xor d                                         ; $595F: $AA
    db $10                                        ; $5960: $10
    ld [hl], c                                    ; $5961: $71
    db $10                                        ; $5962: $10
    ld [hl], d                                    ; $5963: $72
    db $10                                        ; $5964: $10
    ld h, e                                       ; $5965: $63
    ret nc                                        ; $5966: $D0

    ld h, h                                       ; $5967: $64
    xor d                                         ; $5968: $AA
    db $10                                        ; $5969: $10
    ld h, a                                       ; $596A: $67
    db $10                                        ; $596B: $10
    ld l, b                                       ; $596C: $68
    db $10                                        ; $596D: $10
    ld l, d                                       ; $596E: $6A
    db $10                                        ; $596F: $10
    dec hl                                        ; $5970: $2B
    cp b                                          ; $5971: $B8
    stop                                          ; $5972: $10 $00
    rra                                           ; $5974: $1F
    rra                                           ; $5975: $1F
    ld d, $2B                                     ; $5976: $16 $2B
    ld d, b                                       ; $5978: $50
    ld l, h                                       ; $5979: $6C
    ld a, [hl+]                                   ; $597A: $2A
    inc d                                         ; $597B: $14
    ld l, a                                       ; $597C: $6F
    db $10                                        ; $597D: $10
    ld [hl], b                                    ; $597E: $70
    db $10                                        ; $597F: $10
    ld [hl], e                                    ; $5980: $73
    db $10                                        ; $5981: $10
    ld [hl], h                                    ; $5982: $74
    xor d                                         ; $5983: $AA
    db $10                                        ; $5984: $10
    ld [hl], l                                    ; $5985: $75
    ret nc                                        ; $5986: $D0

    halt                                          ; $5987: $76
    db $10                                        ; $5988: $10
    ld a, c                                       ; $5989: $79
    db $10                                        ; $598A: $10
    ld a, d                                       ; $598B: $7A
    xor e                                         ; $598C: $AB
    db $10                                        ; $598D: $10
    ld a, l                                       ; $598E: $7D
    db $10                                        ; $598F: $10
    dec hl                                        ; $5990: $2B
    stop                                          ; $5991: $10 $00
    rra                                           ; $5993: $1F
    rra                                           ; $5994: $1F
    add d                                         ; $5995: $82
    ld d, $2B                                     ; $5996: $16 $2B
    ld d, b                                       ; $5998: $50
    ld a, a                                       ; $5999: $7F
    inc d                                         ; $599A: $14
    add c                                         ; $599B: $81
    db $10                                        ; $599C: $10
    add d                                         ; $599D: $82
    xor d                                         ; $599E: $AA
    db $10                                        ; $599F: $10
    inc de                                        ; $59A0: $13
    ld [de], a                                    ; $59A1: $12
    ld [hl], a                                    ; $59A2: $77
    ret nc                                        ; $59A3: $D0

    ld a, b                                       ; $59A4: $78
    db $10                                        ; $59A5: $10
    ld a, e                                       ; $59A6: $7B
    xor d                                         ; $59A7: $AA
    db $10                                        ; $59A8: $10
    ld a, h                                       ; $59A9: $7C
    db $10                                        ; $59AA: $10
    ld a, [hl]                                    ; $59AB: $7E
    db $10                                        ; $59AC: $10
    dec hl                                        ; $59AD: $2B
    stop                                          ; $59AE: $10 $00
    ldh [$FF1F], a                                ; $59B0: $E0 $1F
    rra                                           ; $59B2: $1F
    ld d, $2B                                     ; $59B3: $16 $2B
    ld d, b                                       ; $59B5: $50
    add b                                         ; $59B6: $80
    inc d                                         ; $59B7: $14
    add e                                         ; $59B8: $83
    xor d                                         ; $59B9: $AA
    db $10                                        ; $59BA: $10
    add h                                         ; $59BB: $84
    db $10                                        ; $59BC: $10
    add l                                         ; $59BD: $85
    db $10                                        ; $59BE: $10
    add [hl]                                      ; $59BF: $86

jr_004_59C0:
    db $10                                        ; $59C0: $10
    add a                                         ; $59C1: $87
    xor d                                         ; $59C2: $AA
    ret nc                                        ; $59C3: $D0

    adc b                                         ; $59C4: $88
    db $10                                        ; $59C5: $10
    adc e                                         ; $59C6: $8B
    db $10                                        ; $59C7: $10
    adc h                                         ; $59C8: $8C
    db $10                                        ; $59C9: $10
    adc a                                         ; $59CA: $8F
    xor [hl]                                      ; $59CB: $AE
    db $10                                        ; $59CC: $10
    dec hl                                        ; $59CD: $2B
    stop                                          ; $59CE: $10 $00
    rra                                           ; $59D0: $1F
    rra                                           ; $59D1: $1F
    ld d, $2B                                     ; $59D2: $16 $2B
    ld a, [bc]                                    ; $59D4: $0A
    ld d, b                                       ; $59D5: $50
    sub c                                         ; $59D6: $91
    inc d                                         ; $59D7: $14
    sub e                                         ; $59D8: $93
    db $10                                        ; $59D9: $10
    sub h                                         ; $59DA: $94
    db $10                                        ; $59DB: $10
    sub a                                         ; $59DC: $97
    ld [$7010], a                                 ; $59DD: $EA $10 $70
    ld b, b                                       ; $59E0: $40
    adc c                                         ; $59E1: $89
    ret nc                                        ; $59E2: $D0

    adc d                                         ; $59E3: $8A
    db $10                                        ; $59E4: $10
    adc l                                         ; $59E5: $8D
    xor d                                         ; $59E6: $AA
    db $10                                        ; $59E7: $10
    adc [hl]                                      ; $59E8: $8E
    db $10                                        ; $59E9: $10
    sub b                                         ; $59EA: $90
    db $10                                        ; $59EB: $10
    dec hl                                        ; $59EC: $2B
    stop                                          ; $59ED: $10 $00
    ldh [$FF1F], a                                ; $59EF: $E0 $1F
    rra                                           ; $59F1: $1F
    ld d, $2B                                     ; $59F2: $16 $2B
    ld d, b                                       ; $59F4: $50
    sub d                                         ; $59F5: $92
    inc d                                         ; $59F6: $14
    sub l                                         ; $59F7: $95
    xor d                                         ; $59F8: $AA
    db $10                                        ; $59F9: $10
    sub [hl]                                      ; $59FA: $96
    db $10                                        ; $59FB: $10
    sbc b                                         ; $59FC: $98
    db $10                                        ; $59FD: $10
    ld [$9910], sp                                ; $59FE: $08 $10 $99
    xor d                                         ; $5A01: $AA
    ret nc                                        ; $5A02: $D0

    sbc d                                         ; $5A03: $9A
    db $10                                        ; $5A04: $10
    inc de                                        ; $5A05: $13
    inc d                                         ; $5A06: $14
    dec hl                                        ; $5A07: $2B
    stop                                          ; $5A08: $10 $00
    ldh [$FF1F], a                                ; $5A0A: $E0 $1F
    rra                                           ; $5A0C: $1F
    ld d, $2B                                     ; $5A0D: $16 $2B
    ld d, b                                       ; $5A0F: $50
    sbc a                                         ; $5A10: $9F
    inc d                                         ; $5A11: $14
    and c                                         ; $5A12: $A1
    xor d                                         ; $5A13: $AA
    db $10                                        ; $5A14: $10
    and d                                         ; $5A15: $A2
    db $10                                        ; $5A16: $10
    and l                                         ; $5A17: $A5
    db $10                                        ; $5A18: $10
    and [hl]                                      ; $5A19: $A6
    db $10                                        ; $5A1A: $10
    sbc e                                         ; $5A1B: $9B
    xor d                                         ; $5A1C: $AA
    ret nc                                        ; $5A1D: $D0

    sbc d                                         ; $5A1E: $9A
    ret nc                                        ; $5A1F: $D0

    sbc h                                         ; $5A20: $9C
    jr nc, jr_004_59C0                            ; $5A21: $30 $9D

    db $10                                        ; $5A23: $10
    sbc [hl]                                      ; $5A24: $9E
    xor [hl]                                      ; $5A25: $AE
    db $10                                        ; $5A26: $10
    dec hl                                        ; $5A27: $2B
    stop                                          ; $5A28: $10 $00
    rra                                           ; $5A2A: $1F
    rra                                           ; $5A2B: $1F
    ld d, $2B                                     ; $5A2C: $16 $2B
    ld a, [bc]                                    ; $5A2E: $0A
    ld d, b                                       ; $5A2F: $50
    and b                                         ; $5A30: $A0
    inc d                                         ; $5A31: $14
    and e                                         ; $5A32: $A3
    db $10                                        ; $5A33: $10
    and h                                         ; $5A34: $A4
    db $10                                        ; $5A35: $10
    and a                                         ; $5A36: $A7
    xor l                                         ; $5A37: $AD
    db $10                                        ; $5A38: $10
    xor b                                         ; $5A39: $A8
    db $10                                        ; $5A3A: $10
    xor c                                         ; $5A3B: $A9
    ret nc                                        ; $5A3C: $D0

    rla                                           ; $5A3D: $17
    dec hl                                        ; $5A3E: $2B
    db $10                                        ; $5A3F: $10
    ld [hl], b                                    ; $5A40: $70
    nop                                           ; $5A41: $00
    rra                                           ; $5A42: $1F
    rra                                           ; $5A43: $1F
    ld d, $2B                                     ; $5A44: $16 $2B
    ld d, b                                       ; $5A46: $50
    xor e                                         ; $5A47: $AB
    inc d                                         ; $5A48: $14
    ld d, l                                       ; $5A49: $55
    xor l                                         ; $5A4A: $AD
    db $10                                        ; $5A4B: $10
    xor [hl]                                      ; $5A4C: $AE
    db $10                                        ; $5A4D: $10
    or c                                          ; $5A4E: $B1
    db $10                                        ; $5A4F: $10
    or d                                          ; $5A50: $B2
    db $10                                        ; $5A51: $10
    inc hl                                        ; $5A52: $23
    xor d                                         ; $5A53: $AA
    jr jr_004_5A6D                                ; $5A54: $18 $17

    dec hl                                        ; $5A56: $2B

jr_004_5A57:
    stop                                          ; $5A57: $10 $00
    rra                                           ; $5A59: $1F
    rra                                           ; $5A5A: $1F
    add d                                         ; $5A5B: $82
    ld d, $2B                                     ; $5A5C: $16 $2B
    ld d, b                                       ; $5A5E: $50
    xor h                                         ; $5A5F: $AC
    inc d                                         ; $5A60: $14
    xor a                                         ; $5A61: $AF
    db $10                                        ; $5A62: $10
    or b                                          ; $5A63: $B0
    xor c                                         ; $5A64: $A9
    db $10                                        ; $5A65: $10
    or e                                          ; $5A66: $B3
    db $10                                        ; $5A67: $10
    or h                                          ; $5A68: $B4
    db $10                                        ; $5A69: $10
    or l                                          ; $5A6A: $B5
    jr @+$19                                      ; $5A6B: $18 $17

jr_004_5A6D:
    inc e                                         ; $5A6D: $1C
    dec hl                                        ; $5A6E: $2B
    stop                                          ; $5A6F: $10 $00
    rra                                           ; $5A71: $1F
    rra                                           ; $5A72: $1F
    ld d, $2B                                     ; $5A73: $16 $2B
    ld d, b                                       ; $5A75: $50
    dec d                                         ; $5A76: $15
    or a                                          ; $5A77: $B7
    inc d                                         ; $5A78: $14
    cp c                                          ; $5A79: $B9
    db $10                                        ; $5A7A: $10
    cp d                                          ; $5A7B: $BA
    db $10                                        ; $5A7C: $10
    cp l                                          ; $5A7D: $BD
    db $10                                        ; $5A7E: $10
    ld c, b                                       ; $5A7F: $48
    cp [hl]                                       ; $5A80: $BE
    db $10                                        ; $5A81: $10
    or [hl]                                       ; $5A82: $B6
    jr jr_004_5A9C                                ; $5A83: $18 $17

    add hl, hl                                    ; $5A85: $29
    sub b                                         ; $5A86: $90
    inc l                                         ; $5A87: $2C
    ldh [$FF1F], a                                ; $5A88: $E0 $1F
    rra                                           ; $5A8A: $1F
    ld d, $29                                     ; $5A8B: $16 $29
    ret nc                                        ; $5A8D: $D0

    cp b                                          ; $5A8E: $B8
    inc d                                         ; $5A8F: $14
    cp e                                          ; $5A90: $BB
    xor d                                         ; $5A91: $AA
    db $10                                        ; $5A92: $10
    cp h                                          ; $5A93: $BC
    db $10                                        ; $5A94: $10
    cp a                                          ; $5A95: $BF
    db $10                                        ; $5A96: $10
    ret nz                                        ; $5A97: $C0

    db $10                                        ; $5A98: $10
    pop bc                                        ; $5A99: $C1
    dec hl                                        ; $5A9A: $2B
    db $10                                        ; $5A9B: $10

jr_004_5A9C:
    jp nz, $C410                                  ; $5A9C: $C2 $10 $C4

    db $10                                        ; $5A9F: $10
    inc de                                        ; $5AA0: $13
    inc de                                        ; $5AA1: $13
    or b                                          ; $5AA2: $B0
    xor d                                         ; $5AA3: $AA
    inc de                                        ; $5AA4: $13
    rl b                                          ; $5AA5: $CB $10
    call z, $CF10                                 ; $5AA7: $CC $10 $CF
    ld [hl], c                                    ; $5AAA: $71
    jr jr_004_5A57                                ; $5AAB: $18 $AA

    dec e                                         ; $5AAD: $1D
    pop de                                        ; $5AAE: $D1
    db $10                                        ; $5AAF: $10
    jp nc, $D310                                  ; $5AB0: $D2 $10 $D3

    db $10                                        ; $5AB3: $10
    call nc, $142A                                ; $5AB4: $D4 $2A $14
    push de                                       ; $5AB7: $D5
    db $10                                        ; $5AB8: $10
    rst RST_10                                    ; $5AB9: $D7
    db $10                                        ; $5ABA: $10
    ret c                                         ; $5ABB: $D8

    db $10                                        ; $5ABC: $10
    db $DB                                        ; $5ABD: $DB
    cp [hl]                                       ; $5ABE: $BE
    ld sp, $7054                                  ; $5ABF: $31 $54 $70
    db $10                                        ; $5AC2: $10
    or b                                          ; $5AC3: $B0
    db $10                                        ; $5AC4: $10
    pop af                                        ; $5AC5: $F1
    db $DD                                        ; $5AC6: $DD
    add d                                         ; $5AC7: $82
    db $10                                        ; $5AC8: $10
    pop bc                                        ; $5AC9: $C1
    sub b                                         ; $5ACA: $90
    jp $C510                                      ; $5ACB: $C3 $10 $C5


    db $10                                        ; $5ACE: $10
    add $AA                                       ; $5ACF: $C6 $AA
    db $10                                        ; $5AD1: $10
    rst RST_00                                    ; $5AD2: $C7
    db $10                                        ; $5AD3: $10
    ret z                                         ; $5AD4: $C8

    or b                                          ; $5AD5: $B0
    ret                                           ; $5AD6: $C9


    db $10                                        ; $5AD7: $10
    jp z, Jump_000_10AA                           ; $5AD8: $CA $AA $10

    call $CE10                                    ; $5ADB: $CD $10 $CE
    db $10                                        ; $5ADE: $10
    ret nc                                        ; $5ADF: $D0

    db $10                                        ; $5AE0: $10
    inc de                                        ; $5AE1: $13
    ld d, l                                       ; $5AE2: $55
    jr jr_004_5B02                                ; $5AE3: $18 $1D

    pop de                                        ; $5AE5: $D1
    db $10                                        ; $5AE6: $10
    jp nc, $D310                                  ; $5AE7: $D2 $10 $D3

    db $10                                        ; $5AEA: $10
    dec d                                         ; $5AEB: $15
    call nc, $D614                                ; $5AEC: $D4 $14 $D6
    db $10                                        ; $5AEF: $10
    reti                                          ; $5AF0: $D9


    db $10                                        ; $5AF1: $10
    jp c, $5F10                                   ; $5AF2: $DA $10 $5F

    call c, Call_004_5431                         ; $5AF5: $DC $31 $54
    ld [hl], b                                    ; $5AF8: $70
    db $10                                        ; $5AF9: $10
    or b                                          ; $5AFA: $B0
    db $10                                        ; $5AFB: $10
    pop af                                        ; $5AFC: $F1
    adc d                                         ; $5AFD: $8A
    ld de, $18DE                                  ; $5AFE: $11 $DE $18
    rst RST_18                                    ; $5B01: $DF

Call_004_5B02:
jr_004_5B02:
    db $10                                        ; $5B02: $10
    ldh [c], a                                    ; $5B03: $E2
    db $10                                        ; $5B04: $10
    db $E3                                        ; $5B05: $E3
    xor d                                         ; $5B06: $AA
    db $10                                        ; $5B07: $10
    and $10                                       ; $5B08: $E6 $10
    rst RST_20                                    ; $5B0A: $E7
    db $10                                        ; $5B0B: $10
    ld [$EB10], a                                 ; $5B0C: $EA $10 $EB
    xor d                                         ; $5B0F: $AA
    db $10                                        ; $5B10: $10
    xor $10                                       ; $5B11: $EE $10
    rst RST_28                                    ; $5B13: $EF
    db $10                                        ; $5B14: $10
    ldh a, [c]                                    ; $5B15: $F2
    db $10                                        ; $5B16: $10
    inc de                                        ; $5B17: $13
    xor d                                         ; $5B18: $AA
    ld e, $D1                                     ; $5B19: $1E $D1
    db $10                                        ; $5B1B: $10
    jp nc, $D310                                  ; $5B1C: $D2 $10 $D3

    db $10                                        ; $5B1F: $10
    db $F4                                        ; $5B20: $F4
    ld a, [hl+]                                   ; $5B21: $2A
    inc d                                         ; $5B22: $14
    push af                                       ; $5B23: $F5
    db $10                                        ; $5B24: $10
    rst RST_30                                    ; $5B25: $F7
    db $10                                        ; $5B26: $10
    ld hl, sp+$10                                 ; $5B27: $F8 $10
    ei                                            ; $5B29: $FB
    cp a                                          ; $5B2A: $BF
    ld sp, $7054                                  ; $5B2B: $31 $54 $70
    db $10                                        ; $5B2E: $10
    or b                                          ; $5B2F: $B0
    db $10                                        ; $5B30: $10
    ldh a, [rNR10]                                ; $5B31: $F0 $10
    ld b, l                                       ; $5B33: $45
    call nc, $E090                                ; $5B34: $D4 $90 $E0
    jr @-$1D                                      ; $5B37: $18 $E1

    db $10                                        ; $5B39: $10
    db $E4                                        ; $5B3A: $E4
    db $10                                        ; $5B3B: $10
    ld d, l                                       ; $5B3C: $55
    push hl                                       ; $5B3D: $E5
    db $10                                        ; $5B3E: $10
    add sp, $10                                   ; $5B3F: $E8 $10
    jp hl                                         ; $5B41: $E9


    db $10                                        ; $5B42: $10
    db $EC                                        ; $5B43: $EC
    db $10                                        ; $5B44: $10
    ld d, l                                       ; $5B45: $55
    db $ED                                        ; $5B46: $ED
    db $10                                        ; $5B47: $10
    ldh a, [rNR10]                                ; $5B48: $F0 $10
    pop af                                        ; $5B4A: $F1
    db $10                                        ; $5B4B: $10
    di                                            ; $5B4C: $F3
    db $10                                        ; $5B4D: $10
    ld d, l                                       ; $5B4E: $55
    inc de                                        ; $5B4F: $13
    ld e, $D1                                     ; $5B50: $1E $D1
    db $10                                        ; $5B52: $10
    jp nc, $D310                                  ; $5B53: $D2 $10 $D3

    db $10                                        ; $5B56: $10
    dec d                                         ; $5B57: $15
    call nc, $F614                                ; $5B58: $D4 $14 $F6
    db $10                                        ; $5B5B: $10
    ld sp, hl                                     ; $5B5C: $F9
    db $10                                        ; $5B5D: $10
    ld a, [$5F10]                                 ; $5B5E: $FA $10 $5F
    ld [bc], a                                    ; $5B61: $02
    ld sp, $7054                                  ; $5B62: $31 $54 $70
    db $10                                        ; $5B65: $10
    or b                                          ; $5B66: $B0
    db $10                                        ; $5B67: $10
    pop af                                        ; $5B68: $F1
    rst RST_38                                    ; $5B69: $FF
    rra                                           ; $5B6A: $1F
    rra                                           ; $5B6B: $1F
    rra                                           ; $5B6C: $1F
    rra                                           ; $5B6D: $1F
    rra                                           ; $5B6E: $1F
    rra                                           ; $5B6F: $1F
    rra                                           ; $5B70: $1F
    rra                                           ; $5B71: $1F
    rst RST_38                                    ; $5B72: $FF
    rra                                           ; $5B73: $1F
    rra                                           ; $5B74: $1F
    rra                                           ; $5B75: $1F
    rra                                           ; $5B76: $1F
    rra                                           ; $5B77: $1F
    rra                                           ; $5B78: $1F
    rra                                           ; $5B79: $1F
    rra                                           ; $5B7A: $1F

jr_004_5B7B:
    add b                                         ; $5B7B: $80
    ld de, $6000                                  ; $5B7C: $11 $00 $60
    nop                                           ; $5B7F: $00
    add c                                         ; $5B80: $81
    dec l                                         ; $5B81: $2D
    nop                                           ; $5B82: $00
    nop                                           ; $5B83: $00
    rst RST_38                                    ; $5B84: $FF
    ld a, a                                       ; $5B85: $7F
    sub $5A                                       ; $5B86: $D6 $5A
    rst RST_28                                    ; $5B88: $EF
    dec a                                         ; $5B89: $3D
    add hl, hl                                    ; $5B8A: $29
    dec h                                         ; $5B8B: $25
    ld d, $00                                     ; $5B8C: $16 $00
    inc d                                         ; $5B8E: $14
    nop                                           ; $5B8F: $00
    ld [de], a                                    ; $5B90: $12
    nop                                           ; $5B91: $00
    stop                                          ; $5B92: $10 $00
    ld c, $00                                     ; $5B94: $0E $00
    and b                                         ; $5B96: $A0
    ld a, l                                       ; $5B97: $7D
    add [hl]                                      ; $5B98: $86
    ld a, b                                       ; $5B99: $78
    nop                                           ; $5B9A: $00
    jr c, jr_004_5B7B                             ; $5B9B: $38 $DE

    ld [bc], a                                    ; $5B9D: $02
    jp c, $A001                                   ; $5B9E: $DA $01 $A0

    ld b, [hl]                                    ; $5BA1: $46
    nop                                           ; $5BA2: $00
    nop                                           ; $5BA3: $00
    rst RST_38                                    ; $5BA4: $FF
    ld a, a                                       ; $5BA5: $7F
    rst RST_28                                    ; $5BA6: $EF
    dec a                                         ; $5BA7: $3D
    add hl, hl                                    ; $5BA8: $29
    dec h                                         ; $5BA9: $25
    add $18                                       ; $5BAA: $C6 $18
    nop                                           ; $5BAC: $00
    ld d, b                                       ; $5BAD: $50
    nop                                           ; $5BAE: $00
    ld c, b                                       ; $5BAF: $48
    nop                                           ; $5BB0: $00
    ld b, b                                       ; $5BB1: $40
    nop                                           ; $5BB2: $00
    jr c, jr_004_5BD4                             ; $5BB3: $38 $1F

    ld c, d                                       ; $5BB5: $4A
    ld e, b                                       ; $5BB6: $58
    jr jr_004_5BC7                                ; $5BB7: $18 $0E

    nop                                           ; $5BB9: $00
    ret nz                                        ; $5BBA: $C0

    ld d, d                                       ; $5BBB: $52
    ld a, a                                       ; $5BBC: $7F
    inc bc                                        ; $5BBD: $03
    ld e, [hl]                                    ; $5BBE: $5E
    ld [bc], a                                    ; $5BBF: $02
    and b                                         ; $5BC0: $A0
    ld b, [hl]                                    ; $5BC1: $46
    nop                                           ; $5BC2: $00
    nop                                           ; $5BC3: $00
    rst RST_38                                    ; $5BC4: $FF
    ld a, a                                       ; $5BC5: $7F
    add hl, hl                                    ; $5BC6: $29

jr_004_5BC7:
    dec h                                         ; $5BC7: $25
    ld c, $00                                     ; $5BC8: $0E $00
    inc c                                         ; $5BCA: $0C
    nop                                           ; $5BCB: $00
    ld a, [bc]                                    ; $5BCC: $0A
    nop                                           ; $5BCD: $00
    ld [$0600], sp                                ; $5BCE: $08 $00 $06
    nop                                           ; $5BD1: $00
    inc b                                         ; $5BD2: $04
    nop                                           ; $5BD3: $00

jr_004_5BD4:
    nop                                           ; $5BD4: $00
    jr c, jr_004_5BD7                             ; $5BD5: $38 $00

jr_004_5BD7:
    jr nc, jr_004_5BD9                            ; $5BD7: $30 $00

jr_004_5BD9:
    jr z, jr_004_5BDB                             ; $5BD9: $28 $00

jr_004_5BDB:
    jr nz, jr_004_5BDD                            ; $5BDB: $20 $00

jr_004_5BDD:
    jr jr_004_5BDF                                ; $5BDD: $18 $00

jr_004_5BDF:
    db $10                                        ; $5BDF: $10
    ld h, b                                       ; $5BE0: $60
    nop                                           ; $5BE1: $00
    add c                                         ; $5BE2: $81
    dec l                                         ; $5BE3: $2D
    nop                                           ; $5BE4: $00
    nop                                           ; $5BE5: $00
    rst RST_38                                    ; $5BE6: $FF
    ld a, a                                       ; $5BE7: $7F
    sub $5A                                       ; $5BE8: $D6 $5A
    rst RST_28                                    ; $5BEA: $EF
    dec a                                         ; $5BEB: $3D
    add hl, hl                                    ; $5BEC: $29
    dec h                                         ; $5BED: $25
    ld d, $00                                     ; $5BEE: $16 $00
    inc d                                         ; $5BF0: $14
    nop                                           ; $5BF1: $00
    ld [de], a                                    ; $5BF2: $12
    nop                                           ; $5BF3: $00
    stop                                          ; $5BF4: $10 $00
    ld c, $00                                     ; $5BF6: $0E $00
    and b                                         ; $5BF8: $A0
    ld a, l                                       ; $5BF9: $7D
    add [hl]                                      ; $5BFA: $86
    ld a, b                                       ; $5BFB: $78
    nop                                           ; $5BFC: $00
    jr c, jr_004_5BDD                             ; $5BFD: $38 $DE

    ld [bc], a                                    ; $5BFF: $02
    jp c, $A001                                   ; $5C00: $DA $01 $A0

    ld b, [hl]                                    ; $5C03: $46
    nop                                           ; $5C04: $00
    nop                                           ; $5C05: $00
    rst RST_38                                    ; $5C06: $FF
    ld a, a                                       ; $5C07: $7F
    rst RST_28                                    ; $5C08: $EF
    dec a                                         ; $5C09: $3D
    add hl, hl                                    ; $5C0A: $29
    dec h                                         ; $5C0B: $25
    add $18                                       ; $5C0C: $C6 $18
    nop                                           ; $5C0E: $00
    ld d, b                                       ; $5C0F: $50
    nop                                           ; $5C10: $00
    ld c, b                                       ; $5C11: $48
    nop                                           ; $5C12: $00
    ld b, b                                       ; $5C13: $40
    nop                                           ; $5C14: $00
    jr c, jr_004_5C36                             ; $5C15: $38 $1F

    ld c, d                                       ; $5C17: $4A
    ld e, b                                       ; $5C18: $58
    jr jr_004_5C29                                ; $5C19: $18 $0E

    nop                                           ; $5C1B: $00
    ret nz                                        ; $5C1C: $C0

    ld d, d                                       ; $5C1D: $52
    ld a, a                                       ; $5C1E: $7F
    inc bc                                        ; $5C1F: $03
    ld e, [hl]                                    ; $5C20: $5E
    ld [bc], a                                    ; $5C21: $02
    and b                                         ; $5C22: $A0
    ld b, [hl]                                    ; $5C23: $46
    nop                                           ; $5C24: $00
    nop                                           ; $5C25: $00
    rst RST_38                                    ; $5C26: $FF
    ld a, a                                       ; $5C27: $7F
    add hl, hl                                    ; $5C28: $29

jr_004_5C29:
    dec h                                         ; $5C29: $25
    ld c, $00                                     ; $5C2A: $0E $00
    inc c                                         ; $5C2C: $0C
    nop                                           ; $5C2D: $00
    ld a, [bc]                                    ; $5C2E: $0A
    nop                                           ; $5C2F: $00
    ld [$0600], sp                                ; $5C30: $08 $00 $06
    nop                                           ; $5C33: $00
    inc b                                         ; $5C34: $04
    nop                                           ; $5C35: $00

jr_004_5C36:
    nop                                           ; $5C36: $00
    jr c, jr_004_5C39                             ; $5C37: $38 $00

jr_004_5C39:
    jr nc, jr_004_5C3B                            ; $5C39: $30 $00

jr_004_5C3B:
    jr z, jr_004_5C3D                             ; $5C3B: $28 $00

jr_004_5C3D:
    jr nz, jr_004_5C3F                            ; $5C3D: $20 $00

jr_004_5C3F:
    jr jr_004_5C41                                ; $5C3F: $18 $00

jr_004_5C41:
    db $10                                        ; $5C41: $10
    ld hl, $5E9F                                  ; $5C42: $21 $9F $5E
    ld de, $8800                                  ; $5C45: $11 $00 $88
    ld a, $1C                                     ; $5C48: $3E $1C
    call Call_000_23A8                            ; $5C4A: $CD $A8 $23
    ld a, [$C2C6]                                 ; $5C4D: $FA $C6 $C2
    and $F0                                       ; $5C50: $E6 $F0
    cp $20                                        ; $5C52: $FE $20
    jr nz, jr_004_5C6C                            ; $5C54: $20 $16

    ld hl, $605F                                  ; $5C56: $21 $5F $60
    ld de, $8AA0                                  ; $5C59: $11 $A0 $8A
    ld a, $16                                     ; $5C5C: $3E $16
    call Call_000_23A8                            ; $5C5E: $CD $A8 $23
    ld hl, $61BF                                  ; $5C61: $21 $BF $61
    ld de, $8C00                                  ; $5C64: $11 $00 $8C
    ld a, $0C                                     ; $5C67: $3E $0C
    call Call_000_23A8                            ; $5C69: $CD $A8 $23

jr_004_5C6C:
    ld a, [$C2D2]                                 ; $5C6C: $FA $D2 $C2
    swap a                                        ; $5C6F: $CB $37
    sla a                                         ; $5C71: $CB $27
    ld d, $00                                     ; $5C73: $16 $00
    ld e, a                                       ; $5C75: $5F
    ld hl, $607F                                  ; $5C76: $21 $7F $60
    add hl, de                                    ; $5C79: $19
    ld de, $89A0                                  ; $5C7A: $11 $A0 $89
    ld a, $02                                     ; $5C7D: $3E $02
    call Call_000_23A8                            ; $5C7F: $CD $A8 $23
    ld hl, $D700                                  ; $5C82: $21 $00 $D7
    ld de, $651F                                  ; $5C85: $11 $1F $65
    call Call_000_0F8E                            ; $5C88: $CD $8E $0F
    ld hl, $D740                                  ; $5C8B: $21 $40 $D7
    ld de, $651F                                  ; $5C8E: $11 $1F $65
    call Call_000_0F8E                            ; $5C91: $CD $8E $0F
    ld a, [$C2C6]                                 ; $5C94: $FA $C6 $C2
    and $F0                                       ; $5C97: $E6 $F0
    cp $20                                        ; $5C99: $FE $20
    jp nz, Jump_004_5D94                          ; $5C9B: $C2 $94 $5D

    ld hl, $68F2                                  ; $5C9E: $21 $F2 $68
    ld de, $CF00                                  ; $5CA1: $11 $00 $CF
    ld b, $10                                     ; $5CA4: $06 $10

jr_004_5CA6:
    ld a, [hl+]                                   ; $5CA6: $2A
    ld [de], a                                    ; $5CA7: $12
    inc de                                        ; $5CA8: $13
    dec b                                         ; $5CA9: $05
    jr nz, jr_004_5CA6                            ; $5CAA: $20 $FA

    ld hl, $68F2                                  ; $5CAC: $21 $F2 $68
    ld de, $D140                                  ; $5CAF: $11 $40 $D1
    ld b, $10                                     ; $5CB2: $06 $10

jr_004_5CB4:
    ld a, [hl+]                                   ; $5CB4: $2A
    ld [de], a                                    ; $5CB5: $12
    inc de                                        ; $5CB6: $13
    dec b                                         ; $5CB7: $05
    jr nz, jr_004_5CB4                            ; $5CB8: $20 $FA

    ld hl, $D800                                  ; $5CBA: $21 $00 $D8
    ld de, $651F                                  ; $5CBD: $11 $1F $65
    call Call_000_0F8E                            ; $5CC0: $CD $8E $0F
    ld hl, $D800                                  ; $5CC3: $21 $00 $D8
    ld [hl], $80                                  ; $5CC6: $36 $80
    ld hl, $D802                                  ; $5CC8: $21 $02 $D8
    ld [hl], $07                                  ; $5CCB: $36 $07
    ld hl, $D80E                                  ; $5CCD: $21 $0E $D8
    ld [hl], $AA                                  ; $5CD0: $36 $AA
    ld a, [$D804]                                 ; $5CD2: $FA $04 $D8
    sub $20                                       ; $5CD5: $D6 $20
    ld [$D804], a                                 ; $5CD7: $EA $04 $D8
    ld hl, $D812                                  ; $5CDA: $21 $12 $D8
    ld [hl], $E2                                  ; $5CDD: $36 $E2
    inc hl                                        ; $5CDF: $23
    ld [hl], $65                                  ; $5CE0: $36 $65
    ld hl, $D854                                  ; $5CE2: $21 $54 $D8
    ld [hl], $00                                  ; $5CE5: $36 $00
    ld hl, $D840                                  ; $5CE7: $21 $40 $D8
    ld de, $651F                                  ; $5CEA: $11 $1F $65
    call Call_000_0F8E                            ; $5CED: $CD $8E $0F
    ld hl, $D840                                  ; $5CF0: $21 $40 $D8
    ld [hl], $80                                  ; $5CF3: $36 $80
    ld hl, $D842                                  ; $5CF5: $21 $42 $D8
    ld [hl], $17                                  ; $5CF8: $36 $17
    ld hl, $D84E                                  ; $5CFA: $21 $4E $D8
    ld [hl], $AA                                  ; $5CFD: $36 $AA
    ld a, [$D844]                                 ; $5CFF: $FA $44 $D8
    add $30                                       ; $5D02: $C6 $30
    ld [$D844], a                                 ; $5D04: $EA $44 $D8
    ld hl, $D852                                  ; $5D07: $21 $52 $D8
    ld [hl], $E2                                  ; $5D0A: $36 $E2
    inc hl                                        ; $5D0C: $23
    ld [hl], $65                                  ; $5D0D: $36 $65
    ld hl, $D854                                  ; $5D0F: $21 $54 $D8
    ld [hl], $04                                  ; $5D12: $36 $04
    ld hl, $D780                                  ; $5D14: $21 $80 $D7
    ld de, $651F                                  ; $5D17: $11 $1F $65
    call Call_000_0F8E                            ; $5D1A: $CD $8E $0F
    ld hl, $D782                                  ; $5D1D: $21 $82 $D7
    ld [hl], $06                                  ; $5D20: $36 $06
    ld hl, $D78E                                  ; $5D22: $21 $8E $D7
    ld [hl], $C0                                  ; $5D25: $36 $C0
    ld hl, $D784                                  ; $5D27: $21 $84 $D7
    ld [hl], $30                                  ; $5D2A: $36 $30
    ld hl, $D786                                  ; $5D2C: $21 $86 $D7
    ld [hl], $50                                  ; $5D2F: $36 $50
    ld hl, $D792                                  ; $5D31: $21 $92 $D7
    ld [hl], $3F                                  ; $5D34: $36 $3F
    inc hl                                        ; $5D36: $23
    ld [hl], $65                                  ; $5D37: $36 $65
    ld hl, $D79C                                  ; $5D39: $21 $9C $D7
    ld [hl], $06                                  ; $5D3C: $36 $06
    inc hl                                        ; $5D3E: $23
    ld [hl], $06                                  ; $5D3F: $36 $06
    ld hl, $D7A1                                  ; $5D41: $21 $A1 $D7
    ld [hl], $04                                  ; $5D44: $36 $04
    inc hl                                        ; $5D46: $23
    ld [hl], $2C                                  ; $5D47: $36 $2C
    inc hl                                        ; $5D49: $23
    ld [hl], $5E                                  ; $5D4A: $36 $5E
    ld hl, $D7C0                                  ; $5D4C: $21 $C0 $D7
    ld de, $651F                                  ; $5D4F: $11 $1F $65
    call Call_000_0F8E                            ; $5D52: $CD $8E $0F
    ld hl, $D7C2                                  ; $5D55: $21 $C2 $D7
    ld [hl], $16                                  ; $5D58: $36 $16
    ld hl, $D7CE                                  ; $5D5A: $21 $CE $D7
    ld [hl], $C0                                  ; $5D5D: $36 $C0
    ld hl, $D7C4                                  ; $5D5F: $21 $C4 $D7
    ld [hl], $80                                  ; $5D62: $36 $80
    ld hl, $D7C6                                  ; $5D64: $21 $C6 $D7
    ld [hl], $50                                  ; $5D67: $36 $50
    ld hl, $D7D2                                  ; $5D69: $21 $D2 $D7
    ld [hl], $3F                                  ; $5D6C: $36 $3F
    inc hl                                        ; $5D6E: $23
    ld [hl], $65                                  ; $5D6F: $36 $65
    ld hl, $D7DC                                  ; $5D71: $21 $DC $D7
    ld [hl], $06                                  ; $5D74: $36 $06
    inc hl                                        ; $5D76: $23
    ld [hl], $06                                  ; $5D77: $36 $06
    ld hl, $D7E1                                  ; $5D79: $21 $E1 $D7
    ld [hl], $04                                  ; $5D7C: $36 $04
    inc hl                                        ; $5D7E: $23
    ld [hl], $2C                                  ; $5D7F: $36 $2C
    inc hl                                        ; $5D81: $23
    ld [hl], $5E                                  ; $5D82: $36 $5E
    ld a, [$D706]                                 ; $5D84: $FA $06 $D7
    sub $10                                       ; $5D87: $D6 $10
    ld [$D706], a                                 ; $5D89: $EA $06 $D7
    ld a, [$D746]                                 ; $5D8C: $FA $46 $D7
    sub $10                                       ; $5D8F: $D6 $10
    ld [$D746], a                                 ; $5D91: $EA $46 $D7

Jump_004_5D94:
    ld hl, $D700                                  ; $5D94: $21 $00 $D7
    ld [hl], $80                                  ; $5D97: $36 $80
    ld a, [$C2C3]                                 ; $5D99: $FA $C3 $C2
    cp $01                                        ; $5D9C: $FE $01
    jp z, Jump_004_5DAC                           ; $5D9E: $CA $AC $5D

    ld hl, $D712                                  ; $5DA1: $21 $12 $D7
    ld [hl], $EC                                  ; $5DA4: $36 $EC
    inc hl                                        ; $5DA6: $23
    ld [hl], $65                                  ; $5DA7: $36 $65
    jp Jump_004_5DB4                              ; $5DA9: $C3 $B4 $5D


Jump_004_5DAC:
    ld hl, $D712                                  ; $5DAC: $21 $12 $D7
    ld [hl], $36                                  ; $5DAF: $36 $36
    inc hl                                        ; $5DB1: $23
    ld [hl], $66                                  ; $5DB2: $36 $66

Jump_004_5DB4:
    ld hl, $D714                                  ; $5DB4: $21 $14 $D7
    ld [hl], $00                                  ; $5DB7: $36 $00
    ld b, $78                                     ; $5DB9: $06 $78
    call Call_004_5E11                            ; $5DBB: $CD $11 $5E
    ld a, [$C2C6]                                 ; $5DBE: $FA $C6 $C2
    and $F0                                       ; $5DC1: $E6 $F0
    cp $20                                        ; $5DC3: $FE $20
    jr nz, jr_004_5DCE                            ; $5DC5: $20 $07

    ld hl, $D700                                  ; $5DC7: $21 $00 $D7
    ld [hl], $00                                  ; $5DCA: $36 $00
    jr jr_004_5DD6                                ; $5DCC: $18 $08

jr_004_5DCE:
    ld a, [$D706]                                 ; $5DCE: $FA $06 $D7
    sub $10                                       ; $5DD1: $D6 $10
    ld [$D706], a                                 ; $5DD3: $EA $06 $D7

jr_004_5DD6:
    ld a, $C1                                     ; $5DD6: $3E $C1
    call Call_000_1360                            ; $5DD8: $CD $60 $13
    ld hl, $C039                                  ; $5DDB: $21 $39 $C0
    res 5, [hl]                                   ; $5DDE: $CB $AE
    set 4, [hl]                                   ; $5DE0: $CB $E6
    ld hl, $D740                                  ; $5DE2: $21 $40 $D7
    ld [hl], $80                                  ; $5DE5: $36 $80
    ld hl, $D752                                  ; $5DE7: $21 $52 $D7
    ld [hl], $80                                  ; $5DEA: $36 $80
    inc hl                                        ; $5DEC: $23
    ld [hl], $66                                  ; $5DED: $36 $66
    ld hl, $D754                                  ; $5DEF: $21 $54 $D7
    ld [hl], $00                                  ; $5DF2: $36 $00
    ld b, $78                                     ; $5DF4: $06 $78
    call Call_004_5E11                            ; $5DF6: $CD $11 $5E
    ld a, $C5                                     ; $5DF9: $3E $C5
    call Call_000_1360                            ; $5DFB: $CD $60 $13
    ld hl, $C039                                  ; $5DFE: $21 $39 $C0
    res 4, [hl]                                   ; $5E01: $CB $A6
    ld hl, $D700                                  ; $5E03: $21 $00 $D7
    ld [hl], $00                                  ; $5E06: $36 $00
    ld hl, $D740                                  ; $5E08: $21 $40 $D7
    ld [hl], $00                                  ; $5E0B: $36 $00
    call Call_000_0417                            ; $5E0D: $CD $17 $04
    ret                                           ; $5E10: $C9


Call_004_5E11:
    push hl                                       ; $5E11: $E5

Jump_004_5E12:
    push bc                                       ; $5E12: $C5
    ld hl, $D700                                  ; $5E13: $21 $00 $D7
    call Call_000_0DD4                            ; $5E16: $CD $D4 $0D
    ld hl, $D740                                  ; $5E19: $21 $40 $D7
    call Call_000_0DD4                            ; $5E1C: $CD $D4 $0D
    call Call_000_248D                            ; $5E1F: $CD $8D $24
    call Call_000_0417                            ; $5E22: $CD $17 $04
    pop bc                                        ; $5E25: $C1
    dec b                                         ; $5E26: $05
    jp nz, Jump_004_5E12                          ; $5E27: $C2 $12 $5E

    pop hl                                        ; $5E2A: $E1
    ret                                           ; $5E2B: $C9


    ld hl, $0014                                  ; $5E2C: $21 $14 $00
    add hl, de                                    ; $5E2F: $19
    ld a, [hl]                                    ; $5E30: $7E
    cp $14                                        ; $5E31: $FE $14
    jr z, jr_004_5E39                             ; $5E33: $28 $04

jr_004_5E35:
    call Call_000_2E25                            ; $5E35: $CD $25 $2E
    ret                                           ; $5E38: $C9


jr_004_5E39:
    call Call_000_2CA9                            ; $5E39: $CD $A9 $2C
    jr nc, jr_004_5E35                            ; $5E3C: $30 $F7

    call Call_000_27F5                            ; $5E3E: $CD $F5 $27
    ret                                           ; $5E41: $C9


    ld hl, $C039                                  ; $5E42: $21 $39 $C0
    set 5, [hl]                                   ; $5E45: $CB $EE
    ld hl, $627F                                  ; $5E47: $21 $7F $62
    ld de, $8800                                  ; $5E4A: $11 $00 $88
    ld a, $2A                                     ; $5E4D: $3E $2A
    call Call_000_23A8                            ; $5E4F: $CD $A8 $23
    ld hl, $D700                                  ; $5E52: $21 $00 $D7
    ld de, $651F                                  ; $5E55: $11 $1F $65
    call Call_000_0F8E                            ; $5E58: $CD $8E $0F
    ld hl, $D740                                  ; $5E5B: $21 $40 $D7
    ld de, $651F                                  ; $5E5E: $11 $1F $65
    call Call_000_0F8E                            ; $5E61: $CD $8E $0F
    ld hl, $D780                                  ; $5E64: $21 $80 $D7
    ld de, $651F                                  ; $5E67: $11 $1F $65
    call Call_000_0F8E                            ; $5E6A: $CD $8E $0F
    ld a, [$C2C6]                                 ; $5E6D: $FA $C6 $C2
    and $F0                                       ; $5E70: $E6 $F0
    cp $20                                        ; $5E72: $FE $20
    jr nz, jr_004_5E8B                            ; $5E74: $20 $15

    ld hl, $D706                                  ; $5E76: $21 $06 $D7
    ld a, [hl]                                    ; $5E79: $7E
    sub $10                                       ; $5E7A: $D6 $10
    ld [hl], a                                    ; $5E7C: $77
    ld hl, $D746                                  ; $5E7D: $21 $46 $D7
    ld a, [hl]                                    ; $5E80: $7E
    sub $10                                       ; $5E81: $D6 $10
    ld [hl], a                                    ; $5E83: $77
    ld hl, $D786                                  ; $5E84: $21 $86 $D7
    ld a, [hl]                                    ; $5E87: $7E
    sub $10                                       ; $5E88: $D6 $10
    ld [hl], a                                    ; $5E8A: $77

jr_004_5E8B:
    ret                                           ; $5E8B: $C9


    ld hl, $D700                                  ; $5E8C: $21 $00 $D7
    call Call_000_0DD4                            ; $5E8F: $CD $D4 $0D
    ld hl, $D740                                  ; $5E92: $21 $40 $D7
    call Call_000_0DD4                            ; $5E95: $CD $D4 $0D
    ld hl, $D780                                  ; $5E98: $21 $80 $D7
    call Call_000_0DD4                            ; $5E9B: $CD $D4 $0D
    ret                                           ; $5E9E: $C9


    nop                                           ; $5E9F: $00
    nop                                           ; $5EA0: $00
    nop                                           ; $5EA1: $00
    nop                                           ; $5EA2: $00
    inc a                                         ; $5EA3: $3C
    nop                                           ; $5EA4: $00
    inc h                                         ; $5EA5: $24
    jr jr_004_5ECC                                ; $5EA6: $18 $24

    jr jr_004_5ECE                                ; $5EA8: $18 $24

    jr jr_004_5ED0                                ; $5EAA: $18 $24

    jr jr_004_5ED2                                ; $5EAC: $18 $24

    jr jr_004_5EEC                                ; $5EAE: $18 $3C

    jr jr_004_5EEE                                ; $5EB0: $18 $3C

    jr jr_004_5EF0                                ; $5EB2: $18 $3C

    nop                                           ; $5EB4: $00
    inc a                                         ; $5EB5: $3C
    jr jr_004_5EF4                                ; $5EB6: $18 $3C

    jr jr_004_5EF6                                ; $5EB8: $18 $3C

    nop                                           ; $5EBA: $00
    nop                                           ; $5EBB: $00
    nop                                           ; $5EBC: $00
    nop                                           ; $5EBD: $00
    nop                                           ; $5EBE: $00
    nop                                           ; $5EBF: $00
    nop                                           ; $5EC0: $00
    nop                                           ; $5EC1: $00
    nop                                           ; $5EC2: $00
    ld a, [hl]                                    ; $5EC3: $7E
    nop                                           ; $5EC4: $00
    jp $813C                                      ; $5EC5: $C3 $3C $81


    ld a, [hl]                                    ; $5EC8: $7E
    sbc c                                         ; $5EC9: $99
    ld h, [hl]                                    ; $5ECA: $66
    sbc c                                         ; $5ECB: $99

jr_004_5ECC:
    ld h, [hl]                                    ; $5ECC: $66
    sbc c                                         ; $5ECD: $99

jr_004_5ECE:
    ld h, [hl]                                    ; $5ECE: $66
    rst RST_38                                    ; $5ECF: $FF

jr_004_5ED0:
    ld a, [hl]                                    ; $5ED0: $7E
    rst RST_38                                    ; $5ED1: $FF

jr_004_5ED2:
    ld a, [hl]                                    ; $5ED2: $7E
    rst RST_38                                    ; $5ED3: $FF
    ld h, [hl]                                    ; $5ED4: $66
    rst RST_38                                    ; $5ED5: $FF
    ld h, [hl]                                    ; $5ED6: $66
    rst RST_38                                    ; $5ED7: $FF
    ld h, [hl]                                    ; $5ED8: $66
    rst RST_38                                    ; $5ED9: $FF
    nop                                           ; $5EDA: $00
    nop                                           ; $5EDB: $00
    nop                                           ; $5EDC: $00
    nop                                           ; $5EDD: $00
    nop                                           ; $5EDE: $00
    nop                                           ; $5EDF: $00
    nop                                           ; $5EE0: $00
    nop                                           ; $5EE1: $00
    nop                                           ; $5EE2: $00
    cp $00                                        ; $5EE3: $FE $00
    add e                                         ; $5EE5: $83
    ld a, h                                       ; $5EE6: $7C
    add c                                         ; $5EE7: $81
    ld a, [hl]                                    ; $5EE8: $7E
    sbc c                                         ; $5EE9: $99
    ld h, [hl]                                    ; $5EEA: $66
    sbc c                                         ; $5EEB: $99

jr_004_5EEC:
    ld h, [hl]                                    ; $5EEC: $66
    sbc c                                         ; $5EED: $99

jr_004_5EEE:
    ld h, [hl]                                    ; $5EEE: $66
    rst RST_38                                    ; $5EEF: $FF

jr_004_5EF0:
    ld h, [hl]                                    ; $5EF0: $66
    rst RST_38                                    ; $5EF1: $FF
    ld h, [hl]                                    ; $5EF2: $66
    rst RST_38                                    ; $5EF3: $FF

jr_004_5EF4:
    ld h, [hl]                                    ; $5EF4: $66
    rst RST_38                                    ; $5EF5: $FF

jr_004_5EF6:
    ld a, [hl]                                    ; $5EF6: $7E
    rst RST_38                                    ; $5EF7: $FF
    ld a, h                                       ; $5EF8: $7C
    cp $00                                        ; $5EF9: $FE $00
    nop                                           ; $5EFB: $00
    nop                                           ; $5EFC: $00
    nop                                           ; $5EFD: $00
    nop                                           ; $5EFE: $00
    nop                                           ; $5EFF: $00
    nop                                           ; $5F00: $00
    nop                                           ; $5F01: $00
    nop                                           ; $5F02: $00
    rst RST_38                                    ; $5F03: $FF
    nop                                           ; $5F04: $00
    add c                                         ; $5F05: $81
    ld a, [hl]                                    ; $5F06: $7E
    add c                                         ; $5F07: $81
    ld a, [hl]                                    ; $5F08: $7E
    sbc a                                         ; $5F09: $9F
    ld h, b                                       ; $5F0A: $60
    sbc [hl]                                      ; $5F0B: $9E
    ld h, b                                       ; $5F0C: $60
    add d                                         ; $5F0D: $82
    ld a, h                                       ; $5F0E: $7C
    cp $7C                                        ; $5F0F: $FE $7C
    cp $60                                        ; $5F11: $FE $60
    rst RST_38                                    ; $5F13: $FF
    ld h, b                                       ; $5F14: $60
    rst RST_38                                    ; $5F15: $FF
    ld a, [hl]                                    ; $5F16: $7E
    rst RST_38                                    ; $5F17: $FF
    ld a, [hl]                                    ; $5F18: $7E
    rst RST_38                                    ; $5F19: $FF
    nop                                           ; $5F1A: $00
    nop                                           ; $5F1B: $00
    nop                                           ; $5F1C: $00
    nop                                           ; $5F1D: $00
    nop                                           ; $5F1E: $00
    nop                                           ; $5F1F: $00
    nop                                           ; $5F20: $00
    nop                                           ; $5F21: $00
    nop                                           ; $5F22: $00
    rst RST_38                                    ; $5F23: $FF
    nop                                           ; $5F24: $00
    add c                                         ; $5F25: $81
    ld a, [hl]                                    ; $5F26: $7E
    add c                                         ; $5F27: $81
    ld a, [hl]                                    ; $5F28: $7E
    sbc a                                         ; $5F29: $9F
    ld h, b                                       ; $5F2A: $60
    sbc [hl]                                      ; $5F2B: $9E
    ld h, b                                       ; $5F2C: $60
    add d                                         ; $5F2D: $82
    ld a, h                                       ; $5F2E: $7C
    cp $7C                                        ; $5F2F: $FE $7C
    cp $60                                        ; $5F31: $FE $60
    ldh a, [$FF60]                                ; $5F33: $F0 $60
    ldh a, [$FF60]                                ; $5F35: $F0 $60
    ldh a, [$FF60]                                ; $5F37: $F0 $60
    ldh a, [rP1]                                  ; $5F39: $F0 $00
    nop                                           ; $5F3B: $00
    nop                                           ; $5F3C: $00
    nop                                           ; $5F3D: $00
    nop                                           ; $5F3E: $00
    nop                                           ; $5F3F: $00
    nop                                           ; $5F40: $00
    nop                                           ; $5F41: $00
    nop                                           ; $5F42: $00
    ld a, [hl]                                    ; $5F43: $7E
    nop                                           ; $5F44: $00
    jp $813C                                      ; $5F45: $C3 $3C $81


    ld a, [hl]                                    ; $5F48: $7E
    sbc c                                         ; $5F49: $99
    ld h, [hl]                                    ; $5F4A: $66
    sbc a                                         ; $5F4B: $9F
    ld h, b                                       ; $5F4C: $60
    sub c                                         ; $5F4D: $91
    ld l, [hl]                                    ; $5F4E: $6E
    rst RST_38                                    ; $5F4F: $FF
    ld l, [hl]                                    ; $5F50: $6E
    rst RST_38                                    ; $5F51: $FF
    ld h, [hl]                                    ; $5F52: $66
    rst RST_38                                    ; $5F53: $FF
    ld h, [hl]                                    ; $5F54: $66
    rst RST_38                                    ; $5F55: $FF
    ld a, [hl]                                    ; $5F56: $7E
    rst RST_38                                    ; $5F57: $FF
    ld a, $7F                                     ; $5F58: $3E $7F
    nop                                           ; $5F5A: $00
    nop                                           ; $5F5B: $00
    nop                                           ; $5F5C: $00
    nop                                           ; $5F5D: $00
    nop                                           ; $5F5E: $00
    nop                                           ; $5F5F: $00
    nop                                           ; $5F60: $00
    nop                                           ; $5F61: $00
    nop                                           ; $5F62: $00
    inc a                                         ; $5F63: $3C
    nop                                           ; $5F64: $00
    inc h                                         ; $5F65: $24
    jr jr_004_5F8C                                ; $5F66: $18 $24

    jr jr_004_5F8E                                ; $5F68: $18 $24

    jr @+$26                                      ; $5F6A: $18 $24

    jr @+$26                                      ; $5F6C: $18 $24

    jr jr_004_5FAC                                ; $5F6E: $18 $3C

    jr jr_004_5FAE                                ; $5F70: $18 $3C

    jr jr_004_5FB0                                ; $5F72: $18 $3C

    jr jr_004_5FB2                                ; $5F74: $18 $3C

    jr jr_004_5FB4                                ; $5F76: $18 $3C

    jr jr_004_5FB6                                ; $5F78: $18 $3C

    nop                                           ; $5F7A: $00
    nop                                           ; $5F7B: $00
    nop                                           ; $5F7C: $00
    nop                                           ; $5F7D: $00
    nop                                           ; $5F7E: $00
    nop                                           ; $5F7F: $00
    nop                                           ; $5F80: $00
    nop                                           ; $5F81: $00
    nop                                           ; $5F82: $00
    ldh a, [rP1]                                  ; $5F83: $F0 $00
    sub b                                         ; $5F85: $90
    ld h, b                                       ; $5F86: $60
    sub b                                         ; $5F87: $90
    ld h, b                                       ; $5F88: $60
    sub b                                         ; $5F89: $90
    ld h, b                                       ; $5F8A: $60
    sub b                                         ; $5F8B: $90

jr_004_5F8C:
    ld h, b                                       ; $5F8C: $60
    sub b                                         ; $5F8D: $90

jr_004_5F8E:
    ld h, b                                       ; $5F8E: $60
    ldh a, [$FF60]                                ; $5F8F: $F0 $60
    ldh a, [$FF60]                                ; $5F91: $F0 $60
    rst RST_38                                    ; $5F93: $FF
    ld h, b                                       ; $5F94: $60
    rst RST_38                                    ; $5F95: $FF
    ld a, [hl]                                    ; $5F96: $7E
    rst RST_38                                    ; $5F97: $FF
    ld a, [hl]                                    ; $5F98: $7E
    rst RST_38                                    ; $5F99: $FF
    nop                                           ; $5F9A: $00
    nop                                           ; $5F9B: $00
    nop                                           ; $5F9C: $00
    nop                                           ; $5F9D: $00
    nop                                           ; $5F9E: $00
    nop                                           ; $5F9F: $00
    nop                                           ; $5FA0: $00
    nop                                           ; $5FA1: $00
    nop                                           ; $5FA2: $00
    rst RST_38                                    ; $5FA3: $FF
    nop                                           ; $5FA4: $00
    sbc c                                         ; $5FA5: $99
    ld h, [hl]                                    ; $5FA6: $66
    adc c                                         ; $5FA7: $89
    halt                                          ; $5FA8: $76
    add c                                         ; $5FA9: $81
    ld a, [hl]                                    ; $5FAA: $7E
    sub c                                         ; $5FAB: $91

jr_004_5FAC:
    ld l, [hl]                                    ; $5FAC: $6E
    sbc c                                         ; $5FAD: $99

jr_004_5FAE:
    ld h, [hl]                                    ; $5FAE: $66
    rst RST_38                                    ; $5FAF: $FF

jr_004_5FB0:
    ld h, [hl]                                    ; $5FB0: $66
    rst RST_38                                    ; $5FB1: $FF

jr_004_5FB2:
    ld h, [hl]                                    ; $5FB2: $66
    rst RST_38                                    ; $5FB3: $FF

jr_004_5FB4:
    ld h, [hl]                                    ; $5FB4: $66
    rst RST_38                                    ; $5FB5: $FF

jr_004_5FB6:
    ld h, [hl]                                    ; $5FB6: $66
    rst RST_38                                    ; $5FB7: $FF
    ld h, [hl]                                    ; $5FB8: $66
    rst RST_38                                    ; $5FB9: $FF
    nop                                           ; $5FBA: $00
    nop                                           ; $5FBB: $00
    nop                                           ; $5FBC: $00
    nop                                           ; $5FBD: $00
    nop                                           ; $5FBE: $00
    nop                                           ; $5FBF: $00
    nop                                           ; $5FC0: $00
    nop                                           ; $5FC1: $00
    nop                                           ; $5FC2: $00
    ld a, [hl]                                    ; $5FC3: $7E
    nop                                           ; $5FC4: $00
    jp $813C                                      ; $5FC5: $C3 $3C $81


    ld a, [hl]                                    ; $5FC8: $7E
    sbc c                                         ; $5FC9: $99
    ld h, [hl]                                    ; $5FCA: $66
    sbc c                                         ; $5FCB: $99
    ld h, [hl]                                    ; $5FCC: $66
    sbc c                                         ; $5FCD: $99
    ld h, [hl]                                    ; $5FCE: $66
    rst RST_38                                    ; $5FCF: $FF
    ld h, [hl]                                    ; $5FD0: $66
    rst RST_38                                    ; $5FD1: $FF
    ld h, [hl]                                    ; $5FD2: $66
    rst RST_38                                    ; $5FD3: $FF
    ld h, [hl]                                    ; $5FD4: $66
    rst RST_38                                    ; $5FD5: $FF
    ld a, [hl]                                    ; $5FD6: $7E
    rst RST_38                                    ; $5FD7: $FF
    inc a                                         ; $5FD8: $3C
    ld a, [hl]                                    ; $5FD9: $7E
    nop                                           ; $5FDA: $00
    nop                                           ; $5FDB: $00
    nop                                           ; $5FDC: $00
    nop                                           ; $5FDD: $00
    nop                                           ; $5FDE: $00
    nop                                           ; $5FDF: $00
    nop                                           ; $5FE0: $00
    nop                                           ; $5FE1: $00
    nop                                           ; $5FE2: $00
    cp $00                                        ; $5FE3: $FE $00
    add e                                         ; $5FE5: $83
    ld a, h                                       ; $5FE6: $7C
    add c                                         ; $5FE7: $81
    ld a, [hl]                                    ; $5FE8: $7E
    sbc c                                         ; $5FE9: $99
    ld h, [hl]                                    ; $5FEA: $66
    sbc c                                         ; $5FEB: $99
    ld h, [hl]                                    ; $5FEC: $66
    add e                                         ; $5FED: $83
    ld a, h                                       ; $5FEE: $7C
    rst RST_38                                    ; $5FEF: $FF
    ld a, h                                       ; $5FF0: $7C
    rst RST_38                                    ; $5FF1: $FF
    ld h, [hl]                                    ; $5FF2: $66
    rst RST_38                                    ; $5FF3: $FF
    ld h, [hl]                                    ; $5FF4: $66
    rst RST_38                                    ; $5FF5: $FF
    ld h, [hl]                                    ; $5FF6: $66
    rst RST_38                                    ; $5FF7: $FF
    ld h, [hl]                                    ; $5FF8: $66
    rst RST_38                                    ; $5FF9: $FF
    nop                                           ; $5FFA: $00
    nop                                           ; $5FFB: $00
    nop                                           ; $5FFC: $00
    nop                                           ; $5FFD: $00
    nop                                           ; $5FFE: $00
    nop                                           ; $5FFF: $00
    nop                                           ; $6000: $00
    nop                                           ; $6001: $00
    nop                                           ; $6002: $00
    rst RST_38                                    ; $6003: $FF
    nop                                           ; $6004: $00
    sbc c                                         ; $6005: $99
    ld h, [hl]                                    ; $6006: $66
    sbc c                                         ; $6007: $99
    ld h, [hl]                                    ; $6008: $66

Jump_004_6009:
    sbc c                                         ; $6009: $99

Jump_004_600A:
    ld h, [hl]                                    ; $600A: $66
    sbc c                                         ; $600B: $99
    ld h, [hl]                                    ; $600C: $66
    sbc c                                         ; $600D: $99
    ld h, [hl]                                    ; $600E: $66
    rst RST_38                                    ; $600F: $FF
    ld h, [hl]                                    ; $6010: $66
    rst RST_38                                    ; $6011: $FF
    ld h, [hl]                                    ; $6012: $66
    rst RST_38                                    ; $6013: $FF
    ld h, [hl]                                    ; $6014: $66
    rst RST_38                                    ; $6015: $FF
    ld a, [hl]                                    ; $6016: $7E
    rst RST_38                                    ; $6017: $FF
    inc a                                         ; $6018: $3C
    ld a, [hl]                                    ; $6019: $7E
    nop                                           ; $601A: $00
    nop                                           ; $601B: $00
    nop                                           ; $601C: $00
    nop                                           ; $601D: $00
    nop                                           ; $601E: $00
    nop                                           ; $601F: $00
    nop                                           ; $6020: $00
    nop                                           ; $6021: $00
    nop                                           ; $6022: $00
    rst RST_38                                    ; $6023: $FF
    nop                                           ; $6024: $00
    sbc c                                         ; $6025: $99
    ld h, [hl]                                    ; $6026: $66
    sbc c                                         ; $6027: $99
    ld h, [hl]                                    ; $6028: $66
    sbc c                                         ; $6029: $99
    ld h, [hl]                                    ; $602A: $66
    sbc c                                         ; $602B: $99
    ld h, [hl]                                    ; $602C: $66
    add c                                         ; $602D: $81
    ld a, [hl]                                    ; $602E: $7E
    rst RST_38                                    ; $602F: $FF
    inc a                                         ; $6030: $3C
    ld a, [hl]                                    ; $6031: $7E
    jr jr_004_6070                                ; $6032: $18 $3C

    jr jr_004_6072                                ; $6034: $18 $3C

    jr jr_004_6074                                ; $6036: $18 $3C

    jr jr_004_6076                                ; $6038: $18 $3C

    nop                                           ; $603A: $00
    nop                                           ; $603B: $00
    nop                                           ; $603C: $00
    nop                                           ; $603D: $00
    nop                                           ; $603E: $00
    nop                                           ; $603F: $00
    nop                                           ; $6040: $00
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
    nop                                           ; $6060: $00
    nop                                           ; $6061: $00
    nop                                           ; $6062: $00
    ld a, [hl]                                    ; $6063: $7E
    nop                                           ; $6064: $00
    jp $813C                                      ; $6065: $C3 $3C $81


    ld a, [hl]                                    ; $6068: $7E
    sbc c                                         ; $6069: $99
    ld h, [hl]                                    ; $606A: $66
    sbc c                                         ; $606B: $99
    ld h, [hl]                                    ; $606C: $66
    sbc c                                         ; $606D: $99
    ld h, [hl]                                    ; $606E: $66
    rst RST_38                                    ; $606F: $FF

jr_004_6070:
    ld h, [hl]                                    ; $6070: $66
    rst RST_38                                    ; $6071: $FF

jr_004_6072:
    ld h, [hl]                                    ; $6072: $66
    rst RST_38                                    ; $6073: $FF

jr_004_6074:
    ld h, [hl]                                    ; $6074: $66
    rst RST_38                                    ; $6075: $FF

jr_004_6076:
    ld a, [hl]                                    ; $6076: $7E
    rst RST_38                                    ; $6077: $FF
    inc a                                         ; $6078: $3C
    ld a, [hl]                                    ; $6079: $7E
    nop                                           ; $607A: $00
    nop                                           ; $607B: $00

Jump_004_607C:
    nop                                           ; $607C: $00
    nop                                           ; $607D: $00
    nop                                           ; $607E: $00
    nop                                           ; $607F: $00
    nop                                           ; $6080: $00
    nop                                           ; $6081: $00
    nop                                           ; $6082: $00
    inc a                                         ; $6083: $3C
    nop                                           ; $6084: $00
    ld h, h                                       ; $6085: $64
    jr jr_004_60CC                                ; $6086: $18 $44

    jr c, jr_004_60CE                             ; $6088: $38 $44

    jr c, jr_004_60F0                             ; $608A: $38 $64

    jr jr_004_60B2                                ; $608C: $18 $24

    jr jr_004_60CC                                ; $608E: $18 $3C

    jr jr_004_60CE                                ; $6090: $18 $3C

    jr jr_004_60D0                                ; $6092: $18 $3C

    jr jr_004_60D2                                ; $6094: $18 $3C

    jr jr_004_60D4                                ; $6096: $18 $3C

    jr jr_004_60D6                                ; $6098: $18 $3C

    nop                                           ; $609A: $00
    nop                                           ; $609B: $00
    nop                                           ; $609C: $00
    nop                                           ; $609D: $00
    nop                                           ; $609E: $00
    nop                                           ; $609F: $00
    nop                                           ; $60A0: $00
    nop                                           ; $60A1: $00
    nop                                           ; $60A2: $00
    ld a, [hl]                                    ; $60A3: $7E
    nop                                           ; $60A4: $00
    jp $813C                                      ; $60A5: $C3 $3C $81


    ld a, [hl]                                    ; $60A8: $7E
    sbc c                                         ; $60A9: $99
    ld h, [hl]                                    ; $60AA: $66
    ld sp, hl                                     ; $60AB: $F9
    ld b, $33                                     ; $60AC: $06 $33

jr_004_60AE:
    inc c                                         ; $60AE: $0C
    ld a, [hl]                                    ; $60AF: $7E
    jr jr_004_60AE                                ; $60B0: $18 $FC

jr_004_60B2:
    jr nc, @+$01                                  ; $60B2: $30 $FF

    ld h, b                                       ; $60B4: $60
    rst RST_38                                    ; $60B5: $FF
    ld a, [hl]                                    ; $60B6: $7E
    rst RST_38                                    ; $60B7: $FF
    ld a, [hl]                                    ; $60B8: $7E
    rst RST_38                                    ; $60B9: $FF
    nop                                           ; $60BA: $00
    nop                                           ; $60BB: $00
    nop                                           ; $60BC: $00
    nop                                           ; $60BD: $00
    nop                                           ; $60BE: $00
    nop                                           ; $60BF: $00
    nop                                           ; $60C0: $00
    nop                                           ; $60C1: $00
    nop                                           ; $60C2: $00
    ld a, [hl]                                    ; $60C3: $7E
    nop                                           ; $60C4: $00
    jp $813C                                      ; $60C5: $C3 $3C $81


    ld a, [hl]                                    ; $60C8: $7E
    sbc c                                         ; $60C9: $99
    ld h, [hl]                                    ; $60CA: $66
    ld sp, hl                                     ; $60CB: $F9

jr_004_60CC:
    ld b, $23                                     ; $60CC: $06 $23

jr_004_60CE:
    inc e                                         ; $60CE: $1C
    ccf                                           ; $60CF: $3F

jr_004_60D0:
    inc e                                         ; $60D0: $1C
    rst RST_38                                    ; $60D1: $FF

jr_004_60D2:
    ld b, $FF                                     ; $60D2: $06 $FF

jr_004_60D4:
    ld h, [hl]                                    ; $60D4: $66
    rst RST_38                                    ; $60D5: $FF

jr_004_60D6:
    ld a, [hl]                                    ; $60D6: $7E
    rst RST_38                                    ; $60D7: $FF
    inc a                                         ; $60D8: $3C
    ld a, [hl]                                    ; $60D9: $7E
    nop                                           ; $60DA: $00
    nop                                           ; $60DB: $00
    nop                                           ; $60DC: $00
    nop                                           ; $60DD: $00
    nop                                           ; $60DE: $00
    nop                                           ; $60DF: $00
    nop                                           ; $60E0: $00
    nop                                           ; $60E1: $00
    nop                                           ; $60E2: $00
    ldh a, [rP1]                                  ; $60E3: $F0 $00
    sub b                                         ; $60E5: $90
    ld h, b                                       ; $60E6: $60
    sbc [hl]                                      ; $60E7: $9E
    ld h, b                                       ; $60E8: $60
    sub d                                         ; $60E9: $92
    ld l, h                                       ; $60EA: $6C
    sub d                                         ; $60EB: $92
    ld l, h                                       ; $60EC: $6C
    sub d                                         ; $60ED: $92
    ld l, h                                       ; $60EE: $6C
    rst RST_38                                    ; $60EF: $FF

jr_004_60F0:
    ld l, h                                       ; $60F0: $6C
    rst RST_38                                    ; $60F1: $FF
    ld a, [hl]                                    ; $60F2: $7E
    rst RST_38                                    ; $60F3: $FF
    ld a, [hl]                                    ; $60F4: $7E
    rst RST_38                                    ; $60F5: $FF
    inc c                                         ; $60F6: $0C
    ld e, $0C                                     ; $60F7: $1E $0C
    ld e, $00                                     ; $60F9: $1E $00
    nop                                           ; $60FB: $00
    nop                                           ; $60FC: $00
    nop                                           ; $60FD: $00
    nop                                           ; $60FE: $00
    nop                                           ; $60FF: $00
    nop                                           ; $6100: $00
    nop                                           ; $6101: $00
    nop                                           ; $6102: $00

Jump_004_6103:
    rst RST_38                                    ; $6103: $FF
    nop                                           ; $6104: $00
    add c                                         ; $6105: $81
    ld a, [hl]                                    ; $6106: $7E
    add c                                         ; $6107: $81
    ld a, [hl]                                    ; $6108: $7E
    sbc a                                         ; $6109: $9F
    ld h, b                                       ; $610A: $60
    sbc [hl]                                      ; $610B: $9E
    ld h, b                                       ; $610C: $60
    add e                                         ; $610D: $83
    ld a, h                                       ; $610E: $7C
    rst RST_38                                    ; $610F: $FF
    ld a, [hl]                                    ; $6110: $7E
    rst RST_38                                    ; $6111: $FF
    ld b, $FF                                     ; $6112: $06 $FF
    ld b, $FF                                     ; $6114: $06 $FF
    ld a, [hl]                                    ; $6116: $7E
    rst RST_38                                    ; $6117: $FF
    ld a, h                                       ; $6118: $7C
    cp $00                                        ; $6119: $FE $00
    nop                                           ; $611B: $00
    nop                                           ; $611C: $00
    nop                                           ; $611D: $00
    nop                                           ; $611E: $00
    nop                                           ; $611F: $00
    nop                                           ; $6120: $00
    nop                                           ; $6121: $00
    nop                                           ; $6122: $00
    ld a, [hl]                                    ; $6123: $7E
    nop                                           ; $6124: $00
    jp $813C                                      ; $6125: $C3 $3C $81


    ld a, [hl]                                    ; $6128: $7E
    sbc c                                         ; $6129: $99
    ld h, [hl]                                    ; $612A: $66
    sbc a                                         ; $612B: $9F
    ld h, b                                       ; $612C: $60
    add e                                         ; $612D: $83
    ld a, h                                       ; $612E: $7C
    rst RST_38                                    ; $612F: $FF
    ld a, [hl]                                    ; $6130: $7E
    rst RST_38                                    ; $6131: $FF
    ld h, [hl]                                    ; $6132: $66
    rst RST_38                                    ; $6133: $FF
    ld h, [hl]                                    ; $6134: $66
    rst RST_38                                    ; $6135: $FF
    ld a, [hl]                                    ; $6136: $7E
    rst RST_38                                    ; $6137: $FF
    inc a                                         ; $6138: $3C
    rst RST_38                                    ; $6139: $FF
    nop                                           ; $613A: $00
    nop                                           ; $613B: $00

Jump_004_613C:
    nop                                           ; $613C: $00
    nop                                           ; $613D: $00
    nop                                           ; $613E: $00
    nop                                           ; $613F: $00
    nop                                           ; $6140: $00
    nop                                           ; $6141: $00
    nop                                           ; $6142: $00
    rst RST_38                                    ; $6143: $FF
    nop                                           ; $6144: $00
    add c                                         ; $6145: $81
    ld a, [hl]                                    ; $6146: $7E
    add c                                         ; $6147: $81
    ld a, [hl]                                    ; $6148: $7E
    sbc c                                         ; $6149: $99
    ld h, [hl]                                    ; $614A: $66
    ld sp, hl                                     ; $614B: $F9
    ld b, $33                                     ; $614C: $06 $33
    inc c                                         ; $614E: $0C
    ld a, $18                                     ; $614F: $3E $18
    inc a                                         ; $6151: $3C
    jr jr_004_6190                                ; $6152: $18 $3C

    jr jr_004_6192                                ; $6154: $18 $3C

    jr jr_004_6194                                ; $6156: $18 $3C

    jr jr_004_6196                                ; $6158: $18 $3C

    nop                                           ; $615A: $00
    nop                                           ; $615B: $00
    nop                                           ; $615C: $00
    nop                                           ; $615D: $00
    nop                                           ; $615E: $00
    nop                                           ; $615F: $00
    nop                                           ; $6160: $00
    nop                                           ; $6161: $00
    nop                                           ; $6162: $00
    ld a, [hl]                                    ; $6163: $7E
    nop                                           ; $6164: $00
    jp $813C                                      ; $6165: $C3 $3C $81


    ld a, [hl]                                    ; $6168: $7E
    sbc c                                         ; $6169: $99
    ld h, [hl]                                    ; $616A: $66
    sbc c                                         ; $616B: $99
    ld h, [hl]                                    ; $616C: $66
    jp $FF3C                                      ; $616D: $C3 $3C $FF


    inc a                                         ; $6170: $3C
    rst RST_38                                    ; $6171: $FF
    ld h, [hl]                                    ; $6172: $66
    rst RST_38                                    ; $6173: $FF
    ld h, [hl]                                    ; $6174: $66
    rst RST_38                                    ; $6175: $FF
    ld a, [hl]                                    ; $6176: $7E
    rst RST_38                                    ; $6177: $FF
    inc a                                         ; $6178: $3C
    ld a, [hl]                                    ; $6179: $7E
    nop                                           ; $617A: $00
    nop                                           ; $617B: $00
    nop                                           ; $617C: $00
    nop                                           ; $617D: $00
    nop                                           ; $617E: $00
    nop                                           ; $617F: $00
    nop                                           ; $6180: $00
    nop                                           ; $6181: $00
    nop                                           ; $6182: $00
    ld a, [hl]                                    ; $6183: $7E
    nop                                           ; $6184: $00
    jp $813C                                      ; $6185: $C3 $3C $81


    ld a, [hl]                                    ; $6188: $7E
    sbc c                                         ; $6189: $99
    ld h, [hl]                                    ; $618A: $66
    sbc c                                         ; $618B: $99
    ld h, [hl]                                    ; $618C: $66
    add c                                         ; $618D: $81
    ld a, [hl]                                    ; $618E: $7E
    rst RST_38                                    ; $618F: $FF

jr_004_6190:
    ld a, $FF                                     ; $6190: $3E $FF

jr_004_6192:
    ld b, $FF                                     ; $6192: $06 $FF

jr_004_6194:
    ld h, [hl]                                    ; $6194: $66
    rst RST_38                                    ; $6195: $FF

jr_004_6196:
    ld a, [hl]                                    ; $6196: $7E
    rst RST_38                                    ; $6197: $FF
    inc a                                         ; $6198: $3C
    ld a, [hl]                                    ; $6199: $7E
    nop                                           ; $619A: $00
    nop                                           ; $619B: $00
    nop                                           ; $619C: $00
    nop                                           ; $619D: $00
    nop                                           ; $619E: $00
    ld h, [hl]                                    ; $619F: $66
    nop                                           ; $61A0: $00
    sbc c                                         ; $61A1: $99
    ld h, [hl]                                    ; $61A2: $66
    sbc c                                         ; $61A3: $99
    ld h, [hl]                                    ; $61A4: $66
    ld d, l                                       ; $61A5: $55
    ld [hl+], a                                   ; $61A6: $22
    xor d                                         ; $61A7: $AA
    ld b, h                                       ; $61A8: $44
    ld b, h                                       ; $61A9: $44
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
    nop                                           ; $61C0: $00
    rrca                                          ; $61C1: $0F
    db $10                                        ; $61C2: $10
    rla                                           ; $61C3: $17
    rrca                                          ; $61C4: $0F
    inc [hl]                                      ; $61C5: $34
    rra                                           ; $61C6: $1F
    nop                                           ; $61C7: $00
    ld a, a                                       ; $61C8: $7F
    ld [hl], b                                    ; $61C9: $70
    ccf                                           ; $61CA: $3F
    db $E3                                        ; $61CB: $E3
    ld a, h                                       ; $61CC: $7C
    rst RST_28                                    ; $61CD: $EF
    ld [hl], e                                    ; $61CE: $73
    call c, $F06F                                 ; $61CF: $DC $6F $F0
    ld e, a                                       ; $61D2: $5F
    ld [hl], b                                    ; $61D3: $70
    rra                                           ; $61D4: $1F
    nop                                           ; $61D5: $00
    ccf                                           ; $61D6: $3F
    jr c, jr_004_61F8                             ; $61D7: $38 $1F

    ld a, h                                       ; $61D9: $7C
    cpl                                           ; $61DA: $2F
    ld a, l                                       ; $61DB: $7D
    scf                                           ; $61DC: $37
    dec a                                         ; $61DD: $3D
    ld [bc], a                                    ; $61DE: $02
    rst RST_08                                    ; $61DF: $CF
    ld [hl], e                                    ; $61E0: $73
    jp Jump_004_607C                              ; $61E1: $C3 $7C $60


    ccf                                           ; $61E4: $3F
    ld h, b                                       ; $61E5: $60
    ccf                                           ; $61E6: $3F
    scf                                           ; $61E7: $37
    ld e, $17                                     ; $61E8: $1E $17
    add hl, bc                                    ; $61EA: $09
    ld bc, $0000                                  ; $61EB: $01 $00 $00
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

jr_004_61F8:
    nop                                           ; $61F8: $00
    nop                                           ; $61F9: $00
    nop                                           ; $61FA: $00
    nop                                           ; $61FB: $00
    nop                                           ; $61FC: $00
    nop                                           ; $61FD: $00
    nop                                           ; $61FE: $00
    dec sp                                        ; $61FF: $3B
    or $0F                                        ; $6200: $F6 $0F
    ld a, [$FD0F]                                 ; $6202: $FA $0F $FD
    ld b, $FB                                     ; $6205: $06 $FB
    inc b                                         ; $6207: $04
    rst RST_38                                    ; $6208: $FF
    nop                                           ; $6209: $00
    rst RST_38                                    ; $620A: $FF
    inc bc                                        ; $620B: $03
    db $FC                                        ; $620C: $FC
    rrca                                          ; $620D: $0F
    di                                            ; $620E: $F3
    call c, $F86F                                 ; $620F: $DC $6F $F8
    ld e, a                                       ; $6212: $5F
    ldh a, [$FF1F]                                ; $6213: $F0 $1F
    ld hl, sp-$71                                 ; $6215: $F8 $8F
    ld hl, sp+$0F                                 ; $6217: $F8 $0F
    db $FC                                        ; $6219: $FC
    rrca                                          ; $621A: $0F
    rst RST_38                                    ; $621B: $FF
    inc bc                                        ; $621C: $03
    ld h, e                                       ; $621D: $63
    nop                                           ; $621E: $00
    inc b                                         ; $621F: $04
    nop                                           ; $6220: $00
    dec bc                                        ; $6221: $0B
    nop                                           ; $6222: $00
    rra                                           ; $6223: $1F
    nop                                           ; $6224: $00
    ccf                                           ; $6225: $3F
    rrca                                          ; $6226: $0F
    or b                                          ; $6227: $B0
    rrca                                          ; $6228: $0F
    ldh a, [rNR23]                                ; $6229: $F0 $18
    ld b, d                                       ; $622B: $42
    nop                                           ; $622C: $00
    daa                                           ; $622D: $27
    jr nz, @+$61                                  ; $622E: $20 $5F

    inc bc                                        ; $6230: $03
    inc a                                         ; $6231: $3C
    rrca                                          ; $6232: $0F
    inc sp                                        ; $6233: $33
    rra                                           ; $6234: $1F
    ld h, b                                       ; $6235: $60
    jr z, jr_004_6258                             ; $6236: $28 $20

    nop                                           ; $6238: $00
    inc b                                         ; $6239: $04
    nop                                           ; $623A: $00
    ld c, $04                                     ; $623B: $0E $04
    ld b, $06                                     ; $623D: $06 $06
    nop                                           ; $623F: $00
    nop                                           ; $6240: $00
    nop                                           ; $6241: $00
    nop                                           ; $6242: $00
    ld e, $0C                                     ; $6243: $1E $0C
    rra                                           ; $6245: $1F
    nop                                           ; $6246: $00
    ld a, b                                       ; $6247: $78
    jr nz, @-$0A                                  ; $6248: $20 $F4

    nop                                           ; $624A: $00
    xor $00                                       ; $624B: $EE $00
    rst RST_38                                    ; $624D: $FF
    ld c, $71                                     ; $624E: $0E $71
    ld de, $007C                                  ; $6250: $11 $7C $00
    ld a, c                                       ; $6253: $79
    nop                                           ; $6254: $00
    rrca                                          ; $6255: $0F
    nop                                           ; $6256: $00
    inc bc                                        ; $6257: $03

jr_004_6258:
    nop                                           ; $6258: $00
    ld d, b                                       ; $6259: $50
    nop                                           ; $625A: $00
    jr c, @+$32                                   ; $625B: $38 $30

    inc c                                         ; $625D: $0C
    ld [$000C], sp                                ; $625E: $08 $0C $00
    ld e, $04                                     ; $6261: $1E $04
    add hl, sp                                    ; $6263: $39
    ld [$097B], sp                                ; $6264: $08 $7B $09
    inc [hl]                                      ; $6267: $34
    inc de                                        ; $6268: $13
    ld [hl], b                                    ; $6269: $70
    db $10                                        ; $626A: $10
    ld a, e                                       ; $626B: $7B
    nop                                           ; $626C: $00
    ld a, a                                       ; $626D: $7F
    nop                                           ; $626E: $00
    cpl                                           ; $626F: $2F
    ld bc, $071C                                  ; $6270: $01 $1C $07
    cpl                                           ; $6273: $2F
    rlca                                          ; $6274: $07
    dec sp                                        ; $6275: $3B
    dec de                                        ; $6276: $1B
    ld a, d                                       ; $6277: $7A
    ld [de], a                                    ; $6278: $12
    inc [hl]                                      ; $6279: $34
    inc b                                         ; $627A: $04
    jr jr_004_627D                                ; $627B: $18 $00

jr_004_627D:
    stop                                          ; $627D: $10 $00
    nop                                           ; $627F: $00
    nop                                           ; $6280: $00
    nop                                           ; $6281: $00
    nop                                           ; $6282: $00
    inc a                                         ; $6283: $3C
    nop                                           ; $6284: $00
    inc h                                         ; $6285: $24
    jr jr_004_62AC                                ; $6286: $18 $24

    jr jr_004_62AE                                ; $6288: $18 $24

    jr jr_004_62B0                                ; $628A: $18 $24

    jr jr_004_62B2                                ; $628C: $18 $24

    jr jr_004_62CC                                ; $628E: $18 $3C

    jr jr_004_62CE                                ; $6290: $18 $3C

    jr @+$3E                                      ; $6292: $18 $3C

    nop                                           ; $6294: $00
    inc a                                         ; $6295: $3C
    jr jr_004_62D4                                ; $6296: $18 $3C

    jr jr_004_62D6                                ; $6298: $18 $3C

    nop                                           ; $629A: $00
    nop                                           ; $629B: $00
    nop                                           ; $629C: $00
    nop                                           ; $629D: $00
    nop                                           ; $629E: $00
    nop                                           ; $629F: $00
    nop                                           ; $62A0: $00
    nop                                           ; $62A1: $00
    nop                                           ; $62A2: $00
    ld a, [hl]                                    ; $62A3: $7E
    nop                                           ; $62A4: $00
    jp $813C                                      ; $62A5: $C3 $3C $81


    ld a, [hl]                                    ; $62A8: $7E
    sbc c                                         ; $62A9: $99
    ld h, [hl]                                    ; $62AA: $66
    sbc c                                         ; $62AB: $99

jr_004_62AC:
    ld h, [hl]                                    ; $62AC: $66
    sbc c                                         ; $62AD: $99

jr_004_62AE:
    ld h, [hl]                                    ; $62AE: $66
    rst RST_38                                    ; $62AF: $FF

jr_004_62B0:
    ld a, [hl]                                    ; $62B0: $7E
    rst RST_38                                    ; $62B1: $FF

jr_004_62B2:
    ld a, [hl]                                    ; $62B2: $7E
    rst RST_38                                    ; $62B3: $FF
    ld h, [hl]                                    ; $62B4: $66
    rst RST_38                                    ; $62B5: $FF
    ld h, [hl]                                    ; $62B6: $66
    rst RST_38                                    ; $62B7: $FF
    ld h, [hl]                                    ; $62B8: $66
    rst RST_38                                    ; $62B9: $FF
    nop                                           ; $62BA: $00
    nop                                           ; $62BB: $00
    nop                                           ; $62BC: $00
    nop                                           ; $62BD: $00
    nop                                           ; $62BE: $00
    nop                                           ; $62BF: $00
    nop                                           ; $62C0: $00
    nop                                           ; $62C1: $00
    nop                                           ; $62C2: $00
    ld a, [hl]                                    ; $62C3: $7E
    nop                                           ; $62C4: $00
    jp $813C                                      ; $62C5: $C3 $3C $81


    ld a, [hl]                                    ; $62C8: $7E
    sbc c                                         ; $62C9: $99
    ld h, [hl]                                    ; $62CA: $66
    sbc a                                         ; $62CB: $9F

jr_004_62CC:
    ld h, b                                       ; $62CC: $60
    sub b                                         ; $62CD: $90

jr_004_62CE:
    ld h, b                                       ; $62CE: $60
    ldh a, [$FF60]                                ; $62CF: $F0 $60
    rst RST_38                                    ; $62D1: $FF
    ld h, b                                       ; $62D2: $60
    rst RST_38                                    ; $62D3: $FF

jr_004_62D4:
    ld h, [hl]                                    ; $62D4: $66
    rst RST_38                                    ; $62D5: $FF

jr_004_62D6:
    ld a, [hl]                                    ; $62D6: $7E
    rst RST_38                                    ; $62D7: $FF
    inc a                                         ; $62D8: $3C
    ld a, [hl]                                    ; $62D9: $7E
    nop                                           ; $62DA: $00
    nop                                           ; $62DB: $00
    nop                                           ; $62DC: $00
    nop                                           ; $62DD: $00
    nop                                           ; $62DE: $00
    nop                                           ; $62DF: $00
    nop                                           ; $62E0: $00
    nop                                           ; $62E1: $00
    nop                                           ; $62E2: $00
    cp $00                                        ; $62E3: $FE $00
    add e                                         ; $62E5: $83
    ld a, h                                       ; $62E6: $7C
    add c                                         ; $62E7: $81
    ld a, [hl]                                    ; $62E8: $7E
    sbc c                                         ; $62E9: $99
    ld h, [hl]                                    ; $62EA: $66
    sbc c                                         ; $62EB: $99
    ld h, [hl]                                    ; $62EC: $66
    sbc c                                         ; $62ED: $99
    ld h, [hl]                                    ; $62EE: $66
    rst RST_38                                    ; $62EF: $FF
    ld h, [hl]                                    ; $62F0: $66
    rst RST_38                                    ; $62F1: $FF
    ld h, [hl]                                    ; $62F2: $66
    rst RST_38                                    ; $62F3: $FF
    ld h, [hl]                                    ; $62F4: $66
    rst RST_38                                    ; $62F5: $FF
    ld a, [hl]                                    ; $62F6: $7E
    rst RST_38                                    ; $62F7: $FF
    ld a, h                                       ; $62F8: $7C
    cp $00                                        ; $62F9: $FE $00
    nop                                           ; $62FB: $00
    nop                                           ; $62FC: $00
    nop                                           ; $62FD: $00
    nop                                           ; $62FE: $00
    nop                                           ; $62FF: $00
    nop                                           ; $6300: $00
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    rst RST_38                                    ; $6303: $FF
    nop                                           ; $6304: $00
    add c                                         ; $6305: $81
    ld a, [hl]                                    ; $6306: $7E
    add c                                         ; $6307: $81
    ld a, [hl]                                    ; $6308: $7E
    sbc a                                         ; $6309: $9F
    ld h, b                                       ; $630A: $60
    sbc [hl]                                      ; $630B: $9E
    ld h, b                                       ; $630C: $60
    add d                                         ; $630D: $82
    ld a, h                                       ; $630E: $7C
    cp $7C                                        ; $630F: $FE $7C
    cp $60                                        ; $6311: $FE $60
    rst RST_38                                    ; $6313: $FF
    ld h, b                                       ; $6314: $60
    rst RST_38                                    ; $6315: $FF
    ld a, [hl]                                    ; $6316: $7E
    rst RST_38                                    ; $6317: $FF
    ld a, [hl]                                    ; $6318: $7E
    rst RST_38                                    ; $6319: $FF
    nop                                           ; $631A: $00
    nop                                           ; $631B: $00
    nop                                           ; $631C: $00
    nop                                           ; $631D: $00
    nop                                           ; $631E: $00
    nop                                           ; $631F: $00
    nop                                           ; $6320: $00
    nop                                           ; $6321: $00
    nop                                           ; $6322: $00
    rst RST_38                                    ; $6323: $FF
    nop                                           ; $6324: $00
    add c                                         ; $6325: $81
    ld a, [hl]                                    ; $6326: $7E
    add c                                         ; $6327: $81
    ld a, [hl]                                    ; $6328: $7E
    sbc a                                         ; $6329: $9F
    ld h, b                                       ; $632A: $60
    sbc [hl]                                      ; $632B: $9E
    ld h, b                                       ; $632C: $60
    add d                                         ; $632D: $82
    ld a, h                                       ; $632E: $7C
    cp $7C                                        ; $632F: $FE $7C
    cp $60                                        ; $6331: $FE $60
    ldh a, [$FF60]                                ; $6333: $F0 $60
    ldh a, [$FF60]                                ; $6335: $F0 $60
    ldh a, [$FF60]                                ; $6337: $F0 $60
    ldh a, [rP1]                                  ; $6339: $F0 $00
    nop                                           ; $633B: $00
    nop                                           ; $633C: $00
    nop                                           ; $633D: $00
    nop                                           ; $633E: $00
    nop                                           ; $633F: $00
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00
    inc a                                         ; $6343: $3C
    nop                                           ; $6344: $00
    inc h                                         ; $6345: $24
    jr jr_004_636C                                ; $6346: $18 $24

    jr jr_004_636E                                ; $6348: $18 $24

    jr jr_004_6370                                ; $634A: $18 $24

    jr jr_004_6372                                ; $634C: $18 $24

    jr jr_004_638C                                ; $634E: $18 $3C

    jr jr_004_638E                                ; $6350: $18 $3C

    jr @+$3E                                      ; $6352: $18 $3C

    jr @+$3E                                      ; $6354: $18 $3C

    jr jr_004_6394                                ; $6356: $18 $3C

    jr jr_004_6396                                ; $6358: $18 $3C

    nop                                           ; $635A: $00
    nop                                           ; $635B: $00
    nop                                           ; $635C: $00
    nop                                           ; $635D: $00
    nop                                           ; $635E: $00
    nop                                           ; $635F: $00
    nop                                           ; $6360: $00
    nop                                           ; $6361: $00
    nop                                           ; $6362: $00
    rst RST_38                                    ; $6363: $FF
    nop                                           ; $6364: $00
    sbc c                                         ; $6365: $99
    ld h, [hl]                                    ; $6366: $66
    sbc c                                         ; $6367: $99
    ld h, [hl]                                    ; $6368: $66
    sbc c                                         ; $6369: $99
    ld h, [hl]                                    ; $636A: $66
    sbc c                                         ; $636B: $99

jr_004_636C:
    ld h, [hl]                                    ; $636C: $66
    add e                                         ; $636D: $83

jr_004_636E:
    ld a, h                                       ; $636E: $7C
    rst RST_38                                    ; $636F: $FF

jr_004_6370:
    ld a, h                                       ; $6370: $7C
    rst RST_38                                    ; $6371: $FF

jr_004_6372:
    ld h, [hl]                                    ; $6372: $66
    rst RST_38                                    ; $6373: $FF
    ld h, [hl]                                    ; $6374: $66
    rst RST_38                                    ; $6375: $FF
    ld h, [hl]                                    ; $6376: $66
    rst RST_38                                    ; $6377: $FF
    ld h, [hl]                                    ; $6378: $66
    rst RST_38                                    ; $6379: $FF
    nop                                           ; $637A: $00
    nop                                           ; $637B: $00
    nop                                           ; $637C: $00
    nop                                           ; $637D: $00
    nop                                           ; $637E: $00
    nop                                           ; $637F: $00
    nop                                           ; $6380: $00
    nop                                           ; $6381: $00
    nop                                           ; $6382: $00
    ldh a, [rP1]                                  ; $6383: $F0 $00
    sub b                                         ; $6385: $90
    ld h, b                                       ; $6386: $60
    sub b                                         ; $6387: $90
    ld h, b                                       ; $6388: $60
    sub b                                         ; $6389: $90
    ld h, b                                       ; $638A: $60
    sub b                                         ; $638B: $90

jr_004_638C:
    ld h, b                                       ; $638C: $60
    sub b                                         ; $638D: $90

jr_004_638E:
    ld h, b                                       ; $638E: $60
    ldh a, [$FF60]                                ; $638F: $F0 $60
    ldh a, [$FF60]                                ; $6391: $F0 $60
    rst RST_38                                    ; $6393: $FF

jr_004_6394:
    ld h, b                                       ; $6394: $60
    rst RST_38                                    ; $6395: $FF

jr_004_6396:
    ld a, [hl]                                    ; $6396: $7E
    rst RST_38                                    ; $6397: $FF
    ld a, [hl]                                    ; $6398: $7E
    rst RST_38                                    ; $6399: $FF
    nop                                           ; $639A: $00
    nop                                           ; $639B: $00
    nop                                           ; $639C: $00
    nop                                           ; $639D: $00
    nop                                           ; $639E: $00
    nop                                           ; $639F: $00
    nop                                           ; $63A0: $00
    nop                                           ; $63A1: $00
    nop                                           ; $63A2: $00
    rst RST_20                                    ; $63A3: $E7
    nop                                           ; $63A4: $00
    cp l                                          ; $63A5: $BD
    ld b, d                                       ; $63A6: $42
    sbc c                                         ; $63A7: $99
    ld h, [hl]                                    ; $63A8: $66
    add c                                         ; $63A9: $81
    ld a, [hl]                                    ; $63AA: $7E
    add c                                         ; $63AB: $81
    ld a, [hl]                                    ; $63AC: $7E
    sbc c                                         ; $63AD: $99
    ld h, [hl]                                    ; $63AE: $66
    rst RST_38                                    ; $63AF: $FF
    ld h, [hl]                                    ; $63B0: $66
    rst RST_38                                    ; $63B1: $FF
    ld h, [hl]                                    ; $63B2: $66
    rst RST_38                                    ; $63B3: $FF
    ld h, [hl]                                    ; $63B4: $66
    rst RST_38                                    ; $63B5: $FF
    ld h, [hl]                                    ; $63B6: $66
    rst RST_38                                    ; $63B7: $FF
    ld h, [hl]                                    ; $63B8: $66
    rst RST_38                                    ; $63B9: $FF
    nop                                           ; $63BA: $00
    nop                                           ; $63BB: $00
    nop                                           ; $63BC: $00
    nop                                           ; $63BD: $00
    nop                                           ; $63BE: $00
    nop                                           ; $63BF: $00
    nop                                           ; $63C0: $00
    nop                                           ; $63C1: $00
    nop                                           ; $63C2: $00
    rst RST_38                                    ; $63C3: $FF
    nop                                           ; $63C4: $00
    sbc c                                         ; $63C5: $99
    ld h, [hl]                                    ; $63C6: $66
    adc c                                         ; $63C7: $89
    halt                                          ; $63C8: $76
    add c                                         ; $63C9: $81
    ld a, [hl]                                    ; $63CA: $7E
    sub c                                         ; $63CB: $91
    ld l, [hl]                                    ; $63CC: $6E
    sbc c                                         ; $63CD: $99
    ld h, [hl]                                    ; $63CE: $66
    rst RST_38                                    ; $63CF: $FF
    ld h, [hl]                                    ; $63D0: $66
    rst RST_38                                    ; $63D1: $FF
    ld h, [hl]                                    ; $63D2: $66
    rst RST_38                                    ; $63D3: $FF
    ld h, [hl]                                    ; $63D4: $66
    rst RST_38                                    ; $63D5: $FF
    ld h, [hl]                                    ; $63D6: $66
    rst RST_38                                    ; $63D7: $FF
    ld h, [hl]                                    ; $63D8: $66
    rst RST_38                                    ; $63D9: $FF
    nop                                           ; $63DA: $00
    nop                                           ; $63DB: $00
    nop                                           ; $63DC: $00
    nop                                           ; $63DD: $00
    nop                                           ; $63DE: $00
    nop                                           ; $63DF: $00
    nop                                           ; $63E0: $00
    nop                                           ; $63E1: $00
    nop                                           ; $63E2: $00
    ld a, [hl]                                    ; $63E3: $7E
    nop                                           ; $63E4: $00
    jp $813C                                      ; $63E5: $C3 $3C $81


    ld a, [hl]                                    ; $63E8: $7E
    sbc c                                         ; $63E9: $99
    ld h, [hl]                                    ; $63EA: $66
    sbc c                                         ; $63EB: $99
    ld h, [hl]                                    ; $63EC: $66
    sbc c                                         ; $63ED: $99
    ld h, [hl]                                    ; $63EE: $66
    rst RST_38                                    ; $63EF: $FF
    ld h, [hl]                                    ; $63F0: $66
    rst RST_38                                    ; $63F1: $FF
    ld h, [hl]                                    ; $63F2: $66
    rst RST_38                                    ; $63F3: $FF
    ld h, [hl]                                    ; $63F4: $66
    rst RST_38                                    ; $63F5: $FF
    ld a, [hl]                                    ; $63F6: $7E
    rst RST_38                                    ; $63F7: $FF
    inc a                                         ; $63F8: $3C
    ld a, [hl]                                    ; $63F9: $7E
    nop                                           ; $63FA: $00
    nop                                           ; $63FB: $00
    nop                                           ; $63FC: $00
    nop                                           ; $63FD: $00
    nop                                           ; $63FE: $00
    nop                                           ; $63FF: $00
    nop                                           ; $6400: $00
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    cp $00                                        ; $6403: $FE $00
    add e                                         ; $6405: $83
    ld a, h                                       ; $6406: $7C
    add c                                         ; $6407: $81
    ld a, [hl]                                    ; $6408: $7E
    sbc c                                         ; $6409: $99
    ld h, [hl]                                    ; $640A: $66
    sbc c                                         ; $640B: $99
    ld h, [hl]                                    ; $640C: $66
    add c                                         ; $640D: $81
    ld a, [hl]                                    ; $640E: $7E
    rst RST_38                                    ; $640F: $FF
    ld a, h                                       ; $6410: $7C
    cp $60                                        ; $6411: $FE $60
    ldh a, [$FF60]                                ; $6413: $F0 $60
    ldh a, [$FF60]                                ; $6415: $F0 $60
    ldh a, [$FF60]                                ; $6417: $F0 $60
    ldh a, [rP1]                                  ; $6419: $F0 $00
    nop                                           ; $641B: $00
    nop                                           ; $641C: $00
    nop                                           ; $641D: $00
    nop                                           ; $641E: $00
    nop                                           ; $641F: $00
    nop                                           ; $6420: $00
    nop                                           ; $6421: $00
    nop                                           ; $6422: $00
    cp $00                                        ; $6423: $FE $00
    add e                                         ; $6425: $83
    ld a, h                                       ; $6426: $7C
    add c                                         ; $6427: $81
    ld a, [hl]                                    ; $6428: $7E
    sbc c                                         ; $6429: $99
    ld h, [hl]                                    ; $642A: $66
    sbc c                                         ; $642B: $99
    ld h, [hl]                                    ; $642C: $66
    add e                                         ; $642D: $83
    ld a, h                                       ; $642E: $7C
    rst RST_38                                    ; $642F: $FF
    ld a, h                                       ; $6430: $7C
    rst RST_38                                    ; $6431: $FF
    ld h, [hl]                                    ; $6432: $66
    rst RST_38                                    ; $6433: $FF
    ld h, [hl]                                    ; $6434: $66
    rst RST_38                                    ; $6435: $FF
    ld h, [hl]                                    ; $6436: $66
    rst RST_38                                    ; $6437: $FF
    ld h, [hl]                                    ; $6438: $66
    rst RST_38                                    ; $6439: $FF
    nop                                           ; $643A: $00
    nop                                           ; $643B: $00
    nop                                           ; $643C: $00
    nop                                           ; $643D: $00
    nop                                           ; $643E: $00
    nop                                           ; $643F: $00
    nop                                           ; $6440: $00
    nop                                           ; $6441: $00
    nop                                           ; $6442: $00
    ld a, [hl]                                    ; $6443: $7E
    nop                                           ; $6444: $00
    jp $813C                                      ; $6445: $C3 $3C $81


    ld a, [hl]                                    ; $6448: $7E
    sbc c                                         ; $6449: $99
    ld h, [hl]                                    ; $644A: $66
    sbc a                                         ; $644B: $9F
    ld h, b                                       ; $644C: $60
    add e                                         ; $644D: $83
    ld a, h                                       ; $644E: $7C
    rst RST_38                                    ; $644F: $FF
    ld a, $FF                                     ; $6450: $3E $FF
    ld b, $FF                                     ; $6452: $06 $FF
    ld h, [hl]                                    ; $6454: $66
    rst RST_38                                    ; $6455: $FF
    ld a, [hl]                                    ; $6456: $7E
    rst RST_38                                    ; $6457: $FF
    inc a                                         ; $6458: $3C
    ld a, [hl]                                    ; $6459: $7E
    nop                                           ; $645A: $00
    nop                                           ; $645B: $00
    nop                                           ; $645C: $00
    nop                                           ; $645D: $00
    nop                                           ; $645E: $00
    nop                                           ; $645F: $00
    nop                                           ; $6460: $00
    nop                                           ; $6461: $00
    nop                                           ; $6462: $00
    rst RST_38                                    ; $6463: $FF
    nop                                           ; $6464: $00
    add c                                         ; $6465: $81
    ld a, [hl]                                    ; $6466: $7E
    add c                                         ; $6467: $81
    ld a, [hl]                                    ; $6468: $7E
    rst RST_20                                    ; $6469: $E7
    jr jr_004_6490                                ; $646A: $18 $24

    jr jr_004_6492                                ; $646C: $18 $24

    jr jr_004_64AC                                ; $646E: $18 $3C

    jr jr_004_64AE                                ; $6470: $18 $3C

    jr jr_004_64B0                                ; $6472: $18 $3C

    jr jr_004_64B2                                ; $6474: $18 $3C

    jr jr_004_64B4                                ; $6476: $18 $3C

    jr jr_004_64B6                                ; $6478: $18 $3C

    nop                                           ; $647A: $00
    nop                                           ; $647B: $00
    nop                                           ; $647C: $00
    nop                                           ; $647D: $00
    nop                                           ; $647E: $00
    nop                                           ; $647F: $00
    nop                                           ; $6480: $00
    nop                                           ; $6481: $00
    nop                                           ; $6482: $00
    rst RST_38                                    ; $6483: $FF
    nop                                           ; $6484: $00
    sbc c                                         ; $6485: $99
    ld h, [hl]                                    ; $6486: $66
    sbc c                                         ; $6487: $99
    ld h, [hl]                                    ; $6488: $66
    sbc c                                         ; $6489: $99
    ld h, [hl]                                    ; $648A: $66
    sbc c                                         ; $648B: $99
    ld h, [hl]                                    ; $648C: $66
    sbc c                                         ; $648D: $99
    ld h, [hl]                                    ; $648E: $66
    rst RST_38                                    ; $648F: $FF

jr_004_6490:
    ld h, [hl]                                    ; $6490: $66
    rst RST_38                                    ; $6491: $FF

jr_004_6492:
    ld h, [hl]                                    ; $6492: $66
    rst RST_38                                    ; $6493: $FF
    ld h, [hl]                                    ; $6494: $66
    rst RST_38                                    ; $6495: $FF
    ld a, [hl]                                    ; $6496: $7E
    rst RST_38                                    ; $6497: $FF
    inc a                                         ; $6498: $3C
    ld a, [hl]                                    ; $6499: $7E
    nop                                           ; $649A: $00
    nop                                           ; $649B: $00
    nop                                           ; $649C: $00
    nop                                           ; $649D: $00
    nop                                           ; $649E: $00
    nop                                           ; $649F: $00
    nop                                           ; $64A0: $00
    nop                                           ; $64A1: $00
    nop                                           ; $64A2: $00
    rst RST_38                                    ; $64A3: $FF
    nop                                           ; $64A4: $00
    sub l                                         ; $64A5: $95
    ld l, d                                       ; $64A6: $6A
    sub l                                         ; $64A7: $95
    ld l, d                                       ; $64A8: $6A
    sub l                                         ; $64A9: $95
    ld l, d                                       ; $64AA: $6A
    sub l                                         ; $64AB: $95

jr_004_64AC:
    ld l, d                                       ; $64AC: $6A
    sub l                                         ; $64AD: $95

jr_004_64AE:
    ld l, d                                       ; $64AE: $6A
    rst RST_38                                    ; $64AF: $FF

jr_004_64B0:
    ld l, d                                       ; $64B0: $6A
    rst RST_38                                    ; $64B1: $FF

jr_004_64B2:
    ld l, [hl]                                    ; $64B2: $6E
    rst RST_38                                    ; $64B3: $FF

jr_004_64B4:
    ld a, [hl]                                    ; $64B4: $7E
    rst RST_38                                    ; $64B5: $FF

jr_004_64B6:
    ld a, b                                       ; $64B6: $78
    db $FC                                        ; $64B7: $FC
    ld h, b                                       ; $64B8: $60
    ldh a, [rP1]                                  ; $64B9: $F0 $00
    nop                                           ; $64BB: $00
    nop                                           ; $64BC: $00
    nop                                           ; $64BD: $00
    nop                                           ; $64BE: $00
    nop                                           ; $64BF: $00
    nop                                           ; $64C0: $00
    nop                                           ; $64C1: $00
    nop                                           ; $64C2: $00
    rst RST_38                                    ; $64C3: $FF
    nop                                           ; $64C4: $00
    sbc c                                         ; $64C5: $99
    ld h, [hl]                                    ; $64C6: $66
    sbc c                                         ; $64C7: $99
    ld h, [hl]                                    ; $64C8: $66
    sbc c                                         ; $64C9: $99
    ld h, [hl]                                    ; $64CA: $66
    sbc c                                         ; $64CB: $99
    ld h, [hl]                                    ; $64CC: $66
    add c                                         ; $64CD: $81
    ld a, [hl]                                    ; $64CE: $7E
    rst RST_38                                    ; $64CF: $FF
    inc a                                         ; $64D0: $3C
    ld a, [hl]                                    ; $64D1: $7E
    jr jr_004_6510                                ; $64D2: $18 $3C

    jr jr_004_6512                                ; $64D4: $18 $3C

    jr jr_004_6514                                ; $64D6: $18 $3C

    jr jr_004_6516                                ; $64D8: $18 $3C

    nop                                           ; $64DA: $00
    nop                                           ; $64DB: $00
    nop                                           ; $64DC: $00
    nop                                           ; $64DD: $00
    nop                                           ; $64DE: $00
    nop                                           ; $64DF: $00
    nop                                           ; $64E0: $00
    nop                                           ; $64E1: $00
    nop                                           ; $64E2: $00
    inc a                                         ; $64E3: $3C
    nop                                           ; $64E4: $00
    ld h, h                                       ; $64E5: $64
    jr jr_004_652C                                ; $64E6: $18 $44

    jr c, jr_004_652E                             ; $64E8: $38 $44

    jr c, jr_004_6550                             ; $64EA: $38 $64

    jr jr_004_6512                                ; $64EC: $18 $24

    jr jr_004_652C                                ; $64EE: $18 $3C

    jr jr_004_652E                                ; $64F0: $18 $3C

    jr jr_004_6530                                ; $64F2: $18 $3C

    jr jr_004_6532                                ; $64F4: $18 $3C

    jr jr_004_6534                                ; $64F6: $18 $3C

    jr jr_004_6536                                ; $64F8: $18 $3C

    nop                                           ; $64FA: $00
    nop                                           ; $64FB: $00
    nop                                           ; $64FC: $00
    nop                                           ; $64FD: $00
    nop                                           ; $64FE: $00
    nop                                           ; $64FF: $00
    nop                                           ; $6500: $00
    nop                                           ; $6501: $00
    nop                                           ; $6502: $00
    ld a, [hl]                                    ; $6503: $7E
    nop                                           ; $6504: $00
    jp $813C                                      ; $6505: $C3 $3C $81


    ld a, [hl]                                    ; $6508: $7E
    sbc c                                         ; $6509: $99
    ld h, [hl]                                    ; $650A: $66
    ld sp, hl                                     ; $650B: $F9
    ld b, $33                                     ; $650C: $06 $33

jr_004_650E:
    inc c                                         ; $650E: $0C
    ld a, [hl]                                    ; $650F: $7E

jr_004_6510:
    jr jr_004_650E                                ; $6510: $18 $FC

jr_004_6512:
    jr nc, @+$01                                  ; $6512: $30 $FF

jr_004_6514:
    ld h, b                                       ; $6514: $60
    rst RST_38                                    ; $6515: $FF

jr_004_6516:
    ld a, [hl]                                    ; $6516: $7E
    rst RST_38                                    ; $6517: $FF
    ld a, [hl]                                    ; $6518: $7E
    rst RST_38                                    ; $6519: $FF
    nop                                           ; $651A: $00
    nop                                           ; $651B: $00
    nop                                           ; $651C: $00
    nop                                           ; $651D: $00
    nop                                           ; $651E: $00
    nop                                           ; $651F: $00
    ld [bc], a                                    ; $6520: $02
    rla                                           ; $6521: $17
    nop                                           ; $6522: $00
    ld e, b                                       ; $6523: $58
    nop                                           ; $6524: $00
    jr nz, jr_004_6527                            ; $6525: $20 $00

jr_004_6527:
    nop                                           ; $6527: $00
    nop                                           ; $6528: $00
    nop                                           ; $6529: $00
    nop                                           ; $652A: $00
    nop                                           ; $652B: $00

jr_004_652C:
    nop                                           ; $652C: $00
    add b                                         ; $652D: $80

jr_004_652E:
    nop                                           ; $652E: $00
    adc b                                         ; $652F: $88

jr_004_6530:
    inc b                                         ; $6530: $04
    db $EC                                        ; $6531: $EC

jr_004_6532:
    ld h, l                                       ; $6532: $65
    nop                                           ; $6533: $00

jr_004_6534:
    inc b                                         ; $6534: $04
    db $EC                                        ; $6535: $EC

jr_004_6536:
    ld h, l                                       ; $6536: $65
    nop                                           ; $6537: $00
    nop                                           ; $6538: $00
    nop                                           ; $6539: $00
    nop                                           ; $653A: $00
    nop                                           ; $653B: $00
    nop                                           ; $653C: $00
    nop                                           ; $653D: $00
    nop                                           ; $653E: $00
    ld e, c                                       ; $653F: $59
    ld h, l                                       ; $6540: $65
    rst RST_38                                    ; $6541: $FF
    rst RST_38                                    ; $6542: $FF
    ld a, l                                       ; $6543: $7D
    ld h, l                                       ; $6544: $65
    rst RST_38                                    ; $6545: $FF
    rst RST_38                                    ; $6546: $FF
    ld h, e                                       ; $6547: $63
    ld h, l                                       ; $6548: $65
    rst RST_38                                    ; $6549: $FF
    rst RST_38                                    ; $654A: $FF
    adc [hl]                                      ; $654B: $8E
    ld h, l                                       ; $654C: $65
    rst RST_38                                    ; $654D: $FF
    rst RST_38                                    ; $654E: $FF
    or a                                          ; $654F: $B7

jr_004_6550:
    ld h, l                                       ; $6550: $65
    rst RST_38                                    ; $6551: $FF
    rst RST_38                                    ; $6552: $FF
    pop de                                        ; $6553: $D1
    ld h, l                                       ; $6554: $65
    rst RST_38                                    ; $6555: $FF
    rst RST_38                                    ; $6556: $FF
    rst RST_38                                    ; $6557: $FF
    rst RST_38                                    ; $6558: $FF
    sub b                                         ; $6559: $90
    nop                                           ; $655A: $00
    nop                                           ; $655B: $00
    rst RST_38                                    ; $655C: $FF
    rst RST_38                                    ; $655D: $FF
    rst RST_38                                    ; $655E: $FF
    ld l, l                                       ; $655F: $6D
    ld h, l                                       ; $6560: $65
    ld [bc], a                                    ; $6561: $02
    nop                                           ; $6562: $00
    ldh a, [rP1]                                  ; $6563: $F0 $00
    nop                                           ; $6565: $00
    rst RST_38                                    ; $6566: $FF
    rst RST_38                                    ; $6567: $FF
    rst RST_38                                    ; $6568: $FF
    ld l, l                                       ; $6569: $6D
    ld h, l                                       ; $656A: $65
    cp $FF                                        ; $656B: $FE $FF
    dec b                                         ; $656D: $05
    inc h                                         ; $656E: $24
    ldh a, [c]                                    ; $656F: $F2
    nop                                           ; $6570: $00
    inc [hl]                                      ; $6571: $34
    ldh a, [c]                                    ; $6572: $F2
    ld [bc], a                                    ; $6573: $02
    inc l                                         ; $6574: $2C
    ld a, [$2C04]                                 ; $6575: $FA $04 $2C
    ld [bc], a                                    ; $6578: $02
    ld b, b                                       ; $6579: $40
    inc e                                         ; $657A: $1C
    ld a, [$90C2]                                 ; $657B: $FA $C2 $90
    nop                                           ; $657E: $00
    nop                                           ; $657F: $00
    rst RST_38                                    ; $6580: $FF
    rst RST_38                                    ; $6581: $FF
    rst RST_38                                    ; $6582: $FF
    add a                                         ; $6583: $87
    ld h, l                                       ; $6584: $65
    ld b, $04                                     ; $6585: $06 $04
    ld [bc], a                                    ; $6587: $02
    inc h                                         ; $6588: $24
    ldh a, [c]                                    ; $6589: $F2
    nop                                           ; $658A: $00
    inc h                                         ; $658B: $24
    ld a, [$9040]                                 ; $658C: $FA $40 $90
    nop                                           ; $658F: $00
    nop                                           ; $6590: $00
    rst RST_38                                    ; $6591: $FF
    rst RST_38                                    ; $6592: $FF
    rst RST_38                                    ; $6593: $FF
    sbc b                                         ; $6594: $98
    ld h, l                                       ; $6595: $65
    ld [bc], a                                    ; $6596: $02
    db $EC                                        ; $6597: $EC
    ld a, [bc]                                    ; $6598: $0A
    inc h                                         ; $6599: $24
    ldh a, [c]                                    ; $659A: $F2
    ld b, $1C                                     ; $659B: $06 $1C
    ld a, [$3C08]                                 ; $659D: $FA $08 $3C
    ld a, [$340A]                                 ; $65A0: $FA $0A $34
    ld [$2C06], a                                 ; $65A3: $EA $06 $2C
    ld a, [$3C46]                                 ; $65A6: $FA $46 $3C
    ld [bc], a                                    ; $65A9: $02
    ld b, [hl]                                    ; $65AA: $46
    ld b, h                                       ; $65AB: $44
    ldh a, [c]                                    ; $65AC: $F2
    ld [$F234], sp                                ; $65AD: $08 $34 $F2
    ld c, b                                       ; $65B0: $48
    inc [hl]                                      ; $65B1: $34
    ld a, [bc]                                    ; $65B2: $0A
    ld c, b                                       ; $65B3: $48
    inc l                                         ; $65B4: $2C
    ld [bc], a                                    ; $65B5: $02
    ld a, [bc]                                    ; $65B6: $0A
    sub b                                         ; $65B7: $90
    nop                                           ; $65B8: $00
    nop                                           ; $65B9: $00
    rst RST_38                                    ; $65BA: $FF
    rst RST_38                                    ; $65BB: $FF
    rst RST_38                                    ; $65BC: $FF
    pop bc                                        ; $65BD: $C1
    ld h, l                                       ; $65BE: $65
    ld bc, $05EB                                  ; $65BF: $01 $EB $05
    inc e                                         ; $65C2: $1C
    ldh a, [c]                                    ; $65C3: $F2
    ld b, $24                                     ; $65C4: $06 $24
    ld [bc], a                                    ; $65C6: $02
    ld b, [hl]                                    ; $65C7: $46
    inc l                                         ; $65C8: $2C
    ld a, [$3408]                                 ; $65C9: $FA $08 $34
    ld [bc], a                                    ; $65CC: $02
    ld c, b                                       ; $65CD: $48
    inc e                                         ; $65CE: $1C
    ld a, [$904A]                                 ; $65CF: $FA $4A $90
    nop                                           ; $65D2: $00
    nop                                           ; $65D3: $00
    rst RST_38                                    ; $65D4: $FF
    rst RST_38                                    ; $65D5: $FF
    rst RST_38                                    ; $65D6: $FF
    db $DB                                        ; $65D7: $DB
    ld h, l                                       ; $65D8: $65
    nop                                           ; $65D9: $00
    db $EC                                        ; $65DA: $EC
    ld [bc], a                                    ; $65DB: $02
    inc e                                         ; $65DC: $1C
    ld [bc], a                                    ; $65DD: $02
    add $14                                       ; $65DE: $C6 $14
    ld a, [$DE0A]                                 ; $65E0: $FA $0A $DE
    ld l, b                                       ; $65E3: $68
    rst RST_38                                    ; $65E4: $FF
    rst RST_38                                    ; $65E5: $FF
    add sp, $68                                   ; $65E6: $E8 $68
    rst RST_38                                    ; $65E8: $FF
    rst RST_38                                    ; $65E9: $FF
    rst RST_38                                    ; $65EA: $FF
    rst RST_38                                    ; $65EB: $FF
    db $10                                        ; $65EC: $10
    ld l, c                                       ; $65ED: $69
    rst RST_38                                    ; $65EE: $FF
    rst RST_38                                    ; $65EF: $FF
    ld e, $69                                     ; $65F0: $1E $69
    rst RST_38                                    ; $65F2: $FF
    rst RST_38                                    ; $65F3: $FF
    ld [bc], a                                    ; $65F4: $02
    ld l, c                                       ; $65F5: $69
    rst RST_38                                    ; $65F6: $FF
    rst RST_38                                    ; $65F7: $FF
    dec a                                         ; $65F8: $3D
    ld l, c                                       ; $65F9: $69
    rst RST_38                                    ; $65FA: $FF
    rst RST_38                                    ; $65FB: $FF
    ld c, [hl]                                    ; $65FC: $4E
    ld l, c                                       ; $65FD: $69
    rst RST_38                                    ; $65FE: $FF
    rst RST_38                                    ; $65FF: $FF
    inc l                                         ; $6600: $2C
    ld l, c                                       ; $6601: $69
    rst RST_38                                    ; $6602: $FF
    rst RST_38                                    ; $6603: $FF
    ld [hl], e                                    ; $6604: $73
    ld l, c                                       ; $6605: $69
    rst RST_38                                    ; $6606: $FF
    rst RST_38                                    ; $6607: $FF
    add a                                         ; $6608: $87
    ld l, c                                       ; $6609: $69
    rst RST_38                                    ; $660A: $FF
    rst RST_38                                    ; $660B: $FF
    ld e, a                                       ; $660C: $5F
    ld l, c                                       ; $660D: $69
    rst RST_38                                    ; $660E: $FF
    rst RST_38                                    ; $660F: $FF
    or d                                          ; $6610: $B2
    ld l, c                                       ; $6611: $69
    rst RST_38                                    ; $6612: $FF
    rst RST_38                                    ; $6613: $FF
    ret                                           ; $6614: $C9


    ld l, c                                       ; $6615: $69
    rst RST_38                                    ; $6616: $FF
    rst RST_38                                    ; $6617: $FF
    sbc e                                         ; $6618: $9B
    ld l, c                                       ; $6619: $69
    rst RST_38                                    ; $661A: $FF
    rst RST_38                                    ; $661B: $FF
    ld a, [$FF69]                                 ; $661C: $FA $69 $FF
    rst RST_38                                    ; $661F: $FF
    inc d                                         ; $6620: $14
    ld l, d                                       ; $6621: $6A
    rst RST_38                                    ; $6622: $FF
    rst RST_38                                    ; $6623: $FF
    ldh [rBCPD], a                                ; $6624: $E0 $69
    rst RST_38                                    ; $6626: $FF
    rst RST_38                                    ; $6627: $FF
    ld c, e                                       ; $6628: $4B
    ld l, d                                       ; $6629: $6A
    rst RST_38                                    ; $662A: $FF
    rst RST_38                                    ; $662B: $FF
    ld l, b                                       ; $662C: $68
    ld l, d                                       ; $662D: $6A
    rst RST_38                                    ; $662E: $FF
    rst RST_38                                    ; $662F: $FF
    ld l, $6A                                     ; $6630: $2E $6A
    rst RST_38                                    ; $6632: $FF
    rst RST_38                                    ; $6633: $FF
    rst RST_38                                    ; $6634: $FF
    rst RST_38                                    ; $6635: $FF
    sub e                                         ; $6636: $93
    ld l, d                                       ; $6637: $6A
    rst RST_38                                    ; $6638: $FF
    rst RST_38                                    ; $6639: $FF
    and c                                         ; $663A: $A1
    ld l, d                                       ; $663B: $6A
    rst RST_38                                    ; $663C: $FF
    rst RST_38                                    ; $663D: $FF
    add l                                         ; $663E: $85
    ld l, d                                       ; $663F: $6A
    rst RST_38                                    ; $6640: $FF
    rst RST_38                                    ; $6641: $FF
    ret nz                                        ; $6642: $C0

    ld l, d                                       ; $6643: $6A
    rst RST_38                                    ; $6644: $FF
    rst RST_38                                    ; $6645: $FF
    pop de                                        ; $6646: $D1
    ld l, d                                       ; $6647: $6A
    rst RST_38                                    ; $6648: $FF
    rst RST_38                                    ; $6649: $FF
    xor a                                         ; $664A: $AF
    ld l, d                                       ; $664B: $6A
    rst RST_38                                    ; $664C: $FF
    rst RST_38                                    ; $664D: $FF
    or $6A                                        ; $664E: $F6 $6A
    rst RST_38                                    ; $6650: $FF
    rst RST_38                                    ; $6651: $FF
    ld a, [bc]                                    ; $6652: $0A
    ld l, e                                       ; $6653: $6B
    rst RST_38                                    ; $6654: $FF
    rst RST_38                                    ; $6655: $FF
    ldh [c], a                                    ; $6656: $E2
    ld l, d                                       ; $6657: $6A
    rst RST_38                                    ; $6658: $FF
    rst RST_38                                    ; $6659: $FF
    dec [hl]                                      ; $665A: $35
    ld l, e                                       ; $665B: $6B
    rst RST_38                                    ; $665C: $FF
    rst RST_38                                    ; $665D: $FF
    ld c, h                                       ; $665E: $4C
    ld l, e                                       ; $665F: $6B
    rst RST_38                                    ; $6660: $FF
    rst RST_38                                    ; $6661: $FF
    ld e, $6B                                     ; $6662: $1E $6B
    rst RST_38                                    ; $6664: $FF
    rst RST_38                                    ; $6665: $FF
    ld a, l                                       ; $6666: $7D
    ld l, e                                       ; $6667: $6B
    rst RST_38                                    ; $6668: $FF
    rst RST_38                                    ; $6669: $FF
    sub a                                         ; $666A: $97
    ld l, e                                       ; $666B: $6B
    rst RST_38                                    ; $666C: $FF
    rst RST_38                                    ; $666D: $FF
    ld h, e                                       ; $666E: $63
    ld l, e                                       ; $666F: $6B
    rst RST_38                                    ; $6670: $FF
    rst RST_38                                    ; $6671: $FF
    adc $6B                                       ; $6672: $CE $6B
    rst RST_38                                    ; $6674: $FF
    rst RST_38                                    ; $6675: $FF
    db $EB                                        ; $6676: $EB
    ld l, e                                       ; $6677: $6B
    rst RST_38                                    ; $6678: $FF
    rst RST_38                                    ; $6679: $FF
    or c                                          ; $667A: $B1
    ld l, e                                       ; $667B: $6B
    rst RST_38                                    ; $667C: $FF
    rst RST_38                                    ; $667D: $FF
    rst RST_38                                    ; $667E: $FF
    rst RST_38                                    ; $667F: $FF
    ld d, $6C                                     ; $6680: $16 $6C
    rst RST_38                                    ; $6682: $FF
    rst RST_38                                    ; $6683: $FF
    inc h                                         ; $6684: $24
    ld l, h                                       ; $6685: $6C
    rst RST_38                                    ; $6686: $FF
    rst RST_38                                    ; $6687: $FF
    ld [$FF6C], sp                                ; $6688: $08 $6C $FF
    rst RST_38                                    ; $668B: $FF
    ld b, e                                       ; $668C: $43
    ld l, h                                       ; $668D: $6C
    rst RST_38                                    ; $668E: $FF
    rst RST_38                                    ; $668F: $FF
    ld d, h                                       ; $6690: $54
    ld l, h                                       ; $6691: $6C
    rst RST_38                                    ; $6692: $FF
    rst RST_38                                    ; $6693: $FF
    ld [hl-], a                                   ; $6694: $32
    ld l, h                                       ; $6695: $6C
    rst RST_38                                    ; $6696: $FF
    rst RST_38                                    ; $6697: $FF
    ld a, c                                       ; $6698: $79
    ld l, h                                       ; $6699: $6C
    rst RST_38                                    ; $669A: $FF
    rst RST_38                                    ; $669B: $FF
    adc l                                         ; $669C: $8D
    ld l, h                                       ; $669D: $6C
    rst RST_38                                    ; $669E: $FF
    rst RST_38                                    ; $669F: $FF
    ld h, l                                       ; $66A0: $65
    ld l, h                                       ; $66A1: $6C
    rst RST_38                                    ; $66A2: $FF
    rst RST_38                                    ; $66A3: $FF
    cp b                                          ; $66A4: $B8
    ld l, h                                       ; $66A5: $6C
    rst RST_38                                    ; $66A6: $FF
    rst RST_38                                    ; $66A7: $FF
    rst RST_08                                    ; $66A8: $CF
    ld l, h                                       ; $66A9: $6C
    rst RST_38                                    ; $66AA: $FF
    rst RST_38                                    ; $66AB: $FF
    and c                                         ; $66AC: $A1
    ld l, h                                       ; $66AD: $6C
    rst RST_38                                    ; $66AE: $FF
    rst RST_38                                    ; $66AF: $FF
    nop                                           ; $66B0: $00
    ld l, l                                       ; $66B1: $6D
    rst RST_38                                    ; $66B2: $FF
    rst RST_38                                    ; $66B3: $FF
    ld a, [de]                                    ; $66B4: $1A
    ld l, l                                       ; $66B5: $6D
    rst RST_38                                    ; $66B6: $FF
    rst RST_38                                    ; $66B7: $FF
    and $6C                                       ; $66B8: $E6 $6C
    rst RST_38                                    ; $66BA: $FF
    rst RST_38                                    ; $66BB: $FF
    rst RST_38                                    ; $66BC: $FF
    rst RST_38                                    ; $66BD: $FF
    ld b, d                                       ; $66BE: $42
    ld l, l                                       ; $66BF: $6D
    rst RST_38                                    ; $66C0: $FF
    rst RST_38                                    ; $66C1: $FF
    ld d, b                                       ; $66C2: $50
    ld l, l                                       ; $66C3: $6D
    rst RST_38                                    ; $66C4: $FF
    rst RST_38                                    ; $66C5: $FF
    inc [hl]                                      ; $66C6: $34
    ld l, l                                       ; $66C7: $6D
    rst RST_38                                    ; $66C8: $FF
    rst RST_38                                    ; $66C9: $FF
    ld l, a                                       ; $66CA: $6F
    ld l, l                                       ; $66CB: $6D
    rst RST_38                                    ; $66CC: $FF
    rst RST_38                                    ; $66CD: $FF
    add b                                         ; $66CE: $80
    ld l, l                                       ; $66CF: $6D
    rst RST_38                                    ; $66D0: $FF
    rst RST_38                                    ; $66D1: $FF
    ld e, [hl]                                    ; $66D2: $5E
    ld l, l                                       ; $66D3: $6D
    rst RST_38                                    ; $66D4: $FF
    rst RST_38                                    ; $66D5: $FF
    and l                                         ; $66D6: $A5
    ld l, l                                       ; $66D7: $6D
    rst RST_38                                    ; $66D8: $FF
    rst RST_38                                    ; $66D9: $FF
    cp c                                          ; $66DA: $B9
    ld l, l                                       ; $66DB: $6D
    rst RST_38                                    ; $66DC: $FF
    rst RST_38                                    ; $66DD: $FF
    sub c                                         ; $66DE: $91
    ld l, l                                       ; $66DF: $6D
    rst RST_38                                    ; $66E0: $FF
    rst RST_38                                    ; $66E1: $FF
    rst RST_38                                    ; $66E2: $FF
    rst RST_38                                    ; $66E3: $FF
    db $DB                                        ; $66E4: $DB
    ld l, l                                       ; $66E5: $6D
    rst RST_38                                    ; $66E6: $FF
    rst RST_38                                    ; $66E7: $FF
    jp hl                                         ; $66E8: $E9


    ld l, l                                       ; $66E9: $6D
    rst RST_38                                    ; $66EA: $FF
    rst RST_38                                    ; $66EB: $FF
    call $FF6D                                    ; $66EC: $CD $6D $FF
    rst RST_38                                    ; $66EF: $FF
    ld [$FF6E], sp                                ; $66F0: $08 $6E $FF
    rst RST_38                                    ; $66F3: $FF
    add hl, de                                    ; $66F4: $19
    ld l, [hl]                                    ; $66F5: $6E
    rst RST_38                                    ; $66F6: $FF
    rst RST_38                                    ; $66F7: $FF
    rst RST_30                                    ; $66F8: $F7
    ld l, l                                       ; $66F9: $6D
    rst RST_38                                    ; $66FA: $FF
    rst RST_38                                    ; $66FB: $FF
    ld a, $6E                                     ; $66FC: $3E $6E
    rst RST_38                                    ; $66FE: $FF
    rst RST_38                                    ; $66FF: $FF
    ld d, d                                       ; $6700: $52
    ld l, [hl]                                    ; $6701: $6E
    rst RST_38                                    ; $6702: $FF
    rst RST_38                                    ; $6703: $FF
    ld a, [hl+]                                   ; $6704: $2A
    ld l, [hl]                                    ; $6705: $6E
    rst RST_38                                    ; $6706: $FF
    rst RST_38                                    ; $6707: $FF
    ld a, l                                       ; $6708: $7D
    ld l, [hl]                                    ; $6709: $6E
    rst RST_38                                    ; $670A: $FF
    rst RST_38                                    ; $670B: $FF
    sub h                                         ; $670C: $94
    ld l, [hl]                                    ; $670D: $6E
    rst RST_38                                    ; $670E: $FF
    rst RST_38                                    ; $670F: $FF
    ld h, [hl]                                    ; $6710: $66
    ld l, [hl]                                    ; $6711: $6E
    rst RST_38                                    ; $6712: $FF
    rst RST_38                                    ; $6713: $FF
    push bc                                       ; $6714: $C5
    ld l, [hl]                                    ; $6715: $6E
    rst RST_38                                    ; $6716: $FF
    rst RST_38                                    ; $6717: $FF
    rst RST_18                                    ; $6718: $DF
    ld l, [hl]                                    ; $6719: $6E
    rst RST_38                                    ; $671A: $FF
    rst RST_38                                    ; $671B: $FF
    xor e                                         ; $671C: $AB
    ld l, [hl]                                    ; $671D: $6E
    rst RST_38                                    ; $671E: $FF
    rst RST_38                                    ; $671F: $FF
    ld d, $6F                                     ; $6720: $16 $6F
    rst RST_38                                    ; $6722: $FF
    rst RST_38                                    ; $6723: $FF
    inc sp                                        ; $6724: $33
    ld l, a                                       ; $6725: $6F
    rst RST_38                                    ; $6726: $FF
    rst RST_38                                    ; $6727: $FF
    ld sp, hl                                     ; $6728: $F9
    ld l, [hl]                                    ; $6729: $6E
    rst RST_38                                    ; $672A: $FF
    rst RST_38                                    ; $672B: $FF
    rst RST_38                                    ; $672C: $FF
    rst RST_38                                    ; $672D: $FF
    ld e, [hl]                                    ; $672E: $5E
    ld l, a                                       ; $672F: $6F
    rst RST_38                                    ; $6730: $FF
    rst RST_38                                    ; $6731: $FF
    ld l, h                                       ; $6732: $6C
    ld l, a                                       ; $6733: $6F
    rst RST_38                                    ; $6734: $FF
    rst RST_38                                    ; $6735: $FF
    ld d, b                                       ; $6736: $50
    ld l, a                                       ; $6737: $6F
    rst RST_38                                    ; $6738: $FF
    rst RST_38                                    ; $6739: $FF
    adc e                                         ; $673A: $8B
    ld l, a                                       ; $673B: $6F
    rst RST_38                                    ; $673C: $FF
    rst RST_38                                    ; $673D: $FF
    sbc h                                         ; $673E: $9C
    ld l, a                                       ; $673F: $6F
    rst RST_38                                    ; $6740: $FF
    rst RST_38                                    ; $6741: $FF
    ld a, d                                       ; $6742: $7A
    ld l, a                                       ; $6743: $6F
    rst RST_38                                    ; $6744: $FF
    rst RST_38                                    ; $6745: $FF
    pop bc                                        ; $6746: $C1
    ld l, a                                       ; $6747: $6F
    rst RST_38                                    ; $6748: $FF
    rst RST_38                                    ; $6749: $FF
    push de                                       ; $674A: $D5
    ld l, a                                       ; $674B: $6F
    rst RST_38                                    ; $674C: $FF
    rst RST_38                                    ; $674D: $FF
    xor l                                         ; $674E: $AD
    ld l, a                                       ; $674F: $6F
    rst RST_38                                    ; $6750: $FF
    rst RST_38                                    ; $6751: $FF
    nop                                           ; $6752: $00
    ld [hl], b                                    ; $6753: $70
    rst RST_38                                    ; $6754: $FF
    rst RST_38                                    ; $6755: $FF
    rla                                           ; $6756: $17
    ld [hl], b                                    ; $6757: $70
    rst RST_38                                    ; $6758: $FF
    rst RST_38                                    ; $6759: $FF
    jp hl                                         ; $675A: $E9


    ld l, a                                       ; $675B: $6F
    rst RST_38                                    ; $675C: $FF
    rst RST_38                                    ; $675D: $FF
    rst RST_38                                    ; $675E: $FF
    rst RST_38                                    ; $675F: $FF
    and d                                         ; $6760: $A2
    ld [hl], e                                    ; $6761: $73
    rst RST_38                                    ; $6762: $FF
    rst RST_38                                    ; $6763: $FF
    or b                                          ; $6764: $B0
    ld [hl], e                                    ; $6765: $73
    rst RST_38                                    ; $6766: $FF
    rst RST_38                                    ; $6767: $FF
    sub h                                         ; $6768: $94
    ld [hl], e                                    ; $6769: $73
    rst RST_38                                    ; $676A: $FF
    rst RST_38                                    ; $676B: $FF
    rst RST_08                                    ; $676C: $CF
    ld [hl], e                                    ; $676D: $73
    rst RST_38                                    ; $676E: $FF
    rst RST_38                                    ; $676F: $FF
    ldh [$FF73], a                                ; $6770: $E0 $73
    rst RST_38                                    ; $6772: $FF
    rst RST_38                                    ; $6773: $FF
    cp [hl]                                       ; $6774: $BE
    ld [hl], e                                    ; $6775: $73
    rst RST_38                                    ; $6776: $FF
    rst RST_38                                    ; $6777: $FF
    dec b                                         ; $6778: $05
    ld [hl], h                                    ; $6779: $74
    rst RST_38                                    ; $677A: $FF
    rst RST_38                                    ; $677B: $FF
    add hl, de                                    ; $677C: $19
    ld [hl], h                                    ; $677D: $74
    rst RST_38                                    ; $677E: $FF
    rst RST_38                                    ; $677F: $FF
    pop af                                        ; $6780: $F1
    ld [hl], e                                    ; $6781: $73
    rst RST_38                                    ; $6782: $FF
    rst RST_38                                    ; $6783: $FF
    ld b, h                                       ; $6784: $44
    ld [hl], h                                    ; $6785: $74
    rst RST_38                                    ; $6786: $FF
    rst RST_38                                    ; $6787: $FF
    ld e, e                                       ; $6788: $5B
    ld [hl], h                                    ; $6789: $74
    rst RST_38                                    ; $678A: $FF
    rst RST_38                                    ; $678B: $FF
    dec l                                         ; $678C: $2D
    ld [hl], h                                    ; $678D: $74
    rst RST_38                                    ; $678E: $FF
    rst RST_38                                    ; $678F: $FF
    adc h                                         ; $6790: $8C
    ld [hl], h                                    ; $6791: $74
    rst RST_38                                    ; $6792: $FF
    rst RST_38                                    ; $6793: $FF
    and [hl]                                      ; $6794: $A6
    ld [hl], h                                    ; $6795: $74
    rst RST_38                                    ; $6796: $FF
    rst RST_38                                    ; $6797: $FF
    ld [hl], d                                    ; $6798: $72
    ld [hl], h                                    ; $6799: $74
    rst RST_38                                    ; $679A: $FF
    rst RST_38                                    ; $679B: $FF
    rst RST_38                                    ; $679C: $FF
    rst RST_38                                    ; $679D: $FF
    adc $74                                       ; $679E: $CE $74
    rst RST_38                                    ; $67A0: $FF
    rst RST_38                                    ; $67A1: $FF
    call c, $FF74                                 ; $67A2: $DC $74 $FF
    rst RST_38                                    ; $67A5: $FF
    ret nz                                        ; $67A6: $C0

    ld [hl], h                                    ; $67A7: $74
    rst RST_38                                    ; $67A8: $FF
    rst RST_38                                    ; $67A9: $FF
    ei                                            ; $67AA: $FB
    ld [hl], h                                    ; $67AB: $74
    rst RST_38                                    ; $67AC: $FF
    rst RST_38                                    ; $67AD: $FF
    inc c                                         ; $67AE: $0C
    ld [hl], l                                    ; $67AF: $75
    rst RST_38                                    ; $67B0: $FF
    rst RST_38                                    ; $67B1: $FF
    ld [$FF74], a                                 ; $67B2: $EA $74 $FF
    rst RST_38                                    ; $67B5: $FF
    ld sp, $FF75                                  ; $67B6: $31 $75 $FF
    rst RST_38                                    ; $67B9: $FF
    ld b, l                                       ; $67BA: $45
    ld [hl], l                                    ; $67BB: $75
    rst RST_38                                    ; $67BC: $FF
    rst RST_38                                    ; $67BD: $FF
    dec e                                         ; $67BE: $1D
    ld [hl], l                                    ; $67BF: $75
    rst RST_38                                    ; $67C0: $FF
    rst RST_38                                    ; $67C1: $FF
    ld [hl], b                                    ; $67C2: $70
    ld [hl], l                                    ; $67C3: $75
    rst RST_38                                    ; $67C4: $FF
    rst RST_38                                    ; $67C5: $FF
    add a                                         ; $67C6: $87
    ld [hl], l                                    ; $67C7: $75
    rst RST_38                                    ; $67C8: $FF
    rst RST_38                                    ; $67C9: $FF
    ld e, c                                       ; $67CA: $59
    ld [hl], l                                    ; $67CB: $75
    rst RST_38                                    ; $67CC: $FF
    rst RST_38                                    ; $67CD: $FF
    cp b                                          ; $67CE: $B8
    ld [hl], l                                    ; $67CF: $75
    rst RST_38                                    ; $67D0: $FF
    rst RST_38                                    ; $67D1: $FF
    jp nc, $FF75                                  ; $67D2: $D2 $75 $FF

    rst RST_38                                    ; $67D5: $FF
    sbc [hl]                                      ; $67D6: $9E
    ld [hl], l                                    ; $67D7: $75
    rst RST_38                                    ; $67D8: $FF
    rst RST_38                                    ; $67D9: $FF
    rst RST_38                                    ; $67DA: $FF
    rst RST_38                                    ; $67DB: $FF
    inc a                                         ; $67DC: $3C
    ld [hl], b                                    ; $67DD: $70
    rst RST_38                                    ; $67DE: $FF
    rst RST_38                                    ; $67DF: $FF
    ld c, d                                       ; $67E0: $4A
    ld [hl], b                                    ; $67E1: $70
    rst RST_38                                    ; $67E2: $FF
    rst RST_38                                    ; $67E3: $FF
    ld l, $70                                     ; $67E4: $2E $70
    rst RST_38                                    ; $67E6: $FF
    rst RST_38                                    ; $67E7: $FF
    ld l, c                                       ; $67E8: $69
    ld [hl], b                                    ; $67E9: $70
    rst RST_38                                    ; $67EA: $FF
    rst RST_38                                    ; $67EB: $FF
    ld a, d                                       ; $67EC: $7A
    ld [hl], b                                    ; $67ED: $70
    rst RST_38                                    ; $67EE: $FF
    rst RST_38                                    ; $67EF: $FF
    ld e, b                                       ; $67F0: $58
    ld [hl], b                                    ; $67F1: $70
    rst RST_38                                    ; $67F2: $FF
    rst RST_38                                    ; $67F3: $FF
    sbc a                                         ; $67F4: $9F
    ld [hl], b                                    ; $67F5: $70
    rst RST_38                                    ; $67F6: $FF
    rst RST_38                                    ; $67F7: $FF
    or e                                          ; $67F8: $B3
    ld [hl], b                                    ; $67F9: $70
    rst RST_38                                    ; $67FA: $FF
    rst RST_38                                    ; $67FB: $FF
    adc e                                         ; $67FC: $8B
    ld [hl], b                                    ; $67FD: $70
    rst RST_38                                    ; $67FE: $FF
    rst RST_38                                    ; $67FF: $FF
    sbc $70                                       ; $6800: $DE $70
    rst RST_38                                    ; $6802: $FF
    rst RST_38                                    ; $6803: $FF
    push af                                       ; $6804: $F5
    ld [hl], b                                    ; $6805: $70
    rst RST_38                                    ; $6806: $FF
    rst RST_38                                    ; $6807: $FF
    rst RST_00                                    ; $6808: $C7
    ld [hl], b                                    ; $6809: $70
    rst RST_38                                    ; $680A: $FF
    rst RST_38                                    ; $680B: $FF
    ld h, $71                                     ; $680C: $26 $71
    rst RST_38                                    ; $680E: $FF
    rst RST_38                                    ; $680F: $FF
    ld b, b                                       ; $6810: $40
    ld [hl], c                                    ; $6811: $71
    rst RST_38                                    ; $6812: $FF
    rst RST_38                                    ; $6813: $FF
    inc c                                         ; $6814: $0C
    ld [hl], c                                    ; $6815: $71
    rst RST_38                                    ; $6816: $FF
    rst RST_38                                    ; $6817: $FF
    ld [hl], a                                    ; $6818: $77
    ld [hl], c                                    ; $6819: $71
    rst RST_38                                    ; $681A: $FF
    rst RST_38                                    ; $681B: $FF
    sub h                                         ; $681C: $94
    ld [hl], c                                    ; $681D: $71
    rst RST_38                                    ; $681E: $FF
    rst RST_38                                    ; $681F: $FF
    ld e, d                                       ; $6820: $5A
    ld [hl], c                                    ; $6821: $71
    rst RST_38                                    ; $6822: $FF
    rst RST_38                                    ; $6823: $FF
    rst RST_38                                    ; $6824: $FF
    rst RST_38                                    ; $6825: $FF
    cp a                                          ; $6826: $BF
    ld [hl], c                                    ; $6827: $71
    rst RST_38                                    ; $6828: $FF
    rst RST_38                                    ; $6829: $FF
    call $FF71                                    ; $682A: $CD $71 $FF
    rst RST_38                                    ; $682D: $FF
    or c                                          ; $682E: $B1
    ld [hl], c                                    ; $682F: $71
    rst RST_38                                    ; $6830: $FF
    rst RST_38                                    ; $6831: $FF
    db $EC                                        ; $6832: $EC
    ld [hl], c                                    ; $6833: $71
    rst RST_38                                    ; $6834: $FF
    rst RST_38                                    ; $6835: $FF
    db $FD                                        ; $6836: $FD
    ld [hl], c                                    ; $6837: $71
    rst RST_38                                    ; $6838: $FF
    rst RST_38                                    ; $6839: $FF
    db $DB                                        ; $683A: $DB
    ld [hl], c                                    ; $683B: $71
    rst RST_38                                    ; $683C: $FF
    rst RST_38                                    ; $683D: $FF
    ld [hl+], a                                   ; $683E: $22
    ld [hl], d                                    ; $683F: $72
    rst RST_38                                    ; $6840: $FF
    rst RST_38                                    ; $6841: $FF
    ld [hl], $72                                  ; $6842: $36 $72
    rst RST_38                                    ; $6844: $FF
    rst RST_38                                    ; $6845: $FF
    ld c, $72                                     ; $6846: $0E $72
    rst RST_38                                    ; $6848: $FF
    rst RST_38                                    ; $6849: $FF
    ld h, c                                       ; $684A: $61
    ld [hl], d                                    ; $684B: $72
    rst RST_38                                    ; $684C: $FF
    rst RST_38                                    ; $684D: $FF
    ld a, b                                       ; $684E: $78
    ld [hl], d                                    ; $684F: $72
    rst RST_38                                    ; $6850: $FF
    rst RST_38                                    ; $6851: $FF
    ld c, d                                       ; $6852: $4A
    ld [hl], d                                    ; $6853: $72
    rst RST_38                                    ; $6854: $FF
    rst RST_38                                    ; $6855: $FF
    xor c                                         ; $6856: $A9
    ld [hl], d                                    ; $6857: $72
    rst RST_38                                    ; $6858: $FF
    rst RST_38                                    ; $6859: $FF
    jp $FF72                                      ; $685A: $C3 $72 $FF


    rst RST_38                                    ; $685D: $FF
    adc a                                         ; $685E: $8F
    ld [hl], d                                    ; $685F: $72
    rst RST_38                                    ; $6860: $FF
    rst RST_38                                    ; $6861: $FF
    ld a, [$FF72]                                 ; $6862: $FA $72 $FF
    rst RST_38                                    ; $6865: $FF
    rla                                           ; $6866: $17
    ld [hl], e                                    ; $6867: $73
    rst RST_38                                    ; $6868: $FF

jr_004_6869:
    rst RST_38                                    ; $6869: $FF
    db $DD                                        ; $686A: $DD
    ld [hl], d                                    ; $686B: $72
    rst RST_38                                    ; $686C: $FF
    rst RST_38                                    ; $686D: $FF
    ld d, h                                       ; $686E: $54
    ld [hl], e                                    ; $686F: $73
    rst RST_38                                    ; $6870: $FF
    rst RST_38                                    ; $6871: $FF
    ld [hl], h                                    ; $6872: $74
    ld [hl], e                                    ; $6873: $73
    rst RST_38                                    ; $6874: $FF
    rst RST_38                                    ; $6875: $FF
    inc [hl]                                      ; $6876: $34
    ld [hl], e                                    ; $6877: $73
    rst RST_38                                    ; $6878: $FF
    rst RST_38                                    ; $6879: $FF
    rst RST_38                                    ; $687A: $FF
    rst RST_38                                    ; $687B: $FF
    ld a, [$FF75]                                 ; $687C: $FA $75 $FF
    rst RST_38                                    ; $687F: $FF
    ld [$FF76], sp                                ; $6880: $08 $76 $FF
    rst RST_38                                    ; $6883: $FF
    db $EC                                        ; $6884: $EC
    ld [hl], l                                    ; $6885: $75
    rst RST_38                                    ; $6886: $FF
    rst RST_38                                    ; $6887: $FF
    daa                                           ; $6888: $27
    halt                                          ; $6889: $76
    rst RST_38                                    ; $688A: $FF
    rst RST_38                                    ; $688B: $FF
    jr c, jr_004_6904                             ; $688C: $38 $76

    rst RST_38                                    ; $688E: $FF
    rst RST_38                                    ; $688F: $FF
    ld d, $76                                     ; $6890: $16 $76
    rst RST_38                                    ; $6892: $FF
    rst RST_38                                    ; $6893: $FF
    ld e, l                                       ; $6894: $5D
    halt                                          ; $6895: $76
    rst RST_38                                    ; $6896: $FF
    rst RST_38                                    ; $6897: $FF
    ld [hl], c                                    ; $6898: $71
    halt                                          ; $6899: $76
    rst RST_38                                    ; $689A: $FF
    rst RST_38                                    ; $689B: $FF
    ld c, c                                       ; $689C: $49
    halt                                          ; $689D: $76
    rst RST_38                                    ; $689E: $FF
    rst RST_38                                    ; $689F: $FF
    sbc h                                         ; $68A0: $9C
    halt                                          ; $68A1: $76
    rst RST_38                                    ; $68A2: $FF
    rst RST_38                                    ; $68A3: $FF
    or e                                          ; $68A4: $B3
    halt                                          ; $68A5: $76
    rst RST_38                                    ; $68A6: $FF
    rst RST_38                                    ; $68A7: $FF
    add l                                         ; $68A8: $85
    halt                                          ; $68A9: $76
    rst RST_38                                    ; $68AA: $FF
    rst RST_38                                    ; $68AB: $FF
    db $E4                                        ; $68AC: $E4
    halt                                          ; $68AD: $76
    rst RST_38                                    ; $68AE: $FF
    rst RST_38                                    ; $68AF: $FF
    cp $76                                        ; $68B0: $FE $76
    rst RST_38                                    ; $68B2: $FF
    rst RST_38                                    ; $68B3: $FF
    jp z, $FF76                                   ; $68B4: $CA $76 $FF

    rst RST_38                                    ; $68B7: $FF
    dec [hl]                                      ; $68B8: $35
    ld [hl], a                                    ; $68B9: $77
    rst RST_38                                    ; $68BA: $FF
    rst RST_38                                    ; $68BB: $FF
    ld d, d                                       ; $68BC: $52
    ld [hl], a                                    ; $68BD: $77
    rst RST_38                                    ; $68BE: $FF
    rst RST_38                                    ; $68BF: $FF
    jr jr_004_6939                                ; $68C0: $18 $77

    rst RST_38                                    ; $68C2: $FF
    rst RST_38                                    ; $68C3: $FF
    adc a                                         ; $68C4: $8F
    ld [hl], a                                    ; $68C5: $77
    rst RST_38                                    ; $68C6: $FF
    rst RST_38                                    ; $68C7: $FF
    xor a                                         ; $68C8: $AF
    ld [hl], a                                    ; $68C9: $77
    rst RST_38                                    ; $68CA: $FF
    rst RST_38                                    ; $68CB: $FF
    ld l, a                                       ; $68CC: $6F
    ld [hl], a                                    ; $68CD: $77
    rst RST_38                                    ; $68CE: $FF
    rst RST_38                                    ; $68CF: $FF
    ldh a, [c]                                    ; $68D0: $F2
    ld [hl], a                                    ; $68D1: $77
    rst RST_38                                    ; $68D2: $FF
    rst RST_38                                    ; $68D3: $FF
    dec d                                         ; $68D4: $15
    ld a, b                                       ; $68D5: $78
    rst RST_38                                    ; $68D6: $FF
    rst RST_38                                    ; $68D7: $FF
    rst RST_08                                    ; $68D8: $CF
    ld [hl], a                                    ; $68D9: $77
    rst RST_38                                    ; $68DA: $FF
    rst RST_38                                    ; $68DB: $FF
    rst RST_38                                    ; $68DC: $FF
    rst RST_38                                    ; $68DD: $FF
    add b                                         ; $68DE: $80
    nop                                           ; $68DF: $00
    nop                                           ; $68E0: $00
    nop                                           ; $68E1: $00
    nop                                           ; $68E2: $00
    nop                                           ; $68E3: $00
    nop                                           ; $68E4: $00
    rst RST_08                                    ; $68E5: $CF
    db $E4                                        ; $68E6: $E4
    jr nz, jr_004_6869                            ; $68E7: $20 $80

    nop                                           ; $68E9: $00
    nop                                           ; $68EA: $00
    nop                                           ; $68EB: $00
    nop                                           ; $68EC: $00
    nop                                           ; $68ED: $00
    ld b, b                                       ; $68EE: $40
    pop de                                        ; $68EF: $D1
    db $E4                                        ; $68F0: $E4
    jr nz, @+$07                                  ; $68F1: $20 $05

    nop                                           ; $68F3: $00
    nop                                           ; $68F4: $00
    nop                                           ; $68F5: $00
    nop                                           ; $68F6: $00
    ld [$0000], sp                                ; $68F7: $08 $00 $00
    db $10                                        ; $68FA: $10
    inc d                                         ; $68FB: $14
    nop                                           ; $68FC: $00
    jr jr_004_68FF                                ; $68FD: $18 $00

jr_004_68FF:
    nop                                           ; $68FF: $00
    jr nz, jr_004_6902                            ; $6900: $20 $00

jr_004_6902:
    add b                                         ; $6902: $80
    nop                                           ; $6903: $00

jr_004_6904:
    nop                                           ; $6904: $00
    nop                                           ; $6905: $00
    nop                                           ; $6906: $00
    nop                                           ; $6907: $00
    inc c                                         ; $6908: $0C
    ld l, c                                       ; $6909: $69
    db $E4                                        ; $690A: $E4
    jr nz, jr_004_690E                            ; $690B: $20 $01

    nop                                           ; $690D: $00

jr_004_690E:
    nop                                           ; $690E: $00
    inc d                                         ; $690F: $14
    add b                                         ; $6910: $80
    nop                                           ; $6911: $00
    nop                                           ; $6912: $00
    nop                                           ; $6913: $00
    nop                                           ; $6914: $00
    nop                                           ; $6915: $00
    ld a, [de]                                    ; $6916: $1A
    ld l, c                                       ; $6917: $69
    db $E4                                        ; $6918: $E4
    jr nz, jr_004_691C                            ; $6919: $20 $01

    inc bc                                        ; $691B: $03

jr_004_691C:
    nop                                           ; $691C: $00
    inc d                                         ; $691D: $14
    add b                                         ; $691E: $80
    nop                                           ; $691F: $00
    nop                                           ; $6920: $00
    nop                                           ; $6921: $00
    nop                                           ; $6922: $00
    nop                                           ; $6923: $00
    jr z, jr_004_698F                             ; $6924: $28 $69

    db $E4                                        ; $6926: $E4
    jr nz, jr_004_692A                            ; $6927: $20 $01

    rst RST_38                                    ; $6929: $FF

jr_004_692A:
    nop                                           ; $692A: $00
    inc d                                         ; $692B: $14
    add b                                         ; $692C: $80
    nop                                           ; $692D: $00
    nop                                           ; $692E: $00
    nop                                           ; $692F: $00
    nop                                           ; $6930: $00
    nop                                           ; $6931: $00
    ld [hl], $69                                  ; $6932: $36 $69
    db $E4                                        ; $6934: $E4
    jr nz, jr_004_6939                            ; $6935: $20 $02

    nop                                           ; $6937: $00
    nop                                           ; $6938: $00

jr_004_6939:
    inc d                                         ; $6939: $14
    nop                                           ; $693A: $00
    ld [$8012], sp                                ; $693B: $08 $12 $80
    nop                                           ; $693E: $00
    nop                                           ; $693F: $00
    nop                                           ; $6940: $00
    nop                                           ; $6941: $00
    nop                                           ; $6942: $00
    ld b, a                                       ; $6943: $47
    ld l, c                                       ; $6944: $69
    db $E4                                        ; $6945: $E4
    jr nz, jr_004_694A                            ; $6946: $20 $02

    nop                                           ; $6948: $00
    nop                                           ; $6949: $00

jr_004_694A:
    inc d                                         ; $694A: $14
    inc bc                                        ; $694B: $03
    ld [$8012], sp                                ; $694C: $08 $12 $80
    nop                                           ; $694F: $00
    nop                                           ; $6950: $00
    nop                                           ; $6951: $00
    nop                                           ; $6952: $00
    nop                                           ; $6953: $00
    ld e, b                                       ; $6954: $58
    ld l, c                                       ; $6955: $69
    db $E4                                        ; $6956: $E4
    jr nz, jr_004_695B                            ; $6957: $20 $02

    nop                                           ; $6959: $00
    nop                                           ; $695A: $00

jr_004_695B:
    inc d                                         ; $695B: $14
    rst RST_38                                    ; $695C: $FF
    ld [$8012], sp                                ; $695D: $08 $12 $80
    nop                                           ; $6960: $00
    nop                                           ; $6961: $00
    nop                                           ; $6962: $00
    nop                                           ; $6963: $00
    nop                                           ; $6964: $00
    ld l, c                                       ; $6965: $69
    ld l, c                                       ; $6966: $69
    db $E4                                        ; $6967: $E4
    jr nz, jr_004_696D                            ; $6968: $20 $03

    nop                                           ; $696A: $00
    nop                                           ; $696B: $00
    inc d                                         ; $696C: $14

jr_004_696D:
    nop                                           ; $696D: $00
    ld [$0012], sp                                ; $696E: $08 $12 $00
    db $10                                        ; $6971: $10
    ld d, $80                                     ; $6972: $16 $80
    nop                                           ; $6974: $00
    nop                                           ; $6975: $00
    nop                                           ; $6976: $00
    nop                                           ; $6977: $00
    nop                                           ; $6978: $00
    ld a, l                                       ; $6979: $7D
    ld l, c                                       ; $697A: $69
    db $E4                                        ; $697B: $E4
    jr nz, jr_004_6981                            ; $697C: $20 $03

    nop                                           ; $697E: $00
    nop                                           ; $697F: $00
    inc d                                         ; $6980: $14

jr_004_6981:
    nop                                           ; $6981: $00
    ld [$0312], sp                                ; $6982: $08 $12 $03
    db $10                                        ; $6985: $10
    ld d, $80                                     ; $6986: $16 $80
    nop                                           ; $6988: $00
    nop                                           ; $6989: $00
    nop                                           ; $698A: $00
    nop                                           ; $698B: $00
    nop                                           ; $698C: $00
    sub c                                         ; $698D: $91
    ld l, c                                       ; $698E: $69

jr_004_698F:
    db $E4                                        ; $698F: $E4
    jr nz, jr_004_6995                            ; $6990: $20 $03

    nop                                           ; $6992: $00
    nop                                           ; $6993: $00
    inc d                                         ; $6994: $14

jr_004_6995:
    nop                                           ; $6995: $00
    ld [$FF12], sp                                ; $6996: $08 $12 $FF
    db $10                                        ; $6999: $10
    ld d, $80                                     ; $699A: $16 $80
    nop                                           ; $699C: $00
    nop                                           ; $699D: $00
    nop                                           ; $699E: $00
    nop                                           ; $699F: $00
    nop                                           ; $69A0: $00
    and l                                         ; $69A1: $A5
    ld l, c                                       ; $69A2: $69
    db $E4                                        ; $69A3: $E4
    jr nz, jr_004_69AA                            ; $69A4: $20 $04

    nop                                           ; $69A6: $00
    nop                                           ; $69A7: $00
    inc d                                         ; $69A8: $14
    nop                                           ; $69A9: $00

jr_004_69AA:
    ld [$0012], sp                                ; $69AA: $08 $12 $00
    db $10                                        ; $69AD: $10
    ld d, $00                                     ; $69AE: $16 $00
    jr @+$12                                      ; $69B0: $18 $10

    add b                                         ; $69B2: $80
    nop                                           ; $69B3: $00
    nop                                           ; $69B4: $00
    nop                                           ; $69B5: $00
    nop                                           ; $69B6: $00
    nop                                           ; $69B7: $00
    cp h                                          ; $69B8: $BC
    ld l, c                                       ; $69B9: $69
    db $E4                                        ; $69BA: $E4
    jr nz, jr_004_69C1                            ; $69BB: $20 $04

    nop                                           ; $69BD: $00
    nop                                           ; $69BE: $00
    inc d                                         ; $69BF: $14
    nop                                           ; $69C0: $00

jr_004_69C1:
    ld [$0012], sp                                ; $69C1: $08 $12 $00
    db $10                                        ; $69C4: $10
    ld d, $03                                     ; $69C5: $16 $03
    jr @+$12                                      ; $69C7: $18 $10

    add b                                         ; $69C9: $80
    nop                                           ; $69CA: $00
    nop                                           ; $69CB: $00
    nop                                           ; $69CC: $00
    nop                                           ; $69CD: $00
    nop                                           ; $69CE: $00
    db $D3                                        ; $69CF: $D3
    ld l, c                                       ; $69D0: $69
    db $E4                                        ; $69D1: $E4
    jr nz, jr_004_69D8                            ; $69D2: $20 $04

    nop                                           ; $69D4: $00
    nop                                           ; $69D5: $00
    inc d                                         ; $69D6: $14
    nop                                           ; $69D7: $00

jr_004_69D8:
    ld [$0012], sp                                ; $69D8: $08 $12 $00
    db $10                                        ; $69DB: $10
    ld d, $FF                                     ; $69DC: $16 $FF
    jr @+$12                                      ; $69DE: $18 $10

    add b                                         ; $69E0: $80
    nop                                           ; $69E1: $00
    nop                                           ; $69E2: $00
    nop                                           ; $69E3: $00
    nop                                           ; $69E4: $00
    nop                                           ; $69E5: $00
    ld [$E469], a                                 ; $69E6: $EA $69 $E4
    jr nz, @+$07                                  ; $69E9: $20 $05

    nop                                           ; $69EB: $00
    nop                                           ; $69EC: $00
    inc d                                         ; $69ED: $14
    nop                                           ; $69EE: $00
    ld [$0012], sp                                ; $69EF: $08 $12 $00
    db $10                                        ; $69F2: $10
    ld d, $00                                     ; $69F3: $16 $00
    jr jr_004_6A07                                ; $69F5: $18 $10

    nop                                           ; $69F7: $00
    jr nz, jr_004_69FE                            ; $69F8: $20 $04

    add b                                         ; $69FA: $80
    nop                                           ; $69FB: $00
    nop                                           ; $69FC: $00
    nop                                           ; $69FD: $00

jr_004_69FE:
    nop                                           ; $69FE: $00
    nop                                           ; $69FF: $00
    inc b                                         ; $6A00: $04
    ld l, d                                       ; $6A01: $6A
    db $E4                                        ; $6A02: $E4
    jr nz, @+$07                                  ; $6A03: $20 $05

    nop                                           ; $6A05: $00
    nop                                           ; $6A06: $00

jr_004_6A07:
    inc d                                         ; $6A07: $14
    nop                                           ; $6A08: $00
    ld [$0012], sp                                ; $6A09: $08 $12 $00
    db $10                                        ; $6A0C: $10
    ld d, $00                                     ; $6A0D: $16 $00
    jr jr_004_6A21                                ; $6A0F: $18 $10

    inc bc                                        ; $6A11: $03
    jr nz, jr_004_6A18                            ; $6A12: $20 $04

    add b                                         ; $6A14: $80
    nop                                           ; $6A15: $00
    nop                                           ; $6A16: $00
    nop                                           ; $6A17: $00

jr_004_6A18:
    nop                                           ; $6A18: $00
    nop                                           ; $6A19: $00
    ld e, $6A                                     ; $6A1A: $1E $6A
    db $E4                                        ; $6A1C: $E4
    jr nz, @+$07                                  ; $6A1D: $20 $05

    nop                                           ; $6A1F: $00
    nop                                           ; $6A20: $00

jr_004_6A21:
    inc d                                         ; $6A21: $14
    nop                                           ; $6A22: $00
    ld [$0012], sp                                ; $6A23: $08 $12 $00
    db $10                                        ; $6A26: $10
    ld d, $00                                     ; $6A27: $16 $00
    jr jr_004_6A3B                                ; $6A29: $18 $10

    rst RST_38                                    ; $6A2B: $FF
    jr nz, jr_004_6A32                            ; $6A2C: $20 $04

    add b                                         ; $6A2E: $80
    nop                                           ; $6A2F: $00
    nop                                           ; $6A30: $00
    nop                                           ; $6A31: $00

jr_004_6A32:
    nop                                           ; $6A32: $00
    nop                                           ; $6A33: $00
    jr c, jr_004_6AA0                             ; $6A34: $38 $6A

    db $E4                                        ; $6A36: $E4
    jr nz, @+$08                                  ; $6A37: $20 $06

    nop                                           ; $6A39: $00
    nop                                           ; $6A3A: $00

jr_004_6A3B:
    inc d                                         ; $6A3B: $14
    nop                                           ; $6A3C: $00
    ld [$0012], sp                                ; $6A3D: $08 $12 $00
    db $10                                        ; $6A40: $10
    ld d, $00                                     ; $6A41: $16 $00
    jr @+$12                                      ; $6A43: $18 $10

    nop                                           ; $6A45: $00
    jr nz, jr_004_6A4C                            ; $6A46: $20 $04

    nop                                           ; $6A48: $00
    jr nc, jr_004_6A65                            ; $6A49: $30 $1A

    add b                                         ; $6A4B: $80

jr_004_6A4C:
    nop                                           ; $6A4C: $00
    nop                                           ; $6A4D: $00
    nop                                           ; $6A4E: $00
    nop                                           ; $6A4F: $00
    nop                                           ; $6A50: $00
    ld d, l                                       ; $6A51: $55
    ld l, d                                       ; $6A52: $6A
    db $E4                                        ; $6A53: $E4
    jr nz, @+$08                                  ; $6A54: $20 $06

    nop                                           ; $6A56: $00
    nop                                           ; $6A57: $00
    inc d                                         ; $6A58: $14
    nop                                           ; $6A59: $00
    ld [$0012], sp                                ; $6A5A: $08 $12 $00
    db $10                                        ; $6A5D: $10
    ld d, $00                                     ; $6A5E: $16 $00
    jr @+$12                                      ; $6A60: $18 $10

    nop                                           ; $6A62: $00
    jr nz, jr_004_6A69                            ; $6A63: $20 $04

jr_004_6A65:
    inc bc                                        ; $6A65: $03
    jr nc, jr_004_6A82                            ; $6A66: $30 $1A

    add b                                         ; $6A68: $80

jr_004_6A69:
    nop                                           ; $6A69: $00
    nop                                           ; $6A6A: $00
    nop                                           ; $6A6B: $00
    nop                                           ; $6A6C: $00
    nop                                           ; $6A6D: $00
    ld [hl], d                                    ; $6A6E: $72
    ld l, d                                       ; $6A6F: $6A
    db $E4                                        ; $6A70: $E4
    jr nz, @+$08                                  ; $6A71: $20 $06

    nop                                           ; $6A73: $00
    nop                                           ; $6A74: $00
    inc d                                         ; $6A75: $14
    nop                                           ; $6A76: $00
    ld [$0012], sp                                ; $6A77: $08 $12 $00
    db $10                                        ; $6A7A: $10
    ld d, $00                                     ; $6A7B: $16 $00
    jr @+$12                                      ; $6A7D: $18 $10

    nop                                           ; $6A7F: $00
    jr nz, jr_004_6A86                            ; $6A80: $20 $04

jr_004_6A82:
    rst RST_38                                    ; $6A82: $FF
    jr nc, jr_004_6A9F                            ; $6A83: $30 $1A

    add b                                         ; $6A85: $80

jr_004_6A86:
    nop                                           ; $6A86: $00
    nop                                           ; $6A87: $00
    nop                                           ; $6A88: $00
    nop                                           ; $6A89: $00
    nop                                           ; $6A8A: $00
    adc a                                         ; $6A8B: $8F
    ld l, d                                       ; $6A8C: $6A
    db $EC                                        ; $6A8D: $EC
    jr nz, jr_004_6A91                            ; $6A8E: $20 $01

    nop                                           ; $6A90: $00

jr_004_6A91:
    nop                                           ; $6A91: $00
    ld [$0080], sp                                ; $6A92: $08 $80 $00
    nop                                           ; $6A95: $00
    nop                                           ; $6A96: $00
    nop                                           ; $6A97: $00
    nop                                           ; $6A98: $00
    sbc l                                         ; $6A99: $9D
    ld l, d                                       ; $6A9A: $6A
    db $EC                                        ; $6A9B: $EC
    jr nz, jr_004_6A9F                            ; $6A9C: $20 $01

    inc bc                                        ; $6A9E: $03

jr_004_6A9F:
    nop                                           ; $6A9F: $00

jr_004_6AA0:
    ld [$0080], sp                                ; $6AA0: $08 $80 $00
    nop                                           ; $6AA3: $00
    nop                                           ; $6AA4: $00
    nop                                           ; $6AA5: $00
    nop                                           ; $6AA6: $00
    xor e                                         ; $6AA7: $AB
    ld l, d                                       ; $6AA8: $6A
    db $EC                                        ; $6AA9: $EC
    jr nz, jr_004_6AAD                            ; $6AAA: $20 $01

    rst RST_38                                    ; $6AAC: $FF

jr_004_6AAD:
    nop                                           ; $6AAD: $00
    ld [$0080], sp                                ; $6AAE: $08 $80 $00
    nop                                           ; $6AB1: $00
    nop                                           ; $6AB2: $00
    nop                                           ; $6AB3: $00
    nop                                           ; $6AB4: $00
    cp c                                          ; $6AB5: $B9
    ld l, d                                       ; $6AB6: $6A
    db $EC                                        ; $6AB7: $EC
    jr nz, jr_004_6ABC                            ; $6AB8: $20 $02

    nop                                           ; $6ABA: $00
    nop                                           ; $6ABB: $00

jr_004_6ABC:
    ld [$0800], sp                                ; $6ABC: $08 $00 $08
    inc c                                         ; $6ABF: $0C
    add b                                         ; $6AC0: $80
    nop                                           ; $6AC1: $00
    nop                                           ; $6AC2: $00
    nop                                           ; $6AC3: $00
    nop                                           ; $6AC4: $00
    nop                                           ; $6AC5: $00
    jp z, $EC6A                                   ; $6AC6: $CA $6A $EC

    jr nz, jr_004_6ACD                            ; $6AC9: $20 $02

    nop                                           ; $6ACB: $00
    nop                                           ; $6ACC: $00

jr_004_6ACD:
    ld [$0803], sp                                ; $6ACD: $08 $03 $08
    inc c                                         ; $6AD0: $0C
    add b                                         ; $6AD1: $80
    nop                                           ; $6AD2: $00
    nop                                           ; $6AD3: $00
    nop                                           ; $6AD4: $00
    nop                                           ; $6AD5: $00
    nop                                           ; $6AD6: $00
    db $DB                                        ; $6AD7: $DB
    ld l, d                                       ; $6AD8: $6A
    db $EC                                        ; $6AD9: $EC
    jr nz, jr_004_6ADE                            ; $6ADA: $20 $02

    nop                                           ; $6ADC: $00
    nop                                           ; $6ADD: $00

jr_004_6ADE:
    ld [$08FF], sp                                ; $6ADE: $08 $FF $08
    inc c                                         ; $6AE1: $0C
    add b                                         ; $6AE2: $80
    nop                                           ; $6AE3: $00
    nop                                           ; $6AE4: $00
    nop                                           ; $6AE5: $00
    nop                                           ; $6AE6: $00
    nop                                           ; $6AE7: $00
    db $EC                                        ; $6AE8: $EC
    ld l, d                                       ; $6AE9: $6A
    db $EC                                        ; $6AEA: $EC
    jr nz, @+$05                                  ; $6AEB: $20 $03

    nop                                           ; $6AED: $00
    nop                                           ; $6AEE: $00
    ld [$0800], sp                                ; $6AEF: $08 $00 $08
    inc c                                         ; $6AF2: $0C
    nop                                           ; $6AF3: $00
    db $10                                        ; $6AF4: $10
    db $10                                        ; $6AF5: $10
    add b                                         ; $6AF6: $80
    nop                                           ; $6AF7: $00
    nop                                           ; $6AF8: $00
    nop                                           ; $6AF9: $00
    nop                                           ; $6AFA: $00
    nop                                           ; $6AFB: $00
    nop                                           ; $6AFC: $00
    ld l, e                                       ; $6AFD: $6B
    db $EC                                        ; $6AFE: $EC
    jr nz, @+$05                                  ; $6AFF: $20 $03

    nop                                           ; $6B01: $00
    nop                                           ; $6B02: $00
    ld [$0800], sp                                ; $6B03: $08 $00 $08
    inc c                                         ; $6B06: $0C
    inc bc                                        ; $6B07: $03
    db $10                                        ; $6B08: $10
    db $10                                        ; $6B09: $10
    add b                                         ; $6B0A: $80
    nop                                           ; $6B0B: $00
    nop                                           ; $6B0C: $00
    nop                                           ; $6B0D: $00
    nop                                           ; $6B0E: $00
    nop                                           ; $6B0F: $00
    inc d                                         ; $6B10: $14
    ld l, e                                       ; $6B11: $6B
    db $EC                                        ; $6B12: $EC
    jr nz, @+$05                                  ; $6B13: $20 $03

    nop                                           ; $6B15: $00
    nop                                           ; $6B16: $00
    ld [$0800], sp                                ; $6B17: $08 $00 $08
    inc c                                         ; $6B1A: $0C
    rst RST_38                                    ; $6B1B: $FF
    db $10                                        ; $6B1C: $10
    db $10                                        ; $6B1D: $10
    add b                                         ; $6B1E: $80
    nop                                           ; $6B1F: $00
    nop                                           ; $6B20: $00
    nop                                           ; $6B21: $00
    nop                                           ; $6B22: $00
    nop                                           ; $6B23: $00
    jr z, @+$6D                                   ; $6B24: $28 $6B

    db $EC                                        ; $6B26: $EC
    jr nz, @+$06                                  ; $6B27: $20 $04

    nop                                           ; $6B29: $00
    nop                                           ; $6B2A: $00
    ld [$0800], sp                                ; $6B2B: $08 $00 $08
    inc c                                         ; $6B2E: $0C
    nop                                           ; $6B2F: $00
    db $10                                        ; $6B30: $10
    stop                                          ; $6B31: $10 $00
    jr jr_004_6B37                                ; $6B33: $18 $02

    add b                                         ; $6B35: $80
    nop                                           ; $6B36: $00

jr_004_6B37:
    nop                                           ; $6B37: $00
    nop                                           ; $6B38: $00
    nop                                           ; $6B39: $00
    nop                                           ; $6B3A: $00
    ccf                                           ; $6B3B: $3F
    ld l, e                                       ; $6B3C: $6B
    db $EC                                        ; $6B3D: $EC
    jr nz, @+$06                                  ; $6B3E: $20 $04

    nop                                           ; $6B40: $00
    nop                                           ; $6B41: $00
    ld [$0800], sp                                ; $6B42: $08 $00 $08
    inc c                                         ; $6B45: $0C
    nop                                           ; $6B46: $00
    db $10                                        ; $6B47: $10
    db $10                                        ; $6B48: $10
    inc bc                                        ; $6B49: $03
    jr jr_004_6B4E                                ; $6B4A: $18 $02

    add b                                         ; $6B4C: $80
    nop                                           ; $6B4D: $00

jr_004_6B4E:
    nop                                           ; $6B4E: $00
    nop                                           ; $6B4F: $00
    nop                                           ; $6B50: $00
    nop                                           ; $6B51: $00
    ld d, [hl]                                    ; $6B52: $56
    ld l, e                                       ; $6B53: $6B
    db $EC                                        ; $6B54: $EC
    jr nz, @+$06                                  ; $6B55: $20 $04

    nop                                           ; $6B57: $00
    nop                                           ; $6B58: $00
    ld [$0800], sp                                ; $6B59: $08 $00 $08
    inc c                                         ; $6B5C: $0C
    nop                                           ; $6B5D: $00
    db $10                                        ; $6B5E: $10
    db $10                                        ; $6B5F: $10
    rst RST_38                                    ; $6B60: $FF
    jr jr_004_6B65                                ; $6B61: $18 $02

    add b                                         ; $6B63: $80
    nop                                           ; $6B64: $00

jr_004_6B65:
    nop                                           ; $6B65: $00
    nop                                           ; $6B66: $00
    nop                                           ; $6B67: $00
    nop                                           ; $6B68: $00
    ld l, l                                       ; $6B69: $6D
    ld l, e                                       ; $6B6A: $6B
    db $EC                                        ; $6B6B: $EC
    jr nz, jr_004_6B73                            ; $6B6C: $20 $05

    nop                                           ; $6B6E: $00
    nop                                           ; $6B6F: $00
    ld [$0800], sp                                ; $6B70: $08 $00 $08

jr_004_6B73:
    inc c                                         ; $6B73: $0C
    nop                                           ; $6B74: $00
    db $10                                        ; $6B75: $10
    stop                                          ; $6B76: $10 $00
    jr @+$04                                      ; $6B78: $18 $02

    nop                                           ; $6B7A: $00
    jr nz, @+$10                                  ; $6B7B: $20 $0E

    add b                                         ; $6B7D: $80
    nop                                           ; $6B7E: $00
    nop                                           ; $6B7F: $00
    nop                                           ; $6B80: $00
    nop                                           ; $6B81: $00
    nop                                           ; $6B82: $00
    add a                                         ; $6B83: $87
    ld l, e                                       ; $6B84: $6B
    db $EC                                        ; $6B85: $EC
    jr nz, jr_004_6B8D                            ; $6B86: $20 $05

    nop                                           ; $6B88: $00
    nop                                           ; $6B89: $00
    ld [$0800], sp                                ; $6B8A: $08 $00 $08

jr_004_6B8D:
    inc c                                         ; $6B8D: $0C
    nop                                           ; $6B8E: $00
    db $10                                        ; $6B8F: $10
    stop                                          ; $6B90: $10 $00
    jr @+$04                                      ; $6B92: $18 $02

    inc bc                                        ; $6B94: $03
    jr nz, @+$10                                  ; $6B95: $20 $0E

    add b                                         ; $6B97: $80
    nop                                           ; $6B98: $00
    nop                                           ; $6B99: $00
    nop                                           ; $6B9A: $00
    nop                                           ; $6B9B: $00
    nop                                           ; $6B9C: $00
    and c                                         ; $6B9D: $A1
    ld l, e                                       ; $6B9E: $6B
    db $EC                                        ; $6B9F: $EC
    jr nz, jr_004_6BA7                            ; $6BA0: $20 $05

    nop                                           ; $6BA2: $00
    nop                                           ; $6BA3: $00
    ld [$0800], sp                                ; $6BA4: $08 $00 $08

jr_004_6BA7:
    inc c                                         ; $6BA7: $0C
    nop                                           ; $6BA8: $00
    db $10                                        ; $6BA9: $10
    stop                                          ; $6BAA: $10 $00
    jr @+$04                                      ; $6BAC: $18 $02

    rst RST_38                                    ; $6BAE: $FF
    jr nz, @+$10                                  ; $6BAF: $20 $0E

    add b                                         ; $6BB1: $80
    nop                                           ; $6BB2: $00
    nop                                           ; $6BB3: $00
    nop                                           ; $6BB4: $00
    nop                                           ; $6BB5: $00
    nop                                           ; $6BB6: $00
    cp e                                          ; $6BB7: $BB
    ld l, e                                       ; $6BB8: $6B
    db $EC                                        ; $6BB9: $EC
    jr nz, jr_004_6BC2                            ; $6BBA: $20 $06

    nop                                           ; $6BBC: $00
    nop                                           ; $6BBD: $00
    ld [$0800], sp                                ; $6BBE: $08 $00 $08
    inc c                                         ; $6BC1: $0C

jr_004_6BC2:
    nop                                           ; $6BC2: $00
    db $10                                        ; $6BC3: $10
    stop                                          ; $6BC4: $10 $00
    jr @+$04                                      ; $6BC6: $18 $02

    nop                                           ; $6BC8: $00
    jr nz, jr_004_6BD9                            ; $6BC9: $20 $0E

    nop                                           ; $6BCB: $00
    jr z, jr_004_6BCE                             ; $6BCC: $28 $00

jr_004_6BCE:
    add b                                         ; $6BCE: $80
    nop                                           ; $6BCF: $00
    nop                                           ; $6BD0: $00
    nop                                           ; $6BD1: $00
    nop                                           ; $6BD2: $00
    nop                                           ; $6BD3: $00
    ret c                                         ; $6BD4: $D8

    ld l, e                                       ; $6BD5: $6B
    db $EC                                        ; $6BD6: $EC
    jr nz, jr_004_6BDF                            ; $6BD7: $20 $06

jr_004_6BD9:
    nop                                           ; $6BD9: $00
    nop                                           ; $6BDA: $00
    ld [$0800], sp                                ; $6BDB: $08 $00 $08
    inc c                                         ; $6BDE: $0C

jr_004_6BDF:
    nop                                           ; $6BDF: $00
    db $10                                        ; $6BE0: $10
    stop                                          ; $6BE1: $10 $00
    jr @+$04                                      ; $6BE3: $18 $02

    nop                                           ; $6BE5: $00
    jr nz, jr_004_6BF6                            ; $6BE6: $20 $0E

    inc bc                                        ; $6BE8: $03
    jr z, jr_004_6BEB                             ; $6BE9: $28 $00

jr_004_6BEB:
    add b                                         ; $6BEB: $80
    nop                                           ; $6BEC: $00
    nop                                           ; $6BED: $00
    nop                                           ; $6BEE: $00
    nop                                           ; $6BEF: $00
    nop                                           ; $6BF0: $00
    push af                                       ; $6BF1: $F5
    ld l, e                                       ; $6BF2: $6B
    db $EC                                        ; $6BF3: $EC
    jr nz, jr_004_6BFC                            ; $6BF4: $20 $06

jr_004_6BF6:
    nop                                           ; $6BF6: $00
    nop                                           ; $6BF7: $00
    ld [$0800], sp                                ; $6BF8: $08 $00 $08
    inc c                                         ; $6BFB: $0C

jr_004_6BFC:
    nop                                           ; $6BFC: $00
    db $10                                        ; $6BFD: $10
    stop                                          ; $6BFE: $10 $00
    jr @+$04                                      ; $6C00: $18 $02

    nop                                           ; $6C02: $00
    jr nz, jr_004_6C13                            ; $6C03: $20 $0E

    rst RST_38                                    ; $6C05: $FF
    jr z, jr_004_6C08                             ; $6C06: $28 $00

jr_004_6C08:
    add b                                         ; $6C08: $80
    nop                                           ; $6C09: $00
    nop                                           ; $6C0A: $00
    nop                                           ; $6C0B: $00
    nop                                           ; $6C0C: $00
    nop                                           ; $6C0D: $00
    ld [de], a                                    ; $6C0E: $12
    ld l, h                                       ; $6C0F: $6C
    db $EC                                        ; $6C10: $EC
    jr nz, jr_004_6C14                            ; $6C11: $20 $01

jr_004_6C13:
    nop                                           ; $6C13: $00

jr_004_6C14:
    nop                                           ; $6C14: $00
    inc d                                         ; $6C15: $14
    add b                                         ; $6C16: $80
    nop                                           ; $6C17: $00
    nop                                           ; $6C18: $00
    nop                                           ; $6C19: $00
    nop                                           ; $6C1A: $00
    nop                                           ; $6C1B: $00
    jr nz, @+$6E                                  ; $6C1C: $20 $6C

    db $EC                                        ; $6C1E: $EC
    jr nz, jr_004_6C22                            ; $6C1F: $20 $01

    inc bc                                        ; $6C21: $03

jr_004_6C22:
    nop                                           ; $6C22: $00
    inc d                                         ; $6C23: $14
    add b                                         ; $6C24: $80
    nop                                           ; $6C25: $00
    nop                                           ; $6C26: $00
    nop                                           ; $6C27: $00
    nop                                           ; $6C28: $00
    nop                                           ; $6C29: $00
    ld l, $6C                                     ; $6C2A: $2E $6C
    db $EC                                        ; $6C2C: $EC
    jr nz, jr_004_6C30                            ; $6C2D: $20 $01

    rst RST_38                                    ; $6C2F: $FF

jr_004_6C30:
    nop                                           ; $6C30: $00
    inc d                                         ; $6C31: $14
    add b                                         ; $6C32: $80
    nop                                           ; $6C33: $00
    nop                                           ; $6C34: $00
    nop                                           ; $6C35: $00
    nop                                           ; $6C36: $00
    nop                                           ; $6C37: $00
    inc a                                         ; $6C38: $3C
    ld l, h                                       ; $6C39: $6C
    db $EC                                        ; $6C3A: $EC
    jr nz, jr_004_6C3F                            ; $6C3B: $20 $02

    nop                                           ; $6C3D: $00
    nop                                           ; $6C3E: $00

jr_004_6C3F:
    inc d                                         ; $6C3F: $14
    nop                                           ; $6C40: $00
    ld [$8006], sp                                ; $6C41: $08 $06 $80
    nop                                           ; $6C44: $00
    nop                                           ; $6C45: $00
    nop                                           ; $6C46: $00
    nop                                           ; $6C47: $00
    nop                                           ; $6C48: $00
    ld c, l                                       ; $6C49: $4D
    ld l, h                                       ; $6C4A: $6C
    db $EC                                        ; $6C4B: $EC
    jr nz, jr_004_6C50                            ; $6C4C: $20 $02

    nop                                           ; $6C4E: $00
    nop                                           ; $6C4F: $00

jr_004_6C50:
    inc d                                         ; $6C50: $14
    inc bc                                        ; $6C51: $03
    ld [$8006], sp                                ; $6C52: $08 $06 $80
    nop                                           ; $6C55: $00
    nop                                           ; $6C56: $00
    nop                                           ; $6C57: $00
    nop                                           ; $6C58: $00
    nop                                           ; $6C59: $00
    ld e, [hl]                                    ; $6C5A: $5E
    ld l, h                                       ; $6C5B: $6C
    db $EC                                        ; $6C5C: $EC
    jr nz, jr_004_6C61                            ; $6C5D: $20 $02

    nop                                           ; $6C5F: $00
    nop                                           ; $6C60: $00

jr_004_6C61:
    inc d                                         ; $6C61: $14
    rst RST_38                                    ; $6C62: $FF
    ld [$8006], sp                                ; $6C63: $08 $06 $80
    nop                                           ; $6C66: $00
    nop                                           ; $6C67: $00
    nop                                           ; $6C68: $00
    nop                                           ; $6C69: $00
    nop                                           ; $6C6A: $00
    ld l, a                                       ; $6C6B: $6F
    ld l, h                                       ; $6C6C: $6C
    db $EC                                        ; $6C6D: $EC
    jr nz, jr_004_6C73                            ; $6C6E: $20 $03

    nop                                           ; $6C70: $00
    nop                                           ; $6C71: $00
    inc d                                         ; $6C72: $14

jr_004_6C73:
    nop                                           ; $6C73: $00
    ld [$0006], sp                                ; $6C74: $08 $06 $00
    db $10                                        ; $6C77: $10
    ld [bc], a                                    ; $6C78: $02
    add b                                         ; $6C79: $80
    nop                                           ; $6C7A: $00
    nop                                           ; $6C7B: $00
    nop                                           ; $6C7C: $00
    nop                                           ; $6C7D: $00
    nop                                           ; $6C7E: $00
    add e                                         ; $6C7F: $83
    ld l, h                                       ; $6C80: $6C
    db $EC                                        ; $6C81: $EC
    jr nz, jr_004_6C87                            ; $6C82: $20 $03

    nop                                           ; $6C84: $00
    nop                                           ; $6C85: $00
    inc d                                         ; $6C86: $14

jr_004_6C87:
    nop                                           ; $6C87: $00
    ld [$0306], sp                                ; $6C88: $08 $06 $03
    db $10                                        ; $6C8B: $10
    ld [bc], a                                    ; $6C8C: $02
    add b                                         ; $6C8D: $80
    nop                                           ; $6C8E: $00
    nop                                           ; $6C8F: $00
    nop                                           ; $6C90: $00
    nop                                           ; $6C91: $00
    nop                                           ; $6C92: $00
    sub a                                         ; $6C93: $97
    ld l, h                                       ; $6C94: $6C
    db $EC                                        ; $6C95: $EC
    jr nz, jr_004_6C9B                            ; $6C96: $20 $03

    nop                                           ; $6C98: $00
    nop                                           ; $6C99: $00
    inc d                                         ; $6C9A: $14

jr_004_6C9B:
    nop                                           ; $6C9B: $00
    ld [$FF06], sp                                ; $6C9C: $08 $06 $FF
    db $10                                        ; $6C9F: $10
    ld [bc], a                                    ; $6CA0: $02
    add b                                         ; $6CA1: $80
    nop                                           ; $6CA2: $00
    nop                                           ; $6CA3: $00
    nop                                           ; $6CA4: $00
    nop                                           ; $6CA5: $00
    nop                                           ; $6CA6: $00
    xor e                                         ; $6CA7: $AB
    ld l, h                                       ; $6CA8: $6C
    db $EC                                        ; $6CA9: $EC
    jr nz, jr_004_6CB0                            ; $6CAA: $20 $04

    nop                                           ; $6CAC: $00
    nop                                           ; $6CAD: $00
    inc d                                         ; $6CAE: $14
    nop                                           ; $6CAF: $00

jr_004_6CB0:
    ld [$0006], sp                                ; $6CB0: $08 $06 $00
    db $10                                        ; $6CB3: $10
    ld [bc], a                                    ; $6CB4: $02
    nop                                           ; $6CB5: $00
    jr jr_004_6CBC                                ; $6CB6: $18 $04

    add b                                         ; $6CB8: $80
    nop                                           ; $6CB9: $00
    nop                                           ; $6CBA: $00
    nop                                           ; $6CBB: $00

jr_004_6CBC:
    nop                                           ; $6CBC: $00
    nop                                           ; $6CBD: $00
    jp nz, $EC6C                                  ; $6CBE: $C2 $6C $EC

    jr nz, jr_004_6CC7                            ; $6CC1: $20 $04

    nop                                           ; $6CC3: $00
    nop                                           ; $6CC4: $00
    inc d                                         ; $6CC5: $14
    nop                                           ; $6CC6: $00

jr_004_6CC7:
    ld [$0006], sp                                ; $6CC7: $08 $06 $00
    db $10                                        ; $6CCA: $10
    ld [bc], a                                    ; $6CCB: $02
    inc bc                                        ; $6CCC: $03
    jr jr_004_6CD3                                ; $6CCD: $18 $04

    add b                                         ; $6CCF: $80
    nop                                           ; $6CD0: $00
    nop                                           ; $6CD1: $00
    nop                                           ; $6CD2: $00

jr_004_6CD3:
    nop                                           ; $6CD3: $00
    nop                                           ; $6CD4: $00
    reti                                          ; $6CD5: $D9


    ld l, h                                       ; $6CD6: $6C
    db $EC                                        ; $6CD7: $EC
    jr nz, jr_004_6CDE                            ; $6CD8: $20 $04

    nop                                           ; $6CDA: $00
    nop                                           ; $6CDB: $00
    inc d                                         ; $6CDC: $14
    nop                                           ; $6CDD: $00

jr_004_6CDE:
    ld [$0006], sp                                ; $6CDE: $08 $06 $00
    db $10                                        ; $6CE1: $10
    ld [bc], a                                    ; $6CE2: $02
    rst RST_38                                    ; $6CE3: $FF
    jr jr_004_6CEA                                ; $6CE4: $18 $04

    add b                                         ; $6CE6: $80
    nop                                           ; $6CE7: $00
    nop                                           ; $6CE8: $00
    nop                                           ; $6CE9: $00

jr_004_6CEA:
    nop                                           ; $6CEA: $00
    nop                                           ; $6CEB: $00
    ldh a, [$FF6C]                                ; $6CEC: $F0 $6C
    db $EC                                        ; $6CEE: $EC
    jr nz, @+$07                                  ; $6CEF: $20 $05

    nop                                           ; $6CF1: $00
    nop                                           ; $6CF2: $00
    inc d                                         ; $6CF3: $14
    nop                                           ; $6CF4: $00
    ld [$0006], sp                                ; $6CF5: $08 $06 $00
    db $10                                        ; $6CF8: $10
    ld [bc], a                                    ; $6CF9: $02
    nop                                           ; $6CFA: $00
    jr jr_004_6D01                                ; $6CFB: $18 $04

    nop                                           ; $6CFD: $00
    jr nz, jr_004_6D18                            ; $6CFE: $20 $18

    add b                                         ; $6D00: $80

jr_004_6D01:
    nop                                           ; $6D01: $00
    nop                                           ; $6D02: $00
    nop                                           ; $6D03: $00
    nop                                           ; $6D04: $00
    nop                                           ; $6D05: $00
    ld a, [bc]                                    ; $6D06: $0A
    ld l, l                                       ; $6D07: $6D
    db $EC                                        ; $6D08: $EC
    jr nz, @+$07                                  ; $6D09: $20 $05

    nop                                           ; $6D0B: $00
    nop                                           ; $6D0C: $00
    inc d                                         ; $6D0D: $14
    nop                                           ; $6D0E: $00
    ld [$0006], sp                                ; $6D0F: $08 $06 $00
    db $10                                        ; $6D12: $10
    ld [bc], a                                    ; $6D13: $02
    nop                                           ; $6D14: $00
    jr jr_004_6D1B                                ; $6D15: $18 $04

    inc bc                                        ; $6D17: $03

jr_004_6D18:
    jr nz, jr_004_6D32                            ; $6D18: $20 $18

    add b                                         ; $6D1A: $80

jr_004_6D1B:
    nop                                           ; $6D1B: $00
    nop                                           ; $6D1C: $00
    nop                                           ; $6D1D: $00
    nop                                           ; $6D1E: $00
    nop                                           ; $6D1F: $00
    inc h                                         ; $6D20: $24
    ld l, l                                       ; $6D21: $6D
    db $EC                                        ; $6D22: $EC
    jr nz, @+$07                                  ; $6D23: $20 $05

    nop                                           ; $6D25: $00
    nop                                           ; $6D26: $00
    inc d                                         ; $6D27: $14
    nop                                           ; $6D28: $00
    ld [$0006], sp                                ; $6D29: $08 $06 $00
    db $10                                        ; $6D2C: $10
    ld [bc], a                                    ; $6D2D: $02
    nop                                           ; $6D2E: $00
    jr jr_004_6D35                                ; $6D2F: $18 $04

    rst RST_38                                    ; $6D31: $FF

jr_004_6D32:
    jr nz, jr_004_6D4C                            ; $6D32: $20 $18

    add b                                         ; $6D34: $80

jr_004_6D35:
    nop                                           ; $6D35: $00
    nop                                           ; $6D36: $00
    nop                                           ; $6D37: $00
    nop                                           ; $6D38: $00
    nop                                           ; $6D39: $00
    ld a, $6D                                     ; $6D3A: $3E $6D
    ld hl, sp+$20                                 ; $6D3C: $F8 $20
    ld bc, $0000                                  ; $6D3E: $01 $00 $00
    ld c, $80                                     ; $6D41: $0E $80
    nop                                           ; $6D43: $00
    nop                                           ; $6D44: $00
    nop                                           ; $6D45: $00
    nop                                           ; $6D46: $00
    nop                                           ; $6D47: $00
    ld c, h                                       ; $6D48: $4C
    ld l, l                                       ; $6D49: $6D
    ld hl, sp+$20                                 ; $6D4A: $F8 $20

jr_004_6D4C:
    ld bc, $0003                                  ; $6D4C: $01 $03 $00
    ld c, $80                                     ; $6D4F: $0E $80
    nop                                           ; $6D51: $00
    nop                                           ; $6D52: $00
    nop                                           ; $6D53: $00
    nop                                           ; $6D54: $00
    nop                                           ; $6D55: $00
    ld e, d                                       ; $6D56: $5A
    ld l, l                                       ; $6D57: $6D
    ld hl, sp+$20                                 ; $6D58: $F8 $20
    ld bc, $00FF                                  ; $6D5A: $01 $FF $00
    ld c, $80                                     ; $6D5D: $0E $80
    nop                                           ; $6D5F: $00
    nop                                           ; $6D60: $00
    nop                                           ; $6D61: $00
    nop                                           ; $6D62: $00
    nop                                           ; $6D63: $00
    ld l, b                                       ; $6D64: $68
    ld l, l                                       ; $6D65: $6D
    ld hl, sp+$20                                 ; $6D66: $F8 $20
    ld [bc], a                                    ; $6D68: $02
    nop                                           ; $6D69: $00
    nop                                           ; $6D6A: $00
    ld c, $00                                     ; $6D6B: $0E $00
    ld [$8016], sp                                ; $6D6D: $08 $16 $80
    nop                                           ; $6D70: $00
    nop                                           ; $6D71: $00
    nop                                           ; $6D72: $00
    nop                                           ; $6D73: $00
    nop                                           ; $6D74: $00
    ld a, c                                       ; $6D75: $79
    ld l, l                                       ; $6D76: $6D
    ld hl, sp+$20                                 ; $6D77: $F8 $20
    ld [bc], a                                    ; $6D79: $02
    nop                                           ; $6D7A: $00
    nop                                           ; $6D7B: $00
    ld c, $03                                     ; $6D7C: $0E $03
    ld [$8016], sp                                ; $6D7E: $08 $16 $80
    nop                                           ; $6D81: $00
    nop                                           ; $6D82: $00
    nop                                           ; $6D83: $00
    nop                                           ; $6D84: $00
    nop                                           ; $6D85: $00
    adc d                                         ; $6D86: $8A
    ld l, l                                       ; $6D87: $6D
    ld hl, sp+$20                                 ; $6D88: $F8 $20
    ld [bc], a                                    ; $6D8A: $02
    nop                                           ; $6D8B: $00
    nop                                           ; $6D8C: $00
    ld c, $FF                                     ; $6D8D: $0E $FF
    ld [$8016], sp                                ; $6D8F: $08 $16 $80
    nop                                           ; $6D92: $00
    nop                                           ; $6D93: $00
    nop                                           ; $6D94: $00
    nop                                           ; $6D95: $00
    nop                                           ; $6D96: $00
    sbc e                                         ; $6D97: $9B
    ld l, l                                       ; $6D98: $6D
    ld hl, sp+$20                                 ; $6D99: $F8 $20
    inc bc                                        ; $6D9B: $03
    nop                                           ; $6D9C: $00
    nop                                           ; $6D9D: $00
    ld c, $00                                     ; $6D9E: $0E $00
    ld [$0016], sp                                ; $6DA0: $08 $16 $00
    stop                                          ; $6DA3: $10 $00
    add b                                         ; $6DA5: $80
    nop                                           ; $6DA6: $00
    nop                                           ; $6DA7: $00
    nop                                           ; $6DA8: $00
    nop                                           ; $6DA9: $00
    nop                                           ; $6DAA: $00
    xor a                                         ; $6DAB: $AF
    ld l, l                                       ; $6DAC: $6D
    ld hl, sp+$20                                 ; $6DAD: $F8 $20
    inc bc                                        ; $6DAF: $03
    nop                                           ; $6DB0: $00
    nop                                           ; $6DB1: $00
    ld c, $00                                     ; $6DB2: $0E $00
    ld [$0316], sp                                ; $6DB4: $08 $16 $03
    stop                                          ; $6DB7: $10 $00
    add b                                         ; $6DB9: $80
    nop                                           ; $6DBA: $00
    nop                                           ; $6DBB: $00
    nop                                           ; $6DBC: $00
    nop                                           ; $6DBD: $00
    nop                                           ; $6DBE: $00
    jp $F86D                                      ; $6DBF: $C3 $6D $F8


    jr nz, @+$05                                  ; $6DC2: $20 $03

    nop                                           ; $6DC4: $00
    nop                                           ; $6DC5: $00
    ld c, $00                                     ; $6DC6: $0E $00
    ld [$FF16], sp                                ; $6DC8: $08 $16 $FF
    stop                                          ; $6DCB: $10 $00
    add b                                         ; $6DCD: $80
    nop                                           ; $6DCE: $00
    nop                                           ; $6DCF: $00
    nop                                           ; $6DD0: $00
    nop                                           ; $6DD1: $00
    nop                                           ; $6DD2: $00
    rst RST_10                                    ; $6DD3: $D7
    ld l, l                                       ; $6DD4: $6D
    db $E4                                        ; $6DD5: $E4
    jr nz, jr_004_6DD9                            ; $6DD6: $20 $01

    nop                                           ; $6DD8: $00

jr_004_6DD9:
    nop                                           ; $6DD9: $00
    ld e, $80                                     ; $6DDA: $1E $80
    nop                                           ; $6DDC: $00
    nop                                           ; $6DDD: $00
    nop                                           ; $6DDE: $00
    nop                                           ; $6DDF: $00
    nop                                           ; $6DE0: $00
    push hl                                       ; $6DE1: $E5
    ld l, l                                       ; $6DE2: $6D
    db $E4                                        ; $6DE3: $E4
    jr nz, jr_004_6DE7                            ; $6DE4: $20 $01

    inc bc                                        ; $6DE6: $03

jr_004_6DE7:
    nop                                           ; $6DE7: $00
    ld e, $80                                     ; $6DE8: $1E $80
    nop                                           ; $6DEA: $00
    nop                                           ; $6DEB: $00
    nop                                           ; $6DEC: $00
    nop                                           ; $6DED: $00
    nop                                           ; $6DEE: $00
    di                                            ; $6DEF: $F3
    ld l, l                                       ; $6DF0: $6D
    db $E4                                        ; $6DF1: $E4
    jr nz, jr_004_6DF5                            ; $6DF2: $20 $01

    rst RST_38                                    ; $6DF4: $FF

jr_004_6DF5:
    nop                                           ; $6DF5: $00
    ld e, $80                                     ; $6DF6: $1E $80
    nop                                           ; $6DF8: $00
    nop                                           ; $6DF9: $00
    nop                                           ; $6DFA: $00
    nop                                           ; $6DFB: $00
    nop                                           ; $6DFC: $00
    ld bc, $E46E                                  ; $6DFD: $01 $6E $E4
    jr nz, jr_004_6E04                            ; $6E00: $20 $02

    nop                                           ; $6E02: $00
    nop                                           ; $6E03: $00

jr_004_6E04:
    ld e, $00                                     ; $6E04: $1E $00
    ld [$800C], sp                                ; $6E06: $08 $0C $80
    nop                                           ; $6E09: $00
    nop                                           ; $6E0A: $00
    nop                                           ; $6E0B: $00
    nop                                           ; $6E0C: $00
    nop                                           ; $6E0D: $00
    ld [de], a                                    ; $6E0E: $12
    ld l, [hl]                                    ; $6E0F: $6E
    db $E4                                        ; $6E10: $E4
    jr nz, jr_004_6E15                            ; $6E11: $20 $02

    nop                                           ; $6E13: $00
    nop                                           ; $6E14: $00

jr_004_6E15:
    ld e, $03                                     ; $6E15: $1E $03
    ld [$800C], sp                                ; $6E17: $08 $0C $80
    nop                                           ; $6E1A: $00
    nop                                           ; $6E1B: $00
    nop                                           ; $6E1C: $00
    nop                                           ; $6E1D: $00
    nop                                           ; $6E1E: $00
    inc hl                                        ; $6E1F: $23
    ld l, [hl]                                    ; $6E20: $6E
    db $E4                                        ; $6E21: $E4
    jr nz, jr_004_6E26                            ; $6E22: $20 $02

    nop                                           ; $6E24: $00
    nop                                           ; $6E25: $00

jr_004_6E26:
    ld e, $FF                                     ; $6E26: $1E $FF
    ld [$800C], sp                                ; $6E28: $08 $0C $80
    nop                                           ; $6E2B: $00
    nop                                           ; $6E2C: $00
    nop                                           ; $6E2D: $00
    nop                                           ; $6E2E: $00
    nop                                           ; $6E2F: $00
    inc [hl]                                      ; $6E30: $34
    ld l, [hl]                                    ; $6E31: $6E
    db $E4                                        ; $6E32: $E4
    jr nz, @+$05                                  ; $6E33: $20 $03

    nop                                           ; $6E35: $00
    nop                                           ; $6E36: $00
    ld e, $00                                     ; $6E37: $1E $00
    ld [$000C], sp                                ; $6E39: $08 $0C $00
    db $10                                        ; $6E3C: $10
    ld [de], a                                    ; $6E3D: $12
    add b                                         ; $6E3E: $80
    nop                                           ; $6E3F: $00
    nop                                           ; $6E40: $00
    nop                                           ; $6E41: $00
    nop                                           ; $6E42: $00
    nop                                           ; $6E43: $00
    ld c, b                                       ; $6E44: $48
    ld l, [hl]                                    ; $6E45: $6E
    db $E4                                        ; $6E46: $E4
    jr nz, @+$05                                  ; $6E47: $20 $03

    nop                                           ; $6E49: $00
    nop                                           ; $6E4A: $00
    ld e, $00                                     ; $6E4B: $1E $00
    ld [$030C], sp                                ; $6E4D: $08 $0C $03
    db $10                                        ; $6E50: $10
    ld [de], a                                    ; $6E51: $12
    add b                                         ; $6E52: $80
    nop                                           ; $6E53: $00
    nop                                           ; $6E54: $00
    nop                                           ; $6E55: $00
    nop                                           ; $6E56: $00
    nop                                           ; $6E57: $00
    ld e, h                                       ; $6E58: $5C
    ld l, [hl]                                    ; $6E59: $6E
    db $E4                                        ; $6E5A: $E4
    jr nz, @+$05                                  ; $6E5B: $20 $03

    nop                                           ; $6E5D: $00
    nop                                           ; $6E5E: $00
    ld e, $00                                     ; $6E5F: $1E $00
    ld [$FF0C], sp                                ; $6E61: $08 $0C $FF
    db $10                                        ; $6E64: $10
    ld [de], a                                    ; $6E65: $12
    add b                                         ; $6E66: $80
    nop                                           ; $6E67: $00
    nop                                           ; $6E68: $00
    nop                                           ; $6E69: $00
    nop                                           ; $6E6A: $00
    nop                                           ; $6E6B: $00
    ld [hl], b                                    ; $6E6C: $70
    ld l, [hl]                                    ; $6E6D: $6E
    db $E4                                        ; $6E6E: $E4
    jr nz, jr_004_6E75                            ; $6E6F: $20 $04

    nop                                           ; $6E71: $00
    nop                                           ; $6E72: $00
    ld e, $00                                     ; $6E73: $1E $00

jr_004_6E75:
    ld [$000C], sp                                ; $6E75: $08 $0C $00
    db $10                                        ; $6E78: $10
    ld [de], a                                    ; $6E79: $12
    nop                                           ; $6E7A: $00
    jr jr_004_6E85                                ; $6E7B: $18 $08

    add b                                         ; $6E7D: $80
    nop                                           ; $6E7E: $00
    nop                                           ; $6E7F: $00
    nop                                           ; $6E80: $00
    nop                                           ; $6E81: $00
    nop                                           ; $6E82: $00
    add a                                         ; $6E83: $87
    ld l, [hl]                                    ; $6E84: $6E

jr_004_6E85:
    db $E4                                        ; $6E85: $E4
    jr nz, jr_004_6E8C                            ; $6E86: $20 $04

    nop                                           ; $6E88: $00
    nop                                           ; $6E89: $00
    ld e, $00                                     ; $6E8A: $1E $00

jr_004_6E8C:
    ld [$000C], sp                                ; $6E8C: $08 $0C $00
    db $10                                        ; $6E8F: $10
    ld [de], a                                    ; $6E90: $12
    inc bc                                        ; $6E91: $03
    jr jr_004_6E9C                                ; $6E92: $18 $08

    add b                                         ; $6E94: $80
    nop                                           ; $6E95: $00
    nop                                           ; $6E96: $00
    nop                                           ; $6E97: $00
    nop                                           ; $6E98: $00
    nop                                           ; $6E99: $00
    sbc [hl]                                      ; $6E9A: $9E
    ld l, [hl]                                    ; $6E9B: $6E

jr_004_6E9C:
    db $E4                                        ; $6E9C: $E4
    jr nz, jr_004_6EA3                            ; $6E9D: $20 $04

    nop                                           ; $6E9F: $00
    nop                                           ; $6EA0: $00
    ld e, $00                                     ; $6EA1: $1E $00

jr_004_6EA3:
    ld [$000C], sp                                ; $6EA3: $08 $0C $00
    db $10                                        ; $6EA6: $10
    ld [de], a                                    ; $6EA7: $12
    rst RST_38                                    ; $6EA8: $FF
    jr jr_004_6EB3                                ; $6EA9: $18 $08

    add b                                         ; $6EAB: $80
    nop                                           ; $6EAC: $00
    nop                                           ; $6EAD: $00
    nop                                           ; $6EAE: $00
    nop                                           ; $6EAF: $00
    nop                                           ; $6EB0: $00
    or l                                          ; $6EB1: $B5
    ld l, [hl]                                    ; $6EB2: $6E

jr_004_6EB3:
    db $E4                                        ; $6EB3: $E4
    jr nz, @+$07                                  ; $6EB4: $20 $05

    nop                                           ; $6EB6: $00
    nop                                           ; $6EB7: $00
    ld e, $00                                     ; $6EB8: $1E $00
    ld [$000C], sp                                ; $6EBA: $08 $0C $00
    db $10                                        ; $6EBD: $10
    ld [de], a                                    ; $6EBE: $12
    nop                                           ; $6EBF: $00
    jr jr_004_6ECA                                ; $6EC0: $18 $08

    nop                                           ; $6EC2: $00
    jr z, jr_004_6EE5                             ; $6EC3: $28 $20

    add b                                         ; $6EC5: $80
    nop                                           ; $6EC6: $00
    nop                                           ; $6EC7: $00
    nop                                           ; $6EC8: $00
    nop                                           ; $6EC9: $00

jr_004_6ECA:
    nop                                           ; $6ECA: $00
    rst RST_08                                    ; $6ECB: $CF
    ld l, [hl]                                    ; $6ECC: $6E
    db $E4                                        ; $6ECD: $E4
    jr nz, @+$07                                  ; $6ECE: $20 $05

    nop                                           ; $6ED0: $00
    nop                                           ; $6ED1: $00
    ld e, $00                                     ; $6ED2: $1E $00
    ld [$000C], sp                                ; $6ED4: $08 $0C $00
    db $10                                        ; $6ED7: $10
    ld [de], a                                    ; $6ED8: $12
    nop                                           ; $6ED9: $00
    jr jr_004_6EE4                                ; $6EDA: $18 $08

    inc bc                                        ; $6EDC: $03
    jr z, jr_004_6EFF                             ; $6EDD: $28 $20

    add b                                         ; $6EDF: $80
    nop                                           ; $6EE0: $00
    nop                                           ; $6EE1: $00
    nop                                           ; $6EE2: $00
    nop                                           ; $6EE3: $00

jr_004_6EE4:
    nop                                           ; $6EE4: $00

jr_004_6EE5:
    jp hl                                         ; $6EE5: $E9


    ld l, [hl]                                    ; $6EE6: $6E
    db $E4                                        ; $6EE7: $E4
    jr nz, @+$07                                  ; $6EE8: $20 $05

    nop                                           ; $6EEA: $00
    nop                                           ; $6EEB: $00
    ld e, $00                                     ; $6EEC: $1E $00
    ld [$000C], sp                                ; $6EEE: $08 $0C $00
    db $10                                        ; $6EF1: $10
    ld [de], a                                    ; $6EF2: $12
    nop                                           ; $6EF3: $00
    jr jr_004_6EFE                                ; $6EF4: $18 $08

    rst RST_38                                    ; $6EF6: $FF
    jr z, jr_004_6F19                             ; $6EF7: $28 $20

    add b                                         ; $6EF9: $80
    nop                                           ; $6EFA: $00
    nop                                           ; $6EFB: $00
    nop                                           ; $6EFC: $00
    nop                                           ; $6EFD: $00

jr_004_6EFE:
    nop                                           ; $6EFE: $00

jr_004_6EFF:
    inc bc                                        ; $6EFF: $03
    ld l, a                                       ; $6F00: $6F
    db $E4                                        ; $6F01: $E4
    jr nz, @+$08                                  ; $6F02: $20 $06

    nop                                           ; $6F04: $00
    nop                                           ; $6F05: $00
    ld e, $00                                     ; $6F06: $1E $00
    ld [$000C], sp                                ; $6F08: $08 $0C $00
    db $10                                        ; $6F0B: $10
    ld [de], a                                    ; $6F0C: $12
    nop                                           ; $6F0D: $00
    jr jr_004_6F18                                ; $6F0E: $18 $08

    nop                                           ; $6F10: $00
    jr z, jr_004_6F33                             ; $6F11: $28 $20

    nop                                           ; $6F13: $00
    jr nc, jr_004_6F2E                            ; $6F14: $30 $18

    add b                                         ; $6F16: $80
    nop                                           ; $6F17: $00

jr_004_6F18:
    nop                                           ; $6F18: $00

jr_004_6F19:
    nop                                           ; $6F19: $00
    nop                                           ; $6F1A: $00
    nop                                           ; $6F1B: $00
    jr nz, jr_004_6F8D                            ; $6F1C: $20 $6F

    db $E4                                        ; $6F1E: $E4
    jr nz, @+$08                                  ; $6F1F: $20 $06

    nop                                           ; $6F21: $00
    nop                                           ; $6F22: $00
    ld e, $00                                     ; $6F23: $1E $00
    ld [$000C], sp                                ; $6F25: $08 $0C $00
    db $10                                        ; $6F28: $10
    ld [de], a                                    ; $6F29: $12
    nop                                           ; $6F2A: $00
    jr jr_004_6F35                                ; $6F2B: $18 $08

    nop                                           ; $6F2D: $00

jr_004_6F2E:
    jr z, jr_004_6F50                             ; $6F2E: $28 $20

    inc bc                                        ; $6F30: $03
    jr nc, jr_004_6F4B                            ; $6F31: $30 $18

jr_004_6F33:
    add b                                         ; $6F33: $80
    nop                                           ; $6F34: $00

jr_004_6F35:
    nop                                           ; $6F35: $00
    nop                                           ; $6F36: $00
    nop                                           ; $6F37: $00
    nop                                           ; $6F38: $00
    dec a                                         ; $6F39: $3D
    ld l, a                                       ; $6F3A: $6F
    db $E4                                        ; $6F3B: $E4
    jr nz, @+$08                                  ; $6F3C: $20 $06

    nop                                           ; $6F3E: $00
    nop                                           ; $6F3F: $00
    ld e, $00                                     ; $6F40: $1E $00
    ld [$000C], sp                                ; $6F42: $08 $0C $00
    db $10                                        ; $6F45: $10
    ld [de], a                                    ; $6F46: $12
    nop                                           ; $6F47: $00
    jr jr_004_6F52                                ; $6F48: $18 $08

    nop                                           ; $6F4A: $00

jr_004_6F4B:
    jr z, jr_004_6F6D                             ; $6F4B: $28 $20

    rst RST_38                                    ; $6F4D: $FF
    jr nc, jr_004_6F68                            ; $6F4E: $30 $18

jr_004_6F50:
    add b                                         ; $6F50: $80
    nop                                           ; $6F51: $00

jr_004_6F52:
    nop                                           ; $6F52: $00
    nop                                           ; $6F53: $00
    nop                                           ; $6F54: $00
    nop                                           ; $6F55: $00
    ld e, d                                       ; $6F56: $5A
    ld l, a                                       ; $6F57: $6F
    ldh a, [rNR41]                                ; $6F58: $F0 $20
    ld bc, $0000                                  ; $6F5A: $01 $00 $00
    ld b, $80                                     ; $6F5D: $06 $80
    nop                                           ; $6F5F: $00
    nop                                           ; $6F60: $00
    nop                                           ; $6F61: $00
    nop                                           ; $6F62: $00
    nop                                           ; $6F63: $00
    ld l, b                                       ; $6F64: $68
    ld l, a                                       ; $6F65: $6F
    ldh a, [rNR41]                                ; $6F66: $F0 $20

jr_004_6F68:
    ld bc, $0003                                  ; $6F68: $01 $03 $00
    ld b, $80                                     ; $6F6B: $06 $80

jr_004_6F6D:
    nop                                           ; $6F6D: $00
    nop                                           ; $6F6E: $00
    nop                                           ; $6F6F: $00
    nop                                           ; $6F70: $00
    nop                                           ; $6F71: $00
    halt                                          ; $6F72: $76
    ld l, a                                       ; $6F73: $6F
    ldh a, [rNR41]                                ; $6F74: $F0 $20
    ld bc, $00FF                                  ; $6F76: $01 $FF $00
    ld b, $80                                     ; $6F79: $06 $80
    nop                                           ; $6F7B: $00
    nop                                           ; $6F7C: $00
    nop                                           ; $6F7D: $00
    nop                                           ; $6F7E: $00
    nop                                           ; $6F7F: $00
    add h                                         ; $6F80: $84
    ld l, a                                       ; $6F81: $6F
    ldh a, [rNR41]                                ; $6F82: $F0 $20
    ld [bc], a                                    ; $6F84: $02
    nop                                           ; $6F85: $00
    nop                                           ; $6F86: $00
    ld b, $00                                     ; $6F87: $06 $00
    ld [$801A], sp                                ; $6F89: $08 $1A $80
    nop                                           ; $6F8C: $00

jr_004_6F8D:
    nop                                           ; $6F8D: $00
    nop                                           ; $6F8E: $00
    nop                                           ; $6F8F: $00
    nop                                           ; $6F90: $00
    sub l                                         ; $6F91: $95
    ld l, a                                       ; $6F92: $6F
    ldh a, [rNR41]                                ; $6F93: $F0 $20
    ld [bc], a                                    ; $6F95: $02
    nop                                           ; $6F96: $00
    nop                                           ; $6F97: $00
    ld b, $03                                     ; $6F98: $06 $03
    ld [$801A], sp                                ; $6F9A: $08 $1A $80
    nop                                           ; $6F9D: $00
    nop                                           ; $6F9E: $00
    nop                                           ; $6F9F: $00
    nop                                           ; $6FA0: $00
    nop                                           ; $6FA1: $00
    and [hl]                                      ; $6FA2: $A6
    ld l, a                                       ; $6FA3: $6F
    ldh a, [rNR41]                                ; $6FA4: $F0 $20
    ld [bc], a                                    ; $6FA6: $02
    nop                                           ; $6FA7: $00
    nop                                           ; $6FA8: $00
    ld b, $FF                                     ; $6FA9: $06 $FF
    ld [$801A], sp                                ; $6FAB: $08 $1A $80
    nop                                           ; $6FAE: $00
    nop                                           ; $6FAF: $00
    nop                                           ; $6FB0: $00
    nop                                           ; $6FB1: $00
    nop                                           ; $6FB2: $00
    or a                                          ; $6FB3: $B7
    ld l, a                                       ; $6FB4: $6F
    ldh a, [rNR41]                                ; $6FB5: $F0 $20
    inc bc                                        ; $6FB7: $03
    nop                                           ; $6FB8: $00
    nop                                           ; $6FB9: $00
    ld b, $00                                     ; $6FBA: $06 $00
    ld [$001A], sp                                ; $6FBC: $08 $1A $00
    db $10                                        ; $6FBF: $10
    ld [bc], a                                    ; $6FC0: $02
    add b                                         ; $6FC1: $80
    nop                                           ; $6FC2: $00
    nop                                           ; $6FC3: $00
    nop                                           ; $6FC4: $00
    nop                                           ; $6FC5: $00
    nop                                           ; $6FC6: $00
    bit 5, a                                      ; $6FC7: $CB $6F
    ldh a, [rNR41]                                ; $6FC9: $F0 $20
    inc bc                                        ; $6FCB: $03
    nop                                           ; $6FCC: $00
    nop                                           ; $6FCD: $00
    ld b, $00                                     ; $6FCE: $06 $00
    ld [$031A], sp                                ; $6FD0: $08 $1A $03
    db $10                                        ; $6FD3: $10
    ld [bc], a                                    ; $6FD4: $02
    add b                                         ; $6FD5: $80
    nop                                           ; $6FD6: $00
    nop                                           ; $6FD7: $00
    nop                                           ; $6FD8: $00
    nop                                           ; $6FD9: $00
    nop                                           ; $6FDA: $00
    rst RST_18                                    ; $6FDB: $DF
    ld l, a                                       ; $6FDC: $6F
    ldh a, [rNR41]                                ; $6FDD: $F0 $20
    inc bc                                        ; $6FDF: $03
    nop                                           ; $6FE0: $00
    nop                                           ; $6FE1: $00
    ld b, $00                                     ; $6FE2: $06 $00
    ld [$FF1A], sp                                ; $6FE4: $08 $1A $FF
    db $10                                        ; $6FE7: $10
    ld [bc], a                                    ; $6FE8: $02
    add b                                         ; $6FE9: $80
    nop                                           ; $6FEA: $00
    nop                                           ; $6FEB: $00
    nop                                           ; $6FEC: $00
    nop                                           ; $6FED: $00
    nop                                           ; $6FEE: $00
    di                                            ; $6FEF: $F3
    ld l, a                                       ; $6FF0: $6F
    ldh a, [rNR41]                                ; $6FF1: $F0 $20
    inc b                                         ; $6FF3: $04
    nop                                           ; $6FF4: $00
    nop                                           ; $6FF5: $00
    ld b, $00                                     ; $6FF6: $06 $00
    ld [$001A], sp                                ; $6FF8: $08 $1A $00
    db $10                                        ; $6FFB: $10
    ld [bc], a                                    ; $6FFC: $02
    nop                                           ; $6FFD: $00
    jr jr_004_7022                                ; $6FFE: $18 $22

    add b                                         ; $7000: $80
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    nop                                           ; $7003: $00
    nop                                           ; $7004: $00
    nop                                           ; $7005: $00
    ld a, [bc]                                    ; $7006: $0A
    ld [hl], b                                    ; $7007: $70

Call_004_7008:
    ldh a, [rNR41]                                ; $7008: $F0 $20
    inc b                                         ; $700A: $04
    nop                                           ; $700B: $00
    nop                                           ; $700C: $00
    ld b, $00                                     ; $700D: $06 $00
    ld [$001A], sp                                ; $700F: $08 $1A $00
    db $10                                        ; $7012: $10
    ld [bc], a                                    ; $7013: $02
    inc bc                                        ; $7014: $03
    jr jr_004_7039                                ; $7015: $18 $22

    add b                                         ; $7017: $80
    nop                                           ; $7018: $00
    nop                                           ; $7019: $00
    nop                                           ; $701A: $00
    nop                                           ; $701B: $00
    nop                                           ; $701C: $00
    ld hl, $F070                                  ; $701D: $21 $70 $F0

jr_004_7020:
    jr nz, jr_004_7026                            ; $7020: $20 $04

jr_004_7022:
    nop                                           ; $7022: $00
    nop                                           ; $7023: $00
    ld b, $00                                     ; $7024: $06 $00

jr_004_7026:
    ld [$001A], sp                                ; $7026: $08 $1A $00
    db $10                                        ; $7029: $10
    ld [bc], a                                    ; $702A: $02
    rst RST_38                                    ; $702B: $FF
    jr jr_004_7050                                ; $702C: $18 $22

    add b                                         ; $702E: $80
    nop                                           ; $702F: $00
    nop                                           ; $7030: $00
    nop                                           ; $7031: $00
    nop                                           ; $7032: $00
    nop                                           ; $7033: $00

jr_004_7034:
    jr c, jr_004_70A6                             ; $7034: $38 $70

    db $E4                                        ; $7036: $E4
    jr nz, jr_004_703A                            ; $7037: $20 $01

jr_004_7039:
    nop                                           ; $7039: $00

jr_004_703A:
    nop                                           ; $703A: $00
    inc h                                         ; $703B: $24
    add b                                         ; $703C: $80
    nop                                           ; $703D: $00
    nop                                           ; $703E: $00
    nop                                           ; $703F: $00
    nop                                           ; $7040: $00
    nop                                           ; $7041: $00
    ld b, [hl]                                    ; $7042: $46
    ld [hl], b                                    ; $7043: $70
    db $E4                                        ; $7044: $E4
    jr nz, jr_004_7048                            ; $7045: $20 $01

    inc bc                                        ; $7047: $03

jr_004_7048:
    nop                                           ; $7048: $00
    inc h                                         ; $7049: $24
    add b                                         ; $704A: $80
    nop                                           ; $704B: $00
    nop                                           ; $704C: $00
    nop                                           ; $704D: $00
    nop                                           ; $704E: $00
    nop                                           ; $704F: $00

jr_004_7050:
    ld d, h                                       ; $7050: $54
    ld [hl], b                                    ; $7051: $70
    db $E4                                        ; $7052: $E4
    jr nz, jr_004_7056                            ; $7053: $20 $01

    rst RST_38                                    ; $7055: $FF

jr_004_7056:
    nop                                           ; $7056: $00
    inc h                                         ; $7057: $24
    add b                                         ; $7058: $80
    nop                                           ; $7059: $00
    nop                                           ; $705A: $00
    nop                                           ; $705B: $00
    nop                                           ; $705C: $00
    nop                                           ; $705D: $00
    ld h, d                                       ; $705E: $62
    ld [hl], b                                    ; $705F: $70
    db $E4                                        ; $7060: $E4
    jr nz, jr_004_7065                            ; $7061: $20 $02

    nop                                           ; $7063: $00
    nop                                           ; $7064: $00

jr_004_7065:
    inc h                                         ; $7065: $24
    nop                                           ; $7066: $00
    ld [$8016], sp                                ; $7067: $08 $16 $80
    nop                                           ; $706A: $00
    nop                                           ; $706B: $00
    nop                                           ; $706C: $00
    nop                                           ; $706D: $00
    nop                                           ; $706E: $00
    ld [hl], e                                    ; $706F: $73
    ld [hl], b                                    ; $7070: $70
    db $E4                                        ; $7071: $E4
    jr nz, jr_004_7076                            ; $7072: $20 $02

    nop                                           ; $7074: $00
    nop                                           ; $7075: $00

jr_004_7076:
    inc h                                         ; $7076: $24
    inc bc                                        ; $7077: $03
    ld [$8016], sp                                ; $7078: $08 $16 $80
    nop                                           ; $707B: $00
    nop                                           ; $707C: $00
    nop                                           ; $707D: $00
    nop                                           ; $707E: $00
    nop                                           ; $707F: $00
    add h                                         ; $7080: $84
    ld [hl], b                                    ; $7081: $70
    db $E4                                        ; $7082: $E4
    jr nz, jr_004_7087                            ; $7083: $20 $02

    nop                                           ; $7085: $00
    nop                                           ; $7086: $00

jr_004_7087:
    inc h                                         ; $7087: $24
    rst RST_38                                    ; $7088: $FF
    ld [$8016], sp                                ; $7089: $08 $16 $80
    nop                                           ; $708C: $00
    nop                                           ; $708D: $00
    nop                                           ; $708E: $00
    nop                                           ; $708F: $00
    nop                                           ; $7090: $00
    sub l                                         ; $7091: $95
    ld [hl], b                                    ; $7092: $70
    db $E4                                        ; $7093: $E4
    jr nz, jr_004_7099                            ; $7094: $20 $03

    nop                                           ; $7096: $00
    nop                                           ; $7097: $00
    inc h                                         ; $7098: $24

jr_004_7099:
    nop                                           ; $7099: $00
    ld [$0016], sp                                ; $709A: $08 $16 $00
    db $10                                        ; $709D: $10
    jr nz, jr_004_7020                            ; $709E: $20 $80

    nop                                           ; $70A0: $00
    nop                                           ; $70A1: $00
    nop                                           ; $70A2: $00
    nop                                           ; $70A3: $00
    nop                                           ; $70A4: $00
    xor c                                         ; $70A5: $A9

jr_004_70A6:
    ld [hl], b                                    ; $70A6: $70
    db $E4                                        ; $70A7: $E4
    jr nz, jr_004_70AD                            ; $70A8: $20 $03

    nop                                           ; $70AA: $00
    nop                                           ; $70AB: $00
    inc h                                         ; $70AC: $24

jr_004_70AD:
    nop                                           ; $70AD: $00
    ld [$0316], sp                                ; $70AE: $08 $16 $03
    db $10                                        ; $70B1: $10
    jr nz, jr_004_7034                            ; $70B2: $20 $80

    nop                                           ; $70B4: $00
    nop                                           ; $70B5: $00
    nop                                           ; $70B6: $00
    nop                                           ; $70B7: $00
    nop                                           ; $70B8: $00
    cp l                                          ; $70B9: $BD
    ld [hl], b                                    ; $70BA: $70
    db $E4                                        ; $70BB: $E4
    jr nz, jr_004_70C1                            ; $70BC: $20 $03

    nop                                           ; $70BE: $00
    nop                                           ; $70BF: $00
    inc h                                         ; $70C0: $24

jr_004_70C1:
    nop                                           ; $70C1: $00
    ld [$FF16], sp                                ; $70C2: $08 $16 $FF
    db $10                                        ; $70C5: $10
    jr nz, jr_004_7048                            ; $70C6: $20 $80

    nop                                           ; $70C8: $00
    nop                                           ; $70C9: $00
    nop                                           ; $70CA: $00
    nop                                           ; $70CB: $00
    nop                                           ; $70CC: $00
    pop de                                        ; $70CD: $D1
    ld [hl], b                                    ; $70CE: $70
    db $E4                                        ; $70CF: $E4
    jr nz, jr_004_70D6                            ; $70D0: $20 $04

    nop                                           ; $70D2: $00
    nop                                           ; $70D3: $00
    inc h                                         ; $70D4: $24
    nop                                           ; $70D5: $00

jr_004_70D6:
    ld [$0016], sp                                ; $70D6: $08 $16 $00
    db $10                                        ; $70D9: $10
    jr nz, jr_004_70DC                            ; $70DA: $20 $00

jr_004_70DC:
    jr nz, jr_004_7100                            ; $70DC: $20 $22

    add b                                         ; $70DE: $80
    nop                                           ; $70DF: $00
    nop                                           ; $70E0: $00
    nop                                           ; $70E1: $00
    nop                                           ; $70E2: $00
    nop                                           ; $70E3: $00
    add sp, $70                                   ; $70E4: $E8 $70
    db $E4                                        ; $70E6: $E4
    jr nz, jr_004_70ED                            ; $70E7: $20 $04

    nop                                           ; $70E9: $00
    nop                                           ; $70EA: $00
    inc h                                         ; $70EB: $24
    nop                                           ; $70EC: $00

jr_004_70ED:
    ld [$0016], sp                                ; $70ED: $08 $16 $00
    db $10                                        ; $70F0: $10
    jr nz, jr_004_70F6                            ; $70F1: $20 $03

    jr nz, jr_004_7117                            ; $70F3: $20 $22

    add b                                         ; $70F5: $80

jr_004_70F6:
    nop                                           ; $70F6: $00
    nop                                           ; $70F7: $00
    nop                                           ; $70F8: $00
    nop                                           ; $70F9: $00
    nop                                           ; $70FA: $00
    rst RST_38                                    ; $70FB: $FF
    ld [hl], b                                    ; $70FC: $70
    db $E4                                        ; $70FD: $E4
    jr nz, jr_004_7104                            ; $70FE: $20 $04

jr_004_7100:
    nop                                           ; $7100: $00
    nop                                           ; $7101: $00
    inc h                                         ; $7102: $24
    nop                                           ; $7103: $00

jr_004_7104:
    ld [$0016], sp                                ; $7104: $08 $16 $00
    db $10                                        ; $7107: $10
    jr nz, @+$01                                  ; $7108: $20 $FF

    jr nz, jr_004_712E                            ; $710A: $20 $22

    add b                                         ; $710C: $80
    nop                                           ; $710D: $00
    nop                                           ; $710E: $00
    nop                                           ; $710F: $00
    nop                                           ; $7110: $00
    nop                                           ; $7111: $00
    ld d, $71                                     ; $7112: $16 $71
    db $E4                                        ; $7114: $E4
    jr nz, @+$07                                  ; $7115: $20 $05

jr_004_7117:
    nop                                           ; $7117: $00
    nop                                           ; $7118: $00
    inc h                                         ; $7119: $24
    nop                                           ; $711A: $00
    ld [$0016], sp                                ; $711B: $08 $16 $00
    db $10                                        ; $711E: $10
    jr nz, jr_004_7121                            ; $711F: $20 $00

jr_004_7121:
    jr nz, jr_004_7145                            ; $7121: $20 $22

    nop                                           ; $7123: $00
    jr z, jr_004_7132                             ; $7124: $28 $0C

    add b                                         ; $7126: $80
    nop                                           ; $7127: $00
    nop                                           ; $7128: $00
    nop                                           ; $7129: $00
    nop                                           ; $712A: $00
    nop                                           ; $712B: $00
    jr nc, jr_004_719F                            ; $712C: $30 $71

jr_004_712E:
    db $E4                                        ; $712E: $E4
    jr nz, @+$07                                  ; $712F: $20 $05

    nop                                           ; $7131: $00

jr_004_7132:
    nop                                           ; $7132: $00
    inc h                                         ; $7133: $24
    nop                                           ; $7134: $00
    ld [$0016], sp                                ; $7135: $08 $16 $00
    db $10                                        ; $7138: $10
    jr nz, jr_004_713B                            ; $7139: $20 $00

jr_004_713B:
    jr nz, jr_004_715F                            ; $713B: $20 $22

    inc bc                                        ; $713D: $03
    jr z, jr_004_714C                             ; $713E: $28 $0C

    add b                                         ; $7140: $80
    nop                                           ; $7141: $00
    nop                                           ; $7142: $00
    nop                                           ; $7143: $00
    nop                                           ; $7144: $00

jr_004_7145:
    nop                                           ; $7145: $00
    ld c, d                                       ; $7146: $4A
    ld [hl], c                                    ; $7147: $71
    db $E4                                        ; $7148: $E4
    jr nz, @+$07                                  ; $7149: $20 $05

    nop                                           ; $714B: $00

jr_004_714C:
    nop                                           ; $714C: $00
    inc h                                         ; $714D: $24
    nop                                           ; $714E: $00
    ld [$0016], sp                                ; $714F: $08 $16 $00
    db $10                                        ; $7152: $10
    jr nz, jr_004_7155                            ; $7153: $20 $00

jr_004_7155:
    jr nz, jr_004_7179                            ; $7155: $20 $22

    rst RST_38                                    ; $7157: $FF
    jr z, jr_004_7166                             ; $7158: $28 $0C

    add b                                         ; $715A: $80
    nop                                           ; $715B: $00
    nop                                           ; $715C: $00
    nop                                           ; $715D: $00
    nop                                           ; $715E: $00

jr_004_715F:
    nop                                           ; $715F: $00
    ld h, h                                       ; $7160: $64
    ld [hl], c                                    ; $7161: $71
    db $E4                                        ; $7162: $E4
    jr nz, @+$08                                  ; $7163: $20 $06

    nop                                           ; $7165: $00

jr_004_7166:
    nop                                           ; $7166: $00
    inc h                                         ; $7167: $24
    nop                                           ; $7168: $00
    ld [$0016], sp                                ; $7169: $08 $16 $00
    db $10                                        ; $716C: $10
    jr nz, jr_004_716F                            ; $716D: $20 $00

jr_004_716F:
    jr nz, @+$24                                  ; $716F: $20 $22

    nop                                           ; $7171: $00
    jr z, jr_004_7180                             ; $7172: $28 $0C

    nop                                           ; $7174: $00
    jr nc, @+$16                                  ; $7175: $30 $14

    add b                                         ; $7177: $80
    nop                                           ; $7178: $00

jr_004_7179:
    nop                                           ; $7179: $00
    nop                                           ; $717A: $00
    nop                                           ; $717B: $00
    nop                                           ; $717C: $00
    add c                                         ; $717D: $81
    ld [hl], c                                    ; $717E: $71
    db $E4                                        ; $717F: $E4

jr_004_7180:
    jr nz, @+$08                                  ; $7180: $20 $06

    nop                                           ; $7182: $00
    nop                                           ; $7183: $00
    inc h                                         ; $7184: $24
    nop                                           ; $7185: $00
    ld [$0016], sp                                ; $7186: $08 $16 $00
    db $10                                        ; $7189: $10
    jr nz, jr_004_718C                            ; $718A: $20 $00

jr_004_718C:
    jr nz, @+$24                                  ; $718C: $20 $22

    nop                                           ; $718E: $00
    jr z, jr_004_719D                             ; $718F: $28 $0C

    inc bc                                        ; $7191: $03
    jr nc, @+$16                                  ; $7192: $30 $14

    add b                                         ; $7194: $80
    nop                                           ; $7195: $00
    nop                                           ; $7196: $00
    nop                                           ; $7197: $00
    nop                                           ; $7198: $00
    nop                                           ; $7199: $00
    sbc [hl]                                      ; $719A: $9E
    ld [hl], c                                    ; $719B: $71
    db $E4                                        ; $719C: $E4

jr_004_719D:
    jr nz, @+$08                                  ; $719D: $20 $06

jr_004_719F:
    nop                                           ; $719F: $00
    nop                                           ; $71A0: $00
    inc h                                         ; $71A1: $24
    nop                                           ; $71A2: $00

jr_004_71A3:
    ld [$0016], sp                                ; $71A3: $08 $16 $00
    db $10                                        ; $71A6: $10
    jr nz, jr_004_71A9                            ; $71A7: $20 $00

jr_004_71A9:
    jr nz, jr_004_71CD                            ; $71A9: $20 $22

    nop                                           ; $71AB: $00
    jr z, @+$0E                                   ; $71AC: $28 $0C

    rst RST_38                                    ; $71AE: $FF
    jr nc, jr_004_71C5                            ; $71AF: $30 $14

    add b                                         ; $71B1: $80
    nop                                           ; $71B2: $00
    nop                                           ; $71B3: $00
    nop                                           ; $71B4: $00
    nop                                           ; $71B5: $00
    nop                                           ; $71B6: $00

jr_004_71B7:
    cp e                                          ; $71B7: $BB
    ld [hl], c                                    ; $71B8: $71
    ldh [rNR41], a                                ; $71B9: $E0 $20
    ld bc, $0000                                  ; $71BB: $01 $00 $00
    inc h                                         ; $71BE: $24
    add b                                         ; $71BF: $80
    nop                                           ; $71C0: $00
    nop                                           ; $71C1: $00
    nop                                           ; $71C2: $00
    nop                                           ; $71C3: $00
    nop                                           ; $71C4: $00

jr_004_71C5:
    ret                                           ; $71C5: $C9


    ld [hl], c                                    ; $71C6: $71
    ldh [rNR41], a                                ; $71C7: $E0 $20
    ld bc, $0003                                  ; $71C9: $01 $03 $00
    inc h                                         ; $71CC: $24

jr_004_71CD:
    add b                                         ; $71CD: $80
    nop                                           ; $71CE: $00
    nop                                           ; $71CF: $00
    nop                                           ; $71D0: $00
    nop                                           ; $71D1: $00
    nop                                           ; $71D2: $00
    rst RST_10                                    ; $71D3: $D7
    ld [hl], c                                    ; $71D4: $71
    ldh [rNR41], a                                ; $71D5: $E0 $20
    ld bc, $00FF                                  ; $71D7: $01 $FF $00
    inc h                                         ; $71DA: $24
    add b                                         ; $71DB: $80
    nop                                           ; $71DC: $00
    nop                                           ; $71DD: $00
    nop                                           ; $71DE: $00
    nop                                           ; $71DF: $00
    nop                                           ; $71E0: $00
    push hl                                       ; $71E1: $E5
    ld [hl], c                                    ; $71E2: $71
    ldh [rNR41], a                                ; $71E3: $E0 $20
    ld [bc], a                                    ; $71E5: $02
    nop                                           ; $71E6: $00
    nop                                           ; $71E7: $00
    inc h                                         ; $71E8: $24
    nop                                           ; $71E9: $00
    ld [$8016], sp                                ; $71EA: $08 $16 $80
    nop                                           ; $71ED: $00
    nop                                           ; $71EE: $00
    nop                                           ; $71EF: $00
    nop                                           ; $71F0: $00
    nop                                           ; $71F1: $00
    or $71                                        ; $71F2: $F6 $71
    ldh [rNR41], a                                ; $71F4: $E0 $20
    ld [bc], a                                    ; $71F6: $02
    nop                                           ; $71F7: $00
    nop                                           ; $71F8: $00
    inc h                                         ; $71F9: $24
    inc bc                                        ; $71FA: $03
    ld [$8016], sp                                ; $71FB: $08 $16 $80
    nop                                           ; $71FE: $00
    nop                                           ; $71FF: $00
    nop                                           ; $7200: $00
    nop                                           ; $7201: $00
    nop                                           ; $7202: $00
    rlca                                          ; $7203: $07
    ld [hl], d                                    ; $7204: $72
    ldh [rNR41], a                                ; $7205: $E0 $20
    ld [bc], a                                    ; $7207: $02
    nop                                           ; $7208: $00
    nop                                           ; $7209: $00
    inc h                                         ; $720A: $24
    rst RST_38                                    ; $720B: $FF
    ld [$8016], sp                                ; $720C: $08 $16 $80
    nop                                           ; $720F: $00
    nop                                           ; $7210: $00
    nop                                           ; $7211: $00
    nop                                           ; $7212: $00
    nop                                           ; $7213: $00
    jr @+$74                                      ; $7214: $18 $72

    ldh [rNR41], a                                ; $7216: $E0 $20
    inc bc                                        ; $7218: $03
    nop                                           ; $7219: $00
    nop                                           ; $721A: $00
    inc h                                         ; $721B: $24
    nop                                           ; $721C: $00
    ld [$0016], sp                                ; $721D: $08 $16 $00
    db $10                                        ; $7220: $10
    jr nz, jr_004_71A3                            ; $7221: $20 $80

    nop                                           ; $7223: $00
    nop                                           ; $7224: $00
    nop                                           ; $7225: $00
    nop                                           ; $7226: $00
    nop                                           ; $7227: $00
    inc l                                         ; $7228: $2C
    ld [hl], d                                    ; $7229: $72
    ldh [rNR41], a                                ; $722A: $E0 $20
    inc bc                                        ; $722C: $03
    nop                                           ; $722D: $00
    nop                                           ; $722E: $00
    inc h                                         ; $722F: $24
    nop                                           ; $7230: $00
    ld [$0316], sp                                ; $7231: $08 $16 $03
    db $10                                        ; $7234: $10
    jr nz, jr_004_71B7                            ; $7235: $20 $80

    nop                                           ; $7237: $00
    nop                                           ; $7238: $00
    nop                                           ; $7239: $00
    nop                                           ; $723A: $00
    nop                                           ; $723B: $00
    ld b, b                                       ; $723C: $40
    ld [hl], d                                    ; $723D: $72
    ldh [rNR41], a                                ; $723E: $E0 $20
    inc bc                                        ; $7240: $03
    nop                                           ; $7241: $00
    nop                                           ; $7242: $00
    inc h                                         ; $7243: $24
    nop                                           ; $7244: $00
    ld [$FF16], sp                                ; $7245: $08 $16 $FF
    db $10                                        ; $7248: $10
    jr nz, @-$7E                                  ; $7249: $20 $80

    nop                                           ; $724B: $00
    nop                                           ; $724C: $00
    nop                                           ; $724D: $00
    nop                                           ; $724E: $00
    nop                                           ; $724F: $00
    ld d, h                                       ; $7250: $54
    ld [hl], d                                    ; $7251: $72
    ldh [rNR41], a                                ; $7252: $E0 $20
    inc b                                         ; $7254: $04
    nop                                           ; $7255: $00
    nop                                           ; $7256: $00
    inc h                                         ; $7257: $24
    nop                                           ; $7258: $00
    ld [$0016], sp                                ; $7259: $08 $16 $00
    db $10                                        ; $725C: $10
    jr nz, jr_004_725F                            ; $725D: $20 $00

jr_004_725F:
    jr nz, @+$12                                  ; $725F: $20 $10

    add b                                         ; $7261: $80
    nop                                           ; $7262: $00
    nop                                           ; $7263: $00
    nop                                           ; $7264: $00
    nop                                           ; $7265: $00
    nop                                           ; $7266: $00
    ld l, e                                       ; $7267: $6B
    ld [hl], d                                    ; $7268: $72
    ldh [rNR41], a                                ; $7269: $E0 $20
    inc b                                         ; $726B: $04
    nop                                           ; $726C: $00
    nop                                           ; $726D: $00
    inc h                                         ; $726E: $24
    nop                                           ; $726F: $00
    ld [$0016], sp                                ; $7270: $08 $16 $00
    db $10                                        ; $7273: $10
    jr nz, jr_004_7279                            ; $7274: $20 $03

    jr nz, @+$12                                  ; $7276: $20 $10

    add b                                         ; $7278: $80

jr_004_7279:
    nop                                           ; $7279: $00
    nop                                           ; $727A: $00
    nop                                           ; $727B: $00
    nop                                           ; $727C: $00
    nop                                           ; $727D: $00
    add d                                         ; $727E: $82
    ld [hl], d                                    ; $727F: $72
    ldh [rNR41], a                                ; $7280: $E0 $20
    inc b                                         ; $7282: $04
    nop                                           ; $7283: $00
    nop                                           ; $7284: $00
    inc h                                         ; $7285: $24
    nop                                           ; $7286: $00
    ld [$0016], sp                                ; $7287: $08 $16 $00
    db $10                                        ; $728A: $10
    jr nz, @+$01                                  ; $728B: $20 $FF

    jr nz, @+$12                                  ; $728D: $20 $10

    add b                                         ; $728F: $80
    nop                                           ; $7290: $00
    nop                                           ; $7291: $00
    nop                                           ; $7292: $00
    nop                                           ; $7293: $00
    nop                                           ; $7294: $00
    sbc c                                         ; $7295: $99
    ld [hl], d                                    ; $7296: $72
    ldh [rNR41], a                                ; $7297: $E0 $20
    dec b                                         ; $7299: $05
    nop                                           ; $729A: $00
    nop                                           ; $729B: $00
    inc h                                         ; $729C: $24
    nop                                           ; $729D: $00
    ld [$0016], sp                                ; $729E: $08 $16 $00
    db $10                                        ; $72A1: $10
    jr nz, jr_004_72A4                            ; $72A2: $20 $00

jr_004_72A4:
    jr nz, jr_004_72B6                            ; $72A4: $20 $10

    nop                                           ; $72A6: $00
    jr z, @+$18                                   ; $72A7: $28 $16

    add b                                         ; $72A9: $80
    nop                                           ; $72AA: $00
    nop                                           ; $72AB: $00
    nop                                           ; $72AC: $00
    nop                                           ; $72AD: $00
    nop                                           ; $72AE: $00
    or e                                          ; $72AF: $B3
    ld [hl], d                                    ; $72B0: $72
    ldh [rNR41], a                                ; $72B1: $E0 $20
    dec b                                         ; $72B3: $05
    nop                                           ; $72B4: $00
    nop                                           ; $72B5: $00

jr_004_72B6:
    inc h                                         ; $72B6: $24
    nop                                           ; $72B7: $00
    ld [$0016], sp                                ; $72B8: $08 $16 $00
    db $10                                        ; $72BB: $10
    jr nz, jr_004_72BE                            ; $72BC: $20 $00

jr_004_72BE:
    jr nz, jr_004_72D0                            ; $72BE: $20 $10

    inc bc                                        ; $72C0: $03
    jr z, @+$18                                   ; $72C1: $28 $16

    add b                                         ; $72C3: $80
    nop                                           ; $72C4: $00
    nop                                           ; $72C5: $00
    nop                                           ; $72C6: $00
    nop                                           ; $72C7: $00
    nop                                           ; $72C8: $00
    call $E072                                    ; $72C9: $CD $72 $E0
    jr nz, @+$07                                  ; $72CC: $20 $05

    nop                                           ; $72CE: $00
    nop                                           ; $72CF: $00

jr_004_72D0:
    inc h                                         ; $72D0: $24
    nop                                           ; $72D1: $00
    ld [$0016], sp                                ; $72D2: $08 $16 $00
    db $10                                        ; $72D5: $10
    jr nz, jr_004_72D8                            ; $72D6: $20 $00

jr_004_72D8:
    jr nz, jr_004_72EA                            ; $72D8: $20 $10

    rst RST_38                                    ; $72DA: $FF
    jr z, @+$18                                   ; $72DB: $28 $16

    add b                                         ; $72DD: $80
    nop                                           ; $72DE: $00
    nop                                           ; $72DF: $00
    nop                                           ; $72E0: $00
    nop                                           ; $72E1: $00
    nop                                           ; $72E2: $00
    rst RST_20                                    ; $72E3: $E7
    ld [hl], d                                    ; $72E4: $72
    ldh [rNR41], a                                ; $72E5: $E0 $20
    ld b, $00                                     ; $72E7: $06 $00
    nop                                           ; $72E9: $00

jr_004_72EA:
    inc h                                         ; $72EA: $24
    nop                                           ; $72EB: $00
    ld [$0016], sp                                ; $72EC: $08 $16 $00
    db $10                                        ; $72EF: $10
    jr nz, jr_004_72F2                            ; $72F0: $20 $00

jr_004_72F2:
    jr nz, jr_004_7304                            ; $72F2: $20 $10

    nop                                           ; $72F4: $00
    jr z, jr_004_730D                             ; $72F5: $28 $16

    nop                                           ; $72F7: $00
    jr nc, @+$1E                                  ; $72F8: $30 $1C

    add b                                         ; $72FA: $80
    nop                                           ; $72FB: $00
    nop                                           ; $72FC: $00
    nop                                           ; $72FD: $00
    nop                                           ; $72FE: $00
    nop                                           ; $72FF: $00
    inc b                                         ; $7300: $04
    ld [hl], e                                    ; $7301: $73
    ldh [rNR41], a                                ; $7302: $E0 $20

jr_004_7304:
    ld b, $00                                     ; $7304: $06 $00
    nop                                           ; $7306: $00
    inc h                                         ; $7307: $24
    nop                                           ; $7308: $00
    ld [$0016], sp                                ; $7309: $08 $16 $00
    db $10                                        ; $730C: $10

jr_004_730D:
    jr nz, jr_004_730F                            ; $730D: $20 $00

jr_004_730F:
    jr nz, @+$12                                  ; $730F: $20 $10

    nop                                           ; $7311: $00
    jr z, jr_004_732A                             ; $7312: $28 $16

    inc bc                                        ; $7314: $03
    jr nc, @+$1E                                  ; $7315: $30 $1C

    add b                                         ; $7317: $80
    nop                                           ; $7318: $00
    nop                                           ; $7319: $00
    nop                                           ; $731A: $00
    nop                                           ; $731B: $00
    nop                                           ; $731C: $00
    ld hl, $E073                                  ; $731D: $21 $73 $E0
    jr nz, @+$08                                  ; $7320: $20 $06

    nop                                           ; $7322: $00
    nop                                           ; $7323: $00
    inc h                                         ; $7324: $24
    nop                                           ; $7325: $00
    ld [$0016], sp                                ; $7326: $08 $16 $00
    db $10                                        ; $7329: $10

jr_004_732A:
    jr nz, jr_004_732C                            ; $732A: $20 $00

jr_004_732C:
    jr nz, jr_004_733E                            ; $732C: $20 $10

    nop                                           ; $732E: $00
    jr z, jr_004_7347                             ; $732F: $28 $16

    rst RST_38                                    ; $7331: $FF
    jr nc, @+$1E                                  ; $7332: $30 $1C

    add b                                         ; $7334: $80
    nop                                           ; $7335: $00
    nop                                           ; $7336: $00
    nop                                           ; $7337: $00
    nop                                           ; $7338: $00
    nop                                           ; $7339: $00
    ld a, $73                                     ; $733A: $3E $73
    ldh [rNR41], a                                ; $733C: $E0 $20

jr_004_733E:
    rlca                                          ; $733E: $07
    nop                                           ; $733F: $00
    nop                                           ; $7340: $00
    inc h                                         ; $7341: $24
    nop                                           ; $7342: $00
    ld [$0016], sp                                ; $7343: $08 $16 $00
    db $10                                        ; $7346: $10

jr_004_7347:
    jr nz, jr_004_7349                            ; $7347: $20 $00

jr_004_7349:
    jr nz, jr_004_735B                            ; $7349: $20 $10

    nop                                           ; $734B: $00
    jr z, @+$18                                   ; $734C: $28 $16

    nop                                           ; $734E: $00
    jr nc, @+$1E                                  ; $734F: $30 $1C

    nop                                           ; $7351: $00
    jr c, jr_004_735C                             ; $7352: $38 $08

    add b                                         ; $7354: $80
    nop                                           ; $7355: $00
    nop                                           ; $7356: $00
    nop                                           ; $7357: $00
    nop                                           ; $7358: $00
    nop                                           ; $7359: $00
    ld e, [hl]                                    ; $735A: $5E

jr_004_735B:
    ld [hl], e                                    ; $735B: $73

jr_004_735C:
    ldh [rNR41], a                                ; $735C: $E0 $20
    rlca                                          ; $735E: $07
    nop                                           ; $735F: $00
    nop                                           ; $7360: $00
    inc h                                         ; $7361: $24
    nop                                           ; $7362: $00
    ld [$0016], sp                                ; $7363: $08 $16 $00
    db $10                                        ; $7366: $10
    jr nz, jr_004_7369                            ; $7367: $20 $00

jr_004_7369:
    jr nz, jr_004_737B                            ; $7369: $20 $10

    nop                                           ; $736B: $00
    jr z, @+$18                                   ; $736C: $28 $16

    nop                                           ; $736E: $00
    jr nc, @+$1E                                  ; $736F: $30 $1C

    inc bc                                        ; $7371: $03
    jr c, jr_004_737C                             ; $7372: $38 $08

    add b                                         ; $7374: $80
    nop                                           ; $7375: $00
    nop                                           ; $7376: $00
    nop                                           ; $7377: $00
    nop                                           ; $7378: $00
    nop                                           ; $7379: $00
    ld a, [hl]                                    ; $737A: $7E

jr_004_737B:
    ld [hl], e                                    ; $737B: $73

jr_004_737C:
    ldh [rNR41], a                                ; $737C: $E0 $20
    rlca                                          ; $737E: $07
    nop                                           ; $737F: $00
    nop                                           ; $7380: $00
    inc h                                         ; $7381: $24
    nop                                           ; $7382: $00
    ld [$0016], sp                                ; $7383: $08 $16 $00
    db $10                                        ; $7386: $10
    jr nz, jr_004_7389                            ; $7387: $20 $00

jr_004_7389:
    jr nz, jr_004_739B                            ; $7389: $20 $10

    nop                                           ; $738B: $00
    jr z, jr_004_73A4                             ; $738C: $28 $16

    nop                                           ; $738E: $00
    jr nc, @+$1E                                  ; $738F: $30 $1C

    rst RST_38                                    ; $7391: $FF
    jr c, jr_004_739C                             ; $7392: $38 $08

    add b                                         ; $7394: $80
    nop                                           ; $7395: $00
    nop                                           ; $7396: $00
    nop                                           ; $7397: $00
    nop                                           ; $7398: $00
    nop                                           ; $7399: $00
    sbc [hl]                                      ; $739A: $9E

jr_004_739B:
    ld [hl], e                                    ; $739B: $73

jr_004_739C:
    add sp, $20                                   ; $739C: $E8 $20
    ld bc, $0000                                  ; $739E: $01 $00 $00
    ld h, $80                                     ; $73A1: $26 $80
    nop                                           ; $73A3: $00

jr_004_73A4:
    nop                                           ; $73A4: $00
    nop                                           ; $73A5: $00
    nop                                           ; $73A6: $00
    nop                                           ; $73A7: $00
    xor h                                         ; $73A8: $AC
    ld [hl], e                                    ; $73A9: $73
    add sp, $20                                   ; $73AA: $E8 $20
    ld bc, $0003                                  ; $73AC: $01 $03 $00
    ld h, $80                                     ; $73AF: $26 $80
    nop                                           ; $73B1: $00
    nop                                           ; $73B2: $00
    nop                                           ; $73B3: $00
    nop                                           ; $73B4: $00
    nop                                           ; $73B5: $00
    cp d                                          ; $73B6: $BA
    ld [hl], e                                    ; $73B7: $73
    add sp, $20                                   ; $73B8: $E8 $20
    ld bc, $00FF                                  ; $73BA: $01 $FF $00
    ld h, $80                                     ; $73BD: $26 $80
    nop                                           ; $73BF: $00
    nop                                           ; $73C0: $00
    nop                                           ; $73C1: $00
    nop                                           ; $73C2: $00
    nop                                           ; $73C3: $00
    ret z                                         ; $73C4: $C8

    ld [hl], e                                    ; $73C5: $73
    add sp, $20                                   ; $73C6: $E8 $20
    ld [bc], a                                    ; $73C8: $02
    nop                                           ; $73C9: $00
    nop                                           ; $73CA: $00
    ld h, $00                                     ; $73CB: $26 $00
    ld [$8018], sp                                ; $73CD: $08 $18 $80
    nop                                           ; $73D0: $00
    nop                                           ; $73D1: $00
    nop                                           ; $73D2: $00
    nop                                           ; $73D3: $00
    nop                                           ; $73D4: $00
    reti                                          ; $73D5: $D9


    ld [hl], e                                    ; $73D6: $73
    add sp, $20                                   ; $73D7: $E8 $20
    ld [bc], a                                    ; $73D9: $02
    nop                                           ; $73DA: $00
    nop                                           ; $73DB: $00
    ld h, $03                                     ; $73DC: $26 $03
    ld [$8018], sp                                ; $73DE: $08 $18 $80
    nop                                           ; $73E1: $00
    nop                                           ; $73E2: $00
    nop                                           ; $73E3: $00
    nop                                           ; $73E4: $00
    nop                                           ; $73E5: $00
    ld [$E873], a                                 ; $73E6: $EA $73 $E8
    jr nz, jr_004_73ED                            ; $73E9: $20 $02

    nop                                           ; $73EB: $00
    nop                                           ; $73EC: $00

jr_004_73ED:
    ld h, $FF                                     ; $73ED: $26 $FF
    ld [$8018], sp                                ; $73EF: $08 $18 $80
    nop                                           ; $73F2: $00
    nop                                           ; $73F3: $00
    nop                                           ; $73F4: $00
    nop                                           ; $73F5: $00
    nop                                           ; $73F6: $00
    ei                                            ; $73F7: $FB
    ld [hl], e                                    ; $73F8: $73
    add sp, $20                                   ; $73F9: $E8 $20
    inc bc                                        ; $73FB: $03
    nop                                           ; $73FC: $00
    nop                                           ; $73FD: $00
    ld h, $00                                     ; $73FE: $26 $00
    ld [$0018], sp                                ; $7400: $08 $18 $00
    jr @+$24                                      ; $7403: $18 $22

    add b                                         ; $7405: $80
    nop                                           ; $7406: $00
    nop                                           ; $7407: $00
    nop                                           ; $7408: $00
    nop                                           ; $7409: $00
    nop                                           ; $740A: $00
    rrca                                          ; $740B: $0F
    ld [hl], h                                    ; $740C: $74
    add sp, $20                                   ; $740D: $E8 $20
    inc bc                                        ; $740F: $03
    nop                                           ; $7410: $00
    nop                                           ; $7411: $00
    ld h, $00                                     ; $7412: $26 $00
    ld [$0318], sp                                ; $7414: $08 $18 $03
    jr @+$24                                      ; $7417: $18 $22

    add b                                         ; $7419: $80
    nop                                           ; $741A: $00
    nop                                           ; $741B: $00
    nop                                           ; $741C: $00
    nop                                           ; $741D: $00
    nop                                           ; $741E: $00
    inc hl                                        ; $741F: $23
    ld [hl], h                                    ; $7420: $74
    add sp, $20                                   ; $7421: $E8 $20
    inc bc                                        ; $7423: $03
    nop                                           ; $7424: $00
    nop                                           ; $7425: $00
    ld h, $00                                     ; $7426: $26 $00
    ld [$FF18], sp                                ; $7428: $08 $18 $FF
    jr jr_004_744F                                ; $742B: $18 $22

    add b                                         ; $742D: $80
    nop                                           ; $742E: $00
    nop                                           ; $742F: $00
    nop                                           ; $7430: $00
    nop                                           ; $7431: $00
    nop                                           ; $7432: $00
    scf                                           ; $7433: $37
    ld [hl], h                                    ; $7434: $74
    add sp, $20                                   ; $7435: $E8 $20
    inc b                                         ; $7437: $04
    nop                                           ; $7438: $00
    nop                                           ; $7439: $00
    ld h, $00                                     ; $743A: $26 $00
    ld [$0018], sp                                ; $743C: $08 $18 $00
    jr jr_004_7463                                ; $743F: $18 $22

    nop                                           ; $7441: $00
    jr nz, jr_004_7450                            ; $7442: $20 $0C

    add b                                         ; $7444: $80
    nop                                           ; $7445: $00
    nop                                           ; $7446: $00
    nop                                           ; $7447: $00
    nop                                           ; $7448: $00
    nop                                           ; $7449: $00
    ld c, [hl]                                    ; $744A: $4E
    ld [hl], h                                    ; $744B: $74
    add sp, $20                                   ; $744C: $E8 $20
    inc b                                         ; $744E: $04

jr_004_744F:
    nop                                           ; $744F: $00

jr_004_7450:
    nop                                           ; $7450: $00
    ld h, $00                                     ; $7451: $26 $00
    ld [$0018], sp                                ; $7453: $08 $18 $00
    jr jr_004_747A                                ; $7456: $18 $22

    inc bc                                        ; $7458: $03
    jr nz, jr_004_7467                            ; $7459: $20 $0C

    add b                                         ; $745B: $80
    nop                                           ; $745C: $00

jr_004_745D:
    nop                                           ; $745D: $00
    nop                                           ; $745E: $00
    nop                                           ; $745F: $00
    nop                                           ; $7460: $00
    ld h, l                                       ; $7461: $65
    ld [hl], h                                    ; $7462: $74

jr_004_7463:
    add sp, $20                                   ; $7463: $E8 $20
    inc b                                         ; $7465: $04
    nop                                           ; $7466: $00

jr_004_7467:
    nop                                           ; $7467: $00
    ld h, $00                                     ; $7468: $26 $00
    ld [$0018], sp                                ; $746A: $08 $18 $00
    jr jr_004_7491                                ; $746D: $18 $22

    rst RST_38                                    ; $746F: $FF
    jr nz, jr_004_747E                            ; $7470: $20 $0C

    add b                                         ; $7472: $80
    nop                                           ; $7473: $00
    nop                                           ; $7474: $00
    nop                                           ; $7475: $00
    nop                                           ; $7476: $00
    nop                                           ; $7477: $00
    ld a, h                                       ; $7478: $7C
    ld [hl], h                                    ; $7479: $74

jr_004_747A:
    add sp, $20                                   ; $747A: $E8 $20
    dec b                                         ; $747C: $05
    nop                                           ; $747D: $00

jr_004_747E:
    nop                                           ; $747E: $00
    ld h, $00                                     ; $747F: $26 $00
    ld [$0018], sp                                ; $7481: $08 $18 $00
    jr jr_004_74A8                                ; $7484: $18 $22

    nop                                           ; $7486: $00
    jr nz, @+$0E                                  ; $7487: $20 $0C

    nop                                           ; $7489: $00
    jr z, jr_004_74A0                             ; $748A: $28 $14

    add b                                         ; $748C: $80
    nop                                           ; $748D: $00
    nop                                           ; $748E: $00
    nop                                           ; $748F: $00
    nop                                           ; $7490: $00

jr_004_7491:
    nop                                           ; $7491: $00
    sub [hl]                                      ; $7492: $96
    ld [hl], h                                    ; $7493: $74
    add sp, $20                                   ; $7494: $E8 $20
    dec b                                         ; $7496: $05
    nop                                           ; $7497: $00
    nop                                           ; $7498: $00
    ld h, $00                                     ; $7499: $26 $00
    ld [$0018], sp                                ; $749B: $08 $18 $00
    jr jr_004_74C2                                ; $749E: $18 $22

jr_004_74A0:
    nop                                           ; $74A0: $00
    jr nz, @+$0E                                  ; $74A1: $20 $0C

    inc bc                                        ; $74A3: $03
    jr z, jr_004_74BA                             ; $74A4: $28 $14

    add b                                         ; $74A6: $80
    nop                                           ; $74A7: $00

jr_004_74A8:
    nop                                           ; $74A8: $00
    nop                                           ; $74A9: $00
    nop                                           ; $74AA: $00
    nop                                           ; $74AB: $00
    or b                                          ; $74AC: $B0
    ld [hl], h                                    ; $74AD: $74
    add sp, $20                                   ; $74AE: $E8 $20
    dec b                                         ; $74B0: $05
    nop                                           ; $74B1: $00
    nop                                           ; $74B2: $00
    ld h, $00                                     ; $74B3: $26 $00
    ld [$0018], sp                                ; $74B5: $08 $18 $00
    jr @+$24                                      ; $74B8: $18 $22

jr_004_74BA:
    nop                                           ; $74BA: $00
    jr nz, jr_004_74C9                            ; $74BB: $20 $0C

    rst RST_38                                    ; $74BD: $FF
    jr z, jr_004_74D4                             ; $74BE: $28 $14

    add b                                         ; $74C0: $80
    nop                                           ; $74C1: $00

jr_004_74C2:
    nop                                           ; $74C2: $00
    nop                                           ; $74C3: $00
    nop                                           ; $74C4: $00
    nop                                           ; $74C5: $00
    jp z, $E874                                   ; $74C6: $CA $74 $E8

jr_004_74C9:
    jr nz, jr_004_74CC                            ; $74C9: $20 $01

    nop                                           ; $74CB: $00

jr_004_74CC:
    nop                                           ; $74CC: $00
    jr z, jr_004_744F                             ; $74CD: $28 $80

    nop                                           ; $74CF: $00
    nop                                           ; $74D0: $00
    nop                                           ; $74D1: $00
    nop                                           ; $74D2: $00
    nop                                           ; $74D3: $00

jr_004_74D4:
    ret c                                         ; $74D4: $D8

    ld [hl], h                                    ; $74D5: $74
    add sp, $20                                   ; $74D6: $E8 $20
    ld bc, $0003                                  ; $74D8: $01 $03 $00
    jr z, jr_004_745D                             ; $74DB: $28 $80

    nop                                           ; $74DD: $00
    nop                                           ; $74DE: $00
    nop                                           ; $74DF: $00
    nop                                           ; $74E0: $00
    nop                                           ; $74E1: $00
    and $74                                       ; $74E2: $E6 $74
    add sp, $20                                   ; $74E4: $E8 $20
    ld bc, $00FF                                  ; $74E6: $01 $FF $00
    jr z, @-$7E                                   ; $74E9: $28 $80

    nop                                           ; $74EB: $00
    nop                                           ; $74EC: $00
    nop                                           ; $74ED: $00
    nop                                           ; $74EE: $00
    nop                                           ; $74EF: $00
    db $F4                                        ; $74F0: $F4
    ld [hl], h                                    ; $74F1: $74
    add sp, $20                                   ; $74F2: $E8 $20
    ld [bc], a                                    ; $74F4: $02
    nop                                           ; $74F5: $00
    nop                                           ; $74F6: $00
    jr z, jr_004_74F9                             ; $74F7: $28 $00

jr_004_74F9:
    ld [$8018], sp                                ; $74F9: $08 $18 $80
    nop                                           ; $74FC: $00
    nop                                           ; $74FD: $00
    nop                                           ; $74FE: $00
    nop                                           ; $74FF: $00
    nop                                           ; $7500: $00
    dec b                                         ; $7501: $05
    ld [hl], l                                    ; $7502: $75
    add sp, $20                                   ; $7503: $E8 $20
    ld [bc], a                                    ; $7505: $02
    nop                                           ; $7506: $00
    nop                                           ; $7507: $00
    jr z, jr_004_750D                             ; $7508: $28 $03

    ld [$8018], sp                                ; $750A: $08 $18 $80

jr_004_750D:
    nop                                           ; $750D: $00
    nop                                           ; $750E: $00
    nop                                           ; $750F: $00
    nop                                           ; $7510: $00
    nop                                           ; $7511: $00
    ld d, $75                                     ; $7512: $16 $75
    add sp, $20                                   ; $7514: $E8 $20
    ld [bc], a                                    ; $7516: $02
    nop                                           ; $7517: $00
    nop                                           ; $7518: $00
    jr z, @+$01                                   ; $7519: $28 $FF

    ld [$8018], sp                                ; $751B: $08 $18 $80
    nop                                           ; $751E: $00
    nop                                           ; $751F: $00
    nop                                           ; $7520: $00
    nop                                           ; $7521: $00
    nop                                           ; $7522: $00
    daa                                           ; $7523: $27
    ld [hl], l                                    ; $7524: $75
    add sp, $20                                   ; $7525: $E8 $20
    inc bc                                        ; $7527: $03
    nop                                           ; $7528: $00
    nop                                           ; $7529: $00
    jr z, jr_004_752C                             ; $752A: $28 $00

jr_004_752C:
    ld [$0018], sp                                ; $752C: $08 $18 $00
    jr @+$24                                      ; $752F: $18 $22

    add b                                         ; $7531: $80
    nop                                           ; $7532: $00
    nop                                           ; $7533: $00
    nop                                           ; $7534: $00
    nop                                           ; $7535: $00
    nop                                           ; $7536: $00
    dec sp                                        ; $7537: $3B
    ld [hl], l                                    ; $7538: $75
    add sp, $20                                   ; $7539: $E8 $20
    inc bc                                        ; $753B: $03
    nop                                           ; $753C: $00
    nop                                           ; $753D: $00
    jr z, jr_004_7540                             ; $753E: $28 $00

jr_004_7540:
    ld [$0318], sp                                ; $7540: $08 $18 $03
    jr @+$24                                      ; $7543: $18 $22

    add b                                         ; $7545: $80
    nop                                           ; $7546: $00
    nop                                           ; $7547: $00
    nop                                           ; $7548: $00
    nop                                           ; $7549: $00
    nop                                           ; $754A: $00
    ld c, a                                       ; $754B: $4F
    ld [hl], l                                    ; $754C: $75
    add sp, $20                                   ; $754D: $E8 $20
    inc bc                                        ; $754F: $03
    nop                                           ; $7550: $00
    nop                                           ; $7551: $00
    jr z, jr_004_7554                             ; $7552: $28 $00

jr_004_7554:
    ld [$FF18], sp                                ; $7554: $08 $18 $FF
    jr jr_004_757B                                ; $7557: $18 $22

    add b                                         ; $7559: $80
    nop                                           ; $755A: $00
    nop                                           ; $755B: $00
    nop                                           ; $755C: $00
    nop                                           ; $755D: $00
    nop                                           ; $755E: $00
    ld h, e                                       ; $755F: $63
    ld [hl], l                                    ; $7560: $75
    add sp, $20                                   ; $7561: $E8 $20
    inc b                                         ; $7563: $04
    nop                                           ; $7564: $00
    nop                                           ; $7565: $00
    jr z, jr_004_7568                             ; $7566: $28 $00

jr_004_7568:
    ld [$0018], sp                                ; $7568: $08 $18 $00
    jr jr_004_758F                                ; $756B: $18 $22

    nop                                           ; $756D: $00
    jr nz, jr_004_757C                            ; $756E: $20 $0C

    add b                                         ; $7570: $80
    nop                                           ; $7571: $00
    nop                                           ; $7572: $00
    nop                                           ; $7573: $00
    nop                                           ; $7574: $00
    nop                                           ; $7575: $00
    ld a, d                                       ; $7576: $7A
    ld [hl], l                                    ; $7577: $75
    add sp, $20                                   ; $7578: $E8 $20
    inc b                                         ; $757A: $04

jr_004_757B:
    nop                                           ; $757B: $00

jr_004_757C:
    nop                                           ; $757C: $00
    jr z, jr_004_757F                             ; $757D: $28 $00

jr_004_757F:
    ld [$0018], sp                                ; $757F: $08 $18 $00
    jr jr_004_75A6                                ; $7582: $18 $22

    inc bc                                        ; $7584: $03
    jr nz, jr_004_7593                            ; $7585: $20 $0C

    add b                                         ; $7587: $80
    nop                                           ; $7588: $00

jr_004_7589:
    nop                                           ; $7589: $00
    nop                                           ; $758A: $00
    nop                                           ; $758B: $00
    nop                                           ; $758C: $00
    sub c                                         ; $758D: $91
    ld [hl], l                                    ; $758E: $75

jr_004_758F:
    add sp, $20                                   ; $758F: $E8 $20
    inc b                                         ; $7591: $04
    nop                                           ; $7592: $00

jr_004_7593:
    nop                                           ; $7593: $00
    jr z, jr_004_7596                             ; $7594: $28 $00

jr_004_7596:
    ld [$0018], sp                                ; $7596: $08 $18 $00
    jr jr_004_75BD                                ; $7599: $18 $22

    rst RST_38                                    ; $759B: $FF
    jr nz, jr_004_75AA                            ; $759C: $20 $0C

    add b                                         ; $759E: $80
    nop                                           ; $759F: $00
    nop                                           ; $75A0: $00
    nop                                           ; $75A1: $00
    nop                                           ; $75A2: $00
    nop                                           ; $75A3: $00
    xor b                                         ; $75A4: $A8
    ld [hl], l                                    ; $75A5: $75

jr_004_75A6:
    add sp, $20                                   ; $75A6: $E8 $20
    dec b                                         ; $75A8: $05
    nop                                           ; $75A9: $00

jr_004_75AA:
    nop                                           ; $75AA: $00
    jr z, jr_004_75AD                             ; $75AB: $28 $00

jr_004_75AD:
    ld [$0018], sp                                ; $75AD: $08 $18 $00
    jr jr_004_75D4                                ; $75B0: $18 $22

    nop                                           ; $75B2: $00
    jr nz, jr_004_75C1                            ; $75B3: $20 $0C

    nop                                           ; $75B5: $00
    jr z, jr_004_75CC                             ; $75B6: $28 $14

    add b                                         ; $75B8: $80
    nop                                           ; $75B9: $00
    nop                                           ; $75BA: $00
    nop                                           ; $75BB: $00
    nop                                           ; $75BC: $00

jr_004_75BD:
    nop                                           ; $75BD: $00
    jp nz, $E875                                  ; $75BE: $C2 $75 $E8

jr_004_75C1:
    jr nz, @+$07                                  ; $75C1: $20 $05

    nop                                           ; $75C3: $00
    nop                                           ; $75C4: $00
    jr z, jr_004_75C7                             ; $75C5: $28 $00

jr_004_75C7:
    ld [$0018], sp                                ; $75C7: $08 $18 $00
    jr jr_004_75EE                                ; $75CA: $18 $22

jr_004_75CC:
    nop                                           ; $75CC: $00
    jr nz, jr_004_75DB                            ; $75CD: $20 $0C

    inc bc                                        ; $75CF: $03
    jr z, jr_004_75E6                             ; $75D0: $28 $14

    add b                                         ; $75D2: $80
    nop                                           ; $75D3: $00

jr_004_75D4:
    nop                                           ; $75D4: $00
    nop                                           ; $75D5: $00
    nop                                           ; $75D6: $00
    nop                                           ; $75D7: $00
    call c, $E875                                 ; $75D8: $DC $75 $E8

jr_004_75DB:
    jr nz, @+$07                                  ; $75DB: $20 $05

    nop                                           ; $75DD: $00
    nop                                           ; $75DE: $00
    jr z, jr_004_75E1                             ; $75DF: $28 $00

jr_004_75E1:
    ld [$0018], sp                                ; $75E1: $08 $18 $00
    jr @+$24                                      ; $75E4: $18 $22

jr_004_75E6:
    nop                                           ; $75E6: $00
    jr nz, jr_004_75F5                            ; $75E7: $20 $0C

    rst RST_38                                    ; $75E9: $FF
    jr z, jr_004_7600                             ; $75EA: $28 $14

    add b                                         ; $75EC: $80
    nop                                           ; $75ED: $00

jr_004_75EE:
    nop                                           ; $75EE: $00
    nop                                           ; $75EF: $00
    nop                                           ; $75F0: $00
    nop                                           ; $75F1: $00
    or $75                                        ; $75F2: $F6 $75
    db $E4                                        ; $75F4: $E4

jr_004_75F5:
    jr nz, jr_004_75F8                            ; $75F5: $20 $01

    nop                                           ; $75F7: $00

jr_004_75F8:
    nop                                           ; $75F8: $00
    jr jr_004_757B                                ; $75F9: $18 $80

    nop                                           ; $75FB: $00
    nop                                           ; $75FC: $00
    nop                                           ; $75FD: $00
    nop                                           ; $75FE: $00
    nop                                           ; $75FF: $00

jr_004_7600:
    inc b                                         ; $7600: $04
    halt                                          ; $7601: $76
    db $E4                                        ; $7602: $E4
    jr nz, jr_004_7606                            ; $7603: $20 $01

    inc bc                                        ; $7605: $03

jr_004_7606:
    nop                                           ; $7606: $00
    jr jr_004_7589                                ; $7607: $18 $80

    nop                                           ; $7609: $00
    nop                                           ; $760A: $00
    nop                                           ; $760B: $00
    nop                                           ; $760C: $00
    nop                                           ; $760D: $00
    ld [de], a                                    ; $760E: $12
    halt                                          ; $760F: $76
    db $E4                                        ; $7610: $E4
    jr nz, jr_004_7614                            ; $7611: $20 $01

    rst RST_38                                    ; $7613: $FF

jr_004_7614:
    nop                                           ; $7614: $00
    jr @-$7E                                      ; $7615: $18 $80

    nop                                           ; $7617: $00
    nop                                           ; $7618: $00
    nop                                           ; $7619: $00
    nop                                           ; $761A: $00
    nop                                           ; $761B: $00
    jr nz, jr_004_7694                            ; $761C: $20 $76

    db $E4                                        ; $761E: $E4
    jr nz, jr_004_7623                            ; $761F: $20 $02

    nop                                           ; $7621: $00
    nop                                           ; $7622: $00

jr_004_7623:
    jr jr_004_7625                                ; $7623: $18 $00

jr_004_7625:
    ld [$8008], sp                                ; $7625: $08 $08 $80
    nop                                           ; $7628: $00
    nop                                           ; $7629: $00
    nop                                           ; $762A: $00
    nop                                           ; $762B: $00
    nop                                           ; $762C: $00
    ld sp, $E476                                  ; $762D: $31 $76 $E4
    jr nz, jr_004_7634                            ; $7630: $20 $02

    nop                                           ; $7632: $00
    nop                                           ; $7633: $00

jr_004_7634:
    jr jr_004_7639                                ; $7634: $18 $03

    ld [$8008], sp                                ; $7636: $08 $08 $80

jr_004_7639:
    nop                                           ; $7639: $00
    nop                                           ; $763A: $00
    nop                                           ; $763B: $00
    nop                                           ; $763C: $00
    nop                                           ; $763D: $00
    ld b, d                                       ; $763E: $42
    halt                                          ; $763F: $76
    db $E4                                        ; $7640: $E4
    jr nz, jr_004_7645                            ; $7641: $20 $02

    nop                                           ; $7643: $00
    nop                                           ; $7644: $00

jr_004_7645:
    jr @+$01                                      ; $7645: $18 $FF

    ld [$8008], sp                                ; $7647: $08 $08 $80
    nop                                           ; $764A: $00
    nop                                           ; $764B: $00
    nop                                           ; $764C: $00
    nop                                           ; $764D: $00
    nop                                           ; $764E: $00
    ld d, e                                       ; $764F: $53
    halt                                          ; $7650: $76
    db $E4                                        ; $7651: $E4
    jr nz, @+$05                                  ; $7652: $20 $03

    nop                                           ; $7654: $00
    nop                                           ; $7655: $00
    jr jr_004_7658                                ; $7656: $18 $00

jr_004_7658:
    ld [$0008], sp                                ; $7658: $08 $08 $00
    db $10                                        ; $765B: $10
    ld a, [de]                                    ; $765C: $1A
    add b                                         ; $765D: $80
    nop                                           ; $765E: $00
    nop                                           ; $765F: $00
    nop                                           ; $7660: $00
    nop                                           ; $7661: $00
    nop                                           ; $7662: $00
    ld h, a                                       ; $7663: $67
    halt                                          ; $7664: $76
    db $E4                                        ; $7665: $E4
    jr nz, @+$05                                  ; $7666: $20 $03

    nop                                           ; $7668: $00
    nop                                           ; $7669: $00
    jr jr_004_766C                                ; $766A: $18 $00

jr_004_766C:
    ld [$0308], sp                                ; $766C: $08 $08 $03
    db $10                                        ; $766F: $10
    ld a, [de]                                    ; $7670: $1A
    add b                                         ; $7671: $80
    nop                                           ; $7672: $00
    nop                                           ; $7673: $00
    nop                                           ; $7674: $00
    nop                                           ; $7675: $00
    nop                                           ; $7676: $00
    ld a, e                                       ; $7677: $7B
    halt                                          ; $7678: $76
    db $E4                                        ; $7679: $E4
    jr nz, @+$05                                  ; $767A: $20 $03

    nop                                           ; $767C: $00
    nop                                           ; $767D: $00
    jr jr_004_7680                                ; $767E: $18 $00

jr_004_7680:
    ld [$FF08], sp                                ; $7680: $08 $08 $FF
    db $10                                        ; $7683: $10
    ld a, [de]                                    ; $7684: $1A
    add b                                         ; $7685: $80
    nop                                           ; $7686: $00
    nop                                           ; $7687: $00
    nop                                           ; $7688: $00
    nop                                           ; $7689: $00
    nop                                           ; $768A: $00
    adc a                                         ; $768B: $8F
    halt                                          ; $768C: $76
    db $E4                                        ; $768D: $E4
    jr nz, jr_004_7694                            ; $768E: $20 $04

    nop                                           ; $7690: $00
    nop                                           ; $7691: $00
    jr jr_004_7694                                ; $7692: $18 $00

jr_004_7694:
    ld [$0008], sp                                ; $7694: $08 $08 $00
    db $10                                        ; $7697: $10
    ld a, [de]                                    ; $7698: $1A
    nop                                           ; $7699: $00
    jr @+$0C                                      ; $769A: $18 $0A

    add b                                         ; $769C: $80
    nop                                           ; $769D: $00
    nop                                           ; $769E: $00
    nop                                           ; $769F: $00
    nop                                           ; $76A0: $00
    nop                                           ; $76A1: $00
    and [hl]                                      ; $76A2: $A6
    halt                                          ; $76A3: $76
    db $E4                                        ; $76A4: $E4
    jr nz, jr_004_76AB                            ; $76A5: $20 $04

    nop                                           ; $76A7: $00
    nop                                           ; $76A8: $00
    jr jr_004_76AB                                ; $76A9: $18 $00

jr_004_76AB:
    ld [$0008], sp                                ; $76AB: $08 $08 $00
    db $10                                        ; $76AE: $10
    ld a, [de]                                    ; $76AF: $1A
    inc bc                                        ; $76B0: $03
    jr @+$0C                                      ; $76B1: $18 $0A

    add b                                         ; $76B3: $80
    nop                                           ; $76B4: $00
    nop                                           ; $76B5: $00
    nop                                           ; $76B6: $00
    nop                                           ; $76B7: $00
    nop                                           ; $76B8: $00
    cp l                                          ; $76B9: $BD
    halt                                          ; $76BA: $76
    db $E4                                        ; $76BB: $E4
    jr nz, jr_004_76C2                            ; $76BC: $20 $04

    nop                                           ; $76BE: $00
    nop                                           ; $76BF: $00
    jr jr_004_76C2                                ; $76C0: $18 $00

jr_004_76C2:
    ld [$0008], sp                                ; $76C2: $08 $08 $00
    db $10                                        ; $76C5: $10
    ld a, [de]                                    ; $76C6: $1A
    rst RST_38                                    ; $76C7: $FF
    jr @+$0C                                      ; $76C8: $18 $0A

    add b                                         ; $76CA: $80
    nop                                           ; $76CB: $00
    nop                                           ; $76CC: $00
    nop                                           ; $76CD: $00
    nop                                           ; $76CE: $00
    nop                                           ; $76CF: $00
    call nc, $E476                                ; $76D0: $D4 $76 $E4
    jr nz, @+$07                                  ; $76D3: $20 $05

    nop                                           ; $76D5: $00
    nop                                           ; $76D6: $00
    jr jr_004_76D9                                ; $76D7: $18 $00

jr_004_76D9:
    ld [$0008], sp                                ; $76D9: $08 $08 $00
    db $10                                        ; $76DC: $10
    ld a, [de]                                    ; $76DD: $1A
    nop                                           ; $76DE: $00
    jr @+$0C                                      ; $76DF: $18 $0A

    nop                                           ; $76E1: $00
    jr nz, jr_004_76EC                            ; $76E2: $20 $08

    add b                                         ; $76E4: $80
    nop                                           ; $76E5: $00
    nop                                           ; $76E6: $00
    nop                                           ; $76E7: $00
    nop                                           ; $76E8: $00
    nop                                           ; $76E9: $00
    xor $76                                       ; $76EA: $EE $76

jr_004_76EC:
    db $E4                                        ; $76EC: $E4
    jr nz, @+$07                                  ; $76ED: $20 $05

    nop                                           ; $76EF: $00
    nop                                           ; $76F0: $00
    jr jr_004_76F3                                ; $76F1: $18 $00

jr_004_76F3:
    ld [$0008], sp                                ; $76F3: $08 $08 $00
    db $10                                        ; $76F6: $10
    ld a, [de]                                    ; $76F7: $1A
    nop                                           ; $76F8: $00
    jr @+$0C                                      ; $76F9: $18 $0A

    inc bc                                        ; $76FB: $03
    jr nz, @+$0A                                  ; $76FC: $20 $08

    add b                                         ; $76FE: $80
    nop                                           ; $76FF: $00
    nop                                           ; $7700: $00
    nop                                           ; $7701: $00
    nop                                           ; $7702: $00
    nop                                           ; $7703: $00
    ld [$E477], sp                                ; $7704: $08 $77 $E4
    jr nz, @+$07                                  ; $7707: $20 $05

    nop                                           ; $7709: $00
    nop                                           ; $770A: $00
    jr jr_004_770D                                ; $770B: $18 $00

jr_004_770D:
    ld [$0008], sp                                ; $770D: $08 $08 $00
    db $10                                        ; $7710: $10
    ld a, [de]                                    ; $7711: $1A
    nop                                           ; $7712: $00
    jr jr_004_771F                                ; $7713: $18 $0A

    rst RST_38                                    ; $7715: $FF
    jr nz, jr_004_7720                            ; $7716: $20 $08

    add b                                         ; $7718: $80
    nop                                           ; $7719: $00
    nop                                           ; $771A: $00
    nop                                           ; $771B: $00
    nop                                           ; $771C: $00
    nop                                           ; $771D: $00
    ld [hl+], a                                   ; $771E: $22

jr_004_771F:
    ld [hl], a                                    ; $771F: $77

jr_004_7720:
    db $E4                                        ; $7720: $E4
    jr nz, @+$08                                  ; $7721: $20 $06

    nop                                           ; $7723: $00
    nop                                           ; $7724: $00
    jr jr_004_7727                                ; $7725: $18 $00

jr_004_7727:
    ld [$0008], sp                                ; $7727: $08 $08 $00
    db $10                                        ; $772A: $10
    ld a, [de]                                    ; $772B: $1A
    nop                                           ; $772C: $00
    jr jr_004_7739                                ; $772D: $18 $0A

    nop                                           ; $772F: $00
    jr nz, jr_004_773A                            ; $7730: $20 $08

    nop                                           ; $7732: $00
    jr z, jr_004_7739                             ; $7733: $28 $04

    add b                                         ; $7735: $80
    nop                                           ; $7736: $00
    nop                                           ; $7737: $00
    nop                                           ; $7738: $00

jr_004_7739:
    nop                                           ; $7739: $00

jr_004_773A:
    nop                                           ; $773A: $00
    ccf                                           ; $773B: $3F
    ld [hl], a                                    ; $773C: $77
    db $E4                                        ; $773D: $E4
    jr nz, @+$08                                  ; $773E: $20 $06

    nop                                           ; $7740: $00
    nop                                           ; $7741: $00
    jr jr_004_7744                                ; $7742: $18 $00

jr_004_7744:
    ld [$0008], sp                                ; $7744: $08 $08 $00
    db $10                                        ; $7747: $10
    ld a, [de]                                    ; $7748: $1A
    nop                                           ; $7749: $00
    jr jr_004_7756                                ; $774A: $18 $0A

    nop                                           ; $774C: $00
    jr nz, jr_004_7757                            ; $774D: $20 $08

    inc bc                                        ; $774F: $03
    jr z, jr_004_7756                             ; $7750: $28 $04

    add b                                         ; $7752: $80
    nop                                           ; $7753: $00
    nop                                           ; $7754: $00
    nop                                           ; $7755: $00

jr_004_7756:
    nop                                           ; $7756: $00

jr_004_7757:
    nop                                           ; $7757: $00
    ld e, h                                       ; $7758: $5C
    ld [hl], a                                    ; $7759: $77
    db $E4                                        ; $775A: $E4
    jr nz, @+$08                                  ; $775B: $20 $06

    nop                                           ; $775D: $00
    nop                                           ; $775E: $00
    jr jr_004_7761                                ; $775F: $18 $00

jr_004_7761:
    ld [$0008], sp                                ; $7761: $08 $08 $00
    db $10                                        ; $7764: $10
    ld a, [de]                                    ; $7765: $1A
    nop                                           ; $7766: $00
    jr jr_004_7773                                ; $7767: $18 $0A

    nop                                           ; $7769: $00
    jr nz, jr_004_7774                            ; $776A: $20 $08

    rst RST_38                                    ; $776C: $FF
    jr z, jr_004_7773                             ; $776D: $28 $04

    add b                                         ; $776F: $80
    nop                                           ; $7770: $00
    nop                                           ; $7771: $00
    nop                                           ; $7772: $00

jr_004_7773:
    nop                                           ; $7773: $00

jr_004_7774:
    nop                                           ; $7774: $00
    ld a, c                                       ; $7775: $79
    ld [hl], a                                    ; $7776: $77
    db $E4                                        ; $7777: $E4
    jr nz, jr_004_7781                            ; $7778: $20 $07

    nop                                           ; $777A: $00
    nop                                           ; $777B: $00
    jr jr_004_777E                                ; $777C: $18 $00

jr_004_777E:
    ld [$0008], sp                                ; $777E: $08 $08 $00

jr_004_7781:
    db $10                                        ; $7781: $10
    ld a, [de]                                    ; $7782: $1A
    nop                                           ; $7783: $00
    jr jr_004_7790                                ; $7784: $18 $0A

    nop                                           ; $7786: $00
    jr nz, jr_004_7791                            ; $7787: $20 $08

    nop                                           ; $7789: $00
    jr z, jr_004_7790                             ; $778A: $28 $04

    nop                                           ; $778C: $00
    jr nc, jr_004_77AD                            ; $778D: $30 $1E

    add b                                         ; $778F: $80

jr_004_7790:
    nop                                           ; $7790: $00

jr_004_7791:
    nop                                           ; $7791: $00
    nop                                           ; $7792: $00
    nop                                           ; $7793: $00
    nop                                           ; $7794: $00
    sbc c                                         ; $7795: $99
    ld [hl], a                                    ; $7796: $77
    db $E4                                        ; $7797: $E4
    jr nz, jr_004_77A1                            ; $7798: $20 $07

    nop                                           ; $779A: $00
    nop                                           ; $779B: $00
    jr jr_004_779E                                ; $779C: $18 $00

jr_004_779E:
    ld [$0008], sp                                ; $779E: $08 $08 $00

jr_004_77A1:
    db $10                                        ; $77A1: $10
    ld a, [de]                                    ; $77A2: $1A
    nop                                           ; $77A3: $00
    jr jr_004_77B0                                ; $77A4: $18 $0A

    nop                                           ; $77A6: $00
    jr nz, jr_004_77B1                            ; $77A7: $20 $08

    nop                                           ; $77A9: $00
    jr z, jr_004_77B0                             ; $77AA: $28 $04

    inc bc                                        ; $77AC: $03

jr_004_77AD:
    jr nc, jr_004_77CD                            ; $77AD: $30 $1E

    add b                                         ; $77AF: $80

jr_004_77B0:
    nop                                           ; $77B0: $00

jr_004_77B1:
    nop                                           ; $77B1: $00
    nop                                           ; $77B2: $00
    nop                                           ; $77B3: $00
    nop                                           ; $77B4: $00
    cp c                                          ; $77B5: $B9
    ld [hl], a                                    ; $77B6: $77
    db $E4                                        ; $77B7: $E4
    jr nz, jr_004_77C1                            ; $77B8: $20 $07

    nop                                           ; $77BA: $00
    nop                                           ; $77BB: $00
    jr jr_004_77BE                                ; $77BC: $18 $00

jr_004_77BE:
    ld [$0008], sp                                ; $77BE: $08 $08 $00

jr_004_77C1:
    db $10                                        ; $77C1: $10
    ld a, [de]                                    ; $77C2: $1A
    nop                                           ; $77C3: $00
    jr jr_004_77D0                                ; $77C4: $18 $0A

    nop                                           ; $77C6: $00
    jr nz, jr_004_77D1                            ; $77C7: $20 $08

    nop                                           ; $77C9: $00
    jr z, jr_004_77D0                             ; $77CA: $28 $04

    rst RST_38                                    ; $77CC: $FF

jr_004_77CD:
    jr nc, jr_004_77ED                            ; $77CD: $30 $1E

    add b                                         ; $77CF: $80

jr_004_77D0:
    nop                                           ; $77D0: $00

jr_004_77D1:
    nop                                           ; $77D1: $00
    nop                                           ; $77D2: $00
    nop                                           ; $77D3: $00
    nop                                           ; $77D4: $00
    reti                                          ; $77D5: $D9


    ld [hl], a                                    ; $77D6: $77
    db $E4                                        ; $77D7: $E4
    jr nz, jr_004_77E2                            ; $77D8: $20 $08

    nop                                           ; $77DA: $00
    nop                                           ; $77DB: $00
    jr jr_004_77DE                                ; $77DC: $18 $00

jr_004_77DE:
    ld [$0008], sp                                ; $77DE: $08 $08 $00
    db $10                                        ; $77E1: $10

jr_004_77E2:
    ld a, [de]                                    ; $77E2: $1A
    nop                                           ; $77E3: $00
    jr jr_004_77F0                                ; $77E4: $18 $0A

    nop                                           ; $77E6: $00
    jr nz, @+$0A                                  ; $77E7: $20 $08

    nop                                           ; $77E9: $00
    jr z, jr_004_77F0                             ; $77EA: $28 $04

    nop                                           ; $77EC: $00

jr_004_77ED:
    jr nc, jr_004_780D                            ; $77ED: $30 $1E

    nop                                           ; $77EF: $00

jr_004_77F0:
    jr c, jr_004_77F2                             ; $77F0: $38 $00

jr_004_77F2:
    add b                                         ; $77F2: $80
    nop                                           ; $77F3: $00
    nop                                           ; $77F4: $00
    nop                                           ; $77F5: $00
    nop                                           ; $77F6: $00
    nop                                           ; $77F7: $00
    db $FC                                        ; $77F8: $FC
    ld [hl], a                                    ; $77F9: $77
    db $E4                                        ; $77FA: $E4
    jr nz, jr_004_7805                            ; $77FB: $20 $08

    nop                                           ; $77FD: $00
    nop                                           ; $77FE: $00
    jr jr_004_7801                                ; $77FF: $18 $00

jr_004_7801:
    ld [$0008], sp                                ; $7801: $08 $08 $00
    db $10                                        ; $7804: $10

jr_004_7805:
    ld a, [de]                                    ; $7805: $1A
    nop                                           ; $7806: $00
    jr jr_004_7813                                ; $7807: $18 $0A

    nop                                           ; $7809: $00
    jr nz, @+$0A                                  ; $780A: $20 $08

    nop                                           ; $780C: $00

jr_004_780D:
    jr z, jr_004_7813                             ; $780D: $28 $04

    nop                                           ; $780F: $00
    jr nc, jr_004_7830                            ; $7810: $30 $1E

    inc bc                                        ; $7812: $03

jr_004_7813:
    jr c, jr_004_7815                             ; $7813: $38 $00

jr_004_7815:
    add b                                         ; $7815: $80
    nop                                           ; $7816: $00
    nop                                           ; $7817: $00
    nop                                           ; $7818: $00
    nop                                           ; $7819: $00
    nop                                           ; $781A: $00
    rra                                           ; $781B: $1F
    ld a, b                                       ; $781C: $78
    db $E4                                        ; $781D: $E4
    jr nz, jr_004_7828                            ; $781E: $20 $08

    nop                                           ; $7820: $00
    nop                                           ; $7821: $00
    jr jr_004_7824                                ; $7822: $18 $00

jr_004_7824:
    ld [$0008], sp                                ; $7824: $08 $08 $00
    db $10                                        ; $7827: $10

jr_004_7828:
    ld a, [de]                                    ; $7828: $1A
    nop                                           ; $7829: $00
    jr jr_004_7836                                ; $782A: $18 $0A

    nop                                           ; $782C: $00
    jr nz, @+$0A                                  ; $782D: $20 $08

    nop                                           ; $782F: $00

jr_004_7830:
    jr z, jr_004_7836                             ; $7830: $28 $04

    nop                                           ; $7832: $00
    jr nc, jr_004_7853                            ; $7833: $30 $1E

    rst RST_38                                    ; $7835: $FF

jr_004_7836:
    jr c, jr_004_7838                             ; $7836: $38 $00

jr_004_7838:
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

jr_004_7853:
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

Jump_004_7868:
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

Jump_004_7F18:
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
