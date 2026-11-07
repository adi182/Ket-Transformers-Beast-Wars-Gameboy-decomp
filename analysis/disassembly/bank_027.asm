; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $027", ROMX[$4000], BANK[$27]

    call Call_000_31B6                            ; $4000: $CD $B6 $31
    jp c, Jump_027_40FD                           ; $4003: $DA $FD $40

    jp z, Jump_027_4015                           ; $4006: $CA $15 $40

    call Call_000_3A2A                            ; $4009: $CD $2A $3A
    jp c, Jump_027_40A1                           ; $400C: $DA $A1 $40

    jp z, Jump_027_40AC                           ; $400F: $CA $AC $40

    jp Jump_027_40FD                              ; $4012: $C3 $FD $40


Jump_027_4015:
    call Call_000_3A2A                            ; $4015: $CD $2A $3A
    jp c, Jump_027_40CB                           ; $4018: $DA $CB $40

    jp z, Jump_027_40F0                           ; $401B: $CA $F0 $40

    call Call_000_39D3                            ; $401E: $CD $D3 $39
    jp nc, Jump_027_40FD                          ; $4021: $D2 $FD $40

    jp z, Jump_027_402D                           ; $4024: $CA $2D $40

    jp nz, Jump_027_405F                          ; $4027: $C2 $5F $40

    jp Jump_027_40FD                              ; $402A: $C3 $FD $40


Jump_027_402D:
    call Call_000_3209                            ; $402D: $CD $09 $32
    jr c, jr_027_403B                             ; $4030: $38 $09

    ld hl, $3AD4                                  ; $4032: $21 $D4 $3A
    call Call_000_2B78                            ; $4035: $CD $78 $2B
    jp c, Jump_027_40CB                           ; $4038: $DA $CB $40

jr_027_403B:
    call Call_000_3A61                            ; $403B: $CD $61 $3A
    jp c, Jump_027_40FB                           ; $403E: $DA $FB $40

    ld hl, $3B14                                  ; $4041: $21 $14 $3B
    call Call_000_2B78                            ; $4044: $CD $78 $2B
    jp c, Jump_027_4082                           ; $4047: $DA $82 $40

    ld hl, $3B2A                                  ; $404A: $21 $2A $3B
    call Call_000_2B78                            ; $404D: $CD $78 $2B
    jp c, Jump_027_40AC                           ; $4050: $DA $AC $40

    ld hl, $3AB9                                  ; $4053: $21 $B9 $3A
    call Call_000_2B78                            ; $4056: $CD $78 $2B
    jp c, Jump_027_408D                           ; $4059: $DA $8D $40

    jp Jump_027_40FD                              ; $405C: $C3 $FD $40


Jump_027_405F:
    call Call_000_3209                            ; $405F: $CD $09 $32
    jp c, Jump_027_4076                           ; $4062: $DA $76 $40

    cp $01                                        ; $4065: $FE $01
    jr z, jr_027_4076                             ; $4067: $28 $0D

    cp $02                                        ; $4069: $FE $02
    jr z, jr_027_406D                             ; $406B: $28 $00

jr_027_406D:
    ld hl, $3AE5                                  ; $406D: $21 $E5 $3A
    call Call_000_2B78                            ; $4070: $CD $78 $2B
    jp c, Jump_027_40F0                           ; $4073: $DA $F0 $40

Jump_027_4076:
jr_027_4076:
    ld hl, $3B2A                                  ; $4076: $21 $2A $3B
    call Call_000_2B78                            ; $4079: $CD $78 $2B
    jp c, Jump_027_40A1                           ; $407C: $DA $A1 $40

    jp Jump_027_40FD                              ; $407F: $C3 $FD $40


Jump_027_4082:
    call Call_000_2C23                            ; $4082: $CD $23 $2C
    ld a, $40                                     ; $4085: $3E $40
    call Call_000_32E2                            ; $4087: $CD $E2 $32
    jp Jump_027_40FB                              ; $408A: $C3 $FB $40


Jump_027_408D:
    call Call_000_32C5                            ; $408D: $CD $C5 $32
    jp nz, Jump_027_40FD                          ; $4090: $C2 $FD $40

    call Call_000_2C23                            ; $4093: $CD $23 $2C
    ld a, $42                                     ; $4096: $3E $42
    call Call_000_32E2                            ; $4098: $CD $E2 $32
    call Call_000_34F1                            ; $409B: $CD $F1 $34
    jp Jump_027_40FB                              ; $409E: $C3 $FB $40


Jump_027_40A1:
    call Call_000_2C23                            ; $40A1: $CD $23 $2C
    ld a, $44                                     ; $40A4: $3E $44
    call Call_000_32E2                            ; $40A6: $CD $E2 $32
    jp Jump_027_40FB                              ; $40A9: $C3 $FB $40


Jump_027_40AC:
    call Call_000_2C23                            ; $40AC: $CD $23 $2C
    call Call_000_36DD                            ; $40AF: $CD $DD $36
    jp nc, Jump_027_40FD                          ; $40B2: $D2 $FD $40

    call Call_000_0417                            ; $40B5: $CD $17 $04
    ld a, $03                                     ; $40B8: $3E $03
    ld [$C2E2], a                                 ; $40BA: $EA $E2 $C2
    ld a, $46                                     ; $40BD: $3E $46
    call Call_000_32E2                            ; $40BF: $CD $E2 $32
    ld hl, $0021                                  ; $40C2: $21 $21 $00
    add hl, bc                                    ; $40C5: $09
    set 7, [hl]                                   ; $40C6: $CB $FE
    jp Jump_027_40FB                              ; $40C8: $C3 $FB $40


Jump_027_40CB:
    call Call_000_2C23                            ; $40CB: $CD $23 $2C
    call Call_000_36DD                            ; $40CE: $CD $DD $36
    jp nc, Jump_027_40FD                          ; $40D1: $D2 $FD $40

    call Call_000_0417                            ; $40D4: $CD $17 $04
    ld a, $03                                     ; $40D7: $3E $03
    ld [$C2E2], a                                 ; $40D9: $EA $E2 $C2
    ld a, $4A                                     ; $40DC: $3E $4A
    call Call_000_32E2                            ; $40DE: $CD $E2 $32
    ld hl, $0021                                  ; $40E1: $21 $21 $00
    add hl, bc                                    ; $40E4: $09
    set 7, [hl]                                   ; $40E5: $CB $FE
    ld hl, $0031                                  ; $40E7: $21 $31 $00
    add hl, bc                                    ; $40EA: $09
    ld [hl], $01                                  ; $40EB: $36 $01
    jp Jump_027_40FB                              ; $40ED: $C3 $FB $40


Jump_027_40F0:
    call Call_000_2C23                            ; $40F0: $CD $23 $2C
    ld a, $4C                                     ; $40F3: $3E $4C
    call Call_000_32E2                            ; $40F5: $CD $E2 $32
    jp Jump_027_40FB                              ; $40F8: $C3 $FB $40


Jump_027_40FB:
    scf                                           ; $40FB: $37
    ret                                           ; $40FC: $C9


Jump_027_40FD:
    or a                                          ; $40FD: $B7
    ret                                           ; $40FE: $C9


    call Call_000_2EE0                            ; $40FF: $CD $E0 $2E
    call Call_000_3517                            ; $4102: $CD $17 $35
    jp c, Jump_027_422E                           ; $4105: $DA $2E $42

    ld hl, $0018                                  ; $4108: $21 $18 $00
    add hl, de                                    ; $410B: $19
    ld a, [hl]                                    ; $410C: $7E
    cp $00                                        ; $410D: $FE $00
    jp z, Jump_027_412B                           ; $410F: $CA $2B $41

    cp $04                                        ; $4112: $FE $04
    jp z, Jump_027_415C                           ; $4114: $CA $5C $41

    cp $08                                        ; $4117: $FE $08
    jp z, Jump_027_4211                           ; $4119: $CA $11 $42

    cp $0C                                        ; $411C: $FE $0C
    jp z, Jump_027_41BF                           ; $411E: $CA $BF $41

    cp $10                                        ; $4121: $FE $10
    jp z, Jump_027_41F0                           ; $4123: $CA $F0 $41

    cp $14                                        ; $4126: $FE $14
    jp z, Jump_027_421A                           ; $4128: $CA $1A $42

Jump_027_412B:
    call Call_000_2CA9                            ; $412B: $CD $A9 $2C
    jp nc, Jump_027_422B                          ; $412E: $D2 $2B $42

    inc hl                                        ; $4131: $23
    ld [hl], $0A                                  ; $4132: $36 $0A
    call Call_000_32CC                            ; $4134: $CD $CC $32
    jr c, jr_027_4151                             ; $4137: $38 $18

    jr nz, jr_027_4146                            ; $4139: $20 $0B

    ld hl, $0204                                  ; $413B: $21 $04 $02
    ld a, $11                                     ; $413E: $3E $11
    call Call_000_34B3                            ; $4140: $CD $B3 $34
    jp Jump_027_422B                              ; $4143: $C3 $2B $42


jr_027_4146:
    ld hl, $0204                                  ; $4146: $21 $04 $02
    ld a, $11                                     ; $4149: $3E $11
    call Call_000_34B3                            ; $414B: $CD $B3 $34
    jp Jump_027_422B                              ; $414E: $C3 $2B $42


jr_027_4151:
    ld hl, HeaderLogo                             ; $4151: $21 $04 $01
    ld a, $90                                     ; $4154: $3E $90
    call Call_000_34B3                            ; $4156: $CD $B3 $34
    jp Jump_027_422B                              ; $4159: $C3 $2B $42


Jump_027_415C:
    call Call_000_2CA2                            ; $415C: $CD $A2 $2C
    jr z, jr_027_4183                             ; $415F: $28 $22

    ld a, $11                                     ; $4161: $3E $11
    call Call_000_1360                            ; $4163: $CD $60 $13
    call Call_000_32CC                            ; $4166: $CD $CC $32
    jr c, jr_027_417D                             ; $4169: $38 $12

    jr nz, jr_027_4175                            ; $416B: $20 $08

    ld hl, $0300                                  ; $416D: $21 $00 $03
    call Call_000_2FEB                            ; $4170: $CD $EB $2F
    jr jr_027_4183                                ; $4173: $18 $0E

jr_027_4175:
    ld hl, $0400                                  ; $4175: $21 $00 $04
    call Call_000_2FEB                            ; $4178: $CD $EB $2F
    jr jr_027_4183                                ; $417B: $18 $06

jr_027_417D:
    ld hl, $0500                                  ; $417D: $21 $00 $05
    call Call_000_2FEB                            ; $4180: $CD $EB $2F

jr_027_4183:
    call Call_000_32CC                            ; $4183: $CD $CC $32
    jr c, jr_027_418C                             ; $4186: $38 $04

    jr nz, jr_027_41A0                            ; $4188: $20 $16

    jr jr_027_41A0                                ; $418A: $18 $14

jr_027_418C:
    ld hl, HeaderLogo                             ; $418C: $21 $04 $01
    ld a, $80                                     ; $418F: $3E $80
    call Call_000_34A2                            ; $4191: $CD $A2 $34
    call Call_000_2CA9                            ; $4194: $CD $A9 $2C
    jp nc, Jump_027_4211                          ; $4197: $D2 $11 $42

    inc hl                                        ; $419A: $23
    ld [hl], $00                                  ; $419B: $36 $00
    jp Jump_027_4211                              ; $419D: $C3 $11 $42


jr_027_41A0:
    call Call_000_3262                            ; $41A0: $CD $62 $32
    jp nc, Jump_027_41B3                          ; $41A3: $D2 $B3 $41

    jp nz, Jump_027_41B3                          ; $41A6: $C2 $B3 $41

    ld a, $08                                     ; $41A9: $3E $08
    ld h, $00                                     ; $41AB: $26 $00
    call Call_000_2D19                            ; $41AD: $CD $19 $2D
    jp Jump_027_422E                              ; $41B0: $C3 $2E $42


Jump_027_41B3:
    call Call_000_2CA9                            ; $41B3: $CD $A9 $2C
    jp nc, Jump_027_4211                          ; $41B6: $D2 $11 $42

    inc hl                                        ; $41B9: $23
    ld [hl], $00                                  ; $41BA: $36 $00
    jp Jump_027_4211                              ; $41BC: $C3 $11 $42


Jump_027_41BF:
    call Call_000_2CA9                            ; $41BF: $CD $A9 $2C
    jp nc, Jump_027_4211                          ; $41C2: $D2 $11 $42

    inc hl                                        ; $41C5: $23
    ld [hl], $00                                  ; $41C6: $36 $00
    call Call_000_32CC                            ; $41C8: $CD $CC $32
    jr c, jr_027_41E5                             ; $41CB: $38 $18

    jr nz, jr_027_41DA                            ; $41CD: $20 $0B

    ld hl, $030F                                  ; $41CF: $21 $0F $03
    ld a, $80                                     ; $41D2: $3E $80
    call Call_000_34B3                            ; $41D4: $CD $B3 $34
    jp Jump_027_4211                              ; $41D7: $C3 $11 $42


jr_027_41DA:
    ld hl, $040F                                  ; $41DA: $21 $0F $04
    ld a, $01                                     ; $41DD: $3E $01
    call Call_000_34B3                            ; $41DF: $CD $B3 $34
    jp Jump_027_4211                              ; $41E2: $C3 $11 $42


jr_027_41E5:
    ld hl, $020F                                  ; $41E5: $21 $0F $02
    ld a, $03                                     ; $41E8: $3E $03
    call Call_000_34B3                            ; $41EA: $CD $B3 $34
    jp Jump_027_4211                              ; $41ED: $C3 $11 $42


Jump_027_41F0:
    call Call_000_2CA2                            ; $41F0: $CD $A2 $2C
    jr z, jr_027_41FF                             ; $41F3: $28 $0A

    ld a, $07                                     ; $41F5: $3E $07
    call Call_000_3963                            ; $41F7: $CD $63 $39
    ld a, $0E                                     ; $41FA: $3E $0E
    call Call_000_1360                            ; $41FC: $CD $60 $13

jr_027_41FF:
    ld hl, $0020                                  ; $41FF: $21 $20 $00
    call Call_000_30B0                            ; $4202: $CD $B0 $30
    call Call_000_2CA9                            ; $4205: $CD $A9 $2C
    jp nc, Jump_027_422B                          ; $4208: $D2 $2B $42

    inc hl                                        ; $420B: $23
    ld [hl], $1E                                  ; $420C: $36 $1E
    jp Jump_027_422B                              ; $420E: $C3 $2B $42


Jump_027_4211:
    ld hl, $0010                                  ; $4211: $21 $10 $00
    call Call_000_30B0                            ; $4214: $CD $B0 $30
    jp Jump_027_422B                              ; $4217: $C3 $2B $42


Jump_027_421A:
    ld hl, $0010                                  ; $421A: $21 $10 $00
    call Call_000_30B0                            ; $421D: $CD $B0 $30
    call Call_000_2CA9                            ; $4220: $CD $A9 $2C
    jp nc, Jump_027_422B                          ; $4223: $D2 $2B $42

    call Call_000_2DB6                            ; $4226: $CD $B6 $2D
    jr jr_027_422E                                ; $4229: $18 $03

Jump_027_422B:
    call Call_000_2E25                            ; $422B: $CD $25 $2E

Jump_027_422E:
jr_027_422E:
    ret                                           ; $422E: $C9


    call Call_000_2EE0                            ; $422F: $CD $E0 $2E
    call Call_000_3517                            ; $4232: $CD $17 $35
    jp c, Jump_027_426A                           ; $4235: $DA $6A $42

    ld hl, $0018                                  ; $4238: $21 $18 $00
    add hl, de                                    ; $423B: $19
    ld a, [hl]                                    ; $423C: $7E
    cp $08                                        ; $423D: $FE $08
    jp z, Jump_027_424A                           ; $423F: $CA $4A $42

    cp $10                                        ; $4242: $FE $10
    jp z, Jump_027_425C                           ; $4244: $CA $5C $42

    jp Jump_027_4267                              ; $4247: $C3 $67 $42


Jump_027_424A:
    call Call_000_2CA2                            ; $424A: $CD $A2 $2C
    jp z, Jump_027_4267                           ; $424D: $CA $67 $42

    call Call_027_49A4                            ; $4250: $CD $A4 $49
    ld hl, $001D                                  ; $4253: $21 $1D $00
    add hl, de                                    ; $4256: $19
    ld [hl], $0A                                  ; $4257: $36 $0A
    jp Jump_027_4267                              ; $4259: $C3 $67 $42


Jump_027_425C:
    call Call_000_2CA9                            ; $425C: $CD $A9 $2C
    jp nc, Jump_027_4267                          ; $425F: $D2 $67 $42

    call Call_000_2DB6                            ; $4262: $CD $B6 $2D
    jr jr_027_426A                                ; $4265: $18 $03

Jump_027_4267:
    jp Jump_000_2E25                              ; $4267: $C3 $25 $2E


Jump_027_426A:
jr_027_426A:
    ret                                           ; $426A: $C9


    call Call_000_2EE0                            ; $426B: $CD $E0 $2E
    call Call_000_3517                            ; $426E: $CD $17 $35
    jp c, Jump_027_43E3                           ; $4271: $DA $E3 $43

    ld hl, $0018                                  ; $4274: $21 $18 $00
    add hl, de                                    ; $4277: $19
    ld a, [hl]                                    ; $4278: $7E
    cp $00                                        ; $4279: $FE $00
    jp z, Jump_027_4292                           ; $427B: $CA $92 $42

    cp $04                                        ; $427E: $FE $04
    jp z, Jump_027_42B8                           ; $4280: $CA $B8 $42

    cp $08                                        ; $4283: $FE $08
    jp z, Jump_027_4336                           ; $4285: $CA $36 $43

    cp $0C                                        ; $4288: $FE $0C
    jp z, Jump_027_43B4                           ; $428A: $CA $B4 $43

    cp $10                                        ; $428D: $FE $10
    jp z, Jump_027_43CF                           ; $428F: $CA $CF $43

Jump_027_4292:
    call Call_000_2CA9                            ; $4292: $CD $A9 $2C
    jp nc, Jump_027_43E0                          ; $4295: $D2 $E0 $43

    inc hl                                        ; $4298: $23
    ld [hl], $06                                  ; $4299: $36 $06
    call Call_000_32CC                            ; $429B: $CD $CC $32
    jr c, jr_027_42AD                             ; $429E: $38 $0D

    jr nz, jr_027_42A2                            ; $42A0: $20 $00

jr_027_42A2:
    ld hl, $0204                                  ; $42A2: $21 $04 $02
    ld a, $01                                     ; $42A5: $3E $01
    call Call_000_34B3                            ; $42A7: $CD $B3 $34
    jp Jump_027_43E0                              ; $42AA: $C3 $E0 $43


jr_027_42AD:
    ld hl, $0204                                  ; $42AD: $21 $04 $02
    ld a, $90                                     ; $42B0: $3E $90
    call Call_000_34B3                            ; $42B2: $CD $B3 $34
    jp Jump_027_43E0                              ; $42B5: $C3 $E0 $43


Jump_027_42B8:
    call Call_000_2CA2                            ; $42B8: $CD $A2 $2C
    jr z, jr_027_42E2                             ; $42BB: $28 $25

    ld a, $0E                                     ; $42BD: $3E $0E
    call Call_000_1360                            ; $42BF: $CD $60 $13
    call Call_000_32CC                            ; $42C2: $CD $CC $32
    jr c, jr_027_42D9                             ; $42C5: $38 $12

    jr nz, jr_027_42D1                            ; $42C7: $20 $08

    ld hl, $0200                                  ; $42C9: $21 $00 $02
    call Call_000_2FEB                            ; $42CC: $CD $EB $2F
    jr jr_027_42DF                                ; $42CF: $18 $0E

jr_027_42D1:
    ld hl, $0280                                  ; $42D1: $21 $80 $02
    call Call_000_2FEB                            ; $42D4: $CD $EB $2F
    jr jr_027_42DF                                ; $42D7: $18 $06

jr_027_42D9:
    ld hl, $0300                                  ; $42D9: $21 $00 $03
    call Call_000_2FEB                            ; $42DC: $CD $EB $2F

jr_027_42DF:
    jp Jump_027_43C6                              ; $42DF: $C3 $C6 $43


jr_027_42E2:
    call Call_000_32CC                            ; $42E2: $CD $CC $32
    jr c, jr_027_42EB                             ; $42E5: $38 $04

    jr nz, jr_027_4307                            ; $42E7: $20 $1E

    jr jr_027_4307                                ; $42E9: $18 $1C

jr_027_42EB:
    ld hl, HeaderLogo                             ; $42EB: $21 $04 $01
    ld a, $80                                     ; $42EE: $3E $80
    call Call_000_34A2                            ; $42F0: $CD $A2 $34
    call Call_000_2CA9                            ; $42F3: $CD $A9 $2C
    jp nc, Jump_027_43C6                          ; $42F6: $D2 $C6 $43

    inc hl                                        ; $42F9: $23
    ld [hl], $01                                  ; $42FA: $36 $01
    ld hl, $0103                                  ; $42FC: $21 $03 $01
    ld a, $01                                     ; $42FF: $3E $01
    call Call_000_34B3                            ; $4301: $CD $B3 $34
    jp Jump_027_43C6                              ; $4304: $C3 $C6 $43


jr_027_4307:
    call Call_000_3262                            ; $4307: $CD $62 $32
    jp nc, Jump_027_4322                          ; $430A: $D2 $22 $43

    jp nz, Jump_027_4322                          ; $430D: $C2 $22 $43

    ld hl, $0203                                  ; $4310: $21 $03 $02
    ld a, $01                                     ; $4313: $3E $01
    call Call_000_34B3                            ; $4315: $CD $B3 $34
    ld a, $08                                     ; $4318: $3E $08
    ld h, $0A                                     ; $431A: $26 $0A
    call Call_000_2D19                            ; $431C: $CD $19 $2D
    jp Jump_027_43E3                              ; $431F: $C3 $E3 $43


Jump_027_4322:
    call Call_000_2CA9                            ; $4322: $CD $A9 $2C
    jp nc, Jump_027_43C6                          ; $4325: $D2 $C6 $43

    inc hl                                        ; $4328: $23
    ld [hl], $05                                  ; $4329: $36 $05
    ld hl, $0303                                  ; $432B: $21 $03 $03
    ld a, $01                                     ; $432E: $3E $01
    call Call_000_34B3                            ; $4330: $CD $B3 $34
    jp Jump_027_43C6                              ; $4333: $C3 $C6 $43


Jump_027_4336:
    call Call_000_2CA2                            ; $4336: $CD $A2 $2C
    jr z, jr_027_4360                             ; $4339: $28 $25

    ld a, $0E                                     ; $433B: $3E $0E
    call Call_000_1360                            ; $433D: $CD $60 $13
    call Call_000_32CC                            ; $4340: $CD $CC $32
    jr c, jr_027_4357                             ; $4343: $38 $12

    jr nz, jr_027_434F                            ; $4345: $20 $08

    ld hl, $0400                                  ; $4347: $21 $00 $04
    call Call_000_2FEB                            ; $434A: $CD $EB $2F
    jr jr_027_435D                                ; $434D: $18 $0E

jr_027_434F:
    ld hl, $0500                                  ; $434F: $21 $00 $05
    call Call_000_2FEB                            ; $4352: $CD $EB $2F
    jr jr_027_435D                                ; $4355: $18 $06

jr_027_4357:
    ld hl, $0600                                  ; $4357: $21 $00 $06
    call Call_000_2FEB                            ; $435A: $CD $EB $2F

jr_027_435D:
    jp Jump_027_43C6                              ; $435D: $C3 $C6 $43


jr_027_4360:
    call Call_000_32CC                            ; $4360: $CD $CC $32
    jr c, jr_027_4369                             ; $4363: $38 $04

    jr nz, jr_027_4385                            ; $4365: $20 $1E

    jr jr_027_4385                                ; $4367: $18 $1C

jr_027_4369:
    ld hl, $0108                                  ; $4369: $21 $08 $01
    ld a, $92                                     ; $436C: $3E $92
    call Call_000_34A2                            ; $436E: $CD $A2 $34
    call Call_000_2CA9                            ; $4371: $CD $A9 $2C
    jp nc, Jump_027_43C6                          ; $4374: $D2 $C6 $43

    inc hl                                        ; $4377: $23
    ld [hl], $01                                  ; $4378: $36 $01
    ld hl, $0308                                  ; $437A: $21 $08 $03
    ld a, $01                                     ; $437D: $3E $01
    call Call_000_34B3                            ; $437F: $CD $B3 $34
    jp Jump_027_43C6                              ; $4382: $C3 $C6 $43


jr_027_4385:
    call Call_000_3262                            ; $4385: $CD $62 $32
    jp nc, Jump_027_43A0                          ; $4388: $D2 $A0 $43

    jp nz, Jump_027_43A0                          ; $438B: $C2 $A0 $43

    ld hl, $0308                                  ; $438E: $21 $08 $03
    ld a, $01                                     ; $4391: $3E $01
    call Call_000_34B3                            ; $4393: $CD $B3 $34
    ld a, $0C                                     ; $4396: $3E $0C
    ld h, $14                                     ; $4398: $26 $14
    call Call_000_2D19                            ; $439A: $CD $19 $2D
    jp Jump_027_43E3                              ; $439D: $C3 $E3 $43


Jump_027_43A0:
    call Call_000_2CA9                            ; $43A0: $CD $A9 $2C
    jp nc, Jump_027_43C6                          ; $43A3: $D2 $C6 $43

    inc hl                                        ; $43A6: $23
    ld [hl], $14                                  ; $43A7: $36 $14
    ld hl, $0308                                  ; $43A9: $21 $08 $03
    ld a, $01                                     ; $43AC: $3E $01
    call Call_000_34B3                            ; $43AE: $CD $B3 $34
    jp Jump_027_43C6                              ; $43B1: $C3 $C6 $43


Jump_027_43B4:
    ld hl, $0010                                  ; $43B4: $21 $10 $00
    call Call_000_30B0                            ; $43B7: $CD $B0 $30
    call Call_000_2CA9                            ; $43BA: $CD $A9 $2C
    jp nc, Jump_027_43E0                          ; $43BD: $D2 $E0 $43

    inc hl                                        ; $43C0: $23
    ld [hl], $14                                  ; $43C1: $36 $14
    jp Jump_027_43E0                              ; $43C3: $C3 $E0 $43


Jump_027_43C6:
    ld hl, $0010                                  ; $43C6: $21 $10 $00
    call Call_000_30B0                            ; $43C9: $CD $B0 $30
    jp Jump_027_43E0                              ; $43CC: $C3 $E0 $43


Jump_027_43CF:
    ld hl, $0010                                  ; $43CF: $21 $10 $00
    call Call_000_30B0                            ; $43D2: $CD $B0 $30
    call Call_000_2CA9                            ; $43D5: $CD $A9 $2C
    jp nc, Jump_027_43E0                          ; $43D8: $D2 $E0 $43

    call Call_000_2DB6                            ; $43DB: $CD $B6 $2D
    jr jr_027_43E3                                ; $43DE: $18 $03

Jump_027_43E0:
    call Call_000_2E25                            ; $43E0: $CD $25 $2E

Jump_027_43E3:
jr_027_43E3:
    ret                                           ; $43E3: $C9


    call Call_000_2EE0                            ; $43E4: $CD $E0 $2E
    call Call_000_3517                            ; $43E7: $CD $17 $35
    jp c, Jump_027_4507                           ; $43EA: $DA $07 $45

    ld hl, $0018                                  ; $43ED: $21 $18 $00
    add hl, de                                    ; $43F0: $19
    ld a, [hl]                                    ; $43F1: $7E
    cp $00                                        ; $43F2: $FE $00
    jp z, Jump_027_4418                           ; $43F4: $CA $18 $44

    cp $04                                        ; $43F7: $FE $04
    jp z, Jump_027_4432                           ; $43F9: $CA $32 $44

    cp $08                                        ; $43FC: $FE $08
    jp z, Jump_027_444F                           ; $43FE: $CA $4F $44

    cp $0C                                        ; $4401: $FE $0C
    jp z, Jump_027_4464                           ; $4403: $CA $64 $44

    cp $10                                        ; $4406: $FE $10
    jp z, Jump_027_4488                           ; $4408: $CA $88 $44

    cp $14                                        ; $440B: $FE $14
    jp z, Jump_027_44C8                           ; $440D: $CA $C8 $44

    cp $18                                        ; $4410: $FE $18
    jp z, Jump_027_44E6                           ; $4412: $CA $E6 $44

    jp Jump_027_4504                              ; $4415: $C3 $04 $45


Jump_027_4418:
    call Call_000_2CA9                            ; $4418: $CD $A9 $2C
    jp nc, Jump_027_4504                          ; $441B: $D2 $04 $45

    inc hl                                        ; $441E: $23
    ld [hl], $07                                  ; $441F: $36 $07
    ld hl, $0519                                  ; $4421: $21 $19 $05
    ld a, $00                                     ; $4424: $3E $00
    call Call_000_34B3                            ; $4426: $CD $B3 $34
    ld hl, $E800                                  ; $4429: $21 $00 $E8
    call Call_000_3496                            ; $442C: $CD $96 $34
    jp Jump_027_4504                              ; $442F: $C3 $04 $45


Jump_027_4432:
    call Call_000_2CA9                            ; $4432: $CD $A9 $2C
    jp nc, Jump_027_4504                          ; $4435: $D2 $04 $45

    inc hl                                        ; $4438: $23
    ld [hl], $07                                  ; $4439: $36 $07
    ld hl, $0213                                  ; $443B: $21 $13 $02
    ld a, $90                                     ; $443E: $3E $90
    call Call_000_34B3                            ; $4440: $CD $B3 $34
    jp Jump_027_4504                              ; $4443: $C3 $04 $45


    ld hl, $001D                                  ; $4446: $21 $1D $00
    add hl, de                                    ; $4449: $19
    ld [hl], $3C                                  ; $444A: $36 $3C
    jp Jump_027_4504                              ; $444C: $C3 $04 $45


Jump_027_444F:
    call Call_000_2CA9                            ; $444F: $CD $A9 $2C
    jp nc, Jump_027_4504                          ; $4452: $D2 $04 $45

    inc hl                                        ; $4455: $23
    ld [hl], $32                                  ; $4456: $36 $32
    jp Jump_027_4504                              ; $4458: $C3 $04 $45


    ld hl, $001D                                  ; $445B: $21 $1D $00
    add hl, de                                    ; $445E: $19
    ld [hl], $0A                                  ; $445F: $36 $0A
    jp Jump_027_4504                              ; $4461: $C3 $04 $45


Jump_027_4464:
    call Call_000_2CA9                            ; $4464: $CD $A9 $2C
    jp nc, Jump_027_4504                          ; $4467: $D2 $04 $45

    inc hl                                        ; $446A: $23
    ld [hl], $FF                                  ; $446B: $36 $FF
    ld hl, $051B                                  ; $446D: $21 $1B $05
    ld a, $00                                     ; $4470: $3E $00
    call Call_000_34B3                            ; $4472: $CD $B3 $34
    ld hl, $F000                                  ; $4475: $21 $00 $F0
    call Call_000_3496                            ; $4478: $CD $96 $34
    jp Jump_027_4504                              ; $447B: $C3 $04 $45


    xor a                                         ; $447E: $AF
    ld [$C2E2], a                                 ; $447F: $EA $E2 $C2
    call Call_000_2DB6                            ; $4482: $CD $B6 $2D
    jp Jump_027_4507                              ; $4485: $C3 $07 $45


Jump_027_4488:
    call Call_000_2CA2                            ; $4488: $CD $A2 $2C
    jr z, jr_027_449E                             ; $448B: $28 $11

    ld a, $B6                                     ; $448D: $3E $B6
    call Call_000_1360                            ; $448F: $CD $60 $13
    ld hl, $0000                                  ; $4492: $21 $00 $00
    call Call_000_2FEB                            ; $4495: $CD $EB $2F
    ld hl, $F900                                  ; $4498: $21 $00 $F9
    call Call_000_305D                            ; $449B: $CD $5D $30

