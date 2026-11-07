; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $025", ROMX[$4000], BANK[$25]

    call Call_000_31B6                            ; $4000: $CD $B6 $31
    jp c, Jump_025_40F5                           ; $4003: $DA $F5 $40

    jp z, Jump_025_4015                           ; $4006: $CA $15 $40

    call Call_000_3A2A                            ; $4009: $CD $2A $3A
    jp c, Jump_025_409C                           ; $400C: $DA $9C $40

    jp z, Jump_025_40BE                           ; $400F: $CA $BE $40

    jp Jump_025_40F5                              ; $4012: $C3 $F5 $40


Jump_025_4015:
    call Call_000_3A2A                            ; $4015: $CD $2A $3A
    jp c, Jump_025_40D7                           ; $4018: $DA $D7 $40

    jp z, Jump_025_40E8                           ; $401B: $CA $E8 $40

    call Call_000_39D3                            ; $401E: $CD $D3 $39
    jp nc, Jump_025_40F5                          ; $4021: $D2 $F5 $40

    jp z, Jump_025_402D                           ; $4024: $CA $2D $40

    jp nz, Jump_025_4068                          ; $4027: $C2 $68 $40

    jp Jump_025_40F5                              ; $402A: $C3 $F5 $40


Jump_025_402D:
    call Call_000_3209                            ; $402D: $CD $09 $32
    jr c, jr_025_403B                             ; $4030: $38 $09

    ld hl, $3AD4                                  ; $4032: $21 $D4 $3A
    call Call_000_2B78                            ; $4035: $CD $78 $2B
    jp c, Jump_025_40D7                           ; $4038: $DA $D7 $40

jr_025_403B:
    call Call_000_3A61                            ; $403B: $CD $61 $3A
    jp c, Jump_025_40F3                           ; $403E: $DA $F3 $40

    ld hl, $3B14                                  ; $4041: $21 $14 $3B
    call Call_000_2B78                            ; $4044: $CD $78 $2B
    jp c, Jump_025_408B                           ; $4047: $DA $8B $40

    ld hl, $3AB9                                  ; $404A: $21 $B9 $3A
    call Call_000_2B78                            ; $404D: $CD $78 $2B
    jp c, Jump_025_40BE                           ; $4050: $DA $BE $40

    ld hl, $3B44                                  ; $4053: $21 $44 $3B
    call Call_000_2B22                            ; $4056: $CD $22 $2B
    jp c, Jump_025_409C                           ; $4059: $DA $9C $40

    ld hl, $3B5D                                  ; $405C: $21 $5D $3B
    call Call_000_2B22                            ; $405F: $CD $22 $2B
    jp c, Jump_025_409C                           ; $4062: $DA $9C $40

    jp Jump_025_40F5                              ; $4065: $C3 $F5 $40


Jump_025_4068:
    call Call_000_3209                            ; $4068: $CD $09 $32
    jp c, Jump_025_407F                           ; $406B: $DA $7F $40

    cp $01                                        ; $406E: $FE $01
    jr z, jr_025_407F                             ; $4070: $28 $0D

    cp $02                                        ; $4072: $FE $02
    jr z, jr_025_4076                             ; $4074: $28 $00

jr_025_4076:
    ld hl, $3AE5                                  ; $4076: $21 $E5 $3A
    call Call_000_2B78                            ; $4079: $CD $78 $2B
    jp c, Jump_025_40E8                           ; $407C: $DA $E8 $40

Jump_025_407F:
jr_025_407F:
    ld hl, $3B2A                                  ; $407F: $21 $2A $3B
    call Call_000_2B78                            ; $4082: $CD $78 $2B
    jp c, Jump_025_40AD                           ; $4085: $DA $AD $40

    jp Jump_025_40F5                              ; $4088: $C3 $F5 $40


Jump_025_408B:
    call Call_000_2C23                            ; $408B: $CD $23 $2C
    ld a, $40                                     ; $408E: $3E $40
    call Call_000_32E2                            ; $4090: $CD $E2 $32
    ld hl, $009D                                  ; $4093: $21 $9D $00
    add hl, bc                                    ; $4096: $09
    ld [hl], $00                                  ; $4097: $36 $00
    jp Jump_025_40F3                              ; $4099: $C3 $F3 $40


Jump_025_409C:
    call Call_000_2C34                            ; $409C: $CD $34 $2C
    ld a, $42                                     ; $409F: $3E $42
    call Call_000_32E2                            ; $40A1: $CD $E2 $32
    ld hl, $009D                                  ; $40A4: $21 $9D $00
    add hl, bc                                    ; $40A7: $09
    ld [hl], $00                                  ; $40A8: $36 $00
    jp Jump_025_40F3                              ; $40AA: $C3 $F3 $40


Jump_025_40AD:
    call Call_000_2C23                            ; $40AD: $CD $23 $2C
    ld a, $44                                     ; $40B0: $3E $44
    call Call_000_32E2                            ; $40B2: $CD $E2 $32
    ld hl, $009D                                  ; $40B5: $21 $9D $00
    add hl, bc                                    ; $40B8: $09
    ld [hl], $00                                  ; $40B9: $36 $00
    jp Jump_025_40F3                              ; $40BB: $C3 $F3 $40


Jump_025_40BE:
    call Call_000_32C5                            ; $40BE: $CD $C5 $32
    jp nz, Jump_025_40F5                          ; $40C1: $C2 $F5 $40

    call Call_000_2C23                            ; $40C4: $CD $23 $2C
    ld a, $46                                     ; $40C7: $3E $46
    call Call_000_32E2                            ; $40C9: $CD $E2 $32
    ld hl, $0303                                  ; $40CC: $21 $03 $03
    ld a, $01                                     ; $40CF: $3E $01
    call Call_000_34C4                            ; $40D1: $CD $C4 $34
    jp Jump_025_40F3                              ; $40D4: $C3 $F3 $40


Jump_025_40D7:
    call Call_000_2C23                            ; $40D7: $CD $23 $2C
    ld a, $4A                                     ; $40DA: $3E $4A
    call Call_000_32E2                            ; $40DC: $CD $E2 $32
    ld hl, $0021                                  ; $40DF: $21 $21 $00
    add hl, bc                                    ; $40E2: $09
    set 7, [hl]                                   ; $40E3: $CB $FE
    jp Jump_025_40F3                              ; $40E5: $C3 $F3 $40


Jump_025_40E8:
    call Call_000_2C23                            ; $40E8: $CD $23 $2C
    ld a, $4C                                     ; $40EB: $3E $4C
    call Call_000_32E2                            ; $40ED: $CD $E2 $32
    jp Jump_025_40F3                              ; $40F0: $C3 $F3 $40


Jump_025_40F3:
    scf                                           ; $40F3: $37
    ret                                           ; $40F4: $C9


Jump_025_40F5:
    or a                                          ; $40F5: $B7
    ret                                           ; $40F6: $C9


    call Call_000_2EE0                            ; $40F7: $CD $E0 $2E
    call Call_000_3517                            ; $40FA: $CD $17 $35
    jp c, Jump_025_41B3                           ; $40FD: $DA $B3 $41

    ld hl, $0018                                  ; $4100: $21 $18 $00
    add hl, de                                    ; $4103: $19
    ld a, [hl]                                    ; $4104: $7E
    cp $00                                        ; $4105: $FE $00
    jp z, Jump_025_4117                           ; $4107: $CA $17 $41

    cp $04                                        ; $410A: $FE $04
    jp z, Jump_025_4155                           ; $410C: $CA $55 $41

    cp $10                                        ; $410F: $FE $10
    jp z, Jump_025_419F                           ; $4111: $CA $9F $41

    jp Jump_025_41B0                              ; $4114: $C3 $B0 $41


Jump_025_4117:
    call Call_000_2CA9                            ; $4117: $CD $A9 $2C
    jp nc, Jump_025_41B0                          ; $411A: $D2 $B0 $41

    inc hl                                        ; $411D: $23
    ld [hl], $04                                  ; $411E: $36 $04
    ld hl, $009D                                  ; $4120: $21 $9D $00
    add hl, bc                                    ; $4123: $09
    ld a, [hl]                                    ; $4124: $7E
    or a                                          ; $4125: $B7
    jr nz, jr_025_4144                            ; $4126: $20 $1C

    call Call_000_32CC                            ; $4128: $CD $CC $32
    jr c, jr_025_413D                             ; $412B: $38 $10

    jr nz, jr_025_4136                            ; $412D: $20 $07

    ld hl, $0408                                  ; $412F: $21 $08 $04
    ld a, $01                                     ; $4132: $3E $01
    jr jr_025_414F                                ; $4134: $18 $19

jr_025_4136:
    ld hl, $0608                                  ; $4136: $21 $08 $06
    ld a, $21                                     ; $4139: $3E $21
    jr jr_025_414F                                ; $413B: $18 $12

jr_025_413D:
    ld hl, $0808                                  ; $413D: $21 $08 $08
    ld a, $23                                     ; $4140: $3E $23
    jr jr_025_414F                                ; $4142: $18 $0B

jr_025_4144:
    ld hl, $001D                                  ; $4144: $21 $1D $00
    add hl, de                                    ; $4147: $19
    ld [hl], $10                                  ; $4148: $36 $10
    ld hl, $1208                                  ; $414A: $21 $08 $12
    ld a, $23                                     ; $414D: $3E $23

jr_025_414F:
    call Call_000_34B3                            ; $414F: $CD $B3 $34
    jp Jump_025_41B0                              ; $4152: $C3 $B0 $41


Jump_025_4155:
    call Call_000_2CA2                            ; $4155: $CD $A2 $2C
    jp z, Jump_025_418D                           ; $4158: $CA $8D $41

    ld a, $AF                                     ; $415B: $3E $AF
    call Call_000_1360                            ; $415D: $CD $60 $13
    ld hl, $009D                                  ; $4160: $21 $9D $00
    add hl, bc                                    ; $4163: $09
    ld a, [hl]                                    ; $4164: $7E
    or a                                          ; $4165: $B7
    jr nz, jr_025_4187                            ; $4166: $20 $1F

    call Call_000_32CC                            ; $4168: $CD $CC $32
    jr c, jr_025_417F                             ; $416B: $38 $12

    jr nz, jr_025_4177                            ; $416D: $20 $08

    ld hl, $0000                                  ; $416F: $21 $00 $00
    call Call_000_2FEB                            ; $4172: $CD $EB $2F
    jr jr_025_418D                                ; $4175: $18 $16

jr_025_4177:
    ld hl, $0100                                  ; $4177: $21 $00 $01
    call Call_000_2FEB                            ; $417A: $CD $EB $2F
    jr jr_025_418D                                ; $417D: $18 $0E

jr_025_417F:
    ld hl, $0180                                  ; $417F: $21 $80 $01
    call Call_000_2FEB                            ; $4182: $CD $EB $2F
    jr jr_025_418D                                ; $4185: $18 $06

jr_025_4187:
    ld hl, $0600                                  ; $4187: $21 $00 $06
    call Call_000_2FEB                            ; $418A: $CD $EB $2F

Jump_025_418D:
jr_025_418D:
    ld hl, $0020                                  ; $418D: $21 $20 $00
    call Call_000_30B0                            ; $4190: $CD $B0 $30
    call Call_000_2CA9                            ; $4193: $CD $A9 $2C
    jp nc, Jump_025_41B0                          ; $4196: $D2 $B0 $41

    inc hl                                        ; $4199: $23
    ld [hl], $01                                  ; $419A: $36 $01
    jp Jump_025_41B0                              ; $419C: $C3 $B0 $41


Jump_025_419F:
    call Call_000_2CA9                            ; $419F: $CD $A9 $2C
    jp nc, Jump_025_41B0                          ; $41A2: $D2 $B0 $41

    call Call_000_2DB6                            ; $41A5: $CD $B6 $2D
    ld hl, $009D                                  ; $41A8: $21 $9D $00
    add hl, bc                                    ; $41AB: $09
    ld [hl], $00                                  ; $41AC: $36 $00
    jr jr_025_41B3                                ; $41AE: $18 $03

Jump_025_41B0:
    jp Jump_000_2E25                              ; $41B0: $C3 $25 $2E


Jump_025_41B3:
jr_025_41B3:
    ret                                           ; $41B3: $C9


    call Call_000_2EE0                            ; $41B4: $CD $E0 $2E
    call Call_000_3517                            ; $41B7: $CD $17 $35
    jp c, Jump_025_426B                           ; $41BA: $DA $6B $42

    ld hl, $0018                                  ; $41BD: $21 $18 $00
    add hl, de                                    ; $41C0: $19
    ld a, [hl]                                    ; $41C1: $7E
    cp $00                                        ; $41C2: $FE $00
    jp z, Jump_025_41D9                           ; $41C4: $CA $D9 $41

    cp $04                                        ; $41C7: $FE $04
    jp z, Jump_025_4211                           ; $41C9: $CA $11 $42

    cp $08                                        ; $41CC: $FE $08
    jp z, Jump_025_4227                           ; $41CE: $CA $27 $42

    cp $0C                                        ; $41D1: $FE $0C
    jp z, Jump_025_424E                           ; $41D3: $CA $4E $42

    jp Jump_025_4268                              ; $41D6: $C3 $68 $42


Jump_025_41D9:
    call Call_000_2CA9                            ; $41D9: $CD $A9 $2C
    jp nc, Jump_025_4268                          ; $41DC: $D2 $68 $42

    inc hl                                        ; $41DF: $23
    ld [hl], $00                                  ; $41E0: $36 $00
    ld hl, $0408                                  ; $41E2: $21 $08 $04
    ld a, $D0                                     ; $41E5: $3E $D0
    call Call_000_34B3                            ; $41E7: $CD $B3 $34
    ld hl, $009D                                  ; $41EA: $21 $9D $00
    add hl, bc                                    ; $41ED: $09
    ld a, [hl]                                    ; $41EE: $7E
    or a                                          ; $41EF: $B7
    jr nz, jr_025_4205                            ; $41F0: $20 $13

    call Call_000_32CC                            ; $41F2: $CD $CC $32
    jr c, jr_025_4201                             ; $41F5: $38 $0A

    jr nz, jr_025_41FD                            ; $41F7: $20 $04

    ld a, $02                                     ; $41F9: $3E $02
    jr jr_025_4209                                ; $41FB: $18 $0C

jr_025_41FD:
    ld a, $03                                     ; $41FD: $3E $03
    jr jr_025_4209                                ; $41FF: $18 $08

jr_025_4201:
    ld a, $04                                     ; $4201: $3E $04
    jr jr_025_4209                                ; $4203: $18 $04

jr_025_4205:
    ld a, $05                                     ; $4205: $3E $05
    jr jr_025_4209                                ; $4207: $18 $00

jr_025_4209:
    ld hl, $009C                                  ; $4209: $21 $9C $00
    add hl, bc                                    ; $420C: $09
    ld [hl], a                                    ; $420D: $77
    jp Jump_025_4268                              ; $420E: $C3 $68 $42


Jump_025_4211:
    call Call_000_2CA9                            ; $4211: $CD $A9 $2C
    jp nc, Jump_025_4268                          ; $4214: $D2 $68 $42

    ld a, $11                                     ; $4217: $3E $11
    call Call_000_1360                            ; $4219: $CD $60 $13
    ld hl, $0408                                  ; $421C: $21 $08 $04
    ld a, $51                                     ; $421F: $3E $51
    call Call_000_34B3                            ; $4221: $CD $B3 $34
    jp Jump_025_4268                              ; $4224: $C3 $68 $42


Jump_025_4227:
    call Call_000_2CA9                            ; $4227: $CD $A9 $2C
    jp nc, Jump_025_4268                          ; $422A: $D2 $68 $42

    ld hl, $009C                                  ; $422D: $21 $9C $00
    add hl, bc                                    ; $4230: $09
    dec [hl]                                      ; $4231: $35
    jr z, jr_025_4245                             ; $4232: $28 $11

    ld hl, $0408                                  ; $4234: $21 $08 $04
    ld a, $51                                     ; $4237: $3E $51
    call Call_000_34B3                            ; $4239: $CD $B3 $34
    ld hl, $0014                                  ; $423C: $21 $14 $00
    add hl, de                                    ; $423F: $19
    ld [hl], $00                                  ; $4240: $36 $00
    jp Jump_025_4268                              ; $4242: $C3 $68 $42


jr_025_4245:
    ld hl, $001D                                  ; $4245: $21 $1D $00
    add hl, bc                                    ; $4248: $09
    ld [hl], $14                                  ; $4249: $36 $14
    jp Jump_025_4268                              ; $424B: $C3 $68 $42


Jump_025_424E:
    call Call_000_2CA9                            ; $424E: $CD $A9 $2C
    jp nc, Jump_025_4268                          ; $4251: $D2 $68 $42

    ld hl, $009D                                  ; $4254: $21 $9D $00
    add hl, bc                                    ; $4257: $09
    ld a, [hl]                                    ; $4258: $7E
    or a                                          ; $4259: $B7
    jr nz, jr_025_4261                            ; $425A: $20 $05

    call Call_000_2DB6                            ; $425C: $CD $B6 $2D
    jr jr_025_426B                                ; $425F: $18 $0A

jr_025_4261:
    ld a, $44                                     ; $4261: $3E $44
    call Call_000_32E2                            ; $4263: $CD $E2 $32
    jr jr_025_426B                                ; $4266: $18 $03

Jump_025_4268:
    call Call_000_2E25                            ; $4268: $CD $25 $2E

Jump_025_426B:
jr_025_426B:
    ret                                           ; $426B: $C9


    call Call_000_2EE0                            ; $426C: $CD $E0 $2E
    call Call_000_3517                            ; $426F: $CD $17 $35
    jp c, Jump_025_4352                           ; $4272: $DA $52 $43

    ld hl, $0018                                  ; $4275: $21 $18 $00
    add hl, de                                    ; $4278: $19
    ld a, [hl]                                    ; $4279: $7E
    cp $00                                        ; $427A: $FE $00
    jp z, Jump_025_4291                           ; $427C: $CA $91 $42

    cp $04                                        ; $427F: $FE $04
    jp z, Jump_025_4294                           ; $4281: $CA $94 $42

    cp $08                                        ; $4284: $FE $08
    jp z, Jump_025_42D7                           ; $4286: $CA $D7 $42

    cp $0C                                        ; $4289: $FE $0C
    jp z, Jump_025_432F                           ; $428B: $CA $2F $43

    jp Jump_025_434F                              ; $428E: $C3 $4F $43


Jump_025_4291:
    jp Jump_025_434F                              ; $4291: $C3 $4F $43


Jump_025_4294:
    call Call_000_2CA9                            ; $4294: $CD $A9 $2C
    jp nc, Jump_025_434F                          ; $4297: $D2 $4F $43

    inc hl                                        ; $429A: $23
    ld [hl], $10                                  ; $429B: $36 $10
    ld hl, $009D                                  ; $429D: $21 $9D $00
    add hl, bc                                    ; $42A0: $09
    ld a, [hl]                                    ; $42A1: $7E
    or a                                          ; $42A2: $B7
    jr nz, jr_025_42CA                            ; $42A3: $20 $25

    call Call_000_32CC                            ; $42A5: $CD $CC $32
    jr c, jr_025_42C0                             ; $42A8: $38 $16

    jr nz, jr_025_42B6                            ; $42AA: $20 $0A

    ld hl, $0508                                  ; $42AC: $21 $08 $05
    ld a, $01                                     ; $42AF: $3E $01
    call Call_000_34B3                            ; $42B1: $CD $B3 $34
    jr jr_025_42D4                                ; $42B4: $18 $1E

jr_025_42B6:
    ld hl, $0608                                  ; $42B6: $21 $08 $06
    ld a, $03                                     ; $42B9: $3E $03
    call Call_000_34B3                            ; $42BB: $CD $B3 $34
    jr jr_025_42D4                                ; $42BE: $18 $14

jr_025_42C0:
    ld hl, $0708                                  ; $42C0: $21 $08 $07
    ld a, $23                                     ; $42C3: $3E $23
    call Call_000_34B3                            ; $42C5: $CD $B3 $34
    jr jr_025_42D4                                ; $42C8: $18 $0A

jr_025_42CA:
    ld hl, $1208                                  ; $42CA: $21 $08 $12
    ld a, $3F                                     ; $42CD: $3E $3F
    call Call_000_34B3                            ; $42CF: $CD $B3 $34
    jr jr_025_42D4                                ; $42D2: $18 $00

jr_025_42D4:
    jp Jump_025_434F                              ; $42D4: $C3 $4F $43


Jump_025_42D7:
    call Call_000_2CA2                            ; $42D7: $CD $A2 $2C
    jr z, jr_025_430E                             ; $42DA: $28 $32

    ld a, $11                                     ; $42DC: $3E $11
    call Call_000_1360                            ; $42DE: $CD $60 $13
    ld hl, $009D                                  ; $42E1: $21 $9D $00
    add hl, bc                                    ; $42E4: $09
    ld a, [hl]                                    ; $42E5: $7E
    or a                                          ; $42E6: $B7
    jr nz, jr_025_4308                            ; $42E7: $20 $1F

    call Call_000_32CC                            ; $42E9: $CD $CC $32
    jr c, jr_025_4300                             ; $42EC: $38 $12

    jr nz, jr_025_42F8                            ; $42EE: $20 $08

    ld hl, $0400                                  ; $42F0: $21 $00 $04
    call Call_000_2FEB                            ; $42F3: $CD $EB $2F
    jr jr_025_430E                                ; $42F6: $18 $16

jr_025_42F8:
    ld hl, $0500                                  ; $42F8: $21 $00 $05
    call Call_000_2FEB                            ; $42FB: $CD $EB $2F
    jr jr_025_430E                                ; $42FE: $18 $0E

jr_025_4300:
    ld hl, $0600                                  ; $4300: $21 $00 $06
    call Call_000_2FEB                            ; $4303: $CD $EB $2F
    jr jr_025_430E                                ; $4306: $18 $06

jr_025_4308:
    ld hl, $0800                                  ; $4308: $21 $00 $08
    call Call_000_2FEB                            ; $430B: $CD $EB $2F

jr_025_430E:
    ld hl, $0020                                  ; $430E: $21 $20 $00
    call Call_000_30B0                            ; $4311: $CD $B0 $30
    call Call_000_2CA9                            ; $4314: $CD $A9 $2C
    jp nc, Jump_025_434F                          ; $4317: $D2 $4F $43

    inc hl                                        ; $431A: $23
    ld [hl], $0C                                  ; $431B: $36 $0C
    ld hl, $009D                                  ; $431D: $21 $9D $00
    add hl, bc                                    ; $4320: $09
    ld a, [hl]                                    ; $4321: $7E
    or a                                          ; $4322: $B7
    jp z, Jump_025_434F                           ; $4323: $CA $4F $43

    ld hl, $001D                                  ; $4326: $21 $1D $00
    add hl, de                                    ; $4329: $19
    ld [hl], $02                                  ; $432A: $36 $02
    jp Jump_025_434F                              ; $432C: $C3 $4F $43


Jump_025_432F:
    ld hl, $0020                                  ; $432F: $21 $20 $00
    call Call_000_30B0                            ; $4332: $CD $B0 $30
    call Call_000_2CA9                            ; $4335: $CD $A9 $2C
    jp nc, Jump_025_434F                          ; $4338: $D2 $4F $43

    ld hl, $009D                                  ; $433B: $21 $9D $00
    add hl, bc                                    ; $433E: $09
    ld a, [hl]                                    ; $433F: $7E
    or a                                          ; $4340: $B7
    jr nz, jr_025_4348                            ; $4341: $20 $05

    call Call_000_2DB6                            ; $4343: $CD $B6 $2D
    jr jr_025_4352                                ; $4346: $18 $0A

jr_025_4348:
    ld a, $40                                     ; $4348: $3E $40
    call Call_000_32E2                            ; $434A: $CD $E2 $32
    jr jr_025_4352                                ; $434D: $18 $03

Jump_025_434F:
    jp Jump_000_2E25                              ; $434F: $C3 $25 $2E


Jump_025_4352:
jr_025_4352:
    ret                                           ; $4352: $C9


    call Call_000_2EE0                            ; $4353: $CD $E0 $2E
    call Call_000_3517                            ; $4356: $CD $17 $35
    jp c, Jump_025_4391                           ; $4359: $DA $91 $43

    ld hl, $0018                                  ; $435C: $21 $18 $00
    add hl, de                                    ; $435F: $19
    ld a, [hl]                                    ; $4360: $7E
    cp $04                                        ; $4361: $FE $04
    jp z, Jump_025_436E                           ; $4363: $CA $6E $43

    cp $08                                        ; $4366: $FE $08
    jp z, Jump_025_437A                           ; $4368: $CA $7A $43

    jp Jump_025_438E                              ; $436B: $C3 $8E $43


Jump_025_436E:
    call Call_000_2CA9                            ; $436E: $CD $A9 $2C
    jp nc, Jump_025_438E                          ; $4371: $D2 $8E $43

    inc hl                                        ; $4374: $23
    ld [hl], $14                                  ; $4375: $36 $14
    jp Jump_025_438E                              ; $4377: $C3 $8E $43


Jump_025_437A:
    call Call_000_2CA2                            ; $437A: $CD $A2 $2C
    jp z, Jump_025_4383                           ; $437D: $CA $83 $43

    call Call_025_48FB                            ; $4380: $CD $FB $48

Jump_025_4383:
    call Call_000_2CA9                            ; $4383: $CD $A9 $2C
    jp nc, Jump_025_438E                          ; $4386: $D2 $8E $43

    call Call_000_2DB6                            ; $4389: $CD $B6 $2D
    jr jr_025_4391                                ; $438C: $18 $03

Jump_025_438E:
    jp Jump_000_2E25                              ; $438E: $C3 $25 $2E


Jump_025_4391:
jr_025_4391:
    ret                                           ; $4391: $C9


    call Call_000_2EE0                            ; $4392: $CD $E0 $2E
    call Call_000_3517                            ; $4395: $CD $17 $35
    jp c, Jump_025_462F                           ; $4398: $DA $2F $46

    ld hl, $0018                                  ; $439B: $21 $18 $00
    add hl, de                                    ; $439E: $19
    ld a, [hl]                                    ; $439F: $7E
    cp $00                                        ; $43A0: $FE $00
    jp z, Jump_025_4411                           ; $43A2: $CA $11 $44

    cp $04                                        ; $43A5: $FE $04
    jp z, Jump_025_4414                           ; $43A7: $CA $14 $44

    cp $08                                        ; $43AA: $FE $08
    jp z, Jump_025_4411                           ; $43AC: $CA $11 $44

    cp $0C                                        ; $43AF: $FE $0C
    jp z, Jump_025_4411                           ; $43B1: $CA $11 $44

    cp $10                                        ; $43B4: $FE $10
    jp z, Jump_025_4423                           ; $43B6: $CA $23 $44

    cp $14                                        ; $43B9: $FE $14
    jp z, Jump_025_4437                           ; $43BB: $CA $37 $44

    cp $18                                        ; $43BE: $FE $18
    jp z, Jump_025_4486                           ; $43C0: $CA $86 $44

    cp $1C                                        ; $43C3: $FE $1C
    jp z, Jump_025_4492                           ; $43C5: $CA $92 $44

    cp $20                                        ; $43C8: $FE $20
    jp z, Jump_025_44AB                           ; $43CA: $CA $AB $44

    cp $24                                        ; $43CD: $FE $24
    jp z, Jump_025_44B7                           ; $43CF: $CA $B7 $44

    cp $28                                        ; $43D2: $FE $28
    jp z, Jump_025_44C3                           ; $43D4: $CA $C3 $44

    cp $2C                                        ; $43D7: $FE $2C
    jp z, Jump_025_44CF                           ; $43D9: $CA $CF $44

    cp $30                                        ; $43DC: $FE $30
    jp z, Jump_025_44DB                           ; $43DE: $CA $DB $44

    cp $34                                        ; $43E1: $FE $34
    jp z, Jump_025_4507                           ; $43E3: $CA $07 $45

    cp $38                                        ; $43E6: $FE $38
    jp z, Jump_025_4520                           ; $43E8: $CA $20 $45

    cp $3C                                        ; $43EB: $FE $3C
    jp z, Jump_025_4557                           ; $43ED: $CA $57 $45

    cp $40                                        ; $43F0: $FE $40
    jp z, Jump_025_4595                           ; $43F2: $CA $95 $45

    cp $44                                        ; $43F5: $FE $44
    jp z, Jump_025_45A1                           ; $43F7: $CA $A1 $45

    cp $48                                        ; $43FA: $FE $48
    jp z, Jump_025_45C0                           ; $43FC: $CA $C0 $45

    cp $4C                                        ; $43FF: $FE $4C
    jp z, Jump_025_45CC                           ; $4401: $CA $CC $45

    cp $50                                        ; $4404: $FE $50
    jp z, Jump_025_45FB                           ; $4406: $CA $FB $45

    cp $54                                        ; $4409: $FE $54
    jp z, Jump_025_4606                           ; $440B: $CA $06 $46

    jp Jump_025_462C                              ; $440E: $C3 $2C $46


Jump_025_4411:
    jp Jump_025_462C                              ; $4411: $C3 $2C $46


Jump_025_4414:
    call Call_000_2CA9                            ; $4414: $CD $A9 $2C
    jp nc, Jump_025_462C                          ; $4417: $D2 $2C $46

    ld hl, $0031                                  ; $441A: $21 $31 $00
    add hl, bc                                    ; $441D: $09
    ld [hl], $01                                  ; $441E: $36 $01
    jp Jump_025_462C                              ; $4420: $C3 $2C $46


Jump_025_4423:
    call Call_000_2CA9                            ; $4423: $CD $A9 $2C
    jp nc, Jump_025_462C                          ; $4426: $D2 $2C $46

    inc hl                                        ; $4429: $23
    ld [hl], $0A                                  ; $442A: $36 $0A
    ld hl, $010C                                  ; $442C: $21 $0C $01
    ld a, $10                                     ; $442F: $3E $10
    call Call_000_34B3                            ; $4431: $CD $B3 $34
    jp Jump_025_462C                              ; $4434: $C3 $2C $46


Jump_025_4437:
    call Call_000_2CA2                            ; $4437: $CD $A2 $2C
    jp z, Jump_025_4451                           ; $443A: $CA $51 $44

    ld a, $11                                     ; $443D: $3E $11
    call Call_000_1360                            ; $443F: $CD $60 $13
    ld hl, $0021                                  ; $4442: $21 $21 $00
    add hl, bc                                    ; $4445: $09
    res 7, [hl]                                   ; $4446: $CB $BE
    ld hl, $06FF                                  ; $4448: $21 $FF $06
    call Call_000_2FEB                            ; $444B: $CD $EB $2F
    jp Jump_025_45CF                              ; $444E: $C3 $CF $45


Jump_025_4451:
    call Call_000_3262                            ; $4451: $CD $62 $32
    jp nc, Jump_025_446C                          ; $4454: $D2 $6C $44

    jp nz, Jump_025_447C                          ; $4457: $C2 $7C $44

    ld a, $18                                     ; $445A: $3E $18
    ld h, $01                                     ; $445C: $26 $01
    call Call_000_2D19                            ; $445E: $CD $19 $2D
    ld hl, $0112                                  ; $4461: $21 $12 $01
    ld a, $50                                     ; $4464: $3E $50
    call Call_000_34B3                            ; $4466: $CD $B3 $34
    jp Jump_025_462F                              ; $4469: $C3 $2F $46


Jump_025_446C:
    call Call_000_2CA9                            ; $446C: $CD $A9 $2C
    jp nc, Jump_025_45CF                          ; $446F: $D2 $CF $45

    ld a, $54                                     ; $4472: $3E $54
    ld h, $06                                     ; $4474: $26 $06
    call Call_000_2D19                            ; $4476: $CD $19 $2D
    jp Jump_025_45CF                              ; $4479: $C3 $CF $45


Jump_025_447C:
    ld a, $54                                     ; $447C: $3E $54
    ld h, $0A                                     ; $447E: $26 $0A
    call Call_000_2D19                            ; $4480: $CD $19 $2D
    jp Jump_025_45CF                              ; $4483: $C3 $CF $45


Jump_025_4486:
    call Call_000_2CA9                            ; $4486: $CD $A9 $2C
    jp nc, Jump_025_462C                          ; $4489: $D2 $2C $46

    inc hl                                        ; $448C: $23
    ld [hl], $02                                  ; $448D: $36 $02
    jp Jump_025_462C                              ; $448F: $C3 $2C $46


Jump_025_4492:
    call Call_000_2CA2                            ; $4492: $CD $A2 $2C
    jr z, jr_025_44A8                             ; $4495: $28 $11

    ld a, $12                                     ; $4497: $3E $12
    call Call_000_1360                            ; $4499: $CD $60 $13
    ld hl, $F900                                  ; $449C: $21 $00 $F9
    call Call_000_2FEB                            ; $449F: $CD $EB $2F
    ld hl, $F800                                  ; $44A2: $21 $00 $F8
    call Call_000_305D                            ; $44A5: $CD $5D $30

jr_025_44A8:
    jp Jump_025_45D5                              ; $44A8: $C3 $D5 $45


Jump_025_44AB:
    call Call_000_2CA9                            ; $44AB: $CD $A9 $2C
    jp nc, Jump_025_45D5                          ; $44AE: $D2 $D5 $45

    inc hl                                        ; $44B1: $23
    ld [hl], $02                                  ; $44B2: $36 $02
    jp Jump_025_45D5                              ; $44B4: $C3 $D5 $45


Jump_025_44B7:
    call Call_000_2CA9                            ; $44B7: $CD $A9 $2C
    jp nc, Jump_025_45D5                          ; $44BA: $D2 $D5 $45

    inc hl                                        ; $44BD: $23
    ld [hl], $FF                                  ; $44BE: $36 $FF
    jp Jump_025_45D5                              ; $44C0: $C3 $D5 $45


Jump_025_44C3:
    call Call_000_2CA9                            ; $44C3: $CD $A9 $2C
    jp nc, Jump_025_45D5                          ; $44C6: $D2 $D5 $45

    inc hl                                        ; $44C9: $23
    ld [hl], $00                                  ; $44CA: $36 $00
    jp Jump_025_45D5                              ; $44CC: $C3 $D5 $45


Jump_025_44CF:
    call Call_000_2CA9                            ; $44CF: $CD $A9 $2C
    jp nc, Jump_025_462C                          ; $44D2: $D2 $2C $46

    inc hl                                        ; $44D5: $23
    ld [hl], $04                                  ; $44D6: $36 $04
    jp Jump_025_462C                              ; $44D8: $C3 $2C $46


Jump_025_44DB:
    call Call_000_2CA2                            ; $44DB: $CD $A2 $2C
    jr z, jr_025_44EC                             ; $44DE: $28 $0C

    ld hl, $F000                                  ; $44E0: $21 $00 $F0
    call Call_000_2F79                            ; $44E3: $CD $79 $2F
    ld hl, $0021                                  ; $44E6: $21 $21 $00
    add hl, bc                                    ; $44E9: $09
    set 7, [hl]                                   ; $44EA: $CB $FE

jr_025_44EC:
    ld hl, $0080                                  ; $44EC: $21 $80 $00
    call Call_000_2F79                            ; $44EF: $CD $79 $2F
    call Call_025_456C                            ; $44F2: $CD $6C $45
    call Call_000_2CA9                            ; $44F5: $CD $A9 $2C
    jp nc, Jump_025_462C                          ; $44F8: $D2 $2C $46

    inc hl                                        ; $44FB: $23
    ld [hl], $00                                  ; $44FC: $36 $00
    ld hl, $009C                                  ; $44FE: $21 $9C $00
    add hl, bc                                    ; $4501: $09
    ld [hl], $0A                                  ; $4502: $36 $0A
    jp Jump_025_462C                              ; $4504: $C3 $2C $46


Jump_025_4507:
    call Call_025_456C                            ; $4507: $CD $6C $45
    ld hl, HeaderLogo                             ; $450A: $21 $04 $01
    ld a, $1E                                     ; $450D: $3E $1E
    call Call_000_34A2                            ; $450F: $CD $A2 $34
    call Call_000_2CA9                            ; $4512: $CD $A9 $2C
    jp nc, Jump_025_462C                          ; $4515: $D2 $2C $46

    ld a, $0E                                     ; $4518: $3E $0E
    call Call_000_1360                            ; $451A: $CD $60 $13
    jp Jump_025_462C                              ; $451D: $C3 $2C $46


Jump_025_4520:
    call Call_025_456C                            ; $4520: $CD $6C $45
    ld hl, HeaderLogo                             ; $4523: $21 $04 $01
    ld a, $1E                                     ; $4526: $3E $1E
    call Call_000_34A2                            ; $4528: $CD $A2 $34
    call Call_000_2CA9                            ; $452B: $CD $A9 $2C
    jp nc, Jump_025_462C                          ; $452E: $D2 $2C $46

    ld a, $0E                                     ; $4531: $3E $0E
    call Call_000_1360                            ; $4533: $CD $60 $13
    ld hl, $009C                                  ; $4536: $21 $9C $00
    add hl, bc                                    ; $4539: $09
    dec [hl]                                      ; $453A: $35
    jr nz, jr_025_454E                            ; $453B: $20 $11

    ld hl, $001D                                  ; $453D: $21 $1D $00
    add hl, de                                    ; $4540: $19
    ld [hl], $0A                                  ; $4541: $36 $0A
    ld hl, $0108                                  ; $4543: $21 $08 $01
    ld a, $0F                                     ; $4546: $3E $0F
    call Call_000_34A2                            ; $4548: $CD $A2 $34
    jp Jump_025_462C                              ; $454B: $C3 $2C $46


