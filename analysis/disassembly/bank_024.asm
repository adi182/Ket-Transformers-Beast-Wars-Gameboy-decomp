; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $024", ROMX[$4000], BANK[$24]

    call Call_000_31B6                            ; $4000: $CD $B6 $31
    jp c, Jump_024_40E7                           ; $4003: $DA $E7 $40

    jp z, Jump_024_4015                           ; $4006: $CA $15 $40

    call Call_000_3A2A                            ; $4009: $CD $2A $3A
    jp c, Jump_024_4096                           ; $400C: $DA $96 $40

    jp z, Jump_024_40B2                           ; $400F: $CA $B2 $40

    jp Jump_024_40E7                              ; $4012: $C3 $E7 $40


Jump_024_4015:
    call Call_000_3A2A                            ; $4015: $CD $2A $3A
    jp c, Jump_024_40C9                           ; $4018: $DA $C9 $40

    jp z, Jump_024_40DA                           ; $401B: $CA $DA $40

    call Call_000_39D3                            ; $401E: $CD $D3 $39
    jp nc, Jump_024_40E7                          ; $4021: $D2 $E7 $40

    jp z, Jump_024_402D                           ; $4024: $CA $2D $40

    jp nz, Jump_024_4068                          ; $4027: $C2 $68 $40

    jp Jump_024_40E7                              ; $402A: $C3 $E7 $40


Jump_024_402D:
    call Call_000_3209                            ; $402D: $CD $09 $32
    jr c, jr_024_403B                             ; $4030: $38 $09

    ld hl, $3AD4                                  ; $4032: $21 $D4 $3A
    call Call_000_2B78                            ; $4035: $CD $78 $2B
    jp c, Jump_024_40C9                           ; $4038: $DA $C9 $40

jr_024_403B:
    call Call_000_3A61                            ; $403B: $CD $61 $3A
    jp c, Jump_024_40E5                           ; $403E: $DA $E5 $40

    ld hl, $3B14                                  ; $4041: $21 $14 $3B
    call Call_000_2B78                            ; $4044: $CD $78 $2B
    jp c, Jump_024_40B2                           ; $4047: $DA $B2 $40

    ld hl, $3B2A                                  ; $404A: $21 $2A $3B
    call Call_000_2B78                            ; $404D: $CD $78 $2B
    jp c, Jump_024_40A1                           ; $4050: $DA $A1 $40

    ld hl, $3AC2                                  ; $4053: $21 $C2 $3A
    call Call_000_2B78                            ; $4056: $CD $78 $2B
    jp c, Jump_024_4096                           ; $4059: $DA $96 $40

    ld hl, $3AB9                                  ; $405C: $21 $B9 $3A
    call Call_000_2B78                            ; $405F: $CD $78 $2B
    jp c, Jump_024_4082                           ; $4062: $DA $82 $40

    jp Jump_024_40E7                              ; $4065: $C3 $E7 $40


Jump_024_4068:
    call Call_000_3209                            ; $4068: $CD $09 $32
    jp c, Jump_024_407F                           ; $406B: $DA $7F $40

    cp $01                                        ; $406E: $FE $01
    jr z, jr_024_407F                             ; $4070: $28 $0D

    cp $02                                        ; $4072: $FE $02
    jr z, jr_024_4076                             ; $4074: $28 $00

jr_024_4076:
    ld hl, $3AE5                                  ; $4076: $21 $E5 $3A
    call Call_000_2B78                            ; $4079: $CD $78 $2B
    jp c, Jump_024_40DA                           ; $407C: $DA $DA $40

Jump_024_407F:
jr_024_407F:
    jp Jump_024_40E7                              ; $407F: $C3 $E7 $40


Jump_024_4082:
    call Call_000_32C5                            ; $4082: $CD $C5 $32
    jp nz, Jump_024_40E7                          ; $4085: $C2 $E7 $40

    call Call_000_2C23                            ; $4088: $CD $23 $2C
    ld a, $40                                     ; $408B: $3E $40
    call Call_000_32E2                            ; $408D: $CD $E2 $32
    call Call_000_34F1                            ; $4090: $CD $F1 $34
    jp Jump_024_40E5                              ; $4093: $C3 $E5 $40


Jump_024_4096:
    call Call_000_2C23                            ; $4096: $CD $23 $2C
    ld a, $42                                     ; $4099: $3E $42
    call Call_000_32E2                            ; $409B: $CD $E2 $32
    jp Jump_024_40E5                              ; $409E: $C3 $E5 $40


Jump_024_40A1:
    call Call_000_2C23                            ; $40A1: $CD $23 $2C
    ld a, $44                                     ; $40A4: $3E $44
    call Call_000_32E2                            ; $40A6: $CD $E2 $32
    ld hl, $0020                                  ; $40A9: $21 $20 $00
    add hl, bc                                    ; $40AC: $09
    set 5, [hl]                                   ; $40AD: $CB $EE
    jp Jump_024_40E5                              ; $40AF: $C3 $E5 $40


Jump_024_40B2:
    call Call_000_2C23                            ; $40B2: $CD $23 $2C
    ld a, $46                                     ; $40B5: $3E $46
    call Call_000_32E2                            ; $40B7: $CD $E2 $32
    ld hl, $0021                                  ; $40BA: $21 $21 $00
    add hl, bc                                    ; $40BD: $09
    set 7, [hl]                                   ; $40BE: $CB $FE
    ld hl, $009C                                  ; $40C0: $21 $9C $00
    add hl, bc                                    ; $40C3: $09
    ld [hl], $00                                  ; $40C4: $36 $00
    jp Jump_024_40E5                              ; $40C6: $C3 $E5 $40


Jump_024_40C9:
    call Call_000_2C23                            ; $40C9: $CD $23 $2C
    ld a, $4A                                     ; $40CC: $3E $4A
    call Call_000_32E2                            ; $40CE: $CD $E2 $32
    ld hl, $0021                                  ; $40D1: $21 $21 $00
    add hl, bc                                    ; $40D4: $09
    set 7, [hl]                                   ; $40D5: $CB $FE
    jp Jump_024_40E5                              ; $40D7: $C3 $E5 $40


Jump_024_40DA:
    call Call_000_2C23                            ; $40DA: $CD $23 $2C
    ld a, $4C                                     ; $40DD: $3E $4C
    call Call_000_32E2                            ; $40DF: $CD $E2 $32
    jp Jump_024_40E5                              ; $40E2: $C3 $E5 $40


Jump_024_40E5:
    scf                                           ; $40E5: $37
    ret                                           ; $40E6: $C9


Jump_024_40E7:
    or a                                          ; $40E7: $B7
    ret                                           ; $40E8: $C9


    call Call_000_2EE0                            ; $40E9: $CD $E0 $2E
    call Call_000_3517                            ; $40EC: $CD $17 $35
    jp c, Jump_024_4124                           ; $40EF: $DA $24 $41

    ld hl, $0018                                  ; $40F2: $21 $18 $00
    add hl, de                                    ; $40F5: $19
    ld a, [hl]                                    ; $40F6: $7E
    cp $08                                        ; $40F7: $FE $08
    jp z, Jump_024_4104                           ; $40F9: $CA $04 $41

    cp $10                                        ; $40FC: $FE $10
    jp z, Jump_024_4116                           ; $40FE: $CA $16 $41

    jp Jump_024_4121                              ; $4101: $C3 $21 $41


Jump_024_4104:
    call Call_000_2CA2                            ; $4104: $CD $A2 $2C
    jp z, Jump_024_4121                           ; $4107: $CA $21 $41

    call Call_024_492B                            ; $410A: $CD $2B $49
    ld hl, $001D                                  ; $410D: $21 $1D $00
    add hl, de                                    ; $4110: $19
    ld [hl], $0A                                  ; $4111: $36 $0A
    jp Jump_024_4121                              ; $4113: $C3 $21 $41


Jump_024_4116:
    call Call_000_2CA9                            ; $4116: $CD $A9 $2C
    jp nc, Jump_024_4121                          ; $4119: $D2 $21 $41

    call Call_000_2DB6                            ; $411C: $CD $B6 $2D
    jr jr_024_4124                                ; $411F: $18 $03

Jump_024_4121:
    jp Jump_000_2E25                              ; $4121: $C3 $25 $2E


Jump_024_4124:
jr_024_4124:
    ret                                           ; $4124: $C9


    call Call_000_2EE0                            ; $4125: $CD $E0 $2E
    call Call_000_3517                            ; $4128: $CD $17 $35
    jp c, Jump_024_4295                           ; $412B: $DA $95 $42

    ld hl, $0018                                  ; $412E: $21 $18 $00
    add hl, de                                    ; $4131: $19
    ld a, [hl]                                    ; $4132: $7E
    cp $00                                        ; $4133: $FE $00
    jp z, Jump_024_415B                           ; $4135: $CA $5B $41

    cp $04                                        ; $4138: $FE $04
    jp z, Jump_024_418C                           ; $413A: $CA $8C $41

    cp $08                                        ; $413D: $FE $08
    jp z, Jump_024_4287                           ; $413F: $CA $87 $42

    cp $0C                                        ; $4142: $FE $0C
    jp z, Jump_024_41F7                           ; $4144: $CA $F7 $41

    cp $10                                        ; $4147: $FE $10
    jp z, Jump_024_41FA                           ; $4149: $CA $FA $41

    cp $14                                        ; $414C: $FE $14
    jp z, Jump_024_421C                           ; $414E: $CA $1C $42

    cp $18                                        ; $4151: $FE $18
    jp z, Jump_024_4243                           ; $4153: $CA $43 $42

    cp $1C                                        ; $4156: $FE $1C
    jp z, Jump_024_4281                           ; $4158: $CA $81 $42

Jump_024_415B:
    call Call_000_2CA9                            ; $415B: $CD $A9 $2C
    jp nc, Jump_024_4292                          ; $415E: $D2 $92 $42

    inc hl                                        ; $4161: $23
    ld [hl], $FF                                  ; $4162: $36 $FF
    call Call_000_32CC                            ; $4164: $CD $CC $32
    jr c, jr_024_4181                             ; $4167: $38 $18

    jr nz, jr_024_4176                            ; $4169: $20 $0B

    ld hl, $0408                                  ; $416B: $21 $08 $04
    ld a, $01                                     ; $416E: $3E $01
    call Call_000_34B3                            ; $4170: $CD $B3 $34
    jp Jump_024_4292                              ; $4173: $C3 $92 $42


jr_024_4176:
    ld hl, $0208                                  ; $4176: $21 $08 $02
    ld a, $11                                     ; $4179: $3E $11
    call Call_000_34B3                            ; $417B: $CD $B3 $34
    jp Jump_024_4292                              ; $417E: $C3 $92 $42


jr_024_4181:
    ld hl, $0408                                  ; $4181: $21 $08 $04
    ld a, $12                                     ; $4184: $3E $12
    call Call_000_34B3                            ; $4186: $CD $B3 $34
    jp Jump_024_4292                              ; $4189: $C3 $92 $42


Jump_024_418C:
    call Call_000_2CA2                            ; $418C: $CD $A2 $2C
    jr z, jr_024_41D0                             ; $418F: $28 $3F

    ld a, $11                                     ; $4191: $3E $11
    call Call_000_1360                            ; $4193: $CD $60 $13
    call Call_000_32CC                            ; $4196: $CD $CC $32
    jr c, jr_024_41B9                             ; $4199: $38 $1E

    jr nz, jr_024_41AB                            ; $419B: $20 $0E

    ld hl, $0500                                  ; $419D: $21 $00 $05
    call Call_000_2FEB                            ; $41A0: $CD $EB $2F
    ld hl, $FC80                                  ; $41A3: $21 $80 $FC
    call Call_000_305D                            ; $41A6: $CD $5D $30
    jr jr_024_41CD                                ; $41A9: $18 $22

jr_024_41AB:
    ld hl, $0600                                  ; $41AB: $21 $00 $06
    call Call_000_2FEB                            ; $41AE: $CD $EB $2F
    ld hl, $FC00                                  ; $41B1: $21 $00 $FC
    call Call_000_305D                            ; $41B4: $CD $5D $30
    jr jr_024_41CD                                ; $41B7: $18 $14

jr_024_41B9:
    ld hl, $0700                                  ; $41B9: $21 $00 $07
    call Call_000_2FEB                            ; $41BC: $CD $EB $2F
    ld hl, $FB80                                  ; $41BF: $21 $80 $FB
    call Call_000_305D                            ; $41C2: $CD $5D $30
    ld hl, $0208                                  ; $41C5: $21 $08 $02
    ld a, $12                                     ; $41C8: $3E $12
    call Call_000_34A2                            ; $41CA: $CD $A2 $34

jr_024_41CD:
    jp Jump_024_4255                              ; $41CD: $C3 $55 $42


jr_024_41D0:
    call Call_000_32CC                            ; $41D0: $CD $CC $32
    jr c, jr_024_41D9                             ; $41D3: $38 $04

    jr nz, jr_024_41D9                            ; $41D5: $20 $02

    jr jr_024_41F4                                ; $41D7: $18 $1B

jr_024_41D9:
    call Call_000_3262                            ; $41D9: $CD $62 $32
    jp nc, Jump_024_41F4                          ; $41DC: $D2 $F4 $41

    jp nz, Jump_024_41F4                          ; $41DF: $C2 $F4 $41

    ld hl, $020F                                  ; $41E2: $21 $0F $02
    ld a, $10                                     ; $41E5: $3E $10
    call Call_000_34B3                            ; $41E7: $CD $B3 $34
    ld a, $0C                                     ; $41EA: $3E $0C
    ld h, $01                                     ; $41EC: $26 $01
    call Call_000_2D19                            ; $41EE: $CD $19 $2D
    jp Jump_024_4295                              ; $41F1: $C3 $95 $42


Jump_024_41F4:
jr_024_41F4:
    jp Jump_024_4255                              ; $41F4: $C3 $55 $42


Jump_024_41F7:
    jp Jump_024_4255                              ; $41F7: $C3 $55 $42


Jump_024_41FA:
    call Call_000_2CA2                            ; $41FA: $CD $A2 $2C
    jr z, jr_024_420B                             ; $41FD: $28 $0C

    ld hl, $0000                                  ; $41FF: $21 $00 $00
    call Call_000_2FEB                            ; $4202: $CD $EB $2F
    ld hl, $0006                                  ; $4205: $21 $06 $00
    add hl, de                                    ; $4208: $19
    ld [hl], $88                                  ; $4209: $36 $88

jr_024_420B:
    call Call_000_2CA9                            ; $420B: $CD $A9 $2C
    jp nc, Jump_024_4292                          ; $420E: $D2 $92 $42

    ld hl, $0208                                  ; $4211: $21 $08 $02
    ld a, $01                                     ; $4214: $3E $01
    call Call_000_34B3                            ; $4216: $CD $B3 $34
    jp Jump_024_4292                              ; $4219: $C3 $92 $42


Jump_024_421C:
    call Call_000_2CA2                            ; $421C: $CD $A2 $2C
    jr z, jr_024_4243                             ; $421F: $28 $22

    ld a, $11                                     ; $4221: $3E $11
    call Call_000_1360                            ; $4223: $CD $60 $13
    call Call_000_32CC                            ; $4226: $CD $CC $32
    jr c, jr_024_423D                             ; $4229: $38 $12

    jr nz, jr_024_4235                            ; $422B: $20 $08

    ld hl, $0500                                  ; $422D: $21 $00 $05
    call Call_000_2FEB                            ; $4230: $CD $EB $2F
    jr jr_024_4243                                ; $4233: $18 $0E

jr_024_4235:
    ld hl, $0600                                  ; $4235: $21 $00 $06
    call Call_000_2FEB                            ; $4238: $CD $EB $2F
    jr jr_024_4243                                ; $423B: $18 $06

jr_024_423D:
    ld hl, $0700                                  ; $423D: $21 $00 $07
    call Call_000_2FEB                            ; $4240: $CD $EB $2F

Jump_024_4243:
jr_024_4243:
    ld hl, $0040                                  ; $4243: $21 $40 $00
    call Call_000_30B0                            ; $4246: $CD $B0 $30
    call Call_000_2CA9                            ; $4249: $CD $A9 $2C
    jp nc, Jump_024_4292                          ; $424C: $D2 $92 $42

    inc hl                                        ; $424F: $23
    ld [hl], $14                                  ; $4250: $36 $14
    jp Jump_024_4292                              ; $4252: $C3 $92 $42


Jump_024_4255:
    ld hl, $0060                                  ; $4255: $21 $60 $00
    call Call_000_30FF                            ; $4258: $CD $FF $30
    jp nc, Jump_024_4292                          ; $425B: $D2 $92 $42

    call Call_000_32CC                            ; $425E: $CD $CC $32
    jr c, jr_024_426F                             ; $4261: $38 $0C

    jr nz, jr_024_426F                            ; $4263: $20 $0A

    ld a, $08                                     ; $4265: $3E $08
    ld h, $14                                     ; $4267: $26 $14
    call Call_000_2CBA                            ; $4269: $CD $BA $2C
    jp Jump_024_4295                              ; $426C: $C3 $95 $42


jr_024_426F:
    ld a, $14                                     ; $426F: $3E $14
    ld h, $01                                     ; $4271: $26 $01
    call Call_000_2CBA                            ; $4273: $CD $BA $2C
    ld hl, $0208                                  ; $4276: $21 $08 $02
    ld a, $01                                     ; $4279: $3E $01
    call Call_000_34B3                            ; $427B: $CD $B3 $34
    jp Jump_024_4295                              ; $427E: $C3 $95 $42


Jump_024_4281:
    ld hl, $0040                                  ; $4281: $21 $40 $00
    call Call_000_30B0                            ; $4284: $CD $B0 $30

Jump_024_4287:
    call Call_000_2CA9                            ; $4287: $CD $A9 $2C
    jp nc, Jump_024_4292                          ; $428A: $D2 $92 $42

    call Call_000_2DB6                            ; $428D: $CD $B6 $2D
    jr jr_024_4295                                ; $4290: $18 $03

Jump_024_4292:
    call Call_000_2E25                            ; $4292: $CD $25 $2E

Jump_024_4295:
jr_024_4295:
    ret                                           ; $4295: $C9


    call Call_000_2EE0                            ; $4296: $CD $E0 $2E
    call Call_000_3517                            ; $4299: $CD $17 $35
    jp c, Jump_024_4378                           ; $429C: $DA $78 $43

    ld hl, $0018                                  ; $429F: $21 $18 $00
    add hl, de                                    ; $42A2: $19
    ld a, [hl]                                    ; $42A3: $7E
    cp $00                                        ; $42A4: $FE $00
    jp z, Jump_024_42BB                           ; $42A6: $CA $BB $42

    cp $04                                        ; $42A9: $FE $04
    jp z, Jump_024_42F2                           ; $42AB: $CA $F2 $42

    cp $08                                        ; $42AE: $FE $08
    jp z, Jump_024_431D                           ; $42B0: $CA $1D $43

    cp $0C                                        ; $42B3: $FE $0C
    jp z, Jump_024_436A                           ; $42B5: $CA $6A $43

    jp Jump_024_4375                              ; $42B8: $C3 $75 $43


Jump_024_42BB:
    call Call_000_2CA9                            ; $42BB: $CD $A9 $2C
    jp nc, Jump_024_4375                          ; $42BE: $D2 $75 $43

    call Call_000_32CC                            ; $42C1: $CD $CC $32
    jr c, jr_024_42E0                             ; $42C4: $38 $1A

    jr nz, jr_024_42D4                            ; $42C6: $20 $0C

    ld hl, $0208                                  ; $42C8: $21 $08 $02
    ld a, $90                                     ; $42CB: $3E $90
    call Call_000_34B3                            ; $42CD: $CD $B3 $34
    ld a, $02                                     ; $42D0: $3E $02
    jr jr_024_42EA                                ; $42D2: $18 $16

jr_024_42D4:
    ld hl, $0308                                  ; $42D4: $21 $08 $03
    ld a, $90                                     ; $42D7: $3E $90
    call Call_000_34B3                            ; $42D9: $CD $B3 $34
    ld a, $03                                     ; $42DC: $3E $03
    jr jr_024_42EA                                ; $42DE: $18 $0A

jr_024_42E0:
    ld hl, $0208                                  ; $42E0: $21 $08 $02
    ld a, $92                                     ; $42E3: $3E $92
    call Call_000_34B3                            ; $42E5: $CD $B3 $34
    ld a, $04                                     ; $42E8: $3E $04

jr_024_42EA:
    ld hl, $009C                                  ; $42EA: $21 $9C $00
    add hl, bc                                    ; $42ED: $09
    ld [hl], a                                    ; $42EE: $77
    jp Jump_024_4375                              ; $42EF: $C3 $75 $43


Jump_024_42F2:
    call Call_024_4358                            ; $42F2: $CD $58 $43
    call Call_000_2CA9                            ; $42F5: $CD $A9 $2C
    jp nc, Jump_024_4375                          ; $42F8: $D2 $75 $43

    ld a, $AE                                     ; $42FB: $3E $AE
    call Call_000_1360                            ; $42FD: $CD $60 $13
    call Call_000_32CC                            ; $4300: $CD $CC $32
    jr c, jr_024_4312                             ; $4303: $38 $0D

    jr nz, jr_024_4307                            ; $4305: $20 $00

jr_024_4307:
    ld hl, $0208                                  ; $4307: $21 $08 $02
    ld a, $90                                     ; $430A: $3E $90
    call Call_000_34B3                            ; $430C: $CD $B3 $34
    jp Jump_024_4375                              ; $430F: $C3 $75 $43


jr_024_4312:
    ld hl, $0208                                  ; $4312: $21 $08 $02
    ld a, $92                                     ; $4315: $3E $92
    call Call_000_34B3                            ; $4317: $CD $B3 $34
    jp Jump_024_4375                              ; $431A: $C3 $75 $43


Jump_024_431D:
    call Call_024_4358                            ; $431D: $CD $58 $43
    call Call_000_2CA9                            ; $4320: $CD $A9 $2C
    jp nc, Jump_024_4375                          ; $4323: $D2 $75 $43

    ld hl, $009C                                  ; $4326: $21 $9C $00
    add hl, bc                                    ; $4329: $09
    dec [hl]                                      ; $432A: $35
    jr nz, jr_024_4336                            ; $432B: $20 $09

    ld hl, $001D                                  ; $432D: $21 $1D $00
    add hl, de                                    ; $4330: $19
    ld [hl], $0A                                  ; $4331: $36 $0A
    jp Jump_024_4375                              ; $4333: $C3 $75 $43


jr_024_4336:
    call Call_000_32CC                            ; $4336: $CD $CC $32
    jr c, jr_024_4347                             ; $4339: $38 $0C

    jr nz, jr_024_433D                            ; $433B: $20 $00

jr_024_433D:
    ld hl, $0208                                  ; $433D: $21 $08 $02
    ld a, $90                                     ; $4340: $3E $90
    call Call_000_34B3                            ; $4342: $CD $B3 $34
    jr jr_024_434F                                ; $4345: $18 $08

jr_024_4347:
    ld hl, $0208                                  ; $4347: $21 $08 $02
    ld a, $92                                     ; $434A: $3E $92
    call Call_000_34B3                            ; $434C: $CD $B3 $34

jr_024_434F:
    ld hl, $0014                                  ; $434F: $21 $14 $00
    add hl, de                                    ; $4352: $19
    ld [hl], $00                                  ; $4353: $36 $00
    jp Jump_024_4375                              ; $4355: $C3 $75 $43


Call_024_4358:
    call Call_000_32CC                            ; $4358: $CD $CC $32
    jr c, jr_024_4360                             ; $435B: $38 $03

    jr nz, jr_024_435F                            ; $435D: $20 $00

jr_024_435F:
    ret                                           ; $435F: $C9


jr_024_4360:
    ret                                           ; $4360: $C9


    ld hl, $0208                                  ; $4361: $21 $08 $02
    ld a, $92                                     ; $4364: $3E $92
    call Call_000_34A2                            ; $4366: $CD $A2 $34
    ret                                           ; $4369: $C9


Jump_024_436A:
    call Call_000_2CA9                            ; $436A: $CD $A9 $2C
    jp nc, Jump_024_4375                          ; $436D: $D2 $75 $43

    call Call_000_2DB6                            ; $4370: $CD $B6 $2D
    jr jr_024_4378                                ; $4373: $18 $03

Jump_024_4375:
    jp Jump_000_2E25                              ; $4375: $C3 $25 $2E


Jump_024_4378:
jr_024_4378:
    ret                                           ; $4378: $C9


    call Call_000_2EE0                            ; $4379: $CD $E0 $2E
    call Call_000_3517                            ; $437C: $CD $17 $35
    jp c, Jump_024_44CB                           ; $437F: $DA $CB $44

    ld hl, $0018                                  ; $4382: $21 $18 $00
    add hl, de                                    ; $4385: $19
    ld a, [hl]                                    ; $4386: $7E
    cp $00                                        ; $4387: $FE $00
    jp z, Jump_024_43A0                           ; $4389: $CA $A0 $43

    cp $04                                        ; $438C: $FE $04
    jp z, Jump_024_43C7                           ; $438E: $CA $C7 $43

    cp $08                                        ; $4391: $FE $08
    jp z, Jump_024_4418                           ; $4393: $CA $18 $44

    cp $0C                                        ; $4396: $FE $0C
    jp z, Jump_024_44A4                           ; $4398: $CA $A4 $44

    cp $10                                        ; $439B: $FE $10
    jp z, Jump_024_44BD                           ; $439D: $CA $BD $44

Jump_024_43A0:
    call Call_000_2CA9                            ; $43A0: $CD $A9 $2C
    jp nc, Jump_024_44C8                          ; $43A3: $D2 $C8 $44

    inc hl                                        ; $43A6: $23
    ld [hl], $07                                  ; $43A7: $36 $07
    ld hl, $009C                                  ; $43A9: $21 $9C $00
    add hl, bc                                    ; $43AC: $09
    ld a, [hl]                                    ; $43AD: $7E
    or a                                          ; $43AE: $B7
    jr nz, jr_024_43BC                            ; $43AF: $20 $0B

    ld hl, $0204                                  ; $43B1: $21 $04 $02
    ld a, $11                                     ; $43B4: $3E $11
    call Call_000_34B3                            ; $43B6: $CD $B3 $34
    jp Jump_024_44C8                              ; $43B9: $C3 $C8 $44


jr_024_43BC:
    ld hl, $0108                                  ; $43BC: $21 $08 $01
    ld a, $10                                     ; $43BF: $3E $10
    call Call_000_34B3                            ; $43C1: $CD $B3 $34
    jp Jump_024_44C8                              ; $43C4: $C3 $C8 $44


Jump_024_43C7:
    call Call_000_2CA2                            ; $43C7: $CD $A2 $2C
    jr z, jr_024_43FE                             ; $43CA: $28 $32

    ld a, $11                                     ; $43CC: $3E $11
    call Call_000_1360                            ; $43CE: $CD $60 $13
    ld hl, $009C                                  ; $43D1: $21 $9C $00
    add hl, bc                                    ; $43D4: $09
    ld a, [hl]                                    ; $43D5: $7E
    or a                                          ; $43D6: $B7
    jr nz, jr_024_43F8                            ; $43D7: $20 $1F

    call Call_000_32CC                            ; $43D9: $CD $CC $32
    jr c, jr_024_43F0                             ; $43DC: $38 $12

    jr nz, jr_024_43E8                            ; $43DE: $20 $08

    ld hl, $0300                                  ; $43E0: $21 $00 $03
    call Call_000_2FEB                            ; $43E3: $CD $EB $2F
    jr jr_024_43FE                                ; $43E6: $18 $16

jr_024_43E8:
    ld hl, $0400                                  ; $43E8: $21 $00 $04
    call Call_000_2FEB                            ; $43EB: $CD $EB $2F
    jr jr_024_43FE                                ; $43EE: $18 $0E

jr_024_43F0:
    ld hl, $0500                                  ; $43F0: $21 $00 $05
    call Call_000_2FEB                            ; $43F3: $CD $EB $2F
    jr jr_024_43FE                                ; $43F6: $18 $06

jr_024_43F8:
    ld hl, $0600                                  ; $43F8: $21 $00 $06
    call Call_000_2FEB                            ; $43FB: $CD $EB $2F

jr_024_43FE:
    ld hl, $0040                                  ; $43FE: $21 $40 $00
    call Call_000_30B0                            ; $4401: $CD $B0 $30
    call Call_000_2CA9                            ; $4404: $CD $A9 $2C
    jp nc, Jump_024_44C8                          ; $4407: $D2 $C8 $44

    inc hl                                        ; $440A: $23
    ld [hl], $FF                                  ; $440B: $36 $FF
    ld hl, $0208                                  ; $440D: $21 $08 $02
    ld a, $11                                     ; $4410: $3E $11
    call Call_000_34B3                            ; $4412: $CD $B3 $34
    jp Jump_024_44C8                              ; $4415: $C3 $C8 $44


Jump_024_4418:
    call Call_000_2CA2                            ; $4418: $CD $A2 $2C
    jr z, jr_024_4474                             ; $441B: $28 $57

    ld a, $B6                                     ; $441D: $3E $B6
    call Call_000_1360                            ; $441F: $CD $60 $13
    ld hl, $0021                                  ; $4422: $21 $21 $00
    add hl, bc                                    ; $4425: $09
    res 7, [hl]                                   ; $4426: $CB $BE
    res 3, [hl]                                   ; $4428: $CB $9E
    ld hl, $009C                                  ; $442A: $21 $9C $00
    add hl, bc                                    ; $442D: $09
    ld a, [hl]                                    ; $442E: $7E
    or a                                          ; $442F: $B7
    jr nz, jr_024_4463                            ; $4430: $20 $31

    call Call_000_32CC                            ; $4432: $CD $CC $32
    jr c, jr_024_4455                             ; $4435: $38 $1E

    jr nz, jr_024_4447                            ; $4437: $20 $0E

    ld hl, $0000                                  ; $4439: $21 $00 $00
    call Call_000_2FEB                            ; $443C: $CD $EB $2F
    ld hl, $FA00                                  ; $443F: $21 $00 $FA
    call Call_000_305D                            ; $4442: $CD $5D $30
    jr jr_024_4471                                ; $4445: $18 $2A

jr_024_4447:
    ld hl, $0000                                  ; $4447: $21 $00 $00
    call Call_000_2FEB                            ; $444A: $CD $EB $2F
    ld hl, $F900                                  ; $444D: $21 $00 $F9
    call Call_000_305D                            ; $4450: $CD $5D $30
    jr jr_024_4471                                ; $4453: $18 $1C

jr_024_4455:
    ld hl, $0100                                  ; $4455: $21 $00 $01
    call Call_000_2FEB                            ; $4458: $CD $EB $2F
    ld hl, $FA00                                  ; $445B: $21 $00 $FA
    call Call_000_305D                            ; $445E: $CD $5D $30
    jr jr_024_4471                                ; $4461: $18 $0E

jr_024_4463:
    ld hl, $0200                                  ; $4463: $21 $00 $02
    call Call_000_2FEB                            ; $4466: $CD $EB $2F
    ld hl, $F700                                  ; $4469: $21 $00 $F7
    call Call_000_305D                            ; $446C: $CD $5D $30
    jr jr_024_4471                                ; $446F: $18 $00

jr_024_4471:
    jp Jump_024_44A4                              ; $4471: $C3 $A4 $44


jr_024_4474:
    ld hl, $009C                                  ; $4474: $21 $9C $00
    add hl, bc                                    ; $4477: $09
    ld a, [hl]                                    ; $4478: $7E
    or a                                          ; $4479: $B7
    jr nz, jr_024_448F                            ; $447A: $20 $13

    call Call_000_32CC                            ; $447C: $CD $CC $32
    jr c, jr_024_4485                             ; $447F: $38 $04

    jr nz, jr_024_4483                            ; $4481: $20 $00

jr_024_4483:
    jr jr_024_4497                                ; $4483: $18 $12

jr_024_4485:
    ld hl, $0108                                  ; $4485: $21 $08 $01
    ld a, $10                                     ; $4488: $3E $10
    call Call_000_34A2                            ; $448A: $CD $A2 $34
    jr jr_024_4497                                ; $448D: $18 $08

jr_024_448F:
    ld hl, $0108                                  ; $448F: $21 $08 $01
    ld a, $92                                     ; $4492: $3E $92
    call Call_000_34A2                            ; $4494: $CD $A2 $34

jr_024_4497:
    ld a, $FF                                     ; $4497: $3E $FF
    ld h, $FF                                     ; $4499: $26 $FF
    call Call_000_2D33                            ; $449B: $CD $33 $2D
    jp nc, Jump_024_44A4                          ; $449E: $D2 $A4 $44

    jp Jump_024_44A4                              ; $44A1: $C3 $A4 $44


Jump_024_44A4:
    ld hl, $0020                                  ; $44A4: $21 $20 $00
    call Call_000_30B0                            ; $44A7: $CD $B0 $30
    ld hl, $0060                                  ; $44AA: $21 $60 $00
    call Call_000_30FF                            ; $44AD: $CD $FF $30
    jp nc, Jump_024_44C8                          ; $44B0: $D2 $C8 $44

    ld a, $10                                     ; $44B3: $3E $10
    ld h, $14                                     ; $44B5: $26 $14
    call Call_000_2CBA                            ; $44B7: $CD $BA $2C
    jp Jump_024_44CB                              ; $44BA: $C3 $CB $44