jr_027_449E:
    call Call_000_3262                            ; $449E: $CD $62 $32
    jp nc, Jump_027_44C5                          ; $44A1: $D2 $C5 $44

    jp nz, Jump_027_44C5                          ; $44A4: $C2 $C5 $44

    ld hl, $051B                                  ; $44A7: $21 $1B $05
    ld a, $00                                     ; $44AA: $3E $00
    call Call_000_34B3                            ; $44AC: $CD $B3 $34
    ld hl, $F4FF                                  ; $44AF: $21 $FF $F4
    call Call_000_3496                            ; $44B2: $CD $96 $34
    ld a, $14                                     ; $44B5: $3E $14
    ld h, $FF                                     ; $44B7: $26 $FF
    call Call_000_2D19                            ; $44B9: $CD $19 $2D
    ld hl, $0000                                  ; $44BC: $21 $00 $00
    call Call_000_305D                            ; $44BF: $CD $5D $30
    jp Jump_027_4507                              ; $44C2: $C3 $07 $45


Jump_027_44C5:
    jp Jump_027_44CB                              ; $44C5: $C3 $CB $44


Jump_027_44C8:
    jp Jump_027_44CB                              ; $44C8: $C3 $CB $44


Jump_027_44CB:
    ld hl, $0060                                  ; $44CB: $21 $60 $00
    call Call_000_30FF                            ; $44CE: $CD $FF $30
    jp nc, Jump_027_4504                          ; $44D1: $D2 $04 $45

    ld a, $18                                     ; $44D4: $3E $18
    ld h, $02                                     ; $44D6: $26 $02
    call Call_000_2CBA                            ; $44D8: $CD $BA $2C
    ld hl, $050F                                  ; $44DB: $21 $0F $05
    ld a, $00                                     ; $44DE: $3E $00
    call Call_000_34A2                            ; $44E0: $CD $A2 $34
    jp Jump_027_4507                              ; $44E3: $C3 $07 $45


Jump_027_44E6:
    call Call_000_2CA9                            ; $44E6: $CD $A9 $2C
    jp nc, Jump_027_4504                          ; $44E9: $D2 $04 $45

    xor a                                         ; $44EC: $AF
    ld [$C2E2], a                                 ; $44ED: $EA $E2 $C2
    ld a, $68                                     ; $44F0: $3E $68
    call Call_000_2E6E                            ; $44F2: $CD $6E $2E
    ld hl, $FE00                                  ; $44F5: $21 $00 $FE
    call Call_000_2FEB                            ; $44F8: $CD $EB $2F
    ld hl, $FB00                                  ; $44FB: $21 $00 $FB
    call Call_000_305D                            ; $44FE: $CD $5D $30
    jp Jump_027_4507                              ; $4501: $C3 $07 $45


Jump_027_4504:
    call Call_000_2E25                            ; $4504: $CD $25 $2E

Jump_027_4507:
    ret                                           ; $4507: $C9


    call Call_000_2EE0                            ; $4508: $CD $E0 $2E
    call Call_000_3517                            ; $450B: $CD $17 $35
    jp c, Jump_027_482F                           ; $450E: $DA $2F $48

    ld hl, $0018                                  ; $4511: $21 $18 $00
    add hl, de                                    ; $4514: $19
    ld a, [hl]                                    ; $4515: $7E
    cp $00                                        ; $4516: $FE $00
    jp z, Jump_027_4582                           ; $4518: $CA $82 $45

    cp $04                                        ; $451B: $FE $04
    jp z, Jump_027_459C                           ; $451D: $CA $9C $45

    cp $08                                        ; $4520: $FE $08
    jp z, Jump_027_45B9                           ; $4522: $CA $B9 $45

    cp $0C                                        ; $4525: $FE $0C
    jp z, Jump_027_45CE                           ; $4527: $CA $CE $45

    cp $10                                        ; $452A: $FE $10
    jp z, Jump_027_45F2                           ; $452C: $CA $F2 $45

    cp $14                                        ; $452F: $FE $14
    jp z, Jump_027_4632                           ; $4531: $CA $32 $46

    cp $18                                        ; $4534: $FE $18
    jp z, Jump_027_4650                           ; $4536: $CA $50 $46

    cp $1C                                        ; $4539: $FE $1C
    jp z, Jump_027_466A                           ; $453B: $CA $6A $46

    cp $20                                        ; $453E: $FE $20
    jp z, Jump_027_4687                           ; $4540: $CA $87 $46

    cp $24                                        ; $4543: $FE $24
    jp z, Jump_027_469C                           ; $4545: $CA $9C $46

    cp $28                                        ; $4548: $FE $28
    jp z, Jump_027_46C0                           ; $454A: $CA $C0 $46

    cp $2C                                        ; $454D: $FE $2C
    jp z, Jump_027_4700                           ; $454F: $CA $00 $47

    cp $30                                        ; $4552: $FE $30
    jp z, Jump_027_4724                           ; $4554: $CA $24 $47

    cp $34                                        ; $4557: $FE $34
    jp z, Jump_027_4752                           ; $4559: $CA $52 $47

    cp $38                                        ; $455C: $FE $38
    jp z, Jump_027_4783                           ; $455E: $CA $83 $47

    cp $3C                                        ; $4561: $FE $3C
    jp z, Jump_027_479E                           ; $4563: $CA $9E $47

    cp $40                                        ; $4566: $FE $40
    jp z, Jump_027_47B9                           ; $4568: $CA $B9 $47

    cp $44                                        ; $456B: $FE $44
    jp z, Jump_027_47D7                           ; $456D: $CA $D7 $47

    cp $48                                        ; $4570: $FE $48
    jp z, Jump_027_47E3                           ; $4572: $CA $E3 $47

    cp $4C                                        ; $4575: $FE $4C
    jp z, Jump_027_4806                           ; $4577: $CA $06 $48

    cp $50                                        ; $457A: $FE $50
    jp z, Jump_027_481C                           ; $457C: $CA $1C $48

    jp Jump_027_482C                              ; $457F: $C3 $2C $48


Jump_027_4582:
    call Call_000_2CA9                            ; $4582: $CD $A9 $2C
    jp nc, Jump_027_482C                          ; $4585: $D2 $2C $48

    inc hl                                        ; $4588: $23
    ld [hl], $07                                  ; $4589: $36 $07
    ld hl, $0519                                  ; $458B: $21 $19 $05
    ld a, $00                                     ; $458E: $3E $00
    call Call_000_34B3                            ; $4590: $CD $B3 $34
    ld hl, $E800                                  ; $4593: $21 $00 $E8
    call Call_000_3496                            ; $4596: $CD $96 $34
    jp Jump_027_482C                              ; $4599: $C3 $2C $48


Jump_027_459C:
    call Call_000_2CA9                            ; $459C: $CD $A9 $2C
    jp nc, Jump_027_482C                          ; $459F: $D2 $2C $48

    inc hl                                        ; $45A2: $23
    ld [hl], $07                                  ; $45A3: $36 $07
    ld hl, $0213                                  ; $45A5: $21 $13 $02
    ld a, $90                                     ; $45A8: $3E $90
    call Call_000_34B3                            ; $45AA: $CD $B3 $34
    jp Jump_027_482C                              ; $45AD: $C3 $2C $48


    ld hl, $001D                                  ; $45B0: $21 $1D $00
    add hl, de                                    ; $45B3: $19
    ld [hl], $3C                                  ; $45B4: $36 $3C
    jp Jump_027_482C                              ; $45B6: $C3 $2C $48


Jump_027_45B9:
    call Call_000_2CA9                            ; $45B9: $CD $A9 $2C
    jp nc, Jump_027_482C                          ; $45BC: $D2 $2C $48

    inc hl                                        ; $45BF: $23
    ld [hl], $32                                  ; $45C0: $36 $32
    jp Jump_027_482C                              ; $45C2: $C3 $2C $48


    ld hl, $001D                                  ; $45C5: $21 $1D $00
    add hl, de                                    ; $45C8: $19
    ld [hl], $0A                                  ; $45C9: $36 $0A
    jp Jump_027_482C                              ; $45CB: $C3 $2C $48


Jump_027_45CE:
    call Call_000_2CA9                            ; $45CE: $CD $A9 $2C
    jp nc, Jump_027_482C                          ; $45D1: $D2 $2C $48

    inc hl                                        ; $45D4: $23
    ld [hl], $FF                                  ; $45D5: $36 $FF
    ld hl, $051B                                  ; $45D7: $21 $1B $05
    ld a, $00                                     ; $45DA: $3E $00
    call Call_000_34B3                            ; $45DC: $CD $B3 $34
    ld hl, $F000                                  ; $45DF: $21 $00 $F0
    call Call_000_3496                            ; $45E2: $CD $96 $34
    jp Jump_027_482C                              ; $45E5: $C3 $2C $48


    xor a                                         ; $45E8: $AF
    ld [$C2E2], a                                 ; $45E9: $EA $E2 $C2
    call Call_000_2DB6                            ; $45EC: $CD $B6 $2D
    jp Jump_027_482F                              ; $45EF: $C3 $2F $48


Jump_027_45F2:
    call Call_000_2CA2                            ; $45F2: $CD $A2 $2C
    jr z, jr_027_4608                             ; $45F5: $28 $11

    ld a, $B6                                     ; $45F7: $3E $B6
    call Call_000_1360                            ; $45F9: $CD $60 $13
    ld hl, $0000                                  ; $45FC: $21 $00 $00
    call Call_000_2FEB                            ; $45FF: $CD $EB $2F
    ld hl, $F800                                  ; $4602: $21 $00 $F8
    call Call_000_305D                            ; $4605: $CD $5D $30

jr_027_4608:
    call Call_000_3262                            ; $4608: $CD $62 $32
    jp nc, Jump_027_462F                          ; $460B: $D2 $2F $46

    jp nz, Jump_027_462F                          ; $460E: $C2 $2F $46

    ld hl, $051B                                  ; $4611: $21 $1B $05
    ld a, $00                                     ; $4614: $3E $00
    call Call_000_34B3                            ; $4616: $CD $B3 $34
    ld hl, $F4FF                                  ; $4619: $21 $FF $F4
    call Call_000_3496                            ; $461C: $CD $96 $34
    ld a, $14                                     ; $461F: $3E $14
    ld h, $FF                                     ; $4621: $26 $FF
    call Call_000_2D19                            ; $4623: $CD $19 $2D
    ld hl, $0000                                  ; $4626: $21 $00 $00
    call Call_000_305D                            ; $4629: $CD $5D $30
    jp Jump_027_482F                              ; $462C: $C3 $2F $48


Jump_027_462F:
    jp Jump_027_4635                              ; $462F: $C3 $35 $46


Jump_027_4632:
    jp Jump_027_4635                              ; $4632: $C3 $35 $46


Jump_027_4635:
    ld hl, $0060                                  ; $4635: $21 $60 $00
    call Call_000_30FF                            ; $4638: $CD $FF $30
    jp nc, Jump_027_482C                          ; $463B: $D2 $2C $48

    ld a, $18                                     ; $463E: $3E $18
    ld h, $0A                                     ; $4640: $26 $0A
    call Call_000_2CBA                            ; $4642: $CD $BA $2C
    ld hl, $040F                                  ; $4645: $21 $0F $04
    ld a, $91                                     ; $4648: $3E $91
    call Call_000_34A2                            ; $464A: $CD $A2 $34
    jp Jump_027_482F                              ; $464D: $C3 $2F $48


Jump_027_4650:
    call Call_000_2CA9                            ; $4650: $CD $A9 $2C
    jp nc, Jump_027_482C                          ; $4653: $D2 $2C $48

    inc hl                                        ; $4656: $23
    ld [hl], $14                                  ; $4657: $36 $14
    ld hl, $0519                                  ; $4659: $21 $19 $05
    ld a, $00                                     ; $465C: $3E $00
    call Call_000_34B3                            ; $465E: $CD $B3 $34
    ld hl, $E800                                  ; $4661: $21 $00 $E8
    call Call_000_3496                            ; $4664: $CD $96 $34
    jp Jump_027_482C                              ; $4667: $C3 $2C $48


Jump_027_466A:
    call Call_000_2CA9                            ; $466A: $CD $A9 $2C
    jp nc, Jump_027_482C                          ; $466D: $D2 $2C $48

    inc hl                                        ; $4670: $23
    ld [hl], $07                                  ; $4671: $36 $07
    ld hl, $0213                                  ; $4673: $21 $13 $02
    ld a, $90                                     ; $4676: $3E $90
    call Call_000_34B3                            ; $4678: $CD $B3 $34
    jp Jump_027_482C                              ; $467B: $C3 $2C $48


    ld hl, $001D                                  ; $467E: $21 $1D $00
    add hl, de                                    ; $4681: $19
    ld [hl], $3C                                  ; $4682: $36 $3C
    jp Jump_027_482C                              ; $4684: $C3 $2C $48


Jump_027_4687:
    call Call_000_2CA9                            ; $4687: $CD $A9 $2C
    jp nc, Jump_027_482C                          ; $468A: $D2 $2C $48

    inc hl                                        ; $468D: $23
    ld [hl], $32                                  ; $468E: $36 $32
    jp Jump_027_482C                              ; $4690: $C3 $2C $48


    ld hl, $001D                                  ; $4693: $21 $1D $00
    add hl, de                                    ; $4696: $19
    ld [hl], $0A                                  ; $4697: $36 $0A
    jp Jump_027_482C                              ; $4699: $C3 $2C $48


Jump_027_469C:
    call Call_000_2CA9                            ; $469C: $CD $A9 $2C
    jp nc, Jump_027_482C                          ; $469F: $D2 $2C $48

    inc hl                                        ; $46A2: $23
    ld [hl], $FF                                  ; $46A3: $36 $FF
    ld hl, $051C                                  ; $46A5: $21 $1C $05
    ld a, $00                                     ; $46A8: $3E $00
    call Call_000_34B3                            ; $46AA: $CD $B3 $34
    ld hl, $FEE8                                  ; $46AD: $21 $E8 $FE
    call Call_000_3496                            ; $46B0: $CD $96 $34
    jp Jump_027_482C                              ; $46B3: $C3 $2C $48


    xor a                                         ; $46B6: $AF
    ld [$C2E2], a                                 ; $46B7: $EA $E2 $C2
    call Call_000_2DB6                            ; $46BA: $CD $B6 $2D
    jp Jump_027_482F                              ; $46BD: $C3 $2F $48


Jump_027_46C0:
    call Call_000_2CA2                            ; $46C0: $CD $A2 $2C
    jr z, jr_027_46D6                             ; $46C3: $28 $11

    ld a, $B6                                     ; $46C5: $3E $B6
    call Call_000_1360                            ; $46C7: $CD $60 $13
    ld hl, $0000                                  ; $46CA: $21 $00 $00
    call Call_000_2FEB                            ; $46CD: $CD $EB $2F
    ld hl, $F800                                  ; $46D0: $21 $00 $F8
    call Call_000_305D                            ; $46D3: $CD $5D $30

jr_027_46D6:
    call Call_000_3262                            ; $46D6: $CD $62 $32
    jp nc, Jump_027_46FD                          ; $46D9: $D2 $FD $46

    jp nz, Jump_027_46FD                          ; $46DC: $C2 $FD $46

    ld hl, $051C                                  ; $46DF: $21 $1C $05
    ld a, $00                                     ; $46E2: $3E $00
    call Call_000_34B3                            ; $46E4: $CD $B3 $34
    ld hl, $FEE8                                  ; $46E7: $21 $E8 $FE
    call Call_000_3496                            ; $46EA: $CD $96 $34
    ld a, $2C                                     ; $46ED: $3E $2C
    ld h, $FF                                     ; $46EF: $26 $FF
    call Call_000_2D19                            ; $46F1: $CD $19 $2D
    ld hl, $0000                                  ; $46F4: $21 $00 $00
    call Call_000_305D                            ; $46F7: $CD $5D $30
    jp Jump_027_482F                              ; $46FA: $C3 $2F $48


Jump_027_46FD:
    jp Jump_027_4703                              ; $46FD: $C3 $03 $47


Jump_027_4700:
    jp Jump_027_4703                              ; $4700: $C3 $03 $47


Jump_027_4703:
    ld hl, $0060                                  ; $4703: $21 $60 $00
    call Call_000_30FF                            ; $4706: $CD $FF $30
    jp nc, Jump_027_482C                          ; $4709: $D2 $2C $48

    ld a, $30                                     ; $470C: $3E $30
    ld h, $1E                                     ; $470E: $26 $1E
    call Call_000_2CBA                            ; $4710: $CD $BA $2C
    ld hl, $051C                                  ; $4713: $21 $1C $05
    ld a, $00                                     ; $4716: $3E $00
    call Call_000_34B3                            ; $4718: $CD $B3 $34
    ld hl, $FEF0                                  ; $471B: $21 $F0 $FE
    call Call_000_3496                            ; $471E: $CD $96 $34
    jp Jump_027_482F                              ; $4721: $C3 $2F $48


Jump_027_4724:
    call Call_000_2CA2                            ; $4724: $CD $A2 $2C
    jr z, jr_027_4738                             ; $4727: $28 $0F

    ld a, $07                                     ; $4729: $3E $07
    call Call_000_3963                            ; $472B: $CD $63 $39
    ld a, $0E                                     ; $472E: $3E $0E
    call Call_000_1360                            ; $4730: $CD $60 $13
    ld a, $04                                     ; $4733: $3E $04
    call Call_000_3A8E                            ; $4735: $CD $8E $3A

jr_027_4738:
    call Call_000_2CA9                            ; $4738: $CD $A9 $2C
    jp nc, Jump_027_482C                          ; $473B: $D2 $2C $48

    inc hl                                        ; $473E: $23
    ld [hl], $FF                                  ; $473F: $36 $FF
    ld hl, $051C                                  ; $4741: $21 $1C $05
    ld a, $00                                     ; $4744: $3E $00
    call Call_000_34B3                            ; $4746: $CD $B3 $34
    ld hl, $FEE8                                  ; $4749: $21 $E8 $FE
    call Call_000_3496                            ; $474C: $CD $96 $34
    jp Jump_027_482C                              ; $474F: $C3 $2C $48


Jump_027_4752:
    call Call_000_2CA2                            ; $4752: $CD $A2 $2C
    jr z, jr_027_4768                             ; $4755: $28 $11

    ld a, $B6                                     ; $4757: $3E $B6
    call Call_000_1360                            ; $4759: $CD $60 $13
    ld hl, $0000                                  ; $475C: $21 $00 $00
    call Call_000_2FEB                            ; $475F: $CD $EB $2F
    ld hl, $F700                                  ; $4762: $21 $00 $F7
    call Call_000_305D                            ; $4765: $CD $5D $30

jr_027_4768:
    ld a, $FE                                     ; $4768: $3E $FE
    ld h, $FF                                     ; $476A: $26 $FF
    call Call_000_2D33                            ; $476C: $CD $33 $2D
    jp nc, Jump_027_47BC                          ; $476F: $D2 $BC $47

    ld hl, $051C                                  ; $4772: $21 $1C $05
    ld a, $00                                     ; $4775: $3E $00
    call Call_000_34B3                            ; $4777: $CD $B3 $34
    ld hl, $08F8                                  ; $477A: $21 $F8 $08
    call Call_000_3496                            ; $477D: $CD $96 $34
    jp Jump_027_47BC                              ; $4780: $C3 $BC $47


Jump_027_4783:
    ld a, $00                                     ; $4783: $3E $00
    ld h, $FF                                     ; $4785: $26 $FF
    call Call_000_2D33                            ; $4787: $CD $33 $2D
    jp nc, Jump_027_47BC                          ; $478A: $D2 $BC $47

    ld hl, $051C                                  ; $478D: $21 $1C $05
    ld a, $00                                     ; $4790: $3E $00
    call Call_000_34B3                            ; $4792: $CD $B3 $34
    ld hl, $FE04                                  ; $4795: $21 $04 $FE
    call Call_000_3496                            ; $4798: $CD $96 $34
    jp Jump_027_47BC                              ; $479B: $C3 $BC $47


Jump_027_479E:
    ld a, $FF                                     ; $479E: $3E $FF
    ld h, $FF                                     ; $47A0: $26 $FF
    call Call_000_2D33                            ; $47A2: $CD $33 $2D
    jp nc, Jump_027_47BC                          ; $47A5: $D2 $BC $47

    ld hl, $051C                                  ; $47A8: $21 $1C $05
    ld a, $00                                     ; $47AB: $3E $00
    call Call_000_34B3                            ; $47AD: $CD $B3 $34
    ld hl, $FEFF                                  ; $47B0: $21 $FF $FE
    call Call_000_3496                            ; $47B3: $CD $96 $34
    jp Jump_027_47BC                              ; $47B6: $C3 $BC $47


Jump_027_47B9:
    jp Jump_027_47BC                              ; $47B9: $C3 $BC $47


Jump_027_47BC:
    ld hl, $0060                                  ; $47BC: $21 $60 $00
    call Call_000_30FF                            ; $47BF: $CD $FF $30
    jp nc, Jump_027_482C                          ; $47C2: $D2 $2C $48

    ld a, $44                                     ; $47C5: $3E $44
    ld h, $14                                     ; $47C7: $26 $14
    call Call_000_2CBA                            ; $47C9: $CD $BA $2C
    ld hl, $0A0F                                  ; $47CC: $21 $0F $0A
    ld a, $01                                     ; $47CF: $3E $01
    call Call_000_34A2                            ; $47D1: $CD $A2 $34
    jp Jump_027_482F                              ; $47D4: $C3 $2F $48


Jump_027_47D7:
    call Call_000_2CA9                            ; $47D7: $CD $A9 $2C
    jp nc, Jump_027_482C                          ; $47DA: $D2 $2C $48

    inc hl                                        ; $47DD: $23
    ld [hl], $FF                                  ; $47DE: $36 $FF
    jp Jump_027_482C                              ; $47E0: $C3 $2C $48


Jump_027_47E3:
    call Call_000_2CA2                            ; $47E3: $CD $A2 $2C
    jr z, jr_027_47F9                             ; $47E6: $28 $11

    ld a, $B6                                     ; $47E8: $3E $B6
    call Call_000_1360                            ; $47EA: $CD $60 $13
    ld hl, $FE00                                  ; $47ED: $21 $00 $FE
    call Call_000_2FEB                            ; $47F0: $CD $EB $2F
    ld hl, $FA00                                  ; $47F3: $21 $00 $FA
    call Call_000_305D                            ; $47F6: $CD $5D $30

jr_027_47F9:
    ld a, $FE                                     ; $47F9: $3E $FE
    ld h, $FF                                     ; $47FB: $26 $FF
    call Call_000_2D33                            ; $47FD: $CD $33 $2D
    jp nc, Jump_027_4809                          ; $4800: $D2 $09 $48

    jp Jump_027_4809                              ; $4803: $C3 $09 $48


Jump_027_4806:
    jp Jump_027_4809                              ; $4806: $C3 $09 $48


Jump_027_4809:
    ld hl, $0060                                  ; $4809: $21 $60 $00
    call Call_000_30FF                            ; $480C: $CD $FF $30
    jp nc, Jump_027_482C                          ; $480F: $D2 $2C $48

    ld a, $50                                     ; $4812: $3E $50
    ld h, $06                                     ; $4814: $26 $06
    call Call_000_2CBA                            ; $4816: $CD $BA $2C
    jp Jump_027_482F                              ; $4819: $C3 $2F $48


Jump_027_481C:
    call Call_000_2CA9                            ; $481C: $CD $A9 $2C
    jp nc, Jump_027_482C                          ; $481F: $D2 $2C $48

    xor a                                         ; $4822: $AF
    ld [$C2E2], a                                 ; $4823: $EA $E2 $C2
    call Call_000_2DB6                            ; $4826: $CD $B6 $2D
    jp Jump_027_482F                              ; $4829: $C3 $2F $48


Jump_027_482C:
    call Call_000_2E25                            ; $482C: $CD $25 $2E

Jump_027_482F:
    ret                                           ; $482F: $C9


    call Call_000_2EE0                            ; $4830: $CD $E0 $2E
    call Call_000_3517                            ; $4833: $CD $17 $35
    jp c, Jump_027_49A3                           ; $4836: $DA $A3 $49

    ld hl, $0018                                  ; $4839: $21 $18 $00
    add hl, de                                    ; $483C: $19
    ld a, [hl]                                    ; $483D: $7E
    cp $00                                        ; $483E: $FE $00
    jp z, Jump_027_4873                           ; $4840: $CA $73 $48

    cp $10                                        ; $4843: $FE $10
    jp z, Jump_027_489D                           ; $4845: $CA $9D $48

    cp $14                                        ; $4848: $FE $14
    jp z, Jump_027_48AF                           ; $484A: $CA $AF $48

    cp $18                                        ; $484D: $FE $18
    jp z, Jump_027_48C0                           ; $484F: $CA $C0 $48

    cp $1C                                        ; $4852: $FE $1C
    jp z, Jump_027_48E4                           ; $4854: $CA $E4 $48

    cp $20                                        ; $4857: $FE $20
    jp z, Jump_027_4926                           ; $4859: $CA $26 $49

    cp $24                                        ; $485C: $FE $24
    jp z, Jump_027_495B                           ; $485E: $CA $5B $49

    cp $38                                        ; $4861: $FE $38
    jp z, Jump_027_497D                           ; $4863: $CA $7D $49

    cp $3C                                        ; $4866: $FE $3C
    jp z, Jump_027_4989                           ; $4868: $CA $89 $49

    cp $40                                        ; $486B: $FE $40
    jp z, Jump_027_4995                           ; $486D: $CA $95 $49

    jp Jump_027_49A0                              ; $4870: $C3 $A0 $49


Jump_027_4873:
    call Call_000_2CA2                            ; $4873: $CD $A2 $2C
    jp z, Jump_027_487F                           ; $4876: $CA $7F $48

    ld hl, $0031                                  ; $4879: $21 $31 $00
    add hl, bc                                    ; $487C: $09
    ld [hl], $01                                  ; $487D: $36 $01

Jump_027_487F:
    call Call_000_2CA9                            ; $487F: $CD $A9 $2C
    jp nc, Jump_027_49A0                          ; $4882: $D2 $A0 $49

    inc hl                                        ; $4885: $23
    ld [hl], $00                                  ; $4886: $36 $00
    ld hl, $020C                                  ; $4888: $21 $0C $02
    ld a, $10                                     ; $488B: $3E $10
    call Call_000_34B3                            ; $488D: $CD $B3 $34
    ld hl, $0021                                  ; $4890: $21 $21 $00
    add hl, bc                                    ; $4893: $09
    res 7, [hl]                                   ; $4894: $CB $BE
    set 3, [hl]                                   ; $4896: $CB $DE
    res 5, [hl]                                   ; $4898: $CB $AE
    jp Jump_027_49A0                              ; $489A: $C3 $A0 $49


Jump_027_489D:
    call Call_000_2CA9                            ; $489D: $CD $A9 $2C
    jp nc, Jump_027_49A0                          ; $48A0: $D2 $A0 $49

    inc hl                                        ; $48A3: $23
    ld [hl], $00                                  ; $48A4: $36 $00
    ld hl, $009C                                  ; $48A6: $21 $9C $00
    add hl, bc                                    ; $48A9: $09
    ld [hl], $03                                  ; $48AA: $36 $03
    jp Jump_027_49A0                              ; $48AC: $C3 $A0 $49


Jump_027_48AF:
    call Call_000_2CA2                            ; $48AF: $CD $A2 $2C
    jp z, Jump_027_48C0                           ; $48B2: $CA $C0 $48

    ld a, $11                                     ; $48B5: $3E $11
    call Call_000_1360                            ; $48B7: $CD $60 $13
    ld hl, $0600                                  ; $48BA: $21 $00 $06
    call Call_000_2FEB                            ; $48BD: $CD $EB $2F

Jump_027_48C0:
    ld hl, $0020                                  ; $48C0: $21 $20 $00
    call Call_000_30B0                            ; $48C3: $CD $B0 $30
    call Call_000_3262                            ; $48C6: $CD $62 $32
    jp nc, Jump_027_48E1                          ; $48C9: $D2 $E1 $48

    jp nz, Jump_027_48CF                          ; $48CC: $C2 $CF $48

Jump_027_48CF:
    ld hl, $0203                                  ; $48CF: $21 $03 $02
    ld a, $12                                     ; $48D2: $3E $12
    call Call_000_34B3                            ; $48D4: $CD $B3 $34
    ld a, $20                                     ; $48D7: $3E $20
    ld h, $0A                                     ; $48D9: $26 $0A
    call Call_000_2D19                            ; $48DB: $CD $19 $2D
    jp Jump_027_49A3                              ; $48DE: $C3 $A3 $49


Jump_027_48E1:
    jp Jump_027_49A0                              ; $48E1: $C3 $A0 $49


Jump_027_48E4:
    ld hl, $0020                                  ; $48E4: $21 $20 $00
    call Call_000_30B0                            ; $48E7: $CD $B0 $30
    call Call_000_3262                            ; $48EA: $CD $62 $32
    jp nc, Jump_027_4905                          ; $48ED: $D2 $05 $49

    jp nz, Jump_027_48F3                          ; $48F0: $C2 $F3 $48

Jump_027_48F3:
    ld hl, $0203                                  ; $48F3: $21 $03 $02
    ld a, $12                                     ; $48F6: $3E $12
    call Call_000_34B3                            ; $48F8: $CD $B3 $34
    ld a, $20                                     ; $48FB: $3E $20
    ld h, $0A                                     ; $48FD: $26 $0A
    call Call_000_2D19                            ; $48FF: $CD $19 $2D
    jp Jump_027_49A3                              ; $4902: $C3 $A3 $49


Jump_027_4905:
    call Call_000_2CA9                            ; $4905: $CD $A9 $2C
    jp nc, Jump_027_49A0                          ; $4908: $D2 $A0 $49

    ld hl, $009C                                  ; $490B: $21 $9C $00
    add hl, bc                                    ; $490E: $09
    dec [hl]                                      ; $490F: $35
    jr nz, jr_027_491D                            ; $4910: $20 $0B

    ld hl, $0203                                  ; $4912: $21 $03 $02
    ld a, $12                                     ; $4915: $3E $12
    call Call_000_34B3                            ; $4917: $CD $B3 $34
    jp Jump_027_49A0                              ; $491A: $C3 $A0 $49


jr_027_491D:
    ld hl, $0014                                  ; $491D: $21 $14 $00
    add hl, de                                    ; $4920: $19
    ld [hl], $14                                  ; $4921: $36 $14
    jp Jump_027_49A0                              ; $4923: $C3 $A0 $49


Jump_027_4926:
    call Call_000_2CA2                            ; $4926: $CD $A2 $2C
    jp z, Jump_027_4944                           ; $4929: $CA $44 $49

    ld a, $05                                     ; $492C: $3E $05
    call Call_000_3963                            ; $492E: $CD $63 $39
    ld a, $14                                     ; $4931: $3E $14
    call Call_000_1360                            ; $4933: $CD $60 $13
    ld hl, $0400                                  ; $4936: $21 $00 $04
    call Call_000_2FEB                            ; $4939: $CD $EB $2F
    ld hl, $0021                                  ; $493C: $21 $21 $00
    add hl, bc                                    ; $493F: $09
    res 3, [hl]                                   ; $4940: $CB $9E
    res 5, [hl]                                   ; $4942: $CB $AE

Jump_027_4944:
    ld hl, $0040                                  ; $4944: $21 $40 $00
    call Call_000_30B0                            ; $4947: $CD $B0 $30
    call Call_000_2CA9                            ; $494A: $CD $A9 $2C
    jp nc, Jump_027_49A0                          ; $494D: $D2 $A0 $49

    ld hl, $260A                                  ; $4950: $21 $0A $26
    ld a, $2F                                     ; $4953: $3E $2F
    call Call_000_34B3                            ; $4955: $CD $B3 $34
    jp Jump_027_49A0                              ; $4958: $C3 $A0 $49


Jump_027_495B:
    call Call_000_2CA2                            ; $495B: $CD $A2 $2C
    jp z, Jump_027_496B                           ; $495E: $CA $6B $49

    ld a, $07                                     ; $4961: $3E $07
    call Call_000_3963                            ; $4963: $CD $63 $39
    ld a, $14                                     ; $4966: $3E $14
    call Call_000_1360                            ; $4968: $CD $60 $13

Jump_027_496B:
    ld hl, $0040                                  ; $496B: $21 $40 $00
    call Call_000_30B0                            ; $496E: $CD $B0 $30
    call Call_000_2CA9                            ; $4971: $CD $A9 $2C
    jp nc, Jump_027_49A0                          ; $4974: $D2 $A0 $49

    inc hl                                        ; $4977: $23
    ld [hl], $00                                  ; $4978: $36 $00
    jp Jump_027_49A0                              ; $497A: $C3 $A0 $49


