; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $026", ROMX[$4000], BANK[$26]

    call Call_000_31B6                            ; $4000: $CD $B6 $31
    jp c, Jump_026_4110                           ; $4003: $DA $10 $41

    jp z, Jump_026_4030                           ; $4006: $CA $30 $40

    call Call_000_3A2A                            ; $4009: $CD $2A $3A
    jp c, Jump_026_40BC                           ; $400C: $DA $BC $40

    jp z, Jump_026_40D0                           ; $400F: $CA $D0 $40

    call Call_000_39D3                            ; $4012: $CD $D3 $39
    jp nc, Jump_026_4110                          ; $4015: $D2 $10 $41

    jp z, Jump_026_4021                           ; $4018: $CA $21 $40

    jp nz, Jump_026_402D                          ; $401B: $C2 $2D $40

    jp Jump_026_4110                              ; $401E: $C3 $10 $41


Jump_026_4021:
    ld hl, $3AB9                                  ; $4021: $21 $B9 $3A
    call Call_000_2B78                            ; $4024: $CD $78 $2B
    jp c, Jump_026_40BC                           ; $4027: $DA $BC $40

    jp Jump_026_4110                              ; $402A: $C3 $10 $41


Jump_026_402D:
    jp Jump_026_4110                              ; $402D: $C3 $10 $41


Jump_026_4030:
    call Call_000_3A2A                            ; $4030: $CD $2A $3A
    jp c, Jump_026_40DB                           ; $4033: $DA $DB $40

    jp z, Jump_026_40FA                           ; $4036: $CA $FA $40

    call Call_000_39D3                            ; $4039: $CD $D3 $39
    jp nc, Jump_026_4110                          ; $403C: $D2 $10 $41

    jp z, Jump_026_4048                           ; $403F: $CA $48 $40

    jp nz, Jump_026_4071                          ; $4042: $C2 $71 $40

    jp Jump_026_4110                              ; $4045: $C3 $10 $41


Jump_026_4048:
    call Call_000_3209                            ; $4048: $CD $09 $32
    jr c, jr_026_4056                             ; $404B: $38 $09

    ld hl, $3AD4                                  ; $404D: $21 $D4 $3A
    call Call_000_2B78                            ; $4050: $CD $78 $2B
    jp c, Jump_026_40DB                           ; $4053: $DA $DB $40

jr_026_4056:
    call Call_000_3A61                            ; $4056: $CD $61 $3A
    jp c, Jump_026_410E                           ; $4059: $DA $0E $41

    ld hl, $3AB9                                  ; $405C: $21 $B9 $3A
    call Call_000_2B78                            ; $405F: $CD $78 $2B
    jp c, Jump_026_4094                           ; $4062: $DA $94 $40

    ld hl, $3AC2                                  ; $4065: $21 $C2 $3A
    call Call_000_2B78                            ; $4068: $CD $78 $2B
    jp c, Jump_026_40A8                           ; $406B: $DA $A8 $40

    jp Jump_026_4110                              ; $406E: $C3 $10 $41


Jump_026_4071:
    call Call_000_3209                            ; $4071: $CD $09 $32
    jp c, Jump_026_4088                           ; $4074: $DA $88 $40

    cp $01                                        ; $4077: $FE $01
    jr z, jr_026_4088                             ; $4079: $28 $0D

    cp $02                                        ; $407B: $FE $02
    jr z, jr_026_407F                             ; $407D: $28 $00

jr_026_407F:
    ld hl, $3AE5                                  ; $407F: $21 $E5 $3A
    call Call_000_2B78                            ; $4082: $CD $78 $2B
    jp c, Jump_026_40FA                           ; $4085: $DA $FA $40

Jump_026_4088:
jr_026_4088:
    ld hl, $3AC2                                  ; $4088: $21 $C2 $3A
    call Call_000_2B78                            ; $408B: $CD $78 $2B
    jp c, Jump_026_40D0                           ; $408E: $DA $D0 $40

    jp Jump_026_4110                              ; $4091: $C3 $10 $41


Jump_026_4094:
    call Call_000_32C5                            ; $4094: $CD $C5 $32
    jp nz, Jump_026_4110                          ; $4097: $C2 $10 $41

    call Call_000_2C23                            ; $409A: $CD $23 $2C
    ld a, $40                                     ; $409D: $3E $40
    call Call_000_32E2                            ; $409F: $CD $E2 $32
    call Call_000_34F1                            ; $40A2: $CD $F1 $34
    jp Jump_026_410E                              ; $40A5: $C3 $0E $41


Jump_026_40A8:
    call Call_000_32C5                            ; $40A8: $CD $C5 $32
    jp nz, Jump_026_4110                          ; $40AB: $C2 $10 $41

    call Call_000_2C23                            ; $40AE: $CD $23 $2C
    ld a, $42                                     ; $40B1: $3E $42
    call Call_000_32E2                            ; $40B3: $CD $E2 $32
    call Call_000_34F1                            ; $40B6: $CD $F1 $34
    jp Jump_026_410E                              ; $40B9: $C3 $0E $41


Jump_026_40BC:
    call Call_000_32C5                            ; $40BC: $CD $C5 $32
    jp nz, Jump_026_4110                          ; $40BF: $C2 $10 $41

    call Call_000_2C23                            ; $40C2: $CD $23 $2C
    ld a, $44                                     ; $40C5: $3E $44
    call Call_000_32E2                            ; $40C7: $CD $E2 $32
    call Call_000_34F1                            ; $40CA: $CD $F1 $34
    jp Jump_026_410E                              ; $40CD: $C3 $0E $41


Jump_026_40D0:
    call Call_000_2C23                            ; $40D0: $CD $23 $2C
    ld a, $46                                     ; $40D3: $3E $46
    call Call_000_32E2                            ; $40D5: $CD $E2 $32
    jp Jump_026_410E                              ; $40D8: $C3 $0E $41


Jump_026_40DB:
    call Call_000_32C5                            ; $40DB: $CD $C5 $32
    jp nz, Jump_026_4110                          ; $40DE: $C2 $10 $41

    call Call_000_2C23                            ; $40E1: $CD $23 $2C
    ld a, $4A                                     ; $40E4: $3E $4A
    call Call_000_32E2                            ; $40E6: $CD $E2 $32
    ld hl, $0021                                  ; $40E9: $21 $21 $00
    add hl, bc                                    ; $40EC: $09
    set 7, [hl]                                   ; $40ED: $CB $FE
    ld hl, $0111                                  ; $40EF: $21 $11 $01
    ld a, $61                                     ; $40F2: $3E $61
    call Call_000_34C4                            ; $40F4: $CD $C4 $34
    jp Jump_026_410E                              ; $40F7: $C3 $0E $41


Jump_026_40FA:
    call Call_000_2C23                            ; $40FA: $CD $23 $2C
    ld a, $4C                                     ; $40FD: $3E $4C
    call Call_000_32E2                            ; $40FF: $CD $E2 $32
    call Call_000_34F1                            ; $4102: $CD $F1 $34
    call Call_000_34FE                            ; $4105: $CD $FE $34
    jp Jump_026_410E                              ; $4108: $C3 $0E $41


    jp Jump_026_410E                              ; $410B: $C3 $0E $41


Jump_026_410E:
    scf                                           ; $410E: $37
    ret                                           ; $410F: $C9


Jump_026_4110:
    or a                                          ; $4110: $B7
    ret                                           ; $4111: $C9


    call Call_000_2EE0                            ; $4112: $CD $E0 $2E
    call Call_000_3517                            ; $4115: $CD $17 $35
    jp c, Jump_026_415E                           ; $4118: $DA $5E $41

    ld hl, $0018                                  ; $411B: $21 $18 $00
    add hl, de                                    ; $411E: $19
    ld a, [hl]                                    ; $411F: $7E
    cp $0C                                        ; $4120: $FE $0C
    jp z, Jump_026_412D                           ; $4122: $CA $2D $41

    cp $14                                        ; $4125: $FE $14
    jp z, Jump_026_4150                           ; $4127: $CA $50 $41

    jp Jump_026_415B                              ; $412A: $C3 $5B $41


Jump_026_412D:
    call Call_000_2CA2                            ; $412D: $CD $A2 $2C
    jp z, Jump_026_4144                           ; $4130: $CA $44 $41

    ld hl, $003C                                  ; $4133: $21 $3C $00
    add hl, bc                                    ; $4136: $09
    ld a, [hl]                                    ; $4137: $7E
    cp $42                                        ; $4138: $FE $42
    jr z, jr_026_4141                             ; $413A: $28 $05

    call Call_026_479B                            ; $413C: $CD $9B $47
    jr jr_026_4144                                ; $413F: $18 $03

jr_026_4141:
    call Call_026_4812                            ; $4141: $CD $12 $48

Jump_026_4144:
jr_026_4144:
    call Call_000_2CA9                            ; $4144: $CD $A9 $2C
    jp nc, Jump_026_415B                          ; $4147: $D2 $5B $41

    inc hl                                        ; $414A: $23
    ld [hl], $03                                  ; $414B: $36 $03
    jp Jump_026_415B                              ; $414D: $C3 $5B $41


Jump_026_4150:
    call Call_000_2CA9                            ; $4150: $CD $A9 $2C
    jp nc, Jump_026_415B                          ; $4153: $D2 $5B $41

    call Call_000_2DB6                            ; $4156: $CD $B6 $2D
    jr jr_026_415E                                ; $4159: $18 $03

Jump_026_415B:
    jp Jump_000_2E25                              ; $415B: $C3 $25 $2E


Jump_026_415E:
jr_026_415E:
    ret                                           ; $415E: $C9


    call Call_000_2EE0                            ; $415F: $CD $E0 $2E
    call Call_000_3517                            ; $4162: $CD $17 $35
    jp c, Jump_026_41E4                           ; $4165: $DA $E4 $41

    ld hl, $0018                                  ; $4168: $21 $18 $00
    add hl, de                                    ; $416B: $19
    ld a, [hl]                                    ; $416C: $7E
    cp $08                                        ; $416D: $FE $08
    jp z, Jump_026_417F                           ; $416F: $CA $7F $41

    cp $0C                                        ; $4172: $FE $0C
    jp z, Jump_026_41C3                           ; $4174: $CA $C3 $41

    cp $10                                        ; $4177: $FE $10
    jp z, Jump_026_41D6                           ; $4179: $CA $D6 $41

    jp Jump_026_41E1                              ; $417C: $C3 $E1 $41


Jump_026_417F:
    call Call_000_2CA2                            ; $417F: $CD $A2 $2C
    jp z, Jump_026_41B7                           ; $4182: $CA $B7 $41

    call Call_026_489B                            ; $4185: $CD $9B $48
    call Call_000_32CC                            ; $4188: $CD $CC $32
    jr c, jr_026_41AB                             ; $418B: $38 $1E

    jr nz, jr_026_419D                            ; $418D: $20 $0E

    ld hl, $FE00                                  ; $418F: $21 $00 $FE
    call Call_000_2FEB                            ; $4192: $CD $EB $2F
    ld hl, $FE00                                  ; $4195: $21 $00 $FE
    call Call_000_305D                            ; $4198: $CD $5D $30
    jr jr_026_41B7                                ; $419B: $18 $1A

jr_026_419D:
    ld hl, $FD00                                  ; $419D: $21 $00 $FD
    call Call_000_2FEB                            ; $41A0: $CD $EB $2F
    ld hl, $FD00                                  ; $41A3: $21 $00 $FD
    call Call_000_305D                            ; $41A6: $CD $5D $30
    jr jr_026_41B7                                ; $41A9: $18 $0C

jr_026_41AB:
    ld hl, $FC00                                  ; $41AB: $21 $00 $FC
    call Call_000_2FEB                            ; $41AE: $CD $EB $2F
    ld hl, $FC00                                  ; $41B1: $21 $00 $FC
    call Call_000_305D                            ; $41B4: $CD $5D $30

Jump_026_41B7:
jr_026_41B7:
    call Call_000_2CA9                            ; $41B7: $CD $A9 $2C
    jp nc, Jump_026_41C3                          ; $41BA: $D2 $C3 $41

    inc hl                                        ; $41BD: $23
    ld [hl], $FF                                  ; $41BE: $36 $FF
    jp Jump_026_41C3                              ; $41C0: $C3 $C3 $41


Jump_026_41C3:
    ld hl, $0060                                  ; $41C3: $21 $60 $00
    call Call_000_30FF                            ; $41C6: $CD $FF $30
    jp nc, Jump_026_41E1                          ; $41C9: $D2 $E1 $41

    ld a, $10                                     ; $41CC: $3E $10
    ld h, $0A                                     ; $41CE: $26 $0A
    call Call_000_2CBA                            ; $41D0: $CD $BA $2C
    jp Jump_026_41E4                              ; $41D3: $C3 $E4 $41


Jump_026_41D6:
    call Call_000_2CA9                            ; $41D6: $CD $A9 $2C
    jp nc, Jump_026_41E1                          ; $41D9: $D2 $E1 $41

    call Call_000_2DB6                            ; $41DC: $CD $B6 $2D
    jr jr_026_41E4                                ; $41DF: $18 $03

Jump_026_41E1:
    jp Jump_000_2E25                              ; $41E1: $C3 $25 $2E


Jump_026_41E4:
jr_026_41E4:
    ret                                           ; $41E4: $C9


    call Call_000_2EE0                            ; $41E5: $CD $E0 $2E
    call Call_000_3517                            ; $41E8: $CD $17 $35
    jp c, Jump_026_42EC                           ; $41EB: $DA $EC $42

    ld hl, $0018                                  ; $41EE: $21 $18 $00
    add hl, de                                    ; $41F1: $19
    ld a, [hl]                                    ; $41F2: $7E
    cp $00                                        ; $41F3: $FE $00
    jp z, Jump_026_4211                           ; $41F5: $CA $11 $42

    cp $04                                        ; $41F8: $FE $04
    jp z, Jump_026_4225                           ; $41FA: $CA $25 $42

    cp $08                                        ; $41FD: $FE $08
    jp z, Jump_026_4239                           ; $41FF: $CA $39 $42

    cp $0C                                        ; $4202: $FE $0C
    jp z, Jump_026_4299                           ; $4204: $CA $99 $42

    cp $10                                        ; $4207: $FE $10
    jp z, Jump_026_42CB                           ; $4209: $CA $CB $42

    cp $14                                        ; $420C: $FE $14
    jp z, Jump_026_42DE                           ; $420E: $CA $DE $42

Jump_026_4211:
    call Call_000_2CA9                            ; $4211: $CD $A9 $2C
    jp nc, Jump_026_42E9                          ; $4214: $D2 $E9 $42

    inc hl                                        ; $4217: $23
    ld [hl], $00                                  ; $4218: $36 $00
    ld hl, HeaderLogo                             ; $421A: $21 $04 $01
    ld a, $11                                     ; $421D: $3E $11
    call Call_000_34B3                            ; $421F: $CD $B3 $34
    jp Jump_026_42E9                              ; $4222: $C3 $E9 $42


Jump_026_4225:
    call Call_000_2CA9                            ; $4225: $CD $A9 $2C
    jp nc, Jump_026_42E9                          ; $4228: $D2 $E9 $42

    inc hl                                        ; $422B: $23
    ld [hl], $FF                                  ; $422C: $36 $FF
    ld hl, HeaderLogo                             ; $422E: $21 $04 $01
    ld a, $11                                     ; $4231: $3E $11
    call Call_000_34B3                            ; $4233: $CD $B3 $34
    jp Jump_026_42E9                              ; $4236: $C3 $E9 $42


Jump_026_4239:
    call Call_000_2CA2                            ; $4239: $CD $A2 $2C
    jr z, jr_026_4272                             ; $423C: $28 $34

    ld a, $12                                     ; $423E: $3E $12
    call Call_000_1360                            ; $4240: $CD $60 $13
    call Call_000_32CC                            ; $4243: $CD $CC $32
    jr c, jr_026_4266                             ; $4246: $38 $1E

    jr nz, jr_026_4258                            ; $4248: $20 $0E

    ld hl, $0400                                  ; $424A: $21 $00 $04
    call Call_000_2FEB                            ; $424D: $CD $EB $2F
    ld hl, $FD00                                  ; $4250: $21 $00 $FD
    call Call_000_305D                            ; $4253: $CD $5D $30
    jr jr_026_4272                                ; $4256: $18 $1A

jr_026_4258:
    ld hl, $0500                                  ; $4258: $21 $00 $05
    call Call_000_2FEB                            ; $425B: $CD $EB $2F
    ld hl, $FC80                                  ; $425E: $21 $80 $FC
    call Call_000_305D                            ; $4261: $CD $5D $30
    jr jr_026_4272                                ; $4264: $18 $0C

jr_026_4266:
    ld hl, $0600                                  ; $4266: $21 $00 $06
    call Call_000_2FEB                            ; $4269: $CD $EB $2F
    ld hl, $FC00                                  ; $426C: $21 $00 $FC
    call Call_000_305D                            ; $426F: $CD $5D $30

jr_026_4272:
    ld a, $FC                                     ; $4272: $3E $FC
    ld h, $FF                                     ; $4274: $26 $FF
    call Call_000_2D33                            ; $4276: $CD $33 $2D
    jp nc, Jump_026_42CB                          ; $4279: $D2 $CB $42

    call Call_000_32CC                            ; $427C: $CD $CC $32
    jr c, jr_026_428E                             ; $427F: $38 $0D

    jr nz, jr_026_428E                            ; $4281: $20 $0B

    ld hl, HeaderLogo                             ; $4283: $21 $04 $01
    ld a, $11                                     ; $4286: $3E $11
    call Call_000_34B3                            ; $4288: $CD $B3 $34
    jp Jump_026_42CB                              ; $428B: $C3 $CB $42


jr_026_428E:
    ld hl, $0108                                  ; $428E: $21 $08 $01
    ld a, $11                                     ; $4291: $3E $11
    call Call_000_34B3                            ; $4293: $CD $B3 $34
    jp Jump_026_42CB                              ; $4296: $C3 $CB $42


Jump_026_4299:
    ld a, $FE                                     ; $4299: $3E $FE
    ld h, $FF                                     ; $429B: $26 $FF
    call Call_000_2D33                            ; $429D: $CD $33 $2D
    jp nc, Jump_026_42CB                          ; $42A0: $D2 $CB $42

    call Call_000_32CC                            ; $42A3: $CD $CC $32
    jr c, jr_026_42C0                             ; $42A6: $38 $18

    jr nz, jr_026_42B5                            ; $42A8: $20 $0B

    ld hl, $0108                                  ; $42AA: $21 $08 $01
    ld a, $01                                     ; $42AD: $3E $01
    call Call_000_34B3                            ; $42AF: $CD $B3 $34
    jp Jump_026_42CB                              ; $42B2: $C3 $CB $42


jr_026_42B5:
    ld hl, $0108                                  ; $42B5: $21 $08 $01
    ld a, $01                                     ; $42B8: $3E $01
    call Call_000_34B3                            ; $42BA: $CD $B3 $34
    jp Jump_026_42CB                              ; $42BD: $C3 $CB $42


jr_026_42C0:
    ld hl, $010F                                  ; $42C0: $21 $0F $01
    ld a, $01                                     ; $42C3: $3E $01
    call Call_000_34B3                            ; $42C5: $CD $B3 $34
    jp Jump_026_42CB                              ; $42C8: $C3 $CB $42


Jump_026_42CB:
    ld hl, $0060                                  ; $42CB: $21 $60 $00
    call Call_000_30FF                            ; $42CE: $CD $FF $30
    jp nc, Jump_026_42E9                          ; $42D1: $D2 $E9 $42

    ld a, $14                                     ; $42D4: $3E $14
    ld h, $14                                     ; $42D6: $26 $14
    call Call_000_2CBA                            ; $42D8: $CD $BA $2C
    jp Jump_026_42EC                              ; $42DB: $C3 $EC $42


Jump_026_42DE:
    call Call_000_2CA9                            ; $42DE: $CD $A9 $2C
    jp nc, Jump_026_42E9                          ; $42E1: $D2 $E9 $42

    call Call_000_2DB6                            ; $42E4: $CD $B6 $2D
    jr jr_026_42EC                                ; $42E7: $18 $03

Jump_026_42E9:
    call Call_000_2E25                            ; $42E9: $CD $25 $2E

Jump_026_42EC:
jr_026_42EC:
    ret                                           ; $42EC: $C9


    call Call_000_2EE0                            ; $42ED: $CD $E0 $2E
    call Call_000_3517                            ; $42F0: $CD $17 $35
    jp c, Jump_026_4497                           ; $42F3: $DA $97 $44

    ld hl, $0018                                  ; $42F6: $21 $18 $00
    add hl, de                                    ; $42F9: $19
    ld a, [hl]                                    ; $42FA: $7E
    cp $00                                        ; $42FB: $FE $00
    jp z, Jump_026_4353                           ; $42FD: $CA $53 $43

    cp $04                                        ; $4300: $FE $04
    jp z, Jump_026_4362                           ; $4302: $CA $62 $43

    cp $08                                        ; $4305: $FE $08
    jp z, Jump_026_4362                           ; $4307: $CA $62 $43

    cp $0C                                        ; $430A: $FE $0C
    jp z, Jump_026_4362                           ; $430C: $CA $62 $43

    cp $10                                        ; $430F: $FE $10
    jp z, Jump_026_4362                           ; $4311: $CA $62 $43

    cp $14                                        ; $4314: $FE $14
    jp z, Jump_026_4365                           ; $4316: $CA $65 $43

    cp $18                                        ; $4319: $FE $18
    jp z, Jump_026_4371                           ; $431B: $CA $71 $43

    cp $1C                                        ; $431E: $FE $1C
    jp z, Jump_026_4380                           ; $4320: $CA $80 $43

    cp $20                                        ; $4323: $FE $20
    jp z, Jump_026_4383                           ; $4325: $CA $83 $43

    cp $24                                        ; $4328: $FE $24
    jp z, Jump_026_43BC                           ; $432A: $CA $BC $43

    cp $28                                        ; $432D: $FE $28
    jp z, Jump_026_43CB                           ; $432F: $CA $CB $43

    cp $2C                                        ; $4332: $FE $2C
    jp z, Jump_026_43E9                           ; $4334: $CA $E9 $43

    cp $30                                        ; $4337: $FE $30
    jp z, Jump_026_4407                           ; $4339: $CA $07 $44

    cp $34                                        ; $433C: $FE $34
    jp z, Jump_026_4424                           ; $433E: $CA $24 $44

    cp $38                                        ; $4341: $FE $38
    jp z, Jump_026_4443                           ; $4343: $CA $43 $44

    cp $3C                                        ; $4346: $FE $3C
    jp z, Jump_026_4463                           ; $4348: $CA $63 $44

    cp $40                                        ; $434B: $FE $40
    jp z, Jump_026_4489                           ; $434D: $CA $89 $44

    jp Jump_026_4494                              ; $4350: $C3 $94 $44


Jump_026_4353:
    call Call_000_2CA2                            ; $4353: $CD $A2 $2C
    jp z, Jump_026_435F                           ; $4356: $CA $5F $43

    ld hl, $0031                                  ; $4359: $21 $31 $00
    add hl, bc                                    ; $435C: $09
    ld [hl], $01                                  ; $435D: $36 $01

Jump_026_435F:
    jp Jump_026_4494                              ; $435F: $C3 $94 $44


Jump_026_4362:
    jp Jump_026_4494                              ; $4362: $C3 $94 $44


Jump_026_4365:
    call Call_000_2CA2                            ; $4365: $CD $A2 $2C
    jp z, Jump_026_436E                           ; $4368: $CA $6E $43

    call Call_026_4924                            ; $436B: $CD $24 $49

Jump_026_436E:
    jp Jump_026_4494                              ; $436E: $C3 $94 $44


Jump_026_4371:
    call Call_000_2CA2                            ; $4371: $CD $A2 $2C
    jp z, Jump_026_437D                           ; $4374: $CA $7D $43

    ld hl, $0021                                  ; $4377: $21 $21 $00
    add hl, bc                                    ; $437A: $09
    res 7, [hl]                                   ; $437B: $CB $BE

Jump_026_437D:
    jp Jump_026_4494                              ; $437D: $C3 $94 $44


Jump_026_4380:
    jp Jump_026_4494                              ; $4380: $C3 $94 $44


Jump_026_4383:
    ld hl, $0083                                  ; $4383: $21 $83 $00
    add hl, bc                                    ; $4386: $09
    bit 1, [hl]                                   ; $4387: $CB $4E
    jr nz, jr_026_439E                            ; $4389: $20 $13

    ld hl, $0085                                  ; $438B: $21 $85 $00
    add hl, bc                                    ; $438E: $09
    ld a, [hl]                                    ; $438F: $7E
    cp $1E                                        ; $4390: $FE $1E
    jr z, jr_026_439E                             ; $4392: $28 $0A

    ld hl, $0020                                  ; $4394: $21 $20 $00
    add hl, bc                                    ; $4397: $09
    bit 0, [hl]                                   ; $4398: $CB $46
    jr nz, jr_026_43B3                            ; $439A: $20 $17

    jr jr_026_43B6                                ; $439C: $18 $18

jr_026_439E:
    ld a, $24                                     ; $439E: $3E $24
    ld h, $01                                     ; $43A0: $26 $01
    call Call_000_2D19                            ; $43A2: $CD $19 $2D
    ld hl, $010D                                  ; $43A5: $21 $0D $01
    ld a, $80                                     ; $43A8: $3E $80
    call Call_000_34B3                            ; $43AA: $CD $B3 $34
    call Call_000_34F1                            ; $43AD: $CD $F1 $34
    jp Jump_026_4497                              ; $43B0: $C3 $97 $44


jr_026_43B3:
    jp Jump_026_4497                              ; $43B3: $C3 $97 $44


jr_026_43B6:
    call Call_000_2DB6                            ; $43B6: $CD $B6 $2D
    jp Jump_026_4497                              ; $43B9: $C3 $97 $44


Jump_026_43BC:
    call Call_000_2CA9                            ; $43BC: $CD $A9 $2C
    jp nc, Jump_026_4494                          ; $43BF: $D2 $94 $44

    ld hl, $009C                                  ; $43C2: $21 $9C $00
    add hl, bc                                    ; $43C5: $09
    ld [hl], $0A                                  ; $43C6: $36 $0A
    jp Jump_026_4494                              ; $43C8: $C3 $94 $44


Jump_026_43CB:
    call Call_000_2CA2                            ; $43CB: $CD $A2 $2C
    jr z, jr_026_43E6                             ; $43CE: $28 $16

    ld hl, $0099                                  ; $43D0: $21 $99 $00
    add hl, bc                                    ; $43D3: $09
    ld a, [hl]                                    ; $43D4: $7E
    ld hl, $0004                                  ; $43D5: $21 $04 $00
    add hl, de                                    ; $43D8: $19
    ld [hl], a                                    ; $43D9: $77
    ld hl, $E000                                  ; $43DA: $21 $00 $E0
    call Call_000_2F79                            ; $43DD: $CD $79 $2F
    ld hl, $D000                                  ; $43E0: $21 $00 $D0
    call Call_000_2F42                            ; $43E3: $CD $42 $2F

jr_026_43E6:
    jp Jump_026_4494                              ; $43E6: $C3 $94 $44


Jump_026_43E9:
    call Call_000_2CA2                            ; $43E9: $CD $A2 $2C
    jr z, jr_026_4404                             ; $43EC: $28 $16

    ld hl, $0099                                  ; $43EE: $21 $99 $00
    add hl, bc                                    ; $43F1: $09
    ld a, [hl]                                    ; $43F2: $7E
    ld hl, $0004                                  ; $43F3: $21 $04 $00
    add hl, de                                    ; $43F6: $19
    ld [hl], a                                    ; $43F7: $77
    ld hl, $F400                                  ; $43F8: $21 $00 $F4
    call Call_000_2F79                            ; $43FB: $CD $79 $2F
    ld hl, $FC00                                  ; $43FE: $21 $00 $FC
    call Call_000_2F42                            ; $4401: $CD $42 $2F

jr_026_4404:
    jp Jump_026_4494                              ; $4404: $C3 $94 $44


Jump_026_4407:
    call Call_000_2CA2                            ; $4407: $CD $A2 $2C
    jr z, jr_026_4421                             ; $440A: $28 $15

    call Call_026_499B                            ; $440C: $CD $9B $49
    ld hl, $0000                                  ; $440F: $21 $00 $00
    call Call_000_2FEB                            ; $4412: $CD $EB $2F
    ld hl, $FEA0                                  ; $4415: $21 $A0 $FE
    call Call_000_305D                            ; $4418: $CD $5D $30
    ld hl, $0000                                  ; $441B: $21 $00 $00
    call Call_000_2F42                            ; $441E: $CD $42 $2F

jr_026_4421:
    jp Jump_026_4476                              ; $4421: $C3 $76 $44


Jump_026_4424:
    call Call_000_2CA9                            ; $4424: $CD $A9 $2C
    jp nc, Jump_026_4476                          ; $4427: $D2 $76 $44

    ld hl, $009C                                  ; $442A: $21 $9C $00
    add hl, bc                                    ; $442D: $09
    dec [hl]                                      ; $442E: $35
    jr z, jr_026_443A                             ; $442F: $28 $09

    ld hl, $0014                                  ; $4431: $21 $14 $00
    add hl, de                                    ; $4434: $19
    ld [hl], $2C                                  ; $4435: $36 $2C
    jp Jump_026_4476                              ; $4437: $C3 $76 $44


jr_026_443A:
    ld hl, $001D                                  ; $443A: $21 $1D $00
    add hl, de                                    ; $443D: $19
    ld [hl], $03                                  ; $443E: $36 $03
    jp Jump_026_4463                              ; $4440: $C3 $63 $44


Jump_026_4443:
    call Call_000_2CA2                            ; $4443: $CD $A2 $2C
    jr z, jr_026_4457                             ; $4446: $28 $0F

    call Call_026_4A12                            ; $4448: $CD $12 $4A
    ld hl, $FE00                                  ; $444B: $21 $00 $FE
    call Call_000_2FEB                            ; $444E: $CD $EB $2F
    ld hl, $FE00                                  ; $4451: $21 $00 $FE
    call Call_000_305D                            ; $4454: $CD $5D $30

jr_026_4457:
    call Call_000_2CA9                            ; $4457: $CD $A9 $2C
    jp nc, Jump_026_4463                          ; $445A: $D2 $63 $44

    inc hl                                        ; $445D: $23
    ld [hl], $FF                                  ; $445E: $36 $FF
    jp Jump_026_4463                              ; $4460: $C3 $63 $44


Jump_026_4463:
    ld hl, $0060                                  ; $4463: $21 $60 $00
    call Call_000_30FF                            ; $4466: $CD $FF $30
    jp nc, Jump_026_4494                          ; $4469: $D2 $94 $44

    ld a, $40                                     ; $446C: $3E $40
    ld h, $0A                                     ; $446E: $26 $0A
    call Call_000_2CBA                            ; $4470: $CD $BA $2C
    jp Jump_026_4497                              ; $4473: $C3 $97 $44


Jump_026_4476:
    ld hl, $0030                                  ; $4476: $21 $30 $00
    call Call_000_30FF                            ; $4479: $CD $FF $30
    jp nc, Jump_026_4494                          ; $447C: $D2 $94 $44

    ld a, $40                                     ; $447F: $3E $40
    ld h, $0A                                     ; $4481: $26 $0A
    call Call_000_2CBA                            ; $4483: $CD $BA $2C
    jp Jump_026_4497                              ; $4486: $C3 $97 $44


Jump_026_4489:
    call Call_000_2CA9                            ; $4489: $CD $A9 $2C
    jp nc, Jump_026_4494                          ; $448C: $D2 $94 $44

    call Call_000_2DB6                            ; $448F: $CD $B6 $2D
    jr jr_026_4497                                ; $4492: $18 $03

Jump_026_4494:
    jp Jump_000_2E25                              ; $4494: $C3 $25 $2E