Jump_024_44BD:
    call Call_000_2CA9                            ; $44BD: $CD $A9 $2C
    jp nc, Jump_024_44C8                          ; $44C0: $D2 $C8 $44

    call Call_000_2DB6                            ; $44C3: $CD $B6 $2D
    jr jr_024_44CB                                ; $44C6: $18 $03

Jump_024_44C8:
    call Call_000_2E25                            ; $44C8: $CD $25 $2E

Jump_024_44CB:
jr_024_44CB:
    ret                                           ; $44CB: $C9


    call Call_000_2EE0                            ; $44CC: $CD $E0 $2E
    call Call_000_3517                            ; $44CF: $CD $17 $35
    jp c, Jump_024_463F                           ; $44D2: $DA $3F $46

    ld hl, $0018                                  ; $44D5: $21 $18 $00
    add hl, de                                    ; $44D8: $19
    ld a, [hl]                                    ; $44D9: $7E
    cp $00                                        ; $44DA: $FE $00
    jp z, Jump_024_451C                           ; $44DC: $CA $1C $45

    cp $04                                        ; $44DF: $FE $04
    jp z, Jump_024_4533                           ; $44E1: $CA $33 $45

    cp $08                                        ; $44E4: $FE $08
    jp z, Jump_024_454B                           ; $44E6: $CA $4B $45

    cp $0C                                        ; $44E9: $FE $0C
    jp z, Jump_024_4557                           ; $44EB: $CA $57 $45

    cp $10                                        ; $44EE: $FE $10
    jp z, Jump_024_45A4                           ; $44F0: $CA $A4 $45

    cp $18                                        ; $44F3: $FE $18
    jp z, Jump_024_45B8                           ; $44F5: $CA $B8 $45

    cp $20                                        ; $44F8: $FE $20
    jp z, Jump_024_45B8                           ; $44FA: $CA $B8 $45

    cp $28                                        ; $44FD: $FE $28
    jp z, Jump_024_45B8                           ; $44FF: $CA $B8 $45

    cp $30                                        ; $4502: $FE $30
    jp z, Jump_024_45B8                           ; $4504: $CA $B8 $45

    cp $38                                        ; $4507: $FE $38
    jp z, Jump_024_45B8                           ; $4509: $CA $B8 $45

    cp $2C                                        ; $450C: $FE $2C
    jp z, Jump_024_45EE                           ; $450E: $CA $EE $45

    cp $44                                        ; $4511: $FE $44
    jp z, Jump_024_4618                           ; $4513: $CA $18 $46

    jp Jump_024_45CC                              ; $4516: $C3 $CC $45


    jp Jump_024_463C                              ; $4519: $C3 $3C $46


Jump_024_451C:
    call Call_000_2CA2                            ; $451C: $CD $A2 $2C
    jp z, Jump_024_4527                           ; $451F: $CA $27 $45

    ld a, $09                                     ; $4522: $3E $09
    call Call_000_1360                            ; $4524: $CD $60 $13

Jump_024_4527:
    call Call_000_2CA9                            ; $4527: $CD $A9 $2C
    jp nc, Jump_024_463C                          ; $452A: $D2 $3C $46

    inc hl                                        ; $452D: $23
    ld [hl], $01                                  ; $452E: $36 $01
    jp Jump_024_463C                              ; $4530: $C3 $3C $46


Jump_024_4533:
    call Call_000_2CA2                            ; $4533: $CD $A2 $2C
    jp z, Jump_024_453F                           ; $4536: $CA $3F $45

    ld hl, $0031                                  ; $4539: $21 $31 $00
    add hl, bc                                    ; $453C: $09
    ld [hl], $01                                  ; $453D: $36 $01

Jump_024_453F:
    call Call_000_2CA9                            ; $453F: $CD $A9 $2C
    jp nc, Jump_024_463C                          ; $4542: $D2 $3C $46

    inc hl                                        ; $4545: $23
    ld [hl], $01                                  ; $4546: $36 $01
    jp Jump_024_463C                              ; $4548: $C3 $3C $46


Jump_024_454B:
    call Call_000_2CA9                            ; $454B: $CD $A9 $2C
    jp nc, Jump_024_463C                          ; $454E: $D2 $3C $46

    inc hl                                        ; $4551: $23
    ld [hl], $FF                                  ; $4552: $36 $FF
    jp Jump_024_463C                              ; $4554: $C3 $3C $46


Jump_024_4557:
    call Call_000_2CA2                            ; $4557: $CD $A2 $2C
    jp z, Jump_024_4577                           ; $455A: $CA $77 $45

    ld a, $11                                     ; $455D: $3E $11
    call Call_000_1360                            ; $455F: $CD $60 $13
    ld hl, $0021                                  ; $4562: $21 $21 $00
    add hl, bc                                    ; $4565: $09
    res 7, [hl]                                   ; $4566: $CB $BE
    ld hl, $06FF                                  ; $4568: $21 $FF $06
    call Call_000_2FEB                            ; $456B: $CD $EB $2F
    ld hl, $FD80                                  ; $456E: $21 $80 $FD
    call Call_000_305D                            ; $4571: $CD $5D $30
    jp Jump_024_4605                              ; $4574: $C3 $05 $46


Jump_024_4577:
    call Call_000_3262                            ; $4577: $CD $62 $32
    jp nc, Jump_024_459E                          ; $457A: $D2 $9E $45

    jp nz, Jump_024_459E                          ; $457D: $C2 $9E $45

    ld hl, $010C                                  ; $4580: $21 $0C $01
    ld a, $10                                     ; $4583: $3E $10
    call Call_000_34B3                            ; $4585: $CD $B3 $34
    ld a, $10                                     ; $4588: $3E $10
    ld h, $01                                     ; $458A: $26 $01
    call Call_000_2D19                            ; $458C: $CD $19 $2D
    ld hl, $0080                                  ; $458F: $21 $80 $00
    call Call_000_2FEB                            ; $4592: $CD $EB $2F
    call Call_000_3069                            ; $4595: $CD $69 $30
    call Call_000_2637                            ; $4598: $CD $37 $26
    jp Jump_024_463F                              ; $459B: $C3 $3F $46


Jump_024_459E:
    jp Jump_024_4605                              ; $459E: $C3 $05 $46


    jp Jump_024_463F                              ; $45A1: $C3 $3F $46


Jump_024_45A4:
    call Call_000_3069                            ; $45A4: $CD $69 $30
    call Call_000_2CA2                            ; $45A7: $CD $A2 $2C
    jp z, Jump_024_463C                           ; $45AA: $CA $3C $46

    ld hl, $010C                                  ; $45AD: $21 $0C $01
    ld a, $10                                     ; $45B0: $3E $10
    call Call_000_34B3                            ; $45B2: $CD $B3 $34
    jp Jump_024_463C                              ; $45B5: $C3 $3C $46


Jump_024_45B8:
    call Call_000_3069                            ; $45B8: $CD $69 $30
    call Call_000_2CA2                            ; $45BB: $CD $A2 $2C
    jp z, Jump_024_463C                           ; $45BE: $CA $3C $46

    ld hl, $010C                                  ; $45C1: $21 $0C $01
    ld a, $10                                     ; $45C4: $3E $10
    call Call_000_34B3                            ; $45C6: $CD $B3 $34
    jp Jump_024_45E0                              ; $45C9: $C3 $E0 $45


Jump_024_45CC:
    call Call_000_3069                            ; $45CC: $CD $69 $30
    call Call_000_2CA2                            ; $45CF: $CD $A2 $2C
    jp z, Jump_024_463C                           ; $45D2: $CA $3C $46

    ld hl, $010B                                  ; $45D5: $21 $0B $01
    ld a, $10                                     ; $45D8: $3E $10
    call Call_000_34B3                            ; $45DA: $CD $B3 $34
    jp Jump_024_45E0                              ; $45DD: $C3 $E0 $45


Jump_024_45E0:
    call Call_000_32A3                            ; $45E0: $CD $A3 $32
    jp nc, Jump_024_463C                          ; $45E3: $D2 $3C $46

    ld a, $18                                     ; $45E6: $3E $18
    call Call_000_2E6E                            ; $45E8: $CD $6E $2E
    jp Jump_024_463F                              ; $45EB: $C3 $3F $46


Jump_024_45EE:
    call Call_000_3069                            ; $45EE: $CD $69 $30
    call Call_000_2CA9                            ; $45F1: $CD $A9 $2C
    jp nc, Jump_024_463C                          ; $45F4: $D2 $3C $46

    ld hl, $009C                                  ; $45F7: $21 $9C $00
    add hl, bc                                    ; $45FA: $09
    ld [hl], $01                                  ; $45FB: $36 $01
    ld a, $46                                     ; $45FD: $3E $46
    call Call_000_32E2                            ; $45FF: $CD $E2 $32
    jp Jump_024_463F                              ; $4602: $C3 $3F $46


Jump_024_4605:
    ld hl, $0030                                  ; $4605: $21 $30 $00
    call Call_000_30FF                            ; $4608: $CD $FF $30
    jp nc, Jump_024_463C                          ; $460B: $D2 $3C $46

    ld a, $44                                     ; $460E: $3E $44
    ld h, $0A                                     ; $4610: $26 $0A
    call Call_000_2CBA                            ; $4612: $CD $BA $2C
    jp Jump_024_463F                              ; $4615: $C3 $3F $46


Jump_024_4618:
    ld hl, $0080                                  ; $4618: $21 $80 $00
    call Call_000_30B0                            ; $461B: $CD $B0 $30
    call Call_000_326C                            ; $461E: $CD $6C $32
    jp nc, Jump_024_4631                          ; $4621: $D2 $31 $46

    jp nz, Jump_024_4631                          ; $4624: $C2 $31 $46

    ld a, $10                                     ; $4627: $3E $10
    ld h, $01                                     ; $4629: $26 $01
    call Call_000_2D19                            ; $462B: $CD $19 $2D
    jp Jump_024_463F                              ; $462E: $C3 $3F $46


Jump_024_4631:
    call Call_000_2CA9                            ; $4631: $CD $A9 $2C
    jp nc, Jump_024_463C                          ; $4634: $D2 $3C $46

    call Call_000_2DB6                            ; $4637: $CD $B6 $2D
    jr jr_024_463F                                ; $463A: $18 $03

Jump_024_463C:
    call Call_000_2E25                            ; $463C: $CD $25 $2E

Jump_024_463F:
jr_024_463F:
    ret                                           ; $463F: $C9


    call Call_000_2EE0                            ; $4640: $CD $E0 $2E
    call Call_000_3517                            ; $4643: $CD $17 $35
    jp c, Jump_024_492A                           ; $4646: $DA $2A $49

    ld hl, $0018                                  ; $4649: $21 $18 $00
    add hl, de                                    ; $464C: $19
    ld a, [hl]                                    ; $464D: $7E
    cp $00                                        ; $464E: $FE $00
    jp z, Jump_024_4697                           ; $4650: $CA $97 $46

    cp $04                                        ; $4653: $FE $04
    jp z, Jump_024_46BD                           ; $4655: $CA $BD $46

    cp $08                                        ; $4658: $FE $08
    jp z, Jump_024_46D9                           ; $465A: $CA $D9 $46

    cp $0C                                        ; $465D: $FE $0C
    jp z, Jump_024_4704                           ; $465F: $CA $04 $47

    cp $10                                        ; $4662: $FE $10
    jp z, Jump_024_4751                           ; $4664: $CA $51 $47

    cp $14                                        ; $4667: $FE $14
    jp z, Jump_024_47BF                           ; $4669: $CA $BF $47

    cp $18                                        ; $466C: $FE $18
    jp z, Jump_024_47FC                           ; $466E: $CA $FC $47

    cp $1C                                        ; $4671: $FE $1C
    jp z, Jump_024_4839                           ; $4673: $CA $39 $48

    cp $20                                        ; $4676: $FE $20
    jp z, Jump_024_4876                           ; $4678: $CA $76 $48

    cp $24                                        ; $467B: $FE $24
    jp z, Jump_024_488B                           ; $467D: $CA $8B $48

    cp $28                                        ; $4680: $FE $28
    jp z, Jump_024_48C8                           ; $4682: $CA $C8 $48

    cp $2C                                        ; $4685: $FE $2C
    jp z, Jump_024_48DC                           ; $4687: $CA $DC $48

    cp $30                                        ; $468A: $FE $30
    jp z, Jump_024_48F0                           ; $468C: $CA $F0 $48

    cp $34                                        ; $468F: $FE $34
    jp z, Jump_024_4901                           ; $4691: $CA $01 $49

    jp Jump_024_4927                              ; $4694: $C3 $27 $49


Jump_024_4697:
    call Call_000_2CA2                            ; $4697: $CD $A2 $2C
    jp z, Jump_024_46A3                           ; $469A: $CA $A3 $46

    ld hl, $0031                                  ; $469D: $21 $31 $00
    add hl, bc                                    ; $46A0: $09
    ld [hl], $01                                  ; $46A1: $36 $01

Jump_024_46A3:
    call Call_000_2CA9                            ; $46A3: $CD $A9 $2C
    jp nc, Jump_024_4927                          ; $46A6: $D2 $27 $49

    inc hl                                        ; $46A9: $23
    ld [hl], $00                                  ; $46AA: $36 $00
    ld hl, $010B                                  ; $46AC: $21 $0B $01
    ld a, $13                                     ; $46AF: $3E $13
    call Call_000_34B3                            ; $46B1: $CD $B3 $34
    ld hl, $009C                                  ; $46B4: $21 $9C $00
    add hl, bc                                    ; $46B7: $09
    ld [hl], $01                                  ; $46B8: $36 $01
    jp Jump_024_4927                              ; $46BA: $C3 $27 $49


Jump_024_46BD:
    call Call_000_2CA2                            ; $46BD: $CD $A2 $2C
    jr z, jr_024_46D9                             ; $46C0: $28 $17

    ld a, $12                                     ; $46C2: $3E $12
    call Call_000_1360                            ; $46C4: $CD $60 $13
    ld hl, $0021                                  ; $46C7: $21 $21 $00
    add hl, bc                                    ; $46CA: $09
    res 7, [hl]                                   ; $46CB: $CB $BE
    ld hl, $0022                                  ; $46CD: $21 $22 $00
    add hl, bc                                    ; $46D0: $09
    set 7, [hl]                                   ; $46D1: $CB $FE
    ld hl, $0600                                  ; $46D3: $21 $00 $06
    call Call_000_2FEB                            ; $46D6: $CD $EB $2F

Jump_024_46D9:
jr_024_46D9:
    call Call_000_3069                            ; $46D9: $CD $69 $30
    call Call_000_3262                            ; $46DC: $CD $62 $32
    jp nc, Jump_024_4701                          ; $46DF: $D2 $01 $47

    jp nz, Jump_024_46F7                          ; $46E2: $C2 $F7 $46

    ld hl, $0408                                  ; $46E5: $21 $08 $04
    ld a, $13                                     ; $46E8: $3E $13
    call Call_000_34B3                            ; $46EA: $CD $B3 $34
    ld a, $10                                     ; $46ED: $3E $10
    ld h, $0A                                     ; $46EF: $26 $0A
    call Call_000_2D19                            ; $46F1: $CD $19 $2D
    jp Jump_024_492A                              ; $46F4: $C3 $2A $49


Jump_024_46F7:
    ld a, $34                                     ; $46F7: $3E $34
    ld h, $10                                     ; $46F9: $26 $10
    call Call_000_2D19                            ; $46FB: $CD $19 $2D
    jp Jump_024_492A                              ; $46FE: $C3 $2A $49


Jump_024_4701:
    jp Jump_024_4927                              ; $4701: $C3 $27 $49


Jump_024_4704:
    call Call_000_3069                            ; $4704: $CD $69 $30
    call Call_000_3262                            ; $4707: $CD $62 $32
    jp nc, Jump_024_472C                          ; $470A: $D2 $2C $47

    jp nz, Jump_024_4722                          ; $470D: $C2 $22 $47

    ld hl, $0408                                  ; $4710: $21 $08 $04
    ld a, $13                                     ; $4713: $3E $13
    call Call_000_34B3                            ; $4715: $CD $B3 $34
    ld a, $10                                     ; $4718: $3E $10
    ld h, $0A                                     ; $471A: $26 $0A
    call Call_000_2D19                            ; $471C: $CD $19 $2D
    jp Jump_024_492A                              ; $471F: $C3 $2A $49


Jump_024_4722:
    ld a, $34                                     ; $4722: $3E $34
    ld h, $10                                     ; $4724: $26 $10
    call Call_000_2D19                            ; $4726: $CD $19 $2D
    jp Jump_024_492A                              ; $4729: $C3 $2A $49


Jump_024_472C:
    call Call_000_2CA9                            ; $472C: $CD $A9 $2C
    jp nc, Jump_024_4927                          ; $472F: $D2 $27 $49

    ld hl, $009C                                  ; $4732: $21 $9C $00
    add hl, bc                                    ; $4735: $09
    dec hl                                        ; $4736: $2B
    jr z, jr_024_4742                             ; $4737: $28 $09

    ld hl, $0014                                  ; $4739: $21 $14 $00
    add hl, de                                    ; $473C: $19
    ld [hl], $00                                  ; $473D: $36 $00
    jp Jump_024_4927                              ; $473F: $C3 $27 $49


jr_024_4742:
    ld hl, $001D                                  ; $4742: $21 $1D $00
    add hl, de                                    ; $4745: $19
    ld [hl], $0A                                  ; $4746: $36 $0A
    ld hl, $0014                                  ; $4748: $21 $14 $00
    add hl, de                                    ; $474B: $19
    ld [hl], $30                                  ; $474C: $36 $30
    jp Jump_024_4927                              ; $474E: $C3 $27 $49


Jump_024_4751:
    call Call_000_2CA2                            ; $4751: $CD $A2 $2C
    jr z, jr_024_4782                             ; $4754: $28 $2C

    ld hl, $F800                                  ; $4756: $21 $00 $F8
    call Call_000_2FEB                            ; $4759: $CD $EB $2F
    ld hl, $F800                                  ; $475C: $21 $00 $F8
    call Call_000_305D                            ; $475F: $CD $5D $30
    ld hl, $0099                                  ; $4762: $21 $99 $00
    add hl, bc                                    ; $4765: $09
    ld a, [hl]                                    ; $4766: $7E
    ld hl, $0004                                  ; $4767: $21 $04 $00
    add hl, de                                    ; $476A: $19
    ld [hl], a                                    ; $476B: $77
    ld hl, $009A                                  ; $476C: $21 $9A $00
    add hl, bc                                    ; $476F: $09
    ld a, [hl]                                    ; $4770: $7E
    ld hl, $0006                                  ; $4771: $21 $06 $00
    add hl, de                                    ; $4774: $19
    ld [hl], a                                    ; $4775: $77
    ld hl, $2000                                  ; $4776: $21 $00 $20
    call Call_000_2F79                            ; $4779: $CD $79 $2F
    ld hl, $2000                                  ; $477C: $21 $00 $20
    call Call_000_2F42                            ; $477F: $CD $42 $2F

jr_024_4782:
    call Call_000_2CAE                            ; $4782: $CD $AE $2C
    jp nc, Jump_024_487F                          ; $4785: $D2 $7F $48

    ld hl, $0408                                  ; $4788: $21 $08 $04
    ld a, $12                                     ; $478B: $3E $12
    call Call_000_34A2                            ; $478D: $CD $A2 $34
    ld hl, $F800                                  ; $4790: $21 $00 $F8
    call Call_000_2FEB                            ; $4793: $CD $EB $2F
    ld hl, $0800                                  ; $4796: $21 $00 $08
    call Call_000_305D                            ; $4799: $CD $5D $30
    ld hl, $0099                                  ; $479C: $21 $99 $00
    add hl, bc                                    ; $479F: $09
    ld a, [hl]                                    ; $47A0: $7E
    ld hl, $0004                                  ; $47A1: $21 $04 $00
    add hl, de                                    ; $47A4: $19
    ld [hl], a                                    ; $47A5: $77
    ld hl, $009A                                  ; $47A6: $21 $9A $00
    add hl, bc                                    ; $47A9: $09
    ld a, [hl]                                    ; $47AA: $7E
    ld hl, $0006                                  ; $47AB: $21 $06 $00
    add hl, de                                    ; $47AE: $19
    ld [hl], a                                    ; $47AF: $77
    ld hl, $2000                                  ; $47B0: $21 $00 $20
    call Call_000_2F79                            ; $47B3: $CD $79 $2F
    ld hl, $E000                                  ; $47B6: $21 $00 $E0
    call Call_000_2F42                            ; $47B9: $CD $42 $2F
    jp Jump_024_4927                              ; $47BC: $C3 $27 $49


Jump_024_47BF:
    call Call_000_2CAE                            ; $47BF: $CD $AE $2C
    jp nc, Jump_024_487F                          ; $47C2: $D2 $7F $48

    ld hl, $0408                                  ; $47C5: $21 $08 $04
    ld a, $12                                     ; $47C8: $3E $12
    call Call_000_34A2                            ; $47CA: $CD $A2 $34
    ld hl, $0800                                  ; $47CD: $21 $00 $08
    call Call_000_2FEB                            ; $47D0: $CD $EB $2F
    ld hl, $0800                                  ; $47D3: $21 $00 $08
    call Call_000_305D                            ; $47D6: $CD $5D $30
    ld hl, $0099                                  ; $47D9: $21 $99 $00
    add hl, bc                                    ; $47DC: $09
    ld a, [hl]                                    ; $47DD: $7E
    ld hl, $0004                                  ; $47DE: $21 $04 $00
    add hl, de                                    ; $47E1: $19
    ld [hl], a                                    ; $47E2: $77
    ld hl, $009A                                  ; $47E3: $21 $9A $00
    add hl, bc                                    ; $47E6: $09
    ld a, [hl]                                    ; $47E7: $7E
    ld hl, $0006                                  ; $47E8: $21 $06 $00
    add hl, de                                    ; $47EB: $19
    ld [hl], a                                    ; $47EC: $77
    ld hl, $E000                                  ; $47ED: $21 $00 $E0
    call Call_000_2F79                            ; $47F0: $CD $79 $2F
    ld hl, $E000                                  ; $47F3: $21 $00 $E0
    call Call_000_2F42                            ; $47F6: $CD $42 $2F
    jp Jump_024_4927                              ; $47F9: $C3 $27 $49


Jump_024_47FC:
    call Call_000_2CAE                            ; $47FC: $CD $AE $2C
    jp nc, Jump_024_487F                          ; $47FF: $D2 $7F $48

    ld hl, $0408                                  ; $4802: $21 $08 $04
    ld a, $12                                     ; $4805: $3E $12
    call Call_000_34A2                            ; $4807: $CD $A2 $34
    ld hl, $0800                                  ; $480A: $21 $00 $08
    call Call_000_2FEB                            ; $480D: $CD $EB $2F
    ld hl, $F800                                  ; $4810: $21 $00 $F8
    call Call_000_305D                            ; $4813: $CD $5D $30
    ld hl, $0099                                  ; $4816: $21 $99 $00
    add hl, bc                                    ; $4819: $09
    ld a, [hl]                                    ; $481A: $7E
    ld hl, $0004                                  ; $481B: $21 $04 $00
    add hl, de                                    ; $481E: $19
    ld [hl], a                                    ; $481F: $77
    ld hl, $009A                                  ; $4820: $21 $9A $00
    add hl, bc                                    ; $4823: $09
    ld a, [hl]                                    ; $4824: $7E
    ld hl, $0006                                  ; $4825: $21 $06 $00
    add hl, de                                    ; $4828: $19
    ld [hl], a                                    ; $4829: $77
    ld hl, $E000                                  ; $482A: $21 $00 $E0
    call Call_000_2F79                            ; $482D: $CD $79 $2F
    ld hl, $2000                                  ; $4830: $21 $00 $20
    call Call_000_2F42                            ; $4833: $CD $42 $2F
    jp Jump_024_4927                              ; $4836: $C3 $27 $49


Jump_024_4839:
    call Call_000_2CAE                            ; $4839: $CD $AE $2C
    jp nc, Jump_024_487F                          ; $483C: $D2 $7F $48

    ld hl, $0413                                  ; $483F: $21 $13 $04
    ld a, $13                                     ; $4842: $3E $13
    call Call_000_34A2                            ; $4844: $CD $A2 $34
    ld hl, $0800                                  ; $4847: $21 $00 $08
    call Call_000_2FEB                            ; $484A: $CD $EB $2F
    ld hl, $0800                                  ; $484D: $21 $00 $08
    call Call_000_305D                            ; $4850: $CD $5D $30
    ld hl, $0099                                  ; $4853: $21 $99 $00
    add hl, bc                                    ; $4856: $09
    ld a, [hl]                                    ; $4857: $7E
    ld hl, $0004                                  ; $4858: $21 $04 $00
    add hl, de                                    ; $485B: $19
    ld [hl], a                                    ; $485C: $77
    ld hl, $009A                                  ; $485D: $21 $9A $00
    add hl, bc                                    ; $4860: $09
    ld a, [hl]                                    ; $4861: $7E
    ld hl, $0006                                  ; $4862: $21 $06 $00
    add hl, de                                    ; $4865: $19
    ld [hl], a                                    ; $4866: $77
    ld hl, $E000                                  ; $4867: $21 $00 $E0
    call Call_000_2F79                            ; $486A: $CD $79 $2F
    ld hl, $E000                                  ; $486D: $21 $00 $E0
    call Call_000_2F42                            ; $4870: $CD $42 $2F
    jp Jump_024_4927                              ; $4873: $C3 $27 $49


Jump_024_4876:
    call Call_000_2CAE                            ; $4876: $CD $AE $2C
    jp nc, Jump_024_487F                          ; $4879: $D2 $7F $48

    jp Jump_024_4927                              ; $487C: $C3 $27 $49


Jump_024_487F:
    ld hl, $0000                                  ; $487F: $21 $00 $00
    call Call_000_30FF                            ; $4882: $CD $FF $30
    jp nc, Jump_024_4927                          ; $4885: $D2 $27 $49

    jp Jump_024_4927                              ; $4888: $C3 $27 $49


Jump_024_488B:
    call Call_000_2CA2                            ; $488B: $CD $A2 $2C
    jr z, jr_024_48B4                             ; $488E: $28 $24

    ld hl, $0022                                  ; $4890: $21 $22 $00
    add hl, bc                                    ; $4893: $09
    res 7, [hl]                                   ; $4894: $CB $BE
    ld a, $18                                     ; $4896: $3E $18
    call Call_000_1360                            ; $4898: $CD $60 $13
    ld hl, $0099                                  ; $489B: $21 $99 $00
    add hl, bc                                    ; $489E: $09
    ld a, [hl]                                    ; $489F: $7E
    ld hl, $0004                                  ; $48A0: $21 $04 $00
    add hl, de                                    ; $48A3: $19
    ld [hl], a                                    ; $48A4: $77
    call Call_000_2637                            ; $48A5: $CD $37 $26
    ld hl, $0000                                  ; $48A8: $21 $00 $00
    call Call_000_2FEB                            ; $48AB: $CD $EB $2F
    ld hl, $0000                                  ; $48AE: $21 $00 $00
    call Call_000_305D                            ; $48B1: $CD $5D $30

jr_024_48B4:
    call Call_000_2CA9                            ; $48B4: $CD $A9 $2C
    jp nc, Jump_024_4927                          ; $48B7: $D2 $27 $49

    inc hl                                        ; $48BA: $23
    ld [hl], $28                                  ; $48BB: $36 $28
    ld hl, $0409                                  ; $48BD: $21 $09 $04
    ld a, $93                                     ; $48C0: $3E $93
    call Call_000_34C4                            ; $48C2: $CD $C4 $34
    jp Jump_024_4927                              ; $48C5: $C3 $27 $49


Jump_024_48C8:
    call Call_000_2CA2                            ; $48C8: $CD $A2 $2C
    jr z, jr_024_48D0                             ; $48CB: $28 $03

    call Call_024_49BB                            ; $48CD: $CD $BB $49

jr_024_48D0:
    call Call_000_2CA9                            ; $48D0: $CD $A9 $2C
    jp nc, Jump_024_4927                          ; $48D3: $D2 $27 $49

    inc hl                                        ; $48D6: $23
    ld [hl], $3C                                  ; $48D7: $36 $3C
    jp Jump_024_4927                              ; $48D9: $C3 $27 $49


Jump_024_48DC:
    call Call_000_2CA2                            ; $48DC: $CD $A2 $2C
    jr z, jr_024_48E4                             ; $48DF: $28 $03

    call Call_024_4A2E                            ; $48E1: $CD $2E $4A

jr_024_48E4:
    call Call_000_2CA9                            ; $48E4: $CD $A9 $2C
    jp nc, Jump_024_4927                          ; $48E7: $D2 $27 $49

    inc hl                                        ; $48EA: $23
    ld [hl], $3C                                  ; $48EB: $36 $3C
    jp Jump_024_4927                              ; $48ED: $C3 $27 $49


Jump_024_48F0:
    ld hl, $0080                                  ; $48F0: $21 $80 $00
    call Call_000_30B0                            ; $48F3: $CD $B0 $30
    call Call_000_2CA9                            ; $48F6: $CD $A9 $2C
    jp nc, Jump_024_4927                          ; $48F9: $D2 $27 $49

    call Call_000_2DB6                            ; $48FC: $CD $B6 $2D
    jr jr_024_492A                                ; $48FF: $18 $29

Jump_024_4901:
    call Call_000_326C                            ; $4901: $CD $6C $32
    jp nc, Jump_024_491C                          ; $4904: $D2 $1C $49

    jp nz, Jump_024_491C                          ; $4907: $C2 $1C $49

    ld hl, $0408                                  ; $490A: $21 $08 $04
    ld a, $13                                     ; $490D: $3E $13
    call Call_000_34B3                            ; $490F: $CD $B3 $34
    ld a, $10                                     ; $4912: $3E $10
    ld h, $0A                                     ; $4914: $26 $0A
    call Call_000_2D19                            ; $4916: $CD $19 $2D
    jp Jump_024_492A                              ; $4919: $C3 $2A $49


Jump_024_491C:
    call Call_000_2CA9                            ; $491C: $CD $A9 $2C
    jp nc, Jump_024_4927                          ; $491F: $D2 $27 $49

    call Call_000_2DB6                            ; $4922: $CD $B6 $2D
    jr jr_024_492A                                ; $4925: $18 $03

Jump_024_4927:
    call Call_000_2E25                            ; $4927: $CD $25 $2E

Jump_024_492A:
jr_024_492A:
    ret                                           ; $492A: $C9


Call_024_492B:
    ld a, $14                                     ; $492B: $3E $14
    call Call_000_1360                            ; $492D: $CD $60 $13
    push bc                                       ; $4930: $C5
    push de                                       ; $4931: $D5
    ld hl, $0030                                  ; $4932: $21 $30 $00
    add hl, bc                                    ; $4935: $09
    ld a, [hl]                                    ; $4936: $7E
    or a                                          ; $4937: $B7
    jr nz, jr_024_493D                            ; $4938: $20 $03

    xor a                                         ; $493A: $AF
    jr jr_024_493E                                ; $493B: $18 $01

jr_024_493D:
    scf                                           ; $493D: $37

jr_024_493E:
    ld hl, $0022                                  ; $493E: $21 $22 $00
    push af                                       ; $4941: $F5
    add hl, bc                                    ; $4942: $09
    pop af                                        ; $4943: $F1
    ld a, [hl]                                    ; $4944: $7E
    push af                                       ; $4945: $F5
    call Call_000_25D1                            ; $4946: $CD $D1 $25
    ld hl, $0021                                  ; $4949: $21 $21 $00
    add hl, de                                    ; $494C: $19
    ld [hl], $24                                  ; $494D: $36 $24
    inc hl                                        ; $494F: $23
    ld [hl], $A2                                  ; $4950: $36 $A2
    inc hl                                        ; $4952: $23
    ld [hl], $49                                  ; $4953: $36 $49
    ld hl, $0011                                  ; $4955: $21 $11 $00
    add hl, de                                    ; $4958: $19
    ld [hl], $02                                  ; $4959: $36 $02
    inc hl                                        ; $495B: $23
    ld [hl], $B0                                  ; $495C: $36 $B0
    inc hl                                        ; $495E: $23
    ld [hl], $63                                  ; $495F: $36 $63
    inc hl                                        ; $4961: $23
    ld [hl], $00                                  ; $4962: $36 $00
    ld hl, $001C                                  ; $4964: $21 $1C $00
    add hl, de                                    ; $4967: $19
    ld [hl], $00                                  ; $4968: $36 $00
    inc hl                                        ; $496A: $23
    ld [hl], $00                                  ; $496B: $36 $00
    ld hl, $0029                                  ; $496D: $21 $29 $00
    add hl, de                                    ; $4970: $19
    ld [hl], $00                                  ; $4971: $36 $00
    call Call_000_2614                            ; $4973: $CD $14 $26
    ld hl, $1800                                  ; $4976: $21 $00 $18
    call Call_000_2F79                            ; $4979: $CD $79 $2F
    ld hl, $F800                                  ; $497C: $21 $00 $F8
    call Call_000_2F42                            ; $497F: $CD $42 $2F
    pop af                                        ; $4982: $F1
    jr c, jr_024_4993                             ; $4983: $38 $0E

    bit 1, a                                      ; $4985: $CB $4F
    jr nz, jr_024_498E                            ; $4987: $20 $05

    ld hl, $0200                                  ; $4989: $21 $00 $02
    jr jr_024_4996                                ; $498C: $18 $08