Jump_027_497D:
    call Call_000_2CA9                            ; $497D: $CD $A9 $2C
    jp nc, Jump_027_49A0                          ; $4980: $D2 $A0 $49

    inc hl                                        ; $4983: $23
    ld [hl], $1E                                  ; $4984: $36 $1E
    jp Jump_027_49A0                              ; $4986: $C3 $A0 $49


Jump_027_4989:
    call Call_000_2CA9                            ; $4989: $CD $A9 $2C
    jp nc, Jump_027_49A0                          ; $498C: $D2 $A0 $49

    inc hl                                        ; $498F: $23
    ld [hl], $06                                  ; $4990: $36 $06
    jp Jump_027_49A0                              ; $4992: $C3 $A0 $49


Jump_027_4995:
    call Call_000_2CA9                            ; $4995: $CD $A9 $2C
    jp nc, Jump_027_49A0                          ; $4998: $D2 $A0 $49

    call Call_000_2DB6                            ; $499B: $CD $B6 $2D
    jr jr_027_49A3                                ; $499E: $18 $03

Jump_027_49A0:
    call Call_000_2E25                            ; $49A0: $CD $25 $2E

Jump_027_49A3:
jr_027_49A3:
    ret                                           ; $49A3: $C9


Call_027_49A4:
    ld a, $14                                     ; $49A4: $3E $14
    call Call_000_1360                            ; $49A6: $CD $60 $13
    push bc                                       ; $49A9: $C5
    push de                                       ; $49AA: $D5
    ld hl, $0030                                  ; $49AB: $21 $30 $00
    add hl, bc                                    ; $49AE: $09
    ld a, [hl]                                    ; $49AF: $7E
    or a                                          ; $49B0: $B7
    jr nz, jr_027_49B6                            ; $49B1: $20 $03

    xor a                                         ; $49B3: $AF
    jr jr_027_49B7                                ; $49B4: $18 $01

jr_027_49B6:
    scf                                           ; $49B6: $37

jr_027_49B7:
    ld hl, $0022                                  ; $49B7: $21 $22 $00
    push af                                       ; $49BA: $F5
    add hl, bc                                    ; $49BB: $09
    pop af                                        ; $49BC: $F1
    ld a, [hl]                                    ; $49BD: $7E
    push af                                       ; $49BE: $F5
    call Call_000_25D1                            ; $49BF: $CD $D1 $25
    ld hl, $0021                                  ; $49C2: $21 $21 $00
    add hl, de                                    ; $49C5: $19
    ld [hl], $24                                  ; $49C6: $36 $24
    inc hl                                        ; $49C8: $23
    ld [hl], $A2                                  ; $49C9: $36 $A2
    inc hl                                        ; $49CB: $23
    ld [hl], $49                                  ; $49CC: $36 $49
    ld hl, $0011                                  ; $49CE: $21 $11 $00
    add hl, de                                    ; $49D1: $19
    ld [hl], $02                                  ; $49D2: $36 $02
    inc hl                                        ; $49D4: $23
    ld [hl], $5A                                  ; $49D5: $36 $5A
    inc hl                                        ; $49D7: $23
    ld [hl], $64                                  ; $49D8: $36 $64
    inc hl                                        ; $49DA: $23
    ld [hl], $00                                  ; $49DB: $36 $00
    ld hl, $001C                                  ; $49DD: $21 $1C $00
    add hl, de                                    ; $49E0: $19
    ld [hl], $00                                  ; $49E1: $36 $00
    inc hl                                        ; $49E3: $23
    ld [hl], $00                                  ; $49E4: $36 $00
    ld hl, $0029                                  ; $49E6: $21 $29 $00
    add hl, de                                    ; $49E9: $19
    ld [hl], $00                                  ; $49EA: $36 $00
    call Call_000_2614                            ; $49EC: $CD $14 $26
    ld hl, $1800                                  ; $49EF: $21 $00 $18
    call Call_000_2F79                            ; $49F2: $CD $79 $2F
    ld hl, $F800                                  ; $49F5: $21 $00 $F8
    call Call_000_2F42                            ; $49F8: $CD $42 $2F
    pop af                                        ; $49FB: $F1
    jr c, jr_027_4A0C                             ; $49FC: $38 $0E

    bit 1, a                                      ; $49FE: $CB $4F
    jr nz, jr_027_4A07                            ; $4A00: $20 $05

    ld hl, $0200                                  ; $4A02: $21 $00 $02
    jr jr_027_4A0F                                ; $4A05: $18 $08

jr_027_4A07:
    ld hl, $0300                                  ; $4A07: $21 $00 $03
    jr jr_027_4A0F                                ; $4A0A: $18 $03

jr_027_4A0C:
    ld hl, $0400                                  ; $4A0C: $21 $00 $04

jr_027_4A0F:
    call Call_000_2FEB                            ; $4A0F: $CD $EB $2F
    pop de                                        ; $4A12: $D1
    pop bc                                        ; $4A13: $C1
    ret                                           ; $4A14: $C9


    call Call_000_31B6                            ; $4A15: $CD $B6 $31
    jp c, Jump_027_4B21                           ; $4A18: $DA $21 $4B

    jp z, Jump_027_4A2A                           ; $4A1B: $CA $2A $4A

    call Call_000_3A2A                            ; $4A1E: $CD $2A $3A
    jp c, Jump_027_4A9C                           ; $4A21: $DA $9C $4A

    jp z, Jump_027_4AD2                           ; $4A24: $CA $D2 $4A

    jp Jump_027_4B21                              ; $4A27: $C3 $21 $4B


Jump_027_4A2A:
    call Call_000_3A2A                            ; $4A2A: $CD $2A $3A
    jp c, Jump_027_4AE3                           ; $4A2D: $DA $E3 $4A

    jp z, Jump_027_4B08                           ; $4A30: $CA $08 $4B

    call Call_000_39D3                            ; $4A33: $CD $D3 $39
    jp nc, Jump_027_4B21                          ; $4A36: $D2 $21 $4B

    jp z, Jump_027_4A42                           ; $4A39: $CA $42 $4A

    jp nz, Jump_027_4A6E                          ; $4A3C: $C2 $6E $4A

    jp Jump_027_4B21                              ; $4A3F: $C3 $21 $4B


Jump_027_4A42:
    call Call_000_3209                            ; $4A42: $CD $09 $32
    jr c, jr_027_4A50                             ; $4A45: $38 $09

    ld hl, $3AD4                                  ; $4A47: $21 $D4 $3A
    call Call_000_2B78                            ; $4A4A: $CD $78 $2B
    jp c, Jump_027_4AE3                           ; $4A4D: $DA $E3 $4A

jr_027_4A50:
    ld hl, $3B14                                  ; $4A50: $21 $14 $3B
    call Call_000_2B78                            ; $4A53: $CD $78 $2B
    jp c, Jump_027_4AD2                           ; $4A56: $DA $D2 $4A

    ld hl, $3B2A                                  ; $4A59: $21 $2A $3B
    call Call_000_2B78                            ; $4A5C: $CD $78 $2B
    jp c, Jump_027_4AB3                           ; $4A5F: $DA $B3 $4A

    ld hl, $3AB9                                  ; $4A62: $21 $B9 $3A
    call Call_000_2B78                            ; $4A65: $CD $78 $2B
    jp c, Jump_027_4A91                           ; $4A68: $DA $91 $4A

    jp Jump_027_4B21                              ; $4A6B: $C3 $21 $4B


Jump_027_4A6E:
    call Call_000_3209                            ; $4A6E: $CD $09 $32
    jp c, Jump_027_4A85                           ; $4A71: $DA $85 $4A

    cp $01                                        ; $4A74: $FE $01
    jr z, jr_027_4A85                             ; $4A76: $28 $0D

    cp $02                                        ; $4A78: $FE $02
    jr z, jr_027_4A7C                             ; $4A7A: $28 $00

jr_027_4A7C:
    ld hl, $3AE5                                  ; $4A7C: $21 $E5 $3A
    call Call_000_2B78                            ; $4A7F: $CD $78 $2B
    jp c, Jump_027_4B08                           ; $4A82: $DA $08 $4B

Jump_027_4A85:
jr_027_4A85:
    ld hl, $3AC2                                  ; $4A85: $21 $C2 $3A
    call Call_000_2B78                            ; $4A88: $CD $78 $2B
    jp c, Jump_027_4A9C                           ; $4A8B: $DA $9C $4A

    jp Jump_027_4B21                              ; $4A8E: $C3 $21 $4B


Jump_027_4A91:
    call Call_000_2C23                            ; $4A91: $CD $23 $2C
    ld a, $40                                     ; $4A94: $3E $40
    call Call_000_32E2                            ; $4A96: $CD $E2 $32
    jp Jump_027_4B1F                              ; $4A99: $C3 $1F $4B


Jump_027_4A9C:
    ld hl, $009C                                  ; $4A9C: $21 $9C $00
    add hl, bc                                    ; $4A9F: $09
    ld [hl], $00                                  ; $4AA0: $36 $00
    ld hl, $009D                                  ; $4AA2: $21 $9D $00
    add hl, bc                                    ; $4AA5: $09
    ld [hl], $00                                  ; $4AA6: $36 $00
    call Call_000_2C23                            ; $4AA8: $CD $23 $2C
    ld a, $42                                     ; $4AAB: $3E $42
    call Call_000_32E2                            ; $4AAD: $CD $E2 $32
    jp Jump_027_4B1F                              ; $4AB0: $C3 $1F $4B


Jump_027_4AB3:
    call Call_000_2C23                            ; $4AB3: $CD $23 $2C
    call Call_000_36DD                            ; $4AB6: $CD $DD $36
    jp nc, Jump_027_4B21                          ; $4AB9: $D2 $21 $4B

    call Call_000_0417                            ; $4ABC: $CD $17 $04
    ld a, $03                                     ; $4ABF: $3E $03
    ld [$C2E2], a                                 ; $4AC1: $EA $E2 $C2
    ld a, $44                                     ; $4AC4: $3E $44
    call Call_000_32E2                            ; $4AC6: $CD $E2 $32
    ld hl, $0021                                  ; $4AC9: $21 $21 $00
    add hl, bc                                    ; $4ACC: $09
    set 7, [hl]                                   ; $4ACD: $CB $FE
    jp Jump_027_4B1F                              ; $4ACF: $C3 $1F $4B


Jump_027_4AD2:
    call Call_000_2C23                            ; $4AD2: $CD $23 $2C
    ld a, $46                                     ; $4AD5: $3E $46
    call Call_000_32E2                            ; $4AD7: $CD $E2 $32
    ld hl, $0021                                  ; $4ADA: $21 $21 $00
    add hl, bc                                    ; $4ADD: $09
    set 7, [hl]                                   ; $4ADE: $CB $FE
    jp Jump_027_4B1F                              ; $4AE0: $C3 $1F $4B


Jump_027_4AE3:
    call Call_000_2C23                            ; $4AE3: $CD $23 $2C
    call Call_000_36DD                            ; $4AE6: $CD $DD $36
    jp nc, Jump_027_4B21                          ; $4AE9: $D2 $21 $4B

    call Call_000_0417                            ; $4AEC: $CD $17 $04
    ld a, $03                                     ; $4AEF: $3E $03
    ld [$C2E2], a                                 ; $4AF1: $EA $E2 $C2
    ld a, $4A                                     ; $4AF4: $3E $4A
    call Call_000_32E2                            ; $4AF6: $CD $E2 $32
    ld hl, $0021                                  ; $4AF9: $21 $21 $00
    add hl, bc                                    ; $4AFC: $09
    set 7, [hl]                                   ; $4AFD: $CB $FE
    ld hl, $0031                                  ; $4AFF: $21 $31 $00
    add hl, bc                                    ; $4B02: $09
    ld [hl], $01                                  ; $4B03: $36 $01
    jp Jump_027_4B1F                              ; $4B05: $C3 $1F $4B


Jump_027_4B08:
    call Call_000_2C23                            ; $4B08: $CD $23 $2C
    ld a, $26                                     ; $4B0B: $3E $26
    call Call_000_32E2                            ; $4B0D: $CD $E2 $32
    ld hl, $0021                                  ; $4B10: $21 $21 $00
    add hl, bc                                    ; $4B13: $09
    set 7, [hl]                                   ; $4B14: $CB $FE
    ld hl, $009C                                  ; $4B16: $21 $9C $00
    add hl, bc                                    ; $4B19: $09
    ld [hl], $01                                  ; $4B1A: $36 $01
    jp Jump_027_4B1F                              ; $4B1C: $C3 $1F $4B


Jump_027_4B1F:
    scf                                           ; $4B1F: $37
    ret                                           ; $4B20: $C9


Jump_027_4B21:
    or a                                          ; $4B21: $B7
    ret                                           ; $4B22: $C9


    call Call_000_2EE0                            ; $4B23: $CD $E0 $2E
    call Call_000_3517                            ; $4B26: $CD $17 $35
    jp c, Jump_027_4C58                           ; $4B29: $DA $58 $4C

    ld hl, $0018                                  ; $4B2C: $21 $18 $00
    add hl, de                                    ; $4B2F: $19
    ld a, [hl]                                    ; $4B30: $7E
    cp $00                                        ; $4B31: $FE $00
    jp z, Jump_027_4B63                           ; $4B33: $CA $63 $4B

    cp $04                                        ; $4B36: $FE $04
    jp z, Jump_027_4B6F                           ; $4B38: $CA $6F $4B

    cp $08                                        ; $4B3B: $FE $08
    jp z, Jump_027_4BBD                           ; $4B3D: $CA $BD $4B

    cp $0C                                        ; $4B40: $FE $0C
    jp z, Jump_027_4C29                           ; $4B42: $CA $29 $4C

    cp $10                                        ; $4B45: $FE $10
    jp z, Jump_027_4B89                           ; $4B47: $CA $89 $4B

    cp $14                                        ; $4B4A: $FE $14
    jp z, Jump_027_4BBD                           ; $4B4C: $CA $BD $4B

    cp $18                                        ; $4B4F: $FE $18
    jp z, Jump_027_4C29                           ; $4B51: $CA $29 $4C

    cp $1C                                        ; $4B54: $FE $1C
    jp z, Jump_027_4BA3                           ; $4B56: $CA $A3 $4B

    cp $20                                        ; $4B59: $FE $20
    jp z, Jump_027_4BF3                           ; $4B5B: $CA $F3 $4B

    cp $24                                        ; $4B5E: $FE $24
    jp z, Jump_027_4C44                           ; $4B60: $CA $44 $4C

Jump_027_4B63:
    call Call_000_2CA9                            ; $4B63: $CD $A9 $2C
    jp nc, Jump_027_4C55                          ; $4B66: $D2 $55 $4C

    inc hl                                        ; $4B69: $23
    ld [hl], $00                                  ; $4B6A: $36 $00
    jp Jump_027_4C55                              ; $4B6C: $C3 $55 $4C


Jump_027_4B6F:
    ld hl, $0010                                  ; $4B6F: $21 $10 $00
    call Call_000_30B0                            ; $4B72: $CD $B0 $30
    call Call_000_2CA9                            ; $4B75: $CD $A9 $2C
    jp nc, Jump_027_4C55                          ; $4B78: $D2 $55 $4C

    inc hl                                        ; $4B7B: $23
    ld [hl], $00                                  ; $4B7C: $36 $00
    ld hl, $0203                                  ; $4B7E: $21 $03 $02
    ld a, $11                                     ; $4B81: $3E $11
    call Call_000_34B3                            ; $4B83: $CD $B3 $34
    jp Jump_027_4C55                              ; $4B86: $C3 $55 $4C


Jump_027_4B89:
    ld hl, $0010                                  ; $4B89: $21 $10 $00
    call Call_000_30B0                            ; $4B8C: $CD $B0 $30
    call Call_000_2CA9                            ; $4B8F: $CD $A9 $2C
    jp nc, Jump_027_4C55                          ; $4B92: $D2 $55 $4C

    inc hl                                        ; $4B95: $23
    ld [hl], $00                                  ; $4B96: $36 $00
    ld hl, $0204                                  ; $4B98: $21 $04 $02
    ld a, $11                                     ; $4B9B: $3E $11
    call Call_000_34B3                            ; $4B9D: $CD $B3 $34
    jp Jump_027_4C55                              ; $4BA0: $C3 $55 $4C


Jump_027_4BA3:
    ld hl, $0010                                  ; $4BA3: $21 $10 $00
    call Call_000_30B0                            ; $4BA6: $CD $B0 $30
    call Call_000_2CA9                            ; $4BA9: $CD $A9 $2C
    jp nc, Jump_027_4C55                          ; $4BAC: $D2 $55 $4C

    inc hl                                        ; $4BAF: $23
    ld [hl], $00                                  ; $4BB0: $36 $00
    ld hl, $0208                                  ; $4BB2: $21 $08 $02
    ld a, $01                                     ; $4BB5: $3E $01
    call Call_000_34B3                            ; $4BB7: $CD $B3 $34
    jp Jump_027_4C55                              ; $4BBA: $C3 $55 $4C


Jump_027_4BBD:
    call Call_000_2CA2                            ; $4BBD: $CD $A2 $2C
    jr z, jr_027_4BE7                             ; $4BC0: $28 $25

    ld a, $11                                     ; $4BC2: $3E $11
    call Call_000_1360                            ; $4BC4: $CD $60 $13
    call Call_000_32CC                            ; $4BC7: $CD $CC $32
    jr c, jr_027_4BDE                             ; $4BCA: $38 $12

    jr nz, jr_027_4BD6                            ; $4BCC: $20 $08

    ld hl, $0200                                  ; $4BCE: $21 $00 $02
    call Call_000_2FEB                            ; $4BD1: $CD $EB $2F
    jr jr_027_4BE4                                ; $4BD4: $18 $0E

jr_027_4BD6:
    ld hl, $0300                                  ; $4BD6: $21 $00 $03
    call Call_000_2FEB                            ; $4BD9: $CD $EB $2F
    jr jr_027_4BE4                                ; $4BDC: $18 $06

jr_027_4BDE:
    ld hl, $0400                                  ; $4BDE: $21 $00 $04
    call Call_000_2FEB                            ; $4BE1: $CD $EB $2F

jr_027_4BE4:
    jp Jump_027_4C3B                              ; $4BE4: $C3 $3B $4C


jr_027_4BE7:
    call Call_000_2CA9                            ; $4BE7: $CD $A9 $2C
    jp nc, Jump_027_4C3B                          ; $4BEA: $D2 $3B $4C

    inc hl                                        ; $4BED: $23
    ld [hl], $00                                  ; $4BEE: $36 $00
    jp Jump_027_4C3B                              ; $4BF0: $C3 $3B $4C


Jump_027_4BF3:
    call Call_000_2CA2                            ; $4BF3: $CD $A2 $2C
    jr z, jr_027_4C1D                             ; $4BF6: $28 $25

    ld a, $11                                     ; $4BF8: $3E $11
    call Call_000_1360                            ; $4BFA: $CD $60 $13
    call Call_000_32CC                            ; $4BFD: $CD $CC $32
    jr c, jr_027_4C14                             ; $4C00: $38 $12

    jr nz, jr_027_4C0C                            ; $4C02: $20 $08

    ld hl, $0200                                  ; $4C04: $21 $00 $02
    call Call_000_2FEB                            ; $4C07: $CD $EB $2F
    jr jr_027_4C1A                                ; $4C0A: $18 $0E

jr_027_4C0C:
    ld hl, $0300                                  ; $4C0C: $21 $00 $03
    call Call_000_2FEB                            ; $4C0F: $CD $EB $2F
    jr jr_027_4C1A                                ; $4C12: $18 $06

jr_027_4C14:
    ld hl, $0400                                  ; $4C14: $21 $00 $04
    call Call_000_2FEB                            ; $4C17: $CD $EB $2F

jr_027_4C1A:
    jp Jump_027_4C3B                              ; $4C1A: $C3 $3B $4C


jr_027_4C1D:
    call Call_000_2CA9                            ; $4C1D: $CD $A9 $2C
    jp nc, Jump_027_4C3B                          ; $4C20: $D2 $3B $4C

    inc hl                                        ; $4C23: $23
    ld [hl], $14                                  ; $4C24: $36 $14
    jp Jump_027_4C3B                              ; $4C26: $C3 $3B $4C


Jump_027_4C29:
    ld hl, $0010                                  ; $4C29: $21 $10 $00
    call Call_000_30B0                            ; $4C2C: $CD $B0 $30
    call Call_000_2CA9                            ; $4C2F: $CD $A9 $2C
    jp nc, Jump_027_4C55                          ; $4C32: $D2 $55 $4C

    inc hl                                        ; $4C35: $23
    ld [hl], $00                                  ; $4C36: $36 $00
    jp Jump_027_4C55                              ; $4C38: $C3 $55 $4C


Jump_027_4C3B:
    ld hl, $0010                                  ; $4C3B: $21 $10 $00
    call Call_000_30B0                            ; $4C3E: $CD $B0 $30
    jp Jump_027_4C55                              ; $4C41: $C3 $55 $4C


Jump_027_4C44:
    ld hl, $0020                                  ; $4C44: $21 $20 $00
    call Call_000_30B0                            ; $4C47: $CD $B0 $30
    call Call_000_2CA9                            ; $4C4A: $CD $A9 $2C
    jp nc, Jump_027_4C55                          ; $4C4D: $D2 $55 $4C

    call Call_000_2DB6                            ; $4C50: $CD $B6 $2D
    jr jr_027_4C58                                ; $4C53: $18 $03

Jump_027_4C55:
    call Call_000_2E25                            ; $4C55: $CD $25 $2E

Jump_027_4C58:
jr_027_4C58:
    ret                                           ; $4C58: $C9


    call Call_000_2EE0                            ; $4C59: $CD $E0 $2E
    call Call_000_3517                            ; $4C5C: $CD $17 $35
    jp c, Jump_027_4D8A                           ; $4C5F: $DA $8A $4D

    ld hl, $0018                                  ; $4C62: $21 $18 $00
    add hl, de                                    ; $4C65: $19
    ld a, [hl]                                    ; $4C66: $7E
    cp $00                                        ; $4C67: $FE $00
    jp z, Jump_027_4C80                           ; $4C69: $CA $80 $4C

    cp $04                                        ; $4C6C: $FE $04
    jp z, Jump_027_4D14                           ; $4C6E: $CA $14 $4D

    cp $08                                        ; $4C71: $FE $08
    jp z, Jump_027_4D30                           ; $4C73: $CA $30 $4D

    cp $0C                                        ; $4C76: $FE $0C
    jp z, Jump_027_4D47                           ; $4C78: $CA $47 $4D

    cp $10                                        ; $4C7B: $FE $10
    jp z, Jump_027_4D77                           ; $4C7D: $CA $77 $4D

Jump_027_4C80:
    call Call_000_2CA2                            ; $4C80: $CD $A2 $2C
    jr z, jr_027_4CA1                             ; $4C83: $28 $1C

    ld hl, $009C                                  ; $4C85: $21 $9C $00
    add hl, bc                                    ; $4C88: $09
    ld a, [hl]                                    ; $4C89: $7E
    or a                                          ; $4C8A: $B7
    jr nz, jr_027_4C98                            ; $4C8B: $20 $0B

    ld hl, $0021                                  ; $4C8D: $21 $21 $00
    add hl, bc                                    ; $4C90: $09
    res 5, [hl]                                   ; $4C91: $CB $AE
    inc hl                                        ; $4C93: $23
    set 4, [hl]                                   ; $4C94: $CB $E6
    jr jr_027_4CA1                                ; $4C96: $18 $09

jr_027_4C98:
    ld hl, $0021                                  ; $4C98: $21 $21 $00
    add hl, bc                                    ; $4C9B: $09
    res 5, [hl]                                   ; $4C9C: $CB $AE
    inc hl                                        ; $4C9E: $23
    set 5, [hl]                                   ; $4C9F: $CB $EE

jr_027_4CA1:
    ld hl, $0022                                  ; $4CA1: $21 $22 $00
    add hl, bc                                    ; $4CA4: $09
    bit 3, [hl]                                   ; $4CA5: $CB $5E
    jr z, jr_027_4CFA                             ; $4CA7: $28 $51

    ld hl, $009D                                  ; $4CA9: $21 $9D $00
    add hl, bc                                    ; $4CAC: $09
    ld a, [hl]                                    ; $4CAD: $7E
    or a                                          ; $4CAE: $B7
    jr nz, jr_027_4CCC                            ; $4CAF: $20 $1B

    ld a, $0D                                     ; $4CB1: $3E $0D
    call Call_000_1360                            ; $4CB3: $CD $60 $13
    call Call_000_3A4C                            ; $4CB6: $CD $4C $3A
    ld a, $01                                     ; $4CB9: $3E $01
    ld [$C2DF], a                                 ; $4CBB: $EA $DF $C2
    call Call_000_37C3                            ; $4CBE: $CD $C3 $37
    ld a, $00                                     ; $4CC1: $3E $00
    ld [$C2DF], a                                 ; $4CC3: $EA $DF $C2
    ld hl, $009D                                  ; $4CC6: $21 $9D $00
    add hl, bc                                    ; $4CC9: $09
    ld [hl], $01                                  ; $4CCA: $36 $01

jr_027_4CCC:
    call Call_000_36B5                            ; $4CCC: $CD $B5 $36
    jp nc, Jump_027_4D87                          ; $4CCF: $D2 $87 $4D

    call Call_000_0417                            ; $4CD2: $CD $17 $04
    ld a, $03                                     ; $4CD5: $3E $03
    ld [$C2E2], a                                 ; $4CD7: $EA $E2 $C2
    ld hl, $0021                                  ; $4CDA: $21 $21 $00
    add hl, bc                                    ; $4CDD: $09
    set 7, [hl]                                   ; $4CDE: $CB $FE
    ld hl, $001C                                  ; $4CE0: $21 $1C $00
    add hl, de                                    ; $4CE3: $19
    ld [hl], $00                                  ; $4CE4: $36 $00
    inc hl                                        ; $4CE6: $23
    ld [hl], $05                                  ; $4CE7: $36 $05
    ld hl, $0119                                  ; $4CE9: $21 $19 $01
    ld a, $01                                     ; $4CEC: $3E $01
    call Call_000_34B3                            ; $4CEE: $CD $B3 $34
    ld hl, $E800                                  ; $4CF1: $21 $00 $E8
    call Call_000_3496                            ; $4CF4: $CD $96 $34
    jp Jump_027_4D87                              ; $4CF7: $C3 $87 $4D


jr_027_4CFA:
    call Call_000_2CA9                            ; $4CFA: $CD $A9 $2C
    jp nc, Jump_027_4D87                          ; $4CFD: $D2 $87 $4D

    inc hl                                        ; $4D00: $23
    ld [hl], $14                                  ; $4D01: $36 $14
    ld hl, $0014                                  ; $4D03: $21 $14 $00
    add hl, de                                    ; $4D06: $19
    ld [hl], $0C                                  ; $4D07: $36 $0C
    ld hl, $0022                                  ; $4D09: $21 $22 $00
    add hl, bc                                    ; $4D0C: $09
    res 4, [hl]                                   ; $4D0D: $CB $A6
    res 5, [hl]                                   ; $4D0F: $CB $AE
    jp Jump_027_4D87                              ; $4D11: $C3 $87 $4D


Jump_027_4D14:
    call Call_000_2CA2                            ; $4D14: $CD $A2 $2C
    jr z, jr_027_4D1C                             ; $4D17: $28 $03

    call Call_000_2E12                            ; $4D19: $CD $12 $2E

jr_027_4D1C:
    call Call_000_2CA9                            ; $4D1C: $CD $A9 $2C
    jp nc, Jump_027_4D87                          ; $4D1F: $D2 $87 $4D

    inc hl                                        ; $4D22: $23
    ld [hl], $00                                  ; $4D23: $36 $00
    ld hl, $0508                                  ; $4D25: $21 $08 $05
    ld a, $11                                     ; $4D28: $3E $11
    call Call_000_34B3                            ; $4D2A: $CD $B3 $34
    jp Jump_027_4D87                              ; $4D2D: $C3 $87 $4D


Jump_027_4D30:
    call Call_000_2CA9                            ; $4D30: $CD $A9 $2C
    jp nc, Jump_027_4D87                          ; $4D33: $D2 $87 $4D

    inc hl                                        ; $4D36: $23
    ld [hl], $0A                                  ; $4D37: $36 $0A
    call Call_000_32CC                            ; $4D39: $CD $CC $32
    jr nc, jr_027_4D44                            ; $4D3C: $30 $06

    ld hl, $001D                                  ; $4D3E: $21 $1D $00
    add hl, de                                    ; $4D41: $19
    ld [hl], $00                                  ; $4D42: $36 $00

jr_027_4D44:
    jp Jump_027_4D87                              ; $4D44: $C3 $87 $4D


Jump_027_4D47:
    call Call_000_2CA9                            ; $4D47: $CD $A9 $2C
    jp nc, Jump_027_4D87                          ; $4D4A: $D2 $87 $4D

    inc hl                                        ; $4D4D: $23
    ld [hl], $14                                  ; $4D4E: $36 $14
    call Call_000_32CC                            ; $4D50: $CD $CC $32
    jp nc, Jump_027_4D87                          ; $4D53: $D2 $87 $4D

    ld a, $40                                     ; $4D56: $3E $40
    call Call_000_32E2                            ; $4D58: $CD $E2 $32
    ld hl, $001C                                  ; $4D5B: $21 $1C $00
    add hl, de                                    ; $4D5E: $19
    ld [hl], $03                                  ; $4D5F: $36 $03
    ld hl, $0103                                  ; $4D61: $21 $03 $01
    ld a, $11                                     ; $4D64: $3E $11
    call Call_000_34B3                            ; $4D66: $CD $B3 $34
    ld hl, $009C                                  ; $4D69: $21 $9C $00
    add hl, bc                                    ; $4D6C: $09
    ld [hl], $01                                  ; $4D6D: $36 $01
    ld a, $00                                     ; $4D6F: $3E $00
    ld [$C2E2], a                                 ; $4D71: $EA $E2 $C2
    jp Jump_027_4D8A                              ; $4D74: $C3 $8A $4D


Jump_027_4D77:
    call Call_000_2CA9                            ; $4D77: $CD $A9 $2C
    jp nc, Jump_027_4D87                          ; $4D7A: $D2 $87 $4D

    call Call_000_2DB6                            ; $4D7D: $CD $B6 $2D
    ld a, $00                                     ; $4D80: $3E $00
    ld [$C2E2], a                                 ; $4D82: $EA $E2 $C2
    jr jr_027_4D8A                                ; $4D85: $18 $03

Jump_027_4D87:
    call Call_000_2E25                            ; $4D87: $CD $25 $2E

Jump_027_4D8A:
jr_027_4D8A:
    ret                                           ; $4D8A: $C9


    call Call_000_2EE0                            ; $4D8B: $CD $E0 $2E
    call Call_000_3517                            ; $4D8E: $CD $17 $35
    jp c, Jump_027_4E6A                           ; $4D91: $DA $6A $4E

    ld hl, $0018                                  ; $4D94: $21 $18 $00
    add hl, de                                    ; $4D97: $19
    ld a, [hl]                                    ; $4D98: $7E
    cp $00                                        ; $4D99: $FE $00
    jp z, Jump_027_4DBF                           ; $4D9B: $CA $BF $4D

    cp $04                                        ; $4D9E: $FE $04
    jp z, Jump_027_4DD9                           ; $4DA0: $CA $D9 $4D

    cp $08                                        ; $4DA3: $FE $08
    jp z, Jump_027_4DF3                           ; $4DA5: $CA $F3 $4D

    cp $0C                                        ; $4DA8: $FE $0C
    jp z, Jump_027_4E0F                           ; $4DAA: $CA $0F $4E

    cp $10                                        ; $4DAD: $FE $10
    jp z, Jump_027_4E29                           ; $4DAF: $CA $29 $4E

    cp $14                                        ; $4DB2: $FE $14
    jp z, Jump_027_4E43                           ; $4DB4: $CA $43 $4E

    cp $18                                        ; $4DB7: $FE $18
    jp z, Jump_027_4E57                           ; $4DB9: $CA $57 $4E

    jp Jump_027_4E67                              ; $4DBC: $C3 $67 $4E