Jump_026_4497:
jr_026_4497:
    ret                                           ; $4497: $C9


    call Call_000_2EE0                            ; $4498: $CD $E0 $2E
    call Call_000_3517                            ; $449B: $CD $17 $35
    jp c, Jump_026_45F9                           ; $449E: $DA $F9 $45

    ld hl, $0018                                  ; $44A1: $21 $18 $00
    add hl, de                                    ; $44A4: $19
    ld a, [hl]                                    ; $44A5: $7E
    cp $00                                        ; $44A6: $FE $00
    jp z, Jump_026_44E5                           ; $44A8: $CA $E5 $44

    cp $04                                        ; $44AB: $FE $04
    jp z, Jump_026_4503                           ; $44AD: $CA $03 $45

    cp $08                                        ; $44B0: $FE $08
    jp z, Jump_026_451E                           ; $44B2: $CA $1E $45

    cp $0C                                        ; $44B5: $FE $0C
    jp z, Jump_026_4539                           ; $44B7: $CA $39 $45

    cp $10                                        ; $44BA: $FE $10
    jp z, Jump_026_4579                           ; $44BC: $CA $79 $45

    cp $14                                        ; $44BF: $FE $14
    jp z, Jump_026_458E                           ; $44C1: $CA $8E $45

    cp $18                                        ; $44C4: $FE $18
    jp z, Jump_026_45AD                           ; $44C6: $CA $AD $45

    cp $1C                                        ; $44C9: $FE $1C
    jp z, Jump_026_45EB                           ; $44CB: $CA $EB $45

    cp $20                                        ; $44CE: $FE $20
    jp z, Jump_026_4579                           ; $44D0: $CA $79 $45

    cp $24                                        ; $44D3: $FE $24
    jp z, Jump_026_458E                           ; $44D5: $CA $8E $45

    cp $28                                        ; $44D8: $FE $28
    jp z, Jump_026_45AD                           ; $44DA: $CA $AD $45

    cp $2C                                        ; $44DD: $FE $2C
    jp z, Jump_026_45EB                           ; $44DF: $CA $EB $45

    jp Jump_026_45F6                              ; $44E2: $C3 $F6 $45


Jump_026_44E5:
    call Call_000_2CA2                            ; $44E5: $CD $A2 $2C
    jp z, Jump_026_44F1                           ; $44E8: $CA $F1 $44

    ld hl, $0031                                  ; $44EB: $21 $31 $00
    add hl, bc                                    ; $44EE: $09
    ld [hl], $01                                  ; $44EF: $36 $01

Jump_026_44F1:
    call Call_000_2CA9                            ; $44F1: $CD $A9 $2C
    jp nc, Jump_026_45F6                          ; $44F4: $D2 $F6 $45

    inc hl                                        ; $44F7: $23
    ld [hl], $00                                  ; $44F8: $36 $00
    ld hl, $009C                                  ; $44FA: $21 $9C $00
    add hl, bc                                    ; $44FD: $09
    ld [hl], $32                                  ; $44FE: $36 $32
    jp Jump_026_45F6                              ; $4500: $C3 $F6 $45


Jump_026_4503:
    call Call_000_2CA2                            ; $4503: $CD $A2 $2C
    jp z, Jump_026_450C                           ; $4506: $CA $0C $45

    call Call_026_4AA5                            ; $4509: $CD $A5 $4A

Jump_026_450C:
    call Call_000_2CA9                            ; $450C: $CD $A9 $2C
    jp nc, Jump_026_45F6                          ; $450F: $D2 $F6 $45

    inc hl                                        ; $4512: $23
    ld [hl], $00                                  ; $4513: $36 $00
    ld hl, $0021                                  ; $4515: $21 $21 $00
    add hl, bc                                    ; $4518: $09
    res 7, [hl]                                   ; $4519: $CB $BE
    jp Jump_026_45F6                              ; $451B: $C3 $F6 $45


Jump_026_451E:
    call Call_026_456C                            ; $451E: $CD $6C $45
    jr c, jr_026_452F                             ; $4521: $38 $0C

    call Call_000_2CA9                            ; $4523: $CD $A9 $2C
    jp nc, Jump_026_45F6                          ; $4526: $D2 $F6 $45

    inc hl                                        ; $4529: $23
    ld [hl], $00                                  ; $452A: $36 $00
    jp Jump_026_45F6                              ; $452C: $C3 $F6 $45


jr_026_452F:
    ld a, $10                                     ; $452F: $3E $10
    ld h, $14                                     ; $4531: $26 $14
    call Call_000_2D19                            ; $4533: $CD $19 $2D
    jp Jump_026_45F9                              ; $4536: $C3 $F9 $45


Jump_026_4539:
    call Call_026_456C                            ; $4539: $CD $6C $45
    jr c, jr_026_4550                             ; $453C: $38 $12

    call Call_000_2CA9                            ; $453E: $CD $A9 $2C
    jp nc, Jump_026_45F6                          ; $4541: $D2 $F6 $45

    inc hl                                        ; $4544: $23
    ld [hl], $00                                  ; $4545: $36 $00
    ld hl, $0014                                  ; $4547: $21 $14 $00
    add hl, de                                    ; $454A: $19
    ld [hl], $04                                  ; $454B: $36 $04
    jp Jump_026_45F6                              ; $454D: $C3 $F6 $45


jr_026_4550:
    ld hl, $0002                                  ; $4550: $21 $02 $00
    add hl, de                                    ; $4553: $19
    bit 5, [hl]                                   ; $4554: $CB $6E
    jr nz, jr_026_4562                            ; $4556: $20 $0A

    ld a, $10                                     ; $4558: $3E $10
    ld h, $3C                                     ; $455A: $26 $3C
    call Call_000_2D19                            ; $455C: $CD $19 $2D
    jp Jump_026_45F9                              ; $455F: $C3 $F9 $45


jr_026_4562:
    ld a, $20                                     ; $4562: $3E $20
    ld h, $3C                                     ; $4564: $26 $3C
    call Call_000_2D19                            ; $4566: $CD $19 $2D
    jp Jump_026_45F9                              ; $4569: $C3 $F9 $45


Call_026_456C:
    ld hl, $01AA                                  ; $456C: $21 $AA $01
    add hl, de                                    ; $456F: $19
    ld a, [hl]                                    ; $4570: $7E
    or a                                          ; $4571: $B7
    jr nz, jr_026_4577                            ; $4572: $20 $03

    scf                                           ; $4574: $37
    ccf                                           ; $4575: $3F
    ret                                           ; $4576: $C9


jr_026_4577:
    ccf                                           ; $4577: $3F
    ret                                           ; $4578: $C9


Jump_026_4579:
    call Call_000_2CA2                            ; $4579: $CD $A2 $2C
    jp z, Jump_026_4582                           ; $457C: $CA $82 $45

    call Call_026_4AFB                            ; $457F: $CD $FB $4A

Jump_026_4582:
    call Call_000_2CA9                            ; $4582: $CD $A9 $2C
    jp nc, Jump_026_45F6                          ; $4585: $D2 $F6 $45

    inc hl                                        ; $4588: $23
    ld [hl], $3C                                  ; $4589: $36 $3C
    jp Jump_026_45F6                              ; $458B: $C3 $F6 $45


Jump_026_458E:
    call Call_000_2CA2                            ; $458E: $CD $A2 $2C
    jp z, Jump_026_4597                           ; $4591: $CA $97 $45

    call Call_026_4B42                            ; $4594: $CD $42 $4B

Jump_026_4597:
    call Call_000_2CA9                            ; $4597: $CD $A9 $2C
    jp nc, Jump_026_45F6                          ; $459A: $D2 $F6 $45

    inc hl                                        ; $459D: $23
    ld [hl], $08                                  ; $459E: $36 $08
    ld hl, $0099                                  ; $45A0: $21 $99 $00
    add hl, bc                                    ; $45A3: $09
    ld a, [hl]                                    ; $45A4: $7E
    ld hl, $009D                                  ; $45A5: $21 $9D $00
    add hl, bc                                    ; $45A8: $09
    ld [hl], a                                    ; $45A9: $77
    jp Jump_026_45F6                              ; $45AA: $C3 $F6 $45


Jump_026_45AD:
    call Call_000_2CA9                            ; $45AD: $CD $A9 $2C
    jp nc, Jump_026_45F6                          ; $45B0: $D2 $F6 $45

    ld hl, $0304                                  ; $45B3: $21 $04 $03
    ld a, $13                                     ; $45B6: $3E $13
    call Call_000_34C4                            ; $45B8: $CD $C4 $34
    ld hl, $0303                                  ; $45BB: $21 $03 $03
    ld a, $13                                     ; $45BE: $3E $13
    call Call_000_34D2                            ; $45C0: $CD $D2 $34
    ld hl, $0099                                  ; $45C3: $21 $99 $00
    add hl, bc                                    ; $45C6: $09
    ld a, [hl]                                    ; $45C7: $7E
    ld hl, $009D                                  ; $45C8: $21 $9D $00
    add hl, bc                                    ; $45CB: $09
    ld [hl], a                                    ; $45CC: $77
    call Call_026_45FA                            ; $45CD: $CD $FA $45
    ld hl, $009C                                  ; $45D0: $21 $9C $00
    add hl, bc                                    ; $45D3: $09
    dec [hl]                                      ; $45D4: $35
    jr z, jr_026_45E2                             ; $45D5: $28 $0B

    ld hl, $0014                                  ; $45D7: $21 $14 $00
    add hl, de                                    ; $45DA: $19
    ld a, [hl]                                    ; $45DB: $7E
    sub $04                                       ; $45DC: $D6 $04
    ld [hl], a                                    ; $45DE: $77
    jp Jump_026_45F6                              ; $45DF: $C3 $F6 $45


jr_026_45E2:
    ld hl, $001D                                  ; $45E2: $21 $1D $00
    add hl, de                                    ; $45E5: $19
    ld [hl], $14                                  ; $45E6: $36 $14
    jp Jump_026_45F6                              ; $45E8: $C3 $F6 $45


Jump_026_45EB:
    call Call_000_2CA9                            ; $45EB: $CD $A9 $2C
    jp nc, Jump_026_45F6                          ; $45EE: $D2 $F6 $45

    call Call_000_2DB6                            ; $45F1: $CD $B6 $2D
    jr jr_026_45F9                                ; $45F4: $18 $03

Jump_026_45F6:
    call Call_000_2E25                            ; $45F6: $CD $25 $2E

Jump_026_45F9:
jr_026_45F9:
    ret                                           ; $45F9: $C9


Call_026_45FA:
    ld hl, $0080                                  ; $45FA: $21 $80 $00
    add hl, de                                    ; $45FD: $19
    bit 7, [hl]                                   ; $45FE: $CB $7E
    jp z, Jump_026_460D                           ; $4600: $CA $0D $46

    ld hl, $0100                                  ; $4603: $21 $00 $01
    add hl, de                                    ; $4606: $19
    bit 7, [hl]                                   ; $4607: $CB $7E
    jp z, Jump_026_4619                           ; $4609: $CA $19 $46

    ret                                           ; $460C: $C9


Jump_026_460D:
    ld a, $0D                                     ; $460D: $3E $0D
    call Call_000_1360                            ; $460F: $CD $60 $13
    push de                                       ; $4612: $D5
    push bc                                       ; $4613: $C5
    call Call_000_25D1                            ; $4614: $CD $D1 $25
    jr jr_026_4623                                ; $4617: $18 $0A

Jump_026_4619:
    ld a, $0D                                     ; $4619: $3E $0D
    call Call_000_1360                            ; $461B: $CD $60 $13
    push de                                       ; $461E: $D5
    push bc                                       ; $461F: $C5
    call Call_000_25E1                            ; $4620: $CD $E1 $25

jr_026_4623:
    ld hl, $0021                                  ; $4623: $21 $21 $00
    add hl, de                                    ; $4626: $19
    ld [hl], $26                                  ; $4627: $36 $26
    inc hl                                        ; $4629: $23
    ld [hl], $42                                  ; $462A: $36 $42
    inc hl                                        ; $462C: $23
    ld [hl], $47                                  ; $462D: $36 $47
    ld hl, $0011                                  ; $462F: $21 $11 $00
    add hl, de                                    ; $4632: $19
    ld [hl], $02                                  ; $4633: $36 $02
    inc hl                                        ; $4635: $23
    ld [hl], $34                                  ; $4636: $36 $34
    inc hl                                        ; $4638: $23
    ld [hl], $64                                  ; $4639: $36 $64
    inc hl                                        ; $463B: $23
    ld [hl], $00                                  ; $463C: $36 $00
    ld hl, $001C                                  ; $463E: $21 $1C $00
    add hl, de                                    ; $4641: $19
    ld [hl], $03                                  ; $4642: $36 $03
    inc hl                                        ; $4644: $23
    ld [hl], $03                                  ; $4645: $36 $03
    ld hl, $0029                                  ; $4647: $21 $29 $00
    add hl, de                                    ; $464A: $19
    ld [hl], $00                                  ; $464B: $36 $00
    inc hl                                        ; $464D: $23
    ld [hl], $02                                  ; $464E: $36 $02
    call Call_000_2614                            ; $4650: $CD $14 $26
    ld hl, $8000                                  ; $4653: $21 $00 $80
    call Call_000_2F42                            ; $4656: $CD $42 $2F
    call Call_000_17E2                            ; $4659: $CD $E2 $17
    and $03                                       ; $465C: $E6 $03
    cp $03                                        ; $465E: $FE $03
    jr z, jr_026_4694                             ; $4660: $28 $32

    cp $02                                        ; $4662: $FE $02
    jr z, jr_026_4686                             ; $4664: $28 $20

    cp $01                                        ; $4666: $FE $01
    jr z, jr_026_4678                             ; $4668: $28 $0E

    ld hl, $FF70                                  ; $466A: $21 $70 $FF
    call Call_000_2FEB                            ; $466D: $CD $EB $2F
    ld hl, $0110                                  ; $4670: $21 $10 $01
    call Call_000_305D                            ; $4673: $CD $5D $30
    jr jr_026_46A2                                ; $4676: $18 $2A

jr_026_4678:
    ld hl, $FF60                                  ; $4678: $21 $60 $FF
    call Call_000_2FEB                            ; $467B: $CD $EB $2F
    ld hl, $0220                                  ; $467E: $21 $20 $02
    call Call_000_305D                            ; $4681: $CD $5D $30
    jr jr_026_46A2                                ; $4684: $18 $1C

jr_026_4686:
    ld hl, $0088                                  ; $4686: $21 $88 $00
    call Call_000_2FEB                            ; $4689: $CD $EB $2F
    ld hl, $0308                                  ; $468C: $21 $08 $03
    call Call_000_305D                            ; $468F: $CD $5D $30
    jr jr_026_46A2                                ; $4692: $18 $0E

jr_026_4694:
    ld hl, $0098                                  ; $4694: $21 $98 $00
    call Call_000_2FEB                            ; $4697: $CD $EB $2F
    ld hl, $0418                                  ; $469A: $21 $18 $04
    call Call_000_305D                            ; $469D: $CD $5D $30
    jr jr_026_46A2                                ; $46A0: $18 $00

jr_026_46A2:
    pop bc                                        ; $46A2: $C1
    call Call_026_4737                            ; $46A3: $CD $37 $47
    pop de                                        ; $46A6: $D1
    ret                                           ; $46A7: $C9


    ld a, $C3                                     ; $46A8: $3E $C3
    call Call_000_1360                            ; $46AA: $CD $60 $13
    push de                                       ; $46AD: $D5
    push bc                                       ; $46AE: $C5
    call Call_000_25F1                            ; $46AF: $CD $F1 $25
    ld hl, $0021                                  ; $46B2: $21 $21 $00
    add hl, de                                    ; $46B5: $19
    ld [hl], $26                                  ; $46B6: $36 $26
    inc hl                                        ; $46B8: $23
    ld [hl], $42                                  ; $46B9: $36 $42
    inc hl                                        ; $46BB: $23
    ld [hl], $47                                  ; $46BC: $36 $47
    ld hl, $0011                                  ; $46BE: $21 $11 $00
    add hl, de                                    ; $46C1: $19
    ld [hl], $02                                  ; $46C2: $36 $02
    inc hl                                        ; $46C4: $23
    ld [hl], $34                                  ; $46C5: $36 $34
    inc hl                                        ; $46C7: $23
    ld [hl], $64                                  ; $46C8: $36 $64
    inc hl                                        ; $46CA: $23
    ld [hl], $00                                  ; $46CB: $36 $00
    ld hl, $001C                                  ; $46CD: $21 $1C $00
    add hl, de                                    ; $46D0: $19
    ld [hl], $05                                  ; $46D1: $36 $05
    inc hl                                        ; $46D3: $23
    ld [hl], $05                                  ; $46D4: $36 $05
    ld hl, $0029                                  ; $46D6: $21 $29 $00
    add hl, de                                    ; $46D9: $19
    ld [hl], $00                                  ; $46DA: $36 $00
    inc hl                                        ; $46DC: $23
    ld [hl], $03                                  ; $46DD: $36 $03
    call Call_000_2614                            ; $46DF: $CD $14 $26
    ld hl, $8000                                  ; $46E2: $21 $00 $80
    call Call_000_2F42                            ; $46E5: $CD $42 $2F
    call Call_000_17E2                            ; $46E8: $CD $E2 $17
    and $03                                       ; $46EB: $E6 $03
    cp $03                                        ; $46ED: $FE $03
    jr z, jr_026_4723                             ; $46EF: $28 $32

    cp $02                                        ; $46F1: $FE $02
    jr z, jr_026_4715                             ; $46F3: $28 $20

    cp $01                                        ; $46F5: $FE $01
    jr z, jr_026_4707                             ; $46F7: $28 $0E

    ld hl, $FFC0                                  ; $46F9: $21 $C0 $FF
    call Call_000_2FEB                            ; $46FC: $CD $EB $2F
    ld hl, $0030                                  ; $46FF: $21 $30 $00
    call Call_000_305D                            ; $4702: $CD $5D $30
    jr jr_026_4731                                ; $4705: $18 $2A

jr_026_4707:
    ld hl, $FFD0                                  ; $4707: $21 $D0 $FF
    call Call_000_2FEB                            ; $470A: $CD $EB $2F
    ld hl, $0120                                  ; $470D: $21 $20 $01
    call Call_000_305D                            ; $4710: $CD $5D $30
    jr jr_026_4731                                ; $4713: $18 $1C

jr_026_4715:
    ld hl, $0050                                  ; $4715: $21 $50 $00
    call Call_000_2FEB                            ; $4718: $CD $EB $2F
    ld hl, $0240                                  ; $471B: $21 $40 $02
    call Call_000_305D                            ; $471E: $CD $5D $30
    jr jr_026_4731                                ; $4721: $18 $0E

jr_026_4723:
    ld hl, $0020                                  ; $4723: $21 $20 $00
    call Call_000_2FEB                            ; $4726: $CD $EB $2F
    ld hl, $0310                                  ; $4729: $21 $10 $03
    call Call_000_305D                            ; $472C: $CD $5D $30
    jr jr_026_4731                                ; $472F: $18 $00

jr_026_4731:
    pop bc                                        ; $4731: $C1
    call Call_026_4737                            ; $4732: $CD $37 $47
    pop de                                        ; $4735: $D1
    ret                                           ; $4736: $C9


Call_026_4737:
    ld hl, $009D                                  ; $4737: $21 $9D $00
    add hl, bc                                    ; $473A: $09
    ld a, [hl]                                    ; $473B: $7E
    ld hl, $0004                                  ; $473C: $21 $04 $00
    add hl, de                                    ; $473F: $19
    ld [hl], a                                    ; $4740: $77
    ret                                           ; $4741: $C9


    ld hl, $0060                                  ; $4742: $21 $60 $00
    call Call_000_315D                            ; $4745: $CD $5D $31
    jp c, Jump_026_4765                           ; $4748: $DA $65 $47

    ld hl, $0000                                  ; $474B: $21 $00 $00
    call Call_000_26F3                            ; $474E: $CD $F3 $26
    jp nc, Jump_026_479A                          ; $4751: $D2 $9A $47

    jp nz, Jump_026_475A                          ; $4754: $C2 $5A $47

    jp Jump_026_479A                              ; $4757: $C3 $9A $47


Jump_026_475A:
    ld hl, $002A                                  ; $475A: $21 $2A $00
    add hl, de                                    ; $475D: $19
    dec [hl]                                      ; $475E: $35
    jp z, Jump_026_4797                           ; $475F: $CA $97 $47

    jp Jump_026_4770                              ; $4762: $C3 $70 $47


Jump_026_4765:
    ld hl, $002A                                  ; $4765: $21 $2A $00
    add hl, de                                    ; $4768: $19
    dec [hl]                                      ; $4769: $35
    jp z, Jump_026_4797                           ; $476A: $CA $97 $47

    call Call_000_2637                            ; $476D: $CD $37 $26

Jump_026_4770:
    ld a, $01                                     ; $4770: $3E $01
    call Call_000_3963                            ; $4772: $CD $63 $39
    ld a, $C3                                     ; $4775: $3E $C3
    call Call_000_1360                            ; $4777: $CD $60 $13
    push bc                                       ; $477A: $C5
    ld hl, $000A                                  ; $477B: $21 $0A $00
    add hl, de                                    ; $477E: $19
    ld b, [hl]                                    ; $477F: $46
    inc hl                                        ; $4780: $23
    ld c, [hl]                                    ; $4781: $4E
    ld a, b                                       ; $4782: $78
    cpl                                           ; $4783: $2F
    ld b, a                                       ; $4784: $47
    ld a, c                                       ; $4785: $79
    cpl                                           ; $4786: $2F
    ld c, a                                       ; $4787: $4F
    inc c                                         ; $4788: $0C
    jr nz, jr_026_478C                            ; $4789: $20 $01

    inc b                                         ; $478B: $04

jr_026_478C:
    sra b                                         ; $478C: $CB $28
    rr c                                          ; $478E: $CB $19
    ld [hl], c                                    ; $4790: $71
    dec hl                                        ; $4791: $2B
    ld [hl], b                                    ; $4792: $70
    pop bc                                        ; $4793: $C1
    jp Jump_026_479A                              ; $4794: $C3 $9A $47


Jump_026_4797:
    call Call_000_27F5                            ; $4797: $CD $F5 $27

Jump_026_479A:
    ret                                           ; $479A: $C9


Call_026_479B:
    ld a, $10                                     ; $479B: $3E $10
    call Call_000_1360                            ; $479D: $CD $60 $13
    push bc                                       ; $47A0: $C5
    push de                                       ; $47A1: $D5
    ld hl, $0030                                  ; $47A2: $21 $30 $00
    add hl, bc                                    ; $47A5: $09
    ld a, [hl]                                    ; $47A6: $7E
    or a                                          ; $47A7: $B7
    jr nz, jr_026_47AD                            ; $47A8: $20 $03

    xor a                                         ; $47AA: $AF
    jr jr_026_47AE                                ; $47AB: $18 $01

jr_026_47AD:
    scf                                           ; $47AD: $37

jr_026_47AE:
    ld hl, $0022                                  ; $47AE: $21 $22 $00
    push af                                       ; $47B1: $F5
    add hl, bc                                    ; $47B2: $09
    pop af                                        ; $47B3: $F1
    ld a, [hl]                                    ; $47B4: $7E
    push af                                       ; $47B5: $F5
    call Call_000_25D1                            ; $47B6: $CD $D1 $25
    ld hl, $0021                                  ; $47B9: $21 $21 $00
    add hl, de                                    ; $47BC: $19
    ld [hl], $24                                  ; $47BD: $36 $24
    inc hl                                        ; $47BF: $23
    ld [hl], $A2                                  ; $47C0: $36 $A2
    inc hl                                        ; $47C2: $23
    ld [hl], $49                                  ; $47C3: $36 $49
    ld hl, $0011                                  ; $47C5: $21 $11 $00
    add hl, de                                    ; $47C8: $19
    ld [hl], $02                                  ; $47C9: $36 $02
    inc hl                                        ; $47CB: $23
    ld [hl], $FE                                  ; $47CC: $36 $FE
    inc hl                                        ; $47CE: $23
    ld [hl], $63                                  ; $47CF: $36 $63
    inc hl                                        ; $47D1: $23
    ld [hl], $00                                  ; $47D2: $36 $00
    ld hl, $001C                                  ; $47D4: $21 $1C $00
    add hl, de                                    ; $47D7: $19
    ld [hl], $00                                  ; $47D8: $36 $00
    inc hl                                        ; $47DA: $23
    ld [hl], $00                                  ; $47DB: $36 $00
    ld hl, $0029                                  ; $47DD: $21 $29 $00
    add hl, de                                    ; $47E0: $19
    ld [hl], $00                                  ; $47E1: $36 $00
    call Call_000_2614                            ; $47E3: $CD $14 $26
    ld hl, $2000                                  ; $47E6: $21 $00 $20
    call Call_000_2F79                            ; $47E9: $CD $79 $2F
    ld hl, $F600                                  ; $47EC: $21 $00 $F6
    call Call_000_2F42                            ; $47EF: $CD $42 $2F
    pop af                                        ; $47F2: $F1
    jr c, jr_026_4803                             ; $47F3: $38 $0E

    bit 1, a                                      ; $47F5: $CB $4F
    jr nz, jr_026_47FE                            ; $47F7: $20 $05

    ld hl, $0200                                  ; $47F9: $21 $00 $02
    jr jr_026_4806                                ; $47FC: $18 $08

jr_026_47FE:
    ld hl, $0300                                  ; $47FE: $21 $00 $03
    jr jr_026_4806                                ; $4801: $18 $03

jr_026_4803:
    ld hl, $0400                                  ; $4803: $21 $00 $04

jr_026_4806:
    call Call_000_2FEB                            ; $4806: $CD $EB $2F
    ld hl, $0000                                  ; $4809: $21 $00 $00
    call Call_000_305D                            ; $480C: $CD $5D $30
    pop de                                        ; $480F: $D1
    pop bc                                        ; $4810: $C1
    ret                                           ; $4811: $C9


Call_026_4812:
    ld a, $10                                     ; $4812: $3E $10
    call Call_000_1360                            ; $4814: $CD $60 $13
    push bc                                       ; $4817: $C5
    push de                                       ; $4818: $D5
    ld hl, $0030                                  ; $4819: $21 $30 $00
    add hl, bc                                    ; $481C: $09
    ld a, [hl]                                    ; $481D: $7E
    or a                                          ; $481E: $B7
    jr nz, jr_026_4824                            ; $481F: $20 $03

    xor a                                         ; $4821: $AF
    jr jr_026_4825                                ; $4822: $18 $01

jr_026_4824:
    scf                                           ; $4824: $37

jr_026_4825:
    ld hl, $0022                                  ; $4825: $21 $22 $00
    push af                                       ; $4828: $F5
    add hl, bc                                    ; $4829: $09
    pop af                                        ; $482A: $F1
    ld a, [hl]                                    ; $482B: $7E
    push af                                       ; $482C: $F5
    call Call_000_25D1                            ; $482D: $CD $D1 $25
    ld hl, $0021                                  ; $4830: $21 $21 $00
    add hl, de                                    ; $4833: $19
    ld [hl], $24                                  ; $4834: $36 $24
    inc hl                                        ; $4836: $23
    ld [hl], $A2                                  ; $4837: $36 $A2
    inc hl                                        ; $4839: $23
    ld [hl], $49                                  ; $483A: $36 $49
    ld hl, $0011                                  ; $483C: $21 $11 $00
    add hl, de                                    ; $483F: $19
    ld [hl], $02                                  ; $4840: $36 $02
    inc hl                                        ; $4842: $23
    ld [hl], $10                                  ; $4843: $36 $10
    inc hl                                        ; $4845: $23
    ld [hl], $64                                  ; $4846: $36 $64
    inc hl                                        ; $4848: $23
    ld [hl], $00                                  ; $4849: $36 $00
    ld hl, $001C                                  ; $484B: $21 $1C $00
    add hl, de                                    ; $484E: $19
    ld [hl], $00                                  ; $484F: $36 $00
    inc hl                                        ; $4851: $23
    ld [hl], $00                                  ; $4852: $36 $00
    ld hl, $0029                                  ; $4854: $21 $29 $00
    add hl, de                                    ; $4857: $19
    ld [hl], $00                                  ; $4858: $36 $00
    call Call_000_2614                            ; $485A: $CD $14 $26
    ld hl, $1800                                  ; $485D: $21 $00 $18
    call Call_000_2F79                            ; $4860: $CD $79 $2F
    ld hl, $D800                                  ; $4863: $21 $00 $D8
    call Call_000_2F42                            ; $4866: $CD $42 $2F
    pop af                                        ; $4869: $F1
    jr c, jr_026_488C                             ; $486A: $38 $20

    bit 1, a                                      ; $486C: $CB $4F
    jr nz, jr_026_487E                            ; $486E: $20 $0E

    ld hl, $0100                                  ; $4870: $21 $00 $01
    call Call_000_2FEB                            ; $4873: $CD $EB $2F
    ld hl, $FF00                                  ; $4876: $21 $00 $FF
    call Call_000_305D                            ; $4879: $CD $5D $30
    jr jr_026_4898                                ; $487C: $18 $1A

jr_026_487E:
    ld hl, $0200                                  ; $487E: $21 $00 $02
    call Call_000_2FEB                            ; $4881: $CD $EB $2F
    ld hl, $FE00                                  ; $4884: $21 $00 $FE
    call Call_000_305D                            ; $4887: $CD $5D $30
    jr jr_026_4898                                ; $488A: $18 $0C

jr_026_488C:
    ld hl, $0400                                  ; $488C: $21 $00 $04
    call Call_000_2FEB                            ; $488F: $CD $EB $2F
    ld hl, $FC00                                  ; $4892: $21 $00 $FC
    call Call_000_305D                            ; $4895: $CD $5D $30

jr_026_4898:
    pop de                                        ; $4898: $D1
    pop bc                                        ; $4899: $C1
    ret                                           ; $489A: $C9


Call_026_489B:
    ld a, $10                                     ; $489B: $3E $10
    call Call_000_1360                            ; $489D: $CD $60 $13
    push bc                                       ; $48A0: $C5
    push de                                       ; $48A1: $D5
    ld hl, $0030                                  ; $48A2: $21 $30 $00
    add hl, bc                                    ; $48A5: $09
    ld a, [hl]                                    ; $48A6: $7E
    or a                                          ; $48A7: $B7
    jr nz, jr_026_48AD                            ; $48A8: $20 $03

    xor a                                         ; $48AA: $AF
    jr jr_026_48AE                                ; $48AB: $18 $01

jr_026_48AD:
    scf                                           ; $48AD: $37

jr_026_48AE:
    ld hl, $0022                                  ; $48AE: $21 $22 $00
    push af                                       ; $48B1: $F5
    add hl, bc                                    ; $48B2: $09
    pop af                                        ; $48B3: $F1
    ld a, [hl]                                    ; $48B4: $7E
    push af                                       ; $48B5: $F5
    call Call_000_25D1                            ; $48B6: $CD $D1 $25
    ld hl, $0021                                  ; $48B9: $21 $21 $00
    add hl, de                                    ; $48BC: $19
    ld [hl], $24                                  ; $48BD: $36 $24
    inc hl                                        ; $48BF: $23
    ld [hl], $A2                                  ; $48C0: $36 $A2
    inc hl                                        ; $48C2: $23
    ld [hl], $49                                  ; $48C3: $36 $49
    ld hl, $0011                                  ; $48C5: $21 $11 $00
    add hl, de                                    ; $48C8: $19
    ld [hl], $02                                  ; $48C9: $36 $02
    inc hl                                        ; $48CB: $23
    ld [hl], $22                                  ; $48CC: $36 $22
    inc hl                                        ; $48CE: $23
    ld [hl], $64                                  ; $48CF: $36 $64
    inc hl                                        ; $48D1: $23
    ld [hl], $00                                  ; $48D2: $36 $00
    ld hl, $001C                                  ; $48D4: $21 $1C $00
    add hl, de                                    ; $48D7: $19
    ld [hl], $00                                  ; $48D8: $36 $00
    inc hl                                        ; $48DA: $23
    ld [hl], $00                                  ; $48DB: $36 $00
    ld hl, $0029                                  ; $48DD: $21 $29 $00
    add hl, de                                    ; $48E0: $19
    ld [hl], $00                                  ; $48E1: $36 $00
    call Call_000_2614                            ; $48E3: $CD $14 $26
    ld hl, $2800                                  ; $48E6: $21 $00 $28
    call Call_000_2F79                            ; $48E9: $CD $79 $2F
    ld hl, $0800                                  ; $48EC: $21 $00 $08
    call Call_000_2F42                            ; $48EF: $CD $42 $2F
    pop af                                        ; $48F2: $F1
    jr c, jr_026_4915                             ; $48F3: $38 $20

    bit 1, a                                      ; $48F5: $CB $4F
    jr nz, jr_026_4907                            ; $48F7: $20 $0E

    ld hl, $0100                                  ; $48F9: $21 $00 $01
    call Call_000_2FEB                            ; $48FC: $CD $EB $2F
    ld hl, $0100                                  ; $48FF: $21 $00 $01
    call Call_000_305D                            ; $4902: $CD $5D $30
    jr jr_026_4921                                ; $4905: $18 $1A