jr_025_454E:
    ld hl, $0014                                  ; $454E: $21 $14 $00
    add hl, de                                    ; $4551: $19
    ld [hl], $30                                  ; $4552: $36 $30
    jp Jump_025_462C                              ; $4554: $C3 $2C $46


Jump_025_4557:
    call Call_025_456C                            ; $4557: $CD $6C $45
    ld hl, $FF00                                  ; $455A: $21 $00 $FF
    call Call_000_2F79                            ; $455D: $CD $79 $2F
    call Call_000_2CA9                            ; $4560: $CD $A9 $2C
    jp nc, Jump_025_462C                          ; $4563: $D2 $2C $46

    inc hl                                        ; $4566: $23
    ld [hl], $00                                  ; $4567: $36 $00
    jp Jump_025_462C                              ; $4569: $C3 $2C $46


Call_025_456C:
    ld hl, $0002                                  ; $456C: $21 $02 $00
    add hl, de                                    ; $456F: $19
    bit 5, [hl]                                   ; $4570: $CB $6E
    jr z, jr_025_4585                             ; $4572: $28 $11

    ld hl, $000C                                  ; $4574: $21 $0C $00
    add hl, de                                    ; $4577: $19
    ld a, [hl]                                    ; $4578: $7E
    cp $18                                        ; $4579: $FE $18
    jr c, jr_025_4594                             ; $457B: $38 $17

    ld hl, $FF00                                  ; $457D: $21 $00 $FF
    call Call_000_2F79                            ; $4580: $CD $79 $2F
    jr jr_025_4594                                ; $4583: $18 $0F

jr_025_4585:
    ld hl, $000C                                  ; $4585: $21 $0C $00
    add hl, de                                    ; $4588: $19
    ld a, [hl]                                    ; $4589: $7E
    cp $98                                        ; $458A: $FE $98
    jr nc, jr_025_4594                            ; $458C: $30 $06

    ld hl, $FF00                                  ; $458E: $21 $00 $FF
    call Call_000_2F79                            ; $4591: $CD $79 $2F

jr_025_4594:
    ret                                           ; $4594: $C9


Jump_025_4595:
    call Call_000_2CA9                            ; $4595: $CD $A9 $2C
    jp nc, Jump_025_462C                          ; $4598: $D2 $2C $46

    inc hl                                        ; $459B: $23
    ld [hl], $02                                  ; $459C: $36 $02
    jp Jump_025_462C                              ; $459E: $C3 $2C $46


Jump_025_45A1:
    call Call_000_2CA2                            ; $45A1: $CD $A2 $2C
    jr z, jr_025_45BD                             ; $45A4: $28 $17

    ld a, $12                                     ; $45A6: $3E $12
    call Call_000_1360                            ; $45A8: $CD $60 $13
    ld hl, $0021                                  ; $45AB: $21 $21 $00
    add hl, bc                                    ; $45AE: $09
    res 7, [hl]                                   ; $45AF: $CB $BE
    ld hl, $0100                                  ; $45B1: $21 $00 $01
    call Call_000_2FEB                            ; $45B4: $CD $EB $2F
    ld hl, $FC00                                  ; $45B7: $21 $00 $FC
    call Call_000_305D                            ; $45BA: $CD $5D $30

jr_025_45BD:
    jp Jump_025_45E8                              ; $45BD: $C3 $E8 $45


Jump_025_45C0:
    call Call_000_2CA9                            ; $45C0: $CD $A9 $2C
    jp nc, Jump_025_45E8                          ; $45C3: $D2 $E8 $45

    inc hl                                        ; $45C6: $23
    ld [hl], $FF                                  ; $45C7: $36 $FF
    jp Jump_025_45E8                              ; $45C9: $C3 $E8 $45


Jump_025_45CC:
    jp Jump_025_45E8                              ; $45CC: $C3 $E8 $45


Jump_025_45CF:
    call Call_000_3069                            ; $45CF: $CD $69 $30
    jp Jump_025_462C                              ; $45D2: $C3 $2C $46


Jump_025_45D5:
    ld hl, $0030                                  ; $45D5: $21 $30 $00
    call Call_000_30FF                            ; $45D8: $CD $FF $30
    jp nc, Jump_025_462C                          ; $45DB: $D2 $2C $46

    ld a, $2C                                     ; $45DE: $3E $2C
    ld h, $0A                                     ; $45E0: $26 $0A
    call Call_000_2CBA                            ; $45E2: $CD $BA $2C
    jp Jump_025_462F                              ; $45E5: $C3 $2F $46


Jump_025_45E8:
    ld hl, $0030                                  ; $45E8: $21 $30 $00
    call Call_000_30FF                            ; $45EB: $CD $FF $30
    jp nc, Jump_025_462C                          ; $45EE: $D2 $2C $46

    ld a, $50                                     ; $45F1: $3E $50
    ld h, $0A                                     ; $45F3: $26 $0A
    call Call_000_2CBA                            ; $45F5: $CD $BA $2C
    jp Jump_025_462F                              ; $45F8: $C3 $2F $46


Jump_025_45FB:
    call Call_000_2CA9                            ; $45FB: $CD $A9 $2C
    jp nc, Jump_025_462C                          ; $45FE: $D2 $2C $46

    call Call_000_2DB6                            ; $4601: $CD $B6 $2D
    jr jr_025_462F                                ; $4604: $18 $29

Jump_025_4606:
    call Call_000_326C                            ; $4606: $CD $6C $32
    jp nc, Jump_025_4621                          ; $4609: $D2 $21 $46

    jp nz, Jump_025_4621                          ; $460C: $C2 $21 $46

    ld a, $18                                     ; $460F: $3E $18
    ld h, $01                                     ; $4611: $26 $01
    call Call_000_2D19                            ; $4613: $CD $19 $2D
    ld hl, $0112                                  ; $4616: $21 $12 $01
    ld a, $50                                     ; $4619: $3E $50
    call Call_000_34B3                            ; $461B: $CD $B3 $34
    jp Jump_025_462F                              ; $461E: $C3 $2F $46


Jump_025_4621:
    call Call_000_2CA9                            ; $4621: $CD $A9 $2C
    jp nc, Jump_025_462C                          ; $4624: $D2 $2C $46

    call Call_000_2DB6                            ; $4627: $CD $B6 $2D
    jr jr_025_462F                                ; $462A: $18 $03

Jump_025_462C:
    call Call_000_2E25                            ; $462C: $CD $25 $2E

Jump_025_462F:
jr_025_462F:
    ret                                           ; $462F: $C9


    call Call_000_2EE0                            ; $4630: $CD $E0 $2E
    call Call_000_3517                            ; $4633: $CD $17 $35
    jp c, Jump_025_48FA                           ; $4636: $DA $FA $48

    ld hl, $0018                                  ; $4639: $21 $18 $00
    add hl, de                                    ; $463C: $19
    ld a, [hl]                                    ; $463D: $7E
    cp $00                                        ; $463E: $FE $00
    jp z, Jump_025_46B4                           ; $4640: $CA $B4 $46

    cp $04                                        ; $4643: $FE $04
    jp z, Jump_025_46CC                           ; $4645: $CA $CC $46

    cp $08                                        ; $4648: $FE $08
    jp z, Jump_025_46D8                           ; $464A: $CA $D8 $46

    cp $0C                                        ; $464D: $FE $0C
    jp z, Jump_025_46F7                           ; $464F: $CA $F7 $46

    cp $10                                        ; $4652: $FE $10
    jp z, Jump_025_4732                           ; $4654: $CA $32 $47

    cp $14                                        ; $4657: $FE $14
    jp z, Jump_025_475E                           ; $4659: $CA $5E $47

    cp $18                                        ; $465C: $FE $18
    jp z, Jump_025_475E                           ; $465E: $CA $5E $47

    cp $1C                                        ; $4661: $FE $1C
    jp z, Jump_025_4761                           ; $4663: $CA $61 $47

    cp $20                                        ; $4666: $FE $20
    jp z, Jump_025_4786                           ; $4668: $CA $86 $47

    cp $24                                        ; $466B: $FE $24
    jp z, Jump_025_4798                           ; $466D: $CA $98 $47

    cp $28                                        ; $4670: $FE $28
    jp z, Jump_025_48BF                           ; $4672: $CA $BF $48

    cp $2C                                        ; $4675: $FE $2C
    jp z, Jump_025_48BF                           ; $4677: $CA $BF $48

    cp $30                                        ; $467A: $FE $30
    jp z, Jump_025_48BF                           ; $467C: $CA $BF $48

    cp $34                                        ; $467F: $FE $34
    jp z, Jump_025_48BF                           ; $4681: $CA $BF $48

    cp $38                                        ; $4684: $FE $38
    jp z, Jump_025_48CD                           ; $4686: $CA $CD $48

    cp $3C                                        ; $4689: $FE $3C
    jp z, Jump_025_4786                           ; $468B: $CA $86 $47

    cp $40                                        ; $468E: $FE $40
    jp z, Jump_025_4798                           ; $4690: $CA $98 $47

    cp $44                                        ; $4693: $FE $44
    jp z, Jump_025_48BF                           ; $4695: $CA $BF $48

    cp $48                                        ; $4698: $FE $48
    jp z, Jump_025_48BF                           ; $469A: $CA $BF $48

    cp $4C                                        ; $469D: $FE $4C
    jp z, Jump_025_48BF                           ; $469F: $CA $BF $48

    cp $50                                        ; $46A2: $FE $50
    jp z, Jump_025_48BF                           ; $46A4: $CA $BF $48

    cp $54                                        ; $46A7: $FE $54
    jp z, Jump_025_48CD                           ; $46A9: $CA $CD $48

    cp $58                                        ; $46AC: $FE $58
    jp z, Jump_025_48EC                           ; $46AE: $CA $EC $48

    jp Jump_025_48F7                              ; $46B1: $C3 $F7 $48


Jump_025_46B4:
    call Call_000_2CA2                            ; $46B4: $CD $A2 $2C
    jp z, Jump_025_46C0                           ; $46B7: $CA $C0 $46

    ld hl, $0031                                  ; $46BA: $21 $31 $00
    add hl, bc                                    ; $46BD: $09
    ld [hl], $01                                  ; $46BE: $36 $01

Jump_025_46C0:
    call Call_000_2CA9                            ; $46C0: $CD $A9 $2C
    jp nc, Jump_025_48F7                          ; $46C3: $D2 $F7 $48

    inc hl                                        ; $46C6: $23
    ld [hl], $01                                  ; $46C7: $36 $01
    jp Jump_025_48F7                              ; $46C9: $C3 $F7 $48


Jump_025_46CC:
    call Call_000_2CA9                            ; $46CC: $CD $A9 $2C
    jp nc, Jump_025_48F7                          ; $46CF: $D2 $F7 $48

    inc hl                                        ; $46D2: $23
    ld [hl], $01                                  ; $46D3: $36 $01
    jp Jump_025_48F7                              ; $46D5: $C3 $F7 $48


Jump_025_46D8:
    call Call_000_2CA9                            ; $46D8: $CD $A9 $2C
    jp nc, Jump_025_48F7                          ; $46DB: $D2 $F7 $48

    inc hl                                        ; $46DE: $23
    ld [hl], $0A                                  ; $46DF: $36 $0A
    ld a, $12                                     ; $46E1: $3E $12
    call Call_000_1360                            ; $46E3: $CD $60 $13
    ld hl, $010E                                  ; $46E6: $21 $0E $01
    ld a, $11                                     ; $46E9: $3E $11
    call Call_000_34B3                            ; $46EB: $CD $B3 $34
    ld hl, $009C                                  ; $46EE: $21 $9C $00
    add hl, bc                                    ; $46F1: $09
    ld [hl], $14                                  ; $46F2: $36 $14
    jp Jump_025_48F7                              ; $46F4: $C3 $F7 $48


Jump_025_46F7:
    call Call_000_2CA2                            ; $46F7: $CD $A2 $2C
    jp z, Jump_025_4703                           ; $46FA: $CA $03 $47

    ld hl, $0021                                  ; $46FD: $21 $21 $00
    add hl, bc                                    ; $4700: $09
    res 7, [hl]                                   ; $4701: $CB $BE

Jump_025_4703:
    call Call_000_3262                            ; $4703: $CD $62 $32
    jp nc, Jump_025_4720                          ; $4706: $D2 $20 $47

    jp nz, Jump_025_4716                          ; $4709: $C2 $16 $47

    ld a, $10                                     ; $470C: $3E $10
    ld h, $00                                     ; $470E: $26 $00
    call Call_000_2D19                            ; $4710: $CD $19 $2D
    jp Jump_025_48FA                              ; $4713: $C3 $FA $48


Jump_025_4716:
    ld a, $58                                     ; $4716: $3E $58
    ld h, $14                                     ; $4718: $26 $14
    call Call_000_2D19                            ; $471A: $CD $19 $2D
    jp Jump_025_48FA                              ; $471D: $C3 $FA $48


Jump_025_4720:
    call Call_000_2CA9                            ; $4720: $CD $A9 $2C
    jp nc, Jump_025_48F7                          ; $4723: $D2 $F7 $48

    inc hl                                        ; $4726: $23
    ld [hl], $10                                  ; $4727: $36 $10
    ld hl, $0014                                  ; $4729: $21 $14 $00
    add hl, de                                    ; $472C: $19
    ld [hl], $54                                  ; $472D: $36 $54
    jp Jump_025_48F7                              ; $472F: $C3 $F7 $48


Jump_025_4732:
    call Call_000_2CA2                            ; $4732: $CD $A2 $2C
    jp z, Jump_025_475E                           ; $4735: $CA $5E $47

    ld hl, $0021                                  ; $4738: $21 $21 $00
    add hl, bc                                    ; $473B: $09
    set 7, [hl]                                   ; $473C: $CB $FE
    push de                                       ; $473E: $D5
    ld hl, $002D                                  ; $473F: $21 $2D $00
    add hl, bc                                    ; $4742: $09
    ld a, [hl]                                    ; $4743: $7E
    or a                                          ; $4744: $B7
    jr nz, jr_025_474C                            ; $4745: $20 $05

    ld de, $DA00                                  ; $4747: $11 $00 $DA
    jr jr_025_474F                                ; $474A: $18 $03

jr_025_474C:
    ld de, $D900                                  ; $474C: $11 $00 $D9

jr_025_474F:
    ld hl, $0060                                  ; $474F: $21 $60 $00
    add hl, de                                    ; $4752: $19
    ld a, [hl]                                    ; $4753: $7E
    or a                                          ; $4754: $B7
    jr z, jr_025_475D                             ; $4755: $28 $06

    ld hl, $003F                                  ; $4757: $21 $3F $00
    add hl, de                                    ; $475A: $19
    ld [hl], $22                                  ; $475B: $36 $22

jr_025_475D:
    pop de                                        ; $475D: $D1

Jump_025_475E:
    jp Jump_025_48F7                              ; $475E: $C3 $F7 $48


Jump_025_4761:
    call Call_000_2CA2                            ; $4761: $CD $A2 $2C
    jp z, Jump_025_476C                           ; $4764: $CA $6C $47

    ld a, $95                                     ; $4767: $3E $95
    call Call_000_1360                            ; $4769: $CD $60 $13

Jump_025_476C:
    call Call_000_2CA9                            ; $476C: $CD $A9 $2C
    jp nc, Jump_025_48F7                          ; $476F: $D2 $F7 $48

    ld hl, $0002                                  ; $4772: $21 $02 $00
    add hl, de                                    ; $4775: $19
    bit 5, [hl]                                   ; $4776: $CB $6E
    jr nz, jr_025_477D                            ; $4778: $20 $03

    jp Jump_025_48F7                              ; $477A: $C3 $F7 $48


jr_025_477D:
    ld hl, $0014                                  ; $477D: $21 $14 $00
    add hl, de                                    ; $4780: $19
    ld [hl], $38                                  ; $4781: $36 $38
    jp Jump_025_48F7                              ; $4783: $C3 $F7 $48


Jump_025_4786:
    ld hl, $009C                                  ; $4786: $21 $9C $00
    add hl, bc                                    ; $4789: $09
    ld a, [hl]                                    ; $478A: $7E
    cp $05                                        ; $478B: $FE $05
    jr nz, jr_025_4798                            ; $478D: $20 $09

    ld hl, $001C                                  ; $478F: $21 $1C $00
    add hl, de                                    ; $4792: $19
    ld [hl], $00                                  ; $4793: $36 $00
    jp Jump_025_48F7                              ; $4795: $C3 $F7 $48


Jump_025_4798:
jr_025_4798:
    push de                                       ; $4798: $D5
    ld hl, $002D                                  ; $4799: $21 $2D $00
    add hl, bc                                    ; $479C: $09
    ld a, [hl]                                    ; $479D: $7E
    or a                                          ; $479E: $B7
    jr nz, jr_025_47A6                            ; $479F: $20 $05

    ld de, $DA00                                  ; $47A1: $11 $00 $DA
    jr jr_025_47A9                                ; $47A4: $18 $03

jr_025_47A6:
    ld de, $D900                                  ; $47A6: $11 $00 $D9

jr_025_47A9:
    ld hl, $0060                                  ; $47A9: $21 $60 $00
    add hl, de                                    ; $47AC: $19
    ld a, [hl]                                    ; $47AD: $7E
    or a                                          ; $47AE: $B7
    jp nz, Jump_025_47BF                          ; $47AF: $C2 $BF $47

    pop de                                        ; $47B2: $D1
    call Call_000_2DB6                            ; $47B3: $CD $B6 $2D
    ld a, [$C2D3]                                 ; $47B6: $FA $D3 $C2
    call Call_000_1360                            ; $47B9: $CD $60 $13
    jp Jump_025_48FA                              ; $47BC: $C3 $FA $48


Jump_025_47BF:
    ld hl, $003C                                  ; $47BF: $21 $3C $00
    add hl, de                                    ; $47C2: $19
    ld a, [hl]                                    ; $47C3: $7E
    cp $6E                                        ; $47C4: $FE $6E
    jr z, jr_025_47EB                             ; $47C6: $28 $23

    cp $02                                        ; $47C8: $FE $02
    jr z, jr_025_47EB                             ; $47CA: $28 $1F

    cp $04                                        ; $47CC: $FE $04
    jr z, jr_025_47EB                             ; $47CE: $28 $1B

    cp $06                                        ; $47D0: $FE $06
    jr z, jr_025_47EB                             ; $47D2: $28 $17

    cp $08                                        ; $47D4: $FE $08
    jr z, jr_025_47EB                             ; $47D6: $28 $13

    cp $10                                        ; $47D8: $FE $10
    jr z, jr_025_47EB                             ; $47DA: $28 $0F

    cp $22                                        ; $47DC: $FE $22
    jr z, jr_025_47EB                             ; $47DE: $28 $0B

    ld hl, $0021                                  ; $47E0: $21 $21 $00
    add hl, de                                    ; $47E3: $19
    bit 0, [hl]                                   ; $47E4: $CB $46
    jp nz, Jump_025_4832                          ; $47E6: $C2 $32 $48

    jr jr_025_4801                                ; $47E9: $18 $16

jr_025_47EB:
    ld a, [$C01A]                                 ; $47EB: $FA $1A $C0
    and $1F                                       ; $47EE: $E6 $1F
    jr nz, jr_025_4832                            ; $47F0: $20 $40

    ld hl, $009A                                  ; $47F2: $21 $9A $00
    add hl, bc                                    ; $47F5: $09
    ld a, [hl]                                    ; $47F6: $7E
    cp $88                                        ; $47F7: $FE $88
    jr nz, jr_025_4832                            ; $47F9: $20 $37

    ld hl, $0021                                  ; $47FB: $21 $21 $00
    add hl, de                                    ; $47FE: $19
    res 0, [hl]                                   ; $47FF: $CB $86

jr_025_4801:
    ld hl, $009C                                  ; $4801: $21 $9C $00
    add hl, bc                                    ; $4804: $09
    dec [hl]                                      ; $4805: $35
    jp z, Jump_025_4839                           ; $4806: $CA $39 $48

    call Call_000_17E2                            ; $4809: $CD $E2 $17
    and $0F                                       ; $480C: $E6 $0F
    ld hl, $486D                                  ; $480E: $21 $6D $48
    push de                                       ; $4811: $D5
    ld d, $00                                     ; $4812: $16 $00
    ld e, a                                       ; $4814: $5F
    add hl, de                                    ; $4815: $19
    pop de                                        ; $4816: $D1
    ld a, [hl]                                    ; $4817: $7E
    ld hl, $003F                                  ; $4818: $21 $3F $00
    add hl, de                                    ; $481B: $19
    ld [hl], a                                    ; $481C: $77
    call Call_000_17E2                            ; $481D: $CD $E2 $17
    and $03                                       ; $4820: $E6 $03
    ld hl, $009D                                  ; $4822: $21 $9D $00
    add hl, de                                    ; $4825: $19
    ld [hl], a                                    ; $4826: $77
    ld hl, $009C                                  ; $4827: $21 $9C $00
    add hl, de                                    ; $482A: $19
    ld [hl], $00                                  ; $482B: $36 $00
    ld a, $C3                                     ; $482D: $3E $C3
    call Call_000_1360                            ; $482F: $CD $60 $13

Jump_025_4832:
jr_025_4832:
    call Call_025_487D                            ; $4832: $CD $7D $48
    pop de                                        ; $4835: $D1
    jp Jump_025_48FA                              ; $4836: $C3 $FA $48


Jump_025_4839:
    ld hl, $0021                                  ; $4839: $21 $21 $00
    add hl, de                                    ; $483C: $19
    res 0, [hl]                                   ; $483D: $CB $86
    ld hl, $003F                                  ; $483F: $21 $3F $00
    add hl, de                                    ; $4842: $19
    ld [hl], $6E                                  ; $4843: $36 $6E
    call Call_000_0417                            ; $4845: $CD $17 $04
    ld hl, $003F                                  ; $4848: $21 $3F $00
    add hl, de                                    ; $484B: $19
    ld [hl], $00                                  ; $484C: $36 $00
    pop de                                        ; $484E: $D1
    ld hl, $0021                                  ; $484F: $21 $21 $00
    add hl, bc                                    ; $4852: $09
    res 7, [hl]                                   ; $4853: $CB $BE
    ld hl, $009D                                  ; $4855: $21 $9D $00
    add hl, bc                                    ; $4858: $09
    ld [hl], $01                                  ; $4859: $36 $01
    ld a, [$C2D3]                                 ; $485B: $FA $D3 $C2
    call Call_000_1360                            ; $485E: $CD $60 $13
    ld hl, $001C                                  ; $4861: $21 $1C $00
    add hl, de                                    ; $4864: $19
    ld [hl], $00                                  ; $4865: $36 $00
    inc hl                                        ; $4867: $23
    ld [hl], $08                                  ; $4868: $36 $08
    jp Jump_025_48F7                              ; $486A: $C3 $F7 $48


    inc l                                         ; $486D: $2C
    ld l, $30                                     ; $486E: $2E $30
    ld [hl-], a                                   ; $4870: $32
    inc [hl]                                      ; $4871: $34
    ld [hl], $1A                                  ; $4872: $36 $1A
    ld h, $0A                                     ; $4874: $26 $0A
    ld a, [hl+]                                   ; $4876: $2A
    ld [hl+], a                                   ; $4877: $22
    ld [bc], a                                    ; $4878: $02
    inc b                                         ; $4879: $04
    ld b, $08                                     ; $487A: $06 $08
    db $10                                        ; $487C: $10

Call_025_487D:
    push de                                       ; $487D: $D5
    ld hl, $0021                                  ; $487E: $21 $21 $00
    add hl, de                                    ; $4881: $19
    bit 0, [hl]                                   ; $4882: $CB $46
    jp z, Jump_025_48BD                           ; $4884: $CA $BD $48

    ld hl, $002D                                  ; $4887: $21 $2D $00
    add hl, bc                                    ; $488A: $09
    ld a, [hl]                                    ; $488B: $7E
    or a                                          ; $488C: $B7
    jr nz, jr_025_4894                            ; $488D: $20 $05

    ld de, $D6C0                                  ; $488F: $11 $C0 $D6
    jr jr_025_4897                                ; $4892: $18 $03

jr_025_4894:
    ld de, $D680                                  ; $4894: $11 $80 $D6

jr_025_4897:
    ld hl, $0014                                  ; $4897: $21 $14 $00
    add hl, de                                    ; $489A: $19
    ld a, [hl]                                    ; $489B: $7E
    cp $00                                        ; $489C: $FE $00
    jr nz, jr_025_48BD                            ; $489E: $20 $1D

    ld hl, $001C                                  ; $48A0: $21 $1C $00
    add hl, de                                    ; $48A3: $19
    ld a, [hl]                                    ; $48A4: $7E
    or a                                          ; $48A5: $B7
    jr nz, jr_025_48BD                            ; $48A6: $20 $15

    ld a, [$C01A]                                 ; $48A8: $FA $1A $C0
    bit 5, a                                      ; $48AB: $CB $6F
    jr nz, jr_025_48B7                            ; $48AD: $20 $08

    ld hl, $0002                                  ; $48AF: $21 $02 $00
    add hl, de                                    ; $48B2: $19
    res 5, [hl]                                   ; $48B3: $CB $AE
    jr jr_025_48BD                                ; $48B5: $18 $06

jr_025_48B7:
    ld hl, $0002                                  ; $48B7: $21 $02 $00
    add hl, de                                    ; $48BA: $19
    set 5, [hl]                                   ; $48BB: $CB $EE

Jump_025_48BD:
jr_025_48BD:
    pop de                                        ; $48BD: $D1
    ret                                           ; $48BE: $C9


Jump_025_48BF:
    call Call_000_2CA9                            ; $48BF: $CD $A9 $2C
    jp nc, Jump_025_48F7                          ; $48C2: $D2 $F7 $48

    ld a, $08                                     ; $48C5: $3E $08
    call Call_000_1360                            ; $48C7: $CD $60 $13
    jp Jump_025_48F7                              ; $48CA: $C3 $F7 $48


Jump_025_48CD:
    call Call_000_2CA9                            ; $48CD: $CD $A9 $2C
    jp nc, Jump_025_48F7                          ; $48D0: $D2 $F7 $48

    ld a, $08                                     ; $48D3: $3E $08
    call Call_000_1360                            ; $48D5: $CD $60 $13
    ld a, $44                                     ; $48D8: $3E $44
    call Call_000_32E2                            ; $48DA: $CD $E2 $32
    ld hl, $0021                                  ; $48DD: $21 $21 $00
    add hl, bc                                    ; $48E0: $09
    res 7, [hl]                                   ; $48E1: $CB $BE
    ld hl, $009D                                  ; $48E3: $21 $9D $00
    add hl, bc                                    ; $48E6: $09
    ld [hl], $01                                  ; $48E7: $36 $01
    jp Jump_025_48FA                              ; $48E9: $C3 $FA $48


Jump_025_48EC:
    call Call_000_2CA9                            ; $48EC: $CD $A9 $2C
    jp nc, Jump_025_48F7                          ; $48EF: $D2 $F7 $48

    call Call_000_2DB6                            ; $48F2: $CD $B6 $2D
    jr jr_025_48FA                                ; $48F5: $18 $03

Jump_025_48F7:
    call Call_000_2E25                            ; $48F7: $CD $25 $2E

Jump_025_48FA:
jr_025_48FA:
    ret                                           ; $48FA: $C9


Call_025_48FB:
    ld a, $14                                     ; $48FB: $3E $14
    call Call_000_1360                            ; $48FD: $CD $60 $13
    push bc                                       ; $4900: $C5
    push de                                       ; $4901: $D5
    ld hl, $0030                                  ; $4902: $21 $30 $00
    add hl, bc                                    ; $4905: $09
    ld a, [hl]                                    ; $4906: $7E
    or a                                          ; $4907: $B7
    jr nz, jr_025_490D                            ; $4908: $20 $03

    xor a                                         ; $490A: $AF
    jr jr_025_490E                                ; $490B: $18 $01

jr_025_490D:
    scf                                           ; $490D: $37

jr_025_490E:
    ld hl, $0022                                  ; $490E: $21 $22 $00
    push af                                       ; $4911: $F5
    add hl, bc                                    ; $4912: $09
    pop af                                        ; $4913: $F1
    ld a, [hl]                                    ; $4914: $7E
    push af                                       ; $4915: $F5
    call Call_000_25D1                            ; $4916: $CD $D1 $25
    ld hl, $0021                                  ; $4919: $21 $21 $00
    add hl, de                                    ; $491C: $19
    ld [hl], $24                                  ; $491D: $36 $24
    inc hl                                        ; $491F: $23
    ld [hl], $A2                                  ; $4920: $36 $A2
    inc hl                                        ; $4922: $23
    ld [hl], $49                                  ; $4923: $36 $49
    ld hl, $0011                                  ; $4925: $21 $11 $00
    add hl, de                                    ; $4928: $19
    ld [hl], $02                                  ; $4929: $36 $02
    inc hl                                        ; $492B: $23
    ld [hl], $D8                                  ; $492C: $36 $D8
    inc hl                                        ; $492E: $23
    ld [hl], $63                                  ; $492F: $36 $63
    inc hl                                        ; $4931: $23
    ld [hl], $00                                  ; $4932: $36 $00
    ld hl, $001C                                  ; $4934: $21 $1C $00
    add hl, de                                    ; $4937: $19
    ld [hl], $00                                  ; $4938: $36 $00
    inc hl                                        ; $493A: $23
    ld [hl], $00                                  ; $493B: $36 $00
    ld hl, $0029                                  ; $493D: $21 $29 $00
    add hl, de                                    ; $4940: $19
    ld [hl], $00                                  ; $4941: $36 $00
    call Call_000_2614                            ; $4943: $CD $14 $26
    ld hl, $1800                                  ; $4946: $21 $00 $18
    call Call_000_2F79                            ; $4949: $CD $79 $2F
    ld hl, $F800                                  ; $494C: $21 $00 $F8
    call Call_000_2F42                            ; $494F: $CD $42 $2F
    pop af                                        ; $4952: $F1
    jr c, jr_025_4963                             ; $4953: $38 $0E

    bit 1, a                                      ; $4955: $CB $4F
    jr nz, jr_025_495E                            ; $4957: $20 $05

    ld hl, $0180                                  ; $4959: $21 $80 $01
    jr jr_025_4966                                ; $495C: $18 $08

jr_025_495E:
    ld hl, $0280                                  ; $495E: $21 $80 $02
    jr jr_025_4966                                ; $4961: $18 $03

jr_025_4963:
    ld hl, $0380                                  ; $4963: $21 $80 $03

jr_025_4966:
    call Call_000_2FEB                            ; $4966: $CD $EB $2F
    pop de                                        ; $4969: $D1
    pop bc                                        ; $496A: $C1
    ret                                           ; $496B: $C9


    call Call_000_31B6                            ; $496C: $CD $B6 $31
    jp c, Jump_025_4A5D                           ; $496F: $DA $5D $4A

    jp z, Jump_025_4981                           ; $4972: $CA $81 $49

    call Call_000_3A2A                            ; $4975: $CD $2A $3A
    jp c, Jump_025_49E8                           ; $4978: $DA $E8 $49

    jp z, Jump_025_49F3                           ; $497B: $CA $F3 $49

    jp Jump_025_4A5D                              ; $497E: $C3 $5D $4A


Jump_025_4981:
    call Call_000_3A2A                            ; $4981: $CD $2A $3A
    jp c, Jump_025_4A30                           ; $4984: $DA $30 $4A

    jp z, Jump_025_4A41                           ; $4987: $CA $41 $4A

    call Call_000_39D3                            ; $498A: $CD $D3 $39
    jp nc, Jump_025_4A5D                          ; $498D: $D2 $5D $4A

    jp z, Jump_025_4999                           ; $4990: $CA $99 $49

    jp nz, Jump_025_49C5                          ; $4993: $C2 $C5 $49

    jp Jump_025_4A5D                              ; $4996: $C3 $5D $4A


Jump_025_4999:
    call Call_000_3209                            ; $4999: $CD $09 $32
    jr c, jr_025_49A7                             ; $499C: $38 $09

    ld hl, $3AD4                                  ; $499E: $21 $D4 $3A
    call Call_000_2B78                            ; $49A1: $CD $78 $2B
    jp c, Jump_025_4A30                           ; $49A4: $DA $30 $4A

jr_025_49A7:
    ld hl, $3B14                                  ; $49A7: $21 $14 $3B
    call Call_000_2B78                            ; $49AA: $CD $78 $2B
    jp c, Jump_025_49E8                           ; $49AD: $DA $E8 $49

    ld hl, $3AC2                                  ; $49B0: $21 $C2 $3A
    call Call_000_2B78                            ; $49B3: $CD $78 $2B
    jp c, Jump_025_4A0C                           ; $49B6: $DA $0C $4A

    ld hl, $3AB9                                  ; $49B9: $21 $B9 $3A
    call Call_000_2B78                            ; $49BC: $CD $78 $2B
    jp c, Jump_025_49F3                           ; $49BF: $DA $F3 $49

    jp Jump_025_4A5D                              ; $49C2: $C3 $5D $4A


Jump_025_49C5:
    call Call_000_3209                            ; $49C5: $CD $09 $32
    jp c, Jump_025_49DC                           ; $49C8: $DA $DC $49

    cp $01                                        ; $49CB: $FE $01
    jr z, jr_025_49DC                             ; $49CD: $28 $0D

    cp $02                                        ; $49CF: $FE $02
    jr z, jr_025_49D3                             ; $49D1: $28 $00

jr_025_49D3:
    ld hl, $3AE5                                  ; $49D3: $21 $E5 $3A
    call Call_000_2B78                            ; $49D6: $CD $78 $2B
    jp c, Jump_025_4A41                           ; $49D9: $DA $41 $4A

Jump_025_49DC:
jr_025_49DC:
    ld hl, $3B2A                                  ; $49DC: $21 $2A $3B
    call Call_000_2B78                            ; $49DF: $CD $78 $2B
    jp c, Jump_025_4A17                           ; $49E2: $DA $17 $4A

    jp Jump_025_4A5D                              ; $49E5: $C3 $5D $4A


Jump_025_49E8:
    call Call_000_2C23                            ; $49E8: $CD $23 $2C
    ld a, $40                                     ; $49EB: $3E $40
    call Call_000_32E2                            ; $49ED: $CD $E2 $32
    jp Jump_025_4A5B                              ; $49F0: $C3 $5B $4A


Jump_025_49F3:
    call Call_000_32C5                            ; $49F3: $CD $C5 $32
    jp nz, Jump_025_4A5D                          ; $49F6: $C2 $5D $4A

    call Call_000_2C23                            ; $49F9: $CD $23 $2C
    ld a, $42                                     ; $49FC: $3E $42
    call Call_000_32E2                            ; $49FE: $CD $E2 $32
    ld hl, $0503                                  ; $4A01: $21 $03 $05
    ld a, $21                                     ; $4A04: $3E $21
    call Call_000_34C4                            ; $4A06: $CD $C4 $34
    jp Jump_025_4A5B                              ; $4A09: $C3 $5B $4A


Jump_025_4A0C:
    call Call_000_2C23                            ; $4A0C: $CD $23 $2C
    ld a, $44                                     ; $4A0F: $3E $44
    call Call_000_32E2                            ; $4A11: $CD $E2 $32
    jp Jump_025_4A5B                              ; $4A14: $C3 $5B $4A


Jump_025_4A17:
    call Call_000_32C5                            ; $4A17: $CD $C5 $32
    jp nz, Jump_025_4A5D                          ; $4A1A: $C2 $5D $4A

    call Call_000_2C23                            ; $4A1D: $CD $23 $2C
    ld a, $46                                     ; $4A20: $3E $46
    call Call_000_32E2                            ; $4A22: $CD $E2 $32
    ld hl, $0509                                  ; $4A25: $21 $09 $05
    ld a, $21                                     ; $4A28: $3E $21
    call Call_000_34C4                            ; $4A2A: $CD $C4 $34
    jp Jump_025_4A5B                              ; $4A2D: $C3 $5B $4A


Jump_025_4A30:
    call Call_000_2C23                            ; $4A30: $CD $23 $2C
    ld a, $4A                                     ; $4A33: $3E $4A
    call Call_000_32E2                            ; $4A35: $CD $E2 $32
    ld hl, $0021                                  ; $4A38: $21 $21 $00
    add hl, bc                                    ; $4A3B: $09
    set 7, [hl]                                   ; $4A3C: $CB $FE
    jp Jump_025_4A5B                              ; $4A3E: $C3 $5B $4A