Jump_027_4DBF:
    call Call_000_2CA9                            ; $4DBF: $CD $A9 $2C
    jp nc, Jump_027_4E67                          ; $4DC2: $D2 $67 $4E

    inc hl                                        ; $4DC5: $23
    ld [hl], $07                                  ; $4DC6: $36 $07
    ld hl, $051B                                  ; $4DC8: $21 $1B $05
    ld a, $00                                     ; $4DCB: $3E $00
    call Call_000_34B3                            ; $4DCD: $CD $B3 $34
    ld hl, $E8F0                                  ; $4DD0: $21 $F0 $E8
    call Call_000_3496                            ; $4DD3: $CD $96 $34
    jp Jump_027_4E67                              ; $4DD6: $C3 $67 $4E


Jump_027_4DD9:
    call Call_000_2CA9                            ; $4DD9: $CD $A9 $2C
    jp nc, Jump_027_4E67                          ; $4DDC: $D2 $67 $4E

    inc hl                                        ; $4DDF: $23
    ld [hl], $07                                  ; $4DE0: $36 $07
    ld hl, $051B                                  ; $4DE2: $21 $1B $05
    ld a, $00                                     ; $4DE5: $3E $00
    call Call_000_34B3                            ; $4DE7: $CD $B3 $34
    ld hl, $20FF                                  ; $4DEA: $21 $FF $20
    call Call_000_3496                            ; $4DED: $CD $96 $34
    jp Jump_027_4E67                              ; $4DF0: $C3 $67 $4E


Jump_027_4DF3:
    call Call_000_2CA9                            ; $4DF3: $CD $A9 $2C
    jp nc, Jump_027_4E67                          ; $4DF6: $D2 $67 $4E

    inc hl                                        ; $4DF9: $23
    ld [hl], $07                                  ; $4DFA: $36 $07
    ld hl, $030F                                  ; $4DFC: $21 $0F $03
    ld a, $10                                     ; $4DFF: $3E $10
    call Call_000_34B3                            ; $4E01: $CD $B3 $34
    ld hl, $030F                                  ; $4E04: $21 $0F $03
    ld a, $10                                     ; $4E07: $3E $10
    call Call_000_34A2                            ; $4E09: $CD $A2 $34
    jp Jump_027_4E67                              ; $4E0C: $C3 $67 $4E


Jump_027_4E0F:
    call Call_000_2CA9                            ; $4E0F: $CD $A9 $2C
    jp nc, Jump_027_4E67                          ; $4E12: $D2 $67 $4E

    inc hl                                        ; $4E15: $23
    ld [hl], $07                                  ; $4E16: $36 $07
    ld hl, $0519                                  ; $4E18: $21 $19 $05
    ld a, $00                                     ; $4E1B: $3E $00
    call Call_000_34B3                            ; $4E1D: $CD $B3 $34
    ld hl, $18F8                                  ; $4E20: $21 $F8 $18
    call Call_000_3496                            ; $4E23: $CD $96 $34
    jp Jump_027_4E67                              ; $4E26: $C3 $67 $4E


Jump_027_4E29:
    call Call_000_2CA9                            ; $4E29: $CD $A9 $2C
    jp nc, Jump_027_4E67                          ; $4E2C: $D2 $67 $4E

    inc hl                                        ; $4E2F: $23
    ld [hl], $07                                  ; $4E30: $36 $07
    ld hl, $051B                                  ; $4E32: $21 $1B $05
    ld a, $00                                     ; $4E35: $3E $00
    call Call_000_34B3                            ; $4E37: $CD $B3 $34
    ld hl, $F8E0                                  ; $4E3A: $21 $E0 $F8
    call Call_000_3496                            ; $4E3D: $CD $96 $34
    jp Jump_027_4E67                              ; $4E40: $C3 $67 $4E


Jump_027_4E43:
    call Call_000_2CA9                            ; $4E43: $CD $A9 $2C
    jp nc, Jump_027_4E67                          ; $4E46: $D2 $67 $4E

    inc hl                                        ; $4E49: $23
    ld [hl], $14                                  ; $4E4A: $36 $14
    ld hl, $0315                                  ; $4E4C: $21 $15 $03
    ld a, $01                                     ; $4E4F: $3E $01
    call Call_000_34B3                            ; $4E51: $CD $B3 $34
    jp Jump_027_4E67                              ; $4E54: $C3 $67 $4E


Jump_027_4E57:
    call Call_000_2CA9                            ; $4E57: $CD $A9 $2C
    jp nc, Jump_027_4E67                          ; $4E5A: $D2 $67 $4E

    xor a                                         ; $4E5D: $AF
    ld [$C2E2], a                                 ; $4E5E: $EA $E2 $C2
    call Call_000_2DB6                            ; $4E61: $CD $B6 $2D
    jp Jump_027_4E6A                              ; $4E64: $C3 $6A $4E


Jump_027_4E67:
    call Call_000_2E25                            ; $4E67: $CD $25 $2E

Jump_027_4E6A:
    ret                                           ; $4E6A: $C9


    call Call_000_2EE0                            ; $4E6B: $CD $E0 $2E
    call Call_000_3517                            ; $4E6E: $CD $17 $35
    jp c, Jump_027_4F4F                           ; $4E71: $DA $4F $4F

    ld hl, $0018                                  ; $4E74: $21 $18 $00
    add hl, de                                    ; $4E77: $19
    ld a, [hl]                                    ; $4E78: $7E
    cp $00                                        ; $4E79: $FE $00
    jp z, Jump_027_4E92                           ; $4E7B: $CA $92 $4E

    cp $04                                        ; $4E7E: $FE $04
    jp z, Jump_027_4EC0                           ; $4E80: $CA $C0 $4E

    cp $08                                        ; $4E83: $FE $08
    jp z, Jump_027_4F19                           ; $4E85: $CA $19 $4F

    cp $0C                                        ; $4E88: $FE $0C
    jp z, Jump_027_4F2E                           ; $4E8A: $CA $2E $4F

    cp $10                                        ; $4E8D: $FE $10
    jp z, Jump_027_4F41                           ; $4E8F: $CA $41 $4F

Jump_027_4E92:
    call Call_000_2CA9                            ; $4E92: $CD $A9 $2C
    jp nc, Jump_027_4F4C                          ; $4E95: $D2 $4C $4F

    inc hl                                        ; $4E98: $23
    ld [hl], $FF                                  ; $4E99: $36 $FF
    call Call_000_32CC                            ; $4E9B: $CD $CC $32
    jr c, jr_027_4EB5                             ; $4E9E: $38 $15

    jr nz, jr_027_4EA2                            ; $4EA0: $20 $00

jr_027_4EA2:
    ld hl, $0000                                  ; $4EA2: $21 $00 $00
    ld a, $00                                     ; $4EA5: $3E $00
    call Call_000_34B3                            ; $4EA7: $CD $B3 $34
    ld hl, $0000                                  ; $4EAA: $21 $00 $00
    ld a, $00                                     ; $4EAD: $3E $00
    call Call_000_34A2                            ; $4EAF: $CD $A2 $34
    jp Jump_027_4F4C                              ; $4EB2: $C3 $4C $4F


jr_027_4EB5:
    ld hl, $0208                                  ; $4EB5: $21 $08 $02
    ld a, $11                                     ; $4EB8: $3E $11
    call Call_000_34B3                            ; $4EBA: $CD $B3 $34
    jp Jump_027_4F4C                              ; $4EBD: $C3 $4C $4F


Jump_027_4EC0:
    call Call_000_2CA2                            ; $4EC0: $CD $A2 $2C
    jr z, jr_027_4F04                             ; $4EC3: $28 $3F

    ld a, $B6                                     ; $4EC5: $3E $B6
    call Call_000_1360                            ; $4EC7: $CD $60 $13
    ld hl, $0021                                  ; $4ECA: $21 $21 $00
    add hl, bc                                    ; $4ECD: $09
    res 7, [hl]                                   ; $4ECE: $CB $BE
    res 3, [hl]                                   ; $4ED0: $CB $9E
    call Call_000_32CC                            ; $4ED2: $CD $CC $32
    jr c, jr_027_4EF5                             ; $4ED5: $38 $1E

    jr nz, jr_027_4EE7                            ; $4ED7: $20 $0E

    ld hl, $0200                                  ; $4ED9: $21 $00 $02
    call Call_000_2FEB                            ; $4EDC: $CD $EB $2F
    ld hl, $FA00                                  ; $4EDF: $21 $00 $FA
    call Call_000_305D                            ; $4EE2: $CD $5D $30
    jr jr_027_4F01                                ; $4EE5: $18 $1A

jr_027_4EE7:
    ld hl, $0280                                  ; $4EE7: $21 $80 $02
    call Call_000_2FEB                            ; $4EEA: $CD $EB $2F
    ld hl, $F980                                  ; $4EED: $21 $80 $F9
    call Call_000_305D                            ; $4EF0: $CD $5D $30
    jr jr_027_4F01                                ; $4EF3: $18 $0C

jr_027_4EF5:
    ld hl, $0300                                  ; $4EF5: $21 $00 $03
    call Call_000_2FEB                            ; $4EF8: $CD $EB $2F
    ld hl, $F980                                  ; $4EFB: $21 $80 $F9
    call Call_000_305D                            ; $4EFE: $CD $5D $30

jr_027_4F01:
    jp Jump_027_4F2E                              ; $4F01: $C3 $2E $4F


jr_027_4F04:
    ld a, $FF                                     ; $4F04: $3E $FF
    ld h, $FF                                     ; $4F06: $26 $FF
    call Call_000_2D33                            ; $4F08: $CD $33 $2D
    jp nc, Jump_027_4F2E                          ; $4F0B: $D2 $2E $4F

    ld hl, $020F                                  ; $4F0E: $21 $0F $02
    ld a, $11                                     ; $4F11: $3E $11
    call Call_000_34B3                            ; $4F13: $CD $B3 $34
    jp Jump_027_4F2E                              ; $4F16: $C3 $2E $4F


Jump_027_4F19:
    ld a, $01                                     ; $4F19: $3E $01
    ld h, $FF                                     ; $4F1B: $26 $FF
    call Call_000_2D33                            ; $4F1D: $CD $33 $2D
    jp nc, Jump_027_4F2E                          ; $4F20: $D2 $2E $4F

    ld hl, $020F                                  ; $4F23: $21 $0F $02
    ld a, $01                                     ; $4F26: $3E $01
    call Call_000_34B3                            ; $4F28: $CD $B3 $34
    jp Jump_027_4F2E                              ; $4F2B: $C3 $2E $4F


Jump_027_4F2E:
    ld hl, $0060                                  ; $4F2E: $21 $60 $00
    call Call_000_30FF                            ; $4F31: $CD $FF $30
    jp nc, Jump_027_4F4C                          ; $4F34: $D2 $4C $4F

    ld a, $10                                     ; $4F37: $3E $10
    ld h, $14                                     ; $4F39: $26 $14
    call Call_000_2CBA                            ; $4F3B: $CD $BA $2C
    jp Jump_027_4F4F                              ; $4F3E: $C3 $4F $4F


Jump_027_4F41:
    call Call_000_2CA9                            ; $4F41: $CD $A9 $2C
    jp nc, Jump_027_4F4C                          ; $4F44: $D2 $4C $4F

    call Call_000_2DB6                            ; $4F47: $CD $B6 $2D
    jr jr_027_4F4F                                ; $4F4A: $18 $03

Jump_027_4F4C:
    call Call_000_2E25                            ; $4F4C: $CD $25 $2E

Jump_027_4F4F:
jr_027_4F4F:
    ret                                           ; $4F4F: $C9


    call Call_000_2EE0                            ; $4F50: $CD $E0 $2E
    call Call_000_3517                            ; $4F53: $CD $17 $35
    jp c, Jump_027_50A3                           ; $4F56: $DA $A3 $50

    ld hl, $0018                                  ; $4F59: $21 $18 $00
    add hl, de                                    ; $4F5C: $19
    ld a, [hl]                                    ; $4F5D: $7E
    cp $00                                        ; $4F5E: $FE $00
    jp z, Jump_027_4FA2                           ; $4F60: $CA $A2 $4F

    cp $04                                        ; $4F63: $FE $04
    jp z, Jump_027_4FBC                           ; $4F65: $CA $BC $4F

    cp $08                                        ; $4F68: $FE $08
    jp z, Jump_027_4FD6                           ; $4F6A: $CA $D6 $4F

    cp $0C                                        ; $4F6D: $FE $0C
    jp z, Jump_027_4FA2                           ; $4F6F: $CA $A2 $4F

    cp $10                                        ; $4F72: $FE $10
    jp z, Jump_027_4FBC                           ; $4F74: $CA $BC $4F

    cp $14                                        ; $4F77: $FE $14
    jp z, Jump_027_4FD6                           ; $4F79: $CA $D6 $4F

    cp $18                                        ; $4F7C: $FE $18
    jp z, Jump_027_4FF2                           ; $4F7E: $CA $F2 $4F

    cp $1C                                        ; $4F81: $FE $1C
    jp z, Jump_027_500C                           ; $4F83: $CA $0C $50

    cp $20                                        ; $4F86: $FE $20
    jp z, Jump_027_5026                           ; $4F88: $CA $26 $50

    cp $24                                        ; $4F8B: $FE $24
    jp z, Jump_027_5040                           ; $4F8D: $CA $40 $50

    cp $28                                        ; $4F90: $FE $28
    jp z, Jump_027_5062                           ; $4F92: $CA $62 $50

    cp $2C                                        ; $4F95: $FE $2C
    jp z, Jump_027_507C                           ; $4F97: $CA $7C $50

    cp $30                                        ; $4F9A: $FE $30
    jp z, Jump_027_5090                           ; $4F9C: $CA $90 $50

    jp Jump_027_50A0                              ; $4F9F: $C3 $A0 $50


Jump_027_4FA2:
    call Call_000_2CA9                            ; $4FA2: $CD $A9 $2C
    jp nc, Jump_027_50A0                          ; $4FA5: $D2 $A0 $50

    inc hl                                        ; $4FA8: $23
    ld [hl], $07                                  ; $4FA9: $36 $07
    ld hl, $051B                                  ; $4FAB: $21 $1B $05
    ld a, $00                                     ; $4FAE: $3E $00
    call Call_000_34B3                            ; $4FB0: $CD $B3 $34
    ld hl, $E8F0                                  ; $4FB3: $21 $F0 $E8
    call Call_000_3496                            ; $4FB6: $CD $96 $34
    jp Jump_027_50A0                              ; $4FB9: $C3 $A0 $50


Jump_027_4FBC:
    call Call_000_2CA9                            ; $4FBC: $CD $A9 $2C
    jp nc, Jump_027_50A0                          ; $4FBF: $D2 $A0 $50

    inc hl                                        ; $4FC2: $23
    ld [hl], $07                                  ; $4FC3: $36 $07
    ld hl, $051B                                  ; $4FC5: $21 $1B $05
    ld a, $00                                     ; $4FC8: $3E $00
    call Call_000_34B3                            ; $4FCA: $CD $B3 $34
    ld hl, $20FF                                  ; $4FCD: $21 $FF $20
    call Call_000_3496                            ; $4FD0: $CD $96 $34
    jp Jump_027_50A0                              ; $4FD3: $C3 $A0 $50


Jump_027_4FD6:
    call Call_000_2CA9                            ; $4FD6: $CD $A9 $2C
    jp nc, Jump_027_50A0                          ; $4FD9: $D2 $A0 $50

    inc hl                                        ; $4FDC: $23
    ld [hl], $07                                  ; $4FDD: $36 $07
    ld hl, $050F                                  ; $4FDF: $21 $0F $05
    ld a, $10                                     ; $4FE2: $3E $10
    call Call_000_34B3                            ; $4FE4: $CD $B3 $34
    ld hl, $050F                                  ; $4FE7: $21 $0F $05
    ld a, $10                                     ; $4FEA: $3E $10
    call Call_000_34A2                            ; $4FEC: $CD $A2 $34
    jp Jump_027_50A0                              ; $4FEF: $C3 $A0 $50


Jump_027_4FF2:
    call Call_000_2CA9                            ; $4FF2: $CD $A9 $2C
    jp nc, Jump_027_50A0                          ; $4FF5: $D2 $A0 $50

    inc hl                                        ; $4FF8: $23
    ld [hl], $07                                  ; $4FF9: $36 $07
    ld hl, $0519                                  ; $4FFB: $21 $19 $05
    ld a, $00                                     ; $4FFE: $3E $00
    call Call_000_34B3                            ; $5000: $CD $B3 $34
    ld hl, $18F8                                  ; $5003: $21 $F8 $18
    call Call_000_3496                            ; $5006: $CD $96 $34
    jp Jump_027_50A0                              ; $5009: $C3 $A0 $50


Jump_027_500C:
    call Call_000_2CA9                            ; $500C: $CD $A9 $2C
    jp nc, Jump_027_50A0                          ; $500F: $D2 $A0 $50

    inc hl                                        ; $5012: $23
    ld [hl], $07                                  ; $5013: $36 $07
    ld hl, $051B                                  ; $5015: $21 $1B $05
    ld a, $00                                     ; $5018: $3E $00
    call Call_000_34B3                            ; $501A: $CD $B3 $34
    ld hl, $F8E0                                  ; $501D: $21 $E0 $F8
    call Call_000_3496                            ; $5020: $CD $96 $34
    jp Jump_027_50A0                              ; $5023: $C3 $A0 $50


Jump_027_5026:
    call Call_000_2CA9                            ; $5026: $CD $A9 $2C
    jp nc, Jump_027_50A0                          ; $5029: $D2 $A0 $50

    inc hl                                        ; $502C: $23
    ld [hl], $01                                  ; $502D: $36 $01
    ld hl, $051B                                  ; $502F: $21 $1B $05
    ld a, $00                                     ; $5032: $3E $00
    call Call_000_34B3                            ; $5034: $CD $B3 $34
    ld hl, $E0FF                                  ; $5037: $21 $FF $E0
    call Call_000_3496                            ; $503A: $CD $96 $34
    jp Jump_027_50A0                              ; $503D: $C3 $A0 $50


Jump_027_5040:
    call Call_000_2CA9                            ; $5040: $CD $A9 $2C
    jp nc, Jump_027_50A0                          ; $5043: $D2 $A0 $50

    inc hl                                        ; $5046: $23
    ld [hl], $05                                  ; $5047: $36 $05
    ld hl, $050F                                  ; $5049: $21 $0F $05
    ld a, $10                                     ; $504C: $3E $10
    call Call_000_34A2                            ; $504E: $CD $A2 $34
    ld hl, $0519                                  ; $5051: $21 $19 $05
    ld a, $00                                     ; $5054: $3E $00
    call Call_000_34B3                            ; $5056: $CD $B3 $34
    ld hl, $E8F8                                  ; $5059: $21 $F8 $E8
    call Call_000_3496                            ; $505C: $CD $96 $34
    jp Jump_027_50A0                              ; $505F: $C3 $A0 $50


Jump_027_5062:
    call Call_000_2CA9                            ; $5062: $CD $A9 $2C
    jp nc, Jump_027_50A0                          ; $5065: $D2 $A0 $50

    inc hl                                        ; $5068: $23
    ld [hl], $01                                  ; $5069: $36 $01
    ld hl, $051B                                  ; $506B: $21 $1B $05
    ld a, $00                                     ; $506E: $3E $00
    call Call_000_34B3                            ; $5070: $CD $B3 $34
    ld hl, $18FF                                  ; $5073: $21 $FF $18
    call Call_000_3496                            ; $5076: $CD $96 $34
    jp Jump_027_50A0                              ; $5079: $C3 $A0 $50


Jump_027_507C:
    call Call_000_2CA9                            ; $507C: $CD $A9 $2C
    jp nc, Jump_027_50A0                          ; $507F: $D2 $A0 $50

    inc hl                                        ; $5082: $23
    ld [hl], $14                                  ; $5083: $36 $14
    ld hl, $050F                                  ; $5085: $21 $0F $05
    ld a, $01                                     ; $5088: $3E $01
    call Call_000_34A2                            ; $508A: $CD $A2 $34
    jp Jump_027_50A0                              ; $508D: $C3 $A0 $50


Jump_027_5090:
    call Call_000_2CA9                            ; $5090: $CD $A9 $2C
    jp nc, Jump_027_50A0                          ; $5093: $D2 $A0 $50

    xor a                                         ; $5096: $AF
    ld [$C2E2], a                                 ; $5097: $EA $E2 $C2
    call Call_000_2DB6                            ; $509A: $CD $B6 $2D
    jp Jump_027_50A3                              ; $509D: $C3 $A3 $50


Jump_027_50A0:
    call Call_000_2E25                            ; $50A0: $CD $25 $2E

Jump_027_50A3:
    ret                                           ; $50A3: $C9


    call Call_000_2EE0                            ; $50A4: $CD $E0 $2E
    call Call_000_3517                            ; $50A7: $CD $17 $35
    jp c, Jump_027_50E5                           ; $50AA: $DA $E5 $50

    ld hl, $0018                                  ; $50AD: $21 $18 $00
    add hl, de                                    ; $50B0: $19
    ld a, [hl]                                    ; $50B1: $7E
    cp $00                                        ; $50B2: $FE $00
    jp z, Jump_027_50BF                           ; $50B4: $CA $BF $50

    cp $24                                        ; $50B7: $FE $24
    jp z, Jump_027_50D7                           ; $50B9: $CA $D7 $50

    jp Jump_027_50E2                              ; $50BC: $C3 $E2 $50


Jump_027_50BF:
    call Call_000_2CA2                            ; $50BF: $CD $A2 $2C
    jp z, Jump_027_50CB                           ; $50C2: $CA $CB $50

    ld hl, $0031                                  ; $50C5: $21 $31 $00
    add hl, bc                                    ; $50C8: $09
    ld [hl], $01                                  ; $50C9: $36 $01

Jump_027_50CB:
    call Call_000_2CA9                            ; $50CB: $CD $A9 $2C
    jp nc, Jump_027_50E2                          ; $50CE: $D2 $E2 $50

    inc hl                                        ; $50D1: $23
    ld [hl], $04                                  ; $50D2: $36 $04
    jp Jump_027_50E2                              ; $50D4: $C3 $E2 $50


Jump_027_50D7:
    call Call_000_2CA9                            ; $50D7: $CD $A9 $2C
    jp nc, Jump_027_50E2                          ; $50DA: $D2 $E2 $50

    call Call_000_2DB6                            ; $50DD: $CD $B6 $2D
    jr jr_027_50E5                                ; $50E0: $18 $03

Jump_027_50E2:
    call Call_000_2E25                            ; $50E2: $CD $25 $2E

Jump_027_50E5:
jr_027_50E5:
    ret                                           ; $50E5: $C9


    call Call_000_31B6                            ; $50E6: $CD $B6 $31
    jp c, Jump_027_51DD                           ; $50E9: $DA $DD $51

    jp z, Jump_027_50FB                           ; $50EC: $CA $FB $50

    call Call_000_3A2A                            ; $50EF: $CD $2A $3A
    jp c, Jump_027_5187                           ; $50F2: $DA $87 $51

    jp z, Jump_027_5198                           ; $50F5: $CA $98 $51

    jp Jump_027_51DD                              ; $50F8: $C3 $DD $51


Jump_027_50FB:
    call Call_000_3A2A                            ; $50FB: $CD $2A $3A
    jp c, Jump_027_51A9                           ; $50FE: $DA $A9 $51

    jp z, Jump_027_51D0                           ; $5101: $CA $D0 $51

    call Call_000_39D3                            ; $5104: $CD $D3 $39
    jp nc, Jump_027_51DD                          ; $5107: $D2 $DD $51

    jp z, Jump_027_5113                           ; $510A: $CA $13 $51

    jp nz, Jump_027_513C                          ; $510D: $C2 $3C $51

    jp Jump_027_51DD                              ; $5110: $C3 $DD $51


Jump_027_5113:
    call Call_000_3209                            ; $5113: $CD $09 $32
    jr c, jr_027_5121                             ; $5116: $38 $09

    ld hl, $3AD4                                  ; $5118: $21 $D4 $3A
    call Call_000_2B78                            ; $511B: $CD $78 $2B
    jp c, Jump_027_51A9                           ; $511E: $DA $A9 $51

jr_027_5121:
    call Call_000_3A61                            ; $5121: $CD $61 $3A
    jp c, Jump_027_51DB                           ; $5124: $DA $DB $51

    ld hl, $3B14                                  ; $5127: $21 $14 $3B
    call Call_000_2B78                            ; $512A: $CD $78 $2B
    jp c, Jump_027_5198                           ; $512D: $DA $98 $51

    ld hl, $3AB9                                  ; $5130: $21 $B9 $3A
    call Call_000_2B78                            ; $5133: $CD $78 $2B
    jp c, Jump_027_5168                           ; $5136: $DA $68 $51

    jp Jump_027_51DD                              ; $5139: $C3 $DD $51


Jump_027_513C:
    call Call_000_3209                            ; $513C: $CD $09 $32
    jp c, Jump_027_5153                           ; $513F: $DA $53 $51

    cp $01                                        ; $5142: $FE $01
    jr z, jr_027_5153                             ; $5144: $28 $0D

    cp $02                                        ; $5146: $FE $02
    jr z, jr_027_514A                             ; $5148: $28 $00

jr_027_514A:
    ld hl, $3AE5                                  ; $514A: $21 $E5 $3A
    call Call_000_2B78                            ; $514D: $CD $78 $2B
    jp c, Jump_027_51D0                           ; $5150: $DA $D0 $51

Jump_027_5153:
jr_027_5153:
    ld hl, $3B2A                                  ; $5153: $21 $2A $3B
    call Call_000_2B78                            ; $5156: $CD $78 $2B
    jp c, Jump_027_517C                           ; $5159: $DA $7C $51

    ld hl, $3B07                                  ; $515C: $21 $07 $3B
    call Call_000_2B78                            ; $515F: $CD $78 $2B
    jp c, Jump_027_5187                           ; $5162: $DA $87 $51

    jp Jump_027_51DD                              ; $5165: $C3 $DD $51


Jump_027_5168:
    call Call_000_32C5                            ; $5168: $CD $C5 $32
    jp nz, Jump_027_51DD                          ; $516B: $C2 $DD $51

    call Call_000_2C23                            ; $516E: $CD $23 $2C
    ld a, $40                                     ; $5171: $3E $40
    call Call_000_32E2                            ; $5173: $CD $E2 $32
    call Call_000_34F1                            ; $5176: $CD $F1 $34
    jp Jump_027_51DB                              ; $5179: $C3 $DB $51


Jump_027_517C:
    call Call_000_2C23                            ; $517C: $CD $23 $2C
    ld a, $42                                     ; $517F: $3E $42
    call Call_000_32E2                            ; $5181: $CD $E2 $32
    jp Jump_027_51DB                              ; $5184: $C3 $DB $51


Jump_027_5187:
    call Call_000_2C23                            ; $5187: $CD $23 $2C
    ld a, $44                                     ; $518A: $3E $44
    call Call_000_32E2                            ; $518C: $CD $E2 $32
    ld hl, $0020                                  ; $518F: $21 $20 $00
    add hl, bc                                    ; $5192: $09
    set 5, [hl]                                   ; $5193: $CB $EE
    jp Jump_027_51DB                              ; $5195: $C3 $DB $51


Jump_027_5198:
    call Call_000_2C23                            ; $5198: $CD $23 $2C
    ld a, $46                                     ; $519B: $3E $46
    call Call_000_32E2                            ; $519D: $CD $E2 $32
    ld hl, $0021                                  ; $51A0: $21 $21 $00
    add hl, bc                                    ; $51A3: $09
    set 7, [hl]                                   ; $51A4: $CB $FE
    jp Jump_027_51DB                              ; $51A6: $C3 $DB $51


Jump_027_51A9:
    call Call_000_32C5                            ; $51A9: $CD $C5 $32
    jp nz, Jump_027_51DD                          ; $51AC: $C2 $DD $51

    call Call_000_2C23                            ; $51AF: $CD $23 $2C
    ld a, $4A                                     ; $51B2: $3E $4A
    call Call_000_32E2                            ; $51B4: $CD $E2 $32
    ld hl, $0203                                  ; $51B7: $21 $03 $02
    ld a, $13                                     ; $51BA: $3E $13
    call Call_000_34C4                            ; $51BC: $CD $C4 $34
    ld hl, $0204                                  ; $51BF: $21 $04 $02
    ld a, $13                                     ; $51C2: $3E $13
    call Call_000_34D2                            ; $51C4: $CD $D2 $34
    ld hl, $0021                                  ; $51C7: $21 $21 $00
    add hl, bc                                    ; $51CA: $09
    set 7, [hl]                                   ; $51CB: $CB $FE
    jp Jump_027_51DB                              ; $51CD: $C3 $DB $51


Jump_027_51D0:
    call Call_000_2C23                            ; $51D0: $CD $23 $2C
    ld a, $4C                                     ; $51D3: $3E $4C
    call Call_000_32E2                            ; $51D5: $CD $E2 $32
    jp Jump_027_51DB                              ; $51D8: $C3 $DB $51


Jump_027_51DB:
    scf                                           ; $51DB: $37
    ret                                           ; $51DC: $C9


Jump_027_51DD:
    or a                                          ; $51DD: $B7
    ret                                           ; $51DE: $C9


    call Call_000_2EE0                            ; $51DF: $CD $E0 $2E
    call Call_000_3517                            ; $51E2: $CD $17 $35
    jp c, Jump_027_521A                           ; $51E5: $DA $1A $52

    ld hl, $0018                                  ; $51E8: $21 $18 $00
    add hl, de                                    ; $51EB: $19
    ld a, [hl]                                    ; $51EC: $7E
    cp $0C                                        ; $51ED: $FE $0C
    jp z, Jump_027_51FA                           ; $51EF: $CA $FA $51

    cp $10                                        ; $51F2: $FE $10
    jp z, Jump_027_520C                           ; $51F4: $CA $0C $52

    jp Jump_027_5217                              ; $51F7: $C3 $17 $52


Jump_027_51FA:
    call Call_000_2CA2                            ; $51FA: $CD $A2 $2C
    jp z, Jump_027_5217                           ; $51FD: $CA $17 $52

    call Call_027_580E                            ; $5200: $CD $0E $58
    ld hl, $001D                                  ; $5203: $21 $1D $00
    add hl, de                                    ; $5206: $19
    ld [hl], $1E                                  ; $5207: $36 $1E
    jp Jump_027_5217                              ; $5209: $C3 $17 $52


Jump_027_520C:
    call Call_000_2CA9                            ; $520C: $CD $A9 $2C
    jp nc, Jump_027_5217                          ; $520F: $D2 $17 $52

    call Call_000_2DB6                            ; $5212: $CD $B6 $2D
    jr jr_027_521A                                ; $5215: $18 $03

Jump_027_5217:
    jp Jump_000_2E25                              ; $5217: $C3 $25 $2E


Jump_027_521A:
jr_027_521A:
    ret                                           ; $521A: $C9


    call Call_000_2EE0                            ; $521B: $CD $E0 $2E
    call Call_000_3517                            ; $521E: $CD $17 $35
    jp c, Jump_027_5308                           ; $5221: $DA $08 $53

    ld hl, $0018                                  ; $5224: $21 $18 $00
    add hl, de                                    ; $5227: $19
    ld a, [hl]                                    ; $5228: $7E
    cp $00                                        ; $5229: $FE $00
    jp z, Jump_027_524A                           ; $522B: $CA $4A $52

    cp $04                                        ; $522E: $FE $04
    jp z, Jump_027_525E                           ; $5230: $CA $5E $52

    cp $08                                        ; $5233: $FE $08
    jp z, Jump_027_52A2                           ; $5235: $CA $A2 $52

    cp $0C                                        ; $5238: $FE $0C
    jp z, Jump_027_52BF                           ; $523A: $CA $BF $52

    cp $10                                        ; $523D: $FE $10
    jp z, Jump_027_5305                           ; $523F: $CA $05 $53

    cp $14                                        ; $5242: $FE $14
    jp z, Jump_027_52FA                           ; $5244: $CA $FA $52

    jp Jump_027_5305                              ; $5247: $C3 $05 $53


Jump_027_524A:
    call Call_000_2CA9                            ; $524A: $CD $A9 $2C
    jp nc, Jump_027_5305                          ; $524D: $D2 $05 $53

    inc hl                                        ; $5250: $23
    ld [hl], $03                                  ; $5251: $36 $03
    ld hl, $0204                                  ; $5253: $21 $04 $02
    ld a, $11                                     ; $5256: $3E $11
    call Call_000_34B3                            ; $5258: $CD $B3 $34
    jp Jump_027_5305                              ; $525B: $C3 $05 $53