jr_026_4907:
    ld hl, $0200                                  ; $4907: $21 $00 $02
    call Call_000_2FEB                            ; $490A: $CD $EB $2F
    ld hl, $0200                                  ; $490D: $21 $00 $02
    call Call_000_305D                            ; $4910: $CD $5D $30
    jr jr_026_4921                                ; $4913: $18 $0C

jr_026_4915:
    ld hl, $0400                                  ; $4915: $21 $00 $04
    call Call_000_2FEB                            ; $4918: $CD $EB $2F
    ld hl, $0400                                  ; $491B: $21 $00 $04
    call Call_000_305D                            ; $491E: $CD $5D $30

jr_026_4921:
    pop de                                        ; $4921: $D1
    pop bc                                        ; $4922: $C1
    ret                                           ; $4923: $C9


Call_026_4924:
    ld a, $10                                     ; $4924: $3E $10
    call Call_000_1360                            ; $4926: $CD $60 $13
    push bc                                       ; $4929: $C5
    push de                                       ; $492A: $D5
    ld hl, $0030                                  ; $492B: $21 $30 $00
    add hl, bc                                    ; $492E: $09
    ld a, [hl]                                    ; $492F: $7E
    or a                                          ; $4930: $B7
    jr nz, jr_026_4936                            ; $4931: $20 $03

    xor a                                         ; $4933: $AF
    jr jr_026_4937                                ; $4934: $18 $01

jr_026_4936:
    scf                                           ; $4936: $37

jr_026_4937:
    ld hl, $0022                                  ; $4937: $21 $22 $00
    push af                                       ; $493A: $F5
    add hl, bc                                    ; $493B: $09
    pop af                                        ; $493C: $F1
    ld a, [hl]                                    ; $493D: $7E
    push af                                       ; $493E: $F5
    call Call_000_25D1                            ; $493F: $CD $D1 $25
    ld hl, $0021                                  ; $4942: $21 $21 $00
    add hl, de                                    ; $4945: $19
    ld [hl], $24                                  ; $4946: $36 $24
    inc hl                                        ; $4948: $23
    ld [hl], $A2                                  ; $4949: $36 $A2
    inc hl                                        ; $494B: $23
    ld [hl], $49                                  ; $494C: $36 $49
    ld hl, $0011                                  ; $494E: $21 $11 $00
    add hl, de                                    ; $4951: $19
    ld [hl], $02                                  ; $4952: $36 $02
    inc hl                                        ; $4954: $23
    ld [hl], $FE                                  ; $4955: $36 $FE
    inc hl                                        ; $4957: $23
    ld [hl], $63                                  ; $4958: $36 $63
    inc hl                                        ; $495A: $23
    ld [hl], $00                                  ; $495B: $36 $00
    ld hl, $001C                                  ; $495D: $21 $1C $00
    add hl, de                                    ; $4960: $19
    ld [hl], $00                                  ; $4961: $36 $00
    inc hl                                        ; $4963: $23
    ld [hl], $00                                  ; $4964: $36 $00
    ld hl, $0029                                  ; $4966: $21 $29 $00
    add hl, de                                    ; $4969: $19
    ld [hl], $00                                  ; $496A: $36 $00
    call Call_000_2614                            ; $496C: $CD $14 $26
    ld hl, $2000                                  ; $496F: $21 $00 $20
    call Call_000_2F79                            ; $4972: $CD $79 $2F
    ld hl, $F600                                  ; $4975: $21 $00 $F6
    call Call_000_2F42                            ; $4978: $CD $42 $2F
    pop af                                        ; $497B: $F1
    jr c, jr_026_498C                             ; $497C: $38 $0E

    bit 1, a                                      ; $497E: $CB $4F
    jr nz, jr_026_4987                            ; $4980: $20 $05

    ld hl, $0500                                  ; $4982: $21 $00 $05
    jr jr_026_498F                                ; $4985: $18 $08

jr_026_4987:
    ld hl, $0500                                  ; $4987: $21 $00 $05
    jr jr_026_498F                                ; $498A: $18 $03

jr_026_498C:
    ld hl, $0500                                  ; $498C: $21 $00 $05

jr_026_498F:
    call Call_000_2FEB                            ; $498F: $CD $EB $2F
    ld hl, $0000                                  ; $4992: $21 $00 $00
    call Call_000_305D                            ; $4995: $CD $5D $30
    pop de                                        ; $4998: $D1
    pop bc                                        ; $4999: $C1
    ret                                           ; $499A: $C9


Call_026_499B:
    ld a, $10                                     ; $499B: $3E $10
    call Call_000_1360                            ; $499D: $CD $60 $13
    push bc                                       ; $49A0: $C5
    push de                                       ; $49A1: $D5
    ld hl, $0030                                  ; $49A2: $21 $30 $00
    add hl, bc                                    ; $49A5: $09
    ld a, [hl]                                    ; $49A6: $7E
    or a                                          ; $49A7: $B7
    jr nz, jr_026_49AD                            ; $49A8: $20 $03

    xor a                                         ; $49AA: $AF
    jr jr_026_49AE                                ; $49AB: $18 $01

jr_026_49AD:
    scf                                           ; $49AD: $37

jr_026_49AE:
    ld hl, $0022                                  ; $49AE: $21 $22 $00
    push af                                       ; $49B1: $F5
    add hl, bc                                    ; $49B2: $09
    pop af                                        ; $49B3: $F1
    ld a, [hl]                                    ; $49B4: $7E
    push af                                       ; $49B5: $F5
    call Call_000_25D1                            ; $49B6: $CD $D1 $25
    ld hl, $0021                                  ; $49B9: $21 $21 $00
    add hl, de                                    ; $49BC: $19
    ld [hl], $24                                  ; $49BD: $36 $24
    inc hl                                        ; $49BF: $23
    ld [hl], $A2                                  ; $49C0: $36 $A2
    inc hl                                        ; $49C2: $23
    ld [hl], $49                                  ; $49C3: $36 $49
    ld hl, $0011                                  ; $49C5: $21 $11 $00
    add hl, de                                    ; $49C8: $19
    ld [hl], $02                                  ; $49C9: $36 $02
    inc hl                                        ; $49CB: $23
    ld [hl], $FE                                  ; $49CC: $36 $FE
    inc hl                                        ; $49CE: $23
    ld [hl], $63                                  ; $49CF: $36 $63
    inc hl                                        ; $49D1: $23
    ld [hl], $00                                  ; $49D2: $36 $00
    ld hl, $001C                                  ; $49D4: $21 $1C $00
    add hl, de                                    ; $49D7: $19
    ld [hl], $00                                  ; $49D8: $36 $00
    inc hl                                        ; $49DA: $23
    ld [hl], $00                                  ; $49DB: $36 $00
    ld hl, $0029                                  ; $49DD: $21 $29 $00
    add hl, de                                    ; $49E0: $19
    ld [hl], $00                                  ; $49E1: $36 $00
    call Call_000_2614                            ; $49E3: $CD $14 $26
    ld hl, $0400                                  ; $49E6: $21 $00 $04
    call Call_000_2F79                            ; $49E9: $CD $79 $2F
    ld hl, $1800                                  ; $49EC: $21 $00 $18
    call Call_000_2F42                            ; $49EF: $CD $42 $2F
    pop af                                        ; $49F2: $F1
    jr c, jr_026_4A03                             ; $49F3: $38 $0E

    bit 1, a                                      ; $49F5: $CB $4F
    jr nz, jr_026_49FE                            ; $49F7: $20 $05

    ld hl, $0000                                  ; $49F9: $21 $00 $00
    jr jr_026_4A06                                ; $49FC: $18 $08

jr_026_49FE:
    ld hl, $0000                                  ; $49FE: $21 $00 $00
    jr jr_026_4A06                                ; $4A01: $18 $03

jr_026_4A03:
    ld hl, $0000                                  ; $4A03: $21 $00 $00

jr_026_4A06:
    call Call_000_2FEB                            ; $4A06: $CD $EB $2F
    ld hl, $0800                                  ; $4A09: $21 $00 $08
    call Call_000_305D                            ; $4A0C: $CD $5D $30
    pop de                                        ; $4A0F: $D1
    pop bc                                        ; $4A10: $C1
    ret                                           ; $4A11: $C9


Call_026_4A12:
    push bc                                       ; $4A12: $C5
    push de                                       ; $4A13: $D5
    ld hl, $0030                                  ; $4A14: $21 $30 $00
    add hl, bc                                    ; $4A17: $09
    ld a, [hl]                                    ; $4A18: $7E
    or a                                          ; $4A19: $B7
    jr nz, jr_026_4A1F                            ; $4A1A: $20 $03

    xor a                                         ; $4A1C: $AF
    jr jr_026_4A20                                ; $4A1D: $18 $01

jr_026_4A1F:
    scf                                           ; $4A1F: $37

jr_026_4A20:
    ld hl, $0022                                  ; $4A20: $21 $22 $00
    push af                                       ; $4A23: $F5
    add hl, bc                                    ; $4A24: $09
    pop af                                        ; $4A25: $F1
    ld a, [hl]                                    ; $4A26: $7E
    push af                                       ; $4A27: $F5
    call Call_000_25D1                            ; $4A28: $CD $D1 $25
    ld hl, $0021                                  ; $4A2B: $21 $21 $00
    add hl, de                                    ; $4A2E: $19
    ld [hl], $26                                  ; $4A2F: $36 $26
    inc hl                                        ; $4A31: $23
    ld [hl], $8C                                  ; $4A32: $36 $8C
    inc hl                                        ; $4A34: $23
    ld [hl], $4A                                  ; $4A35: $36 $4A
    ld hl, $0011                                  ; $4A37: $21 $11 $00
    add hl, de                                    ; $4A3A: $19
    ld [hl], $02                                  ; $4A3B: $36 $02
    inc hl                                        ; $4A3D: $23
    ld [hl], $34                                  ; $4A3E: $36 $34
    inc hl                                        ; $4A40: $23
    ld [hl], $64                                  ; $4A41: $36 $64
    inc hl                                        ; $4A43: $23
    ld [hl], $00                                  ; $4A44: $36 $00
    ld hl, $001C                                  ; $4A46: $21 $1C $00
    add hl, de                                    ; $4A49: $19
    ld [hl], $00                                  ; $4A4A: $36 $00
    inc hl                                        ; $4A4C: $23
    ld [hl], $00                                  ; $4A4D: $36 $00
    ld hl, $0029                                  ; $4A4F: $21 $29 $00
    add hl, de                                    ; $4A52: $19
    ld [hl], $00                                  ; $4A53: $36 $00
    ld hl, $0A08                                  ; $4A55: $21 $08 $0A
    ld a, $23                                     ; $4A58: $3E $23
    call Call_000_34E0                            ; $4A5A: $CD $E0 $34
    call Call_000_2614                            ; $4A5D: $CD $14 $26
    ld hl, $0400                                  ; $4A60: $21 $00 $04
    call Call_000_2F79                            ; $4A63: $CD $79 $2F
    ld hl, $E800                                  ; $4A66: $21 $00 $E8
    call Call_000_2F42                            ; $4A69: $CD $42 $2F
    pop af                                        ; $4A6C: $F1
    jr c, jr_026_4A7D                             ; $4A6D: $38 $0E

    bit 1, a                                      ; $4A6F: $CB $4F
    jr nz, jr_026_4A78                            ; $4A71: $20 $05

    ld hl, $0000                                  ; $4A73: $21 $00 $00
    jr jr_026_4A80                                ; $4A76: $18 $08

jr_026_4A78:
    ld hl, $0000                                  ; $4A78: $21 $00 $00
    jr jr_026_4A80                                ; $4A7B: $18 $03

jr_026_4A7D:
    ld hl, $0000                                  ; $4A7D: $21 $00 $00

jr_026_4A80:
    call Call_000_2FEB                            ; $4A80: $CD $EB $2F
    ld hl, $0000                                  ; $4A83: $21 $00 $00
    call Call_000_305D                            ; $4A86: $CD $5D $30
    pop de                                        ; $4A89: $D1
    pop bc                                        ; $4A8A: $C1
    ret                                           ; $4A8B: $C9


    ld hl, $0000                                  ; $4A8C: $21 $00 $00
    call Call_000_26F3                            ; $4A8F: $CD $F3 $26
    jr c, jr_026_4AA1                             ; $4A92: $38 $0D

    call Call_000_2E25                            ; $4A94: $CD $25 $2E
    ld hl, $0060                                  ; $4A97: $21 $60 $00
    call Call_000_315D                            ; $4A9A: $CD $5D $31
    jp c, Jump_026_4AA1                           ; $4A9D: $DA $A1 $4A

    ret                                           ; $4AA0: $C9


Jump_026_4AA1:
jr_026_4AA1:
    call Call_000_27F5                            ; $4AA1: $CD $F5 $27
    ret                                           ; $4AA4: $C9


Call_026_4AA5:
    push bc                                       ; $4AA5: $C5
    push de                                       ; $4AA6: $D5
    call Call_000_25F1                            ; $4AA7: $CD $F1 $25
    ld hl, $0021                                  ; $4AAA: $21 $21 $00
    add hl, de                                    ; $4AAD: $19
    ld [hl], $26                                  ; $4AAE: $36 $26
    inc hl                                        ; $4AB0: $23
    ld [hl], $86                                  ; $4AB1: $36 $86
    inc hl                                        ; $4AB3: $23
    ld [hl], $4B                                  ; $4AB4: $36 $4B
    ld hl, $0011                                  ; $4AB6: $21 $11 $00
    add hl, de                                    ; $4AB9: $19
    ld [hl], $02                                  ; $4ABA: $36 $02
    inc hl                                        ; $4ABC: $23
    ld [hl], $4E                                  ; $4ABD: $36 $4E
    inc hl                                        ; $4ABF: $23
    ld [hl], $64                                  ; $4AC0: $36 $64
    inc hl                                        ; $4AC2: $23
    ld [hl], $00                                  ; $4AC3: $36 $00
    ld hl, $001C                                  ; $4AC5: $21 $1C $00
    add hl, de                                    ; $4AC8: $19
    ld [hl], $00                                  ; $4AC9: $36 $00
    inc hl                                        ; $4ACB: $23
    ld [hl], $00                                  ; $4ACC: $36 $00
    ld hl, $0029                                  ; $4ACE: $21 $29 $00
    add hl, de                                    ; $4AD1: $19
    ld [hl], $02                                  ; $4AD2: $36 $02
    inc hl                                        ; $4AD4: $23
    ld [hl], $00                                  ; $4AD5: $36 $00
    ld hl, $000E                                  ; $4AD7: $21 $0E $00
    add hl, de                                    ; $4ADA: $19
    ld [hl], $CC                                  ; $4ADB: $36 $CC
    call Call_000_2614                            ; $4ADD: $CD $14 $26
    ld hl, $0000                                  ; $4AE0: $21 $00 $00
    call Call_000_2F79                            ; $4AE3: $CD $79 $2F
    ld hl, $9800                                  ; $4AE6: $21 $00 $98
    call Call_000_2F42                            ; $4AE9: $CD $42 $2F
    ld hl, $0000                                  ; $4AEC: $21 $00 $00
    call Call_000_2FEB                            ; $4AEF: $CD $EB $2F
    ld hl, $0100                                  ; $4AF2: $21 $00 $01
    call Call_000_305D                            ; $4AF5: $CD $5D $30
    pop de                                        ; $4AF8: $D1
    pop bc                                        ; $4AF9: $C1
    ret                                           ; $4AFA: $C9


Call_026_4AFB:
    push bc                                       ; $4AFB: $C5
    push de                                       ; $4AFC: $D5
    call Call_000_25F1                            ; $4AFD: $CD $F1 $25
    ld hl, $0021                                  ; $4B00: $21 $21 $00
    add hl, de                                    ; $4B03: $19
    ld [hl], $26                                  ; $4B04: $36 $26
    inc hl                                        ; $4B06: $23
    ld [hl], $BC                                  ; $4B07: $36 $BC
    inc hl                                        ; $4B09: $23
    ld [hl], $4B                                  ; $4B0A: $36 $4B
    ld hl, $0011                                  ; $4B0C: $21 $11 $00
    add hl, de                                    ; $4B0F: $19
    ld [hl], $02                                  ; $4B10: $36 $02
    inc hl                                        ; $4B12: $23
    ld [hl], $4E                                  ; $4B13: $36 $4E
    inc hl                                        ; $4B15: $23
    ld [hl], $64                                  ; $4B16: $36 $64
    inc hl                                        ; $4B18: $23
    ld [hl], $00                                  ; $4B19: $36 $00
    ld hl, $001C                                  ; $4B1B: $21 $1C $00
    add hl, de                                    ; $4B1E: $19
    ld [hl], $00                                  ; $4B1F: $36 $00
    inc hl                                        ; $4B21: $23
    ld [hl], $00                                  ; $4B22: $36 $00
    ld hl, $0029                                  ; $4B24: $21 $29 $00
    add hl, de                                    ; $4B27: $19
    ld [hl], $02                                  ; $4B28: $36 $02
    inc hl                                        ; $4B2A: $23
    ld [hl], $00                                  ; $4B2B: $36 $00
    inc hl                                        ; $4B2D: $23
    ld [hl], $00                                  ; $4B2E: $36 $00
    ld hl, $000E                                  ; $4B30: $21 $0E $00
    add hl, de                                    ; $4B33: $19
    ld [hl], $CC                                  ; $4B34: $36 $CC
    call Call_000_2614                            ; $4B36: $CD $14 $26
    ld hl, $D800                                  ; $4B39: $21 $00 $D8
    call Call_000_2F42                            ; $4B3C: $CD $42 $2F
    pop de                                        ; $4B3F: $D1
    pop bc                                        ; $4B40: $C1
    ret                                           ; $4B41: $C9


Call_026_4B42:
    push bc                                       ; $4B42: $C5
    push de                                       ; $4B43: $D5
    call Call_000_25F1                            ; $4B44: $CD $F1 $25
    ld hl, $0021                                  ; $4B47: $21 $21 $00
    add hl, de                                    ; $4B4A: $19
    ld [hl], $26                                  ; $4B4B: $36 $26
    inc hl                                        ; $4B4D: $23
    ld [hl], $DC                                  ; $4B4E: $36 $DC
    inc hl                                        ; $4B50: $23
    ld [hl], $4B                                  ; $4B51: $36 $4B
    ld hl, $0011                                  ; $4B53: $21 $11 $00
    add hl, de                                    ; $4B56: $19
    ld [hl], $02                                  ; $4B57: $36 $02
    inc hl                                        ; $4B59: $23
    ld [hl], $54                                  ; $4B5A: $36 $54
    inc hl                                        ; $4B5C: $23
    ld [hl], $64                                  ; $4B5D: $36 $64
    inc hl                                        ; $4B5F: $23
    ld [hl], $00                                  ; $4B60: $36 $00
    ld hl, $001C                                  ; $4B62: $21 $1C $00
    add hl, de                                    ; $4B65: $19
    ld [hl], $00                                  ; $4B66: $36 $00
    inc hl                                        ; $4B68: $23
    ld [hl], $00                                  ; $4B69: $36 $00
    ld hl, $0029                                  ; $4B6B: $21 $29 $00
    add hl, de                                    ; $4B6E: $19
    ld [hl], $02                                  ; $4B6F: $36 $02
    inc hl                                        ; $4B71: $23
    ld [hl], $00                                  ; $4B72: $36 $00
    ld hl, $000E                                  ; $4B74: $21 $0E $00
    add hl, de                                    ; $4B77: $19
    ld [hl], $CC                                  ; $4B78: $36 $CC
    call Call_000_2614                            ; $4B7A: $CD $14 $26
    ld hl, $E800                                  ; $4B7D: $21 $00 $E8
    call Call_000_2F42                            ; $4B80: $CD $42 $2F
    pop de                                        ; $4B83: $D1
    pop bc                                        ; $4B84: $C1
    ret                                           ; $4B85: $C9


    ld hl, $FC3C                                  ; $4B86: $21 $3C $FC
    add hl, bc                                    ; $4B89: $09
    ld a, [hl]                                    ; $4B8A: $7E
    cp $4C                                        ; $4B8B: $FE $4C
    jp nz, Jump_026_4BA3                          ; $4B8D: $C2 $A3 $4B

    ld hl, $FE84                                  ; $4B90: $21 $84 $FE
    add hl, de                                    ; $4B93: $19
    ld a, [hl]                                    ; $4B94: $7E
    ld hl, $0004                                  ; $4B95: $21 $04 $00
    add hl, de                                    ; $4B98: $19
    ld [hl], a                                    ; $4B99: $77
    ld hl, $0006                                  ; $4B9A: $21 $06 $00
    add hl, de                                    ; $4B9D: $19
    ld a, [hl]                                    ; $4B9E: $7E
    cp $60                                        ; $4B9F: $FE $60
    jr z, jr_026_4BAD                             ; $4BA1: $28 $0A

Jump_026_4BA3:
    ld hl, $0000                                  ; $4BA3: $21 $00 $00
    call Call_000_315D                            ; $4BA6: $CD $5D $31
    jp c, Jump_026_4BB8                           ; $4BA9: $DA $B8 $4B

    ret                                           ; $4BAC: $C9


jr_026_4BAD:
    ld hl, $002A                                  ; $4BAD: $21 $2A $00
    add hl, de                                    ; $4BB0: $19
    ld [hl], $01                                  ; $4BB1: $36 $01
    inc hl                                        ; $4BB3: $23
    dec [hl]                                      ; $4BB4: $35
    jr z, jr_026_4BB8                             ; $4BB5: $28 $01

    ret                                           ; $4BB7: $C9


Jump_026_4BB8:
jr_026_4BB8:
    call Call_000_27F5                            ; $4BB8: $CD $F5 $27
    ret                                           ; $4BBB: $C9


    ld hl, $FC3C                                  ; $4BBC: $21 $3C $FC
    add hl, bc                                    ; $4BBF: $09
    ld a, [hl]                                    ; $4BC0: $7E
    cp $4C                                        ; $4BC1: $FE $4C
    jp nz, Jump_026_4BD0                          ; $4BC3: $C2 $D0 $4B

    ld hl, $FE84                                  ; $4BC6: $21 $84 $FE
    add hl, de                                    ; $4BC9: $19
    ld a, [hl]                                    ; $4BCA: $7E
    ld hl, $0004                                  ; $4BCB: $21 $04 $00
    add hl, de                                    ; $4BCE: $19
    ld [hl], a                                    ; $4BCF: $77

Jump_026_4BD0:
    ld hl, $002A                                  ; $4BD0: $21 $2A $00
    add hl, de                                    ; $4BD3: $19
    dec [hl]                                      ; $4BD4: $35
    jr z, jr_026_4BD8                             ; $4BD5: $28 $01

    ret                                           ; $4BD7: $C9


jr_026_4BD8:
    call Call_000_27F5                            ; $4BD8: $CD $F5 $27
    ret                                           ; $4BDB: $C9


    ld hl, $FC3C                                  ; $4BDC: $21 $3C $FC
    add hl, bc                                    ; $4BDF: $09
    ld a, [hl]                                    ; $4BE0: $7E
    cp $4C                                        ; $4BE1: $FE $4C
    jp nz, Jump_026_4BF0                          ; $4BE3: $C2 $F0 $4B

    ld hl, $FE84                                  ; $4BE6: $21 $84 $FE
    add hl, de                                    ; $4BE9: $19
    ld a, [hl]                                    ; $4BEA: $7E
    ld hl, $0004                                  ; $4BEB: $21 $04 $00
    add hl, de                                    ; $4BEE: $19
    ld [hl], a                                    ; $4BEF: $77

Jump_026_4BF0:
    ld hl, $002A                                  ; $4BF0: $21 $2A $00
    add hl, de                                    ; $4BF3: $19
    dec [hl]                                      ; $4BF4: $35
    jr z, jr_026_4BF8                             ; $4BF5: $28 $01

    ret                                           ; $4BF7: $C9


jr_026_4BF8:
    call Call_000_27F5                            ; $4BF8: $CD $F5 $27
    ret                                           ; $4BFB: $C9


    call Call_000_31B6                            ; $4BFC: $CD $B6 $31
    jp c, Jump_026_4CD4                           ; $4BFF: $DA $D4 $4C

    jp z, Jump_026_4C11                           ; $4C02: $CA $11 $4C

    call Call_000_3A2A                            ; $4C05: $CD $2A $3A
    jp c, Jump_026_4C97                           ; $4C08: $DA $97 $4C

    jp z, Jump_026_4CA2                           ; $4C0B: $CA $A2 $4C

    jp Jump_026_4CD4                              ; $4C0E: $C3 $D4 $4C


Jump_026_4C11:
    call Call_000_3A2A                            ; $4C11: $CD $2A $3A
    jp c, Jump_026_4CAD                           ; $4C14: $DA $AD $4C

    jp z, Jump_026_4CB8                           ; $4C17: $CA $B8 $4C

    call Call_000_39D3                            ; $4C1A: $CD $D3 $39
    jp nc, Jump_026_4CD4                          ; $4C1D: $D2 $D4 $4C

    jp z, Jump_026_4C29                           ; $4C20: $CA $29 $4C

    jp nz, Jump_026_4C55                          ; $4C23: $C2 $55 $4C

    jp Jump_026_4CD4                              ; $4C26: $C3 $D4 $4C


Jump_026_4C29:
    call Call_000_3209                            ; $4C29: $CD $09 $32
    jr c, jr_026_4C37                             ; $4C2C: $38 $09

    ld hl, $3AD4                                  ; $4C2E: $21 $D4 $3A
    call Call_000_2B78                            ; $4C31: $CD $78 $2B
    jp c, Jump_026_4CAD                           ; $4C34: $DA $AD $4C

jr_026_4C37:
    ld hl, $3B14                                  ; $4C37: $21 $14 $3B
    call Call_000_2B78                            ; $4C3A: $CD $78 $2B
    jp c, Jump_026_4C97                           ; $4C3D: $DA $97 $4C

    ld hl, $3AC2                                  ; $4C40: $21 $C2 $3A
    call Call_000_2B78                            ; $4C43: $CD $78 $2B
    jp c, Jump_026_4C8C                           ; $4C46: $DA $8C $4C

    ld hl, $3AB9                                  ; $4C49: $21 $B9 $3A
    call Call_000_2B78                            ; $4C4C: $CD $78 $2B
    jp c, Jump_026_4C78                           ; $4C4F: $DA $78 $4C

    jp Jump_026_4CD4                              ; $4C52: $C3 $D4 $4C


Jump_026_4C55:
    call Call_000_3209                            ; $4C55: $CD $09 $32
    jp c, Jump_026_4C6C                           ; $4C58: $DA $6C $4C

    cp $01                                        ; $4C5B: $FE $01
    jr z, jr_026_4C6C                             ; $4C5D: $28 $0D

    cp $02                                        ; $4C5F: $FE $02
    jr z, jr_026_4C63                             ; $4C61: $28 $00

jr_026_4C63:
    ld hl, $3AE5                                  ; $4C63: $21 $E5 $3A
    call Call_000_2B78                            ; $4C66: $CD $78 $2B
    jp c, Jump_026_4CB8                           ; $4C69: $DA $B8 $4C

Jump_026_4C6C:
jr_026_4C6C:
    ld hl, $3B14                                  ; $4C6C: $21 $14 $3B
    call Call_000_2B78                            ; $4C6F: $CD $78 $2B
    jp c, Jump_026_4CA2                           ; $4C72: $DA $A2 $4C

    jp Jump_026_4CD4                              ; $4C75: $C3 $D4 $4C


Jump_026_4C78:
    call Call_000_32C5                            ; $4C78: $CD $C5 $32
    jp nz, Jump_026_4CD4                          ; $4C7B: $C2 $D4 $4C

    call Call_000_2C23                            ; $4C7E: $CD $23 $2C
    ld a, $40                                     ; $4C81: $3E $40
    call Call_000_32E2                            ; $4C83: $CD $E2 $32
    call Call_000_34F1                            ; $4C86: $CD $F1 $34
    jp Jump_026_4CD2                              ; $4C89: $C3 $D2 $4C


Jump_026_4C8C:
    call Call_000_2C23                            ; $4C8C: $CD $23 $2C
    ld a, $42                                     ; $4C8F: $3E $42
    call Call_000_32E2                            ; $4C91: $CD $E2 $32
    jp Jump_026_4CD2                              ; $4C94: $C3 $D2 $4C


Jump_026_4C97:
    call Call_000_2C23                            ; $4C97: $CD $23 $2C
    ld a, $44                                     ; $4C9A: $3E $44
    call Call_000_32E2                            ; $4C9C: $CD $E2 $32
    jp Jump_026_4CD2                              ; $4C9F: $C3 $D2 $4C


Jump_026_4CA2:
    call Call_000_2C23                            ; $4CA2: $CD $23 $2C
    ld a, $46                                     ; $4CA5: $3E $46
    call Call_000_32E2                            ; $4CA7: $CD $E2 $32
    jp Jump_026_4CD2                              ; $4CAA: $C3 $D2 $4C


Jump_026_4CAD:
    call Call_000_2C23                            ; $4CAD: $CD $23 $2C
    ld a, $4A                                     ; $4CB0: $3E $4A
    call Call_000_32E2                            ; $4CB2: $CD $E2 $32
    jp Jump_026_4CD2                              ; $4CB5: $C3 $D2 $4C


Jump_026_4CB8:
    call Call_000_2C23                            ; $4CB8: $CD $23 $2C
    ld a, $26                                     ; $4CBB: $3E $26
    call Call_000_32E2                            ; $4CBD: $CD $E2 $32
    ld hl, $0021                                  ; $4CC0: $21 $21 $00
    add hl, bc                                    ; $4CC3: $09
    set 7, [hl]                                   ; $4CC4: $CB $FE
    ld hl, $009C                                  ; $4CC6: $21 $9C $00
    add hl, bc                                    ; $4CC9: $09
    ld [hl], $01                                  ; $4CCA: $36 $01
    jp Jump_026_4CD2                              ; $4CCC: $C3 $D2 $4C


    jp Jump_026_4CD2                              ; $4CCF: $C3 $D2 $4C


Jump_026_4CD2:
    scf                                           ; $4CD2: $37
    ret                                           ; $4CD3: $C9


Jump_026_4CD4:
    or a                                          ; $4CD4: $B7
    ret                                           ; $4CD5: $C9


    call Call_000_2EE0                            ; $4CD6: $CD $E0 $2E
    call Call_000_3517                            ; $4CD9: $CD $17 $35
    jp c, Jump_026_4D2E                           ; $4CDC: $DA $2E $4D

    ld hl, $0018                                  ; $4CDF: $21 $18 $00
    add hl, de                                    ; $4CE2: $19
    ld a, [hl]                                    ; $4CE3: $7E
    cp $04                                        ; $4CE4: $FE $04
    jp z, Jump_026_4CF6                           ; $4CE6: $CA $F6 $4C

    cp $08                                        ; $4CE9: $FE $08
    jp z, Jump_026_4D08                           ; $4CEB: $CA $08 $4D

    cp $10                                        ; $4CEE: $FE $10
    jp z, Jump_026_4D20                           ; $4CF0: $CA $20 $4D

    jp Jump_026_4D2B                              ; $4CF3: $C3 $2B $4D


Jump_026_4CF6:
    call Call_000_2CA2                            ; $4CF6: $CD $A2 $2C
    jp z, Jump_026_4D2B                           ; $4CF9: $CA $2B $4D

    ld hl, $009C                                  ; $4CFC: $21 $9C $00
    add hl, bc                                    ; $4CFF: $09
    ld [hl], $00                                  ; $4D00: $36 $00
    call Call_026_52E7                            ; $4D02: $CD $E7 $52
    jp Jump_026_4D2B                              ; $4D05: $C3 $2B $4D


Jump_026_4D08:
    call Call_000_2CA2                            ; $4D08: $CD $A2 $2C
    jp z, Jump_026_4D14                           ; $4D0B: $CA $14 $4D

    ld hl, $009C                                  ; $4D0E: $21 $9C $00
    add hl, bc                                    ; $4D11: $09
    ld [hl], $01                                  ; $4D12: $36 $01

Jump_026_4D14:
    call Call_000_2CA9                            ; $4D14: $CD $A9 $2C
    jp nc, Jump_026_4D2B                          ; $4D17: $D2 $2B $4D

    inc hl                                        ; $4D1A: $23
    ld [hl], $06                                  ; $4D1B: $36 $06
    jp Jump_026_4D2B                              ; $4D1D: $C3 $2B $4D