Jump_025_4A41:
    call Call_000_2C23                            ; $4A41: $CD $23 $2C
    ld a, $26                                     ; $4A44: $3E $26
    call Call_000_32E2                            ; $4A46: $CD $E2 $32
    ld hl, $0021                                  ; $4A49: $21 $21 $00
    add hl, bc                                    ; $4A4C: $09
    set 7, [hl]                                   ; $4A4D: $CB $FE
    ld hl, $009C                                  ; $4A4F: $21 $9C $00
    add hl, bc                                    ; $4A52: $09
    ld [hl], $01                                  ; $4A53: $36 $01
    jp Jump_025_4A5B                              ; $4A55: $C3 $5B $4A


    jp Jump_025_4A5B                              ; $4A58: $C3 $5B $4A


Jump_025_4A5B:
    scf                                           ; $4A5B: $37
    ret                                           ; $4A5C: $C9


Jump_025_4A5D:
    or a                                          ; $4A5D: $B7
    ret                                           ; $4A5E: $C9


    call Call_000_2EE0                            ; $4A5F: $CD $E0 $2E
    call Call_000_3517                            ; $4A62: $CD $17 $35
    jp c, Jump_025_4B79                           ; $4A65: $DA $79 $4B

    ld hl, $0018                                  ; $4A68: $21 $18 $00
    add hl, de                                    ; $4A6B: $19
    ld a, [hl]                                    ; $4A6C: $7E
    cp $00                                        ; $4A6D: $FE $00
    jp z, Jump_025_4A8E                           ; $4A6F: $CA $8E $4A

    cp $04                                        ; $4A72: $FE $04
    jp z, Jump_025_4A91                           ; $4A74: $CA $91 $4A

    cp $08                                        ; $4A77: $FE $08
    jp z, Jump_025_4AA5                           ; $4A79: $CA $A5 $4A

    cp $0C                                        ; $4A7C: $FE $0C
    jp z, Jump_025_4AF1                           ; $4A7E: $CA $F1 $4A

    cp $10                                        ; $4A81: $FE $10
    jp z, Jump_025_4B51                           ; $4A83: $CA $51 $4B

    cp $14                                        ; $4A86: $FE $14
    jp z, Jump_025_4B5D                           ; $4A88: $CA $5D $4B

    jp Jump_025_4B76                              ; $4A8B: $C3 $76 $4B


Jump_025_4A8E:
    jp Jump_025_4B76                              ; $4A8E: $C3 $76 $4B


Jump_025_4A91:
    call Call_000_2CA9                            ; $4A91: $CD $A9 $2C
    jp nc, Jump_025_4B76                          ; $4A94: $D2 $76 $4B

    inc hl                                        ; $4A97: $23
    ld [hl], $FF                                  ; $4A98: $36 $FF
    ld hl, $0204                                  ; $4A9A: $21 $04 $02
    ld a, $11                                     ; $4A9D: $3E $11
    call Call_000_34B3                            ; $4A9F: $CD $B3 $34
    jp Jump_025_4B76                              ; $4AA2: $C3 $76 $4B


Jump_025_4AA5:
    call Call_000_2CA2                            ; $4AA5: $CD $A2 $2C
    jr z, jr_025_4AE1                             ; $4AA8: $28 $37

    ld a, $11                                     ; $4AAA: $3E $11
    call Call_000_1360                            ; $4AAC: $CD $60 $13
    call Call_000_32CC                            ; $4AAF: $CD $CC $32
    jr c, jr_025_4AD2                             ; $4AB2: $38 $1E

    jr nz, jr_025_4AC4                            ; $4AB4: $20 $0E

    ld hl, $0000                                  ; $4AB6: $21 $00 $00
    call Call_000_2FEB                            ; $4AB9: $CD $EB $2F
    ld hl, $FA00                                  ; $4ABC: $21 $00 $FA
    call Call_000_305D                            ; $4ABF: $CD $5D $30
    jr jr_025_4ADE                                ; $4AC2: $18 $1A

jr_025_4AC4:
    ld hl, $0000                                  ; $4AC4: $21 $00 $00
    call Call_000_2FEB                            ; $4AC7: $CD $EB $2F
    ld hl, $F900                                  ; $4ACA: $21 $00 $F9
    call Call_000_305D                            ; $4ACD: $CD $5D $30
    jr jr_025_4ADE                                ; $4AD0: $18 $0C

jr_025_4AD2:
    ld hl, $0000                                  ; $4AD2: $21 $00 $00
    call Call_000_2FEB                            ; $4AD5: $CD $EB $2F
    ld hl, $F800                                  ; $4AD8: $21 $00 $F8
    call Call_000_305D                            ; $4ADB: $CD $5D $30

jr_025_4ADE:
    jp Jump_025_4B39                              ; $4ADE: $C3 $39 $4B


jr_025_4AE1:
    call Call_025_4B7A                            ; $4AE1: $CD $7A $4B
    ld a, $FF                                     ; $4AE4: $3E $FF
    ld h, $FF                                     ; $4AE6: $26 $FF
    call Call_000_2D33                            ; $4AE8: $CD $33 $2D
    jp nc, Jump_025_4B39                          ; $4AEB: $D2 $39 $4B

    jp Jump_025_4B39                              ; $4AEE: $C3 $39 $4B


Jump_025_4AF1:
    call Call_000_3262                            ; $4AF1: $CD $62 $32
    jp nc, Jump_025_4B33                          ; $4AF4: $D2 $33 $4B

    jp nz, Jump_025_4B29                          ; $4AF7: $C2 $29 $4B

    call Call_000_32CC                            ; $4AFA: $CD $CC $32
    jr c, jr_025_4B15                             ; $4AFD: $38 $16

    jr nz, jr_025_4B0B                            ; $4AFF: $20 $0A

    ld hl, $0308                                  ; $4B01: $21 $08 $03
    ld a, $01                                     ; $4B04: $3E $01
    call Call_000_34B3                            ; $4B06: $CD $B3 $34
    jr jr_025_4B1F                                ; $4B09: $18 $14

jr_025_4B0B:
    ld hl, $0408                                  ; $4B0B: $21 $08 $04
    ld a, $01                                     ; $4B0E: $3E $01
    call Call_000_34B3                            ; $4B10: $CD $B3 $34
    jr jr_025_4B1F                                ; $4B13: $18 $0A

jr_025_4B15:
    ld hl, $0508                                  ; $4B15: $21 $08 $05
    ld a, $01                                     ; $4B18: $3E $01
    call Call_000_34B3                            ; $4B1A: $CD $B3 $34
    jr jr_025_4B1F                                ; $4B1D: $18 $00

jr_025_4B1F:
    ld a, $10                                     ; $4B1F: $3E $10
    ld h, $05                                     ; $4B21: $26 $05
    call Call_000_2D19                            ; $4B23: $CD $19 $2D
    jp Jump_025_4B79                              ; $4B26: $C3 $79 $4B


Jump_025_4B29:
    ld a, $14                                     ; $4B29: $3E $14
    ld h, $01                                     ; $4B2B: $26 $01
    call Call_000_2D19                            ; $4B2D: $CD $19 $2D
    jp Jump_025_4B79                              ; $4B30: $C3 $79 $4B


Jump_025_4B33:
    call Call_025_4B7A                            ; $4B33: $CD $7A $4B
    jp Jump_025_4B39                              ; $4B36: $C3 $39 $4B


Jump_025_4B39:
    ld hl, $0030                                  ; $4B39: $21 $30 $00
    call Call_000_30FF                            ; $4B3C: $CD $FF $30
    jp nc, Jump_025_4B76                          ; $4B3F: $D2 $76 $4B

    ld a, $10                                     ; $4B42: $3E $10
    ld h, $0A                                     ; $4B44: $26 $0A
    call Call_000_2CBA                            ; $4B46: $CD $BA $2C
    ld a, $05                                     ; $4B49: $3E $05
    call Call_000_3963                            ; $4B4B: $CD $63 $39
    jp Jump_025_4B79                              ; $4B4E: $C3 $79 $4B


Jump_025_4B51:
    call Call_000_2CA9                            ; $4B51: $CD $A9 $2C
    jp nc, Jump_025_4B76                          ; $4B54: $D2 $76 $4B

    inc hl                                        ; $4B57: $23
    ld [hl], $00                                  ; $4B58: $36 $00
    jp Jump_025_4B76                              ; $4B5A: $C3 $76 $4B


Jump_025_4B5D:
    call Call_000_2CA9                            ; $4B5D: $CD $A9 $2C
    jp nc, Jump_025_4B76                          ; $4B60: $D2 $76 $4B

    ld a, $68                                     ; $4B63: $3E $68
    call Call_000_2E6E                            ; $4B65: $CD $6E $2E
    ld hl, $FE00                                  ; $4B68: $21 $00 $FE
    call Call_000_2FEB                            ; $4B6B: $CD $EB $2F
    ld hl, $FB00                                  ; $4B6E: $21 $00 $FB
    call Call_000_305D                            ; $4B71: $CD $5D $30
    jr jr_025_4B79                                ; $4B74: $18 $03

Jump_025_4B76:
    jp Jump_000_2E25                              ; $4B76: $C3 $25 $2E


Jump_025_4B79:
jr_025_4B79:
    ret                                           ; $4B79: $C9


Call_025_4B7A:
    ld hl, $0054                                  ; $4B7A: $21 $54 $00
    add hl, bc                                    ; $4B7D: $09
    bit 1, [hl]                                   ; $4B7E: $CB $4E
    jr nz, jr_025_4B87                            ; $4B80: $20 $05

    bit 0, [hl]                                   ; $4B82: $CB $46
    jr nz, jr_025_4B9D                            ; $4B84: $20 $17

    ret                                           ; $4B86: $C9


jr_025_4B87:
    call Call_000_32CC                            ; $4B87: $CD $CC $32
    jr c, jr_025_4B98                             ; $4B8A: $38 $0C

    jr nz, jr_025_4B93                            ; $4B8C: $20 $05

    ld hl, $FF00                                  ; $4B8E: $21 $00 $FF
    jr jr_025_4BB3                                ; $4B91: $18 $20

jr_025_4B93:
    ld hl, $FE80                                  ; $4B93: $21 $80 $FE
    jr jr_025_4BB3                                ; $4B96: $18 $1B

jr_025_4B98:
    ld hl, $FE00                                  ; $4B98: $21 $00 $FE
    jr jr_025_4BB3                                ; $4B9B: $18 $16

jr_025_4B9D:
    call Call_000_32CC                            ; $4B9D: $CD $CC $32
    jr c, jr_025_4BAE                             ; $4BA0: $38 $0C

    jr nz, jr_025_4BA9                            ; $4BA2: $20 $05

    ld hl, $0100                                  ; $4BA4: $21 $00 $01
    jr jr_025_4BB3                                ; $4BA7: $18 $0A

jr_025_4BA9:
    ld hl, $0180                                  ; $4BA9: $21 $80 $01
    jr jr_025_4BB3                                ; $4BAC: $18 $05

jr_025_4BAE:
    ld hl, $0200                                  ; $4BAE: $21 $00 $02
    jr jr_025_4BB3                                ; $4BB1: $18 $00

jr_025_4BB3:
    call Call_000_2F0B                            ; $4BB3: $CD $0B $2F
    ret                                           ; $4BB6: $C9


    call Call_000_2EE0                            ; $4BB7: $CD $E0 $2E
    call Call_000_3517                            ; $4BBA: $CD $17 $35
    jp c, Jump_025_4C03                           ; $4BBD: $DA $03 $4C

    ld hl, $0018                                  ; $4BC0: $21 $18 $00
    add hl, de                                    ; $4BC3: $19
    ld a, [hl]                                    ; $4BC4: $7E
    cp $08                                        ; $4BC5: $FE $08
    jp z, Jump_025_4BD7                           ; $4BC7: $CA $D7 $4B

    cp $0C                                        ; $4BCA: $FE $0C
    jp z, Jump_025_4BE9                           ; $4BCC: $CA $E9 $4B

    cp $10                                        ; $4BCF: $FE $10
    jp z, Jump_025_4BF5                           ; $4BD1: $CA $F5 $4B

    jp Jump_025_4C00                              ; $4BD4: $C3 $00 $4C


Jump_025_4BD7:
    call Call_000_2CA2                            ; $4BD7: $CD $A2 $2C
    jp z, Jump_025_4C00                           ; $4BDA: $CA $00 $4C

    call Call_025_507A                            ; $4BDD: $CD $7A $50
    ld hl, $001D                                  ; $4BE0: $21 $1D $00
    add hl, de                                    ; $4BE3: $19
    ld [hl], $14                                  ; $4BE4: $36 $14
    jp Jump_025_4C00                              ; $4BE6: $C3 $00 $4C


Jump_025_4BE9:
    call Call_000_2CA9                            ; $4BE9: $CD $A9 $2C
    jp nc, Jump_025_4C00                          ; $4BEC: $D2 $00 $4C

    inc hl                                        ; $4BEF: $23
    ld [hl], $06                                  ; $4BF0: $36 $06
    jp Jump_025_4C00                              ; $4BF2: $C3 $00 $4C


Jump_025_4BF5:
    call Call_000_2CA9                            ; $4BF5: $CD $A9 $2C
    jp nc, Jump_025_4C00                          ; $4BF8: $D2 $00 $4C

    call Call_000_2DB6                            ; $4BFB: $CD $B6 $2D
    jr jr_025_4C03                                ; $4BFE: $18 $03

Jump_025_4C00:
    jp Jump_000_2E25                              ; $4C00: $C3 $25 $2E


Jump_025_4C03:
jr_025_4C03:
    ret                                           ; $4C03: $C9


    call Call_000_2EE0                            ; $4C04: $CD $E0 $2E
    call Call_000_3517                            ; $4C07: $CD $17 $35
    jp c, Jump_025_4CFA                           ; $4C0A: $DA $FA $4C

    ld hl, $0018                                  ; $4C0D: $21 $18 $00
    add hl, de                                    ; $4C10: $19
    ld a, [hl]                                    ; $4C11: $7E
    cp $00                                        ; $4C12: $FE $00
    jp z, Jump_025_4C38                           ; $4C14: $CA $38 $4C

    cp $04                                        ; $4C17: $FE $04
    jp z, Jump_025_4C4C                           ; $4C19: $CA $4C $4C

    cp $08                                        ; $4C1C: $FE $08
    jp z, Jump_025_4C70                           ; $4C1E: $CA $70 $4C

    cp $0C                                        ; $4C21: $FE $0C
    jp z, Jump_025_4C87                           ; $4C23: $CA $87 $4C

    cp $10                                        ; $4C26: $FE $10
    jp z, Jump_025_4CC8                           ; $4C28: $CA $C8 $4C

    cp $14                                        ; $4C2B: $FE $14
    jp z, Jump_025_4CDA                           ; $4C2D: $CA $DA $4C

    cp $18                                        ; $4C30: $FE $18
    jp z, Jump_025_4CEC                           ; $4C32: $CA $EC $4C

    jp Jump_025_4CF7                              ; $4C35: $C3 $F7 $4C


Jump_025_4C38:
    call Call_000_2CA9                            ; $4C38: $CD $A9 $2C
    jp nc, Jump_025_4CF7                          ; $4C3B: $D2 $F7 $4C

    inc hl                                        ; $4C3E: $23
    ld [hl], $00                                  ; $4C3F: $36 $00
    ld hl, $010F                                  ; $4C41: $21 $0F $01
    ld a, $11                                     ; $4C44: $3E $11
    call Call_000_34B3                            ; $4C46: $CD $B3 $34
    jp Jump_025_4CF7                              ; $4C49: $C3 $F7 $4C


Jump_025_4C4C:
    call Call_000_2CA2                            ; $4C4C: $CD $A2 $2C
    jr z, jr_025_4C59                             ; $4C4F: $28 $08

    ld a, $AE                                     ; $4C51: $3E $AE
    call Call_000_1360                            ; $4C53: $CD $60 $13
    call Call_025_4CFB                            ; $4C56: $CD $FB $4C

jr_025_4C59:
    ld hl, $0020                                  ; $4C59: $21 $20 $00
    call Call_000_30B0                            ; $4C5C: $CD $B0 $30
    call Call_000_2CA9                            ; $4C5F: $CD $A9 $2C
    jp nc, Jump_025_4CF7                          ; $4C62: $D2 $F7 $4C

    ld hl, $010F                                  ; $4C65: $21 $0F $01
    ld a, $11                                     ; $4C68: $3E $11
    call Call_000_34B3                            ; $4C6A: $CD $B3 $34
    jp Jump_025_4CF7                              ; $4C6D: $C3 $F7 $4C


Jump_025_4C70:
    ld hl, $0020                                  ; $4C70: $21 $20 $00
    call Call_000_30B0                            ; $4C73: $CD $B0 $30
    call Call_000_2CA9                            ; $4C76: $CD $A9 $2C
    jp nc, Jump_025_4CF7                          ; $4C79: $D2 $F7 $4C

    ld hl, HeaderLogo                             ; $4C7C: $21 $04 $01
    ld a, $11                                     ; $4C7F: $3E $11
    call Call_000_34B3                            ; $4C81: $CD $B3 $34
    jp Jump_025_4CF7                              ; $4C84: $C3 $F7 $4C


Jump_025_4C87:
    call Call_000_2CA2                            ; $4C87: $CD $A2 $2C
    jr z, jr_025_4C94                             ; $4C8A: $28 $08

    ld a, $AE                                     ; $4C8C: $3E $AE
    call Call_000_1360                            ; $4C8E: $CD $60 $13
    call Call_025_4CFB                            ; $4C91: $CD $FB $4C

jr_025_4C94:
    ld hl, $0020                                  ; $4C94: $21 $20 $00
    call Call_000_30B0                            ; $4C97: $CD $B0 $30
    call Call_000_2CA9                            ; $4C9A: $CD $A9 $2C
    jp nc, Jump_025_4CF7                          ; $4C9D: $D2 $F7 $4C

    call Call_000_32CC                            ; $4CA0: $CD $CC $32
    jr c, jr_025_4CBD                             ; $4CA3: $38 $18

    jr nz, jr_025_4CB2                            ; $4CA5: $20 $0B

    ld hl, $0208                                  ; $4CA7: $21 $08 $02
    ld a, $00                                     ; $4CAA: $3E $00
    call Call_000_34B3                            ; $4CAC: $CD $B3 $34
    jp Jump_025_4CF7                              ; $4CAF: $C3 $F7 $4C


jr_025_4CB2:
    ld hl, $0308                                  ; $4CB2: $21 $08 $03
    ld a, $01                                     ; $4CB5: $3E $01
    call Call_000_34B3                            ; $4CB7: $CD $B3 $34
    jp Jump_025_4CF7                              ; $4CBA: $C3 $F7 $4C


jr_025_4CBD:
    ld hl, $0413                                  ; $4CBD: $21 $13 $04
    ld a, $00                                     ; $4CC0: $3E $00
    call Call_000_34B3                            ; $4CC2: $CD $B3 $34
    jp Jump_025_4CF7                              ; $4CC5: $C3 $F7 $4C


Jump_025_4CC8:
    ld hl, $0020                                  ; $4CC8: $21 $20 $00
    call Call_000_30B0                            ; $4CCB: $CD $B0 $30
    call Call_000_2CA9                            ; $4CCE: $CD $A9 $2C
    jp nc, Jump_025_4CF7                          ; $4CD1: $D2 $F7 $4C

    inc hl                                        ; $4CD4: $23
    ld [hl], $14                                  ; $4CD5: $36 $14
    jp Jump_025_4CF7                              ; $4CD7: $C3 $F7 $4C


Jump_025_4CDA:
    ld hl, $0020                                  ; $4CDA: $21 $20 $00
    call Call_000_30B0                            ; $4CDD: $CD $B0 $30
    call Call_000_2CA9                            ; $4CE0: $CD $A9 $2C
    jp nc, Jump_025_4CF7                          ; $4CE3: $D2 $F7 $4C

    inc hl                                        ; $4CE6: $23
    ld [hl], $06                                  ; $4CE7: $36 $06
    jp Jump_025_4CF7                              ; $4CE9: $C3 $F7 $4C


Jump_025_4CEC:
    call Call_000_2CA9                            ; $4CEC: $CD $A9 $2C
    jp nc, Jump_025_4CF7                          ; $4CEF: $D2 $F7 $4C

    call Call_000_2DB6                            ; $4CF2: $CD $B6 $2D
    jr jr_025_4CFA                                ; $4CF5: $18 $03

Jump_025_4CF7:
    call Call_000_2E25                            ; $4CF7: $CD $25 $2E

Jump_025_4CFA:
jr_025_4CFA:
    ret                                           ; $4CFA: $C9


Call_025_4CFB:
    call Call_000_32CC                            ; $4CFB: $CD $CC $32
    jr c, jr_025_4D0C                             ; $4CFE: $38 $0C

    jr nz, jr_025_4D07                            ; $4D00: $20 $05

    ld hl, $0200                                  ; $4D02: $21 $00 $02
    jr jr_025_4D0F                                ; $4D05: $18 $08

jr_025_4D07:
    ld hl, $0300                                  ; $4D07: $21 $00 $03
    jr jr_025_4D0F                                ; $4D0A: $18 $03

jr_025_4D0C:
    ld hl, $0400                                  ; $4D0C: $21 $00 $04

jr_025_4D0F:
    call Call_000_2FEB                            ; $4D0F: $CD $EB $2F
    ret                                           ; $4D12: $C9


    call Call_000_2EE0                            ; $4D13: $CD $E0 $2E
    call Call_000_3517                            ; $4D16: $CD $17 $35
    jp c, Jump_025_4D73                           ; $4D19: $DA $73 $4D

    ld hl, $0018                                  ; $4D1C: $21 $18 $00
    add hl, de                                    ; $4D1F: $19
    ld a, [hl]                                    ; $4D20: $7E
    cp $08                                        ; $4D21: $FE $08
    jp z, Jump_025_4D33                           ; $4D23: $CA $33 $4D

    cp $0C                                        ; $4D26: $FE $0C
    jp z, Jump_025_4D59                           ; $4D28: $CA $59 $4D

    cp $10                                        ; $4D2B: $FE $10
    jp z, Jump_025_4D65                           ; $4D2D: $CA $65 $4D

    jp Jump_025_4D70                              ; $4D30: $C3 $70 $4D


Jump_025_4D33:
    call Call_000_2CA2                            ; $4D33: $CD $A2 $2C
    jp z, Jump_025_4D70                           ; $4D36: $CA $70 $4D

    call Call_000_32CC                            ; $4D39: $CD $CC $32
    jr c, jr_025_4D4A                             ; $4D3C: $38 $0C

    jr nz, jr_025_4D45                            ; $4D3E: $20 $05

    ld hl, $1800                                  ; $4D40: $21 $00 $18
    jr jr_025_4D4D                                ; $4D43: $18 $08

jr_025_4D45:
    ld hl, $3000                                  ; $4D45: $21 $00 $30
    jr jr_025_4D4D                                ; $4D48: $18 $03

jr_025_4D4A:
    ld hl, $4800                                  ; $4D4A: $21 $00 $48

jr_025_4D4D:
    call Call_025_50EB                            ; $4D4D: $CD $EB $50
    ld hl, $001D                                  ; $4D50: $21 $1D $00
    add hl, de                                    ; $4D53: $19
    ld [hl], $1E                                  ; $4D54: $36 $1E
    jp Jump_025_4D70                              ; $4D56: $C3 $70 $4D


Jump_025_4D59:
    call Call_000_2CA9                            ; $4D59: $CD $A9 $2C
    jp nc, Jump_025_4D70                          ; $4D5C: $D2 $70 $4D

    inc hl                                        ; $4D5F: $23
    ld [hl], $06                                  ; $4D60: $36 $06
    jp Jump_025_4D70                              ; $4D62: $C3 $70 $4D


Jump_025_4D65:
    call Call_000_2CA9                            ; $4D65: $CD $A9 $2C
    jp nc, Jump_025_4D70                          ; $4D68: $D2 $70 $4D

    call Call_000_2DB6                            ; $4D6B: $CD $B6 $2D
    jr jr_025_4D73                                ; $4D6E: $18 $03

Jump_025_4D70:
    jp Jump_000_2E25                              ; $4D70: $C3 $25 $2E


Jump_025_4D73:
jr_025_4D73:
    ret                                           ; $4D73: $C9


    call Call_000_2EE0                            ; $4D74: $CD $E0 $2E
    call Call_000_3517                            ; $4D77: $CD $17 $35
    jp c, Jump_025_5039                           ; $4D7A: $DA $39 $50

    ld hl, $0018                                  ; $4D7D: $21 $18 $00
    add hl, de                                    ; $4D80: $19
    ld a, [hl]                                    ; $4D81: $7E
    cp $00                                        ; $4D82: $FE $00
    jp z, Jump_025_4DF8                           ; $4D84: $CA $F8 $4D

    cp $04                                        ; $4D87: $FE $04
    jp z, Jump_025_4E1D                           ; $4D89: $CA $1D $4E

    cp $08                                        ; $4D8C: $FE $08
    jp z, Jump_025_4E60                           ; $4D8E: $CA $60 $4E

    cp $0C                                        ; $4D91: $FE $0C
    jp z, Jump_025_4E60                           ; $4D93: $CA $60 $4E

    cp $10                                        ; $4D96: $FE $10
    jp z, Jump_025_4E60                           ; $4D98: $CA $60 $4E

    cp $14                                        ; $4D9B: $FE $14
    jp z, Jump_025_4E91                           ; $4D9D: $CA $91 $4E

    cp $18                                        ; $4DA0: $FE $18
    jp z, Jump_025_4EDF                           ; $4DA2: $CA $DF $4E

    cp $1C                                        ; $4DA5: $FE $1C
    jp z, Jump_025_4EF3                           ; $4DA7: $CA $F3 $4E

    cp $20                                        ; $4DAA: $FE $20
    jp z, Jump_025_4F1A                           ; $4DAC: $CA $1A $4F

    cp $24                                        ; $4DAF: $FE $24
    jp z, Jump_025_4F31                           ; $4DB1: $CA $31 $4F

    cp $28                                        ; $4DB4: $FE $28
    jp z, Jump_025_4F58                           ; $4DB6: $CA $58 $4F

    cp $2C                                        ; $4DB9: $FE $2C
    jp z, Jump_025_4F6A                           ; $4DBB: $CA $6A $4F

    cp $30                                        ; $4DBE: $FE $30
    jp z, Jump_025_4F7C                           ; $4DC0: $CA $7C $4F

    cp $34                                        ; $4DC3: $FE $34
    jp z, Jump_025_4F7C                           ; $4DC5: $CA $7C $4F

    cp $38                                        ; $4DC8: $FE $38
    jp z, Jump_025_4F8B                           ; $4DCA: $CA $8B $4F

    cp $3C                                        ; $4DCD: $FE $3C
    jp z, Jump_025_4F9A                           ; $4DCF: $CA $9A $4F

    cp $40                                        ; $4DD2: $FE $40
    jp z, Jump_025_4FA9                           ; $4DD4: $CA $A9 $4F

    cp $44                                        ; $4DD7: $FE $44
    jp z, Jump_025_4FD4                           ; $4DD9: $CA $D4 $4F

    cp $48                                        ; $4DDC: $FE $48
    jp z, Jump_025_4FE4                           ; $4DDE: $CA $E4 $4F

    cp $4C                                        ; $4DE1: $FE $4C
    jp z, Jump_025_4FFA                           ; $4DE3: $CA $FA $4F

    cp $50                                        ; $4DE6: $FE $50
    jp z, Jump_025_502B                           ; $4DE8: $CA $2B $50

    cp $54                                        ; $4DEB: $FE $54
    jp z, Jump_025_502B                           ; $4DED: $CA $2B $50

    cp $58                                        ; $4DF0: $FE $58
    jp z, Jump_025_5003                           ; $4DF2: $CA $03 $50

    jp Jump_025_5036                              ; $4DF5: $C3 $36 $50


Jump_025_4DF8:
    call Call_000_2CA2                            ; $4DF8: $CD $A2 $2C
    jr z, jr_025_4E03                             ; $4DFB: $28 $06

    ld hl, $0031                                  ; $4DFD: $21 $31 $00
    add hl, bc                                    ; $4E00: $09
    ld [hl], $01                                  ; $4E01: $36 $01

jr_025_4E03:
    call Call_000_2CA9                            ; $4E03: $CD $A9 $2C
    jp nc, Jump_025_5036                          ; $4E06: $D2 $36 $50

    inc hl                                        ; $4E09: $23
    ld [hl], $00                                  ; $4E0A: $36 $00
    ld hl, $010C                                  ; $4E0C: $21 $0C $01
    ld a, $10                                     ; $4E0F: $3E $10
    call Call_000_34B3                            ; $4E11: $CD $B3 $34
    ld hl, $009C                                  ; $4E14: $21 $9C $00
    add hl, bc                                    ; $4E17: $09
    ld [hl], $02                                  ; $4E18: $36 $02
    jp Jump_025_5036                              ; $4E1A: $C3 $36 $50


Jump_025_4E1D:
    call Call_000_2CA2                            ; $4E1D: $CD $A2 $2C
    jp z, Jump_025_4E3A                           ; $4E20: $CA $3A $4E

    ld a, $B7                                     ; $4E23: $3E $B7
    call Call_000_1360                            ; $4E25: $CD $60 $13
    ld hl, $0021                                  ; $4E28: $21 $21 $00
    add hl, bc                                    ; $4E2B: $09
    res 7, [hl]                                   ; $4E2C: $CB $BE
    ld hl, $0000                                  ; $4E2E: $21 $00 $00
    call Call_000_2FEB                            ; $4E31: $CD $EB $2F
    ld hl, $0000                                  ; $4E34: $21 $00 $00
    call Call_000_305D                            ; $4E37: $CD $5D $30

Jump_025_4E3A:
    ld hl, $0020                                  ; $4E3A: $21 $20 $00
    call Call_000_3078                            ; $4E3D: $CD $78 $30
    call Call_000_3262                            ; $4E40: $CD $62 $32
    jp nc, Jump_025_4E5D                          ; $4E43: $D2 $5D $4E

    jp nz, Jump_025_4E53                          ; $4E46: $C2 $53 $4E

    ld a, $18                                     ; $4E49: $3E $18
    ld h, $00                                     ; $4E4B: $26 $00
    call Call_000_2D19                            ; $4E4D: $CD $19 $2D
    jp Jump_025_5039                              ; $4E50: $C3 $39 $50


Jump_025_4E53:
    ld a, $54                                     ; $4E53: $3E $54
    ld h, $14                                     ; $4E55: $26 $14
    call Call_000_2D19                            ; $4E57: $CD $19 $2D
    jp Jump_025_5039                              ; $4E5A: $C3 $39 $50


Jump_025_4E5D:
    jp Jump_025_5036                              ; $4E5D: $C3 $36 $50


Jump_025_4E60:
    call Call_000_2CA2                            ; $4E60: $CD $A2 $2C
    jp z, Jump_025_4E6B                           ; $4E63: $CA $6B $4E

    ld a, $B7                                     ; $4E66: $3E $B7
    call Call_000_1360                            ; $4E68: $CD $60 $13

Jump_025_4E6B:
    ld hl, $0020                                  ; $4E6B: $21 $20 $00
    call Call_000_3078                            ; $4E6E: $CD $78 $30
    call Call_000_3262                            ; $4E71: $CD $62 $32
    jp nc, Jump_025_4E8E                          ; $4E74: $D2 $8E $4E

    jp nz, Jump_025_4E84                          ; $4E77: $C2 $84 $4E

    ld a, $18                                     ; $4E7A: $3E $18
    ld h, $00                                     ; $4E7C: $26 $00
    call Call_000_2D19                            ; $4E7E: $CD $19 $2D
    jp Jump_025_5039                              ; $4E81: $C3 $39 $50


Jump_025_4E84:
    ld a, $54                                     ; $4E84: $3E $54
    ld h, $14                                     ; $4E86: $26 $14
    call Call_000_2D19                            ; $4E88: $CD $19 $2D
    jp Jump_025_5039                              ; $4E8B: $C3 $39 $50


Jump_025_4E8E:
    jp Jump_025_5036                              ; $4E8E: $C3 $36 $50


Jump_025_4E91:
    call Call_000_2CA2                            ; $4E91: $CD $A2 $2C
    jp z, Jump_025_4E9C                           ; $4E94: $CA $9C $4E

    ld a, $B7                                     ; $4E97: $3E $B7
    call Call_000_1360                            ; $4E99: $CD $60 $13

Jump_025_4E9C:
    ld hl, $0020                                  ; $4E9C: $21 $20 $00
    call Call_000_3078                            ; $4E9F: $CD $78 $30
    call Call_000_3262                            ; $4EA2: $CD $62 $32
    jp nc, Jump_025_4EBF                          ; $4EA5: $D2 $BF $4E

    jp nz, Jump_025_4EB5                          ; $4EA8: $C2 $B5 $4E

    ld a, $18                                     ; $4EAB: $3E $18
    ld h, $00                                     ; $4EAD: $26 $00
    call Call_000_2D19                            ; $4EAF: $CD $19 $2D
    jp Jump_025_5039                              ; $4EB2: $C3 $39 $50


Jump_025_4EB5:
    ld a, $54                                     ; $4EB5: $3E $54
    ld h, $14                                     ; $4EB7: $26 $14
    call Call_000_2D19                            ; $4EB9: $CD $19 $2D
    jp Jump_025_5039                              ; $4EBC: $C3 $39 $50


Jump_025_4EBF:
    call Call_000_2CA9                            ; $4EBF: $CD $A9 $2C
    jp nc, Jump_025_5036                          ; $4EC2: $D2 $36 $50

    ld hl, $009C                                  ; $4EC5: $21 $9C $00
    add hl, bc                                    ; $4EC8: $09
    dec [hl]                                      ; $4EC9: $35
    jr z, jr_025_4ED5                             ; $4ECA: $28 $09

    ld hl, $0014                                  ; $4ECC: $21 $14 $00
    add hl, de                                    ; $4ECF: $19
    ld [hl], $04                                  ; $4ED0: $36 $04
    jp Jump_025_5036                              ; $4ED2: $C3 $36 $50


jr_025_4ED5:
    ld a, $58                                     ; $4ED5: $3E $58
    ld h, $1E                                     ; $4ED7: $26 $1E
    call Call_000_2D19                            ; $4ED9: $CD $19 $2D
    jp Jump_025_5039                              ; $4EDC: $C3 $39 $50


Jump_025_4EDF:
    call Call_000_2CA9                            ; $4EDF: $CD $A9 $2C
    jp nc, Jump_025_5036                          ; $4EE2: $D2 $36 $50

    inc hl                                        ; $4EE5: $23
    ld [hl], $00                                  ; $4EE6: $36 $00
    ld hl, $020F                                  ; $4EE8: $21 $0F $02
    ld a, $11                                     ; $4EEB: $3E $11
    call Call_000_34B3                            ; $4EED: $CD $B3 $34
    jp Jump_025_5036                              ; $4EF0: $C3 $36 $50


Jump_025_4EF3:
    call Call_000_2CA2                            ; $4EF3: $CD $A2 $2C
    jr z, jr_025_4F03                             ; $4EF6: $28 $0B

    ld a, $AE                                     ; $4EF8: $3E $AE
    call Call_000_1360                            ; $4EFA: $CD $60 $13
    ld hl, $0200                                  ; $4EFD: $21 $00 $02
    call Call_000_2FEB                            ; $4F00: $CD $EB $2F

jr_025_4F03:
    ld hl, $0020                                  ; $4F03: $21 $20 $00
    call Call_000_30B0                            ; $4F06: $CD $B0 $30
    call Call_000_2CA9                            ; $4F09: $CD $A9 $2C
    jp nc, Jump_025_5036                          ; $4F0C: $D2 $36 $50

    ld hl, $020F                                  ; $4F0F: $21 $0F $02
    ld a, $13                                     ; $4F12: $3E $13
    call Call_000_34B3                            ; $4F14: $CD $B3 $34
    jp Jump_025_5036                              ; $4F17: $C3 $36 $50


Jump_025_4F1A:
    ld hl, $0020                                  ; $4F1A: $21 $20 $00
    call Call_000_30B0                            ; $4F1D: $CD $B0 $30
    call Call_000_2CA9                            ; $4F20: $CD $A9 $2C
    jp nc, Jump_025_5036                          ; $4F23: $D2 $36 $50

    ld hl, $0204                                  ; $4F26: $21 $04 $02
    ld a, $11                                     ; $4F29: $3E $11
    call Call_000_34B3                            ; $4F2B: $CD $B3 $34
    jp Jump_025_5036                              ; $4F2E: $C3 $36 $50


Jump_025_4F31:
    call Call_000_2CA2                            ; $4F31: $CD $A2 $2C
    jr z, jr_025_4F41                             ; $4F34: $28 $0B

    ld a, $AE                                     ; $4F36: $3E $AE
    call Call_000_1360                            ; $4F38: $CD $60 $13
    ld hl, $0200                                  ; $4F3B: $21 $00 $02
    call Call_000_2FEB                            ; $4F3E: $CD $EB $2F