Jump_027_525E:
    call Call_000_2CA2                            ; $525E: $CD $A2 $2C
    jr z, jr_027_5285                             ; $5261: $28 $22

    ld a, $11                                     ; $5263: $3E $11
    call Call_000_1360                            ; $5265: $CD $60 $13
    call Call_000_32CC                            ; $5268: $CD $CC $32
    jr c, jr_027_527F                             ; $526B: $38 $12

    jr nz, jr_027_5277                            ; $526D: $20 $08

    ld hl, $0300                                  ; $526F: $21 $00 $03
    call Call_000_2FEB                            ; $5272: $CD $EB $2F
    jr jr_027_5285                                ; $5275: $18 $0E

jr_027_5277:
    ld hl, $0400                                  ; $5277: $21 $00 $04
    call Call_000_2FEB                            ; $527A: $CD $EB $2F
    jr jr_027_5285                                ; $527D: $18 $06

jr_027_527F:
    ld hl, $0500                                  ; $527F: $21 $00 $05
    call Call_000_2FEB                            ; $5282: $CD $EB $2F

jr_027_5285:
    call Call_027_52DC                            ; $5285: $CD $DC $52
    ld hl, $0000                                  ; $5288: $21 $00 $00
    call Call_000_30B0                            ; $528B: $CD $B0 $30
    call Call_000_2CA9                            ; $528E: $CD $A9 $2C
    jp nc, Jump_027_5305                          ; $5291: $D2 $05 $53

    inc hl                                        ; $5294: $23
    ld [hl], $02                                  ; $5295: $36 $02
    ld hl, $0203                                  ; $5297: $21 $03 $02
    ld a, $11                                     ; $529A: $3E $11
    call Call_000_34B3                            ; $529C: $CD $B3 $34
    jp Jump_027_5305                              ; $529F: $C3 $05 $53


Jump_027_52A2:
    call Call_027_52DC                            ; $52A2: $CD $DC $52
    ld hl, $0010                                  ; $52A5: $21 $10 $00
    call Call_000_30B0                            ; $52A8: $CD $B0 $30
    call Call_000_2CA9                            ; $52AB: $CD $A9 $2C
    jp nc, Jump_027_5305                          ; $52AE: $D2 $05 $53

    inc hl                                        ; $52B1: $23
    ld [hl], $02                                  ; $52B2: $36 $02
    ld hl, $0204                                  ; $52B4: $21 $04 $02
    ld a, $11                                     ; $52B7: $3E $11
    call Call_000_34B3                            ; $52B9: $CD $B3 $34
    jp Jump_027_5305                              ; $52BC: $C3 $05 $53


Jump_027_52BF:
    call Call_027_52EB                            ; $52BF: $CD $EB $52
    ld hl, $0020                                  ; $52C2: $21 $20 $00
    call Call_000_30B0                            ; $52C5: $CD $B0 $30
    call Call_000_2CA9                            ; $52C8: $CD $A9 $2C
    jp nc, Jump_027_5305                          ; $52CB: $D2 $05 $53

    inc hl                                        ; $52CE: $23
    ld [hl], $06                                  ; $52CF: $36 $06
    ld hl, $0208                                  ; $52D1: $21 $08 $02
    ld a, $01                                     ; $52D4: $3E $01
    call Call_000_34B3                            ; $52D6: $CD $B3 $34
    jp Jump_027_5305                              ; $52D9: $C3 $05 $53


Call_027_52DC:
    call Call_000_32CC                            ; $52DC: $CD $CC $32
    jr c, jr_027_52E2                             ; $52DF: $38 $01

    ret                                           ; $52E1: $C9


jr_027_52E2:
    ld hl, HeaderLogo                             ; $52E2: $21 $04 $01
    ld a, $12                                     ; $52E5: $3E $12
    call Call_000_34A2                            ; $52E7: $CD $A2 $34
    ret                                           ; $52EA: $C9


Call_027_52EB:
    call Call_000_32CC                            ; $52EB: $CD $CC $32
    jr c, jr_027_52F1                             ; $52EE: $38 $01

    ret                                           ; $52F0: $C9


jr_027_52F1:
    ld hl, $0108                                  ; $52F1: $21 $08 $01
    ld a, $12                                     ; $52F4: $3E $12
    call Call_000_34A2                            ; $52F6: $CD $A2 $34
    ret                                           ; $52F9: $C9


Jump_027_52FA:
    call Call_000_2CA9                            ; $52FA: $CD $A9 $2C
    jp nc, Jump_027_5305                          ; $52FD: $D2 $05 $53

    call Call_000_2DB6                            ; $5300: $CD $B6 $2D
    jr jr_027_5308                                ; $5303: $18 $03

Jump_027_5305:
    jp Jump_000_2E25                              ; $5305: $C3 $25 $2E


Jump_027_5308:
jr_027_5308:
    ret                                           ; $5308: $C9


    call Call_000_2EE0                            ; $5309: $CD $E0 $2E
    call Call_000_3517                            ; $530C: $CD $17 $35
    jp c, Jump_027_53EE                           ; $530F: $DA $EE $53

    ld hl, $0018                                  ; $5312: $21 $18 $00
    add hl, de                                    ; $5315: $19
    ld a, [hl]                                    ; $5316: $7E
    cp $00                                        ; $5317: $FE $00
    jp z, Jump_027_532E                           ; $5319: $CA $2E $53

    cp $04                                        ; $531C: $FE $04
    jp z, Jump_027_5368                           ; $531E: $CA $68 $53

    cp $08                                        ; $5321: $FE $08
    jp z, Jump_027_5393                           ; $5323: $CA $93 $53

    cp $0C                                        ; $5326: $FE $0C
    jp z, Jump_027_53E0                           ; $5328: $CA $E0 $53

    jp Jump_027_53EB                              ; $532B: $C3 $EB $53


Jump_027_532E:
    call Call_000_2CA9                            ; $532E: $CD $A9 $2C
    jp nc, Jump_027_53EB                          ; $5331: $D2 $EB $53

    inc hl                                        ; $5334: $23
    ld [hl], $00                                  ; $5335: $36 $00
    call Call_000_32CC                            ; $5337: $CD $CC $32
    jr c, jr_027_5356                             ; $533A: $38 $1A

    jr nz, jr_027_534A                            ; $533C: $20 $0C

    ld hl, $0208                                  ; $533E: $21 $08 $02
    ld a, $90                                     ; $5341: $3E $90
    call Call_000_34B3                            ; $5343: $CD $B3 $34
    ld a, $02                                     ; $5346: $3E $02
    jr jr_027_5360                                ; $5348: $18 $16

jr_027_534A:
    ld hl, $0208                                  ; $534A: $21 $08 $02
    ld a, $90                                     ; $534D: $3E $90
    call Call_000_34B3                            ; $534F: $CD $B3 $34
    ld a, $03                                     ; $5352: $3E $03
    jr jr_027_5360                                ; $5354: $18 $0A

jr_027_5356:
    ld hl, $0208                                  ; $5356: $21 $08 $02
    ld a, $D0                                     ; $5359: $3E $D0
    call Call_000_34B3                            ; $535B: $CD $B3 $34
    ld a, $04                                     ; $535E: $3E $04

jr_027_5360:
    ld hl, $009C                                  ; $5360: $21 $9C $00
    add hl, bc                                    ; $5363: $09
    ld [hl], a                                    ; $5364: $77
    jp Jump_027_53EB                              ; $5365: $C3 $EB $53


Jump_027_5368:
    call Call_027_53CE                            ; $5368: $CD $CE $53
    call Call_000_2CA9                            ; $536B: $CD $A9 $2C
    jp nc, Jump_027_53EB                          ; $536E: $D2 $EB $53

    ld a, $11                                     ; $5371: $3E $11
    call Call_000_1360                            ; $5373: $CD $60 $13
    call Call_000_32CC                            ; $5376: $CD $CC $32
    jr c, jr_027_5388                             ; $5379: $38 $0D

    jr nz, jr_027_537D                            ; $537B: $20 $00

jr_027_537D:
    ld hl, $0208                                  ; $537D: $21 $08 $02
    ld a, $90                                     ; $5380: $3E $90
    call Call_000_34B3                            ; $5382: $CD $B3 $34
    jp Jump_027_53EB                              ; $5385: $C3 $EB $53


jr_027_5388:
    ld hl, $0108                                  ; $5388: $21 $08 $01
    ld a, $D0                                     ; $538B: $3E $D0
    call Call_000_34B3                            ; $538D: $CD $B3 $34
    jp Jump_027_53EB                              ; $5390: $C3 $EB $53


Jump_027_5393:
    call Call_027_53CE                            ; $5393: $CD $CE $53
    call Call_000_2CA9                            ; $5396: $CD $A9 $2C
    jp nc, Jump_027_53EB                          ; $5399: $D2 $EB $53

    ld hl, $009C                                  ; $539C: $21 $9C $00
    add hl, bc                                    ; $539F: $09
    dec [hl]                                      ; $53A0: $35
    jr nz, jr_027_53AC                            ; $53A1: $20 $09

    ld hl, $001D                                  ; $53A3: $21 $1D $00
    add hl, de                                    ; $53A6: $19
    ld [hl], $0A                                  ; $53A7: $36 $0A
    jp Jump_027_53EB                              ; $53A9: $C3 $EB $53


jr_027_53AC:
    call Call_000_32CC                            ; $53AC: $CD $CC $32
    jr c, jr_027_53BD                             ; $53AF: $38 $0C

    jr nz, jr_027_53B3                            ; $53B1: $20 $00

jr_027_53B3:
    ld hl, $0208                                  ; $53B3: $21 $08 $02
    ld a, $90                                     ; $53B6: $3E $90
    call Call_000_34B3                            ; $53B8: $CD $B3 $34
    jr jr_027_53C5                                ; $53BB: $18 $08

jr_027_53BD:
    ld hl, $0108                                  ; $53BD: $21 $08 $01
    ld a, $D0                                     ; $53C0: $3E $D0
    call Call_000_34B3                            ; $53C2: $CD $B3 $34

jr_027_53C5:
    ld hl, $0014                                  ; $53C5: $21 $14 $00
    add hl, de                                    ; $53C8: $19
    ld [hl], $00                                  ; $53C9: $36 $00
    jp Jump_027_53EB                              ; $53CB: $C3 $EB $53


Call_027_53CE:
    call Call_000_32CC                            ; $53CE: $CD $CC $32
    jr c, jr_027_53D6                             ; $53D1: $38 $03

    jr nz, jr_027_53D5                            ; $53D3: $20 $00

jr_027_53D5:
    ret                                           ; $53D5: $C9


jr_027_53D6:
    ret                                           ; $53D6: $C9


    ld hl, $0108                                  ; $53D7: $21 $08 $01
    ld a, $D0                                     ; $53DA: $3E $D0
    call Call_000_34A2                            ; $53DC: $CD $A2 $34
    ret                                           ; $53DF: $C9


Jump_027_53E0:
    call Call_000_2CA9                            ; $53E0: $CD $A9 $2C
    jp nc, Jump_027_53EB                          ; $53E3: $D2 $EB $53

    call Call_000_2DB6                            ; $53E6: $CD $B6 $2D
    jr jr_027_53EE                                ; $53E9: $18 $03

Jump_027_53EB:
    jp Jump_000_2E25                              ; $53EB: $C3 $25 $2E


Jump_027_53EE:
jr_027_53EE:
    ret                                           ; $53EE: $C9


    call Call_000_2EE0                            ; $53EF: $CD $E0 $2E
    call Call_000_3517                            ; $53F2: $CD $17 $35
    jp c, Jump_027_5536                           ; $53F5: $DA $36 $55

    ld hl, $0018                                  ; $53F8: $21 $18 $00
    add hl, de                                    ; $53FB: $19
    ld a, [hl]                                    ; $53FC: $7E
    cp $00                                        ; $53FD: $FE $00
    jp z, Jump_027_5425                           ; $53FF: $CA $25 $54

    cp $04                                        ; $5402: $FE $04
    jp z, Jump_027_5439                           ; $5404: $CA $39 $54

    cp $08                                        ; $5407: $FE $08
    jp z, Jump_027_547C                           ; $5409: $CA $7C $54

    cp $0C                                        ; $540C: $FE $0C
    jp z, Jump_027_54A8                           ; $540E: $CA $A8 $54

    cp $10                                        ; $5411: $FE $10
    jp z, Jump_027_54FB                           ; $5413: $CA $FB $54

    cp $14                                        ; $5416: $FE $14
    jp z, Jump_027_5505                           ; $5418: $CA $05 $55

    cp $18                                        ; $541B: $FE $18
    jp z, Jump_027_550F                           ; $541D: $CA $0F $55

    cp $1C                                        ; $5420: $FE $1C
    jp z, Jump_027_5528                           ; $5422: $CA $28 $55

Jump_027_5425:
    call Call_000_2CA9                            ; $5425: $CD $A9 $2C
    jp nc, Jump_027_5533                          ; $5428: $D2 $33 $55

    inc hl                                        ; $542B: $23
    ld [hl], $07                                  ; $542C: $36 $07
    ld hl, $0204                                  ; $542E: $21 $04 $02
    ld a, $11                                     ; $5431: $3E $11
    call Call_000_34B3                            ; $5433: $CD $B3 $34
    jp Jump_027_5533                              ; $5436: $C3 $33 $55


Jump_027_5439:
    call Call_000_2CA2                            ; $5439: $CD $A2 $2C
    jr z, jr_027_5462                             ; $543C: $28 $24

    ld a, $11                                     ; $543E: $3E $11
    call Call_000_1360                            ; $5440: $CD $60 $13
    call Call_000_32CC                            ; $5443: $CD $CC $32
    jr c, jr_027_545A                             ; $5446: $38 $12

    jr nz, jr_027_5452                            ; $5448: $20 $08

    ld hl, $0300                                  ; $544A: $21 $00 $03
    call Call_000_2FEB                            ; $544D: $CD $EB $2F
    jr jr_027_5462                                ; $5450: $18 $10

jr_027_5452:
    ld hl, $0400                                  ; $5452: $21 $00 $04
    call Call_000_2FEB                            ; $5455: $CD $EB $2F
    jr jr_027_5462                                ; $5458: $18 $08

jr_027_545A:
    ld hl, $0500                                  ; $545A: $21 $00 $05
    call Call_000_2FEB                            ; $545D: $CD $EB $2F
    jr jr_027_5462                                ; $5460: $18 $00

jr_027_5462:
    ld hl, $0020                                  ; $5462: $21 $20 $00
    call Call_000_30B0                            ; $5465: $CD $B0 $30
    call Call_000_2CA9                            ; $5468: $CD $A9 $2C
    jp nc, Jump_027_5533                          ; $546B: $D2 $33 $55

    inc hl                                        ; $546E: $23
    ld [hl], $03                                  ; $546F: $36 $03
    ld hl, $0209                                  ; $5471: $21 $09 $02
    ld a, $11                                     ; $5474: $3E $11
    call Call_000_34B3                            ; $5476: $CD $B3 $34
    jp Jump_027_5533                              ; $5479: $C3 $33 $55


Jump_027_547C:
    ld hl, $0020                                  ; $547C: $21 $20 $00
    call Call_000_30B0                            ; $547F: $CD $B0 $30
    call Call_000_2CA9                            ; $5482: $CD $A9 $2C
    jp nc, Jump_027_5533                          ; $5485: $D2 $33 $55

    inc hl                                        ; $5488: $23
    ld [hl], $FF                                  ; $5489: $36 $FF
    call Call_000_32CC                            ; $548B: $CD $CC $32
    jr c, jr_027_549D                             ; $548E: $38 $0D

    jr nz, jr_027_5492                            ; $5490: $20 $00

jr_027_5492:
    ld hl, $0309                                  ; $5492: $21 $09 $03
    ld a, $03                                     ; $5495: $3E $03
    call Call_000_34B3                            ; $5497: $CD $B3 $34
    jp Jump_027_5533                              ; $549A: $C3 $33 $55


jr_027_549D:
    ld hl, $0109                                  ; $549D: $21 $09 $01
    ld a, $13                                     ; $54A0: $3E $13
    call Call_000_34B3                            ; $54A2: $CD $B3 $34
    jp Jump_027_5533                              ; $54A5: $C3 $33 $55


Jump_027_54A8:
    call Call_000_2CA2                            ; $54A8: $CD $A2 $2C
    jr z, jr_027_54EB                             ; $54AB: $28 $3E

    ld a, $B6                                     ; $54AD: $3E $B6
    call Call_000_1360                            ; $54AF: $CD $60 $13
    ld hl, $0021                                  ; $54B2: $21 $21 $00
    add hl, bc                                    ; $54B5: $09
    res 7, [hl]                                   ; $54B6: $CB $BE
    res 3, [hl]                                   ; $54B8: $CB $9E
    call Call_000_32CC                            ; $54BA: $CD $CC $32
    jr c, jr_027_54DD                             ; $54BD: $38 $1E

    jr nz, jr_027_54CF                            ; $54BF: $20 $0E

    ld hl, $0000                                  ; $54C1: $21 $00 $00
    call Call_000_2FEB                            ; $54C4: $CD $EB $2F
    ld hl, $F800                                  ; $54C7: $21 $00 $F8
    call Call_000_305D                            ; $54CA: $CD $5D $30
    jr jr_027_54EB                                ; $54CD: $18 $1C

jr_027_54CF:
    ld hl, $0000                                  ; $54CF: $21 $00 $00
    call Call_000_2FEB                            ; $54D2: $CD $EB $2F
    ld hl, $F700                                  ; $54D5: $21 $00 $F7
    call Call_000_305D                            ; $54D8: $CD $5D $30
    jr jr_027_54EB                                ; $54DB: $18 $0E

jr_027_54DD:
    ld hl, $0000                                  ; $54DD: $21 $00 $00
    call Call_000_2FEB                            ; $54E0: $CD $EB $2F
    ld hl, $F600                                  ; $54E3: $21 $00 $F6
    call Call_000_305D                            ; $54E6: $CD $5D $30
    jr jr_027_54EB                                ; $54E9: $18 $00

jr_027_54EB:
    call Call_027_5537                            ; $54EB: $CD $37 $55
    ld a, $FD                                     ; $54EE: $3E $FD
    ld h, $FF                                     ; $54F0: $26 $FF
    call Call_000_2D33                            ; $54F2: $CD $33 $2D
    jp nc, Jump_027_550F                          ; $54F5: $D2 $0F $55

    jp Jump_027_550F                              ; $54F8: $C3 $0F $55


Jump_027_54FB:
    ld a, $FF                                     ; $54FB: $3E $FF
    ld h, $FF                                     ; $54FD: $26 $FF
    call Call_000_2D33                            ; $54FF: $CD $33 $2D
    jp Jump_027_550F                              ; $5502: $C3 $0F $55


Jump_027_5505:
    ld a, $01                                     ; $5505: $3E $01
    ld h, $FF                                     ; $5507: $26 $FF
    call Call_000_2D33                            ; $5509: $CD $33 $2D
    jp Jump_027_550F                              ; $550C: $C3 $0F $55


Jump_027_550F:
    ld hl, $0020                                  ; $550F: $21 $20 $00
    call Call_000_30B0                            ; $5512: $CD $B0 $30
    ld hl, $0060                                  ; $5515: $21 $60 $00
    call Call_000_30FF                            ; $5518: $CD $FF $30
    jp nc, Jump_027_5533                          ; $551B: $D2 $33 $55

    ld a, $1C                                     ; $551E: $3E $1C
    ld h, $14                                     ; $5520: $26 $14
    call Call_000_2CBA                            ; $5522: $CD $BA $2C
    jp Jump_027_5536                              ; $5525: $C3 $36 $55


Jump_027_5528:
    call Call_000_2CA9                            ; $5528: $CD $A9 $2C
    jp nc, Jump_027_5533                          ; $552B: $D2 $33 $55

    call Call_000_2DB6                            ; $552E: $CD $B6 $2D
    jr jr_027_5536                                ; $5531: $18 $03

Jump_027_5533:
    call Call_000_2E25                            ; $5533: $CD $25 $2E

Jump_027_5536:
jr_027_5536:
    ret                                           ; $5536: $C9


Call_027_5537:
    call Call_000_32CC                            ; $5537: $CD $CC $32
    jr c, jr_027_5540                             ; $553A: $38 $04

    jr nz, jr_027_553E                            ; $553C: $20 $00

jr_027_553E:
    jr jr_027_5548                                ; $553E: $18 $08

jr_027_5540:
    ld hl, $0108                                  ; $5540: $21 $08 $01
    ld a, $12                                     ; $5543: $3E $12
    call Call_000_34A2                            ; $5545: $CD $A2 $34

jr_027_5548:
    ret                                           ; $5548: $C9


    call Call_000_2EE0                            ; $5549: $CD $E0 $2E
    call Call_000_3517                            ; $554C: $CD $17 $35
    jp c, Jump_027_564F                           ; $554F: $DA $4F $56

    ld hl, $0018                                  ; $5552: $21 $18 $00
    add hl, de                                    ; $5555: $19
    ld a, [hl]                                    ; $5556: $7E
    cp $00                                        ; $5557: $FE $00
    jp z, Jump_027_5587                           ; $5559: $CA $87 $55

    cp $04                                        ; $555C: $FE $04
    jp z, Jump_027_559F                           ; $555E: $CA $9F $55

    cp $08                                        ; $5561: $FE $08
    jp z, Jump_027_559F                           ; $5563: $CA $9F $55

    cp $0C                                        ; $5566: $FE $0C
    jp z, Jump_027_55A2                           ; $5568: $CA $A2 $55

    cp $10                                        ; $556B: $FE $10
    jp z, Jump_027_55AE                           ; $556D: $CA $AE $55

    cp $14                                        ; $5570: $FE $14
    jp z, Jump_027_55CE                           ; $5572: $CA $CE $55

    cp $18                                        ; $5575: $FE $18
    jp z, Jump_027_5616                           ; $5577: $CA $16 $56

    cp $1C                                        ; $557A: $FE $1C
    jp z, Jump_027_5635                           ; $557C: $CA $35 $56

    cp $20                                        ; $557F: $FE $20
    jp z, Jump_027_5641                           ; $5581: $CA $41 $56

    jp Jump_027_564C                              ; $5584: $C3 $4C $56


Jump_027_5587:
    call Call_000_2CA2                            ; $5587: $CD $A2 $2C
    jp z, Jump_027_5593                           ; $558A: $CA $93 $55

    ld hl, $0031                                  ; $558D: $21 $31 $00
    add hl, bc                                    ; $5590: $09
    ld [hl], $01                                  ; $5591: $36 $01

Jump_027_5593:
    call Call_000_2CA9                            ; $5593: $CD $A9 $2C
    jp nc, Jump_027_564C                          ; $5596: $D2 $4C $56

    inc hl                                        ; $5599: $23
    ld [hl], $04                                  ; $559A: $36 $04
    jp Jump_027_564C                              ; $559C: $C3 $4C $56


Jump_027_559F:
    jp Jump_027_564C                              ; $559F: $C3 $4C $56


Jump_027_55A2:
    call Call_000_2CA9                            ; $55A2: $CD $A9 $2C
    jp nc, Jump_027_564C                          ; $55A5: $D2 $4C $56

    inc hl                                        ; $55A8: $23
    ld [hl], $06                                  ; $55A9: $36 $06
    jp Jump_027_564C                              ; $55AB: $C3 $4C $56


Jump_027_55AE:
    call Call_000_2CA2                            ; $55AE: $CD $A2 $2C
    jp z, Jump_027_55BC                           ; $55B1: $CA $BC $55

    ld hl, $0021                                  ; $55B4: $21 $21 $00
    add hl, bc                                    ; $55B7: $09
    res 7, [hl]                                   ; $55B8: $CB $BE
    res 3, [hl]                                   ; $55BA: $CB $9E

Jump_027_55BC:
    call Call_000_2CA9                            ; $55BC: $CD $A9 $2C
    jp nc, Jump_027_564C                          ; $55BF: $D2 $4C $56

    inc hl                                        ; $55C2: $23
    ld [hl], $00                                  ; $55C3: $36 $00
    ld hl, $009C                                  ; $55C5: $21 $9C $00
    add hl, bc                                    ; $55C8: $09
    ld [hl], $0B                                  ; $55C9: $36 $0B
    jp Jump_027_564C                              ; $55CB: $C3 $4C $56


Jump_027_55CE:
    call Call_000_2CA2                            ; $55CE: $CD $A2 $2C
    jp z, Jump_027_55FD                           ; $55D1: $CA $FD $55

    ld hl, $009C                                  ; $55D4: $21 $9C $00
    add hl, bc                                    ; $55D7: $09
    ld a, [hl]                                    ; $55D8: $7E
    cp $01                                        ; $55D9: $FE $01
    jr nz, jr_027_55ED                            ; $55DB: $20 $10

    ld hl, $0208                                  ; $55DD: $21 $08 $02
    ld a, $23                                     ; $55E0: $3E $23
    call Call_000_34C4                            ; $55E2: $CD $C4 $34
    ld hl, $0208                                  ; $55E5: $21 $08 $02
    ld a, $23                                     ; $55E8: $3E $23
    call Call_000_34D2                            ; $55EA: $CD $D2 $34

jr_027_55ED:
    ld hl, $009C                                  ; $55ED: $21 $9C $00
    add hl, bc                                    ; $55F0: $09
    bit 0, [hl]                                   ; $55F1: $CB $46
    jr nz, jr_027_55FA                            ; $55F3: $20 $05

    call Call_027_5885                            ; $55F5: $CD $85 $58
    jr jr_027_55FD                                ; $55F8: $18 $03

jr_027_55FA:
    call Call_027_58D7                            ; $55FA: $CD $D7 $58

Jump_027_55FD:
jr_027_55FD:
    call Call_000_2CA9                            ; $55FD: $CD $A9 $2C
    jp nc, Jump_027_564C                          ; $5600: $D2 $4C $56

    ld hl, $009C                                  ; $5603: $21 $9C $00
    add hl, bc                                    ; $5606: $09
    ld a, [hl]                                    ; $5607: $7E
    cp $01                                        ; $5608: $FE $01
    jp nz, Jump_027_564C                          ; $560A: $C2 $4C $56

    ld hl, $001D                                  ; $560D: $21 $1D $00
    add hl, de                                    ; $5610: $19
    ld [hl], $14                                  ; $5611: $36 $14
    jp Jump_027_564C                              ; $5613: $C3 $4C $56


Jump_027_5616:
    call Call_000_2CA9                            ; $5616: $CD $A9 $2C
    jp nc, Jump_027_564C                          ; $5619: $D2 $4C $56

    ld hl, $009C                                  ; $561C: $21 $9C $00
    add hl, bc                                    ; $561F: $09
    dec [hl]                                      ; $5620: $35
    jr nz, jr_027_562C                            ; $5621: $20 $09

    ld hl, $001D                                  ; $5623: $21 $1D $00
    add hl, de                                    ; $5626: $19
    ld [hl], $14                                  ; $5627: $36 $14
    jp Jump_027_564C                              ; $5629: $C3 $4C $56


jr_027_562C:
    ld hl, $0014                                  ; $562C: $21 $14 $00
    add hl, de                                    ; $562F: $19
    ld [hl], $10                                  ; $5630: $36 $10
    jp Jump_027_564C                              ; $5632: $C3 $4C $56


Jump_027_5635:
    call Call_000_2CA9                            ; $5635: $CD $A9 $2C
    jp nc, Jump_027_564C                          ; $5638: $D2 $4C $56

    inc hl                                        ; $563B: $23
    ld [hl], $0A                                  ; $563C: $36 $0A
    jp Jump_027_564C                              ; $563E: $C3 $4C $56


Jump_027_5641:
    call Call_000_2CA9                            ; $5641: $CD $A9 $2C
    jp nc, Jump_027_564C                          ; $5644: $D2 $4C $56

    call Call_000_2DB6                            ; $5647: $CD $B6 $2D
    jr jr_027_564F                                ; $564A: $18 $03

Jump_027_564C:
    jp Jump_000_2E25                              ; $564C: $C3 $25 $2E


Jump_027_564F:
jr_027_564F:
    ret                                           ; $564F: $C9


    call Call_000_2EE0                            ; $5650: $CD $E0 $2E
    call Call_000_3517                            ; $5653: $CD $17 $35
    jp c, Jump_027_580D                           ; $5656: $DA $0D $58

    ld hl, $0018                                  ; $5659: $21 $18 $00
    add hl, de                                    ; $565C: $19
    ld a, [hl]                                    ; $565D: $7E
    cp $00                                        ; $565E: $FE $00
    jp z, Jump_027_5698                           ; $5660: $CA $98 $56

    cp $04                                        ; $5663: $FE $04
    jp z, Jump_027_56B8                           ; $5665: $CA $B8 $56

    cp $08                                        ; $5668: $FE $08
    jp z, Jump_027_56E2                           ; $566A: $CA $E2 $56

    cp $0C                                        ; $566D: $FE $0C
    jp z, Jump_027_5745                           ; $566F: $CA $45 $57

    cp $10                                        ; $5672: $FE $10
    jp z, Jump_027_5778                           ; $5674: $CA $78 $57

    cp $14                                        ; $5677: $FE $14
    jp z, Jump_027_578A                           ; $5679: $CA $8A $57

    cp $18                                        ; $567C: $FE $18
    jp z, Jump_027_5796                           ; $567E: $CA $96 $57

    cp $1C                                        ; $5681: $FE $1C
    jp z, Jump_027_57A2                           ; $5683: $CA $A2 $57

    cp $20                                        ; $5686: $FE $20
    jp z, Jump_027_57D4                           ; $5688: $CA $D4 $57

    cp $24                                        ; $568B: $FE $24
    jp z, Jump_027_57FF                           ; $568D: $CA $FF $57

    cp $28                                        ; $5690: $FE $28
    jp z, Jump_027_57EC                           ; $5692: $CA $EC $57

    jp Jump_027_580A                              ; $5695: $C3 $0A $58


Jump_027_5698:
    call Call_000_2CA2                            ; $5698: $CD $A2 $2C
    jp z, Jump_027_56A4                           ; $569B: $CA $A4 $56

    ld hl, $0031                                  ; $569E: $21 $31 $00
    add hl, bc                                    ; $56A1: $09
    ld [hl], $01                                  ; $56A2: $36 $01

Jump_027_56A4:
    call Call_000_2CA9                            ; $56A4: $CD $A9 $2C
    jp nc, Jump_027_580A                          ; $56A7: $D2 $0A $58

    inc hl                                        ; $56AA: $23
    ld [hl], $0A                                  ; $56AB: $36 $0A
    ld hl, $020C                                  ; $56AD: $21 $0C $02
    ld a, $50                                     ; $56B0: $3E $50
    call Call_000_34B3                            ; $56B2: $CD $B3 $34
    jp Jump_027_580A                              ; $56B5: $C3 $0A $58


Jump_027_56B8:
    call Call_000_2CA2                            ; $56B8: $CD $A2 $2C
    jp z, Jump_027_56D3                           ; $56BB: $CA $D3 $56

    ld a, $11                                     ; $56BE: $3E $11
    call Call_000_1360                            ; $56C0: $CD $60 $13
    ld hl, $0021                                  ; $56C3: $21 $21 $00
    add hl, bc                                    ; $56C6: $09
    res 7, [hl]                                   ; $56C7: $CB $BE
    set 3, [hl]                                   ; $56C9: $CB $DE
    res 5, [hl]                                   ; $56CB: $CB $AE
    ld hl, $0400                                  ; $56CD: $21 $00 $04
    call Call_000_2FEB                            ; $56D0: $CD $EB $2F

Jump_027_56D3:
    call Call_000_3069                            ; $56D3: $CD $69 $30
    call Call_000_2CA9                            ; $56D6: $CD $A9 $2C
    jp nc, Jump_027_580A                          ; $56D9: $D2 $0A $58

    inc hl                                        ; $56DC: $23
    ld [hl], $14                                  ; $56DD: $36 $14
    jp Jump_027_580A                              ; $56DF: $C3 $0A $58