jr_024_498E:
    ld hl, $0300                                  ; $498E: $21 $00 $03
    jr jr_024_4996                                ; $4991: $18 $03

jr_024_4993:
    ld hl, $0400                                  ; $4993: $21 $00 $04

jr_024_4996:
    call Call_000_2FEB                            ; $4996: $CD $EB $2F
    ld hl, $0000                                  ; $4999: $21 $00 $00
    call Call_000_305D                            ; $499C: $CD $5D $30
    pop de                                        ; $499F: $D1
    pop bc                                        ; $49A0: $C1
    ret                                           ; $49A1: $C9


    ld hl, $0000                                  ; $49A2: $21 $00 $00
    call Call_000_26F3                            ; $49A5: $CD $F3 $26
    jr c, jr_024_49B7                             ; $49A8: $38 $0D

    call Call_000_2E25                            ; $49AA: $CD $25 $2E
    ld hl, $0000                                  ; $49AD: $21 $00 $00
    call Call_000_315D                            ; $49B0: $CD $5D $31
    jp c, Jump_024_49B7                           ; $49B3: $DA $B7 $49

    ret                                           ; $49B6: $C9


Jump_024_49B7:
jr_024_49B7:
    call Call_000_27F5                            ; $49B7: $CD $F5 $27
    ret                                           ; $49BA: $C9


Call_024_49BB:
    push bc                                       ; $49BB: $C5
    push de                                       ; $49BC: $D5
    call Call_000_25D1                            ; $49BD: $CD $D1 $25
    ld hl, $0021                                  ; $49C0: $21 $21 $00
    add hl, de                                    ; $49C3: $19
    ld [hl], $24                                  ; $49C4: $36 $24
    inc hl                                        ; $49C6: $23
    ld [hl], $0B                                  ; $49C7: $36 $0B
    inc hl                                        ; $49C9: $23
    ld [hl], $4A                                  ; $49CA: $36 $4A
    ld hl, $0011                                  ; $49CC: $21 $11 $00
    add hl, de                                    ; $49CF: $19
    ld [hl], $02                                  ; $49D0: $36 $02
    inc hl                                        ; $49D2: $23
    ld [hl], $C4                                  ; $49D3: $36 $C4
    inc hl                                        ; $49D5: $23
    ld [hl], $63                                  ; $49D6: $36 $63
    inc hl                                        ; $49D8: $23
    ld [hl], $00                                  ; $49D9: $36 $00
    ld hl, $001C                                  ; $49DB: $21 $1C $00
    add hl, de                                    ; $49DE: $19
    ld [hl], $00                                  ; $49DF: $36 $00
    inc hl                                        ; $49E1: $23
    ld [hl], $00                                  ; $49E2: $36 $00
    ld hl, $0029                                  ; $49E4: $21 $29 $00
    add hl, de                                    ; $49E7: $19
    ld [hl], $00                                  ; $49E8: $36 $00
    inc hl                                        ; $49EA: $23
    ld [hl], $FF                                  ; $49EB: $36 $FF
    call Call_000_2614                            ; $49ED: $CD $14 $26
    ld hl, $0000                                  ; $49F0: $21 $00 $00
    call Call_000_2F79                            ; $49F3: $CD $79 $2F
    ld hl, $0000                                  ; $49F6: $21 $00 $00
    call Call_000_2F42                            ; $49F9: $CD $42 $2F
    ld hl, $0000                                  ; $49FC: $21 $00 $00
    call Call_000_2FEB                            ; $49FF: $CD $EB $2F
    ld hl, $0000                                  ; $4A02: $21 $00 $00
    call Call_000_305D                            ; $4A05: $CD $5D $30
    pop de                                        ; $4A08: $D1
    pop bc                                        ; $4A09: $C1
    ret                                           ; $4A0A: $C9


    ld hl, $003C                                  ; $4A0B: $21 $3C $00
    add hl, bc                                    ; $4A0E: $09
    ld a, [hl]                                    ; $4A0F: $7E
    cp $4C                                        ; $4A10: $FE $4C
    jp nz, Jump_024_4A2A                          ; $4A12: $C2 $2A $4A

    ld hl, $002A                                  ; $4A15: $21 $2A $00
    add hl, de                                    ; $4A18: $19
    dec [hl]                                      ; $4A19: $35
    jr z, jr_024_4A2A                             ; $4A1A: $28 $0E

    ld hl, $FF84                                  ; $4A1C: $21 $84 $FF
    add hl, de                                    ; $4A1F: $19
    ld a, [hl]                                    ; $4A20: $7E
    ld hl, $0004                                  ; $4A21: $21 $04 $00
    add hl, de                                    ; $4A24: $19
    ld [hl], a                                    ; $4A25: $77
    call Call_000_2E25                            ; $4A26: $CD $25 $2E
    ret                                           ; $4A29: $C9


Jump_024_4A2A:
jr_024_4A2A:
    call Call_000_27F5                            ; $4A2A: $CD $F5 $27
    ret                                           ; $4A2D: $C9


Call_024_4A2E:
    ld a, $14                                     ; $4A2E: $3E $14
    call Call_000_1360                            ; $4A30: $CD $60 $13
    push bc                                       ; $4A33: $C5
    push de                                       ; $4A34: $D5
    call Call_000_25D1                            ; $4A35: $CD $D1 $25
    ld hl, $0021                                  ; $4A38: $21 $21 $00
    add hl, de                                    ; $4A3B: $19
    ld [hl], $24                                  ; $4A3C: $36 $24
    inc hl                                        ; $4A3E: $23
    ld [hl], $83                                  ; $4A3F: $36 $83
    inc hl                                        ; $4A41: $23
    ld [hl], $4A                                  ; $4A42: $36 $4A
    ld hl, $0011                                  ; $4A44: $21 $11 $00
    add hl, de                                    ; $4A47: $19
    ld [hl], $02                                  ; $4A48: $36 $02
    inc hl                                        ; $4A4A: $23
    ld [hl], $CE                                  ; $4A4B: $36 $CE
    inc hl                                        ; $4A4D: $23
    ld [hl], $63                                  ; $4A4E: $36 $63
    inc hl                                        ; $4A50: $23
    ld [hl], $00                                  ; $4A51: $36 $00
    ld hl, $001C                                  ; $4A53: $21 $1C $00
    add hl, de                                    ; $4A56: $19
    ld [hl], $00                                  ; $4A57: $36 $00
    inc hl                                        ; $4A59: $23
    ld [hl], $00                                  ; $4A5A: $36 $00
    ld hl, $0029                                  ; $4A5C: $21 $29 $00
    add hl, de                                    ; $4A5F: $19
    ld [hl], $00                                  ; $4A60: $36 $00
    inc hl                                        ; $4A62: $23
    ld [hl], $14                                  ; $4A63: $36 $14
    call Call_000_2614                            ; $4A65: $CD $14 $26
    ld hl, $0000                                  ; $4A68: $21 $00 $00
    call Call_000_2F79                            ; $4A6B: $CD $79 $2F
    ld hl, $0000                                  ; $4A6E: $21 $00 $00
    call Call_000_2F42                            ; $4A71: $CD $42 $2F
    ld hl, $0000                                  ; $4A74: $21 $00 $00
    call Call_000_2FEB                            ; $4A77: $CD $EB $2F
    ld hl, $FC00                                  ; $4A7A: $21 $00 $FC
    call Call_000_305D                            ; $4A7D: $CD $5D $30
    pop de                                        ; $4A80: $D1
    pop bc                                        ; $4A81: $C1
    ret                                           ; $4A82: $C9


    ld hl, $002A                                  ; $4A83: $21 $2A $00
    add hl, de                                    ; $4A86: $19
    dec [hl]                                      ; $4A87: $35
    jr z, jr_024_4A97                             ; $4A88: $28 $0D

    call Call_000_2E25                            ; $4A8A: $CD $25 $2E
    ld hl, $FFC0                                  ; $4A8D: $21 $C0 $FF
    call Call_000_315D                            ; $4A90: $CD $5D $31
    jp c, Jump_024_4A97                           ; $4A93: $DA $97 $4A

    ret                                           ; $4A96: $C9


Jump_024_4A97:
jr_024_4A97:
    call Call_000_27F5                            ; $4A97: $CD $F5 $27
    ret                                           ; $4A9A: $C9


    call Call_000_31B6                            ; $4A9B: $CD $B6 $31
    jp c, Jump_024_4B7F                           ; $4A9E: $DA $7F $4B

    jp z, Jump_024_4ACB                           ; $4AA1: $CA $CB $4A

    call Call_000_3A2A                            ; $4AA4: $CD $2A $3A
    jp c, Jump_024_4B29                           ; $4AA7: $DA $29 $4B

    jp z, Jump_024_4B34                           ; $4AAA: $CA $34 $4B

    call Call_000_39D3                            ; $4AAD: $CD $D3 $39
    jp nc, Jump_024_4B7F                          ; $4AB0: $D2 $7F $4B

    jp z, Jump_024_4ABC                           ; $4AB3: $CA $BC $4A

    jp nz, Jump_024_4AC8                          ; $4AB6: $C2 $C8 $4A

    jp Jump_024_4B7F                              ; $4AB9: $C3 $7F $4B


Jump_024_4ABC:
    ld hl, $3AC2                                  ; $4ABC: $21 $C2 $3A
    call Call_000_2B78                            ; $4ABF: $CD $78 $2B
    jp c, Jump_024_4B4A                           ; $4AC2: $DA $4A $4B

    jp Jump_024_4B7F                              ; $4AC5: $C3 $7F $4B


Jump_024_4AC8:
    jp Jump_024_4B7F                              ; $4AC8: $C3 $7F $4B


Jump_024_4ACB:
    call Call_000_3A2A                            ; $4ACB: $CD $2A $3A
    jp c, Jump_024_4B55                           ; $4ACE: $DA $55 $4B

    jp z, Jump_024_4B66                           ; $4AD1: $CA $66 $4B

    call Call_000_39D3                            ; $4AD4: $CD $D3 $39
    jp nc, Jump_024_4B7F                          ; $4AD7: $D2 $7F $4B

    jp z, Jump_024_4AE3                           ; $4ADA: $CA $E3 $4A

    jp nz, Jump_024_4B0F                          ; $4ADD: $C2 $0F $4B

    jp Jump_024_4B7F                              ; $4AE0: $C3 $7F $4B


Jump_024_4AE3:
    call Call_000_3209                            ; $4AE3: $CD $09 $32
    jr c, jr_024_4AF1                             ; $4AE6: $38 $09

    ld hl, $3AD4                                  ; $4AE8: $21 $D4 $3A
    call Call_000_2B78                            ; $4AEB: $CD $78 $2B
    jp c, Jump_024_4B55                           ; $4AEE: $DA $55 $4B

jr_024_4AF1:
    ld hl, $3B14                                  ; $4AF1: $21 $14 $3B
    call Call_000_2B78                            ; $4AF4: $CD $78 $2B
    jp c, Jump_024_4B34                           ; $4AF7: $DA $34 $4B

    ld hl, $3B2A                                  ; $4AFA: $21 $2A $3B
    call Call_000_2B78                            ; $4AFD: $CD $78 $2B
    jp c, Jump_024_4B3F                           ; $4B00: $DA $3F $4B

    ld hl, $3AC2                                  ; $4B03: $21 $C2 $3A
    call Call_000_2B78                            ; $4B06: $CD $78 $2B
    jp c, Jump_024_4B29                           ; $4B09: $DA $29 $4B

    jp Jump_024_4B7F                              ; $4B0C: $C3 $7F $4B


Jump_024_4B0F:
    call Call_000_3209                            ; $4B0F: $CD $09 $32
    jp c, Jump_024_4B26                           ; $4B12: $DA $26 $4B

    cp $01                                        ; $4B15: $FE $01
    jr z, jr_024_4B26                             ; $4B17: $28 $0D

    cp $02                                        ; $4B19: $FE $02
    jr z, jr_024_4B1D                             ; $4B1B: $28 $00

jr_024_4B1D:
    ld hl, $3AE5                                  ; $4B1D: $21 $E5 $3A
    call Call_000_2B78                            ; $4B20: $CD $78 $2B
    jp c, Jump_024_4B66                           ; $4B23: $DA $66 $4B

Jump_024_4B26:
jr_024_4B26:
    jp Jump_024_4B7F                              ; $4B26: $C3 $7F $4B


Jump_024_4B29:
    call Call_000_2C23                            ; $4B29: $CD $23 $2C
    ld a, $40                                     ; $4B2C: $3E $40
    call Call_000_32E2                            ; $4B2E: $CD $E2 $32
    jp Jump_024_4B7D                              ; $4B31: $C3 $7D $4B


Jump_024_4B34:
    call Call_000_2C23                            ; $4B34: $CD $23 $2C
    ld a, $42                                     ; $4B37: $3E $42
    call Call_000_32E2                            ; $4B39: $CD $E2 $32
    jp Jump_024_4B7D                              ; $4B3C: $C3 $7D $4B


Jump_024_4B3F:
    call Call_000_2C23                            ; $4B3F: $CD $23 $2C
    ld a, $44                                     ; $4B42: $3E $44
    call Call_000_32E2                            ; $4B44: $CD $E2 $32
    jp Jump_024_4B7D                              ; $4B47: $C3 $7D $4B


Jump_024_4B4A:
    call Call_000_2C23                            ; $4B4A: $CD $23 $2C
    ld a, $46                                     ; $4B4D: $3E $46
    call Call_000_32E2                            ; $4B4F: $CD $E2 $32
    jp Jump_024_4B7D                              ; $4B52: $C3 $7D $4B


Jump_024_4B55:
    call Call_000_2C23                            ; $4B55: $CD $23 $2C
    ld a, $4A                                     ; $4B58: $3E $4A
    call Call_000_32E2                            ; $4B5A: $CD $E2 $32
    ld hl, $0021                                  ; $4B5D: $21 $21 $00
    add hl, bc                                    ; $4B60: $09
    set 7, [hl]                                   ; $4B61: $CB $FE
    jp Jump_024_4B7D                              ; $4B63: $C3 $7D $4B


Jump_024_4B66:
    call Call_000_2C23                            ; $4B66: $CD $23 $2C
    ld a, $26                                     ; $4B69: $3E $26
    call Call_000_32E2                            ; $4B6B: $CD $E2 $32
    ld hl, $0021                                  ; $4B6E: $21 $21 $00
    add hl, bc                                    ; $4B71: $09
    set 7, [hl]                                   ; $4B72: $CB $FE
    ld hl, $009C                                  ; $4B74: $21 $9C $00
    add hl, bc                                    ; $4B77: $09
    ld [hl], $01                                  ; $4B78: $36 $01
    jp Jump_024_4B7D                              ; $4B7A: $C3 $7D $4B


Jump_024_4B7D:
    scf                                           ; $4B7D: $37
    ret                                           ; $4B7E: $C9


Jump_024_4B7F:
    or a                                          ; $4B7F: $B7
    ret                                           ; $4B80: $C9


    call Call_000_2EE0                            ; $4B81: $CD $E0 $2E
    call Call_000_3517                            ; $4B84: $CD $17 $35
    jp c, Jump_024_4C93                           ; $4B87: $DA $93 $4C

    ld hl, $0018                                  ; $4B8A: $21 $18 $00
    add hl, de                                    ; $4B8D: $19
    ld a, [hl]                                    ; $4B8E: $7E
    cp $00                                        ; $4B8F: $FE $00
    jp z, Jump_024_4BAB                           ; $4B91: $CA $AB $4B

    cp $04                                        ; $4B94: $FE $04
    jp z, Jump_024_4BBF                           ; $4B96: $CA $BF $4B

    cp $08                                        ; $4B99: $FE $08
    jp z, Jump_024_4C09                           ; $4B9B: $CA $09 $4C

    cp $0C                                        ; $4B9E: $FE $0C
    jp z, Jump_024_4C52                           ; $4BA0: $CA $52 $4C

    cp $10                                        ; $4BA3: $FE $10
    jp z, Jump_024_4C85                           ; $4BA5: $CA $85 $4C

    jp Jump_024_4C90                              ; $4BA8: $C3 $90 $4C


Jump_024_4BAB:
    call Call_000_2CA9                            ; $4BAB: $CD $A9 $2C
    jp nc, Jump_024_4C90                          ; $4BAE: $D2 $90 $4C

    inc hl                                        ; $4BB1: $23
    ld [hl], $03                                  ; $4BB2: $36 $03
    ld hl, $0204                                  ; $4BB4: $21 $04 $02
    ld a, $11                                     ; $4BB7: $3E $11
    call Call_000_34B3                            ; $4BB9: $CD $B3 $34
    jp Jump_024_4C90                              ; $4BBC: $C3 $90 $4C


Jump_024_4BBF:
    call Call_000_2CA2                            ; $4BBF: $CD $A2 $2C
    jr z, jr_024_4BE6                             ; $4BC2: $28 $22

    ld a, $11                                     ; $4BC4: $3E $11
    call Call_000_1360                            ; $4BC6: $CD $60 $13
    call Call_000_32CC                            ; $4BC9: $CD $CC $32
    jr c, jr_024_4BE0                             ; $4BCC: $38 $12

    jr nz, jr_024_4BD8                            ; $4BCE: $20 $08

    ld hl, $0300                                  ; $4BD0: $21 $00 $03
    call Call_000_2FEB                            ; $4BD3: $CD $EB $2F
    jr jr_024_4BE6                                ; $4BD6: $18 $0E

jr_024_4BD8:
    ld hl, $0400                                  ; $4BD8: $21 $00 $04
    call Call_000_2FEB                            ; $4BDB: $CD $EB $2F
    jr jr_024_4BE6                                ; $4BDE: $18 $06

jr_024_4BE0:
    ld hl, $0500                                  ; $4BE0: $21 $00 $05
    call Call_000_2FEB                            ; $4BE3: $CD $EB $2F

jr_024_4BE6:
    call Call_024_4C67                            ; $4BE6: $CD $67 $4C
    ld hl, $0020                                  ; $4BE9: $21 $20 $00
    call Call_000_30B0                            ; $4BEC: $CD $B0 $30
    call Call_000_2CA9                            ; $4BEF: $CD $A9 $2C
    jp nc, Jump_024_4C90                          ; $4BF2: $D2 $90 $4C

    inc hl                                        ; $4BF5: $23
    ld [hl], $02                                  ; $4BF6: $36 $02
    call Call_000_32CC                            ; $4BF8: $CD $CC $32
    jp c, Jump_024_4C90                           ; $4BFB: $DA $90 $4C

    ld hl, $0203                                  ; $4BFE: $21 $03 $02
    ld a, $01                                     ; $4C01: $3E $01
    call Call_000_34B3                            ; $4C03: $CD $B3 $34
    jp Jump_024_4C90                              ; $4C06: $C3 $90 $4C


Jump_024_4C09:
    call Call_000_2CA2                            ; $4C09: $CD $A2 $2C
    jr z, jr_024_4C30                             ; $4C0C: $28 $22

    ld a, $11                                     ; $4C0E: $3E $11
    call Call_000_1360                            ; $4C10: $CD $60 $13
    call Call_000_32CC                            ; $4C13: $CD $CC $32
    jr c, jr_024_4C2A                             ; $4C16: $38 $12

    jr nz, jr_024_4C22                            ; $4C18: $20 $08

    ld hl, $0500                                  ; $4C1A: $21 $00 $05
    call Call_000_2FEB                            ; $4C1D: $CD $EB $2F
    jr jr_024_4C30                                ; $4C20: $18 $0E

jr_024_4C22:
    ld hl, $0600                                  ; $4C22: $21 $00 $06
    call Call_000_2FEB                            ; $4C25: $CD $EB $2F
    jr jr_024_4C30                                ; $4C28: $18 $06

jr_024_4C2A:
    ld hl, $0700                                  ; $4C2A: $21 $00 $07
    call Call_000_2FEB                            ; $4C2D: $CD $EB $2F

jr_024_4C30:
    call Call_024_4C67                            ; $4C30: $CD $67 $4C
    ld hl, $0000                                  ; $4C33: $21 $00 $00
    call Call_000_30B0                            ; $4C36: $CD $B0 $30
    call Call_000_2CA9                            ; $4C39: $CD $A9 $2C
    jp nc, Jump_024_4C90                          ; $4C3C: $D2 $90 $4C

    inc hl                                        ; $4C3F: $23
    ld [hl], $02                                  ; $4C40: $36 $02
    call Call_000_32CC                            ; $4C42: $CD $CC $32
    jr c, jr_024_4C90                             ; $4C45: $38 $49

    ld hl, $0308                                  ; $4C47: $21 $08 $03
    ld a, $01                                     ; $4C4A: $3E $01
    call Call_000_34B3                            ; $4C4C: $CD $B3 $34
    jp Jump_024_4C90                              ; $4C4F: $C3 $90 $4C


Jump_024_4C52:
    call Call_024_4C76                            ; $4C52: $CD $76 $4C
    ld hl, $0020                                  ; $4C55: $21 $20 $00
    call Call_000_30B0                            ; $4C58: $CD $B0 $30
    call Call_000_2CA9                            ; $4C5B: $CD $A9 $2C
    jp nc, Jump_024_4C90                          ; $4C5E: $D2 $90 $4C

    inc hl                                        ; $4C61: $23
    ld [hl], $14                                  ; $4C62: $36 $14
    jp Jump_024_4C90                              ; $4C64: $C3 $90 $4C


Call_024_4C67:
    call Call_000_32CC                            ; $4C67: $CD $CC $32
    jr c, jr_024_4C6D                             ; $4C6A: $38 $01

    ret                                           ; $4C6C: $C9


jr_024_4C6D:
    ld hl, $0204                                  ; $4C6D: $21 $04 $02
    ld a, $12                                     ; $4C70: $3E $12
    call Call_000_34A2                            ; $4C72: $CD $A2 $34
    ret                                           ; $4C75: $C9


Call_024_4C76:
    call Call_000_32CC                            ; $4C76: $CD $CC $32
    jr c, jr_024_4C7C                             ; $4C79: $38 $01

    ret                                           ; $4C7B: $C9


jr_024_4C7C:
    ld hl, $0208                                  ; $4C7C: $21 $08 $02
    ld a, $12                                     ; $4C7F: $3E $12
    call Call_000_34A2                            ; $4C81: $CD $A2 $34
    ret                                           ; $4C84: $C9


Jump_024_4C85:
    call Call_000_2CA9                            ; $4C85: $CD $A9 $2C
    jp nc, Jump_024_4C90                          ; $4C88: $D2 $90 $4C

    call Call_000_2DB6                            ; $4C8B: $CD $B6 $2D
    jr jr_024_4C93                                ; $4C8E: $18 $03

Jump_024_4C90:
jr_024_4C90:
    jp Jump_000_2E25                              ; $4C90: $C3 $25 $2E


Jump_024_4C93:
jr_024_4C93:
    ret                                           ; $4C93: $C9


    call Call_000_2EE0                            ; $4C94: $CD $E0 $2E
    call Call_000_3517                            ; $4C97: $CD $17 $35
    jp c, Jump_024_4DC3                           ; $4C9A: $DA $C3 $4D

    ld hl, $0018                                  ; $4C9D: $21 $18 $00
    add hl, de                                    ; $4CA0: $19
    ld a, [hl]                                    ; $4CA1: $7E
    cp $00                                        ; $4CA2: $FE $00
    jp z, Jump_024_4CC8                           ; $4CA4: $CA $C8 $4C

    cp $04                                        ; $4CA7: $FE $04
    jp z, Jump_024_4CDC                           ; $4CA9: $CA $DC $4C

    cp $08                                        ; $4CAC: $FE $08
    jp z, Jump_024_4D1A                           ; $4CAE: $CA $1A $4D

    cp $0C                                        ; $4CB1: $FE $0C
    jp z, Jump_024_4D73                           ; $4CB3: $CA $73 $4D

    cp $1C                                        ; $4CB6: $FE $1C
    jp z, Jump_024_4D82                           ; $4CB8: $CA $82 $4D

    cp $20                                        ; $4CBB: $FE $20
    jp z, Jump_024_4DA2                           ; $4CBD: $CA $A2 $4D

    cp $24                                        ; $4CC0: $FE $24
    jp z, Jump_024_4DB5                           ; $4CC2: $CA $B5 $4D

    jp Jump_024_4DA2                              ; $4CC5: $C3 $A2 $4D


Jump_024_4CC8:
    call Call_000_2CA9                            ; $4CC8: $CD $A9 $2C
    jp nc, Jump_024_4DC0                          ; $4CCB: $D2 $C0 $4D

    inc hl                                        ; $4CCE: $23
    ld [hl], $FF                                  ; $4CCF: $36 $FF
    ld hl, $0308                                  ; $4CD1: $21 $08 $03
    ld a, $11                                     ; $4CD4: $3E $11
    call Call_000_34B3                            ; $4CD6: $CD $B3 $34
    jp Jump_024_4DC0                              ; $4CD9: $C3 $C0 $4D


Jump_024_4CDC:
    call Call_000_2CA2                            ; $4CDC: $CD $A2 $2C
    jr z, jr_024_4CF5                             ; $4CDF: $28 $14

    ld a, $12                                     ; $4CE1: $3E $12
    call Call_000_1360                            ; $4CE3: $CD $60 $13
    ld hl, $0200                                  ; $4CE6: $21 $00 $02
    call Call_000_2FEB                            ; $4CE9: $CD $EB $2F
    ld hl, $FE00                                  ; $4CEC: $21 $00 $FE
    call Call_000_305D                            ; $4CEF: $CD $5D $30
    jp Jump_024_4D9D                              ; $4CF2: $C3 $9D $4D


jr_024_4CF5:
    ld a, $FA                                     ; $4CF5: $3E $FA
    ld h, $03                                     ; $4CF7: $26 $03
    call Call_000_2D33                            ; $4CF9: $CD $33 $2D
    jp nc, Jump_024_4D9D                          ; $4CFC: $D2 $9D $4D

    call Call_000_32CC                            ; $4CFF: $CD $CC $32
    jr c, jr_024_4D0F                             ; $4D02: $38 $0B

    ld hl, $0308                                  ; $4D04: $21 $08 $03
    ld a, $11                                     ; $4D07: $3E $11
    call Call_000_34B3                            ; $4D09: $CD $B3 $34
    jp Jump_024_4D9D                              ; $4D0C: $C3 $9D $4D


jr_024_4D0F:
    ld hl, $0108                                  ; $4D0F: $21 $08 $01
    ld a, $12                                     ; $4D12: $3E $12
    call Call_000_34B3                            ; $4D14: $CD $B3 $34
    jp Jump_024_4D9D                              ; $4D17: $C3 $9D $4D


Jump_024_4D1A:
    call Call_000_2CA2                            ; $4D1A: $CD $A2 $2C
    jr z, jr_024_4D56                             ; $4D1D: $28 $37

    call Call_000_32CC                            ; $4D1F: $CD $CC $32
    jr c, jr_024_4D42                             ; $4D22: $38 $1E

    jr nz, jr_024_4D34                            ; $4D24: $20 $0E

    ld hl, $0400                                  ; $4D26: $21 $00 $04
    call Call_000_2FEB                            ; $4D29: $CD $EB $2F
    ld hl, $FC00                                  ; $4D2C: $21 $00 $FC
    call Call_000_305D                            ; $4D2F: $CD $5D $30
    jr jr_024_4D56                                ; $4D32: $18 $22

jr_024_4D34:
    ld hl, $0500                                  ; $4D34: $21 $00 $05
    call Call_000_2FEB                            ; $4D37: $CD $EB $2F
    ld hl, $FB00                                  ; $4D3A: $21 $00 $FB
    call Call_000_305D                            ; $4D3D: $CD $5D $30
    jr jr_024_4D56                                ; $4D40: $18 $14

jr_024_4D42:
    ld hl, $0600                                  ; $4D42: $21 $00 $06
    call Call_000_2FEB                            ; $4D45: $CD $EB $2F
    ld hl, $FA00                                  ; $4D48: $21 $00 $FA
    call Call_000_305D                            ; $4D4B: $CD $5D $30
    ld hl, $0108                                  ; $4D4E: $21 $08 $01
    ld a, $12                                     ; $4D51: $3E $12
    call Call_000_34A2                            ; $4D53: $CD $A2 $34

jr_024_4D56:
    call Call_024_4D8E                            ; $4D56: $CD $8E $4D
    ld a, $FC                                     ; $4D59: $3E $FC
    ld h, $03                                     ; $4D5B: $26 $03
    call Call_000_2D33                            ; $4D5D: $CD $33 $2D
    jp nc, Jump_024_4D9D                          ; $4D60: $D2 $9D $4D

    call Call_000_32CC                            ; $4D63: $CD $CC $32
    jr c, jr_024_4D9D                             ; $4D66: $38 $35

    ld hl, $0308                                  ; $4D68: $21 $08 $03
    ld a, $01                                     ; $4D6B: $3E $01
    call Call_000_34B3                            ; $4D6D: $CD $B3 $34
    jp Jump_024_4D9D                              ; $4D70: $C3 $9D $4D


Jump_024_4D73:
    call Call_024_4D8E                            ; $4D73: $CD $8E $4D
    call Call_000_2CA9                            ; $4D76: $CD $A9 $2C
    jp nc, Jump_024_4D9D                          ; $4D79: $D2 $9D $4D

    inc hl                                        ; $4D7C: $23
    ld [hl], $00                                  ; $4D7D: $36 $00
    jp Jump_024_4DA2                              ; $4D7F: $C3 $A2 $4D


Jump_024_4D82:
    call Call_000_2CA9                            ; $4D82: $CD $A9 $2C
    jp nc, Jump_024_4DA2                          ; $4D85: $D2 $A2 $4D

    inc hl                                        ; $4D88: $23
    ld [hl], $FF                                  ; $4D89: $36 $FF
    jp Jump_024_4DA2                              ; $4D8B: $C3 $A2 $4D


Call_024_4D8E:
    call Call_000_32CC                            ; $4D8E: $CD $CC $32
    jr c, jr_024_4D94                             ; $4D91: $38 $01

    ret                                           ; $4D93: $C9


jr_024_4D94:
    ld hl, $0108                                  ; $4D94: $21 $08 $01
    ld a, $12                                     ; $4D97: $3E $12
    call Call_000_34A2                            ; $4D99: $CD $A2 $34
    ret                                           ; $4D9C: $C9


Jump_024_4D9D:
jr_024_4D9D:
    ld hl, $0020                                  ; $4D9D: $21 $20 $00
    jr jr_024_4DA5                                ; $4DA0: $18 $03

Jump_024_4DA2:
    ld hl, $0060                                  ; $4DA2: $21 $60 $00

jr_024_4DA5:
    call Call_000_30FF                            ; $4DA5: $CD $FF $30
    jp nc, Jump_024_4DC0                          ; $4DA8: $D2 $C0 $4D

    ld a, $24                                     ; $4DAB: $3E $24
    ld h, $0A                                     ; $4DAD: $26 $0A
    call Call_000_2CBA                            ; $4DAF: $CD $BA $2C
    jp Jump_024_4DC3                              ; $4DB2: $C3 $C3 $4D


Jump_024_4DB5:
    call Call_000_2CA9                            ; $4DB5: $CD $A9 $2C
    jp nc, Jump_024_4DC0                          ; $4DB8: $D2 $C0 $4D

    call Call_000_2DB6                            ; $4DBB: $CD $B6 $2D
    jr jr_024_4DC3                                ; $4DBE: $18 $03

Jump_024_4DC0:
    call Call_000_2E25                            ; $4DC0: $CD $25 $2E

Jump_024_4DC3:
jr_024_4DC3:
    ret                                           ; $4DC3: $C9


    call Call_000_2EE0                            ; $4DC4: $CD $E0 $2E
    call Call_000_3517                            ; $4DC7: $CD $17 $35
    jp c, Jump_024_4EE7                           ; $4DCA: $DA $E7 $4E

    ld hl, $0018                                  ; $4DCD: $21 $18 $00
    add hl, de                                    ; $4DD0: $19
    ld a, [hl]                                    ; $4DD1: $7E
    cp $00                                        ; $4DD2: $FE $00
    jp z, Jump_024_4DF3                           ; $4DD4: $CA $F3 $4D

    cp $04                                        ; $4DD7: $FE $04
    jp z, Jump_024_4E19                           ; $4DD9: $CA $19 $4E

    cp $08                                        ; $4DDC: $FE $08
    jp z, Jump_024_4E61                           ; $4DDE: $CA $61 $4E

    cp $0C                                        ; $4DE1: $FE $0C
    jp z, Jump_024_4E9D                           ; $4DE3: $CA $9D $4E

    cp $10                                        ; $4DE6: $FE $10
    jp z, Jump_024_4EAF                           ; $4DE8: $CA $AF $4E

    cp $14                                        ; $4DEB: $FE $14
    jp z, Jump_024_4EBE                           ; $4DED: $CA $BE $4E

    jp Jump_024_4EE4                              ; $4DF0: $C3 $E4 $4E


