; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    ld hl, $003F                                  ; $4000: $21 $3F $00
    add hl, bc                                    ; $4003: $09
    ld a, [hl]                                    ; $4004: $7E
    or a                                          ; $4005: $B7
    jr z, jr_002_400E                             ; $4006: $28 $06

    jp Jump_002_400E                              ; $4008: $C3 $0E $40


    call Call_000_2DB6                            ; $400B: $CD $B6 $2D

Jump_002_400E:
jr_002_400E:
    ret                                           ; $400E: $C9


    call Call_000_2EE0                            ; $400F: $CD $E0 $2E
    call Call_000_3517                            ; $4012: $CD $17 $35
    jp c, Jump_002_4036                           ; $4015: $DA $36 $40

    ld hl, $0018                                  ; $4018: $21 $18 $00
    add hl, de                                    ; $401B: $19
    ld a, [hl]                                    ; $401C: $7E
    ld hl, $0045                                  ; $401D: $21 $45 $00
    add hl, bc                                    ; $4020: $09
    cp [hl]                                       ; $4021: $BE
    jp z, Jump_002_4028                           ; $4022: $CA $28 $40

    jp Jump_002_4033                              ; $4025: $C3 $33 $40


Jump_002_4028:
    call Call_000_2CA9                            ; $4028: $CD $A9 $2C
    jp nc, Jump_002_4033                          ; $402B: $D2 $33 $40

    call Call_000_2DB6                            ; $402E: $CD $B6 $2D
    jr jr_002_4036                                ; $4031: $18 $03

Jump_002_4033:
    jp Jump_000_2E25                              ; $4033: $C3 $25 $2E


Jump_002_4036:
jr_002_4036:
    ret                                           ; $4036: $C9


    call Call_000_2EE0                            ; $4037: $CD $E0 $2E
    call Call_000_3517                            ; $403A: $CD $17 $35
    jp c, Jump_002_4071                           ; $403D: $DA $71 $40

    ld hl, $0018                                  ; $4040: $21 $18 $00
    add hl, de                                    ; $4043: $19
    ld a, [hl]                                    ; $4044: $7E
    cp $04                                        ; $4045: $FE $04
    jp z, Jump_002_4055                           ; $4047: $CA $55 $40

    ld hl, $0045                                  ; $404A: $21 $45 $00
    add hl, bc                                    ; $404D: $09
    cp [hl]                                       ; $404E: $BE
    jp z, Jump_002_4063                           ; $404F: $CA $63 $40

    jp Jump_002_406E                              ; $4052: $C3 $6E $40


Jump_002_4055:
    call Call_000_2CA2                            ; $4055: $CD $A2 $2C
    jp z, Jump_002_406E                           ; $4058: $CA $6E $40

    ld a, $0E                                     ; $405B: $3E $0E
    call Call_000_1360                            ; $405D: $CD $60 $13
    jp Jump_002_406E                              ; $4060: $C3 $6E $40


Jump_002_4063:
    call Call_000_2CA9                            ; $4063: $CD $A9 $2C
    jp nc, Jump_002_406E                          ; $4066: $D2 $6E $40

    call Call_000_2DB6                            ; $4069: $CD $B6 $2D
    jr jr_002_4071                                ; $406C: $18 $03

Jump_002_406E:
    jp Jump_000_2E25                              ; $406E: $C3 $25 $2E


Jump_002_4071:
jr_002_4071:
    ret                                           ; $4071: $C9


    ld hl, $0040                                  ; $4072: $21 $40 $00
    call Call_000_30B0                            ; $4075: $CD $B0 $30
    call Call_000_2EE0                            ; $4078: $CD $E0 $2E
    call Call_000_2E25                            ; $407B: $CD $25 $2E
    ret                                           ; $407E: $C9


    call Call_000_2EE0                            ; $407F: $CD $E0 $2E
    call Call_000_3069                            ; $4082: $CD $69 $30
    jp Jump_000_2E25                              ; $4085: $C3 $25 $2E


    ld hl, $0040                                  ; $4088: $21 $40 $00
    call Call_000_30B0                            ; $408B: $CD $B0 $30
    call Call_000_2EE0                            ; $408E: $CD $E0 $2E
    ret                                           ; $4091: $C9


    ld hl, $0040                                  ; $4092: $21 $40 $00
    call Call_000_30B0                            ; $4095: $CD $B0 $30
    call Call_000_2EE0                            ; $4098: $CD $E0 $2E
    ld hl, $0065                                  ; $409B: $21 $65 $00
    add hl, bc                                    ; $409E: $09
    ld a, [hl]                                    ; $409F: $7E
    or a                                          ; $40A0: $B7
    jp nz, Jump_002_40B0                          ; $40A1: $C2 $B0 $40

    ld hl, $0054                                  ; $40A4: $21 $54 $00
    add hl, bc                                    ; $40A7: $09
    ld a, [hl]                                    ; $40A8: $7E
    and $30                                       ; $40A9: $E6 $30
    cp $30                                        ; $40AB: $FE $30
    jp z, Jump_002_40B6                           ; $40AD: $CA $B6 $40

Jump_002_40B0:
    call Call_000_2DB6                            ; $40B0: $CD $B6 $2D
    jp Jump_002_40D1                              ; $40B3: $C3 $D1 $40


Jump_002_40B6:
    ld hl, $0062                                  ; $40B6: $21 $62 $00
    add hl, bc                                    ; $40B9: $09
    ld a, [hl]                                    ; $40BA: $7E
    cp $10                                        ; $40BB: $FE $10
    jr z, jr_002_40CE                             ; $40BD: $28 $0F

    ld hl, $009C                                  ; $40BF: $21 $9C $00
    add hl, bc                                    ; $40C2: $09
    inc [hl]                                      ; $40C3: $34
    ld a, $07                                     ; $40C4: $3E $07
    and [hl]                                      ; $40C6: $A6
    jr nz, jr_002_40CE                            ; $40C7: $20 $05

    ld a, $01                                     ; $40C9: $3E $01
    call Call_000_3353                            ; $40CB: $CD $53 $33

jr_002_40CE:
    jp Jump_000_2E25                              ; $40CE: $C3 $25 $2E


Jump_002_40D1:
    ret                                           ; $40D1: $C9


    call Call_000_2EE0                            ; $40D2: $CD $E0 $2E
    call Call_000_3517                            ; $40D5: $CD $17 $35
    jp c, Jump_002_414D                           ; $40D8: $DA $4D $41

    ld hl, $0018                                  ; $40DB: $21 $18 $00
    add hl, de                                    ; $40DE: $19
    ld a, [hl]                                    ; $40DF: $7E
    cp $00                                        ; $40E0: $FE $00
    jp z, Jump_002_40EA                           ; $40E2: $CA $EA $40

    cp $04                                        ; $40E5: $FE $04
    jp z, Jump_002_4110                           ; $40E7: $CA $10 $41

Jump_002_40EA:
    call Call_000_2CA2                            ; $40EA: $CD $A2 $2C
    jp z, Jump_002_40FB                           ; $40ED: $CA $FB $40

    ld a, $AF                                     ; $40F0: $3E $AF
    call Call_000_1360                            ; $40F2: $CD $60 $13
    ld hl, $0500                                  ; $40F5: $21 $00 $05
    call Call_000_2FEB                            ; $40F8: $CD $EB $2F

Jump_002_40FB:
    call Call_002_4128                            ; $40FB: $CD $28 $41
    jp c, Jump_002_413B                           ; $40FE: $DA $3B $41

    call Call_000_3069                            ; $4101: $CD $69 $30
    call Call_000_2CA9                            ; $4104: $CD $A9 $2C
    jp nc, Jump_002_414A                          ; $4107: $D2 $4A $41

    inc hl                                        ; $410A: $23
    ld [hl], $14                                  ; $410B: $36 $14
    jp Jump_002_414A                              ; $410D: $C3 $4A $41


Jump_002_4110:
    ld hl, $0080                                  ; $4110: $21 $80 $00
    call Call_000_30B0                            ; $4113: $CD $B0 $30
    jp c, Jump_002_413B                           ; $4116: $DA $3B $41

    call Call_002_4128                            ; $4119: $CD $28 $41
    jp c, Jump_002_413B                           ; $411C: $DA $3B $41

    call Call_000_2CA9                            ; $411F: $CD $A9 $2C
    jp nc, Jump_002_414A                          ; $4122: $D2 $4A $41

    jp Jump_002_413B                              ; $4125: $C3 $3B $41


Call_002_4128:
    call Call_000_2C5C                            ; $4128: $CD $5C $2C
    ret c                                         ; $412B: $D8

    call Call_000_2C82                            ; $412C: $CD $82 $2C
    ret nc                                        ; $412F: $D0

    and $0F                                       ; $4130: $E6 $0F
    cp $01                                        ; $4132: $FE $01
    jr z, jr_002_4138                             ; $4134: $28 $02

    scf                                           ; $4136: $37
    ret                                           ; $4137: $C9


jr_002_4138:
    scf                                           ; $4138: $37
    ccf                                           ; $4139: $3F
    ret                                           ; $413A: $C9


Jump_002_413B:
    call Call_000_2C23                            ; $413B: $CD $23 $2C
    call Call_000_2DBD                            ; $413E: $CD $BD $2D
    ld hl, $003C                                  ; $4141: $21 $3C $00
    add hl, bc                                    ; $4144: $09
    ld a, $16                                     ; $4145: $3E $16
    ld [hl], a                                    ; $4147: $77
    jr jr_002_414D                                ; $4148: $18 $03

Jump_002_414A:
    call Call_000_2E25                            ; $414A: $CD $25 $2E

Jump_002_414D:
jr_002_414D:
    ret                                           ; $414D: $C9


    call Call_000_2EE0                            ; $414E: $CD $E0 $2E
    call Call_000_3517                            ; $4151: $CD $17 $35
    jp c, Jump_002_41E3                           ; $4154: $DA $E3 $41

    ld hl, $0018                                  ; $4157: $21 $18 $00
    add hl, de                                    ; $415A: $19
    ld a, [hl]                                    ; $415B: $7E
    cp $00                                        ; $415C: $FE $00
    jp z, Jump_002_4170                           ; $415E: $CA $70 $41

    cp $04                                        ; $4161: $FE $04
    jp z, Jump_002_417C                           ; $4163: $CA $7C $41

    cp $08                                        ; $4166: $FE $08
    jp z, Jump_002_41AA                           ; $4168: $CA $AA $41

    cp $0C                                        ; $416B: $FE $0C
    jp z, Jump_002_41C1                           ; $416D: $CA $C1 $41

Jump_002_4170:
    call Call_000_2CA9                            ; $4170: $CD $A9 $2C
    jp nc, Jump_002_41E0                          ; $4173: $D2 $E0 $41

    inc hl                                        ; $4176: $23
    ld [hl], $0C                                  ; $4177: $36 $0C
    jp Jump_002_41E0                              ; $4179: $C3 $E0 $41


Jump_002_417C:
    call Call_000_2CA2                            ; $417C: $CD $A2 $2C
    jp z, Jump_002_419B                           ; $417F: $CA $9B $41

    ld a, $AF                                     ; $4182: $3E $AF
    call Call_000_1360                            ; $4184: $CD $60 $13
    ld hl, $003C                                  ; $4187: $21 $3C $00
    add hl, bc                                    ; $418A: $09
    ld a, [hl]                                    ; $418B: $7E
    cp $16                                        ; $418C: $FE $16
    jr nz, jr_002_4195                            ; $418E: $20 $05

    ld hl, $0300                                  ; $4190: $21 $00 $03
    jr jr_002_4198                                ; $4193: $18 $03

jr_002_4195:
    ld hl, $FD00                                  ; $4195: $21 $00 $FD

jr_002_4198:
    call Call_000_2FEB                            ; $4198: $CD $EB $2F

Jump_002_419B:
    call Call_000_3069                            ; $419B: $CD $69 $30
    call Call_000_2CA9                            ; $419E: $CD $A9 $2C
    jp nc, Jump_002_41E0                          ; $41A1: $D2 $E0 $41

    inc hl                                        ; $41A4: $23
    ld [hl], $0C                                  ; $41A5: $36 $0C
    jp Jump_002_41E0                              ; $41A7: $C3 $E0 $41


Jump_002_41AA:
    ld hl, $0020                                  ; $41AA: $21 $20 $00
    call Call_000_30B0                            ; $41AD: $CD $B0 $30
    call Call_000_2CA9                            ; $41B0: $CD $A9 $2C
    jp nc, Jump_002_41E0                          ; $41B3: $D2 $E0 $41

    inc hl                                        ; $41B6: $23
    ld [hl], $07                                  ; $41B7: $36 $07
    ld a, $B5                                     ; $41B9: $3E $B5
    call Call_000_1360                            ; $41BB: $CD $60 $13
    jp Jump_002_41E0                              ; $41BE: $C3 $E0 $41


Jump_002_41C1:
    call Call_000_2CA2                            ; $41C1: $CD $A2 $2C
    jp z, Jump_002_41CC                           ; $41C4: $CA $CC $41

    ld a, $05                                     ; $41C7: $3E $05
    call Call_000_3963                            ; $41C9: $CD $63 $39

Jump_002_41CC:
    ld hl, $0020                                  ; $41CC: $21 $20 $00
    call Call_000_30B0                            ; $41CF: $CD $B0 $30
    call Call_000_2CA9                            ; $41D2: $CD $A9 $2C
    jp nc, Jump_002_41E0                          ; $41D5: $D2 $E0 $41

    call Call_000_2C23                            ; $41D8: $CD $23 $2C
    call Call_000_2DB6                            ; $41DB: $CD $B6 $2D
    jr jr_002_41E3                                ; $41DE: $18 $03

Jump_002_41E0:
    call Call_000_2E25                            ; $41E0: $CD $25 $2E

Jump_002_41E3:
jr_002_41E3:
    ret                                           ; $41E3: $C9


    call Call_000_2EE0                            ; $41E4: $CD $E0 $2E
    call Call_000_3517                            ; $41E7: $CD $17 $35
    jp c, Jump_002_4250                           ; $41EA: $DA $50 $42

    ld hl, $0018                                  ; $41ED: $21 $18 $00
    add hl, de                                    ; $41F0: $19
    ld a, [hl]                                    ; $41F1: $7E
    cp $00                                        ; $41F2: $FE $00
    jp z, Jump_002_420D                           ; $41F4: $CA $0D $42

    cp $04                                        ; $41F7: $FE $04
    jp z, Jump_002_422F                           ; $41F9: $CA $2F $42

    cp $08                                        ; $41FC: $FE $08
    jp z, Jump_002_4242                           ; $41FE: $CA $42 $42

    jp Jump_002_422F                              ; $4201: $C3 $2F $42


    ld hl, $001D                                  ; $4204: $21 $1D $00
    add hl, de                                    ; $4207: $19
    ld [hl], $FF                                  ; $4208: $36 $FF
    jp Jump_002_424D                              ; $420A: $C3 $4D $42


Jump_002_420D:
    ld hl, $0000                                  ; $420D: $21 $00 $00
    add hl, de                                    ; $4210: $19
    bit 3, [hl]                                   ; $4211: $CB $5E
    jp z, Jump_002_4225                           ; $4213: $CA $25 $42

    ld hl, $FD00                                  ; $4216: $21 $00 $FD
    call Call_000_2FEB                            ; $4219: $CD $EB $2F
    ld hl, $FD00                                  ; $421C: $21 $00 $FD
    call Call_000_305D                            ; $421F: $CD $5D $30
    jp Jump_002_422F                              ; $4222: $C3 $2F $42


Jump_002_4225:
    ld a, $FD                                     ; $4225: $3E $FD
    ld h, $FF                                     ; $4227: $26 $FF
    call Call_000_2D33                            ; $4229: $CD $33 $2D
    jp Jump_002_422F                              ; $422C: $C3 $2F $42


Jump_002_422F:
    ld hl, $0060                                  ; $422F: $21 $60 $00
    call Call_000_30FF                            ; $4232: $CD $FF $30
    jp nc, Jump_002_424D                          ; $4235: $D2 $4D $42

    ld a, $08                                     ; $4238: $3E $08
    ld h, $00                                     ; $423A: $26 $00
    call Call_000_2CBA                            ; $423C: $CD $BA $2C
    jp Jump_002_4250                              ; $423F: $C3 $50 $42


Jump_002_4242:
    call Call_000_2CA9                            ; $4242: $CD $A9 $2C
    jp nc, Jump_002_424D                          ; $4245: $D2 $4D $42

    call Call_000_2DB6                            ; $4248: $CD $B6 $2D
    jr jr_002_4250                                ; $424B: $18 $03

Jump_002_424D:
    call Call_000_2E25                            ; $424D: $CD $25 $2E

Jump_002_4250:
jr_002_4250:
    ret                                           ; $4250: $C9


    call Call_000_2EE0                            ; $4251: $CD $E0 $2E
    call Call_000_3517                            ; $4254: $CD $17 $35
    jp c, Jump_002_4327                           ; $4257: $DA $27 $43

    ld hl, $0018                                  ; $425A: $21 $18 $00
    add hl, de                                    ; $425D: $19
    ld a, [hl]                                    ; $425E: $7E
    cp $00                                        ; $425F: $FE $00
    jp z, Jump_002_4276                           ; $4261: $CA $76 $42

    cp $04                                        ; $4264: $FE $04
    jp z, Jump_002_429C                           ; $4266: $CA $9C $42

    cp $08                                        ; $4269: $FE $08
    jp z, Jump_002_4313                           ; $426B: $CA $13 $43

    cp $14                                        ; $426E: $FE $14
    jp z, Jump_002_42ED                           ; $4270: $CA $ED $42

    jp Jump_002_4324                              ; $4273: $C3 $24 $43


Jump_002_4276:
    ld hl, $0021                                  ; $4276: $21 $21 $00
    add hl, bc                                    ; $4279: $09
    res 1, [hl]                                   ; $427A: $CB $8E
    ld hl, $0053                                  ; $427C: $21 $53 $00
    add hl, bc                                    ; $427F: $09
    bit 6, [hl]                                   ; $4280: $CB $76
    jp nz, Jump_002_42E5                          ; $4282: $C2 $E5 $42

    bit 4, [hl]                                   ; $4285: $CB $66
    jp nz, Jump_002_42C8                          ; $4287: $C2 $C8 $42

    bit 5, [hl]                                   ; $428A: $CB $6E
    jp nz, Jump_002_42C8                          ; $428C: $C2 $C8 $42

    ld hl, $0052                                  ; $428F: $21 $52 $00
    add hl, bc                                    ; $4292: $09
    ld a, [hl]                                    ; $4293: $7E
    bit 2, a                                      ; $4294: $CB $57
    jp nz, Jump_002_4324                          ; $4296: $C2 $24 $43

    jp Jump_002_4319                              ; $4299: $C3 $19 $43


Jump_002_429C:
    ld hl, $0021                                  ; $429C: $21 $21 $00
    add hl, bc                                    ; $429F: $09
    res 1, [hl]                                   ; $42A0: $CB $8E
    call Call_000_2CA9                            ; $42A2: $CD $A9 $2C
    jp nc, Jump_002_4324                          ; $42A5: $D2 $24 $43

    ld hl, $0052                                  ; $42A8: $21 $52 $00
    add hl, bc                                    ; $42AB: $09
    ld a, [hl]                                    ; $42AC: $7E
    bit 2, a                                      ; $42AD: $CB $57
    jp z, Jump_002_4324                           ; $42AF: $CA $24 $43

    ld hl, $0053                                  ; $42B2: $21 $53 $00
    add hl, bc                                    ; $42B5: $09
    bit 6, [hl]                                   ; $42B6: $CB $76
    jp nz, Jump_002_42E5                          ; $42B8: $C2 $E5 $42

    bit 4, [hl]                                   ; $42BB: $CB $66
    jp nz, Jump_002_42C8                          ; $42BD: $C2 $C8 $42

    bit 5, [hl]                                   ; $42C0: $CB $6E
    jp nz, Jump_002_42C8                          ; $42C2: $C2 $C8 $42

    jp Jump_002_4327                              ; $42C5: $C3 $27 $43


Jump_002_42C8:
    ld hl, $0021                                  ; $42C8: $21 $21 $00
    add hl, bc                                    ; $42CB: $09
    set 1, [hl]                                   ; $42CC: $CB $CE
    ld a, $1A                                     ; $42CE: $3E $1A
    call Call_000_1360                            ; $42D0: $CD $60 $13
    ld hl, $0203                                  ; $42D3: $21 $03 $02
    ld a, $01                                     ; $42D6: $3E $01
    call Call_000_34B3                            ; $42D8: $CD $B3 $34
    ld a, $0C                                     ; $42DB: $3E $0C
    ld h, $00                                     ; $42DD: $26 $00
    call Call_000_2D19                            ; $42DF: $CD $19 $2D
    jp Jump_002_4327                              ; $42E2: $C3 $27 $43


Jump_002_42E5:
    ld a, $26                                     ; $42E5: $3E $26
    call Call_000_2E6E                            ; $42E7: $CD $6E $2E
    jp Jump_002_4327                              ; $42EA: $C3 $27 $43


Jump_002_42ED:
    call Call_000_2CA9                            ; $42ED: $CD $A9 $2C
    jp nc, Jump_002_4324                          ; $42F0: $D2 $24 $43

    ld hl, $0000                                  ; $42F3: $21 $00 $00
    ld a, $00                                     ; $42F6: $3E $00
    call Call_000_34B3                            ; $42F8: $CD $B3 $34
    ld hl, $0000                                  ; $42FB: $21 $00 $00
    ld a, $00                                     ; $42FE: $3E $00
    call Call_000_34A2                            ; $4300: $CD $A2 $34
    ld a, $04                                     ; $4303: $3E $04
    ld h, $00                                     ; $4305: $26 $00
    call Call_000_2D19                            ; $4307: $CD $19 $2D
    ld hl, $0021                                  ; $430A: $21 $21 $00
    add hl, bc                                    ; $430D: $09
    res 1, [hl]                                   ; $430E: $CB $8E
    jp Jump_002_4327                              ; $4310: $C3 $27 $43


Jump_002_4313:
    ld hl, $0021                                  ; $4313: $21 $21 $00
    add hl, bc                                    ; $4316: $09
    res 1, [hl]                                   ; $4317: $CB $8E

Jump_002_4319:
    call Call_000_2CA9                            ; $4319: $CD $A9 $2C
    jp nc, Jump_002_4324                          ; $431C: $D2 $24 $43

    call Call_000_2DB6                            ; $431F: $CD $B6 $2D
    jr jr_002_4327                                ; $4322: $18 $03

Jump_002_4324:
    call Call_000_2E25                            ; $4324: $CD $25 $2E

Jump_002_4327:
jr_002_4327:
    ret                                           ; $4327: $C9


    call Call_000_2EE0                            ; $4328: $CD $E0 $2E
    call Call_000_3517                            ; $432B: $CD $17 $35
    jp c, Jump_002_436E                           ; $432E: $DA $6E $43

    ld hl, $0018                                  ; $4331: $21 $18 $00
    add hl, de                                    ; $4334: $19
    ld a, [hl]                                    ; $4335: $7E
    cp $00                                        ; $4336: $FE $00
    jp z, Jump_002_434D                           ; $4338: $CA $4D $43

    cp $04                                        ; $433B: $FE $04
    jp z, Jump_002_4359                           ; $433D: $CA $59 $43

    cp $08                                        ; $4340: $FE $08
    jp z, Jump_002_4362                           ; $4342: $CA $62 $43

    cp $10                                        ; $4345: $FE $10
    jp z, Jump_002_4387                           ; $4347: $CA $87 $43

    jp Jump_002_436E                              ; $434A: $C3 $6E $43


Jump_002_434D:
    call Call_000_2CA9                            ; $434D: $CD $A9 $2C
    jp nc, Jump_002_436E                          ; $4350: $D2 $6E $43

    inc hl                                        ; $4353: $23
    ld [hl], $00                                  ; $4354: $36 $00
    jp Jump_002_436E                              ; $4356: $C3 $6E $43


Jump_002_4359:
    call Call_000_2CA9                            ; $4359: $CD $A9 $2C
    jp nc, Jump_002_436E                          ; $435C: $D2 $6E $43

    jp Jump_002_436E                              ; $435F: $C3 $6E $43


Jump_002_4362:
    call Call_000_2CA9                            ; $4362: $CD $A9 $2C
    jp nc, Jump_002_436E                          ; $4365: $D2 $6E $43

    inc hl                                        ; $4368: $23
    ld [hl], $FF                                  ; $4369: $36 $FF
    jp Jump_002_436E                              ; $436B: $C3 $6E $43


Jump_002_436E:
    ld hl, $0060                                  ; $436E: $21 $60 $00
    call Call_000_30FF                            ; $4371: $CD $FF $30
    jp nc, Jump_002_4392                          ; $4374: $D2 $92 $43

    ld hl, $0021                                  ; $4377: $21 $21 $00
    add hl, bc                                    ; $437A: $09
    res 2, [hl]                                   ; $437B: $CB $96
    ld a, $10                                     ; $437D: $3E $10
    ld h, $00                                     ; $437F: $26 $00
    call Call_000_2CBA                            ; $4381: $CD $BA $2C
    jp Jump_002_4395                              ; $4384: $C3 $95 $43


Jump_002_4387:
    call Call_000_2CA9                            ; $4387: $CD $A9 $2C
    jp nc, Jump_002_4392                          ; $438A: $D2 $92 $43

    call Call_000_2DB6                            ; $438D: $CD $B6 $2D
    jr jr_002_4395                                ; $4390: $18 $03

Jump_002_4392:
    jp Jump_000_2E25                              ; $4392: $C3 $25 $2E


Jump_002_4395:
jr_002_4395:
    ret                                           ; $4395: $C9


    call Call_000_2EE0                            ; $4396: $CD $E0 $2E
    call Call_000_3517                            ; $4399: $CD $17 $35
    jp c, Jump_002_43CA                           ; $439C: $DA $CA $43

    ld hl, $0018                                  ; $439F: $21 $18 $00
    add hl, de                                    ; $43A2: $19
    ld a, [hl]                                    ; $43A3: $7E
    cp $00                                        ; $43A4: $FE $00
    jp z, Jump_002_43B1                           ; $43A6: $CA $B1 $43

    cp $04                                        ; $43A9: $FE $04
    jp z, Jump_002_441F                           ; $43AB: $CA $1F $44

    jp Jump_002_43CA                              ; $43AE: $C3 $CA $43


Jump_002_43B1:
    ld hl, $0053                                  ; $43B1: $21 $53 $00
    add hl, bc                                    ; $43B4: $09
    bit 6, [hl]                                   ; $43B5: $CB $76
    jp nz, Jump_002_440B                          ; $43B7: $C2 $0B $44

    bit 4, [hl]                                   ; $43BA: $CB $66
    jp nz, Jump_002_43F8                          ; $43BC: $C2 $F8 $43

    bit 5, [hl]                                   ; $43BF: $CB $6E
    jp nz, Jump_002_43E5                          ; $43C1: $C2 $E5 $43

    call Call_000_2A68                            ; $43C4: $CD $68 $2A
    jp c, Jump_002_442D                           ; $43C7: $DA $2D $44

Jump_002_43CA:
    ld hl, $0060                                  ; $43CA: $21 $60 $00
    call Call_000_30FF                            ; $43CD: $CD $FF $30
    jp nc, Jump_002_442A                          ; $43D0: $D2 $2A $44

    ld a, $04                                     ; $43D3: $3E $04
    ld h, $00                                     ; $43D5: $26 $00
    call Call_000_2CBA                            ; $43D7: $CD $BA $2C
    ld hl, $0021                                  ; $43DA: $21 $21 $00
    add hl, bc                                    ; $43DD: $09
    res 3, [hl]                                   ; $43DE: $CB $9E
    res 4, [hl]                                   ; $43E0: $CB $A6
    jp Jump_002_442D                              ; $43E2: $C3 $2D $44


Jump_002_43E5:
    ld a, $08                                     ; $43E5: $3E $08
    call Call_000_1360                            ; $43E7: $CD $60 $13
    ld a, $38                                     ; $43EA: $3E $38
    call Call_000_2EA3                            ; $43EC: $CD $A3 $2E
    ld hl, $0021                                  ; $43EF: $21 $21 $00
    add hl, bc                                    ; $43F2: $09
    res 3, [hl]                                   ; $43F3: $CB $9E
    jp Jump_002_43CA                              ; $43F5: $C3 $CA $43


Jump_002_43F8:
    ld a, $09                                     ; $43F8: $3E $09
    call Call_000_1360                            ; $43FA: $CD $60 $13
    ld a, $3A                                     ; $43FD: $3E $3A
    call Call_000_2EA3                            ; $43FF: $CD $A3 $2E
    ld hl, $0021                                  ; $4402: $21 $21 $00
    add hl, bc                                    ; $4405: $09
    res 3, [hl]                                   ; $4406: $CB $9E
    jp Jump_002_43CA                              ; $4408: $C3 $CA $43


Jump_002_440B:
    ld hl, $009C                                  ; $440B: $21 $9C $00
    add hl, bc                                    ; $440E: $09
    ld [hl], $00                                  ; $440F: $36 $00
    ld a, $26                                     ; $4411: $3E $26
    call Call_000_2E6E                            ; $4413: $CD $6E $2E
    ld hl, $0021                                  ; $4416: $21 $21 $00
    add hl, bc                                    ; $4419: $09
    res 3, [hl]                                   ; $441A: $CB $9E
    jp Jump_002_442D                              ; $441C: $C3 $2D $44


Jump_002_441F:
    call Call_000_2CA9                            ; $441F: $CD $A9 $2C
    jp nc, Jump_002_442A                          ; $4422: $D2 $2A $44

    call Call_000_2DB6                            ; $4425: $CD $B6 $2D
    jr jr_002_442D                                ; $4428: $18 $03

Jump_002_442A:
    jp Jump_000_2E25                              ; $442A: $C3 $25 $2E


Jump_002_442D:
jr_002_442D:
    ret                                           ; $442D: $C9


    ld hl, $0040                                  ; $442E: $21 $40 $00
    call Call_000_30B0                            ; $4431: $CD $B0 $30
    call Call_000_2EE0                            ; $4434: $CD $E0 $2E
    call Call_000_2C5C                            ; $4437: $CD $5C $2C
    call Call_000_3517                            ; $443A: $CD $17 $35
    jp c, Jump_002_451A                           ; $443D: $DA $1A $45

    ld hl, $0018                                  ; $4440: $21 $18 $00
    add hl, de                                    ; $4443: $19
    ld a, [hl]                                    ; $4444: $7E
    cp $00                                        ; $4445: $FE $00
    jp z, Jump_002_445A                           ; $4447: $CA $5A $44

    cp $04                                        ; $444A: $FE $04
    jp z, Jump_002_4486                           ; $444C: $CA $86 $44

    ld hl, $0045                                  ; $444F: $21 $45 $00
    add hl, bc                                    ; $4452: $09
    cp [hl]                                       ; $4453: $BE
    jp z, Jump_002_44F1                           ; $4454: $CA $F1 $44

    jp Jump_002_4517                              ; $4457: $C3 $17 $45


Jump_002_445A:
    ld hl, $0058                                  ; $445A: $21 $58 $00
    add hl, bc                                    ; $445D: $09
    ld a, [hl]                                    ; $445E: $7E
    and $F0                                       ; $445F: $E6 $F0
    jr z, jr_002_446C                             ; $4461: $28 $09

    ld hl, $001C                                  ; $4463: $21 $1C $00
    add hl, de                                    ; $4466: $19
    ld [hl], $00                                  ; $4467: $36 $00
    inc hl                                        ; $4469: $23
    ld [hl], $00                                  ; $446A: $36 $00

jr_002_446C:
    call Call_000_2CA9                            ; $446C: $CD $A9 $2C
    jp nc, Jump_002_4517                          ; $446F: $D2 $17 $45

    ld a, $08                                     ; $4472: $3E $08
    call Call_000_1360                            ; $4474: $CD $60 $13
    ld hl, $005D                                  ; $4477: $21 $5D $00
    add hl, bc                                    ; $447A: $09
    ld a, [hl]                                    ; $447B: $7E
    cp $02                                        ; $447C: $FE $02
    jp nz, Jump_002_4517                          ; $447E: $C2 $17 $45

    ld [hl], $00                                  ; $4481: $36 $00
    jp Jump_002_4517                              ; $4483: $C3 $17 $45


Jump_002_4486:
    call Call_000_2CA2                            ; $4486: $CD $A2 $2C
    jp z, Jump_002_44A8                           ; $4489: $CA $A8 $44

    ld hl, $005D                                  ; $448C: $21 $5D $00
    add hl, bc                                    ; $448F: $09
    ld a, [hl]                                    ; $4490: $7E
    cp $01                                        ; $4491: $FE $01
    jr nz, jr_002_44A8                            ; $4493: $20 $13

    ld hl, $003C                                  ; $4495: $21 $3C $00
    add hl, bc                                    ; $4498: $09
    ld a, [hl]                                    ; $4499: $7E
    cp $32                                        ; $449A: $FE $32
    jr z, jr_002_44A8                             ; $449C: $28 $0A

    cp $34                                        ; $449E: $FE $34
    jr z, jr_002_44A8                             ; $44A0: $28 $06

    ld hl, $0100                                  ; $44A2: $21 $00 $01
    call Call_000_2FEB                            ; $44A5: $CD $EB $2F

Jump_002_44A8:
jr_002_44A8:
    call Call_000_2CA9                            ; $44A8: $CD $A9 $2C
    jp nc, Jump_002_4517                          ; $44AB: $D2 $17 $45

    ld hl, $0058                                  ; $44AE: $21 $58 $00
    add hl, bc                                    ; $44B1: $09
    ld a, [hl]                                    ; $44B2: $7E
    and $F0                                       ; $44B3: $E6 $F0
    jr z, jr_002_4517                             ; $44B5: $28 $60

    ld hl, $005D                                  ; $44B7: $21 $5D $00
    add hl, bc                                    ; $44BA: $09
    inc [hl]                                      ; $44BB: $34
    ld a, [hl]                                    ; $44BC: $7E
    cp $01                                        ; $44BD: $FE $01
    jp z, Jump_002_44CA                           ; $44BF: $CA $CA $44

    cp $02                                        ; $44C2: $FE $02
    jp z, Jump_002_44CD                           ; $44C4: $CA $CD $44

    jp Jump_002_4517                              ; $44C7: $C3 $17 $45


Jump_002_44CA:
    jp Jump_002_4503                              ; $44CA: $C3 $03 $45


Jump_002_44CD:
    ld hl, $0058                                  ; $44CD: $21 $58 $00
    add hl, bc                                    ; $44D0: $09
    ld a, [hl]                                    ; $44D1: $7E
    and $C0                                       ; $44D2: $E6 $C0
    jp nz, Jump_002_4503                          ; $44D4: $C2 $03 $45

    jp Jump_002_4517                              ; $44D7: $C3 $17 $45


    ld hl, $001C                                  ; $44DA: $21 $1C $00
    add hl, de                                    ; $44DD: $19
    ld [hl], $00                                  ; $44DE: $36 $00
    inc hl                                        ; $44E0: $23
    ld [hl], $00                                  ; $44E1: $36 $00
    ld hl, $0045                                  ; $44E3: $21 $45 $00
    add hl, bc                                    ; $44E6: $09
    ld a, [hl]                                    ; $44E7: $7E
    sub $04                                       ; $44E8: $D6 $04
    ld hl, $0014                                  ; $44EA: $21 $14 $00
    add hl, de                                    ; $44ED: $19
    ld [hl], a                                    ; $44EE: $77
    jr jr_002_4517                                ; $44EF: $18 $26

Jump_002_44F1:
    call Call_000_2CA2                            ; $44F1: $CD $A2 $2C
    jp z, Jump_002_44FD                           ; $44F4: $CA $FD $44

    ld hl, $001C                                  ; $44F7: $21 $1C $00
    add hl, de                                    ; $44FA: $19
    ld [hl], $03                                  ; $44FB: $36 $03

Jump_002_44FD:
    call Call_000_2CA9                            ; $44FD: $CD $A9 $2C
    jp nc, Jump_002_4517                          ; $4500: $D2 $17 $45

Jump_002_4503:
    ld hl, $0058                                  ; $4503: $21 $58 $00
    add hl, bc                                    ; $4506: $09
    ld a, [hl]                                    ; $4507: $7E
    and $F0                                       ; $4508: $E6 $F0
    jr nz, jr_002_4512                            ; $450A: $20 $06

    ld hl, $005D                                  ; $450C: $21 $5D $00
    add hl, bc                                    ; $450F: $09
    ld [hl], $00                                  ; $4510: $36 $00

jr_002_4512:
    call Call_000_2DB6                            ; $4512: $CD $B6 $2D
    jr jr_002_451A                                ; $4515: $18 $03

Jump_002_4517:
jr_002_4517:
    jp Jump_000_2E25                              ; $4517: $C3 $25 $2E


Jump_002_451A:
jr_002_451A:
    ret                                           ; $451A: $C9


    ld hl, $0040                                  ; $451B: $21 $40 $00
    call Call_000_30B0                            ; $451E: $CD $B0 $30
    call Call_000_2EE0                            ; $4521: $CD $E0 $2E
    call Call_000_3517                            ; $4524: $CD $17 $35
    jp c, Jump_002_4577                           ; $4527: $DA $77 $45

    ld hl, $0018                                  ; $452A: $21 $18 $00
    add hl, de                                    ; $452D: $19
    ld a, [hl]                                    ; $452E: $7E
    cp $00                                        ; $452F: $FE $00
    jp z, Jump_002_453F                           ; $4531: $CA $3F $45

    ld hl, $0045                                  ; $4534: $21 $45 $00
    add hl, bc                                    ; $4537: $09
    cp [hl]                                       ; $4538: $BE
    jp z, Jump_002_4563                           ; $4539: $CA $63 $45

    jp Jump_002_4574                              ; $453C: $C3 $74 $45


Jump_002_453F:
    call Call_000_2CA2                            ; $453F: $CD $A2 $2C
    jp z, Jump_002_4560                           ; $4542: $CA $60 $45

    ld hl, $005D                                  ; $4545: $21 $5D $00
    add hl, bc                                    ; $4548: $09
    ld a, [hl]                                    ; $4549: $7E
    cp $02                                        ; $454A: $FE $02
    jr nz, jr_002_4560                            ; $454C: $20 $12

    ld hl, $0047                                  ; $454E: $21 $47 $00
    add hl, bc                                    ; $4551: $09
    ld [hl], $08                                  ; $4552: $36 $08
    ld hl, $004D                                  ; $4554: $21 $4D $00
    add hl, bc                                    ; $4557: $09
    ld [hl], $08                                  ; $4558: $36 $08
    ld hl, $0300                                  ; $455A: $21 $00 $03
    call Call_000_2FEB                            ; $455D: $CD $EB $2F

Jump_002_4560:
jr_002_4560:
    jp Jump_002_4574                              ; $4560: $C3 $74 $45


Jump_002_4563:
    call Call_000_2CA9                            ; $4563: $CD $A9 $2C
    jp nc, Jump_002_4574                          ; $4566: $D2 $74 $45

    call Call_000_2DB6                            ; $4569: $CD $B6 $2D
    ld hl, $005D                                  ; $456C: $21 $5D $00
    add hl, bc                                    ; $456F: $09
    ld [hl], $00                                  ; $4570: $36 $00
    jr jr_002_4577                                ; $4572: $18 $03

Jump_002_4574:
    jp Jump_000_2E25                              ; $4574: $C3 $25 $2E


Jump_002_4577:
jr_002_4577:
    ret                                           ; $4577: $C9


    ld hl, $0040                                  ; $4578: $21 $40 $00
    call Call_000_30B0                            ; $457B: $CD $B0 $30
    call Call_000_2EE0                            ; $457E: $CD $E0 $2E
    call Call_000_3517                            ; $4581: $CD $17 $35
    jp c, Jump_002_45C5                           ; $4584: $DA $C5 $45

    ld hl, $0018                                  ; $4587: $21 $18 $00
    add hl, de                                    ; $458A: $19
    ld a, [hl]                                    ; $458B: $7E
    cp $00                                        ; $458C: $FE $00
    jp z, Jump_002_459C                           ; $458E: $CA $9C $45

    ld hl, $0045                                  ; $4591: $21 $45 $00
    add hl, bc                                    ; $4594: $09
    cp [hl]                                       ; $4595: $BE
    jp z, Jump_002_45A5                           ; $4596: $CA $A5 $45

    jp Jump_002_45B6                              ; $4599: $C3 $B6 $45


Jump_002_459C:
    call Call_000_2CA2                            ; $459C: $CD $A2 $2C
    jp z, Jump_002_45A2                           ; $459F: $CA $A2 $45

Jump_002_45A2:
    jp Jump_002_45B6                              ; $45A2: $C3 $B6 $45


Jump_002_45A5:
    call Call_000_2CA9                            ; $45A5: $CD $A9 $2C
    jp nc, Jump_002_45B6                          ; $45A8: $D2 $B6 $45

    call Call_000_2DB6                            ; $45AB: $CD $B6 $2D
    ld hl, $005D                                  ; $45AE: $21 $5D $00
    add hl, bc                                    ; $45B1: $09
    ld [hl], $00                                  ; $45B2: $36 $00
    jr jr_002_45C5                                ; $45B4: $18 $0F

Jump_002_45B6:
    ld a, [$C01A]                                 ; $45B6: $FA $1A $C0
    and $01                                       ; $45B9: $E6 $01
    jr nz, jr_002_45C2                            ; $45BB: $20 $05

    ld a, $21                                     ; $45BD: $3E $21
    call Call_000_1360                            ; $45BF: $CD $60 $13

jr_002_45C2:
    jp Jump_000_2E25                              ; $45C2: $C3 $25 $2E


Jump_002_45C5:
jr_002_45C5:
    ret                                           ; $45C5: $C9


    ld hl, $0040                                  ; $45C6: $21 $40 $00
    call Call_000_30B0                            ; $45C9: $CD $B0 $30
    call Call_000_2EE0                            ; $45CC: $CD $E0 $2E
    call Call_000_3517                            ; $45CF: $CD $17 $35
    jp c, Jump_002_460C                           ; $45D2: $DA $0C $46

    ld hl, $0018                                  ; $45D5: $21 $18 $00
    add hl, de                                    ; $45D8: $19
    ld a, [hl]                                    ; $45D9: $7E
    cp $00                                        ; $45DA: $FE $00
    jp z, Jump_002_45EA                           ; $45DC: $CA $EA $45

    ld hl, $0045                                  ; $45DF: $21 $45 $00
    add hl, bc                                    ; $45E2: $09
    cp [hl]                                       ; $45E3: $BE
    jp z, Jump_002_45F8                           ; $45E4: $CA $F8 $45

    jp Jump_002_4609                              ; $45E7: $C3 $09 $46


Jump_002_45EA:
    call Call_000_2CA2                            ; $45EA: $CD $A2 $2C
    jp z, Jump_002_45F5                           ; $45ED: $CA $F5 $45

    ld a, $1A                                     ; $45F0: $3E $1A
    call Call_000_1360                            ; $45F2: $CD $60 $13

Jump_002_45F5:
    jp Jump_002_4609                              ; $45F5: $C3 $09 $46


Jump_002_45F8:
    call Call_000_2CA9                            ; $45F8: $CD $A9 $2C
    jp nc, Jump_002_4609                          ; $45FB: $D2 $09 $46

    call Call_000_2DB6                            ; $45FE: $CD $B6 $2D
    ld hl, $005D                                  ; $4601: $21 $5D $00
    add hl, bc                                    ; $4604: $09
    ld [hl], $00                                  ; $4605: $36 $00
    jr jr_002_460C                                ; $4607: $18 $03

Jump_002_4609:
    jp Jump_000_2E25                              ; $4609: $C3 $25 $2E


Jump_002_460C:
jr_002_460C:
    ret                                           ; $460C: $C9


    ld hl, $0040                                  ; $460D: $21 $40 $00
    call Call_000_30B0                            ; $4610: $CD $B0 $30
    call Call_000_2EE0                            ; $4613: $CD $E0 $2E
    call Call_000_3517                            ; $4616: $CD $17 $35
    jp c, Jump_002_4653                           ; $4619: $DA $53 $46

    ld hl, $0018                                  ; $461C: $21 $18 $00
    add hl, de                                    ; $461F: $19
    ld a, [hl]                                    ; $4620: $7E
    cp $00                                        ; $4621: $FE $00
    jp z, Jump_002_4631                           ; $4623: $CA $31 $46

    ld hl, $0045                                  ; $4626: $21 $45 $00
    add hl, bc                                    ; $4629: $09
    cp [hl]                                       ; $462A: $BE
    jp z, Jump_002_463F                           ; $462B: $CA $3F $46

    jp Jump_002_4650                              ; $462E: $C3 $50 $46


Jump_002_4631:
    call Call_000_2CA2                            ; $4631: $CD $A2 $2C
    jp z, Jump_002_463C                           ; $4634: $CA $3C $46

    ld a, $09                                     ; $4637: $3E $09
    call Call_000_1360                            ; $4639: $CD $60 $13

Jump_002_463C:
    jp Jump_002_4650                              ; $463C: $C3 $50 $46


Jump_002_463F:
    call Call_000_2CA9                            ; $463F: $CD $A9 $2C
    jp nc, Jump_002_4650                          ; $4642: $D2 $50 $46

    call Call_000_2DB6                            ; $4645: $CD $B6 $2D
    ld hl, $005D                                  ; $4648: $21 $5D $00
    add hl, bc                                    ; $464B: $09
    ld [hl], $00                                  ; $464C: $36 $00
    jr jr_002_4653                                ; $464E: $18 $03

Jump_002_4650:
    jp Jump_000_2E25                              ; $4650: $C3 $25 $2E


Jump_002_4653:
jr_002_4653:
    ret                                           ; $4653: $C9


    call Call_000_2EE0                            ; $4654: $CD $E0 $2E
    call Call_000_3517                            ; $4657: $CD $17 $35
    jp c, Jump_002_46B9                           ; $465A: $DA $B9 $46

    ld hl, $0018                                  ; $465D: $21 $18 $00
    add hl, de                                    ; $4660: $19
    ld a, [hl]                                    ; $4661: $7E
    cp $00                                        ; $4662: $FE $00
    jp z, Jump_002_4672                           ; $4664: $CA $72 $46

    ld hl, $0045                                  ; $4667: $21 $45 $00
    add hl, bc                                    ; $466A: $09
    cp [hl]                                       ; $466B: $BE
    jp z, Jump_002_4687                           ; $466C: $CA $87 $46

    jp Jump_002_46B6                              ; $466F: $C3 $B6 $46


Jump_002_4672:
    call Call_000_2CA2                            ; $4672: $CD $A2 $2C
    jp z, Jump_002_46B6                           ; $4675: $CA $B6 $46

    call Call_000_2641                            ; $4678: $CD $41 $26
    jp nz, Jump_002_46B6                          ; $467B: $C2 $B6 $46

    ld hl, $FC00                                  ; $467E: $21 $00 $FC
    call Call_000_2F42                            ; $4681: $CD $42 $2F
    jp Jump_002_46B6                              ; $4684: $C3 $B6 $46


Jump_002_4687:
    call Call_000_2CA9                            ; $4687: $CD $A9 $2C
    jp nc, Jump_002_46B6                          ; $468A: $D2 $B6 $46

    ld hl, $002E                                  ; $468D: $21 $2E $00
    add hl, bc                                    ; $4690: $09
    ld a, [hl]                                    ; $4691: $7E
    cp $02                                        ; $4692: $FE $02
    jr z, jr_002_46A4                             ; $4694: $28 $0E

    cp $06                                        ; $4696: $FE $06
    jr z, jr_002_46A4                             ; $4698: $28 $0A

    ld hl, $002F                                  ; $469A: $21 $2F $00
    add hl, bc                                    ; $469D: $09
    ld a, [hl]                                    ; $469E: $7E
    xor $01                                       ; $469F: $EE $01
    ld [hl], a                                    ; $46A1: $77
    jr jr_002_46AC                                ; $46A2: $18 $08

jr_002_46A4:
    ld hl, $002F                                  ; $46A4: $21 $2F $00
    add hl, bc                                    ; $46A7: $09
    ld a, [hl]                                    ; $46A8: $7E
    xor $02                                       ; $46A9: $EE $02
    ld [hl], a                                    ; $46AB: $77

jr_002_46AC:
    call Call_000_2142                            ; $46AC: $CD $42 $21
    ld a, $28                                     ; $46AF: $3E $28
    call Call_000_2E6E                            ; $46B1: $CD $6E $2E
    jr jr_002_46B9                                ; $46B4: $18 $03

Jump_002_46B6:
    jp Jump_000_2E25                              ; $46B6: $C3 $25 $2E


Jump_002_46B9:
jr_002_46B9:
    ret                                           ; $46B9: $C9


    call Call_000_2EE0                            ; $46BA: $CD $E0 $2E
    call Call_000_3517                            ; $46BD: $CD $17 $35
    jp c, Jump_002_4728                           ; $46C0: $DA $28 $47

    ld hl, $0018                                  ; $46C3: $21 $18 $00
    add hl, de                                    ; $46C6: $19
    ld a, [hl]                                    ; $46C7: $7E
    cp $00                                        ; $46C8: $FE $00
    jp z, Jump_002_46D5                           ; $46CA: $CA $D5 $46

    cp $04                                        ; $46CD: $FE $04
    jp z, Jump_002_46FF                           ; $46CF: $CA $FF $46

    jp Jump_002_4725                              ; $46D2: $C3 $25 $47


Jump_002_46D5:
    ld hl, $0060                                  ; $46D5: $21 $60 $00
    call Call_000_30FF                            ; $46D8: $CD $FF $30
    jp nc, Jump_002_4725                          ; $46DB: $D2 $25 $47

    ld hl, $002F                                  ; $46DE: $21 $2F $00
    add hl, bc                                    ; $46E1: $09
    bit 1, [hl]                                   ; $46E2: $CB $4E
    jr z, jr_002_46F5                             ; $46E4: $28 $0F

    ld a, $04                                     ; $46E6: $3E $04
    ld h, $07                                     ; $46E8: $26 $07
    call Call_000_2CBA                            ; $46EA: $CD $BA $2C
    ld a, $08                                     ; $46ED: $3E $08
    call Call_000_3963                            ; $46EF: $CD $63 $39
    jp Jump_002_4728                              ; $46F2: $C3 $28 $47


jr_002_46F5:
    ld a, $04                                     ; $46F5: $3E $04
    ld h, $00                                     ; $46F7: $26 $00
    call Call_000_2CBA                            ; $46F9: $CD $BA $2C
    jp Jump_002_4728                              ; $46FC: $C3 $28 $47


Jump_002_46FF:
    call Call_000_2CA9                            ; $46FF: $CD $A9 $2C
    jp nc, Jump_002_4725                          ; $4702: $D2 $25 $47

    ld hl, $009C                                  ; $4705: $21 $9C $00
    add hl, bc                                    ; $4708: $09
    ld a, [hl]                                    ; $4709: $7E
    or a                                          ; $470A: $B7
    jr nz, jr_002_4712                            ; $470B: $20 $05

    call Call_000_2DB6                            ; $470D: $CD $B6 $2D
    jr jr_002_4728                                ; $4710: $18 $16

jr_002_4712:
    ld a, $4C                                     ; $4712: $3E $4C
    call Call_000_32E2                            ; $4714: $CD $E2 $32
    ld hl, $0021                                  ; $4717: $21 $21 $00
    add hl, bc                                    ; $471A: $09
    set 7, [hl]                                   ; $471B: $CB $FE
    ld hl, $009C                                  ; $471D: $21 $9C $00
    add hl, bc                                    ; $4720: $09
    ld [hl], $00                                  ; $4721: $36 $00
    jr jr_002_4728                                ; $4723: $18 $03

Jump_002_4725:
    jp Jump_000_2E25                              ; $4725: $C3 $25 $2E


Jump_002_4728:
jr_002_4728:
    ret                                           ; $4728: $C9


    call Call_000_2EE0                            ; $4729: $CD $E0 $2E
    call Call_000_3517                            ; $472C: $CD $17 $35
    jp c, Jump_002_4778                           ; $472F: $DA $78 $47

    ld hl, $0018                                  ; $4732: $21 $18 $00
    add hl, de                                    ; $4735: $19
    ld a, [hl]                                    ; $4736: $7E
    cp $00                                        ; $4737: $FE $00
    jr z, jr_002_4746                             ; $4739: $28 $0B

    cp $04                                        ; $473B: $FE $04
    jr z, jr_002_475B                             ; $473D: $28 $1C

    cp $08                                        ; $473F: $FE $08
    jr z, jr_002_476A                             ; $4741: $28 $27

    jp Jump_002_4775                              ; $4743: $C3 $75 $47


jr_002_4746:
    call Call_000_2CA9                            ; $4746: $CD $A9 $2C
    jp nc, Jump_002_4775                          ; $4749: $D2 $75 $47

    inc hl                                        ; $474C: $23
    ld [hl], $07                                  ; $474D: $36 $07
    ld a, $07                                     ; $474F: $3E $07
    call Call_000_3963                            ; $4751: $CD $63 $39
    ld a, $0E                                     ; $4754: $3E $0E
    call Call_000_1360                            ; $4756: $CD $60 $13
    jr jr_002_4775                                ; $4759: $18 $1A

jr_002_475B:
    call Call_000_2CA9                            ; $475B: $CD $A9 $2C
    jp nc, Jump_002_4775                          ; $475E: $D2 $75 $47

    inc hl                                        ; $4761: $23
    ld [hl], $05                                  ; $4762: $36 $05
    xor a                                         ; $4764: $AF
    ld [$C2AF], a                                 ; $4765: $EA $AF $C2
    jr jr_002_4775                                ; $4768: $18 $0B

jr_002_476A:
    call Call_000_2CA9                            ; $476A: $CD $A9 $2C
    jp nc, Jump_002_4775                          ; $476D: $D2 $75 $47

    call Call_000_2DB6                            ; $4770: $CD $B6 $2D
    jr jr_002_4778                                ; $4773: $18 $03

Jump_002_4775:
jr_002_4775:
    jp Jump_000_2E25                              ; $4775: $C3 $25 $2E


Jump_002_4778:
jr_002_4778:
    ret                                           ; $4778: $C9


    call Call_000_2EE0                            ; $4779: $CD $E0 $2E
    call Call_000_3517                            ; $477C: $CD $17 $35
    jp c, Jump_002_47B5                           ; $477F: $DA $B5 $47

    ld hl, $0018                                  ; $4782: $21 $18 $00
    add hl, de                                    ; $4785: $19
    ld a, [hl]                                    ; $4786: $7E
    cp $00                                        ; $4787: $FE $00
    jp z, Jump_002_4797                           ; $4789: $CA $97 $47

    ld hl, $0045                                  ; $478C: $21 $45 $00
    add hl, bc                                    ; $478F: $09
    cp [hl]                                       ; $4790: $BE
    jp z, Jump_002_47A7                           ; $4791: $CA $A7 $47

    jp Jump_002_47B2                              ; $4794: $C3 $B2 $47


Jump_002_4797:
    call Call_000_2CA9                            ; $4797: $CD $A9 $2C
    jp nc, Jump_002_47B2                          ; $479A: $D2 $B2 $47

    ld a, $02                                     ; $479D: $3E $02
    ld hl, $001D                                  ; $479F: $21 $1D $00
    add hl, de                                    ; $47A2: $19
    ld [hl], a                                    ; $47A3: $77
    jp Jump_002_47B2                              ; $47A4: $C3 $B2 $47


Jump_002_47A7:
    call Call_000_2CA9                            ; $47A7: $CD $A9 $2C
    jp nc, Jump_002_47B2                          ; $47AA: $D2 $B2 $47

    call Call_000_2DB6                            ; $47AD: $CD $B6 $2D
    jr jr_002_47B5                                ; $47B0: $18 $03

Jump_002_47B2:
    jp Jump_000_2E25                              ; $47B2: $C3 $25 $2E


Jump_002_47B5:
jr_002_47B5:
    ret                                           ; $47B5: $C9


    call Call_000_2EE0                            ; $47B6: $CD $E0 $2E
    call Call_000_3517                            ; $47B9: $CD $17 $35
    jp c, Jump_002_47FF                           ; $47BC: $DA $FF $47

    ld hl, $0018                                  ; $47BF: $21 $18 $00
    add hl, de                                    ; $47C2: $19
    ld a, [hl]                                    ; $47C3: $7E
    cp $04                                        ; $47C4: $FE $04
    jp z, Jump_002_47D8                           ; $47C6: $CA $D8 $47

    call Call_000_2CA2                            ; $47C9: $CD $A2 $2C
    jp z, Jump_002_47D5                           ; $47CC: $CA $D5 $47

    ld hl, $0021                                  ; $47CF: $21 $21 $00
    add hl, bc                                    ; $47D2: $09
    res 2, [hl]                                   ; $47D3: $CB $96

Jump_002_47D5:
    jp Jump_002_47FC                              ; $47D5: $C3 $FC $47


Jump_002_47D8:
    call Call_000_2CA2                            ; $47D8: $CD $A2 $2C
    jp z, Jump_002_47F0                           ; $47DB: $CA $F0 $47

    ld hl, $002F                                  ; $47DE: $21 $2F $00
    add hl, bc                                    ; $47E1: $09
    bit 1, [hl]                                   ; $47E2: $CB $4E
    jr z, jr_002_47F0                             ; $47E4: $28 $0A

    ld a, $05                                     ; $47E6: $3E $05
    call Call_000_3963                            ; $47E8: $CD $63 $39
    ld a, $B5                                     ; $47EB: $3E $B5
    call Call_000_1360                            ; $47ED: $CD $60 $13

Jump_002_47F0:
jr_002_47F0:
    call Call_000_2CA9                            ; $47F0: $CD $A9 $2C
    jp nc, Jump_002_47FC                          ; $47F3: $D2 $FC $47

    call Call_002_4800                            ; $47F6: $CD $00 $48
    jp Jump_002_47FF                              ; $47F9: $C3 $FF $47


Jump_002_47FC:
    jp Jump_000_2E25                              ; $47FC: $C3 $25 $2E


Jump_002_47FF:
    ret                                           ; $47FF: $C9


Call_002_4800:
    call Call_000_3973                            ; $4800: $CD $73 $39
    jp z, Jump_002_483F                           ; $4803: $CA $3F $48

    ld hl, $006C                                  ; $4806: $21 $6C $00
    add hl, bc                                    ; $4809: $09
    ld [hl], $00                                  ; $480A: $36 $00
    inc hl                                        ; $480C: $23
    ld [hl], $FF                                  ; $480D: $36 $FF
    ld hl, $006E                                  ; $480F: $21 $6E $00
    add hl, bc                                    ; $4812: $09
    ld [hl], $00                                  ; $4813: $36 $00
    ld hl, $0020                                  ; $4815: $21 $20 $00
    add hl, bc                                    ; $4818: $09
    res 2, [hl]                                   ; $4819: $CB $96
    res 3, [hl]                                   ; $481B: $CB $9E
    res 4, [hl]                                   ; $481D: $CB $A6
    res 5, [hl]                                   ; $481F: $CB $AE
    inc hl                                        ; $4821: $23
    set 2, [hl]                                   ; $4822: $CB $D6
    res 4, [hl]                                   ; $4824: $CB $A6
    res 6, [hl]                                   ; $4826: $CB $B6
    set 7, [hl]                                   ; $4828: $CB $FE
    ld hl, $009C                                  ; $482A: $21 $9C $00
    add hl, bc                                    ; $482D: $09
    ld [hl], $00                                  ; $482E: $36 $00
    ld a, $1E                                     ; $4830: $3E $1E
    call Call_000_2E6E                            ; $4832: $CD $6E $2E
    ld hl, $001C                                  ; $4835: $21 $1C $00
    add hl, de                                    ; $4838: $19
    ld [hl], $FF                                  ; $4839: $36 $FF
    inc hl                                        ; $483B: $23
    ld [hl], $FF                                  ; $483C: $36 $FF
    ret                                           ; $483E: $C9


Jump_002_483F:
    call Call_000_2DB6                            ; $483F: $CD $B6 $2D
    ret                                           ; $4842: $C9


    call Call_000_2EE0                            ; $4843: $CD $E0 $2E
    call Call_000_3517                            ; $4846: $CD $17 $35
    jp c, Jump_002_48D9                           ; $4849: $DA $D9 $48

    ld hl, $0021                                  ; $484C: $21 $21 $00
    add hl, bc                                    ; $484F: $09
    bit 7, [hl]                                   ; $4850: $CB $7E
    jp z, Jump_002_488D                           ; $4852: $CA $8D $48

    ld hl, $01A9                                  ; $4855: $21 $A9 $01
    add hl, de                                    ; $4858: $19
    ld a, [hl]                                    ; $4859: $7E
    or a                                          ; $485A: $B7
    jp z, Jump_002_48D6                           ; $485B: $CA $D6 $48

    ld hl, $001C                                  ; $485E: $21 $1C $00
    add hl, de                                    ; $4861: $19
    ld [hl], $00                                  ; $4862: $36 $00
    inc hl                                        ; $4864: $23
    ld [hl], $0A                                  ; $4865: $36 $0A
    call Call_000_2E25                            ; $4867: $CD $25 $2E
    ld a, $01                                     ; $486A: $3E $01
    call Call_000_1360                            ; $486C: $CD $60 $13
    ld hl, $0006                                  ; $486F: $21 $06 $00
    add hl, de                                    ; $4872: $19
    ld a, $08                                     ; $4873: $3E $08

jr_002_4875:
    push af                                       ; $4875: $F5
    dec [hl]                                      ; $4876: $35
    dec [hl]                                      ; $4877: $35
    call Call_000_0417                            ; $4878: $CD $17 $04
    inc [hl]                                      ; $487B: $34
    inc [hl]                                      ; $487C: $34
    call Call_000_0417                            ; $487D: $CD $17 $04
    pop af                                        ; $4880: $F1
    dec a                                         ; $4881: $3D
    jr nz, jr_002_4875                            ; $4882: $20 $F1

    ld hl, $0021                                  ; $4884: $21 $21 $00
    add hl, bc                                    ; $4887: $09
    res 7, [hl]                                   ; $4888: $CB $BE
    jp Jump_002_48D9                              ; $488A: $C3 $D9 $48


Jump_002_488D:
    ld hl, $009C                                  ; $488D: $21 $9C $00
    add hl, bc                                    ; $4890: $09
    ld a, [hl]                                    ; $4891: $7E
    cp $02                                        ; $4892: $FE $02
    jr z, jr_002_4899                             ; $4894: $28 $03

    call Call_002_48DA                            ; $4896: $CD $DA $48

jr_002_4899:
    ld hl, $006D                                  ; $4899: $21 $6D $00
    add hl, bc                                    ; $489C: $09
    ld a, [hl]                                    ; $489D: $7E
    or a                                          ; $489E: $B7
    jp z, Jump_002_48B0                           ; $489F: $CA $B0 $48

    call Call_000_2CA9                            ; $48A2: $CD $A9 $2C
    jp nc, Jump_002_48D6                          ; $48A5: $D2 $D6 $48

    ld a, $01                                     ; $48A8: $3E $01
    call Call_000_1360                            ; $48AA: $CD $60 $13
    jp Jump_002_48D6                              ; $48AD: $C3 $D6 $48


Jump_002_48B0:
    ld hl, $0060                                  ; $48B0: $21 $60 $00
    add hl, bc                                    ; $48B3: $09
    ld a, [hl]                                    ; $48B4: $7E
    or a                                          ; $48B5: $B7
    jr z, jr_002_48CF                             ; $48B6: $28 $17

    call Call_000_2641                            ; $48B8: $CD $41 $26
    jr nz, jr_002_48C2                            ; $48BB: $20 $05

    call Call_000_2DB6                            ; $48BD: $CD $B6 $2D
    jr jr_002_48D9                                ; $48C0: $18 $17

jr_002_48C2:
    ld a, $28                                     ; $48C2: $3E $28
    call Call_000_2E6E                            ; $48C4: $CD $6E $2E
    ld hl, $009C                                  ; $48C7: $21 $9C $00
    add hl, bc                                    ; $48CA: $09
    ld [hl], $00                                  ; $48CB: $36 $00
    jr jr_002_48D9                                ; $48CD: $18 $0A

jr_002_48CF:
    ld a, $5E                                     ; $48CF: $3E $5E
    call Call_000_2E6E                            ; $48D1: $CD $6E $2E
    jr jr_002_48D9                                ; $48D4: $18 $03

Jump_002_48D6:
    jp Jump_000_2E25                              ; $48D6: $C3 $25 $2E


Jump_002_48D9:
jr_002_48D9:
    ret                                           ; $48D9: $C9


Call_002_48DA:
    ld a, [$C2DD]                                 ; $48DA: $FA $DD $C2
    or a                                          ; $48DD: $B7
    jp nz, Jump_002_48EA                          ; $48DE: $C2 $EA $48

    xor a                                         ; $48E1: $AF
    ld hl, $006D                                  ; $48E2: $21 $6D $00
    add hl, bc                                    ; $48E5: $09
    ld [hl], a                                    ; $48E6: $77
    jp Jump_002_490C                              ; $48E7: $C3 $0C $49


Jump_002_48EA:
    ld hl, $0053                                  ; $48EA: $21 $53 $00
    add hl, bc                                    ; $48ED: $09
    ld a, [hl]                                    ; $48EE: $7E
    and $7F                                       ; $48EF: $E6 $7F
    jp nz, Jump_002_4900                          ; $48F1: $C2 $00 $49

    ld hl, $006D                                  ; $48F4: $21 $6D $00
    add hl, bc                                    ; $48F7: $09
    dec [hl]                                      ; $48F8: $35
    jp nc, Jump_002_48FD                          ; $48F9: $D2 $FD $48

    xor a                                         ; $48FC: $AF

Jump_002_48FD:
    jp Jump_002_490C                              ; $48FD: $C3 $0C $49


Jump_002_4900:
    ld hl, $006D                                  ; $4900: $21 $6D $00
    add hl, bc                                    ; $4903: $09
    ld a, [hl]                                    ; $4904: $7E
    sub $08                                       ; $4905: $D6 $08
    jp nc, Jump_002_490B                          ; $4907: $D2 $0B $49

    xor a                                         ; $490A: $AF

Jump_002_490B:
    ld [hl], a                                    ; $490B: $77

Jump_002_490C:
    ret                                           ; $490C: $C9


    call Call_000_2EE0                            ; $490D: $CD $E0 $2E
    call Call_000_3517                            ; $4910: $CD $17 $35
    jp c, Jump_002_4990                           ; $4913: $DA $90 $49

    ld hl, $0018                                  ; $4916: $21 $18 $00
    add hl, de                                    ; $4919: $19
    ld a, [hl]                                    ; $491A: $7E
    cp $00                                        ; $491B: $FE $00
    jr z, jr_002_492F                             ; $491D: $28 $10

    ld hl, $009C                                  ; $491F: $21 $9C $00
    add hl, bc                                    ; $4922: $09
    cp [hl]                                       ; $4923: $BE
    jr z, jr_002_4970                             ; $4924: $28 $4A

    ld hl, $0045                                  ; $4926: $21 $45 $00
    add hl, bc                                    ; $4929: $09
    cp [hl]                                       ; $492A: $BE
    jr z, jr_002_4985                             ; $492B: $28 $58

    jr jr_002_498D                                ; $492D: $18 $5E

jr_002_492F:
    call Call_000_2CA9                            ; $492F: $CD $A9 $2C
    jp nc, Jump_002_498D                          ; $4932: $D2 $8D $49

    ld hl, $009C                                  ; $4935: $21 $9C $00
    add hl, bc                                    ; $4938: $09
    ld [hl], $00                                  ; $4939: $36 $00
    ld hl, $002E                                  ; $493B: $21 $2E $00
    add hl, bc                                    ; $493E: $09
    ld a, [hl]                                    ; $493F: $7E
    cp $12                                        ; $4940: $FE $12
    jr z, jr_002_494E                             ; $4942: $28 $0A

    ld hl, $002F                                  ; $4944: $21 $2F $00
    add hl, bc                                    ; $4947: $09
    ld a, [hl]                                    ; $4948: $7E
    cp $00                                        ; $4949: $FE $00
    jp nz, Jump_002_498D                          ; $494B: $C2 $8D $49

jr_002_494E:
    ld hl, $0045                                  ; $494E: $21 $45 $00
    add hl, bc                                    ; $4951: $09
    ld a, [hl]                                    ; $4952: $7E
    sub $08                                       ; $4953: $D6 $08
    ld hl, $009C                                  ; $4955: $21 $9C $00
    add hl, bc                                    ; $4958: $09
    ld [hl], a                                    ; $4959: $77
    ld hl, $0002                                  ; $495A: $21 $02 $00
    add hl, de                                    ; $495D: $19
    bit 5, [hl]                                   ; $495E: $CB $6E
    jr nz, jr_002_496D                            ; $4960: $20 $0B

    ld hl, $0045                                  ; $4962: $21 $45 $00
    add hl, bc                                    ; $4965: $09
    ld a, [hl]                                    ; $4966: $7E
    sub $04                                       ; $4967: $D6 $04
    ld [hl], a                                    ; $4969: $77
    jp Jump_002_498D                              ; $496A: $C3 $8D $49


jr_002_496D:
    jp Jump_002_498D                              ; $496D: $C3 $8D $49


jr_002_4970:
    call Call_000_2CA9                            ; $4970: $CD $A9 $2C
    jp nc, Jump_002_498D                          ; $4973: $D2 $8D $49

    ld hl, $0045                                  ; $4976: $21 $45 $00
    add hl, bc                                    ; $4979: $09
    ld a, [hl]                                    ; $497A: $7E
    sub $04                                       ; $497B: $D6 $04
    ld hl, $0014                                  ; $497D: $21 $14 $00
    add hl, de                                    ; $4980: $19
    ld [hl], a                                    ; $4981: $77
    jp Jump_002_498D                              ; $4982: $C3 $8D $49


jr_002_4985:
    call Call_000_2CA9                            ; $4985: $CD $A9 $2C
    jp nc, Jump_002_498D                          ; $4988: $D2 $8D $49

    jr jr_002_4990                                ; $498B: $18 $03

Jump_002_498D:
jr_002_498D:
    jp Jump_000_2E25                              ; $498D: $C3 $25 $2E


Jump_002_4990:
jr_002_4990:
    ret                                           ; $4990: $C9


    call Call_000_2EE0                            ; $4991: $CD $E0 $2E
    call Call_000_3517                            ; $4994: $CD $17 $35
    jp c, Jump_002_49B1                           ; $4997: $DA $B1 $49

    ld hl, $0018                                  ; $499A: $21 $18 $00
    add hl, de                                    ; $499D: $19
    ld a, [hl]                                    ; $499E: $7E
    ld hl, $0045                                  ; $499F: $21 $45 $00
    add hl, bc                                    ; $49A2: $09
    cp [hl]                                       ; $49A3: $BE
    jr nz, jr_002_49AE                            ; $49A4: $20 $08

    call Call_000_2CA9                            ; $49A6: $CD $A9 $2C
    jp nc, Jump_002_49AE                          ; $49A9: $D2 $AE $49

    jr jr_002_49B1                                ; $49AC: $18 $03

Jump_002_49AE:
jr_002_49AE:
    jp Jump_000_2E25                              ; $49AE: $C3 $25 $2E


Jump_002_49B1:
jr_002_49B1:
    ret                                           ; $49B1: $C9


    call Call_000_2EE0                            ; $49B2: $CD $E0 $2E
    call Call_000_3517                            ; $49B5: $CD $17 $35
    jp c, Jump_002_4A15                           ; $49B8: $DA $15 $4A

    ld hl, $0018                                  ; $49BB: $21 $18 $00
    add hl, de                                    ; $49BE: $19
    ld a, [hl]                                    ; $49BF: $7E
    cp $08                                        ; $49C0: $FE $08
    jp z, Jump_002_49CD                           ; $49C2: $CA $CD $49

    cp $10                                        ; $49C5: $FE $10
    jp z, Jump_002_4A07                           ; $49C7: $CA $07 $4A

    jp Jump_002_4A12                              ; $49CA: $C3 $12 $4A


Jump_002_49CD:
    call Call_000_2CA2                            ; $49CD: $CD $A2 $2C
    jp z, Jump_002_4A12                           ; $49D0: $CA $12 $4A

    ld hl, $002E                                  ; $49D3: $21 $2E $00
    add hl, bc                                    ; $49D6: $09
    ld a, [hl]                                    ; $49D7: $7E
    push de                                       ; $49D8: $D5
    ld hl, $49F3                                  ; $49D9: $21 $F3 $49
    ld d, $00                                     ; $49DC: $16 $00
    ld e, a                                       ; $49DE: $5F
    add hl, de                                    ; $49DF: $19
    ld a, [hl+]                                   ; $49E0: $2A
    ld d, a                                       ; $49E1: $57
    ld a, [hl]                                    ; $49E2: $7E
    ld e, a                                       ; $49E3: $5F
    push de                                       ; $49E4: $D5
    pop hl                                        ; $49E5: $E1
    pop de                                        ; $49E6: $D1
    call Call_000_33E0                            ; $49E7: $CD $E0 $33
    ld hl, $001D                                  ; $49EA: $21 $1D $00

jr_002_49ED:
    add hl, de                                    ; $49ED: $19
    ld [hl], $0C                                  ; $49EE: $36 $0C
    jp Jump_002_4A12                              ; $49F0: $C3 $12 $4A


jr_002_49F3:
    jr jr_002_49ED                                ; $49F3: $18 $F8

jr_002_49F5:
    jr @-$06                                      ; $49F5: $18 $F8

jr_002_49F7:
    jr @-$06                                      ; $49F7: $18 $F8

jr_002_49F9:
    jr jr_002_49F3                                ; $49F9: $18 $F8

jr_002_49FB:
    jr jr_002_49F5                                ; $49FB: $18 $F8

jr_002_49FD:
    jr jr_002_49F7                                ; $49FD: $18 $F8

jr_002_49FF:
    jr jr_002_49F9                                ; $49FF: $18 $F8

    jr jr_002_49FB                                ; $4A01: $18 $F8

    jr jr_002_49FD                                ; $4A03: $18 $F8

    jr jr_002_49FF                                ; $4A05: $18 $F8

Jump_002_4A07:
    call Call_000_2CA9                            ; $4A07: $CD $A9 $2C
    jp nc, Jump_002_4A12                          ; $4A0A: $D2 $12 $4A

    call Call_000_2DB6                            ; $4A0D: $CD $B6 $2D
    jr jr_002_4A15                                ; $4A10: $18 $03

Jump_002_4A12:
    jp Jump_000_2E25                              ; $4A12: $C3 $25 $2E


Jump_002_4A15:
jr_002_4A15:
    ret                                           ; $4A15: $C9


    ld hl, $002A                                  ; $4A16: $21 $2A $00
    add hl, de                                    ; $4A19: $19
    dec [hl]                                      ; $4A1A: $35
    jp z, Jump_002_4A22                           ; $4A1B: $CA $22 $4A

    call Call_000_2E25                            ; $4A1E: $CD $25 $2E
    ret                                           ; $4A21: $C9


Jump_002_4A22:
    call Call_000_27F5                            ; $4A22: $CD $F5 $27
    ret                                           ; $4A25: $C9


    ld hl, $FC3C                                  ; $4A26: $21 $3C $FC
    add hl, bc                                    ; $4A29: $09
    ld a, [hl]                                    ; $4A2A: $7E
    cp $2A                                        ; $4A2B: $FE $2A
    jr nz, jr_002_4A33                            ; $4A2D: $20 $04

    call Call_000_2E25                            ; $4A2F: $CD $25 $2E
    ret                                           ; $4A32: $C9


jr_002_4A33:
    call Call_000_27F5                            ; $4A33: $CD $F5 $27
    ret                                           ; $4A36: $C9


    ld hl, $0000                                  ; $4A37: $21 $00 $00
    call Call_000_26F3                            ; $4A3A: $CD $F3 $26
    jr c, jr_002_4A4C                             ; $4A3D: $38 $0D

    call Call_000_2E25                            ; $4A3F: $CD $25 $2E
    ld hl, $0000                                  ; $4A42: $21 $00 $00
    call Call_000_315D                            ; $4A45: $CD $5D $31
    jp c, Jump_002_4A4C                           ; $4A48: $DA $4C $4A

    ret                                           ; $4A4B: $C9


Jump_002_4A4C:
jr_002_4A4C:
    call Call_000_27F5                            ; $4A4C: $CD $F5 $27
    ret                                           ; $4A4F: $C9


    push bc                                       ; $4A50: $C5
    push de                                       ; $4A51: $D5
    ld a, [$C2C6]                                 ; $4A52: $FA $C6 $C2
    and $F0                                       ; $4A55: $E6 $F0
    cp $20                                        ; $4A57: $FE $20
    jr nz, jr_002_4A7F                            ; $4A59: $20 $24

    ld hl, $0021                                  ; $4A5B: $21 $21 $00
    add hl, bc                                    ; $4A5E: $09
    bit 0, [hl]                                   ; $4A5F: $CB $46
    jp nz, Jump_002_4FF5                          ; $4A61: $C2 $F5 $4F

    ld hl, $003F                                  ; $4A64: $21 $3F $00
    add hl, bc                                    ; $4A67: $09
    ld a, [hl]                                    ; $4A68: $7E
    or a                                          ; $4A69: $B7
    jp nz, Jump_002_4F63                          ; $4A6A: $C2 $63 $4F

    ld hl, $0053                                  ; $4A6D: $21 $53 $00
    add hl, bc                                    ; $4A70: $09
    ld a, [hl]                                    ; $4A71: $7E
    bit 5, a                                      ; $4A72: $CB $6F
    jp nz, Jump_002_4EE0                          ; $4A74: $C2 $E0 $4E

    bit 4, a                                      ; $4A77: $CB $67
    jp nz, Jump_002_4EAE                          ; $4A79: $C2 $AE $4E

    jp Jump_002_4C45                              ; $4A7C: $C3 $45 $4C


jr_002_4A7F:
    call Call_000_3583                            ; $4A7F: $CD $83 $35
    jp nc, Jump_002_4A8F                          ; $4A82: $D2 $8F $4A

    cp $00                                        ; $4A85: $FE $00
    jp z, Jump_002_4F77                           ; $4A87: $CA $77 $4F

    cp $01                                        ; $4A8A: $FE $01
    jp z, Jump_002_4FD0                           ; $4A8C: $CA $D0 $4F

Jump_002_4A8F:
    ld a, [$C001]                                 ; $4A8F: $FA $01 $C0
    bit 4, a                                      ; $4A92: $CB $67
    jr nz, jr_002_4AB7                            ; $4A94: $20 $21

    ld hl, $0052                                  ; $4A96: $21 $52 $00
    add hl, bc                                    ; $4A99: $09
    ld a, [hl]                                    ; $4A9A: $7E
    bit 1, a                                      ; $4A9B: $CB $4F
    jr nz, jr_002_4AA5                            ; $4A9D: $20 $06

    bit 0, a                                      ; $4A9F: $CB $47
    jr nz, jr_002_4AAF                            ; $4AA1: $20 $0C

    jr jr_002_4AE1                                ; $4AA3: $18 $3C

jr_002_4AA5:
    ld hl, $0002                                  ; $4AA5: $21 $02 $00
    add hl, de                                    ; $4AA8: $19
    bit 5, [hl]                                   ; $4AA9: $CB $6E
    jr nz, jr_002_4AB7                            ; $4AAB: $20 $0A

    jr jr_002_4AE1                                ; $4AAD: $18 $32

jr_002_4AAF:
    ld hl, $0002                                  ; $4AAF: $21 $02 $00
    add hl, de                                    ; $4AB2: $19
    bit 5, [hl]                                   ; $4AB3: $CB $6E
    jr nz, jr_002_4AE1                            ; $4AB5: $20 $2A

jr_002_4AB7:
    ld hl, $003C                                  ; $4AB7: $21 $3C $00
    add hl, bc                                    ; $4ABA: $09
    ld a, [hl]                                    ; $4ABB: $7E
    cp $0A                                        ; $4ABC: $FE $0A
    jr z, jr_002_4ACA                             ; $4ABE: $28 $0A

    cp $0E                                        ; $4AC0: $FE $0E
    jr z, jr_002_4ACA                             ; $4AC2: $28 $06

    cp $0C                                        ; $4AC4: $FE $0C
    jr z, jr_002_4ACA                             ; $4AC6: $28 $02

    jr jr_002_4AE1                                ; $4AC8: $18 $17

jr_002_4ACA:
    call Call_000_2641                            ; $4ACA: $CD $41 $26
    jr z, jr_002_4AE1                             ; $4ACD: $28 $12

    ld hl, $007D                                  ; $4ACF: $21 $7D $00
    add hl, bc                                    ; $4AD2: $09
    bit 0, [hl]                                   ; $4AD3: $CB $46
    jp nz, Jump_002_4D48                          ; $4AD5: $C2 $48 $4D

    ld hl, $0087                                  ; $4AD8: $21 $87 $00
    add hl, bc                                    ; $4ADB: $09
    ld a, [hl]                                    ; $4ADC: $7E
    or a                                          ; $4ADD: $B7
    jp nz, Jump_002_4D48                          ; $4ADE: $C2 $48 $4D

jr_002_4AE1:
    ld hl, $0021                                  ; $4AE1: $21 $21 $00
    add hl, bc                                    ; $4AE4: $09
    bit 0, [hl]                                   ; $4AE5: $CB $46
    jp nz, Jump_002_4FF5                          ; $4AE7: $C2 $F5 $4F

    ld hl, $003F                                  ; $4AEA: $21 $3F $00
    add hl, bc                                    ; $4AED: $09
    ld a, [hl]                                    ; $4AEE: $7E
    or a                                          ; $4AEF: $B7
    jp nz, Jump_002_4F63                          ; $4AF0: $C2 $63 $4F

    ld hl, $0052                                  ; $4AF3: $21 $52 $00
    add hl, bc                                    ; $4AF6: $09
    ld a, [hl]                                    ; $4AF7: $7E
    bit 2, a                                      ; $4AF8: $CB $57
    jp nz, Jump_002_4CB6                          ; $4AFA: $C2 $B6 $4C

    bit 3, a                                      ; $4AFD: $CB $5F
    jp nz, Jump_002_4BBA                          ; $4AFF: $C2 $BA $4B

    bit 4, a                                      ; $4B02: $CB $67
    jp nz, Jump_002_4D97                          ; $4B04: $C2 $97 $4D

    bit 5, a                                      ; $4B07: $CB $6F
    jp nz, Jump_002_4D81                          ; $4B09: $C2 $81 $4D

    bit 6, a                                      ; $4B0C: $CB $77
    jp nz, Jump_002_4DAD                          ; $4B0E: $C2 $AD $4D

    bit 7, a                                      ; $4B11: $CB $7F
    jp nz, Jump_002_4DAD                          ; $4B13: $C2 $AD $4D

    ld hl, $0053                                  ; $4B16: $21 $53 $00
    add hl, bc                                    ; $4B19: $09
    bit 6, [hl]                                   ; $4B1A: $CB $76
    jp nz, Jump_002_4E6C                          ; $4B1C: $C2 $6C $4E

    bit 1, a                                      ; $4B1F: $CB $4F
    jp nz, Jump_002_4B75                          ; $4B21: $C2 $75 $4B

    bit 0, a                                      ; $4B24: $CB $47
    jp nz, Jump_002_4B81                          ; $4B26: $C2 $81 $4B

    ld a, [$C001]                                 ; $4B29: $FA $01 $C0
    bit 4, a                                      ; $4B2C: $CB $67
    jr z, jr_002_4B72                             ; $4B2E: $28 $42

    ld hl, $0020                                  ; $4B30: $21 $20 $00
    add hl, bc                                    ; $4B33: $09
    bit 7, [hl]                                   ; $4B34: $CB $7E
    jr nz, jr_002_4B72                            ; $4B36: $20 $3A

    ld hl, $002F                                  ; $4B38: $21 $2F $00
    add hl, bc                                    ; $4B3B: $09
    bit 1, [hl]                                   ; $4B3C: $CB $4E
    jr nz, jr_002_4B72                            ; $4B3E: $20 $32

    ld hl, $007D                                  ; $4B40: $21 $7D $00
    add hl, bc                                    ; $4B43: $09
    bit 0, [hl]                                   ; $4B44: $CB $46
    jr nz, jr_002_4B52                            ; $4B46: $20 $0A

    ld hl, $0087                                  ; $4B48: $21 $87 $00
    add hl, bc                                    ; $4B4B: $09
    ld a, [hl]                                    ; $4B4C: $7E
    or a                                          ; $4B4D: $B7
    jr nz, jr_002_4B52                            ; $4B4E: $20 $02

    jr jr_002_4B72                                ; $4B50: $18 $20

jr_002_4B52:
    ld hl, $0089                                  ; $4B52: $21 $89 $00
    add hl, bc                                    ; $4B55: $09
    bit 2, [hl]                                   ; $4B56: $CB $56
    jr nz, jr_002_4B60                            ; $4B58: $20 $06

    bit 3, [hl]                                   ; $4B5A: $CB $5E
    jr nz, jr_002_4B69                            ; $4B5C: $20 $0B

    jr jr_002_4B69                                ; $4B5E: $18 $09

jr_002_4B60:
    ld hl, $0021                                  ; $4B60: $21 $21 $00
    add hl, bc                                    ; $4B63: $09
    set 5, [hl]                                   ; $4B64: $CB $EE
    jp Jump_002_4D23                              ; $4B66: $C3 $23 $4D


jr_002_4B69:
    ld hl, $0021                                  ; $4B69: $21 $21 $00
    add hl, bc                                    ; $4B6C: $09
    res 5, [hl]                                   ; $4B6D: $CB $AE
    jp Jump_002_4D23                              ; $4B6F: $C3 $23 $4D


jr_002_4B72:
    jp Jump_002_4C45                              ; $4B72: $C3 $45 $4C


Jump_002_4B75:
    ld hl, $0002                                  ; $4B75: $21 $02 $00
    add hl, de                                    ; $4B78: $19
    bit 5, [hl]                                   ; $4B79: $CB $6E
    jp nz, Jump_002_4B8D                          ; $4B7B: $C2 $8D $4B

    jp Jump_002_4C5F                              ; $4B7E: $C3 $5F $4C


Jump_002_4B81:
    ld hl, $0002                                  ; $4B81: $21 $02 $00
    add hl, de                                    ; $4B84: $19
    bit 5, [hl]                                   ; $4B85: $CB $6E
    jp z, Jump_002_4B8D                           ; $4B87: $CA $8D $4B

    jp Jump_002_4C5F                              ; $4B8A: $C3 $5F $4C


Jump_002_4B8D:
    ld hl, $0021                                  ; $4B8D: $21 $21 $00
    add hl, bc                                    ; $4B90: $09
    res 5, [hl]                                   ; $4B91: $CB $AE
    ld hl, $002F                                  ; $4B93: $21 $2F $00
    add hl, bc                                    ; $4B96: $09
    bit 1, [hl]                                   ; $4B97: $CB $4E
    jp nz, Jump_002_4C93                          ; $4B99: $C2 $93 $4C

    ld hl, $3B94                                  ; $4B9C: $21 $94 $3B
    call Call_000_2B33                            ; $4B9F: $CD $33 $2B
    jp c, Jump_002_4E55                           ; $4BA2: $DA $55 $4E

    ld hl, $007D                                  ; $4BA5: $21 $7D $00
    add hl, bc                                    ; $4BA8: $09
    bit 0, [hl]                                   ; $4BA9: $CB $46
    jp nz, Jump_002_4D23                          ; $4BAB: $C2 $23 $4D

    ld hl, $0087                                  ; $4BAE: $21 $87 $00
    add hl, bc                                    ; $4BB1: $09
    ld a, [hl]                                    ; $4BB2: $7E
    or a                                          ; $4BB3: $B7
    jp nz, Jump_002_4D23                          ; $4BB4: $C2 $23 $4D

    jp Jump_002_4C93                              ; $4BB7: $C3 $93 $4C


Jump_002_4BBA:
    ld hl, $0065                                  ; $4BBA: $21 $65 $00
    add hl, bc                                    ; $4BBD: $09
    push af                                       ; $4BBE: $F5
    ld a, [hl]                                    ; $4BBF: $7E
    cp $00                                        ; $4BC0: $FE $00
    jr nz, jr_002_4BCD                            ; $4BC2: $20 $09

    pop af                                        ; $4BC4: $F1
    call Call_000_2C6F                            ; $4BC5: $CD $6F $2C
    jp c, Jump_002_4D60                           ; $4BC8: $DA $60 $4D

    jr jr_002_4BCE                                ; $4BCB: $18 $01

jr_002_4BCD:
    pop af                                        ; $4BCD: $F1

jr_002_4BCE:
    ld hl, $0021                                  ; $4BCE: $21 $21 $00
    add hl, bc                                    ; $4BD1: $09
    set 5, [hl]                                   ; $4BD2: $CB $EE
    bit 4, a                                      ; $4BD4: $CB $67
    jp nz, Jump_002_4DF1                          ; $4BD6: $C2 $F1 $4D

    bit 5, a                                      ; $4BD9: $CB $6F
    jp nz, Jump_002_4DD0                          ; $4BDB: $C2 $D0 $4D

    bit 6, a                                      ; $4BDE: $CB $77
    jp nz, Jump_002_4E05                          ; $4BE0: $C2 $05 $4E

    bit 7, a                                      ; $4BE3: $CB $7F
    jp nz, Jump_002_4E05                          ; $4BE5: $C2 $05 $4E

    ld hl, $0053                                  ; $4BE8: $21 $53 $00
    add hl, bc                                    ; $4BEB: $09
    bit 6, [hl]                                   ; $4BEC: $CB $76
    jp nz, Jump_002_4E6C                          ; $4BEE: $C2 $6C $4E

    bit 1, a                                      ; $4BF1: $CB $4F
    jp nz, Jump_002_4BFE                          ; $4BF3: $C2 $FE $4B

    bit 0, a                                      ; $4BF6: $CB $47
    jp nz, Jump_002_4C0A                          ; $4BF8: $C2 $0A $4C

    jp Jump_002_4C2D                              ; $4BFB: $C3 $2D $4C


Jump_002_4BFE:
    ld hl, $0002                                  ; $4BFE: $21 $02 $00
    add hl, de                                    ; $4C01: $19
    bit 5, [hl]                                   ; $4C02: $CB $6E
    jp nz, Jump_002_4C13                          ; $4C04: $C2 $13 $4C

    jp Jump_002_4C2D                              ; $4C07: $C3 $2D $4C


Jump_002_4C0A:
    ld hl, $0002                                  ; $4C0A: $21 $02 $00
    add hl, de                                    ; $4C0D: $19
    bit 5, [hl]                                   ; $4C0E: $CB $6E
    jp nz, Jump_002_4C2D                          ; $4C10: $C2 $2D $4C

Jump_002_4C13:
    ld hl, $002F                                  ; $4C13: $21 $2F $00
    add hl, bc                                    ; $4C16: $09
    bit 1, [hl]                                   ; $4C17: $CB $4E
    jr nz, jr_002_4C2D                            ; $4C19: $20 $12

    ld hl, $007D                                  ; $4C1B: $21 $7D $00
    add hl, bc                                    ; $4C1E: $09
    bit 0, [hl]                                   ; $4C1F: $CB $46
    jp nz, Jump_002_4D23                          ; $4C21: $C2 $23 $4D

    ld hl, $0087                                  ; $4C24: $21 $87 $00
    add hl, bc                                    ; $4C27: $09
    ld a, [hl]                                    ; $4C28: $7E
    or a                                          ; $4C29: $B7
    jp nz, Jump_002_4D23                          ; $4C2A: $C2 $23 $4D

Jump_002_4C2D:
jr_002_4C2D:
    ld hl, $003C                                  ; $4C2D: $21 $3C $00
    add hl, bc                                    ; $4C30: $09
    ld a, [hl]                                    ; $4C31: $7E
    cp $08                                        ; $4C32: $FE $08
    jp z, Jump_002_4FF5                           ; $4C34: $CA $F5 $4F

    ld a, $08                                     ; $4C37: $3E $08
    ld hl, $0021                                  ; $4C39: $21 $21 $00
    add hl, bc                                    ; $4C3C: $09
    res 3, [hl]                                   ; $4C3D: $CB $9E
    call Call_000_2E6E                            ; $4C3F: $CD $6E $2E
    jp Jump_002_4FF5                              ; $4C42: $C3 $F5 $4F


Jump_002_4C45:
    ld hl, $003C                                  ; $4C45: $21 $3C $00
    add hl, bc                                    ; $4C48: $09
    ld a, [hl]                                    ; $4C49: $7E
    cp $02                                        ; $4C4A: $FE $02
    jp z, Jump_002_4FF5                           ; $4C4C: $CA $F5 $4F

    ld a, $02                                     ; $4C4F: $3E $02
    ld hl, $0021                                  ; $4C51: $21 $21 $00
    add hl, bc                                    ; $4C54: $09
    res 3, [hl]                                   ; $4C55: $CB $9E
    res 5, [hl]                                   ; $4C57: $CB $AE
    call Call_000_2E6E                            ; $4C59: $CD $6E $2E
    jp Jump_002_4FF5                              ; $4C5C: $C3 $F5 $4F


Jump_002_4C5F:
    ld hl, $002F                                  ; $4C5F: $21 $2F $00
    add hl, bc                                    ; $4C62: $09
    bit 1, [hl]                                   ; $4C63: $CB $4E
    jr nz, jr_002_4C70                            ; $4C65: $20 $09

    ld hl, $3BA5                                  ; $4C67: $21 $A5 $3B
    call Call_000_2B33                            ; $4C6A: $CD $33 $2B
    jp c, Jump_002_4E34                           ; $4C6D: $DA $34 $4E

jr_002_4C70:
    ld hl, $003C                                  ; $4C70: $21 $3C $00
    add hl, bc                                    ; $4C73: $09
    ld a, [hl]                                    ; $4C74: $7E
    cp $04                                        ; $4C75: $FE $04
    jp z, Jump_002_4FF5                           ; $4C77: $CA $F5 $4F

    ld hl, $0021                                  ; $4C7A: $21 $21 $00
    add hl, bc                                    ; $4C7D: $09
    res 3, [hl]                                   ; $4C7E: $CB $9E
    res 5, [hl]                                   ; $4C80: $CB $AE
    ld a, $04                                     ; $4C82: $3E $04
    call Call_000_2E6E                            ; $4C84: $CD $6E $2E
    ld hl, $0075                                  ; $4C87: $21 $75 $00
    call Call_000_2A5F                            ; $4C8A: $CD $5F $2A
    call Call_000_2FEB                            ; $4C8D: $CD $EB $2F
    jp Jump_002_4FF5                              ; $4C90: $C3 $F5 $4F


Jump_002_4C93:
    ld hl, $003C                                  ; $4C93: $21 $3C $00
    add hl, bc                                    ; $4C96: $09
    ld a, [hl]                                    ; $4C97: $7E
    cp $06                                        ; $4C98: $FE $06
    jp z, Jump_002_4FF5                           ; $4C9A: $CA $F5 $4F

    ld hl, $0021                                  ; $4C9D: $21 $21 $00
    add hl, bc                                    ; $4CA0: $09
    res 3, [hl]                                   ; $4CA1: $CB $9E
    res 5, [hl]                                   ; $4CA3: $CB $AE
    ld a, $06                                     ; $4CA5: $3E $06
    call Call_000_2E6E                            ; $4CA7: $CD $6E $2E
    ld hl, $0077                                  ; $4CAA: $21 $77 $00
    call Call_000_2A5F                            ; $4CAD: $CD $5F $2A
    call Call_000_2FEB                            ; $4CB0: $CD $EB $2F
    jp Jump_002_4FF5                              ; $4CB3: $C3 $F5 $4F


Jump_002_4CB6:
    call Call_000_2C6F                            ; $4CB6: $CD $6F $2C
    jp nc, Jump_002_4CC6                          ; $4CB9: $D2 $C6 $4C

    ld hl, $0065                                  ; $4CBC: $21 $65 $00
    add hl, bc                                    ; $4CBF: $09
    ld a, [hl]                                    ; $4CC0: $7E
    cp $01                                        ; $4CC1: $FE $01
    jp z, Jump_002_4E8C                           ; $4CC3: $CA $8C $4E

Jump_002_4CC6:
    ld hl, $009C                                  ; $4CC6: $21 $9C $00
    add hl, bc                                    ; $4CC9: $09
    ld [hl], $00                                  ; $4CCA: $36 $00
    ld hl, $003C                                  ; $4CCC: $21 $3C $00
    add hl, bc                                    ; $4CCF: $09
    ld a, [hl]                                    ; $4CD0: $7E
    cp $16                                        ; $4CD1: $FE $16
    jr nz, jr_002_4CDB                            ; $4CD3: $20 $06

    ld hl, $009C                                  ; $4CD5: $21 $9C $00
    add hl, bc                                    ; $4CD8: $09
    ld [hl], $01                                  ; $4CD9: $36 $01

jr_002_4CDB:
    ld hl, $0054                                  ; $4CDB: $21 $54 $00
    add hl, bc                                    ; $4CDE: $09
    push de                                       ; $4CDF: $D5
    ld a, [hl+]                                   ; $4CE0: $2A
    ld d, [hl]                                    ; $4CE1: $56
    inc hl                                        ; $4CE2: $23
    ld [hl+], a                                   ; $4CE3: $22
    ld [hl], d                                    ; $4CE4: $72
    pop de                                        ; $4CE5: $D1
    ld hl, $0052                                  ; $4CE6: $21 $52 $00
    add hl, bc                                    ; $4CE9: $09
    bit 1, [hl]                                   ; $4CEA: $CB $4E
    jr nz, jr_002_4CF6                            ; $4CEC: $20 $08

    bit 0, [hl]                                   ; $4CEE: $CB $46
    jr nz, jr_002_4D05                            ; $4CF0: $20 $13

    ld a, $0A                                     ; $4CF2: $3E $0A
    jr jr_002_4D11                                ; $4CF4: $18 $1B

jr_002_4CF6:
    ld a, $0E                                     ; $4CF6: $3E $0E
    ld hl, $0002                                  ; $4CF8: $21 $02 $00
    add hl, de                                    ; $4CFB: $19
    bit 5, [hl]                                   ; $4CFC: $CB $6E
    jr nz, jr_002_4D11                            ; $4CFE: $20 $11

    ld a, $0C                                     ; $4D00: $3E $0C
    jp Jump_002_4D11                              ; $4D02: $C3 $11 $4D


jr_002_4D05:
    ld a, $0C                                     ; $4D05: $3E $0C
    ld hl, $0002                                  ; $4D07: $21 $02 $00
    add hl, de                                    ; $4D0A: $19
    bit 5, [hl]                                   ; $4D0B: $CB $6E
    jr nz, jr_002_4D11                            ; $4D0D: $20 $02

    ld a, $0E                                     ; $4D0F: $3E $0E

Jump_002_4D11:
jr_002_4D11:
    ld hl, $0021                                  ; $4D11: $21 $21 $00
    add hl, bc                                    ; $4D14: $09
    res 3, [hl]                                   ; $4D15: $CB $9E
    res 5, [hl]                                   ; $4D17: $CB $AE
    set 0, [hl]                                   ; $4D19: $CB $C6
    set 1, [hl]                                   ; $4D1B: $CB $CE
    call Call_000_2E6E                            ; $4D1D: $CD $6E $2E
    jp Jump_002_4FF5                              ; $4D20: $C3 $F5 $4F


Jump_002_4D23:
    ld hl, $003C                                  ; $4D23: $21 $3C $00
    add hl, bc                                    ; $4D26: $09
    ld a, [hl]                                    ; $4D27: $7E
    ld hl, $0021                                  ; $4D28: $21 $21 $00
    add hl, bc                                    ; $4D2B: $09
    bit 5, [hl]                                   ; $4D2C: $CB $6E
    jr nz, jr_002_4D39                            ; $4D2E: $20 $09

    cp $10                                        ; $4D30: $FE $10
    jp z, Jump_002_4FF5                           ; $4D32: $CA $F5 $4F

    ld a, $10                                     ; $4D35: $3E $10
    jr jr_002_4D40                                ; $4D37: $18 $07

jr_002_4D39:
    cp $12                                        ; $4D39: $FE $12
    jp z, Jump_002_4FF5                           ; $4D3B: $CA $F5 $4F

    ld a, $12                                     ; $4D3E: $3E $12

jr_002_4D40:
    set 3, [hl]                                   ; $4D40: $CB $DE
    call Call_000_2E6E                            ; $4D42: $CD $6E $2E
    jp Jump_002_4FF5                              ; $4D45: $C3 $F5 $4F


Jump_002_4D48:
    ld hl, $003C                                  ; $4D48: $21 $3C $00
    add hl, bc                                    ; $4D4B: $09
    ld a, [hl]                                    ; $4D4C: $7E
    cp $14                                        ; $4D4D: $FE $14
    jp z, Jump_002_4FF5                           ; $4D4F: $CA $F5 $4F

    ld a, $14                                     ; $4D52: $3E $14
    ld hl, $0021                                  ; $4D54: $21 $21 $00
    add hl, bc                                    ; $4D57: $09
    set 3, [hl]                                   ; $4D58: $CB $DE
    call Call_000_2EA3                            ; $4D5A: $CD $A3 $2E
    jp Jump_002_4FF5                              ; $4D5D: $C3 $F5 $4F


Jump_002_4D60:
    ld a, $06                                     ; $4D60: $3E $06
    call Call_000_1360                            ; $4D62: $CD $60 $13
    ld hl, $009C                                  ; $4D65: $21 $9C $00
    add hl, bc                                    ; $4D68: $09
    ld [hl], $00                                  ; $4D69: $36 $00
    ld hl, $0021                                  ; $4D6B: $21 $21 $00
    add hl, bc                                    ; $4D6E: $09
    res 3, [hl]                                   ; $4D6F: $CB $9E
    res 5, [hl]                                   ; $4D71: $CB $AE
    set 0, [hl]                                   ; $4D73: $CB $C6
    set 1, [hl]                                   ; $4D75: $CB $CE
    set 2, [hl]                                   ; $4D77: $CB $D6
    ld a, $24                                     ; $4D79: $3E $24
    call Call_000_2E6E                            ; $4D7B: $CD $6E $2E
    jp Jump_002_4FF5                              ; $4D7E: $C3 $F5 $4F


Jump_002_4D81:
    ld a, $2C                                     ; $4D81: $3E $2C
    ld hl, $0021                                  ; $4D83: $21 $21 $00
    add hl, bc                                    ; $4D86: $09
    res 3, [hl]                                   ; $4D87: $CB $9E
    res 5, [hl]                                   ; $4D89: $CB $AE
    set 0, [hl]                                   ; $4D8B: $CB $C6
    set 1, [hl]                                   ; $4D8D: $CB $CE
    set 2, [hl]                                   ; $4D8F: $CB $D6
    call Call_000_2E90                            ; $4D91: $CD $90 $2E
    jp Jump_002_4FF5                              ; $4D94: $C3 $F5 $4F


Jump_002_4D97:
    ld a, $2E                                     ; $4D97: $3E $2E
    ld hl, $0021                                  ; $4D99: $21 $21 $00
    add hl, bc                                    ; $4D9C: $09
    res 3, [hl]                                   ; $4D9D: $CB $9E
    res 5, [hl]                                   ; $4D9F: $CB $AE
    set 0, [hl]                                   ; $4DA1: $CB $C6
    set 1, [hl]                                   ; $4DA3: $CB $CE
    set 2, [hl]                                   ; $4DA5: $CB $D6
    call Call_000_2E90                            ; $4DA7: $CD $90 $2E
    jp Jump_002_4FF5                              ; $4DAA: $C3 $F5 $4F


Jump_002_4DAD:
    ld a, $30                                     ; $4DAD: $3E $30
    ld hl, $0021                                  ; $4DAF: $21 $21 $00
    add hl, bc                                    ; $4DB2: $09
    res 3, [hl]                                   ; $4DB3: $CB $9E
    res 5, [hl]                                   ; $4DB5: $CB $AE
    set 0, [hl]                                   ; $4DB7: $CB $C6
    set 1, [hl]                                   ; $4DB9: $CB $CE
    set 2, [hl]                                   ; $4DBB: $CB $D6
    call Call_000_2E90                            ; $4DBD: $CD $90 $2E
    ld hl, $002F                                  ; $4DC0: $21 $2F $00
    add hl, bc                                    ; $4DC3: $09
    bit 1, [hl]                                   ; $4DC4: $CB $4E
    jr nz, jr_002_4DCD                            ; $4DC6: $20 $05

    ld a, $09                                     ; $4DC8: $3E $09
    call Call_000_1360                            ; $4DCA: $CD $60 $13

jr_002_4DCD:
    jp Jump_002_4FF5                              ; $4DCD: $C3 $F5 $4F


Jump_002_4DD0:
    ld a, [$C001]                                 ; $4DD0: $FA $01 $C0
    bit 3, a                                      ; $4DD3: $CB $5F
    jr z, jr_002_4DDD                             ; $4DD5: $28 $06

    ld hl, $0020                                  ; $4DD7: $21 $20 $00
    add hl, bc                                    ; $4DDA: $09
    set 5, [hl]                                   ; $4DDB: $CB $EE

jr_002_4DDD:
    ld a, $32                                     ; $4DDD: $3E $32
    ld hl, $0021                                  ; $4DDF: $21 $21 $00
    add hl, bc                                    ; $4DE2: $09
    res 3, [hl]                                   ; $4DE3: $CB $9E
    set 0, [hl]                                   ; $4DE5: $CB $C6
    set 1, [hl]                                   ; $4DE7: $CB $CE
    set 2, [hl]                                   ; $4DE9: $CB $D6
    call Call_000_2E90                            ; $4DEB: $CD $90 $2E
    jp Jump_002_4FF5                              ; $4DEE: $C3 $F5 $4F


Jump_002_4DF1:
    ld a, $34                                     ; $4DF1: $3E $34
    ld hl, $0021                                  ; $4DF3: $21 $21 $00
    add hl, bc                                    ; $4DF6: $09
    res 3, [hl]                                   ; $4DF7: $CB $9E
    set 0, [hl]                                   ; $4DF9: $CB $C6
    set 1, [hl]                                   ; $4DFB: $CB $CE
    set 2, [hl]                                   ; $4DFD: $CB $D6
    call Call_000_2E90                            ; $4DFF: $CD $90 $2E
    jp Jump_002_4FF5                              ; $4E02: $C3 $F5 $4F


Jump_002_4E05:
    ld a, [$C001]                                 ; $4E05: $FA $01 $C0
    bit 3, a                                      ; $4E08: $CB $5F
    jp z, Jump_002_4E13                           ; $4E0A: $CA $13 $4E

    ld hl, $0020                                  ; $4E0D: $21 $20 $00
    add hl, bc                                    ; $4E10: $09
    set 4, [hl]                                   ; $4E11: $CB $E6

Jump_002_4E13:
    ld a, $36                                     ; $4E13: $3E $36
    ld hl, $0021                                  ; $4E15: $21 $21 $00
    add hl, bc                                    ; $4E18: $09
    res 3, [hl]                                   ; $4E19: $CB $9E
    set 0, [hl]                                   ; $4E1B: $CB $C6
    set 1, [hl]                                   ; $4E1D: $CB $CE
    set 2, [hl]                                   ; $4E1F: $CB $D6
    call Call_000_2E90                            ; $4E21: $CD $90 $2E
    ld hl, $002F                                  ; $4E24: $21 $2F $00
    add hl, bc                                    ; $4E27: $09
    bit 1, [hl]                                   ; $4E28: $CB $4E
    jr nz, jr_002_4E31                            ; $4E2A: $20 $05

    ld a, $09                                     ; $4E2C: $3E $09
    call Call_000_1360                            ; $4E2E: $CD $60 $13

jr_002_4E31:
    jp Jump_002_4FF5                              ; $4E31: $C3 $F5 $4F


Jump_002_4E34:
    ld hl, $0021                                  ; $4E34: $21 $21 $00
    add hl, bc                                    ; $4E37: $09
    res 3, [hl]                                   ; $4E38: $CB $9E
    res 5, [hl]                                   ; $4E3A: $CB $AE
    set 0, [hl]                                   ; $4E3C: $CB $C6
    set 1, [hl]                                   ; $4E3E: $CB $CE
    ld a, $16                                     ; $4E40: $3E $16
    call Call_000_2E6E                            ; $4E42: $CD $6E $2E
    ld hl, $0075                                  ; $4E45: $21 $75 $00
    call Call_000_2A5F                            ; $4E48: $CD $5F $2A
    sla l                                         ; $4E4B: $CB $25
    rl h                                          ; $4E4D: $CB $14
    call Call_000_2FEB                            ; $4E4F: $CD $EB $2F
    jp Jump_002_4FF5                              ; $4E52: $C3 $F5 $4F


Jump_002_4E55:
    call Call_000_2C23                            ; $4E55: $CD $23 $2C
    ld hl, $0021                                  ; $4E58: $21 $21 $00
    add hl, bc                                    ; $4E5B: $09
    res 3, [hl]                                   ; $4E5C: $CB $9E
    res 5, [hl]                                   ; $4E5E: $CB $AE
    set 0, [hl]                                   ; $4E60: $CB $C6
    set 1, [hl]                                   ; $4E62: $CB $CE
    ld a, $18                                     ; $4E64: $3E $18
    call Call_000_2E6E                            ; $4E66: $CD $6E $2E
    jp Jump_002_4FF5                              ; $4E69: $C3 $F5 $4F


Jump_002_4E6C:
    call Call_000_2C6F                            ; $4E6C: $CD $6F $2C
    jp c, Jump_002_4EAE                           ; $4E6F: $DA $AE $4E

    ld hl, $009C                                  ; $4E72: $21 $9C $00
    add hl, bc                                    ; $4E75: $09
    ld [hl], $00                                  ; $4E76: $36 $00
    ld hl, $0021                                  ; $4E78: $21 $21 $00
    add hl, bc                                    ; $4E7B: $09
    res 3, [hl]                                   ; $4E7C: $CB $9E
    res 5, [hl]                                   ; $4E7E: $CB $AE
    set 0, [hl]                                   ; $4E80: $CB $C6
    set 1, [hl]                                   ; $4E82: $CB $CE
    ld a, $26                                     ; $4E84: $3E $26
    call Call_000_2E6E                            ; $4E86: $CD $6E $2E
    jp Jump_002_4FF5                              ; $4E89: $C3 $F5 $4F


Jump_002_4E8C:
    ld hl, $0000                                  ; $4E8C: $21 $00 $00
    call Call_000_343B                            ; $4E8F: $CD $3B $34
    ld hl, $0021                                  ; $4E92: $21 $21 $00
    add hl, bc                                    ; $4E95: $09
    res 3, [hl]                                   ; $4E96: $CB $9E
    res 5, [hl]                                   ; $4E98: $CB $AE
    set 0, [hl]                                   ; $4E9A: $CB $C6
    set 1, [hl]                                   ; $4E9C: $CB $CE
    set 7, [hl]                                   ; $4E9E: $CB $FE
    ld a, $2A                                     ; $4EA0: $3E $2A
    call Call_000_2E6E                            ; $4EA2: $CD $6E $2E
    ld hl, $0030                                  ; $4EA5: $21 $30 $00
    add hl, bc                                    ; $4EA8: $09
    ld [hl], $01                                  ; $4EA9: $36 $01
    jp Jump_002_4FF5                              ; $4EAB: $C3 $F5 $4F


Jump_002_4EAE:
    ld hl, $002E                                  ; $4EAE: $21 $2E $00
    add hl, bc                                    ; $4EB1: $09
    ld a, [hl]                                    ; $4EB2: $7E
    srl a                                         ; $4EB3: $CB $3F
    push de                                       ; $4EB5: $D5
    ld hl, $4ED6                                  ; $4EB6: $21 $D6 $4E
    ld d, $00                                     ; $4EB9: $16 $00
    ld e, a                                       ; $4EBB: $5F
    add hl, de                                    ; $4EBC: $19
    pop de                                        ; $4EBD: $D1
    ld a, [hl]                                    ; $4EBE: $7E
    call Call_000_1360                            ; $4EBF: $CD $60 $13
    ld hl, $0021                                  ; $4EC2: $21 $21 $00
    add hl, bc                                    ; $4EC5: $09
    res 3, [hl]                                   ; $4EC6: $CB $9E
    res 5, [hl]                                   ; $4EC8: $CB $AE
    set 0, [hl]                                   ; $4ECA: $CB $C6
    set 1, [hl]                                   ; $4ECC: $CB $CE
    ld a, $1A                                     ; $4ECE: $3E $1A
    call Call_000_2E6E                            ; $4ED0: $CD $6E $2E
    jp Jump_002_4FF5                              ; $4ED3: $C3 $F5 $4F


    inc bc                                        ; $4ED6: $03
    ld [bc], a                                    ; $4ED7: $02
    inc b                                         ; $4ED8: $04
    ld [bc], a                                    ; $4ED9: $02
    inc b                                         ; $4EDA: $04
    inc bc                                        ; $4EDB: $03
    inc bc                                        ; $4EDC: $03
    ld [bc], a                                    ; $4EDD: $02
    inc b                                         ; $4EDE: $04
    dec b                                         ; $4EDF: $05

Jump_002_4EE0:
    ld a, [$C039]                                 ; $4EE0: $FA $39 $C0
    bit 7, a                                      ; $4EE3: $CB $7F
    jr z, jr_002_4EEB                             ; $4EE5: $28 $04

    bit 4, a                                      ; $4EE7: $CB $67
    jr nz, jr_002_4F0C                            ; $4EE9: $20 $21

jr_002_4EEB:
    ld hl, $009C                                  ; $4EEB: $21 $9C $00
    add hl, bc                                    ; $4EEE: $09
    ld [hl], $01                                  ; $4EEF: $36 $01
    ld a, $3E                                     ; $4EF1: $3E $3E
    ld hl, $0021                                  ; $4EF3: $21 $21 $00
    add hl, bc                                    ; $4EF6: $09
    res 3, [hl]                                   ; $4EF7: $CB $9E
    res 5, [hl]                                   ; $4EF9: $CB $AE
    set 0, [hl]                                   ; $4EFB: $CB $C6
    set 1, [hl]                                   ; $4EFD: $CB $CE
    set 2, [hl]                                   ; $4EFF: $CB $D6
    call Call_000_2E90                            ; $4F01: $CD $90 $2E
    ld a, $09                                     ; $4F04: $3E $09
    call Call_000_1360                            ; $4F06: $CD $60 $13
    jp Jump_002_4FF5                              ; $4F09: $C3 $F5 $4F


jr_002_4F0C:
    ld hl, $D800                                  ; $4F0C: $21 $00 $D8
    ld [hl], $00                                  ; $4F0F: $36 $00
    ld hl, $D840                                  ; $4F11: $21 $40 $D8
    ld [hl], $00                                  ; $4F14: $36 $00
    ld hl, $002D                                  ; $4F16: $21 $2D $00
    add hl, bc                                    ; $4F19: $09
    ld a, [hl]                                    ; $4F1A: $7E
    or a                                          ; $4F1B: $B7
    jr nz, jr_002_4F25                            ; $4F1C: $20 $07

    ld hl, $D780                                  ; $4F1E: $21 $80 $D7
    ld [hl], $80                                  ; $4F21: $36 $80
    jr jr_002_4F2A                                ; $4F23: $18 $05

jr_002_4F25:
    ld hl, $D7C0                                  ; $4F25: $21 $C0 $D7
    ld [hl], $80                                  ; $4F28: $36 $80

jr_002_4F2A:
    ld hl, $0060                                  ; $4F2A: $21 $60 $00
    add hl, bc                                    ; $4F2D: $09
    ld [hl], $00                                  ; $4F2E: $36 $00
    ld a, $5E                                     ; $4F30: $3E $5E
    call Call_000_2EB0                            ; $4F32: $CD $B0 $2E
    ld a, $02                                     ; $4F35: $3E $02
    ld [$C2EB], a                                 ; $4F37: $EA $EB $C2
    ld a, $05                                     ; $4F3A: $3E $05
    call Call_000_3963                            ; $4F3C: $CD $63 $39
    ld hl, $0000                                  ; $4F3F: $21 $00 $00
    call Call_000_3007                            ; $4F42: $CD $07 $30
    ld hl, $FA00                                  ; $4F45: $21 $00 $FA
    call Call_000_305D                            ; $4F48: $CD $5D $30
    ld hl, $0021                                  ; $4F4B: $21 $21 $00
    add hl, bc                                    ; $4F4E: $09
    res 3, [hl]                                   ; $4F4F: $CB $9E
    res 5, [hl]                                   ; $4F51: $CB $AE
    set 0, [hl]                                   ; $4F53: $CB $C6
    set 1, [hl]                                   ; $4F55: $CB $CE
    set 2, [hl]                                   ; $4F57: $CB $D6
    set 4, [hl]                                   ; $4F59: $CB $E6
    ld a, $0E                                     ; $4F5B: $3E $0E
    call Call_000_1360                            ; $4F5D: $CD $60 $13
    jp Jump_002_4FF5                              ; $4F60: $C3 $F5 $4F


Jump_002_4F63:
    ld hl, $0021                                  ; $4F63: $21 $21 $00
    add hl, bc                                    ; $4F66: $09
    res 3, [hl]                                   ; $4F67: $CB $9E
    res 5, [hl]                                   ; $4F69: $CB $AE
    set 0, [hl]                                   ; $4F6B: $CB $C6
    set 1, [hl]                                   ; $4F6D: $CB $CE
    set 2, [hl]                                   ; $4F6F: $CB $D6
    call Call_000_2E6E                            ; $4F71: $CD $6E $2E
    jp Jump_002_4FF5                              ; $4F74: $C3 $F5 $4F


Jump_002_4F77:
    ld hl, $0021                                  ; $4F77: $21 $21 $00
    add hl, bc                                    ; $4F7A: $09
    res 3, [hl]                                   ; $4F7B: $CB $9E
    res 5, [hl]                                   ; $4F7D: $CB $AE
    set 0, [hl]                                   ; $4F7F: $CB $C6
    res 1, [hl]                                   ; $4F81: $CB $8E
    set 1, [hl]                                   ; $4F83: $CB $CE
    set 2, [hl]                                   ; $4F85: $CB $D6
    set 7, [hl]                                   ; $4F87: $CB $FE
    ld a, $4E                                     ; $4F89: $3E $4E
    call Call_000_2E6E                            ; $4F8B: $CD $6E $2E
    call Call_000_0417                            ; $4F8E: $CD $17 $04
    ld a, $03                                     ; $4F91: $3E $03
    ld [$C2E2], a                                 ; $4F93: $EA $E2 $C2
    call Call_000_348B                            ; $4F96: $CD $8B $34

Jump_002_4F99:
    ld a, [$C2E2]                                 ; $4F99: $FA $E2 $C2
    cp $04                                        ; $4F9C: $FE $04
    jp z, Jump_002_4FAC                           ; $4F9E: $CA $AC $4F

    cp $03                                        ; $4FA1: $FE $03
    jp nz, Jump_002_4FB4                          ; $4FA3: $C2 $B4 $4F

    call Call_000_0417                            ; $4FA6: $CD $17 $04
    jp Jump_002_4F99                              ; $4FA9: $C3 $99 $4F


Jump_002_4FAC:
    ld a, $03                                     ; $4FAC: $3E $03
    ld [$C2E2], a                                 ; $4FAE: $EA $E2 $C2
    jp Jump_002_4FF5                              ; $4FB1: $C3 $F5 $4F


Jump_002_4FB4:
    ld a, $1C                                     ; $4FB4: $3E $1C
    call Call_000_1360                            ; $4FB6: $CD $60 $13
    ld a, $54                                     ; $4FB9: $3E $54
    call Call_000_2EB0                            ; $4FBB: $CD $B0 $2E
    ld a, $01                                     ; $4FBE: $3E $01
    ld [$C2EB], a                                 ; $4FC0: $EA $EB $C2
    ld hl, $0021                                  ; $4FC3: $21 $21 $00
    add hl, bc                                    ; $4FC6: $09
    res 7, [hl]                                   ; $4FC7: $CB $BE
    inc hl                                        ; $4FC9: $23
    inc hl                                        ; $4FCA: $23
    set 0, [hl]                                   ; $4FCB: $CB $C6
    jp Jump_002_4FF5                              ; $4FCD: $C3 $F5 $4F


Jump_002_4FD0:
    ld hl, $0021                                  ; $4FD0: $21 $21 $00
    add hl, bc                                    ; $4FD3: $09
    res 3, [hl]                                   ; $4FD4: $CB $9E
    res 5, [hl]                                   ; $4FD6: $CB $AE
    set 0, [hl]                                   ; $4FD8: $CB $C6
    res 1, [hl]                                   ; $4FDA: $CB $8E
    set 1, [hl]                                   ; $4FDC: $CB $CE
    set 2, [hl]                                   ; $4FDE: $CB $D6
    set 7, [hl]                                   ; $4FE0: $CB $FE
    ld a, $50                                     ; $4FE2: $3E $50
    call Call_000_2E6E                            ; $4FE4: $CD $6E $2E
    call Call_000_0417                            ; $4FE7: $CD $17 $04
    ld a, $03                                     ; $4FEA: $3E $03
    ld [$C2E2], a                                 ; $4FEC: $EA $E2 $C2
    call Call_000_348B                            ; $4FEF: $CD $8B $34
    jp Jump_002_4FF5                              ; $4FF2: $C3 $F5 $4F


Jump_002_4FF5:
    pop de                                        ; $4FF5: $D1
    pop bc                                        ; $4FF6: $C1
    ret                                           ; $4FF7: $C9


    call Call_002_57CC                            ; $4FF8: $CD $CC $57
    jp nc, Jump_002_5058                          ; $4FFB: $D2 $58 $50

    push af                                       ; $4FFE: $F5
    or a                                          ; $4FFF: $B7
    jr z, jr_002_5008                             ; $5000: $28 $06

    ld hl, $0043                                  ; $5002: $21 $43 $00
    add hl, bc                                    ; $5005: $09
    ld [hl], $00                                  ; $5006: $36 $00

jr_002_5008:
    pop af                                        ; $5008: $F1
    ld hl, $C2E7                                  ; $5009: $21 $E7 $C2
    bit 0, [hl]                                   ; $500C: $CB $46
    jr nz, jr_002_5014                            ; $500E: $20 $04

    cp $28                                        ; $5010: $FE $28
    jr nc, jr_002_502A                            ; $5012: $30 $16

jr_002_5014:
    push af                                       ; $5014: $F5
    cp $00                                        ; $5015: $FE $00
    jr z, jr_002_5024                             ; $5017: $28 $0B

    ld hl, $0041                                  ; $5019: $21 $41 $00
    add hl, bc                                    ; $501C: $09
    ld a, [hl]                                    ; $501D: $7E
    inc a                                         ; $501E: $3C
    daa                                           ; $501F: $27
    ld [hl], a                                    ; $5020: $77
    pop af                                        ; $5021: $F1
    jr jr_002_502A                                ; $5022: $18 $06

jr_002_5024:
    pop af                                        ; $5024: $F1
    call Call_002_5BEF                            ; $5025: $CD $EF $5B
    jr c, jr_002_5053                             ; $5028: $38 $29

jr_002_502A:
    cp $28                                        ; $502A: $FE $28
    jr z, jr_002_5053                             ; $502C: $28 $25

    ld hl, $0021                                  ; $502E: $21 $21 $00
    add hl, bc                                    ; $5031: $09
    bit 3, [hl]                                   ; $5032: $CB $5E
    jp nz, Jump_002_5040                          ; $5034: $C2 $40 $50

    ld hl, $0020                                  ; $5037: $21 $20 $00
    add hl, bc                                    ; $503A: $09
    res 1, [hl]                                   ; $503B: $CB $8E
    res 6, [hl]                                   ; $503D: $CB $B6
    inc hl                                        ; $503F: $23

Jump_002_5040:
    set 0, [hl]                                   ; $5040: $CB $C6
    set 1, [hl]                                   ; $5042: $CB $CE
    set 4, [hl]                                   ; $5044: $CB $E6
    cp $00                                        ; $5046: $FE $00
    jp z, Jump_002_5053                           ; $5048: $CA $53 $50

    set 2, [hl]                                   ; $504B: $CB $D6
    ld hl, $005D                                  ; $504D: $21 $5D $00
    add hl, bc                                    ; $5050: $09
    ld [hl], $00                                  ; $5051: $36 $00

Jump_002_5053:
jr_002_5053:
    ld hl, $5069                                  ; $5053: $21 $69 $50
    rst RST_28                                    ; $5056: $EF
    ret                                           ; $5057: $C9


Jump_002_5058:
    ld hl, $0021                                  ; $5058: $21 $21 $00
    add hl, bc                                    ; $505B: $09
    bit 4, [hl]                                   ; $505C: $CB $66
    jp nz, Jump_002_5067                          ; $505E: $C2 $67 $50

    ld hl, $0041                                  ; $5061: $21 $41 $00
    add hl, bc                                    ; $5064: $09
    ld [hl], $00                                  ; $5065: $36 $00

Jump_002_5067:
    xor a                                         ; $5067: $AF
    ret                                           ; $5068: $C9


    and e                                         ; $5069: $A3
    ld d, b                                       ; $506A: $50
    adc d                                         ; $506B: $8A
    ld d, c                                       ; $506C: $51
    cp l                                          ; $506D: $BD
    ld d, c                                       ; $506E: $51
    ld de, $1652                                  ; $506F: $11 $52 $16
    ld d, d                                       ; $5072: $52
    dec de                                        ; $5073: $1B
    ld d, d                                       ; $5074: $52
    inc de                                        ; $5075: $13
    ld d, l                                       ; $5076: $55
    ld b, h                                       ; $5077: $44
    ld d, l                                       ; $5078: $55
    jr c, @+$54                                   ; $5079: $38 $52

    xor h                                         ; $507B: $AC
    ld d, d                                       ; $507C: $52
    cp $52                                        ; $507D: $FE $52
    cp e                                          ; $507F: $BB
    ld d, l                                       ; $5080: $55
    ret nz                                        ; $5081: $C0

    ld d, l                                       ; $5082: $55
    db $DD                                        ; $5083: $DD
    ld d, l                                       ; $5084: $55
    dec bc                                        ; $5085: $0B
    ld d, [hl]                                    ; $5086: $56
    ld [hl], d                                    ; $5087: $72
    ld d, e                                       ; $5088: $53
    or h                                          ; $5089: $B4
    ld d, e                                       ; $508A: $53
    call $F553                                    ; $508B: $CD $53 $F5
    ld d, e                                       ; $508E: $53
    ld [hl], e                                    ; $508F: $73
    ld d, h                                       ; $5090: $54
    db $D3                                        ; $5091: $D3
    ld d, h                                       ; $5092: $54
    dec e                                         ; $5093: $1D
    ld d, h                                       ; $5094: $54
    ld c, b                                       ; $5095: $48
    ld d, h                                       ; $5096: $54
    add a                                         ; $5097: $87
    ld d, [hl]                                    ; $5098: $56
    ldh a, [c]                                    ; $5099: $F2
    ld d, [hl]                                    ; $509A: $56
    ld h, a                                       ; $509B: $67
    ld d, a                                       ; $509C: $57
    ld l, h                                       ; $509D: $6C
    ld d, a                                       ; $509E: $57
    ld [hl], c                                    ; $509F: $71
    ld d, a                                       ; $50A0: $57
    halt                                          ; $50A1: $76
    ld d, a                                       ; $50A2: $57
    call Call_002_5BEF                            ; $50A3: $CD $EF $5B
    jp c, Jump_002_5168                           ; $50A6: $DA $68 $51

    ld hl, $0020                                  ; $50A9: $21 $20 $00
    add hl, bc                                    ; $50AC: $09
    bit 1, [hl]                                   ; $50AD: $CB $4E
    jp nz, Jump_002_50BB                          ; $50AF: $C2 $BB $50

    bit 6, [hl]                                   ; $50B2: $CB $76
    jp nz, Jump_002_50BB                          ; $50B4: $C2 $BB $50

    ld a, $0A                                     ; $50B7: $3E $0A
    jr jr_002_50BD                                ; $50B9: $18 $02

Jump_002_50BB:
    ld a, $0D                                     ; $50BB: $3E $0D

jr_002_50BD:
    call Call_000_1360                            ; $50BD: $CD $60 $13
    ld hl, $0021                                  ; $50C0: $21 $21 $00
    add hl, bc                                    ; $50C3: $09
    set 3, [hl]                                   ; $50C4: $CB $DE
    ld hl, $0023                                  ; $50C6: $21 $23 $00
    add hl, bc                                    ; $50C9: $09
    res 1, [hl]                                   ; $50CA: $CB $8E
    res 6, [hl]                                   ; $50CC: $CB $B6
    ld hl, $001C                                  ; $50CE: $21 $1C $00
    add hl, de                                    ; $50D1: $19
    ld [hl], $05                                  ; $50D2: $36 $05
    ld hl, $0065                                  ; $50D4: $21 $65 $00
    add hl, bc                                    ; $50D7: $09
    ld a, [hl]                                    ; $50D8: $7E
    or a                                          ; $50D9: $B7
    jp nz, Jump_002_50E3                          ; $50DA: $C2 $E3 $50

    ld hl, $0021                                  ; $50DD: $21 $21 $00
    add hl, bc                                    ; $50E0: $09
    set 2, [hl]                                   ; $50E1: $CB $D6

Jump_002_50E3:
    call Call_000_3023                            ; $50E3: $CD $23 $30
    call Call_000_38BA                            ; $50E6: $CD $BA $38
    jp c, Jump_002_5165                           ; $50E9: $DA $65 $51

    call Call_000_2EE0                            ; $50EC: $CD $E0 $2E
    ld hl, $003C                                  ; $50EF: $21 $3C $00
    add hl, bc                                    ; $50F2: $09
    ld a, [hl]                                    ; $50F3: $7E
    cp $10                                        ; $50F4: $FE $10
    jp z, Jump_002_5106                           ; $50F6: $CA $06 $51

    cp $12                                        ; $50F9: $FE $12
    jp z, Jump_002_5106                           ; $50FB: $CA $06 $51

    cp $14                                        ; $50FE: $FE $14
    jp z, Jump_002_5134                           ; $5100: $CA $34 $51

    jp Jump_002_5165                              ; $5103: $C3 $65 $51


Jump_002_5106:
    ld [hl], $52                                  ; $5106: $36 $52
    jp Jump_002_5163                              ; $5108: $C3 $63 $51


    ld hl, $0023                                  ; $510B: $21 $23 $00
    add hl, bc                                    ; $510E: $09
    bit 0, [hl]                                   ; $510F: $CB $46
    jp nz, Jump_002_511A                          ; $5111: $C2 $1A $51

    ld hl, $0280                                  ; $5114: $21 $80 $02
    jp Jump_002_511D                              ; $5117: $C3 $1D $51


Jump_002_511A:
    ld hl, $0400                                  ; $511A: $21 $00 $04

Jump_002_511D:
    push hl                                       ; $511D: $E5
    ld hl, $0020                                  ; $511E: $21 $20 $00
    add hl, bc                                    ; $5121: $09
    bit 3, [hl]                                   ; $5122: $CB $5E
    jr nz, jr_002_512D                            ; $5124: $20 $07

    pop hl                                        ; $5126: $E1
    call Call_000_3007                            ; $5127: $CD $07 $30
    jp Jump_002_5163                              ; $512A: $C3 $63 $51


jr_002_512D:
    pop hl                                        ; $512D: $E1
    call Call_000_3035                            ; $512E: $CD $35 $30
    jp Jump_002_5163                              ; $5131: $C3 $63 $51


Jump_002_5134:
    ld hl, $001C                                  ; $5134: $21 $1C $00
    add hl, de                                    ; $5137: $19
    ld [hl], $FF                                  ; $5138: $36 $FF
    ld hl, $0020                                  ; $513A: $21 $20 $00
    add hl, bc                                    ; $513D: $09
    bit 3, [hl]                                   ; $513E: $CB $5E
    jr nz, jr_002_514A                            ; $5140: $20 $08

    ld hl, $0080                                  ; $5142: $21 $80 $00
    call Call_000_3007                            ; $5145: $CD $07 $30
    jr jr_002_5150                                ; $5148: $18 $06

jr_002_514A:
    ld hl, $0080                                  ; $514A: $21 $80 $00
    call Call_000_3035                            ; $514D: $CD $35 $30

jr_002_5150:
    ld hl, $000A                                  ; $5150: $21 $0A $00
    add hl, de                                    ; $5153: $19
    ld a, [hl]                                    ; $5154: $7E
    bit 7, a                                      ; $5155: $CB $7F
    jp nz, Jump_002_5163                          ; $5157: $C2 $63 $51

    ld hl, $0000                                  ; $515A: $21 $00 $00
    call Call_000_305D                            ; $515D: $CD $5D $30
    jp Jump_002_5163                              ; $5160: $C3 $63 $51


Jump_002_5163:
    scf                                           ; $5163: $37
    ret                                           ; $5164: $C9


Jump_002_5165:
    scf                                           ; $5165: $37
    ccf                                           ; $5166: $3F
    ret                                           ; $5167: $C9


Jump_002_5168:
    ld a, $22                                     ; $5168: $3E $22
    call Call_000_1360                            ; $516A: $CD $60 $13
    ld hl, $0023                                  ; $516D: $21 $23 $00
    add hl, bc                                    ; $5170: $09
    res 1, [hl]                                   ; $5171: $CB $8E
    res 6, [hl]                                   ; $5173: $CB $B6
    call Call_000_3023                            ; $5175: $CD $23 $30
    call Call_000_3797                            ; $5178: $CD $97 $37
    call Call_000_2EE0                            ; $517B: $CD $E0 $2E
    ld hl, $FF00                                  ; $517E: $21 $00 $FF
    call Call_000_2F79                            ; $5181: $CD $79 $2F
    call Call_000_3783                            ; $5184: $CD $83 $37
    scf                                           ; $5187: $37
    ccf                                           ; $5188: $3F
    ret                                           ; $5189: $C9


    ld hl, $0023                                  ; $518A: $21 $23 $00
    add hl, bc                                    ; $518D: $09
    res 1, [hl]                                   ; $518E: $CB $8E
    res 6, [hl]                                   ; $5190: $CB $B6
    ld a, $1C                                     ; $5192: $3E $1C
    call Call_000_1360                            ; $5194: $CD $60 $13
    ld a, $54                                     ; $5197: $3E $54
    call Call_000_2EB0                            ; $5199: $CD $B0 $2E
    ld a, $0F                                     ; $519C: $3E $0F
    call Call_002_5BBE                            ; $519E: $CD $BE $5B
    ld a, $01                                     ; $51A1: $3E $01
    ld [$C2EB], a                                 ; $51A3: $EA $EB $C2
    call Call_000_3023                            ; $51A6: $CD $23 $30
    call Call_000_3797                            ; $51A9: $CD $97 $37
    call Call_000_2EE0                            ; $51AC: $CD $E0 $2E
    ld hl, $0062                                  ; $51AF: $21 $62 $00
    add hl, bc                                    ; $51B2: $09
    ld a, [hl]                                    ; $51B3: $7E
    cp $10                                        ; $51B4: $FE $10
    jp nz, Jump_002_51BB                          ; $51B6: $C2 $BB $51

    ld [hl], $00                                  ; $51B9: $36 $00

Jump_002_51BB:
    scf                                           ; $51BB: $37
    ret                                           ; $51BC: $C9


    ld hl, $0023                                  ; $51BD: $21 $23 $00
    add hl, bc                                    ; $51C0: $09
    res 1, [hl]                                   ; $51C1: $CB $8E
    res 6, [hl]                                   ; $51C3: $CB $B6
    ld a, $1C                                     ; $51C5: $3E $1C
    call Call_000_1360                            ; $51C7: $CD $60 $13
    ld a, $56                                     ; $51CA: $3E $56
    call Call_000_2EB0                            ; $51CC: $CD $B0 $2E
    ld a, $01                                     ; $51CF: $3E $01
    ld [$C2EB], a                                 ; $51D1: $EA $EB $C2
    call Call_000_3023                            ; $51D4: $CD $23 $30
    call Call_000_3797                            ; $51D7: $CD $97 $37
    call Call_000_2EE0                            ; $51DA: $CD $E0 $2E
    ld hl, $0020                                  ; $51DD: $21 $20 $00
    add hl, bc                                    ; $51E0: $09
    bit 3, [hl]                                   ; $51E1: $CB $5E
    jr nz, jr_002_51ED                            ; $51E3: $20 $08

    ld hl, $0080                                  ; $51E5: $21 $80 $00
    call Call_000_3007                            ; $51E8: $CD $07 $30
    jr jr_002_51F3                                ; $51EB: $18 $06

jr_002_51ED:
    ld hl, $0080                                  ; $51ED: $21 $80 $00
    call Call_000_3035                            ; $51F0: $CD $35 $30

jr_002_51F3:
    ld hl, $000A                                  ; $51F3: $21 $0A $00
    add hl, de                                    ; $51F6: $19
    ld a, [hl]                                    ; $51F7: $7E
    bit 7, a                                      ; $51F8: $CB $7F
    jp nz, Jump_002_5203                          ; $51FA: $C2 $03 $52

    ld hl, $0000                                  ; $51FD: $21 $00 $00
    call Call_000_305D                            ; $5200: $CD $5D $30

Jump_002_5203:
    ld hl, $0062                                  ; $5203: $21 $62 $00
    add hl, bc                                    ; $5206: $09
    ld a, [hl]                                    ; $5207: $7E
    cp $10                                        ; $5208: $FE $10
    jp nz, Jump_002_520F                          ; $520A: $C2 $0F $52

    ld [hl], $00                                  ; $520D: $36 $00

Jump_002_520F:
    scf                                           ; $520F: $37
    ret                                           ; $5210: $C9


    ld a, $58                                     ; $5211: $3E $58
    jp Jump_002_521D                              ; $5213: $C3 $1D $52


    ld a, $5A                                     ; $5216: $3E $5A
    jp Jump_002_521D                              ; $5218: $C3 $1D $52


    ld a, $5C                                     ; $521B: $3E $5C

Jump_002_521D:
    push af                                       ; $521D: $F5
    call Call_002_559D                            ; $521E: $CD $9D $55
    pop af                                        ; $5221: $F1
    call Call_000_2EB0                            ; $5222: $CD $B0 $2E
    ld a, $0F                                     ; $5225: $3E $0F
    call Call_002_5BBE                            ; $5227: $CD $BE $5B
    call Call_002_5BE0                            ; $522A: $CD $E0 $5B
    call Call_000_3023                            ; $522D: $CD $23 $30
    call Call_000_3797                            ; $5230: $CD $97 $37
    call Call_000_2EE0                            ; $5233: $CD $E0 $2E
    scf                                           ; $5236: $37
    ret                                           ; $5237: $C9


    ld hl, $0020                                  ; $5238: $21 $20 $00
    add hl, bc                                    ; $523B: $09
    bit 1, [hl]                                   ; $523C: $CB $4E
    jp z, Jump_002_5248                           ; $523E: $CA $48 $52

    inc hl                                        ; $5241: $23
    inc hl                                        ; $5242: $23
    inc hl                                        ; $5243: $23
    set 0, [hl]                                   ; $5244: $CB $C6
    set 4, [hl]                                   ; $5246: $CB $E6

Jump_002_5248:
    call Call_002_5583                            ; $5248: $CD $83 $55
    call Call_002_559D                            ; $524B: $CD $9D $55
    ld a, $5E                                     ; $524E: $3E $5E
    call Call_000_2EB0                            ; $5250: $CD $B0 $2E
    ld a, $1E                                     ; $5253: $3E $1E
    call Call_002_5BBE                            ; $5255: $CD $BE $5B
    call Call_002_5BE0                            ; $5258: $CD $E0 $5B
    call Call_000_3023                            ; $525B: $CD $23 $30
    call Call_000_3797                            ; $525E: $CD $97 $37
    call Call_000_2EE0                            ; $5261: $CD $E0 $2E
    ld hl, $0023                                  ; $5264: $21 $23 $00
    add hl, bc                                    ; $5267: $09
    bit 0, [hl]                                   ; $5268: $CB $46
    jp nz, Jump_002_528D                          ; $526A: $C2 $8D $52

    ld hl, $FB00                                  ; $526D: $21 $00 $FB
    call Call_000_305D                            ; $5270: $CD $5D $30
    ld hl, $0020                                  ; $5273: $21 $20 $00
    add hl, bc                                    ; $5276: $09
    bit 3, [hl]                                   ; $5277: $CB $5E
    jr nz, jr_002_5284                            ; $5279: $20 $09

    ld hl, $0190                                  ; $527B: $21 $90 $01
    call Call_000_3007                            ; $527E: $CD $07 $30
    jp Jump_002_52AA                              ; $5281: $C3 $AA $52


jr_002_5284:
    ld hl, $0190                                  ; $5284: $21 $90 $01
    call Call_000_3035                            ; $5287: $CD $35 $30
    jp Jump_002_52AA                              ; $528A: $C3 $AA $52


Jump_002_528D:
    ld hl, $FA00                                  ; $528D: $21 $00 $FA
    call Call_000_305D                            ; $5290: $CD $5D $30
    ld hl, $0020                                  ; $5293: $21 $20 $00
    add hl, bc                                    ; $5296: $09
    bit 3, [hl]                                   ; $5297: $CB $5E
    jr nz, jr_002_52A4                            ; $5299: $20 $09

    ld hl, $0180                                  ; $529B: $21 $80 $01
    call Call_000_3007                            ; $529E: $CD $07 $30
    jp Jump_002_52AA                              ; $52A1: $C3 $AA $52


jr_002_52A4:
    ld hl, $0180                                  ; $52A4: $21 $80 $01
    call Call_000_3035                            ; $52A7: $CD $35 $30

Jump_002_52AA:
    scf                                           ; $52AA: $37
    ret                                           ; $52AB: $C9


    ld hl, $0020                                  ; $52AC: $21 $20 $00
    add hl, bc                                    ; $52AF: $09
    bit 1, [hl]                                   ; $52B0: $CB $4E
    jp z, Jump_002_52BC                           ; $52B2: $CA $BC $52

    inc hl                                        ; $52B5: $23
    inc hl                                        ; $52B6: $23
    inc hl                                        ; $52B7: $23
    set 0, [hl]                                   ; $52B8: $CB $C6
    set 4, [hl]                                   ; $52BA: $CB $E6

Jump_002_52BC:
    call Call_002_5583                            ; $52BC: $CD $83 $55
    call Call_002_559D                            ; $52BF: $CD $9D $55
    ld a, $5E                                     ; $52C2: $3E $5E
    call Call_000_2EB0                            ; $52C4: $CD $B0 $2E
    ld a, $1E                                     ; $52C7: $3E $1E
    call Call_002_5BBE                            ; $52C9: $CD $BE $5B
    call Call_002_5BE0                            ; $52CC: $CD $E0 $5B
    call Call_000_3023                            ; $52CF: $CD $23 $30
    call Call_000_3797                            ; $52D2: $CD $97 $37
    call Call_000_2EE0                            ; $52D5: $CD $E0 $2E
    ld hl, $0023                                  ; $52D8: $21 $23 $00
    add hl, bc                                    ; $52DB: $09
    bit 0, [hl]                                   ; $52DC: $CB $46
    jp nz, Jump_002_52F0                          ; $52DE: $C2 $F0 $52

    ld hl, $0000                                  ; $52E1: $21 $00 $00
    call Call_000_3007                            ; $52E4: $CD $07 $30
    ld hl, $FD00                                  ; $52E7: $21 $00 $FD
    call Call_000_305D                            ; $52EA: $CD $5D $30
    jp Jump_002_52FC                              ; $52ED: $C3 $FC $52


Jump_002_52F0:
    ld hl, $0000                                  ; $52F0: $21 $00 $00
    call Call_000_3007                            ; $52F3: $CD $07 $30
    ld hl, $FA00                                  ; $52F6: $21 $00 $FA
    call Call_000_305D                            ; $52F9: $CD $5D $30

Jump_002_52FC:
    scf                                           ; $52FC: $37
    ret                                           ; $52FD: $C9


    ld hl, $0020                                  ; $52FE: $21 $20 $00
    add hl, bc                                    ; $5301: $09
    bit 1, [hl]                                   ; $5302: $CB $4E
    jp z, Jump_002_530E                           ; $5304: $CA $0E $53

    inc hl                                        ; $5307: $23
    inc hl                                        ; $5308: $23
    inc hl                                        ; $5309: $23
    set 0, [hl]                                   ; $530A: $CB $C6
    set 4, [hl]                                   ; $530C: $CB $E6

Jump_002_530E:
    call Call_002_5583                            ; $530E: $CD $83 $55
    call Call_002_559D                            ; $5311: $CD $9D $55
    ld a, $5E                                     ; $5314: $3E $5E
    call Call_000_2EB0                            ; $5316: $CD $B0 $2E
    ld a, $1E                                     ; $5319: $3E $1E
    call Call_002_5BBE                            ; $531B: $CD $BE $5B
    call Call_002_5BE0                            ; $531E: $CD $E0 $5B
    call Call_000_3023                            ; $5321: $CD $23 $30
    call Call_000_3797                            ; $5324: $CD $97 $37
    call Call_000_2EE0                            ; $5327: $CD $E0 $2E
    ld hl, $0023                                  ; $532A: $21 $23 $00
    add hl, bc                                    ; $532D: $09
    bit 0, [hl]                                   ; $532E: $CB $46
    jp nz, Jump_002_5353                          ; $5330: $C2 $53 $53

    ld hl, $FD00                                  ; $5333: $21 $00 $FD
    call Call_000_305D                            ; $5336: $CD $5D $30
    ld hl, $0020                                  ; $5339: $21 $20 $00
    add hl, bc                                    ; $533C: $09
    bit 3, [hl]                                   ; $533D: $CB $5E
    jr nz, jr_002_534A                            ; $533F: $20 $09

    ld hl, $0320                                  ; $5341: $21 $20 $03
    call Call_000_3007                            ; $5344: $CD $07 $30
    jp Jump_002_5370                              ; $5347: $C3 $70 $53


jr_002_534A:
    ld hl, $0320                                  ; $534A: $21 $20 $03
    call Call_000_3035                            ; $534D: $CD $35 $30
    jp Jump_002_5370                              ; $5350: $C3 $70 $53


Jump_002_5353:
    ld hl, $FF00                                  ; $5353: $21 $00 $FF
    call Call_000_305D                            ; $5356: $CD $5D $30
    ld hl, $0020                                  ; $5359: $21 $20 $00
    add hl, bc                                    ; $535C: $09
    bit 3, [hl]                                   ; $535D: $CB $5E
    jr nz, jr_002_536A                            ; $535F: $20 $09

    ld hl, $0600                                  ; $5361: $21 $00 $06
    call Call_000_3007                            ; $5364: $CD $07 $30
    jp Jump_002_5370                              ; $5367: $C3 $70 $53


jr_002_536A:
    ld hl, $0600                                  ; $536A: $21 $00 $06
    call Call_000_3035                            ; $536D: $CD $35 $30

Jump_002_5370:
    scf                                           ; $5370: $37
    ret                                           ; $5371: $C9


    call Call_002_5583                            ; $5372: $CD $83 $55
    call Call_002_559D                            ; $5375: $CD $9D $55
    ld a, $60                                     ; $5378: $3E $60
    call Call_000_2EB0                            ; $537A: $CD $B0 $2E
    call Call_002_5BE0                            ; $537D: $CD $E0 $5B
    call Call_000_3023                            ; $5380: $CD $23 $30
    call Call_000_3797                            ; $5383: $CD $97 $37
    call Call_000_2EE0                            ; $5386: $CD $E0 $2E
    ld hl, $0020                                  ; $5389: $21 $20 $00
    add hl, bc                                    ; $538C: $09
    ld a, [hl]                                    ; $538D: $7E
    ld hl, $0023                                  ; $538E: $21 $23 $00
    add hl, bc                                    ; $5391: $09
    bit 0, [hl]                                   ; $5392: $CB $46
    jp nz, Jump_002_539D                          ; $5394: $C2 $9D $53

    ld hl, $0500                                  ; $5397: $21 $00 $05
    jp Jump_002_53A0                              ; $539A: $C3 $A0 $53


Jump_002_539D:
    ld hl, $0600                                  ; $539D: $21 $00 $06

Jump_002_53A0:
    bit 3, a                                      ; $53A0: $CB $5F
    jr nz, jr_002_53A9                            ; $53A2: $20 $05

    call Call_000_3007                            ; $53A4: $CD $07 $30
    jr jr_002_53AC                                ; $53A7: $18 $03

jr_002_53A9:
    call Call_000_3035                            ; $53A9: $CD $35 $30

jr_002_53AC:
    ld hl, $0600                                  ; $53AC: $21 $00 $06
    call Call_000_305D                            ; $53AF: $CD $5D $30
    scf                                           ; $53B2: $37
    ret                                           ; $53B3: $C9


    call Call_002_5583                            ; $53B4: $CD $83 $55
    call Call_002_559D                            ; $53B7: $CD $9D $55
    ld a, $62                                     ; $53BA: $3E $62
    call Call_000_2EB0                            ; $53BC: $CD $B0 $2E
    call Call_002_5BE0                            ; $53BF: $CD $E0 $5B
    call Call_000_3023                            ; $53C2: $CD $23 $30
    call Call_000_3898                            ; $53C5: $CD $98 $38
    call Call_000_2EE0                            ; $53C8: $CD $E0 $2E
    scf                                           ; $53CB: $37
    ret                                           ; $53CC: $C9


    ld hl, $006C                                  ; $53CD: $21 $6C $00
    add hl, bc                                    ; $53D0: $09
    ld [hl], $00                                  ; $53D1: $36 $00
    ld hl, $006D                                  ; $53D3: $21 $6D $00
    add hl, bc                                    ; $53D6: $09
    ld [hl], $FF                                  ; $53D7: $36 $FF
    ld hl, $009C                                  ; $53D9: $21 $9C $00
    add hl, bc                                    ; $53DC: $09
    ld [hl], $01                                  ; $53DD: $36 $01
    ld a, $1E                                     ; $53DF: $3E $1E
    call Call_000_2EB0                            ; $53E1: $CD $B0 $2E
    call Call_002_559D                            ; $53E4: $CD $9D $55
    call Call_002_5BE0                            ; $53E7: $CD $E0 $5B
    call Call_000_3023                            ; $53EA: $CD $23 $30
    call Call_000_3797                            ; $53ED: $CD $97 $37
    call Call_000_2EE0                            ; $53F0: $CD $E0 $2E
    scf                                           ; $53F3: $37
    ret                                           ; $53F4: $C9


    ld hl, $006C                                  ; $53F5: $21 $6C $00
    add hl, bc                                    ; $53F8: $09
    ld [hl], $00                                  ; $53F9: $36 $00
    ld hl, $006D                                  ; $53FB: $21 $6D $00
    add hl, bc                                    ; $53FE: $09
    ld [hl], $FF                                  ; $53FF: $36 $FF
    ld hl, $009C                                  ; $5401: $21 $9C $00
    add hl, bc                                    ; $5404: $09
    ld [hl], $02                                  ; $5405: $36 $02
    ld a, $1E                                     ; $5407: $3E $1E
    call Call_000_2EB0                            ; $5409: $CD $B0 $2E
    call Call_002_559D                            ; $540C: $CD $9D $55
    call Call_002_5BE0                            ; $540F: $CD $E0 $5B
    call Call_000_3023                            ; $5412: $CD $23 $30
    call Call_000_3797                            ; $5415: $CD $97 $37
    call Call_000_2EE0                            ; $5418: $CD $E0 $2E
    scf                                           ; $541B: $37
    ret                                           ; $541C: $C9


    call Call_002_5583                            ; $541D: $CD $83 $55
    ld hl, $0095                                  ; $5420: $21 $95 $00
    add hl, bc                                    ; $5423: $09
    ld [hl], $01                                  ; $5424: $36 $01
    ld a, $70                                     ; $5426: $3E $70
    call Call_000_2EB0                            ; $5428: $CD $B0 $2E
    ld hl, $0023                                  ; $542B: $21 $23 $00
    add hl, bc                                    ; $542E: $09
    bit 0, [hl]                                   ; $542F: $CB $46
    jp nz, Jump_002_543A                          ; $5431: $C2 $3A $54

    ld hl, $0200                                  ; $5434: $21 $00 $02
    jp Jump_002_543D                              ; $5437: $C3 $3D $54


Jump_002_543A:
    ld hl, $0400                                  ; $543A: $21 $00 $04

Jump_002_543D:
    call Call_000_3007                            ; $543D: $CD $07 $30
    ld hl, $FC00                                  ; $5440: $21 $00 $FC
    call Call_000_305D                            ; $5443: $CD $5D $30
    scf                                           ; $5446: $37
    ret                                           ; $5447: $C9


    call Call_002_5583                            ; $5448: $CD $83 $55
    ld hl, $0095                                  ; $544B: $21 $95 $00
    add hl, bc                                    ; $544E: $09
    ld [hl], $01                                  ; $544F: $36 $01
    ld a, $70                                     ; $5451: $3E $70
    call Call_000_2EB0                            ; $5453: $CD $B0 $2E
    ld hl, $0023                                  ; $5456: $21 $23 $00
    add hl, bc                                    ; $5459: $09
    bit 0, [hl]                                   ; $545A: $CB $46
    jp nz, Jump_002_5465                          ; $545C: $C2 $65 $54

    ld hl, $FE00                                  ; $545F: $21 $00 $FE
    jp Jump_002_5468                              ; $5462: $C3 $68 $54


Jump_002_5465:
    ld hl, $FC00                                  ; $5465: $21 $00 $FC

Jump_002_5468:
    call Call_000_3007                            ; $5468: $CD $07 $30
    ld hl, $FC00                                  ; $546B: $21 $00 $FC
    call Call_000_305D                            ; $546E: $CD $5D $30
    scf                                           ; $5471: $37
    ret                                           ; $5472: $C9


    call Call_002_5583                            ; $5473: $CD $83 $55
    call Call_002_559D                            ; $5476: $CD $9D $55
    ld a, $64                                     ; $5479: $3E $64
    call Call_000_2EB0                            ; $547B: $CD $B0 $2E
    call Call_000_3783                            ; $547E: $CD $83 $37
    call Call_002_5BE0                            ; $5481: $CD $E0 $5B
    call Call_000_3023                            ; $5484: $CD $23 $30
    call Call_000_3797                            ; $5487: $CD $97 $37
    ld hl, $F400                                  ; $548A: $21 $00 $F4
    call Call_000_305D                            ; $548D: $CD $5D $30
    ld hl, $0000                                  ; $5490: $21 $00 $00
    call Call_000_2FEB                            ; $5493: $CD $EB $2F
    jp Jump_002_54D1                              ; $5496: $C3 $D1 $54


    call Call_002_5583                            ; $5499: $CD $83 $55
    call Call_002_559D                            ; $549C: $CD $9D $55
    ld hl, $0021                                  ; $549F: $21 $21 $00
    add hl, bc                                    ; $54A2: $09
    set 7, [hl]                                   ; $54A3: $CB $FE
    ld a, $64                                     ; $54A5: $3E $64
    call Call_000_2EB0                            ; $54A7: $CD $B0 $2E
    call Call_002_5BE0                            ; $54AA: $CD $E0 $5B
    call Call_000_2EE0                            ; $54AD: $CD $E0 $2E
    ld hl, $0100                                  ; $54B0: $21 $00 $01
    call Call_000_2FCF                            ; $54B3: $CD $CF $2F
    ld hl, $0023                                  ; $54B6: $21 $23 $00
    add hl, bc                                    ; $54B9: $09
    bit 0, [hl]                                   ; $54BA: $CB $46
    jp nz, Jump_002_54C5                          ; $54BC: $C2 $C5 $54

    ld hl, $0000                                  ; $54BF: $21 $00 $00
    jp Jump_002_54C8                              ; $54C2: $C3 $C8 $54


Jump_002_54C5:
    ld hl, $0000                                  ; $54C5: $21 $00 $00

Jump_002_54C8:
    call Call_000_3007                            ; $54C8: $CD $07 $30
    ld hl, $FE00                                  ; $54CB: $21 $00 $FE
    call Call_000_30FF                            ; $54CE: $CD $FF $30

Jump_002_54D1:
    scf                                           ; $54D1: $37
    ret                                           ; $54D2: $C9


    push bc                                       ; $54D3: $C5
    ld hl, $002D                                  ; $54D4: $21 $2D $00
    add hl, bc                                    ; $54D7: $09
    ld a, [hl]                                    ; $54D8: $7E
    or a                                          ; $54D9: $B7
    jr nz, jr_002_54E1                            ; $54DA: $20 $05

    ld a, [$D744]                                 ; $54DC: $FA $44 $D7
    jr jr_002_54E4                                ; $54DF: $18 $03

jr_002_54E1:
    ld a, [$D704]                                 ; $54E1: $FA $04 $D7

jr_002_54E4:
    ld h, $00                                     ; $54E4: $26 $00
    ld l, a                                       ; $54E6: $6F
    push hl                                       ; $54E7: $E5
    ld hl, $0004                                  ; $54E8: $21 $04 $00
    add hl, de                                    ; $54EB: $19
    ld a, [hl]                                    ; $54EC: $7E
    ld b, $00                                     ; $54ED: $06 $00
    ld c, a                                       ; $54EF: $4F
    ld a, b                                       ; $54F0: $78
    cpl                                           ; $54F1: $2F
    ld b, a                                       ; $54F2: $47
    ld a, c                                       ; $54F3: $79
    cpl                                           ; $54F4: $2F
    ld c, a                                       ; $54F5: $4F
    inc c                                         ; $54F6: $0C
    jr nz, jr_002_54FA                            ; $54F7: $20 $01

    inc b                                         ; $54F9: $04

jr_002_54FA:
    pop hl                                        ; $54FA: $E1
    add hl, bc                                    ; $54FB: $09
    sla l                                         ; $54FC: $CB $25
    rl h                                          ; $54FE: $CB $14
    sla l                                         ; $5500: $CB $25
    rl h                                          ; $5502: $CB $14
    sla l                                         ; $5504: $CB $25
    rl h                                          ; $5506: $CB $14
    sla l                                         ; $5508: $CB $25
    rl h                                          ; $550A: $CB $14
    call Call_000_2F0B                            ; $550C: $CD $0B $2F
    pop bc                                        ; $550F: $C1
    scf                                           ; $5510: $37
    ccf                                           ; $5511: $3F
    ret                                           ; $5512: $C9


    call Call_002_5583                            ; $5513: $CD $83 $55
    call Call_002_559D                            ; $5516: $CD $9D $55
    ld a, $66                                     ; $5519: $3E $66
    call Call_000_2EB0                            ; $551B: $CD $B0 $2E
    call Call_000_3023                            ; $551E: $CD $23 $30
    call Call_000_3797                            ; $5521: $CD $97 $37
    call Call_000_2EE0                            ; $5524: $CD $E0 $2E
    ld hl, $0180                                  ; $5527: $21 $80 $01
    call Call_000_3007                            ; $552A: $CD $07 $30
    ld hl, $0023                                  ; $552D: $21 $23 $00
    add hl, bc                                    ; $5530: $09
    bit 0, [hl]                                   ; $5531: $CB $46
    jp nz, Jump_002_553C                          ; $5533: $C2 $3C $55

    ld hl, $FD00                                  ; $5536: $21 $00 $FD
    jp Jump_002_553F                              ; $5539: $C3 $3F $55


Jump_002_553C:
    ld hl, $FC00                                  ; $553C: $21 $00 $FC

Jump_002_553F:
    call Call_000_305D                            ; $553F: $CD $5D $30
    scf                                           ; $5542: $37
    ret                                           ; $5543: $C9


    call Call_002_5583                            ; $5544: $CD $83 $55
    call Call_002_559D                            ; $5547: $CD $9D $55
    ld a, $68                                     ; $554A: $3E $68
    call Call_000_2EB0                            ; $554C: $CD $B0 $2E
    call Call_000_3023                            ; $554F: $CD $23 $30
    call Call_000_3797                            ; $5552: $CD $97 $37
    call Call_000_2EE0                            ; $5555: $CD $E0 $2E
    ld hl, $0020                                  ; $5558: $21 $20 $00
    add hl, bc                                    ; $555B: $09
    ld a, [hl]                                    ; $555C: $7E
    ld hl, $0023                                  ; $555D: $21 $23 $00
    add hl, bc                                    ; $5560: $09
    bit 0, [hl]                                   ; $5561: $CB $46
    jp nz, Jump_002_556C                          ; $5563: $C2 $6C $55

    ld hl, $0180                                  ; $5566: $21 $80 $01
    jp Jump_002_556F                              ; $5569: $C3 $6F $55


Jump_002_556C:
    ld hl, $0180                                  ; $556C: $21 $80 $01

Jump_002_556F:
    bit 3, a                                      ; $556F: $CB $5F
    jr nz, jr_002_5578                            ; $5571: $20 $05

    call Call_000_3007                            ; $5573: $CD $07 $30
    jr jr_002_557B                                ; $5576: $18 $03

jr_002_5578:
    call Call_000_3035                            ; $5578: $CD $35 $30

jr_002_557B:
    ld hl, $FC00                                  ; $557B: $21 $00 $FC
    call Call_000_305D                            ; $557E: $CD $5D $30
    scf                                           ; $5581: $37
    ret                                           ; $5582: $C9


Call_002_5583:
    ld hl, $0060                                  ; $5583: $21 $60 $00
    add hl, bc                                    ; $5586: $09
    ld a, [hl]                                    ; $5587: $7E
    ld hl, $0020                                  ; $5588: $21 $20 $00
    add hl, bc                                    ; $558B: $09
    or a                                          ; $558C: $B7
    jp z, Jump_002_559C                           ; $558D: $CA $9C $55

    inc hl                                        ; $5590: $23
    inc hl                                        ; $5591: $23
    inc hl                                        ; $5592: $23
    bit 4, [hl]                                   ; $5593: $CB $66
    jp nz, Jump_002_559C                          ; $5595: $C2 $9C $55

    dec hl                                        ; $5598: $2B
    dec hl                                        ; $5599: $2B
    set 7, [hl]                                   ; $559A: $CB $FE

Jump_002_559C:
    ret                                           ; $559C: $C9


Call_002_559D:
    ld hl, $0023                                  ; $559D: $21 $23 $00
    add hl, bc                                    ; $55A0: $09
    bit 1, [hl]                                   ; $55A1: $CB $4E
    jp nz, Jump_002_55B5                          ; $55A3: $C2 $B5 $55

    bit 7, [hl]                                   ; $55A6: $CB $7E
    jp nz, Jump_002_55B0                          ; $55A8: $C2 $B0 $55

    ld a, $0B                                     ; $55AB: $3E $0B
    jp Jump_002_55B7                              ; $55AD: $C3 $B7 $55


Jump_002_55B0:
    ld a, $0C                                     ; $55B0: $3E $0C
    jp Jump_002_55B7                              ; $55B2: $C3 $B7 $55


Jump_002_55B5:
    ld a, $13                                     ; $55B5: $3E $13

Jump_002_55B7:
    call Call_000_1360                            ; $55B7: $CD $60 $13
    ret                                           ; $55BA: $C9


    ld a, $6A                                     ; $55BB: $3E $6A
    jp Jump_002_55C2                              ; $55BD: $C3 $C2 $55


    ld a, $6C                                     ; $55C0: $3E $6C

Jump_002_55C2:
    push af                                       ; $55C2: $F5
    ld a, $0C                                     ; $55C3: $3E $0C
    call Call_000_1360                            ; $55C5: $CD $60 $13
    pop af                                        ; $55C8: $F1
    call Call_000_2EB0                            ; $55C9: $CD $B0 $2E
    call Call_002_5630                            ; $55CC: $CD $30 $56
    call Call_002_5BE0                            ; $55CF: $CD $E0 $5B
    call Call_000_3023                            ; $55D2: $CD $23 $30
    call Call_000_3898                            ; $55D5: $CD $98 $38
    call Call_000_3783                            ; $55D8: $CD $83 $37
    scf                                           ; $55DB: $37
    ret                                           ; $55DC: $C9


    ld a, $6E                                     ; $55DD: $3E $6E
    push af                                       ; $55DF: $F5
    ld a, $0C                                     ; $55E0: $3E $0C
    call Call_000_1360                            ; $55E2: $CD $60 $13
    pop af                                        ; $55E5: $F1
    call Call_000_2EB0                            ; $55E6: $CD $B0 $2E
    call Call_000_2637                            ; $55E9: $CD $37 $26
    ld hl, $0020                                  ; $55EC: $21 $20 $00
    add hl, bc                                    ; $55EF: $09
    bit 3, [hl]                                   ; $55F0: $CB $5E
    jr nz, jr_002_55FD                            ; $55F2: $20 $09

    call Call_002_5664                            ; $55F4: $CD $64 $56
    ld hl, $F000                                  ; $55F7: $21 $00 $F0
    call Call_000_2F95                            ; $55FA: $CD $95 $2F

jr_002_55FD:
    call Call_002_5BE0                            ; $55FD: $CD $E0 $5B
    call Call_000_3023                            ; $5600: $CD $23 $30
    call Call_000_3898                            ; $5603: $CD $98 $38
    call Call_000_3783                            ; $5606: $CD $83 $37
    scf                                           ; $5609: $37
    ret                                           ; $560A: $C9


    ld a, $6E                                     ; $560B: $3E $6E
    push af                                       ; $560D: $F5
    ld a, $0C                                     ; $560E: $3E $0C
    call Call_000_1360                            ; $5610: $CD $60 $13
    pop af                                        ; $5613: $F1
    call Call_000_2EB0                            ; $5614: $CD $B0 $2E
    call Call_000_2637                            ; $5617: $CD $37 $26
    ld hl, $0020                                  ; $561A: $21 $20 $00
    add hl, bc                                    ; $561D: $09
    bit 3, [hl]                                   ; $561E: $CB $5E
    jr nz, jr_002_5622                            ; $5620: $20 $00

jr_002_5622:
    call Call_002_5BE0                            ; $5622: $CD $E0 $5B
    call Call_000_3023                            ; $5625: $CD $23 $30
    call Call_000_3898                            ; $5628: $CD $98 $38
    call Call_000_3783                            ; $562B: $CD $83 $37
    scf                                           ; $562E: $37
    ret                                           ; $562F: $C9


Call_002_5630:
    call Call_002_5674                            ; $5630: $CD $74 $56
    ld hl, $0082                                  ; $5633: $21 $82 $00
    add hl, bc                                    ; $5636: $09
    ld a, [hl]                                    ; $5637: $7E
    cp $04                                        ; $5638: $FE $04
    jr z, jr_002_563E                             ; $563A: $28 $02

    jr jr_002_564F                                ; $563C: $18 $11

jr_002_563E:
    ld hl, $0085                                  ; $563E: $21 $85 $00
    add hl, bc                                    ; $5641: $09
    ld a, [hl]                                    ; $5642: $7E
    cp $4E                                        ; $5643: $FE $4E
    jr nz, jr_002_564F                            ; $5645: $20 $08

    ld hl, $F800                                  ; $5647: $21 $00 $F8
    call Call_000_2F95                            ; $564A: $CD $95 $2F
    jr jr_002_5663                                ; $564D: $18 $14

jr_002_564F:
    ld a, [$C2E2]                                 ; $564F: $FA $E2 $C2
    or a                                          ; $5652: $B7
    jr nz, jr_002_565D                            ; $5653: $20 $08

    ld hl, $E800                                  ; $5655: $21 $00 $E8
    call Call_000_2F95                            ; $5658: $CD $95 $2F
    jr jr_002_5663                                ; $565B: $18 $06

jr_002_565D:
    ld hl, $E800                                  ; $565D: $21 $00 $E8
    call Call_000_2FB1                            ; $5660: $CD $B1 $2F

jr_002_5663:
    ret                                           ; $5663: $C9


Call_002_5664:
    push bc                                       ; $5664: $C5
    ld hl, $0099                                  ; $5665: $21 $99 $00
    add hl, bc                                    ; $5668: $09
    push hl                                       ; $5669: $E5
    pop bc                                        ; $566A: $C1
    ld hl, $0004                                  ; $566B: $21 $04 $00
    add hl, de                                    ; $566E: $19
    ld a, [bc]                                    ; $566F: $0A
    inc bc                                        ; $5670: $03
    ld [hl+], a                                   ; $5671: $22
    pop bc                                        ; $5672: $C1
    ret                                           ; $5673: $C9


Call_002_5674:
    push bc                                       ; $5674: $C5
    ld hl, $0099                                  ; $5675: $21 $99 $00
    add hl, bc                                    ; $5678: $09
    push hl                                       ; $5679: $E5
    pop bc                                        ; $567A: $C1
    ld hl, $0004                                  ; $567B: $21 $04 $00
    add hl, de                                    ; $567E: $19
    ld a, [bc]                                    ; $567F: $0A
    inc bc                                        ; $5680: $03
    ld [hl+], a                                   ; $5681: $22
    inc hl                                        ; $5682: $23
    ld a, [bc]                                    ; $5683: $0A
    ld [hl], a                                    ; $5684: $77
    pop bc                                        ; $5685: $C1
    ret                                           ; $5686: $C9


    ld a, [$C2E2]                                 ; $5687: $FA $E2 $C2
    cp $01                                        ; $568A: $FE $01
    jp nz, Jump_002_56F0                          ; $568C: $C2 $F0 $56

    ld hl, $006F                                  ; $568F: $21 $6F $00
    add hl, bc                                    ; $5692: $09
    ld [hl], $0F                                  ; $5693: $36 $0F
    ld hl, $0021                                  ; $5695: $21 $21 $00
    add hl, bc                                    ; $5698: $09
    res 7, [hl]                                   ; $5699: $CB $BE
    res 1, [hl]                                   ; $569B: $CB $8E
    ld a, $72                                     ; $569D: $3E $72
    call Call_000_2EB0                            ; $569F: $CD $B0 $2E
    ld a, $02                                     ; $56A2: $3E $02
    ld [$C2E2], a                                 ; $56A4: $EA $E2 $C2

Jump_002_56A7:
    call Call_000_0417                            ; $56A7: $CD $17 $04
    ld a, [$C2E2]                                 ; $56AA: $FA $E2 $C2
    cp $00                                        ; $56AD: $FE $00
    jp z, Jump_002_56F0                           ; $56AF: $CA $F0 $56

    cp $03                                        ; $56B2: $FE $03
    jp nz, Jump_002_56A7                          ; $56B4: $C2 $A7 $56

    ld a, $14                                     ; $56B7: $3E $14
    ld [$C2E8], a                                 ; $56B9: $EA $E8 $C2
    ld hl, $006E                                  ; $56BC: $21 $6E $00
    add hl, bc                                    ; $56BF: $09
    ld [hl], $50                                  ; $56C0: $36 $50
    ld a, $1B                                     ; $56C2: $3E $1B
    call Call_000_1360                            ; $56C4: $CD $60 $13
    call Call_000_2E12                            ; $56C7: $CD $12 $2E
    ld hl, $0021                                  ; $56CA: $21 $21 $00
    add hl, bc                                    ; $56CD: $09
    set 1, [hl]                                   ; $56CE: $CB $CE
    ld hl, $001C                                  ; $56D0: $21 $1C $00
    add hl, de                                    ; $56D3: $19
    ld [hl], $FF                                  ; $56D4: $36 $FF
    inc hl                                        ; $56D6: $23
    ld [hl], $FF                                  ; $56D7: $36 $FF
    call Call_002_5664                            ; $56D9: $CD $64 $56
    ld hl, $F000                                  ; $56DC: $21 $00 $F0
    call Call_000_2F95                            ; $56DF: $CD $95 $2F
    ld hl, $0095                                  ; $56E2: $21 $95 $00
    add hl, bc                                    ; $56E5: $09
    ld [hl], $01                                  ; $56E6: $36 $01
    call Call_000_2EE0                            ; $56E8: $CD $E0 $2E
    call Call_000_3783                            ; $56EB: $CD $83 $37
    scf                                           ; $56EE: $37
    ret                                           ; $56EF: $C9


Jump_002_56F0:
    xor a                                         ; $56F0: $AF
    ret                                           ; $56F1: $C9


    ld a, [$C2E2]                                 ; $56F2: $FA $E2 $C2
    cp $01                                        ; $56F5: $FE $01
    jp nz, Jump_002_5765                          ; $56F7: $C2 $65 $57

    ld hl, $006F                                  ; $56FA: $21 $6F $00
    add hl, bc                                    ; $56FD: $09
    ld [hl], $0F                                  ; $56FE: $36 $0F
    ld hl, $0021                                  ; $5700: $21 $21 $00
    add hl, bc                                    ; $5703: $09
    res 7, [hl]                                   ; $5704: $CB $BE
    res 1, [hl]                                   ; $5706: $CB $8E
    ld hl, $003C                                  ; $5708: $21 $3C $00
    add hl, bc                                    ; $570B: $09
    ld [hl], $74                                  ; $570C: $36 $74
    ld a, $02                                     ; $570E: $3E $02
    ld [$C2E2], a                                 ; $5710: $EA $E2 $C2

Jump_002_5713:
    call Call_000_0417                            ; $5713: $CD $17 $04
    ld a, [$C2E2]                                 ; $5716: $FA $E2 $C2
    cp $00                                        ; $5719: $FE $00
    jp z, Jump_002_5765                           ; $571B: $CA $65 $57

    cp $03                                        ; $571E: $FE $03
    jp nz, Jump_002_5713                          ; $5720: $C2 $13 $57

    ld a, $14                                     ; $5723: $3E $14
    ld [$C2E8], a                                 ; $5725: $EA $E8 $C2
    ld hl, $006E                                  ; $5728: $21 $6E $00
    add hl, bc                                    ; $572B: $09
    ld [hl], $50                                  ; $572C: $36 $50
    ld a, $1B                                     ; $572E: $3E $1B
    call Call_000_1360                            ; $5730: $CD $60 $13
    call Call_000_2E12                            ; $5733: $CD $12 $2E
    ld hl, $0021                                  ; $5736: $21 $21 $00
    add hl, bc                                    ; $5739: $09
    set 1, [hl]                                   ; $573A: $CB $CE
    ld hl, $001C                                  ; $573C: $21 $1C $00
    add hl, de                                    ; $573F: $19
    ld [hl], $FF                                  ; $5740: $36 $FF
    inc hl                                        ; $5742: $23
    ld [hl], $FF                                  ; $5743: $36 $FF
    ld hl, $0008                                  ; $5745: $21 $08 $00
    add hl, de                                    ; $5748: $19
    ld [hl], $00                                  ; $5749: $36 $00
    inc hl                                        ; $574B: $23
    ld [hl], $00                                  ; $574C: $36 $00
    ld hl, $000A                                  ; $574E: $21 $0A $00
    add hl, de                                    ; $5751: $19
    ld [hl], $00                                  ; $5752: $36 $00
    inc hl                                        ; $5754: $23
    ld [hl], $00                                  ; $5755: $36 $00
    ld hl, $0095                                  ; $5757: $21 $95 $00
    add hl, bc                                    ; $575A: $09
    ld [hl], $01                                  ; $575B: $36 $01
    call Call_000_2EE0                            ; $575D: $CD $E0 $2E
    call Call_000_3783                            ; $5760: $CD $83 $37
    scf                                           ; $5763: $37
    ret                                           ; $5764: $C9


Jump_002_5765:
    xor a                                         ; $5765: $AF
    ret                                           ; $5766: $C9


    ld a, $76                                     ; $5767: $3E $76
    jp Jump_002_577B                              ; $5769: $C3 $7B $57


    ld a, $78                                     ; $576C: $3E $78
    jp Jump_002_577B                              ; $576E: $C3 $7B $57


    ld a, $7A                                     ; $5771: $3E $7A
    jp Jump_002_577B                              ; $5773: $C3 $7B $57


    ld a, $7C                                     ; $5776: $3E $7C
    jp Jump_002_577B                              ; $5778: $C3 $7B $57


Jump_002_577B:
    call Call_000_2EB0                            ; $577B: $CD $B0 $2E
    ld a, [$C2E7]                                 ; $577E: $FA $E7 $C2
    or a                                          ; $5781: $B7
    jr z, jr_002_5790                             ; $5782: $28 $0C

    call Call_002_559D                            ; $5784: $CD $9D $55
    call Call_002_5BE0                            ; $5787: $CD $E0 $5B
    call Call_000_3023                            ; $578A: $CD $23 $30
    call Call_000_3797                            ; $578D: $CD $97 $37

jr_002_5790:
    ld hl, $0095                                  ; $5790: $21 $95 $00
    add hl, bc                                    ; $5793: $09
    ld [hl], $01                                  ; $5794: $36 $01
    call Call_000_3783                            ; $5796: $CD $83 $37
    scf                                           ; $5799: $37
    ret                                           ; $579A: $C9


Call_002_579B:
    ld hl, $002D                                  ; $579B: $21 $2D $00
    add hl, bc                                    ; $579E: $09
    bit 0, [hl]                                   ; $579F: $CB $46
    jr nz, jr_002_57B8                            ; $57A1: $20 $15

    ld hl, $0074                                  ; $57A3: $21 $74 $00
    add hl, bc                                    ; $57A6: $09
    ld a, [hl]                                    ; $57A7: $7E
    cp $01                                        ; $57A8: $FE $01
    jr z, jr_002_57AE                             ; $57AA: $28 $02

    jr jr_002_57B3                                ; $57AC: $18 $05

jr_002_57AE:
    ld hl, $D764                                  ; $57AE: $21 $64 $D7
    jr jr_002_57CB                                ; $57B1: $18 $18

jr_002_57B3:
    ld hl, $D7E4                                  ; $57B3: $21 $E4 $D7
    jr jr_002_57CB                                ; $57B6: $18 $13

jr_002_57B8:
    ld hl, $0074                                  ; $57B8: $21 $74 $00
    add hl, bc                                    ; $57BB: $09
    ld a, [hl]                                    ; $57BC: $7E
    cp $01                                        ; $57BD: $FE $01
    jr z, jr_002_57C3                             ; $57BF: $28 $02

    jr jr_002_57C8                                ; $57C1: $18 $05

jr_002_57C3:
    ld hl, $D724                                  ; $57C3: $21 $24 $D7
    jr jr_002_57CB                                ; $57C6: $18 $03

jr_002_57C8:
    ld hl, $D7A4                                  ; $57C8: $21 $A4 $D7

jr_002_57CB:
    ret                                           ; $57CB: $C9


Call_002_57CC:
    push bc                                       ; $57CC: $C5
    push de                                       ; $57CD: $D5
    call Call_000_2641                            ; $57CE: $CD $41 $26
    jp nz, Jump_002_57DD                          ; $57D1: $C2 $DD $57

    ld hl, $0020                                  ; $57D4: $21 $20 $00
    add hl, bc                                    ; $57D7: $09
    res 2, [hl]                                   ; $57D8: $CB $96
    jp Jump_002_57E3                              ; $57DA: $C3 $E3 $57


Jump_002_57DD:
    ld hl, $0020                                  ; $57DD: $21 $20 $00
    add hl, bc                                    ; $57E0: $09
    set 2, [hl]                                   ; $57E1: $CB $D6

Jump_002_57E3:
    ld hl, $0072                                  ; $57E3: $21 $72 $00
    add hl, bc                                    ; $57E6: $09
    bit 6, [hl]                                   ; $57E7: $CB $76
    jp nz, Jump_002_57F4                          ; $57E9: $C2 $F4 $57

    bit 0, [hl]                                   ; $57EC: $CB $46
    jp nz, Jump_002_583E                          ; $57EE: $C2 $3E $58

    jp Jump_002_5B09                              ; $57F1: $C3 $09 $5B


Jump_002_57F4:
    ld hl, $0021                                  ; $57F4: $21 $21 $00
    add hl, bc                                    ; $57F7: $09
    bit 7, [hl]                                   ; $57F8: $CB $7E
    jp nz, Jump_002_5B09                          ; $57FA: $C2 $09 $5B

    ld a, [$C2E2]                                 ; $57FD: $FA $E2 $C2
    or a                                          ; $5800: $B7
    jp z, Jump_002_5810                           ; $5801: $CA $10 $58

    ld hl, $0072                                  ; $5804: $21 $72 $00
    add hl, bc                                    ; $5807: $09
    bit 0, [hl]                                   ; $5808: $CB $46
    jp nz, Jump_002_583E                          ; $580A: $C2 $3E $58

    jp Jump_002_5B09                              ; $580D: $C3 $09 $5B


Jump_002_5810:
    call Call_002_579B                            ; $5810: $CD $9B $57
    ld d, [hl]                                    ; $5813: $56
    inc hl                                        ; $5814: $23
    ld e, [hl]                                    ; $5815: $5E
    inc hl                                        ; $5816: $23
    ld a, [hl+]                                   ; $5817: $2A
    push af                                       ; $5818: $F5
    ld a, [hl]                                    ; $5819: $7E
    ld hl, $0020                                  ; $581A: $21 $20 $00
    add hl, bc                                    ; $581D: $09
    set 3, [hl]                                   ; $581E: $CB $DE
    inc hl                                        ; $5820: $23
    inc hl                                        ; $5821: $23
    res 4, [hl]                                   ; $5822: $CB $A6
    res 5, [hl]                                   ; $5824: $CB $AE
    res 6, [hl]                                   ; $5826: $CB $B6
    res 7, [hl]                                   ; $5828: $CB $BE
    inc hl                                        ; $582A: $23
    inc hl                                        ; $582B: $23
    ld [hl], a                                    ; $582C: $77
    dec hl                                        ; $582D: $2B
    pop af                                        ; $582E: $F1
    ld [hl], a                                    ; $582F: $77
    ld a, e                                       ; $5830: $7B
    cp $14                                        ; $5831: $FE $14
    jp z, Jump_002_5AFD                           ; $5833: $CA $FD $5A

    ld a, d                                       ; $5836: $7A
    or a                                          ; $5837: $B7
    jp z, Jump_002_5B09                           ; $5838: $CA $09 $5B

    jp Jump_002_5923                              ; $583B: $C3 $23 $59


Jump_002_583E:
    ld hl, $0072                                  ; $583E: $21 $72 $00
    add hl, bc                                    ; $5841: $09
    bit 5, [hl]                                   ; $5842: $CB $6E
    jp z, Jump_002_5B09                           ; $5844: $CA $09 $5B

    ld hl, $0087                                  ; $5847: $21 $87 $00
    add hl, bc                                    ; $584A: $09
    ld a, [hl]                                    ; $584B: $7E
    or a                                          ; $584C: $B7
    jp z, Jump_002_5B09                           ; $584D: $CA $09 $5B

    ld d, [hl]                                    ; $5850: $56
    inc hl                                        ; $5851: $23
    ld e, [hl]                                    ; $5852: $5E
    inc hl                                        ; $5853: $23
    ld a, [hl+]                                   ; $5854: $2A
    push af                                       ; $5855: $F5
    ld a, [hl+]                                   ; $5856: $2A
    push af                                       ; $5857: $F5
    ld a, [hl+]                                   ; $5858: $2A
    ld [$C2E5], a                                 ; $5859: $EA $E5 $C2
    ld a, [hl+]                                   ; $585C: $2A
    ld [$C2E6], a                                 ; $585D: $EA $E6 $C2
    pop af                                        ; $5860: $F1
    ld hl, $0020                                  ; $5861: $21 $20 $00
    add hl, bc                                    ; $5864: $09
    res 3, [hl]                                   ; $5865: $CB $9E
    inc hl                                        ; $5867: $23
    inc hl                                        ; $5868: $23
    res 6, [hl]                                   ; $5869: $CB $B6
    res 7, [hl]                                   ; $586B: $CB $BE
    inc hl                                        ; $586D: $23
    inc hl                                        ; $586E: $23
    ld [hl], a                                    ; $586F: $77
    dec hl                                        ; $5870: $2B
    pop af                                        ; $5871: $F1
    ld [hl], a                                    ; $5872: $77
    ld a, e                                       ; $5873: $7B
    cp $17                                        ; $5874: $FE $17
    jp z, Jump_002_5881                           ; $5876: $CA $81 $58

    cp $17                                        ; $5879: $FE $17
    jp nc, Jump_002_58CB                          ; $587B: $D2 $CB $58

    jp Jump_002_58DB                              ; $587E: $C3 $DB $58


Jump_002_5881:
    ld a, [$C2E2]                                 ; $5881: $FA $E2 $C2
    cp $01                                        ; $5884: $FE $01
    jp nz, Jump_002_5B09                          ; $5886: $C2 $09 $5B

    ld hl, $007D                                  ; $5889: $21 $7D $00
    add hl, bc                                    ; $588C: $09
    bit 1, [hl]                                   ; $588D: $CB $4E
    jp nz, Jump_002_58CB                          ; $588F: $C2 $CB $58

    ld a, [$C2E3]                                 ; $5892: $FA $E3 $C2
    cp $00                                        ; $5895: $FE $00
    jp z, Jump_002_58AA                           ; $5897: $CA $AA $58

    cp $01                                        ; $589A: $FE $01
    jr z, jr_002_58BC                             ; $589C: $28 $1E

    ld hl, $0021                                  ; $589E: $21 $21 $00
    add hl, bc                                    ; $58A1: $09
    bit 7, [hl]                                   ; $58A2: $CB $7E
    jp nz, Jump_002_5B09                          ; $58A4: $C2 $09 $5B

    jp Jump_002_58CB                              ; $58A7: $C3 $CB $58


Jump_002_58AA:
    ld hl, $0020                                  ; $58AA: $21 $20 $00
    add hl, bc                                    ; $58AD: $09
    bit 2, [hl]                                   ; $58AE: $CB $56
    jp nz, Jump_002_5B09                          ; $58B0: $C2 $09 $5B

    inc hl                                        ; $58B3: $23
    bit 7, [hl]                                   ; $58B4: $CB $7E
    jp nz, Jump_002_5B09                          ; $58B6: $C2 $09 $5B

    jp Jump_002_58CB                              ; $58B9: $C3 $CB $58


jr_002_58BC:
    ld hl, $0020                                  ; $58BC: $21 $20 $00
    add hl, bc                                    ; $58BF: $09
    bit 2, [hl]                                   ; $58C0: $CB $56
    jp z, Jump_002_5B09                           ; $58C2: $CA $09 $5B

    inc hl                                        ; $58C5: $23
    bit 7, [hl]                                   ; $58C6: $CB $7E
    jp nz, Jump_002_5B09                          ; $58C8: $C2 $09 $5B

Jump_002_58CB:
    ld hl, $0021                                  ; $58CB: $21 $21 $00
    add hl, bc                                    ; $58CE: $09
    res 3, [hl]                                   ; $58CF: $CB $9E
    inc hl                                        ; $58D1: $23
    res 3, [hl]                                   ; $58D2: $CB $9E
    res 4, [hl]                                   ; $58D4: $CB $A6
    res 5, [hl]                                   ; $58D6: $CB $AE
    jp Jump_002_5AFD                              ; $58D8: $C3 $FD $5A


Jump_002_58DB:
    ld hl, $0021                                  ; $58DB: $21 $21 $00
    add hl, bc                                    ; $58DE: $09
    bit 7, [hl]                                   ; $58DF: $CB $7E
    jp z, Jump_002_58ED                           ; $58E1: $CA $ED $58

    inc hl                                        ; $58E4: $23
    inc hl                                        ; $58E5: $23
    res 1, [hl]                                   ; $58E6: $CB $8E
    res 6, [hl]                                   ; $58E8: $CB $B6
    jp Jump_002_5B09                              ; $58EA: $C3 $09 $5B


Jump_002_58ED:
    ld hl, $0022                                  ; $58ED: $21 $22 $00
    add hl, bc                                    ; $58F0: $09
    bit 4, [hl]                                   ; $58F1: $CB $66
    jp nz, Jump_002_5900                          ; $58F3: $C2 $00 $59

    bit 5, [hl]                                   ; $58F6: $CB $6E
    jp nz, Jump_002_590C                          ; $58F8: $C2 $0C $59

    res 3, [hl]                                   ; $58FB: $CB $9E
    jp Jump_002_5923                              ; $58FD: $C3 $23 $59


Jump_002_5900:
    ld hl, $0023                                  ; $5900: $21 $23 $00
    add hl, bc                                    ; $5903: $09
    bit 2, [hl]                                   ; $5904: $CB $56
    jp nz, Jump_002_5955                          ; $5906: $C2 $55 $59

    jp Jump_002_5915                              ; $5909: $C3 $15 $59


Jump_002_590C:
    ld hl, $0023                                  ; $590C: $21 $23 $00
    add hl, bc                                    ; $590F: $09
    bit 3, [hl]                                   ; $5910: $CB $5E
    jp nz, Jump_002_5955                          ; $5912: $C2 $55 $59

Jump_002_5915:
    ld hl, $0022                                  ; $5915: $21 $22 $00
    add hl, bc                                    ; $5918: $09
    set 3, [hl]                                   ; $5919: $CB $DE
    inc hl                                        ; $591B: $23
    res 1, [hl]                                   ; $591C: $CB $8E
    res 6, [hl]                                   ; $591E: $CB $B6
    jp Jump_002_5B09                              ; $5920: $C3 $09 $5B


Jump_002_5923:
    call Call_002_5BEF                            ; $5923: $CD $EF $5B
    jr nc, jr_002_592A                            ; $5926: $30 $02

    jr jr_002_5950                                ; $5928: $18 $26

jr_002_592A:
    ld hl, $0021                                  ; $592A: $21 $21 $00
    add hl, bc                                    ; $592D: $09
    bit 3, [hl]                                   ; $592E: $CB $5E
    jp z, Jump_002_5962                           ; $5930: $CA $62 $59

    bit 5, [hl]                                   ; $5933: $CB $6E
    jp z, Jump_002_5944                           ; $5935: $CA $44 $59

    ld hl, $0023                                  ; $5938: $21 $23 $00
    add hl, bc                                    ; $593B: $09
    bit 3, [hl]                                   ; $593C: $CB $5E
    jp nz, Jump_002_5955                          ; $593E: $C2 $55 $59

    jp Jump_002_5950                              ; $5941: $C3 $50 $59


Jump_002_5944:
    ld hl, $0023                                  ; $5944: $21 $23 $00
    add hl, bc                                    ; $5947: $09
    bit 2, [hl]                                   ; $5948: $CB $56
    jp nz, Jump_002_5955                          ; $594A: $C2 $55 $59

    jp Jump_002_5950                              ; $594D: $C3 $50 $59


Jump_002_5950:
jr_002_5950:
    ld e, $00                                     ; $5950: $1E $00
    jp Jump_002_5962                              ; $5952: $C3 $62 $59


Jump_002_5955:
    ld hl, $0021                                  ; $5955: $21 $21 $00
    add hl, bc                                    ; $5958: $09
    res 3, [hl]                                   ; $5959: $CB $9E
    inc hl                                        ; $595B: $23
    res 3, [hl]                                   ; $595C: $CB $9E
    res 4, [hl]                                   ; $595E: $CB $A6
    res 5, [hl]                                   ; $5960: $CB $AE

Jump_002_5962:
    push de                                       ; $5962: $D5
    call Call_002_5B0D                            ; $5963: $CD $0D $5B
    pop de                                        ; $5966: $D1
    ld a, e                                       ; $5967: $7B
    cp $0B                                        ; $5968: $FE $0B
    jp z, Jump_002_5AFD                           ; $596A: $CA $FD $5A

    cp $0C                                        ; $596D: $FE $0C
    jp z, Jump_002_5AFD                           ; $596F: $CA $FD $5A

    cp $0D                                        ; $5972: $FE $0D
    jp z, Jump_002_5AFD                           ; $5974: $CA $FD $5A

    cp $0E                                        ; $5977: $FE $0E
    jp z, Jump_002_5AFD                           ; $5979: $CA $FD $5A

    cp $08                                        ; $597C: $FE $08
    jp z, Jump_002_5AFD                           ; $597E: $CA $FD $5A

    cp $09                                        ; $5981: $FE $09
    jp z, Jump_002_5AFD                           ; $5983: $CA $FD $5A

    cp $0A                                        ; $5986: $FE $0A
    jp z, Jump_002_5AFD                           ; $5988: $CA $FD $5A

    cp $13                                        ; $598B: $FE $13
    jp z, Jump_002_5AFD                           ; $598D: $CA $FD $5A

    cp $14                                        ; $5990: $FE $14
    jp z, Jump_002_5AFD                           ; $5992: $CA $FD $5A

    cp $11                                        ; $5995: $FE $11
    jp z, Jump_002_5AFD                           ; $5997: $CA $FD $5A

    cp $12                                        ; $599A: $FE $12
    jp z, Jump_002_5AFD                           ; $599C: $CA $FD $5A

    ld hl, $0060                                  ; $599F: $21 $60 $00
    add hl, bc                                    ; $59A2: $09
    ld a, [hl]                                    ; $59A3: $7E
    or a                                          ; $59A4: $B7
    jp nz, Jump_002_5A15                          ; $59A5: $C2 $15 $5A

    ld hl, $0021                                  ; $59A8: $21 $21 $00
    add hl, bc                                    ; $59AB: $09
    res 3, [hl]                                   ; $59AC: $CB $9E
    ld hl, $0088                                  ; $59AE: $21 $88 $00
    add hl, bc                                    ; $59B1: $09
    ld a, [hl]                                    ; $59B2: $7E
    ld e, a                                       ; $59B3: $5F
    ld a, [$C2E2]                                 ; $59B4: $FA $E2 $C2
    or a                                          ; $59B7: $B7
    jp nz, Jump_002_59C7                          ; $59B8: $C2 $C7 $59

    ld hl, $007D                                  ; $59BB: $21 $7D $00
    add hl, bc                                    ; $59BE: $09
    bit 1, [hl]                                   ; $59BF: $CB $4E
    jp nz, Jump_002_59E4                          ; $59C1: $C2 $E4 $59

    jp Jump_002_5AEE                              ; $59C4: $C3 $EE $5A


Jump_002_59C7:
    ld a, e                                       ; $59C7: $7B
    cp $0F                                        ; $59C8: $FE $0F
    jp z, Jump_002_5AC3                           ; $59CA: $CA $C3 $5A

    cp $15                                        ; $59CD: $FE $15
    jp z, Jump_002_5AFD                           ; $59CF: $CA $FD $5A

    cp $16                                        ; $59D2: $FE $16
    jp z, Jump_002_5AFD                           ; $59D4: $CA $FD $5A

    cp $13                                        ; $59D7: $FE $13
    jp z, Jump_002_5AFD                           ; $59D9: $CA $FD $5A

    cp $14                                        ; $59DC: $FE $14
    jp z, Jump_002_5AFD                           ; $59DE: $CA $FD $5A

    jp Jump_002_5AEE                              ; $59E1: $C3 $EE $5A


Jump_002_59E4:
    ld a, e                                       ; $59E4: $7B
    cp $0B                                        ; $59E5: $FE $0B
    jp z, Jump_002_5AFD                           ; $59E7: $CA $FD $5A

    cp $0C                                        ; $59EA: $FE $0C
    jp z, Jump_002_5AFD                           ; $59EC: $CA $FD $5A

    cp $0D                                        ; $59EF: $FE $0D
    jp z, Jump_002_5AFD                           ; $59F1: $CA $FD $5A

    cp $0E                                        ; $59F4: $FE $0E
    jp z, Jump_002_5AFD                           ; $59F6: $CA $FD $5A

    cp $0F                                        ; $59F9: $FE $0F
    jp z, Jump_002_5AC3                           ; $59FB: $CA $C3 $5A

    cp $15                                        ; $59FE: $FE $15
    jp z, Jump_002_5AFD                           ; $5A00: $CA $FD $5A

    cp $16                                        ; $5A03: $FE $16
    jp z, Jump_002_5AFD                           ; $5A05: $CA $FD $5A

    cp $13                                        ; $5A08: $FE $13
    jp z, Jump_002_5AFD                           ; $5A0A: $CA $FD $5A

    cp $14                                        ; $5A0D: $FE $14
    jp z, Jump_002_5AFD                           ; $5A0F: $CA $FD $5A

    jp Jump_002_5AEE                              ; $5A12: $C3 $EE $5A


Jump_002_5A15:
    ld a, e                                       ; $5A15: $7B
    cp $00                                        ; $5A16: $FE $00
    jp nz, Jump_002_5A24                          ; $5A18: $C2 $24 $5A

    call Call_002_5BA1                            ; $5A1B: $CD $A1 $5B
    jp z, Jump_002_5AD1                           ; $5A1E: $CA $D1 $5A

    jp Jump_002_5AFD                              ; $5A21: $C3 $FD $5A


Jump_002_5A24:
    call Call_000_3973                            ; $5A24: $CD $73 $39
    jp z, Jump_002_5A5B                           ; $5A27: $CA $5B $5A

    ld a, e                                       ; $5A2A: $7B
    cp $0B                                        ; $5A2B: $FE $0B
    jp z, Jump_002_5AFD                           ; $5A2D: $CA $FD $5A

    cp $0C                                        ; $5A30: $FE $0C
    jp z, Jump_002_5AFD                           ; $5A32: $CA $FD $5A

    cp $0D                                        ; $5A35: $FE $0D
    jp z, Jump_002_5AFD                           ; $5A37: $CA $FD $5A

    cp $0E                                        ; $5A3A: $FE $0E
    jp z, Jump_002_5AFD                           ; $5A3C: $CA $FD $5A

    cp $0F                                        ; $5A3F: $FE $0F
    jp z, Jump_002_5AC3                           ; $5A41: $CA $C3 $5A

    cp $15                                        ; $5A44: $FE $15
    jp z, Jump_002_5AFD                           ; $5A46: $CA $FD $5A

    cp $16                                        ; $5A49: $FE $16
    jp z, Jump_002_5AFD                           ; $5A4B: $CA $FD $5A

    cp $13                                        ; $5A4E: $FE $13
    jp z, Jump_002_5AFD                           ; $5A50: $CA $FD $5A

    cp $14                                        ; $5A53: $FE $14
    jp z, Jump_002_5AFD                           ; $5A55: $CA $FD $5A

    jp Jump_002_5AEE                              ; $5A58: $C3 $EE $5A


Jump_002_5A5B:
    ld a, e                                       ; $5A5B: $7B
    ld hl, $0020                                  ; $5A5C: $21 $20 $00
    add hl, bc                                    ; $5A5F: $09
    bit 2, [hl]                                   ; $5A60: $CB $56
    jp z, Jump_002_5A9C                           ; $5A62: $CA $9C $5A

    cp $13                                        ; $5A65: $FE $13
    jp z, Jump_002_5AFD                           ; $5A67: $CA $FD $5A

    bit 3, [hl]                                   ; $5A6A: $CB $5E
    jp nz, Jump_002_5A8A                          ; $5A6C: $C2 $8A $5A

    ld hl, $007D                                  ; $5A6F: $21 $7D $00
    add hl, bc                                    ; $5A72: $09
    bit 1, [hl]                                   ; $5A73: $CB $4E
    jp nz, Jump_002_5A8A                          ; $5A75: $C2 $8A $5A

    cp $0F                                        ; $5A78: $FE $0F
    jp z, Jump_002_5AC3                           ; $5A7A: $CA $C3 $5A

    cp $15                                        ; $5A7D: $FE $15
    jp z, Jump_002_5AFD                           ; $5A7F: $CA $FD $5A

    cp $16                                        ; $5A82: $FE $16
    jp z, Jump_002_5AFD                           ; $5A84: $CA $FD $5A

    jp Jump_002_5AF3                              ; $5A87: $C3 $F3 $5A


Jump_002_5A8A:
    cp $0F                                        ; $5A8A: $FE $0F
    jp z, Jump_002_5AC3                           ; $5A8C: $CA $C3 $5A

    cp $15                                        ; $5A8F: $FE $15
    jp z, Jump_002_5AFD                           ; $5A91: $CA $FD $5A

    cp $16                                        ; $5A94: $FE $16
    jp z, Jump_002_5AFD                           ; $5A96: $CA $FD $5A

    jp Jump_002_5AEE                              ; $5A99: $C3 $EE $5A


Jump_002_5A9C:
    bit 3, [hl]                                   ; $5A9C: $CB $5E
    jp nz, Jump_002_5ABB                          ; $5A9E: $C2 $BB $5A

    ld hl, $007D                                  ; $5AA1: $21 $7D $00
    add hl, bc                                    ; $5AA4: $09
    bit 1, [hl]                                   ; $5AA5: $CB $4E
    jp nz, Jump_002_5ABB                          ; $5AA7: $C2 $BB $5A

    cp $06                                        ; $5AAA: $FE $06
    jp z, Jump_002_5AFD                           ; $5AAC: $CA $FD $5A

    ld hl, $0021                                  ; $5AAF: $21 $21 $00
    add hl, bc                                    ; $5AB2: $09
    bit 5, [hl]                                   ; $5AB3: $CB $6E
    jp nz, Jump_002_5AF8                          ; $5AB5: $C2 $F8 $5A

    jp Jump_002_5AFD                              ; $5AB8: $C3 $FD $5A


Jump_002_5ABB:
    cp $0F                                        ; $5ABB: $FE $0F
    jp z, Jump_002_5AC3                           ; $5ABD: $CA $C3 $5A

    jp Jump_002_5AFD                              ; $5AC0: $C3 $FD $5A


Jump_002_5AC3:
    ld hl, $0020                                  ; $5AC3: $21 $20 $00
    add hl, bc                                    ; $5AC6: $09
    bit 2, [hl]                                   ; $5AC7: $CB $56
    jp nz, Jump_002_5AFD                          ; $5AC9: $C2 $FD $5A

    ld e, $10                                     ; $5ACC: $1E $10
    jp Jump_002_5AFD                              ; $5ACE: $C3 $FD $5A


Jump_002_5AD1:
    ld hl, $0020                                  ; $5AD1: $21 $20 $00
    add hl, bc                                    ; $5AD4: $09
    bit 2, [hl]                                   ; $5AD5: $CB $56
    jp z, Jump_002_5ADF                           ; $5AD7: $CA $DF $5A

    ld e, $02                                     ; $5ADA: $1E $02
    jp Jump_002_5AFD                              ; $5ADC: $C3 $FD $5A


Jump_002_5ADF:
    ld e, $01                                     ; $5ADF: $1E $01
    jp Jump_002_5AFD                              ; $5AE1: $C3 $FD $5A


    ld e, $03                                     ; $5AE4: $1E $03
    jp Jump_002_5AFD                              ; $5AE6: $C3 $FD $5A


    ld e, $04                                     ; $5AE9: $1E $04
    jp Jump_002_5AFD                              ; $5AEB: $C3 $FD $5A


Jump_002_5AEE:
    ld e, $08                                     ; $5AEE: $1E $08
    jp Jump_002_5AFD                              ; $5AF0: $C3 $FD $5A


Jump_002_5AF3:
    ld e, $07                                     ; $5AF3: $1E $07
    jp Jump_002_5AFD                              ; $5AF5: $C3 $FD $5A


Jump_002_5AF8:
    ld e, $05                                     ; $5AF8: $1E $05
    jp Jump_002_5AFD                              ; $5AFA: $C3 $FD $5A


Jump_002_5AFD:
    ld a, e                                       ; $5AFD: $7B
    ld hl, $003D                                  ; $5AFE: $21 $3D $00
    add hl, bc                                    ; $5B01: $09
    ld [hl], a                                    ; $5B02: $77
    sla a                                         ; $5B03: $CB $27
    scf                                           ; $5B05: $37
    pop de                                        ; $5B06: $D1
    pop bc                                        ; $5B07: $C1
    ret                                           ; $5B08: $C9


Jump_002_5B09:
    or a                                          ; $5B09: $B7
    pop de                                        ; $5B0A: $D1
    pop bc                                        ; $5B0B: $C1
    ret                                           ; $5B0C: $C9


Call_002_5B0D:
    ld hl, $0020                                  ; $5B0D: $21 $20 $00
    add hl, bc                                    ; $5B10: $09
    bit 3, [hl]                                   ; $5B11: $CB $5E
    jr nz, jr_002_5B1C                            ; $5B13: $20 $07

    ld hl, $0087                                  ; $5B15: $21 $87 $00
    add hl, bc                                    ; $5B18: $09
    ld d, [hl]                                    ; $5B19: $56
    jr jr_002_5B20                                ; $5B1A: $18 $04

jr_002_5B1C:
    call Call_002_579B                            ; $5B1C: $CD $9B $57
    ld d, [hl]                                    ; $5B1F: $56

jr_002_5B20:
    ld a, [$C2DD]                                 ; $5B20: $FA $DD $C2
    or a                                          ; $5B23: $B7
    jp z, Jump_002_5B89                           ; $5B24: $CA $89 $5B

    call Call_002_5B8A                            ; $5B27: $CD $8A $5B
    ld hl, $003E                                  ; $5B2A: $21 $3E $00
    add hl, bc                                    ; $5B2D: $09
    ld [hl], $00                                  ; $5B2E: $36 $00
    ld hl, $002F                                  ; $5B30: $21 $2F $00
    add hl, bc                                    ; $5B33: $09
    bit 1, [hl]                                   ; $5B34: $CB $4E
    jr z, jr_002_5B42                             ; $5B36: $28 $0A

    ld hl, $0021                                  ; $5B38: $21 $21 $00
    add hl, bc                                    ; $5B3B: $09
    bit 4, [hl]                                   ; $5B3C: $CB $66
    jr nz, jr_002_5B42                            ; $5B3E: $20 $02

    srl d                                         ; $5B40: $CB $3A

jr_002_5B42:
    ld hl, $0021                                  ; $5B42: $21 $21 $00
    add hl, bc                                    ; $5B45: $09
    bit 3, [hl]                                   ; $5B46: $CB $5E
    jp z, Jump_002_5B65                           ; $5B48: $CA $65 $5B

    ld hl, $0020                                  ; $5B4B: $21 $20 $00
    add hl, bc                                    ; $5B4E: $09
    bit 3, [hl]                                   ; $5B4F: $CB $5E
    jr nz, jr_002_5B5F                            ; $5B51: $20 $0C

    ld hl, $007D                                  ; $5B53: $21 $7D $00
    add hl, bc                                    ; $5B56: $09
    bit 1, [hl]                                   ; $5B57: $CB $4E
    jp nz, Jump_002_5B5F                          ; $5B59: $C2 $5F $5B

    jp Jump_002_5B89                              ; $5B5C: $C3 $89 $5B


Jump_002_5B5F:
jr_002_5B5F:
    srl d                                         ; $5B5F: $CB $3A
    srl d                                         ; $5B61: $CB $3A
    srl d                                         ; $5B63: $CB $3A

Jump_002_5B65:
    ld a, d                                       ; $5B65: $7A
    or a                                          ; $5B66: $B7
    jr nz, jr_002_5B6B                            ; $5B67: $20 $02

    ld d, $01                                     ; $5B69: $16 $01

jr_002_5B6B:
    ld hl, $0060                                  ; $5B6B: $21 $60 $00
    add hl, bc                                    ; $5B6E: $09
    ld a, [hl]                                    ; $5B6F: $7E
    sub d                                         ; $5B70: $92
    jp nc, Jump_002_5B75                          ; $5B71: $D2 $75 $5B

    xor a                                         ; $5B74: $AF

Jump_002_5B75:
    ld [hl], a                                    ; $5B75: $77
    or a                                          ; $5B76: $B7
    jp nz, Jump_002_5B84                          ; $5B77: $C2 $84 $5B

    ld a, $0A                                     ; $5B7A: $3E $0A
    ld [$C2E9], a                                 ; $5B7C: $EA $E9 $C2
    ld a, $01                                     ; $5B7F: $3E $01
    ld [$C2EA], a                                 ; $5B81: $EA $EA $C2

Jump_002_5B84:
    ld hl, $003E                                  ; $5B84: $21 $3E $00
    add hl, bc                                    ; $5B87: $09
    ld [hl], d                                    ; $5B88: $72

Jump_002_5B89:
    ret                                           ; $5B89: $C9


Call_002_5B8A:
    push de                                       ; $5B8A: $D5
    ld a, d                                       ; $5B8B: $7A
    or a                                          ; $5B8C: $B7
    jr z, jr_002_5B9F                             ; $5B8D: $28 $10

    ld hl, $0021                                  ; $5B8F: $21 $21 $00
    add hl, bc                                    ; $5B92: $09
    ld a, [hl]                                    ; $5B93: $7E
    bit 3, a                                      ; $5B94: $CB $5F
    jr nz, jr_002_5B9A                            ; $5B96: $20 $02

    jr jr_002_5B9F                                ; $5B98: $18 $05

jr_002_5B9A:
    ld a, $01                                     ; $5B9A: $3E $01
    call Call_000_3353                            ; $5B9C: $CD $53 $33

jr_002_5B9F:
    pop de                                        ; $5B9F: $D1
    ret                                           ; $5BA0: $C9


Call_002_5BA1:
    call Call_000_3973                            ; $5BA1: $CD $73 $39
    jp nz, Jump_002_5BAD                          ; $5BA4: $C2 $AD $5B

    ld a, $01                                     ; $5BA7: $3E $01
    or a                                          ; $5BA9: $B7
    jp Jump_002_5BBD                              ; $5BAA: $C3 $BD $5B


Jump_002_5BAD:
    ld hl, $0021                                  ; $5BAD: $21 $21 $00
    add hl, bc                                    ; $5BB0: $09
    res 3, [hl]                                   ; $5BB1: $CB $9E
    ld hl, $006C                                  ; $5BB3: $21 $6C $00
    add hl, bc                                    ; $5BB6: $09
    ld [hl], $00                                  ; $5BB7: $36 $00
    inc hl                                        ; $5BB9: $23
    ld [hl], $FF                                  ; $5BBA: $36 $FF
    xor a                                         ; $5BBC: $AF

Jump_002_5BBD:
    ret                                           ; $5BBD: $C9


Call_002_5BBE:
    push af                                       ; $5BBE: $F5
    ld hl, $0060                                  ; $5BBF: $21 $60 $00
    add hl, bc                                    ; $5BC2: $09
    ld a, [hl]                                    ; $5BC3: $7E
    or a                                          ; $5BC4: $B7
    jp z, Jump_002_5BDE                           ; $5BC5: $CA $DE $5B

    ld hl, $0023                                  ; $5BC8: $21 $23 $00
    add hl, bc                                    ; $5BCB: $09
    bit 5, [hl]                                   ; $5BCC: $CB $6E
    jp nz, Jump_002_5BD4                          ; $5BCE: $C2 $D4 $5B

    jp Jump_002_5BDE                              ; $5BD1: $C3 $DE $5B


Jump_002_5BD4:
    pop af                                        ; $5BD4: $F1
    ld [$C2E9], a                                 ; $5BD5: $EA $E9 $C2
    ld a, $01                                     ; $5BD8: $3E $01
    ld [$C2EA], a                                 ; $5BDA: $EA $EA $C2
    ret                                           ; $5BDD: $C9


Jump_002_5BDE:
    pop af                                        ; $5BDE: $F1
    ret                                           ; $5BDF: $C9


Call_002_5BE0:
    ld hl, $007D                                  ; $5BE0: $21 $7D $00
    add hl, bc                                    ; $5BE3: $09
    bit 6, [hl]                                   ; $5BE4: $CB $76
    jp z, Jump_002_5BEE                           ; $5BE6: $CA $EE $5B

    ld a, $02                                     ; $5BE9: $3E $02
    ld [$C2EB], a                                 ; $5BEB: $EA $EB $C2

Jump_002_5BEE:
    ret                                           ; $5BEE: $C9


Call_002_5BEF:
    ld hl, $002F                                  ; $5BEF: $21 $2F $00
    add hl, bc                                    ; $5BF2: $09
    bit 1, [hl]                                   ; $5BF3: $CB $4E
    jr z, jr_002_5C06                             ; $5BF5: $28 $0F

    ld hl, $0020                                  ; $5BF7: $21 $20 $00
    add hl, bc                                    ; $5BFA: $09
    bit 1, [hl]                                   ; $5BFB: $CB $4E
    jr nz, jr_002_5C06                            ; $5BFD: $20 $07

    inc hl                                        ; $5BFF: $23
    bit 4, [hl]                                   ; $5C00: $CB $66
    jr nz, jr_002_5C06                            ; $5C02: $20 $02

    scf                                           ; $5C04: $37
    ret                                           ; $5C05: $C9


jr_002_5C06:
    scf                                           ; $5C06: $37
    ccf                                           ; $5C07: $3F
    ret                                           ; $5C08: $C9


    call Call_000_3783                            ; $5C09: $CD $83 $37
    call Call_000_2EE0                            ; $5C0C: $CD $E0 $2E
    call Call_000_2C9B                            ; $5C0F: $CD $9B $2C
    jp nz, Jump_002_5C5C                          ; $5C12: $C2 $5C $5C

    ld hl, $001C                                  ; $5C15: $21 $1C $00
    add hl, de                                    ; $5C18: $19
    ld a, [hl]                                    ; $5C19: $7E
    cp $00                                        ; $5C1A: $FE $00
    jp z, Jump_002_5C4F                           ; $5C1C: $CA $4F $5C

    cp $01                                        ; $5C1F: $FE $01
    jp nz, Jump_002_5C5C                          ; $5C21: $C2 $5C $5C

    ld [hl], $00                                  ; $5C24: $36 $00
    ld hl, $0023                                  ; $5C26: $21 $23 $00
    add hl, bc                                    ; $5C29: $09
    bit 0, [hl]                                   ; $5C2A: $CB $46
    jp nz, Jump_002_5C35                          ; $5C2C: $C2 $35 $5C

    ld hl, $0280                                  ; $5C2F: $21 $80 $02
    jp Jump_002_5C38                              ; $5C32: $C3 $38 $5C


Jump_002_5C35:
    ld hl, $0400                                  ; $5C35: $21 $00 $04

Jump_002_5C38:
    push hl                                       ; $5C38: $E5
    ld hl, $0020                                  ; $5C39: $21 $20 $00
    add hl, bc                                    ; $5C3C: $09
    bit 3, [hl]                                   ; $5C3D: $CB $5E
    jr nz, jr_002_5C48                            ; $5C3F: $20 $07

    pop hl                                        ; $5C41: $E1
    call Call_000_3007                            ; $5C42: $CD $07 $30
    jp Jump_002_5C5B                              ; $5C45: $C3 $5B $5C


jr_002_5C48:
    pop hl                                        ; $5C48: $E1
    call Call_000_3035                            ; $5C49: $CD $35 $30
    jp Jump_002_5C5B                              ; $5C4C: $C3 $5B $5C


Jump_002_5C4F:
    ld hl, $0040                                  ; $5C4F: $21 $40 $00
    call Call_000_30B0                            ; $5C52: $CD $B0 $30
    jp nc, Jump_002_5C5B                          ; $5C55: $D2 $5B $5C

    call Call_000_2DB6                            ; $5C58: $CD $B6 $2D

Jump_002_5C5B:
    ret                                           ; $5C5B: $C9


Jump_002_5C5C:
    jp Jump_000_2E25                              ; $5C5C: $C3 $25 $2E


    call Call_000_2EE0                            ; $5C5F: $CD $E0 $2E
    call Call_000_3517                            ; $5C62: $CD $17 $35
    jp c, Jump_002_5D8A                           ; $5C65: $DA $8A $5D

    ld hl, $0018                                  ; $5C68: $21 $18 $00
    add hl, de                                    ; $5C6B: $19
    ld a, [hl]                                    ; $5C6C: $7E
    cp $00                                        ; $5C6D: $FE $00
    jp z, Jump_002_5C89                           ; $5C6F: $CA $89 $5C

    cp $04                                        ; $5C72: $FE $04
    jp z, Jump_002_5CD1                           ; $5C74: $CA $D1 $5C

    cp $08                                        ; $5C77: $FE $08
    jp z, Jump_002_5CD4                           ; $5C79: $CA $D4 $5C

    cp $0C                                        ; $5C7C: $FE $0C
    jp z, Jump_002_5CE6                           ; $5C7E: $CA $E6 $5C

    cp $10                                        ; $5C81: $FE $10
    jp z, Jump_002_5D75                           ; $5C83: $CA $75 $5D

    jp Jump_002_5D87                              ; $5C86: $C3 $87 $5D


Jump_002_5C89:
    call Call_000_2CA9                            ; $5C89: $CD $A9 $2C
    jp nc, Jump_002_5D01                          ; $5C8C: $D2 $01 $5D

    inc hl                                        ; $5C8F: $23
    ld [hl], $FF                                  ; $5C90: $36 $FF
    jp Jump_002_5D01                              ; $5C92: $C3 $01 $5D


    call Call_000_2CA9                            ; $5C95: $CD $A9 $2C
    jp nc, Jump_002_5D87                          ; $5C98: $D2 $87 $5D

    inc hl                                        ; $5C9B: $23
    ld [hl], $FF                                  ; $5C9C: $36 $FF
    ld hl, $0023                                  ; $5C9E: $21 $23 $00
    add hl, bc                                    ; $5CA1: $09
    bit 0, [hl]                                   ; $5CA2: $CB $46
    jp nz, Jump_002_5CB6                          ; $5CA4: $C2 $B6 $5C

    ld hl, $0190                                  ; $5CA7: $21 $90 $01
    call Call_000_3007                            ; $5CAA: $CD $07 $30
    ld hl, $FB00                                  ; $5CAD: $21 $00 $FB
    call Call_000_305D                            ; $5CB0: $CD $5D $30
    jp Jump_002_5CC2                              ; $5CB3: $C3 $C2 $5C


Jump_002_5CB6:
    ld hl, $0180                                  ; $5CB6: $21 $80 $01
    call Call_000_3007                            ; $5CB9: $CD $07 $30
    ld hl, $FA00                                  ; $5CBC: $21 $00 $FA
    call Call_000_305D                            ; $5CBF: $CD $5D $30

Jump_002_5CC2:
    ld hl, $FF00                                  ; $5CC2: $21 $00 $FF
    call Call_000_2F42                            ; $5CC5: $CD $42 $2F
    ld hl, $0000                                  ; $5CC8: $21 $00 $00
    call Call_000_30FF                            ; $5CCB: $CD $FF $30
    jp Jump_002_5D87                              ; $5CCE: $C3 $87 $5D


Jump_002_5CD1:
    jp Jump_002_5D01                              ; $5CD1: $C3 $01 $5D


Jump_002_5CD4:
    ld hl, $0010                                  ; $5CD4: $21 $10 $00
    call Call_000_30B0                            ; $5CD7: $CD $B0 $30
    call Call_000_2CA9                            ; $5CDA: $CD $A9 $2C
    jp nc, Jump_002_5D87                          ; $5CDD: $D2 $87 $5D

    inc hl                                        ; $5CE0: $23
    ld [hl], $FF                                  ; $5CE1: $36 $FF
    jp Jump_002_5D87                              ; $5CE3: $C3 $87 $5D


Jump_002_5CE6:
    ld hl, $0000                                  ; $5CE6: $21 $00 $00
    add hl, de                                    ; $5CE9: $19
    bit 3, [hl]                                   ; $5CEA: $CB $5E
    jp z, Jump_002_5CFE                           ; $5CEC: $CA $FE $5C

    ld hl, $0021                                  ; $5CEF: $21 $21 $00
    add hl, bc                                    ; $5CF2: $09
    set 7, [hl]                                   ; $5CF3: $CB $FE
    ld hl, $FD00                                  ; $5CF5: $21 $00 $FD
    call Call_000_305D                            ; $5CF8: $CD $5D $30
    jp Jump_002_5D57                              ; $5CFB: $C3 $57 $5D


Jump_002_5CFE:
    jp Jump_002_5D57                              ; $5CFE: $C3 $57 $5D


Jump_002_5D01:
    ld hl, $0060                                  ; $5D01: $21 $60 $00
    call Call_000_30FF                            ; $5D04: $CD $FF $30
    jp nc, Jump_002_5D87                          ; $5D07: $D2 $87 $5D

    ld hl, $0010                                  ; $5D0A: $21 $10 $00
    call Call_000_30B0                            ; $5D0D: $CD $B0 $30
    call Call_000_3973                            ; $5D10: $CD $73 $39
    jp nz, Jump_002_5D1F                          ; $5D13: $C2 $1F $5D

    ld hl, $0060                                  ; $5D16: $21 $60 $00
    add hl, bc                                    ; $5D19: $09
    ld a, [hl]                                    ; $5D1A: $7E
    or a                                          ; $5D1B: $B7
    jp z, Jump_002_5D1F                           ; $5D1C: $CA $1F $5D

Jump_002_5D1F:
    ld a, $08                                     ; $5D1F: $3E $08
    ld h, $05                                     ; $5D21: $26 $05
    call Call_000_2CEA                            ; $5D23: $CD $EA $2C
    ld a, $05                                     ; $5D26: $3E $05
    call Call_000_3963                            ; $5D28: $CD $63 $39
    ld hl, $0023                                  ; $5D2B: $21 $23 $00
    add hl, bc                                    ; $5D2E: $09
    res 1, [hl]                                   ; $5D2F: $CB $8E
    res 6, [hl]                                   ; $5D31: $CB $B6
    jp Jump_002_5D8A                              ; $5D33: $C3 $8A $5D


    ld hl, $009C                                  ; $5D36: $21 $9C $00
    add hl, bc                                    ; $5D39: $09
    ld [hl], $00                                  ; $5D3A: $36 $00
    ld hl, $0021                                  ; $5D3C: $21 $21 $00
    add hl, bc                                    ; $5D3F: $09
    res 3, [hl]                                   ; $5D40: $CB $9E
    res 5, [hl]                                   ; $5D42: $CB $AE
    set 0, [hl]                                   ; $5D44: $CB $C6
    set 1, [hl]                                   ; $5D46: $CB $CE
    set 2, [hl]                                   ; $5D48: $CB $D6
    inc hl                                        ; $5D4A: $23
    set 6, [hl]                                   ; $5D4B: $CB $F6
    set 7, [hl]                                   ; $5D4D: $CB $FE
    inc hl                                        ; $5D4F: $23
    res 1, [hl]                                   ; $5D50: $CB $8E
    res 6, [hl]                                   ; $5D52: $CB $B6
    jp Jump_002_5D8A                              ; $5D54: $C3 $8A $5D


Jump_002_5D57:
    ld hl, $0060                                  ; $5D57: $21 $60 $00
    call Call_000_30FF                            ; $5D5A: $CD $FF $30
    jp nc, Jump_002_5D87                          ; $5D5D: $D2 $87 $5D

    ld hl, $0010                                  ; $5D60: $21 $10 $00
    call Call_000_30B0                            ; $5D63: $CD $B0 $30
    ld a, $10                                     ; $5D66: $3E $10
    ld h, $05                                     ; $5D68: $26 $05
    call Call_000_2CEA                            ; $5D6A: $CD $EA $2C
    ld a, $02                                     ; $5D6D: $3E $02
    call Call_000_3963                            ; $5D6F: $CD $63 $39
    jp Jump_002_5D8A                              ; $5D72: $C3 $8A $5D


Jump_002_5D75:
    ld hl, $0010                                  ; $5D75: $21 $10 $00
    call Call_000_30B0                            ; $5D78: $CD $B0 $30
    call Call_000_2CA9                            ; $5D7B: $CD $A9 $2C
    jp nc, Jump_002_5D87                          ; $5D7E: $D2 $87 $5D

    call Call_000_397A                            ; $5D81: $CD $7A $39
    jp Jump_002_5D8A                              ; $5D84: $C3 $8A $5D


Jump_002_5D87:
    jp Jump_000_2E25                              ; $5D87: $C3 $25 $2E


Jump_002_5D8A:
    ret                                           ; $5D8A: $C9


    call Call_000_2EE0                            ; $5D8B: $CD $E0 $2E
    call Call_000_3517                            ; $5D8E: $CD $17 $35
    jp c, Jump_002_5E39                           ; $5D91: $DA $39 $5E

    ld hl, $0018                                  ; $5D94: $21 $18 $00
    add hl, de                                    ; $5D97: $19
    ld a, [hl]                                    ; $5D98: $7E
    cp $00                                        ; $5D99: $FE $00
    jp z, Jump_002_5DB0                           ; $5D9B: $CA $B0 $5D

    cp $04                                        ; $5D9E: $FE $04
    jp z, Jump_002_5DB3                           ; $5DA0: $CA $B3 $5D

    cp $08                                        ; $5DA3: $FE $08
    jp z, Jump_002_5DC3                           ; $5DA5: $CA $C3 $5D

    cp $0C                                        ; $5DA8: $FE $0C
    jp z, Jump_002_5E2A                           ; $5DAA: $CA $2A $5E

    jp Jump_002_5E36                              ; $5DAD: $C3 $36 $5E


Jump_002_5DB0:
    jp Jump_002_5DEA                              ; $5DB0: $C3 $EA $5D


Jump_002_5DB3:
    call Call_000_2CA9                            ; $5DB3: $CD $A9 $2C
    jp nc, Jump_002_5E36                          ; $5DB6: $D2 $36 $5E

    inc hl                                        ; $5DB9: $23
    ld [hl], $FF                                  ; $5DBA: $36 $FF
    xor a                                         ; $5DBC: $AF
    ld [$C2AF], a                                 ; $5DBD: $EA $AF $C2
    jp Jump_002_5E36                              ; $5DC0: $C3 $36 $5E


Jump_002_5DC3:
    ld hl, $0000                                  ; $5DC3: $21 $00 $00
    add hl, de                                    ; $5DC6: $19
    bit 3, [hl]                                   ; $5DC7: $CB $5E
    jp z, Jump_002_5DE7                           ; $5DC9: $CA $E7 $5D

    push bc                                       ; $5DCC: $C5
    ld hl, $0008                                  ; $5DCD: $21 $08 $00
    add hl, de                                    ; $5DD0: $19
    ld b, [hl]                                    ; $5DD1: $46
    inc hl                                        ; $5DD2: $23
    ld c, [hl]                                    ; $5DD3: $4E
    push bc                                       ; $5DD4: $C5
    pop hl                                        ; $5DD5: $E1
    pop bc                                        ; $5DD6: $C1
    sra h                                         ; $5DD7: $CB $2C
    rr l                                          ; $5DD9: $CB $1D
    call Call_000_3051                            ; $5DDB: $CD $51 $30
    ld hl, $FD00                                  ; $5DDE: $21 $00 $FD
    call Call_000_305D                            ; $5DE1: $CD $5D $30
    jp Jump_002_5E12                              ; $5DE4: $C3 $12 $5E


Jump_002_5DE7:
    jp Jump_002_5E12                              ; $5DE7: $C3 $12 $5E


Jump_002_5DEA:
    ld hl, $0060                                  ; $5DEA: $21 $60 $00
    call Call_000_30FF                            ; $5DED: $CD $FF $30
    jp nc, Jump_002_5E36                          ; $5DF0: $D2 $36 $5E

    ld a, $04                                     ; $5DF3: $3E $04
    ld h, $09                                     ; $5DF5: $26 $09
    call Call_000_2CEA                            ; $5DF7: $CD $EA $2C
    jp z, Jump_002_5E39                           ; $5DFA: $CA $39 $5E

    ld a, $0E                                     ; $5DFD: $3E $0E
    call Call_000_1360                            ; $5DFF: $CD $60 $13
    ld a, $08                                     ; $5E02: $3E $08
    call Call_000_3963                            ; $5E04: $CD $63 $39
    ld hl, $0023                                  ; $5E07: $21 $23 $00
    add hl, bc                                    ; $5E0A: $09
    res 1, [hl]                                   ; $5E0B: $CB $8E
    res 6, [hl]                                   ; $5E0D: $CB $B6
    jp Jump_002_5E39                              ; $5E0F: $C3 $39 $5E


Jump_002_5E12:
    ld hl, $0060                                  ; $5E12: $21 $60 $00
    call Call_000_30FF                            ; $5E15: $CD $FF $30
    jp nc, Jump_002_5E36                          ; $5E18: $D2 $36 $5E

    ld a, $02                                     ; $5E1B: $3E $02
    call Call_000_3963                            ; $5E1D: $CD $63 $39
    ld a, $0C                                     ; $5E20: $3E $0C
    ld h, $05                                     ; $5E22: $26 $05
    call Call_000_2CEA                            ; $5E24: $CD $EA $2C
    jp Jump_002_5E39                              ; $5E27: $C3 $39 $5E


Jump_002_5E2A:
    call Call_000_2CA9                            ; $5E2A: $CD $A9 $2C
    jp nc, Jump_002_5E36                          ; $5E2D: $D2 $36 $5E

    call Call_000_397A                            ; $5E30: $CD $7A $39
    jp Jump_002_5E39                              ; $5E33: $C3 $39 $5E


Jump_002_5E36:
    jp Jump_000_2E25                              ; $5E36: $C3 $25 $2E


Jump_002_5E39:
    ret                                           ; $5E39: $C9


    call Call_000_2EE0                            ; $5E3A: $CD $E0 $2E
    call Call_000_3517                            ; $5E3D: $CD $17 $35
    jp c, Jump_002_5E97                           ; $5E40: $DA $97 $5E

    ld hl, $0018                                  ; $5E43: $21 $18 $00
    add hl, de                                    ; $5E46: $19
    ld a, [hl]                                    ; $5E47: $7E
    cp $00                                        ; $5E48: $FE $00
    jp z, Jump_002_5E5A                           ; $5E4A: $CA $5A $5E

    cp $04                                        ; $5E4D: $FE $04
    jp z, Jump_002_5E70                           ; $5E4F: $CA $70 $5E

    cp $08                                        ; $5E52: $FE $08
    jp z, Jump_002_5E88                           ; $5E54: $CA $88 $5E

    jp Jump_002_5E94                              ; $5E57: $C3 $94 $5E


Jump_002_5E5A:
    call Call_000_2CA9                            ; $5E5A: $CD $A9 $2C
    jp nc, Jump_002_5E94                          ; $5E5D: $D2 $94 $5E

    inc hl                                        ; $5E60: $23
    ld [hl], $05                                  ; $5E61: $36 $05
    ld a, $05                                     ; $5E63: $3E $05
    call Call_000_3963                            ; $5E65: $CD $63 $39
    ld a, $0E                                     ; $5E68: $3E $0E
    call Call_000_1360                            ; $5E6A: $CD $60 $13
    jp Jump_002_5E94                              ; $5E6D: $C3 $94 $5E


Jump_002_5E70:
    call Call_000_2CA9                            ; $5E70: $CD $A9 $2C
    jp nc, Jump_002_5E94                          ; $5E73: $D2 $94 $5E

    inc hl                                        ; $5E76: $23
    ld [hl], $14                                  ; $5E77: $36 $14
    xor a                                         ; $5E79: $AF
    ld [$C2AF], a                                 ; $5E7A: $EA $AF $C2
    ld hl, $0023                                  ; $5E7D: $21 $23 $00
    add hl, bc                                    ; $5E80: $09
    res 1, [hl]                                   ; $5E81: $CB $8E
    res 6, [hl]                                   ; $5E83: $CB $B6
    jp Jump_002_5E94                              ; $5E85: $C3 $94 $5E


Jump_002_5E88:
    call Call_000_2CA9                            ; $5E88: $CD $A9 $2C
    jp nc, Jump_002_5E94                          ; $5E8B: $D2 $94 $5E

    call Call_000_397A                            ; $5E8E: $CD $7A $39
    jp Jump_002_5E97                              ; $5E91: $C3 $97 $5E


Jump_002_5E94:
    jp Jump_000_2E25                              ; $5E94: $C3 $25 $2E


Jump_002_5E97:
    ret                                           ; $5E97: $C9


    call Call_000_2EE0                            ; $5E98: $CD $E0 $2E
    call Call_000_3517                            ; $5E9B: $CD $17 $35
    jp c, Jump_002_5FB2                           ; $5E9E: $DA $B2 $5F

    ld hl, $0018                                  ; $5EA1: $21 $18 $00
    add hl, de                                    ; $5EA4: $19
    ld a, [hl]                                    ; $5EA5: $7E
    cp $00                                        ; $5EA6: $FE $00
    jp z, Jump_002_5ECC                           ; $5EA8: $CA $CC $5E

    cp $04                                        ; $5EAB: $FE $04
    jp z, Jump_002_5EDF                           ; $5EAD: $CA $DF $5E

    cp $08                                        ; $5EB0: $FE $08
    jp z, Jump_002_5F06                           ; $5EB2: $CA $06 $5F

    cp $0C                                        ; $5EB5: $FE $0C
    jp z, Jump_002_5F09                           ; $5EB7: $CA $09 $5F

    cp $10                                        ; $5EBA: $FE $10
    jp z, Jump_002_5F18                           ; $5EBC: $CA $18 $5F

    cp $14                                        ; $5EBF: $FE $14
    jp z, Jump_002_5F24                           ; $5EC1: $CA $24 $5F

    cp $18                                        ; $5EC4: $FE $18
    jp z, Jump_002_5FA3                           ; $5EC6: $CA $A3 $5F

    jp Jump_002_5FAF                              ; $5EC9: $C3 $AF $5F


Jump_002_5ECC:
    ld hl, $000A                                  ; $5ECC: $21 $0A $00
    add hl, de                                    ; $5ECF: $19
    ld a, [hl]                                    ; $5ED0: $7E
    bit 7, a                                      ; $5ED1: $CB $7F
    jp nz, Jump_002_5F56                          ; $5ED3: $C2 $56 $5F

    ld hl, $0014                                  ; $5ED6: $21 $14 $00
    add hl, de                                    ; $5ED9: $19
    ld [hl], $08                                  ; $5EDA: $36 $08
    jp Jump_002_5F5C                              ; $5EDC: $C3 $5C $5F


Jump_002_5EDF:
    ld hl, $000A                                  ; $5EDF: $21 $0A $00
    add hl, de                                    ; $5EE2: $19
    ld a, [hl]                                    ; $5EE3: $7E
    bit 7, a                                      ; $5EE4: $CB $7F
    jp nz, Jump_002_5EF2                          ; $5EE6: $C2 $F2 $5E

    ld hl, $0014                                  ; $5EE9: $21 $14 $00
    add hl, de                                    ; $5EEC: $19
    ld [hl], $08                                  ; $5EED: $36 $08
    jp Jump_002_5F5C                              ; $5EEF: $C3 $5C $5F


Jump_002_5EF2:
    call Call_000_2CA9                            ; $5EF2: $CD $A9 $2C
    jp nc, Jump_002_5F56                          ; $5EF5: $D2 $56 $5F

    ld a, $AE                                     ; $5EF8: $3E $AE
    call Call_000_1360                            ; $5EFA: $CD $60 $13
    ld hl, $0014                                  ; $5EFD: $21 $14 $00
    add hl, de                                    ; $5F00: $19
    ld [hl], $18                                  ; $5F01: $36 $18
    jp Jump_002_5F56                              ; $5F03: $C3 $56 $5F


Jump_002_5F06:
    jp Jump_002_5F5C                              ; $5F06: $C3 $5C $5F


Jump_002_5F09:
    call Call_000_2CA9                            ; $5F09: $CD $A9 $2C
    jp nc, Jump_002_5F5C                          ; $5F0C: $D2 $5C $5F

    ld hl, $0014                                  ; $5F0F: $21 $14 $00
    add hl, de                                    ; $5F12: $19
    ld [hl], $04                                  ; $5F13: $36 $04
    jp Jump_002_5F5C                              ; $5F15: $C3 $5C $5F


Jump_002_5F18:
    call Call_000_2CA9                            ; $5F18: $CD $A9 $2C
    jp nc, Jump_002_5FAF                          ; $5F1B: $D2 $AF $5F

    inc hl                                        ; $5F1E: $23
    ld [hl], $FF                                  ; $5F1F: $36 $FF
    jp Jump_002_5FAF                              ; $5F21: $C3 $AF $5F


Jump_002_5F24:
    ld hl, $0000                                  ; $5F24: $21 $00 $00
    add hl, de                                    ; $5F27: $19
    bit 3, [hl]                                   ; $5F28: $CB $5E
    jp z, Jump_002_5F53                           ; $5F2A: $CA $53 $5F

    push bc                                       ; $5F2D: $C5
    ld hl, $0008                                  ; $5F2E: $21 $08 $00
    add hl, de                                    ; $5F31: $19
    ld b, [hl]                                    ; $5F32: $46
    inc hl                                        ; $5F33: $23
    ld c, [hl]                                    ; $5F34: $4E
    push bc                                       ; $5F35: $C5
    pop hl                                        ; $5F36: $E1
    pop bc                                        ; $5F37: $C1
    sra h                                         ; $5F38: $CB $2C
    rr l                                          ; $5F3A: $CB $1D
    call Call_000_3051                            ; $5F3C: $CD $51 $30
    ld hl, $009C                                  ; $5F3F: $21 $9C $00
    add hl, bc                                    ; $5F42: $09
    ld a, [hl]                                    ; $5F43: $7E
    sra a                                         ; $5F44: $CB $2F
    add $04                                       ; $5F46: $C6 $04
    cpl                                           ; $5F48: $2F
    inc a                                         ; $5F49: $3C
    ld h, a                                       ; $5F4A: $67
    ld l, $FF                                     ; $5F4B: $2E $FF
    call Call_000_305D                            ; $5F4D: $CD $5D $30
    jp Jump_002_5F90                              ; $5F50: $C3 $90 $5F


Jump_002_5F53:
    jp Jump_002_5F90                              ; $5F53: $C3 $90 $5F


Jump_002_5F56:
    ld hl, $0030                                  ; $5F56: $21 $30 $00
    jp Jump_002_5F5F                              ; $5F59: $C3 $5F $5F


Jump_002_5F5C:
    ld hl, $0060                                  ; $5F5C: $21 $60 $00

Jump_002_5F5F:
    push hl                                       ; $5F5F: $E5
    ld hl, $000A                                  ; $5F60: $21 $0A $00
    add hl, de                                    ; $5F63: $19
    ld a, [hl]                                    ; $5F64: $7E
    ld hl, $009C                                  ; $5F65: $21 $9C $00
    add hl, bc                                    ; $5F68: $09
    ld [hl], a                                    ; $5F69: $77
    pop hl                                        ; $5F6A: $E1
    call Call_000_30FF                            ; $5F6B: $CD $FF $30
    jp nc, Jump_002_5FAF                          ; $5F6E: $D2 $AF $5F

    ld a, $10                                     ; $5F71: $3E $10
    ld h, $0B                                     ; $5F73: $26 $0B
    call Call_000_2CEA                            ; $5F75: $CD $EA $2C
    jp z, Jump_002_5FB2                           ; $5F78: $CA $B2 $5F

    ld a, $0B                                     ; $5F7B: $3E $0B
    call Call_000_3963                            ; $5F7D: $CD $63 $39
    ld a, $0E                                     ; $5F80: $3E $0E
    call Call_000_1360                            ; $5F82: $CD $60 $13
    ld hl, $0023                                  ; $5F85: $21 $23 $00
    add hl, bc                                    ; $5F88: $09
    res 1, [hl]                                   ; $5F89: $CB $8E
    res 6, [hl]                                   ; $5F8B: $CB $B6
    jp Jump_002_5FB2                              ; $5F8D: $C3 $B2 $5F


Jump_002_5F90:
    ld hl, $0060                                  ; $5F90: $21 $60 $00
    call Call_000_30FF                            ; $5F93: $CD $FF $30
    jp nc, Jump_002_5FAF                          ; $5F96: $D2 $AF $5F

    ld a, $18                                     ; $5F99: $3E $18
    ld h, $05                                     ; $5F9B: $26 $05
    call Call_000_2CEA                            ; $5F9D: $CD $EA $2C
    jp Jump_002_5FB2                              ; $5FA0: $C3 $B2 $5F


Jump_002_5FA3:
    call Call_000_2CA9                            ; $5FA3: $CD $A9 $2C
    jp nc, Jump_002_5FAF                          ; $5FA6: $D2 $AF $5F

    call Call_000_397A                            ; $5FA9: $CD $7A $39
    jp Jump_002_5FB2                              ; $5FAC: $C3 $B2 $5F


Jump_002_5FAF:
    jp Jump_000_2E25                              ; $5FAF: $C3 $25 $2E


Jump_002_5FB2:
    ret                                           ; $5FB2: $C9


    call Call_000_2EE0                            ; $5FB3: $CD $E0 $2E
    call Call_000_3517                            ; $5FB6: $CD $17 $35
    jp c, Jump_002_601D                           ; $5FB9: $DA $1D $60

    ld hl, $0018                                  ; $5FBC: $21 $18 $00
    add hl, de                                    ; $5FBF: $19
    ld a, [hl]                                    ; $5FC0: $7E
    cp $00                                        ; $5FC1: $FE $00
    jp z, Jump_002_5FD3                           ; $5FC3: $CA $D3 $5F

    cp $04                                        ; $5FC6: $FE $04
    jp z, Jump_002_5FDF                           ; $5FC8: $CA $DF $5F

    cp $08                                        ; $5FCB: $FE $08
    jp z, Jump_002_6008                           ; $5FCD: $CA $08 $60

    jp Jump_002_601A                              ; $5FD0: $C3 $1A $60


Jump_002_5FD3:
    call Call_000_2CA9                            ; $5FD3: $CD $A9 $2C
    jp nc, Jump_002_5FE2                          ; $5FD6: $D2 $E2 $5F

    inc hl                                        ; $5FD9: $23
    ld [hl], $FF                                  ; $5FDA: $36 $FF
    jp Jump_002_5FE2                              ; $5FDC: $C3 $E2 $5F


Jump_002_5FDF:
    jp Jump_002_5FE2                              ; $5FDF: $C3 $E2 $5F


Jump_002_5FE2:
    ld hl, $0060                                  ; $5FE2: $21 $60 $00
    call Call_000_30FF                            ; $5FE5: $CD $FF $30
    jp nc, Jump_002_601A                          ; $5FE8: $D2 $1A $60

    ld hl, $0040                                  ; $5FEB: $21 $40 $00
    call Call_000_30B0                            ; $5FEE: $CD $B0 $30
    ld a, $08                                     ; $5FF1: $3E $08
    ld h, $05                                     ; $5FF3: $26 $05
    call Call_000_2CEA                            ; $5FF5: $CD $EA $2C
    ld a, $03                                     ; $5FF8: $3E $03
    call Call_000_3963                            ; $5FFA: $CD $63 $39
    ld hl, $0023                                  ; $5FFD: $21 $23 $00
    add hl, bc                                    ; $6000: $09
    res 1, [hl]                                   ; $6001: $CB $8E
    res 6, [hl]                                   ; $6003: $CB $B6
    jp Jump_002_601D                              ; $6005: $C3 $1D $60


Jump_002_6008:
    ld hl, $0040                                  ; $6008: $21 $40 $00
    call Call_000_30B0                            ; $600B: $CD $B0 $30
    call Call_000_2CA9                            ; $600E: $CD $A9 $2C
    jp nc, Jump_002_601A                          ; $6011: $D2 $1A $60

    call Call_000_397A                            ; $6014: $CD $7A $39
    jp Jump_002_601D                              ; $6017: $C3 $1D $60


Jump_002_601A:
    jp Jump_000_2E25                              ; $601A: $C3 $25 $2E


Jump_002_601D:
    ret                                           ; $601D: $C9


    call Call_000_2EE0                            ; $601E: $CD $E0 $2E
    call Call_000_3517                            ; $6021: $CD $17 $35
    jp c, Jump_002_60A4                           ; $6024: $DA $A4 $60

    ld hl, $0018                                  ; $6027: $21 $18 $00
    add hl, de                                    ; $602A: $19
    ld a, [hl]                                    ; $602B: $7E
    cp $00                                        ; $602C: $FE $00
    jp z, Jump_002_604F                           ; $602E: $CA $4F $60

    cp $04                                        ; $6031: $FE $04
    jp z, Jump_002_605B                           ; $6033: $CA $5B $60

    cp $08                                        ; $6036: $FE $08
    jp z, Jump_002_6065                           ; $6038: $CA $65 $60

    cp $0C                                        ; $603B: $FE $0C
    jp z, Jump_002_606F                           ; $603D: $CA $6F $60

    cp $10                                        ; $6040: $FE $10
    jp z, Jump_002_6079                           ; $6042: $CA $79 $60

    cp $14                                        ; $6045: $FE $14
    jp z, Jump_002_6083                           ; $6047: $CA $83 $60

    cp $18                                        ; $604A: $FE $18
    jp z, Jump_002_6096                           ; $604C: $CA $96 $60

Jump_002_604F:
    call Call_000_2CA9                            ; $604F: $CD $A9 $2C
    jp nc, Jump_002_6083                          ; $6052: $D2 $83 $60

    inc hl                                        ; $6055: $23
    ld [hl], $FF                                  ; $6056: $36 $FF
    jp Jump_002_6083                              ; $6058: $C3 $83 $60


Jump_002_605B:
    ld a, $F9                                     ; $605B: $3E $F9
    ld h, $FF                                     ; $605D: $26 $FF
    call Call_000_2D33                            ; $605F: $CD $33 $2D
    jp Jump_002_6083                              ; $6062: $C3 $83 $60


Jump_002_6065:
    ld a, $FB                                     ; $6065: $3E $FB
    ld h, $FF                                     ; $6067: $26 $FF
    call Call_000_2D33                            ; $6069: $CD $33 $2D
    jp Jump_002_6083                              ; $606C: $C3 $83 $60


Jump_002_606F:
    ld a, $FF                                     ; $606F: $3E $FF
    ld h, $FF                                     ; $6071: $26 $FF
    call Call_000_2D33                            ; $6073: $CD $33 $2D
    jp Jump_002_6083                              ; $6076: $C3 $83 $60


Jump_002_6079:
    ld a, $01                                     ; $6079: $3E $01
    ld h, $FF                                     ; $607B: $26 $FF
    call Call_000_2D33                            ; $607D: $CD $33 $2D
    jp Jump_002_6083                              ; $6080: $C3 $83 $60


Jump_002_6083:
    ld hl, $0060                                  ; $6083: $21 $60 $00
    call Call_000_30FF                            ; $6086: $CD $FF $30
    jp nc, Jump_002_60A1                          ; $6089: $D2 $A1 $60

    ld a, $18                                     ; $608C: $3E $18
    ld h, $00                                     ; $608E: $26 $00
    call Call_000_2CBA                            ; $6090: $CD $BA $2C
    jp Jump_002_60A4                              ; $6093: $C3 $A4 $60


Jump_002_6096:
    call Call_000_2CA9                            ; $6096: $CD $A9 $2C
    jp nc, Jump_002_60A1                          ; $6099: $D2 $A1 $60

    call Call_000_2DB6                            ; $609C: $CD $B6 $2D
    jr jr_002_60A4                                ; $609F: $18 $03

Jump_002_60A1:
    jp Jump_000_2E25                              ; $60A1: $C3 $25 $2E


Jump_002_60A4:
jr_002_60A4:
    ret                                           ; $60A4: $C9


    call Call_000_2EE0                            ; $60A5: $CD $E0 $2E
    call Call_000_3517                            ; $60A8: $CD $17 $35
    jp c, Jump_002_60DE                           ; $60AB: $DA $DE $60

    ld hl, $0018                                  ; $60AE: $21 $18 $00
    add hl, de                                    ; $60B1: $19
    ld a, [hl]                                    ; $60B2: $7E
    cp $00                                        ; $60B3: $FE $00
    jp z, Jump_002_60BD                           ; $60B5: $CA $BD $60

    cp $04                                        ; $60B8: $FE $04
    jp z, Jump_002_60D0                           ; $60BA: $CA $D0 $60

Jump_002_60BD:
    ld hl, $0060                                  ; $60BD: $21 $60 $00
    call Call_000_30FF                            ; $60C0: $CD $FF $30
    jp nc, Jump_002_60DB                          ; $60C3: $D2 $DB $60

    ld a, $04                                     ; $60C6: $3E $04
    ld h, $00                                     ; $60C8: $26 $00
    call Call_000_2CBA                            ; $60CA: $CD $BA $2C
    jp Jump_002_60DE                              ; $60CD: $C3 $DE $60


Jump_002_60D0:
    call Call_000_2CA9                            ; $60D0: $CD $A9 $2C
    jp nc, Jump_002_60DB                          ; $60D3: $D2 $DB $60

    call Call_000_2DB6                            ; $60D6: $CD $B6 $2D
    jr jr_002_60DE                                ; $60D9: $18 $03

Jump_002_60DB:
    jp Jump_000_2E25                              ; $60DB: $C3 $25 $2E


Jump_002_60DE:
jr_002_60DE:
    ret                                           ; $60DE: $C9


    call Call_000_3783                            ; $60DF: $CD $83 $37
    call Call_000_2EE0                            ; $60E2: $CD $E0 $2E
    call Call_000_3517                            ; $60E5: $CD $17 $35
    jp c, Jump_002_6143                           ; $60E8: $DA $43 $61

    call Call_000_2C9B                            ; $60EB: $CD $9B $2C
    jp nz, Jump_002_6144                          ; $60EE: $C2 $44 $61

    ld hl, $001C                                  ; $60F1: $21 $1C $00
    add hl, de                                    ; $60F4: $19
    ld a, [hl]                                    ; $60F5: $7E
    cp $00                                        ; $60F6: $FE $00
    jp z, Jump_002_6123                           ; $60F8: $CA $23 $61

    cp $01                                        ; $60FB: $FE $01
    jp z, Jump_002_6103                           ; $60FD: $CA $03 $61

    jp Jump_002_6144                              ; $6100: $C3 $44 $61


Jump_002_6103:
    ld [hl], $00                                  ; $6103: $36 $00
    ld hl, $0023                                  ; $6105: $21 $23 $00
    add hl, bc                                    ; $6108: $09
    bit 0, [hl]                                   ; $6109: $CB $46
    jp nz, Jump_002_6114                          ; $610B: $C2 $14 $61

    ld hl, $0280                                  ; $610E: $21 $80 $02
    jp Jump_002_6117                              ; $6111: $C3 $17 $61


Jump_002_6114:
    ld hl, $0400                                  ; $6114: $21 $00 $04

Jump_002_6117:
    call Call_000_3007                            ; $6117: $CD $07 $30
    call Call_000_2641                            ; $611A: $CD $41 $26
    jp nz, Jump_002_6138                          ; $611D: $C2 $38 $61

    jp Jump_002_6143                              ; $6120: $C3 $43 $61


Jump_002_6123:
    ld hl, $0040                                  ; $6123: $21 $40 $00
    call Call_000_30B0                            ; $6126: $CD $B0 $30
    jp nc, Jump_002_6143                          ; $6129: $D2 $43 $61

    ld hl, $0060                                  ; $612C: $21 $60 $00
    add hl, bc                                    ; $612F: $09
    ld a, [hl]                                    ; $6130: $7E
    or a                                          ; $6131: $B7
    jp z, Jump_002_6138                           ; $6132: $CA $38 $61

    jp Jump_002_6138                              ; $6135: $C3 $38 $61


Jump_002_6138:
    ld a, $5E                                     ; $6138: $3E $5E
    call Call_000_2E6E                            ; $613A: $CD $6E $2E
    jp Jump_002_6143                              ; $613D: $C3 $43 $61


    call Call_000_2DB6                            ; $6140: $CD $B6 $2D

Jump_002_6143:
    ret                                           ; $6143: $C9


Jump_002_6144:
    jp Jump_000_2E25                              ; $6144: $C3 $25 $2E


    call Call_000_3783                            ; $6147: $CD $83 $37
    call Call_000_3517                            ; $614A: $CD $17 $35
    jp c, Jump_002_6186                           ; $614D: $DA $86 $61

    ld hl, $0018                                  ; $6150: $21 $18 $00
    add hl, de                                    ; $6153: $19
    ld a, [hl]                                    ; $6154: $7E
    cp $00                                        ; $6155: $FE $00
    jp z, Jump_002_615F                           ; $6157: $CA $5F $61

    cp $04                                        ; $615A: $FE $04
    jp z, Jump_002_617A                           ; $615C: $CA $7A $61

Jump_002_615F:
    call Call_000_2CA2                            ; $615F: $CD $A2 $2C
    jr z, jr_002_616E                             ; $6162: $28 $0A

    ld a, $B5                                     ; $6164: $3E $B5
    call Call_000_1360                            ; $6166: $CD $60 $13
    ld a, $03                                     ; $6169: $3E $03
    call Call_000_3963                            ; $616B: $CD $63 $39

jr_002_616E:
    call Call_000_2CA9                            ; $616E: $CD $A9 $2C
    jp nc, Jump_002_6187                          ; $6171: $D2 $87 $61

    inc hl                                        ; $6174: $23
    ld [hl], $78                                  ; $6175: $36 $78
    jp Jump_002_6187                              ; $6177: $C3 $87 $61


Jump_002_617A:
    call Call_000_2CA9                            ; $617A: $CD $A9 $2C
    jp nc, Jump_002_6187                          ; $617D: $D2 $87 $61

    call Call_000_397A                            ; $6180: $CD $7A $39
    jp Jump_002_6186                              ; $6183: $C3 $86 $61


Jump_002_6186:
    ret                                           ; $6186: $C9


Jump_002_6187:
    jp Jump_000_2E25                              ; $6187: $C3 $25 $2E


    ld a, $04                                     ; $618A: $3E $04
    ld [$C2E2], a                                 ; $618C: $EA $E2 $C2
    ld hl, $001C                                  ; $618F: $21 $1C $00
    add hl, de                                    ; $6192: $19
    ld a, [hl]                                    ; $6193: $7E
    cp $00                                        ; $6194: $FE $00
    jp z, Jump_002_61C1                           ; $6196: $CA $C1 $61

    cp $01                                        ; $6199: $FE $01
    jp z, Jump_002_61A1                           ; $619B: $CA $A1 $61

    jp Jump_002_61E2                              ; $619E: $C3 $E2 $61


Jump_002_61A1:
    ld [hl], $00                                  ; $61A1: $36 $00
    ld hl, $0023                                  ; $61A3: $21 $23 $00
    add hl, bc                                    ; $61A6: $09
    bit 0, [hl]                                   ; $61A7: $CB $46
    jp nz, Jump_002_61B2                          ; $61A9: $C2 $B2 $61

    ld hl, $0280                                  ; $61AC: $21 $80 $02
    jp Jump_002_61B5                              ; $61AF: $C3 $B5 $61


Jump_002_61B2:
    ld hl, $0400                                  ; $61B2: $21 $00 $04

Jump_002_61B5:
    call Call_000_3007                            ; $61B5: $CD $07 $30
    call Call_000_2641                            ; $61B8: $CD $41 $26
    jp nz, Jump_002_61D6                          ; $61BB: $C2 $D6 $61

    jp Jump_002_61E1                              ; $61BE: $C3 $E1 $61


Jump_002_61C1:
    ld hl, $0040                                  ; $61C1: $21 $40 $00
    call Call_000_30B0                            ; $61C4: $CD $B0 $30
    jp nc, Jump_002_61E1                          ; $61C7: $D2 $E1 $61

    ld hl, $0060                                  ; $61CA: $21 $60 $00
    add hl, bc                                    ; $61CD: $09
    ld a, [hl]                                    ; $61CE: $7E
    or a                                          ; $61CF: $B7
    jp z, Jump_002_61D6                           ; $61D0: $CA $D6 $61

    jp Jump_002_61D6                              ; $61D3: $C3 $D6 $61


Jump_002_61D6:
    ld a, $5E                                     ; $61D6: $3E $5E
    call Call_000_2E6E                            ; $61D8: $CD $6E $2E
    jp Jump_002_61E1                              ; $61DB: $C3 $E1 $61


    call Call_000_2DB6                            ; $61DE: $CD $B6 $2D

Jump_002_61E1:
    ret                                           ; $61E1: $C9


Jump_002_61E2:
    jp Jump_000_2E25                              ; $61E2: $C3 $25 $2E


    call Call_000_3783                            ; $61E5: $CD $83 $37
    call Call_000_2EE0                            ; $61E8: $CD $E0 $2E
    ld hl, $001C                                  ; $61EB: $21 $1C $00
    add hl, de                                    ; $61EE: $19
    ld a, [hl]                                    ; $61EF: $7E
    cp $00                                        ; $61F0: $FE $00
    jp z, Jump_002_621D                           ; $61F2: $CA $1D $62

    cp $01                                        ; $61F5: $FE $01
    jp z, Jump_002_61FD                           ; $61F7: $CA $FD $61

    jp Jump_002_623E                              ; $61FA: $C3 $3E $62


Jump_002_61FD:
    ld [hl], $00                                  ; $61FD: $36 $00
    ld hl, $0023                                  ; $61FF: $21 $23 $00
    add hl, bc                                    ; $6202: $09
    bit 0, [hl]                                   ; $6203: $CB $46
    jp nz, Jump_002_620E                          ; $6205: $C2 $0E $62

    ld hl, $0280                                  ; $6208: $21 $80 $02
    jp Jump_002_6211                              ; $620B: $C3 $11 $62


Jump_002_620E:
    ld hl, $0400                                  ; $620E: $21 $00 $04

Jump_002_6211:
    call Call_000_3007                            ; $6211: $CD $07 $30
    call Call_000_2641                            ; $6214: $CD $41 $26
    jp nz, Jump_002_6232                          ; $6217: $C2 $32 $62

    jp Jump_002_623D                              ; $621A: $C3 $3D $62


Jump_002_621D:
    ld hl, $0040                                  ; $621D: $21 $40 $00
    call Call_000_30B0                            ; $6220: $CD $B0 $30
    jp nc, Jump_002_623D                          ; $6223: $D2 $3D $62

    ld hl, $0060                                  ; $6226: $21 $60 $00
    add hl, bc                                    ; $6229: $09
    ld a, [hl]                                    ; $622A: $7E
    or a                                          ; $622B: $B7
    jp z, Jump_002_6232                           ; $622C: $CA $32 $62

    jp Jump_002_6232                              ; $622F: $C3 $32 $62


Jump_002_6232:
    ld a, $5E                                     ; $6232: $3E $5E
    call Call_000_2E6E                            ; $6234: $CD $6E $2E
    jp Jump_002_623D                              ; $6237: $C3 $3D $62


    call Call_000_2DB6                            ; $623A: $CD $B6 $2D

Jump_002_623D:
    ret                                           ; $623D: $C9


Jump_002_623E:
    jp Jump_000_2E25                              ; $623E: $C3 $25 $2E


    call Call_000_3783                            ; $6241: $CD $83 $37
    call Call_000_3517                            ; $6244: $CD $17 $35
    jp c, Jump_002_62B4                           ; $6247: $DA $B4 $62

    call Call_000_2CA2                            ; $624A: $CD $A2 $2C
    jp nz, Jump_002_625F                          ; $624D: $C2 $5F $62

    ld hl, $001C                                  ; $6250: $21 $1C $00
    add hl, de                                    ; $6253: $19
    ld a, [hl]                                    ; $6254: $7E
    cp $00                                        ; $6255: $FE $00
    jp z, Jump_002_6297                           ; $6257: $CA $97 $62

    cp $01                                        ; $625A: $FE $01
    jp z, Jump_002_6277                           ; $625C: $CA $77 $62

Jump_002_625F:
    call Call_002_5674                            ; $625F: $CD $74 $56
    ld a, [$C2E5]                                 ; $6262: $FA $E5 $C2
    ld h, a                                       ; $6265: $67
    ld l, $00                                     ; $6266: $2E $00
    call Call_000_2FB1                            ; $6268: $CD $B1 $2F
    ld a, [$C2E6]                                 ; $626B: $FA $E6 $C2
    ld h, a                                       ; $626E: $67
    ld l, $00                                     ; $626F: $2E $00
    call Call_000_2F42                            ; $6271: $CD $42 $2F
    jp Jump_002_62B5                              ; $6274: $C3 $B5 $62


Jump_002_6277:
    ld [hl], $00                                  ; $6277: $36 $00
    ld hl, $0023                                  ; $6279: $21 $23 $00
    add hl, bc                                    ; $627C: $09
    bit 0, [hl]                                   ; $627D: $CB $46
    jp nz, Jump_002_6288                          ; $627F: $C2 $88 $62

    ld hl, $0280                                  ; $6282: $21 $80 $02
    jp Jump_002_628B                              ; $6285: $C3 $8B $62


Jump_002_6288:
    ld hl, $0400                                  ; $6288: $21 $00 $04

Jump_002_628B:
    call Call_000_3007                            ; $628B: $CD $07 $30
    call Call_000_2641                            ; $628E: $CD $41 $26
    jp nz, Jump_002_62A9                          ; $6291: $C2 $A9 $62

    jp Jump_002_62B4                              ; $6294: $C3 $B4 $62


Jump_002_6297:
    ld hl, $0040                                  ; $6297: $21 $40 $00
    call Call_000_30B0                            ; $629A: $CD $B0 $30
    jp nc, Jump_002_62B4                          ; $629D: $D2 $B4 $62

    ld hl, $0060                                  ; $62A0: $21 $60 $00
    add hl, bc                                    ; $62A3: $09
    ld a, [hl]                                    ; $62A4: $7E
    or a                                          ; $62A5: $B7
    jp nz, Jump_002_62B1                          ; $62A6: $C2 $B1 $62

Jump_002_62A9:
    ld a, $5E                                     ; $62A9: $3E $5E
    call Call_000_2E6E                            ; $62AB: $CD $6E $2E
    jp Jump_002_62B4                              ; $62AE: $C3 $B4 $62


Jump_002_62B1:
    call Call_000_2DB6                            ; $62B1: $CD $B6 $2D

Jump_002_62B4:
    ret                                           ; $62B4: $C9


Jump_002_62B5:
    jp Jump_000_2E25                              ; $62B5: $C3 $25 $2E


    xor [hl]                                      ; $62B8: $AE
    ld h, [hl]                                    ; $62B9: $66
    rst RST_38                                    ; $62BA: $FF
    rst RST_38                                    ; $62BB: $FF
    db $DD                                        ; $62BC: $DD
    ld h, [hl]                                    ; $62BD: $66
    rst RST_38                                    ; $62BE: $FF
    rst RST_38                                    ; $62BF: $FF
    ld d, $67                                     ; $62C0: $16 $67
    rst RST_38                                    ; $62C2: $FF
    rst RST_38                                    ; $62C3: $FF
    ld c, h                                       ; $62C4: $4C
    ld h, a                                       ; $62C5: $67
    rst RST_38                                    ; $62C6: $FF
    rst RST_38                                    ; $62C7: $FF
    sbc d                                         ; $62C8: $9A
    ld h, [hl]                                    ; $62C9: $66
    rst RST_38                                    ; $62CA: $FF
    rst RST_38                                    ; $62CB: $FF
    ld d, [hl]                                    ; $62CC: $56
    ld h, a                                       ; $62CD: $67
    rst RST_38                                    ; $62CE: $FF
    rst RST_38                                    ; $62CF: $FF
    jr nz, jr_002_6339                            ; $62D0: $20 $67

    rst RST_38                                    ; $62D2: $FF
    rst RST_38                                    ; $62D3: $FF
    rst RST_20                                    ; $62D4: $E7
    ld h, [hl]                                    ; $62D5: $66
    rst RST_38                                    ; $62D6: $FF
    rst RST_38                                    ; $62D7: $FF
    rst RST_38                                    ; $62D8: $FF
    rst RST_38                                    ; $62D9: $FF
    xor [hl]                                      ; $62DA: $AE
    ld h, [hl]                                    ; $62DB: $66
    rst RST_38                                    ; $62DC: $FF
    rst RST_38                                    ; $62DD: $FF
    rst RST_38                                    ; $62DE: $FF
    rst RST_38                                    ; $62DF: $FF
    ld a, a                                       ; $62E0: $7F
    ld h, a                                       ; $62E1: $67
    rst RST_38                                    ; $62E2: $FF
    rst RST_38                                    ; $62E3: $FF
    or c                                          ; $62E4: $B1
    ld h, a                                       ; $62E5: $67
    rst RST_38                                    ; $62E6: $FF
    rst RST_38                                    ; $62E7: $FF
    db $ED                                        ; $62E8: $ED
    ld h, a                                       ; $62E9: $67
    rst RST_38                                    ; $62EA: $FF
    rst RST_38                                    ; $62EB: $FF
    inc hl                                        ; $62EC: $23
    ld l, b                                       ; $62ED: $68
    rst RST_38                                    ; $62EE: $FF
    rst RST_38                                    ; $62EF: $FF
    sbc d                                         ; $62F0: $9A
    ld h, [hl]                                    ; $62F1: $66
    rst RST_38                                    ; $62F2: $FF
    rst RST_38                                    ; $62F3: $FF
    dec l                                         ; $62F4: $2D
    ld l, b                                       ; $62F5: $68
    rst RST_38                                    ; $62F6: $FF
    rst RST_38                                    ; $62F7: $FF
    rst RST_30                                    ; $62F8: $F7
    ld h, a                                       ; $62F9: $67
    rst RST_38                                    ; $62FA: $FF
    rst RST_38                                    ; $62FB: $FF
    cp e                                          ; $62FC: $BB
    ld h, a                                       ; $62FD: $67
    rst RST_38                                    ; $62FE: $FF
    rst RST_38                                    ; $62FF: $FF
    rst RST_38                                    ; $6300: $FF
    rst RST_38                                    ; $6301: $FF
    ld a, a                                       ; $6302: $7F
    ld h, a                                       ; $6303: $67
    rst RST_38                                    ; $6304: $FF
    rst RST_38                                    ; $6305: $FF
    rst RST_38                                    ; $6306: $FF
    rst RST_38                                    ; $6307: $FF
    or h                                          ; $6308: $B4
    ld l, b                                       ; $6309: $68
    rst RST_38                                    ; $630A: $FF
    rst RST_38                                    ; $630B: $FF
    ld d, e                                       ; $630C: $53
    ld l, c                                       ; $630D: $69
    rst RST_38                                    ; $630E: $FF
    rst RST_38                                    ; $630F: $FF
    and b                                         ; $6310: $A0
    ld l, b                                       ; $6311: $68
    rst RST_38                                    ; $6312: $FF
    rst RST_38                                    ; $6313: $FF
    ccf                                           ; $6314: $3F
    ld l, c                                       ; $6315: $69
    rst RST_38                                    ; $6316: $FF
    rst RST_38                                    ; $6317: $FF
    add d                                         ; $6318: $82
    ld l, b                                       ; $6319: $68
    rst RST_38                                    ; $631A: $FF
    rst RST_38                                    ; $631B: $FF
    ld hl, $FF69                                  ; $631C: $21 $69 $FF
    rst RST_38                                    ; $631F: $FF
    ld a, b                                       ; $6320: $78
    ld l, b                                       ; $6321: $68
    rst RST_38                                    ; $6322: $FF
    rst RST_38                                    ; $6323: $FF
    rla                                           ; $6324: $17
    ld l, c                                       ; $6325: $69
    rst RST_38                                    ; $6326: $FF
    rst RST_38                                    ; $6327: $FF
    cp [hl]                                       ; $6328: $BE
    ld l, b                                       ; $6329: $68
    rst RST_38                                    ; $632A: $FF
    rst RST_38                                    ; $632B: $FF
    ld e, l                                       ; $632C: $5D
    ld l, c                                       ; $632D: $69
    rst RST_38                                    ; $632E: $FF
    rst RST_38                                    ; $632F: $FF
    sub [hl]                                      ; $6330: $96
    ld l, b                                       ; $6331: $68
    rst RST_38                                    ; $6332: $FF
    rst RST_38                                    ; $6333: $FF
    dec [hl]                                      ; $6334: $35
    ld l, c                                       ; $6335: $69
    rst RST_38                                    ; $6336: $FF
    rst RST_38                                    ; $6337: $FF
    rst RST_38                                    ; $6338: $FF

jr_002_6339:
    rst RST_38                                    ; $6339: $FF
    ld h, h                                       ; $633A: $64
    ld l, b                                       ; $633B: $68
    rst RST_38                                    ; $633C: $FF
    rst RST_38                                    ; $633D: $FF
    inc bc                                        ; $633E: $03
    ld l, c                                       ; $633F: $69
    rst RST_38                                    ; $6340: $FF
    rst RST_38                                    ; $6341: $FF
    ld l, [hl]                                    ; $6342: $6E
    ld l, b                                       ; $6343: $68
    rst RST_38                                    ; $6344: $FF
    rst RST_38                                    ; $6345: $FF
    dec c                                         ; $6346: $0D
    ld l, c                                       ; $6347: $69
    rst RST_38                                    ; $6348: $FF
    rst RST_38                                    ; $6349: $FF
    ld h, h                                       ; $634A: $64
    ld l, b                                       ; $634B: $68
    rst RST_38                                    ; $634C: $FF
    rst RST_38                                    ; $634D: $FF
    inc bc                                        ; $634E: $03
    ld l, c                                       ; $634F: $69
    rst RST_38                                    ; $6350: $FF
    rst RST_38                                    ; $6351: $FF
    ld l, [hl]                                    ; $6352: $6E
    ld l, b                                       ; $6353: $68
    rst RST_38                                    ; $6354: $FF
    rst RST_38                                    ; $6355: $FF
    dec c                                         ; $6356: $0D
    ld l, c                                       ; $6357: $69
    rst RST_38                                    ; $6358: $FF
    rst RST_38                                    ; $6359: $FF
    ld h, h                                       ; $635A: $64
    ld l, b                                       ; $635B: $68
    rst RST_38                                    ; $635C: $FF
    rst RST_38                                    ; $635D: $FF
    inc bc                                        ; $635E: $03
    ld l, c                                       ; $635F: $69
    rst RST_38                                    ; $6360: $FF
    rst RST_38                                    ; $6361: $FF
    ld l, [hl]                                    ; $6362: $6E
    ld l, b                                       ; $6363: $68
    rst RST_38                                    ; $6364: $FF
    rst RST_38                                    ; $6365: $FF
    dec c                                         ; $6366: $0D
    ld l, c                                       ; $6367: $69
    rst RST_38                                    ; $6368: $FF
    rst RST_38                                    ; $6369: $FF
    rst RST_38                                    ; $636A: $FF
    rst RST_38                                    ; $636B: $FF
    rst RST_10                                    ; $636C: $D7
    ld l, c                                       ; $636D: $69
    rst RST_38                                    ; $636E: $FF
    rst RST_38                                    ; $636F: $FF
    pop hl                                        ; $6370: $E1
    ld l, c                                       ; $6371: $69
    rst RST_38                                    ; $6372: $FF
    rst RST_38                                    ; $6373: $FF
    db $EB                                        ; $6374: $EB
    ld l, c                                       ; $6375: $69
    rst RST_38                                    ; $6376: $FF
    rst RST_38                                    ; $6377: $FF
    push af                                       ; $6378: $F5
    ld l, c                                       ; $6379: $69
    rst RST_38                                    ; $637A: $FF
    rst RST_38                                    ; $637B: $FF
    rst RST_38                                    ; $637C: $FF
    ld l, c                                       ; $637D: $69
    rst RST_38                                    ; $637E: $FF
    rst RST_38                                    ; $637F: $FF
    add hl, bc                                    ; $6380: $09
    ld l, d                                       ; $6381: $6A
    rst RST_38                                    ; $6382: $FF
    rst RST_38                                    ; $6383: $FF
    inc de                                        ; $6384: $13
    ld l, d                                       ; $6385: $6A
    rst RST_38                                    ; $6386: $FF
    rst RST_38                                    ; $6387: $FF
    dec e                                         ; $6388: $1D
    ld l, d                                       ; $6389: $6A
    rst RST_38                                    ; $638A: $FF
    rst RST_38                                    ; $638B: $FF
    rst RST_38                                    ; $638C: $FF
    rst RST_38                                    ; $638D: $FF
    ld h, d                                       ; $638E: $62
    ld l, d                                       ; $638F: $6A
    rst RST_38                                    ; $6390: $FF
    rst RST_38                                    ; $6391: $FF
    xor d                                         ; $6392: $AA
    ld l, b                                       ; $6393: $68
    rst RST_38                                    ; $6394: $FF
    rst RST_38                                    ; $6395: $FF
    ld c, d                                       ; $6396: $4A
    ld l, d                                       ; $6397: $6A
    rst RST_38                                    ; $6398: $FF
    rst RST_38                                    ; $6399: $FF
    ld c, c                                       ; $639A: $49
    ld l, c                                       ; $639B: $69
    rst RST_38                                    ; $639C: $FF
    rst RST_38                                    ; $639D: $FF
    ld h, d                                       ; $639E: $62
    ld l, d                                       ; $639F: $6A
    rst RST_38                                    ; $63A0: $FF
    rst RST_38                                    ; $63A1: $FF
    adc h                                         ; $63A2: $8C
    ld l, b                                       ; $63A3: $68
    rst RST_38                                    ; $63A4: $FF
    rst RST_38                                    ; $63A5: $FF
    ld c, d                                       ; $63A6: $4A
    ld l, d                                       ; $63A7: $6A
    rst RST_38                                    ; $63A8: $FF
    rst RST_38                                    ; $63A9: $FF
    dec hl                                        ; $63AA: $2B
    ld l, c                                       ; $63AB: $69
    rst RST_38                                    ; $63AC: $FF
    rst RST_38                                    ; $63AD: $FF
    rst RST_38                                    ; $63AE: $FF
    rst RST_38                                    ; $63AF: $FF
    add a                                         ; $63B0: $87
    ld l, d                                       ; $63B1: $6A
    rst RST_38                                    ; $63B2: $FF
    rst RST_38                                    ; $63B3: $FF
    ld a, l                                       ; $63B4: $7D
    ld l, d                                       ; $63B5: $6A
    rst RST_38                                    ; $63B6: $FF
    rst RST_38                                    ; $63B7: $FF
    rst RST_38                                    ; $63B8: $FF
    rst RST_38                                    ; $63B9: $FF
    sbc e                                         ; $63BA: $9B
    ld l, d                                       ; $63BB: $6A
    rst RST_38                                    ; $63BC: $FF
    rst RST_38                                    ; $63BD: $FF
    cp [hl]                                       ; $63BE: $BE
    ld l, d                                       ; $63BF: $6A
    rst RST_38                                    ; $63C0: $FF
    rst RST_38                                    ; $63C1: $FF
    rst RST_38                                    ; $63C2: $FF
    rst RST_38                                    ; $63C3: $FF
    db $EB                                        ; $63C4: $EB
    ld l, d                                       ; $63C5: $6A
    rst RST_38                                    ; $63C6: $FF
    rst RST_38                                    ; $63C7: $FF
    pop hl                                        ; $63C8: $E1
    ld l, d                                       ; $63C9: $6A
    rst RST_38                                    ; $63CA: $FF
    rst RST_38                                    ; $63CB: $FF
    rst RST_38                                    ; $63CC: $FF
    rst RST_38                                    ; $63CD: $FF
    rla                                           ; $63CE: $17
    ld l, e                                       ; $63CF: $6B
    rst RST_38                                    ; $63D0: $FF
    rst RST_38                                    ; $63D1: $FF
    pop hl                                        ; $63D2: $E1
    ld l, d                                       ; $63D3: $6A
    rst RST_38                                    ; $63D4: $FF
    rst RST_38                                    ; $63D5: $FF
    rst RST_38                                    ; $63D6: $FF
    rst RST_38                                    ; $63D7: $FF
    ld e, h                                       ; $63D8: $5C
    ld l, e                                       ; $63D9: $6B
    rst RST_38                                    ; $63DA: $FF
    rst RST_38                                    ; $63DB: $FF
    rst RST_38                                    ; $63DC: $FF
    rst RST_38                                    ; $63DD: $FF
    add c                                         ; $63DE: $81
    ld l, e                                       ; $63DF: $6B
    rst RST_38                                    ; $63E0: $FF
    rst RST_38                                    ; $63E1: $FF
    sub d                                         ; $63E2: $92
    ld l, e                                       ; $63E3: $6B
    rst RST_38                                    ; $63E4: $FF
    rst RST_38                                    ; $63E5: $FF
    and e                                         ; $63E6: $A3
    ld l, e                                       ; $63E7: $6B
    rst RST_38                                    ; $63E8: $FF
    rst RST_38                                    ; $63E9: $FF
    rst RST_38                                    ; $63EA: $FF
    rst RST_38                                    ; $63EB: $FF
    cp [hl]                                       ; $63EC: $BE
    ld l, e                                       ; $63ED: $6B
    rst RST_38                                    ; $63EE: $FF
    rst RST_38                                    ; $63EF: $FF
    ret c                                         ; $63F0: $D8

    ld l, e                                       ; $63F1: $6B
    rst RST_38                                    ; $63F2: $FF
    rst RST_38                                    ; $63F3: $FF
    dec c                                         ; $63F4: $0D
    ld l, h                                       ; $63F5: $6C
    rst RST_38                                    ; $63F6: $FF
    rst RST_38                                    ; $63F7: $FF
    ld a, [hl+]                                   ; $63F8: $2A
    ld l, h                                       ; $63F9: $6C
    rst RST_38                                    ; $63FA: $FF
    rst RST_38                                    ; $63FB: $FF
    rst RST_38                                    ; $63FC: $FF
    rst RST_38                                    ; $63FD: $FF
    ld c, [hl]                                    ; $63FE: $4E
    ld l, h                                       ; $63FF: $6C
    rst RST_38                                    ; $6400: $FF
    rst RST_38                                    ; $6401: $FF
    ld b, h                                       ; $6402: $44
    ld l, h                                       ; $6403: $6C
    rst RST_38                                    ; $6404: $FF
    rst RST_38                                    ; $6405: $FF
    ld e, a                                       ; $6406: $5F
    ld l, h                                       ; $6407: $6C
    rst RST_38                                    ; $6408: $FF
    rst RST_38                                    ; $6409: $FF
    ld b, h                                       ; $640A: $44
    ld l, h                                       ; $640B: $6C
    rst RST_38                                    ; $640C: $FF
    rst RST_38                                    ; $640D: $FF
    rst RST_38                                    ; $640E: $FF
    rst RST_38                                    ; $640F: $FF
    add a                                         ; $6410: $87
    ld l, h                                       ; $6411: $6C
    rst RST_38                                    ; $6412: $FF
    rst RST_38                                    ; $6413: $FF
    ld [hl], e                                    ; $6414: $73
    ld l, h                                       ; $6415: $6C
    rst RST_38                                    ; $6416: $FF
    rst RST_38                                    ; $6417: $FF
    and d                                         ; $6418: $A2
    ld l, h                                       ; $6419: $6C
    rst RST_38                                    ; $641A: $FF
    rst RST_38                                    ; $641B: $FF
    ld [hl], e                                    ; $641C: $73
    ld l, h                                       ; $641D: $6C
    rst RST_38                                    ; $641E: $FF
    rst RST_38                                    ; $641F: $FF
    rst RST_38                                    ; $6420: $FF
    rst RST_38                                    ; $6421: $FF
    ld a, l                                       ; $6422: $7D
    ld l, h                                       ; $6423: $6C
    rst RST_38                                    ; $6424: $FF
    rst RST_38                                    ; $6425: $FF
    ld [hl], e                                    ; $6426: $73
    ld l, h                                       ; $6427: $6C
    rst RST_38                                    ; $6428: $FF
    rst RST_38                                    ; $6429: $FF
    sbc b                                         ; $642A: $98
    ld l, h                                       ; $642B: $6C
    rst RST_38                                    ; $642C: $FF
    rst RST_38                                    ; $642D: $FF
    ld [hl], e                                    ; $642E: $73
    ld l, h                                       ; $642F: $6C
    rst RST_38                                    ; $6430: $FF
    rst RST_38                                    ; $6431: $FF
    rst RST_38                                    ; $6432: $FF
    rst RST_38                                    ; $6433: $FF
    or e                                          ; $6434: $B3
    ld l, h                                       ; $6435: $6C
    rst RST_38                                    ; $6436: $FF
    rst RST_38                                    ; $6437: $FF
    rst RST_38                                    ; $6438: $FF
    rst RST_38                                    ; $6439: $FF
    adc $6C                                       ; $643A: $CE $6C
    rst RST_38                                    ; $643C: $FF
    rst RST_38                                    ; $643D: $FF
    call nz, $FF6C                                ; $643E: $C4 $6C $FF
    rst RST_38                                    ; $6441: $FF
    rst RST_38                                    ; $6442: $FF
    rst RST_38                                    ; $6443: $FF
    ldh [c], a                                    ; $6444: $E2
    ld l, h                                       ; $6445: $6C
    rst RST_38                                    ; $6446: $FF
    rst RST_38                                    ; $6447: $FF
    call nz, $FF6C                                ; $6448: $C4 $6C $FF
    rst RST_38                                    ; $644B: $FF
    rst RST_38                                    ; $644C: $FF
    rst RST_38                                    ; $644D: $FF
    jp $FF69                                      ; $644E: $C3 $69 $FF


    rst RST_38                                    ; $6451: $FF
    rst RST_38                                    ; $6452: $FF
    rst RST_38                                    ; $6453: $FF
    call $FF69                                    ; $6454: $CD $69 $FF
    rst RST_38                                    ; $6457: $FF
    rst RST_38                                    ; $6458: $FF
    rst RST_38                                    ; $6459: $FF
    ld [de], a                                    ; $645A: $12
    ld l, l                                       ; $645B: $6D
    rst RST_38                                    ; $645C: $FF
    rst RST_38                                    ; $645D: $FF
    ld [$FF6D], sp                                ; $645E: $08 $6D $FF
    rst RST_38                                    ; $6461: $FF
    rst RST_38                                    ; $6462: $FF
    rst RST_38                                    ; $6463: $FF
    dec [hl]                                      ; $6464: $35
    ld l, l                                       ; $6465: $6D
    rst RST_38                                    ; $6466: $FF
    rst RST_38                                    ; $6467: $FF
    ld l, d                                       ; $6468: $6A
    ld l, l                                       ; $6469: $6D
    rst RST_38                                    ; $646A: $FF
    rst RST_38                                    ; $646B: $FF
    rst RST_38                                    ; $646C: $FF
    rst RST_38                                    ; $646D: $FF
    adc e                                         ; $646E: $8B
    ld l, l                                       ; $646F: $6D
    rst RST_38                                    ; $6470: $FF
    rst RST_38                                    ; $6471: $FF
    and d                                         ; $6472: $A2
    ld l, l                                       ; $6473: $6D
    rst RST_38                                    ; $6474: $FF
    rst RST_38                                    ; $6475: $FF
    rst RST_38                                    ; $6476: $FF
    rst RST_38                                    ; $6477: $FF
    or [hl]                                       ; $6478: $B6
    ld l, l                                       ; $6479: $6D
    rst RST_38                                    ; $647A: $FF
    rst RST_38                                    ; $647B: $FF
    call $FF6D                                    ; $647C: $CD $6D $FF
    rst RST_38                                    ; $647F: $FF
    rst RST_38                                    ; $6480: $FF
    rst RST_38                                    ; $6481: $FF
    db $E4                                        ; $6482: $E4
    ld l, l                                       ; $6483: $6D
    rst RST_38                                    ; $6484: $FF
    rst RST_38                                    ; $6485: $FF
    scf                                           ; $6486: $37
    ld l, [hl]                                    ; $6487: $6E
    rst RST_38                                    ; $6488: $FF
    rst RST_38                                    ; $6489: $FF
    rst RST_38                                    ; $648A: $FF
    rst RST_38                                    ; $648B: $FF
    ld [hl], d                                    ; $648C: $72
    ld l, [hl]                                    ; $648D: $6E
    rst RST_38                                    ; $648E: $FF
    rst RST_38                                    ; $648F: $FF
    sub b                                         ; $6490: $90
    ld l, [hl]                                    ; $6491: $6E
    rst RST_38                                    ; $6492: $FF
    rst RST_38                                    ; $6493: $FF
    ld a, h                                       ; $6494: $7C
    ld l, [hl]                                    ; $6495: $6E
    rst RST_38                                    ; $6496: $FF
    rst RST_38                                    ; $6497: $FF
    sbc d                                         ; $6498: $9A
    ld l, [hl]                                    ; $6499: $6E
    rst RST_38                                    ; $649A: $FF
    rst RST_38                                    ; $649B: $FF
    rst RST_38                                    ; $649C: $FF
    rst RST_38                                    ; $649D: $FF
    xor [hl]                                      ; $649E: $AE
    ld l, [hl]                                    ; $649F: $6E
    rst RST_38                                    ; $64A0: $FF
    rst RST_38                                    ; $64A1: $FF
    cp a                                          ; $64A2: $BF
    ld l, [hl]                                    ; $64A3: $6E
    rst RST_38                                    ; $64A4: $FF
    rst RST_38                                    ; $64A5: $FF
    rst RST_38                                    ; $64A6: $FF
    rst RST_38                                    ; $64A7: $FF
    ldh [c], a                                    ; $64A8: $E2
    ld l, [hl]                                    ; $64A9: $6E
    rst RST_38                                    ; $64AA: $FF
    rst RST_38                                    ; $64AB: $FF
    di                                            ; $64AC: $F3
    ld l, [hl]                                    ; $64AD: $6E
    rst RST_38                                    ; $64AE: $FF
    rst RST_38                                    ; $64AF: $FF
    rst RST_38                                    ; $64B0: $FF
    rst RST_38                                    ; $64B1: $FF
    inc b                                         ; $64B2: $04
    ld l, a                                       ; $64B3: $6F
    rst RST_38                                    ; $64B4: $FF
    rst RST_38                                    ; $64B5: $FF
    inc b                                         ; $64B6: $04
    ld l, a                                       ; $64B7: $6F
    rst RST_38                                    ; $64B8: $FF
    rst RST_38                                    ; $64B9: $FF
    dec d                                         ; $64BA: $15
    ld l, a                                       ; $64BB: $6F
    rst RST_38                                    ; $64BC: $FF
    rst RST_38                                    ; $64BD: $FF
    rst RST_38                                    ; $64BE: $FF
    rst RST_38                                    ; $64BF: $FF
    dec d                                         ; $64C0: $15
    ld l, a                                       ; $64C1: $6F
    rst RST_38                                    ; $64C2: $FF
    rst RST_38                                    ; $64C3: $FF
    inc b                                         ; $64C4: $04
    ld l, a                                       ; $64C5: $6F
    rst RST_38                                    ; $64C6: $FF
    rst RST_38                                    ; $64C7: $FF
    rra                                           ; $64C8: $1F
    ld l, a                                       ; $64C9: $6F
    rst RST_38                                    ; $64CA: $FF
    rst RST_38                                    ; $64CB: $FF
    rst RST_38                                    ; $64CC: $FF
    rst RST_38                                    ; $64CD: $FF
    jr nc, jr_002_653F                            ; $64CE: $30 $6F

    rst RST_38                                    ; $64D0: $FF
    rst RST_38                                    ; $64D1: $FF
    rst RST_38                                    ; $64D2: $FF
    rst RST_38                                    ; $64D3: $FF
    ld c, b                                       ; $64D4: $48
    ld l, a                                       ; $64D5: $6F
    rst RST_38                                    ; $64D6: $FF
    rst RST_38                                    ; $64D7: $FF
    ld a, $6F                                     ; $64D8: $3E $6F
    rst RST_38                                    ; $64DA: $FF
    rst RST_38                                    ; $64DB: $FF
    rst RST_38                                    ; $64DC: $FF
    rst RST_38                                    ; $64DD: $FF
    ld d, d                                       ; $64DE: $52
    ld l, a                                       ; $64DF: $6F
    rst RST_38                                    ; $64E0: $FF
    rst RST_38                                    ; $64E1: $FF
    ld a, $6F                                     ; $64E2: $3E $6F
    rst RST_38                                    ; $64E4: $FF
    rst RST_38                                    ; $64E5: $FF
    rst RST_38                                    ; $64E6: $FF
    rst RST_38                                    ; $64E7: $FF
    ld d, h                                       ; $64E8: $54
    ld l, d                                       ; $64E9: $6A
    rst RST_38                                    ; $64EA: $FF
    rst RST_38                                    ; $64EB: $FF
    and b                                         ; $64EC: $A0
    ld l, b                                       ; $64ED: $68
    rst RST_38                                    ; $64EE: $FF
    rst RST_38                                    ; $64EF: $FF
    ld d, h                                       ; $64F0: $54
    ld l, d                                       ; $64F1: $6A
    rst RST_38                                    ; $64F2: $FF
    rst RST_38                                    ; $64F3: $FF
    ccf                                           ; $64F4: $3F
    ld l, c                                       ; $64F5: $69
    rst RST_38                                    ; $64F6: $FF
    rst RST_38                                    ; $64F7: $FF
    ld d, h                                       ; $64F8: $54
    ld l, d                                       ; $64F9: $6A
    rst RST_38                                    ; $64FA: $FF
    rst RST_38                                    ; $64FB: $FF
    add d                                         ; $64FC: $82
    ld l, b                                       ; $64FD: $68
    rst RST_38                                    ; $64FE: $FF
    rst RST_38                                    ; $64FF: $FF
    ld d, h                                       ; $6500: $54
    ld l, d                                       ; $6501: $6A
    rst RST_38                                    ; $6502: $FF
    rst RST_38                                    ; $6503: $FF
    ld hl, $FF69                                  ; $6504: $21 $69 $FF
    rst RST_38                                    ; $6507: $FF
    rst RST_38                                    ; $6508: $FF
    rst RST_38                                    ; $6509: $FF
    ld d, h                                       ; $650A: $54
    ld l, d                                       ; $650B: $6A
    rst RST_38                                    ; $650C: $FF
    rst RST_38                                    ; $650D: $FF
    ld l, h                                       ; $650E: $6C
    ld l, d                                       ; $650F: $6A
    rst RST_38                                    ; $6510: $FF
    rst RST_38                                    ; $6511: $FF
    rst RST_38                                    ; $6512: $FF
    rst RST_38                                    ; $6513: $FF
    ld h, [hl]                                    ; $6514: $66
    ld l, a                                       ; $6515: $6F
    rst RST_38                                    ; $6516: $FF
    rst RST_38                                    ; $6517: $FF
    ld [hl], h                                    ; $6518: $74
    ld l, a                                       ; $6519: $6F
    rst RST_38                                    ; $651A: $FF
    rst RST_38                                    ; $651B: $FF
    add l                                         ; $651C: $85
    ld l, a                                       ; $651D: $6F
    rst RST_38                                    ; $651E: $FF
    rst RST_38                                    ; $651F: $FF
    ld [hl], h                                    ; $6520: $74
    ld l, a                                       ; $6521: $6F
    rst RST_38                                    ; $6522: $FF
    rst RST_38                                    ; $6523: $FF
    ld h, [hl]                                    ; $6524: $66
    ld l, a                                       ; $6525: $6F
    rst RST_38                                    ; $6526: $FF
    rst RST_38                                    ; $6527: $FF
    rst RST_38                                    ; $6528: $FF
    rst RST_38                                    ; $6529: $FF
    ld h, [hl]                                    ; $652A: $66
    ld l, a                                       ; $652B: $6F
    rst RST_38                                    ; $652C: $FF
    rst RST_38                                    ; $652D: $FF
    ld [hl], h                                    ; $652E: $74
    ld l, a                                       ; $652F: $6F
    rst RST_38                                    ; $6530: $FF
    rst RST_38                                    ; $6531: $FF
    add l                                         ; $6532: $85
    ld l, a                                       ; $6533: $6F
    rst RST_38                                    ; $6534: $FF
    rst RST_38                                    ; $6535: $FF
    sbc c                                         ; $6536: $99
    ld l, a                                       ; $6537: $6F
    rst RST_38                                    ; $6538: $FF
    rst RST_38                                    ; $6539: $FF
    add l                                         ; $653A: $85
    ld l, a                                       ; $653B: $6F
    rst RST_38                                    ; $653C: $FF
    rst RST_38                                    ; $653D: $FF
    ld [hl], h                                    ; $653E: $74

jr_002_653F:
    ld l, a                                       ; $653F: $6F
    rst RST_38                                    ; $6540: $FF
    rst RST_38                                    ; $6541: $FF
    ld h, [hl]                                    ; $6542: $66
    ld l, a                                       ; $6543: $6F
    rst RST_38                                    ; $6544: $FF
    rst RST_38                                    ; $6545: $FF
    rst RST_38                                    ; $6546: $FF
    rst RST_38                                    ; $6547: $FF
    ld h, [hl]                                    ; $6548: $66
    ld l, a                                       ; $6549: $6F
    rst RST_38                                    ; $654A: $FF
    rst RST_38                                    ; $654B: $FF
    ld [hl], h                                    ; $654C: $74
    ld l, a                                       ; $654D: $6F
    rst RST_38                                    ; $654E: $FF
    rst RST_38                                    ; $654F: $FF
    add l                                         ; $6550: $85
    ld l, a                                       ; $6551: $6F
    rst RST_38                                    ; $6552: $FF
    rst RST_38                                    ; $6553: $FF
    sbc c                                         ; $6554: $99
    ld l, a                                       ; $6555: $6F
    rst RST_38                                    ; $6556: $FF
    rst RST_38                                    ; $6557: $FF
    or b                                          ; $6558: $B0
    ld l, a                                       ; $6559: $6F
    rst RST_38                                    ; $655A: $FF
    rst RST_38                                    ; $655B: $FF
    jp z, $FF6F                                   ; $655C: $CA $6F $FF

    rst RST_38                                    ; $655F: $FF
    or b                                          ; $6560: $B0
    ld l, a                                       ; $6561: $6F
    rst RST_38                                    ; $6562: $FF
    rst RST_38                                    ; $6563: $FF
    sbc c                                         ; $6564: $99
    ld l, a                                       ; $6565: $6F
    rst RST_38                                    ; $6566: $FF
    rst RST_38                                    ; $6567: $FF
    add l                                         ; $6568: $85
    ld l, a                                       ; $6569: $6F
    rst RST_38                                    ; $656A: $FF
    rst RST_38                                    ; $656B: $FF
    ld [hl], h                                    ; $656C: $74
    ld l, a                                       ; $656D: $6F
    rst RST_38                                    ; $656E: $FF
    rst RST_38                                    ; $656F: $FF
    ld h, [hl]                                    ; $6570: $66
    ld l, a                                       ; $6571: $6F
    rst RST_38                                    ; $6572: $FF
    rst RST_38                                    ; $6573: $FF
    rst RST_38                                    ; $6574: $FF
    rst RST_38                                    ; $6575: $FF
    rst RST_20                                    ; $6576: $E7
    ld l, a                                       ; $6577: $6F
    rst RST_38                                    ; $6578: $FF
    rst RST_38                                    ; $6579: $FF
    rst RST_38                                    ; $657A: $FF
    rst RST_38                                    ; $657B: $FF
    inc e                                         ; $657C: $1C
    ld [hl], c                                    ; $657D: $71
    rst RST_38                                    ; $657E: $FF
    rst RST_38                                    ; $657F: $FF
    rst RST_38                                    ; $6580: $FF
    rst RST_38                                    ; $6581: $FF
    ld hl, sp+$6F                                 ; $6582: $F8 $6F
    rst RST_38                                    ; $6584: $FF
    rst RST_38                                    ; $6585: $FF
    ld e, e                                       ; $6586: $5B
    ld [hl], b                                    ; $6587: $70
    rst RST_38                                    ; $6588: $FF
    rst RST_38                                    ; $6589: $FF
    sub [hl]                                      ; $658A: $96
    ld [hl], b                                    ; $658B: $70
    rst RST_38                                    ; $658C: $FF
    rst RST_38                                    ; $658D: $FF
    rst RST_38                                    ; $658E: $FF
    rst RST_38                                    ; $658F: $FF
    ld [bc], a                                    ; $6590: $02
    ld [hl], b                                    ; $6591: $70
    rst RST_38                                    ; $6592: $FF
    rst RST_38                                    ; $6593: $FF
    ld e, e                                       ; $6594: $5B
    ld [hl], b                                    ; $6595: $70
    rst RST_38                                    ; $6596: $FF
    rst RST_38                                    ; $6597: $FF
    sub [hl]                                      ; $6598: $96
    ld [hl], b                                    ; $6599: $70
    rst RST_38                                    ; $659A: $FF
    rst RST_38                                    ; $659B: $FF
    rst RST_38                                    ; $659C: $FF
    rst RST_38                                    ; $659D: $FF
    cp c                                          ; $659E: $B9
    ld [hl], b                                    ; $659F: $70
    rst RST_38                                    ; $65A0: $FF
    rst RST_38                                    ; $65A1: $FF
    add sp, $70                                   ; $65A2: $E8 $70
    rst RST_38                                    ; $65A4: $FF
    rst RST_38                                    ; $65A5: $FF
    ld [bc], a                                    ; $65A6: $02
    ld [hl], c                                    ; $65A7: $71
    rst RST_38                                    ; $65A8: $FF
    rst RST_38                                    ; $65A9: $FF
    rst RST_38                                    ; $65AA: $FF
    rst RST_38                                    ; $65AB: $FF
    dec l                                         ; $65AC: $2D
    ld [hl], c                                    ; $65AD: $71
    rst RST_38                                    ; $65AE: $FF
    rst RST_38                                    ; $65AF: $FF
    ld c, l                                       ; $65B0: $4D
    ld [hl], c                                    ; $65B1: $71
    rst RST_38                                    ; $65B2: $FF
    rst RST_38                                    ; $65B3: $FF
    rst RST_38                                    ; $65B4: $FF
    rst RST_38                                    ; $65B5: $FF
    halt                                          ; $65B6: $76
    ld [hl], c                                    ; $65B7: $71
    rst RST_38                                    ; $65B8: $FF
    rst RST_38                                    ; $65B9: $FF
    sbc c                                         ; $65BA: $99
    ld [hl], c                                    ; $65BB: $71
    rst RST_38                                    ; $65BC: $FF
    rst RST_38                                    ; $65BD: $FF
    rst RST_38                                    ; $65BE: $FF
    rst RST_38                                    ; $65BF: $FF
    cp h                                          ; $65C0: $BC
    ld [hl], c                                    ; $65C1: $71
    rst RST_38                                    ; $65C2: $FF
    rst RST_38                                    ; $65C3: $FF
    jp z, $FF71                                   ; $65C4: $CA $71 $FF

    rst RST_38                                    ; $65C7: $FF
    rst RST_38                                    ; $65C8: $FF
    rst RST_38                                    ; $65C9: $FF
    pop hl                                        ; $65CA: $E1
    ld [hl], c                                    ; $65CB: $71
    rst RST_38                                    ; $65CC: $FF
    rst RST_38                                    ; $65CD: $FF
    push af                                       ; $65CE: $F5
    ld [hl], c                                    ; $65CF: $71
    rst RST_38                                    ; $65D0: $FF
    rst RST_38                                    ; $65D1: $FF
    add hl, bc                                    ; $65D2: $09
    ld [hl], d                                    ; $65D3: $72
    rst RST_38                                    ; $65D4: $FF
    rst RST_38                                    ; $65D5: $FF
    rst RST_38                                    ; $65D6: $FF
    rst RST_38                                    ; $65D7: $FF
    inc h                                         ; $65D8: $24
    ld [hl], d                                    ; $65D9: $72
    rst RST_38                                    ; $65DA: $FF
    rst RST_38                                    ; $65DB: $FF
    ld a, [de]                                    ; $65DC: $1A
    ld [hl], d                                    ; $65DD: $72
    rst RST_38                                    ; $65DE: $FF
    rst RST_38                                    ; $65DF: $FF
    rst RST_38                                    ; $65E0: $FF
    rst RST_38                                    ; $65E1: $FF
    jr c, jr_002_6656                             ; $65E2: $38 $72

    rst RST_38                                    ; $65E4: $FF
    rst RST_38                                    ; $65E5: $FF
    ld c, h                                       ; $65E6: $4C
    ld [hl], d                                    ; $65E7: $72
    rst RST_38                                    ; $65E8: $FF
    rst RST_38                                    ; $65E9: $FF
    ld [hl], h                                    ; $65EA: $74
    ld [hl], d                                    ; $65EB: $72
    rst RST_38                                    ; $65EC: $FF
    rst RST_38                                    ; $65ED: $FF
    ld h, b                                       ; $65EE: $60
    ld [hl], d                                    ; $65EF: $72
    rst RST_38                                    ; $65F0: $FF
    rst RST_38                                    ; $65F1: $FF
    rst RST_38                                    ; $65F2: $FF
    rst RST_38                                    ; $65F3: $FF
    jr c, jr_002_6668                             ; $65F4: $38 $72

    rst RST_38                                    ; $65F6: $FF
    rst RST_38                                    ; $65F7: $FF
    ld h, b                                       ; $65F8: $60
    ld [hl], d                                    ; $65F9: $72
    rst RST_38                                    ; $65FA: $FF
    rst RST_38                                    ; $65FB: $FF
    ld [hl], h                                    ; $65FC: $74
    ld [hl], d                                    ; $65FD: $72
    rst RST_38                                    ; $65FE: $FF
    rst RST_38                                    ; $65FF: $FF
    ld c, h                                       ; $6600: $4C
    ld [hl], d                                    ; $6601: $72
    rst RST_38                                    ; $6602: $FF
    rst RST_38                                    ; $6603: $FF
    rst RST_38                                    ; $6604: $FF
    rst RST_38                                    ; $6605: $FF
    ld b, d                                       ; $6606: $42
    ld [hl], d                                    ; $6607: $72
    rst RST_38                                    ; $6608: $FF
    rst RST_38                                    ; $6609: $FF
    ld l, d                                       ; $660A: $6A
    ld [hl], d                                    ; $660B: $72
    rst RST_38                                    ; $660C: $FF
    rst RST_38                                    ; $660D: $FF
    ld a, [hl]                                    ; $660E: $7E
    ld [hl], d                                    ; $660F: $72
    rst RST_38                                    ; $6610: $FF
    rst RST_38                                    ; $6611: $FF
    ld d, [hl]                                    ; $6612: $56
    ld [hl], d                                    ; $6613: $72
    rst RST_38                                    ; $6614: $FF
    rst RST_38                                    ; $6615: $FF
    rst RST_38                                    ; $6616: $FF
    rst RST_38                                    ; $6617: $FF
    sbc h                                         ; $6618: $9C
    ld [hl], d                                    ; $6619: $72
    rst RST_38                                    ; $661A: $FF
    rst RST_38                                    ; $661B: $FF
    sub d                                         ; $661C: $92
    ld [hl], d                                    ; $661D: $72
    rst RST_38                                    ; $661E: $FF
    rst RST_38                                    ; $661F: $FF
    sbc h                                         ; $6620: $9C
    ld [hl], d                                    ; $6621: $72
    rst RST_38                                    ; $6622: $FF
    rst RST_38                                    ; $6623: $FF
    sub d                                         ; $6624: $92
    ld [hl], d                                    ; $6625: $72
    rst RST_38                                    ; $6626: $FF
    rst RST_38                                    ; $6627: $FF
    sbc h                                         ; $6628: $9C
    ld [hl], d                                    ; $6629: $72
    rst RST_38                                    ; $662A: $FF
    rst RST_38                                    ; $662B: $FF
    sub d                                         ; $662C: $92
    ld [hl], d                                    ; $662D: $72
    rst RST_38                                    ; $662E: $FF
    rst RST_38                                    ; $662F: $FF
    sbc h                                         ; $6630: $9C
    ld [hl], d                                    ; $6631: $72
    rst RST_38                                    ; $6632: $FF
    rst RST_38                                    ; $6633: $FF
    sub d                                         ; $6634: $92
    ld [hl], d                                    ; $6635: $72
    rst RST_38                                    ; $6636: $FF
    rst RST_38                                    ; $6637: $FF
    and [hl]                                      ; $6638: $A6
    ld [hl], d                                    ; $6639: $72
    rst RST_38                                    ; $663A: $FF
    rst RST_38                                    ; $663B: $FF
    sub d                                         ; $663C: $92
    ld [hl], d                                    ; $663D: $72
    rst RST_38                                    ; $663E: $FF
    rst RST_38                                    ; $663F: $FF
    and [hl]                                      ; $6640: $A6
    ld [hl], d                                    ; $6641: $72
    rst RST_38                                    ; $6642: $FF
    rst RST_38                                    ; $6643: $FF
    sub d                                         ; $6644: $92
    ld [hl], d                                    ; $6645: $72
    rst RST_38                                    ; $6646: $FF
    rst RST_38                                    ; $6647: $FF
    and [hl]                                      ; $6648: $A6
    ld [hl], d                                    ; $6649: $72
    rst RST_38                                    ; $664A: $FF
    rst RST_38                                    ; $664B: $FF
    sub d                                         ; $664C: $92
    ld [hl], d                                    ; $664D: $72
    rst RST_38                                    ; $664E: $FF
    rst RST_38                                    ; $664F: $FF
    and [hl]                                      ; $6650: $A6
    ld [hl], d                                    ; $6651: $72
    rst RST_38                                    ; $6652: $FF
    rst RST_38                                    ; $6653: $FF
    sub d                                         ; $6654: $92
    ld [hl], d                                    ; $6655: $72

jr_002_6656:
    rst RST_38                                    ; $6656: $FF
    rst RST_38                                    ; $6657: $FF
    cp d                                          ; $6658: $BA
    ld [hl], d                                    ; $6659: $72
    rst RST_38                                    ; $665A: $FF
    rst RST_38                                    ; $665B: $FF
    sub d                                         ; $665C: $92
    ld [hl], d                                    ; $665D: $72
    rst RST_38                                    ; $665E: $FF
    rst RST_38                                    ; $665F: $FF
    cp d                                          ; $6660: $BA
    ld [hl], d                                    ; $6661: $72
    rst RST_38                                    ; $6662: $FF
    rst RST_38                                    ; $6663: $FF
    sub d                                         ; $6664: $92
    ld [hl], d                                    ; $6665: $72
    rst RST_38                                    ; $6666: $FF
    rst RST_38                                    ; $6667: $FF

jr_002_6668:
    cp d                                          ; $6668: $BA
    ld [hl], d                                    ; $6669: $72
    rst RST_38                                    ; $666A: $FF
    rst RST_38                                    ; $666B: $FF
    sub d                                         ; $666C: $92
    ld [hl], d                                    ; $666D: $72
    rst RST_38                                    ; $666E: $FF
    rst RST_38                                    ; $666F: $FF
    cp d                                          ; $6670: $BA
    ld [hl], d                                    ; $6671: $72
    rst RST_38                                    ; $6672: $FF
    rst RST_38                                    ; $6673: $FF
    sub d                                         ; $6674: $92
    ld [hl], d                                    ; $6675: $72
    rst RST_38                                    ; $6676: $FF
    rst RST_38                                    ; $6677: $FF
    or b                                          ; $6678: $B0
    ld [hl], d                                    ; $6679: $72
    rst RST_38                                    ; $667A: $FF
    rst RST_38                                    ; $667B: $FF
    sub d                                         ; $667C: $92
    ld [hl], d                                    ; $667D: $72
    rst RST_38                                    ; $667E: $FF
    rst RST_38                                    ; $667F: $FF
    or b                                          ; $6680: $B0
    ld [hl], d                                    ; $6681: $72
    rst RST_38                                    ; $6682: $FF
    rst RST_38                                    ; $6683: $FF
    sub d                                         ; $6684: $92
    ld [hl], d                                    ; $6685: $72
    rst RST_38                                    ; $6686: $FF
    rst RST_38                                    ; $6687: $FF
    or b                                          ; $6688: $B0
    ld [hl], d                                    ; $6689: $72
    rst RST_38                                    ; $668A: $FF
    rst RST_38                                    ; $668B: $FF
    sub d                                         ; $668C: $92
    ld [hl], d                                    ; $668D: $72
    rst RST_38                                    ; $668E: $FF
    rst RST_38                                    ; $668F: $FF
    or b                                          ; $6690: $B0
    ld [hl], d                                    ; $6691: $72
    rst RST_38                                    ; $6692: $FF
    rst RST_38                                    ; $6693: $FF
    sub d                                         ; $6694: $92
    ld [hl], d                                    ; $6695: $72
    rst RST_38                                    ; $6696: $FF
    rst RST_38                                    ; $6697: $FF
    rst RST_38                                    ; $6698: $FF
    rst RST_38                                    ; $6699: $FF
    nop                                           ; $669A: $00
    nop                                           ; $669B: $00
    nop                                           ; $669C: $00
    ld [hl], h                                    ; $669D: $74
    ld [hl], e                                    ; $669E: $73
    ld bc, $66A4                                  ; $669F: $01 $A4 $66
    call c, Call_000_0304                         ; $66A2: $DC $04 $03
    db $10                                        ; $66A5: $10
    jr nz, jr_002_66A8                            ; $66A6: $20 $00

jr_002_66A8:
    jr nz, jr_002_66CA                            ; $66A8: $20 $20

    ld [bc], a                                    ; $66AA: $02
    jr nc, @+$22                                  ; $66AB: $30 $20

    inc b                                         ; $66AD: $04
    nop                                           ; $66AE: $00
    nop                                           ; $66AF: $00
    nop                                           ; $66B0: $00
    call nc, Call_000_0173                        ; $66B1: $D4 $73 $01
    cp b                                          ; $66B4: $B8
    ld h, [hl]                                    ; $66B5: $66
    call c, Call_000_0C04                         ; $66B6: $DC $04 $0C
    db $10                                        ; $66B9: $10
    stop                                          ; $66BA: $10 $00
    dec d                                         ; $66BC: $15
    jr @+$04                                      ; $66BD: $18 $02

    dec d                                         ; $66BF: $15
    jr nz, jr_002_66C6                            ; $66C0: $20 $04

    dec d                                         ; $66C2: $15
    jr z, jr_002_66CB                             ; $66C3: $28 $06

    db $10                                        ; $66C5: $10

jr_002_66C6:
    jr nc, @+$0A                                  ; $66C6: $30 $08

    jr nz, jr_002_66DA                            ; $66C8: $20 $10

jr_002_66CA:
    ld a, [bc]                                    ; $66CA: $0A

jr_002_66CB:
    dec h                                         ; $66CB: $25
    jr jr_002_66DA                                ; $66CC: $18 $0C

    dec h                                         ; $66CE: $25
    jr nz, jr_002_66DF                            ; $66CF: $20 $0E

    dec h                                         ; $66D1: $25
    jr z, @+$12                                   ; $66D2: $28 $10

    jr nz, @+$32                                  ; $66D4: $20 $30

    ld [de], a                                    ; $66D6: $12
    dec [hl]                                      ; $66D7: $35
    add hl, de                                    ; $66D8: $19
    inc d                                         ; $66D9: $14

jr_002_66DA:
    dec [hl]                                      ; $66DA: $35
    daa                                           ; $66DB: $27
    ld d, $00                                     ; $66DC: $16 $00
    nop                                           ; $66DE: $00

jr_002_66DF:
    nop                                           ; $66DF: $00
    ld d, h                                       ; $66E0: $54
    ld [hl], l                                    ; $66E1: $75
    ld bc, $66F1                                  ; $66E2: $01 $F1 $66
    call c, $2004                                 ; $66E5: $DC $04 $20
    nop                                           ; $66E8: $00
    nop                                           ; $66E9: $00
    ld d, h                                       ; $66EA: $54
    ld [hl], l                                    ; $66EB: $75
    ld bc, $66F1                                  ; $66EC: $01 $F1 $66
    inc h                                         ; $66EF: $24
    inc b                                         ; $66F0: $04
    inc c                                         ; $66F1: $0C
    db $10                                        ; $66F2: $10
    inc d                                         ; $66F3: $14
    nop                                           ; $66F4: $00
    rla                                           ; $66F5: $17
    inc e                                         ; $66F6: $1C
    ld [bc], a                                    ; $66F7: $02
    rla                                           ; $66F8: $17
    inc h                                         ; $66F9: $24
    inc b                                         ; $66FA: $04
    db $10                                        ; $66FB: $10
    inc l                                         ; $66FC: $2C
    ld b, $20                                     ; $66FD: $06 $20
    inc d                                         ; $66FF: $14
    ld [$1827], sp                                ; $6700: $08 $27 $18
    ld a, [bc]                                    ; $6703: $0A
    daa                                           ; $6704: $27
    jr nz, jr_002_6713                            ; $6705: $20 $0C

    daa                                           ; $6707: $27
    jr z, jr_002_6718                             ; $6708: $28 $0E

    jr nz, @+$2E                                  ; $670A: $20 $2C

    db $10                                        ; $670C: $10
    inc d                                         ; $670D: $14
    inc [hl]                                      ; $670E: $34
    ld [de], a                                    ; $670F: $12
    scf                                           ; $6710: $37
    inc e                                         ; $6711: $1C
    inc d                                         ; $6712: $14

jr_002_6713:
    scf                                           ; $6713: $37
    inc h                                         ; $6714: $24
    ld d, $00                                     ; $6715: $16 $00
    nop                                           ; $6717: $00

jr_002_6718:
    nop                                           ; $6718: $00
    call nc, Call_000_0176                        ; $6719: $D4 $76 $01
    ld a, [hl+]                                   ; $671C: $2A
    ld h, a                                       ; $671D: $67
    call c, $2004                                 ; $671E: $DC $04 $20
    nop                                           ; $6721: $00
    nop                                           ; $6722: $00
    call nc, Call_000_0176                        ; $6723: $D4 $76 $01
    ld a, [hl+]                                   ; $6726: $2A
    ld h, a                                       ; $6727: $67
    inc h                                         ; $6728: $24
    inc b                                         ; $6729: $04
    dec bc                                        ; $672A: $0B
    db $10                                        ; $672B: $10
    ld d, $00                                     ; $672C: $16 $00
    rla                                           ; $672E: $17
    ld e, $02                                     ; $672F: $1E $02
    inc de                                        ; $6731: $13
    ld h, $04                                     ; $6732: $26 $04
    db $10                                        ; $6734: $10
    ld l, $06                                     ; $6735: $2E $06
    jr nz, jr_002_674F                            ; $6737: $20 $16

    ld [$1E27], sp                                ; $6739: $08 $27 $1E
    ld a, [bc]                                    ; $673C: $0A
    inc hl                                        ; $673D: $23
    ld h, $0C                                     ; $673E: $26 $0C
    jr nz, @+$30                                  ; $6740: $20 $2E

    ld c, $30                                     ; $6742: $0E $30
    ld d, $10                                     ; $6744: $16 $10
    inc sp                                        ; $6746: $33
    ld h, $12                                     ; $6747: $26 $12
    scf                                           ; $6749: $37
    ld e, $14                                     ; $674A: $1E $14
    nop                                           ; $674C: $00
    nop                                           ; $674D: $00
    nop                                           ; $674E: $00

jr_002_674F:
    inc [hl]                                      ; $674F: $34
    ld a, b                                       ; $6750: $78
    ld bc, $6760                                  ; $6751: $01 $60 $67
    call c, $2004                                 ; $6754: $DC $04 $20
    nop                                           ; $6757: $00
    nop                                           ; $6758: $00
    inc [hl]                                      ; $6759: $34
    ld a, b                                       ; $675A: $78
    ld bc, $6760                                  ; $675B: $01 $60 $67
    inc h                                         ; $675E: $24
    inc b                                         ; $675F: $04
    ld a, [bc]                                    ; $6760: $0A
    db $10                                        ; $6761: $10
    jr jr_002_6764                                ; $6762: $18 $00

jr_002_6764:
    db $10                                        ; $6764: $10
    jr nz, @+$04                                  ; $6765: $20 $02

    db $10                                        ; $6767: $10
    jr z, @+$06                                   ; $6768: $28 $04

    ld de, $0630                                  ; $676A: $11 $30 $06
    jr nz, jr_002_6787                            ; $676D: $20 $18

    ld [$2020], sp                                ; $676F: $08 $20 $20
    ld a, [bc]                                    ; $6772: $0A
    jr nz, @+$2A                                  ; $6773: $20 $28

    inc c                                         ; $6775: $0C
    ld hl, $0E30                                  ; $6776: $21 $30 $0E
    jr nc, jr_002_6797                            ; $6779: $30 $1C

    db $10                                        ; $677B: $10
    jr nc, @+$26                                  ; $677C: $30 $24

    ld [de], a                                    ; $677E: $12
    nop                                           ; $677F: $00
    nop                                           ; $6780: $00
    nop                                           ; $6781: $00
    ld [hl], h                                    ; $6782: $74
    ld a, c                                       ; $6783: $79
    ld bc, $6789                                  ; $6784: $01 $89 $67

jr_002_6787:
    call c, Call_000_0D04                         ; $6787: $DC $04 $0D
    db $10                                        ; $678A: $10
    stop                                          ; $678B: $10 $00
    db $10                                        ; $678D: $10
    jr @+$04                                      ; $678E: $18 $02

    db $10                                        ; $6790: $10
    jr nz, jr_002_6797                            ; $6791: $20 $04

    db $10                                        ; $6793: $10
    jr z, jr_002_679C                             ; $6794: $28 $06

    db $10                                        ; $6796: $10

jr_002_6797:
    jr nc, jr_002_67A1                            ; $6797: $30 $08

    jr nz, jr_002_67AB                            ; $6799: $20 $10

    ld a, [bc]                                    ; $679B: $0A

jr_002_679C:
    jr nz, jr_002_67B6                            ; $679C: $20 $18

    inc c                                         ; $679E: $0C
    jr nz, @+$22                                  ; $679F: $20 $20

jr_002_67A1:
    ld c, $20                                     ; $67A1: $0E $20
    jr z, jr_002_67B5                             ; $67A3: $28 $10

    jr nz, jr_002_67D7                            ; $67A5: $20 $30

    ld [de], a                                    ; $67A7: $12
    jr nc, @+$1A                                  ; $67A8: $30 $18

    inc d                                         ; $67AA: $14

jr_002_67AB:
    jr nc, jr_002_67CD                            ; $67AB: $30 $20

    ld d, $30                                     ; $67AD: $16 $30
    jr z, jr_002_67C9                             ; $67AF: $28 $18

    nop                                           ; $67B1: $00
    nop                                           ; $67B2: $00
    nop                                           ; $67B3: $00
    inc d                                         ; $67B4: $14

jr_002_67B5:
    ld a, e                                       ; $67B5: $7B

jr_002_67B6:
    ld bc, $67C5                                  ; $67B6: $01 $C5 $67
    call c, $2004                                 ; $67B9: $DC $04 $20
    nop                                           ; $67BC: $00
    nop                                           ; $67BD: $00
    inc d                                         ; $67BE: $14
    ld a, e                                       ; $67BF: $7B
    ld bc, $67C5                                  ; $67C0: $01 $C5 $67
    inc h                                         ; $67C3: $24
    inc b                                         ; $67C4: $04
    dec c                                         ; $67C5: $0D
    db $10                                        ; $67C6: $10
    stop                                          ; $67C7: $10 $00

jr_002_67C9:
    db $10                                        ; $67C9: $10
    jr @+$04                                      ; $67CA: $18 $02

    db $10                                        ; $67CC: $10

jr_002_67CD:
    jr nz, jr_002_67D3                            ; $67CD: $20 $04

    db $10                                        ; $67CF: $10
    jr z, jr_002_67D8                             ; $67D0: $28 $06

    db $10                                        ; $67D2: $10

jr_002_67D3:
    jr nc, jr_002_67DD                            ; $67D3: $30 $08

    jr nz, jr_002_67E7                            ; $67D5: $20 $10

jr_002_67D7:
    ld a, [bc]                                    ; $67D7: $0A

jr_002_67D8:
    jr nz, jr_002_67F2                            ; $67D8: $20 $18

    inc c                                         ; $67DA: $0C
    jr nz, @+$22                                  ; $67DB: $20 $20

jr_002_67DD:
    ld c, $20                                     ; $67DD: $0E $20
    jr z, jr_002_67F1                             ; $67DF: $28 $10

    jr nz, jr_002_6813                            ; $67E1: $20 $30

    ld [de], a                                    ; $67E3: $12
    jr nc, @+$1A                                  ; $67E4: $30 $18

    inc d                                         ; $67E6: $14

jr_002_67E7:
    jr nc, jr_002_6809                            ; $67E7: $30 $20

    ld d, $30                                     ; $67E9: $16 $30
    jr z, jr_002_6805                             ; $67EB: $28 $18

    nop                                           ; $67ED: $00
    nop                                           ; $67EE: $00
    nop                                           ; $67EF: $00
    or h                                          ; $67F0: $B4

jr_002_67F1:
    ld a, h                                       ; $67F1: $7C

jr_002_67F2:
    ld bc, $6801                                  ; $67F2: $01 $01 $68
    call c, $2004                                 ; $67F5: $DC $04 $20
    nop                                           ; $67F8: $00
    nop                                           ; $67F9: $00
    or h                                          ; $67FA: $B4
    ld a, h                                       ; $67FB: $7C
    ld bc, $6801                                  ; $67FC: $01 $01 $68
    inc h                                         ; $67FF: $24
    inc b                                         ; $6800: $04
    dec bc                                        ; $6801: $0B
    db $10                                        ; $6802: $10
    stop                                          ; $6803: $10 $00

jr_002_6805:
    db $10                                        ; $6805: $10
    jr @+$04                                      ; $6806: $18 $02

    db $10                                        ; $6808: $10

jr_002_6809:
    jr nz, jr_002_680F                            ; $6809: $20 $04

    db $10                                        ; $680B: $10
    jr z, jr_002_6814                             ; $680C: $28 $06

    db $10                                        ; $680E: $10

jr_002_680F:
    jr nc, jr_002_6819                            ; $680F: $30 $08

    jr nz, jr_002_6828                            ; $6811: $20 $15

jr_002_6813:
    ld a, [bc]                                    ; $6813: $0A

jr_002_6814:
    jr nz, @+$1F                                  ; $6814: $20 $1D

    inc c                                         ; $6816: $0C
    jr nz, jr_002_683E                            ; $6817: $20 $25

jr_002_6819:
    ld c, $20                                     ; $6819: $0E $20
    dec l                                         ; $681B: $2D
    db $10                                        ; $681C: $10
    jr nc, jr_002_683C                            ; $681D: $30 $1D

    ld [de], a                                    ; $681F: $12
    jr nc, @+$27                                  ; $6820: $30 $25

    inc d                                         ; $6822: $14
    nop                                           ; $6823: $00
    nop                                           ; $6824: $00
    nop                                           ; $6825: $00
    inc d                                         ; $6826: $14
    ld a, [hl]                                    ; $6827: $7E

jr_002_6828:
    ld bc, $6837                                  ; $6828: $01 $37 $68
    call c, $2004                                 ; $682B: $DC $04 $20
    nop                                           ; $682E: $00
    nop                                           ; $682F: $00
    inc d                                         ; $6830: $14
    ld a, [hl]                                    ; $6831: $7E
    ld bc, $6837                                  ; $6832: $01 $37 $68
    inc h                                         ; $6835: $24
    inc b                                         ; $6836: $04
    ld a, [bc]                                    ; $6837: $0A
    db $10                                        ; $6838: $10
    ld d, $00                                     ; $6839: $16 $00
    db $10                                        ; $683B: $10

jr_002_683C:
    ld e, $02                                     ; $683C: $1E $02

jr_002_683E:
    db $10                                        ; $683E: $10
    ld h, $04                                     ; $683F: $26 $04
    db $10                                        ; $6841: $10
    ld l, $06                                     ; $6842: $2E $06
    jr nz, jr_002_685C                            ; $6844: $20 $16

    ld [$1E20], sp                                ; $6846: $08 $20 $1E
    ld a, [bc]                                    ; $6849: $0A
    jr nz, jr_002_6872                            ; $684A: $20 $26

    inc c                                         ; $684C: $0C
    jr nz, jr_002_687D                            ; $684D: $20 $2E

    ld c, $30                                     ; $684F: $0E $30
    ld e, $10                                     ; $6851: $1E $10
    jr nc, jr_002_687B                            ; $6853: $30 $26

    ld [de], a                                    ; $6855: $12
    add b                                         ; $6856: $80
    nop                                           ; $6857: $00
    nop                                           ; $6858: $00
    rst RST_38                                    ; $6859: $FF
    rst RST_38                                    ; $685A: $FF
    rst RST_38                                    ; $685B: $FF

jr_002_685C:
    ld h, b                                       ; $685C: $60
    ld l, b                                       ; $685D: $68
    nop                                           ; $685E: $00
    nop                                           ; $685F: $00
    ld bc, $FA10                                  ; $6860: $01 $10 $FA
    nop                                           ; $6863: $00
    sub b                                         ; $6864: $90
    nop                                           ; $6865: $00
    nop                                           ; $6866: $00
    rst RST_38                                    ; $6867: $FF
    rst RST_38                                    ; $6868: $FF
    rst RST_38                                    ; $6869: $FF
    ret z                                         ; $686A: $C8

    ld l, b                                       ; $686B: $68
    nop                                           ; $686C: $00
    nop                                           ; $686D: $00
    or b                                          ; $686E: $B0
    nop                                           ; $686F: $00
    nop                                           ; $6870: $00
    rst RST_38                                    ; $6871: $FF

jr_002_6872:
    rst RST_38                                    ; $6872: $FF
    rst RST_38                                    ; $6873: $FF
    ret z                                         ; $6874: $C8

    ld l, b                                       ; $6875: $68
    nop                                           ; $6876: $00
    nop                                           ; $6877: $00
    sub b                                         ; $6878: $90
    nop                                           ; $6879: $00
    nop                                           ; $687A: $00

jr_002_687B:
    rst RST_38                                    ; $687B: $FF
    rst RST_38                                    ; $687C: $FF

jr_002_687D:
    rst RST_38                                    ; $687D: $FF
    call z, Call_000_0068                         ; $687E: $CC $68 $00
    nop                                           ; $6881: $00
    sub b                                         ; $6882: $90
    nop                                           ; $6883: $00
    nop                                           ; $6884: $00
    rst RST_38                                    ; $6885: $FF
    rst RST_38                                    ; $6886: $FF
    rst RST_38                                    ; $6887: $FF
    db $D3                                        ; $6888: $D3
    ld l, b                                       ; $6889: $68
    nop                                           ; $688A: $00
    nop                                           ; $688B: $00
    sub b                                         ; $688C: $90
    nop                                           ; $688D: $00
    cp l                                          ; $688E: $BD
    rst RST_38                                    ; $688F: $FF
    rst RST_38                                    ; $6890: $FF
    rst RST_38                                    ; $6891: $FF
    db $D3                                        ; $6892: $D3
    ld l, b                                       ; $6893: $68
    nop                                           ; $6894: $00
    nop                                           ; $6895: $00
    sub b                                         ; $6896: $90
    nop                                           ; $6897: $00
    nop                                           ; $6898: $00
    rst RST_38                                    ; $6899: $FF
    rst RST_38                                    ; $689A: $FF
    rst RST_38                                    ; $689B: $FF
    ldh [rBCPS], a                                ; $689C: $E0 $68
    nop                                           ; $689E: $00
    nop                                           ; $689F: $00
    or b                                          ; $68A0: $B0
    nop                                           ; $68A1: $00
    nop                                           ; $68A2: $00
    rst RST_38                                    ; $68A3: $FF
    rst RST_38                                    ; $68A4: $FF
    rst RST_38                                    ; $68A5: $FF
    ldh [rBCPS], a                                ; $68A6: $E0 $68
    nop                                           ; $68A8: $00
    nop                                           ; $68A9: $00
    or b                                          ; $68AA: $B0
    nop                                           ; $68AB: $00
    cp l                                          ; $68AC: $BD
    rst RST_38                                    ; $68AD: $FF
    rst RST_38                                    ; $68AE: $FF
    rst RST_38                                    ; $68AF: $FF
    ldh [rBCPS], a                                ; $68B0: $E0 $68
    nop                                           ; $68B2: $00
    nop                                           ; $68B3: $00
    sub b                                         ; $68B4: $90
    nop                                           ; $68B5: $00
    nop                                           ; $68B6: $00
    rst RST_38                                    ; $68B7: $FF
    rst RST_38                                    ; $68B8: $FF
    rst RST_38                                    ; $68B9: $FF
    ldh a, [rBCPS]                                ; $68BA: $F0 $68
    nop                                           ; $68BC: $00
    nop                                           ; $68BD: $00
    ldh a, [rP1]                                  ; $68BE: $F0 $00
    nop                                           ; $68C0: $00
    rst RST_38                                    ; $68C1: $FF
    rst RST_38                                    ; $68C2: $FF
    rst RST_38                                    ; $68C3: $FF
    ldh a, [rBCPS]                                ; $68C4: $F0 $68
    nop                                           ; $68C6: $00

jr_002_68C7:
    nop                                           ; $68C7: $00
    ld bc, $FC28                                  ; $68C8: $01 $28 $FC
    nop                                           ; $68CB: $00
    ld [bc], a                                    ; $68CC: $02
    jr nz, jr_002_68C7                            ; $68CD: $20 $F8

    nop                                           ; $68CF: $00
    jr nc, jr_002_68D2                            ; $68D0: $30 $00

jr_002_68D2:
    nop                                           ; $68D2: $00
    inc b                                         ; $68D3: $04
    db $10                                        ; $68D4: $10
    ldh a, [rP1]                                  ; $68D5: $F0 $00
    jr nz, @-$06                                  ; $68D7: $20 $F8

    nop                                           ; $68D9: $00
    jr nc, jr_002_68DC                            ; $68DA: $30 $00

jr_002_68DC:
    nop                                           ; $68DC: $00
    ld b, b                                       ; $68DD: $40
    ld [$0500], sp                                ; $68DE: $08 $00 $05

jr_002_68E1:
    nop                                           ; $68E1: $00
    add sp, $00                                   ; $68E2: $E8 $00
    db $10                                        ; $68E4: $10
    ldh a, [rP1]                                  ; $68E5: $F0 $00
    jr nz, jr_002_68E1                            ; $68E7: $20 $F8

    nop                                           ; $68E9: $00
    jr nc, jr_002_68EC                            ; $68EA: $30 $00

jr_002_68EC:
    nop                                           ; $68EC: $00
    ld b, b                                       ; $68ED: $40
    ld [$0600], sp                                ; $68EE: $08 $00 $06
    ldh a, [$FFE0]                                ; $68F1: $F0 $E0
    nop                                           ; $68F3: $00

jr_002_68F4:
    nop                                           ; $68F4: $00
    add sp, $00                                   ; $68F5: $E8 $00
    db $10                                        ; $68F7: $10
    ldh a, [rP1]                                  ; $68F8: $F0 $00
    jr nz, jr_002_68F4                            ; $68FA: $20 $F8

    nop                                           ; $68FC: $00
    jr nc, jr_002_68FF                            ; $68FD: $30 $00

jr_002_68FF:
    nop                                           ; $68FF: $00
    ld b, b                                       ; $6900: $40
    ld [$9000], sp                                ; $6901: $08 $00 $90
    nop                                           ; $6904: $00
    nop                                           ; $6905: $00
    rst RST_38                                    ; $6906: $FF
    rst RST_38                                    ; $6907: $FF
    rst RST_38                                    ; $6908: $FF
    ld h, a                                       ; $6909: $67
    ld l, c                                       ; $690A: $69
    nop                                           ; $690B: $00
    nop                                           ; $690C: $00
    or b                                          ; $690D: $B0
    nop                                           ; $690E: $00
    nop                                           ; $690F: $00
    rst RST_38                                    ; $6910: $FF
    rst RST_38                                    ; $6911: $FF
    rst RST_38                                    ; $6912: $FF
    ld h, a                                       ; $6913: $67
    ld l, c                                       ; $6914: $69
    nop                                           ; $6915: $00
    nop                                           ; $6916: $00
    sub b                                         ; $6917: $90
    nop                                           ; $6918: $00
    nop                                           ; $6919: $00
    rst RST_38                                    ; $691A: $FF
    rst RST_38                                    ; $691B: $FF
    rst RST_38                                    ; $691C: $FF
    ld l, e                                       ; $691D: $6B
    ld l, c                                       ; $691E: $69
    nop                                           ; $691F: $00
    nop                                           ; $6920: $00
    sub b                                         ; $6921: $90
    nop                                           ; $6922: $00
    nop                                           ; $6923: $00
    rst RST_38                                    ; $6924: $FF
    rst RST_38                                    ; $6925: $FF
    rst RST_38                                    ; $6926: $FF
    ld a, b                                       ; $6927: $78
    ld l, c                                       ; $6928: $69
    nop                                           ; $6929: $00
    nop                                           ; $692A: $00
    sub b                                         ; $692B: $90
    nop                                           ; $692C: $00
    cp l                                          ; $692D: $BD
    rst RST_38                                    ; $692E: $FF
    rst RST_38                                    ; $692F: $FF
    rst RST_38                                    ; $6930: $FF
    ld a, b                                       ; $6931: $78
    ld l, c                                       ; $6932: $69
    nop                                           ; $6933: $00
    nop                                           ; $6934: $00
    sub b                                         ; $6935: $90
    nop                                           ; $6936: $00
    nop                                           ; $6937: $00
    rst RST_38                                    ; $6938: $FF
    rst RST_38                                    ; $6939: $FF
    rst RST_38                                    ; $693A: $FF
    sub c                                         ; $693B: $91
    ld l, c                                       ; $693C: $69
    nop                                           ; $693D: $00
    nop                                           ; $693E: $00
    ret nc                                        ; $693F: $D0

    nop                                           ; $6940: $00
    nop                                           ; $6941: $00
    rst RST_38                                    ; $6942: $FF
    rst RST_38                                    ; $6943: $FF
    rst RST_38                                    ; $6944: $FF
    sub c                                         ; $6945: $91
    ld l, c                                       ; $6946: $69
    nop                                           ; $6947: $00
    nop                                           ; $6948: $00
    ret nc                                        ; $6949: $D0

    nop                                           ; $694A: $00
    cp l                                          ; $694B: $BD
    rst RST_38                                    ; $694C: $FF
    rst RST_38                                    ; $694D: $FF
    rst RST_38                                    ; $694E: $FF
    sub c                                         ; $694F: $91
    ld l, c                                       ; $6950: $69
    nop                                           ; $6951: $00
    nop                                           ; $6952: $00
    sub b                                         ; $6953: $90
    nop                                           ; $6954: $00
    nop                                           ; $6955: $00
    rst RST_38                                    ; $6956: $FF
    rst RST_38                                    ; $6957: $FF
    rst RST_38                                    ; $6958: $FF
    xor d                                         ; $6959: $AA
    ld l, c                                       ; $695A: $69
    nop                                           ; $695B: $00
    nop                                           ; $695C: $00
    ldh a, [rP1]                                  ; $695D: $F0 $00
    nop                                           ; $695F: $00
    rst RST_38                                    ; $6960: $FF
    rst RST_38                                    ; $6961: $FF
    rst RST_38                                    ; $6962: $FF
    xor d                                         ; $6963: $AA
    ld l, c                                       ; $6964: $69
    nop                                           ; $6965: $00

jr_002_6966:
    nop                                           ; $6966: $00
    ld bc, $F830                                  ; $6967: $01 $30 $F8
    jp nz, Jump_000_3404                          ; $696A: $C2 $04 $34

    ldh a, [$FFC2]                                ; $696D: $F0 $C2
    jr nc, @-$06                                  ; $696F: $30 $F8

    jp nz, RST_20                                 ; $6971: $C2 $20 $00

    ld [bc], a                                    ; $6974: $02
    inc e                                         ; $6975: $1C
    ld [$0802], sp                                ; $6976: $08 $02 $08
    inc a                                         ; $6979: $3C
    ldh [$FFC2], a                                ; $697A: $E0 $C2
    jr c, jr_002_6966                             ; $697C: $38 $E8

    jp nz, $F034                                  ; $697E: $C2 $34 $F0

    jp nz, $F830                                  ; $6981: $C2 $30 $F8

    jp nz, RST_20                                 ; $6984: $C2 $20 $00

    ld [bc], a                                    ; $6987: $02
    inc e                                         ; $6988: $1C
    ld [$1802], sp                                ; $6989: $08 $02 $18
    db $10                                        ; $698C: $10
    ld [bc], a                                    ; $698D: $02
    inc d                                         ; $698E: $14
    jr @+$04                                      ; $698F: $18 $02

    ld [$E838], sp                                ; $6991: $08 $38 $E8
    jp nz, $F034                                  ; $6994: $C2 $34 $F0

    jp nz, $F830                                  ; $6997: $C2 $30 $F8

    jp nz, RST_20                                 ; $699A: $C2 $20 $00

    ld [bc], a                                    ; $699D: $02
    inc e                                         ; $699E: $1C
    ld [$1802], sp                                ; $699F: $08 $02 $18
    db $10                                        ; $69A2: $10
    ld [bc], a                                    ; $69A3: $02
    inc d                                         ; $69A4: $14
    jr @+$04                                      ; $69A5: $18 $02

    db $10                                        ; $69A7: $10
    jr nz, @+$04                                  ; $69A8: $20 $02

    ld [$F034], sp                                ; $69AA: $08 $34 $F0
    jp nz, $F830                                  ; $69AD: $C2 $30 $F8

    jp nz, RST_20                                 ; $69B0: $C2 $20 $00

    ld [bc], a                                    ; $69B3: $02
    inc e                                         ; $69B4: $1C
    ld [$1802], sp                                ; $69B5: $08 $02 $18
    db $10                                        ; $69B8: $10
    ld [bc], a                                    ; $69B9: $02
    inc d                                         ; $69BA: $14
    jr @+$04                                      ; $69BB: $18 $02

    db $10                                        ; $69BD: $10
    jr nz, @+$04                                  ; $69BE: $20 $02

    inc c                                         ; $69C0: $0C
    jr z, jr_002_69C5                             ; $69C1: $28 $02

    sub b                                         ; $69C3: $90
    nop                                           ; $69C4: $00

jr_002_69C5:
    nop                                           ; $69C5: $00
    rst RST_38                                    ; $69C6: $FF
    rst RST_38                                    ; $69C7: $FF
    rst RST_38                                    ; $69C8: $FF
    daa                                           ; $69C9: $27
    ld l, d                                       ; $69CA: $6A
    ld sp, hl                                     ; $69CB: $F9
    nop                                           ; $69CC: $00
    sub b                                         ; $69CD: $90
    nop                                           ; $69CE: $00
    nop                                           ; $69CF: $00
    rst RST_38                                    ; $69D0: $FF
    rst RST_38                                    ; $69D1: $FF
    rst RST_38                                    ; $69D2: $FF
    daa                                           ; $69D3: $27
    ld l, d                                       ; $69D4: $6A
    pop af                                        ; $69D5: $F1
    nop                                           ; $69D6: $00
    sub b                                         ; $69D7: $90
    nop                                           ; $69D8: $00
    nop                                           ; $69D9: $00
    rst RST_38                                    ; $69DA: $FF
    rst RST_38                                    ; $69DB: $FF
    rst RST_38                                    ; $69DC: $FF
    daa                                           ; $69DD: $27
    ld l, d                                       ; $69DE: $6A
    db $FC                                        ; $69DF: $FC
    nop                                           ; $69E0: $00
    sub b                                         ; $69E1: $90
    nop                                           ; $69E2: $00
    nop                                           ; $69E3: $00
    rst RST_38                                    ; $69E4: $FF
    rst RST_38                                    ; $69E5: $FF
    rst RST_38                                    ; $69E6: $FF
    daa                                           ; $69E7: $27
    ld l, d                                       ; $69E8: $6A
    ldh a, [rP1]                                  ; $69E9: $F0 $00
    sub b                                         ; $69EB: $90
    nop                                           ; $69EC: $00
    nop                                           ; $69ED: $00
    rst RST_38                                    ; $69EE: $FF
    rst RST_38                                    ; $69EF: $FF
    rst RST_38                                    ; $69F0: $FF
    daa                                           ; $69F1: $27
    ld l, d                                       ; $69F2: $6A
    inc b                                         ; $69F3: $04
    nop                                           ; $69F4: $00
    sub b                                         ; $69F5: $90
    nop                                           ; $69F6: $00
    nop                                           ; $69F7: $00
    rst RST_38                                    ; $69F8: $FF
    rst RST_38                                    ; $69F9: $FF
    rst RST_38                                    ; $69FA: $FF
    daa                                           ; $69FB: $27
    ld l, d                                       ; $69FC: $6A
    stop                                          ; $69FD: $10 $00
    sub b                                         ; $69FF: $90
    nop                                           ; $6A00: $00
    nop                                           ; $6A01: $00
    rst RST_38                                    ; $6A02: $FF
    rst RST_38                                    ; $6A03: $FF
    rst RST_38                                    ; $6A04: $FF
    daa                                           ; $6A05: $27
    ld l, d                                       ; $6A06: $6A
    db $F4                                        ; $6A07: $F4
    nop                                           ; $6A08: $00
    sub b                                         ; $6A09: $90
    nop                                           ; $6A0A: $00
    nop                                           ; $6A0B: $00
    rst RST_38                                    ; $6A0C: $FF
    rst RST_38                                    ; $6A0D: $FF
    rst RST_38                                    ; $6A0E: $FF
    daa                                           ; $6A0F: $27
    ld l, d                                       ; $6A10: $6A
    ld hl, sp+$00                                 ; $6A11: $F8 $00
    sub b                                         ; $6A13: $90
    nop                                           ; $6A14: $00
    nop                                           ; $6A15: $00
    rst RST_38                                    ; $6A16: $FF
    rst RST_38                                    ; $6A17: $FF
    rst RST_38                                    ; $6A18: $FF
    daa                                           ; $6A19: $27
    ld l, d                                       ; $6A1A: $6A
    inc c                                         ; $6A1B: $0C
    nop                                           ; $6A1C: $00
    sub b                                         ; $6A1D: $90
    nop                                           ; $6A1E: $00
    nop                                           ; $6A1F: $00
    rst RST_38                                    ; $6A20: $FF
    rst RST_38                                    ; $6A21: $FF
    rst RST_38                                    ; $6A22: $FF
    daa                                           ; $6A23: $27
    ld l, d                                       ; $6A24: $6A
    ld [$0800], sp                                ; $6A25: $08 $00 $08
    ret nz                                        ; $6A28: $C0

    db $FD                                        ; $6A29: $FD
    inc b                                         ; $6A2A: $04
    ret nc                                        ; $6A2B: $D0

    db $FD                                        ; $6A2C: $FD
    inc b                                         ; $6A2D: $04
    ldh [$FFFD], a                                ; $6A2E: $E0 $FD
    inc b                                         ; $6A30: $04
    ldh a, [$FFFD]                                ; $6A31: $F0 $FD
    inc b                                         ; $6A33: $04
    nop                                           ; $6A34: $00
    db $FD                                        ; $6A35: $FD
    inc b                                         ; $6A36: $04
    db $10                                        ; $6A37: $10
    db $FD                                        ; $6A38: $FD

jr_002_6A39:
    inc b                                         ; $6A39: $04
    jr nz, jr_002_6A39                            ; $6A3A: $20 $FD

jr_002_6A3C:
    inc b                                         ; $6A3C: $04
    jr nc, jr_002_6A3C                            ; $6A3D: $30 $FD

    inc b                                         ; $6A3F: $04
    sub b                                         ; $6A40: $90
    nop                                           ; $6A41: $00
    cp l                                          ; $6A42: $BD
    rst RST_38                                    ; $6A43: $FF
    rst RST_38                                    ; $6A44: $FF
    rst RST_38                                    ; $6A45: $FF
    ld h, b                                       ; $6A46: $60
    ld l, b                                       ; $6A47: $68
    ld hl, sp+$30                                 ; $6A48: $F8 $30
    sub b                                         ; $6A4A: $90
    nop                                           ; $6A4B: $00
    cp l                                          ; $6A4C: $BD
    rst RST_38                                    ; $6A4D: $FF
    rst RST_38                                    ; $6A4E: $FF
    rst RST_38                                    ; $6A4F: $FF
    ld e, [hl]                                    ; $6A50: $5E
    ld l, d                                       ; $6A51: $6A
    db $EC                                        ; $6A52: $EC
    db $10                                        ; $6A53: $10
    sub b                                         ; $6A54: $90
    nop                                           ; $6A55: $00
    nop                                           ; $6A56: $00
    rst RST_38                                    ; $6A57: $FF
    rst RST_38                                    ; $6A58: $FF
    rst RST_38                                    ; $6A59: $FF
    ld e, [hl]                                    ; $6A5A: $5E
    ld l, d                                       ; $6A5B: $6A
    db $EC                                        ; $6A5C: $EC
    db $10                                        ; $6A5D: $10
    ld bc, $1018                                  ; $6A5E: $01 $18 $10
    ld b, $90                                     ; $6A61: $06 $90
    nop                                           ; $6A63: $00
    cp l                                          ; $6A64: $BD
    rst RST_38                                    ; $6A65: $FF
    rst RST_38                                    ; $6A66: $FF
    rst RST_38                                    ; $6A67: $FF
    halt                                          ; $6A68: $76
    ld l, d                                       ; $6A69: $6A
    add sp, $10                                   ; $6A6A: $E8 $10
    sub b                                         ; $6A6C: $90
    nop                                           ; $6A6D: $00
    nop                                           ; $6A6E: $00
    rst RST_38                                    ; $6A6F: $FF
    rst RST_38                                    ; $6A70: $FF
    rst RST_38                                    ; $6A71: $FF
    halt                                          ; $6A72: $76
    ld l, d                                       ; $6A73: $6A
    add sp, $10                                   ; $6A74: $E8 $10
    ld [bc], a                                    ; $6A76: $02
    jr jr_002_6A89                                ; $6A77: $18 $10

    ld [$1818], sp                                ; $6A79: $08 $18 $18
    ld c, b                                       ; $6A7C: $48
    add b                                         ; $6A7D: $80
    nop                                           ; $6A7E: $00
    cp [hl]                                       ; $6A7F: $BE
    rst RST_38                                    ; $6A80: $FF
    rst RST_38                                    ; $6A81: $FF
    rst RST_38                                    ; $6A82: $FF
    ld h, b                                       ; $6A83: $60
    ld l, b                                       ; $6A84: $68
    nop                                           ; $6A85: $00
    nop                                           ; $6A86: $00
    sub b                                         ; $6A87: $90
    nop                                           ; $6A88: $00

jr_002_6A89:
    cp [hl]                                       ; $6A89: $BE
    rst RST_38                                    ; $6A8A: $FF
    rst RST_38                                    ; $6A8B: $FF
    rst RST_38                                    ; $6A8C: $FF
    sub c                                         ; $6A8D: $91
    ld l, d                                       ; $6A8E: $6A
    rst RST_30                                    ; $6A8F: $F7
    ld de, $1803                                  ; $6A90: $11 $03 $18
    cp $02                                        ; $6A93: $FE $02
    jr jr_002_6A9D                                ; $6A95: $18 $06

    inc b                                         ; $6A97: $04
    jr jr_002_6AA8                                ; $6A98: $18 $0E

    ld b, $90                                     ; $6A9A: $06 $90
    nop                                           ; $6A9C: $00

jr_002_6A9D:
    nop                                           ; $6A9D: $00
    rst RST_38                                    ; $6A9E: $FF
    rst RST_38                                    ; $6A9F: $FF
    rst RST_38                                    ; $6AA0: $FF
    and l                                         ; $6AA1: $A5
    ld l, d                                       ; $6AA2: $6A
    or $00                                        ; $6AA3: $F6 $00
    ld [$FA36], sp                                ; $6AA5: $08 $36 $FA

jr_002_6AA8:
    ld [$1236], sp                                ; $6AA8: $08 $36 $12
    ld c, b                                       ; $6AAB: $48
    jr nc, @+$04                                  ; $6AAC: $30 $02

    ld a, [bc]                                    ; $6AAE: $0A
    jr nc, jr_002_6ABB                            ; $6AAF: $30 $0A

    inc c                                         ; $6AB1: $0C
    jr nz, jr_002_6AB6                            ; $6AB2: $20 $02

    ld c, $20                                     ; $6AB4: $0E $20

jr_002_6AB6:
    ld a, [bc]                                    ; $6AB6: $0A
    db $10                                        ; $6AB7: $10
    db $10                                        ; $6AB8: $10
    ld [bc], a                                    ; $6AB9: $02
    ld [de], a                                    ; $6ABA: $12

jr_002_6ABB:
    db $10                                        ; $6ABB: $10
    ld a, [bc]                                    ; $6ABC: $0A
    inc d                                         ; $6ABD: $14
    sub b                                         ; $6ABE: $90
    nop                                           ; $6ABF: $00
    nop                                           ; $6AC0: $00
    rst RST_38                                    ; $6AC1: $FF
    rst RST_38                                    ; $6AC2: $FF
    rst RST_38                                    ; $6AC3: $FF
    ret z                                         ; $6AC4: $C8

    ld l, d                                       ; $6AC5: $6A
    or $02                                        ; $6AC6: $F6 $02
    ld [$0200], sp                                ; $6AC8: $08 $00 $02
    ld [de], a                                    ; $6ACB: $12
    nop                                           ; $6ACC: $00
    ld a, [bc]                                    ; $6ACD: $0A
    inc d                                         ; $6ACE: $14
    db $10                                        ; $6ACF: $10
    ld [bc], a                                    ; $6AD0: $02
    ld c, $10                                     ; $6AD1: $0E $10
    ld a, [bc]                                    ; $6AD3: $0A
    db $10                                        ; $6AD4: $10
    jr nz, jr_002_6AD9                            ; $6AD5: $20 $02

    ld c, $20                                     ; $6AD7: $0E $20

jr_002_6AD9:
    ld a, [bc]                                    ; $6AD9: $0A
    db $10                                        ; $6ADA: $10
    jr nc, @+$04                                  ; $6ADB: $30 $02

    sub d                                         ; $6ADD: $92
    jr nc, jr_002_6AEA                            ; $6ADE: $30 $0A

    sub h                                         ; $6AE0: $94
    add b                                         ; $6AE1: $80
    nop                                           ; $6AE2: $00
    nop                                           ; $6AE3: $00
    rst RST_38                                    ; $6AE4: $FF
    rst RST_38                                    ; $6AE5: $FF
    rst RST_38                                    ; $6AE6: $FF
    ld h, b                                       ; $6AE7: $60
    ld l, b                                       ; $6AE8: $68
    nop                                           ; $6AE9: $00

jr_002_6AEA:
    nop                                           ; $6AEA: $00
    sub b                                         ; $6AEB: $90
    nop                                           ; $6AEC: $00
    nop                                           ; $6AED: $00
    rst RST_38                                    ; $6AEE: $FF
    rst RST_38                                    ; $6AEF: $FF
    rst RST_38                                    ; $6AF0: $FF
    push af                                       ; $6AF1: $F5
    ld l, d                                       ; $6AF2: $6A
    ld a, [$0B00]                                 ; $6AF3: $FA $00 $0B
    ld [hl], $F2                                  ; $6AF6: $36 $F2

jr_002_6AF8:
    ld [$1236], sp                                ; $6AF8: $08 $36 $12
    ld c, b                                       ; $6AFB: $48
    jr nc, jr_002_6AF8                            ; $6AFC: $30 $FA

    ld a, [bc]                                    ; $6AFE: $0A
    jr nc, jr_002_6B0B                            ; $6AFF: $30 $0A

    ld c, d                                       ; $6B01: $4A
    jr nc, jr_002_6B06                            ; $6B02: $30 $02

    ld d, $20                                     ; $6B04: $16 $20

jr_002_6B06:
    ld a, [$200E]                                 ; $6B06: $FA $0E $20
    ld a, [bc]                                    ; $6B09: $0A
    ld c, [hl]                                    ; $6B0A: $4E

jr_002_6B0B:
    jr nz, jr_002_6B0F                            ; $6B0B: $20 $02

    ld d, $10                                     ; $6B0D: $16 $10

jr_002_6B0F:
    ld a, [$1012]                                 ; $6B0F: $FA $12 $10
    ld a, [bc]                                    ; $6B12: $0A
    ld d, d                                       ; $6B13: $52
    db $10                                        ; $6B14: $10
    ld [bc], a                                    ; $6B15: $02
    jr jr_002_6AA8                                ; $6B16: $18 $90

    nop                                           ; $6B18: $00
    dec c                                         ; $6B19: $0D
    rst RST_38                                    ; $6B1A: $FF
    rst RST_38                                    ; $6B1B: $FF
    rst RST_38                                    ; $6B1C: $FF
    ld hl, $FA6B                                  ; $6B1D: $21 $6B $FA
    ld [bc], a                                    ; $6B20: $02
    stop                                          ; $6B21: $10 $00
    cp $1A                                        ; $6B23: $FE $1A
    nop                                           ; $6B25: $00
    ld b, $5A                                     ; $6B26: $06 $5A
    nop                                           ; $6B28: $00
    or $1C                                        ; $6B29: $F6 $1C
    nop                                           ; $6B2B: $00
    ld c, $5C                                     ; $6B2C: $0E $5C
    ld a, [bc]                                    ; $6B2E: $0A
    xor $1E                                       ; $6B2F: $EE $1E
    ld a, [bc]                                    ; $6B31: $0A
    ld d, $5E                                     ; $6B32: $16 $5E
    db $10                                        ; $6B34: $10
    cp $20                                        ; $6B35: $FE $20
    db $10                                        ; $6B37: $10
    ld b, $60                                     ; $6B38: $06 $60
    db $10                                        ; $6B3A: $10
    or $22                                        ; $6B3B: $F6 $22
    db $10                                        ; $6B3D: $10
    ld c, $62                                     ; $6B3E: $0E $62
    jr nz, @-$04                                  ; $6B40: $20 $FA

    ld c, $20                                     ; $6B42: $0E $20
    ld a, [bc]                                    ; $6B44: $0A
    ld c, [hl]                                    ; $6B45: $4E
    jr nz, jr_002_6B4A                            ; $6B46: $20 $02

    ld d, $30                                     ; $6B48: $16 $30

jr_002_6B4A:
    ld a, [$3092]                                 ; $6B4A: $FA $92 $30
    ld a, [bc]                                    ; $6B4D: $0A
    jp nc, $0230                                  ; $6B4E: $D2 $30 $02

    sbc b                                         ; $6B51: $98
    add b                                         ; $6B52: $80
    nop                                           ; $6B53: $00
    cp a                                          ; $6B54: $BF
    rst RST_38                                    ; $6B55: $FF
    rst RST_38                                    ; $6B56: $FF
    rst RST_38                                    ; $6B57: $FF
    ld h, b                                       ; $6B58: $60
    ld l, b                                       ; $6B59: $68
    nop                                           ; $6B5A: $00
    nop                                           ; $6B5B: $00
    sub b                                         ; $6B5C: $90
    nop                                           ; $6B5D: $00
    cp a                                          ; $6B5E: $BF
    rst RST_38                                    ; $6B5F: $FF
    rst RST_38                                    ; $6B60: $FF
    rst RST_38                                    ; $6B61: $FF
    ld [hl], b                                    ; $6B62: $70
    ld l, e                                       ; $6B63: $6B
    ld a, [$B010]                                 ; $6B64: $FA $10 $B0
    nop                                           ; $6B67: $00
    cp a                                          ; $6B68: $BF
    rst RST_38                                    ; $6B69: $FF
    rst RST_38                                    ; $6B6A: $FF
    rst RST_38                                    ; $6B6B: $FF
    ld [hl], b                                    ; $6B6C: $70
    ld l, e                                       ; $6B6D: $6B
    ld b, $10                                     ; $6B6E: $06 $10
    ld [bc], a                                    ; $6B70: $02
    ld d, $FE                                     ; $6B71: $16 $FE
    ld [bc], a                                    ; $6B73: $02
    jr jr_002_6B7C                                ; $6B74: $18 $06

    inc b                                         ; $6B76: $04
    add b                                         ; $6B77: $80
    nop                                           ; $6B78: $00
    ret nz                                        ; $6B79: $C0

    rst RST_38                                    ; $6B7A: $FF
    rst RST_38                                    ; $6B7B: $FF

jr_002_6B7C:
    rst RST_38                                    ; $6B7C: $FF
    ld h, b                                       ; $6B7D: $60
    ld l, b                                       ; $6B7E: $68
    nop                                           ; $6B7F: $00
    nop                                           ; $6B80: $00
    sub b                                         ; $6B81: $90
    nop                                           ; $6B82: $00
    ret nz                                        ; $6B83: $C0

    rst RST_38                                    ; $6B84: $FF
    rst RST_38                                    ; $6B85: $FF
    rst RST_38                                    ; $6B86: $FF
    adc e                                         ; $6B87: $8B
    ld l, e                                       ; $6B88: $6B
    ld a, [$0210]                                 ; $6B89: $FA $10 $02

jr_002_6B8C:
    jr jr_002_6B8C                                ; $6B8C: $18 $FE

    ld b, $18                                     ; $6B8E: $06 $18
    ld b, $C6                                     ; $6B90: $06 $C6
    sub b                                         ; $6B92: $90
    nop                                           ; $6B93: $00
    ret nz                                        ; $6B94: $C0

    rst RST_38                                    ; $6B95: $FF
    rst RST_38                                    ; $6B96: $FF
    rst RST_38                                    ; $6B97: $FF
    sbc h                                         ; $6B98: $9C
    ld l, e                                       ; $6B99: $6B
    ld a, [$0210]                                 ; $6B9A: $FA $10 $02

jr_002_6B9D:
    jr jr_002_6B9D                                ; $6B9D: $18 $FE

    ld [$0618], sp                                ; $6B9F: $08 $18 $06
    ld a, [bc]                                    ; $6BA2: $0A
    sub b                                         ; $6BA3: $90
    nop                                           ; $6BA4: $00
    ret nz                                        ; $6BA5: $C0

    rst RST_38                                    ; $6BA6: $FF
    rst RST_38                                    ; $6BA7: $FF
    rst RST_38                                    ; $6BA8: $FF
    xor l                                         ; $6BA9: $AD
    ld l, e                                       ; $6BAA: $6B
    ld a, [$0210]                                 ; $6BAB: $FA $10 $02

jr_002_6BAE:
    jr jr_002_6BAE                                ; $6BAE: $18 $FE

    inc c                                         ; $6BB0: $0C
    jr jr_002_6BB9                                ; $6BB1: $18 $06

    ld c, $80                                     ; $6BB3: $0E $80
    nop                                           ; $6BB5: $00
    pop bc                                        ; $6BB6: $C1
    rst RST_38                                    ; $6BB7: $FF
    rst RST_38                                    ; $6BB8: $FF

jr_002_6BB9:
    rst RST_38                                    ; $6BB9: $FF
    ld h, b                                       ; $6BBA: $60
    ld l, b                                       ; $6BBB: $68
    nop                                           ; $6BBC: $00
    nop                                           ; $6BBD: $00
    sub b                                         ; $6BBE: $90
    nop                                           ; $6BBF: $00
    pop bc                                        ; $6BC0: $C1
    rst RST_38                                    ; $6BC1: $FF
    rst RST_38                                    ; $6BC2: $FF
    rst RST_38                                    ; $6BC3: $FF
    ret z                                         ; $6BC4: $C8

    ld l, e                                       ; $6BC5: $6B
    ld a, [$0500]                                 ; $6BC6: $FA $00 $05
    db $10                                        ; $6BC9: $10
    cp $10                                        ; $6BCA: $FE $10
    db $10                                        ; $6BCC: $10
    ld b, $50                                     ; $6BCD: $06 $50

jr_002_6BCF:
    jr nz, jr_002_6BCF                            ; $6BCF: $20 $FE

    ld [de], a                                    ; $6BD1: $12
    jr nz, jr_002_6BDA                            ; $6BD2: $20 $06

    ld d, d                                       ; $6BD4: $52
    jr nc, jr_002_6BD9                            ; $6BD5: $30 $02

    inc d                                         ; $6BD7: $14
    sub b                                         ; $6BD8: $90

jr_002_6BD9:
    nop                                           ; $6BD9: $00

jr_002_6BDA:
    call nc, $FFFF                                ; $6BDA: $D4 $FF $FF
    rst RST_38                                    ; $6BDD: $FF
    ldh [c], a                                    ; $6BDE: $E2
    ld l, e                                       ; $6BDF: $6B
    ld a, [$0E00]                                 ; $6BE0: $FA $00 $0E
    or $EE                                        ; $6BE3: $F6 $EE
    ld d, $F6                                     ; $6BE5: $16 $F6
    ld d, $56                                     ; $6BE7: $16 $56
    rst RST_30                                    ; $6BE9: $F7
    or $18                                        ; $6BEA: $F6 $18
    rst RST_30                                    ; $6BEC: $F7
    ld c, $58                                     ; $6BED: $0E $58
    nop                                           ; $6BEF: $00
    cp $1A                                        ; $6BF0: $FE $1A
    nop                                           ; $6BF2: $00
    ld b, $5A                                     ; $6BF3: $06 $5A
    ld b, $EE                                     ; $6BF5: $06 $EE
    inc e                                         ; $6BF7: $1C
    ld b, $16                                     ; $6BF8: $06 $16
    ld e, h                                       ; $6BFA: $5C
    rlca                                          ; $6BFB: $07
    or $1E                                        ; $6BFC: $F6 $1E
    rlca                                          ; $6BFE: $07
    ld c, $5E                                     ; $6BFF: $0E $5E
    db $10                                        ; $6C01: $10
    cp $20                                        ; $6C02: $FE $20
    db $10                                        ; $6C04: $10
    ld b, $60                                     ; $6C05: $06 $60
    jr nz, @+$04                                  ; $6C07: $20 $02

    inc d                                         ; $6C09: $14
    jr nc, jr_002_6C0E                            ; $6C0A: $30 $02

    inc d                                         ; $6C0C: $14
    sub b                                         ; $6C0D: $90

jr_002_6C0E:
    nop                                           ; $6C0E: $00
    push de                                       ; $6C0F: $D5
    rst RST_38                                    ; $6C10: $FF
    rst RST_38                                    ; $6C11: $FF
    rst RST_38                                    ; $6C12: $FF
    rla                                           ; $6C13: $17
    ld l, h                                       ; $6C14: $6C
    ld a, [$0600]                                 ; $6C15: $FA $00 $06
    ld [$22EE], sp                                ; $6C18: $08 $EE $22
    ld [$2416], sp                                ; $6C1B: $08 $16 $24
    ld [$8EF6], sp                                ; $6C1E: $08 $F6 $8E
    ld [$8C0E], sp                                ; $6C21: $08 $0E $8C
    nop                                           ; $6C24: $00
    cp $64                                        ; $6C25: $FE $64
    ld [$6206], sp                                ; $6C27: $08 $06 $62
    sub b                                         ; $6C2A: $90
    nop                                           ; $6C2B: $00
    push de                                       ; $6C2C: $D5
    rst RST_38                                    ; $6C2D: $FF
    rst RST_38                                    ; $6C2E: $FF
    rst RST_38                                    ; $6C2F: $FF

jr_002_6C30:
    inc [hl]                                      ; $6C30: $34
    ld l, h                                       ; $6C31: $6C
    ld a, [$05F3]                                 ; $6C32: $FA $F3 $05
    db $10                                        ; $6C35: $10
    xor $8E                                       ; $6C36: $EE $8E
    jr nz, jr_002_6C30                            ; $6C38: $20 $F6

    adc h                                         ; $6C3A: $8C
    db $10                                        ; $6C3B: $10
    ld b, $0C                                     ; $6C3C: $06 $0C
    db $10                                        ; $6C3E: $10
    ld d, $8C                                     ; $6C3F: $16 $8C
    db $10                                        ; $6C41: $10
    ld e, $8E                                     ; $6C42: $1E $8E
    add b                                         ; $6C44: $80
    nop                                           ; $6C45: $00
    jp nz, $FFFF                                  ; $6C46: $C2 $FF $FF

    rst RST_38                                    ; $6C49: $FF
    ld h, b                                       ; $6C4A: $60
    ld l, b                                       ; $6C4B: $68
    nop                                           ; $6C4C: $00
    nop                                           ; $6C4D: $00
    sub b                                         ; $6C4E: $90
    nop                                           ; $6C4F: $00
    jp nz, $FFFF                                  ; $6C50: $C2 $FF $FF

    rst RST_38                                    ; $6C53: $FF
    ld e, b                                       ; $6C54: $58
    ld l, h                                       ; $6C55: $6C
    ld a, [$0210]                                 ; $6C56: $FA $10 $02

jr_002_6C59:
    jr jr_002_6C59                                ; $6C59: $18 $FE

    ld [bc], a                                    ; $6C5B: $02
    jr jr_002_6C64                                ; $6C5C: $18 $06

    ld b, d                                       ; $6C5E: $42
    sub b                                         ; $6C5F: $90
    nop                                           ; $6C60: $00
    jp nz, $FFFF                                  ; $6C61: $C2 $FF $FF

jr_002_6C64:
    rst RST_38                                    ; $6C64: $FF
    ld l, c                                       ; $6C65: $69
    ld l, h                                       ; $6C66: $6C
    ld a, [$0310]                                 ; $6C67: $FA $10 $03
    jr @+$04                                      ; $6C6A: $18 $02

    inc b                                         ; $6C6C: $04
    jr @-$04                                      ; $6C6D: $18 $FA

    ld b, $18                                     ; $6C6F: $06 $18
    ld a, [bc]                                    ; $6C71: $0A
    ld b, [hl]                                    ; $6C72: $46
    add b                                         ; $6C73: $80
    nop                                           ; $6C74: $00
    jp $FFFF                                      ; $6C75: $C3 $FF $FF


    rst RST_38                                    ; $6C78: $FF
    ld h, b                                       ; $6C79: $60
    ld l, b                                       ; $6C7A: $68
    nop                                           ; $6C7B: $00
    nop                                           ; $6C7C: $00
    sub b                                         ; $6C7D: $90
    nop                                           ; $6C7E: $00
    jp $FFFF                                      ; $6C7F: $C3 $FF $FF


    rst RST_38                                    ; $6C82: $FF
    sub c                                         ; $6C83: $91
    ld l, h                                       ; $6C84: $6C
    cp $11                                        ; $6C85: $FE $11
    ret nc                                        ; $6C87: $D0

    nop                                           ; $6C88: $00
    jp $FFFF                                      ; $6C89: $C3 $FF $FF


    rst RST_38                                    ; $6C8C: $FF
    sub c                                         ; $6C8D: $91
    ld l, h                                       ; $6C8E: $6C

jr_002_6C8F:
    cp $00                                        ; $6C8F: $FE $00
    ld [bc], a                                    ; $6C91: $02
    jr nz, jr_002_6C8F                            ; $6C92: $20 $FB

    ld [$031E], sp                                ; $6C94: $08 $1E $03
    ld a, [bc]                                    ; $6C97: $0A
    sub b                                         ; $6C98: $90
    nop                                           ; $6C99: $00
    jp $FFFF                                      ; $6C9A: $C3 $FF $FF


    rst RST_38                                    ; $6C9D: $FF
    xor h                                         ; $6C9E: $AC
    ld l, h                                       ; $6C9F: $6C
    cp $11                                        ; $6CA0: $FE $11
    ret nc                                        ; $6CA2: $D0

    nop                                           ; $6CA3: $00
    jp $FFFF                                      ; $6CA4: $C3 $FF $FF


    rst RST_38                                    ; $6CA7: $FF
    xor h                                         ; $6CA8: $AC
    ld l, h                                       ; $6CA9: $6C
    cp $00                                        ; $6CAA: $FE $00
    ld [bc], a                                    ; $6CAC: $02
    rra                                           ; $6CAD: $1F
    ei                                            ; $6CAE: $FB
    inc c                                         ; $6CAF: $0C
    ld e, $03                                     ; $6CB0: $1E $03
    ld c, $90                                     ; $6CB2: $0E $90
    nop                                           ; $6CB4: $00
    call nz, $FFFF                                ; $6CB5: $C4 $FF $FF
    rst RST_38                                    ; $6CB8: $FF
    cp l                                          ; $6CB9: $BD
    ld l, h                                       ; $6CBA: $6C
    ld sp, hl                                     ; $6CBB: $F9
    db $10                                        ; $6CBC: $10
    ld [bc], a                                    ; $6CBD: $02
    jr nz, @+$01                                  ; $6CBE: $20 $FF

    db $10                                        ; $6CC0: $10
    jr nz, jr_002_6CCA                            ; $6CC1: $20 $07

    ld [de], a                                    ; $6CC3: $12
    add b                                         ; $6CC4: $80
    nop                                           ; $6CC5: $00
    push bc                                       ; $6CC6: $C5
    rst RST_38                                    ; $6CC7: $FF
    rst RST_38                                    ; $6CC8: $FF
    rst RST_38                                    ; $6CC9: $FF

jr_002_6CCA:
    ld h, b                                       ; $6CCA: $60
    ld l, b                                       ; $6CCB: $68
    nop                                           ; $6CCC: $00
    nop                                           ; $6CCD: $00
    sub b                                         ; $6CCE: $90
    nop                                           ; $6CCF: $00
    push bc                                       ; $6CD0: $C5

jr_002_6CD1:
    rst RST_38                                    ; $6CD1: $FF
    rst RST_38                                    ; $6CD2: $FF
    rst RST_38                                    ; $6CD3: $FF
    ret c                                         ; $6CD4: $D8

    ld l, h                                       ; $6CD5: $6C
    ld a, [$0318]                                 ; $6CD6: $FA $18 $03
    jr jr_002_6CD1                                ; $6CD9: $18 $F6

    inc d                                         ; $6CDB: $14

jr_002_6CDC:
    jr jr_002_6CDC                                ; $6CDC: $18 $FE

    ld d, $18                                     ; $6CDE: $16 $18
    ld b, $18                                     ; $6CE0: $06 $18
    sub b                                         ; $6CE2: $90
    nop                                           ; $6CE3: $00
    add $FF                                       ; $6CE4: $C6 $FF
    rst RST_38                                    ; $6CE6: $FF
    rst RST_38                                    ; $6CE7: $FF
    db $EC                                        ; $6CE8: $EC
    ld l, h                                       ; $6CE9: $6C
    ld [$0908], a                                 ; $6CEA: $EA $08 $09
    jr @-$08                                      ; $6CED: $18 $F6

    inc d                                         ; $6CEF: $14

jr_002_6CF0:
    jr jr_002_6CF0                                ; $6CF0: $18 $FE

    ld d, $18                                     ; $6CF2: $16 $18
    ld b, $18                                     ; $6CF4: $06 $18
    ld a, [hl+]                                   ; $6CF6: $2A
    xor $1A                                       ; $6CF7: $EE $1A
    jr z, @-$08                                   ; $6CF9: $28 $F6

    inc e                                         ; $6CFB: $1C

jr_002_6CFC:
    jr z, jr_002_6CFC                             ; $6CFC: $28 $FE

    ld e, $28                                     ; $6CFE: $1E $28
    ld b, $20                                     ; $6D00: $06 $20
    jr z, jr_002_6D12                             ; $6D02: $28 $0E

    ld [hl+], a                                   ; $6D04: $22
    jr nc, jr_002_6D1D                            ; $6D05: $30 $16

    inc h                                         ; $6D07: $24
    add b                                         ; $6D08: $80
    nop                                           ; $6D09: $00
    rst RST_00                                    ; $6D0A: $C7
    rst RST_38                                    ; $6D0B: $FF
    rst RST_38                                    ; $6D0C: $FF
    rst RST_38                                    ; $6D0D: $FF
    ld h, b                                       ; $6D0E: $60
    ld l, b                                       ; $6D0F: $68
    nop                                           ; $6D10: $00
    nop                                           ; $6D11: $00

jr_002_6D12:
    sub b                                         ; $6D12: $90
    nop                                           ; $6D13: $00
    rst RST_00                                    ; $6D14: $C7
    rst RST_38                                    ; $6D15: $FF
    rst RST_38                                    ; $6D16: $FF
    rst RST_38                                    ; $6D17: $FF

jr_002_6D18:
    inc e                                         ; $6D18: $1C
    ld l, l                                       ; $6D19: $6D
    ld a, [$0810]                                 ; $6D1A: $FA $10 $08

jr_002_6D1D:
    db $10                                        ; $6D1D: $10
    or $02                                        ; $6D1E: $F6 $02
    jr nz, jr_002_6D18                            ; $6D20: $20 $F6

    add d                                         ; $6D22: $82
    db $10                                        ; $6D23: $10
    cp $04                                        ; $6D24: $FE $04

jr_002_6D26:
    jr nz, jr_002_6D26                            ; $6D26: $20 $FE

    add h                                         ; $6D28: $84
    db $10                                        ; $6D29: $10
    ld b, $06                                     ; $6D2A: $06 $06
    jr nz, jr_002_6D34                            ; $6D2C: $20 $06

    add [hl]                                      ; $6D2E: $86
    db $10                                        ; $6D2F: $10
    ld c, $08                                     ; $6D30: $0E $08
    jr nz, @+$10                                  ; $6D32: $20 $0E

jr_002_6D34:
    adc b                                         ; $6D34: $88
    sub b                                         ; $6D35: $90
    nop                                           ; $6D36: $00
    rlca                                          ; $6D37: $07
    rst RST_38                                    ; $6D38: $FF
    rst RST_38                                    ; $6D39: $FF
    rst RST_38                                    ; $6D3A: $FF
    ccf                                           ; $6D3B: $3F
    ld l, l                                       ; $6D3C: $6D
    ld sp, hl                                     ; $6D3D: $F9
    ld [$180E], sp                                ; $6D3E: $08 $0E $18
    or $0A                                        ; $6D41: $F6 $0A
    db $10                                        ; $6D43: $10
    cp $0C                                        ; $6D44: $FE $0C
    db $10                                        ; $6D46: $10
    ld b, $0E                                     ; $6D47: $06 $0E
    db $10                                        ; $6D49: $10
    ld c, $10                                     ; $6D4A: $0E $10
    ld a, [bc]                                    ; $6D4C: $0A
    ld d, $12                                     ; $6D4D: $16 $12

jr_002_6D4F:
    jr nz, jr_002_6D4F                            ; $6D4F: $20 $FE

    inc d                                         ; $6D51: $14
    jr nz, @+$08                                  ; $6D52: $20 $06

    ld d, $20                                     ; $6D54: $16 $20

jr_002_6D56:
    ld c, $18                                     ; $6D56: $0E $18
    dec e                                         ; $6D58: $1D
    ld d, $1A                                     ; $6D59: $16 $1A
    cpl                                           ; $6D5B: $2F
    xor $1C                                       ; $6D5C: $EE $1C
    jr z, jr_002_6D56                             ; $6D5E: $28 $F6

    ld e, $30                                     ; $6D60: $1E $30
    cp $20                                        ; $6D62: $FE $20
    jr nc, jr_002_6D6C                            ; $6D64: $30 $06

    ld [hl+], a                                   ; $6D66: $22
    jr nc, jr_002_6D77                            ; $6D67: $30 $0E

    inc h                                         ; $6D69: $24
    sub b                                         ; $6D6A: $90
    nop                                           ; $6D6B: $00

jr_002_6D6C:
    rlca                                          ; $6D6C: $07
    rst RST_38                                    ; $6D6D: $FF
    rst RST_38                                    ; $6D6E: $FF
    rst RST_38                                    ; $6D6F: $FF

jr_002_6D70:
    ld [hl], h                                    ; $6D70: $74
    ld l, l                                       ; $6D71: $6D
    ld hl, sp+$08                                 ; $6D72: $F8 $08
    inc b                                         ; $6D74: $04
    jr z, @-$10                                   ; $6D75: $28 $EE

jr_002_6D77:
    ld [bc], a                                    ; $6D77: $02
    jr z, jr_002_6D70                             ; $6D78: $28 $F6

    inc b                                         ; $6D7A: $04

jr_002_6D7B:
    jr z, jr_002_6D7B                             ; $6D7B: $28 $FE

    ld b, $28                                     ; $6D7D: $06 $28
    ld b, $08                                     ; $6D7F: $06 $08
    add b                                         ; $6D81: $80
    nop                                           ; $6D82: $00
    ret z                                         ; $6D83: $C8

    rst RST_38                                    ; $6D84: $FF
    rst RST_38                                    ; $6D85: $FF
    rst RST_38                                    ; $6D86: $FF
    ld h, b                                       ; $6D87: $60
    ld l, b                                       ; $6D88: $68
    nop                                           ; $6D89: $00
    nop                                           ; $6D8A: $00
    sub b                                         ; $6D8B: $90
    nop                                           ; $6D8C: $00
    ret z                                         ; $6D8D: $C8

jr_002_6D8E:
    rst RST_38                                    ; $6D8E: $FF
    rst RST_38                                    ; $6D8F: $FF
    rst RST_38                                    ; $6D90: $FF
    sub l                                         ; $6D91: $95
    ld l, l                                       ; $6D92: $6D
    ld a, [$0410]                                 ; $6D93: $FA $10 $04
    jr jr_002_6D8E                                ; $6D96: $18 $F6

    ld [bc], a                                    ; $6D98: $02

jr_002_6D99:
    jr jr_002_6D99                                ; $6D99: $18 $FE

    inc b                                         ; $6D9B: $04
    jr jr_002_6DA4                                ; $6D9C: $18 $06

    ld b, $18                                     ; $6D9E: $06 $18
    ld c, $08                                     ; $6DA0: $0E $08
    sub b                                         ; $6DA2: $90
    nop                                           ; $6DA3: $00

jr_002_6DA4:
    ret z                                         ; $6DA4: $C8

jr_002_6DA5:
    rst RST_38                                    ; $6DA5: $FF
    rst RST_38                                    ; $6DA6: $FF
    rst RST_38                                    ; $6DA7: $FF
    xor h                                         ; $6DA8: $AC
    ld l, l                                       ; $6DA9: $6D
    ld a, [$0310]                                 ; $6DAA: $FA $10 $03
    jr jr_002_6DA5                                ; $6DAD: $18 $F6

    ld a, [bc]                                    ; $6DAF: $0A

jr_002_6DB0:
    jr jr_002_6DB0                                ; $6DB0: $18 $FE

    inc c                                         ; $6DB2: $0C
    jr jr_002_6DBB                                ; $6DB3: $18 $06

    ld c, $90                                     ; $6DB5: $0E $90
    nop                                           ; $6DB7: $00
    ret                                           ; $6DB8: $C9


    rst RST_38                                    ; $6DB9: $FF
    rst RST_38                                    ; $6DBA: $FF

jr_002_6DBB:
    rst RST_38                                    ; $6DBB: $FF
    ret nz                                        ; $6DBC: $C0

    ld l, l                                       ; $6DBD: $6D
    ld a, [$0410]                                 ; $6DBE: $FA $10 $04
    db $10                                        ; $6DC1: $10
    cp $10                                        ; $6DC2: $FE $10
    db $10                                        ; $6DC4: $10
    ld b, $12                                     ; $6DC5: $06 $12

jr_002_6DC7:
    jr nz, jr_002_6DC7                            ; $6DC7: $20 $FE

    inc d                                         ; $6DC9: $14
    jr nz, jr_002_6DD2                            ; $6DCA: $20 $06

    ld d, $90                                     ; $6DCC: $16 $90
    nop                                           ; $6DCE: $00
    ret                                           ; $6DCF: $C9


    rst RST_38                                    ; $6DD0: $FF
    rst RST_38                                    ; $6DD1: $FF

jr_002_6DD2:
    rst RST_38                                    ; $6DD2: $FF
    rst RST_10                                    ; $6DD3: $D7
    ld l, l                                       ; $6DD4: $6D
    ld a, [$0410]                                 ; $6DD5: $FA $10 $04
    ld de, $18FE                                  ; $6DD8: $11 $FE $18
    ld de, $1A06                                  ; $6DDB: $11 $06 $1A
    ld hl, $1CFE                                  ; $6DDE: $21 $FE $1C
    ld hl, $1E06                                  ; $6DE1: $21 $06 $1E
    sub b                                         ; $6DE4: $90
    nop                                           ; $6DE5: $00
    nop                                           ; $6DE6: $00
    rst RST_38                                    ; $6DE7: $FF
    rst RST_38                                    ; $6DE8: $FF
    rst RST_38                                    ; $6DE9: $FF
    xor $6D                                       ; $6DEA: $EE $6D
    cp $00                                        ; $6DEC: $FE $00
    jr jr_002_6E20                                ; $6DEE: $18 $30

jr_002_6DF0:
    or $20                                        ; $6DF0: $F6 $20
    jr nc, jr_002_6DFA                            ; $6DF2: $30 $06

    ld h, b                                       ; $6DF4: $60

jr_002_6DF5:
    jr nc, jr_002_6DF5                            ; $6DF5: $30 $FE

    ld [hl+], a                                   ; $6DF7: $22
    jr nz, jr_002_6DF0                            ; $6DF8: $20 $F6

jr_002_6DFA:
    jr nz, jr_002_6E1C                            ; $6DFA: $20 $20

    ld b, $60                                     ; $6DFC: $06 $60

jr_002_6DFE:
    jr nz, jr_002_6DFE                            ; $6DFE: $20 $FE

jr_002_6E00:
    ld [hl+], a                                   ; $6E00: $22
    db $10                                        ; $6E01: $10
    or $20                                        ; $6E02: $F6 $20
    db $10                                        ; $6E04: $10
    ld b, $60                                     ; $6E05: $06 $60

jr_002_6E07:
    db $10                                        ; $6E07: $10
    cp $22                                        ; $6E08: $FE $22
    nop                                           ; $6E0A: $00
    or $20                                        ; $6E0B: $F6 $20
    nop                                           ; $6E0D: $00
    ld b, $60                                     ; $6E0E: $06 $60
    nop                                           ; $6E10: $00
    cp $22                                        ; $6E11: $FE $22
    ldh a, [$FFF6]                                ; $6E13: $F0 $F6
    jr nz, jr_002_6E07                            ; $6E15: $20 $F0

    ld b, $60                                     ; $6E17: $06 $60
    ldh a, [$FFFE]                                ; $6E19: $F0 $FE
    ld [hl+], a                                   ; $6E1B: $22

jr_002_6E1C:
    ldh [$FFF6], a                                ; $6E1C: $E0 $F6
    jr nz, jr_002_6E00                            ; $6E1E: $20 $E0

jr_002_6E20:
    ld b, $60                                     ; $6E20: $06 $60
    ldh [$FFFE], a                                ; $6E22: $E0 $FE
    ld [hl+], a                                   ; $6E24: $22
    ret nc                                        ; $6E25: $D0

    or $20                                        ; $6E26: $F6 $20
    ret nc                                        ; $6E28: $D0

    ld b, $60                                     ; $6E29: $06 $60
    ret nc                                        ; $6E2B: $D0

    cp $22                                        ; $6E2C: $FE $22
    ret nz                                        ; $6E2E: $C0

    or $20                                        ; $6E2F: $F6 $20
    ret nz                                        ; $6E31: $C0

    ld b, $60                                     ; $6E32: $06 $60
    ret nz                                        ; $6E34: $C0

    cp $22                                        ; $6E35: $FE $22
    sub b                                         ; $6E37: $90
    nop                                           ; $6E38: $00
    nop                                           ; $6E39: $00

jr_002_6E3A:
    rst RST_38                                    ; $6E3A: $FF
    rst RST_38                                    ; $6E3B: $FF
    rst RST_38                                    ; $6E3C: $FF
    ld b, c                                       ; $6E3D: $41
    ld l, [hl]                                    ; $6E3E: $6E
    ld [bc], a                                    ; $6E3F: $02

jr_002_6E40:
    nop                                           ; $6E40: $00
    db $10                                        ; $6E41: $10
    jr nc, jr_002_6E3A                            ; $6E42: $30 $F6

jr_002_6E44:
    jr nz, @+$32                                  ; $6E44: $20 $30

    cp $60                                        ; $6E46: $FE $60
    jr nz, jr_002_6E40                            ; $6E48: $20 $F6

    jr nz, jr_002_6E6C                            ; $6E4A: $20 $20

    cp $60                                        ; $6E4C: $FE $60

jr_002_6E4E:
    db $10                                        ; $6E4E: $10
    or $20                                        ; $6E4F: $F6 $20
    db $10                                        ; $6E51: $10
    cp $60                                        ; $6E52: $FE $60
    nop                                           ; $6E54: $00
    or $20                                        ; $6E55: $F6 $20
    nop                                           ; $6E57: $00
    cp $60                                        ; $6E58: $FE $60
    ldh a, [$FFF6]                                ; $6E5A: $F0 $F6
    jr nz, jr_002_6E4E                            ; $6E5C: $20 $F0

    cp $60                                        ; $6E5E: $FE $60
    ldh [$FFF6], a                                ; $6E60: $E0 $F6
    jr nz, jr_002_6E44                            ; $6E62: $20 $E0

    cp $60                                        ; $6E64: $FE $60
    ret nc                                        ; $6E66: $D0

    or $20                                        ; $6E67: $F6 $20
    ret nc                                        ; $6E69: $D0

    cp $60                                        ; $6E6A: $FE $60

jr_002_6E6C:
    ret nz                                        ; $6E6C: $C0

    or $20                                        ; $6E6D: $F6 $20
    ret nz                                        ; $6E6F: $C0

    cp $60                                        ; $6E70: $FE $60
    sub b                                         ; $6E72: $90
    nop                                           ; $6E73: $00
    jp z, $FFFF                                   ; $6E74: $CA $FF $FF

    rst RST_38                                    ; $6E77: $FF
    add [hl]                                      ; $6E78: $86
    ld l, [hl]                                    ; $6E79: $6E
    db $FD                                        ; $6E7A: $FD
    ld [de], a                                    ; $6E7B: $12
    ldh a, [rP1]                                  ; $6E7C: $F0 $00
    jp z, $FFFF                                   ; $6E7E: $CA $FF $FF

jr_002_6E81:
    rst RST_38                                    ; $6E81: $FF
    add [hl]                                      ; $6E82: $86
    ld l, [hl]                                    ; $6E83: $6E
    inc b                                         ; $6E84: $04
    rst RST_30                                    ; $6E85: $F7
    inc bc                                        ; $6E86: $03
    jr jr_002_6E81                                ; $6E87: $18 $F8

    ld [bc], a                                    ; $6E89: $02
    dec de                                        ; $6E8A: $1B
    nop                                           ; $6E8B: $00
    inc b                                         ; $6E8C: $04
    ld hl, $0608                                  ; $6E8D: $21 $08 $06
    sub b                                         ; $6E90: $90
    nop                                           ; $6E91: $00
    jp z, $FFFF                                   ; $6E92: $CA $FF $FF

    rst RST_38                                    ; $6E95: $FF
    and h                                         ; $6E96: $A4
    ld l, [hl]                                    ; $6E97: $6E
    nop                                           ; $6E98: $00
    ld de, $00F0                                  ; $6E99: $11 $F0 $00
    jp z, $FFFF                                   ; $6E9C: $CA $FF $FF

    rst RST_38                                    ; $6E9F: $FF
    and h                                         ; $6EA0: $A4
    ld l, [hl]                                    ; $6EA1: $6E
    ld bc, $03F8                                  ; $6EA2: $01 $F8 $03
    rra                                           ; $6EA5: $1F
    or $08                                        ; $6EA6: $F6 $08
    rra                                           ; $6EA8: $1F
    cp $0A                                        ; $6EA9: $FE $0A
    rrca                                          ; $6EAB: $0F
    rst RST_38                                    ; $6EAC: $FF
    inc c                                         ; $6EAD: $0C
    sub b                                         ; $6EAE: $90
    nop                                           ; $6EAF: $00
    nop                                           ; $6EB0: $00
    rst RST_38                                    ; $6EB1: $FF
    rst RST_38                                    ; $6EB2: $FF
    rst RST_38                                    ; $6EB3: $FF
    cp b                                          ; $6EB4: $B8
    ld l, [hl]                                    ; $6EB5: $6E
    ldh a, [rP1]                                  ; $6EB6: $F0 $00
    ld [bc], a                                    ; $6EB8: $02
    inc sp                                        ; $6EB9: $33
    ld b, $0E                                     ; $6EBA: $06 $0E
    ld [hl], $0E                                  ; $6EBC: $36 $0E
    db $10                                        ; $6EBE: $10
    sub b                                         ; $6EBF: $90
    nop                                           ; $6EC0: $00
    nop                                           ; $6EC1: $00
    rst RST_38                                    ; $6EC2: $FF
    rst RST_38                                    ; $6EC3: $FF
    rst RST_38                                    ; $6EC4: $FF
    ret                                           ; $6EC5: $C9


    ld l, [hl]                                    ; $6EC6: $6E
    ldh a, [rP1]                                  ; $6EC7: $F0 $00
    ld [$FE10], sp                                ; $6EC9: $08 $10 $FE
    ld [de], a                                    ; $6ECC: $12
    jr nz, @-$03                                  ; $6ECD: $20 $FB

    inc d                                         ; $6ECF: $14
    jr nz, @+$05                                  ; $6ED0: $20 $03

    ld d, $30                                     ; $6ED2: $16 $30

jr_002_6ED4:
    cp $18                                        ; $6ED4: $FE $18
    jr nc, jr_002_6EDE                            ; $6ED6: $30 $06

    ld a, [de]                                    ; $6ED8: $1A
    jr nz, @-$0B                                  ; $6ED9: $20 $F3

    inc e                                         ; $6EDB: $1C
    jr nc, jr_002_6ED4                            ; $6EDC: $30 $F6

jr_002_6EDE:
    ld e, $30                                     ; $6EDE: $1E $30
    ld c, $20                                     ; $6EE0: $0E $20
    sub b                                         ; $6EE2: $90
    nop                                           ; $6EE3: $00
    set 7, a                                      ; $6EE4: $CB $FF
    rst RST_38                                    ; $6EE6: $FF
    rst RST_38                                    ; $6EE7: $FF
    db $EC                                        ; $6EE8: $EC
    ld l, [hl]                                    ; $6EE9: $6E
    ldh a, [c]                                    ; $6EEA: $F2
    ld a, [$3602]                                 ; $6EEB: $FA $02 $36
    ld b, $22                                     ; $6EEE: $06 $22
    ld [hl], $0E                                  ; $6EF0: $36 $0E
    ld h, d                                       ; $6EF2: $62
    sub b                                         ; $6EF3: $90
    nop                                           ; $6EF4: $00
    set 7, a                                      ; $6EF5: $CB $FF
    rst RST_38                                    ; $6EF7: $FF
    rst RST_38                                    ; $6EF8: $FF
    db $FD                                        ; $6EF9: $FD
    ld l, [hl]                                    ; $6EFA: $6E
    db $ED                                        ; $6EFB: $ED
    nop                                           ; $6EFC: $00
    ld [bc], a                                    ; $6EFD: $02
    inc sp                                        ; $6EFE: $33
    ld b, $0E                                     ; $6EFF: $06 $0E
    ld [hl], $0E                                  ; $6F01: $36 $0E
    db $10                                        ; $6F03: $10
    sub b                                         ; $6F04: $90
    nop                                           ; $6F05: $00
    call z, $FFFF                                 ; $6F06: $CC $FF $FF
    rst RST_38                                    ; $6F09: $FF
    ld c, $6F                                     ; $6F0A: $0E $6F
    ld a, [$0210]                                 ; $6F0C: $FA $10 $02

jr_002_6F0F:
    jr nz, jr_002_6F0F                            ; $6F0F: $20 $FE

    ld [bc], a                                    ; $6F11: $02
    jr nz, jr_002_6F1A                            ; $6F12: $20 $06

    inc b                                         ; $6F14: $04
    sub b                                         ; $6F15: $90
    nop                                           ; $6F16: $00
    call z, $FFFF                                 ; $6F17: $CC $FF $FF

jr_002_6F1A:
    rst RST_38                                    ; $6F1A: $FF
    add hl, hl                                    ; $6F1B: $29
    ld l, a                                       ; $6F1C: $6F
    ld a, [$D010]                                 ; $6F1D: $FA $10 $D0
    nop                                           ; $6F20: $00
    call z, $FFFF                                 ; $6F21: $CC $FF $FF
    rst RST_38                                    ; $6F24: $FF
    add hl, hl                                    ; $6F25: $29
    ld l, a                                       ; $6F26: $6F
    ld a, [$0200]                                 ; $6F27: $FA $00 $02
    dec de                                        ; $6F2A: $1B
    cp $06                                        ; $6F2B: $FE $06
    inc hl                                        ; $6F2D: $23
    ld b, $08                                     ; $6F2E: $06 $08
    sub b                                         ; $6F30: $90
    nop                                           ; $6F31: $00
    call $FFFF                                    ; $6F32: $CD $FF $FF
    rst RST_38                                    ; $6F35: $FF
    ld a, [hl-]                                   ; $6F36: $3A
    ld l, a                                       ; $6F37: $6F
    or $0A                                        ; $6F38: $F6 $0A
    ld bc, $0630                                  ; $6F3A: $01 $30 $06
    ld a, [bc]                                    ; $6F3D: $0A
    add b                                         ; $6F3E: $80
    nop                                           ; $6F3F: $00
    adc $FF                                       ; $6F40: $CE $FF
    rst RST_38                                    ; $6F42: $FF
    rst RST_38                                    ; $6F43: $FF
    ld h, b                                       ; $6F44: $60
    ld l, b                                       ; $6F45: $68
    nop                                           ; $6F46: $00
    nop                                           ; $6F47: $00
    sub b                                         ; $6F48: $90
    nop                                           ; $6F49: $00
    adc $FF                                       ; $6F4A: $CE $FF
    rst RST_38                                    ; $6F4C: $FF
    rst RST_38                                    ; $6F4D: $FF
    ld e, h                                       ; $6F4E: $5C
    ld l, a                                       ; $6F4F: $6F
    ldh a, [c]                                    ; $6F50: $F2
    ld [$00B0], sp                                ; $6F51: $08 $B0 $00
    adc $FF                                       ; $6F54: $CE $FF
    rst RST_38                                    ; $6F56: $FF
    rst RST_38                                    ; $6F57: $FF
    ld e, h                                       ; $6F58: $5C
    ld l, a                                       ; $6F59: $6F
    ld c, $08                                     ; $6F5A: $0E $08
    inc bc                                        ; $6F5C: $03

jr_002_6F5D:
    jr z, jr_002_6F5D                             ; $6F5D: $28 $FE

    inc c                                         ; $6F5F: $0C
    dec hl                                        ; $6F60: $2B
    ld b, $0E                                     ; $6F61: $06 $0E
    dec l                                         ; $6F63: $2D
    ld c, $10                                     ; $6F64: $0E $10
    sub b                                         ; $6F66: $90
    nop                                           ; $6F67: $00
    rlca                                          ; $6F68: $07
    rst RST_38                                    ; $6F69: $FF
    rst RST_38                                    ; $6F6A: $FF
    rst RST_38                                    ; $6F6B: $FF
    ld [hl], b                                    ; $6F6C: $70
    ld l, a                                       ; $6F6D: $6F
    ld [bc], a                                    ; $6F6E: $02
    db $10                                        ; $6F6F: $10
    ld bc, $F617                                  ; $6F70: $01 $17 $F6
    ld [de], a                                    ; $6F73: $12
    sub b                                         ; $6F74: $90
    nop                                           ; $6F75: $00
    rlca                                          ; $6F76: $07
    rst RST_38                                    ; $6F77: $FF
    rst RST_38                                    ; $6F78: $FF
    rst RST_38                                    ; $6F79: $FF
    ld a, [hl]                                    ; $6F7A: $7E
    ld l, a                                       ; $6F7B: $6F
    ld a, [$0210]                                 ; $6F7C: $FA $10 $02
    rla                                           ; $6F7F: $17
    or $12                                        ; $6F80: $F6 $12
    dec d                                         ; $6F82: $15
    cp $14                                        ; $6F83: $FE $14
    sub b                                         ; $6F85: $90
    nop                                           ; $6F86: $00
    rlca                                          ; $6F87: $07
    rst RST_38                                    ; $6F88: $FF
    rst RST_38                                    ; $6F89: $FF
    rst RST_38                                    ; $6F8A: $FF
    adc a                                         ; $6F8B: $8F
    ld l, a                                       ; $6F8C: $6F
    ldh a, [c]                                    ; $6F8D: $F2
    db $10                                        ; $6F8E: $10
    inc bc                                        ; $6F8F: $03
    rla                                           ; $6F90: $17
    or $12                                        ; $6F91: $F6 $12
    dec d                                         ; $6F93: $15
    cp $14                                        ; $6F94: $FE $14
    dec d                                         ; $6F96: $15
    ld b, $14                                     ; $6F97: $06 $14
    sub b                                         ; $6F99: $90
    nop                                           ; $6F9A: $00
    rlca                                          ; $6F9B: $07
    rst RST_38                                    ; $6F9C: $FF
    rst RST_38                                    ; $6F9D: $FF
    rst RST_38                                    ; $6F9E: $FF
    and e                                         ; $6F9F: $A3
    ld l, a                                       ; $6FA0: $6F
    ld [$0410], a                                 ; $6FA1: $EA $10 $04
    rla                                           ; $6FA4: $17
    or $12                                        ; $6FA5: $F6 $12
    dec d                                         ; $6FA7: $15
    cp $14                                        ; $6FA8: $FE $14
    dec d                                         ; $6FAA: $15
    ld b, $14                                     ; $6FAB: $06 $14
    dec d                                         ; $6FAD: $15
    ld c, $14                                     ; $6FAE: $0E $14
    sub b                                         ; $6FB0: $90
    nop                                           ; $6FB1: $00
    rlca                                          ; $6FB2: $07
    rst RST_38                                    ; $6FB3: $FF
    rst RST_38                                    ; $6FB4: $FF
    rst RST_38                                    ; $6FB5: $FF
    cp d                                          ; $6FB6: $BA
    ld l, a                                       ; $6FB7: $6F
    ldh [c], a                                    ; $6FB8: $E2
    db $10                                        ; $6FB9: $10
    dec b                                         ; $6FBA: $05
    rla                                           ; $6FBB: $17
    or $12                                        ; $6FBC: $F6 $12
    dec d                                         ; $6FBE: $15
    cp $14                                        ; $6FBF: $FE $14
    dec d                                         ; $6FC1: $15
    ld b, $14                                     ; $6FC2: $06 $14
    dec d                                         ; $6FC4: $15
    ld c, $14                                     ; $6FC5: $0E $14
    dec d                                         ; $6FC7: $15
    ld d, $14                                     ; $6FC8: $16 $14
    sub b                                         ; $6FCA: $90
    nop                                           ; $6FCB: $00
    rlca                                          ; $6FCC: $07
    rst RST_38                                    ; $6FCD: $FF
    rst RST_38                                    ; $6FCE: $FF
    rst RST_38                                    ; $6FCF: $FF
    call nc, $DA6F                                ; $6FD0: $D4 $6F $DA
    db $10                                        ; $6FD3: $10
    ld b, $17                                     ; $6FD4: $06 $17
    or $12                                        ; $6FD6: $F6 $12
    dec d                                         ; $6FD8: $15
    cp $14                                        ; $6FD9: $FE $14
    dec d                                         ; $6FDB: $15
    ld b, $14                                     ; $6FDC: $06 $14
    dec d                                         ; $6FDE: $15
    ld c, $14                                     ; $6FDF: $0E $14
    dec d                                         ; $6FE1: $15
    ld d, $14                                     ; $6FE2: $16 $14
    dec d                                         ; $6FE4: $15
    ld e, $14                                     ; $6FE5: $1E $14
    sub b                                         ; $6FE7: $90
    nop                                           ; $6FE8: $00
    rst RST_08                                    ; $6FE9: $CF
    rst RST_38                                    ; $6FEA: $FF
    rst RST_38                                    ; $6FEB: $FF
    rst RST_38                                    ; $6FEC: $FF
    pop af                                        ; $6FED: $F1
    ld l, a                                       ; $6FEE: $6F
    ld a, [$0210]                                 ; $6FEF: $FA $10 $02

jr_002_6FF2:
    jr nz, jr_002_6FF2                            ; $6FF2: $20 $FE

    ld d, $20                                     ; $6FF4: $16 $20
    ld b, $56                                     ; $6FF6: $06 $56
    sub b                                         ; $6FF8: $90
    nop                                           ; $6FF9: $00
    ld a, [$FFFF]                                 ; $6FFA: $FA $FF $FF
    rst RST_38                                    ; $6FFD: $FF
    inc c                                         ; $6FFE: $0C
    ld [hl], b                                    ; $6FFF: $70
    or $00                                        ; $7000: $F6 $00
    ret nc                                        ; $7002: $D0

    nop                                           ; $7003: $00
    ld a, [$FFFF]                                 ; $7004: $FA $FF $FF
    rst RST_38                                    ; $7007: $FF
    inc c                                         ; $7008: $0C
    ld [hl], b                                    ; $7009: $70
    or $A0                                        ; $700A: $F6 $A0
    ld a, [de]                                    ; $700C: $1A
    jr nc, @-$08                                  ; $700D: $30 $F6

    jr jr_002_7041                                ; $700F: $18 $30

    ld d, $58                                     ; $7011: $16 $58

jr_002_7013:
    jr nc, jr_002_7013                            ; $7013: $30 $FE

    ld a, [de]                                    ; $7015: $1A
    jr nc, jr_002_7026                            ; $7016: $30 $0E

    ld e, d                                       ; $7018: $5A
    jr nc, jr_002_7021                            ; $7019: $30 $06

    ld e, $20                                     ; $701B: $1E $20
    cp $1C                                        ; $701D: $FE $1C
    jr nz, jr_002_702F                            ; $701F: $20 $0E

jr_002_7021:
    ld e, h                                       ; $7021: $5C
    jr nz, @+$08                                  ; $7022: $20 $06

    ld e, $10                                     ; $7024: $1E $10

jr_002_7026:
    cp $1C                                        ; $7026: $FE $1C
    db $10                                        ; $7028: $10
    ld c, $5C                                     ; $7029: $0E $5C
    db $10                                        ; $702B: $10
    ld b, $1E                                     ; $702C: $06 $1E
    nop                                           ; $702E: $00

jr_002_702F:
    cp $1C                                        ; $702F: $FE $1C
    nop                                           ; $7031: $00
    ld c, $5C                                     ; $7032: $0E $5C
    nop                                           ; $7034: $00
    ld b, $1E                                     ; $7035: $06 $1E
    ldh a, [$FFFE]                                ; $7037: $F0 $FE
    inc e                                         ; $7039: $1C
    ldh a, [$FF0E]                                ; $703A: $F0 $0E
    ld e, h                                       ; $703C: $5C
    ldh a, [rTMA]                                 ; $703D: $F0 $06
    ld e, $E0                                     ; $703F: $1E $E0

jr_002_7041:
    cp $1C                                        ; $7041: $FE $1C
    ldh [$FF0E], a                                ; $7043: $E0 $0E
    ld e, h                                       ; $7045: $5C
    ldh [rTMA], a                                 ; $7046: $E0 $06
    ld e, $D0                                     ; $7048: $1E $D0
    cp $1C                                        ; $704A: $FE $1C
    ret nc                                        ; $704C: $D0

    ld c, $5C                                     ; $704D: $0E $5C
    ret nc                                        ; $704F: $D0

    ld b, $1E                                     ; $7050: $06 $1E
    ret nz                                        ; $7052: $C0

    cp $1C                                        ; $7053: $FE $1C
    ret nz                                        ; $7055: $C0

    ld c, $5C                                     ; $7056: $0E $5C
    ret nz                                        ; $7058: $C0

    ld b, $1E                                     ; $7059: $06 $1E
    sub b                                         ; $705B: $90
    nop                                           ; $705C: $00
    ld a, [$FFFF]                                 ; $705D: $FA $FF $FF
    rst RST_38                                    ; $7060: $FF
    ld h, l                                       ; $7061: $65
    ld [hl], b                                    ; $7062: $70
    or $00                                        ; $7063: $F6 $00
    db $10                                        ; $7065: $10
    jr nc, @+$04                                  ; $7066: $30 $02

    inc e                                         ; $7068: $1C
    jr nc, jr_002_7075                            ; $7069: $30 $0A

    ld e, h                                       ; $706B: $5C
    jr nz, @+$04                                  ; $706C: $20 $02

    inc e                                         ; $706E: $1C
    jr nz, jr_002_707B                            ; $706F: $20 $0A

    ld e, h                                       ; $7071: $5C
    db $10                                        ; $7072: $10
    ld [bc], a                                    ; $7073: $02
    inc e                                         ; $7074: $1C

jr_002_7075:
    db $10                                        ; $7075: $10
    ld a, [bc]                                    ; $7076: $0A
    ld e, h                                       ; $7077: $5C
    nop                                           ; $7078: $00
    ld [bc], a                                    ; $7079: $02
    inc e                                         ; $707A: $1C

jr_002_707B:
    nop                                           ; $707B: $00
    ld a, [bc]                                    ; $707C: $0A
    ld e, h                                       ; $707D: $5C
    ldh a, [rSC]                                  ; $707E: $F0 $02
    inc e                                         ; $7080: $1C
    ldh a, [$FF0A]                                ; $7081: $F0 $0A
    ld e, h                                       ; $7083: $5C
    ldh [rSC], a                                  ; $7084: $E0 $02
    inc e                                         ; $7086: $1C
    ldh [$FF0A], a                                ; $7087: $E0 $0A
    ld e, h                                       ; $7089: $5C
    ret nc                                        ; $708A: $D0

    ld [bc], a                                    ; $708B: $02
    inc e                                         ; $708C: $1C
    ret nc                                        ; $708D: $D0

    ld a, [bc]                                    ; $708E: $0A
    ld e, h                                       ; $708F: $5C
    ret nz                                        ; $7090: $C0

jr_002_7091:
    ld [bc], a                                    ; $7091: $02
    inc e                                         ; $7092: $1C
    ret nz                                        ; $7093: $C0

    ld a, [bc]                                    ; $7094: $0A
    ld e, h                                       ; $7095: $5C
    sub b                                         ; $7096: $90
    nop                                           ; $7097: $00
    nop                                           ; $7098: $00
    rst RST_38                                    ; $7099: $FF
    rst RST_38                                    ; $709A: $FF
    rst RST_38                                    ; $709B: $FF
    and b                                         ; $709C: $A0
    ld [hl], b                                    ; $709D: $70
    or $00                                        ; $709E: $F6 $00
    ld [$0630], sp                                ; $70A0: $08 $30 $06
    jr nz, @+$22                                  ; $70A3: $20 $20

    ld b, $20                                     ; $70A5: $06 $20
    db $10                                        ; $70A7: $10
    ld b, $20                                     ; $70A8: $06 $20
    nop                                           ; $70AA: $00
    ld b, $20                                     ; $70AB: $06 $20

jr_002_70AD:
    ldh a, [rTMA]                                 ; $70AD: $F0 $06
    jr nz, jr_002_7091                            ; $70AF: $20 $E0

    ld b, $20                                     ; $70B1: $06 $20
    ret nc                                        ; $70B3: $D0

    ld b, $20                                     ; $70B4: $06 $20
    ret nz                                        ; $70B6: $C0

    ld b, $20                                     ; $70B7: $06 $20
    sub b                                         ; $70B9: $90
    nop                                           ; $70BA: $00
    dec c                                         ; $70BB: $0D

jr_002_70BC:
    rst RST_38                                    ; $70BC: $FF
    rst RST_38                                    ; $70BD: $FF
    rst RST_38                                    ; $70BE: $FF
    jp $FA70                                      ; $70BF: $C3 $70 $FA


    nop                                           ; $70C2: $00
    inc c                                         ; $70C3: $0C
    jr nc, jr_002_70BC                            ; $70C4: $30 $F6

    jr jr_002_70F8                                ; $70C6: $18 $30

    ld c, $58                                     ; $70C8: $0E $58

jr_002_70CA:
    jr nc, jr_002_70CA                            ; $70CA: $30 $FE

    ld a, [de]                                    ; $70CC: $1A
    jr nc, jr_002_70D5                            ; $70CD: $30 $06

    ld e, d                                       ; $70CF: $5A

jr_002_70D0:
    jr nz, jr_002_70D0                            ; $70D0: $20 $FE

    inc e                                         ; $70D2: $1C
    jr nz, @+$08                                  ; $70D3: $20 $06

jr_002_70D5:
    ld e, h                                       ; $70D5: $5C
    db $10                                        ; $70D6: $10
    cp $1C                                        ; $70D7: $FE $1C
    db $10                                        ; $70D9: $10
    ld b, $5C                                     ; $70DA: $06 $5C
    nop                                           ; $70DC: $00
    cp $1C                                        ; $70DD: $FE $1C
    nop                                           ; $70DF: $00
    ld b, $5C                                     ; $70E0: $06 $5C
    ldh a, [$FFFE]                                ; $70E2: $F0 $FE
    inc e                                         ; $70E4: $1C
    ldh a, [rTMA]                                 ; $70E5: $F0 $06
    ld e, h                                       ; $70E7: $5C
    sub b                                         ; $70E8: $90
    nop                                           ; $70E9: $00
    nop                                           ; $70EA: $00
    rst RST_38                                    ; $70EB: $FF
    rst RST_38                                    ; $70EC: $FF
    rst RST_38                                    ; $70ED: $FF
    ldh a, [c]                                    ; $70EE: $F2
    ld [hl], b                                    ; $70EF: $70
    or $00                                        ; $70F0: $F6 $00
    dec b                                         ; $70F2: $05
    jr nc, @+$08                                  ; $70F3: $30 $06

    inc h                                         ; $70F5: $24
    jr nz, @+$08                                  ; $70F6: $20 $06

jr_002_70F8:
    inc h                                         ; $70F8: $24
    db $10                                        ; $70F9: $10
    ld b, $24                                     ; $70FA: $06 $24
    nop                                           ; $70FC: $00
    ld b, $24                                     ; $70FD: $06 $24
    ldh a, [rTMA]                                 ; $70FF: $F0 $06
    inc h                                         ; $7101: $24
    sub b                                         ; $7102: $90
    nop                                           ; $7103: $00
    nop                                           ; $7104: $00
    rst RST_38                                    ; $7105: $FF
    rst RST_38                                    ; $7106: $FF
    rst RST_38                                    ; $7107: $FF
    inc c                                         ; $7108: $0C
    ld [hl], c                                    ; $7109: $71
    or $00                                        ; $710A: $F6 $00
    dec b                                         ; $710C: $05
    jr nc, @+$08                                  ; $710D: $30 $06

    jr nz, jr_002_7131                            ; $710F: $20 $20

    ld b, $20                                     ; $7111: $06 $20
    db $10                                        ; $7113: $10
    ld b, $20                                     ; $7114: $06 $20
    nop                                           ; $7116: $00
    ld b, $20                                     ; $7117: $06 $20
    ldh a, [rTMA]                                 ; $7119: $F0 $06
    jr nz, jr_002_70AD                            ; $711B: $20 $90

    nop                                           ; $711D: $00
    ret nc                                        ; $711E: $D0

    rst RST_38                                    ; $711F: $FF
    rst RST_38                                    ; $7120: $FF
    rst RST_38                                    ; $7121: $FF
    ld h, $71                                     ; $7122: $26 $71
    ld a, [$0210]                                 ; $7124: $FA $10 $02

jr_002_7127:
    jr nz, jr_002_7127                            ; $7127: $20 $FE

    ld [hl+], a                                   ; $7129: $22
    jr nz, jr_002_7132                            ; $712A: $20 $06

    ld h, d                                       ; $712C: $62
    sub b                                         ; $712D: $90
    nop                                           ; $712E: $00
    pop de                                        ; $712F: $D1
    rst RST_38                                    ; $7130: $FF

jr_002_7131:
    rst RST_38                                    ; $7131: $FF

jr_002_7132:
    rst RST_38                                    ; $7132: $FF

jr_002_7133:
    scf                                           ; $7133: $37
    ld [hl], c                                    ; $7134: $71
    db $FD                                        ; $7135: $FD
    ld [de], a                                    ; $7136: $12
    rlca                                          ; $7137: $07
    db $10                                        ; $7138: $10
    or $02                                        ; $7139: $F6 $02
    jr nz, jr_002_7133                            ; $713B: $20 $F6

    add d                                         ; $713D: $82
    ld [$04FE], sp                                ; $713E: $08 $FE $04

jr_002_7141:
    jr z, jr_002_7141                             ; $7141: $28 $FE

    add h                                         ; $7143: $84

jr_002_7144:
    jr jr_002_7144                                ; $7144: $18 $FE

    ld b, $10                                     ; $7146: $06 $10
    ld b, $08                                     ; $7148: $06 $08
    jr nz, jr_002_7152                            ; $714A: $20 $06

    adc b                                         ; $714C: $88
    sub b                                         ; $714D: $90
    nop                                           ; $714E: $00
    pop de                                        ; $714F: $D1
    rst RST_38                                    ; $7150: $FF
    rst RST_38                                    ; $7151: $FF

jr_002_7152:
    rst RST_38                                    ; $7152: $FF
    ld d, a                                       ; $7153: $57
    ld [hl], c                                    ; $7154: $71
    db $FD                                        ; $7155: $FD
    ld [de], a                                    ; $7156: $12
    ld a, [bc]                                    ; $7157: $0A
    dec bc                                        ; $7158: $0B
    or $0A                                        ; $7159: $F6 $0A
    dec h                                         ; $715B: $25
    or $8A                                        ; $715C: $F6 $8A
    ld [$0CFE], sp                                ; $715E: $08 $FE $0C

jr_002_7161:
    jr z, jr_002_7161                             ; $7161: $28 $FE

    adc h                                         ; $7163: $8C
    ld [$0E06], sp                                ; $7164: $08 $06 $0E
    jr z, jr_002_716F                             ; $7167: $28 $06

    adc [hl]                                      ; $7169: $8E
    db $10                                        ; $716A: $10
    ld c, $10                                     ; $716B: $0E $10
    jr nz, jr_002_717D                            ; $716D: $20 $0E

jr_002_716F:
    sub b                                         ; $716F: $90

jr_002_7170:
    jr jr_002_7170                                ; $7170: $18 $FE

    ld [de], a                                    ; $7172: $12
    jr jr_002_717B                                ; $7173: $18 $06

    inc d                                         ; $7175: $14
    sub b                                         ; $7176: $90
    nop                                           ; $7177: $00
    dec b                                         ; $7178: $05
    rst RST_38                                    ; $7179: $FF
    rst RST_38                                    ; $717A: $FF

jr_002_717B:
    rst RST_38                                    ; $717B: $FF
    add b                                         ; $717C: $80

jr_002_717D:
    ld [hl], c                                    ; $717D: $71
    ld [bc], a                                    ; $717E: $02
    ld de, $1008                                  ; $717F: $11 $08 $10
    xor $16                                       ; $7182: $EE $16
    db $10                                        ; $7184: $10
    or $18                                        ; $7185: $F6 $18
    db $10                                        ; $7187: $10

jr_002_7188:
    ld b, $56                                     ; $7188: $06 $56
    db $10                                        ; $718A: $10
    cp $58                                        ; $718B: $FE $58
    jr nz, jr_002_717D                            ; $718D: $20 $EE

    sub [hl]                                      ; $718F: $96
    jr nz, jr_002_7188                            ; $7190: $20 $F6

    sbc b                                         ; $7192: $98
    jr nz, jr_002_719B                            ; $7193: $20 $06

    sub $20                                       ; $7195: $D6 $20
    cp $D8                                        ; $7197: $FE $D8
    sub b                                         ; $7199: $90
    nop                                           ; $719A: $00

jr_002_719B:
    dec b                                         ; $719B: $05
    rst RST_38                                    ; $719C: $FF
    rst RST_38                                    ; $719D: $FF
    rst RST_38                                    ; $719E: $FF
    and e                                         ; $719F: $A3
    ld [hl], c                                    ; $71A0: $71
    ld [bc], a                                    ; $71A1: $02
    ld de, $0008                                  ; $71A2: $11 $08 $00
    or $1A                                        ; $71A5: $F6 $1A
    db $10                                        ; $71A7: $10

jr_002_71A8:
    or $1C                                        ; $71A8: $F6 $1C
    nop                                           ; $71AA: $00

jr_002_71AB:
    cp $5A                                        ; $71AB: $FE $5A
    db $10                                        ; $71AD: $10
    cp $5C                                        ; $71AE: $FE $5C
    jr nc, jr_002_71A8                            ; $71B0: $30 $F6

    sbc d                                         ; $71B2: $9A
    jr nz, jr_002_71AB                            ; $71B3: $20 $F6

    sbc h                                         ; $71B5: $9C

jr_002_71B6:
    jr nc, jr_002_71B6                            ; $71B6: $30 $FE

    jp c, $FE20                                   ; $71B8: $DA $20 $FE

    call c, $0090                                 ; $71BB: $DC $90 $00
    jp nc, $FFFF                                  ; $71BE: $D2 $FF $FF

    rst RST_38                                    ; $71C1: $FF
    add $71                                       ; $71C2: $C6 $71
    rlca                                          ; $71C4: $07
    ld [$2001], sp                                ; $71C5: $08 $01 $20
    or $1E                                        ; $71C8: $F6 $1E
    sub b                                         ; $71CA: $90
    nop                                           ; $71CB: $00
    jp nc, $FFFF                                  ; $71CC: $D2 $FF $FF

    rst RST_38                                    ; $71CF: $FF

jr_002_71D0:
    call nc, Call_000_0571                        ; $71D0: $D4 $71 $05
    ld [$1804], sp                                ; $71D3: $08 $04 $18
    or $20                                        ; $71D6: $F6 $20
    jr z, jr_002_71D0                             ; $71D8: $28 $F6

    and b                                         ; $71DA: $A0

jr_002_71DB:
    jr jr_002_71DB                                ; $71DB: $18 $FE

    ld [hl+], a                                   ; $71DD: $22

jr_002_71DE:
    jr z, jr_002_71DE                             ; $71DE: $28 $FE

    and d                                         ; $71E0: $A2
    sub b                                         ; $71E1: $90
    nop                                           ; $71E2: $00
    db $D3                                        ; $71E3: $D3

jr_002_71E4:
    rst RST_38                                    ; $71E4: $FF
    rst RST_38                                    ; $71E5: $FF
    rst RST_38                                    ; $71E6: $FF
    db $EB                                        ; $71E7: $EB
    ld [hl], c                                    ; $71E8: $71
    db $FD                                        ; $71E9: $FD
    ld [de], a                                    ; $71EA: $12
    inc bc                                        ; $71EB: $03
    jr jr_002_71E4                                ; $71EC: $18 $F6

    ld [bc], a                                    ; $71EE: $02

jr_002_71EF:
    jr jr_002_71EF                                ; $71EF: $18 $FE

    inc b                                         ; $71F1: $04
    jr jr_002_71FA                                ; $71F2: $18 $06

    ld b, $90                                     ; $71F4: $06 $90
    nop                                           ; $71F6: $00
    db $D3                                        ; $71F7: $D3

jr_002_71F8:
    rst RST_38                                    ; $71F8: $FF
    rst RST_38                                    ; $71F9: $FF

jr_002_71FA:
    rst RST_38                                    ; $71FA: $FF
    rst RST_38                                    ; $71FB: $FF
    ld [hl], c                                    ; $71FC: $71
    db $FD                                        ; $71FD: $FD
    ld [de], a                                    ; $71FE: $12
    inc bc                                        ; $71FF: $03
    jr jr_002_71F8                                ; $7200: $18 $F6

    ld [$FE18], sp                                ; $7202: $08 $18 $FE
    ld a, [bc]                                    ; $7205: $0A
    jr jr_002_720E                                ; $7206: $18 $06

    inc c                                         ; $7208: $0C
    sub b                                         ; $7209: $90
    nop                                           ; $720A: $00
    db $D3                                        ; $720B: $D3
    rst RST_38                                    ; $720C: $FF
    rst RST_38                                    ; $720D: $FF

jr_002_720E:
    rst RST_38                                    ; $720E: $FF
    inc de                                        ; $720F: $13

jr_002_7210:
    ld [hl], d                                    ; $7210: $72
    db $FD                                        ; $7211: $FD
    ld [de], a                                    ; $7212: $12
    ld [bc], a                                    ; $7213: $02
    jr jr_002_7210                                ; $7214: $18 $FA

    ld c, $18                                     ; $7216: $0E $18
    ld [bc], a                                    ; $7218: $02
    db $10                                        ; $7219: $10
    add b                                         ; $721A: $80
    nop                                           ; $721B: $00
    call z, $FFFF                                 ; $721C: $CC $FF $FF
    rst RST_38                                    ; $721F: $FF
    ld h, b                                       ; $7220: $60
    ld l, b                                       ; $7221: $68
    nop                                           ; $7222: $00
    nop                                           ; $7223: $00
    sub b                                         ; $7224: $90
    nop                                           ; $7225: $00
    call z, $FFFF                                 ; $7226: $CC $FF $FF
    rst RST_38                                    ; $7229: $FF
    ld l, $72                                     ; $722A: $2E $72
    ld hl, sp+$18                                 ; $722C: $F8 $18
    inc bc                                        ; $722E: $03

jr_002_722F:
    jr jr_002_722F                                ; $722F: $18 $FE

    ld [bc], a                                    ; $7231: $02
    jr jr_002_723A                                ; $7232: $18 $06

    inc b                                         ; $7234: $04
    jr jr_002_7245                                ; $7235: $18 $0E

    ld b, $90                                     ; $7237: $06 $90
    nop                                           ; $7239: $00

jr_002_723A:
    call z, $FFFF                                 ; $723A: $CC $FF $FF
    rst RST_38                                    ; $723D: $FF
    adc b                                         ; $723E: $88
    ld [hl], d                                    ; $723F: $72
    or $16                                        ; $7240: $F6 $16
    sub b                                         ; $7242: $90
    nop                                           ; $7243: $00
    nop                                           ; $7244: $00

jr_002_7245:
    rst RST_38                                    ; $7245: $FF
    rst RST_38                                    ; $7246: $FF
    rst RST_38                                    ; $7247: $FF
    adc b                                         ; $7248: $88
    ld [hl], d                                    ; $7249: $72
    or $16                                        ; $724A: $F6 $16
    or b                                          ; $724C: $B0
    nop                                           ; $724D: $00
    call z, $FFFF                                 ; $724E: $CC $FF $FF
    rst RST_38                                    ; $7251: $FF
    adc b                                         ; $7252: $88
    ld [hl], d                                    ; $7253: $72
    dec bc                                        ; $7254: $0B
    ld d, $B0                                     ; $7255: $16 $B0
    nop                                           ; $7257: $00
    nop                                           ; $7258: $00
    rst RST_38                                    ; $7259: $FF
    rst RST_38                                    ; $725A: $FF
    rst RST_38                                    ; $725B: $FF
    adc b                                         ; $725C: $88
    ld [hl], d                                    ; $725D: $72
    dec bc                                        ; $725E: $0B
    ld d, $D0                                     ; $725F: $16 $D0
    nop                                           ; $7261: $00
    call z, $FFFF                                 ; $7262: $CC $FF $FF
    rst RST_38                                    ; $7265: $FF
    adc b                                         ; $7266: $88
    ld [hl], d                                    ; $7267: $72
    or $F9                                        ; $7268: $F6 $F9
    ret nc                                        ; $726A: $D0

    nop                                           ; $726B: $00
    nop                                           ; $726C: $00
    rst RST_38                                    ; $726D: $FF
    rst RST_38                                    ; $726E: $FF
    rst RST_38                                    ; $726F: $FF
    adc b                                         ; $7270: $88
    ld [hl], d                                    ; $7271: $72
    or $F9                                        ; $7272: $F6 $F9
    ldh a, [rP1]                                  ; $7274: $F0 $00
    call z, $FFFF                                 ; $7276: $CC $FF $FF
    rst RST_38                                    ; $7279: $FF
    adc b                                         ; $727A: $88
    ld [hl], d                                    ; $727B: $72
    dec bc                                        ; $727C: $0B
    ld sp, hl                                     ; $727D: $F9
    ldh a, [rP1]                                  ; $727E: $F0 $00
    nop                                           ; $7280: $00
    rst RST_38                                    ; $7281: $FF
    rst RST_38                                    ; $7282: $FF
    rst RST_38                                    ; $7283: $FF
    adc b                                         ; $7284: $88
    ld [hl], d                                    ; $7285: $72
    dec bc                                        ; $7286: $0B
    ld sp, hl                                     ; $7287: $F9
    inc bc                                        ; $7288: $03
    jr jr_002_7290                                ; $7289: $18 $05

    ld [$0D19], sp                                ; $728B: $08 $19 $0D
    ld a, [bc]                                    ; $728E: $0A
    ld [de], a                                    ; $728F: $12

jr_002_7290:
    db $FD                                        ; $7290: $FD
    inc c                                         ; $7291: $0C
    add b                                         ; $7292: $80
    nop                                           ; $7293: $00
    sub $FF                                       ; $7294: $D6 $FF
    rst RST_38                                    ; $7296: $FF
    rst RST_38                                    ; $7297: $FF
    ld h, b                                       ; $7298: $60
    ld l, b                                       ; $7299: $68
    nop                                           ; $729A: $00
    nop                                           ; $729B: $00
    sub b                                         ; $729C: $90
    nop                                           ; $729D: $00
    sub $FF                                       ; $729E: $D6 $FF
    rst RST_38                                    ; $72A0: $FF
    rst RST_38                                    ; $72A1: $FF
    call nz, $F672                                ; $72A2: $C4 $72 $F6
    dec b                                         ; $72A5: $05
    or b                                          ; $72A6: $B0
    nop                                           ; $72A7: $00
    sub $FF                                       ; $72A8: $D6 $FF
    rst RST_38                                    ; $72AA: $FF
    rst RST_38                                    ; $72AB: $FF
    call nz, $0A72                                ; $72AC: $C4 $72 $0A
    dec b                                         ; $72AF: $05
    ret nc                                        ; $72B0: $D0

    nop                                           ; $72B1: $00
    sub $FF                                       ; $72B2: $D6 $FF
    rst RST_38                                    ; $72B4: $FF
    rst RST_38                                    ; $72B5: $FF
    call nz, $F672                                ; $72B6: $C4 $72 $F6
    push hl                                       ; $72B9: $E5
    ldh a, [rP1]                                  ; $72BA: $F0 $00
    sub $FF                                       ; $72BC: $D6 $FF
    rst RST_38                                    ; $72BE: $FF
    rst RST_38                                    ; $72BF: $FF
    call nz, $0A72                                ; $72C0: $C4 $72 $0A
    push hl                                       ; $72C3: $E5
    ld d, $10                                     ; $72C4: $16 $10
    xor $0E                                       ; $72C6: $EE $0E
    jr nz, @-$10                                  ; $72C8: $20 $EE

    adc [hl]                                      ; $72CA: $8E
    jr nz, @+$20                                  ; $72CB: $20 $1E

    adc $10                                       ; $72CD: $CE $10
    ld e, $10                                     ; $72CF: $1E $10
    ld [$12F6], sp                                ; $72D1: $08 $F6 $12
    jr z, @-$08                                   ; $72D4: $28 $F6

    sub d                                         ; $72D6: $92
    jr z, jr_002_72EF                             ; $72D7: $28 $16

    jp nc, Jump_000_1608                          ; $72D9: $D2 $08 $16

    inc d                                         ; $72DC: $14
    nop                                           ; $72DD: $00
    cp $16                                        ; $72DE: $FE $16

jr_002_72E0:
    jr nc, jr_002_72E0                            ; $72E0: $30 $FE

    sub [hl]                                      ; $72E2: $96
    jr nc, jr_002_72F3                            ; $72E3: $30 $0E

    sub $00                                       ; $72E5: $D6 $00
    ld c, $18                                     ; $72E7: $0E $18
    nop                                           ; $72E9: $00
    ld b, $1A                                     ; $72EA: $06 $1A
    jr nc, @+$08                                  ; $72EC: $30 $06

    inc e                                         ; $72EE: $1C

jr_002_72EF:
    db $10                                        ; $72EF: $10

jr_002_72F0:
    ld b, $1E                                     ; $72F0: $06 $1E
    db $10                                        ; $72F2: $10

jr_002_72F3:
    ld c, $20                                     ; $72F3: $0E $20
    jr jr_002_730D                                ; $72F5: $18 $16

    ld [hl+], a                                   ; $72F7: $22
    jr jr_002_72F0                                ; $72F8: $18 $F6

    inc h                                         ; $72FA: $24
    db $10                                        ; $72FB: $10
    cp $24                                        ; $72FC: $FE $24

jr_002_72FE:
    jr nz, jr_002_72FE                            ; $72FE: $20 $FE

    inc h                                         ; $7300: $24
    jr nz, jr_002_7309                            ; $7301: $20 $06

    inc h                                         ; $7303: $24
    jr nz, jr_002_7314                            ; $7304: $20 $0E

    inc h                                         ; $7306: $24
    nop                                           ; $7307: $00
    nop                                           ; $7308: $00

jr_002_7309:
    nop                                           ; $7309: $00
    nop                                           ; $730A: $00
    ld h, b                                       ; $730B: $60
    nop                                           ; $730C: $00

jr_002_730D:
    adc b                                         ; $730D: $88
    nop                                           ; $730E: $00
    nop                                           ; $730F: $00
    nop                                           ; $7310: $00
    nop                                           ; $7311: $00
    nop                                           ; $7312: $00
    nop                                           ; $7313: $00

jr_002_7314:
    nop                                           ; $7314: $00
    add b                                         ; $7315: $80
    nop                                           ; $7316: $00
    adc b                                         ; $7317: $88
    nop                                           ; $7318: $00
    nop                                           ; $7319: $00
    nop                                           ; $731A: $00
    nop                                           ; $731B: $00
    nop                                           ; $731C: $00
    nop                                           ; $731D: $00
    nop                                           ; $731E: $00
    nop                                           ; $731F: $00
    nop                                           ; $7320: $00
    nop                                           ; $7321: $00
    nop                                           ; $7322: $00
    nop                                           ; $7323: $00
    nop                                           ; $7324: $00
    nop                                           ; $7325: $00
    nop                                           ; $7326: $00
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
