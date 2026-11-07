; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    ld de, $4319                                  ; $4000: $11 $19 $43
    ld hl, $9820                                  ; $4003: $21 $20 $98
    ld b, $09                                     ; $4006: $06 $09
    ld c, $01                                     ; $4008: $0E $01
    call Call_000_10C0                            ; $400A: $CD $C0 $10
    ld de, $4319                                  ; $400D: $11 $19 $43
    ld hl, $982B                                  ; $4010: $21 $2B $98
    ld b, $09                                     ; $4013: $06 $09
    ld c, $01                                     ; $4015: $0E $01
    call Call_000_10C0                            ; $4017: $CD $C0 $10
    ld hl, $9BC0                                  ; $401A: $21 $C0 $9B
    ld b, $14                                     ; $401D: $06 $14
    ld c, $01                                     ; $401F: $0E $01
    ld d, $00                                     ; $4021: $16 $00
    ld e, $00                                     ; $4023: $1E $00
    call Call_000_10EA                            ; $4025: $CD $EA $10
    ld de, $432B                                  ; $4028: $11 $2B $43
    ld hl, $9BE0                                  ; $402B: $21 $E0 $9B
    ld b, $14                                     ; $402E: $06 $14
    ld c, $01                                     ; $4030: $0E $01
    call Call_000_10C0                            ; $4032: $CD $C0 $10
    ld hl, $9860                                  ; $4035: $21 $60 $98
    ld b, $14                                     ; $4038: $06 $14
    ld c, $01                                     ; $403A: $0E $01
    ld d, $00                                     ; $403C: $16 $00
    ld e, $00                                     ; $403E: $1E $00
    call Call_000_10EA                            ; $4040: $CD $EA $10
    call Call_005_40F3                            ; $4043: $CD $F3 $40
    call Call_005_4147                            ; $4046: $CD $47 $41
    ld a, [$C2D2]                                 ; $4049: $FA $D2 $C2
    or a                                          ; $404C: $B7
    jp nz, Jump_005_40F2                          ; $404D: $C2 $F2 $40

    ld de, $4353                                  ; $4050: $11 $53 $43
    ld hl, $9840                                  ; $4053: $21 $40 $98
    ld b, $06                                     ; $4056: $06 $06
    ld c, $01                                     ; $4058: $0E $01
    call Call_000_10C0                            ; $405A: $CD $C0 $10
    ld de, $4353                                  ; $405D: $11 $53 $43
    ld hl, $984E                                  ; $4060: $21 $4E $98
    ld b, $06                                     ; $4063: $06 $06
    ld c, $01                                     ; $4065: $0E $01
    call Call_000_10C0                            ; $4067: $CD $C0 $10
    ld a, [$C2C6]                                 ; $406A: $FA $C6 $C2
    bit 1, a                                      ; $406D: $CB $4F
    jp nz, Jump_005_408B                          ; $406F: $C2 $8B $40

    ld a, [$C2D0]                                 ; $4072: $FA $D0 $C2
    or a                                          ; $4075: $B7
    jp nz, Jump_005_407F                          ; $4076: $C2 $7F $40

    ld hl, $DA2E                                  ; $4079: $21 $2E $DA
    jp Jump_005_4082                              ; $407C: $C3 $82 $40


Jump_005_407F:
    ld hl, $D92E                                  ; $407F: $21 $2E $D9

Jump_005_4082:
    ld a, [hl]                                    ; $4082: $7E
    srl a                                         ; $4083: $CB $3F
    ld [$C2D1], a                                 ; $4085: $EA $D1 $C2
    jp Jump_005_40A3                              ; $4088: $C3 $A3 $40


Jump_005_408B:
    ld a, [$C2C5]                                 ; $408B: $FA $C5 $C2
    or a                                          ; $408E: $B7
    jr z, jr_005_40A3                             ; $408F: $28 $12

    bit 0, a                                      ; $4091: $CB $47
    jr z, jr_005_409A                             ; $4093: $28 $05

    ld hl, $D92E                                  ; $4095: $21 $2E $D9
    jr jr_005_409D                                ; $4098: $18 $03

jr_005_409A:
    ld hl, $DA2E                                  ; $409A: $21 $2E $DA

jr_005_409D:
    ld a, [hl]                                    ; $409D: $7E
    srl a                                         ; $409E: $CB $3F
    ld [$C2D1], a                                 ; $40A0: $EA $D1 $C2

Jump_005_40A3:
jr_005_40A3:
    ld a, [$C2D1]                                 ; $40A3: $FA $D1 $C2
    sla a                                         ; $40A6: $CB $27
    ld c, a                                       ; $40A8: $4F
    sla a                                         ; $40A9: $CB $27
    add c                                         ; $40AB: $81
    ld c, a                                       ; $40AC: $4F
    ld b, $00                                     ; $40AD: $06 $00
    ld hl, $435F                                  ; $40AF: $21 $5F $43
    add hl, bc                                    ; $40B2: $09
    ld c, [hl]                                    ; $40B3: $4E
    inc hl                                        ; $40B4: $23
    ld b, [hl]                                    ; $40B5: $46
    inc hl                                        ; $40B6: $23
    push hl                                       ; $40B7: $E5
    push bc                                       ; $40B8: $C5
    pop hl                                        ; $40B9: $E1
    ld de, $C329                                  ; $40BA: $11 $29 $C3
    call Call_000_124C                            ; $40BD: $CD $4C $12
    ld hl, $C329                                  ; $40C0: $21 $29 $C3
    ld de, $9000                                  ; $40C3: $11 $00 $90
    call Call_000_1188                            ; $40C6: $CD $88 $11
    pop hl                                        ; $40C9: $E1
    ld e, [hl]                                    ; $40CA: $5E
    inc hl                                        ; $40CB: $23
    ld d, [hl]                                    ; $40CC: $56
    inc hl                                        ; $40CD: $23
    push hl                                       ; $40CE: $E5
    push de                                       ; $40CF: $D5
    pop hl                                        ; $40D0: $E1
    ld de, $C329                                  ; $40D1: $11 $29 $C3
    call Call_000_124C                            ; $40D4: $CD $4C $12
    ld de, $C329                                  ; $40D7: $11 $29 $C3
    ld hl, $9880                                  ; $40DA: $21 $80 $98
    ld b, $20                                     ; $40DD: $06 $20
    ld c, $0D                                     ; $40DF: $0E $0D
    call Call_000_10C0                            ; $40E1: $CD $C0 $10
    pop hl                                        ; $40E4: $E1
    ld d, $00                                     ; $40E5: $16 $00
    ld e, [hl]                                    ; $40E7: $5E
    inc hl                                        ; $40E8: $23
    push hl                                       ; $40E9: $E5
    call Call_000_14C0                            ; $40EA: $CD $C0 $14
    pop hl                                        ; $40ED: $E1
    ld a, [hl]                                    ; $40EE: $7E
    ld [$C2D3], a                                 ; $40EF: $EA $D3 $C2

Jump_005_40F2:
    ret                                           ; $40F2: $C9


Call_005_40F3:
    ld a, [$C2C6]                                 ; $40F3: $FA $C6 $C2
    bit 4, a                                      ; $40F6: $CB $67
    jp nz, Jump_005_419B                          ; $40F8: $C2 $9B $41

    ld a, [$C2D2]                                 ; $40FB: $FA $D2 $C2
    cp $03                                        ; $40FE: $FE $03
    jr nz, jr_005_410F                            ; $4100: $20 $0D

    ld de, $4311                                  ; $4102: $11 $11 $43
    ld hl, $9860                                  ; $4105: $21 $60 $98
    ld bc, $0101                                  ; $4108: $01 $01 $01
    call Call_000_10C0                            ; $410B: $CD $C0 $10
    ret                                           ; $410E: $C9


jr_005_410F:
    ld a, [$D940]                                 ; $410F: $FA $40 $D9
    cp $01                                        ; $4112: $FE $01
    jr c, jr_005_411B                             ; $4114: $38 $05

    ld de, $4313                                  ; $4116: $11 $13 $43
    jr jr_005_411E                                ; $4119: $18 $03

jr_005_411B:
    ld de, $4311                                  ; $411B: $11 $11 $43

jr_005_411E:
    ld hl, $9860                                  ; $411E: $21 $60 $98
    ld bc, $0101                                  ; $4121: $01 $01 $01
    call Call_000_10C0                            ; $4124: $CD $C0 $10
    ld a, [$C2D2]                                 ; $4127: $FA $D2 $C2
    cp $03                                        ; $412A: $FE $03
    jr z, jr_005_4146                             ; $412C: $28 $18

    ld a, [$D940]                                 ; $412E: $FA $40 $D9
    cp $02                                        ; $4131: $FE $02
    jr c, jr_005_413A                             ; $4133: $38 $05

    ld de, $4313                                  ; $4135: $11 $13 $43
    jr jr_005_413D                                ; $4138: $18 $03

jr_005_413A:
    ld de, $4311                                  ; $413A: $11 $11 $43

jr_005_413D:
    ld hl, $9861                                  ; $413D: $21 $61 $98
    ld bc, $0101                                  ; $4140: $01 $01 $01
    call Call_000_10C0                            ; $4143: $CD $C0 $10

jr_005_4146:
    ret                                           ; $4146: $C9


Call_005_4147:
    ld a, [$C2C6]                                 ; $4147: $FA $C6 $C2
    bit 4, a                                      ; $414A: $CB $67
    jp nz, Jump_005_4256                          ; $414C: $C2 $56 $42

    ld a, [$C2D2]                                 ; $414F: $FA $D2 $C2
    cp $03                                        ; $4152: $FE $03
    jr nz, jr_005_4163                            ; $4154: $20 $0D

    ld de, $4311                                  ; $4156: $11 $11 $43
    ld hl, $9873                                  ; $4159: $21 $73 $98
    ld bc, $0101                                  ; $415C: $01 $01 $01
    call Call_000_10C0                            ; $415F: $CD $C0 $10
    ret                                           ; $4162: $C9


jr_005_4163:
    ld a, [$DA40]                                 ; $4163: $FA $40 $DA
    cp $01                                        ; $4166: $FE $01
    jr c, jr_005_416F                             ; $4168: $38 $05

    ld de, $4313                                  ; $416A: $11 $13 $43
    jr jr_005_4172                                ; $416D: $18 $03

jr_005_416F:
    ld de, $4311                                  ; $416F: $11 $11 $43

jr_005_4172:
    ld hl, $9873                                  ; $4172: $21 $73 $98
    ld bc, $0101                                  ; $4175: $01 $01 $01
    call Call_000_10C0                            ; $4178: $CD $C0 $10
    ld a, [$C2D2]                                 ; $417B: $FA $D2 $C2
    cp $03                                        ; $417E: $FE $03
    jr z, jr_005_419A                             ; $4180: $28 $18

    ld a, [$DA40]                                 ; $4182: $FA $40 $DA
    cp $02                                        ; $4185: $FE $02
    jr c, jr_005_418E                             ; $4187: $38 $05

    ld de, $4313                                  ; $4189: $11 $13 $43
    jr jr_005_4191                                ; $418C: $18 $03

jr_005_418E:
    ld de, $4311                                  ; $418E: $11 $11 $43

jr_005_4191:
    ld hl, $9872                                  ; $4191: $21 $72 $98
    ld bc, $0101                                  ; $4194: $01 $01 $01
    call Call_000_10C0                            ; $4197: $CD $C0 $10

jr_005_419A:
    ret                                           ; $419A: $C9


Jump_005_419B:
    ld a, [$D936]                                 ; $419B: $FA $36 $D9
    cp $00                                        ; $419E: $FE $00
    jp z, Jump_005_41BC                           ; $41A0: $CA $BC $41

    cp $01                                        ; $41A3: $FE $01
    jp z, Jump_005_41E3                           ; $41A5: $CA $E3 $41

    cp $02                                        ; $41A8: $FE $02
    jp z, Jump_005_420A                           ; $41AA: $CA $0A $42

    cp $03                                        ; $41AD: $FE $03
    jp nz, Jump_005_4231                          ; $41AF: $C2 $31 $42

    ld a, [$C2C3]                                 ; $41B2: $FA $C3 $C2
    or a                                          ; $41B5: $B7
    jp nz, Jump_005_420A                          ; $41B6: $C2 $0A $42

    jp Jump_005_4231                              ; $41B9: $C3 $31 $42


Jump_005_41BC:
    ld de, $4317                                  ; $41BC: $11 $17 $43
    ld hl, $9860                                  ; $41BF: $21 $60 $98
    ld bc, $0101                                  ; $41C2: $01 $01 $01
    call Call_000_10C0                            ; $41C5: $CD $C0 $10
    ld de, $4317                                  ; $41C8: $11 $17 $43
    ld hl, $9861                                  ; $41CB: $21 $61 $98
    ld bc, $0101                                  ; $41CE: $01 $01 $01
    call Call_000_10C0                            ; $41D1: $CD $C0 $10
    ld de, $4317                                  ; $41D4: $11 $17 $43
    ld hl, $9862                                  ; $41D7: $21 $62 $98
    ld bc, $0101                                  ; $41DA: $01 $01 $01
    call Call_000_10C0                            ; $41DD: $CD $C0 $10
    jp Jump_005_4255                              ; $41E0: $C3 $55 $42


Jump_005_41E3:
    ld de, $4315                                  ; $41E3: $11 $15 $43
    ld hl, $9860                                  ; $41E6: $21 $60 $98
    ld bc, $0101                                  ; $41E9: $01 $01 $01
    call Call_000_10C0                            ; $41EC: $CD $C0 $10
    ld de, $4317                                  ; $41EF: $11 $17 $43
    ld hl, $9861                                  ; $41F2: $21 $61 $98
    ld bc, $0101                                  ; $41F5: $01 $01 $01
    call Call_000_10C0                            ; $41F8: $CD $C0 $10
    ld de, $4317                                  ; $41FB: $11 $17 $43
    ld hl, $9862                                  ; $41FE: $21 $62 $98
    ld bc, $0101                                  ; $4201: $01 $01 $01
    call Call_000_10C0                            ; $4204: $CD $C0 $10
    jp Jump_005_4255                              ; $4207: $C3 $55 $42


Jump_005_420A:
    ld de, $4315                                  ; $420A: $11 $15 $43
    ld hl, $9860                                  ; $420D: $21 $60 $98
    ld bc, $0101                                  ; $4210: $01 $01 $01
    call Call_000_10C0                            ; $4213: $CD $C0 $10
    ld de, $4315                                  ; $4216: $11 $15 $43
    ld hl, $9861                                  ; $4219: $21 $61 $98
    ld bc, $0101                                  ; $421C: $01 $01 $01
    call Call_000_10C0                            ; $421F: $CD $C0 $10
    ld de, $4317                                  ; $4222: $11 $17 $43
    ld hl, $9862                                  ; $4225: $21 $62 $98
    ld bc, $0101                                  ; $4228: $01 $01 $01
    call Call_000_10C0                            ; $422B: $CD $C0 $10
    jp Jump_005_4255                              ; $422E: $C3 $55 $42


Jump_005_4231:
    ld de, $4315                                  ; $4231: $11 $15 $43
    ld hl, $9860                                  ; $4234: $21 $60 $98
    ld bc, $0101                                  ; $4237: $01 $01 $01
    call Call_000_10C0                            ; $423A: $CD $C0 $10
    ld de, $4315                                  ; $423D: $11 $15 $43
    ld hl, $9861                                  ; $4240: $21 $61 $98
    ld bc, $0101                                  ; $4243: $01 $01 $01
    call Call_000_10C0                            ; $4246: $CD $C0 $10
    ld de, $4315                                  ; $4249: $11 $15 $43
    ld hl, $9862                                  ; $424C: $21 $62 $98
    ld bc, $0101                                  ; $424F: $01 $01 $01
    call Call_000_10C0                            ; $4252: $CD $C0 $10

Jump_005_4255:
    ret                                           ; $4255: $C9


Jump_005_4256:
    ld a, [$DA36]                                 ; $4256: $FA $36 $DA
    cp $00                                        ; $4259: $FE $00
    jp z, Jump_005_4277                           ; $425B: $CA $77 $42

    cp $01                                        ; $425E: $FE $01
    jp z, Jump_005_429E                           ; $4260: $CA $9E $42

    cp $02                                        ; $4263: $FE $02
    jp z, Jump_005_42C5                           ; $4265: $CA $C5 $42

    cp $03                                        ; $4268: $FE $03
    jp nz, Jump_005_42EC                          ; $426A: $C2 $EC $42

    ld a, [$C2C3]                                 ; $426D: $FA $C3 $C2
    or a                                          ; $4270: $B7
    jp nz, Jump_005_42C5                          ; $4271: $C2 $C5 $42

    jp Jump_005_42EC                              ; $4274: $C3 $EC $42


Jump_005_4277:
    ld de, $4317                                  ; $4277: $11 $17 $43
    ld hl, $9873                                  ; $427A: $21 $73 $98
    ld bc, $0101                                  ; $427D: $01 $01 $01
    call Call_000_10C0                            ; $4280: $CD $C0 $10
    ld de, $4317                                  ; $4283: $11 $17 $43
    ld hl, $9872                                  ; $4286: $21 $72 $98
    ld bc, $0101                                  ; $4289: $01 $01 $01
    call Call_000_10C0                            ; $428C: $CD $C0 $10
    ld de, $4317                                  ; $428F: $11 $17 $43
    ld hl, $9871                                  ; $4292: $21 $71 $98
    ld bc, $0101                                  ; $4295: $01 $01 $01
    call Call_000_10C0                            ; $4298: $CD $C0 $10
    jp Jump_005_4310                              ; $429B: $C3 $10 $43


Jump_005_429E:
    ld de, $4315                                  ; $429E: $11 $15 $43
    ld hl, $9873                                  ; $42A1: $21 $73 $98
    ld bc, $0101                                  ; $42A4: $01 $01 $01
    call Call_000_10C0                            ; $42A7: $CD $C0 $10
    ld de, $4317                                  ; $42AA: $11 $17 $43
    ld hl, $9872                                  ; $42AD: $21 $72 $98
    ld bc, $0101                                  ; $42B0: $01 $01 $01
    call Call_000_10C0                            ; $42B3: $CD $C0 $10
    ld de, $4317                                  ; $42B6: $11 $17 $43
    ld hl, $9871                                  ; $42B9: $21 $71 $98
    ld bc, $0101                                  ; $42BC: $01 $01 $01
    call Call_000_10C0                            ; $42BF: $CD $C0 $10
    jp Jump_005_4310                              ; $42C2: $C3 $10 $43


Jump_005_42C5:
    ld de, $4315                                  ; $42C5: $11 $15 $43
    ld hl, $9873                                  ; $42C8: $21 $73 $98
    ld bc, $0101                                  ; $42CB: $01 $01 $01
    call Call_000_10C0                            ; $42CE: $CD $C0 $10
    ld de, $4315                                  ; $42D1: $11 $15 $43
    ld hl, $9872                                  ; $42D4: $21 $72 $98
    ld bc, $0101                                  ; $42D7: $01 $01 $01
    call Call_000_10C0                            ; $42DA: $CD $C0 $10
    ld de, $4317                                  ; $42DD: $11 $17 $43
    ld hl, $9871                                  ; $42E0: $21 $71 $98
    ld bc, $0101                                  ; $42E3: $01 $01 $01
    call Call_000_10C0                            ; $42E6: $CD $C0 $10
    jp Jump_005_4310                              ; $42E9: $C3 $10 $43


Jump_005_42EC:
    ld de, $4315                                  ; $42EC: $11 $15 $43
    ld hl, $9873                                  ; $42EF: $21 $73 $98
    ld bc, $0101                                  ; $42F2: $01 $01 $01
    call Call_000_10C0                            ; $42F5: $CD $C0 $10
    ld de, $4315                                  ; $42F8: $11 $15 $43
    ld hl, $9872                                  ; $42FB: $21 $72 $98
    ld bc, $0101                                  ; $42FE: $01 $01 $01
    call Call_000_10C0                            ; $4301: $CD $C0 $10
    ld de, $4315                                  ; $4304: $11 $15 $43
    ld hl, $9871                                  ; $4307: $21 $71 $98
    ld bc, $0101                                  ; $430A: $01 $01 $01
    call Call_000_10C0                            ; $430D: $CD $C0 $10

Jump_005_4310:
jr_005_4310:
    ret                                           ; $4310: $C9


    ld [bc], a                                    ; $4311: $02
    ld a, [hl]                                    ; $4312: $7E
    ld [bc], a                                    ; $4313: $02
    ld a, a                                       ; $4314: $7F
    nop                                           ; $4315: $00
    ld a, [hl]                                    ; $4316: $7E
    nop                                           ; $4317: $00
    ld a, a                                       ; $4318: $7F
    ld bc, $0100                                  ; $4319: $01 $00 $01
    nop                                           ; $431C: $00
    ld bc, $0100                                  ; $431D: $01 $00 $01
    nop                                           ; $4320: $00
    ld bc, $0100                                  ; $4321: $01 $00 $01
    nop                                           ; $4324: $00
    ld bc, $0100                                  ; $4325: $01 $00 $01
    nop                                           ; $4328: $00
    ld bc, $0000                                  ; $4329: $01 $00 $00
    nop                                           ; $432C: $00
    nop                                           ; $432D: $00
    add sp, $00                                   ; $432E: $E8 $00
    add sp, $00                                   ; $4330: $E8 $00
    add sp, $00                                   ; $4332: $E8 $00
    add sp, $00                                   ; $4334: $E8 $00
    add sp, $00                                   ; $4336: $E8 $00
    add sp, $00                                   ; $4338: $E8 $00
    add sp, $00                                   ; $433A: $E8 $00
    add sp, $00                                   ; $433C: $E8 $00
    db $DD                                        ; $433E: $DD
    nop                                           ; $433F: $00
    sbc $00                                       ; $4340: $DE $00
    db $EB                                        ; $4342: $EB
    nop                                           ; $4343: $00
    db $EB                                        ; $4344: $EB
    nop                                           ; $4345: $00
    db $EB                                        ; $4346: $EB
    nop                                           ; $4347: $00
    db $EB                                        ; $4348: $EB
    nop                                           ; $4349: $00
    db $EB                                        ; $434A: $EB
    nop                                           ; $434B: $00
    db $EB                                        ; $434C: $EB
    nop                                           ; $434D: $00
    db $EB                                        ; $434E: $EB
    nop                                           ; $434F: $00
    db $EB                                        ; $4350: $EB
    nop                                           ; $4351: $00
    nop                                           ; $4352: $00
    nop                                           ; $4353: $00
    nop                                           ; $4354: $00
    nop                                           ; $4355: $00
    nop                                           ; $4356: $00
    nop                                           ; $4357: $00
    nop                                           ; $4358: $00
    nop                                           ; $4359: $00
    nop                                           ; $435A: $00
    nop                                           ; $435B: $00
    nop                                           ; $435C: $00
    nop                                           ; $435D: $00
    nop                                           ; $435E: $00
    ld e, c                                       ; $435F: $59
    ld b, l                                       ; $4360: $45
    db $E3                                        ; $4361: $E3
    ld e, [hl]                                    ; $4362: $5E
    dec [hl]                                      ; $4363: $35
    add h                                         ; $4364: $84
    ld c, l                                       ; $4365: $4D
    ld d, h                                       ; $4366: $54
    ld hl, $3965                                  ; $4367: $21 $65 $39
    adc c                                         ; $436A: $89
    inc sp                                        ; $436B: $33
    ld c, b                                       ; $436C: $48
    dec sp                                        ; $436D: $3B
    ld h, b                                       ; $436E: $60
    ld [hl], $85                                  ; $436F: $36 $85
    ld c, l                                       ; $4371: $4D
    ld d, h                                       ; $4372: $54
    ld hl, $3A65                                  ; $4373: $21 $65 $3A
    adc b                                         ; $4376: $88
    rla                                           ; $4377: $17
    ld c, e                                       ; $4378: $4B
    ld l, a                                       ; $4379: $6F
    ld h, c                                       ; $437A: $61
    scf                                           ; $437B: $37
    add [hl]                                      ; $437C: $86
    dec c                                         ; $437D: $0D
    ld c, [hl]                                    ; $437E: $4E
    ld h, c                                       ; $437F: $61
    ld h, d                                       ; $4380: $62
    dec sp                                        ; $4381: $3B
    adc e                                         ; $4382: $8B
    dec b                                         ; $4383: $05
    ld d, c                                       ; $4384: $51
    db $FD                                        ; $4385: $FD
    ld h, e                                       ; $4386: $63
    jr c, jr_005_4310                             ; $4387: $38 $87

    dec b                                         ; $4389: $05
    ld d, a                                       ; $438A: $57
    add a                                         ; $438B: $87
    ld h, [hl]                                    ; $438C: $66
    inc a                                         ; $438D: $3C
    adc l                                         ; $438E: $8D
    and l                                         ; $438F: $A5
    ld e, h                                       ; $4390: $5C
    dec d                                         ; $4391: $15
    ld l, c                                       ; $4392: $69
    dec a                                         ; $4393: $3D
    adc h                                         ; $4394: $8C
    inc de                                        ; $4395: $13
    ld e, d                                       ; $4396: $5A
    rst RST_30                                    ; $4397: $F7
    ld h, a                                       ; $4398: $67
    ld a, $94                                     ; $4399: $3E $94
    nop                                           ; $439B: $00
    ld bc, $0302                                  ; $439C: $01 $02 $03
    inc b                                         ; $439F: $04
    dec b                                         ; $43A0: $05
    ld b, $07                                     ; $43A1: $06 $07
    ld [$1309], sp                                ; $43A3: $08 $09 $13
    ld b, b                                       ; $43A6: $40
    ld l, e                                       ; $43A7: $6B
    nop                                           ; $43A8: $00
    rlca                                          ; $43A9: $07
    ld b, $FE                                     ; $43AA: $06 $FE
    nop                                           ; $43AC: $00
    add b                                         ; $43AD: $80
    rlca                                          ; $43AE: $07
    ld [bc], a                                    ; $43AF: $02
    xor [hl]                                      ; $43B0: $AE
    ld a, l                                       ; $43B1: $7D
    adc [hl]                                      ; $43B2: $8E
    nop                                           ; $43B3: $00
    adc d                                         ; $43B4: $8A
    inc b                                         ; $43B5: $04
    add hl, sp                                    ; $43B6: $39
    ld a, l                                       ; $43B7: $7D
    add h                                         ; $43B8: $84
    db $ED                                        ; $43B9: $ED
    rlca                                          ; $43BA: $07
    nop                                           ; $43BB: $00
    rst RST_38                                    ; $43BC: $FF
    add d                                         ; $43BD: $82
    nop                                           ; $43BE: $00
    add hl, de                                    ; $43BF: $19
    adc b                                         ; $43C0: $88
    nop                                           ; $43C1: $00
    rst RST_30                                    ; $43C2: $F7
    rst RST_38                                    ; $43C3: $FF
    ld a, l                                       ; $43C4: $7D
    dec de                                        ; $43C5: $1B
    ld a, l                                       ; $43C6: $7D
    adc d                                         ; $43C7: $8A
    ld [bc], a                                    ; $43C8: $02
    ld a, e                                       ; $43C9: $7B
    ld bc, $FFBD                                  ; $43CA: $01 $BD $FF
    adc b                                         ; $43CD: $88
    nop                                           ; $43CE: $00
    rst RST_38                                    ; $43CF: $FF
    ld a, a                                       ; $43D0: $7F
    add hl, de                                    ; $43D1: $19
    adc d                                         ; $43D2: $8A
    nop                                           ; $43D3: $00
    rst RST_38                                    ; $43D4: $FF
    ld a, a                                       ; $43D5: $7F
    db $DB                                        ; $43D6: $DB
    dec b                                         ; $43D7: $05
    ld a, a                                       ; $43D8: $7F
    db $DB                                        ; $43D9: $DB
    rst RST_38                                    ; $43DA: $FF
    ld a, a                                       ; $43DB: $7F
    jp hl                                         ; $43DC: $E9


    cp l                                          ; $43DD: $BD
    ld a, a                                       ; $43DE: $7F
    xor [hl]                                      ; $43DF: $AE
    nop                                           ; $43E0: $00
    ld a, c                                       ; $43E1: $79
    inc bc                                        ; $43E2: $03
    ld a, a                                       ; $43E3: $7F
    and h                                         ; $43E4: $A4
    nop                                           ; $43E5: $00
    ld l, l                                       ; $43E6: $6D
    add h                                         ; $43E7: $84
    ld b, $FF                                     ; $43E8: $06 $FF
    add d                                         ; $43EA: $82
    nop                                           ; $43EB: $00
    reti                                          ; $43EC: $D9


    adc b                                         ; $43ED: $88
    nop                                           ; $43EE: $00
    push af                                       ; $43EF: $F5
    rst RST_38                                    ; $43F0: $FF
    ld a, l                                       ; $43F1: $7D
    dec de                                        ; $43F2: $1B
    ld a, l                                       ; $43F3: $7D
    xor d                                         ; $43F4: $AA
    nop                                           ; $43F5: $00
    adc d                                         ; $43F6: $8A
    nop                                           ; $43F7: $00
    rst RST_28                                    ; $43F8: $EF
    ld a, e                                       ; $43F9: $7B
    ld bc, $88FF                                  ; $43FA: $01 $FF $88
    nop                                           ; $43FD: $00
    rst RST_38                                    ; $43FE: $FF
    ld a, a                                       ; $43FF: $7F
    ld e, c                                       ; $4400: $59
    ld a, a                                       ; $4401: $7F
    adc d                                         ; $4402: $8A
    nop                                           ; $4403: $00
    ld a, a                                       ; $4404: $7F
    ld a, c                                       ; $4405: $79
    reti                                          ; $4406: $D9


    dec b                                         ; $4407: $05
    ld a, a                                       ; $4408: $7F
    db $DB                                        ; $4409: $DB
    ei                                            ; $440A: $FB
    rst RST_38                                    ; $440B: $FF
    ld a, a                                       ; $440C: $7F
    jp hl                                         ; $440D: $E9


    ld a, a                                       ; $440E: $7F
    ld a, e                                       ; $440F: $7B
    xor d                                         ; $4410: $AA
    nop                                           ; $4411: $00
    rst RST_38                                    ; $4412: $FF
    xor a                                         ; $4413: $AF
    ld a, c                                       ; $4414: $79
    and h                                         ; $4415: $A4
    nop                                           ; $4416: $00
    add h                                         ; $4417: $84
    nop                                           ; $4418: $00
    dec de                                        ; $4419: $1B
    ld bc, $6FFF                                  ; $441A: $01 $FF $6F
    add d                                         ; $441D: $82
    nop                                           ; $441E: $00
    add hl, de                                    ; $441F: $19
    adc b                                         ; $4420: $88
    nop                                           ; $4421: $00
    rst RST_38                                    ; $4422: $FF
    ld a, l                                       ; $4423: $7D
    add hl, de                                    ; $4424: $19
    xor a                                         ; $4425: $AF
    ld a, a                                       ; $4426: $7F
    xor d                                         ; $4427: $AA
    nop                                           ; $4428: $00
    adc d                                         ; $4429: $8A
    nop                                           ; $442A: $00
    ld a, e                                       ; $442B: $7B
    ld bc, $7BFF                                  ; $442C: $01 $FF $7B
    adc b                                         ; $442F: $88
    nop                                           ; $4430: $00
    rst RST_38                                    ; $4431: $FF
    ld a, a                                       ; $4432: $7F
    add hl, de                                    ; $4433: $19
    adc d                                         ; $4434: $8A
    nop                                           ; $4435: $00
    ld a, a                                       ; $4436: $7F
    cp a                                          ; $4437: $BF
    db $DB                                        ; $4438: $DB
    and d                                         ; $4439: $A2
    nop                                           ; $443A: $00
    add hl, de                                    ; $443B: $19
    ld bc, $D97F                                  ; $443C: $01 $7F $D9
    rst RST_38                                    ; $443F: $FF
    ei                                            ; $4440: $FB
    ld a, a                                       ; $4441: $7F
    add hl, de                                    ; $4442: $19
    jp hl                                         ; $4443: $E9


    ld a, a                                       ; $4444: $7F
    ld a, e                                       ; $4445: $7B
    xor d                                         ; $4446: $AA
    nop                                           ; $4447: $00
    sbc e                                         ; $4448: $9B
    xor a                                         ; $4449: $AF
    ld a, l                                       ; $444A: $7D
    and h                                         ; $444B: $A4
    nop                                           ; $444C: $00
    add h                                         ; $444D: $84
    nop                                           ; $444E: $00
    dec e                                         ; $444F: $1D
    ld a, c                                       ; $4450: $79
    rlca                                          ; $4451: $07
    ldh [rTAC], a                                 ; $4452: $E0 $07
    rlca                                          ; $4454: $07
    rlca                                          ; $4455: $07
    nop                                           ; $4456: $00
    inc e                                         ; $4457: $1C
    ld b, b                                       ; $4458: $40
    cpl                                           ; $4459: $2F
    nop                                           ; $445A: $00
    ld c, $08                                     ; $445B: $0E $08
    ld bc, $0F0F                                  ; $445D: $01 $0F $0F
    sbc a                                         ; $4460: $9F
    rrca                                          ; $4461: $0F
    rst RST_30                                    ; $4462: $F7
    sbc a                                         ; $4463: $9F
    rrca                                          ; $4464: $0F
    rrca                                          ; $4465: $0F
    sbc h                                         ; $4466: $9C
    dec c                                         ; $4467: $0D
    ld l, a                                       ; $4468: $6F
    rrca                                          ; $4469: $0F
    sbc a                                         ; $446A: $9F
    ei                                            ; $446B: $FB
    rrca                                          ; $446C: $0F
    sbc a                                         ; $446D: $9F
    ld c, a                                       ; $446E: $4F
    rrca                                          ; $446F: $0F
    sbc [hl]                                      ; $4470: $9E
    inc c                                         ; $4471: $0C
    ld l, a                                       ; $4472: $6F
    rrca                                          ; $4473: $0F
    db $FD                                        ; $4474: $FD
    sbc a                                         ; $4475: $9F
    rrca                                          ; $4476: $0F
    sbc a                                         ; $4477: $9F
    ld c, a                                       ; $4478: $4F
    rrca                                          ; $4479: $0F
    sbc [hl]                                      ; $447A: $9E
    dec bc                                        ; $447B: $0B
    ld l, a                                       ; $447C: $6F
    cp $0F                                        ; $447D: $FE $0F
    sbc a                                         ; $447F: $9F
    rrca                                          ; $4480: $0F
    sbc a                                         ; $4481: $9F
    ld c, a                                       ; $4482: $4F
    rrca                                          ; $4483: $0F
    sbc [hl]                                      ; $4484: $9E
    ld a, [bc]                                    ; $4485: $0A
    rst RST_38                                    ; $4486: $FF
    ld l, a                                       ; $4487: $6F
    rrca                                          ; $4488: $0F
    sbc a                                         ; $4489: $9F
    rrca                                          ; $448A: $0F
    sbc a                                         ; $448B: $9F
    ld c, a                                       ; $448C: $4F
    rrca                                          ; $448D: $0F
    sbc [hl]                                      ; $448E: $9E
    ld a, a                                       ; $448F: $7F
    add hl, bc                                    ; $4490: $09
    ld l, a                                       ; $4491: $6F
    rrca                                          ; $4492: $0F
    sbc a                                         ; $4493: $9F
    rrca                                          ; $4494: $0F
    sbc a                                         ; $4495: $9F
    ld c, a                                       ; $4496: $4F
    rrca                                          ; $4497: $0F
    cp a                                          ; $4498: $BF
    sbc [hl]                                      ; $4499: $9E
    ld [$0F6F], sp                                ; $449A: $08 $6F $0F
    sbc a                                         ; $449D: $9F
    rrca                                          ; $449E: $0F
    sbc a                                         ; $449F: $9F
    ld c, a                                       ; $44A0: $4F
    rst RST_18                                    ; $44A1: $DF
    rrca                                          ; $44A2: $0F
    sbc [hl]                                      ; $44A3: $9E
    rlca                                          ; $44A4: $07
    ld l, a                                       ; $44A5: $6F
    rrca                                          ; $44A6: $0F
    sbc a                                         ; $44A7: $9F
    rrca                                          ; $44A8: $0F
    sbc a                                         ; $44A9: $9F
    rst RST_28                                    ; $44AA: $EF
    ld c, a                                       ; $44AB: $4F
    rrca                                          ; $44AC: $0F
    sbc [hl]                                      ; $44AD: $9E
    ld b, $6F                                     ; $44AE: $06 $6F
    rrca                                          ; $44B0: $0F
    sbc a                                         ; $44B1: $9F
    rrca                                          ; $44B2: $0F
    push af                                       ; $44B3: $F5
    sbc a                                         ; $44B4: $9F
    ld c, a                                       ; $44B5: $4F
    rrca                                          ; $44B6: $0F
    sbc [hl]                                      ; $44B7: $9E
    ld [bc], a                                    ; $44B8: $02
    ld [$0803], sp                                ; $44B9: $08 $03 $08
    ld d, l                                       ; $44BC: $55
    inc b                                         ; $44BD: $04
    ld [$5A05], sp                                ; $44BE: $08 $05 $5A
    rlca                                          ; $44C1: $07
    ld [$0808], sp                                ; $44C2: $08 $08 $08
    ld d, l                                       ; $44C5: $55
    add hl, bc                                    ; $44C6: $09
    ld [$080A], sp                                ; $44C7: $08 $0A $08
    dec bc                                        ; $44CA: $0B
    ld [$080C], sp                                ; $44CB: $08 $0C $08
    ld d, l                                       ; $44CE: $55
    dec c                                         ; $44CF: $0D
    ld [$080E], sp                                ; $44D0: $08 $0E $08
    rrca                                          ; $44D3: $0F
    ld [$0810], sp                                ; $44D4: $08 $10 $08
    ld d, l                                       ; $44D7: $55
    ld de, $1208                                  ; $44D8: $11 $08 $12
    ld [$0813], sp                                ; $44DB: $08 $13 $08
    inc d                                         ; $44DE: $14
    ld [$1555], sp                                ; $44DF: $08 $55 $15
    ld [$0816], sp                                ; $44E2: $08 $16 $08
    rla                                           ; $44E5: $17
    ld [$0818], sp                                ; $44E6: $08 $18 $08
    ld d, l                                       ; $44E9: $55
    add hl, de                                    ; $44EA: $19
    ld [$081A], sp                                ; $44EB: $08 $1A $08
    dec de                                        ; $44EE: $1B
    ld [$081C], sp                                ; $44EF: $08 $1C $08
    ld d, l                                       ; $44F2: $55
    dec e                                         ; $44F3: $1D
    ld [$081E], sp                                ; $44F4: $08 $1E $08
    rra                                           ; $44F7: $1F
    ld [$0820], sp                                ; $44F8: $08 $20 $08
    ld d, a                                       ; $44FB: $57
    ld hl, $0408                                  ; $44FC: $21 $08 $04
    ld [$0F01], sp                                ; $44FF: $08 $01 $0F
    rrca                                          ; $4502: $0F
    sbc a                                         ; $4503: $9F
    ei                                            ; $4504: $FB
    rrca                                          ; $4505: $0F
    sbc a                                         ; $4506: $9F
    rrca                                          ; $4507: $0F
    rrca                                          ; $4508: $0F
    sbc h                                         ; $4509: $9C
    inc bc                                        ; $450A: $03
    ld l, a                                       ; $450B: $6F
    rrca                                          ; $450C: $0F
    db $FD                                        ; $450D: $FD
    sbc a                                         ; $450E: $9F
    rrca                                          ; $450F: $0F
    sbc a                                         ; $4510: $9F
    ld c, a                                       ; $4511: $4F
    rrca                                          ; $4512: $0F
    sbc [hl]                                      ; $4513: $9E
    ld [bc], a                                    ; $4514: $02
    ld a, [hl+]                                   ; $4515: $2A
    ld d, l                                       ; $4516: $55
    inc b                                         ; $4517: $04
    ld [$0805], sp                                ; $4518: $08 $05 $08
    ld b, $08                                     ; $451B: $06 $08
    rlca                                          ; $451D: $07
    ld [$0855], sp                                ; $451E: $08 $55 $08
    ld [$0809], sp                                ; $4521: $08 $09 $08
    ld a, [bc]                                    ; $4524: $0A
    ld [$080B], sp                                ; $4525: $08 $0B $08
    ld d, l                                       ; $4528: $55
    inc c                                         ; $4529: $0C
    ld [$080D], sp                                ; $452A: $08 $0D $08
    ld c, $08                                     ; $452D: $0E $08
    rrca                                          ; $452F: $0F
    ld [$1055], sp                                ; $4530: $08 $55 $10
    ld [$0811], sp                                ; $4533: $08 $11 $08
    ld [de], a                                    ; $4536: $12
    ld [$0813], sp                                ; $4537: $08 $13 $08
    ld d, l                                       ; $453A: $55
    inc d                                         ; $453B: $14
    ld [$0815], sp                                ; $453C: $08 $15 $08
    ld d, $08                                     ; $453F: $16 $08
    rla                                           ; $4541: $17
    ld [$1855], sp                                ; $4542: $08 $55 $18
    ld [$0819], sp                                ; $4545: $08 $19 $08
    ld a, [de]                                    ; $4548: $1A
    ld [$081B], sp                                ; $4549: $08 $1B $08
    ld d, l                                       ; $454C: $55
    inc e                                         ; $454D: $1C
    ld [$081D], sp                                ; $454E: $08 $1D $08
    ld e, $08                                     ; $4551: $1E $08
    rra                                           ; $4553: $1F
    ld [$2040], sp                                ; $4554: $08 $40 $20
    ld [$5021], sp                                ; $4557: $08 $21 $50
    add b                                         ; $455A: $80
    ld a, e                                       ; $455B: $7B
    nop                                           ; $455C: $00
    inc bc                                        ; $455D: $03
    inc bc                                        ; $455E: $03
    inc bc                                        ; $455F: $03
    ld [bc], a                                    ; $4560: $02
    rst RST_38                                    ; $4561: $FF
    rlca                                          ; $4562: $07
    rlca                                          ; $4563: $07
    db $E4                                        ; $4564: $E4
    rlca                                          ; $4565: $07
    rlca                                          ; $4566: $07
    ld b, $FE                                     ; $4567: $06 $FE
    ld bc, $EA0D                                  ; $4569: $01 $0D $EA
    dec d                                         ; $456C: $15
    inc c                                         ; $456D: $0C
    push af                                       ; $456E: $F5
    ld a, [bc]                                    ; $456F: $0A
    jp c, $3725                                   ; $4570: $DA $25 $37

    dec b                                         ; $4573: $05
    cp a                                          ; $4574: $BF
    ld b, b                                       ; $4575: $40
    jr nz, @+$59                                  ; $4576: $20 $57

    xor b                                         ; $4578: $A8
    dec d                                         ; $4579: $15
    ld e, a                                       ; $457A: $5F
    and b                                         ; $457B: $A0
    ei                                            ; $457C: $FB
    inc b                                         ; $457D: $04
    ld a, a                                       ; $457E: $7F
    ld c, h                                       ; $457F: $4C
    add b                                         ; $4580: $80
    rra                                           ; $4581: $1F
    xor e                                         ; $4582: $AB
    ld d, h                                       ; $4583: $54
    dec a                                         ; $4584: $3D
    ld a, l                                       ; $4585: $7D
    db $DD                                        ; $4586: $DD
    ld [hl+], a                                   ; $4587: $22
    ldh [$FF6F], a                                ; $4588: $E0 $6F
    rlca                                          ; $458A: $07
    dec b                                         ; $458B: $05
    rst RST_30                                    ; $458C: $F7
    ld [$11EE], sp                                ; $458D: $08 $EE $11
    ld d, l                                       ; $4590: $55
    ld c, a                                       ; $4591: $4F
    xor d                                         ; $4592: $AA
    dec c                                         ; $4593: $0D
    or a                                          ; $4594: $B7
    ld c, b                                       ; $4595: $48
    scf                                           ; $4596: $37
    rlca                                          ; $4597: $07
    call $E0AD                                    ; $4598: $CD $AD $E0
    sbc l                                         ; $459B: $9D
    daa                                           ; $459C: $27
    dec b                                         ; $459D: $05
    db $FD                                        ; $459E: $FD
    ld [bc], a                                    ; $459F: $02
    ld hl, sp+$07                                 ; $45A0: $F8 $07
    ld a, [$0499]                                 ; $45A2: $FA $99 $04
    or $0F                                        ; $45A5: $F6 $0F
    sub h                                         ; $45A7: $94
    inc b                                         ; $45A8: $04
    rst RST_28                                    ; $45A9: $EF
    rra                                           ; $45AA: $1F
    ccf                                           ; $45AB: $3F
    push hl                                       ; $45AC: $E5
    rlca                                          ; $45AD: $07
    dec b                                         ; $45AE: $05
    ld a, l                                       ; $45AF: $7D
    ccf                                           ; $45B0: $3F
    ret nz                                        ; $45B1: $C0

    ld b, b                                       ; $45B2: $40
    ldh a, [rLYC]                                 ; $45B3: $F0 $45
    xor d                                         ; $45B5: $AA
    dec b                                         ; $45B6: $05
    sbc $20                                       ; $45B7: $DE $20
    cp $04                                        ; $45B9: $FE $04
    cp h                                          ; $45BB: $BC
    jr c, jr_005_463A                             ; $45BC: $38 $7C

    xor [hl]                                      ; $45BE: $AE
    ld c, b                                       ; $45BF: $48
    ld a, c                                       ; $45C0: $79
    inc b                                         ; $45C1: $04

jr_005_45C2:
    halt                                          ; $45C2: $76
    inc b                                         ; $45C3: $04
    sbc b                                         ; $45C4: $98
    xor b                                         ; $45C5: $A8
    add a                                         ; $45C6: $87
    adc e                                         ; $45C7: $8B
    ld b, $43                                     ; $45C8: $06 $43
    db $FC                                        ; $45CA: $FC
    inc bc                                        ; $45CB: $03
    inc b                                         ; $45CC: $04
    ld bc, $0550                                  ; $45CD: $01 $50 $05
    pop hl                                        ; $45D0: $E1
    sbc c                                         ; $45D1: $99

jr_005_45D2:
    and a                                         ; $45D2: $A7
    dec b                                         ; $45D3: $05
    db $E3                                        ; $45D4: $E3
    inc a                                         ; $45D5: $3C
    or c                                          ; $45D6: $B1
    ld a, [hl]                                    ; $45D7: $7E
    ld d, b                                       ; $45D8: $50
    xor a                                         ; $45D9: $AF
    add h                                         ; $45DA: $84

jr_005_45DB:
    ld l, b                                       ; $45DB: $68
    jr nz, jr_005_45D2                            ; $45DC: $20 $F4

    dec a                                         ; $45DE: $3D
    ld d, b                                       ; $45DF: $50
    inc b                                         ; $45E0: $04
    ld l, b                                       ; $45E1: $68
    ld e, e                                       ; $45E2: $5B
    ei                                            ; $45E3: $FB
    sub b                                         ; $45E4: $90
    rst RST_30                                    ; $45E5: $F7
    ldh [$FFD5], a                                ; $45E6: $E0 $D5
    rst RST_18                                    ; $45E8: $DF
    call z, $DF24                                 ; $45E9: $CC $24 $DF
    ld b, h                                       ; $45EC: $44
    add hl, sp                                    ; $45ED: $39
    ldh a, [rTMA]                                 ; $45EE: $F0 $06
    ld h, h                                       ; $45F0: $64
    ld b, $B8                                     ; $45F1: $06 $B8
    inc b                                         ; $45F3: $04
    ld e, h                                       ; $45F4: $5C
    db $EC                                        ; $45F5: $EC
    halt                                          ; $45F6: $76
    ldh a, [c]                                    ; $45F7: $F2
    cp a                                          ; $45F8: $BF
    rlca                                          ; $45F9: $07
    ld b, $C7                                     ; $45FA: $06 $C7
    ld a, b                                       ; $45FC: $78
    ld d, a                                       ; $45FD: $57
    jp $E050                                      ; $45FE: $C3 $50 $E0


jr_005_4601:
    jr jr_005_4601                                ; $4601: $18 $FE

    cp h                                          ; $4603: $BC
    rlca                                          ; $4604: $07
    jr nz, jr_005_45C2                            ; $4605: $20 $BB

    call z, $06FD                                 ; $4607: $CC $FD $06
    db $DD                                        ; $460A: $DD
    dec b                                         ; $460B: $05
    ld h, b                                       ; $460C: $60
    ld b, h                                       ; $460D: $44
    dec b                                         ; $460E: $05
    ld d, c                                       ; $460F: $51
    jr nc, @+$08                                  ; $4610: $30 $06

    jr @+$06                                      ; $4612: $18 $04

    ld e, b                                       ; $4614: $58
    cp a                                          ; $4615: $BF
    ld [$070C], sp                                ; $4616: $08 $0C $07
    inc l                                         ; $4619: $2C
    rst RST_18                                    ; $461A: $DF
    scf                                           ; $461B: $37
    rst RST_08                                    ; $461C: $CF
    rrca                                          ; $461D: $0F
    inc d                                         ; $461E: $14
    ld d, b                                       ; $461F: $50
    inc b                                         ; $4620: $04
    db $FD                                        ; $4621: $FD
    ld l, b                                       ; $4622: $68
    inc b                                         ; $4623: $04
    adc b                                         ; $4624: $88
    rlc [hl]                                      ; $4625: $CB $06
    inc bc                                        ; $4627: $03
    ld a, a                                       ; $4628: $7F
    push de                                       ; $4629: $D5
    db $EB                                        ; $462A: $EB
    ld b, $CC                                     ; $462B: $06 $CC
    inc b                                         ; $462D: $04
    ld hl, sp+$04                                 ; $462E: $F8 $04
    ldh a, [rVBK]                                 ; $4630: $F0 $4F
    rlca                                          ; $4632: $07
    and b                                         ; $4633: $A0
    inc b                                         ; $4634: $04
    jr nz, jr_005_45DB                            ; $4635: $20 $A4

    db $10                                        ; $4637: $10
    rst RST_28                                    ; $4638: $EF
    ld a, [de]                                    ; $4639: $1A

jr_005_463A:
    push hl                                       ; $463A: $E5
    dec e                                         ; $463B: $1D
    ld a, [hl+]                                   ; $463C: $2A
    ldh [c], a                                    ; $463D: $E2
    ret z                                         ; $463E: $C8

    inc h                                         ; $463F: $24
    sub b                                         ; $4640: $90
    inc b                                         ; $4641: $04
    ld a, b                                       ; $4642: $78
    inc b                                         ; $4643: $04
    ret nc                                        ; $4644: $D0

    xor b                                         ; $4645: $A8
    inc b                                         ; $4646: $04
    adc b                                         ; $4647: $88
    inc b                                         ; $4648: $04
    or b                                          ; $4649: $B0
    ld b, h                                       ; $464A: $44
    ld l, d                                       ; $464B: $6A
    sbc l                                         ; $464C: $9D
    cp e                                          ; $464D: $BB
    nop                                           ; $464E: $00
    ld e, h                                       ; $464F: $5C
    adc h                                         ; $4650: $8C
    ld [hl], e                                    ; $4651: $73
    ld c, [hl]                                    ; $4652: $4E
    or c                                          ; $4653: $B1
    rst RST_30                                    ; $4654: $F7
    ld [$956F], sp                                ; $4655: $08 $6F $95
    ld d, b                                       ; $4658: $50
    or a                                          ; $4659: $B7
    ld c, b                                       ; $465A: $48
    call nc, $3480                                ; $465B: $D4 $80 $34
    ld b, h                                       ; $465E: $44
    dec c                                         ; $465F: $0D
    add d                                         ; $4660: $82
    dec b                                         ; $4661: $05
    ccf                                           ; $4662: $3F
    ret nz                                        ; $4663: $C0

    rra                                           ; $4664: $1F
    ldh [rIF], a                                  ; $4665: $E0 $0F
    ldh [$FF03], a                                ; $4667: $E0 $03
    cp $F8                                        ; $4669: $FE $F8
    rst RST_10                                    ; $466B: $D7
    dec b                                         ; $466C: $05
    inc de                                        ; $466D: $13
    rlca                                          ; $466E: $07
    rlca                                          ; $466F: $07
    ld h, l                                       ; $4670: $65
    rlca                                          ; $4671: $07
    ld b, b                                       ; $4672: $40
    ld hl, sp+$19                                 ; $4673: $F8 $19
    add h                                         ; $4675: $84
    ld a, e                                       ; $4676: $7B
    ld b, d                                       ; $4677: $42

jr_005_4678:
    cp l                                          ; $4678: $BD
    db $E3                                        ; $4679: $E3
    inc e                                         ; $467A: $1C
    nop                                           ; $467B: $00
    push af                                       ; $467C: $F5
    ld a, [bc]                                    ; $467D: $0A
    ei                                            ; $467E: $FB
    inc b                                         ; $467F: $04
    db $FD                                        ; $4680: $FD
    ld [bc], a                                    ; $4681: $02
    cp $01                                        ; $4682: $FE $01
    push de                                       ; $4684: $D5
    add sp, $3C                                   ; $4685: $E8 $3C
    add a                                         ; $4687: $87
    inc b                                         ; $4688: $04
    ld h, e                                       ; $4689: $63
    inc b                                         ; $468A: $04
    jr c, jr_005_4691                             ; $468B: $38 $04

    ld d, a                                       ; $468D: $57
    sbc [hl]                                      ; $468E: $9E
    ldh [$FFCF], a                                ; $468F: $E0 $CF

jr_005_4691:
    ld a, b                                       ; $4691: $78
    ldh [c], a                                    ; $4692: $E2
    ldh [$FFD8], a                                ; $4693: $E0 $D8
    ldh [$FFBF], a                                ; $4695: $E0 $BF
    sbc [hl]                                      ; $4697: $9E
    add b                                         ; $4698: $80
    inc b                                         ; $4699: $04
    db $FC                                        ; $469A: $FC
    inc b                                         ; $469B: $04
    sbc h                                         ; $469C: $9C
    jr nc, @+$0A                                  ; $469D: $30 $08

    rst RST_38                                    ; $469F: $FF
    inc a                                         ; $46A0: $3C
    db $ED                                        ; $46A1: $ED
    nop                                           ; $46A2: $00
    ld d, b                                       ; $46A3: $50
    rst RST_38                                    ; $46A4: $FF
    rlca                                          ; $46A5: $07
    ld b, $2C                                     ; $46A6: $06 $2C
    db $D3                                        ; $46A8: $D3
    ld e, h                                       ; $46A9: $5C
    db $FD                                        ; $46AA: $FD
    sbc a                                         ; $46AB: $9F
    ld h, l                                       ; $46AC: $65
    rlca                                          ; $46AD: $07
    rst RST_30                                    ; $46AE: $F7
    adc h                                         ; $46AF: $8C
    dec b                                         ; $46B0: $05
    ld [hl], l                                    ; $46B1: $75
    rst RST_28                                    ; $46B2: $EF
    and h                                         ; $46B3: $A4
    db $E4                                        ; $46B4: $E4
    inc b                                         ; $46B5: $04
    rst RST_18                                    ; $46B6: $DF
    jr c, jr_005_4678                             ; $46B7: $38 $BF

    ld c, b                                       ; $46B9: $48
    ld h, b                                       ; $46BA: $60
    or [hl]                                       ; $46BB: $B6
    inc b                                         ; $46BC: $04
    ld h, c                                       ; $46BD: $61
    add h                                         ; $46BE: $84
    ld a, e                                       ; $46BF: $7B
    ld b, d                                       ; $46C0: $42
    cp l                                          ; $46C1: $BD
    ld h, e                                       ; $46C2: $63
    nop                                           ; $46C3: $00
    sbc h                                         ; $46C4: $9C
    push af                                       ; $46C5: $F5
    ld a, [bc]                                    ; $46C6: $0A
    ei                                            ; $46C7: $FB
    inc b                                         ; $46C8: $04
    db $FD                                        ; $46C9: $FD
    ld [bc], a                                    ; $46CA: $02
    ld a, [hl]                                    ; $46CB: $7E

jr_005_46CC:
    dec [hl]                                      ; $46CC: $35
    add c                                         ; $46CD: $81
    ldh a, [$FFE9]                                ; $46CE: $F0 $E9
    ld b, $BC                                     ; $46D0: $06 $BC
    inc b                                         ; $46D2: $04
    ld d, h                                       ; $46D3: $54
    inc b                                         ; $46D4: $04
    ldh a, [rLCDC]                                ; $46D5: $F0 $40
    jp nc, Jump_005_4840                          ; $46D7: $D2 $40 $48

    ld d, l                                       ; $46DA: $55
    xor [hl]                                      ; $46DB: $AE
    inc [hl]                                      ; $46DC: $34
    rst RST_08                                    ; $46DD: $CF
    nop                                           ; $46DE: $00
    dec sp                                        ; $46DF: $3B
    add $9A                                       ; $46E0: $C6 $9A
    ld h, a                                       ; $46E2: $67
    ld e, c                                       ; $46E3: $59
    and a                                         ; $46E4: $A7
    ld l, l                                       ; $46E5: $6D
    sub e                                         ; $46E6: $93
    dec h                                         ; $46E7: $25
    cp [hl]                                       ; $46E8: $BE
    ld b, c                                       ; $46E9: $41
    ld a, l                                       ; $46EA: $7D
    ld e, a                                       ; $46EB: $5F
    and b                                         ; $46EC: $A0
    call nc, Call_005_6140                        ; $46ED: $D4 $40 $61
    cp c                                          ; $46F0: $B9
    db $FC                                        ; $46F1: $FC
    db $10                                        ; $46F2: $10
    ld [hl], d                                    ; $46F3: $72
    rlca                                          ; $46F4: $07
    inc b                                         ; $46F5: $04
    ld a, a                                       ; $46F6: $7F
    add b                                         ; $46F7: $80
    dec b                                         ; $46F8: $05
    ret z                                         ; $46F9: $C8

    ld b, l                                       ; $46FA: $45
    ld c, a                                       ; $46FB: $4F
    rst RST_18                                    ; $46FC: $DF
    jr nz, jr_005_473E                            ; $46FD: $20 $3F

    ld [hl], e                                    ; $46FF: $73
    sbc h                                         ; $4700: $9C
    rst RST_30                                    ; $4701: $F7
    rla                                           ; $4702: $17
    jr jr_005_46CC                                ; $4703: $18 $C7

    jr c, jr_005_4783                             ; $4705: $38 $7C

    jr nc, @-$2E                                  ; $4707: $30 $D0

    inc b                                         ; $4709: $04
    dec a                                         ; $470A: $3D
    daa                                           ; $470B: $27
    sbc a                                         ; $470C: $9F
    ld h, b                                       ; $470D: $60
    ld e, l                                       ; $470E: $5D

Call_005_470F:
    ccf                                           ; $470F: $3F
    ret nz                                        ; $4710: $C0

    dec e                                         ; $4711: $1D
    dec d                                         ; $4712: $15
    ld l, a                                       ; $4713: $6F
    ret nz                                        ; $4714: $C0

    rst RST_08                                    ; $4715: $CF
    dec b                                         ; $4716: $05
    ldh [$FF1F], a                                ; $4717: $E0 $1F
    ld [hl], h                                    ; $4719: $74
    adc e                                         ; $471A: $8B
    ld a, [$EB05]                                 ; $471B: $FA $05 $EB
    daa                                           ; $471E: $27

jr_005_471F:
    rlca                                          ; $471F: $07
    dec b                                         ; $4720: $05
    add hl, de                                    ; $4721: $19
    ld [$1A04], sp                                ; $4722: $08 $04 $1A
    ld l, b                                       ; $4725: $68
    add c                                         ; $4726: $81
    ld [hl], b                                    ; $4727: $70
    adc b                                         ; $4728: $88
    ld [hl], a                                    ; $4729: $77
    db $EC                                        ; $472A: $EC
    inc de                                        ; $472B: $13
    cp $01                                        ; $472C: $FE $01
    add hl, hl                                    ; $472E: $29
    ret                                           ; $472F: $C9


    ld a, b                                       ; $4730: $78
    add b                                         ; $4731: $80
    rrca                                          ; $4732: $0F
    ldh a, [rTIMA]                                ; $4733: $F0 $05
    rlca                                          ; $4735: $07
    ld hl, sp+$05                                 ; $4736: $F8 $05
    jr c, jr_005_473D                             ; $4738: $38 $03

    db $FC                                        ; $473A: $FC
    jr c, jr_005_477D                             ; $473B: $38 $40

jr_005_473D:
    ld h, l                                       ; $473D: $65

jr_005_473E:
    xor b                                         ; $473E: $A8
    ld d, a                                       ; $473F: $57
    sub $26                                       ; $4740: $D6 $26
    add hl, hl                                    ; $4742: $29
    ei                                            ; $4743: $FB
    adc b                                         ; $4744: $88
    db $FD                                        ; $4745: $FD
    ld [bc], a                                    ; $4746: $02

jr_005_4747:
    ld l, a                                       ; $4747: $6F
    rlca                                          ; $4748: $07
    ld a, a                                       ; $4749: $7F
    and e                                         ; $474A: $A3
    ld [$08AF], sp                                ; $474B: $08 $AF $08
    db $D3                                        ; $474E: $D3
    ccf                                           ; $474F: $3F
    add sp, -$68                                  ; $4750: $E8 $98
    ld a, b                                       ; $4752: $78
    rst RST_20                                    ; $4753: $E7
    sub b                                         ; $4754: $90
    ld a, b                                       ; $4755: $78
    adc b                                         ; $4756: $88
    cp d                                          ; $4757: $BA
    ld b, a                                       ; $4758: $47
    ld d, h                                       ; $4759: $54
    sub b                                         ; $475A: $90
    xor b                                         ; $475B: $A8
    ld [$243C], a                                 ; $475C: $EA $3C $24
    inc b                                         ; $475F: $04
    ld sp, hl                                     ; $4760: $F9
    jr jr_005_471F                                ; $4761: $18 $BC

    inc c                                         ; $4763: $0C
    ld d, h                                       ; $4764: $54
    cp d                                          ; $4765: $BA
    inc b                                         ; $4766: $04
    ld a, [bc]                                    ; $4767: $0A
    ld a, d                                       ; $4768: $7A
    sbc b                                         ; $4769: $98
    and b                                         ; $476A: $A0
    add a                                         ; $476B: $87
    jr c, jr_005_47AE                             ; $476C: $38 $40

    cp d                                          ; $476E: $BA
    inc d                                         ; $476F: $14
    ld hl, $5804                                  ; $4770: $21 $04 $58
    ld b, $06                                     ; $4773: $06 $06
    inc b                                         ; $4775: $04
    dec c                                         ; $4776: $0D
    cp [hl]                                       ; $4777: $BE
    inc b                                         ; $4778: $04
    jr jr_005_477F                                ; $4779: $18 $04

    rst RST_08                                    ; $477B: $CF
    dec b                                         ; $477C: $05

jr_005_477D:
    push af                                       ; $477D: $F5
    and l                                         ; $477E: $A5

jr_005_477F:
    ei                                            ; $477F: $FB
    inc e                                         ; $4780: $1C
    inc b                                         ; $4781: $04
    rst RST_28                                    ; $4782: $EF

jr_005_4783:
    db $10                                        ; $4783: $10
    dec h                                         ; $4784: $25
    cp h                                          ; $4785: $BC
    db $EC                                        ; $4786: $EC
    push bc                                       ; $4787: $C5
    ld a, d                                       ; $4788: $7A
    dec c                                         ; $4789: $0D
    sbc e                                         ; $478A: $9B
    db $E4                                        ; $478B: $E4
    scf                                           ; $478C: $37
    ret z                                         ; $478D: $C8

    ld d, a                                       ; $478E: $57
    rlca                                          ; $478F: $07
    or $08                                        ; $4790: $F6 $08
    push de                                       ; $4792: $D5
    jr nc, jr_005_4799                            ; $4793: $30 $04

    add sp, $04                                   ; $4795: $E8 $04
    pop bc                                        ; $4797: $C1
    ld a, b                                       ; $4798: $78

jr_005_4799:
    add c                                         ; $4799: $81
    inc b                                         ; $479A: $04
    daa                                           ; $479B: $27
    inc de                                        ; $479C: $13
    db $EC                                        ; $479D: $EC
    ld d, l                                       ; $479E: $55
    ld l, a                                       ; $479F: $6F
    sub b                                         ; $47A0: $90
    jr z, jr_005_4747                             ; $47A1: $28 $A4

    ld d, a                                       ; $47A3: $57
    ldh a, [rTAC]                                 ; $47A4: $F0 $07
    rlca                                          ; $47A6: $07
    dec b                                         ; $47A7: $05
    ld e, h                                       ; $47A8: $5C
    ld a, [hl]                                    ; $47A9: $7E
    ld d, d                                       ; $47AA: $52
    xor l                                         ; $47AB: $AD
    add hl, hl                                    ; $47AC: $29
    add hl, de                                    ; $47AD: $19

jr_005_47AE:
    sub $B5                                       ; $47AE: $D6 $B5
    ld c, d                                       ; $47B0: $4A
    ld a, b                                       ; $47B1: $78
    ld e, h                                       ; $47B2: $5C
    rst RST_18                                    ; $47B3: $DF
    jr nz, @+$01                                  ; $47B4: $20 $FF

    sbc d                                         ; $47B6: $9A
    dec b                                         ; $47B7: $05
    ld d, l                                       ; $47B8: $55
    xor d                                         ; $47B9: $AA
    nop                                           ; $47BA: $00
    ld [$1808], sp                                ; $47BB: $08 $08 $18
    and d                                         ; $47BE: $A2
    rst RST_10                                    ; $47BF: $D7
    inc b                                         ; $47C0: $04
    dec c                                         ; $47C1: $0D
    add b                                         ; $47C2: $80
    inc b                                         ; $47C3: $04
    inc d                                         ; $47C4: $14
    inc b                                         ; $47C5: $04
    ccf                                           ; $47C6: $3F
    dec a                                         ; $47C7: $3D
    ld e, d                                       ; $47C8: $5A
    add hl, bc                                    ; $47C9: $09
    jr jr_005_47EE                                ; $47CA: $18 $22

    ld a, $4D                                     ; $47CC: $3E $4D
    ld b, h                                       ; $47CE: $44
    inc b                                         ; $47CF: $04
    and c                                         ; $47D0: $A1
    db $EB                                        ; $47D1: $EB
    inc b                                         ; $47D2: $04
    xor b                                         ; $47D3: $A8
    inc b                                         ; $47D4: $04
    ld sp, $8A04                                  ; $47D5: $31 $04 $8A
    inc b                                         ; $47D8: $04
    ld c, b                                       ; $47D9: $48
    cp d                                          ; $47DA: $BA
    inc b                                         ; $47DB: $04
    ld a, [bc]                                    ; $47DC: $0A
    inc b                                         ; $47DD: $04
    ldh [rDIV], a                                 ; $47DE: $E0 $04
    ld d, [hl]                                    ; $47E0: $56
    inc b                                         ; $47E1: $04
    ld a, [hl+]                                   ; $47E2: $2A
    xor [hl]                                      ; $47E3: $AE
    inc b                                         ; $47E4: $04
    ld d, c                                       ; $47E5: $51
    sub [hl]                                      ; $47E6: $96
    xor b                                         ; $47E7: $A8
    ld a, $94                                     ; $47E8: $3E $94
    inc b                                         ; $47EA: $04
    and l                                         ; $47EB: $A5
    xor d                                         ; $47EC: $AA
    inc b                                         ; $47ED: $04

jr_005_47EE:
    ld e, [hl]                                    ; $47EE: $5E
    inc b                                         ; $47EF: $04
    cp l                                          ; $47F0: $BD
    inc b                                         ; $47F1: $04
    ld d, a                                       ; $47F2: $57
    inc b                                         ; $47F3: $04
    jp hl                                         ; $47F4: $E9


    xor d                                         ; $47F5: $AA
    ld e, $B5                                     ; $47F6: $1E $B5
    inc b                                         ; $47F8: $04
    ld e, a                                       ; $47F9: $5F
    inc b                                         ; $47FA: $04
    ei                                            ; $47FB: $FB
    inc b                                         ; $47FC: $04
    and [hl]                                      ; $47FD: $A6
    xor l                                         ; $47FE: $AD
    inc b                                         ; $47FF: $04
    xor a                                         ; $4800: $AF
    inc b                                         ; $4801: $04
    ld a, d                                       ; $4802: $7A
    sbc [hl]                                      ; $4803: $9E
    dec h                                         ; $4804: $25
    db $FD                                        ; $4805: $FD
    inc b                                         ; $4806: $04
    ld l, d                                       ; $4807: $6A
    ld l, a                                       ; $4808: $6F
    inc b                                         ; $4809: $04
    ld bc, $04AE                                  ; $480A: $01 $AE $04
    ld a, a                                       ; $480D: $7F
    inc b                                         ; $480E: $04
    db $EC                                        ; $480F: $EC
    xor d                                         ; $4810: $AA
    inc b                                         ; $4811: $04
    cp a                                          ; $4812: $BF
    inc b                                         ; $4813: $04
    xor $04                                       ; $4814: $EE $04
    ld a, e                                       ; $4816: $7B
    inc b                                         ; $4817: $04
    rst RST_08                                    ; $4818: $CF
    xor l                                         ; $4819: $AD
    inc b                                         ; $481A: $04
    cp $04                                        ; $481B: $FE $04
    db $EB                                        ; $481D: $EB
    rrca                                          ; $481E: $0F
    inc b                                         ; $481F: $04
    cp [hl]                                       ; $4820: $BE
    inc b                                         ; $4821: $04
    ld a, a                                       ; $4822: $7F
    db $F4                                        ; $4823: $F4
    add [hl]                                      ; $4824: $86
    ccf                                           ; $4825: $3F
    dec d                                         ; $4826: $15
    ld a, l                                       ; $4827: $7D
    inc bc                                        ; $4828: $03
    ld b, l                                       ; $4829: $45
    daa                                           ; $482A: $27
    ld a, d                                       ; $482B: $7A
    push af                                       ; $482C: $F5
    ld h, $17                                     ; $482D: $26 $17
    ccf                                           ; $482F: $3F
    daa                                           ; $4830: $27
    rst RST_30                                    ; $4831: $F7
    ld d, $51                                     ; $4832: $16 $51
    add b                                         ; $4834: $80
    ld a, e                                       ; $4835: $7B
    nop                                           ; $4836: $00
    inc bc                                        ; $4837: $03
    inc bc                                        ; $4838: $03
    inc bc                                        ; $4839: $03
    ld [bc], a                                    ; $483A: $02
    rst RST_38                                    ; $483B: $FF
    rlca                                          ; $483C: $07
    rlca                                          ; $483D: $07
    db $F4                                        ; $483E: $F4
    rlca                                          ; $483F: $07

Jump_005_4840:
    rlca                                          ; $4840: $07
    rlca                                          ; $4841: $07
    dec b                                         ; $4842: $05
    rrca                                          ; $4843: $0F
    inc b                                         ; $4844: $04
    ccf                                           ; $4845: $3F
    cp a                                          ; $4846: $BF
    scf                                           ; $4847: $37
    ld a, a                                       ; $4848: $7F
    rra                                           ; $4849: $1F
    ld a, [de]                                    ; $484A: $1A
    nop                                           ; $484B: $00
    inc bc                                        ; $484C: $03
    ld [de], a                                    ; $484D: $12
    inc h                                         ; $484E: $24
    add hl, de                                    ; $484F: $19
    push af                                       ; $4850: $F5
    inc bc                                        ; $4851: $03
    inc bc                                        ; $4852: $03
    ld [hl], a                                    ; $4853: $77
    ld b, $F0                                     ; $4854: $06 $F0
    inc b                                         ; $4856: $04
    ld hl, sp+$04                                 ; $4857: $F8 $04
    rra                                           ; $4859: $1F
    db $FC                                        ; $485A: $FC
    db $FD                                        ; $485B: $FD
    cp $05                                        ; $485C: $FE $05
    ld c, e                                       ; $485E: $4B
    inc bc                                        ; $485F: $03
    inc bc                                        ; $4860: $03
    inc bc                                        ; $4861: $03
    db $FD                                        ; $4862: $FD
    nop                                           ; $4863: $00
    ld b, l                                       ; $4864: $45
    ld c, [hl]                                    ; $4865: $4E
    ld l, b                                       ; $4866: $68
    ld b, $89                                     ; $4867: $06 $89
    ld h, c                                       ; $4869: $61
    inc h                                         ; $486A: $24
    ld h, b                                       ; $486B: $60
    add b                                         ; $486C: $80
    cp a                                          ; $486D: $BF
    ld b, $FB                                     ; $486E: $06 $FB
    inc b                                         ; $4870: $04
    ld sp, hl                                     ; $4871: $F9
    ld b, $F5                                     ; $4872: $06 $F5
    rlca                                          ; $4874: $07
    ld c, $F4                                     ; $4875: $0E $F4
    rrca                                          ; $4877: $0F
    xor $1F                                       ; $4878: $EE $1F
    scf                                           ; $487A: $37
    rlca                                          ; $487B: $07
    ld b, $7C                                     ; $487C: $06 $7C
    inc bc                                        ; $487E: $03
    inc b                                         ; $487F: $04
    inc a                                         ; $4880: $3C
    inc b                                         ; $4881: $04
    dec a                                         ; $4882: $3D
    inc b                                         ; $4883: $04
    rst RST_18                                    ; $4884: $DF
    ccf                                           ; $4885: $3F
    xor d                                         ; $4886: $AA
    dec b                                         ; $4887: $05
    call $C204                                    ; $4888: $CD $04 $C2
    inc b                                         ; $488B: $04
    pop bc                                        ; $488C: $C1
    inc b                                         ; $488D: $04
    ldh [$FFD5], a                                ; $488E: $E0 $D5
    inc l                                         ; $4890: $2C
    dec b                                         ; $4891: $05
    ld hl, sp-$1A                                 ; $4892: $F8 $E6
    db $EC                                        ; $4894: $EC
    inc b                                         ; $4895: $04

jr_005_4896:
    ld d, b                                       ; $4896: $50
    inc b                                         ; $4897: $04
    ld a, l                                       ; $4898: $7D
    and b                                         ; $4899: $A0
    adc e                                         ; $489A: $8B
    ld b, $03                                     ; $489B: $06 $03
    inc bc                                        ; $489D: $03
    ld bc, $04FE                                  ; $489E: $01 $FE $04
    ld d, l                                       ; $48A1: $55
    ld sp, hl                                     ; $48A2: $F9
    inc b                                         ; $48A3: $04
    ld d, c                                       ; $48A4: $51
    inc b                                         ; $48A5: $04
    and c                                         ; $48A6: $A1
    ld c, [hl]                                    ; $48A7: $4E
    ld bc, $6AEA                                  ; $48A8: $01 $EA $6A
    rla                                           ; $48AB: $17
    ldh a, [c]                                    ; $48AC: $F2
    dec c                                         ; $48AD: $0D
    dec bc                                        ; $48AE: $0B
    inc b                                         ; $48AF: $04
    ld b, c                                       ; $48B0: $41
    inc b                                         ; $48B1: $04
    sub c                                         ; $48B2: $91
    cp d                                          ; $48B3: $BA
    inc b                                         ; $48B4: $04
    xor e                                         ; $48B5: $AB
    ld a, e                                       ; $48B6: $7B
    inc bc                                        ; $48B7: $03
    inc bc                                        ; $48B8: $03
    ldh [rDIV], a                                 ; $48B9: $E0 $04
    db $FC                                        ; $48BB: $FC
    cp $AA                                        ; $48BC: $FE $AA
    inc bc                                        ; $48BE: $03
    inc bc                                        ; $48BF: $03
    ld bc, $07B9                                  ; $48C0: $01 $B9 $07
    dec b                                         ; $48C3: $05
    add b                                         ; $48C4: $80
    cp d                                          ; $48C5: $BA
    ld b, $C0                                     ; $48C6: $06 $C0
    ld b, $02                                     ; $48C8: $06 $02
    ld a, e                                       ; $48CA: $7B
    ld a, [$D504]                                 ; $48CB: $FA $04 $D5
    xor d                                         ; $48CE: $AA
    inc b                                         ; $48CF: $04
    and b                                         ; $48D0: $A0
    inc b                                         ; $48D1: $04
    ld b, b                                       ; $48D2: $40
    cp [hl]                                       ; $48D3: $BE
    ld e, a                                       ; $48D4: $5F
    inc b                                         ; $48D5: $04
    cp a                                          ; $48D6: $BF
    xor l                                         ; $48D7: $AD
    inc b                                         ; $48D8: $04

jr_005_48D9:
    rra                                           ; $48D9: $1F
    inc b                                         ; $48DA: $04
    ccf                                           ; $48DB: $3F
    ld h, h                                       ; $48DC: $64
    dec b                                         ; $48DD: $05
    ld a, a                                       ; $48DE: $7F
    add h                                         ; $48DF: $84
    db $E3                                        ; $48E0: $E3
    dec b                                         ; $48E1: $05
    xor a                                         ; $48E2: $AF
    ld b, $01                                     ; $48E3: $06 $01
    db $FD                                        ; $48E5: $FD
    inc bc                                        ; $48E6: $03
    inc c                                         ; $48E7: $0C
    inc b                                         ; $48E8: $04
    ld a, $FB                                     ; $48E9: $3E $FB
    rlca                                          ; $48EB: $07
    inc c                                         ; $48EC: $0C
    dec b                                         ; $48ED: $05
    scf                                           ; $48EE: $37
    inc b                                         ; $48EF: $04
    ld a, l                                       ; $48F0: $7D
    adc a                                         ; $48F1: $8F
    dec bc                                        ; $48F2: $0B
    ldh a, [$FFC3]                                ; $48F3: $F0 $C3
    db $FC                                        ; $48F5: $FC
    ld b, l                                       ; $48F6: $45
    ldh [$FFA6], a                                ; $48F7: $E0 $A6
    db $ED                                        ; $48F9: $ED
    ld h, h                                       ; $48FA: $64
    cp $07                                        ; $48FB: $FE $07
    jr z, jr_005_496B                             ; $48FD: $28 $6C

    ld a, l                                       ; $48FF: $7D
    dec b                                         ; $4900: $05
    ld a, l                                       ; $4901: $7D
    dec b                                         ; $4902: $05
    rst RST_28                                    ; $4903: $EF
    db $DD                                        ; $4904: $DD
    ld l, b                                       ; $4905: $68
    dec b                                         ; $4906: $05
    sbc $E8                                       ; $4907: $DE $E8
    ld b, h                                       ; $4909: $44
    inc b                                         ; $490A: $04
    cp h                                          ; $490B: $BC
    add sp, $56                                   ; $490C: $E8 $56
    ld a, h                                       ; $490E: $7C
    ld l, h                                       ; $490F: $6C
    ld a, c                                       ; $4910: $79
    inc b                                         ; $4911: $04
    halt                                          ; $4912: $76
    inc b                                         ; $4913: $04
    jr jr_005_4896                                ; $4914: $18 $80

    sub l                                         ; $4916: $95
    jr z, jr_005_48D9                             ; $4917: $28 $C0

    sbc a                                         ; $4919: $9F
    or h                                          ; $491A: $B4
    ld c, a                                       ; $491B: $4F
    or h                                          ; $491C: $B4
    rrca                                          ; $491D: $0F
    inc b                                         ; $491E: $04
    cp a                                          ; $491F: $BF
    ld l, b                                       ; $4920: $68
    ld hl, sp-$80                                 ; $4921: $F8 $80
    sbc b                                         ; $4923: $98
    xor c                                         ; $4924: $A9
    ld b, b                                       ; $4925: $40
    ld [bc], a                                    ; $4926: $02
    ld c, h                                       ; $4927: $4C
    db $FD                                        ; $4928: $FD
    push de                                       ; $4929: $D5
    inc b                                         ; $492A: $04
    jr z, jr_005_493B                             ; $492B: $28 $0E

    call nz, $FA04                                ; $492D: $C4 $04 $FA
    inc b                                         ; $4930: $04
    db $DD                                        ; $4931: $DD

Call_005_4932:
    ld a, b                                       ; $4932: $78
    inc b                                         ; $4933: $04
    add sp, $04                                   ; $4934: $E8 $04
    ld h, b                                       ; $4936: $60
    inc b                                         ; $4937: $04

jr_005_4938:
    and h                                         ; $4938: $A4
    inc b                                         ; $4939: $04
    ld b, d                                       ; $493A: $42

jr_005_493B:
    ld d, b                                       ; $493B: $50
    inc b                                         ; $493C: $04
    xor d                                         ; $493D: $AA
    ld d, l                                       ; $493E: $55
    ld [hl], a                                    ; $493F: $77
    adc b                                         ; $4940: $88
    stop                                          ; $4941: $10 $00
    ldh [rTIMA], a                                ; $4943: $E0 $05
    rst RST_00                                    ; $4945: $C7
    call nz, Call_005_5F60                        ; $4946: $C4 $60 $5F
    and b                                         ; $4949: $A0
    ld l, a                                       ; $494A: $6F
    sub b                                         ; $494B: $90
    ccf                                           ; $494C: $3F
    cp a                                          ; $494D: $BF
    ld b, b                                       ; $494E: $40
    ccf                                           ; $494F: $3F
    rlca                                          ; $4950: $07
    ld b, $C3                                     ; $4951: $06 $C3
    inc bc                                        ; $4953: $03
    cpl                                           ; $4954: $2F
    rst RST_38                                    ; $4955: $FF
    rlca                                          ; $4956: $07
    rlca                                          ; $4957: $07
    sbc h                                         ; $4958: $9C
    ld [$035D], a                                 ; $4959: $EA $5D $03
    inc bc                                        ; $495C: $03
    inc bc                                        ; $495D: $03
    cp l                                          ; $495E: $BD
    ld bc, $040F                                  ; $495F: $01 $0F $04
    ld hl, sp+$1B                                 ; $4962: $F8 $1B
    ld bc, $047F                                  ; $4964: $01 $7F $04
    ld d, l                                       ; $4967: $55
    sbc a                                         ; $4968: $9F
    inc b                                         ; $4969: $04
    adc d                                         ; $496A: $8A

jr_005_496B:
    inc b                                         ; $496B: $04
    dec a                                         ; $496C: $3D
    call nc, Call_000_0409                        ; $496D: $D4 $09 $04
    ld d, h                                       ; $4970: $54
    add e                                         ; $4971: $83
    adc h                                         ; $4972: $8C
    jp $C704                                      ; $4973: $C3 $04 $C7


    and h                                         ; $4976: $A4
    or h                                          ; $4977: $B4
    ei                                            ; $4978: $FB
    ld e, l                                       ; $4979: $5D
    add sp, $34                                   ; $497A: $E8 $34
    jp c, $06FF                                   ; $497C: $DA $FF $06

    ld c, b                                       ; $497F: $48
    ld bc, $0B38                                  ; $4980: $01 $38 $0B
    rlca                                          ; $4983: $07
    ldh [$FF1F], a                                ; $4984: $E0 $1F
    dec d                                         ; $4986: $15
    jr nz, jr_005_4938                            ; $4987: $20 $AF

    inc b                                         ; $4989: $04
    jr @-$29                                      ; $498A: $18 $D5

    rlca                                          ; $498C: $07
    ld c, d                                       ; $498D: $4A
    ld [$1604], sp                                ; $498E: $08 $04 $16
    inc b                                         ; $4991: $04
    xor e                                         ; $4992: $AB
    inc b                                         ; $4993: $04
    ld e, l                                       ; $4994: $5D
    ld e, a                                       ; $4995: $5F
    inc b                                         ; $4996: $04
    ret nz                                        ; $4997: $C0

    db $F4                                        ; $4998: $F4
    dec b                                         ; $4999: $05
    dec [hl]                                      ; $499A: $35
    jr nc, jr_005_49A1                            ; $499B: $30 $04

    ld d, a                                       ; $499D: $57
    dec l                                         ; $499E: $2D
    inc b                                         ; $499F: $04

jr_005_49A0:
    ld e, [hl]                                    ; $49A0: $5E

jr_005_49A1:
    inc b                                         ; $49A1: $04
    ld a, a                                       ; $49A2: $7F
    or l                                          ; $49A3: $B5
    or e                                          ; $49A4: $B3
    inc b                                         ; $49A5: $04
    ld d, a                                       ; $49A6: $57
    ld d, h                                       ; $49A7: $54
    inc b                                         ; $49A8: $04
    xor d                                         ; $49A9: $AA
    inc b                                         ; $49AA: $04
    ld e, l                                       ; $49AB: $5D
    inc b                                         ; $49AC: $04
    call z, Call_005_5504                         ; $49AD: $CC $04 $55
    db $FD                                        ; $49B0: $FD
    ld a, $F5                                     ; $49B1: $3E $F5
    inc b                                         ; $49B3: $04
    and b                                         ; $49B4: $A0
    inc b                                         ; $49B5: $04
    ret nc                                        ; $49B6: $D0

    inc b                                         ; $49B7: $04
    or $F4                                        ; $49B8: $F6 $F4
    scf                                           ; $49BA: $37
    rrca                                          ; $49BB: $0F
    halt                                          ; $49BC: $76
    ld bc, $0518                                  ; $49BD: $01 $18 $05
    inc bc                                        ; $49C0: $03
    dec [hl]                                      ; $49C1: $35
    db $FC                                        ; $49C2: $FC
    rlca                                          ; $49C3: $07
    ld c, b                                       ; $49C4: $48
    dec d                                         ; $49C5: $15
    jr z, @+$2E                                   ; $49C6: $28 $2C

    ld e, h                                       ; $49C8: $5C
    jp $06C3                                      ; $49C9: $C3 $C3 $06


    ld c, e                                       ; $49CC: $4B
    ei                                            ; $49CD: $FB
    inc b                                         ; $49CE: $04
    rst RST_28                                    ; $49CF: $EF
    db $10                                        ; $49D0: $10
    cpl                                           ; $49D1: $2F
    rlca                                          ; $49D2: $07
    add b                                         ; $49D3: $80
    rlca                                          ; $49D4: $07
    ld a, a                                       ; $49D5: $7F
    add b                                         ; $49D6: $80
    ccf                                           ; $49D7: $3F
    ret nz                                        ; $49D8: $C0

    sbc a                                         ; $49D9: $9F
    ldh [$FFF0], a                                ; $49DA: $E0 $F0
    add c                                         ; $49DC: $81
    db $10                                        ; $49DD: $10
    push bc                                       ; $49DE: $C5
    ld a, d                                       ; $49DF: $7A
    sbc e                                         ; $49E0: $9B
    db $E4                                        ; $49E1: $E4
    scf                                           ; $49E2: $37
    ret z                                         ; $49E3: $C8

    ld b, a                                       ; $49E4: $47
    xor d                                         ; $49E5: $AA
    rlca                                          ; $49E6: $07
    rst RST_08                                    ; $49E7: $CF
    ld b, b                                       ; $49E8: $40
    ld c, a                                       ; $49E9: $4F
    inc b                                         ; $49EA: $04
    ld h, a                                       ; $49EB: $67
    db $EC                                        ; $49EC: $EC
    and a                                         ; $49ED: $A7
    ld bc, $C378                                  ; $49EE: $01 $78 $C3
    inc a                                         ; $49F1: $3C
    pop de                                        ; $49F2: $D1

jr_005_49F3:
    ld l, $FD                                     ; $49F3: $2E $FD

jr_005_49F5:
    ld [bc], a                                    ; $49F5: $02
    db $DD                                        ; $49F6: $DD
    adc l                                         ; $49F7: $8D
    ld b, h                                       ; $49F8: $44
    rlca                                          ; $49F9: $07
    rst RST_30                                    ; $49FA: $F7
    rrca                                          ; $49FB: $0F
    dec b                                         ; $49FC: $05
    db $E4                                        ; $49FD: $E4
    rra                                           ; $49FE: $1F
    inc h                                         ; $49FF: $24
    xor e                                         ; $4A00: $AB
    inc b                                         ; $4A01: $04
    rst RST_18                                    ; $4A02: $DF
    and h                                         ; $4A03: $A4
    cp a                                          ; $4A04: $BF
    ret z                                         ; $4A05: $C8

    or [hl]                                       ; $4A06: $B6
    inc b                                         ; $4A07: $04
    adc a                                         ; $4A08: $8F
    rst RST_18                                    ; $4A09: $DF
    inc b                                         ; $4A0A: $04
    ld d, l                                       ; $4A0B: $55
    inc bc                                        ; $4A0C: $03
    dec b                                         ; $4A0D: $05
    ld b, h                                       ; $4A0E: $44
    ld h, h                                       ; $4A0F: $64
    ld a, h                                       ; $4A10: $7C
    ld e, h                                       ; $4A11: $5C
    db $DD                                        ; $4A12: $DD
    and b                                         ; $4A13: $A0

jr_005_4A14:
    ld d, h                                       ; $4A14: $54
    or $20                                        ; $4A15: $F6 $20
    ldh a, [rDIV]                                 ; $4A17: $F0 $04
    add sp, $04                                   ; $4A19: $E8 $04
    ld d, b                                       ; $4A1B: $50
    pop bc                                        ; $4A1C: $C1
    jr nc, jr_005_49A0                            ; $4A1D: $30 $81

    inc b                                         ; $4A1F: $04
    inc de                                        ; $4A20: $13
    db $EC                                        ; $4A21: $EC
    scf                                           ; $4A22: $37
    ret z                                         ; $4A23: $C8

    dec [hl]                                      ; $4A24: $35
    ld l, a                                       ; $4A25: $6F
    sub b                                         ; $4A26: $90
    db $FC                                        ; $4A27: $FC
    inc l                                         ; $4A28: $2C
    sub a                                         ; $4A29: $97
    inc b                                         ; $4A2A: $04
    ld a, c                                       ; $4A2B: $79
    inc b                                         ; $4A2C: $04
    ld d, h                                       ; $4A2D: $54
    ret nc                                        ; $4A2E: $D0

    inc b                                         ; $4A2F: $04
    adc b                                         ; $4A30: $88
    inc b                                         ; $4A31: $04
    or b                                          ; $4A32: $B0
    ret nz                                        ; $4A33: $C0

    ld l, d                                       ; $4A34: $6A
    sbc l                                         ; $4A35: $9D
    jr nz, jr_005_49F3                            ; $4A36: $20 $BB

    ld e, h                                       ; $4A38: $5C
    ret nc                                        ; $4A39: $D0

    ret nz                                        ; $4A3A: $C0

    adc a                                         ; $4A3B: $8F
    ldh a, [$FFE3]                                ; $4A3C: $F0 $E3

jr_005_4A3E:
    db $FC                                        ; $4A3E: $FC
    ld e, [hl]                                    ; $4A3F: $5E
    ld sp, hl                                     ; $4A40: $F9
    ld [hl], h                                    ; $4A41: $74
    ld a, $3C                                     ; $4A42: $3E $3C
    ld h, l                                       ; $4A44: $65
    ld bc, $73F9                                  ; $4A45: $01 $F9 $73
    ld bc, $F79C                                  ; $4A48: $01 $9C $F7
    jr jr_005_4A14                                ; $4A4B: $18 $C7

    jr c, jr_005_4A3E                             ; $4A4D: $38 $EF

    jr nc, jr_005_4A85                            ; $4A4F: $30 $34

    ret nz                                        ; $4A51: $C0

    inc b                                         ; $4A52: $04
    ld a, b                                       ; $4A53: $78
    jr nz, jr_005_49F5                            ; $4A54: $20 $9F

    ld h, b                                       ; $4A56: $60
    cp a                                          ; $4A57: $BF
    ld b, b                                       ; $4A58: $40
    add hl, de                                    ; $4A59: $19
    xor l                                         ; $4A5A: $AD
    ld b, h                                       ; $4A5B: $44
    add h                                         ; $4A5C: $84
    ld d, b                                       ; $4A5D: $50
    add b                                         ; $4A5E: $80
    inc b                                         ; $4A5F: $04
    cp h                                          ; $4A60: $BC
    cpl                                           ; $4A61: $2F
    add sp, -$2C                                  ; $4A62: $E8 $D4
    ldh a, [$FFF8]                                ; $4A64: $F0 $F8
    inc de                                        ; $4A66: $13
    sub b                                         ; $4A67: $90
    ld bc, $0030                                  ; $4A68: $01 $30 $00
    add a                                         ; $4A6B: $87
    ld l, d                                       ; $4A6C: $6A
    ld hl, sp+$48                                 ; $4A6D: $F8 $48
    db $10                                        ; $4A6F: $10
    ld hl, $0304                                  ; $4A70: $21 $04 $03
    ld b, $06                                     ; $4A73: $06 $06
    cp d                                          ; $4A75: $BA
    inc b                                         ; $4A76: $04
    dec c                                         ; $4A77: $0D
    inc b                                         ; $4A78: $04
    xor b                                         ; $4A79: $A8
    inc b                                         ; $4A7A: $04
    call z, $9504                                 ; $4A7B: $CC $04 $95
    adc b                                         ; $4A7E: $88
    ld e, b                                       ; $4A7F: $58
    ld a, d                                       ; $4A80: $7A
    db $FD                                        ; $4A81: $FD
    pop de                                        ; $4A82: $D1
    inc c                                         ; $4A83: $0C
    adc e                                         ; $4A84: $8B

jr_005_4A85:
    db $FC                                        ; $4A85: $FC
    or c                                          ; $4A86: $B1
    ld [hl+], a                                   ; $4A87: $22
    sbc $6B                                       ; $4A88: $DE $6B
    db $EC                                        ; $4A8A: $EC
    cp e                                          ; $4A8B: $BB
    ld e, h                                       ; $4A8C: $5C
    rra                                           ; $4A8D: $1F
    inc a                                         ; $4A8E: $3C
    ccf                                           ; $4A8F: $3F
    db $EB                                        ; $4A90: $EB
    inc b                                         ; $4A91: $04
    xor b                                         ; $4A92: $A8
    inc b                                         ; $4A93: $04
    ld a, [bc]                                    ; $4A94: $0A
    inc b                                         ; $4A95: $04
    dec b                                         ; $4A96: $05
    xor c                                         ; $4A97: $A9
    rlca                                          ; $4A98: $07
    jp z, Jump_000_1304                           ; $4A99: $CA $04 $13

    rst RST_28                                    ; $4A9C: $EF
    db $10                                        ; $4A9D: $10
    add b                                         ; $4A9E: $80
    ld [bc], a                                    ; $4A9F: $02
    dec d                                         ; $4AA0: $15
    add hl, sp                                    ; $4AA1: $39
    ld c, h                                       ; $4AA2: $4C
    add $2F                                       ; $4AA3: $C6 $2F
    cp a                                          ; $4AA5: $BF
    ret nz                                        ; $4AA6: $C0

    ld a, h                                       ; $4AA7: $7C
    inc b                                         ; $4AA8: $04
    ld a, a                                       ; $4AA9: $7F
    add b                                         ; $4AAA: $80
    db $ED                                        ; $4AAB: $ED
    inc e                                         ; $4AAC: $1C
    inc c                                         ; $4AAD: $0C
    inc b                                         ; $4AAE: $04
    ld hl, sp+$69                                 ; $4AAF: $F8 $69
    ld bc, $7FD4                                  ; $4AB1: $01 $D4 $7F
    di                                            ; $4AB4: $F3
    rlca                                          ; $4AB5: $07
    rlca                                          ; $4AB6: $07
    inc b                                         ; $4AB7: $04
    ld c, b                                       ; $4AB8: $48
    rlca                                          ; $4AB9: $07
    push de                                       ; $4ABA: $D5

jr_005_4ABB:
    ld l, b                                       ; $4ABB: $68
    rra                                           ; $4ABC: $1F
    add hl, de                                    ; $4ABD: $19
    rst RST_18                                    ; $4ABE: $DF
    jr nc, jr_005_4ABB                            ; $4ABF: $30 $FA

    inc h                                         ; $4AC1: $24
    dec d                                         ; $4AC2: $15
    dec sp                                        ; $4AC3: $3B
    call nz, $CF2F                                ; $4AC4: $C4 $2F $CF
    rlca                                          ; $4AC7: $07
    dec b                                         ; $4AC8: $05
    xor d                                         ; $4AC9: $AA
    ld d, l                                       ; $4ACA: $55
    ld de, $040C                                  ; $4ACB: $11 $0C $04
    db $10                                        ; $4ACE: $10
    push de                                       ; $4ACF: $D5
    add $1D                                       ; $4AD0: $C6 $1D
    dec d                                         ; $4AD2: $15
    inc b                                         ; $4AD3: $04
    ld b, d                                       ; $4AD4: $42
    inc b                                         ; $4AD5: $04
    or h                                          ; $4AD6: $B4
    inc b                                         ; $4AD7: $04
    ld d, l                                       ; $4AD8: $55
    ld e, c                                       ; $4AD9: $59
    inc b                                         ; $4ADA: $04
    rla                                           ; $4ADB: $17
    inc b                                         ; $4ADC: $04
    db $EB                                        ; $4ADD: $EB
    inc b                                         ; $4ADE: $04
    sbc $04                                       ; $4ADF: $DE $04
    ld d, l                                       ; $4AE1: $55
    ld [bc], a                                    ; $4AE2: $02
    inc b                                         ; $4AE3: $04
    ret z                                         ; $4AE4: $C8

    inc b                                         ; $4AE5: $04
    ld de, $4A04                                  ; $4AE6: $11 $04 $4A
    inc b                                         ; $4AE9: $04
    ld d, l                                       ; $4AEA: $55
    dec l                                         ; $4AEB: $2D
    inc b                                         ; $4AEC: $04
    rst RST_10                                    ; $4AED: $D7
    inc b                                         ; $4AEE: $04
    adc e                                         ; $4AEF: $8B
    inc b                                         ; $4AF0: $04
    db $FD                                        ; $4AF1: $FD
    inc b                                         ; $4AF2: $04
    ld d, l                                       ; $4AF3: $55
    cp l                                          ; $4AF4: $BD
    inc b                                         ; $4AF5: $04
    rst RST_28                                    ; $4AF6: $EF
    inc b                                         ; $4AF7: $04
    or l                                          ; $4AF8: $B5
    ld e, $6A                                     ; $4AF9: $1E $6A
    inc b                                         ; $4AFB: $04
    ld d, l                                       ; $4AFC: $55
    rlc h                                         ; $4AFD: $CB $04
    xor $04                                       ; $4AFF: $EE $04
    add hl, sp                                    ; $4B01: $39
    inc b                                         ; $4B02: $04
    ld e, e                                       ; $4B03: $5B
    ld [hl], $55                                  ; $4B04: $36 $55
    daa                                           ; $4B06: $27
    sbc $BB                                       ; $4B07: $DE $BB
    inc b                                         ; $4B09: $04
    adc a                                         ; $4B0A: $8F
    inc b                                         ; $4B0B: $04
    cp $04                                        ; $4B0C: $FE $04
    ld d, a                                       ; $4B0E: $57
    ld d, e                                       ; $4B0F: $53
    inc b                                         ; $4B10: $04
    ei                                            ; $4B11: $FB
    ld d, $CF                                     ; $4B12: $16 $CF
    ld d, $03                                     ; $4B14: $16 $03
    inc bc                                        ; $4B16: $03
    ld d, e                                       ; $4B17: $53
    ld b, b                                       ; $4B18: $40
    ld l, a                                       ; $4B19: $6F
    nop                                           ; $4B1A: $00
    rlca                                          ; $4B1B: $07
    ld b, $FF                                     ; $4B1C: $06 $FF
    rrca                                          ; $4B1E: $0F
    rrca                                          ; $4B1F: $0F
    rrca                                          ; $4B20: $0F
    ld [$F302], sp                                ; $4B21: $08 $02 $F3
    inc e                                         ; $4B24: $1C
    jp hl                                         ; $4B25: $E9


    ld a, $F0                                     ; $4B26: $3E $F0
    ccf                                           ; $4B28: $3F
    ld c, e                                       ; $4B29: $4B
    cp $66                                        ; $4B2A: $FE $66
    ld bc, $0818                                  ; $4B2C: $01 $18 $08
    ei                                            ; $4B2F: $FB
    rlca                                          ; $4B30: $07
    jr jr_005_4B3B                                ; $4B31: $18 $08

    rst RST_30                                    ; $4B33: $F7
    ld [bc], a                                    ; $4B34: $02
    rrca                                          ; $4B35: $0F
    rst RST_28                                    ; $4B36: $EF
    rra                                           ; $4B37: $1F
    ld hl, sp+$7F                                 ; $4B38: $F8 $7F
    ld d, b                                       ; $4B3A: $50

jr_005_4B3B:
    ld b, b                                       ; $4B3B: $40
    add b                                         ; $4B3C: $80
    xor d                                         ; $4B3D: $AA
    ld [$08E0], sp                                ; $4B3E: $08 $E0 $08
    ret nz                                        ; $4B41: $C0

    ld a, [hl+]                                   ; $4B42: $2A
    ld b, b                                       ; $4B43: $40
    ldh [c], a                                    ; $4B44: $E2
    ccf                                           ; $4B45: $3F
    call c, $A040                                 ; $4B46: $DC $40 $A0
    ldh a, [$FFC0]                                ; $4B49: $F0 $C0
    and b                                         ; $4B4B: $A0
    add hl, bc                                    ; $4B4C: $09
    inc bc                                        ; $4B4D: $03
    db $FC                                        ; $4B4E: $FC
    sbc [hl]                                      ; $4B4F: $9E
    add hl, bc                                    ; $4B50: $09
    ld bc, $79FE                                  ; $4B51: $01 $FE $79
    ldh a, [$FFB0]                                ; $4B54: $F0 $B0
    adc c                                         ; $4B56: $89
    rra                                           ; $4B57: $1F
    rst RST_38                                    ; $4B58: $FF
    ldh a, [$FF99]                                ; $4B59: $F0 $99
    xor e                                         ; $4B5B: $AB
    sbc e                                         ; $4B5C: $9B
    add b                                         ; $4B5D: $80
    sub c                                         ; $4B5E: $91
    rrca                                          ; $4B5F: $0F
    ld [$F13C], sp                                ; $4B60: $08 $3C $F1
    ld c, $D0                                     ; $4B63: $0E $D0
    ldh [$FF5F], a                                ; $4B65: $E0 $5F
    dec bc                                        ; $4B67: $0B
    rst RST_30                                    ; $4B68: $F7
    ld a, b                                       ; $4B69: $78
    ld l, b                                       ; $4B6A: $68
    xor b                                         ; $4B6B: $A8
    jr nz, jr_005_4B6E                            ; $4B6C: $20 $00

jr_005_4B6E:
    ld bc, $0308                                  ; $4B6E: $01 $08 $03
    ei                                            ; $4B71: $FB
    rlca                                          ; $4B72: $07
    ld de, $1FE7                                  ; $4B73: $11 $E7 $1F
    call $92C8                                    ; $4B76: $CD $C8 $92
    ld a, a                                       ; $4B79: $7F
    ld [$6A50], sp                                ; $4B7A: $08 $50 $6A
    db $10                                        ; $4B7D: $10
    ld a, c                                       ; $4B7E: $79
    ld c, b                                       ; $4B7F: $48
    rst RST_18                                    ; $4B80: $DF
    ld c, b                                       ; $4B81: $48
    cp $08                                        ; $4B82: $FE $08
    cp a                                          ; $4B84: $BF
    ld [$3858], a                                 ; $4B85: $EA $58 $38
    ld [$08FD], sp                                ; $4B88: $08 $FD $08
    ld a, [$FC20]                                 ; $4B8B: $FA $20 $FC
    xor d                                         ; $4B8E: $AA
    ld [$0880], sp                                ; $4B8F: $08 $80 $08
    ld b, b                                       ; $4B92: $40
    ld [$2A00], sp                                ; $4B93: $08 $00 $2A
    add sp, -$13                                  ; $4B96: $E8 $ED
    ld e, d                                       ; $4B98: $5A
    cp b                                          ; $4B99: $B8
    ld [$1A55], sp                                ; $4B9A: $08 $55 $1A
    ld bc, $08B6                                  ; $4B9D: $01 $B6 $08
    ld d, l                                       ; $4BA0: $55
    ld c, e                                       ; $4BA1: $4B
    ld [$0894], sp                                ; $4BA2: $08 $94 $08
    ld a, c                                       ; $4BA5: $79
    ld [$BAD0], sp                                ; $4BA6: $08 $D0 $BA
    ld d, l                                       ; $4BA9: $55
    cp [hl]                                       ; $4BAA: $BE
    ld [$085D], sp                                ; $4BAB: $08 $5D $08
    sbc [hl]                                      ; $4BAE: $9E
    ld [$08C5], sp                                ; $4BAF: $08 $C5 $08
    ld d, l                                       ; $4BB2: $55
    adc b                                         ; $4BB3: $88
    ld [$0814], sp                                ; $4BB4: $08 $14 $08
    ld [bc], a                                    ; $4BB7: $02
    ld [$0F00], sp                                ; $4BB8: $08 $00 $0F
    ret nz                                        ; $4BBB: $C0

    rrca                                          ; $4BBC: $0F
    ld [$807F], sp                                ; $4BBD: $08 $7F $80
    ccf                                           ; $4BC0: $3F
    ret nz                                        ; $4BC1: $C0

    rra                                           ; $4BC2: $1F
    ldh [rNR41], a                                ; $4BC3: $E0 $20
    rrca                                          ; $4BC5: $0F
    ldh a, [$FF09]                                ; $4BC6: $F0 $09
    rlca                                          ; $4BC8: $07
    ld hl, sp+$03                                 ; $4BC9: $F8 $03
    db $FC                                        ; $4BCB: $FC
    ld bc, $FE5D                                  ; $4BCC: $01 $5D $FE
    sbc e                                         ; $4BCF: $9B
    and b                                         ; $4BD0: $A0
    ld [$0890], sp                                ; $4BD1: $08 $90 $08
    xor b                                         ; $4BD4: $A8
    ld [$0467], sp                                ; $4BD5: $08 $67 $04
    rst RST_38                                    ; $4BD8: $FF
    ld a, [$F30C]                                 ; $4BD9: $FA $0C $F3
    ld e, e                                       ; $4BDC: $5B
    dec bc                                        ; $4BDD: $0B
    inc hl                                        ; $4BDE: $23
    add a                                         ; $4BDF: $87
    ld a, c                                       ; $4BE0: $79
    inc bc                                        ; $4BE1: $03
    db $FC                                        ; $4BE2: $FC
    ld bc, $09FE                                  ; $4BE3: $01 $FE $09
    ld a, e                                       ; $4BE6: $7B
    ld sp, $DE0C                                  ; $4BE7: $31 $0C $DE
    ld hl, $738C                                  ; $4BEA: $21 $8C $73
    rst RST_28                                    ; $4BED: $EF
    add hl, bc                                    ; $4BEE: $09
    ldh a, [$FF7F]                                ; $4BEF: $F0 $7F
    ld d, [hl]                                    ; $4BF1: $56
    xor b                                         ; $4BF2: $A8
    jr jr_005_4C45                                ; $4BF3: $18 $50

    ld a, [hl-]                                   ; $4BF5: $3A
    db $10                                        ; $4BF6: $10
    ld a, [hl]                                    ; $4BF7: $7E
    ld [hl], b                                    ; $4BF8: $70
    add b                                         ; $4BF9: $80
    inc c                                         ; $4BFA: $0C
    ld a, $C1                                     ; $4BFB: $3E $C1
    ld [$EFF7], sp                                ; $4BFD: $08 $F7 $EF
    add hl, bc                                    ; $4C00: $09
    ld c, $FD                                     ; $4C01: $0E $FD
    xor d                                         ; $4C03: $AA
    adc b                                         ; $4C04: $88
    ld a, [$F020]                                 ; $4C05: $FA $20 $F0
    ld [$08A8], sp                                ; $4C08: $08 $A8 $08
    ld b, c                                       ; $4C0B: $41
    ret nz                                        ; $4C0C: $C0

    add l                                         ; $4C0D: $85
    ld de, $AF50                                  ; $4C0E: $11 $50 $AF
    ldh [$FF1F], a                                ; $4C11: $E0 $1F
    ld [hl], b                                    ; $4C13: $70
    adc a                                         ; $4C14: $8F
    ld a, [hl+]                                   ; $4C15: $2A
    ld hl, sp+$07                                 ; $4C16: $F8 $07
    and b                                         ; $4C18: $A0
    rrca                                          ; $4C19: $0F
    ret nz                                        ; $4C1A: $C0

    dec b                                         ; $4C1B: $05
    ld a, c                                       ; $4C1C: $79
    add hl, de                                    ; $4C1D: $19
    inc e                                         ; $4C1E: $1C
    and $10                                       ; $4C1F: $E6 $10
    rst RST_28                                    ; $4C21: $EF
    call nz, Call_000_350E                        ; $4C22: $C4 $0E $35
    ld a, a                                       ; $4C25: $7F
    add b                                         ; $4C26: $80
    inc hl                                        ; $4C27: $23
    rra                                           ; $4C28: $1F
    ldh [$FFF0], a                                ; $4C29: $E0 $F0
    ldh a, [$FF03]                                ; $4C2B: $F0 $03
    db $FC                                        ; $4C2D: $FC
    ld a, a                                       ; $4C2E: $7F

jr_005_4C2F:
    add hl, bc                                    ; $4C2F: $09
    ld [hl-], a                                   ; $4C30: $32
    ld a, [$7005]                                 ; $4C31: $FA $05 $70
    add b                                         ; $4C34: $80
    and b                                         ; $4C35: $A0
    ld e, a                                       ; $4C36: $5F
    ld a, e                                       ; $4C37: $7B
    cp $D1                                        ; $4C38: $FE $D1
    or c                                          ; $4C3A: $B1
    ld c, b                                       ; $4C3B: $48

jr_005_4C3C:
    db $EC                                        ; $4C3C: $EC
    ldh a, [$FFD0]                                ; $4C3D: $F0 $D0
    ccf                                           ; $4C3F: $3F
    add sp, $08                                   ; $4C40: $E8 $08
    add hl, hl                                    ; $4C42: $29
    ret nz                                        ; $4C43: $C0

    ld a, a                                       ; $4C44: $7F

jr_005_4C45:
    push hl                                       ; $4C45: $E5
    ld a, [bc]                                    ; $4C46: $0A
    ld [$EF17], sp                                ; $4C47: $08 $17 $EF
    sub b                                         ; $4C4A: $90
    ld e, l                                       ; $4C4B: $5D
    ld a, [$F818]                                 ; $4C4C: $FA $18 $F8
    add c                                         ; $4C4F: $81
    ld h, c                                       ; $4C50: $61
    ld l, c                                       ; $4C51: $69
    inc b                                         ; $4C52: $04
    ld [$1A0A], sp                                ; $4C53: $08 $0A $1A
    db $FD                                        ; $4C56: $FD
    cp [hl]                                       ; $4C57: $BE
    db $EB                                        ; $4C58: $EB
    jr nz, jr_005_4C2F                            ; $4C59: $20 $D4

    ld [$EB20], sp                                ; $4C5B: $08 $20 $EB
    db $E3                                        ; $4C5E: $E3
    ei                                            ; $4C5F: $FB
    add hl, bc                                    ; $4C60: $09
    add hl, bc                                    ; $4C61: $09
    ld [$085F], sp                                ; $4C62: $08 $5F $08
    add sp, -$7F                                  ; $4C65: $E8 $81
    xor b                                         ; $4C67: $A8
    ld a, a                                       ; $4C68: $7F
    xor $1F                                       ; $4C69: $EE $1F
    db $F4                                        ; $4C6B: $F4
    rlca                                          ; $4C6C: $07
    cp $48                                        ; $4C6D: $FE $48
    ld d, l                                       ; $4C6F: $55
    cp a                                          ; $4C70: $BF
    ld c, b                                       ; $4C71: $48
    ld [$D048], a                                 ; $4C72: $EA $48 $D0
    ld [hl], b                                    ; $4C75: $70
    inc h                                         ; $4C76: $24
    ld [$106A], sp                                ; $4C77: $08 $6A $10
    db $D3                                        ; $4C7A: $D3
    ld c, b                                       ; $4C7B: $48
    ld a, [$5C18]                                 ; $4C7C: $FA $18 $5C
    ld [$B8AA], sp                                ; $4C7F: $08 $AA $B8
    ld [$5B11], sp                                ; $4C82: $08 $11 $5B
    dec bc                                        ; $4C85: $0B
    inc hl                                        ; $4C86: $23
    ld l, b                                       ; $4C87: $68
    cp a                                          ; $4C88: $BF
    cp $55                                        ; $4C89: $FE $55
    rst RST_10                                    ; $4C8B: $D7
    jr nz, jr_005_4C3C                            ; $4C8C: $20 $AE

    ld [$085D], sp                                ; $4C8E: $08 $5D $08
    adc [hl]                                      ; $4C91: $8E
    ld [$144D], sp                                ; $4C92: $08 $4D $14
    ld l, c                                       ; $4C95: $69
    rlca                                          ; $4C96: $07
    db $FD                                        ; $4C97: $FD
    ld [$1F70], sp                                ; $4C98: $08 $70 $1F
    jr jr_005_4CCA                                ; $4C9B: $18 $2D

jr_005_4C9D:
    ccf                                           ; $4C9D: $3F
    ret nc                                        ; $4C9E: $D0

    ld b, b                                       ; $4C9F: $40
    jr nz, jr_005_4C9D                            ; $4CA0: $20 $FB

    inc c                                         ; $4CA2: $0C
    add b                                         ; $4CA3: $80
    ld [$5074], sp                                ; $4CA4: $08 $74 $50
    ld a, [de]                                    ; $4CA7: $1A
    ld a, h                                       ; $4CA8: $7C
    add l                                         ; $4CA9: $85
    and b                                         ; $4CAA: $A0
    ld [$EFF0], sp                                ; $4CAB: $08 $F0 $EF
    inc bc                                        ; $4CAE: $03
    ldh [$FFDF], a                                ; $4CAF: $E0 $DF
    db $F4                                        ; $4CB1: $F4
    adc e                                         ; $4CB2: $8B

Jump_005_4CB3:
    cp $01                                        ; $4CB3: $FE $01
    ld e, c                                       ; $4CB5: $59
    db $10                                        ; $4CB6: $10
    adc c                                         ; $4CB7: $89
    ld a, [bc]                                    ; $4CB8: $0A
    ld d, a                                       ; $4CB9: $57
    xor a                                         ; $4CBA: $AF
    ccf                                           ; $4CBB: $3F
    ld l, b                                       ; $4CBC: $68
    ld a, a                                       ; $4CBD: $7F
    xor e                                         ; $4CBE: $AB
    jr nc, jr_005_4D19                            ; $4CBF: $30 $58

    ld [hl], l                                    ; $4CC1: $75
    ld [$EBBA], sp                                ; $4CC2: $08 $BA $EB
    ld a, c                                       ; $4CC5: $79
    ld b, $FD                                     ; $4CC6: $06 $FD
    inc hl                                        ; $4CC8: $23
    and l                                         ; $4CC9: $A5

jr_005_4CCA:
    ret nc                                        ; $4CCA: $D0

    dec de                                        ; $4CCB: $1B
    ldh a, [$FF6F]                                ; $4CCC: $F0 $6F
    call nc, $20A0                                ; $4CCE: $D4 $A0 $20
    ld l, c                                       ; $4CD1: $69
    ld b, b                                       ; $4CD2: $40
    ld a, [bc]                                    ; $4CD3: $0A
    ld [$CB36], sp                                ; $4CD4: $08 $36 $CB
    ei                                            ; $4CD7: $FB
    add h                                         ; $4CD8: $84
    db $FC                                        ; $4CD9: $FC
    ld b, e                                       ; $4CDA: $43
    xor d                                         ; $4CDB: $AA
    add b                                         ; $4CDC: $80
    and c                                         ; $4CDD: $A1
    and b                                         ; $4CDE: $A0
    ld [bc], a                                    ; $4CDF: $02
    ldh [c], a                                    ; $4CE0: $E2
    ld d, l                                       ; $4CE1: $55
    ld [$B8AA], sp                                ; $4CE2: $08 $AA $B8
    ld [$3A10], sp                                ; $4CE5: $08 $10 $3A
    ld c, $11                                     ; $4CE8: $0E $11
    ld d, a                                       ; $4CEA: $57
    ld a, [$4D3E]                                 ; $4CEB: $FA $3E $4D
    push de                                       ; $4CEE: $D5
    ret c                                         ; $4CEF: $D8

    cp a                                          ; $4CF0: $BF
    ld a, a                                       ; $4CF1: $7F
    jr z, jr_005_4D34                             ; $4CF2: $28 $40

    ld d, h                                       ; $4CF4: $54
    ld [$A248], sp                                ; $4CF5: $08 $48 $A2
    ld [$6005], sp                                ; $4CF8: $08 $05 $60
    ld c, b                                       ; $4CFB: $48
    ldh a, [$FF6F]                                ; $4CFC: $F0 $6F
    ld hl, sp+$16                                 ; $4CFE: $F8 $16
    sub a                                         ; $4D00: $97
    db $F4                                        ; $4D01: $F4
    ld c, e                                       ; $4D02: $4B
    adc b                                         ; $4D03: $88
    ld bc, $09FD                                  ; $4D04: $01 $FD $09
    ld d, l                                       ; $4D07: $55
    ld [hl], l                                    ; $4D08: $75
    xor d                                         ; $4D09: $AA
    nop                                           ; $4D0A: $00
    db $10                                        ; $4D0B: $10
    ld d, l                                       ; $4D0C: $55
    ld b, [hl]                                    ; $4D0D: $46
    ld [$0895], sp                                ; $4D0E: $08 $95 $08
    push de                                       ; $4D11: $D5
    ld a, a                                       ; $4D12: $7F
    dec bc                                        ; $4D13: $0B
    add hl, hl                                    ; $4D14: $29
    ld [$0810], sp                                ; $4D15: $08 $10 $08
    ld h, d                                       ; $4D18: $62

jr_005_4D19:
    ld [$0455], sp                                ; $4D19: $08 $55 $04
    ld [$084A], sp                                ; $4D1C: $08 $4A $08
    or l                                          ; $4D1F: $B5
    ld [$0859], sp                                ; $4D20: $08 $59 $08
    ld d, a                                       ; $4D23: $57
    inc d                                         ; $4D24: $14
    ld [$0889], sp                                ; $4D25: $08 $89 $08
    sbc $08                                       ; $4D28: $DE $08
    ret c                                         ; $4D2A: $D8

    ld [$466A], sp                                ; $4D2B: $08 $6A $46
    ld l, d                                       ; $4D2E: $6A
    adc c                                         ; $4D2F: $89
    dec h                                         ; $4D30: $25
    ld [$08D7], sp                                ; $4D31: $08 $D7 $08

jr_005_4D34:
    xor e                                         ; $4D34: $AB
    or e                                          ; $4D35: $B3
    ld [$08C9], sp                                ; $4D36: $08 $C9 $08
    nop                                           ; $4D39: $00
    nop                                           ; $4D3A: $00
    ld d, l                                       ; $4D3B: $55
    sub b                                         ; $4D3C: $90
    nop                                           ; $4D3D: $00
    push af                                       ; $4D3E: $F5
    db $10                                        ; $4D3F: $10
    jr nz, jr_005_4D73                            ; $4D40: $20 $31

    ld [$0852], sp                                ; $4D42: $08 $52 $08
    xor c                                         ; $4D45: $A9
    ld [$40D2], sp                                ; $4D46: $08 $D2 $40
    ld [$089B], sp                                ; $4D49: $08 $9B $08
    ld a, $FD                                     ; $4D4C: $3E $FD
    and c                                         ; $4D4E: $A1
    ldh [$FFC6], a                                ; $4D4F: $E0 $C6
    ld c, c                                       ; $4D51: $49
    xor c                                         ; $4D52: $A9
    push de                                       ; $4D53: $D5
    rst RST_18                                    ; $4D54: $DF
    db $FC                                        ; $4D55: $FC
    ld c, c                                       ; $4D56: $49
    pop bc                                        ; $4D57: $C1
    ccf                                           ; $4D58: $3F

jr_005_4D59:
    dec [hl]                                      ; $4D59: $35
    ret nz                                        ; $4D5A: $C0

    inc bc                                        ; $4D5B: $03
    jr c, jr_005_4D59                             ; $4D5C: $38 $FB

    sub d                                         ; $4D5E: $92
    ld [$0869], sp                                ; $4D5F: $08 $69 $08
    ld h, d                                       ; $4D62: $62
    add b                                         ; $4D63: $80
    ld a, d                                       ; $4D64: $7A
    dec c                                         ; $4D65: $0D
    rra                                           ; $4D66: $1F
    ldh [rNR13], a                                ; $4D67: $E0 $13
    xor b                                         ; $4D69: $A8
    add a                                         ; $4D6A: $87
    nop                                           ; $4D6B: $00
    ld hl, sp+$2F                                 ; $4D6C: $F8 $2F
    ret nc                                        ; $4D6E: $D0

    add l                                         ; $4D6F: $85
    ld a, [$55AA]                                 ; $4D70: $FA $AA $55

jr_005_4D73:
    rst RST_10                                    ; $4D73: $D7
    ld c, $E8                                     ; $4D74: $0E $E8
    ld l, $D1                                     ; $4D76: $2E $D1
    ld a, a                                       ; $4D78: $7F
    pop de                                        ; $4D79: $D1
    cp e                                          ; $4D7A: $BB
    adc b                                         ; $4D7B: $88
    ld e, a                                       ; $4D7C: $5F
    add hl, de                                    ; $4D7D: $19
    and b                                         ; $4D7E: $A0
    cp a                                          ; $4D7F: $BF
    ld b, b                                       ; $4D80: $40
    ld e, [hl]                                    ; $4D81: $5E
    dec c                                         ; $4D82: $0D
    ld bc, $226E                                  ; $4D83: $01 $6E $22
    jp nz, $B0A0                                  ; $4D86: $C2 $A0 $B0

    call nc, $FB2B                                ; $4D89: $D4 $2B $FB
    inc b                                         ; $4D8C: $04
    ld a, e                                       ; $4D8D: $7B
    sbc a                                         ; $4D8E: $9F
    cp h                                          ; $4D8F: $BC
    db $10                                        ; $4D90: $10
    ccf                                           ; $4D91: $3F
    ld [$A001], sp                                ; $4D92: $08 $01 $A0
    ld [$55AA], sp                                ; $4D95: $08 $AA $55
    jp nz, $1000                                  ; $4D98: $C2 $00 $10

    xor a                                         ; $4D9B: $AF
    ld d, b                                       ; $4D9C: $50
    rst RST_10                                    ; $4D9D: $D7
    jr z, @-$75                                   ; $4D9E: $28 $89

    ret nc                                        ; $4DA0: $D0

    nop                                           ; $4DA1: $00
    cpl                                           ; $4DA2: $2F
    ld [$F515], a                                 ; $4DA3: $EA $15 $F5
    ld a, [bc]                                    ; $4DA6: $0A
    ld hl, sp+$07                                 ; $4DA7: $F8 $07
    ldh a, [$FF2A]                                ; $4DA9: $F0 $2A
    rrca                                          ; $4DAB: $0F
    jp hl                                         ; $4DAC: $E9


    ret nc                                        ; $4DAD: $D0

    sub h                                         ; $4DAE: $94
    ld [hl], b                                    ; $4DAF: $70
    cp d                                          ; $4DB0: $BA
    ld [$AD75], sp                                ; $4DB1: $08 $75 $AD
    ld [$08DB], sp                                ; $4DB4: $08 $DB $08
    db $FC                                        ; $4DB7: $FC
    ld [$5FD8], sp                                ; $4DB8: $08 $D8 $5F
    ld hl, sp+$55                                 ; $4DBB: $F8 $55
    xor e                                         ; $4DBD: $AB
    ld e, b                                       ; $4DBE: $58
    ld b, l                                       ; $4DBF: $45
    jp hl                                         ; $4DC0: $E9


jr_005_4DC1:
    sbc e                                         ; $4DC1: $9B
    db $10                                        ; $4DC2: $10
    inc h                                         ; $4DC3: $24
    ld [$D777], sp                                ; $4DC4: $08 $77 $D7
    ld [$08C8], sp                                ; $4DC7: $08 $C8 $08
    ld [hl], a                                    ; $4DCA: $77
    ld [$9A01], sp                                ; $4DCB: $08 $01 $9A
    ld a, [hl+]                                   ; $4DCE: $2A
    xor d                                         ; $4DCF: $AA
    add hl, sp                                    ; $4DD0: $39
    jr z, jr_005_4DC1                             ; $4DD1: $28 $EE

    ld [$0893], sp                                ; $4DD3: $08 $93 $08
    ld a, [hl-]                                   ; $4DD6: $3A
    xor d                                         ; $4DD7: $AA
    ld [$08CD], sp                                ; $4DD8: $08 $CD $08
    or a                                          ; $4DDB: $B7
    ld [$08EF], sp                                ; $4DDC: $08 $EF $08
    cp l                                          ; $4DDF: $BD
    xor d                                         ; $4DE0: $AA
    ld [$0853], sp                                ; $4DE1: $08 $53 $08
    cp $08                                        ; $4DE4: $FE $08
    rst RST_08                                    ; $4DE6: $CF
    ld [$AAB9], sp                                ; $4DE7: $08 $B9 $AA
    ld a, d                                       ; $4DEA: $7A
    cpl                                           ; $4DEB: $2F
    ld [$08F5], sp                                ; $4DEC: $08 $F5 $08
    rst RST_18                                    ; $4DEF: $DF
    ld [$AAE7], sp                                ; $4DF0: $08 $E7 $AA
    ld [$7A76], sp                                ; $4DF3: $08 $76 $7A
    ei                                            ; $4DF6: $FB
    ld [$08BF], sp                                ; $4DF7: $08 $BF $08
    rst RST_30                                    ; $4DFA: $F7
    or a                                          ; $4DFB: $B7
    ld a, [$087F]                                 ; $4DFC: $FA $7F $08
    ld bc, $AAE6                                  ; $4DFF: $01 $E6 $AA
    ld a, e                                       ; $4E02: $7B
    ld bc, $29F6                                  ; $4E03: $01 $F6 $29
    ld c, c                                       ; $4E06: $49
    rlca                                          ; $4E07: $07

Call_005_4E08:
    rlca                                          ; $4E08: $07
    nop                                           ; $4E09: $00
    rlca                                          ; $4E0A: $07
    ld b, $00                                     ; $4E0B: $06 $00
    ld d, h                                       ; $4E0D: $54
    ld b, b                                       ; $4E0E: $40
    ld h, b                                       ; $4E0F: $60
    nop                                           ; $4E10: $00
    rlca                                          ; $4E11: $07
    ld b, $FE                                     ; $4E12: $06 $FE
    ld bc, $06F9                                  ; $4E14: $01 $F9 $06
    pop af                                        ; $4E17: $F1
    nop                                           ; $4E18: $00
    ld c, $CB                                     ; $4E19: $0E $CB
    inc a                                         ; $4E1B: $3C
    or e                                          ; $4E1C: $B3
    ld a, h                                       ; $4E1D: $7C
    ld [hl], a                                    ; $4E1E: $77
    ld hl, sp+$6F                                 ; $4E1F: $F8 $6F
    ld c, $F0                                     ; $4E21: $0E $F0
    sbc a                                         ; $4E23: $9F
    ld h, b                                       ; $4E24: $60
    rst RST_38                                    ; $4E25: $FF
    adc b                                         ; $4E26: $88
    rrca                                          ; $4E27: $0F
    dec c                                         ; $4E28: $0D
    xor e                                         ; $4E29: $AB
    rlca                                          ; $4E2A: $07
    ld d, h                                       ; $4E2B: $54
    ld d, l                                       ; $4E2C: $55
    xor d                                         ; $4E2D: $AA
    ld [$77F7], sp                                ; $4E2E: $08 $F7 $77
    add hl, bc                                    ; $4E31: $09
    ld de, $7981                                  ; $4E32: $11 $81 $79

jr_005_4E35:
    ld a, [hl+]                                   ; $4E35: $2A
    push de                                       ; $4E36: $D5
    jr @-$17                                      ; $4E37: $18 $E7

    inc b                                         ; $4E39: $04
    ei                                            ; $4E3A: $FB
    ld a, a                                       ; $4E3B: $7F
    and $0B                                       ; $4E3C: $E6 $0B
    ld h, b                                       ; $4E3E: $60
    ld [hl], b                                    ; $4E3F: $70
    push af                                       ; $4E40: $F5
    ld c, $19                                     ; $4E41: $0E $19
    ld c, e                                       ; $4E43: $4B
    add sp, $66                                   ; $4E44: $E8 $66
    rla                                           ; $4E46: $17
    ld sp, hl                                     ; $4E47: $F9
    jp hl                                         ; $4E48: $E9


    db $10                                        ; $4E49: $10
    rst RST_28                                    ; $4E4A: $EF
    db $ED                                        ; $4E4B: $ED
    ei                                            ; $4E4C: $FB
    ld a, a                                       ; $4E4D: $7F
    add hl, de                                    ; $4E4E: $19
    add b                                         ; $4E4F: $80
    xor a                                         ; $4E50: $AF
    ld d, b                                       ; $4E51: $50
    and b                                         ; $4E52: $A0
    or b                                          ; $4E53: $B0
    rrca                                          ; $4E54: $0F
    ldh a, [rNR24]                                ; $4E55: $F0 $19
    jr nc, jr_005_4E64                            ; $4E57: $30 $0B

    db $F4                                        ; $4E59: $F4

jr_005_4E5A:
    add hl, de                                    ; $4E5A: $19
    ld a, c                                       ; $4E5B: $79
    db $FD                                        ; $4E5C: $FD
    ld [bc], a                                    ; $4E5D: $02
    di                                            ; $4E5E: $F3
    inc c                                         ; $4E5F: $0C
    inc bc                                        ; $4E60: $03
    db $E3                                        ; $4E61: $E3
    inc e                                         ; $4E62: $1C
    rst RST_10                                    ; $4E63: $D7

jr_005_4E64:
    jr c, jr_005_4E35                             ; $4E64: $38 $CF

    jr nc, jr_005_4E5A                            ; $4E66: $30 $F2

    ld [$8BC3], a                                 ; $4E68: $EA $C3 $8B
    ld c, e                                       ; $4E6B: $4B
    cp a                                          ; $4E6C: $BF
    ld b, b                                       ; $4E6D: $40
    ei                                            ; $4E6E: $FB
    inc b                                         ; $4E6F: $04
    dec sp                                        ; $4E70: $3B
    ld a, e                                       ; $4E71: $7B
    sbc b                                         ; $4E72: $98
    xor c                                         ; $4E73: $A9
    or $09                                        ; $4E74: $F6 $09
    db $ED                                        ; $4E76: $ED
    ld e, b                                       ; $4E77: $58
    rlca                                          ; $4E78: $07
    ld hl, sp+$1F                                 ; $4E79: $F8 $1F
    dec d                                         ; $4E7B: $15
    ldh [c], a                                    ; $4E7C: $E2
    ccf                                           ; $4E7D: $3F
    ret z                                         ; $4E7E: $C8

    ld [$50A0], sp                                ; $4E7F: $08 $A0 $50
    ret nc                                        ; $4E82: $D0

    ld [$19BC], sp                                ; $4E83: $08 $BC $19
    ret nz                                        ; $4E86: $C0

    ld [$0FA2], sp                                ; $4E87: $08 $A2 $0F
    ld [$AF50], sp                                ; $4E8A: $08 $50 $AF
    inc sp                                        ; $4E8D: $33
    xor d                                         ; $4E8E: $AA
    ld d, l                                       ; $4E8F: $55
    ld e, a                                       ; $4E90: $5F
    add hl, bc                                    ; $4E91: $09
    ld [bc], a                                    ; $4E92: $02
    db $FD                                        ; $4E93: $FD
    ld h, b                                       ; $4E94: $60
    ld [hl], b                                    ; $4E95: $70
    daa                                           ; $4E96: $27
    ld a, [$5305]                                 ; $4E97: $FA $05 $53
    cp $01                                        ; $4E9A: $FE $01
    jr @+$0A                                      ; $4E9C: $18 $08

    add hl, de                                    ; $4E9E: $19
    cp h                                          ; $4E9F: $BC
    ld [hl], b                                    ; $4EA0: $70
    inc bc                                        ; $4EA1: $03
    jr jr_005_4EAC                                ; $4EA2: $18 $08

    add hl, de                                    ; $4EA4: $19
    call $F708                                    ; $4EA5: $CD $08 $F7
    nop                                           ; $4EA8: $00
    inc b                                         ; $4EA9: $04
    ei                                            ; $4EAA: $FB
    ld a, [bc]                                    ; $4EAB: $0A

jr_005_4EAC:
    push af                                       ; $4EAC: $F5
    ld d, a                                       ; $4EAD: $57
    xor b                                         ; $4EAE: $A8
    xor d                                         ; $4EAF: $AA
    ld d, l                                       ; $4EB0: $55
    add e                                         ; $4EB1: $83
    ei                                            ; $4EB2: $FB
    cpl                                           ; $4EB3: $2F
    ret nc                                        ; $4EB4: $D0

    dec d                                         ; $4EB5: $15
    ld [$9882], a                                 ; $4EB6: $EA $82 $98
    ld b, c                                       ; $4EB9: $41
    ld [hl], e                                    ; $4EBA: $73
    add b                                         ; $4EBB: $80
    ld h, d                                       ; $4EBC: $62
    ld a, e                                       ; $4EBD: $7B
    dec bc                                        ; $4EBE: $0B
    xor a                                         ; $4EBF: $AF
    ld d, b                                       ; $4EC0: $50
    jp hl                                         ; $4EC1: $E9


    cp c                                          ; $4EC2: $B9
    inc bc                                        ; $4EC3: $03
    ld bc, $0BFE                                  ; $4EC4: $01 $FE $0B
    db $F4                                        ; $4EC7: $F4
    rlca                                          ; $4EC8: $07
    ld hl, sp+$19                                 ; $4EC9: $F8 $19
    ld e, c                                       ; $4ECB: $59
    ld [hl-], a                                   ; $4ECC: $32
    adc a                                         ; $4ECD: $8F
    ld [hl], b                                    ; $4ECE: $70
    add hl, de                                    ; $4ECF: $19
    sbc c                                         ; $4ED0: $99
    ld e, a                                       ; $4ED1: $5F
    and b                                         ; $4ED2: $A0
    ret                                           ; $4ED3: $C9


    ld d, l                                       ; $4ED4: $55
    inc e                                         ; $4ED5: $1C
    xor d                                         ; $4ED6: $AA
    ld a, [hl+]                                   ; $4ED7: $2A
    push de                                       ; $4ED8: $D5
    jr nz, @+$33                                  ; $4ED9: $20 $31

    ld a, [bc]                                    ; $4EDB: $0A
    ret nz                                        ; $4EDC: $C0

    ld a, a                                       ; $4EDD: $7F
    jr nz, jr_005_4F20                            ; $4EDE: $20 $40

    cp a                                          ; $4EE0: $BF
    jr nz, jr_005_4EE4                            ; $4EE1: $20 $01

    db $FD                                        ; $4EE3: $FD

jr_005_4EE4:
    inc bc                                        ; $4EE4: $03
    ei                                            ; $4EE5: $FB
    rlca                                          ; $4EE6: $07
    ret nz                                        ; $4EE7: $C0

    jr z, jr_005_4EF2                             ; $4EE8: $28 $08

    rst RST_30                                    ; $4EEA: $F7
    rrca                                          ; $4EEB: $0F
    xor $1F                                       ; $4EEC: $EE $1F
    call c, Call_005_703F                         ; $4EEE: $DC $3F $70
    db $FC                                        ; $4EF1: $FC

jr_005_4EF2:
    ld [$48B1], sp                                ; $4EF2: $08 $B1 $48
    ld [$1CE3], sp                                ; $4EF5: $08 $E3 $1C
    db $D3                                        ; $4EF8: $D3
    ld a, [bc]                                    ; $4EF9: $0A
    inc a                                         ; $4EFA: $3C
    pop af                                        ; $4EFB: $F1
    ld a, $F0                                     ; $4EFC: $3E $F0
    add sp, $78                                   ; $4EFE: $E8 $78
    ld h, b                                       ; $4F00: $60
    ld hl, sp-$1E                                 ; $4F01: $F8 $E2
    ld [$0F79], sp                                ; $4F03: $08 $79 $0F
    rst RST_18                                    ; $4F06: $DF
    ld h, b                                       ; $4F07: $60
    rst RST_28                                    ; $4F08: $EF
    sub b                                         ; $4F09: $90
    ld h, a                                       ; $4F0A: $67
    ld [$8980], a                                 ; $4F0B: $EA $80 $89
    add hl, bc                                    ; $4F0E: $09
    db $EC                                        ; $4F0F: $EC
    ld a, [bc]                                    ; $4F10: $0A
    call nz, $C20A                                ; $4F11: $C4 $0A $C2
    and b                                         ; $4F14: $A0
    ld [$0882], sp                                ; $4F15: $08 $82 $08
    ld [hl], e                                    ; $4F18: $73
    db $FC                                        ; $4F19: $FC
    ld sp, $28FE                                  ; $4F1A: $31 $FE $28
    xor d                                         ; $4F1D: $AA
    jr z, jr_005_4F30                             ; $4F1E: $28 $10

jr_005_4F20:
    ld [$0818], sp                                ; $4F20: $08 $18 $08
    inc b                                         ; $4F23: $04
    ld [$D008], sp                                ; $4F24: $08 $08 $D0
    ld a, [de]                                    ; $4F27: $1A
    nop                                           ; $4F28: $00
    nop                                           ; $4F29: $00
    dec bc                                        ; $4F2A: $0B
    ld a, a                                       ; $4F2B: $7F
    add b                                         ; $4F2C: $80
    ccf                                           ; $4F2D: $3F
    ret nz                                        ; $4F2E: $C0

    ld [bc], a                                    ; $4F2F: $02

jr_005_4F30:
    rra                                           ; $4F30: $1F
    ldh [rIF], a                                  ; $4F31: $E0 $0F
    ldh a, [rTAC]                                 ; $4F33: $F0 $07
    ld hl, sp+$6B                                 ; $4F35: $F8 $6B
    ei                                            ; $4F37: $FB
    adc a                                         ; $4F38: $8F
    or b                                          ; $4F39: $B0
    push af                                       ; $4F3A: $F5
    ld c, $EE                                     ; $4F3B: $0E $EE
    ld [hl], b                                    ; $4F3D: $70
    add hl, de                                    ; $4F3E: $19
    add hl, sp                                    ; $4F3F: $39
    ld e, c                                       ; $4F40: $59
    ld d, l                                       ; $4F41: $55
    xor b                                         ; $4F42: $A8
    db $10                                        ; $4F43: $10
    ret nc                                        ; $4F44: $D0

    ld [$0888], sp                                ; $4F45: $08 $88 $08
    call nc, Call_005_4E08                        ; $4F48: $D4 $08 $4E
    xor c                                         ; $4F4B: $A9
    ld [$7FC0], sp                                ; $4F4C: $08 $C0 $7F
    ld e, b                                       ; $4F4F: $58
    ld [$3F38], sp                                ; $4F50: $08 $38 $3F
    sub l                                         ; $4F53: $95
    sbc b                                         ; $4F54: $98
    rlca                                          ; $4F55: $07
    ld sp, hl                                     ; $4F56: $F9
    ld [$1AFE], sp                                ; $4F57: $08 $FE $1A
    db $FC                                        ; $4F5A: $FC
    ld [$FA57], sp                                ; $4F5B: $08 $57 $FA
    ld [$1AFD], sp                                ; $4F5E: $08 $FD $1A
    nop                                           ; $4F61: $00
    ld [$0919], a                                 ; $4F62: $EA $19 $09
    ld d, l                                       ; $4F65: $55
    ld b, b                                       ; $4F66: $40
    ld [$0880], sp                                ; $4F67: $08 $80 $08
    jr nz, jr_005_4F86                            ; $4F6A: $20 $1A

    ld bc, $ACE0                                  ; $4F6C: $01 $E0 $AC
    ld e, c                                       ; $4F6F: $59
    dec b                                         ; $4F70: $05
    or b                                          ; $4F71: $B0
    ld [bc], a                                    ; $4F72: $02
    ret nc                                        ; $4F73: $D0

    add hl, sp                                    ; $4F74: $39
    dec bc                                        ; $4F75: $0B
    db $F4                                        ; $4F76: $F4
    rst RST_20                                    ; $4F77: $E7
    add hl, sp                                    ; $4F78: $39
    add hl, de                                    ; $4F79: $19
    ld l, c                                       ; $4F7A: $69
    ld h, b                                       ; $4F7B: $60
    cp a                                          ; $4F7C: $BF
    ei                                            ; $4F7D: $FB
    add hl, bc                                    ; $4F7E: $09
    sbc c                                         ; $4F7F: $99
    ccf                                           ; $4F80: $3F
    ld d, l                                       ; $4F81: $55
    xor d                                         ; $4F82: $AA
    add b                                         ; $4F83: $80
    sub b                                         ; $4F84: $90
    ld d, h                                       ; $4F85: $54

jr_005_4F86:
    add hl, bc                                    ; $4F86: $09
    ldh a, [$FF60]                                ; $4F87: $F0 $60
    ld h, h                                       ; $4F89: $64
    inc bc                                        ; $4F8A: $03
    jr jr_005_4F95                                ; $4F8B: $18 $08

    cp $07                                        ; $4F8D: $FE $07
    ldh a, [rIF]                                  ; $4F8F: $F0 $0F
    cp b                                          ; $4F91: $B8
    ld a, [hl+]                                   ; $4F92: $2A
    ld a, a                                       ; $4F93: $7F
    ld a, b                                       ; $4F94: $78

jr_005_4F95:
    ld b, b                                       ; $4F95: $40
    ldh a, [$FF0A]                                ; $4F96: $F0 $0A
    ldh [$FF08], a                                ; $4F98: $E0 $08
    ld h, b                                       ; $4F9A: $60
    xor d                                         ; $4F9B: $AA
    ld [$08C0], sp                                ; $4F9C: $08 $C0 $08
    add c                                         ; $4F9F: $81
    sub b                                         ; $4FA0: $90
    ld hl, sp-$78                                 ; $4FA1: $F8 $88
    pop af                                        ; $4FA3: $F1
    ld b, b                                       ; $4FA4: $40
    rra                                           ; $4FA5: $1F
    jr c, jr_005_4FE7                             ; $4FA6: $38 $3F

    adc h                                         ; $4FA8: $8C
    ld [hl], e                                    ; $4FA9: $73
    cp h                                          ; $4FAA: $BC
    ld b, e                                       ; $4FAB: $43
    ld a, l                                       ; $4FAC: $7D
    ld d, b                                       ; $4FAD: $50
    add d                                         ; $4FAE: $82
    ld [hl], b                                    ; $4FAF: $70
    nop                                           ; $4FB0: $00
    add hl, bc                                    ; $4FB1: $09
    ld a, [bc]                                    ; $4FB2: $0A
    push af                                       ; $4FB3: $F5
    dec d                                         ; $4FB4: $15
    ld [$2B03], a                                 ; $4FB5: $EA $03 $2B
    call nc, $A05F                                ; $4FB8: $D4 $5F $A0
    cp a                                          ; $4FBB: $BF
    ld b, b                                       ; $4FBC: $40
    ld l, e                                       ; $4FBD: $6B
    add hl, bc                                    ; $4FBE: $09
    ld h, h                                       ; $4FBF: $64
    add b                                         ; $4FC0: $80
    dec [hl]                                      ; $4FC1: $35
    ld [$FD02], sp                                ; $4FC2: $08 $02 $FD
    cp c                                          ; $4FC5: $B9
    xor d                                         ; $4FC6: $AA
    ld d, l                                       ; $4FC7: $55
    ret nz                                        ; $4FC8: $C0

    cp c                                          ; $4FC9: $B9
    ld c, e                                       ; $4FCA: $4B
    ld bc, $12FE                                  ; $4FCB: $01 $FE $12
    db $ED                                        ; $4FCE: $ED
    add hl, hl                                    ; $4FCF: $29
    sub $29                                       ; $4FD0: $D6 $29
    ld e, l                                       ; $4FD2: $5D
    and d                                         ; $4FD3: $A2
    or c                                          ; $4FD4: $B1
    ld a, a                                       ; $4FD5: $7F
    ldh a, [$FF03]                                ; $4FD6: $F0 $03
    db $FC                                        ; $4FD8: $FC
    ld l, c                                       ; $4FD9: $69
    pop hl                                        ; $4FDA: $E1
    sbc c                                         ; $4FDB: $99
    or b                                          ; $4FDC: $B0
    ret nz                                        ; $4FDD: $C0

    call nc, $FB2B                                ; $4FDE: $D4 $2B $FB
    inc b                                         ; $4FE1: $04
    ld a, c                                       ; $4FE2: $79
    ret nz                                        ; $4FE3: $C0

    rrca                                          ; $4FE4: $0F
    cp c                                          ; $4FE5: $B9
    ccf                                           ; $4FE6: $3F

jr_005_4FE7:
    ret nz                                        ; $4FE7: $C0

    rra                                           ; $4FE8: $1F
    ldh [$FFCF], a                                ; $4FE9: $E0 $CF
    jr nc, @+$05                                  ; $4FEB: $30 $03

jr_005_4FED:
    rst RST_30                                    ; $4FED: $F7
    ld [$50AF], sp                                ; $4FEE: $08 $AF $50
    ld d, a                                       ; $4FF1: $57
    xor b                                         ; $4FF2: $A8
    rra                                           ; $4FF3: $1F
    add hl, de                                    ; $4FF4: $19
    jr nz, jr_005_5056                            ; $4FF5: $20 $5F

    and b                                         ; $4FF7: $A0
    db $EB                                        ; $4FF8: $EB
    cpl                                           ; $4FF9: $2F
    ret nc                                        ; $4FFA: $D0

    dec d                                         ; $4FFB: $15
    ld [$7202], a                                 ; $4FFC: $EA $02 $72
    db $FD                                        ; $4FFF: $FD
    ld b, d                                       ; $5000: $42
    ld a, [bc]                                    ; $5001: $0A
    jr nc, @+$05                                  ; $5002: $30 $03

    cp $08                                        ; $5004: $FE $08
    ld a, [$077B]                                 ; $5006: $FA $7B $07
    add hl, hl                                    ; $5009: $29
    ld a, [de]                                    ; $500A: $1A
    ld [$FC19], sp                                ; $500B: $08 $19 $FC
    ld [$5989], sp                                ; $500E: $08 $89 $59
    add b                                         ; $5011: $80
    ld [$0810], sp                                ; $5012: $08 $10 $08
    jp hl                                         ; $5015: $E9


    ld b, [hl]                                    ; $5016: $46
    ei                                            ; $5017: $FB
    add hl, sp                                    ; $5018: $39
    ld e, h                                       ; $5019: $5C
    jr nz, jr_005_5076                            ; $501A: $20 $5A

    dec b                                         ; $501C: $05
    and b                                         ; $501D: $A0
    ld e, c                                       ; $501E: $59
    dec de                                        ; $501F: $1B
    ld bc, $E1FE                                  ; $5020: $01 $FE $E1
    dec e                                         ; $5023: $1D
    ld d, b                                       ; $5024: $50
    ld h, b                                       ; $5025: $60
    push af                                       ; $5026: $F5
    ld a, [bc]                                    ; $5027: $0A
    ld [$1F15], a                                 ; $5028: $EA $15 $1F

Call_005_502B:
    sbc [hl]                                      ; $502B: $9E
    add hl, de                                    ; $502C: $19
    xor d                                         ; $502D: $AA
    ld d, l                                       ; $502E: $55
    nop                                           ; $502F: $00
    db $10                                        ; $5030: $10
    rra                                           ; $5031: $1F
    dec de                                        ; $5032: $1B
    xor e                                         ; $5033: $AB
    ld a, [bc]                                    ; $5034: $0A
    ld d, a                                       ; $5035: $57
    ld e, c                                       ; $5036: $59
    and a                                         ; $5037: $A7
    xor [hl]                                      ; $5038: $AE
    ld a, [de]                                    ; $5039: $1A
    xor h                                         ; $503A: $AC
    jr @+$5C                                      ; $503B: $18 $5A

    and h                                         ; $503D: $A4
    jr jr_005_4FED                                ; $503E: $18 $AD

    ld a, [de]                                    ; $5040: $1A
    rst RST_38                                    ; $5041: $FF
    nop                                           ; $5042: $00
    add hl, bc                                    ; $5043: $09
    xor a                                         ; $5044: $AF
    ld d, b                                       ; $5045: $50
    push bc                                       ; $5046: $C5
    rst RST_38                                    ; $5047: $FF
    add hl, de                                    ; $5048: $19
    db $FD                                        ; $5049: $FD
    rlca                                          ; $504A: $07
    db $FC                                        ; $504B: $FC
    ld [$19FA], sp                                ; $504C: $08 $FA $19
    scf                                           ; $504F: $37
    inc bc                                        ; $5050: $03
    cp $08                                        ; $5051: $FE $08
    add hl, sp                                    ; $5053: $39
    ld hl, sp+$4A                                 ; $5054: $F8 $4A

jr_005_5056:
    dec de                                        ; $5056: $1B
    sbc c                                         ; $5057: $99
    and a                                         ; $5058: $A7
    add hl, de                                    ; $5059: $19
    ld sp, hl                                     ; $505A: $F9
    xor h                                         ; $505B: $AC
    rst RST_38                                    ; $505C: $FF
    nop                                           ; $505D: $00
    nop                                           ; $505E: $00
    ld de, $5A0A                                  ; $505F: $11 $0A $5A
    add b                                         ; $5062: $80
    ld [$1A20], sp                                ; $5063: $08 $20 $1A
    dec sp                                        ; $5066: $3B
    dec b                                         ; $5067: $05

jr_005_5068:
    or b                                          ; $5068: $B0
    ld [bc], a                                    ; $5069: $02
    sub d                                         ; $506A: $92
    ldh a, [$FF65]                                ; $506B: $F0 $65
    cp d                                          ; $506D: $BA
    add hl, de                                    ; $506E: $19
    ld bc, $1DFE                                  ; $506F: $01 $FE $1D
    ld b, b                                       ; $5072: $40
    add l                                         ; $5073: $85
    adc b                                         ; $5074: $88
    sbc b                                         ; $5075: $98

jr_005_5076:
    rst RST_20                                    ; $5076: $E7
    jr jr_005_5068                                ; $5077: $18 $EF

    db $DB                                        ; $5079: $DB
    ret nz                                        ; $507A: $C0

    ld [$0879], sp                                ; $507B: $08 $79 $08
    ld [$9931], sp                                ; $507E: $08 $31 $99
    ld c, c                                       ; $5081: $49
    dec b                                         ; $5082: $05
    ld a, [$84B9]                                 ; $5083: $FA $B9 $84
    add hl, hl                                    ; $5086: $29
    dec bc                                        ; $5087: $0B
    db $F4                                        ; $5088: $F4
    and l                                         ; $5089: $A5
    ld e, d                                       ; $508A: $5A
    ld a, c                                       ; $508B: $79
    ei                                            ; $508C: $FB
    rlca                                          ; $508D: $07

jr_005_508E:
    ld [hl], a                                    ; $508E: $77
    ld sp, hl                                     ; $508F: $F9
    ld [$1A90], sp                                ; $5090: $08 $90 $1A
    db $FC                                        ; $5093: $FC
    inc e                                         ; $5094: $1C
    ret nz                                        ; $5095: $C0

    ld [$0678], sp                                ; $5096: $08 $78 $06
    jr nc, jr_005_50A3                            ; $5099: $30 $08

    sub b                                         ; $509B: $90
    reti                                          ; $509C: $D9


    ld h, b                                       ; $509D: $60
    sbc a                                         ; $509E: $9F
    ld b, b                                       ; $509F: $40
    db $ED                                        ; $50A0: $ED
    pop de                                        ; $50A1: $D1
    inc c                                         ; $50A2: $0C

jr_005_50A3:
    sbc c                                         ; $50A3: $99
    ld hl, sp-$56                                 ; $50A4: $F8 $AA
    jr z, jr_005_50AB                             ; $50A6: $28 $03

    add hl, bc                                    ; $50A8: $09
    ld c, [hl]                                    ; $50A9: $4E
    db $FD                                        ; $50AA: $FD

jr_005_50AB:
    ld [$01FE], sp                                ; $50AB: $08 $FE $01
    add c                                         ; $50AE: $81
    xor l                                         ; $50AF: $AD
    add hl, bc                                    ; $50B0: $09
    ld [$F705], sp                                ; $50B1: $08 $05 $F7
    inc e                                         ; $50B4: $1C
    db $EB                                        ; $50B5: $EB
    inc a                                         ; $50B6: $3C
    rst RST_08                                    ; $50B7: $CF
    ld b, c                                       ; $50B8: $41
    dec b                                         ; $50B9: $05
    ldh [$FF60], a                                ; $50BA: $E0 $60
    ld [bc], a                                    ; $50BC: $02
    ret nz                                        ; $50BD: $C0

    add hl, de                                    ; $50BE: $19
    ld [hl-], a                                   ; $50BF: $32
    db $DD                                        ; $50C0: $DD

jr_005_50C1:
    ld sp, $1ADE                                  ; $50C1: $31 $DE $1A
    inc de                                        ; $50C4: $13
    db $ED                                        ; $50C5: $ED
    pop bc                                        ; $50C6: $C1
    ld a, [hl]                                    ; $50C7: $7E
    ld e, c                                       ; $50C8: $59
    ld bc, $D9FE                                  ; $50C9: $01 $FE $D9
    sbc e                                         ; $50CC: $9B
    add h                                         ; $50CD: $84
    add hl, sp                                    ; $50CE: $39
    dec bc                                        ; $50CF: $0B
    db $F4                                        ; $50D0: $F4
    and a                                         ; $50D1: $A7
    ld e, b                                       ; $50D2: $58
    ld sp, hl                                     ; $50D3: $F9
    push af                                       ; $50D4: $F5
    ld a, [bc]                                    ; $50D5: $0A
    ld hl, $15EA                                  ; $50D6: $21 $EA $15
    add hl, de                                    ; $50D9: $19
    db $EB                                        ; $50DA: $EB
    inc d                                         ; $50DB: $14
    push de                                       ; $50DC: $D5
    ld a, [hl+]                                   ; $50DD: $2A
    add hl, de                                    ; $50DE: $19
    add hl, bc                                    ; $50DF: $09
    rst RST_10                                    ; $50E0: $D7
    jr z, jr_005_508E                             ; $50E1: $28 $AB

    ld d, h                                       ; $50E3: $54
    adc c                                         ; $50E4: $89
    ld d, l                                       ; $50E5: $55
    xor d                                         ; $50E6: $AA
    nop                                           ; $50E7: $00
    xor $10                                       ; $50E8: $EE $10
    jr nz, @+$32                                  ; $50EA: $20 $30

    ld [$2008], sp                                ; $50EC: $08 $08 $20
    ld [$EAA0], sp                                ; $50EF: $08 $A0 $EA
    ld [$0890], sp                                ; $50F2: $08 $90 $08
    and c                                         ; $50F5: $A1
    ld [$084A], sp                                ; $50F6: $08 $4A $08
    ld sp, $08AA                                  ; $50F9: $31 $AA $08
    adc d                                         ; $50FC: $8A
    ld l, d                                       ; $50FD: $6A
    ld a, [bc]                                    ; $50FE: $0A
    ld [$08AD], sp                                ; $50FF: $08 $AD $08
    ld d, [hl]                                    ; $5102: $56
    add b                                         ; $5103: $80
    ld [$405C], sp                                ; $5104: $08 $5C $40
    ld l, [hl]                                    ; $5107: $6E
    nop                                           ; $5108: $00
    rlca                                          ; $5109: $07
    ld b, $FF                                     ; $510A: $06 $FF
    rlca                                          ; $510C: $07
    rlca                                          ; $510D: $07
    rlca                                          ; $510E: $07
    ld a, h                                       ; $510F: $7C
    ld [bc], a                                    ; $5110: $02
    cp $59                                        ; $5111: $FE $59
    db $FC                                        ; $5113: $FC
    ld b, a                                       ; $5114: $47
    ldh a, [c]                                    ; $5115: $F2
    sbc l                                         ; $5116: $9D
    ld e, h                                       ; $5117: $5C
    db $FD                                        ; $5118: $FD
    nop                                           ; $5119: $00
    call $DBFA                                    ; $511A: $CD $FA $DB
    cp l                                          ; $511D: $BD
    dec h                                         ; $511E: $25
    jp c, Jump_005_4CB3                           ; $511F: $DA $B3 $4C

    and h                                         ; $5122: $A4
    ld c, b                                       ; $5123: $48
    nop                                           ; $5124: $00
    ld h, c                                       ; $5125: $61
    cp a                                          ; $5126: $BF
    rst RST_28                                    ; $5127: $EF
    ld [$9F72], sp                                ; $5128: $08 $72 $9F
    nop                                           ; $512B: $00
    ld l, d                                       ; $512C: $6A
    dec hl                                        ; $512D: $2B
    call nc, $F609                                ; $512E: $D4 $09 $F6
    or d                                          ; $5131: $B2
    ld c, l                                       ; $5132: $4D
    rst RST_10                                    ; $5133: $D7
    ld l, c                                       ; $5134: $69
    jr z, @-$0B                                   ; $5135: $28 $F3

    ld a, b                                       ; $5137: $78
    rst RST_18                                    ; $5138: $DF
    ld a, b                                       ; $5139: $78
    ld a, a                                       ; $513A: $7F
    rst RST_08                                    ; $513B: $CF
    jr z, jr_005_50C1                             ; $513C: $28 $83

    or b                                          ; $513E: $B0
    reti                                          ; $513F: $D9


    adc a                                         ; $5140: $8F
    ld [hl], e                                    ; $5141: $73
    cpl                                           ; $5142: $2F
    db $D3                                        ; $5143: $D3
    ld a, e                                       ; $5144: $7B
    ld [bc], a                                    ; $5145: $02
    ld b, b                                       ; $5146: $40
    or a                                          ; $5147: $B7
    ld a, b                                       ; $5148: $78
    di                                            ; $5149: $F3
    ei                                            ; $514A: $FB
    ld l, a                                       ; $514B: $6F
    dec hl                                        ; $514C: $2B
    or $B3                                        ; $514D: $F6 $B3
    ld e, d                                       ; $514F: $5A
    ld l, h                                       ; $5150: $6C
    ld l, h                                       ; $5151: $6C
    db $FD                                        ; $5152: $FD
    nop                                           ; $5153: $00
    ld h, b                                       ; $5154: $60
    db $ED                                        ; $5155: $ED
    ld e, b                                       ; $5156: $58
    sub l                                         ; $5157: $95
    daa                                           ; $5158: $27
    ld [$1809], a                                 ; $5159: $EA $09 $18
    dec [hl]                                      ; $515C: $35
    jp z, $5061                                   ; $515D: $CA $61 $50

    ld h, c                                       ; $5160: $61
    nop                                           ; $5161: $00
    db $F4                                        ; $5162: $F4
    and l                                         ; $5163: $A5
    ld e, d                                       ; $5164: $5A
    ld e, a                                       ; $5165: $5F
    xor b                                         ; $5166: $A8
    sbc e                                         ; $5167: $9B
    ld h, h                                       ; $5168: $64
    ld d, l                                       ; $5169: $55
    dec d                                         ; $516A: $15
    xor d                                         ; $516B: $AA
    db $EB                                        ; $516C: $EB
    inc d                                         ; $516D: $14
    ld [hl], b                                    ; $516E: $70
    nop                                           ; $516F: $00
    ld a, [bc]                                    ; $5170: $0A
    db $10                                        ; $5171: $10
    ld [$1C75], sp                                ; $5172: $08 $75 $1C
    ld [$0888], sp                                ; $5175: $08 $88 $08
    jr nc, jr_005_5182                            ; $5178: $30 $08

    add hl, bc                                    ; $517A: $09
    ld [$6202], sp                                ; $517B: $08 $02 $62
    cp a                                          ; $517E: $BF

jr_005_517F:
    ld e, [hl]                                    ; $517F: $5E
    rst RST_18                                    ; $5180: $DF
    dec hl                                        ; $5181: $2B

jr_005_5182:
    and a                                         ; $5182: $A7
    ld e, b                                       ; $5183: $58

jr_005_5184:
    rst RST_10                                    ; $5184: $D7
    jr c, jr_005_51AF                             ; $5185: $38 $28

    rst RST_28                                    ; $5187: $EF
    sbc c                                         ; $5188: $99
    rrc b                                         ; $5189: $CB $08
    ld [hl], h                                    ; $518B: $74

jr_005_518C:
    xor a                                         ; $518C: $AF
    ldh a, [$FF80]                                ; $518D: $F0 $80
    jr nz, jr_005_5184                            ; $518F: $20 $F3

    db $ED                                        ; $5191: $ED
    add sp, -$09                                  ; $5192: $E8 $F7

jr_005_5194:
    sbc h                                         ; $5194: $9C
    db $EB                                        ; $5195: $EB
    ld sp, hl                                     ; $5196: $F9
    ld d, a                                       ; $5197: $57
    or $40                                        ; $5198: $F6 $40
    ldh [$FF08], a                                ; $519A: $E0 $08
    ld hl, sp+$08                                 ; $519C: $F8 $08
    rlca                                          ; $519E: $07
    nop                                           ; $519F: $00
    ld l, e                                       ; $51A0: $6B
    db $DB                                        ; $51A1: $DB
    xor b                                         ; $51A2: $A8
    sub b                                         ; $51A3: $90
    push de                                       ; $51A4: $D5
    or b                                          ; $51A5: $B0
    jr z, @+$44                                   ; $51A6: $28 $42

    ret nz                                        ; $51A8: $C0

    add b                                         ; $51A9: $80
    ld [$A5F0], sp                                ; $51AA: $08 $F0 $A5
    ld e, d                                       ; $51AD: $5A
    ld e, a                                       ; $51AE: $5F

jr_005_51AF:
    xor b                                         ; $51AF: $A8
    sbc e                                         ; $51B0: $9B
    ld h, h                                       ; $51B1: $64
    ld [$AA55], sp                                ; $51B2: $08 $55 $AA
    dec bc                                        ; $51B5: $0B
    db $F4                                        ; $51B6: $F4
    sbc b                                         ; $51B7: $98
    inc d                                         ; $51B8: $14
    and a                                         ; $51B9: $A7
    ld e, b                                       ; $51BA: $58
    jr nz, jr_005_518C                            ; $51BB: $20 $CF

    jr nc, jr_005_517F                            ; $51BD: $30 $C0

    ld a, [hl+]                                   ; $51BF: $2A
    dec hl                                        ; $51C0: $2B
    call nc, Call_000_20DF                        ; $51C1: $D4 $DF $20
    and h                                         ; $51C4: $A4
    cp b                                          ; $51C5: $B8
    nop                                           ; $51C6: $00
    add hl, bc                                    ; $51C7: $09
    or e                                          ; $51C8: $B3
    ld c, h                                       ; $51C9: $4C
    reti                                          ; $51CA: $D9


    adc a                                         ; $51CB: $8F
    ld [hl], b                                    ; $51CC: $70
    ld [bc], a                                    ; $51CD: $02
    cp e                                          ; $51CE: $BB
    ld b, h                                       ; $51CF: $44
    rst RST_28                                    ; $51D0: $EF
    db $10                                        ; $51D1: $10
    ei                                            ; $51D2: $FB
    inc b                                         ; $51D3: $04
    ld l, c                                       ; $51D4: $69
    ld a, a                                       ; $51D5: $7F
    ld b, b                                       ; $51D6: $40
    add b                                         ; $51D7: $80
    add hl, hl                                    ; $51D8: $29
    or b                                          ; $51D9: $B0
    ld c, a                                       ; $51DA: $4F
    push bc                                       ; $51DB: $C5
    ld a, [hl-]                                   ; $51DC: $3A
    pop af                                        ; $51DD: $F1
    ld c, $00                                     ; $51DE: $0E $00
    add sp, $17                                   ; $51E0: $E8 $17
    ld l, c                                       ; $51E2: $69
    sub [hl]                                      ; $51E3: $96
    ld d, e                                       ; $51E4: $53
    xor h                                         ; $51E5: $AC
    ld [$2015], a                                 ; $51E6: $EA $15 $20
    ld a, [$4905]                                 ; $51E9: $FA $05 $49
    sbc c                                         ; $51EC: $99
    ld h, [hl]                                    ; $51ED: $66
    and $19                                       ; $51EE: $E6 $19
    ret c                                         ; $51F0: $D8

    nop                                           ; $51F1: $00
    daa                                           ; $51F2: $27
    cp [hl]                                       ; $51F3: $BE
    ld b, c                                       ; $51F4: $41
    db $FD                                        ; $51F5: $FD
    ld [bc], a                                    ; $51F6: $02
    rst RST_38                                    ; $51F7: $FF
    nop                                           ; $51F8: $00
    ld d, a                                       ; $51F9: $57
    db $10                                        ; $51FA: $10
    xor b                                         ; $51FB: $A8
    or a                                          ; $51FC: $B7
    ld c, b                                       ; $51FD: $48
    add hl, bc                                    ; $51FE: $09
    sbc a                                         ; $51FF: $9F
    ld h, b                                       ; $5200: $60
    or $09                                        ; $5201: $F6 $09
    inc bc                                        ; $5203: $03
    rst RST_08                                    ; $5204: $CF
    jr nc, jr_005_5246                            ; $5205: $30 $3F

    ret nz                                        ; $5207: $C0

    rst RST_18                                    ; $5208: $DF
    jr nz, jr_005_5194                            ; $5209: $20 $89

    rrca                                          ; $520B: $0F
    cp h                                          ; $520C: $BC
    ld a, [bc]                                    ; $520D: $0A
    or b                                          ; $520E: $B0
    ld [$F9B8], sp                                ; $520F: $08 $B8 $F9
    xor c                                         ; $5212: $A9
    sbc e                                         ; $5213: $9B
    ld h, h                                       ; $5214: $64
    inc bc                                        ; $5215: $03
    ld a, a                                       ; $5216: $7F
    add b                                         ; $5217: $80
    rst RST_30                                    ; $5218: $F7
    ld [$48B7], sp                                ; $5219: $08 $B7 $48
    add hl, de                                    ; $521C: $19
    rst RST_08                                    ; $521D: $CF
    ret nz                                        ; $521E: $C0

    rrca                                          ; $521F: $0F
    add hl, bc                                    ; $5220: $09
    push af                                       ; $5221: $F5
    ld a, [bc]                                    ; $5222: $0A
    ld sp, hl                                     ; $5223: $F9
    ld b, $E1                                     ; $5224: $06 $E1
    ld e, $20                                     ; $5226: $1E $20
    rst RST_28                                    ; $5228: $EF
    db $10                                        ; $5229: $10
    ld a, a                                       ; $522A: $7F
    ld d, l                                       ; $522B: $55
    xor d                                         ; $522C: $AA
    and e                                         ; $522D: $A3
    ld e, h                                       ; $522E: $5C
    rl b                                          ; $522F: $CB $10
    inc [hl]                                      ; $5231: $34
    call Call_005_4932                            ; $5232: $CD $32 $49
    ei                                            ; $5235: $FB
    inc b                                         ; $5236: $04
    rst RST_30                                    ; $5237: $F7
    ld [$8AAA], sp                                ; $5238: $08 $AA $8A
    cp a                                          ; $523B: $BF
    ld [$081F], sp                                ; $523C: $08 $1F $08
    ld a, a                                       ; $523F: $7F
    ld [$B862], sp                                ; $5240: $08 $62 $B8
    ld [$FD03], sp                                ; $5243: $08 $03 $FD

jr_005_5246:
    ld [$FE01], sp                                ; $5246: $08 $01 $FE
    ld a, [$2AF5]                                 ; $5249: $FA $F5 $2A
    db $FC                                        ; $524C: $FC
    db $DB                                        ; $524D: $DB
    jr z, @+$1E                                   ; $524E: $28 $1C

    jr nc, jr_005_5291                            ; $5250: $30 $3F

    jr jr_005_52D2                                ; $5252: $18 $7E

    jp nz, $F8DA                                  ; $5254: $C2 $DA $F8

    cpl                                           ; $5257: $2F
    rst RST_18                                    ; $5258: $DF
    ld e, a                                       ; $5259: $5F
    and e                                         ; $525A: $A3
    ld d, b                                       ; $525B: $50
    rst RST_28                                    ; $525C: $EF
    or d                                          ; $525D: $B2
    ld [$50FB], sp                                ; $525E: $08 $FB $50
    add b                                         ; $5261: $80
    ld d, a                                       ; $5262: $57
    xor [hl]                                      ; $5263: $AE
    jr nc, @+$56                                  ; $5264: $30 $54

    xor d                                         ; $5266: $AA
    ld a, b                                       ; $5267: $78
    ld e, $08                                     ; $5268: $1E $08
    dec bc                                        ; $526A: $0B

jr_005_526B:
    ld [$0802], sp                                ; $526B: $08 $02 $08
    nop                                           ; $526E: $00
    ld hl, sp+$0F                                 ; $526F: $F8 $0F
    ld [$B804], sp                                ; $5271: $08 $04 $B8
    ld [de], a                                    ; $5274: $12
    ccf                                           ; $5275: $3F

jr_005_5276:
    rst RST_18                                    ; $5276: $DF
    cp a                                          ; $5277: $BF
    ld e, c                                       ; $5278: $59
    ld d, a                                       ; $5279: $57
    jr z, @+$81                                   ; $527A: $28 $7F

    add hl, bc                                    ; $527C: $09
    jr nc, @+$31                                  ; $527D: $30 $2F

    daa                                           ; $527F: $27
    db $10                                        ; $5280: $10
    ld e, $CF                                     ; $5281: $1E $CF
    scf                                           ; $5283: $37
    ld [hl], e                                    ; $5284: $73
    db $10                                        ; $5285: $10
    add b                                         ; $5286: $80
    db $10                                        ; $5287: $10
    ld e, b                                       ; $5288: $58
    inc de                                        ; $5289: $13
    xor e                                         ; $528A: $AB
    ld [$C11F], sp                                ; $528B: $08 $1F $C1
    db $F4                                        ; $528E: $F4
    add hl, bc                                    ; $528F: $09
    ei                                            ; $5290: $FB

jr_005_5291:
    ld e, b                                       ; $5291: $58
    ret nc                                        ; $5292: $D0

    sub h                                         ; $5293: $94

jr_005_5294:
    jr nz, jr_005_5294                            ; $5294: $20 $FE

    db $EC                                        ; $5296: $EC
    db $10                                        ; $5297: $10
    db $E4                                        ; $5298: $E4
    jr c, jr_005_5294                             ; $5299: $38 $F9

    or $D4                                        ; $529B: $F6 $D4
    db $10                                        ; $529D: $10
    jr c, @+$61                                   ; $529E: $38 $5F

    db $10                                        ; $52A0: $10
    sub e                                         ; $52A1: $93
    jr jr_005_526B                                ; $52A2: $18 $C7

    ld hl, sp+$40                                 ; $52A4: $F8 $40
    ld bc, $E318                                  ; $52A6: $01 $18 $E3
    call c, $FDC2                                 ; $52A9: $DC $C2 $FD
    call Call_000_10F2                            ; $52AC: $CD $F2 $10
    adc a                                         ; $52AF: $8F
    ld [hl], b                                    ; $52B0: $70
    inc de                                        ; $52B1: $13
    ret nz                                        ; $52B2: $C0

    add a                                         ; $52B3: $87
    ld a, b                                       ; $52B4: $78

jr_005_52B5:
    ld c, l                                       ; $52B5: $4D
    or d                                          ; $52B6: $B2
    nop                                           ; $52B7: $00
    rst RST_10                                    ; $52B8: $D7
    jr z, jr_005_5276                             ; $52B9: $28 $BB

    ld b, h                                       ; $52BB: $44
    rst RST_28                                    ; $52BC: $EF
    db $10                                        ; $52BD: $10
    rst RST_38                                    ; $52BE: $FF
    nop                                           ; $52BF: $00
    inc b                                         ; $52C0: $04
    adc e                                         ; $52C1: $8B
    db $F4                                        ; $52C2: $F4
    rla                                           ; $52C3: $17
    add sp, $0B                                   ; $52C4: $E8 $0B
    jr @+$41                                      ; $52C6: $18 $3F

    ret nz                                        ; $52C8: $C0

    inc bc                                        ; $52C9: $03
    ld e, e                                       ; $52CA: $5B

jr_005_52CB:
    and h                                         ; $52CB: $A4
    add l                                         ; $52CC: $85
    ld a, d                                       ; $52CD: $7A
    ld a, a                                       ; $52CE: $7F
    add b                                         ; $52CF: $80
    ld a, c                                       ; $52D0: $79
    add hl, bc                                    ; $52D1: $09

jr_005_52D2:
    nop                                           ; $52D2: $00
    di                                            ; $52D3: $F3
    inc c                                         ; $52D4: $0C
    rst RST_30                                    ; $52D5: $F7
    ld a, [bc]                                    ; $52D6: $0A
    rst RST_08                                    ; $52D7: $CF
    dec [hl]                                      ; $52D8: $35
    sbc a                                         ; $52D9: $9F
    ld h, b                                       ; $52DA: $60
    nop                                           ; $52DB: $00
    inc de                                        ; $52DC: $13
    db $ED                                        ; $52DD: $ED
    rra                                           ; $52DE: $1F
    ldh [c], a                                    ; $52DF: $E2
    ld e, a                                       ; $52E0: $5F
    and b                                         ; $52E1: $A0
    rst RST_28                                    ; $52E2: $EF
    db $10                                        ; $52E3: $10
    ld [bc], a                                    ; $52E4: $02
    rst RST_20                                    ; $52E5: $E7
    jr jr_005_52CB                                ; $52E6: $18 $E3

    inc e                                         ; $52E8: $1C
    push af                                       ; $52E9: $F5
    xor d                                         ; $52EA: $AA
    xor b                                         ; $52EB: $A8
    ld a, h                                       ; $52EC: $7C
    inc bc                                        ; $52ED: $03
    pop af                                        ; $52EE: $F1
    ld a, $F0                                     ; $52EF: $3E $F0
    rrca                                          ; $52F1: $0F
    db $FD                                        ; $52F2: $FD
    ld [bc], a                                    ; $52F3: $02
    ld sp, hl                                     ; $52F4: $F9
    add hl, bc                                    ; $52F5: $09
    ld b, b                                       ; $52F6: $40
    db $EC                                        ; $52F7: $EC
    ret nc                                        ; $52F8: $D0

    pop de                                        ; $52F9: $D1
    ld l, $A3                                     ; $52FA: $2E $A3
    ld e, h                                       ; $52FC: $5C
    rst RST_00                                    ; $52FD: $C7
    jr c, @+$0E                                   ; $52FE: $38 $0C

    adc h                                         ; $5300: $8C
    ld [hl], e                                    ; $5301: $73
    pop bc                                        ; $5302: $C1

jr_005_5303:
    ccf                                           ; $5303: $3F
    ld a, e                                       ; $5304: $7B
    dec bc                                        ; $5305: $0B
    cp $01                                        ; $5306: $FE $01
    add b                                         ; $5308: $80
    add hl, de                                    ; $5309: $19
    ld a, [$F505]                                 ; $530A: $FA $05 $F5
    ld a, [bc]                                    ; $530D: $0A
    add a                                         ; $530E: $87
    ld a, c                                       ; $530F: $79
    rra                                           ; $5310: $1F
    ld a, [de]                                    ; $5311: $1A
    rst RST_28                                    ; $5312: $EF
    sbc a                                         ; $5313: $9F
    ld a, a                                       ; $5314: $7F
    jr jr_005_5377                                ; $5315: $18 $60

    adc a                                         ; $5317: $8F
    jr @+$49                                      ; $5318: $18 $47

    cpl                                           ; $531A: $2F
    cp a                                          ; $531B: $BF
    add e                                         ; $531C: $83
    jr jr_005_535F                                ; $531D: $18 $40

    jr @+$42                                      ; $531F: $18 $40

    ld d, b                                       ; $5321: $50
    jr nz, jr_005_5303                            ; $5322: $20 $DF

    ld [hl], b                                    ; $5324: $70
    jr jr_005_5336                                ; $5325: $18 $0F

    add hl, hl                                    ; $5327: $29
    ld [HeaderRAMSize], sp                        ; $5328: $08 $49 $01
    ld d, b                                       ; $532B: $50
    ldh [c], a                                    ; $532C: $E2
    ld a, [de]                                    ; $532D: $1A
    rlca                                          ; $532E: $07
    ld bc, $FCFE                                  ; $532F: $01 $FE $FC
    di                                            ; $5332: $F3
    jr jr_005_52B5                                ; $5333: $18 $80

    add b                                         ; $5335: $80

jr_005_5336:
    ld d, l                                       ; $5336: $55
    rst RST_18                                    ; $5337: $DF
    rst RST_28                                    ; $5338: $EF
    adc a                                         ; $5339: $8F
    rst RST_30                                    ; $533A: $F7
    rra                                           ; $533B: $1F
    rst RST_20                                    ; $533C: $E7
    cp a                                          ; $533D: $BF
    ld e, b                                       ; $533E: $58
    ld b, d                                       ; $533F: $42
    ld b, b                                       ; $5340: $40
    nop                                           ; $5341: $00
    rst RST_20                                    ; $5342: $E7
    ld bc, $B7CF                                  ; $5343: $01 $CF $B7
    rst RST_10                                    ; $5346: $D7
    ld l, c                                       ; $5347: $69
    add hl, hl                                    ; $5348: $29
    ld a, a                                       ; $5349: $7F
    inc bc                                        ; $534A: $03
    cp $08                                        ; $534B: $FE $08
    db $FD                                        ; $534D: $FD
    ld a, [$A57F]                                 ; $534E: $FA $7F $A5
    ld bc, $08BF                                  ; $5351: $01 $BF $08
    ccf                                           ; $5354: $3F
    rst RST_18                                    ; $5355: $DF

jr_005_5356:
    adc b                                         ; $5356: $88
    dec b                                         ; $5357: $05
    ld a, a                                       ; $5358: $7F
    ret nz                                        ; $5359: $C0

    ret z                                         ; $535A: $C8

    ld d, b                                       ; $535B: $50
    ret nc                                        ; $535C: $D0

    rst RST_28                                    ; $535D: $EF
    dec hl                                        ; $535E: $2B

jr_005_535F:
    call nc, Call_000_08F7                        ; $535F: $D4 $F7 $08
    push de                                       ; $5362: $D5
    ld a, a                                       ; $5363: $7F
    ld [bc], a                                    ; $5364: $02
    ld a, a                                       ; $5365: $7F
    ld [$081F], sp                                ; $5366: $08 $1F $08
    inc bc                                        ; $5369: $03
    ld a, d                                       ; $536A: $7A
    ld e, a                                       ; $536B: $5F
    db $FC                                        ; $536C: $FC
    ret nc                                        ; $536D: $D0

    ld sp, hl                                     ; $536E: $F9
    ld l, d                                       ; $536F: $6A
    jr z, @+$0A                                   ; $5370: $28 $08

    jr nc, @+$2C                                  ; $5372: $30 $2A

    jp hl                                         ; $5374: $E9


    dec de                                        ; $5375: $1B
    rlca                                          ; $5376: $07

jr_005_5377:
    nop                                           ; $5377: $00
    rst RST_18                                    ; $5378: $DF
    ld [$E79F], sp                                ; $5379: $08 $9F $E7
    ld a, [$0880]                                 ; $537C: $FA $80 $08
    ld [hl], l                                    ; $537F: $75

jr_005_5380:
    adc d                                         ; $5380: $8A
    dec de                                        ; $5381: $1B
    db $E4                                        ; $5382: $E4
    and l                                         ; $5383: $A5
    ld e, d                                       ; $5384: $5A
    ldh [rSB], a                                  ; $5385: $E0 $01
    rra                                           ; $5387: $1F
    pop af                                        ; $5388: $F1
    ld c, $F8                                     ; $5389: $0E $F8
    rlca                                          ; $538B: $07
    ld sp, hl                                     ; $538C: $F9
    add [hl]                                      ; $538D: $86
    jr jr_005_5356                                ; $538E: $18 $C6

    or b                                          ; $5390: $B0

jr_005_5391:
    jr jr_005_5391                                ; $5391: $18 $FE

    ld a, [$58FD]                                 ; $5393: $FA $FD $58
    jr @-$0C                                      ; $5396: $18 $F2

    xor e                                         ; $5398: $AB
    jr jr_005_5380                                ; $5399: $18 $E5

    jr nc, jr_005_535F                            ; $539B: $30 $C2

    jr jr_005_53A4                                ; $539D: $18 $05

    jr @-$05                                      ; $539F: $18 $F9

    sub b                                         ; $53A1: $90
    dec bc                                        ; $53A2: $0B
    ld a, a                                       ; $53A3: $7F

jr_005_53A4:
    add b                                         ; $53A4: $80
    dec de                                        ; $53A5: $1B
    cp a                                          ; $53A6: $BF
    ld b, b                                       ; $53A7: $40
    ld d, a                                       ; $53A8: $57
    xor b                                         ; $53A9: $A8
    xor b                                         ; $53AA: $A8
    ld a, h                                       ; $53AB: $7C
    db $10                                        ; $53AC: $10
    ld [$080C], sp                                ; $53AD: $08 $0C $08
    ld e, d                                       ; $53B0: $5A
    cp $21                                        ; $53B1: $FE $21
    ld a, [bc]                                    ; $53B3: $0A
    ld a, $C9                                     ; $53B4: $3E $C9
    adc b                                         ; $53B6: $88
    ld [hl], a                                    ; $53B7: $77
    jr c, jr_005_53BB                             ; $53B8: $38 $01

    xor b                                         ; $53BA: $A8

jr_005_53BB:
    ld c, b                                       ; $53BB: $48
    dec h                                         ; $53BC: $25
    ccf                                           ; $53BD: $3F
    pop bc                                        ; $53BE: $C1
    jr @+$6C                                      ; $53BF: $18 $6A

    sbc a                                         ; $53C1: $9F
    ld c, b                                       ; $53C2: $48
    ld c, a                                       ; $53C3: $4F
    jr nz, jr_005_53CA                            ; $53C4: $20 $04

    add a                                         ; $53C6: $87
    ld a, a                                       ; $53C7: $7F
    ret nc                                        ; $53C8: $D0

    cpl                                           ; $53C9: $2F

jr_005_53CA:
    ret nz                                        ; $53CA: $C0

    ld h, b                                       ; $53CB: $60
    db $E3                                        ; $53CC: $E3
    cp h                                          ; $53CD: $BC
    nop                                           ; $53CE: $00
    push bc                                       ; $53CF: $C5
    ld a, d                                       ; $53D0: $7A
    jp $CBFC                                      ; $53D1: $C3 $FC $CB


    db $F4                                        ; $53D4: $F4
    add l                                         ; $53D5: $85
    ld a, [$1308]                                 ; $53D6: $FA $08 $13
    db $EC                                        ; $53D9: $EC
    dec hl                                        ; $53DA: $2B
    call nc, Call_000_00F8                        ; $53DB: $D4 $F8 $00
    ld d, l                                       ; $53DE: $55
    xor d                                         ; $53DF: $AA
    ld a, [$1000]                                 ; $53E0: $FA $00 $10
    jr nz, jr_005_5416                            ; $53E3: $20 $31

    ld a, [bc]                                    ; $53E5: $0A
    ld b, [hl]                                    ; $53E6: $46
    ld [$EA95], sp                                ; $53E7: $08 $95 $EA
    ld [$0B7F], sp                                ; $53EA: $08 $7F $0B
    add hl, hl                                    ; $53ED: $29
    ld [$0810], sp                                ; $53EE: $08 $10 $08
    ld h, d                                       ; $53F1: $62
    xor d                                         ; $53F2: $AA
    ld [$0804], sp                                ; $53F3: $08 $04 $08
    ld c, d                                       ; $53F6: $4A
    ld [$08B5], sp                                ; $53F7: $08 $B5 $08
    ld e, c                                       ; $53FA: $59
    xor e                                         ; $53FB: $AB
    ld [$0814], sp                                ; $53FC: $08 $14 $08
    adc c                                         ; $53FF: $89
    ld [$08DE], sp                                ; $5400: $08 $DE $08
    ret c                                         ; $5403: $D8

    or l                                          ; $5404: $B5
    ld [$6A46], sp                                ; $5405: $08 $46 $6A
    adc c                                         ; $5408: $89
    dec h                                         ; $5409: $25
    ld [$08D7], sp                                ; $540A: $08 $D7 $08
    ld d, l                                       ; $540D: $55
    xor e                                         ; $540E: $AB
    ld [$08C9], sp                                ; $540F: $08 $C9 $08
    add hl, sp                                    ; $5412: $39
    ld [$08EE], sp                                ; $5413: $08 $EE $08

jr_005_5416:
    ld d, l                                       ; $5416: $55
    sub e                                         ; $5417: $93
    ld [$083A], sp                                ; $5418: $08 $3A $08
    call $B708                                    ; $541B: $CD $08 $B7
    ld [$EF55], sp                                ; $541E: $08 $55 $EF
    ld [$08BD], sp                                ; $5421: $08 $BD $08
    ld d, e                                       ; $5424: $53
    ld [$08FE], sp                                ; $5425: $08 $FE $08
    ld d, l                                       ; $5428: $55
    rst RST_08                                    ; $5429: $CF
    ld [$7AB9], sp                                ; $542A: $08 $B9 $7A
    cpl                                           ; $542D: $2F
    ld [$08F5], sp                                ; $542E: $08 $F5 $08
    ld d, l                                       ; $5431: $55
    rst RST_18                                    ; $5432: $DF
    ld [$08E7], sp                                ; $5433: $08 $E7 $08
    halt                                          ; $5436: $76
    ld a, d                                       ; $5437: $7A
    ei                                            ; $5438: $FB
    ld [$BF56], sp                                ; $5439: $08 $56 $BF
    ld [$FAF7], sp                                ; $543C: $08 $F7 $FA
    ld a, a                                       ; $543F: $7F
    ld [$E601], sp                                ; $5440: $08 $01 $E6
    ei                                            ; $5443: $FB
    xor d                                         ; $5444: $AA
    ld a, e                                       ; $5445: $7B
    ld bc, $4929                                  ; $5446: $01 $29 $49
    nop                                           ; $5449: $00
    rlca                                          ; $544A: $07
    ld b, $00                                     ; $544B: $06 $00
    ld c, h                                       ; $544D: $4C
    add b                                         ; $544E: $80
    ld a, e                                       ; $544F: $7B
    nop                                           ; $5450: $00
    inc bc                                        ; $5451: $03
    inc bc                                        ; $5452: $03
    inc bc                                        ; $5453: $03
    ld [bc], a                                    ; $5454: $02
    rst RST_38                                    ; $5455: $FF
    rlca                                          ; $5456: $07
    rlca                                          ; $5457: $07
    ret nz                                        ; $5458: $C0

    rlca                                          ; $5459: $07
    ld b, $48                                     ; $545A: $06 $48
    or a                                          ; $545C: $B7
    cp h                                          ; $545D: $BC
    ld b, e                                       ; $545E: $43
    jp nc, Jump_000_002D                          ; $545F: $D2 $2D $00

    add sp, $17                                   ; $5462: $E8 $17
    db $F4                                        ; $5464: $F4
    dec bc                                        ; $5465: $0B
    ld a, [$FD05]                                 ; $5466: $FA $05 $FD
    ld [bc], a                                    ; $5469: $02
    inc h                                         ; $546A: $24
    cp $01                                        ; $546B: $FE $01
    ld b, h                                       ; $546D: $44
    ld e, c                                       ; $546E: $59
    ld a, a                                       ; $546F: $7F
    ld b, h                                       ; $5470: $44
    ccf                                           ; $5471: $3F
    reti                                          ; $5472: $D9


    ld de, $EF1F                                  ; $5473: $11 $1F $EF
    rrca                                          ; $5476: $0F

jr_005_5477:
    ld b, b                                       ; $5477: $40
    rlca                                          ; $5478: $07
    ei                                            ; $5479: $FB
    inc bc                                        ; $547A: $03
    ld b, b                                       ; $547B: $40
    ld [$4038], a                                 ; $547C: $EA $38 $40
    inc a                                         ; $547F: $3C
    rst RST_20                                    ; $5480: $E7
    inc b                                         ; $5481: $04
    inc a                                         ; $5482: $3C
    ld c, $99                                     ; $5483: $0E $99
    cp d                                          ; $5485: $BA
    inc b                                         ; $5486: $04
    di                                            ; $5487: $F3
    inc b                                         ; $5488: $04
    ld e, b                                       ; $5489: $58
    inc b                                         ; $548A: $04
    call nc, $8F04                                ; $548B: $D4 $04 $8F
    xor d                                         ; $548E: $AA
    ret                                           ; $548F: $C9


    add b                                         ; $5490: $80
    add b                                         ; $5491: $80
    ret nz                                        ; $5492: $C0

    inc h                                         ; $5493: $24
    ldh [$FF80], a                                ; $5494: $E0 $80
    ldh a, [$FFAE]                                ; $5496: $F0 $AE
    add b                                         ; $5498: $80
    ld hl, sp-$80                                 ; $5499: $F8 $80
    db $FC                                        ; $549B: $FC
    add b                                         ; $549C: $80
    cp l                                          ; $549D: $BD
    ld [hl], $BF                                  ; $549E: $36 $BF
    xor d                                         ; $54A0: $AA
    inc [hl]                                      ; $54A1: $34
    rst RST_18                                    ; $54A2: $DF
    inc [hl]                                      ; $54A3: $34
    cpl                                           ; $54A4: $2F
    inc [hl]                                      ; $54A5: $34
    rst RST_30                                    ; $54A6: $F7
    inc [hl]                                      ; $54A7: $34
    sbc e                                         ; $54A8: $9B
    xor [hl]                                      ; $54A9: $AE
    inc [hl]                                      ; $54AA: $34
    push af                                       ; $54AB: $F5

jr_005_54AC:
    ld [hl], b                                    ; $54AC: $70
    ld a, $04                                     ; $54AD: $3E $04
    stop                                          ; $54AF: $10 $00
    sbc l                                         ; $54B1: $9D
    xor e                                         ; $54B2: $AB
    inc h                                         ; $54B3: $24
    db $E3                                        ; $54B4: $E3
    inc [hl]                                      ; $54B5: $34
    scf                                           ; $54B6: $37
    ld b, h                                       ; $54B7: $44
    rst RST_28                                    ; $54B8: $EF
    adc l                                         ; $54B9: $8D
    ld h, l                                       ; $54BA: $65
    rst RST_38                                    ; $54BB: $FF
    ld [hl], l                                    ; $54BC: $75
    nop                                           ; $54BD: $00
    ld [$18B0], sp                                ; $54BE: $08 $B0 $18
    jr nz, jr_005_54EB                            ; $54C1: $20 $28

    or b                                          ; $54C3: $B0
    rst RST_38                                    ; $54C4: $FF
    jr c, jr_005_5477                             ; $54C5: $38 $B0

    ld c, b                                       ; $54C7: $48
    or b                                          ; $54C8: $B0
    ld e, b                                       ; $54C9: $58
    or b                                          ; $54CA: $B0
    ld l, b                                       ; $54CB: $68
    push af                                       ; $54CC: $F5
    rst RST_38                                    ; $54CD: $FF

jr_005_54CE:
    rlca                                          ; $54CE: $07
    rlca                                          ; $54CF: $07
    rlca                                          ; $54D0: $07
    rlca                                          ; $54D1: $07
    dec b                                         ; $54D2: $05
    ld d, b                                       ; $54D3: $50
    ld e, b                                       ; $54D4: $58
    adc l                                         ; $54D5: $8D
    rst RST_38                                    ; $54D6: $FF
    ld l, l                                       ; $54D7: $6D
    daa                                           ; $54D8: $27
    rlca                                          ; $54D9: $07
    rlca                                          ; $54DA: $07
    dec b                                         ; $54DB: $05
    add hl, bc                                    ; $54DC: $09
    rla                                           ; $54DD: $17
    rlca                                          ; $54DE: $07
    rst RST_00                                    ; $54DF: $C7
    dec b                                         ; $54E0: $05
    ld hl, sp+$3F                                 ; $54E1: $F8 $3F
    jr c, jr_005_54AC                             ; $54E3: $38 $C7

    add hl, de                                    ; $54E5: $19
    dec d                                         ; $54E6: $15
    cpl                                           ; $54E7: $2F
    ld sp, hl                                     ; $54E8: $F9
    rlca                                          ; $54E9: $07
    or l                                          ; $54EA: $B5

jr_005_54EB:
    nop                                           ; $54EB: $00
    ld [$1F19], sp                                ; $54EC: $08 $19 $1F
    ldh [$FF2F], a                                ; $54EF: $E0 $2F
    pop hl                                        ; $54F1: $E1
    rst RST_30                                    ; $54F2: $F7
    add sp, -$10                                  ; $54F3: $E8 $F0
    ld hl, sp+$07                                 ; $54F5: $F8 $07
    ldh a, [rIF]                                  ; $54F7: $F0 $0F

jr_005_54F9:
    jr c, jr_005_54F9                             ; $54F9: $38 $FE

    ld b, b                                       ; $54FB: $40
    add l                                         ; $54FC: $85
    ld e, l                                       ; $54FD: $5D
    dec a                                         ; $54FE: $3D

jr_005_54FF:
    jr c, jr_005_5541                             ; $54FF: $38 $40

jr_005_5501:
    jr c, @-$01                                   ; $5501: $38 $FD

    xor d                                         ; $5503: $AA

Call_005_5504:
    jr c, jr_005_5501                             ; $5504: $38 $FB

    jr c, jr_005_54FF                             ; $5506: $38 $F7

    jr c, jr_005_54F9                             ; $5508: $38 $EF

    jr c, jr_005_54EB                             ; $550A: $38 $DF

    cp a                                          ; $550C: $BF
    jr c, jr_005_54CE                             ; $550D: $38 $BF

    or c                                          ; $550F: $B1
    inc b                                         ; $5510: $04
    inc bc                                        ; $5511: $03
    inc bc                                        ; $5512: $03
    inc bc                                        ; $5513: $03
    inc bc                                        ; $5514: $03
    rst RST_38                                    ; $5515: $FF
    ld b, h                                       ; $5516: $44
    ld d, l                                       ; $5517: $55
    ld h, l                                       ; $5518: $65
    ld [hl], l                                    ; $5519: $75
    add l                                         ; $551A: $85
    sub l                                         ; $551B: $95
    and l                                         ; $551C: $A5
    or l                                          ; $551D: $B5
    push af                                       ; $551E: $F5
    inc a                                         ; $551F: $3C
    inc b                                         ; $5520: $04
    nop                                           ; $5521: $00
    inc d                                         ; $5522: $14
    db $FC                                        ; $5523: $FC
    inc h                                         ; $5524: $24
    ld hl, sp+$34                                 ; $5525: $F8 $34
    ld d, l                                       ; $5527: $55
    ldh a, [rLY]                                  ; $5528: $F0 $44
    ldh [rHDMA4], a                               ; $552A: $E0 $54
    ret nz                                        ; $552C: $C0

    ld h, h                                       ; $552D: $64
    add b                                         ; $552E: $80
    ld [hl], b                                    ; $552F: $70
    ld a, a                                       ; $5530: $7F
    nop                                           ; $5531: $00
    ld b, b                                       ; $5532: $40
    ld c, l                                       ; $5533: $4D
    ld e, h                                       ; $5534: $5C
    ld b, b                                       ; $5535: $40
    ld l, h                                       ; $5536: $6C
    ld b, b                                       ; $5537: $40
    ld a, h                                       ; $5538: $7C
    cp $40                                        ; $5539: $FE $40
    adc h                                         ; $553B: $8C
    ld b, b                                       ; $553C: $40
    sbc h                                         ; $553D: $9C
    ld b, b                                       ; $553E: $40
    jr c, jr_005_5581                             ; $553F: $38 $40

jr_005_5541:
    ld [de], a                                    ; $5541: $12
    nop                                           ; $5542: $00
    db $ED                                        ; $5543: $ED
    dec a                                         ; $5544: $3D
    jp nz, $B44B                                  ; $5545: $C2 $4B $B4

    rla                                           ; $5548: $17
    add sp, $2F                                   ; $5549: $E8 $2F
    rla                                           ; $554B: $17
    ret nc                                        ; $554C: $D0

    ld e, a                                       ; $554D: $5F
    and b                                         ; $554E: $A0
    ld a, b                                       ; $554F: $78
    ld b, b                                       ; $5550: $40
    dec a                                         ; $5551: $3D
    ld a, [hl]                                    ; $5552: $7E
    inc b                                         ; $5553: $04
    rst RST_38                                    ; $5554: $FF
    ld a, h                                       ; $5555: $7C
    inc b                                         ; $5556: $04
    ld a, h                                       ; $5557: $7C
    inc b                                         ; $5558: $04
    ld a, h                                       ; $5559: $7C
    inc b                                         ; $555A: $04
    ld a, h                                       ; $555B: $7C
    inc b                                         ; $555C: $04
    rst RST_38                                    ; $555D: $FF
    ld a, h                                       ; $555E: $7C
    inc b                                         ; $555F: $04
    inc a                                         ; $5560: $3C
    inc b                                         ; $5561: $04
    dec a                                         ; $5562: $3D
    ld c, b                                       ; $5563: $48
    inc b                                         ; $5564: $04
    sbc b                                         ; $5565: $98
    rst RST_38                                    ; $5566: $FF
    inc b                                         ; $5567: $04
    xor b                                         ; $5568: $A8
    inc b                                         ; $5569: $04
    cp b                                          ; $556A: $B8
    inc b                                         ; $556B: $04
    ret z                                         ; $556C: $C8

    inc b                                         ; $556D: $04
    ret c                                         ; $556E: $D8

    rst RST_38                                    ; $556F: $FF
    inc b                                         ; $5570: $04
    add sp, $04                                   ; $5571: $E8 $04
    inc bc                                        ; $5573: $03
    inc bc                                        ; $5574: $03
    inc bc                                        ; $5575: $03
    ld [bc], a                                    ; $5576: $02
    ld a, b                                       ; $5577: $78
    rst RST_38                                    ; $5578: $FF
    add l                                         ; $5579: $85
    sub l                                         ; $557A: $95
    and l                                         ; $557B: $A5
    or l                                          ; $557C: $B5
    push bc                                       ; $557D: $C5
    push de                                       ; $557E: $D5
    push hl                                       ; $557F: $E5
    or l                                          ; $5580: $B5

jr_005_5581:
    push af                                       ; $5581: $F5
    inc bc                                        ; $5582: $03
    inc bc                                        ; $5583: $03
    xor d                                         ; $5584: $AA
    cp c                                          ; $5585: $B9
    ld d, l                                       ; $5586: $55
    inc b                                         ; $5587: $04
    xor d                                         ; $5588: $AA
    ld h, $AF                                     ; $5589: $26 $AF
    dec e                                         ; $558B: $1D
    ret z                                         ; $558C: $C8

    inc b                                         ; $558D: $04
    add b                                         ; $558E: $80
    ld l, d                                       ; $558F: $6A
    dec b                                         ; $5590: $05
    ccf                                           ; $5591: $3F
    rra                                           ; $5592: $1F
    ld hl, sp+$07                                 ; $5593: $F8 $07
    rlca                                          ; $5595: $07
    ld a, $11                                     ; $5596: $3E $11
    ld l, b                                       ; $5598: $68
    ld a, a                                       ; $5599: $7F
    ret nz                                        ; $559A: $C0

    ccf                                           ; $559B: $3F
    ld [bc], a                                    ; $559C: $02
    ldh [$FF1F], a                                ; $559D: $E0 $1F
    ldh a, [rIF]                                  ; $559F: $F0 $0F
    ld hl, sp+$07                                 ; $55A1: $F8 $07
    and b                                         ; $55A3: $A0
    ld d, a                                       ; $55A4: $57
    cp l                                          ; $55A5: $BD
    ret nc                                        ; $55A6: $D0

    xor e                                         ; $55A7: $AB
    db $EB                                        ; $55A8: $EB
    inc bc                                        ; $55A9: $03
    inc bc                                        ; $55AA: $03
    nop                                           ; $55AB: $00
    pop af                                        ; $55AC: $F1
    inc b                                         ; $55AD: $04
    rst RST_38                                    ; $55AE: $FF
    ld l, b                                       ; $55AF: $68
    ld [hl], b                                    ; $55B0: $70
    ld a, b                                       ; $55B1: $78
    ld [hl], b                                    ; $55B2: $70
    inc c                                         ; $55B3: $0C
    ld [hl], b                                    ; $55B4: $70
    ld a, b                                       ; $55B5: $78
    ld [hl], b                                    ; $55B6: $70
    db $EB                                        ; $55B7: $EB
    ld a, b                                       ; $55B8: $78
    ld [hl], b                                    ; $55B9: $70
    ld a, b                                       ; $55BA: $78
    inc bc                                        ; $55BB: $03
    ld a, b                                       ; $55BC: $78
    ld bc, $02CA                                  ; $55BD: $01 $CA $02
    ld a, a                                       ; $55C0: $7F
    db $EB                                        ; $55C1: $EB
    sbc $03                                       ; $55C2: $DE $03
    inc bc                                        ; $55C4: $03
    inc bc                                        ; $55C5: $03
    inc bc                                        ; $55C6: $03
    sub b                                         ; $55C7: $90
    inc b                                         ; $55C8: $04
    ld l, l                                       ; $55C9: $6D
    add hl, de                                    ; $55CA: $19
    ld [hl], d                                    ; $55CB: $72
    ld e, l                                       ; $55CC: $5D
    xor d                                         ; $55CD: $AA
    inc sp                                        ; $55CE: $33
    nop                                           ; $55CF: $00
    cp $04                                        ; $55D0: $FE $04
    ld e, l                                       ; $55D2: $5D
    push af                                       ; $55D3: $F5
    inc b                                         ; $55D4: $04
    ld [$0323], a                                 ; $55D5: $EA $23 $03
    ld [bc], a                                    ; $55D8: $02
    xor a                                         ; $55D9: $AF
    rst RST_00                                    ; $55DA: $C7
    xor e                                         ; $55DB: $AB
    nop                                           ; $55DC: $00
    db $FD                                        ; $55DD: $FD
    inc b                                         ; $55DE: $04
    ldh a, [rDIV]                                 ; $55DF: $F0 $04
    add b                                         ; $55E1: $80
    dec sp                                        ; $55E2: $3B
    inc bc                                        ; $55E3: $03
    xor e                                         ; $55E4: $AB
    nop                                           ; $55E5: $00
    adc a                                         ; $55E6: $8F
    inc b                                         ; $55E7: $04
    rlca                                          ; $55E8: $07
    inc b                                         ; $55E9: $04
    ld bc, $0306                                  ; $55EA: $01 $06 $03
    ld e, [hl]                                    ; $55ED: $5E
    inc a                                         ; $55EE: $3C
    inc b                                         ; $55EF: $04
    ld [$FFF6], sp                                ; $55F0: $08 $F6 $FF
    db $FD                                        ; $55F3: $FD
    ld e, l                                       ; $55F4: $5D
    inc bc                                        ; $55F5: $03
    ei                                            ; $55F6: $FB
    cpl                                           ; $55F7: $2F
    rlca                                          ; $55F8: $07
    ccf                                           ; $55F9: $3F
    ld a, e                                       ; $55FA: $7B
    ld [bc], a                                    ; $55FB: $02
    inc c                                         ; $55FC: $0C
    ccf                                           ; $55FD: $3F
    ccf                                           ; $55FE: $3F
    rst RST_10                                    ; $55FF: $D7
    inc sp                                        ; $5600: $33
    nop                                           ; $5601: $00
    ld a, h                                       ; $5602: $7C
    inc b                                         ; $5603: $04
    jr nc, @+$41                                  ; $5604: $30 $3F

    ccf                                           ; $5606: $3F
    dec sp                                        ; $5607: $3B
    call nc, $0203                                ; $5608: $D4 $03 $02
    cp a                                          ; $560B: $BF
    inc b                                         ; $560C: $04
    ld d, a                                       ; $560D: $57
    inc b                                         ; $560E: $04
    xor e                                         ; $560F: $AB
    cp $AA                                        ; $5610: $FE $AA
    ld [$04FC], sp                                ; $5612: $08 $FC $04
    ld hl, sp+$04                                 ; $5615: $F8 $04
    ldh a, [rDIV]                                 ; $5617: $F0 $04
    ldh [$FFAD], a                                ; $5619: $E0 $AD
    inc b                                         ; $561B: $04
    ret nz                                        ; $561C: $C0

    inc b                                         ; $561D: $04
    add b                                         ; $561E: $80
    sub e                                         ; $561F: $93
    inc b                                         ; $5620: $04
    ld bc, $5548                                  ; $5621: $01 $48 $55
    inc bc                                        ; $5624: $03
    ld c, b                                       ; $5625: $48
    rlca                                          ; $5626: $07
    ld c, b                                       ; $5627: $48
    rrca                                          ; $5628: $0F
    ld c, b                                       ; $5629: $48
    rra                                           ; $562A: $1F
    ld c, b                                       ; $562B: $48
    rra                                           ; $562C: $1F
    ccf                                           ; $562D: $3F
    push de                                       ; $562E: $D5
    ld a, a                                       ; $562F: $7F
    cp h                                          ; $5630: $BC
    inc b                                         ; $5631: $04
    inc c                                         ; $5632: $0C
    inc d                                         ; $5633: $14
    ld b, h                                       ; $5634: $44
    cp a                                          ; $5635: $BF
    inc h                                         ; $5636: $24
    db $FD                                        ; $5637: $FD
    inc [hl]                                      ; $5638: $34
    inc c                                         ; $5639: $0C
    ld b, h                                       ; $563A: $44
    inc b                                         ; $563B: $04
    ld d, h                                       ; $563C: $54
    ld h, l                                       ; $563D: $65
    sub $76                                       ; $563E: $D6 $76
    nop                                           ; $5640: $00
    ld d, l                                       ; $5641: $55
    inc b                                         ; $5642: $04
    db $EB                                        ; $5643: $EB
    ld c, $01                                     ; $5644: $0E $01
    push af                                       ; $5646: $F5
    di                                            ; $5647: $F3
    db $ED                                        ; $5648: $ED
    ld d, $46                                     ; $5649: $16 $46
    xor l                                         ; $564B: $AD
    inc c                                         ; $564C: $0C
    di                                            ; $564D: $F3
    or l                                          ; $564E: $B5
    dec e                                         ; $564F: $1D
    ld e, b                                       ; $5650: $58
    ld a, [hl]                                    ; $5651: $7E
    inc b                                         ; $5652: $04
    ld b, d                                       ; $5653: $42
    ld c, $1D                                     ; $5654: $0E $1D
    ei                                            ; $5656: $FB
    inc b                                         ; $5657: $04
    cp b                                          ; $5658: $B8
    ld hl, $F7E7                                  ; $5659: $21 $E7 $F7
    ld b, b                                       ; $565C: $40
    sub b                                         ; $565D: $90
    ld l, a                                       ; $565E: $6F
    call nc, Call_005_502B                        ; $565F: $D4 $2B $50
    sbc e                                         ; $5662: $9B
    inc d                                         ; $5663: $14
    sub h                                         ; $5664: $94
    ld l, e                                       ; $5665: $6B
    xor a                                         ; $5666: $AF
    nop                                           ; $5667: $00
    push de                                       ; $5668: $D5
    adc $69                                       ; $5669: $CE $69
    db $FC                                        ; $566B: $FC
    inc bc                                        ; $566C: $03
    ld a, [hl]                                    ; $566D: $7E
    dec bc                                        ; $566E: $0B
    inc de                                        ; $566F: $13
    dec de                                        ; $5670: $1B
    rla                                           ; $5671: $17
    ldh [$FF1F], a                                ; $5672: $E0 $1F
    ld a, $30                                     ; $5674: $3E $30
    rst RST_08                                    ; $5676: $CF
    and l                                         ; $5677: $A5
    rst RST_38                                    ; $5678: $FF
    rst RST_38                                    ; $5679: $FF
    cp [hl]                                       ; $567A: $BE
    xor l                                         ; $567B: $AD
    rst RST_10                                    ; $567C: $D7
    ld l, c                                       ; $567D: $69
    ld hl, sp+$08                                 ; $567E: $F8 $08
    ld b, h                                       ; $5680: $44
    cp a                                          ; $5681: $BF
    ld e, h                                       ; $5682: $5C
    ld e, a                                       ; $5683: $5F
    ret nz                                        ; $5684: $C0

    inc d                                         ; $5685: $14
    ld e, a                                       ; $5686: $5F
    add b                                         ; $5687: $80
    ccf                                           ; $5688: $3F
    xor e                                         ; $5689: $AB
    inc b                                         ; $568A: $04
    inc h                                         ; $568B: $24
    sbc a                                         ; $568C: $9F
    rlca                                          ; $568D: $07
    adc $BF                                       ; $568E: $CE $BF
    dec a                                         ; $5690: $3D
    xor d                                         ; $5691: $AA
    ld a, l                                       ; $5692: $7D
    daa                                           ; $5693: $27
    rlca                                          ; $5694: $07
    ccf                                           ; $5695: $3F
    add hl, bc                                    ; $5696: $09
    ld bc, $27E0                                  ; $5697: $01 $E0 $27
    rlca                                          ; $569A: $07
    rlca                                          ; $569B: $07
    rst RST_18                                    ; $569C: $DF
    jr nz, jr_005_56BC                            ; $569D: $20 $1D

    rst RST_20                                    ; $569F: $E7
    rst RST_28                                    ; $56A0: $EF
    add d                                         ; $56A1: $82
    ld hl, sp+$09                                 ; $56A2: $F8 $09
    or $2B                                        ; $56A4: $F6 $2B
    call nc, Call_000_140F                        ; $56A6: $D4 $0F $14
    add hl, hl                                    ; $56A9: $29
    ld l, h                                       ; $56AA: $6C
    sub $BF                                       ; $56AB: $D6 $BF
    ld a, l                                       ; $56AD: $7D
    rra                                           ; $56AE: $1F
    inc b                                         ; $56AF: $04
    inc l                                         ; $56B0: $2C
    push af                                       ; $56B1: $F5
    rlca                                          ; $56B2: $07
    xor d                                         ; $56B3: $AA
    inc c                                         ; $56B4: $0C
    inc bc                                        ; $56B5: $03
    inc b                                         ; $56B6: $04
    ld bc, $FE04                                  ; $56B7: $01 $04 $FE
    inc a                                         ; $56BA: $3C
    db $FC                                        ; $56BB: $FC

jr_005_56BC:
    cp d                                          ; $56BC: $BA
    inc c                                         ; $56BD: $0C
    ld hl, sp+$04                                 ; $56BE: $F8 $04
    ld h, b                                       ; $56C0: $60
    inc b                                         ; $56C1: $04
    ldh [rDIV], a                                 ; $56C2: $E0 $04
    ret nz                                        ; $56C4: $C0

    cp l                                          ; $56C5: $BD
    inc b                                         ; $56C6: $04
    add b                                         ; $56C7: $80
    or [hl]                                       ; $56C8: $B6
    inc a                                         ; $56C9: $3C
    ld e, h                                       ; $56CA: $5C
    inc a                                         ; $56CB: $3C
    xor e                                         ; $56CC: $AB
    ccf                                           ; $56CD: $3F
    cp $3F                                        ; $56CE: $FE $3F
    ccf                                           ; $56D0: $3F
    ld a, [bc]                                    ; $56D1: $0A
    rlca                                          ; $56D2: $07
    rst RST_10                                    ; $56D3: $D7
    inc bc                                        ; $56D4: $03
    nop                                           ; $56D5: $00
    ld h, [hl]                                    ; $56D6: $66
    cp e                                          ; $56D7: $BB
    inc b                                         ; $56D8: $04
    ld a, [hl]                                    ; $56D9: $7E
    rlca                                          ; $56DA: $07
    rlca                                          ; $56DB: $07
    dec b                                         ; $56DC: $05
    push de                                       ; $56DD: $D5
    inc b                                         ; $56DE: $04
    xor h                                         ; $56DF: $AC
    ld e, $F4                                     ; $56E0: $1E $F4
    ld l, e                                       ; $56E2: $6B
    sub h                                         ; $56E3: $94
    inc b                                         ; $56E4: $04
    dec c                                         ; $56E5: $0D
    rlca                                          ; $56E6: $07
    ld b, $5F                                     ; $56E7: $06 $5F
    rst RST_18                                    ; $56E9: $DF
    inc b                                         ; $56EA: $04
    inc a                                         ; $56EB: $3C
    db $DB                                        ; $56EC: $DB
    sub e                                         ; $56ED: $93
    inc bc                                        ; $56EE: $03
    inc bc                                        ; $56EF: $03
    sub $BF                                       ; $56F0: $D6 $BF
    pop af                                        ; $56F2: $F1
    rlca                                          ; $56F3: $07
    rlca                                          ; $56F4: $07
    or l                                          ; $56F5: $B5
    push bc                                       ; $56F6: $C5
    cpl                                           ; $56F7: $2F
    sub $29                                       ; $56F8: $D6 $29
    inc b                                         ; $56FA: $04
    ld [$070D], a                                 ; $56FB: $EA $0D $07
    inc b                                         ; $56FE: $04
    ret nc                                        ; $56FF: $D0

    inc b                                         ; $5700: $04
    jp c, $F504                                   ; $5701: $DA $04 $F5

    nop                                           ; $5704: $00
    ld d, [hl]                                    ; $5705: $56
    ld b, b                                       ; $5706: $40
    ld l, d                                       ; $5707: $6A
    nop                                           ; $5708: $00
    rlca                                          ; $5709: $07
    rlca                                          ; $570A: $07
    rst RST_38                                    ; $570B: $FF
    rrca                                          ; $570C: $0F
    add b                                         ; $570D: $80
    ld [$98A1], sp                                ; $570E: $08 $A1 $98
    ld [$7FE3], sp                                ; $5711: $08 $E3 $7F
    ld l, a                                       ; $5714: $6F
    add hl, bc                                    ; $5715: $09
    ld b, b                                       ; $5716: $40
    cp a                                          ; $5717: $BF
    ldh [rNR12], a                                ; $5718: $E0 $12
    ccf                                           ; $571A: $3F
    pop hl                                        ; $571B: $E1
    rra                                           ; $571C: $1F
    adc c                                         ; $571D: $89
    rst RST_30                                    ; $571E: $F7
    ld a, [hl]                                    ; $571F: $7E
    ld [$D23C], sp                                ; $5720: $08 $3C $D2
    ld h, b                                       ; $5723: $60
    dec bc                                        ; $5724: $0B
    jr jr_005_5731                                ; $5725: $18 $0A

    db $10                                        ; $5727: $10
    pop af                                        ; $5728: $F1
    adc b                                         ; $5729: $88
    push af                                       ; $572A: $F5
    jp c, Jump_005_7808                           ; $572B: $DA $08 $78

    rrca                                          ; $572E: $0F
    add hl, bc                                    ; $572F: $09
    ld c, b                                       ; $5730: $48

jr_005_5731:
    ld b, $08                                     ; $5731: $06 $08
    ld [bc], a                                    ; $5733: $02
    and [hl]                                      ; $5734: $A6
    ld [$0900], sp                                ; $5735: $08 $00 $09
    inc bc                                        ; $5738: $03
    db $FC                                        ; $5739: $FC
    add hl, bc                                    ; $573A: $09
    ld h, b                                       ; $573B: $60

jr_005_573C:
    ld hl, sp-$3E                                 ; $573C: $F8 $C2
    sub b                                         ; $573E: $90

jr_005_573F:
    ld [$F05F], sp                                ; $573F: $08 $5F $F0
    ld a, a                                       ; $5742: $7F
    or b                                          ; $5743: $B0
    ld [$D4A0], sp                                ; $5744: $08 $A0 $D4
    ld a, c                                       ; $5747: $79
    sub c                                         ; $5748: $91
    ld b, b                                       ; $5749: $40
    ld [$08C0], sp                                ; $574A: $08 $C0 $08
    jp $0B7C                                      ; $574D: $C3 $7C $0B


    rst RST_00                                    ; $5750: $C7
    inc a                                         ; $5751: $3C
    rst RST_28                                    ; $5752: $EF
    jr c, @+$32                                   ; $5753: $38 $30

    jr nc, jr_005_57D0                            ; $5755: $30 $79

    rrca                                          ; $5757: $0F
    call nc, Call_005_470F                        ; $5758: $D4 $0F $47
    ld [$CC08], sp                                ; $575B: $08 $08 $CC
    ld [$7FC8], sp                                ; $575E: $08 $C8 $7F
    jr nc, jr_005_573F                            ; $5761: $30 $DC

    ccf                                           ; $5763: $3F
    ld a, a                                       ; $5764: $7F
    adc e                                         ; $5765: $8B
    ld bc, $0BFE                                  ; $5766: $01 $FE $0B
    db $FC                                        ; $5769: $FC
    rst RST_20                                    ; $576A: $E7
    sbc b                                         ; $576B: $98
    adc b                                         ; $576C: $88
    sbc c                                         ; $576D: $99
    db $FD                                        ; $576E: $FD
    rra                                           ; $576F: $1F
    ld b, b                                       ; $5770: $40
    ld [$5B60], sp                                ; $5771: $08 $60 $5B
    rrca                                          ; $5774: $0F

jr_005_5775:
    jr jr_005_577E                                ; $5775: $18 $07

    jr jr_005_5782                                ; $5777: $18 $09

    ld [bc], a                                    ; $5779: $02
    db $10                                        ; $577A: $10
    adc b                                         ; $577B: $88
    ret nz                                        ; $577C: $C0

    ld b, b                                       ; $577D: $40

jr_005_577E:
    ld [$F817], sp                                ; $577E: $08 $17 $F8
    cp a                                          ; $5781: $BF

jr_005_5782:
    ldh a, [$FF7F]                                ; $5782: $F0 $7F
    ldh [$FFAB], a                                ; $5784: $E0 $AB
    ld e, b                                       ; $5786: $58
    ret nz                                        ; $5787: $C0

    ld [$0880], sp                                ; $5788: $08 $80 $08
    nop                                           ; $578B: $00
    nop                                           ; $578C: $00
    ld de, $0CD5                                  ; $578D: $11 $D5 $0C
    ld d, c                                       ; $5790: $51
    add c                                         ; $5791: $81
    sub b                                         ; $5792: $90
    jp nz, $A108                                  ; $5793: $C2 $08 $A1

    ld [$F8ED], sp                                ; $5796: $08 $ED $F8
    ret c                                         ; $5799: $D8

    dec bc                                        ; $579A: $0B
    rrca                                          ; $579B: $0F

jr_005_579C:
    ld hl, sp+$09                                 ; $579C: $F8 $09
    rra                                           ; $579E: $1F
    ld [$3F35], sp                                ; $579F: $08 $35 $3F
    ldh [rNR23], a                                ; $57A2: $E0 $18
    ld [$20C6], sp                                ; $57A4: $08 $C6 $20
    db $E3                                        ; $57A7: $E3
    ld [$F75B], sp                                ; $57A8: $08 $5B $F7
    jr nc, jr_005_579C                            ; $57AB: $30 $EF

    ld [$FF19], sp                                ; $57AD: $08 $19 $FF
    sub b                                         ; $57B0: $90
    jr jr_005_573C                                ; $57B1: $18 $89

    ld [$06FD], sp                                ; $57B3: $08 $FD $06
    cp a                                          ; $57B6: $BF
    adc b                                         ; $57B7: $88
    ld a, a                                       ; $57B8: $7F
    ret nz                                        ; $57B9: $C0

    ld c, b                                       ; $57BA: $48
    or $08                                        ; $57BB: $F6 $08
    jr z, jr_005_57C7                             ; $57BD: $28 $08

    jr z, @-$7E                                   ; $57BF: $28 $80

    add hl, bc                                    ; $57C1: $09
    jr c, jr_005_57C4                             ; $57C2: $38 $00

jr_005_57C4:
    add b                                         ; $57C4: $80
    dec bc                                        ; $57C5: $0B
    cp [hl]                                       ; $57C6: $BE

jr_005_57C7:
    ld b, c                                       ; $57C7: $41
    rst RST_18                                    ; $57C8: $DF
    jr nz, jr_005_5775                            ; $57C9: $20 $AA

    ld d, l                                       ; $57CB: $55
    push de                                       ; $57CC: $D5
    ld bc, $EA2A                                  ; $57CD: $01 $2A $EA

jr_005_57D0:
    dec e                                         ; $57D0: $1D
    add $3B                                       ; $57D1: $C6 $3B

jr_005_57D3:
    db $EB                                        ; $57D3: $EB
    ld e, $9D                                     ; $57D4: $1E $9D
    jr nz, jr_005_57D3                            ; $57D6: $20 $FB

    inc b                                         ; $57D8: $04
    add hl, de                                    ; $57D9: $19
    ld e, e                                       ; $57DA: $5B
    and h                                         ; $57DB: $A4
    xor e                                         ; $57DC: $AB
    ld d, h                                       ; $57DD: $54
    ld sp, $EE25                                  ; $57DE: $31 $25 $EE
    rst RST_20                                    ; $57E1: $E7
    adc b                                         ; $57E2: $88
    rst RST_30                                    ; $57E3: $F7
    inc c                                         ; $57E4: $0C
    ld [$AD08], sp                                ; $57E5: $08 $08 $AD
    add b                                         ; $57E8: $80
    dec bc                                        ; $57E9: $0B
    add hl, bc                                    ; $57EA: $09
    cp $B0                                        ; $57EB: $FE $B0
    rst RST_28                                    ; $57ED: $EF
    reti                                          ; $57EE: $D9


    ld a, a                                       ; $57EF: $7F
    ldh a, [c]                                    ; $57F0: $F2
    sub l                                         ; $57F1: $95
    ld [$3EED], sp                                ; $57F2: $08 $ED $3E
    ld e, b                                       ; $57F5: $58
    inc a                                         ; $57F6: $3C
    ld [$0818], sp                                ; $57F7: $08 $18 $08
    ld a, a                                       ; $57FA: $7F
    db $10                                        ; $57FB: $10
    ld b, b                                       ; $57FC: $40
    db $10                                        ; $57FD: $10
    rrca                                          ; $57FE: $0F
    dec c                                         ; $57FF: $0D
    ldh a, [rIF]                                  ; $5800: $F0 $0F
    ld c, $A5                                     ; $5802: $0E $A5
    nop                                           ; $5804: $00
    nop                                           ; $5805: $00
    dec c                                         ; $5806: $0D
    rst RST_18                                    ; $5807: $DF
    jr nc, jr_005_5812                            ; $5808: $30 $08

    jr c, jr_005_5814                             ; $580A: $38 $08

    db $10                                        ; $580C: $10
    inc a                                         ; $580D: $3C
    sbc a                                         ; $580E: $9F
    ld a, [hl]                                    ; $580F: $7E

jr_005_5810:
    ld c, c                                       ; $5810: $49
    ei                                            ; $5811: $FB

jr_005_5812:
    inc b                                         ; $5812: $04
    ld a, a                                       ; $5813: $7F

jr_005_5814:
    add b                                         ; $5814: $80
    ld [$44BB], sp                                ; $5815: $08 $BB $44
    ld a, l                                       ; $5818: $7D
    add d                                         ; $5819: $82
    add hl, de                                    ; $581A: $19
    ld d, l                                       ; $581B: $55
    xor d                                         ; $581C: $AA
    and e                                         ; $581D: $A3
    dec c                                         ; $581E: $0D
    sbc $25                                       ; $581F: $DE $25
    cp $F3                                        ; $5821: $FE $F3
    ld [$DC78], sp                                ; $5823: $08 $78 $DC
    xor b                                         ; $5826: $A8
    ld e, [hl]                                    ; $5827: $5E
    sbc h                                         ; $5828: $9C
    ld [$C988], sp                                ; $5829: $08 $88 $C9
    dec bc                                        ; $582C: $0B
    ld e, b                                       ; $582D: $58
    db $10                                        ; $582E: $10
    ld l, a                                       ; $582F: $6F
    add b                                         ; $5830: $80
    ld a, b                                       ; $5831: $78
    ld a, [hl]                                    ; $5832: $7E
    db $FD                                        ; $5833: $FD
    ld e, l                                       ; $5834: $5D
    ei                                            ; $5835: $FB
    ld a, e                                       ; $5836: $7B
    rst RST_30                                    ; $5837: $F7
    ld [hl], a                                    ; $5838: $77
    ld e, a                                       ; $5839: $5F
    rst RST_28                                    ; $583A: $EF
    ld c, b                                       ; $583B: $48
    rst RST_18                                    ; $583C: $DF
    rrca                                          ; $583D: $0F
    rrca                                          ; $583E: $0F
    add hl, bc                                    ; $583F: $09
    ldh [$FFF8], a                                ; $5840: $E0 $F8
    add b                                         ; $5842: $80
    ld [$F65F], sp                                ; $5843: $08 $5F $F6
    ccf                                           ; $5846: $3F
    ld a, [hl]                                    ; $5847: $7E
    sbc a                                         ; $5848: $9F
    cp d                                          ; $5849: $BA
    rst RST_08                                    ; $584A: $CF
    cpl                                           ; $584B: $2F
    sbc [hl]                                      ; $584C: $9E
    rst RST_20                                    ; $584D: $E7
    ld [$0FE3], sp                                ; $584E: $08 $E3 $0F
    rrca                                          ; $5851: $0F
    add hl, bc                                    ; $5852: $09
    ldh a, [rOBP0]                                ; $5853: $F0 $48
    nop                                           ; $5855: $00
    rrca                                          ; $5856: $0F
    cp $C1                                        ; $5857: $FE $C1
    ld [$7EE1], sp                                ; $5859: $08 $E1 $7E
    pop af                                        ; $585C: $F1
    ld h, a                                       ; $585D: $67
    sbc a                                         ; $585E: $9F
    db $10                                        ; $585F: $10
    ld [$1F7F], sp                                ; $5860: $08 $7F $1F
    ld h, b                                       ; $5863: $60
    rrca                                          ; $5864: $0F
    rrca                                          ; $5865: $0F
    add sp, $0F                                   ; $5866: $E8 $0F
    add hl, bc                                    ; $5868: $09
    nop                                           ; $5869: $00
    nop                                           ; $586A: $00
    dec c                                         ; $586B: $0D
    rst RST_28                                    ; $586C: $EF
    db $10                                        ; $586D: $10
    rst RST_08                                    ; $586E: $CF
    inc d                                         ; $586F: $14
    jr c, jr_005_5810                             ; $5870: $38 $9E

    ld a, c                                       ; $5872: $79
    add hl, bc                                    ; $5873: $09
    db $E3                                        ; $5874: $E3
    sub b                                         ; $5875: $90
    jp $153F                                      ; $5876: $C3 $3F $15


    add e                                         ; $5879: $83
    ld a, a                                       ; $587A: $7F
    add a                                         ; $587B: $87
    ld [$9007], sp                                ; $587C: $08 $07 $90
    rrca                                          ; $587F: $0F
    ld a, [bc]                                    ; $5880: $0A
    adc d                                         ; $5881: $8A
    ld h, b                                       ; $5882: $60
    cp $6F                                        ; $5883: $FE $6F
    rst RST_18                                    ; $5885: $DF
    add hl, bc                                    ; $5886: $09
    ld [hl], a                                    ; $5887: $77
    ldh [$FF7B], a                                ; $5888: $E0 $7B
    inc bc                                        ; $588A: $03
    or a                                          ; $588B: $B7
    ld a, l                                       ; $588C: $7D
    ei                                            ; $588D: $FB
    halt                                          ; $588E: $76
    db $FD                                        ; $588F: $FD
    ld e, a                                       ; $5890: $5F
    ld l, b                                       ; $5891: $68
    or b                                          ; $5892: $B0
    sub b                                         ; $5893: $90
    adc b                                         ; $5894: $88
    sbc [hl]                                      ; $5895: $9E
    db $E3                                        ; $5896: $E3
    ld a, [bc]                                    ; $5897: $0A
    rst RST_20                                    ; $5898: $E7
    cp [hl]                                       ; $5899: $BE
    rst RST_08                                    ; $589A: $CF
    ld a, [hl]                                    ; $589B: $7E
    rrca                                          ; $589C: $0F
    sbc e                                         ; $589D: $9B
    sbc $3F                                       ; $589E: $DE $3F
    or $70                                        ; $58A0: $F6 $70
    add b                                         ; $58A2: $80
    ld a, b                                       ; $58A3: $78
    jr c, jr_005_58D5                             ; $58A4: $38 $2F

    ld sp, hl                                     ; $58A6: $F9
    inc a                                         ; $58A7: $3C
    jr jr_005_58E8                                ; $58A8: $18 $3E

    ld [$4878], sp                                ; $58AA: $08 $78 $48
    sbc b                                         ; $58AD: $98
    jp c, $890A                                   ; $58AE: $DA $0A $89

    adc $08                                       ; $58B1: $CE $08
    ld d, b                                       ; $58B3: $50
    nop                                           ; $58B4: $00
    add hl, bc                                    ; $58B5: $09
    ei                                            ; $58B6: $FB

jr_005_58B7:
    ld h, l                                       ; $58B7: $65
    rlca                                          ; $58B8: $07
    and b                                         ; $58B9: $A0
    ld [$03FC], sp                                ; $58BA: $08 $FC $03
    ld a, b                                       ; $58BD: $78
    ld a, c                                       ; $58BE: $79
    adc c                                         ; $58BF: $89
    ld d, b                                       ; $58C0: $50
    rst RST_18                                    ; $58C1: $DF
    ld a, b                                       ; $58C2: $78
    rst RST_08                                    ; $58C3: $CF
    ld [$1FEF], sp                                ; $58C4: $08 $EF $1F
    rst RST_30                                    ; $58C7: $F7
    rrca                                          ; $58C8: $0F
    sub a                                         ; $58C9: $97
    adc b                                         ; $58CA: $88
    cp a                                          ; $58CB: $BF
    call c, Call_000_2FB0                         ; $58CC: $DC $B0 $2F
    ld [$E290], sp                                ; $58CF: $08 $90 $E2
    ld l, l                                       ; $58D2: $6D
    inc e                                         ; $58D3: $1C
    ld d, b                                       ; $58D4: $50

jr_005_58D5:
    add hl, bc                                    ; $58D5: $09
    jr nc, jr_005_5900                            ; $58D6: $30 $28

    dec c                                         ; $58D8: $0D
    jr nz, jr_005_58E3                            ; $58D9: $20 $08

    ld d, l                                       ; $58DB: $55
    ld h, c                                       ; $58DC: $61
    ld a, [bc]                                    ; $58DD: $0A
    ld b, e                                       ; $58DE: $43
    ld a, [bc]                                    ; $58DF: $0A
    rlca                                          ; $58E0: $07
    ld a, [bc]                                    ; $58E1: $0A
    rrca                                          ; $58E2: $0F

jr_005_58E3:
    add hl, bc                                    ; $58E3: $09
    dec de                                        ; $58E4: $1B
    cp $1F                                        ; $58E5: $FE $1F
    db $FC                                        ; $58E7: $FC

jr_005_58E8:
    ld [$3F18], sp                                ; $58E8: $08 $18 $3F
    jr jr_005_58F6                                ; $58EB: $18 $09

    dec [hl]                                      ; $58ED: $35
    ld a, a                                       ; $58EE: $7F
    ld hl, sp+$09                                 ; $58EF: $F8 $09
    ld [hl], b                                    ; $58F1: $70
    ldh a, [$FF0A]                                ; $58F2: $F0 $0A
    ldh [$FF0A], a                                ; $58F4: $E0 $0A

jr_005_58F6:
    ld d, h                                       ; $58F6: $54
    ret nz                                        ; $58F7: $C0

    ld [$0A80], sp                                ; $58F8: $08 $80 $0A
    nop                                           ; $58FB: $00
    dec c                                         ; $58FC: $0D
    pop af                                        ; $58FD: $F1
    rrca                                          ; $58FE: $0F
    dec b                                         ; $58FF: $05

jr_005_5900:
    pop hl                                        ; $5900: $E1
    rra                                           ; $5901: $1F
    jp $873F                                      ; $5902: $C3 $3F $87


    ldh a, [rTAC]                                 ; $5905: $F0 $07
    ld d, b                                       ; $5907: $50
    db $EB                                        ; $5908: $EB
    ld b, b                                       ; $5909: $40
    ld a, [bc]                                    ; $590A: $0A
    ld d, b                                       ; $590B: $50
    cp $00                                        ; $590C: $FE $00
    ld bc, $BB09                                  ; $590E: $01 $09 $BB
    ld d, a                                       ; $5911: $57
    ldh a, [c]                                    ; $5912: $F2
    ld h, b                                       ; $5913: $60
    push af                                       ; $5914: $F5
    ld [$1AF6], sp                                ; $5915: $08 $F6 $1A
    ld c, b                                       ; $5918: $48
    nop                                           ; $5919: $00
    ld b, c                                       ; $591A: $41
    cp e                                          ; $591B: $BB
    ld [$FB3D], sp                                ; $591C: $08 $3D $FB
    sub l                                         ; $591F: $95
    ld a, e                                       ; $5920: $7B
    ld h, h                                       ; $5921: $64
    jr nc, jr_005_5926                            ; $5922: $30 $02

    ld d, [hl]                                    ; $5924: $56
    cp c                                          ; $5925: $B9

jr_005_5926:
    daa                                           ; $5926: $27
    ld hl, sp+$57                                 ; $5927: $F8 $57
    cp a                                          ; $5929: $BF
    nop                                           ; $592A: $00
    ret nz                                        ; $592B: $C0

    and b                                         ; $592C: $A0
    add hl, bc                                    ; $592D: $09
    ccf                                           ; $592E: $3F
    ld [$A05F], sp                                ; $592F: $08 $5F $A0
    rst RST_18                                    ; $5932: $DF
    jr nz, jr_005_59B4                            ; $5933: $20 $7F

    jr jr_005_58B7                                ; $5935: $18 $80

    rst RST_28                                    ; $5937: $EF
    ret nc                                        ; $5938: $D0

    ret nc                                        ; $5939: $D0

    ld c, b                                       ; $593A: $48
    cp $0F                                        ; $593B: $FE $0F
    db $F4                                        ; $593D: $F4
    cp c                                          ; $593E: $B9
    ld [$1AFD], sp                                ; $593F: $08 $FD $1A
    ret nc                                        ; $5942: $D0

    ld a, [de]                                    ; $5943: $1A
    ld a, [$7805]                                 ; $5944: $FA $05 $78
    ld [hl+], a                                   ; $5947: $22
    nop                                           ; $5948: $00
    cp d                                          ; $5949: $BA
    db $10                                        ; $594A: $10
    xor [hl]                                      ; $594B: $AE
    ei                                            ; $594C: $FB
    and [hl]                                      ; $594D: $A6
    ld [$8024], sp                                ; $594E: $08 $24 $80
    ld [$F926], sp                                ; $5951: $08 $26 $F9
    adc l                                         ; $5954: $8D
    ld [hl], d                                    ; $5955: $72
    add $39                                       ; $5956: $C6 $39
    ld [de], a                                    ; $5958: $12
    inc bc                                        ; $5959: $03
    db $ED                                        ; $595A: $ED
    rst RST_08                                    ; $595B: $CF
    ccf                                           ; $595C: $3F
    rst RST_28                                    ; $595D: $EF
    rra                                           ; $595E: $1F
    rst RST_30                                    ; $595F: $F7
    ret z                                         ; $5960: $C8

jr_005_5961:
    ld [hl], b                                    ; $5961: $70
    xor b                                         ; $5962: $A8
    jr z, @-$22                                   ; $5963: $28 $DC

    ld a, [hl-]                                   ; $5965: $3A
    di                                            ; $5966: $F3
    jr c, jr_005_5961                             ; $5967: $38 $F8

    rlca                                          ; $5969: $07
    add b                                         ; $596A: $80
    xor e                                         ; $596B: $AB
    ld hl, sp-$40                                 ; $596C: $F8 $C0
    ld [$08E0], sp                                ; $596E: $08 $E0 $08
    ldh a, [$FF08]                                ; $5971: $F0 $08
    ld c, b                                       ; $5973: $48
    xor e                                         ; $5974: $AB
    ld [$083C], sp                                ; $5975: $08 $3C $08
    adc d                                         ; $5978: $8A
    ld [$0801], sp                                ; $5979: $08 $01 $08
    nop                                           ; $597C: $00
    ld c, [hl]                                    ; $597D: $4E
    nop                                           ; $597E: $00
    add hl, bc                                    ; $597F: $09
    ld d, l                                       ; $5980: $55
    xor d                                         ; $5981: $AA
    ld [hl+], a                                   ; $5982: $22
    ld c, $7F                                     ; $5983: $0E $7F
    add b                                         ; $5985: $80
    and c                                         ; $5986: $A1
    ld [$7C08], sp                                ; $5987: $08 $08 $7C
    rra                                           ; $598A: $1F
    db $FC                                        ; $598B: $FC
    ccf                                           ; $598C: $3F
    ld hl, sp+$08                                 ; $598D: $F8 $08
    inc l                                         ; $598F: $2C
    ldh a, [$FF7F]                                ; $5990: $F0 $7F
    add hl, bc                                    ; $5992: $09
    ldh [$FF50], a                                ; $5993: $E0 $50
    ld [$D0AF], sp                                ; $5995: $08 $AF $D0
    ld [bc], a                                    ; $5998: $02
    ld d, a                                       ; $5999: $57
    xor b                                         ; $599A: $A8
    rst RST_30                                    ; $599B: $F7
    adc h                                         ; $599C: $8C
    ld [hl], a                                    ; $599D: $77
    call z, $EC08                                 ; $599E: $CC $08 $EC
    dec [hl]                                      ; $59A1: $35
    or a                                          ; $59A2: $B7
    ld a, l                                       ; $59A3: $7D
    ld [$C680], sp                                ; $59A4: $08 $80 $C6
    or b                                          ; $59A7: $B0
    ld c, a                                       ; $59A8: $4F
    ret c                                         ; $59A9: $D8

    ld [bc], a                                    ; $59AA: $02
    and e                                         ; $59AB: $A3
    ld e, h                                       ; $59AC: $5C
    and a                                         ; $59AD: $A7
    ret c                                         ; $59AE: $D8

    scf                                           ; $59AF: $37
    ret z                                         ; $59B0: $C8

    cp b                                          ; $59B1: $B8
    ld d, b                                       ; $59B2: $50

jr_005_59B3:
    ld h, d                                       ; $59B3: $62

jr_005_59B4:
    daa                                           ; $59B4: $27
    jr z, jr_005_59EF                             ; $59B5: $28 $38

    ld e, b                                       ; $59B7: $58
    ld l, a                                       ; $59B8: $6F
    sub b                                         ; $59B9: $90
    add hl, sp                                    ; $59BA: $39
    rst RST_38                                    ; $59BB: $FF
    ld [hl+], a                                   ; $59BC: $22
    nop                                           ; $59BD: $00
    call Call_005_7A70                            ; $59BE: $CD $70 $7A
    sub a                                         ; $59C1: $97
    db $DD                                        ; $59C2: $DD
    ld [hl], b                                    ; $59C3: $70
    ld [$1700], a                                 ; $59C4: $EA $00 $17
    ld hl, sp+$07                                 ; $59C7: $F8 $07
    db $EC                                        ; $59C9: $EC
    inc de                                        ; $59CA: $13
    db $FD                                        ; $59CB: $FD
    ld [bc], a                                    ; $59CC: $02
    cp $08                                        ; $59CD: $FE $08
    ld bc, $DE2D                                  ; $59CF: $01 $2D $DE
    add hl, hl                                    ; $59D2: $29
    ld [$9C63], sp                                ; $59D3: $08 $63 $9C
    dec sp                                        ; $59D6: $3B
    nop                                           ; $59D7: $00
    call z, $8C73                                 ; $59D8: $CC $73 $8C
    or a                                          ; $59DB: $B7
    ld c, b                                       ; $59DC: $48
    ld a, e                                       ; $59DD: $7B
    add h                                         ; $59DE: $84
    rst RST_30                                    ; $59DF: $F7
    dec d                                         ; $59E0: $15
    ld [$FF00], sp                                ; $59E1: $08 $00 $FF
    add hl, bc                                    ; $59E4: $09
    jr nz, jr_005_59EF                            ; $59E5: $20 $08

    ld b, $2A                                     ; $59E7: $06 $2A
    ld l, l                                       ; $59E9: $6D
    ld e, c                                       ; $59EA: $59
    ld a, [de]                                    ; $59EB: $1A
    dec c                                         ; $59EC: $0D
    inc hl                                        ; $59ED: $23
    ld c, a                                       ; $59EE: $4F

jr_005_59EF:
    inc c                                         ; $59EF: $0C
    rst RST_28                                    ; $59F0: $EF
    ld [$B555], sp                                ; $59F1: $08 $55 $B5
    ld [$08FD], sp                                ; $59F4: $08 $FD $08
    ld l, d                                       ; $59F7: $6A
    ld [$08CB], sp                                ; $59F8: $08 $CB $08
    ld e, l                                       ; $59FB: $5D
    xor $08                                       ; $59FC: $EE $08
    add hl, sp                                    ; $59FE: $39
    xor a                                         ; $59FF: $AF
    rrca                                          ; $5A00: $0F
    ld [$08DE], sp                                ; $5A01: $08 $DE $08
    ld d, l                                       ; $5A04: $55
    db $EB                                        ; $5A05: $EB
    ld [$0817], sp                                ; $5A06: $08 $17 $08
    ld e, c                                       ; $5A09: $59
    ld [$08B4], sp                                ; $5A0A: $08 $B4 $08
    ld d, b                                       ; $5A0D: $50
    ld b, d                                       ; $5A0E: $42
    ld [$7A15], sp                                ; $5A0F: $08 $15 $7A
    nop                                           ; $5A12: $00
    ld c, b                                       ; $5A13: $48
    ld b, b                                       ; $5A14: $40
    ld l, [hl]                                    ; $5A15: $6E
    nop                                           ; $5A16: $00
    rlca                                          ; $5A17: $07
    ld b, $FF                                     ; $5A18: $06 $FF
    rrca                                          ; $5A1A: $0F
    rrca                                          ; $5A1B: $0F
    ld [$43FD], sp                                ; $5A1C: $08 $FD $43
    ld b, $2B                                     ; $5A1F: $06 $2B
    rst RST_18                                    ; $5A21: $DF
    ld h, b                                       ; $5A22: $60
    cp e                                          ; $5A23: $BB
    ld b, h                                       ; $5A24: $44
    adc a                                         ; $5A25: $8F
    dec bc                                        ; $5A26: $0B
    inc l                                         ; $5A27: $2C
    rst RST_28                                    ; $5A28: $EF
    jr nc, jr_005_59B3                            ; $5A29: $30 $88

    jr nz, jr_005_5A8C                            ; $5A2B: $20 $5F

    dec bc                                        ; $5A2D: $0B
    db $FC                                        ; $5A2E: $FC
    inc bc                                        ; $5A2F: $03
    ld [bc], a                                    ; $5A30: $02
    ld sp, hl                                     ; $5A31: $F9
    rlca                                          ; $5A32: $07
    ldh a, [c]                                    ; $5A33: $F2
    rrca                                          ; $5A34: $0F
    rst RST_20                                    ; $5A35: $E7
    rra                                           ; $5A36: $1F
    add hl, hl                                    ; $5A37: $29
    and $8B                                       ; $5A38: $E6 $8B
    jr @-$65                                      ; $5A3A: $18 $99

    ld a, a                                       ; $5A3C: $7F
    scf                                           ; $5A3D: $37
    add b                                         ; $5A3E: $80
    adc a                                         ; $5A3F: $8F
    ld [$BD30], sp                                ; $5A40: $08 $30 $BD
    ld [$08BF], sp                                ; $5A43: $08 $BF $08
    ld b, b                                       ; $5A46: $40
    ld [$F8FF], sp                                ; $5A47: $08 $FF $F8
    cp b                                          ; $5A4A: $B8
    cp e                                          ; $5A4B: $BB
    reti                                          ; $5A4C: $D9


    sbc a                                         ; $5A4D: $9F
    ld [hl], b                                    ; $5A4E: $70
    ld a, l                                       ; $5A4F: $7D
    ld e, c                                       ; $5A50: $59
    add e                                         ; $5A51: $83
    ld c, e                                       ; $5A52: $4B
    rlca                                          ; $5A53: $07
    db $FC                                        ; $5A54: $FC
    rlca                                          ; $5A55: $07
    dec b                                         ; $5A56: $05
    ld a, [$0711]                                 ; $5A57: $FA $11 $07
    ld a, l                                       ; $5A5A: $7D
    ccf                                           ; $5A5B: $3F
    ret nz                                        ; $5A5C: $C0

    inc e                                         ; $5A5D: $1C
    add c                                         ; $5A5E: $81
    cp $FC                                        ; $5A5F: $FE $FC
    ld a, a                                       ; $5A61: $7F
    ld a, d                                       ; $5A62: $7A
    sbc l                                         ; $5A63: $9D
    rst RST_08                                    ; $5A64: $CF
    ldh a, [$FF71]                                ; $5A65: $F0 $71
    di                                            ; $5A67: $F3
    and b                                         ; $5A68: $A0
    xor c                                         ; $5A69: $A9
    add hl, sp                                    ; $5A6A: $39
    rst RST_00                                    ; $5A6B: $C7
    ld hl, sp-$0F                                 ; $5A6C: $F8 $F1
    ld [$10E4], a                                 ; $5A6E: $EA $E4 $10
    rst RST_38                                    ; $5A71: $FF
    cp $7F                                        ; $5A72: $FE $7F
    add b                                         ; $5A74: $80
    ret                                           ; $5A75: $C9


    sbc a                                         ; $5A76: $9F
    ldh [$FF30], a                                ; $5A77: $E0 $30
    rst RST_08                                    ; $5A79: $CF
    ldh a, [$FF6D]                                ; $5A7A: $F0 $6D
    add sp, $01                                   ; $5A7C: $E8 $01
    db $FC                                        ; $5A7E: $FC
    inc bc                                        ; $5A7F: $03
    ld sp, hl                                     ; $5A80: $F9
    inc b                                         ; $5A81: $04
    rlca                                          ; $5A82: $07
    ldh a, [c]                                    ; $5A83: $F2
    rrca                                          ; $5A84: $0F
    ldh [c], a                                    ; $5A85: $E2
    rra                                           ; $5A86: $1F
    ld l, e                                       ; $5A87: $6B
    cp a                                          ; $5A88: $BF
    ld b, b                                       ; $5A89: $40
    or c                                          ; $5A8A: $B1
    ld a, [hl+]                                   ; $5A8B: $2A

jr_005_5A8C:
    db $10                                        ; $5A8C: $10
    xor e                                         ; $5A8D: $AB
    add hl, bc                                    ; $5A8E: $09
    push bc                                       ; $5A8F: $C5
    ccf                                           ; $5A90: $3F
    jp z, Jump_000_1608                           ; $5A91: $CA $08 $16

    sub c                                         ; $5A94: $91
    ld a, a                                       ; $5A95: $7F
    sub d                                         ; $5A96: $92
    ld [$7021], sp                                ; $5A97: $08 $21 $70
    add hl, bc                                    ; $5A9A: $09
    ld b, d                                       ; $5A9B: $42
    xor e                                         ; $5A9C: $AB
    ld [$0845], sp                                ; $5A9D: $08 $45 $08
    rst RST_08                                    ; $5AA0: $CF
    ld l, b                                       ; $5AA1: $68
    sbc a                                         ; $5AA2: $9F
    ld e, b                                       ; $5AA3: $58
    db $10                                        ; $5AA4: $10
    xor d                                         ; $5AA5: $AA
    jr z, jr_005_5B07                             ; $5AA6: $28 $5F

    ld [$08BF], sp                                ; $5AA8: $08 $BF $08
    cpl                                           ; $5AAB: $2F
    ld [$EA57], sp                                ; $5AAC: $08 $57 $EA
    ld [$0349], sp                                ; $5AAF: $08 $49 $03
    ld a, [$FC08]                                 ; $5AB2: $FA $08 $FC
    ld a, [hl+]                                   ; $5AB5: $2A
    cp $AA                                        ; $5AB6: $FE $AA
    ld [$08D5], sp                                ; $5AB8: $08 $D5 $08
    xor d                                         ; $5ABB: $AA
    ld [$08F8], sp                                ; $5ABC: $08 $F8 $08
    db $F4                                        ; $5ABF: $F4
    xor d                                         ; $5AC0: $AA
    ld a, [de]                                    ; $5AC1: $1A
    ld d, h                                       ; $5AC2: $54
    ld [$08A8], sp                                ; $5AC3: $08 $A8 $08
    ld d, c                                       ; $5AC6: $51
    ld [$AA00], sp                                ; $5AC7: $08 $00 $AA
    ld a, [bc]                                    ; $5ACA: $0A
    ld b, b                                       ; $5ACB: $40
    ld [$08E0], sp                                ; $5ACC: $08 $E0 $08
    ret nz                                        ; $5ACF: $C0

    ld [$AA80], sp                                ; $5AD0: $08 $80 $AA
    ld [$0804], sp                                ; $5AD3: $08 $04 $08
    ld a, [bc]                                    ; $5AD6: $0A
    ld [$0857], sp                                ; $5AD7: $08 $57 $08
    xor a                                         ; $5ADA: $AF
    xor d                                         ; $5ADB: $AA
    ld [$9A14], sp                                ; $5ADC: $08 $14 $9A
    jr z, @+$0A                                   ; $5ADF: $28 $08

    dec d                                         ; $5AE1: $15
    ld l, d                                       ; $5AE2: $6A
    ld bc, $1CAA                                  ; $5AE3: $01 $AA $1C
    cp a                                          ; $5AE6: $BF
    ld [$085F], sp                                ; $5AE7: $08 $5F $08
    cpl                                           ; $5AEA: $2F
    ld a, [de]                                    ; $5AEB: $1A
    dec hl                                        ; $5AEC: $2B
    xor [hl]                                      ; $5AED: $AE
    ld [$6A17], sp                                ; $5AEE: $08 $17 $6A
    ld [bc], a                                    ; $5AF1: $02
    ld [$0107], sp                                ; $5AF2: $08 $07 $01
    db $FD                                        ; $5AF5: $FD
    xor d                                         ; $5AF6: $AA
    ld [$0856], sp                                ; $5AF7: $08 $56 $08
    xor b                                         ; $5AFA: $A8
    ld [$0C00], sp                                ; $5AFB: $08 $00 $0C
    ld b, b                                       ; $5AFE: $40
    xor e                                         ; $5AFF: $AB
    ld c, d                                       ; $5B00: $4A
    ld d, l                                       ; $5B01: $55
    ld [$083F], sp                                ; $5B02: $08 $3F $08
    ld a, a                                       ; $5B05: $7F
    ld a, [hl]                                    ; $5B06: $7E

jr_005_5B07:
    dec c                                         ; $5B07: $0D
    ld e, l                                       ; $5B08: $5D
    ld d, b                                       ; $5B09: $50
    ld [$08A0], sp                                ; $5B0A: $08 $A0 $08
    rlca                                          ; $5B0D: $07
    inc bc                                        ; $5B0E: $03
    cp a                                          ; $5B0F: $BF
    ld [$475A], sp                                ; $5B10: $08 $5A $47
    ld [$EF03], sp                                ; $5B13: $08 $03 $EF
    ld a, [bc]                                    ; $5B16: $0A
    ld bc, $AB1A                                  ; $5B17: $01 $1A $AB
    xor d                                         ; $5B1A: $AA
    ld [$0805], sp                                ; $5B1B: $08 $05 $08
    ld c, d                                       ; $5B1E: $4A
    ld [$0881], sp                                ; $5B1F: $08 $81 $08
    ld [bc], a                                    ; $5B22: $02

jr_005_5B23:
    and b                                         ; $5B23: $A0
    ld [$9C80], sp                                ; $5B24: $08 $80 $9C
    rst RST_20                                    ; $5B27: $E7
    ld hl, sp-$0D                                 ; $5B28: $F8 $F3

jr_005_5B2A:
    db $FC                                        ; $5B2A: $FC
    ld sp, hl                                     ; $5B2B: $F9
    dec hl                                        ; $5B2C: $2B
    cp $E4                                        ; $5B2D: $FE $E4
    jr c, jr_005_5B23                             ; $5B2F: $38 $F2

    ld [$08F5], sp                                ; $5B31: $08 $F5 $08
    jr nc, jr_005_5B2A                            ; $5B34: $30 $F4

    ld [$A302], sp                                ; $5B36: $08 $02 $A3
    ld a, [bc]                                    ; $5B39: $0A
    ld a, a                                       ; $5B3A: $7F
    ldh a, [$FF3F]                                ; $5B3B: $F0 $3F
    ret nz                                        ; $5B3D: $C0

    dec d                                         ; $5B3E: $15
    sbc a                                         ; $5B3F: $9F
    ldh [$FF5F], a                                ; $5B40: $E0 $5F
    ld [$50F0], sp                                ; $5B42: $08 $F0 $50
    ld a, [$5E08]                                 ; $5B45: $FA $08 $5E
    db $FC                                        ; $5B48: $FC
    ld [$CBFB], sp                                ; $5B49: $08 $FB $CB
    nop                                           ; $5B4C: $00
    sbc b                                         ; $5B4D: $98
    ld [$A53E], sp                                ; $5B4E: $08 $3E $A5
    ld [$804F], sp                                ; $5B51: $08 $4F $80
    and a                                         ; $5B54: $A7
    ld hl, sp+$09                                 ; $5B55: $F8 $09
    sub e                                         ; $5B57: $93
    sub b                                         ; $5B58: $90
    sub l                                         ; $5B59: $95
    add hl, bc                                    ; $5B5A: $09
    ret                                           ; $5B5B: $C9


    cp $09                                        ; $5B5C: $FE $09
    db $E4                                        ; $5B5E: $E4
    reti                                          ; $5B5F: $D9


    inc bc                                        ; $5B60: $03
    add hl, bc                                    ; $5B61: $09
    ld h, $F9                                     ; $5B62: $26 $F9
    rlca                                          ; $5B64: $07
    add hl, bc                                    ; $5B65: $09
    ldh a, [c]                                    ; $5B66: $F2
    rrca                                          ; $5B67: $0F
    dec bc                                        ; $5B68: $0B
    ld a, b                                       ; $5B69: $78
    rra                                           ; $5B6A: $1F
    sub d                                         ; $5B6B: $92
    dec bc                                        ; $5B6C: $0B
    ret z                                         ; $5B6D: $C8

    ccf                                           ; $5B6E: $3F
    dec bc                                        ; $5B6F: $0B
    sub b                                         ; $5B70: $90
    ld a, a                                       ; $5B71: $7F
    dec bc                                        ; $5B72: $0B
    pop hl                                        ; $5B73: $E1
    dec hl                                        ; $5B74: $2B
    rst RST_38                                    ; $5B75: $FF
    jp $AB08                                      ; $5B76: $C3 $08 $AB


    ld [$08D7], sp                                ; $5B79: $08 $D7 $08
    dec b                                         ; $5B7C: $05
    push de                                       ; $5B7D: $D5
    ccf                                           ; $5B7E: $3F
    inc bc                                        ; $5B7F: $03
    ld a, [$F408]                                 ; $5B80: $FA $08 $F4
    ld a, [de]                                    ; $5B83: $1A
    ld e, h                                       ; $5B84: $5C
    ld [$2A55], sp                                ; $5B85: $08 $55 $2A
    ld [$081C], sp                                ; $5B88: $08 $1C $08
    jr z, jr_005_5B95                             ; $5B8B: $28 $08

    db $10                                        ; $5B8D: $10
    ld [$4855], sp                                ; $5B8E: $08 $55 $48
    ld [$08A0], sp                                ; $5B91: $08 $A0 $08
    ld b, b                                       ; $5B94: $40

jr_005_5B95:
    ld [$0F00], sp                                ; $5B95: $08 $00 $0F
    xor d                                         ; $5B98: $AA
    ld c, $0F                                     ; $5B99: $0E $0F
    ld [$1A17], sp                                ; $5B9B: $08 $17 $1A
    dec d                                         ; $5B9E: $15
    ld [$AA0A], sp                                ; $5B9F: $08 $0A $AA
    ld [$0805], sp                                ; $5BA2: $08 $05 $08
    db $10                                        ; $5BA5: $10
    ld [$080C], sp                                ; $5BA6: $08 $0C $08
    db $E4                                        ; $5BA9: $E4
    xor d                                         ; $5BAA: $AA
    ld [$08A2], sp                                ; $5BAB: $08 $A2 $08
    jp nz, $8108                                  ; $5BAE: $C2 $08 $81

    ld [$B6C1], sp                                ; $5BB1: $08 $C1 $B6
    ld a, [de]                                    ; $5BB4: $1A
    add b                                         ; $5BB5: $80
    ld a, [$7F11]                                 ; $5BB6: $FA $11 $7F
    jr nc, @+$0B                                  ; $5BB9: $30 $09

    ccf                                           ; $5BBB: $3F
    ld c, b                                       ; $5BBC: $48
    ret nz                                        ; $5BBD: $C0

    dec bc                                        ; $5BBE: $0B
    sbc a                                         ; $5BBF: $9F
    ldh [$FF09], a                                ; $5BC0: $E0 $09
    adc a                                         ; $5BC2: $8F
    ldh a, [rVBK]                                 ; $5BC3: $F0 $4F
    sub e                                         ; $5BC5: $93
    ld a, [bc]                                    ; $5BC6: $0A
    daa                                           ; $5BC7: $27
    ld hl, sp+$0B                                 ; $5BC8: $F8 $0B
    inc de                                        ; $5BCA: $13
    db $FC                                        ; $5BCB: $FC
    add hl, bc                                    ; $5BCC: $09
    ld hl, sp-$08                                 ; $5BCD: $F8 $F8
    ret c                                         ; $5BCF: $D8

    ld [$08B8], sp                                ; $5BD0: $08 $B8 $08
    xor b                                         ; $5BD3: $A8
    ld a, [hl]                                    ; $5BD4: $7E
    pop af                                        ; $5BD5: $F1
    ld a, h                                       ; $5BD6: $7C
    add hl, hl                                    ; $5BD7: $29
    ei                                            ; $5BD8: $FB
    and b                                         ; $5BD9: $A0
    jr nc, jr_005_5BDC                            ; $5BDA: $30 $00

jr_005_5BDC:
    ld [$AA55], sp                                ; $5BDC: $08 $55 $AA
    ld [hl+], a                                   ; $5BDF: $22
    push de                                       ; $5BE0: $D5
    add hl, bc                                    ; $5BE1: $09
    sbc d                                         ; $5BE2: $9A
    ld a, a                                       ; $5BE3: $7F
    sbc b                                         ; $5BE4: $98
    cp a                                          ; $5BE5: $BF
    ld hl, sp+$01                                 ; $5BE6: $F8 $01
    ld a, a                                       ; $5BE8: $7F
    jp z, $AA0D                                   ; $5BE9: $CA $0D $AA

    ld d, [hl]                                    ; $5BEC: $56
    xor c                                         ; $5BED: $A9
    ld e, [hl]                                    ; $5BEE: $5E
    jr nz, jr_005_5BF9                            ; $5BEF: $20 $08

    ld h, b                                       ; $5BF1: $60
    adc e                                         ; $5BF2: $8B
    ld hl, sp+$70                                 ; $5BF3: $F8 $70
    ld d, $F9                                     ; $5BF5: $16 $F9
    ldh a, [rHDMA5]                               ; $5BF7: $F0 $55

jr_005_5BF9:
    rst RST_28                                    ; $5BF9: $EF
    ld [$4000], sp                                ; $5BFA: $08 $00 $40
    ld a, a                                       ; $5BFD: $7F
    ldh [$FF3F], a                                ; $5BFE: $E0 $3F
    ldh a, [$FFAB]                                ; $5C00: $F0 $AB
    ld d, h                                       ; $5C02: $54
    and b                                         ; $5C03: $A0
    ld hl, sp+$30                                 ; $5C04: $F8 $30
    pop de                                        ; $5C06: $D1
    dec bc                                        ; $5C07: $0B
    add c                                         ; $5C08: $81
    rra                                           ; $5C09: $1F
    add d                                         ; $5C0A: $82
    ld a, l                                       ; $5C0B: $7D
    ld d, b                                       ; $5C0C: $50
    ld bc, $A2AF                                  ; $5C0D: $01 $AF $A2
    ld e, l                                       ; $5C10: $5D
    push af                                       ; $5C11: $F5
    ld a, [bc]                                    ; $5C12: $0A
    rst RST_28                                    ; $5C13: $EF
    db $10                                        ; $5C14: $10
    ld h, d                                       ; $5C15: $62
    sub b                                         ; $5C16: $90
    ld [$BF40], sp                                ; $5C17: $08 $40 $BF
    ld e, c                                       ; $5C1A: $59
    ld d, a                                       ; $5C1B: $57
    xor b                                         ; $5C1C: $A8
    cp e                                          ; $5C1D: $BB
    ld b, h                                       ; $5C1E: $44
    ld h, d                                       ; $5C1F: $62
    rst RST_18                                    ; $5C20: $DF
    db $D3                                        ; $5C21: $D3
    ld a, [bc]                                    ; $5C22: $0A
    inc de                                        ; $5C23: $13
    db $FC                                        ; $5C24: $FC
    dec bc                                        ; $5C25: $0B
    ld [$5F09], sp                                ; $5C26: $08 $09 $5F
    cp $09                                        ; $5C29: $FE $09
    ld bc, $AD1E                                  ; $5C2B: $01 $1E $AD
    inc c                                         ; $5C2E: $0C
    ld [hl], b                                    ; $5C2F: $70
    ld [$0318], sp                                ; $5C30: $08 $18 $03
    push af                                       ; $5C33: $F5
    ld a, [bc]                                    ; $5C34: $0A
    ld c, a                                       ; $5C35: $4F
    ret nz                                        ; $5C36: $C0

    rlca                                          ; $5C37: $07
    db $FD                                        ; $5C38: $FD
    rra                                           ; $5C39: $1F
    sbc h                                         ; $5C3A: $9C
    ld b, c                                       ; $5C3B: $41
    ld d, l                                       ; $5C3C: $55
    xor d                                         ; $5C3D: $AA
    ld e, e                                       ; $5C3E: $5B
    ld [$7E58], sp                                ; $5C3F: $08 $58 $7E
    adc a                                         ; $5C42: $8F
    rra                                           ; $5C43: $1F
    ld a, $DF                                     ; $5C44: $3E $DF
    dec b                                         ; $5C46: $05
    jp nz, Jump_000_207A                          ; $5C47: $C2 $7A $20

    add hl, de                                    ; $5C4A: $19
    nop                                           ; $5C4B: $00
    push de                                       ; $5C4C: $D5
    db $10                                        ; $5C4D: $10
    ld c, c                                       ; $5C4E: $49
    ld [bc], a                                    ; $5C4F: $02
    ld [$08C8], sp                                ; $5C50: $08 $C8 $08
    ld de, $7508                                  ; $5C53: $11 $08 $75
    ld c, d                                       ; $5C56: $4A
    ld [$097F], sp                                ; $5C57: $08 $7F $09
    dec d                                         ; $5C5A: $15
    ld [$0842], sp                                ; $5C5B: $08 $42 $08
    ld d, l                                       ; $5C5E: $55
    or h                                          ; $5C5F: $B4
    ld [$0895], sp                                ; $5C60: $08 $95 $08
    or l                                          ; $5C63: $B5
    ld [$08EF], sp                                ; $5C64: $08 $EF $08
    ld d, l                                       ; $5C67: $55
    cp l                                          ; $5C68: $BD
    ld [$0839], sp                                ; $5C69: $08 $39 $08
    xor $08                                       ; $5C6C: $EE $08
    rrc b                                         ; $5C6E: $CB $08
    ld d, l                                       ; $5C70: $55
    ld l, d                                       ; $5C71: $6A
    ld [$08DA], sp                                ; $5C72: $08 $DA $08
    daa                                           ; $5C75: $27
    adc d                                         ; $5C76: $8A
    ld e, e                                       ; $5C77: $5B
    ld [$5355], sp                                ; $5C78: $08 $55 $53
    ld [$08FE], sp                                ; $5C7B: $08 $FE $08
    adc a                                         ; $5C7E: $8F
    ld [$08BB], sp                                ; $5C7F: $08 $BB $08
    ld e, e                                       ; $5C82: $5B
    db $FD                                        ; $5C83: $FD
    cp $7F                                        ; $5C84: $FE $7F
    ld a, [$6F01]                                 ; $5C86: $FA $01 $6F
    ld a, [de]                                    ; $5C89: $1A
    db $FD                                        ; $5C8A: $FD
    halt                                          ; $5C8B: $76
    ld a, e                                       ; $5C8C: $7B
    ld a, [$FBB9]                                 ; $5C8D: $FA $B9 $FB
    or a                                          ; $5C90: $B7
    db $FC                                        ; $5C91: $FC
    ld bc, $D5DF                                  ; $5C92: $01 $DF $D5
    sbc d                                         ; $5C95: $9A
    inc bc                                        ; $5C96: $03
    ld h, a                                       ; $5C97: $67
    sbc d                                         ; $5C98: $9A
    db $DB                                        ; $5C99: $DB
    ld a, [hl-]                                   ; $5C9A: $3A
    cp a                                          ; $5C9B: $BF
    ld a, [de]                                    ; $5C9C: $1A
    ld a, h                                       ; $5C9D: $7C
    ei                                            ; $5C9E: $FB

jr_005_5C9F:
    jp c, $C9A9                                   ; $5C9F: $DA $A9 $C9

    rlca                                          ; $5CA2: $07
    ld bc, $3F00                                  ; $5CA3: $01 $00 $3F
    ld b, b                                       ; $5CA6: $40
    ld l, l                                       ; $5CA7: $6D
    nop                                           ; $5CA8: $00
    rlca                                          ; $5CA9: $07
    ld b, $FF                                     ; $5CAA: $06 $FF
    ld a, [bc]                                    ; $5CAC: $0A
    ld de, $0855                                  ; $5CAD: $11 $55 $08
    ld a, d                                       ; $5CB0: $7A
    xor d                                         ; $5CB1: $AA
    ld [$7F04], sp                                ; $5CB2: $08 $04 $7F
    ld [$59FE], sp                                ; $5CB5: $08 $FE $59
    add c                                         ; $5CB8: $81
    daa                                           ; $5CB9: $27
    db $DB                                        ; $5CBA: $DB
    inc a                                         ; $5CBB: $3C
    ld e, c                                       ; $5CBC: $59
    or e                                          ; $5CBD: $B3
    ld a, h                                       ; $5CBE: $7C
    rrca                                          ; $5CBF: $0F
    dec c                                         ; $5CC0: $0D
    ei                                            ; $5CC1: $FB
    sbc [hl]                                      ; $5CC2: $9E
    dec c                                         ; $5CC3: $0D
    xor d                                         ; $5CC4: $AA
    ld d, l                                       ; $5CC5: $55
    nop                                           ; $5CC6: $00
    db $10                                        ; $5CC7: $10
    ld sp, $B739                                  ; $5CC8: $31 $39 $B7
    inc a                                         ; $5CCB: $3C
    ld a, a                                       ; $5CCC: $7F
    and [hl]                                      ; $5CCD: $A6
    ld [$191F], sp                                ; $5CCE: $08 $1F $19
    ld a, c                                       ; $5CD1: $79
    inc de                                        ; $5CD2: $13
    db $EC                                        ; $5CD3: $EC
    cp a                                          ; $5CD4: $BF
    jr z, jr_005_5C9F                             ; $5CD5: $28 $C8

    rra                                           ; $5CD7: $1F
    add hl, de                                    ; $5CD8: $19
    cp a                                          ; $5CD9: $BF
    rra                                           ; $5CDA: $1F
    cp a                                          ; $5CDB: $BF
    rra                                           ; $5CDC: $1F
    ld [bc], a                                    ; $5CDD: $02
    pop de                                        ; $5CDE: $D1
    xor [hl]                                      ; $5CDF: $AE
    ei                                            ; $5CE0: $FB
    inc d                                         ; $5CE1: $14
    rst RST_38                                    ; $5CE2: $FF
    nop                                           ; $5CE3: $00
    ld [$0D42], sp                                ; $5CE4: $08 $42 $0D
    or $09                                        ; $5CE7: $F6 $09
    db $D3                                        ; $5CE9: $D3
    inc l                                         ; $5CEA: $2C
    ld c, h                                       ; $5CEB: $4C
    ld [$103F], sp                                ; $5CEC: $08 $3F $10
    add hl, bc                                    ; $5CEF: $09

jr_005_5CF0:
    rra                                           ; $5CF0: $1F
    rst RST_28                                    ; $5CF1: $EF
    cp a                                          ; $5CF2: $BF
    ld a, b                                       ; $5CF3: $78
    nop                                           ; $5CF4: $00
    add a                                         ; $5CF5: $87
    inc bc                                        ; $5CF6: $03
    jr c, jr_005_5CF0                             ; $5CF7: $38 $F7

    ld c, c                                       ; $5CF9: $49
    add hl, bc                                    ; $5CFA: $09
    adc d                                         ; $5CFB: $8A
    nop                                           ; $5CFC: $00
    rst RST_18                                    ; $5CFD: $DF
    ld a, b                                       ; $5CFE: $78
    db $10                                        ; $5CFF: $10
    ld a, d                                       ; $5D00: $7A
    halt                                          ; $5D01: $76
    add e                                         ; $5D02: $83
    ld b, c                                       ; $5D03: $41
    inc bc                                        ; $5D04: $03
    ld a, c                                       ; $5D05: $79
    ld a, [hl]                                    ; $5D06: $7E
    rra                                           ; $5D07: $1F
    dec de                                        ; $5D08: $1B
    ccf                                           ; $5D09: $3F
    add l                                         ; $5D0A: $85
    pop de                                        ; $5D0B: $D1
    rst RST_00                                    ; $5D0C: $C7
    ld l, c                                       ; $5D0D: $69
    rst RST_10                                    ; $5D0E: $D7
    ld a, e                                       ; $5D0F: $7B
    jr jr_005_5D59                                ; $5D10: $18 $47

    jr c, @+$58                                   ; $5D12: $38 $56

    ld h, a                                       ; $5D14: $67
    ld [$0877], sp                                ; $5D15: $08 $77 $08
    ld e, a                                       ; $5D18: $5F
    ld sp, hl                                     ; $5D19: $F9
    ld bc, $AA02                                  ; $5D1A: $01 $02 $AA
    ld a, [bc]                                    ; $5D1D: $0A
    di                                            ; $5D1E: $F3
    ld [$08E3], sp                                ; $5D1F: $08 $E3 $08
    add a                                         ; $5D22: $87
    ld [$808F], sp                                ; $5D23: $08 $8F $80
    ld h, c                                       ; $5D26: $61
    sub c                                         ; $5D27: $91
    ld l, [hl]                                    ; $5D28: $6E
    ei                                            ; $5D29: $FB
    sub l                                         ; $5D2A: $95
    rst RST_30                                    ; $5D2B: $F7
    ld [$01E7], sp                                ; $5D2C: $08 $E7 $01
    ld e, d                                       ; $5D2F: $5A
    or $09                                        ; $5D30: $F6 $09
    sbc c                                         ; $5D32: $99
    ld h, [hl]                                    ; $5D33: $66
    cp c                                          ; $5D34: $B9
    ld d, [hl]                                    ; $5D35: $56
    ld [hl], b                                    ; $5D36: $70
    ld d, l                                       ; $5D37: $55
    nop                                           ; $5D38: $00
    ld a, [$0807]                                 ; $5D39: $FA $07 $08
    inc b                                         ; $5D3C: $04
    ld [$08E4], sp                                ; $5D3D: $08 $E4 $08
    ld d, [hl]                                    ; $5D40: $56
    daa                                           ; $5D41: $27
    ld [$082F], sp                                ; $5D42: $08 $2F $08
    ld a, a                                       ; $5D45: $7F
    ld l, d                                       ; $5D46: $6A
    ld bc, $EB89                                  ; $5D47: $01 $89 $EB
    ld [$08D8], sp                                ; $5D4A: $08 $D8 $08
    jr c, jr_005_5D59                             ; $5D4D: $38 $0A

    add hl, sp                                    ; $5D4F: $39
    ld a, [bc]                                    ; $5D50: $0A
    inc bc                                        ; $5D51: $03
    rst RST_18                                    ; $5D52: $DF
    reti                                          ; $5D53: $D9


    add hl, bc                                    ; $5D54: $09
    inc h                                         ; $5D55: $24
    ld a, [bc]                                    ; $5D56: $0A
    ld c, e                                       ; $5D57: $4B
    rlca                                          ; $5D58: $07

jr_005_5D59:
    rlca                                          ; $5D59: $07

jr_005_5D5A:
    nop                                           ; $5D5A: $00
    ld b, c                                       ; $5D5B: $41
    db $FC                                        ; $5D5C: $FC
    ld [$C73A], sp                                ; $5D5D: $08 $3A $C7
    cp d                                          ; $5D60: $BA
    rst RST_10                                    ; $5D61: $D7
    ld a, [$5418]                                 ; $5D62: $FA $18 $54
    ldh [c], a                                    ; $5D65: $E2
    jr c, jr_005_5D5A                             ; $5D66: $38 $F2

    ld [$0AF6], sp                                ; $5D68: $08 $F6 $0A
    jp Jump_000_3E3C                              ; $5D6B: $C3 $3C $3E


    cp l                                          ; $5D6E: $BD
    ld a, [hl]                                    ; $5D6F: $7E
    nop                                           ; $5D70: $00
    jr z, jr_005_5D82                             ; $5D71: $28 $0F

    add hl, bc                                    ; $5D73: $09
    nop                                           ; $5D74: $00
    nop                                           ; $5D75: $00
    push de                                       ; $5D76: $D5
    add hl, bc                                    ; $5D77: $09
    ld de, $0815                                  ; $5D78: $11 $15 $08
    ld a, [hl+]                                   ; $5D7B: $2A
    ld [$0A3F], sp                                ; $5D7C: $08 $3F $0A
    or l                                          ; $5D7F: $B5
    ld e, c                                       ; $5D80: $59
    ld e, a                                       ; $5D81: $5F

jr_005_5D82:
    db $10                                        ; $5D82: $10
    add hl, bc                                    ; $5D83: $09
    ld c, a                                       ; $5D84: $4F
    ld a, [bc]                                    ; $5D85: $0A
    ld b, a                                       ; $5D86: $47
    ld a, [bc]                                    ; $5D87: $0A
    ld d, l                                       ; $5D88: $55
    ld b, e                                       ; $5D89: $43
    ld [$FB41], sp                                ; $5D8A: $08 $41 $FB
    ld bc, $E308                                  ; $5D8D: $01 $08 $E3
    ld [$C755], sp                                ; $5D90: $08 $55 $C7
    ld [$0883], sp                                ; $5D93: $08 $83 $08
    ld de, $3908                                  ; $5D96: $11 $08 $39
    ld [hl], c                                    ; $5D99: $71
    xor d                                         ; $5D9A: $AA
    nop                                           ; $5D9B: $00
    add b                                         ; $5D9C: $80
    ld [$0881], sp                                ; $5D9D: $08 $81 $08
    inc de                                        ; $5DA0: $13
    ld [$A903], sp                                ; $5DA1: $08 $03 $A9
    ld [$08E2], sp                                ; $5DA4: $08 $E2 $08
    add a                                         ; $5DA7: $87
    ld [$FE8F], sp                                ; $5DA8: $08 $8F $FE
    db $10                                        ; $5DAB: $10
    inc l                                         ; $5DAC: $2C
    rst RST_18                                    ; $5DAD: $DF
    db $FC                                        ; $5DAE: $FC
    add hl, bc                                    ; $5DAF: $09
    sbc a                                         ; $5DB0: $9F
    xor c                                         ; $5DB1: $A9
    ld a, c                                       ; $5DB2: $79
    rlca                                          ; $5DB3: $07
    rra                                           ; $5DB4: $1F
    ld a, [$0810]                                 ; $5DB5: $FA $10 $08
    ld [hl], b                                    ; $5DB8: $70
    add hl, de                                    ; $5DB9: $19
    nop                                           ; $5DBA: $00
    ld bc, $E55A                                  ; $5DBB: $01 $5A $E5
    add d                                         ; $5DBE: $82
    ld [$F725], sp                                ; $5DBF: $08 $25 $F7
    cpl                                           ; $5DC2: $2F
    rst RST_20                                    ; $5DC3: $E7
    inc a                                         ; $5DC4: $3C
    ld [$557C], sp                                ; $5DC5: $08 $7C $55
    db $E3                                        ; $5DC8: $E3
    ld a, c                                       ; $5DC9: $79
    ld sp, hl                                     ; $5DCA: $F9
    ld a, [bc]                                    ; $5DCB: $0A
    ld c, c                                       ; $5DCC: $49
    ld a, [bc]                                    ; $5DCD: $0A
    adc c                                         ; $5DCE: $89
    ld [$195A], sp                                ; $5DCF: $08 $5A $19
    ld [$7139], sp                                ; $5DD2: $08 $39 $71
    nop                                           ; $5DD5: $00
    ld [$1A08], sp                                ; $5DD6: $08 $08 $1A
    xor d                                         ; $5DD9: $AA
    ld [$0838], sp                                ; $5DDA: $08 $38 $08
    sbc a                                         ; $5DDD: $9F
    ld [$089E], sp                                ; $5DDE: $08 $9E $08
    rst RST_08                                    ; $5DE1: $CF
    or b                                          ; $5DE2: $B0
    ld [$7AC7], sp                                ; $5DE3: $08 $C7 $7A
    dec b                                         ; $5DE6: $05
    inc bc                                        ; $5DE7: $03
    db $FD                                        ; $5DE8: $FD
    rlca                                          ; $5DE9: $07
    ld sp, hl                                     ; $5DEA: $F9
    xor d                                         ; $5DEB: $AA
    jr nz, @-$0D                                  ; $5DEC: $20 $F1

    ld [$08C0], sp                                ; $5DEE: $08 $C0 $08
    cp $08                                        ; $5DF1: $FE $08
    db $FC                                        ; $5DF3: $FC
    ld a, [$5808]                                 ; $5DF4: $FA $08 $58
    ld a, [bc]                                    ; $5DF7: $0A
    ld l, c                                       ; $5DF8: $69
    ld a, e                                       ; $5DF9: $7B
    pop bc                                        ; $5DFA: $C1
    ret                                           ; $5DFB: $C9


    nop                                           ; $5DFC: $00
    ld [$28FC], a                                 ; $5DFD: $EA $FC $28
    ld sp, $08AA                                  ; $5E00: $31 $AA $08
    ld d, l                                       ; $5E03: $55
    ld c, h                                       ; $5E04: $4C
    add e                                         ; $5E05: $83
    ld e, h                                       ; $5E06: $5C
    ld a, h                                       ; $5E07: $7C
    add hl, bc                                    ; $5E08: $09
    cp a                                          ; $5E09: $BF
    rrca                                          ; $5E0A: $0F
    ld [$E679], sp                                ; $5E0B: $08 $79 $E6
    rst RST_18                                    ; $5E0E: $DF
    ld h, l                                       ; $5E0F: $65
    rst RST_20                                    ; $5E10: $E7
    ld [$1F18], sp                                ; $5E11: $08 $18 $1F
    daa                                           ; $5E14: $27
    jr @-$58                                      ; $5E15: $18 $A6

    ld [$6770], sp                                ; $5E17: $08 $70 $67
    add hl, sp                                    ; $5E1A: $39
    ld [$9379], sp                                ; $5E1B: $08 $79 $93
    db $EC                                        ; $5E1E: $EC
    scf                                           ; $5E1F: $37
    ret z                                         ; $5E20: $C8

    ld hl, sp+$1F                                 ; $5E21: $F8 $1F
    add hl, de                                    ; $5E23: $19
    ret c                                         ; $5E24: $D8

    ret z                                         ; $5E25: $C8

    reti                                          ; $5E26: $D9


    add a                                         ; $5E27: $87
    ld a, a                                       ; $5E28: $7F
    or [hl]                                       ; $5E29: $B6
    cp b                                          ; $5E2A: $B8
    ld [$1EA7], sp                                ; $5E2B: $08 $A7 $1E
    cp a                                          ; $5E2E: $BF
    rra                                           ; $5E2F: $1F
    rst RST_38                                    ; $5E30: $FF
    nop                                           ; $5E31: $00
    rla                                           ; $5E32: $17
    ld sp, $B7EB                                  ; $5E33: $31 $EB $B7
    jr c, jr_005_5E50                             ; $5E36: $38 $18

    add sp, -$4C                                  ; $5E38: $E8 $B4
    srl d                                         ; $5E3A: $CB $3A
    rst RST_38                                    ; $5E3C: $FF
    ld a, [de]                                    ; $5E3D: $1A
    ld a, c                                       ; $5E3E: $79
    ld [$1901], sp                                ; $5E3F: $08 $01 $19
    ld [$0333], sp                                ; $5E42: $08 $33 $03
    add c                                         ; $5E45: $81
    reti                                          ; $5E46: $D9


    inc de                                        ; $5E47: $13
    db $EC                                        ; $5E48: $EC
    or e                                          ; $5E49: $B3
    call z, $EE11                                 ; $5E4A: $CC $11 $EE
    rra                                           ; $5E4D: $1F
    cp $DB                                        ; $5E4E: $FE $DB

jr_005_5E50:
    rrca                                          ; $5E50: $0F
    rrca                                          ; $5E51: $0F
    ld bc, $2318                                  ; $5E52: $01 $18 $23
    nop                                           ; $5E55: $00
    ld d, l                                       ; $5E56: $55
    ld h, a                                       ; $5E57: $67
    xor d                                         ; $5E58: $AA
    nop                                           ; $5E59: $00
    db $10                                        ; $5E5A: $10
    cp a                                          ; $5E5B: $BF
    ld a, h                                       ; $5E5C: $7C
    rrca                                          ; $5E5D: $0F
    rrca                                          ; $5E5E: $0F
    add hl, bc                                    ; $5E5F: $09
    sbc [hl]                                      ; $5E60: $9E
    rst RST_38                                    ; $5E61: $FF
    ccf                                           ; $5E62: $3F
    db $FC                                        ; $5E63: $FC
    add hl, bc                                    ; $5E64: $09
    ld b, c                                       ; $5E65: $41
    ld e, c                                       ; $5E66: $59
    ld bc, $51BD                                  ; $5E67: $01 $BD $51
    ld a, [hl]                                    ; $5E6A: $7E
    db $10                                        ; $5E6B: $10
    jr jr_005_5E7E                                ; $5E6C: $18 $10

    sbc c                                         ; $5E6E: $99
    cp h                                          ; $5E6F: $BC
    db $DB                                        ; $5E70: $DB
    add hl, bc                                    ; $5E71: $09
    ld sp, hl                                     ; $5E72: $F9
    ld a, l                                       ; $5E73: $7D
    ld a, [hl+]                                   ; $5E74: $2A
    pop af                                        ; $5E75: $F1
    ld b, h                                       ; $5E76: $44
    add hl, sp                                    ; $5E77: $39
    or e                                          ; $5E78: $B3
    ld a, h                                       ; $5E79: $7C
    rrca                                          ; $5E7A: $0F
    rst RST_38                                    ; $5E7B: $FF
    dec bc                                        ; $5E7C: $0B
    sub h                                         ; $5E7D: $94

jr_005_5E7E:
    jp nc, $2C19                                  ; $5E7E: $D2 $19 $2C

    inc d                                         ; $5E81: $14
    sub e                                         ; $5E82: $93
    and e                                         ; $5E83: $A3
    ld c, [hl]                                    ; $5E84: $4E
    ld a, a                                       ; $5E85: $7F
    ld b, d                                       ; $5E86: $42
    cp h                                          ; $5E87: $BC
    db $DB                                        ; $5E88: $DB
    add hl, bc                                    ; $5E89: $09
    rst RST_38                                    ; $5E8A: $FF
    ld c, c                                       ; $5E8B: $49
    inc a                                         ; $5E8C: $3C
    db $EB                                        ; $5E8D: $EB
    ld [$FBFF], sp                                ; $5E8E: $08 $FF $FB
    rra                                           ; $5E91: $1F
    ld [$0C3F], sp                                ; $5E92: $08 $3F $0C
    rst RST_38                                    ; $5E95: $FF
    db $FD                                        ; $5E96: $FD
    ld c, d                                       ; $5E97: $4A
    dec c                                         ; $5E98: $0D
    ld a, [hl]                                    ; $5E99: $7E
    ld e, e                                       ; $5E9A: $5B
    ld h, e                                       ; $5E9B: $63
    add hl, bc                                    ; $5E9C: $09
    xor d                                         ; $5E9D: $AA
    ld [$5575], sp                                ; $5E9E: $08 $75 $55
    ld c, c                                       ; $5EA1: $49
    dec b                                         ; $5EA2: $05
    ld a, h                                       ; $5EA3: $7C
    add b                                         ; $5EA4: $80
    ld [$0840], sp                                ; $5EA5: $08 $40 $08
    ld d, l                                       ; $5EA8: $55
    ldh [$FF08], a                                ; $5EA9: $E0 $08
    ldh a, [$FF08]                                ; $5EAB: $F0 $08
    ld hl, sp+$7E                                 ; $5EAD: $F8 $7E
    ld a, [bc]                                    ; $5EAF: $0A
    ld [$0555], sp                                ; $5EB0: $08 $55 $05
    ld [$0803], sp                                ; $5EB3: $08 $03 $08
    ld bc, $FC4A                                  ; $5EB6: $01 $4A $FC
    ld [$FE7D], sp                                ; $5EB9: $08 $7D $FE
    sbc c                                         ; $5EBC: $99
    rlca                                          ; $5EBD: $07
    ld [bc], a                                    ; $5EBE: $02
    db $EB                                        ; $5EBF: $EB
    add hl, bc                                    ; $5EC0: $09
    add b                                         ; $5EC1: $80
    ld [$C055], sp                                ; $5EC2: $08 $55 $C0
    ld [$08E0], sp                                ; $5EC5: $08 $E0 $08
    ld hl, sp+$7A                                 ; $5EC8: $F8 $7A
    ld a, a                                       ; $5ECA: $7F
    ld [$3F57], sp                                ; $5ECB: $08 $57 $3F
    ld [$081F], sp                                ; $5ECE: $08 $1F $08
    rrca                                          ; $5ED1: $0F
    inc c                                         ; $5ED2: $0C
    add hl, sp                                    ; $5ED3: $39
    rst RST_38                                    ; $5ED4: $FF
    xor l                                         ; $5ED5: $AD
    db $FD                                        ; $5ED6: $FD
    ldh a, [$FF08]                                ; $5ED7: $F0 $08
    db $FC                                        ; $5ED9: $FC
    rst RST_38                                    ; $5EDA: $FF
    ld [$0807], sp                                ; $5EDB: $08 $07 $08
    ld h, b                                       ; $5EDE: $60
    inc bc                                        ; $5EDF: $03
    ld a, [bc]                                    ; $5EE0: $0A
    add hl, hl                                    ; $5EE1: $29
    nop                                           ; $5EE2: $00
    dec h                                         ; $5EE3: $25
    nop                                           ; $5EE4: $00
    dec h                                         ; $5EE5: $25
    inc b                                         ; $5EE6: $04
    ld bc, $071D                                  ; $5EE7: $01 $1D $07
    ld [bc], a                                    ; $5EEA: $02
    db $10                                        ; $5EEB: $10
    inc bc                                        ; $5EEC: $03
    db $10                                        ; $5EED: $10
    db $DD                                        ; $5EEE: $DD
    ld h, b                                       ; $5EEF: $60
    db $10                                        ; $5EF0: $10
    dec b                                         ; $5EF1: $05
    db $10                                        ; $5EF2: $10
    db $D3                                        ; $5EF3: $D3
    add c                                         ; $5EF4: $81
    ld [$CB52], sp                                ; $5EF5: $08 $52 $CB
    rra                                           ; $5EF8: $1F
    ld [de], a                                    ; $5EF9: $12
    rlca                                          ; $5EFA: $07
    ld [bc], a                                    ; $5EFB: $02
    db $10                                        ; $5EFC: $10
    inc bc                                        ; $5EFD: $03
    db $10                                        ; $5EFE: $10
    ld h, b                                       ; $5EFF: $60
    xor [hl]                                      ; $5F00: $AE
    db $10                                        ; $5F01: $10
    dec b                                         ; $5F02: $05
    db $10                                        ; $5F03: $10
    ld b, $F5                                     ; $5F04: $06 $F5
    rra                                           ; $5F06: $1F
    ld d, $09                                     ; $5F07: $16 $09
    and l                                         ; $5F09: $A5
    db $10                                        ; $5F0A: $10
    ld a, [bc]                                    ; $5F0B: $0A
    sub l                                         ; $5F0C: $95
    rlca                                          ; $5F0D: $07
    ld [bc], a                                    ; $5F0E: $02
    db $10                                        ; $5F0F: $10
    inc bc                                        ; $5F10: $03
    db $10                                        ; $5F11: $10
    ld l, l                                       ; $5F12: $6D
    ld b, $B5                                     ; $5F13: $06 $B5
    dec e                                         ; $5F15: $1D
    rlca                                          ; $5F16: $07
    jr nz, @+$12                                  ; $5F17: $20 $10

    dec b                                         ; $5F19: $05
    db $10                                        ; $5F1A: $10
    ld l, d                                       ; $5F1B: $6A
    ld b, $41                                     ; $5F1C: $06 $41
    db $10                                        ; $5F1E: $10
    ld [$0220], sp                                ; $5F1F: $08 $20 $02
    db $10                                        ; $5F22: $10
    inc bc                                        ; $5F23: $03
    or l                                          ; $5F24: $B5
    call nc, $4001                                ; $5F25: $D4 $01 $40
    ld de, $100B                                  ; $5F28: $11 $0B $10
    ld c, $10                                     ; $5F2B: $0E $10
    ld d, l                                       ; $5F2D: $55
    rrca                                          ; $5F2E: $0F
    and b                                         ; $5F2F: $A0
    ld [de], a                                    ; $5F30: $12
    db $10                                        ; $5F31: $10
    inc de                                        ; $5F32: $13
    ld d, b                                       ; $5F33: $50
    ld d, $10                                     ; $5F34: $16 $10
    ld h, l                                       ; $5F36: $65
    rla                                           ; $5F37: $17
    ldh a, [c]                                    ; $5F38: $F2
    ld d, $07                                     ; $5F39: $16 $07
    ld [bc], a                                    ; $5F3B: $02
    db $10                                        ; $5F3C: $10
    inc bc                                        ; $5F3D: $03
    db $10                                        ; $5F3E: $10
    ld e, l                                       ; $5F3F: $5D
    dec b                                         ; $5F40: $05
    db $10                                        ; $5F41: $10
    ld b, $B2                                     ; $5F42: $06 $B2
    ld b, b                                       ; $5F44: $40
    db $10                                        ; $5F45: $10
    ld [$D6D3], sp                                ; $5F46: $08 $D3 $D6
    sub d                                         ; $5F49: $92
    inc de                                        ; $5F4A: $13
    add hl, bc                                    ; $5F4B: $09
    db $10                                        ; $5F4C: $10
    ld a, [bc]                                    ; $5F4D: $0A
    sub [hl]                                      ; $5F4E: $96
    inc de                                        ; $5F4F: $13
    inc c                                         ; $5F50: $0C
    ld a, [hl+]                                   ; $5F51: $2A
    dec b                                         ; $5F52: $05
    dec c                                         ; $5F53: $0D
    db $10                                        ; $5F54: $10
    db $10                                        ; $5F55: $10
    ld d, b                                       ; $5F56: $50
    ld de, $1430                                  ; $5F57: $11 $30 $14
    xor d                                         ; $5F5A: $AA
    db $10                                        ; $5F5B: $10
    dec d                                         ; $5F5C: $15
    db $10                                        ; $5F5D: $10
    jr jr_005_5F70                                ; $5F5E: $18 $10

Call_005_5F60:
    add hl, de                                    ; $5F60: $19
    sub b                                         ; $5F61: $90
    ld a, [de]                                    ; $5F62: $1A
    xor d                                         ; $5F63: $AA
    db $10                                        ; $5F64: $10
    dec de                                        ; $5F65: $1B
    db $10                                        ; $5F66: $10
    ld bc, $0B10                                  ; $5F67: $01 $10 $0B
    db $10                                        ; $5F6A: $10
    ld c, $D4                                     ; $5F6B: $0E $D4
    ld d, d                                       ; $5F6D: $52
    rla                                           ; $5F6E: $17
    add hl, bc                                    ; $5F6F: $09

jr_005_5F70:
    db $10                                        ; $5F70: $10
    ld a, [bc]                                    ; $5F71: $0A
    cp b                                          ; $5F72: $B8
    rrca                                          ; $5F73: $0F
    dec b                                         ; $5F74: $05
    ld d, l                                       ; $5F75: $55
    ld [de], a                                    ; $5F76: $12
    db $10                                        ; $5F77: $10
    inc de                                        ; $5F78: $13
    ld d, b                                       ; $5F79: $50
    ld d, $10                                     ; $5F7A: $16 $10
    rla                                           ; $5F7C: $17
    ret c                                         ; $5F7D: $D8

    ld d, l                                       ; $5F7E: $55
    ld e, $10                                     ; $5F7F: $1E $10
    rra                                           ; $5F81: $1F
    db $10                                        ; $5F82: $10
    dec e                                         ; $5F83: $1D
    db $10                                        ; $5F84: $10
    ld [hl+], a                                   ; $5F85: $22
    db $10                                        ; $5F86: $10
    ld [hl], h                                    ; $5F87: $74
    inc hl                                        ; $5F88: $23
    db $10                                        ; $5F89: $10
    ldh a, [rNR10]                                ; $5F8A: $F0 $10
    inc h                                         ; $5F8C: $24
    db $10                                        ; $5F8D: $10
    dec h                                         ; $5F8E: $25
    inc b                                         ; $5F8F: $04
    ld d, l                                       ; $5F90: $55
    ld h, $10                                     ; $5F91: $26 $10
    inc c                                         ; $5F93: $0C
    ld d, b                                       ; $5F94: $50
    dec c                                         ; $5F95: $0D
    db $10                                        ; $5F96: $10
    db $10                                        ; $5F97: $10
    ld d, b                                       ; $5F98: $50
    ld d, l                                       ; $5F99: $55
    ld d, $10                                     ; $5F9A: $16 $10
    rla                                           ; $5F9C: $17
    db $10                                        ; $5F9D: $10
    ld bc, $0F12                                  ; $5F9E: $01 $12 $0F
    or b                                          ; $5FA1: $B0
    ld d, l                                       ; $5FA2: $55
    ld [de], a                                    ; $5FA3: $12
    db $10                                        ; $5FA4: $10
    inc de                                        ; $5FA5: $13
    call nc, Call_000_101A                        ; $5FA6: $D4 $1A $10

jr_005_5FA9:
    dec de                                        ; $5FA9: $1B
    db $10                                        ; $5FAA: $10
    ld d, l                                       ; $5FAB: $55
    inc e                                         ; $5FAC: $1C
    or b                                          ; $5FAD: $B0
    inc d                                         ; $5FAE: $14
    db $10                                        ; $5FAF: $10
    dec d                                         ; $5FB0: $15
    db $10                                        ; $5FB1: $10
    dec e                                         ; $5FB2: $1D
    db $10                                        ; $5FB3: $10
    ld d, l                                       ; $5FB4: $55
    add hl, de                                    ; $5FB5: $19
    jp c, $1020                                   ; $5FB6: $DA $20 $10

    ld hl, $0110                                  ; $5FB9: $21 $10 $01
    jr @+$57                                      ; $5FBC: $18 $55

    daa                                           ; $5FBE: $27
    db $10                                        ; $5FBF: $10
    jr z, jr_005_5FD2                             ; $5FC0: $28 $10

    add hl, hl                                    ; $5FC2: $29
    db $10                                        ; $5FC3: $10
    rra                                           ; $5FC4: $1F
    db $10                                        ; $5FC5: $10
    ld b, l                                       ; $5FC6: $45
    dec e                                         ; $5FC7: $1D
    db $10                                        ; $5FC8: $10
    add hl, de                                    ; $5FC9: $19
    inc b                                         ; $5FCA: $04
    ld a, [de]                                    ; $5FCB: $1A
    db $10                                        ; $5FCC: $10
    dec de                                        ; $5FCD: $1B
    db $10                                        ; $5FCE: $10
    ld d, l                                       ; $5FCF: $55
    inc e                                         ; $5FD0: $1C
    ld [hl], b                                    ; $5FD1: $70

jr_005_5FD2:
    inc d                                         ; $5FD2: $14
    db $10                                        ; $5FD3: $10
    dec d                                         ; $5FD4: $15
    db $10                                        ; $5FD5: $10
    jr jr_005_5FA9                                ; $5FD6: $18 $D1

    xor d                                         ; $5FD8: $AA
    db $10                                        ; $5FD9: $10
    dec h                                         ; $5FDA: $25
    or b                                          ; $5FDB: $B0
    ld a, [hl+]                                   ; $5FDC: $2A
    jr nc, jr_005_600C                            ; $5FDD: $30 $2D

    db $10                                        ; $5FDF: $10
    ld [hl+], a                                   ; $5FE0: $22
    xor d                                         ; $5FE1: $AA
    db $10                                        ; $5FE2: $10
    inc hl                                        ; $5FE3: $23
    db $10                                        ; $5FE4: $10
    ld hl, $2410                                  ; $5FE5: $21 $10 $24
    jp c, $AA01                                   ; $5FE8: $DA $01 $AA

    ld e, $2E                                     ; $5FEB: $1E $2E
    db $10                                        ; $5FED: $10
    cpl                                           ; $5FEE: $2F
    db $10                                        ; $5FEF: $10
    jr nz, jr_005_6002                            ; $5FF0: $20 $10

    ld hl, $10A2                                  ; $5FF2: $21 $A2 $10
    inc h                                         ; $5FF5: $24
    db $10                                        ; $5FF6: $10
    dec h                                         ; $5FF7: $25
    inc b                                         ; $5FF8: $04
    ld a, [hl+]                                   ; $5FF9: $2A
    jr nc, jr_005_6029                            ; $5FFA: $30 $2D

    xor d                                         ; $5FFC: $AA
    db $10                                        ; $5FFD: $10
    ld [hl+], a                                   ; $5FFE: $22
    db $10                                        ; $5FFF: $10
    inc hl                                        ; $6000: $23
    db $10                                        ; $6001: $10

jr_005_6002:
    ld bc, $2BD2                                  ; $6002: $01 $D2 $2B
    cp [hl]                                       ; $6005: $BE
    db $10                                        ; $6006: $10
    inc l                                         ; $6007: $2C
    ld [hl], d                                    ; $6008: $72
    rla                                           ; $6009: $17
    db $DD                                        ; $600A: $DD
    rra                                           ; $600B: $1F

jr_005_600C:
    dec d                                         ; $600C: $15
    dec hl                                        ; $600D: $2B
    and l                                         ; $600E: $A5
    db $10                                        ; $600F: $10
    inc l                                         ; $6010: $2C
    reti                                          ; $6011: $D9


    ld b, $30                                     ; $6012: $06 $30
    db $10                                        ; $6014: $10
    ld sp, $EB3F                                  ; $6015: $31 $3F $EB
    ccf                                           ; $6018: $3F
    ccf                                           ; $6019: $3F
    inc a                                         ; $601A: $3C
    ld [hl-], a                                   ; $601B: $32
    db $10                                        ; $601C: $10
    inc sp                                        ; $601D: $33
    ccf                                           ; $601E: $3F
    ccf                                           ; $601F: $3F
    rst RST_10                                    ; $6020: $D7
    ccf                                           ; $6021: $3F
    inc a                                         ; $6022: $3C
    inc [hl]                                      ; $6023: $34
    db $10                                        ; $6024: $10
    dec [hl]                                      ; $6025: $35
    ccf                                           ; $6026: $3F
    ccf                                           ; $6027: $3F
    ccf                                           ; $6028: $3F

jr_005_6029:
    xor a                                         ; $6029: $AF
    inc a                                         ; $602A: $3C

jr_005_602B:
    ld [hl], $10                                  ; $602B: $36 $10
    scf                                           ; $602D: $37
    ccf                                           ; $602E: $3F
    ccf                                           ; $602F: $3F
    ccf                                           ; $6030: $3F
    inc a                                         ; $6031: $3C
    ld e, [hl]                                    ; $6032: $5E
    jr c, @+$12                                   ; $6033: $38 $10

    add hl, sp                                    ; $6035: $39
    ccf                                           ; $6036: $3F
    ccf                                           ; $6037: $3F
    ccf                                           ; $6038: $3F
    dec sp                                        ; $6039: $3B
    nop                                           ; $603A: $00
    ld hl, $2F00                                  ; $603B: $21 $00 $2F
    inc b                                         ; $603E: $04
    ld bc, $021A                                  ; $603F: $01 $1A $02
    db $10                                        ; $6042: $10
    ld bc, $1FFB                                  ; $6043: $01 $FB $1F
    cp d                                          ; $6046: $BA
    db $10                                        ; $6047: $10
    rlca                                          ; $6048: $07
    ld d, $F7                                     ; $6049: $16 $F7
    ld a, [de]                                    ; $604B: $1A
    ld [bc], a                                    ; $604C: $02
    db $10                                        ; $604D: $10
    inc bc                                        ; $604E: $03
    xor [hl]                                      ; $604F: $AE
    db $10                                        ; $6050: $10
    dec b                                         ; $6051: $05
    db $10                                        ; $6052: $10
    ld b, $F8                                     ; $6053: $06 $F8
    rra                                           ; $6055: $1F
    inc d                                         ; $6056: $14
    rlca                                          ; $6057: $07
    ld a, [$0111]                                 ; $6058: $FA $11 $01
    ld d, d                                       ; $605B: $52
    rst RST_30                                    ; $605C: $F7
    ld d, $08                                     ; $605D: $16 $08
    db $10                                        ; $605F: $10
    inc bc                                        ; $6060: $03
    xor d                                         ; $6061: $AA
    db $10                                        ; $6062: $10
    dec bc                                        ; $6063: $0B
    db $10                                        ; $6064: $10
    dec b                                         ; $6065: $05
    ld [de], a                                    ; $6066: $12
    dec c                                         ; $6067: $0D
    db $10                                        ; $6068: $10
    ld c, $AD                                     ; $6069: $0E $AD
    db $10                                        ; $606B: $10
    rrca                                          ; $606C: $0F
    db $10                                        ; $606D: $10
    ld bc, $131F                                  ; $606E: $01 $1F $13
    rlca                                          ; $6071: $07
    dec d                                         ; $6072: $15
    ld e, d                                       ; $6073: $5A
    dec d                                         ; $6074: $15
    db $10                                        ; $6075: $10
    ld d, $51                                     ; $6076: $16 $51
    ret nc                                        ; $6078: $D0

    ld [$1A10], sp                                ; $6079: $08 $10 $1A
    cp [hl]                                       ; $607C: $BE
    db $10                                        ; $607D: $10
    dec de                                        ; $607E: $1B
    db $10                                        ; $607F: $10
    ld [hl], c                                    ; $6080: $71
    ld de, $3101                                  ; $6081: $11 $01 $31
    add hl, bc                                    ; $6084: $09
    xor d                                         ; $6085: $AA
    db $10                                        ; $6086: $10
    ld a, [bc]                                    ; $6087: $0A
    db $10                                        ; $6088: $10
    inc c                                         ; $6089: $0C
    db $10                                        ; $608A: $10
    dec b                                         ; $608B: $05
    inc d                                         ; $608C: $14
    db $10                                        ; $608D: $10
    xor d                                         ; $608E: $AA
    db $10                                        ; $608F: $10
    ld de, $0110                                  ; $6090: $11 $10 $01
    dec de                                        ; $6093: $1B
    rlca                                          ; $6094: $07
    inc de                                        ; $6095: $13
    ld [de], a                                    ; $6096: $12
    xor d                                         ; $6097: $AA
    db $10                                        ; $6098: $10
    inc de                                        ; $6099: $13
    ld [hl], h                                    ; $609A: $74
    inc d                                         ; $609B: $14
    db $10                                        ; $609C: $10
    rla                                           ; $609D: $17
    db $10                                        ; $609E: $10
    jr jr_005_602B                                ; $609F: $18 $8A

jr_005_60A1:
    db $10                                        ; $60A1: $10
    add hl, de                                    ; $60A2: $19
    inc b                                         ; $60A3: $04
    add hl, bc                                    ; $60A4: $09
    db $10                                        ; $60A5: $10
    dec b                                         ; $60A6: $05
    db $10                                        ; $60A7: $10
    inc e                                         ; $60A8: $1C
    xor d                                         ; $60A9: $AA
    db $10                                        ; $60AA: $10
    dec e                                         ; $60AB: $1D
    db $10                                        ; $60AC: $10
    ld c, $10                                     ; $60AD: $0E $10
    ld e, $10                                     ; $60AF: $1E $10
    rra                                           ; $60B1: $1F
    xor d                                         ; $60B2: $AA
    db $10                                        ; $60B3: $10
    ld hl, $2210                                  ; $60B4: $21 $10 $22
    db $10                                        ; $60B7: $10
    jr nz, jr_005_60CA                            ; $60B8: $20 $10

    dec b                                         ; $60BA: $05
    xor d                                         ; $60BB: $AA
    ld [de], a                                    ; $60BC: $12
    inc hl                                        ; $60BD: $23
    db $10                                        ; $60BE: $10
    inc h                                         ; $60BF: $24
    db $10                                        ; $60C0: $10
    ld bc, $0711                                  ; $60C1: $01 $11 $07
    db $DD                                        ; $60C4: $DD
    ld de, $2601                                  ; $60C5: $11 $01 $26
    ld d, c                                       ; $60C8: $51
    or [hl]                                       ; $60C9: $B6

jr_005_60CA:
    ld de, $1029                                  ; $60CA: $11 $29 $10
    ld d, h                                       ; $60CD: $54
    inc l                                         ; $60CE: $2C
    db $10                                        ; $60CF: $10
    dec l                                         ; $60D0: $2D
    db $10                                        ; $60D1: $10
    ld h, $72                                     ; $60D2: $26 $72
    ld sp, $5504                                  ; $60D4: $31 $04 $55
    ld [$0310], sp                                ; $60D7: $08 $10 $03
    db $10                                        ; $60DA: $10
    dec c                                         ; $60DB: $0D
    db $10                                        ; $60DC: $10
    dec b                                         ; $60DD: $05
    ld [de], a                                    ; $60DE: $12
    ld d, [hl]                                    ; $60DF: $56
    inc hl                                        ; $60E0: $23
    db $10                                        ; $60E1: $10
    ld [hl-], a                                   ; $60E2: $32
    db $10                                        ; $60E3: $10
    jr nz, @-$6A                                  ; $60E4: $20 $94

    dec de                                        ; $60E6: $1B
    ld c, $8A                                     ; $60E7: $0E $8A
    db $10                                        ; $60E9: $10
    rrca                                          ; $60EA: $0F
    rlca                                          ; $60EB: $07
    dec h                                         ; $60EC: $25
    db $10                                        ; $60ED: $10
    daa                                           ; $60EE: $27
    db $10                                        ; $60EF: $10
    jr z, jr_005_60A1                             ; $60F0: $28 $AF

    db $10                                        ; $60F2: $10
    ld bc, $0290                                  ; $60F3: $01 $90 $02
    stop                                          ; $60F6: $10 $00
    ld d, c                                       ; $60F8: $51
    db $10                                        ; $60F9: $10
    ld d, l                                       ; $60FA: $55
    ld a, [hl+]                                   ; $60FB: $2A
    db $10                                        ; $60FC: $10
    dec hl                                        ; $60FD: $2B
    db $10                                        ; $60FE: $10
    ld l, $10                                     ; $60FF: $2E $10
    cpl                                           ; $6101: $2F
    db $10                                        ; $6102: $10
    ld c, d                                       ; $6103: $4A
    jr nc, jr_005_6179                            ; $6104: $30 $73

    inc b                                         ; $6106: $04
    add hl, bc                                    ; $6107: $09
    db $10                                        ; $6108: $10
    ld a, [bc]                                    ; $6109: $0A
    db $10                                        ; $610A: $10
    inc c                                         ; $610B: $0C
    xor e                                         ; $610C: $AB
    db $10                                        ; $610D: $10
    dec b                                         ; $610E: $05
    ld [de], a                                    ; $610F: $12
    inc hl                                        ; $6110: $23
    db $10                                        ; $6111: $10
    ld [hl+], a                                   ; $6112: $22
    ld [hl], h                                    ; $6113: $74
    rra                                           ; $6114: $1F
    ld d, l                                       ; $6115: $55
    inc [hl]                                      ; $6116: $34
    db $10                                        ; $6117: $10
    ld [bc], a                                    ; $6118: $02
    db $10                                        ; $6119: $10
    rrca                                          ; $611A: $0F
    db $10                                        ; $611B: $10
    ld [$5110], sp                                ; $611C: $08 $10 $51
    inc bc                                        ; $611F: $03
    db $10                                        ; $6120: $10
    dec bc                                        ; $6121: $0B
    db $10                                        ; $6122: $10
    ld b, $07                                     ; $6123: $06 $07
    dec h                                         ; $6125: $25
    db $10                                        ; $6126: $10
    ld e, l                                       ; $6127: $5D
    daa                                           ; $6128: $27
    db $10                                        ; $6129: $10
    ld bc, $7212                                  ; $612A: $01 $12 $72
    ret nc                                        ; $612D: $D0

    dec [hl]                                      ; $612E: $35
    db $10                                        ; $612F: $10
    ld d, l                                       ; $6130: $55
    rra                                           ; $6131: $1F
    db $10                                        ; $6132: $10
    ld hl, $2210                                  ; $6133: $21 $10 $22
    db $10                                        ; $6136: $10
    dec c                                         ; $6137: $0D
    db $10                                        ; $6138: $10
    ld l, e                                       ; $6139: $6B
    dec b                                         ; $613A: $05
    dec d                                         ; $613B: $15
    nop                                           ; $613C: $00
    ld bc, $3312                                  ; $613D: $01 $12 $33

Call_005_6140:
    ld d, h                                       ; $6140: $54
    ld a, c                                       ; $6141: $79
    ei                                            ; $6142: $FB
    cp l                                          ; $6143: $BD
    sub e                                         ; $6144: $93
    reti                                          ; $6145: $D9


    dec d                                         ; $6146: $15
    ei                                            ; $6147: $FB
    ld [hl], $36                                  ; $6148: $36 $36
    db $DB                                        ; $614A: $DB
    cp $F7                                        ; $614B: $FE $F7
    ld [hl], a                                    ; $614D: $77
    sub a                                         ; $614E: $97
    ld d, e                                       ; $614F: $53
    ld sp, $11B9                                  ; $6150: $31 $B9 $11
    scf                                           ; $6153: $37
    ldh a, [c]                                    ; $6154: $F2
    rra                                           ; $6155: $1F
    rra                                           ; $6156: $1F
    rra                                           ; $6157: $1F
    dec e                                         ; $6158: $1D
    ld b, $38                                     ; $6159: $06 $38
    db $10                                        ; $615B: $10
    add hl, sp                                    ; $615C: $39
    push af                                       ; $615D: $F5
    ccf                                           ; $615E: $3F
    ccf                                           ; $615F: $3F
    ccf                                           ; $6160: $3F
    inc a                                         ; $6161: $3C
    ld a, [hl-]                                   ; $6162: $3A
    db $10                                        ; $6163: $10
    dec sp                                        ; $6164: $3B
    ccf                                           ; $6165: $3F
    rst RST_28                                    ; $6166: $EF
    ccf                                           ; $6167: $3F
    ccf                                           ; $6168: $3F
    inc a                                         ; $6169: $3C
    inc a                                         ; $616A: $3C
    rra                                           ; $616B: $1F
    rra                                           ; $616C: $1F
    rra                                           ; $616D: $1F
    dec e                                         ; $616E: $1D
    ld a, [de]                                    ; $616F: $1A
    nop                                           ; $6170: $00
    ccf                                           ; $6171: $3F
    inc b                                         ; $6172: $04
    ld bc, $1F1F                                  ; $6173: $01 $1F $1F
    rra                                           ; $6176: $1F
    rra                                           ; $6177: $1F
    rra                                           ; $6178: $1F

jr_005_6179:
    rra                                           ; $6179: $1F
    ei                                            ; $617A: $FB
    rra                                           ; $617B: $1F
    rra                                           ; $617C: $1F
    rra                                           ; $617D: $1F
    rra                                           ; $617E: $1F
    inc d                                         ; $617F: $14
    ld [bc], a                                    ; $6180: $02
    cp $1F                                        ; $6181: $FE $1F
    db $DB                                        ; $6183: $DB
    rra                                           ; $6184: $1F
    dec e                                         ; $6185: $1D
    inc bc                                        ; $6186: $03
    db $10                                        ; $6187: $10
    ld bc, $FA05                                  ; $6188: $01 $05 $FA
    rra                                           ; $618B: $1F
    push de                                       ; $618C: $D5
    rra                                           ; $618D: $1F
    dec d                                         ; $618E: $15
    ld [bc], a                                    ; $618F: $02
    sbc b                                         ; $6190: $98
    ld a, [bc]                                    ; $6191: $0A
    db $10                                        ; $6192: $10
    dec bc                                        ; $6193: $0B
    db $10                                        ; $6194: $10
    ld d, l                                       ; $6195: $55
    ld c, $10                                     ; $6196: $0E $10
    rrca                                          ; $6198: $0F
    sub $07                                       ; $6199: $D6 $07
    ld d, [hl]                                    ; $619B: $56
    ld [$5D52], sp                                ; $619C: $08 $52 $5D
    ld [bc], a                                    ; $619F: $02
    db $10                                        ; $61A0: $10
    ld b, $D4                                     ; $61A1: $06 $D4
    rra                                           ; $61A3: $1F
    ld de, $1003                                  ; $61A4: $11 $03 $10
    xor d                                         ; $61A7: $AA
    ld bc, $1005                                  ; $61A8: $01 $05 $10
    rlca                                          ; $61AB: $07
    db $10                                        ; $61AC: $10
    ld [$0910], sp                                ; $61AD: $08 $10 $09
    xor d                                         ; $61B0: $AA
    db $10                                        ; $61B1: $10
    inc c                                         ; $61B2: $0C
    db $10                                        ; $61B3: $10
    dec c                                         ; $61B4: $0D
    db $10                                        ; $61B5: $10
    db $10                                        ; $61B6: $10
    db $10                                        ; $61B7: $10
    ld c, $AE                                     ; $61B8: $0E $AE
    db $10                                        ; $61BA: $10
    ld de, $1210                                  ; $61BB: $11 $10 $12
    jp nc, Jump_005_7191                          ; $61BE: $D2 $91 $71

    inc de                                        ; $61C1: $13
    xor l                                         ; $61C2: $AD
    jp nc, $1014                                  ; $61C3: $D2 $14 $10

    dec d                                         ; $61C6: $15
    ld [hl-], a                                   ; $61C7: $32
    ld [hl], c                                    ; $61C8: $71
    ld [de], a                                    ; $61C9: $12
    db $10                                        ; $61CA: $10
    ld d, h                                       ; $61CB: $54
    ld bc, $1B1E                                  ; $61CC: $01 $1E $1B
    db $10                                        ; $61CF: $10
    ld de, $0D10                                  ; $61D0: $11 $10 $0D
    dec b                                         ; $61D3: $05
    ld d, l                                       ; $61D4: $55
    ld e, $10                                     ; $61D5: $1E $10
    ld hl, $2210                                  ; $61D7: $21 $10 $22
    ld [hl-], a                                   ; $61DA: $32
    inc h                                         ; $61DB: $24
    sub h                                         ; $61DC: $94
    ld d, l                                       ; $61DD: $55
    dec h                                         ; $61DE: $25
    ld [hl-], a                                   ; $61DF: $32
    ld h, $54                                     ; $61E0: $26 $54
    daa                                           ; $61E2: $27
    ld [hl], h                                    ; $61E3: $74
    add hl, hl                                    ; $61E4: $29
    db $10                                        ; $61E5: $10
    ld d, h                                       ; $61E6: $54
    ld a, [hl+]                                   ; $61E7: $2A
    or d                                          ; $61E8: $B2
    inc h                                         ; $61E9: $24
    db $10                                        ; $61EA: $10
    ld d, $10                                     ; $61EB: $16 $10
    rla                                           ; $61ED: $17
    inc b                                         ; $61EE: $04
    ld d, l                                       ; $61EF: $55
    jr jr_005_6202                                ; $61F0: $18 $10

    add hl, de                                    ; $61F2: $19
    db $10                                        ; $61F3: $10
    ld bc, $1A16                                  ; $61F4: $01 $16 $1A
    db $10                                        ; $61F7: $10
    dec d                                         ; $61F8: $15
    inc de                                        ; $61F9: $13
    dec b                                         ; $61FA: $05
    inc e                                         ; $61FB: $1C
    db $10                                        ; $61FC: $10
    dec e                                         ; $61FD: $1D
    db $10                                        ; $61FE: $10
    rra                                           ; $61FF: $1F
    db $10                                        ; $6200: $10
    ld e, a                                       ; $6201: $5F

jr_005_6202:
    jr nz, jr_005_6214                            ; $6202: $20 $10

    inc hl                                        ; $6204: $23
    db $10                                        ; $6205: $10
    ldh a, [rHDMA2]                               ; $6206: $F0 $52
    inc sp                                        ; $6208: $33
    sub c                                         ; $6209: $91
    ld [$D573], a                                 ; $620A: $EA $73 $D5
    inc de                                        ; $620D: $13
    jr z, @-$6C                                   ; $620E: $28 $92

    inc hl                                        ; $6210: $23
    sub e                                         ; $6211: $93
    ld b, $51                                     ; $6212: $06 $51

jr_005_6214:
    dec hl                                        ; $6214: $2B
    db $10                                        ; $6215: $10
    inc l                                         ; $6216: $2C
    ld [hl-], a                                   ; $6217: $32
    cpl                                           ; $6218: $2F
    rlca                                          ; $6219: $07
    ld sp, $7710                                  ; $621A: $31 $10 $77
    ld [hl-], a                                   ; $621D: $32
    db $10                                        ; $621E: $10
    ret nc                                        ; $621F: $D0

    ld [de], a                                    ; $6220: $12
    scf                                           ; $6221: $37
    db $F4                                        ; $6222: $F4
    ccf                                           ; $6223: $3F
    ccf                                           ; $6224: $3F
    xor c                                         ; $6225: $A9
    add hl, sp                                    ; $6226: $39
    dec l                                         ; $6227: $2D
    db $10                                        ; $6228: $10
    ld l, $31                                     ; $6229: $2E $31
    rlca                                          ; $622B: $07
    jr nc, @+$12                                  ; $622C: $30 $10

    ld d, l                                       ; $622E: $55
    inc sp                                        ; $622F: $33
    db $10                                        ; $6230: $10
    inc [hl]                                      ; $6231: $34
    db $10                                        ; $6232: $10
    dec [hl]                                      ; $6233: $35
    db $10                                        ; $6234: $10
    ld [hl], $10                                  ; $6235: $36 $10
    ld e, e                                       ; $6237: $5B
    jr c, jr_005_624A                             ; $6238: $38 $10

    add hl, sp                                    ; $623A: $39
    pop af                                        ; $623B: $F1
    db $10                                        ; $623C: $10
    ld l, $3F                                     ; $623D: $2E $3F
    ccf                                           ; $623F: $3F
    xor e                                         ; $6240: $AB
    jr c, jr_005_627D                             ; $6241: $38 $3A

    db $10                                        ; $6243: $10
    dec sp                                        ; $6244: $3B
    ld sp, $3007                                  ; $6245: $31 $07 $30
    db $10                                        ; $6248: $10
    rst RST_38                                    ; $6249: $FF

jr_005_624A:
    ld [hl], h                                    ; $624A: $74
    ld sp, $B171                                  ; $624B: $31 $71 $B1
    ld [hl], e                                    ; $624E: $73
    ccf                                           ; $624F: $3F
    ccf                                           ; $6250: $3F
    jr c, jr_005_62B1                             ; $6251: $38 $5E

    inc a                                         ; $6253: $3C
    db $10                                        ; $6254: $10
    dec a                                         ; $6255: $3D
    ccf                                           ; $6256: $3F
    ccf                                           ; $6257: $3F
    ccf                                           ; $6258: $3F
    inc a                                         ; $6259: $3C
    ld a, $F0                                     ; $625A: $3E $F0
    rra                                           ; $625C: $1F
    rra                                           ; $625D: $1F
    rra                                           ; $625E: $1F
    dec e                                         ; $625F: $1D
    nop                                           ; $6260: $00
    dec l                                         ; $6261: $2D
    add b                                         ; $6262: $80
    dec hl                                        ; $6263: $2B
    inc b                                         ; $6264: $04
    ld bc, $0204                                  ; $6265: $01 $04 $02
    ld b, $05                                     ; $6268: $06 $05
    rrca                                          ; $626A: $0F
    inc b                                         ; $626B: $04
    ld l, [hl]                                    ; $626C: $6E
    ld [$042F], sp                                ; $626D: $08 $2F $04
    add hl, bc                                    ; $6270: $09
    rla                                           ; $6271: $17
    rla                                           ; $6272: $17
    ld a, $0A                                     ; $6273: $3E $0A
    rst RST_38                                    ; $6275: $FF
    rra                                           ; $6276: $1F
    rrca                                          ; $6277: $0F
    rla                                           ; $6278: $17
    sub a                                         ; $6279: $97
    cp [hl]                                       ; $627A: $BE
    dec e                                         ; $627B: $1D
    ccf                                           ; $627C: $3F

jr_005_627D:
    ld [hl], a                                    ; $627D: $77
    jp c, Jump_000_00CE                           ; $627E: $DA $CE $00

    inc bc                                        ; $6281: $03
    ld d, c                                       ; $6282: $51
    inc b                                         ; $6283: $04
    ld b, $16                                     ; $6284: $06 $16
    rlca                                          ; $6286: $07
    rst RST_38                                    ; $6287: $FF
    add a                                         ; $6288: $87
    halt                                          ; $6289: $76
    adc a                                         ; $628A: $8F
    dec e                                         ; $628B: $1D
    ld l, a                                       ; $628C: $6F
    rlca                                          ; $628D: $07
    rlca                                          ; $628E: $07
    rlca                                          ; $628F: $07
    ei                                            ; $6290: $FB
    ld d, a                                       ; $6291: $57
    rlca                                          ; $6292: $07
    rlca                                          ; $6293: $07
    inc b                                         ; $6294: $04
    jr nc, @+$0D                                  ; $6295: $30 $0B

    cp [hl]                                       ; $6297: $BE
    rst RST_18                                    ; $6298: $DF
    push de                                       ; $6299: $D5
    dec c                                         ; $629A: $0D
    push hl                                       ; $629B: $E5
    inc c                                         ; $629C: $0C
    inc b                                         ; $629D: $04
    dec c                                         ; $629E: $0D
    inc b                                         ; $629F: $04
    rrca                                          ; $62A0: $0F
    ld d, $7A                                     ; $62A1: $16 $7A
    ld [de], a                                    ; $62A3: $12
    ld h, a                                       ; $62A4: $67
    rlca                                          ; $62A5: $07
    rlca                                          ; $62A6: $07
    ld b, $09                                     ; $62A7: $06 $09
    ld c, $01                                     ; $62A9: $0E $01
    db $EB                                        ; $62AB: $EB
    ld a, b                                       ; $62AC: $78
    inc c                                         ; $62AD: $0C
    inc b                                         ; $62AE: $04
    dec d                                         ; $62AF: $15
    inc b                                         ; $62B0: $04

jr_005_62B1:
    ld d, $15                                     ; $62B1: $16 $15
    dec h                                         ; $62B3: $25
    db $EB                                        ; $62B4: $EB
    ld b, a                                       ; $62B5: $47
    pop bc                                        ; $62B6: $C1
    ld d, $1A                                     ; $62B7: $16 $1A
    cp $1B                                        ; $62B9: $FE $1B
    add $D5                                       ; $62BB: $C6 $D5
    ld [$EECD], a                                 ; $62BD: $EA $CD $EE
    ld [hl], $0E                                  ; $62C0: $36 $0E
    inc b                                         ; $62C2: $04
    db $10                                        ; $62C3: $10
    inc b                                         ; $62C4: $04
    ld de, $1CAB                                  ; $62C5: $11 $AB $1C
    ld [$0B26], sp                                ; $62C8: $08 $26 $0B
    inc b                                         ; $62CB: $04
    inc bc                                        ; $62CC: $03
    ld b, $99                                     ; $62CD: $06 $99
    ld e, d                                       ; $62CF: $5A
    inc de                                        ; $62D0: $13
    ld d, $07                                     ; $62D1: $16 $07
    xor [hl]                                      ; $62D3: $AE
    push af                                       ; $62D4: $F5
    inc d                                         ; $62D5: $14
    inc b                                         ; $62D6: $04
    rla                                           ; $62D7: $17
    xor a                                         ; $62D8: $AF
    inc b                                         ; $62D9: $04
    jr jr_005_62E0                                ; $62DA: $18 $04

    add hl, de                                    ; $62DC: $19
    cpl                                           ; $62DD: $2F
    rlca                                          ; $62DE: $07
    ld l, c                                       ; $62DF: $69

jr_005_62E0:
    rla                                           ; $62E0: $17
    ld a, [$CFCF]                                 ; $62E1: $FA $CF $CF
    daa                                           ; $62E4: $27
    db $DD                                        ; $62E5: $DD
    inc e                                         ; $62E6: $1C
    inc e                                         ; $62E7: $1C
    inc b                                         ; $62E8: $04
    dec e                                         ; $62E9: $1D
    or l                                          ; $62EA: $B5
    inc b                                         ; $62EB: $04
    ld e, $2F                                     ; $62EC: $1E $2F
    inc d                                         ; $62EE: $14
    dec de                                        ; $62EF: $1B
    inc b                                         ; $62F0: $04
    rrca                                          ; $62F1: $0F
    inc b                                         ; $62F2: $04
    ld d, l                                       ; $62F3: $55
    rra                                           ; $62F4: $1F
    inc b                                         ; $62F5: $04
    dec c                                         ; $62F6: $0D
    ld d, $0C                                     ; $62F7: $16 $0C
    inc b                                         ; $62F9: $04
    ld [de], a                                    ; $62FA: $12
    or $55                                        ; $62FB: $F6 $55
    jr nz, jr_005_6303                            ; $62FD: $20 $04

    ld hl, $2404                                  ; $62FF: $21 $04 $24
    inc b                                         ; $6302: $04

jr_005_6303:
    dec h                                         ; $6303: $25
    inc b                                         ; $6304: $04
    ld d, l                                       ; $6305: $55
    ld h, $04                                     ; $6306: $26 $04
    daa                                           ; $6308: $27
    inc a                                         ; $6309: $3C
    dec bc                                        ; $630A: $0B
    inc b                                         ; $630B: $04
    inc bc                                        ; $630C: $03
    ld b, $7F                                     ; $630D: $06 $7F
    rlca                                          ; $630F: $07

jr_005_6310:
    ld d, h                                       ; $6310: $54
    ld [$0CA6], sp                                ; $6311: $08 $A6 $0C
    rst RST_08                                    ; $6314: $CF
    rst RST_08                                    ; $6315: $CF
    or $F5                                        ; $6316: $F6 $F5
    push de                                       ; $6318: $D5
    cpl                                           ; $6319: $2F
    cpl                                           ; $631A: $2F
    dec h                                         ; $631B: $25
    ld c, $04                                     ; $631C: $0E $04
    db $10                                        ; $631E: $10
    inc b                                         ; $631F: $04

jr_005_6320:
    ld a, d                                       ; $6320: $7A
    ld de, $1617                                  ; $6321: $11 $17 $16
    ld a, $D4                                     ; $6324: $3E $D4
    ld [hl+], a                                   ; $6326: $22
    inc b                                         ; $6327: $04
    inc hl                                        ; $6328: $23
    push af                                       ; $6329: $F5
    inc b                                         ; $632A: $04
    dec d                                         ; $632B: $15
    rlca                                          ; $632C: $07
    ld l, l                                       ; $632D: $6D
    dec de                                        ; $632E: $1B
    inc b                                         ; $632F: $04
    rrca                                          ; $6330: $0F
    inc b                                         ; $6331: $04
    ld e, a                                       ; $6332: $5F
    inc c                                         ; $6333: $0C
    inc b                                         ; $6334: $04
    ld [de], a                                    ; $6335: $12
    sbc a                                         ; $6336: $9F
    and [hl]                                      ; $6337: $A6
    rst RST_08                                    ; $6338: $CF
    rst RST_08                                    ; $6339: $CF
    dec h                                         ; $633A: $25
    ld [hl], l                                    ; $633B: $75
    jr z, jr_005_636D                             ; $633C: $28 $2F

    cpl                                           ; $633E: $2F
    ld l, $2A                                     ; $633F: $2E $2A
    inc b                                         ; $6341: $04
    dec hl                                        ; $6342: $2B
    inc b                                         ; $6343: $04
    ld a, l                                       ; $6344: $7D
    inc l                                         ; $6345: $2C
    rla                                           ; $6346: $17
    ld d, $FF                                     ; $6347: $16 $FF
    rlca                                          ; $6349: $07
    rlca                                          ; $634A: $07
    ld c, $04                                     ; $634B: $0E $04
    ld [hl], l                                    ; $634D: $75
    add hl, hl                                    ; $634E: $29
    inc a                                         ; $634F: $3C
    inc c                                         ; $6350: $0C
    inc b                                         ; $6351: $04
    db $10                                        ; $6352: $10
    inc b                                         ; $6353: $04
    ld de, $AB57                                  ; $6354: $11 $57 $AB
    inc c                                         ; $6357: $0C
    dec l                                         ; $6358: $2D
    inc b                                         ; $6359: $04
    ld l, $04                                     ; $635A: $2E $04
    cpl                                           ; $635C: $2F
    rst RST_08                                    ; $635D: $CF
    ld e, $FF                                     ; $635E: $1E $FF
    dec b                                         ; $6360: $05
    dec a                                         ; $6361: $3D
    rst RST_38                                    ; $6362: $FF
    inc l                                         ; $6363: $2C
    adc a                                         ; $6364: $8F
    daa                                           ; $6365: $27
    ld d, [hl]                                    ; $6366: $56
    rla                                           ; $6367: $17
    cp $3D                                        ; $6368: $FE $3D
    push de                                       ; $636A: $D5
    sbc h                                         ; $636B: $9C
    inc b                                         ; $636C: $04

jr_005_636D:
    ld [hl], h                                    ; $636D: $74
    rlca                                          ; $636E: $07
    inc b                                         ; $636F: $04
    jr z, jr_005_6320                             ; $6370: $28 $AE

    inc b                                         ; $6372: $04
    ld a, [hl+]                                   ; $6373: $2A
    inc b                                         ; $6374: $04
    inc l                                         ; $6375: $2C
    ld b, h                                       ; $6376: $44
    inc c                                         ; $6377: $0C
    inc b                                         ; $6378: $04
    dec hl                                        ; $6379: $2B
    rst RST_30                                    ; $637A: $F7
    inc b                                         ; $637B: $04
    dec d                                         ; $637C: $15
    rst RST_38                                    ; $637D: $FF
    dec b                                         ; $637E: $05
    jr nc, jr_005_6310                            ; $637F: $30 $8F

    and [hl]                                      ; $6381: $A6
    daa                                           ; $6382: $27
    xor e                                         ; $6383: $AB
    dec c                                         ; $6384: $0D
    ld sp, $3304                                  ; $6385: $31 $04 $33
    inc b                                         ; $6388: $04
    inc [hl]                                      ; $6389: $34
    adc a                                         ; $638A: $8F
    ld d, [hl]                                    ; $638B: $56
    ld e, a                                       ; $638C: $5F
    jr c, jr_005_6393                             ; $638D: $38 $04

    dec sp                                        ; $638F: $3B
    ccf                                           ; $6390: $3F
    ld a, $FD                                     ; $6391: $3E $FD

jr_005_6393:
    dec b                                         ; $6393: $05
    ld [hl], h                                    ; $6394: $74
    rst RST_18                                    ; $6395: $DF
    rrca                                          ; $6396: $0F
    ld c, $37                                     ; $6397: $0E $37
    inc b                                         ; $6399: $04
    xor l                                         ; $639A: $AD
    ld l, a                                       ; $639B: $6F
    ld l, h                                       ; $639C: $6C
    ccf                                           ; $639D: $3F
    cp l                                          ; $639E: $BD
    add $2E                                       ; $639F: $C6 $2E
    adc a                                         ; $63A1: $8F
    adc l                                         ; $63A2: $8D
    daa                                           ; $63A3: $27
    ld c, $32                                     ; $63A4: $0E $32
    inc b                                         ; $63A6: $04
    ld e, d                                       ; $63A7: $5A
    dec [hl]                                      ; $63A8: $35
    inc b                                         ; $63A9: $04
    ld [hl], $8F                                  ; $63AA: $36 $8F
    inc d                                         ; $63AC: $14
    add hl, sp                                    ; $63AD: $39
    inc b                                         ; $63AE: $04
    ld a, [hl-]                                   ; $63AF: $3A
    or a                                          ; $63B0: $B7
    inc b                                         ; $63B1: $04
    inc a                                         ; $63B2: $3C
    ccf                                           ; $63B3: $3F
    ld a, $3D                                     ; $63B4: $3E $3D
    xor [hl]                                      ; $63B6: $AE
    ld [hl], h                                    ; $63B7: $74
    rrca                                          ; $63B8: $0F
    rst RST_38                                    ; $63B9: $FF
    rst RST_38                                    ; $63BA: $FF
    ld l, a                                       ; $63BB: $6F
    ld l, a                                       ; $63BC: $6F
    ccf                                           ; $63BD: $3F
    rst RST_10                                    ; $63BE: $D7
    adc a                                         ; $63BF: $8F
    adc l                                         ; $63C0: $8D
    daa                                           ; $63C1: $27
    ccf                                           ; $63C2: $3F
    rlca                                          ; $63C3: $07
    ld a, $07                                     ; $63C4: $3E $07
    rlca                                          ; $63C6: $07
    rlca                                          ; $63C7: $07
    rlca                                          ; $63C8: $07
    rlca                                          ; $63C9: $07
    rlca                                          ; $63CA: $07
    rst RST_38                                    ; $63CB: $FF
    rlca                                          ; $63CC: $07
    rlca                                          ; $63CD: $07
    rlca                                          ; $63CE: $07
    rlca                                          ; $63CF: $07
    rlca                                          ; $63D0: $07
    rlca                                          ; $63D1: $07
    rlca                                          ; $63D2: $07
    rlca                                          ; $63D3: $07
    rst RST_18                                    ; $63D4: $DF
    rlca                                          ; $63D5: $07
    ld b, $3F                                     ; $63D6: $06 $3F
    rlca                                          ; $63D8: $07
    rlca                                          ; $63D9: $07
    rlca                                          ; $63DA: $07
    rlca                                          ; $63DB: $07
    rlca                                          ; $63DC: $07
    rst RST_38                                    ; $63DD: $FF
    rlca                                          ; $63DE: $07
    rlca                                          ; $63DF: $07
    rlca                                          ; $63E0: $07
    rlca                                          ; $63E1: $07
    rlca                                          ; $63E2: $07
    rlca                                          ; $63E3: $07
    rlca                                          ; $63E4: $07
    rlca                                          ; $63E5: $07
    rst RST_38                                    ; $63E6: $FF
    rlca                                          ; $63E7: $07
    rlca                                          ; $63E8: $07
    rlca                                          ; $63E9: $07
    rlca                                          ; $63EA: $07
    rlca                                          ; $63EB: $07
    rlca                                          ; $63EC: $07
    rlca                                          ; $63ED: $07
    rlca                                          ; $63EE: $07
    rst RST_38                                    ; $63EF: $FF
    rlca                                          ; $63F0: $07
    rlca                                          ; $63F1: $07
    rlca                                          ; $63F2: $07
    rlca                                          ; $63F3: $07
    rlca                                          ; $63F4: $07
    rlca                                          ; $63F5: $07
    rlca                                          ; $63F6: $07
    rlca                                          ; $63F7: $07
    ldh [rTAC], a                                 ; $63F8: $E0 $07
    rlca                                          ; $63FA: $07

jr_005_63FB:
    dec b                                         ; $63FB: $05
    nop                                           ; $63FC: $00
    jr nz, jr_005_63FF                            ; $63FD: $20 $00

jr_005_63FF:
    cpl                                           ; $63FF: $2F
    dec b                                         ; $6400: $05
    ld bc, $041D                                  ; $6401: $01 $1D $04
    jr jr_005_63FB                                ; $6404: $18 $F5

    rra                                           ; $6406: $1F
    rra                                           ; $6407: $1F
    cp d                                          ; $6408: $BA
    rra                                           ; $6409: $1F
    inc b                                         ; $640A: $04
    jr @-$09                                      ; $640B: $18 $F5

    ld [de], a                                    ; $640D: $12
    ld [bc], a                                    ; $640E: $02
    db $10                                        ; $640F: $10
    inc bc                                        ; $6410: $03
    ld a, [$E010]                                 ; $6411: $FA $10 $E0
    db $10                                        ; $6414: $10
    ld bc, $0651                                  ; $6415: $01 $51 $06
    db $10                                        ; $6418: $10
    rlca                                          ; $6419: $07
    ld [$F152], a                                 ; $641A: $EA $52 $F1
    ld bc, $1801                                  ; $641D: $01 $01 $18
    ld [$0610], sp                                ; $6420: $08 $10 $06
    db $DD                                        ; $6423: $DD
    jp c, Jump_000_0410                           ; $6424: $DA $10 $04

    jr @-$09                                      ; $6427: $18 $F5

    ld [de], a                                    ; $6429: $12
    dec bc                                        ; $642A: $0B
    db $10                                        ; $642B: $10
    ld d, l                                       ; $642C: $55
    ld c, $10                                     ; $642D: $0E $10
    rrca                                          ; $642F: $0F
    db $10                                        ; $6430: $10
    db $10                                        ; $6431: $10
    db $10                                        ; $6432: $10
    ld de, $5510                                  ; $6433: $11 $10 $55
    inc d                                         ; $6436: $14
    ld d, d                                       ; $6437: $52
    add hl, bc                                    ; $6438: $09
    db $10                                        ; $6439: $10
    ld d, $10                                     ; $643A: $16 $10
    rla                                           ; $643C: $17
    db $10                                        ; $643D: $10
    ld d, l                                       ; $643E: $55
    jr jr_005_6451                                ; $643F: $18 $10

    add hl, de                                    ; $6441: $19
    db $10                                        ; $6442: $10
    ld a, [de]                                    ; $6443: $1A
    db $10                                        ; $6444: $10
    ld b, $10                                     ; $6445: $06 $10
    ld d, l                                       ; $6447: $55

jr_005_6448:
    dec c                                         ; $6448: $0D
    ldh a, [c]                                    ; $6449: $F2
    ld a, [bc]                                    ; $644A: $0A
    db $10                                        ; $644B: $10
    ld [bc], a                                    ; $644C: $02
    db $10                                        ; $644D: $10
    ld bc, $7517                                  ; $644E: $01 $17 $75

jr_005_6451:
    inc b                                         ; $6451: $04
    jr jr_005_6448                                ; $6452: $18 $F4

    ld bc, $100C                                  ; $6454: $01 $0C $10
    dec c                                         ; $6457: $0D
    db $10                                        ; $6458: $10
    ld d, l                                       ; $6459: $55
    add hl, bc                                    ; $645A: $09
    db $10                                        ; $645B: $10
    db $10                                        ; $645C: $10
    db $10                                        ; $645D: $10
    ld [de], a                                    ; $645E: $12
    db $10                                        ; $645F: $10
    inc de                                        ; $6460: $13
    db $10                                        ; $6461: $10
    ld e, l                                       ; $6462: $5D
    dec d                                         ; $6463: $15
    db $10                                        ; $6464: $10
    ld c, $32                                     ; $6465: $0E $32
    ld de, $1BD3                                  ; $6467: $11 $D3 $1B
    or d                                          ; $646A: $B2
    ld d, l                                       ; $646B: $55
    ld de, $1410                                  ; $646C: $11 $10 $14
    db $F4                                        ; $646F: $F4
    rrca                                          ; $6470: $0F
    db $10                                        ; $6471: $10
    jr jr_005_6484                                ; $6472: $18 $10

    dec d                                         ; $6474: $15
    inc e                                         ; $6475: $1C
    rlca                                          ; $6476: $07
    ld bc, $051D                                  ; $6477: $01 $1D $05
    ld de, $101F                                  ; $647A: $11 $1F $10
    ld d, l                                       ; $647D: $55
    jr nz, jr_005_6490                            ; $647E: $20 $10

    db $10                                        ; $6480: $10
    db $10                                        ; $6481: $10
    ld c, $10                                     ; $6482: $0E $10

jr_005_6484:
    dec d                                         ; $6484: $15
    db $10                                        ; $6485: $10
    ld [hl], l                                    ; $6486: $75
    rrca                                          ; $6487: $0F
    ld [hl-], a                                   ; $6488: $32
    add hl, de                                    ; $6489: $19
    db $D3                                        ; $648A: $D3
    add hl, bc                                    ; $648B: $09
    db $10                                        ; $648C: $10
    inc de                                        ; $648D: $13
    ld hl, sp-$3C                                 ; $648E: $F8 $C4

jr_005_6490:
    or c                                          ; $6490: $B1
    ld sp, $071D                                  ; $6491: $31 $1D $07
    ld bc, $051D                                  ; $6494: $01 $1D $05
    ld e, $AA                                     ; $6497: $1E $AA
    db $10                                        ; $6499: $10
    ld hl, $1510                                  ; $649A: $21 $10 $15
    db $10                                        ; $649D: $10
    rrca                                          ; $649E: $0F
    db $10                                        ; $649F: $10
    add hl, bc                                    ; $64A0: $09
    cp c                                          ; $64A1: $B9
    db $10                                        ; $64A2: $10
    inc de                                        ; $64A3: $13
    ld [hl], d                                    ; $64A4: $72
    rra                                           ; $64A5: $1F
    ld d, $04                                     ; $64A6: $16 $04
    ld [hl+], a                                   ; $64A8: $22
    db $10                                        ; $64A9: $10
    pop de                                        ; $64AA: $D1
    ld sp, $2411                                  ; $64AB: $31 $11 $24
    db $10                                        ; $64AE: $10
    daa                                           ; $64AF: $27
    rlca                                          ; $64B0: $07
    ld bc, $0B1D                                  ; $64B1: $01 $1D $0B
    dec b                                         ; $64B4: $05
    cpl                                           ; $64B5: $2F
    inc b                                         ; $64B6: $04
    ld sp, $1510                                  ; $64B7: $31 $10 $15
    ld d, b                                       ; $64BA: $50
    ld d, $D7                                     ; $64BB: $16 $D7
    sub c                                         ; $64BD: $91
    db $10                                        ; $64BE: $10
    inc [hl]                                      ; $64BF: $34
    db $10                                        ; $64C0: $10
    ld [hl+], a                                   ; $64C1: $22
    rst RST_10                                    ; $64C2: $D7
    dec d                                         ; $64C3: $15
    ldh a, [$FFAA]                                ; $64C4: $F0 $AA
    ld de, $1034                                  ; $64C6: $11 $34 $10
    inc hl                                        ; $64C9: $23
    ld d, d                                       ; $64CA: $52
    dec h                                         ; $64CB: $25
    db $10                                        ; $64CC: $10
    ld h, $8A                                     ; $64CD: $26 $8A
    db $10                                        ; $64CF: $10
    ld bc, $2807                                  ; $64D0: $01 $07 $28
    db $10                                        ; $64D3: $10
    add hl, hl                                    ; $64D4: $29
    db $10                                        ; $64D5: $10
    ld a, [hl+]                                   ; $64D6: $2A
    xor d                                         ; $64D7: $AA
    db $10                                        ; $64D8: $10
    dec hl                                        ; $64D9: $2B
    db $10                                        ; $64DA: $10
    inc l                                         ; $64DB: $2C
    db $10                                        ; $64DC: $10
    dec l                                         ; $64DD: $2D
    db $10                                        ; $64DE: $10
    ld l, $82                                     ; $64DF: $2E $82
    db $10                                        ; $64E1: $10
    jr nc, jr_005_64E9                            ; $64E2: $30 $05

    ld bc, $3204                                  ; $64E4: $01 $04 $32
    db $10                                        ; $64E7: $10
    inc sp                                        ; $64E8: $33

jr_005_64E9:
    or l                                          ; $64E9: $B5
    ld d, b                                       ; $64EA: $50
    dec d                                         ; $64EB: $15
    dec d                                         ; $64EC: $15
    sub b                                         ; $64ED: $90
    dec [hl]                                      ; $64EE: $35
    db $10                                        ; $64EF: $10
    ld [hl], $10                                  ; $64F0: $36 $10
    ld [hl], h                                    ; $64F2: $74
    inc hl                                        ; $64F3: $23
    rst RST_10                                    ; $64F4: $D7
    dec d                                         ; $64F5: $15
    ldh a, [$FF35]                                ; $64F6: $F0 $35
    db $10                                        ; $64F8: $10
    ld [hl], $06                                  ; $64F9: $36 $06
    ld e, [hl]                                    ; $64FB: $5E
    scf                                           ; $64FC: $37
    db $10                                        ; $64FD: $10
    jr c, jr_005_653F                             ; $64FE: $38 $3F

    ccf                                           ; $6500: $3F
    ccf                                           ; $6501: $3F
    inc a                                         ; $6502: $3C
    add hl, sp                                    ; $6503: $39
    cp l                                          ; $6504: $BD
    db $10                                        ; $6505: $10
    ld a, [hl-]                                   ; $6506: $3A
    ccf                                           ; $6507: $3F
    ccf                                           ; $6508: $3F
    ccf                                           ; $6509: $3F
    inc a                                         ; $650A: $3C
    dec sp                                        ; $650B: $3B
    db $10                                        ; $650C: $10
    ld a, d                                       ; $650D: $7A
    inc a                                         ; $650E: $3C
    ccf                                           ; $650F: $3F
    ccf                                           ; $6510: $3F
    ccf                                           ; $6511: $3F
    inc a                                         ; $6512: $3C
    dec a                                         ; $6513: $3D
    db $10                                        ; $6514: $10
    ld a, $F7                                     ; $6515: $3E $F7
    ccf                                           ; $6517: $3F
    ccf                                           ; $6518: $3F
    ccf                                           ; $6519: $3F
    inc a                                         ; $651A: $3C
    ld bc, $1F1F                                  ; $651B: $01 $1F $1F
    rra                                           ; $651E: $1F
    add b                                         ; $651F: $80
    dec e                                         ; $6520: $1D
    daa                                           ; $6521: $27
    ld b, b                                       ; $6522: $40
    ld a, [hl+]                                   ; $6523: $2A
    rlca                                          ; $6524: $07
    ld bc, $0208                                  ; $6525: $01 $08 $02
    ld [$0803], sp                                ; $6528: $08 $03 $08
    inc b                                         ; $652B: $04
    rst RST_10                                    ; $652C: $D7
    rrca                                          ; $652D: $0F
    ld a, [bc]                                    ; $652E: $0A
    ld b, $10                                     ; $652F: $06 $10
    ld [$A808], sp                                ; $6531: $08 $08 $A8
    rrca                                          ; $6534: $0F
    push de                                       ; $6535: $D5
    rrca                                          ; $6536: $0F
    ld a, [bc]                                    ; $6537: $0A
    ld c, $C0                                     ; $6538: $0E $C0
    rrca                                          ; $653A: $0F
    ld [$0F10], sp                                ; $653B: $08 $10 $0F
    push de                                       ; $653E: $D5

jr_005_653F:
    ld l, b                                       ; $653F: $68
    add hl, bc                                    ; $6540: $09
    ld [de], a                                    ; $6541: $12
    ld [$A914], sp                                ; $6542: $08 $14 $A9
    rlca                                          ; $6545: $07
    dec bc                                        ; $6546: $0B
    ld e, a                                       ; $6547: $5F
    dec b                                         ; $6548: $05
    ld [$0803], sp                                ; $6549: $08 $03 $08
    ld d, b                                       ; $654C: $50
    rrca                                          ; $654D: $0F
    ld [$5511], sp                                ; $654E: $08 $11 $55
    add hl, bc                                    ; $6551: $09
    ld [$080A], sp                                ; $6552: $08 $0A $08
    dec bc                                        ; $6555: $0B
    ld [$3A0C], sp                                ; $6556: $08 $0C $3A
    or d                                          ; $6559: $B2
    dec c                                         ; $655A: $0D
    dec c                                         ; $655B: $0D
    ld e, d                                       ; $655C: $5A
    ld l, d                                       ; $655D: $6A
    ld b, $11                                     ; $655E: $06 $11
    ld [$EA10], sp                                ; $6560: $08 $10 $EA
    dec bc                                        ; $6563: $0B
    ld c, b                                       ; $6564: $48
    dec bc                                        ; $6565: $0B
    ld [de], a                                    ; $6566: $12
    ld [$0813], sp                                ; $6567: $08 $13 $08
    ld bc, $09AB                                  ; $656A: $01 $AB $09
    rlca                                          ; $656D: $07
    dec c                                         ; $656E: $0D
    dec b                                         ; $656F: $05
    ld [$0803], sp                                ; $6570: $08 $03 $08
    ld h, b                                       ; $6573: $60
    db $EB                                        ; $6574: $EB
    inc c                                         ; $6575: $0C
    nop                                           ; $6576: $00
    ld hl, sp+$09                                 ; $6577: $F8 $09
    ld [$0815], sp                                ; $6579: $08 $15 $08
    ld hl, sp-$16                                 ; $657C: $F8 $EA
    rrca                                          ; $657E: $0F
    rrca                                          ; $657F: $0F
    ld a, [bc]                                    ; $6580: $0A
    ld d, $CA                                     ; $6581: $16 $CA
    ld de, $044B                                  ; $6583: $11 $4B $04
    xor d                                         ; $6586: $AA
    add hl, bc                                    ; $6587: $09
    ld [de], a                                    ; $6588: $12
    ld [$0813], sp                                ; $6589: $08 $13 $08
    ld bc, $070B                                  ; $658C: $01 $0B $07
    xor a                                         ; $658F: $AF
    rrca                                          ; $6590: $0F
    ld [bc], a                                    ; $6591: $02
    ld [$0803], sp                                ; $6592: $08 $03 $08
    ld [hl], b                                    ; $6595: $70
    ld [$AF00], sp                                ; $6596: $08 $00 $AF
    add sp, $09                                   ; $6599: $E8 $09
    ld [$0815], sp                                ; $659B: $08 $15 $08
    ld hl, sp+$0F                                 ; $659E: $F8 $0F
    rrca                                          ; $65A0: $0F
    xor b                                         ; $65A1: $A8
    ld c, $16                                     ; $65A2: $0E $16
    ld [$0811], a                                 ; $65A4: $EA $11 $08
    rla                                           ; $65A7: $17
    inc b                                         ; $65A8: $04
    ld [de], a                                    ; $65A9: $12
    xor c                                         ; $65AA: $A9
    ld [$0814], sp                                ; $65AB: $08 $14 $08
    ld bc, $070D                                  ; $65AE: $01 $0D $07
    inc c                                         ; $65B1: $0C
    ld [$0A57], sp                                ; $65B2: $08 $57 $0A
    ld [$080B], sp                                ; $65B5: $08 $0B $08
    dec c                                         ; $65B8: $0D

jr_005_65B9:
    ld a, [hl-]                                   ; $65B9: $3A
    reti                                          ; $65BA: $D9


    dec c                                         ; $65BB: $0D
    ld d, l                                       ; $65BC: $55
    dec e                                         ; $65BD: $1D
    ld [$0810], sp                                ; $65BE: $08 $10 $08
    rra                                           ; $65C1: $1F
    ld [$0821], sp                                ; $65C2: $08 $21 $08
    ld e, a                                       ; $65C5: $5F
    ld [hl+], a                                   ; $65C6: $22
    ld [$5E23], sp                                ; $65C7: $08 $23 $5E
    dec e                                         ; $65CA: $1D
    add hl, bc                                    ; $65CB: $09
    sbc c                                         ; $65CC: $99
    ei                                            ; $65CD: $FB
    sub l                                         ; $65CE: $95
    ld [$0B04], sp                                ; $65CF: $08 $04 $0B
    ld [$080D], sp                                ; $65D2: $08 $0D $08
    ld a, [bc]                                    ; $65D5: $0A
    ld a, [hl+]                                   ; $65D6: $2A
    xor d                                         ; $65D7: $AA
    dec sp                                        ; $65D8: $3B
    ld bc, $0508                                  ; $65D9: $01 $08 $05
    adc b                                         ; $65DC: $88
    jr jr_005_65B9                                ; $65DD: $18 $DA

    add hl, de                                    ; $65DF: $19
    xor d                                         ; $65E0: $AA
    ld [$081A], sp                                ; $65E1: $08 $1A $08
    dec de                                        ; $65E4: $1B
    ld [$FA1C], sp                                ; $65E5: $08 $1C $FA
    ld e, $B5                                     ; $65E8: $1E $B5
    ld [$6E20], sp                                ; $65EA: $08 $20 $6E
    dec bc                                        ; $65ED: $0B

jr_005_65EE:
    inc h                                         ; $65EE: $24
    ld [$0825], sp                                ; $65EF: $08 $25 $08
    ld d, l                                       ; $65F2: $55
    ld h, $08                                     ; $65F3: $26 $08
    daa                                           ; $65F5: $27
    sbc d                                         ; $65F6: $9A
    jr z, jr_005_6601                             ; $65F7: $28 $08

    add hl, hl                                    ; $65F9: $29
    ld [$2A62], a                                 ; $65FA: $EA $62 $2A
    ld e, h                                       ; $65FD: $5C
    ei                                            ; $65FE: $FB
    ld c, $04                                     ; $65FF: $0E $04

jr_005_6601:
    inc de                                        ; $6601: $13
    ld [$AA01], sp                                ; $6602: $08 $01 $AA
    inc c                                         ; $6605: $0C
    dec b                                         ; $6606: $05
    ld e, b                                       ; $6607: $58
    dec hl                                        ; $6608: $2B

jr_005_6609:
    ld [$0810], sp                                ; $6609: $08 $10 $08
    inc l                                         ; $660C: $2C
    xor e                                         ; $660D: $AB
    ld [$1A2F], sp                                ; $660E: $08 $2F $1A
    ld d, $08                                     ; $6611: $16 $08
    add hl, bc                                    ; $6613: $09
    ld l, d                                       ; $6614: $6A
    ld e, e                                       ; $6615: $5B
    ld d, l                                       ; $6616: $55
    ld [hl-], a                                   ; $6617: $32
    ld [$0833], sp                                ; $6618: $08 $33 $08
    inc [hl]                                      ; $661B: $34
    ld [$1A35], sp                                ; $661C: $08 $35 $1A
    ld d, l                                       ; $661F: $55
    scf                                           ; $6620: $37
    ld a, h                                       ; $6621: $7C
    jr c, jr_005_65EE                             ; $6622: $38 $CA

    dec d                                         ; $6624: $15
    ld a, [hl-]                                   ; $6625: $3A
    db $10                                        ; $6626: $10
    inc c                                         ; $6627: $0C
    ld d, $39                                     ; $6628: $16 $39
    inc b                                         ; $662A: $04
    inc de                                        ; $662B: $13
    ld [$0F01], sp                                ; $662C: $08 $01 $0F
    ld [$2A02], sp                                ; $662F: $08 $02 $2A
    dec b                                         ; $6632: $05
    dec l                                         ; $6633: $2D
    ld [$0A2E], sp                                ; $6634: $08 $2E $0A
    jr nc, jr_005_6647                            ; $6637: $30 $0E

    ld sp, $88B6                                  ; $6639: $31 $B6 $88
    dec c                                         ; $663C: $0D
    adc h                                         ; $663D: $8C
    ld e, e                                       ; $663E: $5B
    ld [hl], $6B                                  ; $663F: $36 $6B
    ld [$F50A], sp                                ; $6641: $08 $0A $F5
    ld a, d                                       ; $6644: $7A
    ld c, c                                       ; $6645: $49
    ld a, l                                       ; $6646: $7D

jr_005_6647:
    adc e                                         ; $6647: $8B
    inc d                                         ; $6648: $14
    ld [$0B01], sp                                ; $6649: $08 $01 $0B
    xor d                                         ; $664C: $AA
    ld c, b                                       ; $664D: $48
    ld a, [hl-]                                   ; $664E: $3A
    ld c, $3B                                     ; $664F: $0E $3B
    ld [$0A3C], sp                                ; $6651: $08 $3C $0A
    dec a                                         ; $6654: $3D
    or a                                          ; $6655: $B7
    ld c, $3E                                     ; $6656: $0E $3E
    adc [hl]                                      ; $6658: $8E
    ld e, e                                       ; $6659: $5B
    ccf                                           ; $665A: $3F
    ld l, h                                       ; $665B: $6C
    ld a, e                                       ; $665C: $7B
    ld c, c                                       ; $665D: $49
    rst RST_28                                    ; $665E: $EF
    ld a, l                                       ; $665F: $7D
    adc a                                         ; $6660: $8F
    dec bc                                        ; $6661: $0B
    db $10                                        ; $6662: $10
    rrca                                          ; $6663: $0F
    rrca                                          ; $6664: $0F
    rrca                                          ; $6665: $0F
    rrca                                          ; $6666: $0F
    rst RST_38                                    ; $6667: $FF
    rrca                                          ; $6668: $0F
    rrca                                          ; $6669: $0F
    rrca                                          ; $666A: $0F
    rrca                                          ; $666B: $0F
    rrca                                          ; $666C: $0F
    rrca                                          ; $666D: $0F
    rrca                                          ; $666E: $0F
    rrca                                          ; $666F: $0F
    rst RST_38                                    ; $6670: $FF
    rrca                                          ; $6671: $0F
    rrca                                          ; $6672: $0F
    rrca                                          ; $6673: $0F
    rrca                                          ; $6674: $0F
    rrca                                          ; $6675: $0F
    rrca                                          ; $6676: $0F
    rrca                                          ; $6677: $0F
    rrca                                          ; $6678: $0F
    rst RST_38                                    ; $6679: $FF
    rrca                                          ; $667A: $0F
    rrca                                          ; $667B: $0F
    rrca                                          ; $667C: $0F
    rrca                                          ; $667D: $0F
    rrca                                          ; $667E: $0F
    rrca                                          ; $667F: $0F
    rrca                                          ; $6680: $0F
    rrca                                          ; $6681: $0F
    ldh a, [rIF]                                  ; $6682: $F0 $0F
    rrca                                          ; $6684: $0F
    rrca                                          ; $6685: $0F
    dec c                                         ; $6686: $0D
    jr z, jr_005_6609                             ; $6687: $28 $80

    dec hl                                        ; $6689: $2B
    ld b, $01                                     ; $668A: $06 $01
    inc b                                         ; $668C: $04
    ld [bc], a                                    ; $668D: $02
    inc b                                         ; $668E: $04
    dec b                                         ; $668F: $05
    inc b                                         ; $6690: $04
    ld bc, $0855                                  ; $6691: $01 $55 $08
    inc b                                         ; $6694: $04
    add hl, bc                                    ; $6695: $09
    inc b                                         ; $6696: $04
    inc c                                         ; $6697: $0C
    inc b                                         ; $6698: $04
    dec c                                         ; $6699: $0D
    inc b                                         ; $669A: $04
    ld e, d                                       ; $669B: $5A
    inc bc                                        ; $669C: $03
    inc b                                         ; $669D: $04
    rlca                                          ; $669E: $07
    rlca                                          ; $669F: $07
    nop                                           ; $66A0: $00
    db $10                                        ; $66A1: $10
    inc b                                         ; $66A2: $04
    ld de, $1197                                  ; $66A3: $11 $97 $11
    inc b                                         ; $66A6: $04
    inc d                                         ; $66A7: $14
    inc b                                         ; $66A8: $04
    dec d                                         ; $66A9: $15
    dec d                                         ; $66AA: $15
    ld bc, $FF56                                  ; $66AB: $01 $56 $FF
    sbc a                                         ; $66AE: $9F
    ld [hl], l                                    ; $66AF: $75
    sbc a                                         ; $66B0: $9F
    sbc a                                         ; $66B1: $9F
    dec h                                         ; $66B2: $25
    ld c, a                                       ; $66B3: $4F
    ld bc, $F54D                                  ; $66B4: $01 $4D $F5
    dec d                                         ; $66B7: $15
    adc b                                         ; $66B8: $88
    cp a                                          ; $66B9: $BF
    inc b                                         ; $66BA: $04
    ld a, [bc]                                    ; $66BB: $0A
    inc b                                         ; $66BC: $04
    dec bc                                        ; $66BD: $0B
    inc b                                         ; $66BE: $04
    ld e, l                                       ; $66BF: $5D
    ld c, $04                                     ; $66C0: $0E $04
    rrca                                          ; $66C2: $0F
    cpl                                           ; $66C3: $2F
    rlca                                          ; $66C4: $07
    nop                                           ; $66C5: $00
    ld [de], a                                    ; $66C6: $12
    inc b                                         ; $66C7: $04
    ld a, a                                       ; $66C8: $7F
    inc de                                        ; $66C9: $13
    rst RST_38                                    ; $66CA: $FF
    rst RST_38                                    ; $66CB: $FF
    cp $B7                                        ; $66CC: $FE $B7
    sbc l                                         ; $66CE: $9D
    ld [hl], a                                    ; $66CF: $77
    sbc a                                         ; $66D0: $9F
    ei                                            ; $66D1: $FB
    sbc a                                         ; $66D2: $9F
    ld c, a                                       ; $66D3: $4F
    dec b                                         ; $66D4: $05
    rst RST_28                                    ; $66D5: $EF
    add e                                         ; $66D6: $83
    db $10                                        ; $66D7: $10
    rra                                           ; $66D8: $1F
    ld h, $D7                                     ; $66D9: $26 $D7
    inc e                                         ; $66DB: $1C
    inc b                                         ; $66DC: $04
    ld de, $1704                                  ; $66DD: $11 $04 $17
    cp a                                          ; $66E0: $BF
    inc bc                                        ; $66E1: $03
    cp $5F                                        ; $66E2: $FE $5F
    add hl, de                                    ; $66E4: $19
    inc b                                         ; $66E5: $04
    dec de                                        ; $66E6: $1B
    rra                                           ; $66E7: $1F
    inc bc                                        ; $66E8: $03
    ld l, a                                       ; $66E9: $6F
    ld l, a                                       ; $66EA: $6F
    inc bc                                        ; $66EB: $03
    db $EC                                        ; $66EC: $EC
    inc bc                                        ; $66ED: $03
    ld a, $35                                     ; $66EE: $3E $35
    inc de                                        ; $66F0: $13
    ld d, a                                       ; $66F1: $57
    ld l, $12                                     ; $66F2: $2E $12
    dec b                                         ; $66F4: $05
    ld a, e                                       ; $66F5: $7B
    ld d, $04                                     ; $66F6: $16 $04
    rst RST_10                                    ; $66F8: $D7
    inc e                                         ; $66F9: $1C
    ld b, [hl]                                    ; $66FA: $46
    jr jr_005_674C                                ; $66FB: $18 $4F

    add e                                         ; $66FD: $83
    xor a                                         ; $66FE: $AF
    cp $1A                                        ; $66FF: $FE $1A
    inc b                                         ; $6701: $04
    inc e                                         ; $6702: $1C
    rra                                           ; $6703: $1F
    xor a                                         ; $6704: $AF
    ld l, a                                       ; $6705: $6F
    ld l, [hl]                                    ; $6706: $6E
    cp $03                                        ; $6707: $FE $03
    inc bc                                        ; $6709: $03
    xor a                                         ; $670A: $AF
    scf                                           ; $670B: $37
    ld d, [hl]                                    ; $670C: $56
    rst RST_28                                    ; $670D: $EF
    inc b                                         ; $670E: $04
    ld e, $FD                                     ; $670F: $1E $FD
    ld c, $07                                     ; $6711: $0E $07
    ld b, $4F                                     ; $6713: $06 $4F
    add e                                         ; $6715: $83
    cp $22                                        ; $6716: $FE $22
    inc b                                         ; $6718: $04
    ld a, [hl]                                    ; $6719: $7E
    inc hl                                        ; $671A: $23
    and $47                                       ; $671B: $E6 $47
    dec b                                         ; $671D: $05
    inc bc                                        ; $671E: $03
    inc bc                                        ; $671F: $03
    ld bc, $F610                                  ; $6720: $01 $10 $F6
    ld c, a                                       ; $6723: $4F
    rst RST_10                                    ; $6724: $D7
    ld d, $05                                     ; $6725: $16 $05
    dec e                                         ; $6727: $1D
    rst RST_28                                    ; $6728: $EF
    inc b                                         ; $6729: $04
    rra                                           ; $672A: $1F
    xor a                                         ; $672B: $AF
    inc b                                         ; $672C: $04
    jr nz, jr_005_6733                            ; $672D: $20 $04

    ld hl, $074F                                  ; $672F: $21 $4F $07
    ld h, a                                       ; $6732: $67

jr_005_6733:
    sub [hl]                                      ; $6733: $96
    xor a                                         ; $6734: $AF
    db $FD                                        ; $6735: $FD
    inc d                                         ; $6736: $14
    inc b                                         ; $6737: $04
    dec d                                         ; $6738: $15
    rst RST_20                                    ; $6739: $E7
    inc bc                                        ; $673A: $03
    inc bc                                        ; $673B: $03
    cp a                                          ; $673C: $BF
    db $FD                                        ; $673D: $FD
    adc l                                         ; $673E: $8D
    ld b, [hl]                                    ; $673F: $46
    inc b                                         ; $6740: $04
    rst RST_10                                    ; $6741: $D7
    sbc a                                         ; $6742: $9F
    ld b, $24                                     ; $6743: $06 $24
    rst RST_28                                    ; $6745: $EF
    xor a                                         ; $6746: $AF
    ld c, $27                                     ; $6747: $0E $27
    inc b                                         ; $6749: $04
    add hl, hl                                    ; $674A: $29
    ld c, a                                       ; $674B: $4F

jr_005_674C:
    rlca                                          ; $674C: $07
    rst RST_38                                    ; $674D: $FF
    adc l                                         ; $674E: $8D
    ld a, [hl+]                                   ; $674F: $2A
    ld b, $2C                                     ; $6750: $06 $2C
    inc b                                         ; $6752: $04
    dec l                                         ; $6753: $2D
    inc b                                         ; $6754: $04
    jr nc, jr_005_675B                            ; $6755: $30 $04

    ld l, $FF                                     ; $6757: $2E $FF
    push bc                                       ; $6759: $C5
    dec a                                         ; $675A: $3D

jr_005_675B:
    inc d                                         ; $675B: $14
    rlca                                          ; $675C: $07
    ld b, $6E                                     ; $675D: $06 $6E
    adc l                                         ; $675F: $8D
    ld a, $D5                                     ; $6760: $3E $D5
    rst RST_10                                    ; $6762: $D7
    sub $2B                                       ; $6763: $D6 $2B
    inc b                                         ; $6765: $04
    dec h                                         ; $6766: $25
    inc b                                         ; $6767: $04
    ld h, $EF                                     ; $6768: $26 $EF
    xor a                                         ; $676A: $AF
    ld c, $28                                     ; $676B: $0E $28
    inc b                                         ; $676D: $04
    ld a, [hl+]                                   ; $676E: $2A
    ld c, a                                       ; $676F: $4F
    ld c, l                                       ; $6770: $4D
    rst RST_18                                    ; $6771: $DF
    rst RST_10                                    ; $6772: $D7
    cp a                                          ; $6773: $BF
    inc c                                         ; $6774: $0C
    cpl                                           ; $6775: $2F
    or $FF                                        ; $6776: $F6 $FF
    push bc                                       ; $6778: $C5
    ld d, a                                       ; $6779: $57
    ld d, a                                       ; $677A: $57
    dec l                                         ; $677B: $2D
    ld a, [$8DE5]                                 ; $677C: $FA $E5 $8D
    dec a                                         ; $677F: $3D
    rst RST_10                                    ; $6780: $D7
    rst RST_10                                    ; $6781: $D7
    add hl, hl                                    ; $6782: $29
    inc b                                         ; $6783: $04
    ld sp, $04B5                                  ; $6784: $31 $B5 $04
    ld [hl-], a                                   ; $6787: $32
    rst RST_28                                    ; $6788: $EF
    ld c, $35                                     ; $6789: $0E $35
    inc b                                         ; $678B: $04
    ld [hl], $4F                                  ; $678C: $36 $4F
    db $ED                                        ; $678E: $ED
    ld c, l                                       ; $678F: $4D
    rst RST_18                                    ; $6790: $DF
    inc b                                         ; $6791: $04
    scf                                           ; $6792: $37
    sub l                                         ; $6793: $95
    ld e, $38                                     ; $6794: $1E $38
    inc b                                         ; $6796: $04
    ld a, a                                       ; $6797: $7F
    add hl, sp                                    ; $6798: $39
    ld h, $57                                     ; $6799: $26 $57
    ld d, a                                       ; $679B: $57
    ld d, a                                       ; $679C: $57
    adc a                                         ; $679D: $8F
    dec b                                         ; $679E: $05
    rst RST_10                                    ; $679F: $D7
    adc l                                         ; $67A0: $8D
    rst RST_10                                    ; $67A1: $D7
    ld a, [hl+]                                   ; $67A2: $2A
    inc b                                         ; $67A3: $04
    inc sp                                        ; $67A4: $33
    rlca                                          ; $67A5: $07
    inc b                                         ; $67A6: $04
    inc [hl]                                      ; $67A7: $34
    rrca                                          ; $67A8: $0F
    rst RST_38                                    ; $67A9: $FF
    daa                                           ; $67AA: $27
    rlca                                          ; $67AB: $07
    rlca                                          ; $67AC: $07
    rlca                                          ; $67AD: $07
    ld c, a                                       ; $67AE: $4F
    rla                                           ; $67AF: $17
    rlca                                          ; $67B0: $07
    ld h, $FD                                     ; $67B1: $26 $FD
    cpl                                           ; $67B3: $2F
    rra                                           ; $67B4: $1F
    rla                                           ; $67B5: $17
    rra                                           ; $67B6: $1F
    rla                                           ; $67B7: $17
    dec d                                         ; $67B8: $15
    ld a, [hl-]                                   ; $67B9: $3A
    inc b                                         ; $67BA: $04
    ld e, a                                       ; $67BB: $5F
    dec sp                                        ; $67BC: $3B
    inc b                                         ; $67BD: $04
    dec a                                         ; $67BE: $3D
    rlca                                          ; $67BF: $07
    ld b, $2F                                     ; $67C0: $06 $2F
    rra                                           ; $67C2: $1F
    rra                                           ; $67C3: $1F
    rst RST_38                                    ; $67C4: $FF
    rra                                           ; $67C5: $1F
    rla                                           ; $67C6: $17
    scf                                           ; $67C7: $37
    rra                                           ; $67C8: $1F
    rlca                                          ; $67C9: $07
    daa                                           ; $67CA: $27
    ld d, a                                       ; $67CB: $57
    rla                                           ; $67CC: $17
    rst RST_08                                    ; $67CD: $CF
    cpl                                           ; $67CE: $2F
    ld c, [hl]                                    ; $67CF: $4E
    ld b, $3C                                     ; $67D0: $06 $3C
    rlca                                          ; $67D2: $07
    rlca                                          ; $67D3: $07
    rlca                                          ; $67D4: $07
    rlca                                          ; $67D5: $07
    rst RST_38                                    ; $67D6: $FF
    rlca                                          ; $67D7: $07
    rlca                                          ; $67D8: $07
    rlca                                          ; $67D9: $07
    rlca                                          ; $67DA: $07
    rlca                                          ; $67DB: $07
    rlca                                          ; $67DC: $07
    rlca                                          ; $67DD: $07
    rlca                                          ; $67DE: $07
    rst RST_30                                    ; $67DF: $F7
    rlca                                          ; $67E0: $07
    rlca                                          ; $67E1: $07
    rlca                                          ; $67E2: $07
    ld b, $3E                                     ; $67E3: $06 $3E
    rlca                                          ; $67E5: $07
    rlca                                          ; $67E6: $07
    rlca                                          ; $67E7: $07
    rst RST_38                                    ; $67E8: $FF
    rlca                                          ; $67E9: $07
    rlca                                          ; $67EA: $07
    rlca                                          ; $67EB: $07
    rlca                                          ; $67EC: $07
    rlca                                          ; $67ED: $07
    rlca                                          ; $67EE: $07
    rlca                                          ; $67EF: $07
    rlca                                          ; $67F0: $07
    ld hl, sp+$07                                 ; $67F1: $F8 $07
    rlca                                          ; $67F3: $07
    rlca                                          ; $67F4: $07
    rlca                                          ; $67F5: $07
    dec b                                         ; $67F6: $05
    rra                                           ; $67F7: $1F
    nop                                           ; $67F8: $00
    dec hl                                        ; $67F9: $2B
    inc b                                         ; $67FA: $04
    ld bc, $0210                                  ; $67FB: $01 $10 $02
    db $10                                        ; $67FE: $10
    inc bc                                        ; $67FF: $03
    ld d, h                                       ; $6800: $54
    ld sp, $73EA                                  ; $6801: $31 $EA $73
    inc de                                        ; $6804: $13
    ld [hl], e                                    ; $6805: $73
    ld b, $10                                     ; $6806: $06 $10
    rlca                                          ; $6808: $07
    db $10                                        ; $6809: $10
    add hl, bc                                    ; $680A: $09
    xor e                                         ; $680B: $AB
    db $10                                        ; $680C: $10
    ld a, [bc]                                    ; $680D: $0A
    db $10                                        ; $680E: $10
    dec bc                                        ; $680F: $0B
    db $F4                                        ; $6810: $F4
    ld [bc], a                                    ; $6811: $02
    ld d, d                                       ; $6812: $52
    inc de                                        ; $6813: $13
    rst RST_38                                    ; $6814: $FF
    sub a                                         ; $6815: $97
    ld [hl], c                                    ; $6816: $71
    ld sp, $1395                                  ; $6817: $31 $95 $13
    sbc c                                         ; $681A: $99
    or l                                          ; $681B: $B5
    ld bc, $0555                                  ; $681C: $01 $55 $05
    db $10                                        ; $681F: $10
    ld [$0C18], sp                                ; $6820: $08 $18 $0C
    db $10                                        ; $6823: $10
    dec c                                         ; $6824: $0D
    db $10                                        ; $6825: $10
    ld e, e                                       ; $6826: $5B
    ld bc, $0310                                  ; $6827: $01 $10 $03
    ld [hl], $11                                  ; $682A: $36 $11
    ld [bc], a                                    ; $682C: $02
    ld d, h                                       ; $682D: $54
    inc de                                        ; $682E: $13
    push de                                       ; $682F: $D5
    push af                                       ; $6830: $F5
    sbc c                                         ; $6831: $99
    ld [bc], a                                    ; $6832: $02
    ld d, h                                       ; $6833: $54
    ld c, $10                                     ; $6834: $0E $10
    ld de, $5510                                  ; $6836: $11 $10 $55
    ld [$1210], sp                                ; $6839: $08 $10 $12
    db $10                                        ; $683C: $10
    inc de                                        ; $683D: $13
    db $10                                        ; $683E: $10
    ld d, $10                                     ; $683F: $16 $10
    ld d, l                                       ; $6841: $55
    rla                                           ; $6842: $17
    db $10                                        ; $6843: $10
    ld a, [de]                                    ; $6844: $1A
    or d                                          ; $6845: $B2
    dec e                                         ; $6846: $1D
    db $10                                        ; $6847: $10
    ld e, $10                                     ; $6848: $1E $10
    ld d, a                                       ; $684A: $57
    ld bc, $0316                                  ; $684B: $01 $16 $03
    ld d, h                                       ; $684E: $54
    ld [bc], a                                    ; $684F: $02
    sub $71                                       ; $6850: $D6 $71
    sub a                                         ; $6852: $97
    ld d, l                                       ; $6853: $55
    inc bc                                        ; $6854: $03
    halt                                          ; $6855: $76
    rrca                                          ; $6856: $0F
    db $10                                        ; $6857: $10
    db $10                                        ; $6858: $10
    db $10                                        ; $6859: $10
    ld [$5510], sp                                ; $685A: $08 $10 $55
    ld [de], a                                    ; $685D: $12
    db $10                                        ; $685E: $10
    inc d                                         ; $685F: $14
    db $10                                        ; $6860: $10
    dec d                                         ; $6861: $15
    db $10                                        ; $6862: $10
    jr jr_005_6875                                ; $6863: $18 $10

    ld d, l                                       ; $6865: $55
    add hl, de                                    ; $6866: $19
    db $10                                        ; $6867: $10
    dec de                                        ; $6868: $1B
    db $10                                        ; $6869: $10
    inc e                                         ; $686A: $1C
    db $10                                        ; $686B: $10
    rra                                           ; $686C: $1F
    db $10                                        ; $686D: $10
    ld d, [hl]                                    ; $686E: $56
    jr nz, jr_005_6881                            ; $686F: $20 $10

    ld bc, $0212                                  ; $6871: $01 $12 $02
    ld d, h                                       ; $6874: $54

jr_005_6875:
    inc de                                        ; $6875: $13
    inc bc                                        ; $6876: $03
    push de                                       ; $6877: $D5
    call c, Call_000_211B                         ; $6878: $DC $1B $21
    db $10                                        ; $687B: $10
    dec d                                         ; $687C: $15
    db $10                                        ; $687D: $10
    ld [$5514], sp                                ; $687E: $08 $14 $55

jr_005_6881:
    inc hl                                        ; $6881: $23
    db $10                                        ; $6882: $10
    inc h                                         ; $6883: $24
    db $10                                        ; $6884: $10
    rra                                           ; $6885: $1F
    db $10                                        ; $6886: $10
    inc de                                        ; $6887: $13
    db $10                                        ; $6888: $10
    ld d, l                                       ; $6889: $55
    ld h, $10                                     ; $688A: $26 $10
    daa                                           ; $688C: $27
    db $10                                        ; $688D: $10
    jr z, jr_005_68A0                             ; $688E: $28 $10

    add hl, hl                                    ; $6890: $29
    db $10                                        ; $6891: $10
    ld [hl], l                                    ; $6892: $75
    ld bc, $1F1F                                  ; $6893: $01 $1F $1F
    inc d                                         ; $6896: $14
    ld [hl+], a                                   ; $6897: $22
    db $10                                        ; $6898: $10
    inc e                                         ; $6899: $1C
    ld [de], a                                    ; $689A: $12
    ld d, l                                       ; $689B: $55
    ld d, $10                                     ; $689C: $16 $10
    ld [de], a                                    ; $689E: $12
    ld [hl], h                                    ; $689F: $74

jr_005_68A0:
    dec h                                         ; $68A0: $25
    db $10                                        ; $68A1: $10
    dec d                                         ; $68A2: $15
    db $10                                        ; $68A3: $10
    ld l, d                                       ; $68A4: $6A
    ld h, $72                                     ; $68A5: $26 $72
    ld sp, $102A                                  ; $68A7: $31 $2A $10
    ld bc, $0312                                  ; $68AA: $01 $12 $03
    ld [$1F54], a                                 ; $68AD: $EA $54 $1F
    dec de                                        ; $68B0: $1B
    jr nc, jr_005_68C3                            ; $68B1: $30 $10

    ld h, $10                                     ; $68B3: $26 $10
    dec d                                         ; $68B5: $15
    xor l                                         ; $68B6: $AD
    inc [hl]                                      ; $68B7: $34
    inc e                                         ; $68B8: $1C
    ld d, d                                       ; $68B9: $52
    inc de                                        ; $68BA: $13
    ld [hl-], a                                   ; $68BB: $32
    dec d                                         ; $68BC: $15
    inc sp                                        ; $68BD: $33
    db $10                                        ; $68BE: $10
    ld h, l                                       ; $68BF: $65
    ld bc, $131F                                  ; $68C0: $01 $1F $13

jr_005_68C3:
    dec b                                         ; $68C3: $05
    dec hl                                        ; $68C4: $2B
    db $10                                        ; $68C5: $10
    inc l                                         ; $68C6: $2C
    db $10                                        ; $68C7: $10
    ld d, a                                       ; $68C8: $57
    dec l                                         ; $68C9: $2D
    db $10                                        ; $68CA: $10
    ld l, $10                                     ; $68CB: $2E $10
    cpl                                           ; $68CD: $2F
    db $10                                        ; $68CE: $10
    or c                                          ; $68CF: $B1
    ld [de], a                                    ; $68D0: $12
    ld l, $04                                     ; $68D1: $2E $04
    ld sp, $3210                                  ; $68D3: $31 $10 $32
    ccf                                           ; $68D6: $3F
    inc [hl]                                      ; $68D7: $34
    ld de, $AA01                                  ; $68D8: $11 $01 $AA
    inc de                                        ; $68DB: $13
    dec b                                         ; $68DC: $05
    dec d                                         ; $68DD: $15
    cpl                                           ; $68DE: $2F
    db $10                                        ; $68DF: $10
    ld l, $10                                     ; $68E0: $2E $10
    inc [hl]                                      ; $68E2: $34
    xor d                                         ; $68E3: $AA
    db $10                                        ; $68E4: $10
    dec [hl]                                      ; $68E5: $35
    db $10                                        ; $68E6: $10
    ld [hl], $10                                  ; $68E7: $36 $10
    scf                                           ; $68E9: $37

jr_005_68EA:
    db $10                                        ; $68EA: $10
    jr c, jr_005_68EA                             ; $68EB: $38 $FD

    inc [hl]                                      ; $68ED: $34
    ld d, l                                       ; $68EE: $55
    ccf                                           ; $68EF: $3F
    ccf                                           ; $68F0: $3F
    ccf                                           ; $68F1: $3F
    ld sp, $1039                                  ; $68F2: $31 $39 $10
    ld a, d                                       ; $68F5: $7A
    ld a, [hl-]                                   ; $68F6: $3A
    ccf                                           ; $68F7: $3F
    ccf                                           ; $68F8: $3F
    ccf                                           ; $68F9: $3F
    inc a                                         ; $68FA: $3C
    dec sp                                        ; $68FB: $3B
    db $10                                        ; $68FC: $10
    inc a                                         ; $68FD: $3C
    push af                                       ; $68FE: $F5
    ccf                                           ; $68FF: $3F
    ccf                                           ; $6900: $3F
    ccf                                           ; $6901: $3F
    inc a                                         ; $6902: $3C
    dec a                                         ; $6903: $3D
    db $10                                        ; $6904: $10
    ld a, $3F                                     ; $6905: $3E $3F
    db $EB                                        ; $6907: $EB
    ccf                                           ; $6908: $3F
    ccf                                           ; $6909: $3F
    inc a                                         ; $690A: $3C
    ccf                                           ; $690B: $3F
    db $10                                        ; $690C: $10
    ld [$3F3F], sp                                ; $690D: $08 $3F $3F
    ldh a, [$FF36]                                ; $6910: $F0 $36
    db $DD                                        ; $6912: $DD
    dec [hl]                                      ; $6913: $35
    db $10                                        ; $6914: $10
    ld h, $40                                     ; $6915: $26 $40
    ld a, [hl+]                                   ; $6917: $2A
    inc b                                         ; $6918: $04
    ld bc, $0208                                  ; $6919: $01 $08 $02
    inc e                                         ; $691C: $1C
    dec b                                         ; $691D: $05
    ld [$AB06], sp                                ; $691E: $08 $06 $AB
    db $10                                        ; $6921: $10
    add hl, bc                                    ; $6922: $09
    ld a, [bc]                                    ; $6923: $0A
    inc c                                         ; $6924: $0C
    ld a, [de]                                    ; $6925: $1A
    rrca                                          ; $6926: $0F
    ld c, h                                       ; $6927: $4C
    add hl, hl                                    ; $6928: $29
    or $3B                                        ; $6929: $F6 $3B
    rra                                           ; $692B: $1F
    rst RST_18                                    ; $692C: $DF
    ld [$1004], sp                                ; $692D: $08 $04 $10
    ld [$AB06], sp                                ; $6930: $08 $06 $AB
    ld [$0801], sp                                ; $6933: $08 $01 $08
    ld [bc], a                                    ; $6936: $02
    ld e, $03                                     ; $6937: $1E $03
    ld [hl], c                                    ; $6939: $71
    inc e                                         ; $693A: $1C
    ld d, l                                       ; $693B: $55
    rlca                                          ; $693C: $07
    ld [$0808], sp                                ; $693D: $08 $08 $08
    ld a, [bc]                                    ; $6940: $0A

jr_005_6941:
    ld [$D00B], sp                                ; $6941: $08 $0B $D0
    ld d, l                                       ; $6944: $55
    dec c                                         ; $6945: $0D
    ld [$080E], sp                                ; $6946: $08 $0E $08
    db $10                                        ; $6949: $10
    ld [$0811], sp                                ; $694A: $08 $11 $08
    ld d, a                                       ; $694D: $57
    ld [de], a                                    ; $694E: $12
    ld [$0C13], sp                                ; $694F: $08 $13 $0C
    inc d                                         ; $6952: $14
    xor c                                         ; $6953: $A9
    sbc a                                         ; $6954: $9F
    sbc d                                         ; $6955: $9A
    call nc, $086A                                ; $6956: $D4 $6A $08
    rlca                                          ; $6959: $07
    ld [$0808], sp                                ; $695A: $08 $08 $08
    inc bc                                        ; $695D: $03
    dec b                                         ; $695E: $05
    ld [$1B10], a                                 ; $695F: $EA $10 $1B
    ld [$0815], sp                                ; $6962: $08 $15 $08
    rrca                                          ; $6965: $0F
    ld [$FA09], sp                                ; $6966: $08 $09 $FA
    dec de                                        ; $6969: $1B
    ld d, c                                       ; $696A: $51
    ld [$08E0], sp                                ; $696B: $08 $E0 $08
    ld d, $08                                     ; $696E: $16 $08
    ld [bc], a                                    ; $6970: $02
    xor d                                         ; $6971: $AA
    jr nz, jr_005_698B                            ; $6972: $20 $17

    ld [$0818], sp                                ; $6974: $08 $18 $08
    add hl, de                                    ; $6977: $19
    ld [$AA1A], sp                                ; $6978: $08 $1A $AA
    ld [$081B], sp                                ; $697B: $08 $1B $08
    inc e                                         ; $697E: $1C
    ld [$081D], sp                                ; $697F: $08 $1D $08
    ld e, $B5                                     ; $6982: $1E $B5
    ld [$A91F], sp                                ; $6984: $08 $1F $A9
    sbc d                                         ; $6987: $9A
    ld c, $08                                     ; $6988: $0E $08
    db $10                                        ; $698A: $10

jr_005_698B:
    ld [$115B], sp                                ; $698B: $08 $5B $11
    ld [$6B12], sp                                ; $698E: $08 $12 $6B
    ld [$0805], sp                                ; $6991: $08 $05 $08
    jr nc, jr_005_6941                            ; $6994: $30 $AB

    db $10                                        ; $6996: $10
    add hl, bc                                    ; $6997: $09
    ld c, $0C                                     ; $6998: $0E $0C
    inc l                                         ; $699A: $2C
    rrca                                          ; $699B: $0F
    add hl, de                                    ; $699C: $19
    sbc b                                         ; $699D: $98
    ld d, a                                       ; $699E: $57
    rlca                                          ; $699F: $07
    ld [$0808], sp                                ; $69A0: $08 $08 $08
    inc bc                                        ; $69A3: $03
    pop de                                        ; $69A4: $D1
    rra                                           ; $69A5: $1F
    ld [$157A], sp                                ; $69A6: $08 $7A $15
    ld e, a                                       ; $69A9: $5F
    ld a, a                                       ; $69AA: $7F
    ld e, a                                       ; $69AB: $5F
    ld [$0807], sp                                ; $69AC: $08 $07 $08
    ld [$38AC], sp                                ; $69AF: $08 $AC $38
    add hl, bc                                    ; $69B2: $09
    ld [$0A0F], sp                                ; $69B3: $08 $0F $0A
    add hl, hl                                    ; $69B6: $29
    inc c                                         ; $69B7: $0C
    ld b, $55                                     ; $69B8: $06 $55
    ld [de], a                                    ; $69BA: $12
    ld [$0813], sp                                ; $69BB: $08 $13 $08
    inc d                                         ; $69BE: $14
    adc b                                         ; $69BF: $88
    jr nz, jr_005_69CA                            ; $69C0: $20 $08

    ld e, a                                       ; $69C2: $5F
    ld [hl+], a                                   ; $69C3: $22
    ld [$AC23], sp                                ; $69C4: $08 $23 $AC
    add hl, de                                    ; $69C7: $19
    dec c                                         ; $69C8: $0D
    ret z                                         ; $69C9: $C8

jr_005_69CA:
    ld l, [hl]                                    ; $69CA: $6E
    db $ED                                        ; $69CB: $ED
    adc a                                         ; $69CC: $8F
    ld a, c                                       ; $69CD: $79
    ld c, [hl]                                    ; $69CE: $4E
    inc b                                         ; $69CF: $04
    db $10                                        ; $69D0: $10
    ld [$0826], sp                                ; $69D1: $08 $26 $08
    dec d                                         ; $69D4: $15
    daa                                           ; $69D5: $27
    ld b, $0D                                     ; $69D6: $06 $0D
    ld [$080E], sp                                ; $69D8: $08 $0E $08
    db $10                                        ; $69DB: $10
    ld [$1155], sp                                ; $69DC: $08 $55 $11
    ld a, [bc]                                    ; $69DF: $0A
    ld [de], a                                    ; $69E0: $12
    ld [$781F], sp                                ; $69E1: $08 $1F $78
    ld hl, $5508                                  ; $69E4: $21 $08 $55
    inc h                                         ; $69E7: $24
    ld [$FC25], sp                                ; $69E8: $08 $25 $FC
    rrca                                          ; $69EB: $0F
    ld e, $0C                                     ; $69EC: $1E $0C
    ld l, a                                       ; $69EE: $6F
    push hl                                       ; $69EF: $E5
    ld a, [de]                                    ; $69F0: $1A
    ld a, a                                       ; $69F1: $7F
    ld c, h                                       ; $69F2: $4C
    inc b                                         ; $69F3: $04
    rlca                                          ; $69F4: $07
    ld [$0828], sp                                ; $69F5: $08 $28 $08
    dec d                                         ; $69F8: $15
    ld hl, $1706                                  ; $69F9: $21 $06 $17
    ld [$0813], sp                                ; $69FC: $08 $13 $08
    ld c, $08                                     ; $69FF: $0E $08
    ld e, d                                       ; $6A01: $5A
    db $10                                        ; $6A02: $10
    ld a, b                                       ; $6A03: $78
    add hl, hl                                    ; $6A04: $29
    dec bc                                        ; $6A05: $0B
    ld a, b                                       ; $6A06: $78
    dec hl                                        ; $6A07: $2B
    ld [$AF2D], sp                                ; $6A08: $08 $2D $AF
    ld [$1A2E], sp                                ; $6A0B: $08 $2E $1A
    ld sp, $192C                                  ; $6A0E: $31 $2C $19
    cpl                                           ; $6A11: $2F
    cpl                                           ; $6A12: $2F
    push bc                                       ; $6A13: $C5
    cpl                                           ; $6A14: $2F
    cpl                                           ; $6A15: $2F
    dec hl                                        ; $6A16: $2B
    dec b                                         ; $6A17: $05
    add hl, hl                                    ; $6A18: $29
    ld c, $2A                                     ; $6A19: $0E $2A
    dec bc                                        ; $6A1B: $0B
    adc d                                         ; $6A1C: $8A
    ld a, b                                       ; $6A1D: $78
    inc l                                         ; $6A1E: $2C
    rlca                                          ; $6A1F: $07
    cpl                                           ; $6A20: $2F
    jr @+$32                                      ; $6A21: $18 $30

    ld [$FE32], sp                                ; $6A23: $08 $32 $FE
    ld a, [de]                                    ; $6A26: $1A
    cpl                                           ; $6A27: $2F
    cpl                                           ; $6A28: $2F
    ld l, $FA                                     ; $6A29: $2E $FA
    ld e, a                                       ; $6A2B: $5F
    dec hl                                        ; $6A2C: $2B
    inc l                                         ; $6A2D: $2C
    dec l                                         ; $6A2E: $2D
    dec b                                         ; $6A2F: $05
    ld a, [hl+]                                   ; $6A30: $2A
    ld c, $35                                     ; $6A31: $0E $35
    dec c                                         ; $6A33: $0D
    ld hl, sp+$03                                 ; $6A34: $F8 $03
    ld c, a                                       ; $6A36: $4F
    rst RST_38                                    ; $6A37: $FF
    rrca                                          ; $6A38: $0F
    rrca                                          ; $6A39: $0F
    rst RST_38                                    ; $6A3A: $FF
    ld c, a                                       ; $6A3B: $4F
    rrca                                          ; $6A3C: $0F
    rrca                                          ; $6A3D: $0F
    rst RST_38                                    ; $6A3E: $FF
    ld c, a                                       ; $6A3F: $4F
    db $FC                                        ; $6A40: $FC
    rrca                                          ; $6A41: $0F
    rrca                                          ; $6A42: $0F
    rst RST_38                                    ; $6A43: $FF
    ld c, a                                       ; $6A44: $4F
    rrca                                          ; $6A45: $0F
    dec c                                         ; $6A46: $0D
    ld b, $36                                     ; $6A47: $06 $36
    xor a                                         ; $6A49: $AF
    ld c, $37                                     ; $6A4A: $0E $37
    ld [$5F38], sp                                ; $6A4C: $08 $38 $5F
    rrca                                          ; $6A4F: $0F
    rrca                                          ; $6A50: $0F
    rst RST_38                                    ; $6A51: $FF
    ld [$0F5F], a                                 ; $6A52: $EA $5F $0F
    inc c                                         ; $6A55: $0C
    inc de                                        ; $6A56: $13
    ld c, $39                                     ; $6A57: $0E $39
    ld [$BD3A], sp                                ; $6A59: $08 $3A $BD
    ld [$6F3B], sp                                ; $6A5C: $08 $3B $6F
    rrca                                          ; $6A5F: $0F
    rrca                                          ; $6A60: $0F
    db $FC                                        ; $6A61: $FC
    inc a                                         ; $6A62: $3C
    ld [$3D7F], sp                                ; $6A63: $08 $7F $3D
    ld l, a                                       ; $6A66: $6F
    rrca                                          ; $6A67: $0F
    rrca                                          ; $6A68: $0F
    rrca                                          ; $6A69: $0F
    rrca                                          ; $6A6A: $0F
    rrca                                          ; $6A6B: $0F
    rrca                                          ; $6A6C: $0F
    ldh a, [rIF]                                  ; $6A6D: $F0 $0F
    rrca                                          ; $6A6F: $0F
    rrca                                          ; $6A70: $0F
    add hl, bc                                    ; $6A71: $09
    nop                                           ; $6A72: $00
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

Call_005_703F:
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

Jump_005_7191:
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

Jump_005_7808:
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

Call_005_7A70:
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