Jump_027_56E2:
    call Call_000_2CA2                            ; $56E2: $CD $A2 $2C
    jp z, Jump_027_56FD                           ; $56E5: $CA $FD $56

    ld a, $14                                     ; $56E8: $3E $14
    call Call_000_1360                            ; $56EA: $CD $60 $13
    ld hl, $0021                                  ; $56ED: $21 $21 $00
    add hl, bc                                    ; $56F0: $09
    res 7, [hl]                                   ; $56F1: $CB $BE
    res 3, [hl]                                   ; $56F3: $CB $9E
    res 5, [hl]                                   ; $56F5: $CB $AE
    ld hl, $0600                                  ; $56F7: $21 $00 $06
    call Call_000_2FEB                            ; $56FA: $CD $EB $2F

Jump_027_56FD:
    call Call_000_3069                            ; $56FD: $CD $69 $30
    ld hl, $020C                                  ; $5700: $21 $0C $02
    ld a, $12                                     ; $5703: $3E $12
    call Call_000_34A2                            ; $5705: $CD $A2 $34
    call Call_000_2CA9                            ; $5708: $CD $A9 $2C
    jp nc, Jump_027_580A                          ; $570B: $D2 $0A $58

    call Call_000_3262                            ; $570E: $CD $62 $32
    jp nc, Jump_027_5731                          ; $5711: $D2 $31 $57

    jp nz, Jump_027_573B                          ; $5714: $C2 $3B $57

    ld a, $0C                                     ; $5717: $3E $0C
    ld h, $FF                                     ; $5719: $26 $FF
    call Call_000_2D19                            ; $571B: $CD $19 $2D
    ld hl, $0212                                  ; $571E: $21 $12 $02
    ld a, $12                                     ; $5721: $3E $12
    call Call_000_34A2                            ; $5723: $CD $A2 $34
    ld hl, $0112                                  ; $5726: $21 $12 $01
    ld a, $92                                     ; $5729: $3E $92
    call Call_000_34B3                            ; $572B: $CD $B3 $34
    jp Jump_027_580D                              ; $572E: $C3 $0D $58


Jump_027_5731:
    ld a, $28                                     ; $5731: $3E $28
    ld h, $0A                                     ; $5733: $26 $0A
    call Call_000_2D19                            ; $5735: $CD $19 $2D
    jp Jump_027_580D                              ; $5738: $C3 $0D $58


Jump_027_573B:
    ld a, $28                                     ; $573B: $3E $28
    ld h, $14                                     ; $573D: $26 $14
    call Call_000_2D19                            ; $573F: $CD $19 $2D
    jp Jump_027_580D                              ; $5742: $C3 $0D $58


Jump_027_5745:
    call Call_000_2CA2                            ; $5745: $CD $A2 $2C
    jp z, Jump_027_5765                           ; $5748: $CA $65 $57

    ld a, $B6                                     ; $574B: $3E $B6
    call Call_000_1360                            ; $574D: $CD $60 $13
    ld hl, $0021                                  ; $5750: $21 $21 $00
    add hl, bc                                    ; $5753: $09
    set 7, [hl]                                   ; $5754: $CB $FE
    inc hl                                        ; $5756: $23
    set 7, [hl]                                   ; $5757: $CB $FE
    ld hl, $F600                                  ; $5759: $21 $00 $F6
    call Call_000_2FEB                            ; $575C: $CD $EB $2F
    ld hl, $FB00                                  ; $575F: $21 $00 $FB
    call Call_000_305D                            ; $5762: $CD $5D $30

Jump_027_5765:
    ld hl, $0060                                  ; $5765: $21 $60 $00
    call Call_000_30FF                            ; $5768: $CD $FF $30
    jp nc, Jump_027_580A                          ; $576B: $D2 $0A $58

    ld a, $10                                     ; $576E: $3E $10
    ld h, $01                                     ; $5770: $26 $01
    call Call_000_2CBA                            ; $5772: $CD $BA $2C
    jp Jump_027_580D                              ; $5775: $C3 $0D $58


Jump_027_5778:
    call Call_000_2CA9                            ; $5778: $CD $A9 $2C
    jp nc, Jump_027_580A                          ; $577B: $D2 $0A $58

    inc hl                                        ; $577E: $23
    ld [hl], $01                                  ; $577F: $36 $01
    ld hl, $0022                                  ; $5781: $21 $22 $00
    add hl, bc                                    ; $5784: $09
    res 7, [hl]                                   ; $5785: $CB $BE
    jp Jump_027_580A                              ; $5787: $C3 $0A $58


Jump_027_578A:
    call Call_000_2CA9                            ; $578A: $CD $A9 $2C
    jp nc, Jump_027_580A                          ; $578D: $D2 $0A $58

    inc hl                                        ; $5790: $23
    ld [hl], $01                                  ; $5791: $36 $01
    jp Jump_027_580A                              ; $5793: $C3 $0A $58


Jump_027_5796:
    call Call_000_2CA9                            ; $5796: $CD $A9 $2C
    jp nc, Jump_027_580A                          ; $5799: $D2 $0A $58

    inc hl                                        ; $579C: $23
    ld [hl], $1E                                  ; $579D: $36 $1E
    jp Jump_027_580A                              ; $579F: $C3 $0A $58


Jump_027_57A2:
    ld hl, HeaderLogo                             ; $57A2: $21 $04 $01
    ld a, $9F                                     ; $57A5: $3E $9F
    call Call_000_34A2                            ; $57A7: $CD $A2 $34
    ld a, $05                                     ; $57AA: $3E $05
    call Call_000_3963                            ; $57AC: $CD $63 $39
    call Call_000_2CA2                            ; $57AF: $CD $A2 $2C
    jp z, Jump_027_57BB                           ; $57B2: $CA $BB $57

    ld hl, $0034                                  ; $57B5: $21 $34 $00
    add hl, bc                                    ; $57B8: $09
    ld [hl], $03                                  ; $57B9: $36 $03

Jump_027_57BB:
    call Call_000_2CA9                            ; $57BB: $CD $A9 $2C
    jp nc, Jump_027_580A                          ; $57BE: $D2 $0A $58

    inc hl                                        ; $57C1: $23
    ld [hl], $0A                                  ; $57C2: $36 $0A
    ld hl, $0108                                  ; $57C4: $21 $08 $01
    ld a, $8F                                     ; $57C7: $3E $8F
    call Call_000_34A2                            ; $57C9: $CD $A2 $34
    ld a, $07                                     ; $57CC: $3E $07
    call Call_000_3963                            ; $57CE: $CD $63 $39
    jp Jump_027_580A                              ; $57D1: $C3 $0A $58


Jump_027_57D4:
    call Call_000_2CA2                            ; $57D4: $CD $A2 $2C
    jp z, Jump_027_57E0                           ; $57D7: $CA $E0 $57

    ld hl, $0034                                  ; $57DA: $21 $34 $00
    add hl, bc                                    ; $57DD: $09
    ld [hl], $00                                  ; $57DE: $36 $00

Jump_027_57E0:
    call Call_000_2CA9                            ; $57E0: $CD $A9 $2C
    jp nc, Jump_027_580A                          ; $57E3: $D2 $0A $58

    inc hl                                        ; $57E6: $23
    ld [hl], $08                                  ; $57E7: $36 $08
    jp Jump_027_580A                              ; $57E9: $C3 $0A $58


Jump_027_57EC:
    call Call_000_326C                            ; $57EC: $CD $6C $32
    jp nc, Jump_027_57FF                          ; $57EF: $D2 $FF $57

    jp nz, Jump_027_57FF                          ; $57F2: $C2 $FF $57

    ld a, $0C                                     ; $57F5: $3E $0C
    ld h, $FF                                     ; $57F7: $26 $FF
    call Call_000_2D19                            ; $57F9: $CD $19 $2D
    jp Jump_027_580D                              ; $57FC: $C3 $0D $58


Jump_027_57FF:
    call Call_000_2CA9                            ; $57FF: $CD $A9 $2C
    jp nc, Jump_027_580A                          ; $5802: $D2 $0A $58

    call Call_000_2DB6                            ; $5805: $CD $B6 $2D
    jr jr_027_580D                                ; $5808: $18 $03

Jump_027_580A:
    call Call_000_2E25                            ; $580A: $CD $25 $2E

Jump_027_580D:
jr_027_580D:
    ret                                           ; $580D: $C9


Call_027_580E:
    ld a, $14                                     ; $580E: $3E $14
    call Call_000_1360                            ; $5810: $CD $60 $13
    push bc                                       ; $5813: $C5
    push de                                       ; $5814: $D5
    ld hl, $0030                                  ; $5815: $21 $30 $00
    add hl, bc                                    ; $5818: $09
    ld a, [hl]                                    ; $5819: $7E
    or a                                          ; $581A: $B7
    jr nz, jr_027_5820                            ; $581B: $20 $03

    xor a                                         ; $581D: $AF
    jr jr_027_5821                                ; $581E: $18 $01

jr_027_5820:
    scf                                           ; $5820: $37

jr_027_5821:
    ld hl, $0022                                  ; $5821: $21 $22 $00
    push af                                       ; $5824: $F5
    add hl, bc                                    ; $5825: $09
    pop af                                        ; $5826: $F1
    ld a, [hl]                                    ; $5827: $7E
    push af                                       ; $5828: $F5
    call Call_000_25D1                            ; $5829: $CD $D1 $25
    ld hl, $0021                                  ; $582C: $21 $21 $00
    add hl, de                                    ; $582F: $19
    ld [hl], $24                                  ; $5830: $36 $24
    inc hl                                        ; $5832: $23
    ld [hl], $A2                                  ; $5833: $36 $A2
    inc hl                                        ; $5835: $23
    ld [hl], $49                                  ; $5836: $36 $49
    ld hl, $0011                                  ; $5838: $21 $11 $00
    add hl, de                                    ; $583B: $19
    ld [hl], $02                                  ; $583C: $36 $02
    inc hl                                        ; $583E: $23
    ld [hl], $CA                                  ; $583F: $36 $CA
    inc hl                                        ; $5841: $23
    ld [hl], $65                                  ; $5842: $36 $65
    inc hl                                        ; $5844: $23
    ld [hl], $00                                  ; $5845: $36 $00
    ld hl, $001C                                  ; $5847: $21 $1C $00
    add hl, de                                    ; $584A: $19
    ld [hl], $00                                  ; $584B: $36 $00
    inc hl                                        ; $584D: $23
    ld [hl], $00                                  ; $584E: $36 $00
    ld hl, $0029                                  ; $5850: $21 $29 $00
    add hl, de                                    ; $5853: $19
    ld [hl], $00                                  ; $5854: $36 $00
    call Call_000_2614                            ; $5856: $CD $14 $26
    ld hl, $1800                                  ; $5859: $21 $00 $18
    call Call_000_2F79                            ; $585C: $CD $79 $2F
    ld hl, $F400                                  ; $585F: $21 $00 $F4
    call Call_000_2F42                            ; $5862: $CD $42 $2F
    pop af                                        ; $5865: $F1
    jr c, jr_027_5876                             ; $5866: $38 $0E

    bit 1, a                                      ; $5868: $CB $4F
    jr nz, jr_027_5871                            ; $586A: $20 $05

    ld hl, $0200                                  ; $586C: $21 $00 $02
    jr jr_027_5879                                ; $586F: $18 $08

jr_027_5871:
    ld hl, $0300                                  ; $5871: $21 $00 $03
    jr jr_027_5879                                ; $5874: $18 $03

jr_027_5876:
    ld hl, $0400                                  ; $5876: $21 $00 $04

jr_027_5879:
    call Call_000_2FEB                            ; $5879: $CD $EB $2F
    ld hl, $0000                                  ; $587C: $21 $00 $00
    call Call_000_305D                            ; $587F: $CD $5D $30
    pop de                                        ; $5882: $D1
    pop bc                                        ; $5883: $C1
    ret                                           ; $5884: $C9


Call_027_5885:
    ld a, $14                                     ; $5885: $3E $14
    call Call_000_1360                            ; $5887: $CD $60 $13
    push bc                                       ; $588A: $C5
    push de                                       ; $588B: $D5
    call Call_000_25D1                            ; $588C: $CD $D1 $25
    ld hl, $0021                                  ; $588F: $21 $21 $00
    add hl, de                                    ; $5892: $19
    ld [hl], $27                                  ; $5893: $36 $27
    inc hl                                        ; $5895: $23
    ld [hl], $29                                  ; $5896: $36 $29
    inc hl                                        ; $5898: $23
    ld [hl], $59                                  ; $5899: $36 $59
    ld hl, $0011                                  ; $589B: $21 $11 $00
    add hl, de                                    ; $589E: $19
    ld [hl], $02                                  ; $589F: $36 $02
    inc hl                                        ; $58A1: $23
    ld [hl], $CA                                  ; $58A2: $36 $CA
    inc hl                                        ; $58A4: $23
    ld [hl], $65                                  ; $58A5: $36 $65
    inc hl                                        ; $58A7: $23
    ld [hl], $00                                  ; $58A8: $36 $00
    ld hl, $001C                                  ; $58AA: $21 $1C $00
    add hl, de                                    ; $58AD: $19
    ld [hl], $00                                  ; $58AE: $36 $00
    inc hl                                        ; $58B0: $23
    ld [hl], $00                                  ; $58B1: $36 $00
    ld hl, $0029                                  ; $58B3: $21 $29 $00
    add hl, de                                    ; $58B6: $19
    ld [hl], $00                                  ; $58B7: $36 $00
    call Call_000_2614                            ; $58B9: $CD $14 $26
    ld hl, $1800                                  ; $58BC: $21 $00 $18
    call Call_000_2F79                            ; $58BF: $CD $79 $2F
    ld hl, $F400                                  ; $58C2: $21 $00 $F4
    call Call_000_2F42                            ; $58C5: $CD $42 $2F
    ld hl, $0600                                  ; $58C8: $21 $00 $06
    call Call_000_2FEB                            ; $58CB: $CD $EB $2F
    ld hl, $0100                                  ; $58CE: $21 $00 $01
    call Call_000_305D                            ; $58D1: $CD $5D $30
    pop de                                        ; $58D4: $D1
    pop bc                                        ; $58D5: $C1
    ret                                           ; $58D6: $C9


Call_027_58D7:
    ld a, $14                                     ; $58D7: $3E $14
    call Call_000_1360                            ; $58D9: $CD $60 $13
    push bc                                       ; $58DC: $C5
    push de                                       ; $58DD: $D5
    call Call_000_25E1                            ; $58DE: $CD $E1 $25
    ld hl, $0021                                  ; $58E1: $21 $21 $00
    add hl, de                                    ; $58E4: $19
    ld [hl], $27                                  ; $58E5: $36 $27
    inc hl                                        ; $58E7: $23
    ld [hl], $42                                  ; $58E8: $36 $42
    inc hl                                        ; $58EA: $23
    ld [hl], $59                                  ; $58EB: $36 $59
    ld hl, $0011                                  ; $58ED: $21 $11 $00
    add hl, de                                    ; $58F0: $19
    ld [hl], $02                                  ; $58F1: $36 $02
    inc hl                                        ; $58F3: $23
    ld [hl], $CA                                  ; $58F4: $36 $CA
    inc hl                                        ; $58F6: $23
    ld [hl], $65                                  ; $58F7: $36 $65
    inc hl                                        ; $58F9: $23
    ld [hl], $00                                  ; $58FA: $36 $00
    ld hl, $001C                                  ; $58FC: $21 $1C $00
    add hl, de                                    ; $58FF: $19
    ld [hl], $00                                  ; $5900: $36 $00
    inc hl                                        ; $5902: $23
    ld [hl], $00                                  ; $5903: $36 $00
    ld hl, $0029                                  ; $5905: $21 $29 $00
    add hl, de                                    ; $5908: $19
    ld [hl], $00                                  ; $5909: $36 $00
    call Call_000_2614                            ; $590B: $CD $14 $26
    ld hl, $1800                                  ; $590E: $21 $00 $18
    call Call_000_2F79                            ; $5911: $CD $79 $2F
    ld hl, $F400                                  ; $5914: $21 $00 $F4
    call Call_000_2F42                            ; $5917: $CD $42 $2F
    ld hl, $0600                                  ; $591A: $21 $00 $06
    call Call_000_2FEB                            ; $591D: $CD $EB $2F
    ld hl, $FF00                                  ; $5920: $21 $00 $FF
    call Call_000_305D                            ; $5923: $CD $5D $30
    pop de                                        ; $5926: $D1
    pop bc                                        ; $5927: $C1
    ret                                           ; $5928: $C9


    ld hl, $0010                                  ; $5929: $21 $10 $00
    call Call_000_26F3                            ; $592C: $CD $F3 $26
    jr c, jr_027_593E                             ; $592F: $38 $0D

    ld hl, $FFF0                                  ; $5931: $21 $F0 $FF
    call Call_000_315D                            ; $5934: $CD $5D $31
    jp c, Jump_027_593E                           ; $5937: $DA $3E $59

    call Call_000_2E25                            ; $593A: $CD $25 $2E
    ret                                           ; $593D: $C9


Jump_027_593E:
jr_027_593E:
    call Call_000_27F5                            ; $593E: $CD $F5 $27
    ret                                           ; $5941: $C9


    ld hl, $0010                                  ; $5942: $21 $10 $00
    call Call_000_26F3                            ; $5945: $CD $F3 $26
    jr c, jr_027_5957                             ; $5948: $38 $0D

    ld hl, $0010                                  ; $594A: $21 $10 $00
    call Call_000_315D                            ; $594D: $CD $5D $31
    jp c, Jump_027_5957                           ; $5950: $DA $57 $59

    call Call_000_2E25                            ; $5953: $CD $25 $2E
    ret                                           ; $5956: $C9


Jump_027_5957:
jr_027_5957:
    call Call_000_27F5                            ; $5957: $CD $F5 $27
    ret                                           ; $595A: $C9


    call Call_000_31B6                            ; $595B: $CD $B6 $31
    jp c, Jump_027_5A3F                           ; $595E: $DA $3F $5A

    jp z, Jump_027_5970                           ; $5961: $CA $70 $59

    call Call_000_3A2A                            ; $5964: $CD $2A $3A
    jp c, Jump_027_59EB                           ; $5967: $DA $EB $59

    jp z, Jump_027_59F6                           ; $596A: $CA $F6 $59

    jp Jump_027_5A3F                              ; $596D: $C3 $3F $5A


Jump_027_5970:
    call Call_000_3A2A                            ; $5970: $CD $2A $3A
    jp c, Jump_027_5A18                           ; $5973: $DA $18 $5A

    jp z, Jump_027_5A23                           ; $5976: $CA $23 $5A

    call Call_000_39D3                            ; $5979: $CD $D3 $39
    jp nc, Jump_027_5A3F                          ; $597C: $D2 $3F $5A

    jp z, Jump_027_5988                           ; $597F: $CA $88 $59

    jp nz, Jump_027_59AB                          ; $5982: $C2 $AB $59

    jp Jump_027_5A3F                              ; $5985: $C3 $3F $5A


Jump_027_5988:
    call Call_000_3209                            ; $5988: $CD $09 $32
    jr c, jr_027_5996                             ; $598B: $38 $09

    ld hl, $3AD4                                  ; $598D: $21 $D4 $3A
    call Call_000_2B78                            ; $5990: $CD $78 $2B
    jp c, Jump_027_5A18                           ; $5993: $DA $18 $5A

jr_027_5996:
    ld hl, $3B14                                  ; $5996: $21 $14 $3B
    call Call_000_2B78                            ; $5999: $CD $78 $2B
    jp c, Jump_027_59EB                           ; $599C: $DA $EB $59

    ld hl, $3AB9                                  ; $599F: $21 $B9 $3A
    call Call_000_2B78                            ; $59A2: $CD $78 $2B
    jp c, Jump_027_59D7                           ; $59A5: $DA $D7 $59

    jp Jump_027_5A3F                              ; $59A8: $C3 $3F $5A


Jump_027_59AB:
    call Call_000_3209                            ; $59AB: $CD $09 $32
    jp c, Jump_027_59C2                           ; $59AE: $DA $C2 $59

    cp $01                                        ; $59B1: $FE $01
    jr z, jr_027_59C2                             ; $59B3: $28 $0D

    cp $02                                        ; $59B5: $FE $02
    jr z, jr_027_59B9                             ; $59B7: $28 $00

jr_027_59B9:
    ld hl, $3AE5                                  ; $59B9: $21 $E5 $3A
    call Call_000_2B78                            ; $59BC: $CD $78 $2B
    jp c, Jump_027_5A23                           ; $59BF: $DA $23 $5A

Jump_027_59C2:
jr_027_59C2:
    ld hl, $3B14                                  ; $59C2: $21 $14 $3B
    call Call_000_2B78                            ; $59C5: $CD $78 $2B
    jp c, Jump_027_5A0D                           ; $59C8: $DA $0D $5A

    ld hl, $3AC2                                  ; $59CB: $21 $C2 $3A
    call Call_000_2B78                            ; $59CE: $CD $78 $2B
    jp c, Jump_027_59F6                           ; $59D1: $DA $F6 $59

    jp Jump_027_5A3F                              ; $59D4: $C3 $3F $5A


Jump_027_59D7:
    call Call_000_32C5                            ; $59D7: $CD $C5 $32
    jp nz, Jump_027_5A3F                          ; $59DA: $C2 $3F $5A

    call Call_000_2C23                            ; $59DD: $CD $23 $2C
    ld a, $40                                     ; $59E0: $3E $40
    call Call_000_32E2                            ; $59E2: $CD $E2 $32
    call Call_000_34F1                            ; $59E5: $CD $F1 $34
    jp Jump_027_5A3D                              ; $59E8: $C3 $3D $5A


Jump_027_59EB:
    call Call_000_2C23                            ; $59EB: $CD $23 $2C
    ld a, $42                                     ; $59EE: $3E $42
    call Call_000_32E2                            ; $59F0: $CD $E2 $32
    jp Jump_027_5A3D                              ; $59F3: $C3 $3D $5A


Jump_027_59F6:
    call Call_000_2C23                            ; $59F6: $CD $23 $2C
    ld a, $44                                     ; $59F9: $3E $44
    call Call_000_32E2                            ; $59FB: $CD $E2 $32
    ld hl, $009C                                  ; $59FE: $21 $9C $00
    add hl, bc                                    ; $5A01: $09
    ld [hl], $00                                  ; $5A02: $36 $00
    ld hl, $009D                                  ; $5A04: $21 $9D $00
    add hl, bc                                    ; $5A07: $09
    ld [hl], $00                                  ; $5A08: $36 $00
    jp Jump_027_5A3D                              ; $5A0A: $C3 $3D $5A


Jump_027_5A0D:
    call Call_000_2C23                            ; $5A0D: $CD $23 $2C
    ld a, $46                                     ; $5A10: $3E $46
    call Call_000_32E2                            ; $5A12: $CD $E2 $32
    jp Jump_027_5A3D                              ; $5A15: $C3 $3D $5A


Jump_027_5A18:
    call Call_000_2C23                            ; $5A18: $CD $23 $2C
    ld a, $4A                                     ; $5A1B: $3E $4A
    call Call_000_32E2                            ; $5A1D: $CD $E2 $32
    jp Jump_027_5A3D                              ; $5A20: $C3 $3D $5A


Jump_027_5A23:
    call Call_000_2C23                            ; $5A23: $CD $23 $2C
    ld a, $26                                     ; $5A26: $3E $26
    call Call_000_32E2                            ; $5A28: $CD $E2 $32
    ld hl, $0021                                  ; $5A2B: $21 $21 $00
    add hl, bc                                    ; $5A2E: $09
    set 7, [hl]                                   ; $5A2F: $CB $FE
    ld hl, $009C                                  ; $5A31: $21 $9C $00
    add hl, bc                                    ; $5A34: $09
    ld [hl], $01                                  ; $5A35: $36 $01
    jp Jump_027_5A3D                              ; $5A37: $C3 $3D $5A


    jp Jump_027_5A3D                              ; $5A3A: $C3 $3D $5A


Jump_027_5A3D:
    scf                                           ; $5A3D: $37
    ret                                           ; $5A3E: $C9


Jump_027_5A3F:
    or a                                          ; $5A3F: $B7
    ret                                           ; $5A40: $C9


    call Call_000_2EE0                            ; $5A41: $CD $E0 $2E
    call Call_000_3517                            ; $5A44: $CD $17 $35
    jp c, Jump_027_5A8D                           ; $5A47: $DA $8D $5A

    ld hl, $0018                                  ; $5A4A: $21 $18 $00
    add hl, de                                    ; $5A4D: $19
    ld a, [hl]                                    ; $5A4E: $7E
    cp $04                                        ; $5A4F: $FE $04
    jp z, Jump_027_5A61                           ; $5A51: $CA $61 $5A

    cp $08                                        ; $5A54: $FE $08
    jp z, Jump_027_5A6D                           ; $5A56: $CA $6D $5A

    cp $0C                                        ; $5A59: $FE $0C
    jp z, Jump_027_5A7F                           ; $5A5B: $CA $7F $5A

    jp Jump_027_5A8A                              ; $5A5E: $C3 $8A $5A


Jump_027_5A61:
    call Call_000_2CA9                            ; $5A61: $CD $A9 $2C
    jp nc, Jump_027_5A8A                          ; $5A64: $D2 $8A $5A

    inc hl                                        ; $5A67: $23
    ld [hl], $0A                                  ; $5A68: $36 $0A
    jp Jump_027_5A8A                              ; $5A6A: $C3 $8A $5A


Jump_027_5A6D:
    call Call_000_2CA2                            ; $5A6D: $CD $A2 $2C
    jp z, Jump_027_5A8A                           ; $5A70: $CA $8A $5A

    call Call_027_617F                            ; $5A73: $CD $7F $61
    ld hl, $001D                                  ; $5A76: $21 $1D $00
    add hl, de                                    ; $5A79: $19
    ld [hl], $14                                  ; $5A7A: $36 $14
    jp Jump_027_5A8A                              ; $5A7C: $C3 $8A $5A


Jump_027_5A7F:
    call Call_000_2CA9                            ; $5A7F: $CD $A9 $2C
    jp nc, Jump_027_5A8A                          ; $5A82: $D2 $8A $5A

    call Call_000_2DB6                            ; $5A85: $CD $B6 $2D
    jr jr_027_5A8D                                ; $5A88: $18 $03

Jump_027_5A8A:
    jp Jump_000_2E25                              ; $5A8A: $C3 $25 $2E


Jump_027_5A8D:
jr_027_5A8D:
    ret                                           ; $5A8D: $C9


    call Call_000_2EE0                            ; $5A8E: $CD $E0 $2E
    call Call_000_3517                            ; $5A91: $CD $17 $35
    jp c, Jump_027_5BA8                           ; $5A94: $DA $A8 $5B

    ld hl, $0018                                  ; $5A97: $21 $18 $00
    add hl, de                                    ; $5A9A: $19
    ld a, [hl]                                    ; $5A9B: $7E
    cp $00                                        ; $5A9C: $FE $00
    jp z, Jump_027_5ACC                           ; $5A9E: $CA $CC $5A

    cp $04                                        ; $5AA1: $FE $04
    jp z, Jump_027_5AE0                           ; $5AA3: $CA $E0 $5A

    cp $08                                        ; $5AA6: $FE $08
    jp z, Jump_027_5B2F                           ; $5AA8: $CA $2F $5B

    cp $0C                                        ; $5AAB: $FE $0C
    jp z, Jump_027_5B2F                           ; $5AAD: $CA $2F $5B

    cp $10                                        ; $5AB0: $FE $10
    jp z, Jump_027_5B2F                           ; $5AB2: $CA $2F $5B

    cp $14                                        ; $5AB5: $FE $14
    jp z, Jump_027_5B35                           ; $5AB7: $CA $35 $5B

    cp $18                                        ; $5ABA: $FE $18
    jp z, Jump_027_5B71                           ; $5ABC: $CA $71 $5B

    cp $1C                                        ; $5ABF: $FE $1C
    jp z, Jump_027_5B97                           ; $5AC1: $CA $97 $5B

    cp $20                                        ; $5AC4: $FE $20
    jp z, Jump_027_5B9A                           ; $5AC6: $CA $9A $5B

    jp Jump_027_5B77                              ; $5AC9: $C3 $77 $5B


Jump_027_5ACC:
    call Call_000_2CA9                            ; $5ACC: $CD $A9 $2C
    jp nc, Jump_027_5BA5                          ; $5ACF: $D2 $A5 $5B

    inc hl                                        ; $5AD2: $23
    ld [hl], $00                                  ; $5AD3: $36 $00
    ld hl, $0208                                  ; $5AD5: $21 $08 $02
    ld a, $11                                     ; $5AD8: $3E $11
    call Call_000_34B3                            ; $5ADA: $CD $B3 $34
    jp Jump_027_5BA5                              ; $5ADD: $C3 $A5 $5B


Jump_027_5AE0:
    call Call_000_2CA2                            ; $5AE0: $CD $A2 $2C
    jr z, jr_027_5B1C                             ; $5AE3: $28 $37

    call Call_000_32CC                            ; $5AE5: $CD $CC $32
    jr c, jr_027_5B08                             ; $5AE8: $38 $1E

    jr nz, jr_027_5AFA                            ; $5AEA: $20 $0E

    ld hl, $0300                                  ; $5AEC: $21 $00 $03
    call Call_000_2FEB                            ; $5AEF: $CD $EB $2F
    ld hl, $FA00                                  ; $5AF2: $21 $00 $FA
    call Call_000_305D                            ; $5AF5: $CD $5D $30
    jr jr_027_5B1C                                ; $5AF8: $18 $22

jr_027_5AFA:
    ld hl, $0380                                  ; $5AFA: $21 $80 $03
    call Call_000_2FEB                            ; $5AFD: $CD $EB $2F
    ld hl, $FA00                                  ; $5B00: $21 $00 $FA
    call Call_000_305D                            ; $5B03: $CD $5D $30
    jr jr_027_5B1C                                ; $5B06: $18 $14

jr_027_5B08:
    ld hl, $0400                                  ; $5B08: $21 $00 $04
    call Call_000_2FEB                            ; $5B0B: $CD $EB $2F
    ld hl, $FA00                                  ; $5B0E: $21 $00 $FA
    call Call_000_305D                            ; $5B11: $CD $5D $30
    ld hl, $0108                                  ; $5B14: $21 $08 $01
    ld a, $10                                     ; $5B17: $3E $10
    call Call_000_34A2                            ; $5B19: $CD $A2 $34

jr_027_5B1C:
    call Call_027_5B62                            ; $5B1C: $CD $62 $5B
    call Call_000_32CC                            ; $5B1F: $CD $CC $32
    jr c, jr_027_5B77                             ; $5B22: $38 $53

    ld hl, $0208                                  ; $5B24: $21 $08 $02
    ld a, $10                                     ; $5B27: $3E $10
    call Call_000_34B3                            ; $5B29: $CD $B3 $34
    jp Jump_027_5B77                              ; $5B2C: $C3 $77 $5B


Jump_027_5B2F:
    call Call_027_5B62                            ; $5B2F: $CD $62 $5B
    jp Jump_027_5B77                              ; $5B32: $C3 $77 $5B


Jump_027_5B35:
    call Call_027_5B62                            ; $5B35: $CD $62 $5B
    ld a, $00                                     ; $5B38: $3E $00
    ld h, $FF                                     ; $5B3A: $26 $FF
    call Call_000_2D33                            ; $5B3C: $CD $33 $2D
    jp nc, Jump_027_5B4D                          ; $5B3F: $D2 $4D $5B

    ld hl, $040F                                  ; $5B42: $21 $0F $04
    ld a, $01                                     ; $5B45: $3E $01
    call Call_000_34B3                            ; $5B47: $CD $B3 $34
    jp Jump_027_5B77                              ; $5B4A: $C3 $77 $5B


Jump_027_5B4D:
    call Call_000_2CA9                            ; $5B4D: $CD $A9 $2C
    jp nc, Jump_027_5B77                          ; $5B50: $D2 $77 $5B

    ld a, $12                                     ; $5B53: $3E $12
    call Call_000_1360                            ; $5B55: $CD $60 $13
    ld a, $08                                     ; $5B58: $3E $08
    ld h, $05                                     ; $5B5A: $26 $05
    call Call_000_2D19                            ; $5B5C: $CD $19 $2D
    jp Jump_027_5B77                              ; $5B5F: $C3 $77 $5B


Call_027_5B62:
    call Call_000_32CC                            ; $5B62: $CD $CC $32
    jr c, jr_027_5B68                             ; $5B65: $38 $01

    ret                                           ; $5B67: $C9