Jump_026_4D20:
    call Call_000_2CA9                            ; $4D20: $CD $A9 $2C
    jp nc, Jump_026_4D2B                          ; $4D23: $D2 $2B $4D

    call Call_000_2DB6                            ; $4D26: $CD $B6 $2D
    jr jr_026_4D2E                                ; $4D29: $18 $03

Jump_026_4D2B:
    jp Jump_000_2E25                              ; $4D2B: $C3 $25 $2E


Jump_026_4D2E:
jr_026_4D2E:
    ret                                           ; $4D2E: $C9


    call Call_000_2EE0                            ; $4D2F: $CD $E0 $2E
    call Call_000_3517                            ; $4D32: $CD $17 $35
    jp c, Jump_026_4E0A                           ; $4D35: $DA $0A $4E

    ld hl, $0018                                  ; $4D38: $21 $18 $00
    add hl, de                                    ; $4D3B: $19
    ld a, [hl]                                    ; $4D3C: $7E
    cp $00                                        ; $4D3D: $FE $00
    jp z, Jump_026_4E07                           ; $4D3F: $CA $07 $4E

    cp $04                                        ; $4D42: $FE $04
    jp z, Jump_026_4E07                           ; $4D44: $CA $07 $4E

    cp $08                                        ; $4D47: $FE $08
    jp z, Jump_026_4D68                           ; $4D49: $CA $68 $4D

    cp $0C                                        ; $4D4C: $FE $0C
    jp z, Jump_026_4D8D                           ; $4D4E: $CA $8D $4D

    cp $10                                        ; $4D51: $FE $10
    jp z, Jump_026_4DC6                           ; $4D53: $CA $C6 $4D

    cp $14                                        ; $4D56: $FE $14
    jp z, Jump_026_4DDB                           ; $4D58: $CA $DB $4D

    cp $18                                        ; $4D5B: $FE $18
    jp z, Jump_026_4E07                           ; $4D5D: $CA $07 $4E

    cp $1C                                        ; $4D60: $FE $1C
    jp z, Jump_026_4DFC                           ; $4D62: $CA $FC $4D

    jp Jump_026_4E07                              ; $4D65: $C3 $07 $4E


Jump_026_4D68:
    call Call_000_2CA9                            ; $4D68: $CD $A9 $2C
    jp nc, Jump_026_4E07                          ; $4D6B: $D2 $07 $4E

    inc hl                                        ; $4D6E: $23
    ld [hl], $06                                  ; $4D6F: $36 $06
    call Call_000_32CC                            ; $4D71: $CD $CC $32
    jp c, Jump_026_4D82                           ; $4D74: $DA $82 $4D

    ld hl, $0308                                  ; $4D77: $21 $08 $03
    ld a, $80                                     ; $4D7A: $3E $80
    call Call_000_34B3                            ; $4D7C: $CD $B3 $34
    jp Jump_026_4E07                              ; $4D7F: $C3 $07 $4E


Jump_026_4D82:
    ld hl, $0208                                  ; $4D82: $21 $08 $02
    ld a, $92                                     ; $4D85: $3E $92
    call Call_000_34B3                            ; $4D87: $CD $B3 $34
    jp Jump_026_4E07                              ; $4D8A: $C3 $07 $4E


Jump_026_4D8D:
    call Call_000_2CA2                            ; $4D8D: $CD $A2 $2C
    jr z, jr_026_4DB4                             ; $4D90: $28 $22

    ld a, $11                                     ; $4D92: $3E $11
    call Call_000_1360                            ; $4D94: $CD $60 $13
    call Call_000_32CC                            ; $4D97: $CD $CC $32
    jr c, jr_026_4DAE                             ; $4D9A: $38 $12

    jr nz, jr_026_4DA6                            ; $4D9C: $20 $08

    ld hl, $0600                                  ; $4D9E: $21 $00 $06
    call Call_000_2FEB                            ; $4DA1: $CD $EB $2F
    jr jr_026_4DB4                                ; $4DA4: $18 $0E

jr_026_4DA6:
    ld hl, $0700                                  ; $4DA6: $21 $00 $07
    call Call_000_2FEB                            ; $4DA9: $CD $EB $2F
    jr jr_026_4DB4                                ; $4DAC: $18 $06

jr_026_4DAE:
    ld hl, $0800                                  ; $4DAE: $21 $00 $08
    call Call_000_2FEB                            ; $4DB1: $CD $EB $2F

jr_026_4DB4:
    ld hl, $0000                                  ; $4DB4: $21 $00 $00
    call Call_000_30B0                            ; $4DB7: $CD $B0 $30
    call Call_000_2CA9                            ; $4DBA: $CD $A9 $2C
    jp nc, Jump_026_4E07                          ; $4DBD: $D2 $07 $4E

    inc hl                                        ; $4DC0: $23
    ld [hl], $04                                  ; $4DC1: $36 $04
    jp Jump_026_4E07                              ; $4DC3: $C3 $07 $4E


Jump_026_4DC6:
    call Call_026_4DED                            ; $4DC6: $CD $ED $4D
    ld hl, $0080                                  ; $4DC9: $21 $80 $00
    call Call_000_30B0                            ; $4DCC: $CD $B0 $30
    call Call_000_2CA9                            ; $4DCF: $CD $A9 $2C
    jp nc, Jump_026_4E07                          ; $4DD2: $D2 $07 $4E

    inc hl                                        ; $4DD5: $23
    ld [hl], $07                                  ; $4DD6: $36 $07
    jp Jump_026_4E07                              ; $4DD8: $C3 $07 $4E


Jump_026_4DDB:
    ld hl, $0080                                  ; $4DDB: $21 $80 $00
    call Call_000_30B0                            ; $4DDE: $CD $B0 $30
    call Call_000_2CA9                            ; $4DE1: $CD $A9 $2C
    jp nc, Jump_026_4E07                          ; $4DE4: $D2 $07 $4E

    inc hl                                        ; $4DE7: $23
    ld [hl], $06                                  ; $4DE8: $36 $06
    jp Jump_026_4E07                              ; $4DEA: $C3 $07 $4E


Call_026_4DED:
    call Call_000_32CC                            ; $4DED: $CD $CC $32
    jr c, jr_026_4DF3                             ; $4DF0: $38 $01

    ret                                           ; $4DF2: $C9


jr_026_4DF3:
    ld hl, $0208                                  ; $4DF3: $21 $08 $02
    ld a, $92                                     ; $4DF6: $3E $92
    call Call_000_34A2                            ; $4DF8: $CD $A2 $34
    ret                                           ; $4DFB: $C9


Jump_026_4DFC:
    call Call_000_2CA9                            ; $4DFC: $CD $A9 $2C
    jp nc, Jump_026_4E07                          ; $4DFF: $D2 $07 $4E

    call Call_000_2DB6                            ; $4E02: $CD $B6 $2D
    jr jr_026_4E0A                                ; $4E05: $18 $03

Jump_026_4E07:
    jp Jump_000_2E25                              ; $4E07: $C3 $25 $2E


Jump_026_4E0A:
jr_026_4E0A:
    ret                                           ; $4E0A: $C9


    call Call_000_2EE0                            ; $4E0B: $CD $E0 $2E
    call Call_000_3517                            ; $4E0E: $CD $17 $35
    jp c, Jump_026_4FB3                           ; $4E11: $DA $B3 $4F

    ld hl, $0018                                  ; $4E14: $21 $18 $00
    add hl, de                                    ; $4E17: $19
    ld a, [hl]                                    ; $4E18: $7E
    cp $00                                        ; $4E19: $FE $00
    jp z, Jump_026_4E4E                           ; $4E1B: $CA $4E $4E

    cp $04                                        ; $4E1E: $FE $04
    jp z, Jump_026_4E57                           ; $4E20: $CA $57 $4E

    cp $08                                        ; $4E23: $FE $08
    jp z, Jump_026_4E6B                           ; $4E25: $CA $6B $4E

    cp $0C                                        ; $4E28: $FE $0C
    jp z, Jump_026_4EDB                           ; $4E2A: $CA $DB $4E

    cp $10                                        ; $4E2D: $FE $10
    jp z, Jump_026_4EF2                           ; $4E2F: $CA $F2 $4E

    cp $14                                        ; $4E32: $FE $14
    jp z, Jump_026_4F09                           ; $4E34: $CA $09 $4F

    cp $18                                        ; $4E37: $FE $18
    jp z, Jump_026_4F20                           ; $4E39: $CA $20 $4F

    cp $1C                                        ; $4E3C: $FE $1C
    jp z, Jump_026_4F40                           ; $4E3E: $CA $40 $4F

    cp $20                                        ; $4E41: $FE $20
    jp z, Jump_026_4F69                           ; $4E43: $CA $69 $4F

    cp $24                                        ; $4E46: $FE $24
    jp z, Jump_026_4F79                           ; $4E48: $CA $79 $4F

    jp Jump_026_4FB0                              ; $4E4B: $C3 $B0 $4F


Jump_026_4E4E:
    call Call_000_2CA9                            ; $4E4E: $CD $A9 $2C
    jp nc, Jump_026_4FB0                          ; $4E51: $D2 $B0 $4F

    jp Jump_026_4FB0                              ; $4E54: $C3 $B0 $4F


Jump_026_4E57:
    call Call_000_2CA9                            ; $4E57: $CD $A9 $2C
    jp nc, Jump_026_4FB0                          ; $4E5A: $D2 $B0 $4F

    inc hl                                        ; $4E5D: $23
    ld [hl], $FF                                  ; $4E5E: $36 $FF
    ld hl, $010C                                  ; $4E60: $21 $0C $01
    ld a, $11                                     ; $4E63: $3E $11
    call Call_000_34B3                            ; $4E65: $CD $B3 $34
    jp Jump_026_4FB0                              ; $4E68: $C3 $B0 $4F


Jump_026_4E6B:
    call Call_000_2CA2                            ; $4E6B: $CD $A2 $2C
    jr z, jr_026_4EA4                             ; $4E6E: $28 $34

    ld a, $12                                     ; $4E70: $3E $12
    call Call_000_1360                            ; $4E72: $CD $60 $13
    call Call_000_32CC                            ; $4E75: $CD $CC $32
    jr c, jr_026_4E98                             ; $4E78: $38 $1E

    jr nz, jr_026_4E8A                            ; $4E7A: $20 $0E

    ld hl, $0300                                  ; $4E7C: $21 $00 $03
    call Call_000_2FEB                            ; $4E7F: $CD $EB $2F
    ld hl, $F980                                  ; $4E82: $21 $80 $F9
    call Call_000_305D                            ; $4E85: $CD $5D $30
    jr jr_026_4EA4                                ; $4E88: $18 $1A

jr_026_4E8A:
    ld hl, $0380                                  ; $4E8A: $21 $80 $03
    call Call_000_2FEB                            ; $4E8D: $CD $EB $2F
    ld hl, $F980                                  ; $4E90: $21 $80 $F9
    call Call_000_305D                            ; $4E93: $CD $5D $30
    jr jr_026_4EA4                                ; $4E96: $18 $0C

jr_026_4E98:
    ld hl, $0400                                  ; $4E98: $21 $00 $04
    call Call_000_2FEB                            ; $4E9B: $CD $EB $2F
    ld hl, $F980                                  ; $4E9E: $21 $80 $F9
    call Call_000_305D                            ; $4EA1: $CD $5D $30

jr_026_4EA4:
    call Call_000_3262                            ; $4EA4: $CD $62 $32
    jp nc, Jump_026_4ED8                          ; $4EA7: $D2 $D8 $4E

    jp nz, Jump_026_4ED0                          ; $4EAA: $C2 $D0 $4E

    ld hl, $0021                                  ; $4EAD: $21 $21 $00
    add hl, bc                                    ; $4EB0: $09
    set 7, [hl]                                   ; $4EB1: $CB $FE
    ld a, $03                                     ; $4EB3: $3E $03
    ld [$C2E2], a                                 ; $4EB5: $EA $E2 $C2
    ld hl, $0519                                  ; $4EB8: $21 $19 $05
    ld a, $00                                     ; $4EBB: $3E $00
    call Call_000_34B3                            ; $4EBD: $CD $B3 $34
    ld hl, $FC00                                  ; $4EC0: $21 $00 $FC
    call Call_000_3496                            ; $4EC3: $CD $96 $34
    ld a, $0C                                     ; $4EC6: $3E $0C
    ld h, $05                                     ; $4EC8: $26 $05
    call Call_000_2D19                            ; $4ECA: $CD $19 $2D
    jp Jump_026_4FB3                              ; $4ECD: $C3 $B3 $4F


Jump_026_4ED0:
    ld a, $18                                     ; $4ED0: $3E $18
    call Call_000_2E6E                            ; $4ED2: $CD $6E $2E
    jp Jump_026_4FB3                              ; $4ED5: $C3 $B3 $4F


Jump_026_4ED8:
    jp Jump_026_4F43                              ; $4ED8: $C3 $43 $4F


Jump_026_4EDB:
    call Call_000_2CA9                            ; $4EDB: $CD $A9 $2C
    jp nc, Jump_026_4FB0                          ; $4EDE: $D2 $B0 $4F

    ld hl, $0519                                  ; $4EE1: $21 $19 $05
    ld a, $00                                     ; $4EE4: $3E $00
    call Call_000_34B3                            ; $4EE6: $CD $B3 $34
    ld hl, $0800                                  ; $4EE9: $21 $00 $08
    call Call_000_3496                            ; $4EEC: $CD $96 $34
    jp Jump_026_4FB0                              ; $4EEF: $C3 $B0 $4F


Jump_026_4EF2:
    call Call_000_2CA9                            ; $4EF2: $CD $A9 $2C
    jp nc, Jump_026_4FB0                          ; $4EF5: $D2 $B0 $4F

    ld hl, $051B                                  ; $4EF8: $21 $1B $05
    ld a, $00                                     ; $4EFB: $3E $00
    call Call_000_34B3                            ; $4EFD: $CD $B3 $34
    ld hl, $08E8                                  ; $4F00: $21 $E8 $08
    call Call_000_3496                            ; $4F03: $CD $96 $34
    jp Jump_026_4FB0                              ; $4F06: $C3 $B0 $4F


Jump_026_4F09:
    call Call_000_2CA9                            ; $4F09: $CD $A9 $2C
    jp nc, Jump_026_4FB0                          ; $4F0C: $D2 $B0 $4F

    ld hl, $051B                                  ; $4F0F: $21 $1B $05
    ld a, $00                                     ; $4F12: $3E $00
    call Call_000_34B3                            ; $4F14: $CD $B3 $34
    ld hl, $F8E8                                  ; $4F17: $21 $E8 $F8
    call Call_000_3496                            ; $4F1A: $CD $96 $34
    jp Jump_026_4FB0                              ; $4F1D: $C3 $B0 $4F


Jump_026_4F20:
    call Call_000_2CA9                            ; $4F20: $CD $A9 $2C
    jp nc, Jump_026_4FB0                          ; $4F23: $D2 $B0 $4F

    inc hl                                        ; $4F26: $23
    ld [hl], $FF                                  ; $4F27: $36 $FF
    ld hl, $0000                                  ; $4F29: $21 $00 $00
    call Call_000_2FEB                            ; $4F2C: $CD $EB $2F
    ld hl, $0000                                  ; $4F2F: $21 $00 $00
    call Call_000_305D                            ; $4F32: $CD $5D $30
    ld hl, $0415                                  ; $4F35: $21 $15 $04
    ld a, $80                                     ; $4F38: $3E $80
    call Call_000_34B3                            ; $4F3A: $CD $B3 $34
    jp Jump_026_4FB0                              ; $4F3D: $C3 $B0 $4F


Jump_026_4F40:
    jp Jump_026_4F56                              ; $4F40: $C3 $56 $4F


Jump_026_4F43:
    ld hl, $0060                                  ; $4F43: $21 $60 $00
    call Call_000_30FF                            ; $4F46: $CD $FF $30
    jp nc, Jump_026_4FB0                          ; $4F49: $D2 $B0 $4F

    ld a, $24                                     ; $4F4C: $3E $24
    ld h, $0A                                     ; $4F4E: $26 $0A
    call Call_000_2CBA                            ; $4F50: $CD $BA $2C
    jp Jump_026_4FB3                              ; $4F53: $C3 $B3 $4F


Jump_026_4F56:
    ld hl, $0060                                  ; $4F56: $21 $60 $00
    call Call_000_30FF                            ; $4F59: $CD $FF $30
    jp nc, Jump_026_4FB0                          ; $4F5C: $D2 $B0 $4F

    ld a, $20                                     ; $4F5F: $3E $20
    ld h, $14                                     ; $4F61: $26 $14
    call Call_000_2CBA                            ; $4F63: $CD $BA $2C
    jp Jump_026_4FB3                              ; $4F66: $C3 $B3 $4F


Jump_026_4F69:
    call Call_000_2CA9                            ; $4F69: $CD $A9 $2C
    jp nc, Jump_026_4FB0                          ; $4F6C: $D2 $B0 $4F

    ld a, $00                                     ; $4F6F: $3E $00
    ld [$C2E2], a                                 ; $4F71: $EA $E2 $C2
    call Call_000_2DB6                            ; $4F74: $CD $B6 $2D
    jr jr_026_4FB3                                ; $4F77: $18 $3A

Jump_026_4F79:
    call Call_000_326C                            ; $4F79: $CD $6C $32
    jp nc, Jump_026_4FA5                          ; $4F7C: $D2 $A5 $4F

    jp nz, Jump_026_4FA5                          ; $4F7F: $C2 $A5 $4F

    ld a, $03                                     ; $4F82: $3E $03
    ld [$C2E2], a                                 ; $4F84: $EA $E2 $C2
    ld hl, $0021                                  ; $4F87: $21 $21 $00
    add hl, bc                                    ; $4F8A: $09
    set 7, [hl]                                   ; $4F8B: $CB $FE
    ld hl, $0519                                  ; $4F8D: $21 $19 $05
    ld a, $00                                     ; $4F90: $3E $00
    call Call_000_34B3                            ; $4F92: $CD $B3 $34
    ld hl, $FC00                                  ; $4F95: $21 $00 $FC
    call Call_000_3496                            ; $4F98: $CD $96 $34
    ld a, $0C                                     ; $4F9B: $3E $0C
    ld h, $05                                     ; $4F9D: $26 $05
    call Call_000_2D19                            ; $4F9F: $CD $19 $2D
    jp Jump_026_4FB3                              ; $4FA2: $C3 $B3 $4F


Jump_026_4FA5:
    call Call_000_2CA9                            ; $4FA5: $CD $A9 $2C
    jp nc, Jump_026_4FB0                          ; $4FA8: $D2 $B0 $4F

    call Call_000_2DB6                            ; $4FAB: $CD $B6 $2D
    jr jr_026_4FB3                                ; $4FAE: $18 $03

Jump_026_4FB0:
    call Call_000_2E25                            ; $4FB0: $CD $25 $2E

Jump_026_4FB3:
jr_026_4FB3:
    ret                                           ; $4FB3: $C9


    call Call_000_2EE0                            ; $4FB4: $CD $E0 $2E
    call Call_000_3517                            ; $4FB7: $CD $17 $35
    jp c, Jump_026_50D9                           ; $4FBA: $DA $D9 $50

    ld hl, $0018                                  ; $4FBD: $21 $18 $00
    add hl, de                                    ; $4FC0: $19
    ld a, [hl]                                    ; $4FC1: $7E
    cp $00                                        ; $4FC2: $FE $00
    jp z, Jump_026_4FE8                           ; $4FC4: $CA $E8 $4F

    cp $04                                        ; $4FC7: $FE $04
    jp z, Jump_026_4FF1                           ; $4FC9: $CA $F1 $4F

    cp $08                                        ; $4FCC: $FE $08
    jp z, Jump_026_5005                           ; $4FCE: $CA $05 $50

    cp $0C                                        ; $4FD1: $FE $0C
    jp z, Jump_026_5064                           ; $4FD3: $CA $64 $50

    cp $10                                        ; $4FD6: $FE $10
    jp z, Jump_026_507C                           ; $4FD8: $CA $7C $50

    cp $14                                        ; $4FDB: $FE $14
    jp z, Jump_026_50A5                           ; $4FDD: $CA $A5 $50

    cp $18                                        ; $4FE0: $FE $18
    jp z, Jump_026_50B0                           ; $4FE2: $CA $B0 $50

    jp Jump_026_50D6                              ; $4FE5: $C3 $D6 $50


Jump_026_4FE8:
    call Call_000_2CA9                            ; $4FE8: $CD $A9 $2C
    jp nc, Jump_026_50D6                          ; $4FEB: $D2 $D6 $50

    jp Jump_026_50D6                              ; $4FEE: $C3 $D6 $50


Jump_026_4FF1:
    call Call_000_2CA9                            ; $4FF1: $CD $A9 $2C
    jp nc, Jump_026_50D6                          ; $4FF4: $D2 $D6 $50

    inc hl                                        ; $4FF7: $23
    ld [hl], $FF                                  ; $4FF8: $36 $FF
    ld hl, $010C                                  ; $4FFA: $21 $0C $01
    ld a, $11                                     ; $4FFD: $3E $11
    call Call_000_34B3                            ; $4FFF: $CD $B3 $34
    jp Jump_026_50D6                              ; $5002: $C3 $D6 $50


Jump_026_5005:
    call Call_000_2CA2                            ; $5005: $CD $A2 $2C
    jr z, jr_026_503E                             ; $5008: $28 $34

    ld a, $12                                     ; $500A: $3E $12
    call Call_000_1360                            ; $500C: $CD $60 $13
    call Call_000_32CC                            ; $500F: $CD $CC $32
    jr c, jr_026_5032                             ; $5012: $38 $1E

    jr nz, jr_026_5024                            ; $5014: $20 $0E

    ld hl, $0400                                  ; $5016: $21 $00 $04
    call Call_000_2FEB                            ; $5019: $CD $EB $2F
    ld hl, $FB00                                  ; $501C: $21 $00 $FB
    call Call_000_305D                            ; $501F: $CD $5D $30
    jr jr_026_503E                                ; $5022: $18 $1A

jr_026_5024:
    ld hl, $0500                                  ; $5024: $21 $00 $05
    call Call_000_2FEB                            ; $5027: $CD $EB $2F
    ld hl, $FB00                                  ; $502A: $21 $00 $FB
    call Call_000_305D                            ; $502D: $CD $5D $30
    jr jr_026_503E                                ; $5030: $18 $0C

jr_026_5032:
    ld hl, $0600                                  ; $5032: $21 $00 $06
    call Call_000_2FEB                            ; $5035: $CD $EB $2F
    ld hl, $FB00                                  ; $5038: $21 $00 $FB
    call Call_000_305D                            ; $503B: $CD $5D $30

jr_026_503E:
    call Call_000_3262                            ; $503E: $CD $62 $32
    jp nc, Jump_026_5061                          ; $5041: $D2 $61 $50

    jp nz, Jump_026_5059                          ; $5044: $C2 $59 $50

    ld hl, $030F                                  ; $5047: $21 $0F $03
    ld a, $01                                     ; $504A: $3E $01
    call Call_000_34B3                            ; $504C: $CD $B3 $34
    ld a, $0C                                     ; $504F: $3E $0C
    ld h, $02                                     ; $5051: $26 $02
    call Call_000_2D19                            ; $5053: $CD $19 $2D
    jp Jump_026_50D9                              ; $5056: $C3 $D9 $50


Jump_026_5059:
    ld a, $18                                     ; $5059: $3E $18
    call Call_000_2E6E                            ; $505B: $CD $6E $2E
    jp Jump_026_50D9                              ; $505E: $C3 $D9 $50


Jump_026_5061:
    jp Jump_026_507F                              ; $5061: $C3 $7F $50


Jump_026_5064:
    call Call_000_2CA9                            ; $5064: $CD $A9 $2C
    jp nc, Jump_026_50D6                          ; $5067: $D2 $D6 $50

    inc hl                                        ; $506A: $23
    ld [hl], $FF                                  ; $506B: $36 $FF
    ld hl, $0080                                  ; $506D: $21 $80 $00
    call Call_000_2FEB                            ; $5070: $CD $EB $2F
    ld hl, $0000                                  ; $5073: $21 $00 $00
    call Call_000_305D                            ; $5076: $CD $5D $30
    jp Jump_026_50D6                              ; $5079: $C3 $D6 $50


Jump_026_507C:
    jp Jump_026_5092                              ; $507C: $C3 $92 $50


Jump_026_507F:
    ld hl, $0060                                  ; $507F: $21 $60 $00
    call Call_000_30FF                            ; $5082: $CD $FF $30
    jp nc, Jump_026_50D6                          ; $5085: $D2 $D6 $50

    ld a, $18                                     ; $5088: $3E $18
    ld h, $0A                                     ; $508A: $26 $0A
    call Call_000_2CBA                            ; $508C: $CD $BA $2C
    jp Jump_026_50D9                              ; $508F: $C3 $D9 $50


Jump_026_5092:
    ld hl, $0060                                  ; $5092: $21 $60 $00
    call Call_000_30FF                            ; $5095: $CD $FF $30
    jp nc, Jump_026_50D6                          ; $5098: $D2 $D6 $50

    ld a, $14                                     ; $509B: $3E $14
    ld h, $14                                     ; $509D: $26 $14
    call Call_000_2CBA                            ; $509F: $CD $BA $2C
    jp Jump_026_50D9                              ; $50A2: $C3 $D9 $50


Jump_026_50A5:
    call Call_000_2CA9                            ; $50A5: $CD $A9 $2C
    jp nc, Jump_026_50D6                          ; $50A8: $D2 $D6 $50

    call Call_000_2DB6                            ; $50AB: $CD $B6 $2D
    jr jr_026_50D9                                ; $50AE: $18 $29

Jump_026_50B0:
    call Call_000_326C                            ; $50B0: $CD $6C $32
    jp nc, Jump_026_50CB                          ; $50B3: $D2 $CB $50

    jp nz, Jump_026_50CB                          ; $50B6: $C2 $CB $50

    ld hl, $030F                                  ; $50B9: $21 $0F $03
    ld a, $01                                     ; $50BC: $3E $01
    call Call_000_34B3                            ; $50BE: $CD $B3 $34
    ld a, $0C                                     ; $50C1: $3E $0C
    ld h, $02                                     ; $50C3: $26 $02
    call Call_000_2D19                            ; $50C5: $CD $19 $2D
    jp Jump_026_50D9                              ; $50C8: $C3 $D9 $50


Jump_026_50CB:
    call Call_000_2CA9                            ; $50CB: $CD $A9 $2C
    jp nc, Jump_026_50D6                          ; $50CE: $D2 $D6 $50

    call Call_000_2DB6                            ; $50D1: $CD $B6 $2D
    jr jr_026_50D9                                ; $50D4: $18 $03

Jump_026_50D6:
    call Call_000_2E25                            ; $50D6: $CD $25 $2E

Jump_026_50D9:
jr_026_50D9:
    ret                                           ; $50D9: $C9


    call Call_000_2EE0                            ; $50DA: $CD $E0 $2E
    call Call_000_3517                            ; $50DD: $CD $17 $35
    jp c, Jump_026_52E6                           ; $50E0: $DA $E6 $52

    ld hl, $0018                                  ; $50E3: $21 $18 $00
    add hl, de                                    ; $50E6: $19
    ld a, [hl]                                    ; $50E7: $7E
    cp $00                                        ; $50E8: $FE $00
    jp z, Jump_026_5113                           ; $50EA: $CA $13 $51

    cp $04                                        ; $50ED: $FE $04
    jp z, Jump_026_513F                           ; $50EF: $CA $3F $51

    cp $08                                        ; $50F2: $FE $08
    jp z, Jump_026_518C                           ; $50F4: $CA $8C $51

    cp $0C                                        ; $50F7: $FE $0C
    jp z, Jump_026_51CE                           ; $50F9: $CA $CE $51

    cp $10                                        ; $50FC: $FE $10
    jp z, Jump_026_5210                           ; $50FE: $CA $10 $52

    cp $14                                        ; $5101: $FE $14
    jp z, Jump_026_526A                           ; $5103: $CA $6A $52

    cp $18                                        ; $5106: $FE $18
    jp z, Jump_026_52B2                           ; $5108: $CA $B2 $52

    cp $1C                                        ; $510B: $FE $1C
    jp z, Jump_026_52BD                           ; $510D: $CA $BD $52

    jp Jump_026_52E3                              ; $5110: $C3 $E3 $52


Jump_026_5113:
    call Call_000_2CA2                            ; $5113: $CD $A2 $2C
    jp z, Jump_026_511F                           ; $5116: $CA $1F $51

    ld hl, $0031                                  ; $5119: $21 $31 $00
    add hl, bc                                    ; $511C: $09
    ld [hl], $01                                  ; $511D: $36 $01

Jump_026_511F:
    call Call_000_2CA9                            ; $511F: $CD $A9 $2C
    jp nc, Jump_026_52E3                          ; $5122: $D2 $E3 $52

    inc hl                                        ; $5125: $23
    ld [hl], $14                                  ; $5126: $36 $14
    ld hl, $0022                                  ; $5128: $21 $22 $00
    add hl, bc                                    ; $512B: $09
    set 7, [hl]                                   ; $512C: $CB $FE
    ld hl, $009C                                  ; $512E: $21 $9C $00
    add hl, bc                                    ; $5131: $09
    ld [hl], $06                                  ; $5132: $36 $06
    ld hl, $010C                                  ; $5134: $21 $0C $01
    ld a, $11                                     ; $5137: $3E $11
    call Call_000_34B3                            ; $5139: $CD $B3 $34
    jp Jump_026_52E3                              ; $513C: $C3 $E3 $52


Jump_026_513F:
    call Call_000_2CA2                            ; $513F: $CD $A2 $2C
    jr z, jr_026_5155                             ; $5142: $28 $11

    ld a, $12                                     ; $5144: $3E $12
    call Call_000_1360                            ; $5146: $CD $60 $13
    ld hl, $0021                                  ; $5149: $21 $21 $00
    add hl, bc                                    ; $514C: $09
    res 7, [hl]                                   ; $514D: $CB $BE
    ld hl, $0700                                  ; $514F: $21 $00 $07
    call Call_000_2FEB                            ; $5152: $CD $EB $2F

jr_026_5155:
    call Call_000_3262                            ; $5155: $CD $62 $32
    jp nc, Jump_026_517A                          ; $5158: $D2 $7A $51

    jp nz, Jump_026_5170                          ; $515B: $C2 $70 $51

    ld hl, $0108                                  ; $515E: $21 $08 $01
    ld a, $92                                     ; $5161: $3E $92
    call Call_000_34B3                            ; $5163: $CD $B3 $34
    ld a, $08                                     ; $5166: $3E $08
    ld h, $02                                     ; $5168: $26 $02
    call Call_000_2D19                            ; $516A: $CD $19 $2D
    jp Jump_026_52E6                              ; $516D: $C3 $E6 $52


Jump_026_5170:
    ld a, $18                                     ; $5170: $3E $18
    ld h, $14                                     ; $5172: $26 $14
    call Call_000_2D19                            ; $5174: $CD $19 $2D
    jp Jump_026_52E6                              ; $5177: $C3 $E6 $52


Jump_026_517A:
    call Call_000_2CA9                            ; $517A: $CD $A9 $2C
    jp nc, Jump_026_527E                          ; $517D: $D2 $7E $52

    inc hl                                        ; $5180: $23
    ld [hl], $14                                  ; $5181: $36 $14
    ld hl, $0014                                  ; $5183: $21 $14 $00
    add hl, de                                    ; $5186: $19
    ld [hl], $18                                  ; $5187: $36 $18
    jp Jump_026_527E                              ; $5189: $C3 $7E $52


Jump_026_518C:
    call Call_000_2CA2                            ; $518C: $CD $A2 $2C
    jr z, jr_026_51BD                             ; $518F: $28 $2C

    ld hl, $FA00                                  ; $5191: $21 $00 $FA
    call Call_000_2FEB                            ; $5194: $CD $EB $2F
    ld hl, $FA00                                  ; $5197: $21 $00 $FA
    call Call_000_305D                            ; $519A: $CD $5D $30
    ld hl, $0099                                  ; $519D: $21 $99 $00
    add hl, bc                                    ; $51A0: $09
    ld a, [hl]                                    ; $51A1: $7E
    ld hl, $0004                                  ; $51A2: $21 $04 $00
    add hl, de                                    ; $51A5: $19
    ld [hl], a                                    ; $51A6: $77
    ld hl, $009A                                  ; $51A7: $21 $9A $00
    add hl, bc                                    ; $51AA: $09
    ld a, [hl]                                    ; $51AB: $7E
    ld hl, $0006                                  ; $51AC: $21 $06 $00
    add hl, de                                    ; $51AF: $19
    ld [hl], a                                    ; $51B0: $77
    ld hl, $1000                                  ; $51B1: $21 $00 $10
    call Call_000_2F79                            ; $51B4: $CD $79 $2F
    ld hl, $0000                                  ; $51B7: $21 $00 $00
    call Call_000_2F42                            ; $51BA: $CD $42 $2F