jr_025_4F41:
    ld hl, $0020                                  ; $4F41: $21 $20 $00
    call Call_000_30B0                            ; $4F44: $CD $B0 $30
    call Call_000_2CA9                            ; $4F47: $CD $A9 $2C
    jp nc, Jump_025_5036                          ; $4F4A: $D2 $36 $50

    ld hl, $0413                                  ; $4F4D: $21 $13 $04
    ld a, $12                                     ; $4F50: $3E $12
    call Call_000_34B3                            ; $4F52: $CD $B3 $34
    jp Jump_025_5036                              ; $4F55: $C3 $36 $50


Jump_025_4F58:
    ld hl, $0020                                  ; $4F58: $21 $20 $00
    call Call_000_30B0                            ; $4F5B: $CD $B0 $30
    call Call_000_2CA9                            ; $4F5E: $CD $A9 $2C
    jp nc, Jump_025_5036                          ; $4F61: $D2 $36 $50

    inc hl                                        ; $4F64: $23
    ld [hl], $0A                                  ; $4F65: $36 $0A
    jp Jump_025_5036                              ; $4F67: $C3 $36 $50


Jump_025_4F6A:
    ld hl, $0020                                  ; $4F6A: $21 $20 $00
    call Call_000_30B0                            ; $4F6D: $CD $B0 $30
    call Call_000_2CA9                            ; $4F70: $CD $A9 $2C
    jp nc, Jump_025_5036                          ; $4F73: $D2 $36 $50

    inc hl                                        ; $4F76: $23
    ld [hl], $06                                  ; $4F77: $36 $06
    jp Jump_025_5036                              ; $4F79: $C3 $36 $50


Jump_025_4F7C:
    call Call_025_503A                            ; $4F7C: $CD $3A $50
    call Call_000_2CA9                            ; $4F7F: $CD $A9 $2C
    jp nc, Jump_025_5036                          ; $4F82: $D2 $36 $50

    inc hl                                        ; $4F85: $23
    ld [hl], $06                                  ; $4F86: $36 $06
    jp Jump_025_5036                              ; $4F88: $C3 $36 $50


Jump_025_4F8B:
    call Call_025_503A                            ; $4F8B: $CD $3A $50
    call Call_000_2CA9                            ; $4F8E: $CD $A9 $2C
    jp nc, Jump_025_5036                          ; $4F91: $D2 $36 $50

    inc hl                                        ; $4F94: $23
    ld [hl], $14                                  ; $4F95: $36 $14
    jp Jump_025_5036                              ; $4F97: $C3 $36 $50


Jump_025_4F9A:
    call Call_025_503A                            ; $4F9A: $CD $3A $50
    call Call_000_2CA9                            ; $4F9D: $CD $A9 $2C
    jp nc, Jump_025_5036                          ; $4FA0: $D2 $36 $50

    inc hl                                        ; $4FA3: $23
    ld [hl], $FF                                  ; $4FA4: $36 $FF
    jp Jump_025_5036                              ; $4FA6: $C3 $36 $50


Jump_025_4FA9:
    call Call_000_2CA2                            ; $4FA9: $CD $A2 $2C
    jr z, jr_025_4FBF                             ; $4FAC: $28 $11

    ld a, $11                                     ; $4FAE: $3E $11
    call Call_000_1360                            ; $4FB0: $CD $60 $13
    ld hl, $0000                                  ; $4FB3: $21 $00 $00
    call Call_000_2FEB                            ; $4FB6: $CD $EB $2F
    ld hl, $F800                                  ; $4FB9: $21 $00 $F8
    call Call_000_305D                            ; $4FBC: $CD $5D $30

jr_025_4FBF:
    ld hl, $0209                                  ; $4FBF: $21 $09 $02
    ld a, $92                                     ; $4FC2: $3E $92
    call Call_000_34A2                            ; $4FC4: $CD $A2 $34
    ld a, $FF                                     ; $4FC7: $3E $FF
    ld h, $FF                                     ; $4FC9: $26 $FF
    call Call_000_2D33                            ; $4FCB: $CD $33 $2D
    jp nc, Jump_025_4FE7                          ; $4FCE: $D2 $E7 $4F

    jp Jump_025_4FE7                              ; $4FD1: $C3 $E7 $4F


Jump_025_4FD4:
    call Call_025_505F                            ; $4FD4: $CD $5F $50
    ld a, $01                                     ; $4FD7: $3E $01
    ld h, $FF                                     ; $4FD9: $26 $FF
    call Call_000_2D33                            ; $4FDB: $CD $33 $2D
    jp nc, Jump_025_4FE7                          ; $4FDE: $D2 $E7 $4F

    jp Jump_025_4FE7                              ; $4FE1: $C3 $E7 $4F


Jump_025_4FE4:
    call Call_025_505F                            ; $4FE4: $CD $5F $50

Jump_025_4FE7:
    ld hl, $0030                                  ; $4FE7: $21 $30 $00
    call Call_000_30FF                            ; $4FEA: $CD $FF $30
    jp nc, Jump_025_5036                          ; $4FED: $D2 $36 $50

    ld a, $4C                                     ; $4FF0: $3E $4C
    ld h, $10                                     ; $4FF2: $26 $10
    call Call_000_2CBA                            ; $4FF4: $CD $BA $2C
    jp Jump_025_5039                              ; $4FF7: $C3 $39 $50


Jump_025_4FFA:
    call Call_000_2CA9                            ; $4FFA: $CD $A9 $2C
    jp nc, Jump_025_5036                          ; $4FFD: $D2 $36 $50

    jp Jump_025_5036                              ; $5000: $C3 $36 $50


Jump_025_5003:
    call Call_000_2CA2                            ; $5003: $CD $A2 $2C
    jr z, jr_025_5012                             ; $5006: $28 $0A

    ld a, $B5                                     ; $5008: $3E $B5
    call Call_000_1360                            ; $500A: $CD $60 $13
    ld a, $03                                     ; $500D: $3E $03
    call Call_000_3963                            ; $500F: $CD $63 $39

jr_025_5012:
    ld hl, $0040                                  ; $5012: $21 $40 $00
    call Call_000_30B0                            ; $5015: $CD $B0 $30
    call Call_000_326C                            ; $5018: $CD $6C $32
    jp nc, Jump_025_502B                          ; $501B: $D2 $2B $50

    jp nz, Jump_025_502B                          ; $501E: $C2 $2B $50

    ld a, $18                                     ; $5021: $3E $18
    ld h, $00                                     ; $5023: $26 $00
    call Call_000_2D19                            ; $5025: $CD $19 $2D
    jp Jump_025_5039                              ; $5028: $C3 $39 $50


Jump_025_502B:
    call Call_000_2CA9                            ; $502B: $CD $A9 $2C
    jp nc, Jump_025_5036                          ; $502E: $D2 $36 $50

    call Call_000_2DB6                            ; $5031: $CD $B6 $2D
    jr jr_025_5039                                ; $5034: $18 $03

Jump_025_5036:
    call Call_000_2E25                            ; $5036: $CD $25 $2E

Jump_025_5039:
jr_025_5039:
    ret                                           ; $5039: $C9


Call_025_503A:
    ld hl, $0099                                  ; $503A: $21 $99 $00
    add hl, bc                                    ; $503D: $09
    ld a, [hl]                                    ; $503E: $7E
    ld hl, $0004                                  ; $503F: $21 $04 $00
    add hl, de                                    ; $5042: $19
    sub [hl]                                      ; $5043: $96
    ld h, a                                       ; $5044: $67
    ld l, $00                                     ; $5045: $2E $00
    sra h                                         ; $5047: $CB $2C
    rr l                                          ; $5049: $CB $1D
    sra h                                         ; $504B: $CB $2C
    rr l                                          ; $504D: $CB $1D
    sra h                                         ; $504F: $CB $2C
    rr l                                          ; $5051: $CB $1D
    sra h                                         ; $5053: $CB $2C
    rr l                                          ; $5055: $CB $1D
    sra h                                         ; $5057: $CB $2C
    rr l                                          ; $5059: $CB $1D
    call Call_000_2F0B                            ; $505B: $CD $0B $2F
    ret                                           ; $505E: $C9


Call_025_505F:
    ld hl, $0054                                  ; $505F: $21 $54 $00
    add hl, bc                                    ; $5062: $09
    bit 1, [hl]                                   ; $5063: $CB $4E
    jr nz, jr_025_506C                            ; $5065: $20 $05

    bit 0, [hl]                                   ; $5067: $CB $46
    jr nz, jr_025_5073                            ; $5069: $20 $08

    ret                                           ; $506B: $C9


jr_025_506C:
    ld hl, $FE80                                  ; $506C: $21 $80 $FE
    call Call_000_2F0B                            ; $506F: $CD $0B $2F
    ret                                           ; $5072: $C9


jr_025_5073:
    ld hl, $0180                                  ; $5073: $21 $80 $01
    call Call_000_2F0B                            ; $5076: $CD $0B $2F
    ret                                           ; $5079: $C9


Call_025_507A:
    ld a, $14                                     ; $507A: $3E $14
    call Call_000_1360                            ; $507C: $CD $60 $13
    push bc                                       ; $507F: $C5
    push de                                       ; $5080: $D5
    ld hl, $0030                                  ; $5081: $21 $30 $00
    add hl, bc                                    ; $5084: $09
    ld a, [hl]                                    ; $5085: $7E
    or a                                          ; $5086: $B7
    jr nz, jr_025_508C                            ; $5087: $20 $03

    xor a                                         ; $5089: $AF
    jr jr_025_508D                                ; $508A: $18 $01

jr_025_508C:
    scf                                           ; $508C: $37

jr_025_508D:
    ld hl, $0022                                  ; $508D: $21 $22 $00
    push af                                       ; $5090: $F5
    add hl, bc                                    ; $5091: $09
    pop af                                        ; $5092: $F1
    ld a, [hl]                                    ; $5093: $7E
    push af                                       ; $5094: $F5
    call Call_000_25D1                            ; $5095: $CD $D1 $25
    ld hl, $0021                                  ; $5098: $21 $21 $00
    add hl, de                                    ; $509B: $19
    ld [hl], $24                                  ; $509C: $36 $24
    inc hl                                        ; $509E: $23
    ld [hl], $A2                                  ; $509F: $36 $A2
    inc hl                                        ; $50A1: $23
    ld [hl], $49                                  ; $50A2: $36 $49
    ld hl, $0011                                  ; $50A4: $21 $11 $00
    add hl, de                                    ; $50A7: $19
    ld [hl], $02                                  ; $50A8: $36 $02
    inc hl                                        ; $50AA: $23
    ld [hl], $DE                                  ; $50AB: $36 $DE
    inc hl                                        ; $50AD: $23
    ld [hl], $63                                  ; $50AE: $36 $63
    inc hl                                        ; $50B0: $23
    ld [hl], $00                                  ; $50B1: $36 $00
    ld hl, $001C                                  ; $50B3: $21 $1C $00
    add hl, de                                    ; $50B6: $19
    ld [hl], $00                                  ; $50B7: $36 $00
    inc hl                                        ; $50B9: $23
    ld [hl], $00                                  ; $50BA: $36 $00
    ld hl, $0029                                  ; $50BC: $21 $29 $00
    add hl, de                                    ; $50BF: $19
    ld [hl], $00                                  ; $50C0: $36 $00
    call Call_000_2614                            ; $50C2: $CD $14 $26
    ld hl, $1800                                  ; $50C5: $21 $00 $18
    call Call_000_2F79                            ; $50C8: $CD $79 $2F
    ld hl, $F800                                  ; $50CB: $21 $00 $F8
    call Call_000_2F42                            ; $50CE: $CD $42 $2F
    pop af                                        ; $50D1: $F1
    jr c, jr_025_50E2                             ; $50D2: $38 $0E

    bit 1, a                                      ; $50D4: $CB $4F
    jr nz, jr_025_50DD                            ; $50D6: $20 $05

    ld hl, $0080                                  ; $50D8: $21 $80 $00
    jr jr_025_50E5                                ; $50DB: $18 $08

jr_025_50DD:
    ld hl, $0100                                  ; $50DD: $21 $00 $01
    jr jr_025_50E5                                ; $50E0: $18 $03

jr_025_50E2:
    ld hl, $0200                                  ; $50E2: $21 $00 $02

jr_025_50E5:
    call Call_000_2FEB                            ; $50E5: $CD $EB $2F
    pop de                                        ; $50E8: $D1
    pop bc                                        ; $50E9: $C1
    ret                                           ; $50EA: $C9


Call_025_50EB:
    ld a, $14                                     ; $50EB: $3E $14
    call Call_000_1360                            ; $50ED: $CD $60 $13
    push bc                                       ; $50F0: $C5
    push de                                       ; $50F1: $D5
    push hl                                       ; $50F2: $E5
    call Call_000_25D1                            ; $50F3: $CD $D1 $25
    jr jr_025_5103                                ; $50F6: $18 $0B

    ld a, $14                                     ; $50F8: $3E $14
    call Call_000_1360                            ; $50FA: $CD $60 $13
    push bc                                       ; $50FD: $C5
    push de                                       ; $50FE: $D5
    push hl                                       ; $50FF: $E5
    call Call_000_25E1                            ; $5100: $CD $E1 $25

jr_025_5103:
    ld hl, $0021                                  ; $5103: $21 $21 $00
    add hl, de                                    ; $5106: $19
    ld [hl], $25                                  ; $5107: $36 $25
    inc hl                                        ; $5109: $23
    ld [hl], $37                                  ; $510A: $36 $37
    inc hl                                        ; $510C: $23
    ld [hl], $51                                  ; $510D: $36 $51
    ld hl, $0011                                  ; $510F: $21 $11 $00
    add hl, de                                    ; $5112: $19
    ld [hl], $02                                  ; $5113: $36 $02
    inc hl                                        ; $5115: $23
    ld [hl], $EC                                  ; $5116: $36 $EC
    inc hl                                        ; $5118: $23
    ld [hl], $63                                  ; $5119: $36 $63
    inc hl                                        ; $511B: $23
    ld [hl], $00                                  ; $511C: $36 $00
    ld hl, $001C                                  ; $511E: $21 $1C $00
    add hl, de                                    ; $5121: $19
    ld [hl], $05                                  ; $5122: $36 $05
    inc hl                                        ; $5124: $23
    ld [hl], $05                                  ; $5125: $36 $05
    ld hl, $0029                                  ; $5127: $21 $29 $00
    add hl, de                                    ; $512A: $19
    ld [hl], $02                                  ; $512B: $36 $02
    call Call_000_2614                            ; $512D: $CD $14 $26
    pop hl                                        ; $5130: $E1
    call Call_000_2F79                            ; $5131: $CD $79 $2F
    pop de                                        ; $5134: $D1
    pop bc                                        ; $5135: $C1
    ret                                           ; $5136: $C9


    ld hl, $0014                                  ; $5137: $21 $14 $00
    add hl, de                                    ; $513A: $19
    ld a, [hl]                                    ; $513B: $7E
    cp $0C                                        ; $513C: $FE $0C
    jr z, jr_025_5144                             ; $513E: $28 $04

jr_025_5140:
    call Call_000_2E25                            ; $5140: $CD $25 $2E
    ret                                           ; $5143: $C9


jr_025_5144:
    call Call_000_2CA9                            ; $5144: $CD $A9 $2C
    jr nc, jr_025_5140                            ; $5147: $30 $F7

    call Call_000_27F5                            ; $5149: $CD $F5 $27
    ret                                           ; $514C: $C9


    call Call_000_31B6                            ; $514D: $CD $B6 $31
    jp c, Jump_025_524C                           ; $5150: $DA $4C $52

    jp z, Jump_025_5162                           ; $5153: $CA $62 $51

    call Call_000_3A2A                            ; $5156: $CD $2A $3A
    jp c, Jump_025_5200                           ; $5159: $DA $00 $52

    jp z, Jump_025_5214                           ; $515C: $CA $14 $52

    jp Jump_025_524C                              ; $515F: $C3 $4C $52


Jump_025_5162:
    call Call_000_3A2A                            ; $5162: $CD $2A $3A
    jp c, Jump_025_521F                           ; $5165: $DA $1F $52

    jp z, Jump_025_523C                           ; $5168: $CA $3C $52

    call Call_000_39D3                            ; $516B: $CD $D3 $39
    jp nc, Jump_025_524C                          ; $516E: $D2 $4C $52

    jp z, Jump_025_517A                           ; $5171: $CA $7A $51

    jp nz, Jump_025_51B5                          ; $5174: $C2 $B5 $51

    jp Jump_025_524C                              ; $5177: $C3 $4C $52


Jump_025_517A:
    call Call_000_3209                            ; $517A: $CD $09 $32
    jr c, jr_025_5188                             ; $517D: $38 $09

    ld hl, $3AD4                                  ; $517F: $21 $D4 $3A
    call Call_000_2B78                            ; $5182: $CD $78 $2B
    jp c, Jump_025_521F                           ; $5185: $DA $1F $52

jr_025_5188:
    call Call_000_3A61                            ; $5188: $CD $61 $3A
    jp c, Jump_025_524A                           ; $518B: $DA $4A $52

    ld hl, $3B2A                                  ; $518E: $21 $2A $3B
    call Call_000_2B78                            ; $5191: $CD $78 $2B
    jp c, Jump_025_5200                           ; $5194: $DA $00 $52

    ld hl, $3B14                                  ; $5197: $21 $14 $3B
    call Call_000_2B78                            ; $519A: $CD $78 $2B
    jp c, Jump_025_5214                           ; $519D: $DA $14 $52

    ld hl, $3AC2                                  ; $51A0: $21 $C2 $3A
    call Call_000_2B78                            ; $51A3: $CD $78 $2B
    jp c, Jump_025_51F5                           ; $51A6: $DA $F5 $51

    ld hl, $3AB9                                  ; $51A9: $21 $B9 $3A
    call Call_000_2B78                            ; $51AC: $CD $78 $2B
    jp c, Jump_025_51CF                           ; $51AF: $DA $CF $51

    jp Jump_025_524C                              ; $51B2: $C3 $4C $52


Jump_025_51B5:
    call Call_000_3209                            ; $51B5: $CD $09 $32
    jp c, Jump_025_51CC                           ; $51B8: $DA $CC $51

    cp $01                                        ; $51BB: $FE $01
    jr z, jr_025_51CC                             ; $51BD: $28 $0D

    cp $02                                        ; $51BF: $FE $02
    jr z, jr_025_51C3                             ; $51C1: $28 $00

jr_025_51C3:
    ld hl, $3AE5                                  ; $51C3: $21 $E5 $3A
    call Call_000_2B78                            ; $51C6: $CD $78 $2B
    jp c, Jump_025_523C                           ; $51C9: $DA $3C $52

Jump_025_51CC:
jr_025_51CC:
    jp Jump_025_524C                              ; $51CC: $C3 $4C $52


Jump_025_51CF:
    call Call_000_32C5                            ; $51CF: $CD $C5 $32
    jp nz, Jump_025_524C                          ; $51D2: $C2 $4C $52

    call Call_000_2C23                            ; $51D5: $CD $23 $2C
    ld a, $40                                     ; $51D8: $3E $40
    call Call_000_32E2                            ; $51DA: $CD $E2 $32
    ld hl, $0008                                  ; $51DD: $21 $08 $00
    ld a, $00                                     ; $51E0: $3E $00
    call Call_000_34C4                            ; $51E2: $CD $C4 $34
    call Call_000_32CC                            ; $51E5: $CD $CC $32
    jr nc, jr_025_51F2                            ; $51E8: $30 $08

    ld hl, $0203                                  ; $51EA: $21 $03 $02
    ld a, $01                                     ; $51ED: $3E $01
    call Call_000_34C4                            ; $51EF: $CD $C4 $34

jr_025_51F2:
    jp Jump_025_524A                              ; $51F2: $C3 $4A $52


Jump_025_51F5:
    call Call_000_2C23                            ; $51F5: $CD $23 $2C
    ld a, $42                                     ; $51F8: $3E $42
    call Call_000_32E2                            ; $51FA: $CD $E2 $32
    jp Jump_025_524A                              ; $51FD: $C3 $4A $52


Jump_025_5200:
    call Call_000_32C5                            ; $5200: $CD $C5 $32
    jp nz, Jump_025_524C                          ; $5203: $C2 $4C $52

    call Call_000_2C23                            ; $5206: $CD $23 $2C
    ld a, $44                                     ; $5209: $3E $44
    call Call_000_32E2                            ; $520B: $CD $E2 $32
    call Call_000_34F1                            ; $520E: $CD $F1 $34
    jp Jump_025_524A                              ; $5211: $C3 $4A $52


Jump_025_5214:
    call Call_000_2C23                            ; $5214: $CD $23 $2C
    ld a, $46                                     ; $5217: $3E $46
    call Call_000_32E2                            ; $5219: $CD $E2 $32
    jp Jump_025_524A                              ; $521C: $C3 $4A $52


Jump_025_521F:
    call Call_000_32C5                            ; $521F: $CD $C5 $32
    jp nz, Jump_025_524C                          ; $5222: $C2 $4C $52

    call Call_000_2C23                            ; $5225: $CD $23 $2C
    ld a, $4A                                     ; $5228: $3E $4A
    call Call_000_32E2                            ; $522A: $CD $E2 $32
    call Call_000_34F1                            ; $522D: $CD $F1 $34
    call Call_000_34FE                            ; $5230: $CD $FE $34
    ld hl, $0021                                  ; $5233: $21 $21 $00
    add hl, bc                                    ; $5236: $09
    set 7, [hl]                                   ; $5237: $CB $FE
    jp Jump_025_524A                              ; $5239: $C3 $4A $52


Jump_025_523C:
    call Call_000_2C23                            ; $523C: $CD $23 $2C
    ld a, $4C                                     ; $523F: $3E $4C
    call Call_000_32E2                            ; $5241: $CD $E2 $32
    jp Jump_025_524A                              ; $5244: $C3 $4A $52


    jp Jump_025_524A                              ; $5247: $C3 $4A $52


Jump_025_524A:
    scf                                           ; $524A: $37
    ret                                           ; $524B: $C9


Jump_025_524C:
    or a                                          ; $524C: $B7
    ret                                           ; $524D: $C9


    call Call_000_2EE0                            ; $524E: $CD $E0 $2E
    call Call_000_3517                            ; $5251: $CD $17 $35
    jp c, Jump_025_5289                           ; $5254: $DA $89 $52

    ld hl, $0018                                  ; $5257: $21 $18 $00
    add hl, de                                    ; $525A: $19
    ld a, [hl]                                    ; $525B: $7E
    cp $08                                        ; $525C: $FE $08
    jp z, Jump_025_5269                           ; $525E: $CA $69 $52

    cp $10                                        ; $5261: $FE $10
    jp z, Jump_025_527B                           ; $5263: $CA $7B $52

    jp Jump_025_5286                              ; $5266: $C3 $86 $52


Jump_025_5269:
    call Call_000_2CA2                            ; $5269: $CD $A2 $2C
    jp z, Jump_025_5286                           ; $526C: $CA $86 $52

    call Call_025_5860                            ; $526F: $CD $60 $58
    ld hl, $001D                                  ; $5272: $21 $1D $00
    add hl, de                                    ; $5275: $19
    ld [hl], $0F                                  ; $5276: $36 $0F
    jp Jump_025_5286                              ; $5278: $C3 $86 $52


Jump_025_527B:
    call Call_000_2CA9                            ; $527B: $CD $A9 $2C
    jp nc, Jump_025_5286                          ; $527E: $D2 $86 $52

    call Call_000_2DB6                            ; $5281: $CD $B6 $2D
    jr jr_025_5289                                ; $5284: $18 $03

Jump_025_5286:
    jp Jump_000_2E25                              ; $5286: $C3 $25 $2E


Jump_025_5289:
jr_025_5289:
    ret                                           ; $5289: $C9


    call Call_000_2EE0                            ; $528A: $CD $E0 $2E
    call Call_000_3517                            ; $528D: $CD $17 $35
    jp c, Jump_025_5376                           ; $5290: $DA $76 $53

    ld hl, $0018                                  ; $5293: $21 $18 $00
    add hl, de                                    ; $5296: $19
    ld a, [hl]                                    ; $5297: $7E
    cp $00                                        ; $5298: $FE $00
    jp z, Jump_025_52B1                           ; $529A: $CA $B1 $52

    cp $04                                        ; $529D: $FE $04
    jp z, Jump_025_52C8                           ; $529F: $CA $C8 $52

    cp $08                                        ; $52A2: $FE $08
    jp z, Jump_025_533E                           ; $52A4: $CA $3E $53

    cp $0C                                        ; $52A7: $FE $0C
    jp z, Jump_025_5350                           ; $52A9: $CA $50 $53

    cp $10                                        ; $52AC: $FE $10
    jp z, Jump_025_5368                           ; $52AE: $CA $68 $53

Jump_025_52B1:
    call Call_000_2CA9                            ; $52B1: $CD $A9 $2C
    jp nc, Jump_025_5373                          ; $52B4: $D2 $73 $53

    inc hl                                        ; $52B7: $23
    ld [hl], $0A                                  ; $52B8: $36 $0A
    ld hl, $0404                                  ; $52BA: $21 $04 $04
    ld a, $01                                     ; $52BD: $3E $01
    call Call_000_34B3                            ; $52BF: $CD $B3 $34
    jp Jump_025_5373                              ; $52C2: $C3 $73 $53


    jp Jump_025_5373                              ; $52C5: $C3 $73 $53


Jump_025_52C8:
    call Call_000_2CA2                            ; $52C8: $CD $A2 $2C
    jr z, jr_025_52F2                             ; $52CB: $28 $25

    ld a, $11                                     ; $52CD: $3E $11
    call Call_000_1360                            ; $52CF: $CD $60 $13
    call Call_000_32CC                            ; $52D2: $CD $CC $32
    jr c, jr_025_52E9                             ; $52D5: $38 $12

    jr nz, jr_025_52E1                            ; $52D7: $20 $08

    ld hl, $0300                                  ; $52D9: $21 $00 $03
    call Call_000_2FEB                            ; $52DC: $CD $EB $2F
    jr jr_025_52EF                                ; $52DF: $18 $0E

jr_025_52E1:
    ld hl, $0500                                  ; $52E1: $21 $00 $05
    call Call_000_2FEB                            ; $52E4: $CD $EB $2F
    jr jr_025_52EF                                ; $52E7: $18 $06

jr_025_52E9:
    ld hl, $0700                                  ; $52E9: $21 $00 $07
    call Call_000_2FEB                            ; $52EC: $CD $EB $2F

jr_025_52EF:
    jp Jump_025_5362                              ; $52EF: $C3 $62 $53


jr_025_52F2:
    call Call_000_3262                            ; $52F2: $CD $62 $32
    jp nc, Jump_025_532A                          ; $52F5: $D2 $2A $53

    jp nz, Jump_025_532A                          ; $52F8: $C2 $2A $53

    ld a, $08                                     ; $52FB: $3E $08
    ld h, $01                                     ; $52FD: $26 $01
    call Call_000_2D19                            ; $52FF: $CD $19 $2D
    call Call_000_32CC                            ; $5302: $CD $CC $32
    jr c, jr_025_531F                             ; $5305: $38 $18

    jr nz, jr_025_5314                            ; $5307: $20 $0B

    ld hl, $0308                                  ; $5309: $21 $08 $03
    ld a, $01                                     ; $530C: $3E $01
    call Call_000_34B3                            ; $530E: $CD $B3 $34
    jp Jump_025_5376                              ; $5311: $C3 $76 $53


jr_025_5314:
    ld hl, $0408                                  ; $5314: $21 $08 $04
    ld a, $01                                     ; $5317: $3E $01
    call Call_000_34B3                            ; $5319: $CD $B3 $34
    jp Jump_025_5376                              ; $531C: $C3 $76 $53


jr_025_531F:
    ld hl, $0508                                  ; $531F: $21 $08 $05
    ld a, $01                                     ; $5322: $3E $01
    call Call_000_34B3                            ; $5324: $CD $B3 $34
    jp Jump_025_5376                              ; $5327: $C3 $76 $53


Jump_025_532A:
    call Call_000_2CA9                            ; $532A: $CD $A9 $2C
    jp nc, Jump_025_5362                          ; $532D: $D2 $62 $53

    inc hl                                        ; $5330: $23
    ld [hl], $01                                  ; $5331: $36 $01
    ld hl, $0308                                  ; $5333: $21 $08 $03
    ld a, $01                                     ; $5336: $3E $01
    call Call_000_34B3                            ; $5338: $CD $B3 $34
    jp Jump_025_5362                              ; $533B: $C3 $62 $53


Jump_025_533E:
    ld hl, $0040                                  ; $533E: $21 $40 $00
    call Call_000_30B0                            ; $5341: $CD $B0 $30
    call Call_000_2CA9                            ; $5344: $CD $A9 $2C
    jp nc, Jump_025_5373                          ; $5347: $D2 $73 $53

    inc hl                                        ; $534A: $23
    ld [hl], $04                                  ; $534B: $36 $04
    jp Jump_025_5373                              ; $534D: $C3 $73 $53


Jump_025_5350:
    ld hl, $0040                                  ; $5350: $21 $40 $00
    call Call_000_30B0                            ; $5353: $CD $B0 $30
    call Call_000_2CA9                            ; $5356: $CD $A9 $2C
    jp nc, Jump_025_5373                          ; $5359: $D2 $73 $53

    inc hl                                        ; $535C: $23
    ld [hl], $0A                                  ; $535D: $36 $0A
    jp Jump_025_5373                              ; $535F: $C3 $73 $53


Jump_025_5362:
    call Call_000_3069                            ; $5362: $CD $69 $30
    jp Jump_025_5373                              ; $5365: $C3 $73 $53


Jump_025_5368:
    call Call_000_2CA9                            ; $5368: $CD $A9 $2C
    jp nc, Jump_025_5373                          ; $536B: $D2 $73 $53

    call Call_000_2DB6                            ; $536E: $CD $B6 $2D
    jr jr_025_5376                                ; $5371: $18 $03

Jump_025_5373:
    call Call_000_2E25                            ; $5373: $CD $25 $2E

Jump_025_5376:
jr_025_5376:
    ret                                           ; $5376: $C9


    call Call_000_2EE0                            ; $5377: $CD $E0 $2E
    call Call_000_3517                            ; $537A: $CD $17 $35
    jp c, Jump_025_54DE                           ; $537D: $DA $DE $54

    ld hl, $0018                                  ; $5380: $21 $18 $00
    add hl, de                                    ; $5383: $19
    ld a, [hl]                                    ; $5384: $7E
    cp $00                                        ; $5385: $FE $00
    jp z, Jump_025_53BA                           ; $5387: $CA $BA $53

    cp $04                                        ; $538A: $FE $04
    jp z, Jump_025_53BA                           ; $538C: $CA $BA $53

    cp $08                                        ; $538F: $FE $08
    jp z, Jump_025_53C6                           ; $5391: $CA $C6 $53

    cp $0C                                        ; $5394: $FE $0C
    jp z, Jump_025_53D2                           ; $5396: $CA $D2 $53

    cp $10                                        ; $5399: $FE $10
    jp z, Jump_025_53F6                           ; $539B: $CA $F6 $53

    cp $14                                        ; $539E: $FE $14
    jp z, Jump_025_5408                           ; $53A0: $CA $08 $54

    cp $18                                        ; $53A3: $FE $18
    jp z, Jump_025_5422                           ; $53A5: $CA $22 $54

    cp $1C                                        ; $53A8: $FE $1C
    jp z, Jump_025_5498                           ; $53AA: $CA $98 $54

    cp $20                                        ; $53AD: $FE $20
    jp z, Jump_025_54AA                           ; $53AF: $CA $AA $54

    cp $24                                        ; $53B2: $FE $24
    jp z, Jump_025_54D0                           ; $53B4: $CA $D0 $54

    jp Jump_025_54DB                              ; $53B7: $C3 $DB $54


Jump_025_53BA:
    call Call_000_2CA9                            ; $53BA: $CD $A9 $2C
    jp nc, Jump_025_54DB                          ; $53BD: $D2 $DB $54

    inc hl                                        ; $53C0: $23
    ld [hl], $00                                  ; $53C1: $36 $00
    jp Jump_025_54DB                              ; $53C3: $C3 $DB $54


Jump_025_53C6:
    call Call_000_2CA9                            ; $53C6: $CD $A9 $2C
    jp nc, Jump_025_54DB                          ; $53C9: $D2 $DB $54

    inc hl                                        ; $53CC: $23
    ld [hl], $0D                                  ; $53CD: $36 $0D
    jp Jump_025_54DB                              ; $53CF: $C3 $DB $54


Jump_025_53D2:
    call Call_000_2CA2                            ; $53D2: $CD $A2 $2C
    jp z, Jump_025_53E4                           ; $53D5: $CA $E4 $53

    call Call_025_58E9                            ; $53D8: $CD $E9 $58
    ld hl, $FC00                                  ; $53DB: $21 $00 $FC
    call Call_000_2FEB                            ; $53DE: $CD $EB $2F
    jp Jump_025_54DB                              ; $53E1: $C3 $DB $54


Jump_025_53E4:
    ld hl, $0020                                  ; $53E4: $21 $20 $00
    call Call_000_30B0                            ; $53E7: $CD $B0 $30
    call Call_000_2CA9                            ; $53EA: $CD $A9 $2C
    jp nc, Jump_025_54DB                          ; $53ED: $D2 $DB $54

    inc hl                                        ; $53F0: $23
    ld [hl], $0A                                  ; $53F1: $36 $0A
    jp Jump_025_54DB                              ; $53F3: $C3 $DB $54


Jump_025_53F6:
    ld hl, $0020                                  ; $53F6: $21 $20 $00
    call Call_000_30B0                            ; $53F9: $CD $B0 $30
    call Call_000_2CA9                            ; $53FC: $CD $A9 $2C
    jp nc, Jump_025_54DB                          ; $53FF: $D2 $DB $54

    inc hl                                        ; $5402: $23
    ld [hl], $0A                                  ; $5403: $36 $0A
    jp Jump_025_54DB                              ; $5405: $C3 $DB $54


Jump_025_5408:
    ld hl, $0020                                  ; $5408: $21 $20 $00
    call Call_000_30B0                            ; $540B: $CD $B0 $30
    call Call_000_2CA9                            ; $540E: $CD $A9 $2C
    jp nc, Jump_025_54DB                          ; $5411: $D2 $DB $54

    inc hl                                        ; $5414: $23
    ld [hl], $14                                  ; $5415: $36 $14
    ld hl, $0404                                  ; $5417: $21 $04 $04
    ld a, $01                                     ; $541A: $3E $01
    call Call_000_34B3                            ; $541C: $CD $B3 $34
    jp Jump_025_54DB                              ; $541F: $C3 $DB $54


Jump_025_5422:
    call Call_000_2CA2                            ; $5422: $CD $A2 $2C
    jr z, jr_025_544C                             ; $5425: $28 $25

    ld a, $11                                     ; $5427: $3E $11
    call Call_000_1360                            ; $5429: $CD $60 $13
    call Call_000_32CC                            ; $542C: $CD $CC $32
    jr c, jr_025_5443                             ; $542F: $38 $12

    jr nz, jr_025_543B                            ; $5431: $20 $08

    ld hl, $0500                                  ; $5433: $21 $00 $05
    call Call_000_2FEB                            ; $5436: $CD $EB $2F
    jr jr_025_5449                                ; $5439: $18 $0E

jr_025_543B:
    ld hl, $0600                                  ; $543B: $21 $00 $06
    call Call_000_2FEB                            ; $543E: $CD $EB $2F
    jr jr_025_5449                                ; $5441: $18 $06

jr_025_5443:
    ld hl, $0700                                  ; $5443: $21 $00 $07
    call Call_000_2FEB                            ; $5446: $CD $EB $2F

jr_025_5449:
    jp Jump_025_54CA                              ; $5449: $C3 $CA $54


jr_025_544C:
    call Call_000_3262                            ; $544C: $CD $62 $32
    jp nc, Jump_025_5484                          ; $544F: $D2 $84 $54

    jp nz, Jump_025_5484                          ; $5452: $C2 $84 $54

    ld a, $1C                                     ; $5455: $3E $1C
    ld h, $01                                     ; $5457: $26 $01
    call Call_000_2D19                            ; $5459: $CD $19 $2D
    call Call_000_32CC                            ; $545C: $CD $CC $32
    jr c, jr_025_5479                             ; $545F: $38 $18

    jr nz, jr_025_546E                            ; $5461: $20 $0B

    ld hl, $020F                                  ; $5463: $21 $0F $02
    ld a, $03                                     ; $5466: $3E $03
    call Call_000_34B3                            ; $5468: $CD $B3 $34
    jp Jump_025_54DE                              ; $546B: $C3 $DE $54


jr_025_546E:
    ld hl, $030F                                  ; $546E: $21 $0F $03
    ld a, $03                                     ; $5471: $3E $03
    call Call_000_34B3                            ; $5473: $CD $B3 $34
    jp Jump_025_54DE                              ; $5476: $C3 $DE $54