Jump_024_4DF3:
    call Call_000_2CA9                            ; $4DF3: $CD $A9 $2C
    jp nc, Jump_024_4EE4                          ; $4DF6: $D2 $E4 $4E

    inc hl                                        ; $4DF9: $23
    push hl                                       ; $4DFA: $E5
    call Call_000_32CC                            ; $4DFB: $CD $CC $32
    jr c, jr_024_4E0A                             ; $4DFE: $38 $0A

    jr nz, jr_024_4E06                            ; $4E00: $20 $04

    ld a, $09                                     ; $4E02: $3E $09
    jr jr_024_4E0C                                ; $4E04: $18 $06

jr_024_4E06:
    ld a, $0C                                     ; $4E06: $3E $0C
    jr jr_024_4E0C                                ; $4E08: $18 $02

jr_024_4E0A:
    ld a, $0F                                     ; $4E0A: $3E $0F

jr_024_4E0C:
    pop hl                                        ; $4E0C: $E1
    ld [hl], a                                    ; $4E0D: $77
    ld hl, $010C                                  ; $4E0E: $21 $0C $01
    ld a, $80                                     ; $4E11: $3E $80
    call Call_000_34B3                            ; $4E13: $CD $B3 $34
    jp Jump_024_4EE4                              ; $4E16: $C3 $E4 $4E


Jump_024_4E19:
    call Call_000_2CA2                            ; $4E19: $CD $A2 $2C
    jr z, jr_024_4E2C                             ; $4E1C: $28 $0E

    ld a, $11                                     ; $4E1E: $3E $11
    call Call_000_1360                            ; $4E20: $CD $60 $13
    ld hl, $0400                                  ; $4E23: $21 $00 $04
    call Call_000_2FEB                            ; $4E26: $CD $EB $2F
    jp Jump_024_4EA9                              ; $4E29: $C3 $A9 $4E


jr_024_4E2C:
    call Call_000_3262                            ; $4E2C: $CD $62 $32
    jp nc, Jump_024_4E47                          ; $4E2F: $D2 $47 $4E

    jp nz, Jump_024_4E57                          ; $4E32: $C2 $57 $4E

    ld a, $08                                     ; $4E35: $3E $08
    ld h, $05                                     ; $4E37: $26 $05
    call Call_000_2D19                            ; $4E39: $CD $19 $2D
    ld hl, $010D                                  ; $4E3C: $21 $0D $01
    ld a, $80                                     ; $4E3F: $3E $80
    call Call_000_34B3                            ; $4E41: $CD $B3 $34
    jp Jump_024_4EE7                              ; $4E44: $C3 $E7 $4E


Jump_024_4E47:
    call Call_000_2CA9                            ; $4E47: $CD $A9 $2C
    jp nc, Jump_024_4EA9                          ; $4E4A: $D2 $A9 $4E

    ld a, $14                                     ; $4E4D: $3E $14
    ld h, $14                                     ; $4E4F: $26 $14
    call Call_000_2D19                            ; $4E51: $CD $19 $2D
    jp Jump_024_4EA9                              ; $4E54: $C3 $A9 $4E


Jump_024_4E57:
    ld a, $14                                     ; $4E57: $3E $14
    ld h, $14                                     ; $4E59: $26 $14
    call Call_000_2D19                            ; $4E5B: $CD $19 $2D
    jp Jump_024_4EA9                              ; $4E5E: $C3 $A9 $4E


Jump_024_4E61:
    call Call_000_2CA9                            ; $4E61: $CD $A9 $2C
    jp nc, Jump_024_4EE4                          ; $4E64: $D2 $E4 $4E

    inc hl                                        ; $4E67: $23
    ld [hl], $0A                                  ; $4E68: $36 $0A
    ld a, $03                                     ; $4E6A: $3E $03
    ld [$C2E2], a                                 ; $4E6C: $EA $E2 $C2
    ld hl, $0021                                  ; $4E6F: $21 $21 $00
    add hl, bc                                    ; $4E72: $09
    set 7, [hl]                                   ; $4E73: $CB $FE
    call Call_000_32CC                            ; $4E75: $CD $CC $32
    jr c, jr_024_4E92                             ; $4E78: $38 $18

    jr nz, jr_024_4E87                            ; $4E7A: $20 $0B

    ld hl, $0416                                  ; $4E7C: $21 $16 $04
    ld a, $81                                     ; $4E7F: $3E $81
    call Call_000_34B3                            ; $4E81: $CD $B3 $34
    jp Jump_024_4EE4                              ; $4E84: $C3 $E4 $4E


jr_024_4E87:
    ld hl, $0516                                  ; $4E87: $21 $16 $05
    ld a, $81                                     ; $4E8A: $3E $81
    call Call_000_34B3                            ; $4E8C: $CD $B3 $34
    jp Jump_024_4EE4                              ; $4E8F: $C3 $E4 $4E


jr_024_4E92:
    ld hl, $0616                                  ; $4E92: $21 $16 $06
    ld a, $81                                     ; $4E95: $3E $81
    call Call_000_34B3                            ; $4E97: $CD $B3 $34
    jp Jump_024_4EE4                              ; $4E9A: $C3 $E4 $4E


Jump_024_4E9D:
    call Call_000_2CA9                            ; $4E9D: $CD $A9 $2C
    jp nc, Jump_024_4EE4                          ; $4EA0: $D2 $E4 $4E

    inc hl                                        ; $4EA3: $23
    ld [hl], $28                                  ; $4EA4: $36 $28
    jp Jump_024_4EE4                              ; $4EA6: $C3 $E4 $4E


Jump_024_4EA9:
    call Call_000_3069                            ; $4EA9: $CD $69 $30
    jp Jump_024_4EE4                              ; $4EAC: $C3 $E4 $4E


Jump_024_4EAF:
    call Call_000_2CA9                            ; $4EAF: $CD $A9 $2C
    jp nc, Jump_024_4EE4                          ; $4EB2: $D2 $E4 $4E

    call Call_000_2DB6                            ; $4EB5: $CD $B6 $2D
    xor a                                         ; $4EB8: $AF
    ld [$C2E2], a                                 ; $4EB9: $EA $E2 $C2
    jr jr_024_4EE7                                ; $4EBC: $18 $29

Jump_024_4EBE:
    call Call_000_326C                            ; $4EBE: $CD $6C $32
    jp nc, Jump_024_4ED9                          ; $4EC1: $D2 $D9 $4E

    jp nz, Jump_024_4ED9                          ; $4EC4: $C2 $D9 $4E

    ld a, $08                                     ; $4EC7: $3E $08
    ld h, $05                                     ; $4EC9: $26 $05
    call Call_000_2D19                            ; $4ECB: $CD $19 $2D
    ld hl, $010D                                  ; $4ECE: $21 $0D $01
    ld a, $80                                     ; $4ED1: $3E $80
    call Call_000_34B3                            ; $4ED3: $CD $B3 $34
    jp Jump_024_4EE7                              ; $4ED6: $C3 $E7 $4E


Jump_024_4ED9:
    call Call_000_2CA9                            ; $4ED9: $CD $A9 $2C
    jp nc, Jump_024_4EE4                          ; $4EDC: $D2 $E4 $4E

    call Call_000_2DB6                            ; $4EDF: $CD $B6 $2D
    jr jr_024_4EE7                                ; $4EE2: $18 $03

Jump_024_4EE4:
    call Call_000_2E25                            ; $4EE4: $CD $25 $2E

Jump_024_4EE7:
jr_024_4EE7:
    ret                                           ; $4EE7: $C9


    call Call_000_2EE0                            ; $4EE8: $CD $E0 $2E
    call Call_000_3517                            ; $4EEB: $CD $17 $35
    jp c, Jump_024_4FA3                           ; $4EEE: $DA $A3 $4F

    ld hl, $0018                                  ; $4EF1: $21 $18 $00
    add hl, de                                    ; $4EF4: $19
    ld a, [hl]                                    ; $4EF5: $7E
    cp $00                                        ; $4EF6: $FE $00
    jp z, Jump_024_4F0D                           ; $4EF8: $CA $0D $4F

    cp $04                                        ; $4EFB: $FE $04
    jp z, Jump_024_4F19                           ; $4EFD: $CA $19 $4F

    cp $08                                        ; $4F00: $FE $08
    jp z, Jump_024_4F6B                           ; $4F02: $CA $6B $4F

    cp $0C                                        ; $4F05: $FE $0C
    jp z, Jump_024_4F95                           ; $4F07: $CA $95 $4F

    jp Jump_024_4FA0                              ; $4F0A: $C3 $A0 $4F


Jump_024_4F0D:
    call Call_000_2CA9                            ; $4F0D: $CD $A9 $2C
    jp nc, Jump_024_4FA0                          ; $4F10: $D2 $A0 $4F

    inc hl                                        ; $4F13: $23
    ld [hl], $01                                  ; $4F14: $36 $01
    jp Jump_024_4FA0                              ; $4F16: $C3 $A0 $4F


Jump_024_4F19:
    call Call_000_2CA2                            ; $4F19: $CD $A2 $2C
    jr z, jr_024_4F54                             ; $4F1C: $28 $36

    ld a, $12                                     ; $4F1E: $3E $12
    call Call_000_1360                            ; $4F20: $CD $60 $13
    call Call_000_32CC                            ; $4F23: $CD $CC $32
    jr c, jr_024_4F46                             ; $4F26: $38 $1E

    jr nz, jr_024_4F38                            ; $4F28: $20 $0E

    ld hl, $0300                                  ; $4F2A: $21 $00 $03
    call Call_000_2FEB                            ; $4F2D: $CD $EB $2F
    ld hl, $0300                                  ; $4F30: $21 $00 $03
    call Call_000_305D                            ; $4F33: $CD $5D $30
    jr jr_024_4F54                                ; $4F36: $18 $1C

jr_024_4F38:
    ld hl, $0400                                  ; $4F38: $21 $00 $04
    call Call_000_2FEB                            ; $4F3B: $CD $EB $2F
    ld hl, $0400                                  ; $4F3E: $21 $00 $04
    call Call_000_305D                            ; $4F41: $CD $5D $30
    jr jr_024_4F54                                ; $4F44: $18 $0E

jr_024_4F46:
    ld hl, $0500                                  ; $4F46: $21 $00 $05
    call Call_000_2FEB                            ; $4F49: $CD $EB $2F
    ld hl, $0500                                  ; $4F4C: $21 $00 $05
    call Call_000_305D                            ; $4F4F: $CD $5D $30
    jr jr_024_4F54                                ; $4F52: $18 $00

jr_024_4F54:
    call Call_024_4F71                            ; $4F54: $CD $71 $4F
    call Call_000_2CA9                            ; $4F57: $CD $A9 $2C
    jp nc, Jump_024_4F82                          ; $4F5A: $D2 $82 $4F

    inc hl                                        ; $4F5D: $23
    ld [hl], $FF                                  ; $4F5E: $36 $FF
    ld hl, $0208                                  ; $4F60: $21 $08 $02
    ld a, $92                                     ; $4F63: $3E $92
    call Call_000_34B3                            ; $4F65: $CD $B3 $34
    jp Jump_024_4F82                              ; $4F68: $C3 $82 $4F


Jump_024_4F6B:
    call Call_024_4F71                            ; $4F6B: $CD $71 $4F
    jp Jump_024_4F82                              ; $4F6E: $C3 $82 $4F


Call_024_4F71:
    call Call_000_32CC                            ; $4F71: $CD $CC $32
    jr c, jr_024_4F79                             ; $4F74: $38 $03

    jr nz, jr_024_4F78                            ; $4F76: $20 $00

jr_024_4F78:
    ret                                           ; $4F78: $C9


jr_024_4F79:
    ld hl, $010F                                  ; $4F79: $21 $0F $01
    ld a, $92                                     ; $4F7C: $3E $92
    call Call_000_34A2                            ; $4F7E: $CD $A2 $34
    ret                                           ; $4F81: $C9


Jump_024_4F82:
    ld hl, $0000                                  ; $4F82: $21 $00 $00
    call Call_000_30FF                            ; $4F85: $CD $FF $30
    jp nc, Jump_024_4FA0                          ; $4F88: $D2 $A0 $4F

    ld a, $0C                                     ; $4F8B: $3E $0C
    ld h, $0A                                     ; $4F8D: $26 $0A
    call Call_000_2CBA                            ; $4F8F: $CD $BA $2C
    jp Jump_024_4FA3                              ; $4F92: $C3 $A3 $4F


Jump_024_4F95:
    call Call_000_2CA9                            ; $4F95: $CD $A9 $2C
    jp nc, Jump_024_4FA0                          ; $4F98: $D2 $A0 $4F

    call Call_000_2DB6                            ; $4F9B: $CD $B6 $2D
    jr jr_024_4FA3                                ; $4F9E: $18 $03

Jump_024_4FA0:
    jp Jump_000_2E25                              ; $4FA0: $C3 $25 $2E


Jump_024_4FA3:
jr_024_4FA3:
    ret                                           ; $4FA3: $C9


    call Call_000_2EE0                            ; $4FA4: $CD $E0 $2E
    call Call_000_3517                            ; $4FA7: $CD $17 $35
    jp c, Jump_024_5160                           ; $4FAA: $DA $60 $51

    ld hl, $0018                                  ; $4FAD: $21 $18 $00
    add hl, de                                    ; $4FB0: $19
    ld a, [hl]                                    ; $4FB1: $7E
    cp $00                                        ; $4FB2: $FE $00
    jp z, Jump_024_4FFB                           ; $4FB4: $CA $FB $4F

    cp $04                                        ; $4FB7: $FE $04
    jp z, Jump_024_501B                           ; $4FB9: $CA $1B $50

    cp $08                                        ; $4FBC: $FE $08
    jp z, Jump_024_5069                           ; $4FBE: $CA $69 $50

    cp $0C                                        ; $4FC1: $FE $0C
    jp z, Jump_024_5088                           ; $4FC3: $CA $88 $50

    cp $10                                        ; $4FC6: $FE $10
    jp z, Jump_024_5088                           ; $4FC8: $CA $88 $50

    cp $14                                        ; $4FCB: $FE $14
    jp z, Jump_024_5088                           ; $4FCD: $CA $88 $50

    cp $18                                        ; $4FD0: $FE $18
    jp z, Jump_024_508B                           ; $4FD2: $CA $8B $50

    cp $1C                                        ; $4FD5: $FE $1C
    jp z, Jump_024_50B2                           ; $4FD7: $CA $B2 $50

    cp $20                                        ; $4FDA: $FE $20
    jp z, Jump_024_50C4                           ; $4FDC: $CA $C4 $50

    cp $24                                        ; $4FDF: $FE $24
    jp z, Jump_024_50D0                           ; $4FE1: $CA $D0 $50

    cp $28                                        ; $4FE4: $FE $28
    jp z, Jump_024_50DC                           ; $4FE6: $CA $DC $50

    cp $2C                                        ; $4FE9: $FE $2C
    jp z, Jump_024_510E                           ; $4FEB: $CA $0E $51

    cp $30                                        ; $4FEE: $FE $30
    jp z, Jump_024_512C                           ; $4FF0: $CA $2C $51

    cp $34                                        ; $4FF3: $FE $34
    jp z, Jump_024_5137                           ; $4FF5: $CA $37 $51

    jp Jump_024_515D                              ; $4FF8: $C3 $5D $51


Jump_024_4FFB:
    call Call_000_2CA2                            ; $4FFB: $CD $A2 $2C
    jp z, Jump_024_5007                           ; $4FFE: $CA $07 $50

    ld hl, $0031                                  ; $5001: $21 $31 $00
    add hl, bc                                    ; $5004: $09
    ld [hl], $01                                  ; $5005: $36 $01

Jump_024_5007:
    call Call_000_2CA9                            ; $5007: $CD $A9 $2C
    jp nc, Jump_024_515D                          ; $500A: $D2 $5D $51

    inc hl                                        ; $500D: $23
    ld [hl], $0A                                  ; $500E: $36 $0A
    ld hl, $010C                                  ; $5010: $21 $0C $01
    ld a, $90                                     ; $5013: $3E $90
    call Call_000_34B3                            ; $5015: $CD $B3 $34
    jp Jump_024_515D                              ; $5018: $C3 $5D $51


Jump_024_501B:
    call Call_000_2CA2                            ; $501B: $CD $A2 $2C
    jr z, jr_024_5034                             ; $501E: $28 $14

    ld a, $11                                     ; $5020: $3E $11
    call Call_000_1360                            ; $5022: $CD $60 $13
    ld hl, $0700                                  ; $5025: $21 $00 $07
    call Call_000_2FEB                            ; $5028: $CD $EB $2F
    ld hl, $0021                                  ; $502B: $21 $21 $00
    add hl, bc                                    ; $502E: $09
    res 7, [hl]                                   ; $502F: $CB $BE
    jp Jump_024_5126                              ; $5031: $C3 $26 $51


jr_024_5034:
    call Call_000_3262                            ; $5034: $CD $62 $32
    jp nc, Jump_024_504F                          ; $5037: $D2 $4F $50

    jp nz, Jump_024_505F                          ; $503A: $C2 $5F $50

    ld a, $08                                     ; $503D: $3E $08
    ld h, $01                                     ; $503F: $26 $01
    call Call_000_2D19                            ; $5041: $CD $19 $2D
    ld hl, $0112                                  ; $5044: $21 $12 $01
    ld a, $90                                     ; $5047: $3E $90
    call Call_000_34B3                            ; $5049: $CD $B3 $34
    jp Jump_024_5160                              ; $504C: $C3 $60 $51


Jump_024_504F:
    call Call_000_2CA9                            ; $504F: $CD $A9 $2C
    jp nc, Jump_024_5126                          ; $5052: $D2 $26 $51

    ld a, $34                                     ; $5055: $3E $34
    ld h, $1E                                     ; $5057: $26 $1E
    call Call_000_2D19                            ; $5059: $CD $19 $2D
    jp Jump_024_5126                              ; $505C: $C3 $26 $51


Jump_024_505F:
    ld a, $34                                     ; $505F: $3E $34
    ld h, $1E                                     ; $5061: $26 $1E
    call Call_000_2D19                            ; $5063: $CD $19 $2D
    jp Jump_024_5126                              ; $5066: $C3 $26 $51


Jump_024_5069:
    call Call_000_2CA2                            ; $5069: $CD $A2 $2C
    jr z, jr_024_5088                             ; $506C: $28 $1A

    ld a, $12                                     ; $506E: $3E $12
    call Call_000_1360                            ; $5070: $CD $60 $13
    ld hl, $0021                                  ; $5073: $21 $21 $00
    add hl, bc                                    ; $5076: $09
    set 7, [hl]                                   ; $5077: $CB $FE
    inc hl                                        ; $5079: $23
    set 7, [hl]                                   ; $507A: $CB $FE
    ld hl, $F600                                  ; $507C: $21 $00 $F6
    call Call_000_2FEB                            ; $507F: $CD $EB $2F
    ld hl, $FB00                                  ; $5082: $21 $00 $FB
    call Call_000_305D                            ; $5085: $CD $5D $30

Jump_024_5088:
jr_024_5088:
    jp Jump_024_509F                              ; $5088: $C3 $9F $50


Jump_024_508B:
    call Call_000_2CA9                            ; $508B: $CD $A9 $2C
    jp nc, Jump_024_509F                          ; $508E: $D2 $9F $50

    ld a, $12                                     ; $5091: $3E $12
    call Call_000_1360                            ; $5093: $CD $60 $13
    ld hl, $0014                                  ; $5096: $21 $14 $00
    add hl, de                                    ; $5099: $19
    ld [hl], $08                                  ; $509A: $36 $08
    jp Jump_024_509F                              ; $509C: $C3 $9F $50


Jump_024_509F:
    ld hl, $0060                                  ; $509F: $21 $60 $00
    call Call_000_30FF                            ; $50A2: $CD $FF $30
    jp nc, Jump_024_515D                          ; $50A5: $D2 $5D $51

    ld a, $1C                                     ; $50A8: $3E $1C
    ld h, $02                                     ; $50AA: $26 $02
    call Call_000_2CBA                            ; $50AC: $CD $BA $2C
    jp Jump_024_5160                              ; $50AF: $C3 $60 $51


Jump_024_50B2:
    call Call_000_2CA9                            ; $50B2: $CD $A9 $2C
    jp nc, Jump_024_515D                          ; $50B5: $D2 $5D $51

    inc hl                                        ; $50B8: $23
    ld [hl], $06                                  ; $50B9: $36 $06
    ld hl, $0022                                  ; $50BB: $21 $22 $00
    add hl, bc                                    ; $50BE: $09
    res 7, [hl]                                   ; $50BF: $CB $BE
    jp Jump_024_515D                              ; $50C1: $C3 $5D $51


Jump_024_50C4:
    call Call_000_2CA9                            ; $50C4: $CD $A9 $2C
    jp nc, Jump_024_515D                          ; $50C7: $D2 $5D $51

    inc hl                                        ; $50CA: $23
    ld [hl], $06                                  ; $50CB: $36 $06
    jp Jump_024_515D                              ; $50CD: $C3 $5D $51


Jump_024_50D0:
    call Call_000_2CA9                            ; $50D0: $CD $A9 $2C
    jp nc, Jump_024_515D                          ; $50D3: $D2 $5D $51

    inc hl                                        ; $50D6: $23
    ld [hl], $10                                  ; $50D7: $36 $10
    jp Jump_024_515D                              ; $50D9: $C3 $5D $51


Jump_024_50DC:
    ld hl, HeaderLogo                             ; $50DC: $21 $04 $01
    ld a, $9F                                     ; $50DF: $3E $9F
    call Call_000_34A2                            ; $50E1: $CD $A2 $34
    ld a, $05                                     ; $50E4: $3E $05
    call Call_000_3963                            ; $50E6: $CD $63 $39
    call Call_000_2CA2                            ; $50E9: $CD $A2 $2C
    jp z, Jump_024_50F5                           ; $50EC: $CA $F5 $50

    ld hl, $0034                                  ; $50EF: $21 $34 $00
    add hl, bc                                    ; $50F2: $09
    ld [hl], $01                                  ; $50F3: $36 $01

Jump_024_50F5:
    call Call_000_2CA9                            ; $50F5: $CD $A9 $2C
    jp nc, Jump_024_515D                          ; $50F8: $D2 $5D $51

    inc hl                                        ; $50FB: $23
    ld [hl], $0A                                  ; $50FC: $36 $0A
    ld hl, $0A08                                  ; $50FE: $21 $08 $0A
    ld a, $8F                                     ; $5101: $3E $8F
    call Call_000_34A2                            ; $5103: $CD $A2 $34
    ld a, $07                                     ; $5106: $3E $07
    call Call_000_3963                            ; $5108: $CD $63 $39
    jp Jump_024_515D                              ; $510B: $C3 $5D $51


Jump_024_510E:
    call Call_000_2CA2                            ; $510E: $CD $A2 $2C
    jp z, Jump_024_511A                           ; $5111: $CA $1A $51

    ld hl, $0034                                  ; $5114: $21 $34 $00
    add hl, bc                                    ; $5117: $09
    ld [hl], $00                                  ; $5118: $36 $00

Jump_024_511A:
    call Call_000_2CA9                            ; $511A: $CD $A9 $2C
    jp nc, Jump_024_515D                          ; $511D: $D2 $5D $51

    inc hl                                        ; $5120: $23
    ld [hl], $28                                  ; $5121: $36 $28
    jp Jump_024_515D                              ; $5123: $C3 $5D $51


Jump_024_5126:
    call Call_000_3069                            ; $5126: $CD $69 $30
    jp Jump_024_515D                              ; $5129: $C3 $5D $51


Jump_024_512C:
    call Call_000_2CA9                            ; $512C: $CD $A9 $2C
    jp nc, Jump_024_515D                          ; $512F: $D2 $5D $51

    call Call_000_2DB6                            ; $5132: $CD $B6 $2D
    jr jr_024_5160                                ; $5135: $18 $29

Jump_024_5137:
    call Call_000_326C                            ; $5137: $CD $6C $32
    jp nc, Jump_024_5152                          ; $513A: $D2 $52 $51

    jp nz, Jump_024_5152                          ; $513D: $C2 $52 $51

    ld a, $08                                     ; $5140: $3E $08
    ld h, $01                                     ; $5142: $26 $01
    call Call_000_2D19                            ; $5144: $CD $19 $2D
    ld hl, $0112                                  ; $5147: $21 $12 $01
    ld a, $90                                     ; $514A: $3E $90
    call Call_000_34B3                            ; $514C: $CD $B3 $34
    jp Jump_024_5160                              ; $514F: $C3 $60 $51


Jump_024_5152:
    call Call_000_2CA9                            ; $5152: $CD $A9 $2C
    jp nc, Jump_024_515D                          ; $5155: $D2 $5D $51

    call Call_000_2DB6                            ; $5158: $CD $B6 $2D
    jr jr_024_5160                                ; $515B: $18 $03

Jump_024_515D:
    call Call_000_2E25                            ; $515D: $CD $25 $2E

Jump_024_5160:
jr_024_5160:
    ret                                           ; $5160: $C9


    call Call_000_31B6                            ; $5161: $CD $B6 $31
    jp c, Jump_024_5297                           ; $5164: $DA $97 $52

    jp z, Jump_024_5176                           ; $5167: $CA $76 $51

    call Call_000_3A2A                            ; $516A: $CD $2A $3A
    jp c, Jump_024_51EC                           ; $516D: $DA $EC $51

    jp z, Jump_024_5237                           ; $5170: $CA $37 $52

    jp Jump_024_5297                              ; $5173: $C3 $97 $52


Jump_024_5176:
    call Call_000_3A2A                            ; $5176: $CD $2A $3A
    jp c, Jump_024_526A                           ; $5179: $DA $6A $52

    jp z, Jump_024_527E                           ; $517C: $CA $7E $52

    call Call_000_39D3                            ; $517F: $CD $D3 $39
    jp nc, Jump_024_5297                          ; $5182: $D2 $97 $52

    jp z, Jump_024_518E                           ; $5185: $CA $8E $51

    jp nz, Jump_024_51C9                          ; $5188: $C2 $C9 $51

    jp Jump_024_5297                              ; $518B: $C3 $97 $52


Jump_024_518E:
    call Call_000_3209                            ; $518E: $CD $09 $32
    jr c, jr_024_519C                             ; $5191: $38 $09

    ld hl, $3AD4                                  ; $5193: $21 $D4 $3A
    call Call_000_2B78                            ; $5196: $CD $78 $2B
    jp c, Jump_024_526A                           ; $5199: $DA $6A $52

jr_024_519C:
    call Call_000_3A61                            ; $519C: $CD $61 $3A
    jp c, Jump_024_5295                           ; $519F: $DA $95 $52

    ld hl, $3B14                                  ; $51A2: $21 $14 $3B
    call Call_000_2B78                            ; $51A5: $CD $78 $2B
    jp c, Jump_024_5237                           ; $51A8: $DA $37 $52

    ld hl, $3B2A                                  ; $51AB: $21 $2A $3B
    call Call_000_2B78                            ; $51AE: $CD $78 $2B
    jp c, Jump_024_51EC                           ; $51B1: $DA $EC $51

    ld hl, $3AB9                                  ; $51B4: $21 $B9 $3A
    call Call_000_2B78                            ; $51B7: $CD $78 $2B
    jp c, Jump_024_520B                           ; $51BA: $DA $0B $52

    ld hl, $3AC2                                  ; $51BD: $21 $C2 $3A
    call Call_000_2B78                            ; $51C0: $CD $78 $2B
    jp c, Jump_024_5259                           ; $51C3: $DA $59 $52

    jp Jump_024_5297                              ; $51C6: $C3 $97 $52


Jump_024_51C9:
    call Call_000_3209                            ; $51C9: $CD $09 $32
    jp c, Jump_024_51E0                           ; $51CC: $DA $E0 $51

    cp $01                                        ; $51CF: $FE $01
    jr z, jr_024_51E0                             ; $51D1: $28 $0D

    cp $02                                        ; $51D3: $FE $02
    jr z, jr_024_51D7                             ; $51D5: $28 $00

jr_024_51D7:
    ld hl, $3AE5                                  ; $51D7: $21 $E5 $3A
    call Call_000_2B78                            ; $51DA: $CD $78 $2B
    jp c, Jump_024_527E                           ; $51DD: $DA $7E $52

Jump_024_51E0:
jr_024_51E0:
    ld hl, $3AC2                                  ; $51E0: $21 $C2 $3A
    call Call_000_2B78                            ; $51E3: $CD $78 $2B
    jp c, Jump_024_5251                           ; $51E6: $DA $51 $52

    jp Jump_024_5297                              ; $51E9: $C3 $97 $52


Jump_024_51EC:
    call Call_000_2C23                            ; $51EC: $CD $23 $2C
    call Call_000_36DD                            ; $51EF: $CD $DD $36
    jp nc, Jump_024_5297                          ; $51F2: $D2 $97 $52

    call Call_000_0417                            ; $51F5: $CD $17 $04
    ld a, $03                                     ; $51F8: $3E $03
    ld [$C2E2], a                                 ; $51FA: $EA $E2 $C2
    ld a, $40                                     ; $51FD: $3E $40
    call Call_000_32E2                            ; $51FF: $CD $E2 $32
    ld hl, $0021                                  ; $5202: $21 $21 $00
    add hl, bc                                    ; $5205: $09
    set 7, [hl]                                   ; $5206: $CB $FE
    jp Jump_024_5295                              ; $5208: $C3 $95 $52


Jump_024_520B:
    call Call_000_32C5                            ; $520B: $CD $C5 $32
    jp nz, Jump_024_5297                          ; $520E: $C2 $97 $52

    call Call_000_2C23                            ; $5211: $CD $23 $2C
    ld a, $42                                     ; $5214: $3E $42
    call Call_000_32E2                            ; $5216: $CD $E2 $32
    call Call_000_34F1                            ; $5219: $CD $F1 $34
    call Call_000_34FE                            ; $521C: $CD $FE $34
    call Call_000_32CC                            ; $521F: $CD $CC $32
    jr nc, jr_024_5234                            ; $5222: $30 $10

    ld hl, $0508                                  ; $5224: $21 $08 $05
    ld a, $11                                     ; $5227: $3E $11
    call Call_000_34C4                            ; $5229: $CD $C4 $34
    ld hl, $0508                                  ; $522C: $21 $08 $05
    ld a, $11                                     ; $522F: $3E $11
    call Call_000_34D2                            ; $5231: $CD $D2 $34

jr_024_5234:
    jp Jump_024_5295                              ; $5234: $C3 $95 $52


Jump_024_5237:
    call Call_000_2C23                            ; $5237: $CD $23 $2C
    ld a, $44                                     ; $523A: $3E $44
    call Call_000_32E2                            ; $523C: $CD $E2 $32
    call Call_000_34F1                            ; $523F: $CD $F1 $34
    ld hl, $0021                                  ; $5242: $21 $21 $00
    add hl, bc                                    ; $5245: $09
    set 7, [hl]                                   ; $5246: $CB $FE
    ld hl, $009C                                  ; $5248: $21 $9C $00
    add hl, bc                                    ; $524B: $09
    ld [hl], $00                                  ; $524C: $36 $00
    jp Jump_024_5295                              ; $524E: $C3 $95 $52


Jump_024_5251:
    ld hl, $009C                                  ; $5251: $21 $9C $00
    add hl, bc                                    ; $5254: $09
    ld [hl], $00                                  ; $5255: $36 $00
    jr jr_024_525F                                ; $5257: $18 $06

Jump_024_5259:
    ld hl, $009C                                  ; $5259: $21 $9C $00
    add hl, bc                                    ; $525C: $09
    ld [hl], $01                                  ; $525D: $36 $01

jr_024_525F:
    call Call_000_2C23                            ; $525F: $CD $23 $2C
    ld a, $46                                     ; $5262: $3E $46
    call Call_000_32E2                            ; $5264: $CD $E2 $32
    jp Jump_024_5295                              ; $5267: $C3 $95 $52


Jump_024_526A:
    call Call_000_32C5                            ; $526A: $CD $C5 $32
    jp nz, Jump_024_5297                          ; $526D: $C2 $97 $52

    call Call_000_2C23                            ; $5270: $CD $23 $2C
    ld a, $4A                                     ; $5273: $3E $4A
    call Call_000_32E2                            ; $5275: $CD $E2 $32
    call Call_000_34FE                            ; $5278: $CD $FE $34
    jp Jump_024_5295                              ; $527B: $C3 $95 $52


Jump_024_527E:
    call Call_000_32C5                            ; $527E: $CD $C5 $32
    jp nz, Jump_024_5297                          ; $5281: $C2 $97 $52

    call Call_000_2C23                            ; $5284: $CD $23 $2C
    ld a, $4C                                     ; $5287: $3E $4C
    call Call_000_32E2                            ; $5289: $CD $E2 $32
    call Call_000_34F1                            ; $528C: $CD $F1 $34
    call Call_000_34FE                            ; $528F: $CD $FE $34
    jp Jump_024_5295                              ; $5292: $C3 $95 $52