jr_026_51BD:
    call Call_000_2CA9                            ; $51BD: $CD $A9 $2C
    jp nc, Jump_026_5284                          ; $51C0: $D2 $84 $52

    ld hl, $010C                                  ; $51C3: $21 $0C $01
    ld a, $92                                     ; $51C6: $3E $92
    call Call_000_34B3                            ; $51C8: $CD $B3 $34
    jp Jump_026_52E3                              ; $51CB: $C3 $E3 $52


Jump_026_51CE:
    call Call_000_2CA2                            ; $51CE: $CD $A2 $2C
    jr z, jr_026_51FF                             ; $51D1: $28 $2C

    ld hl, $FA00                                  ; $51D3: $21 $00 $FA
    call Call_000_2FEB                            ; $51D6: $CD $EB $2F
    ld hl, $0600                                  ; $51D9: $21 $00 $06
    call Call_000_305D                            ; $51DC: $CD $5D $30
    ld hl, $0099                                  ; $51DF: $21 $99 $00
    add hl, bc                                    ; $51E2: $09
    ld a, [hl]                                    ; $51E3: $7E
    ld hl, $0004                                  ; $51E4: $21 $04 $00
    add hl, de                                    ; $51E7: $19
    ld [hl], a                                    ; $51E8: $77
    ld hl, $009A                                  ; $51E9: $21 $9A $00
    add hl, bc                                    ; $51EC: $09
    ld a, [hl]                                    ; $51ED: $7E
    ld hl, $0006                                  ; $51EE: $21 $06 $00
    add hl, de                                    ; $51F1: $19
    ld [hl], a                                    ; $51F2: $77
    ld hl, $1000                                  ; $51F3: $21 $00 $10
    call Call_000_2F79                            ; $51F6: $CD $79 $2F
    ld hl, $F000                                  ; $51F9: $21 $00 $F0
    call Call_000_2F42                            ; $51FC: $CD $42 $2F

jr_026_51FF:
    call Call_000_2CA9                            ; $51FF: $CD $A9 $2C
    jp nc, Jump_026_5284                          ; $5202: $D2 $84 $52

    ld hl, $010B                                  ; $5205: $21 $0B $01
    ld a, $92                                     ; $5208: $3E $92
    call Call_000_34B3                            ; $520A: $CD $B3 $34
    jp Jump_026_52E3                              ; $520D: $C3 $E3 $52


Jump_026_5210:
    call Call_000_2CA2                            ; $5210: $CD $A2 $2C
    jr z, jr_026_5241                             ; $5213: $28 $2C

    ld hl, $0600                                  ; $5215: $21 $00 $06
    call Call_000_2FEB                            ; $5218: $CD $EB $2F
    ld hl, $FFC0                                  ; $521B: $21 $C0 $FF
    call Call_000_305D                            ; $521E: $CD $5D $30
    ld hl, $0099                                  ; $5221: $21 $99 $00
    add hl, bc                                    ; $5224: $09
    ld a, [hl]                                    ; $5225: $7E
    ld hl, $0004                                  ; $5226: $21 $04 $00
    add hl, de                                    ; $5229: $19
    ld [hl], a                                    ; $522A: $77
    ld hl, $009A                                  ; $522B: $21 $9A $00
    add hl, bc                                    ; $522E: $09
    ld a, [hl]                                    ; $522F: $7E
    ld hl, $0006                                  ; $5230: $21 $06 $00
    add hl, de                                    ; $5233: $19
    ld [hl], a                                    ; $5234: $77
    ld hl, $F000                                  ; $5235: $21 $00 $F0
    call Call_000_2F79                            ; $5238: $CD $79 $2F
    ld hl, $1000                                  ; $523B: $21 $00 $10
    call Call_000_2F42                            ; $523E: $CD $42 $2F

jr_026_5241:
    call Call_000_2CA9                            ; $5241: $CD $A9 $2C
    jp nc, Jump_026_5284                          ; $5244: $D2 $84 $52

    ld hl, $009C                                  ; $5247: $21 $9C $00
    add hl, bc                                    ; $524A: $09
    dec [hl]                                      ; $524B: $35
    jr z, jr_026_5260                             ; $524C: $28 $12

    ld hl, $010B                                  ; $524E: $21 $0B $01
    ld a, $92                                     ; $5251: $3E $92
    call Call_000_34B3                            ; $5253: $CD $B3 $34
    ld a, $08                                     ; $5256: $3E $08
    ld h, $02                                     ; $5258: $26 $02
    call Call_000_2D19                            ; $525A: $CD $19 $2D
    jp Jump_026_52E6                              ; $525D: $C3 $E6 $52


jr_026_5260:
    ld a, $14                                     ; $5260: $3E $14
    ld h, $FF                                     ; $5262: $26 $FF
    call Call_000_2D19                            ; $5264: $CD $19 $2D
    jp Jump_026_5284                              ; $5267: $C3 $84 $52


Jump_026_526A:
    call Call_000_2CA2                            ; $526A: $CD $A2 $2C
    jr z, jr_026_5275                             ; $526D: $28 $06

    ld hl, $0000                                  ; $526F: $21 $00 $00
    call Call_000_305D                            ; $5272: $CD $5D $30

jr_026_5275:
    ld hl, $0080                                  ; $5275: $21 $80 $00
    call Call_000_30B0                            ; $5278: $CD $B0 $30
    jp Jump_026_529F                              ; $527B: $C3 $9F $52


Jump_026_527E:
    call Call_000_3069                            ; $527E: $CD $69 $30
    jp Jump_026_52E3                              ; $5281: $C3 $E3 $52


Jump_026_5284:
    ld hl, $0000                                  ; $5284: $21 $00 $00
    call Call_000_30FF                            ; $5287: $CD $FF $30
    jp nc, Jump_026_52E3                          ; $528A: $D2 $E3 $52

    ld hl, $0109                                  ; $528D: $21 $09 $01
    ld a, $92                                     ; $5290: $3E $92
    call Call_000_34B3                            ; $5292: $CD $B3 $34
    ld a, $10                                     ; $5295: $3E $10
    ld h, $02                                     ; $5297: $26 $02
    call Call_000_2CBA                            ; $5299: $CD $BA $2C
    jp Jump_026_52E6                              ; $529C: $C3 $E6 $52


Jump_026_529F:
    ld hl, $0060                                  ; $529F: $21 $60 $00
    call Call_000_30FF                            ; $52A2: $CD $FF $30
    jp nc, Jump_026_52E3                          ; $52A5: $D2 $E3 $52

    ld a, $18                                     ; $52A8: $3E $18
    ld h, $14                                     ; $52AA: $26 $14
    call Call_000_2CBA                            ; $52AC: $CD $BA $2C
    jp Jump_026_52E6                              ; $52AF: $C3 $E6 $52


Jump_026_52B2:
    call Call_000_2CA9                            ; $52B2: $CD $A9 $2C
    jp nc, Jump_026_52E3                          ; $52B5: $D2 $E3 $52

    call Call_000_2DB6                            ; $52B8: $CD $B6 $2D
    jr jr_026_52E6                                ; $52BB: $18 $29

Jump_026_52BD:
    call Call_000_326C                            ; $52BD: $CD $6C $32
    jp nc, Jump_026_52D8                          ; $52C0: $D2 $D8 $52

    jp nz, Jump_026_52D8                          ; $52C3: $C2 $D8 $52

    ld hl, $0108                                  ; $52C6: $21 $08 $01
    ld a, $92                                     ; $52C9: $3E $92
    call Call_000_34B3                            ; $52CB: $CD $B3 $34
    ld a, $08                                     ; $52CE: $3E $08
    ld h, $02                                     ; $52D0: $26 $02
    call Call_000_2D19                            ; $52D2: $CD $19 $2D
    jp Jump_026_52E6                              ; $52D5: $C3 $E6 $52


Jump_026_52D8:
    call Call_000_2CA9                            ; $52D8: $CD $A9 $2C
    jp nc, Jump_026_52E3                          ; $52DB: $D2 $E3 $52

    call Call_000_2DB6                            ; $52DE: $CD $B6 $2D
    jr jr_026_52E6                                ; $52E1: $18 $03

Jump_026_52E3:
    call Call_000_2E25                            ; $52E3: $CD $25 $2E

Jump_026_52E6:
jr_026_52E6:
    ret                                           ; $52E6: $C9


Call_026_52E7:
    ld a, $10                                     ; $52E7: $3E $10
    call Call_000_1360                            ; $52E9: $CD $60 $13
    push bc                                       ; $52EC: $C5
    push de                                       ; $52ED: $D5
    ld hl, $0030                                  ; $52EE: $21 $30 $00
    add hl, bc                                    ; $52F1: $09
    ld a, [hl]                                    ; $52F2: $7E
    or a                                          ; $52F3: $B7
    jr nz, jr_026_52F9                            ; $52F4: $20 $03

    xor a                                         ; $52F6: $AF
    jr jr_026_52FA                                ; $52F7: $18 $01

jr_026_52F9:
    scf                                           ; $52F9: $37

jr_026_52FA:
    ld hl, $0022                                  ; $52FA: $21 $22 $00
    push af                                       ; $52FD: $F5
    add hl, bc                                    ; $52FE: $09
    pop af                                        ; $52FF: $F1
    ld a, [hl]                                    ; $5300: $7E
    push af                                       ; $5301: $F5
    call Call_000_25D1                            ; $5302: $CD $D1 $25
    ld hl, $0021                                  ; $5305: $21 $21 $00
    add hl, de                                    ; $5308: $19
    ld [hl], $26                                  ; $5309: $36 $26
    inc hl                                        ; $530B: $23
    ld [hl], $5B                                  ; $530C: $36 $5B
    inc hl                                        ; $530E: $23
    ld [hl], $53                                  ; $530F: $36 $53
    ld hl, $0011                                  ; $5311: $21 $11 $00
    add hl, de                                    ; $5314: $19
    ld [hl], $02                                  ; $5315: $36 $02
    inc hl                                        ; $5317: $23
    ld [hl], $3A                                  ; $5318: $36 $3A
    inc hl                                        ; $531A: $23
    ld [hl], $64                                  ; $531B: $36 $64
    inc hl                                        ; $531D: $23
    ld [hl], $00                                  ; $531E: $36 $00
    ld hl, $001C                                  ; $5320: $21 $1C $00
    add hl, de                                    ; $5323: $19
    ld [hl], $00                                  ; $5324: $36 $00
    inc hl                                        ; $5326: $23
    ld [hl], $00                                  ; $5327: $36 $00
    ld hl, $0029                                  ; $5329: $21 $29 $00
    add hl, de                                    ; $532C: $19
    ld [hl], $00                                  ; $532D: $36 $00
    inc hl                                        ; $532F: $23
    ld [hl], $1E                                  ; $5330: $36 $1E
    call Call_000_2614                            ; $5332: $CD $14 $26
    ld hl, $0800                                  ; $5335: $21 $00 $08
    call Call_000_2F79                            ; $5338: $CD $79 $2F
    ld hl, $0000                                  ; $533B: $21 $00 $00
    call Call_000_2F42                            ; $533E: $CD $42 $2F
    pop af                                        ; $5341: $F1
    jr c, jr_026_5352                             ; $5342: $38 $0E

    bit 1, a                                      ; $5344: $CB $4F
    jr nz, jr_026_534D                            ; $5346: $20 $05

    ld hl, $0020                                  ; $5348: $21 $20 $00
    jr jr_026_5355                                ; $534B: $18 $08

jr_026_534D:
    ld hl, $0040                                  ; $534D: $21 $40 $00
    jr jr_026_5355                                ; $5350: $18 $03

jr_026_5352:
    ld hl, $0080                                  ; $5352: $21 $80 $00

jr_026_5355:
    call Call_000_2FEB                            ; $5355: $CD $EB $2F
    pop de                                        ; $5358: $D1
    pop bc                                        ; $5359: $C1
    ret                                           ; $535A: $C9


    ld hl, $0000                                  ; $535B: $21 $00 $00
    call Call_000_26F3                            ; $535E: $CD $F3 $26
    jr nc, jr_026_5365                            ; $5361: $30 $02

    jr z, jr_026_53AD                             ; $5363: $28 $48

jr_026_5365:
    ld hl, $002A                                  ; $5365: $21 $2A $00
    add hl, de                                    ; $5368: $19
    dec [hl]                                      ; $5369: $35
    jr z, jr_026_53AD                             ; $536A: $28 $41

    ld hl, $009C                                  ; $536C: $21 $9C $00
    add hl, bc                                    ; $536F: $09
    ld a, [hl]                                    ; $5370: $7E
    or a                                          ; $5371: $B7
    jr z, jr_026_53A9                             ; $5372: $28 $35

    ld hl, $0021                                  ; $5374: $21 $21 $00
    add hl, de                                    ; $5377: $19
    ld [hl], $26                                  ; $5378: $36 $26
    inc hl                                        ; $537A: $23
    ld [hl], $B1                                  ; $537B: $36 $B1
    inc hl                                        ; $537D: $23
    ld [hl], $53                                  ; $537E: $36 $53
    ld hl, $0011                                  ; $5380: $21 $11 $00
    add hl, de                                    ; $5383: $19
    ld [hl], $02                                  ; $5384: $36 $02
    inc hl                                        ; $5386: $23
    ld [hl], $44                                  ; $5387: $36 $44
    inc hl                                        ; $5389: $23
    ld [hl], $64                                  ; $538A: $36 $64
    inc hl                                        ; $538C: $23
    ld [hl], $00                                  ; $538D: $36 $00
    ld hl, $0029                                  ; $538F: $21 $29 $00
    add hl, de                                    ; $5392: $19
    ld [hl], $00                                  ; $5393: $36 $00
    inc hl                                        ; $5395: $23
    ld [hl], $08                                  ; $5396: $36 $08
    push bc                                       ; $5398: $C5
    ld hl, $0008                                  ; $5399: $21 $08 $00
    add hl, de                                    ; $539C: $19
    ld b, [hl]                                    ; $539D: $46
    inc hl                                        ; $539E: $23
    ld c, [hl]                                    ; $539F: $4E
    sla c                                         ; $53A0: $CB $21
    rl b                                          ; $53A2: $CB $10
    ld [hl], c                                    ; $53A4: $71
    dec hl                                        ; $53A5: $2B
    ld [hl], b                                    ; $53A6: $70
    pop bc                                        ; $53A7: $C1
    ret                                           ; $53A8: $C9


jr_026_53A9:
    call Call_000_2E25                            ; $53A9: $CD $25 $2E
    ret                                           ; $53AC: $C9


jr_026_53AD:
    call Call_000_27F5                            ; $53AD: $CD $F5 $27
    ret                                           ; $53B0: $C9


    ld hl, $0000                                  ; $53B1: $21 $00 $00
    call Call_000_26F3                            ; $53B4: $CD $F3 $26
    jr nc, jr_026_53BB                            ; $53B7: $30 $02

    jr z, jr_026_53C6                             ; $53B9: $28 $0B

jr_026_53BB:
    ld hl, $002A                                  ; $53BB: $21 $2A $00
    add hl, de                                    ; $53BE: $19
    dec [hl]                                      ; $53BF: $35
    jr z, jr_026_53C6                             ; $53C0: $28 $04

    call Call_000_2E25                            ; $53C2: $CD $25 $2E
    ret                                           ; $53C5: $C9


jr_026_53C6:
    call Call_000_27F5                            ; $53C6: $CD $F5 $27
    ret                                           ; $53C9: $C9


    call Call_000_31B6                            ; $53CA: $CD $B6 $31
    jp c, Jump_026_54B3                           ; $53CD: $DA $B3 $54

    jp z, Jump_026_53DF                           ; $53D0: $CA $DF $53

    call Call_000_3A2A                            ; $53D3: $CD $2A $3A
    jp c, Jump_026_544C                           ; $53D6: $DA $4C $54

    jp z, Jump_026_546D                           ; $53D9: $CA $6D $54

    jp Jump_026_54B3                              ; $53DC: $C3 $B3 $54


Jump_026_53DF:
    call Call_000_3A2A                            ; $53DF: $CD $2A $3A
    jp c, Jump_026_547E                           ; $53E2: $DA $7E $54

    jp z, Jump_026_54A6                           ; $53E5: $CA $A6 $54

    call Call_000_39D3                            ; $53E8: $CD $D3 $39
    jp nc, Jump_026_54B3                          ; $53EB: $D2 $B3 $54

    jp z, Jump_026_53F7                           ; $53EE: $CA $F7 $53

    jp nz, Jump_026_5429                          ; $53F1: $C2 $29 $54

    jp Jump_026_54B3                              ; $53F4: $C3 $B3 $54


Jump_026_53F7:
    call Call_000_3209                            ; $53F7: $CD $09 $32
    jr c, jr_026_5405                             ; $53FA: $38 $09

    ld hl, $3AD4                                  ; $53FC: $21 $D4 $3A
    call Call_000_2B78                            ; $53FF: $CD $78 $2B
    jp c, Jump_026_547E                           ; $5402: $DA $7E $54

jr_026_5405:
    call Call_000_3A61                            ; $5405: $CD $61 $3A
    jp c, Jump_026_54B1                           ; $5408: $DA $B1 $54

    ld hl, $3B14                                  ; $540B: $21 $14 $3B
    call Call_000_2B78                            ; $540E: $CD $78 $2B
    jp c, Jump_026_5462                           ; $5411: $DA $62 $54

    ld hl, $3B2A                                  ; $5414: $21 $2A $3B
    call Call_000_2B78                            ; $5417: $CD $78 $2B
    jp c, Jump_026_544C                           ; $541A: $DA $4C $54

    ld hl, $3AC2                                  ; $541D: $21 $C2 $3A
    call Call_000_2B78                            ; $5420: $CD $78 $2B
    jp c, Jump_026_546D                           ; $5423: $DA $6D $54

    jp Jump_026_54B3                              ; $5426: $C3 $B3 $54


Jump_026_5429:
    call Call_000_3209                            ; $5429: $CD $09 $32
    jp c, Jump_026_5440                           ; $542C: $DA $40 $54

    cp $01                                        ; $542F: $FE $01
    jr z, jr_026_5440                             ; $5431: $28 $0D

    cp $02                                        ; $5433: $FE $02
    jr z, jr_026_5437                             ; $5435: $28 $00

jr_026_5437:
    ld hl, $3AE5                                  ; $5437: $21 $E5 $3A
    call Call_000_2B78                            ; $543A: $CD $78 $2B
    jp c, Jump_026_54A6                           ; $543D: $DA $A6 $54

Jump_026_5440:
jr_026_5440:
    ld hl, $3B2A                                  ; $5440: $21 $2A $3B
    call Call_000_2B78                            ; $5443: $CD $78 $2B
    jp c, Jump_026_5457                           ; $5446: $DA $57 $54

    jp Jump_026_54B3                              ; $5449: $C3 $B3 $54


Jump_026_544C:
    call Call_000_2C23                            ; $544C: $CD $23 $2C
    ld a, $40                                     ; $544F: $3E $40
    call Call_000_32E2                            ; $5451: $CD $E2 $32
    jp Jump_026_54B1                              ; $5454: $C3 $B1 $54


Jump_026_5457:
    call Call_000_2C23                            ; $5457: $CD $23 $2C
    ld a, $42                                     ; $545A: $3E $42
    call Call_000_32E2                            ; $545C: $CD $E2 $32
    jp Jump_026_54B1                              ; $545F: $C3 $B1 $54


Jump_026_5462:
    call Call_000_2C23                            ; $5462: $CD $23 $2C
    ld a, $44                                     ; $5465: $3E $44
    call Call_000_32E2                            ; $5467: $CD $E2 $32
    jp Jump_026_54B1                              ; $546A: $C3 $B1 $54


Jump_026_546D:
    call Call_000_2C23                            ; $546D: $CD $23 $2C
    ld a, $46                                     ; $5470: $3E $46
    call Call_000_32E2                            ; $5472: $CD $E2 $32
    ld hl, $0020                                  ; $5475: $21 $20 $00
    add hl, bc                                    ; $5478: $09
    set 5, [hl]                                   ; $5479: $CB $EE
    jp Jump_026_54B1                              ; $547B: $C3 $B1 $54


Jump_026_547E:
    call Call_000_2C23                            ; $547E: $CD $23 $2C
    call Call_000_36DD                            ; $5481: $CD $DD $36
    jp nc, Jump_026_54B3                          ; $5484: $D2 $B3 $54

    call Call_000_0417                            ; $5487: $CD $17 $04
    ld a, $03                                     ; $548A: $3E $03
    ld [$C2E2], a                                 ; $548C: $EA $E2 $C2
    ld a, $4A                                     ; $548F: $3E $4A
    call Call_000_32E2                            ; $5491: $CD $E2 $32
    ld hl, $0021                                  ; $5494: $21 $21 $00
    add hl, bc                                    ; $5497: $09
    set 7, [hl]                                   ; $5498: $CB $FE
    ld hl, $0031                                  ; $549A: $21 $31 $00
    add hl, bc                                    ; $549D: $09
    ld [hl], $01                                  ; $549E: $36 $01
    call Call_000_34F1                            ; $54A0: $CD $F1 $34
    jp Jump_026_54B1                              ; $54A3: $C3 $B1 $54


Jump_026_54A6:
    call Call_000_2C23                            ; $54A6: $CD $23 $2C
    ld a, $4C                                     ; $54A9: $3E $4C
    call Call_000_32E2                            ; $54AB: $CD $E2 $32
    jp Jump_026_54B1                              ; $54AE: $C3 $B1 $54


Jump_026_54B1:
    scf                                           ; $54B1: $37
    ret                                           ; $54B2: $C9


Jump_026_54B3:
    or a                                          ; $54B3: $B7
    ret                                           ; $54B4: $C9


    call Call_000_2EE0                            ; $54B5: $CD $E0 $2E
    call Call_000_3517                            ; $54B8: $CD $17 $35
    jp c, Jump_026_5677                           ; $54BB: $DA $77 $56

    ld hl, $0018                                  ; $54BE: $21 $18 $00
    add hl, de                                    ; $54C1: $19
    ld a, [hl]                                    ; $54C2: $7E
    cp $00                                        ; $54C3: $FE $00
    jp z, Jump_026_54E9                           ; $54C5: $CA $E9 $54

    cp $04                                        ; $54C8: $FE $04
    jp z, Jump_026_54FD                           ; $54CA: $CA $FD $54

    cp $08                                        ; $54CD: $FE $08
    jp z, Jump_026_5540                           ; $54CF: $CA $40 $55

    cp $0C                                        ; $54D2: $FE $0C
    jp z, Jump_026_55EB                           ; $54D4: $CA $EB $55

    cp $10                                        ; $54D7: $FE $10
    jp z, Jump_026_561A                           ; $54D9: $CA $1A $56

    cp $14                                        ; $54DC: $FE $14
    jp z, Jump_026_562D                           ; $54DE: $CA $2D $56

    cp $18                                        ; $54E1: $FE $18
    jp z, Jump_026_563D                           ; $54E3: $CA $3D $56

    jp Jump_026_5674                              ; $54E6: $C3 $74 $56


Jump_026_54E9:
    call Call_000_2CA9                            ; $54E9: $CD $A9 $2C
    jp nc, Jump_026_5674                          ; $54EC: $D2 $74 $56

    inc hl                                        ; $54EF: $23
    ld [hl], $FF                                  ; $54F0: $36 $FF
    ld hl, $010C                                  ; $54F2: $21 $0C $01
    ld a, $11                                     ; $54F5: $3E $11
    call Call_000_34B3                            ; $54F7: $CD $B3 $34
    jp Jump_026_5674                              ; $54FA: $C3 $74 $56


Jump_026_54FD:
    call Call_000_2CA2                            ; $54FD: $CD $A2 $2C
    jr z, jr_026_5536                             ; $5500: $28 $34

    ld a, $12                                     ; $5502: $3E $12
    call Call_000_1360                            ; $5504: $CD $60 $13
    call Call_000_32CC                            ; $5507: $CD $CC $32
    jr c, jr_026_552A                             ; $550A: $38 $1E

    jr nz, jr_026_551C                            ; $550C: $20 $0E

    ld hl, $0080                                  ; $550E: $21 $80 $00
    call Call_000_2FEB                            ; $5511: $CD $EB $2F
    ld hl, $FA00                                  ; $5514: $21 $00 $FA
    call Call_000_305D                            ; $5517: $CD $5D $30
    jr jr_026_5536                                ; $551A: $18 $1A

jr_026_551C:
    ld hl, $0080                                  ; $551C: $21 $80 $00
    call Call_000_2FEB                            ; $551F: $CD $EB $2F
    ld hl, $F980                                  ; $5522: $21 $80 $F9
    call Call_000_305D                            ; $5525: $CD $5D $30
    jr jr_026_5536                                ; $5528: $18 $0C

jr_026_552A:
    ld hl, $0000                                  ; $552A: $21 $00 $00
    call Call_000_2FEB                            ; $552D: $CD $EB $2F
    ld hl, $F400                                  ; $5530: $21 $00 $F4
    call Call_000_305D                            ; $5533: $CD $5D $30

jr_026_5536:
    ld a, $FE                                     ; $5536: $3E $FE
    ld h, $FF                                     ; $5538: $26 $FF
    call Call_000_2D33                            ; $553A: $CD $33 $2D
    jp Jump_026_55D3                              ; $553D: $C3 $D3 $55


Jump_026_5540:
    call Call_000_2CA2                            ; $5540: $CD $A2 $2C
    jr z, jr_026_559C                             ; $5543: $28 $57

    call Call_000_32CC                            ; $5545: $CD $CC $32
    jr c, jr_026_5568                             ; $5548: $38 $1E

    jr nz, jr_026_555A                            ; $554A: $20 $0E

    ld hl, $0300                                  ; $554C: $21 $00 $03
    call Call_000_2FEB                            ; $554F: $CD $EB $2F
    ld hl, $0000                                  ; $5552: $21 $00 $00
    call Call_000_305D                            ; $5555: $CD $5D $30
    jr jr_026_559C                                ; $5558: $18 $42

jr_026_555A:
    ld hl, $0500                                  ; $555A: $21 $00 $05
    call Call_000_2FEB                            ; $555D: $CD $EB $2F
    ld hl, $0000                                  ; $5560: $21 $00 $00
    call Call_000_305D                            ; $5563: $CD $5D $30
    jr jr_026_559C                                ; $5566: $18 $34

jr_026_5568:
    ld hl, $0099                                  ; $5568: $21 $99 $00
    add hl, bc                                    ; $556B: $09
    ld a, [hl]                                    ; $556C: $7E
    ld hl, $0004                                  ; $556D: $21 $04 $00
    add hl, de                                    ; $5570: $19
    sub [hl]                                      ; $5571: $96
    ld h, a                                       ; $5572: $67
    ld l, $00                                     ; $5573: $2E $00
    sra h                                         ; $5575: $CB $2C
    rr l                                          ; $5577: $CB $1D
    sra h                                         ; $5579: $CB $2C
    rr l                                          ; $557B: $CB $1D
    sra h                                         ; $557D: $CB $2C
    rr l                                          ; $557F: $CB $1D
    sra h                                         ; $5581: $CB $2C
    rr l                                          ; $5583: $CB $1D
    bit 7, h                                      ; $5585: $CB $7C
    jr z, jr_026_5593                             ; $5587: $28 $0A

    ld a, h                                       ; $5589: $7C
    cpl                                           ; $558A: $2F
    ld h, a                                       ; $558B: $67
    ld a, l                                       ; $558C: $7D
    cpl                                           ; $558D: $2F
    ld l, a                                       ; $558E: $6F
    inc l                                         ; $558F: $2C
    jr nz, jr_026_5593                            ; $5590: $20 $01

    inc h                                         ; $5592: $24

jr_026_5593:
    call Call_000_2FEB                            ; $5593: $CD $EB $2F
    ld hl, $0600                                  ; $5596: $21 $00 $06
    call Call_000_305D                            ; $5599: $CD $5D $30

jr_026_559C:
    call Call_000_3262                            ; $559C: $CD $62 $32
    jp nc, Jump_026_55D0                          ; $559F: $D2 $D0 $55

    jp nz, Jump_026_55C8                          ; $55A2: $C2 $C8 $55

    ld a, $03                                     ; $55A5: $3E $03
    ld [$C2E2], a                                 ; $55A7: $EA $E2 $C2
    ld hl, $0021                                  ; $55AA: $21 $21 $00
    add hl, bc                                    ; $55AD: $09
    set 7, [hl]                                   ; $55AE: $CB $FE
    ld hl, $051B                                  ; $55B0: $21 $1B $05
    ld a, $00                                     ; $55B3: $3E $00
    call Call_000_34B3                            ; $55B5: $CD $B3 $34
    ld hl, $F0E0                                  ; $55B8: $21 $E0 $F0
    call Call_000_3496                            ; $55BB: $CD $96 $34
    ld a, $0C                                     ; $55BE: $3E $0C
    ld h, $FF                                     ; $55C0: $26 $FF
    call Call_000_2D19                            ; $55C2: $CD $19 $2D
    jp Jump_026_5677                              ; $55C5: $C3 $77 $56


Jump_026_55C8:
    ld a, $18                                     ; $55C8: $3E $18
    call Call_000_2E6E                            ; $55CA: $CD $6E $2E
    jp Jump_026_5677                              ; $55CD: $C3 $77 $56


Jump_026_55D0:
    jp Jump_026_55D8                              ; $55D0: $C3 $D8 $55


Jump_026_55D3:
    ld hl, $0060                                  ; $55D3: $21 $60 $00
    jr jr_026_55DB                                ; $55D6: $18 $03

Jump_026_55D8:
    ld hl, $0030                                  ; $55D8: $21 $30 $00

jr_026_55DB:
    call Call_000_30FF                            ; $55DB: $CD $FF $30
    jp nc, Jump_026_5674                          ; $55DE: $D2 $74 $56

    ld a, $18                                     ; $55E1: $3E $18
    ld h, $14                                     ; $55E3: $26 $14
    call Call_000_2CBA                            ; $55E5: $CD $BA $2C
    jp Jump_026_5677                              ; $55E8: $C3 $77 $56


Jump_026_55EB:
    call Call_000_2CA2                            ; $55EB: $CD $A2 $2C
    jr z, jr_026_55F6                             ; $55EE: $28 $06

    ld hl, $0100                                  ; $55F0: $21 $00 $01
    call Call_000_2FEB                            ; $55F3: $CD $EB $2F

jr_026_55F6:
    jp Jump_026_55F9                              ; $55F6: $C3 $F9 $55


Jump_026_55F9:
    ld hl, $0060                                  ; $55F9: $21 $60 $00
    call Call_000_30FF                            ; $55FC: $CD $FF $30
    jp nc, Jump_026_5674                          ; $55FF: $D2 $74 $56

    ld a, $10                                     ; $5602: $3E $10
    ld h, $0A                                     ; $5604: $26 $0A
    call Call_000_2CBA                            ; $5606: $CD $BA $2C
    ld hl, $051B                                  ; $5609: $21 $1B $05
    ld a, $00                                     ; $560C: $3E $00
    call Call_000_34B3                            ; $560E: $CD $B3 $34
    ld hl, $FCFF                                  ; $5611: $21 $FF $FC
    call Call_000_3496                            ; $5614: $CD $96 $34
    jp Jump_026_5677                              ; $5617: $C3 $77 $56


Jump_026_561A:
    call Call_000_2CA9                            ; $561A: $CD $A9 $2C
    jp nc, Jump_026_5674                          ; $561D: $D2 $74 $56

    inc hl                                        ; $5620: $23
    ld [hl], $1E                                  ; $5621: $36 $1E
    ld hl, $050F                                  ; $5623: $21 $0F $05
    ld a, $01                                     ; $5626: $3E $01
    call Call_000_34B3                            ; $5628: $CD $B3 $34
    jr jr_026_5674                                ; $562B: $18 $47

Jump_026_562D:
    call Call_000_2CA9                            ; $562D: $CD $A9 $2C
    jp nc, Jump_026_5674                          ; $5630: $D2 $74 $56

    ld a, $00                                     ; $5633: $3E $00
    ld [$C2E2], a                                 ; $5635: $EA $E2 $C2
    call Call_000_2DB6                            ; $5638: $CD $B6 $2D
    jr jr_026_5677                                ; $563B: $18 $3A

