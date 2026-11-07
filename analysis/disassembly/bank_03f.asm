; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03f", ROMX[$4000], BANK[$3f]

    ld sp, $DD00                                  ; $4000: $31 $00 $DD
    di                                            ; $4003: $F3
    rst RST_10                                    ; $4004: $D7
    ld hl, $C03A                                  ; $4005: $21 $3A $C0
    res 1, [hl]                                   ; $4008: $CB $8E
    set 2, [hl]                                   ; $400A: $CB $D6
    ld a, $FF                                     ; $400C: $3E $FF
    ldh [rBGP], a                                 ; $400E: $E0 $47
    ldh [rOBP0], a                                ; $4010: $E0 $48
    ldh [rOBP1], a                                ; $4012: $E0 $49
    ldh [$FFEA], a                                ; $4014: $E0 $EA
    ldh [$FFEB], a                                ; $4016: $E0 $EB
    ldh [$FFEC], a                                ; $4018: $E0 $EC
    call Call_000_13ED                            ; $401A: $CD $ED $13
    ld de, $001F                                  ; $401D: $11 $1F $00
    call Call_000_14C0                            ; $4020: $CD $C0 $14
    xor a                                         ; $4023: $AF
    ldh [$FFE4], a                                ; $4024: $E0 $E4
    ld [$C2AA], a                                 ; $4026: $EA $AA $C2
    ld [$C2AC], a                                 ; $4029: $EA $AC $C2
    ldh [$FFE2], a                                ; $402C: $E0 $E2
    ld hl, $675D                                  ; $402E: $21 $5D $67
    ld de, $C359                                  ; $4031: $11 $59 $C3
    ld b, $31                                     ; $4034: $06 $31
    rst RST_20                                    ; $4036: $E7
    ld hl, $C359                                  ; $4037: $21 $59 $C3
    ld de, $9100                                  ; $403A: $11 $00 $91
    ld b, $6E                                     ; $403D: $06 $6E
    call Call_000_1188                            ; $403F: $CD $88 $11
    ld hl, $6CBD                                  ; $4042: $21 $BD $6C
    ld de, $C359                                  ; $4045: $11 $59 $C3
    ld b, $31                                     ; $4048: $06 $31
    rst RST_20                                    ; $404A: $E7
    ld hl, $C359                                  ; $404B: $21 $59 $C3
    ld de, $8000                                  ; $404E: $11 $00 $80
    ld b, $5A                                     ; $4051: $06 $5A
    call Call_000_1188                            ; $4053: $CD $88 $11
    ld e, $00                                     ; $4056: $1E $00
    ld d, $10                                     ; $4058: $16 $10
    ld hl, $9800                                  ; $405A: $21 $00 $98
    ld b, $14                                     ; $405D: $06 $14
    ld c, $20                                     ; $405F: $0E $20
    call Call_000_10EA                            ; $4061: $CD $EA $10
    ld hl, $7027                                  ; $4064: $21 $27 $70
    ld de, $C359                                  ; $4067: $11 $59 $C3
    ld b, $31                                     ; $406A: $06 $31
    rst RST_20                                    ; $406C: $E7
    ld hl, $9C00                                  ; $406D: $21 $00 $9C
    ld de, $C359                                  ; $4070: $11 $59 $C3
    ld b, $14                                     ; $4073: $06 $14
    ld c, $12                                     ; $4075: $0E $12
    call Call_000_10C0                            ; $4077: $CD $C0 $10
    call Call_000_0F9E                            ; $407A: $CD $9E $0F
    ld hl, $D840                                  ; $407D: $21 $40 $D8
    ld de, $4201                                  ; $4080: $11 $01 $42
    call Call_000_0F8E                            ; $4083: $CD $8E $0F
    ld hl, $D800                                  ; $4086: $21 $00 $D8
    ld de, $4305                                  ; $4089: $11 $05 $43
    call Call_000_0F8E                            ; $408C: $CD $8E $0F
    ld hl, $D7C0                                  ; $408F: $21 $C0 $D7
    ld de, $4361                                  ; $4092: $11 $61 $43
    call Call_000_0F8E                            ; $4095: $CD $8E $0F
    ld hl, $D780                                  ; $4098: $21 $80 $D7
    ld de, $441F                                  ; $409B: $11 $1F $44
    call Call_000_0F8E                            ; $409E: $CD $8E $0F
    ld hl, $D740                                  ; $40A1: $21 $40 $D7
    ld de, $4484                                  ; $40A4: $11 $84 $44
    call Call_000_0F8E                            ; $40A7: $CD $8E $0F
    ld a, $01                                     ; $40AA: $3E $01
    ld [$C2B5], a                                 ; $40AC: $EA $B5 $C2
    ld a, $87                                     ; $40AF: $3E $87
    ld [$C2B6], a                                 ; $40B1: $EA $B6 $C2
    ld a, $54                                     ; $40B4: $3E $54
    ld [$C2B9], a                                 ; $40B6: $EA $B9 $C2
    ld a, $86                                     ; $40B9: $3E $86
    ld [$C2BA], a                                 ; $40BB: $EA $BA $C2
    ld a, $87                                     ; $40BE: $3E $87
    rst RST_18                                    ; $40C0: $DF
    ldh a, [rSTAT]                                ; $40C1: $F0 $41
    or $40                                        ; $40C3: $F6 $40
    ldh [rSTAT], a                                ; $40C5: $E0 $41
    ld a, $17                                     ; $40C7: $3E $17
    ld a, $8F                                     ; $40C9: $3E $8F
    ldh [rLYC], a                                 ; $40CB: $E0 $45
    ldh a, [rIE]                                  ; $40CD: $F0 $FF
    or $03                                        ; $40CF: $F6 $03
    ldh [rIE], a                                  ; $40D1: $E0 $FF
    ei                                            ; $40D3: $FB
    ld de, $41C9                                  ; $40D4: $11 $C9 $41
    ld hl, $C329                                  ; $40D7: $21 $29 $C3
    ld c, $24                                     ; $40DA: $0E $24

jr_03F_40DC:
    ld a, [de]                                    ; $40DC: $1A
    inc de                                        ; $40DD: $13
    ld [hl+], a                                   ; $40DE: $22
    dec c                                         ; $40DF: $0D
    jr nz, jr_03F_40DC                            ; $40E0: $20 $FA

    ld a, [$C33A]                                 ; $40E2: $FA $3A $C3
    ldh [$FFE2], a                                ; $40E5: $E0 $E2
    ld c, $00                                     ; $40E7: $0E $00
    ld a, [$C004]                                 ; $40E9: $FA $04 $C0
    and $03                                       ; $40EC: $E6 $03
    jr z, jr_03F_4106                             ; $40EE: $28 $16

    ld c, $02                                     ; $40F0: $0E $02
    cp $01                                        ; $40F2: $FE $01
    jr z, jr_03F_4106                             ; $40F4: $28 $10

    ld c, $08                                     ; $40F6: $0E $08
    cp $03                                        ; $40F8: $FE $03
    jr z, jr_03F_4106                             ; $40FA: $28 $0A

    ld c, $04                                     ; $40FC: $0E $04
    ld a, [$C2F2]                                 ; $40FE: $FA $F2 $C2
    or a                                          ; $4101: $B7
    jr nz, jr_03F_4106                            ; $4102: $20 $02

    ld c, $06                                     ; $4104: $0E $06

jr_03F_4106:
    ld a, [$C006]                                 ; $4106: $FA $06 $C0
    or a                                          ; $4109: $B7
    jr z, jr_03F_4110                             ; $410A: $28 $04

    ld a, c                                       ; $410C: $79
    add $0A                                       ; $410D: $C6 $0A
    ld c, a                                       ; $410F: $4F

jr_03F_4110:
    ld hl, $41ED                                  ; $4110: $21 $ED $41
    ld b, $00                                     ; $4113: $06 $00
    add hl, bc                                    ; $4115: $09
    ld c, [hl]                                    ; $4116: $4E
    inc hl                                        ; $4117: $23
    ld b, [hl]                                    ; $4118: $46
    ld hl, $C32B                                  ; $4119: $21 $2B $C3
    ld [hl], c                                    ; $411C: $71
    inc hl                                        ; $411D: $23
    ld [hl], b                                    ; $411E: $70
    ld a, $95                                     ; $411F: $3E $95
    call Call_000_135D                            ; $4121: $CD $5D $13
    call Call_000_0424                            ; $4124: $CD $24 $04
    ld a, $1B                                     ; $4127: $3E $1B
    ldh [rBGP], a                                 ; $4129: $E0 $47
    ldh [$FFEA], a                                ; $412B: $E0 $EA
    ldh [$FFEB], a                                ; $412D: $E0 $EB
    ldh [$FFEC], a                                ; $412F: $E0 $EC
    ld a, $D8                                     ; $4131: $3E $D8
    ldh [rOBP0], a                                ; $4133: $E0 $48
    ld a, $C4                                     ; $4135: $3E $C4
    ldh [rOBP1], a                                ; $4137: $E0 $49
    call Call_000_147A                            ; $4139: $CD $7A $14

Jump_03F_413C:
    call Call_03F_4182                            ; $413C: $CD $82 $41
    ld b, $39                                     ; $413F: $06 $39
    ld hl, $4067                                  ; $4141: $21 $67 $40
    rst RST_08                                    ; $4144: $CF
    ld a, [$C32E]                                 ; $4145: $FA $2E $C3
    bit 6, a                                      ; $4148: $CB $77
    jr z, jr_03F_4151                             ; $414A: $28 $05

    ld a, $1F                                     ; $414C: $3E $1F
    call Call_000_13BC                            ; $414E: $CD $BC $13

jr_03F_4151:
    ld hl, $C329                                  ; $4151: $21 $29 $C3
    ld e, [hl]                                    ; $4154: $5E
    inc hl                                        ; $4155: $23
    ld d, [hl]                                    ; $4156: $56
    inc de                                        ; $4157: $13
    ld [hl], d                                    ; $4158: $72
    dec hl                                        ; $4159: $2B
    ld [hl], e                                    ; $415A: $73
    call Call_000_0424                            ; $415B: $CD $24 $04
    ld a, [$C32E]                                 ; $415E: $FA $2E $C3
    add a                                         ; $4161: $87
    jr c, jr_03F_416F                             ; $4162: $38 $0B

    ldh a, [$FF99]                                ; $4164: $F0 $99
    ld e, a                                       ; $4166: $5F
    ldh a, [$FFAC]                                ; $4167: $F0 $AC
    or e                                          ; $4169: $B3
    and $80                                       ; $416A: $E6 $80
    jp z, Jump_03F_413C                           ; $416C: $CA $3C $41

jr_03F_416F:
    ld hl, $C03A                                  ; $416F: $21 $3A $C0
    res 2, [hl]                                   ; $4172: $CB $96
    ld a, $00                                     ; $4174: $3E $00
    call Call_000_135D                            ; $4176: $CD $5D $13
    call Call_000_0424                            ; $4179: $CD $24 $04
    ld b, $2C                                     ; $417C: $06 $2C
    ld hl, $6F70                                  ; $417E: $21 $70 $6F
    rst RST_00                                    ; $4181: $C7

Call_03F_4182:
    ld hl, $D840                                  ; $4182: $21 $40 $D8
    call Call_000_0E28                            ; $4185: $CD $28 $0E
    ld hl, $D7C0                                  ; $4188: $21 $C0 $D7
    call Call_000_0E28                            ; $418B: $CD $28 $0E
    ld hl, $D800                                  ; $418E: $21 $00 $D8
    ld a, [$C32E]                                 ; $4191: $FA $2E $C3
    and $04                                       ; $4194: $E6 $04
    jr nz, jr_03F_419D                            ; $4196: $20 $05

    call Call_000_0DD4                            ; $4198: $CD $D4 $0D
    jr jr_03F_41A8                                ; $419B: $18 $0B

jr_03F_419D:
    ld a, [$D800]                                 ; $419D: $FA $00 $D8
    and $EF                                       ; $41A0: $E6 $EF
    ld [$D800], a                                 ; $41A2: $EA $00 $D8
    call Call_000_0E28                            ; $41A5: $CD $28 $0E

jr_03F_41A8:
    ld hl, $D780                                  ; $41A8: $21 $80 $D7
    ld a, [$C32E]                                 ; $41AB: $FA $2E $C3
    and $08                                       ; $41AE: $E6 $08
    jr nz, jr_03F_41B7                            ; $41B0: $20 $05

    call Call_000_0DD4                            ; $41B2: $CD $D4 $0D
    jr jr_03F_41C2                                ; $41B5: $18 $0B

jr_03F_41B7:
    ld a, [$D780]                                 ; $41B7: $FA $80 $D7
    and $EF                                       ; $41BA: $E6 $EF
    ld [$D780], a                                 ; $41BC: $EA $80 $D7
    call Call_000_0E28                            ; $41BF: $CD $28 $0E

jr_03F_41C2:
    ld hl, $D740                                  ; $41C2: $21 $40 $D7
    call Call_000_0DD4                            ; $41C5: $CD $D4 $0D
    ret                                           ; $41C8: $C9


    nop                                           ; $41C9: $00
    nop                                           ; $41CA: $00
    ld a, [hl-]                                   ; $41CB: $3A
    ld b, h                                       ; $41CC: $44
    nop                                           ; $41CD: $00
    nop                                           ; $41CE: $00
    ld e, c                                       ; $41CF: $59
    jp $C379                                      ; $41D0: $C3 $79 $C3


    ld a, c                                       ; $41D3: $79
    push bc                                       ; $41D4: $C5
    ld b, c                                       ; $41D5: $41
    ld bc, $8800                                  ; $41D6: $01 $00 $88
    nop                                           ; $41D9: $00
    ldh a, [rP1]                                  ; $41DA: $F0 $00
    nop                                           ; $41DC: $00
    nop                                           ; $41DD: $00
    ld a, c                                       ; $41DE: $79
    push bc                                       ; $41DF: $C5
    nop                                           ; $41E0: $00
    ld b, c                                       ; $41E1: $41
    ld bc, $0080                                  ; $41E2: $01 $80 $00
    nop                                           ; $41E5: $00
    nop                                           ; $41E6: $00
    nop                                           ; $41E7: $00
    nop                                           ; $41E8: $00
    nop                                           ; $41E9: $00
    nop                                           ; $41EA: $00
    nop                                           ; $41EB: $00
    nop                                           ; $41EC: $00
    ld a, [hl-]                                   ; $41ED: $3A
    ld b, h                                       ; $41EE: $44
    or l                                          ; $41EF: $B5
    ld b, [hl]                                    ; $41F0: $46
    sub e                                         ; $41F1: $93
    ld c, c                                       ; $41F2: $49
    ld h, a                                       ; $41F3: $67
    ld c, c                                       ; $41F4: $49
    call nz, Call_03F_764F                        ; $41F5: $C4 $4F $76
    ld b, l                                       ; $41F8: $45
    ld de, $C648                                  ; $41F9: $11 $48 $C6
    ld c, h                                       ; $41FC: $4C
    sbc d                                         ; $41FD: $9A
    ld c, h                                       ; $41FE: $4C
    ld d, $52                                     ; $41FF: $16 $52
    add b                                         ; $4201: $80
    nop                                           ; $4202: $00
    nop                                           ; $4203: $00
    nop                                           ; $4204: $00
    ld [$1800], sp                                ; $4205: $08 $00 $18
    nop                                           ; $4208: $00
    nop                                           ; $4209: $00
    nop                                           ; $420A: $00
    nop                                           ; $420B: $00
    nop                                           ; $420C: $00
    nop                                           ; $420D: $00
    nop                                           ; $420E: $00
    nop                                           ; $420F: $00
    nop                                           ; $4210: $00
    add b                                         ; $4211: $80
    ccf                                           ; $4212: $3F
    ld hl, $0042                                  ; $4213: $21 $42 $00
    nop                                           ; $4216: $00
    ld hl, $0042                                  ; $4217: $21 $42 $00
    nop                                           ; $421A: $00
    nop                                           ; $421B: $00
    nop                                           ; $421C: $00
    inc b                                         ; $421D: $04
    inc b                                         ; $421E: $04
    ret nz                                        ; $421F: $C0

    ret c                                         ; $4220: $D8

    or a                                          ; $4221: $B7
    ld b, d                                       ; $4222: $42
    rst RST_38                                    ; $4223: $FF
    rst RST_38                                    ; $4224: $FF
    or a                                          ; $4225: $B7
    ld b, d                                       ; $4226: $42
    rst RST_38                                    ; $4227: $FF
    rst RST_38                                    ; $4228: $FF
    or a                                          ; $4229: $B7
    ld b, d                                       ; $422A: $42
    rst RST_38                                    ; $422B: $FF
    rst RST_38                                    ; $422C: $FF
    or a                                          ; $422D: $B7
    ld b, d                                       ; $422E: $42
    rst RST_38                                    ; $422F: $FF
    rst RST_38                                    ; $4230: $FF
    or a                                          ; $4231: $B7
    ld b, d                                       ; $4232: $42
    rst RST_38                                    ; $4233: $FF
    rst RST_38                                    ; $4234: $FF
    or a                                          ; $4235: $B7
    ld b, d                                       ; $4236: $42
    rst RST_38                                    ; $4237: $FF
    rst RST_38                                    ; $4238: $FF
    or a                                          ; $4239: $B7
    ld b, d                                       ; $423A: $42
    rst RST_38                                    ; $423B: $FF
    rst RST_38                                    ; $423C: $FF
    or a                                          ; $423D: $B7
    ld b, d                                       ; $423E: $42
    rst RST_38                                    ; $423F: $FF
    rst RST_38                                    ; $4240: $FF
    or a                                          ; $4241: $B7
    ld b, d                                       ; $4242: $42
    rst RST_38                                    ; $4243: $FF
    rst RST_38                                    ; $4244: $FF
    or a                                          ; $4245: $B7
    ld b, d                                       ; $4246: $42
    rst RST_38                                    ; $4247: $FF
    rst RST_38                                    ; $4248: $FF
    or a                                          ; $4249: $B7
    ld b, d                                       ; $424A: $42
    rst RST_38                                    ; $424B: $FF
    rst RST_38                                    ; $424C: $FF
    or a                                          ; $424D: $B7
    ld b, d                                       ; $424E: $42
    rst RST_38                                    ; $424F: $FF
    rst RST_38                                    ; $4250: $FF
    or a                                          ; $4251: $B7
    ld b, d                                       ; $4252: $42
    rst RST_38                                    ; $4253: $FF
    rst RST_38                                    ; $4254: $FF
    or a                                          ; $4255: $B7
    ld b, d                                       ; $4256: $42
    rst RST_38                                    ; $4257: $FF
    rst RST_38                                    ; $4258: $FF
    or a                                          ; $4259: $B7
    ld b, d                                       ; $425A: $42
    rst RST_38                                    ; $425B: $FF
    rst RST_38                                    ; $425C: $FF
    or a                                          ; $425D: $B7
    ld b, d                                       ; $425E: $42
    rst RST_38                                    ; $425F: $FF
    rst RST_38                                    ; $4260: $FF
    or a                                          ; $4261: $B7
    ld b, d                                       ; $4262: $42
    rst RST_38                                    ; $4263: $FF
    rst RST_38                                    ; $4264: $FF
    or a                                          ; $4265: $B7
    ld b, d                                       ; $4266: $42
    rst RST_38                                    ; $4267: $FF
    rst RST_38                                    ; $4268: $FF
    or a                                          ; $4269: $B7
    ld b, d                                       ; $426A: $42
    rst RST_38                                    ; $426B: $FF
    rst RST_38                                    ; $426C: $FF
    or a                                          ; $426D: $B7
    ld b, d                                       ; $426E: $42
    rst RST_38                                    ; $426F: $FF
    rst RST_38                                    ; $4270: $FF
    or a                                          ; $4271: $B7
    ld b, d                                       ; $4272: $42
    rst RST_38                                    ; $4273: $FF
    rst RST_38                                    ; $4274: $FF
    or a                                          ; $4275: $B7
    ld b, d                                       ; $4276: $42
    rst RST_38                                    ; $4277: $FF
    rst RST_38                                    ; $4278: $FF
    or a                                          ; $4279: $B7
    ld b, d                                       ; $427A: $42
    rst RST_38                                    ; $427B: $FF
    rst RST_38                                    ; $427C: $FF
    or a                                          ; $427D: $B7
    ld b, d                                       ; $427E: $42
    rst RST_38                                    ; $427F: $FF
    rst RST_38                                    ; $4280: $FF
    or a                                          ; $4281: $B7
    ld b, d                                       ; $4282: $42
    rst RST_38                                    ; $4283: $FF
    rst RST_38                                    ; $4284: $FF
    or a                                          ; $4285: $B7
    ld b, d                                       ; $4286: $42
    rst RST_38                                    ; $4287: $FF
    rst RST_38                                    ; $4288: $FF
    or a                                          ; $4289: $B7
    ld b, d                                       ; $428A: $42
    rst RST_38                                    ; $428B: $FF
    rst RST_38                                    ; $428C: $FF
    or a                                          ; $428D: $B7
    ld b, d                                       ; $428E: $42
    rst RST_38                                    ; $428F: $FF
    rst RST_38                                    ; $4290: $FF
    or a                                          ; $4291: $B7
    ld b, d                                       ; $4292: $42
    rst RST_38                                    ; $4293: $FF
    rst RST_38                                    ; $4294: $FF
    or a                                          ; $4295: $B7
    ld b, d                                       ; $4296: $42
    rst RST_38                                    ; $4297: $FF
    rst RST_38                                    ; $4298: $FF
    or a                                          ; $4299: $B7
    ld b, d                                       ; $429A: $42
    rst RST_38                                    ; $429B: $FF
    rst RST_38                                    ; $429C: $FF
    or a                                          ; $429D: $B7
    ld b, d                                       ; $429E: $42
    rst RST_38                                    ; $429F: $FF
    rst RST_38                                    ; $42A0: $FF
    or a                                          ; $42A1: $B7
    ld b, d                                       ; $42A2: $42
    rst RST_38                                    ; $42A3: $FF
    rst RST_38                                    ; $42A4: $FF
    pop de                                        ; $42A5: $D1
    ld b, d                                       ; $42A6: $42
    rst RST_38                                    ; $42A7: $FF
    rst RST_38                                    ; $42A8: $FF
    db $EB                                        ; $42A9: $EB
    ld b, d                                       ; $42AA: $42
    rst RST_38                                    ; $42AB: $FF
    rst RST_38                                    ; $42AC: $FF
    pop de                                        ; $42AD: $D1
    ld b, d                                       ; $42AE: $42
    rst RST_38                                    ; $42AF: $FF
    rst RST_38                                    ; $42B0: $FF
    or a                                          ; $42B1: $B7
    ld b, d                                       ; $42B2: $42
    rst RST_38                                    ; $42B3: $FF
    rst RST_38                                    ; $42B4: $FF
    rst RST_38                                    ; $42B5: $FF
    rst RST_38                                    ; $42B6: $FF
    sub b                                         ; $42B7: $90
    nop                                           ; $42B8: $00
    nop                                           ; $42B9: $00
    rst RST_38                                    ; $42BA: $FF
    rst RST_38                                    ; $42BB: $FF
    rst RST_38                                    ; $42BC: $FF
    pop bc                                        ; $42BD: $C1
    ld b, d                                       ; $42BE: $42
    nop                                           ; $42BF: $00
    nop                                           ; $42C0: $00
    dec b                                         ; $42C1: $05
    jr nz, @+$0E                                  ; $42C2: $20 $0C

    nop                                           ; $42C4: $00
    jr nz, jr_03F_42DB                            ; $42C5: $20 $14

    ld [bc], a                                    ; $42C7: $02
    jr nz, jr_03F_42E6                            ; $42C8: $20 $1C

    inc b                                         ; $42CA: $04
    db $10                                        ; $42CB: $10
    jr jr_03F_42E6                                ; $42CC: $18 $18

    db $10                                        ; $42CE: $10
    jr nz, jr_03F_42EB                            ; $42CF: $20 $1A

    sub b                                         ; $42D1: $90
    nop                                           ; $42D2: $00
    nop                                           ; $42D3: $00
    rst RST_38                                    ; $42D4: $FF
    rst RST_38                                    ; $42D5: $FF
    rst RST_38                                    ; $42D6: $FF
    db $DB                                        ; $42D7: $DB
    ld b, d                                       ; $42D8: $42
    nop                                           ; $42D9: $00
    nop                                           ; $42DA: $00

jr_03F_42DB:
    dec b                                         ; $42DB: $05
    jr nz, @+$0E                                  ; $42DC: $20 $0C

    ld b, $20                                     ; $42DE: $06 $20
    inc d                                         ; $42E0: $14
    ld [$1C20], sp                                ; $42E1: $08 $20 $1C
    ld a, [bc]                                    ; $42E4: $0A
    db $10                                        ; $42E5: $10

jr_03F_42E6:
    jr jr_03F_4300                                ; $42E6: $18 $18

    db $10                                        ; $42E8: $10
    jr nz, jr_03F_4305                            ; $42E9: $20 $1A

jr_03F_42EB:
    sub b                                         ; $42EB: $90
    nop                                           ; $42EC: $00
    nop                                           ; $42ED: $00
    rst RST_38                                    ; $42EE: $FF
    rst RST_38                                    ; $42EF: $FF
    rst RST_38                                    ; $42F0: $FF
    push af                                       ; $42F1: $F5
    ld b, d                                       ; $42F2: $42
    nop                                           ; $42F3: $00
    nop                                           ; $42F4: $00
    dec b                                         ; $42F5: $05
    jr nz, @+$0E                                  ; $42F6: $20 $0C

    inc c                                         ; $42F8: $0C
    jr nz, jr_03F_430F                            ; $42F9: $20 $14

    ld c, $20                                     ; $42FB: $0E $20
    inc e                                         ; $42FD: $1C
    db $10                                        ; $42FE: $10
    db $10                                        ; $42FF: $10

jr_03F_4300:
    jr jr_03F_431A                                ; $4300: $18 $18

    db $10                                        ; $4302: $10
    jr nz, jr_03F_431F                            ; $4303: $20 $1A

jr_03F_4305:
    sub b                                         ; $4305: $90
    nop                                           ; $4306: $00
    nop                                           ; $4307: $00
    nop                                           ; $4308: $00
    ld [$1800], sp                                ; $4309: $08 $00 $18
    nop                                           ; $430C: $00
    nop                                           ; $430D: $00
    nop                                           ; $430E: $00

jr_03F_430F:
    nop                                           ; $430F: $00
    nop                                           ; $4310: $00
    nop                                           ; $4311: $00
    nop                                           ; $4312: $00
    ld [de], a                                    ; $4313: $12
    nop                                           ; $4314: $00
    add b                                         ; $4315: $80
    ccf                                           ; $4316: $3F
    dec h                                         ; $4317: $25
    ld b, e                                       ; $4318: $43
    inc c                                         ; $4319: $0C

jr_03F_431A:
    nop                                           ; $431A: $00
    dec h                                         ; $431B: $25
    ld b, e                                       ; $431C: $43
    inc c                                         ; $431D: $0C
    nop                                           ; $431E: $00

jr_03F_431F:
    nop                                           ; $431F: $00
    nop                                           ; $4320: $00
    ld [bc], a                                    ; $4321: $02
    ld [bc], a                                    ; $4322: $02
    ret nz                                        ; $4323: $C0

    ret c                                         ; $4324: $D8

    ld b, l                                       ; $4325: $45
    ld b, e                                       ; $4326: $43
    rst RST_38                                    ; $4327: $FF
    rst RST_38                                    ; $4328: $FF
    scf                                           ; $4329: $37
    ld b, e                                       ; $432A: $43
    rst RST_38                                    ; $432B: $FF
    rst RST_38                                    ; $432C: $FF
    ld b, l                                       ; $432D: $45
    ld b, e                                       ; $432E: $43
    rst RST_38                                    ; $432F: $FF
    rst RST_38                                    ; $4330: $FF
    ld d, e                                       ; $4331: $53
    ld b, e                                       ; $4332: $43
    rst RST_38                                    ; $4333: $FF
    rst RST_38                                    ; $4334: $FF
    rst RST_38                                    ; $4335: $FF
    rst RST_38                                    ; $4336: $FF
    sub b                                         ; $4337: $90
    nop                                           ; $4338: $00
    nop                                           ; $4339: $00
    rst RST_38                                    ; $433A: $FF
    rst RST_38                                    ; $433B: $FF
    rst RST_38                                    ; $433C: $FF
    ld b, c                                       ; $433D: $41
    ld b, e                                       ; $433E: $43
    nop                                           ; $433F: $00
    nop                                           ; $4340: $00
    ld bc, $1428                                  ; $4341: $01 $28 $14
    nop                                           ; $4344: $00
    sub b                                         ; $4345: $90
    nop                                           ; $4346: $00
    nop                                           ; $4347: $00
    rst RST_38                                    ; $4348: $FF
    rst RST_38                                    ; $4349: $FF
    rst RST_38                                    ; $434A: $FF
    ld c, a                                       ; $434B: $4F
    ld b, e                                       ; $434C: $43
    nop                                           ; $434D: $00
    nop                                           ; $434E: $00
    ld bc, $1428                                  ; $434F: $01 $28 $14
    ld [bc], a                                    ; $4352: $02
    sub b                                         ; $4353: $90
    nop                                           ; $4354: $00
    nop                                           ; $4355: $00
    rst RST_38                                    ; $4356: $FF
    rst RST_38                                    ; $4357: $FF
    rst RST_38                                    ; $4358: $FF
    ld e, l                                       ; $4359: $5D
    ld b, e                                       ; $435A: $43
    nop                                           ; $435B: $00
    nop                                           ; $435C: $00
    ld bc, $1428                                  ; $435D: $01 $28 $14
    inc b                                         ; $4360: $04
    add b                                         ; $4361: $80
    nop                                           ; $4362: $00
    nop                                           ; $4363: $00
    nop                                           ; $4364: $00
    ld l, b                                       ; $4365: $68
    nop                                           ; $4366: $00
    jr jr_03F_4369                                ; $4367: $18 $00

jr_03F_4369:
    nop                                           ; $4369: $00
    nop                                           ; $436A: $00
    nop                                           ; $436B: $00
    nop                                           ; $436C: $00
    nop                                           ; $436D: $00
    nop                                           ; $436E: $00
    inc e                                         ; $436F: $1C
    nop                                           ; $4370: $00
    add b                                         ; $4371: $80
    ccf                                           ; $4372: $3F
    add c                                         ; $4373: $81
    ld b, e                                       ; $4374: $43
    nop                                           ; $4375: $00
    nop                                           ; $4376: $00
    add c                                         ; $4377: $81
    ld b, e                                       ; $4378: $43
    nop                                           ; $4379: $00
    nop                                           ; $437A: $00
    nop                                           ; $437B: $00
    nop                                           ; $437C: $00
    inc b                                         ; $437D: $04
    inc b                                         ; $437E: $04
    ret nz                                        ; $437F: $C0

    ret c                                         ; $4380: $D8

    db $E3                                        ; $4381: $E3
    ld b, e                                       ; $4382: $43
    rst RST_38                                    ; $4383: $FF
    rst RST_38                                    ; $4384: $FF
    db $E3                                        ; $4385: $E3
    ld b, e                                       ; $4386: $43
    rst RST_38                                    ; $4387: $FF
    rst RST_38                                    ; $4388: $FF
    db $E3                                        ; $4389: $E3
    ld b, e                                       ; $438A: $43
    rst RST_38                                    ; $438B: $FF
    rst RST_38                                    ; $438C: $FF
    db $E3                                        ; $438D: $E3
    ld b, e                                       ; $438E: $43
    rst RST_38                                    ; $438F: $FF
    rst RST_38                                    ; $4390: $FF
    db $E3                                        ; $4391: $E3
    ld b, e                                       ; $4392: $43
    rst RST_38                                    ; $4393: $FF
    rst RST_38                                    ; $4394: $FF
    db $E3                                        ; $4395: $E3
    ld b, e                                       ; $4396: $43
    rst RST_38                                    ; $4397: $FF
    rst RST_38                                    ; $4398: $FF
    db $E3                                        ; $4399: $E3
    ld b, e                                       ; $439A: $43
    rst RST_38                                    ; $439B: $FF
    rst RST_38                                    ; $439C: $FF
    db $E3                                        ; $439D: $E3
    ld b, e                                       ; $439E: $43
    rst RST_38                                    ; $439F: $FF
    rst RST_38                                    ; $43A0: $FF
    db $E3                                        ; $43A1: $E3
    ld b, e                                       ; $43A2: $43
    rst RST_38                                    ; $43A3: $FF
    rst RST_38                                    ; $43A4: $FF
    db $E3                                        ; $43A5: $E3
    ld b, e                                       ; $43A6: $43
    rst RST_38                                    ; $43A7: $FF
    rst RST_38                                    ; $43A8: $FF
    db $E3                                        ; $43A9: $E3
    ld b, e                                       ; $43AA: $43
    rst RST_38                                    ; $43AB: $FF
    rst RST_38                                    ; $43AC: $FF
    db $E3                                        ; $43AD: $E3
    ld b, e                                       ; $43AE: $43
    rst RST_38                                    ; $43AF: $FF
    rst RST_38                                    ; $43B0: $FF
    db $E3                                        ; $43B1: $E3
    ld b, e                                       ; $43B2: $43
    rst RST_38                                    ; $43B3: $FF
    rst RST_38                                    ; $43B4: $FF
    db $E3                                        ; $43B5: $E3
    ld b, e                                       ; $43B6: $43
    rst RST_38                                    ; $43B7: $FF
    rst RST_38                                    ; $43B8: $FF
    db $E3                                        ; $43B9: $E3
    ld b, e                                       ; $43BA: $43
    rst RST_38                                    ; $43BB: $FF
    rst RST_38                                    ; $43BC: $FF
    db $E3                                        ; $43BD: $E3
    ld b, e                                       ; $43BE: $43
    rst RST_38                                    ; $43BF: $FF
    rst RST_38                                    ; $43C0: $FF
    db $E3                                        ; $43C1: $E3
    ld b, e                                       ; $43C2: $43
    rst RST_38                                    ; $43C3: $FF
    rst RST_38                                    ; $43C4: $FF
    db $E3                                        ; $43C5: $E3
    ld b, e                                       ; $43C6: $43
    rst RST_38                                    ; $43C7: $FF
    rst RST_38                                    ; $43C8: $FF
    db $E3                                        ; $43C9: $E3
    ld b, e                                       ; $43CA: $43
    rst RST_38                                    ; $43CB: $FF
    rst RST_38                                    ; $43CC: $FF
    db $E3                                        ; $43CD: $E3
    ld b, e                                       ; $43CE: $43
    rst RST_38                                    ; $43CF: $FF
    rst RST_38                                    ; $43D0: $FF
    rst RST_30                                    ; $43D1: $F7
    ld b, e                                       ; $43D2: $43
    rst RST_38                                    ; $43D3: $FF
    rst RST_38                                    ; $43D4: $FF
    dec bc                                        ; $43D5: $0B
    ld b, h                                       ; $43D6: $44
    rst RST_38                                    ; $43D7: $FF
    rst RST_38                                    ; $43D8: $FF
    rst RST_30                                    ; $43D9: $F7
    ld b, e                                       ; $43DA: $43
    rst RST_38                                    ; $43DB: $FF
    rst RST_38                                    ; $43DC: $FF
    db $E3                                        ; $43DD: $E3
    ld b, e                                       ; $43DE: $43
    rst RST_38                                    ; $43DF: $FF
    rst RST_38                                    ; $43E0: $FF
    rst RST_38                                    ; $43E1: $FF
    rst RST_38                                    ; $43E2: $FF
    sub b                                         ; $43E3: $90
    nop                                           ; $43E4: $00
    nop                                           ; $43E5: $00
    rst RST_38                                    ; $43E6: $FF
    rst RST_38                                    ; $43E7: $FF
    rst RST_38                                    ; $43E8: $FF
    db $ED                                        ; $43E9: $ED
    ld b, e                                       ; $43EA: $43
    nop                                           ; $43EB: $00
    nop                                           ; $43EC: $00
    inc bc                                        ; $43ED: $03
    jr nz, jr_03F_43F8                            ; $43EE: $20 $08

    nop                                           ; $43F0: $00
    jr nz, @+$12                                  ; $43F1: $20 $10

    ld [bc], a                                    ; $43F3: $02
    jr nz, jr_03F_440E                            ; $43F4: $20 $18

    inc b                                         ; $43F6: $04
    sub b                                         ; $43F7: $90

jr_03F_43F8:
    nop                                           ; $43F8: $00
    nop                                           ; $43F9: $00
    rst RST_38                                    ; $43FA: $FF
    rst RST_38                                    ; $43FB: $FF
    rst RST_38                                    ; $43FC: $FF
    ld bc, $0044                                  ; $43FD: $01 $44 $00
    nop                                           ; $4400: $00
    inc bc                                        ; $4401: $03
    jr nz, jr_03F_440C                            ; $4402: $20 $08

    ld b, $20                                     ; $4404: $06 $20
    db $10                                        ; $4406: $10
    ld [$1820], sp                                ; $4407: $08 $20 $18
    ld a, [bc]                                    ; $440A: $0A
    sub b                                         ; $440B: $90

jr_03F_440C:
    nop                                           ; $440C: $00
    nop                                           ; $440D: $00

jr_03F_440E:
    rst RST_38                                    ; $440E: $FF
    rst RST_38                                    ; $440F: $FF
    rst RST_38                                    ; $4410: $FF
    dec d                                         ; $4411: $15
    ld b, h                                       ; $4412: $44
    nop                                           ; $4413: $00
    nop                                           ; $4414: $00
    inc bc                                        ; $4415: $03
    jr nz, jr_03F_4420                            ; $4416: $20 $08

    inc c                                         ; $4418: $0C
    jr nz, jr_03F_442B                            ; $4419: $20 $10

    ld c, $20                                     ; $441B: $0E $20
    jr jr_03F_442F                                ; $441D: $18 $10

    sub b                                         ; $441F: $90

jr_03F_4420:
    nop                                           ; $4420: $00
    nop                                           ; $4421: $00
    nop                                           ; $4422: $00
    ld l, b                                       ; $4423: $68
    nop                                           ; $4424: $00
    jr jr_03F_4427                                ; $4425: $18 $00

jr_03F_4427:
    nop                                           ; $4427: $00
    nop                                           ; $4428: $00
    nop                                           ; $4429: $00
    nop                                           ; $442A: $00

jr_03F_442B:
    nop                                           ; $442B: $00
    nop                                           ; $442C: $00
    ld l, $00                                     ; $442D: $2E $00

jr_03F_442F:
    add b                                         ; $442F: $80
    ccf                                           ; $4430: $3F
    ccf                                           ; $4431: $3F
    ld b, h                                       ; $4432: $44
    inc c                                         ; $4433: $0C
    nop                                           ; $4434: $00
    ccf                                           ; $4435: $3F
    ld b, h                                       ; $4436: $44
    inc c                                         ; $4437: $0C
    nop                                           ; $4438: $00
    nop                                           ; $4439: $00
    nop                                           ; $443A: $00
    ld [bc], a                                    ; $443B: $02
    ld [bc], a                                    ; $443C: $02
    ret nz                                        ; $443D: $C0

    ret c                                         ; $443E: $D8

    ld h, d                                       ; $443F: $62
    ld b, h                                       ; $4440: $44
    rst RST_38                                    ; $4441: $FF
    rst RST_38                                    ; $4442: $FF
    ld d, c                                       ; $4443: $51
    ld b, h                                       ; $4444: $44
    rst RST_38                                    ; $4445: $FF
    rst RST_38                                    ; $4446: $FF
    ld h, d                                       ; $4447: $62
    ld b, h                                       ; $4448: $44
    rst RST_38                                    ; $4449: $FF
    rst RST_38                                    ; $444A: $FF
    ld [hl], e                                    ; $444B: $73
    ld b, h                                       ; $444C: $44
    rst RST_38                                    ; $444D: $FF
    rst RST_38                                    ; $444E: $FF
    rst RST_38                                    ; $444F: $FF
    rst RST_38                                    ; $4450: $FF
    sub b                                         ; $4451: $90
    nop                                           ; $4452: $00
    nop                                           ; $4453: $00
    rst RST_38                                    ; $4454: $FF
    rst RST_38                                    ; $4455: $FF
    rst RST_38                                    ; $4456: $FF
    ld e, e                                       ; $4457: $5B
    ld b, h                                       ; $4458: $44
    nop                                           ; $4459: $00
    nop                                           ; $445A: $00
    ld [bc], a                                    ; $445B: $02
    jr z, jr_03F_4466                             ; $445C: $28 $08

    nop                                           ; $445E: $00
    jr z, @+$12                                   ; $445F: $28 $10

    ld [bc], a                                    ; $4461: $02
    sub b                                         ; $4462: $90
    nop                                           ; $4463: $00
    nop                                           ; $4464: $00
    rst RST_38                                    ; $4465: $FF

jr_03F_4466:
    rst RST_38                                    ; $4466: $FF
    rst RST_38                                    ; $4467: $FF
    ld l, h                                       ; $4468: $6C
    ld b, h                                       ; $4469: $44
    nop                                           ; $446A: $00
    nop                                           ; $446B: $00
    ld [bc], a                                    ; $446C: $02
    jr z, jr_03F_4477                             ; $446D: $28 $08

    inc b                                         ; $446F: $04
    jr z, @+$12                                   ; $4470: $28 $10

    ld b, $90                                     ; $4472: $06 $90
    nop                                           ; $4474: $00
    nop                                           ; $4475: $00
    rst RST_38                                    ; $4476: $FF

jr_03F_4477:
    rst RST_38                                    ; $4477: $FF
    rst RST_38                                    ; $4478: $FF
    ld a, l                                       ; $4479: $7D
    ld b, h                                       ; $447A: $44
    nop                                           ; $447B: $00
    nop                                           ; $447C: $00
    ld [bc], a                                    ; $447D: $02
    jr z, @+$0A                                   ; $447E: $28 $08

    ld [$1028], sp                                ; $4480: $08 $28 $10
    ld a, [bc]                                    ; $4483: $0A
    add b                                         ; $4484: $80
    nop                                           ; $4485: $00
    ld de, $3011                                  ; $4486: $11 $11 $30
    nop                                           ; $4489: $00
    stop                                          ; $448A: $10 $00
    nop                                           ; $448C: $00
    nop                                           ; $448D: $00
    nop                                           ; $448E: $00
    nop                                           ; $448F: $00
    nop                                           ; $4490: $00
    nop                                           ; $4491: $00
    ld a, [hl-]                                   ; $4492: $3A
    nop                                           ; $4493: $00
    add b                                         ; $4494: $80
    ccf                                           ; $4495: $3F
    and h                                         ; $4496: $A4
    ld b, h                                       ; $4497: $44
    nop                                           ; $4498: $00
    nop                                           ; $4499: $00
    and h                                         ; $449A: $A4
    ld b, h                                       ; $449B: $44
    nop                                           ; $449C: $00
    nop                                           ; $449D: $00
    nop                                           ; $449E: $00
    nop                                           ; $449F: $00
    inc b                                         ; $44A0: $04
    inc b                                         ; $44A1: $04
    ret nz                                        ; $44A2: $C0

    ret c                                         ; $44A3: $D8

    xor d                                         ; $44A4: $AA
    ld b, h                                       ; $44A5: $44
    rst RST_38                                    ; $44A6: $FF
    rst RST_38                                    ; $44A7: $FF
    rst RST_38                                    ; $44A8: $FF
    rst RST_38                                    ; $44A9: $FF
    sub b                                         ; $44AA: $90
    nop                                           ; $44AB: $00
    nop                                           ; $44AC: $00
    rst RST_38                                    ; $44AD: $FF
    rst RST_38                                    ; $44AE: $FF
    rst RST_38                                    ; $44AF: $FF
    or h                                          ; $44B0: $B4
    ld b, h                                       ; $44B1: $44
    nop                                           ; $44B2: $00
    nop                                           ; $44B3: $00
    stop                                          ; $44B4: $10 $00
    nop                                           ; $44B6: $00
    nop                                           ; $44B7: $00
    nop                                           ; $44B8: $00
    ld [$0002], sp                                ; $44B9: $08 $02 $00
    db $10                                        ; $44BC: $10
    inc b                                         ; $44BD: $04
    nop                                           ; $44BE: $00
    jr jr_03F_44C7                                ; $44BF: $18 $06

    nop                                           ; $44C1: $00
    jr nz, @+$0A                                  ; $44C2: $20 $08

    nop                                           ; $44C4: $00
    jr z, jr_03F_44D1                             ; $44C5: $28 $0A

jr_03F_44C7:
    nop                                           ; $44C7: $00
    jr nc, jr_03F_44D6                            ; $44C8: $30 $0C

    nop                                           ; $44CA: $00
    jr c, @+$10                                   ; $44CB: $38 $0E

    stop                                          ; $44CD: $10 $00
    db $10                                        ; $44CF: $10
    db $10                                        ; $44D0: $10

jr_03F_44D1:
    ld [$1012], sp                                ; $44D1: $08 $12 $10
    db $10                                        ; $44D4: $10
    inc d                                         ; $44D5: $14

jr_03F_44D6:
    db $10                                        ; $44D6: $10
    jr @+$18                                      ; $44D7: $18 $16

    db $10                                        ; $44D9: $10
    jr nz, jr_03F_44F4                            ; $44DA: $20 $18

    db $10                                        ; $44DC: $10
    jr z, @+$1C                                   ; $44DD: $28 $1A

    db $10                                        ; $44DF: $10
    jr nc, @+$1E                                  ; $44E0: $30 $1C

    db $10                                        ; $44E2: $10
    jr c, @+$20                                   ; $44E3: $38 $1E

    di                                            ; $44E5: $F3
    rst RST_10                                    ; $44E6: $D7
    ld hl, $C03A                                  ; $44E7: $21 $3A $C0
    res 1, [hl]                                   ; $44EA: $CB $8E
    set 2, [hl]                                   ; $44EC: $CB $D6
    ld a, $FF                                     ; $44EE: $3E $FF
    ldh [rBGP], a                                 ; $44F0: $E0 $47
    ldh [rOBP0], a                                ; $44F2: $E0 $48

jr_03F_44F4:
    ldh [rOBP1], a                                ; $44F4: $E0 $49
    ldh [$FFEA], a                                ; $44F6: $E0 $EA
    ldh [$FFEB], a                                ; $44F8: $E0 $EB
    ldh [$FFEC], a                                ; $44FA: $E0 $EC
    call Call_000_13ED                            ; $44FC: $CD $ED $13
    ld de, $0019                                  ; $44FF: $11 $19 $00
    call Call_000_14C0                            ; $4502: $CD $C0 $14
    xor a                                         ; $4505: $AF
    ld [$C2AA], a                                 ; $4506: $EA $AA $C2
    ld [$C2AC], a                                 ; $4509: $EA $AC $C2
    ldh [$FFE2], a                                ; $450C: $E0 $E2
    ldh [$FFE4], a                                ; $450E: $E0 $E4
    ld hl, $749D                                  ; $4510: $21 $9D $74
    ld b, $31                                     ; $4513: $06 $31
    ld de, $C349                                  ; $4515: $11 $49 $C3
    rst RST_20                                    ; $4518: $E7
    xor a                                         ; $4519: $AF
    ld hl, $C339                                  ; $451A: $21 $39 $C3
    ld c, $10                                     ; $451D: $0E $10

jr_03F_451F:
    ld [hl+], a                                   ; $451F: $22
    dec c                                         ; $4520: $0D
    jr nz, jr_03F_451F                            ; $4521: $20 $FC

    ld hl, $C339                                  ; $4523: $21 $39 $C3
    ld de, $9100                                  ; $4526: $11 $00 $91
    ld b, $32                                     ; $4529: $06 $32
    call Call_000_1188                            ; $452B: $CD $88 $11
    ld hl, $7748                                  ; $452E: $21 $48 $77
    ld b, $31                                     ; $4531: $06 $31
    ld de, $C349                                  ; $4533: $11 $49 $C3
    rst RST_20                                    ; $4536: $E7
    ld hl, $C349                                  ; $4537: $21 $49 $C3
    ld de, $8000                                  ; $453A: $11 $00 $80
    ld b, $24                                     ; $453D: $06 $24
    call Call_000_1188                            ; $453F: $CD $88 $11
    ld e, $00                                     ; $4542: $1E $00
    ld d, $10                                     ; $4544: $16 $10
    ld hl, $9800                                  ; $4546: $21 $00 $98
    ld b, $14                                     ; $4549: $06 $14
    ld c, $20                                     ; $454B: $0E $20
    call Call_000_10EA                            ; $454D: $CD $EA $10
    ld e, $00                                     ; $4550: $1E $00
    ld d, $10                                     ; $4552: $16 $10
    ld hl, $9C00                                  ; $4554: $21 $00 $9C
    ld b, $14                                     ; $4557: $06 $14
    ld c, $20                                     ; $4559: $0E $20
    call Call_000_10EA                            ; $455B: $CD $EA $10
    ld de, $4681                                  ; $455E: $11 $81 $46
    ld hl, $9C46                                  ; $4561: $21 $46 $9C
    ld b, $07                                     ; $4564: $06 $07
    ld c, $07                                     ; $4566: $0E $07
    ld a, $11                                     ; $4568: $3E $11
    call Call_000_0FF7                            ; $456A: $CD $F7 $0F
    call Call_000_0F9E                            ; $456D: $CD $9E $0F
    ld hl, $D680                                  ; $4570: $21 $80 $D6
    ld de, $46E3                                  ; $4573: $11 $E3 $46
    call Call_000_0F8E                            ; $4576: $CD $8E $0F
    ld hl, $D6C0                                  ; $4579: $21 $C0 $D6
    ld de, $474D                                  ; $457C: $11 $4D $47
    call Call_000_0F8E                            ; $457F: $CD $8E $0F
    ld a, $01                                     ; $4582: $3E $01
    ld [$C2B5], a                                 ; $4584: $EA $B5 $C2
    ld a, $87                                     ; $4587: $3E $87
    ld [$C2B6], a                                 ; $4589: $EA $B6 $C2
    ld a, $54                                     ; $458C: $3E $54
    ld [$C2B9], a                                 ; $458E: $EA $B9 $C2
    ld a, $86                                     ; $4591: $3E $86
    ld [$C2BA], a                                 ; $4593: $EA $BA $C2
    ld a, $87                                     ; $4596: $3E $87
    rst RST_18                                    ; $4598: $DF
    ldh a, [rSTAT]                                ; $4599: $F0 $41
    or $40                                        ; $459B: $F6 $40
    ldh [rSTAT], a                                ; $459D: $E0 $41
    ld a, $17                                     ; $459F: $3E $17
    ld a, $8F                                     ; $45A1: $3E $8F
    ldh [rLYC], a                                 ; $45A3: $E0 $45
    ldh a, [rIE]                                  ; $45A5: $F0 $FF
    or $03                                        ; $45A7: $F6 $03
    ldh [rIE], a                                  ; $45A9: $E0 $FF
    ei                                            ; $45AB: $FB
    ld de, $465D                                  ; $45AC: $11 $5D $46
    ld hl, $C329                                  ; $45AF: $21 $29 $C3
    ld c, $24                                     ; $45B2: $0E $24

jr_03F_45B4:
    ld a, [de]                                    ; $45B4: $1A
    inc de                                        ; $45B5: $13
    ld [hl+], a                                   ; $45B6: $22
    dec c                                         ; $45B7: $0D
    jr nz, jr_03F_45B4                            ; $45B8: $20 $FA

    ld hl, $75A8                                  ; $45BA: $21 $A8 $75
    ld a, [$C006]                                 ; $45BD: $FA $06 $C0
    or a                                          ; $45C0: $B7
    jr z, jr_03F_45C6                             ; $45C1: $28 $03

    ld hl, $7681                                  ; $45C3: $21 $81 $76

jr_03F_45C6:
    ld a, l                                       ; $45C6: $7D
    ld [$C32B], a                                 ; $45C7: $EA $2B $C3
    ld a, h                                       ; $45CA: $7C
    ld [$C32C], a                                 ; $45CB: $EA $2C $C3
    ld a, [$C33A]                                 ; $45CE: $FA $3A $C3
    ldh [$FFE2], a                                ; $45D1: $E0 $E2
    ld a, $90                                     ; $45D3: $3E $90
    call Call_000_135D                            ; $45D5: $CD $5D $13
    call Call_000_0424                            ; $45D8: $CD $24 $04
    ld a, $1B                                     ; $45DB: $3E $1B
    ldh [rBGP], a                                 ; $45DD: $E0 $47
    ldh [$FFEA], a                                ; $45DF: $E0 $EA
    ldh [$FFEB], a                                ; $45E1: $E0 $EB
    ldh [$FFEC], a                                ; $45E3: $E0 $EC
    ldh [rOBP0], a                                ; $45E5: $E0 $48
    ldh [rOBP1], a                                ; $45E7: $E0 $49
    call Call_000_147A                            ; $45E9: $CD $7A $14

jr_03F_45EC:
    ld b, $39                                     ; $45EC: $06 $39
    ld hl, $4067                                  ; $45EE: $21 $67 $40
    rst RST_08                                    ; $45F1: $CF
    ld a, [$C340]                                 ; $45F2: $FA $40 $C3
    or a                                          ; $45F5: $B7
    jr nz, jr_03F_45FE                            ; $45F6: $20 $06

    ld hl, $D6C0                                  ; $45F8: $21 $C0 $D6
    call Call_000_0E28                            ; $45FB: $CD $28 $0E

jr_03F_45FE:
    ld hl, $C329                                  ; $45FE: $21 $29 $C3
    ld e, [hl]                                    ; $4601: $5E
    inc hl                                        ; $4602: $23
    ld d, [hl]                                    ; $4603: $56
    inc de                                        ; $4604: $13
    ld [hl], d                                    ; $4605: $72
    dec hl                                        ; $4606: $2B
    ld [hl], e                                    ; $4607: $73
    call Call_000_0424                            ; $4608: $CD $24 $04
    ld a, [$C32E]                                 ; $460B: $FA $2E $C3
    add a                                         ; $460E: $87
    jr c, jr_03F_461E                             ; $460F: $38 $0D

    ldh a, [$FF99]                                ; $4611: $F0 $99
    ld e, a                                       ; $4613: $5F
    ldh a, [$FFAC]                                ; $4614: $F0 $AC
    or e                                          ; $4616: $B3
    ld e, a                                       ; $4617: $5F
    and $80                                       ; $4618: $E6 $80
    jr z, jr_03F_45EC                             ; $461A: $28 $D0

    jr jr_03F_464F                                ; $461C: $18 $31

jr_03F_461E:
    xor a                                         ; $461E: $AF
    ld [$C329], a                                 ; $461F: $EA $29 $C3
    ld [$C32A], a                                 ; $4622: $EA $2A $C3

jr_03F_4625:
    ld hl, $D680                                  ; $4625: $21 $80 $D6
    call Call_000_0DD4                            ; $4628: $CD $D4 $0D
    ld hl, $C329                                  ; $462B: $21 $29 $C3
    ld e, [hl]                                    ; $462E: $5E
    inc hl                                        ; $462F: $23
    ld d, [hl]                                    ; $4630: $56
    inc de                                        ; $4631: $13
    ld [hl], d                                    ; $4632: $72
    dec hl                                        ; $4633: $2B
    ld [hl], e                                    ; $4634: $73
    call Call_000_0424                            ; $4635: $CD $24 $04
    ld hl, $C329                                  ; $4638: $21 $29 $C3
    ld e, [hl]                                    ; $463B: $5E
    inc hl                                        ; $463C: $23
    ld d, [hl]                                    ; $463D: $56
    ld hl, $FF10                                  ; $463E: $21 $10 $FF
    add hl, de                                    ; $4641: $19
    jr c, jr_03F_464F                             ; $4642: $38 $0B

    ldh a, [$FF99]                                ; $4644: $F0 $99
    ld e, a                                       ; $4646: $5F
    ldh a, [$FFAC]                                ; $4647: $F0 $AC
    or e                                          ; $4649: $B3
    ld e, a                                       ; $464A: $5F
    and $90                                       ; $464B: $E6 $90
    jr z, jr_03F_4625                             ; $464D: $28 $D6

jr_03F_464F:
    ld hl, $C03A                                  ; $464F: $21 $3A $C0
    res 2, [hl]                                   ; $4652: $CB $96
    ld a, $00                                     ; $4654: $3E $00
    call Call_000_135D                            ; $4656: $CD $5D $13
    call Call_000_0424                            ; $4659: $CD $24 $04
    ret                                           ; $465C: $C9


    nop                                           ; $465D: $00
    nop                                           ; $465E: $00
    xor b                                         ; $465F: $A8
    ld [hl], l                                    ; $4660: $75
    nop                                           ; $4661: $00
    nop                                           ; $4662: $00
    ld e, c                                       ; $4663: $59

jr_03F_4664:
    jp $C379                                      ; $4664: $C3 $79 $C3


    ld a, c                                       ; $4667: $79
    push bc                                       ; $4668: $C5
    ld b, c                                       ; $4669: $41
    ld bc, $8800                                  ; $466A: $01 $00 $88
    nop                                           ; $466D: $00
    ld sp, hl                                     ; $466E: $F9
    nop                                           ; $466F: $00
    nop                                           ; $4670: $00
    nop                                           ; $4671: $00
    ld a, c                                       ; $4672: $79
    push bc                                       ; $4673: $C5
    nop                                           ; $4674: $00
    ld b, c                                       ; $4675: $41
    ld bc, $0080                                  ; $4676: $01 $80 $00
    nop                                           ; $4679: $00
    nop                                           ; $467A: $00
    nop                                           ; $467B: $00
    nop                                           ; $467C: $00
    nop                                           ; $467D: $00
    nop                                           ; $467E: $00
    nop                                           ; $467F: $00
    nop                                           ; $4680: $00
    inc b                                         ; $4681: $04
    nop                                           ; $4682: $00
    inc b                                         ; $4683: $04
    ld bc, $0204                                  ; $4684: $01 $04 $02
    dec b                                         ; $4687: $05
    inc bc                                        ; $4688: $03
    dec b                                         ; $4689: $05
    inc b                                         ; $468A: $04
    dec b                                         ; $468B: $05
    dec b                                         ; $468C: $05
    dec b                                         ; $468D: $05
    ld b, $04                                     ; $468E: $06 $04
    rlca                                          ; $4690: $07
    inc b                                         ; $4691: $04
    ld [$0904], sp                                ; $4692: $08 $04 $09
    dec b                                         ; $4695: $05
    ld a, [bc]                                    ; $4696: $0A
    dec b                                         ; $4697: $05
    dec bc                                        ; $4698: $0B
    dec b                                         ; $4699: $05
    inc c                                         ; $469A: $0C
    dec b                                         ; $469B: $05
    dec c                                         ; $469C: $0D
    ld b, $0E                                     ; $469D: $06 $0E
    inc b                                         ; $469F: $04
    rrca                                          ; $46A0: $0F
    inc b                                         ; $46A1: $04
    db $10                                        ; $46A2: $10
    dec b                                         ; $46A3: $05
    ld de, $1205                                  ; $46A4: $11 $05 $12
    dec b                                         ; $46A7: $05
    inc de                                        ; $46A8: $13
    dec b                                         ; $46A9: $05
    inc d                                         ; $46AA: $14
    ld b, $15                                     ; $46AB: $06 $15
    inc b                                         ; $46AD: $04
    ld d, $04                                     ; $46AE: $16 $04
    rla                                           ; $46B0: $17
    dec b                                         ; $46B1: $05
    jr jr_03F_46B9                                ; $46B2: $18 $05

    add hl, de                                    ; $46B4: $19
    dec b                                         ; $46B5: $05
    ld a, [de]                                    ; $46B6: $1A
    dec b                                         ; $46B7: $05
    dec de                                        ; $46B8: $1B

jr_03F_46B9:
    ld b, $1C                                     ; $46B9: $06 $1C
    inc b                                         ; $46BB: $04
    dec e                                         ; $46BC: $1D
    inc b                                         ; $46BD: $04
    ld e, $04                                     ; $46BE: $1E $04
    rra                                           ; $46C0: $1F
    inc b                                         ; $46C1: $04
    jr nz, jr_03F_46C9                            ; $46C2: $20 $05

    ld hl, $2205                                  ; $46C4: $21 $05 $22
    ld b, $23                                     ; $46C7: $06 $23

jr_03F_46C9:
    inc b                                         ; $46C9: $04
    inc h                                         ; $46CA: $24
    inc b                                         ; $46CB: $04
    dec h                                         ; $46CC: $25
    rlca                                          ; $46CD: $07
    ld h, $07                                     ; $46CE: $26 $07
    daa                                           ; $46D0: $27
    rlca                                          ; $46D1: $07
    jr z, jr_03F_46DB                             ; $46D2: $28 $07

    add hl, hl                                    ; $46D4: $29
    inc b                                         ; $46D5: $04
    ld a, [hl+]                                   ; $46D6: $2A
    inc b                                         ; $46D7: $04
    dec hl                                        ; $46D8: $2B
    inc b                                         ; $46D9: $04
    inc l                                         ; $46DA: $2C

jr_03F_46DB:
    rlca                                          ; $46DB: $07
    dec l                                         ; $46DC: $2D
    rlca                                          ; $46DD: $07
    ld l, $07                                     ; $46DE: $2E $07
    cpl                                           ; $46E0: $2F
    rlca                                          ; $46E1: $07
    jr nc, jr_03F_4664                            ; $46E2: $30 $80

    nop                                           ; $46E4: $00
    inc bc                                        ; $46E5: $03
    inc bc                                        ; $46E6: $03
    ld c, b                                       ; $46E7: $48
    nop                                           ; $46E8: $00
    jr z, jr_03F_46EB                             ; $46E9: $28 $00

jr_03F_46EB:
    nop                                           ; $46EB: $00
    nop                                           ; $46EC: $00
    nop                                           ; $46ED: $00
    nop                                           ; $46EE: $00
    nop                                           ; $46EF: $00
    nop                                           ; $46F0: $00
    nop                                           ; $46F1: $00
    nop                                           ; $46F2: $00
    add b                                         ; $46F3: $80
    ccf                                           ; $46F4: $3F
    inc bc                                        ; $46F5: $03
    ld b, a                                       ; $46F6: $47
    nop                                           ; $46F7: $00
    nop                                           ; $46F8: $00
    inc bc                                        ; $46F9: $03
    ld b, a                                       ; $46FA: $47
    nop                                           ; $46FB: $00
    nop                                           ; $46FC: $00
    nop                                           ; $46FD: $00
    nop                                           ; $46FE: $00
    rrca                                          ; $46FF: $0F
    rrca                                          ; $4700: $0F
    ret nz                                        ; $4701: $C0

    ret c                                         ; $4702: $D8

    ld de, $FF47                                  ; $4703: $11 $47 $FF
    rst RST_38                                    ; $4706: $FF
    dec h                                         ; $4707: $25
    ld b, a                                       ; $4708: $47
    rst RST_38                                    ; $4709: $FF
    rst RST_38                                    ; $470A: $FF
    add hl, sp                                    ; $470B: $39
    ld b, a                                       ; $470C: $47
    rst RST_38                                    ; $470D: $FF
    rst RST_38                                    ; $470E: $FF
    rst RST_38                                    ; $470F: $FF
    rst RST_38                                    ; $4710: $FF
    sub b                                         ; $4711: $90
    nop                                           ; $4712: $00
    nop                                           ; $4713: $00
    rst RST_38                                    ; $4714: $FF
    rst RST_38                                    ; $4715: $FF
    rst RST_38                                    ; $4716: $FF
    dec de                                        ; $4717: $1B
    ld b, a                                       ; $4718: $47
    nop                                           ; $4719: $00
    nop                                           ; $471A: $00
    inc bc                                        ; $471B: $03
    nop                                           ; $471C: $00
    nop                                           ; $471D: $00
    nop                                           ; $471E: $00
    nop                                           ; $471F: $00
    ld [$0002], sp                                ; $4720: $08 $02 $00
    db $10                                        ; $4723: $10
    inc b                                         ; $4724: $04
    sub b                                         ; $4725: $90
    nop                                           ; $4726: $00
    nop                                           ; $4727: $00
    rst RST_38                                    ; $4728: $FF
    rst RST_38                                    ; $4729: $FF
    rst RST_38                                    ; $472A: $FF
    cpl                                           ; $472B: $2F
    ld b, a                                       ; $472C: $47
    nop                                           ; $472D: $00
    nop                                           ; $472E: $00
    inc bc                                        ; $472F: $03
    nop                                           ; $4730: $00
    nop                                           ; $4731: $00
    ld b, $00                                     ; $4732: $06 $00
    ld [$0008], sp                                ; $4734: $08 $08 $00
    db $10                                        ; $4737: $10
    ld a, [bc]                                    ; $4738: $0A
    sub b                                         ; $4739: $90
    nop                                           ; $473A: $00
    nop                                           ; $473B: $00
    rst RST_38                                    ; $473C: $FF
    rst RST_38                                    ; $473D: $FF
    rst RST_38                                    ; $473E: $FF
    ld b, e                                       ; $473F: $43
    ld b, a                                       ; $4740: $47
    nop                                           ; $4741: $00
    nop                                           ; $4742: $00
    inc bc                                        ; $4743: $03
    nop                                           ; $4744: $00
    nop                                           ; $4745: $00
    inc c                                         ; $4746: $0C
    nop                                           ; $4747: $00
    ld [$000E], sp                                ; $4748: $08 $0E $00
    db $10                                        ; $474B: $10
    db $10                                        ; $474C: $10
    add b                                         ; $474D: $80
    nop                                           ; $474E: $00
    inc bc                                        ; $474F: $03
    inc bc                                        ; $4750: $03
    ld c, b                                       ; $4751: $48
    nop                                           ; $4752: $00
    jr c, jr_03F_4755                             ; $4753: $38 $00

jr_03F_4755:
    nop                                           ; $4755: $00
    nop                                           ; $4756: $00
    nop                                           ; $4757: $00
    nop                                           ; $4758: $00
    nop                                           ; $4759: $00
    nop                                           ; $475A: $00
    ld [de], a                                    ; $475B: $12
    nop                                           ; $475C: $00
    add b                                         ; $475D: $80
    ccf                                           ; $475E: $3F
    ld l, l                                       ; $475F: $6D
    ld b, a                                       ; $4760: $47
    nop                                           ; $4761: $00
    nop                                           ; $4762: $00
    ld l, l                                       ; $4763: $6D
    ld b, a                                       ; $4764: $47
    nop                                           ; $4765: $00
    nop                                           ; $4766: $00
    nop                                           ; $4767: $00
    nop                                           ; $4768: $00
    inc b                                         ; $4769: $04
    inc b                                         ; $476A: $04
    ret nz                                        ; $476B: $C0

    ret c                                         ; $476C: $D8

    ld de, $FF47                                  ; $476D: $11 $47 $FF
    rst RST_38                                    ; $4770: $FF
    dec h                                         ; $4771: $25
    ld b, a                                       ; $4772: $47
    rst RST_38                                    ; $4773: $FF
    rst RST_38                                    ; $4774: $FF
    add hl, sp                                    ; $4775: $39
    ld b, a                                       ; $4776: $47
    rst RST_38                                    ; $4777: $FF
    rst RST_38                                    ; $4778: $FF
    dec h                                         ; $4779: $25
    ld b, a                                       ; $477A: $47
    rst RST_38                                    ; $477B: $FF
    rst RST_38                                    ; $477C: $FF
    rst RST_38                                    ; $477D: $FF
    rst RST_38                                    ; $477E: $FF
    di                                            ; $477F: $F3
    rst RST_10                                    ; $4780: $D7
    ld hl, $C03A                                  ; $4781: $21 $3A $C0
    res 1, [hl]                                   ; $4784: $CB $8E
    set 2, [hl]                                   ; $4786: $CB $D6
    ld a, $FF                                     ; $4788: $3E $FF
    ldh [rBGP], a                                 ; $478A: $E0 $47
    ldh [rOBP0], a                                ; $478C: $E0 $48
    ldh [rOBP1], a                                ; $478E: $E0 $49
    ldh [$FFEA], a                                ; $4790: $E0 $EA
    ldh [$FFEB], a                                ; $4792: $E0 $EB
    ldh [$FFEC], a                                ; $4794: $E0 $EC
    call Call_000_13ED                            ; $4796: $CD $ED $13
    ld de, $001A                                  ; $4799: $11 $1A $00
    call Call_000_14C0                            ; $479C: $CD $C0 $14
    xor a                                         ; $479F: $AF
    ld [$C2AA], a                                 ; $47A0: $EA $AA $C2
    ld [$C2AC], a                                 ; $47A3: $EA $AC $C2
    ldh [$FFE2], a                                ; $47A6: $E0 $E2
    ldh [$FFE4], a                                ; $47A8: $E0 $E4
    ld hl, $78EF                                  ; $47AA: $21 $EF $78
    ld b, $31                                     ; $47AD: $06 $31
    ld de, $C349                                  ; $47AF: $11 $49 $C3
    rst RST_20                                    ; $47B2: $E7
    xor a                                         ; $47B3: $AF
    ld hl, $C339                                  ; $47B4: $21 $39 $C3
    ld c, $10                                     ; $47B7: $0E $10

jr_03F_47B9:
    ld [hl+], a                                   ; $47B9: $22
    dec c                                         ; $47BA: $0D
    jr nz, jr_03F_47B9                            ; $47BB: $20 $FC

    ld hl, $C339                                  ; $47BD: $21 $39 $C3
    ld de, $9100                                  ; $47C0: $11 $00 $91
    ld b, $32                                     ; $47C3: $06 $32
    call Call_000_1188                            ; $47C5: $CD $88 $11
    ld hl, $7BAF                                  ; $47C8: $21 $AF $7B
    ld b, $31                                     ; $47CB: $06 $31
    ld de, $C349                                  ; $47CD: $11 $49 $C3
    rst RST_20                                    ; $47D0: $E7
    ld hl, $C349                                  ; $47D1: $21 $49 $C3
    ld de, $8000                                  ; $47D4: $11 $00 $80
    ld b, $0C                                     ; $47D7: $06 $0C
    call Call_000_1188                            ; $47D9: $CD $88 $11
    ld e, $00                                     ; $47DC: $1E $00
    ld d, $10                                     ; $47DE: $16 $10
    ld hl, $9800                                  ; $47E0: $21 $00 $98
    ld b, $14                                     ; $47E3: $06 $14
    ld c, $20                                     ; $47E5: $0E $20
    call Call_000_10EA                            ; $47E7: $CD $EA $10
    ld e, $00                                     ; $47EA: $1E $00
    ld d, $10                                     ; $47EC: $16 $10
    ld hl, $9C00                                  ; $47EE: $21 $00 $9C
    ld b, $14                                     ; $47F1: $06 $14
    ld c, $20                                     ; $47F3: $0E $20
    call Call_000_10EA                            ; $47F5: $CD $EA $10
    ld de, $490C                                  ; $47F8: $11 $0C $49
    ld hl, $9C46                                  ; $47FB: $21 $46 $9C
    ld b, $07                                     ; $47FE: $06 $07
    ld c, $07                                     ; $4800: $0E $07
    ld a, $11                                     ; $4802: $3E $11
    call Call_000_0FF7                            ; $4804: $CD $F7 $0F
    call Call_000_0F9E                            ; $4807: $CD $9E $0F
    ld hl, $D6C0                                  ; $480A: $21 $C0 $D6
    ld de, $496E                                  ; $480D: $11 $6E $49
    call Call_000_0F8E                            ; $4810: $CD $8E $0F
    ld a, $01                                     ; $4813: $3E $01
    ld [$C2B5], a                                 ; $4815: $EA $B5 $C2
    ld a, $87                                     ; $4818: $3E $87
    ld [$C2B6], a                                 ; $481A: $EA $B6 $C2
    ld a, $54                                     ; $481D: $3E $54
    ld [$C2B9], a                                 ; $481F: $EA $B9 $C2
    ld a, $86                                     ; $4822: $3E $86
    ld [$C2BA], a                                 ; $4824: $EA $BA $C2
    ld a, $87                                     ; $4827: $3E $87
    rst RST_18                                    ; $4829: $DF
    ldh a, [rSTAT]                                ; $482A: $F0 $41
    or $40                                        ; $482C: $F6 $40
    ldh [rSTAT], a                                ; $482E: $E0 $41
    ld a, $17                                     ; $4830: $3E $17
    ld a, $8F                                     ; $4832: $3E $8F
    ldh [rLYC], a                                 ; $4834: $E0 $45
    ldh a, [rIE]                                  ; $4836: $F0 $FF
    or $03                                        ; $4838: $F6 $03
    ldh [rIE], a                                  ; $483A: $E0 $FF
    ei                                            ; $483C: $FB
    ld de, $48E8                                  ; $483D: $11 $E8 $48
    ld hl, $C329                                  ; $4840: $21 $29 $C3
    ld c, $24                                     ; $4843: $0E $24

jr_03F_4845:
    ld a, [de]                                    ; $4845: $1A
    inc de                                        ; $4846: $13
    ld [hl+], a                                   ; $4847: $22
    dec c                                         ; $4848: $0D
    jr nz, jr_03F_4845                            ; $4849: $20 $FA

    ld hl, $7736                                  ; $484B: $21 $36 $77
    ld a, [$C006]                                 ; $484E: $FA $06 $C0
    or a                                          ; $4851: $B7
    jr z, jr_03F_4857                             ; $4852: $28 $03

    ld hl, $77E8                                  ; $4854: $21 $E8 $77

jr_03F_4857:
    ld a, l                                       ; $4857: $7D
    ld [$C32B], a                                 ; $4858: $EA $2B $C3
    ld a, h                                       ; $485B: $7C
    ld [$C32C], a                                 ; $485C: $EA $2C $C3
    ld a, [$C33A]                                 ; $485F: $FA $3A $C3
    ldh [$FFE2], a                                ; $4862: $E0 $E2
    ld a, $8E                                     ; $4864: $3E $8E
    call Call_000_135D                            ; $4866: $CD $5D $13
    call Call_000_0424                            ; $4869: $CD $24 $04
    ld a, $1B                                     ; $486C: $3E $1B
    ldh [rBGP], a                                 ; $486E: $E0 $47
    ldh [$FFEA], a                                ; $4870: $E0 $EA
    ldh [$FFEB], a                                ; $4872: $E0 $EB
    ldh [$FFEC], a                                ; $4874: $E0 $EC
    ldh [rOBP0], a                                ; $4876: $E0 $48
    ldh [rOBP1], a                                ; $4878: $E0 $49
    call Call_000_147A                            ; $487A: $CD $7A $14

jr_03F_487D:
    ld b, $39                                     ; $487D: $06 $39
    ld hl, $4067                                  ; $487F: $21 $67 $40
    rst RST_08                                    ; $4882: $CF
    ld a, [$C340]                                 ; $4883: $FA $40 $C3
    or a                                          ; $4886: $B7
    jr nz, jr_03F_488F                            ; $4887: $20 $06

    ld hl, $D6C0                                  ; $4889: $21 $C0 $D6
    call Call_000_0E28                            ; $488C: $CD $28 $0E

jr_03F_488F:
    ld hl, $C329                                  ; $488F: $21 $29 $C3
    ld e, [hl]                                    ; $4892: $5E
    inc hl                                        ; $4893: $23
    ld d, [hl]                                    ; $4894: $56
    inc de                                        ; $4895: $13
    ld [hl], d                                    ; $4896: $72
    dec hl                                        ; $4897: $2B
    ld [hl], e                                    ; $4898: $73
    call Call_000_0424                            ; $4899: $CD $24 $04
    ld a, [$C32E]                                 ; $489C: $FA $2E $C3
    add a                                         ; $489F: $87
    jr c, jr_03F_48AF                             ; $48A0: $38 $0D

    ldh a, [$FF99]                                ; $48A2: $F0 $99
    ld e, a                                       ; $48A4: $5F
    ldh a, [$FFAC]                                ; $48A5: $F0 $AC
    or e                                          ; $48A7: $B3
    ld e, a                                       ; $48A8: $5F
    and $80                                       ; $48A9: $E6 $80
    jr z, jr_03F_487D                             ; $48AB: $28 $D0

    jr jr_03F_48DA                                ; $48AD: $18 $2B

jr_03F_48AF:
    xor a                                         ; $48AF: $AF
    ld [$C329], a                                 ; $48B0: $EA $29 $C3
    ld [$C32A], a                                 ; $48B3: $EA $2A $C3

jr_03F_48B6:
    ld hl, $C329                                  ; $48B6: $21 $29 $C3
    ld e, [hl]                                    ; $48B9: $5E
    inc hl                                        ; $48BA: $23
    ld d, [hl]                                    ; $48BB: $56
    inc de                                        ; $48BC: $13
    ld [hl], d                                    ; $48BD: $72
    dec hl                                        ; $48BE: $2B
    ld [hl], e                                    ; $48BF: $73
    call Call_000_0424                            ; $48C0: $CD $24 $04
    ld hl, $C329                                  ; $48C3: $21 $29 $C3
    ld e, [hl]                                    ; $48C6: $5E
    inc hl                                        ; $48C7: $23
    ld d, [hl]                                    ; $48C8: $56
    ld hl, $FF10                                  ; $48C9: $21 $10 $FF
    add hl, de                                    ; $48CC: $19
    jr c, jr_03F_48DA                             ; $48CD: $38 $0B

    ldh a, [$FF99]                                ; $48CF: $F0 $99
    ld e, a                                       ; $48D1: $5F
    ldh a, [$FFAC]                                ; $48D2: $F0 $AC
    or e                                          ; $48D4: $B3
    ld e, a                                       ; $48D5: $5F
    and $90                                       ; $48D6: $E6 $90
    jr z, jr_03F_48B6                             ; $48D8: $28 $DC

jr_03F_48DA:
    ld hl, $C03A                                  ; $48DA: $21 $3A $C0
    res 2, [hl]                                   ; $48DD: $CB $96
    ld a, $00                                     ; $48DF: $3E $00
    call Call_000_135D                            ; $48E1: $CD $5D $13
    call Call_000_0424                            ; $48E4: $CD $24 $04
    ret                                           ; $48E7: $C9


    nop                                           ; $48E8: $00
    nop                                           ; $48E9: $00
    ld [hl], $77                                  ; $48EA: $36 $77
    nop                                           ; $48EC: $00
    nop                                           ; $48ED: $00
    ld e, c                                       ; $48EE: $59

jr_03F_48EF:
    jp $C379                                      ; $48EF: $C3 $79 $C3


    ld a, c                                       ; $48F2: $79
    push bc                                       ; $48F3: $C5
    ld b, c                                       ; $48F4: $41
    ld bc, $8800                                  ; $48F5: $01 $00 $88
    nop                                           ; $48F8: $00
    ld sp, hl                                     ; $48F9: $F9
    nop                                           ; $48FA: $00
    nop                                           ; $48FB: $00
    nop                                           ; $48FC: $00
    ld a, c                                       ; $48FD: $79
    push bc                                       ; $48FE: $C5
    nop                                           ; $48FF: $00
    ld b, c                                       ; $4900: $41
    ld bc, $0080                                  ; $4901: $01 $80 $00
    nop                                           ; $4904: $00
    nop                                           ; $4905: $00
    nop                                           ; $4906: $00
    nop                                           ; $4907: $00
    nop                                           ; $4908: $00
    nop                                           ; $4909: $00
    nop                                           ; $490A: $00
    nop                                           ; $490B: $00
    inc b                                         ; $490C: $04
    nop                                           ; $490D: $00
    inc b                                         ; $490E: $04
    ld bc, $0204                                  ; $490F: $01 $04 $02
    inc b                                         ; $4912: $04
    inc bc                                        ; $4913: $03
    inc b                                         ; $4914: $04
    inc b                                         ; $4915: $04
    ld b, $05                                     ; $4916: $06 $05
    inc b                                         ; $4918: $04
    ld b, $04                                     ; $4919: $06 $04
    rlca                                          ; $491B: $07
    inc b                                         ; $491C: $04
    ld [$0904], sp                                ; $491D: $08 $04 $09
    ld b, $0A                                     ; $4920: $06 $0A
    dec b                                         ; $4922: $05
    dec bc                                        ; $4923: $0B
    ld b, $0C                                     ; $4924: $06 $0C
    dec b                                         ; $4926: $05
    dec c                                         ; $4927: $0D
    dec b                                         ; $4928: $05
    ld c, $05                                     ; $4929: $0E $05
    rrca                                          ; $492B: $0F
    inc b                                         ; $492C: $04
    db $10                                        ; $492D: $10
    ld b, $11                                     ; $492E: $06 $11
    dec b                                         ; $4930: $05
    ld [de], a                                    ; $4931: $12
    dec b                                         ; $4932: $05
    inc de                                        ; $4933: $13
    ld b, $14                                     ; $4934: $06 $14
    dec b                                         ; $4936: $05
    dec d                                         ; $4937: $15
    dec b                                         ; $4938: $05
    ld d, $06                                     ; $4939: $16 $06
    rla                                           ; $493B: $17
    ld b, $18                                     ; $493C: $06 $18
    rlca                                          ; $493E: $07
    add hl, de                                    ; $493F: $19
    rlca                                          ; $4940: $07
    ld a, [de]                                    ; $4941: $1A
    ld b, $1B                                     ; $4942: $06 $1B
    dec b                                         ; $4944: $05
    inc e                                         ; $4945: $1C
    dec b                                         ; $4946: $05
    dec e                                         ; $4947: $1D
    ld b, $1E                                     ; $4948: $06 $1E
    ld b, $1F                                     ; $494A: $06 $1F
    ld b, $20                                     ; $494C: $06 $20
    ld b, $21                                     ; $494E: $06 $21
    ld b, $22                                     ; $4950: $06 $22
    dec b                                         ; $4952: $05
    inc hl                                        ; $4953: $23
    dec b                                         ; $4954: $05
    inc h                                         ; $4955: $24
    ld b, $25                                     ; $4956: $06 $25
    inc b                                         ; $4958: $04
    ld h, $06                                     ; $4959: $26 $06
    daa                                           ; $495B: $27
    dec b                                         ; $495C: $05
    jr z, jr_03F_4964                             ; $495D: $28 $05

    add hl, hl                                    ; $495F: $29
    dec b                                         ; $4960: $05
    ld a, [hl+]                                   ; $4961: $2A
    ld b, $2B                                     ; $4962: $06 $2B

jr_03F_4964:
    ld b, $2C                                     ; $4964: $06 $2C
    inc b                                         ; $4966: $04
    dec l                                         ; $4967: $2D
    ld b, $2E                                     ; $4968: $06 $2E
    dec b                                         ; $496A: $05
    cpl                                           ; $496B: $2F
    dec b                                         ; $496C: $05
    jr nc, jr_03F_48EF                            ; $496D: $30 $80

    nop                                           ; $496F: $00
    inc bc                                        ; $4970: $03
    inc bc                                        ; $4971: $03
    ld d, b                                       ; $4972: $50
    nop                                           ; $4973: $00
    ld b, b                                       ; $4974: $40
    nop                                           ; $4975: $00
    nop                                           ; $4976: $00
    nop                                           ; $4977: $00
    nop                                           ; $4978: $00
    nop                                           ; $4979: $00
    nop                                           ; $497A: $00
    nop                                           ; $497B: $00
    nop                                           ; $497C: $00
    nop                                           ; $497D: $00
    add b                                         ; $497E: $80
    ccf                                           ; $497F: $3F
    adc [hl]                                      ; $4980: $8E
    ld c, c                                       ; $4981: $49
    nop                                           ; $4982: $00
    nop                                           ; $4983: $00
    adc [hl]                                      ; $4984: $8E
    ld c, c                                       ; $4985: $49
    nop                                           ; $4986: $00
    nop                                           ; $4987: $00
    nop                                           ; $4988: $00
    nop                                           ; $4989: $00
    inc b                                         ; $498A: $04
    inc b                                         ; $498B: $04
    ret nz                                        ; $498C: $C0

    ret c                                         ; $498D: $D8

    and b                                         ; $498E: $A0
    ld c, c                                       ; $498F: $49
    rst RST_38                                    ; $4990: $FF
    rst RST_38                                    ; $4991: $FF
    or c                                          ; $4992: $B1
    ld c, c                                       ; $4993: $49
    rst RST_38                                    ; $4994: $FF
    rst RST_38                                    ; $4995: $FF
    jp nz, $FF49                                  ; $4996: $C2 $49 $FF

    rst RST_38                                    ; $4999: $FF
    or c                                          ; $499A: $B1
    ld c, c                                       ; $499B: $49
    rst RST_38                                    ; $499C: $FF
    rst RST_38                                    ; $499D: $FF
    rst RST_38                                    ; $499E: $FF
    rst RST_38                                    ; $499F: $FF
    sub b                                         ; $49A0: $90
    nop                                           ; $49A1: $00
    nop                                           ; $49A2: $00
    rst RST_38                                    ; $49A3: $FF
    rst RST_38                                    ; $49A4: $FF
    rst RST_38                                    ; $49A5: $FF
    xor d                                         ; $49A6: $AA
    ld c, c                                       ; $49A7: $49
    nop                                           ; $49A8: $00
    nop                                           ; $49A9: $00
    ld [bc], a                                    ; $49AA: $02
    nop                                           ; $49AB: $00
    nop                                           ; $49AC: $00
    nop                                           ; $49AD: $00
    nop                                           ; $49AE: $00
    ld [$9002], sp                                ; $49AF: $08 $02 $90
    nop                                           ; $49B2: $00
    nop                                           ; $49B3: $00
    rst RST_38                                    ; $49B4: $FF
    rst RST_38                                    ; $49B5: $FF
    rst RST_38                                    ; $49B6: $FF
    cp e                                          ; $49B7: $BB
    ld c, c                                       ; $49B8: $49
    nop                                           ; $49B9: $00
    nop                                           ; $49BA: $00
    ld [bc], a                                    ; $49BB: $02
    nop                                           ; $49BC: $00
    nop                                           ; $49BD: $00
    inc b                                         ; $49BE: $04
    nop                                           ; $49BF: $00
    ld [$9006], sp                                ; $49C0: $08 $06 $90
    nop                                           ; $49C3: $00
    nop                                           ; $49C4: $00
    rst RST_38                                    ; $49C5: $FF
    rst RST_38                                    ; $49C6: $FF
    rst RST_38                                    ; $49C7: $FF
    call z, $0049                                 ; $49C8: $CC $49 $00
    nop                                           ; $49CB: $00
    ld [bc], a                                    ; $49CC: $02
    nop                                           ; $49CD: $00
    nop                                           ; $49CE: $00
    ld [$0800], sp                                ; $49CF: $08 $00 $08
    ld a, [bc]                                    ; $49D2: $0A
    di                                            ; $49D3: $F3
    rst RST_10                                    ; $49D4: $D7
    ld hl, $C03A                                  ; $49D5: $21 $3A $C0
    res 1, [hl]                                   ; $49D8: $CB $8E
    set 2, [hl]                                   ; $49DA: $CB $D6
    ld a, $FF                                     ; $49DC: $3E $FF
    ldh [rBGP], a                                 ; $49DE: $E0 $47
    ldh [rOBP0], a                                ; $49E0: $E0 $48
    ldh [rOBP1], a                                ; $49E2: $E0 $49
    ldh [$FFEA], a                                ; $49E4: $E0 $EA
    ldh [$FFEB], a                                ; $49E6: $E0 $EB
    ldh [$FFEC], a                                ; $49E8: $E0 $EC
    call Call_000_13ED                            ; $49EA: $CD $ED $13
    ld de, $001B                                  ; $49ED: $11 $1B $00
    call Call_000_14C0                            ; $49F0: $CD $C0 $14
    xor a                                         ; $49F3: $AF
    ld [$C2AA], a                                 ; $49F4: $EA $AA $C2
    ld [$C2AC], a                                 ; $49F7: $EA $AC $C2
    ldh [$FFE2], a                                ; $49FA: $E0 $E2
    ldh [$FFE4], a                                ; $49FC: $E0 $E4
    ld hl, $7C13                                  ; $49FE: $21 $13 $7C
    ld b, $31                                     ; $4A01: $06 $31
    ld de, $C349                                  ; $4A03: $11 $49 $C3
    rst RST_20                                    ; $4A06: $E7
    xor a                                         ; $4A07: $AF
    ld hl, $C339                                  ; $4A08: $21 $39 $C3
    ld c, $10                                     ; $4A0B: $0E $10

jr_03F_4A0D:
    ld [hl+], a                                   ; $4A0D: $22
    dec c                                         ; $4A0E: $0D
    jr nz, jr_03F_4A0D                            ; $4A0F: $20 $FC

    ld hl, $C339                                  ; $4A11: $21 $39 $C3
    ld de, $9100                                  ; $4A14: $11 $00 $91
    ld b, $32                                     ; $4A17: $06 $32
    call Call_000_1188                            ; $4A19: $CD $88 $11
    ld hl, $7E89                                  ; $4A1C: $21 $89 $7E
    ld b, $31                                     ; $4A1F: $06 $31
    ld de, $C349                                  ; $4A21: $11 $49 $C3
    rst RST_20                                    ; $4A24: $E7
    ld hl, $C349                                  ; $4A25: $21 $49 $C3
    ld de, $8000                                  ; $4A28: $11 $00 $80
    ld b, $1E                                     ; $4A2B: $06 $1E
    call Call_000_1188                            ; $4A2D: $CD $88 $11
    ld e, $00                                     ; $4A30: $1E $00
    ld d, $10                                     ; $4A32: $16 $10
    ld hl, $9800                                  ; $4A34: $21 $00 $98
    ld b, $14                                     ; $4A37: $06 $14
    ld c, $20                                     ; $4A39: $0E $20
    call Call_000_10EA                            ; $4A3B: $CD $EA $10
    ld e, $00                                     ; $4A3E: $1E $00
    ld d, $10                                     ; $4A40: $16 $10
    ld hl, $9C00                                  ; $4A42: $21 $00 $9C
    ld b, $14                                     ; $4A45: $06 $14
    ld c, $20                                     ; $4A47: $0E $20
    call Call_000_10EA                            ; $4A49: $CD $EA $10
    ld de, $4B6F                                  ; $4A4C: $11 $6F $4B
    ld hl, $9C46                                  ; $4A4F: $21 $46 $9C
    ld b, $07                                     ; $4A52: $06 $07
    ld c, $07                                     ; $4A54: $0E $07
    ld a, $11                                     ; $4A56: $3E $11
    call Call_000_0FF7                            ; $4A58: $CD $F7 $0F
    call Call_000_0F9E                            ; $4A5B: $CD $9E $0F
    ld hl, $D680                                  ; $4A5E: $21 $80 $D6
    ld de, $4C36                                  ; $4A61: $11 $36 $4C
    call Call_000_0F8E                            ; $4A64: $CD $8E $0F
    ld hl, $D6C0                                  ; $4A67: $21 $C0 $D6
    ld de, $4BD1                                  ; $4A6A: $11 $D1 $4B
    call Call_000_0F8E                            ; $4A6D: $CD $8E $0F
    ld a, $01                                     ; $4A70: $3E $01
    ld [$C2B5], a                                 ; $4A72: $EA $B5 $C2
    ld a, $87                                     ; $4A75: $3E $87
    ld [$C2B6], a                                 ; $4A77: $EA $B6 $C2
    ld a, $54                                     ; $4A7A: $3E $54
    ld [$C2B9], a                                 ; $4A7C: $EA $B9 $C2
    ld a, $86                                     ; $4A7F: $3E $86
    ld [$C2BA], a                                 ; $4A81: $EA $BA $C2
    ld a, $87                                     ; $4A84: $3E $87
    rst RST_18                                    ; $4A86: $DF
    ldh a, [rSTAT]                                ; $4A87: $F0 $41
    or $40                                        ; $4A89: $F6 $40
    ldh [rSTAT], a                                ; $4A8B: $E0 $41
    ld a, $17                                     ; $4A8D: $3E $17
    ld a, $8F                                     ; $4A8F: $3E $8F
    ldh [rLYC], a                                 ; $4A91: $E0 $45
    ldh a, [rIE]                                  ; $4A93: $F0 $FF
    or $03                                        ; $4A95: $F6 $03
    ldh [rIE], a                                  ; $4A97: $E0 $FF
    ei                                            ; $4A99: $FB
    ld de, $4B4B                                  ; $4A9A: $11 $4B $4B
    ld hl, $C329                                  ; $4A9D: $21 $29 $C3
    ld c, $24                                     ; $4AA0: $0E $24

jr_03F_4AA2:
    ld a, [de]                                    ; $4AA2: $1A
    inc de                                        ; $4AA3: $13
    ld [hl+], a                                   ; $4AA4: $22
    dec c                                         ; $4AA5: $0D
    jr nz, jr_03F_4AA2                            ; $4AA6: $20 $FA

    ld hl, $787F                                  ; $4AA8: $21 $7F $78
    ld a, [$C006]                                 ; $4AAB: $FA $06 $C0
    or a                                          ; $4AAE: $B7
    jr z, jr_03F_4AB4                             ; $4AAF: $28 $03

    ld hl, $7910                                  ; $4AB1: $21 $10 $79

jr_03F_4AB4:
    ld a, l                                       ; $4AB4: $7D
    ld [$C32B], a                                 ; $4AB5: $EA $2B $C3
    ld a, h                                       ; $4AB8: $7C
    ld [$C32C], a                                 ; $4AB9: $EA $2C $C3
    ld a, [$C33A]                                 ; $4ABC: $FA $3A $C3
    ldh [$FFE2], a                                ; $4ABF: $E0 $E2
    ld a, $95                                     ; $4AC1: $3E $95
    call Call_000_135D                            ; $4AC3: $CD $5D $13
    call Call_000_0424                            ; $4AC6: $CD $24 $04
    ld a, $1B                                     ; $4AC9: $3E $1B
    ldh [rBGP], a                                 ; $4ACB: $E0 $47
    ldh [$FFEA], a                                ; $4ACD: $E0 $EA
    ldh [$FFEB], a                                ; $4ACF: $E0 $EB
    ldh [$FFEC], a                                ; $4AD1: $E0 $EC
    ldh [rOBP0], a                                ; $4AD3: $E0 $48
    ldh [rOBP1], a                                ; $4AD5: $E0 $49
    call Call_000_147A                            ; $4AD7: $CD $7A $14

jr_03F_4ADA:
    ld b, $39                                     ; $4ADA: $06 $39
    ld hl, $4067                                  ; $4ADC: $21 $67 $40
    rst RST_08                                    ; $4ADF: $CF
    ld a, [$C340]                                 ; $4AE0: $FA $40 $C3
    or a                                          ; $4AE3: $B7
    jr nz, jr_03F_4AEC                            ; $4AE4: $20 $06

    ld hl, $D6C0                                  ; $4AE6: $21 $C0 $D6
    call Call_000_0E28                            ; $4AE9: $CD $28 $0E

jr_03F_4AEC:
    ld hl, $C329                                  ; $4AEC: $21 $29 $C3
    ld e, [hl]                                    ; $4AEF: $5E
    inc hl                                        ; $4AF0: $23
    ld d, [hl]                                    ; $4AF1: $56
    inc de                                        ; $4AF2: $13
    ld [hl], d                                    ; $4AF3: $72
    dec hl                                        ; $4AF4: $2B
    ld [hl], e                                    ; $4AF5: $73
    call Call_000_0424                            ; $4AF6: $CD $24 $04
    ld a, [$C32E]                                 ; $4AF9: $FA $2E $C3
    add a                                         ; $4AFC: $87
    jr c, jr_03F_4B0C                             ; $4AFD: $38 $0D

    ldh a, [$FF99]                                ; $4AFF: $F0 $99
    ld e, a                                       ; $4B01: $5F
    ldh a, [$FFAC]                                ; $4B02: $F0 $AC
    or e                                          ; $4B04: $B3
    ld e, a                                       ; $4B05: $5F
    and $80                                       ; $4B06: $E6 $80
    jr z, jr_03F_4ADA                             ; $4B08: $28 $D0

    jr jr_03F_4B3D                                ; $4B0A: $18 $31

jr_03F_4B0C:
    xor a                                         ; $4B0C: $AF
    ld [$C329], a                                 ; $4B0D: $EA $29 $C3
    ld [$C32A], a                                 ; $4B10: $EA $2A $C3

jr_03F_4B13:
    ld hl, $D680                                  ; $4B13: $21 $80 $D6
    call Call_000_0DD4                            ; $4B16: $CD $D4 $0D
    ld hl, $C329                                  ; $4B19: $21 $29 $C3
    ld e, [hl]                                    ; $4B1C: $5E
    inc hl                                        ; $4B1D: $23
    ld d, [hl]                                    ; $4B1E: $56
    inc de                                        ; $4B1F: $13
    ld [hl], d                                    ; $4B20: $72
    dec hl                                        ; $4B21: $2B
    ld [hl], e                                    ; $4B22: $73
    call Call_000_0424                            ; $4B23: $CD $24 $04
    ld hl, $C329                                  ; $4B26: $21 $29 $C3
    ld e, [hl]                                    ; $4B29: $5E
    inc hl                                        ; $4B2A: $23
    ld d, [hl]                                    ; $4B2B: $56
    ld hl, $FF10                                  ; $4B2C: $21 $10 $FF
    add hl, de                                    ; $4B2F: $19
    jr c, jr_03F_4B3D                             ; $4B30: $38 $0B

    ldh a, [$FF99]                                ; $4B32: $F0 $99
    ld e, a                                       ; $4B34: $5F
    ldh a, [$FFAC]                                ; $4B35: $F0 $AC
    or e                                          ; $4B37: $B3
    ld e, a                                       ; $4B38: $5F
    and $90                                       ; $4B39: $E6 $90
    jr z, jr_03F_4B13                             ; $4B3B: $28 $D6

jr_03F_4B3D:
    ld hl, $C03A                                  ; $4B3D: $21 $3A $C0
    res 2, [hl]                                   ; $4B40: $CB $96
    ld a, $00                                     ; $4B42: $3E $00
    call Call_000_135D                            ; $4B44: $CD $5D $13
    call Call_000_0424                            ; $4B47: $CD $24 $04
    ret                                           ; $4B4A: $C9


    nop                                           ; $4B4B: $00
    nop                                           ; $4B4C: $00
    ld a, a                                       ; $4B4D: $7F
    ld a, b                                       ; $4B4E: $78
    nop                                           ; $4B4F: $00
    nop                                           ; $4B50: $00
    ld e, c                                       ; $4B51: $59

jr_03F_4B52:
    jp $C379                                      ; $4B52: $C3 $79 $C3


    ld a, c                                       ; $4B55: $79
    push bc                                       ; $4B56: $C5
    ld b, c                                       ; $4B57: $41
    ld bc, $8800                                  ; $4B58: $01 $00 $88
    nop                                           ; $4B5B: $00
    ld sp, hl                                     ; $4B5C: $F9
    nop                                           ; $4B5D: $00
    nop                                           ; $4B5E: $00
    nop                                           ; $4B5F: $00
    ld a, c                                       ; $4B60: $79
    push bc                                       ; $4B61: $C5
    nop                                           ; $4B62: $00
    ld b, c                                       ; $4B63: $41
    ld bc, $0080                                  ; $4B64: $01 $80 $00
    nop                                           ; $4B67: $00
    nop                                           ; $4B68: $00
    nop                                           ; $4B69: $00
    nop                                           ; $4B6A: $00
    nop                                           ; $4B6B: $00
    nop                                           ; $4B6C: $00
    nop                                           ; $4B6D: $00
    nop                                           ; $4B6E: $00
    inc b                                         ; $4B6F: $04
    nop                                           ; $4B70: $00
    inc b                                         ; $4B71: $04
    ld bc, $0204                                  ; $4B72: $01 $04 $02
    inc b                                         ; $4B75: $04
    inc bc                                        ; $4B76: $03
    dec b                                         ; $4B77: $05
    inc b                                         ; $4B78: $04
    inc b                                         ; $4B79: $04
    dec b                                         ; $4B7A: $05
    inc b                                         ; $4B7B: $04
    ld b, $04                                     ; $4B7C: $06 $04
    rlca                                          ; $4B7E: $07
    inc b                                         ; $4B7F: $04
    ld [$0904], sp                                ; $4B80: $08 $04 $09
    inc b                                         ; $4B83: $04
    ld a, [bc]                                    ; $4B84: $0A
    rlca                                          ; $4B85: $07
    dec bc                                        ; $4B86: $0B
    rlca                                          ; $4B87: $07
    inc c                                         ; $4B88: $0C
    dec b                                         ; $4B89: $05
    dec c                                         ; $4B8A: $0D
    inc b                                         ; $4B8B: $04
    ld c, $04                                     ; $4B8C: $0E $04
    rrca                                          ; $4B8E: $0F
    inc b                                         ; $4B8F: $04
    db $10                                        ; $4B90: $10
    inc b                                         ; $4B91: $04
    ld de, $1204                                  ; $4B92: $11 $04 $12
    inc b                                         ; $4B95: $04
    inc de                                        ; $4B96: $13
    inc b                                         ; $4B97: $04
    inc d                                         ; $4B98: $14
    inc b                                         ; $4B99: $04
    dec d                                         ; $4B9A: $15
    inc b                                         ; $4B9B: $04
    ld d, $04                                     ; $4B9C: $16 $04
    rla                                           ; $4B9E: $17
    inc b                                         ; $4B9F: $04
    jr jr_03F_4BA6                                ; $4BA0: $18 $04

    add hl, de                                    ; $4BA2: $19
    inc b                                         ; $4BA3: $04
    ld a, [de]                                    ; $4BA4: $1A
    inc b                                         ; $4BA5: $04

jr_03F_4BA6:
    dec de                                        ; $4BA6: $1B
    inc b                                         ; $4BA7: $04
    inc e                                         ; $4BA8: $1C
    dec b                                         ; $4BA9: $05
    dec e                                         ; $4BAA: $1D
    inc b                                         ; $4BAB: $04
    ld e, $06                                     ; $4BAC: $1E $06
    rra                                           ; $4BAE: $1F
    inc b                                         ; $4BAF: $04
    jr nz, jr_03F_4BB6                            ; $4BB0: $20 $04

    ld hl, $2204                                  ; $4BB2: $21 $04 $22
    dec b                                         ; $4BB5: $05

jr_03F_4BB6:
    inc hl                                        ; $4BB6: $23
    dec b                                         ; $4BB7: $05
    inc h                                         ; $4BB8: $24
    dec b                                         ; $4BB9: $05
    dec h                                         ; $4BBA: $25
    inc b                                         ; $4BBB: $04
    ld h, $05                                     ; $4BBC: $26 $05
    daa                                           ; $4BBE: $27
    inc b                                         ; $4BBF: $04
    jr z, jr_03F_4BC6                             ; $4BC0: $28 $04

    add hl, hl                                    ; $4BC2: $29
    inc b                                         ; $4BC3: $04
    ld a, [hl+]                                   ; $4BC4: $2A
    inc b                                         ; $4BC5: $04

jr_03F_4BC6:
    dec hl                                        ; $4BC6: $2B
    dec b                                         ; $4BC7: $05
    inc l                                         ; $4BC8: $2C
    dec b                                         ; $4BC9: $05
    dec l                                         ; $4BCA: $2D
    dec b                                         ; $4BCB: $05
    ld l, $05                                     ; $4BCC: $2E $05
    cpl                                           ; $4BCE: $2F
    inc b                                         ; $4BCF: $04
    jr nc, jr_03F_4B52                            ; $4BD0: $30 $80

    nop                                           ; $4BD2: $00
    inc bc                                        ; $4BD3: $03
    inc bc                                        ; $4BD4: $03
    ld c, b                                       ; $4BD5: $48
    nop                                           ; $4BD6: $00
    ld b, b                                       ; $4BD7: $40
    nop                                           ; $4BD8: $00
    nop                                           ; $4BD9: $00
    nop                                           ; $4BDA: $00
    nop                                           ; $4BDB: $00
    nop                                           ; $4BDC: $00
    nop                                           ; $4BDD: $00
    nop                                           ; $4BDE: $00
    nop                                           ; $4BDF: $00
    nop                                           ; $4BE0: $00
    add b                                         ; $4BE1: $80
    ccf                                           ; $4BE2: $3F
    pop af                                        ; $4BE3: $F1
    ld c, e                                       ; $4BE4: $4B
    nop                                           ; $4BE5: $00
    nop                                           ; $4BE6: $00
    pop af                                        ; $4BE7: $F1
    ld c, e                                       ; $4BE8: $4B
    nop                                           ; $4BE9: $00
    nop                                           ; $4BEA: $00
    nop                                           ; $4BEB: $00
    nop                                           ; $4BEC: $00
    inc b                                         ; $4BED: $04
    inc b                                         ; $4BEE: $04
    ret nz                                        ; $4BEF: $C0

    ret c                                         ; $4BF0: $D8

    inc bc                                        ; $4BF1: $03
    ld c, h                                       ; $4BF2: $4C
    rst RST_38                                    ; $4BF3: $FF
    rst RST_38                                    ; $4BF4: $FF
    inc d                                         ; $4BF5: $14
    ld c, h                                       ; $4BF6: $4C
    rst RST_38                                    ; $4BF7: $FF
    rst RST_38                                    ; $4BF8: $FF
    dec h                                         ; $4BF9: $25
    ld c, h                                       ; $4BFA: $4C
    rst RST_38                                    ; $4BFB: $FF
    rst RST_38                                    ; $4BFC: $FF
    inc d                                         ; $4BFD: $14
    ld c, h                                       ; $4BFE: $4C
    rst RST_38                                    ; $4BFF: $FF
    rst RST_38                                    ; $4C00: $FF
    rst RST_38                                    ; $4C01: $FF
    rst RST_38                                    ; $4C02: $FF
    sub b                                         ; $4C03: $90
    nop                                           ; $4C04: $00
    nop                                           ; $4C05: $00
    rst RST_38                                    ; $4C06: $FF
    rst RST_38                                    ; $4C07: $FF
    rst RST_38                                    ; $4C08: $FF
    dec c                                         ; $4C09: $0D
    ld c, h                                       ; $4C0A: $4C
    nop                                           ; $4C0B: $00
    nop                                           ; $4C0C: $00
    ld [bc], a                                    ; $4C0D: $02
    nop                                           ; $4C0E: $00
    nop                                           ; $4C0F: $00
    nop                                           ; $4C10: $00
    nop                                           ; $4C11: $00
    ld [$9002], sp                                ; $4C12: $08 $02 $90
    nop                                           ; $4C15: $00
    nop                                           ; $4C16: $00
    rst RST_38                                    ; $4C17: $FF
    rst RST_38                                    ; $4C18: $FF
    rst RST_38                                    ; $4C19: $FF
    ld e, $4C                                     ; $4C1A: $1E $4C
    nop                                           ; $4C1C: $00
    nop                                           ; $4C1D: $00
    ld [bc], a                                    ; $4C1E: $02
    nop                                           ; $4C1F: $00
    nop                                           ; $4C20: $00
    inc b                                         ; $4C21: $04
    nop                                           ; $4C22: $00
    ld [$9006], sp                                ; $4C23: $08 $06 $90
    nop                                           ; $4C26: $00
    nop                                           ; $4C27: $00
    rst RST_38                                    ; $4C28: $FF
    rst RST_38                                    ; $4C29: $FF
    rst RST_38                                    ; $4C2A: $FF
    cpl                                           ; $4C2B: $2F
    ld c, h                                       ; $4C2C: $4C
    nop                                           ; $4C2D: $00
    nop                                           ; $4C2E: $00
    ld [bc], a                                    ; $4C2F: $02
    nop                                           ; $4C30: $00
    nop                                           ; $4C31: $00
    ld [$0800], sp                                ; $4C32: $08 $00 $08
    ld a, [bc]                                    ; $4C35: $0A
    add b                                         ; $4C36: $80
    nop                                           ; $4C37: $00
    inc b                                         ; $4C38: $04
    inc b                                         ; $4C39: $04
    ld b, b                                       ; $4C3A: $40
    nop                                           ; $4C3B: $00
    jr nc, jr_03F_4C3E                            ; $4C3C: $30 $00

jr_03F_4C3E:
    nop                                           ; $4C3E: $00
    nop                                           ; $4C3F: $00
    nop                                           ; $4C40: $00
    nop                                           ; $4C41: $00
    nop                                           ; $4C42: $00
    nop                                           ; $4C43: $00
    inc c                                         ; $4C44: $0C
    nop                                           ; $4C45: $00
    add b                                         ; $4C46: $80
    ccf                                           ; $4C47: $3F
    ld d, [hl]                                    ; $4C48: $56
    ld c, h                                       ; $4C49: $4C
    nop                                           ; $4C4A: $00
    nop                                           ; $4C4B: $00
    ld d, [hl]                                    ; $4C4C: $56
    ld c, h                                       ; $4C4D: $4C
    nop                                           ; $4C4E: $00
    nop                                           ; $4C4F: $00
    nop                                           ; $4C50: $00
    nop                                           ; $4C51: $00
    inc bc                                        ; $4C52: $03
    inc bc                                        ; $4C53: $03
    ret nz                                        ; $4C54: $C0

    ret c                                         ; $4C55: $D8

    ld [hl], h                                    ; $4C56: $74
    ld c, h                                       ; $4C57: $4C
    rst RST_38                                    ; $4C58: $FF
    rst RST_38                                    ; $4C59: $FF
    adc b                                         ; $4C5A: $88
    ld c, h                                       ; $4C5B: $4C
    rst RST_38                                    ; $4C5C: $FF
    rst RST_38                                    ; $4C5D: $FF
    sbc h                                         ; $4C5E: $9C
    ld c, h                                       ; $4C5F: $4C
    rst RST_38                                    ; $4C60: $FF
    rst RST_38                                    ; $4C61: $FF
    sbc h                                         ; $4C62: $9C
    ld c, h                                       ; $4C63: $4C
    rst RST_38                                    ; $4C64: $FF
    rst RST_38                                    ; $4C65: $FF
    sbc h                                         ; $4C66: $9C
    ld c, h                                       ; $4C67: $4C
    rst RST_38                                    ; $4C68: $FF
    rst RST_38                                    ; $4C69: $FF
    adc b                                         ; $4C6A: $88
    ld c, h                                       ; $4C6B: $4C
    rst RST_38                                    ; $4C6C: $FF
    rst RST_38                                    ; $4C6D: $FF
    ld [hl], h                                    ; $4C6E: $74
    ld c, h                                       ; $4C6F: $4C
    rst RST_38                                    ; $4C70: $FF
    rst RST_38                                    ; $4C71: $FF
    rst RST_38                                    ; $4C72: $FF
    rst RST_38                                    ; $4C73: $FF
    sub b                                         ; $4C74: $90
    nop                                           ; $4C75: $00
    nop                                           ; $4C76: $00
    rst RST_38                                    ; $4C77: $FF
    rst RST_38                                    ; $4C78: $FF
    rst RST_38                                    ; $4C79: $FF
    ld a, [hl]                                    ; $4C7A: $7E
    ld c, h                                       ; $4C7B: $4C
    nop                                           ; $4C7C: $00
    nop                                           ; $4C7D: $00
    inc bc                                        ; $4C7E: $03
    nop                                           ; $4C7F: $00
    nop                                           ; $4C80: $00
    nop                                           ; $4C81: $00
    nop                                           ; $4C82: $00
    ld [$0002], sp                                ; $4C83: $08 $02 $00
    db $10                                        ; $4C86: $10
    inc b                                         ; $4C87: $04
    sub b                                         ; $4C88: $90
    nop                                           ; $4C89: $00
    nop                                           ; $4C8A: $00
    rst RST_38                                    ; $4C8B: $FF
    rst RST_38                                    ; $4C8C: $FF
    rst RST_38                                    ; $4C8D: $FF
    sub d                                         ; $4C8E: $92
    ld c, h                                       ; $4C8F: $4C
    nop                                           ; $4C90: $00
    nop                                           ; $4C91: $00
    inc bc                                        ; $4C92: $03
    nop                                           ; $4C93: $00
    nop                                           ; $4C94: $00
    ld b, $00                                     ; $4C95: $06 $00
    ld [$0008], sp                                ; $4C97: $08 $08 $00
    db $10                                        ; $4C9A: $10
    ld a, [bc]                                    ; $4C9B: $0A
    sub b                                         ; $4C9C: $90
    nop                                           ; $4C9D: $00
    nop                                           ; $4C9E: $00
    rst RST_38                                    ; $4C9F: $FF
    rst RST_38                                    ; $4CA0: $FF
    rst RST_38                                    ; $4CA1: $FF
    and [hl]                                      ; $4CA2: $A6
    ld c, h                                       ; $4CA3: $4C
    nop                                           ; $4CA4: $00
    nop                                           ; $4CA5: $00
    inc bc                                        ; $4CA6: $03
    nop                                           ; $4CA7: $00
    nop                                           ; $4CA8: $00
    inc c                                         ; $4CA9: $0C
    nop                                           ; $4CAA: $00
    ld [$000E], sp                                ; $4CAB: $08 $0E $00
    db $10                                        ; $4CAE: $10
    db $10                                        ; $4CAF: $10
    ld a, [$C2C6]                                 ; $4CB0: $FA $C6 $C2
    and $F0                                       ; $4CB3: $E6 $F0
    cp $20                                        ; $4CB5: $FE $20
    jp nz, Jump_03F_4D35                          ; $4CB7: $C2 $35 $4D

    ld a, [$C039]                                 ; $4CBA: $FA $39 $C0
    bit 5, a                                      ; $4CBD: $CB $6F
    jp nz, Jump_03F_4D28                          ; $4CBF: $C2 $28 $4D

    bit 4, a                                      ; $4CC2: $CB $67
    jp nz, Jump_03F_4D28                          ; $4CC4: $C2 $28 $4D

    push hl                                       ; $4CC7: $E5
    push de                                       ; $4CC8: $D5
    ld hl, $009F                                  ; $4CC9: $21 $9F $00
    add hl, bc                                    ; $4CCC: $09
    ld e, [hl]                                    ; $4CCD: $5E
    inc hl                                        ; $4CCE: $23
    ld d, [hl]                                    ; $4CCF: $56
    inc de                                        ; $4CD0: $13
    ld [hl], d                                    ; $4CD1: $72
    dec hl                                        ; $4CD2: $2B
    ld [hl], e                                    ; $4CD3: $73
    ld a, e                                       ; $4CD4: $7B
    and $03                                       ; $4CD5: $E6 $03
    jr nz, jr_03F_4D22                            ; $4CD7: $20 $49

    push de                                       ; $4CD9: $D5
    call Call_000_17E2                            ; $4CDA: $CD $E2 $17
    add $10                                       ; $4CDD: $C6 $10
    jr nc, jr_03F_4CE3                            ; $4CDF: $30 $02

    ld a, $FF                                     ; $4CE1: $3E $FF

jr_03F_4CE3:
    ld l, a                                       ; $4CE3: $6F
    pop de                                        ; $4CE4: $D1
    push hl                                       ; $4CE5: $E5
    srl d                                         ; $4CE6: $CB $3A
    rr e                                          ; $4CE8: $CB $1B
    srl d                                         ; $4CEA: $CB $3A
    rr e                                          ; $4CEC: $CB $1B
    ld a, [$C310]                                 ; $4CEE: $FA $10 $C3
    srl a                                         ; $4CF1: $CB $3F
    sub $1C                                       ; $4CF3: $D6 $1C
    jr nc, jr_03F_4CF8                            ; $4CF5: $30 $01

    xor a                                         ; $4CF7: $AF

jr_03F_4CF8:
    add e                                         ; $4CF8: $83
    jr nc, jr_03F_4CFD                            ; $4CF9: $30 $02

    ld a, $FF                                     ; $4CFB: $3E $FF

jr_03F_4CFD:
    ld e, a                                       ; $4CFD: $5F
    ld hl, $0085                                  ; $4CFE: $21 $85 $00
    add hl, bc                                    ; $4D01: $09
    ld a, [hl]                                    ; $4D02: $7E
    cp $1A                                        ; $4D03: $FE $1A
    jr nz, jr_03F_4D0F                            ; $4D05: $20 $08

    ld a, e                                       ; $4D07: $7B
    add $40                                       ; $4D08: $C6 $40
    jr nc, jr_03F_4D0E                            ; $4D0A: $30 $02

    ld a, $FF                                     ; $4D0C: $3E $FF

jr_03F_4D0E:
    ld e, a                                       ; $4D0E: $5F

jr_03F_4D0F:
    ld a, e                                       ; $4D0F: $7B
    pop hl                                        ; $4D10: $E1
    cp l                                          ; $4D11: $BD
    jr c, jr_03F_4D22                             ; $4D12: $38 $0E

    ld hl, $009F                                  ; $4D14: $21 $9F $00
    add hl, bc                                    ; $4D17: $09
    xor a                                         ; $4D18: $AF
    ld [hl+], a                                   ; $4D19: $22
    ld [hl], a                                    ; $4D1A: $77
    pop de                                        ; $4D1B: $D1
    pop hl                                        ; $4D1C: $E1
    ld a, $20                                     ; $4D1D: $3E $20
    ld [hl+], a                                   ; $4D1F: $22
    ld [hl-], a                                   ; $4D20: $32
    ret                                           ; $4D21: $C9


jr_03F_4D22:
    pop de                                        ; $4D22: $D1
    pop hl                                        ; $4D23: $E1
    xor a                                         ; $4D24: $AF
    ld [hl+], a                                   ; $4D25: $22
    ld [hl-], a                                   ; $4D26: $32
    ret                                           ; $4D27: $C9


Jump_03F_4D28:
    push hl                                       ; $4D28: $E5
    ld hl, $009F                                  ; $4D29: $21 $9F $00
    add hl, bc                                    ; $4D2C: $09
    xor a                                         ; $4D2D: $AF
    ld [hl+], a                                   ; $4D2E: $22
    ld [hl], a                                    ; $4D2F: $77
    pop hl                                        ; $4D30: $E1
    xor a                                         ; $4D31: $AF
    ld [hl+], a                                   ; $4D32: $22
    ld [hl-], a                                   ; $4D33: $32
    ret                                           ; $4D34: $C9


Jump_03F_4D35:
    push hl                                       ; $4D35: $E5
    ld a, [$C017]                                 ; $4D36: $FA $17 $C0
    and $0F                                       ; $4D39: $E6 $0F
    jr nz, jr_03F_4D42                            ; $4D3B: $20 $05

    ld hl, $00A4                                  ; $4D3D: $21 $A4 $00
    add hl, bc                                    ; $4D40: $09
    inc [hl]                                      ; $4D41: $34

Jump_03F_4D42:
jr_03F_4D42:
    ld hl, $009F                                  ; $4D42: $21 $9F $00
    add hl, bc                                    ; $4D45: $09
    ld a, [hl]                                    ; $4D46: $7E
    or a                                          ; $4D47: $B7
    jr z, jr_03F_4D57                             ; $4D48: $28 $0D

    dec a                                         ; $4D4A: $3D
    ld [hl+], a                                   ; $4D4B: $22
    inc hl                                        ; $4D4C: $23
    ld a, [hl]                                    ; $4D4D: $7E
    ld e, a                                       ; $4D4E: $5F
    pop hl                                        ; $4D4F: $E1
    ld a, [hl]                                    ; $4D50: $7E
    ld [hl], e                                    ; $4D51: $73
    xor e                                         ; $4D52: $AB
    and e                                         ; $4D53: $A3
    inc hl                                        ; $4D54: $23
    ld [hl], a                                    ; $4D55: $77
    ret                                           ; $4D56: $C9


jr_03F_4D57:
    push de                                       ; $4D57: $D5
    push hl                                       ; $4D58: $E5
    ld hl, $0021                                  ; $4D59: $21 $21 $00
    add hl, bc                                    ; $4D5C: $09
    bit 4, [hl]                                   ; $4D5D: $CB $66
    jp z, Jump_03F_4D68                           ; $4D5F: $CA $68 $4D

    ld hl, $009F                                  ; $4D62: $21 $9F $00
    add hl, bc                                    ; $4D65: $09
    xor a                                         ; $4D66: $AF
    ld [hl-], a                                   ; $4D67: $32

Jump_03F_4D68:
    pop hl                                        ; $4D68: $E1

Jump_03F_4D69:
    inc hl                                        ; $4D69: $23
    ld a, [hl]                                    ; $4D6A: $7E
    or a                                          ; $4D6B: $B7
    jp z, Jump_03F_4EED                           ; $4D6C: $CA $ED $4E

    bit 7, a                                      ; $4D6F: $CB $7F
    jp z, Jump_03F_4EC0                           ; $4D71: $CA $C0 $4E

    and $0F                                       ; $4D74: $E6 $0F
    ld l, a                                       ; $4D76: $6F
    add a                                         ; $4D77: $87
    add l                                         ; $4D78: $85
    ld hl, $4D82                                  ; $4D79: $21 $82 $4D
    add l                                         ; $4D7C: $85
    jr nc, jr_03F_4D80                            ; $4D7D: $30 $01

    inc h                                         ; $4D7F: $24

jr_03F_4D80:
    ld l, a                                       ; $4D80: $6F
    jp hl                                         ; $4D81: $E9


    jp Jump_03F_4DB2                              ; $4D82: $C3 $B2 $4D


    jp Jump_03F_4DBF                              ; $4D85: $C3 $BF $4D


    jp Jump_03F_4DD5                              ; $4D88: $C3 $D5 $4D


    jp Jump_03F_4DE1                              ; $4D8B: $C3 $E1 $4D


    jp Jump_03F_4E01                              ; $4D8E: $C3 $01 $4E


    jp Jump_03F_4E19                              ; $4D91: $C3 $19 $4E


    jp Jump_03F_4E33                              ; $4D94: $C3 $33 $4E


    jp Jump_03F_4E3F                              ; $4D97: $C3 $3F $4E


    jp Jump_03F_4E4B                              ; $4D9A: $C3 $4B $4E


    jp Jump_03F_4E5D                              ; $4D9D: $C3 $5D $4E


    jp Jump_03F_4E7C                              ; $4DA0: $C3 $7C $4E


    jp Jump_03F_4E88                              ; $4DA3: $C3 $88 $4E


    jp Jump_03F_4DB2                              ; $4DA6: $C3 $B2 $4D


    jp Jump_03F_4DB2                              ; $4DA9: $C3 $B2 $4D


    jp Jump_03F_4DB2                              ; $4DAC: $C3 $B2 $4D


    jp Jump_03F_4DB2                              ; $4DAF: $C3 $B2 $4D


Jump_03F_4DB2:
    ld hl, $0062                                  ; $4DB2: $21 $62 $00
    add hl, bc                                    ; $4DB5: $09
    ld a, [hl]                                    ; $4DB6: $7E
    cp $10                                        ; $4DB7: $FE $10
    jp nz, Jump_03F_4EA7                          ; $4DB9: $C2 $A7 $4E

    jp Jump_03F_4E94                              ; $4DBC: $C3 $94 $4E


Jump_03F_4DBF:
    ld hl, $0030                                  ; $4DBF: $21 $30 $00
    add hl, bc                                    ; $4DC2: $09
    ld a, [hl]                                    ; $4DC3: $7E
    or a                                          ; $4DC4: $B7
    jp nz, Jump_03F_4E94                          ; $4DC5: $C2 $94 $4E

    ld hl, $0062                                  ; $4DC8: $21 $62 $00
    add hl, bc                                    ; $4DCB: $09
    ld a, [hl]                                    ; $4DCC: $7E
    cp $10                                        ; $4DCD: $FE $10
    jp z, Jump_03F_4EA7                           ; $4DCF: $CA $A7 $4E

    jp Jump_03F_4E94                              ; $4DD2: $C3 $94 $4E


Jump_03F_4DD5:
    ld hl, $005E                                  ; $4DD5: $21 $5E $00
    add hl, bc                                    ; $4DD8: $09
    ld a, [hl]                                    ; $4DD9: $7E
    or a                                          ; $4DDA: $B7
    jp nz, Jump_03F_4EA7                          ; $4DDB: $C2 $A7 $4E

    jp Jump_03F_4E94                              ; $4DDE: $C3 $94 $4E


Jump_03F_4DE1:
    ld hl, $0030                                  ; $4DE1: $21 $30 $00
    add hl, bc                                    ; $4DE4: $09
    ld a, [hl]                                    ; $4DE5: $7E
    or a                                          ; $4DE6: $B7
    jp nz, Jump_03F_4E94                          ; $4DE7: $C2 $94 $4E

    ld hl, $0062                                  ; $4DEA: $21 $62 $00
    add hl, bc                                    ; $4DED: $09
    ld a, [hl]                                    ; $4DEE: $7E
    cp $10                                        ; $4DEF: $FE $10
    jp z, Jump_03F_4EA7                           ; $4DF1: $CA $A7 $4E

    ld hl, $0060                                  ; $4DF4: $21 $60 $00
    add hl, bc                                    ; $4DF7: $09
    ld a, [hl]                                    ; $4DF8: $7E
    cp $13                                        ; $4DF9: $FE $13
    jp c, Jump_03F_4EA7                           ; $4DFB: $DA $A7 $4E

    jp Jump_03F_4E94                              ; $4DFE: $C3 $94 $4E


Jump_03F_4E01:
    ld hl, $002D                                  ; $4E01: $21 $2D $00
    add hl, bc                                    ; $4E04: $09
    ld a, [hl]                                    ; $4E05: $7E
    or a                                          ; $4E06: $B7
    jr nz, jr_03F_4E0E                            ; $4E07: $20 $05

    ld hl, $DA40                                  ; $4E09: $21 $40 $DA
    jr jr_03F_4E11                                ; $4E0C: $18 $03

jr_03F_4E0E:
    ld hl, $D940                                  ; $4E0E: $21 $40 $D9

jr_03F_4E11:
    ld a, [hl]                                    ; $4E11: $7E
    or a                                          ; $4E12: $B7
    jp nz, Jump_03F_4EA7                          ; $4E13: $C2 $A7 $4E

    jp Jump_03F_4E94                              ; $4E16: $C3 $94 $4E


Jump_03F_4E19:
    ld hl, $007E                                  ; $4E19: $21 $7E $00
    add hl, bc                                    ; $4E1C: $09
    bit 4, [hl]                                   ; $4E1D: $CB $66
    jp z, Jump_03F_4E94                           ; $4E1F: $CA $94 $4E

    bit 7, [hl]                                   ; $4E22: $CB $7E
    jp nz, Jump_03F_4EA7                          ; $4E24: $C2 $A7 $4E

    ld hl, $007D                                  ; $4E27: $21 $7D $00
    add hl, bc                                    ; $4E2A: $09
    bit 2, [hl]                                   ; $4E2B: $CB $56
    jp nz, Jump_03F_4EA7                          ; $4E2D: $C2 $A7 $4E

    jp Jump_03F_4E94                              ; $4E30: $C3 $94 $4E


Jump_03F_4E33:
    ld hl, $00A4                                  ; $4E33: $21 $A4 $00
    add hl, bc                                    ; $4E36: $09
    bit 6, [hl]                                   ; $4E37: $CB $76
    jp z, Jump_03F_4EA7                           ; $4E39: $CA $A7 $4E

    jp Jump_03F_4E94                              ; $4E3C: $C3 $94 $4E


Jump_03F_4E3F:
    ld hl, $00A4                                  ; $4E3F: $21 $A4 $00
    add hl, bc                                    ; $4E42: $09
    bit 6, [hl]                                   ; $4E43: $CB $76
    jp nz, Jump_03F_4EA7                          ; $4E45: $C2 $A7 $4E

    jp Jump_03F_4E94                              ; $4E48: $C3 $94 $4E


Jump_03F_4E4B:
    ld hl, $007E                                  ; $4E4B: $21 $7E $00
    add hl, bc                                    ; $4E4E: $09
    ld a, [hl]                                    ; $4E4F: $7E
    bit 4, a                                      ; $4E50: $CB $67
    jp z, Jump_03F_4E94                           ; $4E52: $CA $94 $4E

    bit 3, a                                      ; $4E55: $CB $5F
    jp nz, Jump_03F_4E94                          ; $4E57: $C2 $94 $4E

    jp Jump_03F_4EA7                              ; $4E5A: $C3 $A7 $4E


Jump_03F_4E5D:
    ld hl, $0030                                  ; $4E5D: $21 $30 $00
    add hl, bc                                    ; $4E60: $09
    ld a, [hl]                                    ; $4E61: $7E
    or a                                          ; $4E62: $B7
    jp nz, Jump_03F_4E94                          ; $4E63: $C2 $94 $4E

    ld hl, $0062                                  ; $4E66: $21 $62 $00
    add hl, bc                                    ; $4E69: $09
    ld a, [hl]                                    ; $4E6A: $7E
    cp $10                                        ; $4E6B: $FE $10
    jp nz, Jump_03F_4E94                          ; $4E6D: $C2 $94 $4E

    ld hl, $0060                                  ; $4E70: $21 $60 $00
    add hl, bc                                    ; $4E73: $09
    ld a, [hl]                                    ; $4E74: $7E
    cp $13                                        ; $4E75: $FE $13
    jr c, jr_03F_4EA7                             ; $4E77: $38 $2E

    jp Jump_03F_4E94                              ; $4E79: $C3 $94 $4E


Jump_03F_4E7C:
    ld hl, $00A4                                  ; $4E7C: $21 $A4 $00
    add hl, bc                                    ; $4E7F: $09
    bit 5, [hl]                                   ; $4E80: $CB $6E
    jp z, Jump_03F_4EA7                           ; $4E82: $CA $A7 $4E

    jp Jump_03F_4E94                              ; $4E85: $C3 $94 $4E


Jump_03F_4E88:
    ld hl, $00A4                                  ; $4E88: $21 $A4 $00
    add hl, bc                                    ; $4E8B: $09
    bit 5, [hl]                                   ; $4E8C: $CB $6E
    jp nz, Jump_03F_4EA7                          ; $4E8E: $C2 $A7 $4E

    jp Jump_03F_4E94                              ; $4E91: $C3 $94 $4E


Jump_03F_4E94:
    ld hl, $00A3                                  ; $4E94: $21 $A3 $00
    add hl, bc                                    ; $4E97: $09
    ld d, [hl]                                    ; $4E98: $56
    dec hl                                        ; $4E99: $2B
    ld e, [hl]                                    ; $4E9A: $5E
    ld a, [de]                                    ; $4E9B: $1A
    inc de                                        ; $4E9C: $13
    ld l, a                                       ; $4E9D: $6F
    ld a, [de]                                    ; $4E9E: $1A
    ld d, a                                       ; $4E9F: $57
    ld e, l                                       ; $4EA0: $5D
    ld hl, $00A0                                  ; $4EA1: $21 $A0 $00
    add hl, bc                                    ; $4EA4: $09
    jr jr_03F_4EB2                                ; $4EA5: $18 $0B

Jump_03F_4EA7:
jr_03F_4EA7:
    ld hl, $00A3                                  ; $4EA7: $21 $A3 $00
    add hl, bc                                    ; $4EAA: $09
    ld d, [hl]                                    ; $4EAB: $56
    dec hl                                        ; $4EAC: $2B
    ld e, [hl]                                    ; $4EAD: $5E
    dec hl                                        ; $4EAE: $2B
    dec hl                                        ; $4EAF: $2B
    inc de                                        ; $4EB0: $13
    inc de                                        ; $4EB1: $13

jr_03F_4EB2:
    ld a, [de]                                    ; $4EB2: $1A
    inc de                                        ; $4EB3: $13
    ld [hl+], a                                   ; $4EB4: $22
    inc hl                                        ; $4EB5: $23
    ld [hl], e                                    ; $4EB6: $73
    inc hl                                        ; $4EB7: $23
    ld [hl], d                                    ; $4EB8: $72
    ld hl, $009F                                  ; $4EB9: $21 $9F $00
    add hl, bc                                    ; $4EBC: $09
    jp Jump_03F_4D69                              ; $4EBD: $C3 $69 $4D


Jump_03F_4EC0:
    pop de                                        ; $4EC0: $D1
    push bc                                       ; $4EC1: $C5
    dec hl                                        ; $4EC2: $2B
    ld [hl+], a                                   ; $4EC3: $22
    push hl                                       ; $4EC4: $E5
    inc hl                                        ; $4EC5: $23
    inc hl                                        ; $4EC6: $23
    ld a, [hl+]                                   ; $4EC7: $2A
    ld b, [hl]                                    ; $4EC8: $46
    ld l, a                                       ; $4EC9: $6F
    ld h, b                                       ; $4ECA: $60
    ld c, [hl]                                    ; $4ECB: $4E
    inc hl                                        ; $4ECC: $23
    ld b, [hl]                                    ; $4ECD: $46
    inc hl                                        ; $4ECE: $23
    ld a, [hl]                                    ; $4ECF: $7E
    pop hl                                        ; $4ED0: $E1
    ld [hl+], a                                   ; $4ED1: $22
    push hl                                       ; $4ED2: $E5
    ld hl, $0002                                  ; $4ED3: $21 $02 $00
    add hl, de                                    ; $4ED6: $19
    bit 5, [hl]                                   ; $4ED7: $CB $6E
    jp nz, Jump_03F_4EDD                          ; $4ED9: $C2 $DD $4E

    ld c, b                                       ; $4EDC: $48

Jump_03F_4EDD:
    pop hl                                        ; $4EDD: $E1
    ld [hl], c                                    ; $4EDE: $71
    inc hl                                        ; $4EDF: $23
    ld c, [hl]                                    ; $4EE0: $4E
    inc hl                                        ; $4EE1: $23
    ld b, [hl]                                    ; $4EE2: $46
    inc bc                                        ; $4EE3: $03
    inc bc                                        ; $4EE4: $03
    inc bc                                        ; $4EE5: $03
    ld [hl], b                                    ; $4EE6: $70
    dec hl                                        ; $4EE7: $2B
    ld [hl], c                                    ; $4EE8: $71
    pop bc                                        ; $4EE9: $C1
    jp Jump_03F_4D42                              ; $4EEA: $C3 $42 $4D


Jump_03F_4EED:
    ld hl, $002E                                  ; $4EED: $21 $2E $00
    add hl, bc                                    ; $4EF0: $09
    ld a, [hl]                                    ; $4EF1: $7E
    add a                                         ; $4EF2: $87
    ld e, a                                       ; $4EF3: $5F
    ld d, $00                                     ; $4EF4: $16 $00
    ld hl, $002F                                  ; $4EF6: $21 $2F $00
    add hl, bc                                    ; $4EF9: $09
    ld a, [hl]                                    ; $4EFA: $7E
    ld hl, $51B0                                  ; $4EFB: $21 $B0 $51
    or a                                          ; $4EFE: $B7
    jr z, jr_03F_4F03                             ; $4EFF: $28 $02

    inc hl                                        ; $4F01: $23
    inc hl                                        ; $4F02: $23

jr_03F_4F03:
    add hl, de                                    ; $4F03: $19
    ld e, [hl]                                    ; $4F04: $5E
    inc hl                                        ; $4F05: $23
    ld d, [hl]                                    ; $4F06: $56
    call Call_000_17E2                            ; $4F07: $CD $E2 $17
    ld l, a                                       ; $4F0A: $6F
    ld a, [$C310]                                 ; $4F0B: $FA $10 $C3
    cp l                                          ; $4F0E: $BD
    jr nc, jr_03F_4F1A                            ; $4F0F: $30 $09

    ld hl, $0013                                  ; $4F11: $21 $13 $00
    add hl, de                                    ; $4F14: $19
    ld e, l                                       ; $4F15: $5D
    ld d, h                                       ; $4F16: $54
    jp Jump_03F_5051                              ; $4F17: $C3 $51 $50


jr_03F_4F1A:
    ld hl, $003C                                  ; $4F1A: $21 $3C $00
    add hl, bc                                    ; $4F1D: $09
    ld a, [hl]                                    ; $4F1E: $7E
    cp $1E                                        ; $4F1F: $FE $1E
    jr nz, jr_03F_4F28                            ; $4F21: $20 $05

    ld a, $38                                     ; $4F23: $3E $38
    jp Jump_03F_509D                              ; $4F25: $C3 $9D $50


jr_03F_4F28:
    ld hl, $007E                                  ; $4F28: $21 $7E $00
    add hl, bc                                    ; $4F2B: $09
    ld a, [hl]                                    ; $4F2C: $7E
    bit 4, a                                      ; $4F2D: $CB $67
    jp z, Jump_03F_4F56                           ; $4F2F: $CA $56 $4F

    bit 3, a                                      ; $4F32: $CB $5F
    jp nz, Jump_03F_4F56                          ; $4F34: $C2 $56 $4F

    bit 7, a                                      ; $4F37: $CB $7F
    jp nz, Jump_03F_4F56                          ; $4F39: $C2 $56 $4F

    ld hl, $007D                                  ; $4F3C: $21 $7D $00
    add hl, bc                                    ; $4F3F: $09
    bit 2, [hl]                                   ; $4F40: $CB $56
    jp nz, Jump_03F_4F56                          ; $4F42: $C2 $56 $4F

    ld hl, $0070                                  ; $4F45: $21 $70 $00
    add hl, bc                                    ; $4F48: $09
    ld a, [hl]                                    ; $4F49: $7E
    ld l, a                                       ; $4F4A: $6F
    ld a, [de]                                    ; $4F4B: $1A
    cp l                                          ; $4F4C: $BD
    jr c, jr_03F_4F56                             ; $4F4D: $38 $07

    ld hl, $0001                                  ; $4F4F: $21 $01 $00
    add hl, de                                    ; $4F52: $19
    jp Jump_03F_5082                              ; $4F53: $C3 $82 $50


Jump_03F_4F56:
jr_03F_4F56:
    ld hl, $003C                                  ; $4F56: $21 $3C $00
    add hl, bc                                    ; $4F59: $09
    ld a, [hl]                                    ; $4F5A: $7E
    cp $24                                        ; $4F5B: $FE $24
    jr z, jr_03F_4F6F                             ; $4F5D: $28 $10

    cp $16                                        ; $4F5F: $FE $16
    jr z, jr_03F_4F6F                             ; $4F61: $28 $0C

    ld hl, $0021                                  ; $4F63: $21 $21 $00
    add hl, bc                                    ; $4F66: $09
    ld a, [hl]                                    ; $4F67: $7E
    bit 0, a                                      ; $4F68: $CB $47
    jr z, jr_03F_4F6F                             ; $4F6A: $28 $03

    pop de                                        ; $4F6C: $D1
    pop hl                                        ; $4F6D: $E1
    ret                                           ; $4F6E: $C9


jr_03F_4F6F:
    ld hl, $0003                                  ; $4F6F: $21 $03 $00
    add hl, de                                    ; $4F72: $19
    ld e, l                                       ; $4F73: $5D
    ld d, h                                       ; $4F74: $54
    ld hl, $007D                                  ; $4F75: $21 $7D $00
    add hl, bc                                    ; $4F78: $09
    bit 0, [hl]                                   ; $4F79: $CB $46
    jp nz, Jump_03F_4FBF                          ; $4F7B: $C2 $BF $4F

    ld hl, $0082                                  ; $4F7E: $21 $82 $00
    add hl, bc                                    ; $4F81: $09
    ld a, [hl]                                    ; $4F82: $7E
    add a                                         ; $4F83: $87
    add a                                         ; $4F84: $87
    add a                                         ; $4F85: $87
    ld hl, $5160                                  ; $4F86: $21 $60 $51
    add l                                         ; $4F89: $85
    jr nc, jr_03F_4F8D                            ; $4F8A: $30 $01

    inc h                                         ; $4F8C: $24

jr_03F_4F8D:
    ld l, a                                       ; $4F8D: $6F
    push hl                                       ; $4F8E: $E5
    ld hl, $0083                                  ; $4F8F: $21 $83 $00
    add hl, bc                                    ; $4F92: $09
    ld a, [hl]                                    ; $4F93: $7E
    pop hl                                        ; $4F94: $E1
    or a                                          ; $4F95: $B7
    jr z, jr_03F_4F9C                             ; $4F96: $28 $04

    inc hl                                        ; $4F98: $23
    inc hl                                        ; $4F99: $23
    inc hl                                        ; $4F9A: $23
    inc hl                                        ; $4F9B: $23

jr_03F_4F9C:
    push hl                                       ; $4F9C: $E5
    ld hl, $0085                                  ; $4F9D: $21 $85 $00
    add hl, bc                                    ; $4FA0: $09
    ld a, [hl]                                    ; $4FA1: $7E
    pop hl                                        ; $4FA2: $E1
    cp $40                                        ; $4FA3: $FE $40
    jr z, jr_03F_4FB9                             ; $4FA5: $28 $12

    inc hl                                        ; $4FA7: $23
    cp $42                                        ; $4FA8: $FE $42
    jr z, jr_03F_4FB9                             ; $4FAA: $28 $0D

    inc hl                                        ; $4FAC: $23
    cp $44                                        ; $4FAD: $FE $44
    jr z, jr_03F_4FB9                             ; $4FAF: $28 $08

    inc hl                                        ; $4FB1: $23
    cp $46                                        ; $4FB2: $FE $46
    jr z, jr_03F_4FB9                             ; $4FB4: $28 $03

    jp Jump_03F_500A                              ; $4FB6: $C3 $0A $50


jr_03F_4FB9:
    ld a, [hl]                                    ; $4FB9: $7E
    or a                                          ; $4FBA: $B7
    jr z, jr_03F_500A                             ; $4FBB: $28 $4D

    jr jr_03F_4FEC                                ; $4FBD: $18 $2D

Jump_03F_4FBF:
    ld hl, $002D                                  ; $4FBF: $21 $2D $00
    add hl, bc                                    ; $4FC2: $09
    ld a, [hl]                                    ; $4FC3: $7E
    or a                                          ; $4FC4: $B7
    jr nz, jr_03F_4FD8                            ; $4FC5: $20 $11

    ld a, [$D7C0]                                 ; $4FC7: $FA $C0 $D7
    add a                                         ; $4FCA: $87
    jr nc, jr_03F_4FEC                            ; $4FCB: $30 $1F

    ld a, [$D7E6]                                 ; $4FCD: $FA $E6 $D7
    and $0C                                       ; $4FD0: $E6 $0C
    cp $0C                                        ; $4FD2: $FE $0C
    jr nz, jr_03F_4FEC                            ; $4FD4: $20 $16

    jr jr_03F_4FE7                                ; $4FD6: $18 $0F

jr_03F_4FD8:
    ld a, [$D780]                                 ; $4FD8: $FA $80 $D7
    add a                                         ; $4FDB: $87
    jr nc, jr_03F_4FEC                            ; $4FDC: $30 $0E

    ld a, [$D7A6]                                 ; $4FDE: $FA $A6 $D7
    and $0C                                       ; $4FE1: $E6 $0C
    cp $0C                                        ; $4FE3: $FE $0C
    jr nz, jr_03F_4FEC                            ; $4FE5: $20 $05

jr_03F_4FE7:
    ld a, $1D                                     ; $4FE7: $3E $1D
    jp Jump_03F_509D                              ; $4FE9: $C3 $9D $50


jr_03F_4FEC:
    ld hl, $0071                                  ; $4FEC: $21 $71 $00
    add hl, bc                                    ; $4FEF: $09
    ld a, [hl]                                    ; $4FF0: $7E
    ld l, a                                       ; $4FF1: $6F
    ld a, [de]                                    ; $4FF2: $1A
    cp l                                          ; $4FF3: $BD
    jr nc, jr_03F_5003                            ; $4FF4: $30 $0D

    inc de                                        ; $4FF6: $13
    ld a, [de]                                    ; $4FF7: $1A
    dec de                                        ; $4FF8: $1B
    cp l                                          ; $4FF9: $BD
    jr c, jr_03F_500A                             ; $4FFA: $38 $0E

    ld hl, $0004                                  ; $4FFC: $21 $04 $00
    add hl, de                                    ; $4FFF: $19
    jp Jump_03F_5082                              ; $5000: $C3 $82 $50


jr_03F_5003:
    ld hl, $0002                                  ; $5003: $21 $02 $00
    add hl, de                                    ; $5006: $19
    jp Jump_03F_5082                              ; $5007: $C3 $82 $50


Jump_03F_500A:
jr_03F_500A:
    ld hl, $0006                                  ; $500A: $21 $06 $00
    add hl, de                                    ; $500D: $19
    ld e, l                                       ; $500E: $5D
    ld d, h                                       ; $500F: $54
    ld hl, $0087                                  ; $5010: $21 $87 $00
    add hl, bc                                    ; $5013: $09
    ld a, [hl]                                    ; $5014: $7E
    ld hl, $008D                                  ; $5015: $21 $8D $00
    add hl, bc                                    ; $5018: $09
    or [hl]                                       ; $5019: $B6
    jp z, Jump_03F_504B                           ; $501A: $CA $4B $50

    ld hl, $0070                                  ; $501D: $21 $70 $00
    add hl, bc                                    ; $5020: $09
    ld a, [hl]                                    ; $5021: $7E
    ld l, a                                       ; $5022: $6F
    ld a, [de]                                    ; $5023: $1A
    cp l                                          ; $5024: $BD
    jr nc, jr_03F_5033                            ; $5025: $30 $0C

    inc de                                        ; $5027: $13
    ld a, [de]                                    ; $5028: $1A
    dec de                                        ; $5029: $1B
    cp l                                          ; $502A: $BD
    jr c, jr_03F_504B                             ; $502B: $38 $1E

    ld hl, $0004                                  ; $502D: $21 $04 $00
    add hl, de                                    ; $5030: $19
    ld e, l                                       ; $5031: $5D
    ld d, h                                       ; $5032: $54

jr_03F_5033:
    ld hl, $0089                                  ; $5033: $21 $89 $00
    add hl, bc                                    ; $5036: $09
    ld a, [hl]                                    ; $5037: $7E
    ld hl, $008F                                  ; $5038: $21 $8F $00
    add hl, bc                                    ; $503B: $09
    or [hl]                                       ; $503C: $B6
    ld hl, $0002                                  ; $503D: $21 $02 $00
    add hl, de                                    ; $5040: $19
    bit 3, a                                      ; $5041: $CB $5F
    jp nz, Jump_03F_5082                          ; $5043: $C2 $82 $50

    inc hl                                        ; $5046: $23
    inc hl                                        ; $5047: $23
    jp Jump_03F_5082                              ; $5048: $C3 $82 $50


Jump_03F_504B:
jr_03F_504B:
    ld hl, $000A                                  ; $504B: $21 $0A $00
    add hl, de                                    ; $504E: $19
    ld e, l                                       ; $504F: $5D
    ld d, h                                       ; $5050: $54

Jump_03F_5051:
    ld hl, $0070                                  ; $5051: $21 $70 $00
    add hl, bc                                    ; $5054: $09
    ld a, [hl]                                    ; $5055: $7E
    ld l, a                                       ; $5056: $6F
    ld a, [de]                                    ; $5057: $1A
    cp l                                          ; $5058: $BD
    jr nc, jr_03F_506F                            ; $5059: $30 $14

    inc de                                        ; $505B: $13
    ld a, [de]                                    ; $505C: $1A
    dec de                                        ; $505D: $1B
    cp l                                          ; $505E: $BD
    jr c, jr_03F_5069                             ; $505F: $38 $08

    ld hl, $0004                                  ; $5061: $21 $04 $00
    add hl, de                                    ; $5064: $19
    ld e, l                                       ; $5065: $5D
    ld d, h                                       ; $5066: $54
    jr jr_03F_506F                                ; $5067: $18 $06

jr_03F_5069:
    ld hl, $0008                                  ; $5069: $21 $08 $00
    add hl, de                                    ; $506C: $19
    ld e, l                                       ; $506D: $5D
    ld d, h                                       ; $506E: $54

jr_03F_506F:
    ld hl, $007D                                  ; $506F: $21 $7D $00
    add hl, bc                                    ; $5072: $09
    ld a, [hl]                                    ; $5073: $7E
    ld hl, $0002                                  ; $5074: $21 $02 $00
    add hl, de                                    ; $5077: $19
    bit 2, a                                      ; $5078: $CB $57
    jp z, Jump_03F_5082                           ; $507A: $CA $82 $50

    inc hl                                        ; $507D: $23
    inc hl                                        ; $507E: $23
    jp Jump_03F_5082                              ; $507F: $C3 $82 $50


Jump_03F_5082:
    ld e, [hl]                                    ; $5082: $5E
    inc hl                                        ; $5083: $23
    ld d, [hl]                                    ; $5084: $56
    call Call_000_17E2                            ; $5085: $CD $E2 $17
    srl a                                         ; $5088: $CB $3F
    ld l, a                                       ; $508A: $6F
    ld a, [$C310]                                 ; $508B: $FA $10 $C3
    srl a                                         ; $508E: $CB $3F
    add l                                         ; $5090: $85
    ld l, a                                       ; $5091: $6F

jr_03F_5092:
    ld a, [de]                                    ; $5092: $1A
    inc de                                        ; $5093: $13
    cp l                                          ; $5094: $BD
    jr c, jr_03F_509C                             ; $5095: $38 $05

    jr z, jr_03F_509C                             ; $5097: $28 $03

    inc de                                        ; $5099: $13
    jr jr_03F_5092                                ; $509A: $18 $F6

jr_03F_509C:
    ld a, [de]                                    ; $509C: $1A

Jump_03F_509D:
    and $7F                                       ; $509D: $E6 $7F
    ld e, a                                       ; $509F: $5F
    ld d, $00                                     ; $50A0: $16 $00
    ld hl, $5200                                  ; $50A2: $21 $00 $52
    add hl, de                                    ; $50A5: $19
    add hl, de                                    ; $50A6: $19
    ld e, [hl]                                    ; $50A7: $5E
    inc hl                                        ; $50A8: $23
    ld d, [hl]                                    ; $50A9: $56
    ld hl, $00A0                                  ; $50AA: $21 $A0 $00
    add hl, bc                                    ; $50AD: $09
    ld a, [de]                                    ; $50AE: $1A
    inc de                                        ; $50AF: $13
    ld [hl+], a                                   ; $50B0: $22
    inc hl                                        ; $50B1: $23
    ld [hl], e                                    ; $50B2: $73
    inc hl                                        ; $50B3: $23
    ld [hl], d                                    ; $50B4: $72
    ld hl, $009F                                  ; $50B5: $21 $9F $00
    add hl, bc                                    ; $50B8: $09
    jp Jump_03F_4D69                              ; $50B9: $C3 $69 $4D


    ld a, [$C004]                                 ; $50BC: $FA $04 $C0
    and $03                                       ; $50BF: $E6 $03
    swap a                                        ; $50C1: $CB $37
    ld e, a                                       ; $50C3: $5F
    ld a, [$C2F3]                                 ; $50C4: $FA $F3 $C2
    add e                                         ; $50C7: $83
    ld e, a                                       ; $50C8: $5F
    ld d, $00                                     ; $50C9: $16 $00
    ld hl, $5120                                  ; $50CB: $21 $20 $51
    add hl, de                                    ; $50CE: $19
    ld a, [hl]                                    ; $50CF: $7E
    ld [$C310], a                                 ; $50D0: $EA $10 $C3
    ret                                           ; $50D3: $C9


    ld a, [$C004]                                 ; $50D4: $FA $04 $C0
    and $03                                       ; $50D7: $E6 $03
    ld c, a                                       ; $50D9: $4F
    swap a                                        ; $50DA: $CB $37
    ld e, a                                       ; $50DC: $5F
    ld a, [$C2F3]                                 ; $50DD: $FA $F3 $C2
    add e                                         ; $50E0: $83
    ld e, a                                       ; $50E1: $5F
    ld d, $00                                     ; $50E2: $16 $00
    ld hl, $5120                                  ; $50E4: $21 $20 $51
    add hl, de                                    ; $50E7: $19
    ld e, [hl]                                    ; $50E8: $5E
    ld b, $00                                     ; $50E9: $06 $00
    ld hl, $5118                                  ; $50EB: $21 $18 $51
    add hl, bc                                    ; $50EE: $09
    ld c, [hl]                                    ; $50EF: $4E
    ld a, [$C310]                                 ; $50F0: $FA $10 $C3
    add c                                         ; $50F3: $81
    jr nc, jr_03F_50F8                            ; $50F4: $30 $02

    ld a, $FF                                     ; $50F6: $3E $FF

jr_03F_50F8:
    cp e                                          ; $50F8: $BB
    jr c, jr_03F_50FC                             ; $50F9: $38 $01

    ld a, e                                       ; $50FB: $7B

jr_03F_50FC:
    ld [$C310], a                                 ; $50FC: $EA $10 $C3
    ret                                           ; $50FF: $C9


    ld a, [$C004]                                 ; $5100: $FA $04 $C0
    and $03                                       ; $5103: $E6 $03
    ld e, a                                       ; $5105: $5F
    ld d, $00                                     ; $5106: $16 $00
    ld hl, $511C                                  ; $5108: $21 $1C $51
    add hl, de                                    ; $510B: $19
    ld e, [hl]                                    ; $510C: $5E
    ld a, [$C310]                                 ; $510D: $FA $10 $C3
    sub e                                         ; $5110: $93
    jr nc, jr_03F_5114                            ; $5111: $30 $01

    xor a                                         ; $5113: $AF

jr_03F_5114:
    ld [$C310], a                                 ; $5114: $EA $10 $C3
    ret                                           ; $5117: $C9


    jr nz, jr_03F_513A                            ; $5118: $20 $20

    inc h                                         ; $511A: $24
    jr z, jr_03F_512D                             ; $511B: $28 $10

    inc c                                         ; $511D: $0C
    ld [$0004], sp                                ; $511E: $08 $04 $00
    ld [$1810], sp                                ; $5121: $08 $10 $18
    jr nz, jr_03F_514E                            ; $5124: $20 $28

    jr nc, jr_03F_5178                            ; $5126: $30 $50

    ld d, b                                       ; $5128: $50
    ld d, b                                       ; $5129: $50
    ld d, b                                       ; $512A: $50
    ld d, b                                       ; $512B: $50
    ld d, b                                       ; $512C: $50

jr_03F_512D:
    ld d, b                                       ; $512D: $50
    ld d, b                                       ; $512E: $50
    ld d, b                                       ; $512F: $50
    db $10                                        ; $5130: $10
    jr nz, jr_03F_5163                            ; $5131: $20 $30

    ld b, b                                       ; $5133: $40
    ld d, b                                       ; $5134: $50
    ld h, b                                       ; $5135: $60
    ld [hl], b                                    ; $5136: $70
    sub b                                         ; $5137: $90
    sub b                                         ; $5138: $90
    sub b                                         ; $5139: $90

jr_03F_513A:
    sub b                                         ; $513A: $90
    sub b                                         ; $513B: $90
    sub b                                         ; $513C: $90
    sub b                                         ; $513D: $90
    sub b                                         ; $513E: $90
    sub b                                         ; $513F: $90
    jr nz, jr_03F_5176                            ; $5140: $20 $34

    ld c, b                                       ; $5142: $48
    ld e, h                                       ; $5143: $5C
    ld [hl], b                                    ; $5144: $70
    add h                                         ; $5145: $84
    sbc b                                         ; $5146: $98
    cp b                                          ; $5147: $B8
    call z, $CCCC                                 ; $5148: $CC $CC $CC
    call z, $CCCC                                 ; $514B: $CC $CC $CC

jr_03F_514E:
    call z, $C0CC                                 ; $514E: $CC $CC $C0
    ldh [rIE], a                                  ; $5151: $E0 $FF
    rst RST_38                                    ; $5153: $FF
    rst RST_38                                    ; $5154: $FF
    rst RST_38                                    ; $5155: $FF
    rst RST_38                                    ; $5156: $FF
    rst RST_38                                    ; $5157: $FF
    rst RST_38                                    ; $5158: $FF
    rst RST_38                                    ; $5159: $FF
    rst RST_38                                    ; $515A: $FF
    rst RST_38                                    ; $515B: $FF
    rst RST_38                                    ; $515C: $FF
    rst RST_38                                    ; $515D: $FF
    rst RST_38                                    ; $515E: $FF
    rst RST_38                                    ; $515F: $FF
    ld bc, $0000                                  ; $5160: $01 $00 $00

jr_03F_5163:
    nop                                           ; $5163: $00
    nop                                           ; $5164: $00
    nop                                           ; $5165: $00
    nop                                           ; $5166: $00
    nop                                           ; $5167: $00
    nop                                           ; $5168: $00
    ld bc, $0000                                  ; $5169: $01 $00 $00
    nop                                           ; $516C: $00
    nop                                           ; $516D: $00
    nop                                           ; $516E: $00
    nop                                           ; $516F: $00
    nop                                           ; $5170: $00
    nop                                           ; $5171: $00
    nop                                           ; $5172: $00
    ld bc, $0100                                  ; $5173: $01 $00 $01

jr_03F_5176:
    nop                                           ; $5176: $00
    nop                                           ; $5177: $00

jr_03F_5178:
    ld bc, $0100                                  ; $5178: $01 $00 $01
    nop                                           ; $517B: $00
    ld bc, $0000                                  ; $517C: $01 $00 $00
    nop                                           ; $517F: $00
    ld bc, $0101                                  ; $5180: $01 $01 $01
    nop                                           ; $5183: $00
    nop                                           ; $5184: $00
    nop                                           ; $5185: $00
    nop                                           ; $5186: $00
    nop                                           ; $5187: $00
    nop                                           ; $5188: $00
    nop                                           ; $5189: $00
    nop                                           ; $518A: $00
    nop                                           ; $518B: $00
    ld bc, $0000                                  ; $518C: $01 $00 $00
    nop                                           ; $518F: $00
    nop                                           ; $5190: $00
    ld bc, $0000                                  ; $5191: $01 $00 $00
    nop                                           ; $5194: $00
    nop                                           ; $5195: $00
    nop                                           ; $5196: $00
    nop                                           ; $5197: $00
    ld bc, $0000                                  ; $5198: $01 $00 $00
    nop                                           ; $519B: $00
    ld bc, $0000                                  ; $519C: $01 $00 $00
    nop                                           ; $519F: $00
    ld bc, $0000                                  ; $51A0: $01 $00 $00
    nop                                           ; $51A3: $00
    nop                                           ; $51A4: $00
    nop                                           ; $51A5: $00
    nop                                           ; $51A6: $00
    nop                                           ; $51A7: $00
    nop                                           ; $51A8: $00
    nop                                           ; $51A9: $00
    ld bc, $0000                                  ; $51AA: $01 $00 $00
    nop                                           ; $51AD: $00
    nop                                           ; $51AE: $00
    nop                                           ; $51AF: $00
    xor $57                                       ; $51B0: $EE $57
    or c                                          ; $51B2: $B1
    ld e, c                                       ; $51B3: $59
    ld [hl], h                                    ; $51B4: $74
    ld e, e                                       ; $51B5: $5B
    inc sp                                        ; $51B6: $33
    ld e, l                                       ; $51B7: $5D
    ldh a, [c]                                    ; $51B8: $F2
    ld e, [hl]                                    ; $51B9: $5E
    or l                                          ; $51BA: $B5
    ld h, b                                       ; $51BB: $60
    halt                                          ; $51BC: $76
    ld h, d                                       ; $51BD: $62
    scf                                           ; $51BE: $37
    ld h, h                                       ; $51BF: $64
    ld hl, sp+$65                                 ; $51C0: $F8 $65
    cp c                                          ; $51C2: $B9
    ld h, a                                       ; $51C3: $67
    ld a, d                                       ; $51C4: $7A
    ld l, c                                       ; $51C5: $69
    dec sp                                        ; $51C6: $3B
    ld l, e                                       ; $51C7: $6B
    db $FC                                        ; $51C8: $FC
    ld l, h                                       ; $51C9: $6C
    cp l                                          ; $51CA: $BD
    ld l, [hl]                                    ; $51CB: $6E
    ld a, [hl]                                    ; $51CC: $7E
    ld [hl], b                                    ; $51CD: $70
    ccf                                           ; $51CE: $3F
    ld [hl], d                                    ; $51CF: $72
    nop                                           ; $51D0: $00
    ld [hl], h                                    ; $51D1: $74
    pop bc                                        ; $51D2: $C1
    ld [hl], l                                    ; $51D3: $75
    add d                                         ; $51D4: $82
    ld [hl], a                                    ; $51D5: $77
    ld b, l                                       ; $51D6: $45
    ld a, c                                       ; $51D7: $79
    ld b, $7B                                     ; $51D8: $06 $7B
    add hl, hl                                    ; $51DA: $29
    ld a, e                                       ; $51DB: $7B
    ld b, $7B                                     ; $51DC: $06 $7B
    add hl, hl                                    ; $51DE: $29
    ld a, e                                       ; $51DF: $7B
    ld b, $7B                                     ; $51E0: $06 $7B
    add hl, hl                                    ; $51E2: $29
    ld a, e                                       ; $51E3: $7B
    ld b, $7B                                     ; $51E4: $06 $7B
    add hl, hl                                    ; $51E6: $29
    ld a, e                                       ; $51E7: $7B
    ld b, $7B                                     ; $51E8: $06 $7B
    add hl, hl                                    ; $51EA: $29
    ld a, e                                       ; $51EB: $7B
    ld b, $7B                                     ; $51EC: $06 $7B
    add hl, hl                                    ; $51EE: $29
    ld a, e                                       ; $51EF: $7B
    ld b, $7B                                     ; $51F0: $06 $7B
    add hl, hl                                    ; $51F2: $29
    ld a, e                                       ; $51F3: $7B
    ld b, $7B                                     ; $51F4: $06 $7B
    add hl, hl                                    ; $51F6: $29
    ld a, e                                       ; $51F7: $7B
    ld b, $7B                                     ; $51F8: $06 $7B
    add hl, hl                                    ; $51FA: $29
    ld a, e                                       ; $51FB: $7B
    ld b, $7B                                     ; $51FC: $06 $7B
    add hl, hl                                    ; $51FE: $29
    ld a, e                                       ; $51FF: $7B
    nop                                           ; $5200: $00
    ld d, e                                       ; $5201: $53
    inc b                                         ; $5202: $04
    ld d, e                                       ; $5203: $53
    ld [$0C53], sp                                ; $5204: $08 $53 $0C
    ld d, e                                       ; $5207: $53
    db $10                                        ; $5208: $10
    ld d, e                                       ; $5209: $53
    inc d                                         ; $520A: $14
    ld d, e                                       ; $520B: $53
    jr jr_03F_5261                                ; $520C: $18 $53

    inc e                                         ; $520E: $1C
    ld d, e                                       ; $520F: $53
    jr nz, jr_03F_5265                            ; $5210: $20 $53

    dec hl                                        ; $5212: $2B
    ld d, e                                       ; $5213: $53
    ld [hl-], a                                   ; $5214: $32
    ld d, e                                       ; $5215: $53
    inc a                                         ; $5216: $3C
    ld d, e                                       ; $5217: $53
    ld b, [hl]                                    ; $5218: $46
    ld d, e                                       ; $5219: $53
    ld c, l                                       ; $521A: $4D
    ld d, e                                       ; $521B: $53
    ld d, a                                       ; $521C: $57
    ld d, e                                       ; $521D: $53
    ld e, [hl]                                    ; $521E: $5E
    ld d, e                                       ; $521F: $53
    ld h, d                                       ; $5220: $62
    ld d, e                                       ; $5221: $53
    ld l, c                                       ; $5222: $69
    ld d, e                                       ; $5223: $53
    ld [hl], b                                    ; $5224: $70
    ld d, e                                       ; $5225: $53
    ld [hl], a                                    ; $5226: $77
    ld d, e                                       ; $5227: $53
    add c                                         ; $5228: $81
    ld d, e                                       ; $5229: $53
    adc e                                         ; $522A: $8B
    ld d, e                                       ; $522B: $53
    sub d                                         ; $522C: $92
    ld d, e                                       ; $522D: $53
    sbc a                                         ; $522E: $9F
    ld d, e                                       ; $522F: $53
    xor h                                         ; $5230: $AC
    ld d, e                                       ; $5231: $53
    cp c                                          ; $5232: $B9
    ld d, e                                       ; $5233: $53
    add $53                                       ; $5234: $C6 $53
    sub $53                                       ; $5236: $D6 $53
    and $53                                       ; $5238: $E6 $53
    or $53                                        ; $523A: $F6 $53
    ld b, $54                                     ; $523C: $06 $54
    inc de                                        ; $523E: $13
    ld d, h                                       ; $523F: $54
    dec e                                         ; $5240: $1D
    ld d, h                                       ; $5241: $54
    ld a, [hl+]                                   ; $5242: $2A
    ld d, h                                       ; $5243: $54
    ld c, c                                       ; $5244: $49
    ld d, h                                       ; $5245: $54
    ld e, h                                       ; $5246: $5C
    ld d, h                                       ; $5247: $54
    ld l, a                                       ; $5248: $6F
    ld d, h                                       ; $5249: $54
    adc e                                         ; $524A: $8B
    ld d, h                                       ; $524B: $54
    xor l                                         ; $524C: $AD
    ld d, h                                       ; $524D: $54
    call z, $DC54                                 ; $524E: $CC $54 $DC
    ld d, h                                       ; $5251: $54
    rst RST_28                                    ; $5252: $EF
    ld d, h                                       ; $5253: $54
    dec b                                         ; $5254: $05
    ld d, l                                       ; $5255: $55
    daa                                           ; $5256: $27
    ld d, l                                       ; $5257: $55
    scf                                           ; $5258: $37
    ld d, l                                       ; $5259: $55
    ld b, a                                       ; $525A: $47
    ld d, l                                       ; $525B: $55
    ld l, c                                       ; $525C: $69
    ld d, l                                       ; $525D: $55
    add d                                         ; $525E: $82
    ld d, l                                       ; $525F: $55
    sub l                                         ; $5260: $95

jr_03F_5261:
    ld d, l                                       ; $5261: $55
    xor b                                         ; $5262: $A8
    ld d, l                                       ; $5263: $55
    cp [hl]                                       ; $5264: $BE

jr_03F_5265:
    ld d, l                                       ; $5265: $55
    db $EC                                        ; $5266: $EC
    ld d, l                                       ; $5267: $55
    rst RST_38                                    ; $5268: $FF
    ld d, l                                       ; $5269: $55
    inc h                                         ; $526A: $24
    ld d, [hl]                                    ; $526B: $56
    ld sp, $4756                                  ; $526C: $31 $56 $47
    ld d, [hl]                                    ; $526F: $56
    ld e, l                                       ; $5270: $5D
    ld d, [hl]                                    ; $5271: $56
    ld h, a                                       ; $5272: $67
    ld d, [hl]                                    ; $5273: $56
    ld [hl], c                                    ; $5274: $71
    ld d, [hl]                                    ; $5275: $56
    add a                                         ; $5276: $87
    ld d, [hl]                                    ; $5277: $56
    and e                                         ; $5278: $A3
    ld d, [hl]                                    ; $5279: $56
    xor l                                         ; $527A: $AD
    ld d, [hl]                                    ; $527B: $56
    ret nz                                        ; $527C: $C0

    ld d, [hl]                                    ; $527D: $56
    jp z, $D456                                   ; $527E: $CA $56 $D4

    ld d, [hl]                                    ; $5281: $56
    dec e                                         ; $5282: $1D
    ld d, a                                       ; $5283: $57
    add hl, sp                                    ; $5284: $39
    ld d, a                                       ; $5285: $57
    ld c, h                                       ; $5286: $4C
    ld d, a                                       ; $5287: $57
    ld d, [hl]                                    ; $5288: $56
    ld d, a                                       ; $5289: $57
    ld h, b                                       ; $528A: $60
    ld d, a                                       ; $528B: $57
    ld [hl], e                                    ; $528C: $73
    ld d, a                                       ; $528D: $57
    add [hl]                                      ; $528E: $86
    ld d, a                                       ; $528F: $57
    sbc h                                         ; $5290: $9C
    ld d, a                                       ; $5291: $57
    or d                                          ; $5292: $B2
    ld d, a                                       ; $5293: $57
    jp nz, Jump_000_0057                          ; $5294: $C2 $57 $00

    ld d, e                                       ; $5297: $53
    nop                                           ; $5298: $00
    ld d, e                                       ; $5299: $53
    nop                                           ; $529A: $00
    ld d, e                                       ; $529B: $53
    nop                                           ; $529C: $00
    ld d, e                                       ; $529D: $53
    nop                                           ; $529E: $00
    ld d, e                                       ; $529F: $53
    nop                                           ; $52A0: $00
    ld d, e                                       ; $52A1: $53
    nop                                           ; $52A2: $00
    ld d, e                                       ; $52A3: $53
    nop                                           ; $52A4: $00
    ld d, e                                       ; $52A5: $53
    nop                                           ; $52A6: $00
    ld d, e                                       ; $52A7: $53
    nop                                           ; $52A8: $00
    ld d, e                                       ; $52A9: $53
    nop                                           ; $52AA: $00
    ld d, e                                       ; $52AB: $53
    nop                                           ; $52AC: $00
    ld d, e                                       ; $52AD: $53
    nop                                           ; $52AE: $00
    ld d, e                                       ; $52AF: $53
    nop                                           ; $52B0: $00
    ld d, e                                       ; $52B1: $53
    nop                                           ; $52B2: $00
    ld d, e                                       ; $52B3: $53
    nop                                           ; $52B4: $00
    ld d, e                                       ; $52B5: $53
    nop                                           ; $52B6: $00
    ld d, e                                       ; $52B7: $53
    nop                                           ; $52B8: $00
    ld d, e                                       ; $52B9: $53
    nop                                           ; $52BA: $00
    ld d, e                                       ; $52BB: $53
    nop                                           ; $52BC: $00
    ld d, e                                       ; $52BD: $53
    nop                                           ; $52BE: $00
    ld d, e                                       ; $52BF: $53
    nop                                           ; $52C0: $00
    ld d, e                                       ; $52C1: $53
    nop                                           ; $52C2: $00
    ld d, e                                       ; $52C3: $53
    nop                                           ; $52C4: $00
    ld d, e                                       ; $52C5: $53
    nop                                           ; $52C6: $00
    ld d, e                                       ; $52C7: $53
    nop                                           ; $52C8: $00
    ld d, e                                       ; $52C9: $53
    nop                                           ; $52CA: $00
    ld d, e                                       ; $52CB: $53
    nop                                           ; $52CC: $00
    ld d, e                                       ; $52CD: $53
    nop                                           ; $52CE: $00
    ld d, e                                       ; $52CF: $53
    nop                                           ; $52D0: $00
    ld d, e                                       ; $52D1: $53
    nop                                           ; $52D2: $00
    ld d, e                                       ; $52D3: $53
    nop                                           ; $52D4: $00
    ld d, e                                       ; $52D5: $53
    nop                                           ; $52D6: $00
    ld d, e                                       ; $52D7: $53
    nop                                           ; $52D8: $00
    ld d, e                                       ; $52D9: $53
    nop                                           ; $52DA: $00
    ld d, e                                       ; $52DB: $53
    nop                                           ; $52DC: $00
    ld d, e                                       ; $52DD: $53
    nop                                           ; $52DE: $00
    ld d, e                                       ; $52DF: $53
    nop                                           ; $52E0: $00
    ld d, e                                       ; $52E1: $53
    nop                                           ; $52E2: $00
    ld d, e                                       ; $52E3: $53
    nop                                           ; $52E4: $00
    ld d, e                                       ; $52E5: $53
    nop                                           ; $52E6: $00
    ld d, e                                       ; $52E7: $53
    nop                                           ; $52E8: $00
    ld d, e                                       ; $52E9: $53
    nop                                           ; $52EA: $00
    ld d, e                                       ; $52EB: $53
    nop                                           ; $52EC: $00
    ld d, e                                       ; $52ED: $53
    nop                                           ; $52EE: $00
    ld d, e                                       ; $52EF: $53
    nop                                           ; $52F0: $00
    ld d, e                                       ; $52F1: $53
    nop                                           ; $52F2: $00
    ld d, e                                       ; $52F3: $53
    nop                                           ; $52F4: $00
    ld d, e                                       ; $52F5: $53
    nop                                           ; $52F6: $00
    ld d, e                                       ; $52F7: $53
    nop                                           ; $52F8: $00
    ld d, e                                       ; $52F9: $53
    nop                                           ; $52FA: $00
    ld d, e                                       ; $52FB: $53
    nop                                           ; $52FC: $00
    ld d, e                                       ; $52FD: $53
    push de                                       ; $52FE: $D5
    ld d, a                                       ; $52FF: $57
    jr nz, jr_03F_5302                            ; $5300: $20 $00

jr_03F_5302:
    nop                                           ; $5302: $00
    nop                                           ; $5303: $00
    jr nz, @+$0A                                  ; $5304: $20 $08

    ld [$7F00], sp                                ; $5306: $08 $00 $7F
    nop                                           ; $5309: $00
    nop                                           ; $530A: $00
    nop                                           ; $530B: $00
    ld a, a                                       ; $530C: $7F
    ld [$0008], sp                                ; $530D: $08 $08 $00
    ld [$0201], sp                                ; $5310: $08 $01 $02
    nop                                           ; $5313: $00
    dec b                                         ; $5314: $05
    ld [bc], a                                    ; $5315: $02
    ld bc, $0500                                  ; $5316: $01 $00 $05
    ld a, [bc]                                    ; $5319: $0A
    add hl, bc                                    ; $531A: $09
    nop                                           ; $531B: $00
    db $10                                        ; $531C: $10
    dec b                                         ; $531D: $05
    ld b, $00                                     ; $531E: $06 $00
    add b                                         ; $5320: $80
    daa                                           ; $5321: $27
    ld d, e                                       ; $5322: $53
    dec e                                         ; $5323: $1D
    ld a, [hl-]                                   ; $5324: $3A
    add hl, sp                                    ; $5325: $39
    nop                                           ; $5326: $00
    ld bc, $0000                                  ; $5327: $01 $00 $00
    nop                                           ; $532A: $00
    ld bc, $4040                                  ; $532B: $01 $40 $40
    ld bc, $0000                                  ; $532E: $01 $00 $00
    nop                                           ; $5331: $00
    ld bc, $0201                                  ; $5332: $01 $01 $02
    ld bc, $0000                                  ; $5335: $01 $00 $00
    db $10                                        ; $5338: $10
    ld bc, $0002                                  ; $5339: $01 $02 $00
    ld bc, $0102                                  ; $533C: $01 $02 $01
    ld bc, $0000                                  ; $533F: $01 $00 $00
    inc b                                         ; $5342: $04
    ld [bc], a                                    ; $5343: $02
    ld bc, $1800                                  ; $5344: $01 $00 $18
    dec b                                         ; $5347: $05
    ld b, $18                                     ; $5348: $06 $18
    ld [bc], a                                    ; $534A: $02
    ld bc, $8100                                  ; $534B: $01 $00 $81
    ld d, e                                       ; $534E: $53
    ld d, e                                       ; $534F: $53
    ld bc, $3434                                  ; $5350: $01 $34 $34
    ld bc, $0000                                  ; $5353: $01 $00 $00
    nop                                           ; $5356: $00
    ld bc, $7070                                  ; $5357: $01 $70 $70
    jr nz, jr_03F_535C                            ; $535A: $20 $00

jr_03F_535C:
    nop                                           ; $535C: $00
    nop                                           ; $535D: $00
    ld a, [bc]                                    ; $535E: $0A
    ld a, [bc]                                    ; $535F: $0A
    add hl, bc                                    ; $5360: $09
    nop                                           ; $5361: $00
    ld bc, $2020                                  ; $5362: $01 $20 $20
    ld bc, $0000                                  ; $5365: $01 $00 $00
    nop                                           ; $5368: $00
    ld bc, $1010                                  ; $5369: $01 $10 $10
    ld bc, $0000                                  ; $536C: $01 $00 $00
    nop                                           ; $536F: $00
    ld a, [bc]                                    ; $5370: $0A
    jr nz, jr_03F_5393                            ; $5371: $20 $20

    ld bc, $0000                                  ; $5373: $01 $00 $00
    nop                                           ; $5376: $00
    ld bc, $0808                                  ; $5377: $01 $08 $08
    ld bc, $2828                                  ; $537A: $01 $28 $28
    ld bc, $0808                                  ; $537D: $01 $08 $08
    nop                                           ; $5380: $00
    ld bc, $0808                                  ; $5381: $01 $08 $08
    ld bc, $1818                                  ; $5384: $01 $18 $18
    ld bc, $0808                                  ; $5387: $01 $08 $08
    nop                                           ; $538A: $00
    ld a, [bc]                                    ; $538B: $0A
    jr @+$1A                                      ; $538C: $18 $18

    ld bc, $0808                                  ; $538E: $01 $08 $08
    nop                                           ; $5391: $00
    inc b                                         ; $5392: $04

jr_03F_5393:
    dec b                                         ; $5393: $05
    ld b, $0C                                     ; $5394: $06 $0C
    nop                                           ; $5396: $00
    nop                                           ; $5397: $00
    ld bc, $2020                                  ; $5398: $01 $20 $20
    ld bc, $0000                                  ; $539B: $01 $00 $00
    nop                                           ; $539E: $00
    inc b                                         ; $539F: $04
    dec b                                         ; $53A0: $05
    ld b, $0C                                     ; $53A1: $06 $0C
    nop                                           ; $53A3: $00
    nop                                           ; $53A4: $00
    ld bc, $1010                                  ; $53A5: $01 $10 $10
    ld bc, $0000                                  ; $53A8: $01 $00 $00
    nop                                           ; $53AB: $00
    jr @+$07                                      ; $53AC: $18 $05

    ld b, $08                                     ; $53AE: $06 $08
    nop                                           ; $53B0: $00
    nop                                           ; $53B1: $00
    ld bc, $2020                                  ; $53B2: $01 $20 $20
    ld bc, $0000                                  ; $53B5: $01 $00 $00
    nop                                           ; $53B8: $00
    jr @+$07                                      ; $53B9: $18 $05

    ld b, $08                                     ; $53BB: $06 $08
    nop                                           ; $53BD: $00
    nop                                           ; $53BE: $00
    ld bc, $1010                                  ; $53BF: $01 $10 $10
    ld bc, $0000                                  ; $53C2: $01 $00 $00
    nop                                           ; $53C5: $00
    ld bc, $0808                                  ; $53C6: $01 $08 $08
    inc b                                         ; $53C9: $04
    dec b                                         ; $53CA: $05
    ld b, $0C                                     ; $53CB: $06 $0C
    nop                                           ; $53CD: $00
    nop                                           ; $53CE: $00
    ld bc, $2020                                  ; $53CF: $01 $20 $20
    ld bc, $0000                                  ; $53D2: $01 $00 $00
    nop                                           ; $53D5: $00
    ld bc, $0808                                  ; $53D6: $01 $08 $08
    inc b                                         ; $53D9: $04
    dec b                                         ; $53DA: $05
    ld b, $0C                                     ; $53DB: $06 $0C
    nop                                           ; $53DD: $00
    nop                                           ; $53DE: $00
    ld bc, $1010                                  ; $53DF: $01 $10 $10
    ld bc, $0000                                  ; $53E2: $01 $00 $00
    nop                                           ; $53E5: $00
    ld bc, $0808                                  ; $53E6: $01 $08 $08
    jr @+$07                                      ; $53E9: $18 $05

    ld b, $08                                     ; $53EB: $06 $08
    nop                                           ; $53ED: $00
    nop                                           ; $53EE: $00
    ld bc, $2020                                  ; $53EF: $01 $20 $20
    ld bc, $0000                                  ; $53F2: $01 $00 $00
    nop                                           ; $53F5: $00
    ld bc, $0808                                  ; $53F6: $01 $08 $08
    jr @+$07                                      ; $53F9: $18 $05

    ld b, $08                                     ; $53FB: $06 $08
    nop                                           ; $53FD: $00
    nop                                           ; $53FE: $00
    ld bc, $1010                                  ; $53FF: $01 $10 $10
    ld bc, $0000                                  ; $5402: $01 $00 $00
    nop                                           ; $5405: $00
    ld bc, $0404                                  ; $5406: $01 $04 $04
    ld bc, $2424                                  ; $5409: $01 $24 $24
    inc b                                         ; $540C: $04
    inc b                                         ; $540D: $04
    inc b                                         ; $540E: $04
    ld bc, $0000                                  ; $540F: $01 $00 $00
    nop                                           ; $5412: $00
    ld c, $01                                     ; $5413: $0E $01
    ld [bc], a                                    ; $5415: $02
    ld a, [bc]                                    ; $5416: $0A
    ld hl, $0122                                  ; $5417: $21 $22 $01
    ld bc, $0002                                  ; $541A: $01 $02 $00
    ld bc, $0808                                  ; $541D: $01 $08 $08
    ld bc, $2122                                  ; $5420: $01 $22 $21
    dec c                                         ; $5423: $0D
    ld [bc], a                                    ; $5424: $02
    ld bc, $000D                                  ; $5425: $01 $0D $00
    nop                                           ; $5428: $00
    nop                                           ; $5429: $00
    ld bc, $0808                                  ; $542A: $01 $08 $08
    inc d                                         ; $542D: $14
    dec b                                         ; $542E: $05
    ld b, $20                                     ; $542F: $06 $20
    ld [bc], a                                    ; $5431: $02
    ld bc, $0801                                  ; $5432: $01 $01 $08
    ld [$2201], sp                                ; $5435: $08 $01 $22
    ld hl, $0201                                  ; $5438: $21 $01 $02
    ld bc, $0801                                  ; $543B: $01 $01 $08
    ld [$2201], sp                                ; $543E: $08 $01 $22
    ld hl, $020D                                  ; $5441: $21 $0D $02
    ld bc, $000D                                  ; $5444: $01 $0D $00
    nop                                           ; $5447: $00
    nop                                           ; $5448: $00
    ld a, [bc]                                    ; $5449: $0A
    nop                                           ; $544A: $00
    nop                                           ; $544B: $00
    ld bc, $0808                                  ; $544C: $01 $08 $08
    ld bc, $2221                                  ; $544F: $01 $21 $22
    ld bc, $0201                                  ; $5452: $01 $01 $02
    dec c                                         ; $5455: $0D
    ld [$0D08], sp                                ; $5456: $08 $08 $0D
    ld [$0008], sp                                ; $5459: $08 $08 $00
    ld bc, $0201                                  ; $545C: $01 $01 $02
    ld bc, $0808                                  ; $545F: $01 $08 $08
    ld bc, $2221                                  ; $5462: $01 $21 $22
    ld bc, $0201                                  ; $5465: $01 $01 $02
    dec c                                         ; $5468: $0D
    nop                                           ; $5469: $00
    nop                                           ; $546A: $00
    dec c                                         ; $546B: $0D
    nop                                           ; $546C: $00
    nop                                           ; $546D: $00
    nop                                           ; $546E: $00
    add e                                         ; $546F: $83
    add a                                         ; $5470: $87
    ld d, h                                       ; $5471: $54
    ld bc, $0808                                  ; $5472: $01 $08 $08
    ld bc, $0201                                  ; $5475: $01 $01 $02
    ld bc, $0808                                  ; $5478: $01 $08 $08
    ld bc, $2122                                  ; $547B: $01 $22 $21
    ld bc, $0102                                  ; $547E: $01 $02 $01
    dec c                                         ; $5481: $0D
    nop                                           ; $5482: $00
    nop                                           ; $5483: $00
    dec c                                         ; $5484: $0D
    nop                                           ; $5485: $00
    nop                                           ; $5486: $00
    ld bc, $0000                                  ; $5487: $01 $00 $00
    nop                                           ; $548A: $00
    inc b                                         ; $548B: $04
    nop                                           ; $548C: $00
    nop                                           ; $548D: $00
    ld b, $20                                     ; $548E: $06 $20
    jr nz, @+$03                                  ; $5490: $20 $01

    jr z, jr_03F_54BC                             ; $5492: $28 $28

    inc b                                         ; $5494: $04
    ld hl, $0122                                  ; $5495: $21 $22 $01
    ld bc, $4002                                  ; $5498: $01 $02 $40
    nop                                           ; $549B: $00
    nop                                           ; $549C: $00
    ld bc, $0808                                  ; $549D: $01 $08 $08
    ld bc, $2221                                  ; $54A0: $01 $21 $22
    ld bc, $0201                                  ; $54A3: $01 $01 $02
    jr c, jr_03F_54A8                             ; $54A6: $38 $00

jr_03F_54A8:
    nop                                           ; $54A8: $00
    jr c, jr_03F_54AB                             ; $54A9: $38 $00

jr_03F_54AB:
    nop                                           ; $54AB: $00
    nop                                           ; $54AC: $00
    ld a, [bc]                                    ; $54AD: $0A
    nop                                           ; $54AE: $00
    nop                                           ; $54AF: $00
    ld bc, $0808                                  ; $54B0: $01 $08 $08
    ld bc, $2221                                  ; $54B3: $01 $21 $22
    ld bc, $0201                                  ; $54B6: $01 $01 $02
    ld b, b                                       ; $54B9: $40
    nop                                           ; $54BA: $00
    nop                                           ; $54BB: $00

jr_03F_54BC:
    ld [$2828], sp                                ; $54BC: $08 $28 $28
    ld [bc], a                                    ; $54BF: $02
    ld hl, $0122                                  ; $54C0: $21 $22 $01
    ld bc, $3802                                  ; $54C3: $01 $02 $38
    nop                                           ; $54C6: $00
    nop                                           ; $54C7: $00
    jr c, jr_03F_54CA                             ; $54C8: $38 $00

jr_03F_54CA:
    nop                                           ; $54CA: $00
    nop                                           ; $54CB: $00
    db $10                                        ; $54CC: $10
    ld [$0108], sp                                ; $54CD: $08 $08 $01
    ld [hl+], a                                   ; $54D0: $22
    ld hl, $0201                                  ; $54D1: $21 $01 $02
    ld bc, $000D                                  ; $54D4: $01 $0D $00
    nop                                           ; $54D7: $00
    dec c                                         ; $54D8: $0D
    nop                                           ; $54D9: $00
    nop                                           ; $54DA: $00
    nop                                           ; $54DB: $00
    ld [$0808], sp                                ; $54DC: $08 $08 $08
    ld [$2828], sp                                ; $54DF: $08 $28 $28
    inc b                                         ; $54E2: $04
    ld [hl+], a                                   ; $54E3: $22
    ld hl, $0201                                  ; $54E4: $21 $01 $02
    ld bc, $000D                                  ; $54E7: $01 $0D $00
    nop                                           ; $54EA: $00
    dec c                                         ; $54EB: $0D
    nop                                           ; $54EC: $00
    nop                                           ; $54ED: $00
    nop                                           ; $54EE: $00
    ld bc, $2020                                  ; $54EF: $01 $20 $20
    dec b                                         ; $54F2: $05
    nop                                           ; $54F3: $00
    nop                                           ; $54F4: $00
    ld bc, $2020                                  ; $54F5: $01 $20 $20
    dec b                                         ; $54F8: $05
    nop                                           ; $54F9: $00
    nop                                           ; $54FA: $00
    ld a, [bc]                                    ; $54FB: $0A
    jr nz, @+$22                                  ; $54FC: $20 $20

    dec c                                         ; $54FE: $0D
    nop                                           ; $54FF: $00
    nop                                           ; $5500: $00
    dec c                                         ; $5501: $0D
    nop                                           ; $5502: $00
    nop                                           ; $5503: $00
    nop                                           ; $5504: $00
    ld bc, $0808                                  ; $5505: $01 $08 $08
    inc d                                         ; $5508: $14
    inc b                                         ; $5509: $04
    inc b                                         ; $550A: $04
    inc c                                         ; $550B: $0C
    ld [bc], a                                    ; $550C: $02
    ld bc, $0801                                  ; $550D: $01 $01 $08
    ld [$2201], sp                                ; $5510: $08 $01 $22
    ld hl, $0201                                  ; $5513: $21 $01 $02
    ld bc, $0801                                  ; $5516: $01 $01 $08
    ld [$2201], sp                                ; $5519: $08 $01 $22
    ld hl, $0201                                  ; $551C: $21 $01 $02
    ld bc, $000D                                  ; $551F: $01 $0D $00
    nop                                           ; $5522: $00
    dec c                                         ; $5523: $0D
    nop                                           ; $5524: $00
    nop                                           ; $5525: $00
    nop                                           ; $5526: $00
    ld [$2828], sp                                ; $5527: $08 $28 $28
    inc b                                         ; $552A: $04
    ld [hl+], a                                   ; $552B: $22
    ld hl, $0201                                  ; $552C: $21 $01 $02
    ld bc, $000D                                  ; $552F: $01 $0D $00
    nop                                           ; $5532: $00
    dec c                                         ; $5533: $0D
    nop                                           ; $5534: $00
    nop                                           ; $5535: $00
    nop                                           ; $5536: $00
    ld bc, $0808                                  ; $5537: $01 $08 $08
    ld bc, $1112                                  ; $553A: $01 $12 $11
    ld bc, $0102                                  ; $553D: $01 $02 $01
    dec c                                         ; $5540: $0D
    nop                                           ; $5541: $00
    nop                                           ; $5542: $00
    dec c                                         ; $5543: $0D
    nop                                           ; $5544: $00
    nop                                           ; $5545: $00
    nop                                           ; $5546: $00
    ld bc, $0808                                  ; $5547: $01 $08 $08
    inc d                                         ; $554A: $14
    inc b                                         ; $554B: $04
    inc b                                         ; $554C: $04
    inc c                                         ; $554D: $0C
    ld [bc], a                                    ; $554E: $02
    ld bc, $0801                                  ; $554F: $01 $01 $08
    ld [$2101], sp                                ; $5552: $08 $01 $21
    ld [hl+], a                                   ; $5555: $22
    ld bc, $0201                                  ; $5556: $01 $01 $02
    ld bc, $0808                                  ; $5559: $01 $08 $08
    ld bc, $2221                                  ; $555C: $01 $21 $22
    ld bc, $0201                                  ; $555F: $01 $01 $02
    dec c                                         ; $5562: $0D
    nop                                           ; $5563: $00
    nop                                           ; $5564: $00
    dec c                                         ; $5565: $0D
    nop                                           ; $5566: $00
    nop                                           ; $5567: $00
    nop                                           ; $5568: $00
    ld bc, $0808                                  ; $5569: $01 $08 $08
    inc e                                         ; $556C: $1C
    ld b, $05                                     ; $556D: $06 $05
    ld bc, $4040                                  ; $556F: $01 $40 $40
    ld bc, $0000                                  ; $5572: $01 $00 $00
    ld bc, $4040                                  ; $5575: $01 $40 $40
    ld bc, $0000                                  ; $5578: $01 $00 $00
    jr nc, jr_03F_557D                            ; $557B: $30 $00

jr_03F_557D:
    nop                                           ; $557D: $00
    dec c                                         ; $557E: $0D
    nop                                           ; $557F: $00
    nop                                           ; $5580: $00
    nop                                           ; $5581: $00
    ld bc, $0102                                  ; $5582: $01 $02 $01
    ld bc, $0808                                  ; $5585: $01 $08 $08
    ld bc, $2221                                  ; $5588: $01 $21 $22
    ld bc, $0201                                  ; $558B: $01 $01 $02
    dec c                                         ; $558E: $0D
    nop                                           ; $558F: $00
    nop                                           ; $5590: $00
    dec c                                         ; $5591: $0D
    nop                                           ; $5592: $00
    nop                                           ; $5593: $00
    nop                                           ; $5594: $00
    ld bc, $0102                                  ; $5595: $01 $02 $01
    ld bc, $0808                                  ; $5598: $01 $08 $08
    ld bc, $1211                                  ; $559B: $01 $11 $12
    ld bc, $0201                                  ; $559E: $01 $01 $02
    dec c                                         ; $55A1: $0D
    nop                                           ; $55A2: $00
    nop                                           ; $55A3: $00
    dec c                                         ; $55A4: $0D
    nop                                           ; $55A5: $00
    nop                                           ; $55A6: $00
    nop                                           ; $55A7: $00
    inc b                                         ; $55A8: $04
    nop                                           ; $55A9: $00
    nop                                           ; $55AA: $00
    ld b, $20                                     ; $55AB: $06 $20
    jr nz, @+$03                                  ; $55AD: $20 $01

    jr z, jr_03F_55D9                             ; $55AF: $28 $28

    inc bc                                        ; $55B1: $03
    ld hl, $0122                                  ; $55B2: $21 $22 $01
    ld bc, $0D02                                  ; $55B5: $01 $02 $0D
    nop                                           ; $55B8: $00
    nop                                           ; $55B9: $00
    dec c                                         ; $55BA: $0D
    nop                                           ; $55BB: $00
    nop                                           ; $55BC: $00
    nop                                           ; $55BD: $00
    add e                                         ; $55BE: $83
    call c, $8255                                 ; $55BF: $DC $55 $82
    sub $55                                       ; $55C2: $D6 $55
    ld bc, $0000                                  ; $55C4: $01 $00 $00
    ld bc, $0808                                  ; $55C7: $01 $08 $08
    ld bc, $0000                                  ; $55CA: $01 $00 $00
    ld bc, $2828                                  ; $55CD: $01 $28 $28
    ld bc, $0808                                  ; $55D0: $01 $08 $08
    ccf                                           ; $55D3: $3F
    ld a, [bc]                                    ; $55D4: $0A
    add hl, bc                                    ; $55D5: $09
    ld bc, $0808                                  ; $55D6: $01 $08 $08

jr_03F_55D9:
    ld bc, $0201                                  ; $55D9: $01 $01 $02
    ld bc, $0808                                  ; $55DC: $01 $08 $08
    ld bc, $2122                                  ; $55DF: $01 $22 $21
    ld bc, $0102                                  ; $55E2: $01 $02 $01
    dec c                                         ; $55E5: $0D
    nop                                           ; $55E6: $00
    nop                                           ; $55E7: $00
    dec c                                         ; $55E8: $0D
    nop                                           ; $55E9: $00
    nop                                           ; $55EA: $00
    nop                                           ; $55EB: $00
    ld bc, $0201                                  ; $55EC: $01 $01 $02
    ld bc, $0808                                  ; $55EF: $01 $08 $08
    ld bc, $1211                                  ; $55F2: $01 $11 $12
    ld bc, $0201                                  ; $55F5: $01 $01 $02
    dec c                                         ; $55F8: $0D
    nop                                           ; $55F9: $00
    nop                                           ; $55FA: $00
    dec c                                         ; $55FB: $0D
    nop                                           ; $55FC: $00
    nop                                           ; $55FD: $00
    nop                                           ; $55FE: $00
    ld bc, $0808                                  ; $55FF: $01 $08 $08
    inc d                                         ; $5602: $14
    ld b, $05                                     ; $5603: $06 $05
    inc d                                         ; $5605: $14
    ld bc, $0102                                  ; $5606: $01 $02 $01
    ld b, b                                       ; $5609: $40
    ld b, b                                       ; $560A: $40
    ld bc, $0000                                  ; $560B: $01 $00 $00
    stop                                          ; $560E: $10 $00
    nop                                           ; $5610: $00
    ld bc, $0808                                  ; $5611: $01 $08 $08
    ld bc, $0201                                  ; $5614: $01 $01 $02
    ld bc, $2221                                  ; $5617: $01 $21 $22
    ld bc, $0201                                  ; $561A: $01 $01 $02
    jr nc, jr_03F_561F                            ; $561D: $30 $00

jr_03F_561F:
    nop                                           ; $561F: $00
    dec c                                         ; $5620: $0D
    nop                                           ; $5621: $00
    nop                                           ; $5622: $00
    nop                                           ; $5623: $00
    add h                                         ; $5624: $84
    dec l                                         ; $5625: $2D
    ld d, [hl]                                    ; $5626: $56
    ld bc, $4040                                  ; $5627: $01 $40 $40
    ld bc, $0000                                  ; $562A: $01 $00 $00
    ld bc, $0000                                  ; $562D: $01 $00 $00
    nop                                           ; $5630: $00
    add d                                         ; $5631: $82
    ld b, e                                       ; $5632: $43
    ld d, [hl]                                    ; $5633: $56
    ld bc, $0000                                  ; $5634: $01 $00 $00
    ld bc, $0808                                  ; $5637: $01 $08 $08
    ld bc, $0000                                  ; $563A: $01 $00 $00
    ld bc, $2828                                  ; $563D: $01 $28 $28
    ld bc, $0808                                  ; $5640: $01 $08 $08
    ld bc, $0000                                  ; $5643: $01 $00 $00
    nop                                           ; $5646: $00
    ld bc, $1010                                  ; $5647: $01 $10 $10
    dec b                                         ; $564A: $05
    nop                                           ; $564B: $00
    nop                                           ; $564C: $00
    ld bc, $1010                                  ; $564D: $01 $10 $10
    dec b                                         ; $5650: $05
    nop                                           ; $5651: $00
    nop                                           ; $5652: $00
    ld a, [bc]                                    ; $5653: $0A
    db $10                                        ; $5654: $10
    db $10                                        ; $5655: $10
    dec c                                         ; $5656: $0D
    nop                                           ; $5657: $00
    nop                                           ; $5658: $00
    dec c                                         ; $5659: $0D
    nop                                           ; $565A: $00
    nop                                           ; $565B: $00
    nop                                           ; $565C: $00
    ld bc, $0102                                  ; $565D: $01 $02 $01
    ld bc, $090A                                  ; $5660: $01 $0A $09
    ld bc, $0000                                  ; $5663: $01 $00 $00
    nop                                           ; $5666: $00
    jr jr_03F_566A                                ; $5667: $18 $01

    ld [bc], a                                    ; $5669: $02

jr_03F_566A:
    ld a, [bc]                                    ; $566A: $0A
    ld de, $0112                                  ; $566B: $11 $12 $01
    ld bc, $0002                                  ; $566E: $01 $02 $00
    ld bc, $1818                                  ; $5671: $01 $18 $18
    dec b                                         ; $5674: $05
    ld [$0108], sp                                ; $5675: $08 $08 $01
    jr @+$1A                                      ; $5678: $18 $18

    dec b                                         ; $567A: $05
    ld [$0A08], sp                                ; $567B: $08 $08 $0A
    jr @+$1A                                      ; $567E: $18 $18

    dec c                                         ; $5680: $0D
    ld [$0D08], sp                                ; $5681: $08 $08 $0D
    ld [$0008], sp                                ; $5684: $08 $08 $00
    ld bc, $0000                                  ; $5687: $01 $00 $00
    ld bc, $2020                                  ; $568A: $01 $20 $20
    ld bc, $0000                                  ; $568D: $01 $00 $00
    ld bc, $2020                                  ; $5690: $01 $20 $20
    ld bc, $0000                                  ; $5693: $01 $00 $00
    ld bc, $2020                                  ; $5696: $01 $20 $20
    ld bc, $0000                                  ; $5699: $01 $00 $00
    ld bc, $2020                                  ; $569C: $01 $20 $20
    ld bc, $0000                                  ; $569F: $01 $00 $00
    nop                                           ; $56A2: $00
    add l                                         ; $56A3: $85
    xor c                                         ; $56A4: $A9
    ld d, [hl]                                    ; $56A5: $56
    ld bc, $4040                                  ; $56A6: $01 $40 $40
    ld bc, $0000                                  ; $56A9: $01 $00 $00
    nop                                           ; $56AC: $00
    ld bc, $0201                                  ; $56AD: $01 $01 $02
    ld bc, $0808                                  ; $56B0: $01 $08 $08
    ld bc, $1112                                  ; $56B3: $01 $12 $11
    ld bc, $0102                                  ; $56B6: $01 $02 $01
    dec c                                         ; $56B9: $0D
    nop                                           ; $56BA: $00
    nop                                           ; $56BB: $00
    dec c                                         ; $56BC: $0D
    nop                                           ; $56BD: $00
    nop                                           ; $56BE: $00
    nop                                           ; $56BF: $00
    add [hl]                                      ; $56C0: $86
    add $56                                       ; $56C1: $C6 $56
    ld bc, $4040                                  ; $56C3: $01 $40 $40
    ld bc, $0000                                  ; $56C6: $01 $00 $00
    nop                                           ; $56C9: $00
    add a                                         ; $56CA: $87
    ret nc                                        ; $56CB: $D0

    ld d, [hl]                                    ; $56CC: $56
    ld bc, $4040                                  ; $56CD: $01 $40 $40
    ld bc, $0000                                  ; $56D0: $01 $00 $00
    nop                                           ; $56D3: $00
    add e                                         ; $56D4: $83
    add hl, de                                    ; $56D5: $19
    ld d, a                                       ; $56D6: $57
    ld bc, $0808                                  ; $56D7: $01 $08 $08
    ld bc, $0201                                  ; $56DA: $01 $01 $02
    ld bc, $0808                                  ; $56DD: $01 $08 $08
    ld bc, $2122                                  ; $56E0: $01 $22 $21
    ld bc, $0102                                  ; $56E3: $01 $02 $01
    ld d, b                                       ; $56E6: $50
    nop                                           ; $56E7: $00
    nop                                           ; $56E8: $00
    adc b                                         ; $56E9: $88
    add hl, de                                    ; $56EA: $19
    ld d, a                                       ; $56EB: $57
    jr nz, jr_03F_56EE                            ; $56EC: $20 $00

jr_03F_56EE:
    nop                                           ; $56EE: $00
    adc b                                         ; $56EF: $88
    add hl, de                                    ; $56F0: $19
    ld d, a                                       ; $56F1: $57
    jr nz, jr_03F_56F4                            ; $56F2: $20 $00

jr_03F_56F4:
    nop                                           ; $56F4: $00
    adc b                                         ; $56F5: $88
    add hl, de                                    ; $56F6: $19
    ld d, a                                       ; $56F7: $57
    jr nz, jr_03F_56FA                            ; $56F8: $20 $00

jr_03F_56FA:
    nop                                           ; $56FA: $00
    adc b                                         ; $56FB: $88
    add hl, de                                    ; $56FC: $19
    ld d, a                                       ; $56FD: $57
    jr nz, jr_03F_5700                            ; $56FE: $20 $00

jr_03F_5700:
    nop                                           ; $5700: $00
    adc b                                         ; $5701: $88
    add hl, de                                    ; $5702: $19
    ld d, a                                       ; $5703: $57
    ld [$0000], sp                                ; $5704: $08 $00 $00
    ld [$0102], sp                                ; $5707: $08 $02 $01
    ld bc, $0000                                  ; $570A: $01 $00 $00
    ld [$0102], sp                                ; $570D: $08 $02 $01
    jr jr_03F_5712                                ; $5710: $18 $00

jr_03F_5712:
    nop                                           ; $5712: $00
    ld bc, $7070                                  ; $5713: $01 $70 $70
    jr c, jr_03F_5720                             ; $5716: $38 $08

    ld [$0001], sp                                ; $5718: $08 $01 $00
    nop                                           ; $571B: $00
    nop                                           ; $571C: $00
    adc c                                         ; $571D: $89
    dec [hl]                                      ; $571E: $35
    ld d, a                                       ; $571F: $57

jr_03F_5720:
    ld bc, $0808                                  ; $5720: $01 $08 $08
    ld bc, $0102                                  ; $5723: $01 $02 $01
    ld bc, $0808                                  ; $5726: $01 $08 $08
    ld bc, $1211                                  ; $5729: $01 $11 $12
    ld bc, $0201                                  ; $572C: $01 $01 $02
    dec c                                         ; $572F: $0D
    nop                                           ; $5730: $00
    nop                                           ; $5731: $00
    dec c                                         ; $5732: $0D
    nop                                           ; $5733: $00
    nop                                           ; $5734: $00
    ld bc, $0000                                  ; $5735: $01 $00 $00
    nop                                           ; $5738: $00
    ld b, $21                                     ; $5739: $06 $21
    ld [hl+], a                                   ; $573B: $22
    ld bc, $2828                                  ; $573C: $01 $28 $28
    inc bc                                        ; $573F: $03
    ld hl, $0122                                  ; $5740: $21 $22 $01
    ld bc, $0D02                                  ; $5743: $01 $02 $0D
    nop                                           ; $5746: $00
    nop                                           ; $5747: $00
    dec c                                         ; $5748: $0D
    nop                                           ; $5749: $00
    nop                                           ; $574A: $00
    nop                                           ; $574B: $00
    adc d                                         ; $574C: $8A
    ld d, d                                       ; $574D: $52
    ld d, a                                       ; $574E: $57
    ld bc, $4040                                  ; $574F: $01 $40 $40
    ld bc, $0000                                  ; $5752: $01 $00 $00
    nop                                           ; $5755: $00
    adc e                                         ; $5756: $8B
    ld e, h                                       ; $5757: $5C
    ld d, a                                       ; $5758: $57
    ld bc, $4040                                  ; $5759: $01 $40 $40
    ld bc, $0000                                  ; $575C: $01 $00 $00
    nop                                           ; $575F: $00
    ld bc, $0102                                  ; $5760: $01 $02 $01
    rlca                                          ; $5763: $07
    jr z, @+$2A                                   ; $5764: $28 $28

    inc b                                         ; $5766: $04
    ld hl, $0122                                  ; $5767: $21 $22 $01
    ld [bc], a                                    ; $576A: $02
    ld bc, $000D                                  ; $576B: $01 $0D $00
    nop                                           ; $576E: $00
    dec c                                         ; $576F: $0D
    nop                                           ; $5770: $00
    nop                                           ; $5771: $00
    nop                                           ; $5772: $00
    ld a, [bc]                                    ; $5773: $0A
    nop                                           ; $5774: $00
    nop                                           ; $5775: $00
    ld bc, $0808                                  ; $5776: $01 $08 $08
    ld bc, $1211                                  ; $5779: $01 $11 $12
    ld bc, $0201                                  ; $577C: $01 $01 $02
    dec c                                         ; $577F: $0D
    ld [$0D08], sp                                ; $5780: $08 $08 $0D
    ld [$0008], sp                                ; $5783: $08 $08 $00
    ld a, [bc]                                    ; $5786: $0A
    nop                                           ; $5787: $00
    nop                                           ; $5788: $00
    ld bc, $0102                                  ; $5789: $01 $02 $01
    ld bc, $0808                                  ; $578C: $01 $08 $08
    ld bc, $1211                                  ; $578F: $01 $11 $12
    ld bc, $0201                                  ; $5792: $01 $01 $02
    dec c                                         ; $5795: $0D
    nop                                           ; $5796: $00
    nop                                           ; $5797: $00
    dec c                                         ; $5798: $0D
    nop                                           ; $5799: $00
    nop                                           ; $579A: $00
    nop                                           ; $579B: $00
    ld [de], a                                    ; $579C: $12
    nop                                           ; $579D: $00
    nop                                           ; $579E: $00
    ld bc, $0102                                  ; $579F: $01 $02 $01
    ld bc, $0808                                  ; $57A2: $01 $08 $08
    ld bc, $2221                                  ; $57A5: $01 $21 $22
    ld bc, $0201                                  ; $57A8: $01 $01 $02
    dec c                                         ; $57AB: $0D

jr_03F_57AC:
    nop                                           ; $57AC: $00
    nop                                           ; $57AD: $00
    dec c                                         ; $57AE: $0D
    nop                                           ; $57AF: $00
    nop                                           ; $57B0: $00
    nop                                           ; $57B1: $00
    ld a, [bc]                                    ; $57B2: $0A
    nop                                           ; $57B3: $00
    nop                                           ; $57B4: $00
    ld bc, $0808                                  ; $57B5: $01 $08 $08
    ld bc, $2122                                  ; $57B8: $01 $22 $21
    dec c                                         ; $57BB: $0D
    ld [bc], a                                    ; $57BC: $02
    ld bc, $000D                                  ; $57BD: $01 $0D $00
    nop                                           ; $57C0: $00
    nop                                           ; $57C1: $00
    ld a, [bc]                                    ; $57C2: $0A
    nop                                           ; $57C3: $00
    nop                                           ; $57C4: $00
    ld [$2828], sp                                ; $57C5: $08 $28 $28
    inc b                                         ; $57C8: $04
    ld [hl+], a                                   ; $57C9: $22
    ld hl, $0201                                  ; $57CA: $21 $01 $02
    ld bc, $000D                                  ; $57CD: $01 $0D $00
    nop                                           ; $57D0: $00
    dec c                                         ; $57D1: $0D
    nop                                           ; $57D2: $00
    nop                                           ; $57D3: $00
    nop                                           ; $57D4: $00
    ld b, b                                       ; $57D5: $40

jr_03F_57D6:
    ld bc, $1002                                  ; $57D6: $01 $02 $10
    nop                                           ; $57D9: $00
    nop                                           ; $57DA: $00
    ld bc, $2020                                  ; $57DB: $01 $20 $20
    ld b, $00                                     ; $57DE: $06 $00
    nop                                           ; $57E0: $00
    ld bc, $0102                                  ; $57E1: $01 $02 $01
    ld bc, $0808                                  ; $57E4: $01 $08 $08
    ld bc, $2221                                  ; $57E7: $01 $21 $22
    ld [$0201], sp                                ; $57EA: $08 $01 $02
    nop                                           ; $57ED: $00
    jr z, jr_03F_57FF                             ; $57EE: $28 $0F

    ld e, b                                       ; $57F0: $58
    inc a                                         ; $57F1: $3C
    sub b                                         ; $57F2: $90
    cpl                                           ; $57F3: $2F
    ld e, b                                       ; $57F4: $58
    ld c, a                                       ; $57F5: $4F
    ld e, b                                       ; $57F6: $58
    jr z, @+$62                                   ; $57F7: $28 $60

    ld l, a                                       ; $57F9: $6F
    ld e, b                                       ; $57FA: $58
    adc a                                         ; $57FB: $8F
    ld e, b                                       ; $57FC: $58
    xor a                                         ; $57FD: $AF
    ld e, b                                       ; $57FE: $58

jr_03F_57FF:
    rst RST_08                                    ; $57FF: $CF
    ld e, b                                       ; $5800: $58
    jr z, jr_03F_5853                             ; $5801: $28 $50

    rst RST_28                                    ; $5803: $EF
    ld e, b                                       ; $5804: $58
    rrca                                          ; $5805: $0F
    ld e, c                                       ; $5806: $59
    cpl                                           ; $5807: $2F
    ld e, c                                       ; $5808: $59
    ld c, a                                       ; $5809: $4F
    ld e, c                                       ; $580A: $59
    ld [hl], c                                    ; $580B: $71
    ld e, c                                       ; $580C: $59
    sub c                                         ; $580D: $91
    ld e, c                                       ; $580E: $59
    ldh a, [$FF32]                                ; $580F: $F0 $32
    ldh [rNR50], a                                ; $5811: $E0 $24
    ret nc                                        ; $5813: $D0

    jr nz, jr_03F_57D6                            ; $5814: $20 $C0

    inc h                                         ; $5816: $24
    or b                                          ; $5817: $B0
    jr nz, @-$5E                                  ; $5818: $20 $A0

    jr nz, jr_03F_57AC                            ; $581A: $20 $90

    inc h                                         ; $581C: $24
    add b                                         ; $581D: $80
    jr nz, @+$72                                  ; $581E: $20 $70

    inc hl                                        ; $5820: $23
    ld h, b                                       ; $5821: $60
    ld de, $2050                                  ; $5822: $11 $50 $20
    ld b, b                                       ; $5825: $40
    inc de                                        ; $5826: $13
    jr nc, jr_03F_583A                            ; $5827: $30 $11

    jr nz, jr_03F_583E                            ; $5829: $20 $13

    db $10                                        ; $582B: $10
    inc de                                        ; $582C: $13
    nop                                           ; $582D: $00
    nop                                           ; $582E: $00
    ldh a, [rTIMA]                                ; $582F: $F0 $05
    ldh [rTIMA], a                                ; $5831: $E0 $05
    ret nc                                        ; $5833: $D0

    dec b                                         ; $5834: $05
    ret nz                                        ; $5835: $C0

    dec b                                         ; $5836: $05
    or b                                          ; $5837: $B0
    dec b                                         ; $5838: $05
    and b                                         ; $5839: $A0

jr_03F_583A:
    dec b                                         ; $583A: $05
    sub b                                         ; $583B: $90
    dec b                                         ; $583C: $05
    add b                                         ; $583D: $80

jr_03F_583E:
    ld b, $70                                     ; $583E: $06 $70
    ld b, $60                                     ; $5840: $06 $60
    ld b, $50                                     ; $5842: $06 $50
    ld b, $40                                     ; $5844: $06 $40
    ld b, $30                                     ; $5846: $06 $30
    nop                                           ; $5848: $00
    jr nz, jr_03F_5851                            ; $5849: $20 $06

    stop                                          ; $584B: $10 $00
    nop                                           ; $584D: $00
    nop                                           ; $584E: $00
    ldh a, [rNR42]                                ; $584F: $F0 $21

jr_03F_5851:
    ldh [rNR43], a                                ; $5851: $E0 $22

jr_03F_5853:
    ret nc                                        ; $5853: $D0

    cpl                                           ; $5854: $2F
    ret nz                                        ; $5855: $C0

    ld [hl+], a                                   ; $5856: $22
    or b                                          ; $5857: $B0
    ld hl, $06A0                                  ; $5858: $21 $A0 $06
    sub b                                         ; $585B: $90
    cpl                                           ; $585C: $2F
    add b                                         ; $585D: $80
    ld [hl+], a                                   ; $585E: $22
    ld [hl], b                                    ; $585F: $70
    ld b, $60                                     ; $5860: $06 $60
    ld [hl+], a                                   ; $5862: $22
    ld d, b                                       ; $5863: $50
    inc c                                         ; $5864: $0C
    ld b, b                                       ; $5865: $40
    ld b, $30                                     ; $5866: $06 $30
    inc c                                         ; $5868: $0C
    jr nz, jr_03F_586C                            ; $5869: $20 $01

    db $10                                        ; $586B: $10

jr_03F_586C:
    inc c                                         ; $586C: $0C
    nop                                           ; $586D: $00
    nop                                           ; $586E: $00
    ldh a, [rTIMA]                                ; $586F: $F0 $05
    ldh [rTIMA], a                                ; $5871: $E0 $05
    ret nc                                        ; $5873: $D0

    dec b                                         ; $5874: $05
    ret nz                                        ; $5875: $C0

    dec b                                         ; $5876: $05
    or b                                          ; $5877: $B0
    dec b                                         ; $5878: $05
    and b                                         ; $5879: $A0
    dec b                                         ; $587A: $05
    sub b                                         ; $587B: $90
    dec b                                         ; $587C: $05
    add b                                         ; $587D: $80
    dec b                                         ; $587E: $05
    ld [hl], b                                    ; $587F: $70
    dec b                                         ; $5880: $05
    ld h, b                                       ; $5881: $60
    dec b                                         ; $5882: $05
    ld d, b                                       ; $5883: $50
    nop                                           ; $5884: $00
    ld b, b                                       ; $5885: $40
    dec b                                         ; $5886: $05
    jr nc, jr_03F_5889                            ; $5887: $30 $00

jr_03F_5889:
    jr nz, @+$07                                  ; $5889: $20 $05

    db $10                                        ; $588B: $10
    dec b                                         ; $588C: $05
    nop                                           ; $588D: $00
    nop                                           ; $588E: $00
    ldh a, [rTMA]                                 ; $588F: $F0 $06
    ldh [rTMA], a                                 ; $5891: $E0 $06
    ret nc                                        ; $5893: $D0

    ld b, $C0                                     ; $5894: $06 $C0
    ld b, $B0                                     ; $5896: $06 $B0
    ld b, $A0                                     ; $5898: $06 $A0
    ld b, $90                                     ; $589A: $06 $90
    ld b, $80                                     ; $589C: $06 $80

jr_03F_589E:
    ld b, $70                                     ; $589E: $06 $70
    ld b, $60                                     ; $58A0: $06 $60
    ld b, $50                                     ; $58A2: $06 $50
    ld b, $40                                     ; $58A4: $06 $40
    nop                                           ; $58A6: $00
    jr nc, jr_03F_58AF                            ; $58A7: $30 $06

    jr nz, jr_03F_58B1                            ; $58A9: $20 $06

    stop                                          ; $58AB: $10 $00
    nop                                           ; $58AD: $00
    nop                                           ; $58AE: $00

jr_03F_58AF:
    ldh a, [rTIMA]                                ; $58AF: $F0 $05

jr_03F_58B1:
    ldh [rTIMA], a                                ; $58B1: $E0 $05
    ret nc                                        ; $58B3: $D0

    dec b                                         ; $58B4: $05
    ret nz                                        ; $58B5: $C0

    dec b                                         ; $58B6: $05
    or b                                          ; $58B7: $B0
    dec b                                         ; $58B8: $05
    and b                                         ; $58B9: $A0
    dec b                                         ; $58BA: $05
    sub b                                         ; $58BB: $90
    dec b                                         ; $58BC: $05
    add b                                         ; $58BD: $80
    jr nz, @+$72                                  ; $58BE: $20 $70

    dec b                                         ; $58C0: $05
    ld h, b                                       ; $58C1: $60
    dec b                                         ; $58C2: $05
    ld d, b                                       ; $58C3: $50
    db $10                                        ; $58C4: $10
    ld b, b                                       ; $58C5: $40
    dec b                                         ; $58C6: $05
    jr nc, jr_03F_58CE                            ; $58C7: $30 $05

    jr nz, jr_03F_58CB                            ; $58C9: $20 $00

jr_03F_58CB:
    db $10                                        ; $58CB: $10
    dec b                                         ; $58CC: $05
    nop                                           ; $58CD: $00

jr_03F_58CE:
    inc b                                         ; $58CE: $04
    ldh a, [rTMA]                                 ; $58CF: $F0 $06
    ldh [rTMA], a                                 ; $58D1: $E0 $06
    ret nc                                        ; $58D3: $D0

    dec b                                         ; $58D4: $05
    ret nz                                        ; $58D5: $C0

    ld b, $B0                                     ; $58D6: $06 $B0
    ld b, $A0                                     ; $58D8: $06 $A0
    jr nz, jr_03F_586C                            ; $58DA: $20 $90

    dec b                                         ; $58DC: $05
    add b                                         ; $58DD: $80
    ld b, $70                                     ; $58DE: $06 $70
    dec b                                         ; $58E0: $05
    ld h, b                                       ; $58E1: $60
    ld b, $50                                     ; $58E2: $06 $50
    ld b, $40                                     ; $58E4: $06 $40
    dec b                                         ; $58E6: $05
    jr nc, @+$06                                  ; $58E7: $30 $04

    jr nz, jr_03F_58F1                            ; $58E9: $20 $06

    db $10                                        ; $58EB: $10

jr_03F_58EC:
    ld b, $00                                     ; $58EC: $06 $00
    nop                                           ; $58EE: $00
    ldh a, [rNR14]                                ; $58EF: $F0 $14

jr_03F_58F1:
    ldh [rNR44], a                                ; $58F1: $E0 $23
    ret nc                                        ; $58F3: $D0

    add hl, hl                                    ; $58F4: $29
    ret nz                                        ; $58F5: $C0

jr_03F_58F6:
    inc d                                         ; $58F6: $14
    or b                                          ; $58F7: $B0
    add hl, hl                                    ; $58F8: $29
    and b                                         ; $58F9: $A0
    inc d                                         ; $58FA: $14
    sub b                                         ; $58FB: $90
    nop                                           ; $58FC: $00
    add b                                         ; $58FD: $80
    inc hl                                        ; $58FE: $23
    ld [hl], b                                    ; $58FF: $70
    inc d                                         ; $5900: $14
    ld h, b                                       ; $5901: $60
    db $10                                        ; $5902: $10
    ld d, b                                       ; $5903: $50
    nop                                           ; $5904: $00
    ld b, b                                       ; $5905: $40
    db $10                                        ; $5906: $10
    jr nc, jr_03F_590C                            ; $5907: $30 $03

    jr nz, jr_03F_590D                            ; $5909: $20 $02

    db $10                                        ; $590B: $10

jr_03F_590C:
    inc bc                                        ; $590C: $03

jr_03F_590D:
    nop                                           ; $590D: $00
    ld [bc], a                                    ; $590E: $02
    ldh a, [rNR44]                                ; $590F: $F0 $23
    ldh [rNR44], a                                ; $5911: $E0 $23
    ret nc                                        ; $5913: $D0

    inc hl                                        ; $5914: $23
    ret nz                                        ; $5915: $C0

jr_03F_5916:
    dec bc                                        ; $5916: $0B
    or b                                          ; $5917: $B0
    inc hl                                        ; $5918: $23
    and b                                         ; $5919: $A0
    inc hl                                        ; $591A: $23
    sub b                                         ; $591B: $90
    jr nz, jr_03F_589E                            ; $591C: $20 $80

    inc hl                                        ; $591E: $23
    ld [hl], b                                    ; $591F: $70
    nop                                           ; $5920: $00
    ld h, b                                       ; $5921: $60
    dec bc                                        ; $5922: $0B
    ld d, b                                       ; $5923: $50
    inc hl                                        ; $5924: $23
    ld b, b                                       ; $5925: $40
    dec b                                         ; $5926: $05
    jr nc, jr_03F_592C                            ; $5927: $30 $03

    jr nz, jr_03F_592D                            ; $5929: $20 $02

    db $10                                        ; $592B: $10

jr_03F_592C:
    inc bc                                        ; $592C: $03

jr_03F_592D:
    nop                                           ; $592D: $00
    ld [bc], a                                    ; $592E: $02
    ldh a, [$FF2B]                                ; $592F: $F0 $2B
    ldh [rNR24], a                                ; $5931: $E0 $19
    ret nc                                        ; $5933: $D0

    jr nz, jr_03F_58F6                            ; $5934: $20 $C0

    jr @-$4E                                      ; $5936: $18 $B0

    inc hl                                        ; $5938: $23
    and b                                         ; $5939: $A0
    add hl, de                                    ; $593A: $19
    sub b                                         ; $593B: $90
    inc hl                                        ; $593C: $23
    add b                                         ; $593D: $80
    add hl, de                                    ; $593E: $19
    ld [hl], b                                    ; $593F: $70
    db $10                                        ; $5940: $10
    ld h, b                                       ; $5941: $60
    inc hl                                        ; $5942: $23
    ld d, b                                       ; $5943: $50
    db $10                                        ; $5944: $10
    ld b, b                                       ; $5945: $40
    ld a, [bc]                                    ; $5946: $0A
    jr nc, jr_03F_594D                            ; $5947: $30 $04

    jr nz, jr_03F_594D                            ; $5949: $20 $02

    db $10                                        ; $594B: $10
    inc b                                         ; $594C: $04

jr_03F_594D:
    nop                                           ; $594D: $00
    ld [bc], a                                    ; $594E: $02
    ldh a, [rNR41]                                ; $594F: $F0 $20
    ldh [rNR44], a                                ; $5951: $E0 $23
    ret nc                                        ; $5953: $D0

    jr nz, jr_03F_5916                            ; $5954: $20 $C0

    dec bc                                        ; $5956: $0B
    or b                                          ; $5957: $B0
    nop                                           ; $5958: $00
    and b                                         ; $5959: $A0
    jr z, jr_03F_58EC                             ; $595A: $28 $90

    dec bc                                        ; $595C: $0B
    add b                                         ; $595D: $80
    inc hl                                        ; $595E: $23
    ld [hl], b                                    ; $595F: $70
    add hl, bc                                    ; $5960: $09
    ld h, b                                       ; $5961: $60
    jr z, jr_03F_59B4                             ; $5962: $28 $50

    inc hl                                        ; $5964: $23
    ld b, b                                       ; $5965: $40
    dec bc                                        ; $5966: $0B
    jr nc, jr_03F_5990                            ; $5967: $30 $27

    jr nz, jr_03F_596E                            ; $5969: $20 $03

    db $10                                        ; $596B: $10
    ld [bc], a                                    ; $596C: $02
    nop                                           ; $596D: $00

jr_03F_596E:
    inc bc                                        ; $596E: $03

jr_03F_596F:
    nop                                           ; $596F: $00
    ld [bc], a                                    ; $5970: $02
    ldh a, [rNR52]                                ; $5971: $F0 $26
    ldh [$FF08], a                                ; $5973: $E0 $08
    ret nc                                        ; $5975: $D0

    dec h                                         ; $5976: $25
    ret nz                                        ; $5977: $C0

    ld [$26B0], sp                                ; $5978: $08 $B0 $26
    and b                                         ; $597B: $A0
    ld [$0990], sp                                ; $597C: $08 $90 $09
    add b                                         ; $597F: $80
    inc hl                                        ; $5980: $23
    ld [hl], b                                    ; $5981: $70
    ld h, $60                                     ; $5982: $26 $60
    ld [$0450], sp                                ; $5984: $08 $50 $04
    ld b, b                                       ; $5987: $40
    add hl, bc                                    ; $5988: $09
    jr nc, jr_03F_598E                            ; $5989: $30 $03

    jr nz, jr_03F_598F                            ; $598B: $20 $02

    db $10                                        ; $598D: $10

jr_03F_598E:
    inc bc                                        ; $598E: $03

jr_03F_598F:
    nop                                           ; $598F: $00

jr_03F_5990:
    ld [bc], a                                    ; $5990: $02
    ldh a, [$FF0D]                                ; $5991: $F0 $0D
    ldh [$FF08], a                                ; $5993: $E0 $08
    ret nc                                        ; $5995: $D0

    dec c                                         ; $5996: $0D
    ret nz                                        ; $5997: $C0

    ld [$00B0], sp                                ; $5998: $08 $B0 $00
    and b                                         ; $599B: $A0
    ld [$0990], sp                                ; $599C: $08 $90 $09
    add b                                         ; $599F: $80
    nop                                           ; $59A0: $00
    ld [hl], b                                    ; $59A1: $70
    ld [$0160], sp                                ; $59A2: $08 $60 $01
    ld d, b                                       ; $59A5: $50
    add hl, bc                                    ; $59A6: $09
    ld b, b                                       ; $59A7: $40
    dec b                                         ; $59A8: $05
    jr nc, jr_03F_59AE                            ; $59A9: $30 $03

    jr nz, jr_03F_59AF                            ; $59AB: $20 $02

    db $10                                        ; $59AD: $10

jr_03F_59AE:
    inc bc                                        ; $59AE: $03

jr_03F_59AF:
    nop                                           ; $59AF: $00
    ld [bc], a                                    ; $59B0: $02
    jr z, @-$2C                                   ; $59B1: $28 $D2

    ld e, c                                       ; $59B3: $59

jr_03F_59B4:
    inc a                                         ; $59B4: $3C
    sub b                                         ; $59B5: $90
    ldh a, [c]                                    ; $59B6: $F2
    ld e, c                                       ; $59B7: $59
    ld [de], a                                    ; $59B8: $12
    ld e, d                                       ; $59B9: $5A
    jr z, @+$62                                   ; $59BA: $28 $60

    ld [hl-], a                                   ; $59BC: $32
    ld e, d                                       ; $59BD: $5A
    ld d, d                                       ; $59BE: $52
    ld e, d                                       ; $59BF: $5A
    ld [hl], d                                    ; $59C0: $72
    ld e, d                                       ; $59C1: $5A
    sub d                                         ; $59C2: $92
    ld e, d                                       ; $59C3: $5A
    jr z, jr_03F_5A16                             ; $59C4: $28 $50

    or d                                          ; $59C6: $B2
    ld e, d                                       ; $59C7: $5A
    jp nc, $F25A                                  ; $59C8: $D2 $5A $F2

    ld e, d                                       ; $59CB: $5A
    ld [de], a                                    ; $59CC: $12
    ld e, e                                       ; $59CD: $5B
    inc [hl]                                      ; $59CE: $34
    ld e, e                                       ; $59CF: $5B
    ld d, h                                       ; $59D0: $54
    ld e, e                                       ; $59D1: $5B
    ldh a, [rNR44]                                ; $59D2: $F0 $23
    ldh [rNR50], a                                ; $59D4: $E0 $24
    ret nc                                        ; $59D6: $D0

    inc hl                                        ; $59D7: $23
    ret nz                                        ; $59D8: $C0

    inc h                                         ; $59D9: $24
    or b                                          ; $59DA: $B0
    inc hl                                        ; $59DB: $23
    and b                                         ; $59DC: $A0
    jr nz, jr_03F_596F                            ; $59DD: $20 $90

    inc h                                         ; $59DF: $24
    add b                                         ; $59E0: $80
    jr nz, @+$72                                  ; $59E1: $20 $70

    inc hl                                        ; $59E3: $23
    ld h, b                                       ; $59E4: $60
    ld de, $2050                                  ; $59E5: $11 $50 $20
    ld b, b                                       ; $59E8: $40
    inc de                                        ; $59E9: $13
    jr nc, jr_03F_59FD                            ; $59EA: $30 $11

    jr nz, jr_03F_5A01                            ; $59EC: $20 $13

    db $10                                        ; $59EE: $10
    inc de                                        ; $59EF: $13
    nop                                           ; $59F0: $00
    nop                                           ; $59F1: $00
    ldh a, [rTIMA]                                ; $59F2: $F0 $05
    ldh [rTIMA], a                                ; $59F4: $E0 $05
    ret nc                                        ; $59F6: $D0

    dec b                                         ; $59F7: $05
    ret nz                                        ; $59F8: $C0

    dec b                                         ; $59F9: $05
    or b                                          ; $59FA: $B0
    dec b                                         ; $59FB: $05
    and b                                         ; $59FC: $A0

jr_03F_59FD:
    dec b                                         ; $59FD: $05
    sub b                                         ; $59FE: $90
    dec b                                         ; $59FF: $05
    add b                                         ; $5A00: $80

jr_03F_5A01:
    ld b, $70                                     ; $5A01: $06 $70
    ld b, $60                                     ; $5A03: $06 $60
    ld b, $50                                     ; $5A05: $06 $50
    ld b, $40                                     ; $5A07: $06 $40
    ld b, $30                                     ; $5A09: $06 $30
    nop                                           ; $5A0B: $00
    jr nz, jr_03F_5A14                            ; $5A0C: $20 $06

    stop                                          ; $5A0E: $10 $00
    nop                                           ; $5A10: $00
    nop                                           ; $5A11: $00
    ldh a, [$FF2A]                                ; $5A12: $F0 $2A

jr_03F_5A14:
    ldh [$FF2A], a                                ; $5A14: $E0 $2A

jr_03F_5A16:
    ret nc                                        ; $5A16: $D0

    add hl, de                                    ; $5A17: $19
    ret nz                                        ; $5A18: $C0

    ld a, [hl+]                                   ; $5A19: $2A
    or b                                          ; $5A1A: $B0
    ld hl, $06A0                                  ; $5A1B: $21 $A0 $06
    sub b                                         ; $5A1E: $90
    ld hl, $2A80                                  ; $5A1F: $21 $80 $2A
    ld [hl], b                                    ; $5A22: $70
    ld b, $60                                     ; $5A23: $06 $60
    dec b                                         ; $5A25: $05
    ld d, b                                       ; $5A26: $50
    inc c                                         ; $5A27: $0C
    ld b, b                                       ; $5A28: $40
    ld b, $30                                     ; $5A29: $06 $30
    inc c                                         ; $5A2B: $0C
    jr nz, jr_03F_5A2F                            ; $5A2C: $20 $01

    db $10                                        ; $5A2E: $10

jr_03F_5A2F:
    inc c                                         ; $5A2F: $0C
    nop                                           ; $5A30: $00
    nop                                           ; $5A31: $00
    ldh a, [rTIMA]                                ; $5A32: $F0 $05
    ldh [rTIMA], a                                ; $5A34: $E0 $05
    ret nc                                        ; $5A36: $D0

    dec b                                         ; $5A37: $05
    ret nz                                        ; $5A38: $C0

    dec b                                         ; $5A39: $05
    or b                                          ; $5A3A: $B0
    dec b                                         ; $5A3B: $05
    and b                                         ; $5A3C: $A0
    dec b                                         ; $5A3D: $05
    sub b                                         ; $5A3E: $90
    dec b                                         ; $5A3F: $05
    add b                                         ; $5A40: $80
    dec b                                         ; $5A41: $05
    ld [hl], b                                    ; $5A42: $70
    dec b                                         ; $5A43: $05
    ld h, b                                       ; $5A44: $60
    dec b                                         ; $5A45: $05
    ld d, b                                       ; $5A46: $50
    nop                                           ; $5A47: $00
    ld b, b                                       ; $5A48: $40
    dec b                                         ; $5A49: $05
    jr nc, jr_03F_5A4C                            ; $5A4A: $30 $00

jr_03F_5A4C:
    jr nz, @+$07                                  ; $5A4C: $20 $05

    db $10                                        ; $5A4E: $10
    dec b                                         ; $5A4F: $05
    nop                                           ; $5A50: $00
    nop                                           ; $5A51: $00
    ldh a, [rTMA]                                 ; $5A52: $F0 $06
    ldh [rTMA], a                                 ; $5A54: $E0 $06
    ret nc                                        ; $5A56: $D0

    ld b, $C0                                     ; $5A57: $06 $C0
    ld b, $B0                                     ; $5A59: $06 $B0
    ld b, $A0                                     ; $5A5B: $06 $A0
    ld b, $90                                     ; $5A5D: $06 $90
    ld b, $80                                     ; $5A5F: $06 $80

jr_03F_5A61:
    ld b, $70                                     ; $5A61: $06 $70
    ld b, $60                                     ; $5A63: $06 $60
    ld b, $50                                     ; $5A65: $06 $50
    ld b, $40                                     ; $5A67: $06 $40
    nop                                           ; $5A69: $00
    jr nc, jr_03F_5A72                            ; $5A6A: $30 $06

    jr nz, jr_03F_5A74                            ; $5A6C: $20 $06

    stop                                          ; $5A6E: $10 $00
    nop                                           ; $5A70: $00
    nop                                           ; $5A71: $00

jr_03F_5A72:
    ldh a, [rTIMA]                                ; $5A72: $F0 $05

jr_03F_5A74:
    ldh [rTIMA], a                                ; $5A74: $E0 $05
    ret nc                                        ; $5A76: $D0

    dec b                                         ; $5A77: $05
    ret nz                                        ; $5A78: $C0

    dec b                                         ; $5A79: $05
    or b                                          ; $5A7A: $B0
    dec b                                         ; $5A7B: $05
    and b                                         ; $5A7C: $A0
    dec b                                         ; $5A7D: $05
    sub b                                         ; $5A7E: $90
    dec b                                         ; $5A7F: $05
    add b                                         ; $5A80: $80
    jr nz, @+$72                                  ; $5A81: $20 $70

    dec b                                         ; $5A83: $05
    ld h, b                                       ; $5A84: $60
    dec b                                         ; $5A85: $05
    ld d, b                                       ; $5A86: $50
    db $10                                        ; $5A87: $10
    ld b, b                                       ; $5A88: $40
    dec b                                         ; $5A89: $05
    jr nc, jr_03F_5A91                            ; $5A8A: $30 $05

    jr nz, jr_03F_5A8E                            ; $5A8C: $20 $00

jr_03F_5A8E:
    db $10                                        ; $5A8E: $10
    dec b                                         ; $5A8F: $05
    nop                                           ; $5A90: $00

jr_03F_5A91:
    inc b                                         ; $5A91: $04
    ldh a, [rTMA]                                 ; $5A92: $F0 $06
    ldh [rTMA], a                                 ; $5A94: $E0 $06
    ret nc                                        ; $5A96: $D0

    dec b                                         ; $5A97: $05
    ret nz                                        ; $5A98: $C0

    ld b, $B0                                     ; $5A99: $06 $B0
    ld b, $A0                                     ; $5A9B: $06 $A0
    jr nz, jr_03F_5A2F                            ; $5A9D: $20 $90

    dec b                                         ; $5A9F: $05
    add b                                         ; $5AA0: $80
    ld b, $70                                     ; $5AA1: $06 $70
    dec b                                         ; $5AA3: $05
    ld h, b                                       ; $5AA4: $60
    ld b, $50                                     ; $5AA5: $06 $50
    ld b, $40                                     ; $5AA7: $06 $40
    dec b                                         ; $5AA9: $05
    jr nc, @+$06                                  ; $5AAA: $30 $04

    jr nz, jr_03F_5AB4                            ; $5AAC: $20 $06

    db $10                                        ; $5AAE: $10
    ld b, $00                                     ; $5AAF: $06 $00
    nop                                           ; $5AB1: $00
    ldh a, [rNR14]                                ; $5AB2: $F0 $14

jr_03F_5AB4:
    ldh [rNR44], a                                ; $5AB4: $E0 $23
    ret nc                                        ; $5AB6: $D0

    add hl, hl                                    ; $5AB7: $29
    ret nz                                        ; $5AB8: $C0

    inc d                                         ; $5AB9: $14
    or b                                          ; $5ABA: $B0
    add hl, hl                                    ; $5ABB: $29
    and b                                         ; $5ABC: $A0
    inc d                                         ; $5ABD: $14
    sub b                                         ; $5ABE: $90
    nop                                           ; $5ABF: $00
    add b                                         ; $5AC0: $80
    inc hl                                        ; $5AC1: $23
    ld [hl], b                                    ; $5AC2: $70
    inc d                                         ; $5AC3: $14
    ld h, b                                       ; $5AC4: $60
    db $10                                        ; $5AC5: $10
    ld d, b                                       ; $5AC6: $50
    nop                                           ; $5AC7: $00
    ld b, b                                       ; $5AC8: $40
    db $10                                        ; $5AC9: $10
    jr nc, jr_03F_5ACF                            ; $5ACA: $30 $03

    jr nz, jr_03F_5AD0                            ; $5ACC: $20 $02

    db $10                                        ; $5ACE: $10

jr_03F_5ACF:
    inc bc                                        ; $5ACF: $03

jr_03F_5AD0:
    nop                                           ; $5AD0: $00
    ld [bc], a                                    ; $5AD1: $02
    ldh a, [rNR44]                                ; $5AD2: $F0 $23
    ldh [rNR41], a                                ; $5AD4: $E0 $20
    ret nc                                        ; $5AD6: $D0

    inc hl                                        ; $5AD7: $23
    ret nz                                        ; $5AD8: $C0

jr_03F_5AD9:
    dec bc                                        ; $5AD9: $0B
    or b                                          ; $5ADA: $B0
    inc hl                                        ; $5ADB: $23
    and b                                         ; $5ADC: $A0
    inc hl                                        ; $5ADD: $23
    sub b                                         ; $5ADE: $90
    jr nz, jr_03F_5A61                            ; $5ADF: $20 $80

    nop                                           ; $5AE1: $00
    ld [hl], b                                    ; $5AE2: $70
    inc hl                                        ; $5AE3: $23
    ld h, b                                       ; $5AE4: $60
    dec bc                                        ; $5AE5: $0B
    ld d, b                                       ; $5AE6: $50
    inc hl                                        ; $5AE7: $23
    ld b, b                                       ; $5AE8: $40
    dec b                                         ; $5AE9: $05
    jr nc, jr_03F_5AEF                            ; $5AEA: $30 $03

    jr nz, jr_03F_5AF0                            ; $5AEC: $20 $02

    db $10                                        ; $5AEE: $10

jr_03F_5AEF:
    inc bc                                        ; $5AEF: $03

jr_03F_5AF0:
    nop                                           ; $5AF0: $00
    ld [bc], a                                    ; $5AF1: $02
    ldh a, [rNR50]                                ; $5AF2: $F0 $24
    ldh [rNR24], a                                ; $5AF4: $E0 $19
    ret nc                                        ; $5AF6: $D0

    inc hl                                        ; $5AF7: $23
    ret nz                                        ; $5AF8: $C0

    jr @-$4E                                      ; $5AF9: $18 $B0

    dec hl                                        ; $5AFB: $2B
    and b                                         ; $5AFC: $A0
    nop                                           ; $5AFD: $00
    sub b                                         ; $5AFE: $90
    inc hl                                        ; $5AFF: $23
    add b                                         ; $5B00: $80
    add hl, de                                    ; $5B01: $19
    ld [hl], b                                    ; $5B02: $70
    db $10                                        ; $5B03: $10
    ld h, b                                       ; $5B04: $60
    add hl, de                                    ; $5B05: $19
    ld d, b                                       ; $5B06: $50
    db $10                                        ; $5B07: $10
    ld b, b                                       ; $5B08: $40
    ld a, [bc]                                    ; $5B09: $0A
    jr nc, jr_03F_5B10                            ; $5B0A: $30 $04

    jr nz, jr_03F_5B10                            ; $5B0C: $20 $02

    db $10                                        ; $5B0E: $10
    inc b                                         ; $5B0F: $04

jr_03F_5B10:
    nop                                           ; $5B10: $00
    ld [bc], a                                    ; $5B11: $02
    ldh a, [rNR41]                                ; $5B12: $F0 $20
    ldh [rNR44], a                                ; $5B14: $E0 $23
    ret nc                                        ; $5B16: $D0

    jr nz, jr_03F_5AD9                            ; $5B17: $20 $C0

    dec bc                                        ; $5B19: $0B
    or b                                          ; $5B1A: $B0
    inc hl                                        ; $5B1B: $23
    and b                                         ; $5B1C: $A0
    inc hl                                        ; $5B1D: $23
    sub b                                         ; $5B1E: $90
    dec bc                                        ; $5B1F: $0B
    add b                                         ; $5B20: $80
    inc hl                                        ; $5B21: $23
    ld [hl], b                                    ; $5B22: $70
    add hl, bc                                    ; $5B23: $09
    ld h, b                                       ; $5B24: $60
    inc hl                                        ; $5B25: $23
    ld d, b                                       ; $5B26: $50
    inc hl                                        ; $5B27: $23
    ld b, b                                       ; $5B28: $40
    dec bc                                        ; $5B29: $0B
    jr nc, @+$12                                  ; $5B2A: $30 $10

    jr nz, jr_03F_5B31                            ; $5B2C: $20 $03

    db $10                                        ; $5B2E: $10
    ld [bc], a                                    ; $5B2F: $02
    nop                                           ; $5B30: $00

jr_03F_5B31:
    inc bc                                        ; $5B31: $03
    nop                                           ; $5B32: $00
    ld [bc], a                                    ; $5B33: $02
    ldh a, [$FF2B]                                ; $5B34: $F0 $2B
    ldh [$FF08], a                                ; $5B36: $E0 $08
    ret nc                                        ; $5B38: $D0

    dec hl                                        ; $5B39: $2B
    ret nz                                        ; $5B3A: $C0

    ld [$23B0], sp                                ; $5B3B: $08 $B0 $23
    and b                                         ; $5B3E: $A0
    ld [$0990], sp                                ; $5B3F: $08 $90 $09
    add b                                         ; $5B42: $80
    inc hl                                        ; $5B43: $23
    ld [hl], b                                    ; $5B44: $70
    inc hl                                        ; $5B45: $23
    ld h, b                                       ; $5B46: $60
    ld [$0450], sp                                ; $5B47: $08 $50 $04
    ld b, b                                       ; $5B4A: $40
    add hl, bc                                    ; $5B4B: $09
    jr nc, jr_03F_5B51                            ; $5B4C: $30 $03

    jr nz, jr_03F_5B52                            ; $5B4E: $20 $02

    db $10                                        ; $5B50: $10

jr_03F_5B51:
    inc bc                                        ; $5B51: $03

jr_03F_5B52:
    nop                                           ; $5B52: $00
    ld [bc], a                                    ; $5B53: $02
    ldh a, [$FF0D]                                ; $5B54: $F0 $0D
    ldh [rNR50], a                                ; $5B56: $E0 $24
    ret nc                                        ; $5B58: $D0

    dec c                                         ; $5B59: $0D
    ret nz                                        ; $5B5A: $C0

    ld [$09B0], sp                                ; $5B5B: $08 $B0 $09
    and b                                         ; $5B5E: $A0
    ld [$0990], sp                                ; $5B5F: $08 $90 $09
    add b                                         ; $5B62: $80
    ld [$0870], sp                                ; $5B63: $08 $70 $08
    ld h, b                                       ; $5B66: $60
    ld bc, $0950                                  ; $5B67: $01 $50 $09
    ld b, b                                       ; $5B6A: $40
    dec b                                         ; $5B6B: $05
    jr nc, jr_03F_5B71                            ; $5B6C: $30 $03

    jr nz, jr_03F_5B72                            ; $5B6E: $20 $02

    db $10                                        ; $5B70: $10

jr_03F_5B71:
    inc bc                                        ; $5B71: $03

jr_03F_5B72:
    nop                                           ; $5B72: $00
    ld [bc], a                                    ; $5B73: $02
    jr z, @-$69                                   ; $5B74: $28 $95

    ld e, e                                       ; $5B76: $5B
    inc a                                         ; $5B77: $3C
    sub b                                         ; $5B78: $90
    or l                                          ; $5B79: $B5
    ld e, e                                       ; $5B7A: $5B
    push de                                       ; $5B7B: $D5
    ld e, e                                       ; $5B7C: $5B
    inc l                                         ; $5B7D: $2C
    ld d, b                                       ; $5B7E: $50
    push af                                       ; $5B7F: $F5
    ld e, e                                       ; $5B80: $5B
    dec d                                         ; $5B81: $15
    ld e, h                                       ; $5B82: $5C
    dec [hl]                                      ; $5B83: $35
    ld e, h                                       ; $5B84: $5C
    ld d, e                                       ; $5B85: $53
    ld e, h                                       ; $5B86: $5C
    jr z, jr_03F_5BD9                             ; $5B87: $28 $50

    ld [hl], e                                    ; $5B89: $73
    ld e, h                                       ; $5B8A: $5C
    sub e                                         ; $5B8B: $93
    ld e, h                                       ; $5B8C: $5C
    or e                                          ; $5B8D: $B3
    ld e, h                                       ; $5B8E: $5C
    db $D3                                        ; $5B8F: $D3
    ld e, h                                       ; $5B90: $5C
    di                                            ; $5B91: $F3
    ld e, h                                       ; $5B92: $5C
    inc de                                        ; $5B93: $13
    ld e, l                                       ; $5B94: $5D
    ldh a, [$FF32]                                ; $5B95: $F0 $32
    ldh [rNR50], a                                ; $5B97: $E0 $24
    ret nc                                        ; $5B99: $D0

    cpl                                           ; $5B9A: $2F
    ret nz                                        ; $5B9B: $C0

    inc h                                         ; $5B9C: $24
    or b                                          ; $5B9D: $B0
    cpl                                           ; $5B9E: $2F
    and b                                         ; $5B9F: $A0
    inc h                                         ; $5BA0: $24
    sub b                                         ; $5BA1: $90
    cpl                                           ; $5BA2: $2F
    add b                                         ; $5BA3: $80
    cpl                                           ; $5BA4: $2F
    ld [hl], b                                    ; $5BA5: $70
    inc hl                                        ; $5BA6: $23
    ld h, b                                       ; $5BA7: $60
    cpl                                           ; $5BA8: $2F
    ld d, b                                       ; $5BA9: $50
    cpl                                           ; $5BAA: $2F
    ld b, b                                       ; $5BAB: $40
    ld de, $1120                                  ; $5BAC: $11 $20 $11
    db $10                                        ; $5BAF: $10
    db $10                                        ; $5BB0: $10
    db $10                                        ; $5BB1: $10
    stop                                          ; $5BB2: $10 $00
    nop                                           ; $5BB4: $00
    ldh a, [rTMA]                                 ; $5BB5: $F0 $06
    ldh [rTMA], a                                 ; $5BB7: $E0 $06
    ret nc                                        ; $5BB9: $D0

    ld b, $C0                                     ; $5BBA: $06 $C0
    ld b, $B0                                     ; $5BBC: $06 $B0
    ld b, $A0                                     ; $5BBE: $06 $A0
    ld b, $90                                     ; $5BC0: $06 $90
    ld b, $80                                     ; $5BC2: $06 $80
    ld b, $70                                     ; $5BC4: $06 $70
    ld b, $60                                     ; $5BC6: $06 $60
    ld b, $50                                     ; $5BC8: $06 $50
    ld b, $40                                     ; $5BCA: $06 $40
    ld b, $30                                     ; $5BCC: $06 $30
    ld b, $20                                     ; $5BCE: $06 $20
    nop                                           ; $5BD0: $00
    db $10                                        ; $5BD1: $10
    ld [bc], a                                    ; $5BD2: $02
    nop                                           ; $5BD3: $00
    ld [bc], a                                    ; $5BD4: $02
    ldh a, [$FF31]                                ; $5BD5: $F0 $31
    ldh [rNR43], a                                ; $5BD7: $E0 $22

jr_03F_5BD9:
    ret nc                                        ; $5BD9: $D0

    dec b                                         ; $5BDA: $05
    ret nz                                        ; $5BDB: $C0

    dec b                                         ; $5BDC: $05
    or b                                          ; $5BDD: $B0
    ld [hl+], a                                   ; $5BDE: $22
    and b                                         ; $5BDF: $A0
    ld sp, $0590                                  ; $5BE0: $31 $90 $05
    add b                                         ; $5BE3: $80
    dec b                                         ; $5BE4: $05
    ld [hl], b                                    ; $5BE5: $70
    ld [hl+], a                                   ; $5BE6: $22
    ld h, b                                       ; $5BE7: $60
    dec b                                         ; $5BE8: $05
    ld d, b                                       ; $5BE9: $50
    dec b                                         ; $5BEA: $05
    ld b, b                                       ; $5BEB: $40
    dec b                                         ; $5BEC: $05
    jr nc, jr_03F_5BF4                            ; $5BED: $30 $05

    jr nz, jr_03F_5BF1                            ; $5BEF: $20 $00

jr_03F_5BF1:
    db $10                                        ; $5BF1: $10
    ld [bc], a                                    ; $5BF2: $02
    nop                                           ; $5BF3: $00

jr_03F_5BF4:
    ld [bc], a                                    ; $5BF4: $02
    ldh a, [rTIMA]                                ; $5BF5: $F0 $05
    ldh [rTIMA], a                                ; $5BF7: $E0 $05
    ret nc                                        ; $5BF9: $D0

    dec b                                         ; $5BFA: $05
    ret nz                                        ; $5BFB: $C0

    dec b                                         ; $5BFC: $05
    or b                                          ; $5BFD: $B0
    dec b                                         ; $5BFE: $05
    and b                                         ; $5BFF: $A0
    dec b                                         ; $5C00: $05
    sub b                                         ; $5C01: $90
    dec b                                         ; $5C02: $05
    add b                                         ; $5C03: $80
    dec b                                         ; $5C04: $05
    ld [hl], b                                    ; $5C05: $70
    dec b                                         ; $5C06: $05
    ld h, b                                       ; $5C07: $60
    dec b                                         ; $5C08: $05
    ld d, b                                       ; $5C09: $50
    dec b                                         ; $5C0A: $05
    ld b, b                                       ; $5C0B: $40
    dec b                                         ; $5C0C: $05
    jr nc, jr_03F_5C14                            ; $5C0D: $30 $05

    jr nz, jr_03F_5C11                            ; $5C0F: $20 $00

jr_03F_5C11:
    db $10                                        ; $5C11: $10
    ld [bc], a                                    ; $5C12: $02
    nop                                           ; $5C13: $00

jr_03F_5C14:
    ld [bc], a                                    ; $5C14: $02
    ldh a, [rTMA]                                 ; $5C15: $F0 $06
    ldh [rTMA], a                                 ; $5C17: $E0 $06
    ret nc                                        ; $5C19: $D0

    ld b, $C0                                     ; $5C1A: $06 $C0
    ld b, $B0                                     ; $5C1C: $06 $B0
    ld b, $A0                                     ; $5C1E: $06 $A0
    ld b, $90                                     ; $5C20: $06 $90
    ld b, $80                                     ; $5C22: $06 $80
    ld b, $70                                     ; $5C24: $06 $70
    ld b, $60                                     ; $5C26: $06 $60
    ld b, $50                                     ; $5C28: $06 $50
    ld b, $40                                     ; $5C2A: $06 $40
    ld b, $30                                     ; $5C2C: $06 $30
    ld b, $20                                     ; $5C2E: $06 $20
    nop                                           ; $5C30: $00
    db $10                                        ; $5C31: $10
    ld [bc], a                                    ; $5C32: $02
    nop                                           ; $5C33: $00
    ld [bc], a                                    ; $5C34: $02
    ldh a, [rTIMA]                                ; $5C35: $F0 $05
    ldh [rTIMA], a                                ; $5C37: $E0 $05
    ret nc                                        ; $5C39: $D0

    dec b                                         ; $5C3A: $05
    ret nz                                        ; $5C3B: $C0

    dec b                                         ; $5C3C: $05
    or b                                          ; $5C3D: $B0
    dec b                                         ; $5C3E: $05
    and b                                         ; $5C3F: $A0
    dec b                                         ; $5C40: $05
    sub b                                         ; $5C41: $90
    dec b                                         ; $5C42: $05
    add b                                         ; $5C43: $80
    dec b                                         ; $5C44: $05
    ld [hl], b                                    ; $5C45: $70
    dec b                                         ; $5C46: $05
    ld d, b                                       ; $5C47: $50
    dec b                                         ; $5C48: $05
    ld b, b                                       ; $5C49: $40
    dec b                                         ; $5C4A: $05
    jr nc, jr_03F_5C52                            ; $5C4B: $30 $05

    jr nz, jr_03F_5C4F                            ; $5C4D: $20 $00

jr_03F_5C4F:
    db $10                                        ; $5C4F: $10
    ld [bc], a                                    ; $5C50: $02
    nop                                           ; $5C51: $00

jr_03F_5C52:
    ld [bc], a                                    ; $5C52: $02
    ldh a, [rTMA]                                 ; $5C53: $F0 $06
    ldh [rTMA], a                                 ; $5C55: $E0 $06
    ret nc                                        ; $5C57: $D0

    ld b, $C0                                     ; $5C58: $06 $C0
    ld b, $B0                                     ; $5C5A: $06 $B0
    ld b, $A0                                     ; $5C5C: $06 $A0
    ld b, $90                                     ; $5C5E: $06 $90
    ld b, $80                                     ; $5C60: $06 $80
    ld b, $70                                     ; $5C62: $06 $70
    ld b, $60                                     ; $5C64: $06 $60
    ld b, $50                                     ; $5C66: $06 $50
    ld b, $40                                     ; $5C68: $06 $40
    ld b, $30                                     ; $5C6A: $06 $30
    ld b, $20                                     ; $5C6C: $06 $20
    nop                                           ; $5C6E: $00
    db $10                                        ; $5C6F: $10
    ld [bc], a                                    ; $5C70: $02
    nop                                           ; $5C71: $00
    ld [bc], a                                    ; $5C72: $02
    ldh a, [rNR44]                                ; $5C73: $F0 $23
    ldh [rOBP0], a                                ; $5C75: $E0 $48
    ret nc                                        ; $5C77: $D0

    dec c                                         ; $5C78: $0D
    ret nz                                        ; $5C79: $C0

    ld de, $29B0                                  ; $5C7A: $11 $B0 $29
    and b                                         ; $5C7D: $A0
    inc hl                                        ; $5C7E: $23
    sub b                                         ; $5C7F: $90
    ld de, $2C80                                  ; $5C80: $11 $80 $2C
    ld [hl], b                                    ; $5C83: $70
    ld de, $2960                                  ; $5C84: $11 $60 $29
    ld d, b                                       ; $5C87: $50
    ld de, $1040                                  ; $5C88: $11 $40 $10
    jr nc, jr_03F_5C9D                            ; $5C8B: $30 $10

    jr nz, jr_03F_5C8F                            ; $5C8D: $20 $00

jr_03F_5C8F:
    db $10                                        ; $5C8F: $10
    ld [bc], a                                    ; $5C90: $02
    nop                                           ; $5C91: $00
    ld [bc], a                                    ; $5C92: $02
    ldh a, [$FF0D]                                ; $5C93: $F0 $0D
    ldh [rNR44], a                                ; $5C95: $E0 $23
    ret nc                                        ; $5C97: $D0

    inc hl                                        ; $5C98: $23
    ret nz                                        ; $5C99: $C0

    dec b                                         ; $5C9A: $05
    or b                                          ; $5C9B: $B0
    inc hl                                        ; $5C9C: $23

jr_03F_5C9D:
    and b                                         ; $5C9D: $A0
    inc hl                                        ; $5C9E: $23
    sub b                                         ; $5C9F: $90
    inc l                                         ; $5CA0: $2C
    add b                                         ; $5CA1: $80
    dec b                                         ; $5CA2: $05
    ld [hl], b                                    ; $5CA3: $70
    inc hl                                        ; $5CA4: $23
    ld h, b                                       ; $5CA5: $60
    ld [de], a                                    ; $5CA6: $12
    ld d, b                                       ; $5CA7: $50
    inc l                                         ; $5CA8: $2C
    ld b, b                                       ; $5CA9: $40
    ld [de], a                                    ; $5CAA: $12
    jr nc, @+$13                                  ; $5CAB: $30 $11

    jr nz, jr_03F_5CAF                            ; $5CAD: $20 $00

jr_03F_5CAF:
    db $10                                        ; $5CAF: $10
    ld [bc], a                                    ; $5CB0: $02
    nop                                           ; $5CB1: $00
    ld [bc], a                                    ; $5CB2: $02
    ldh a, [rSTAT]                                ; $5CB3: $F0 $41
    ldh [rSTAT], a                                ; $5CB5: $E0 $41
    ret nc                                        ; $5CB7: $D0

    ld [hl+], a                                   ; $5CB8: $22
    ret nz                                        ; $5CB9: $C0

    inc l                                         ; $5CBA: $2C
    or b                                          ; $5CBB: $B0
    ld [$08A0], sp                                ; $5CBC: $08 $A0 $08
    sub b                                         ; $5CBF: $90
    inc l                                         ; $5CC0: $2C
    add b                                         ; $5CC1: $80
    rrca                                          ; $5CC2: $0F
    ld [hl], b                                    ; $5CC3: $70
    add hl, bc                                    ; $5CC4: $09
    ld h, b                                       ; $5CC5: $60
    inc l                                         ; $5CC6: $2C
    ld d, b                                       ; $5CC7: $50
    ld [hl+], a                                   ; $5CC8: $22
    ld b, b                                       ; $5CC9: $40
    inc b                                         ; $5CCA: $04
    jr nc, jr_03F_5CD1                            ; $5CCB: $30 $04

    jr nz, jr_03F_5CCF                            ; $5CCD: $20 $00

jr_03F_5CCF:
    db $10                                        ; $5CCF: $10
    ld [bc], a                                    ; $5CD0: $02

jr_03F_5CD1:
    nop                                           ; $5CD1: $00
    ld [bc], a                                    ; $5CD2: $02
    ldh a, [rNR43]                                ; $5CD3: $F0 $22
    ldh [$FF08], a                                ; $5CD5: $E0 $08
    ret nc                                        ; $5CD7: $D0

    ld [hl+], a                                   ; $5CD8: $22
    ret nz                                        ; $5CD9: $C0

    ld [$22B0], sp                                ; $5CDA: $08 $B0 $22
    and b                                         ; $5CDD: $A0
    inc l                                         ; $5CDE: $2C
    sub b                                         ; $5CDF: $90
    rrca                                          ; $5CE0: $0F
    add b                                         ; $5CE1: $80
    add hl, bc                                    ; $5CE2: $09

jr_03F_5CE3:
    ld [hl], b                                    ; $5CE3: $70
    ld [hl+], a                                   ; $5CE4: $22
    ld h, b                                       ; $5CE5: $60
    dec b                                         ; $5CE6: $05
    ld d, b                                       ; $5CE7: $50
    dec b                                         ; $5CE8: $05
    ld b, b                                       ; $5CE9: $40
    add hl, bc                                    ; $5CEA: $09
    jr nc, jr_03F_5CF1                            ; $5CEB: $30 $04

    jr nz, jr_03F_5CEF                            ; $5CED: $20 $00

jr_03F_5CEF:
    db $10                                        ; $5CEF: $10
    ld [bc], a                                    ; $5CF0: $02

jr_03F_5CF1:
    nop                                           ; $5CF1: $00
    ld [bc], a                                    ; $5CF2: $02
    ldh a, [$FF0D]                                ; $5CF3: $F0 $0D
    ldh [rNR43], a                                ; $5CF5: $E0 $22
    ret nc                                        ; $5CF7: $D0

    ld [$08C0], sp                                ; $5CF8: $08 $C0 $08
    or b                                          ; $5CFB: $B0
    dec c                                         ; $5CFC: $0D
    and b                                         ; $5CFD: $A0
    ld [$0990], sp                                ; $5CFE: $08 $90 $09
    add b                                         ; $5D01: $80
    inc b                                         ; $5D02: $04
    ld [hl], b                                    ; $5D03: $70
    ld [$2260], sp                                ; $5D04: $08 $60 $22
    ld d, b                                       ; $5D07: $50
    ld [$0F40], sp                                ; $5D08: $08 $40 $0F
    jr nc, @+$0B                                  ; $5D0B: $30 $09

jr_03F_5D0D:
    jr nz, jr_03F_5D0F                            ; $5D0D: $20 $00

jr_03F_5D0F:
    db $10                                        ; $5D0F: $10
    ld [bc], a                                    ; $5D10: $02

jr_03F_5D11:
    nop                                           ; $5D11: $00
    ld [bc], a                                    ; $5D12: $02
    ldh a, [$FF0D]                                ; $5D13: $F0 $0D
    ldh [$FF08], a                                ; $5D15: $E0 $08
    ret nc                                        ; $5D17: $D0

    ld [hl+], a                                   ; $5D18: $22
    ret nz                                        ; $5D19: $C0

    ld [$0DB0], sp                                ; $5D1A: $08 $B0 $0D
    and b                                         ; $5D1D: $A0
    ld [$0990], sp                                ; $5D1E: $08 $90 $09
    add b                                         ; $5D21: $80
    ld [$0870], sp                                ; $5D22: $08 $70 $08
    ld h, b                                       ; $5D25: $60
    ld [hl+], a                                   ; $5D26: $22
    ld d, b                                       ; $5D27: $50
    rrca                                          ; $5D28: $0F
    ld b, b                                       ; $5D29: $40
    add hl, bc                                    ; $5D2A: $09
    jr nc, jr_03F_5D3B                            ; $5D2B: $30 $0E

    jr nz, jr_03F_5D2F                            ; $5D2D: $20 $00

jr_03F_5D2F:
    db $10                                        ; $5D2F: $10
    ld [bc], a                                    ; $5D30: $02
    nop                                           ; $5D31: $00
    ld [bc], a                                    ; $5D32: $02
    jr z, jr_03F_5D89                             ; $5D33: $28 $54

    ld e, l                                       ; $5D35: $5D
    inc a                                         ; $5D36: $3C
    sub b                                         ; $5D37: $90
    ld [hl], h                                    ; $5D38: $74
    ld e, l                                       ; $5D39: $5D
    sub h                                         ; $5D3A: $94

jr_03F_5D3B:
    ld e, l                                       ; $5D3B: $5D
    jr z, @+$4A                                   ; $5D3C: $28 $48

    or h                                          ; $5D3E: $B4
    ld e, l                                       ; $5D3F: $5D
    jp nc, $F25D                                  ; $5D40: $D2 $5D $F2

    ld e, l                                       ; $5D43: $5D
    ld [de], a                                    ; $5D44: $12
    ld e, [hl]                                    ; $5D45: $5E
    jr z, jr_03F_5D98                             ; $5D46: $28 $50

    ld [hl-], a                                   ; $5D48: $32
    ld e, [hl]                                    ; $5D49: $5E
    ld d, d                                       ; $5D4A: $52
    ld e, [hl]                                    ; $5D4B: $5E
    ld [hl], d                                    ; $5D4C: $72
    ld e, [hl]                                    ; $5D4D: $5E
    sub d                                         ; $5D4E: $92
    ld e, [hl]                                    ; $5D4F: $5E
    or d                                          ; $5D50: $B2
    ld e, [hl]                                    ; $5D51: $5E
    jp nc, $F05E                                  ; $5D52: $D2 $5E $F0

    inc h                                         ; $5D55: $24
    ldh [rNR41], a                                ; $5D56: $E0 $20
    ret nc                                        ; $5D58: $D0

    inc h                                         ; $5D59: $24
    ret nz                                        ; $5D5A: $C0

    jr nz, jr_03F_5D0D                            ; $5D5B: $20 $B0

    inc h                                         ; $5D5D: $24
    and b                                         ; $5D5E: $A0
    jr nz, jr_03F_5CF1                            ; $5D5F: $20 $90

    jr nz, jr_03F_5CE3                            ; $5D61: $20 $80

    jr nz, @+$72                                  ; $5D63: $20 $70

    jr nz, jr_03F_5DC7                            ; $5D65: $20 $60

    jr nz, jr_03F_5DB9                            ; $5D67: $20 $50

    jr nz, jr_03F_5DAB                            ; $5D69: $20 $40

    ld [hl+], a                                   ; $5D6B: $22
    jr nc, jr_03F_5D90                            ; $5D6C: $30 $22

    jr nz, jr_03F_5D92                            ; $5D6E: $20 $22

    stop                                          ; $5D70: $10 $00
    nop                                           ; $5D72: $00
    nop                                           ; $5D73: $00
    ldh a, [$FF2F]                                ; $5D74: $F0 $2F
    ldh [$FF2F], a                                ; $5D76: $E0 $2F
    ret nc                                        ; $5D78: $D0

    jr nz, jr_03F_5D3B                            ; $5D79: $20 $C0

    inc hl                                        ; $5D7B: $23
    or b                                          ; $5D7C: $B0
    nop                                           ; $5D7D: $00
    and b                                         ; $5D7E: $A0
    jr nz, jr_03F_5D11                            ; $5D7F: $20 $90

    cpl                                           ; $5D81: $2F
    add b                                         ; $5D82: $80
    nop                                           ; $5D83: $00
    ld [hl], b                                    ; $5D84: $70
    jr nz, jr_03F_5DE7                            ; $5D85: $20 $60

    cpl                                           ; $5D87: $2F
    ld d, b                                       ; $5D88: $50

jr_03F_5D89:
    jr nz, @+$42                                  ; $5D89: $20 $40

    ld [hl+], a                                   ; $5D8B: $22
    jr nc, jr_03F_5D8E                            ; $5D8C: $30 $00

jr_03F_5D8E:
    jr nz, jr_03F_5D90                            ; $5D8E: $20 $00

jr_03F_5D90:
    db $10                                        ; $5D90: $10
    ld [bc], a                                    ; $5D91: $02

jr_03F_5D92:
    nop                                           ; $5D92: $00
    ld [bc], a                                    ; $5D93: $02
    ldh a, [$FF33]                                ; $5D94: $F0 $33
    ldh [$FF2F], a                                ; $5D96: $E0 $2F

jr_03F_5D98:
    ret nc                                        ; $5D98: $D0

jr_03F_5D99:
    cpl                                           ; $5D99: $2F
    ret nz                                        ; $5D9A: $C0

    inc sp                                        ; $5D9B: $33
    or b                                          ; $5D9C: $B0
    ld a, [bc]                                    ; $5D9D: $0A
    and b                                         ; $5D9E: $A0
    inc sp                                        ; $5D9F: $33
    sub b                                         ; $5DA0: $90
    ld a, [bc]                                    ; $5DA1: $0A
    add b                                         ; $5DA2: $80
    cpl                                           ; $5DA3: $2F
    ld [hl], b                                    ; $5DA4: $70
    ld a, [bc]                                    ; $5DA5: $0A
    ld h, b                                       ; $5DA6: $60
    inc b                                         ; $5DA7: $04
    ld d, b                                       ; $5DA8: $50
    cpl                                           ; $5DA9: $2F
    ld b, b                                       ; $5DAA: $40

jr_03F_5DAB:
    inc sp                                        ; $5DAB: $33
    jr nc, jr_03F_5DB2                            ; $5DAC: $30 $04

    jr nz, jr_03F_5DB0                            ; $5DAE: $20 $00

jr_03F_5DB0:
    db $10                                        ; $5DB0: $10
    ld [bc], a                                    ; $5DB1: $02

jr_03F_5DB2:
    nop                                           ; $5DB2: $00
    ld [bc], a                                    ; $5DB3: $02
    ldh a, [rNR34]                                ; $5DB4: $F0 $1E
    ret nc                                        ; $5DB6: $D0

    ld e, $C0                                     ; $5DB7: $1E $C0

jr_03F_5DB9:
    ld e, $B0                                     ; $5DB9: $1E $B0
    db $10                                        ; $5DBB: $10
    and b                                         ; $5DBC: $A0
    ld de, $1E90                                  ; $5DBD: $11 $90 $1E
    add b                                         ; $5DC0: $80

jr_03F_5DC1:
    db $10                                        ; $5DC1: $10
    ld [hl], b                                    ; $5DC2: $70
    ld de, $1E60                                  ; $5DC3: $11 $60 $1E
    ld d, b                                       ; $5DC6: $50

jr_03F_5DC7:
    db $10                                        ; $5DC7: $10
    ld b, b                                       ; $5DC8: $40
    ld de, $0430                                  ; $5DC9: $11 $30 $04
    jr nz, jr_03F_5DCE                            ; $5DCC: $20 $00

jr_03F_5DCE:
    db $10                                        ; $5DCE: $10
    ld [bc], a                                    ; $5DCF: $02
    nop                                           ; $5DD0: $00
    ld [bc], a                                    ; $5DD1: $02
    ldh a, [$FF2F]                                ; $5DD2: $F0 $2F
    ldh [$FF2F], a                                ; $5DD4: $E0 $2F
    ret nc                                        ; $5DD6: $D0

    jr nz, jr_03F_5D99                            ; $5DD7: $20 $C0

    cpl                                           ; $5DD9: $2F
    or b                                          ; $5DDA: $B0
    nop                                           ; $5DDB: $00
    and b                                         ; $5DDC: $A0

jr_03F_5DDD:
    jr nz, @-$6E                                  ; $5DDD: $20 $90

    cpl                                           ; $5DDF: $2F
    add b                                         ; $5DE0: $80
    nop                                           ; $5DE1: $00
    ld [hl], b                                    ; $5DE2: $70
    jr nz, @+$62                                  ; $5DE3: $20 $60

    cpl                                           ; $5DE5: $2F
    ld d, b                                       ; $5DE6: $50

jr_03F_5DE7:
    jr nz, jr_03F_5E29                            ; $5DE7: $20 $40

    ld [hl+], a                                   ; $5DE9: $22
    jr nc, jr_03F_5DEC                            ; $5DEA: $30 $00

jr_03F_5DEC:
    jr nz, jr_03F_5DEE                            ; $5DEC: $20 $00

jr_03F_5DEE:
    db $10                                        ; $5DEE: $10
    ld [bc], a                                    ; $5DEF: $02
    nop                                           ; $5DF0: $00
    ld [bc], a                                    ; $5DF1: $02
    ldh a, [$FF33]                                ; $5DF2: $F0 $33
    ldh [$FF2F], a                                ; $5DF4: $E0 $2F
    ret nc                                        ; $5DF6: $D0

    cpl                                           ; $5DF7: $2F
    ret nz                                        ; $5DF8: $C0

    inc sp                                        ; $5DF9: $33
    or b                                          ; $5DFA: $B0
    ld a, [bc]                                    ; $5DFB: $0A
    and b                                         ; $5DFC: $A0
    inc sp                                        ; $5DFD: $33
    sub b                                         ; $5DFE: $90
    ld a, [bc]                                    ; $5DFF: $0A
    add b                                         ; $5E00: $80
    cpl                                           ; $5E01: $2F
    ld [hl], b                                    ; $5E02: $70
    ld a, [bc]                                    ; $5E03: $0A
    ld h, b                                       ; $5E04: $60
    inc b                                         ; $5E05: $04
    ld d, b                                       ; $5E06: $50
    cpl                                           ; $5E07: $2F
    ld b, b                                       ; $5E08: $40
    inc sp                                        ; $5E09: $33
    jr nc, jr_03F_5E10                            ; $5E0A: $30 $04

    jr nz, jr_03F_5E0E                            ; $5E0C: $20 $00

jr_03F_5E0E:
    db $10                                        ; $5E0E: $10
    ld [bc], a                                    ; $5E0F: $02

jr_03F_5E10:
    nop                                           ; $5E10: $00
    ld [bc], a                                    ; $5E11: $02
    ldh a, [$FF33]                                ; $5E12: $F0 $33
    ldh [$FF2F], a                                ; $5E14: $E0 $2F
    ret nc                                        ; $5E16: $D0

    cpl                                           ; $5E17: $2F
    ret nz                                        ; $5E18: $C0

    inc sp                                        ; $5E19: $33
    or b                                          ; $5E1A: $B0
    ld a, [bc]                                    ; $5E1B: $0A
    and b                                         ; $5E1C: $A0
    inc sp                                        ; $5E1D: $33
    sub b                                         ; $5E1E: $90
    ld a, [bc]                                    ; $5E1F: $0A
    add b                                         ; $5E20: $80
    cpl                                           ; $5E21: $2F
    ld [hl], b                                    ; $5E22: $70
    ld a, [bc]                                    ; $5E23: $0A
    ld h, b                                       ; $5E24: $60
    inc b                                         ; $5E25: $04
    ld d, b                                       ; $5E26: $50
    cpl                                           ; $5E27: $2F
    ld b, b                                       ; $5E28: $40

jr_03F_5E29:
    inc sp                                        ; $5E29: $33
    jr nc, jr_03F_5E30                            ; $5E2A: $30 $04

    jr nz, jr_03F_5E2E                            ; $5E2C: $20 $00

jr_03F_5E2E:
    db $10                                        ; $5E2E: $10
    ld [bc], a                                    ; $5E2F: $02

jr_03F_5E30:
    nop                                           ; $5E30: $00
    ld [bc], a                                    ; $5E31: $02
    ldh a, [$FF2F]                                ; $5E32: $F0 $2F
    ldh [rNR41], a                                ; $5E34: $E0 $20
    ret nc                                        ; $5E36: $D0

    add hl, hl                                    ; $5E37: $29
    ret nz                                        ; $5E38: $C0

    add hl, hl                                    ; $5E39: $29
    or b                                          ; $5E3A: $B0
    jr nz, jr_03F_5DDD                            ; $5E3B: $20 $A0

    cpl                                           ; $5E3D: $2F
    sub b                                         ; $5E3E: $90
    jr nz, jr_03F_5DC1                            ; $5E3F: $20 $80

    add hl, hl                                    ; $5E41: $29
    ld [hl], b                                    ; $5E42: $70
    ld de, $1060                                  ; $5E43: $11 $60 $10
    ld d, b                                       ; $5E46: $50
    ld de, $1040                                  ; $5E47: $11 $40 $10
    ld b, b                                       ; $5E4A: $40
    db $10                                        ; $5E4B: $10
    jr nz, jr_03F_5E4E                            ; $5E4C: $20 $00

jr_03F_5E4E:
    db $10                                        ; $5E4E: $10
    ld [bc], a                                    ; $5E4F: $02
    nop                                           ; $5E50: $00
    ld [bc], a                                    ; $5E51: $02
    ldh a, [rNR34]                                ; $5E52: $F0 $1E
    ldh [$FF09], a                                ; $5E54: $E0 $09
    ret nc                                        ; $5E56: $D0

    ld e, $C0                                     ; $5E57: $1E $C0
    add hl, bc                                    ; $5E59: $09
    or b                                          ; $5E5A: $B0
    ld e, $A0                                     ; $5E5B: $1E $A0
    add hl, bc                                    ; $5E5D: $09
    sub b                                         ; $5E5E: $90
    ld e, $80                                     ; $5E5F: $1E $80
    ld de, $0970                                  ; $5E61: $11 $70 $09
    ld h, b                                       ; $5E64: $60
    add hl, bc                                    ; $5E65: $09
    ld d, b                                       ; $5E66: $50
    db $10                                        ; $5E67: $10
    ld b, b                                       ; $5E68: $40
    ld de, $0930                                  ; $5E69: $11 $30 $09
    jr nz, jr_03F_5E6E                            ; $5E6C: $20 $00

jr_03F_5E6E:
    db $10                                        ; $5E6E: $10
    ld [bc], a                                    ; $5E6F: $02
    nop                                           ; $5E70: $00
    ld [bc], a                                    ; $5E71: $02
    ldh a, [$FF2F]                                ; $5E72: $F0 $2F
    ldh [$FF29], a                                ; $5E74: $E0 $29
    ret nc                                        ; $5E76: $D0

    ld [hl+], a                                   ; $5E77: $22
    ret nz                                        ; $5E78: $C0

    add hl, hl                                    ; $5E79: $29
    or b                                          ; $5E7A: $B0
    add hl, bc                                    ; $5E7B: $09
    and b                                         ; $5E7C: $A0
    cpl                                           ; $5E7D: $2F
    sub b                                         ; $5E7E: $90
    add hl, hl                                    ; $5E7F: $29
    add b                                         ; $5E80: $80
    ld [hl+], a                                   ; $5E81: $22
    ld [hl], b                                    ; $5E82: $70
    add hl, hl                                    ; $5E83: $29
    ld h, b                                       ; $5E84: $60
    add hl, bc                                    ; $5E85: $09
    ld d, b                                       ; $5E86: $50
    add hl, bc                                    ; $5E87: $09
    ld b, b                                       ; $5E88: $40
    inc b                                         ; $5E89: $04
    jr nc, jr_03F_5E90                            ; $5E8A: $30 $04

    jr nz, jr_03F_5E8E                            ; $5E8C: $20 $00

jr_03F_5E8E:
    db $10                                        ; $5E8E: $10
    ld [bc], a                                    ; $5E8F: $02

jr_03F_5E90:
    nop                                           ; $5E90: $00
    ld [bc], a                                    ; $5E91: $02
    ldh a, [$FF2F]                                ; $5E92: $F0 $2F
    ldh [$FF33], a                                ; $5E94: $E0 $33
    ret nc                                        ; $5E96: $D0

    add hl, bc                                    ; $5E97: $09
    ret nz                                        ; $5E98: $C0

    inc b                                         ; $5E99: $04
    or b                                          ; $5E9A: $B0
    cpl                                           ; $5E9B: $2F
    and b                                         ; $5E9C: $A0
    inc sp                                        ; $5E9D: $33
    sub b                                         ; $5E9E: $90
    add hl, bc                                    ; $5E9F: $09
    add b                                         ; $5EA0: $80
    inc b                                         ; $5EA1: $04

jr_03F_5EA2:
    ld [hl], b                                    ; $5EA2: $70
    add hl, bc                                    ; $5EA3: $09
    ld h, b                                       ; $5EA4: $60
    inc b                                         ; $5EA5: $04
    ld d, b                                       ; $5EA6: $50
    inc b                                         ; $5EA7: $04
    ld b, b                                       ; $5EA8: $40
    add hl, bc                                    ; $5EA9: $09
    jr nc, jr_03F_5EB0                            ; $5EAA: $30 $04

    jr nz, jr_03F_5EAE                            ; $5EAC: $20 $00

jr_03F_5EAE:
    db $10                                        ; $5EAE: $10
    ld [bc], a                                    ; $5EAF: $02

jr_03F_5EB0:
    nop                                           ; $5EB0: $00
    ld [bc], a                                    ; $5EB1: $02
    ldh a, [$FF08]                                ; $5EB2: $F0 $08
    ldh [$FF08], a                                ; $5EB4: $E0 $08
    ret nc                                        ; $5EB6: $D0

    ld a, [bc]                                    ; $5EB7: $0A
    ret nz                                        ; $5EB8: $C0

    ld [$09B0], sp                                ; $5EB9: $08 $B0 $09
    and b                                         ; $5EBC: $A0
    inc b                                         ; $5EBD: $04

jr_03F_5EBE:
    sub b                                         ; $5EBE: $90
    ld [$0480], sp                                ; $5EBF: $08 $80 $04
    ld [hl], b                                    ; $5EC2: $70
    ld [$0460], sp                                ; $5EC3: $08 $60 $04
    ld d, b                                       ; $5EC6: $50
    ld [$0440], sp                                ; $5EC7: $08 $40 $04
    jr nc, @+$0B                                  ; $5ECA: $30 $09

    jr nz, jr_03F_5ECE                            ; $5ECC: $20 $00

jr_03F_5ECE:
    db $10                                        ; $5ECE: $10
    ld [bc], a                                    ; $5ECF: $02
    nop                                           ; $5ED0: $00
    ld [bc], a                                    ; $5ED1: $02
    ldh a, [rDIV]                                 ; $5ED2: $F0 $04
    ldh [$FF08], a                                ; $5ED4: $E0 $08
    ret nc                                        ; $5ED6: $D0

    ld a, [bc]                                    ; $5ED7: $0A
    ret nz                                        ; $5ED8: $C0

    inc b                                         ; $5ED9: $04

jr_03F_5EDA:
    or b                                          ; $5EDA: $B0
    nop                                           ; $5EDB: $00
    and b                                         ; $5EDC: $A0
    ld [$0490], sp                                ; $5EDD: $08 $90 $04
    add b                                         ; $5EE0: $80
    ld a, [bc]                                    ; $5EE1: $0A
    ld [hl], b                                    ; $5EE2: $70
    inc b                                         ; $5EE3: $04
    ld h, b                                       ; $5EE4: $60
    nop                                           ; $5EE5: $00
    ld d, b                                       ; $5EE6: $50
    inc b                                         ; $5EE7: $04
    ld b, b                                       ; $5EE8: $40
    ld [$0430], sp                                ; $5EE9: $08 $30 $04
    jr nz, jr_03F_5EEE                            ; $5EEC: $20 $00

jr_03F_5EEE:
    db $10                                        ; $5EEE: $10
    ld [bc], a                                    ; $5EEF: $02
    nop                                           ; $5EF0: $00
    ld [bc], a                                    ; $5EF1: $02
    jr nc, jr_03F_5F07                            ; $5EF2: $30 $13

    ld e, a                                       ; $5EF4: $5F
    inc a                                         ; $5EF5: $3C
    sub b                                         ; $5EF6: $90
    inc sp                                        ; $5EF7: $33
    ld e, a                                       ; $5EF8: $5F
    ld d, e                                       ; $5EF9: $53
    ld e, a                                       ; $5EFA: $5F
    inc l                                         ; $5EFB: $2C
    ld c, b                                       ; $5EFC: $48
    ld [hl], e                                    ; $5EFD: $73
    ld e, a                                       ; $5EFE: $5F
    sub e                                         ; $5EFF: $93
    ld e, a                                       ; $5F00: $5F
    or e                                          ; $5F01: $B3
    ld e, a                                       ; $5F02: $5F
    db $D3                                        ; $5F03: $D3
    ld e, a                                       ; $5F04: $5F
    jr nc, jr_03F_5F6F                            ; $5F05: $30 $68

jr_03F_5F07:
    di                                            ; $5F07: $F3
    ld e, a                                       ; $5F08: $5F
    inc de                                        ; $5F09: $13
    ld h, b                                       ; $5F0A: $60
    inc sp                                        ; $5F0B: $33
    ld h, b                                       ; $5F0C: $60
    ld d, e                                       ; $5F0D: $53
    ld h, b                                       ; $5F0E: $60
    ld [hl], e                                    ; $5F0F: $73
    ld h, b                                       ; $5F10: $60
    sub l                                         ; $5F11: $95
    ld h, b                                       ; $5F12: $60
    ldh a, [$FF32]                                ; $5F13: $F0 $32
    ldh [rNR50], a                                ; $5F15: $E0 $24
    ret nc                                        ; $5F17: $D0

    jr nc, jr_03F_5EDA                            ; $5F18: $30 $C0

    inc h                                         ; $5F1A: $24
    or b                                          ; $5F1B: $B0
    jr nc, jr_03F_5EBE                            ; $5F1C: $30 $A0

    dec d                                         ; $5F1E: $15
    sub b                                         ; $5F1F: $90
    jr nc, jr_03F_5EA2                            ; $5F20: $30 $80

    dec d                                         ; $5F22: $15
    ld [hl], b                                    ; $5F23: $70
    jr nc, jr_03F_5F86                            ; $5F24: $30 $60

    dec d                                         ; $5F26: $15
    ld d, b                                       ; $5F27: $50
    dec d                                         ; $5F28: $15
    ld b, b                                       ; $5F29: $40
    dec d                                         ; $5F2A: $15
    jr nc, jr_03F_5F40                            ; $5F2B: $30 $13

    jr nz, jr_03F_5F2F                            ; $5F2D: $20 $00

jr_03F_5F2F:
    stop                                          ; $5F2F: $10 $00
    nop                                           ; $5F31: $00
    nop                                           ; $5F32: $00
    ldh a, [rTMA]                                 ; $5F33: $F0 $06
    ldh [rTMA], a                                 ; $5F35: $E0 $06
    ret nc                                        ; $5F37: $D0

    ld b, $C0                                     ; $5F38: $06 $C0
    ld b, $B0                                     ; $5F3A: $06 $B0
    ld b, $A0                                     ; $5F3C: $06 $A0
    ld b, $90                                     ; $5F3E: $06 $90

jr_03F_5F40:
    ld b, $80                                     ; $5F40: $06 $80
    ld b, $70                                     ; $5F42: $06 $70
    ld b, $60                                     ; $5F44: $06 $60
    ld b, $50                                     ; $5F46: $06 $50
    ld b, $40                                     ; $5F48: $06 $40
    ld b, $30                                     ; $5F4A: $06 $30
    ld b, $20                                     ; $5F4C: $06 $20
    nop                                           ; $5F4E: $00
    db $10                                        ; $5F4F: $10
    ld [bc], a                                    ; $5F50: $02
    nop                                           ; $5F51: $00
    ld [bc], a                                    ; $5F52: $02
    ldh a, [rTIMA]                                ; $5F53: $F0 $05
    ldh [$FF36], a                                ; $5F55: $E0 $36
    ret nc                                        ; $5F57: $D0

    dec b                                         ; $5F58: $05
    ret nz                                        ; $5F59: $C0

    ld [hl+], a                                   ; $5F5A: $22
    or b                                          ; $5F5B: $B0
    ld [hl+], a                                   ; $5F5C: $22
    and b                                         ; $5F5D: $A0
    inc e                                         ; $5F5E: $1C
    sub b                                         ; $5F5F: $90
    dec b                                         ; $5F60: $05
    add b                                         ; $5F61: $80
    ld [hl+], a                                   ; $5F62: $22
    ld [hl], b                                    ; $5F63: $70
    dec b                                         ; $5F64: $05
    ld h, b                                       ; $5F65: $60
    ld [hl+], a                                   ; $5F66: $22
    ld d, b                                       ; $5F67: $50
    jr jr_03F_5FAA                                ; $5F68: $18 $40

    dec b                                         ; $5F6A: $05
    jr nc, jr_03F_5F72                            ; $5F6B: $30 $05

    jr nz, jr_03F_5F6F                            ; $5F6D: $20 $00

jr_03F_5F6F:
    db $10                                        ; $5F6F: $10
    ld [bc], a                                    ; $5F70: $02
    nop                                           ; $5F71: $00

jr_03F_5F72:
    ld [bc], a                                    ; $5F72: $02
    ldh a, [rTIMA]                                ; $5F73: $F0 $05
    ldh [rTIMA], a                                ; $5F75: $E0 $05
    ret nc                                        ; $5F77: $D0

    dec b                                         ; $5F78: $05
    ret nz                                        ; $5F79: $C0

    dec b                                         ; $5F7A: $05
    or b                                          ; $5F7B: $B0
    dec b                                         ; $5F7C: $05
    and b                                         ; $5F7D: $A0
    dec b                                         ; $5F7E: $05
    sub b                                         ; $5F7F: $90
    dec b                                         ; $5F80: $05
    add b                                         ; $5F81: $80
    dec b                                         ; $5F82: $05
    ld [hl], b                                    ; $5F83: $70
    dec b                                         ; $5F84: $05
    ld h, b                                       ; $5F85: $60

jr_03F_5F86:
    dec b                                         ; $5F86: $05
    ld d, b                                       ; $5F87: $50
    dec b                                         ; $5F88: $05
    ld b, b                                       ; $5F89: $40
    dec b                                         ; $5F8A: $05
    jr nc, jr_03F_5F92                            ; $5F8B: $30 $05

    jr nz, jr_03F_5F8F                            ; $5F8D: $20 $00

jr_03F_5F8F:
    db $10                                        ; $5F8F: $10
    ld [bc], a                                    ; $5F90: $02
    nop                                           ; $5F91: $00

jr_03F_5F92:
    ld [bc], a                                    ; $5F92: $02
    ldh a, [rTMA]                                 ; $5F93: $F0 $06
    ldh [rTMA], a                                 ; $5F95: $E0 $06
    ret nc                                        ; $5F97: $D0

    ld b, $C0                                     ; $5F98: $06 $C0
    ld b, $B0                                     ; $5F9A: $06 $B0
    ld b, $A0                                     ; $5F9C: $06 $A0
    ld b, $90                                     ; $5F9E: $06 $90
    ld b, $80                                     ; $5FA0: $06 $80
    ld b, $70                                     ; $5FA2: $06 $70
    ld b, $60                                     ; $5FA4: $06 $60
    ld b, $50                                     ; $5FA6: $06 $50
    ld b, $40                                     ; $5FA8: $06 $40

jr_03F_5FAA:
    ld b, $30                                     ; $5FAA: $06 $30
    ld b, $20                                     ; $5FAC: $06 $20
    nop                                           ; $5FAE: $00
    db $10                                        ; $5FAF: $10
    ld [bc], a                                    ; $5FB0: $02
    nop                                           ; $5FB1: $00
    ld [bc], a                                    ; $5FB2: $02
    ldh a, [rTIMA]                                ; $5FB3: $F0 $05
    ldh [rTIMA], a                                ; $5FB5: $E0 $05
    ret nc                                        ; $5FB7: $D0

    dec b                                         ; $5FB8: $05
    ret nz                                        ; $5FB9: $C0

    dec b                                         ; $5FBA: $05
    or b                                          ; $5FBB: $B0
    dec b                                         ; $5FBC: $05
    and b                                         ; $5FBD: $A0
    dec b                                         ; $5FBE: $05
    sub b                                         ; $5FBF: $90
    dec b                                         ; $5FC0: $05
    add b                                         ; $5FC1: $80
    dec b                                         ; $5FC2: $05
    ld [hl], b                                    ; $5FC3: $70
    dec b                                         ; $5FC4: $05
    ld h, b                                       ; $5FC5: $60
    dec b                                         ; $5FC6: $05
    ld d, b                                       ; $5FC7: $50
    dec b                                         ; $5FC8: $05
    ld b, b                                       ; $5FC9: $40
    dec b                                         ; $5FCA: $05
    jr nc, jr_03F_5FD2                            ; $5FCB: $30 $05

    jr nz, jr_03F_5FCF                            ; $5FCD: $20 $00

jr_03F_5FCF:
    db $10                                        ; $5FCF: $10
    ld [bc], a                                    ; $5FD0: $02
    nop                                           ; $5FD1: $00

jr_03F_5FD2:
    ld [bc], a                                    ; $5FD2: $02
    ldh a, [rTMA]                                 ; $5FD3: $F0 $06
    ldh [rTMA], a                                 ; $5FD5: $E0 $06
    ret nc                                        ; $5FD7: $D0

    ld b, $C0                                     ; $5FD8: $06 $C0
    ld b, $B0                                     ; $5FDA: $06 $B0
    ld b, $A0                                     ; $5FDC: $06 $A0
    ld b, $90                                     ; $5FDE: $06 $90
    ld b, $80                                     ; $5FE0: $06 $80
    ld b, $70                                     ; $5FE2: $06 $70
    ld b, $60                                     ; $5FE4: $06 $60
    ld b, $50                                     ; $5FE6: $06 $50
    ld b, $40                                     ; $5FE8: $06 $40
    ld b, $30                                     ; $5FEA: $06 $30
    ld b, $20                                     ; $5FEC: $06 $20
    nop                                           ; $5FEE: $00
    db $10                                        ; $5FEF: $10
    ld [bc], a                                    ; $5FF0: $02
    nop                                           ; $5FF1: $00
    ld [bc], a                                    ; $5FF2: $02
    ldh a, [$FF3A]                                ; $5FF3: $F0 $3A
    ldh [rNR14], a                                ; $5FF5: $E0 $14
    ret nc                                        ; $5FF7: $D0

    dec bc                                        ; $5FF8: $0B
    ret nz                                        ; $5FF9: $C0

    inc d                                         ; $5FFA: $14
    or b                                          ; $5FFB: $B0
    ld a, [hl-]                                   ; $5FFC: $3A
    and b                                         ; $5FFD: $A0
    dec d                                         ; $5FFE: $15
    sub b                                         ; $5FFF: $90
    dec bc                                        ; $6000: $0B
    add b                                         ; $6001: $80
    inc d                                         ; $6002: $14
    ld [hl], b                                    ; $6003: $70
    dec d                                         ; $6004: $15
    ld h, b                                       ; $6005: $60
    ld a, [hl-]                                   ; $6006: $3A
    ld d, b                                       ; $6007: $50
    dec bc                                        ; $6008: $0B
    ld b, b                                       ; $6009: $40
    dec d                                         ; $600A: $15
    jr nc, jr_03F_6018                            ; $600B: $30 $0B

    jr nz, jr_03F_600F                            ; $600D: $20 $00

jr_03F_600F:
    db $10                                        ; $600F: $10
    ld [bc], a                                    ; $6010: $02
    nop                                           ; $6011: $00
    ld [bc], a                                    ; $6012: $02
    ldh a, [$FF3B]                                ; $6013: $F0 $3B
    ldh [$FF3C], a                                ; $6015: $E0 $3C
    ret nc                                        ; $6017: $D0

jr_03F_6018:
    dec bc                                        ; $6018: $0B
    ret nz                                        ; $6019: $C0

    inc a                                         ; $601A: $3C
    or b                                          ; $601B: $B0
    dec sp                                        ; $601C: $3B
    and b                                         ; $601D: $A0
    dec bc                                        ; $601E: $0B
    sub b                                         ; $601F: $90
    inc a                                         ; $6020: $3C
    add b                                         ; $6021: $80
    dec bc                                        ; $6022: $0B
    ld [hl], b                                    ; $6023: $70
    dec sp                                        ; $6024: $3B
    ld h, b                                       ; $6025: $60
    inc a                                         ; $6026: $3C
    ld d, b                                       ; $6027: $50
    dec b                                         ; $6028: $05
    ld b, b                                       ; $6029: $40
    inc a                                         ; $602A: $3C
    jr nc, jr_03F_6031                            ; $602B: $30 $04

    jr nz, jr_03F_602F                            ; $602D: $20 $00

jr_03F_602F:
    db $10                                        ; $602F: $10
    ld [bc], a                                    ; $6030: $02

jr_03F_6031:
    nop                                           ; $6031: $00
    ld [bc], a                                    ; $6032: $02
    ldh a, [rNR50]                                ; $6033: $F0 $24
    ldh [rDIV], a                                 ; $6035: $E0 $04
    ret nc                                        ; $6037: $D0

    inc hl                                        ; $6038: $23
    ret nz                                        ; $6039: $C0

    inc hl                                        ; $603A: $23
    or b                                          ; $603B: $B0
    inc hl                                        ; $603C: $23
    and b                                         ; $603D: $A0
    inc b                                         ; $603E: $04
    sub b                                         ; $603F: $90
    inc hl                                        ; $6040: $23
    add b                                         ; $6041: $80
    inc hl                                        ; $6042: $23
    ld [hl], b                                    ; $6043: $70
    inc hl                                        ; $6044: $23
    ld h, b                                       ; $6045: $60
    inc b                                         ; $6046: $04
    ld d, b                                       ; $6047: $50
    inc hl                                        ; $6048: $23
    ld b, b                                       ; $6049: $40

jr_03F_604A:
    inc b                                         ; $604A: $04
    jr nc, jr_03F_6051                            ; $604B: $30 $04

    jr nz, jr_03F_604F                            ; $604D: $20 $00

jr_03F_604F:
    db $10                                        ; $604F: $10
    ld [bc], a                                    ; $6050: $02

jr_03F_6051:
    nop                                           ; $6051: $00
    ld [bc], a                                    ; $6052: $02
    ldh a, [$FF0A]                                ; $6053: $F0 $0A
    ldh [$FF08], a                                ; $6055: $E0 $08
    ret nc                                        ; $6057: $D0

    inc a                                         ; $6058: $3C
    ret nz                                        ; $6059: $C0

    ld [$3CB0], sp                                ; $605A: $08 $B0 $3C
    and b                                         ; $605D: $A0
    ld [$3C90], sp                                ; $605E: $08 $90 $3C
    add b                                         ; $6061: $80
    inc a                                         ; $6062: $3C
    ld [hl], b                                    ; $6063: $70
    ld [$0460], sp                                ; $6064: $08 $60 $04
    ld d, b                                       ; $6067: $50
    inc a                                         ; $6068: $3C
    ld b, b                                       ; $6069: $40
    ld [$0430], sp                                ; $606A: $08 $30 $04
    jr nz, jr_03F_606F                            ; $606D: $20 $00

jr_03F_606F:
    db $10                                        ; $606F: $10
    ld [bc], a                                    ; $6070: $02
    nop                                           ; $6071: $00
    ld [bc], a                                    ; $6072: $02
    ldh a, [rNR50]                                ; $6073: $F0 $24
    ldh a, [rNR50]                                ; $6075: $F0 $24
    ldh [$FF08], a                                ; $6077: $E0 $08
    ret nc                                        ; $6079: $D0

    ld [$0AC0], sp                                ; $607A: $08 $C0 $0A
    or b                                          ; $607D: $B0
    ld [$04A0], sp                                ; $607E: $08 $A0 $04

jr_03F_6081:
    sub b                                         ; $6081: $90
    ld [$0480], sp                                ; $6082: $08 $80 $04
    ld [hl], b                                    ; $6085: $70
    ld [$0460], sp                                ; $6086: $08 $60 $04
    ld d, b                                       ; $6089: $50
    ld [$0840], sp                                ; $608A: $08 $40 $08

jr_03F_608D:
    jr nc, jr_03F_6093                            ; $608D: $30 $04

    jr nz, jr_03F_6091                            ; $608F: $20 $00

jr_03F_6091:
    db $10                                        ; $6091: $10
    ld [bc], a                                    ; $6092: $02

jr_03F_6093:
    nop                                           ; $6093: $00
    ld [bc], a                                    ; $6094: $02
    ldh a, [$FF08]                                ; $6095: $F0 $08
    ldh [$FF0A], a                                ; $6097: $E0 $0A
    ret nc                                        ; $6099: $D0

    inc a                                         ; $609A: $3C
    ret nz                                        ; $609B: $C0

    ld [$3CB0], sp                                ; $609C: $08 $B0 $3C
    and b                                         ; $609F: $A0
    ld [$3C90], sp                                ; $60A0: $08 $90 $3C
    add b                                         ; $60A3: $80
    ld [$3C70], sp                                ; $60A4: $08 $70 $3C
    ld h, b                                       ; $60A7: $60
    ld [$0450], sp                                ; $60A8: $08 $50 $04
    ld b, b                                       ; $60AB: $40
    inc a                                         ; $60AC: $3C
    jr nc, jr_03F_60B3                            ; $60AD: $30 $04

    jr nz, jr_03F_60B1                            ; $60AF: $20 $00

jr_03F_60B1:
    db $10                                        ; $60B1: $10
    ld [bc], a                                    ; $60B2: $02

jr_03F_60B3:
    nop                                           ; $60B3: $00
    ld [bc], a                                    ; $60B4: $02
    jr z, jr_03F_608D                             ; $60B5: $28 $D6

    ld h, b                                       ; $60B7: $60
    jr c, jr_03F_604A                             ; $60B8: $38 $90

    or $60                                        ; $60BA: $F6 $60
    ld d, $61                                     ; $60BC: $16 $61
    jr z, @+$4A                                   ; $60BE: $28 $48

    ld [hl], $61                                  ; $60C0: $36 $61
    ld d, [hl]                                    ; $60C2: $56
    ld h, c                                       ; $60C3: $61
    halt                                          ; $60C4: $76
    ld h, c                                       ; $60C5: $61
    sub [hl]                                      ; $60C6: $96
    ld h, c                                       ; $60C7: $61
    ld b, b                                       ; $60C8: $40
    ld [hl], b                                    ; $60C9: $70
    or [hl]                                       ; $60CA: $B6
    ld h, c                                       ; $60CB: $61
    sub $61                                       ; $60CC: $D6 $61
    or $61                                        ; $60CE: $F6 $61
    ld d, $62                                     ; $60D0: $16 $62
    ld [hl], $62                                  ; $60D2: $36 $62
    ld d, [hl]                                    ; $60D4: $56
    ld h, d                                       ; $60D5: $62
    ldh a, [rNR50]                                ; $60D6: $F0 $24
    ldh [rNR50], a                                ; $60D8: $E0 $24
    ret nc                                        ; $60DA: $D0

    jr nz, @-$3E                                  ; $60DB: $20 $C0

    inc h                                         ; $60DD: $24
    or b                                          ; $60DE: $B0
    jr nz, jr_03F_6081                            ; $60DF: $20 $A0

    inc h                                         ; $60E1: $24
    sub b                                         ; $60E2: $90
    jr nz, @-$7E                                  ; $60E3: $20 $80

    inc hl                                        ; $60E5: $23
    ld [hl], b                                    ; $60E6: $70
    jr nz, jr_03F_6149                            ; $60E7: $20 $60

    inc hl                                        ; $60E9: $23
    ld d, b                                       ; $60EA: $50
    jr nz, jr_03F_612D                            ; $60EB: $20 $40

    ld [de], a                                    ; $60ED: $12
    jr nc, @+$14                                  ; $60EE: $30 $12

    jr nz, jr_03F_6103                            ; $60F0: $20 $11

    db $10                                        ; $60F2: $10
    stop                                          ; $60F3: $10 $00
    nop                                           ; $60F5: $00
    ldh a, [rTMA]                                 ; $60F6: $F0 $06
    ldh [rTMA], a                                 ; $60F8: $E0 $06
    ret nc                                        ; $60FA: $D0

    ld b, $C0                                     ; $60FB: $06 $C0
    ld b, $B0                                     ; $60FD: $06 $B0
    ld b, $A0                                     ; $60FF: $06 $A0
    ld b, $90                                     ; $6101: $06 $90

jr_03F_6103:
    ld b, $80                                     ; $6103: $06 $80
    ld b, $70                                     ; $6105: $06 $70
    ld b, $60                                     ; $6107: $06 $60
    ld b, $50                                     ; $6109: $06 $50
    ld b, $40                                     ; $610B: $06 $40
    ld b, $30                                     ; $610D: $06 $30
    ld b, $20                                     ; $610F: $06 $20
    nop                                           ; $6111: $00
    db $10                                        ; $6112: $10
    ld [bc], a                                    ; $6113: $02
    nop                                           ; $6114: $00
    ld [bc], a                                    ; $6115: $02
    ldh a, [rNR23]                                ; $6116: $F0 $18
    ldh [rNR24], a                                ; $6118: $E0 $19
    ret nc                                        ; $611A: $D0

    dec b                                         ; $611B: $05
    ret nz                                        ; $611C: $C0

    ld [hl+], a                                   ; $611D: $22
    or b                                          ; $611E: $B0
    inc e                                         ; $611F: $1C
    and b                                         ; $6120: $A0
    dec e                                         ; $6121: $1D
    sub b                                         ; $6122: $90
    dec b                                         ; $6123: $05
    add b                                         ; $6124: $80
    ld [hl+], a                                   ; $6125: $22
    ld [hl], b                                    ; $6126: $70
    dec b                                         ; $6127: $05
    ld h, b                                       ; $6128: $60
    jr jr_03F_617B                                ; $6129: $18 $50

    add hl, de                                    ; $612B: $19
    ld b, b                                       ; $612C: $40

jr_03F_612D:
    dec b                                         ; $612D: $05
    jr nc, jr_03F_6135                            ; $612E: $30 $05

    jr nz, jr_03F_6132                            ; $6130: $20 $00

jr_03F_6132:
    db $10                                        ; $6132: $10
    ld [bc], a                                    ; $6133: $02
    nop                                           ; $6134: $00

jr_03F_6135:
    ld [bc], a                                    ; $6135: $02
    ldh a, [rTIMA]                                ; $6136: $F0 $05
    ldh [rTIMA], a                                ; $6138: $E0 $05
    ret nc                                        ; $613A: $D0

    dec b                                         ; $613B: $05
    ret nz                                        ; $613C: $C0

    dec b                                         ; $613D: $05
    or b                                          ; $613E: $B0
    dec b                                         ; $613F: $05
    and b                                         ; $6140: $A0
    dec b                                         ; $6141: $05
    sub b                                         ; $6142: $90
    dec b                                         ; $6143: $05
    add b                                         ; $6144: $80
    dec b                                         ; $6145: $05
    ld [hl], b                                    ; $6146: $70
    dec b                                         ; $6147: $05
    ld h, b                                       ; $6148: $60

jr_03F_6149:
    dec b                                         ; $6149: $05
    ld d, b                                       ; $614A: $50
    dec b                                         ; $614B: $05
    ld b, b                                       ; $614C: $40
    dec b                                         ; $614D: $05
    jr nc, jr_03F_6155                            ; $614E: $30 $05

    jr nz, jr_03F_6152                            ; $6150: $20 $00

jr_03F_6152:
    db $10                                        ; $6152: $10
    ld [bc], a                                    ; $6153: $02
    nop                                           ; $6154: $00

jr_03F_6155:
    ld [bc], a                                    ; $6155: $02
    ldh a, [rTMA]                                 ; $6156: $F0 $06
    ldh [rTMA], a                                 ; $6158: $E0 $06
    ret nc                                        ; $615A: $D0

    ld b, $C0                                     ; $615B: $06 $C0
    ld b, $B0                                     ; $615D: $06 $B0
    ld b, $A0                                     ; $615F: $06 $A0
    ld b, $90                                     ; $6161: $06 $90
    ld b, $80                                     ; $6163: $06 $80
    ld b, $70                                     ; $6165: $06 $70
    ld b, $60                                     ; $6167: $06 $60
    ld b, $50                                     ; $6169: $06 $50
    ld b, $40                                     ; $616B: $06 $40
    ld b, $30                                     ; $616D: $06 $30

jr_03F_616F:
    ld b, $20                                     ; $616F: $06 $20
    nop                                           ; $6171: $00
    db $10                                        ; $6172: $10
    ld [bc], a                                    ; $6173: $02
    nop                                           ; $6174: $00
    ld [bc], a                                    ; $6175: $02
    ldh a, [rTIMA]                                ; $6176: $F0 $05
    ldh [rTIMA], a                                ; $6178: $E0 $05
    ret nc                                        ; $617A: $D0

jr_03F_617B:
    dec b                                         ; $617B: $05
    ret nz                                        ; $617C: $C0

    dec b                                         ; $617D: $05
    or b                                          ; $617E: $B0
    dec b                                         ; $617F: $05
    and b                                         ; $6180: $A0
    dec b                                         ; $6181: $05
    sub b                                         ; $6182: $90
    dec b                                         ; $6183: $05
    add b                                         ; $6184: $80
    dec b                                         ; $6185: $05
    ld [hl], b                                    ; $6186: $70
    dec b                                         ; $6187: $05
    ld h, b                                       ; $6188: $60
    dec b                                         ; $6189: $05
    ld d, b                                       ; $618A: $50
    dec b                                         ; $618B: $05
    ld b, b                                       ; $618C: $40
    dec b                                         ; $618D: $05
    jr nc, jr_03F_6195                            ; $618E: $30 $05

    jr nz, jr_03F_6192                            ; $6190: $20 $00

jr_03F_6192:
    db $10                                        ; $6192: $10
    ld [bc], a                                    ; $6193: $02
    nop                                           ; $6194: $00

jr_03F_6195:
    ld [bc], a                                    ; $6195: $02
    ldh a, [rTMA]                                 ; $6196: $F0 $06
    ldh [rTMA], a                                 ; $6198: $E0 $06
    ret nc                                        ; $619A: $D0

    ld b, $C0                                     ; $619B: $06 $C0
    ld b, $B0                                     ; $619D: $06 $B0
    ld b, $A0                                     ; $619F: $06 $A0
    ld b, $90                                     ; $61A1: $06 $90
    ld b, $80                                     ; $61A3: $06 $80
    inc b                                         ; $61A5: $04
    ld [hl], b                                    ; $61A6: $70
    ld b, $60                                     ; $61A7: $06 $60
    ld b, $50                                     ; $61A9: $06 $50
    ld b, $40                                     ; $61AB: $06 $40
    inc b                                         ; $61AD: $04
    jr nc, jr_03F_61B6                            ; $61AE: $30 $06

    jr nz, jr_03F_61B2                            ; $61B0: $20 $00

jr_03F_61B2:
    db $10                                        ; $61B2: $10
    ld [bc], a                                    ; $61B3: $02
    nop                                           ; $61B4: $00
    ld [bc], a                                    ; $61B5: $02

jr_03F_61B6:
    ldh a, [$FF39]                                ; $61B6: $F0 $39
    ldh [$FF39], a                                ; $61B8: $E0 $39
    ret nc                                        ; $61BA: $D0

    add hl, de                                    ; $61BB: $19
    ret nz                                        ; $61BC: $C0

jr_03F_61BD:
    jr jr_03F_616F                                ; $61BD: $18 $B0

    add hl, de                                    ; $61BF: $19
    and b                                         ; $61C0: $A0

jr_03F_61C1:
    add hl, hl                                    ; $61C1: $29
    sub b                                         ; $61C2: $90
    add hl, de                                    ; $61C3: $19
    add b                                         ; $61C4: $80
    jr @+$72                                      ; $61C5: $18 $70

    add hl, sp                                    ; $61C7: $39
    ld h, b                                       ; $61C8: $60
    jr jr_03F_621B                                ; $61C9: $18 $50

    add hl, hl                                    ; $61CB: $29
    ld b, b                                       ; $61CC: $40
    nop                                           ; $61CD: $00
    jr nc, jr_03F_61D0                            ; $61CE: $30 $00

jr_03F_61D0:
    jr nz, jr_03F_61D2                            ; $61D0: $20 $00

jr_03F_61D2:
    db $10                                        ; $61D2: $10
    ld [bc], a                                    ; $61D3: $02
    nop                                           ; $61D4: $00
    ld [bc], a                                    ; $61D5: $02
    ldh a, [rNR12]                                ; $61D6: $F0 $12
    ldh [rNR44], a                                ; $61D8: $E0 $23
    ret nc                                        ; $61DA: $D0

    inc a                                         ; $61DB: $3C
    ret nz                                        ; $61DC: $C0

    ld [de], a                                    ; $61DD: $12
    or b                                          ; $61DE: $B0
    inc hl                                        ; $61DF: $23
    and b                                         ; $61E0: $A0
    inc a                                         ; $61E1: $3C
    sub b                                         ; $61E2: $90
    ld [de], a                                    ; $61E3: $12
    add b                                         ; $61E4: $80
    inc hl                                        ; $61E5: $23
    ld [hl], b                                    ; $61E6: $70
    inc a                                         ; $61E7: $3C
    ld h, b                                       ; $61E8: $60
    ld [de], a                                    ; $61E9: $12
    ld d, b                                       ; $61EA: $50
    inc hl                                        ; $61EB: $23
    ld b, b                                       ; $61EC: $40
    inc a                                         ; $61ED: $3C
    jr nc, jr_03F_61F4                            ; $61EE: $30 $04

    jr nz, jr_03F_61F2                            ; $61F0: $20 $00

jr_03F_61F2:
    db $10                                        ; $61F2: $10
    ld [bc], a                                    ; $61F3: $02

jr_03F_61F4:
    nop                                           ; $61F4: $00
    ld [bc], a                                    ; $61F5: $02
    ldh a, [rNR24]                                ; $61F6: $F0 $19
    ldh [rBGP], a                                 ; $61F8: $E0 $47
    ret nc                                        ; $61FA: $D0

    jr jr_03F_61BD                                ; $61FB: $18 $C0

    ld b, a                                       ; $61FD: $47
    or b                                          ; $61FE: $B0
    inc a                                         ; $61FF: $3C
    and b                                         ; $6200: $A0
    ld b, a                                       ; $6201: $47
    sub b                                         ; $6202: $90
    inc a                                         ; $6203: $3C
    add b                                         ; $6204: $80
    add hl, de                                    ; $6205: $19
    ld [hl], b                                    ; $6206: $70
    ld b, a                                       ; $6207: $47
    ld h, b                                       ; $6208: $60
    inc a                                         ; $6209: $3C
    ld d, b                                       ; $620A: $50
    inc b                                         ; $620B: $04
    ld b, b                                       ; $620C: $40
    inc a                                         ; $620D: $3C
    jr nc, jr_03F_6210                            ; $620E: $30 $00

jr_03F_6210:
    jr nz, jr_03F_6212                            ; $6210: $20 $00

jr_03F_6212:
    db $10                                        ; $6212: $10
    ld [bc], a                                    ; $6213: $02
    nop                                           ; $6214: $00
    ld [bc], a                                    ; $6215: $02
    ldh a, [rNR24]                                ; $6216: $F0 $19
    ldh [rDIV], a                                 ; $6218: $E0 $04
    ret nc                                        ; $621A: $D0

jr_03F_621B:
    ld b, a                                       ; $621B: $47
    ret nz                                        ; $621C: $C0

    inc a                                         ; $621D: $3C
    or b                                          ; $621E: $B0
    jr jr_03F_61C1                                ; $621F: $18 $A0

    inc a                                         ; $6221: $3C
    sub b                                         ; $6222: $90
    inc b                                         ; $6223: $04
    add b                                         ; $6224: $80
    inc a                                         ; $6225: $3C
    ld [hl], b                                    ; $6226: $70
    ld b, a                                       ; $6227: $47
    ld h, b                                       ; $6228: $60
    inc a                                         ; $6229: $3C
    ld d, b                                       ; $622A: $50
    ld b, a                                       ; $622B: $47
    ld b, b                                       ; $622C: $40
    inc b                                         ; $622D: $04
    jr nc, jr_03F_626C                            ; $622E: $30 $3C

    jr nz, jr_03F_6232                            ; $6230: $20 $00

jr_03F_6232:
    db $10                                        ; $6232: $10
    ld [bc], a                                    ; $6233: $02
    nop                                           ; $6234: $00
    ld [bc], a                                    ; $6235: $02
    ldh a, [$FF08]                                ; $6236: $F0 $08
    ldh [rNR32], a                                ; $6238: $E0 $1C
    ret nc                                        ; $623A: $D0

    ld [hl+], a                                   ; $623B: $22
    ret nz                                        ; $623C: $C0

    inc a                                         ; $623D: $3C
    or b                                          ; $623E: $B0
    ld a, [bc]                                    ; $623F: $0A
    and b                                         ; $6240: $A0
    dec e                                         ; $6241: $1D
    sub b                                         ; $6242: $90
    inc a                                         ; $6243: $3C
    add b                                         ; $6244: $80
    inc a                                         ; $6245: $3C
    ld [hl], b                                    ; $6246: $70
    ld [$0460], sp                                ; $6247: $08 $60 $04
    ld d, b                                       ; $624A: $50
    ld [hl+], a                                   ; $624B: $22
    ld b, b                                       ; $624C: $40
    inc a                                         ; $624D: $3C
    jr nc, jr_03F_6254                            ; $624E: $30 $04

    jr nz, jr_03F_6252                            ; $6250: $20 $00

jr_03F_6252:
    db $10                                        ; $6252: $10
    ld [bc], a                                    ; $6253: $02

jr_03F_6254:
    nop                                           ; $6254: $00
    ld [bc], a                                    ; $6255: $02
    ldh a, [$FF08]                                ; $6256: $F0 $08
    ldh [rNR43], a                                ; $6258: $E0 $22
    ret nc                                        ; $625A: $D0

    inc a                                         ; $625B: $3C
    ret nz                                        ; $625C: $C0

    ld [$3CB0], sp                                ; $625D: $08 $B0 $3C
    and b                                         ; $6260: $A0
    inc b                                         ; $6261: $04
    sub b                                         ; $6262: $90
    inc a                                         ; $6263: $3C
    add b                                         ; $6264: $80
    inc a                                         ; $6265: $3C
    ld [hl], b                                    ; $6266: $70
    inc b                                         ; $6267: $04
    ld h, b                                       ; $6268: $60
    ld [$3C50], sp                                ; $6269: $08 $50 $3C

jr_03F_626C:
    ld b, b                                       ; $626C: $40
    ld [$3C30], sp                                ; $626D: $08 $30 $3C
    jr nz, jr_03F_6272                            ; $6270: $20 $00

jr_03F_6272:
    db $10                                        ; $6272: $10
    ld [bc], a                                    ; $6273: $02
    nop                                           ; $6274: $00
    ld [bc], a                                    ; $6275: $02
    jr z, @-$67                                   ; $6276: $28 $97

    ld h, d                                       ; $6278: $62
    inc a                                         ; $6279: $3C
    sub b                                         ; $627A: $90
    or a                                          ; $627B: $B7
    ld h, d                                       ; $627C: $62
    rst RST_10                                    ; $627D: $D7
    ld h, d                                       ; $627E: $62
    jr z, @+$4A                                   ; $627F: $28 $48

    rst RST_30                                    ; $6281: $F7
    ld h, d                                       ; $6282: $62
    rla                                           ; $6283: $17
    ld h, e                                       ; $6284: $63
    scf                                           ; $6285: $37
    ld h, e                                       ; $6286: $63
    ld d, a                                       ; $6287: $57
    ld h, e                                       ; $6288: $63
    jr z, jr_03F_62DB                             ; $6289: $28 $50

    ld [hl], a                                    ; $628B: $77
    ld h, e                                       ; $628C: $63
    sub a                                         ; $628D: $97
    ld h, e                                       ; $628E: $63
    or a                                          ; $628F: $B7
    ld h, e                                       ; $6290: $63
    rst RST_10                                    ; $6291: $D7
    ld h, e                                       ; $6292: $63
    rst RST_30                                    ; $6293: $F7
    ld h, e                                       ; $6294: $63
    rla                                           ; $6295: $17
    ld h, h                                       ; $6296: $64
    ldh a, [rNR50]                                ; $6297: $F0 $24
    ldh [rNR50], a                                ; $6299: $E0 $24
    ret nc                                        ; $629B: $D0

    inc h                                         ; $629C: $24
    ret nz                                        ; $629D: $C0

    inc hl                                        ; $629E: $23
    or b                                          ; $629F: $B0
    inc hl                                        ; $62A0: $23
    and b                                         ; $62A1: $A0
    inc hl                                        ; $62A2: $23
    sub b                                         ; $62A3: $90
    ld [hl+], a                                   ; $62A4: $22
    add b                                         ; $62A5: $80
    jr nz, @+$72                                  ; $62A6: $20 $70

    ld [hl+], a                                   ; $62A8: $22
    ld h, b                                       ; $62A9: $60
    jr nz, jr_03F_62FC                            ; $62AA: $20 $50

    ld [hl+], a                                   ; $62AC: $22
    ld b, b                                       ; $62AD: $40
    jr nz, jr_03F_62E0                            ; $62AE: $20 $30

    ld [hl+], a                                   ; $62B0: $22
    jr nz, jr_03F_62D3                            ; $62B1: $20 $20

    db $10                                        ; $62B3: $10
    stop                                          ; $62B4: $10 $00
    db $10                                        ; $62B6: $10
    ldh a, [rTMA]                                 ; $62B7: $F0 $06
    ldh [rTMA], a                                 ; $62B9: $E0 $06
    ret nc                                        ; $62BB: $D0

    ld b, $C0                                     ; $62BC: $06 $C0
    ld b, $B0                                     ; $62BE: $06 $B0
    ld b, $A0                                     ; $62C0: $06 $A0
    ld b, $90                                     ; $62C2: $06 $90
    ld b, $80                                     ; $62C4: $06 $80
    ld b, $70                                     ; $62C6: $06 $70
    ld b, $60                                     ; $62C8: $06 $60
    ld b, $50                                     ; $62CA: $06 $50
    ld b, $40                                     ; $62CC: $06 $40
    ld b, $30                                     ; $62CE: $06 $30
    ld b, $20                                     ; $62D0: $06 $20
    nop                                           ; $62D2: $00

jr_03F_62D3:
    db $10                                        ; $62D3: $10
    ld [bc], a                                    ; $62D4: $02
    nop                                           ; $62D5: $00
    ld [bc], a                                    ; $62D6: $02
    ldh a, [$FF2F]                                ; $62D7: $F0 $2F
    ldh [$FF2F], a                                ; $62D9: $E0 $2F

jr_03F_62DB:
    ret nc                                        ; $62DB: $D0

    dec b                                         ; $62DC: $05
    ret nz                                        ; $62DD: $C0

    ld [hl+], a                                   ; $62DE: $22
    or b                                          ; $62DF: $B0

jr_03F_62E0:
    dec b                                         ; $62E0: $05
    and b                                         ; $62E1: $A0
    cpl                                           ; $62E2: $2F
    sub b                                         ; $62E3: $90
    cpl                                           ; $62E4: $2F
    add b                                         ; $62E5: $80
    dec b                                         ; $62E6: $05
    ld [hl], b                                    ; $62E7: $70
    cpl                                           ; $62E8: $2F
    ld h, b                                       ; $62E9: $60
    dec b                                         ; $62EA: $05
    ld d, b                                       ; $62EB: $50
    cpl                                           ; $62EC: $2F
    ld b, b                                       ; $62ED: $40
    ld [hl+], a                                   ; $62EE: $22
    jr nc, jr_03F_62F6                            ; $62EF: $30 $05

    jr nz, jr_03F_62F3                            ; $62F1: $20 $00

jr_03F_62F3:
    db $10                                        ; $62F3: $10
    ld [bc], a                                    ; $62F4: $02
    nop                                           ; $62F5: $00

jr_03F_62F6:
    ld [bc], a                                    ; $62F6: $02
    ldh a, [rTIMA]                                ; $62F7: $F0 $05
    ldh [rTIMA], a                                ; $62F9: $E0 $05
    ret nc                                        ; $62FB: $D0

jr_03F_62FC:
    dec b                                         ; $62FC: $05
    ret nz                                        ; $62FD: $C0

    dec b                                         ; $62FE: $05
    or b                                          ; $62FF: $B0
    dec b                                         ; $6300: $05
    and b                                         ; $6301: $A0
    dec b                                         ; $6302: $05
    sub b                                         ; $6303: $90
    dec b                                         ; $6304: $05
    add b                                         ; $6305: $80
    dec b                                         ; $6306: $05
    ld [hl], b                                    ; $6307: $70
    dec b                                         ; $6308: $05
    ld h, b                                       ; $6309: $60
    dec b                                         ; $630A: $05
    ld d, b                                       ; $630B: $50
    dec b                                         ; $630C: $05
    ld b, b                                       ; $630D: $40
    dec b                                         ; $630E: $05
    jr nc, jr_03F_6316                            ; $630F: $30 $05

    jr nz, jr_03F_6313                            ; $6311: $20 $00

jr_03F_6313:
    db $10                                        ; $6313: $10
    ld [bc], a                                    ; $6314: $02
    nop                                           ; $6315: $00

jr_03F_6316:
    ld [bc], a                                    ; $6316: $02
    ldh a, [rTMA]                                 ; $6317: $F0 $06
    ldh [rTMA], a                                 ; $6319: $E0 $06
    ret nc                                        ; $631B: $D0

    ld b, $C0                                     ; $631C: $06 $C0
    ld b, $B0                                     ; $631E: $06 $B0
    ld b, $A0                                     ; $6320: $06 $A0
    ld b, $90                                     ; $6322: $06 $90
    ld b, $80                                     ; $6324: $06 $80
    ld b, $70                                     ; $6326: $06 $70
    ld b, $60                                     ; $6328: $06 $60
    ld b, $50                                     ; $632A: $06 $50
    ld b, $40                                     ; $632C: $06 $40
    ld b, $30                                     ; $632E: $06 $30
    ld b, $20                                     ; $6330: $06 $20
    nop                                           ; $6332: $00
    db $10                                        ; $6333: $10
    ld [bc], a                                    ; $6334: $02
    nop                                           ; $6335: $00
    ld [bc], a                                    ; $6336: $02
    ldh a, [rTIMA]                                ; $6337: $F0 $05
    ldh [rTIMA], a                                ; $6339: $E0 $05
    ret nc                                        ; $633B: $D0

    dec bc                                        ; $633C: $0B
    ret nz                                        ; $633D: $C0

    dec b                                         ; $633E: $05
    or b                                          ; $633F: $B0
    dec b                                         ; $6340: $05
    and b                                         ; $6341: $A0
    dec b                                         ; $6342: $05
    sub b                                         ; $6343: $90
    dec b                                         ; $6344: $05
    add b                                         ; $6345: $80
    dec b                                         ; $6346: $05
    ld [hl], b                                    ; $6347: $70
    dec b                                         ; $6348: $05
    ld h, b                                       ; $6349: $60
    inc b                                         ; $634A: $04
    ld d, b                                       ; $634B: $50
    dec b                                         ; $634C: $05
    ld b, b                                       ; $634D: $40
    inc b                                         ; $634E: $04
    jr nc, jr_03F_6356                            ; $634F: $30 $05

    jr nz, jr_03F_6353                            ; $6351: $20 $00

jr_03F_6353:
    db $10                                        ; $6353: $10
    ld [bc], a                                    ; $6354: $02
    nop                                           ; $6355: $00

jr_03F_6356:
    ld [bc], a                                    ; $6356: $02
    ldh a, [rTMA]                                 ; $6357: $F0 $06
    ldh [rTMA], a                                 ; $6359: $E0 $06
    ret nc                                        ; $635B: $D0

    dec bc                                        ; $635C: $0B
    ret nz                                        ; $635D: $C0

    ld b, $B0                                     ; $635E: $06 $B0
    ld b, $A0                                     ; $6360: $06 $A0
    ld b, $90                                     ; $6362: $06 $90
    ld b, $80                                     ; $6364: $06 $80
    ld b, $70                                     ; $6366: $06 $70
    ld b, $60                                     ; $6368: $06 $60
    inc b                                         ; $636A: $04
    ld d, b                                       ; $636B: $50
    ld b, $40                                     ; $636C: $06 $40
    inc b                                         ; $636E: $04
    jr nc, jr_03F_6377                            ; $636F: $30 $06

    jr nz, jr_03F_6373                            ; $6371: $20 $00

jr_03F_6373:
    db $10                                        ; $6373: $10
    ld [bc], a                                    ; $6374: $02
    nop                                           ; $6375: $00
    ld [bc], a                                    ; $6376: $02

jr_03F_6377:
    ldh a, [rNR44]                                ; $6377: $F0 $23
    ldh [rNR44], a                                ; $6379: $E0 $23
    ret nc                                        ; $637B: $D0

    inc hl                                        ; $637C: $23
    ret nz                                        ; $637D: $C0

    db $10                                        ; $637E: $10
    or b                                          ; $637F: $B0
    ld de, $0BA0                                  ; $6380: $11 $A0 $0B
    sub b                                         ; $6383: $90
    ld de, $1080                                  ; $6384: $11 $80 $10
    ld [hl], b                                    ; $6387: $70
    db $10                                        ; $6388: $10
    ld h, b                                       ; $6389: $60
    ld de, $1050                                  ; $638A: $11 $50 $10
    ld b, b                                       ; $638D: $40
    dec bc                                        ; $638E: $0B
    jr nc, jr_03F_63A1                            ; $638F: $30 $10

    jr nz, jr_03F_6393                            ; $6391: $20 $00

jr_03F_6393:
    db $10                                        ; $6393: $10
    ld [bc], a                                    ; $6394: $02
    nop                                           ; $6395: $00
    ld [bc], a                                    ; $6396: $02
    ldh a, [rNR43]                                ; $6397: $F0 $22
    ldh [rNR43], a                                ; $6399: $E0 $22
    ret nc                                        ; $639B: $D0

    ld [hl+], a                                   ; $639C: $22
    ret nz                                        ; $639D: $C0

    ld [hl+], a                                   ; $639E: $22
    or b                                          ; $639F: $B0
    db $10                                        ; $63A0: $10

jr_03F_63A1:
    and b                                         ; $63A1: $A0
    ld de, $2290                                  ; $63A2: $11 $90 $22
    add b                                         ; $63A5: $80
    ld [hl+], a                                   ; $63A6: $22
    ld [hl], b                                    ; $63A7: $70
    db $10                                        ; $63A8: $10
    ld h, b                                       ; $63A9: $60
    ld de, $1050                                  ; $63AA: $11 $50 $10
    ld b, b                                       ; $63AD: $40
    ld de, $1030                                  ; $63AE: $11 $30 $10
    jr nz, jr_03F_63B3                            ; $63B1: $20 $00

jr_03F_63B3:
    db $10                                        ; $63B3: $10
    ld [bc], a                                    ; $63B4: $02
    nop                                           ; $63B5: $00
    ld [bc], a                                    ; $63B6: $02
    ldh a, [rNR43]                                ; $63B7: $F0 $22
    ldh [rNR43], a                                ; $63B9: $E0 $22
    ret nc                                        ; $63BB: $D0

    ld c, c                                       ; $63BC: $49
    ret nz                                        ; $63BD: $C0

    ld de, $0AB0                                  ; $63BE: $11 $B0 $0A
    and b                                         ; $63C1: $A0
    db $10                                        ; $63C2: $10
    sub b                                         ; $63C3: $90
    dec bc                                        ; $63C4: $0B
    add b                                         ; $63C5: $80
    dec b                                         ; $63C6: $05
    ld [hl], b                                    ; $63C7: $70
    ld c, c                                       ; $63C8: $49
    ld h, b                                       ; $63C9: $60
    dec bc                                        ; $63CA: $0B
    ld d, b                                       ; $63CB: $50
    inc b                                         ; $63CC: $04
    ld b, b                                       ; $63CD: $40
    ld a, [bc]                                    ; $63CE: $0A
    jr nc, jr_03F_63E1                            ; $63CF: $30 $10

    jr nz, jr_03F_63D3                            ; $63D1: $20 $00

jr_03F_63D3:
    db $10                                        ; $63D3: $10
    ld [bc], a                                    ; $63D4: $02
    nop                                           ; $63D5: $00
    ld [bc], a                                    ; $63D6: $02
    ldh a, [rNR43]                                ; $63D7: $F0 $22
    ldh [rNR43], a                                ; $63D9: $E0 $22
    ret nc                                        ; $63DB: $D0

    ld c, c                                       ; $63DC: $49
    ret nz                                        ; $63DD: $C0

    ld de, $0AB0                                  ; $63DE: $11 $B0 $0A

jr_03F_63E1:
    and b                                         ; $63E1: $A0
    db $10                                        ; $63E2: $10
    sub b                                         ; $63E3: $90
    dec bc                                        ; $63E4: $0B
    add b                                         ; $63E5: $80
    db $10                                        ; $63E6: $10

jr_03F_63E7:
    ld [hl], b                                    ; $63E7: $70
    ld c, c                                       ; $63E8: $49
    ld h, b                                       ; $63E9: $60
    dec bc                                        ; $63EA: $0B
    ld d, b                                       ; $63EB: $50
    ld de, $0A40                                  ; $63EC: $11 $40 $0A
    jr nc, jr_03F_6401                            ; $63EF: $30 $10

    jr nz, jr_03F_63F3                            ; $63F1: $20 $00

jr_03F_63F3:
    db $10                                        ; $63F3: $10
    ld [bc], a                                    ; $63F4: $02
    nop                                           ; $63F5: $00
    ld [bc], a                                    ; $63F6: $02
    ldh a, [rNR50]                                ; $63F7: $F0 $24
    ldh [$FF0D], a                                ; $63F9: $E0 $0D
    ret nc                                        ; $63FB: $D0

    add hl, bc                                    ; $63FC: $09
    ret nz                                        ; $63FD: $C0

    ld [$23B0], sp                                ; $63FE: $08 $B0 $23

jr_03F_6401:
    and b                                         ; $6401: $A0
    ld [$4A90], sp                                ; $6402: $08 $90 $4A
    add b                                         ; $6405: $80
    ld [$0470], sp                                ; $6406: $08 $70 $04
    ld h, b                                       ; $6409: $60
    ld [$0950], sp                                ; $640A: $08 $50 $09
    ld b, b                                       ; $640D: $40
    inc b                                         ; $640E: $04
    jr nc, jr_03F_6416                            ; $640F: $30 $05

    jr nz, jr_03F_6413                            ; $6411: $20 $00

jr_03F_6413:
    stop                                          ; $6413: $10 $00
    nop                                           ; $6415: $00

jr_03F_6416:
    ld [bc], a                                    ; $6416: $02
    ldh a, [$FF08]                                ; $6417: $F0 $08
    ldh [$FF08], a                                ; $6419: $E0 $08
    ret nc                                        ; $641B: $D0

    dec c                                         ; $641C: $0D
    ret nz                                        ; $641D: $C0

    ld [$0DB0], sp                                ; $641E: $08 $B0 $0D
    and b                                         ; $6421: $A0
    add hl, bc                                    ; $6422: $09
    sub b                                         ; $6423: $90
    ld [$0980], sp                                ; $6424: $08 $80 $09
    ld [hl], b                                    ; $6427: $70
    dec b                                         ; $6428: $05
    ld h, b                                       ; $6429: $60
    ld [$0950], sp                                ; $642A: $08 $50 $09
    ld b, b                                       ; $642D: $40
    dec b                                         ; $642E: $05
    jr nc, jr_03F_6431                            ; $642F: $30 $00

jr_03F_6431:
    jr nz, jr_03F_643C                            ; $6431: $20 $09

    stop                                          ; $6433: $10 $00
    nop                                           ; $6435: $00
    ld [bc], a                                    ; $6436: $02
    jr z, @+$5A                                   ; $6437: $28 $58

    ld h, h                                       ; $6439: $64
    inc a                                         ; $643A: $3C
    sub b                                         ; $643B: $90

jr_03F_643C:
    ld a, b                                       ; $643C: $78
    ld h, h                                       ; $643D: $64
    sbc b                                         ; $643E: $98
    ld h, h                                       ; $643F: $64
    jr z, jr_03F_648A                             ; $6440: $28 $48

    cp b                                          ; $6442: $B8
    ld h, h                                       ; $6443: $64
    ret c                                         ; $6444: $D8

    ld h, h                                       ; $6445: $64
    ld hl, sp+$64                                 ; $6446: $F8 $64
    jr jr_03F_64AF                                ; $6448: $18 $65

    jr nz, jr_03F_649C                            ; $644A: $20 $50

    jr c, @+$67                                   ; $644C: $38 $65

    ld e, b                                       ; $644E: $58
    ld h, l                                       ; $644F: $65
    ld a, b                                       ; $6450: $78
    ld h, l                                       ; $6451: $65
    sbc b                                         ; $6452: $98
    ld h, l                                       ; $6453: $65
    cp b                                          ; $6454: $B8
    ld h, l                                       ; $6455: $65
    ret c                                         ; $6456: $D8

    ld h, l                                       ; $6457: $65
    ldh a, [rNR50]                                ; $6458: $F0 $24
    ldh [$FF2F], a                                ; $645A: $E0 $2F
    ret nc                                        ; $645C: $D0

    jr nc, @-$3E                                  ; $645D: $30 $C0

    cpl                                           ; $645F: $2F
    or b                                          ; $6460: $B0
    jr nc, @-$5E                                  ; $6461: $30 $A0

    cpl                                           ; $6463: $2F
    sub b                                         ; $6464: $90
    jr nc, jr_03F_63E7                            ; $6465: $30 $80

    cpl                                           ; $6467: $2F
    ld [hl], b                                    ; $6468: $70
    jr nc, jr_03F_64CB                            ; $6469: $30 $60

    ld [hl+], a                                   ; $646B: $22
    ld d, b                                       ; $646C: $50
    inc l                                         ; $646D: $2C
    ld b, b                                       ; $646E: $40
    inc l                                         ; $646F: $2C
    jr nc, jr_03F_649E                            ; $6470: $30 $2C

    jr nz, jr_03F_6496                            ; $6472: $20 $22

    db $10                                        ; $6474: $10
    inc de                                        ; $6475: $13
    nop                                           ; $6476: $00
    inc de                                        ; $6477: $13
    ldh a, [$FF0B]                                ; $6478: $F0 $0B
    ldh [$FF0B], a                                ; $647A: $E0 $0B
    ret nc                                        ; $647C: $D0

    dec bc                                        ; $647D: $0B
    ret nz                                        ; $647E: $C0

    dec bc                                        ; $647F: $0B
    or b                                          ; $6480: $B0
    dec bc                                        ; $6481: $0B
    and b                                         ; $6482: $A0

jr_03F_6483:
    dec bc                                        ; $6483: $0B
    sub b                                         ; $6484: $90
    dec bc                                        ; $6485: $0B
    add b                                         ; $6486: $80
    dec bc                                        ; $6487: $0B
    ld [hl], b                                    ; $6488: $70
    dec bc                                        ; $6489: $0B

jr_03F_648A:
    ld h, b                                       ; $648A: $60
    dec bc                                        ; $648B: $0B
    ld d, b                                       ; $648C: $50
    dec b                                         ; $648D: $05
    ld b, b                                       ; $648E: $40
    dec b                                         ; $648F: $05
    jr nc, jr_03F_6497                            ; $6490: $30 $05

    jr nz, @+$07                                  ; $6492: $20 $05

    db $10                                        ; $6494: $10
    dec b                                         ; $6495: $05

jr_03F_6496:
    nop                                           ; $6496: $00

jr_03F_6497:
    dec b                                         ; $6497: $05
    ldh a, [rNR43]                                ; $6498: $F0 $22
    ldh [rNR43], a                                ; $649A: $E0 $22

jr_03F_649C:
    ret nc                                        ; $649C: $D0

    ld [hl+], a                                   ; $649D: $22

jr_03F_649E:
    ret nz                                        ; $649E: $C0

    ld [hl+], a                                   ; $649F: $22
    or b                                          ; $64A0: $B0
    ld [hl+], a                                   ; $64A1: $22
    and b                                         ; $64A2: $A0
    ld [hl+], a                                   ; $64A3: $22
    sub b                                         ; $64A4: $90
    ld [hl+], a                                   ; $64A5: $22
    add b                                         ; $64A6: $80
    ld [hl+], a                                   ; $64A7: $22
    ld [hl], b                                    ; $64A8: $70
    ld [hl+], a                                   ; $64A9: $22
    ld h, b                                       ; $64AA: $60
    ld [hl+], a                                   ; $64AB: $22
    ld d, b                                       ; $64AC: $50
    ld [hl+], a                                   ; $64AD: $22
    ld b, b                                       ; $64AE: $40

jr_03F_64AF:
    ld [hl+], a                                   ; $64AF: $22
    jr nc, jr_03F_64D4                            ; $64B0: $30 $22

    jr nz, jr_03F_64D6                            ; $64B2: $20 $22

    db $10                                        ; $64B4: $10
    ld [hl+], a                                   ; $64B5: $22
    nop                                           ; $64B6: $00
    ld [hl+], a                                   ; $64B7: $22
    ldh a, [$FF2C]                                ; $64B8: $F0 $2C
    ldh [$FF2C], a                                ; $64BA: $E0 $2C
    ret nc                                        ; $64BC: $D0

    ld e, $C0                                     ; $64BD: $1E $C0
    ld e, $B0                                     ; $64BF: $1E $B0
    ld e, $A0                                     ; $64C1: $1E $A0
    inc l                                         ; $64C3: $2C
    sub b                                         ; $64C4: $90
    ld e, $80                                     ; $64C5: $1E $80
    ld e, $70                                     ; $64C7: $1E $70
    ld e, $60                                     ; $64C9: $1E $60

jr_03F_64CB:
    ld e, $50                                     ; $64CB: $1E $50
    ld e, $40                                     ; $64CD: $1E $40
    ld e, $30                                     ; $64CF: $1E $30
    ld e, $20                                     ; $64D1: $1E $20
    nop                                           ; $64D3: $00

jr_03F_64D4:
    db $10                                        ; $64D4: $10
    ld [bc], a                                    ; $64D5: $02

jr_03F_64D6:
    nop                                           ; $64D6: $00
    ld [bc], a                                    ; $64D7: $02
    ldh a, [$FF30]                                ; $64D8: $F0 $30
    ldh [$FF2F], a                                ; $64DA: $E0 $2F
    ret nc                                        ; $64DC: $D0

    inc d                                         ; $64DD: $14
    ret nz                                        ; $64DE: $C0

    inc d                                         ; $64DF: $14
    or b                                          ; $64E0: $B0
    jr nc, jr_03F_6483                            ; $64E1: $30 $A0

    cpl                                           ; $64E3: $2F
    sub b                                         ; $64E4: $90
    inc d                                         ; $64E5: $14
    add b                                         ; $64E6: $80
    inc d                                         ; $64E7: $14
    ld [hl], b                                    ; $64E8: $70
    inc d                                         ; $64E9: $14
    ld h, b                                       ; $64EA: $60
    inc d                                         ; $64EB: $14
    ld d, b                                       ; $64EC: $50
    inc d                                         ; $64ED: $14
    ld b, b                                       ; $64EE: $40
    inc d                                         ; $64EF: $14
    jr nc, jr_03F_6506                            ; $64F0: $30 $14

    jr nz, jr_03F_64F4                            ; $64F2: $20 $00

jr_03F_64F4:
    db $10                                        ; $64F4: $10
    ld [bc], a                                    ; $64F5: $02
    nop                                           ; $64F6: $00
    ld [bc], a                                    ; $64F7: $02
    ldh a, [rDIV]                                 ; $64F8: $F0 $04
    ldh [rDIV], a                                 ; $64FA: $E0 $04
    ret nc                                        ; $64FC: $D0

    inc b                                         ; $64FD: $04
    ret nz                                        ; $64FE: $C0

    inc b                                         ; $64FF: $04
    or b                                          ; $6500: $B0
    inc b                                         ; $6501: $04
    and b                                         ; $6502: $A0
    inc b                                         ; $6503: $04
    sub b                                         ; $6504: $90
    inc b                                         ; $6505: $04

jr_03F_6506:
    add b                                         ; $6506: $80
    inc b                                         ; $6507: $04
    ld [hl], b                                    ; $6508: $70
    inc b                                         ; $6509: $04
    ld h, b                                       ; $650A: $60
    inc b                                         ; $650B: $04
    ld d, b                                       ; $650C: $50
    inc b                                         ; $650D: $04
    ld b, b                                       ; $650E: $40
    inc b                                         ; $650F: $04
    jr nc, jr_03F_6512                            ; $6510: $30 $00

jr_03F_6512:
    jr nz, jr_03F_6514                            ; $6512: $20 $00

jr_03F_6514:
    db $10                                        ; $6514: $10
    ld [bc], a                                    ; $6515: $02
    nop                                           ; $6516: $00
    ld [bc], a                                    ; $6517: $02
    ldh a, [rDIV]                                 ; $6518: $F0 $04
    ldh [rDIV], a                                 ; $651A: $E0 $04
    ret nc                                        ; $651C: $D0

    inc b                                         ; $651D: $04
    ret nz                                        ; $651E: $C0

    inc b                                         ; $651F: $04
    or b                                          ; $6520: $B0
    inc b                                         ; $6521: $04
    and b                                         ; $6522: $A0
    inc b                                         ; $6523: $04
    sub b                                         ; $6524: $90
    inc b                                         ; $6525: $04
    add b                                         ; $6526: $80
    inc b                                         ; $6527: $04
    ld [hl], b                                    ; $6528: $70
    inc b                                         ; $6529: $04
    ld h, b                                       ; $652A: $60
    inc b                                         ; $652B: $04
    ld d, b                                       ; $652C: $50
    inc b                                         ; $652D: $04
    ld b, b                                       ; $652E: $40
    inc b                                         ; $652F: $04
    jr nc, jr_03F_6532                            ; $6530: $30 $00

jr_03F_6532:
    jr nz, jr_03F_6534                            ; $6532: $20 $00

jr_03F_6534:
    db $10                                        ; $6534: $10
    ld [bc], a                                    ; $6535: $02
    nop                                           ; $6536: $00
    ld [bc], a                                    ; $6537: $02
    ldh a, [rBGP]                                 ; $6538: $F0 $47
    ldh [$FF2F], a                                ; $653A: $E0 $2F
    ret nc                                        ; $653C: $D0

    inc d                                         ; $653D: $14
    ret nz                                        ; $653E: $C0

    inc d                                         ; $653F: $14
    or b                                          ; $6540: $B0
    ld b, a                                       ; $6541: $47
    and b                                         ; $6542: $A0
    cpl                                           ; $6543: $2F
    sub b                                         ; $6544: $90
    inc d                                         ; $6545: $14
    add b                                         ; $6546: $80
    inc d                                         ; $6547: $14
    ld [hl], b                                    ; $6548: $70
    inc d                                         ; $6549: $14
    ld h, b                                       ; $654A: $60
    inc d                                         ; $654B: $14
    ld d, b                                       ; $654C: $50
    inc d                                         ; $654D: $14
    ld b, b                                       ; $654E: $40
    inc d                                         ; $654F: $14
    jr nc, @+$16                                  ; $6550: $30 $14

    jr nz, jr_03F_6554                            ; $6552: $20 $00

jr_03F_6554:
    db $10                                        ; $6554: $10
    ld [bc], a                                    ; $6555: $02
    nop                                           ; $6556: $00
    ld [bc], a                                    ; $6557: $02
    ldh a, [$FF2C]                                ; $6558: $F0 $2C
    ldh [$FF2C], a                                ; $655A: $E0 $2C
    ret nc                                        ; $655C: $D0

    ld e, $C0                                     ; $655D: $1E $C0
    ld e, $B0                                     ; $655F: $1E $B0
    ld e, $A0                                     ; $6561: $1E $A0
    inc l                                         ; $6563: $2C
    sub b                                         ; $6564: $90
    ld e, $80                                     ; $6565: $1E $80
    ld e, $70                                     ; $6567: $1E $70
    ld e, $60                                     ; $6569: $1E $60
    ld e, $50                                     ; $656B: $1E $50
    ld e, $40                                     ; $656D: $1E $40
    ld e, $30                                     ; $656F: $1E $30
    ld e, $20                                     ; $6571: $1E $20
    nop                                           ; $6573: $00
    db $10                                        ; $6574: $10
    ld [bc], a                                    ; $6575: $02
    nop                                           ; $6576: $00
    ld [bc], a                                    ; $6577: $02
    ldh a, [$FF31]                                ; $6578: $F0 $31
    ldh [rNR43], a                                ; $657A: $E0 $22
    ret nc                                        ; $657C: $D0

    inc b                                         ; $657D: $04
    ret nz                                        ; $657E: $C0

    ld b, a                                       ; $657F: $47
    or b                                          ; $6580: $B0
    ld b, a                                       ; $6581: $47
    and b                                         ; $6582: $A0
    inc b                                         ; $6583: $04
    sub b                                         ; $6584: $90
    inc b                                         ; $6585: $04
    add b                                         ; $6586: $80
    inc b                                         ; $6587: $04
    ld [hl], b                                    ; $6588: $70
    ld b, a                                       ; $6589: $47
    ld h, b                                       ; $658A: $60
    inc b                                         ; $658B: $04
    ld d, b                                       ; $658C: $50
    inc b                                         ; $658D: $04
    ld b, b                                       ; $658E: $40
    inc b                                         ; $658F: $04
    jr nc, jr_03F_6592                            ; $6590: $30 $00

jr_03F_6592:
    jr nz, jr_03F_6594                            ; $6592: $20 $00

jr_03F_6594:
    db $10                                        ; $6594: $10
    ld [bc], a                                    ; $6595: $02
    nop                                           ; $6596: $00
    ld [bc], a                                    ; $6597: $02
    ldh a, [$FF31]                                ; $6598: $F0 $31
    ldh [$FF31], a                                ; $659A: $E0 $31
    ret nc                                        ; $659C: $D0

    inc b                                         ; $659D: $04
    ret nz                                        ; $659E: $C0

    add hl, bc                                    ; $659F: $09
    or b                                          ; $65A0: $B0
    inc b                                         ; $65A1: $04
    and b                                         ; $65A2: $A0
    add hl, bc                                    ; $65A3: $09
    sub b                                         ; $65A4: $90
    inc b                                         ; $65A5: $04
    add b                                         ; $65A6: $80
    add hl, bc                                    ; $65A7: $09
    ld [hl], b                                    ; $65A8: $70
    inc b                                         ; $65A9: $04
    ld h, b                                       ; $65AA: $60
    add hl, bc                                    ; $65AB: $09
    ld d, b                                       ; $65AC: $50
    inc b                                         ; $65AD: $04
    ld b, b                                       ; $65AE: $40
    inc b                                         ; $65AF: $04
    jr nc, @+$0B                                  ; $65B0: $30 $09

    jr nz, jr_03F_65B4                            ; $65B2: $20 $00

jr_03F_65B4:
    db $10                                        ; $65B4: $10
    ld [bc], a                                    ; $65B5: $02
    nop                                           ; $65B6: $00
    ld [bc], a                                    ; $65B7: $02
    ldh a, [rNR50]                                ; $65B8: $F0 $24
    ldh [rNR43], a                                ; $65BA: $E0 $22
    ret nc                                        ; $65BC: $D0

    add hl, bc                                    ; $65BD: $09
    ret nz                                        ; $65BE: $C0

    ld [hl+], a                                   ; $65BF: $22
    or b                                          ; $65C0: $B0
    inc b                                         ; $65C1: $04
    and b                                         ; $65C2: $A0
    ld [$0990], sp                                ; $65C3: $08 $90 $09
    add b                                         ; $65C6: $80
    inc b                                         ; $65C7: $04
    ld [hl], b                                    ; $65C8: $70
    ld a, [bc]                                    ; $65C9: $0A
    ld h, b                                       ; $65CA: $60
    inc b                                         ; $65CB: $04
    ld d, b                                       ; $65CC: $50
    add hl, bc                                    ; $65CD: $09
    ld b, b                                       ; $65CE: $40
    add hl, bc                                    ; $65CF: $09
    jr nc, jr_03F_65D2                            ; $65D0: $30 $00

jr_03F_65D2:
    jr nz, jr_03F_65D4                            ; $65D2: $20 $00

jr_03F_65D4:
    db $10                                        ; $65D4: $10
    ld [bc], a                                    ; $65D5: $02
    nop                                           ; $65D6: $00
    ld [bc], a                                    ; $65D7: $02
    ldh a, [$FF31]                                ; $65D8: $F0 $31
    ldh [rNR43], a                                ; $65DA: $E0 $22
    ret nc                                        ; $65DC: $D0

    add hl, bc                                    ; $65DD: $09
    ret nz                                        ; $65DE: $C0

    ld [hl+], a                                   ; $65DF: $22
    or b                                          ; $65E0: $B0
    ld a, [bc]                                    ; $65E1: $0A
    and b                                         ; $65E2: $A0
    add hl, bc                                    ; $65E3: $09
    sub b                                         ; $65E4: $90
    ld a, [bc]                                    ; $65E5: $0A
    add b                                         ; $65E6: $80
    add hl, bc                                    ; $65E7: $09
    ld [hl], b                                    ; $65E8: $70
    inc b                                         ; $65E9: $04
    ld h, b                                       ; $65EA: $60
    add hl, bc                                    ; $65EB: $09
    ld d, b                                       ; $65EC: $50
    ld a, [bc]                                    ; $65ED: $0A
    ld b, b                                       ; $65EE: $40
    add hl, bc                                    ; $65EF: $09
    jr nc, jr_03F_65F2                            ; $65F0: $30 $00

jr_03F_65F2:
    jr nz, jr_03F_65F4                            ; $65F2: $20 $00

jr_03F_65F4:
    db $10                                        ; $65F4: $10
    ld [bc], a                                    ; $65F5: $02
    nop                                           ; $65F6: $00
    ld [bc], a                                    ; $65F7: $02
    jr z, jr_03F_6613                             ; $65F8: $28 $19

    ld h, [hl]                                    ; $65FA: $66
    inc a                                         ; $65FB: $3C
    sub b                                         ; $65FC: $90
    add hl, sp                                    ; $65FD: $39
    ld h, [hl]                                    ; $65FE: $66
    ld e, c                                       ; $65FF: $59
    ld h, [hl]                                    ; $6600: $66
    jr z, jr_03F_6663                             ; $6601: $28 $60

    ld a, c                                       ; $6603: $79
    ld h, [hl]                                    ; $6604: $66
    sbc c                                         ; $6605: $99
    ld h, [hl]                                    ; $6606: $66
    cp c                                          ; $6607: $B9
    ld h, [hl]                                    ; $6608: $66
    reti                                          ; $6609: $D9


    ld h, [hl]                                    ; $660A: $66
    jr z, jr_03F_665D                             ; $660B: $28 $50

    ld sp, hl                                     ; $660D: $F9
    ld h, [hl]                                    ; $660E: $66
    add hl, de                                    ; $660F: $19
    ld h, a                                       ; $6610: $67
    add hl, sp                                    ; $6611: $39
    ld h, a                                       ; $6612: $67

jr_03F_6613:
    ld e, c                                       ; $6613: $59
    ld h, a                                       ; $6614: $67
    ld a, c                                       ; $6615: $79
    ld h, a                                       ; $6616: $67
    sbc c                                         ; $6617: $99
    ld h, a                                       ; $6618: $67
    ldh a, [$FF2C]                                ; $6619: $F0 $2C
    ldh [$FF2C], a                                ; $661B: $E0 $2C
    ret nc                                        ; $661D: $D0

    inc h                                         ; $661E: $24
    ret nz                                        ; $661F: $C0

    inc l                                         ; $6620: $2C
    or b                                          ; $6621: $B0
    inc l                                         ; $6622: $2C
    and b                                         ; $6623: $A0
    inc hl                                        ; $6624: $23
    sub b                                         ; $6625: $90
    inc l                                         ; $6626: $2C
    add b                                         ; $6627: $80
    inc hl                                        ; $6628: $23
    ld [hl], b                                    ; $6629: $70
    inc d                                         ; $662A: $14
    ld h, b                                       ; $662B: $60
    inc d                                         ; $662C: $14
    ld d, b                                       ; $662D: $50
    inc d                                         ; $662E: $14
    ld b, b                                       ; $662F: $40
    inc d                                         ; $6630: $14
    jr nc, @+$16                                  ; $6631: $30 $14

    jr nz, jr_03F_6648                            ; $6633: $20 $13

    db $10                                        ; $6635: $10
    ld de, $1000                                  ; $6636: $11 $00 $10
    ldh a, [rTMA]                                 ; $6639: $F0 $06
    ldh [rTMA], a                                 ; $663B: $E0 $06
    ret nc                                        ; $663D: $D0

    ld b, $C0                                     ; $663E: $06 $C0
    ld b, $B0                                     ; $6640: $06 $B0
    ld b, $A0                                     ; $6642: $06 $A0
    ld b, $90                                     ; $6644: $06 $90
    ld b, $80                                     ; $6646: $06 $80

jr_03F_6648:
    ld b, $70                                     ; $6648: $06 $70
    ld b, $60                                     ; $664A: $06 $60
    ld b, $50                                     ; $664C: $06 $50
    ld b, $40                                     ; $664E: $06 $40
    ld b, $30                                     ; $6650: $06 $30
    ld b, $20                                     ; $6652: $06 $20
    ld b, $10                                     ; $6654: $06 $10
    nop                                           ; $6656: $00
    nop                                           ; $6657: $00
    nop                                           ; $6658: $00
    ldh a, [$FF2D]                                ; $6659: $F0 $2D
    ldh [$FF2D], a                                ; $665B: $E0 $2D

jr_03F_665D:
    ret nc                                        ; $665D: $D0

    dec b                                         ; $665E: $05
    ret nz                                        ; $665F: $C0

    dec e                                         ; $6660: $1D
    or b                                          ; $6661: $B0
    inc e                                         ; $6662: $1C

jr_03F_6663:
    and b                                         ; $6663: $A0
    dec b                                         ; $6664: $05
    sub b                                         ; $6665: $90
    dec l                                         ; $6666: $2D
    add b                                         ; $6667: $80
    dec b                                         ; $6668: $05
    ld [hl], b                                    ; $6669: $70
    rlca                                          ; $666A: $07
    ld h, b                                       ; $666B: $60
    dec b                                         ; $666C: $05
    ld d, b                                       ; $666D: $50
    ld [hl+], a                                   ; $666E: $22
    ld b, b                                       ; $666F: $40
    ld [hl+], a                                   ; $6670: $22
    jr nc, jr_03F_6678                            ; $6671: $30 $05

    jr nz, jr_03F_6675                            ; $6673: $20 $00

jr_03F_6675:
    stop                                          ; $6675: $10 $00
    nop                                           ; $6677: $00

jr_03F_6678:
    nop                                           ; $6678: $00
    ldh a, [rTIMA]                                ; $6679: $F0 $05
    ldh [rTIMA], a                                ; $667B: $E0 $05
    ret nc                                        ; $667D: $D0

    dec b                                         ; $667E: $05
    ret nz                                        ; $667F: $C0

    dec b                                         ; $6680: $05
    or b                                          ; $6681: $B0
    dec b                                         ; $6682: $05
    and b                                         ; $6683: $A0
    dec b                                         ; $6684: $05
    sub b                                         ; $6685: $90
    dec b                                         ; $6686: $05
    add b                                         ; $6687: $80
    dec b                                         ; $6688: $05
    ld [hl], b                                    ; $6689: $70
    dec b                                         ; $668A: $05
    ld h, b                                       ; $668B: $60
    dec b                                         ; $668C: $05
    ld d, b                                       ; $668D: $50
    dec b                                         ; $668E: $05
    ld b, b                                       ; $668F: $40
    dec b                                         ; $6690: $05
    jr nc, jr_03F_6698                            ; $6691: $30 $05

    jr nz, @+$07                                  ; $6693: $20 $05

    stop                                          ; $6695: $10 $00
    nop                                           ; $6697: $00

jr_03F_6698:
    nop                                           ; $6698: $00
    ldh a, [rTMA]                                 ; $6699: $F0 $06
    ldh [rTMA], a                                 ; $669B: $E0 $06
    ret nc                                        ; $669D: $D0

    ld b, $C0                                     ; $669E: $06 $C0
    ld b, $B0                                     ; $66A0: $06 $B0
    ld b, $A0                                     ; $66A2: $06 $A0
    ld b, $90                                     ; $66A4: $06 $90
    ld b, $80                                     ; $66A6: $06 $80
    ld b, $70                                     ; $66A8: $06 $70
    ld b, $60                                     ; $66AA: $06 $60
    ld b, $50                                     ; $66AC: $06 $50
    ld b, $40                                     ; $66AE: $06 $40
    ld b, $30                                     ; $66B0: $06 $30
    ld b, $20                                     ; $66B2: $06 $20
    ld b, $10                                     ; $66B4: $06 $10
    ld b, $00                                     ; $66B6: $06 $00
    nop                                           ; $66B8: $00
    ldh a, [rTIMA]                                ; $66B9: $F0 $05
    ldh [rTIMA], a                                ; $66BB: $E0 $05
    ret nc                                        ; $66BD: $D0

    dec b                                         ; $66BE: $05
    ret nz                                        ; $66BF: $C0

    dec b                                         ; $66C0: $05
    or b                                          ; $66C1: $B0
    dec b                                         ; $66C2: $05
    and b                                         ; $66C3: $A0
    dec b                                         ; $66C4: $05
    sub b                                         ; $66C5: $90
    dec b                                         ; $66C6: $05
    add b                                         ; $66C7: $80
    dec b                                         ; $66C8: $05
    ld [hl], b                                    ; $66C9: $70
    dec b                                         ; $66CA: $05
    ld h, b                                       ; $66CB: $60
    dec b                                         ; $66CC: $05
    ld d, b                                       ; $66CD: $50
    dec b                                         ; $66CE: $05
    ld b, b                                       ; $66CF: $40
    dec b                                         ; $66D0: $05
    jr nc, jr_03F_66D8                            ; $66D1: $30 $05

    jr nz, @+$07                                  ; $66D3: $20 $05

    db $10                                        ; $66D5: $10
    dec b                                         ; $66D6: $05
    nop                                           ; $66D7: $00

jr_03F_66D8:
    dec b                                         ; $66D8: $05
    ldh a, [rTMA]                                 ; $66D9: $F0 $06
    ldh [rTMA], a                                 ; $66DB: $E0 $06
    ret nc                                        ; $66DD: $D0

    ld b, $C0                                     ; $66DE: $06 $C0
    ld b, $B0                                     ; $66E0: $06 $B0
    ld b, $A0                                     ; $66E2: $06 $A0
    ld b, $90                                     ; $66E4: $06 $90
    ld b, $80                                     ; $66E6: $06 $80
    ld b, $70                                     ; $66E8: $06 $70
    ld b, $60                                     ; $66EA: $06 $60
    ld b, $50                                     ; $66EC: $06 $50
    ld b, $40                                     ; $66EE: $06 $40
    ld b, $30                                     ; $66F0: $06 $30
    ld b, $20                                     ; $66F2: $06 $20
    ld b, $10                                     ; $66F4: $06 $10
    ld b, $00                                     ; $66F6: $06 $00
    ld b, $F0                                     ; $66F8: $06 $F0
    add hl, hl                                    ; $66FA: $29
    ldh [$FF0B], a                                ; $66FB: $E0 $0B
    ret nc                                        ; $66FD: $D0

    inc l                                         ; $66FE: $2C
    ret nz                                        ; $66FF: $C0

    add hl, hl                                    ; $6700: $29
    or b                                          ; $6701: $B0
    inc de                                        ; $6702: $13
    and b                                         ; $6703: $A0
    add hl, hl                                    ; $6704: $29
    sub b                                         ; $6705: $90
    inc de                                        ; $6706: $13
    add b                                         ; $6707: $80
    inc de                                        ; $6708: $13
    ld [hl], b                                    ; $6709: $70
    dec b                                         ; $670A: $05
    ld h, b                                       ; $670B: $60
    inc de                                        ; $670C: $13
    ld d, b                                       ; $670D: $50
    dec bc                                        ; $670E: $0B
    ld b, b                                       ; $670F: $40
    inc de                                        ; $6710: $13
    jr nc, jr_03F_6726                            ; $6711: $30 $13

    jr nz, jr_03F_6717                            ; $6713: $20 $02

    db $10                                        ; $6715: $10
    ld [bc], a                                    ; $6716: $02

jr_03F_6717:
    nop                                           ; $6717: $00
    ld [bc], a                                    ; $6718: $02
    ldh a, [$FF2C]                                ; $6719: $F0 $2C
    ldh [$FF2C], a                                ; $671B: $E0 $2C
    ret nc                                        ; $671D: $D0

    dec bc                                        ; $671E: $0B
    ret nz                                        ; $671F: $C0

    ld a, [bc]                                    ; $6720: $0A
    or b                                          ; $6721: $B0
    inc l                                         ; $6722: $2C
    and b                                         ; $6723: $A0
    inc l                                         ; $6724: $2C
    sub b                                         ; $6725: $90

jr_03F_6726:
    nop                                           ; $6726: $00
    add b                                         ; $6727: $80
    dec bc                                        ; $6728: $0B
    ld [hl], b                                    ; $6729: $70
    inc l                                         ; $672A: $2C
    ld h, b                                       ; $672B: $60
    dec bc                                        ; $672C: $0B
    ld d, b                                       ; $672D: $50
    dec b                                         ; $672E: $05
    ld b, b                                       ; $672F: $40
    inc b                                         ; $6730: $04
    jr nc, @+$10                                  ; $6731: $30 $0E

    jr nz, jr_03F_6737                            ; $6733: $20 $02

    db $10                                        ; $6735: $10
    ld [bc], a                                    ; $6736: $02

jr_03F_6737:
    nop                                           ; $6737: $00
    ld [bc], a                                    ; $6738: $02
    ldh a, [$FF2C]                                ; $6739: $F0 $2C
    ldh [$FF0B], a                                ; $673B: $E0 $0B
    ret nc                                        ; $673D: $D0

    rla                                           ; $673E: $17
    ret nz                                        ; $673F: $C0

    ld d, $B0                                     ; $6740: $16 $B0
    inc l                                         ; $6742: $2C
    and b                                         ; $6743: $A0
    dec l                                         ; $6744: $2D
    sub b                                         ; $6745: $90
    dec bc                                        ; $6746: $0B
    add b                                         ; $6747: $80
    ld d, $70                                     ; $6748: $16 $70
    inc l                                         ; $674A: $2C
    ld h, b                                       ; $674B: $60
    rla                                           ; $674C: $17
    ld d, b                                       ; $674D: $50
    ld d, $40                                     ; $674E: $16 $40
    dec b                                         ; $6750: $05
    jr nc, @+$06                                  ; $6751: $30 $04

    jr nz, @+$04                                  ; $6753: $20 $02

    db $10                                        ; $6755: $10
    ld c, $00                                     ; $6756: $0E $00
    ld [bc], a                                    ; $6758: $02
    ldh a, [$FF27]                                ; $6759: $F0 $27
    ldh [$FF0B], a                                ; $675B: $E0 $0B
    ret nc                                        ; $675D: $D0

    ld l, $C0                                     ; $675E: $2E $C0
    ld [$05B0], sp                                ; $6760: $08 $B0 $05
    and b                                         ; $6763: $A0
    daa                                           ; $6764: $27
    sub b                                         ; $6765: $90
    ld [$2E80], sp                                ; $6766: $08 $80 $2E
    ld [hl], b                                    ; $6769: $70
    ld [hl+], a                                   ; $676A: $22
    ld h, b                                       ; $676B: $60
    ld l, $50                                     ; $676C: $2E $50
    dec b                                         ; $676E: $05
    ld b, b                                       ; $676F: $40
    ld l, $30                                     ; $6770: $2E $30
    ld c, $20                                     ; $6772: $0E $20
    ld [bc], a                                    ; $6774: $02
    db $10                                        ; $6775: $10
    ld c, $00                                     ; $6776: $0E $00
    ld [bc], a                                    ; $6778: $02
    ldh a, [rSTAT]                                ; $6779: $F0 $41
    ldh [$FF0D], a                                ; $677B: $E0 $0D
    ret nc                                        ; $677D: $D0

    ld [$22C0], sp                                ; $677E: $08 $C0 $22
    or b                                          ; $6781: $B0
    dec c                                         ; $6782: $0D
    and b                                         ; $6783: $A0
    ld [$2E90], sp                                ; $6784: $08 $90 $2E
    add b                                         ; $6787: $80
    ld [hl+], a                                   ; $6788: $22
    ld [hl], b                                    ; $6789: $70
    ld [$2E60], sp                                ; $678A: $08 $60 $2E
    ld d, b                                       ; $678D: $50
    ld [hl+], a                                   ; $678E: $22
    ld b, b                                       ; $678F: $40
    nop                                           ; $6790: $00
    jr nc, jr_03F_679B                            ; $6791: $30 $08

    jr nz, jr_03F_67A3                            ; $6793: $20 $0E

jr_03F_6795:
    db $10                                        ; $6795: $10
    ld c, $00                                     ; $6796: $0E $00
    ld [bc], a                                    ; $6798: $02
    ldh a, [$FF0D]                                ; $6799: $F0 $0D

jr_03F_679B:
    ldh [rNR41], a                                ; $679B: $E0 $20
    ret nc                                        ; $679D: $D0

    ld [$2EC0], sp                                ; $679E: $08 $C0 $2E
    or b                                          ; $67A1: $B0
    dec c                                         ; $67A2: $0D

jr_03F_67A3:
    and b                                         ; $67A3: $A0
    ld [$0890], sp                                ; $67A4: $08 $90 $08
    add b                                         ; $67A7: $80
    ld l, $70                                     ; $67A8: $2E $70
    ld [$2060], sp                                ; $67AA: $08 $60 $20
    ld d, b                                       ; $67AD: $50
    dec b                                         ; $67AE: $05
    ld b, b                                       ; $67AF: $40
    ld l, $30                                     ; $67B0: $2E $30
    ld c, $20                                     ; $67B2: $0E $20
    ld c, $10                                     ; $67B4: $0E $10
    ld [bc], a                                    ; $67B6: $02
    nop                                           ; $67B7: $00
    ld [bc], a                                    ; $67B8: $02
    jr z, jr_03F_6795                             ; $67B9: $28 $DA

    ld h, a                                       ; $67BB: $67
    inc a                                         ; $67BC: $3C
    sub b                                         ; $67BD: $90
    ld a, [$1A67]                                 ; $67BE: $FA $67 $1A
    ld l, b                                       ; $67C1: $68
    jr z, jr_03F_6824                             ; $67C2: $28 $60

    ld a, [hl-]                                   ; $67C4: $3A
    ld l, b                                       ; $67C5: $68
    ld e, d                                       ; $67C6: $5A
    ld l, b                                       ; $67C7: $68
    ld a, d                                       ; $67C8: $7A
    ld l, b                                       ; $67C9: $68
    sbc d                                         ; $67CA: $9A
    ld l, b                                       ; $67CB: $68
    inc h                                         ; $67CC: $24
    ld h, b                                       ; $67CD: $60
    cp d                                          ; $67CE: $BA
    ld l, b                                       ; $67CF: $68
    jp c, $FA68                                   ; $67D0: $DA $68 $FA

jr_03F_67D3:
    ld l, b                                       ; $67D3: $68
    ld a, [de]                                    ; $67D4: $1A
    ld l, c                                       ; $67D5: $69
    ld a, [hl-]                                   ; $67D6: $3A
    ld l, c                                       ; $67D7: $69
    ld e, d                                       ; $67D8: $5A
    ld l, c                                       ; $67D9: $69
    ldh a, [rNR50]                                ; $67DA: $F0 $24
    ldh [rNR50], a                                ; $67DC: $E0 $24
    ret nc                                        ; $67DE: $D0

    inc h                                         ; $67DF: $24
    ret nz                                        ; $67E0: $C0

jr_03F_67E1:
    ld [hl+], a                                   ; $67E1: $22
    or b                                          ; $67E2: $B0
    ld [hl+], a                                   ; $67E3: $22
    and b                                         ; $67E4: $A0
    inc h                                         ; $67E5: $24
    sub b                                         ; $67E6: $90
    inc h                                         ; $67E7: $24
    add b                                         ; $67E8: $80
    ld [hl+], a                                   ; $67E9: $22
    ld [hl], b                                    ; $67EA: $70
    ld [hl+], a                                   ; $67EB: $22
    ld h, b                                       ; $67EC: $60
    ld [hl+], a                                   ; $67ED: $22
    ld d, b                                       ; $67EE: $50
    jr nz, jr_03F_6831                            ; $67EF: $20 $40

    jr nz, jr_03F_6823                            ; $67F1: $20 $30

    ld [hl+], a                                   ; $67F3: $22
    jr nz, @+$16                                  ; $67F4: $20 $14

    db $10                                        ; $67F6: $10
    inc d                                         ; $67F7: $14
    nop                                           ; $67F8: $00
    nop                                           ; $67F9: $00
    ldh a, [rTMA]                                 ; $67FA: $F0 $06
    ldh [rTMA], a                                 ; $67FC: $E0 $06
    ret nc                                        ; $67FE: $D0

    ld b, $C0                                     ; $67FF: $06 $C0
    ld b, $B0                                     ; $6801: $06 $B0
    ld b, $A0                                     ; $6803: $06 $A0
    ld b, $90                                     ; $6805: $06 $90
    ld b, $80                                     ; $6807: $06 $80
    ld b, $70                                     ; $6809: $06 $70
    ld b, $60                                     ; $680B: $06 $60
    ld b, $50                                     ; $680D: $06 $50
    ld b, $40                                     ; $680F: $06 $40
    ld b, $30                                     ; $6811: $06 $30
    ld b, $20                                     ; $6813: $06 $20
    ld b, $10                                     ; $6815: $06 $10
    ld b, $00                                     ; $6817: $06 $00
    nop                                           ; $6819: $00
    ldh a, [rNR41]                                ; $681A: $F0 $20
    ldh [rNR41], a                                ; $681C: $E0 $20
    ret nc                                        ; $681E: $D0

    jr nz, jr_03F_67E1                            ; $681F: $20 $C0

    jr nz, jr_03F_67D3                            ; $6821: $20 $B0

jr_03F_6823:
    ld [hl+], a                                   ; $6823: $22

jr_03F_6824:
    and b                                         ; $6824: $A0
    ld [hl+], a                                   ; $6825: $22
    sub b                                         ; $6826: $90
    ld [hl+], a                                   ; $6827: $22
    add b                                         ; $6828: $80
    ld [hl+], a                                   ; $6829: $22
    ld [hl], b                                    ; $682A: $70
    ld [hl+], a                                   ; $682B: $22
    ld h, b                                       ; $682C: $60
    ld [hl+], a                                   ; $682D: $22
    ld d, b                                       ; $682E: $50
    dec b                                         ; $682F: $05
    ld b, b                                       ; $6830: $40

jr_03F_6831:
    dec b                                         ; $6831: $05
    jr nc, jr_03F_6839                            ; $6832: $30 $05

    jr nz, @+$07                                  ; $6834: $20 $05

    stop                                          ; $6836: $10 $00
    nop                                           ; $6838: $00

jr_03F_6839:
    nop                                           ; $6839: $00
    ldh a, [rTIMA]                                ; $683A: $F0 $05
    ldh [rTIMA], a                                ; $683C: $E0 $05
    ret nc                                        ; $683E: $D0

    dec b                                         ; $683F: $05
    ret nz                                        ; $6840: $C0

    dec b                                         ; $6841: $05
    or b                                          ; $6842: $B0
    dec b                                         ; $6843: $05
    and b                                         ; $6844: $A0
    dec b                                         ; $6845: $05
    sub b                                         ; $6846: $90
    dec b                                         ; $6847: $05
    add b                                         ; $6848: $80
    dec b                                         ; $6849: $05
    ld [hl], b                                    ; $684A: $70
    dec b                                         ; $684B: $05
    ld h, b                                       ; $684C: $60
    dec b                                         ; $684D: $05
    ld d, b                                       ; $684E: $50
    dec b                                         ; $684F: $05
    ld b, b                                       ; $6850: $40
    dec b                                         ; $6851: $05
    jr nc, jr_03F_6859                            ; $6852: $30 $05

    jr nz, @+$07                                  ; $6854: $20 $05

    stop                                          ; $6856: $10 $00
    nop                                           ; $6858: $00

jr_03F_6859:
    nop                                           ; $6859: $00
    ldh a, [rTMA]                                 ; $685A: $F0 $06
    ldh [rTMA], a                                 ; $685C: $E0 $06
    ret nc                                        ; $685E: $D0

    ld b, $C0                                     ; $685F: $06 $C0
    ld b, $B0                                     ; $6861: $06 $B0
    ld b, $A0                                     ; $6863: $06 $A0
    ld b, $90                                     ; $6865: $06 $90
    ld b, $80                                     ; $6867: $06 $80
    ld b, $70                                     ; $6869: $06 $70
    ld b, $60                                     ; $686B: $06 $60
    ld b, $50                                     ; $686D: $06 $50
    ld b, $40                                     ; $686F: $06 $40
    ld b, $30                                     ; $6871: $06 $30
    ld b, $20                                     ; $6873: $06 $20
    ld b, $10                                     ; $6875: $06 $10
    nop                                           ; $6877: $00
    nop                                           ; $6878: $00
    nop                                           ; $6879: $00
    ldh a, [rTIMA]                                ; $687A: $F0 $05
    ldh [rTIMA], a                                ; $687C: $E0 $05
    ret nc                                        ; $687E: $D0

    dec b                                         ; $687F: $05
    ret nz                                        ; $6880: $C0

    dec b                                         ; $6881: $05
    or b                                          ; $6882: $B0
    inc b                                         ; $6883: $04
    and b                                         ; $6884: $A0
    dec b                                         ; $6885: $05
    sub b                                         ; $6886: $90
    dec b                                         ; $6887: $05
    add b                                         ; $6888: $80

jr_03F_6889:
    dec b                                         ; $6889: $05
    ld [hl], b                                    ; $688A: $70
    dec b                                         ; $688B: $05
    ld h, b                                       ; $688C: $60
    dec b                                         ; $688D: $05
    ld d, b                                       ; $688E: $50
    dec b                                         ; $688F: $05
    ld b, b                                       ; $6890: $40
    dec b                                         ; $6891: $05
    jr nc, jr_03F_6899                            ; $6892: $30 $05

    jr nz, @+$07                                  ; $6894: $20 $05

    db $10                                        ; $6896: $10

jr_03F_6897:
    inc b                                         ; $6897: $04
    nop                                           ; $6898: $00

jr_03F_6899:
    inc b                                         ; $6899: $04
    ldh a, [rTMA]                                 ; $689A: $F0 $06
    ldh [rTMA], a                                 ; $689C: $E0 $06
    ret nc                                        ; $689E: $D0

    ld b, $C0                                     ; $689F: $06 $C0
    ld b, $B0                                     ; $68A1: $06 $B0
    ld b, $A0                                     ; $68A3: $06 $A0
    ld b, $90                                     ; $68A5: $06 $90
    ld b, $80                                     ; $68A7: $06 $80
    ld b, $70                                     ; $68A9: $06 $70
    ld b, $60                                     ; $68AB: $06 $60
    ld b, $50                                     ; $68AD: $06 $50
    ld b, $40                                     ; $68AF: $06 $40
    ld b, $30                                     ; $68B1: $06 $30

jr_03F_68B3:
    ld b, $20                                     ; $68B3: $06 $20
    ld b, $10                                     ; $68B5: $06 $10
    nop                                           ; $68B7: $00
    nop                                           ; $68B8: $00
    nop                                           ; $68B9: $00
    ldh a, [$FF29]                                ; $68BA: $F0 $29
    ldh [$FF29], a                                ; $68BC: $E0 $29
    ret nc                                        ; $68BE: $D0

    add hl, hl                                    ; $68BF: $29
    ret nz                                        ; $68C0: $C0

jr_03F_68C1:
    add hl, hl                                    ; $68C1: $29
    or b                                          ; $68C2: $B0
    db $10                                        ; $68C3: $10
    and b                                         ; $68C4: $A0
    add hl, hl                                    ; $68C5: $29
    sub b                                         ; $68C6: $90
    db $10                                        ; $68C7: $10
    add b                                         ; $68C8: $80
    db $10                                        ; $68C9: $10
    ld [hl], b                                    ; $68CA: $70
    nop                                           ; $68CB: $00
    ld h, b                                       ; $68CC: $60
    db $10                                        ; $68CD: $10
    ld d, b                                       ; $68CE: $50
    db $10                                        ; $68CF: $10
    ld b, b                                       ; $68D0: $40
    db $10                                        ; $68D1: $10
    jr nc, jr_03F_68E4                            ; $68D2: $30 $10

    jr nz, jr_03F_68D6                            ; $68D4: $20 $00

jr_03F_68D6:
    stop                                          ; $68D6: $10 $00
    nop                                           ; $68D8: $00
    ld [bc], a                                    ; $68D9: $02
    ldh a, [$FF0B]                                ; $68DA: $F0 $0B
    ldh [$FF0B], a                                ; $68DC: $E0 $0B
    ret nc                                        ; $68DE: $D0

    dec b                                         ; $68DF: $05
    ret nz                                        ; $68E0: $C0

    ld a, [bc]                                    ; $68E1: $0A
    or b                                          ; $68E2: $B0
    dec bc                                        ; $68E3: $0B

jr_03F_68E4:
    and b                                         ; $68E4: $A0
    ld a, [bc]                                    ; $68E5: $0A
    sub b                                         ; $68E6: $90
    dec bc                                        ; $68E7: $0B
    add b                                         ; $68E8: $80
    ld a, [bc]                                    ; $68E9: $0A
    ld [hl], b                                    ; $68EA: $70
    ld a, [bc]                                    ; $68EB: $0A
    ld h, b                                       ; $68EC: $60
    dec b                                         ; $68ED: $05
    ld d, b                                       ; $68EE: $50
    nop                                           ; $68EF: $00
    ld b, b                                       ; $68F0: $40
    dec b                                         ; $68F1: $05
    jr nc, jr_03F_68F9                            ; $68F2: $30 $05

    jr nz, jr_03F_68F6                            ; $68F4: $20 $00

jr_03F_68F6:
    stop                                          ; $68F6: $10 $00
    nop                                           ; $68F8: $00

jr_03F_68F9:
    ld [bc], a                                    ; $68F9: $02
    ldh a, [rNR24]                                ; $68FA: $F0 $19
    ldh [rNR41], a                                ; $68FC: $E0 $20
    ret nc                                        ; $68FE: $D0

    jr jr_03F_68C1                                ; $68FF: $18 $C0

    jr nz, jr_03F_68B3                            ; $6901: $20 $B0

    ld [hl+], a                                   ; $6903: $22
    and b                                         ; $6904: $A0
    jr nz, jr_03F_6897                            ; $6905: $20 $90

    jr nz, jr_03F_6889                            ; $6907: $20 $80

    jr @+$72                                      ; $6909: $18 $70

    jr nz, jr_03F_696D                            ; $690B: $20 $60

    ld [hl+], a                                   ; $690D: $22
    ld d, b                                       ; $690E: $50
    ld [hl+], a                                   ; $690F: $22
    ld b, b                                       ; $6910: $40
    ld de, $1030                                  ; $6911: $11 $30 $10
    jr nz, jr_03F_6924                            ; $6914: $20 $0E

    db $10                                        ; $6916: $10

jr_03F_6917:
    ld c, $00                                     ; $6917: $0E $00
    ld [bc], a                                    ; $6919: $02
    ldh a, [$FF27]                                ; $691A: $F0 $27
    ldh [$FF27], a                                ; $691C: $E0 $27
    ret nc                                        ; $691E: $D0

    daa                                           ; $691F: $27
    ret nz                                        ; $6920: $C0

    ld l, $B0                                     ; $6921: $2E $B0
    daa                                           ; $6923: $27

jr_03F_6924:
    and b                                         ; $6924: $A0
    daa                                           ; $6925: $27
    sub b                                         ; $6926: $90
    daa                                           ; $6927: $27
    add b                                         ; $6928: $80
    ld l, $70                                     ; $6929: $2E $70
    db $10                                        ; $692B: $10
    ld h, b                                       ; $692C: $60
    db $10                                        ; $692D: $10
    ld d, b                                       ; $692E: $50
    db $10                                        ; $692F: $10
    ld b, b                                       ; $6930: $40
    ld c, $30                                     ; $6931: $0E $30
    ld c, $20                                     ; $6933: $0E $20
    ld c, $10                                     ; $6935: $0E $10
    nop                                           ; $6937: $00
    nop                                           ; $6938: $00
    ld [bc], a                                    ; $6939: $02
    ldh a, [$FF0D]                                ; $693A: $F0 $0D
    ldh [rDIV], a                                 ; $693C: $E0 $04
    ret nc                                        ; $693E: $D0

    ld [$34C0], sp                                ; $693F: $08 $C0 $34
    or b                                          ; $6942: $B0
    dec c                                         ; $6943: $0D
    and b                                         ; $6944: $A0
    inc [hl]                                      ; $6945: $34

jr_03F_6946:
    sub b                                         ; $6946: $90
    ld [$0A80], sp                                ; $6947: $08 $80 $0A
    ld [hl], b                                    ; $694A: $70
    inc b                                         ; $694B: $04
    ld h, b                                       ; $694C: $60
    inc [hl]                                      ; $694D: $34
    ld d, b                                       ; $694E: $50
    inc b                                         ; $694F: $04
    ld b, b                                       ; $6950: $40
    ld c, $30                                     ; $6951: $0E $30
    inc [hl]                                      ; $6953: $34
    jr nz, jr_03F_6964                            ; $6954: $20 $0E

    db $10                                        ; $6956: $10
    ld c, $00                                     ; $6957: $0E $00
    ld [bc], a                                    ; $6959: $02
    ldh a, [$FF08]                                ; $695A: $F0 $08
    ldh [$FF0A], a                                ; $695C: $E0 $0A
    ret nc                                        ; $695E: $D0

    dec c                                         ; $695F: $0D
    ret nz                                        ; $6960: $C0

    inc [hl]                                      ; $6961: $34

jr_03F_6962:
    or b                                          ; $6962: $B0
    inc [hl]                                      ; $6963: $34

jr_03F_6964:
    and b                                         ; $6964: $A0
    inc [hl]                                      ; $6965: $34
    sub b                                         ; $6966: $90
    ld [$0A80], sp                                ; $6967: $08 $80 $0A
    ld [hl], b                                    ; $696A: $70
    inc [hl]                                      ; $696B: $34
    ld h, b                                       ; $696C: $60

jr_03F_696D:
    inc b                                         ; $696D: $04
    ld d, b                                       ; $696E: $50
    inc [hl]                                      ; $696F: $34
    ld b, b                                       ; $6970: $40
    inc [hl]                                      ; $6971: $34
    jr nc, jr_03F_6982                            ; $6972: $30 $0E

    jr nz, @+$10                                  ; $6974: $20 $0E

    db $10                                        ; $6976: $10
    ld c, $00                                     ; $6977: $0E $00
    ld [bc], a                                    ; $6979: $02
    jr z, jr_03F_6917                             ; $697A: $28 $9B

    ld l, c                                       ; $697C: $69
    ld b, b                                       ; $697D: $40
    add b                                         ; $697E: $80
    cp e                                          ; $697F: $BB
    ld l, c                                       ; $6980: $69
    db $DB                                        ; $6981: $DB

jr_03F_6982:
    ld l, c                                       ; $6982: $69
    jr z, @+$4A                                   ; $6983: $28 $48

    ei                                            ; $6985: $FB
    ld l, c                                       ; $6986: $69
    dec de                                        ; $6987: $1B
    ld l, d                                       ; $6988: $6A
    dec sp                                        ; $6989: $3B
    ld l, d                                       ; $698A: $6A
    ld e, e                                       ; $698B: $5B
    ld l, d                                       ; $698C: $6A
    jr z, jr_03F_69DF                             ; $698D: $28 $50

    ld a, e                                       ; $698F: $7B
    ld l, d                                       ; $6990: $6A
    sbc e                                         ; $6991: $9B
    ld l, d                                       ; $6992: $6A
    cp e                                          ; $6993: $BB

jr_03F_6994:
    ld l, d                                       ; $6994: $6A
    db $DB                                        ; $6995: $DB
    ld l, d                                       ; $6996: $6A
    ei                                            ; $6997: $FB
    ld l, d                                       ; $6998: $6A
    dec de                                        ; $6999: $1B
    ld l, e                                       ; $699A: $6B
    ldh a, [rNR50]                                ; $699B: $F0 $24
    ldh [$FF30], a                                ; $699D: $E0 $30
    ret nc                                        ; $699F: $D0

    jr nc, jr_03F_6962                            ; $69A0: $30 $C0

    inc hl                                        ; $69A2: $23
    or b                                          ; $69A3: $B0
    jr nc, jr_03F_6946                            ; $69A4: $30 $A0

    inc hl                                        ; $69A6: $23
    sub b                                         ; $69A7: $90
    jr nc, @-$7E                                  ; $69A8: $30 $80

    inc hl                                        ; $69AA: $23
    ld [hl], b                                    ; $69AB: $70
    jr nc, jr_03F_6A0E                            ; $69AC: $30 $60

    inc hl                                        ; $69AE: $23
    ld d, b                                       ; $69AF: $50
    inc hl                                        ; $69B0: $23
    ld b, b                                       ; $69B1: $40
    inc hl                                        ; $69B2: $23
    jr nc, @+$14                                  ; $69B3: $30 $12

    jr nz, @+$14                                  ; $69B5: $20 $12

    db $10                                        ; $69B7: $10
    ld [de], a                                    ; $69B8: $12
    nop                                           ; $69B9: $00
    ld [de], a                                    ; $69BA: $12
    ldh a, [rTMA]                                 ; $69BB: $F0 $06
    ldh [rTMA], a                                 ; $69BD: $E0 $06
    ret nc                                        ; $69BF: $D0

    ld b, $C0                                     ; $69C0: $06 $C0
    ld b, $B0                                     ; $69C2: $06 $B0
    ld b, $A0                                     ; $69C4: $06 $A0
    ld b, $90                                     ; $69C6: $06 $90
    ld b, $80                                     ; $69C8: $06 $80
    ld b, $70                                     ; $69CA: $06 $70
    ld b, $60                                     ; $69CC: $06 $60
    ld b, $50                                     ; $69CE: $06 $50
    ld b, $40                                     ; $69D0: $06 $40
    ld b, $30                                     ; $69D2: $06 $30
    ld b, $20                                     ; $69D4: $06 $20
    nop                                           ; $69D6: $00
    db $10                                        ; $69D7: $10
    ld [bc], a                                    ; $69D8: $02
    nop                                           ; $69D9: $00
    ld [bc], a                                    ; $69DA: $02
    ldh a, [rLYC]                                 ; $69DB: $F0 $45
    ldh [$FF2B], a                                ; $69DD: $E0 $2B

jr_03F_69DF:
    ret nc                                        ; $69DF: $D0

    ld b, l                                       ; $69E0: $45
    ret nz                                        ; $69E1: $C0

    jr nz, jr_03F_6994                            ; $69E2: $20 $B0

    dec b                                         ; $69E4: $05
    and b                                         ; $69E5: $A0
    ld b, l                                       ; $69E6: $45
    sub b                                         ; $69E7: $90
    dec b                                         ; $69E8: $05
    add b                                         ; $69E9: $80
    dec hl                                        ; $69EA: $2B
    ld [hl], b                                    ; $69EB: $70
    ld b, l                                       ; $69EC: $45
    ld h, b                                       ; $69ED: $60
    jr nz, jr_03F_6A40                            ; $69EE: $20 $50

    dec b                                         ; $69F0: $05
    ld b, b                                       ; $69F1: $40
    dec b                                         ; $69F2: $05
    jr nc, jr_03F_69FA                            ; $69F3: $30 $05

    jr nz, jr_03F_69F7                            ; $69F5: $20 $00

jr_03F_69F7:
    db $10                                        ; $69F7: $10
    ld [bc], a                                    ; $69F8: $02
    nop                                           ; $69F9: $00

jr_03F_69FA:
    ld [bc], a                                    ; $69FA: $02
    ldh a, [rTIMA]                                ; $69FB: $F0 $05
    ldh [rTIMA], a                                ; $69FD: $E0 $05
    ret nc                                        ; $69FF: $D0

    dec b                                         ; $6A00: $05
    ret nz                                        ; $6A01: $C0

    dec b                                         ; $6A02: $05
    or b                                          ; $6A03: $B0
    dec b                                         ; $6A04: $05
    and b                                         ; $6A05: $A0
    dec b                                         ; $6A06: $05
    sub b                                         ; $6A07: $90
    dec b                                         ; $6A08: $05
    add b                                         ; $6A09: $80
    dec b                                         ; $6A0A: $05
    ld [hl], b                                    ; $6A0B: $70
    dec b                                         ; $6A0C: $05
    ld h, b                                       ; $6A0D: $60

jr_03F_6A0E:
    dec b                                         ; $6A0E: $05
    ld d, b                                       ; $6A0F: $50
    dec b                                         ; $6A10: $05
    ld b, b                                       ; $6A11: $40
    dec b                                         ; $6A12: $05
    jr nc, jr_03F_6A1A                            ; $6A13: $30 $05

    jr nz, jr_03F_6A17                            ; $6A15: $20 $00

jr_03F_6A17:
    db $10                                        ; $6A17: $10
    ld [bc], a                                    ; $6A18: $02
    nop                                           ; $6A19: $00

jr_03F_6A1A:
    ld [bc], a                                    ; $6A1A: $02
    ldh a, [rTMA]                                 ; $6A1B: $F0 $06
    ldh [rTMA], a                                 ; $6A1D: $E0 $06
    ret nc                                        ; $6A1F: $D0

    ld b, $C0                                     ; $6A20: $06 $C0
    ld b, $B0                                     ; $6A22: $06 $B0
    ld b, $A0                                     ; $6A24: $06 $A0
    ld b, $90                                     ; $6A26: $06 $90
    ld b, $80                                     ; $6A28: $06 $80
    ld b, $70                                     ; $6A2A: $06 $70
    ld b, $60                                     ; $6A2C: $06 $60
    ld b, $50                                     ; $6A2E: $06 $50
    ld b, $40                                     ; $6A30: $06 $40
    ld b, $30                                     ; $6A32: $06 $30
    ld b, $20                                     ; $6A34: $06 $20
    nop                                           ; $6A36: $00
    db $10                                        ; $6A37: $10
    ld [bc], a                                    ; $6A38: $02
    nop                                           ; $6A39: $00
    ld [bc], a                                    ; $6A3A: $02
    ldh a, [rTIMA]                                ; $6A3B: $F0 $05
    ldh [rTIMA], a                                ; $6A3D: $E0 $05
    ret nc                                        ; $6A3F: $D0

jr_03F_6A40:
    dec b                                         ; $6A40: $05
    ret nz                                        ; $6A41: $C0

    dec b                                         ; $6A42: $05
    or b                                          ; $6A43: $B0
    dec b                                         ; $6A44: $05
    and b                                         ; $6A45: $A0
    dec b                                         ; $6A46: $05
    sub b                                         ; $6A47: $90
    dec b                                         ; $6A48: $05
    add b                                         ; $6A49: $80
    dec b                                         ; $6A4A: $05
    ld [hl], b                                    ; $6A4B: $70
    dec b                                         ; $6A4C: $05
    ld h, b                                       ; $6A4D: $60
    dec b                                         ; $6A4E: $05
    ld d, b                                       ; $6A4F: $50
    dec b                                         ; $6A50: $05
    ld b, b                                       ; $6A51: $40
    dec b                                         ; $6A52: $05
    jr nc, jr_03F_6A5A                            ; $6A53: $30 $05

    jr nz, jr_03F_6A57                            ; $6A55: $20 $00

jr_03F_6A57:
    db $10                                        ; $6A57: $10
    ld [bc], a                                    ; $6A58: $02
    nop                                           ; $6A59: $00

jr_03F_6A5A:
    ld [bc], a                                    ; $6A5A: $02
    ldh a, [rTMA]                                 ; $6A5B: $F0 $06
    ldh [rTMA], a                                 ; $6A5D: $E0 $06
    ret nc                                        ; $6A5F: $D0

    ld b, $C0                                     ; $6A60: $06 $C0
    ld b, $B0                                     ; $6A62: $06 $B0
    ld b, $A0                                     ; $6A64: $06 $A0
    ld b, $90                                     ; $6A66: $06 $90
    ld b, $80                                     ; $6A68: $06 $80
    ld b, $70                                     ; $6A6A: $06 $70
    ld b, $60                                     ; $6A6C: $06 $60
    ld b, $50                                     ; $6A6E: $06 $50
    ld b, $40                                     ; $6A70: $06 $40
    ld b, $30                                     ; $6A72: $06 $30
    ld b, $20                                     ; $6A74: $06 $20
    nop                                           ; $6A76: $00
    db $10                                        ; $6A77: $10
    ld [bc], a                                    ; $6A78: $02
    nop                                           ; $6A79: $00
    ld [bc], a                                    ; $6A7A: $02
    ldh a, [rNR50]                                ; $6A7B: $F0 $24
    ldh [$FF15], a                                ; $6A7D: $E0 $15
    ret nc                                        ; $6A7F: $D0

    inc d                                         ; $6A80: $14
    ret nz                                        ; $6A81: $C0

    inc d                                         ; $6A82: $14
    or b                                          ; $6A83: $B0
    dec d                                         ; $6A84: $15
    and b                                         ; $6A85: $A0
    inc de                                        ; $6A86: $13
    sub b                                         ; $6A87: $90
    inc d                                         ; $6A88: $14
    add b                                         ; $6A89: $80
    inc de                                        ; $6A8A: $13
    ld [hl], b                                    ; $6A8B: $70
    inc d                                         ; $6A8C: $14
    ld h, b                                       ; $6A8D: $60
    inc de                                        ; $6A8E: $13
    ld d, b                                       ; $6A8F: $50
    inc de                                        ; $6A90: $13
    ld b, b                                       ; $6A91: $40
    inc d                                         ; $6A92: $14
    jr nc, jr_03F_6AA8                            ; $6A93: $30 $13

    jr nz, jr_03F_6A97                            ; $6A95: $20 $00

jr_03F_6A97:
    db $10                                        ; $6A97: $10
    ld [bc], a                                    ; $6A98: $02
    nop                                           ; $6A99: $00
    ld [bc], a                                    ; $6A9A: $02
    ldh a, [rNR44]                                ; $6A9B: $F0 $23
    ldh [rNR44], a                                ; $6A9D: $E0 $23
    ret nc                                        ; $6A9F: $D0

    dec bc                                        ; $6AA0: $0B
    ret nz                                        ; $6AA1: $C0

    inc hl                                        ; $6AA2: $23
    or b                                          ; $6AA3: $B0
    db $10                                        ; $6AA4: $10
    and b                                         ; $6AA5: $A0
    inc hl                                        ; $6AA6: $23
    sub b                                         ; $6AA7: $90

jr_03F_6AA8:
    inc hl                                        ; $6AA8: $23
    add b                                         ; $6AA9: $80
    db $10                                        ; $6AAA: $10
    ld [hl], b                                    ; $6AAB: $70
    inc hl                                        ; $6AAC: $23
    ld h, b                                       ; $6AAD: $60
    inc hl                                        ; $6AAE: $23
    ld d, b                                       ; $6AAF: $50
    db $10                                        ; $6AB0: $10
    ld b, b                                       ; $6AB1: $40
    dec bc                                        ; $6AB2: $0B
    jr nc, jr_03F_6AC5                            ; $6AB3: $30 $10

    jr nz, jr_03F_6AB7                            ; $6AB5: $20 $00

jr_03F_6AB7:
    db $10                                        ; $6AB7: $10
    ld [bc], a                                    ; $6AB8: $02
    nop                                           ; $6AB9: $00
    ld [bc], a                                    ; $6ABA: $02
    ldh a, [rNR44]                                ; $6ABB: $F0 $23
    ldh [rNR44], a                                ; $6ABD: $E0 $23
    ret nc                                        ; $6ABF: $D0

    inc b                                         ; $6AC0: $04
    ret nz                                        ; $6AC1: $C0

    ld a, [bc]                                    ; $6AC2: $0A
    or b                                          ; $6AC3: $B0
    ld b, h                                       ; $6AC4: $44

jr_03F_6AC5:
    and b                                         ; $6AC5: $A0
    inc hl                                        ; $6AC6: $23
    sub b                                         ; $6AC7: $90
    inc b                                         ; $6AC8: $04
    add b                                         ; $6AC9: $80
    ld a, [bc]                                    ; $6ACA: $0A
    ld [hl], b                                    ; $6ACB: $70
    inc hl                                        ; $6ACC: $23
    ld h, b                                       ; $6ACD: $60
    ld b, h                                       ; $6ACE: $44
    ld d, b                                       ; $6ACF: $50
    inc b                                         ; $6AD0: $04
    ld b, b                                       ; $6AD1: $40
    ld a, [bc]                                    ; $6AD2: $0A
    jr nc, jr_03F_6AD9                            ; $6AD3: $30 $04

    jr nz, jr_03F_6AD7                            ; $6AD5: $20 $00

jr_03F_6AD7:
    db $10                                        ; $6AD7: $10
    ld [bc], a                                    ; $6AD8: $02

jr_03F_6AD9:
    nop                                           ; $6AD9: $00
    ld [bc], a                                    ; $6ADA: $02
    ldh a, [$FF0B]                                ; $6ADB: $F0 $0B
    ldh [rTIMA], a                                ; $6ADD: $E0 $05
    ret nc                                        ; $6ADF: $D0

    ld a, [bc]                                    ; $6AE0: $0A
    ret nz                                        ; $6AE1: $C0

    dec bc                                        ; $6AE2: $0B
    or b                                          ; $6AE3: $B0
    ld b, h                                       ; $6AE4: $44
    and b                                         ; $6AE5: $A0
    ld a, [bc]                                    ; $6AE6: $0A
    sub b                                         ; $6AE7: $90
    dec bc                                        ; $6AE8: $0B
    add b                                         ; $6AE9: $80
    ld b, h                                       ; $6AEA: $44
    ld [hl], b                                    ; $6AEB: $70
    ld a, [bc]                                    ; $6AEC: $0A
    ld h, b                                       ; $6AED: $60
    dec bc                                        ; $6AEE: $0B
    ld d, b                                       ; $6AEF: $50
    dec b                                         ; $6AF0: $05
    ld b, b                                       ; $6AF1: $40
    ld b, h                                       ; $6AF2: $44
    jr nc, jr_03F_6AFA                            ; $6AF3: $30 $05

    jr nz, jr_03F_6AF7                            ; $6AF5: $20 $00

jr_03F_6AF7:
    db $10                                        ; $6AF7: $10
    ld [bc], a                                    ; $6AF8: $02
    nop                                           ; $6AF9: $00

jr_03F_6AFA:
    ld [bc], a                                    ; $6AFA: $02
    ldh a, [rLYC]                                 ; $6AFB: $F0 $45
    ldh [$FF08], a                                ; $6AFD: $E0 $08
    ret nc                                        ; $6AFF: $D0

    ld a, [bc]                                    ; $6B00: $0A
    ret nz                                        ; $6B01: $C0

    ld b, h                                       ; $6B02: $44
    or b                                          ; $6B03: $B0
    ld [$45A0], sp                                ; $6B04: $08 $A0 $45
    sub b                                         ; $6B07: $90
    ld b, h                                       ; $6B08: $44
    add b                                         ; $6B09: $80
    ld [$4570], sp                                ; $6B0A: $08 $70 $45
    ld h, b                                       ; $6B0D: $60
    ld [$4450], sp                                ; $6B0E: $08 $50 $44
    ld b, b                                       ; $6B11: $40
    inc b                                         ; $6B12: $04
    jr nc, jr_03F_6B59                            ; $6B13: $30 $44

    jr nz, jr_03F_6B17                            ; $6B15: $20 $00

jr_03F_6B17:
    db $10                                        ; $6B17: $10
    ld [bc], a                                    ; $6B18: $02
    nop                                           ; $6B19: $00
    ld [bc], a                                    ; $6B1A: $02
    ldh a, [rLYC]                                 ; $6B1B: $F0 $45
    ldh [$FF08], a                                ; $6B1D: $E0 $08
    ret nc                                        ; $6B1F: $D0

    ld [$08C0], sp                                ; $6B20: $08 $C0 $08
    or b                                          ; $6B23: $B0
    ld b, l                                       ; $6B24: $45
    and b                                         ; $6B25: $A0
    ld [$4490], sp                                ; $6B26: $08 $90 $44
    add b                                         ; $6B29: $80
    ld [$4570], sp                                ; $6B2A: $08 $70 $45
    ld h, b                                       ; $6B2D: $60
    ld [$0850], sp                                ; $6B2E: $08 $50 $08
    ld b, b                                       ; $6B31: $40
    ld b, h                                       ; $6B32: $44
    jr nc, jr_03F_6B3D                            ; $6B33: $30 $08

    jr nz, jr_03F_6B37                            ; $6B35: $20 $00

jr_03F_6B37:
    db $10                                        ; $6B37: $10
    ld [bc], a                                    ; $6B38: $02
    nop                                           ; $6B39: $00
    ld [bc], a                                    ; $6B3A: $02
    jr z, jr_03F_6B99                             ; $6B3B: $28 $5C

jr_03F_6B3D:
    ld l, e                                       ; $6B3D: $6B
    inc a                                         ; $6B3E: $3C
    sub b                                         ; $6B3F: $90
    ld a, h                                       ; $6B40: $7C
    ld l, e                                       ; $6B41: $6B
    sbc h                                         ; $6B42: $9C
    ld l, e                                       ; $6B43: $6B
    jr z, @+$4A                                   ; $6B44: $28 $48

    cp h                                          ; $6B46: $BC
    ld l, e                                       ; $6B47: $6B
    call c, $FC6B                                 ; $6B48: $DC $6B $FC
    ld l, e                                       ; $6B4B: $6B
    inc e                                         ; $6B4C: $1C
    ld l, h                                       ; $6B4D: $6C
    jr z, jr_03F_6BA0                             ; $6B4E: $28 $50

    inc a                                         ; $6B50: $3C
    ld l, h                                       ; $6B51: $6C
    ld e, h                                       ; $6B52: $5C
    ld l, h                                       ; $6B53: $6C
    ld a, h                                       ; $6B54: $7C
    ld l, h                                       ; $6B55: $6C
    sbc h                                         ; $6B56: $9C
    ld l, h                                       ; $6B57: $6C
    cp h                                          ; $6B58: $BC

jr_03F_6B59:
    ld l, h                                       ; $6B59: $6C
    call c, $F06C                                 ; $6B5A: $DC $6C $F0
    inc sp                                        ; $6B5D: $33
    ldh [rDMA], a                                 ; $6B5E: $E0 $46
    ret nc                                        ; $6B60: $D0

    inc sp                                        ; $6B61: $33
    ret nz                                        ; $6B62: $C0

    ld b, [hl]                                    ; $6B63: $46
    or b                                          ; $6B64: $B0
    inc sp                                        ; $6B65: $33
    and b                                         ; $6B66: $A0
    ld b, [hl]                                    ; $6B67: $46
    sub b                                         ; $6B68: $90
    inc sp                                        ; $6B69: $33
    add b                                         ; $6B6A: $80
    ld b, [hl]                                    ; $6B6B: $46
    ld [hl], b                                    ; $6B6C: $70
    inc sp                                        ; $6B6D: $33
    ld h, b                                       ; $6B6E: $60
    ld b, [hl]                                    ; $6B6F: $46
    ld d, b                                       ; $6B70: $50
    inc sp                                        ; $6B71: $33
    ld b, b                                       ; $6B72: $40
    ld b, [hl]                                    ; $6B73: $46
    jr nc, @+$14                                  ; $6B74: $30 $12

    jr nz, @+$14                                  ; $6B76: $20 $12

    db $10                                        ; $6B78: $10
    ld de, $1000                                  ; $6B79: $11 $00 $10
    ldh a, [rTMA]                                 ; $6B7C: $F0 $06
    ldh [rTMA], a                                 ; $6B7E: $E0 $06
    ret nc                                        ; $6B80: $D0

    ld b, $C0                                     ; $6B81: $06 $C0
    ld b, $B0                                     ; $6B83: $06 $B0
    ld b, $A0                                     ; $6B85: $06 $A0
    ld b, $90                                     ; $6B87: $06 $90
    ld b, $80                                     ; $6B89: $06 $80
    ld b, $70                                     ; $6B8B: $06 $70
    ld b, $60                                     ; $6B8D: $06 $60
    ld b, $50                                     ; $6B8F: $06 $50
    ld b, $40                                     ; $6B91: $06 $40
    ld b, $30                                     ; $6B93: $06 $30
    ld b, $20                                     ; $6B95: $06 $20
    nop                                           ; $6B97: $00
    db $10                                        ; $6B98: $10

jr_03F_6B99:
    ld [bc], a                                    ; $6B99: $02
    nop                                           ; $6B9A: $00
    ld [bc], a                                    ; $6B9B: $02
    ldh a, [rNR43]                                ; $6B9C: $F0 $22
    ldh [rTIMA], a                                ; $6B9E: $E0 $05

jr_03F_6BA0:
    ret nc                                        ; $6BA0: $D0

    inc hl                                        ; $6BA1: $23
    ret nz                                        ; $6BA2: $C0

    dec b                                         ; $6BA3: $05
    or b                                          ; $6BA4: $B0
    ld [hl+], a                                   ; $6BA5: $22
    and b                                         ; $6BA6: $A0
    dec b                                         ; $6BA7: $05
    sub b                                         ; $6BA8: $90
    inc hl                                        ; $6BA9: $23
    add b                                         ; $6BAA: $80
    dec b                                         ; $6BAB: $05
    ld [hl], b                                    ; $6BAC: $70
    ld [hl+], a                                   ; $6BAD: $22
    ld h, b                                       ; $6BAE: $60
    dec b                                         ; $6BAF: $05
    ld d, b                                       ; $6BB0: $50
    inc hl                                        ; $6BB1: $23
    ld b, b                                       ; $6BB2: $40
    dec b                                         ; $6BB3: $05
    jr nc, jr_03F_6BBB                            ; $6BB4: $30 $05

    jr nz, jr_03F_6BB8                            ; $6BB6: $20 $00

jr_03F_6BB8:
    db $10                                        ; $6BB8: $10
    ld [bc], a                                    ; $6BB9: $02
    nop                                           ; $6BBA: $00

jr_03F_6BBB:
    ld [bc], a                                    ; $6BBB: $02
    ldh a, [rTIMA]                                ; $6BBC: $F0 $05
    ldh [rTIMA], a                                ; $6BBE: $E0 $05
    ret nc                                        ; $6BC0: $D0

    dec b                                         ; $6BC1: $05
    ret nz                                        ; $6BC2: $C0

    dec b                                         ; $6BC3: $05
    or b                                          ; $6BC4: $B0
    dec b                                         ; $6BC5: $05
    and b                                         ; $6BC6: $A0
    dec b                                         ; $6BC7: $05
    sub b                                         ; $6BC8: $90
    dec b                                         ; $6BC9: $05
    add b                                         ; $6BCA: $80
    dec b                                         ; $6BCB: $05
    ld [hl], b                                    ; $6BCC: $70
    dec b                                         ; $6BCD: $05
    ld h, b                                       ; $6BCE: $60
    dec b                                         ; $6BCF: $05
    ld d, b                                       ; $6BD0: $50
    dec b                                         ; $6BD1: $05
    ld b, b                                       ; $6BD2: $40
    dec b                                         ; $6BD3: $05
    jr nc, jr_03F_6BDB                            ; $6BD4: $30 $05

    jr nz, jr_03F_6BD8                            ; $6BD6: $20 $00

jr_03F_6BD8:
    db $10                                        ; $6BD8: $10
    ld [bc], a                                    ; $6BD9: $02
    nop                                           ; $6BDA: $00

jr_03F_6BDB:
    ld [bc], a                                    ; $6BDB: $02
    ldh a, [rTMA]                                 ; $6BDC: $F0 $06
    ldh [rTMA], a                                 ; $6BDE: $E0 $06
    ret nc                                        ; $6BE0: $D0

    ld b, $C0                                     ; $6BE1: $06 $C0
    ld b, $B0                                     ; $6BE3: $06 $B0
    ld b, $A0                                     ; $6BE5: $06 $A0
    ld b, $90                                     ; $6BE7: $06 $90
    ld b, $80                                     ; $6BE9: $06 $80
    ld b, $70                                     ; $6BEB: $06 $70
    ld b, $60                                     ; $6BED: $06 $60
    ld b, $50                                     ; $6BEF: $06 $50
    ld b, $40                                     ; $6BF1: $06 $40
    ld b, $30                                     ; $6BF3: $06 $30
    ld b, $20                                     ; $6BF5: $06 $20
    nop                                           ; $6BF7: $00
    db $10                                        ; $6BF8: $10
    ld [bc], a                                    ; $6BF9: $02
    nop                                           ; $6BFA: $00
    ld [bc], a                                    ; $6BFB: $02
    ldh a, [rTIMA]                                ; $6BFC: $F0 $05
    ldh [rTIMA], a                                ; $6BFE: $E0 $05
    ret nc                                        ; $6C00: $D0

    dec b                                         ; $6C01: $05
    ret nz                                        ; $6C02: $C0

    dec b                                         ; $6C03: $05
    or b                                          ; $6C04: $B0
    dec b                                         ; $6C05: $05
    and b                                         ; $6C06: $A0
    dec b                                         ; $6C07: $05
    sub b                                         ; $6C08: $90
    dec b                                         ; $6C09: $05
    add b                                         ; $6C0A: $80
    dec b                                         ; $6C0B: $05
    ld [hl], b                                    ; $6C0C: $70
    dec b                                         ; $6C0D: $05
    ld h, b                                       ; $6C0E: $60
    dec b                                         ; $6C0F: $05
    ld d, b                                       ; $6C10: $50
    dec b                                         ; $6C11: $05
    ld b, b                                       ; $6C12: $40
    dec b                                         ; $6C13: $05
    jr nc, jr_03F_6C1B                            ; $6C14: $30 $05

    jr nz, jr_03F_6C18                            ; $6C16: $20 $00

jr_03F_6C18:
    db $10                                        ; $6C18: $10
    ld [bc], a                                    ; $6C19: $02
    nop                                           ; $6C1A: $00

jr_03F_6C1B:
    ld [bc], a                                    ; $6C1B: $02
    ldh a, [rTMA]                                 ; $6C1C: $F0 $06
    ldh [rTMA], a                                 ; $6C1E: $E0 $06
    ret nc                                        ; $6C20: $D0

    ld b, $C0                                     ; $6C21: $06 $C0
    ld b, $B0                                     ; $6C23: $06 $B0
    ld b, $A0                                     ; $6C25: $06 $A0
    ld b, $90                                     ; $6C27: $06 $90
    ld b, $80                                     ; $6C29: $06 $80
    ld b, $70                                     ; $6C2B: $06 $70
    ld b, $60                                     ; $6C2D: $06 $60
    ld b, $50                                     ; $6C2F: $06 $50
    ld b, $40                                     ; $6C31: $06 $40
    ld b, $30                                     ; $6C33: $06 $30
    ld b, $20                                     ; $6C35: $06 $20
    nop                                           ; $6C37: $00
    db $10                                        ; $6C38: $10
    ld [bc], a                                    ; $6C39: $02
    nop                                           ; $6C3A: $00
    ld [bc], a                                    ; $6C3B: $02
    ldh a, [$FF29]                                ; $6C3C: $F0 $29
    ldh [rNR10], a                                ; $6C3E: $E0 $10
    ret nc                                        ; $6C40: $D0

    ld de, $29C0                                  ; $6C41: $11 $C0 $29
    or b                                          ; $6C44: $B0
    ld de, $12A0                                  ; $6C45: $11 $A0 $12
    sub b                                         ; $6C48: $90
    add hl, hl                                    ; $6C49: $29
    add b                                         ; $6C4A: $80
    ld [de], a                                    ; $6C4B: $12
    ld [hl], b                                    ; $6C4C: $70
    ld de, $1260                                  ; $6C4D: $11 $60 $12
    ld d, b                                       ; $6C50: $50
    ld de, $1040                                  ; $6C51: $11 $40 $10
    jr nc, @+$13                                  ; $6C54: $30 $11

    jr nz, jr_03F_6C58                            ; $6C56: $20 $00

jr_03F_6C58:
    db $10                                        ; $6C58: $10
    ld [bc], a                                    ; $6C59: $02
    nop                                           ; $6C5A: $00
    ld [bc], a                                    ; $6C5B: $02
    ldh a, [$FF29]                                ; $6C5C: $F0 $29
    ldh [rNR10], a                                ; $6C5E: $E0 $10
    ret nc                                        ; $6C60: $D0

    ld de, $29C0                                  ; $6C61: $11 $C0 $29
    or b                                          ; $6C64: $B0
    ld de, $12A0                                  ; $6C65: $11 $A0 $12
    sub b                                         ; $6C68: $90
    add hl, hl                                    ; $6C69: $29
    add b                                         ; $6C6A: $80
    ld [de], a                                    ; $6C6B: $12
    ld [hl], b                                    ; $6C6C: $70
    ld de, $1260                                  ; $6C6D: $11 $60 $12
    ld d, b                                       ; $6C70: $50
    ld de, $1040                                  ; $6C71: $11 $40 $10
    jr nc, jr_03F_6C87                            ; $6C74: $30 $11

    jr nz, jr_03F_6C78                            ; $6C76: $20 $00

jr_03F_6C78:
    db $10                                        ; $6C78: $10
    ld [bc], a                                    ; $6C79: $02
    nop                                           ; $6C7A: $00
    ld [bc], a                                    ; $6C7B: $02
    ldh a, [rNR50]                                ; $6C7C: $F0 $24
    ldh [rDMA], a                                 ; $6C7E: $E0 $46
    ret nc                                        ; $6C80: $D0

    inc sp                                        ; $6C81: $33
    ret nz                                        ; $6C82: $C0

    inc b                                         ; $6C83: $04
    or b                                          ; $6C84: $B0
    ld a, [bc]                                    ; $6C85: $0A
    and b                                         ; $6C86: $A0

jr_03F_6C87:
    ld b, [hl]                                    ; $6C87: $46
    sub b                                         ; $6C88: $90
    inc hl                                        ; $6C89: $23
    add b                                         ; $6C8A: $80
    ld b, e                                       ; $6C8B: $43
    ld [hl], b                                    ; $6C8C: $70
    ld a, [bc]                                    ; $6C8D: $0A
    ld h, b                                       ; $6C8E: $60
    ld b, [hl]                                    ; $6C8F: $46
    ld d, b                                       ; $6C90: $50
    inc sp                                        ; $6C91: $33
    ld b, b                                       ; $6C92: $40
    ld b, e                                       ; $6C93: $43
    jr nc, jr_03F_6CA0                            ; $6C94: $30 $0A

    jr nz, jr_03F_6C98                            ; $6C96: $20 $00

jr_03F_6C98:
    db $10                                        ; $6C98: $10
    ld [bc], a                                    ; $6C99: $02
    nop                                           ; $6C9A: $00
    ld [bc], a                                    ; $6C9B: $02
    ldh a, [rNR50]                                ; $6C9C: $F0 $24
    ldh [rSCX], a                                 ; $6C9E: $E0 $43

jr_03F_6CA0:
    ret nc                                        ; $6CA0: $D0

    inc sp                                        ; $6CA1: $33
    ret nz                                        ; $6CA2: $C0

    inc b                                         ; $6CA3: $04
    or b                                          ; $6CA4: $B0
    ld a, [bc]                                    ; $6CA5: $0A
    and b                                         ; $6CA6: $A0
    ld b, e                                       ; $6CA7: $43
    sub b                                         ; $6CA8: $90
    inc sp                                        ; $6CA9: $33
    add b                                         ; $6CAA: $80
    inc b                                         ; $6CAB: $04

jr_03F_6CAC:
    ld [hl], b                                    ; $6CAC: $70
    ld a, [bc]                                    ; $6CAD: $0A
    ld h, b                                       ; $6CAE: $60
    inc sp                                        ; $6CAF: $33
    ld d, b                                       ; $6CB0: $50
    ld b, e                                       ; $6CB1: $43
    ld b, b                                       ; $6CB2: $40
    inc b                                         ; $6CB3: $04
    jr nc, jr_03F_6CC0                            ; $6CB4: $30 $0A

    jr nz, jr_03F_6CB8                            ; $6CB6: $20 $00

jr_03F_6CB8:
    db $10                                        ; $6CB8: $10
    ld [bc], a                                    ; $6CB9: $02
    nop                                           ; $6CBA: $00
    ld [bc], a                                    ; $6CBB: $02
    ldh a, [rNR50]                                ; $6CBC: $F0 $24
    ldh [$FF08], a                                ; $6CBE: $E0 $08

jr_03F_6CC0:
    ret nc                                        ; $6CC0: $D0

    ld b, e                                       ; $6CC1: $43
    ret nz                                        ; $6CC2: $C0

    ld [hl+], a                                   ; $6CC3: $22
    or b                                          ; $6CC4: $B0
    ld b, e                                       ; $6CC5: $43
    and b                                         ; $6CC6: $A0
    ld a, [bc]                                    ; $6CC7: $0A
    sub b                                         ; $6CC8: $90
    ld [hl+], a                                   ; $6CC9: $22
    add b                                         ; $6CCA: $80
    ld [$4370], sp                                ; $6CCB: $08 $70 $43
    ld h, b                                       ; $6CCE: $60
    ld [$0450], sp                                ; $6CCF: $08 $50 $04
    ld b, b                                       ; $6CD2: $40
    ld b, e                                       ; $6CD3: $43
    jr nc, jr_03F_6CDE                            ; $6CD4: $30 $08

    jr nz, jr_03F_6CD8                            ; $6CD6: $20 $00

jr_03F_6CD8:
    db $10                                        ; $6CD8: $10
    ld [bc], a                                    ; $6CD9: $02
    nop                                           ; $6CDA: $00
    ld [bc], a                                    ; $6CDB: $02
    ldh a, [rNR50]                                ; $6CDC: $F0 $24

jr_03F_6CDE:
    ldh [$FF08], a                                ; $6CDE: $E0 $08
    ret nc                                        ; $6CE0: $D0

    ld b, e                                       ; $6CE1: $43
    ret nz                                        ; $6CE2: $C0

    ld [$08B0], sp                                ; $6CE3: $08 $B0 $08
    and b                                         ; $6CE6: $A0
    ld b, e                                       ; $6CE7: $43
    sub b                                         ; $6CE8: $90
    ld [$0480], sp                                ; $6CE9: $08 $80 $04
    ld [hl], b                                    ; $6CEC: $70
    ld [$4360], sp                                ; $6CED: $08 $60 $43
    ld d, b                                       ; $6CF0: $50
    inc b                                         ; $6CF1: $04
    ld b, b                                       ; $6CF2: $40
    ld [$0430], sp                                ; $6CF3: $08 $30 $04
    jr nz, jr_03F_6CF8                            ; $6CF6: $20 $00

jr_03F_6CF8:
    db $10                                        ; $6CF8: $10
    ld [bc], a                                    ; $6CF9: $02
    nop                                           ; $6CFA: $00
    ld [bc], a                                    ; $6CFB: $02
    jr z, jr_03F_6D1B                             ; $6CFC: $28 $1D

    ld l, l                                       ; $6CFE: $6D
    inc a                                         ; $6CFF: $3C
    sub b                                         ; $6D00: $90
    dec a                                         ; $6D01: $3D
    ld l, l                                       ; $6D02: $6D
    ld e, l                                       ; $6D03: $5D
    ld l, l                                       ; $6D04: $6D
    jr z, @+$4A                                   ; $6D05: $28 $48

    ld a, l                                       ; $6D07: $7D

jr_03F_6D08:
    ld l, l                                       ; $6D08: $6D
    sbc l                                         ; $6D09: $9D
    ld l, l                                       ; $6D0A: $6D
    cp l                                          ; $6D0B: $BD
    ld l, l                                       ; $6D0C: $6D
    db $DD                                        ; $6D0D: $DD
    ld l, l                                       ; $6D0E: $6D
    jr nz, jr_03F_6D61                            ; $6D0F: $20 $50

    db $FD                                        ; $6D11: $FD
    ld l, l                                       ; $6D12: $6D
    dec e                                         ; $6D13: $1D
    ld l, [hl]                                    ; $6D14: $6E
    dec a                                         ; $6D15: $3D
    ld l, [hl]                                    ; $6D16: $6E
    ld e, l                                       ; $6D17: $5D
    ld l, [hl]                                    ; $6D18: $6E
    ld a, l                                       ; $6D19: $7D
    ld l, [hl]                                    ; $6D1A: $6E

jr_03F_6D1B:
    sbc l                                         ; $6D1B: $9D
    ld l, [hl]                                    ; $6D1C: $6E
    ldh a, [rNR50]                                ; $6D1D: $F0 $24
    ldh [$FF2F], a                                ; $6D1F: $E0 $2F
    ret nc                                        ; $6D21: $D0

    inc h                                         ; $6D22: $24
    ret nz                                        ; $6D23: $C0

    cpl                                           ; $6D24: $2F
    or b                                          ; $6D25: $B0
    cpl                                           ; $6D26: $2F
    and b                                         ; $6D27: $A0
    inc hl                                        ; $6D28: $23
    sub b                                         ; $6D29: $90
    jr nc, jr_03F_6CAC                            ; $6D2A: $30 $80

    inc hl                                        ; $6D2C: $23
    ld [hl], b                                    ; $6D2D: $70
    jr nc, jr_03F_6D90                            ; $6D2E: $30 $60

    ld de, $1050                                  ; $6D30: $11 $50 $10
    ld b, b                                       ; $6D33: $40
    jr nc, jr_03F_6D66                            ; $6D34: $30 $30

    ld de, $1020                                  ; $6D36: $11 $20 $10
    stop                                          ; $6D39: $10 $00
    nop                                           ; $6D3B: $00
    nop                                           ; $6D3C: $00
    ldh a, [rTMA]                                 ; $6D3D: $F0 $06
    ldh [rTMA], a                                 ; $6D3F: $E0 $06
    ret nc                                        ; $6D41: $D0

    ld b, $C0                                     ; $6D42: $06 $C0
    ld b, $B0                                     ; $6D44: $06 $B0
    ld b, $A0                                     ; $6D46: $06 $A0
    ld b, $90                                     ; $6D48: $06 $90
    ld b, $80                                     ; $6D4A: $06 $80
    ld b, $70                                     ; $6D4C: $06 $70
    ld b, $60                                     ; $6D4E: $06 $60
    ld b, $50                                     ; $6D50: $06 $50
    ld b, $40                                     ; $6D52: $06 $40
    ld b, $30                                     ; $6D54: $06 $30
    ld b, $20                                     ; $6D56: $06 $20
    nop                                           ; $6D58: $00
    db $10                                        ; $6D59: $10
    ld [bc], a                                    ; $6D5A: $02
    nop                                           ; $6D5B: $00
    ld [bc], a                                    ; $6D5C: $02
    ldh a, [rNR43]                                ; $6D5D: $F0 $22
    ldh [rTIMA], a                                ; $6D5F: $E0 $05

jr_03F_6D61:
    ret nc                                        ; $6D61: $D0

    ld [hl], $C0                                  ; $6D62: $36 $C0
    inc e                                         ; $6D64: $1C
    or b                                          ; $6D65: $B0

jr_03F_6D66:
    jr jr_03F_6D08                                ; $6D66: $18 $A0

    dec b                                         ; $6D68: $05
    sub b                                         ; $6D69: $90
    ld [hl+], a                                   ; $6D6A: $22
    add b                                         ; $6D6B: $80
    inc e                                         ; $6D6C: $1C
    ld [hl], b                                    ; $6D6D: $70
    jr jr_03F_6DD0                                ; $6D6E: $18 $60

    dec b                                         ; $6D70: $05
    ld d, b                                       ; $6D71: $50
    inc c                                         ; $6D72: $0C
    ld b, b                                       ; $6D73: $40
    dec b                                         ; $6D74: $05
    jr nc, jr_03F_6D83                            ; $6D75: $30 $0C

    jr nz, jr_03F_6D79                            ; $6D77: $20 $00

jr_03F_6D79:
    db $10                                        ; $6D79: $10
    ld [bc], a                                    ; $6D7A: $02
    nop                                           ; $6D7B: $00
    ld [bc], a                                    ; $6D7C: $02
    ldh a, [rTIMA]                                ; $6D7D: $F0 $05
    ldh [rTIMA], a                                ; $6D7F: $E0 $05
    ret nc                                        ; $6D81: $D0

    dec b                                         ; $6D82: $05

jr_03F_6D83:
    ret nz                                        ; $6D83: $C0

    dec b                                         ; $6D84: $05
    or b                                          ; $6D85: $B0
    dec b                                         ; $6D86: $05
    and b                                         ; $6D87: $A0
    dec b                                         ; $6D88: $05
    sub b                                         ; $6D89: $90
    dec b                                         ; $6D8A: $05
    add b                                         ; $6D8B: $80
    dec b                                         ; $6D8C: $05
    ld [hl], b                                    ; $6D8D: $70
    dec b                                         ; $6D8E: $05
    ld h, b                                       ; $6D8F: $60

jr_03F_6D90:
    dec b                                         ; $6D90: $05
    ld d, b                                       ; $6D91: $50
    dec b                                         ; $6D92: $05
    ld b, b                                       ; $6D93: $40
    dec b                                         ; $6D94: $05
    jr nc, jr_03F_6D9C                            ; $6D95: $30 $05

    jr nz, jr_03F_6D99                            ; $6D97: $20 $00

jr_03F_6D99:
    db $10                                        ; $6D99: $10
    ld [bc], a                                    ; $6D9A: $02
    nop                                           ; $6D9B: $00

jr_03F_6D9C:
    ld [bc], a                                    ; $6D9C: $02
    ldh a, [rTMA]                                 ; $6D9D: $F0 $06
    ldh [rTMA], a                                 ; $6D9F: $E0 $06
    ret nc                                        ; $6DA1: $D0

    ld b, $C0                                     ; $6DA2: $06 $C0
    ld b, $B0                                     ; $6DA4: $06 $B0
    ld b, $A0                                     ; $6DA6: $06 $A0
    ld b, $90                                     ; $6DA8: $06 $90
    ld b, $80                                     ; $6DAA: $06 $80
    ld b, $70                                     ; $6DAC: $06 $70
    ld b, $60                                     ; $6DAE: $06 $60
    ld b, $50                                     ; $6DB0: $06 $50
    ld b, $40                                     ; $6DB2: $06 $40
    ld b, $30                                     ; $6DB4: $06 $30
    ld b, $20                                     ; $6DB6: $06 $20
    nop                                           ; $6DB8: $00
    db $10                                        ; $6DB9: $10
    ld [bc], a                                    ; $6DBA: $02
    nop                                           ; $6DBB: $00
    ld [bc], a                                    ; $6DBC: $02
    ldh a, [rTIMA]                                ; $6DBD: $F0 $05
    ldh [rTIMA], a                                ; $6DBF: $E0 $05
    ret nc                                        ; $6DC1: $D0

    dec b                                         ; $6DC2: $05
    ret nz                                        ; $6DC3: $C0

    dec b                                         ; $6DC4: $05
    or b                                          ; $6DC5: $B0
    dec b                                         ; $6DC6: $05
    and b                                         ; $6DC7: $A0
    dec b                                         ; $6DC8: $05
    sub b                                         ; $6DC9: $90
    dec b                                         ; $6DCA: $05
    add b                                         ; $6DCB: $80
    dec b                                         ; $6DCC: $05
    ld [hl], b                                    ; $6DCD: $70
    dec b                                         ; $6DCE: $05
    ld h, b                                       ; $6DCF: $60

jr_03F_6DD0:
    dec b                                         ; $6DD0: $05
    ld d, b                                       ; $6DD1: $50
    dec b                                         ; $6DD2: $05
    ld b, b                                       ; $6DD3: $40
    dec b                                         ; $6DD4: $05
    jr nc, jr_03F_6DDC                            ; $6DD5: $30 $05

    jr nz, jr_03F_6DD9                            ; $6DD7: $20 $00

jr_03F_6DD9:
    db $10                                        ; $6DD9: $10
    ld [bc], a                                    ; $6DDA: $02
    nop                                           ; $6DDB: $00

jr_03F_6DDC:
    ld [bc], a                                    ; $6DDC: $02
    ldh a, [rTMA]                                 ; $6DDD: $F0 $06
    ldh [rTMA], a                                 ; $6DDF: $E0 $06
    ret nc                                        ; $6DE1: $D0

    ld b, $C0                                     ; $6DE2: $06 $C0
    ld b, $B0                                     ; $6DE4: $06 $B0
    ld b, $A0                                     ; $6DE6: $06 $A0
    ld b, $90                                     ; $6DE8: $06 $90
    ld b, $80                                     ; $6DEA: $06 $80
    ld b, $70                                     ; $6DEC: $06 $70
    ld b, $60                                     ; $6DEE: $06 $60
    ld b, $50                                     ; $6DF0: $06 $50
    ld b, $40                                     ; $6DF2: $06 $40
    ld b, $30                                     ; $6DF4: $06 $30
    ld b, $20                                     ; $6DF6: $06 $20
    nop                                           ; $6DF8: $00
    db $10                                        ; $6DF9: $10
    ld [bc], a                                    ; $6DFA: $02
    nop                                           ; $6DFB: $00
    ld [bc], a                                    ; $6DFC: $02
    ldh a, [rNR50]                                ; $6DFD: $F0 $24
    ldh [rOBP0], a                                ; $6DFF: $E0 $48
    ret nc                                        ; $6E01: $D0

    rra                                           ; $6E02: $1F
    ret nz                                        ; $6E03: $C0

    ld c, b                                       ; $6E04: $48
    or b                                          ; $6E05: $B0
    rra                                           ; $6E06: $1F
    and b                                         ; $6E07: $A0
    rra                                           ; $6E08: $1F
    sub b                                         ; $6E09: $90
    rra                                           ; $6E0A: $1F
    add b                                         ; $6E0B: $80
    add hl, sp                                    ; $6E0C: $39
    ld [hl], b                                    ; $6E0D: $70
    add hl, sp                                    ; $6E0E: $39
    ld h, b                                       ; $6E0F: $60
    add hl, sp                                    ; $6E10: $39
    ld d, b                                       ; $6E11: $50
    db $10                                        ; $6E12: $10
    ld b, b                                       ; $6E13: $40
    add hl, sp                                    ; $6E14: $39
    jr nc, jr_03F_6E27                            ; $6E15: $30 $10

    jr nz, jr_03F_6E19                            ; $6E17: $20 $00

jr_03F_6E19:
    db $10                                        ; $6E19: $10
    ld [bc], a                                    ; $6E1A: $02
    nop                                           ; $6E1B: $00
    ld [bc], a                                    ; $6E1C: $02
    ldh a, [rDIV]                                 ; $6E1D: $F0 $04
    ldh [rDIV], a                                 ; $6E1F: $E0 $04
    ret nc                                        ; $6E21: $D0

    inc b                                         ; $6E22: $04
    ret nz                                        ; $6E23: $C0

    inc b                                         ; $6E24: $04
    or b                                          ; $6E25: $B0
    inc b                                         ; $6E26: $04

jr_03F_6E27:
    and b                                         ; $6E27: $A0
    inc b                                         ; $6E28: $04
    sub b                                         ; $6E29: $90
    inc b                                         ; $6E2A: $04
    add b                                         ; $6E2B: $80
    inc b                                         ; $6E2C: $04
    ld [hl], b                                    ; $6E2D: $70
    inc b                                         ; $6E2E: $04
    ld h, b                                       ; $6E2F: $60
    inc b                                         ; $6E30: $04
    ld d, b                                       ; $6E31: $50
    inc b                                         ; $6E32: $04
    ld b, b                                       ; $6E33: $40
    inc b                                         ; $6E34: $04
    jr nc, jr_03F_6E3B                            ; $6E35: $30 $04

    jr nz, jr_03F_6E39                            ; $6E37: $20 $00

jr_03F_6E39:
    db $10                                        ; $6E39: $10
    ld [bc], a                                    ; $6E3A: $02

jr_03F_6E3B:
    nop                                           ; $6E3B: $00
    ld [bc], a                                    ; $6E3C: $02
    ldh a, [rDIV]                                 ; $6E3D: $F0 $04
    ldh [rBGP], a                                 ; $6E3F: $E0 $47
    ret nc                                        ; $6E41: $D0

    ld b, a                                       ; $6E42: $47
    ret nz                                        ; $6E43: $C0

    ld a, [bc]                                    ; $6E44: $0A
    or b                                          ; $6E45: $B0
    dec [hl]                                      ; $6E46: $35
    and b                                         ; $6E47: $A0
    ld b, a                                       ; $6E48: $47
    sub b                                         ; $6E49: $90
    inc b                                         ; $6E4A: $04
    add b                                         ; $6E4B: $80
    inc hl                                        ; $6E4C: $23
    ld [hl], b                                    ; $6E4D: $70
    dec [hl]                                      ; $6E4E: $35
    ld h, b                                       ; $6E4F: $60
    inc b                                         ; $6E50: $04
    ld d, b                                       ; $6E51: $50
    dec [hl]                                      ; $6E52: $35
    ld b, b                                       ; $6E53: $40
    ld a, [bc]                                    ; $6E54: $0A
    jr nc, jr_03F_6E5B                            ; $6E55: $30 $04

    jr nz, jr_03F_6E59                            ; $6E57: $20 $00

jr_03F_6E59:
    db $10                                        ; $6E59: $10
    ld [bc], a                                    ; $6E5A: $02

jr_03F_6E5B:
    nop                                           ; $6E5B: $00
    ld [bc], a                                    ; $6E5C: $02
    ldh a, [rDIV]                                 ; $6E5D: $F0 $04
    ldh [$FF08], a                                ; $6E5F: $E0 $08
    ret nc                                        ; $6E61: $D0

    inc b                                         ; $6E62: $04
    ret nz                                        ; $6E63: $C0

    dec [hl]                                      ; $6E64: $35
    or b                                          ; $6E65: $B0
    inc b                                         ; $6E66: $04
    and b                                         ; $6E67: $A0
    ld [$3590], sp                                ; $6E68: $08 $90 $35
    add b                                         ; $6E6B: $80
    inc b                                         ; $6E6C: $04
    ld [hl], b                                    ; $6E6D: $70
    ld [$3560], sp                                ; $6E6E: $08 $60 $35
    ld d, b                                       ; $6E71: $50
    inc b                                         ; $6E72: $04
    ld b, b                                       ; $6E73: $40
    dec [hl]                                      ; $6E74: $35
    jr nc, jr_03F_6E7B                            ; $6E75: $30 $04

    jr nz, jr_03F_6E79                            ; $6E77: $20 $00

jr_03F_6E79:
    db $10                                        ; $6E79: $10
    ld [bc], a                                    ; $6E7A: $02

jr_03F_6E7B:
    nop                                           ; $6E7B: $00
    ld [bc], a                                    ; $6E7C: $02
    ldh a, [rSTAT]                                ; $6E7D: $F0 $41
    ldh [$FF0D], a                                ; $6E7F: $E0 $0D
    ret nc                                        ; $6E81: $D0

    ld [$04C0], sp                                ; $6E82: $08 $C0 $04
    or b                                          ; $6E85: $B0
    dec [hl]                                      ; $6E86: $35
    and b                                         ; $6E87: $A0
    ld [$3590], sp                                ; $6E88: $08 $90 $35
    add b                                         ; $6E8B: $80
    ld a, [bc]                                    ; $6E8C: $0A
    ld [hl], b                                    ; $6E8D: $70
    dec [hl]                                      ; $6E8E: $35
    ld h, b                                       ; $6E8F: $60
    ld [$0450], sp                                ; $6E90: $08 $50 $04
    ld b, b                                       ; $6E93: $40
    dec [hl]                                      ; $6E94: $35
    jr nc, jr_03F_6E9B                            ; $6E95: $30 $04

    jr nz, jr_03F_6E99                            ; $6E97: $20 $00

jr_03F_6E99:
    db $10                                        ; $6E99: $10
    ld [bc], a                                    ; $6E9A: $02

jr_03F_6E9B:
    nop                                           ; $6E9B: $00
    ld [bc], a                                    ; $6E9C: $02

jr_03F_6E9D:
    ldh a, [rSTAT]                                ; $6E9D: $F0 $41
    ldh [$FF0D], a                                ; $6E9F: $E0 $0D
    ret nc                                        ; $6EA1: $D0

    ld [$35C0], sp                                ; $6EA2: $08 $C0 $35
    or b                                          ; $6EA5: $B0
    ld a, [bc]                                    ; $6EA6: $0A
    and b                                         ; $6EA7: $A0
    ld [$3590], sp                                ; $6EA8: $08 $90 $35
    add b                                         ; $6EAB: $80
    ld a, [bc]                                    ; $6EAC: $0A
    ld [hl], b                                    ; $6EAD: $70
    ld [$3560], sp                                ; $6EAE: $08 $60 $35
    ld d, b                                       ; $6EB1: $50
    ld [$0A40], sp                                ; $6EB2: $08 $40 $0A
    jr nc, jr_03F_6EEC                            ; $6EB5: $30 $35

    jr nz, jr_03F_6EB9                            ; $6EB7: $20 $00

jr_03F_6EB9:
    db $10                                        ; $6EB9: $10
    ld [bc], a                                    ; $6EBA: $02
    nop                                           ; $6EBB: $00
    ld [bc], a                                    ; $6EBC: $02
    jr z, jr_03F_6E9D                             ; $6EBD: $28 $DE

    ld l, [hl]                                    ; $6EBF: $6E
    inc a                                         ; $6EC0: $3C
    sub b                                         ; $6EC1: $90
    cp $6E                                        ; $6EC2: $FE $6E
    ld e, $6F                                     ; $6EC4: $1E $6F
    jr z, @+$4A                                   ; $6EC6: $28 $48

    ld a, $6F                                     ; $6EC8: $3E $6F
    ld e, [hl]                                    ; $6ECA: $5E
    ld l, a                                       ; $6ECB: $6F
    ld a, [hl]                                    ; $6ECC: $7E
    ld l, a                                       ; $6ECD: $6F
    sbc [hl]                                      ; $6ECE: $9E
    ld l, a                                       ; $6ECF: $6F
    jr z, jr_03F_6F22                             ; $6ED0: $28 $50

    cp [hl]                                       ; $6ED2: $BE
    ld l, a                                       ; $6ED3: $6F
    sbc $6F                                       ; $6ED4: $DE $6F
    cp $6F                                        ; $6ED6: $FE $6F
    ld e, $70                                     ; $6ED8: $1E $70
    ld a, $70                                     ; $6EDA: $3E $70
    ld e, [hl]                                    ; $6EDC: $5E
    ld [hl], b                                    ; $6EDD: $70
    ldh a, [rNR50]                                ; $6EDE: $F0 $24
    ldh [rNR44], a                                ; $6EE0: $E0 $23
    ret nc                                        ; $6EE2: $D0

    inc h                                         ; $6EE3: $24
    ret nz                                        ; $6EE4: $C0

    inc hl                                        ; $6EE5: $23
    or b                                          ; $6EE6: $B0
    inc h                                         ; $6EE7: $24
    and b                                         ; $6EE8: $A0
    inc hl                                        ; $6EE9: $23
    sub b                                         ; $6EEA: $90
    inc hl                                        ; $6EEB: $23

jr_03F_6EEC:
    add b                                         ; $6EEC: $80
    inc hl                                        ; $6EED: $23
    ld [hl], b                                    ; $6EEE: $70
    ld [de], a                                    ; $6EEF: $12
    ld h, b                                       ; $6EF0: $60
    ld [de], a                                    ; $6EF1: $12
    ld d, b                                       ; $6EF2: $50
    ld [de], a                                    ; $6EF3: $12
    ld b, b                                       ; $6EF4: $40
    ld de, $1030                                  ; $6EF5: $11 $30 $10
    jr nz, jr_03F_6F0B                            ; $6EF8: $20 $11

    db $10                                        ; $6EFA: $10
    stop                                          ; $6EFB: $10 $00
    ld de, $06F0                                  ; $6EFD: $11 $F0 $06
    ldh [rTMA], a                                 ; $6F00: $E0 $06
    ret nc                                        ; $6F02: $D0

    ld b, $C0                                     ; $6F03: $06 $C0
    ld b, $B0                                     ; $6F05: $06 $B0
    ld b, $A0                                     ; $6F07: $06 $A0
    ld b, $90                                     ; $6F09: $06 $90

jr_03F_6F0B:
    ld b, $80                                     ; $6F0B: $06 $80
    ld b, $70                                     ; $6F0D: $06 $70
    ld b, $60                                     ; $6F0F: $06 $60
    ld b, $50                                     ; $6F11: $06 $50
    ld b, $40                                     ; $6F13: $06 $40
    ld b, $30                                     ; $6F15: $06 $30
    ld b, $20                                     ; $6F17: $06 $20
    nop                                           ; $6F19: $00
    db $10                                        ; $6F1A: $10
    ld [bc], a                                    ; $6F1B: $02
    nop                                           ; $6F1C: $00
    ld [bc], a                                    ; $6F1D: $02
    ldh a, [rNR32]                                ; $6F1E: $F0 $1C
    ldh [rNR32], a                                ; $6F20: $E0 $1C

jr_03F_6F22:
    ret nc                                        ; $6F22: $D0

    dec b                                         ; $6F23: $05
    ret nz                                        ; $6F24: $C0

    inc e                                         ; $6F25: $1C
    or b                                          ; $6F26: $B0
    dec b                                         ; $6F27: $05
    and b                                         ; $6F28: $A0
    dec b                                         ; $6F29: $05
    sub b                                         ; $6F2A: $90
    inc e                                         ; $6F2B: $1C
    add b                                         ; $6F2C: $80
    dec b                                         ; $6F2D: $05
    ld [hl], b                                    ; $6F2E: $70
    inc e                                         ; $6F2F: $1C
    ld h, b                                       ; $6F30: $60
    dec b                                         ; $6F31: $05
    ld d, b                                       ; $6F32: $50
    dec b                                         ; $6F33: $05
    ld b, b                                       ; $6F34: $40
    inc e                                         ; $6F35: $1C
    jr nc, jr_03F_6F3D                            ; $6F36: $30 $05

    jr nz, jr_03F_6F3A                            ; $6F38: $20 $00

jr_03F_6F3A:
    db $10                                        ; $6F3A: $10
    ld [bc], a                                    ; $6F3B: $02
    nop                                           ; $6F3C: $00

jr_03F_6F3D:
    ld [bc], a                                    ; $6F3D: $02
    ldh a, [rTIMA]                                ; $6F3E: $F0 $05
    ldh [rTIMA], a                                ; $6F40: $E0 $05
    ret nc                                        ; $6F42: $D0

    dec b                                         ; $6F43: $05
    ret nz                                        ; $6F44: $C0

    dec b                                         ; $6F45: $05
    or b                                          ; $6F46: $B0
    dec b                                         ; $6F47: $05
    and b                                         ; $6F48: $A0
    dec b                                         ; $6F49: $05
    sub b                                         ; $6F4A: $90
    dec b                                         ; $6F4B: $05
    add b                                         ; $6F4C: $80
    dec b                                         ; $6F4D: $05
    ld [hl], b                                    ; $6F4E: $70
    dec b                                         ; $6F4F: $05
    ld h, b                                       ; $6F50: $60
    dec b                                         ; $6F51: $05
    ld d, b                                       ; $6F52: $50
    dec b                                         ; $6F53: $05
    ld b, b                                       ; $6F54: $40
    dec b                                         ; $6F55: $05
    jr nc, jr_03F_6F5D                            ; $6F56: $30 $05

    jr nz, jr_03F_6F5A                            ; $6F58: $20 $00

jr_03F_6F5A:
    db $10                                        ; $6F5A: $10
    ld [bc], a                                    ; $6F5B: $02
    nop                                           ; $6F5C: $00

jr_03F_6F5D:
    ld [bc], a                                    ; $6F5D: $02
    ldh a, [rTMA]                                 ; $6F5E: $F0 $06
    ldh [rTMA], a                                 ; $6F60: $E0 $06
    ret nc                                        ; $6F62: $D0

    ld b, $C0                                     ; $6F63: $06 $C0
    ld b, $B0                                     ; $6F65: $06 $B0
    ld b, $A0                                     ; $6F67: $06 $A0
    ld b, $90                                     ; $6F69: $06 $90
    ld b, $80                                     ; $6F6B: $06 $80
    ld b, $70                                     ; $6F6D: $06 $70
    ld b, $60                                     ; $6F6F: $06 $60
    ld b, $50                                     ; $6F71: $06 $50
    ld b, $40                                     ; $6F73: $06 $40
    ld b, $30                                     ; $6F75: $06 $30
    ld b, $20                                     ; $6F77: $06 $20
    nop                                           ; $6F79: $00
    db $10                                        ; $6F7A: $10
    ld [bc], a                                    ; $6F7B: $02
    nop                                           ; $6F7C: $00
    ld [bc], a                                    ; $6F7D: $02
    ldh a, [rTIMA]                                ; $6F7E: $F0 $05
    ldh [rTIMA], a                                ; $6F80: $E0 $05
    ret nc                                        ; $6F82: $D0

    dec b                                         ; $6F83: $05
    ret nz                                        ; $6F84: $C0

    dec b                                         ; $6F85: $05
    or b                                          ; $6F86: $B0
    dec b                                         ; $6F87: $05
    and b                                         ; $6F88: $A0
    dec b                                         ; $6F89: $05
    sub b                                         ; $6F8A: $90
    dec b                                         ; $6F8B: $05
    add b                                         ; $6F8C: $80
    dec b                                         ; $6F8D: $05
    ld [hl], b                                    ; $6F8E: $70
    dec b                                         ; $6F8F: $05
    ld h, b                                       ; $6F90: $60
    dec b                                         ; $6F91: $05
    ld d, b                                       ; $6F92: $50
    dec b                                         ; $6F93: $05
    ld b, b                                       ; $6F94: $40
    dec b                                         ; $6F95: $05
    jr nc, jr_03F_6F9D                            ; $6F96: $30 $05

    jr nz, jr_03F_6F9A                            ; $6F98: $20 $00

jr_03F_6F9A:
    db $10                                        ; $6F9A: $10
    ld [bc], a                                    ; $6F9B: $02
    nop                                           ; $6F9C: $00

jr_03F_6F9D:
    ld [bc], a                                    ; $6F9D: $02
    ldh a, [rTMA]                                 ; $6F9E: $F0 $06
    ldh [rTMA], a                                 ; $6FA0: $E0 $06
    ret nc                                        ; $6FA2: $D0

    ld b, $C0                                     ; $6FA3: $06 $C0
    ld b, $B0                                     ; $6FA5: $06 $B0
    ld b, $A0                                     ; $6FA7: $06 $A0
    ld b, $90                                     ; $6FA9: $06 $90
    ld b, $80                                     ; $6FAB: $06 $80
    ld b, $70                                     ; $6FAD: $06 $70
    ld b, $60                                     ; $6FAF: $06 $60
    ld b, $50                                     ; $6FB1: $06 $50
    ld b, $40                                     ; $6FB3: $06 $40
    ld b, $30                                     ; $6FB5: $06 $30
    ld b, $20                                     ; $6FB7: $06 $20
    nop                                           ; $6FB9: $00
    db $10                                        ; $6FBA: $10
    ld [bc], a                                    ; $6FBB: $02
    nop                                           ; $6FBC: $00
    ld [bc], a                                    ; $6FBD: $02
    ldh a, [rNR50]                                ; $6FBE: $F0 $24
    ldh [rNR43], a                                ; $6FC0: $E0 $22
    ret nc                                        ; $6FC2: $D0

    scf                                           ; $6FC3: $37
    ret nz                                        ; $6FC4: $C0

    db $10                                        ; $6FC5: $10
    or b                                          ; $6FC6: $B0
    ld [hl+], a                                   ; $6FC7: $22
    and b                                         ; $6FC8: $A0
    scf                                           ; $6FC9: $37
    sub b                                         ; $6FCA: $90
    db $10                                        ; $6FCB: $10
    add b                                         ; $6FCC: $80
    ld [hl+], a                                   ; $6FCD: $22
    ld [hl], b                                    ; $6FCE: $70
    db $10                                        ; $6FCF: $10
    ld h, b                                       ; $6FD0: $60
    scf                                           ; $6FD1: $37
    ld d, b                                       ; $6FD2: $50
    ld [hl+], a                                   ; $6FD3: $22
    ld b, b                                       ; $6FD4: $40
    db $10                                        ; $6FD5: $10
    jr nc, jr_03F_6FE8                            ; $6FD6: $30 $10

    jr nz, jr_03F_6FDA                            ; $6FD8: $20 $00

jr_03F_6FDA:
    db $10                                        ; $6FDA: $10
    ld [bc], a                                    ; $6FDB: $02
    nop                                           ; $6FDC: $00
    ld [bc], a                                    ; $6FDD: $02
    ldh a, [rNR12]                                ; $6FDE: $F0 $12
    ldh [$FF0B], a                                ; $6FE0: $E0 $0B
    ret nc                                        ; $6FE2: $D0

    ld [de], a                                    ; $6FE3: $12
    ret nz                                        ; $6FE4: $C0

    dec bc                                        ; $6FE5: $0B
    or b                                          ; $6FE6: $B0
    ld [de], a                                    ; $6FE7: $12

jr_03F_6FE8:
    and b                                         ; $6FE8: $A0
    dec bc                                        ; $6FE9: $0B
    sub b                                         ; $6FEA: $90
    ld [de], a                                    ; $6FEB: $12
    add b                                         ; $6FEC: $80
    dec bc                                        ; $6FED: $0B
    ld [hl], b                                    ; $6FEE: $70
    ld a, [bc]                                    ; $6FEF: $0A
    ld h, b                                       ; $6FF0: $60
    db $10                                        ; $6FF1: $10
    ld d, b                                       ; $6FF2: $50
    db $10                                        ; $6FF3: $10
    ld b, b                                       ; $6FF4: $40
    dec bc                                        ; $6FF5: $0B
    jr nc, jr_03F_7008                            ; $6FF6: $30 $10

    jr nz, jr_03F_6FFA                            ; $6FF8: $20 $00

jr_03F_6FFA:
    db $10                                        ; $6FFA: $10
    ld [bc], a                                    ; $6FFB: $02
    nop                                           ; $6FFC: $00
    ld [bc], a                                    ; $6FFD: $02
    ldh a, [rNR30]                                ; $6FFE: $F0 $1A
    ldh [rNR31], a                                ; $7000: $E0 $1B
    ret nc                                        ; $7002: $D0

    inc hl                                        ; $7003: $23
    ret nz                                        ; $7004: $C0

    ld a, [de]                                    ; $7005: $1A
    or b                                          ; $7006: $B0
    inc l                                         ; $7007: $2C

jr_03F_7008:
    and b                                         ; $7008: $A0
    inc hl                                        ; $7009: $23
    sub b                                         ; $700A: $90
    ld [hl+], a                                   ; $700B: $22
    add b                                         ; $700C: $80
    dec de                                        ; $700D: $1B
    ld [hl], b                                    ; $700E: $70
    inc hl                                        ; $700F: $23
    ld h, b                                       ; $7010: $60
    ld a, [bc]                                    ; $7011: $0A
    ld d, b                                       ; $7012: $50
    ld [hl+], a                                   ; $7013: $22
    ld b, b                                       ; $7014: $40
    inc l                                         ; $7015: $2C
    jr nc, jr_03F_7022                            ; $7016: $30 $0A

    jr nz, jr_03F_701A                            ; $7018: $20 $00

jr_03F_701A:
    db $10                                        ; $701A: $10
    ld [bc], a                                    ; $701B: $02
    nop                                           ; $701C: $00
    ld [bc], a                                    ; $701D: $02
    ldh a, [rNR43]                                ; $701E: $F0 $22
    ldh [$FF0A], a                                ; $7020: $E0 $0A

jr_03F_7022:
    ret nc                                        ; $7022: $D0

    inc hl                                        ; $7023: $23
    ret nz                                        ; $7024: $C0

    ld [$23B0], sp                                ; $7025: $08 $B0 $23
    and b                                         ; $7028: $A0
    ld [hl+], a                                   ; $7029: $22
    sub b                                         ; $702A: $90
    ld a, [bc]                                    ; $702B: $0A
    add b                                         ; $702C: $80
    ld [$0A70], sp                                ; $702D: $08 $70 $0A
    ld h, b                                       ; $7030: $60
    ld [$0A50], sp                                ; $7031: $08 $50 $0A
    ld b, b                                       ; $7034: $40
    ld [$0A30], sp                                ; $7035: $08 $30 $0A
    jr nz, jr_03F_703A                            ; $7038: $20 $00

jr_03F_703A:
    db $10                                        ; $703A: $10
    ld [bc], a                                    ; $703B: $02

jr_03F_703C:
    nop                                           ; $703C: $00
    ld [bc], a                                    ; $703D: $02
    ldh a, [$FF0D]                                ; $703E: $F0 $0D
    ldh [$FF08], a                                ; $7040: $E0 $08
    ret nc                                        ; $7042: $D0

    dec c                                         ; $7043: $0D
    ret nz                                        ; $7044: $C0

    ld [$0AB0], sp                                ; $7045: $08 $B0 $0A
    and b                                         ; $7048: $A0
    ld [$0890], sp                                ; $7049: $08 $90 $08
    add b                                         ; $704C: $80
    ld [$0870], sp                                ; $704D: $08 $70 $08
    ld h, b                                       ; $7050: $60
    ld [$0850], sp                                ; $7051: $08 $50 $08
    ld b, b                                       ; $7054: $40
    ld [$0830], sp                                ; $7055: $08 $30 $08
    jr nz, jr_03F_705A                            ; $7058: $20 $00

jr_03F_705A:
    db $10                                        ; $705A: $10
    ld [bc], a                                    ; $705B: $02
    nop                                           ; $705C: $00
    ld [bc], a                                    ; $705D: $02
    ldh a, [$FF0D]                                ; $705E: $F0 $0D
    ldh [$FF08], a                                ; $7060: $E0 $08
    ret nc                                        ; $7062: $D0

    dec c                                         ; $7063: $0D
    ret nz                                        ; $7064: $C0

    ld [$0AB0], sp                                ; $7065: $08 $B0 $0A
    and b                                         ; $7068: $A0
    ld [$0890], sp                                ; $7069: $08 $90 $08
    add b                                         ; $706C: $80
    ld [$0D70], sp                                ; $706D: $08 $70 $0D
    ld h, b                                       ; $7070: $60
    ld [$0850], sp                                ; $7071: $08 $50 $08
    ld b, b                                       ; $7074: $40
    ld [$0830], sp                                ; $7075: $08 $30 $08
    jr nz, jr_03F_707A                            ; $7078: $20 $00

jr_03F_707A:
    db $10                                        ; $707A: $10
    ld [bc], a                                    ; $707B: $02
    nop                                           ; $707C: $00
    ld [bc], a                                    ; $707D: $02
    jr nc, @-$5F                                  ; $707E: $30 $9F

    ld [hl], b                                    ; $7080: $70
    ld d, b                                       ; $7081: $50
    add b                                         ; $7082: $80
    cp a                                          ; $7083: $BF
    ld [hl], b                                    ; $7084: $70
    rst RST_18                                    ; $7085: $DF
    ld [hl], b                                    ; $7086: $70
    jr nc, @+$52                                  ; $7087: $30 $50

    rst RST_38                                    ; $7089: $FF
    ld [hl], b                                    ; $708A: $70
    rra                                           ; $708B: $1F
    ld [hl], c                                    ; $708C: $71
    ccf                                           ; $708D: $3F
    ld [hl], c                                    ; $708E: $71
    ld e, a                                       ; $708F: $5F
    ld [hl], c                                    ; $7090: $71
    jr nc, jr_03F_70E3                            ; $7091: $30 $50

    ld a, a                                       ; $7093: $7F
    ld [hl], c                                    ; $7094: $71
    sbc a                                         ; $7095: $9F
    ld [hl], c                                    ; $7096: $71
    cp a                                          ; $7097: $BF
    ld [hl], c                                    ; $7098: $71
    rst RST_18                                    ; $7099: $DF
    ld [hl], c                                    ; $709A: $71
    rst RST_38                                    ; $709B: $FF
    ld [hl], c                                    ; $709C: $71
    rra                                           ; $709D: $1F
    ld [hl], d                                    ; $709E: $72
    ldh a, [rNR44]                                ; $709F: $F0 $23
    ldh [rNR44], a                                ; $70A1: $E0 $23
    ret nc                                        ; $70A3: $D0

    jr nc, @-$3E                                  ; $70A4: $30 $C0

    inc hl                                        ; $70A6: $23
    or b                                          ; $70A7: $B0
    inc hl                                        ; $70A8: $23
    and b                                         ; $70A9: $A0
    jr nc, jr_03F_703C                            ; $70AA: $30 $90

    inc hl                                        ; $70AC: $23
    add b                                         ; $70AD: $80
    jr nc, @+$72                                  ; $70AE: $30 $70

    inc hl                                        ; $70B0: $23
    ld h, b                                       ; $70B1: $60
    jr nc, jr_03F_7104                            ; $70B2: $30 $50

    jr nc, jr_03F_70F6                            ; $70B4: $30 $40

    dec d                                         ; $70B6: $15
    jr nc, jr_03F_70CE                            ; $70B7: $30 $15

    jr nz, jr_03F_70D0                            ; $70B9: $20 $15

    db $10                                        ; $70BB: $10
    ld de, $1000                                  ; $70BC: $11 $00 $10
    ldh a, [rTMA]                                 ; $70BF: $F0 $06
    ldh [rTMA], a                                 ; $70C1: $E0 $06
    ret nc                                        ; $70C3: $D0

    ld b, $C0                                     ; $70C4: $06 $C0
    ld b, $B0                                     ; $70C6: $06 $B0
    ld b, $A0                                     ; $70C8: $06 $A0
    ld b, $90                                     ; $70CA: $06 $90
    ld b, $80                                     ; $70CC: $06 $80

jr_03F_70CE:
    ld b, $70                                     ; $70CE: $06 $70

jr_03F_70D0:
    ld b, $60                                     ; $70D0: $06 $60
    ld b, $50                                     ; $70D2: $06 $50
    ld b, $40                                     ; $70D4: $06 $40
    ld b, $30                                     ; $70D6: $06 $30
    ld b, $20                                     ; $70D8: $06 $20
    nop                                           ; $70DA: $00
    db $10                                        ; $70DB: $10
    ld [bc], a                                    ; $70DC: $02
    nop                                           ; $70DD: $00
    ld [bc], a                                    ; $70DE: $02
    ldh a, [$FF3D]                                ; $70DF: $F0 $3D
    ldh [$FF36], a                                ; $70E1: $E0 $36

jr_03F_70E3:
    ret nc                                        ; $70E3: $D0

    dec a                                         ; $70E4: $3D
    ret nz                                        ; $70E5: $C0

    dec a                                         ; $70E6: $3D
    or b                                          ; $70E7: $B0
    dec e                                         ; $70E8: $1D
    and b                                         ; $70E9: $A0
    dec b                                         ; $70EA: $05
    sub b                                         ; $70EB: $90
    dec a                                         ; $70EC: $3D
    add b                                         ; $70ED: $80
    dec b                                         ; $70EE: $05
    ld [hl], b                                    ; $70EF: $70
    dec e                                         ; $70F0: $1D
    ld h, b                                       ; $70F1: $60
    dec b                                         ; $70F2: $05
    ld d, b                                       ; $70F3: $50
    dec e                                         ; $70F4: $1D
    ld b, b                                       ; $70F5: $40

jr_03F_70F6:
    dec b                                         ; $70F6: $05
    jr nc, jr_03F_70FE                            ; $70F7: $30 $05

    jr nz, jr_03F_70FB                            ; $70F9: $20 $00

jr_03F_70FB:
    db $10                                        ; $70FB: $10
    ld [bc], a                                    ; $70FC: $02
    nop                                           ; $70FD: $00

jr_03F_70FE:
    ld [bc], a                                    ; $70FE: $02
    ldh a, [rTIMA]                                ; $70FF: $F0 $05
    ldh [rTIMA], a                                ; $7101: $E0 $05
    ret nc                                        ; $7103: $D0

jr_03F_7104:
    dec b                                         ; $7104: $05
    ret nz                                        ; $7105: $C0

    dec b                                         ; $7106: $05
    or b                                          ; $7107: $B0
    dec b                                         ; $7108: $05
    and b                                         ; $7109: $A0
    dec b                                         ; $710A: $05
    sub b                                         ; $710B: $90
    dec b                                         ; $710C: $05
    add b                                         ; $710D: $80
    dec b                                         ; $710E: $05
    ld [hl], b                                    ; $710F: $70
    dec b                                         ; $7110: $05
    ld h, b                                       ; $7111: $60
    dec b                                         ; $7112: $05
    ld d, b                                       ; $7113: $50
    dec b                                         ; $7114: $05
    ld b, b                                       ; $7115: $40
    dec b                                         ; $7116: $05
    jr nc, jr_03F_711E                            ; $7117: $30 $05

    jr nz, jr_03F_711B                            ; $7119: $20 $00

jr_03F_711B:
    db $10                                        ; $711B: $10
    ld [bc], a                                    ; $711C: $02
    nop                                           ; $711D: $00

jr_03F_711E:
    ld [bc], a                                    ; $711E: $02
    ldh a, [rTMA]                                 ; $711F: $F0 $06
    ldh [rTMA], a                                 ; $7121: $E0 $06
    ret nc                                        ; $7123: $D0

    ld b, $C0                                     ; $7124: $06 $C0
    ld b, $B0                                     ; $7126: $06 $B0
    ld b, $A0                                     ; $7128: $06 $A0
    ld b, $90                                     ; $712A: $06 $90
    ld b, $80                                     ; $712C: $06 $80
    ld b, $70                                     ; $712E: $06 $70
    ld b, $60                                     ; $7130: $06 $60
    ld b, $50                                     ; $7132: $06 $50
    ld b, $40                                     ; $7134: $06 $40
    ld b, $30                                     ; $7136: $06 $30
    ld b, $20                                     ; $7138: $06 $20
    nop                                           ; $713A: $00
    db $10                                        ; $713B: $10
    ld [bc], a                                    ; $713C: $02
    nop                                           ; $713D: $00
    ld [bc], a                                    ; $713E: $02
    ldh a, [rTIMA]                                ; $713F: $F0 $05
    ldh [rTIMA], a                                ; $7141: $E0 $05
    ret nc                                        ; $7143: $D0

    dec b                                         ; $7144: $05
    ret nz                                        ; $7145: $C0

    dec b                                         ; $7146: $05
    or b                                          ; $7147: $B0
    dec b                                         ; $7148: $05
    and b                                         ; $7149: $A0
    dec b                                         ; $714A: $05
    sub b                                         ; $714B: $90
    dec b                                         ; $714C: $05
    add b                                         ; $714D: $80
    dec b                                         ; $714E: $05
    ld [hl], b                                    ; $714F: $70
    dec b                                         ; $7150: $05
    ld h, b                                       ; $7151: $60
    dec b                                         ; $7152: $05
    ld d, b                                       ; $7153: $50
    dec b                                         ; $7154: $05
    ld b, b                                       ; $7155: $40
    dec b                                         ; $7156: $05
    jr nc, jr_03F_715E                            ; $7157: $30 $05

    jr nz, jr_03F_715B                            ; $7159: $20 $00

jr_03F_715B:
    db $10                                        ; $715B: $10
    ld [bc], a                                    ; $715C: $02
    nop                                           ; $715D: $00

jr_03F_715E:
    ld [bc], a                                    ; $715E: $02
    ldh a, [rTMA]                                 ; $715F: $F0 $06
    ldh [rTMA], a                                 ; $7161: $E0 $06
    ret nc                                        ; $7163: $D0

    ld b, $C0                                     ; $7164: $06 $C0
    ld b, $B0                                     ; $7166: $06 $B0
    ld b, $A0                                     ; $7168: $06 $A0
    ld b, $90                                     ; $716A: $06 $90
    ld b, $80                                     ; $716C: $06 $80
    ld b, $70                                     ; $716E: $06 $70
    ld b, $60                                     ; $7170: $06 $60
    ld b, $50                                     ; $7172: $06 $50
    ld b, $40                                     ; $7174: $06 $40
    ld b, $30                                     ; $7176: $06 $30
    ld b, $20                                     ; $7178: $06 $20
    nop                                           ; $717A: $00
    db $10                                        ; $717B: $10
    ld [bc], a                                    ; $717C: $02
    nop                                           ; $717D: $00
    ld [bc], a                                    ; $717E: $02
    ldh a, [rNR44]                                ; $717F: $F0 $23
    ldh [$FF29], a                                ; $7181: $E0 $29
    ret nc                                        ; $7183: $D0

    inc hl                                        ; $7184: $23
    ret nz                                        ; $7185: $C0

    rra                                           ; $7186: $1F
    or b                                          ; $7187: $B0
    db $10                                        ; $7188: $10
    and b                                         ; $7189: $A0
    inc hl                                        ; $718A: $23
    sub b                                         ; $718B: $90
    ld de, $1580                                  ; $718C: $11 $80 $15
    ld [hl], b                                    ; $718F: $70
    inc hl                                        ; $7190: $23
    ld h, b                                       ; $7191: $60
    rra                                           ; $7192: $1F
    ld d, b                                       ; $7193: $50
    add hl, hl                                    ; $7194: $29
    ld b, b                                       ; $7195: $40
    db $10                                        ; $7196: $10
    jr nc, jr_03F_71AA                            ; $7197: $30 $11

    jr nz, jr_03F_719B                            ; $7199: $20 $00

jr_03F_719B:
    db $10                                        ; $719B: $10
    ld [bc], a                                    ; $719C: $02
    nop                                           ; $719D: $00
    ld [bc], a                                    ; $719E: $02
    ldh a, [rNR44]                                ; $719F: $F0 $23
    ldh [rNR44], a                                ; $71A1: $E0 $23
    ret nc                                        ; $71A3: $D0

    inc hl                                        ; $71A4: $23
    ret nz                                        ; $71A5: $C0

    dec bc                                        ; $71A6: $0B
    or b                                          ; $71A7: $B0
    inc hl                                        ; $71A8: $23
    and b                                         ; $71A9: $A0

jr_03F_71AA:
    dec bc                                        ; $71AA: $0B
    sub b                                         ; $71AB: $90
    inc hl                                        ; $71AC: $23
    add b                                         ; $71AD: $80
    dec bc                                        ; $71AE: $0B
    ld [hl], b                                    ; $71AF: $70
    inc hl                                        ; $71B0: $23
    ld h, b                                       ; $71B1: $60
    dec bc                                        ; $71B2: $0B
    ld d, b                                       ; $71B3: $50
    inc hl                                        ; $71B4: $23
    ld b, b                                       ; $71B5: $40
    dec bc                                        ; $71B6: $0B
    jr nc, jr_03F_71C4                            ; $71B7: $30 $0B

    jr nz, jr_03F_71BB                            ; $71B9: $20 $00

jr_03F_71BB:
    db $10                                        ; $71BB: $10
    ld [bc], a                                    ; $71BC: $02
    nop                                           ; $71BD: $00
    ld [bc], a                                    ; $71BE: $02
    ldh a, [rSTAT]                                ; $71BF: $F0 $41
    ldh [$FF3F], a                                ; $71C1: $E0 $3F
    ret nc                                        ; $71C3: $D0

jr_03F_71C4:
    rla                                           ; $71C4: $17
    ret nz                                        ; $71C5: $C0

    inc b                                         ; $71C6: $04
    or b                                          ; $71C7: $B0
    ld b, a                                       ; $71C8: $47
    and b                                         ; $71C9: $A0
    add hl, de                                    ; $71CA: $19
    sub b                                         ; $71CB: $90
    ccf                                           ; $71CC: $3F
    add b                                         ; $71CD: $80
    inc b                                         ; $71CE: $04
    ld [hl], b                                    ; $71CF: $70
    ld b, a                                       ; $71D0: $47
    ld h, b                                       ; $71D1: $60
    ccf                                           ; $71D2: $3F
    ld d, b                                       ; $71D3: $50
    inc b                                         ; $71D4: $04
    ld b, b                                       ; $71D5: $40
    rla                                           ; $71D6: $17
    jr nc, jr_03F_71DD                            ; $71D7: $30 $04

    jr nz, jr_03F_71DB                            ; $71D9: $20 $00

jr_03F_71DB:
    db $10                                        ; $71DB: $10
    ld [bc], a                                    ; $71DC: $02

jr_03F_71DD:
    nop                                           ; $71DD: $00
    ld [bc], a                                    ; $71DE: $02
    ldh a, [rDIV]                                 ; $71DF: $F0 $04
    ldh [$FF3F], a                                ; $71E1: $E0 $3F
    ret nc                                        ; $71E3: $D0

    inc b                                         ; $71E4: $04
    ret nz                                        ; $71E5: $C0

    ccf                                           ; $71E6: $3F
    or b                                          ; $71E7: $B0
    inc b                                         ; $71E8: $04
    and b                                         ; $71E9: $A0
    inc b                                         ; $71EA: $04
    sub b                                         ; $71EB: $90
    ccf                                           ; $71EC: $3F
    add b                                         ; $71ED: $80
    inc b                                         ; $71EE: $04
    ld [hl], b                                    ; $71EF: $70
    inc b                                         ; $71F0: $04
    ld h, b                                       ; $71F1: $60
    ccf                                           ; $71F2: $3F
    ld d, b                                       ; $71F3: $50
    inc b                                         ; $71F4: $04
    ld b, b                                       ; $71F5: $40
    ccf                                           ; $71F6: $3F
    jr nc, jr_03F_71FD                            ; $71F7: $30 $04

    jr nz, jr_03F_71FB                            ; $71F9: $20 $00

jr_03F_71FB:
    db $10                                        ; $71FB: $10
    ld [bc], a                                    ; $71FC: $02

jr_03F_71FD:
    nop                                           ; $71FD: $00
    ld [bc], a                                    ; $71FE: $02
    ldh a, [rNR50]                                ; $71FF: $F0 $24
    ldh [$FF0D], a                                ; $7201: $E0 $0D
    ret nc                                        ; $7203: $D0

    dec c                                         ; $7204: $0D
    ret nz                                        ; $7205: $C0

    ccf                                           ; $7206: $3F
    or b                                          ; $7207: $B0
    inc h                                         ; $7208: $24
    and b                                         ; $7209: $A0
    ld a, [bc]                                    ; $720A: $0A
    sub b                                         ; $720B: $90
    ld [hl+], a                                   ; $720C: $22
    add b                                         ; $720D: $80
    ld [$3F70], sp                                ; $720E: $08 $70 $3F
    ld h, b                                       ; $7211: $60
    ld [hl+], a                                   ; $7212: $22
    ld d, b                                       ; $7213: $50
    ld a, [bc]                                    ; $7214: $0A
    ld b, b                                       ; $7215: $40
    ccf                                           ; $7216: $3F
    jr nc, jr_03F_721D                            ; $7217: $30 $04

    jr nz, jr_03F_721B                            ; $7219: $20 $00

jr_03F_721B:
    db $10                                        ; $721B: $10
    ld [bc], a                                    ; $721C: $02

jr_03F_721D:
    nop                                           ; $721D: $00
    ld [bc], a                                    ; $721E: $02
    ldh a, [rNR50]                                ; $721F: $F0 $24
    ldh [$FF08], a                                ; $7221: $E0 $08
    ret nc                                        ; $7223: $D0

    ccf                                           ; $7224: $3F
    ret nz                                        ; $7225: $C0

    ld [$3FB0], sp                                ; $7226: $08 $B0 $3F
    and b                                         ; $7229: $A0
    ld [$3F90], sp                                ; $722A: $08 $90 $3F
    add b                                         ; $722D: $80
    ld [$0870], sp                                ; $722E: $08 $70 $08
    ld h, b                                       ; $7231: $60
    ccf                                           ; $7232: $3F
    ld d, b                                       ; $7233: $50
    ld [$3F40], sp                                ; $7234: $08 $40 $3F
    jr nc, jr_03F_7241                            ; $7237: $30 $08

    jr nz, jr_03F_723B                            ; $7239: $20 $00

jr_03F_723B:
    db $10                                        ; $723B: $10
    ld [bc], a                                    ; $723C: $02
    nop                                           ; $723D: $00
    ld [bc], a                                    ; $723E: $02
    jr z, @+$62                                   ; $723F: $28 $60

jr_03F_7241:
    ld [hl], d                                    ; $7241: $72
    ld c, b                                       ; $7242: $48
    sub b                                         ; $7243: $90
    add b                                         ; $7244: $80
    ld [hl], d                                    ; $7245: $72
    and b                                         ; $7246: $A0
    ld [hl], d                                    ; $7247: $72
    jr z, @+$4A                                   ; $7248: $28 $48

    ret nz                                        ; $724A: $C0

    ld [hl], d                                    ; $724B: $72
    ldh [$FF72], a                                ; $724C: $E0 $72
    nop                                           ; $724E: $00
    ld [hl], e                                    ; $724F: $73
    jr nz, jr_03F_72C5                            ; $7250: $20 $73

    jr nc, jr_03F_72B4                            ; $7252: $30 $60

    ld b, b                                       ; $7254: $40
    ld [hl], e                                    ; $7255: $73
    ld h, b                                       ; $7256: $60
    ld [hl], e                                    ; $7257: $73
    add b                                         ; $7258: $80
    ld [hl], e                                    ; $7259: $73
    and b                                         ; $725A: $A0
    ld [hl], e                                    ; $725B: $73
    ret nz                                        ; $725C: $C0

    ld [hl], e                                    ; $725D: $73
    ldh [$FF73], a                                ; $725E: $E0 $73
    ldh a, [rNR50]                                ; $7260: $F0 $24
    ldh [rNR50], a                                ; $7262: $E0 $24
    ret nc                                        ; $7264: $D0

    inc sp                                        ; $7265: $33
    ret nz                                        ; $7266: $C0

    inc sp                                        ; $7267: $33
    or b                                          ; $7268: $B0
    inc sp                                        ; $7269: $33
    and b                                         ; $726A: $A0
    inc sp                                        ; $726B: $33
    sub b                                         ; $726C: $90
    inc sp                                        ; $726D: $33
    add b                                         ; $726E: $80
    inc sp                                        ; $726F: $33
    ld [hl], b                                    ; $7270: $70
    inc sp                                        ; $7271: $33
    ld h, b                                       ; $7272: $60
    inc sp                                        ; $7273: $33
    ld d, b                                       ; $7274: $50
    dec d                                         ; $7275: $15
    ld b, b                                       ; $7276: $40
    inc sp                                        ; $7277: $33
    jr nc, jr_03F_728F                            ; $7278: $30 $15

    jr nz, jr_03F_728D                            ; $727A: $20 $11

    db $10                                        ; $727C: $10
    stop                                          ; $727D: $10 $00
    db $10                                        ; $727F: $10
    ldh a, [rNR50]                                ; $7280: $F0 $24
    ldh [rNR50], a                                ; $7282: $E0 $24
    ret nc                                        ; $7284: $D0

    ld b, $C0                                     ; $7285: $06 $C0
    ld b, $B0                                     ; $7287: $06 $B0
    ld b, $A0                                     ; $7289: $06 $A0
    ld b, $90                                     ; $728B: $06 $90

jr_03F_728D:
    ld b, $80                                     ; $728D: $06 $80

jr_03F_728F:
    ld b, $70                                     ; $728F: $06 $70
    ld b, $60                                     ; $7291: $06 $60
    ld b, $50                                     ; $7293: $06 $50
    ld b, $40                                     ; $7295: $06 $40
    ld b, $30                                     ; $7297: $06 $30
    ld b, $20                                     ; $7299: $06 $20
    nop                                           ; $729B: $00
    db $10                                        ; $729C: $10
    ld [bc], a                                    ; $729D: $02
    nop                                           ; $729E: $00
    ld [bc], a                                    ; $729F: $02
    ldh a, [rNR43]                                ; $72A0: $F0 $22
    ldh [rNR43], a                                ; $72A2: $E0 $22
    ret nc                                        ; $72A4: $D0

    dec b                                         ; $72A5: $05
    ret nz                                        ; $72A6: $C0

    ld [hl+], a                                   ; $72A7: $22
    or b                                          ; $72A8: $B0
    dec b                                         ; $72A9: $05
    and b                                         ; $72AA: $A0
    ld [hl+], a                                   ; $72AB: $22
    sub b                                         ; $72AC: $90
    dec b                                         ; $72AD: $05
    add b                                         ; $72AE: $80
    ld [hl+], a                                   ; $72AF: $22
    ld [hl], b                                    ; $72B0: $70
    dec b                                         ; $72B1: $05
    ld h, b                                       ; $72B2: $60
    ld [hl+], a                                   ; $72B3: $22

jr_03F_72B4:
    ld d, b                                       ; $72B4: $50
    dec b                                         ; $72B5: $05
    ld b, b                                       ; $72B6: $40
    dec b                                         ; $72B7: $05
    jr nc, jr_03F_72BF                            ; $72B8: $30 $05

    jr nz, jr_03F_72BC                            ; $72BA: $20 $00

jr_03F_72BC:
    db $10                                        ; $72BC: $10
    ld [bc], a                                    ; $72BD: $02
    nop                                           ; $72BE: $00

jr_03F_72BF:
    ld [bc], a                                    ; $72BF: $02
    ldh a, [rTIMA]                                ; $72C0: $F0 $05
    ldh [rTIMA], a                                ; $72C2: $E0 $05
    ret nc                                        ; $72C4: $D0

jr_03F_72C5:
    dec b                                         ; $72C5: $05
    ret nz                                        ; $72C6: $C0

    dec b                                         ; $72C7: $05
    or b                                          ; $72C8: $B0
    dec b                                         ; $72C9: $05
    and b                                         ; $72CA: $A0
    dec b                                         ; $72CB: $05
    sub b                                         ; $72CC: $90
    dec b                                         ; $72CD: $05
    add b                                         ; $72CE: $80
    dec b                                         ; $72CF: $05
    ld [hl], b                                    ; $72D0: $70
    dec b                                         ; $72D1: $05
    ld h, b                                       ; $72D2: $60
    dec b                                         ; $72D3: $05
    ld d, b                                       ; $72D4: $50
    dec b                                         ; $72D5: $05
    ld b, b                                       ; $72D6: $40
    dec b                                         ; $72D7: $05
    jr nc, jr_03F_72DF                            ; $72D8: $30 $05

    jr nz, jr_03F_72DC                            ; $72DA: $20 $00

jr_03F_72DC:
    db $10                                        ; $72DC: $10
    ld [bc], a                                    ; $72DD: $02
    nop                                           ; $72DE: $00

jr_03F_72DF:
    ld [bc], a                                    ; $72DF: $02
    ldh a, [rTMA]                                 ; $72E0: $F0 $06
    ldh [rTMA], a                                 ; $72E2: $E0 $06
    ret nc                                        ; $72E4: $D0

    ld b, $C0                                     ; $72E5: $06 $C0
    ld b, $B0                                     ; $72E7: $06 $B0
    ld b, $A0                                     ; $72E9: $06 $A0
    ld b, $90                                     ; $72EB: $06 $90
    ld b, $80                                     ; $72ED: $06 $80
    ld b, $70                                     ; $72EF: $06 $70
    ld b, $60                                     ; $72F1: $06 $60
    ld b, $50                                     ; $72F3: $06 $50
    ld b, $40                                     ; $72F5: $06 $40
    ld b, $30                                     ; $72F7: $06 $30
    ld b, $20                                     ; $72F9: $06 $20
    nop                                           ; $72FB: $00
    db $10                                        ; $72FC: $10
    ld [bc], a                                    ; $72FD: $02
    nop                                           ; $72FE: $00
    ld [bc], a                                    ; $72FF: $02
    ldh a, [rTIMA]                                ; $7300: $F0 $05
    ldh [rTIMA], a                                ; $7302: $E0 $05
    ret nc                                        ; $7304: $D0

    dec b                                         ; $7305: $05
    ret nz                                        ; $7306: $C0

    dec b                                         ; $7307: $05
    or b                                          ; $7308: $B0
    dec b                                         ; $7309: $05
    and b                                         ; $730A: $A0
    dec b                                         ; $730B: $05
    sub b                                         ; $730C: $90
    dec b                                         ; $730D: $05
    add b                                         ; $730E: $80
    dec b                                         ; $730F: $05
    ld [hl], b                                    ; $7310: $70
    dec b                                         ; $7311: $05
    ld h, b                                       ; $7312: $60
    dec b                                         ; $7313: $05
    ld d, b                                       ; $7314: $50
    dec b                                         ; $7315: $05
    ld b, b                                       ; $7316: $40
    dec b                                         ; $7317: $05
    jr nc, jr_03F_731F                            ; $7318: $30 $05

    jr nz, jr_03F_731C                            ; $731A: $20 $00

jr_03F_731C:
    db $10                                        ; $731C: $10
    ld [bc], a                                    ; $731D: $02
    nop                                           ; $731E: $00

jr_03F_731F:
    ld [bc], a                                    ; $731F: $02
    ldh a, [rTMA]                                 ; $7320: $F0 $06
    ldh [rTMA], a                                 ; $7322: $E0 $06
    ret nc                                        ; $7324: $D0

    ld b, $C0                                     ; $7325: $06 $C0
    ld b, $B0                                     ; $7327: $06 $B0
    ld b, $A0                                     ; $7329: $06 $A0
    ld b, $90                                     ; $732B: $06 $90
    ld b, $80                                     ; $732D: $06 $80
    ld b, $70                                     ; $732F: $06 $70
    ld b, $60                                     ; $7331: $06 $60
    ld b, $50                                     ; $7333: $06 $50
    ld b, $40                                     ; $7335: $06 $40
    ld b, $30                                     ; $7337: $06 $30
    ld b, $20                                     ; $7339: $06 $20
    nop                                           ; $733B: $00
    db $10                                        ; $733C: $10
    ld [bc], a                                    ; $733D: $02
    nop                                           ; $733E: $00
    ld [bc], a                                    ; $733F: $02
    ldh a, [rNR50]                                ; $7340: $F0 $24
    ldh [$FF1F], a                                ; $7342: $E0 $1F
    ret nc                                        ; $7344: $D0

    inc d                                         ; $7345: $14
    ret nz                                        ; $7346: $C0

    inc d                                         ; $7347: $14
    or b                                          ; $7348: $B0
    inc de                                        ; $7349: $13
    and b                                         ; $734A: $A0
    add hl, hl                                    ; $734B: $29
    sub b                                         ; $734C: $90
    ld de, $1080                                  ; $734D: $11 $80 $10
    ld [hl], b                                    ; $7350: $70
    rra                                           ; $7351: $1F
    ld h, b                                       ; $7352: $60
    inc d                                         ; $7353: $14
    ld d, b                                       ; $7354: $50
    ld de, $1140                                  ; $7355: $11 $40 $11
    jr nc, jr_03F_736A                            ; $7358: $30 $10

    jr nz, jr_03F_735C                            ; $735A: $20 $00

jr_03F_735C:
    db $10                                        ; $735C: $10
    ld [bc], a                                    ; $735D: $02
    nop                                           ; $735E: $00
    ld [bc], a                                    ; $735F: $02
    ldh a, [rNR44]                                ; $7360: $F0 $23
    ldh [rTIMA], a                                ; $7362: $E0 $05
    ret nc                                        ; $7364: $D0

    inc hl                                        ; $7365: $23
    ret nz                                        ; $7366: $C0

    dec b                                         ; $7367: $05
    or b                                          ; $7368: $B0
    inc hl                                        ; $7369: $23

jr_03F_736A:
    and b                                         ; $736A: $A0
    dec bc                                        ; $736B: $0B
    sub b                                         ; $736C: $90
    dec bc                                        ; $736D: $0B
    add b                                         ; $736E: $80
    dec b                                         ; $736F: $05
    ld [hl], b                                    ; $7370: $70
    inc hl                                        ; $7371: $23
    ld h, b                                       ; $7372: $60
    dec b                                         ; $7373: $05
    ld d, b                                       ; $7374: $50
    ld de, $0540                                  ; $7375: $11 $40 $05
    jr nc, jr_03F_738A                            ; $7378: $30 $10

    jr nz, jr_03F_737C                            ; $737A: $20 $00

jr_03F_737C:
    db $10                                        ; $737C: $10
    ld [bc], a                                    ; $737D: $02
    nop                                           ; $737E: $00
    ld [bc], a                                    ; $737F: $02
    ldh a, [rNR50]                                ; $7380: $F0 $24
    ldh [$FF3E], a                                ; $7382: $E0 $3E
    ret nc                                        ; $7384: $D0

    inc l                                         ; $7385: $2C
    ret nz                                        ; $7386: $C0

    inc hl                                        ; $7387: $23
    or b                                          ; $7388: $B0
    inc b                                         ; $7389: $04

jr_03F_738A:
    and b                                         ; $738A: $A0
    ld a, $90                                     ; $738B: $3E $90
    inc l                                         ; $738D: $2C
    add b                                         ; $738E: $80
    inc b                                         ; $738F: $04
    ld [hl], b                                    ; $7390: $70
    ld a, $60                                     ; $7391: $3E $60
    inc hl                                        ; $7393: $23
    ld d, b                                       ; $7394: $50
    inc b                                         ; $7395: $04
    ld b, b                                       ; $7396: $40
    ld a, $30                                     ; $7397: $3E $30
    inc b                                         ; $7399: $04
    jr nz, jr_03F_739C                            ; $739A: $20 $00

jr_03F_739C:
    db $10                                        ; $739C: $10
    ld [bc], a                                    ; $739D: $02
    nop                                           ; $739E: $00
    ld [bc], a                                    ; $739F: $02
    ldh a, [$FF2C]                                ; $73A0: $F0 $2C
    ldh [rDIV], a                                 ; $73A2: $E0 $04
    ret nc                                        ; $73A4: $D0

    inc l                                         ; $73A5: $2C
    ret nz                                        ; $73A6: $C0

    ld a, $B0                                     ; $73A7: $3E $B0
    inc hl                                        ; $73A9: $23
    and b                                         ; $73AA: $A0
    inc b                                         ; $73AB: $04
    sub b                                         ; $73AC: $90
    inc l                                         ; $73AD: $2C
    add b                                         ; $73AE: $80
    ld a, $70                                     ; $73AF: $3E $70
    inc l                                         ; $73B1: $2C
    ld h, b                                       ; $73B2: $60
    inc b                                         ; $73B3: $04
    ld d, b                                       ; $73B4: $50
    inc hl                                        ; $73B5: $23
    ld b, b                                       ; $73B6: $40
    ld a, $30                                     ; $73B7: $3E $30
    inc b                                         ; $73B9: $04
    jr nz, jr_03F_73BC                            ; $73BA: $20 $00

jr_03F_73BC:
    db $10                                        ; $73BC: $10
    ld [bc], a                                    ; $73BD: $02
    nop                                           ; $73BE: $00
    ld [bc], a                                    ; $73BF: $02
    ldh a, [$FF08]                                ; $73C0: $F0 $08
    ldh [$FF08], a                                ; $73C2: $E0 $08
    ret nc                                        ; $73C4: $D0

    inc b                                         ; $73C5: $04
    ret nz                                        ; $73C6: $C0

    ld a, $B0                                     ; $73C7: $3E $B0
    ld [$04A0], sp                                ; $73C9: $08 $A0 $04
    sub b                                         ; $73CC: $90
    ld a, $80                                     ; $73CD: $3E $80
    ld [$0470], sp                                ; $73CF: $08 $70 $04
    ld h, b                                       ; $73D2: $60
    ld a, $50                                     ; $73D3: $3E $50
    inc b                                         ; $73D5: $04
    ld b, b                                       ; $73D6: $40
    ld [$3E30], sp                                ; $73D7: $08 $30 $3E
    jr nz, jr_03F_73DC                            ; $73DA: $20 $00

jr_03F_73DC:
    db $10                                        ; $73DC: $10
    ld [bc], a                                    ; $73DD: $02
    nop                                           ; $73DE: $00
    ld [bc], a                                    ; $73DF: $02
    ldh a, [$FF08]                                ; $73E0: $F0 $08
    ldh [$FF3E], a                                ; $73E2: $E0 $3E
    ret nc                                        ; $73E4: $D0

    ld [$08C0], sp                                ; $73E5: $08 $C0 $08
    or b                                          ; $73E8: $B0
    ld [$3EA0], sp                                ; $73E9: $08 $A0 $3E
    sub b                                         ; $73EC: $90
    ld [$3E80], sp                                ; $73ED: $08 $80 $3E
    ld [hl], b                                    ; $73F0: $70
    ld [$3E60], sp                                ; $73F1: $08 $60 $3E
    ld d, b                                       ; $73F4: $50
    ld [$0840], sp                                ; $73F5: $08 $40 $08
    jr nc, jr_03F_7438                            ; $73F8: $30 $3E

    jr nz, jr_03F_73FC                            ; $73FA: $20 $00

jr_03F_73FC:
    db $10                                        ; $73FC: $10
    ld [bc], a                                    ; $73FD: $02
    nop                                           ; $73FE: $00
    ld [bc], a                                    ; $73FF: $02
    jr nc, jr_03F_7423                            ; $7400: $30 $21

    ld [hl], h                                    ; $7402: $74
    ld b, b                                       ; $7403: $40
    sub b                                         ; $7404: $90
    ld b, c                                       ; $7405: $41
    ld [hl], h                                    ; $7406: $74
    ld h, c                                       ; $7407: $61
    ld [hl], h                                    ; $7408: $74
    jr z, @+$4A                                   ; $7409: $28 $48

    add c                                         ; $740B: $81
    ld [hl], h                                    ; $740C: $74
    and c                                         ; $740D: $A1
    ld [hl], h                                    ; $740E: $74
    pop bc                                        ; $740F: $C1
    ld [hl], h                                    ; $7410: $74
    pop hl                                        ; $7411: $E1
    ld [hl], h                                    ; $7412: $74
    jr nc, jr_03F_7465                            ; $7413: $30 $50

    ld bc, $2175                                  ; $7415: $01 $75 $21
    ld [hl], l                                    ; $7418: $75
    ld b, c                                       ; $7419: $41

jr_03F_741A:
    ld [hl], l                                    ; $741A: $75
    ld h, c                                       ; $741B: $61
    ld [hl], l                                    ; $741C: $75
    add c                                         ; $741D: $81
    ld [hl], l                                    ; $741E: $75
    and c                                         ; $741F: $A1
    ld [hl], l                                    ; $7420: $75
    ldh a, [rLCDC]                                ; $7421: $F0 $40

jr_03F_7423:
    ldh [rLCDC], a                                ; $7423: $E0 $40
    ret nc                                        ; $7425: $D0

    dec sp                                        ; $7426: $3B
    ret nz                                        ; $7427: $C0

    inc hl                                        ; $7428: $23
    or b                                          ; $7429: $B0
    dec sp                                        ; $742A: $3B
    and b                                         ; $742B: $A0
    inc hl                                        ; $742C: $23
    sub b                                         ; $742D: $90
    dec sp                                        ; $742E: $3B
    add b                                         ; $742F: $80
    inc hl                                        ; $7430: $23
    ld [hl], b                                    ; $7431: $70
    ld [de], a                                    ; $7432: $12
    ld h, b                                       ; $7433: $60
    dec sp                                        ; $7434: $3B
    ld d, b                                       ; $7435: $50
    ld [de], a                                    ; $7436: $12
    ld b, b                                       ; $7437: $40

jr_03F_7438:
    inc hl                                        ; $7438: $23
    jr nc, @+$14                                  ; $7439: $30 $12

    jr nz, @+$14                                  ; $743B: $20 $12

    db $10                                        ; $743D: $10
    ld de, $1100                                  ; $743E: $11 $00 $11
    ldh a, [rTMA]                                 ; $7441: $F0 $06
    ldh [rTMA], a                                 ; $7443: $E0 $06
    ret nc                                        ; $7445: $D0

    ld b, $C0                                     ; $7446: $06 $C0
    ld b, $B0                                     ; $7448: $06 $B0
    ld b, $A0                                     ; $744A: $06 $A0
    ld b, $90                                     ; $744C: $06 $90
    ld b, $80                                     ; $744E: $06 $80
    ld b, $70                                     ; $7450: $06 $70
    ld b, $60                                     ; $7452: $06 $60
    ld b, $50                                     ; $7454: $06 $50
    ld b, $40                                     ; $7456: $06 $40
    ld b, $30                                     ; $7458: $06 $30
    ld b, $20                                     ; $745A: $06 $20
    nop                                           ; $745C: $00
    db $10                                        ; $745D: $10
    ld [bc], a                                    ; $745E: $02
    nop                                           ; $745F: $00
    ld [bc], a                                    ; $7460: $02
    ldh a, [rNR24]                                ; $7461: $F0 $19
    ldh [rNR43], a                                ; $7463: $E0 $22

jr_03F_7465:
    ret nc                                        ; $7465: $D0

    dec b                                         ; $7466: $05
    ret nz                                        ; $7467: $C0

    jr jr_03F_741A                                ; $7468: $18 $B0

    dec b                                         ; $746A: $05
    and b                                         ; $746B: $A0
    ld [hl+], a                                   ; $746C: $22
    sub b                                         ; $746D: $90
    add hl, de                                    ; $746E: $19
    add b                                         ; $746F: $80
    ld [hl+], a                                   ; $7470: $22
    ld [hl], b                                    ; $7471: $70
    dec b                                         ; $7472: $05
    ld h, b                                       ; $7473: $60
    dec b                                         ; $7474: $05
    ld d, b                                       ; $7475: $50
    dec b                                         ; $7476: $05
    ld b, b                                       ; $7477: $40
    dec b                                         ; $7478: $05
    jr nc, jr_03F_7480                            ; $7479: $30 $05

    jr nz, jr_03F_747D                            ; $747B: $20 $00

jr_03F_747D:
    db $10                                        ; $747D: $10
    ld [bc], a                                    ; $747E: $02
    nop                                           ; $747F: $00

jr_03F_7480:
    ld [bc], a                                    ; $7480: $02
    ldh a, [rTIMA]                                ; $7481: $F0 $05
    ldh [rTIMA], a                                ; $7483: $E0 $05
    ret nc                                        ; $7485: $D0

    dec b                                         ; $7486: $05
    ret nz                                        ; $7487: $C0

    dec b                                         ; $7488: $05
    or b                                          ; $7489: $B0
    dec b                                         ; $748A: $05
    and b                                         ; $748B: $A0
    dec b                                         ; $748C: $05
    sub b                                         ; $748D: $90
    dec b                                         ; $748E: $05
    add b                                         ; $748F: $80
    dec b                                         ; $7490: $05
    ld [hl], b                                    ; $7491: $70
    dec b                                         ; $7492: $05
    ld h, b                                       ; $7493: $60
    dec b                                         ; $7494: $05
    ld d, b                                       ; $7495: $50
    dec b                                         ; $7496: $05
    ld b, b                                       ; $7497: $40
    dec b                                         ; $7498: $05
    jr nc, jr_03F_74A0                            ; $7499: $30 $05

    jr nz, jr_03F_749D                            ; $749B: $20 $00

jr_03F_749D:
    db $10                                        ; $749D: $10
    ld [bc], a                                    ; $749E: $02
    nop                                           ; $749F: $00

jr_03F_74A0:
    ld [bc], a                                    ; $74A0: $02
    ldh a, [$FF0A]                                ; $74A1: $F0 $0A
    ldh [rTIMA], a                                ; $74A3: $E0 $05
    ret nc                                        ; $74A5: $D0

    dec b                                         ; $74A6: $05
    ret nz                                        ; $74A7: $C0

    dec b                                         ; $74A8: $05
    or b                                          ; $74A9: $B0
    dec b                                         ; $74AA: $05
    and b                                         ; $74AB: $A0
    dec b                                         ; $74AC: $05
    sub b                                         ; $74AD: $90
    dec b                                         ; $74AE: $05
    add b                                         ; $74AF: $80
    dec b                                         ; $74B0: $05
    ld [hl], b                                    ; $74B1: $70
    dec b                                         ; $74B2: $05
    ld h, b                                       ; $74B3: $60
    dec b                                         ; $74B4: $05
    ld d, b                                       ; $74B5: $50
    dec b                                         ; $74B6: $05
    ld b, b                                       ; $74B7: $40
    dec b                                         ; $74B8: $05
    jr nc, jr_03F_74C0                            ; $74B9: $30 $05

    jr nz, jr_03F_74BD                            ; $74BB: $20 $00

jr_03F_74BD:
    db $10                                        ; $74BD: $10
    ld [bc], a                                    ; $74BE: $02
    nop                                           ; $74BF: $00

jr_03F_74C0:
    ld [bc], a                                    ; $74C0: $02
    ldh a, [rTIMA]                                ; $74C1: $F0 $05
    ldh [rTIMA], a                                ; $74C3: $E0 $05
    ret nc                                        ; $74C5: $D0

    dec b                                         ; $74C6: $05
    ret nz                                        ; $74C7: $C0

    dec b                                         ; $74C8: $05
    or b                                          ; $74C9: $B0
    dec b                                         ; $74CA: $05
    and b                                         ; $74CB: $A0
    dec b                                         ; $74CC: $05
    sub b                                         ; $74CD: $90
    dec b                                         ; $74CE: $05
    add b                                         ; $74CF: $80
    dec b                                         ; $74D0: $05
    ld [hl], b                                    ; $74D1: $70
    dec b                                         ; $74D2: $05
    ld h, b                                       ; $74D3: $60
    dec b                                         ; $74D4: $05
    ld d, b                                       ; $74D5: $50
    dec b                                         ; $74D6: $05
    ld b, b                                       ; $74D7: $40
    dec b                                         ; $74D8: $05
    jr nc, jr_03F_74E0                            ; $74D9: $30 $05

    jr nz, jr_03F_74DD                            ; $74DB: $20 $00

jr_03F_74DD:
    db $10                                        ; $74DD: $10
    ld [bc], a                                    ; $74DE: $02
    nop                                           ; $74DF: $00

jr_03F_74E0:
    ld [bc], a                                    ; $74E0: $02
    ldh a, [rTIMA]                                ; $74E1: $F0 $05
    ldh [rTIMA], a                                ; $74E3: $E0 $05
    ret nc                                        ; $74E5: $D0

    dec b                                         ; $74E6: $05
    ret nz                                        ; $74E7: $C0

    dec b                                         ; $74E8: $05
    or b                                          ; $74E9: $B0
    dec b                                         ; $74EA: $05
    and b                                         ; $74EB: $A0
    dec b                                         ; $74EC: $05
    sub b                                         ; $74ED: $90
    dec b                                         ; $74EE: $05
    add b                                         ; $74EF: $80
    dec b                                         ; $74F0: $05
    ld [hl], b                                    ; $74F1: $70
    dec b                                         ; $74F2: $05
    ld h, b                                       ; $74F3: $60
    dec b                                         ; $74F4: $05
    ld d, b                                       ; $74F5: $50
    dec b                                         ; $74F6: $05
    ld b, b                                       ; $74F7: $40
    dec b                                         ; $74F8: $05
    jr nc, jr_03F_7500                            ; $74F9: $30 $05

    jr nz, jr_03F_74FD                            ; $74FB: $20 $00

jr_03F_74FD:
    db $10                                        ; $74FD: $10
    ld [bc], a                                    ; $74FE: $02
    nop                                           ; $74FF: $00

jr_03F_7500:
    ld [bc], a                                    ; $7500: $02
    ldh a, [rLCDC]                                ; $7501: $F0 $40
    ldh [rLCDC], a                                ; $7503: $E0 $40
    ret nc                                        ; $7505: $D0

    db $10                                        ; $7506: $10
    ret nz                                        ; $7507: $C0

    dec sp                                        ; $7508: $3B
    or b                                          ; $7509: $B0
    add hl, sp                                    ; $750A: $39
    and b                                         ; $750B: $A0
    ld de, $2390                                  ; $750C: $11 $90 $23
    add b                                         ; $750F: $80
    dec sp                                        ; $7510: $3B
    ld [hl], b                                    ; $7511: $70
    ld de, $1060                                  ; $7512: $11 $60 $10
    ld d, b                                       ; $7515: $50
    inc hl                                        ; $7516: $23
    ld b, b                                       ; $7517: $40
    ld de, $1030                                  ; $7518: $11 $30 $10
    jr nz, jr_03F_751D                            ; $751B: $20 $00

jr_03F_751D:
    db $10                                        ; $751D: $10
    ld [bc], a                                    ; $751E: $02
    nop                                           ; $751F: $00
    ld [bc], a                                    ; $7520: $02
    ldh a, [$FF3B]                                ; $7521: $F0 $3B
    ldh [$FF3B], a                                ; $7523: $E0 $3B
    ret nc                                        ; $7525: $D0

    inc hl                                        ; $7526: $23
    ret nz                                        ; $7527: $C0

    dec sp                                        ; $7528: $3B
    or b                                          ; $7529: $B0
    dec sp                                        ; $752A: $3B
    and b                                         ; $752B: $A0
    inc hl                                        ; $752C: $23
    sub b                                         ; $752D: $90
    dec sp                                        ; $752E: $3B
    add b                                         ; $752F: $80
    dec sp                                        ; $7530: $3B
    ld [hl], b                                    ; $7531: $70
    inc hl                                        ; $7532: $23
    ld h, b                                       ; $7533: $60
    dec sp                                        ; $7534: $3B
    ld d, b                                       ; $7535: $50
    ld [de], a                                    ; $7536: $12
    ld b, b                                       ; $7537: $40
    ld [de], a                                    ; $7538: $12
    jr nc, jr_03F_754C                            ; $7539: $30 $11

    jr nz, jr_03F_753D                            ; $753B: $20 $00

jr_03F_753D:
    db $10                                        ; $753D: $10
    ld [bc], a                                    ; $753E: $02
    nop                                           ; $753F: $00
    ld [bc], a                                    ; $7540: $02
    ldh a, [rSTAT]                                ; $7541: $F0 $41
    ldh [rLCDC], a                                ; $7543: $E0 $40
    ret nc                                        ; $7545: $D0

    ld b, h                                       ; $7546: $44
    ret nz                                        ; $7547: $C0

    ld a, [bc]                                    ; $7548: $0A
    or b                                          ; $7549: $B0
    inc sp                                        ; $754A: $33
    and b                                         ; $754B: $A0

jr_03F_754C:
    dec bc                                        ; $754C: $0B
    sub b                                         ; $754D: $90
    ld a, [bc]                                    ; $754E: $0A
    add b                                         ; $754F: $80
    ld b, h                                       ; $7550: $44
    ld [hl], b                                    ; $7551: $70
    inc b                                         ; $7552: $04
    ld h, b                                       ; $7553: $60
    ld a, [bc]                                    ; $7554: $0A
    ld d, b                                       ; $7555: $50
    dec bc                                        ; $7556: $0B
    ld b, b                                       ; $7557: $40
    ld b, h                                       ; $7558: $44
    jr nc, jr_03F_755F                            ; $7559: $30 $04

    jr nz, jr_03F_755D                            ; $755B: $20 $00

jr_03F_755D:
    db $10                                        ; $755D: $10
    ld [bc], a                                    ; $755E: $02

jr_03F_755F:
    nop                                           ; $755F: $00
    ld [bc], a                                    ; $7560: $02
    ldh a, [rDIV]                                 ; $7561: $F0 $04
    ldh [$FF0A], a                                ; $7563: $E0 $0A
    ret nc                                        ; $7565: $D0

    ld b, h                                       ; $7566: $44
    ret nz                                        ; $7567: $C0

    ld a, [bc]                                    ; $7568: $0A
    or b                                          ; $7569: $B0
    dec bc                                        ; $756A: $0B
    and b                                         ; $756B: $A0
    ld b, h                                       ; $756C: $44
    sub b                                         ; $756D: $90
    ld a, [bc]                                    ; $756E: $0A
    add b                                         ; $756F: $80
    inc b                                         ; $7570: $04
    ld [hl], b                                    ; $7571: $70
    ld b, h                                       ; $7572: $44
    ld h, b                                       ; $7573: $60
    ld a, [bc]                                    ; $7574: $0A
    ld d, b                                       ; $7575: $50
    dec bc                                        ; $7576: $0B
    ld b, b                                       ; $7577: $40
    inc b                                         ; $7578: $04
    jr nc, jr_03F_757F                            ; $7579: $30 $04

    jr nz, jr_03F_757D                            ; $757B: $20 $00

jr_03F_757D:
    db $10                                        ; $757D: $10
    ld [bc], a                                    ; $757E: $02

jr_03F_757F:
    nop                                           ; $757F: $00
    ld [bc], a                                    ; $7580: $02
    ldh a, [$FF0D]                                ; $7581: $F0 $0D
    ldh [$FF08], a                                ; $7583: $E0 $08
    ret nc                                        ; $7585: $D0

    inc b                                         ; $7586: $04
    ret nz                                        ; $7587: $C0

    ld b, h                                       ; $7588: $44
    or b                                          ; $7589: $B0
    ld [$0AA0], sp                                ; $758A: $08 $A0 $0A
    sub b                                         ; $758D: $90
    ld b, h                                       ; $758E: $44
    add b                                         ; $758F: $80
    ld [$0470], sp                                ; $7590: $08 $70 $04
    ld h, b                                       ; $7593: $60
    ld b, h                                       ; $7594: $44
    ld d, b                                       ; $7595: $50
    ld [$0A40], sp                                ; $7596: $08 $40 $0A
    jr nc, jr_03F_75DF                            ; $7599: $30 $44

    jr nz, jr_03F_759D                            ; $759B: $20 $00

jr_03F_759D:
    db $10                                        ; $759D: $10
    ld [bc], a                                    ; $759E: $02
    nop                                           ; $759F: $00
    ld [bc], a                                    ; $75A0: $02
    ldh a, [$FF0D]                                ; $75A1: $F0 $0D
    ldh [$FF0D], a                                ; $75A3: $E0 $0D

jr_03F_75A5:
    ret nc                                        ; $75A5: $D0

    ld b, h                                       ; $75A6: $44
    ret nz                                        ; $75A7: $C0

    ld [$08B0], sp                                ; $75A8: $08 $B0 $08
    and b                                         ; $75AB: $A0
    ld b, h                                       ; $75AC: $44
    sub b                                         ; $75AD: $90
    ld [$0880], sp                                ; $75AE: $08 $80 $08
    ld [hl], b                                    ; $75B1: $70
    ld b, h                                       ; $75B2: $44
    ld h, b                                       ; $75B3: $60
    ld [$0850], sp                                ; $75B4: $08 $50 $08
    ld b, b                                       ; $75B7: $40
    ld b, h                                       ; $75B8: $44
    jr nc, jr_03F_75C3                            ; $75B9: $30 $08

    jr nz, jr_03F_75BD                            ; $75BB: $20 $00

jr_03F_75BD:
    db $10                                        ; $75BD: $10
    ld [bc], a                                    ; $75BE: $02
    nop                                           ; $75BF: $00
    ld [bc], a                                    ; $75C0: $02
    jr z, jr_03F_75A5                             ; $75C1: $28 $E2

jr_03F_75C3:
    ld [hl], l                                    ; $75C3: $75
    ld d, b                                       ; $75C4: $50
    sub b                                         ; $75C5: $90
    ld [bc], a                                    ; $75C6: $02
    halt                                          ; $75C7: $76
    ld [hl+], a                                   ; $75C8: $22
    halt                                          ; $75C9: $76
    jr z, @+$4A                                   ; $75CA: $28 $48

    ld b, d                                       ; $75CC: $42
    halt                                          ; $75CD: $76
    ld h, d                                       ; $75CE: $62
    halt                                          ; $75CF: $76
    add d                                         ; $75D0: $82
    halt                                          ; $75D1: $76
    and d                                         ; $75D2: $A2
    halt                                          ; $75D3: $76
    jr z, jr_03F_7626                             ; $75D4: $28 $50

    jp nz, $E276                                  ; $75D6: $C2 $76 $E2

    halt                                          ; $75D9: $76
    ld [bc], a                                    ; $75DA: $02

jr_03F_75DB:
    ld [hl], a                                    ; $75DB: $77
    ld [hl+], a                                   ; $75DC: $22
    ld [hl], a                                    ; $75DD: $77
    ld b, d                                       ; $75DE: $42

jr_03F_75DF:
    ld [hl], a                                    ; $75DF: $77
    ld h, d                                       ; $75E0: $62
    ld [hl], a                                    ; $75E1: $77
    ldh a, [rNR50]                                ; $75E2: $F0 $24
    ldh [rNR50], a                                ; $75E4: $E0 $24
    ret nc                                        ; $75E6: $D0

    inc sp                                        ; $75E7: $33
    ret nz                                        ; $75E8: $C0

    inc sp                                        ; $75E9: $33
    or b                                          ; $75EA: $B0
    ld [hl+], a                                   ; $75EB: $22
    and b                                         ; $75EC: $A0
    inc sp                                        ; $75ED: $33
    sub b                                         ; $75EE: $90
    ld [hl+], a                                   ; $75EF: $22
    add b                                         ; $75F0: $80
    inc sp                                        ; $75F1: $33
    ld [hl], b                                    ; $75F2: $70
    ld [hl+], a                                   ; $75F3: $22
    ld h, b                                       ; $75F4: $60
    inc sp                                        ; $75F5: $33
    ld d, b                                       ; $75F6: $50
    ld [hl+], a                                   ; $75F7: $22
    ld b, b                                       ; $75F8: $40
    ld [hl+], a                                   ; $75F9: $22
    jr nc, @+$14                                  ; $75FA: $30 $12

    jr nz, @+$14                                  ; $75FC: $20 $12

    db $10                                        ; $75FE: $10
    ld de, $1000                                  ; $75FF: $11 $00 $10
    ldh a, [rTMA]                                 ; $7602: $F0 $06
    ldh [rTMA], a                                 ; $7604: $E0 $06
    ret nc                                        ; $7606: $D0

    ld b, $C0                                     ; $7607: $06 $C0
    ld b, $B0                                     ; $7609: $06 $B0
    ld b, $A0                                     ; $760B: $06 $A0
    ld b, $90                                     ; $760D: $06 $90
    ld b, $80                                     ; $760F: $06 $80
    ld b, $70                                     ; $7611: $06 $70
    ld b, $60                                     ; $7613: $06 $60
    ld b, $50                                     ; $7615: $06 $50
    ld b, $40                                     ; $7617: $06 $40
    ld b, $30                                     ; $7619: $06 $30
    ld b, $20                                     ; $761B: $06 $20
    nop                                           ; $761D: $00
    db $10                                        ; $761E: $10
    ld [bc], a                                    ; $761F: $02
    nop                                           ; $7620: $00
    ld [bc], a                                    ; $7621: $02
    ldh a, [rNR24]                                ; $7622: $F0 $19
    ldh [rNR33], a                                ; $7624: $E0 $1D

jr_03F_7626:
    ret nc                                        ; $7626: $D0

    dec b                                         ; $7627: $05
    ret nz                                        ; $7628: $C0

    jr jr_03F_75DB                                ; $7629: $18 $B0

    inc e                                         ; $762B: $1C
    and b                                         ; $762C: $A0
    dec b                                         ; $762D: $05
    sub b                                         ; $762E: $90
    dec b                                         ; $762F: $05
    add b                                         ; $7630: $80
    jr @+$72                                      ; $7631: $18 $70

    dec b                                         ; $7633: $05
    ld h, b                                       ; $7634: $60
    dec b                                         ; $7635: $05
    ld d, b                                       ; $7636: $50
    jr jr_03F_7679                                ; $7637: $18 $40

    dec b                                         ; $7639: $05
    jr nc, jr_03F_7641                            ; $763A: $30 $05

    jr nz, jr_03F_763E                            ; $763C: $20 $00

jr_03F_763E:
    db $10                                        ; $763E: $10
    ld [bc], a                                    ; $763F: $02
    nop                                           ; $7640: $00

jr_03F_7641:
    ld [bc], a                                    ; $7641: $02
    ldh a, [rTIMA]                                ; $7642: $F0 $05
    ldh [rTIMA], a                                ; $7644: $E0 $05
    ret nc                                        ; $7646: $D0

    dec b                                         ; $7647: $05
    ret nz                                        ; $7648: $C0

    dec b                                         ; $7649: $05
    or b                                          ; $764A: $B0
    dec b                                         ; $764B: $05
    and b                                         ; $764C: $A0
    dec b                                         ; $764D: $05
    sub b                                         ; $764E: $90

Call_03F_764F:
    dec b                                         ; $764F: $05
    add b                                         ; $7650: $80
    dec b                                         ; $7651: $05
    ld [hl], b                                    ; $7652: $70
    dec b                                         ; $7653: $05
    ld h, b                                       ; $7654: $60
    dec b                                         ; $7655: $05
    ld d, b                                       ; $7656: $50
    dec b                                         ; $7657: $05
    ld b, b                                       ; $7658: $40
    dec b                                         ; $7659: $05
    jr nc, jr_03F_7661                            ; $765A: $30 $05

    jr nz, jr_03F_765E                            ; $765C: $20 $00

jr_03F_765E:
    db $10                                        ; $765E: $10
    ld [bc], a                                    ; $765F: $02
    nop                                           ; $7660: $00

jr_03F_7661:
    ld [bc], a                                    ; $7661: $02
    ldh a, [rTMA]                                 ; $7662: $F0 $06
    ldh [rTMA], a                                 ; $7664: $E0 $06
    ret nc                                        ; $7666: $D0

    ld b, $C0                                     ; $7667: $06 $C0
    ld b, $B0                                     ; $7669: $06 $B0
    ld b, $A0                                     ; $766B: $06 $A0
    ld b, $90                                     ; $766D: $06 $90
    ld b, $80                                     ; $766F: $06 $80
    ld b, $70                                     ; $7671: $06 $70
    ld b, $60                                     ; $7673: $06 $60
    ld b, $50                                     ; $7675: $06 $50
    ld b, $40                                     ; $7677: $06 $40

jr_03F_7679:
    ld b, $30                                     ; $7679: $06 $30
    ld b, $20                                     ; $767B: $06 $20
    nop                                           ; $767D: $00
    db $10                                        ; $767E: $10
    ld [bc], a                                    ; $767F: $02
    nop                                           ; $7680: $00
    ld [bc], a                                    ; $7681: $02
    ldh a, [rTIMA]                                ; $7682: $F0 $05
    ldh [rTIMA], a                                ; $7684: $E0 $05
    ret nc                                        ; $7686: $D0

    dec b                                         ; $7687: $05
    ret nz                                        ; $7688: $C0

    dec b                                         ; $7689: $05
    or b                                          ; $768A: $B0
    dec b                                         ; $768B: $05
    and b                                         ; $768C: $A0
    dec b                                         ; $768D: $05
    sub b                                         ; $768E: $90
    dec b                                         ; $768F: $05
    add b                                         ; $7690: $80
    dec b                                         ; $7691: $05
    ld [hl], b                                    ; $7692: $70
    dec b                                         ; $7693: $05
    ld h, b                                       ; $7694: $60
    dec b                                         ; $7695: $05
    ld d, b                                       ; $7696: $50
    dec b                                         ; $7697: $05
    ld b, b                                       ; $7698: $40
    dec b                                         ; $7699: $05
    jr nc, jr_03F_76A1                            ; $769A: $30 $05

    jr nz, jr_03F_769E                            ; $769C: $20 $00

jr_03F_769E:
    db $10                                        ; $769E: $10
    ld [bc], a                                    ; $769F: $02
    nop                                           ; $76A0: $00

jr_03F_76A1:
    ld [bc], a                                    ; $76A1: $02
    ldh a, [rTMA]                                 ; $76A2: $F0 $06
    ldh [rTMA], a                                 ; $76A4: $E0 $06
    ret nc                                        ; $76A6: $D0

    ld b, $C0                                     ; $76A7: $06 $C0
    ld b, $B0                                     ; $76A9: $06 $B0
    ld b, $A0                                     ; $76AB: $06 $A0
    ld b, $90                                     ; $76AD: $06 $90
    ld b, $80                                     ; $76AF: $06 $80
    ld b, $70                                     ; $76B1: $06 $70
    ld b, $60                                     ; $76B3: $06 $60
    ld b, $50                                     ; $76B5: $06 $50
    ld b, $40                                     ; $76B7: $06 $40
    ld b, $30                                     ; $76B9: $06 $30
    ld b, $20                                     ; $76BB: $06 $20
    nop                                           ; $76BD: $00
    db $10                                        ; $76BE: $10
    ld [bc], a                                    ; $76BF: $02
    nop                                           ; $76C0: $00
    ld [bc], a                                    ; $76C1: $02
    ldh a, [$FF15]                                ; $76C2: $F0 $15
    ldh [rNR10], a                                ; $76C4: $E0 $10
    ret nc                                        ; $76C6: $D0

    inc hl                                        ; $76C7: $23
    ret nz                                        ; $76C8: $C0

    ld de, $15B0                                  ; $76C9: $11 $B0 $15
    and b                                         ; $76CC: $A0
    add hl, sp                                    ; $76CD: $39
    sub b                                         ; $76CE: $90
    inc hl                                        ; $76CF: $23
    add b                                         ; $76D0: $80
    ld de, $1570                                  ; $76D1: $11 $70 $15
    ld h, b                                       ; $76D4: $60
    db $10                                        ; $76D5: $10
    ld d, b                                       ; $76D6: $50
    inc hl                                        ; $76D7: $23
    ld b, b                                       ; $76D8: $40
    ld de, $1030                                  ; $76D9: $11 $30 $10
    jr nz, jr_03F_76DE                            ; $76DC: $20 $00

jr_03F_76DE:
    db $10                                        ; $76DE: $10
    ld [bc], a                                    ; $76DF: $02
    nop                                           ; $76E0: $00
    ld [bc], a                                    ; $76E1: $02
    ldh a, [rNR44]                                ; $76E2: $F0 $23
    ldh [rNR44], a                                ; $76E4: $E0 $23
    ret nc                                        ; $76E6: $D0

    dec bc                                        ; $76E7: $0B
    ret nz                                        ; $76E8: $C0

    ld [de], a                                    ; $76E9: $12
    or b                                          ; $76EA: $B0
    inc hl                                        ; $76EB: $23
    and b                                         ; $76EC: $A0
    ld [de], a                                    ; $76ED: $12
    sub b                                         ; $76EE: $90
    dec bc                                        ; $76EF: $0B
    add b                                         ; $76F0: $80
    inc hl                                        ; $76F1: $23
    ld [hl], b                                    ; $76F2: $70
    ld [de], a                                    ; $76F3: $12
    ld h, b                                       ; $76F4: $60
    inc hl                                        ; $76F5: $23
    ld d, b                                       ; $76F6: $50
    dec bc                                        ; $76F7: $0B
    ld b, b                                       ; $76F8: $40
    ld [de], a                                    ; $76F9: $12
    jr nc, jr_03F_7707                            ; $76FA: $30 $0B

    jr nz, jr_03F_76FE                            ; $76FC: $20 $00

jr_03F_76FE:
    db $10                                        ; $76FE: $10
    ld [bc], a                                    ; $76FF: $02
    nop                                           ; $7700: $00
    ld [bc], a                                    ; $7701: $02
    ldh a, [rNR50]                                ; $7702: $F0 $24
    ldh [rNR43], a                                ; $7704: $E0 $22
    ret nc                                        ; $7706: $D0

jr_03F_7707:
    inc l                                         ; $7707: $2C
    ret nz                                        ; $7708: $C0

    inc sp                                        ; $7709: $33
    or b                                          ; $770A: $B0
    dec de                                        ; $770B: $1B
    and b                                         ; $770C: $A0
    ld b, e                                       ; $770D: $43
    sub b                                         ; $770E: $90
    ld a, [bc]                                    ; $770F: $0A
    add b                                         ; $7710: $80
    ld b, e                                       ; $7711: $43
    ld [hl], b                                    ; $7712: $70
    ld [hl+], a                                   ; $7713: $22
    ld h, b                                       ; $7714: $60
    inc sp                                        ; $7715: $33
    ld d, b                                       ; $7716: $50
    rla                                           ; $7717: $17
    ld b, b                                       ; $7718: $40
    ld b, e                                       ; $7719: $43
    jr nc, jr_03F_7720                            ; $771A: $30 $04

    jr nz, jr_03F_771E                            ; $771C: $20 $00

jr_03F_771E:
    db $10                                        ; $771E: $10
    ld [bc], a                                    ; $771F: $02

jr_03F_7720:
    nop                                           ; $7720: $00
    ld [bc], a                                    ; $7721: $02
    ldh a, [rNR43]                                ; $7722: $F0 $22
    ldh [rNR31], a                                ; $7724: $E0 $1B
    ret nc                                        ; $7726: $D0

jr_03F_7727:
    rla                                           ; $7727: $17
    ret nz                                        ; $7728: $C0

    dec bc                                        ; $7729: $0B
    or b                                          ; $772A: $B0
    dec de                                        ; $772B: $1B
    and b                                         ; $772C: $A0
    ld b, e                                       ; $772D: $43
    sub b                                         ; $772E: $90
    ld [hl+], a                                   ; $772F: $22
    add b                                         ; $7730: $80
    rla                                           ; $7731: $17
    ld [hl], b                                    ; $7732: $70
    dec de                                        ; $7733: $1B
    ld h, b                                       ; $7734: $60
    ld b, e                                       ; $7735: $43
    ld d, b                                       ; $7736: $50
    dec bc                                        ; $7737: $0B
    ld b, b                                       ; $7738: $40
    dec b                                         ; $7739: $05
    jr nc, jr_03F_7747                            ; $773A: $30 $0B

    jr nz, jr_03F_773E                            ; $773C: $20 $00

jr_03F_773E:
    db $10                                        ; $773E: $10
    ld [bc], a                                    ; $773F: $02

jr_03F_7740:
    nop                                           ; $7740: $00
    ld [bc], a                                    ; $7741: $02
    ldh a, [rNR33]                                ; $7742: $F0 $1D
    ldh [$FF08], a                                ; $7744: $E0 $08
    ret nc                                        ; $7746: $D0

jr_03F_7747:
    dec e                                         ; $7747: $1D
    ret nz                                        ; $7748: $C0

    ld [$43B0], sp                                ; $7749: $08 $B0 $43
    and b                                         ; $774C: $A0
    ld b, e                                       ; $774D: $43

jr_03F_774E:
    sub b                                         ; $774E: $90
    ld a, [bc]                                    ; $774F: $0A
    add b                                         ; $7750: $80
    ld [$0870], sp                                ; $7751: $08 $70 $08
    ld h, b                                       ; $7754: $60
    ld b, e                                       ; $7755: $43
    ld d, b                                       ; $7756: $50
    ld [$0440], sp                                ; $7757: $08 $40 $04
    jr nc, jr_03F_779F                            ; $775A: $30 $43

    jr nz, jr_03F_775E                            ; $775C: $20 $00

jr_03F_775E:
    db $10                                        ; $775E: $10
    ld [bc], a                                    ; $775F: $02
    nop                                           ; $7760: $00
    ld [bc], a                                    ; $7761: $02
    ldh a, [$FF0D]                                ; $7762: $F0 $0D
    ldh [$FF08], a                                ; $7764: $E0 $08
    ret nc                                        ; $7766: $D0

    ld b, e                                       ; $7767: $43
    ret nz                                        ; $7768: $C0

    ld [$08B0], sp                                ; $7769: $08 $B0 $08
    and b                                         ; $776C: $A0
    ld b, e                                       ; $776D: $43
    sub b                                         ; $776E: $90
    ld [$0880], sp                                ; $776F: $08 $80 $08
    ld [hl], b                                    ; $7772: $70
    ld b, e                                       ; $7773: $43
    ld h, b                                       ; $7774: $60
    ld [$0850], sp                                ; $7775: $08 $50 $08
    ld b, b                                       ; $7778: $40
    ld b, e                                       ; $7779: $43
    jr nc, jr_03F_7784                            ; $777A: $30 $08

    jr nz, jr_03F_777E                            ; $777C: $20 $00

jr_03F_777E:
    db $10                                        ; $777E: $10
    ld [bc], a                                    ; $777F: $02

jr_03F_7780:
    nop                                           ; $7780: $00
    ld [bc], a                                    ; $7781: $02
    jr z, jr_03F_7727                             ; $7782: $28 $A3

jr_03F_7784:
    ld [hl], a                                    ; $7784: $77
    ld d, b                                       ; $7785: $50
    adc b                                         ; $7786: $88
    jp $E377                                      ; $7787: $C3 $77 $E3


    ld [hl], a                                    ; $778A: $77
    jr z, @+$62                                   ; $778B: $28 $60

    inc bc                                        ; $778D: $03
    ld a, b                                       ; $778E: $78
    inc hl                                        ; $778F: $23
    ld a, b                                       ; $7790: $78
    ld b, e                                       ; $7791: $43
    ld a, b                                       ; $7792: $78
    ld h, e                                       ; $7793: $63
    ld a, b                                       ; $7794: $78
    jr z, jr_03F_77E7                             ; $7795: $28 $50

    add e                                         ; $7797: $83
    ld a, b                                       ; $7798: $78
    and e                                         ; $7799: $A3
    ld a, b                                       ; $779A: $78
    jp $E378                                      ; $779B: $C3 $78 $E3


    ld a, b                                       ; $779E: $78

jr_03F_779F:
    dec b                                         ; $779F: $05
    ld a, c                                       ; $77A0: $79
    dec h                                         ; $77A1: $25
    ld a, c                                       ; $77A2: $79
    ldh a, [$FF32]                                ; $77A3: $F0 $32
    ldh [rNR50], a                                ; $77A5: $E0 $24
    ret nc                                        ; $77A7: $D0

    inc hl                                        ; $77A8: $23
    ret nz                                        ; $77A9: $C0

    inc h                                         ; $77AA: $24
    or b                                          ; $77AB: $B0
    jr nc, jr_03F_774E                            ; $77AC: $30 $A0

    jr nz, jr_03F_7740                            ; $77AE: $20 $90

    inc hl                                        ; $77B0: $23
    add b                                         ; $77B1: $80
    jr nc, @+$72                                  ; $77B2: $30 $70

    jr nz, jr_03F_7816                            ; $77B4: $20 $60

    ld de, $1350                                  ; $77B6: $11 $50 $13
    ld b, b                                       ; $77B9: $40
    inc de                                        ; $77BA: $13
    jr nc, jr_03F_77CE                            ; $77BB: $30 $11

    jr nz, jr_03F_77D2                            ; $77BD: $20 $13

    db $10                                        ; $77BF: $10
    inc de                                        ; $77C0: $13
    nop                                           ; $77C1: $00
    nop                                           ; $77C2: $00
    ldh a, [rTIMA]                                ; $77C3: $F0 $05
    ldh [rTIMA], a                                ; $77C5: $E0 $05
    ret nc                                        ; $77C7: $D0

    dec b                                         ; $77C8: $05
    ret nz                                        ; $77C9: $C0

    dec b                                         ; $77CA: $05
    or b                                          ; $77CB: $B0
    dec b                                         ; $77CC: $05
    and b                                         ; $77CD: $A0

jr_03F_77CE:
    dec b                                         ; $77CE: $05
    sub b                                         ; $77CF: $90
    dec b                                         ; $77D0: $05
    add b                                         ; $77D1: $80

jr_03F_77D2:
    ld b, $70                                     ; $77D2: $06 $70
    ld b, $60                                     ; $77D4: $06 $60
    ld b, $50                                     ; $77D6: $06 $50
    ld b, $40                                     ; $77D8: $06 $40
    ld b, $30                                     ; $77DA: $06 $30
    nop                                           ; $77DC: $00
    jr nz, jr_03F_77E5                            ; $77DD: $20 $06

    stop                                          ; $77DF: $10 $00
    nop                                           ; $77E1: $00
    nop                                           ; $77E2: $00
    ldh a, [$FF36]                                ; $77E3: $F0 $36

jr_03F_77E5:
    ldh [rTMA], a                                 ; $77E5: $E0 $06

jr_03F_77E7:
    ret nc                                        ; $77E7: $D0

    add hl, de                                    ; $77E8: $19
    ret nz                                        ; $77E9: $C0

    ld [hl+], a                                   ; $77EA: $22
    or b                                          ; $77EB: $B0
    ld b, $A0                                     ; $77EC: $06 $A0
    jr jr_03F_7780                                ; $77EE: $18 $90

    ld [hl+], a                                   ; $77F0: $22
    add b                                         ; $77F1: $80
    ld b, $70                                     ; $77F2: $06 $70
    add hl, de                                    ; $77F4: $19
    ld h, b                                       ; $77F5: $60
    ld [hl+], a                                   ; $77F6: $22
    ld d, b                                       ; $77F7: $50
    inc c                                         ; $77F8: $0C
    ld b, b                                       ; $77F9: $40
    ld b, $30                                     ; $77FA: $06 $30
    inc c                                         ; $77FC: $0C
    jr nz, jr_03F_7800                            ; $77FD: $20 $01

    db $10                                        ; $77FF: $10

jr_03F_7800:
    inc c                                         ; $7800: $0C
    nop                                           ; $7801: $00
    nop                                           ; $7802: $00
    ldh a, [rTIMA]                                ; $7803: $F0 $05
    ldh [rTIMA], a                                ; $7805: $E0 $05
    ret nc                                        ; $7807: $D0

    dec b                                         ; $7808: $05
    ret nz                                        ; $7809: $C0

    dec b                                         ; $780A: $05
    or b                                          ; $780B: $B0
    dec b                                         ; $780C: $05
    and b                                         ; $780D: $A0
    dec b                                         ; $780E: $05
    sub b                                         ; $780F: $90
    dec b                                         ; $7810: $05
    add b                                         ; $7811: $80

jr_03F_7812:
    dec b                                         ; $7812: $05
    ld [hl], b                                    ; $7813: $70
    dec b                                         ; $7814: $05
    ld h, b                                       ; $7815: $60

jr_03F_7816:
    dec b                                         ; $7816: $05
    ld d, b                                       ; $7817: $50
    nop                                           ; $7818: $00
    ld b, b                                       ; $7819: $40
    dec b                                         ; $781A: $05
    jr nc, jr_03F_781D                            ; $781B: $30 $00

jr_03F_781D:
    jr nz, @+$07                                  ; $781D: $20 $05

    db $10                                        ; $781F: $10
    dec b                                         ; $7820: $05
    nop                                           ; $7821: $00
    nop                                           ; $7822: $00
    ldh a, [rTMA]                                 ; $7823: $F0 $06
    ldh [rTMA], a                                 ; $7825: $E0 $06
    ret nc                                        ; $7827: $D0

    ld b, $C0                                     ; $7828: $06 $C0
    ld b, $B0                                     ; $782A: $06 $B0
    ld b, $A0                                     ; $782C: $06 $A0
    ld b, $90                                     ; $782E: $06 $90
    ld b, $80                                     ; $7830: $06 $80

jr_03F_7832:
    ld b, $70                                     ; $7832: $06 $70
    ld b, $60                                     ; $7834: $06 $60
    ld b, $50                                     ; $7836: $06 $50
    ld b, $40                                     ; $7838: $06 $40
    nop                                           ; $783A: $00
    jr nc, jr_03F_7843                            ; $783B: $30 $06

    jr nz, jr_03F_7845                            ; $783D: $20 $06

    stop                                          ; $783F: $10 $00
    nop                                           ; $7841: $00
    nop                                           ; $7842: $00

jr_03F_7843:
    ldh a, [rTIMA]                                ; $7843: $F0 $05

jr_03F_7845:
    ldh [rTIMA], a                                ; $7845: $E0 $05
    ret nc                                        ; $7847: $D0

    dec b                                         ; $7848: $05
    ret nz                                        ; $7849: $C0

    dec b                                         ; $784A: $05
    or b                                          ; $784B: $B0
    dec b                                         ; $784C: $05
    and b                                         ; $784D: $A0
    dec b                                         ; $784E: $05
    sub b                                         ; $784F: $90
    dec b                                         ; $7850: $05
    add b                                         ; $7851: $80
    dec b                                         ; $7852: $05
    ld [hl], b                                    ; $7853: $70
    dec b                                         ; $7854: $05
    ld h, b                                       ; $7855: $60
    dec b                                         ; $7856: $05
    ld d, b                                       ; $7857: $50
    dec b                                         ; $7858: $05
    ld b, b                                       ; $7859: $40
    dec b                                         ; $785A: $05
    jr nc, jr_03F_7862                            ; $785B: $30 $05

    jr nz, jr_03F_785F                            ; $785D: $20 $00

jr_03F_785F:
    db $10                                        ; $785F: $10

jr_03F_7860:
    dec b                                         ; $7860: $05
    nop                                           ; $7861: $00

jr_03F_7862:
    inc b                                         ; $7862: $04
    ldh a, [rTMA]                                 ; $7863: $F0 $06
    ldh [rTMA], a                                 ; $7865: $E0 $06
    ret nc                                        ; $7867: $D0

    ld b, $C0                                     ; $7868: $06 $C0
    ld b, $B0                                     ; $786A: $06 $B0
    ld b, $A0                                     ; $786C: $06 $A0

jr_03F_786E:
    ld b, $90                                     ; $786E: $06 $90
    ld b, $80                                     ; $7870: $06 $80
    ld b, $70                                     ; $7872: $06 $70
    ld b, $60                                     ; $7874: $06 $60
    ld b, $50                                     ; $7876: $06 $50
    ld b, $40                                     ; $7878: $06 $40
    ld b, $30                                     ; $787A: $06 $30

jr_03F_787C:
    inc b                                         ; $787C: $04
    jr nz, jr_03F_7885                            ; $787D: $20 $06

    db $10                                        ; $787F: $10

jr_03F_7880:
    ld b, $00                                     ; $7880: $06 $00
    nop                                           ; $7882: $00
    ldh a, [rNR14]                                ; $7883: $F0 $14

jr_03F_7885:
    ldh [rNR44], a                                ; $7885: $E0 $23
    ret nc                                        ; $7887: $D0

    add hl, hl                                    ; $7888: $29
    ret nz                                        ; $7889: $C0

    inc d                                         ; $788A: $14
    or b                                          ; $788B: $B0
    inc hl                                        ; $788C: $23
    and b                                         ; $788D: $A0
    inc d                                         ; $788E: $14
    sub b                                         ; $788F: $90
    jr nz, jr_03F_7812                            ; $7890: $20 $80

    jr nz, jr_03F_7904                            ; $7892: $20 $70

    inc d                                         ; $7894: $14
    ld h, b                                       ; $7895: $60
    db $10                                        ; $7896: $10
    ld d, b                                       ; $7897: $50
    nop                                           ; $7898: $00
    ld b, b                                       ; $7899: $40
    db $10                                        ; $789A: $10
    jr nc, jr_03F_78A0                            ; $789B: $30 $03

    jr nz, jr_03F_78A1                            ; $789D: $20 $02

    db $10                                        ; $789F: $10

jr_03F_78A0:
    inc bc                                        ; $78A0: $03

jr_03F_78A1:
    nop                                           ; $78A1: $00
    ld [bc], a                                    ; $78A2: $02
    ldh a, [rNR44]                                ; $78A3: $F0 $23
    ldh [rNR44], a                                ; $78A5: $E0 $23
    ret nc                                        ; $78A7: $D0

    inc hl                                        ; $78A8: $23
    ret nz                                        ; $78A9: $C0

    dec bc                                        ; $78AA: $0B
    or b                                          ; $78AB: $B0
    inc hl                                        ; $78AC: $23
    and b                                         ; $78AD: $A0
    dec bc                                        ; $78AE: $0B
    sub b                                         ; $78AF: $90
    jr nz, jr_03F_7832                            ; $78B0: $20 $80

    inc hl                                        ; $78B2: $23
    ld [hl], b                                    ; $78B3: $70
    nop                                           ; $78B4: $00
    ld h, b                                       ; $78B5: $60
    dec bc                                        ; $78B6: $0B
    ld d, b                                       ; $78B7: $50
    inc hl                                        ; $78B8: $23
    ld b, b                                       ; $78B9: $40
    dec b                                         ; $78BA: $05
    jr nc, jr_03F_78C0                            ; $78BB: $30 $03

    jr nz, jr_03F_78C1                            ; $78BD: $20 $02

    db $10                                        ; $78BF: $10

jr_03F_78C0:
    inc bc                                        ; $78C0: $03

jr_03F_78C1:
    nop                                           ; $78C1: $00
    ld [bc], a                                    ; $78C2: $02
    ldh a, [$FF2B]                                ; $78C3: $F0 $2B
    ldh [rNR24], a                                ; $78C5: $E0 $19
    ret nc                                        ; $78C7: $D0

    ld b, a                                       ; $78C8: $47
    ret nz                                        ; $78C9: $C0

    jr jr_03F_787C                                ; $78CA: $18 $B0

    jr nz, jr_03F_786E                            ; $78CC: $20 $A0

    jr nz, jr_03F_7860                            ; $78CE: $20 $90

    ld b, a                                       ; $78D0: $47
    add b                                         ; $78D1: $80
    ld b, a                                       ; $78D2: $47
    ld [hl], b                                    ; $78D3: $70
    db $10                                        ; $78D4: $10
    ld h, b                                       ; $78D5: $60
    ld b, a                                       ; $78D6: $47
    ld d, b                                       ; $78D7: $50
    db $10                                        ; $78D8: $10
    ld b, b                                       ; $78D9: $40
    ld a, [bc]                                    ; $78DA: $0A
    jr nc, jr_03F_78E1                            ; $78DB: $30 $04

    jr nz, jr_03F_78E1                            ; $78DD: $20 $02

    db $10                                        ; $78DF: $10
    inc b                                         ; $78E0: $04

jr_03F_78E1:
    nop                                           ; $78E1: $00
    ld [bc], a                                    ; $78E2: $02
    ldh a, [rNR41]                                ; $78E3: $F0 $20
    ldh [rNR44], a                                ; $78E5: $E0 $23
    ret nc                                        ; $78E7: $D0

    dec hl                                        ; $78E8: $2B
    ret nz                                        ; $78E9: $C0

    dec bc                                        ; $78EA: $0B
    or b                                          ; $78EB: $B0
    add hl, bc                                    ; $78EC: $09
    and b                                         ; $78ED: $A0
    jr z, jr_03F_7880                             ; $78EE: $28 $90

    dec bc                                        ; $78F0: $0B
    add b                                         ; $78F1: $80
    inc hl                                        ; $78F2: $23
    ld [hl], b                                    ; $78F3: $70
    add hl, bc                                    ; $78F4: $09
    ld h, b                                       ; $78F5: $60
    jr z, jr_03F_7948                             ; $78F6: $28 $50

    inc hl                                        ; $78F8: $23
    ld b, b                                       ; $78F9: $40
    dec bc                                        ; $78FA: $0B
    jr nc, jr_03F_7924                            ; $78FB: $30 $27

    jr nz, jr_03F_7902                            ; $78FD: $20 $03

    db $10                                        ; $78FF: $10
    ld [bc], a                                    ; $7900: $02
    nop                                           ; $7901: $00

jr_03F_7902:
    inc bc                                        ; $7902: $03
    nop                                           ; $7903: $00

jr_03F_7904:
    ld [bc], a                                    ; $7904: $02
    ldh a, [rSTAT]                                ; $7905: $F0 $41
    ldh [$FF31], a                                ; $7907: $E0 $31
    ret nc                                        ; $7909: $D0

    ld [$22C0], sp                                ; $790A: $08 $C0 $22
    or b                                          ; $790D: $B0
    ld [$09A0], sp                                ; $790E: $08 $A0 $09

jr_03F_7911:
    sub b                                         ; $7911: $90
    ld [hl+], a                                   ; $7912: $22
    add b                                         ; $7913: $80
    ld a, [bc]                                    ; $7914: $0A
    ld [hl], b                                    ; $7915: $70
    ld [$2260], sp                                ; $7916: $08 $60 $22
    ld d, b                                       ; $7919: $50
    inc b                                         ; $791A: $04
    ld b, b                                       ; $791B: $40
    add hl, bc                                    ; $791C: $09
    jr nc, jr_03F_7922                            ; $791D: $30 $03

    jr nz, jr_03F_7923                            ; $791F: $20 $02

    db $10                                        ; $7921: $10

jr_03F_7922:
    inc bc                                        ; $7922: $03

jr_03F_7923:
    nop                                           ; $7923: $00

jr_03F_7924:
    ld [bc], a                                    ; $7924: $02
    ldh a, [rSTAT]                                ; $7925: $F0 $41
    ldh [$FF08], a                                ; $7927: $E0 $08
    ret nc                                        ; $7929: $D0

    dec c                                         ; $792A: $0D
    ret nz                                        ; $792B: $C0

    ld [$00B0], sp                                ; $792C: $08 $B0 $00
    and b                                         ; $792F: $A0
    ld [$0990], sp                                ; $7930: $08 $90 $09
    add b                                         ; $7933: $80
    nop                                           ; $7934: $00
    ld [hl], b                                    ; $7935: $70
    ld [$0160], sp                                ; $7936: $08 $60 $01
    ld d, b                                       ; $7939: $50
    add hl, bc                                    ; $793A: $09
    ld b, b                                       ; $793B: $40
    dec b                                         ; $793C: $05
    jr nc, jr_03F_7942                            ; $793D: $30 $03

    jr nz, jr_03F_7943                            ; $793F: $20 $02

    db $10                                        ; $7941: $10

jr_03F_7942:
    inc bc                                        ; $7942: $03

jr_03F_7943:
    nop                                           ; $7943: $00
    ld [bc], a                                    ; $7944: $02
    jr z, jr_03F_79AD                             ; $7945: $28 $66

    ld a, c                                       ; $7947: $79

jr_03F_7948:
    inc a                                         ; $7948: $3C
    sub b                                         ; $7949: $90
    add [hl]                                      ; $794A: $86
    ld a, c                                       ; $794B: $79
    and [hl]                                      ; $794C: $A6
    ld a, c                                       ; $794D: $79
    jr z, @+$62                                   ; $794E: $28 $60

    add $79                                       ; $7950: $C6 $79
    and $79                                       ; $7952: $E6 $79
    ld b, $7A                                     ; $7954: $06 $7A
    ld h, $7A                                     ; $7956: $26 $7A
    jr nz, jr_03F_79BA                            ; $7958: $20 $60

    ld b, [hl]                                    ; $795A: $46
    ld a, d                                       ; $795B: $7A
    ld h, [hl]                                    ; $795C: $66
    ld a, d                                       ; $795D: $7A
    add [hl]                                      ; $795E: $86
    ld a, d                                       ; $795F: $7A
    and [hl]                                      ; $7960: $A6
    ld a, d                                       ; $7961: $7A
    add $7A                                       ; $7962: $C6 $7A
    and $7A                                       ; $7964: $E6 $7A
    ldh a, [rNR41]                                ; $7966: $F0 $20
    ldh [rNR44], a                                ; $7968: $E0 $23
    ret nc                                        ; $796A: $D0

    db $10                                        ; $796B: $10
    ret nz                                        ; $796C: $C0

    ld [hl+], a                                   ; $796D: $22
    or b                                          ; $796E: $B0
    jr nz, jr_03F_7911                            ; $796F: $20 $A0

    inc hl                                        ; $7971: $23
    sub b                                         ; $7972: $90
    db $10                                        ; $7973: $10
    add b                                         ; $7974: $80
    ld [hl+], a                                   ; $7975: $22
    ld [hl], b                                    ; $7976: $70
    jr nz, jr_03F_79D9                            ; $7977: $20 $60

    db $10                                        ; $7979: $10
    ld d, b                                       ; $797A: $50
    inc hl                                        ; $797B: $23
    ld b, b                                       ; $797C: $40
    ld [hl+], a                                   ; $797D: $22
    jr nc, jr_03F_7991                            ; $797E: $30 $11

    jr nz, jr_03F_7995                            ; $7980: $20 $13

    db $10                                        ; $7982: $10
    inc de                                        ; $7983: $13
    nop                                           ; $7984: $00
    nop                                           ; $7985: $00
    ldh a, [rTIMA]                                ; $7986: $F0 $05
    ldh [rTIMA], a                                ; $7988: $E0 $05
    ret nc                                        ; $798A: $D0

    dec b                                         ; $798B: $05
    ret nz                                        ; $798C: $C0

    dec b                                         ; $798D: $05
    or b                                          ; $798E: $B0
    dec b                                         ; $798F: $05
    and b                                         ; $7990: $A0

jr_03F_7991:
    dec b                                         ; $7991: $05
    sub b                                         ; $7992: $90
    dec b                                         ; $7993: $05
    add b                                         ; $7994: $80

jr_03F_7995:
    ld b, $70                                     ; $7995: $06 $70
    ld b, $60                                     ; $7997: $06 $60
    ld b, $50                                     ; $7999: $06 $50
    ld b, $40                                     ; $799B: $06 $40
    ld b, $30                                     ; $799D: $06 $30
    nop                                           ; $799F: $00
    jr nz, jr_03F_79A8                            ; $79A0: $20 $06

    stop                                          ; $79A2: $10 $00
    nop                                           ; $79A4: $00
    nop                                           ; $79A5: $00
    ldh a, [rNR24]                                ; $79A6: $F0 $19

jr_03F_79A8:
    ldh [rNR23], a                                ; $79A8: $E0 $18
    ret nc                                        ; $79AA: $D0

    ld b, $C0                                     ; $79AB: $06 $C0

jr_03F_79AD:
    add hl, de                                    ; $79AD: $19
    or b                                          ; $79AE: $B0
    jr @-$5E                                      ; $79AF: $18 $A0

    ld b, $90                                     ; $79B1: $06 $90
    add hl, de                                    ; $79B3: $19
    add b                                         ; $79B4: $80
    jr @+$72                                      ; $79B5: $18 $70

    ld b, $60                                     ; $79B7: $06 $60
    dec b                                         ; $79B9: $05

jr_03F_79BA:
    ld d, b                                       ; $79BA: $50
    inc c                                         ; $79BB: $0C
    ld b, b                                       ; $79BC: $40
    ld b, $30                                     ; $79BD: $06 $30
    inc c                                         ; $79BF: $0C
    jr nz, jr_03F_79C3                            ; $79C0: $20 $01

    db $10                                        ; $79C2: $10

jr_03F_79C3:
    inc c                                         ; $79C3: $0C
    nop                                           ; $79C4: $00
    nop                                           ; $79C5: $00
    ldh a, [rTIMA]                                ; $79C6: $F0 $05
    ldh [rTIMA], a                                ; $79C8: $E0 $05
    ret nc                                        ; $79CA: $D0

    dec b                                         ; $79CB: $05
    ret nz                                        ; $79CC: $C0

    dec b                                         ; $79CD: $05
    or b                                          ; $79CE: $B0
    dec b                                         ; $79CF: $05
    and b                                         ; $79D0: $A0
    dec b                                         ; $79D1: $05
    sub b                                         ; $79D2: $90
    dec b                                         ; $79D3: $05
    add b                                         ; $79D4: $80
    dec b                                         ; $79D5: $05
    ld [hl], b                                    ; $79D6: $70
    dec b                                         ; $79D7: $05
    ld h, b                                       ; $79D8: $60

jr_03F_79D9:
    dec b                                         ; $79D9: $05
    ld d, b                                       ; $79DA: $50
    nop                                           ; $79DB: $00
    ld b, b                                       ; $79DC: $40
    dec b                                         ; $79DD: $05
    jr nc, jr_03F_79E0                            ; $79DE: $30 $00

jr_03F_79E0:
    jr nz, @+$07                                  ; $79E0: $20 $05

    db $10                                        ; $79E2: $10
    dec b                                         ; $79E3: $05
    nop                                           ; $79E4: $00
    nop                                           ; $79E5: $00
    ldh a, [rTMA]                                 ; $79E6: $F0 $06
    ldh [rTMA], a                                 ; $79E8: $E0 $06
    ret nc                                        ; $79EA: $D0

    ld b, $C0                                     ; $79EB: $06 $C0
    ld b, $B0                                     ; $79ED: $06 $B0
    ld b, $A0                                     ; $79EF: $06 $A0

jr_03F_79F1:
    ld b, $90                                     ; $79F1: $06 $90
    ld b, $80                                     ; $79F3: $06 $80
    ld b, $70                                     ; $79F5: $06 $70
    ld b, $60                                     ; $79F7: $06 $60
    ld b, $50                                     ; $79F9: $06 $50
    ld b, $40                                     ; $79FB: $06 $40
    nop                                           ; $79FD: $00
    jr nc, jr_03F_7A06                            ; $79FE: $30 $06

    jr nz, jr_03F_7A08                            ; $7A00: $20 $06

    stop                                          ; $7A02: $10 $00
    nop                                           ; $7A04: $00
    nop                                           ; $7A05: $00

jr_03F_7A06:
    ldh a, [rTIMA]                                ; $7A06: $F0 $05

jr_03F_7A08:
    ldh [rTIMA], a                                ; $7A08: $E0 $05
    ret nc                                        ; $7A0A: $D0

    dec b                                         ; $7A0B: $05
    ret nz                                        ; $7A0C: $C0

    dec b                                         ; $7A0D: $05
    or b                                          ; $7A0E: $B0
    dec b                                         ; $7A0F: $05
    and b                                         ; $7A10: $A0
    dec b                                         ; $7A11: $05
    sub b                                         ; $7A12: $90
    dec b                                         ; $7A13: $05
    add b                                         ; $7A14: $80

jr_03F_7A15:
    dec b                                         ; $7A15: $05
    ld [hl], b                                    ; $7A16: $70
    dec b                                         ; $7A17: $05
    ld h, b                                       ; $7A18: $60
    dec b                                         ; $7A19: $05
    ld d, b                                       ; $7A1A: $50
    db $10                                        ; $7A1B: $10
    ld b, b                                       ; $7A1C: $40
    dec b                                         ; $7A1D: $05
    jr nc, jr_03F_7A25                            ; $7A1E: $30 $05

    jr nz, jr_03F_7A22                            ; $7A20: $20 $00

jr_03F_7A22:
    db $10                                        ; $7A22: $10
    dec b                                         ; $7A23: $05
    nop                                           ; $7A24: $00

jr_03F_7A25:
    inc b                                         ; $7A25: $04
    ldh a, [rTMA]                                 ; $7A26: $F0 $06
    ldh [rTMA], a                                 ; $7A28: $E0 $06
    ret nc                                        ; $7A2A: $D0

    ld b, $C0                                     ; $7A2B: $06 $C0
    ld b, $B0                                     ; $7A2D: $06 $B0
    ld b, $A0                                     ; $7A2F: $06 $A0

jr_03F_7A31:
    ld b, $90                                     ; $7A31: $06 $90
    ld b, $80                                     ; $7A33: $06 $80

jr_03F_7A35:
    ld b, $70                                     ; $7A35: $06 $70
    ld b, $60                                     ; $7A37: $06 $60
    ld b, $50                                     ; $7A39: $06 $50
    ld b, $40                                     ; $7A3B: $06 $40
    ld b, $30                                     ; $7A3D: $06 $30
    inc b                                         ; $7A3F: $04
    jr nz, jr_03F_7A48                            ; $7A40: $20 $06

    db $10                                        ; $7A42: $10
    ld b, $00                                     ; $7A43: $06 $00
    nop                                           ; $7A45: $00
    ldh a, [rNR14]                                ; $7A46: $F0 $14

jr_03F_7A48:
    ldh [rNR10], a                                ; $7A48: $E0 $10
    ret nc                                        ; $7A4A: $D0

    add hl, hl                                    ; $7A4B: $29
    ret nz                                        ; $7A4C: $C0

    inc hl                                        ; $7A4D: $23
    or b                                          ; $7A4E: $B0
    jr nz, jr_03F_79F1                            ; $7A4F: $20 $A0

jr_03F_7A51:
    inc d                                         ; $7A51: $14
    sub b                                         ; $7A52: $90
    ld de, $2380                                  ; $7A53: $11 $80 $23
    ld [hl], b                                    ; $7A56: $70
    inc d                                         ; $7A57: $14
    ld h, b                                       ; $7A58: $60
    db $10                                        ; $7A59: $10
    ld d, b                                       ; $7A5A: $50
    nop                                           ; $7A5B: $00
    ld b, b                                       ; $7A5C: $40
    db $10                                        ; $7A5D: $10
    jr nc, jr_03F_7A63                            ; $7A5E: $30 $03

    jr nz, jr_03F_7A64                            ; $7A60: $20 $02

    db $10                                        ; $7A62: $10

jr_03F_7A63:
    inc bc                                        ; $7A63: $03

jr_03F_7A64:
    nop                                           ; $7A64: $00
    ld [bc], a                                    ; $7A65: $02
    ldh a, [rNR44]                                ; $7A66: $F0 $23
    ldh [$FF0B], a                                ; $7A68: $E0 $0B
    ret nc                                        ; $7A6A: $D0

    ld a, [bc]                                    ; $7A6B: $0A
    ret nz                                        ; $7A6C: $C0

    inc hl                                        ; $7A6D: $23
    or b                                          ; $7A6E: $B0
    dec bc                                        ; $7A6F: $0B
    and b                                         ; $7A70: $A0
    ld a, [bc]                                    ; $7A71: $0A
    sub b                                         ; $7A72: $90
    inc hl                                        ; $7A73: $23
    add b                                         ; $7A74: $80
    dec bc                                        ; $7A75: $0B
    ld [hl], b                                    ; $7A76: $70
    ld a, [bc]                                    ; $7A77: $0A
    ld h, b                                       ; $7A78: $60
    dec bc                                        ; $7A79: $0B
    ld d, b                                       ; $7A7A: $50
    ld a, [bc]                                    ; $7A7B: $0A
    ld b, b                                       ; $7A7C: $40
    dec b                                         ; $7A7D: $05
    jr nc, jr_03F_7A83                            ; $7A7E: $30 $03

    jr nz, jr_03F_7A84                            ; $7A80: $20 $02

    db $10                                        ; $7A82: $10

jr_03F_7A83:
    inc bc                                        ; $7A83: $03

jr_03F_7A84:
    nop                                           ; $7A84: $00
    ld [bc], a                                    ; $7A85: $02
    ldh a, [rNR43]                                ; $7A86: $F0 $22
    ldh [rNR24], a                                ; $7A88: $E0 $19
    ret nc                                        ; $7A8A: $D0

    ld [hl+], a                                   ; $7A8B: $22
    ret nz                                        ; $7A8C: $C0

    inc b                                         ; $7A8D: $04
    or b                                          ; $7A8E: $B0
    jr nz, jr_03F_7A31                            ; $7A8F: $20 $A0

    add hl, bc                                    ; $7A91: $09
    sub b                                         ; $7A92: $90
    jr nz, jr_03F_7A15                            ; $7A93: $20 $80

    inc b                                         ; $7A95: $04
    ld [hl], b                                    ; $7A96: $70
    db $10                                        ; $7A97: $10
    ld h, b                                       ; $7A98: $60
    add hl, de                                    ; $7A99: $19
    ld d, b                                       ; $7A9A: $50
    add hl, bc                                    ; $7A9B: $09
    ld b, b                                       ; $7A9C: $40
    ld a, [bc]                                    ; $7A9D: $0A
    jr nc, jr_03F_7AA4                            ; $7A9E: $30 $04

    jr nz, jr_03F_7AA4                            ; $7AA0: $20 $02

    db $10                                        ; $7AA2: $10
    inc b                                         ; $7AA3: $04

jr_03F_7AA4:
    nop                                           ; $7AA4: $00
    ld [bc], a                                    ; $7AA5: $02
    ldh a, [rNR43]                                ; $7AA6: $F0 $22
    ldh [rNR24], a                                ; $7AA8: $E0 $19
    ret nc                                        ; $7AAA: $D0

    ld [hl+], a                                   ; $7AAB: $22
    ret nz                                        ; $7AAC: $C0

    jr @-$4E                                      ; $7AAD: $18 $B0

    jr nz, jr_03F_7A51                            ; $7AAF: $20 $A0

    nop                                           ; $7AB1: $00
    sub b                                         ; $7AB2: $90
    jr nz, jr_03F_7A35                            ; $7AB3: $20 $80

    add hl, de                                    ; $7AB5: $19
    ld [hl], b                                    ; $7AB6: $70
    db $10                                        ; $7AB7: $10
    ld h, b                                       ; $7AB8: $60
    add hl, de                                    ; $7AB9: $19
    ld d, b                                       ; $7ABA: $50
    db $10                                        ; $7ABB: $10
    ld b, b                                       ; $7ABC: $40
    ld a, [bc]                                    ; $7ABD: $0A
    jr nc, jr_03F_7AC4                            ; $7ABE: $30 $04

    jr nz, jr_03F_7AC4                            ; $7AC0: $20 $02

    db $10                                        ; $7AC2: $10
    inc b                                         ; $7AC3: $04

jr_03F_7AC4:
    nop                                           ; $7AC4: $00
    ld [bc], a                                    ; $7AC5: $02
    ldh a, [rNR50]                                ; $7AC6: $F0 $24
    ldh [rNR50], a                                ; $7AC8: $E0 $24
    ret nc                                        ; $7ACA: $D0

    inc h                                         ; $7ACB: $24
    ret nz                                        ; $7ACC: $C0

    ld b, a                                       ; $7ACD: $47
    or b                                          ; $7ACE: $B0
    inc b                                         ; $7ACF: $04
    and b                                         ; $7AD0: $A0
    ld [$0990], sp                                ; $7AD1: $08 $90 $09
    add b                                         ; $7AD4: $80
    ld b, a                                       ; $7AD5: $47
    ld [hl], b                                    ; $7AD6: $70
    ld [$0860], sp                                ; $7AD7: $08 $60 $08
    ld d, b                                       ; $7ADA: $50
    inc b                                         ; $7ADB: $04
    ld b, b                                       ; $7ADC: $40
    add hl, bc                                    ; $7ADD: $09
    jr nc, jr_03F_7AE3                            ; $7ADE: $30 $03

    jr nz, jr_03F_7AE4                            ; $7AE0: $20 $02

    db $10                                        ; $7AE2: $10

jr_03F_7AE3:
    inc bc                                        ; $7AE3: $03

jr_03F_7AE4:
    nop                                           ; $7AE4: $00
    ld [bc], a                                    ; $7AE5: $02
    ldh a, [$FF0D]                                ; $7AE6: $F0 $0D
    ldh [$FF0D], a                                ; $7AE8: $E0 $0D
    ret nc                                        ; $7AEA: $D0

    ld [$08C0], sp                                ; $7AEB: $08 $C0 $08
    or b                                          ; $7AEE: $B0
    add hl, bc                                    ; $7AEF: $09
    and b                                         ; $7AF0: $A0
    ld b, a                                       ; $7AF1: $47
    sub b                                         ; $7AF2: $90
    add hl, bc                                    ; $7AF3: $09
    add b                                         ; $7AF4: $80
    ld b, a                                       ; $7AF5: $47
    ld [hl], b                                    ; $7AF6: $70
    ld [$4760], sp                                ; $7AF7: $08 $60 $47
    ld d, b                                       ; $7AFA: $50
    add hl, bc                                    ; $7AFB: $09
    ld b, b                                       ; $7AFC: $40
    dec b                                         ; $7AFD: $05
    jr nc, jr_03F_7B03                            ; $7AFE: $30 $03

    jr nz, jr_03F_7B04                            ; $7B00: $20 $02

    db $10                                        ; $7B02: $10

jr_03F_7B03:
    inc bc                                        ; $7B03: $03

jr_03F_7B04:
    nop                                           ; $7B04: $00
    ld [bc], a                                    ; $7B05: $02
    jr z, jr_03F_7B2F                             ; $7B06: $28 $27

    ld a, e                                       ; $7B08: $7B
    inc a                                         ; $7B09: $3C
    sub b                                         ; $7B0A: $90
    daa                                           ; $7B0B: $27
    ld a, e                                       ; $7B0C: $7B
    daa                                           ; $7B0D: $27
    ld a, e                                       ; $7B0E: $7B
    jr z, jr_03F_7B71                             ; $7B0F: $28 $60

    daa                                           ; $7B11: $27
    ld a, e                                       ; $7B12: $7B
    daa                                           ; $7B13: $27
    ld a, e                                       ; $7B14: $7B
    daa                                           ; $7B15: $27
    ld a, e                                       ; $7B16: $7B
    daa                                           ; $7B17: $27
    ld a, e                                       ; $7B18: $7B
    jr z, jr_03F_7B6B                             ; $7B19: $28 $50

    daa                                           ; $7B1B: $27
    ld a, e                                       ; $7B1C: $7B
    daa                                           ; $7B1D: $27
    ld a, e                                       ; $7B1E: $7B
    daa                                           ; $7B1F: $27
    ld a, e                                       ; $7B20: $7B
    daa                                           ; $7B21: $27
    ld a, e                                       ; $7B22: $7B
    daa                                           ; $7B23: $27
    ld a, e                                       ; $7B24: $7B
    daa                                           ; $7B25: $27
    ld a, e                                       ; $7B26: $7B
    nop                                           ; $7B27: $00
    ld a, a                                       ; $7B28: $7F
    jr z, jr_03F_7B75                             ; $7B29: $28 $4A

    ld a, e                                       ; $7B2B: $7B
    inc a                                         ; $7B2C: $3C
    sub b                                         ; $7B2D: $90
    ld c, d                                       ; $7B2E: $4A

jr_03F_7B2F:
    ld a, e                                       ; $7B2F: $7B
    ld c, d                                       ; $7B30: $4A
    ld a, e                                       ; $7B31: $7B
    jr z, jr_03F_7B94                             ; $7B32: $28 $60

    ld c, d                                       ; $7B34: $4A
    ld a, e                                       ; $7B35: $7B
    ld c, d                                       ; $7B36: $4A
    ld a, e                                       ; $7B37: $7B
    ld c, d                                       ; $7B38: $4A
    ld a, e                                       ; $7B39: $7B
    ld c, d                                       ; $7B3A: $4A
    ld a, e                                       ; $7B3B: $7B
    jr z, jr_03F_7B8E                             ; $7B3C: $28 $50

    ld c, d                                       ; $7B3E: $4A
    ld a, e                                       ; $7B3F: $7B
    ld c, d                                       ; $7B40: $4A
    ld a, e                                       ; $7B41: $7B
    ld c, d                                       ; $7B42: $4A
    ld a, e                                       ; $7B43: $7B
    ld c, d                                       ; $7B44: $4A
    ld a, e                                       ; $7B45: $7B
    ld c, d                                       ; $7B46: $4A
    ld a, e                                       ; $7B47: $7B
    ld c, d                                       ; $7B48: $4A
    ld a, e                                       ; $7B49: $7B
    nop                                           ; $7B4A: $00
    add hl, bc                                    ; $7B4B: $09
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

jr_03F_7B6B:
    rst RST_38                                    ; $7B6B: $FF
    rst RST_38                                    ; $7B6C: $FF
    rst RST_38                                    ; $7B6D: $FF
    rst RST_38                                    ; $7B6E: $FF
    rst RST_38                                    ; $7B6F: $FF
    rst RST_38                                    ; $7B70: $FF

jr_03F_7B71:
    rst RST_38                                    ; $7B71: $FF
    rst RST_38                                    ; $7B72: $FF
    rst RST_38                                    ; $7B73: $FF
    rst RST_38                                    ; $7B74: $FF

jr_03F_7B75:
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

jr_03F_7B8E:
    rst RST_38                                    ; $7B8E: $FF
    rst RST_38                                    ; $7B8F: $FF
    rst RST_38                                    ; $7B90: $FF
    rst RST_38                                    ; $7B91: $FF
    rst RST_38                                    ; $7B92: $FF
    rst RST_38                                    ; $7B93: $FF

jr_03F_7B94:
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