jr_025_5479:
    ld hl, $040F                                  ; $5479: $21 $0F $04
    ld a, $03                                     ; $547C: $3E $03
    call Call_000_34B3                            ; $547E: $CD $B3 $34
    jp Jump_025_54DE                              ; $5481: $C3 $DE $54


Jump_025_5484:
    call Call_000_2CA9                            ; $5484: $CD $A9 $2C
    jp nc, Jump_025_54CA                          ; $5487: $D2 $CA $54

    inc hl                                        ; $548A: $23
    ld [hl], $01                                  ; $548B: $36 $01
    ld hl, $030F                                  ; $548D: $21 $0F $03
    ld a, $03                                     ; $5490: $3E $03
    call Call_000_34B3                            ; $5492: $CD $B3 $34
    jp Jump_025_54CA                              ; $5495: $C3 $CA $54


Jump_025_5498:
    ld hl, $0040                                  ; $5498: $21 $40 $00
    call Call_000_30B0                            ; $549B: $CD $B0 $30
    call Call_000_2CA9                            ; $549E: $CD $A9 $2C
    jp nc, Jump_025_54DB                          ; $54A1: $D2 $DB $54

    inc hl                                        ; $54A4: $23
    ld [hl], $14                                  ; $54A5: $36 $14
    jp Jump_025_54DB                              ; $54A7: $C3 $DB $54


Jump_025_54AA:
    call Call_000_2CA2                            ; $54AA: $CD $A2 $2C
    jr z, jr_025_54B8                             ; $54AD: $28 $09

    ld hl, $1000                                  ; $54AF: $21 $00 $10
    call Call_025_59AC                            ; $54B2: $CD $AC $59
    jp Jump_025_54DB                              ; $54B5: $C3 $DB $54


jr_025_54B8:
    ld hl, $0040                                  ; $54B8: $21 $40 $00
    call Call_000_30B0                            ; $54BB: $CD $B0 $30
    call Call_000_2CA9                            ; $54BE: $CD $A9 $2C
    jp nc, Jump_025_54DB                          ; $54C1: $D2 $DB $54

    inc hl                                        ; $54C4: $23
    ld [hl], $0A                                  ; $54C5: $36 $0A
    jp Jump_025_54DB                              ; $54C7: $C3 $DB $54


Jump_025_54CA:
    call Call_000_3069                            ; $54CA: $CD $69 $30
    jp Jump_025_54DB                              ; $54CD: $C3 $DB $54


Jump_025_54D0:
    call Call_000_2CA9                            ; $54D0: $CD $A9 $2C
    jp nc, Jump_025_54DB                          ; $54D3: $D2 $DB $54

    call Call_000_2DB6                            ; $54D6: $CD $B6 $2D
    jr jr_025_54DE                                ; $54D9: $18 $03

Jump_025_54DB:
    call Call_000_2E25                            ; $54DB: $CD $25 $2E

Jump_025_54DE:
jr_025_54DE:
    ret                                           ; $54DE: $C9


    call Call_000_2EE0                            ; $54DF: $CD $E0 $2E
    call Call_000_3517                            ; $54E2: $CD $17 $35
    jp c, Jump_025_5698                           ; $54E5: $DA $98 $56

    ld hl, $0018                                  ; $54E8: $21 $18 $00
    add hl, de                                    ; $54EB: $19
    ld a, [hl]                                    ; $54EC: $7E
    cp $00                                        ; $54ED: $FE $00
    jp z, Jump_025_5527                           ; $54EF: $CA $27 $55

    cp $04                                        ; $54F2: $FE $04
    jp z, Jump_025_554D                           ; $54F4: $CA $4D $55

    cp $08                                        ; $54F7: $FE $08
    jp z, Jump_025_558D                           ; $54F9: $CA $8D $55

    cp $0C                                        ; $54FC: $FE $0C
    jp z, Jump_025_55A4                           ; $54FE: $CA $A4 $55

    cp $10                                        ; $5501: $FE $10
    jp z, Jump_025_55B6                           ; $5503: $CA $B6 $55

    cp $14                                        ; $5506: $FE $14
    jp z, Jump_025_55CE                           ; $5508: $CA $CE $55

    cp $18                                        ; $550B: $FE $18
    jp z, Jump_025_55E9                           ; $550D: $CA $E9 $55

    cp $1C                                        ; $5510: $FE $1C
    jp z, Jump_025_5616                           ; $5512: $CA $16 $56

    cp $20                                        ; $5515: $FE $20
    jp z, Jump_025_563E                           ; $5517: $CA $3E $56

    cp $24                                        ; $551A: $FE $24
    jp z, Jump_025_5660                           ; $551C: $CA $60 $56

    cp $28                                        ; $551F: $FE $28
    jp z, Jump_025_5671                           ; $5521: $CA $71 $56

    jp Jump_025_5695                              ; $5524: $C3 $95 $56


Jump_025_5527:
    call Call_000_2CA9                            ; $5527: $CD $A9 $2C
    jp nc, Jump_025_5695                          ; $552A: $D2 $95 $56

    inc hl                                        ; $552D: $23
    push hl                                       ; $552E: $E5
    call Call_000_32CC                            ; $552F: $CD $CC $32
    jr c, jr_025_553E                             ; $5532: $38 $0A

    jr nz, jr_025_553A                            ; $5534: $20 $04

    ld a, $06                                     ; $5536: $3E $06
    jr jr_025_5540                                ; $5538: $18 $06

jr_025_553A:
    ld a, $09                                     ; $553A: $3E $09
    jr jr_025_5540                                ; $553C: $18 $02

jr_025_553E:
    ld a, $0C                                     ; $553E: $3E $0C

jr_025_5540:
    pop hl                                        ; $5540: $E1
    ld [hl], a                                    ; $5541: $77
    ld hl, $010C                                  ; $5542: $21 $0C $01
    ld a, $80                                     ; $5545: $3E $80
    call Call_000_34B3                            ; $5547: $CD $B3 $34
    jp Jump_025_5695                              ; $554A: $C3 $95 $56


Jump_025_554D:
    call Call_000_2CA2                            ; $554D: $CD $A2 $2C
    jr z, jr_025_5560                             ; $5550: $28 $0E

    ld a, $11                                     ; $5552: $3E $11
    call Call_000_1360                            ; $5554: $CD $60 $13
    ld hl, $0500                                  ; $5557: $21 $00 $05
    call Call_000_2FEB                            ; $555A: $CD $EB $2F
    jp Jump_025_565A                              ; $555D: $C3 $5A $56


jr_025_5560:
    call Call_000_3262                            ; $5560: $CD $62 $32
    jp nc, Jump_025_5573                          ; $5563: $D2 $73 $55

    jp nz, Jump_025_5583                          ; $5566: $C2 $83 $55

    ld a, $08                                     ; $5569: $3E $08
    ld h, $01                                     ; $556B: $26 $01
    call Call_000_2D19                            ; $556D: $CD $19 $2D
    jp Jump_025_5698                              ; $5570: $C3 $98 $56


Jump_025_5573:
    call Call_000_2CA9                            ; $5573: $CD $A9 $2C
    jp nc, Jump_025_565A                          ; $5576: $D2 $5A $56

    ld a, $28                                     ; $5579: $3E $28
    ld h, $14                                     ; $557B: $26 $14
    call Call_000_2D19                            ; $557D: $CD $19 $2D
    jp Jump_025_565A                              ; $5580: $C3 $5A $56


Jump_025_5583:
    ld a, $24                                     ; $5583: $3E $24
    ld h, $14                                     ; $5585: $26 $14
    call Call_000_2D19                            ; $5587: $CD $19 $2D
    jp Jump_025_565A                              ; $558A: $C3 $5A $56


Jump_025_558D:
    ld hl, $0020                                  ; $558D: $21 $20 $00
    call Call_000_30B0                            ; $5590: $CD $B0 $30
    call Call_000_2CA9                            ; $5593: $CD $A9 $2C
    jp nc, Jump_025_5695                          ; $5596: $D2 $95 $56

    ld hl, $0113                                  ; $5599: $21 $13 $01
    ld a, $91                                     ; $559C: $3E $91
    call Call_000_34B3                            ; $559E: $CD $B3 $34
    jp Jump_025_5695                              ; $55A1: $C3 $95 $56


Jump_025_55A4:
    ld hl, $0020                                  ; $55A4: $21 $20 $00
    call Call_000_30B0                            ; $55A7: $CD $B0 $30
    call Call_000_2CA9                            ; $55AA: $CD $A9 $2C
    jp nc, Jump_025_5695                          ; $55AD: $D2 $95 $56

    inc hl                                        ; $55B0: $23
    ld [hl], $14                                  ; $55B1: $36 $14
    jp Jump_025_5695                              ; $55B3: $C3 $95 $56


Jump_025_55B6:
    call Call_000_2CA9                            ; $55B6: $CD $A9 $2C
    jp nc, Jump_025_5695                          ; $55B9: $D2 $95 $56

    inc hl                                        ; $55BC: $23
    ld [hl], $22                                  ; $55BD: $36 $22
    ld hl, $0083                                  ; $55BF: $21 $83 $00
    add hl, bc                                    ; $55C2: $09
    bit 1, [hl]                                   ; $55C3: $CB $4E
    jp z, Jump_025_5695                           ; $55C5: $CA $95 $56

    call Call_000_2DB6                            ; $55C8: $CD $B6 $2D
    jp Jump_025_5698                              ; $55CB: $C3 $98 $56


Jump_025_55CE:
    call Call_000_2CA2                            ; $55CE: $CD $A2 $2C
    jr z, jr_025_55DD                             ; $55D1: $28 $0A

    ld hl, $0099                                  ; $55D3: $21 $99 $00
    add hl, bc                                    ; $55D6: $09
    ld a, [hl]                                    ; $55D7: $7E
    ld hl, $0004                                  ; $55D8: $21 $04 $00
    add hl, de                                    ; $55DB: $19
    ld [hl], a                                    ; $55DC: $77

jr_025_55DD:
    call Call_000_2CA9                            ; $55DD: $CD $A9 $2C
    jp nc, Jump_025_5695                          ; $55E0: $D2 $95 $56

    inc hl                                        ; $55E3: $23
    ld [hl], $01                                  ; $55E4: $36 $01
    jp Jump_025_5695                              ; $55E6: $C3 $95 $56


Jump_025_55E9:
    call Call_000_2CA9                            ; $55E9: $CD $A9 $2C
    jp nc, Jump_025_5695                          ; $55EC: $D2 $95 $56

    inc hl                                        ; $55EF: $23
    ld [hl], $01                                  ; $55F0: $36 $01
    call Call_000_32CC                            ; $55F2: $CD $CC $32
    jr c, jr_025_5601                             ; $55F5: $38 $0A

    jr nz, jr_025_55FD                            ; $55F7: $20 $04

    ld a, $02                                     ; $55F9: $3E $02
    jr jr_025_5603                                ; $55FB: $18 $06

jr_025_55FD:
    ld a, $03                                     ; $55FD: $3E $03
    jr jr_025_5603                                ; $55FF: $18 $02

jr_025_5601:
    ld a, $04                                     ; $5601: $3E $04

jr_025_5603:
    ld hl, $009C                                  ; $5603: $21 $9C $00
    add hl, bc                                    ; $5606: $09
    ld [hl], a                                    ; $5607: $77
    ld hl, $0209                                  ; $5608: $21 $09 $02
    ld a, $13                                     ; $560B: $3E $13
    call Call_000_34B3                            ; $560D: $CD $B3 $34
    call Call_000_34F1                            ; $5610: $CD $F1 $34
    jp Jump_025_5695                              ; $5613: $C3 $95 $56


Jump_025_5616:
    call Call_000_2CA2                            ; $5616: $CD $A2 $2C
    jp z, Jump_025_5624                           ; $5619: $CA $24 $56

    call Call_025_5966                            ; $561C: $CD $66 $59
    ld a, $05                                     ; $561F: $3E $05
    call Call_000_3963                            ; $5621: $CD $63 $39

Jump_025_5624:
    call Call_000_2CA9                            ; $5624: $CD $A9 $2C
    jp nc, Jump_025_5695                          ; $5627: $D2 $95 $56

    inc hl                                        ; $562A: $23
    ld [hl], $32                                  ; $562B: $36 $32
    ld hl, $009C                                  ; $562D: $21 $9C $00
    add hl, bc                                    ; $5630: $09
    dec [hl]                                      ; $5631: $35
    jp z, Jump_025_5695                           ; $5632: $CA $95 $56

    ld hl, $001D                                  ; $5635: $21 $1D $00
    add hl, de                                    ; $5638: $19
    ld [hl], $01                                  ; $5639: $36 $01
    jp Jump_025_5695                              ; $563B: $C3 $95 $56


Jump_025_563E:
    call Call_000_2CA9                            ; $563E: $CD $A9 $2C
    jp nc, Jump_025_5695                          ; $5641: $D2 $95 $56

    inc hl                                        ; $5644: $23
    ld [hl], $14                                  ; $5645: $36 $14
    ld hl, $009C                                  ; $5647: $21 $9C $00
    add hl, bc                                    ; $564A: $09
    ld a, [hl]                                    ; $564B: $7E
    or a                                          ; $564C: $B7
    jp z, Jump_025_5695                           ; $564D: $CA $95 $56

    ld a, $1C                                     ; $5650: $3E $1C
    ld h, $01                                     ; $5652: $26 $01
    call Call_000_2D19                            ; $5654: $CD $19 $2D
    jp Jump_025_5695                              ; $5657: $C3 $95 $56


Jump_025_565A:
    call Call_000_3069                            ; $565A: $CD $69 $30
    jp Jump_025_5695                              ; $565D: $C3 $95 $56


Jump_025_5660:
    ld hl, $0080                                  ; $5660: $21 $80 $00
    call Call_000_30B0                            ; $5663: $CD $B0 $30
    call Call_000_2CA9                            ; $5666: $CD $A9 $2C
    jp nc, Jump_025_5695                          ; $5669: $D2 $95 $56

    call Call_000_2DB6                            ; $566C: $CD $B6 $2D
    jr jr_025_5698                                ; $566F: $18 $27

Jump_025_5671:
    ld hl, $0080                                  ; $5671: $21 $80 $00
    call Call_000_30B0                            ; $5674: $CD $B0 $30
    call Call_000_326C                            ; $5677: $CD $6C $32
    jp nc, Jump_025_568A                          ; $567A: $D2 $8A $56

    jp nz, Jump_025_568A                          ; $567D: $C2 $8A $56

    ld a, $08                                     ; $5680: $3E $08
    ld h, $01                                     ; $5682: $26 $01
    call Call_000_2D19                            ; $5684: $CD $19 $2D
    jp Jump_025_5698                              ; $5687: $C3 $98 $56


Jump_025_568A:
    call Call_000_2CA9                            ; $568A: $CD $A9 $2C
    jp nc, Jump_025_5695                          ; $568D: $D2 $95 $56

    call Call_000_2DB6                            ; $5690: $CD $B6 $2D
    jr jr_025_5698                                ; $5693: $18 $03

Jump_025_5695:
    call Call_000_2E25                            ; $5695: $CD $25 $2E

Jump_025_5698:
jr_025_5698:
    ret                                           ; $5698: $C9


    call Call_000_2EE0                            ; $5699: $CD $E0 $2E
    call Call_000_3517                            ; $569C: $CD $17 $35
    jp c, Jump_025_5736                           ; $569F: $DA $36 $57

    ld hl, $0018                                  ; $56A2: $21 $18 $00
    add hl, de                                    ; $56A5: $19
    ld a, [hl]                                    ; $56A6: $7E
    cp $00                                        ; $56A7: $FE $00
    jp z, Jump_025_56C8                           ; $56A9: $CA $C8 $56

    cp $04                                        ; $56AC: $FE $04
    jp z, Jump_025_56EC                           ; $56AE: $CA $EC $56

    cp $08                                        ; $56B1: $FE $08
    jp z, Jump_025_56FB                           ; $56B3: $CA $FB $56

    cp $0C                                        ; $56B6: $FE $0C
    jp z, Jump_025_570A                           ; $56B8: $CA $0A $57

    cp $10                                        ; $56BB: $FE $10
    jp z, Jump_025_571C                           ; $56BD: $CA $1C $57

    cp $14                                        ; $56C0: $FE $14
    jp z, Jump_025_5728                           ; $56C2: $CA $28 $57

    jp Jump_025_5733                              ; $56C5: $C3 $33 $57


Jump_025_56C8:
    call Call_000_2CA2                            ; $56C8: $CD $A2 $2C
    jp z, Jump_025_56E0                           ; $56CB: $CA $E0 $56

    ld hl, $0031                                  ; $56CE: $21 $31 $00
    add hl, bc                                    ; $56D1: $09
    ld [hl], $01                                  ; $56D2: $36 $01
    ld hl, $FEDC                                  ; $56D4: $21 $DC $FE
    call Call_025_5A00                            ; $56D7: $CD $00 $5A
    ld hl, $0021                                  ; $56DA: $21 $21 $00
    add hl, bc                                    ; $56DD: $09
    res 7, [hl]                                   ; $56DE: $CB $BE

Jump_025_56E0:
    call Call_000_2CA9                            ; $56E0: $CD $A9 $2C
    jp nc, Jump_025_5733                          ; $56E3: $D2 $33 $57

    inc hl                                        ; $56E6: $23
    ld [hl], $03                                  ; $56E7: $36 $03
    jp Jump_025_5733                              ; $56E9: $C3 $33 $57


Jump_025_56EC:
    call Call_000_2CA2                            ; $56EC: $CD $A2 $2C
    jp z, Jump_025_56F8                           ; $56EF: $CA $F8 $56

    ld hl, $F0E8                                  ; $56F2: $21 $E8 $F0
    call Call_025_5A00                            ; $56F5: $CD $00 $5A

Jump_025_56F8:
    jp Jump_025_5733                              ; $56F8: $C3 $33 $57


Jump_025_56FB:
    call Call_000_2CA2                            ; $56FB: $CD $A2 $2C
    jp z, Jump_025_5707                           ; $56FE: $CA $07 $57

    ld hl, $08D8                                  ; $5701: $21 $D8 $08
    call Call_025_5A00                            ; $5704: $CD $00 $5A

Jump_025_5707:
    jp Jump_025_5733                              ; $5707: $C3 $33 $57


Jump_025_570A:
    call Call_000_2CA2                            ; $570A: $CD $A2 $2C
    jp z, Jump_025_5733                           ; $570D: $CA $33 $57

    call Call_025_5A47                            ; $5710: $CD $47 $5A
    ld hl, $001D                                  ; $5713: $21 $1D $00
    add hl, de                                    ; $5716: $19
    ld [hl], $50                                  ; $5717: $36 $50
    jp Jump_025_5733                              ; $5719: $C3 $33 $57


Jump_025_571C:
    call Call_000_2CA9                            ; $571C: $CD $A9 $2C
    jp nc, Jump_025_5733                          ; $571F: $D2 $33 $57

    inc hl                                        ; $5722: $23
    ld [hl], $28                                  ; $5723: $36 $28
    jp Jump_025_5733                              ; $5725: $C3 $33 $57


Jump_025_5728:
    call Call_000_2CA9                            ; $5728: $CD $A9 $2C
    jp nc, Jump_025_5733                          ; $572B: $D2 $33 $57

    call Call_000_2DB6                            ; $572E: $CD $B6 $2D
    jr jr_025_5736                                ; $5731: $18 $03

Jump_025_5733:
    jp Jump_000_2E25                              ; $5733: $C3 $25 $2E


Jump_025_5736:
jr_025_5736:
    ret                                           ; $5736: $C9


    call Call_000_2EE0                            ; $5737: $CD $E0 $2E
    call Call_000_3517                            ; $573A: $CD $17 $35
    jp c, Jump_025_585F                           ; $573D: $DA $5F $58

    ld hl, $0018                                  ; $5740: $21 $18 $00
    add hl, de                                    ; $5743: $19
    ld a, [hl]                                    ; $5744: $7E
    cp $00                                        ; $5745: $FE $00
    jp z, Jump_025_576B                           ; $5747: $CA $6B $57

    cp $04                                        ; $574A: $FE $04
    jp z, Jump_025_5780                           ; $574C: $CA $80 $57

    cp $08                                        ; $574F: $FE $08
    jp z, Jump_025_5783                           ; $5751: $CA $83 $57

    cp $0C                                        ; $5754: $FE $0C
    jp z, Jump_025_578F                           ; $5756: $CA $8F $57

    cp $10                                        ; $5759: $FE $10
    jp z, Jump_025_57CC                           ; $575B: $CA $CC $57

    cp $14                                        ; $575E: $FE $14
    jp z, Jump_025_57D8                           ; $5760: $CA $D8 $57

    cp $18                                        ; $5763: $FE $18
    jp z, Jump_025_5833                           ; $5765: $CA $33 $58

    jp Jump_025_585C                              ; $5768: $C3 $5C $58


Jump_025_576B:
    call Call_000_2CA2                            ; $576B: $CD $A2 $2C
    jp z, Jump_025_5777                           ; $576E: $CA $77 $57

    ld hl, $0031                                  ; $5771: $21 $31 $00
    add hl, bc                                    ; $5774: $09
    ld [hl], $01                                  ; $5775: $36 $01

Jump_025_5777:
    call Call_000_2CA9                            ; $5777: $CD $A9 $2C
    jp nc, Jump_025_585C                          ; $577A: $D2 $5C $58

    inc hl                                        ; $577D: $23
    ld [hl], $01                                  ; $577E: $36 $01

Jump_025_5780:
    jp Jump_025_585C                              ; $5780: $C3 $5C $58


Jump_025_5783:
    call Call_000_2CA9                            ; $5783: $CD $A9 $2C
    jp nc, Jump_025_585C                          ; $5786: $D2 $5C $58

    inc hl                                        ; $5789: $23
    ld [hl], $0A                                  ; $578A: $36 $0A
    jp Jump_025_585C                              ; $578C: $C3 $5C $58


Jump_025_578F:
    call Call_000_2CA2                            ; $578F: $CD $A2 $2C
    jp z, Jump_025_57A6                           ; $5792: $CA $A6 $57

    ld a, $14                                     ; $5795: $3E $14
    call Call_000_1360                            ; $5797: $CD $60 $13
    ld hl, $0021                                  ; $579A: $21 $21 $00
    add hl, bc                                    ; $579D: $09
    res 7, [hl]                                   ; $579E: $CB $BE
    ld hl, $0600                                  ; $57A0: $21 $00 $06
    call Call_000_2FEB                            ; $57A3: $CD $EB $2F

Jump_025_57A6:
    call Call_000_3069                            ; $57A6: $CD $69 $30
    call Call_000_3262                            ; $57A9: $CD $62 $32
    jp nc, Jump_025_57BC                          ; $57AC: $D2 $BC $57

    jp nz, Jump_025_57C2                          ; $57AF: $C2 $C2 $57

    ld a, $10                                     ; $57B2: $3E $10
    ld h, $01                                     ; $57B4: $26 $01
    call Call_000_2D19                            ; $57B6: $CD $19 $2D
    jp Jump_025_585F                              ; $57B9: $C3 $5F $58


Jump_025_57BC:
    call Call_000_2CA9                            ; $57BC: $CD $A9 $2C
    jp nc, Jump_025_585C                          ; $57BF: $D2 $5C $58

Jump_025_57C2:
    ld a, $18                                     ; $57C2: $3E $18
    ld h, $14                                     ; $57C4: $26 $14
    call Call_000_2D19                            ; $57C6: $CD $19 $2D
    jp Jump_025_585C                              ; $57C9: $C3 $5C $58


Jump_025_57CC:
    call Call_000_2CA9                            ; $57CC: $CD $A9 $2C
    jp nc, Jump_025_585C                          ; $57CF: $D2 $5C $58

    inc hl                                        ; $57D2: $23
    ld [hl], $02                                  ; $57D3: $36 $02
    jp Jump_025_585C                              ; $57D5: $C3 $5C $58


Jump_025_57D8:
    call Call_000_2CA2                            ; $57D8: $CD $A2 $2C
    jp z, Jump_025_57F1                           ; $57DB: $CA $F1 $57

    ld a, $07                                     ; $57DE: $3E $07
    call Call_000_3963                            ; $57E0: $CD $63 $39
    ld hl, $0108                                  ; $57E3: $21 $08 $01
    ld a, $23                                     ; $57E6: $3E $23
    call Call_000_34C4                            ; $57E8: $CD $C4 $34
    ld hl, $0800                                  ; $57EB: $21 $00 $08
    call Call_025_59AC                            ; $57EE: $CD $AC $59

Jump_025_57F1:
    call Call_000_2CA9                            ; $57F1: $CD $A9 $2C
    jp nc, Jump_025_585C                          ; $57F4: $D2 $5C $58

    ld hl, $0060                                  ; $57F7: $21 $60 $00
    add hl, bc                                    ; $57FA: $09
    ld a, [hl]                                    ; $57FB: $7E
    cp $02                                        ; $57FC: $FE $02
    jr c, jr_025_5802                             ; $57FE: $38 $02

    ld [hl], $02                                  ; $5800: $36 $02

jr_025_5802:
    push de                                       ; $5802: $D5
    ld hl, $002D                                  ; $5803: $21 $2D $00
    add hl, bc                                    ; $5806: $09
    ld a, [hl]                                    ; $5807: $7E
    or a                                          ; $5808: $B7
    jr nz, jr_025_5810                            ; $5809: $20 $05

    ld de, $DA00                                  ; $580B: $11 $00 $DA
    jr jr_025_5813                                ; $580E: $18 $03

jr_025_5810:
    ld de, $D900                                  ; $5810: $11 $00 $D9

jr_025_5813:
    ld hl, $0060                                  ; $5813: $21 $60 $00
    add hl, de                                    ; $5816: $19
    ld a, [hl]                                    ; $5817: $7E
    cp $01                                        ; $5818: $FE $01
    jr c, jr_025_581E                             ; $581A: $38 $02

    ld [hl], $01                                  ; $581C: $36 $01

jr_025_581E:
    pop de                                        ; $581E: $D1
    ld a, $5E                                     ; $581F: $3E $5E
    call Call_000_2E6E                            ; $5821: $CD $6E $2E
    ld hl, $FD00                                  ; $5824: $21 $00 $FD
    call Call_000_2FEB                            ; $5827: $CD $EB $2F
    ld hl, $FB00                                  ; $582A: $21 $00 $FB
    call Call_000_305D                            ; $582D: $CD $5D $30
    jp Jump_025_585F                              ; $5830: $C3 $5F $58


Jump_025_5833:
    call Call_000_326C                            ; $5833: $CD $6C $32
    jp nc, Jump_025_5846                          ; $5836: $D2 $46 $58

    jp nz, Jump_025_5846                          ; $5839: $C2 $46 $58

    ld a, $10                                     ; $583C: $3E $10
    ld h, $01                                     ; $583E: $26 $01
    call Call_000_2D19                            ; $5840: $CD $19 $2D
    jp Jump_025_585F                              ; $5843: $C3 $5F $58


Jump_025_5846:
    call Call_000_2CA9                            ; $5846: $CD $A9 $2C
    jp nc, Jump_025_585C                          ; $5849: $D2 $5C $58

    call Call_000_2DB6                            ; $584C: $CD $B6 $2D
    jr jr_025_585F                                ; $584F: $18 $0E

    call Call_000_2CA9                            ; $5851: $CD $A9 $2C
    jp nc, Jump_025_585C                          ; $5854: $D2 $5C $58

    call Call_000_2DB6                            ; $5857: $CD $B6 $2D
    jr jr_025_585F                                ; $585A: $18 $03

Jump_025_585C:
    call Call_000_2E25                            ; $585C: $CD $25 $2E

Jump_025_585F:
jr_025_585F:
    ret                                           ; $585F: $C9


Call_025_5860:
    ld a, $09                                     ; $5860: $3E $09
    call Call_000_1360                            ; $5862: $CD $60 $13
    push bc                                       ; $5865: $C5
    push de                                       ; $5866: $D5
    ld hl, $0030                                  ; $5867: $21 $30 $00
    add hl, bc                                    ; $586A: $09
    ld a, [hl]                                    ; $586B: $7E
    or a                                          ; $586C: $B7
    jr nz, jr_025_5872                            ; $586D: $20 $03

    xor a                                         ; $586F: $AF
    jr jr_025_5873                                ; $5870: $18 $01

jr_025_5872:
    scf                                           ; $5872: $37

jr_025_5873:
    ld hl, $0022                                  ; $5873: $21 $22 $00
    push af                                       ; $5876: $F5
    add hl, bc                                    ; $5877: $09
    pop af                                        ; $5878: $F1
    ld a, [hl]                                    ; $5879: $7E
    push af                                       ; $587A: $F5
    call Call_000_25D1                            ; $587B: $CD $D1 $25
    ld hl, $0021                                  ; $587E: $21 $21 $00
    add hl, de                                    ; $5881: $19
    ld [hl], $25                                  ; $5882: $36 $25
    inc hl                                        ; $5884: $23
    ld [hl], $9C                                  ; $5885: $36 $9C
    inc hl                                        ; $5887: $23
    ld [hl], $5A                                  ; $5888: $36 $5A
    ld hl, $0011                                  ; $588A: $21 $11 $00
    add hl, de                                    ; $588D: $19
    ld [hl], $02                                  ; $588E: $36 $02
    inc hl                                        ; $5890: $23
    ld [hl], $CE                                  ; $5891: $36 $CE
    inc hl                                        ; $5893: $23
    ld [hl], $64                                  ; $5894: $36 $64
    inc hl                                        ; $5896: $23
    ld [hl], $00                                  ; $5897: $36 $00
    ld hl, $001C                                  ; $5899: $21 $1C $00
    add hl, de                                    ; $589C: $19
    ld [hl], $00                                  ; $589D: $36 $00
    inc hl                                        ; $589F: $23
    ld [hl], $00                                  ; $58A0: $36 $00
    ld hl, $0029                                  ; $58A2: $21 $29 $00
    add hl, de                                    ; $58A5: $19
    ld [hl], $00                                  ; $58A6: $36 $00
    call Call_000_2614                            ; $58A8: $CD $14 $26
    ld hl, $1800                                  ; $58AB: $21 $00 $18
    call Call_000_2F79                            ; $58AE: $CD $79 $2F
    ld hl, $E800                                  ; $58B1: $21 $00 $E8
    call Call_000_2F42                            ; $58B4: $CD $42 $2F
    pop af                                        ; $58B7: $F1
    jr c, jr_025_58DA                             ; $58B8: $38 $20

    bit 1, a                                      ; $58BA: $CB $4F
    jr nz, jr_025_58CC                            ; $58BC: $20 $0E

    ld hl, $0100                                  ; $58BE: $21 $00 $01
    call Call_000_2FEB                            ; $58C1: $CD $EB $2F
    ld hl, $FA00                                  ; $58C4: $21 $00 $FA
    call Call_000_305D                            ; $58C7: $CD $5D $30
    jr jr_025_58E6                                ; $58CA: $18 $1A

jr_025_58CC:
    ld hl, $0280                                  ; $58CC: $21 $80 $02
    call Call_000_2FEB                            ; $58CF: $CD $EB $2F
    ld hl, $FC00                                  ; $58D2: $21 $00 $FC
    call Call_000_305D                            ; $58D5: $CD $5D $30
    jr jr_025_58E6                                ; $58D8: $18 $0C

jr_025_58DA:
    ld hl, $0400                                  ; $58DA: $21 $00 $04
    call Call_000_2FEB                            ; $58DD: $CD $EB $2F
    ld hl, $FD00                                  ; $58E0: $21 $00 $FD
    call Call_000_305D                            ; $58E3: $CD $5D $30

jr_025_58E6:
    pop de                                        ; $58E6: $D1
    pop bc                                        ; $58E7: $C1
    ret                                           ; $58E8: $C9


Call_025_58E9:
    ld a, $BD                                     ; $58E9: $3E $BD
    call Call_000_1360                            ; $58EB: $CD $60 $13
    push bc                                       ; $58EE: $C5
    push de                                       ; $58EF: $D5
    ld hl, $0030                                  ; $58F0: $21 $30 $00
    add hl, bc                                    ; $58F3: $09
    ld a, [hl]                                    ; $58F4: $7E
    or a                                          ; $58F5: $B7
    jr nz, jr_025_58FB                            ; $58F6: $20 $03

    xor a                                         ; $58F8: $AF
    jr jr_025_58FC                                ; $58F9: $18 $01

jr_025_58FB:
    scf                                           ; $58FB: $37

jr_025_58FC:
    ld hl, $0022                                  ; $58FC: $21 $22 $00
    push af                                       ; $58FF: $F5
    add hl, bc                                    ; $5900: $09
    pop af                                        ; $5901: $F1
    ld a, [hl]                                    ; $5902: $7E
    push af                                       ; $5903: $F5
    call Call_000_25D1                            ; $5904: $CD $D1 $25
    ld hl, $0021                                  ; $5907: $21 $21 $00
    add hl, de                                    ; $590A: $19
    ld [hl], $24                                  ; $590B: $36 $24
    inc hl                                        ; $590D: $23
    ld [hl], $A2                                  ; $590E: $36 $A2
    inc hl                                        ; $5910: $23
    ld [hl], $49                                  ; $5911: $36 $49
    ld hl, $0011                                  ; $5913: $21 $11 $00
    add hl, de                                    ; $5916: $19
    ld [hl], $02                                  ; $5917: $36 $02
    inc hl                                        ; $5919: $23
    ld [hl], $76                                  ; $591A: $36 $76
    inc hl                                        ; $591C: $23
    ld [hl], $65                                  ; $591D: $36 $65
    inc hl                                        ; $591F: $23
    ld [hl], $00                                  ; $5920: $36 $00
    ld hl, $001C                                  ; $5922: $21 $1C $00
    add hl, de                                    ; $5925: $19
    ld [hl], $00                                  ; $5926: $36 $00
    inc hl                                        ; $5928: $23
    ld [hl], $00                                  ; $5929: $36 $00
    ld hl, $0029                                  ; $592B: $21 $29 $00
    add hl, de                                    ; $592E: $19
    ld [hl], $00                                  ; $592F: $36 $00
    call Call_000_2614                            ; $5931: $CD $14 $26
    ld hl, $1800                                  ; $5934: $21 $00 $18
    call Call_000_2F79                            ; $5937: $CD $79 $2F
    ld hl, $E800                                  ; $593A: $21 $00 $E8
    call Call_000_2F42                            ; $593D: $CD $42 $2F
    pop af                                        ; $5940: $F1
    jr c, jr_025_5957                             ; $5941: $38 $14

    bit 1, a                                      ; $5943: $CB $4F
    jr nz, jr_025_594F                            ; $5945: $20 $08

    ld hl, $0200                                  ; $5947: $21 $00 $02
    call Call_000_2FEB                            ; $594A: $CD $EB $2F
    jr jr_025_595D                                ; $594D: $18 $0E

jr_025_594F:
    ld hl, $0300                                  ; $594F: $21 $00 $03
    call Call_000_2FEB                            ; $5952: $CD $EB $2F
    jr jr_025_595D                                ; $5955: $18 $06

jr_025_5957:
    ld hl, $0400                                  ; $5957: $21 $00 $04
    call Call_000_2FEB                            ; $595A: $CD $EB $2F

jr_025_595D:
    ld hl, $0000                                  ; $595D: $21 $00 $00
    call Call_000_305D                            ; $5960: $CD $5D $30
    pop de                                        ; $5963: $D1
    pop bc                                        ; $5964: $C1
    ret                                           ; $5965: $C9


Call_025_5966:
    ld a, $14                                     ; $5966: $3E $14
    call Call_000_1360                            ; $5968: $CD $60 $13
    push bc                                       ; $596B: $C5
    push de                                       ; $596C: $D5
    call Call_000_25D1                            ; $596D: $CD $D1 $25
    ld hl, $0021                                  ; $5970: $21 $21 $00
    add hl, de                                    ; $5973: $19
    ld [hl], $25                                  ; $5974: $36 $25
    inc hl                                        ; $5976: $23
    ld [hl], $FF                                  ; $5977: $36 $FF
    inc hl                                        ; $5979: $23
    ld [hl], $5B                                  ; $597A: $36 $5B
    ld hl, $0011                                  ; $597C: $21 $11 $00
    add hl, de                                    ; $597F: $19
    ld [hl], $02                                  ; $5980: $36 $02
    inc hl                                        ; $5982: $23
    ld [hl], $9E                                  ; $5983: $36 $9E
    inc hl                                        ; $5985: $23
    ld [hl], $65                                  ; $5986: $36 $65
    inc hl                                        ; $5988: $23
    ld [hl], $00                                  ; $5989: $36 $00
    ld hl, $001C                                  ; $598B: $21 $1C $00
    add hl, de                                    ; $598E: $19
    ld [hl], $03                                  ; $598F: $36 $03
    inc hl                                        ; $5991: $23
    ld [hl], $03                                  ; $5992: $36 $03
    ld hl, $0029                                  ; $5994: $21 $29 $00
    add hl, de                                    ; $5997: $19
    ld [hl], $00                                  ; $5998: $36 $00
    call Call_000_2614                            ; $599A: $CD $14 $26
    ld hl, $FA00                                  ; $599D: $21 $00 $FA
    call Call_000_2F79                            ; $59A0: $CD $79 $2F
    ld hl, $D100                                  ; $59A3: $21 $00 $D1
    call Call_000_2F42                            ; $59A6: $CD $42 $2F
    pop de                                        ; $59A9: $D1
    pop bc                                        ; $59AA: $C1
    ret                                           ; $59AB: $C9