Jump_026_563D:
    call Call_000_326C                            ; $563D: $CD $6C $32
    jp nc, Jump_026_5669                          ; $5640: $D2 $69 $56

    jp nz, Jump_026_5669                          ; $5643: $C2 $69 $56

    ld a, $03                                     ; $5646: $3E $03
    ld [$C2E2], a                                 ; $5648: $EA $E2 $C2
    ld hl, $0021                                  ; $564B: $21 $21 $00
    add hl, bc                                    ; $564E: $09
    set 7, [hl]                                   ; $564F: $CB $FE
    ld hl, $0519                                  ; $5651: $21 $19 $05
    ld a, $00                                     ; $5654: $3E $00
    call Call_000_34B3                            ; $5656: $CD $B3 $34
    ld hl, $FC00                                  ; $5659: $21 $00 $FC
    call Call_000_3496                            ; $565C: $CD $96 $34
    ld a, $0C                                     ; $565F: $3E $0C
    ld h, $05                                     ; $5661: $26 $05
    call Call_000_2D19                            ; $5663: $CD $19 $2D
    jp Jump_026_5677                              ; $5666: $C3 $77 $56


Jump_026_5669:
    call Call_000_2CA9                            ; $5669: $CD $A9 $2C
    jp nc, Jump_026_5674                          ; $566C: $D2 $74 $56

    call Call_000_2DB6                            ; $566F: $CD $B6 $2D
    jr jr_026_5677                                ; $5672: $18 $03

Jump_026_5674:
jr_026_5674:
    call Call_000_2E25                            ; $5674: $CD $25 $2E

Jump_026_5677:
jr_026_5677:
    ret                                           ; $5677: $C9


    call Call_000_2EE0                            ; $5678: $CD $E0 $2E
    call Call_000_3517                            ; $567B: $CD $17 $35
    jp c, Jump_026_5800                           ; $567E: $DA $00 $58

    ld hl, $0018                                  ; $5681: $21 $18 $00
    add hl, de                                    ; $5684: $19
    ld a, [hl]                                    ; $5685: $7E
    cp $00                                        ; $5686: $FE $00
    jp z, Jump_026_56A9                           ; $5688: $CA $A9 $56

    cp $04                                        ; $568B: $FE $04
    jp z, Jump_026_56BD                           ; $568D: $CA $BD $56

    cp $08                                        ; $5690: $FE $08
    jp z, Jump_026_5718                           ; $5692: $CA $18 $57

    cp $0C                                        ; $5695: $FE $0C
    jp z, Jump_026_574D                           ; $5697: $CA $4D $57

    cp $10                                        ; $569A: $FE $10
    jp z, Jump_026_5798                           ; $569C: $CA $98 $57

    cp $14                                        ; $569F: $FE $14
    jp z, Jump_026_57AE                           ; $56A1: $CA $AE $57

    cp $18                                        ; $56A4: $FE $18
    jp z, Jump_026_57DF                           ; $56A6: $CA $DF $57

Jump_026_56A9:
    call Call_000_2CA9                            ; $56A9: $CD $A9 $2C
    jp nc, Jump_026_57FD                          ; $56AC: $D2 $FD $57

    inc hl                                        ; $56AF: $23
    ld [hl], $0A                                  ; $56B0: $36 $0A
    ld hl, $0108                                  ; $56B2: $21 $08 $01
    ld a, $11                                     ; $56B5: $3E $11
    call Call_000_34B3                            ; $56B7: $CD $B3 $34
    jp Jump_026_57FD                              ; $56BA: $C3 $FD $57


Jump_026_56BD:
    call Call_000_2CA2                            ; $56BD: $CD $A2 $2C
    jr z, jr_026_56EF                             ; $56C0: $28 $2D

    ld a, $11                                     ; $56C2: $3E $11
    call Call_000_1360                            ; $56C4: $CD $60 $13
    call Call_000_32CC                            ; $56C7: $CD $CC $32
    jr c, jr_026_56E2                             ; $56CA: $38 $16

    jr nz, jr_026_56D8                            ; $56CC: $20 $0A

    ld hl, $0400                                  ; $56CE: $21 $00 $04
    call Call_000_2FEB                            ; $56D1: $CD $EB $2F
    ld a, $02                                     ; $56D4: $3E $02
    jr jr_026_56EA                                ; $56D6: $18 $12

jr_026_56D8:
    ld hl, $0500                                  ; $56D8: $21 $00 $05
    call Call_000_2FEB                            ; $56DB: $CD $EB $2F
    ld a, $03                                     ; $56DE: $3E $03
    jr jr_026_56EA                                ; $56E0: $18 $08

jr_026_56E2:
    ld hl, $0600                                  ; $56E2: $21 $00 $06
    call Call_000_2FEB                            ; $56E5: $CD $EB $2F
    ld a, $04                                     ; $56E8: $3E $04

jr_026_56EA:
    ld hl, $009C                                  ; $56EA: $21 $9C $00
    add hl, bc                                    ; $56ED: $09
    ld [hl], a                                    ; $56EE: $77

jr_026_56EF:
    ld hl, $0020                                  ; $56EF: $21 $20 $00
    call Call_000_30B0                            ; $56F2: $CD $B0 $30
    call Call_000_3262                            ; $56F5: $CD $62 $32
    jp nc, Jump_026_5708                          ; $56F8: $D2 $08 $57

    jp nz, Jump_026_5708                          ; $56FB: $C2 $08 $57

    ld a, $0C                                     ; $56FE: $3E $0C
    ld h, $FF                                     ; $5700: $26 $FF
    call Call_000_2D19                            ; $5702: $CD $19 $2D
    jp Jump_026_5800                              ; $5705: $C3 $00 $58


Jump_026_5708:
    call Call_000_2CA9                            ; $5708: $CD $A9 $2C
    jp nc, Jump_026_57FD                          ; $570B: $D2 $FD $57

    ld a, $18                                     ; $570E: $3E $18
    ld h, $14                                     ; $5710: $26 $14
    call Call_000_2D19                            ; $5712: $CD $19 $2D
    jp Jump_026_57FD                              ; $5715: $C3 $FD $57


Jump_026_5718:
    call Call_000_2CA9                            ; $5718: $CD $A9 $2C
    jp nc, Jump_026_57FD                          ; $571B: $D2 $FD $57

    inc hl                                        ; $571E: $23
    ld [hl], $FF                                  ; $571F: $36 $FF
    ld a, $03                                     ; $5721: $3E $03
    ld [$C2E2], a                                 ; $5723: $EA $E2 $C2
    ld hl, $0021                                  ; $5726: $21 $21 $00
    add hl, bc                                    ; $5729: $09
    set 7, [hl]                                   ; $572A: $CB $FE
    ld hl, $020E                                  ; $572C: $21 $0E $02
    ld a, $11                                     ; $572F: $3E $11
    call Call_000_34B3                            ; $5731: $CD $B3 $34
    call Call_000_32CC                            ; $5734: $CD $CC $32
    jr c, jr_026_5743                             ; $5737: $38 $0A

    jr nz, jr_026_573F                            ; $5739: $20 $04

    ld a, $02                                     ; $573B: $3E $02
    jr jr_026_5745                                ; $573D: $18 $06

jr_026_573F:
    ld a, $03                                     ; $573F: $3E $03
    jr jr_026_5745                                ; $5741: $18 $02

jr_026_5743:
    ld a, $04                                     ; $5743: $3E $04

jr_026_5745:
    ld hl, $009C                                  ; $5745: $21 $9C $00
    add hl, bc                                    ; $5748: $09
    ld [hl], a                                    ; $5749: $77
    jp Jump_026_57FD                              ; $574A: $C3 $FD $57


Jump_026_574D:
    call Call_000_2CA2                            ; $574D: $CD $A2 $2C
    jr z, jr_026_576E                             ; $5750: $28 $1C

    ld a, $11                                     ; $5752: $3E $11
    call Call_000_1360                            ; $5754: $CD $60 $13
    ld a, $03                                     ; $5757: $3E $03
    ld [$C2E2], a                                 ; $5759: $EA $E2 $C2
    ld hl, $0021                                  ; $575C: $21 $21 $00
    add hl, bc                                    ; $575F: $09
    set 7, [hl]                                   ; $5760: $CB $FE
    ld hl, $F400                                  ; $5762: $21 $00 $F4
    call Call_000_305D                            ; $5765: $CD $5D $30
    ld hl, $0000                                  ; $5768: $21 $00 $00
    call Call_000_2FEB                            ; $576B: $CD $EB $2F

jr_026_576E:
    call Call_026_5801                            ; $576E: $CD $01 $58
    ld a, $FC                                     ; $5771: $3E $FC
    ld h, $FF                                     ; $5773: $26 $FF
    call Call_000_2D33                            ; $5775: $CD $33 $2D
    jp nc, Jump_026_579B                          ; $5778: $D2 $9B $57

    ld hl, $020E                                  ; $577B: $21 $0E $02
    ld a, $11                                     ; $577E: $3E $11
    call Call_000_34B3                            ; $5780: $CD $B3 $34
    ld hl, $009C                                  ; $5783: $21 $9C $00
    add hl, bc                                    ; $5786: $09
    ld a, [hl]                                    ; $5787: $7E
    cp $01                                        ; $5788: $FE $01
    jp nz, Jump_026_579B                          ; $578A: $C2 $9B $57

    ld hl, $0308                                  ; $578D: $21 $08 $03
    ld a, $03                                     ; $5790: $3E $03
    call Call_000_34B3                            ; $5792: $CD $B3 $34
    jp Jump_026_579B                              ; $5795: $C3 $9B $57


Jump_026_5798:
    call Call_026_5801                            ; $5798: $CD $01 $58

Jump_026_579B:
    ld hl, $0180                                  ; $579B: $21 $80 $01
    call Call_000_30FF                            ; $579E: $CD $FF $30
    jp nc, Jump_026_57FD                          ; $57A1: $D2 $FD $57

    ld a, $14                                     ; $57A4: $3E $14
    ld h, $06                                     ; $57A6: $26 $06
    call Call_000_2CBA                            ; $57A8: $CD $BA $2C
    jp Jump_026_5800                              ; $57AB: $C3 $00 $58


Jump_026_57AE:
    call Call_000_2CA9                            ; $57AE: $CD $A9 $2C
    jp nc, Jump_026_57FD                          ; $57B1: $D2 $FD $57

    inc hl                                        ; $57B4: $23
    ld [hl], $FF                                  ; $57B5: $36 $FF
    ld hl, $009C                                  ; $57B7: $21 $9C $00
    add hl, bc                                    ; $57BA: $09
    dec [hl]                                      ; $57BB: $35
    jr nz, jr_026_57D6                            ; $57BC: $20 $18

    xor a                                         ; $57BE: $AF
    ld [$C2E2], a                                 ; $57BF: $EA $E2 $C2
    ld a, $68                                     ; $57C2: $3E $68
    call Call_000_2E6E                            ; $57C4: $CD $6E $2E
    ld hl, $FD00                                  ; $57C7: $21 $00 $FD
    call Call_000_2FEB                            ; $57CA: $CD $EB $2F
    ld hl, $FA00                                  ; $57CD: $21 $00 $FA
    call Call_000_305D                            ; $57D0: $CD $5D $30
    jp Jump_026_5800                              ; $57D3: $C3 $00 $58


jr_026_57D6:
    ld hl, $0014                                  ; $57D6: $21 $14 $00
    add hl, de                                    ; $57D9: $19
    ld [hl], $08                                  ; $57DA: $36 $08
    jp Jump_026_57FD                              ; $57DC: $C3 $FD $57


Jump_026_57DF:
    call Call_000_326C                            ; $57DF: $CD $6C $32
    jp nc, Jump_026_57F2                          ; $57E2: $D2 $F2 $57

    jp nz, Jump_026_57F2                          ; $57E5: $C2 $F2 $57

    ld a, $08                                     ; $57E8: $3E $08
    ld h, $01                                     ; $57EA: $26 $01
    call Call_000_2D19                            ; $57EC: $CD $19 $2D
    jp Jump_026_5800                              ; $57EF: $C3 $00 $58


Jump_026_57F2:
    call Call_000_2CA9                            ; $57F2: $CD $A9 $2C
    jp nc, Jump_026_5674                          ; $57F5: $D2 $74 $56

    call Call_000_2DB6                            ; $57F8: $CD $B6 $2D
    jr jr_026_5800                                ; $57FB: $18 $03

Jump_026_57FD:
    call Call_000_2E25                            ; $57FD: $CD $25 $2E

Jump_026_5800:
jr_026_5800:
    ret                                           ; $5800: $C9


Call_026_5801:
    ld hl, $0099                                  ; $5801: $21 $99 $00
    add hl, bc                                    ; $5804: $09
    ld a, [hl]                                    ; $5805: $7E
    ld hl, $0004                                  ; $5806: $21 $04 $00
    add hl, de                                    ; $5809: $19
    sub [hl]                                      ; $580A: $96
    ld h, a                                       ; $580B: $67
    ld l, $00                                     ; $580C: $2E $00
    sra h                                         ; $580E: $CB $2C
    rr l                                          ; $5810: $CB $1D
    sra h                                         ; $5812: $CB $2C
    rr l                                          ; $5814: $CB $1D
    sra h                                         ; $5816: $CB $2C
    rr l                                          ; $5818: $CB $1D
    call Call_000_2F0B                            ; $581A: $CD $0B $2F
    ret                                           ; $581D: $C9


    call Call_000_2EE0                            ; $581E: $CD $E0 $2E
    call Call_000_3517                            ; $5821: $CD $17 $35
    jp c, Jump_026_58DA                           ; $5824: $DA $DA $58

    ld hl, $0018                                  ; $5827: $21 $18 $00
    add hl, de                                    ; $582A: $19
    ld a, [hl]                                    ; $582B: $7E
    cp $00                                        ; $582C: $FE $00
    jp z, Jump_026_5843                           ; $582E: $CA $43 $58

    cp $04                                        ; $5831: $FE $04
    jp z, Jump_026_5857                           ; $5833: $CA $57 $58

    cp $08                                        ; $5836: $FE $08
    jp z, Jump_026_589B                           ; $5838: $CA $9B $58

    cp $0C                                        ; $583B: $FE $0C
    jp z, Jump_026_58CC                           ; $583D: $CA $CC $58

    jp Jump_026_58D7                              ; $5840: $C3 $D7 $58


Jump_026_5843:
    call Call_000_2CA9                            ; $5843: $CD $A9 $2C
    jp nc, Jump_026_58D7                          ; $5846: $D2 $D7 $58

    inc hl                                        ; $5849: $23
    ld [hl], $04                                  ; $584A: $36 $04
    ld hl, $0204                                  ; $584C: $21 $04 $02
    ld a, $01                                     ; $584F: $3E $01
    call Call_000_34B3                            ; $5851: $CD $B3 $34
    jp Jump_026_58D7                              ; $5854: $C3 $D7 $58


Jump_026_5857:
    call Call_000_2CA2                            ; $5857: $CD $A2 $2C
    jr z, jr_026_587E                             ; $585A: $28 $22

    ld a, $11                                     ; $585C: $3E $11
    call Call_000_1360                            ; $585E: $CD $60 $13
    call Call_000_32CC                            ; $5861: $CD $CC $32
    jr c, jr_026_5878                             ; $5864: $38 $12

    jr nz, jr_026_5870                            ; $5866: $20 $08

    ld hl, $0400                                  ; $5868: $21 $00 $04
    call Call_000_2FEB                            ; $586B: $CD $EB $2F
    jr jr_026_587E                                ; $586E: $18 $0E

jr_026_5870:
    ld hl, $0500                                  ; $5870: $21 $00 $05
    call Call_000_2FEB                            ; $5873: $CD $EB $2F
    jr jr_026_587E                                ; $5876: $18 $06

jr_026_5878:
    ld hl, $0600                                  ; $5878: $21 $00 $06
    call Call_000_2FEB                            ; $587B: $CD $EB $2F

jr_026_587E:
    call Call_026_58B6                            ; $587E: $CD $B6 $58
    ld hl, $0010                                  ; $5881: $21 $10 $00
    call Call_000_30B0                            ; $5884: $CD $B0 $30
    call Call_000_2CA9                            ; $5887: $CD $A9 $2C
    jp nc, Jump_026_58D7                          ; $588A: $D2 $D7 $58

    inc hl                                        ; $588D: $23
    ld [hl], $1E                                  ; $588E: $36 $1E
    ld hl, $030A                                  ; $5890: $21 $0A $03
    ld a, $03                                     ; $5893: $3E $03
    call Call_000_34B3                            ; $5895: $CD $B3 $34
    jp Jump_026_58D7                              ; $5898: $C3 $D7 $58


Jump_026_589B:
    call Call_000_2CA2                            ; $589B: $CD $A2 $2C
    jr z, jr_026_58AA                             ; $589E: $28 $0A

    ld a, $0E                                     ; $58A0: $3E $0E
    call Call_000_1360                            ; $58A2: $CD $60 $13
    ld a, $05                                     ; $58A5: $3E $05
    call Call_000_3963                            ; $58A7: $CD $63 $39

jr_026_58AA:
    call Call_000_2CA9                            ; $58AA: $CD $A9 $2C
    jp nc, Jump_026_58D7                          ; $58AD: $D2 $D7 $58

    inc hl                                        ; $58B0: $23
    ld [hl], $0A                                  ; $58B1: $36 $0A
    jp Jump_026_58D7                              ; $58B3: $C3 $D7 $58


Call_026_58B6:
    call Call_000_32CC                            ; $58B6: $CD $CC $32
    jr c, jr_026_58BC                             ; $58B9: $38 $01

    ret                                           ; $58BB: $C9


jr_026_58BC:
    ld hl, $001C                                  ; $58BC: $21 $1C $00
    add hl, de                                    ; $58BF: $19
    ld a, [hl]                                    ; $58C0: $7E
    or a                                          ; $58C1: $B7
    ret z                                         ; $58C2: $C8

    ld hl, HeaderLogo                             ; $58C3: $21 $04 $01
    ld a, $92                                     ; $58C6: $3E $92
    call Call_000_34A2                            ; $58C8: $CD $A2 $34
    ret                                           ; $58CB: $C9


Jump_026_58CC:
    call Call_000_2CA9                            ; $58CC: $CD $A9 $2C
    jp nc, Jump_026_58D7                          ; $58CF: $D2 $D7 $58

    call Call_000_2DB6                            ; $58D2: $CD $B6 $2D
    jr jr_026_58DA                                ; $58D5: $18 $03

Jump_026_58D7:
    jp Jump_000_2E25                              ; $58D7: $C3 $25 $2E


Jump_026_58DA:
jr_026_58DA:
    ret                                           ; $58DA: $C9


    call Call_000_2EE0                            ; $58DB: $CD $E0 $2E
    call Call_000_3517                            ; $58DE: $CD $17 $35
    jp c, Jump_026_5937                           ; $58E1: $DA $37 $59

    ld hl, $0018                                  ; $58E4: $21 $18 $00
    add hl, de                                    ; $58E7: $19
    ld a, [hl]                                    ; $58E8: $7E
    cp $00                                        ; $58E9: $FE $00
    jp z, Jump_026_58FD                           ; $58EB: $CA $FD $58

    cp $04                                        ; $58EE: $FE $04
    jp z, Jump_026_590E                           ; $58F0: $CA $0E $59

    cp $08                                        ; $58F3: $FE $08
    jp z, Jump_026_591D                           ; $58F5: $CA $1D $59

    cp $0C                                        ; $58F8: $FE $0C
    jp z, Jump_026_5929                           ; $58FA: $CA $29 $59

Jump_026_58FD:
    call Call_000_2CA9                            ; $58FD: $CD $A9 $2C
    jp nc, Jump_026_5934                          ; $5900: $D2 $34 $59

    inc hl                                        ; $5903: $23
    ld [hl], $08                                  ; $5904: $36 $08
    ld a, $B6                                     ; $5906: $3E $B6
    call Call_000_1360                            ; $5908: $CD $60 $13
    jp Jump_026_5934                              ; $590B: $C3 $34 $59


Jump_026_590E:
    call Call_026_5938                            ; $590E: $CD $38 $59
    call Call_000_2CA9                            ; $5911: $CD $A9 $2C
    jp nc, Jump_026_5934                          ; $5914: $D2 $34 $59

    inc hl                                        ; $5917: $23
    ld [hl], $14                                  ; $5918: $36 $14
    jp Jump_026_5934                              ; $591A: $C3 $34 $59


Jump_026_591D:
    call Call_000_2CA9                            ; $591D: $CD $A9 $2C
    jp nc, Jump_026_5934                          ; $5920: $D2 $34 $59

    inc hl                                        ; $5923: $23
    ld [hl], $06                                  ; $5924: $36 $06
    jp Jump_026_5934                              ; $5926: $C3 $34 $59


Jump_026_5929:
    call Call_000_2CA9                            ; $5929: $CD $A9 $2C
    jp nc, Jump_026_5934                          ; $592C: $D2 $34 $59

    call Call_000_2DB6                            ; $592F: $CD $B6 $2D
    jr jr_026_5937                                ; $5932: $18 $03

Jump_026_5934:
    call Call_000_2E25                            ; $5934: $CD $25 $2E

Jump_026_5937:
jr_026_5937:
    ret                                           ; $5937: $C9


Call_026_5938:
    call Call_000_32CC                            ; $5938: $CD $CC $32
    jr c, jr_026_593E                             ; $593B: $38 $01

    ret                                           ; $593D: $C9


jr_026_593E:
    ld hl, $0108                                  ; $593E: $21 $08 $01
    ld a, $92                                     ; $5941: $3E $92
    call Call_000_34A2                            ; $5943: $CD $A2 $34
    ret                                           ; $5946: $C9


    call Call_000_2EE0                            ; $5947: $CD $E0 $2E
    call Call_000_3517                            ; $594A: $CD $17 $35
    jp c, Jump_026_59E2                           ; $594D: $DA $E2 $59

    ld hl, $0018                                  ; $5950: $21 $18 $00
    add hl, de                                    ; $5953: $19
    ld a, [hl]                                    ; $5954: $7E
    cp $00                                        ; $5955: $FE $00
    jp z, Jump_026_5971                           ; $5957: $CA $71 $59

    cp $04                                        ; $595A: $FE $04
    jp z, Jump_026_598B                           ; $595C: $CA $8B $59

    cp $08                                        ; $595F: $FE $08
    jp z, Jump_026_599F                           ; $5961: $CA $9F $59

    cp $0C                                        ; $5964: $FE $0C
    jp z, Jump_026_59AB                           ; $5966: $CA $AB $59

    cp $10                                        ; $5969: $FE $10
    jp z, Jump_026_59B7                           ; $596B: $CA $B7 $59

    jp Jump_026_59DF                              ; $596E: $C3 $DF $59


Jump_026_5971:
    call Call_000_2CA9                            ; $5971: $CD $A9 $2C
    jp nc, Jump_026_59DF                          ; $5974: $D2 $DF $59

    inc hl                                        ; $5977: $23
    ld [hl], $05                                  ; $5978: $36 $05
    ld hl, $0119                                  ; $597A: $21 $19 $01
    ld a, $01                                     ; $597D: $3E $01
    call Call_000_34B3                            ; $597F: $CD $B3 $34
    ld hl, $F0F0                                  ; $5982: $21 $F0 $F0
    call Call_000_3496                            ; $5985: $CD $96 $34
    jp Jump_026_59DF                              ; $5988: $C3 $DF $59


Jump_026_598B:
    call Call_000_2CA9                            ; $598B: $CD $A9 $2C
    jp nc, Jump_026_59DF                          ; $598E: $D2 $DF $59

    inc hl                                        ; $5991: $23
    ld [hl], $0A                                  ; $5992: $36 $0A
    ld hl, $010C                                  ; $5994: $21 $0C $01
    ld a, $01                                     ; $5997: $3E $01
    call Call_000_34B3                            ; $5999: $CD $B3 $34
    jp Jump_026_59DF                              ; $599C: $C3 $DF $59


Jump_026_599F:
    call Call_000_2CA9                            ; $599F: $CD $A9 $2C
    jp nc, Jump_026_59DF                          ; $59A2: $D2 $DF $59

    inc hl                                        ; $59A5: $23
    ld [hl], $0A                                  ; $59A6: $36 $0A
    jp Jump_026_59DF                              ; $59A8: $C3 $DF $59


Jump_026_59AB:
    call Call_000_2CA9                            ; $59AB: $CD $A9 $2C
    jp nc, Jump_026_59DF                          ; $59AE: $D2 $DF $59

    inc hl                                        ; $59B1: $23
    ld [hl], $32                                  ; $59B2: $36 $32
    jp Jump_026_59DF                              ; $59B4: $C3 $DF $59


Jump_026_59B7:
    call Call_000_2CA2                            ; $59B7: $CD $A2 $2C
    jp z, Jump_026_59CA                           ; $59BA: $CA $CA $59

    xor a                                         ; $59BD: $AF
    ld [$C2E2], a                                 ; $59BE: $EA $E2 $C2
    ld hl, $F900                                  ; $59C1: $21 $00 $F9
    call Call_000_2FEB                            ; $59C4: $CD $EB $2F
    call Call_026_5B74                            ; $59C7: $CD $74 $5B

Jump_026_59CA:
    ld hl, $0040                                  ; $59CA: $21 $40 $00
    call Call_000_30B0                            ; $59CD: $CD $B0 $30
    call Call_000_2CA9                            ; $59D0: $CD $A9 $2C
    jp nc, Jump_026_59DF                          ; $59D3: $D2 $DF $59

    xor a                                         ; $59D6: $AF
    ld [$C2E2], a                                 ; $59D7: $EA $E2 $C2
    call Call_000_2DB6                            ; $59DA: $CD $B6 $2D
    jr jr_026_59E2                                ; $59DD: $18 $03

Jump_026_59DF:
    call Call_000_2E25                            ; $59DF: $CD $25 $2E

Jump_026_59E2:
jr_026_59E2:
    ret                                           ; $59E2: $C9


    call Call_000_2EE0                            ; $59E3: $CD $E0 $2E
    call Call_000_3517                            ; $59E6: $CD $17 $35
    jp c, Jump_026_5B73                           ; $59E9: $DA $73 $5B

    ld hl, $0018                                  ; $59EC: $21 $18 $00
    add hl, de                                    ; $59EF: $19
    ld a, [hl]                                    ; $59F0: $7E
    cp $00                                        ; $59F1: $FE $00
    jp z, Jump_026_5A2B                           ; $59F3: $CA $2B $5A

    cp $04                                        ; $59F6: $FE $04
    jp z, Jump_026_5A37                           ; $59F8: $CA $37 $5A

    cp $08                                        ; $59FB: $FE $08
    jp z, Jump_026_5A57                           ; $59FD: $CA $57 $5A

    cp $0C                                        ; $5A00: $FE $0C
    jp z, Jump_026_5AAA                           ; $5A02: $CA $AA $5A

    cp $10                                        ; $5A05: $FE $10
    jp z, Jump_026_5AAA                           ; $5A07: $CA $AA $5A

    cp $14                                        ; $5A0A: $FE $14
    jp z, Jump_026_5AB3                           ; $5A0C: $CA $B3 $5A

    cp $18                                        ; $5A0F: $FE $18
    jp z, Jump_026_5ABF                           ; $5A11: $CA $BF $5A

    cp $1C                                        ; $5A14: $FE $1C
    jp z, Jump_026_5B09                           ; $5A16: $CA $09 $5B

    cp $20                                        ; $5A19: $FE $20
    jp z, Jump_026_5B46                           ; $5A1B: $CA $46 $5B

    cp $24                                        ; $5A1E: $FE $24
    jp z, Jump_026_5B65                           ; $5A20: $CA $65 $5B

    cp $28                                        ; $5A23: $FE $28
    jp z, Jump_026_5B52                           ; $5A25: $CA $52 $5B

    jp Jump_026_5B70                              ; $5A28: $C3 $70 $5B


Jump_026_5A2B:
    call Call_000_2CA9                            ; $5A2B: $CD $A9 $2C
    jp nc, Jump_026_5B70                          ; $5A2E: $D2 $70 $5B

    inc hl                                        ; $5A31: $23
    ld [hl], $02                                  ; $5A32: $36 $02
    jp Jump_026_5B70                              ; $5A34: $C3 $70 $5B


Jump_026_5A37:
    call Call_000_2CA2                            ; $5A37: $CD $A2 $2C
    jp z, Jump_026_5A43                           ; $5A3A: $CA $43 $5A

    ld hl, $0031                                  ; $5A3D: $21 $31 $00
    add hl, bc                                    ; $5A40: $09
    ld [hl], $01                                  ; $5A41: $36 $01

Jump_026_5A43:
    call Call_000_2CA9                            ; $5A43: $CD $A9 $2C
    jp nc, Jump_026_5B70                          ; $5A46: $D2 $70 $5B

    inc hl                                        ; $5A49: $23
    ld [hl], $14                                  ; $5A4A: $36 $14
    ld hl, $010B                                  ; $5A4C: $21 $0B $01
    ld a, $12                                     ; $5A4F: $3E $12
    call Call_000_34B3                            ; $5A51: $CD $B3 $34
    jp Jump_026_5B70                              ; $5A54: $C3 $70 $5B


Jump_026_5A57:
    call Call_000_2CA2                            ; $5A57: $CD $A2 $2C
    jp z, Jump_026_5A72                           ; $5A5A: $CA $72 $5A

    ld a, $AE                                     ; $5A5D: $3E $AE
    call Call_000_1360                            ; $5A5F: $CD $60 $13
    ld hl, $0021                                  ; $5A62: $21 $21 $00
    add hl, bc                                    ; $5A65: $09
    res 7, [hl]                                   ; $5A66: $CB $BE
    res 3, [hl]                                   ; $5A68: $CB $9E
    res 5, [hl]                                   ; $5A6A: $CB $AE
    ld hl, $0600                                  ; $5A6C: $21 $00 $06
    call Call_000_2FEB                            ; $5A6F: $CD $EB $2F

Jump_026_5A72:
    call Call_000_3262                            ; $5A72: $CD $62 $32
    jp nc, Jump_026_5A8D                          ; $5A75: $D2 $8D $5A

    jp nz, Jump_026_5AA0                          ; $5A78: $C2 $A0 $5A

    ld a, $0C                                     ; $5A7B: $3E $0C
    ld h, $00                                     ; $5A7D: $26 $00
    call Call_000_2D19                            ; $5A7F: $CD $19 $2D
    ld hl, $010C                                  ; $5A82: $21 $0C $01
    ld a, $12                                     ; $5A85: $3E $12
    call Call_000_34B3                            ; $5A87: $CD $B3 $34
    jp Jump_026_5B73                              ; $5A8A: $C3 $73 $5B


Jump_026_5A8D:
    call Call_000_3069                            ; $5A8D: $CD $69 $30
    call Call_000_2CA9                            ; $5A90: $CD $A9 $2C
    jp nc, Jump_026_5B70                          ; $5A93: $D2 $70 $5B

    ld a, $28                                     ; $5A96: $3E $28
    ld h, $0A                                     ; $5A98: $26 $0A
    call Call_000_2D19                            ; $5A9A: $CD $19 $2D
    jp Jump_026_5B73                              ; $5A9D: $C3 $73 $5B


Jump_026_5AA0:
    ld a, $28                                     ; $5AA0: $3E $28
    ld h, $14                                     ; $5AA2: $26 $14
    call Call_000_2D19                            ; $5AA4: $CD $19 $2D
    jp Jump_026_5B73                              ; $5AA7: $C3 $73 $5B


Jump_026_5AAA:
    call Call_000_2CA9                            ; $5AAA: $CD $A9 $2C
    jp nc, Jump_026_5B70                          ; $5AAD: $D2 $70 $5B

    jp Jump_026_5B70                              ; $5AB0: $C3 $70 $5B


Jump_026_5AB3:
    call Call_000_2CA9                            ; $5AB3: $CD $A9 $2C
    jp nc, Jump_026_5B70                          ; $5AB6: $D2 $70 $5B

    inc hl                                        ; $5AB9: $23
    ld [hl], $FF                                  ; $5ABA: $36 $FF
    jp Jump_026_5B70                              ; $5ABC: $C3 $70 $5B