Jump_024_5295:
    scf                                           ; $5295: $37
    ret                                           ; $5296: $C9


Jump_024_5297:
    or a                                          ; $5297: $B7
    ret                                           ; $5298: $C9


    call Call_000_2EE0                            ; $5299: $CD $E0 $2E
    call Call_000_3517                            ; $529C: $CD $17 $35
    jp c, Jump_024_5348                           ; $529F: $DA $48 $53

    ld hl, $0018                                  ; $52A2: $21 $18 $00
    add hl, de                                    ; $52A5: $19
    ld a, [hl]                                    ; $52A6: $7E
    cp $00                                        ; $52A7: $FE $00
    jp z, Jump_024_52C3                           ; $52A9: $CA $C3 $52

    cp $04                                        ; $52AC: $FE $04
    jp z, Jump_024_52ED                           ; $52AE: $CA $ED $52

    cp $08                                        ; $52B1: $FE $08
    jp z, Jump_024_52FE                           ; $52B3: $CA $FE $52

    cp $0C                                        ; $52B6: $FE $0C
    jp z, Jump_024_532D                           ; $52B8: $CA $2D $53

    cp $10                                        ; $52BB: $FE $10
    jp z, Jump_024_5336                           ; $52BD: $CA $36 $53

    jp Jump_024_5345                              ; $52C0: $C3 $45 $53


Jump_024_52C3:
    call Call_000_2CA9                            ; $52C3: $CD $A9 $2C
    jp nc, Jump_024_5345                          ; $52C6: $D2 $45 $53

    inc hl                                        ; $52C9: $23
    ld [hl], $01                                  ; $52CA: $36 $01
    call Call_000_32CC                            ; $52CC: $CD $CC $32
    jr c, jr_024_52DB                             ; $52CF: $38 $0A

    jr nz, jr_024_52D7                            ; $52D1: $20 $04

    ld a, $02                                     ; $52D3: $3E $02
    jr jr_024_52DD                                ; $52D5: $18 $06

jr_024_52D7:
    ld a, $03                                     ; $52D7: $3E $03
    jr jr_024_52DD                                ; $52D9: $18 $02

jr_024_52DB:
    ld a, $04                                     ; $52DB: $3E $04

jr_024_52DD:
    ld hl, $009C                                  ; $52DD: $21 $9C $00
    add hl, bc                                    ; $52E0: $09
    ld [hl], a                                    ; $52E1: $77
    ld hl, $010B                                  ; $52E2: $21 $0B $01
    ld a, $50                                     ; $52E5: $3E $50
    call Call_000_34B3                            ; $52E7: $CD $B3 $34
    jp Jump_024_5345                              ; $52EA: $C3 $45 $53


Jump_024_52ED:
    call Call_000_2CA9                            ; $52ED: $CD $A9 $2C
    jp nc, Jump_024_5345                          ; $52F0: $D2 $45 $53

    ld hl, $010C                                  ; $52F3: $21 $0C $01
    ld a, $50                                     ; $52F6: $3E $50
    call Call_000_34B3                            ; $52F8: $CD $B3 $34
    jp Jump_024_5345                              ; $52FB: $C3 $45 $53


Jump_024_52FE:
    call Call_000_2CA9                            ; $52FE: $CD $A9 $2C
    jp nc, Jump_024_5345                          ; $5301: $D2 $45 $53

    ld hl, $009C                                  ; $5304: $21 $9C $00
    add hl, bc                                    ; $5307: $09
    dec [hl]                                      ; $5308: $35
    jr z, jr_024_531C                             ; $5309: $28 $11

    ld hl, $010B                                  ; $530B: $21 $0B $01
    ld a, $50                                     ; $530E: $3E $50
    call Call_000_34B3                            ; $5310: $CD $B3 $34
    ld hl, $0014                                  ; $5313: $21 $14 $00
    add hl, de                                    ; $5316: $19
    ld [hl], $00                                  ; $5317: $36 $00
    jp Jump_024_5345                              ; $5319: $C3 $45 $53


jr_024_531C:
    ld hl, $010A                                  ; $531C: $21 $0A $01
    ld a, $03                                     ; $531F: $3E $03
    call Call_000_34B3                            ; $5321: $CD $B3 $34
    ld hl, $001D                                  ; $5324: $21 $1D $00
    add hl, de                                    ; $5327: $19
    ld [hl], $0A                                  ; $5328: $36 $0A
    jp Jump_024_5345                              ; $532A: $C3 $45 $53


Jump_024_532D:
    call Call_000_2CA9                            ; $532D: $CD $A9 $2C
    jp nc, Jump_024_5345                          ; $5330: $D2 $45 $53

    jp Jump_024_5345                              ; $5333: $C3 $45 $53


Jump_024_5336:
    call Call_000_2CA9                            ; $5336: $CD $A9 $2C
    jp nc, Jump_024_5345                          ; $5339: $D2 $45 $53

    xor a                                         ; $533C: $AF
    ld [$C2E2], a                                 ; $533D: $EA $E2 $C2
    call Call_000_2DB6                            ; $5340: $CD $B6 $2D
    jr jr_024_5348                                ; $5343: $18 $03

Jump_024_5345:
    jp Jump_000_2E25                              ; $5345: $C3 $25 $2E


Jump_024_5348:
jr_024_5348:
    ret                                           ; $5348: $C9


    call Call_000_2EE0                            ; $5349: $CD $E0 $2E
    call Call_000_3517                            ; $534C: $CD $17 $35
    jp c, Jump_024_5473                           ; $534F: $DA $73 $54

    ld hl, $0018                                  ; $5352: $21 $18 $00
    add hl, de                                    ; $5355: $19
    ld a, [hl]                                    ; $5356: $7E
    cp $00                                        ; $5357: $FE $00
    jp z, Jump_024_537F                           ; $5359: $CA $7F $53

    cp $04                                        ; $535C: $FE $04
    jp z, Jump_024_538B                           ; $535E: $CA $8B $53

    cp $08                                        ; $5361: $FE $08
    jp z, Jump_024_538E                           ; $5363: $CA $8E $53

    cp $0C                                        ; $5366: $FE $0C
    jp z, Jump_024_53A0                           ; $5368: $CA $A0 $53

    cp $10                                        ; $536B: $FE $10
    jp z, Jump_024_53AC                           ; $536D: $CA $AC $53

    cp $14                                        ; $5370: $FE $14
    jp z, Jump_024_53B8                           ; $5372: $CA $B8 $53

    cp $18                                        ; $5375: $FE $18
    jp z, Jump_024_53D6                           ; $5377: $CA $D6 $53

    cp $1C                                        ; $537A: $FE $1C
    jp z, Jump_024_543D                           ; $537C: $CA $3D $54

Jump_024_537F:
    call Call_000_2CA9                            ; $537F: $CD $A9 $2C
    jp nc, Jump_024_5470                          ; $5382: $D2 $70 $54

    inc hl                                        ; $5385: $23
    ld [hl], $00                                  ; $5386: $36 $00
    jp Jump_024_5470                              ; $5388: $C3 $70 $54


Jump_024_538B:
    jp Jump_024_5470                              ; $538B: $C3 $70 $54


Jump_024_538E:
    call Call_000_2CA2                            ; $538E: $CD $A2 $2C
    jp z, Jump_024_5470                           ; $5391: $CA $70 $54

    call Call_024_5B7C                            ; $5394: $CD $7C $5B
    ld hl, $001D                                  ; $5397: $21 $1D $00
    add hl, de                                    ; $539A: $19
    ld [hl], $0A                                  ; $539B: $36 $0A
    jp Jump_024_5470                              ; $539D: $C3 $70 $54


Jump_024_53A0:
    call Call_000_2CA9                            ; $53A0: $CD $A9 $2C
    jp nc, Jump_024_5470                          ; $53A3: $D2 $70 $54

    inc hl                                        ; $53A6: $23
    ld [hl], $01                                  ; $53A7: $36 $01
    jp Jump_024_5470                              ; $53A9: $C3 $70 $54


Jump_024_53AC:
    call Call_000_2CA9                            ; $53AC: $CD $A9 $2C
    jp nc, Jump_024_5470                          ; $53AF: $D2 $70 $54

    inc hl                                        ; $53B2: $23
    ld [hl], $00                                  ; $53B3: $36 $00
    jp Jump_024_5470                              ; $53B5: $C3 $70 $54


Jump_024_53B8:
    ld hl, $0080                                  ; $53B8: $21 $80 $00
    add hl, de                                    ; $53BB: $19
    bit 7, [hl]                                   ; $53BC: $CB $7E
    jp z, Jump_024_546B                           ; $53BE: $CA $6B $54

    ld hl, $00AB                                  ; $53C1: $21 $AB $00
    add hl, de                                    ; $53C4: $19
    ld a, [hl]                                    ; $53C5: $7E
    or a                                          ; $53C6: $B7
    jp z, Jump_024_5473                           ; $53C7: $CA $73 $54

    ld hl, $001C                                  ; $53CA: $21 $1C $00
    add hl, de                                    ; $53CD: $19
    ld [hl], $00                                  ; $53CE: $36 $00
    inc hl                                        ; $53D0: $23
    ld [hl], $01                                  ; $53D1: $36 $01
    jp Jump_024_5470                              ; $53D3: $C3 $70 $54


Jump_024_53D6:
    ld hl, $0080                                  ; $53D6: $21 $80 $00
    add hl, de                                    ; $53D9: $19
    bit 7, [hl]                                   ; $53DA: $CB $7E
    jp z, Jump_024_546B                           ; $53DC: $CA $6B $54

    push bc                                       ; $53DF: $C5
    ld hl, $0084                                  ; $53E0: $21 $84 $00
    add hl, de                                    ; $53E3: $19
    ld b, [hl]                                    ; $53E4: $46
    ld hl, $0086                                  ; $53E5: $21 $86 $00
    add hl, de                                    ; $53E8: $19
    ld c, [hl]                                    ; $53E9: $4E
    ld hl, $0006                                  ; $53EA: $21 $06 $00
    add hl, de                                    ; $53ED: $19
    ld a, [hl]                                    ; $53EE: $7E
    add $D8                                       ; $53EF: $C6 $D8
    cp c                                          ; $53F1: $B9
    jp nc, Jump_024_5426                          ; $53F2: $D2 $26 $54

    add $18                                       ; $53F5: $C6 $18
    cp c                                          ; $53F7: $B9
    jp c, Jump_024_5426                           ; $53F8: $DA $26 $54

    ld hl, $0004                                  ; $53FB: $21 $04 $00
    add hl, de                                    ; $53FE: $19
    ld a, [hl]                                    ; $53FF: $7E
    ld hl, $0002                                  ; $5400: $21 $02 $00
    add hl, de                                    ; $5403: $19
    bit 5, [hl]                                   ; $5404: $CB $6E
    jr nz, jr_024_5417                            ; $5406: $20 $0F

    add $E8                                       ; $5408: $C6 $E8
    cp b                                          ; $540A: $B8
    jp nc, Jump_024_5426                          ; $540B: $D2 $26 $54

    add $18                                       ; $540E: $C6 $18
    cp b                                          ; $5410: $B8
    jp c, Jump_024_5426                           ; $5411: $DA $26 $54

    jp Jump_024_542A                              ; $5414: $C3 $2A $54


jr_024_5417:
    add $18                                       ; $5417: $C6 $18
    cp b                                          ; $5419: $B8
    jp c, Jump_024_5426                           ; $541A: $DA $26 $54

    add $E8                                       ; $541D: $C6 $E8
    cp b                                          ; $541F: $B8
    jp nc, Jump_024_5426                          ; $5420: $D2 $26 $54

    jp Jump_024_542A                              ; $5423: $C3 $2A $54


Jump_024_5426:
    pop bc                                        ; $5426: $C1
    jp Jump_024_5473                              ; $5427: $C3 $73 $54


Jump_024_542A:
    pop bc                                        ; $542A: $C1
    ld hl, $00AC                                  ; $542B: $21 $AC $00
    add hl, de                                    ; $542E: $19
    ld [hl], $01                                  ; $542F: $36 $01
    ld hl, $001C                                  ; $5431: $21 $1C $00
    add hl, de                                    ; $5434: $19
    ld [hl], $00                                  ; $5435: $36 $00
    inc hl                                        ; $5437: $23
    ld [hl], $14                                  ; $5438: $36 $14
    jp Jump_024_5470                              ; $543A: $C3 $70 $54


Jump_024_543D:
    call Call_000_2CA2                            ; $543D: $CD $A2 $2C
    jp z, Jump_024_545F                           ; $5440: $CA $5F $54

    ld a, $B0                                     ; $5443: $3E $B0
    call Call_000_1360                            ; $5445: $CD $60 $13
    ld hl, $001C                                  ; $5448: $21 $1C $00
    add hl, de                                    ; $544B: $19
    ld [hl], $14                                  ; $544C: $36 $14
    ld hl, $0080                                  ; $544E: $21 $80 $00
    add hl, de                                    ; $5451: $19
    ld [hl], $00                                  ; $5452: $36 $00
    ld hl, $0088                                  ; $5454: $21 $88 $00
    add hl, de                                    ; $5457: $19
    ld a, [hl]                                    ; $5458: $7E
    ld h, a                                       ; $5459: $67
    ld l, $00                                     ; $545A: $2E $00
    call Call_000_3051                            ; $545C: $CD $51 $30

Jump_024_545F:
    ld hl, $0040                                  ; $545F: $21 $40 $00
    call Call_000_30B0                            ; $5462: $CD $B0 $30
    call Call_000_2CA9                            ; $5465: $CD $A9 $2C
    jp nc, Jump_024_5470                          ; $5468: $D2 $70 $54

Jump_024_546B:
    call Call_000_2DB6                            ; $546B: $CD $B6 $2D
    jr jr_024_5473                                ; $546E: $18 $03

Jump_024_5470:
    call Call_000_2E25                            ; $5470: $CD $25 $2E

Jump_024_5473:
jr_024_5473:
    ret                                           ; $5473: $C9


    call Call_000_2EE0                            ; $5474: $CD $E0 $2E
    call Call_000_3517                            ; $5477: $CD $17 $35
    jp c, Jump_024_55AB                           ; $547A: $DA $AB $55

    ld hl, $0018                                  ; $547D: $21 $18 $00
    add hl, de                                    ; $5480: $19
    ld a, [hl]                                    ; $5481: $7E
    cp $00                                        ; $5482: $FE $00
    jp z, Jump_024_54A0                           ; $5484: $CA $A0 $54

    cp $04                                        ; $5487: $FE $04
    jp z, Jump_024_54F3                           ; $5489: $CA $F3 $54

    cp $08                                        ; $548C: $FE $08
    jp z, Jump_024_551F                           ; $548E: $CA $1F $55

    cp $0C                                        ; $5491: $FE $0C
    jp z, Jump_024_557D                           ; $5493: $CA $7D $55

    cp $10                                        ; $5496: $FE $10
    jp z, Jump_024_558A                           ; $5498: $CA $8A $55

    cp $14                                        ; $549B: $FE $14
    jp z, Jump_024_559D                           ; $549D: $CA $9D $55

Jump_024_54A0:
    call Call_000_2CA2                            ; $54A0: $CD $A2 $2C
    jr z, jr_024_54C7                             ; $54A3: $28 $22

    ld a, $11                                     ; $54A5: $3E $11
    call Call_000_1360                            ; $54A7: $CD $60 $13
    call Call_000_32CC                            ; $54AA: $CD $CC $32
    jr c, jr_024_54C1                             ; $54AD: $38 $12

    jr nz, jr_024_54B9                            ; $54AF: $20 $08

    ld hl, $0100                                  ; $54B1: $21 $00 $01
    call Call_000_2FEB                            ; $54B4: $CD $EB $2F
    jr jr_024_54C7                                ; $54B7: $18 $0E

jr_024_54B9:
    ld hl, $0200                                  ; $54B9: $21 $00 $02
    call Call_000_2FEB                            ; $54BC: $CD $EB $2F
    jr jr_024_54C7                                ; $54BF: $18 $06

jr_024_54C1:
    ld hl, $0300                                  ; $54C1: $21 $00 $03
    call Call_000_2FEB                            ; $54C4: $CD $EB $2F

jr_024_54C7:
    ld hl, $0020                                  ; $54C7: $21 $20 $00
    call Call_000_30B0                            ; $54CA: $CD $B0 $30
    call Call_000_2CA9                            ; $54CD: $CD $A9 $2C
    jp nc, Jump_024_55A8                          ; $54D0: $D2 $A8 $55

    inc hl                                        ; $54D3: $23
    ld [hl], $03                                  ; $54D4: $36 $03
    call Call_000_32CC                            ; $54D6: $CD $CC $32
    jr c, jr_024_54E8                             ; $54D9: $38 $0D

    jr nz, jr_024_54DD                            ; $54DB: $20 $00

jr_024_54DD:
    ld hl, $0204                                  ; $54DD: $21 $04 $02
    ld a, $10                                     ; $54E0: $3E $10
    call Call_000_34B3                            ; $54E2: $CD $B3 $34
    jp Jump_024_55A8                              ; $54E5: $C3 $A8 $55


jr_024_54E8:
    ld hl, $0308                                  ; $54E8: $21 $08 $03
    ld a, $10                                     ; $54EB: $3E $10
    call Call_000_34B3                            ; $54ED: $CD $B3 $34
    jp Jump_024_55A8                              ; $54F0: $C3 $A8 $55


Jump_024_54F3:
    ld hl, $0020                                  ; $54F3: $21 $20 $00
    call Call_000_30B0                            ; $54F6: $CD $B0 $30
    call Call_000_2CA9                            ; $54F9: $CD $A9 $2C
    jp nc, Jump_024_55A8                          ; $54FC: $D2 $A8 $55

    inc hl                                        ; $54FF: $23
    ld [hl], $FF                                  ; $5500: $36 $FF
    call Call_000_32CC                            ; $5502: $CD $CC $32
    jr c, jr_024_5514                             ; $5505: $38 $0D

    jr nz, jr_024_5509                            ; $5507: $20 $00

jr_024_5509:
    ld hl, $0308                                  ; $5509: $21 $08 $03
    ld a, $01                                     ; $550C: $3E $01
    call Call_000_34B3                            ; $550E: $CD $B3 $34
    jp Jump_024_55A8                              ; $5511: $C3 $A8 $55


jr_024_5514:
    ld hl, $0108                                  ; $5514: $21 $08 $01
    ld a, $90                                     ; $5517: $3E $90
    call Call_000_34B3                            ; $5519: $CD $B3 $34
    jp Jump_024_55A8                              ; $551C: $C3 $A8 $55


Jump_024_551F:
    call Call_000_2CA2                            ; $551F: $CD $A2 $2C
    jr z, jr_024_5563                             ; $5522: $28 $3F

    ld a, $B6                                     ; $5524: $3E $B6
    call Call_000_1360                            ; $5526: $CD $60 $13
    ld hl, $0021                                  ; $5529: $21 $21 $00
    add hl, bc                                    ; $552C: $09
    res 7, [hl]                                   ; $552D: $CB $BE
    res 3, [hl]                                   ; $552F: $CB $9E
    call Call_000_32CC                            ; $5531: $CD $CC $32
    jr c, jr_024_5554                             ; $5534: $38 $1E

    jr nz, jr_024_5546                            ; $5536: $20 $0E

    ld hl, $0000                                  ; $5538: $21 $00 $00
    call Call_000_2FEB                            ; $553B: $CD $EB $2F
    ld hl, $FA00                                  ; $553E: $21 $00 $FA
    call Call_000_305D                            ; $5541: $CD $5D $30
    jr jr_024_5560                                ; $5544: $18 $1A

jr_024_5546:
    ld hl, $0000                                  ; $5546: $21 $00 $00
    call Call_000_2FEB                            ; $5549: $CD $EB $2F
    ld hl, $F900                                  ; $554C: $21 $00 $F9
    call Call_000_305D                            ; $554F: $CD $5D $30
    jr jr_024_5560                                ; $5552: $18 $0C

jr_024_5554:
    ld hl, $0000                                  ; $5554: $21 $00 $00
    call Call_000_2FEB                            ; $5557: $CD $EB $2F
    ld hl, $F800                                  ; $555A: $21 $00 $F8
    call Call_000_305D                            ; $555D: $CD $5D $30

jr_024_5560:
    jp Jump_024_558A                              ; $5560: $C3 $8A $55


jr_024_5563:
    call Call_000_32CC                            ; $5563: $CD $CC $32
    jr nc, jr_024_5570                            ; $5566: $30 $08

    ld hl, $0108                                  ; $5568: $21 $08 $01
    ld a, $90                                     ; $556B: $3E $90
    call Call_000_34A2                            ; $556D: $CD $A2 $34

jr_024_5570:
    ld a, $FC                                     ; $5570: $3E $FC
    ld h, $FF                                     ; $5572: $26 $FF
    call Call_000_2D33                            ; $5574: $CD $33 $2D
    jp nc, Jump_024_558A                          ; $5577: $D2 $8A $55

    jp Jump_024_558A                              ; $557A: $C3 $8A $55


Jump_024_557D:
    ld a, $00                                     ; $557D: $3E $00
    ld h, $FF                                     ; $557F: $26 $FF
    call Call_000_2D33                            ; $5581: $CD $33 $2D
    jp nc, Jump_024_558A                          ; $5584: $D2 $8A $55

    jp Jump_024_558A                              ; $5587: $C3 $8A $55


Jump_024_558A:
    ld hl, $0060                                  ; $558A: $21 $60 $00
    call Call_000_30FF                            ; $558D: $CD $FF $30
    jp nc, Jump_024_55A8                          ; $5590: $D2 $A8 $55

    ld a, $14                                     ; $5593: $3E $14
    ld h, $14                                     ; $5595: $26 $14
    call Call_000_2CBA                            ; $5597: $CD $BA $2C
    jp Jump_024_55AB                              ; $559A: $C3 $AB $55


Jump_024_559D:
    call Call_000_2CA9                            ; $559D: $CD $A9 $2C
    jp nc, Jump_024_55A8                          ; $55A0: $D2 $A8 $55

    call Call_000_2DB6                            ; $55A3: $CD $B6 $2D
    jr jr_024_55AB                                ; $55A6: $18 $03

Jump_024_55A8:
    call Call_000_2E25                            ; $55A8: $CD $25 $2E

Jump_024_55AB:
jr_024_55AB:
    ret                                           ; $55AB: $C9


    call Call_000_2EE0                            ; $55AC: $CD $E0 $2E
    call Call_000_3517                            ; $55AF: $CD $17 $35
    jp c, Jump_024_5758                           ; $55B2: $DA $58 $57

    ld hl, $0018                                  ; $55B5: $21 $18 $00
    add hl, de                                    ; $55B8: $19
    ld a, [hl]                                    ; $55B9: $7E
    cp $00                                        ; $55BA: $FE $00
    jp z, Jump_024_55E7                           ; $55BC: $CA $E7 $55

    cp $04                                        ; $55BF: $FE $04
    jp z, Jump_024_55F9                           ; $55C1: $CA $F9 $55

    cp $08                                        ; $55C4: $FE $08
    jp z, Jump_024_561D                           ; $55C6: $CA $1D $56

    cp $0C                                        ; $55C9: $FE $0C
    jp z, Jump_024_5629                           ; $55CB: $CA $29 $56

    cp $10                                        ; $55CE: $FE $10
    jp z, Jump_024_56B6                           ; $55D0: $CA $B6 $56

    cp $14                                        ; $55D3: $FE $14
    jp z, Jump_024_56E7                           ; $55D5: $CA $E7 $56

    cp $18                                        ; $55D8: $FE $18
    jp z, Jump_024_56FB                           ; $55DA: $CA $FB $56

    cp $1C                                        ; $55DD: $FE $1C
    jp z, Jump_024_5712                           ; $55DF: $CA $12 $57

    cp $20                                        ; $55E2: $FE $20
    jp z, Jump_024_573F                           ; $55E4: $CA $3F $57

Jump_024_55E7:
    call Call_000_2CA9                            ; $55E7: $CD $A9 $2C
    jp nc, Jump_024_5755                          ; $55EA: $D2 $55 $57

    inc hl                                        ; $55ED: $23
    ld [hl], $00                                  ; $55EE: $36 $00
    ld hl, $009D                                  ; $55F0: $21 $9D $00
    add hl, bc                                    ; $55F3: $09
    ld [hl], $00                                  ; $55F4: $36 $00
    jp Jump_024_5755                              ; $55F6: $C3 $55 $57


Jump_024_55F9:
    call Call_000_2CA2                            ; $55F9: $CD $A2 $2C
    jr z, jr_024_561A                             ; $55FC: $28 $1C

    ld hl, $009C                                  ; $55FE: $21 $9C $00
    add hl, bc                                    ; $5601: $09
    ld a, [hl]                                    ; $5602: $7E
    or a                                          ; $5603: $B7
    jr nz, jr_024_5611                            ; $5604: $20 $0B

    ld hl, $0021                                  ; $5606: $21 $21 $00
    add hl, bc                                    ; $5609: $09
    res 5, [hl]                                   ; $560A: $CB $AE
    inc hl                                        ; $560C: $23
    set 4, [hl]                                   ; $560D: $CB $E6
    jr jr_024_561A                                ; $560F: $18 $09

jr_024_5611:
    ld hl, $0021                                  ; $5611: $21 $21 $00
    add hl, bc                                    ; $5614: $09
    res 5, [hl]                                   ; $5615: $CB $AE
    inc hl                                        ; $5617: $23
    set 5, [hl]                                   ; $5618: $CB $EE

jr_024_561A:
    jp Jump_024_5629                              ; $561A: $C3 $29 $56


Jump_024_561D:
    call Call_000_2CA9                            ; $561D: $CD $A9 $2C
    jp nc, Jump_024_5629                          ; $5620: $D2 $29 $56

    inc hl                                        ; $5623: $23
    ld [hl], $1E                                  ; $5624: $36 $1E
    jp Jump_024_5629                              ; $5626: $C3 $29 $56


Jump_024_5629:
    ld hl, $0022                                  ; $5629: $21 $22 $00
    add hl, bc                                    ; $562C: $09
    bit 3, [hl]                                   ; $562D: $CB $5E
    jr z, jr_024_5690                             ; $562F: $28 $5F

    ld hl, $009D                                  ; $5631: $21 $9D $00
    add hl, bc                                    ; $5634: $09
    ld a, [hl]                                    ; $5635: $7E
    or a                                          ; $5636: $B7
    jr nz, jr_024_5654                            ; $5637: $20 $1B

    ld a, $0D                                     ; $5639: $3E $0D
    call Call_000_1360                            ; $563B: $CD $60 $13
    call Call_000_3A4C                            ; $563E: $CD $4C $3A
    ld a, $01                                     ; $5641: $3E $01
    ld [$C2DF], a                                 ; $5643: $EA $DF $C2
    call Call_000_37C3                            ; $5646: $CD $C3 $37
    ld a, $00                                     ; $5649: $3E $00
    ld [$C2DF], a                                 ; $564B: $EA $DF $C2
    ld hl, $009D                                  ; $564E: $21 $9D $00
    add hl, bc                                    ; $5651: $09
    ld [hl], $01                                  ; $5652: $36 $01

jr_024_5654:
    call Call_000_36B5                            ; $5654: $CD $B5 $36
    jp nc, Jump_024_5755                          ; $5657: $D2 $55 $57

    call Call_000_0417                            ; $565A: $CD $17 $04
    ld a, $03                                     ; $565D: $3E $03
    ld [$C2E2], a                                 ; $565F: $EA $E2 $C2
    ld hl, $0021                                  ; $5662: $21 $21 $00
    add hl, bc                                    ; $5665: $09
    set 7, [hl]                                   ; $5666: $CB $FE
    ld hl, $0014                                  ; $5668: $21 $14 $00
    add hl, de                                    ; $566B: $19
    ld [hl], $0C                                  ; $566C: $36 $0C
    ld hl, $001C                                  ; $566E: $21 $1C $00
    add hl, de                                    ; $5671: $19
    ld [hl], $00                                  ; $5672: $36 $00
    inc hl                                        ; $5674: $23
    ld [hl], $0A                                  ; $5675: $36 $0A
    ld hl, $0119                                  ; $5677: $21 $19 $01
    ld a, $00                                     ; $567A: $3E $00
    call Call_000_34B3                            ; $567C: $CD $B3 $34
    ld hl, $0119                                  ; $567F: $21 $19 $01
    ld a, $00                                     ; $5682: $3E $00
    call Call_000_34A2                            ; $5684: $CD $A2 $34
    ld hl, $E800                                  ; $5687: $21 $00 $E8
    call Call_000_3496                            ; $568A: $CD $96 $34
    jp Jump_024_5755                              ; $568D: $C3 $55 $57


jr_024_5690:
    call Call_000_2CA9                            ; $5690: $CD $A9 $2C
    jp nc, Jump_024_5755                          ; $5693: $D2 $55 $57

    ld hl, $0018                                  ; $5696: $21 $18 $00
    add hl, de                                    ; $5699: $19
    ld a, [hl]                                    ; $569A: $7E
    cp $0C                                        ; $569B: $FE $0C
    jp nz, Jump_024_5755                          ; $569D: $C2 $55 $57

    ld hl, $001D                                  ; $56A0: $21 $1D $00
    ld [hl], $0A                                  ; $56A3: $36 $0A
    ld hl, $0014                                  ; $56A5: $21 $14 $00
    add hl, de                                    ; $56A8: $19
    ld [hl], $1C                                  ; $56A9: $36 $1C
    ld hl, $0022                                  ; $56AB: $21 $22 $00
    add hl, bc                                    ; $56AE: $09
    res 4, [hl]                                   ; $56AF: $CB $A6
    res 5, [hl]                                   ; $56B1: $CB $AE
    jp Jump_024_5755                              ; $56B3: $C3 $55 $57


Jump_024_56B6:
    call Call_000_2CA2                            ; $56B6: $CD $A2 $2C
    jr z, jr_024_56CC                             ; $56B9: $28 $11

    call Call_000_2E12                            ; $56BB: $CD $12 $2E
    ld hl, $0119                                  ; $56BE: $21 $19 $01
    ld a, $00                                     ; $56C1: $3E $00
    call Call_000_34A2                            ; $56C3: $CD $A2 $34
    ld hl, $F000                                  ; $56C6: $21 $00 $F0
    call Call_000_3496                            ; $56C9: $CD $96 $34

jr_024_56CC:
    call Call_000_2CA9                            ; $56CC: $CD $A9 $2C
    jp nc, Jump_024_5755                          ; $56CF: $D2 $55 $57

    inc hl                                        ; $56D2: $23
    ld [hl], $00                                  ; $56D3: $36 $00
    call Call_000_32CC                            ; $56D5: $CD $CC $32
    jp c, Jump_024_5755                           ; $56D8: $DA $55 $57

    ld hl, $0022                                  ; $56DB: $21 $22 $00
    add hl, bc                                    ; $56DE: $09
    bit 5, [hl]                                   ; $56DF: $CB $6E
    jp nz, Jump_024_571E                          ; $56E1: $C2 $1E $57

    jp Jump_024_5755                              ; $56E4: $C3 $55 $57


Jump_024_56E7:
    call Call_000_2CA9                            ; $56E7: $CD $A9 $2C
    jp nc, Jump_024_5755                          ; $56EA: $D2 $55 $57

    inc hl                                        ; $56ED: $23
    ld [hl], $00                                  ; $56EE: $36 $00
    ld hl, $050F                                  ; $56F0: $21 $0F $05
    ld a, $11                                     ; $56F3: $3E $11
    call Call_000_34B3                            ; $56F5: $CD $B3 $34
    jp Jump_024_5755                              ; $56F8: $C3 $55 $57


Jump_024_56FB:
    call Call_000_2CA9                            ; $56FB: $CD $A9 $2C
    jp nc, Jump_024_5755                          ; $56FE: $D2 $55 $57

    inc hl                                        ; $5701: $23
    ld [hl], $0A                                  ; $5702: $36 $0A
    call Call_000_32CC                            ; $5704: $CD $CC $32
    jr nc, jr_024_570F                            ; $5707: $30 $06

    ld hl, $001D                                  ; $5709: $21 $1D $00
    add hl, de                                    ; $570C: $19
    ld [hl], $00                                  ; $570D: $36 $00

jr_024_570F:
    jp Jump_024_5755                              ; $570F: $C3 $55 $57


Jump_024_5712:
    call Call_000_2CA9                            ; $5712: $CD $A9 $2C
    jp nc, Jump_024_5755                          ; $5715: $D2 $55 $57

    call Call_000_32CC                            ; $5718: $CD $CC $32
    jp nc, Jump_024_5755                          ; $571B: $D2 $55 $57

Jump_024_571E:
    ld a, $44                                     ; $571E: $3E $44
    call Call_000_32E2                            ; $5720: $CD $E2 $32
    ld hl, $001C                                  ; $5723: $21 $1C $00
    add hl, de                                    ; $5726: $19
    ld [hl], $03                                  ; $5727: $36 $03
    ld hl, $0108                                  ; $5729: $21 $08 $01
    ld a, $90                                     ; $572C: $3E $90
    call Call_000_34B3                            ; $572E: $CD $B3 $34
    ld hl, $009C                                  ; $5731: $21 $9C $00
    add hl, bc                                    ; $5734: $09
    ld [hl], $01                                  ; $5735: $36 $01
    ld a, $00                                     ; $5737: $3E $00
    ld [$C2E2], a                                 ; $5739: $EA $E2 $C2
    jp Jump_024_5758                              ; $573C: $C3 $58 $57