jr_027_5B68:
    ld hl, $0108                                  ; $5B68: $21 $08 $01
    ld a, $10                                     ; $5B6B: $3E $10
    call Call_000_34A2                            ; $5B6D: $CD $A2 $34
    ret                                           ; $5B70: $C9


Jump_027_5B71:
    ld hl, $0020                                  ; $5B71: $21 $20 $00
    call Call_000_30B0                            ; $5B74: $CD $B0 $30

Jump_027_5B77:
jr_027_5B77:
    ld hl, $0060                                  ; $5B77: $21 $60 $00
    call Call_000_30FF                            ; $5B7A: $CD $FF $30
    jp nc, Jump_027_5BA5                          ; $5B7D: $D2 $A5 $5B

    ld a, $05                                     ; $5B80: $3E $05
    call Call_000_3963                            ; $5B82: $CD $63 $39
    ld a, $1C                                     ; $5B85: $3E $1C
    ld h, $14                                     ; $5B87: $26 $14
    call Call_000_2CBA                            ; $5B89: $CD $BA $2C
    ld hl, $040F                                  ; $5B8C: $21 $0F $04
    ld a, $01                                     ; $5B8F: $3E $01
    call Call_000_34B3                            ; $5B91: $CD $B3 $34
    jp Jump_027_5BA8                              ; $5B94: $C3 $A8 $5B


Jump_027_5B97:
    jp Jump_027_5BA5                              ; $5B97: $C3 $A5 $5B


Jump_027_5B9A:
    call Call_000_2CA9                            ; $5B9A: $CD $A9 $2C
    jp nc, Jump_027_5BA5                          ; $5B9D: $D2 $A5 $5B

    call Call_000_2DB6                            ; $5BA0: $CD $B6 $2D
    jr jr_027_5BA8                                ; $5BA3: $18 $03

Jump_027_5BA5:
    call Call_000_2E25                            ; $5BA5: $CD $25 $2E

Jump_027_5BA8:
jr_027_5BA8:
    ret                                           ; $5BA8: $C9


    call Call_000_2EE0                            ; $5BA9: $CD $E0 $2E
    call Call_000_3517                            ; $5BAC: $CD $17 $35
    jp c, Jump_027_5D0F                           ; $5BAF: $DA $0F $5D

    ld hl, $0018                                  ; $5BB2: $21 $18 $00
    add hl, de                                    ; $5BB5: $19
    ld a, [hl]                                    ; $5BB6: $7E
    cp $00                                        ; $5BB7: $FE $00
    jp z, Jump_027_5BE7                           ; $5BB9: $CA $E7 $5B

    cp $04                                        ; $5BBC: $FE $04
    jp z, Jump_027_5C6D                           ; $5BBE: $CA $6D $5C

    cp $08                                        ; $5BC1: $FE $08
    jp z, Jump_027_5C81                           ; $5BC3: $CA $81 $5C

    cp $0C                                        ; $5BC6: $FE $0C
    jp z, Jump_027_5C9B                           ; $5BC8: $CA $9B $5C

    cp $10                                        ; $5BCB: $FE $10
    jp z, Jump_027_5CB5                           ; $5BCD: $CA $B5 $5C

    cp $14                                        ; $5BD0: $FE $14
    jp z, Jump_027_5CCF                           ; $5BD2: $CA $CF $5C

    cp $18                                        ; $5BD5: $FE $18
    jp z, Jump_027_5CE9                           ; $5BD7: $CA $E9 $5C

    cp $1C                                        ; $5BDA: $FE $1C
    jp z, Jump_027_5CFD                           ; $5BDC: $CA $FD $5C

    cp $20                                        ; $5BDF: $FE $20
    jp z, Jump_027_5CFD                           ; $5BE1: $CA $FD $5C

    jp Jump_027_5D0C                              ; $5BE4: $C3 $0C $5D


Jump_027_5BE7:
    call Call_000_2CA2                            ; $5BE7: $CD $A2 $2C
    jr z, jr_027_5C08                             ; $5BEA: $28 $1C

    ld hl, $009C                                  ; $5BEC: $21 $9C $00
    add hl, bc                                    ; $5BEF: $09
    ld a, [hl]                                    ; $5BF0: $7E
    or a                                          ; $5BF1: $B7
    jr nz, jr_027_5BFF                            ; $5BF2: $20 $0B

    ld hl, $0021                                  ; $5BF4: $21 $21 $00
    add hl, bc                                    ; $5BF7: $09
    res 5, [hl]                                   ; $5BF8: $CB $AE
    inc hl                                        ; $5BFA: $23
    set 4, [hl]                                   ; $5BFB: $CB $E6
    jr jr_027_5C08                                ; $5BFD: $18 $09

jr_027_5BFF:
    ld hl, $0021                                  ; $5BFF: $21 $21 $00
    add hl, bc                                    ; $5C02: $09
    res 5, [hl]                                   ; $5C03: $CB $AE
    inc hl                                        ; $5C05: $23
    set 5, [hl]                                   ; $5C06: $CB $EE

jr_027_5C08:
    ld hl, $0022                                  ; $5C08: $21 $22 $00
    add hl, bc                                    ; $5C0B: $09
    bit 3, [hl]                                   ; $5C0C: $CB $5E
    jr z, jr_027_5C53                             ; $5C0E: $28 $43

    ld hl, $009D                                  ; $5C10: $21 $9D $00
    add hl, bc                                    ; $5C13: $09
    ld a, [hl]                                    ; $5C14: $7E
    or a                                          ; $5C15: $B7
    jr nz, jr_027_5C33                            ; $5C16: $20 $1B

    ld a, $0D                                     ; $5C18: $3E $0D
    call Call_000_1360                            ; $5C1A: $CD $60 $13
    call Call_000_3A4C                            ; $5C1D: $CD $4C $3A
    ld a, $01                                     ; $5C20: $3E $01
    ld [$C2DF], a                                 ; $5C22: $EA $DF $C2
    call Call_000_37C3                            ; $5C25: $CD $C3 $37
    ld a, $00                                     ; $5C28: $3E $00
    ld [$C2DF], a                                 ; $5C2A: $EA $DF $C2
    ld hl, $009D                                  ; $5C2D: $21 $9D $00
    add hl, bc                                    ; $5C30: $09
    ld [hl], $01                                  ; $5C31: $36 $01

jr_027_5C33:
    call Call_000_36B5                            ; $5C33: $CD $B5 $36
    jp nc, Jump_027_5D0C                          ; $5C36: $D2 $0C $5D

    call Call_000_0417                            ; $5C39: $CD $17 $04
    ld a, $03                                     ; $5C3C: $3E $03
    ld [$C2E2], a                                 ; $5C3E: $EA $E2 $C2
    ld hl, $0021                                  ; $5C41: $21 $21 $00
    add hl, bc                                    ; $5C44: $09
    set 7, [hl]                                   ; $5C45: $CB $FE
    ld hl, $001C                                  ; $5C47: $21 $1C $00
    add hl, de                                    ; $5C4A: $19
    ld [hl], $00                                  ; $5C4B: $36 $00
    inc hl                                        ; $5C4D: $23
    ld [hl], $00                                  ; $5C4E: $36 $00
    jp Jump_027_5D0C                              ; $5C50: $C3 $0C $5D


jr_027_5C53:
    call Call_000_2CA9                            ; $5C53: $CD $A9 $2C
    jp nc, Jump_027_5D0C                          ; $5C56: $D2 $0C $5D

    inc hl                                        ; $5C59: $23
    ld [hl], $14                                  ; $5C5A: $36 $14
    ld hl, $0014                                  ; $5C5C: $21 $14 $00
    add hl, de                                    ; $5C5F: $19
    ld [hl], $1C                                  ; $5C60: $36 $1C
    ld hl, $0022                                  ; $5C62: $21 $22 $00
    add hl, bc                                    ; $5C65: $09
    res 4, [hl]                                   ; $5C66: $CB $A6
    res 5, [hl]                                   ; $5C68: $CB $AE
    jp Jump_027_5D0C                              ; $5C6A: $C3 $0C $5D


Jump_027_5C6D:
    call Call_000_2CA2                            ; $5C6D: $CD $A2 $2C
    jr z, jr_027_5C75                             ; $5C70: $28 $03

    call Call_000_2E12                            ; $5C72: $CD $12 $2E

jr_027_5C75:
    call Call_000_2CA9                            ; $5C75: $CD $A9 $2C
    jp nc, Jump_027_5D0C                          ; $5C78: $D2 $0C $5D

    inc hl                                        ; $5C7B: $23
    ld [hl], $05                                  ; $5C7C: $36 $05
    jp Jump_027_5D0C                              ; $5C7E: $C3 $0C $5D


Jump_027_5C81:
    call Call_000_2CA9                            ; $5C81: $CD $A9 $2C
    jp nc, Jump_027_5D0C                          ; $5C84: $D2 $0C $5D

    inc hl                                        ; $5C87: $23
    ld [hl], $02                                  ; $5C88: $36 $02
    ld hl, $0119                                  ; $5C8A: $21 $19 $01
    ld a, $01                                     ; $5C8D: $3E $01
    call Call_000_34B3                            ; $5C8F: $CD $B3 $34
    ld hl, $E000                                  ; $5C92: $21 $00 $E0
    call Call_000_3496                            ; $5C95: $CD $96 $34
    jp Jump_027_5D0C                              ; $5C98: $C3 $0C $5D


Jump_027_5C9B:
    call Call_000_2CA9                            ; $5C9B: $CD $A9 $2C
    jp nc, Jump_027_5D0C                          ; $5C9E: $D2 $0C $5D

    inc hl                                        ; $5CA1: $23
    ld [hl], $02                                  ; $5CA2: $36 $02
    ld hl, $0119                                  ; $5CA4: $21 $19 $01
    ld a, $01                                     ; $5CA7: $3E $01
    call Call_000_34B3                            ; $5CA9: $CD $B3 $34
    ld hl, $E200                                  ; $5CAC: $21 $00 $E2
    call Call_000_3496                            ; $5CAF: $CD $96 $34
    jp Jump_027_5D0C                              ; $5CB2: $C3 $0C $5D


Jump_027_5CB5:
    call Call_000_2CA9                            ; $5CB5: $CD $A9 $2C
    jp nc, Jump_027_5D0C                          ; $5CB8: $D2 $0C $5D

    inc hl                                        ; $5CBB: $23
    ld [hl], $05                                  ; $5CBC: $36 $05
    ld hl, $011B                                  ; $5CBE: $21 $1B $01
    ld a, $01                                     ; $5CC1: $3E $01
    call Call_000_34B3                            ; $5CC3: $CD $B3 $34
    ld hl, $0800                                  ; $5CC6: $21 $00 $08
    call Call_000_3496                            ; $5CC9: $CD $96 $34
    jp Jump_027_5D0C                              ; $5CCC: $C3 $0C $5D


Jump_027_5CCF:
    call Call_000_2CA9                            ; $5CCF: $CD $A9 $2C
    jp nc, Jump_027_5D0C                          ; $5CD2: $D2 $0C $5D

    inc hl                                        ; $5CD5: $23
    ld [hl], $02                                  ; $5CD6: $36 $02
    ld hl, $011B                                  ; $5CD8: $21 $1B $01
    ld a, $01                                     ; $5CDB: $3E $01
    call Call_000_34B3                            ; $5CDD: $CD $B3 $34
    ld hl, $10E0                                  ; $5CE0: $21 $E0 $10
    call Call_000_3496                            ; $5CE3: $CD $96 $34
    jp Jump_027_5D0C                              ; $5CE6: $C3 $0C $5D


Jump_027_5CE9:
    ld hl, $0515                                  ; $5CE9: $21 $15 $05
    ld a, $81                                     ; $5CEC: $3E $81
    call Call_000_34A2                            ; $5CEE: $CD $A2 $34
    call Call_000_2CA9                            ; $5CF1: $CD $A9 $2C
    jp nc, Jump_027_5D0C                          ; $5CF4: $D2 $0C $5D

    inc hl                                        ; $5CF7: $23
    ld [hl], $0A                                  ; $5CF8: $36 $0A
    jp Jump_027_5D0C                              ; $5CFA: $C3 $0C $5D


Jump_027_5CFD:
    call Call_000_2CA9                            ; $5CFD: $CD $A9 $2C
    jp nc, Jump_027_5D0C                          ; $5D00: $D2 $0C $5D

    call Call_000_2DB6                            ; $5D03: $CD $B6 $2D
    xor a                                         ; $5D06: $AF
    ld [$C2E2], a                                 ; $5D07: $EA $E2 $C2
    jr jr_027_5D0F                                ; $5D0A: $18 $03

Jump_027_5D0C:
    jp Jump_000_2E25                              ; $5D0C: $C3 $25 $2E


Jump_027_5D0F:
jr_027_5D0F:
    ret                                           ; $5D0F: $C9


    call Call_000_2EE0                            ; $5D10: $CD $E0 $2E
    call Call_000_3517                            ; $5D13: $CD $17 $35
    jp c, Jump_027_5EEE                           ; $5D16: $DA $EE $5E

    ld hl, $0018                                  ; $5D19: $21 $18 $00
    add hl, de                                    ; $5D1C: $19
    ld a, [hl]                                    ; $5D1D: $7E
    cp $00                                        ; $5D1E: $FE $00
    jp z, Jump_027_5D69                           ; $5D20: $CA $69 $5D

    cp $04                                        ; $5D23: $FE $04
    jp z, Jump_027_5D7D                           ; $5D25: $CA $7D $5D

    cp $08                                        ; $5D28: $FE $08
    jp z, Jump_027_5DD8                           ; $5D2A: $CA $D8 $5D

    cp $0C                                        ; $5D2D: $FE $0C
    jp z, Jump_027_5E11                           ; $5D2F: $CA $11 $5E

    cp $10                                        ; $5D32: $FE $10
    jp z, Jump_027_5E27                           ; $5D34: $CA $27 $5E

    cp $14                                        ; $5D37: $FE $14
    jp z, Jump_027_5E3E                           ; $5D39: $CA $3E $5E

    cp $18                                        ; $5D3C: $FE $18
    jp z, Jump_027_5E44                           ; $5D3E: $CA $44 $5E

    cp $1C                                        ; $5D41: $FE $1C
    jp z, Jump_027_5E6F                           ; $5D43: $CA $6F $5E

    cp $20                                        ; $5D46: $FE $20
    jp z, Jump_027_5E91                           ; $5D48: $CA $91 $5E

    cp $24                                        ; $5D4B: $FE $24
    jp z, Jump_027_5EAA                           ; $5D4D: $CA $AA $5E

    cp $28                                        ; $5D50: $FE $28
    jp z, Jump_027_5EB5                           ; $5D52: $CA $B5 $5E

    cp $2C                                        ; $5D55: $FE $2C
    jp z, Jump_027_5EB5                           ; $5D57: $CA $B5 $5E

    cp $30                                        ; $5D5A: $FE $30
    jp z, Jump_027_5EB5                           ; $5D5C: $CA $B5 $5E

    cp $34                                        ; $5D5F: $FE $34
    jp z, Jump_027_5EE0                           ; $5D61: $CA $E0 $5E

    cp $38                                        ; $5D64: $FE $38
    jp z, Jump_027_5ECD                           ; $5D66: $CA $CD $5E

Jump_027_5D69:
    call Call_000_2CA9                            ; $5D69: $CD $A9 $2C
    jp nc, Jump_027_5EEB                          ; $5D6C: $D2 $EB $5E

    inc hl                                        ; $5D6F: $23
    ld [hl], $0A                                  ; $5D70: $36 $0A
    ld hl, $0108                                  ; $5D72: $21 $08 $01
    ld a, $11                                     ; $5D75: $3E $11
    call Call_000_34B3                            ; $5D77: $CD $B3 $34
    jp Jump_027_5EEB                              ; $5D7A: $C3 $EB $5E


Jump_027_5D7D:
    call Call_000_2CA2                            ; $5D7D: $CD $A2 $2C
    jr z, jr_027_5DAF                             ; $5D80: $28 $2D

    ld a, $11                                     ; $5D82: $3E $11
    call Call_000_1360                            ; $5D84: $CD $60 $13
    call Call_000_32CC                            ; $5D87: $CD $CC $32
    jr c, jr_027_5DA2                             ; $5D8A: $38 $16

    jr nz, jr_027_5D98                            ; $5D8C: $20 $0A

    ld hl, $0400                                  ; $5D8E: $21 $00 $04
    call Call_000_2FEB                            ; $5D91: $CD $EB $2F
    ld a, $01                                     ; $5D94: $3E $01
    jr jr_027_5DAA                                ; $5D96: $18 $12

jr_027_5D98:
    ld hl, $0500                                  ; $5D98: $21 $00 $05
    call Call_000_2FEB                            ; $5D9B: $CD $EB $2F
    ld a, $02                                     ; $5D9E: $3E $02
    jr jr_027_5DAA                                ; $5DA0: $18 $08

jr_027_5DA2:
    ld hl, $0600                                  ; $5DA2: $21 $00 $06
    call Call_000_2FEB                            ; $5DA5: $CD $EB $2F
    ld a, $03                                     ; $5DA8: $3E $03

jr_027_5DAA:
    ld hl, $009C                                  ; $5DAA: $21 $9C $00
    add hl, bc                                    ; $5DAD: $09
    ld [hl], a                                    ; $5DAE: $77

jr_027_5DAF:
    ld hl, $0020                                  ; $5DAF: $21 $20 $00
    call Call_000_30B0                            ; $5DB2: $CD $B0 $30
    call Call_000_3262                            ; $5DB5: $CD $62 $32
    jp nc, Jump_027_5DC8                          ; $5DB8: $D2 $C8 $5D

    jp nz, Jump_027_5DC8                          ; $5DBB: $C2 $C8 $5D

    ld a, $08                                     ; $5DBE: $3E $08
    ld h, $FF                                     ; $5DC0: $26 $FF
    call Call_000_2D19                            ; $5DC2: $CD $19 $2D
    jp Jump_027_5EEE                              ; $5DC5: $C3 $EE $5E


Jump_027_5DC8:
    call Call_000_2CA9                            ; $5DC8: $CD $A9 $2C
    jp nc, Jump_027_5EEB                          ; $5DCB: $D2 $EB $5E

    ld a, $34                                     ; $5DCE: $3E $34
    ld h, $14                                     ; $5DD0: $26 $14
    call Call_000_2D19                            ; $5DD2: $CD $19 $2D
    jp Jump_027_5EEB                              ; $5DD5: $C3 $EB $5E


Jump_027_5DD8:
    call Call_000_2CA2                            ; $5DD8: $CD $A2 $2C
    jr z, jr_027_5DF9                             ; $5DDB: $28 $1C

    ld a, $11                                     ; $5DDD: $3E $11
    call Call_000_1360                            ; $5DDF: $CD $60 $13
    ld a, $03                                     ; $5DE2: $3E $03
    ld [$C2E2], a                                 ; $5DE4: $EA $E2 $C2
    ld hl, $0021                                  ; $5DE7: $21 $21 $00
    add hl, bc                                    ; $5DEA: $09
    set 7, [hl]                                   ; $5DEB: $CB $FE
    ld hl, $F700                                  ; $5DED: $21 $00 $F7
    call Call_000_305D                            ; $5DF0: $CD $5D $30
    ld hl, $0000                                  ; $5DF3: $21 $00 $00
    call Call_000_2FEB                            ; $5DF6: $CD $EB $2F

jr_027_5DF9:
    call Call_027_5EEF                            ; $5DF9: $CD $EF $5E
    ld a, $00                                     ; $5DFC: $3E $00
    ld h, $FF                                     ; $5DFE: $26 $FF
    call Call_000_2D33                            ; $5E00: $CD $33 $2D
    jp nc, Jump_027_5E14                          ; $5E03: $D2 $14 $5E

    ld hl, $010F                                  ; $5E06: $21 $0F $01
    ld a, $10                                     ; $5E09: $3E $10
    call Call_000_34B3                            ; $5E0B: $CD $B3 $34
    jp Jump_027_5E14                              ; $5E0E: $C3 $14 $5E


Jump_027_5E11:
    call Call_027_5EEF                            ; $5E11: $CD $EF $5E

Jump_027_5E14:
    ld hl, $00C0                                  ; $5E14: $21 $C0 $00
    call Call_000_30FF                            ; $5E17: $CD $FF $30
    jp nc, Jump_027_5EEB                          ; $5E1A: $D2 $EB $5E

    ld a, $10                                     ; $5E1D: $3E $10
    ld h, $00                                     ; $5E1F: $26 $00
    call Call_000_2CBA                            ; $5E21: $CD $BA $2C
    jp Jump_027_5EEE                              ; $5E24: $C3 $EE $5E


Jump_027_5E27:
    call Call_027_5EEF                            ; $5E27: $CD $EF $5E
    call Call_000_2CA9                            ; $5E2A: $CD $A9 $2C
    jp nc, Jump_027_5EEB                          ; $5E2D: $D2 $EB $5E

    inc hl                                        ; $5E30: $23
    ld [hl], $00                                  ; $5E31: $36 $00
    ld hl, $010E                                  ; $5E33: $21 $0E $01
    ld a, $11                                     ; $5E36: $3E $11
    call Call_000_34B3                            ; $5E38: $CD $B3 $34
    jp Jump_027_5EEB                              ; $5E3B: $C3 $EB $5E


Jump_027_5E3E:
    call Call_027_5EEF                            ; $5E3E: $CD $EF $5E
    jp Jump_027_5EEB                              ; $5E41: $C3 $EB $5E


Jump_027_5E44:
    call Call_027_5EEF                            ; $5E44: $CD $EF $5E
    call Call_000_2CA9                            ; $5E47: $CD $A9 $2C
    jp nc, Jump_027_5EEB                          ; $5E4A: $D2 $EB $5E

    inc hl                                        ; $5E4D: $23
    ld [hl], $00                                  ; $5E4E: $36 $00
    ld hl, $009C                                  ; $5E50: $21 $9C $00
    add hl, bc                                    ; $5E53: $09
    ld a, [hl]                                    ; $5E54: $7E
    cp $01                                        ; $5E55: $FE $01
    jr z, jr_027_5E64                             ; $5E57: $28 $0B

    ld hl, $010E                                  ; $5E59: $21 $0E $01
    ld a, $11                                     ; $5E5C: $3E $11
    call Call_000_34B3                            ; $5E5E: $CD $B3 $34
    jp Jump_027_5EEB                              ; $5E61: $C3 $EB $5E


jr_027_5E64:
    ld hl, $0309                                  ; $5E64: $21 $09 $03
    ld a, $01                                     ; $5E67: $3E $01
    call Call_000_34B3                            ; $5E69: $CD $B3 $34
    jp Jump_027_5EEB                              ; $5E6C: $C3 $EB $5E


Jump_027_5E6F:
    call Call_027_5EEF                            ; $5E6F: $CD $EF $5E
    call Call_000_2CA9                            ; $5E72: $CD $A9 $2C
    jp nc, Jump_027_5EEB                          ; $5E75: $D2 $EB $5E

    ld hl, $009C                                  ; $5E78: $21 $9C $00
    add hl, bc                                    ; $5E7B: $09
    dec [hl]                                      ; $5E7C: $35
    jr z, jr_027_5E88                             ; $5E7D: $28 $09

    ld hl, $0014                                  ; $5E7F: $21 $14 $00
    add hl, de                                    ; $5E82: $19
    ld [hl], $0C                                  ; $5E83: $36 $0C
    jp Jump_027_5EEB                              ; $5E85: $C3 $EB $5E


jr_027_5E88:
    ld hl, $001D                                  ; $5E88: $21 $1D $00
    add hl, de                                    ; $5E8B: $19
    ld [hl], $00                                  ; $5E8C: $36 $00
    jp Jump_027_5EEB                              ; $5E8E: $C3 $EB $5E


Jump_027_5E91:
    call Call_000_2CA2                            ; $5E91: $CD $A2 $2C
    jr z, jr_027_5EA7                             ; $5E94: $28 $11

    ld a, $00                                     ; $5E96: $3E $00
    ld [$C2E2], a                                 ; $5E98: $EA $E2 $C2
    ld hl, $FA00                                  ; $5E9B: $21 $00 $FA
    call Call_000_305D                            ; $5E9E: $CD $5D $30
    ld hl, $FD00                                  ; $5EA1: $21 $00 $FD
    call Call_000_2FEB                            ; $5EA4: $CD $EB $2F

jr_027_5EA7:
    jp Jump_027_5EB5                              ; $5EA7: $C3 $B5 $5E


Jump_027_5EAA:
    call Call_000_2CA9                            ; $5EAA: $CD $A9 $2C
    jp nc, Jump_027_5EEB                          ; $5EAD: $D2 $EB $5E

    ld a, $B6                                     ; $5EB0: $3E $B6
    call Call_000_1360                            ; $5EB2: $CD $60 $13

Jump_027_5EB5:
    ld hl, $0060                                  ; $5EB5: $21 $60 $00
    call Call_000_30FF                            ; $5EB8: $CD $FF $30
    jp nc, Jump_027_5EEB                          ; $5EBB: $D2 $EB $5E

    ld a, $00                                     ; $5EBE: $3E $00
    ld [$C2E2], a                                 ; $5EC0: $EA $E2 $C2
    ld a, $34                                     ; $5EC3: $3E $34
    ld h, $14                                     ; $5EC5: $26 $14
    call Call_000_2CBA                            ; $5EC7: $CD $BA $2C
    jp Jump_027_5EEE                              ; $5ECA: $C3 $EE $5E


Jump_027_5ECD:
    call Call_000_326C                            ; $5ECD: $CD $6C $32
    jp nc, Jump_027_5EE0                          ; $5ED0: $D2 $E0 $5E

    jp nz, Jump_027_5EE0                          ; $5ED3: $C2 $E0 $5E

    ld a, $08                                     ; $5ED6: $3E $08
    ld h, $FF                                     ; $5ED8: $26 $FF
    call Call_000_2D19                            ; $5EDA: $CD $19 $2D
    jp Jump_027_5EEE                              ; $5EDD: $C3 $EE $5E


Jump_027_5EE0:
    call Call_000_2CA9                            ; $5EE0: $CD $A9 $2C
    jp nc, Jump_027_5A8A                          ; $5EE3: $D2 $8A $5A

    call Call_000_2DB6                            ; $5EE6: $CD $B6 $2D
    jr jr_027_5EEE                                ; $5EE9: $18 $03

Jump_027_5EEB:
    call Call_000_2E25                            ; $5EEB: $CD $25 $2E

Jump_027_5EEE:
jr_027_5EEE:
    ret                                           ; $5EEE: $C9


Call_027_5EEF:
    ld hl, $0099                                  ; $5EEF: $21 $99 $00
    add hl, bc                                    ; $5EF2: $09
    ld a, [hl]                                    ; $5EF3: $7E
    ld hl, $0004                                  ; $5EF4: $21 $04 $00
    add hl, de                                    ; $5EF7: $19
    sub [hl]                                      ; $5EF8: $96
    ld h, a                                       ; $5EF9: $67
    ld l, $00                                     ; $5EFA: $2E $00
    sra h                                         ; $5EFC: $CB $2C
    rr l                                          ; $5EFE: $CB $1D
    sra h                                         ; $5F00: $CB $2C
    rr l                                          ; $5F02: $CB $1D
    sra h                                         ; $5F04: $CB $2C
    rr l                                          ; $5F06: $CB $1D
    call Call_000_2F0B                            ; $5F08: $CD $0B $2F
    ret                                           ; $5F0B: $C9


    call Call_000_2EE0                            ; $5F0C: $CD $E0 $2E
    call Call_000_3517                            ; $5F0F: $CD $17 $35
    jp c, Jump_027_6169                           ; $5F12: $DA $69 $61

    ld hl, $0018                                  ; $5F15: $21 $18 $00
    add hl, de                                    ; $5F18: $19
    ld a, [hl]                                    ; $5F19: $7E
    cp $00                                        ; $5F1A: $FE $00
    jp z, Jump_027_5F6D                           ; $5F1C: $CA $6D $5F

    cp $04                                        ; $5F1F: $FE $04
    jp z, Jump_027_5F8D                           ; $5F21: $CA $8D $5F

    cp $20                                        ; $5F24: $FE $20
    jp z, Jump_027_5FE0                           ; $5F26: $CA $E0 $5F

    cp $24                                        ; $5F29: $FE $24
    jp z, Jump_027_5FFE                           ; $5F2B: $CA $FE $5F

    cp $28                                        ; $5F2E: $FE $28
    jp z, Jump_027_6029                           ; $5F30: $CA $29 $60

    cp $2C                                        ; $5F33: $FE $2C
    jp z, Jump_027_6044                           ; $5F35: $CA $44 $60

    cp $30                                        ; $5F38: $FE $30
    jp z, Jump_027_606F                           ; $5F3A: $CA $6F $60

    cp $34                                        ; $5F3D: $FE $34
    jp z, Jump_027_608A                           ; $5F3F: $CA $8A $60

    cp $38                                        ; $5F42: $FE $38
    jp z, Jump_027_60AC                           ; $5F44: $CA $AC $60

    cp $3C                                        ; $5F47: $FE $3C
    jp z, Jump_027_60BA                           ; $5F49: $CA $BA $60

    cp $40                                        ; $5F4C: $FE $40
    jp z, Jump_027_60DC                           ; $5F4E: $CA $DC $60

    cp $44                                        ; $5F51: $FE $44
    jp z, Jump_027_60EA                           ; $5F53: $CA $EA $60

    cp $48                                        ; $5F56: $FE $48
    jp z, Jump_027_610C                           ; $5F58: $CA $0C $61

    cp $4C                                        ; $5F5B: $FE $4C
    jp z, Jump_027_611A                           ; $5F5D: $CA $1A $61

    cp $54                                        ; $5F60: $FE $54
    jp z, Jump_027_6135                           ; $5F62: $CA $35 $61

    cp $58                                        ; $5F65: $FE $58
    jp z, Jump_027_6140                           ; $5F67: $CA $40 $61

    jp Jump_027_6166                              ; $5F6A: $C3 $66 $61


Jump_027_5F6D:
    call Call_000_2CA2                            ; $5F6D: $CD $A2 $2C
    jp z, Jump_027_5F79                           ; $5F70: $CA $79 $5F

    ld hl, $0031                                  ; $5F73: $21 $31 $00
    add hl, bc                                    ; $5F76: $09
    ld [hl], $01                                  ; $5F77: $36 $01

Jump_027_5F79:
    call Call_000_2CA9                            ; $5F79: $CD $A9 $2C
    jp nc, Jump_027_6166                          ; $5F7C: $D2 $66 $61

    inc hl                                        ; $5F7F: $23
    ld [hl], $14                                  ; $5F80: $36 $14
    ld hl, $010C                                  ; $5F82: $21 $0C $01
    ld a, $11                                     ; $5F85: $3E $11
    call Call_000_34B3                            ; $5F87: $CD $B3 $34
    jp Jump_027_6166                              ; $5F8A: $C3 $66 $61


Jump_027_5F8D:
    call Call_000_2CA2                            ; $5F8D: $CD $A2 $2C
    jr z, jr_027_5FA3                             ; $5F90: $28 $11

    ld a, $12                                     ; $5F92: $3E $12
    call Call_000_1360                            ; $5F94: $CD $60 $13
    ld hl, $0021                                  ; $5F97: $21 $21 $00
    add hl, bc                                    ; $5F9A: $09
    res 7, [hl]                                   ; $5F9B: $CB $BE
    ld hl, $0500                                  ; $5F9D: $21 $00 $05
    call Call_000_2FEB                            ; $5FA0: $CD $EB $2F

jr_027_5FA3:
    call Call_000_3262                            ; $5FA3: $CD $62 $32
    jp nc, Jump_027_5FC8                          ; $5FA6: $D2 $C8 $5F

    jp nz, Jump_027_5FBE                          ; $5FA9: $C2 $BE $5F

    ld hl, $0112                                  ; $5FAC: $21 $12 $01
    ld a, $90                                     ; $5FAF: $3E $90
    call Call_000_34B3                            ; $5FB1: $CD $B3 $34
    ld a, $08                                     ; $5FB4: $3E $08
    ld h, $00                                     ; $5FB6: $26 $00
    call Call_000_2D19                            ; $5FB8: $CD $19 $2D
    jp Jump_027_6169                              ; $5FBB: $C3 $69 $61


Jump_027_5FBE:
    ld a, $58                                     ; $5FBE: $3E $58
    ld h, $1E                                     ; $5FC0: $26 $1E
    call Call_000_2D19                            ; $5FC2: $CD $19 $2D
    jp Jump_027_6169                              ; $5FC5: $C3 $69 $61