Jump_026_5ABF:
    call Call_000_2CA2                            ; $5ABF: $CD $A2 $2C
    jp z, Jump_026_5AF6                           ; $5AC2: $CA $F6 $5A

    ld a, $B6                                     ; $5AC5: $3E $B6
    call Call_000_1360                            ; $5AC7: $CD $60 $13
    ld hl, $0099                                  ; $5ACA: $21 $99 $00
    add hl, bc                                    ; $5ACD: $09
    ld a, [hl]                                    ; $5ACE: $7E
    ld hl, $0004                                  ; $5ACF: $21 $04 $00
    add hl, de                                    ; $5AD2: $19
    ld [hl], a                                    ; $5AD3: $77
    ld hl, $009A                                  ; $5AD4: $21 $9A $00
    add hl, bc                                    ; $5AD7: $09
    ld a, [hl]                                    ; $5AD8: $7E
    ld hl, $0006                                  ; $5AD9: $21 $06 $00
    add hl, de                                    ; $5ADC: $19
    ld [hl], a                                    ; $5ADD: $77
    ld hl, $0800                                  ; $5ADE: $21 $00 $08
    call Call_000_2F79                            ; $5AE1: $CD $79 $2F
    ld hl, $F800                                  ; $5AE4: $21 $00 $F8
    call Call_000_2F42                            ; $5AE7: $CD $42 $2F
    ld hl, $0080                                  ; $5AEA: $21 $80 $00
    call Call_000_2FEB                            ; $5AED: $CD $EB $2F
    ld hl, $0000                                  ; $5AF0: $21 $00 $00
    call Call_000_305D                            ; $5AF3: $CD $5D $30

Jump_026_5AF6:
    ld hl, $0018                                  ; $5AF6: $21 $18 $00
    call Call_000_30FF                            ; $5AF9: $CD $FF $30
    jp nc, Jump_026_5B70                          ; $5AFC: $D2 $70 $5B

    ld a, $1C                                     ; $5AFF: $3E $1C
    ld h, $08                                     ; $5B01: $26 $08
    call Call_000_2CBA                            ; $5B03: $CD $BA $2C
    jp Jump_026_5B73                              ; $5B06: $C3 $73 $5B


Jump_026_5B09:
    call Call_000_2CA2                            ; $5B09: $CD $A2 $2C
    jp z, Jump_026_5B3A                           ; $5B0C: $CA $3A $5B

    push de                                       ; $5B0F: $D5
    ld hl, $002D                                  ; $5B10: $21 $2D $00
    add hl, bc                                    ; $5B13: $09
    ld a, [hl]                                    ; $5B14: $7E
    or a                                          ; $5B15: $B7
    jr nz, jr_026_5B1D                            ; $5B16: $20 $05

    ld de, $DA00                                  ; $5B18: $11 $00 $DA
    jr jr_026_5B20                                ; $5B1B: $18 $03

jr_026_5B1D:
    ld de, $D900                                  ; $5B1D: $11 $00 $D9

jr_026_5B20:
    ld hl, $0060                                  ; $5B20: $21 $60 $00
    add hl, de                                    ; $5B23: $19
    ld a, [hl]                                    ; $5B24: $7E
    or a                                          ; $5B25: $B7
    jr z, jr_026_5B39                             ; $5B26: $28 $11

    push af                                       ; $5B28: $F5
    ld hl, $0060                                  ; $5B29: $21 $60 $00
    add hl, bc                                    ; $5B2C: $09
    ld a, [hl]                                    ; $5B2D: $7E
    ld hl, $0060                                  ; $5B2E: $21 $60 $00
    add hl, de                                    ; $5B31: $19
    ld [hl], a                                    ; $5B32: $77
    pop af                                        ; $5B33: $F1
    ld hl, $0060                                  ; $5B34: $21 $60 $00
    add hl, bc                                    ; $5B37: $09
    ld [hl], a                                    ; $5B38: $77

jr_026_5B39:
    pop de                                        ; $5B39: $D1

Jump_026_5B3A:
    call Call_000_2CA9                            ; $5B3A: $CD $A9 $2C
    jp nc, Jump_026_5B70                          ; $5B3D: $D2 $70 $5B

    inc hl                                        ; $5B40: $23
    ld [hl], $0A                                  ; $5B41: $36 $0A
    jp Jump_026_5B70                              ; $5B43: $C3 $70 $5B


Jump_026_5B46:
    call Call_000_2CA9                            ; $5B46: $CD $A9 $2C
    jp nc, Jump_026_5B70                          ; $5B49: $D2 $70 $5B

    inc hl                                        ; $5B4C: $23
    ld [hl], $0A                                  ; $5B4D: $36 $0A
    jp Jump_026_5B70                              ; $5B4F: $C3 $70 $5B


Jump_026_5B52:
    call Call_000_326C                            ; $5B52: $CD $6C $32
    jp nc, Jump_026_5B65                          ; $5B55: $D2 $65 $5B

    jp nz, Jump_026_5B65                          ; $5B58: $C2 $65 $5B

    ld a, $0C                                     ; $5B5B: $3E $0C
    ld h, $01                                     ; $5B5D: $26 $01
    call Call_000_2D19                            ; $5B5F: $CD $19 $2D
    jp Jump_026_5B73                              ; $5B62: $C3 $73 $5B


Jump_026_5B65:
    call Call_000_2CA9                            ; $5B65: $CD $A9 $2C
    jp nc, Jump_026_5B70                          ; $5B68: $D2 $70 $5B

    call Call_000_2DB6                            ; $5B6B: $CD $B6 $2D
    jr jr_026_5B73                                ; $5B6E: $18 $03

Jump_026_5B70:
    call Call_000_2E25                            ; $5B70: $CD $25 $2E

Jump_026_5B73:
jr_026_5B73:
    ret                                           ; $5B73: $C9


Call_026_5B74:
    ld a, $14                                     ; $5B74: $3E $14
    call Call_000_1360                            ; $5B76: $CD $60 $13
    push de                                       ; $5B79: $D5
    push bc                                       ; $5B7A: $C5
    call Call_000_25D1                            ; $5B7B: $CD $D1 $25
    ld hl, $0021                                  ; $5B7E: $21 $21 $00
    add hl, de                                    ; $5B81: $19
    ld [hl], $26                                  ; $5B82: $36 $26
    inc hl                                        ; $5B84: $23
    ld [hl], $C7                                  ; $5B85: $36 $C7
    inc hl                                        ; $5B87: $23
    ld [hl], $5B                                  ; $5B88: $36 $5B
    ld hl, $0011                                  ; $5B8A: $21 $11 $00
    add hl, de                                    ; $5B8D: $19
    ld [hl], $02                                  ; $5B8E: $36 $02
    inc hl                                        ; $5B90: $23
    ld [hl], $B6                                  ; $5B91: $36 $B6
    inc hl                                        ; $5B93: $23
    ld [hl], $65                                  ; $5B94: $36 $65
    inc hl                                        ; $5B96: $23
    ld [hl], $00                                  ; $5B97: $36 $00
    ld hl, $001C                                  ; $5B99: $21 $1C $00
    add hl, de                                    ; $5B9C: $19
    ld [hl], $03                                  ; $5B9D: $36 $03
    inc hl                                        ; $5B9F: $23
    ld [hl], $03                                  ; $5BA0: $36 $03
    ld hl, $0029                                  ; $5BA2: $21 $29 $00
    add hl, de                                    ; $5BA5: $19
    ld [hl], $00                                  ; $5BA6: $36 $00
    inc hl                                        ; $5BA8: $23
    ld [hl], $3C                                  ; $5BA9: $36 $3C
    call Call_000_2614                            ; $5BAB: $CD $14 $26
    pop bc                                        ; $5BAE: $C1
    ld hl, $0099                                  ; $5BAF: $21 $99 $00
    add hl, bc                                    ; $5BB2: $09
    ld a, [hl]                                    ; $5BB3: $7E
    ld hl, $0004                                  ; $5BB4: $21 $04 $00
    add hl, de                                    ; $5BB7: $19
    ld [hl], a                                    ; $5BB8: $77
    ld hl, $FE00                                  ; $5BB9: $21 $00 $FE
    call Call_000_2F79                            ; $5BBC: $CD $79 $2F
    ld hl, $F800                                  ; $5BBF: $21 $00 $F8
    call Call_000_2F42                            ; $5BC2: $CD $42 $2F
    pop de                                        ; $5BC5: $D1
    ret                                           ; $5BC6: $C9


    ld hl, $002A                                  ; $5BC7: $21 $2A $00
    add hl, de                                    ; $5BCA: $19
    dec [hl]                                      ; $5BCB: $35
    jr z, jr_026_5C01                             ; $5BCC: $28 $33

    ld hl, $002D                                  ; $5BCE: $21 $2D $00
    add hl, bc                                    ; $5BD1: $09
    ld a, [hl]                                    ; $5BD2: $7E
    or a                                          ; $5BD3: $B7
    jr nz, jr_026_5BDB                            ; $5BD4: $20 $05

    ld a, [$D6C4]                                 ; $5BD6: $FA $C4 $D6
    jr jr_026_5BDE                                ; $5BD9: $18 $03

jr_026_5BDB:
    ld a, [$D684]                                 ; $5BDB: $FA $84 $D6

jr_026_5BDE:
    ld hl, $0004                                  ; $5BDE: $21 $04 $00
    add hl, de                                    ; $5BE1: $19
    sub [hl]                                      ; $5BE2: $96
    ld h, a                                       ; $5BE3: $67
    ld l, $00                                     ; $5BE4: $2E $00
    sra h                                         ; $5BE6: $CB $2C
    rr l                                          ; $5BE8: $CB $1D
    sra h                                         ; $5BEA: $CB $2C
    rr l                                          ; $5BEC: $CB $1D
    sra h                                         ; $5BEE: $CB $2C
    rr l                                          ; $5BF0: $CB $1D
    sra h                                         ; $5BF2: $CB $2C
    rr l                                          ; $5BF4: $CB $1D
    sra h                                         ; $5BF6: $CB $2C
    rr l                                          ; $5BF8: $CB $1D
    call Call_000_2F0B                            ; $5BFA: $CD $0B $2F
    call Call_000_2E25                            ; $5BFD: $CD $25 $2E
    ret                                           ; $5C00: $C9


jr_026_5C01:
    call Call_000_27F5                            ; $5C01: $CD $F5 $27
    ret                                           ; $5C04: $C9


    call Call_000_31B6                            ; $5C05: $CD $B6 $31
    jp c, Jump_026_5CEB                           ; $5C08: $DA $EB $5C

    jp z, Jump_026_5C1A                           ; $5C0B: $CA $1A $5C

    call Call_000_3A2A                            ; $5C0E: $CD $2A $3A
    jp c, Jump_026_5CA0                           ; $5C11: $DA $A0 $5C

    jp z, Jump_026_5CAB                           ; $5C14: $CA $AB $5C

    jp Jump_026_5CEB                              ; $5C17: $C3 $EB $5C


Jump_026_5C1A:
    call Call_000_3A2A                            ; $5C1A: $CD $2A $3A
    jp c, Jump_026_5CB6                           ; $5C1D: $DA $B6 $5C

    jp z, Jump_026_5CCF                           ; $5C20: $CA $CF $5C

    call Call_000_39D3                            ; $5C23: $CD $D3 $39
    jp nc, Jump_026_5CEB                          ; $5C26: $D2 $EB $5C

    jp z, Jump_026_5C32                           ; $5C29: $CA $32 $5C

    jp nz, Jump_026_5C55                          ; $5C2C: $C2 $55 $5C

    jp Jump_026_5CEB                              ; $5C2F: $C3 $EB $5C


Jump_026_5C32:
    call Call_000_3209                            ; $5C32: $CD $09 $32
    jr c, jr_026_5C40                             ; $5C35: $38 $09

    ld hl, $3AD4                                  ; $5C37: $21 $D4 $3A
    call Call_000_2B78                            ; $5C3A: $CD $78 $2B
    jp c, Jump_026_5CB6                           ; $5C3D: $DA $B6 $5C

jr_026_5C40:
    ld hl, $3B14                                  ; $5C40: $21 $14 $3B
    call Call_000_2B78                            ; $5C43: $CD $78 $2B
    jp c, Jump_026_5CA0                           ; $5C46: $DA $A0 $5C

    ld hl, $3AB9                                  ; $5C49: $21 $B9 $3A
    call Call_000_2B78                            ; $5C4C: $CD $78 $2B
    jp c, Jump_026_5C81                           ; $5C4F: $DA $81 $5C

    jp Jump_026_5CEB                              ; $5C52: $C3 $EB $5C


Jump_026_5C55:
    call Call_000_3209                            ; $5C55: $CD $09 $32
    jp c, Jump_026_5C6C                           ; $5C58: $DA $6C $5C

    cp $01                                        ; $5C5B: $FE $01
    jr z, jr_026_5C6C                             ; $5C5D: $28 $0D

    cp $02                                        ; $5C5F: $FE $02
    jr z, jr_026_5C63                             ; $5C61: $28 $00

jr_026_5C63:
    ld hl, $3AE5                                  ; $5C63: $21 $E5 $3A
    call Call_000_2B78                            ; $5C66: $CD $78 $2B
    jp c, Jump_026_5CCF                           ; $5C69: $DA $CF $5C

Jump_026_5C6C:
jr_026_5C6C:
    ld hl, $3B14                                  ; $5C6C: $21 $14 $3B
    call Call_000_2B78                            ; $5C6F: $CD $78 $2B
    jp c, Jump_026_5CAB                           ; $5C72: $DA $AB $5C

    ld hl, $3AB9                                  ; $5C75: $21 $B9 $3A
    call Call_000_2B78                            ; $5C78: $CD $78 $2B
    jp c, Jump_026_5C95                           ; $5C7B: $DA $95 $5C

    jp Jump_026_5CEB                              ; $5C7E: $C3 $EB $5C


Jump_026_5C81:
    call Call_000_32C5                            ; $5C81: $CD $C5 $32
    jp nz, Jump_026_5CEB                          ; $5C84: $C2 $EB $5C

    call Call_000_2C23                            ; $5C87: $CD $23 $2C
    ld a, $40                                     ; $5C8A: $3E $40
    call Call_000_32E2                            ; $5C8C: $CD $E2 $32
    call Call_000_34F1                            ; $5C8F: $CD $F1 $34
    jp Jump_026_5CE9                              ; $5C92: $C3 $E9 $5C


Jump_026_5C95:
    call Call_000_2C23                            ; $5C95: $CD $23 $2C
    ld a, $42                                     ; $5C98: $3E $42
    call Call_000_32E2                            ; $5C9A: $CD $E2 $32
    jp Jump_026_5CE9                              ; $5C9D: $C3 $E9 $5C


Jump_026_5CA0:
    call Call_000_2C23                            ; $5CA0: $CD $23 $2C
    ld a, $44                                     ; $5CA3: $3E $44
    call Call_000_32E2                            ; $5CA5: $CD $E2 $32
    jp Jump_026_5CE9                              ; $5CA8: $C3 $E9 $5C


Jump_026_5CAB:
    call Call_000_2C23                            ; $5CAB: $CD $23 $2C
    ld a, $46                                     ; $5CAE: $3E $46
    call Call_000_32E2                            ; $5CB0: $CD $E2 $32
    jp Jump_026_5CE9                              ; $5CB3: $C3 $E9 $5C


Jump_026_5CB6:
    call Call_000_32C5                            ; $5CB6: $CD $C5 $32
    jp nz, Jump_026_5CEB                          ; $5CB9: $C2 $EB $5C

    call Call_000_2C23                            ; $5CBC: $CD $23 $2C
    ld a, $4A                                     ; $5CBF: $3E $4A
    call Call_000_32E2                            ; $5CC1: $CD $E2 $32
    ld hl, $0014                                  ; $5CC4: $21 $14 $00
    ld a, $00                                     ; $5CC7: $3E $00
    call Call_000_34C4                            ; $5CC9: $CD $C4 $34
    jp Jump_026_5CE9                              ; $5CCC: $C3 $E9 $5C


Jump_026_5CCF:
    call Call_000_2C23                            ; $5CCF: $CD $23 $2C
    ld a, $26                                     ; $5CD2: $3E $26
    call Call_000_32E2                            ; $5CD4: $CD $E2 $32
    ld hl, $0021                                  ; $5CD7: $21 $21 $00
    add hl, bc                                    ; $5CDA: $09
    set 7, [hl]                                   ; $5CDB: $CB $FE
    ld hl, $009C                                  ; $5CDD: $21 $9C $00
    add hl, bc                                    ; $5CE0: $09
    ld [hl], $01                                  ; $5CE1: $36 $01
    jp Jump_026_5CE9                              ; $5CE3: $C3 $E9 $5C


    jp Jump_026_5CE9                              ; $5CE6: $C3 $E9 $5C


Jump_026_5CE9:
    scf                                           ; $5CE9: $37
    ret                                           ; $5CEA: $C9


Jump_026_5CEB:
    or a                                          ; $5CEB: $B7
    ret                                           ; $5CEC: $C9


    call Call_000_2EE0                            ; $5CED: $CD $E0 $2E
    call Call_000_3517                            ; $5CF0: $CD $17 $35
    jp c, Jump_026_5D3B                           ; $5CF3: $DA $3B $5D

    ld hl, $0018                                  ; $5CF6: $21 $18 $00
    add hl, de                                    ; $5CF9: $19
    ld a, [hl]                                    ; $5CFA: $7E
    cp $00                                        ; $5CFB: $FE $00
    jp z, Jump_026_5D0D                           ; $5CFD: $CA $0D $5D

    cp $08                                        ; $5D00: $FE $08
    jp z, Jump_026_5D19                           ; $5D02: $CA $19 $5D

    cp $0C                                        ; $5D05: $FE $0C
    jp z, Jump_026_5D2D                           ; $5D07: $CA $2D $5D

    jp Jump_026_5D38                              ; $5D0A: $C3 $38 $5D


Jump_026_5D0D:
    call Call_000_2CA9                            ; $5D0D: $CD $A9 $2C
    jp nc, Jump_026_5D38                          ; $5D10: $D2 $38 $5D

    inc hl                                        ; $5D13: $23
    ld [hl], $03                                  ; $5D14: $36 $03
    jp Jump_026_5D38                              ; $5D16: $C3 $38 $5D


Jump_026_5D19:
    call Call_000_2CA2                            ; $5D19: $CD $A2 $2C
    jr z, jr_026_5D21                             ; $5D1C: $28 $03

    call Call_026_6192                            ; $5D1E: $CD $92 $61

jr_026_5D21:
    call Call_000_2CA9                            ; $5D21: $CD $A9 $2C
    jp nc, Jump_026_5D38                          ; $5D24: $D2 $38 $5D

    inc hl                                        ; $5D27: $23
    ld [hl], $0A                                  ; $5D28: $36 $0A
    jp Jump_026_5D38                              ; $5D2A: $C3 $38 $5D


Jump_026_5D2D:
    call Call_000_2CA9                            ; $5D2D: $CD $A9 $2C
    jp nc, Jump_026_5D38                          ; $5D30: $D2 $38 $5D

    call Call_000_2DB6                            ; $5D33: $CD $B6 $2D
    jr jr_026_5D3B                                ; $5D36: $18 $03

Jump_026_5D38:
    jp Jump_000_2E25                              ; $5D38: $C3 $25 $2E


Jump_026_5D3B:
jr_026_5D3B:
    ret                                           ; $5D3B: $C9


    call Call_000_2EE0                            ; $5D3C: $CD $E0 $2E
    call Call_000_3517                            ; $5D3F: $CD $17 $35
    jp c, Jump_026_5E0E                           ; $5D42: $DA $0E $5E

    ld hl, $0018                                  ; $5D45: $21 $18 $00
    add hl, de                                    ; $5D48: $19
    ld a, [hl]                                    ; $5D49: $7E
    cp $00                                        ; $5D4A: $FE $00
    jp z, Jump_026_5E0B                           ; $5D4C: $CA $0B $5E

    cp $04                                        ; $5D4F: $FE $04
    jp z, Jump_026_5E0B                           ; $5D51: $CA $0B $5E

    cp $08                                        ; $5D54: $FE $08
    jp z, Jump_026_5D6B                           ; $5D56: $CA $6B $5D

    cp $0C                                        ; $5D59: $FE $0C
    jp z, Jump_026_5D7F                           ; $5D5B: $CA $7F $5D

    cp $10                                        ; $5D5E: $FE $10
    jp z, Jump_026_5DC3                           ; $5D60: $CA $C3 $5D

    cp $14                                        ; $5D63: $FE $14
    jp z, Jump_026_5E00                           ; $5D65: $CA $00 $5E

    jp Jump_026_5E0B                              ; $5D68: $C3 $0B $5E


Jump_026_5D6B:
    call Call_000_2CA9                            ; $5D6B: $CD $A9 $2C
    jp nc, Jump_026_5E0B                          ; $5D6E: $D2 $0B $5E

    inc hl                                        ; $5D71: $23
    ld [hl], $08                                  ; $5D72: $36 $08
    ld hl, $0208                                  ; $5D74: $21 $08 $02
    ld a, $01                                     ; $5D77: $3E $01
    call Call_000_34B3                            ; $5D79: $CD $B3 $34
    jp Jump_026_5E0B                              ; $5D7C: $C3 $0B $5E


Jump_026_5D7F:
    call Call_000_2CA2                            ; $5D7F: $CD $A2 $2C
    jr z, jr_026_5DA6                             ; $5D82: $28 $22

    ld a, $11                                     ; $5D84: $3E $11
    call Call_000_1360                            ; $5D86: $CD $60 $13
    call Call_000_32CC                            ; $5D89: $CD $CC $32
    jr c, jr_026_5DA0                             ; $5D8C: $38 $12

    jr nz, jr_026_5D98                            ; $5D8E: $20 $08

    ld hl, $0400                                  ; $5D90: $21 $00 $04
    call Call_000_2FEB                            ; $5D93: $CD $EB $2F
    jr jr_026_5DA6                                ; $5D96: $18 $0E

jr_026_5D98:
    ld hl, $0500                                  ; $5D98: $21 $00 $05
    call Call_000_2FEB                            ; $5D9B: $CD $EB $2F
    jr jr_026_5DA6                                ; $5D9E: $18 $06

jr_026_5DA0:
    ld hl, $0600                                  ; $5DA0: $21 $00 $06
    call Call_000_2FEB                            ; $5DA3: $CD $EB $2F

jr_026_5DA6:
    call Call_026_5DE2                            ; $5DA6: $CD $E2 $5D
    ld hl, $0010                                  ; $5DA9: $21 $10 $00
    call Call_000_30B0                            ; $5DAC: $CD $B0 $30
    call Call_000_2CA9                            ; $5DAF: $CD $A9 $2C
    jp nc, Jump_026_5E0B                          ; $5DB2: $D2 $0B $5E

    inc hl                                        ; $5DB5: $23
    ld [hl], $02                                  ; $5DB6: $36 $02
    ld hl, $0108                                  ; $5DB8: $21 $08 $01
    ld a, $03                                     ; $5DBB: $3E $03
    call Call_000_34B3                            ; $5DBD: $CD $B3 $34
    jp Jump_026_5E0B                              ; $5DC0: $C3 $0B $5E


Jump_026_5DC3:
    ld hl, $0020                                  ; $5DC3: $21 $20 $00
    call Call_000_30B0                            ; $5DC6: $CD $B0 $30
    call Call_000_2CA2                            ; $5DC9: $CD $A2 $2C
    jr z, jr_026_5DD3                             ; $5DCC: $28 $05

    ld a, $11                                     ; $5DCE: $3E $11
    call Call_000_1360                            ; $5DD0: $CD $60 $13

jr_026_5DD3:
    call Call_000_2CA9                            ; $5DD3: $CD $A9 $2C
    jp nc, Jump_026_5E0B                          ; $5DD6: $D2 $0B $5E

    inc hl                                        ; $5DD9: $23
    ld [hl], $02                                  ; $5DDA: $36 $02
    jp Jump_026_5E0B                              ; $5DDC: $C3 $0B $5E


    jp Jump_026_5E0B                              ; $5DDF: $C3 $0B $5E


Call_026_5DE2:
    call Call_000_32CC                            ; $5DE2: $CD $CC $32
    jr c, jr_026_5DE8                             ; $5DE5: $38 $01

    ret                                           ; $5DE7: $C9


jr_026_5DE8:
    ld hl, HeaderLogo                             ; $5DE8: $21 $04 $01
    ld a, $12                                     ; $5DEB: $3E $12
    call Call_000_34A2                            ; $5DED: $CD $A2 $34
    ret                                           ; $5DF0: $C9


    call Call_000_32CC                            ; $5DF1: $CD $CC $32
    jr c, jr_026_5DF7                             ; $5DF4: $38 $01

    ret                                           ; $5DF6: $C9


jr_026_5DF7:
    ld hl, $0108                                  ; $5DF7: $21 $08 $01
    ld a, $12                                     ; $5DFA: $3E $12
    call Call_000_34A2                            ; $5DFC: $CD $A2 $34
    ret                                           ; $5DFF: $C9


Jump_026_5E00:
    call Call_000_2CA9                            ; $5E00: $CD $A9 $2C
    jp nc, Jump_026_5E0B                          ; $5E03: $D2 $0B $5E

    call Call_000_2DB6                            ; $5E06: $CD $B6 $2D
    jr jr_026_5E0E                                ; $5E09: $18 $03

Jump_026_5E0B:
    jp Jump_000_2E25                              ; $5E0B: $C3 $25 $2E


Jump_026_5E0E:
jr_026_5E0E:
    ret                                           ; $5E0E: $C9


    call Call_000_2EE0                            ; $5E0F: $CD $E0 $2E
    call Call_000_3517                            ; $5E12: $CD $17 $35
    jp c, Jump_026_601A                           ; $5E15: $DA $1A $60

    ld hl, $0018                                  ; $5E18: $21 $18 $00
    add hl, de                                    ; $5E1B: $19
    ld a, [hl]                                    ; $5E1C: $7E
    cp $00                                        ; $5E1D: $FE $00
    jp z, Jump_026_5E57                           ; $5E1F: $CA $57 $5E

    cp $04                                        ; $5E22: $FE $04
    jp z, Jump_026_5E81                           ; $5E24: $CA $81 $5E

    cp $08                                        ; $5E27: $FE $08
    jp z, Jump_026_5ECD                           ; $5E29: $CA $CD $5E

    cp $0C                                        ; $5E2C: $FE $0C
    jp z, Jump_026_5ED7                           ; $5E2E: $CA $D7 $5E

    cp $10                                        ; $5E31: $FE $10
    jp z, Jump_026_5F21                           ; $5E33: $CA $21 $5F

    cp $14                                        ; $5E36: $FE $14
    jp z, Jump_026_5F42                           ; $5E38: $CA $42 $5F

    cp $18                                        ; $5E3B: $FE $18
    jp z, Jump_026_5F5C                           ; $5E3D: $CA $5C $5F

    cp $1C                                        ; $5E40: $FE $1C
    jp z, Jump_026_5F76                           ; $5E42: $CA $76 $5F

    cp $20                                        ; $5E45: $FE $20
    jp z, Jump_026_5F90                           ; $5E47: $CA $90 $5F

    cp $24                                        ; $5E4A: $FE $24
    jp z, Jump_026_5FD0                           ; $5E4C: $CA $D0 $5F

    cp $28                                        ; $5E4F: $FE $28
    jp z, Jump_026_5FE0                           ; $5E51: $CA $E0 $5F

    jp Jump_026_6017                              ; $5E54: $C3 $17 $60


Jump_026_5E57:
    call Call_000_2CA9                            ; $5E57: $CD $A9 $2C
    jp nc, Jump_026_6017                          ; $5E5A: $D2 $17 $60

    inc hl                                        ; $5E5D: $23
    ld [hl], $FF                                  ; $5E5E: $36 $FF
    ld hl, $010C                                  ; $5E60: $21 $0C $01
    ld a, $11                                     ; $5E63: $3E $11
    call Call_000_34B3                            ; $5E65: $CD $B3 $34
    call Call_000_32CC                            ; $5E68: $CD $CC $32
    jr c, jr_026_5E77                             ; $5E6B: $38 $0A

    jr nz, jr_026_5E73                            ; $5E6D: $20 $04

    ld a, $02                                     ; $5E6F: $3E $02
    jr jr_026_5E79                                ; $5E71: $18 $06

jr_026_5E73:
    ld a, $03                                     ; $5E73: $3E $03
    jr jr_026_5E79                                ; $5E75: $18 $02

jr_026_5E77:
    ld a, $04                                     ; $5E77: $3E $04

jr_026_5E79:
    ld hl, $009C                                  ; $5E79: $21 $9C $00
    add hl, bc                                    ; $5E7C: $09
    ld [hl], a                                    ; $5E7D: $77
    jp Jump_026_6017                              ; $5E7E: $C3 $17 $60


Jump_026_5E81:
    call Call_000_2CA2                            ; $5E81: $CD $A2 $2C
    jr z, jr_026_5EC3                             ; $5E84: $28 $3D

    ld a, $12                                     ; $5E86: $3E $12
    call Call_000_1360                            ; $5E88: $CD $60 $13
    ld hl, $FA00                                  ; $5E8B: $21 $00 $FA
    call Call_000_305D                            ; $5E8E: $CD $5D $30
    ld hl, $0099                                  ; $5E91: $21 $99 $00
    add hl, bc                                    ; $5E94: $09
    ld a, [hl]                                    ; $5E95: $7E
    ld hl, $0004                                  ; $5E96: $21 $04 $00
    add hl, de                                    ; $5E99: $19
    sub [hl]                                      ; $5E9A: $96
    ld h, a                                       ; $5E9B: $67
    ld l, $00                                     ; $5E9C: $2E $00
    sra h                                         ; $5E9E: $CB $2C
    rr l                                          ; $5EA0: $CB $1D
    sra h                                         ; $5EA2: $CB $2C
    rr l                                          ; $5EA4: $CB $1D
    sra h                                         ; $5EA6: $CB $2C
    rr l                                          ; $5EA8: $CB $1D
    sra h                                         ; $5EAA: $CB $2C
    rr l                                          ; $5EAC: $CB $1D
    sra h                                         ; $5EAE: $CB $2C
    rr l                                          ; $5EB0: $CB $1D
    bit 7, h                                      ; $5EB2: $CB $7C
    jr z, jr_026_5EC0                             ; $5EB4: $28 $0A

    ld a, h                                       ; $5EB6: $7C
    cpl                                           ; $5EB7: $2F
    ld h, a                                       ; $5EB8: $67
    ld a, l                                       ; $5EB9: $7D
    cpl                                           ; $5EBA: $2F
    ld l, a                                       ; $5EBB: $6F
    inc l                                         ; $5EBC: $2C
    jr nz, jr_026_5EC0                            ; $5EBD: $20 $01

    inc h                                         ; $5EBF: $24

jr_026_5EC0:
    call Call_000_2FEB                            ; $5EC0: $CD $EB $2F

jr_026_5EC3:
    ld a, $FC                                     ; $5EC3: $3E $FC
    ld h, $FF                                     ; $5EC5: $26 $FF
    call Call_000_2D33                            ; $5EC7: $CD $33 $2D
    jp Jump_026_5F0E                              ; $5ECA: $C3 $0E $5F


Jump_026_5ECD:
    ld a, $FE                                     ; $5ECD: $3E $FE
    ld h, $FF                                     ; $5ECF: $26 $FF
    call Call_000_2D33                            ; $5ED1: $CD $33 $2D
    jp Jump_026_5F0E                              ; $5ED4: $C3 $0E $5F


Jump_026_5ED7:
    call Call_000_3262                            ; $5ED7: $CD $62 $32
    jp nc, Jump_026_5F0B                          ; $5EDA: $D2 $0B $5F

    jp nz, Jump_026_5F03                          ; $5EDD: $C2 $03 $5F

    ld a, $03                                     ; $5EE0: $3E $03
    ld [$C2E2], a                                 ; $5EE2: $EA $E2 $C2
    ld hl, $0021                                  ; $5EE5: $21 $21 $00
    add hl, bc                                    ; $5EE8: $09
    set 7, [hl]                                   ; $5EE9: $CB $FE
    ld hl, $051B                                  ; $5EEB: $21 $1B $05
    ld a, $00                                     ; $5EEE: $3E $00
    call Call_000_34B3                            ; $5EF0: $CD $B3 $34
    ld hl, $F0FF                                  ; $5EF3: $21 $FF $F0
    call Call_000_3496                            ; $5EF6: $CD $96 $34
    ld a, $10                                     ; $5EF9: $3E $10
    ld h, $FF                                     ; $5EFB: $26 $FF
    call Call_000_2D19                            ; $5EFD: $CD $19 $2D
    jp Jump_026_601A                              ; $5F00: $C3 $1A $60


Jump_026_5F03:
    ld a, $18                                     ; $5F03: $3E $18
    call Call_000_2E6E                            ; $5F05: $CD $6E $2E
    jp Jump_026_601A                              ; $5F08: $C3 $1A $60