Call_025_59AC:
    ld a, $14                                     ; $59AC: $3E $14
    call Call_000_1360                            ; $59AE: $CD $60 $13
    push bc                                       ; $59B1: $C5
    push de                                       ; $59B2: $D5
    push hl                                       ; $59B3: $E5
    call Call_000_25D1                            ; $59B4: $CD $D1 $25
    jr jr_025_59C4                                ; $59B7: $18 $0B

    ld a, $14                                     ; $59B9: $3E $14
    call Call_000_1360                            ; $59BB: $CD $60 $13
    push bc                                       ; $59BE: $C5
    push de                                       ; $59BF: $D5
    push hl                                       ; $59C0: $E5
    call Call_000_25E1                            ; $59C1: $CD $E1 $25

jr_025_59C4:
    ld hl, $0021                                  ; $59C4: $21 $21 $00
    add hl, de                                    ; $59C7: $19
    ld [hl], $25                                  ; $59C8: $36 $25
    inc hl                                        ; $59CA: $23
    ld [hl], $FF                                  ; $59CB: $36 $FF
    inc hl                                        ; $59CD: $23
    ld [hl], $5B                                  ; $59CE: $36 $5B
    ld hl, $0011                                  ; $59D0: $21 $11 $00
    add hl, de                                    ; $59D3: $19
    ld [hl], $02                                  ; $59D4: $36 $02
    inc hl                                        ; $59D6: $23
    ld [hl], $82                                  ; $59D7: $36 $82
    inc hl                                        ; $59D9: $23
    ld [hl], $65                                  ; $59DA: $36 $65
    inc hl                                        ; $59DC: $23
    ld [hl], $00                                  ; $59DD: $36 $00
    ld hl, $001C                                  ; $59DF: $21 $1C $00
    add hl, de                                    ; $59E2: $19
    ld [hl], $03                                  ; $59E3: $36 $03
    inc hl                                        ; $59E5: $23
    ld [hl], $03                                  ; $59E6: $36 $03
    ld hl, $0029                                  ; $59E8: $21 $29 $00
    add hl, de                                    ; $59EB: $19
    ld [hl], $00                                  ; $59EC: $36 $00
    ld hl, $0108                                  ; $59EE: $21 $08 $01
    ld a, $33                                     ; $59F1: $3E $33
    call Call_000_34E0                            ; $59F3: $CD $E0 $34
    call Call_000_2614                            ; $59F6: $CD $14 $26
    pop hl                                        ; $59F9: $E1
    call Call_000_2F79                            ; $59FA: $CD $79 $2F
    pop de                                        ; $59FD: $D1
    pop bc                                        ; $59FE: $C1
    ret                                           ; $59FF: $C9


Call_025_5A00:
    push bc                                       ; $5A00: $C5
    push de                                       ; $5A01: $D5
    push hl                                       ; $5A02: $E5
    call Call_000_25D1                            ; $5A03: $CD $D1 $25
    ld hl, $0021                                  ; $5A06: $21 $21 $00
    add hl, de                                    ; $5A09: $19
    ld [hl], $25                                  ; $5A0A: $36 $25
    inc hl                                        ; $5A0C: $23
    ld [hl], $EA                                  ; $5A0D: $36 $EA
    inc hl                                        ; $5A0F: $23
    ld [hl], $5A                                  ; $5A10: $36 $5A
    ld hl, $0011                                  ; $5A12: $21 $11 $00
    add hl, de                                    ; $5A15: $19
    ld [hl], $02                                  ; $5A16: $36 $02
    inc hl                                        ; $5A18: $23
    ld [hl], $7C                                  ; $5A19: $36 $7C
    inc hl                                        ; $5A1B: $23
    ld [hl], $65                                  ; $5A1C: $36 $65
    inc hl                                        ; $5A1E: $23
    ld [hl], $00                                  ; $5A1F: $36 $00
    ld hl, $001C                                  ; $5A21: $21 $1C $00
    add hl, de                                    ; $5A24: $19
    ld [hl], $00                                  ; $5A25: $36 $00
    inc hl                                        ; $5A27: $23
    ld [hl], $00                                  ; $5A28: $36 $00
    ld hl, $0029                                  ; $5A2A: $21 $29 $00
    add hl, de                                    ; $5A2D: $19
    ld [hl], $00                                  ; $5A2E: $36 $00
    inc hl                                        ; $5A30: $23
    ld [hl], $01                                  ; $5A31: $36 $01
    call Call_000_2614                            ; $5A33: $CD $14 $26
    pop hl                                        ; $5A36: $E1
    push hl                                       ; $5A37: $E5
    ld l, $00                                     ; $5A38: $2E $00
    call Call_000_2F79                            ; $5A3A: $CD $79 $2F
    pop hl                                        ; $5A3D: $E1
    ld h, l                                       ; $5A3E: $65
    ld l, $00                                     ; $5A3F: $2E $00
    call Call_000_2F42                            ; $5A41: $CD $42 $2F
    pop de                                        ; $5A44: $D1
    pop bc                                        ; $5A45: $C1
    ret                                           ; $5A46: $C9


Call_025_5A47:
    ld a, $09                                     ; $5A47: $3E $09
    call Call_000_1360                            ; $5A49: $CD $60 $13
    push bc                                       ; $5A4C: $C5
    push de                                       ; $5A4D: $D5
    call Call_000_25D1                            ; $5A4E: $CD $D1 $25
    ld hl, $0021                                  ; $5A51: $21 $21 $00
    add hl, de                                    ; $5A54: $19
    ld [hl], $25                                  ; $5A55: $36 $25
    inc hl                                        ; $5A57: $23
    ld [hl], $EA                                  ; $5A58: $36 $EA
    inc hl                                        ; $5A5A: $23
    ld [hl], $5A                                  ; $5A5B: $36 $5A
    ld hl, $0011                                  ; $5A5D: $21 $11 $00
    add hl, de                                    ; $5A60: $19
    ld [hl], $02                                  ; $5A61: $36 $02
    inc hl                                        ; $5A63: $23
    ld [hl], $7C                                  ; $5A64: $36 $7C
    inc hl                                        ; $5A66: $23
    ld [hl], $65                                  ; $5A67: $36 $65
    inc hl                                        ; $5A69: $23
    ld [hl], $00                                  ; $5A6A: $36 $00
    ld hl, $001C                                  ; $5A6C: $21 $1C $00
    add hl, de                                    ; $5A6F: $19
    ld [hl], $00                                  ; $5A70: $36 $00
    inc hl                                        ; $5A72: $23
    ld [hl], $00                                  ; $5A73: $36 $00
    ld hl, $0029                                  ; $5A75: $21 $29 $00
    add hl, de                                    ; $5A78: $19
    ld [hl], $00                                  ; $5A79: $36 $00
    inc hl                                        ; $5A7B: $23
    ld [hl], $00                                  ; $5A7C: $36 $00
    call Call_000_2614                            ; $5A7E: $CD $14 $26
    ld hl, $0800                                  ; $5A81: $21 $00 $08
    call Call_000_2F79                            ; $5A84: $CD $79 $2F
    ld hl, $D800                                  ; $5A87: $21 $00 $D8
    call Call_000_2F42                            ; $5A8A: $CD $42 $2F
    ld hl, $0500                                  ; $5A8D: $21 $00 $05
    call Call_000_2FEB                            ; $5A90: $CD $EB $2F
    ld hl, $FC00                                  ; $5A93: $21 $00 $FC
    call Call_000_305D                            ; $5A96: $CD $5D $30
    pop de                                        ; $5A99: $D1
    pop bc                                        ; $5A9A: $C1
    ret                                           ; $5A9B: $C9


    ld hl, $0000                                  ; $5A9C: $21 $00 $00
    call Call_000_26F3                            ; $5A9F: $CD $F3 $26
    ld hl, $0060                                  ; $5AA2: $21 $60 $00
    call Call_000_315D                            ; $5AA5: $CD $5D $31
    jp c, Jump_025_5AAD                           ; $5AA8: $DA $AD $5A

    jr jr_025_5AE9                                ; $5AAB: $18 $3C

Jump_025_5AAD:
    ld hl, $0408                                  ; $5AAD: $21 $08 $04
    ld a, $23                                     ; $5AB0: $3E $23
    call Call_000_34E0                            ; $5AB2: $CD $E0 $34
    ld a, $14                                     ; $5AB5: $3E $14
    call Call_000_1360                            ; $5AB7: $CD $60 $13
    ld hl, $0021                                  ; $5ABA: $21 $21 $00
    add hl, de                                    ; $5ABD: $19
    ld [hl], $25                                  ; $5ABE: $36 $25
    inc hl                                        ; $5AC0: $23
    ld [hl], $FF                                  ; $5AC1: $36 $FF
    inc hl                                        ; $5AC3: $23
    ld [hl], $5B                                  ; $5AC4: $36 $5B
    ld hl, $0011                                  ; $5AC6: $21 $11 $00
    add hl, de                                    ; $5AC9: $19
    ld [hl], $02                                  ; $5ACA: $36 $02
    inc hl                                        ; $5ACC: $23
    ld [hl], $82                                  ; $5ACD: $36 $82
    inc hl                                        ; $5ACF: $23
    ld [hl], $65                                  ; $5AD0: $36 $65
    inc hl                                        ; $5AD2: $23
    ld [hl], $00                                  ; $5AD3: $36 $00
    ld hl, $001C                                  ; $5AD5: $21 $1C $00
    add hl, de                                    ; $5AD8: $19
    ld [hl], $03                                  ; $5AD9: $36 $03
    inc hl                                        ; $5ADB: $23
    ld [hl], $03                                  ; $5ADC: $36 $03
    ld hl, $0029                                  ; $5ADE: $21 $29 $00
    add hl, de                                    ; $5AE1: $19
    ld [hl], $00                                  ; $5AE2: $36 $00
    jr jr_025_5AE9                                ; $5AE4: $18 $03

    call Call_000_27F5                            ; $5AE6: $CD $F5 $27

jr_025_5AE9:
    ret                                           ; $5AE9: $C9


    ld hl, $002A                                  ; $5AEA: $21 $2A $00
    add hl, de                                    ; $5AED: $19
    ld a, [hl]                                    ; $5AEE: $7E
    or a                                          ; $5AEF: $B7
    jp z, Jump_025_5B12                           ; $5AF0: $CA $12 $5B

    ld hl, $003C                                  ; $5AF3: $21 $3C $00
    add hl, bc                                    ; $5AF6: $09
    ld a, [hl]                                    ; $5AF7: $7E
    cp $4A                                        ; $5AF8: $FE $4A
    jp z, Jump_025_5BFE                           ; $5AFA: $CA $FE $5B

    ld hl, $002A                                  ; $5AFD: $21 $2A $00
    add hl, de                                    ; $5B00: $19
    ld [hl], $00                                  ; $5B01: $36 $00
    ld hl, $FE00                                  ; $5B03: $21 $00 $FE
    call Call_000_2FEB                            ; $5B06: $CD $EB $2F
    ld hl, $FE00                                  ; $5B09: $21 $00 $FE
    call Call_000_305D                            ; $5B0C: $CD $5D $30
    jp Jump_025_5BFE                              ; $5B0F: $C3 $FE $5B


Jump_025_5B12:
    ld hl, $0000                                  ; $5B12: $21 $00 $00
    call Call_000_26F3                            ; $5B15: $CD $F3 $26
    jp nc, Jump_025_5B5E                          ; $5B18: $D2 $5E $5B

    jp nz, Jump_025_5B98                          ; $5B1B: $C2 $98 $5B

    ld hl, $000C                                  ; $5B1E: $21 $0C $00
    add hl, de                                    ; $5B21: $19
    ld a, [hl]                                    ; $5B22: $7E
    cp $58                                        ; $5B23: $FE $58
    jp nc, Jump_025_5B34                          ; $5B25: $D2 $34 $5B

    ld hl, $0008                                  ; $5B28: $21 $08 $00
    add hl, de                                    ; $5B2B: $19
    bit 7, [hl]                                   ; $5B2C: $CB $7E
    jp z, Jump_025_5B5E                           ; $5B2E: $CA $5E $5B

    jp Jump_025_5B40                              ; $5B31: $C3 $40 $5B


Jump_025_5B34:
    ld hl, $0008                                  ; $5B34: $21 $08 $00
    add hl, de                                    ; $5B37: $19
    bit 7, [hl]                                   ; $5B38: $CB $7E
    jp nz, Jump_025_5B5E                          ; $5B3A: $C2 $5E $5B

    jp Jump_025_5B40                              ; $5B3D: $C3 $40 $5B


Jump_025_5B40:
    ld a, $B5                                     ; $5B40: $3E $B5
    call Call_000_1360                            ; $5B42: $CD $60 $13
    push bc                                       ; $5B45: $C5
    ld hl, $0008                                  ; $5B46: $21 $08 $00
    add hl, de                                    ; $5B49: $19
    ld b, [hl]                                    ; $5B4A: $46
    inc hl                                        ; $5B4B: $23
    ld c, [hl]                                    ; $5B4C: $4E
    ld a, b                                       ; $5B4D: $78
    cpl                                           ; $5B4E: $2F
    ld b, a                                       ; $5B4F: $47
    ld a, c                                       ; $5B50: $79
    cpl                                           ; $5B51: $2F
    ld c, a                                       ; $5B52: $4F
    inc c                                         ; $5B53: $0C
    jr nz, jr_025_5B57                            ; $5B54: $20 $01

    inc b                                         ; $5B56: $04

jr_025_5B57:
    ld [hl], c                                    ; $5B57: $71
    dec hl                                        ; $5B58: $2B
    ld [hl], b                                    ; $5B59: $70
    pop bc                                        ; $5B5A: $C1
    jp Jump_025_5B5E                              ; $5B5B: $C3 $5E $5B


Jump_025_5B5E:
    ld hl, $0030                                  ; $5B5E: $21 $30 $00
    call Call_000_315D                            ; $5B61: $CD $5D $31
    jp c, Jump_025_5B6A                           ; $5B64: $DA $6A $5B

    jp Jump_025_5BFE                              ; $5B67: $C3 $FE $5B


Jump_025_5B6A:
    ld hl, $000A                                  ; $5B6A: $21 $0A $00
    add hl, de                                    ; $5B6D: $19
    ld a, [hl]                                    ; $5B6E: $7E
    cp $00                                        ; $5B6F: $FE $00
    jr z, jr_025_5B98                             ; $5B71: $28 $25

    call Call_000_3963                            ; $5B73: $CD $63 $39
    ld a, $B5                                     ; $5B76: $3E $B5
    call Call_000_1360                            ; $5B78: $CD $60 $13
    push bc                                       ; $5B7B: $C5
    ld hl, $000A                                  ; $5B7C: $21 $0A $00
    add hl, de                                    ; $5B7F: $19
    ld b, [hl]                                    ; $5B80: $46
    inc hl                                        ; $5B81: $23
    ld c, [hl]                                    ; $5B82: $4E
    ld a, b                                       ; $5B83: $78
    cpl                                           ; $5B84: $2F
    ld b, a                                       ; $5B85: $47
    ld a, c                                       ; $5B86: $79
    cpl                                           ; $5B87: $2F
    ld c, a                                       ; $5B88: $4F
    inc c                                         ; $5B89: $0C
    jr nz, jr_025_5B8D                            ; $5B8A: $20 $01

    inc b                                         ; $5B8C: $04

jr_025_5B8D:
    sra b                                         ; $5B8D: $CB $28
    rr c                                          ; $5B8F: $CB $19
    ld [hl], c                                    ; $5B91: $71
    dec hl                                        ; $5B92: $2B
    ld [hl], b                                    ; $5B93: $70
    pop bc                                        ; $5B94: $C1
    jp Jump_025_5BFE                              ; $5B95: $C3 $FE $5B


Jump_025_5B98:
jr_025_5B98:
    call Call_000_2637                            ; $5B98: $CD $37 $26
    ld hl, $0004                                  ; $5B9B: $21 $04 $00
    add hl, de                                    ; $5B9E: $19
    ld a, [hl]                                    ; $5B9F: $7E
    ld hl, $002B                                  ; $5BA0: $21 $2B $00
    add hl, de                                    ; $5BA3: $19
    ld [hl], a                                    ; $5BA4: $77
    ld hl, $0072                                  ; $5BA5: $21 $72 $00
    add hl, bc                                    ; $5BA8: $09
    ld a, [hl]                                    ; $5BA9: $7E
    ld hl, $002C                                  ; $5BAA: $21 $2C $00
    add hl, de                                    ; $5BAD: $19
    ld [hl], a                                    ; $5BAE: $77
    ld hl, $0309                                  ; $5BAF: $21 $09 $03
    ld a, $B3                                     ; $5BB2: $3E $B3
    call Call_000_34E0                            ; $5BB4: $CD $E0 $34
    ld a, $14                                     ; $5BB7: $3E $14
    call Call_000_1360                            ; $5BB9: $CD $60 $13
    ld hl, $0021                                  ; $5BBC: $21 $21 $00
    add hl, de                                    ; $5BBF: $19
    ld [hl], $25                                  ; $5BC0: $36 $25
    inc hl                                        ; $5BC2: $23
    ld [hl], $15                                  ; $5BC3: $36 $15
    inc hl                                        ; $5BC5: $23
    ld [hl], $5C                                  ; $5BC6: $36 $5C
    ld hl, $0011                                  ; $5BC8: $21 $11 $00
    add hl, de                                    ; $5BCB: $19
    ld [hl], $02                                  ; $5BCC: $36 $02
    inc hl                                        ; $5BCE: $23
    ld [hl], $82                                  ; $5BCF: $36 $82
    inc hl                                        ; $5BD1: $23
    ld [hl], $65                                  ; $5BD2: $36 $65
    inc hl                                        ; $5BD4: $23
    ld [hl], $00                                  ; $5BD5: $36 $00
    ld hl, $001C                                  ; $5BD7: $21 $1C $00
    add hl, de                                    ; $5BDA: $19
    ld [hl], $00                                  ; $5BDB: $36 $00
    inc hl                                        ; $5BDD: $23
    ld [hl], $00                                  ; $5BDE: $36 $00
    ld hl, $0029                                  ; $5BE0: $21 $29 $00
    add hl, de                                    ; $5BE3: $19
    ld [hl], $00                                  ; $5BE4: $36 $00
    inc hl                                        ; $5BE6: $23
    ld [hl], $06                                  ; $5BE7: $36 $06
    ld hl, $003C                                  ; $5BE9: $21 $3C $00
    add hl, bc                                    ; $5BEC: $09
    ld a, [hl]                                    ; $5BED: $7E
    cp $4A                                        ; $5BEE: $FE $4A
    jp z, Jump_025_5BFE                           ; $5BF0: $CA $FE $5B

    ld hl, $002A                                  ; $5BF3: $21 $2A $00
    add hl, de                                    ; $5BF6: $19
    ld [hl], $02                                  ; $5BF7: $36 $02
    jr jr_025_5BFE                                ; $5BF9: $18 $03

    call Call_000_27F5                            ; $5BFB: $CD $F5 $27

Jump_025_5BFE:
jr_025_5BFE:
    ret                                           ; $5BFE: $C9


    ld hl, $0014                                  ; $5BFF: $21 $14 $00
    add hl, de                                    ; $5C02: $19
    ld a, [hl]                                    ; $5C03: $7E
    cp $08                                        ; $5C04: $FE $08
    jr z, jr_025_5C0C                             ; $5C06: $28 $04

jr_025_5C08:
    call Call_000_2E25                            ; $5C08: $CD $25 $2E
    ret                                           ; $5C0B: $C9


jr_025_5C0C:
    call Call_000_2CA9                            ; $5C0C: $CD $A9 $2C
    jr nc, jr_025_5C08                            ; $5C0F: $30 $F7

    call Call_000_27F5                            ; $5C11: $CD $F5 $27
    ret                                           ; $5C14: $C9


    ld hl, $0014                                  ; $5C15: $21 $14 $00
    add hl, de                                    ; $5C18: $19
    ld a, [hl]                                    ; $5C19: $7E
    cp $08                                        ; $5C1A: $FE $08
    jr z, jr_025_5C22                             ; $5C1C: $28 $04

Jump_025_5C1E:
jr_025_5C1E:
    call Call_000_2E25                            ; $5C1E: $CD $25 $2E
    ret                                           ; $5C21: $C9


jr_025_5C22:
    call Call_000_2CA9                            ; $5C22: $CD $A9 $2C
    jr nc, jr_025_5C1E                            ; $5C25: $30 $F7

    ld hl, $002A                                  ; $5C27: $21 $2A $00
    add hl, de                                    ; $5C2A: $19
    dec [hl]                                      ; $5C2B: $35
    jr z, jr_025_5C5E                             ; $5C2C: $28 $30

    ld hl, $002C                                  ; $5C2E: $21 $2C $00
    add hl, de                                    ; $5C31: $19
    bit 2, [hl]                                   ; $5C32: $CB $56
    jr z, jr_025_5C3C                             ; $5C34: $28 $06

    ld hl, $0099                                  ; $5C36: $21 $99 $00
    add hl, bc                                    ; $5C39: $09
    jr jr_025_5C40                                ; $5C3A: $18 $04

jr_025_5C3C:
    ld hl, $002B                                  ; $5C3C: $21 $2B $00
    add hl, de                                    ; $5C3F: $19

jr_025_5C40:
    call Call_000_17E2                            ; $5C40: $CD $E2 $17
    bit 7, a                                      ; $5C43: $CB $7F
    jr nz, jr_025_5C4C                            ; $5C45: $20 $05

    and $07                                       ; $5C47: $E6 $07
    add [hl]                                      ; $5C49: $86
    jr jr_025_5C51                                ; $5C4A: $18 $05

jr_025_5C4C:
    and $07                                       ; $5C4C: $E6 $07
    cpl                                           ; $5C4E: $2F
    inc a                                         ; $5C4F: $3C
    add [hl]                                      ; $5C50: $86

jr_025_5C51:
    ld hl, $0004                                  ; $5C51: $21 $04 $00
    add hl, de                                    ; $5C54: $19
    ld [hl], a                                    ; $5C55: $77
    ld a, $07                                     ; $5C56: $3E $07
    call Call_000_3963                            ; $5C58: $CD $63 $39
    jp Jump_025_5C1E                              ; $5C5B: $C3 $1E $5C


jr_025_5C5E:
    call Call_000_27F5                            ; $5C5E: $CD $F5 $27
    ret                                           ; $5C61: $C9


    call Call_000_31B6                            ; $5C62: $CD $B6 $31
    jp c, Jump_025_5D78                           ; $5C65: $DA $78 $5D

    jp z, Jump_025_5C77                           ; $5C68: $CA $77 $5C

    call Call_000_3A2A                            ; $5C6B: $CD $2A $3A
    jp c, Jump_025_5CDE                           ; $5C6E: $DA $DE $5C

    jp z, Jump_025_5D0B                           ; $5C71: $CA $0B $5D

    jp Jump_025_5D78                              ; $5C74: $C3 $78 $5D


Jump_025_5C77:
    call Call_000_3A2A                            ; $5C77: $CD $2A $3A
    jp c, Jump_025_5D48                           ; $5C7A: $DA $48 $5D

    jp z, Jump_025_5D5C                           ; $5C7D: $CA $5C $5D

    call Call_000_39D3                            ; $5C80: $CD $D3 $39
    jp nc, Jump_025_5D78                          ; $5C83: $D2 $78 $5D

    jp z, Jump_025_5C8F                           ; $5C86: $CA $8F $5C

    jp nz, Jump_025_5CB2                          ; $5C89: $C2 $B2 $5C

    jp Jump_025_5D78                              ; $5C8C: $C3 $78 $5D


Jump_025_5C8F:
    call Call_000_3209                            ; $5C8F: $CD $09 $32
    jr c, jr_025_5C9D                             ; $5C92: $38 $09

    ld hl, $3AD4                                  ; $5C94: $21 $D4 $3A
    call Call_000_2B78                            ; $5C97: $CD $78 $2B
    jp c, Jump_025_5D48                           ; $5C9A: $DA $48 $5D

jr_025_5C9D:
    ld hl, $3B2A                                  ; $5C9D: $21 $2A $3B
    call Call_000_2B78                            ; $5CA0: $CD $78 $2B
    jp c, Jump_025_5D2C                           ; $5CA3: $DA $2C $5D

    ld hl, $3AB9                                  ; $5CA6: $21 $B9 $3A
    call Call_000_2B78                            ; $5CA9: $CD $78 $2B
    jp c, Jump_025_5CDE                           ; $5CAC: $DA $DE $5C

    jp Jump_025_5D78                              ; $5CAF: $C3 $78 $5D


Jump_025_5CB2:
    call Call_000_3209                            ; $5CB2: $CD $09 $32
    jp c, Jump_025_5CC9                           ; $5CB5: $DA $C9 $5C

    cp $01                                        ; $5CB8: $FE $01
    jr z, jr_025_5CC9                             ; $5CBA: $28 $0D

    cp $02                                        ; $5CBC: $FE $02
    jr z, jr_025_5CC0                             ; $5CBE: $28 $00

jr_025_5CC0:
    ld hl, $3AE5                                  ; $5CC0: $21 $E5 $3A
    call Call_000_2B78                            ; $5CC3: $CD $78 $2B
    jp c, Jump_025_5D5C                           ; $5CC6: $DA $5C $5D

Jump_025_5CC9:
jr_025_5CC9:
    ld hl, $3B21                                  ; $5CC9: $21 $21 $3B
    call Call_000_2B78                            ; $5CCC: $CD $78 $2B
    jp c, Jump_025_5D3D                           ; $5CCF: $DA $3D $5D

    ld hl, $3AC2                                  ; $5CD2: $21 $C2 $3A
    call Call_000_2B78                            ; $5CD5: $CD $78 $2B
    jp c, Jump_025_5D0B                           ; $5CD8: $DA $0B $5D

    jp Jump_025_5D78                              ; $5CDB: $C3 $78 $5D


Jump_025_5CDE:
    call Call_000_32C5                            ; $5CDE: $CD $C5 $32
    jp nz, Jump_025_5D78                          ; $5CE1: $C2 $78 $5D

    call Call_000_2C23                            ; $5CE4: $CD $23 $2C
    ld a, $40                                     ; $5CE7: $3E $40
    call Call_000_32E2                            ; $5CE9: $CD $E2 $32
    call Call_000_34F1                            ; $5CEC: $CD $F1 $34
    call Call_000_34FE                            ; $5CEF: $CD $FE $34
    call Call_000_32CC                            ; $5CF2: $CD $CC $32
    jp nc, Jump_025_5D76                          ; $5CF5: $D2 $76 $5D

    ld hl, $0408                                  ; $5CF8: $21 $08 $04
    ld a, $33                                     ; $5CFB: $3E $33
    call Call_000_34C4                            ; $5CFD: $CD $C4 $34
    ld hl, $0408                                  ; $5D00: $21 $08 $04
    ld a, $33                                     ; $5D03: $3E $33
    call Call_000_34D2                            ; $5D05: $CD $D2 $34
    jp Jump_025_5D76                              ; $5D08: $C3 $76 $5D


Jump_025_5D0B:
    call Call_000_32C5                            ; $5D0B: $CD $C5 $32
    jp nz, Jump_025_5D78                          ; $5D0E: $C2 $78 $5D

    call Call_000_2C23                            ; $5D11: $CD $23 $2C
    ld a, $42                                     ; $5D14: $3E $42
    call Call_000_32E2                            ; $5D16: $CD $E2 $32
    ld hl, $0008                                  ; $5D19: $21 $08 $00
    ld a, $33                                     ; $5D1C: $3E $33
    call Call_000_34C4                            ; $5D1E: $CD $C4 $34
    ld hl, $0008                                  ; $5D21: $21 $08 $00
    ld a, $33                                     ; $5D24: $3E $33
    call Call_000_34D2                            ; $5D26: $CD $D2 $34
    jp Jump_025_5D76                              ; $5D29: $C3 $76 $5D


Jump_025_5D2C:
    call Call_000_2C23                            ; $5D2C: $CD $23 $2C
    ld a, $44                                     ; $5D2F: $3E $44
    call Call_000_32E2                            ; $5D31: $CD $E2 $32
    call Call_000_34F1                            ; $5D34: $CD $F1 $34
    call Call_000_34FE                            ; $5D37: $CD $FE $34
    jp Jump_025_5D76                              ; $5D3A: $C3 $76 $5D


Jump_025_5D3D:
    call Call_000_2C23                            ; $5D3D: $CD $23 $2C
    ld a, $46                                     ; $5D40: $3E $46
    call Call_000_32E2                            ; $5D42: $CD $E2 $32
    jp Jump_025_5D76                              ; $5D45: $C3 $76 $5D


Jump_025_5D48:
    call Call_000_32C5                            ; $5D48: $CD $C5 $32
    jp nz, Jump_025_5D78                          ; $5D4B: $C2 $78 $5D

    call Call_000_2C23                            ; $5D4E: $CD $23 $2C
    ld a, $4A                                     ; $5D51: $3E $4A
    call Call_000_32E2                            ; $5D53: $CD $E2 $32
    call Call_000_34F1                            ; $5D56: $CD $F1 $34
    jp Jump_025_5D76                              ; $5D59: $C3 $76 $5D


Jump_025_5D5C:
    call Call_000_2C23                            ; $5D5C: $CD $23 $2C
    ld a, $26                                     ; $5D5F: $3E $26
    call Call_000_32E2                            ; $5D61: $CD $E2 $32
    ld hl, $0021                                  ; $5D64: $21 $21 $00
    add hl, bc                                    ; $5D67: $09
    set 7, [hl]                                   ; $5D68: $CB $FE
    ld hl, $009C                                  ; $5D6A: $21 $9C $00
    add hl, bc                                    ; $5D6D: $09
    ld [hl], $01                                  ; $5D6E: $36 $01
    jp Jump_025_5D76                              ; $5D70: $C3 $76 $5D


    jp Jump_025_5D76                              ; $5D73: $C3 $76 $5D


Jump_025_5D76:
    scf                                           ; $5D76: $37
    ret                                           ; $5D77: $C9


Jump_025_5D78:
    or a                                          ; $5D78: $B7
    ret                                           ; $5D79: $C9


    call Call_000_2EE0                            ; $5D7A: $CD $E0 $2E
    call Call_000_3517                            ; $5D7D: $CD $17 $35
    jp c, Jump_025_5E43                           ; $5D80: $DA $43 $5E

    ld hl, $0018                                  ; $5D83: $21 $18 $00
    add hl, de                                    ; $5D86: $19
    ld a, [hl]                                    ; $5D87: $7E
    cp $00                                        ; $5D88: $FE $00
    jp z, Jump_025_5DBD                           ; $5D8A: $CA $BD $5D

    cp $04                                        ; $5D8D: $FE $04
    jp z, Jump_025_5DD9                           ; $5D8F: $CA $D9 $5D

    cp $08                                        ; $5D92: $FE $08
    jp z, Jump_025_5DDC                           ; $5D94: $CA $DC $5D

    cp $0C                                        ; $5D97: $FE $0C
    jp z, Jump_025_5DED                           ; $5D99: $CA $ED $5D

    cp $10                                        ; $5D9C: $FE $10
    jp z, Jump_025_5E09                           ; $5D9E: $CA $09 $5E

    cp $14                                        ; $5DA1: $FE $14
    jp z, Jump_025_5E09                           ; $5DA3: $CA $09 $5E

    cp $18                                        ; $5DA6: $FE $18
    jp z, Jump_025_5E0C                           ; $5DA8: $CA $0C $5E

    cp $1C                                        ; $5DAB: $FE $1C
    jp z, Jump_025_5E1D                           ; $5DAD: $CA $1D $5E

    cp $20                                        ; $5DB0: $FE $20
    jp z, Jump_025_5E29                           ; $5DB2: $CA $29 $5E

    cp $24                                        ; $5DB5: $FE $24
    jp z, Jump_025_5E35                           ; $5DB7: $CA $35 $5E

    jp Jump_025_5E40                              ; $5DBA: $C3 $40 $5E


Jump_025_5DBD:
    call Call_000_2CA9                            ; $5DBD: $CD $A9 $2C
    jp nc, Jump_025_5E40                          ; $5DC0: $D2 $40 $5E

    inc hl                                        ; $5DC3: $23
    ld [hl], $01                                  ; $5DC4: $36 $01
    call Call_000_32CC                            ; $5DC6: $CD $CC $32
    jr c, jr_025_5DCD                             ; $5DC9: $38 $02

    jr nz, jr_025_5DD0                            ; $5DCB: $20 $03

jr_025_5DCD:
    jp Jump_025_5E40                              ; $5DCD: $C3 $40 $5E


jr_025_5DD0:
    ld hl, $0014                                  ; $5DD0: $21 $14 $00
    add hl, de                                    ; $5DD3: $19
    ld [hl], $0C                                  ; $5DD4: $36 $0C
    jp Jump_025_5E40                              ; $5DD6: $C3 $40 $5E


Jump_025_5DD9:
    jp Jump_025_5E40                              ; $5DD9: $C3 $40 $5E


Jump_025_5DDC:
    call Call_000_2CA2                            ; $5DDC: $CD $A2 $2C
    jr z, jr_025_5DE4                             ; $5DDF: $28 $03

    call Call_025_6262                            ; $5DE1: $CD $62 $62

jr_025_5DE4:
    call Call_000_2CA9                            ; $5DE4: $CD $A9 $2C
    jp nc, Jump_025_5E40                          ; $5DE7: $D2 $40 $5E

    jp Jump_025_5E40                              ; $5DEA: $C3 $40 $5E


Jump_025_5DED:
    call Call_000_2CA9                            ; $5DED: $CD $A9 $2C
    jp nc, Jump_025_5E40                          ; $5DF0: $D2 $40 $5E

    call Call_000_32CC                            ; $5DF3: $CD $CC $32
    jr c, jr_025_5E06                             ; $5DF6: $38 $0E

    jr nz, jr_025_5E06                            ; $5DF8: $20 $0C

    ld hl, $0014                                  ; $5DFA: $21 $14 $00
    add hl, de                                    ; $5DFD: $19
    ld [hl], $20                                  ; $5DFE: $36 $20
    ld hl, $001D                                  ; $5E00: $21 $1D $00
    add hl, de                                    ; $5E03: $19
    ld [hl], $1E                                  ; $5E04: $36 $1E

jr_025_5E06:
    jp Jump_025_5E40                              ; $5E06: $C3 $40 $5E


Jump_025_5E09:
    jp Jump_025_5E40                              ; $5E09: $C3 $40 $5E


Jump_025_5E0C:
    call Call_000_2CA2                            ; $5E0C: $CD $A2 $2C
    jr z, jr_025_5E14                             ; $5E0F: $28 $03

    call Call_025_62D9                            ; $5E11: $CD $D9 $62

jr_025_5E14:
    call Call_000_2CA9                            ; $5E14: $CD $A9 $2C
    jp nc, Jump_025_5E40                          ; $5E17: $D2 $40 $5E

    jp Jump_025_5E40                              ; $5E1A: $C3 $40 $5E


Jump_025_5E1D:
    call Call_000_2CA9                            ; $5E1D: $CD $A9 $2C
    jp nc, Jump_025_5E40                          ; $5E20: $D2 $40 $5E

    inc hl                                        ; $5E23: $23
    ld [hl], $06                                  ; $5E24: $36 $06
    jp Jump_025_5E40                              ; $5E26: $C3 $40 $5E


Jump_025_5E29:
    call Call_000_2CA9                            ; $5E29: $CD $A9 $2C
    jp nc, Jump_025_5E40                          ; $5E2C: $D2 $40 $5E

    inc hl                                        ; $5E2F: $23
    ld [hl], $1E                                  ; $5E30: $36 $1E
    jp Jump_025_5E40                              ; $5E32: $C3 $40 $5E


Jump_025_5E35:
    call Call_000_2CA9                            ; $5E35: $CD $A9 $2C
    jp nc, Jump_025_5E40                          ; $5E38: $D2 $40 $5E

    call Call_000_2DB6                            ; $5E3B: $CD $B6 $2D
    jr jr_025_5E43                                ; $5E3E: $18 $03

Jump_025_5E40:
    jp Jump_000_2E25                              ; $5E40: $C3 $25 $2E