Jump_024_573F:
    ld hl, $0080                                  ; $573F: $21 $80 $00
    call Call_000_30B0                            ; $5742: $CD $B0 $30
    call Call_000_2CA9                            ; $5745: $CD $A9 $2C
    jp nc, Jump_024_5755                          ; $5748: $D2 $55 $57

    call Call_000_2DB6                            ; $574B: $CD $B6 $2D
    ld a, $00                                     ; $574E: $3E $00
    ld [$C2E2], a                                 ; $5750: $EA $E2 $C2
    jr jr_024_5758                                ; $5753: $18 $03

Jump_024_5755:
    call Call_000_2E25                            ; $5755: $CD $25 $2E

Jump_024_5758:
jr_024_5758:
    ret                                           ; $5758: $C9


    call Call_000_2EE0                            ; $5759: $CD $E0 $2E
    call Call_000_3517                            ; $575C: $CD $17 $35
    jp c, Jump_024_58CE                           ; $575F: $DA $CE $58

    ld hl, $0018                                  ; $5762: $21 $18 $00
    add hl, de                                    ; $5765: $19
    ld a, [hl]                                    ; $5766: $7E
    cp $00                                        ; $5767: $FE $00
    jp z, Jump_024_57A1                           ; $5769: $CA $A1 $57

    cp $04                                        ; $576C: $FE $04
    jp z, Jump_024_57AD                           ; $576E: $CA $AD $57

    cp $08                                        ; $5771: $FE $08
    jp z, Jump_024_57A1                           ; $5773: $CA $A1 $57

    cp $0C                                        ; $5776: $FE $0C
    jp z, Jump_024_57C2                           ; $5778: $CA $C2 $57

    cp $10                                        ; $577B: $FE $10
    jp z, Jump_024_57D6                           ; $577D: $CA $D6 $57

    cp $14                                        ; $5780: $FE $14
    jp z, Jump_024_581A                           ; $5782: $CA $1A $58

    cp $18                                        ; $5785: $FE $18
    jp z, Jump_024_5868                           ; $5787: $CA $68 $58

    cp $24                                        ; $578A: $FE $24
    jp z, Jump_024_5874                           ; $578C: $CA $74 $58

    cp $28                                        ; $578F: $FE $28
    jp z, Jump_024_5885                           ; $5791: $CA $85 $58

    cp $30                                        ; $5794: $FE $30
    jp z, Jump_024_5894                           ; $5796: $CA $94 $58

    cp $34                                        ; $5799: $FE $34
    jp z, Jump_024_589F                           ; $579B: $CA $9F $58

    jp Jump_024_58CB                              ; $579E: $C3 $CB $58


Jump_024_57A1:
    call Call_000_2CA9                            ; $57A1: $CD $A9 $2C
    jp nc, Jump_024_58CB                          ; $57A4: $D2 $CB $58

    inc hl                                        ; $57A7: $23
    ld [hl], $00                                  ; $57A8: $36 $00
    jp Jump_024_58CB                              ; $57AA: $C3 $CB $58


Jump_024_57AD:
    call Call_000_2CA2                            ; $57AD: $CD $A2 $2C
    jp z, Jump_024_57B9                           ; $57B0: $CA $B9 $57

    ld hl, $0031                                  ; $57B3: $21 $31 $00
    add hl, bc                                    ; $57B6: $09
    ld [hl], $01                                  ; $57B7: $36 $01

Jump_024_57B9:
    call Call_000_2CA9                            ; $57B9: $CD $A9 $2C
    jp nc, Jump_024_58CB                          ; $57BC: $D2 $CB $58

    jp Jump_024_58CB                              ; $57BF: $C3 $CB $58


Jump_024_57C2:
    call Call_000_2CA9                            ; $57C2: $CD $A9 $2C
    jp nc, Jump_024_58CB                          ; $57C5: $D2 $CB $58

    inc hl                                        ; $57C8: $23
    ld [hl], $05                                  ; $57C9: $36 $05
    ld hl, $010B                                  ; $57CB: $21 $0B $01
    ld a, $90                                     ; $57CE: $3E $90
    call Call_000_34B3                            ; $57D0: $CD $B3 $34
    jp Jump_024_58CB                              ; $57D3: $C3 $CB $58


Jump_024_57D6:
    call Call_000_2CA2                            ; $57D6: $CD $A2 $2C
    jr z, jr_024_57E9                             ; $57D9: $28 $0E

    ld a, $11                                     ; $57DB: $3E $11
    call Call_000_1360                            ; $57DD: $CD $60 $13
    ld hl, $0200                                  ; $57E0: $21 $00 $02
    call Call_000_2FEB                            ; $57E3: $CD $EB $2F
    jp Jump_024_588E                              ; $57E6: $C3 $8E $58


jr_024_57E9:
    call Call_000_3262                            ; $57E9: $CD $62 $32
    jp nc, Jump_024_5804                          ; $57EC: $D2 $04 $58

    jp nz, Jump_024_5810                          ; $57EF: $C2 $10 $58

    ld a, $18                                     ; $57F2: $3E $18
    ld h, $01                                     ; $57F4: $26 $01
    call Call_000_2D19                            ; $57F6: $CD $19 $2D
    ld hl, $0111                                  ; $57F9: $21 $11 $01
    ld a, $41                                     ; $57FC: $3E $41
    call Call_000_34B3                            ; $57FE: $CD $B3 $34
    jp Jump_024_58CE                              ; $5801: $C3 $CE $58


Jump_024_5804:
    call Call_000_2CA9                            ; $5804: $CD $A9 $2C
    jp nc, Jump_024_588E                          ; $5807: $D2 $8E $58

    inc hl                                        ; $580A: $23
    ld [hl], $10                                  ; $580B: $36 $10
    jp Jump_024_588E                              ; $580D: $C3 $8E $58


Jump_024_5810:
    ld a, $34                                     ; $5810: $3E $34
    ld h, $1E                                     ; $5812: $26 $1E
    call Call_000_2D19                            ; $5814: $CD $19 $2D
    jp Jump_024_588E                              ; $5817: $C3 $8E $58


Jump_024_581A:
    call Call_000_2CA2                            ; $581A: $CD $A2 $2C
    jr z, jr_024_5833                             ; $581D: $28 $14

    ld a, $11                                     ; $581F: $3E $11
    call Call_000_1360                            ; $5821: $CD $60 $13
    ld hl, $0800                                  ; $5824: $21 $00 $08
    call Call_000_2FEB                            ; $5827: $CD $EB $2F
    ld hl, $0021                                  ; $582A: $21 $21 $00
    add hl, bc                                    ; $582D: $09
    res 7, [hl]                                   ; $582E: $CB $BE
    jp Jump_024_588E                              ; $5830: $C3 $8E $58


jr_024_5833:
    call Call_000_3262                            ; $5833: $CD $62 $32
    jp nc, Jump_024_584E                          ; $5836: $D2 $4E $58

    jp nz, Jump_024_585E                          ; $5839: $C2 $5E $58

    ld a, $18                                     ; $583C: $3E $18
    ld h, $01                                     ; $583E: $26 $01
    call Call_000_2D19                            ; $5840: $CD $19 $2D
    ld hl, $0111                                  ; $5843: $21 $11 $01
    ld a, $41                                     ; $5846: $3E $41
    call Call_000_34B3                            ; $5848: $CD $B3 $34
    jp Jump_024_58CE                              ; $584B: $C3 $CE $58


Jump_024_584E:
    call Call_000_2CA9                            ; $584E: $CD $A9 $2C
    jp nc, Jump_024_588E                          ; $5851: $D2 $8E $58

    ld a, $34                                     ; $5854: $3E $34
    ld h, $14                                     ; $5856: $26 $14
    call Call_000_2D19                            ; $5858: $CD $19 $2D
    jp Jump_024_588E                              ; $585B: $C3 $8E $58


Jump_024_585E:
    ld a, $34                                     ; $585E: $3E $34
    ld h, $1E                                     ; $5860: $26 $1E
    call Call_000_2D19                            ; $5862: $CD $19 $2D
    jp Jump_024_588E                              ; $5865: $C3 $8E $58


Jump_024_5868:
    call Call_000_2CA9                            ; $5868: $CD $A9 $2C
    jp nc, Jump_024_58CB                          ; $586B: $D2 $CB $58

    inc hl                                        ; $586E: $23
    ld [hl], $00                                  ; $586F: $36 $00
    jp Jump_024_58CB                              ; $5871: $C3 $CB $58


Jump_024_5874:
    call Call_000_2CA9                            ; $5874: $CD $A9 $2C
    jp nc, Jump_024_58CB                          ; $5877: $D2 $CB $58

    ld hl, $1008                                  ; $587A: $21 $08 $10
    ld a, $0F                                     ; $587D: $3E $0F
    call Call_000_34B3                            ; $587F: $CD $B3 $34
    jp Jump_024_58CB                              ; $5882: $C3 $CB $58


Jump_024_5885:
    call Call_000_2CA9                            ; $5885: $CD $A9 $2C
    jp nc, Jump_024_58CB                          ; $5888: $D2 $CB $58

    jp Jump_024_58CB                              ; $588B: $C3 $CB $58


Jump_024_588E:
    call Call_000_3069                            ; $588E: $CD $69 $30
    jp Jump_024_58CB                              ; $5891: $C3 $CB $58


Jump_024_5894:
    call Call_000_2CA9                            ; $5894: $CD $A9 $2C
    jp nc, Jump_024_58CB                          ; $5897: $D2 $CB $58

    call Call_000_2DB6                            ; $589A: $CD $B6 $2D
    jr jr_024_58CE                                ; $589D: $18 $2F

Jump_024_589F:
    ld hl, $0080                                  ; $589F: $21 $80 $00
    call Call_000_30B0                            ; $58A2: $CD $B0 $30
    call Call_000_326C                            ; $58A5: $CD $6C $32
    jp nc, Jump_024_58C0                          ; $58A8: $D2 $C0 $58

    jp nz, Jump_024_58C0                          ; $58AB: $C2 $C0 $58

    ld a, $18                                     ; $58AE: $3E $18
    ld h, $01                                     ; $58B0: $26 $01
    call Call_000_2D19                            ; $58B2: $CD $19 $2D
    ld hl, $0111                                  ; $58B5: $21 $11 $01
    ld a, $41                                     ; $58B8: $3E $41
    call Call_000_34B3                            ; $58BA: $CD $B3 $34
    jp Jump_024_58CE                              ; $58BD: $C3 $CE $58


Jump_024_58C0:
    call Call_000_2CA9                            ; $58C0: $CD $A9 $2C
    jp nc, Jump_024_58CB                          ; $58C3: $D2 $CB $58

    call Call_000_2DB6                            ; $58C6: $CD $B6 $2D
    jr jr_024_58CE                                ; $58C9: $18 $03

Jump_024_58CB:
    call Call_000_2E25                            ; $58CB: $CD $25 $2E

Jump_024_58CE:
jr_024_58CE:
    ret                                           ; $58CE: $C9


    call Call_000_2EE0                            ; $58CF: $CD $E0 $2E
    call Call_000_3517                            ; $58D2: $CD $17 $35
    jp c, Jump_024_5B7B                           ; $58D5: $DA $7B $5B

    ld hl, $0018                                  ; $58D8: $21 $18 $00
    add hl, de                                    ; $58DB: $19
    ld a, [hl]                                    ; $58DC: $7E
    cp $00                                        ; $58DD: $FE $00
    jp z, Jump_024_5926                           ; $58DF: $CA $26 $59

    cp $04                                        ; $58E2: $FE $04
    jp z, Jump_024_5946                           ; $58E4: $CA $46 $59

    cp $08                                        ; $58E7: $FE $08
    jp z, Jump_024_5987                           ; $58E9: $CA $87 $59

    cp $0C                                        ; $58EC: $FE $0C
    jp z, Jump_024_59E2                           ; $58EE: $CA $E2 $59

    cp $10                                        ; $58F1: $FE $10
    jp z, Jump_024_5A0B                           ; $58F3: $CA $0B $5A

    cp $14                                        ; $58F6: $FE $14
    jp z, Jump_024_5A2D                           ; $58F8: $CA $2D $5A

    cp $18                                        ; $58FB: $FE $18
    jp z, Jump_024_5A67                           ; $58FD: $CA $67 $5A

    cp $1C                                        ; $5900: $FE $1C
    jp z, Jump_024_5AAF                           ; $5902: $CA $AF $5A

    cp $20                                        ; $5905: $FE $20
    jp z, Jump_024_5AFF                           ; $5907: $CA $FF $5A

    cp $24                                        ; $590A: $FE $24
    jp z, Jump_024_5B0B                           ; $590C: $CA $0B $5B

    cp $28                                        ; $590F: $FE $28
    jp z, Jump_024_5B2D                           ; $5911: $CA $2D $5B

    cp $2C                                        ; $5914: $FE $2C
    jp z, Jump_024_5B39                           ; $5916: $CA $39 $5B

    cp $30                                        ; $5919: $FE $30
    jp z, Jump_024_5B4F                           ; $591B: $CA $4F $5B

    cp $34                                        ; $591E: $FE $34
    jp z, Jump_024_5B5A                           ; $5920: $CA $5A $5B

    jp Jump_024_5B78                              ; $5923: $C3 $78 $5B


Jump_024_5926:
    call Call_000_2CA2                            ; $5926: $CD $A2 $2C
    jp z, Jump_024_5932                           ; $5929: $CA $32 $59

    ld hl, $0031                                  ; $592C: $21 $31 $00
    add hl, bc                                    ; $592F: $09
    ld [hl], $01                                  ; $5930: $36 $01

Jump_024_5932:
    call Call_000_2CA9                            ; $5932: $CD $A9 $2C
    jp nc, Jump_024_5B78                          ; $5935: $D2 $78 $5B

    inc hl                                        ; $5938: $23
    ld [hl], $14                                  ; $5939: $36 $14
    ld hl, $020C                                  ; $593B: $21 $0C $02
    ld a, $50                                     ; $593E: $3E $50
    call Call_000_34B3                            ; $5940: $CD $B3 $34
    jp Jump_024_5B78                              ; $5943: $C3 $78 $5B


Jump_024_5946:
    call Call_000_2CA2                            ; $5946: $CD $A2 $2C
    jp z, Jump_024_5961                           ; $5949: $CA $61 $59

    ld a, $11                                     ; $594C: $3E $11
    call Call_000_1360                            ; $594E: $CD $60 $13
    ld hl, $0021                                  ; $5951: $21 $21 $00
    add hl, bc                                    ; $5954: $09
    res 7, [hl]                                   ; $5955: $CB $BE
    set 3, [hl]                                   ; $5957: $CB $DE
    res 5, [hl]                                   ; $5959: $CB $AE
    ld hl, $0400                                  ; $595B: $21 $00 $04
    call Call_000_2FEB                            ; $595E: $CD $EB $2F

Jump_024_5961:
    call Call_000_3069                            ; $5961: $CD $69 $30
    call Call_000_3262                            ; $5964: $CD $62 $32
    jp nc, Jump_024_5977                          ; $5967: $D2 $77 $59

    jp nz, Jump_024_596D                          ; $596A: $C2 $6D $59

Jump_024_596D:
    ld a, $08                                     ; $596D: $3E $08
    ld h, $0A                                     ; $596F: $26 $0A
    call Call_000_2D19                            ; $5971: $CD $19 $2D
    jp Jump_024_5B7B                              ; $5974: $C3 $7B $5B


Jump_024_5977:
    call Call_000_2CA9                            ; $5977: $CD $A9 $2C
    jp nc, Jump_024_5B78                          ; $597A: $D2 $78 $5B

    ld a, $34                                     ; $597D: $3E $34
    ld h, $0A                                     ; $597F: $26 $0A
    call Call_000_2D19                            ; $5981: $CD $19 $2D
    jp Jump_024_5B7B                              ; $5984: $C3 $7B $5B


Jump_024_5987:
    call Call_000_2CA2                            ; $5987: $CD $A2 $2C
    jp z, Jump_024_59A2                           ; $598A: $CA $A2 $59

    ld a, $14                                     ; $598D: $3E $14
    call Call_000_1360                            ; $598F: $CD $60 $13
    ld hl, $0021                                  ; $5992: $21 $21 $00
    add hl, bc                                    ; $5995: $09
    res 7, [hl]                                   ; $5996: $CB $BE
    res 3, [hl]                                   ; $5998: $CB $9E
    res 5, [hl]                                   ; $599A: $CB $AE
    ld hl, $0700                                  ; $599C: $21 $00 $07
    call Call_000_2FEB                            ; $599F: $CD $EB $2F

Jump_024_59A2:
    call Call_000_3069                            ; $59A2: $CD $69 $30
    ld hl, $020C                                  ; $59A5: $21 $0C $02
    ld a, $12                                     ; $59A8: $3E $12
    call Call_000_34A2                            ; $59AA: $CD $A2 $34
    call Call_000_2CA9                            ; $59AD: $CD $A9 $2C
    jp nc, Jump_024_5B78                          ; $59B0: $D2 $78 $5B

    call Call_000_3262                            ; $59B3: $CD $62 $32
    jp nc, Jump_024_59CE                          ; $59B6: $D2 $CE $59

    jp nz, Jump_024_59D8                          ; $59B9: $C2 $D8 $59

    ld a, $0C                                     ; $59BC: $3E $0C
    ld h, $14                                     ; $59BE: $26 $14
    call Call_000_2D19                            ; $59C0: $CD $19 $2D
    ld hl, $0112                                  ; $59C3: $21 $12 $01
    ld a, $12                                     ; $59C6: $3E $12
    call Call_000_34A2                            ; $59C8: $CD $A2 $34
    jp Jump_024_5B7B                              ; $59CB: $C3 $7B $5B


Jump_024_59CE:
    ld a, $34                                     ; $59CE: $3E $34
    ld h, $0A                                     ; $59D0: $26 $0A
    call Call_000_2D19                            ; $59D2: $CD $19 $2D
    jp Jump_024_5B7B                              ; $59D5: $C3 $7B $5B


Jump_024_59D8:
    ld a, $34                                     ; $59D8: $3E $34
    ld h, $14                                     ; $59DA: $26 $14
    call Call_000_2D19                            ; $59DC: $CD $19 $2D
    jp Jump_024_5B7B                              ; $59DF: $C3 $7B $5B


Jump_024_59E2:
    call Call_000_2CA2                            ; $59E2: $CD $A2 $2C
    jp z, Jump_024_59FC                           ; $59E5: $CA $FC $59

    ld a, $B6                                     ; $59E8: $3E $B6
    call Call_000_1360                            ; $59EA: $CD $60 $13
    ld hl, $0021                                  ; $59ED: $21 $21 $00
    add hl, bc                                    ; $59F0: $09
    set 7, [hl]                                   ; $59F1: $CB $FE
    inc hl                                        ; $59F3: $23
    set 7, [hl]                                   ; $59F4: $CB $FE
    ld hl, $F900                                  ; $59F6: $21 $00 $F9
    call Call_000_2FEB                            ; $59F9: $CD $EB $2F

Jump_024_59FC:
    call Call_000_3069                            ; $59FC: $CD $69 $30
    call Call_000_2CA9                            ; $59FF: $CD $A9 $2C
    jp nc, Jump_024_5B78                          ; $5A02: $D2 $78 $5B

    inc hl                                        ; $5A05: $23
    ld [hl], $14                                  ; $5A06: $36 $14
    jp Jump_024_5B78                              ; $5A08: $C3 $78 $5B


Jump_024_5A0B:
    call Call_000_2CA2                            ; $5A0B: $CD $A2 $2C
    jp z, Jump_024_5A21                           ; $5A0E: $CA $21 $5A

    ld a, $0A                                     ; $5A11: $3E $0A
    call Call_000_3963                            ; $5A13: $CD $63 $39
    ld a, $B5                                     ; $5A16: $3E $B5
    call Call_000_1360                            ; $5A18: $CD $60 $13
    ld hl, $E000                                  ; $5A1B: $21 $00 $E0
    call Call_000_2F42                            ; $5A1E: $CD $42 $2F

Jump_024_5A21:
    call Call_000_2CA9                            ; $5A21: $CD $A9 $2C
    jp nc, Jump_024_5B78                          ; $5A24: $D2 $78 $5B

    inc hl                                        ; $5A27: $23
    ld [hl], $FF                                  ; $5A28: $36 $FF
    jp Jump_024_5B78                              ; $5A2A: $C3 $78 $5B


Jump_024_5A2D:
    call Call_000_2CA2                            ; $5A2D: $CD $A2 $2C
    jr z, jr_024_5A44                             ; $5A30: $28 $12

    ld hl, $F000                                  ; $5A32: $21 $00 $F0
    call Call_000_2F79                            ; $5A35: $CD $79 $2F
    ld hl, $0080                                  ; $5A38: $21 $80 $00
    call Call_000_2FEB                            ; $5A3B: $CD $EB $2F
    ld hl, $0000                                  ; $5A3E: $21 $00 $00
    call Call_000_305D                            ; $5A41: $CD $5D $30

jr_024_5A44:
    call Call_024_5AD6                            ; $5A44: $CD $D6 $5A
    ld hl, $0030                                  ; $5A47: $21 $30 $00
    call Call_000_30FF                            ; $5A4A: $CD $FF $30
    jp nc, Jump_024_5B78                          ; $5A4D: $D2 $78 $5B

    ld a, $18                                     ; $5A50: $3E $18
    ld h, $25                                     ; $5A52: $26 $25
    call Call_000_2CBA                            ; $5A54: $CD $BA $2C
    jp z, Jump_024_5B7B                           ; $5A57: $CA $7B $5B

    ld a, $B5                                     ; $5A5A: $3E $B5
    call Call_000_1360                            ; $5A5C: $CD $60 $13
    ld a, $08                                     ; $5A5F: $3E $08
    call Call_000_3963                            ; $5A61: $CD $63 $39
    jp Jump_024_5B7B                              ; $5A64: $C3 $7B $5B


Jump_024_5A67:
    ld a, $05                                     ; $5A67: $3E $05
    call Call_000_3963                            ; $5A69: $CD $63 $39
    call Call_000_2CA2                            ; $5A6C: $CD $A2 $2C
    jp z, Jump_024_5A78                           ; $5A6F: $CA $78 $5A

    ld hl, $0034                                  ; $5A72: $21 $34 $00
    add hl, bc                                    ; $5A75: $09
    ld [hl], $02                                  ; $5A76: $36 $02

Jump_024_5A78:
    ld hl, $001C                                  ; $5A78: $21 $1C $00
    add hl, de                                    ; $5A7B: $19
    ld a, [hl]                                    ; $5A7C: $7E
    cp $02                                        ; $5A7D: $FE $02
    jr nc, jr_024_5A8B                            ; $5A7F: $30 $0A

    ld hl, $0208                                  ; $5A81: $21 $08 $02
    ld a, $8F                                     ; $5A84: $3E $8F
    call Call_000_34A2                            ; $5A86: $CD $A2 $34
    jr jr_024_5A93                                ; $5A89: $18 $08

jr_024_5A8B:
    ld hl, HeaderLogo                             ; $5A8B: $21 $04 $01
    ld a, $9F                                     ; $5A8E: $3E $9F
    call Call_000_34A2                            ; $5A90: $CD $A2 $34

jr_024_5A93:
    call Call_024_5AD6                            ; $5A93: $CD $D6 $5A
    call Call_000_2CA9                            ; $5A96: $CD $A9 $2C
    jp nc, Jump_024_5B78                          ; $5A99: $D2 $78 $5B

    inc hl                                        ; $5A9C: $23
    ld [hl], $0A                                  ; $5A9D: $36 $0A
    ld hl, $0208                                  ; $5A9F: $21 $08 $02
    ld a, $8F                                     ; $5AA2: $3E $8F
    call Call_000_34A2                            ; $5AA4: $CD $A2 $34
    ld a, $07                                     ; $5AA7: $3E $07
    call Call_000_3963                            ; $5AA9: $CD $63 $39
    jp Jump_024_5B78                              ; $5AAC: $C3 $78 $5B


Jump_024_5AAF:
    call Call_000_2CA2                            ; $5AAF: $CD $A2 $2C
    jp z, Jump_024_5ABB                           ; $5AB2: $CA $BB $5A

    ld hl, $0034                                  ; $5AB5: $21 $34 $00
    add hl, bc                                    ; $5AB8: $09
    ld [hl], $00                                  ; $5AB9: $36 $00

Jump_024_5ABB:
    call Call_024_5AD6                            ; $5ABB: $CD $D6 $5A
    ld hl, $FF00                                  ; $5ABE: $21 $00 $FF
    call Call_000_2F79                            ; $5AC1: $CD $79 $2F
    ld hl, $FF80                                  ; $5AC4: $21 $80 $FF
    call Call_000_2F42                            ; $5AC7: $CD $42 $2F
    call Call_000_2CA9                            ; $5ACA: $CD $A9 $2C
    jp nc, Jump_024_5B78                          ; $5ACD: $D2 $78 $5B

    inc hl                                        ; $5AD0: $23
    ld [hl], $00                                  ; $5AD1: $36 $00
    jp Jump_024_5B78                              ; $5AD3: $C3 $78 $5B


Call_024_5AD6:
    ld hl, $0002                                  ; $5AD6: $21 $02 $00
    add hl, de                                    ; $5AD9: $19
    bit 5, [hl]                                   ; $5ADA: $CB $6E
    jr z, jr_024_5AEF                             ; $5ADC: $28 $11

    ld hl, $000C                                  ; $5ADE: $21 $0C $00
    add hl, de                                    ; $5AE1: $19
    ld a, [hl]                                    ; $5AE2: $7E
    cp $18                                        ; $5AE3: $FE $18
    jr c, jr_024_5AFE                             ; $5AE5: $38 $17

    ld hl, $FF00                                  ; $5AE7: $21 $00 $FF
    call Call_000_2F79                            ; $5AEA: $CD $79 $2F
    jr jr_024_5AFE                                ; $5AED: $18 $0F

jr_024_5AEF:
    ld hl, $000C                                  ; $5AEF: $21 $0C $00
    add hl, de                                    ; $5AF2: $19
    ld a, [hl]                                    ; $5AF3: $7E
    cp $98                                        ; $5AF4: $FE $98
    jr nc, jr_024_5AFE                            ; $5AF6: $30 $06

    ld hl, $FF00                                  ; $5AF8: $21 $00 $FF
    call Call_000_2F79                            ; $5AFB: $CD $79 $2F

jr_024_5AFE:
    ret                                           ; $5AFE: $C9


Jump_024_5AFF:
    call Call_000_2CA9                            ; $5AFF: $CD $A9 $2C
    jp nc, Jump_024_5B78                          ; $5B02: $D2 $78 $5B

    inc hl                                        ; $5B05: $23
    ld [hl], $02                                  ; $5B06: $36 $02
    jp Jump_024_5B78                              ; $5B08: $C3 $78 $5B


Jump_024_5B0B:
    call Call_000_2CA2                            ; $5B0B: $CD $A2 $2C
    jr z, jr_024_5B2A                             ; $5B0E: $28 $1A

    ld a, $12                                     ; $5B10: $3E $12
    call Call_000_1360                            ; $5B12: $CD $60 $13
    ld hl, $0021                                  ; $5B15: $21 $21 $00
    add hl, bc                                    ; $5B18: $09
    res 7, [hl]                                   ; $5B19: $CB $BE
    inc hl                                        ; $5B1B: $23
    res 7, [hl]                                   ; $5B1C: $CB $BE
    ld hl, $0100                                  ; $5B1E: $21 $00 $01
    call Call_000_2FEB                            ; $5B21: $CD $EB $2F
    ld hl, $FC00                                  ; $5B24: $21 $00 $FC
    call Call_000_305D                            ; $5B27: $CD $5D $30

jr_024_5B2A:
    jp Jump_024_5B3C                              ; $5B2A: $C3 $3C $5B


Jump_024_5B2D:
    call Call_000_2CA9                            ; $5B2D: $CD $A9 $2C
    jp nc, Jump_024_5B3C                          ; $5B30: $D2 $3C $5B

    inc hl                                        ; $5B33: $23
    ld [hl], $FF                                  ; $5B34: $36 $FF
    jp Jump_024_5B3C                              ; $5B36: $C3 $3C $5B


Jump_024_5B39:
    jp Jump_024_5B3C                              ; $5B39: $C3 $3C $5B


Jump_024_5B3C:
    ld hl, $0060                                  ; $5B3C: $21 $60 $00
    call Call_000_30FF                            ; $5B3F: $CD $FF $30
    jp nc, Jump_024_5B78                          ; $5B42: $D2 $78 $5B

    ld a, $30                                     ; $5B45: $3E $30
    ld h, $0A                                     ; $5B47: $26 $0A
    call Call_000_2CBA                            ; $5B49: $CD $BA $2C
    jp Jump_024_5B7B                              ; $5B4C: $C3 $7B $5B


Jump_024_5B4F:
    call Call_000_2CA9                            ; $5B4F: $CD $A9 $2C
    jp nc, Jump_024_5B78                          ; $5B52: $D2 $78 $5B

    call Call_000_2DB6                            ; $5B55: $CD $B6 $2D
    jr jr_024_5B7B                                ; $5B58: $18 $21

Jump_024_5B5A:
    call Call_000_326C                            ; $5B5A: $CD $6C $32
    jp nc, Jump_024_5B6D                          ; $5B5D: $D2 $6D $5B

    jp nz, Jump_024_5B6D                          ; $5B60: $C2 $6D $5B

    ld a, $08                                     ; $5B63: $3E $08
    ld h, $0A                                     ; $5B65: $26 $0A
    call Call_000_2D19                            ; $5B67: $CD $19 $2D
    jp Jump_024_5B7B                              ; $5B6A: $C3 $7B $5B


Jump_024_5B6D:
    call Call_000_2CA9                            ; $5B6D: $CD $A9 $2C
    jp nc, Jump_024_5B78                          ; $5B70: $D2 $78 $5B

    call Call_000_2DB6                            ; $5B73: $CD $B6 $2D
    jr jr_024_5B7B                                ; $5B76: $18 $03

Jump_024_5B78:
    call Call_000_2E25                            ; $5B78: $CD $25 $2E

Jump_024_5B7B:
jr_024_5B7B:
    ret                                           ; $5B7B: $C9


Call_024_5B7C:
    ld a, $09                                     ; $5B7C: $3E $09
    call Call_000_1360                            ; $5B7E: $CD $60 $13
    push bc                                       ; $5B81: $C5
    push de                                       ; $5B82: $D5
    ld hl, $0030                                  ; $5B83: $21 $30 $00
    add hl, bc                                    ; $5B86: $09
    ld a, [hl]                                    ; $5B87: $7E
    or a                                          ; $5B88: $B7
    jr nz, jr_024_5B8E                            ; $5B89: $20 $03

    xor a                                         ; $5B8B: $AF
    jr jr_024_5B8F                                ; $5B8C: $18 $01

jr_024_5B8E:
    scf                                           ; $5B8E: $37

jr_024_5B8F:
    ld hl, $0022                                  ; $5B8F: $21 $22 $00
    push af                                       ; $5B92: $F5
    add hl, bc                                    ; $5B93: $09
    pop af                                        ; $5B94: $F1
    ld a, [hl]                                    ; $5B95: $7E
    push af                                       ; $5B96: $F5
    call Call_000_25D1                            ; $5B97: $CD $D1 $25
    ld hl, $0021                                  ; $5B9A: $21 $21 $00
    add hl, de                                    ; $5B9D: $19
    ld [hl], $24                                  ; $5B9E: $36 $24
    inc hl                                        ; $5BA0: $23
    ld [hl], $0E                                  ; $5BA1: $36 $0E
    inc hl                                        ; $5BA3: $23
    ld [hl], $5C                                  ; $5BA4: $36 $5C
    ld hl, $0011                                  ; $5BA6: $21 $11 $00
    add hl, de                                    ; $5BA9: $19
    ld [hl], $02                                  ; $5BAA: $36 $02
    inc hl                                        ; $5BAC: $23
    ld [hl], $8C                                  ; $5BAD: $36 $8C
    inc hl                                        ; $5BAF: $23
    ld [hl], $64                                  ; $5BB0: $36 $64
    inc hl                                        ; $5BB2: $23
    ld [hl], $00                                  ; $5BB3: $36 $00
    ld hl, $001C                                  ; $5BB5: $21 $1C $00
    add hl, de                                    ; $5BB8: $19
    ld [hl], $00                                  ; $5BB9: $36 $00
    inc hl                                        ; $5BBB: $23
    ld [hl], $03                                  ; $5BBC: $36 $03
    ld hl, $0029                                  ; $5BBE: $21 $29 $00
    add hl, de                                    ; $5BC1: $19
    ld [hl], $00                                  ; $5BC2: $36 $00
    inc hl                                        ; $5BC4: $23
    ld [hl], $2D                                  ; $5BC5: $36 $2D
    inc hl                                        ; $5BC7: $23
    ld [hl], $00                                  ; $5BC8: $36 $00
    inc hl                                        ; $5BCA: $23
    ld [hl], $00                                  ; $5BCB: $36 $00
    call Call_000_2614                            ; $5BCD: $CD $14 $26
    ld hl, $1800                                  ; $5BD0: $21 $00 $18
    call Call_000_2F79                            ; $5BD3: $CD $79 $2F
    ld hl, $E800                                  ; $5BD6: $21 $00 $E8
    call Call_000_2F42                            ; $5BD9: $CD $42 $2F
    pop af                                        ; $5BDC: $F1
    jr c, jr_024_5BFF                             ; $5BDD: $38 $20

    bit 1, a                                      ; $5BDF: $CB $4F
    jr nz, jr_024_5BF1                            ; $5BE1: $20 $0E

    ld hl, $05B0                                  ; $5BE3: $21 $B0 $05
    call Call_000_2FEB                            ; $5BE6: $CD $EB $2F
    ld hl, $0100                                  ; $5BE9: $21 $00 $01
    call Call_000_305D                            ; $5BEC: $CD $5D $30
    jr jr_024_5C0B                                ; $5BEF: $18 $1A