Jump_026_5F0B:
    jp Jump_026_5F0E                              ; $5F0B: $C3 $0E $5F


Jump_026_5F0E:
    ld hl, $0060                                  ; $5F0E: $21 $60 $00
    call Call_000_30FF                            ; $5F11: $CD $FF $30
    jp nc, Jump_026_6017                          ; $5F14: $D2 $17 $60

    ld a, $28                                     ; $5F17: $3E $28
    ld h, $0A                                     ; $5F19: $26 $0A
    call Call_000_2CBA                            ; $5F1B: $CD $BA $2C
    jp Jump_026_601A                              ; $5F1E: $C3 $1A $60


Jump_026_5F21:
    ld hl, $0060                                  ; $5F21: $21 $60 $00
    call Call_000_30FF                            ; $5F24: $CD $FF $30
    jp nc, Jump_026_6017                          ; $5F27: $D2 $17 $60

    ld a, $14                                     ; $5F2A: $3E $14
    ld h, $06                                     ; $5F2C: $26 $06
    call Call_000_2CBA                            ; $5F2E: $CD $BA $2C
    ld hl, $051B                                  ; $5F31: $21 $1B $05
    ld a, $00                                     ; $5F34: $3E $00
    call Call_000_34B3                            ; $5F36: $CD $B3 $34
    ld hl, $F0FF                                  ; $5F39: $21 $FF $F0
    call Call_000_3496                            ; $5F3C: $CD $96 $34
    jp Jump_026_601A                              ; $5F3F: $C3 $1A $60


Jump_026_5F42:
    call Call_000_2CA9                            ; $5F42: $CD $A9 $2C
    jp nc, Jump_026_6017                          ; $5F45: $D2 $17 $60

    inc hl                                        ; $5F48: $23
    ld [hl], $06                                  ; $5F49: $36 $06
    ld hl, $051B                                  ; $5F4B: $21 $1B $05
    ld a, $00                                     ; $5F4E: $3E $00
    call Call_000_34B3                            ; $5F50: $CD $B3 $34
    ld hl, $E8F0                                  ; $5F53: $21 $F0 $E8
    call Call_000_3496                            ; $5F56: $CD $96 $34
    jp Jump_026_6017                              ; $5F59: $C3 $17 $60


Jump_026_5F5C:
    call Call_000_2CA9                            ; $5F5C: $CD $A9 $2C
    jp nc, Jump_026_6017                          ; $5F5F: $D2 $17 $60

    inc hl                                        ; $5F62: $23
    ld [hl], $06                                  ; $5F63: $36 $06
    ld hl, $051B                                  ; $5F65: $21 $1B $05
    ld a, $00                                     ; $5F68: $3E $00
    call Call_000_34B3                            ; $5F6A: $CD $B3 $34
    ld hl, $F8E8                                  ; $5F6D: $21 $E8 $F8
    call Call_000_3496                            ; $5F70: $CD $96 $34
    jp Jump_026_6017                              ; $5F73: $C3 $17 $60


Jump_026_5F76:
    call Call_000_2CA9                            ; $5F76: $CD $A9 $2C
    jp nc, Jump_026_6017                          ; $5F79: $D2 $17 $60

    inc hl                                        ; $5F7C: $23
    ld [hl], $06                                  ; $5F7D: $36 $06
    ld hl, $051B                                  ; $5F7F: $21 $1B $05
    ld a, $00                                     ; $5F82: $3E $00
    call Call_000_34B3                            ; $5F84: $CD $B3 $34
    ld hl, $F0FF                                  ; $5F87: $21 $FF $F0
    call Call_000_3496                            ; $5F8A: $CD $96 $34
    jp Jump_026_6017                              ; $5F8D: $C3 $17 $60


Jump_026_5F90:
    call Call_000_2CA9                            ; $5F90: $CD $A9 $2C
    jp nc, Jump_026_6017                          ; $5F93: $D2 $17 $60

    inc hl                                        ; $5F96: $23
    ld [hl], $06                                  ; $5F97: $36 $06
    ld hl, $010F                                  ; $5F99: $21 $0F $01
    ld a, $90                                     ; $5F9C: $3E $90
    call Call_000_34A2                            ; $5F9E: $CD $A2 $34
    ld hl, $009C                                  ; $5FA1: $21 $9C $00
    add hl, bc                                    ; $5FA4: $09
    dec [hl]                                      ; $5FA5: $35
    jr nz, jr_026_5FB9                            ; $5FA6: $20 $11

    ld hl, $030A                                  ; $5FA8: $21 $0A $03
    ld a, $01                                     ; $5FAB: $3E $01
    call Call_000_34B3                            ; $5FAD: $CD $B3 $34
    ld hl, $001D                                  ; $5FB0: $21 $1D $00
    add hl, de                                    ; $5FB3: $19
    ld [hl], $28                                  ; $5FB4: $36 $28
    jp Jump_026_6017                              ; $5FB6: $C3 $17 $60


jr_026_5FB9:
    ld hl, $051B                                  ; $5FB9: $21 $1B $05
    ld a, $00                                     ; $5FBC: $3E $00
    call Call_000_34B3                            ; $5FBE: $CD $B3 $34
    ld hl, $E8F0                                  ; $5FC1: $21 $F0 $E8
    call Call_000_3496                            ; $5FC4: $CD $96 $34
    ld hl, $0014                                  ; $5FC7: $21 $14 $00
    add hl, de                                    ; $5FCA: $19
    ld [hl], $14                                  ; $5FCB: $36 $14
    jp Jump_026_6017                              ; $5FCD: $C3 $17 $60


Jump_026_5FD0:
    call Call_000_2CA9                            ; $5FD0: $CD $A9 $2C
    jp nc, Jump_026_6017                          ; $5FD3: $D2 $17 $60

    ld a, $00                                     ; $5FD6: $3E $00
    ld [$C2E2], a                                 ; $5FD8: $EA $E2 $C2
    call Call_000_2DB6                            ; $5FDB: $CD $B6 $2D
    jr jr_026_601A                                ; $5FDE: $18 $3A

Jump_026_5FE0:
    call Call_000_326C                            ; $5FE0: $CD $6C $32
    jp nc, Jump_026_600C                          ; $5FE3: $D2 $0C $60

    jp nz, Jump_026_600C                          ; $5FE6: $C2 $0C $60

    ld a, $03                                     ; $5FE9: $3E $03
    ld [$C2E2], a                                 ; $5FEB: $EA $E2 $C2
    ld hl, $0021                                  ; $5FEE: $21 $21 $00
    add hl, bc                                    ; $5FF1: $09
    set 7, [hl]                                   ; $5FF2: $CB $FE
    ld hl, $051B                                  ; $5FF4: $21 $1B $05
    ld a, $00                                     ; $5FF7: $3E $00
    call Call_000_34B3                            ; $5FF9: $CD $B3 $34
    ld hl, $E8F0                                  ; $5FFC: $21 $F0 $E8
    call Call_000_3496                            ; $5FFF: $CD $96 $34
    ld a, $14                                     ; $6002: $3E $14
    ld h, $06                                     ; $6004: $26 $06
    call Call_000_2D19                            ; $6006: $CD $19 $2D
    jp Jump_026_601A                              ; $6009: $C3 $1A $60


Jump_026_600C:
    call Call_000_2CA9                            ; $600C: $CD $A9 $2C
    jp nc, Jump_026_6017                          ; $600F: $D2 $17 $60

    call Call_000_2DB6                            ; $6012: $CD $B6 $2D
    jr jr_026_601A                                ; $6015: $18 $03

Jump_026_6017:
    call Call_000_2E25                            ; $6017: $CD $25 $2E

Jump_026_601A:
jr_026_601A:
    ret                                           ; $601A: $C9


    call Call_000_2EE0                            ; $601B: $CD $E0 $2E
    call Call_000_3517                            ; $601E: $CD $17 $35
    jp c, Jump_026_610F                           ; $6021: $DA $0F $61

    ld hl, $0018                                  ; $6024: $21 $18 $00
    add hl, de                                    ; $6027: $19
    ld a, [hl]                                    ; $6028: $7E
    cp $00                                        ; $6029: $FE $00
    jp z, Jump_026_6047                           ; $602B: $CA $47 $60

    cp $04                                        ; $602E: $FE $04
    jp z, Jump_026_605B                           ; $6030: $CA $5B $60

    cp $08                                        ; $6033: $FE $08
    jp z, Jump_026_60A2                           ; $6035: $CA $A2 $60

    cp $0C                                        ; $6038: $FE $0C
    jp z, Jump_026_60B7                           ; $603A: $CA $B7 $60

    cp $10                                        ; $603D: $FE $10
    jp z, Jump_026_60E5                           ; $603F: $CA $E5 $60

    cp $14                                        ; $6042: $FE $14
    jp z, Jump_026_6101                           ; $6044: $CA $01 $61

Jump_026_6047:
    call Call_000_2CA9                            ; $6047: $CD $A9 $2C
    jp nc, Jump_026_610C                          ; $604A: $D2 $0C $61

    inc hl                                        ; $604D: $23
    ld [hl], $FF                                  ; $604E: $36 $FF
    ld hl, $0309                                  ; $6050: $21 $09 $03
    ld a, $11                                     ; $6053: $3E $11
    call Call_000_34B3                            ; $6055: $CD $B3 $34
    jp Jump_026_610C                              ; $6058: $C3 $0C $61


Jump_026_605B:
    call Call_000_2CA2                            ; $605B: $CD $A2 $2C
    jp z, Jump_026_6098                           ; $605E: $CA $98 $60

    ld a, $BA                                     ; $6061: $3E $BA
    call Call_000_1360                            ; $6063: $CD $60 $13
    call Call_000_32CC                            ; $6066: $CD $CC $32
    jr c, jr_026_6089                             ; $6069: $38 $1E

    jr nz, jr_026_607B                            ; $606B: $20 $0E

    ld hl, $0080                                  ; $606D: $21 $80 $00
    call Call_000_2FEB                            ; $6070: $CD $EB $2F
    ld hl, $FA00                                  ; $6073: $21 $00 $FA
    call Call_000_305D                            ; $6076: $CD $5D $30
    jr jr_026_6095                                ; $6079: $18 $1A

jr_026_607B:
    ld hl, $0100                                  ; $607B: $21 $00 $01
    call Call_000_2FEB                            ; $607E: $CD $EB $2F
    ld hl, $F900                                  ; $6081: $21 $00 $F9
    call Call_000_305D                            ; $6084: $CD $5D $30
    jr jr_026_6095                                ; $6087: $18 $0C

jr_026_6089:
    ld hl, $01C0                                  ; $6089: $21 $C0 $01
    call Call_000_2FEB                            ; $608C: $CD $EB $2F
    ld hl, $F800                                  ; $608F: $21 $00 $F8
    call Call_000_305D                            ; $6092: $CD $5D $30

jr_026_6095:
    jp Jump_026_60D2                              ; $6095: $C3 $D2 $60


Jump_026_6098:
    ld a, $FD                                     ; $6098: $3E $FD
    ld h, $FF                                     ; $609A: $26 $FF
    call Call_000_2D33                            ; $609C: $CD $33 $2D
    jp Jump_026_60D2                              ; $609F: $C3 $D2 $60


Jump_026_60A2:
    ld a, $FF                                     ; $60A2: $3E $FF
    ld h, $FF                                     ; $60A4: $26 $FF
    call Call_000_2D33                            ; $60A6: $CD $33 $2D
    jp nc, Jump_026_60D2                          ; $60A9: $D2 $D2 $60

    ld hl, $030F                                  ; $60AC: $21 $0F $03
    ld a, $90                                     ; $60AF: $3E $90
    call Call_000_34B3                            ; $60B1: $CD $B3 $34
    jp Jump_026_60D2                              ; $60B4: $C3 $D2 $60


Jump_026_60B7:
    ld hl, $0040                                  ; $60B7: $21 $40 $00
    call Call_000_30B0                            ; $60BA: $CD $B0 $30
    call Call_000_32CC                            ; $60BD: $CD $CC $32
    jr c, jr_026_60C7                             ; $60C0: $38 $05

    jr nz, jr_026_60C4                            ; $60C2: $20 $00

jr_026_60C4:
    jp Jump_026_60D2                              ; $60C4: $C3 $D2 $60


jr_026_60C7:
    ld hl, $010F                                  ; $60C7: $21 $0F $01
    ld a, $90                                     ; $60CA: $3E $90
    call Call_000_34A2                            ; $60CC: $CD $A2 $34
    jp Jump_026_60D2                              ; $60CF: $C3 $D2 $60


Jump_026_60D2:
    ld hl, $0060                                  ; $60D2: $21 $60 $00
    call Call_000_30FF                            ; $60D5: $CD $FF $30
    jp nc, Jump_026_610C                          ; $60D8: $D2 $0C $61

    ld a, $10                                     ; $60DB: $3E $10
    ld h, $14                                     ; $60DD: $26 $14
    call Call_000_2CBA                            ; $60DF: $CD $BA $2C
    jp Jump_026_610F                              ; $60E2: $C3 $0F $61


Jump_026_60E5:
    call Call_000_2CA2                            ; $60E5: $CD $A2 $2C
    jp z, Jump_026_60F5                           ; $60E8: $CA $F5 $60

    ld a, $07                                     ; $60EB: $3E $07
    call Call_000_3963                            ; $60ED: $CD $63 $39
    ld a, $0E                                     ; $60F0: $3E $0E
    call Call_000_1360                            ; $60F2: $CD $60 $13

Jump_026_60F5:
    call Call_000_2CA9                            ; $60F5: $CD $A9 $2C
    jp nc, Jump_026_610C                          ; $60F8: $D2 $0C $61

    inc hl                                        ; $60FB: $23
    ld [hl], $14                                  ; $60FC: $36 $14
    jp Jump_026_610C                              ; $60FE: $C3 $0C $61


Jump_026_6101:
    call Call_000_2CA9                            ; $6101: $CD $A9 $2C
    jp nc, Jump_026_610C                          ; $6104: $D2 $0C $61

    call Call_000_2DB6                            ; $6107: $CD $B6 $2D
    jr jr_026_610F                                ; $610A: $18 $03

Jump_026_610C:
    call Call_000_2E25                            ; $610C: $CD $25 $2E

Jump_026_610F:
jr_026_610F:
    ret                                           ; $610F: $C9


    call Call_000_2EE0                            ; $6110: $CD $E0 $2E
    call Call_000_3517                            ; $6113: $CD $17 $35
    jp c, Jump_026_6191                           ; $6116: $DA $91 $61

    ld hl, $0018                                  ; $6119: $21 $18 $00
    add hl, de                                    ; $611C: $19
    ld a, [hl]                                    ; $611D: $7E
    cp $00                                        ; $611E: $FE $00
    jp z, Jump_026_613A                           ; $6120: $CA $3A $61

    cp $04                                        ; $6123: $FE $04
    jp z, Jump_026_6146                           ; $6125: $CA $46 $61

    cp $10                                        ; $6128: $FE $10
    jp z, Jump_026_615D                           ; $612A: $CA $5D $61

    cp $14                                        ; $612D: $FE $14
    jp z, Jump_026_6169                           ; $612F: $CA $69 $61

    cp $18                                        ; $6132: $FE $18
    jp z, Jump_026_6183                           ; $6134: $CA $83 $61

    jp Jump_026_618E                              ; $6137: $C3 $8E $61


Jump_026_613A:
    call Call_000_2CA9                            ; $613A: $CD $A9 $2C
    jp nc, Jump_026_618E                          ; $613D: $D2 $8E $61

    inc hl                                        ; $6140: $23
    ld [hl], $03                                  ; $6141: $36 $03
    jp Jump_026_618E                              ; $6143: $C3 $8E $61


Jump_026_6146:
    call Call_000_2CA2                            ; $6146: $CD $A2 $2C
    jr z, jr_026_6151                             ; $6149: $28 $06

    ld hl, $0031                                  ; $614B: $21 $31 $00
    add hl, bc                                    ; $614E: $09
    ld [hl], $01                                  ; $614F: $36 $01

jr_026_6151:
    call Call_000_2CA9                            ; $6151: $CD $A9 $2C
    jp nc, Jump_026_618E                          ; $6154: $D2 $8E $61

    inc hl                                        ; $6157: $23
    ld [hl], $03                                  ; $6158: $36 $03
    jp Jump_026_618E                              ; $615A: $C3 $8E $61


Jump_026_615D:
    call Call_000_2CA9                            ; $615D: $CD $A9 $2C
    jp nc, Jump_026_618E                          ; $6160: $D2 $8E $61

    inc hl                                        ; $6163: $23
    ld [hl], $32                                  ; $6164: $36 $32
    jp Jump_026_618E                              ; $6166: $C3 $8E $61


Jump_026_6169:
    call Call_000_2CA2                            ; $6169: $CD $A2 $2C
    jr z, jr_026_6177                             ; $616C: $28 $09

    call Call_026_6209                            ; $616E: $CD $09 $62
    ld hl, $0021                                  ; $6171: $21 $21 $00
    add hl, bc                                    ; $6174: $09
    res 7, [hl]                                   ; $6175: $CB $BE

jr_026_6177:
    call Call_000_2CA9                            ; $6177: $CD $A9 $2C
    jp nc, Jump_026_618E                          ; $617A: $D2 $8E $61

    inc hl                                        ; $617D: $23
    ld [hl], $01                                  ; $617E: $36 $01
    jp Jump_026_618E                              ; $6180: $C3 $8E $61


Jump_026_6183:
    call Call_000_32C5                            ; $6183: $CD $C5 $32
    jp nz, Jump_026_6191                          ; $6186: $C2 $91 $61

    call Call_000_2DB6                            ; $6189: $CD $B6 $2D
    jr jr_026_6191                                ; $618C: $18 $03

Jump_026_618E:
    jp Jump_000_2E25                              ; $618E: $C3 $25 $2E


Jump_026_6191:
jr_026_6191:
    ret                                           ; $6191: $C9


Call_026_6192:
    ld a, $14                                     ; $6192: $3E $14
    call Call_000_1360                            ; $6194: $CD $60 $13
    push bc                                       ; $6197: $C5
    push de                                       ; $6198: $D5
    ld hl, $0030                                  ; $6199: $21 $30 $00
    add hl, bc                                    ; $619C: $09
    ld a, [hl]                                    ; $619D: $7E
    or a                                          ; $619E: $B7
    jr nz, jr_026_61A4                            ; $619F: $20 $03

    xor a                                         ; $61A1: $AF
    jr jr_026_61A5                                ; $61A2: $18 $01

jr_026_61A4:
    scf                                           ; $61A4: $37

jr_026_61A5:
    ld hl, $0022                                  ; $61A5: $21 $22 $00
    push af                                       ; $61A8: $F5
    add hl, bc                                    ; $61A9: $09
    pop af                                        ; $61AA: $F1
    ld a, [hl]                                    ; $61AB: $7E
    push af                                       ; $61AC: $F5
    call Call_000_25D1                            ; $61AD: $CD $D1 $25
    ld hl, $0021                                  ; $61B0: $21 $21 $00
    add hl, de                                    ; $61B3: $19
    ld [hl], $24                                  ; $61B4: $36 $24
    inc hl                                        ; $61B6: $23
    ld [hl], $A2                                  ; $61B7: $36 $A2
    inc hl                                        ; $61B9: $23
    ld [hl], $49                                  ; $61BA: $36 $49
    ld hl, $0011                                  ; $61BC: $21 $11 $00
    add hl, de                                    ; $61BF: $19
    ld [hl], $02                                  ; $61C0: $36 $02
    inc hl                                        ; $61C2: $23
    ld [hl], $C0                                  ; $61C3: $36 $C0
    inc hl                                        ; $61C5: $23
    ld [hl], $65                                  ; $61C6: $36 $65
    inc hl                                        ; $61C8: $23
    ld [hl], $00                                  ; $61C9: $36 $00
    ld hl, $001C                                  ; $61CB: $21 $1C $00
    add hl, de                                    ; $61CE: $19
    ld [hl], $06                                  ; $61CF: $36 $06
    inc hl                                        ; $61D1: $23
    ld [hl], $06                                  ; $61D2: $36 $06
    ld hl, $0029                                  ; $61D4: $21 $29 $00
    add hl, de                                    ; $61D7: $19
    ld [hl], $00                                  ; $61D8: $36 $00
    call Call_000_2614                            ; $61DA: $CD $14 $26
    ld hl, $1800                                  ; $61DD: $21 $00 $18
    call Call_000_2F79                            ; $61E0: $CD $79 $2F
    ld hl, $FF00                                  ; $61E3: $21 $00 $FF
    call Call_000_2F42                            ; $61E6: $CD $42 $2F
    pop af                                        ; $61E9: $F1
    jr c, jr_026_61FA                             ; $61EA: $38 $0E

    bit 1, a                                      ; $61EC: $CB $4F
    jr nz, jr_026_61F5                            ; $61EE: $20 $05

    ld hl, $0100                                  ; $61F0: $21 $00 $01
    jr jr_026_61FD                                ; $61F3: $18 $08

jr_026_61F5:
    ld hl, $0200                                  ; $61F5: $21 $00 $02
    jr jr_026_61FD                                ; $61F8: $18 $03

jr_026_61FA:
    ld hl, $0300                                  ; $61FA: $21 $00 $03

jr_026_61FD:
    call Call_000_2FEB                            ; $61FD: $CD $EB $2F
    ld hl, $0000                                  ; $6200: $21 $00 $00
    call Call_000_305D                            ; $6203: $CD $5D $30
    pop de                                        ; $6206: $D1
    pop bc                                        ; $6207: $C1
    ret                                           ; $6208: $C9


Call_026_6209:
    ld a, $14                                     ; $6209: $3E $14
    call Call_000_1360                            ; $620B: $CD $60 $13
    push bc                                       ; $620E: $C5
    push de                                       ; $620F: $D5
    call Call_000_25D1                            ; $6210: $CD $D1 $25
    ld hl, $0021                                  ; $6213: $21 $21 $00
    add hl, de                                    ; $6216: $19
    ld [hl], $26                                  ; $6217: $36 $26
    inc hl                                        ; $6219: $23
    ld [hl], $64                                  ; $621A: $36 $64
    inc hl                                        ; $621C: $23
    ld [hl], $62                                  ; $621D: $36 $62
    ld hl, $0011                                  ; $621F: $21 $11 $00
    add hl, de                                    ; $6222: $19
    ld [hl], $02                                  ; $6223: $36 $02
    inc hl                                        ; $6225: $23
    ld [hl], $E8                                  ; $6226: $36 $E8
    inc hl                                        ; $6228: $23
    ld [hl], $64                                  ; $6229: $36 $64
    inc hl                                        ; $622B: $23
    ld [hl], $00                                  ; $622C: $36 $00
    ld hl, $001C                                  ; $622E: $21 $1C $00
    add hl, de                                    ; $6231: $19
    ld [hl], $01                                  ; $6232: $36 $01
    inc hl                                        ; $6234: $23
    ld [hl], $01                                  ; $6235: $36 $01
    ld hl, $0029                                  ; $6237: $21 $29 $00
    add hl, de                                    ; $623A: $19
    ld [hl], $02                                  ; $623B: $36 $02
    inc hl                                        ; $623D: $23
    ld [hl], $A0                                  ; $623E: $36 $A0
    ld hl, $000E                                  ; $6240: $21 $0E $00
    add hl, de                                    ; $6243: $19
    ld [hl], $CC                                  ; $6244: $36 $CC
    call Call_000_2614                            ; $6246: $CD $14 $26
    ld hl, $1800                                  ; $6249: $21 $00 $18
    call Call_000_2F79                            ; $624C: $CD $79 $2F
    ld hl, $0000                                  ; $624F: $21 $00 $00
    call Call_000_2F42                            ; $6252: $CD $42 $2F
    ld hl, $0080                                  ; $6255: $21 $80 $00
    call Call_000_2FEB                            ; $6258: $CD $EB $2F
    ld hl, $0000                                  ; $625B: $21 $00 $00
    call Call_000_305D                            ; $625E: $CD $5D $30
    pop de                                        ; $6261: $D1
    pop bc                                        ; $6262: $C1
    ret                                           ; $6263: $C9


    ld a, [$C2E1]                                 ; $6264: $FA $E1 $C2
    or a                                          ; $6267: $B7
    jr nz, jr_026_62CC                            ; $6268: $20 $62

    ld hl, $000C                                  ; $626A: $21 $0C $00
    add hl, de                                    ; $626D: $19
    ld a, [hl]                                    ; $626E: $7E
    cp $11                                        ; $626F: $FE $11
    jp c, Jump_026_6288                           ; $6271: $DA $88 $62

    cp $9F                                        ; $6274: $FE $9F
    jp nc, Jump_026_6288                          ; $6276: $D2 $88 $62

    ld hl, $0000                                  ; $6279: $21 $00 $00
    call Call_000_3078                            ; $627C: $CD $78 $30
    ld hl, $002A                                  ; $627F: $21 $2A $00
    add hl, de                                    ; $6282: $19
    dec [hl]                                      ; $6283: $35
    jr z, jr_026_6292                             ; $6284: $28 $0C

    jr jr_026_628E                                ; $6286: $18 $06

Jump_026_6288:
    ld hl, $FE80                                  ; $6288: $21 $80 $FE
    call Call_000_2F79                            ; $628B: $CD $79 $2F

jr_026_628E:
    call Call_000_2E25                            ; $628E: $CD $25 $2E
    ret                                           ; $6291: $C9


jr_026_6292:
    ld hl, $002D                                  ; $6292: $21 $2D $00
    add hl, bc                                    ; $6295: $09
    ld a, [hl]                                    ; $6296: $7E
    or a                                          ; $6297: $B7
    jr nz, jr_026_62A2                            ; $6298: $20 $08

    ld hl, $000E                                  ; $629A: $21 $0E $00
    add hl, de                                    ; $629D: $19
    ld [hl], $80                                  ; $629E: $36 $80
    jr jr_026_62A8                                ; $62A0: $18 $06

jr_026_62A2:
    ld hl, $000E                                  ; $62A2: $21 $0E $00
    add hl, de                                    ; $62A5: $19
    ld [hl], $A6                                  ; $62A6: $36 $A6

jr_026_62A8:
    ld hl, $0021                                  ; $62A8: $21 $21 $00
    add hl, de                                    ; $62AB: $19
    ld [hl], $26                                  ; $62AC: $36 $26
    inc hl                                        ; $62AE: $23
    ld [hl], $CD                                  ; $62AF: $36 $CD
    inc hl                                        ; $62B1: $23
    ld [hl], $62                                  ; $62B2: $36 $62
    ld hl, $0011                                  ; $62B4: $21 $11 $00
    add hl, de                                    ; $62B7: $19
    ld [hl], $02                                  ; $62B8: $36 $02
    inc hl                                        ; $62BA: $23
    ld [hl], $B6                                  ; $62BB: $36 $B6
    inc hl                                        ; $62BD: $23
    ld [hl], $65                                  ; $62BE: $36 $65
    inc hl                                        ; $62C0: $23
    ld [hl], $00                                  ; $62C1: $36 $00
    ld hl, $0029                                  ; $62C3: $21 $29 $00
    add hl, de                                    ; $62C6: $19
    ld [hl], $02                                  ; $62C7: $36 $02
    inc hl                                        ; $62C9: $23
    ld [hl], $00                                  ; $62CA: $36 $00

jr_026_62CC:
    ret                                           ; $62CC: $C9


    ld hl, $002A                                  ; $62CD: $21 $2A $00
    add hl, de                                    ; $62D0: $19
    dec [hl]                                      ; $62D1: $35
    jr z, jr_026_6315                             ; $62D2: $28 $41

    ld hl, $002D                                  ; $62D4: $21 $2D $00
    add hl, bc                                    ; $62D7: $09
    ld a, [hl]                                    ; $62D8: $7E
    or a                                          ; $62D9: $B7
    jr nz, jr_026_62E1                            ; $62DA: $20 $05

    ld a, [$D6C4]                                 ; $62DC: $FA $C4 $D6
    jr jr_026_62E4                                ; $62DF: $18 $03

jr_026_62E1:
    ld a, [$D684]                                 ; $62E1: $FA $84 $D6

jr_026_62E4:
    ld hl, $0004                                  ; $62E4: $21 $04 $00
    add hl, de                                    ; $62E7: $19
    sub [hl]                                      ; $62E8: $96
    cp $08                                        ; $62E9: $FE $08
    jr c, jr_026_62F4                             ; $62EB: $38 $07

    cp $F8                                        ; $62ED: $FE $F8
    jr nc, jr_026_62F4                            ; $62EF: $30 $03

    jp Jump_026_6311                              ; $62F1: $C3 $11 $63


jr_026_62F4:
    ld hl, $0021                                  ; $62F4: $21 $21 $00
    add hl, de                                    ; $62F7: $19
    ld [hl], $26                                  ; $62F8: $36 $26
    inc hl                                        ; $62FA: $23
    ld [hl], $19                                  ; $62FB: $36 $19
    inc hl                                        ; $62FD: $23
    ld [hl], $63                                  ; $62FE: $36 $63
    ld hl, $0309                                  ; $6300: $21 $09 $03
    ld a, $B3                                     ; $6303: $3E $B3
    call Call_000_34E0                            ; $6305: $CD $E0 $34
    ld hl, $0029                                  ; $6308: $21 $29 $00
    add hl, de                                    ; $630B: $19
    ld [hl], $02                                  ; $630C: $36 $02
    inc hl                                        ; $630E: $23
    ld [hl], $14                                  ; $630F: $36 $14

Jump_026_6311:
    call Call_000_2E25                            ; $6311: $CD $25 $2E
    ret                                           ; $6314: $C9


jr_026_6315:
    call Call_000_27F5                            ; $6315: $CD $F5 $27
    ret                                           ; $6318: $C9


    ld hl, $002A                                  ; $6319: $21 $2A $00
    add hl, de                                    ; $631C: $19
    dec [hl]                                      ; $631D: $35
    jr z, jr_026_637A                             ; $631E: $28 $5A

    ld hl, $002D                                  ; $6320: $21 $2D $00
    add hl, bc                                    ; $6323: $09
    ld a, [hl]                                    ; $6324: $7E
    or a                                          ; $6325: $B7
    jr nz, jr_026_632D                            ; $6326: $20 $05

    ld a, [$D6C4]                                 ; $6328: $FA $C4 $D6
    jr jr_026_6330                                ; $632B: $18 $03

jr_026_632D:
    ld a, [$D684]                                 ; $632D: $FA $84 $D6

jr_026_6330:
    ld hl, $0004                                  ; $6330: $21 $04 $00
    add hl, de                                    ; $6333: $19
    sub [hl]                                      ; $6334: $96
    ld h, a                                       ; $6335: $67
    ld l, $00                                     ; $6336: $2E $00
    sra h                                         ; $6338: $CB $2C
    rr l                                          ; $633A: $CB $1D
    sra h                                         ; $633C: $CB $2C
    rr l                                          ; $633E: $CB $1D
    sra h                                         ; $6340: $CB $2C
    rr l                                          ; $6342: $CB $1D
    sra h                                         ; $6344: $CB $2C
    rr l                                          ; $6346: $CB $1D
    call Call_000_2F0B                            ; $6348: $CD $0B $2F
    ld hl, $002D                                  ; $634B: $21 $2D $00
    add hl, bc                                    ; $634E: $09
    ld a, [hl]                                    ; $634F: $7E
    or a                                          ; $6350: $B7
    jr nz, jr_026_6358                            ; $6351: $20 $05

    ld a, [$D6C6]                                 ; $6353: $FA $C6 $D6
    jr jr_026_635B                                ; $6356: $18 $03

jr_026_6358:
    ld a, [$D686]                                 ; $6358: $FA $86 $D6

jr_026_635B:
    ld hl, $0006                                  ; $635B: $21 $06 $00
    add hl, de                                    ; $635E: $19
    sub [hl]                                      ; $635F: $96
    ld h, a                                       ; $6360: $67
    ld l, $00                                     ; $6361: $2E $00
    sra h                                         ; $6363: $CB $2C
    rr l                                          ; $6365: $CB $1D
    sra h                                         ; $6367: $CB $2C
    rr l                                          ; $6369: $CB $1D
    sra h                                         ; $636B: $CB $2C
    rr l                                          ; $636D: $CB $1D
    sra h                                         ; $636F: $CB $2C
    rr l                                          ; $6371: $CB $1D
    call Call_000_2F42                            ; $6373: $CD $42 $2F
    call Call_000_2E25                            ; $6376: $CD $25 $2E
    ret                                           ; $6379: $C9


jr_026_637A:
    call Call_000_27F5                            ; $637A: $CD $F5 $27
    ret                                           ; $637D: $C9


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