Jump_025_5E43:
jr_025_5E43:
    ret                                           ; $5E43: $C9


    call Call_000_2EE0                            ; $5E44: $CD $E0 $2E
    call Call_000_3517                            ; $5E47: $CD $17 $35
    jp c, Jump_025_5ED6                           ; $5E4A: $DA $D6 $5E

    ld hl, $0018                                  ; $5E4D: $21 $18 $00
    add hl, de                                    ; $5E50: $19
    ld a, [hl]                                    ; $5E51: $7E
    cp $00                                        ; $5E52: $FE $00
    jp z, Jump_025_5E6B                           ; $5E54: $CA $6B $5E

    cp $04                                        ; $5E57: $FE $04
    jp z, Jump_025_5E77                           ; $5E59: $CA $77 $5E

    cp $08                                        ; $5E5C: $FE $08
    jp z, Jump_025_5EB9                           ; $5E5E: $CA $B9 $5E

    cp $0C                                        ; $5E61: $FE $0C
    jp z, Jump_025_5EB9                           ; $5E63: $CA $B9 $5E

    cp $10                                        ; $5E66: $FE $10
    jp z, Jump_025_5EC2                           ; $5E68: $CA $C2 $5E

Jump_025_5E6B:
    call Call_000_2CA9                            ; $5E6B: $CD $A9 $2C
    jp nc, Jump_025_5ED3                          ; $5E6E: $D2 $D3 $5E

    inc hl                                        ; $5E71: $23
    ld [hl], $0A                                  ; $5E72: $36 $0A
    jp Jump_025_5ED3                              ; $5E74: $C3 $D3 $5E


Jump_025_5E77:
    call Call_000_2CA2                            ; $5E77: $CD $A2 $2C
    jr z, jr_025_5E96                             ; $5E7A: $28 $1A

    call Call_025_6350                            ; $5E7C: $CD $50 $63
    call Call_000_32CC                            ; $5E7F: $CD $CC $32
    jr c, jr_025_5E90                             ; $5E82: $38 $0C

    jr nz, jr_025_5E8B                            ; $5E84: $20 $05

    ld hl, $FF00                                  ; $5E86: $21 $00 $FF
    jr jr_025_5E93                                ; $5E89: $18 $08

jr_025_5E8B:
    ld hl, $FE00                                  ; $5E8B: $21 $00 $FE
    jr jr_025_5E93                                ; $5E8E: $18 $03

jr_025_5E90:
    ld hl, $FD00                                  ; $5E90: $21 $00 $FD

jr_025_5E93:
    call Call_000_2FEB                            ; $5E93: $CD $EB $2F

jr_025_5E96:
    call Call_000_32CC                            ; $5E96: $CD $CC $32
    jr nc, jr_025_5EA7                            ; $5E99: $30 $0C

    ld hl, $001C                                  ; $5E9B: $21 $1C $00
    add hl, de                                    ; $5E9E: $19
    ld a, [hl]                                    ; $5E9F: $7E
    cp $05                                        ; $5EA0: $FE $05
    jr nz, jr_025_5EA7                            ; $5EA2: $20 $03

    call Call_025_63EB                            ; $5EA4: $CD $EB $63

jr_025_5EA7:
    ld hl, $0008                                  ; $5EA7: $21 $08 $00
    call Call_000_30B0                            ; $5EAA: $CD $B0 $30
    call Call_000_2CA9                            ; $5EAD: $CD $A9 $2C
    jp nc, Jump_025_5ED3                          ; $5EB0: $D2 $D3 $5E

    inc hl                                        ; $5EB3: $23
    ld [hl], $14                                  ; $5EB4: $36 $14
    jp Jump_025_5ED3                              ; $5EB6: $C3 $D3 $5E


Jump_025_5EB9:
    ld hl, $0010                                  ; $5EB9: $21 $10 $00
    call Call_000_30B0                            ; $5EBC: $CD $B0 $30
    jp Jump_025_5ED3                              ; $5EBF: $C3 $D3 $5E


Jump_025_5EC2:
    ld hl, $0020                                  ; $5EC2: $21 $20 $00
    call Call_000_30B0                            ; $5EC5: $CD $B0 $30
    call Call_000_2CA9                            ; $5EC8: $CD $A9 $2C
    jp nc, Jump_025_5ED3                          ; $5ECB: $D2 $D3 $5E

    call Call_000_2DB6                            ; $5ECE: $CD $B6 $2D
    jr jr_025_5ED6                                ; $5ED1: $18 $03

Jump_025_5ED3:
    call Call_000_2E25                            ; $5ED3: $CD $25 $2E

Jump_025_5ED6:
jr_025_5ED6:
    ret                                           ; $5ED6: $C9


    call Call_000_2EE0                            ; $5ED7: $CD $E0 $2E
    call Call_000_3517                            ; $5EDA: $CD $17 $35
    jp c, Jump_025_5F8E                           ; $5EDD: $DA $8E $5F

    ld hl, $0018                                  ; $5EE0: $21 $18 $00
    add hl, de                                    ; $5EE3: $19
    ld a, [hl]                                    ; $5EE4: $7E
    cp $00                                        ; $5EE5: $FE $00
    jp z, Jump_025_5EFE                           ; $5EE7: $CA $FE $5E

    cp $04                                        ; $5EEA: $FE $04
    jp z, Jump_025_5F20                           ; $5EEC: $CA $20 $5F

    cp $08                                        ; $5EEF: $FE $08
    jp z, Jump_025_5F2E                           ; $5EF1: $CA $2E $5F

    cp $0C                                        ; $5EF4: $FE $0C
    jp z, Jump_025_5F34                           ; $5EF6: $CA $34 $5F

    cp $10                                        ; $5EF9: $FE $10
    jp z, Jump_025_5F80                           ; $5EFB: $CA $80 $5F

Jump_025_5EFE:
    call Call_000_2CA9                            ; $5EFE: $CD $A9 $2C
    jp nc, Jump_025_5F8B                          ; $5F01: $D2 $8B $5F

    inc hl                                        ; $5F04: $23
    ld [hl], $00                                  ; $5F05: $36 $00
    call Call_000_32CC                            ; $5F07: $CD $CC $32
    jr c, jr_025_5F16                             ; $5F0A: $38 $0A

    jr nz, jr_025_5F12                            ; $5F0C: $20 $04

    ld a, $01                                     ; $5F0E: $3E $01
    jr jr_025_5F18                                ; $5F10: $18 $06

jr_025_5F12:
    ld a, $02                                     ; $5F12: $3E $02
    jr jr_025_5F18                                ; $5F14: $18 $02

jr_025_5F16:
    ld a, $03                                     ; $5F16: $3E $03

jr_025_5F18:
    ld hl, $009C                                  ; $5F18: $21 $9C $00
    add hl, bc                                    ; $5F1B: $09
    ld [hl], a                                    ; $5F1C: $77
    jp Jump_025_5F8B                              ; $5F1D: $C3 $8B $5F


Jump_025_5F20:
    call Call_025_5F5E                            ; $5F20: $CD $5E $5F
    call Call_000_2CA2                            ; $5F23: $CD $A2 $2C
    jr z, jr_025_5F2B                             ; $5F26: $28 $03

    call Call_025_6486                            ; $5F28: $CD $86 $64

jr_025_5F2B:
    jp Jump_025_5F8B                              ; $5F2B: $C3 $8B $5F


Jump_025_5F2E:
    call Call_025_5F5E                            ; $5F2E: $CD $5E $5F
    jp Jump_025_5F8B                              ; $5F31: $C3 $8B $5F


Jump_025_5F34:
    call Call_025_5F5E                            ; $5F34: $CD $5E $5F
    call Call_000_2CA2                            ; $5F37: $CD $A2 $2C
    jr z, jr_025_5F3F                             ; $5F3A: $28 $03

    call Call_025_64F4                            ; $5F3C: $CD $F4 $64

jr_025_5F3F:
    call Call_000_2CA9                            ; $5F3F: $CD $A9 $2C
    jp nc, Jump_025_5F8B                          ; $5F42: $D2 $8B $5F

    ld hl, $009C                                  ; $5F45: $21 $9C $00
    add hl, bc                                    ; $5F48: $09
    dec [hl]                                      ; $5F49: $35
    jr z, jr_025_5F55                             ; $5F4A: $28 $09

    ld hl, $0014                                  ; $5F4C: $21 $14 $00
    add hl, de                                    ; $5F4F: $19
    ld [hl], $00                                  ; $5F50: $36 $00
    jp Jump_025_5F8B                              ; $5F52: $C3 $8B $5F


jr_025_5F55:
    ld hl, $001D                                  ; $5F55: $21 $1D $00
    add hl, de                                    ; $5F58: $19
    ld [hl], $28                                  ; $5F59: $36 $28
    jp Jump_025_5F8B                              ; $5F5B: $C3 $8B $5F


Call_025_5F5E:
    ld hl, $0054                                  ; $5F5E: $21 $54 $00
    add hl, bc                                    ; $5F61: $09
    bit 1, [hl]                                   ; $5F62: $CB $4E
    jr nz, jr_025_5F6F                            ; $5F64: $20 $09

    bit 0, [hl]                                   ; $5F66: $CB $46
    jr nz, jr_025_5F74                            ; $5F68: $20 $0A

    ld hl, $0000                                  ; $5F6A: $21 $00 $00
    jr jr_025_5F79                                ; $5F6D: $18 $0A

jr_025_5F6F:
    ld hl, $FFC0                                  ; $5F6F: $21 $C0 $FF
    jr jr_025_5F79                                ; $5F72: $18 $05

jr_025_5F74:
    ld hl, $0040                                  ; $5F74: $21 $40 $00
    jr jr_025_5F79                                ; $5F77: $18 $00

jr_025_5F79:
    call Call_000_3051                            ; $5F79: $CD $51 $30
    call Call_000_3069                            ; $5F7C: $CD $69 $30
    ret                                           ; $5F7F: $C9


Jump_025_5F80:
    call Call_000_2CA9                            ; $5F80: $CD $A9 $2C
    jp nc, Jump_025_5F8B                          ; $5F83: $D2 $8B $5F

    call Call_000_2DB6                            ; $5F86: $CD $B6 $2D
    jr jr_025_5F8E                                ; $5F89: $18 $03

Jump_025_5F8B:
    call Call_000_2E25                            ; $5F8B: $CD $25 $2E

Jump_025_5F8E:
jr_025_5F8E:
    ret                                           ; $5F8E: $C9


    call Call_000_2EE0                            ; $5F8F: $CD $E0 $2E
    call Call_000_3517                            ; $5F92: $CD $17 $35
    jp c, Jump_025_61AC                           ; $5F95: $DA $AC $61

    ld hl, $0018                                  ; $5F98: $21 $18 $00
    add hl, de                                    ; $5F9B: $19
    ld a, [hl]                                    ; $5F9C: $7E
    cp $00                                        ; $5F9D: $FE $00
    jp z, Jump_025_5FD2                           ; $5F9F: $CA $D2 $5F

    cp $04                                        ; $5FA2: $FE $04
    jp z, Jump_025_6004                           ; $5FA4: $CA $04 $60

    cp $08                                        ; $5FA7: $FE $08
    jp z, Jump_025_6052                           ; $5FA9: $CA $52 $60

    cp $0C                                        ; $5FAC: $FE $0C
    jp z, Jump_025_6079                           ; $5FAE: $CA $79 $60

    cp $10                                        ; $5FB1: $FE $10
    jp z, Jump_025_60AC                           ; $5FB3: $CA $AC $60

    cp $14                                        ; $5FB6: $FE $14
    jp z, Jump_025_60C5                           ; $5FB8: $CA $C5 $60

    cp $18                                        ; $5FBB: $FE $18
    jp z, Jump_025_60D6                           ; $5FBD: $CA $D6 $60

    cp $1C                                        ; $5FC0: $FE $1C
    jp z, Jump_025_610D                           ; $5FC2: $CA $0D $61

    cp $20                                        ; $5FC5: $FE $20
    jp z, Jump_025_6163                           ; $5FC7: $CA $63 $61

    cp $24                                        ; $5FCA: $FE $24
    jp z, Jump_025_617D                           ; $5FCC: $CA $7D $61

    jp Jump_025_61A9                              ; $5FCF: $C3 $A9 $61


Jump_025_5FD2:
    call Call_000_2CA9                            ; $5FD2: $CD $A9 $2C
    jp nc, Jump_025_61A9                          ; $5FD5: $D2 $A9 $61

    inc hl                                        ; $5FD8: $23
    push hl                                       ; $5FD9: $E5
    call Call_000_32CC                            ; $5FDA: $CD $CC $32
    jr c, jr_025_5FEF                             ; $5FDD: $38 $10

    jr nz, jr_025_5FE8                            ; $5FDF: $20 $07

    pop hl                                        ; $5FE1: $E1
    ld [hl], $0A                                  ; $5FE2: $36 $0A
    ld a, $01                                     ; $5FE4: $3E $01
    jr jr_025_5FF4                                ; $5FE6: $18 $0C

jr_025_5FE8:
    pop hl                                        ; $5FE8: $E1
    ld [hl], $14                                  ; $5FE9: $36 $14
    ld a, $02                                     ; $5FEB: $3E $02
    jr jr_025_5FF4                                ; $5FED: $18 $05

jr_025_5FEF:
    pop hl                                        ; $5FEF: $E1
    ld [hl], $1E                                  ; $5FF0: $36 $1E
    ld a, $03                                     ; $5FF2: $3E $03

jr_025_5FF4:
    ld hl, $009C                                  ; $5FF4: $21 $9C $00
    add hl, bc                                    ; $5FF7: $09
    ld [hl], a                                    ; $5FF8: $77
    ld hl, $010C                                  ; $5FF9: $21 $0C $01
    ld a, $90                                     ; $5FFC: $3E $90
    call Call_000_34B3                            ; $5FFE: $CD $B3 $34
    jp Jump_025_61A9                              ; $6001: $C3 $A9 $61


Jump_025_6004:
    call Call_000_2CA2                            ; $6004: $CD $A2 $2C
    jr z, jr_025_601D                             ; $6007: $28 $14

    ld a, $11                                     ; $6009: $3E $11
    call Call_000_1360                            ; $600B: $CD $60 $13
    ld hl, $0300                                  ; $600E: $21 $00 $03
    call Call_000_2FEB                            ; $6011: $CD $EB $2F
    ld hl, $0021                                  ; $6014: $21 $21 $00
    add hl, bc                                    ; $6017: $09
    res 7, [hl]                                   ; $6018: $CB $BE
    jp Jump_025_6142                              ; $601A: $C3 $42 $61


jr_025_601D:
    call Call_000_3262                            ; $601D: $CD $62 $32
    jp nc, Jump_025_6038                          ; $6020: $D2 $38 $60

    jp nz, Jump_025_6048                          ; $6023: $C2 $48 $60

    ld a, $08                                     ; $6026: $3E $08
    ld h, $02                                     ; $6028: $26 $02
    call Call_000_2D19                            ; $602A: $CD $19 $2D
    ld hl, $010B                                  ; $602D: $21 $0B $01
    ld a, $90                                     ; $6030: $3E $90
    call Call_000_34B3                            ; $6032: $CD $B3 $34
    jp Jump_025_61AC                              ; $6035: $C3 $AC $61


Jump_025_6038:
    call Call_000_2CA9                            ; $6038: $CD $A9 $2C
    jp nc, Jump_025_6142                          ; $603B: $D2 $42 $61

    ld a, $24                                     ; $603E: $3E $24
    ld h, $1E                                     ; $6040: $26 $1E
    call Call_000_2D19                            ; $6042: $CD $19 $2D
    jp Jump_025_6142                              ; $6045: $C3 $42 $61


Jump_025_6048:
    ld a, $24                                     ; $6048: $3E $24
    ld h, $1E                                     ; $604A: $26 $1E
    call Call_000_2D19                            ; $604C: $CD $19 $2D
    jp Jump_025_6142                              ; $604F: $C3 $42 $61


Jump_025_6052:
    call Call_000_2CA2                            ; $6052: $CD $A2 $2C
    jr z, jr_025_6068                             ; $6055: $28 $11

    ld hl, $F800                                  ; $6057: $21 $00 $F8
    call Call_000_2F42                            ; $605A: $CD $42 $2F
    ld hl, $0021                                  ; $605D: $21 $21 $00
    add hl, bc                                    ; $6060: $09
    set 7, [hl]                                   ; $6061: $CB $FE
    ld a, $03                                     ; $6063: $3E $03
    ld [$C2E2], a                                 ; $6065: $EA $E2 $C2

jr_025_6068:
    call Call_000_2CA9                            ; $6068: $CD $A9 $2C
    jp nc, Jump_025_61A9                          ; $606B: $D2 $A9 $61

    ld hl, $010E                                  ; $606E: $21 $0E $01
    ld a, $90                                     ; $6071: $3E $90
    call Call_000_34B3                            ; $6073: $CD $B3 $34
    jp Jump_025_61A9                              ; $6076: $C3 $A9 $61


Jump_025_6079:
    call Call_000_2CA2                            ; $6079: $CD $A2 $2C
    jr z, jr_025_609B                             ; $607C: $28 $1D

    call Call_000_32CC                            ; $607E: $CD $CC $32
    jr c, jr_025_6095                             ; $6081: $38 $12

    jr nz, jr_025_608D                            ; $6083: $20 $08

    ld hl, $0100                                  ; $6085: $21 $00 $01
    call Call_000_2FEB                            ; $6088: $CD $EB $2F
    jr jr_025_609B                                ; $608B: $18 $0E

jr_025_608D:
    ld hl, $0080                                  ; $608D: $21 $80 $00
    call Call_000_2FEB                            ; $6090: $CD $EB $2F
    jr jr_025_609B                                ; $6093: $18 $06

jr_025_6095:
    ld hl, $0040                                  ; $6095: $21 $40 $00
    call Call_000_2FEB                            ; $6098: $CD $EB $2F

jr_025_609B:
    call Call_000_2CA9                            ; $609B: $CD $A9 $2C
    jp nc, Jump_025_6142                          ; $609E: $D2 $42 $61

    inc hl                                        ; $60A1: $23
    ld [hl], $01                                  ; $60A2: $36 $01
    ld a, $03                                     ; $60A4: $3E $03
    call Call_000_3963                            ; $60A6: $CD $63 $39
    jp Jump_025_6142                              ; $60A9: $C3 $42 $61


Jump_025_60AC:
    call Call_000_2CA9                            ; $60AC: $CD $A9 $2C
    jp nc, Jump_025_6142                          ; $60AF: $D2 $42 $61

    inc hl                                        ; $60B2: $23
    ld [hl], $01                                  ; $60B3: $36 $01
    ld a, $03                                     ; $60B5: $3E $03
    call Call_000_3963                            ; $60B7: $CD $63 $39
    ld hl, $010E                                  ; $60BA: $21 $0E $01
    ld a, $90                                     ; $60BD: $3E $90
    call Call_000_34B3                            ; $60BF: $CD $B3 $34
    jp Jump_025_6142                              ; $60C2: $C3 $42 $61


Jump_025_60C5:
    call Call_000_2CA9                            ; $60C5: $CD $A9 $2C
    jp nc, Jump_025_6142                          ; $60C8: $D2 $42 $61

    inc hl                                        ; $60CB: $23
    ld [hl], $01                                  ; $60CC: $36 $01
    ld a, $03                                     ; $60CE: $3E $03
    call Call_000_3963                            ; $60D0: $CD $63 $39
    jp Jump_025_6142                              ; $60D3: $C3 $42 $61


Jump_025_60D6:
    call Call_000_2CA9                            ; $60D6: $CD $A9 $2C
    jp nc, Jump_025_6142                          ; $60D9: $D2 $42 $61

    inc hl                                        ; $60DC: $23
    ld [hl], $01                                  ; $60DD: $36 $01
    ld a, $03                                     ; $60DF: $3E $03
    call Call_000_3963                            ; $60E1: $CD $63 $39
    ld hl, $009C                                  ; $60E4: $21 $9C $00
    add hl, bc                                    ; $60E7: $09
    dec [hl]                                      ; $60E8: $35
    jr z, jr_025_60FC                             ; $60E9: $28 $11

    ld hl, $010E                                  ; $60EB: $21 $0E $01
    ld a, $90                                     ; $60EE: $3E $90
    call Call_000_34B3                            ; $60F0: $CD $B3 $34
    ld hl, $0014                                  ; $60F3: $21 $14 $00
    add hl, de                                    ; $60F6: $19
    ld [hl], $08                                  ; $60F7: $36 $08
    jp Jump_025_6142                              ; $60F9: $C3 $42 $61


jr_025_60FC:
    ld hl, $010E                                  ; $60FC: $21 $0E $01
    ld a, $90                                     ; $60FF: $3E $90
    call Call_000_34B3                            ; $6101: $CD $B3 $34
    ld hl, $001D                                  ; $6104: $21 $1D $00
    add hl, de                                    ; $6107: $19
    ld [hl], $FF                                  ; $6108: $36 $FF
    jp Jump_025_6142                              ; $610A: $C3 $42 $61


Jump_025_610D:
    call Call_000_2CA2                            ; $610D: $CD $A2 $2C
    jr z, jr_025_611E                             ; $6110: $28 $0C

    ld hl, $0040                                  ; $6112: $21 $40 $00
    call Call_000_2FEB                            ; $6115: $CD $EB $2F
    ld hl, $0000                                  ; $6118: $21 $00 $00
    call Call_000_305D                            ; $611B: $CD $5D $30

jr_025_611E:
    jp Jump_025_6148                              ; $611E: $C3 $48 $61


    ld hl, $010C                                  ; $6121: $21 $0C $01
    ld a, $82                                     ; $6124: $3E $82
    call Call_000_34A2                            ; $6126: $CD $A2 $34
    call Call_000_2CA9                            ; $6129: $CD $A9 $2C
    jp nc, Jump_025_61A9                          ; $612C: $D2 $A9 $61

    inc hl                                        ; $612F: $23
    ld [hl], $FF                                  ; $6130: $36 $FF
    ld a, $06                                     ; $6132: $3E $06
    call Call_000_3963                            ; $6134: $CD $63 $39
    ld hl, $0108                                  ; $6137: $21 $08 $01
    ld a, $81                                     ; $613A: $3E $81
    call Call_000_34B3                            ; $613C: $CD $B3 $34
    jp Jump_025_61A9                              ; $613F: $C3 $A9 $61


Jump_025_6142:
    call Call_000_3069                            ; $6142: $CD $69 $30
    jp Jump_025_61A9                              ; $6145: $C3 $A9 $61


Jump_025_6148:
    ld hl, $0010                                  ; $6148: $21 $10 $00
    call Call_000_30FF                            ; $614B: $CD $FF $30
    jp nc, Jump_025_61A9                          ; $614E: $D2 $A9 $61

    ld a, $20                                     ; $6151: $3E $20
    ld h, $28                                     ; $6153: $26 $28
    call Call_000_2CBA                            ; $6155: $CD $BA $2C
    ld hl, $0108                                  ; $6158: $21 $08 $01
    ld a, $81                                     ; $615B: $3E $81
    call Call_000_34A2                            ; $615D: $CD $A2 $34
    jp Jump_025_61AC                              ; $6160: $C3 $AC $61


Jump_025_6163:
    call Call_000_2CA2                            ; $6163: $CD $A2 $2C
    jr z, jr_025_6172                             ; $6166: $28 $0A

    ld a, $03                                     ; $6168: $3E $03
    call Call_000_3963                            ; $616A: $CD $63 $39
    ld a, $00                                     ; $616D: $3E $00
    ld [$C2E2], a                                 ; $616F: $EA $E2 $C2

jr_025_6172:
    call Call_000_2CA9                            ; $6172: $CD $A9 $2C
    jp nc, Jump_025_61A9                          ; $6175: $D2 $A9 $61

    call Call_000_2DB6                            ; $6178: $CD $B6 $2D
    jr jr_025_61AC                                ; $617B: $18 $2F

Jump_025_617D:
    ld hl, $0080                                  ; $617D: $21 $80 $00
    call Call_000_30B0                            ; $6180: $CD $B0 $30
    call Call_000_326C                            ; $6183: $CD $6C $32
    jp nc, Jump_025_619E                          ; $6186: $D2 $9E $61

    jp nz, Jump_025_619E                          ; $6189: $C2 $9E $61

    ld a, $08                                     ; $618C: $3E $08
    ld h, $0A                                     ; $618E: $26 $0A
    call Call_000_2D19                            ; $6190: $CD $19 $2D
    ld hl, $010B                                  ; $6193: $21 $0B $01
    ld a, $90                                     ; $6196: $3E $90
    call Call_000_34B3                            ; $6198: $CD $B3 $34
    jp Jump_025_61AC                              ; $619B: $C3 $AC $61


Jump_025_619E:
    call Call_000_2CA9                            ; $619E: $CD $A9 $2C
    jp nc, Jump_025_61A9                          ; $61A1: $D2 $A9 $61

    call Call_000_2DB6                            ; $61A4: $CD $B6 $2D
    jr jr_025_61AC                                ; $61A7: $18 $03

Jump_025_61A9:
    call Call_000_2E25                            ; $61A9: $CD $25 $2E

Jump_025_61AC:
jr_025_61AC:
    ret                                           ; $61AC: $C9


    call Call_000_2EE0                            ; $61AD: $CD $E0 $2E
    call Call_000_3517                            ; $61B0: $CD $17 $35
    jp c, Jump_025_6261                           ; $61B3: $DA $61 $62

    ld hl, $0018                                  ; $61B6: $21 $18 $00
    add hl, de                                    ; $61B9: $19
    ld a, [hl]                                    ; $61BA: $7E
    cp $00                                        ; $61BB: $FE $00
    jp z, Jump_025_61E6                           ; $61BD: $CA $E6 $61

    cp $04                                        ; $61C0: $FE $04
    jp z, Jump_025_61F2                           ; $61C2: $CA $F2 $61

    cp $08                                        ; $61C5: $FE $08
    jp z, Jump_025_61FE                           ; $61C7: $CA $FE $61

    cp $0C                                        ; $61CA: $FE $0C
    jp z, Jump_025_6210                           ; $61CC: $CA $10 $62

    cp $10                                        ; $61CF: $FE $10
    jp z, Jump_025_622F                           ; $61D1: $CA $2F $62

    cp $14                                        ; $61D4: $FE $14
    jp z, Jump_025_623B                           ; $61D6: $CA $3B $62

    cp $18                                        ; $61D9: $FE $18
    jp z, Jump_025_6247                           ; $61DB: $CA $47 $62

    cp $1C                                        ; $61DE: $FE $1C
    jp z, Jump_025_6253                           ; $61E0: $CA $53 $62

    jp Jump_025_625E                              ; $61E3: $C3 $5E $62


Jump_025_61E6:
    call Call_000_2CA9                            ; $61E6: $CD $A9 $2C
    jp nc, Jump_025_625E                          ; $61E9: $D2 $5E $62

    inc hl                                        ; $61EC: $23
    ld [hl], $01                                  ; $61ED: $36 $01
    jp Jump_025_625E                              ; $61EF: $C3 $5E $62


Jump_025_61F2:
    call Call_000_2CA9                            ; $61F2: $CD $A9 $2C
    jp nc, Jump_025_625E                          ; $61F5: $D2 $5E $62

    inc hl                                        ; $61F8: $23
    ld [hl], $04                                  ; $61F9: $36 $04
    jp Jump_025_625E                              ; $61FB: $C3 $5E $62


Jump_025_61FE:
    call Call_000_2CA9                            ; $61FE: $CD $A9 $2C
    jp nc, Jump_025_625E                          ; $6201: $D2 $5E $62

    inc hl                                        ; $6204: $23
    ld [hl], $28                                  ; $6205: $36 $28
    ld hl, $0031                                  ; $6207: $21 $31 $00
    add hl, bc                                    ; $620A: $09
    ld [hl], $01                                  ; $620B: $36 $01
    jp Jump_025_625E                              ; $620D: $C3 $5E $62


Jump_025_6210:
    call Call_000_2CA2                            ; $6210: $CD $A2 $2C
    jr z, jr_025_6223                             ; $6213: $28 $0E

    ld a, $08                                     ; $6215: $3E $08
    call Call_000_3963                            ; $6217: $CD $63 $39
    call Call_025_6562                            ; $621A: $CD $62 $65
    ld hl, $0021                                  ; $621D: $21 $21 $00
    add hl, bc                                    ; $6220: $09
    res 7, [hl]                                   ; $6221: $CB $BE

jr_025_6223:
    call Call_000_2CA9                            ; $6223: $CD $A9 $2C
    jp nc, Jump_025_625E                          ; $6226: $D2 $5E $62

    inc hl                                        ; $6229: $23
    ld [hl], $3C                                  ; $622A: $36 $3C
    jp Jump_025_625E                              ; $622C: $C3 $5E $62


Jump_025_622F:
    call Call_000_2CA9                            ; $622F: $CD $A9 $2C
    jp nc, Jump_025_625E                          ; $6232: $D2 $5E $62

    inc hl                                        ; $6235: $23
    ld [hl], $14                                  ; $6236: $36 $14
    jp Jump_025_625E                              ; $6238: $C3 $5E $62


Jump_025_623B:
    call Call_000_2CA9                            ; $623B: $CD $A9 $2C
    jp nc, Jump_025_625E                          ; $623E: $D2 $5E $62

    inc hl                                        ; $6241: $23
    ld [hl], $14                                  ; $6242: $36 $14
    jp Jump_025_625E                              ; $6244: $C3 $5E $62


Jump_025_6247:
    call Call_000_2CA9                            ; $6247: $CD $A9 $2C
    jp nc, Jump_025_625E                          ; $624A: $D2 $5E $62

    inc hl                                        ; $624D: $23
    ld [hl], $0A                                  ; $624E: $36 $0A
    jp Jump_025_625E                              ; $6250: $C3 $5E $62


Jump_025_6253:
    call Call_000_2CA9                            ; $6253: $CD $A9 $2C
    jp nc, Jump_025_625E                          ; $6256: $D2 $5E $62

    call Call_000_2DB6                            ; $6259: $CD $B6 $2D
    jr jr_025_6261                                ; $625C: $18 $03

Jump_025_625E:
    jp Jump_000_2E25                              ; $625E: $C3 $25 $2E


Jump_025_6261:
jr_025_6261:
    ret                                           ; $6261: $C9


Call_025_6262:
    ld a, $14                                     ; $6262: $3E $14
    call Call_000_1360                            ; $6264: $CD $60 $13
    push bc                                       ; $6267: $C5
    push de                                       ; $6268: $D5
    ld hl, $0030                                  ; $6269: $21 $30 $00
    add hl, bc                                    ; $626C: $09
    ld a, [hl]                                    ; $626D: $7E
    or a                                          ; $626E: $B7
    jr nz, jr_025_6274                            ; $626F: $20 $03

    xor a                                         ; $6271: $AF
    jr jr_025_6275                                ; $6272: $18 $01

jr_025_6274:
    scf                                           ; $6274: $37

jr_025_6275:
    ld hl, $0022                                  ; $6275: $21 $22 $00
    push af                                       ; $6278: $F5
    add hl, bc                                    ; $6279: $09
    pop af                                        ; $627A: $F1
    ld a, [hl]                                    ; $627B: $7E
    push af                                       ; $627C: $F5
    call Call_000_25D1                            ; $627D: $CD $D1 $25
    ld hl, $0021                                  ; $6280: $21 $21 $00
    add hl, de                                    ; $6283: $19
    ld [hl], $25                                  ; $6284: $36 $25
    inc hl                                        ; $6286: $23
    ld [hl], $16                                  ; $6287: $36 $16
    inc hl                                        ; $6289: $23
    ld [hl], $67                                  ; $628A: $36 $67
    ld hl, $0011                                  ; $628C: $21 $11 $00
    add hl, de                                    ; $628F: $19
    ld [hl], $02                                  ; $6290: $36 $02
    inc hl                                        ; $6292: $23
    ld [hl], $B2                                  ; $6293: $36 $B2
    inc hl                                        ; $6295: $23
    ld [hl], $64                                  ; $6296: $36 $64
    inc hl                                        ; $6298: $23
    ld [hl], $00                                  ; $6299: $36 $00
    ld hl, $001C                                  ; $629B: $21 $1C $00
    add hl, de                                    ; $629E: $19
    ld [hl], $FF                                  ; $629F: $36 $FF
    inc hl                                        ; $62A1: $23
    ld [hl], $FF                                  ; $62A2: $36 $FF
    ld hl, $0029                                  ; $62A4: $21 $29 $00
    add hl, de                                    ; $62A7: $19
    ld [hl], $00                                  ; $62A8: $36 $00
    call Call_000_2614                            ; $62AA: $CD $14 $26
    ld hl, $1800                                  ; $62AD: $21 $00 $18
    call Call_000_2F79                            ; $62B0: $CD $79 $2F
    ld hl, $F800                                  ; $62B3: $21 $00 $F8
    call Call_000_2F42                            ; $62B6: $CD $42 $2F
    pop af                                        ; $62B9: $F1
    jr c, jr_025_62CA                             ; $62BA: $38 $0E

    bit 1, a                                      ; $62BC: $CB $4F
    jr nz, jr_025_62C5                            ; $62BE: $20 $05

    ld hl, $0080                                  ; $62C0: $21 $80 $00
    jr jr_025_62CD                                ; $62C3: $18 $08

jr_025_62C5:
    ld hl, $0080                                  ; $62C5: $21 $80 $00
    jr jr_025_62CD                                ; $62C8: $18 $03

jr_025_62CA:
    ld hl, $0080                                  ; $62CA: $21 $80 $00

jr_025_62CD:
    call Call_000_2FEB                            ; $62CD: $CD $EB $2F
    ld hl, $0100                                  ; $62D0: $21 $00 $01
    call Call_000_305D                            ; $62D3: $CD $5D $30
    pop de                                        ; $62D6: $D1
    pop bc                                        ; $62D7: $C1
    ret                                           ; $62D8: $C9


Call_025_62D9:
    ld a, $14                                     ; $62D9: $3E $14
    call Call_000_1360                            ; $62DB: $CD $60 $13
    push bc                                       ; $62DE: $C5
    push de                                       ; $62DF: $D5
    ld hl, $0030                                  ; $62E0: $21 $30 $00
    add hl, bc                                    ; $62E3: $09
    ld a, [hl]                                    ; $62E4: $7E
    or a                                          ; $62E5: $B7
    jr nz, jr_025_62EB                            ; $62E6: $20 $03

    xor a                                         ; $62E8: $AF
    jr jr_025_62EC                                ; $62E9: $18 $01

jr_025_62EB:
    scf                                           ; $62EB: $37

jr_025_62EC:
    ld hl, $0022                                  ; $62EC: $21 $22 $00
    push af                                       ; $62EF: $F5
    add hl, bc                                    ; $62F0: $09
    pop af                                        ; $62F1: $F1
    ld a, [hl]                                    ; $62F2: $7E
    push af                                       ; $62F3: $F5
    call Call_000_25E1                            ; $62F4: $CD $E1 $25
    ld hl, $0021                                  ; $62F7: $21 $21 $00
    add hl, de                                    ; $62FA: $19
    ld [hl], $25                                  ; $62FB: $36 $25
    inc hl                                        ; $62FD: $23
    ld [hl], $52                                  ; $62FE: $36 $52
    inc hl                                        ; $6300: $23
    ld [hl], $67                                  ; $6301: $36 $67
    ld hl, $0011                                  ; $6303: $21 $11 $00
    add hl, de                                    ; $6306: $19
    ld [hl], $02                                  ; $6307: $36 $02
    inc hl                                        ; $6309: $23
    ld [hl], $C0                                  ; $630A: $36 $C0
    inc hl                                        ; $630C: $23
    ld [hl], $64                                  ; $630D: $36 $64
    inc hl                                        ; $630F: $23
    ld [hl], $00                                  ; $6310: $36 $00
    ld hl, $001C                                  ; $6312: $21 $1C $00
    add hl, de                                    ; $6315: $19
    ld [hl], $FF                                  ; $6316: $36 $FF
    inc hl                                        ; $6318: $23
    ld [hl], $FF                                  ; $6319: $36 $FF
    ld hl, $0029                                  ; $631B: $21 $29 $00
    add hl, de                                    ; $631E: $19
    ld [hl], $00                                  ; $631F: $36 $00
    call Call_000_2614                            ; $6321: $CD $14 $26
    ld hl, $1800                                  ; $6324: $21 $00 $18
    call Call_000_2F79                            ; $6327: $CD $79 $2F
    ld hl, $F000                                  ; $632A: $21 $00 $F0
    call Call_000_2F42                            ; $632D: $CD $42 $2F
    pop af                                        ; $6330: $F1
    jr c, jr_025_6341                             ; $6331: $38 $0E

    bit 1, a                                      ; $6333: $CB $4F
    jr nz, jr_025_633C                            ; $6335: $20 $05

    ld hl, $0080                                  ; $6337: $21 $80 $00
    jr jr_025_6344                                ; $633A: $18 $08

jr_025_633C:
    ld hl, $0080                                  ; $633C: $21 $80 $00
    jr jr_025_6344                                ; $633F: $18 $03

jr_025_6341:
    ld hl, $0200                                  ; $6341: $21 $00 $02

jr_025_6344:
    call Call_000_2FEB                            ; $6344: $CD $EB $2F
    ld hl, $FE80                                  ; $6347: $21 $80 $FE
    call Call_000_305D                            ; $634A: $CD $5D $30
    pop de                                        ; $634D: $D1
    pop bc                                        ; $634E: $C1
    ret                                           ; $634F: $C9