jr_024_5BF1:
    ld hl, $05B0                                  ; $5BF1: $21 $B0 $05
    call Call_000_2FEB                            ; $5BF4: $CD $EB $2F
    ld hl, $0100                                  ; $5BF7: $21 $00 $01
    call Call_000_305D                            ; $5BFA: $CD $5D $30
    jr jr_024_5C0B                                ; $5BFD: $18 $0C

jr_024_5BFF:
    ld hl, $05B0                                  ; $5BFF: $21 $B0 $05
    call Call_000_2FEB                            ; $5C02: $CD $EB $2F
    ld hl, $0100                                  ; $5C05: $21 $00 $01
    call Call_000_305D                            ; $5C08: $CD $5D $30

jr_024_5C0B:
    pop de                                        ; $5C0B: $D1
    pop bc                                        ; $5C0C: $C1
    ret                                           ; $5C0D: $C9


    ld hl, $002C                                  ; $5C0E: $21 $2C $00
    add hl, de                                    ; $5C11: $19
    ld a, [hl]                                    ; $5C12: $7E
    or a                                          ; $5C13: $B7
    jr z, jr_024_5C4A                             ; $5C14: $28 $34

    ld hl, $003C                                  ; $5C16: $21 $3C $00
    add hl, bc                                    ; $5C19: $09
    ld a, [hl]                                    ; $5C1A: $7E
    cp $42                                        ; $5C1B: $FE $42
    jp nz, Jump_024_5C95                          ; $5C1D: $C2 $95 $5C

    ld hl, $0014                                  ; $5C20: $21 $14 $00
    add hl, de                                    ; $5C23: $19
    ld [hl], $0C                                  ; $5C24: $36 $0C
    ld hl, $0006                                  ; $5C26: $21 $06 $00
    add hl, de                                    ; $5C29: $19
    ld [hl], $6E                                  ; $5C2A: $36 $6E
    ld hl, $0002                                  ; $5C2C: $21 $02 $00
    add hl, de                                    ; $5C2F: $19
    bit 5, [hl]                                   ; $5C30: $CB $6E
    jr nz, jr_024_5C3D                            ; $5C32: $20 $09

    ld hl, $FF84                                  ; $5C34: $21 $84 $FF
    add hl, de                                    ; $5C37: $19
    ld a, [hl]                                    ; $5C38: $7E
    add $E8                                       ; $5C39: $C6 $E8
    jr jr_024_5C44                                ; $5C3B: $18 $07

jr_024_5C3D:
    ld hl, $FF84                                  ; $5C3D: $21 $84 $FF
    add hl, de                                    ; $5C40: $19
    ld a, [hl]                                    ; $5C41: $7E
    add $18                                       ; $5C42: $C6 $18

jr_024_5C44:
    ld hl, $0004                                  ; $5C44: $21 $04 $00
    add hl, de                                    ; $5C47: $19
    ld [hl], a                                    ; $5C48: $77
    ret                                           ; $5C49: $C9


jr_024_5C4A:
    ld hl, $FFE0                                  ; $5C4A: $21 $E0 $FF
    call Call_000_26F3                            ; $5C4D: $CD $F3 $26
    ld hl, $002A                                  ; $5C50: $21 $2A $00
    add hl, de                                    ; $5C53: $19
    ld a, [hl]                                    ; $5C54: $7E
    cp $00                                        ; $5C55: $FE $00
    jr z, jr_024_5C63                             ; $5C57: $28 $0A

    dec [hl]                                      ; $5C59: $35
    ld hl, $FFF0                                  ; $5C5A: $21 $F0 $FF
    call Call_000_315D                            ; $5C5D: $CD $5D $31
    jp Jump_024_5C91                              ; $5C60: $C3 $91 $5C


jr_024_5C63:
    ld hl, $002B                                  ; $5C63: $21 $2B $00
    add hl, de                                    ; $5C66: $19
    ld [hl], $01                                  ; $5C67: $36 $01
    ld hl, $0018                                  ; $5C69: $21 $18 $00
    call Call_000_315D                            ; $5C6C: $CD $5D $31
    jp c, Jump_024_5C75                           ; $5C6F: $DA $75 $5C

    jp Jump_024_5C91                              ; $5C72: $C3 $91 $5C


Jump_024_5C75:
    ld hl, $0021                                  ; $5C75: $21 $21 $00
    add hl, de                                    ; $5C78: $19
    ld [hl], $24                                  ; $5C79: $36 $24
    inc hl                                        ; $5C7B: $23
    ld [hl], $99                                  ; $5C7C: $36 $99
    inc hl                                        ; $5C7E: $23
    ld [hl], $5C                                  ; $5C7F: $36 $5C
    ld hl, $0029                                  ; $5C81: $21 $29 $00
    add hl, de                                    ; $5C84: $19
    ld [hl], $00                                  ; $5C85: $36 $00
    inc hl                                        ; $5C87: $23
    ld [hl], $3C                                  ; $5C88: $36 $3C
    ld a, $22                                     ; $5C8A: $3E $22
    call Call_000_1360                            ; $5C8C: $CD $60 $13
    jr jr_024_5C94                                ; $5C8F: $18 $03

Jump_024_5C91:
    call Call_000_2E25                            ; $5C91: $CD $25 $2E

jr_024_5C94:
    ret                                           ; $5C94: $C9


Jump_024_5C95:
    call Call_000_27F5                            ; $5C95: $CD $F5 $27
    ret                                           ; $5C98: $C9


    ld hl, $002A                                  ; $5C99: $21 $2A $00
    add hl, de                                    ; $5C9C: $19
    dec [hl]                                      ; $5C9D: $35
    jr z, jr_024_5CA1                             ; $5C9E: $28 $01

    ret                                           ; $5CA0: $C9


jr_024_5CA1:
    call Call_000_27F5                            ; $5CA1: $CD $F5 $27
    ret                                           ; $5CA4: $C9


    call Call_000_31B6                            ; $5CA5: $CD $B6 $31
    jp c, Jump_024_5D7C                           ; $5CA8: $DA $7C $5D

    jp z, Jump_024_5CBA                           ; $5CAB: $CA $BA $5C

    call Call_000_3A2A                            ; $5CAE: $CD $2A $3A
    jp c, Jump_024_5D21                           ; $5CB1: $DA $21 $5D

    jp z, Jump_024_5D3F                           ; $5CB4: $CA $3F $5D

    jp Jump_024_5D7C                              ; $5CB7: $C3 $7C $5D


Jump_024_5CBA:
    call Call_000_3A2A                            ; $5CBA: $CD $2A $3A
    jp c, Jump_024_5D55                           ; $5CBD: $DA $55 $5D

    jp z, Jump_024_5D60                           ; $5CC0: $CA $60 $5D

    call Call_000_39D3                            ; $5CC3: $CD $D3 $39
    jp nc, Jump_024_5D7C                          ; $5CC6: $D2 $7C $5D

    jp z, Jump_024_5CD2                           ; $5CC9: $CA $D2 $5C

    jp nz, Jump_024_5CFE                          ; $5CCC: $C2 $FE $5C

    jp Jump_024_5D7C                              ; $5CCF: $C3 $7C $5D


Jump_024_5CD2:
    call Call_000_3209                            ; $5CD2: $CD $09 $32
    jr c, jr_024_5CE0                             ; $5CD5: $38 $09

    ld hl, $3AD4                                  ; $5CD7: $21 $D4 $3A
    call Call_000_2B78                            ; $5CDA: $CD $78 $2B
    jp c, Jump_024_5D55                           ; $5CDD: $DA $55 $5D

jr_024_5CE0:
    ld hl, $3B2A                                  ; $5CE0: $21 $2A $3B
    call Call_000_2B78                            ; $5CE3: $CD $78 $2B
    jp c, Jump_024_5D4A                           ; $5CE6: $DA $4A $5D

    ld hl, $3AC2                                  ; $5CE9: $21 $C2 $3A
    call Call_000_2B78                            ; $5CEC: $CD $78 $2B
    jp c, Jump_024_5D3F                           ; $5CEF: $DA $3F $5D

    ld hl, $3AB9                                  ; $5CF2: $21 $B9 $3A
    call Call_000_2B78                            ; $5CF5: $CD $78 $2B
    jp c, Jump_024_5D21                           ; $5CF8: $DA $21 $5D

    jp Jump_024_5D7C                              ; $5CFB: $C3 $7C $5D


Jump_024_5CFE:
    call Call_000_3209                            ; $5CFE: $CD $09 $32
    jp c, Jump_024_5D15                           ; $5D01: $DA $15 $5D

    cp $01                                        ; $5D04: $FE $01
    jr z, jr_024_5D15                             ; $5D06: $28 $0D

    cp $02                                        ; $5D08: $FE $02
    jr z, jr_024_5D0C                             ; $5D0A: $28 $00

jr_024_5D0C:
    ld hl, $3AE5                                  ; $5D0C: $21 $E5 $3A
    call Call_000_2B78                            ; $5D0F: $CD $78 $2B
    jp c, Jump_024_5D60                           ; $5D12: $DA $60 $5D

Jump_024_5D15:
jr_024_5D15:
    ld hl, $3B14                                  ; $5D15: $21 $14 $3B
    call Call_000_2B78                            ; $5D18: $CD $78 $2B
    jp c, Jump_024_5D34                           ; $5D1B: $DA $34 $5D

    jp Jump_024_5D7C                              ; $5D1E: $C3 $7C $5D


Jump_024_5D21:
    call Call_000_2C23                            ; $5D21: $CD $23 $2C
    ld a, $40                                     ; $5D24: $3E $40
    call Call_000_32E2                            ; $5D26: $CD $E2 $32
    ld hl, $0304                                  ; $5D29: $21 $04 $03
    ld a, $03                                     ; $5D2C: $3E $03
    call Call_000_34C4                            ; $5D2E: $CD $C4 $34
    jp Jump_024_5D7A                              ; $5D31: $C3 $7A $5D


Jump_024_5D34:
    call Call_000_2C23                            ; $5D34: $CD $23 $2C
    ld a, $42                                     ; $5D37: $3E $42
    call Call_000_32E2                            ; $5D39: $CD $E2 $32
    jp Jump_024_5D7A                              ; $5D3C: $C3 $7A $5D


Jump_024_5D3F:
    call Call_000_2C23                            ; $5D3F: $CD $23 $2C
    ld a, $44                                     ; $5D42: $3E $44
    call Call_000_32E2                            ; $5D44: $CD $E2 $32
    jp Jump_024_5D7A                              ; $5D47: $C3 $7A $5D


Jump_024_5D4A:
    call Call_000_2C23                            ; $5D4A: $CD $23 $2C
    ld a, $46                                     ; $5D4D: $3E $46
    call Call_000_32E2                            ; $5D4F: $CD $E2 $32
    jp Jump_024_5D7A                              ; $5D52: $C3 $7A $5D


Jump_024_5D55:
    call Call_000_2C23                            ; $5D55: $CD $23 $2C
    ld a, $4A                                     ; $5D58: $3E $4A
    call Call_000_32E2                            ; $5D5A: $CD $E2 $32
    jp Jump_024_5D7A                              ; $5D5D: $C3 $7A $5D


Jump_024_5D60:
    call Call_000_2C23                            ; $5D60: $CD $23 $2C
    ld a, $26                                     ; $5D63: $3E $26
    call Call_000_32E2                            ; $5D65: $CD $E2 $32
    ld hl, $0021                                  ; $5D68: $21 $21 $00
    add hl, bc                                    ; $5D6B: $09
    set 7, [hl]                                   ; $5D6C: $CB $FE
    ld hl, $009C                                  ; $5D6E: $21 $9C $00
    add hl, bc                                    ; $5D71: $09
    ld [hl], $01                                  ; $5D72: $36 $01
    jp Jump_024_5D7A                              ; $5D74: $C3 $7A $5D


    jp Jump_024_5D7A                              ; $5D77: $C3 $7A $5D


Jump_024_5D7A:
    scf                                           ; $5D7A: $37
    ret                                           ; $5D7B: $C9


Jump_024_5D7C:
    or a                                          ; $5D7C: $B7
    ret                                           ; $5D7D: $C9


    call Call_000_2EE0                            ; $5D7E: $CD $E0 $2E
    call Call_000_3517                            ; $5D81: $CD $17 $35
    jp c, Jump_024_5E32                           ; $5D84: $DA $32 $5E

    ld hl, $0018                                  ; $5D87: $21 $18 $00
    add hl, de                                    ; $5D8A: $19
    ld a, [hl]                                    ; $5D8B: $7E
    cp $00                                        ; $5D8C: $FE $00
    jp z, Jump_024_5DA3                           ; $5D8E: $CA $A3 $5D

    cp $04                                        ; $5D91: $FE $04
    jp z, Jump_024_5DC8                           ; $5D93: $CA $C8 $5D

    cp $08                                        ; $5D96: $FE $08
    jp z, Jump_024_5DDB                           ; $5D98: $CA $DB $5D

    cp $0C                                        ; $5D9B: $FE $0C
    jp z, Jump_024_5E24                           ; $5D9D: $CA $24 $5E

    jp Jump_024_5E2F                              ; $5DA0: $C3 $2F $5E


Jump_024_5DA3:
    call Call_000_2CA9                            ; $5DA3: $CD $A9 $2C
    jp nc, Jump_024_5E2F                          ; $5DA6: $D2 $2F $5E

    inc hl                                        ; $5DA9: $23
    ld [hl], $01                                  ; $5DAA: $36 $01
    call Call_000_32CC                            ; $5DAC: $CD $CC $32
    jr c, jr_024_5DBB                             ; $5DAF: $38 $0A

    jr nz, jr_024_5DB7                            ; $5DB1: $20 $04

    ld a, $01                                     ; $5DB3: $3E $01
    jr jr_024_5DBD                                ; $5DB5: $18 $06

jr_024_5DB7:
    ld a, $02                                     ; $5DB7: $3E $02
    jr jr_024_5DBD                                ; $5DB9: $18 $02

jr_024_5DBB:
    ld a, $03                                     ; $5DBB: $3E $03

jr_024_5DBD:
    ld hl, $009C                                  ; $5DBD: $21 $9C $00
    add hl, bc                                    ; $5DC0: $09
    ld [hl], $00                                  ; $5DC1: $36 $00
    inc hl                                        ; $5DC3: $23
    ld [hl], a                                    ; $5DC4: $77
    jp Jump_024_5E2F                              ; $5DC5: $C3 $2F $5E


Jump_024_5DC8:
    call Call_000_2CA2                            ; $5DC8: $CD $A2 $2C
    jr z, jr_024_5DD2                             ; $5DCB: $28 $05

    ld a, $1A                                     ; $5DCD: $3E $1A
    call Call_000_1360                            ; $5DCF: $CD $60 $13

jr_024_5DD2:
    call Call_000_2CA9                            ; $5DD2: $CD $A9 $2C
    jp nc, Jump_024_5E2F                          ; $5DD5: $D2 $2F $5E

    jp Jump_024_5E2F                              ; $5DD8: $C3 $2F $5E


Jump_024_5DDB:
    call Call_000_2CA2                            ; $5DDB: $CD $A2 $2C
    jr z, jr_024_5E02                             ; $5DDE: $28 $22

    ld hl, $009C                                  ; $5DE0: $21 $9C $00
    add hl, bc                                    ; $5DE3: $09
    inc [hl]                                      ; $5DE4: $34
    ld a, [hl]                                    ; $5DE5: $7E
    cp $01                                        ; $5DE6: $FE $01
    jr z, jr_024_5DF2                             ; $5DE8: $28 $08

    cp $02                                        ; $5DEA: $FE $02
    jr z, jr_024_5DF7                             ; $5DEC: $28 $09

    cp $03                                        ; $5DEE: $FE $03
    jr z, jr_024_5DFC                             ; $5DF0: $28 $0A

jr_024_5DF2:
    ld hl, $2000                                  ; $5DF2: $21 $00 $20
    jr jr_024_5DFF                                ; $5DF5: $18 $08

jr_024_5DF7:
    ld hl, $3800                                  ; $5DF7: $21 $00 $38
    jr jr_024_5DFF                                ; $5DFA: $18 $03

jr_024_5DFC:
    ld hl, $5000                                  ; $5DFC: $21 $00 $50

jr_024_5DFF:
    call Call_024_62F7                            ; $5DFF: $CD $F7 $62

jr_024_5E02:
    call Call_000_2CA9                            ; $5E02: $CD $A9 $2C
    jp nc, Jump_024_5E2F                          ; $5E05: $D2 $2F $5E

    ld hl, $009C                                  ; $5E08: $21 $9C $00
    add hl, bc                                    ; $5E0B: $09
    ld a, [hl]                                    ; $5E0C: $7E
    inc hl                                        ; $5E0D: $23
    cp [hl]                                       ; $5E0E: $BE
    jp z, Jump_024_5E1B                           ; $5E0F: $CA $1B $5E

    ld hl, $0014                                  ; $5E12: $21 $14 $00
    add hl, de                                    ; $5E15: $19
    ld [hl], $00                                  ; $5E16: $36 $00
    jp Jump_024_5E2F                              ; $5E18: $C3 $2F $5E


Jump_024_5E1B:
    ld hl, $001D                                  ; $5E1B: $21 $1D $00
    add hl, de                                    ; $5E1E: $19
    ld [hl], $23                                  ; $5E1F: $36 $23
    jp Jump_024_5E2F                              ; $5E21: $C3 $2F $5E


Jump_024_5E24:
    call Call_000_2CA9                            ; $5E24: $CD $A9 $2C
    jp nc, Jump_024_5E2F                          ; $5E27: $D2 $2F $5E

    call Call_000_2DB6                            ; $5E2A: $CD $B6 $2D
    jr jr_024_5E32                                ; $5E2D: $18 $03

Jump_024_5E2F:
    jp Jump_000_2E25                              ; $5E2F: $C3 $25 $2E


Jump_024_5E32:
jr_024_5E32:
    ret                                           ; $5E32: $C9


    call Call_000_2EE0                            ; $5E33: $CD $E0 $2E
    call Call_000_3517                            ; $5E36: $CD $17 $35
    jp c, Jump_024_5FB0                           ; $5E39: $DA $B0 $5F

    ld hl, $0018                                  ; $5E3C: $21 $18 $00
    add hl, de                                    ; $5E3F: $19
    ld a, [hl]                                    ; $5E40: $7E
    cp $00                                        ; $5E41: $FE $00
    jp z, Jump_024_5E67                           ; $5E43: $CA $67 $5E

    cp $04                                        ; $5E46: $FE $04
    jp z, Jump_024_5E75                           ; $5E48: $CA $75 $5E

    cp $08                                        ; $5E4B: $FE $08
    jp z, Jump_024_5E83                           ; $5E4D: $CA $83 $5E

    cp $0C                                        ; $5E50: $FE $0C
    jp z, Jump_024_5ECB                           ; $5E52: $CA $CB $5E

    cp $10                                        ; $5E55: $FE $10
    jp z, Jump_024_5F04                           ; $5E57: $CA $04 $5F

    cp $14                                        ; $5E5A: $FE $14
    jp z, Jump_024_5F85                           ; $5E5C: $CA $85 $5F

    cp $18                                        ; $5E5F: $FE $18
    jp z, Jump_024_5F98                           ; $5E61: $CA $98 $5F

    jp Jump_024_5FAD                              ; $5E64: $C3 $AD $5F


Jump_024_5E67:
    call Call_000_2CA9                            ; $5E67: $CD $A9 $2C
    jp nc, Jump_024_5FAD                          ; $5E6A: $D2 $AD $5F

    ld a, $01                                     ; $5E6D: $3E $01
    call Call_000_3963                            ; $5E6F: $CD $63 $39
    jp Jump_024_5FAD                              ; $5E72: $C3 $AD $5F


Jump_024_5E75:
    call Call_000_2CA9                            ; $5E75: $CD $A9 $2C
    jp nc, Jump_024_5FAD                          ; $5E78: $D2 $AD $5F

    ld a, $03                                     ; $5E7B: $3E $03
    call Call_000_3963                            ; $5E7D: $CD $63 $39
    jp Jump_024_5FAD                              ; $5E80: $C3 $AD $5F


Jump_024_5E83:
    call Call_000_2CA9                            ; $5E83: $CD $A9 $2C
    jp nc, Jump_024_5FAD                          ; $5E86: $D2 $AD $5F

    inc hl                                        ; $5E89: $23
    ld [hl], $78                                  ; $5E8A: $36 $78
    ld a, $02                                     ; $5E8C: $3E $02
    call Call_000_3963                            ; $5E8E: $CD $63 $39
    call Call_000_32CC                            ; $5E91: $CD $CC $32
    jr c, jr_024_5EBA                             ; $5E94: $38 $24

    jr nz, jr_024_5EA9                            ; $5E96: $20 $11

    ld hl, $001D                                  ; $5E98: $21 $1D $00
    add hl, de                                    ; $5E9B: $19
    ld [hl], $50                                  ; $5E9C: $36 $50
    ld hl, $0408                                  ; $5E9E: $21 $08 $04
    ld a, $80                                     ; $5EA1: $3E $80
    call Call_000_34B3                            ; $5EA3: $CD $B3 $34
    jp Jump_024_5FAD                              ; $5EA6: $C3 $AD $5F


jr_024_5EA9:
    ld hl, $001D                                  ; $5EA9: $21 $1D $00
    add hl, de                                    ; $5EAC: $19
    ld [hl], $78                                  ; $5EAD: $36 $78
    ld hl, $0508                                  ; $5EAF: $21 $08 $05
    ld a, $80                                     ; $5EB2: $3E $80
    call Call_000_34B3                            ; $5EB4: $CD $B3 $34
    jp Jump_024_5FAD                              ; $5EB7: $C3 $AD $5F


jr_024_5EBA:
    ld hl, $001D                                  ; $5EBA: $21 $1D $00
    add hl, de                                    ; $5EBD: $19
    ld [hl], $A0                                  ; $5EBE: $36 $A0
    ld hl, $0308                                  ; $5EC0: $21 $08 $03
    ld a, $92                                     ; $5EC3: $3E $92
    call Call_000_34B3                            ; $5EC5: $CD $B3 $34
    jp Jump_024_5FAD                              ; $5EC8: $C3 $AD $5F


Jump_024_5ECB:
    call Call_000_2CA2                            ; $5ECB: $CD $A2 $2C
    jr z, jr_024_5EF2                             ; $5ECE: $28 $22

    ld a, $11                                     ; $5ED0: $3E $11
    call Call_000_1360                            ; $5ED2: $CD $60 $13
    call Call_000_32CC                            ; $5ED5: $CD $CC $32
    jr c, jr_024_5EEC                             ; $5ED8: $38 $12

    jr nz, jr_024_5EE4                            ; $5EDA: $20 $08

    ld hl, $0000                                  ; $5EDC: $21 $00 $00
    call Call_000_2FEB                            ; $5EDF: $CD $EB $2F
    jr jr_024_5EF2                                ; $5EE2: $18 $0E

jr_024_5EE4:
    ld hl, $0040                                  ; $5EE4: $21 $40 $00
    call Call_000_2FEB                            ; $5EE7: $CD $EB $2F
    jr jr_024_5EF2                                ; $5EEA: $18 $06

jr_024_5EEC:
    ld hl, $0180                                  ; $5EEC: $21 $80 $01
    call Call_000_2FEB                            ; $5EEF: $CD $EB $2F

jr_024_5EF2:
    ld hl, $0000                                  ; $5EF2: $21 $00 $00
    call Call_000_30B0                            ; $5EF5: $CD $B0 $30
    call Call_000_2CA9                            ; $5EF8: $CD $A9 $2C
    jp nc, Jump_024_5FAD                          ; $5EFB: $D2 $AD $5F

    inc hl                                        ; $5EFE: $23
    ld [hl], $FF                                  ; $5EFF: $36 $FF
    jp Jump_024_5FAD                              ; $5F01: $C3 $AD $5F


Jump_024_5F04:
    call Call_000_2CA2                            ; $5F04: $CD $A2 $2C
    jr z, jr_024_5F75                             ; $5F07: $28 $6C

    ld a, $B5                                     ; $5F09: $3E $B5
    call Call_000_1360                            ; $5F0B: $CD $60 $13
    ld a, $03                                     ; $5F0E: $3E $03
    call Call_000_3963                            ; $5F10: $CD $63 $39
    call Call_000_32CC                            ; $5F13: $CD $CC $32
    jr c, jr_024_5F56                             ; $5F16: $38 $3E

    jr nz, jr_024_5F38                            ; $5F18: $20 $1E

    ld hl, $0099                                  ; $5F1A: $21 $99 $00
    add hl, bc                                    ; $5F1D: $09
    ld a, [hl]                                    ; $5F1E: $7E
    ld hl, $0004                                  ; $5F1F: $21 $04 $00
    add hl, de                                    ; $5F22: $19
    ld [hl], a                                    ; $5F23: $77
    ld hl, $F800                                  ; $5F24: $21 $00 $F8
    call Call_000_2F79                            ; $5F27: $CD $79 $2F
    ld hl, $0200                                  ; $5F2A: $21 $00 $02
    call Call_000_2FEB                            ; $5F2D: $CD $EB $2F
    ld hl, $FD00                                  ; $5F30: $21 $00 $FD
    call Call_000_305D                            ; $5F33: $CD $5D $30
    jr jr_024_5F72                                ; $5F36: $18 $3A

jr_024_5F38:
    ld hl, $0099                                  ; $5F38: $21 $99 $00
    add hl, bc                                    ; $5F3B: $09
    ld a, [hl]                                    ; $5F3C: $7E
    ld hl, $0004                                  ; $5F3D: $21 $04 $00
    add hl, de                                    ; $5F40: $19
    ld [hl], a                                    ; $5F41: $77
    ld hl, $F800                                  ; $5F42: $21 $00 $F8
    call Call_000_2F79                            ; $5F45: $CD $79 $2F
    ld hl, $0300                                  ; $5F48: $21 $00 $03
    call Call_000_2FEB                            ; $5F4B: $CD $EB $2F
    ld hl, $FC80                                  ; $5F4E: $21 $80 $FC
    call Call_000_305D                            ; $5F51: $CD $5D $30
    jr jr_024_5F72                                ; $5F54: $18 $1C

jr_024_5F56:
    ld hl, $0099                                  ; $5F56: $21 $99 $00
    add hl, bc                                    ; $5F59: $09
    ld a, [hl]                                    ; $5F5A: $7E
    ld hl, $0004                                  ; $5F5B: $21 $04 $00
    add hl, de                                    ; $5F5E: $19
    ld [hl], a                                    ; $5F5F: $77
    ld hl, $F800                                  ; $5F60: $21 $00 $F8
    call Call_000_2F79                            ; $5F63: $CD $79 $2F
    ld hl, $0400                                  ; $5F66: $21 $00 $04
    call Call_000_2FEB                            ; $5F69: $CD $EB $2F
    ld hl, $FC00                                  ; $5F6C: $21 $00 $FC
    call Call_000_305D                            ; $5F6F: $CD $5D $30

jr_024_5F72:
    jp Jump_024_5F85                              ; $5F72: $C3 $85 $5F


jr_024_5F75:
    call Call_024_5FB1                            ; $5F75: $CD $B1 $5F
    ld a, $FE                                     ; $5F78: $3E $FE
    ld h, $FF                                     ; $5F7A: $26 $FF
    call Call_000_2D33                            ; $5F7C: $CD $33 $2D
    jp nc, Jump_024_5F85                          ; $5F7F: $D2 $85 $5F

    jp Jump_024_5F85                              ; $5F82: $C3 $85 $5F


Jump_024_5F85:
    ld hl, $0060                                  ; $5F85: $21 $60 $00
    call Call_000_30FF                            ; $5F88: $CD $FF $30
    jp nc, Jump_024_5FAD                          ; $5F8B: $D2 $AD $5F

    ld a, $18                                     ; $5F8E: $3E $18
    ld h, $28                                     ; $5F90: $26 $28
    call Call_000_2CBA                            ; $5F92: $CD $BA $2C
    jp Jump_024_5FB0                              ; $5F95: $C3 $B0 $5F


Jump_024_5F98:
    call Call_000_2CA2                            ; $5F98: $CD $A2 $2C
    jr z, jr_024_5FA2                             ; $5F9B: $28 $05

    ld a, $03                                     ; $5F9D: $3E $03
    call Call_000_3963                            ; $5F9F: $CD $63 $39

jr_024_5FA2:
    call Call_000_2CA9                            ; $5FA2: $CD $A9 $2C
    jp nc, Jump_024_5FAD                          ; $5FA5: $D2 $AD $5F

    call Call_000_2DB6                            ; $5FA8: $CD $B6 $2D
    jr jr_024_5FB0                                ; $5FAB: $18 $03

Jump_024_5FAD:
    call Call_000_2E25                            ; $5FAD: $CD $25 $2E

Jump_024_5FB0:
jr_024_5FB0:
    ret                                           ; $5FB0: $C9


Call_024_5FB1:
    call Call_000_32CC                            ; $5FB1: $CD $CC $32
    jr c, jr_024_5FB7                             ; $5FB4: $38 $01

    ret                                           ; $5FB6: $C9


jr_024_5FB7:
    ld hl, $0108                                  ; $5FB7: $21 $08 $01
    ld a, $92                                     ; $5FBA: $3E $92
    call Call_000_34A2                            ; $5FBC: $CD $A2 $34
    ret                                           ; $5FBF: $C9


    call Call_000_2EE0                            ; $5FC0: $CD $E0 $2E
    call Call_000_3517                            ; $5FC3: $CD $17 $35
    jp c, Jump_024_603C                           ; $5FC6: $DA $3C $60

    ld hl, $0018                                  ; $5FC9: $21 $18 $00
    add hl, de                                    ; $5FCC: $19
    ld a, [hl]                                    ; $5FCD: $7E
    cp $00                                        ; $5FCE: $FE $00
    jp z, Jump_024_5FE2                           ; $5FD0: $CA $E2 $5F

    cp $04                                        ; $5FD3: $FE $04
    jp z, Jump_024_600E                           ; $5FD5: $CA $0E $60

    cp $08                                        ; $5FD8: $FE $08
    jp z, Jump_024_6022                           ; $5FDA: $CA $22 $60

    cp $0C                                        ; $5FDD: $FE $0C
    jp z, Jump_024_602E                           ; $5FDF: $CA $2E $60

Jump_024_5FE2:
    call Call_000_2CA9                            ; $5FE2: $CD $A9 $2C
    jp nc, Jump_024_6039                          ; $5FE5: $D2 $39 $60

    call Call_000_32CC                            ; $5FE8: $CD $CC $32
    jr c, jr_024_5FF7                             ; $5FEB: $38 $0A

    jr nz, jr_024_5FF3                            ; $5FED: $20 $04

    ld a, $01                                     ; $5FEF: $3E $01
    jr jr_024_5FF9                                ; $5FF1: $18 $06

jr_024_5FF3:
    ld a, $03                                     ; $5FF3: $3E $03
    jr jr_024_5FF9                                ; $5FF5: $18 $02

jr_024_5FF7:
    ld a, $05                                     ; $5FF7: $3E $05

jr_024_5FF9:
    ld hl, $001D                                  ; $5FF9: $21 $1D $00
    add hl, de                                    ; $5FFC: $19
    ld [hl], a                                    ; $5FFD: $77
    ld hl, $020C                                  ; $5FFE: $21 $0C $02
    ld a, $D0                                     ; $6001: $3E $D0
    call Call_000_34B3                            ; $6003: $CD $B3 $34
    ld a, $09                                     ; $6006: $3E $09
    call Call_000_1360                            ; $6008: $CD $60 $13
    jp Jump_024_6039                              ; $600B: $C3 $39 $60


Jump_024_600E:
    ld hl, $020C                                  ; $600E: $21 $0C $02
    ld a, $D0                                     ; $6011: $3E $D0
    call Call_000_34A2                            ; $6013: $CD $A2 $34
    call Call_000_2CA9                            ; $6016: $CD $A9 $2C
    jp nc, Jump_024_6039                          ; $6019: $D2 $39 $60

    inc hl                                        ; $601C: $23
    ld [hl], $14                                  ; $601D: $36 $14
    jp Jump_024_6039                              ; $601F: $C3 $39 $60