Jump_027_5FC8:
    call Call_000_2CA9                            ; $5FC8: $CD $A9 $2C
    jp nc, Jump_027_5FDA                          ; $5FCB: $D2 $DA $5F

    inc hl                                        ; $5FCE: $23
    ld [hl], $14                                  ; $5FCF: $36 $14
    ld hl, $0014                                  ; $5FD1: $21 $14 $00
    add hl, de                                    ; $5FD4: $19
    ld [hl], $54                                  ; $5FD5: $36 $54
    jp Jump_027_5FDA                              ; $5FD7: $C3 $DA $5F


Jump_027_5FDA:
    call Call_000_3069                            ; $5FDA: $CD $69 $30
    jp Jump_027_6166                              ; $5FDD: $C3 $66 $61


Jump_027_5FE0:
    call Call_000_2CA9                            ; $5FE0: $CD $A9 $2C
    jp nc, Jump_027_6166                          ; $5FE3: $D2 $66 $61

    inc hl                                        ; $5FE6: $23
    ld [hl], $03                                  ; $5FE7: $36 $03
    ld hl, $0109                                  ; $5FE9: $21 $09 $01
    ld a, $92                                     ; $5FEC: $3E $92
    call Call_000_34B3                            ; $5FEE: $CD $B3 $34
    ld hl, $0004                                  ; $5FF1: $21 $04 $00
    add hl, de                                    ; $5FF4: $19
    ld a, [hl]                                    ; $5FF5: $7E
    ld hl, $009C                                  ; $5FF6: $21 $9C $00
    add hl, bc                                    ; $5FF9: $09
    ld [hl], a                                    ; $5FFA: $77
    jp Jump_027_6166                              ; $5FFB: $C3 $66 $61


Jump_027_5FFE:
    call Call_000_2CA2                            ; $5FFE: $CD $A2 $2C
    jr z, jr_027_6029                             ; $6001: $28 $26

    ld a, $AD                                     ; $6003: $3E $AD
    call Call_000_1360                            ; $6005: $CD $60 $13
    ld hl, $0031                                  ; $6008: $21 $31 $00
    add hl, bc                                    ; $600B: $09
    ld [hl], $01                                  ; $600C: $36 $01
    ld hl, $0600                                  ; $600E: $21 $00 $06
    call Call_000_2FEB                            ; $6011: $CD $EB $2F
    ld hl, $0300                                  ; $6014: $21 $00 $03
    call Call_000_305D                            ; $6017: $CD $5D $30
    call Call_027_616A                            ; $601A: $CD $6A $61
    ld hl, $D000                                  ; $601D: $21 $00 $D0
    call Call_000_2F79                            ; $6020: $CD $79 $2F
    ld hl, $E800                                  ; $6023: $21 $00 $E8
    call Call_000_2F42                            ; $6026: $CD $42 $2F

Jump_027_6029:
jr_027_6029:
    ld hl, $0109                                  ; $6029: $21 $09 $01
    ld a, $92                                     ; $602C: $3E $92
    call Call_000_34A2                            ; $602E: $CD $A2 $34
    ld hl, $0000                                  ; $6031: $21 $00 $00
    call Call_000_30FF                            ; $6034: $CD $FF $30
    jp nc, Jump_027_6166                          ; $6037: $D2 $66 $61

    ld a, $2C                                     ; $603A: $3E $2C
    ld h, $03                                     ; $603C: $26 $03
    call Call_000_2D19                            ; $603E: $CD $19 $2D
    jp Jump_027_6169                              ; $6041: $C3 $69 $61


Jump_027_6044:
    call Call_000_2CA2                            ; $6044: $CD $A2 $2C
    jr z, jr_027_606F                             ; $6047: $28 $26

    ld a, $AD                                     ; $6049: $3E $AD
    call Call_000_1360                            ; $604B: $CD $60 $13
    ld hl, $0031                                  ; $604E: $21 $31 $00
    add hl, bc                                    ; $6051: $09
    ld [hl], $01                                  ; $6052: $36 $01
    ld hl, $FA00                                  ; $6054: $21 $00 $FA
    call Call_000_2FEB                            ; $6057: $CD $EB $2F
    ld hl, $0600                                  ; $605A: $21 $00 $06
    call Call_000_305D                            ; $605D: $CD $5D $30
    call Call_027_616A                            ; $6060: $CD $6A $61
    ld hl, $3000                                  ; $6063: $21 $00 $30
    call Call_000_2F79                            ; $6066: $CD $79 $2F
    ld hl, $D000                                  ; $6069: $21 $00 $D0
    call Call_000_2F42                            ; $606C: $CD $42 $2F

Jump_027_606F:
jr_027_606F:
    ld hl, $010F                                  ; $606F: $21 $0F $01
    ld a, $92                                     ; $6072: $3E $92
    call Call_000_34A2                            ; $6074: $CD $A2 $34
    ld hl, $0000                                  ; $6077: $21 $00 $00
    call Call_000_30FF                            ; $607A: $CD $FF $30
    jp nc, Jump_027_6166                          ; $607D: $D2 $66 $61

    ld a, $34                                     ; $6080: $3E $34
    ld h, $01                                     ; $6082: $26 $01
    call Call_000_2D19                            ; $6084: $CD $19 $2D
    jp Jump_027_6169                              ; $6087: $C3 $69 $61


Jump_027_608A:
    call Call_000_2CA2                            ; $608A: $CD $A2 $2C
    jr z, jr_027_60AC                             ; $608D: $28 $1D

    ld a, $AD                                     ; $608F: $3E $AD
    call Call_000_1360                            ; $6091: $CD $60 $13
    ld hl, $0031                                  ; $6094: $21 $31 $00
    add hl, bc                                    ; $6097: $09
    ld [hl], $01                                  ; $6098: $36 $01
    ld hl, $0600                                  ; $609A: $21 $00 $06
    call Call_000_2FEB                            ; $609D: $CD $EB $2F
    call Call_027_616A                            ; $60A0: $CD $6A $61
    ld hl, $D000                                  ; $60A3: $21 $00 $D0
    call Call_000_2F79                            ; $60A6: $CD $79 $2F
    call Call_000_2637                            ; $60A9: $CD $37 $26

Jump_027_60AC:
jr_027_60AC:
    ld hl, $0109                                  ; $60AC: $21 $09 $01
    ld a, $92                                     ; $60AF: $3E $92
    call Call_000_34A2                            ; $60B1: $CD $A2 $34
    call Call_000_3069                            ; $60B4: $CD $69 $30
    jp Jump_027_6166                              ; $60B7: $C3 $66 $61


Jump_027_60BA:
    call Call_000_2CA2                            ; $60BA: $CD $A2 $2C
    jr z, jr_027_60DC                             ; $60BD: $28 $1D

    ld a, $AD                                     ; $60BF: $3E $AD
    call Call_000_1360                            ; $60C1: $CD $60 $13
    ld hl, $0031                                  ; $60C4: $21 $31 $00
    add hl, bc                                    ; $60C7: $09
    ld [hl], $01                                  ; $60C8: $36 $01
    ld hl, $FA00                                  ; $60CA: $21 $00 $FA
    call Call_000_2FEB                            ; $60CD: $CD $EB $2F
    call Call_027_616A                            ; $60D0: $CD $6A $61
    ld hl, $3000                                  ; $60D3: $21 $00 $30
    call Call_000_2F79                            ; $60D6: $CD $79 $2F
    call Call_000_2637                            ; $60D9: $CD $37 $26

Jump_027_60DC:
jr_027_60DC:
    ld hl, $0109                                  ; $60DC: $21 $09 $01
    ld a, $92                                     ; $60DF: $3E $92
    call Call_000_34A2                            ; $60E1: $CD $A2 $34
    call Call_000_3069                            ; $60E4: $CD $69 $30
    jp Jump_027_6166                              ; $60E7: $C3 $66 $61


Jump_027_60EA:
    call Call_000_2CA2                            ; $60EA: $CD $A2 $2C
    jr z, jr_027_610C                             ; $60ED: $28 $1D

    ld a, $AD                                     ; $60EF: $3E $AD
    call Call_000_1360                            ; $60F1: $CD $60 $13
    ld hl, $0031                                  ; $60F4: $21 $31 $00
    add hl, bc                                    ; $60F7: $09
    ld [hl], $01                                  ; $60F8: $36 $01
    ld hl, $0600                                  ; $60FA: $21 $00 $06
    call Call_000_2FEB                            ; $60FD: $CD $EB $2F
    call Call_027_616A                            ; $6100: $CD $6A $61
    ld hl, $D000                                  ; $6103: $21 $00 $D0
    call Call_000_2F79                            ; $6106: $CD $79 $2F
    call Call_000_2637                            ; $6109: $CD $37 $26

Jump_027_610C:
jr_027_610C:
    ld hl, $0108                                  ; $610C: $21 $08 $01
    ld a, $92                                     ; $610F: $3E $92
    call Call_000_34A2                            ; $6111: $CD $A2 $34
    call Call_000_3069                            ; $6114: $CD $69 $30
    jp Jump_027_6166                              ; $6117: $C3 $66 $61


Jump_027_611A:
    call Call_000_2CA2                            ; $611A: $CD $A2 $2C
    jr z, jr_027_6129                             ; $611D: $28 $0A

    ld hl, $009C                                  ; $611F: $21 $9C $00
    add hl, bc                                    ; $6122: $09
    ld a, [hl]                                    ; $6123: $7E
    ld hl, $0004                                  ; $6124: $21 $04 $00
    add hl, de                                    ; $6127: $19
    ld [hl], a                                    ; $6128: $77

jr_027_6129:
    call Call_000_2CA9                            ; $6129: $CD $A9 $2C
    jp nc, Jump_027_6166                          ; $612C: $D2 $66 $61

    inc hl                                        ; $612F: $23
    ld [hl], $0C                                  ; $6130: $36 $0C
    jp Jump_027_6166                              ; $6132: $C3 $66 $61


Jump_027_6135:
    call Call_000_2CA9                            ; $6135: $CD $A9 $2C
    jp nc, Jump_027_6166                          ; $6138: $D2 $66 $61

    call Call_000_2DB6                            ; $613B: $CD $B6 $2D
    jr jr_027_6169                                ; $613E: $18 $29

Jump_027_6140:
    call Call_000_326C                            ; $6140: $CD $6C $32
    jp nc, Jump_027_615B                          ; $6143: $D2 $5B $61

    jp nz, Jump_027_615B                          ; $6146: $C2 $5B $61

    ld hl, $0112                                  ; $6149: $21 $12 $01
    ld a, $90                                     ; $614C: $3E $90
    call Call_000_34B3                            ; $614E: $CD $B3 $34
    ld a, $08                                     ; $6151: $3E $08
    ld h, $00                                     ; $6153: $26 $00
    call Call_000_2D19                            ; $6155: $CD $19 $2D
    jp Jump_027_6169                              ; $6158: $C3 $69 $61


Jump_027_615B:
    call Call_000_2CA9                            ; $615B: $CD $A9 $2C
    jp nc, Jump_027_6166                          ; $615E: $D2 $66 $61

    call Call_000_2DB6                            ; $6161: $CD $B6 $2D
    jr jr_027_6169                                ; $6164: $18 $03

Jump_027_6166:
    call Call_000_2E25                            ; $6166: $CD $25 $2E

Jump_027_6169:
jr_027_6169:
    ret                                           ; $6169: $C9


Call_027_616A:
    ld hl, $0099                                  ; $616A: $21 $99 $00
    add hl, bc                                    ; $616D: $09
    ld a, [hl]                                    ; $616E: $7E
    ld hl, $0004                                  ; $616F: $21 $04 $00
    add hl, de                                    ; $6172: $19
    ld [hl], a                                    ; $6173: $77
    ld hl, $009A                                  ; $6174: $21 $9A $00
    add hl, bc                                    ; $6177: $09
    ld a, [hl]                                    ; $6178: $7E
    ld hl, $0006                                  ; $6179: $21 $06 $00
    add hl, de                                    ; $617C: $19
    ld [hl], a                                    ; $617D: $77
    ret                                           ; $617E: $C9


Call_027_617F:
    ld a, $14                                     ; $617F: $3E $14
    call Call_000_1360                            ; $6181: $CD $60 $13
    push bc                                       ; $6184: $C5
    push de                                       ; $6185: $D5
    ld hl, $0030                                  ; $6186: $21 $30 $00
    add hl, bc                                    ; $6189: $09
    ld a, [hl]                                    ; $618A: $7E
    or a                                          ; $618B: $B7
    jr nz, jr_027_6191                            ; $618C: $20 $03

    xor a                                         ; $618E: $AF
    jr jr_027_6192                                ; $618F: $18 $01

jr_027_6191:
    scf                                           ; $6191: $37

jr_027_6192:
    ld hl, $0022                                  ; $6192: $21 $22 $00
    push af                                       ; $6195: $F5
    add hl, bc                                    ; $6196: $09
    pop af                                        ; $6197: $F1
    ld a, [hl]                                    ; $6198: $7E
    push af                                       ; $6199: $F5
    call Call_000_25D1                            ; $619A: $CD $D1 $25
    ld hl, $0021                                  ; $619D: $21 $21 $00
    add hl, de                                    ; $61A0: $19
    ld [hl], $24                                  ; $61A1: $36 $24
    inc hl                                        ; $61A3: $23
    ld [hl], $A2                                  ; $61A4: $36 $A2
    inc hl                                        ; $61A6: $23
    ld [hl], $49                                  ; $61A7: $36 $49
    ld hl, $0011                                  ; $61A9: $21 $11 $00
    add hl, de                                    ; $61AC: $19
    ld [hl], $02                                  ; $61AD: $36 $02
    inc hl                                        ; $61AF: $23
    ld [hl], $CA                                  ; $61B0: $36 $CA
    inc hl                                        ; $61B2: $23
    ld [hl], $65                                  ; $61B3: $36 $65
    inc hl                                        ; $61B5: $23
    ld [hl], $00                                  ; $61B6: $36 $00
    ld hl, $001C                                  ; $61B8: $21 $1C $00
    add hl, de                                    ; $61BB: $19
    ld [hl], $00                                  ; $61BC: $36 $00
    inc hl                                        ; $61BE: $23
    ld [hl], $00                                  ; $61BF: $36 $00
    ld hl, $0029                                  ; $61C1: $21 $29 $00
    add hl, de                                    ; $61C4: $19
    ld [hl], $00                                  ; $61C5: $36 $00
    call Call_000_2614                            ; $61C7: $CD $14 $26
    ld hl, $1800                                  ; $61CA: $21 $00 $18
    call Call_000_2F79                            ; $61CD: $CD $79 $2F
    ld hl, $FD00                                  ; $61D0: $21 $00 $FD
    call Call_000_2F42                            ; $61D3: $CD $42 $2F
    pop af                                        ; $61D6: $F1
    jr c, jr_027_61E7                             ; $61D7: $38 $0E

    bit 1, a                                      ; $61D9: $CB $4F
    jr nz, jr_027_61E2                            ; $61DB: $20 $05

    ld hl, $0100                                  ; $61DD: $21 $00 $01
    jr jr_027_61EA                                ; $61E0: $18 $08

jr_027_61E2:
    ld hl, $0200                                  ; $61E2: $21 $00 $02
    jr jr_027_61EA                                ; $61E5: $18 $03

jr_027_61E7:
    ld hl, $0300                                  ; $61E7: $21 $00 $03

jr_027_61EA:
    call Call_000_2FEB                            ; $61EA: $CD $EB $2F
    ld hl, $0000                                  ; $61ED: $21 $00 $00
    call Call_000_305D                            ; $61F0: $CD $5D $30
    pop de                                        ; $61F3: $D1
    pop bc                                        ; $61F4: $C1
    ret                                           ; $61F5: $C9


    rst RST_38                                    ; $61F6: $FF
    rst RST_38                                    ; $61F7: $FF
    rst RST_38                                    ; $61F8: $FF
    rst RST_38                                    ; $61F9: $FF
    rst RST_38                                    ; $61FA: $FF
    rst RST_38                                    ; $61FB: $FF
    rst RST_38                                    ; $61FC: $FF
    rst RST_38                                    ; $61FD: $FF
    rst RST_38                                    ; $61FE: $FF
    rst RST_38                                    ; $61FF: $FF
    rst RST_38                                    ; $6200: $FF
    rst RST_38                                    ; $6201: $FF
    rst RST_38                                    ; $6202: $FF
    rst RST_38                                    ; $6203: $FF
    rst RST_38                                    ; $6204: $FF
    rst RST_38                                    ; $6205: $FF
    rst RST_38                                    ; $6206: $FF
    rst RST_38                                    ; $6207: $FF
    rst RST_38                                    ; $6208: $FF
    rst RST_38                                    ; $6209: $FF
    rst RST_38                                    ; $620A: $FF
    rst RST_38                                    ; $620B: $FF
    rst RST_38                                    ; $620C: $FF
    rst RST_38                                    ; $620D: $FF
    rst RST_38                                    ; $620E: $FF
    rst RST_38                                    ; $620F: $FF
    rst RST_38                                    ; $6210: $FF
    rst RST_38                                    ; $6211: $FF
    rst RST_38                                    ; $6212: $FF
    rst RST_38                                    ; $6213: $FF
    rst RST_38                                    ; $6214: $FF
    rst RST_38                                    ; $6215: $FF
    rst RST_38                                    ; $6216: $FF
    rst RST_38                                    ; $6217: $FF
    rst RST_38                                    ; $6218: $FF
    rst RST_38                                    ; $6219: $FF
    rst RST_38                                    ; $621A: $FF
    rst RST_38                                    ; $621B: $FF
    rst RST_38                                    ; $621C: $FF
    rst RST_38                                    ; $621D: $FF
    rst RST_38                                    ; $621E: $FF
    rst RST_38                                    ; $621F: $FF
    rst RST_38                                    ; $6220: $FF
    rst RST_38                                    ; $6221: $FF
    rst RST_38                                    ; $6222: $FF
    rst RST_38                                    ; $6223: $FF
    rst RST_38                                    ; $6224: $FF
    rst RST_38                                    ; $6225: $FF
    rst RST_38                                    ; $6226: $FF
    rst RST_38                                    ; $6227: $FF
    rst RST_38                                    ; $6228: $FF
    rst RST_38                                    ; $6229: $FF
    rst RST_38                                    ; $622A: $FF
    rst RST_38                                    ; $622B: $FF
    rst RST_38                                    ; $622C: $FF
    rst RST_38                                    ; $622D: $FF
    rst RST_38                                    ; $622E: $FF
    rst RST_38                                    ; $622F: $FF
    rst RST_38                                    ; $6230: $FF
    rst RST_38                                    ; $6231: $FF
    rst RST_38                                    ; $6232: $FF
    rst RST_38                                    ; $6233: $FF
    rst RST_38                                    ; $6234: $FF
    rst RST_38                                    ; $6235: $FF
    rst RST_38                                    ; $6236: $FF
    rst RST_38                                    ; $6237: $FF
    rst RST_38                                    ; $6238: $FF
    rst RST_38                                    ; $6239: $FF
    rst RST_38                                    ; $623A: $FF
    rst RST_38                                    ; $623B: $FF
    rst RST_38                                    ; $623C: $FF
    rst RST_38                                    ; $623D: $FF
    rst RST_38                                    ; $623E: $FF
    rst RST_38                                    ; $623F: $FF
    rst RST_38                                    ; $6240: $FF
    rst RST_38                                    ; $6241: $FF
    rst RST_38                                    ; $6242: $FF
    rst RST_38                                    ; $6243: $FF
    rst RST_38                                    ; $6244: $FF
    rst RST_38                                    ; $6245: $FF
    rst RST_38                                    ; $6246: $FF
    rst RST_38                                    ; $6247: $FF
    rst RST_38                                    ; $6248: $FF
    rst RST_38                                    ; $6249: $FF
    rst RST_38                                    ; $624A: $FF
    rst RST_38                                    ; $624B: $FF
    rst RST_38                                    ; $624C: $FF
    rst RST_38                                    ; $624D: $FF
    rst RST_38                                    ; $624E: $FF
    rst RST_38                                    ; $624F: $FF
    rst RST_38                                    ; $6250: $FF
    rst RST_38                                    ; $6251: $FF
    rst RST_38                                    ; $6252: $FF
    rst RST_38                                    ; $6253: $FF
    rst RST_38                                    ; $6254: $FF
    rst RST_38                                    ; $6255: $FF
    rst RST_38                                    ; $6256: $FF
    rst RST_38                                    ; $6257: $FF
    rst RST_38                                    ; $6258: $FF
    rst RST_38                                    ; $6259: $FF
    rst RST_38                                    ; $625A: $FF
    rst RST_38                                    ; $625B: $FF
    rst RST_38                                    ; $625C: $FF
    rst RST_38                                    ; $625D: $FF
    rst RST_38                                    ; $625E: $FF
    rst RST_38                                    ; $625F: $FF
    rst RST_38                                    ; $6260: $FF
    rst RST_38                                    ; $6261: $FF
    rst RST_38                                    ; $6262: $FF
    rst RST_38                                    ; $6263: $FF
    rst RST_38                                    ; $6264: $FF
    rst RST_38                                    ; $6265: $FF
    rst RST_38                                    ; $6266: $FF
    rst RST_38                                    ; $6267: $FF
    rst RST_38                                    ; $6268: $FF
    rst RST_38                                    ; $6269: $FF
    rst RST_38                                    ; $626A: $FF
    rst RST_38                                    ; $626B: $FF
    rst RST_38                                    ; $626C: $FF
    rst RST_38                                    ; $626D: $FF
    rst RST_38                                    ; $626E: $FF
    rst RST_38                                    ; $626F: $FF
    rst RST_38                                    ; $6270: $FF
    rst RST_38                                    ; $6271: $FF
    rst RST_38                                    ; $6272: $FF
    rst RST_38                                    ; $6273: $FF
    rst RST_38                                    ; $6274: $FF
    rst RST_38                                    ; $6275: $FF
    rst RST_38                                    ; $6276: $FF
    rst RST_38                                    ; $6277: $FF
    rst RST_38                                    ; $6278: $FF
    rst RST_38                                    ; $6279: $FF
    rst RST_38                                    ; $627A: $FF
    rst RST_38                                    ; $627B: $FF
    rst RST_38                                    ; $627C: $FF
    rst RST_38                                    ; $627D: $FF
    rst RST_38                                    ; $627E: $FF
    rst RST_38                                    ; $627F: $FF
    rst RST_38                                    ; $6280: $FF
    rst RST_38                                    ; $6281: $FF
    rst RST_38                                    ; $6282: $FF
    rst RST_38                                    ; $6283: $FF
    rst RST_38                                    ; $6284: $FF
    rst RST_38                                    ; $6285: $FF
    rst RST_38                                    ; $6286: $FF
    rst RST_38                                    ; $6287: $FF
    rst RST_38                                    ; $6288: $FF
    rst RST_38                                    ; $6289: $FF
    rst RST_38                                    ; $628A: $FF
    rst RST_38                                    ; $628B: $FF
    rst RST_38                                    ; $628C: $FF
    rst RST_38                                    ; $628D: $FF
    rst RST_38                                    ; $628E: $FF
    rst RST_38                                    ; $628F: $FF
    rst RST_38                                    ; $6290: $FF
    rst RST_38                                    ; $6291: $FF
    rst RST_38                                    ; $6292: $FF
    rst RST_38                                    ; $6293: $FF
    rst RST_38                                    ; $6294: $FF
    rst RST_38                                    ; $6295: $FF
    rst RST_38                                    ; $6296: $FF
    rst RST_38                                    ; $6297: $FF
    rst RST_38                                    ; $6298: $FF
    rst RST_38                                    ; $6299: $FF
    rst RST_38                                    ; $629A: $FF
    rst RST_38                                    ; $629B: $FF
    rst RST_38                                    ; $629C: $FF
    rst RST_38                                    ; $629D: $FF
    rst RST_38                                    ; $629E: $FF
    rst RST_38                                    ; $629F: $FF
    rst RST_38                                    ; $62A0: $FF
    rst RST_38                                    ; $62A1: $FF
    rst RST_38                                    ; $62A2: $FF
    rst RST_38                                    ; $62A3: $FF
    rst RST_38                                    ; $62A4: $FF
    rst RST_38                                    ; $62A5: $FF
    rst RST_38                                    ; $62A6: $FF
    rst RST_38                                    ; $62A7: $FF
    rst RST_38                                    ; $62A8: $FF
    rst RST_38                                    ; $62A9: $FF
    rst RST_38                                    ; $62AA: $FF
    rst RST_38                                    ; $62AB: $FF
    rst RST_38                                    ; $62AC: $FF
    rst RST_38                                    ; $62AD: $FF
    rst RST_38                                    ; $62AE: $FF
    rst RST_38                                    ; $62AF: $FF
    rst RST_38                                    ; $62B0: $FF
    rst RST_38                                    ; $62B1: $FF
    rst RST_38                                    ; $62B2: $FF
    rst RST_38                                    ; $62B3: $FF
    rst RST_38                                    ; $62B4: $FF
    rst RST_38                                    ; $62B5: $FF
    rst RST_38                                    ; $62B6: $FF
    rst RST_38                                    ; $62B7: $FF
    rst RST_38                                    ; $62B8: $FF
    rst RST_38                                    ; $62B9: $FF
    rst RST_38                                    ; $62BA: $FF
    rst RST_38                                    ; $62BB: $FF
    rst RST_38                                    ; $62BC: $FF
    rst RST_38                                    ; $62BD: $FF
    rst RST_38                                    ; $62BE: $FF
    rst RST_38                                    ; $62BF: $FF
    rst RST_38                                    ; $62C0: $FF
    rst RST_38                                    ; $62C1: $FF
    rst RST_38                                    ; $62C2: $FF
    rst RST_38                                    ; $62C3: $FF
    rst RST_38                                    ; $62C4: $FF
    rst RST_38                                    ; $62C5: $FF
    rst RST_38                                    ; $62C6: $FF
    rst RST_38                                    ; $62C7: $FF
    rst RST_38                                    ; $62C8: $FF
    rst RST_38                                    ; $62C9: $FF
    rst RST_38                                    ; $62CA: $FF
    rst RST_38                                    ; $62CB: $FF
    rst RST_38                                    ; $62CC: $FF
    rst RST_38                                    ; $62CD: $FF
    rst RST_38                                    ; $62CE: $FF
    rst RST_38                                    ; $62CF: $FF
    rst RST_38                                    ; $62D0: $FF
    rst RST_38                                    ; $62D1: $FF
    rst RST_38                                    ; $62D2: $FF
    rst RST_38                                    ; $62D3: $FF
    rst RST_38                                    ; $62D4: $FF
    rst RST_38                                    ; $62D5: $FF
    rst RST_38                                    ; $62D6: $FF
    rst RST_38                                    ; $62D7: $FF
    rst RST_38                                    ; $62D8: $FF
    rst RST_38                                    ; $62D9: $FF
    rst RST_38                                    ; $62DA: $FF
    rst RST_38                                    ; $62DB: $FF
    rst RST_38                                    ; $62DC: $FF
    rst RST_38                                    ; $62DD: $FF
    rst RST_38                                    ; $62DE: $FF
    rst RST_38                                    ; $62DF: $FF
    rst RST_38                                    ; $62E0: $FF
    rst RST_38                                    ; $62E1: $FF
    rst RST_38                                    ; $62E2: $FF
    rst RST_38                                    ; $62E3: $FF
    rst RST_38                                    ; $62E4: $FF
    rst RST_38                                    ; $62E5: $FF
    rst RST_38                                    ; $62E6: $FF
    rst RST_38                                    ; $62E7: $FF
    rst RST_38                                    ; $62E8: $FF
    rst RST_38                                    ; $62E9: $FF
    rst RST_38                                    ; $62EA: $FF
    rst RST_38                                    ; $62EB: $FF
    rst RST_38                                    ; $62EC: $FF
    rst RST_38                                    ; $62ED: $FF
    rst RST_38                                    ; $62EE: $FF
    rst RST_38                                    ; $62EF: $FF
    rst RST_38                                    ; $62F0: $FF
    rst RST_38                                    ; $62F1: $FF
    rst RST_38                                    ; $62F2: $FF
    rst RST_38                                    ; $62F3: $FF
    rst RST_38                                    ; $62F4: $FF
    rst RST_38                                    ; $62F5: $FF
    rst RST_38                                    ; $62F6: $FF
    rst RST_38                                    ; $62F7: $FF
    rst RST_38                                    ; $62F8: $FF
    rst RST_38                                    ; $62F9: $FF
    rst RST_38                                    ; $62FA: $FF
    rst RST_38                                    ; $62FB: $FF
    rst RST_38                                    ; $62FC: $FF
    rst RST_38                                    ; $62FD: $FF
    rst RST_38                                    ; $62FE: $FF
    rst RST_38                                    ; $62FF: $FF
    rst RST_38                                    ; $6300: $FF
    rst RST_38                                    ; $6301: $FF
    rst RST_38                                    ; $6302: $FF
    rst RST_38                                    ; $6303: $FF
    rst RST_38                                    ; $6304: $FF
    rst RST_38                                    ; $6305: $FF
    rst RST_38                                    ; $6306: $FF
    rst RST_38                                    ; $6307: $FF
    rst RST_38                                    ; $6308: $FF
    rst RST_38                                    ; $6309: $FF
    rst RST_38                                    ; $630A: $FF
    rst RST_38                                    ; $630B: $FF
    rst RST_38                                    ; $630C: $FF
    rst RST_38                                    ; $630D: $FF
    rst RST_38                                    ; $630E: $FF
    rst RST_38                                    ; $630F: $FF
    rst RST_38                                    ; $6310: $FF
    rst RST_38                                    ; $6311: $FF
    rst RST_38                                    ; $6312: $FF
    rst RST_38                                    ; $6313: $FF
    rst RST_38                                    ; $6314: $FF
    rst RST_38                                    ; $6315: $FF
    rst RST_38                                    ; $6316: $FF
    rst RST_38                                    ; $6317: $FF
    rst RST_38                                    ; $6318: $FF
    rst RST_38                                    ; $6319: $FF
    rst RST_38                                    ; $631A: $FF
    rst RST_38                                    ; $631B: $FF
    rst RST_38                                    ; $631C: $FF
    rst RST_38                                    ; $631D: $FF
    rst RST_38                                    ; $631E: $FF
    rst RST_38                                    ; $631F: $FF
    rst RST_38                                    ; $6320: $FF
    rst RST_38                                    ; $6321: $FF
    rst RST_38                                    ; $6322: $FF
    rst RST_38                                    ; $6323: $FF
    rst RST_38                                    ; $6324: $FF
    rst RST_38                                    ; $6325: $FF
    rst RST_38                                    ; $6326: $FF
    rst RST_38                                    ; $6327: $FF
    rst RST_38                                    ; $6328: $FF
    rst RST_38                                    ; $6329: $FF
    rst RST_38                                    ; $632A: $FF
    rst RST_38                                    ; $632B: $FF
    rst RST_38                                    ; $632C: $FF
    rst RST_38                                    ; $632D: $FF
    rst RST_38                                    ; $632E: $FF
    rst RST_38                                    ; $632F: $FF
    rst RST_38                                    ; $6330: $FF
    rst RST_38                                    ; $6331: $FF
    rst RST_38                                    ; $6332: $FF
    rst RST_38                                    ; $6333: $FF
    rst RST_38                                    ; $6334: $FF
    rst RST_38                                    ; $6335: $FF
    rst RST_38                                    ; $6336: $FF
    rst RST_38                                    ; $6337: $FF
    rst RST_38                                    ; $6338: $FF
    rst RST_38                                    ; $6339: $FF
    rst RST_38                                    ; $633A: $FF
    rst RST_38                                    ; $633B: $FF
    rst RST_38                                    ; $633C: $FF
    rst RST_38                                    ; $633D: $FF
    rst RST_38                                    ; $633E: $FF
    rst RST_38                                    ; $633F: $FF
    rst RST_38                                    ; $6340: $FF
    rst RST_38                                    ; $6341: $FF
    rst RST_38                                    ; $6342: $FF
    rst RST_38                                    ; $6343: $FF
    rst RST_38                                    ; $6344: $FF
    rst RST_38                                    ; $6345: $FF
    rst RST_38                                    ; $6346: $FF
    rst RST_38                                    ; $6347: $FF
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