Call_025_6350:
    ld a, $0F                                     ; $6350: $3E $0F
    call Call_000_1360                            ; $6352: $CD $60 $13
    push bc                                       ; $6355: $C5
    push de                                       ; $6356: $D5
    ld hl, $0030                                  ; $6357: $21 $30 $00
    add hl, bc                                    ; $635A: $09
    ld a, [hl]                                    ; $635B: $7E
    or a                                          ; $635C: $B7
    jr nz, jr_025_6362                            ; $635D: $20 $03

    xor a                                         ; $635F: $AF
    jr jr_025_6363                                ; $6360: $18 $01

jr_025_6362:
    scf                                           ; $6362: $37

jr_025_6363:
    ld hl, $0022                                  ; $6363: $21 $22 $00
    push af                                       ; $6366: $F5
    add hl, bc                                    ; $6367: $09
    pop af                                        ; $6368: $F1
    ld a, [hl]                                    ; $6369: $7E
    push af                                       ; $636A: $F5
    call Call_000_25D1                            ; $636B: $CD $D1 $25
    ld hl, $0021                                  ; $636E: $21 $21 $00
    add hl, de                                    ; $6371: $19
    ld [hl], $25                                  ; $6372: $36 $25
    inc hl                                        ; $6374: $23
    ld [hl], $8E                                  ; $6375: $36 $8E
    inc hl                                        ; $6377: $23
    ld [hl], $67                                  ; $6378: $36 $67
    ld hl, $0011                                  ; $637A: $21 $11 $00
    add hl, de                                    ; $637D: $19
    ld [hl], $02                                  ; $637E: $36 $02
    inc hl                                        ; $6380: $23
    ld [hl], $CE                                  ; $6381: $36 $CE
    inc hl                                        ; $6383: $23
    ld [hl], $64                                  ; $6384: $36 $64
    inc hl                                        ; $6386: $23
    ld [hl], $00                                  ; $6387: $36 $00
    ld hl, $001C                                  ; $6389: $21 $1C $00
    add hl, de                                    ; $638C: $19
    ld [hl], $00                                  ; $638D: $36 $00
    inc hl                                        ; $638F: $23
    ld [hl], $00                                  ; $6390: $36 $00
    ld hl, $0029                                  ; $6392: $21 $29 $00
    add hl, de                                    ; $6395: $19
    ld [hl], $00                                  ; $6396: $36 $00
    call Call_000_2614                            ; $6398: $CD $14 $26
    ld hl, $0800                                  ; $639B: $21 $00 $08
    call Call_000_2F79                            ; $639E: $CD $79 $2F
    ld hl, $F000                                  ; $63A1: $21 $00 $F0
    call Call_000_2F42                            ; $63A4: $CD $42 $2F
    pop af                                        ; $63A7: $F1
    jr c, jr_025_63D6                             ; $63A8: $38 $2C

    bit 1, a                                      ; $63AA: $CB $4F
    jr nz, jr_025_63C2                            ; $63AC: $20 $14

    ld hl, $0000                                  ; $63AE: $21 $00 $00
    call Call_000_2FEB                            ; $63B1: $CD $EB $2F
    ld hl, $FD00                                  ; $63B4: $21 $00 $FD
    call Call_000_305D                            ; $63B7: $CD $5D $30
    ld hl, $002A                                  ; $63BA: $21 $2A $00
    add hl, de                                    ; $63BD: $19
    ld [hl], $80                                  ; $63BE: $36 $80
    jr jr_025_63E8                                ; $63C0: $18 $26

jr_025_63C2:
    ld hl, $0000                                  ; $63C2: $21 $00 $00
    call Call_000_2FEB                            ; $63C5: $CD $EB $2F
    ld hl, $FD00                                  ; $63C8: $21 $00 $FD
    call Call_000_305D                            ; $63CB: $CD $5D $30
    ld hl, $002A                                  ; $63CE: $21 $2A $00
    add hl, de                                    ; $63D1: $19
    ld [hl], $C0                                  ; $63D2: $36 $C0
    jr jr_025_63E8                                ; $63D4: $18 $12

jr_025_63D6:
    ld hl, $0200                                  ; $63D6: $21 $00 $02
    call Call_000_2FEB                            ; $63D9: $CD $EB $2F
    ld hl, $FB00                                  ; $63DC: $21 $00 $FB
    call Call_000_305D                            ; $63DF: $CD $5D $30
    ld hl, $002A                                  ; $63E2: $21 $2A $00
    add hl, de                                    ; $63E5: $19
    ld [hl], $00                                  ; $63E6: $36 $00

jr_025_63E8:
    pop de                                        ; $63E8: $D1
    pop bc                                        ; $63E9: $C1
    ret                                           ; $63EA: $C9


Call_025_63EB:
    ld a, $0F                                     ; $63EB: $3E $0F
    call Call_000_1360                            ; $63ED: $CD $60 $13
    push bc                                       ; $63F0: $C5
    push de                                       ; $63F1: $D5
    ld hl, $0030                                  ; $63F2: $21 $30 $00
    add hl, bc                                    ; $63F5: $09
    ld a, [hl]                                    ; $63F6: $7E
    or a                                          ; $63F7: $B7
    jr nz, jr_025_63FD                            ; $63F8: $20 $03

    xor a                                         ; $63FA: $AF
    jr jr_025_63FE                                ; $63FB: $18 $01

jr_025_63FD:
    scf                                           ; $63FD: $37

jr_025_63FE:
    ld hl, $0022                                  ; $63FE: $21 $22 $00
    push af                                       ; $6401: $F5
    add hl, bc                                    ; $6402: $09
    pop af                                        ; $6403: $F1
    ld a, [hl]                                    ; $6404: $7E
    push af                                       ; $6405: $F5
    call Call_000_25E1                            ; $6406: $CD $E1 $25
    ld hl, $0021                                  ; $6409: $21 $21 $00
    add hl, de                                    ; $640C: $19
    ld [hl], $25                                  ; $640D: $36 $25
    inc hl                                        ; $640F: $23
    ld [hl], $8E                                  ; $6410: $36 $8E
    inc hl                                        ; $6412: $23
    ld [hl], $67                                  ; $6413: $36 $67
    ld hl, $0011                                  ; $6415: $21 $11 $00
    add hl, de                                    ; $6418: $19
    ld [hl], $02                                  ; $6419: $36 $02
    inc hl                                        ; $641B: $23
    ld [hl], $CE                                  ; $641C: $36 $CE
    inc hl                                        ; $641E: $23
    ld [hl], $64                                  ; $641F: $36 $64
    inc hl                                        ; $6421: $23
    ld [hl], $00                                  ; $6422: $36 $00
    ld hl, $001C                                  ; $6424: $21 $1C $00
    add hl, de                                    ; $6427: $19
    ld [hl], $00                                  ; $6428: $36 $00
    inc hl                                        ; $642A: $23
    ld [hl], $00                                  ; $642B: $36 $00
    ld hl, $0029                                  ; $642D: $21 $29 $00
    add hl, de                                    ; $6430: $19
    ld [hl], $00                                  ; $6431: $36 $00
    call Call_000_2614                            ; $6433: $CD $14 $26
    ld hl, $0800                                  ; $6436: $21 $00 $08
    call Call_000_2F79                            ; $6439: $CD $79 $2F
    ld hl, $F000                                  ; $643C: $21 $00 $F0
    call Call_000_2F42                            ; $643F: $CD $42 $2F
    pop af                                        ; $6442: $F1
    jr c, jr_025_6471                             ; $6443: $38 $2C

    bit 1, a                                      ; $6445: $CB $4F
    jr nz, jr_025_645D                            ; $6447: $20 $14

    ld hl, $0000                                  ; $6449: $21 $00 $00
    call Call_000_2FEB                            ; $644C: $CD $EB $2F
    ld hl, $FD00                                  ; $644F: $21 $00 $FD
    call Call_000_305D                            ; $6452: $CD $5D $30
    ld hl, $002A                                  ; $6455: $21 $2A $00
    add hl, de                                    ; $6458: $19
    ld [hl], $80                                  ; $6459: $36 $80
    jr jr_025_6483                                ; $645B: $18 $26

jr_025_645D:
    ld hl, $0100                                  ; $645D: $21 $00 $01
    call Call_000_2FEB                            ; $6460: $CD $EB $2F
    ld hl, $FD00                                  ; $6463: $21 $00 $FD
    call Call_000_305D                            ; $6466: $CD $5D $30
    ld hl, $002A                                  ; $6469: $21 $2A $00
    add hl, de                                    ; $646C: $19
    ld [hl], $C0                                  ; $646D: $36 $C0
    jr jr_025_6483                                ; $646F: $18 $12

jr_025_6471:
    ld hl, $0100                                  ; $6471: $21 $00 $01
    call Call_000_2FEB                            ; $6474: $CD $EB $2F
    ld hl, $FD00                                  ; $6477: $21 $00 $FD
    call Call_000_305D                            ; $647A: $CD $5D $30
    ld hl, $002A                                  ; $647D: $21 $2A $00
    add hl, de                                    ; $6480: $19
    ld [hl], $00                                  ; $6481: $36 $00

jr_025_6483:
    pop de                                        ; $6483: $D1
    pop bc                                        ; $6484: $C1
    ret                                           ; $6485: $C9


Call_025_6486:
    ld a, $AF                                     ; $6486: $3E $AF
    call Call_000_1360                            ; $6488: $CD $60 $13
    push bc                                       ; $648B: $C5
    push de                                       ; $648C: $D5
    ld hl, $0030                                  ; $648D: $21 $30 $00
    add hl, bc                                    ; $6490: $09
    ld a, [hl]                                    ; $6491: $7E
    or a                                          ; $6492: $B7
    jr nz, jr_025_6498                            ; $6493: $20 $03

    xor a                                         ; $6495: $AF
    jr jr_025_6499                                ; $6496: $18 $01

jr_025_6498:
    scf                                           ; $6498: $37

jr_025_6499:
    ld hl, $0022                                  ; $6499: $21 $22 $00
    push af                                       ; $649C: $F5
    add hl, bc                                    ; $649D: $09
    pop af                                        ; $649E: $F1
    ld a, [hl]                                    ; $649F: $7E
    push af                                       ; $64A0: $F5
    call Call_000_25D1                            ; $64A1: $CD $D1 $25
    ld hl, $0021                                  ; $64A4: $21 $21 $00
    add hl, de                                    ; $64A7: $19
    ld [hl], $25                                  ; $64A8: $36 $25
    inc hl                                        ; $64AA: $23
    ld [hl], $0A                                  ; $64AB: $36 $0A
    inc hl                                        ; $64AD: $23
    ld [hl], $68                                  ; $64AE: $36 $68
    ld hl, $0011                                  ; $64B0: $21 $11 $00
    add hl, de                                    ; $64B3: $19
    ld [hl], $02                                  ; $64B4: $36 $02
    inc hl                                        ; $64B6: $23
    ld [hl], $D4                                  ; $64B7: $36 $D4
    inc hl                                        ; $64B9: $23
    ld [hl], $64                                  ; $64BA: $36 $64
    inc hl                                        ; $64BC: $23
    ld [hl], $00                                  ; $64BD: $36 $00
    ld hl, $001C                                  ; $64BF: $21 $1C $00
    add hl, de                                    ; $64C2: $19
    ld [hl], $00                                  ; $64C3: $36 $00
    inc hl                                        ; $64C5: $23
    ld [hl], $00                                  ; $64C6: $36 $00
    ld hl, $0029                                  ; $64C8: $21 $29 $00
    add hl, de                                    ; $64CB: $19
    ld [hl], $00                                  ; $64CC: $36 $00
    inc hl                                        ; $64CE: $23
    ld [hl], $1E                                  ; $64CF: $36 $1E
    call Call_000_2614                            ; $64D1: $CD $14 $26
    ld hl, $1000                                  ; $64D4: $21 $00 $10
    call Call_000_2F79                            ; $64D7: $CD $79 $2F
    pop af                                        ; $64DA: $F1
    jr c, jr_025_64EB                             ; $64DB: $38 $0E

    bit 1, a                                      ; $64DD: $CB $4F
    jr nz, jr_025_64E6                            ; $64DF: $20 $05

    ld hl, $0080                                  ; $64E1: $21 $80 $00
    jr jr_025_64EE                                ; $64E4: $18 $08

jr_025_64E6:
    ld hl, $0100                                  ; $64E6: $21 $00 $01
    jr jr_025_64EE                                ; $64E9: $18 $03

jr_025_64EB:
    ld hl, $0180                                  ; $64EB: $21 $80 $01

jr_025_64EE:
    call Call_000_2FEB                            ; $64EE: $CD $EB $2F
    pop de                                        ; $64F1: $D1
    pop bc                                        ; $64F2: $C1
    ret                                           ; $64F3: $C9


Call_025_64F4:
    ld a, $AF                                     ; $64F4: $3E $AF
    call Call_000_1360                            ; $64F6: $CD $60 $13
    push bc                                       ; $64F9: $C5
    push de                                       ; $64FA: $D5
    ld hl, $0030                                  ; $64FB: $21 $30 $00
    add hl, bc                                    ; $64FE: $09
    ld a, [hl]                                    ; $64FF: $7E
    or a                                          ; $6500: $B7
    jr nz, jr_025_6506                            ; $6501: $20 $03

    xor a                                         ; $6503: $AF
    jr jr_025_6507                                ; $6504: $18 $01

jr_025_6506:
    scf                                           ; $6506: $37

jr_025_6507:
    ld hl, $0022                                  ; $6507: $21 $22 $00
    push af                                       ; $650A: $F5
    add hl, bc                                    ; $650B: $09
    pop af                                        ; $650C: $F1
    ld a, [hl]                                    ; $650D: $7E
    push af                                       ; $650E: $F5
    call Call_000_25D1                            ; $650F: $CD $D1 $25
    ld hl, $0021                                  ; $6512: $21 $21 $00
    add hl, de                                    ; $6515: $19
    ld [hl], $25                                  ; $6516: $36 $25
    inc hl                                        ; $6518: $23
    ld [hl], $0A                                  ; $6519: $36 $0A
    inc hl                                        ; $651B: $23
    ld [hl], $68                                  ; $651C: $36 $68
    ld hl, $0011                                  ; $651E: $21 $11 $00
    add hl, de                                    ; $6521: $19
    ld [hl], $02                                  ; $6522: $36 $02
    inc hl                                        ; $6524: $23
    ld [hl], $DE                                  ; $6525: $36 $DE
    inc hl                                        ; $6527: $23
    ld [hl], $64                                  ; $6528: $36 $64
    inc hl                                        ; $652A: $23
    ld [hl], $00                                  ; $652B: $36 $00
    ld hl, $001C                                  ; $652D: $21 $1C $00
    add hl, de                                    ; $6530: $19
    ld [hl], $00                                  ; $6531: $36 $00
    inc hl                                        ; $6533: $23
    ld [hl], $00                                  ; $6534: $36 $00
    ld hl, $0029                                  ; $6536: $21 $29 $00
    add hl, de                                    ; $6539: $19
    ld [hl], $00                                  ; $653A: $36 $00
    inc hl                                        ; $653C: $23
    ld [hl], $1E                                  ; $653D: $36 $1E
    call Call_000_2614                            ; $653F: $CD $14 $26
    ld hl, $F000                                  ; $6542: $21 $00 $F0
    call Call_000_2F79                            ; $6545: $CD $79 $2F
    pop af                                        ; $6548: $F1
    jr c, jr_025_6559                             ; $6549: $38 $0E

    bit 1, a                                      ; $654B: $CB $4F
    jr nz, jr_025_6554                            ; $654D: $20 $05

    ld hl, $FF80                                  ; $654F: $21 $80 $FF
    jr jr_025_655C                                ; $6552: $18 $08

jr_025_6554:
    ld hl, $FF00                                  ; $6554: $21 $00 $FF
    jr jr_025_655C                                ; $6557: $18 $03

jr_025_6559:
    ld hl, $FE80                                  ; $6559: $21 $80 $FE

jr_025_655C:
    call Call_000_2FEB                            ; $655C: $CD $EB $2F
    pop de                                        ; $655F: $D1
    pop bc                                        ; $6560: $C1
    ret                                           ; $6561: $C9


Call_025_6562:
    ld a, $14                                     ; $6562: $3E $14
    call Call_000_1360                            ; $6564: $CD $60 $13
    push bc                                       ; $6567: $C5
    push de                                       ; $6568: $D5
    call Call_000_25D1                            ; $6569: $CD $D1 $25
    ld hl, $0021                                  ; $656C: $21 $21 $00
    add hl, de                                    ; $656F: $19
    ld [hl], $25                                  ; $6570: $36 $25
    inc hl                                        ; $6572: $23
    ld [hl], $BD                                  ; $6573: $36 $BD
    inc hl                                        ; $6575: $23
    ld [hl], $65                                  ; $6576: $36 $65
    ld hl, $0011                                  ; $6578: $21 $11 $00
    add hl, de                                    ; $657B: $19
    ld [hl], $02                                  ; $657C: $36 $02
    inc hl                                        ; $657E: $23
    ld [hl], $E8                                  ; $657F: $36 $E8
    inc hl                                        ; $6581: $23
    ld [hl], $64                                  ; $6582: $36 $64
    inc hl                                        ; $6584: $23
    ld [hl], $00                                  ; $6585: $36 $00
    ld hl, $001C                                  ; $6587: $21 $1C $00
    add hl, de                                    ; $658A: $19
    ld [hl], $00                                  ; $658B: $36 $00
    inc hl                                        ; $658D: $23
    ld [hl], $00                                  ; $658E: $36 $00
    ld hl, $0029                                  ; $6590: $21 $29 $00
    add hl, de                                    ; $6593: $19
    ld [hl], $00                                  ; $6594: $36 $00
    inc hl                                        ; $6596: $23
    ld [hl], $1E                                  ; $6597: $36 $1E
    ld hl, $000E                                  ; $6599: $21 $0E $00
    add hl, de                                    ; $659C: $19
    ld [hl], $CC                                  ; $659D: $36 $CC
    call Call_000_2614                            ; $659F: $CD $14 $26
    ld hl, $0A00                                  ; $65A2: $21 $00 $0A
    call Call_000_2F79                            ; $65A5: $CD $79 $2F
    ld hl, $E800                                  ; $65A8: $21 $00 $E8
    call Call_000_2F42                            ; $65AB: $CD $42 $2F
    ld hl, $0300                                  ; $65AE: $21 $00 $03
    call Call_000_2FEB                            ; $65B1: $CD $EB $2F
    ld hl, $FA00                                  ; $65B4: $21 $00 $FA
    call Call_000_305D                            ; $65B7: $CD $5D $30
    pop de                                        ; $65BA: $D1
    pop bc                                        ; $65BB: $C1
    ret                                           ; $65BC: $C9


    ld hl, $0000                                  ; $65BD: $21 $00 $00
    call Call_000_26F3                            ; $65C0: $CD $F3 $26
    ld hl, $0000                                  ; $65C3: $21 $00 $00
    call Call_000_315D                            ; $65C6: $CD $5D $31
    ld hl, $0006                                  ; $65C9: $21 $06 $00
    add hl, de                                    ; $65CC: $19
    ld a, [hl]                                    ; $65CD: $7E
    cp $10                                        ; $65CE: $FE $10
    jr nc, jr_025_65EC                            ; $65D0: $30 $1A

    ld hl, $0006                                  ; $65D2: $21 $06 $00
    add hl, de                                    ; $65D5: $19
    ld [hl], $10                                  ; $65D6: $36 $10
    ld hl, $0021                                  ; $65D8: $21 $21 $00
    add hl, de                                    ; $65DB: $19
    ld [hl], $25                                  ; $65DC: $36 $25
    inc hl                                        ; $65DE: $23
    ld [hl], $F4                                  ; $65DF: $36 $F4
    inc hl                                        ; $65E1: $23
    ld [hl], $65                                  ; $65E2: $36 $65
    ld hl, $002A                                  ; $65E4: $21 $2A $00
    add hl, de                                    ; $65E7: $19
    ld [hl], $3C                                  ; $65E8: $36 $3C
    jr jr_025_65EF                                ; $65EA: $18 $03

jr_025_65EC:
    call Call_000_2E25                            ; $65EC: $CD $25 $2E

jr_025_65EF:
    ret                                           ; $65EF: $C9


    call Call_000_27F5                            ; $65F0: $CD $F5 $27
    ret                                           ; $65F3: $C9


    ld hl, $002A                                  ; $65F4: $21 $2A $00
    add hl, de                                    ; $65F7: $19
    dec [hl]                                      ; $65F8: $35
    jr z, jr_025_6629                             ; $65F9: $28 $2E

    ld hl, $002D                                  ; $65FB: $21 $2D $00
    add hl, bc                                    ; $65FE: $09
    ld a, [hl]                                    ; $65FF: $7E
    or a                                          ; $6600: $B7
    jr nz, jr_025_6608                            ; $6601: $20 $05

    ld a, [$D6C4]                                 ; $6603: $FA $C4 $D6
    jr jr_025_660B                                ; $6606: $18 $03

jr_025_6608:
    ld a, [$D684]                                 ; $6608: $FA $84 $D6

jr_025_660B:
    ld hl, $0004                                  ; $660B: $21 $04 $00
    add hl, de                                    ; $660E: $19
    sub [hl]                                      ; $660F: $96
    ld h, a                                       ; $6610: $67
    ld l, $00                                     ; $6611: $2E $00
    sra h                                         ; $6613: $CB $2C
    rr l                                          ; $6615: $CB $1D
    sra h                                         ; $6617: $CB $2C
    rr l                                          ; $6619: $CB $1D
    sra h                                         ; $661B: $CB $2C
    rr l                                          ; $661D: $CB $1D
    sra h                                         ; $661F: $CB $2C
    rr l                                          ; $6621: $CB $1D
    call Call_000_2F0B                            ; $6623: $CD $0B $2F
    jp Jump_025_6692                              ; $6626: $C3 $92 $66


jr_025_6629:
    call Call_000_2637                            ; $6629: $CD $37 $26
    ld hl, $002D                                  ; $662C: $21 $2D $00
    add hl, bc                                    ; $662F: $09
    ld a, [hl]                                    ; $6630: $7E
    or a                                          ; $6631: $B7
    jr nz, jr_025_663C                            ; $6632: $20 $08

    ld hl, $000E                                  ; $6634: $21 $0E $00
    add hl, de                                    ; $6637: $19
    ld [hl], $80                                  ; $6638: $36 $80
    jr jr_025_6642                                ; $663A: $18 $06

jr_025_663C:
    ld hl, $000E                                  ; $663C: $21 $0E $00
    add hl, de                                    ; $663F: $19
    ld [hl], $A6                                  ; $6640: $36 $A6

jr_025_6642:
    ld hl, $0004                                  ; $6642: $21 $04 $00
    add hl, de                                    ; $6645: $19
    ld a, [hl]                                    ; $6646: $7E
    ld hl, $002B                                  ; $6647: $21 $2B $00
    add hl, de                                    ; $664A: $19
    ld [hl], a                                    ; $664B: $77
    ld hl, $0072                                  ; $664C: $21 $72 $00
    add hl, bc                                    ; $664F: $09
    ld a, [hl]                                    ; $6650: $7E
    ld hl, $002C                                  ; $6651: $21 $2C $00
    add hl, de                                    ; $6654: $19
    ld [hl], a                                    ; $6655: $77
    ld hl, $0309                                  ; $6656: $21 $09 $03
    ld a, $B3                                     ; $6659: $3E $B3
    call Call_000_34E0                            ; $665B: $CD $E0 $34
    ld a, $14                                     ; $665E: $3E $14
    call Call_000_1360                            ; $6660: $CD $60 $13
    ld hl, $0021                                  ; $6663: $21 $21 $00
    add hl, de                                    ; $6666: $19
    ld [hl], $25                                  ; $6667: $36 $25
    inc hl                                        ; $6669: $23
    ld [hl], $9A                                  ; $666A: $36 $9A
    inc hl                                        ; $666C: $23
    ld [hl], $66                                  ; $666D: $36 $66
    ld hl, $0011                                  ; $666F: $21 $11 $00
    add hl, de                                    ; $6672: $19
    ld [hl], $02                                  ; $6673: $36 $02
    inc hl                                        ; $6675: $23
    ld [hl], $90                                  ; $6676: $36 $90
    inc hl                                        ; $6678: $23
    ld [hl], $65                                  ; $6679: $36 $65
    inc hl                                        ; $667B: $23
    ld [hl], $00                                  ; $667C: $36 $00
    ld hl, $001C                                  ; $667E: $21 $1C $00
    add hl, de                                    ; $6681: $19
    ld [hl], $00                                  ; $6682: $36 $00
    inc hl                                        ; $6684: $23
    ld [hl], $00                                  ; $6685: $36 $00
    ld hl, $0029                                  ; $6687: $21 $29 $00
    add hl, de                                    ; $668A: $19
    ld [hl], $00                                  ; $668B: $36 $00
    inc hl                                        ; $668D: $23
    ld [hl], $06                                  ; $668E: $36 $06
    jr jr_025_6695                                ; $6690: $18 $03

Jump_025_6692:
    call Call_000_2E25                            ; $6692: $CD $25 $2E

jr_025_6695:
    ret                                           ; $6695: $C9


    call Call_000_27F5                            ; $6696: $CD $F5 $27
    ret                                           ; $6699: $C9


    ld hl, $0014                                  ; $669A: $21 $14 $00
    add hl, de                                    ; $669D: $19
    ld a, [hl]                                    ; $669E: $7E
    cp $08                                        ; $669F: $FE $08
    jr z, jr_025_66D6                             ; $66A1: $28 $33

    ld hl, $002D                                  ; $66A3: $21 $2D $00
    add hl, bc                                    ; $66A6: $09
    ld a, [hl]                                    ; $66A7: $7E
    or a                                          ; $66A8: $B7
    jr nz, jr_025_66B0                            ; $66A9: $20 $05

    ld a, [$D6C4]                                 ; $66AB: $FA $C4 $D6
    jr jr_025_66B3                                ; $66AE: $18 $03

jr_025_66B0:
    ld a, [$D684]                                 ; $66B0: $FA $84 $D6

jr_025_66B3:
    ld hl, $0004                                  ; $66B3: $21 $04 $00
    add hl, de                                    ; $66B6: $19
    sub [hl]                                      ; $66B7: $96
    ld h, a                                       ; $66B8: $67
    ld l, $00                                     ; $66B9: $2E $00
    sra h                                         ; $66BB: $CB $2C
    rr l                                          ; $66BD: $CB $1D
    sra h                                         ; $66BF: $CB $2C
    rr l                                          ; $66C1: $CB $1D
    sra h                                         ; $66C3: $CB $2C
    rr l                                          ; $66C5: $CB $1D
    sra h                                         ; $66C7: $CB $2C
    rr l                                          ; $66C9: $CB $1D
    sra h                                         ; $66CB: $CB $2C
    rr l                                          ; $66CD: $CB $1D
    call Call_000_2F0B                            ; $66CF: $CD $0B $2F

Jump_025_66D2:
jr_025_66D2:
    call Call_000_2E25                            ; $66D2: $CD $25 $2E
    ret                                           ; $66D5: $C9


jr_025_66D6:
    call Call_000_2CA9                            ; $66D6: $CD $A9 $2C
    jr nc, jr_025_66D2                            ; $66D9: $30 $F7

    ld hl, $002A                                  ; $66DB: $21 $2A $00
    add hl, de                                    ; $66DE: $19
    dec [hl]                                      ; $66DF: $35
    jr z, jr_025_6712                             ; $66E0: $28 $30

    ld hl, $002C                                  ; $66E2: $21 $2C $00
    add hl, de                                    ; $66E5: $19
    bit 2, [hl]                                   ; $66E6: $CB $56
    jr z, jr_025_66F0                             ; $66E8: $28 $06

    ld hl, $0099                                  ; $66EA: $21 $99 $00
    add hl, bc                                    ; $66ED: $09
    jr jr_025_66F4                                ; $66EE: $18 $04

jr_025_66F0:
    ld hl, $002B                                  ; $66F0: $21 $2B $00
    add hl, de                                    ; $66F3: $19

jr_025_66F4:
    call Call_000_17E2                            ; $66F4: $CD $E2 $17
    bit 7, a                                      ; $66F7: $CB $7F
    jr nz, jr_025_6700                            ; $66F9: $20 $05

    and $07                                       ; $66FB: $E6 $07
    add [hl]                                      ; $66FD: $86
    jr jr_025_6705                                ; $66FE: $18 $05

jr_025_6700:
    and $07                                       ; $6700: $E6 $07
    cpl                                           ; $6702: $2F
    inc a                                         ; $6703: $3C
    add [hl]                                      ; $6704: $86

jr_025_6705:
    ld hl, $0004                                  ; $6705: $21 $04 $00
    add hl, de                                    ; $6708: $19
    ld [hl], a                                    ; $6709: $77
    ld a, $07                                     ; $670A: $3E $07
    call Call_000_3963                            ; $670C: $CD $63 $39
    jp Jump_025_66D2                              ; $670F: $C3 $D2 $66


jr_025_6712:
    call Call_000_27F5                            ; $6712: $CD $F5 $27
    ret                                           ; $6715: $C9


    ld hl, $0020                                  ; $6716: $21 $20 $00
    call Call_000_26F3                            ; $6719: $CD $F3 $26
    jr c, jr_025_674E                             ; $671C: $38 $30

    ld hl, $FFF0                                  ; $671E: $21 $F0 $FF
    call Call_000_315D                            ; $6721: $CD $5D $31
    jp c, Jump_025_674E                           ; $6724: $DA $4E $67

    ld hl, $0014                                  ; $6727: $21 $14 $00
    add hl, de                                    ; $672A: $19
    ld a, [hl]                                    ; $672B: $7E
    cp $00                                        ; $672C: $FE $00
    jr z, jr_025_6738                             ; $672E: $28 $08

    cp $04                                        ; $6730: $FE $04
    jr z, jr_025_6741                             ; $6732: $28 $0D

    cp $08                                        ; $6734: $FE $08
    jr z, jr_025_674D                             ; $6736: $28 $15

jr_025_6738:
    ld a, $01                                     ; $6738: $3E $01
    ld h, $FF                                     ; $673A: $26 $FF
    call Call_000_2D7F                            ; $673C: $CD $7F $2D
    jr jr_025_674A                                ; $673F: $18 $09

jr_025_6741:
    ld a, $FF                                     ; $6741: $3E $FF
    ld h, $FF                                     ; $6743: $26 $FF
    call Call_000_2D7F                            ; $6745: $CD $7F $2D
    jr jr_025_674A                                ; $6748: $18 $00

jr_025_674A:
    call Call_000_2E25                            ; $674A: $CD $25 $2E

jr_025_674D:
    ret                                           ; $674D: $C9


Jump_025_674E:
jr_025_674E:
    call Call_000_27F5                            ; $674E: $CD $F5 $27
    ret                                           ; $6751: $C9


    ld hl, $0020                                  ; $6752: $21 $20 $00
    call Call_000_26F3                            ; $6755: $CD $F3 $26
    jr c, jr_025_678A                             ; $6758: $38 $30

    ld hl, $0008                                  ; $675A: $21 $08 $00
    call Call_000_315D                            ; $675D: $CD $5D $31
    jp c, Jump_025_678A                           ; $6760: $DA $8A $67

    ld hl, $0014                                  ; $6763: $21 $14 $00
    add hl, de                                    ; $6766: $19
    ld a, [hl]                                    ; $6767: $7E
    cp $00                                        ; $6768: $FE $00
    jr z, jr_025_6774                             ; $676A: $28 $08

    cp $04                                        ; $676C: $FE $04
    jr z, jr_025_677D                             ; $676E: $28 $0D

    cp $08                                        ; $6770: $FE $08
    jr z, jr_025_6789                             ; $6772: $28 $15

jr_025_6774:
    ld a, $FE                                     ; $6774: $3E $FE
    ld h, $FF                                     ; $6776: $26 $FF
    call Call_000_2D5C                            ; $6778: $CD $5C $2D
    jr jr_025_6786                                ; $677B: $18 $09

jr_025_677D:
    ld a, $01                                     ; $677D: $3E $01
    ld h, $FF                                     ; $677F: $26 $FF
    call Call_000_2D5C                            ; $6781: $CD $5C $2D
    jr jr_025_6786                                ; $6784: $18 $00

jr_025_6786:
    call Call_000_2E25                            ; $6786: $CD $25 $2E

jr_025_6789:
    ret                                           ; $6789: $C9


Jump_025_678A:
jr_025_678A:
    call Call_000_27F5                            ; $678A: $CD $F5 $27
    ret                                           ; $678D: $C9


    ld hl, $0000                                  ; $678E: $21 $00 $00
    call Call_000_26F3                            ; $6791: $CD $F3 $26
    ld hl, $0060                                  ; $6794: $21 $60 $00
    call Call_000_315D                            ; $6797: $CD $5D $31
    jp c, Jump_025_679F                           ; $679A: $DA $9F $67

    jr jr_025_67BB                                ; $679D: $18 $1C

Jump_025_679F:
    ld a, $B7                                     ; $679F: $3E $B7
    call Call_000_1360                            ; $67A1: $CD $60 $13
    ld hl, $0021                                  ; $67A4: $21 $21 $00
    add hl, de                                    ; $67A7: $19
    ld [hl], $25                                  ; $67A8: $36 $25
    inc hl                                        ; $67AA: $23
    ld [hl], $BC                                  ; $67AB: $36 $BC
    inc hl                                        ; $67AD: $23
    ld [hl], $67                                  ; $67AE: $36 $67
    ld hl, $0029                                  ; $67B0: $21 $29 $00
    add hl, de                                    ; $67B3: $19
    ld [hl], $00                                  ; $67B4: $36 $00
    jr jr_025_67BB                                ; $67B6: $18 $03

    call Call_000_27F5                            ; $67B8: $CD $F5 $27

jr_025_67BB:
    ret                                           ; $67BB: $C9


    ld hl, $002A                                  ; $67BC: $21 $2A $00
    add hl, de                                    ; $67BF: $19
    dec [hl]                                      ; $67C0: $35
    jr z, jr_025_67CD                             ; $67C1: $28 $0A

    ld hl, $0028                                  ; $67C3: $21 $28 $00
    add hl, de                                    ; $67C6: $19
    ld a, [hl]                                    ; $67C7: $7E
    or a                                          ; $67C8: $B7
    jr nz, jr_025_67CD                            ; $67C9: $20 $02

    jr jr_025_6809                                ; $67CB: $18 $3C

jr_025_67CD:
    ld hl, $0408                                  ; $67CD: $21 $08 $04
    ld a, $33                                     ; $67D0: $3E $33
    call Call_000_34E0                            ; $67D2: $CD $E0 $34
    ld a, $14                                     ; $67D5: $3E $14
    call Call_000_1360                            ; $67D7: $CD $60 $13
    ld hl, $0021                                  ; $67DA: $21 $21 $00
    add hl, de                                    ; $67DD: $19
    ld [hl], $25                                  ; $67DE: $36 $25
    inc hl                                        ; $67E0: $23
    ld [hl], $FF                                  ; $67E1: $36 $FF
    inc hl                                        ; $67E3: $23
    ld [hl], $5B                                  ; $67E4: $36 $5B
    ld hl, $0011                                  ; $67E6: $21 $11 $00
    add hl, de                                    ; $67E9: $19
    ld [hl], $02                                  ; $67EA: $36 $02
    inc hl                                        ; $67EC: $23
    ld [hl], $82                                  ; $67ED: $36 $82
    inc hl                                        ; $67EF: $23
    ld [hl], $65                                  ; $67F0: $36 $65
    inc hl                                        ; $67F2: $23
    ld [hl], $00                                  ; $67F3: $36 $00
    ld hl, $001C                                  ; $67F5: $21 $1C $00
    add hl, de                                    ; $67F8: $19
    ld [hl], $03                                  ; $67F9: $36 $03
    inc hl                                        ; $67FB: $23
    ld [hl], $03                                  ; $67FC: $36 $03
    ld hl, $0029                                  ; $67FE: $21 $29 $00
    add hl, de                                    ; $6801: $19
    ld [hl], $00                                  ; $6802: $36 $00
    jr jr_025_6809                                ; $6804: $18 $03

    call Call_000_27F5                            ; $6806: $CD $F5 $27

jr_025_6809:
    ret                                           ; $6809: $C9


    ld hl, $0000                                  ; $680A: $21 $00 $00
    call Call_000_26F3                            ; $680D: $CD $F3 $26
    call Call_000_2E25                            ; $6810: $CD $25 $2E
    ld hl, $002A                                  ; $6813: $21 $2A $00
    add hl, de                                    ; $6816: $19
    dec [hl]                                      ; $6817: $35
    jr nz, jr_025_681D                            ; $6818: $20 $03

    call Call_000_27F5                            ; $681A: $CD $F5 $27

jr_025_681D:
    ret                                           ; $681D: $C9


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