Jump_024_6022:
    call Call_000_2CA9                            ; $6022: $CD $A9 $2C
    jp nc, Jump_024_6039                          ; $6025: $D2 $39 $60

    inc hl                                        ; $6028: $23
    ld [hl], $1E                                  ; $6029: $36 $1E
    jp Jump_024_6039                              ; $602B: $C3 $39 $60


Jump_024_602E:
    call Call_000_2CA9                            ; $602E: $CD $A9 $2C
    jp nc, Jump_024_6039                          ; $6031: $D2 $39 $60

    call Call_000_2DB6                            ; $6034: $CD $B6 $2D
    jr jr_024_603C                                ; $6037: $18 $03

Jump_024_6039:
    call Call_000_2E25                            ; $6039: $CD $25 $2E

Jump_024_603C:
jr_024_603C:
    ret                                           ; $603C: $C9


    call Call_000_2EE0                            ; $603D: $CD $E0 $2E
    call Call_000_3517                            ; $6040: $CD $17 $35
    jp c, Jump_024_6106                           ; $6043: $DA $06 $61

    ld hl, $0018                                  ; $6046: $21 $18 $00
    add hl, de                                    ; $6049: $19
    ld a, [hl]                                    ; $604A: $7E
    cp $00                                        ; $604B: $FE $00
    jp z, Jump_024_6062                           ; $604D: $CA $62 $60

    cp $04                                        ; $6050: $FE $04
    jp z, Jump_024_6076                           ; $6052: $CA $76 $60

    cp $08                                        ; $6055: $FE $08
    jp z, Jump_024_60BF                           ; $6057: $CA $BF $60

    cp $0C                                        ; $605A: $FE $0C
    jp z, Jump_024_60F2                           ; $605C: $CA $F2 $60

    jp Jump_024_6103                              ; $605F: $C3 $03 $61


Jump_024_6062:
    call Call_000_2CA9                            ; $6062: $CD $A9 $2C
    jp nc, Jump_024_6103                          ; $6065: $D2 $03 $61

    inc hl                                        ; $6068: $23
    ld [hl], $04                                  ; $6069: $36 $04
    ld hl, $020C                                  ; $606B: $21 $0C $02
    ld a, $12                                     ; $606E: $3E $12
    call Call_000_34B3                            ; $6070: $CD $B3 $34
    jp Jump_024_6103                              ; $6073: $C3 $03 $61


Jump_024_6076:
    call Call_000_2CA2                            ; $6076: $CD $A2 $2C
    jr z, jr_024_609D                             ; $6079: $28 $22

    ld a, $14                                     ; $607B: $3E $14
    call Call_000_1360                            ; $607D: $CD $60 $13
    call Call_000_32CC                            ; $6080: $CD $CC $32
    jr c, jr_024_6097                             ; $6083: $38 $12

    jr nz, jr_024_608F                            ; $6085: $20 $08

    ld hl, $0300                                  ; $6087: $21 $00 $03
    call Call_000_2FEB                            ; $608A: $CD $EB $2F
    jr jr_024_609D                                ; $608D: $18 $0E

jr_024_608F:
    ld hl, $0400                                  ; $608F: $21 $00 $04
    call Call_000_2FEB                            ; $6092: $CD $EB $2F
    jr jr_024_609D                                ; $6095: $18 $06

jr_024_6097:
    ld hl, $0500                                  ; $6097: $21 $00 $05
    call Call_000_2FEB                            ; $609A: $CD $EB $2F

jr_024_609D:
    call Call_024_60D4                            ; $609D: $CD $D4 $60
    ld hl, $0008                                  ; $60A0: $21 $08 $00
    call Call_000_30B0                            ; $60A3: $CD $B0 $30
    call Call_000_2CA9                            ; $60A6: $CD $A9 $2C
    jp nc, Jump_024_6103                          ; $60A9: $D2 $03 $61

    inc hl                                        ; $60AC: $23
    ld [hl], $02                                  ; $60AD: $36 $02
    call Call_000_32CC                            ; $60AF: $CD $CC $32
    jr c, jr_024_6103                             ; $60B2: $38 $4F

    ld hl, $0408                                  ; $60B4: $21 $08 $04
    ld a, $01                                     ; $60B7: $3E $01
    call Call_000_34B3                            ; $60B9: $CD $B3 $34
    jp Jump_024_6103                              ; $60BC: $C3 $03 $61


Jump_024_60BF:
    call Call_024_60E3                            ; $60BF: $CD $E3 $60
    ld hl, $0010                                  ; $60C2: $21 $10 $00
    call Call_000_30B0                            ; $60C5: $CD $B0 $30
    call Call_000_2CA9                            ; $60C8: $CD $A9 $2C
    jp nc, Jump_024_6103                          ; $60CB: $D2 $03 $61

    inc hl                                        ; $60CE: $23
    ld [hl], $1E                                  ; $60CF: $36 $1E
    jp Jump_024_6103                              ; $60D1: $C3 $03 $61


Call_024_60D4:
    call Call_000_32CC                            ; $60D4: $CD $CC $32
    jr c, jr_024_60DA                             ; $60D7: $38 $01

    ret                                           ; $60D9: $C9


jr_024_60DA:
    ld hl, $020C                                  ; $60DA: $21 $0C $02
    ld a, $12                                     ; $60DD: $3E $12
    call Call_000_34A2                            ; $60DF: $CD $A2 $34
    ret                                           ; $60E2: $C9


Call_024_60E3:
    call Call_000_32CC                            ; $60E3: $CD $CC $32
    jr c, jr_024_60E9                             ; $60E6: $38 $01

    ret                                           ; $60E8: $C9


jr_024_60E9:
    ld hl, $0108                                  ; $60E9: $21 $08 $01
    ld a, $12                                     ; $60EC: $3E $12
    call Call_000_34A2                            ; $60EE: $CD $A2 $34
    ret                                           ; $60F1: $C9


Jump_024_60F2:
    ld hl, $0020                                  ; $60F2: $21 $20 $00
    call Call_000_30B0                            ; $60F5: $CD $B0 $30
    call Call_000_2CA9                            ; $60F8: $CD $A9 $2C
    jp nc, Jump_024_6103                          ; $60FB: $D2 $03 $61

    call Call_000_2DB6                            ; $60FE: $CD $B6 $2D
    jr jr_024_6106                                ; $6101: $18 $03

Jump_024_6103:
jr_024_6103:
    jp Jump_000_2E25                              ; $6103: $C3 $25 $2E


Jump_024_6106:
jr_024_6106:
    ret                                           ; $6106: $C9


    call Call_000_2EE0                            ; $6107: $CD $E0 $2E
    call Call_000_3517                            ; $610A: $CD $17 $35
    jp c, Jump_024_62F6                           ; $610D: $DA $F6 $62

    ld hl, $0018                                  ; $6110: $21 $18 $00
    add hl, de                                    ; $6113: $19
    ld a, [hl]                                    ; $6114: $7E
    cp $00                                        ; $6115: $FE $00
    jp z, Jump_024_614A                           ; $6117: $CA $4A $61

    cp $04                                        ; $611A: $FE $04
    jp z, Jump_024_616A                           ; $611C: $CA $6A $61

    cp $08                                        ; $611F: $FE $08
    jp z, Jump_024_61BE                           ; $6121: $CA $BE $61

    cp $0C                                        ; $6124: $FE $0C
    jp z, Jump_024_61DC                           ; $6126: $CA $DC $61

    cp $10                                        ; $6129: $FE $10
    jp z, Jump_024_61FB                           ; $612B: $CA $FB $61

    cp $14                                        ; $612E: $FE $14
    jp z, Jump_024_6225                           ; $6130: $CA $25 $62

    cp $18                                        ; $6133: $FE $18
    jp z, Jump_024_6246                           ; $6135: $CA $46 $62

    cp $1C                                        ; $6138: $FE $1C
    jp z, Jump_024_629A                           ; $613A: $CA $9A $62

    cp $20                                        ; $613D: $FE $20
    jp z, Jump_024_62AD                           ; $613F: $CA $AD $62

    cp $24                                        ; $6142: $FE $24
    jp z, Jump_024_62C7                           ; $6144: $CA $C7 $62

    jp Jump_024_62F3                              ; $6147: $C3 $F3 $62


Jump_024_614A:
    call Call_000_2CA2                            ; $614A: $CD $A2 $2C
    jp z, Jump_024_6156                           ; $614D: $CA $56 $61

    ld hl, $0031                                  ; $6150: $21 $31 $00
    add hl, bc                                    ; $6153: $09
    ld [hl], $01                                  ; $6154: $36 $01

Jump_024_6156:
    call Call_000_2CA9                            ; $6156: $CD $A9 $2C
    jp nc, Jump_024_62F3                          ; $6159: $D2 $F3 $62

    inc hl                                        ; $615C: $23
    ld [hl], $0A                                  ; $615D: $36 $0A
    ld hl, $010B                                  ; $615F: $21 $0B $01
    ld a, $90                                     ; $6162: $3E $90
    call Call_000_34B3                            ; $6164: $CD $B3 $34
    jp Jump_024_62F3                              ; $6167: $C3 $F3 $62


Jump_024_616A:
    call Call_000_2CA2                            ; $616A: $CD $A2 $2C
    jr z, jr_024_6183                             ; $616D: $28 $14

    ld a, $11                                     ; $616F: $3E $11
    call Call_000_1360                            ; $6171: $CD $60 $13
    ld hl, $0400                                  ; $6174: $21 $00 $04
    call Call_000_2FEB                            ; $6177: $CD $EB $2F
    ld hl, $0021                                  ; $617A: $21 $21 $00
    add hl, bc                                    ; $617D: $09
    res 7, [hl]                                   ; $617E: $CB $BE
    jp Jump_024_6294                              ; $6180: $C3 $94 $62


jr_024_6183:
    call Call_000_3262                            ; $6183: $CD $62 $32
    jp nc, Jump_024_61A4                          ; $6186: $D2 $A4 $61

    jp nz, Jump_024_61B4                          ; $6189: $C2 $B4 $61

    ld a, $08                                     ; $618C: $3E $08
    ld h, $0A                                     ; $618E: $26 $0A
    call Call_000_2D19                            ; $6190: $CD $19 $2D
    ld hl, $051B                                  ; $6193: $21 $1B $05
    ld a, $00                                     ; $6196: $3E $00
    call Call_000_34B3                            ; $6198: $CD $B3 $34
    ld hl, $F000                                  ; $619B: $21 $00 $F0
    call Call_000_3496                            ; $619E: $CD $96 $34
    jp Jump_024_62F6                              ; $61A1: $C3 $F6 $62


Jump_024_61A4:
    call Call_000_2CA9                            ; $61A4: $CD $A9 $2C
    jp nc, Jump_024_6294                          ; $61A7: $D2 $94 $62

    ld a, $24                                     ; $61AA: $3E $24
    ld h, $1E                                     ; $61AC: $26 $1E
    call Call_000_2D19                            ; $61AE: $CD $19 $2D
    jp Jump_024_6294                              ; $61B1: $C3 $94 $62


Jump_024_61B4:
    ld a, $24                                     ; $61B4: $3E $24
    ld h, $1E                                     ; $61B6: $26 $1E
    call Call_000_2D19                            ; $61B8: $CD $19 $2D
    jp Jump_024_6294                              ; $61BB: $C3 $94 $62


Jump_024_61BE:
    call Call_000_2CA2                            ; $61BE: $CD $A2 $2C
    jr z, jr_024_61CE                             ; $61C1: $28 $0B

    ld hl, $0021                                  ; $61C3: $21 $21 $00
    add hl, bc                                    ; $61C6: $09
    set 7, [hl]                                   ; $61C7: $CB $FE
    ld a, $03                                     ; $61C9: $3E $03
    ld [$C2E2], a                                 ; $61CB: $EA $E2 $C2

jr_024_61CE:
    call Call_000_2CA9                            ; $61CE: $CD $A9 $2C
    jp nc, Jump_024_62F3                          ; $61D1: $D2 $F3 $62

    ld a, $05                                     ; $61D4: $3E $05
    call Call_000_3963                            ; $61D6: $CD $63 $39
    jp Jump_024_62F3                              ; $61D9: $C3 $F3 $62


Jump_024_61DC:
    call Call_000_2CA9                            ; $61DC: $CD $A9 $2C
    jp nc, Jump_024_62F3                          ; $61DF: $D2 $F3 $62

    inc hl                                        ; $61E2: $23
    ld [hl], $3C                                  ; $61E3: $36 $3C
    ld a, $04                                     ; $61E5: $3E $04
    call Call_000_3963                            ; $61E7: $CD $63 $39
    ld hl, $051B                                  ; $61EA: $21 $1B $05
    ld a, $00                                     ; $61ED: $3E $00
    call Call_000_34B3                            ; $61EF: $CD $B3 $34
    ld hl, $F000                                  ; $61F2: $21 $00 $F0
    call Call_000_3496                            ; $61F5: $CD $96 $34
    jp Jump_024_62F3                              ; $61F8: $C3 $F3 $62


Jump_024_61FB:
    call Call_000_2CA2                            ; $61FB: $CD $A2 $2C
    jr z, jr_024_6214                             ; $61FE: $28 $14

    ld hl, $002D                                  ; $6200: $21 $2D $00
    add hl, bc                                    ; $6203: $09
    ld a, [hl]                                    ; $6204: $7E
    or a                                          ; $6205: $B7
    jr nz, jr_024_620F                            ; $6206: $20 $07

    ld hl, $D6C2                                  ; $6208: $21 $C2 $D6
    set 7, [hl]                                   ; $620B: $CB $FE
    jr jr_024_6214                                ; $620D: $18 $05

jr_024_620F:
    ld hl, $D682                                  ; $620F: $21 $82 $D6
    set 7, [hl]                                   ; $6212: $CB $FE

jr_024_6214:
    call Call_000_2CA9                            ; $6214: $CD $A9 $2C
    jp nc, Jump_024_62F3                          ; $6217: $D2 $F3 $62

    inc hl                                        ; $621A: $23
    ld [hl], $1D                                  ; $621B: $36 $1D
    ld a, $06                                     ; $621D: $3E $06
    call Call_000_3963                            ; $621F: $CD $63 $39
    jp Jump_024_62F3                              ; $6222: $C3 $F3 $62


Jump_024_6225:
    ld hl, $010C                                  ; $6225: $21 $0C $01
    ld a, $82                                     ; $6228: $3E $82
    call Call_000_34A2                            ; $622A: $CD $A2 $34
    call Call_000_2CA9                            ; $622D: $CD $A9 $2C
    jp nc, Jump_024_62F3                          ; $6230: $D2 $F3 $62

    inc hl                                        ; $6233: $23
    ld [hl], $FF                                  ; $6234: $36 $FF
    ld a, $06                                     ; $6236: $3E $06
    call Call_000_3963                            ; $6238: $CD $63 $39
    ld hl, $0108                                  ; $623B: $21 $08 $01
    ld a, $81                                     ; $623E: $3E $81
    call Call_000_34B3                            ; $6240: $CD $B3 $34
    jp Jump_024_62F3                              ; $6243: $C3 $F3 $62


Jump_024_6246:
    call Call_000_2CA2                            ; $6246: $CD $A2 $2C
    jr z, jr_024_6287                             ; $6249: $28 $3C

    ld hl, $002D                                  ; $624B: $21 $2D $00
    add hl, bc                                    ; $624E: $09
    ld a, [hl]                                    ; $624F: $7E
    or a                                          ; $6250: $B7
    jr nz, jr_024_625A                            ; $6251: $20 $07

    ld hl, $D6C2                                  ; $6253: $21 $C2 $D6
    res 7, [hl]                                   ; $6256: $CB $BE
    jr jr_024_625F                                ; $6258: $18 $05

jr_024_625A:
    ld hl, $D682                                  ; $625A: $21 $82 $D6
    res 7, [hl]                                   ; $625D: $CB $BE

jr_024_625F:
    ld a, $B5                                     ; $625F: $3E $B5
    call Call_000_1360                            ; $6261: $CD $60 $13
    xor a                                         ; $6264: $AF
    ld [$C2E2], a                                 ; $6265: $EA $E2 $C2
    ld hl, $0099                                  ; $6268: $21 $99 $00
    add hl, bc                                    ; $626B: $09
    ld a, [hl]                                    ; $626C: $7E
    ld hl, $0004                                  ; $626D: $21 $04 $00
    add hl, de                                    ; $6270: $19
    ld [hl], a                                    ; $6271: $77
    ld hl, $F000                                  ; $6272: $21 $00 $F0
    call Call_000_2F79                            ; $6275: $CD $79 $2F
    ld hl, $0400                                  ; $6278: $21 $00 $04
    call Call_000_2FEB                            ; $627B: $CD $EB $2F
    ld hl, $FC00                                  ; $627E: $21 $00 $FC
    call Call_000_305D                            ; $6281: $CD $5D $30
    jp Jump_024_629A                              ; $6284: $C3 $9A $62


jr_024_6287:
    ld a, $FE                                     ; $6287: $3E $FE
    ld h, $FF                                     ; $6289: $26 $FF
    call Call_000_2D33                            ; $628B: $CD $33 $2D
    jp nc, Jump_024_629A                          ; $628E: $D2 $9A $62

    jp Jump_024_629A                              ; $6291: $C3 $9A $62


Jump_024_6294:
    call Call_000_3069                            ; $6294: $CD $69 $30
    jp Jump_024_62F3                              ; $6297: $C3 $F3 $62


Jump_024_629A:
    ld hl, $0060                                  ; $629A: $21 $60 $00
    call Call_000_30FF                            ; $629D: $CD $FF $30
    jp nc, Jump_024_62F3                          ; $62A0: $D2 $F3 $62

    ld a, $20                                     ; $62A3: $3E $20
    ld h, $1E                                     ; $62A5: $26 $1E
    call Call_000_2CBA                            ; $62A7: $CD $BA $2C
    jp Jump_024_62F6                              ; $62AA: $C3 $F6 $62


Jump_024_62AD:
    call Call_000_2CA2                            ; $62AD: $CD $A2 $2C
    jr z, jr_024_62B7                             ; $62B0: $28 $05

    ld a, $03                                     ; $62B2: $3E $03
    call Call_000_3963                            ; $62B4: $CD $63 $39

jr_024_62B7:
    call Call_000_2CA9                            ; $62B7: $CD $A9 $2C
    jp nc, Jump_024_62F3                          ; $62BA: $D2 $F3 $62

    ld a, $00                                     ; $62BD: $3E $00
    ld [$C2E2], a                                 ; $62BF: $EA $E2 $C2
    call Call_000_2DB6                            ; $62C2: $CD $B6 $2D
    jr jr_024_62F6                                ; $62C5: $18 $2F

Jump_024_62C7:
    call Call_000_326C                            ; $62C7: $CD $6C $32
    jp nc, Jump_024_62E8                          ; $62CA: $D2 $E8 $62

    jp nz, Jump_024_62E8                          ; $62CD: $C2 $E8 $62

    ld a, $08                                     ; $62D0: $3E $08
    ld h, $0A                                     ; $62D2: $26 $0A
    call Call_000_2D19                            ; $62D4: $CD $19 $2D
    ld hl, $051B                                  ; $62D7: $21 $1B $05
    ld a, $00                                     ; $62DA: $3E $00
    call Call_000_34B3                            ; $62DC: $CD $B3 $34
    ld hl, $F000                                  ; $62DF: $21 $00 $F0
    call Call_000_3496                            ; $62E2: $CD $96 $34
    jp Jump_024_62F6                              ; $62E5: $C3 $F6 $62


Jump_024_62E8:
    call Call_000_2CA9                            ; $62E8: $CD $A9 $2C
    jp nc, Jump_024_62F3                          ; $62EB: $D2 $F3 $62

    call Call_000_2DB6                            ; $62EE: $CD $B6 $2D
    jr jr_024_62F6                                ; $62F1: $18 $03

Jump_024_62F3:
    call Call_000_2E25                            ; $62F3: $CD $25 $2E

Jump_024_62F6:
jr_024_62F6:
    ret                                           ; $62F6: $C9


Call_024_62F7:
    ld a, $14                                     ; $62F7: $3E $14
    call Call_000_1360                            ; $62F9: $CD $60 $13
    push bc                                       ; $62FC: $C5
    push de                                       ; $62FD: $D5
    push hl                                       ; $62FE: $E5
    call Call_000_25D1                            ; $62FF: $CD $D1 $25
    ld hl, $0021                                  ; $6302: $21 $21 $00
    add hl, de                                    ; $6305: $19
    ld [hl], $24                                  ; $6306: $36 $24
    inc hl                                        ; $6308: $23
    ld [hl], $39                                  ; $6309: $36 $39
    inc hl                                        ; $630B: $23
    ld [hl], $63                                  ; $630C: $36 $63
    ld hl, $0011                                  ; $630E: $21 $11 $00
    add hl, de                                    ; $6311: $19
    ld [hl], $02                                  ; $6312: $36 $02
    inc hl                                        ; $6314: $23
    ld [hl], $A8                                  ; $6315: $36 $A8
    inc hl                                        ; $6317: $23
    ld [hl], $64                                  ; $6318: $36 $64
    inc hl                                        ; $631A: $23
    ld [hl], $00                                  ; $631B: $36 $00
    ld hl, $001C                                  ; $631D: $21 $1C $00
    add hl, de                                    ; $6320: $19
    ld [hl], $01                                  ; $6321: $36 $01
    inc hl                                        ; $6323: $23
    ld [hl], $01                                  ; $6324: $36 $01
    ld hl, $0029                                  ; $6326: $21 $29 $00
    add hl, de                                    ; $6329: $19
    ld [hl], $00                                  ; $632A: $36 $00
    inc hl                                        ; $632C: $23
    ld [hl], $04                                  ; $632D: $36 $04
    call Call_000_2614                            ; $632F: $CD $14 $26
    pop hl                                        ; $6332: $E1
    call Call_000_2F79                            ; $6333: $CD $79 $2F
    pop de                                        ; $6336: $D1
    pop bc                                        ; $6337: $C1
    ret                                           ; $6338: $C9


    ld hl, $002A                                  ; $6339: $21 $2A $00
    add hl, de                                    ; $633C: $19
    dec [hl]                                      ; $633D: $35
    jr z, jr_024_6344                             ; $633E: $28 $04

    call Call_000_2E25                            ; $6340: $CD $25 $2E
    ret                                           ; $6343: $C9


jr_024_6344:
    call Call_000_27F5                            ; $6344: $CD $F5 $27
    ret                                           ; $6347: $C9


    rst RST_38                                    ; $6348: $FF
    rst RST_38                                    ; $6349: $FF
    rst RST_38                                    ; $634A: $FF
    rst RST_38                                    ; $634B: $FF
    rst RST_38                                    ; $634C: $FF
    rst RST_38                                    ; $634D: $FF
    rst RST_38                                    ; $634E: $FF
    rst RST_38                                    ; $634F: $FF
    rst RST_38                                    ; $6350: $FF
    rst RST_38                                    ; $6351: $FF
    rst RST_38                                    ; $6352: $FF
    rst RST_38                                    ; $6353: $FF
    rst RST_38                                    ; $6354: $FF
    rst RST_38                                    ; $6355: $FF
    rst RST_38                                    ; $6356: $FF
    rst RST_38                                    ; $6357: $FF
    rst RST_38                                    ; $6358: $FF
    rst RST_38                                    ; $6359: $FF
    rst RST_38                                    ; $635A: $FF
    rst RST_38                                    ; $635B: $FF
    rst RST_38                                    ; $635C: $FF
    rst RST_38                                    ; $635D: $FF
    rst RST_38                                    ; $635E: $FF
    rst RST_38                                    ; $635F: $FF
    rst RST_38                                    ; $6360: $FF
    rst RST_38                                    ; $6361: $FF
    rst RST_38                                    ; $6362: $FF
    rst RST_38                                    ; $6363: $FF
    rst RST_38                                    ; $6364: $FF
    rst RST_38                                    ; $6365: $FF
    rst RST_38                                    ; $6366: $FF
    rst RST_38                                    ; $6367: $FF
    rst RST_38                                    ; $6368: $FF
    rst RST_38                                    ; $6369: $FF
    rst RST_38                                    ; $636A: $FF
    rst RST_38                                    ; $636B: $FF
    rst RST_38                                    ; $636C: $FF
    rst RST_38                                    ; $636D: $FF
    rst RST_38                                    ; $636E: $FF
    rst RST_38                                    ; $636F: $FF
    rst RST_38                                    ; $6370: $FF
    rst RST_38                                    ; $6371: $FF
    rst RST_38                                    ; $6372: $FF
    rst RST_38                                    ; $6373: $FF
    rst RST_38                                    ; $6374: $FF
    rst RST_38                                    ; $6375: $FF
    rst RST_38                                    ; $6376: $FF
    rst RST_38                                    ; $6377: $FF
    rst RST_38                                    ; $6378: $FF
    rst RST_38                                    ; $6379: $FF
    rst RST_38                                    ; $637A: $FF
    rst RST_38                                    ; $637B: $FF
    rst RST_38                                    ; $637C: $FF
    rst RST_38                                    ; $637D: $FF
    rst RST_38                                    ; $637E: $FF
    rst RST_38                                    ; $637F: $FF
    rst RST_38                                    ; $6380: $FF
    rst RST_38                                    ; $6381: $FF
    rst RST_38                                    ; $6382: $FF
    rst RST_38                                    ; $6383: $FF
    rst RST_38                                    ; $6384: $FF
    rst RST_38                                    ; $6385: $FF
    rst RST_38                                    ; $6386: $FF
    rst RST_38                                    ; $6387: $FF
    rst RST_38                                    ; $6388: $FF
    rst RST_38                                    ; $6389: $FF
    rst RST_38                                    ; $638A: $FF
    rst RST_38                                    ; $638B: $FF
    rst RST_38                                    ; $638C: $FF
    rst RST_38                                    ; $638D: $FF
    rst RST_38                                    ; $638E: $FF
    rst RST_38                                    ; $638F: $FF
    rst RST_38                                    ; $6390: $FF
    rst RST_38                                    ; $6391: $FF
    rst RST_38                                    ; $6392: $FF
    rst RST_38                                    ; $6393: $FF
    rst RST_38                                    ; $6394: $FF
    rst RST_38                                    ; $6395: $FF
    rst RST_38                                    ; $6396: $FF
    rst RST_38                                    ; $6397: $FF
    rst RST_38                                    ; $6398: $FF
    rst RST_38                                    ; $6399: $FF
    rst RST_38                                    ; $639A: $FF
    rst RST_38                                    ; $639B: $FF
    rst RST_38                                    ; $639C: $FF
    rst RST_38                                    ; $639D: $FF
    rst RST_38                                    ; $639E: $FF
    rst RST_38                                    ; $639F: $FF
    rst RST_38                                    ; $63A0: $FF
    rst RST_38                                    ; $63A1: $FF
    rst RST_38                                    ; $63A2: $FF
    rst RST_38                                    ; $63A3: $FF
    rst RST_38                                    ; $63A4: $FF
    rst RST_38                                    ; $63A5: $FF
    rst RST_38                                    ; $63A6: $FF
    rst RST_38                                    ; $63A7: $FF
    rst RST_38                                    ; $63A8: $FF
    rst RST_38                                    ; $63A9: $FF
    rst RST_38                                    ; $63AA: $FF
    rst RST_38                                    ; $63AB: $FF
    rst RST_38                                    ; $63AC: $FF
    rst RST_38                                    ; $63AD: $FF
    rst RST_38                                    ; $63AE: $FF
    rst RST_38                                    ; $63AF: $FF
    rst RST_38                                    ; $63B0: $FF
    rst RST_38                                    ; $63B1: $FF
    rst RST_38                                    ; $63B2: $FF
    rst RST_38                                    ; $63B3: $FF
    rst RST_38                                    ; $63B4: $FF
    rst RST_38                                    ; $63B5: $FF
    rst RST_38                                    ; $63B6: $FF
    rst RST_38                                    ; $63B7: $FF
    rst RST_38                                    ; $63B8: $FF
    rst RST_38                                    ; $63B9: $FF
    rst RST_38                                    ; $63BA: $FF
    rst RST_38                                    ; $63BB: $FF
    rst RST_38                                    ; $63BC: $FF
    rst RST_38                                    ; $63BD: $FF
    rst RST_38                                    ; $63BE: $FF
    rst RST_38                                    ; $63BF: $FF
    rst RST_38                                    ; $63C0: $FF
    rst RST_38                                    ; $63C1: $FF
    rst RST_38                                    ; $63C2: $FF
    rst RST_38                                    ; $63C3: $FF
    rst RST_38                                    ; $63C4: $FF
    rst RST_38                                    ; $63C5: $FF
    rst RST_38                                    ; $63C6: $FF
    rst RST_38                                    ; $63C7: $FF
    rst RST_38                                    ; $63C8: $FF
    rst RST_38                                    ; $63C9: $FF
    rst RST_38                                    ; $63CA: $FF
    rst RST_38                                    ; $63CB: $FF
    rst RST_38                                    ; $63CC: $FF
    rst RST_38                                    ; $63CD: $FF
    rst RST_38                                    ; $63CE: $FF
    rst RST_38                                    ; $63CF: $FF
    rst RST_38                                    ; $63D0: $FF
    rst RST_38                                    ; $63D1: $FF
    rst RST_38                                    ; $63D2: $FF
    rst RST_38                                    ; $63D3: $FF
    rst RST_38                                    ; $63D4: $FF
    rst RST_38                                    ; $63D5: $FF
    rst RST_38                                    ; $63D6: $FF
    rst RST_38                                    ; $63D7: $FF
    rst RST_38                                    ; $63D8: $FF
    rst RST_38                                    ; $63D9: $FF
    rst RST_38                                    ; $63DA: $FF
    rst RST_38                                    ; $63DB: $FF
    rst RST_38                                    ; $63DC: $FF
    rst RST_38                                    ; $63DD: $FF
    rst RST_38                                    ; $63DE: $FF
    rst RST_38                                    ; $63DF: $FF
    rst RST_38                                    ; $63E0: $FF
    rst RST_38                                    ; $63E1: $FF
    rst RST_38                                    ; $63E2: $FF
    rst RST_38                                    ; $63E3: $FF
    rst RST_38                                    ; $63E4: $FF
    rst RST_38                                    ; $63E5: $FF
    rst RST_38                                    ; $63E6: $FF
    rst RST_38                                    ; $63E7: $FF
    rst RST_38                                    ; $63E8: $FF
    rst RST_38                                    ; $63E9: $FF
    rst RST_38                                    ; $63EA: $FF
    rst RST_38                                    ; $63EB: $FF
    rst RST_38                                    ; $63EC: $FF
    rst RST_38                                    ; $63ED: $FF
    rst RST_38                                    ; $63EE: $FF
    rst RST_38                                    ; $63EF: $FF
    rst RST_38                                    ; $63F0: $FF
    rst RST_38                                    ; $63F1: $FF
    rst RST_38                                    ; $63F2: $FF
    rst RST_38                                    ; $63F3: $FF
    rst RST_38                                    ; $63F4: $FF
    rst RST_38                                    ; $63F5: $FF
    rst RST_38                                    ; $63F6: $FF
    rst RST_38                                    ; $63F7: $FF
    rst RST_38                                    ; $63F8: $FF
    rst RST_38                                    ; $63F9: $FF
    rst RST_38                                    ; $63FA: $FF
    rst RST_38                                    ; $63FB: $FF
    rst RST_38                                    ; $63FC: $FF
    rst RST_38                                    ; $63FD: $FF
    rst RST_38                                    ; $63FE: $FF
    rst RST_38                                    ; $63FF: $FF
    rst RST_38                                    ; $6400: $FF
    rst RST_38                                    ; $6401: $FF
    rst RST_38                                    ; $6402: $FF
    rst RST_38                                    ; $6403: $FF
    rst RST_38                                    ; $6404: $FF
    rst RST_38                                    ; $6405: $FF
    rst RST_38                                    ; $6406: $FF
    rst RST_38                                    ; $6407: $FF
    rst RST_38                                    ; $6408: $FF
    rst RST_38                                    ; $6409: $FF
    rst RST_38                                    ; $640A: $FF
    rst RST_38                                    ; $640B: $FF
    rst RST_38                                    ; $640C: $FF
    rst RST_38                                    ; $640D: $FF
    rst RST_38                                    ; $640E: $FF
    rst RST_38                                    ; $640F: $FF
    rst RST_38                                    ; $6410: $FF
    rst RST_38                                    ; $6411: $FF
    rst RST_38                                    ; $6412: $FF
    rst RST_38                                    ; $6413: $FF
    rst RST_38                                    ; $6414: $FF
    rst RST_38                                    ; $6415: $FF
    rst RST_38                                    ; $6416: $FF
    rst RST_38                                    ; $6417: $FF
    rst RST_38                                    ; $6418: $FF
    rst RST_38                                    ; $6419: $FF
    rst RST_38                                    ; $641A: $FF
    rst RST_38                                    ; $641B: $FF
    rst RST_38                                    ; $641C: $FF
    rst RST_38                                    ; $641D: $FF
    rst RST_38                                    ; $641E: $FF
    rst RST_38                                    ; $641F: $FF
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
