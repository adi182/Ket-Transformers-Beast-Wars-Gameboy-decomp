; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03c", ROMX[$4000], BANK[$3c]

    ld sp, $DD00                                  ; $4000: $31 $00 $DD
    di                                            ; $4003: $F3
    rst RST_10                                    ; $4004: $D7
    ld hl, $C03A                                  ; $4005: $21 $3A $C0
    res 1, [hl]                                   ; $4008: $CB $8E
    res 2, [hl]                                   ; $400A: $CB $96
    ld a, $FF                                     ; $400C: $3E $FF
    ldh [rBGP], a                                 ; $400E: $E0 $47
    ldh [rOBP0], a                                ; $4010: $E0 $48
    ldh [rOBP1], a                                ; $4012: $E0 $49
    call Call_000_13ED                            ; $4014: $CD $ED $13
    ld de, $0006                                  ; $4017: $11 $06 $00
    call Call_000_14C0                            ; $401A: $CD $C0 $14
    call Call_000_0FBD                            ; $401D: $CD $BD $0F
    call Call_000_0FC6                            ; $4020: $CD $C6 $0F
    ld a, $FF                                     ; $4023: $3E $FF
    ldh [$FFE4], a                                ; $4025: $E0 $E4
    ld [$C2AA], a                                 ; $4027: $EA $AA $C2
    ld [$C2AC], a                                 ; $402A: $EA $AC $C2
    ldh [$FFE2], a                                ; $402D: $E0 $E2
    ld hl, $6EDF                                  ; $402F: $21 $DF $6E
    ld de, $C359                                  ; $4032: $11 $59 $C3
    ld b, $30                                     ; $4035: $06 $30
    rst RST_20                                    ; $4037: $E7
    ld hl, $C359                                  ; $4038: $21 $59 $C3
    ld de, $9000                                  ; $403B: $11 $00 $90
    ld b, $80                                     ; $403E: $06 $80

Call_03C_4040:
    call Call_000_1188                            ; $4040: $CD $88 $11
    ld hl, $72D9                                  ; $4043: $21 $D9 $72
    ld de, $C339                                  ; $4046: $11 $39 $C3
    ld b, $30                                     ; $4049: $06 $30
    rst RST_20                                    ; $404B: $E7
    ld de, $C339                                  ; $404C: $11 $39 $C3
    ld hl, $9800                                  ; $404F: $21 $00 $98
    ld b, $14                                     ; $4052: $06 $14
    ld c, $12                                     ; $4054: $0E $12
    call Call_000_10C0                            ; $4056: $CD $C0 $10
    call Call_000_0F9E                            ; $4059: $CD $9E $0F
    ld a, $87                                     ; $405C: $3E $87
    rst RST_18                                    ; $405E: $DF
    xor a                                         ; $405F: $AF
    ldh [rSTAT], a                                ; $4060: $E0 $41
    ei                                            ; $4062: $FB
    call Call_000_0424                            ; $4063: $CD $24 $04
    ld a, $1B                                     ; $4066: $3E $1B
    ldh [rOBP0], a                                ; $4068: $E0 $48
    ldh [rOBP1], a                                ; $406A: $E0 $49
    ldh [rBGP], a                                 ; $406C: $E0 $47
    call Call_000_147A                            ; $406E: $CD $7A $14
    xor a                                         ; $4071: $AF
    ld [$C329], a                                 ; $4072: $EA $29 $C3
    ld [$C32A], a                                 ; $4075: $EA $2A $C3

jr_03C_4078:
    call Call_000_0424                            ; $4078: $CD $24 $04
    ldh a, [$FF99]                                ; $407B: $F0 $99
    ld e, a                                       ; $407D: $5F
    ldh a, [$FFAC]                                ; $407E: $F0 $AC
    or e                                          ; $4080: $B3
    ld e, a                                       ; $4081: $5F
    and $80                                       ; $4082: $E6 $80
    jp nz, Jump_03C_41CA                          ; $4084: $C2 $CA $41

    ld a, e                                       ; $4087: $7B
    and $20                                       ; $4088: $E6 $20
    jr nz, jr_03C_4092                            ; $408A: $20 $06

    ld hl, $C329                                  ; $408C: $21 $29 $C3
    inc [hl]                                      ; $408F: $34
    jr nz, jr_03C_4078                            ; $4090: $20 $E6

jr_03C_4092:
    ld a, $FF                                     ; $4092: $3E $FF
    ldh [rBGP], a                                 ; $4094: $E0 $47
    ldh [rOBP0], a                                ; $4096: $E0 $48
    ldh [rOBP1], a                                ; $4098: $E0 $49
    call Call_000_0424                            ; $409A: $CD $24 $04
    di                                            ; $409D: $F3
    rst RST_10                                    ; $409E: $D7
    ld a, $FF                                     ; $409F: $3E $FF
    ldh [rBGP], a                                 ; $40A1: $E0 $47
    ldh [rOBP0], a                                ; $40A3: $E0 $48
    ldh [rOBP1], a                                ; $40A5: $E0 $49
    call Call_000_13ED                            ; $40A7: $CD $ED $13
    call Call_000_0FBD                            ; $40AA: $CD $BD $0F
    call Call_000_0FC6                            ; $40AD: $CD $C6 $0F
    ld a, $FF                                     ; $40B0: $3E $FF
    ldh [$FFE4], a                                ; $40B2: $E0 $E4
    ld [$C2AA], a                                 ; $40B4: $EA $AA $C2
    ld [$C2AC], a                                 ; $40B7: $EA $AC $C2
    ldh [$FFE2], a                                ; $40BA: $E0 $E2
    ld hl, $6B96                                  ; $40BC: $21 $96 $6B
    ld de, $C359                                  ; $40BF: $11 $59 $C3
    ld b, $30                                     ; $40C2: $06 $30
    rst RST_20                                    ; $40C4: $E7
    ld hl, $C359                                  ; $40C5: $21 $59 $C3
    ld de, $8000                                  ; $40C8: $11 $00 $80
    ld b, $70                                     ; $40CB: $06 $70
    call Call_000_1188                            ; $40CD: $CD $88 $11
    ld a, [$C006]                                 ; $40D0: $FA $06 $C0
    or a                                          ; $40D3: $B7
    jr z, jr_03C_4100                             ; $40D4: $28 $2A

    ld hl, $4000                                  ; $40D6: $21 $00 $40
    ld de, $C359                                  ; $40D9: $11 $59 $C3
    ld b, $30                                     ; $40DC: $06 $30
    rst RST_20                                    ; $40DE: $E7
    ld hl, $C359                                  ; $40DF: $21 $59 $C3
    ld de, $8800                                  ; $40E2: $11 $00 $88
    ld b, $80                                     ; $40E5: $06 $80
    call Call_000_1188                            ; $40E7: $CD $88 $11
    ld hl, $CB59                                  ; $40EA: $21 $59 $CB
    ld de, $9000                                  ; $40ED: $11 $00 $90
    ld b, $80                                     ; $40F0: $06 $80
    call Call_000_1188                            ; $40F2: $CD $88 $11
    ld hl, $4B93                                  ; $40F5: $21 $93 $4B
    ld de, $C359                                  ; $40F8: $11 $59 $C3
    ld b, $30                                     ; $40FB: $06 $30
    rst RST_20                                    ; $40FD: $E7
    jr jr_03C_4128                                ; $40FE: $18 $28

jr_03C_4100:
    ld hl, $5571                                  ; $4100: $21 $71 $55
    ld de, $C359                                  ; $4103: $11 $59 $C3
    ld b, $30                                     ; $4106: $06 $30
    rst RST_20                                    ; $4108: $E7
    ld hl, $C359                                  ; $4109: $21 $59 $C3
    ld de, $8800                                  ; $410C: $11 $00 $88
    ld b, $80                                     ; $410F: $06 $80
    call Call_000_1188                            ; $4111: $CD $88 $11
    ld hl, $CB59                                  ; $4114: $21 $59 $CB
    ld de, $9000                                  ; $4117: $11 $00 $90
    ld b, $80                                     ; $411A: $06 $80
    call Call_000_1188                            ; $411C: $CD $88 $11
    ld hl, $60F1                                  ; $411F: $21 $F1 $60
    ld de, $C359                                  ; $4122: $11 $59 $C3
    ld b, $30                                     ; $4125: $06 $30
    rst RST_20                                    ; $4127: $E7

jr_03C_4128:
    call Call_000_0F9E                            ; $4128: $CD $9E $0F
    ld a, $87                                     ; $412B: $3E $87
    rst RST_18                                    ; $412D: $DF
    xor a                                         ; $412E: $AF
    ldh [rSTAT], a                                ; $412F: $E0 $41
    ei                                            ; $4131: $FB
    ld hl, $D840                                  ; $4132: $21 $40 $D8
    ld de, $46FB                                  ; $4135: $11 $FB $46
    call Call_000_0F8E                            ; $4138: $CD $8E $0F
    ld hl, $D800                                  ; $413B: $21 $00 $D8
    ld de, $49A5                                  ; $413E: $11 $A5 $49
    call Call_000_0F8E                            ; $4141: $CD $8E $0F
    ld hl, $D7C0                                  ; $4144: $21 $C0 $D7
    ld de, $49C5                                  ; $4147: $11 $C5 $49
    call Call_000_0F8E                            ; $414A: $CD $8E $0F
    ld hl, $D780                                  ; $414D: $21 $80 $D7
    ld de, $49A5                                  ; $4150: $11 $A5 $49
    call Call_000_0F8E                            ; $4153: $CD $8E $0F
    ld hl, $D740                                  ; $4156: $21 $40 $D7
    ld de, $49C5                                  ; $4159: $11 $C5 $49
    call Call_000_0F8E                            ; $415C: $CD $8E $0F
    ld a, $81                                     ; $415F: $3E $81
    call Call_000_135D                            ; $4161: $CD $5D $13
    call Call_000_0424                            ; $4164: $CD $24 $04
    ld a, $1B                                     ; $4167: $3E $1B
    ldh [rOBP0], a                                ; $4169: $E0 $48
    ldh [rOBP1], a                                ; $416B: $E0 $49
    ld a, $3F                                     ; $416D: $3E $3F
    ldh [rBGP], a                                 ; $416F: $E0 $47
    call Call_000_147A                            ; $4171: $CD $7A $14
    ld de, $4440                                  ; $4174: $11 $40 $44
    ld hl, $C329                                  ; $4177: $21 $29 $C3
    ld c, $21                                     ; $417A: $0E $21

jr_03C_417C:
    ld a, [de]                                    ; $417C: $1A
    inc de                                        ; $417D: $13
    ld [hl+], a                                   ; $417E: $22
    dec c                                         ; $417F: $0D
    jr nz, jr_03C_417C                            ; $4180: $20 $FA

    ld a, [$C006]                                 ; $4182: $FA $06 $C0
    or a                                          ; $4185: $B7
    jr z, jr_03C_4191                             ; $4186: $28 $09

    ld de, $44D0                                  ; $4188: $11 $D0 $44
    ld hl, $C32A                                  ; $418B: $21 $2A $C3
    ld [hl], e                                    ; $418E: $73
    inc hl                                        ; $418F: $23
    ld [hl], d                                    ; $4190: $72

jr_03C_4191:
    call Call_03C_41DB                            ; $4191: $CD $DB $41
    call Call_03C_436D                            ; $4194: $CD $6D $43
    ld hl, $C329                                  ; $4197: $21 $29 $C3
    inc [hl]                                      ; $419A: $34
    call Call_000_0424                            ; $419B: $CD $24 $04
    ldh a, [$FF99]                                ; $419E: $F0 $99
    ld e, a                                       ; $41A0: $5F
    ldh a, [$FFAC]                                ; $41A1: $F0 $AC
    or e                                          ; $41A3: $B3
    ld e, a                                       ; $41A4: $5F
    and $80                                       ; $41A5: $E6 $80
    jr nz, jr_03C_41CA                            ; $41A7: $20 $21

    ld a, e                                       ; $41A9: $7B
    and $20                                       ; $41AA: $E6 $20
    jr nz, jr_03C_41B9                            ; $41AC: $20 $0B

    ld a, [$C33E]                                 ; $41AE: $FA $3E $C3
    cp $90                                        ; $41B1: $FE $90
    jr c, jr_03C_4191                             ; $41B3: $38 $DC

    cp $D0                                        ; $41B5: $FE $D0
    jr nc, jr_03C_4191                            ; $41B7: $30 $D8

jr_03C_41B9:
    ld a, $00                                     ; $41B9: $3E $00
    call Call_000_135D                            ; $41BB: $CD $5D $13
    call Call_000_0424                            ; $41BE: $CD $24 $04
    call Call_000_0424                            ; $41C1: $CD $24 $04
    ld b, $2B                                     ; $41C4: $06 $2B
    ld hl, $4000                                  ; $41C6: $21 $00 $40
    rst RST_00                                    ; $41C9: $C7

Jump_03C_41CA:
jr_03C_41CA:
    ld a, $00                                     ; $41CA: $3E $00
    call Call_000_135D                            ; $41CC: $CD $5D $13
    call Call_000_0424                            ; $41CF: $CD $24 $04
    call Call_000_0424                            ; $41D2: $CD $24 $04
    ld b, $2B                                     ; $41D5: $06 $2B
    ld hl, $4000                                  ; $41D7: $21 $00 $40
    rst RST_00                                    ; $41DA: $C7

Call_03C_41DB:
    ld hl, $D840                                  ; $41DB: $21 $40 $D8
    call Call_000_0E28                            ; $41DE: $CD $28 $0E
    ld hl, $D800                                  ; $41E1: $21 $00 $D8
    call Call_000_0DD4                            ; $41E4: $CD $D4 $0D
    ld hl, $D7C0                                  ; $41E7: $21 $C0 $D7
    call Call_000_0DD4                            ; $41EA: $CD $D4 $0D
    ld hl, $D780                                  ; $41ED: $21 $80 $D7
    call Call_000_0DD4                            ; $41F0: $CD $D4 $0D
    ld hl, $D740                                  ; $41F3: $21 $40 $D7
    call Call_000_0DD4                            ; $41F6: $CD $D4 $0D
    ld a, [$D854]                                 ; $41F9: $FA $54 $D8
    ld b, $00                                     ; $41FC: $06 $00
    cp $40                                        ; $41FE: $FE $40
    jr c, jr_03C_4204                             ; $4200: $38 $02

    ld b, $40                                     ; $4202: $06 $40

jr_03C_4204:
    ld a, b                                       ; $4204: $78
    ld [$D84E], a                                 ; $4205: $EA $4E $D8
    ld hl, $C339                                  ; $4208: $21 $39 $C3
    ld e, [hl]                                    ; $420B: $5E
    inc hl                                        ; $420C: $23
    ld d, [hl]                                    ; $420D: $56
    ld a, [$C346]                                 ; $420E: $FA $46 $C3
    ld l, a                                       ; $4211: $6F
    cpl                                           ; $4212: $2F
    ld c, a                                       ; $4213: $4F
    ld a, [$C347]                                 ; $4214: $FA $47 $C3
    ld h, a                                       ; $4217: $67
    cpl                                           ; $4218: $2F
    ld b, a                                       ; $4219: $47
    add hl, de                                    ; $421A: $19
    jr nc, jr_03C_4290                            ; $421B: $30 $73

    ld l, c                                       ; $421D: $69
    ld h, b                                       ; $421E: $60
    add hl, de                                    ; $421F: $19
    jr c, jr_03C_4290                             ; $4220: $38 $6E

    ld hl, $C33B                                  ; $4222: $21 $3B $C3
    ld a, [hl]                                    ; $4225: $7E
    xor $FF                                       ; $4226: $EE $FF
    inc a                                         ; $4228: $3C
    ld e, a                                       ; $4229: $5F
    ld [hl+], a                                   ; $422A: $22
    ld a, [hl]                                    ; $422B: $7E
    xor $FF                                       ; $422C: $EE $FF
    ld [hl], a                                    ; $422E: $77
    ld d, a                                       ; $422F: $57
    ld a, [$C336]                                 ; $4230: $FA $36 $C3
    or a                                          ; $4233: $B7
    jr nz, jr_03C_4290                            ; $4234: $20 $5A

    sra d                                         ; $4236: $CB $2A
    rr e                                          ; $4238: $CB $1B
    ld a, e                                       ; $423A: $7B
    or d                                          ; $423B: $B2
    jr z, jr_03C_426F                             ; $423C: $28 $31

    ld [hl], d                                    ; $423E: $72
    dec hl                                        ; $423F: $2B
    ld [hl], e                                    ; $4240: $73
    ld hl, $C339                                  ; $4241: $21 $39 $C3
    call Call_03C_4262                            ; $4244: $CD $62 $42
    ld hl, $C33F                                  ; $4247: $21 $3F $C3
    call Call_03C_4262                            ; $424A: $CD $62 $42
    call Call_03C_4262                            ; $424D: $CD $62 $42
    ld hl, $C346                                  ; $4250: $21 $46 $C3
    call Call_03C_4262                            ; $4253: $CD $62 $42
    call Call_03C_4262                            ; $4256: $CD $62 $42
    ld a, [$D85D]                                 ; $4259: $FA $5D $D8
    inc a                                         ; $425C: $3C
    ld [$D85D], a                                 ; $425D: $EA $5D $D8
    jr jr_03C_4290                                ; $4260: $18 $2E

Call_03C_4262:
    ld e, [hl]                                    ; $4262: $5E
    inc hl                                        ; $4263: $23
    ld d, [hl]                                    ; $4264: $56
    dec hl                                        ; $4265: $2B
    sra d                                         ; $4266: $CB $2A
    rr e                                          ; $4268: $CB $1B
    ld [hl], e                                    ; $426A: $73
    inc hl                                        ; $426B: $23
    ld [hl], d                                    ; $426C: $72
    inc hl                                        ; $426D: $23
    ret                                           ; $426E: $C9


jr_03C_426F:
    xor a                                         ; $426F: $AF
    ld hl, $C339                                  ; $4270: $21 $39 $C3
    ld [hl+], a                                   ; $4273: $22
    ld [hl+], a                                   ; $4274: $22
    ld [hl+], a                                   ; $4275: $22
    ld [hl+], a                                   ; $4276: $22
    ld hl, $C33F                                  ; $4277: $21 $3F $C3
    ld [hl+], a                                   ; $427A: $22
    ld [hl+], a                                   ; $427B: $22
    ld a, $FA                                     ; $427C: $3E $FA
    ld [hl+], a                                   ; $427E: $22
    ld a, $FF                                     ; $427F: $3E $FF
    ld [hl+], a                                   ; $4281: $22
    ld e, $80                                     ; $4282: $1E $80
    ld hl, $C346                                  ; $4284: $21 $46 $C3
    ld [hl+], a                                   ; $4287: $22
    ld [hl], e                                    ; $4288: $73
    inc hl                                        ; $4289: $23
    ld [hl+], a                                   ; $428A: $22
    ld [hl], e                                    ; $428B: $73
    xor a                                         ; $428C: $AF
    ld [$D85D], a                                 ; $428D: $EA $5D $D8

jr_03C_4290:
    ld a, [$C336]                                 ; $4290: $FA $36 $C3
    or a                                          ; $4293: $B7
    jr nz, jr_03C_429B                            ; $4294: $20 $05

    ld a, $3F                                     ; $4296: $3E $3F
    call Call_000_13BC                            ; $4298: $CD $BC $13

jr_03C_429B:
    ld hl, $C33F                                  ; $429B: $21 $3F $C3
    ld e, [hl]                                    ; $429E: $5E
    inc hl                                        ; $429F: $23
    ld d, [hl]                                    ; $42A0: $56
    ld a, [$C348]                                 ; $42A1: $FA $48 $C3
    ld l, a                                       ; $42A4: $6F
    cpl                                           ; $42A5: $2F
    ld c, a                                       ; $42A6: $4F
    ld a, [$C349]                                 ; $42A7: $FA $49 $C3
    ld h, a                                       ; $42AA: $67
    cpl                                           ; $42AB: $2F
    ld b, a                                       ; $42AC: $47
    add hl, de                                    ; $42AD: $19
    jr nc, jr_03C_42C1                            ; $42AE: $30 $11

    ld l, c                                       ; $42B0: $69
    ld h, b                                       ; $42B1: $60
    add hl, de                                    ; $42B2: $19
    jr c, jr_03C_42C1                             ; $42B3: $38 $0C

    ld hl, $C341                                  ; $42B5: $21 $41 $C3
    ld a, [hl]                                    ; $42B8: $7E
    xor $FF                                       ; $42B9: $EE $FF
    inc a                                         ; $42BB: $3C
    ld [hl+], a                                   ; $42BC: $22
    ld a, [hl]                                    ; $42BD: $7E
    xor $FF                                       ; $42BE: $EE $FF
    ld [hl], a                                    ; $42C0: $77

jr_03C_42C1:
    ld hl, $C33C                                  ; $42C1: $21 $3C $C3
    call Call_03C_434D                            ; $42C4: $CD $4D $43
    ld hl, $C342                                  ; $42C7: $21 $42 $C3
    call Call_03C_434D                            ; $42CA: $CD $4D $43
    ld a, [$C338]                                 ; $42CD: $FA $38 $C3
    ld [$D844], a                                 ; $42D0: $EA $44 $D8
    ld a, [$C33E]                                 ; $42D3: $FA $3E $C3
    ld [$D846], a                                 ; $42D6: $EA $46 $D8
    ld a, [$C345]                                 ; $42D9: $FA $45 $C3
    inc a                                         ; $42DC: $3C
    cp $3C                                        ; $42DD: $FE $3C
    jr c, jr_03C_42E2                             ; $42DF: $38 $01

    xor a                                         ; $42E1: $AF

jr_03C_42E2:
    ld [$C345], a                                 ; $42E2: $EA $45 $C3
    or a                                          ; $42E5: $B7
    jr z, jr_03C_42F5                             ; $42E6: $28 $0D

    cp $0F                                        ; $42E8: $FE $0F
    jr z, jr_03C_430B                             ; $42EA: $28 $1F

    cp $1E                                        ; $42EC: $FE $1E
    jr z, jr_03C_4321                             ; $42EE: $28 $31

    cp $2D                                        ; $42F0: $FE $2D
    jr z, jr_03C_4337                             ; $42F2: $28 $43

    ret                                           ; $42F4: $C9


jr_03C_42F5:
    ld hl, $D800                                  ; $42F5: $21 $00 $D8
    res 4, [hl]                                   ; $42F8: $CB $A6
    xor a                                         ; $42FA: $AF
    ld [$D814], a                                 ; $42FB: $EA $14 $D8
    ld a, [$C338]                                 ; $42FE: $FA $38 $C3
    ld [$D804], a                                 ; $4301: $EA $04 $D8
    ld a, [$C33E]                                 ; $4304: $FA $3E $C3
    ld [$D806], a                                 ; $4307: $EA $06 $D8
    ret                                           ; $430A: $C9


jr_03C_430B:
    ld hl, $D7C0                                  ; $430B: $21 $C0 $D7
    res 4, [hl]                                   ; $430E: $CB $A6
    xor a                                         ; $4310: $AF
    ld [$D7D4], a                                 ; $4311: $EA $D4 $D7
    ld a, [$C338]                                 ; $4314: $FA $38 $C3
    ld [$D7C4], a                                 ; $4317: $EA $C4 $D7
    ld a, [$C33E]                                 ; $431A: $FA $3E $C3
    ld [$D7C6], a                                 ; $431D: $EA $C6 $D7
    ret                                           ; $4320: $C9


jr_03C_4321:
    ld hl, $D780                                  ; $4321: $21 $80 $D7
    res 4, [hl]                                   ; $4324: $CB $A6
    xor a                                         ; $4326: $AF
    ld [$D794], a                                 ; $4327: $EA $94 $D7
    ld a, [$C338]                                 ; $432A: $FA $38 $C3
    ld [$D784], a                                 ; $432D: $EA $84 $D7
    ld a, [$C33E]                                 ; $4330: $FA $3E $C3
    ld [$D786], a                                 ; $4333: $EA $86 $D7
    ret                                           ; $4336: $C9


jr_03C_4337:
    ld hl, $D740                                  ; $4337: $21 $40 $D7
    res 4, [hl]                                   ; $433A: $CB $A6
    xor a                                         ; $433C: $AF
    ld [$D754], a                                 ; $433D: $EA $54 $D7
    ld a, [$C338]                                 ; $4340: $FA $38 $C3
    ld [$D744], a                                 ; $4343: $EA $44 $D7
    ld a, [$C33E]                                 ; $4346: $FA $3E $C3
    ld [$D746], a                                 ; $4349: $EA $46 $D7
    ret                                           ; $434C: $C9


Call_03C_434D:
    push hl                                       ; $434D: $E5
    ld a, [hl-]                                   ; $434E: $3A
    ld d, a                                       ; $434F: $57
    ld a, [hl-]                                   ; $4350: $3A
    ld e, a                                       ; $4351: $5F
    ld a, [hl-]                                   ; $4352: $3A
    ld b, a                                       ; $4353: $47
    ld a, [hl-]                                   ; $4354: $3A
    ld l, a                                       ; $4355: $6F
    ld h, b                                       ; $4356: $60
    add hl, de                                    ; $4357: $19
    pop bc                                        ; $4358: $C1
    dec bc                                        ; $4359: $0B
    dec bc                                        ; $435A: $0B
    ld a, h                                       ; $435B: $7C
    ld [bc], a                                    ; $435C: $02
    dec bc                                        ; $435D: $0B
    ld a, l                                       ; $435E: $7D
    ld [bc], a                                    ; $435F: $02
    dec bc                                        ; $4360: $0B
    ld a, [bc]                                    ; $4361: $0A
    ld d, a                                       ; $4362: $57
    dec bc                                        ; $4363: $0B
    ld a, [bc]                                    ; $4364: $0A
    ld e, a                                       ; $4365: $5F
    add hl, de                                    ; $4366: $19
    ld a, l                                       ; $4367: $7D
    ld [bc], a                                    ; $4368: $02
    inc bc                                        ; $4369: $03
    ld a, h                                       ; $436A: $7C
    ld [bc], a                                    ; $436B: $02
    ret                                           ; $436C: $C9


Call_03C_436D:
    ld a, [$C343]                                 ; $436D: $FA $43 $C3
    or a                                          ; $4370: $B7
    jr z, jr_03C_438D                             ; $4371: $28 $1A

    dec a                                         ; $4373: $3D
    ld [$C343], a                                 ; $4374: $EA $43 $C3
    ld e, a                                       ; $4377: $5F
    and $07                                       ; $4378: $E6 $07
    ret nz                                        ; $437A: $C0

    ld a, e                                       ; $437B: $7B
    and $70                                       ; $437C: $E6 $70
    ld e, a                                       ; $437E: $5F
    ld d, $00                                     ; $437F: $16 $00
    ld hl, $466B                                  ; $4381: $21 $6B $46
    add hl, de                                    ; $4384: $19
    ld de, $9000                                  ; $4385: $11 $00 $90
    ld b, $02                                     ; $4388: $06 $02
    jp Jump_000_11C2                              ; $438A: $C3 $C2 $11


jr_03C_438D:
    ld a, [$C336]                                 ; $438D: $FA $36 $C3
    or a                                          ; $4390: $B7
    ret z                                         ; $4391: $C8

    ldh a, [$FF98]                                ; $4392: $F0 $98
    ld e, a                                       ; $4394: $5F
    ldh a, [$FFAB]                                ; $4395: $F0 $AB
    or e                                          ; $4397: $B3
    ld e, a                                       ; $4398: $5F
    ld d, $02                                     ; $4399: $16 $02
    and $04                                       ; $439B: $E6 $04
    jr nz, jr_03C_43A8                            ; $439D: $20 $09

    ld d, $06                                     ; $439F: $16 $06
    ld a, e                                       ; $43A1: $7B
    and $08                                       ; $43A2: $E6 $08
    jr nz, jr_03C_43A8                            ; $43A4: $20 $02

    ld d, $04                                     ; $43A6: $16 $04

jr_03C_43A8:
    ld a, d                                       ; $43A8: $7A
    ld [$C335], a                                 ; $43A9: $EA $35 $C3
    ld hl, $C334                                  ; $43AC: $21 $34 $C3
    dec [hl]                                      ; $43AF: $35
    jr nz, jr_03C_4407                            ; $43B0: $20 $55

    inc hl                                        ; $43B2: $23
    ld a, [hl]                                    ; $43B3: $7E
    dec hl                                        ; $43B4: $2B
    ld [hl], a                                    ; $43B5: $77
    ld hl, $C331                                  ; $43B6: $21 $31 $C3
    inc [hl]                                      ; $43B9: $34
    ld a, [hl]                                    ; $43BA: $7E
    ldh [$FFE2], a                                ; $43BB: $E0 $E2
    and $0F                                       ; $43BD: $E6 $0F
    jr nz, jr_03C_4407                            ; $43BF: $20 $46

    ld a, [$C32A]                                 ; $43C1: $FA $2A $C3
    ld l, a                                       ; $43C4: $6F
    ld a, [$C32B]                                 ; $43C5: $FA $2B $C3
    ld h, a                                       ; $43C8: $67
    ld a, [hl+]                                   ; $43C9: $2A
    ld e, [hl]                                    ; $43CA: $5E
    inc hl                                        ; $43CB: $23
    ld d, [hl]                                    ; $43CC: $56
    inc hl                                        ; $43CD: $23
    add a                                         ; $43CE: $87
    jr nc, jr_03C_43D8                            ; $43CF: $30 $07

    xor a                                         ; $43D1: $AF
    ld [$C336], a                                 ; $43D2: $EA $36 $C3
    dec hl                                        ; $43D5: $2B
    dec hl                                        ; $43D6: $2B
    dec hl                                        ; $43D7: $2B

jr_03C_43D8:
    srl a                                         ; $43D8: $CB $3F
    ld [$C330], a                                 ; $43DA: $EA $30 $C3
    ld a, l                                       ; $43DD: $7D
    ld [$C32A], a                                 ; $43DE: $EA $2A $C3
    ld a, h                                       ; $43E1: $7C
    ld [$C32B], a                                 ; $43E2: $EA $2B $C3
    ld a, [$C332]                                 ; $43E5: $FA $32 $C3
    ld c, a                                       ; $43E8: $4F
    ld a, [$C333]                                 ; $43E9: $FA $33 $C3
    and $03                                       ; $43EC: $E6 $03
    ld b, a                                       ; $43EE: $47
    ld hl, $0040                                  ; $43EF: $21 $40 $00
    add hl, bc                                    ; $43F2: $09
    ld a, l                                       ; $43F3: $7D
    ld [$C332], a                                 ; $43F4: $EA $32 $C3
    ld a, h                                       ; $43F7: $7C
    ld [$C333], a                                 ; $43F8: $EA $33 $C3
    ld hl, $9800                                  ; $43FB: $21 $00 $98
    add hl, bc                                    ; $43FE: $09
    ld b, $13                                     ; $43FF: $06 $13
    ld c, $02                                     ; $4401: $0E $02
    call Call_000_10C0                            ; $4403: $CD $C0 $10
    ret                                           ; $4406: $C9


jr_03C_4407:
    ld a, [$C330]                                 ; $4407: $FA $30 $C3
    or a                                          ; $440A: $B7
    ret z                                         ; $440B: $C8

    dec a                                         ; $440C: $3D
    ld [$C330], a                                 ; $440D: $EA $30 $C3
    ld a, [$C32C]                                 ; $4410: $FA $2C $C3
    ld l, a                                       ; $4413: $6F
    ld a, [$C32D]                                 ; $4414: $FA $2D $C3
    ld h, a                                       ; $4417: $67
    push hl                                       ; $4418: $E5
    ld de, $0020                                  ; $4419: $11 $20 $00
    add hl, de                                    ; $441C: $19
    ld a, l                                       ; $441D: $7D
    ld [$C32C], a                                 ; $441E: $EA $2C $C3
    ld a, h                                       ; $4421: $7C
    ld [$C32D], a                                 ; $4422: $EA $2D $C3
    ld a, [$C32E]                                 ; $4425: $FA $2E $C3
    ld e, a                                       ; $4428: $5F
    ld a, [$C32F]                                 ; $4429: $FA $2F $C3
    ld d, a                                       ; $442C: $57
    ld hl, $0020                                  ; $442D: $21 $20 $00
    add hl, de                                    ; $4430: $19
    ld a, l                                       ; $4431: $7D
    ld [$C32E], a                                 ; $4432: $EA $2E $C3
    ld a, h                                       ; $4435: $7C
    ld [$C32F], a                                 ; $4436: $EA $2F $C3
    pop hl                                        ; $4439: $E1
    ld b, $02                                     ; $443A: $06 $02
    call Call_000_11C2                            ; $443C: $CD $C2 $11
    ret                                           ; $443F: $C9


    nop                                           ; $4440: $00
    ld h, c                                       ; $4441: $61
    ld b, h                                       ; $4442: $44
    ld e, c                                       ; $4443: $59
    jp $8800                                      ; $4444: $C3 $00 $88


    nop                                           ; $4447: $00
    nop                                           ; $4448: $00
    pop bc                                        ; $4449: $C1
    ld [bc], a                                    ; $444A: $02
    inc b                                         ; $444B: $04
    inc b                                         ; $444C: $04
    rst RST_38                                    ; $444D: $FF
    nop                                           ; $444E: $00
    ld c, b                                       ; $444F: $48
    nop                                           ; $4450: $00
    ld [bc], a                                    ; $4451: $02
    ld [$8000], sp                                ; $4452: $08 $00 $80
    ld d, b                                       ; $4455: $50
    nop                                           ; $4456: $00
    nop                                           ; $4457: $00
    db $FC                                        ; $4458: $FC
    rst RST_38                                    ; $4459: $FF
    ld b, b                                       ; $445A: $40
    rst RST_38                                    ; $445B: $FF
    nop                                           ; $445C: $00
    nop                                           ; $445D: $00
    cp $80                                        ; $445E: $FE $80
    rst RST_38                                    ; $4460: $FF
    nop                                           ; $4461: $00
    ld bc, $004B                                  ; $4462: $01 $4B $00
    ld c, l                                       ; $4465: $4D
    ld c, e                                       ; $4466: $4B
    nop                                           ; $4467: $00
    ld bc, $004B                                  ; $4468: $01 $4B $00
    ld bc, $004B                                  ; $446B: $01 $4B $00
    sbc c                                         ; $446E: $99
    ld c, e                                       ; $446F: $4B
    nop                                           ; $4470: $00
    push hl                                       ; $4471: $E5
    ld c, e                                       ; $4472: $4B
    nop                                           ; $4473: $00
    ld bc, $004B                                  ; $4474: $01 $4B $00
    ld bc, $004B                                  ; $4477: $01 $4B $00
    ld sp, $004C                                  ; $447A: $31 $4C $00
    ld a, l                                       ; $447D: $7D
    ld c, h                                       ; $447E: $4C
    nop                                           ; $447F: $00
    ret                                           ; $4480: $C9


    ld c, h                                       ; $4481: $4C
    nop                                           ; $4482: $00
    dec d                                         ; $4483: $15
    ld c, l                                       ; $4484: $4D
    nop                                           ; $4485: $00
    ld bc, $004B                                  ; $4486: $01 $4B $00
    ld bc, $004B                                  ; $4489: $01 $4B $00
    ld h, c                                       ; $448C: $61
    ld c, l                                       ; $448D: $4D
    dec bc                                        ; $448E: $0B
    xor l                                         ; $448F: $AD
    ld c, l                                       ; $4490: $4D
    db $10                                        ; $4491: $10
    ld sp, hl                                     ; $4492: $F9
    ld c, l                                       ; $4493: $4D
    nop                                           ; $4494: $00
    ld bc, $004B                                  ; $4495: $01 $4B $00
    ld bc, $104B                                  ; $4498: $01 $4B $10
    ld b, l                                       ; $449B: $45
    ld c, [hl]                                    ; $449C: $4E
    ld [de], a                                    ; $449D: $12
    sub c                                         ; $449E: $91
    ld c, [hl]                                    ; $449F: $4E
    nop                                           ; $44A0: $00
    ld bc, $004B                                  ; $44A1: $01 $4B $00
    ld bc, $114B                                  ; $44A4: $01 $4B $11
    db $DD                                        ; $44A7: $DD
    ld c, [hl]                                    ; $44A8: $4E
    ld [de], a                                    ; $44A9: $12
    add hl, hl                                    ; $44AA: $29
    ld c, a                                       ; $44AB: $4F
    ld [de], a                                    ; $44AC: $12
    ld [hl], l                                    ; $44AD: $75
    ld c, a                                       ; $44AE: $4F
    nop                                           ; $44AF: $00
    ld bc, $004B                                  ; $44B0: $01 $4B $00
    ld bc, $004B                                  ; $44B3: $01 $4B $00
    ld bc, $004B                                  ; $44B6: $01 $4B $00
    ld bc, $004B                                  ; $44B9: $01 $4B $00
    ld bc, $004B                                  ; $44BC: $01 $4B $00
    ld bc, $004B                                  ; $44BF: $01 $4B $00
    ld bc, $004B                                  ; $44C2: $01 $4B $00
    ld bc, $004B                                  ; $44C5: $01 $4B $00
    ld bc, $004B                                  ; $44C8: $01 $4B $00
    ld bc, $FF4B                                  ; $44CB: $01 $4B $FF
    ld bc, $004B                                  ; $44CE: $01 $4B $00
    ld bc, $004B                                  ; $44D1: $01 $4B $00
    pop bc                                        ; $44D4: $C1
    ld c, a                                       ; $44D5: $4F
    nop                                           ; $44D6: $00
    ld bc, $004B                                  ; $44D7: $01 $4B $00
    ld bc, $004B                                  ; $44DA: $01 $4B $00
    dec c                                         ; $44DD: $0D
    ld d, b                                       ; $44DE: $50
    nop                                           ; $44DF: $00
    ld e, c                                       ; $44E0: $59
    ld d, b                                       ; $44E1: $50
    nop                                           ; $44E2: $00
    ld bc, $004B                                  ; $44E3: $01 $4B $00
    ld bc, $004B                                  ; $44E6: $01 $4B $00
    and l                                         ; $44E9: $A5
    ld d, b                                       ; $44EA: $50
    nop                                           ; $44EB: $00
    pop af                                        ; $44EC: $F1
    ld d, b                                       ; $44ED: $50
    nop                                           ; $44EE: $00
    dec a                                         ; $44EF: $3D
    ld d, c                                       ; $44F0: $51
    nop                                           ; $44F1: $00
    ld bc, $004B                                  ; $44F2: $01 $4B $00
    ld bc, $004B                                  ; $44F5: $01 $4B $00
    adc c                                         ; $44F8: $89
    ld d, c                                       ; $44F9: $51
    nop                                           ; $44FA: $00
    push de                                       ; $44FB: $D5
    ld d, c                                       ; $44FC: $51
    rrca                                          ; $44FD: $0F
    ld hl, $0052                                  ; $44FE: $21 $52 $00
    ld bc, $004B                                  ; $4501: $01 $4B $00
    ld bc, $0C4B                                  ; $4504: $01 $4B $0C
    ld l, l                                       ; $4507: $6D
    ld d, d                                       ; $4508: $52
    rrca                                          ; $4509: $0F
    cp c                                          ; $450A: $B9
    ld d, d                                       ; $450B: $52
    nop                                           ; $450C: $00
    ld bc, $004B                                  ; $450D: $01 $4B $00
    ld bc, $134B                                  ; $4510: $01 $4B $13
    dec b                                         ; $4513: $05
    ld d, e                                       ; $4514: $53
    inc d                                         ; $4515: $14
    ld d, c                                       ; $4516: $51
    ld d, e                                       ; $4517: $53
    ld [de], a                                    ; $4518: $12
    sbc l                                         ; $4519: $9D
    ld d, e                                       ; $451A: $53
    nop                                           ; $451B: $00
    ld bc, $004B                                  ; $451C: $01 $4B $00
    ld bc, $004B                                  ; $451F: $01 $4B $00
    ld bc, $004B                                  ; $4522: $01 $4B $00
    ld bc, $004B                                  ; $4525: $01 $4B $00
    ld bc, $004B                                  ; $4528: $01 $4B $00
    ld bc, $004B                                  ; $452B: $01 $4B $00
    ld bc, $004B                                  ; $452E: $01 $4B $00
    ld bc, $004B                                  ; $4531: $01 $4B $00
    ld bc, $004B                                  ; $4534: $01 $4B $00
    ld bc, $FF4B                                  ; $4537: $01 $4B $FF
    ld bc, $004B                                  ; $453A: $01 $4B $00
    pop bc                                        ; $453D: $C1
    ld c, a                                       ; $453E: $4F
    nop                                           ; $453F: $00
    ld bc, $004B                                  ; $4540: $01 $4B $00
    ld bc, $004B                                  ; $4543: $01 $4B $00
    dec c                                         ; $4546: $0D
    ld d, b                                       ; $4547: $50
    nop                                           ; $4548: $00
    ld e, c                                       ; $4549: $59
    ld d, b                                       ; $454A: $50
    nop                                           ; $454B: $00
    ld bc, $004B                                  ; $454C: $01 $4B $00
    ld bc, $004B                                  ; $454F: $01 $4B $00
    and l                                         ; $4552: $A5
    ld d, b                                       ; $4553: $50
    nop                                           ; $4554: $00
    pop af                                        ; $4555: $F1
    ld d, b                                       ; $4556: $50
    nop                                           ; $4557: $00
    dec a                                         ; $4558: $3D
    ld d, c                                       ; $4559: $51
    nop                                           ; $455A: $00
    ld bc, $004B                                  ; $455B: $01 $4B $00
    ld bc, $004B                                  ; $455E: $01 $4B $00
    adc c                                         ; $4561: $89
    ld d, c                                       ; $4562: $51
    nop                                           ; $4563: $00
    push de                                       ; $4564: $D5
    ld d, c                                       ; $4565: $51
    rrca                                          ; $4566: $0F
    ld hl, $0052                                  ; $4567: $21 $52 $00
    ld bc, $004B                                  ; $456A: $01 $4B $00
    ld bc, $0C4B                                  ; $456D: $01 $4B $0C
    ld l, l                                       ; $4570: $6D
    ld d, d                                       ; $4571: $52
    rrca                                          ; $4572: $0F
    cp c                                          ; $4573: $B9
    ld d, d                                       ; $4574: $52
    nop                                           ; $4575: $00
    ld bc, $004B                                  ; $4576: $01 $4B $00
    ld bc, $134B                                  ; $4579: $01 $4B $13
    dec b                                         ; $457C: $05
    ld d, e                                       ; $457D: $53
    inc d                                         ; $457E: $14
    ld d, c                                       ; $457F: $51
    ld d, e                                       ; $4580: $53
    ld [de], a                                    ; $4581: $12
    sbc l                                         ; $4582: $9D
    ld d, e                                       ; $4583: $53
    nop                                           ; $4584: $00
    ld bc, $004B                                  ; $4585: $01 $4B $00
    ld bc, $004B                                  ; $4588: $01 $4B $00
    ld bc, $004B                                  ; $458B: $01 $4B $00
    ld bc, $004B                                  ; $458E: $01 $4B $00
    ld bc, $004B                                  ; $4591: $01 $4B $00
    ld bc, $004B                                  ; $4594: $01 $4B $00
    ld bc, $004B                                  ; $4597: $01 $4B $00
    ld bc, $004B                                  ; $459A: $01 $4B $00
    ld bc, $004B                                  ; $459D: $01 $4B $00
    ld bc, $004B                                  ; $45A0: $01 $4B $00
    ld bc, $004B                                  ; $45A3: $01 $4B $00
    ld bc, $004B                                  ; $45A6: $01 $4B $00
    ld bc, $004B                                  ; $45A9: $01 $4B $00
    ld bc, $004B                                  ; $45AC: $01 $4B $00
    ld bc, $004B                                  ; $45AF: $01 $4B $00
    ld bc, $004B                                  ; $45B2: $01 $4B $00
    ld bc, $004B                                  ; $45B5: $01 $4B $00
    ld bc, $004B                                  ; $45B8: $01 $4B $00
    ld bc, $004B                                  ; $45BB: $01 $4B $00
    ld bc, $094B                                  ; $45BE: $01 $4B $09
    jp hl                                         ; $45C1: $E9


    ld d, e                                       ; $45C2: $53
    nop                                           ; $45C3: $00
    ld bc, $004B                                  ; $45C4: $01 $4B $00
    ld bc, $004B                                  ; $45C7: $01 $4B $00
    ld bc, $004B                                  ; $45CA: $01 $4B $00
    dec [hl]                                      ; $45CD: $35
    ld d, h                                       ; $45CE: $54
    nop                                           ; $45CF: $00
    ld bc, $004B                                  ; $45D0: $01 $4B $00
    ld bc, $004B                                  ; $45D3: $01 $4B $00
    ld bc, $004B                                  ; $45D6: $01 $4B $00
    ld bc, $004B                                  ; $45D9: $01 $4B $00
    ld bc, $004B                                  ; $45DC: $01 $4B $00
    jp hl                                         ; $45DF: $E9


    ld d, e                                       ; $45E0: $53
    nop                                           ; $45E1: $00
    ld bc, $004B                                  ; $45E2: $01 $4B $00
    ld bc, $004B                                  ; $45E5: $01 $4B $00
    ld bc, $004B                                  ; $45E8: $01 $4B $00
    ld bc, $004B                                  ; $45EB: $01 $4B $00
    dec [hl]                                      ; $45EE: $35
    ld d, h                                       ; $45EF: $54
    nop                                           ; $45F0: $00
    ld bc, $004B                                  ; $45F1: $01 $4B $00
    ld bc, $004B                                  ; $45F4: $01 $4B $00
    ld bc, $004B                                  ; $45F7: $01 $4B $00
    jp hl                                         ; $45FA: $E9


    ld d, e                                       ; $45FB: $53
    nop                                           ; $45FC: $00
    ld bc, $004B                                  ; $45FD: $01 $4B $00
    ld bc, $004B                                  ; $4600: $01 $4B $00
    ld bc, $004B                                  ; $4603: $01 $4B $00
    ld bc, $004B                                  ; $4606: $01 $4B $00
    dec [hl]                                      ; $4609: $35
    ld d, h                                       ; $460A: $54
    nop                                           ; $460B: $00
    ld bc, $004B                                  ; $460C: $01 $4B $00
    ld bc, $004B                                  ; $460F: $01 $4B $00
    ld bc, $004B                                  ; $4612: $01 $4B $00
    jp hl                                         ; $4615: $E9


    ld d, e                                       ; $4616: $53
    nop                                           ; $4617: $00
    ld bc, $004B                                  ; $4618: $01 $4B $00
    ld bc, $004B                                  ; $461B: $01 $4B $00
    ld bc, $004B                                  ; $461E: $01 $4B $00
    ld bc, $004B                                  ; $4621: $01 $4B $00
    ld bc, $004B                                  ; $4624: $01 $4B $00
    dec [hl]                                      ; $4627: $35
    ld d, h                                       ; $4628: $54
    nop                                           ; $4629: $00
    ld bc, $004B                                  ; $462A: $01 $4B $00
    ld bc, $004B                                  ; $462D: $01 $4B $00
    ld bc, $004B                                  ; $4630: $01 $4B $00
    ld bc, $004B                                  ; $4633: $01 $4B $00
    ld bc, $004B                                  ; $4636: $01 $4B $00
    ld bc, $004B                                  ; $4639: $01 $4B $00
    ld bc, $004B                                  ; $463C: $01 $4B $00
    ld bc, $004B                                  ; $463F: $01 $4B $00
    ld bc, $004B                                  ; $4642: $01 $4B $00
    ld bc, $004B                                  ; $4645: $01 $4B $00
    ld bc, $004B                                  ; $4648: $01 $4B $00
    add c                                         ; $464B: $81
    ld d, h                                       ; $464C: $54
    nop                                           ; $464D: $00
    ld bc, $004B                                  ; $464E: $01 $4B $00
    ld bc, $004B                                  ; $4651: $01 $4B $00
    ld bc, $004B                                  ; $4654: $01 $4B $00
    ld bc, $004B                                  ; $4657: $01 $4B $00
    ld bc, $004B                                  ; $465A: $01 $4B $00
    ld bc, $004B                                  ; $465D: $01 $4B $00
    ld bc, $004B                                  ; $4660: $01 $4B $00
    ld bc, $004B                                  ; $4663: $01 $4B $00
    ld bc, $FF4B                                  ; $4666: $01 $4B $FF
    ld bc, $004B                                  ; $4669: $01 $4B $00
    nop                                           ; $466C: $00
    nop                                           ; $466D: $00
    nop                                           ; $466E: $00
    nop                                           ; $466F: $00
    nop                                           ; $4670: $00
    nop                                           ; $4671: $00
    nop                                           ; $4672: $00
    nop                                           ; $4673: $00
    nop                                           ; $4674: $00
    nop                                           ; $4675: $00
    nop                                           ; $4676: $00
    nop                                           ; $4677: $00
    nop                                           ; $4678: $00
    nop                                           ; $4679: $00
    nop                                           ; $467A: $00
    ld bc, $0200                                  ; $467B: $01 $00 $02
    nop                                           ; $467E: $00
    inc b                                         ; $467F: $04
    nop                                           ; $4680: $00
    ld [$1000], sp                                ; $4681: $08 $00 $10
    nop                                           ; $4684: $00
    jr nz, jr_03C_4687                            ; $4685: $20 $00

jr_03C_4687:
    ld b, b                                       ; $4687: $40
    nop                                           ; $4688: $00
    add b                                         ; $4689: $80
    nop                                           ; $468A: $00
    add c                                         ; $468B: $81
    nop                                           ; $468C: $00
    inc bc                                        ; $468D: $03
    nop                                           ; $468E: $00
    ld b, $00                                     ; $468F: $06 $00
    inc c                                         ; $4691: $0C
    nop                                           ; $4692: $00
    jr jr_03C_4695                                ; $4693: $18 $00

jr_03C_4695:
    jr nc, jr_03C_4697                            ; $4695: $30 $00

jr_03C_4697:
    ld h, b                                       ; $4697: $60
    nop                                           ; $4698: $00
    ret nz                                        ; $4699: $C0

    nop                                           ; $469A: $00
    pop bc                                        ; $469B: $C1
    nop                                           ; $469C: $00
    add e                                         ; $469D: $83
    nop                                           ; $469E: $00
    rlca                                          ; $469F: $07
    nop                                           ; $46A0: $00
    ld c, $00                                     ; $46A1: $0E $00
    inc e                                         ; $46A3: $1C
    nop                                           ; $46A4: $00
    jr c, jr_03C_46A7                             ; $46A5: $38 $00

jr_03C_46A7:
    ld [hl], b                                    ; $46A7: $70
    nop                                           ; $46A8: $00
    ldh [rP1], a                                  ; $46A9: $E0 $00
    pop hl                                        ; $46AB: $E1
    nop                                           ; $46AC: $00
    jp $8700                                      ; $46AD: $C3 $00 $87


    nop                                           ; $46B0: $00
    rrca                                          ; $46B1: $0F
    nop                                           ; $46B2: $00
    ld e, $00                                     ; $46B3: $1E $00
    inc a                                         ; $46B5: $3C
    nop                                           ; $46B6: $00
    ld a, b                                       ; $46B7: $78
    nop                                           ; $46B8: $00
    ldh a, [rP1]                                  ; $46B9: $F0 $00
    pop af                                        ; $46BB: $F1
    nop                                           ; $46BC: $00
    db $E3                                        ; $46BD: $E3
    nop                                           ; $46BE: $00
    rst RST_00                                    ; $46BF: $C7
    nop                                           ; $46C0: $00
    adc a                                         ; $46C1: $8F
    nop                                           ; $46C2: $00
    rra                                           ; $46C3: $1F
    nop                                           ; $46C4: $00
    ld a, $00                                     ; $46C5: $3E $00
    ld a, h                                       ; $46C7: $7C
    nop                                           ; $46C8: $00
    ld hl, sp+$00                                 ; $46C9: $F8 $00
    ld sp, hl                                     ; $46CB: $F9
    nop                                           ; $46CC: $00
    di                                            ; $46CD: $F3
    nop                                           ; $46CE: $00
    rst RST_20                                    ; $46CF: $E7
    nop                                           ; $46D0: $00
    rst RST_08                                    ; $46D1: $CF
    nop                                           ; $46D2: $00
    sbc a                                         ; $46D3: $9F
    nop                                           ; $46D4: $00
    ccf                                           ; $46D5: $3F
    nop                                           ; $46D6: $00
    ld a, [hl]                                    ; $46D7: $7E
    nop                                           ; $46D8: $00
    db $FC                                        ; $46D9: $FC
    nop                                           ; $46DA: $00
    db $FD                                        ; $46DB: $FD
    nop                                           ; $46DC: $00
    ei                                            ; $46DD: $FB
    nop                                           ; $46DE: $00
    rst RST_30                                    ; $46DF: $F7
    nop                                           ; $46E0: $00
    rst RST_28                                    ; $46E1: $EF
    nop                                           ; $46E2: $00
    rst RST_18                                    ; $46E3: $DF
    nop                                           ; $46E4: $00
    cp a                                          ; $46E5: $BF
    nop                                           ; $46E6: $00
    ld a, a                                       ; $46E7: $7F
    nop                                           ; $46E8: $00
    cp $00                                        ; $46E9: $FE $00
    rst RST_38                                    ; $46EB: $FF
    nop                                           ; $46EC: $00
    rst RST_38                                    ; $46ED: $FF
    nop                                           ; $46EE: $00
    rst RST_38                                    ; $46EF: $FF
    nop                                           ; $46F0: $00
    rst RST_38                                    ; $46F1: $FF
    nop                                           ; $46F2: $00
    rst RST_38                                    ; $46F3: $FF
    nop                                           ; $46F4: $00
    rst RST_38                                    ; $46F5: $FF
    nop                                           ; $46F6: $00
    rst RST_38                                    ; $46F7: $FF
    nop                                           ; $46F8: $00
    rst RST_38                                    ; $46F9: $FF
    nop                                           ; $46FA: $00
    add b                                         ; $46FB: $80
    nop                                           ; $46FC: $00
    add b                                         ; $46FD: $80
    add b                                         ; $46FE: $80
    ld c, b                                       ; $46FF: $48
    nop                                           ; $4700: $00
    ld d, b                                       ; $4701: $50
    nop                                           ; $4702: $00
    nop                                           ; $4703: $00
    nop                                           ; $4704: $00
    nop                                           ; $4705: $00
    nop                                           ; $4706: $00
    nop                                           ; $4707: $00
    nop                                           ; $4708: $00
    nop                                           ; $4709: $00
    nop                                           ; $470A: $00
    add b                                         ; $470B: $80
    inc a                                         ; $470C: $3C
    dec de                                        ; $470D: $1B
    ld b, a                                       ; $470E: $47
    nop                                           ; $470F: $00
    nop                                           ; $4710: $00
    dec de                                        ; $4711: $1B
    ld b, a                                       ; $4712: $47
    nop                                           ; $4713: $00
    nop                                           ; $4714: $00
    nop                                           ; $4715: $00
    nop                                           ; $4716: $00
    ld bc, $C001                                  ; $4717: $01 $01 $C0
    ret c                                         ; $471A: $D8

    ld a, l                                       ; $471B: $7D
    ld b, a                                       ; $471C: $47
    rst RST_38                                    ; $471D: $FF
    rst RST_38                                    ; $471E: $FF
    sub h                                         ; $471F: $94
    ld b, a                                       ; $4720: $47
    rst RST_38                                    ; $4721: $FF
    rst RST_38                                    ; $4722: $FF
    xor e                                         ; $4723: $AB
    ld b, a                                       ; $4724: $47
    rst RST_38                                    ; $4725: $FF
    rst RST_38                                    ; $4726: $FF
    jp nz, $FF47                                  ; $4727: $C2 $47 $FF

    rst RST_38                                    ; $472A: $FF
    reti                                          ; $472B: $D9


    ld b, a                                       ; $472C: $47
    rst RST_38                                    ; $472D: $FF
    rst RST_38                                    ; $472E: $FF
    ldh a, [rBGP]                                 ; $472F: $F0 $47
    rst RST_38                                    ; $4731: $FF
    rst RST_38                                    ; $4732: $FF
    rlca                                          ; $4733: $07
    ld c, b                                       ; $4734: $48
    rst RST_38                                    ; $4735: $FF
    rst RST_38                                    ; $4736: $FF
    ld e, $48                                     ; $4737: $1E $48
    rst RST_38                                    ; $4739: $FF
    rst RST_38                                    ; $473A: $FF
    dec [hl]                                      ; $473B: $35
    ld c, b                                       ; $473C: $48
    rst RST_38                                    ; $473D: $FF
    rst RST_38                                    ; $473E: $FF
    ld c, h                                       ; $473F: $4C
    ld c, b                                       ; $4740: $48
    rst RST_38                                    ; $4741: $FF
    rst RST_38                                    ; $4742: $FF
    ld h, e                                       ; $4743: $63
    ld c, b                                       ; $4744: $48
    rst RST_38                                    ; $4745: $FF
    rst RST_38                                    ; $4746: $FF
    ld a, d                                       ; $4747: $7A
    ld c, b                                       ; $4748: $48
    rst RST_38                                    ; $4749: $FF
    rst RST_38                                    ; $474A: $FF
    sub c                                         ; $474B: $91
    ld c, b                                       ; $474C: $48
    rst RST_38                                    ; $474D: $FF
    rst RST_38                                    ; $474E: $FF
    xor b                                         ; $474F: $A8
    ld c, b                                       ; $4750: $48
    rst RST_38                                    ; $4751: $FF
    rst RST_38                                    ; $4752: $FF
    cp a                                          ; $4753: $BF
    ld c, b                                       ; $4754: $48
    rst RST_38                                    ; $4755: $FF
    rst RST_38                                    ; $4756: $FF
    sub $48                                       ; $4757: $D6 $48
    rst RST_38                                    ; $4759: $FF
    rst RST_38                                    ; $475A: $FF
    db $ED                                        ; $475B: $ED
    ld c, b                                       ; $475C: $48
    rst RST_38                                    ; $475D: $FF
    rst RST_38                                    ; $475E: $FF
    inc b                                         ; $475F: $04
    ld c, c                                       ; $4760: $49
    rst RST_38                                    ; $4761: $FF
    rst RST_38                                    ; $4762: $FF
    dec de                                        ; $4763: $1B
    ld c, c                                       ; $4764: $49
    rst RST_38                                    ; $4765: $FF
    rst RST_38                                    ; $4766: $FF
    ld [hl-], a                                   ; $4767: $32
    ld c, c                                       ; $4768: $49
    rst RST_38                                    ; $4769: $FF
    rst RST_38                                    ; $476A: $FF
    ld c, c                                       ; $476B: $49
    ld c, c                                       ; $476C: $49
    rst RST_38                                    ; $476D: $FF
    rst RST_38                                    ; $476E: $FF
    ld h, b                                       ; $476F: $60
    ld c, c                                       ; $4770: $49
    rst RST_38                                    ; $4771: $FF
    rst RST_38                                    ; $4772: $FF
    ld [hl], a                                    ; $4773: $77
    ld c, c                                       ; $4774: $49
    rst RST_38                                    ; $4775: $FF
    rst RST_38                                    ; $4776: $FF
    adc [hl]                                      ; $4777: $8E
    ld c, c                                       ; $4778: $49
    rst RST_38                                    ; $4779: $FF
    rst RST_38                                    ; $477A: $FF
    rst RST_38                                    ; $477B: $FF
    rst RST_38                                    ; $477C: $FF
    sub b                                         ; $477D: $90
    nop                                           ; $477E: $00
    nop                                           ; $477F: $00
    rst RST_38                                    ; $4780: $FF
    rst RST_38                                    ; $4781: $FF
    rst RST_38                                    ; $4782: $FF
    add a                                         ; $4783: $87
    ld b, a                                       ; $4784: $47
    nop                                           ; $4785: $00
    nop                                           ; $4786: $00
    inc b                                         ; $4787: $04
    nop                                           ; $4788: $00
    nop                                           ; $4789: $00
    nop                                           ; $478A: $00
    nop                                           ; $478B: $00
    ld [$1002], sp                                ; $478C: $08 $02 $10
    nop                                           ; $478F: $00
    add b                                         ; $4790: $80
    db $10                                        ; $4791: $10
    ld [$9082], sp                                ; $4792: $08 $82 $90
    nop                                           ; $4795: $00
    nop                                           ; $4796: $00
    rst RST_38                                    ; $4797: $FF
    rst RST_38                                    ; $4798: $FF
    rst RST_38                                    ; $4799: $FF
    sbc [hl]                                      ; $479A: $9E
    ld b, a                                       ; $479B: $47
    nop                                           ; $479C: $00
    nop                                           ; $479D: $00
    inc b                                         ; $479E: $04
    nop                                           ; $479F: $00
    nop                                           ; $47A0: $00
    inc b                                         ; $47A1: $04
    nop                                           ; $47A2: $00
    ld [$1006], sp                                ; $47A3: $08 $06 $10
    nop                                           ; $47A6: $00
    add h                                         ; $47A7: $84
    db $10                                        ; $47A8: $10
    ld [$9086], sp                                ; $47A9: $08 $86 $90
    nop                                           ; $47AC: $00
    nop                                           ; $47AD: $00
    rst RST_38                                    ; $47AE: $FF
    rst RST_38                                    ; $47AF: $FF
    rst RST_38                                    ; $47B0: $FF
    or l                                          ; $47B1: $B5
    ld b, a                                       ; $47B2: $47
    nop                                           ; $47B3: $00
    nop                                           ; $47B4: $00
    inc b                                         ; $47B5: $04
    nop                                           ; $47B6: $00
    nop                                           ; $47B7: $00
    ld [$0800], sp                                ; $47B8: $08 $00 $08
    ld a, [bc]                                    ; $47BB: $0A
    stop                                          ; $47BC: $10 $00
    adc b                                         ; $47BE: $88
    db $10                                        ; $47BF: $10
    ld [$908A], sp                                ; $47C0: $08 $8A $90
    nop                                           ; $47C3: $00
    nop                                           ; $47C4: $00
    rst RST_38                                    ; $47C5: $FF
    rst RST_38                                    ; $47C6: $FF
    rst RST_38                                    ; $47C7: $FF
    call z, Call_000_0047                         ; $47C8: $CC $47 $00
    nop                                           ; $47CB: $00
    inc b                                         ; $47CC: $04
    nop                                           ; $47CD: $00
    nop                                           ; $47CE: $00
    inc c                                         ; $47CF: $0C
    nop                                           ; $47D0: $00
    ld [$100E], sp                                ; $47D1: $08 $0E $10
    nop                                           ; $47D4: $00
    adc h                                         ; $47D5: $8C
    db $10                                        ; $47D6: $10
    ld [$908E], sp                                ; $47D7: $08 $8E $90
    nop                                           ; $47DA: $00
    nop                                           ; $47DB: $00
    rst RST_38                                    ; $47DC: $FF
    rst RST_38                                    ; $47DD: $FF
    rst RST_38                                    ; $47DE: $FF
    db $E3                                        ; $47DF: $E3
    ld b, a                                       ; $47E0: $47
    nop                                           ; $47E1: $00
    nop                                           ; $47E2: $00
    inc b                                         ; $47E3: $04
    nop                                           ; $47E4: $00
    nop                                           ; $47E5: $00
    stop                                          ; $47E6: $10 $00
    ld [$1012], sp                                ; $47E8: $08 $12 $10
    nop                                           ; $47EB: $00
    sub b                                         ; $47EC: $90
    db $10                                        ; $47ED: $10
    ld [$9092], sp                                ; $47EE: $08 $92 $90
    nop                                           ; $47F1: $00
    nop                                           ; $47F2: $00
    rst RST_38                                    ; $47F3: $FF
    rst RST_38                                    ; $47F4: $FF
    rst RST_38                                    ; $47F5: $FF
    ld a, [$0047]                                 ; $47F6: $FA $47 $00
    nop                                           ; $47F9: $00
    inc b                                         ; $47FA: $04
    nop                                           ; $47FB: $00
    nop                                           ; $47FC: $00
    inc d                                         ; $47FD: $14
    nop                                           ; $47FE: $00
    ld [$1016], sp                                ; $47FF: $08 $16 $10
    nop                                           ; $4802: $00
    sub h                                         ; $4803: $94
    db $10                                        ; $4804: $10
    ld [$9096], sp                                ; $4805: $08 $96 $90
    nop                                           ; $4808: $00
    nop                                           ; $4809: $00
    rst RST_38                                    ; $480A: $FF
    rst RST_38                                    ; $480B: $FF
    rst RST_38                                    ; $480C: $FF
    ld de, $0048                                  ; $480D: $11 $48 $00
    nop                                           ; $4810: $00
    inc b                                         ; $4811: $04
    nop                                           ; $4812: $00
    nop                                           ; $4813: $00
    jr jr_03C_4816                                ; $4814: $18 $00

jr_03C_4816:
    ld [$101A], sp                                ; $4816: $08 $1A $10
    nop                                           ; $4819: $00
    sbc b                                         ; $481A: $98
    db $10                                        ; $481B: $10
    ld [$909A], sp                                ; $481C: $08 $9A $90
    nop                                           ; $481F: $00
    nop                                           ; $4820: $00
    rst RST_38                                    ; $4821: $FF
    rst RST_38                                    ; $4822: $FF
    rst RST_38                                    ; $4823: $FF
    jr z, jr_03C_486E                             ; $4824: $28 $48

    nop                                           ; $4826: $00
    nop                                           ; $4827: $00
    inc b                                         ; $4828: $04
    nop                                           ; $4829: $00
    nop                                           ; $482A: $00
    inc e                                         ; $482B: $1C
    nop                                           ; $482C: $00
    ld [$101E], sp                                ; $482D: $08 $1E $10
    nop                                           ; $4830: $00
    sbc h                                         ; $4831: $9C
    db $10                                        ; $4832: $10
    ld [$909E], sp                                ; $4833: $08 $9E $90
    nop                                           ; $4836: $00
    nop                                           ; $4837: $00
    rst RST_38                                    ; $4838: $FF
    rst RST_38                                    ; $4839: $FF
    rst RST_38                                    ; $483A: $FF
    ccf                                           ; $483B: $3F
    ld c, b                                       ; $483C: $48
    nop                                           ; $483D: $00
    nop                                           ; $483E: $00
    inc b                                         ; $483F: $04
    nop                                           ; $4840: $00
    nop                                           ; $4841: $00
    jr nz, jr_03C_4844                            ; $4842: $20 $00

jr_03C_4844:
    ld [$1022], sp                                ; $4844: $08 $22 $10
    nop                                           ; $4847: $00
    and b                                         ; $4848: $A0
    db $10                                        ; $4849: $10
    ld [$90A2], sp                                ; $484A: $08 $A2 $90
    nop                                           ; $484D: $00
    nop                                           ; $484E: $00
    rst RST_38                                    ; $484F: $FF
    rst RST_38                                    ; $4850: $FF
    rst RST_38                                    ; $4851: $FF
    ld d, [hl]                                    ; $4852: $56
    ld c, b                                       ; $4853: $48
    nop                                           ; $4854: $00
    nop                                           ; $4855: $00
    inc b                                         ; $4856: $04
    nop                                           ; $4857: $00
    nop                                           ; $4858: $00
    inc h                                         ; $4859: $24
    nop                                           ; $485A: $00
    ld [$1026], sp                                ; $485B: $08 $26 $10
    nop                                           ; $485E: $00
    and h                                         ; $485F: $A4
    db $10                                        ; $4860: $10
    ld [$90A6], sp                                ; $4861: $08 $A6 $90
    nop                                           ; $4864: $00
    nop                                           ; $4865: $00
    rst RST_38                                    ; $4866: $FF
    rst RST_38                                    ; $4867: $FF
    rst RST_38                                    ; $4868: $FF
    ld l, l                                       ; $4869: $6D
    ld c, b                                       ; $486A: $48
    nop                                           ; $486B: $00
    nop                                           ; $486C: $00
    inc b                                         ; $486D: $04

jr_03C_486E:
    nop                                           ; $486E: $00
    nop                                           ; $486F: $00
    jr z, jr_03C_4872                             ; $4870: $28 $00

jr_03C_4872:
    ld [$102A], sp                                ; $4872: $08 $2A $10
    nop                                           ; $4875: $00
    xor b                                         ; $4876: $A8
    db $10                                        ; $4877: $10
    ld [$90AA], sp                                ; $4878: $08 $AA $90
    nop                                           ; $487B: $00
    nop                                           ; $487C: $00
    rst RST_38                                    ; $487D: $FF
    rst RST_38                                    ; $487E: $FF
    rst RST_38                                    ; $487F: $FF
    add h                                         ; $4880: $84
    ld c, b                                       ; $4881: $48
    nop                                           ; $4882: $00
    nop                                           ; $4883: $00
    inc b                                         ; $4884: $04
    nop                                           ; $4885: $00
    nop                                           ; $4886: $00
    inc l                                         ; $4887: $2C
    nop                                           ; $4888: $00
    ld [$102E], sp                                ; $4889: $08 $2E $10
    nop                                           ; $488C: $00
    xor h                                         ; $488D: $AC
    db $10                                        ; $488E: $10
    ld [$90AE], sp                                ; $488F: $08 $AE $90
    nop                                           ; $4892: $00
    nop                                           ; $4893: $00
    rst RST_38                                    ; $4894: $FF
    rst RST_38                                    ; $4895: $FF
    rst RST_38                                    ; $4896: $FF
    sbc e                                         ; $4897: $9B
    ld c, b                                       ; $4898: $48
    nop                                           ; $4899: $00
    nop                                           ; $489A: $00
    inc b                                         ; $489B: $04
    nop                                           ; $489C: $00
    nop                                           ; $489D: $00
    jr nc, jr_03C_48A0                            ; $489E: $30 $00

jr_03C_48A0:
    ld [$1032], sp                                ; $48A0: $08 $32 $10
    nop                                           ; $48A3: $00
    or b                                          ; $48A4: $B0
    db $10                                        ; $48A5: $10
    ld [$90B2], sp                                ; $48A6: $08 $B2 $90
    nop                                           ; $48A9: $00
    nop                                           ; $48AA: $00
    rst RST_38                                    ; $48AB: $FF
    rst RST_38                                    ; $48AC: $FF
    rst RST_38                                    ; $48AD: $FF
    or d                                          ; $48AE: $B2
    ld c, b                                       ; $48AF: $48
    nop                                           ; $48B0: $00
    nop                                           ; $48B1: $00
    inc b                                         ; $48B2: $04
    nop                                           ; $48B3: $00
    nop                                           ; $48B4: $00
    inc [hl]                                      ; $48B5: $34
    nop                                           ; $48B6: $00
    ld [$1036], sp                                ; $48B7: $08 $36 $10
    nop                                           ; $48BA: $00
    or h                                          ; $48BB: $B4
    db $10                                        ; $48BC: $10
    ld [$90B6], sp                                ; $48BD: $08 $B6 $90
    nop                                           ; $48C0: $00
    nop                                           ; $48C1: $00
    rst RST_38                                    ; $48C2: $FF
    rst RST_38                                    ; $48C3: $FF
    rst RST_38                                    ; $48C4: $FF
    ret                                           ; $48C5: $C9


    ld c, b                                       ; $48C6: $48
    nop                                           ; $48C7: $00
    nop                                           ; $48C8: $00
    inc b                                         ; $48C9: $04
    nop                                           ; $48CA: $00
    nop                                           ; $48CB: $00
    jr c, jr_03C_48CE                             ; $48CC: $38 $00

jr_03C_48CE:
    ld [$103A], sp                                ; $48CE: $08 $3A $10
    nop                                           ; $48D1: $00
    cp b                                          ; $48D2: $B8
    db $10                                        ; $48D3: $10
    ld [$90BA], sp                                ; $48D4: $08 $BA $90
    nop                                           ; $48D7: $00
    nop                                           ; $48D8: $00
    rst RST_38                                    ; $48D9: $FF
    rst RST_38                                    ; $48DA: $FF
    rst RST_38                                    ; $48DB: $FF
    ldh [rOBP0], a                                ; $48DC: $E0 $48
    nop                                           ; $48DE: $00
    nop                                           ; $48DF: $00
    inc b                                         ; $48E0: $04
    nop                                           ; $48E1: $00
    nop                                           ; $48E2: $00
    inc a                                         ; $48E3: $3C
    nop                                           ; $48E4: $00
    ld [$103E], sp                                ; $48E5: $08 $3E $10
    nop                                           ; $48E8: $00
    cp h                                          ; $48E9: $BC
    db $10                                        ; $48EA: $10
    ld [$90BE], sp                                ; $48EB: $08 $BE $90
    nop                                           ; $48EE: $00
    nop                                           ; $48EF: $00
    rst RST_38                                    ; $48F0: $FF
    rst RST_38                                    ; $48F1: $FF
    rst RST_38                                    ; $48F2: $FF
    rst RST_30                                    ; $48F3: $F7
    ld c, b                                       ; $48F4: $48
    nop                                           ; $48F5: $00
    nop                                           ; $48F6: $00
    inc b                                         ; $48F7: $04
    nop                                           ; $48F8: $00
    nop                                           ; $48F9: $00
    nop                                           ; $48FA: $00
    nop                                           ; $48FB: $00
    ld [$1002], sp                                ; $48FC: $08 $02 $10
    nop                                           ; $48FF: $00
    add b                                         ; $4900: $80
    db $10                                        ; $4901: $10
    ld [$9082], sp                                ; $4902: $08 $82 $90
    nop                                           ; $4905: $00
    nop                                           ; $4906: $00
    rst RST_38                                    ; $4907: $FF
    rst RST_38                                    ; $4908: $FF
    rst RST_38                                    ; $4909: $FF
    ld c, $49                                     ; $490A: $0E $49
    nop                                           ; $490C: $00
    nop                                           ; $490D: $00
    inc b                                         ; $490E: $04
    nop                                           ; $490F: $00
    nop                                           ; $4910: $00
    inc b                                         ; $4911: $04
    nop                                           ; $4912: $00
    ld [$1006], sp                                ; $4913: $08 $06 $10
    nop                                           ; $4916: $00
    add h                                         ; $4917: $84
    db $10                                        ; $4918: $10
    ld [$9086], sp                                ; $4919: $08 $86 $90
    nop                                           ; $491C: $00
    nop                                           ; $491D: $00
    rst RST_38                                    ; $491E: $FF
    rst RST_38                                    ; $491F: $FF
    rst RST_38                                    ; $4920: $FF
    dec h                                         ; $4921: $25
    ld c, c                                       ; $4922: $49
    nop                                           ; $4923: $00
    nop                                           ; $4924: $00
    inc b                                         ; $4925: $04
    nop                                           ; $4926: $00
    nop                                           ; $4927: $00
    ld [$0800], sp                                ; $4928: $08 $00 $08
    ld a, [bc]                                    ; $492B: $0A
    stop                                          ; $492C: $10 $00
    adc b                                         ; $492E: $88
    db $10                                        ; $492F: $10
    ld [$908A], sp                                ; $4930: $08 $8A $90
    nop                                           ; $4933: $00
    nop                                           ; $4934: $00
    rst RST_38                                    ; $4935: $FF
    rst RST_38                                    ; $4936: $FF
    rst RST_38                                    ; $4937: $FF
    inc a                                         ; $4938: $3C
    ld c, c                                       ; $4939: $49
    nop                                           ; $493A: $00
    nop                                           ; $493B: $00
    inc b                                         ; $493C: $04
    nop                                           ; $493D: $00
    nop                                           ; $493E: $00
    inc c                                         ; $493F: $0C
    nop                                           ; $4940: $00
    ld [$100E], sp                                ; $4941: $08 $0E $10
    nop                                           ; $4944: $00
    adc h                                         ; $4945: $8C
    db $10                                        ; $4946: $10
    ld [$908E], sp                                ; $4947: $08 $8E $90
    nop                                           ; $494A: $00
    nop                                           ; $494B: $00
    rst RST_38                                    ; $494C: $FF
    rst RST_38                                    ; $494D: $FF
    rst RST_38                                    ; $494E: $FF
    ld d, e                                       ; $494F: $53
    ld c, c                                       ; $4950: $49
    nop                                           ; $4951: $00
    nop                                           ; $4952: $00
    inc b                                         ; $4953: $04
    nop                                           ; $4954: $00
    nop                                           ; $4955: $00
    stop                                          ; $4956: $10 $00
    ld [$1012], sp                                ; $4958: $08 $12 $10
    nop                                           ; $495B: $00
    sub b                                         ; $495C: $90
    db $10                                        ; $495D: $10
    ld [$9092], sp                                ; $495E: $08 $92 $90
    nop                                           ; $4961: $00
    nop                                           ; $4962: $00
    rst RST_38                                    ; $4963: $FF
    rst RST_38                                    ; $4964: $FF
    rst RST_38                                    ; $4965: $FF
    ld l, d                                       ; $4966: $6A
    ld c, c                                       ; $4967: $49
    nop                                           ; $4968: $00
    nop                                           ; $4969: $00
    inc b                                         ; $496A: $04
    nop                                           ; $496B: $00
    nop                                           ; $496C: $00
    inc d                                         ; $496D: $14
    nop                                           ; $496E: $00
    ld [$1016], sp                                ; $496F: $08 $16 $10
    nop                                           ; $4972: $00
    sub h                                         ; $4973: $94
    db $10                                        ; $4974: $10
    ld [$9096], sp                                ; $4975: $08 $96 $90
    nop                                           ; $4978: $00
    nop                                           ; $4979: $00
    rst RST_38                                    ; $497A: $FF
    rst RST_38                                    ; $497B: $FF
    rst RST_38                                    ; $497C: $FF
    add c                                         ; $497D: $81
    ld c, c                                       ; $497E: $49
    nop                                           ; $497F: $00
    nop                                           ; $4980: $00
    inc b                                         ; $4981: $04
    nop                                           ; $4982: $00
    nop                                           ; $4983: $00
    jr jr_03C_4986                                ; $4984: $18 $00

jr_03C_4986:
    ld [$101A], sp                                ; $4986: $08 $1A $10
    nop                                           ; $4989: $00
    sbc b                                         ; $498A: $98
    db $10                                        ; $498B: $10
    ld [$909A], sp                                ; $498C: $08 $9A $90
    nop                                           ; $498F: $00
    nop                                           ; $4990: $00
    rst RST_38                                    ; $4991: $FF
    rst RST_38                                    ; $4992: $FF
    rst RST_38                                    ; $4993: $FF
    sbc b                                         ; $4994: $98
    ld c, c                                       ; $4995: $49
    nop                                           ; $4996: $00
    nop                                           ; $4997: $00
    inc b                                         ; $4998: $04
    nop                                           ; $4999: $00
    nop                                           ; $499A: $00
    inc e                                         ; $499B: $1C
    nop                                           ; $499C: $00
    ld [$101E], sp                                ; $499D: $08 $1E $10
    nop                                           ; $49A0: $00
    sbc h                                         ; $49A1: $9C
    db $10                                        ; $49A2: $10
    ld [$909E], sp                                ; $49A3: $08 $9E $90
    nop                                           ; $49A6: $00
    add b                                         ; $49A7: $80
    add b                                         ; $49A8: $80
    ld c, b                                       ; $49A9: $48
    nop                                           ; $49AA: $00
    ld d, b                                       ; $49AB: $50
    nop                                           ; $49AC: $00
    nop                                           ; $49AD: $00
    nop                                           ; $49AE: $00
    nop                                           ; $49AF: $00
    nop                                           ; $49B0: $00
    nop                                           ; $49B1: $00
    nop                                           ; $49B2: $00
    ld h, b                                       ; $49B3: $60
    nop                                           ; $49B4: $00
    add b                                         ; $49B5: $80
    inc a                                         ; $49B6: $3C
    push hl                                       ; $49B7: $E5
    ld c, c                                       ; $49B8: $49
    nop                                           ; $49B9: $00
    nop                                           ; $49BA: $00
    push hl                                       ; $49BB: $E5
    ld c, c                                       ; $49BC: $49
    nop                                           ; $49BD: $00
    nop                                           ; $49BE: $00
    nop                                           ; $49BF: $00
    nop                                           ; $49C0: $00
    ld bc, $C001                                  ; $49C1: $01 $01 $C0
    ret c                                         ; $49C4: $D8

    sub b                                         ; $49C5: $90
    nop                                           ; $49C6: $00
    add b                                         ; $49C7: $80
    add b                                         ; $49C8: $80
    ld c, b                                       ; $49C9: $48
    nop                                           ; $49CA: $00
    ld d, b                                       ; $49CB: $50
    nop                                           ; $49CC: $00
    nop                                           ; $49CD: $00
    nop                                           ; $49CE: $00
    nop                                           ; $49CF: $00
    nop                                           ; $49D0: $00
    nop                                           ; $49D1: $00
    nop                                           ; $49D2: $00
    ld h, b                                       ; $49D3: $60
    nop                                           ; $49D4: $00
    add b                                         ; $49D5: $80
    inc a                                         ; $49D6: $3C
    dec sp                                        ; $49D7: $3B
    ld c, d                                       ; $49D8: $4A
    nop                                           ; $49D9: $00
    nop                                           ; $49DA: $00
    dec sp                                        ; $49DB: $3B
    ld c, d                                       ; $49DC: $4A
    nop                                           ; $49DD: $00
    nop                                           ; $49DE: $00
    nop                                           ; $49DF: $00
    nop                                           ; $49E0: $00
    ld bc, $C001                                  ; $49E1: $01 $01 $C0
    ret c                                         ; $49E4: $D8

    di                                            ; $49E5: $F3
    ld c, d                                       ; $49E6: $4A
    rst RST_38                                    ; $49E7: $FF
    rst RST_38                                    ; $49E8: $FF
    di                                            ; $49E9: $F3
    ld c, d                                       ; $49EA: $4A
    rst RST_38                                    ; $49EB: $FF
    rst RST_38                                    ; $49EC: $FF
    di                                            ; $49ED: $F3
    ld c, d                                       ; $49EE: $4A
    rst RST_38                                    ; $49EF: $FF
    rst RST_38                                    ; $49F0: $FF
    di                                            ; $49F1: $F3
    ld c, d                                       ; $49F2: $4A
    rst RST_38                                    ; $49F3: $FF
    rst RST_38                                    ; $49F4: $FF
    di                                            ; $49F5: $F3
    ld c, d                                       ; $49F6: $4A
    rst RST_38                                    ; $49F7: $FF
    rst RST_38                                    ; $49F8: $FF
    di                                            ; $49F9: $F3
    ld c, d                                       ; $49FA: $4A
    rst RST_38                                    ; $49FB: $FF
    rst RST_38                                    ; $49FC: $FF
    push hl                                       ; $49FD: $E5
    ld c, d                                       ; $49FE: $4A
    rst RST_38                                    ; $49FF: $FF
    rst RST_38                                    ; $4A00: $FF
    rst RST_10                                    ; $4A01: $D7
    ld c, d                                       ; $4A02: $4A
    rst RST_38                                    ; $4A03: $FF
    rst RST_38                                    ; $4A04: $FF
    ret                                           ; $4A05: $C9


    ld c, d                                       ; $4A06: $4A
    rst RST_38                                    ; $4A07: $FF
    rst RST_38                                    ; $4A08: $FF
    cp e                                          ; $4A09: $BB
    ld c, d                                       ; $4A0A: $4A
    rst RST_38                                    ; $4A0B: $FF
    rst RST_38                                    ; $4A0C: $FF
    xor l                                         ; $4A0D: $AD
    ld c, d                                       ; $4A0E: $4A
    rst RST_38                                    ; $4A0F: $FF
    rst RST_38                                    ; $4A10: $FF
    sbc a                                         ; $4A11: $9F
    ld c, d                                       ; $4A12: $4A
    rst RST_38                                    ; $4A13: $FF
    rst RST_38                                    ; $4A14: $FF
    sub c                                         ; $4A15: $91
    ld c, d                                       ; $4A16: $4A
    rst RST_38                                    ; $4A17: $FF
    rst RST_38                                    ; $4A18: $FF
    xor l                                         ; $4A19: $AD
    ld c, d                                       ; $4A1A: $4A
    rst RST_38                                    ; $4A1B: $FF
    rst RST_38                                    ; $4A1C: $FF
    xor l                                         ; $4A1D: $AD
    ld c, d                                       ; $4A1E: $4A
    rst RST_38                                    ; $4A1F: $FF
    rst RST_38                                    ; $4A20: $FF
    ret                                           ; $4A21: $C9


    ld c, d                                       ; $4A22: $4A
    rst RST_38                                    ; $4A23: $FF
    rst RST_38                                    ; $4A24: $FF
    ret                                           ; $4A25: $C9


    ld c, d                                       ; $4A26: $4A
    rst RST_38                                    ; $4A27: $FF
    rst RST_38                                    ; $4A28: $FF
    push hl                                       ; $4A29: $E5
    ld c, d                                       ; $4A2A: $4A
    rst RST_38                                    ; $4A2B: $FF
    rst RST_38                                    ; $4A2C: $FF
    push hl                                       ; $4A2D: $E5
    ld c, d                                       ; $4A2E: $4A
    rst RST_38                                    ; $4A2F: $FF
    rst RST_38                                    ; $4A30: $FF
    di                                            ; $4A31: $F3
    ld c, d                                       ; $4A32: $4A
    rst RST_38                                    ; $4A33: $FF
    rst RST_38                                    ; $4A34: $FF
    di                                            ; $4A35: $F3
    ld c, d                                       ; $4A36: $4A
    rst RST_38                                    ; $4A37: $FF
    rst RST_38                                    ; $4A38: $FF
    rst RST_38                                    ; $4A39: $FF
    rst RST_38                                    ; $4A3A: $FF
    di                                            ; $4A3B: $F3
    ld c, d                                       ; $4A3C: $4A
    rst RST_38                                    ; $4A3D: $FF
    rst RST_38                                    ; $4A3E: $FF
    di                                            ; $4A3F: $F3
    ld c, d                                       ; $4A40: $4A
    rst RST_38                                    ; $4A41: $FF
    rst RST_38                                    ; $4A42: $FF
    di                                            ; $4A43: $F3
    ld c, d                                       ; $4A44: $4A
    rst RST_38                                    ; $4A45: $FF
    rst RST_38                                    ; $4A46: $FF
    di                                            ; $4A47: $F3
    ld c, d                                       ; $4A48: $4A
    rst RST_38                                    ; $4A49: $FF
    rst RST_38                                    ; $4A4A: $FF
    di                                            ; $4A4B: $F3
    ld c, d                                       ; $4A4C: $4A
    rst RST_38                                    ; $4A4D: $FF
    rst RST_38                                    ; $4A4E: $FF
    di                                            ; $4A4F: $F3
    ld c, d                                       ; $4A50: $4A
    rst RST_38                                    ; $4A51: $FF
    rst RST_38                                    ; $4A52: $FF
    push hl                                       ; $4A53: $E5
    ld c, d                                       ; $4A54: $4A
    rst RST_38                                    ; $4A55: $FF
    rst RST_38                                    ; $4A56: $FF
    rst RST_10                                    ; $4A57: $D7
    ld c, d                                       ; $4A58: $4A
    rst RST_38                                    ; $4A59: $FF
    rst RST_38                                    ; $4A5A: $FF
    ret                                           ; $4A5B: $C9


    ld c, d                                       ; $4A5C: $4A
    rst RST_38                                    ; $4A5D: $FF
    rst RST_38                                    ; $4A5E: $FF
    cp e                                          ; $4A5F: $BB
    ld c, d                                       ; $4A60: $4A
    rst RST_38                                    ; $4A61: $FF
    rst RST_38                                    ; $4A62: $FF
    xor l                                         ; $4A63: $AD
    ld c, d                                       ; $4A64: $4A
    rst RST_38                                    ; $4A65: $FF
    rst RST_38                                    ; $4A66: $FF
    sbc a                                         ; $4A67: $9F
    ld c, d                                       ; $4A68: $4A
    rst RST_38                                    ; $4A69: $FF
    rst RST_38                                    ; $4A6A: $FF
    sub c                                         ; $4A6B: $91
    ld c, d                                       ; $4A6C: $4A
    rst RST_38                                    ; $4A6D: $FF
    rst RST_38                                    ; $4A6E: $FF
    sbc a                                         ; $4A6F: $9F
    ld c, d                                       ; $4A70: $4A
    rst RST_38                                    ; $4A71: $FF
    rst RST_38                                    ; $4A72: $FF
    sbc a                                         ; $4A73: $9F
    ld c, d                                       ; $4A74: $4A
    rst RST_38                                    ; $4A75: $FF
    rst RST_38                                    ; $4A76: $FF
    cp e                                          ; $4A77: $BB
    ld c, d                                       ; $4A78: $4A
    rst RST_38                                    ; $4A79: $FF
    rst RST_38                                    ; $4A7A: $FF
    cp e                                          ; $4A7B: $BB
    ld c, d                                       ; $4A7C: $4A
    rst RST_38                                    ; $4A7D: $FF
    rst RST_38                                    ; $4A7E: $FF
    rst RST_10                                    ; $4A7F: $D7
    ld c, d                                       ; $4A80: $4A
    rst RST_38                                    ; $4A81: $FF
    rst RST_38                                    ; $4A82: $FF
    rst RST_10                                    ; $4A83: $D7
    ld c, d                                       ; $4A84: $4A
    rst RST_38                                    ; $4A85: $FF
    rst RST_38                                    ; $4A86: $FF
    di                                            ; $4A87: $F3
    ld c, d                                       ; $4A88: $4A
    rst RST_38                                    ; $4A89: $FF
    rst RST_38                                    ; $4A8A: $FF
    di                                            ; $4A8B: $F3
    ld c, d                                       ; $4A8C: $4A
    rst RST_38                                    ; $4A8D: $FF
    rst RST_38                                    ; $4A8E: $FF
    rst RST_38                                    ; $4A8F: $FF
    rst RST_38                                    ; $4A90: $FF
    sub b                                         ; $4A91: $90
    nop                                           ; $4A92: $00
    nop                                           ; $4A93: $00
    rst RST_38                                    ; $4A94: $FF
    rst RST_38                                    ; $4A95: $FF
    rst RST_38                                    ; $4A96: $FF
    sbc e                                         ; $4A97: $9B
    ld c, d                                       ; $4A98: $4A
    nop                                           ; $4A99: $00
    nop                                           ; $4A9A: $00
    ld bc, $0410                                  ; $4A9B: $01 $10 $04
    nop                                           ; $4A9E: $00
    sub b                                         ; $4A9F: $90
    nop                                           ; $4AA0: $00
    nop                                           ; $4AA1: $00
    rst RST_38                                    ; $4AA2: $FF
    rst RST_38                                    ; $4AA3: $FF
    rst RST_38                                    ; $4AA4: $FF
    xor c                                         ; $4AA5: $A9
    ld c, d                                       ; $4AA6: $4A
    nop                                           ; $4AA7: $00
    nop                                           ; $4AA8: $00
    ld bc, $0410                                  ; $4AA9: $01 $10 $04
    ld [bc], a                                    ; $4AAC: $02
    sub b                                         ; $4AAD: $90
    nop                                           ; $4AAE: $00
    nop                                           ; $4AAF: $00
    rst RST_38                                    ; $4AB0: $FF
    rst RST_38                                    ; $4AB1: $FF
    rst RST_38                                    ; $4AB2: $FF
    or a                                          ; $4AB3: $B7
    ld c, d                                       ; $4AB4: $4A
    nop                                           ; $4AB5: $00
    nop                                           ; $4AB6: $00
    ld bc, $0410                                  ; $4AB7: $01 $10 $04
    inc b                                         ; $4ABA: $04
    sub b                                         ; $4ABB: $90
    nop                                           ; $4ABC: $00
    nop                                           ; $4ABD: $00
    rst RST_38                                    ; $4ABE: $FF
    rst RST_38                                    ; $4ABF: $FF
    rst RST_38                                    ; $4AC0: $FF
    push bc                                       ; $4AC1: $C5
    ld c, d                                       ; $4AC2: $4A
    nop                                           ; $4AC3: $00
    nop                                           ; $4AC4: $00
    ld bc, $0410                                  ; $4AC5: $01 $10 $04
    ld b, $90                                     ; $4AC8: $06 $90
    nop                                           ; $4ACA: $00
    nop                                           ; $4ACB: $00
    rst RST_38                                    ; $4ACC: $FF
    rst RST_38                                    ; $4ACD: $FF
    rst RST_38                                    ; $4ACE: $FF
    db $D3                                        ; $4ACF: $D3
    ld c, d                                       ; $4AD0: $4A
    nop                                           ; $4AD1: $00
    nop                                           ; $4AD2: $00
    ld bc, $0410                                  ; $4AD3: $01 $10 $04
    ld [$0090], sp                                ; $4AD6: $08 $90 $00
    nop                                           ; $4AD9: $00
    rst RST_38                                    ; $4ADA: $FF
    rst RST_38                                    ; $4ADB: $FF
    rst RST_38                                    ; $4ADC: $FF
    pop hl                                        ; $4ADD: $E1
    ld c, d                                       ; $4ADE: $4A
    nop                                           ; $4ADF: $00
    nop                                           ; $4AE0: $00
    ld bc, $0410                                  ; $4AE1: $01 $10 $04
    ld a, [bc]                                    ; $4AE4: $0A
    sub b                                         ; $4AE5: $90
    nop                                           ; $4AE6: $00
    nop                                           ; $4AE7: $00
    rst RST_38                                    ; $4AE8: $FF
    rst RST_38                                    ; $4AE9: $FF
    rst RST_38                                    ; $4AEA: $FF
    rst RST_28                                    ; $4AEB: $EF
    ld c, d                                       ; $4AEC: $4A
    nop                                           ; $4AED: $00
    nop                                           ; $4AEE: $00
    ld bc, $0410                                  ; $4AEF: $01 $10 $04
    inc c                                         ; $4AF2: $0C
    sub b                                         ; $4AF3: $90
    nop                                           ; $4AF4: $00
    nop                                           ; $4AF5: $00
    rst RST_38                                    ; $4AF6: $FF
    rst RST_38                                    ; $4AF7: $FF
    rst RST_38                                    ; $4AF8: $FF
    db $FD                                        ; $4AF9: $FD
    ld c, d                                       ; $4AFA: $4A
    nop                                           ; $4AFB: $00
    nop                                           ; $4AFC: $00
    ld bc, $0410                                  ; $4AFD: $01 $10 $04
    ld c, $00                                     ; $4B00: $0E $00
    nop                                           ; $4B02: $00
    nop                                           ; $4B03: $00
    nop                                           ; $4B04: $00
    nop                                           ; $4B05: $00
    nop                                           ; $4B06: $00
    nop                                           ; $4B07: $00
    nop                                           ; $4B08: $00
    nop                                           ; $4B09: $00
    nop                                           ; $4B0A: $00
    nop                                           ; $4B0B: $00
    nop                                           ; $4B0C: $00
    nop                                           ; $4B0D: $00
    nop                                           ; $4B0E: $00
    nop                                           ; $4B0F: $00
    nop                                           ; $4B10: $00
    nop                                           ; $4B11: $00
    nop                                           ; $4B12: $00
    nop                                           ; $4B13: $00
    nop                                           ; $4B14: $00
    nop                                           ; $4B15: $00
    nop                                           ; $4B16: $00
    nop                                           ; $4B17: $00
    nop                                           ; $4B18: $00
    nop                                           ; $4B19: $00
    nop                                           ; $4B1A: $00
    nop                                           ; $4B1B: $00
    nop                                           ; $4B1C: $00
    nop                                           ; $4B1D: $00
    nop                                           ; $4B1E: $00
    nop                                           ; $4B1F: $00
    nop                                           ; $4B20: $00
    nop                                           ; $4B21: $00
    nop                                           ; $4B22: $00
    nop                                           ; $4B23: $00
    nop                                           ; $4B24: $00
    nop                                           ; $4B25: $00
    nop                                           ; $4B26: $00
    nop                                           ; $4B27: $00
    nop                                           ; $4B28: $00
    nop                                           ; $4B29: $00
    nop                                           ; $4B2A: $00
    nop                                           ; $4B2B: $00
    nop                                           ; $4B2C: $00
    nop                                           ; $4B2D: $00
    nop                                           ; $4B2E: $00
    nop                                           ; $4B2F: $00
    nop                                           ; $4B30: $00
    nop                                           ; $4B31: $00
    nop                                           ; $4B32: $00
    nop                                           ; $4B33: $00
    nop                                           ; $4B34: $00
    nop                                           ; $4B35: $00
    nop                                           ; $4B36: $00
    nop                                           ; $4B37: $00
    nop                                           ; $4B38: $00
    nop                                           ; $4B39: $00
    nop                                           ; $4B3A: $00
    nop                                           ; $4B3B: $00
    nop                                           ; $4B3C: $00
    nop                                           ; $4B3D: $00
    nop                                           ; $4B3E: $00
    nop                                           ; $4B3F: $00
    nop                                           ; $4B40: $00
    nop                                           ; $4B41: $00
    nop                                           ; $4B42: $00
    nop                                           ; $4B43: $00
    nop                                           ; $4B44: $00
    nop                                           ; $4B45: $00
    nop                                           ; $4B46: $00
    nop                                           ; $4B47: $00
    nop                                           ; $4B48: $00
    nop                                           ; $4B49: $00
    nop                                           ; $4B4A: $00
    nop                                           ; $4B4B: $00
    nop                                           ; $4B4C: $00
    nop                                           ; $4B4D: $00
    nop                                           ; $4B4E: $00
    nop                                           ; $4B4F: $00
    add b                                         ; $4B50: $80
    nop                                           ; $4B51: $00
    add d                                         ; $4B52: $82
    nop                                           ; $4B53: $00
    add h                                         ; $4B54: $84
    nop                                           ; $4B55: $00
    add [hl]                                      ; $4B56: $86
    nop                                           ; $4B57: $00
    adc b                                         ; $4B58: $88
    nop                                           ; $4B59: $00
    adc d                                         ; $4B5A: $8A
    nop                                           ; $4B5B: $00
    adc h                                         ; $4B5C: $8C
    nop                                           ; $4B5D: $00
    adc [hl]                                      ; $4B5E: $8E
    nop                                           ; $4B5F: $00
    sub b                                         ; $4B60: $90
    nop                                           ; $4B61: $00
    sub d                                         ; $4B62: $92
    nop                                           ; $4B63: $00
    sub h                                         ; $4B64: $94
    nop                                           ; $4B65: $00
    sub [hl]                                      ; $4B66: $96
    nop                                           ; $4B67: $00
    sbc b                                         ; $4B68: $98
    nop                                           ; $4B69: $00
    sbc d                                         ; $4B6A: $9A
    nop                                           ; $4B6B: $00
    sbc h                                         ; $4B6C: $9C
    nop                                           ; $4B6D: $00
    sbc [hl]                                      ; $4B6E: $9E
    nop                                           ; $4B6F: $00
    nop                                           ; $4B70: $00
    nop                                           ; $4B71: $00
    nop                                           ; $4B72: $00
    nop                                           ; $4B73: $00
    nop                                           ; $4B74: $00
    nop                                           ; $4B75: $00
    add c                                         ; $4B76: $81
    nop                                           ; $4B77: $00
    add e                                         ; $4B78: $83
    nop                                           ; $4B79: $00
    add l                                         ; $4B7A: $85
    nop                                           ; $4B7B: $00
    add a                                         ; $4B7C: $87
    nop                                           ; $4B7D: $00
    adc c                                         ; $4B7E: $89
    nop                                           ; $4B7F: $00
    adc e                                         ; $4B80: $8B
    nop                                           ; $4B81: $00
    adc l                                         ; $4B82: $8D
    nop                                           ; $4B83: $00
    adc a                                         ; $4B84: $8F
    nop                                           ; $4B85: $00
    sub c                                         ; $4B86: $91
    nop                                           ; $4B87: $00
    sub e                                         ; $4B88: $93
    nop                                           ; $4B89: $00
    sub l                                         ; $4B8A: $95
    nop                                           ; $4B8B: $00
    sub a                                         ; $4B8C: $97
    nop                                           ; $4B8D: $00
    sbc c                                         ; $4B8E: $99
    nop                                           ; $4B8F: $00
    sbc e                                         ; $4B90: $9B
    nop                                           ; $4B91: $00
    sbc l                                         ; $4B92: $9D
    nop                                           ; $4B93: $00
    sbc a                                         ; $4B94: $9F
    nop                                           ; $4B95: $00
    nop                                           ; $4B96: $00
    nop                                           ; $4B97: $00
    nop                                           ; $4B98: $00
    nop                                           ; $4B99: $00
    nop                                           ; $4B9A: $00
    nop                                           ; $4B9B: $00
    and b                                         ; $4B9C: $A0
    nop                                           ; $4B9D: $00
    and d                                         ; $4B9E: $A2
    nop                                           ; $4B9F: $00
    and h                                         ; $4BA0: $A4
    nop                                           ; $4BA1: $00
    and [hl]                                      ; $4BA2: $A6
    nop                                           ; $4BA3: $00
    xor b                                         ; $4BA4: $A8
    nop                                           ; $4BA5: $00
    xor d                                         ; $4BA6: $AA
    nop                                           ; $4BA7: $00
    xor h                                         ; $4BA8: $AC
    nop                                           ; $4BA9: $00
    xor [hl]                                      ; $4BAA: $AE
    nop                                           ; $4BAB: $00
    or b                                          ; $4BAC: $B0
    nop                                           ; $4BAD: $00
    or d                                          ; $4BAE: $B2
    nop                                           ; $4BAF: $00
    or h                                          ; $4BB0: $B4
    nop                                           ; $4BB1: $00
    or [hl]                                       ; $4BB2: $B6
    nop                                           ; $4BB3: $00
    cp b                                          ; $4BB4: $B8
    nop                                           ; $4BB5: $00
    cp d                                          ; $4BB6: $BA
    nop                                           ; $4BB7: $00
    cp h                                          ; $4BB8: $BC
    nop                                           ; $4BB9: $00
    cp [hl]                                       ; $4BBA: $BE
    nop                                           ; $4BBB: $00
    nop                                           ; $4BBC: $00
    nop                                           ; $4BBD: $00
    nop                                           ; $4BBE: $00
    nop                                           ; $4BBF: $00
    nop                                           ; $4BC0: $00
    nop                                           ; $4BC1: $00
    and c                                         ; $4BC2: $A1
    nop                                           ; $4BC3: $00
    and e                                         ; $4BC4: $A3
    nop                                           ; $4BC5: $00
    and l                                         ; $4BC6: $A5
    nop                                           ; $4BC7: $00
    and a                                         ; $4BC8: $A7
    nop                                           ; $4BC9: $00
    xor c                                         ; $4BCA: $A9
    nop                                           ; $4BCB: $00
    xor e                                         ; $4BCC: $AB
    nop                                           ; $4BCD: $00
    xor l                                         ; $4BCE: $AD
    nop                                           ; $4BCF: $00
    xor a                                         ; $4BD0: $AF
    nop                                           ; $4BD1: $00
    or c                                          ; $4BD2: $B1
    nop                                           ; $4BD3: $00
    or e                                          ; $4BD4: $B3
    nop                                           ; $4BD5: $00
    or l                                          ; $4BD6: $B5
    nop                                           ; $4BD7: $00
    or a                                          ; $4BD8: $B7
    nop                                           ; $4BD9: $00
    cp c                                          ; $4BDA: $B9
    nop                                           ; $4BDB: $00
    cp e                                          ; $4BDC: $BB
    nop                                           ; $4BDD: $00
    cp l                                          ; $4BDE: $BD
    nop                                           ; $4BDF: $00
    cp a                                          ; $4BE0: $BF
    nop                                           ; $4BE1: $00
    nop                                           ; $4BE2: $00
    nop                                           ; $4BE3: $00
    nop                                           ; $4BE4: $00
    nop                                           ; $4BE5: $00
    nop                                           ; $4BE6: $00
    nop                                           ; $4BE7: $00
    nop                                           ; $4BE8: $00
    nop                                           ; $4BE9: $00
    ret nz                                        ; $4BEA: $C0

    nop                                           ; $4BEB: $00
    jp nz, $C400                                  ; $4BEC: $C2 $00 $C4

    nop                                           ; $4BEF: $00
    add $00                                       ; $4BF0: $C6 $00
    ret z                                         ; $4BF2: $C8

    nop                                           ; $4BF3: $00
    jp z, $CC00                                   ; $4BF4: $CA $00 $CC

    nop                                           ; $4BF7: $00
    adc $00                                       ; $4BF8: $CE $00
    ret nc                                        ; $4BFA: $D0

    nop                                           ; $4BFB: $00
    jp nc, $D400                                  ; $4BFC: $D2 $00 $D4

    nop                                           ; $4BFF: $00
    sub $00                                       ; $4C00: $D6 $00
    ret c                                         ; $4C02: $D8

    nop                                           ; $4C03: $00
    jp c, RST_00                                  ; $4C04: $DA $00 $00

    nop                                           ; $4C07: $00
    nop                                           ; $4C08: $00
    nop                                           ; $4C09: $00
    nop                                           ; $4C0A: $00
    nop                                           ; $4C0B: $00
    nop                                           ; $4C0C: $00
    nop                                           ; $4C0D: $00
    nop                                           ; $4C0E: $00
    nop                                           ; $4C0F: $00
    pop bc                                        ; $4C10: $C1
    nop                                           ; $4C11: $00
    jp $C500                                      ; $4C12: $C3 $00 $C5


    nop                                           ; $4C15: $00
    rst RST_00                                    ; $4C16: $C7
    nop                                           ; $4C17: $00
    ret                                           ; $4C18: $C9


    nop                                           ; $4C19: $00
    rlc b                                         ; $4C1A: $CB $00
    call $CF00                                    ; $4C1C: $CD $00 $CF
    nop                                           ; $4C1F: $00
    pop de                                        ; $4C20: $D1
    nop                                           ; $4C21: $00
    db $D3                                        ; $4C22: $D3
    nop                                           ; $4C23: $00
    push de                                       ; $4C24: $D5
    nop                                           ; $4C25: $00
    rst RST_10                                    ; $4C26: $D7
    nop                                           ; $4C27: $00
    reti                                          ; $4C28: $D9


    nop                                           ; $4C29: $00
    db $DB                                        ; $4C2A: $DB
    nop                                           ; $4C2B: $00
    nop                                           ; $4C2C: $00
    nop                                           ; $4C2D: $00
    nop                                           ; $4C2E: $00
    nop                                           ; $4C2F: $00
    nop                                           ; $4C30: $00
    nop                                           ; $4C31: $00
    nop                                           ; $4C32: $00
    nop                                           ; $4C33: $00
    nop                                           ; $4C34: $00
    nop                                           ; $4C35: $00
    nop                                           ; $4C36: $00
    nop                                           ; $4C37: $00
    call c, $DE00                                 ; $4C38: $DC $00 $DE
    nop                                           ; $4C3B: $00
    ldh [rP1], a                                  ; $4C3C: $E0 $00
    ldh [c], a                                    ; $4C3E: $E2
    nop                                           ; $4C3F: $00
    db $E4                                        ; $4C40: $E4
    nop                                           ; $4C41: $00
    and $00                                       ; $4C42: $E6 $00
    add sp, $00                                   ; $4C44: $E8 $00
    ld [$EC00], a                                 ; $4C46: $EA $00 $EC
    nop                                           ; $4C49: $00
    xor $00                                       ; $4C4A: $EE $00
    ldh a, [rP1]                                  ; $4C4C: $F0 $00
    ldh a, [c]                                    ; $4C4E: $F2
    nop                                           ; $4C4F: $00
    nop                                           ; $4C50: $00
    nop                                           ; $4C51: $00
    nop                                           ; $4C52: $00
    nop                                           ; $4C53: $00
    nop                                           ; $4C54: $00
    nop                                           ; $4C55: $00
    nop                                           ; $4C56: $00
    nop                                           ; $4C57: $00
    nop                                           ; $4C58: $00
    nop                                           ; $4C59: $00
    nop                                           ; $4C5A: $00
    nop                                           ; $4C5B: $00
    nop                                           ; $4C5C: $00
    nop                                           ; $4C5D: $00
    db $DD                                        ; $4C5E: $DD
    nop                                           ; $4C5F: $00
    rst RST_18                                    ; $4C60: $DF
    nop                                           ; $4C61: $00
    pop hl                                        ; $4C62: $E1
    nop                                           ; $4C63: $00
    db $E3                                        ; $4C64: $E3
    nop                                           ; $4C65: $00
    push hl                                       ; $4C66: $E5
    nop                                           ; $4C67: $00
    rst RST_20                                    ; $4C68: $E7
    nop                                           ; $4C69: $00
    jp hl                                         ; $4C6A: $E9


    nop                                           ; $4C6B: $00
    db $EB                                        ; $4C6C: $EB
    nop                                           ; $4C6D: $00
    db $ED                                        ; $4C6E: $ED
    nop                                           ; $4C6F: $00
    rst RST_28                                    ; $4C70: $EF
    nop                                           ; $4C71: $00
    pop af                                        ; $4C72: $F1
    nop                                           ; $4C73: $00
    di                                            ; $4C74: $F3
    nop                                           ; $4C75: $00
    nop                                           ; $4C76: $00
    nop                                           ; $4C77: $00
    nop                                           ; $4C78: $00
    nop                                           ; $4C79: $00
    nop                                           ; $4C7A: $00
    nop                                           ; $4C7B: $00
    nop                                           ; $4C7C: $00
    nop                                           ; $4C7D: $00
    nop                                           ; $4C7E: $00
    nop                                           ; $4C7F: $00
    nop                                           ; $4C80: $00
    nop                                           ; $4C81: $00
    db $F4                                        ; $4C82: $F4
    nop                                           ; $4C83: $00
    or $00                                        ; $4C84: $F6 $00
    ld hl, sp+$00                                 ; $4C86: $F8 $00
    ld a, [$FC00]                                 ; $4C88: $FA $00 $FC
    nop                                           ; $4C8B: $00
    cp $00                                        ; $4C8C: $FE $00
    ld [bc], a                                    ; $4C8E: $02
    nop                                           ; $4C8F: $00
    inc b                                         ; $4C90: $04
    nop                                           ; $4C91: $00
    ld b, $00                                     ; $4C92: $06 $00
    ld [$0A00], sp                                ; $4C94: $08 $00 $0A
    nop                                           ; $4C97: $00
    inc c                                         ; $4C98: $0C
    nop                                           ; $4C99: $00
    ld c, $00                                     ; $4C9A: $0E $00
    stop                                          ; $4C9C: $10 $00
    nop                                           ; $4C9E: $00
    nop                                           ; $4C9F: $00
    nop                                           ; $4CA0: $00
    nop                                           ; $4CA1: $00
    nop                                           ; $4CA2: $00
    nop                                           ; $4CA3: $00
    nop                                           ; $4CA4: $00
    nop                                           ; $4CA5: $00
    nop                                           ; $4CA6: $00
    nop                                           ; $4CA7: $00
    push af                                       ; $4CA8: $F5
    nop                                           ; $4CA9: $00
    rst RST_30                                    ; $4CAA: $F7
    nop                                           ; $4CAB: $00
    ld sp, hl                                     ; $4CAC: $F9
    nop                                           ; $4CAD: $00
    ei                                            ; $4CAE: $FB
    nop                                           ; $4CAF: $00
    db $FD                                        ; $4CB0: $FD
    nop                                           ; $4CB1: $00
    rst RST_38                                    ; $4CB2: $FF
    nop                                           ; $4CB3: $00
    inc bc                                        ; $4CB4: $03
    nop                                           ; $4CB5: $00
    dec b                                         ; $4CB6: $05
    nop                                           ; $4CB7: $00
    rlca                                          ; $4CB8: $07
    nop                                           ; $4CB9: $00
    add hl, bc                                    ; $4CBA: $09
    nop                                           ; $4CBB: $00
    dec bc                                        ; $4CBC: $0B
    nop                                           ; $4CBD: $00
    dec c                                         ; $4CBE: $0D
    nop                                           ; $4CBF: $00
    rrca                                          ; $4CC0: $0F
    nop                                           ; $4CC1: $00
    ld de, $0000                                  ; $4CC2: $11 $00 $00
    nop                                           ; $4CC5: $00
    nop                                           ; $4CC6: $00
    nop                                           ; $4CC7: $00
    nop                                           ; $4CC8: $00
    nop                                           ; $4CC9: $00
    ld [de], a                                    ; $4CCA: $12
    nop                                           ; $4CCB: $00
    inc d                                         ; $4CCC: $14
    nop                                           ; $4CCD: $00
    ld d, $00                                     ; $4CCE: $16 $00
    jr jr_03C_4CD2                                ; $4CD0: $18 $00

jr_03C_4CD2:
    ld a, [de]                                    ; $4CD2: $1A
    nop                                           ; $4CD3: $00
    inc e                                         ; $4CD4: $1C
    nop                                           ; $4CD5: $00
    ld e, $00                                     ; $4CD6: $1E $00
    jr nz, jr_03C_4CDA                            ; $4CD8: $20 $00

jr_03C_4CDA:
    ld [hl+], a                                   ; $4CDA: $22
    nop                                           ; $4CDB: $00
    inc h                                         ; $4CDC: $24
    nop                                           ; $4CDD: $00
    ld h, $00                                     ; $4CDE: $26 $00
    jr z, jr_03C_4CE2                             ; $4CE0: $28 $00

jr_03C_4CE2:
    ld a, [hl+]                                   ; $4CE2: $2A
    nop                                           ; $4CE3: $00
    inc l                                         ; $4CE4: $2C
    nop                                           ; $4CE5: $00
    ld l, $00                                     ; $4CE6: $2E $00
    jr nc, jr_03C_4CEA                            ; $4CE8: $30 $00

jr_03C_4CEA:
    ld [hl-], a                                   ; $4CEA: $32
    nop                                           ; $4CEB: $00
    inc [hl]                                      ; $4CEC: $34
    nop                                           ; $4CED: $00
    nop                                           ; $4CEE: $00
    nop                                           ; $4CEF: $00
    inc de                                        ; $4CF0: $13
    nop                                           ; $4CF1: $00
    dec d                                         ; $4CF2: $15
    nop                                           ; $4CF3: $00
    rla                                           ; $4CF4: $17
    nop                                           ; $4CF5: $00
    add hl, de                                    ; $4CF6: $19
    nop                                           ; $4CF7: $00
    dec de                                        ; $4CF8: $1B
    nop                                           ; $4CF9: $00
    dec e                                         ; $4CFA: $1D
    nop                                           ; $4CFB: $00
    rra                                           ; $4CFC: $1F
    nop                                           ; $4CFD: $00
    ld hl, $2300                                  ; $4CFE: $21 $00 $23
    nop                                           ; $4D01: $00
    dec h                                         ; $4D02: $25
    nop                                           ; $4D03: $00
    daa                                           ; $4D04: $27
    nop                                           ; $4D05: $00
    add hl, hl                                    ; $4D06: $29
    nop                                           ; $4D07: $00
    dec hl                                        ; $4D08: $2B
    nop                                           ; $4D09: $00
    dec l                                         ; $4D0A: $2D
    nop                                           ; $4D0B: $00
    cpl                                           ; $4D0C: $2F
    nop                                           ; $4D0D: $00
    ld sp, $3300                                  ; $4D0E: $31 $00 $33
    nop                                           ; $4D11: $00
    dec [hl]                                      ; $4D12: $35
    nop                                           ; $4D13: $00
    nop                                           ; $4D14: $00
    nop                                           ; $4D15: $00
    nop                                           ; $4D16: $00
    nop                                           ; $4D17: $00
    nop                                           ; $4D18: $00
    nop                                           ; $4D19: $00
    ld [hl], $00                                  ; $4D1A: $36 $00
    jr c, jr_03C_4D1E                             ; $4D1C: $38 $00

jr_03C_4D1E:
    ld a, [hl-]                                   ; $4D1E: $3A
    nop                                           ; $4D1F: $00
    inc a                                         ; $4D20: $3C
    nop                                           ; $4D21: $00
    ld a, $00                                     ; $4D22: $3E $00
    ld b, b                                       ; $4D24: $40
    nop                                           ; $4D25: $00
    ld b, d                                       ; $4D26: $42
    nop                                           ; $4D27: $00
    ld b, h                                       ; $4D28: $44
    nop                                           ; $4D29: $00
    ld b, [hl]                                    ; $4D2A: $46
    nop                                           ; $4D2B: $00
    ld c, b                                       ; $4D2C: $48
    nop                                           ; $4D2D: $00
    ld c, d                                       ; $4D2E: $4A
    nop                                           ; $4D2F: $00
    ld c, h                                       ; $4D30: $4C
    nop                                           ; $4D31: $00
    ld c, [hl]                                    ; $4D32: $4E
    nop                                           ; $4D33: $00
    ld d, b                                       ; $4D34: $50
    nop                                           ; $4D35: $00
    nop                                           ; $4D36: $00
    nop                                           ; $4D37: $00
    nop                                           ; $4D38: $00
    nop                                           ; $4D39: $00
    nop                                           ; $4D3A: $00
    nop                                           ; $4D3B: $00
    nop                                           ; $4D3C: $00
    nop                                           ; $4D3D: $00
    nop                                           ; $4D3E: $00
    nop                                           ; $4D3F: $00
    scf                                           ; $4D40: $37
    nop                                           ; $4D41: $00
    add hl, sp                                    ; $4D42: $39
    nop                                           ; $4D43: $00
    dec sp                                        ; $4D44: $3B
    nop                                           ; $4D45: $00
    dec a                                         ; $4D46: $3D
    nop                                           ; $4D47: $00
    ccf                                           ; $4D48: $3F
    nop                                           ; $4D49: $00
    ld b, c                                       ; $4D4A: $41
    nop                                           ; $4D4B: $00
    ld b, e                                       ; $4D4C: $43
    nop                                           ; $4D4D: $00
    ld b, l                                       ; $4D4E: $45
    nop                                           ; $4D4F: $00
    ld b, a                                       ; $4D50: $47
    nop                                           ; $4D51: $00
    ld c, c                                       ; $4D52: $49
    nop                                           ; $4D53: $00
    ld c, e                                       ; $4D54: $4B
    nop                                           ; $4D55: $00
    ld c, l                                       ; $4D56: $4D
    nop                                           ; $4D57: $00
    ld c, a                                       ; $4D58: $4F
    nop                                           ; $4D59: $00
    ld d, c                                       ; $4D5A: $51
    nop                                           ; $4D5B: $00
    nop                                           ; $4D5C: $00
    nop                                           ; $4D5D: $00
    nop                                           ; $4D5E: $00
    nop                                           ; $4D5F: $00
    nop                                           ; $4D60: $00
    nop                                           ; $4D61: $00
    nop                                           ; $4D62: $00
    nop                                           ; $4D63: $00
    ld d, d                                       ; $4D64: $52
    nop                                           ; $4D65: $00
    ld d, h                                       ; $4D66: $54
    nop                                           ; $4D67: $00
    ld d, [hl]                                    ; $4D68: $56
    nop                                           ; $4D69: $00
    ld e, b                                       ; $4D6A: $58
    nop                                           ; $4D6B: $00
    ld e, d                                       ; $4D6C: $5A
    nop                                           ; $4D6D: $00
    ld e, h                                       ; $4D6E: $5C
    nop                                           ; $4D6F: $00
    ld e, [hl]                                    ; $4D70: $5E
    nop                                           ; $4D71: $00
    ld h, b                                       ; $4D72: $60
    nop                                           ; $4D73: $00
    ld h, d                                       ; $4D74: $62
    nop                                           ; $4D75: $00
    ld h, h                                       ; $4D76: $64
    nop                                           ; $4D77: $00
    ld h, [hl]                                    ; $4D78: $66
    nop                                           ; $4D79: $00
    ld l, b                                       ; $4D7A: $68
    nop                                           ; $4D7B: $00
    ld l, d                                       ; $4D7C: $6A
    nop                                           ; $4D7D: $00
    ld l, h                                       ; $4D7E: $6C
    nop                                           ; $4D7F: $00
    ld l, [hl]                                    ; $4D80: $6E
    nop                                           ; $4D81: $00
    ld [hl], b                                    ; $4D82: $70
    nop                                           ; $4D83: $00
    nop                                           ; $4D84: $00
    nop                                           ; $4D85: $00
    nop                                           ; $4D86: $00
    nop                                           ; $4D87: $00
    nop                                           ; $4D88: $00
    nop                                           ; $4D89: $00
    ld d, e                                       ; $4D8A: $53
    nop                                           ; $4D8B: $00
    ld d, l                                       ; $4D8C: $55
    nop                                           ; $4D8D: $00
    ld d, a                                       ; $4D8E: $57
    nop                                           ; $4D8F: $00
    ld e, c                                       ; $4D90: $59
    nop                                           ; $4D91: $00
    ld e, e                                       ; $4D92: $5B
    nop                                           ; $4D93: $00
    ld e, l                                       ; $4D94: $5D
    nop                                           ; $4D95: $00
    ld e, a                                       ; $4D96: $5F
    nop                                           ; $4D97: $00
    ld h, c                                       ; $4D98: $61
    nop                                           ; $4D99: $00
    ld h, e                                       ; $4D9A: $63
    nop                                           ; $4D9B: $00
    ld h, l                                       ; $4D9C: $65
    nop                                           ; $4D9D: $00
    ld h, a                                       ; $4D9E: $67
    nop                                           ; $4D9F: $00
    ld l, c                                       ; $4DA0: $69
    nop                                           ; $4DA1: $00
    ld l, e                                       ; $4DA2: $6B
    nop                                           ; $4DA3: $00
    ld l, l                                       ; $4DA4: $6D
    nop                                           ; $4DA5: $00
    ld l, a                                       ; $4DA6: $6F
    nop                                           ; $4DA7: $00
    ld [hl], c                                    ; $4DA8: $71
    nop                                           ; $4DA9: $00
    nop                                           ; $4DAA: $00
    nop                                           ; $4DAB: $00
    nop                                           ; $4DAC: $00
    nop                                           ; $4DAD: $00
    ld [hl], d                                    ; $4DAE: $72
    nop                                           ; $4DAF: $00
    ld [hl], h                                    ; $4DB0: $74
    nop                                           ; $4DB1: $00
    halt                                          ; $4DB2: $76
    nop                                           ; $4DB3: $00
    ld a, b                                       ; $4DB4: $78
    nop                                           ; $4DB5: $00
    ld a, d                                       ; $4DB6: $7A
    nop                                           ; $4DB7: $00
    ld a, h                                       ; $4DB8: $7C
    nop                                           ; $4DB9: $00
    ld a, [hl]                                    ; $4DBA: $7E
    nop                                           ; $4DBB: $00
    add b                                         ; $4DBC: $80
    nop                                           ; $4DBD: $00
    add d                                         ; $4DBE: $82
    nop                                           ; $4DBF: $00
    add h                                         ; $4DC0: $84
    nop                                           ; $4DC1: $00
    add [hl]                                      ; $4DC2: $86
    nop                                           ; $4DC3: $00
    adc b                                         ; $4DC4: $88
    nop                                           ; $4DC5: $00
    adc d                                         ; $4DC6: $8A
    nop                                           ; $4DC7: $00
    adc h                                         ; $4DC8: $8C
    nop                                           ; $4DC9: $00
    adc [hl]                                      ; $4DCA: $8E
    nop                                           ; $4DCB: $00
    sub b                                         ; $4DCC: $90
    nop                                           ; $4DCD: $00
    sub d                                         ; $4DCE: $92
    nop                                           ; $4DCF: $00
    sub h                                         ; $4DD0: $94
    nop                                           ; $4DD1: $00
    nop                                           ; $4DD2: $00
    nop                                           ; $4DD3: $00
    ld [hl], e                                    ; $4DD4: $73
    nop                                           ; $4DD5: $00
    ld [hl], l                                    ; $4DD6: $75
    nop                                           ; $4DD7: $00
    ld [hl], a                                    ; $4DD8: $77
    nop                                           ; $4DD9: $00
    ld a, c                                       ; $4DDA: $79
    nop                                           ; $4DDB: $00
    ld a, e                                       ; $4DDC: $7B
    nop                                           ; $4DDD: $00
    ld a, l                                       ; $4DDE: $7D
    nop                                           ; $4DDF: $00
    ld a, a                                       ; $4DE0: $7F
    nop                                           ; $4DE1: $00
    add c                                         ; $4DE2: $81
    nop                                           ; $4DE3: $00
    add e                                         ; $4DE4: $83
    nop                                           ; $4DE5: $00
    add l                                         ; $4DE6: $85
    nop                                           ; $4DE7: $00
    add a                                         ; $4DE8: $87
    nop                                           ; $4DE9: $00
    adc c                                         ; $4DEA: $89
    nop                                           ; $4DEB: $00
    adc e                                         ; $4DEC: $8B
    nop                                           ; $4DED: $00
    adc l                                         ; $4DEE: $8D
    nop                                           ; $4DEF: $00
    adc a                                         ; $4DF0: $8F
    nop                                           ; $4DF1: $00
    sub c                                         ; $4DF2: $91
    nop                                           ; $4DF3: $00
    sub e                                         ; $4DF4: $93
    nop                                           ; $4DF5: $00
    sub l                                         ; $4DF6: $95
    nop                                           ; $4DF7: $00
    nop                                           ; $4DF8: $00
    nop                                           ; $4DF9: $00
    nop                                           ; $4DFA: $00
    nop                                           ; $4DFB: $00
    sub [hl]                                      ; $4DFC: $96
    nop                                           ; $4DFD: $00
    sbc b                                         ; $4DFE: $98
    nop                                           ; $4DFF: $00
    sbc d                                         ; $4E00: $9A
    nop                                           ; $4E01: $00
    sbc h                                         ; $4E02: $9C
    nop                                           ; $4E03: $00
    sbc [hl]                                      ; $4E04: $9E
    nop                                           ; $4E05: $00
    and b                                         ; $4E06: $A0
    nop                                           ; $4E07: $00
    and d                                         ; $4E08: $A2
    nop                                           ; $4E09: $00
    and h                                         ; $4E0A: $A4
    nop                                           ; $4E0B: $00
    and [hl]                                      ; $4E0C: $A6
    nop                                           ; $4E0D: $00
    xor b                                         ; $4E0E: $A8
    nop                                           ; $4E0F: $00
    xor d                                         ; $4E10: $AA
    nop                                           ; $4E11: $00
    xor h                                         ; $4E12: $AC
    nop                                           ; $4E13: $00
    xor [hl]                                      ; $4E14: $AE
    nop                                           ; $4E15: $00
    or b                                          ; $4E16: $B0
    nop                                           ; $4E17: $00
    or d                                          ; $4E18: $B2
    nop                                           ; $4E19: $00
    or h                                          ; $4E1A: $B4
    nop                                           ; $4E1B: $00
    nop                                           ; $4E1C: $00
    nop                                           ; $4E1D: $00
    nop                                           ; $4E1E: $00
    nop                                           ; $4E1F: $00
    nop                                           ; $4E20: $00
    nop                                           ; $4E21: $00
    sub a                                         ; $4E22: $97
    nop                                           ; $4E23: $00
    sbc c                                         ; $4E24: $99
    nop                                           ; $4E25: $00
    sbc e                                         ; $4E26: $9B
    nop                                           ; $4E27: $00
    sbc l                                         ; $4E28: $9D
    nop                                           ; $4E29: $00
    sbc a                                         ; $4E2A: $9F
    nop                                           ; $4E2B: $00
    and c                                         ; $4E2C: $A1
    nop                                           ; $4E2D: $00
    and e                                         ; $4E2E: $A3
    nop                                           ; $4E2F: $00
    and l                                         ; $4E30: $A5
    nop                                           ; $4E31: $00
    and a                                         ; $4E32: $A7
    nop                                           ; $4E33: $00
    xor c                                         ; $4E34: $A9
    nop                                           ; $4E35: $00
    xor e                                         ; $4E36: $AB
    nop                                           ; $4E37: $00
    xor l                                         ; $4E38: $AD
    nop                                           ; $4E39: $00
    xor a                                         ; $4E3A: $AF
    nop                                           ; $4E3B: $00
    or c                                          ; $4E3C: $B1
    nop                                           ; $4E3D: $00
    or e                                          ; $4E3E: $B3
    nop                                           ; $4E3F: $00
    or l                                          ; $4E40: $B5
    nop                                           ; $4E41: $00
    nop                                           ; $4E42: $00
    nop                                           ; $4E43: $00
    nop                                           ; $4E44: $00
    nop                                           ; $4E45: $00
    nop                                           ; $4E46: $00
    nop                                           ; $4E47: $00
    or [hl]                                       ; $4E48: $B6
    nop                                           ; $4E49: $00
    cp b                                          ; $4E4A: $B8
    nop                                           ; $4E4B: $00
    cp d                                          ; $4E4C: $BA
    nop                                           ; $4E4D: $00
    cp h                                          ; $4E4E: $BC
    nop                                           ; $4E4F: $00
    cp [hl]                                       ; $4E50: $BE
    nop                                           ; $4E51: $00
    ret nz                                        ; $4E52: $C0

    nop                                           ; $4E53: $00
    jp nz, $C400                                  ; $4E54: $C2 $00 $C4

    nop                                           ; $4E57: $00
    add $00                                       ; $4E58: $C6 $00
    ret z                                         ; $4E5A: $C8

    nop                                           ; $4E5B: $00
    jp z, $CC00                                   ; $4E5C: $CA $00 $CC

    nop                                           ; $4E5F: $00
    adc $00                                       ; $4E60: $CE $00
    ret nc                                        ; $4E62: $D0

    nop                                           ; $4E63: $00
    jp nc, $D400                                  ; $4E64: $D2 $00 $D4

    nop                                           ; $4E67: $00
    nop                                           ; $4E68: $00
    nop                                           ; $4E69: $00
    nop                                           ; $4E6A: $00
    nop                                           ; $4E6B: $00
    nop                                           ; $4E6C: $00
    nop                                           ; $4E6D: $00
    or a                                          ; $4E6E: $B7
    nop                                           ; $4E6F: $00
    cp c                                          ; $4E70: $B9
    nop                                           ; $4E71: $00
    cp e                                          ; $4E72: $BB
    nop                                           ; $4E73: $00
    cp l                                          ; $4E74: $BD
    nop                                           ; $4E75: $00
    cp a                                          ; $4E76: $BF
    nop                                           ; $4E77: $00
    pop bc                                        ; $4E78: $C1
    nop                                           ; $4E79: $00
    jp $C500                                      ; $4E7A: $C3 $00 $C5


    nop                                           ; $4E7D: $00
    rst RST_00                                    ; $4E7E: $C7
    nop                                           ; $4E7F: $00
    ret                                           ; $4E80: $C9


    nop                                           ; $4E81: $00
    rlc b                                         ; $4E82: $CB $00
    call $CF00                                    ; $4E84: $CD $00 $CF
    nop                                           ; $4E87: $00
    pop de                                        ; $4E88: $D1
    nop                                           ; $4E89: $00
    db $D3                                        ; $4E8A: $D3
    nop                                           ; $4E8B: $00
    push de                                       ; $4E8C: $D5
    nop                                           ; $4E8D: $00
    nop                                           ; $4E8E: $00
    nop                                           ; $4E8F: $00
    nop                                           ; $4E90: $00
    nop                                           ; $4E91: $00
    sub $00                                       ; $4E92: $D6 $00
    ret c                                         ; $4E94: $D8

    nop                                           ; $4E95: $00
    jp c, $DC00                                   ; $4E96: $DA $00 $DC

    nop                                           ; $4E99: $00
    sbc $00                                       ; $4E9A: $DE $00
    ldh [rP1], a                                  ; $4E9C: $E0 $00
    ldh [c], a                                    ; $4E9E: $E2
    nop                                           ; $4E9F: $00
    db $E4                                        ; $4EA0: $E4
    nop                                           ; $4EA1: $00
    and $00                                       ; $4EA2: $E6 $00
    add sp, $00                                   ; $4EA4: $E8 $00
    ld [$EC00], a                                 ; $4EA6: $EA $00 $EC
    nop                                           ; $4EA9: $00
    xor $00                                       ; $4EAA: $EE $00
    ldh a, [rP1]                                  ; $4EAC: $F0 $00
    ldh a, [c]                                    ; $4EAE: $F2
    nop                                           ; $4EAF: $00
    db $F4                                        ; $4EB0: $F4
    nop                                           ; $4EB1: $00
    or $00                                        ; $4EB2: $F6 $00
    ld hl, sp+$00                                 ; $4EB4: $F8 $00
    nop                                           ; $4EB6: $00
    nop                                           ; $4EB7: $00
    rst RST_10                                    ; $4EB8: $D7
    nop                                           ; $4EB9: $00
    reti                                          ; $4EBA: $D9


    nop                                           ; $4EBB: $00
    db $DB                                        ; $4EBC: $DB
    nop                                           ; $4EBD: $00
    db $DD                                        ; $4EBE: $DD
    nop                                           ; $4EBF: $00
    rst RST_18                                    ; $4EC0: $DF
    nop                                           ; $4EC1: $00
    pop hl                                        ; $4EC2: $E1
    nop                                           ; $4EC3: $00
    db $E3                                        ; $4EC4: $E3
    nop                                           ; $4EC5: $00
    push hl                                       ; $4EC6: $E5
    nop                                           ; $4EC7: $00
    rst RST_20                                    ; $4EC8: $E7
    nop                                           ; $4EC9: $00
    jp hl                                         ; $4ECA: $E9


    nop                                           ; $4ECB: $00
    db $EB                                        ; $4ECC: $EB
    nop                                           ; $4ECD: $00
    db $ED                                        ; $4ECE: $ED
    nop                                           ; $4ECF: $00
    rst RST_28                                    ; $4ED0: $EF
    nop                                           ; $4ED1: $00
    pop af                                        ; $4ED2: $F1
    nop                                           ; $4ED3: $00
    di                                            ; $4ED4: $F3
    nop                                           ; $4ED5: $00
    push af                                       ; $4ED6: $F5
    nop                                           ; $4ED7: $00
    rst RST_30                                    ; $4ED8: $F7
    nop                                           ; $4ED9: $00
    ld sp, hl                                     ; $4EDA: $F9
    nop                                           ; $4EDB: $00
    nop                                           ; $4EDC: $00
    nop                                           ; $4EDD: $00
    nop                                           ; $4EDE: $00
    nop                                           ; $4EDF: $00
    ld a, [$FC00]                                 ; $4EE0: $FA $00 $FC
    nop                                           ; $4EE3: $00
    cp $00                                        ; $4EE4: $FE $00
    ld [bc], a                                    ; $4EE6: $02
    nop                                           ; $4EE7: $00
    inc b                                         ; $4EE8: $04
    nop                                           ; $4EE9: $00
    ld b, $00                                     ; $4EEA: $06 $00
    ld [$0A00], sp                                ; $4EEC: $08 $00 $0A
    nop                                           ; $4EEF: $00
    inc c                                         ; $4EF0: $0C
    nop                                           ; $4EF1: $00
    ld c, $00                                     ; $4EF2: $0E $00
    stop                                          ; $4EF4: $10 $00
    ld [de], a                                    ; $4EF6: $12
    nop                                           ; $4EF7: $00
    inc d                                         ; $4EF8: $14
    nop                                           ; $4EF9: $00
    ld d, $00                                     ; $4EFA: $16 $00
    jr jr_03C_4EFE                                ; $4EFC: $18 $00

jr_03C_4EFE:
    ld a, [de]                                    ; $4EFE: $1A
    nop                                           ; $4EFF: $00
    nop                                           ; $4F00: $00
    nop                                           ; $4F01: $00
    nop                                           ; $4F02: $00
    nop                                           ; $4F03: $00
    nop                                           ; $4F04: $00
    nop                                           ; $4F05: $00
    ei                                            ; $4F06: $FB
    nop                                           ; $4F07: $00
    db $FD                                        ; $4F08: $FD
    nop                                           ; $4F09: $00
    rst RST_38                                    ; $4F0A: $FF
    nop                                           ; $4F0B: $00
    inc bc                                        ; $4F0C: $03
    nop                                           ; $4F0D: $00
    dec b                                         ; $4F0E: $05
    nop                                           ; $4F0F: $00
    rlca                                          ; $4F10: $07
    nop                                           ; $4F11: $00
    add hl, bc                                    ; $4F12: $09
    nop                                           ; $4F13: $00
    dec bc                                        ; $4F14: $0B
    nop                                           ; $4F15: $00
    dec c                                         ; $4F16: $0D
    nop                                           ; $4F17: $00
    rrca                                          ; $4F18: $0F
    nop                                           ; $4F19: $00
    ld de, $1300                                  ; $4F1A: $11 $00 $13
    nop                                           ; $4F1D: $00
    dec d                                         ; $4F1E: $15
    nop                                           ; $4F1F: $00
    rla                                           ; $4F20: $17
    nop                                           ; $4F21: $00
    add hl, de                                    ; $4F22: $19
    nop                                           ; $4F23: $00
    dec de                                        ; $4F24: $1B
    nop                                           ; $4F25: $00
    nop                                           ; $4F26: $00
    nop                                           ; $4F27: $00
    nop                                           ; $4F28: $00
    nop                                           ; $4F29: $00
    inc e                                         ; $4F2A: $1C
    nop                                           ; $4F2B: $00
    ld e, $00                                     ; $4F2C: $1E $00
    jr nz, jr_03C_4F30                            ; $4F2E: $20 $00

jr_03C_4F30:
    ld [hl+], a                                   ; $4F30: $22
    nop                                           ; $4F31: $00
    inc h                                         ; $4F32: $24
    nop                                           ; $4F33: $00
    ld h, $00                                     ; $4F34: $26 $00
    jr z, jr_03C_4F38                             ; $4F36: $28 $00

jr_03C_4F38:
    ld a, [hl+]                                   ; $4F38: $2A
    nop                                           ; $4F39: $00
    inc l                                         ; $4F3A: $2C
    nop                                           ; $4F3B: $00
    ld l, $00                                     ; $4F3C: $2E $00
    jr nc, jr_03C_4F40                            ; $4F3E: $30 $00

jr_03C_4F40:
    ld [hl-], a                                   ; $4F40: $32
    nop                                           ; $4F41: $00
    inc [hl]                                      ; $4F42: $34
    nop                                           ; $4F43: $00
    ld [hl], $00                                  ; $4F44: $36 $00
    jr c, jr_03C_4F48                             ; $4F46: $38 $00

jr_03C_4F48:
    ld a, [hl-]                                   ; $4F48: $3A
    nop                                           ; $4F49: $00
    inc a                                         ; $4F4A: $3C
    nop                                           ; $4F4B: $00
    ld a, $00                                     ; $4F4C: $3E $00
    nop                                           ; $4F4E: $00
    nop                                           ; $4F4F: $00
    dec e                                         ; $4F50: $1D
    nop                                           ; $4F51: $00
    rra                                           ; $4F52: $1F
    nop                                           ; $4F53: $00
    ld hl, $2300                                  ; $4F54: $21 $00 $23
    nop                                           ; $4F57: $00
    dec h                                         ; $4F58: $25
    nop                                           ; $4F59: $00
    daa                                           ; $4F5A: $27
    nop                                           ; $4F5B: $00
    add hl, hl                                    ; $4F5C: $29
    nop                                           ; $4F5D: $00
    dec hl                                        ; $4F5E: $2B
    nop                                           ; $4F5F: $00
    dec l                                         ; $4F60: $2D
    nop                                           ; $4F61: $00
    cpl                                           ; $4F62: $2F
    nop                                           ; $4F63: $00
    ld sp, $3300                                  ; $4F64: $31 $00 $33
    nop                                           ; $4F67: $00
    dec [hl]                                      ; $4F68: $35
    nop                                           ; $4F69: $00
    scf                                           ; $4F6A: $37
    nop                                           ; $4F6B: $00
    add hl, sp                                    ; $4F6C: $39
    nop                                           ; $4F6D: $00
    dec sp                                        ; $4F6E: $3B
    nop                                           ; $4F6F: $00
    dec a                                         ; $4F70: $3D
    nop                                           ; $4F71: $00
    ccf                                           ; $4F72: $3F
    nop                                           ; $4F73: $00
    nop                                           ; $4F74: $00
    nop                                           ; $4F75: $00
    ld b, b                                       ; $4F76: $40
    nop                                           ; $4F77: $00
    ld b, d                                       ; $4F78: $42
    nop                                           ; $4F79: $00
    ld b, h                                       ; $4F7A: $44
    nop                                           ; $4F7B: $00
    ld b, [hl]                                    ; $4F7C: $46
    nop                                           ; $4F7D: $00
    ld c, b                                       ; $4F7E: $48
    nop                                           ; $4F7F: $00
    ld c, d                                       ; $4F80: $4A
    nop                                           ; $4F81: $00
    ld c, h                                       ; $4F82: $4C
    nop                                           ; $4F83: $00
    ld c, [hl]                                    ; $4F84: $4E
    nop                                           ; $4F85: $00
    ld d, b                                       ; $4F86: $50
    nop                                           ; $4F87: $00
    ld d, d                                       ; $4F88: $52
    nop                                           ; $4F89: $00
    ld d, h                                       ; $4F8A: $54
    nop                                           ; $4F8B: $00
    ld d, [hl]                                    ; $4F8C: $56
    nop                                           ; $4F8D: $00
    ld e, b                                       ; $4F8E: $58
    nop                                           ; $4F8F: $00
    ld e, d                                       ; $4F90: $5A
    nop                                           ; $4F91: $00
    ld e, h                                       ; $4F92: $5C
    nop                                           ; $4F93: $00
    ld e, [hl]                                    ; $4F94: $5E
    nop                                           ; $4F95: $00
    ld h, b                                       ; $4F96: $60
    nop                                           ; $4F97: $00
    ld h, d                                       ; $4F98: $62
    nop                                           ; $4F99: $00
    nop                                           ; $4F9A: $00
    nop                                           ; $4F9B: $00
    ld b, c                                       ; $4F9C: $41
    nop                                           ; $4F9D: $00
    ld b, e                                       ; $4F9E: $43
    nop                                           ; $4F9F: $00
    ld b, l                                       ; $4FA0: $45
    nop                                           ; $4FA1: $00
    ld b, a                                       ; $4FA2: $47
    nop                                           ; $4FA3: $00
    ld c, c                                       ; $4FA4: $49
    nop                                           ; $4FA5: $00
    ld c, e                                       ; $4FA6: $4B
    nop                                           ; $4FA7: $00
    ld c, l                                       ; $4FA8: $4D
    nop                                           ; $4FA9: $00
    ld c, a                                       ; $4FAA: $4F
    nop                                           ; $4FAB: $00
    ld d, c                                       ; $4FAC: $51
    nop                                           ; $4FAD: $00
    ld d, e                                       ; $4FAE: $53
    nop                                           ; $4FAF: $00
    ld d, l                                       ; $4FB0: $55
    nop                                           ; $4FB1: $00
    ld d, a                                       ; $4FB2: $57
    nop                                           ; $4FB3: $00
    ld e, c                                       ; $4FB4: $59
    nop                                           ; $4FB5: $00
    ld e, e                                       ; $4FB6: $5B
    nop                                           ; $4FB7: $00
    ld e, l                                       ; $4FB8: $5D
    nop                                           ; $4FB9: $00
    ld e, a                                       ; $4FBA: $5F
    nop                                           ; $4FBB: $00
    ld h, c                                       ; $4FBC: $61
    nop                                           ; $4FBD: $00
    ld h, e                                       ; $4FBE: $63
    nop                                           ; $4FBF: $00
    nop                                           ; $4FC0: $00
    nop                                           ; $4FC1: $00
    nop                                           ; $4FC2: $00
    nop                                           ; $4FC3: $00
    nop                                           ; $4FC4: $00
    nop                                           ; $4FC5: $00
    nop                                           ; $4FC6: $00
    nop                                           ; $4FC7: $00
    add b                                         ; $4FC8: $80
    nop                                           ; $4FC9: $00
    add d                                         ; $4FCA: $82
    nop                                           ; $4FCB: $00
    add h                                         ; $4FCC: $84
    nop                                           ; $4FCD: $00
    add [hl]                                      ; $4FCE: $86
    nop                                           ; $4FCF: $00
    adc b                                         ; $4FD0: $88
    nop                                           ; $4FD1: $00
    adc d                                         ; $4FD2: $8A
    nop                                           ; $4FD3: $00
    adc h                                         ; $4FD4: $8C
    nop                                           ; $4FD5: $00
    adc [hl]                                      ; $4FD6: $8E
    nop                                           ; $4FD7: $00
    sub b                                         ; $4FD8: $90
    nop                                           ; $4FD9: $00
    sub d                                         ; $4FDA: $92
    nop                                           ; $4FDB: $00
    sub h                                         ; $4FDC: $94
    nop                                           ; $4FDD: $00
    sub [hl]                                      ; $4FDE: $96
    nop                                           ; $4FDF: $00
    nop                                           ; $4FE0: $00
    nop                                           ; $4FE1: $00
    nop                                           ; $4FE2: $00
    nop                                           ; $4FE3: $00
    nop                                           ; $4FE4: $00
    nop                                           ; $4FE5: $00
    nop                                           ; $4FE6: $00
    nop                                           ; $4FE7: $00
    nop                                           ; $4FE8: $00
    nop                                           ; $4FE9: $00
    nop                                           ; $4FEA: $00
    nop                                           ; $4FEB: $00
    nop                                           ; $4FEC: $00
    nop                                           ; $4FED: $00
    add c                                         ; $4FEE: $81
    nop                                           ; $4FEF: $00
    add e                                         ; $4FF0: $83
    nop                                           ; $4FF1: $00
    add l                                         ; $4FF2: $85
    nop                                           ; $4FF3: $00
    add a                                         ; $4FF4: $87
    nop                                           ; $4FF5: $00
    adc c                                         ; $4FF6: $89
    nop                                           ; $4FF7: $00
    adc e                                         ; $4FF8: $8B
    nop                                           ; $4FF9: $00
    adc l                                         ; $4FFA: $8D
    nop                                           ; $4FFB: $00
    adc a                                         ; $4FFC: $8F
    nop                                           ; $4FFD: $00
    sub c                                         ; $4FFE: $91
    nop                                           ; $4FFF: $00
    sub e                                         ; $5000: $93
    nop                                           ; $5001: $00
    sub l                                         ; $5002: $95
    nop                                           ; $5003: $00
    sub a                                         ; $5004: $97
    nop                                           ; $5005: $00
    nop                                           ; $5006: $00
    nop                                           ; $5007: $00
    nop                                           ; $5008: $00
    nop                                           ; $5009: $00
    nop                                           ; $500A: $00
    nop                                           ; $500B: $00
    nop                                           ; $500C: $00
    nop                                           ; $500D: $00
    nop                                           ; $500E: $00
    nop                                           ; $500F: $00
    nop                                           ; $5010: $00
    nop                                           ; $5011: $00
    sbc b                                         ; $5012: $98
    nop                                           ; $5013: $00
    sbc d                                         ; $5014: $9A
    nop                                           ; $5015: $00
    sbc h                                         ; $5016: $9C
    nop                                           ; $5017: $00
    sbc [hl]                                      ; $5018: $9E
    nop                                           ; $5019: $00
    and b                                         ; $501A: $A0
    nop                                           ; $501B: $00
    and d                                         ; $501C: $A2
    nop                                           ; $501D: $00
    and h                                         ; $501E: $A4
    nop                                           ; $501F: $00
    and [hl]                                      ; $5020: $A6
    nop                                           ; $5021: $00
    xor b                                         ; $5022: $A8
    nop                                           ; $5023: $00
    xor d                                         ; $5024: $AA
    nop                                           ; $5025: $00
    xor h                                         ; $5026: $AC
    nop                                           ; $5027: $00
    xor [hl]                                      ; $5028: $AE
    nop                                           ; $5029: $00
    or b                                          ; $502A: $B0
    nop                                           ; $502B: $00
    or d                                          ; $502C: $B2
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
    sbc c                                         ; $5038: $99
    nop                                           ; $5039: $00
    sbc e                                         ; $503A: $9B
    nop                                           ; $503B: $00
    sbc l                                         ; $503C: $9D
    nop                                           ; $503D: $00
    sbc a                                         ; $503E: $9F
    nop                                           ; $503F: $00
    and c                                         ; $5040: $A1
    nop                                           ; $5041: $00
    and e                                         ; $5042: $A3
    nop                                           ; $5043: $00
    and l                                         ; $5044: $A5
    nop                                           ; $5045: $00
    and a                                         ; $5046: $A7
    nop                                           ; $5047: $00
    xor c                                         ; $5048: $A9
    nop                                           ; $5049: $00
    xor e                                         ; $504A: $AB
    nop                                           ; $504B: $00
    xor l                                         ; $504C: $AD
    nop                                           ; $504D: $00
    xor a                                         ; $504E: $AF
    nop                                           ; $504F: $00
    or c                                          ; $5050: $B1
    nop                                           ; $5051: $00
    or e                                          ; $5052: $B3
    nop                                           ; $5053: $00
    nop                                           ; $5054: $00
    nop                                           ; $5055: $00
    nop                                           ; $5056: $00
    nop                                           ; $5057: $00
    nop                                           ; $5058: $00
    nop                                           ; $5059: $00
    nop                                           ; $505A: $00
    nop                                           ; $505B: $00
    nop                                           ; $505C: $00
    nop                                           ; $505D: $00
    or h                                          ; $505E: $B4
    nop                                           ; $505F: $00
    or [hl]                                       ; $5060: $B6
    nop                                           ; $5061: $00
    cp b                                          ; $5062: $B8
    nop                                           ; $5063: $00
    cp d                                          ; $5064: $BA
    nop                                           ; $5065: $00
    cp h                                          ; $5066: $BC
    nop                                           ; $5067: $00
    cp [hl]                                       ; $5068: $BE
    nop                                           ; $5069: $00
    ret nz                                        ; $506A: $C0

    nop                                           ; $506B: $00
    jp nz, $C400                                  ; $506C: $C2 $00 $C4

    nop                                           ; $506F: $00
    add $00                                       ; $5070: $C6 $00
    ret z                                         ; $5072: $C8

    nop                                           ; $5073: $00
    jp z, $CC00                                   ; $5074: $CA $00 $CC

    nop                                           ; $5077: $00
    adc $00                                       ; $5078: $CE $00
    nop                                           ; $507A: $00
    nop                                           ; $507B: $00
    nop                                           ; $507C: $00
    nop                                           ; $507D: $00
    nop                                           ; $507E: $00
    nop                                           ; $507F: $00
    nop                                           ; $5080: $00
    nop                                           ; $5081: $00
    nop                                           ; $5082: $00
    nop                                           ; $5083: $00
    or l                                          ; $5084: $B5
    nop                                           ; $5085: $00
    or a                                          ; $5086: $B7
    nop                                           ; $5087: $00
    cp c                                          ; $5088: $B9
    nop                                           ; $5089: $00
    cp e                                          ; $508A: $BB
    nop                                           ; $508B: $00
    cp l                                          ; $508C: $BD
    nop                                           ; $508D: $00
    cp a                                          ; $508E: $BF
    nop                                           ; $508F: $00
    pop bc                                        ; $5090: $C1
    nop                                           ; $5091: $00
    jp $C500                                      ; $5092: $C3 $00 $C5


    nop                                           ; $5095: $00
    rst RST_00                                    ; $5096: $C7
    nop                                           ; $5097: $00
    ret                                           ; $5098: $C9


    nop                                           ; $5099: $00
    rlc b                                         ; $509A: $CB $00
    call $CF00                                    ; $509C: $CD $00 $CF
    nop                                           ; $509F: $00
    nop                                           ; $50A0: $00
    nop                                           ; $50A1: $00
    nop                                           ; $50A2: $00
    nop                                           ; $50A3: $00
    nop                                           ; $50A4: $00
    nop                                           ; $50A5: $00
    nop                                           ; $50A6: $00
    nop                                           ; $50A7: $00
    ret nc                                        ; $50A8: $D0

    nop                                           ; $50A9: $00
    jp nc, $D400                                  ; $50AA: $D2 $00 $D4

    nop                                           ; $50AD: $00
    sub $00                                       ; $50AE: $D6 $00
    ret c                                         ; $50B0: $D8

    nop                                           ; $50B1: $00
    jp c, $DC00                                   ; $50B2: $DA $00 $DC

    nop                                           ; $50B5: $00
    sbc $00                                       ; $50B6: $DE $00
    ldh [rP1], a                                  ; $50B8: $E0 $00
    ldh [c], a                                    ; $50BA: $E2
    nop                                           ; $50BB: $00
    db $E4                                        ; $50BC: $E4
    nop                                           ; $50BD: $00
    and $00                                       ; $50BE: $E6 $00
    add sp, $00                                   ; $50C0: $E8 $00
    ld [$EC00], a                                 ; $50C2: $EA $00 $EC
    nop                                           ; $50C5: $00
    xor $00                                       ; $50C6: $EE $00
    nop                                           ; $50C8: $00
    nop                                           ; $50C9: $00
    nop                                           ; $50CA: $00
    nop                                           ; $50CB: $00
    nop                                           ; $50CC: $00
    nop                                           ; $50CD: $00
    pop de                                        ; $50CE: $D1
    nop                                           ; $50CF: $00
    db $D3                                        ; $50D0: $D3
    nop                                           ; $50D1: $00
    push de                                       ; $50D2: $D5
    nop                                           ; $50D3: $00
    rst RST_10                                    ; $50D4: $D7
    nop                                           ; $50D5: $00
    reti                                          ; $50D6: $D9


    nop                                           ; $50D7: $00
    db $DB                                        ; $50D8: $DB
    nop                                           ; $50D9: $00
    db $DD                                        ; $50DA: $DD
    nop                                           ; $50DB: $00
    rst RST_18                                    ; $50DC: $DF
    nop                                           ; $50DD: $00
    pop hl                                        ; $50DE: $E1
    nop                                           ; $50DF: $00
    db $E3                                        ; $50E0: $E3
    nop                                           ; $50E1: $00
    push hl                                       ; $50E2: $E5
    nop                                           ; $50E3: $00
    rst RST_20                                    ; $50E4: $E7
    nop                                           ; $50E5: $00
    jp hl                                         ; $50E6: $E9


    nop                                           ; $50E7: $00
    db $EB                                        ; $50E8: $EB
    nop                                           ; $50E9: $00
    db $ED                                        ; $50EA: $ED
    nop                                           ; $50EB: $00
    rst RST_28                                    ; $50EC: $EF
    nop                                           ; $50ED: $00
    nop                                           ; $50EE: $00
    nop                                           ; $50EF: $00
    nop                                           ; $50F0: $00
    nop                                           ; $50F1: $00
    nop                                           ; $50F2: $00
    nop                                           ; $50F3: $00
    ldh a, [rP1]                                  ; $50F4: $F0 $00
    ldh a, [c]                                    ; $50F6: $F2
    nop                                           ; $50F7: $00
    db $F4                                        ; $50F8: $F4
    nop                                           ; $50F9: $00
    or $00                                        ; $50FA: $F6 $00
    ld hl, sp+$00                                 ; $50FC: $F8 $00
    ld a, [$FC00]                                 ; $50FE: $FA $00 $FC
    nop                                           ; $5101: $00
    cp $00                                        ; $5102: $FE $00
    ld [bc], a                                    ; $5104: $02
    nop                                           ; $5105: $00
    inc b                                         ; $5106: $04
    nop                                           ; $5107: $00
    ld b, $00                                     ; $5108: $06 $00
    ld [$0A00], sp                                ; $510A: $08 $00 $0A
    nop                                           ; $510D: $00
    inc c                                         ; $510E: $0C
    nop                                           ; $510F: $00
    ld c, $00                                     ; $5110: $0E $00
    stop                                          ; $5112: $10 $00
    nop                                           ; $5114: $00
    nop                                           ; $5115: $00
    nop                                           ; $5116: $00
    nop                                           ; $5117: $00
    nop                                           ; $5118: $00
    nop                                           ; $5119: $00
    pop af                                        ; $511A: $F1
    nop                                           ; $511B: $00
    di                                            ; $511C: $F3
    nop                                           ; $511D: $00
    push af                                       ; $511E: $F5
    nop                                           ; $511F: $00
    rst RST_30                                    ; $5120: $F7
    nop                                           ; $5121: $00
    ld sp, hl                                     ; $5122: $F9
    nop                                           ; $5123: $00
    ei                                            ; $5124: $FB
    nop                                           ; $5125: $00
    db $FD                                        ; $5126: $FD
    nop                                           ; $5127: $00
    rst RST_38                                    ; $5128: $FF
    nop                                           ; $5129: $00
    inc bc                                        ; $512A: $03
    nop                                           ; $512B: $00
    dec b                                         ; $512C: $05
    nop                                           ; $512D: $00
    rlca                                          ; $512E: $07
    nop                                           ; $512F: $00
    add hl, bc                                    ; $5130: $09
    nop                                           ; $5131: $00
    dec bc                                        ; $5132: $0B
    nop                                           ; $5133: $00
    dec c                                         ; $5134: $0D
    nop                                           ; $5135: $00
    rrca                                          ; $5136: $0F
    nop                                           ; $5137: $00
    ld de, $0000                                  ; $5138: $11 $00 $00
    nop                                           ; $513B: $00
    nop                                           ; $513C: $00
    nop                                           ; $513D: $00
    nop                                           ; $513E: $00
    nop                                           ; $513F: $00
    ld [de], a                                    ; $5140: $12
    nop                                           ; $5141: $00
    inc d                                         ; $5142: $14
    nop                                           ; $5143: $00
    ld d, $00                                     ; $5144: $16 $00
    jr jr_03C_5148                                ; $5146: $18 $00

jr_03C_5148:
    ld a, [de]                                    ; $5148: $1A
    nop                                           ; $5149: $00
    inc e                                         ; $514A: $1C
    nop                                           ; $514B: $00
    ld e, $00                                     ; $514C: $1E $00
    jr nz, jr_03C_5150                            ; $514E: $20 $00

jr_03C_5150:
    ld [hl+], a                                   ; $5150: $22
    nop                                           ; $5151: $00
    inc h                                         ; $5152: $24
    nop                                           ; $5153: $00
    ld h, $00                                     ; $5154: $26 $00
    jr z, jr_03C_5158                             ; $5156: $28 $00

jr_03C_5158:
    ld a, [hl+]                                   ; $5158: $2A
    nop                                           ; $5159: $00
    inc l                                         ; $515A: $2C
    nop                                           ; $515B: $00
    ld l, $00                                     ; $515C: $2E $00
    jr nc, jr_03C_5160                            ; $515E: $30 $00

jr_03C_5160:
    nop                                           ; $5160: $00
    nop                                           ; $5161: $00
    nop                                           ; $5162: $00
    nop                                           ; $5163: $00
    nop                                           ; $5164: $00
    nop                                           ; $5165: $00
    inc de                                        ; $5166: $13
    nop                                           ; $5167: $00
    dec d                                         ; $5168: $15
    nop                                           ; $5169: $00
    rla                                           ; $516A: $17
    nop                                           ; $516B: $00
    add hl, de                                    ; $516C: $19
    nop                                           ; $516D: $00
    dec de                                        ; $516E: $1B
    nop                                           ; $516F: $00
    dec e                                         ; $5170: $1D
    nop                                           ; $5171: $00
    rra                                           ; $5172: $1F
    nop                                           ; $5173: $00
    ld hl, $2300                                  ; $5174: $21 $00 $23
    nop                                           ; $5177: $00
    dec h                                         ; $5178: $25
    nop                                           ; $5179: $00
    daa                                           ; $517A: $27
    nop                                           ; $517B: $00
    add hl, hl                                    ; $517C: $29
    nop                                           ; $517D: $00
    dec hl                                        ; $517E: $2B
    nop                                           ; $517F: $00
    dec l                                         ; $5180: $2D
    nop                                           ; $5181: $00
    cpl                                           ; $5182: $2F
    nop                                           ; $5183: $00
    ld sp, $0000                                  ; $5184: $31 $00 $00
    nop                                           ; $5187: $00
    nop                                           ; $5188: $00
    nop                                           ; $5189: $00
    ld [hl-], a                                   ; $518A: $32
    nop                                           ; $518B: $00
    inc [hl]                                      ; $518C: $34
    nop                                           ; $518D: $00
    ld [hl], $00                                  ; $518E: $36 $00
    jr c, jr_03C_5192                             ; $5190: $38 $00

jr_03C_5192:
    ld a, [hl-]                                   ; $5192: $3A
    nop                                           ; $5193: $00
    inc a                                         ; $5194: $3C
    nop                                           ; $5195: $00
    ld a, $00                                     ; $5196: $3E $00
    ld b, b                                       ; $5198: $40
    nop                                           ; $5199: $00
    ld b, d                                       ; $519A: $42
    nop                                           ; $519B: $00
    ld b, h                                       ; $519C: $44
    nop                                           ; $519D: $00
    ld b, [hl]                                    ; $519E: $46
    nop                                           ; $519F: $00
    ld c, b                                       ; $51A0: $48
    nop                                           ; $51A1: $00
    ld c, d                                       ; $51A2: $4A
    nop                                           ; $51A3: $00
    ld c, h                                       ; $51A4: $4C
    nop                                           ; $51A5: $00
    ld c, [hl]                                    ; $51A6: $4E
    nop                                           ; $51A7: $00
    ld d, b                                       ; $51A8: $50
    nop                                           ; $51A9: $00
    ld d, d                                       ; $51AA: $52
    nop                                           ; $51AB: $00
    ld d, h                                       ; $51AC: $54
    nop                                           ; $51AD: $00
    nop                                           ; $51AE: $00
    nop                                           ; $51AF: $00
    inc sp                                        ; $51B0: $33
    nop                                           ; $51B1: $00
    dec [hl]                                      ; $51B2: $35
    nop                                           ; $51B3: $00
    scf                                           ; $51B4: $37
    nop                                           ; $51B5: $00
    add hl, sp                                    ; $51B6: $39
    nop                                           ; $51B7: $00
    dec sp                                        ; $51B8: $3B
    nop                                           ; $51B9: $00
    dec a                                         ; $51BA: $3D
    nop                                           ; $51BB: $00
    ccf                                           ; $51BC: $3F
    nop                                           ; $51BD: $00
    ld b, c                                       ; $51BE: $41
    nop                                           ; $51BF: $00
    ld b, e                                       ; $51C0: $43
    nop                                           ; $51C1: $00
    ld b, l                                       ; $51C2: $45
    nop                                           ; $51C3: $00
    ld b, a                                       ; $51C4: $47
    nop                                           ; $51C5: $00
    ld c, c                                       ; $51C6: $49
    nop                                           ; $51C7: $00
    ld c, e                                       ; $51C8: $4B
    nop                                           ; $51C9: $00
    ld c, l                                       ; $51CA: $4D
    nop                                           ; $51CB: $00
    ld c, a                                       ; $51CC: $4F
    nop                                           ; $51CD: $00
    ld d, c                                       ; $51CE: $51
    nop                                           ; $51CF: $00
    ld d, e                                       ; $51D0: $53
    nop                                           ; $51D1: $00
    ld d, l                                       ; $51D2: $55
    nop                                           ; $51D3: $00
    nop                                           ; $51D4: $00
    nop                                           ; $51D5: $00
    ld d, [hl]                                    ; $51D6: $56
    nop                                           ; $51D7: $00
    ld e, b                                       ; $51D8: $58
    nop                                           ; $51D9: $00
    ld e, d                                       ; $51DA: $5A
    nop                                           ; $51DB: $00
    ld e, h                                       ; $51DC: $5C
    nop                                           ; $51DD: $00
    ld e, [hl]                                    ; $51DE: $5E
    nop                                           ; $51DF: $00
    ld h, b                                       ; $51E0: $60
    nop                                           ; $51E1: $00
    ld h, d                                       ; $51E2: $62
    nop                                           ; $51E3: $00
    ld h, h                                       ; $51E4: $64
    nop                                           ; $51E5: $00
    ld h, [hl]                                    ; $51E6: $66
    nop                                           ; $51E7: $00
    ld l, b                                       ; $51E8: $68
    nop                                           ; $51E9: $00
    ld l, d                                       ; $51EA: $6A
    nop                                           ; $51EB: $00
    ld l, h                                       ; $51EC: $6C
    nop                                           ; $51ED: $00
    ld l, [hl]                                    ; $51EE: $6E
    nop                                           ; $51EF: $00
    ld [hl], b                                    ; $51F0: $70
    nop                                           ; $51F1: $00
    ld [hl], d                                    ; $51F2: $72
    nop                                           ; $51F3: $00
    ld [hl], h                                    ; $51F4: $74
    nop                                           ; $51F5: $00
    halt                                          ; $51F6: $76
    nop                                           ; $51F7: $00
    ld a, b                                       ; $51F8: $78
    nop                                           ; $51F9: $00
    nop                                           ; $51FA: $00
    nop                                           ; $51FB: $00
    ld d, a                                       ; $51FC: $57
    nop                                           ; $51FD: $00
    ld e, c                                       ; $51FE: $59
    nop                                           ; $51FF: $00
    ld e, e                                       ; $5200: $5B
    nop                                           ; $5201: $00
    ld e, l                                       ; $5202: $5D
    nop                                           ; $5203: $00
    ld e, a                                       ; $5204: $5F
    nop                                           ; $5205: $00
    ld h, c                                       ; $5206: $61
    nop                                           ; $5207: $00
    ld h, e                                       ; $5208: $63
    nop                                           ; $5209: $00
    ld h, l                                       ; $520A: $65
    nop                                           ; $520B: $00
    ld h, a                                       ; $520C: $67
    nop                                           ; $520D: $00
    ld l, c                                       ; $520E: $69
    nop                                           ; $520F: $00
    ld l, e                                       ; $5210: $6B
    nop                                           ; $5211: $00
    ld l, l                                       ; $5212: $6D
    nop                                           ; $5213: $00
    ld l, a                                       ; $5214: $6F
    nop                                           ; $5215: $00
    ld [hl], c                                    ; $5216: $71
    nop                                           ; $5217: $00
    ld [hl], e                                    ; $5218: $73
    nop                                           ; $5219: $00
    ld [hl], l                                    ; $521A: $75
    nop                                           ; $521B: $00
    ld [hl], a                                    ; $521C: $77
    nop                                           ; $521D: $00
    ld a, c                                       ; $521E: $79
    nop                                           ; $521F: $00
    nop                                           ; $5220: $00
    nop                                           ; $5221: $00
    ld a, d                                       ; $5222: $7A
    nop                                           ; $5223: $00
    ld a, h                                       ; $5224: $7C
    nop                                           ; $5225: $00
    ld a, [hl]                                    ; $5226: $7E
    nop                                           ; $5227: $00
    add b                                         ; $5228: $80
    nop                                           ; $5229: $00
    add d                                         ; $522A: $82
    nop                                           ; $522B: $00
    add h                                         ; $522C: $84
    nop                                           ; $522D: $00
    add [hl]                                      ; $522E: $86
    nop                                           ; $522F: $00
    adc b                                         ; $5230: $88
    nop                                           ; $5231: $00
    adc d                                         ; $5232: $8A
    nop                                           ; $5233: $00
    adc h                                         ; $5234: $8C
    nop                                           ; $5235: $00
    adc [hl]                                      ; $5236: $8E
    nop                                           ; $5237: $00
    sub b                                         ; $5238: $90
    nop                                           ; $5239: $00
    sub d                                         ; $523A: $92
    nop                                           ; $523B: $00
    sub h                                         ; $523C: $94
    nop                                           ; $523D: $00
    sub [hl]                                      ; $523E: $96
    nop                                           ; $523F: $00
    sbc b                                         ; $5240: $98
    nop                                           ; $5241: $00
    sbc d                                         ; $5242: $9A
    nop                                           ; $5243: $00
    sbc h                                         ; $5244: $9C
    nop                                           ; $5245: $00
    nop                                           ; $5246: $00
    nop                                           ; $5247: $00
    ld a, e                                       ; $5248: $7B
    nop                                           ; $5249: $00
    ld a, l                                       ; $524A: $7D
    nop                                           ; $524B: $00
    ld a, a                                       ; $524C: $7F
    nop                                           ; $524D: $00
    add c                                         ; $524E: $81
    nop                                           ; $524F: $00
    add e                                         ; $5250: $83
    nop                                           ; $5251: $00
    add l                                         ; $5252: $85
    nop                                           ; $5253: $00
    add a                                         ; $5254: $87
    nop                                           ; $5255: $00
    adc c                                         ; $5256: $89
    nop                                           ; $5257: $00
    adc e                                         ; $5258: $8B
    nop                                           ; $5259: $00
    adc l                                         ; $525A: $8D
    nop                                           ; $525B: $00
    adc a                                         ; $525C: $8F
    nop                                           ; $525D: $00
    sub c                                         ; $525E: $91
    nop                                           ; $525F: $00
    sub e                                         ; $5260: $93
    nop                                           ; $5261: $00
    sub l                                         ; $5262: $95
    nop                                           ; $5263: $00
    sub a                                         ; $5264: $97
    nop                                           ; $5265: $00
    sbc c                                         ; $5266: $99
    nop                                           ; $5267: $00
    sbc e                                         ; $5268: $9B
    nop                                           ; $5269: $00
    sbc l                                         ; $526A: $9D
    nop                                           ; $526B: $00
    nop                                           ; $526C: $00
    nop                                           ; $526D: $00
    nop                                           ; $526E: $00
    nop                                           ; $526F: $00
    nop                                           ; $5270: $00
    nop                                           ; $5271: $00
    nop                                           ; $5272: $00
    nop                                           ; $5273: $00
    sbc [hl]                                      ; $5274: $9E
    nop                                           ; $5275: $00
    and b                                         ; $5276: $A0
    nop                                           ; $5277: $00
    and d                                         ; $5278: $A2
    nop                                           ; $5279: $00
    and h                                         ; $527A: $A4
    nop                                           ; $527B: $00
    and [hl]                                      ; $527C: $A6
    nop                                           ; $527D: $00
    xor b                                         ; $527E: $A8
    nop                                           ; $527F: $00
    xor d                                         ; $5280: $AA
    nop                                           ; $5281: $00
    xor h                                         ; $5282: $AC
    nop                                           ; $5283: $00
    xor [hl]                                      ; $5284: $AE
    nop                                           ; $5285: $00
    or b                                          ; $5286: $B0
    nop                                           ; $5287: $00
    or d                                          ; $5288: $B2
    nop                                           ; $5289: $00
    or h                                          ; $528A: $B4
    nop                                           ; $528B: $00
    nop                                           ; $528C: $00
    nop                                           ; $528D: $00
    nop                                           ; $528E: $00
    nop                                           ; $528F: $00
    nop                                           ; $5290: $00
    nop                                           ; $5291: $00
    nop                                           ; $5292: $00
    nop                                           ; $5293: $00
    nop                                           ; $5294: $00
    nop                                           ; $5295: $00
    nop                                           ; $5296: $00
    nop                                           ; $5297: $00
    nop                                           ; $5298: $00
    nop                                           ; $5299: $00
    sbc a                                         ; $529A: $9F
    nop                                           ; $529B: $00
    and c                                         ; $529C: $A1
    nop                                           ; $529D: $00
    and e                                         ; $529E: $A3
    nop                                           ; $529F: $00
    and l                                         ; $52A0: $A5
    nop                                           ; $52A1: $00
    and a                                         ; $52A2: $A7
    nop                                           ; $52A3: $00
    xor c                                         ; $52A4: $A9
    nop                                           ; $52A5: $00
    xor e                                         ; $52A6: $AB
    nop                                           ; $52A7: $00
    xor l                                         ; $52A8: $AD
    nop                                           ; $52A9: $00
    xor a                                         ; $52AA: $AF
    nop                                           ; $52AB: $00
    or c                                          ; $52AC: $B1
    nop                                           ; $52AD: $00
    or e                                          ; $52AE: $B3
    nop                                           ; $52AF: $00
    or l                                          ; $52B0: $B5
    nop                                           ; $52B1: $00
    nop                                           ; $52B2: $00
    nop                                           ; $52B3: $00
    nop                                           ; $52B4: $00
    nop                                           ; $52B5: $00
    nop                                           ; $52B6: $00
    nop                                           ; $52B7: $00
    nop                                           ; $52B8: $00
    nop                                           ; $52B9: $00
    nop                                           ; $52BA: $00
    nop                                           ; $52BB: $00
    nop                                           ; $52BC: $00
    nop                                           ; $52BD: $00
    or [hl]                                       ; $52BE: $B6
    nop                                           ; $52BF: $00
    cp b                                          ; $52C0: $B8
    nop                                           ; $52C1: $00
    cp d                                          ; $52C2: $BA
    nop                                           ; $52C3: $00
    cp h                                          ; $52C4: $BC
    nop                                           ; $52C5: $00
    cp [hl]                                       ; $52C6: $BE
    nop                                           ; $52C7: $00
    ret nz                                        ; $52C8: $C0

    nop                                           ; $52C9: $00
    jp nz, $C400                                  ; $52CA: $C2 $00 $C4

    nop                                           ; $52CD: $00
    add $00                                       ; $52CE: $C6 $00
    ret z                                         ; $52D0: $C8

    nop                                           ; $52D1: $00
    jp z, $CC00                                   ; $52D2: $CA $00 $CC

    nop                                           ; $52D5: $00
    adc $00                                       ; $52D6: $CE $00
    ret nc                                        ; $52D8: $D0

    nop                                           ; $52D9: $00
    jp nc, RST_00                                 ; $52DA: $D2 $00 $00

    nop                                           ; $52DD: $00
    nop                                           ; $52DE: $00
    nop                                           ; $52DF: $00
    nop                                           ; $52E0: $00
    nop                                           ; $52E1: $00
    nop                                           ; $52E2: $00
    nop                                           ; $52E3: $00
    or a                                          ; $52E4: $B7
    nop                                           ; $52E5: $00
    cp c                                          ; $52E6: $B9
    nop                                           ; $52E7: $00
    cp e                                          ; $52E8: $BB
    nop                                           ; $52E9: $00
    cp l                                          ; $52EA: $BD
    nop                                           ; $52EB: $00
    cp a                                          ; $52EC: $BF
    nop                                           ; $52ED: $00
    pop bc                                        ; $52EE: $C1
    nop                                           ; $52EF: $00
    jp $C500                                      ; $52F0: $C3 $00 $C5


    nop                                           ; $52F3: $00
    rst RST_00                                    ; $52F4: $C7
    nop                                           ; $52F5: $00
    ret                                           ; $52F6: $C9


    nop                                           ; $52F7: $00
    rlc b                                         ; $52F8: $CB $00
    call $CF00                                    ; $52FA: $CD $00 $CF
    nop                                           ; $52FD: $00
    pop de                                        ; $52FE: $D1
    nop                                           ; $52FF: $00
    db $D3                                        ; $5300: $D3
    nop                                           ; $5301: $00
    nop                                           ; $5302: $00
    nop                                           ; $5303: $00
    nop                                           ; $5304: $00
    nop                                           ; $5305: $00
    call nc, $D600                                ; $5306: $D4 $00 $D6
    nop                                           ; $5309: $00
    ret c                                         ; $530A: $D8

    nop                                           ; $530B: $00
    jp c, $DC00                                   ; $530C: $DA $00 $DC

    nop                                           ; $530F: $00
    sbc $00                                       ; $5310: $DE $00
    ldh [rP1], a                                  ; $5312: $E0 $00
    ldh [c], a                                    ; $5314: $E2
    nop                                           ; $5315: $00
    db $E4                                        ; $5316: $E4
    nop                                           ; $5317: $00
    and $00                                       ; $5318: $E6 $00
    add sp, $00                                   ; $531A: $E8 $00
    ld [$EC00], a                                 ; $531C: $EA $00 $EC
    nop                                           ; $531F: $00
    xor $00                                       ; $5320: $EE $00
    ldh a, [rP1]                                  ; $5322: $F0 $00
    ldh a, [c]                                    ; $5324: $F2
    nop                                           ; $5325: $00
    db $F4                                        ; $5326: $F4
    nop                                           ; $5327: $00
    or $00                                        ; $5328: $F6 $00
    ld hl, sp+$00                                 ; $532A: $F8 $00
    push de                                       ; $532C: $D5
    nop                                           ; $532D: $00
    rst RST_10                                    ; $532E: $D7
    nop                                           ; $532F: $00
    reti                                          ; $5330: $D9


    nop                                           ; $5331: $00
    db $DB                                        ; $5332: $DB
    nop                                           ; $5333: $00
    db $DD                                        ; $5334: $DD
    nop                                           ; $5335: $00
    rst RST_18                                    ; $5336: $DF
    nop                                           ; $5337: $00
    pop hl                                        ; $5338: $E1
    nop                                           ; $5339: $00
    db $E3                                        ; $533A: $E3
    nop                                           ; $533B: $00
    push hl                                       ; $533C: $E5
    nop                                           ; $533D: $00
    rst RST_20                                    ; $533E: $E7
    nop                                           ; $533F: $00
    jp hl                                         ; $5340: $E9


    nop                                           ; $5341: $00
    db $EB                                        ; $5342: $EB
    nop                                           ; $5343: $00
    db $ED                                        ; $5344: $ED
    nop                                           ; $5345: $00
    rst RST_28                                    ; $5346: $EF
    nop                                           ; $5347: $00
    pop af                                        ; $5348: $F1
    nop                                           ; $5349: $00
    di                                            ; $534A: $F3
    nop                                           ; $534B: $00
    push af                                       ; $534C: $F5
    nop                                           ; $534D: $00
    rst RST_30                                    ; $534E: $F7
    nop                                           ; $534F: $00
    ld sp, hl                                     ; $5350: $F9
    nop                                           ; $5351: $00
    ld a, [$FC00]                                 ; $5352: $FA $00 $FC
    nop                                           ; $5355: $00
    cp $00                                        ; $5356: $FE $00
    ld [bc], a                                    ; $5358: $02
    nop                                           ; $5359: $00
    inc b                                         ; $535A: $04
    nop                                           ; $535B: $00
    ld b, $00                                     ; $535C: $06 $00
    ld [$0A00], sp                                ; $535E: $08 $00 $0A
    nop                                           ; $5361: $00
    inc c                                         ; $5362: $0C
    nop                                           ; $5363: $00
    ld c, $00                                     ; $5364: $0E $00
    stop                                          ; $5366: $10 $00
    ld [de], a                                    ; $5368: $12
    nop                                           ; $5369: $00
    inc d                                         ; $536A: $14
    nop                                           ; $536B: $00
    ld d, $00                                     ; $536C: $16 $00
    jr jr_03C_5370                                ; $536E: $18 $00

jr_03C_5370:
    ld a, [de]                                    ; $5370: $1A
    nop                                           ; $5371: $00
    inc e                                         ; $5372: $1C
    nop                                           ; $5373: $00
    ld e, $00                                     ; $5374: $1E $00
    jr nz, jr_03C_5378                            ; $5376: $20 $00

jr_03C_5378:
    ei                                            ; $5378: $FB
    nop                                           ; $5379: $00
    db $FD                                        ; $537A: $FD
    nop                                           ; $537B: $00
    rst RST_38                                    ; $537C: $FF
    nop                                           ; $537D: $00
    inc bc                                        ; $537E: $03
    nop                                           ; $537F: $00
    dec b                                         ; $5380: $05
    nop                                           ; $5381: $00
    rlca                                          ; $5382: $07
    nop                                           ; $5383: $00
    add hl, bc                                    ; $5384: $09
    nop                                           ; $5385: $00
    dec bc                                        ; $5386: $0B
    nop                                           ; $5387: $00
    dec c                                         ; $5388: $0D
    nop                                           ; $5389: $00
    rrca                                          ; $538A: $0F
    nop                                           ; $538B: $00
    ld de, $1300                                  ; $538C: $11 $00 $13
    nop                                           ; $538F: $00
    dec d                                         ; $5390: $15
    nop                                           ; $5391: $00
    rla                                           ; $5392: $17
    nop                                           ; $5393: $00
    add hl, de                                    ; $5394: $19
    nop                                           ; $5395: $00
    dec de                                        ; $5396: $1B
    nop                                           ; $5397: $00
    dec e                                         ; $5398: $1D
    nop                                           ; $5399: $00
    rra                                           ; $539A: $1F
    nop                                           ; $539B: $00
    ld hl, $2200                                  ; $539C: $21 $00 $22
    nop                                           ; $539F: $00
    inc h                                         ; $53A0: $24
    nop                                           ; $53A1: $00
    ld h, $00                                     ; $53A2: $26 $00
    jr z, jr_03C_53A6                             ; $53A4: $28 $00

jr_03C_53A6:
    ld a, [hl+]                                   ; $53A6: $2A
    nop                                           ; $53A7: $00
    inc l                                         ; $53A8: $2C
    nop                                           ; $53A9: $00
    ld l, $00                                     ; $53AA: $2E $00
    jr nc, jr_03C_53AE                            ; $53AC: $30 $00

jr_03C_53AE:
    ld [hl-], a                                   ; $53AE: $32
    nop                                           ; $53AF: $00
    inc [hl]                                      ; $53B0: $34
    nop                                           ; $53B1: $00
    ld [hl], $00                                  ; $53B2: $36 $00
    jr c, jr_03C_53B6                             ; $53B4: $38 $00

jr_03C_53B6:
    ld a, [hl-]                                   ; $53B6: $3A
    nop                                           ; $53B7: $00
    inc a                                         ; $53B8: $3C
    nop                                           ; $53B9: $00
    ld a, $00                                     ; $53BA: $3E $00
    ld b, b                                       ; $53BC: $40
    nop                                           ; $53BD: $00
    ld b, d                                       ; $53BE: $42
    nop                                           ; $53BF: $00
    ld b, h                                       ; $53C0: $44
    nop                                           ; $53C1: $00
    nop                                           ; $53C2: $00
    nop                                           ; $53C3: $00
    inc hl                                        ; $53C4: $23
    nop                                           ; $53C5: $00
    dec h                                         ; $53C6: $25
    nop                                           ; $53C7: $00
    daa                                           ; $53C8: $27
    nop                                           ; $53C9: $00
    add hl, hl                                    ; $53CA: $29
    nop                                           ; $53CB: $00
    dec hl                                        ; $53CC: $2B
    nop                                           ; $53CD: $00
    dec l                                         ; $53CE: $2D
    nop                                           ; $53CF: $00
    cpl                                           ; $53D0: $2F
    nop                                           ; $53D1: $00
    ld sp, $3300                                  ; $53D2: $31 $00 $33
    nop                                           ; $53D5: $00
    dec [hl]                                      ; $53D6: $35
    nop                                           ; $53D7: $00
    scf                                           ; $53D8: $37
    nop                                           ; $53D9: $00
    add hl, sp                                    ; $53DA: $39
    nop                                           ; $53DB: $00
    dec sp                                        ; $53DC: $3B
    nop                                           ; $53DD: $00
    dec a                                         ; $53DE: $3D
    nop                                           ; $53DF: $00
    ccf                                           ; $53E0: $3F
    nop                                           ; $53E1: $00
    ld b, c                                       ; $53E2: $41
    nop                                           ; $53E3: $00
    ld b, e                                       ; $53E4: $43
    nop                                           ; $53E5: $00
    ld b, l                                       ; $53E6: $45
    nop                                           ; $53E7: $00
    nop                                           ; $53E8: $00
    nop                                           ; $53E9: $00
    nop                                           ; $53EA: $00
    nop                                           ; $53EB: $00
    nop                                           ; $53EC: $00
    nop                                           ; $53ED: $00
    nop                                           ; $53EE: $00
    nop                                           ; $53EF: $00
    nop                                           ; $53F0: $00
    nop                                           ; $53F1: $00
    nop                                           ; $53F2: $00
    nop                                           ; $53F3: $00
    nop                                           ; $53F4: $00
    nop                                           ; $53F5: $00
    nop                                           ; $53F6: $00
    nop                                           ; $53F7: $00
    nop                                           ; $53F8: $00
    nop                                           ; $53F9: $00
    nop                                           ; $53FA: $00
    nop                                           ; $53FB: $00
    nop                                           ; $53FC: $00
    nop                                           ; $53FD: $00
    nop                                           ; $53FE: $00
    nop                                           ; $53FF: $00
    ld b, [hl]                                    ; $5400: $46
    nop                                           ; $5401: $00
    ld c, b                                       ; $5402: $48
    nop                                           ; $5403: $00
    ld c, d                                       ; $5404: $4A
    nop                                           ; $5405: $00
    ld c, h                                       ; $5406: $4C
    nop                                           ; $5407: $00
    ld c, [hl]                                    ; $5408: $4E
    nop                                           ; $5409: $00
    ld d, b                                       ; $540A: $50
    nop                                           ; $540B: $00
    ld d, d                                       ; $540C: $52
    nop                                           ; $540D: $00
    nop                                           ; $540E: $00
    nop                                           ; $540F: $00
    nop                                           ; $5410: $00
    nop                                           ; $5411: $00
    nop                                           ; $5412: $00
    nop                                           ; $5413: $00
    nop                                           ; $5414: $00
    nop                                           ; $5415: $00
    nop                                           ; $5416: $00
    nop                                           ; $5417: $00
    nop                                           ; $5418: $00
    nop                                           ; $5419: $00
    nop                                           ; $541A: $00
    nop                                           ; $541B: $00
    nop                                           ; $541C: $00
    nop                                           ; $541D: $00
    nop                                           ; $541E: $00
    nop                                           ; $541F: $00
    nop                                           ; $5420: $00
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
    nop                                           ; $5423: $00
    nop                                           ; $5424: $00
    nop                                           ; $5425: $00
    ld b, a                                       ; $5426: $47
    nop                                           ; $5427: $00
    ld c, c                                       ; $5428: $49
    nop                                           ; $5429: $00
    ld c, e                                       ; $542A: $4B
    nop                                           ; $542B: $00
    ld c, l                                       ; $542C: $4D
    nop                                           ; $542D: $00
    ld c, a                                       ; $542E: $4F
    nop                                           ; $542F: $00
    ld d, c                                       ; $5430: $51
    nop                                           ; $5431: $00
    ld d, e                                       ; $5432: $53
    nop                                           ; $5433: $00
    nop                                           ; $5434: $00
    nop                                           ; $5435: $00
    nop                                           ; $5436: $00
    nop                                           ; $5437: $00
    nop                                           ; $5438: $00
    nop                                           ; $5439: $00
    nop                                           ; $543A: $00
    nop                                           ; $543B: $00
    nop                                           ; $543C: $00
    nop                                           ; $543D: $00
    nop                                           ; $543E: $00
    nop                                           ; $543F: $00
    nop                                           ; $5440: $00
    nop                                           ; $5441: $00
    nop                                           ; $5442: $00
    nop                                           ; $5443: $00
    nop                                           ; $5444: $00
    nop                                           ; $5445: $00
    ld b, [hl]                                    ; $5446: $46
    nop                                           ; $5447: $00
    ld c, b                                       ; $5448: $48
    nop                                           ; $5449: $00
    ld c, d                                       ; $544A: $4A
    nop                                           ; $544B: $00
    ld c, h                                       ; $544C: $4C
    nop                                           ; $544D: $00
    ld c, [hl]                                    ; $544E: $4E
    nop                                           ; $544F: $00
    ld d, b                                       ; $5450: $50
    nop                                           ; $5451: $00
    ld d, d                                       ; $5452: $52
    nop                                           ; $5453: $00
    nop                                           ; $5454: $00
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
    nop                                           ; $5460: $00
    nop                                           ; $5461: $00
    nop                                           ; $5462: $00
    nop                                           ; $5463: $00
    nop                                           ; $5464: $00
    nop                                           ; $5465: $00
    nop                                           ; $5466: $00
    nop                                           ; $5467: $00
    nop                                           ; $5468: $00
    nop                                           ; $5469: $00
    nop                                           ; $546A: $00
    nop                                           ; $546B: $00
    ld b, a                                       ; $546C: $47
    nop                                           ; $546D: $00
    ld c, c                                       ; $546E: $49
    nop                                           ; $546F: $00
    ld c, e                                       ; $5470: $4B
    nop                                           ; $5471: $00
    ld c, l                                       ; $5472: $4D
    nop                                           ; $5473: $00
    ld c, a                                       ; $5474: $4F
    nop                                           ; $5475: $00
    ld d, c                                       ; $5476: $51
    nop                                           ; $5477: $00
    ld d, e                                       ; $5478: $53
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
    nop                                           ; $5488: $00
    nop                                           ; $5489: $00
    nop                                           ; $548A: $00
    nop                                           ; $548B: $00
    nop                                           ; $548C: $00
    nop                                           ; $548D: $00
    nop                                           ; $548E: $00
    nop                                           ; $548F: $00
    nop                                           ; $5490: $00
    nop                                           ; $5491: $00
    nop                                           ; $5492: $00
    nop                                           ; $5493: $00
    nop                                           ; $5494: $00
    nop                                           ; $5495: $00
    nop                                           ; $5496: $00
    nop                                           ; $5497: $00
    nop                                           ; $5498: $00
    nop                                           ; $5499: $00
    nop                                           ; $549A: $00
    nop                                           ; $549B: $00
    nop                                           ; $549C: $00
    nop                                           ; $549D: $00
    ld d, h                                       ; $549E: $54
    nop                                           ; $549F: $00
    ld d, [hl]                                    ; $54A0: $56
    nop                                           ; $54A1: $00
    ld d, h                                       ; $54A2: $54
    nop                                           ; $54A3: $00
    ld d, [hl]                                    ; $54A4: $56
    nop                                           ; $54A5: $00
    nop                                           ; $54A6: $00
    nop                                           ; $54A7: $00
    nop                                           ; $54A8: $00
    nop                                           ; $54A9: $00
    nop                                           ; $54AA: $00
    nop                                           ; $54AB: $00
    nop                                           ; $54AC: $00
    nop                                           ; $54AD: $00
    nop                                           ; $54AE: $00
    nop                                           ; $54AF: $00
    nop                                           ; $54B0: $00
    nop                                           ; $54B1: $00
    nop                                           ; $54B2: $00
    nop                                           ; $54B3: $00
    nop                                           ; $54B4: $00
    nop                                           ; $54B5: $00
    nop                                           ; $54B6: $00
    nop                                           ; $54B7: $00
    nop                                           ; $54B8: $00
    nop                                           ; $54B9: $00
    nop                                           ; $54BA: $00
    nop                                           ; $54BB: $00
    nop                                           ; $54BC: $00
    nop                                           ; $54BD: $00
    nop                                           ; $54BE: $00
    nop                                           ; $54BF: $00
    nop                                           ; $54C0: $00
    nop                                           ; $54C1: $00
    nop                                           ; $54C2: $00
    nop                                           ; $54C3: $00
    ld d, l                                       ; $54C4: $55
    nop                                           ; $54C5: $00
    ld d, a                                       ; $54C6: $57
    nop                                           ; $54C7: $00
    ld d, l                                       ; $54C8: $55
    nop                                           ; $54C9: $00
    ld d, a                                       ; $54CA: $57
    nop                                           ; $54CB: $00
    nop                                           ; $54CC: $00
    xor a                                         ; $54CD: $AF
    ld [$C31A], a                                 ; $54CE: $EA $1A $C3
    ld sp, $DD00                                  ; $54D1: $31 $00 $DD
    ld a, [$C311]                                 ; $54D4: $FA $11 $C3

jr_03C_54D7:
    cp $0A                                        ; $54D7: $FE $0A
    jr c, jr_03C_54E7                             ; $54D9: $38 $0C

    ld a, [$C002]                                 ; $54DB: $FA $02 $C0
    bit 2, a                                      ; $54DE: $CB $57
    jr z, jr_03C_54E6                             ; $54E0: $28 $04

    ld a, $0A                                     ; $54E2: $3E $0A
    jr jr_03C_54E7                                ; $54E4: $18 $01

jr_03C_54E6:
    xor a                                         ; $54E6: $AF

jr_03C_54E7:
    ld [$C311], a                                 ; $54E7: $EA $11 $C3
    cp $00                                        ; $54EA: $FE $00
    jr nz, jr_03C_54FB                            ; $54EC: $20 $0D

    ld a, [$C001]                                 ; $54EE: $FA $01 $C0
    bit 6, a                                      ; $54F1: $CB $77
    jr nz, jr_03C_550C                            ; $54F3: $20 $17

    ld a, [$C311]                                 ; $54F5: $FA $11 $C3
    inc a                                         ; $54F8: $3C
    jr jr_03C_54D7                                ; $54F9: $18 $DC

jr_03C_54FB:
    cp $09                                        ; $54FB: $FE $09
    jr nz, jr_03C_550C                            ; $54FD: $20 $0D

    ld a, [$C001]                                 ; $54FF: $FA $01 $C0
    bit 7, a                                      ; $5502: $CB $7F
    jr nz, jr_03C_550C                            ; $5504: $20 $06

    ld a, [$C311]                                 ; $5506: $FA $11 $C3
    xor a                                         ; $5509: $AF
    jr z, jr_03C_54D7                             ; $550A: $28 $CB

jr_03C_550C:
    call Call_000_0424                            ; $550C: $CD $24 $04
    di                                            ; $550F: $F3
    rst RST_10                                    ; $5510: $D7
    ld hl, $C03A                                  ; $5511: $21 $3A $C0
    res 1, [hl]                                   ; $5514: $CB $8E
    set 2, [hl]                                   ; $5516: $CB $D6
    ld a, $FF                                     ; $5518: $3E $FF
    ldh [rBGP], a                                 ; $551A: $E0 $47
    ldh [rOBP0], a                                ; $551C: $E0 $48
    ldh [rOBP1], a                                ; $551E: $E0 $49
    ldh [$FFEA], a                                ; $5520: $E0 $EA
    ldh [$FFEB], a                                ; $5522: $E0 $EB
    ldh [$FFEC], a                                ; $5524: $E0 $EC
    call Call_000_13ED                            ; $5526: $CD $ED $13
    ld de, $001C                                  ; $5529: $11 $1C $00
    call Call_000_14C0                            ; $552C: $CD $C0 $14
    xor a                                         ; $552F: $AF
    ldh [$FFE4], a                                ; $5530: $E0 $E4
    ld [$C2AA], a                                 ; $5532: $EA $AA $C2
    ld [$C2AC], a                                 ; $5535: $EA $AC $C2
    ldh [$FFE2], a                                ; $5538: $E0 $E2
    ld hl, $4699                                  ; $553A: $21 $99 $46
    ld b, $31                                     ; $553D: $06 $31
    ld de, $C349                                  ; $553F: $11 $49 $C3
    rst RST_20                                    ; $5542: $E7
    xor a                                         ; $5543: $AF
    ld hl, $C339                                  ; $5544: $21 $39 $C3
    ld c, $10                                     ; $5547: $0E $10

jr_03C_5549:
    ld [hl+], a                                   ; $5549: $22
    dec c                                         ; $554A: $0D
    jr nz, jr_03C_5549                            ; $554B: $20 $FC

    ld hl, $C339                                  ; $554D: $21 $39 $C3
    ld de, $9100                                  ; $5550: $11 $00 $91
    ld b, $51                                     ; $5553: $06 $51
    call Call_000_1188                            ; $5555: $CD $88 $11
    ld hl, $48FE                                  ; $5558: $21 $FE $48
    ld b, $31                                     ; $555B: $06 $31
    ld de, $C349                                  ; $555D: $11 $49 $C3
    rst RST_20                                    ; $5560: $E7
    ld hl, $C349                                  ; $5561: $21 $49 $C3
    ld de, $8400                                  ; $5564: $11 $00 $84
    ld b, $40                                     ; $5567: $06 $40
    call Call_000_1188                            ; $5569: $CD $88 $11
    ld e, $00                                     ; $556C: $1E $00
    ld d, $10                                     ; $556E: $16 $10
    ld hl, $9800                                  ; $5570: $21 $00 $98
    ld b, $14                                     ; $5573: $06 $14
    ld c, $20                                     ; $5575: $0E $20
    call Call_000_10EA                            ; $5577: $CD $EA $10
    ld e, $00                                     ; $557A: $1E $00
    ld d, $10                                     ; $557C: $16 $10
    ld hl, $9C00                                  ; $557E: $21 $00 $9C
    ld b, $14                                     ; $5581: $06 $14
    ld c, $20                                     ; $5583: $0E $20
    call Call_000_10EA                            ; $5585: $CD $EA $10
    ld a, [$C311]                                 ; $5588: $FA $11 $C3
    cp $00                                        ; $558B: $FE $00
    jr z, jr_03C_55AB                             ; $558D: $28 $1C

    cp $08                                        ; $558F: $FE $08
    jr z, jr_03C_55AB                             ; $5591: $28 $18

    cp $09                                        ; $5593: $FE $09
    jr z, jr_03C_55AB                             ; $5595: $28 $14

    cp $0A                                        ; $5597: $FE $0A
    jr z, jr_03C_55AB                             ; $5599: $28 $10

    ld e, $00                                     ; $559B: $1E $00
    ld d, $33                                     ; $559D: $16 $33
    ld hl, $9C41                                  ; $559F: $21 $41 $9C
    ld b, $08                                     ; $55A2: $06 $08
    ld c, $02                                     ; $55A4: $0E $02
    call Call_000_1111                            ; $55A6: $CD $11 $11
    jr jr_03C_55B9                                ; $55A9: $18 $0E

jr_03C_55AB:
    ld e, $00                                     ; $55AB: $1E $00
    ld d, $57                                     ; $55AD: $16 $57
    ld hl, $9C42                                  ; $55AF: $21 $42 $9C
    ld b, $05                                     ; $55B2: $06 $05
    ld c, $02                                     ; $55B4: $0E $02
    call Call_000_1111                            ; $55B6: $CD $11 $11

jr_03C_55B9:
    ld e, $00                                     ; $55B9: $1E $00
    ld d, $43                                     ; $55BB: $16 $43
    ld hl, $9C84                                  ; $55BD: $21 $84 $9C
    ld b, $02                                     ; $55C0: $06 $02
    ld c, $02                                     ; $55C2: $0E $02
    call Call_000_1111                            ; $55C4: $CD $11 $11
    ld e, $00                                     ; $55C7: $1E $00
    ld d, $47                                     ; $55C9: $16 $47
    ld hl, $9CC1                                  ; $55CB: $21 $C1 $9C
    ld b, $08                                     ; $55CE: $06 $08
    ld c, $02                                     ; $55D0: $0E $02
    call Call_000_1111                            ; $55D2: $CD $11 $11
    ld e, $00                                     ; $55D5: $1E $00
    ld d, $31                                     ; $55D7: $16 $31
    ld hl, $9C4A                                  ; $55D9: $21 $4A $9C
    ld b, $08                                     ; $55DC: $06 $08
    ld c, $06                                     ; $55DE: $0E $06
    call Call_000_10EA                            ; $55E0: $CD $EA $10
    ld e, $00                                     ; $55E3: $1E $00
    ld d, $11                                     ; $55E5: $16 $11
    ld hl, $9D0A                                  ; $55E7: $21 $0A $9D
    ld b, $08                                     ; $55EA: $06 $08
    ld c, $01                                     ; $55EC: $0E $01
    call Call_000_1111                            ; $55EE: $CD $11 $11
    call Call_000_0F9E                            ; $55F1: $CD $9E $0F
    ld hl, $D680                                  ; $55F4: $21 $80 $D6
    ld de, $24CF                                  ; $55F7: $11 $CF $24
    call Call_000_0F8E                            ; $55FA: $CD $8E $0F
    ld a, $20                                     ; $55FD: $3E $20
    ld [$D682], a                                 ; $55FF: $EA $82 $D6
    ld [$D683], a                                 ; $5602: $EA $83 $D6
    ld hl, $D684                                  ; $5605: $21 $84 $D6
    ld [hl], $70                                  ; $5608: $36 $70
    ld hl, $D686                                  ; $560A: $21 $86 $D6
    ld [hl], $16                                  ; $560D: $36 $16
    ld hl, $D6A9                                  ; $560F: $21 $A9 $D6
    ld [hl], $FF                                  ; $5612: $36 $FF
    ld hl, $D680                                  ; $5614: $21 $80 $D6
    call Call_000_0DB5                            ; $5617: $CD $B5 $0D
    ld de, $5C15                                  ; $561A: $11 $15 $5C
    ld a, [$C311]                                 ; $561D: $FA $11 $C3
    cp $00                                        ; $5620: $FE $00
    jr z, jr_03C_5633                             ; $5622: $28 $0F

    cp $08                                        ; $5624: $FE $08
    jr z, jr_03C_5633                             ; $5626: $28 $0B

    cp $09                                        ; $5628: $FE $09
    jr z, jr_03C_5633                             ; $562A: $28 $07

    cp $0A                                        ; $562C: $FE $0A
    jr z, jr_03C_5633                             ; $562E: $28 $03

    ld de, $5BA5                                  ; $5630: $11 $A5 $5B

jr_03C_5633:
    ld hl, $D840                                  ; $5633: $21 $40 $D8
    call Call_000_0F8E                            ; $5636: $CD $8E $0F
    ld a, $01                                     ; $5639: $3E $01
    ld [$C2B5], a                                 ; $563B: $EA $B5 $C2
    ld a, $87                                     ; $563E: $3E $87
    ld [$C2B6], a                                 ; $5640: $EA $B6 $C2
    ld a, $54                                     ; $5643: $3E $54
    ld [$C2B9], a                                 ; $5645: $EA $B9 $C2
    ld a, $86                                     ; $5648: $3E $86
    ld [$C2BA], a                                 ; $564A: $EA $BA $C2
    ld a, $87                                     ; $564D: $3E $87
    rst RST_18                                    ; $564F: $DF
    ldh a, [rSTAT]                                ; $5650: $F0 $41
    or $40                                        ; $5652: $F6 $40
    ldh [rSTAT], a                                ; $5654: $E0 $41
    ld a, $17                                     ; $5656: $3E $17
    ld a, $8F                                     ; $5658: $3E $8F
    ldh [rLYC], a                                 ; $565A: $E0 $45
    ldh a, [rIE]                                  ; $565C: $F0 $FF
    or $03                                        ; $565E: $F6 $03
    ldh [rIE], a                                  ; $5660: $E0 $FF
    ei                                            ; $5662: $FB
    ld de, $5B84                                  ; $5663: $11 $84 $5B
    ld hl, $C329                                  ; $5666: $21 $29 $C3
    ld c, $21                                     ; $5669: $0E $21

jr_03C_566B:
    ld a, [de]                                    ; $566B: $1A
    inc de                                        ; $566C: $13
    ld [hl+], a                                   ; $566D: $22
    dec c                                         ; $566E: $0D
    jr nz, jr_03C_566B                            ; $566F: $20 $FA

    ld a, [$C33A]                                 ; $5671: $FA $3A $C3
    ldh [$FFE2], a                                ; $5674: $E0 $E2
    ld hl, $5CF0                                  ; $5676: $21 $F0 $5C
    ld a, [$C006]                                 ; $5679: $FA $06 $C0
    or a                                          ; $567C: $B7
    jr z, jr_03C_5682                             ; $567D: $28 $03

    ld hl, $5D08                                  ; $567F: $21 $08 $5D

jr_03C_5682:
    ld a, [$C311]                                 ; $5682: $FA $11 $C3
    add a                                         ; $5685: $87
    ld e, a                                       ; $5686: $5F
    ld d, $00                                     ; $5687: $16 $00
    add hl, de                                    ; $5689: $19
    ld a, [hl+]                                   ; $568A: $2A
    ld [$C32B], a                                 ; $568B: $EA $2B $C3
    ld a, [hl+]                                   ; $568E: $2A
    ld [$C32C], a                                 ; $568F: $EA $2C $C3
    ld c, $95                                     ; $5692: $0E $95
    ld a, [$C311]                                 ; $5694: $FA $11 $C3
    cp $00                                        ; $5697: $FE $00
    jr z, jr_03C_56A9                             ; $5699: $28 $0E

    cp $08                                        ; $569B: $FE $08
    jr z, jr_03C_56A9                             ; $569D: $28 $0A

    cp $09                                        ; $569F: $FE $09
    jr z, jr_03C_56A9                             ; $56A1: $28 $06

    cp $0A                                        ; $56A3: $FE $0A
    jr z, jr_03C_56A9                             ; $56A5: $28 $02

    ld c, $8A                                     ; $56A7: $0E $8A

jr_03C_56A9:
    ld a, c                                       ; $56A9: $79
    call Call_000_135D                            ; $56AA: $CD $5D $13
    call Call_000_0430                            ; $56AD: $CD $30 $04
    call Call_000_0430                            ; $56B0: $CD $30 $04
    ld a, $1B                                     ; $56B3: $3E $1B
    ldh [rBGP], a                                 ; $56B5: $E0 $47
    ldh [$FFEA], a                                ; $56B7: $E0 $EA
    ldh [$FFEB], a                                ; $56B9: $E0 $EB
    ldh [$FFEC], a                                ; $56BB: $E0 $EC
    ldh [rOBP1], a                                ; $56BD: $E0 $49
    ld a, $4F                                     ; $56BF: $3E $4F
    ldh [rOBP0], a                                ; $56C1: $E0 $48
    call Call_000_147A                            ; $56C3: $CD $7A $14

jr_03C_56C6:
    call Call_03C_5750                            ; $56C6: $CD $50 $57
    ld hl, $D680                                  ; $56C9: $21 $80 $D6
    ld a, [$C32E]                                 ; $56CC: $FA $2E $C3
    and $02                                       ; $56CF: $E6 $02
    jr nz, jr_03C_56E0                            ; $56D1: $20 $0D

    ld a, [$D680]                                 ; $56D3: $FA $80 $D6
    and $EF                                       ; $56D6: $E6 $EF
    ld [$D680], a                                 ; $56D8: $EA $80 $D6
    call Call_000_0E28                            ; $56DB: $CD $28 $0E
    jr jr_03C_56E3                                ; $56DE: $18 $03

jr_03C_56E0:
    call Call_000_0DD4                            ; $56E0: $CD $D4 $0D

jr_03C_56E3:
    ld a, [$C340]                                 ; $56E3: $FA $40 $C3
    or a                                          ; $56E6: $B7
    jr nz, jr_03C_56EF                            ; $56E7: $20 $06

    ld hl, $D840                                  ; $56E9: $21 $40 $D8
    call Call_000_0E28                            ; $56EC: $CD $28 $0E

jr_03C_56EF:
    ld b, $3A                                     ; $56EF: $06 $3A
    ld hl, $4000                                  ; $56F1: $21 $00 $40
    rst RST_08                                    ; $56F4: $CF
    ld hl, $C329                                  ; $56F5: $21 $29 $C3
    ld e, [hl]                                    ; $56F8: $5E
    inc hl                                        ; $56F9: $23
    ld d, [hl]                                    ; $56FA: $56
    inc de                                        ; $56FB: $13
    ld [hl], d                                    ; $56FC: $72
    dec hl                                        ; $56FD: $2B
    ld [hl], e                                    ; $56FE: $73
    call Call_000_0424                            ; $56FF: $CD $24 $04
    ld a, [$C32E]                                 ; $5702: $FA $2E $C3
    add a                                         ; $5705: $87
    jr c, jr_03C_5718                             ; $5706: $38 $10

    ldh a, [$FF99]                                ; $5708: $F0 $99
    ld e, a                                       ; $570A: $5F
    ldh a, [$FFAC]                                ; $570B: $F0 $AC
    or e                                          ; $570D: $B3
    ld e, a                                       ; $570E: $5F
    and $80                                       ; $570F: $E6 $80
    jr nz, jr_03C_5731                            ; $5711: $20 $1E

    ld a, e                                       ; $5713: $7B
    and $20                                       ; $5714: $E6 $20
    jr z, jr_03C_56C6                             ; $5716: $28 $AE

jr_03C_5718:
    ld hl, $C03A                                  ; $5718: $21 $3A $C0
    res 2, [hl]                                   ; $571B: $CB $96
    ld a, $00                                     ; $571D: $3E $00
    call Call_000_135D                            ; $571F: $CD $5D $13
    call Call_000_0424                            ; $5722: $CD $24 $04
    ld a, [$C31A]                                 ; $5725: $FA $1A $C3
    or a                                          ; $5728: $B7
    jr nz, jr_03C_574A                            ; $5729: $20 $1F

    ld b, $2C                                     ; $572B: $06 $2C
    ld hl, $6F70                                  ; $572D: $21 $70 $6F
    rst RST_00                                    ; $5730: $C7

jr_03C_5731:
    ld hl, $C03A                                  ; $5731: $21 $3A $C0
    res 2, [hl]                                   ; $5734: $CB $96
    ld a, $00                                     ; $5736: $3E $00
    call Call_000_135D                            ; $5738: $CD $5D $13
    call Call_000_0424                            ; $573B: $CD $24 $04
    ld a, [$C31A]                                 ; $573E: $FA $1A $C3
    or a                                          ; $5741: $B7
    jr nz, jr_03C_574A                            ; $5742: $20 $06

    ld b, $2B                                     ; $5744: $06 $2B
    ld hl, $4000                                  ; $5746: $21 $00 $40
    rst RST_00                                    ; $5749: $C7

jr_03C_574A:
    ld b, $3B                                     ; $574A: $06 $3B
    ld hl, $7260                                  ; $574C: $21 $60 $72
    rst RST_00                                    ; $574F: $C7

Call_03C_5750:
    ld a, [$C329]                                 ; $5750: $FA $29 $C3
    ld e, a                                       ; $5753: $5F
    and $03                                       ; $5754: $E6 $03
    jr nz, jr_03C_5782                            ; $5756: $20 $2A

    ld a, e                                       ; $5758: $7B
    and $0C                                       ; $5759: $E6 $0C
    add a                                         ; $575B: $87
    add $11                                       ; $575C: $C6 $11
    ld d, a                                       ; $575E: $57
    ld e, $00                                     ; $575F: $1E $00
    ld hl, $9D0A                                  ; $5761: $21 $0A $9D
    ld b, $08                                     ; $5764: $06 $08
    ld c, $01                                     ; $5766: $0E $01
    call Call_000_1111                            ; $5768: $CD $11 $11
    ld a, [$C329]                                 ; $576B: $FA $29 $C3
    and $0C                                       ; $576E: $E6 $0C
    add a                                         ; $5770: $87
    add a                                         ; $5771: $87
    ld e, a                                       ; $5772: $5F
    ld d, $00                                     ; $5773: $16 $00
    ld hl, $5CB0                                  ; $5775: $21 $B0 $5C
    add hl, de                                    ; $5778: $19
    ld de, $9310                                  ; $5779: $11 $10 $93
    ld b, $01                                     ; $577C: $06 $01
    jp Jump_000_11C2                              ; $577E: $C3 $C2 $11


    ret                                           ; $5781: $C9


jr_03C_5782:
    ld a, [$C32D]                                 ; $5782: $FA $2D $C3
    ret z                                         ; $5785: $C8

    ld hl, $579A                                  ; $5786: $21 $9A $57
    and $3F                                       ; $5789: $E6 $3F
    add a                                         ; $578B: $87
    add l                                         ; $578C: $85
    jr nc, jr_03C_5790                            ; $578D: $30 $01

    inc h                                         ; $578F: $24

jr_03C_5790:
    ld l, a                                       ; $5790: $6F
    ld a, [hl+]                                   ; $5791: $2A
    ld c, [hl]                                    ; $5792: $4E
    ld l, a                                       ; $5793: $6F
    ld h, c                                       ; $5794: $61
    xor a                                         ; $5795: $AF
    ld [$C32D], a                                 ; $5796: $EA $2D $C3
    jp hl                                         ; $5799: $E9


    ld a, [de]                                    ; $579A: $1A
    ld e, b                                       ; $579B: $58
    dec de                                        ; $579C: $1B
    ld e, b                                       ; $579D: $58
    ld a, [hl+]                                   ; $579E: $2A
    ld e, b                                       ; $579F: $58
    ld d, a                                       ; $57A0: $57
    ld e, b                                       ; $57A1: $58
    add h                                         ; $57A2: $84
    ld e, b                                       ; $57A3: $58
    or c                                          ; $57A4: $B1
    ld e, b                                       ; $57A5: $58
    cp l                                          ; $57A6: $BD
    ld e, b                                       ; $57A7: $58
    ret                                           ; $57A8: $C9


    ld e, b                                       ; $57A9: $58
    push de                                       ; $57AA: $D5
    ld e, b                                       ; $57AB: $58
    pop hl                                        ; $57AC: $E1
    ld e, b                                       ; $57AD: $58
    ld hl, sp+$58                                 ; $57AE: $F8 $58
    rrca                                          ; $57B0: $0F
    ld e, c                                       ; $57B1: $59
    ld h, $59                                     ; $57B2: $26 $59
    dec a                                         ; $57B4: $3D
    ld e, c                                       ; $57B5: $59
    ld d, h                                       ; $57B6: $54
    ld e, c                                       ; $57B7: $59
    ld l, e                                       ; $57B8: $6B
    ld e, c                                       ; $57B9: $59
    adc d                                         ; $57BA: $8A
    ld e, c                                       ; $57BB: $59
    and c                                         ; $57BC: $A1
    ld e, c                                       ; $57BD: $59
    ret nz                                        ; $57BE: $C0

    ld e, c                                       ; $57BF: $59
    rst RST_18                                    ; $57C0: $DF
    ld e, c                                       ; $57C1: $59
    cp $59                                        ; $57C2: $FE $59
    dec d                                         ; $57C4: $15
    ld e, d                                       ; $57C5: $5A
    inc l                                         ; $57C6: $2C
    ld e, d                                       ; $57C7: $5A
    ld b, e                                       ; $57C8: $43
    ld e, d                                       ; $57C9: $5A
    ld e, d                                       ; $57CA: $5A
    ld e, d                                       ; $57CB: $5A
    ld [hl], c                                    ; $57CC: $71
    ld e, d                                       ; $57CD: $5A
    adc b                                         ; $57CE: $88
    ld e, d                                       ; $57CF: $5A
    and a                                         ; $57D0: $A7
    ld e, d                                       ; $57D1: $5A
    or e                                          ; $57D2: $B3
    ld e, d                                       ; $57D3: $5A
    jp nc, $E95A                                  ; $57D4: $D2 $5A $E9

    ld e, d                                       ; $57D7: $5A
    ld [$275B], sp                                ; $57D8: $08 $5B $27
    ld e, e                                       ; $57DB: $5B
    ld b, [hl]                                    ; $57DC: $46
    ld e, e                                       ; $57DD: $5B
    ld h, l                                       ; $57DE: $65
    ld e, e                                       ; $57DF: $5B
    ld a, [de]                                    ; $57E0: $1A
    ld e, b                                       ; $57E1: $58
    ld a, [de]                                    ; $57E2: $1A
    ld e, b                                       ; $57E3: $58
    ld a, [de]                                    ; $57E4: $1A
    ld e, b                                       ; $57E5: $58
    ld a, [de]                                    ; $57E6: $1A
    ld e, b                                       ; $57E7: $58
    ld a, [de]                                    ; $57E8: $1A
    ld e, b                                       ; $57E9: $58
    ld a, [de]                                    ; $57EA: $1A
    ld e, b                                       ; $57EB: $58
    ld a, [de]                                    ; $57EC: $1A
    ld e, b                                       ; $57ED: $58
    ld a, [de]                                    ; $57EE: $1A
    ld e, b                                       ; $57EF: $58
    ld a, [de]                                    ; $57F0: $1A
    ld e, b                                       ; $57F1: $58
    ld a, [de]                                    ; $57F2: $1A
    ld e, b                                       ; $57F3: $58
    ld a, [de]                                    ; $57F4: $1A
    ld e, b                                       ; $57F5: $58
    ld a, [de]                                    ; $57F6: $1A
    ld e, b                                       ; $57F7: $58
    ld a, [de]                                    ; $57F8: $1A
    ld e, b                                       ; $57F9: $58
    ld a, [de]                                    ; $57FA: $1A
    ld e, b                                       ; $57FB: $58
    ld a, [de]                                    ; $57FC: $1A
    ld e, b                                       ; $57FD: $58
    ld a, [de]                                    ; $57FE: $1A
    ld e, b                                       ; $57FF: $58
    ld a, [de]                                    ; $5800: $1A
    ld e, b                                       ; $5801: $58
    ld a, [de]                                    ; $5802: $1A
    ld e, b                                       ; $5803: $58
    ld a, [de]                                    ; $5804: $1A
    ld e, b                                       ; $5805: $58
    ld a, [de]                                    ; $5806: $1A
    ld e, b                                       ; $5807: $58
    ld a, [de]                                    ; $5808: $1A
    ld e, b                                       ; $5809: $58
    ld a, [de]                                    ; $580A: $1A
    ld e, b                                       ; $580B: $58
    ld a, [de]                                    ; $580C: $1A
    ld e, b                                       ; $580D: $58
    ld a, [de]                                    ; $580E: $1A
    ld e, b                                       ; $580F: $58
    ld a, [de]                                    ; $5810: $1A
    ld e, b                                       ; $5811: $58
    ld a, [de]                                    ; $5812: $1A
    ld e, b                                       ; $5813: $58
    ld a, [de]                                    ; $5814: $1A
    ld e, b                                       ; $5815: $58
    ld a, [de]                                    ; $5816: $1A
    ld e, b                                       ; $5817: $58
    ld a, [de]                                    ; $5818: $1A
    ld e, b                                       ; $5819: $58
    ret                                           ; $581A: $C9


    ld e, $01                                     ; $581B: $1E $01
    ld d, $5C                                     ; $581D: $16 $5C
    ld hl, $9C21                                  ; $581F: $21 $21 $9C
    ld b, $03                                     ; $5822: $06 $03
    ld c, $03                                     ; $5824: $0E $03
    call Call_000_1111                            ; $5826: $CD $11 $11
    ret                                           ; $5829: $C9


    ld e, $01                                     ; $582A: $1E $01
    ld d, $65                                     ; $582C: $16 $65
    ld hl, $9CE1                                  ; $582E: $21 $E1 $9C
    ld b, $03                                     ; $5831: $06 $03
    ld c, $03                                     ; $5833: $0E $03
    call Call_000_1111                            ; $5835: $CD $11 $11
    ld a, $09                                     ; $5838: $3E $09
    ld de, $4022                                  ; $583A: $11 $22 $40
    ld hl, $D691                                  ; $583D: $21 $91 $D6
    ld [hl+], a                                   ; $5840: $22
    ld [hl], e                                    ; $5841: $73
    inc hl                                        ; $5842: $23
    ld [hl], d                                    ; $5843: $72
    xor a                                         ; $5844: $AF
    ld [$D694], a                                 ; $5845: $EA $94 $D6
    ld a, $21                                     ; $5848: $3E $21
    ld [$D682], a                                 ; $584A: $EA $82 $D6
    ld [$D683], a                                 ; $584D: $EA $83 $D6
    ld hl, $D680                                  ; $5850: $21 $80 $D6
    call Call_000_0DB5                            ; $5853: $CD $B5 $0D
    ret                                           ; $5856: $C9


    ld e, $02                                     ; $5857: $1E $02
    ld d, $6E                                     ; $5859: $16 $6E
    ld hl, $9C30                                  ; $585B: $21 $30 $9C
    ld b, $03                                     ; $585E: $06 $03
    ld c, $03                                     ; $5860: $0E $03
    call Call_000_1111                            ; $5862: $CD $11 $11
    ld a, $07                                     ; $5865: $3E $07
    ld de, $5761                                  ; $5867: $11 $61 $57
    ld hl, $D691                                  ; $586A: $21 $91 $D6
    ld [hl+], a                                   ; $586D: $22
    ld [hl], e                                    ; $586E: $73
    inc hl                                        ; $586F: $23
    ld [hl], d                                    ; $5870: $72
    xor a                                         ; $5871: $AF
    ld [$D694], a                                 ; $5872: $EA $94 $D6
    ld a, $22                                     ; $5875: $3E $22
    ld [$D682], a                                 ; $5877: $EA $82 $D6
    ld [$D683], a                                 ; $587A: $EA $83 $D6
    ld hl, $D680                                  ; $587D: $21 $80 $D6
    call Call_000_0DB5                            ; $5880: $CD $B5 $0D
    ret                                           ; $5883: $C9


    ld e, $03                                     ; $5884: $1E $03
    ld d, $77                                     ; $5886: $16 $77
    ld hl, $9CF0                                  ; $5888: $21 $F0 $9C
    ld b, $03                                     ; $588B: $06 $03
    ld c, $03                                     ; $588D: $0E $03
    call Call_000_1111                            ; $588F: $CD $11 $11
    ld a, $08                                     ; $5892: $3E $08
    ld de, $5C8A                                  ; $5894: $11 $8A $5C
    ld hl, $D691                                  ; $5897: $21 $91 $D6
    ld [hl+], a                                   ; $589A: $22
    ld [hl], e                                    ; $589B: $73
    inc hl                                        ; $589C: $23
    ld [hl], d                                    ; $589D: $72
    xor a                                         ; $589E: $AF
    ld [$D694], a                                 ; $589F: $EA $94 $D6
    ld a, $23                                     ; $58A2: $3E $23
    ld [$D682], a                                 ; $58A4: $EA $82 $D6
    ld [$D683], a                                 ; $58A7: $EA $83 $D6
    ld hl, $D680                                  ; $58AA: $21 $80 $D6
    call Call_000_0DB5                            ; $58AD: $CD $B5 $0D
    ret                                           ; $58B0: $C9


    ld hl, $5D20                                  ; $58B1: $21 $20 $5D
    ld de, $95C0                                  ; $58B4: $11 $C0 $95
    ld b, $09                                     ; $58B7: $06 $09
    jp Jump_000_11C2                              ; $58B9: $C3 $C2 $11


    ret                                           ; $58BC: $C9


    ld hl, $5DB0                                  ; $58BD: $21 $B0 $5D
    ld de, $9650                                  ; $58C0: $11 $50 $96
    ld b, $09                                     ; $58C3: $06 $09
    jp Jump_000_11C2                              ; $58C5: $C3 $C2 $11


    ret                                           ; $58C8: $C9


    ld hl, $5E40                                  ; $58C9: $21 $40 $5E
    ld de, $96E0                                  ; $58CC: $11 $E0 $96
    ld b, $09                                     ; $58CF: $06 $09
    jp Jump_000_11C2                              ; $58D1: $C3 $C2 $11


    ret                                           ; $58D4: $C9


    ld hl, $5ED0                                  ; $58D5: $21 $D0 $5E
    ld de, $9770                                  ; $58D8: $11 $70 $97
    ld b, $09                                     ; $58DB: $06 $09
    jp Jump_000_11C2                              ; $58DD: $C3 $C2 $11


    ret                                           ; $58E0: $C9


    ld a, $07                                     ; $58E1: $3E $07
    ld de, $40D0                                  ; $58E3: $11 $D0 $40
    ld hl, $D691                                  ; $58E6: $21 $91 $D6
    ld [hl+], a                                   ; $58E9: $22
    ld [hl], e                                    ; $58EA: $73
    inc hl                                        ; $58EB: $23
    ld [hl], d                                    ; $58EC: $72
    xor a                                         ; $58ED: $AF
    ld [$D694], a                                 ; $58EE: $EA $94 $D6
    ld hl, $D680                                  ; $58F1: $21 $80 $D6
    call Call_000_0DB5                            ; $58F4: $CD $B5 $0D
    ret                                           ; $58F7: $C9


    ld a, $07                                     ; $58F8: $3E $07
    ld de, $40E2                                  ; $58FA: $11 $E2 $40
    ld hl, $D691                                  ; $58FD: $21 $91 $D6
    ld [hl+], a                                   ; $5900: $22
    ld [hl], e                                    ; $5901: $73
    inc hl                                        ; $5902: $23
    ld [hl], d                                    ; $5903: $72
    xor a                                         ; $5904: $AF
    ld [$D694], a                                 ; $5905: $EA $94 $D6
    ld hl, $D680                                  ; $5908: $21 $80 $D6
    call Call_000_0DB5                            ; $590B: $CD $B5 $0D
    ret                                           ; $590E: $C9


    ld a, $07                                     ; $590F: $3E $07
    ld de, $40F4                                  ; $5911: $11 $F4 $40
    ld hl, $D691                                  ; $5914: $21 $91 $D6
    ld [hl+], a                                   ; $5917: $22
    ld [hl], e                                    ; $5918: $73
    inc hl                                        ; $5919: $23
    ld [hl], d                                    ; $591A: $72
    xor a                                         ; $591B: $AF
    ld [$D694], a                                 ; $591C: $EA $94 $D6
    ld hl, $D680                                  ; $591F: $21 $80 $D6
    call Call_000_0DB5                            ; $5922: $CD $B5 $0D
    ret                                           ; $5925: $C9


    ld a, $07                                     ; $5926: $3E $07
    ld de, $4176                                  ; $5928: $11 $76 $41
    ld hl, $D691                                  ; $592B: $21 $91 $D6
    ld [hl+], a                                   ; $592E: $22
    ld [hl], e                                    ; $592F: $73
    inc hl                                        ; $5930: $23
    ld [hl], d                                    ; $5931: $72
    xor a                                         ; $5932: $AF
    ld [$D694], a                                 ; $5933: $EA $94 $D6
    ld hl, $D680                                  ; $5936: $21 $80 $D6
    call Call_000_0DB5                            ; $5939: $CD $B5 $0D
    ret                                           ; $593C: $C9


    ld a, $07                                     ; $593D: $3E $07
    ld de, $4184                                  ; $593F: $11 $84 $41
    ld hl, $D691                                  ; $5942: $21 $91 $D6
    ld [hl+], a                                   ; $5945: $22
    ld [hl], e                                    ; $5946: $73
    inc hl                                        ; $5947: $23
    ld [hl], d                                    ; $5948: $72
    xor a                                         ; $5949: $AF
    ld [$D694], a                                 ; $594A: $EA $94 $D6
    ld hl, $D680                                  ; $594D: $21 $80 $D6
    call Call_000_0DB5                            ; $5950: $CD $B5 $0D
    ret                                           ; $5953: $C9


    ld a, $07                                     ; $5954: $3E $07
    ld de, $4192                                  ; $5956: $11 $92 $41
    ld hl, $D691                                  ; $5959: $21 $91 $D6
    ld [hl+], a                                   ; $595C: $22
    ld [hl], e                                    ; $595D: $73
    inc hl                                        ; $595E: $23
    ld [hl], d                                    ; $595F: $72
    xor a                                         ; $5960: $AF
    ld [$D694], a                                 ; $5961: $EA $94 $D6
    ld hl, $D680                                  ; $5964: $21 $80 $D6
    call Call_000_0DB5                            ; $5967: $CD $B5 $0D
    ret                                           ; $596A: $C9


    ld a, $07                                     ; $596B: $3E $07
    ld de, $4070                                  ; $596D: $11 $70 $40
    ld hl, $D691                                  ; $5970: $21 $91 $D6
    ld [hl+], a                                   ; $5973: $22
    ld [hl], e                                    ; $5974: $73
    inc hl                                        ; $5975: $23
    ld [hl], d                                    ; $5976: $72
    xor a                                         ; $5977: $AF
    ld [$D694], a                                 ; $5978: $EA $94 $D6
    ld a, $01                                     ; $597B: $3E $01
    ld [$D69C], a                                 ; $597D: $EA $9C $D6
    ld [$D69D], a                                 ; $5980: $EA $9D $D6
    ld hl, $D680                                  ; $5983: $21 $80 $D6
    call Call_000_0DB5                            ; $5986: $CD $B5 $0D
    ret                                           ; $5989: $C9


    ld a, $07                                     ; $598A: $3E $07
    ld de, $41B2                                  ; $598C: $11 $B2 $41
    ld hl, $D691                                  ; $598F: $21 $91 $D6
    ld [hl+], a                                   ; $5992: $22
    ld [hl], e                                    ; $5993: $73
    inc hl                                        ; $5994: $23
    ld [hl], d                                    ; $5995: $72
    xor a                                         ; $5996: $AF
    ld [$D694], a                                 ; $5997: $EA $94 $D6
    ld hl, $D680                                  ; $599A: $21 $80 $D6
    call Call_000_0DB5                            ; $599D: $CD $B5 $0D
    ret                                           ; $59A0: $C9


    ld a, $07                                     ; $59A1: $3E $07
    ld de, $402A                                  ; $59A3: $11 $2A $40
    ld hl, $D691                                  ; $59A6: $21 $91 $D6
    ld [hl+], a                                   ; $59A9: $22
    ld [hl], e                                    ; $59AA: $73
    inc hl                                        ; $59AB: $23
    ld [hl], d                                    ; $59AC: $72
    xor a                                         ; $59AD: $AF
    ld [$D694], a                                 ; $59AE: $EA $94 $D6
    ld a, $01                                     ; $59B1: $3E $01
    ld [$D69C], a                                 ; $59B3: $EA $9C $D6
    ld [$D69D], a                                 ; $59B6: $EA $9D $D6
    ld hl, $D680                                  ; $59B9: $21 $80 $D6
    call Call_000_0DB5                            ; $59BC: $CD $B5 $0D
    ret                                           ; $59BF: $C9


    ld a, $07                                     ; $59C0: $3E $07
    ld de, $40BE                                  ; $59C2: $11 $BE $40
    ld hl, $D691                                  ; $59C5: $21 $91 $D6
    ld [hl+], a                                   ; $59C8: $22
    ld [hl], e                                    ; $59C9: $73
    inc hl                                        ; $59CA: $23
    ld [hl], d                                    ; $59CB: $72
    xor a                                         ; $59CC: $AF
    ld [$D694], a                                 ; $59CD: $EA $94 $D6
    ld a, $06                                     ; $59D0: $3E $06
    ld [$D69C], a                                 ; $59D2: $EA $9C $D6
    ld [$D69D], a                                 ; $59D5: $EA $9D $D6
    ld hl, $D680                                  ; $59D8: $21 $80 $D6
    call Call_000_0DB5                            ; $59DB: $CD $B5 $0D
    ret                                           ; $59DE: $C9


    ld a, $07                                     ; $59DF: $3E $07
    ld de, $426C                                  ; $59E1: $11 $6C $42
    ld hl, $D691                                  ; $59E4: $21 $91 $D6
    ld [hl+], a                                   ; $59E7: $22
    ld [hl], e                                    ; $59E8: $73
    inc hl                                        ; $59E9: $23
    ld [hl], d                                    ; $59EA: $72
    xor a                                         ; $59EB: $AF
    ld [$D694], a                                 ; $59EC: $EA $94 $D6
    ld a, [$D680]                                 ; $59EF: $FA $80 $D6
    and $EF                                       ; $59F2: $E6 $EF
    ld [$D680], a                                 ; $59F4: $EA $80 $D6
    ld hl, $D680                                  ; $59F7: $21 $80 $D6
    call Call_000_0DB5                            ; $59FA: $CD $B5 $0D
    ret                                           ; $59FD: $C9


    ld a, $07                                     ; $59FE: $3E $07
    ld de, $4DA7                                  ; $5A00: $11 $A7 $4D
    ld hl, $D691                                  ; $5A03: $21 $91 $D6
    ld [hl+], a                                   ; $5A06: $22
    ld [hl], e                                    ; $5A07: $73
    inc hl                                        ; $5A08: $23
    ld [hl], d                                    ; $5A09: $72
    xor a                                         ; $5A0A: $AF
    ld [$D694], a                                 ; $5A0B: $EA $94 $D6
    ld hl, $D680                                  ; $5A0E: $21 $80 $D6
    call Call_000_0DB5                            ; $5A11: $CD $B5 $0D
    ret                                           ; $5A14: $C9


    ld a, $07                                     ; $5A15: $3E $07
    ld de, $4160                                  ; $5A17: $11 $60 $41
    ld hl, $D691                                  ; $5A1A: $21 $91 $D6
    ld [hl+], a                                   ; $5A1D: $22
    ld [hl], e                                    ; $5A1E: $73
    inc hl                                        ; $5A1F: $23
    ld [hl], d                                    ; $5A20: $72
    xor a                                         ; $5A21: $AF
    ld [$D694], a                                 ; $5A22: $EA $94 $D6
    ld hl, $D680                                  ; $5A25: $21 $80 $D6
    call Call_000_0DB5                            ; $5A28: $CD $B5 $0D
    ret                                           ; $5A2B: $C9


    ld a, $07                                     ; $5A2C: $3E $07
    ld de, $4166                                  ; $5A2E: $11 $66 $41
    ld hl, $D691                                  ; $5A31: $21 $91 $D6
    ld [hl+], a                                   ; $5A34: $22
    ld [hl], e                                    ; $5A35: $73
    inc hl                                        ; $5A36: $23
    ld [hl], d                                    ; $5A37: $72
    xor a                                         ; $5A38: $AF
    ld [$D694], a                                 ; $5A39: $EA $94 $D6
    ld hl, $D680                                  ; $5A3C: $21 $80 $D6
    call Call_000_0DB5                            ; $5A3F: $CD $B5 $0D
    ret                                           ; $5A42: $C9


    ld a, $07                                     ; $5A43: $3E $07
    ld de, $42EA                                  ; $5A45: $11 $EA $42
    ld hl, $D691                                  ; $5A48: $21 $91 $D6
    ld [hl+], a                                   ; $5A4B: $22
    ld [hl], e                                    ; $5A4C: $73
    inc hl                                        ; $5A4D: $23
    ld [hl], d                                    ; $5A4E: $72
    xor a                                         ; $5A4F: $AF
    ld [$D694], a                                 ; $5A50: $EA $94 $D6
    ld hl, $D680                                  ; $5A53: $21 $80 $D6
    call Call_000_0DB5                            ; $5A56: $CD $B5 $0D
    ret                                           ; $5A59: $C9


    ld a, $07                                     ; $5A5A: $3E $07
    ld de, $42F0                                  ; $5A5C: $11 $F0 $42
    ld hl, $D691                                  ; $5A5F: $21 $91 $D6
    ld [hl+], a                                   ; $5A62: $22
    ld [hl], e                                    ; $5A63: $73
    inc hl                                        ; $5A64: $23
    ld [hl], d                                    ; $5A65: $72
    xor a                                         ; $5A66: $AF
    ld [$D694], a                                 ; $5A67: $EA $94 $D6
    ld hl, $D680                                  ; $5A6A: $21 $80 $D6
    call Call_000_0DB5                            ; $5A6D: $CD $B5 $0D
    ret                                           ; $5A70: $C9


    ld a, $07                                     ; $5A71: $3E $07
    ld de, $423E                                  ; $5A73: $11 $3E $42
    ld hl, $D691                                  ; $5A76: $21 $91 $D6
    ld [hl+], a                                   ; $5A79: $22
    ld [hl], e                                    ; $5A7A: $73
    inc hl                                        ; $5A7B: $23
    ld [hl], d                                    ; $5A7C: $72
    xor a                                         ; $5A7D: $AF
    ld [$D694], a                                 ; $5A7E: $EA $94 $D6
    ld hl, $D680                                  ; $5A81: $21 $80 $D6
    call Call_000_0DB5                            ; $5A84: $CD $B5 $0D
    ret                                           ; $5A87: $C9


    ld a, $07                                     ; $5A88: $3E $07
    ld de, $4392                                  ; $5A8A: $11 $92 $43
    ld hl, $D691                                  ; $5A8D: $21 $91 $D6
    ld [hl+], a                                   ; $5A90: $22
    ld [hl], e                                    ; $5A91: $73
    inc hl                                        ; $5A92: $23
    ld [hl], d                                    ; $5A93: $72
    xor a                                         ; $5A94: $AF
    ld [$D694], a                                 ; $5A95: $EA $94 $D6
    ld a, $04                                     ; $5A98: $3E $04
    ld [$D69C], a                                 ; $5A9A: $EA $9C $D6
    ld [$D69D], a                                 ; $5A9D: $EA $9D $D6
    ld hl, $D680                                  ; $5AA0: $21 $80 $D6
    call Call_000_0DB5                            ; $5AA3: $CD $B5 $0D
    ret                                           ; $5AA6: $C9


    ld a, [$D682]                                 ; $5AA7: $FA $82 $D6
    xor $20                                       ; $5AAA: $EE $20
    ld [$D682], a                                 ; $5AAC: $EA $82 $D6
    ld [$D683], a                                 ; $5AAF: $EA $83 $D6
    ret                                           ; $5AB2: $C9


    ld a, $07                                     ; $5AB3: $3E $07
    ld de, $4234                                  ; $5AB5: $11 $34 $42
    ld hl, $D691                                  ; $5AB8: $21 $91 $D6
    ld [hl+], a                                   ; $5ABB: $22
    ld [hl], e                                    ; $5ABC: $73
    inc hl                                        ; $5ABD: $23
    ld [hl], d                                    ; $5ABE: $72
    xor a                                         ; $5ABF: $AF
    ld [$D694], a                                 ; $5AC0: $EA $94 $D6
    ld a, $03                                     ; $5AC3: $3E $03
    ld [$D69C], a                                 ; $5AC5: $EA $9C $D6
    ld [$D69D], a                                 ; $5AC8: $EA $9D $D6
    ld hl, $D680                                  ; $5ACB: $21 $80 $D6
    call Call_000_0DB5                            ; $5ACE: $CD $B5 $0D
    ret                                           ; $5AD1: $C9


    ld a, $07                                     ; $5AD2: $3E $07
    ld de, $4288                                  ; $5AD4: $11 $88 $42
    ld hl, $D691                                  ; $5AD7: $21 $91 $D6
    ld [hl+], a                                   ; $5ADA: $22
    ld [hl], e                                    ; $5ADB: $73
    inc hl                                        ; $5ADC: $23
    ld [hl], d                                    ; $5ADD: $72
    xor a                                         ; $5ADE: $AF
    ld [$D694], a                                 ; $5ADF: $EA $94 $D6
    ld hl, $D680                                  ; $5AE2: $21 $80 $D6
    call Call_000_0DB5                            ; $5AE5: $CD $B5 $0D
    ret                                           ; $5AE8: $C9


    ld a, $07                                     ; $5AE9: $3E $07
    ld de, $4392                                  ; $5AEB: $11 $92 $43
    ld hl, $D691                                  ; $5AEE: $21 $91 $D6
    ld [hl+], a                                   ; $5AF1: $22
    ld [hl], e                                    ; $5AF2: $73
    inc hl                                        ; $5AF3: $23
    ld [hl], d                                    ; $5AF4: $72
    xor a                                         ; $5AF5: $AF
    ld [$D694], a                                 ; $5AF6: $EA $94 $D6
    ld a, $01                                     ; $5AF9: $3E $01
    ld [$D69C], a                                 ; $5AFB: $EA $9C $D6
    ld [$D69D], a                                 ; $5AFE: $EA $9D $D6
    ld hl, $D680                                  ; $5B01: $21 $80 $D6
    call Call_000_0DB5                            ; $5B04: $CD $B5 $0D
    ret                                           ; $5B07: $C9


    ld a, $07                                     ; $5B08: $3E $07
    ld de, $43FA                                  ; $5B0A: $11 $FA $43
    ld hl, $D691                                  ; $5B0D: $21 $91 $D6
    ld [hl+], a                                   ; $5B10: $22
    ld [hl], e                                    ; $5B11: $73
    inc hl                                        ; $5B12: $23
    ld [hl], d                                    ; $5B13: $72
    xor a                                         ; $5B14: $AF
    ld [$D694], a                                 ; $5B15: $EA $94 $D6
    ld a, $01                                     ; $5B18: $3E $01
    ld [$D69C], a                                 ; $5B1A: $EA $9C $D6
    ld [$D69D], a                                 ; $5B1D: $EA $9D $D6
    ld hl, $D680                                  ; $5B20: $21 $80 $D6
    call Call_000_0DB5                            ; $5B23: $CD $B5 $0D
    ret                                           ; $5B26: $C9


    ld a, $07                                     ; $5B27: $3E $07
    ld de, $437C                                  ; $5B29: $11 $7C $43
    ld hl, $D691                                  ; $5B2C: $21 $91 $D6
    ld [hl+], a                                   ; $5B2F: $22
    ld [hl], e                                    ; $5B30: $73
    inc hl                                        ; $5B31: $23
    ld [hl], d                                    ; $5B32: $72
    xor a                                         ; $5B33: $AF
    ld [$D694], a                                 ; $5B34: $EA $94 $D6
    ld a, $04                                     ; $5B37: $3E $04
    ld [$D69C], a                                 ; $5B39: $EA $9C $D6
    ld [$D69D], a                                 ; $5B3C: $EA $9D $D6
    ld hl, $D680                                  ; $5B3F: $21 $80 $D6
    call Call_000_0DB5                            ; $5B42: $CD $B5 $0D
    ret                                           ; $5B45: $C9


    ld a, $07                                     ; $5B46: $3E $07
    ld de, $437C                                  ; $5B48: $11 $7C $43
    ld hl, $D691                                  ; $5B4B: $21 $91 $D6
    ld [hl+], a                                   ; $5B4E: $22
    ld [hl], e                                    ; $5B4F: $73
    inc hl                                        ; $5B50: $23
    ld [hl], d                                    ; $5B51: $72
    xor a                                         ; $5B52: $AF
    ld [$D694], a                                 ; $5B53: $EA $94 $D6
    ld a, $04                                     ; $5B56: $3E $04
    ld [$D69C], a                                 ; $5B58: $EA $9C $D6
    ld [$D69D], a                                 ; $5B5B: $EA $9D $D6
    ld hl, $D680                                  ; $5B5E: $21 $80 $D6
    call Call_000_0DB5                            ; $5B61: $CD $B5 $0D
    ret                                           ; $5B64: $C9


    ld a, $07                                     ; $5B65: $3E $07
    ld de, $42E2                                  ; $5B67: $11 $E2 $42
    ld hl, $D691                                  ; $5B6A: $21 $91 $D6
    ld [hl+], a                                   ; $5B6D: $22
    ld [hl], e                                    ; $5B6E: $73
    inc hl                                        ; $5B6F: $23
    ld [hl], d                                    ; $5B70: $72
    xor a                                         ; $5B71: $AF
    ld [$D694], a                                 ; $5B72: $EA $94 $D6
    ld a, $04                                     ; $5B75: $3E $04
    ld [$D69C], a                                 ; $5B77: $EA $9C $D6
    ld [$D69D], a                                 ; $5B7A: $EA $9D $D6
    ld hl, $D680                                  ; $5B7D: $21 $80 $D6
    call Call_000_0DB5                            ; $5B80: $CD $B5 $0D
    ret                                           ; $5B83: $C9


    nop                                           ; $5B84: $00
    nop                                           ; $5B85: $00
    ld e, e                                       ; $5B86: $5B
    ld c, b                                       ; $5B87: $48
    nop                                           ; $5B88: $00
    nop                                           ; $5B89: $00
    ld e, c                                       ; $5B8A: $59
    jp $C379                                      ; $5B8B: $C3 $79 $C3


    ld a, c                                       ; $5B8E: $79
    push bc                                       ; $5B8F: $C5
    ld b, h                                       ; $5B90: $44
    ld bc, $8800                                  ; $5B91: $01 $00 $88
    nop                                           ; $5B94: $00
    ld hl, sp+$00                                 ; $5B95: $F8 $00
    nop                                           ; $5B97: $00
    nop                                           ; $5B98: $00
    ld a, c                                       ; $5B99: $79
    push bc                                       ; $5B9A: $C5
    nop                                           ; $5B9B: $00
    ld b, h                                       ; $5B9C: $44
    ld bc, $0080                                  ; $5B9D: $01 $80 $00
    nop                                           ; $5BA0: $00
    nop                                           ; $5BA1: $00
    nop                                           ; $5BA2: $00
    nop                                           ; $5BA3: $00
    nop                                           ; $5BA4: $00
    add b                                         ; $5BA5: $80
    nop                                           ; $5BA6: $00
    inc d                                         ; $5BA7: $14
    inc d                                         ; $5BA8: $14
    ld b, $00                                     ; $5BA9: $06 $00
    ld [hl], b                                    ; $5BAB: $70
    nop                                           ; $5BAC: $00
    nop                                           ; $5BAD: $00
    nop                                           ; $5BAE: $00
    nop                                           ; $5BAF: $00
    nop                                           ; $5BB0: $00
    nop                                           ; $5BB1: $00
    nop                                           ; $5BB2: $00
    ld b, b                                       ; $5BB3: $40
    nop                                           ; $5BB4: $00
    add b                                         ; $5BB5: $80
    inc a                                         ; $5BB6: $3C
    push bc                                       ; $5BB7: $C5
    ld e, e                                       ; $5BB8: $5B
    nop                                           ; $5BB9: $00
    nop                                           ; $5BBA: $00
    push bc                                       ; $5BBB: $C5
    ld e, e                                       ; $5BBC: $5B
    nop                                           ; $5BBD: $00
    nop                                           ; $5BBE: $00
    nop                                           ; $5BBF: $00
    nop                                           ; $5BC0: $00
    ld [$C008], sp                                ; $5BC1: $08 $08 $C0
    ret c                                         ; $5BC4: $D8

    rst RST_08                                    ; $5BC5: $CF
    ld e, e                                       ; $5BC6: $5B
    rst RST_38                                    ; $5BC7: $FF
    rst RST_38                                    ; $5BC8: $FF
    ldh a, [c]                                    ; $5BC9: $F2
    ld e, e                                       ; $5BCA: $5B
    rst RST_38                                    ; $5BCB: $FF
    rst RST_38                                    ; $5BCC: $FF
    rst RST_38                                    ; $5BCD: $FF
    rst RST_38                                    ; $5BCE: $FF
    sub b                                         ; $5BCF: $90
    nop                                           ; $5BD0: $00
    nop                                           ; $5BD1: $00
    rst RST_38                                    ; $5BD2: $FF
    rst RST_38                                    ; $5BD3: $FF
    rst RST_38                                    ; $5BD4: $FF
    reti                                          ; $5BD5: $D9


    ld e, e                                       ; $5BD6: $5B
    nop                                           ; $5BD7: $00
    nop                                           ; $5BD8: $00
    ld [$0000], sp                                ; $5BD9: $08 $00 $00
    nop                                           ; $5BDC: $00
    nop                                           ; $5BDD: $00
    ld [$0002], sp                                ; $5BDE: $08 $02 $00
    db $10                                        ; $5BE1: $10
    inc b                                         ; $5BE2: $04
    nop                                           ; $5BE3: $00
    jr jr_03C_5BEC                                ; $5BE4: $18 $06

    stop                                          ; $5BE6: $10 $00
    ld [$0810], sp                                ; $5BE8: $08 $10 $08
    ld a, [bc]                                    ; $5BEB: $0A

jr_03C_5BEC:
    db $10                                        ; $5BEC: $10
    db $10                                        ; $5BED: $10
    inc c                                         ; $5BEE: $0C
    db $10                                        ; $5BEF: $10
    jr @+$10                                      ; $5BF0: $18 $0E

    sub b                                         ; $5BF2: $90
    nop                                           ; $5BF3: $00
    nop                                           ; $5BF4: $00
    rst RST_38                                    ; $5BF5: $FF
    rst RST_38                                    ; $5BF6: $FF
    rst RST_38                                    ; $5BF7: $FF
    db $FC                                        ; $5BF8: $FC
    ld e, e                                       ; $5BF9: $5B
    nop                                           ; $5BFA: $00
    nop                                           ; $5BFB: $00
    ld [$0000], sp                                ; $5BFC: $08 $00 $00
    stop                                          ; $5BFF: $10 $00
    ld [$0012], sp                                ; $5C01: $08 $12 $00
    db $10                                        ; $5C04: $10
    inc d                                         ; $5C05: $14
    nop                                           ; $5C06: $00
    jr jr_03C_5C1F                                ; $5C07: $18 $16

    stop                                          ; $5C09: $10 $00
    jr jr_03C_5C1D                                ; $5C0B: $18 $10

    ld [$101A], sp                                ; $5C0D: $08 $1A $10
    db $10                                        ; $5C10: $10
    inc e                                         ; $5C11: $1C
    db $10                                        ; $5C12: $10
    jr jr_03C_5C33                                ; $5C13: $18 $1E

    add b                                         ; $5C15: $80
    nop                                           ; $5C16: $00
    dec d                                         ; $5C17: $15
    dec d                                         ; $5C18: $15
    ld b, $00                                     ; $5C19: $06 $00
    ld [hl], b                                    ; $5C1B: $70
    nop                                           ; $5C1C: $00

jr_03C_5C1D:
    nop                                           ; $5C1D: $00
    nop                                           ; $5C1E: $00

jr_03C_5C1F:
    nop                                           ; $5C1F: $00
    nop                                           ; $5C20: $00
    nop                                           ; $5C21: $00
    nop                                           ; $5C22: $00
    ld h, b                                       ; $5C23: $60
    nop                                           ; $5C24: $00
    add b                                         ; $5C25: $80
    inc a                                         ; $5C26: $3C
    dec [hl]                                      ; $5C27: $35
    ld e, h                                       ; $5C28: $5C
    nop                                           ; $5C29: $00
    nop                                           ; $5C2A: $00
    dec [hl]                                      ; $5C2B: $35
    ld e, h                                       ; $5C2C: $5C
    nop                                           ; $5C2D: $00
    nop                                           ; $5C2E: $00
    nop                                           ; $5C2F: $00
    nop                                           ; $5C30: $00
    inc b                                         ; $5C31: $04
    inc b                                         ; $5C32: $04

jr_03C_5C33:
    ret nz                                        ; $5C33: $C0

    ret c                                         ; $5C34: $D8

    ld b, a                                       ; $5C35: $47
    ld e, h                                       ; $5C36: $5C
    rst RST_38                                    ; $5C37: $FF
    rst RST_38                                    ; $5C38: $FF
    ld l, d                                       ; $5C39: $6A
    ld e, h                                       ; $5C3A: $5C
    rst RST_38                                    ; $5C3B: $FF
    rst RST_38                                    ; $5C3C: $FF
    adc l                                         ; $5C3D: $8D
    ld e, h                                       ; $5C3E: $5C
    rst RST_38                                    ; $5C3F: $FF
    rst RST_38                                    ; $5C40: $FF
    ld l, d                                       ; $5C41: $6A
    ld e, h                                       ; $5C42: $5C
    rst RST_38                                    ; $5C43: $FF
    rst RST_38                                    ; $5C44: $FF
    rst RST_38                                    ; $5C45: $FF
    rst RST_38                                    ; $5C46: $FF
    sub b                                         ; $5C47: $90
    nop                                           ; $5C48: $00
    nop                                           ; $5C49: $00
    rst RST_38                                    ; $5C4A: $FF
    rst RST_38                                    ; $5C4B: $FF
    rst RST_38                                    ; $5C4C: $FF
    ld d, c                                       ; $5C4D: $51
    ld e, h                                       ; $5C4E: $5C
    nop                                           ; $5C4F: $00
    nop                                           ; $5C50: $00
    ld [$0000], sp                                ; $5C51: $08 $00 $00
    nop                                           ; $5C54: $00
    nop                                           ; $5C55: $00
    ld [$0002], sp                                ; $5C56: $08 $02 $00
    db $10                                        ; $5C59: $10
    inc b                                         ; $5C5A: $04
    nop                                           ; $5C5B: $00
    jr jr_03C_5C64                                ; $5C5C: $18 $06

    stop                                          ; $5C5E: $10 $00
    ld [$0810], sp                                ; $5C60: $08 $10 $08
    ld a, [bc]                                    ; $5C63: $0A

jr_03C_5C64:
    db $10                                        ; $5C64: $10
    db $10                                        ; $5C65: $10
    inc c                                         ; $5C66: $0C
    db $10                                        ; $5C67: $10
    jr jr_03C_5C78                                ; $5C68: $18 $0E

    sub b                                         ; $5C6A: $90
    nop                                           ; $5C6B: $00
    nop                                           ; $5C6C: $00
    rst RST_38                                    ; $5C6D: $FF
    rst RST_38                                    ; $5C6E: $FF
    rst RST_38                                    ; $5C6F: $FF
    ld [hl], h                                    ; $5C70: $74
    ld e, h                                       ; $5C71: $5C
    nop                                           ; $5C72: $00
    nop                                           ; $5C73: $00
    ld [$0000], sp                                ; $5C74: $08 $00 $00
    nop                                           ; $5C77: $00

jr_03C_5C78:
    nop                                           ; $5C78: $00
    ld [$0002], sp                                ; $5C79: $08 $02 $00
    db $10                                        ; $5C7C: $10
    inc b                                         ; $5C7D: $04
    nop                                           ; $5C7E: $00
    jr @+$08                                      ; $5C7F: $18 $06

    stop                                          ; $5C81: $10 $00
    db $10                                        ; $5C83: $10
    db $10                                        ; $5C84: $10
    ld [$1012], sp                                ; $5C85: $08 $12 $10
    db $10                                        ; $5C88: $10
    inc d                                         ; $5C89: $14
    db $10                                        ; $5C8A: $10
    jr @+$18                                      ; $5C8B: $18 $16

    sub b                                         ; $5C8D: $90
    nop                                           ; $5C8E: $00
    nop                                           ; $5C8F: $00
    rst RST_38                                    ; $5C90: $FF
    rst RST_38                                    ; $5C91: $FF
    rst RST_38                                    ; $5C92: $FF
    sub a                                         ; $5C93: $97
    ld e, h                                       ; $5C94: $5C
    nop                                           ; $5C95: $00
    nop                                           ; $5C96: $00
    ld [$0000], sp                                ; $5C97: $08 $00 $00
    nop                                           ; $5C9A: $00
    nop                                           ; $5C9B: $00
    ld [$0002], sp                                ; $5C9C: $08 $02 $00
    db $10                                        ; $5C9F: $10
    inc b                                         ; $5CA0: $04
    nop                                           ; $5CA1: $00
    jr @+$08                                      ; $5CA2: $18 $06

    stop                                          ; $5CA4: $10 $00
    jr jr_03C_5CB8                                ; $5CA6: $18 $10

    ld [$101A], sp                                ; $5CA8: $08 $1A $10
    db $10                                        ; $5CAB: $10
    inc e                                         ; $5CAC: $1C
    db $10                                        ; $5CAD: $10
    jr jr_03C_5CCE                                ; $5CAE: $18 $1E

    db $DD                                        ; $5CB0: $DD
    ld [hl+], a                                   ; $5CB1: $22
    db $DD                                        ; $5CB2: $DD
    ld [hl+], a                                   ; $5CB3: $22
    db $DD                                        ; $5CB4: $DD
    ld [hl+], a                                   ; $5CB5: $22
    nop                                           ; $5CB6: $00
    rst RST_38                                    ; $5CB7: $FF

jr_03C_5CB8:
    db $DD                                        ; $5CB8: $DD
    ld [hl+], a                                   ; $5CB9: $22
    db $DD                                        ; $5CBA: $DD
    ld [hl+], a                                   ; $5CBB: $22
    db $DD                                        ; $5CBC: $DD
    ld [hl+], a                                   ; $5CBD: $22
    nop                                           ; $5CBE: $00
    rst RST_38                                    ; $5CBF: $FF
    db $DD                                        ; $5CC0: $DD
    ld [hl+], a                                   ; $5CC1: $22
    db $DD                                        ; $5CC2: $DD
    ld [hl+], a                                   ; $5CC3: $22
    nop                                           ; $5CC4: $00
    rst RST_38                                    ; $5CC5: $FF
    db $DD                                        ; $5CC6: $DD
    ld [hl+], a                                   ; $5CC7: $22
    db $DD                                        ; $5CC8: $DD
    ld [hl+], a                                   ; $5CC9: $22
    db $DD                                        ; $5CCA: $DD
    ld [hl+], a                                   ; $5CCB: $22
    nop                                           ; $5CCC: $00
    rst RST_38                                    ; $5CCD: $FF

jr_03C_5CCE:
    db $DD                                        ; $5CCE: $DD
    ld [hl+], a                                   ; $5CCF: $22
    db $DD                                        ; $5CD0: $DD
    ld [hl+], a                                   ; $5CD1: $22
    nop                                           ; $5CD2: $00
    rst RST_38                                    ; $5CD3: $FF
    db $DD                                        ; $5CD4: $DD
    ld [hl+], a                                   ; $5CD5: $22
    db $DD                                        ; $5CD6: $DD
    ld [hl+], a                                   ; $5CD7: $22
    db $DD                                        ; $5CD8: $DD
    ld [hl+], a                                   ; $5CD9: $22
    nop                                           ; $5CDA: $00
    rst RST_38                                    ; $5CDB: $FF
    db $DD                                        ; $5CDC: $DD
    ld [hl+], a                                   ; $5CDD: $22
    db $DD                                        ; $5CDE: $DD
    ld [hl+], a                                   ; $5CDF: $22
    nop                                           ; $5CE0: $00
    rst RST_38                                    ; $5CE1: $FF
    db $DD                                        ; $5CE2: $DD
    ld [hl+], a                                   ; $5CE3: $22
    db $DD                                        ; $5CE4: $DD
    ld [hl+], a                                   ; $5CE5: $22
    db $DD                                        ; $5CE6: $DD
    ld [hl+], a                                   ; $5CE7: $22
    nop                                           ; $5CE8: $00
    rst RST_38                                    ; $5CE9: $FF
    db $DD                                        ; $5CEA: $DD
    ld [hl+], a                                   ; $5CEB: $22
    db $DD                                        ; $5CEC: $DD
    ld [hl+], a                                   ; $5CED: $22
    db $DD                                        ; $5CEE: $DD
    ld [hl+], a                                   ; $5CEF: $22
    sub [hl]                                      ; $5CF0: $96
    ld l, [hl]                                    ; $5CF1: $6E
    db $D3                                        ; $5CF2: $D3
    ld b, e                                       ; $5CF3: $43
    ld e, e                                       ; $5CF4: $5B
    ld c, b                                       ; $5CF5: $48
    inc e                                         ; $5CF6: $1C
    ld c, [hl]                                    ; $5CF7: $4E
    scf                                           ; $5CF8: $37
    ld d, e                                       ; $5CF9: $53
    ld a, [de]                                    ; $5CFA: $1A
    ld e, l                                       ; $5CFB: $5D
    sub e                                         ; $5CFC: $93
    ld h, b                                       ; $5CFD: $60
    ld l, [hl]                                    ; $5CFE: $6E
    ld h, [hl]                                    ; $5CFF: $66
    ld [hl], b                                    ; $5D00: $70
    ld l, c                                       ; $5D01: $69
    db $E4                                        ; $5D02: $E4
    ld l, h                                       ; $5D03: $6C
    ld b, c                                       ; $5D04: $41
    ld [hl], c                                    ; $5D05: $71
    db $D3                                        ; $5D06: $D3
    ld b, e                                       ; $5D07: $43
    di                                            ; $5D08: $F3
    ld l, a                                       ; $5D09: $6F
    cpl                                           ; $5D0A: $2F
    ld b, [hl]                                    ; $5D0B: $46
    ld h, c                                       ; $5D0C: $61
    ld c, e                                       ; $5D0D: $4B
    rst RST_08                                    ; $5D0E: $CF
    ld d, b                                       ; $5D0F: $50
    ld e, d                                       ; $5D10: $5A
    ld e, b                                       ; $5D11: $58
    push de                                       ; $5D12: $D5
    ld e, [hl]                                    ; $5D13: $5E
    xor h                                         ; $5D14: $AC
    ld h, e                                       ; $5D15: $63
    ldh a, [c]                                    ; $5D16: $F2
    ld h, a                                       ; $5D17: $67
    ld [hl], $6B                                  ; $5D18: $36 $6B
    cp l                                          ; $5D1A: $BD
    ld l, l                                       ; $5D1B: $6D
    ld d, l                                       ; $5D1C: $55
    halt                                          ; $5D1D: $76
    cpl                                           ; $5D1E: $2F
    ld b, [hl]                                    ; $5D1F: $46
    rst RST_38                                    ; $5D20: $FF
    rst RST_38                                    ; $5D21: $FF
    ret                                           ; $5D22: $C9


    add [hl]                                      ; $5D23: $86
    or l                                          ; $5D24: $B5
    or d                                          ; $5D25: $B2
    set 1, b                                      ; $5D26: $CB $C8
    add e                                         ; $5D28: $83
    add b                                         ; $5D29: $80
    adc c                                         ; $5D2A: $89
    add h                                         ; $5D2B: $84
    sbc h                                         ; $5D2C: $9C
    adc $9F                                       ; $5D2D: $CE $9F
    sbc a                                         ; $5D2F: $9F
    rst RST_38                                    ; $5D30: $FF
    rst RST_38                                    ; $5D31: $FF
    inc h                                         ; $5D32: $24
    db $DB                                        ; $5D33: $DB
    dec h                                         ; $5D34: $25
    jp c, $D22D                                   ; $5D35: $DA $2D $D2

    xor [hl]                                      ; $5D38: $AE
    ld d, b                                       ; $5D39: $50
    adc c                                         ; $5D3A: $89
    ld d, b                                       ; $5D3B: $50
    ld d, h                                       ; $5D3C: $54
    inc bc                                        ; $5D3D: $03
    add hl, bc                                    ; $5D3E: $09
    and a                                         ; $5D3F: $A7
    rst RST_38                                    ; $5D40: $FF
    rst RST_38                                    ; $5D41: $FF
    or e                                          ; $5D42: $B3
    add hl, sp                                    ; $5D43: $39
    add hl, bc                                    ; $5D44: $09
    ld b, l                                       ; $5D45: $45
    ld bc, $8105                                  ; $5D46: $01 $05 $81
    dec b                                         ; $5D49: $05
    inc hl                                        ; $5D4A: $23
    ret                                           ; $5D4B: $C9


    rla                                           ; $5D4C: $17
    pop hl                                        ; $5D4D: $E1
    push hl                                       ; $5D4E: $E5
    jp $83C7                                      ; $5D4F: $C3 $C7 $83


    ret                                           ; $5D52: $C9


    adc b                                         ; $5D53: $88
    jp z, $848A                                   ; $5D54: $CA $8A $84

    call nz, $C0A8                                ; $5D57: $C4 $A8 $C0
    rst RST_20                                    ; $5D5A: $E7
    adc a                                         ; $5D5B: $8F
    db $D3                                        ; $5D5C: $D3
    and a                                         ; $5D5D: $A7
    add e                                         ; $5D5E: $83
    db $E3                                        ; $5D5F: $E3
    rst RST_28                                    ; $5D60: $EF
    cp $FE                                        ; $5D61: $FE $FE
    db $FC                                        ; $5D63: $FC
    sub l                                         ; $5D64: $95
    ld l, c                                       ; $5D65: $69
    jr nc, jr_03C_5D68                            ; $5D66: $30 $00

jr_03C_5D68:
    ld [hl], h                                    ; $5D68: $74
    jr c, jr_03C_5D6F                             ; $5D69: $38 $04

    add e                                         ; $5D6B: $83
    ld bc, $0303                                  ; $5D6C: $01 $03 $03

jr_03C_5D6F:
    add a                                         ; $5D6F: $87
    ld de, $5507                                  ; $5D70: $11 $07 $55
    ld b, c                                       ; $5D73: $41
    ld d, a                                       ; $5D74: $57
    ld b, c                                       ; $5D75: $41
    or a                                          ; $5D76: $B7
    add c                                         ; $5D77: $81
    ld l, l                                       ; $5D78: $6D
    inc bc                                        ; $5D79: $03
    add hl, de                                    ; $5D7A: $19
    rst RST_00                                    ; $5D7B: $C7
    dec c                                         ; $5D7C: $0D
    jp $9947                                      ; $5D7D: $C3 $47 $99


    xor e                                         ; $5D80: $AB
    db $D3                                        ; $5D81: $D3
    and c                                         ; $5D82: $A1
    db $D3                                        ; $5D83: $D3
    add h                                         ; $5D84: $84
    reti                                          ; $5D85: $D9


    add d                                         ; $5D86: $82
    or h                                          ; $5D87: $B4
    add a                                         ; $5D88: $87
    xor b                                         ; $5D89: $A8
    add h                                         ; $5D8A: $84
    add c                                         ; $5D8B: $81
    add c                                         ; $5D8C: $81
    add d                                         ; $5D8D: $82
    rst RST_38                                    ; $5D8E: $FF
    rst RST_38                                    ; $5D8F: $FF
    sub $EF                                       ; $5D90: $D6 $EF
    add b                                         ; $5D92: $80
    rst RST_20                                    ; $5D93: $E7
    nop                                           ; $5D94: $00
    add b                                         ; $5D95: $80
    ld b, d                                       ; $5D96: $42
    ld b, d                                       ; $5D97: $42
    nop                                           ; $5D98: $00
    nop                                           ; $5D99: $00
    add b                                         ; $5D9A: $80
    ld [bc], a                                    ; $5D9B: $02
    ld e, b                                       ; $5D9C: $58
    sbc h                                         ; $5D9D: $9C
    rst RST_38                                    ; $5D9E: $FF
    rst RST_38                                    ; $5D9F: $FF
    ld d, c                                       ; $5DA0: $51
    adc l                                         ; $5DA1: $8D
    cp c                                          ; $5DA2: $B9
    rlca                                          ; $5DA3: $07
    ld e, c                                       ; $5DA4: $59
    inc hl                                        ; $5DA5: $23
    ld c, l                                       ; $5DA6: $4D
    ld sp, $11E5                                  ; $5DA7: $31 $E5 $11
    pop hl                                        ; $5DAA: $E1
    inc bc                                        ; $5DAB: $03
    ld b, c                                       ; $5DAC: $41
    rrca                                          ; $5DAD: $0F
    rst RST_38                                    ; $5DAE: $FF
    rst RST_38                                    ; $5DAF: $FF
    rst RST_38                                    ; $5DB0: $FF
    rst RST_38                                    ; $5DB1: $FF
    add b                                         ; $5DB2: $80
    db $DD                                        ; $5DB3: $DD
    add h                                         ; $5DB4: $84
    and d                                         ; $5DB5: $A2
    sub h                                         ; $5DB6: $94
    and d                                         ; $5DB7: $A2
    adc b                                         ; $5DB8: $88
    sub $80                                       ; $5DB9: $D6 $80
    rst RST_28                                    ; $5DBB: $EF
    add b                                         ; $5DBC: $80
    db $EB                                        ; $5DBD: $EB
    add d                                         ; $5DBE: $82
    call c, $FFFF                                 ; $5DBF: $DC $FF $FF
    nop                                           ; $5DC2: $00
    rst RST_38                                    ; $5DC3: $FF
    nop                                           ; $5DC4: $00
    add d                                         ; $5DC5: $82
    ld a, h                                       ; $5DC6: $7C
    nop                                           ; $5DC7: $00
    ld b, $D8                                     ; $5DC8: $06 $D8
    ld bc, $007C                                  ; $5DCA: $01 $7C $00
    rst RST_30                                    ; $5DCD: $F7
    ld b, b                                       ; $5DCE: $40
    inc a                                         ; $5DCF: $3C
    rst RST_38                                    ; $5DD0: $FF
    rst RST_38                                    ; $5DD1: $FF
    ld de, $0967                                  ; $5DD2: $11 $67 $09
    jp $8359                                      ; $5DD5: $C3 $59 $83


    ld [hl], c                                    ; $5DD8: $71
    rlca                                          ; $5DD9: $07
    pop hl                                        ; $5DDA: $E1
    rrca                                          ; $5DDB: $0F
    and c                                         ; $5DDC: $A1
    rrca                                          ; $5DDD: $0F
    pop af                                        ; $5DDE: $F1
    rlca                                          ; $5DDF: $07
    add l                                         ; $5DE0: $85
    ret                                           ; $5DE1: $C9


    add d                                         ; $5DE2: $82
    jp c, $DA82                                   ; $5DE3: $DA $82 $DA

    add d                                         ; $5DE6: $82
    sbc d                                         ; $5DE7: $9A
    db $E4                                        ; $5DE8: $E4
    ldh a, [$FFB1]                                ; $5DE9: $F0 $B1
    cp c                                          ; $5DEB: $B9
    or c                                          ; $5DEC: $B1
    pop af                                        ; $5DED: $F1
    sub e                                         ; $5DEE: $93
    sub e                                         ; $5DEF: $93
    ld bc, $8239                                  ; $5DF0: $01 $39 $82
    jr c, jr_03C_5DF5                             ; $5DF3: $38 $00

jr_03C_5DF5:
    cp d                                          ; $5DF5: $BA
    add d                                         ; $5DF6: $82
    cp d                                          ; $5DF7: $BA
    jr c, jr_03C_5DFA                             ; $5DF8: $38 $00

jr_03C_5DFA:
    add [hl]                                      ; $5DFA: $86
    jp $EFEF                                      ; $5DFB: $C3 $EF $EF


    rst RST_38                                    ; $5DFE: $FF
    rst RST_38                                    ; $5DFF: $FF
    ld [hl], c                                    ; $5E00: $71
    rlca                                          ; $5E01: $07
    and c                                         ; $5E02: $A1
    add a                                         ; $5E03: $87
    or c                                          ; $5E04: $B1
    add a                                         ; $5E05: $87
    or c                                          ; $5E06: $B1
    add e                                         ; $5E07: $83
    ld b, c                                       ; $5E08: $41
    dec e                                         ; $5E09: $1D
    ld sp, $193B                                  ; $5E0A: $31 $3B $19
    dec e                                         ; $5E0D: $1D
    ld de, $A391                                  ; $5E0E: $11 $91 $A3
    or d                                          ; $5E11: $B2
    add c                                         ; $5E12: $81
    xor c                                         ; $5E13: $A9
    add b                                         ; $5E14: $80
    ret z                                         ; $5E15: $C8

    add d                                         ; $5E16: $82
    ldh a, [c]                                    ; $5E17: $F2
    add e                                         ; $5E18: $83
    ei                                            ; $5E19: $FB
    add c                                         ; $5E1A: $81
    push af                                       ; $5E1B: $F5
    add b                                         ; $5E1C: $80
    xor $FF                                       ; $5E1D: $EE $FF
    rst RST_38                                    ; $5E1F: $FF
    ld bc, $8044                                  ; $5E20: $01 $44 $80
    add e                                         ; $5E23: $83
    ld b, h                                       ; $5E24: $44
    ld b, b                                       ; $5E25: $40
    ld l, b                                       ; $5E26: $68
    ld b, h                                       ; $5E27: $44
    and b                                         ; $5E28: $A0
    cp b                                          ; $5E29: $B8
    call nz, $FCC5                                ; $5E2A: $C4 $C5 $FC
    db $FD                                        ; $5E2D: $FD
    rst RST_38                                    ; $5E2E: $FF
    rst RST_38                                    ; $5E2F: $FF
    ld bc, $019B                                  ; $5E30: $01 $9B $01
    dec hl                                        ; $5E33: $2B
    ld bc, $3907                                  ; $5E34: $01 $07 $39
    ld b, e                                       ; $5E37: $43

jr_03C_5E38:
    ld c, l                                       ; $5E38: $4D
    pop af                                        ; $5E39: $F1
    sub a                                         ; $5E3A: $97
    reti                                          ; $5E3B: $D9


    inc hl                                        ; $5E3C: $23
    sub l                                         ; $5E3D: $95
    rst RST_38                                    ; $5E3E: $FF
    rst RST_38                                    ; $5E3F: $FF
    rst RST_38                                    ; $5E40: $FF
    rst RST_38                                    ; $5E41: $FF
    rst RST_38                                    ; $5E42: $FF
    add b                                         ; $5E43: $80
    rst RST_38                                    ; $5E44: $FF
    add b                                         ; $5E45: $80
    rst RST_38                                    ; $5E46: $FF
    add b                                         ; $5E47: $80
    rst RST_38                                    ; $5E48: $FF
    add b                                         ; $5E49: $80
    rst RST_38                                    ; $5E4A: $FF
    add b                                         ; $5E4B: $80
    rst RST_38                                    ; $5E4C: $FF
    add b                                         ; $5E4D: $80
    ld a, [$FF80]                                 ; $5E4E: $FA $80 $FF
    rst RST_38                                    ; $5E51: $FF
    ld hl, sp+$01                                 ; $5E52: $F8 $01
    db $F4                                        ; $5E54: $F4
    inc b                                         ; $5E55: $04
    pop af                                        ; $5E56: $F1
    dec b                                         ; $5E57: $05
    ret nc                                        ; $5E58: $D0

    nop                                           ; $5E59: $00
    adc e                                         ; $5E5A: $8B
    inc c                                         ; $5E5B: $0C
    ld b, [hl]                                    ; $5E5C: $46
    ld c, c                                       ; $5E5D: $49
    add b                                         ; $5E5E: $80
    ret nz                                        ; $5E5F: $C0

    rst RST_38                                    ; $5E60: $FF
    rst RST_38                                    ; $5E61: $FF
    add hl, de                                    ; $5E62: $19
    ld b, e                                       ; $5E63: $43
    ld bc, $8105                                  ; $5E64: $01 $05 $81
    pop hl                                        ; $5E67: $E1
    ld bc, $0113                                  ; $5E68: $01 $13 $01
    pop hl                                        ; $5E6B: $E1
    ld hl, $21B1                                  ; $5E6C: $21 $B1 $21
    ld sp, $85F4                                  ; $5E6F: $31 $F4 $85
    db $F4                                        ; $5E72: $F4
    add h                                         ; $5E73: $84
    add sp, -$74                                  ; $5E74: $E8 $8C
    ret nc                                        ; $5E76: $D0

    sbc b                                         ; $5E77: $98
    sub b                                         ; $5E78: $90
    sub b                                         ; $5E79: $90
    jp $90CF                                      ; $5E7A: $C3 $CF $90


    sub b                                         ; $5E7D: $90
    ret nc                                        ; $5E7E: $D0

    sbc b                                         ; $5E7F: $98
    nop                                           ; $5E80: $00
    nop                                           ; $5E81: $00
    ret nc                                        ; $5E82: $D0

    ret c                                         ; $5E83: $D8

    ld b, b                                       ; $5E84: $40
    ld h, h                                       ; $5E85: $64
    inc h                                         ; $5E86: $24
    ld [hl], $00                                  ; $5E87: $36 $00
    ld [bc], a                                    ; $5E89: $02
    cp l                                          ; $5E8A: $BD
    cp h                                          ; $5E8B: $BC
    nop                                           ; $5E8C: $00
    ld [bc], a                                    ; $5E8D: $02
    ld h, h                                       ; $5E8E: $64
    halt                                          ; $5E8F: $76
    ld b, c                                       ; $5E90: $41
    ld h, c                                       ; $5E91: $61
    ld bc, $010B                                  ; $5E92: $01 $0B $01
    ld l, l                                       ; $5E95: $6D
    ld bc, $E11B                                  ; $5E96: $01 $1B $E1
    ld bc, $7591                                  ; $5E99: $01 $91 $75
    pop hl                                        ; $5E9C: $E1
    ld bc, $0F01                                  ; $5E9D: $01 $01 $0F
    add sp, -$74                                  ; $5EA0: $E8 $8C
    add h                                         ; $5EA2: $84
    add l                                         ; $5EA3: $85
    sub h                                         ; $5EA4: $94
    and h                                         ; $5EA5: $A4
    add b                                         ; $5EA6: $80
    add b                                         ; $5EA7: $80
    db $FC                                        ; $5EA8: $FC
    add b                                         ; $5EA9: $80
    cp $80                                        ; $5EAA: $FE $80
    rst RST_38                                    ; $5EAC: $FF
    add b                                         ; $5EAD: $80
    rst RST_38                                    ; $5EAE: $FF
    rst RST_38                                    ; $5EAF: $FF
    ret nz                                        ; $5EB0: $C0

    db $E4                                        ; $5EB1: $E4
    db $10                                        ; $5EB2: $10
    jr jr_03C_5E38                                ; $5EB3: $18 $83

    call nz, Call_03C_4040                        ; $5EB5: $C4 $40 $40
    ld b, $1E                                     ; $5EB8: $06 $1E
    nop                                           ; $5EBA: $00
    nop                                           ; $5EBB: $00
    rst RST_38                                    ; $5EBC: $FF
    nop                                           ; $5EBD: $00
    rst RST_38                                    ; $5EBE: $FF
    rst RST_38                                    ; $5EBF: $FF
    rrca                                          ; $5EC0: $0F
    pop af                                        ; $5EC1: $F1
    add hl, de                                    ; $5EC2: $19
    ld hl, $0131                                  ; $5EC3: $21 $31 $01
    ld bc, $7101                                  ; $5EC6: $01 $01 $71
    ld a, c                                       ; $5EC9: $79
    add hl, sp                                    ; $5ECA: $39
    ccf                                           ; $5ECB: $3F
    pop bc                                        ; $5ECC: $C1
    ld bc, $FFFF                                  ; $5ECD: $01 $FF $FF
    rst RST_38                                    ; $5ED0: $FF
    rst RST_38                                    ; $5ED1: $FF
    add b                                         ; $5ED2: $80
    rst RST_38                                    ; $5ED3: $FF
    add b                                         ; $5ED4: $80
    pop bc                                        ; $5ED5: $C1
    sbc b                                         ; $5ED6: $98
    cp d                                          ; $5ED7: $BA
    or l                                          ; $5ED8: $B5
    push bc                                       ; $5ED9: $C5
    and h                                         ; $5EDA: $A4
    push bc                                       ; $5EDB: $C5
    push hl                                       ; $5EDC: $E5
    call nz, $B8BA                                ; $5EDD: $C4 $BA $B8
    rst RST_38                                    ; $5EE0: $FF
    rst RST_38                                    ; $5EE1: $FF
    nop                                           ; $5EE2: $00
    db $E3                                        ; $5EE3: $E3
    inc e                                         ; $5EE4: $1C
    pop bc                                        ; $5EE5: $C1
    nop                                           ; $5EE6: $00
    ld c, $47                                     ; $5EE7: $0E $47
    scf                                           ; $5EE9: $37
    ld [hl], a                                    ; $5EEA: $77
    scf                                           ; $5EEB: $37
    ld b, b                                       ; $5EEC: $40
    scf                                           ; $5EED: $37
    ld [hl], a                                    ; $5EEE: $77
    nop                                           ; $5EEF: $00
    rst RST_38                                    ; $5EF0: $FF
    rst RST_38                                    ; $5EF1: $FF
    ld bc, $09F1                                  ; $5EF2: $01 $F1 $09
    db $ED                                        ; $5EF5: $ED
    inc de                                        ; $5EF6: $13
    reti                                          ; $5EF7: $D9


    ld bc, $4101                                  ; $5EF8: $01 $01 $41
    dec [hl]                                      ; $5EFB: $35
    ld [hl], c                                    ; $5EFC: $71
    dec [hl]                                      ; $5EFD: $35
    ld c, c                                       ; $5EFE: $49
    dec h                                         ; $5EFF: $25
    add b                                         ; $5F00: $80
    ret nz                                        ; $5F01: $C0

    add b                                         ; $5F02: $80
    rst RST_38                                    ; $5F03: $FF
    add b                                         ; $5F04: $80
    rst RST_38                                    ; $5F05: $FF
    add b                                         ; $5F06: $80
    rst RST_38                                    ; $5F07: $FF
    add b                                         ; $5F08: $80
    rst RST_38                                    ; $5F09: $FF
    add b                                         ; $5F0A: $80
    ld hl, sp-$7D                                 ; $5F0B: $F8 $83
    db $F4                                        ; $5F0D: $F4
    add [hl]                                      ; $5F0E: $86
    add sp, $0E                                   ; $5F0F: $E8 $0E
    nop                                           ; $5F11: $00
    nop                                           ; $5F12: $00
    ret nz                                        ; $5F13: $C0

    nop                                           ; $5F14: $00
    db $FC                                        ; $5F15: $FC
    ld [bc], a                                    ; $5F16: $02
    ei                                            ; $5F17: $FB
    nop                                           ; $5F18: $00
    add d                                         ; $5F19: $82
    ld [hl], h                                    ; $5F1A: $74
    ld d, [hl]                                    ; $5F1B: $56
    nop                                           ; $5F1C: $00
    nop                                           ; $5F1D: $00
    nop                                           ; $5F1E: $00
    nop                                           ; $5F1F: $00
    add hl, de                                    ; $5F20: $19
    dec b                                         ; $5F21: $05
    ld [hl], c                                    ; $5F22: $71
    add hl, bc                                    ; $5F23: $09
    add hl, bc                                    ; $5F24: $09
    ld bc, $0181                                  ; $5F25: $01 $81 $01
    inc bc                                        ; $5F28: $03
    dec c                                         ; $5F29: $0D
    rst RST_00                                    ; $5F2A: $C7
    sbc c                                         ; $5F2B: $99
    ld bc, $1F21                                  ; $5F2C: $01 $21 $1F
    rra                                           ; $5F2F: $1F
    add b                                         ; $5F30: $80
    ldh [$FF8F], a                                ; $5F31: $E0 $8F
    rst RST_28                                    ; $5F33: $EF
    add b                                         ; $5F34: $80
    ldh a, [$FF87]                                ; $5F35: $F0 $87
    rst RST_30                                    ; $5F37: $F7
    add b                                         ; $5F38: $80
    ld hl, sp-$7F                                 ; $5F39: $F8 $81
    db $FD                                        ; $5F3B: $FD
    add b                                         ; $5F3C: $80
    cp $FF                                        ; $5F3D: $FE $FF
    rst RST_38                                    ; $5F3F: $FF
    nop                                           ; $5F40: $00
    ld a, a                                       ; $5F41: $7F
    ld a, a                                       ; $5F42: $7F
    nop                                           ; $5F43: $00
    ccf                                           ; $5F44: $3F
    nop                                           ; $5F45: $00
    add b                                         ; $5F46: $80
    add b                                         ; $5F47: $80
    rrca                                          ; $5F48: $0F
    nop                                           ; $5F49: $00
    db $E3                                        ; $5F4A: $E3
    ldh [rP1], a                                  ; $5F4B: $E0 $00
    nop                                           ; $5F4D: $00
    rst RST_38                                    ; $5F4E: $FF
    rst RST_38                                    ; $5F4F: $FF
    ld bc, $DFC1                                  ; $5F50: $01 $C1 $DF
    rra                                           ; $5F53: $1F
    pop hl                                        ; $5F54: $E1
    ld bc, $0F0F                                  ; $5F55: $01 $0F $0F
    pop af                                        ; $5F58: $F1
    ld bc, $03FB                                  ; $5F59: $01 $FB $03
    ld bc, $FF01                                  ; $5F5C: $01 $01 $FF
    rst RST_38                                    ; $5F5F: $FF
    di                                            ; $5F60: $F3
    rst RST_10                                    ; $5F61: $D7
    ld hl, $C03A                                  ; $5F62: $21 $3A $C0
    res 1, [hl]                                   ; $5F65: $CB $8E
    set 2, [hl]                                   ; $5F67: $CB $D6
    ld a, $FF                                     ; $5F69: $3E $FF
    ldh [rBGP], a                                 ; $5F6B: $E0 $47
    ldh [rOBP0], a                                ; $5F6D: $E0 $48
    ldh [rOBP1], a                                ; $5F6F: $E0 $49
    ldh [$FFEA], a                                ; $5F71: $E0 $EA
    ldh [$FFEB], a                                ; $5F73: $E0 $EB
    ldh [$FFEC], a                                ; $5F75: $E0 $EC
    call Call_000_13ED                            ; $5F77: $CD $ED $13
    ld de, $0020                                  ; $5F7A: $11 $20 $00
    call Call_000_14C0                            ; $5F7D: $CD $C0 $14
    xor a                                         ; $5F80: $AF
    ldh [$FFE4], a                                ; $5F81: $E0 $E4
    ld [$C2AA], a                                 ; $5F83: $EA $AA $C2
    ld [$C2AC], a                                 ; $5F86: $EA $AC $C2
    ld a, $CC                                     ; $5F89: $3E $CC
    ldh [$FFE2], a                                ; $5F8B: $E0 $E2
    ld hl, $566F                                  ; $5F8D: $21 $6F $56
    ld de, $C359                                  ; $5F90: $11 $59 $C3
    ld b, $32                                     ; $5F93: $06 $32
    rst RST_20                                    ; $5F95: $E7
    ld hl, $C359                                  ; $5F96: $21 $59 $C3
    ld de, $8000                                  ; $5F99: $11 $00 $80
    ld b, $7C                                     ; $5F9C: $06 $7C
    call Call_000_1188                            ; $5F9E: $CD $88 $11
    ld de, $6B7E                                  ; $5FA1: $11 $7E $6B
    ld hl, $8800                                  ; $5FA4: $21 $00 $88
    ld c, $10                                     ; $5FA7: $0E $10

jr_03C_5FA9:
    push bc                                       ; $5FA9: $C5
    push hl                                       ; $5FAA: $E5
    push de                                       ; $5FAB: $D5
    ld hl, $C429                                  ; $5FAC: $21 $29 $C4
    ld de, $C529                                  ; $5FAF: $11 $29 $C5
    ld [hl], e                                    ; $5FB2: $73
    inc hl                                        ; $5FB3: $23
    ld [hl], d                                    ; $5FB4: $72
    inc hl                                        ; $5FB5: $23
    pop de                                        ; $5FB6: $D1
    push de                                       ; $5FB7: $D5
    call Call_03C_6598                            ; $5FB8: $CD $98 $65
    pop hl                                        ; $5FBB: $E1
    pop de                                        ; $5FBC: $D1
    push de                                       ; $5FBD: $D5
    push hl                                       ; $5FBE: $E5
    ld hl, $C929                                  ; $5FBF: $21 $29 $C9
    ld a, [$C42B]                                 ; $5FC2: $FA $2B $C4
    add a                                         ; $5FC5: $87
    ld b, a                                       ; $5FC6: $47
    call Call_000_1188                            ; $5FC7: $CD $88 $11
    pop hl                                        ; $5FCA: $E1
    ld de, $0009                                  ; $5FCB: $11 $09 $00
    add hl, de                                    ; $5FCE: $19
    ld e, l                                       ; $5FCF: $5D
    ld d, h                                       ; $5FD0: $54
    pop hl                                        ; $5FD1: $E1
    ld bc, $0100                                  ; $5FD2: $01 $00 $01
    add hl, bc                                    ; $5FD5: $09
    pop bc                                        ; $5FD6: $C1
    dec c                                         ; $5FD7: $0D
    jr nz, jr_03C_5FA9                            ; $5FD8: $20 $CF

    ld e, $00                                     ; $5FDA: $1E $00
    ld d, $7F                                     ; $5FDC: $16 $7F
    ld hl, $9800                                  ; $5FDE: $21 $00 $98
    ld b, $20                                     ; $5FE1: $06 $20
    ld c, $20                                     ; $5FE3: $0E $20
    call Call_000_10EA                            ; $5FE5: $CD $EA $10
    ld e, $00                                     ; $5FE8: $1E $00
    ld d, $7F                                     ; $5FEA: $16 $7F
    ld hl, $9C00                                  ; $5FEC: $21 $00 $9C
    ld b, $20                                     ; $5FEF: $06 $20
    ld c, $20                                     ; $5FF1: $0E $20
    call Call_000_10EA                            ; $5FF3: $CD $EA $10
    ld e, $00                                     ; $5FF6: $1E $00
    ld d, $80                                     ; $5FF8: $16 $80
    ld hl, $9842                                  ; $5FFA: $21 $42 $98
    ld a, $08                                     ; $5FFD: $3E $08

jr_03C_5FFF:
    push af                                       ; $5FFF: $F5
    push de                                       ; $6000: $D5
    push hl                                       ; $6001: $E5
    ld b, $08                                     ; $6002: $06 $08
    ld c, $02                                     ; $6004: $0E $02
    call Call_000_1139                            ; $6006: $CD $39 $11
    pop hl                                        ; $6009: $E1
    ld de, $0040                                  ; $600A: $11 $40 $00
    add hl, de                                    ; $600D: $19
    pop de                                        ; $600E: $D1
    ld a, $10                                     ; $600F: $3E $10
    add d                                         ; $6011: $82
    ld d, a                                       ; $6012: $57
    pop af                                        ; $6013: $F1
    dec a                                         ; $6014: $3D
    jr nz, jr_03C_5FFF                            ; $6015: $20 $E8

    ld hl, $984B                                  ; $6017: $21 $4B $98
    ld a, $08                                     ; $601A: $3E $08

jr_03C_601C:
    push af                                       ; $601C: $F5
    push de                                       ; $601D: $D5
    push hl                                       ; $601E: $E5
    ld b, $08                                     ; $601F: $06 $08
    ld c, $02                                     ; $6021: $0E $02
    call Call_000_1139                            ; $6023: $CD $39 $11
    pop hl                                        ; $6026: $E1
    ld de, $0040                                  ; $6027: $11 $40 $00
    add hl, de                                    ; $602A: $19
    pop de                                        ; $602B: $D1
    ld a, $10                                     ; $602C: $3E $10
    add d                                         ; $602E: $82
    ld d, a                                       ; $602F: $57
    pop af                                        ; $6030: $F1
    dec a                                         ; $6031: $3D
    jr nz, jr_03C_601C                            ; $6032: $20 $E8

    call Call_000_0F9E                            ; $6034: $CD $9E $0F
    ld hl, $D840                                  ; $6037: $21 $40 $D8
    ld de, $660C                                  ; $603A: $11 $0C $66
    call Call_000_0F8E                            ; $603D: $CD $8E $0F
    ld hl, $D800                                  ; $6040: $21 $00 $D8
    ld de, $669C                                  ; $6043: $11 $9C $66
    call Call_000_0F8E                            ; $6046: $CD $8E $0F
    ld hl, $D7C0                                  ; $6049: $21 $C0 $D7
    ld de, $6760                                  ; $604C: $11 $60 $67
    call Call_000_0F8E                            ; $604F: $CD $8E $0F
    ld hl, $D780                                  ; $6052: $21 $80 $D7
    ld de, $68E8                                  ; $6055: $11 $E8 $68
    call Call_000_0F8E                            ; $6058: $CD $8E $0F
    ld a, $01                                     ; $605B: $3E $01
    ld [$C2B5], a                                 ; $605D: $EA $B5 $C2
    ld a, $8B                                     ; $6060: $3E $8B
    ld [$C2B6], a                                 ; $6062: $EA $B6 $C2
    ld a, $3C                                     ; $6065: $3E $3C
    ld [$C2B9], a                                 ; $6067: $EA $B9 $C2
    ld a, $8A                                     ; $606A: $3E $8A
    ld [$C2BA], a                                 ; $606C: $EA $BA $C2
    ld a, $87                                     ; $606F: $3E $87
    rst RST_18                                    ; $6071: $DF
    ldh a, [rSTAT]                                ; $6072: $F0 $41
    or $40                                        ; $6074: $F6 $40
    ldh [rSTAT], a                                ; $6076: $E0 $41
    ld a, $17                                     ; $6078: $3E $17
    ld a, $8F                                     ; $607A: $3E $8F
    ldh [rLYC], a                                 ; $607C: $E0 $45
    ldh a, [rIE]                                  ; $607E: $F0 $FF
    or $03                                        ; $6080: $F6 $03
    ldh [rIE], a                                  ; $6082: $E0 $FF
    ei                                            ; $6084: $FB
    ld de, $65FC                                  ; $6085: $11 $FC $65
    ld hl, $C329                                  ; $6088: $21 $29 $C3
    ld c, $10                                     ; $608B: $0E $10

jr_03C_608D:
    ld a, [de]                                    ; $608D: $1A
    inc de                                        ; $608E: $13
    ld [hl+], a                                   ; $608F: $22
    dec c                                         ; $6090: $0D
    jr nz, jr_03C_608D                            ; $6091: $20 $FA

    call Call_000_0424                            ; $6093: $CD $24 $04
    ld a, $1B                                     ; $6096: $3E $1B
    ldh [rBGP], a                                 ; $6098: $E0 $47
    ldh [$FFEA], a                                ; $609A: $E0 $EA
    ldh [$FFEB], a                                ; $609C: $E0 $EB
    ldh [$FFEC], a                                ; $609E: $E0 $EC
    ldh [rOBP0], a                                ; $60A0: $E0 $48
    ldh [rOBP1], a                                ; $60A2: $E0 $49
    call Call_000_147A                            ; $60A4: $CD $7A $14
    call Call_03C_64BC                            ; $60A7: $CD $BC $64
    call Call_03C_6493                            ; $60AA: $CD $93 $64

jr_03C_60AD:
    call Call_000_17A0                            ; $60AD: $CD $A0 $17
    call Call_03C_6370                            ; $60B0: $CD $70 $63
    ld hl, $D840                                  ; $60B3: $21 $40 $D8
    call Call_000_0E28                            ; $60B6: $CD $28 $0E
    ld hl, $D800                                  ; $60B9: $21 $00 $D8
    call Call_000_0E28                            ; $60BC: $CD $28 $0E
    ld hl, $D7C0                                  ; $60BF: $21 $C0 $D7
    call Call_000_0E28                            ; $60C2: $CD $28 $0E
    ld hl, $C329                                  ; $60C5: $21 $29 $C3
    ld e, [hl]                                    ; $60C8: $5E
    inc hl                                        ; $60C9: $23
    ld d, [hl]                                    ; $60CA: $56
    inc de                                        ; $60CB: $13
    ld [hl], d                                    ; $60CC: $72
    dec hl                                        ; $60CD: $2B
    ld [hl], e                                    ; $60CE: $73
    call Call_000_0424                            ; $60CF: $CD $24 $04
    ld a, [$C336]                                 ; $60D2: $FA $36 $C3
    bit 6, a                                      ; $60D5: $CB $77
    jp nz, Jump_03C_62AA                          ; $60D7: $C2 $AA $62

    ld a, [$C32C]                                 ; $60DA: $FA $2C $C3
    cp $03                                        ; $60DD: $FE $03
    jr c, jr_03C_60AD                             ; $60DF: $38 $CC

    ld hl, $C03A                                  ; $60E1: $21 $3A $C0
    res 2, [hl]                                   ; $60E4: $CB $96
    xor a                                         ; $60E6: $AF
    ld [$D7C0], a                                 ; $60E7: $EA $C0 $D7
    ld [$C31A], a                                 ; $60EA: $EA $1A $C3
    ld [$C31B], a                                 ; $60ED: $EA $1B $C3
    call Call_000_0434                            ; $60F0: $CD $34 $04
    ld hl, $C32F                                  ; $60F3: $21 $2F $C3
    ld b, [hl]                                    ; $60F6: $46
    inc hl                                        ; $60F7: $23
    ld d, [hl]                                    ; $60F8: $56
    inc hl                                        ; $60F9: $23
    ld e, [hl]                                    ; $60FA: $5E
    ld hl, $6B1E                                  ; $60FB: $21 $1E $6B
    ld c, $10                                     ; $60FE: $0E $10

jr_03C_6100:
    ld a, [hl+]                                   ; $6100: $2A
    cp b                                          ; $6101: $B8
    jr nz, jr_03C_612A                            ; $6102: $20 $26

    ld a, [hl+]                                   ; $6104: $2A
    cp d                                          ; $6105: $BA
    jr nz, jr_03C_612B                            ; $6106: $20 $23

    ld a, [hl+]                                   ; $6108: $2A
    cp e                                          ; $6109: $BB
    jr nz, jr_03C_612C                            ; $610A: $20 $20

    ld a, $10                                     ; $610C: $3E $10
    cp c                                          ; $610E: $B9
    jr nz, jr_03C_611A                            ; $610F: $20 $09

    ld a, [$C002]                                 ; $6111: $FA $02 $C0
    bit 7, a                                      ; $6114: $CB $7F
    jr z, jr_03C_612C                             ; $6116: $28 $14

    ld a, $10                                     ; $6118: $3E $10

jr_03C_611A:
    sub c                                         ; $611A: $91
    inc a                                         ; $611B: $3C
    ld [$C333], a                                 ; $611C: $EA $33 $C3
    ld c, [hl]                                    ; $611F: $4E
    inc hl                                        ; $6120: $23
    ld a, [hl+]                                   ; $6121: $2A
    ld b, [hl]                                    ; $6122: $46
    ld l, a                                       ; $6123: $6F
    ld h, b                                       ; $6124: $60
    ld a, [hl]                                    ; $6125: $7E
    or c                                          ; $6126: $B1
    ld [hl], a                                    ; $6127: $77
    jr jr_03C_6132                                ; $6128: $18 $08

jr_03C_612A:
    inc hl                                        ; $612A: $23

jr_03C_612B:
    inc hl                                        ; $612B: $23

jr_03C_612C:
    inc hl                                        ; $612C: $23
    inc hl                                        ; $612D: $23
    inc hl                                        ; $612E: $23
    dec c                                         ; $612F: $0D
    jr nz, jr_03C_6100                            ; $6130: $20 $CE

jr_03C_6132:
    di                                            ; $6132: $F3
    rst RST_10                                    ; $6133: $D7
    ld hl, $C03A                                  ; $6134: $21 $3A $C0
    res 1, [hl]                                   ; $6137: $CB $8E
    ld a, $FF                                     ; $6139: $3E $FF
    ldh [rBGP], a                                 ; $613B: $E0 $47
    ldh [rOBP0], a                                ; $613D: $E0 $48
    ldh [rOBP1], a                                ; $613F: $E0 $49
    ldh [$FFEA], a                                ; $6141: $E0 $EA
    ldh [$FFEB], a                                ; $6143: $E0 $EB
    ldh [$FFEC], a                                ; $6145: $E0 $EC
    ld de, $0020                                  ; $6147: $11 $20 $00
    call Call_000_14C0                            ; $614A: $CD $C0 $14
    call Call_000_0FBD                            ; $614D: $CD $BD $0F
    call Call_000_0FC6                            ; $6150: $CD $C6 $0F
    xor a                                         ; $6153: $AF
    ldh [$FFE4], a                                ; $6154: $E0 $E4
    ld [$C2AA], a                                 ; $6156: $EA $AA $C2
    ld [$C2AC], a                                 ; $6159: $EA $AC $C2
    ldh [$FFE2], a                                ; $615C: $E0 $E2
    xor a                                         ; $615E: $AF
    ld b, $FF                                     ; $615F: $06 $FF
    ld hl, $C349                                  ; $6161: $21 $49 $C3
    ld c, $10                                     ; $6164: $0E $10

jr_03C_6166:
    ld [hl+], a                                   ; $6166: $22
    dec c                                         ; $6167: $0D
    jr nz, jr_03C_6166                            ; $6168: $20 $FC

    ld c, $08                                     ; $616A: $0E $08

jr_03C_616C:
    ld [hl], b                                    ; $616C: $70
    inc hl                                        ; $616D: $23
    ld [hl+], a                                   ; $616E: $22
    dec c                                         ; $616F: $0D
    jr nz, jr_03C_616C                            ; $6170: $20 $FA

    ld c, $08                                     ; $6172: $0E $08

jr_03C_6174:
    ld [hl+], a                                   ; $6174: $22
    ld [hl], b                                    ; $6175: $70
    inc hl                                        ; $6176: $23
    dec c                                         ; $6177: $0D
    jr nz, jr_03C_6174                            ; $6178: $20 $FA

    ld a, $FF                                     ; $617A: $3E $FF
    ld c, $10                                     ; $617C: $0E $10

jr_03C_617E:
    ld [hl+], a                                   ; $617E: $22
    dec c                                         ; $617F: $0D
    jr nz, jr_03C_617E                            ; $6180: $20 $FC

    ld hl, $C349                                  ; $6182: $21 $49 $C3
    ld de, $9000                                  ; $6185: $11 $00 $90
    ld b, $04                                     ; $6188: $06 $04
    call Call_000_1188                            ; $618A: $CD $88 $11
    ld a, [$C333]                                 ; $618D: $FA $33 $C3
    add a                                         ; $6190: $87
    ld e, a                                       ; $6191: $5F
    ld d, $00                                     ; $6192: $16 $00
    ld hl, $6C0E                                  ; $6194: $21 $0E $6C
    add hl, de                                    ; $6197: $19
    ld c, [hl]                                    ; $6198: $4E
    inc hl                                        ; $6199: $23
    ld b, [hl]                                    ; $619A: $46
    push bc                                       ; $619B: $C5
    call Call_03C_6358                            ; $619C: $CD $58 $63
    ld de, $9100                                  ; $619F: $11 $00 $91
    ld hl, $C929                                  ; $61A2: $21 $29 $C9
    ld b, $24                                     ; $61A5: $06 $24
    call Call_000_1188                            ; $61A7: $CD $88 $11
    pop bc                                        ; $61AA: $C1
    ld hl, $0012                                  ; $61AB: $21 $12 $00
    add hl, bc                                    ; $61AE: $09
    ld c, l                                       ; $61AF: $4D
    ld b, h                                       ; $61B0: $44
    push bc                                       ; $61B1: $C5
    call Call_03C_6358                            ; $61B2: $CD $58 $63
    ld de, $9340                                  ; $61B5: $11 $40 $93
    ld hl, $C929                                  ; $61B8: $21 $29 $C9
    ld b, $24                                     ; $61BB: $06 $24
    call Call_000_1188                            ; $61BD: $CD $88 $11
    pop bc                                        ; $61C0: $C1
    ld hl, $0012                                  ; $61C1: $21 $12 $00
    add hl, bc                                    ; $61C4: $09
    ld c, l                                       ; $61C5: $4D
    ld b, h                                       ; $61C6: $44
    call Call_03C_6358                            ; $61C7: $CD $58 $63
    ld de, $9580                                  ; $61CA: $11 $80 $95
    ld hl, $C929                                  ; $61CD: $21 $29 $C9
    ld b, $24                                     ; $61D0: $06 $24
    call Call_000_1188                            ; $61D2: $CD $88 $11
    ld e, $00                                     ; $61D5: $1E $00
    ld d, $10                                     ; $61D7: $16 $10
    ld hl, $98A1                                  ; $61D9: $21 $A1 $98
    ld b, $12                                     ; $61DC: $06 $12
    ld c, $02                                     ; $61DE: $0E $02
    call Call_000_1139                            ; $61E0: $CD $39 $11
    ld e, $00                                     ; $61E3: $1E $00
    ld d, $34                                     ; $61E5: $16 $34
    ld hl, $98E1                                  ; $61E7: $21 $E1 $98
    ld b, $12                                     ; $61EA: $06 $12
    ld c, $02                                     ; $61EC: $0E $02
    call Call_000_1139                            ; $61EE: $CD $39 $11
    ld e, $00                                     ; $61F1: $1E $00
    ld d, $58                                     ; $61F3: $16 $58
    ld hl, $9921                                  ; $61F5: $21 $21 $99
    ld b, $12                                     ; $61F8: $06 $12
    ld c, $02                                     ; $61FA: $0E $02
    call Call_000_1139                            ; $61FC: $CD $39 $11
    ld a, [$C31A]                                 ; $61FF: $FA $1A $C3
    or a                                          ; $6202: $B7
    jr z, jr_03C_6208                             ; $6203: $28 $03

    call Call_03C_62D1                            ; $6205: $CD $D1 $62

jr_03C_6208:
    call Call_000_0F9E                            ; $6208: $CD $9E $0F
    ld de, $692B                                  ; $620B: $11 $2B $69
    ld a, [$C31B]                                 ; $620E: $FA $1B $C3
    or a                                          ; $6211: $B7
    jr z, jr_03C_6217                             ; $6212: $28 $03

    ld de, $69D1                                  ; $6214: $11 $D1 $69

jr_03C_6217:
    ld hl, $D740                                  ; $6217: $21 $40 $D7
    call Call_000_0F8E                            ; $621A: $CD $8E $0F
    ld a, [$C31B]                                 ; $621D: $FA $1B $C3
    or a                                          ; $6220: $B7
    jr nz, jr_03C_623A                            ; $6221: $20 $17

    ld e, $04                                     ; $6223: $1E $04
    ld a, [$C333]                                 ; $6225: $FA $33 $C3
    or a                                          ; $6228: $B7
    jr z, jr_03C_6233                             ; $6229: $28 $08

    ld e, $01                                     ; $622B: $1E $01
    cp $01                                        ; $622D: $FE $01
    jr nz, jr_03C_6233                            ; $622F: $20 $02

    ld e, $05                                     ; $6231: $1E $05

jr_03C_6233:
    ld a, e                                       ; $6233: $7B
    ld [$D742], a                                 ; $6234: $EA $42 $D7
    ld [$D743], a                                 ; $6237: $EA $43 $D7

jr_03C_623A:
    ld a, $87                                     ; $623A: $3E $87
    rst RST_18                                    ; $623C: $DF
    xor a                                         ; $623D: $AF
    ldh [rSTAT], a                                ; $623E: $E0 $41
    ei                                            ; $6240: $FB
    ld a, [$C31B]                                 ; $6241: $FA $1B $C3
    or a                                          ; $6244: $B7
    jr z, jr_03C_624E                             ; $6245: $28 $07

    ld a, $95                                     ; $6247: $3E $95
    call Call_000_135D                            ; $6249: $CD $5D $13
    jr jr_03C_6260                                ; $624C: $18 $12

jr_03C_624E:
    ld a, [$C333]                                 ; $624E: $FA $33 $C3
    or a                                          ; $6251: $B7
    jr z, jr_03C_625B                             ; $6252: $28 $07

    ld a, $8F                                     ; $6254: $3E $8F
    call Call_000_135D                            ; $6256: $CD $5D $13
    jr jr_03C_6260                                ; $6259: $18 $05

jr_03C_625B:
    ld a, $C1                                     ; $625B: $3E $C1
    call Call_000_1360                            ; $625D: $CD $60 $13

jr_03C_6260:
    call Call_000_0424                            ; $6260: $CD $24 $04
    ld a, $1B                                     ; $6263: $3E $1B
    ldh [rBGP], a                                 ; $6265: $E0 $47
    ldh [rOBP0], a                                ; $6267: $E0 $48
    ldh [rOBP1], a                                ; $6269: $E0 $49
    xor a                                         ; $626B: $AF
    ld [$C329], a                                 ; $626C: $EA $29 $C3
    ld [$C32A], a                                 ; $626F: $EA $2A $C3

jr_03C_6272:
    ld a, [$C31B]                                 ; $6272: $FA $1B $C3
    or a                                          ; $6275: $B7
    jr z, jr_03C_6285                             ; $6276: $28 $0D

    ld a, [$C329]                                 ; $6278: $FA $29 $C3
    cp $38                                        ; $627B: $FE $38
    jr c, jr_03C_6290                             ; $627D: $38 $11

    and $01                                       ; $627F: $E6 $01
    jr z, jr_03C_6290                             ; $6281: $28 $0D

    jr jr_03C_628C                                ; $6283: $18 $07

jr_03C_6285:
    ld a, [$C329]                                 ; $6285: $FA $29 $C3
    cp $D8                                        ; $6288: $FE $D8
    jr nc, jr_03C_6290                            ; $628A: $30 $04

jr_03C_628C:
    ld hl, $D744                                  ; $628C: $21 $44 $D7
    dec [hl]                                      ; $628F: $35

jr_03C_6290:
    ld hl, $D740                                  ; $6290: $21 $40 $D7
    call Call_000_0E28                            ; $6293: $CD $28 $0E
    ld hl, $C329                                  ; $6296: $21 $29 $C3
    ld e, [hl]                                    ; $6299: $5E
    inc hl                                        ; $629A: $23
    ld d, [hl]                                    ; $629B: $56
    inc de                                        ; $629C: $13
    ld [hl], d                                    ; $629D: $72
    dec hl                                        ; $629E: $2B
    ld [hl], e                                    ; $629F: $73
    call Call_000_0424                            ; $62A0: $CD $24 $04
    call Call_03C_6567                            ; $62A3: $CD $67 $65
    bit 4, a                                      ; $62A6: $CB $67
    jr z, jr_03C_6272                             ; $62A8: $28 $C8

Jump_03C_62AA:
    ld hl, $C03A                                  ; $62AA: $21 $3A $C0
    res 2, [hl]                                   ; $62AD: $CB $96
    ld a, $00                                     ; $62AF: $3E $00
    call Call_000_135D                            ; $62B1: $CD $5D $13
    call Call_000_0424                            ; $62B4: $CD $24 $04
    ld a, [$C002]                                 ; $62B7: $FA $02 $C0
    and $C0                                       ; $62BA: $E6 $C0
    cp $C0                                        ; $62BC: $FE $C0
    jr nz, jr_03C_62D0                            ; $62BE: $20 $10

    ld a, [$C001]                                 ; $62C0: $FA $01 $C0
    or $C2                                        ; $62C3: $F6 $C2
    ld [$C001], a                                 ; $62C5: $EA $01 $C0
    ld a, $FF                                     ; $62C8: $3E $FF
    ld [$C002], a                                 ; $62CA: $EA $02 $C0
    ld [$C003], a                                 ; $62CD: $EA $03 $C0

jr_03C_62D0:
    ret                                           ; $62D0: $C9


Call_03C_62D1:
    ld e, $02                                     ; $62D1: $1E $02
    ld d, $00                                     ; $62D3: $16 $00
    ld hl, $9822                                  ; $62D5: $21 $22 $98
    call Call_03C_633E                            ; $62D8: $CD $3E $63
    ld e, $03                                     ; $62DB: $1E $03
    ld d, $00                                     ; $62DD: $16 $00
    ld hl, $982A                                  ; $62DF: $21 $2A $98
    call Call_03C_633E                            ; $62E2: $CD $3E $63
    ld e, $04                                     ; $62E5: $1E $04
    ld d, $00                                     ; $62E7: $16 $00
    ld hl, $9862                                  ; $62E9: $21 $62 $98
    call Call_03C_633E                            ; $62EC: $CD $3E $63
    ld e, $05                                     ; $62EF: $1E $05
    ld d, $00                                     ; $62F1: $16 $00
    ld hl, $986A                                  ; $62F3: $21 $6A $98
    call Call_03C_633E                            ; $62F6: $CD $3E $63
    ld e, $06                                     ; $62F9: $1E $06
    ld d, $00                                     ; $62FB: $16 $00
    ld hl, $98A2                                  ; $62FD: $21 $A2 $98
    call Call_03C_633E                            ; $6300: $CD $3E $63
    ld e, $07                                     ; $6303: $1E $07
    ld d, $00                                     ; $6305: $16 $00
    ld hl, $98AA                                  ; $6307: $21 $AA $98
    call Call_03C_633E                            ; $630A: $CD $3E $63
    ld e, $00                                     ; $630D: $1E $00
    ld d, $00                                     ; $630F: $16 $00
    ld hl, $98E2                                  ; $6311: $21 $E2 $98
    call Call_03C_633E                            ; $6314: $CD $3E $63
    ld e, $01                                     ; $6317: $1E $01
    ld d, $00                                     ; $6319: $16 $00
    ld hl, $98EA                                  ; $631B: $21 $EA $98
    call Call_03C_633E                            ; $631E: $CD $3E $63
    ld e, $01                                     ; $6321: $1E $01
    ld d, $03                                     ; $6323: $16 $03
    ld hl, $98E8                                  ; $6325: $21 $E8 $98
    ld b, $02                                     ; $6328: $06 $02
    ld c, $02                                     ; $632A: $0E $02
    call Call_000_10EA                            ; $632C: $CD $EA $10
    ld e, $00                                     ; $632F: $1E $00
    ld d, $03                                     ; $6331: $16 $03
    ld hl, $98F0                                  ; $6333: $21 $F0 $98
    ld b, $02                                     ; $6336: $06 $02
    ld c, $02                                     ; $6338: $0E $02
    call Call_000_10EA                            ; $633A: $CD $EA $10
    ret                                           ; $633D: $C9


Call_03C_633E:
    ld c, $04                                     ; $633E: $0E $04

jr_03C_6340:
    push bc                                       ; $6340: $C5
    push de                                       ; $6341: $D5
    push hl                                       ; $6342: $E5
    ld b, $02                                     ; $6343: $06 $02
    ld c, $02                                     ; $6345: $0E $02
    call Call_000_10EA                            ; $6347: $CD $EA $10
    pop hl                                        ; $634A: $E1
    pop de                                        ; $634B: $D1
    pop bc                                        ; $634C: $C1
    inc hl                                        ; $634D: $23
    inc hl                                        ; $634E: $23
    inc d                                         ; $634F: $14
    ld a, $03                                     ; $6350: $3E $03
    and d                                         ; $6352: $A2
    ld d, a                                       ; $6353: $57
    dec c                                         ; $6354: $0D
    jr nz, jr_03C_6340                            ; $6355: $20 $E9

    ret                                           ; $6357: $C9


Call_03C_6358:
    ld hl, $C429                                  ; $6358: $21 $29 $C4
    ld de, $C529                                  ; $635B: $11 $29 $C5
    ld [hl], e                                    ; $635E: $73
    inc hl                                        ; $635F: $23
    ld [hl], d                                    ; $6360: $72
    inc hl                                        ; $6361: $23
    ld a, $12                                     ; $6362: $3E $12
    ld [hl+], a                                   ; $6364: $22
    ld e, $12                                     ; $6365: $1E $12

jr_03C_6367:
    ld a, [bc]                                    ; $6367: $0A
    inc bc                                        ; $6368: $03
    ld [hl+], a                                   ; $6369: $22
    dec e                                         ; $636A: $1D
    jr nz, jr_03C_6367                            ; $636B: $20 $FA

    jp Jump_03C_65A3                              ; $636D: $C3 $A3 $65


Call_03C_6370:
    ld a, [$C332]                                 ; $6370: $FA $32 $C3
    or a                                          ; $6373: $B7
    jr z, jr_03C_6391                             ; $6374: $28 $1B

    dec a                                         ; $6376: $3D
    ld [$C332], a                                 ; $6377: $EA $32 $C3
    jr nz, jr_03C_6391                            ; $637A: $20 $15

    xor a                                         ; $637C: $AF
    ld [$D7D4], a                                 ; $637D: $EA $D4 $D7
    ld a, $01                                     ; $6380: $3E $01
    ld [$D7DC], a                                 ; $6382: $EA $DC $D7
    ld [$D7DD], a                                 ; $6385: $EA $DD $D7
    ld de, $6780                                  ; $6388: $11 $80 $67
    ld hl, $D7D2                                  ; $638B: $21 $D2 $D7
    ld [hl], e                                    ; $638E: $73
    inc hl                                        ; $638F: $23
    ld [hl], d                                    ; $6390: $72

jr_03C_6391:
    ld a, [$C334]                                 ; $6391: $FA $34 $C3
    or a                                          ; $6394: $B7
    jr z, jr_03C_63B1                             ; $6395: $28 $1A

    ld d, a                                       ; $6397: $57
    ld a, [$C335]                                 ; $6398: $FA $35 $C3
    ld e, a                                       ; $639B: $5F
    ld a, [$C32B]                                 ; $639C: $FA $2B $C3
    add e                                         ; $639F: $83
    ld [$C32B], a                                 ; $63A0: $EA $2B $C3
    ld a, d                                       ; $63A3: $7A
    dec a                                         ; $63A4: $3D
    ld [$C334], a                                 ; $63A5: $EA $34 $C3
    jp nz, Jump_03C_6493                          ; $63A8: $C2 $93 $64

    call Call_03C_64BC                            ; $63AB: $CD $BC $64
    jp Jump_03C_6493                              ; $63AE: $C3 $93 $64


jr_03C_63B1:
    call Call_03C_6567                            ; $63B1: $CD $67 $65
    ld [$C336], a                                 ; $63B4: $EA $36 $C3
    bit 3, b                                      ; $63B7: $CB $58
    jp nz, Jump_03C_644E                          ; $63B9: $C2 $4E $64

    bit 2, b                                      ; $63BC: $CB $50
    jp nz, Jump_03C_6471                          ; $63BE: $C2 $71 $64

    bit 1, b                                      ; $63C1: $CB $48
    jr nz, jr_03C_6440                            ; $63C3: $20 $7B

    bit 0, b                                      ; $63C5: $CB $40
    jr nz, jr_03C_6432                            ; $63C7: $20 $69

    bit 4, b                                      ; $63C9: $CB $60
    jr nz, jr_03C_6404                            ; $63CB: $20 $37

    bit 5, b                                      ; $63CD: $CB $68
    jr nz, jr_03C_63D2                            ; $63CF: $20 $01

    ret                                           ; $63D1: $C9


jr_03C_63D2:
    ld a, [$C32C]                                 ; $63D2: $FA $2C $C3
    or a                                          ; $63D5: $B7
    ret z                                         ; $63D6: $C8

    ld c, $00                                     ; $63D7: $0E $00
    call Call_03C_64DC                            ; $63D9: $CD $DC $64
    ld a, [$C32C]                                 ; $63DC: $FA $2C $C3
    dec a                                         ; $63DF: $3D
    ld [$C32C], a                                 ; $63E0: $EA $2C $C3
    call Call_03C_64BC                            ; $63E3: $CD $BC $64
    ld a, $B6                                     ; $63E6: $3E $B6
    call Call_000_1360                            ; $63E8: $CD $60 $13

jr_03C_63EB:
    ld a, [$C32C]                                 ; $63EB: $FA $2C $C3
    add a                                         ; $63EE: $87
    ld hl, $64B4                                  ; $63EF: $21 $B4 $64
    ld e, a                                       ; $63F2: $5F
    ld d, $00                                     ; $63F3: $16 $00
    add hl, de                                    ; $63F5: $19
    ld e, [hl]                                    ; $63F6: $5E
    inc hl                                        ; $63F7: $23
    ld d, [hl]                                    ; $63F8: $56
    ld hl, $D812                                  ; $63F9: $21 $12 $D8
    ld [hl], e                                    ; $63FC: $73
    inc hl                                        ; $63FD: $23
    ld [hl], d                                    ; $63FE: $72
    xor a                                         ; $63FF: $AF
    ld [$D814], a                                 ; $6400: $EA $14 $D8
    ret                                           ; $6403: $C9


jr_03C_6404:
    ld a, $09                                     ; $6404: $3E $09
    ld [$C332], a                                 ; $6406: $EA $32 $C3
    xor a                                         ; $6409: $AF
    ld [$D7D4], a                                 ; $640A: $EA $D4 $D7
    ld [$D7DC], a                                 ; $640D: $EA $DC $D7
    ld [$D7DD], a                                 ; $6410: $EA $DD $D7
    ld de, $67AE                                  ; $6413: $11 $AE $67
    ld hl, $D7D2                                  ; $6416: $21 $D2 $D7
    ld [hl], e                                    ; $6419: $73
    inc hl                                        ; $641A: $23
    ld [hl], d                                    ; $641B: $72
    ld a, $AD                                     ; $641C: $3E $AD
    call Call_000_1360                            ; $641E: $CD $60 $13
    ld a, [$C32C]                                 ; $6421: $FA $2C $C3
    inc a                                         ; $6424: $3C
    ld [$C32C], a                                 ; $6425: $EA $2C $C3
    cp $03                                        ; $6428: $FE $03
    jp nc, Jump_03C_6430                          ; $642A: $D2 $30 $64

    call Call_03C_64BC                            ; $642D: $CD $BC $64

Jump_03C_6430:
    jr jr_03C_63EB                                ; $6430: $18 $B9

jr_03C_6432:
    ld a, [$C32D]                                 ; $6432: $FA $2D $C3
    add $01                                       ; $6435: $C6 $01
    cp $0B                                        ; $6437: $FE $0B
    jp c, Jump_03C_6449                           ; $6439: $DA $49 $64

    ld a, $0A                                     ; $643C: $3E $0A
    jr jr_03C_6449                                ; $643E: $18 $09

jr_03C_6440:
    ld a, [$C32D]                                 ; $6440: $FA $2D $C3
    sub $01                                       ; $6443: $D6 $01
    jp nc, Jump_03C_6449                          ; $6445: $D2 $49 $64

    xor a                                         ; $6448: $AF

Jump_03C_6449:
jr_03C_6449:
    ld [$C32D], a                                 ; $6449: $EA $2D $C3
    jr jr_03C_6490                                ; $644C: $18 $42

Jump_03C_644E:
    ld a, [$C32E]                                 ; $644E: $FA $2E $C3
    add $01                                       ; $6451: $C6 $01
    cp $04                                        ; $6453: $FE $04
    jp c, Jump_03C_648D                           ; $6455: $DA $8D $64

    ld a, [$C32B]                                 ; $6458: $FA $2B $C3
    cp $31                                        ; $645B: $FE $31
    jr c, jr_03C_6463                             ; $645D: $38 $04

    ld a, $03                                     ; $645F: $3E $03
    jr jr_03C_648D                                ; $6461: $18 $2A

jr_03C_6463:
    ld a, $04                                     ; $6463: $3E $04
    ld [$C334], a                                 ; $6465: $EA $34 $C3
    ld a, $04                                     ; $6468: $3E $04
    ld [$C335], a                                 ; $646A: $EA $35 $C3
    ld a, $03                                     ; $646D: $3E $03
    jr jr_03C_648D                                ; $646F: $18 $1C

Jump_03C_6471:
    ld a, [$C32E]                                 ; $6471: $FA $2E $C3
    sub $01                                       ; $6474: $D6 $01
    jp nc, Jump_03C_648D                          ; $6476: $D2 $8D $64

    ld a, [$C32B]                                 ; $6479: $FA $2B $C3
    or a                                          ; $647C: $B7
    jr nz, jr_03C_6482                            ; $647D: $20 $03

    xor a                                         ; $647F: $AF
    jr jr_03C_648D                                ; $6480: $18 $0B

jr_03C_6482:
    ld a, $04                                     ; $6482: $3E $04
    ld [$C334], a                                 ; $6484: $EA $34 $C3
    ld a, $FC                                     ; $6487: $3E $FC
    ld [$C335], a                                 ; $6489: $EA $35 $C3
    xor a                                         ; $648C: $AF

Jump_03C_648D:
jr_03C_648D:
    ld [$C32E], a                                 ; $648D: $EA $2E $C3

jr_03C_6490:
    call Call_03C_64BC                            ; $6490: $CD $BC $64

Call_03C_6493:
Jump_03C_6493:
    ld a, [$C32D]                                 ; $6493: $FA $2D $C3
    ld e, a                                       ; $6496: $5F
    add a                                         ; $6497: $87
    add e                                         ; $6498: $83
    add a                                         ; $6499: $87
    add a                                         ; $649A: $87
    add $0E                                       ; $649B: $C6 $0E
    ld [$D7C4], a                                 ; $649D: $EA $C4 $D7
    ld a, [$C32E]                                 ; $64A0: $FA $2E $C3
    add a                                         ; $64A3: $87
    add a                                         ; $64A4: $87
    add a                                         ; $64A5: $87
    add a                                         ; $64A6: $87
    add $54                                       ; $64A7: $C6 $54
    ld [$D7C6], a                                 ; $64A9: $EA $C6 $D7
    ld a, [$C32B]                                 ; $64AC: $FA $2B $C3
    add $CC                                       ; $64AF: $C6 $CC
    ldh [$FFE2], a                                ; $64B1: $E0 $E2
    ret                                           ; $64B3: $C9


    cp h                                          ; $64B4: $BC
    ld h, [hl]                                    ; $64B5: $66
    jp z, $D866                                   ; $64B6: $CA $66 $D8

    ld h, [hl]                                    ; $64B9: $66
    and $66                                       ; $64BA: $E6 $66

Call_03C_64BC:
    ld a, [$C32D]                                 ; $64BC: $FA $2D $C3
    add a                                         ; $64BF: $87
    add a                                         ; $64C0: $87
    add a                                         ; $64C1: $87
    ld d, a                                       ; $64C2: $57
    ld a, [$C32E]                                 ; $64C3: $FA $2E $C3
    ld e, a                                       ; $64C6: $5F
    ld a, [$C32B]                                 ; $64C7: $FA $2B $C3
    srl a                                         ; $64CA: $CB $3F
    srl a                                         ; $64CC: $CB $3F
    srl a                                         ; $64CE: $CB $3F
    srl a                                         ; $64D0: $CB $3F
    add e                                         ; $64D2: $83
    add d                                         ; $64D3: $82
    ld e, a                                       ; $64D4: $5F
    ld d, $00                                     ; $64D5: $16 $00
    ld hl, $6AC6                                  ; $64D7: $21 $C6 $6A
    add hl, de                                    ; $64DA: $19
    ld c, [hl]                                    ; $64DB: $4E

Call_03C_64DC:
    ld a, [$C32C]                                 ; $64DC: $FA $2C $C3
    ld e, a                                       ; $64DF: $5F
    ld d, $00                                     ; $64E0: $16 $00
    ld hl, $C32F                                  ; $64E2: $21 $2F $C3
    add hl, de                                    ; $64E5: $19
    ld [hl], c                                    ; $64E6: $71
    ld hl, $C429                                  ; $64E7: $21 $29 $C4
    ld de, $C529                                  ; $64EA: $11 $29 $C5
    ld [hl], e                                    ; $64ED: $73
    inc hl                                        ; $64EE: $23
    ld [hl], d                                    ; $64EF: $72
    inc hl                                        ; $64F0: $23
    ld a, $03                                     ; $64F1: $3E $03
    ld [hl+], a                                   ; $64F3: $22
    ld [hl], c                                    ; $64F4: $71
    inc hl                                        ; $64F5: $23
    xor a                                         ; $64F6: $AF
    ld [hl+], a                                   ; $64F7: $22
    ld [hl+], a                                   ; $64F8: $22
    ld de, $C429                                  ; $64F9: $11 $29 $C4
    ld hl, $C312                                  ; $64FC: $21 $12 $C3
    ld [hl], e                                    ; $64FF: $73
    inc hl                                        ; $6500: $23
    ld [hl], d                                    ; $6501: $72
    ld b, $36                                     ; $6502: $06 $36
    ld hl, $4000                                  ; $6504: $21 $00 $40
    rst RST_08                                    ; $6507: $CF
    ld c, $03                                     ; $6508: $0E $03
    ld de, $C529                                  ; $650A: $11 $29 $C5
    ld hl, $C929                                  ; $650D: $21 $29 $C9

Jump_03C_6510:
    xor a                                         ; $6510: $AF
    ld [hl+], a                                   ; $6511: $22
    ld [hl+], a                                   ; $6512: $22
    ld [hl+], a                                   ; $6513: $22
    ld [hl+], a                                   ; $6514: $22
    ld [hl+], a                                   ; $6515: $22
    ld [hl+], a                                   ; $6516: $22
    ld [hl+], a                                   ; $6517: $22
    ld [hl+], a                                   ; $6518: $22
    ld a, [de]                                    ; $6519: $1A
    inc de                                        ; $651A: $13
    ld [hl+], a                                   ; $651B: $22
    ld [hl+], a                                   ; $651C: $22
    ld a, [de]                                    ; $651D: $1A
    inc de                                        ; $651E: $13
    ld [hl+], a                                   ; $651F: $22
    ld [hl+], a                                   ; $6520: $22
    ld a, [de]                                    ; $6521: $1A
    inc de                                        ; $6522: $13
    ld [hl+], a                                   ; $6523: $22
    ld [hl+], a                                   ; $6524: $22
    ld a, [de]                                    ; $6525: $1A
    inc de                                        ; $6526: $13
    ld [hl+], a                                   ; $6527: $22
    ld [hl+], a                                   ; $6528: $22
    ld a, [de]                                    ; $6529: $1A
    inc de                                        ; $652A: $13
    ld [hl+], a                                   ; $652B: $22
    ld [hl+], a                                   ; $652C: $22
    ld a, [de]                                    ; $652D: $1A
    inc de                                        ; $652E: $13
    ld [hl+], a                                   ; $652F: $22
    ld [hl+], a                                   ; $6530: $22
    ld a, [de]                                    ; $6531: $1A
    inc de                                        ; $6532: $13
    ld [hl+], a                                   ; $6533: $22
    ld [hl+], a                                   ; $6534: $22
    ld a, [de]                                    ; $6535: $1A
    inc de                                        ; $6536: $13
    ld [hl+], a                                   ; $6537: $22
    ld [hl+], a                                   ; $6538: $22
    ld a, [de]                                    ; $6539: $1A
    inc de                                        ; $653A: $13
    ld [hl+], a                                   ; $653B: $22
    ld [hl+], a                                   ; $653C: $22
    ld a, [de]                                    ; $653D: $1A
    inc de                                        ; $653E: $13
    ld [hl+], a                                   ; $653F: $22
    ld [hl+], a                                   ; $6540: $22
    ld a, [de]                                    ; $6541: $1A
    inc de                                        ; $6542: $13
    ld [hl+], a                                   ; $6543: $22
    ld [hl+], a                                   ; $6544: $22
    ld a, [de]                                    ; $6545: $1A
    inc de                                        ; $6546: $13
    ld [hl+], a                                   ; $6547: $22
    ld [hl+], a                                   ; $6548: $22
    dec c                                         ; $6549: $0D
    jp nz, Jump_03C_6510                          ; $654A: $C2 $10 $65

    ld de, $8340                                  ; $654D: $11 $40 $83
    ld a, [$C32C]                                 ; $6550: $FA $2C $C3
    and $03                                       ; $6553: $E6 $03
    swap a                                        ; $6555: $CB $37
    add a                                         ; $6557: $87
    add a                                         ; $6558: $87
    add e                                         ; $6559: $83
    jr nc, jr_03C_655D                            ; $655A: $30 $01

    inc d                                         ; $655C: $14

jr_03C_655D:
    ld e, a                                       ; $655D: $5F
    ld hl, $C929                                  ; $655E: $21 $29 $C9
    ld b, $04                                     ; $6561: $06 $04
    call Call_000_11C2                            ; $6563: $CD $C2 $11
    ret                                           ; $6566: $C9


Call_03C_6567:
    ld a, [$C2D0]                                 ; $6567: $FA $D0 $C2
    cp $00                                        ; $656A: $FE $00
    jp nz, Jump_03C_6575                          ; $656C: $C2 $75 $65

    ld hl, $FF98                                  ; $656F: $21 $98 $FF
    jp Jump_03C_6578                              ; $6572: $C3 $78 $65


Jump_03C_6575:
    ld hl, $FFAB                                  ; $6575: $21 $AB $FF

Jump_03C_6578:
    ld a, [hl]                                    ; $6578: $7E
    or a                                          ; $6579: $B7
    jp z, Jump_03C_657E                           ; $657A: $CA $7E $65

    xor a                                         ; $657D: $AF

Jump_03C_657E:
    inc hl                                        ; $657E: $23
    ld a, [hl]                                    ; $657F: $7E
    push af                                       ; $6580: $F5
    inc hl                                        ; $6581: $23
    inc hl                                        ; $6582: $23
    ld b, $00                                     ; $6583: $06 $00
    ld c, $08                                     ; $6585: $0E $08

Jump_03C_6587:
    ld a, [hl+]                                   ; $6587: $2A
    inc hl                                        ; $6588: $23
    cp $01                                        ; $6589: $FE $01
    jp nz, Jump_03C_6590                          ; $658B: $C2 $90 $65

    set 7, b                                      ; $658E: $CB $F8

Jump_03C_6590:
    rlc b                                         ; $6590: $CB $00
    dec c                                         ; $6592: $0D
    jp nz, Jump_03C_6587                          ; $6593: $C2 $87 $65

    pop af                                        ; $6596: $F1
    ret                                           ; $6597: $C9


Call_03C_6598:
    ld a, $09                                     ; $6598: $3E $09
    ld [hl+], a                                   ; $659A: $22
    ld c, a                                       ; $659B: $4F

Jump_03C_659C:
    ld a, [de]                                    ; $659C: $1A
    inc de                                        ; $659D: $13
    ld [hl+], a                                   ; $659E: $22
    dec c                                         ; $659F: $0D
    jp nz, Jump_03C_659C                          ; $65A0: $C2 $9C $65

Jump_03C_65A3:
    ld de, $C429                                  ; $65A3: $11 $29 $C4
    ld hl, $C312                                  ; $65A6: $21 $12 $C3
    ld [hl], e                                    ; $65A9: $73
    inc hl                                        ; $65AA: $23
    ld [hl], d                                    ; $65AB: $72
    ld b, $36                                     ; $65AC: $06 $36
    ld hl, $4000                                  ; $65AE: $21 $00 $40
    rst RST_08                                    ; $65B1: $CF
    ld a, [$C42B]                                 ; $65B2: $FA $2B $C4
    add a                                         ; $65B5: $87
    ld c, a                                       ; $65B6: $4F
    ld de, $C529                                  ; $65B7: $11 $29 $C5
    ld hl, $C929                                  ; $65BA: $21 $29 $C9

Jump_03C_65BD:
    xor a                                         ; $65BD: $AF
    ld [hl+], a                                   ; $65BE: $22
    ld [hl+], a                                   ; $65BF: $22
    ld [hl+], a                                   ; $65C0: $22
    ld [hl+], a                                   ; $65C1: $22
    ld a, [de]                                    ; $65C2: $1A
    inc de                                        ; $65C3: $13
    ld [hl+], a                                   ; $65C4: $22
    ld [hl+], a                                   ; $65C5: $22
    ld a, [de]                                    ; $65C6: $1A
    inc de                                        ; $65C7: $13
    ld [hl+], a                                   ; $65C8: $22
    ld [hl+], a                                   ; $65C9: $22
    ld a, [de]                                    ; $65CA: $1A
    inc de                                        ; $65CB: $13
    ld [hl+], a                                   ; $65CC: $22
    ld [hl+], a                                   ; $65CD: $22
    ld a, [de]                                    ; $65CE: $1A
    inc de                                        ; $65CF: $13
    ld [hl+], a                                   ; $65D0: $22
    ld [hl+], a                                   ; $65D1: $22
    ld a, [de]                                    ; $65D2: $1A
    inc de                                        ; $65D3: $13
    ld [hl+], a                                   ; $65D4: $22
    ld [hl+], a                                   ; $65D5: $22
    ld a, [de]                                    ; $65D6: $1A
    inc de                                        ; $65D7: $13
    ld [hl+], a                                   ; $65D8: $22
    ld [hl+], a                                   ; $65D9: $22
    ld a, [de]                                    ; $65DA: $1A
    inc de                                        ; $65DB: $13
    ld [hl+], a                                   ; $65DC: $22
    ld [hl+], a                                   ; $65DD: $22
    ld a, [de]                                    ; $65DE: $1A
    inc de                                        ; $65DF: $13
    ld [hl+], a                                   ; $65E0: $22
    ld [hl+], a                                   ; $65E1: $22
    ld a, [de]                                    ; $65E2: $1A
    inc de                                        ; $65E3: $13
    ld [hl+], a                                   ; $65E4: $22
    ld [hl+], a                                   ; $65E5: $22
    ld a, [de]                                    ; $65E6: $1A
    inc de                                        ; $65E7: $13
    ld [hl+], a                                   ; $65E8: $22
    ld [hl+], a                                   ; $65E9: $22
    ld a, [de]                                    ; $65EA: $1A
    inc de                                        ; $65EB: $13
    ld [hl+], a                                   ; $65EC: $22
    ld [hl+], a                                   ; $65ED: $22
    ld a, [de]                                    ; $65EE: $1A
    inc de                                        ; $65EF: $13
    ld [hl+], a                                   ; $65F0: $22
    ld [hl+], a                                   ; $65F1: $22
    xor a                                         ; $65F2: $AF
    ld [hl+], a                                   ; $65F3: $22
    ld [hl+], a                                   ; $65F4: $22
    ld [hl+], a                                   ; $65F5: $22
    ld [hl+], a                                   ; $65F6: $22
    dec c                                         ; $65F7: $0D
    jp nz, Jump_03C_65BD                          ; $65F8: $C2 $BD $65

    ret                                           ; $65FB: $C9


    nop                                           ; $65FC: $00
    nop                                           ; $65FD: $00
    nop                                           ; $65FE: $00
    nop                                           ; $65FF: $00
    nop                                           ; $6600: $00
    nop                                           ; $6601: $00
    nop                                           ; $6602: $00
    nop                                           ; $6603: $00
    nop                                           ; $6604: $00
    nop                                           ; $6605: $00
    nop                                           ; $6606: $00
    nop                                           ; $6607: $00
    nop                                           ; $6608: $00
    nop                                           ; $6609: $00
    nop                                           ; $660A: $00
    nop                                           ; $660B: $00
    add b                                         ; $660C: $80
    nop                                           ; $660D: $00
    nop                                           ; $660E: $00
    nop                                           ; $660F: $00
    inc [hl]                                      ; $6610: $34
    nop                                           ; $6611: $00
    inc e                                         ; $6612: $1C
    nop                                           ; $6613: $00
    nop                                           ; $6614: $00
    nop                                           ; $6615: $00
    nop                                           ; $6616: $00
    nop                                           ; $6617: $00
    nop                                           ; $6618: $00
    nop                                           ; $6619: $00
    jr nz, jr_03C_661C                            ; $661A: $20 $00

jr_03C_661C:
    add b                                         ; $661C: $80
    inc a                                         ; $661D: $3C
    inc l                                         ; $661E: $2C
    ld h, [hl]                                    ; $661F: $66
    nop                                           ; $6620: $00
    nop                                           ; $6621: $00
    inc l                                         ; $6622: $2C
    ld h, [hl]                                    ; $6623: $66
    nop                                           ; $6624: $00
    nop                                           ; $6625: $00
    nop                                           ; $6626: $00
    nop                                           ; $6627: $00
    rlca                                          ; $6628: $07
    rlca                                          ; $6629: $07
    ret nz                                        ; $662A: $C0

    ret c                                         ; $662B: $D8

    ld e, [hl]                                    ; $662C: $5E
    ld h, [hl]                                    ; $662D: $66
    rst RST_38                                    ; $662E: $FF
    rst RST_38                                    ; $662F: $FF
    ld e, [hl]                                    ; $6630: $5E
    ld h, [hl]                                    ; $6631: $66
    rst RST_38                                    ; $6632: $FF
    rst RST_38                                    ; $6633: $FF
    ld e, [hl]                                    ; $6634: $5E
    ld h, [hl]                                    ; $6635: $66
    rst RST_38                                    ; $6636: $FF
    rst RST_38                                    ; $6637: $FF
    ld a, [hl]                                    ; $6638: $7E
    ld h, [hl]                                    ; $6639: $66
    rst RST_38                                    ; $663A: $FF
    rst RST_38                                    ; $663B: $FF
    ld a, [hl]                                    ; $663C: $7E
    ld h, [hl]                                    ; $663D: $66
    rst RST_38                                    ; $663E: $FF
    rst RST_38                                    ; $663F: $FF
    adc b                                         ; $6640: $88
    ld h, [hl]                                    ; $6641: $66
    rst RST_38                                    ; $6642: $FF
    rst RST_38                                    ; $6643: $FF
    sub d                                         ; $6644: $92
    ld h, [hl]                                    ; $6645: $66
    rst RST_38                                    ; $6646: $FF
    rst RST_38                                    ; $6647: $FF
    sub d                                         ; $6648: $92
    ld h, [hl]                                    ; $6649: $66
    rst RST_38                                    ; $664A: $FF
    rst RST_38                                    ; $664B: $FF
    sub d                                         ; $664C: $92
    ld h, [hl]                                    ; $664D: $66
    rst RST_38                                    ; $664E: $FF
    rst RST_38                                    ; $664F: $FF
    adc b                                         ; $6650: $88
    ld h, [hl]                                    ; $6651: $66
    rst RST_38                                    ; $6652: $FF
    rst RST_38                                    ; $6653: $FF
    adc b                                         ; $6654: $88
    ld h, [hl]                                    ; $6655: $66
    rst RST_38                                    ; $6656: $FF
    rst RST_38                                    ; $6657: $FF
    ld a, [hl]                                    ; $6658: $7E
    ld h, [hl]                                    ; $6659: $66
    rst RST_38                                    ; $665A: $FF
    rst RST_38                                    ; $665B: $FF
    rst RST_38                                    ; $665C: $FF
    rst RST_38                                    ; $665D: $FF
    sub b                                         ; $665E: $90
    nop                                           ; $665F: $00
    nop                                           ; $6660: $00
    rst RST_38                                    ; $6661: $FF
    rst RST_38                                    ; $6662: $FF
    rst RST_38                                    ; $6663: $FF
    ld l, b                                       ; $6664: $68
    ld h, [hl]                                    ; $6665: $66
    nop                                           ; $6666: $00
    nop                                           ; $6667: $00
    rlca                                          ; $6668: $07
    nop                                           ; $6669: $00
    nop                                           ; $666A: $00
    nop                                           ; $666B: $00
    nop                                           ; $666C: $00
    ld [$0002], sp                                ; $666D: $08 $02 $00
    db $10                                        ; $6670: $10
    inc b                                         ; $6671: $04
    nop                                           ; $6672: $00
    jr jr_03C_667B                                ; $6673: $18 $06

    nop                                           ; $6675: $00
    jr nz, jr_03C_6680                            ; $6676: $20 $08

    nop                                           ; $6678: $00
    jr z, jr_03C_6685                             ; $6679: $28 $0A

jr_03C_667B:
    nop                                           ; $667B: $00
    jr nc, jr_03C_668A                            ; $667C: $30 $0C

    sub b                                         ; $667E: $90
    nop                                           ; $667F: $00

jr_03C_6680:
    nop                                           ; $6680: $00
    rst RST_38                                    ; $6681: $FF
    rst RST_38                                    ; $6682: $FF
    rst RST_38                                    ; $6683: $FF
    ld l, b                                       ; $6684: $68

jr_03C_6685:
    ld h, [hl]                                    ; $6685: $66
    nop                                           ; $6686: $00
    rst RST_38                                    ; $6687: $FF
    sub b                                         ; $6688: $90
    nop                                           ; $6689: $00

jr_03C_668A:
    nop                                           ; $668A: $00
    rst RST_38                                    ; $668B: $FF
    rst RST_38                                    ; $668C: $FF
    rst RST_38                                    ; $668D: $FF
    ld l, b                                       ; $668E: $68
    ld h, [hl]                                    ; $668F: $66
    nop                                           ; $6690: $00
    cp $90                                        ; $6691: $FE $90
    nop                                           ; $6693: $00
    nop                                           ; $6694: $00
    rst RST_38                                    ; $6695: $FF
    rst RST_38                                    ; $6696: $FF
    rst RST_38                                    ; $6697: $FF
    ld l, b                                       ; $6698: $68
    ld h, [hl]                                    ; $6699: $66
    nop                                           ; $669A: $00
    db $FD                                        ; $669B: $FD
    add b                                         ; $669C: $80
    nop                                           ; $669D: $00
    inc bc                                        ; $669E: $03
    inc bc                                        ; $669F: $03
    jr c, jr_03C_66A2                             ; $66A0: $38 $00

jr_03C_66A2:
    inc [hl]                                      ; $66A2: $34
    nop                                           ; $66A3: $00
    nop                                           ; $66A4: $00
    nop                                           ; $66A5: $00
    nop                                           ; $66A6: $00
    nop                                           ; $66A7: $00
    nop                                           ; $66A8: $00
    nop                                           ; $66A9: $00
    ld l, $00                                     ; $66AA: $2E $00
    add b                                         ; $66AC: $80
    inc a                                         ; $66AD: $3C
    cp h                                          ; $66AE: $BC
    ld h, [hl]                                    ; $66AF: $66
    nop                                           ; $66B0: $00
    nop                                           ; $66B1: $00
    cp h                                          ; $66B2: $BC
    ld h, [hl]                                    ; $66B3: $66
    nop                                           ; $66B4: $00
    nop                                           ; $66B5: $00
    nop                                           ; $66B6: $00
    nop                                           ; $66B7: $00
    ld [$C008], sp                                ; $66B8: $08 $08 $C0
    ret c                                         ; $66BB: $D8

    db $EC                                        ; $66BC: $EC
    ld h, [hl]                                    ; $66BD: $66
    rst RST_38                                    ; $66BE: $FF
    rst RST_38                                    ; $66BF: $FF
    db $EC                                        ; $66C0: $EC
    ld h, [hl]                                    ; $66C1: $66
    rst RST_38                                    ; $66C2: $FF
    rst RST_38                                    ; $66C3: $FF
    add hl, bc                                    ; $66C4: $09
    ld h, a                                       ; $66C5: $67
    rst RST_38                                    ; $66C6: $FF
    rst RST_38                                    ; $66C7: $FF
    rst RST_38                                    ; $66C8: $FF
    rst RST_38                                    ; $66C9: $FF
    add hl, bc                                    ; $66CA: $09
    ld h, a                                       ; $66CB: $67
    rst RST_38                                    ; $66CC: $FF
    rst RST_38                                    ; $66CD: $FF
    add hl, bc                                    ; $66CE: $09
    ld h, a                                       ; $66CF: $67
    rst RST_38                                    ; $66D0: $FF
    rst RST_38                                    ; $66D1: $FF
    ld h, $67                                     ; $66D2: $26 $67
    rst RST_38                                    ; $66D4: $FF
    rst RST_38                                    ; $66D5: $FF
    rst RST_38                                    ; $66D6: $FF
    rst RST_38                                    ; $66D7: $FF
    ld h, $67                                     ; $66D8: $26 $67
    rst RST_38                                    ; $66DA: $FF
    rst RST_38                                    ; $66DB: $FF
    ld h, $67                                     ; $66DC: $26 $67
    rst RST_38                                    ; $66DE: $FF
    rst RST_38                                    ; $66DF: $FF
    ld b, e                                       ; $66E0: $43
    ld h, a                                       ; $66E1: $67
    rst RST_38                                    ; $66E2: $FF
    rst RST_38                                    ; $66E3: $FF
    rst RST_38                                    ; $66E4: $FF
    rst RST_38                                    ; $66E5: $FF
    ld b, e                                       ; $66E6: $43
    ld h, a                                       ; $66E7: $67
    rst RST_38                                    ; $66E8: $FF
    rst RST_38                                    ; $66E9: $FF
    rst RST_38                                    ; $66EA: $FF
    rst RST_38                                    ; $66EB: $FF
    sub b                                         ; $66EC: $90
    nop                                           ; $66ED: $00
    nop                                           ; $66EE: $00
    rst RST_38                                    ; $66EF: $FF
    rst RST_38                                    ; $66F0: $FF
    rst RST_38                                    ; $66F1: $FF
    or $66                                        ; $66F2: $F6 $66
    nop                                           ; $66F4: $00
    nop                                           ; $66F5: $00
    ld b, $00                                     ; $66F6: $06 $00
    nop                                           ; $66F8: $00
    nop                                           ; $66F9: $00
    nop                                           ; $66FA: $00
    ld [$0040], sp                                ; $66FB: $08 $40 $00
    stop                                          ; $66FE: $10 $00
    nop                                           ; $6700: $00
    jr jr_03C_6743                                ; $6701: $18 $40

    nop                                           ; $6703: $00
    jr nz, jr_03C_6706                            ; $6704: $20 $00

jr_03C_6706:
    nop                                           ; $6706: $00
    jr z, jr_03C_6749                             ; $6707: $28 $40

    sub b                                         ; $6709: $90
    nop                                           ; $670A: $00
    nop                                           ; $670B: $00
    rst RST_38                                    ; $670C: $FF
    rst RST_38                                    ; $670D: $FF
    rst RST_38                                    ; $670E: $FF
    inc de                                        ; $670F: $13
    ld h, a                                       ; $6710: $67
    nop                                           ; $6711: $00
    nop                                           ; $6712: $00
    ld b, $00                                     ; $6713: $06 $00
    nop                                           ; $6715: $00
    ld [bc], a                                    ; $6716: $02
    nop                                           ; $6717: $00
    ld [$0042], sp                                ; $6718: $08 $42 $00
    stop                                          ; $671B: $10 $00
    nop                                           ; $671D: $00
    jr jr_03C_6760                                ; $671E: $18 $40

    nop                                           ; $6720: $00
    jr nz, jr_03C_6723                            ; $6721: $20 $00

jr_03C_6723:
    nop                                           ; $6723: $00
    jr z, jr_03C_6766                             ; $6724: $28 $40

    sub b                                         ; $6726: $90
    nop                                           ; $6727: $00
    nop                                           ; $6728: $00
    rst RST_38                                    ; $6729: $FF
    rst RST_38                                    ; $672A: $FF
    rst RST_38                                    ; $672B: $FF
    jr nc, jr_03C_6795                            ; $672C: $30 $67

    nop                                           ; $672E: $00
    nop                                           ; $672F: $00
    ld b, $00                                     ; $6730: $06 $00
    nop                                           ; $6732: $00
    ld [bc], a                                    ; $6733: $02
    nop                                           ; $6734: $00
    ld [$0042], sp                                ; $6735: $08 $42 $00
    db $10                                        ; $6738: $10
    ld [bc], a                                    ; $6739: $02
    nop                                           ; $673A: $00
    jr jr_03C_677F                                ; $673B: $18 $42

    nop                                           ; $673D: $00
    jr nz, jr_03C_6740                            ; $673E: $20 $00

jr_03C_6740:
    nop                                           ; $6740: $00
    jr z, jr_03C_6783                             ; $6741: $28 $40

jr_03C_6743:
    sub b                                         ; $6743: $90
    nop                                           ; $6744: $00
    nop                                           ; $6745: $00
    rst RST_38                                    ; $6746: $FF
    rst RST_38                                    ; $6747: $FF
    rst RST_38                                    ; $6748: $FF

jr_03C_6749:
    ld c, l                                       ; $6749: $4D
    ld h, a                                       ; $674A: $67
    nop                                           ; $674B: $00
    nop                                           ; $674C: $00
    ld b, $00                                     ; $674D: $06 $00
    nop                                           ; $674F: $00
    ld [bc], a                                    ; $6750: $02
    nop                                           ; $6751: $00
    ld [$0042], sp                                ; $6752: $08 $42 $00
    db $10                                        ; $6755: $10
    ld [bc], a                                    ; $6756: $02
    nop                                           ; $6757: $00
    jr jr_03C_679C                                ; $6758: $18 $42

    nop                                           ; $675A: $00
    jr nz, @+$04                                  ; $675B: $20 $02

    nop                                           ; $675D: $00
    jr z, jr_03C_67A2                             ; $675E: $28 $42

jr_03C_6760:
    add b                                         ; $6760: $80
    nop                                           ; $6761: $00
    nop                                           ; $6762: $00
    nop                                           ; $6763: $00
    ld c, $00                                     ; $6764: $0E $00

jr_03C_6766:
    ld d, h                                       ; $6766: $54
    nop                                           ; $6767: $00
    nop                                           ; $6768: $00
    nop                                           ; $6769: $00
    nop                                           ; $676A: $00
    nop                                           ; $676B: $00
    nop                                           ; $676C: $00
    nop                                           ; $676D: $00
    nop                                           ; $676E: $00
    nop                                           ; $676F: $00
    add b                                         ; $6770: $80
    inc a                                         ; $6771: $3C
    add b                                         ; $6772: $80
    ld h, a                                       ; $6773: $67
    nop                                           ; $6774: $00
    nop                                           ; $6775: $00
    add b                                         ; $6776: $80
    ld h, a                                       ; $6777: $67
    nop                                           ; $6778: $00
    nop                                           ; $6779: $00
    nop                                           ; $677A: $00
    nop                                           ; $677B: $00
    ld bc, $C001                                  ; $677C: $01 $01 $C0

jr_03C_677F:
    ret c                                         ; $677F: $D8

    ret c                                         ; $6780: $D8

    ld h, a                                       ; $6781: $67
    rst RST_38                                    ; $6782: $FF

jr_03C_6783:
    rst RST_38                                    ; $6783: $FF
    jp hl                                         ; $6784: $E9


    ld h, a                                       ; $6785: $67
    rst RST_38                                    ; $6786: $FF
    rst RST_38                                    ; $6787: $FF
    ld a, [$FF67]                                 ; $6788: $FA $67 $FF
    rst RST_38                                    ; $678B: $FF
    dec bc                                        ; $678C: $0B
    ld l, b                                       ; $678D: $68
    rst RST_38                                    ; $678E: $FF
    rst RST_38                                    ; $678F: $FF
    inc e                                         ; $6790: $1C
    ld l, b                                       ; $6791: $68
    rst RST_38                                    ; $6792: $FF
    rst RST_38                                    ; $6793: $FF
    dec l                                         ; $6794: $2D

jr_03C_6795:
    ld l, b                                       ; $6795: $68
    rst RST_38                                    ; $6796: $FF
    rst RST_38                                    ; $6797: $FF
    ld a, $68                                     ; $6798: $3E $68
    rst RST_38                                    ; $679A: $FF
    rst RST_38                                    ; $679B: $FF

jr_03C_679C:
    ld c, a                                       ; $679C: $4F
    ld l, b                                       ; $679D: $68
    rst RST_38                                    ; $679E: $FF
    rst RST_38                                    ; $679F: $FF
    ld h, b                                       ; $67A0: $60
    ld l, b                                       ; $67A1: $68

jr_03C_67A2:
    rst RST_38                                    ; $67A2: $FF
    rst RST_38                                    ; $67A3: $FF
    ld [hl], c                                    ; $67A4: $71
    ld l, b                                       ; $67A5: $68
    rst RST_38                                    ; $67A6: $FF
    rst RST_38                                    ; $67A7: $FF
    add d                                         ; $67A8: $82
    ld l, b                                       ; $67A9: $68
    rst RST_38                                    ; $67AA: $FF
    rst RST_38                                    ; $67AB: $FF
    rst RST_38                                    ; $67AC: $FF
    rst RST_38                                    ; $67AD: $FF
    sub e                                         ; $67AE: $93
    ld l, b                                       ; $67AF: $68
    rst RST_38                                    ; $67B0: $FF
    rst RST_38                                    ; $67B1: $FF
    and h                                         ; $67B2: $A4
    ld l, b                                       ; $67B3: $68
    rst RST_38                                    ; $67B4: $FF
    rst RST_38                                    ; $67B5: $FF
    or l                                          ; $67B6: $B5
    ld l, b                                       ; $67B7: $68
    rst RST_38                                    ; $67B8: $FF
    rst RST_38                                    ; $67B9: $FF
    add $68                                       ; $67BA: $C6 $68
    rst RST_38                                    ; $67BC: $FF
    rst RST_38                                    ; $67BD: $FF
    rst RST_10                                    ; $67BE: $D7
    ld l, b                                       ; $67BF: $68
    rst RST_38                                    ; $67C0: $FF
    rst RST_38                                    ; $67C1: $FF
    rst RST_10                                    ; $67C2: $D7
    ld l, b                                       ; $67C3: $68
    rst RST_38                                    ; $67C4: $FF
    rst RST_38                                    ; $67C5: $FF
    add $68                                       ; $67C6: $C6 $68
    rst RST_38                                    ; $67C8: $FF
    rst RST_38                                    ; $67C9: $FF
    or l                                          ; $67CA: $B5
    ld l, b                                       ; $67CB: $68
    rst RST_38                                    ; $67CC: $FF
    rst RST_38                                    ; $67CD: $FF
    and h                                         ; $67CE: $A4
    ld l, b                                       ; $67CF: $68
    rst RST_38                                    ; $67D0: $FF
    rst RST_38                                    ; $67D1: $FF
    sub e                                         ; $67D2: $93
    ld l, b                                       ; $67D3: $68
    rst RST_38                                    ; $67D4: $FF
    rst RST_38                                    ; $67D5: $FF
    rst RST_38                                    ; $67D6: $FF
    rst RST_38                                    ; $67D7: $FF
    sub b                                         ; $67D8: $90
    nop                                           ; $67D9: $00
    nop                                           ; $67DA: $00
    rst RST_38                                    ; $67DB: $FF
    rst RST_38                                    ; $67DC: $FF
    rst RST_38                                    ; $67DD: $FF
    ldh [c], a                                    ; $67DE: $E2
    ld h, a                                       ; $67DF: $67
    nop                                           ; $67E0: $00
    nop                                           ; $67E1: $00
    ld [bc], a                                    ; $67E2: $02
    nop                                           ; $67E3: $00
    nop                                           ; $67E4: $00
    nop                                           ; $67E5: $00
    nop                                           ; $67E6: $00
    ld [$90C0], sp                                ; $67E7: $08 $C0 $90
    nop                                           ; $67EA: $00
    nop                                           ; $67EB: $00
    rst RST_38                                    ; $67EC: $FF
    rst RST_38                                    ; $67ED: $FF
    rst RST_38                                    ; $67EE: $FF
    di                                            ; $67EF: $F3
    ld h, a                                       ; $67F0: $67
    nop                                           ; $67F1: $00
    nop                                           ; $67F2: $00
    ld [bc], a                                    ; $67F3: $02
    nop                                           ; $67F4: $00
    nop                                           ; $67F5: $00
    ld [bc], a                                    ; $67F6: $02
    nop                                           ; $67F7: $00
    ld [$90C2], sp                                ; $67F8: $08 $C2 $90
    nop                                           ; $67FB: $00
    nop                                           ; $67FC: $00
    rst RST_38                                    ; $67FD: $FF
    rst RST_38                                    ; $67FE: $FF
    rst RST_38                                    ; $67FF: $FF
    inc b                                         ; $6800: $04
    ld l, b                                       ; $6801: $68
    nop                                           ; $6802: $00
    nop                                           ; $6803: $00
    ld [bc], a                                    ; $6804: $02
    nop                                           ; $6805: $00
    nop                                           ; $6806: $00
    inc b                                         ; $6807: $04
    nop                                           ; $6808: $00
    ld [$90C4], sp                                ; $6809: $08 $C4 $90
    nop                                           ; $680C: $00
    nop                                           ; $680D: $00
    rst RST_38                                    ; $680E: $FF
    rst RST_38                                    ; $680F: $FF
    rst RST_38                                    ; $6810: $FF
    dec d                                         ; $6811: $15
    ld l, b                                       ; $6812: $68
    nop                                           ; $6813: $00
    nop                                           ; $6814: $00
    ld [bc], a                                    ; $6815: $02
    nop                                           ; $6816: $00
    nop                                           ; $6817: $00
    ld b, $00                                     ; $6818: $06 $00
    ld [$90C6], sp                                ; $681A: $08 $C6 $90
    nop                                           ; $681D: $00
    nop                                           ; $681E: $00
    rst RST_38                                    ; $681F: $FF
    rst RST_38                                    ; $6820: $FF
    rst RST_38                                    ; $6821: $FF
    ld h, $68                                     ; $6822: $26 $68
    nop                                           ; $6824: $00
    nop                                           ; $6825: $00
    ld [bc], a                                    ; $6826: $02
    nop                                           ; $6827: $00
    nop                                           ; $6828: $00
    ld [$0800], sp                                ; $6829: $08 $00 $08
    ret z                                         ; $682C: $C8

    sub b                                         ; $682D: $90
    nop                                           ; $682E: $00
    nop                                           ; $682F: $00
    rst RST_38                                    ; $6830: $FF
    rst RST_38                                    ; $6831: $FF
    rst RST_38                                    ; $6832: $FF
    scf                                           ; $6833: $37
    ld l, b                                       ; $6834: $68
    nop                                           ; $6835: $00
    nop                                           ; $6836: $00
    ld [bc], a                                    ; $6837: $02
    nop                                           ; $6838: $00
    nop                                           ; $6839: $00
    ld a, [bc]                                    ; $683A: $0A
    nop                                           ; $683B: $00
    ld [$90CA], sp                                ; $683C: $08 $CA $90
    nop                                           ; $683F: $00
    nop                                           ; $6840: $00
    rst RST_38                                    ; $6841: $FF
    rst RST_38                                    ; $6842: $FF
    rst RST_38                                    ; $6843: $FF
    ld c, b                                       ; $6844: $48
    ld l, b                                       ; $6845: $68
    nop                                           ; $6846: $00
    nop                                           ; $6847: $00
    ld [bc], a                                    ; $6848: $02
    nop                                           ; $6849: $00
    nop                                           ; $684A: $00
    inc c                                         ; $684B: $0C
    nop                                           ; $684C: $00
    ld [$90CC], sp                                ; $684D: $08 $CC $90
    nop                                           ; $6850: $00
    nop                                           ; $6851: $00
    rst RST_38                                    ; $6852: $FF
    rst RST_38                                    ; $6853: $FF
    rst RST_38                                    ; $6854: $FF
    ld e, c                                       ; $6855: $59
    ld l, b                                       ; $6856: $68
    nop                                           ; $6857: $00
    nop                                           ; $6858: $00
    ld [bc], a                                    ; $6859: $02
    nop                                           ; $685A: $00
    nop                                           ; $685B: $00
    ld c, $00                                     ; $685C: $0E $00
    ld [$90CE], sp                                ; $685E: $08 $CE $90
    nop                                           ; $6861: $00
    nop                                           ; $6862: $00
    rst RST_38                                    ; $6863: $FF
    rst RST_38                                    ; $6864: $FF
    rst RST_38                                    ; $6865: $FF
    ld l, d                                       ; $6866: $6A
    ld l, b                                       ; $6867: $68
    nop                                           ; $6868: $00
    nop                                           ; $6869: $00
    ld [bc], a                                    ; $686A: $02
    nop                                           ; $686B: $00
    nop                                           ; $686C: $00
    stop                                          ; $686D: $10 $00
    ld [$90D0], sp                                ; $686F: $08 $D0 $90
    nop                                           ; $6872: $00
    nop                                           ; $6873: $00
    rst RST_38                                    ; $6874: $FF
    rst RST_38                                    ; $6875: $FF
    rst RST_38                                    ; $6876: $FF
    ld a, e                                       ; $6877: $7B
    ld l, b                                       ; $6878: $68
    nop                                           ; $6879: $00
    nop                                           ; $687A: $00
    ld [bc], a                                    ; $687B: $02
    nop                                           ; $687C: $00
    nop                                           ; $687D: $00
    ld [de], a                                    ; $687E: $12
    nop                                           ; $687F: $00
    ld [$90D2], sp                                ; $6880: $08 $D2 $90
    nop                                           ; $6883: $00
    nop                                           ; $6884: $00
    rst RST_38                                    ; $6885: $FF
    rst RST_38                                    ; $6886: $FF
    rst RST_38                                    ; $6887: $FF
    adc h                                         ; $6888: $8C
    ld l, b                                       ; $6889: $68
    nop                                           ; $688A: $00
    nop                                           ; $688B: $00
    ld [bc], a                                    ; $688C: $02
    nop                                           ; $688D: $00
    nop                                           ; $688E: $00
    inc d                                         ; $688F: $14
    nop                                           ; $6890: $00
    ld [$90D4], sp                                ; $6891: $08 $D4 $90
    nop                                           ; $6894: $00
    nop                                           ; $6895: $00
    rst RST_38                                    ; $6896: $FF
    rst RST_38                                    ; $6897: $FF
    rst RST_38                                    ; $6898: $FF
    sbc l                                         ; $6899: $9D
    ld l, b                                       ; $689A: $68
    nop                                           ; $689B: $00
    nop                                           ; $689C: $00
    ld [bc], a                                    ; $689D: $02
    nop                                           ; $689E: $00
    nop                                           ; $689F: $00
    ld d, $00                                     ; $68A0: $16 $00
    ld [$90D6], sp                                ; $68A2: $08 $D6 $90
    nop                                           ; $68A5: $00
    nop                                           ; $68A6: $00
    rst RST_38                                    ; $68A7: $FF
    rst RST_38                                    ; $68A8: $FF
    rst RST_38                                    ; $68A9: $FF
    xor [hl]                                      ; $68AA: $AE
    ld l, b                                       ; $68AB: $68
    nop                                           ; $68AC: $00
    nop                                           ; $68AD: $00
    ld [bc], a                                    ; $68AE: $02
    nop                                           ; $68AF: $00
    nop                                           ; $68B0: $00
    jr jr_03C_68B3                                ; $68B1: $18 $00

jr_03C_68B3:
    ld [$90D8], sp                                ; $68B3: $08 $D8 $90
    nop                                           ; $68B6: $00
    nop                                           ; $68B7: $00
    rst RST_38                                    ; $68B8: $FF
    rst RST_38                                    ; $68B9: $FF
    rst RST_38                                    ; $68BA: $FF
    cp a                                          ; $68BB: $BF
    ld l, b                                       ; $68BC: $68
    nop                                           ; $68BD: $00
    nop                                           ; $68BE: $00
    ld [bc], a                                    ; $68BF: $02
    nop                                           ; $68C0: $00
    nop                                           ; $68C1: $00
    ld a, [de]                                    ; $68C2: $1A
    nop                                           ; $68C3: $00
    ld [$90DA], sp                                ; $68C4: $08 $DA $90
    nop                                           ; $68C7: $00
    nop                                           ; $68C8: $00
    rst RST_38                                    ; $68C9: $FF
    rst RST_38                                    ; $68CA: $FF
    rst RST_38                                    ; $68CB: $FF
    ret nc                                        ; $68CC: $D0

    ld l, b                                       ; $68CD: $68
    nop                                           ; $68CE: $00
    nop                                           ; $68CF: $00
    ld [bc], a                                    ; $68D0: $02
    nop                                           ; $68D1: $00
    nop                                           ; $68D2: $00
    inc e                                         ; $68D3: $1C
    nop                                           ; $68D4: $00
    ld [$90DC], sp                                ; $68D5: $08 $DC $90
    nop                                           ; $68D8: $00
    nop                                           ; $68D9: $00
    rst RST_38                                    ; $68DA: $FF
    rst RST_38                                    ; $68DB: $FF
    rst RST_38                                    ; $68DC: $FF
    pop hl                                        ; $68DD: $E1
    ld l, b                                       ; $68DE: $68
    nop                                           ; $68DF: $00
    nop                                           ; $68E0: $00
    ld [bc], a                                    ; $68E1: $02
    nop                                           ; $68E2: $00
    nop                                           ; $68E3: $00
    ld e, $00                                     ; $68E4: $1E $00
    ld [$80DE], sp                                ; $68E6: $08 $DE $80
    nop                                           ; $68E9: $00
    nop                                           ; $68EA: $00
    nop                                           ; $68EB: $00
    ld a, [hl-]                                   ; $68EC: $3A
    nop                                           ; $68ED: $00
    jr nc, jr_03C_68F0                            ; $68EE: $30 $00

jr_03C_68F0:
    nop                                           ; $68F0: $00
    nop                                           ; $68F1: $00
    nop                                           ; $68F2: $00
    nop                                           ; $68F3: $00
    nop                                           ; $68F4: $00
    nop                                           ; $68F5: $00
    inc [hl]                                      ; $68F6: $34
    nop                                           ; $68F7: $00
    add b                                         ; $68F8: $80
    inc a                                         ; $68F9: $3C
    ld [$0069], sp                                ; $68FA: $08 $69 $00
    nop                                           ; $68FD: $00
    ld [$0069], sp                                ; $68FE: $08 $69 $00
    nop                                           ; $6901: $00
    nop                                           ; $6902: $00
    nop                                           ; $6903: $00
    ld [$C008], sp                                ; $6904: $08 $08 $C0
    ret c                                         ; $6907: $D8

    ld c, $69                                     ; $6908: $0E $69
    rst RST_38                                    ; $690A: $FF
    rst RST_38                                    ; $690B: $FF
    rst RST_38                                    ; $690C: $FF
    rst RST_38                                    ; $690D: $FF
    sub b                                         ; $690E: $90
    nop                                           ; $690F: $00
    nop                                           ; $6910: $00
    rst RST_38                                    ; $6911: $FF
    rst RST_38                                    ; $6912: $FF
    rst RST_38                                    ; $6913: $FF
    jr jr_03C_697F                                ; $6914: $18 $69

    nop                                           ; $6916: $00
    nop                                           ; $6917: $00
    ld b, $00                                     ; $6918: $06 $00
    nop                                           ; $691A: $00
    nop                                           ; $691B: $00
    nop                                           ; $691C: $00
    ld [$0002], sp                                ; $691D: $08 $02 $00
    db $10                                        ; $6920: $10
    inc b                                         ; $6921: $04
    nop                                           ; $6922: $00
    jr jr_03C_692B                                ; $6923: $18 $06

    nop                                           ; $6925: $00
    jr nz, jr_03C_6930                            ; $6926: $20 $08

    nop                                           ; $6928: $00
    jr z, jr_03C_6935                             ; $6929: $28 $0A

jr_03C_692B:
    add b                                         ; $692B: $80
    nop                                           ; $692C: $00
    ld bc, $C001                                  ; $692D: $01 $01 $C0

jr_03C_6930:
    nop                                           ; $6930: $00
    sub b                                         ; $6931: $90
    nop                                           ; $6932: $00
    nop                                           ; $6933: $00
    nop                                           ; $6934: $00

jr_03C_6935:
    nop                                           ; $6935: $00
    nop                                           ; $6936: $00
    nop                                           ; $6937: $00
    nop                                           ; $6938: $00
    ld b, b                                       ; $6939: $40
    nop                                           ; $693A: $00
    add b                                         ; $693B: $80
    inc a                                         ; $693C: $3C
    ld c, e                                       ; $693D: $4B
    ld l, c                                       ; $693E: $69
    nop                                           ; $693F: $00
    nop                                           ; $6940: $00
    ld c, e                                       ; $6941: $4B
    ld l, c                                       ; $6942: $69
    nop                                           ; $6943: $00
    nop                                           ; $6944: $00
    nop                                           ; $6945: $00
    nop                                           ; $6946: $00
    inc bc                                        ; $6947: $03
    inc bc                                        ; $6948: $03
    ret nz                                        ; $6949: $C0

    ret c                                         ; $694A: $D8

    ld e, l                                       ; $694B: $5D
    ld l, c                                       ; $694C: $69
    rst RST_38                                    ; $694D: $FF
    rst RST_38                                    ; $694E: $FF
    ld a, d                                       ; $694F: $7A
    ld l, c                                       ; $6950: $69
    rst RST_38                                    ; $6951: $FF
    rst RST_38                                    ; $6952: $FF
    sub a                                         ; $6953: $97
    ld l, c                                       ; $6954: $69
    rst RST_38                                    ; $6955: $FF
    rst RST_38                                    ; $6956: $FF
    or h                                          ; $6957: $B4
    ld l, c                                       ; $6958: $69
    rst RST_38                                    ; $6959: $FF
    rst RST_38                                    ; $695A: $FF
    rst RST_38                                    ; $695B: $FF
    rst RST_38                                    ; $695C: $FF
    add b                                         ; $695D: $80
    nop                                           ; $695E: $00
    nop                                           ; $695F: $00
    rst RST_38                                    ; $6960: $FF
    rst RST_38                                    ; $6961: $FF
    rst RST_38                                    ; $6962: $FF
    ld h, a                                       ; $6963: $67
    ld l, c                                       ; $6964: $69
    nop                                           ; $6965: $00
    nop                                           ; $6966: $00
    ld b, $E8                                     ; $6967: $06 $E8
    db $F4                                        ; $6969: $F4
    nop                                           ; $696A: $00
    add sp, -$04                                  ; $696B: $E8 $FC
    ld [bc], a                                    ; $696D: $02
    add sp, $04                                   ; $696E: $E8 $04
    inc b                                         ; $6970: $04
    ld hl, sp-$0C                                 ; $6971: $F8 $F4
    ld b, $F8                                     ; $6973: $06 $F8
    db $FC                                        ; $6975: $FC
    ld [$04F8], sp                                ; $6976: $08 $F8 $04
    ld a, [bc]                                    ; $6979: $0A
    add b                                         ; $697A: $80
    nop                                           ; $697B: $00
    nop                                           ; $697C: $00
    rst RST_38                                    ; $697D: $FF
    rst RST_38                                    ; $697E: $FF

jr_03C_697F:
    rst RST_38                                    ; $697F: $FF
    add h                                         ; $6980: $84
    ld l, c                                       ; $6981: $69
    nop                                           ; $6982: $00
    nop                                           ; $6983: $00
    ld b, $E8                                     ; $6984: $06 $E8
    db $F4                                        ; $6986: $F4
    inc c                                         ; $6987: $0C
    add sp, -$04                                  ; $6988: $E8 $FC
    ld c, $E8                                     ; $698A: $0E $E8
    inc b                                         ; $698C: $04
    db $10                                        ; $698D: $10
    ld hl, sp-$0C                                 ; $698E: $F8 $F4
    ld [de], a                                    ; $6990: $12
    ld hl, sp-$04                                 ; $6991: $F8 $FC
    inc d                                         ; $6993: $14
    ld hl, sp+$04                                 ; $6994: $F8 $04
    ld d, $A0                                     ; $6996: $16 $A0
    nop                                           ; $6998: $00
    nop                                           ; $6999: $00
    rst RST_38                                    ; $699A: $FF
    rst RST_38                                    ; $699B: $FF
    rst RST_38                                    ; $699C: $FF
    and c                                         ; $699D: $A1
    ld l, c                                       ; $699E: $69
    nop                                           ; $699F: $00
    nop                                           ; $69A0: $00
    ld b, $E8                                     ; $69A1: $06 $E8
    db $F4                                        ; $69A3: $F4
    nop                                           ; $69A4: $00
    add sp, -$04                                  ; $69A5: $E8 $FC
    ld [bc], a                                    ; $69A7: $02
    add sp, $04                                   ; $69A8: $E8 $04
    inc b                                         ; $69AA: $04
    ld hl, sp-$0C                                 ; $69AB: $F8 $F4
    ld b, $F8                                     ; $69AD: $06 $F8
    db $FC                                        ; $69AF: $FC
    ld [$04F8], sp                                ; $69B0: $08 $F8 $04
    ld a, [bc]                                    ; $69B3: $0A
    and b                                         ; $69B4: $A0
    nop                                           ; $69B5: $00
    nop                                           ; $69B6: $00
    rst RST_38                                    ; $69B7: $FF
    rst RST_38                                    ; $69B8: $FF
    rst RST_38                                    ; $69B9: $FF
    cp [hl]                                       ; $69BA: $BE
    ld l, c                                       ; $69BB: $69
    nop                                           ; $69BC: $00
    nop                                           ; $69BD: $00
    ld b, $E8                                     ; $69BE: $06 $E8
    db $F4                                        ; $69C0: $F4
    inc c                                         ; $69C1: $0C
    add sp, -$04                                  ; $69C2: $E8 $FC
    ld c, $E8                                     ; $69C4: $0E $E8
    inc b                                         ; $69C6: $04
    db $10                                        ; $69C7: $10
    ld hl, sp-$0C                                 ; $69C8: $F8 $F4
    ld [de], a                                    ; $69CA: $12
    ld hl, sp-$04                                 ; $69CB: $F8 $FC
    inc d                                         ; $69CD: $14
    ld hl, sp+$04                                 ; $69CE: $F8 $04
    ld d, $80                                     ; $69D0: $16 $80
    nop                                           ; $69D2: $00
    ld [bc], a                                    ; $69D3: $02
    ld [bc], a                                    ; $69D4: $02
    jr nc, jr_03C_69D7                            ; $69D5: $30 $00

jr_03C_69D7:
    adc b                                         ; $69D7: $88
    nop                                           ; $69D8: $00
    nop                                           ; $69D9: $00
    nop                                           ; $69DA: $00
    nop                                           ; $69DB: $00
    nop                                           ; $69DC: $00
    nop                                           ; $69DD: $00
    nop                                           ; $69DE: $00
    ld e, b                                       ; $69DF: $58
    nop                                           ; $69E0: $00
    add b                                         ; $69E1: $80
    inc a                                         ; $69E2: $3C
    pop af                                        ; $69E3: $F1
    ld l, c                                       ; $69E4: $69
    nop                                           ; $69E5: $00
    nop                                           ; $69E6: $00
    pop af                                        ; $69E7: $F1
    ld l, c                                       ; $69E8: $69
    nop                                           ; $69E9: $00
    nop                                           ; $69EA: $00
    nop                                           ; $69EB: $00
    nop                                           ; $69EC: $00
    dec bc                                        ; $69ED: $0B
    dec bc                                        ; $69EE: $0B
    ret nz                                        ; $69EF: $C0

    ret c                                         ; $69F0: $D8

    inc bc                                        ; $69F1: $03
    ld l, d                                       ; $69F2: $6A
    rst RST_38                                    ; $69F3: $FF
    rst RST_38                                    ; $69F4: $FF
    ld b, h                                       ; $69F5: $44
    ld l, d                                       ; $69F6: $6A
    rst RST_38                                    ; $69F7: $FF
    rst RST_38                                    ; $69F8: $FF
    inc bc                                        ; $69F9: $03
    ld l, d                                       ; $69FA: $6A
    rst RST_38                                    ; $69FB: $FF
    rst RST_38                                    ; $69FC: $FF
    add l                                         ; $69FD: $85
    ld l, d                                       ; $69FE: $6A
    rst RST_38                                    ; $69FF: $FF
    rst RST_38                                    ; $6A00: $FF
    rst RST_38                                    ; $6A01: $FF
    rst RST_38                                    ; $6A02: $FF
    add b                                         ; $6A03: $80
    nop                                           ; $6A04: $00
    nop                                           ; $6A05: $00
    rst RST_38                                    ; $6A06: $FF
    rst RST_38                                    ; $6A07: $FF
    rst RST_38                                    ; $6A08: $FF
    dec c                                         ; $6A09: $0D
    ld l, d                                       ; $6A0A: $6A
    nop                                           ; $6A0B: $00
    nop                                           ; $6A0C: $00
    ld [de], a                                    ; $6A0D: $12
    add sp, -$0C                                  ; $6A0E: $E8 $F4
    nop                                           ; $6A10: $00
    add sp, -$04                                  ; $6A11: $E8 $FC
    ld [bc], a                                    ; $6A13: $02
    add sp, $04                                   ; $6A14: $E8 $04
    inc b                                         ; $6A16: $04
    ld hl, sp-$0C                                 ; $6A17: $F8 $F4
    ld [de], a                                    ; $6A19: $12
    ld hl, sp-$04                                 ; $6A1A: $F8 $FC
    inc d                                         ; $6A1C: $14
    ld hl, sp+$04                                 ; $6A1D: $F8 $04
    ld d, $E8                                     ; $6A1F: $16 $E8
    inc d                                         ; $6A21: $14
    nop                                           ; $6A22: $00
    add sp, $1C                                   ; $6A23: $E8 $1C
    ld [bc], a                                    ; $6A25: $02
    add sp, $24                                   ; $6A26: $E8 $24
    inc b                                         ; $6A28: $04
    ld hl, sp+$14                                 ; $6A29: $F8 $14
    ld [de], a                                    ; $6A2B: $12
    ld hl, sp+$1C                                 ; $6A2C: $F8 $1C
    inc d                                         ; $6A2E: $14
    ld hl, sp+$24                                 ; $6A2F: $F8 $24
    ld d, $E8                                     ; $6A31: $16 $E8
    inc [hl]                                      ; $6A33: $34
    nop                                           ; $6A34: $00
    add sp, $3C                                   ; $6A35: $E8 $3C
    ld [bc], a                                    ; $6A37: $02
    add sp, $44                                   ; $6A38: $E8 $44
    inc b                                         ; $6A3A: $04
    ld hl, sp+$34                                 ; $6A3B: $F8 $34
    ld [de], a                                    ; $6A3D: $12
    ld hl, sp+$3C                                 ; $6A3E: $F8 $3C
    inc d                                         ; $6A40: $14
    ld hl, sp+$44                                 ; $6A41: $F8 $44
    ld d, $80                                     ; $6A43: $16 $80
    nop                                           ; $6A45: $00
    nop                                           ; $6A46: $00
    rst RST_38                                    ; $6A47: $FF
    rst RST_38                                    ; $6A48: $FF
    rst RST_38                                    ; $6A49: $FF
    ld c, [hl]                                    ; $6A4A: $4E
    ld l, d                                       ; $6A4B: $6A
    nop                                           ; $6A4C: $00
    nop                                           ; $6A4D: $00
    ld [de], a                                    ; $6A4E: $12
    add sp, -$0C                                  ; $6A4F: $E8 $F4
    ld b, $E8                                     ; $6A51: $06 $E8
    db $FC                                        ; $6A53: $FC

jr_03C_6A54:
    ld [$04E8], sp                                ; $6A54: $08 $E8 $04
    ld a, [bc]                                    ; $6A57: $0A
    ld hl, sp-$0C                                 ; $6A58: $F8 $F4
    jr jr_03C_6A54                                ; $6A5A: $18 $F8

    db $FC                                        ; $6A5C: $FC
    ld a, [de]                                    ; $6A5D: $1A
    ld hl, sp+$04                                 ; $6A5E: $F8 $04
    inc e                                         ; $6A60: $1C
    add sp, $14                                   ; $6A61: $E8 $14
    ld b, $E8                                     ; $6A63: $06 $E8
    inc e                                         ; $6A65: $1C

jr_03C_6A66:
    ld [$24E8], sp                                ; $6A66: $08 $E8 $24
    ld a, [bc]                                    ; $6A69: $0A
    ld hl, sp+$14                                 ; $6A6A: $F8 $14
    jr jr_03C_6A66                                ; $6A6C: $18 $F8

    inc e                                         ; $6A6E: $1C
    ld a, [de]                                    ; $6A6F: $1A
    ld hl, sp+$24                                 ; $6A70: $F8 $24
    inc e                                         ; $6A72: $1C
    add sp, $34                                   ; $6A73: $E8 $34
    ld b, $E8                                     ; $6A75: $06 $E8
    inc a                                         ; $6A77: $3C

jr_03C_6A78:
    ld [$44E8], sp                                ; $6A78: $08 $E8 $44
    ld a, [bc]                                    ; $6A7B: $0A
    ld hl, sp+$34                                 ; $6A7C: $F8 $34
    jr jr_03C_6A78                                ; $6A7E: $18 $F8

    inc a                                         ; $6A80: $3C
    ld a, [de]                                    ; $6A81: $1A
    ld hl, sp+$44                                 ; $6A82: $F8 $44
    inc e                                         ; $6A84: $1C
    add b                                         ; $6A85: $80
    nop                                           ; $6A86: $00
    nop                                           ; $6A87: $00
    rst RST_38                                    ; $6A88: $FF
    rst RST_38                                    ; $6A89: $FF
    rst RST_38                                    ; $6A8A: $FF
    adc a                                         ; $6A8B: $8F
    ld l, d                                       ; $6A8C: $6A
    nop                                           ; $6A8D: $00
    nop                                           ; $6A8E: $00
    ld [de], a                                    ; $6A8F: $12
    add sp, -$0C                                  ; $6A90: $E8 $F4
    inc c                                         ; $6A92: $0C
    add sp, -$04                                  ; $6A93: $E8 $FC
    ld c, $E8                                     ; $6A95: $0E $E8
    inc b                                         ; $6A97: $04

jr_03C_6A98:
    db $10                                        ; $6A98: $10
    ld hl, sp-$0C                                 ; $6A99: $F8 $F4
    ld e, $F8                                     ; $6A9B: $1E $F8
    db $FC                                        ; $6A9D: $FC
    jr nz, jr_03C_6A98                            ; $6A9E: $20 $F8

    inc b                                         ; $6AA0: $04
    ld [hl+], a                                   ; $6AA1: $22
    add sp, $14                                   ; $6AA2: $E8 $14
    inc c                                         ; $6AA4: $0C
    add sp, $1C                                   ; $6AA5: $E8 $1C
    ld c, $E8                                     ; $6AA7: $0E $E8
    inc h                                         ; $6AA9: $24

jr_03C_6AAA:
    db $10                                        ; $6AAA: $10
    ld hl, sp+$14                                 ; $6AAB: $F8 $14
    ld e, $F8                                     ; $6AAD: $1E $F8
    inc e                                         ; $6AAF: $1C
    jr nz, jr_03C_6AAA                            ; $6AB0: $20 $F8

    inc h                                         ; $6AB2: $24
    ld [hl+], a                                   ; $6AB3: $22
    add sp, $34                                   ; $6AB4: $E8 $34
    inc c                                         ; $6AB6: $0C
    add sp, $3C                                   ; $6AB7: $E8 $3C
    ld c, $E8                                     ; $6AB9: $0E $E8
    ld b, h                                       ; $6ABB: $44

jr_03C_6ABC:
    db $10                                        ; $6ABC: $10
    ld hl, sp+$34                                 ; $6ABD: $F8 $34
    ld e, $F8                                     ; $6ABF: $1E $F8
    inc a                                         ; $6AC1: $3C
    jr nz, jr_03C_6ABC                            ; $6AC2: $20 $F8

    ld b, h                                       ; $6AC4: $44
    ld [hl+], a                                   ; $6AC5: $22
    ld h, $2B                                     ; $6AC6: $26 $2B
    dec [hl]                                      ; $6AC8: $35
    ccf                                           ; $6AC9: $3F
    ld c, c                                       ; $6ACA: $49
    ld c, [hl]                                    ; $6ACB: $4E
    ld e, l                                       ; $6ACC: $5D
    ld h, d                                       ; $6ACD: $62
    daa                                           ; $6ACE: $27
    inc l                                         ; $6ACF: $2C
    ld [hl], $40                                  ; $6AD0: $36 $40
    ld c, d                                       ; $6AD2: $4A
    ld c, a                                       ; $6AD3: $4F
    ld e, [hl]                                    ; $6AD4: $5E
    ld bc, $2D28                                  ; $6AD5: $01 $28 $2D
    scf                                           ; $6AD8: $37
    ld b, c                                       ; $6AD9: $41
    ld c, e                                       ; $6ADA: $4B
    ld d, b                                       ; $6ADB: $50
    ld e, a                                       ; $6ADC: $5F
    ld h, e                                       ; $6ADD: $63
    add hl, hl                                    ; $6ADE: $29
    ld l, $38                                     ; $6ADF: $2E $38
    ld b, d                                       ; $6AE1: $42
    ld c, h                                       ; $6AE2: $4C
    ld d, c                                       ; $6AE3: $51
    ld h, b                                       ; $6AE4: $60
    ld bc, $2F2A                                  ; $6AE5: $01 $2A $2F
    add hl, sp                                    ; $6AE8: $39
    ld b, e                                       ; $6AE9: $43
    ld c, l                                       ; $6AEA: $4D
    ld d, d                                       ; $6AEB: $52
    ld h, c                                       ; $6AEC: $61
    ld h, h                                       ; $6AED: $64
    ld bc, $0101                                  ; $6AEE: $01 $01 $01
    ld bc, $0101                                  ; $6AF1: $01 $01 $01
    ld bc, $6801                                  ; $6AF4: $01 $01 $68
    jr nc, jr_03C_6B33                            ; $6AF7: $30 $3A

    ld b, h                                       ; $6AF9: $44
    ld d, e                                       ; $6AFA: $53
    ld e, b                                       ; $6AFB: $58
    ld l, l                                       ; $6AFC: $6D
    ld h, l                                       ; $6AFD: $65
    ld l, c                                       ; $6AFE: $69
    ld sp, $453B                                  ; $6AFF: $31 $3B $45
    ld d, h                                       ; $6B02: $54
    ld e, c                                       ; $6B03: $59
    ld l, [hl]                                    ; $6B04: $6E
    ld h, [hl]                                    ; $6B05: $66
    ld l, d                                       ; $6B06: $6A
    ld [hl-], a                                   ; $6B07: $32
    inc a                                         ; $6B08: $3C
    ld b, [hl]                                    ; $6B09: $46
    ld d, l                                       ; $6B0A: $55
    ld e, d                                       ; $6B0B: $5A
    ld l, a                                       ; $6B0C: $6F
    ld h, a                                       ; $6B0D: $67
    ld l, e                                       ; $6B0E: $6B
    inc sp                                        ; $6B0F: $33
    dec a                                         ; $6B10: $3D
    ld b, a                                       ; $6B11: $47
    ld d, [hl]                                    ; $6B12: $56
    ld e, e                                       ; $6B13: $5B
    ld [hl], b                                    ; $6B14: $70
    ld bc, $346C                                  ; $6B15: $01 $6C $34
    ld a, $48                                     ; $6B18: $3E $48
    ld d, a                                       ; $6B1A: $57
    ld e, h                                       ; $6B1B: $5C
    ld [hl], a                                    ; $6B1C: $77
    ld bc, $6F3D                                  ; $6B1D: $01 $3D $6F
    ld d, l                                       ; $6B20: $55
    ld b, b                                       ; $6B21: $40
    ld [bc], a                                    ; $6B22: $02
    ret nz                                        ; $6B23: $C0

    inc sp                                        ; $6B24: $33
    scf                                           ; $6B25: $37
    ld b, e                                       ; $6B26: $43
    add b                                         ; $6B27: $80
    ld bc, $42C0                                  ; $6B28: $01 $C0 $42
    ld e, [hl]                                    ; $6B2B: $5E
    scf                                           ; $6B2C: $37
    ld b, b                                       ; $6B2D: $40
    ld bc, $69C0                                  ; $6B2E: $01 $C0 $69
    ld [hl], a                                    ; $6B31: $77
    ld e, a                                       ; $6B32: $5F

jr_03C_6B33:
    ld bc, $C002                                  ; $6B33: $01 $02 $C0
    ld d, h                                       ; $6B36: $54
    ld bc, $0254                                  ; $6B37: $01 $54 $02
    ld [bc], a                                    ; $6B3A: $02
    ret nz                                        ; $6B3B: $C0

    jr nc, @+$79                                  ; $6B3C: $30 $77

    ld c, b                                       ; $6B3E: $48
    ld b, b                                       ; $6B3F: $40
    inc bc                                        ; $6B40: $03
    ret nz                                        ; $6B41: $C0

    ld b, c                                       ; $6B42: $41
    jr z, jr_03C_6BBC                             ; $6B43: $28 $77

    jr nz, @+$05                                  ; $6B45: $20 $03

    ret nz                                        ; $6B47: $C0

    ld c, [hl]                                    ; $6B48: $4E
    ld [hl], $6B                                  ; $6B49: $36 $6B
    db $10                                        ; $6B4B: $10
    inc bc                                        ; $6B4C: $03
    ret nz                                        ; $6B4D: $C0

    jr z, jr_03C_6B92                             ; $6B4E: $28 $42

    ld [hl], b                                    ; $6B50: $70
    ld [$C003], sp                                ; $6B51: $08 $03 $C0
    ld [hl], $77                                  ; $6B54: $36 $77
    ld l, d                                       ; $6B56: $6A
    inc b                                         ; $6B57: $04
    inc bc                                        ; $6B58: $03
    ret nz                                        ; $6B59: $C0

    add hl, hl                                    ; $6B5A: $29
    ld l, a                                       ; $6B5B: $6F
    ld c, b                                       ; $6B5C: $48
    inc b                                         ; $6B5D: $04
    ld [bc], a                                    ; $6B5E: $02
    ret nz                                        ; $6B5F: $C0

    ld b, c                                       ; $6B60: $41
    ld h, h                                       ; $6B61: $64
    daa                                           ; $6B62: $27
    ld [bc], a                                    ; $6B63: $02
    ld bc, $3FC0                                  ; $6B64: $01 $C0 $3F
    dec hl                                        ; $6B67: $2B
    ld l, b                                       ; $6B68: $68
    add b                                         ; $6B69: $80
    ld [bc], a                                    ; $6B6A: $02
    ret nz                                        ; $6B6B: $C0

    dec hl                                        ; $6B6C: $2B
    ld l, b                                       ; $6B6D: $68
    ld [hl], a                                    ; $6B6E: $77
    rst RST_38                                    ; $6B6F: $FF
    ld a, [de]                                    ; $6B70: $1A
    jp $362A                                      ; $6B71: $C3 $2A $36


    ld l, c                                       ; $6B74: $69
    rst RST_38                                    ; $6B75: $FF
    dec de                                        ; $6B76: $1B
    jp $362A                                      ; $6B77: $C3 $2A $36


    ld l, c                                       ; $6B7A: $69
    rst RST_38                                    ; $6B7B: $FF
    dec de                                        ; $6B7C: $1B
    jp Jump_000_0026                              ; $6B7D: $C3 $26 $00


    daa                                           ; $6B80: $27
    jr z, jr_03C_6B83                             ; $6B81: $28 $00

jr_03C_6B83:
    add hl, hl                                    ; $6B83: $29
    ld a, [hl+]                                   ; $6B84: $2A
    nop                                           ; $6B85: $00
    ld bc, $002B                                  ; $6B86: $01 $2B $00
    inc l                                         ; $6B89: $2C
    dec l                                         ; $6B8A: $2D
    nop                                           ; $6B8B: $00
    ld l, $2F                                     ; $6B8C: $2E $2F
    nop                                           ; $6B8E: $00
    ld bc, $0035                                  ; $6B8F: $01 $35 $00

jr_03C_6B92:
    ld [hl], $37                                  ; $6B92: $36 $37
    nop                                           ; $6B94: $00
    jr c, @+$3B                                   ; $6B95: $38 $39

    nop                                           ; $6B97: $00
    ld bc, $003F                                  ; $6B98: $01 $3F $00
    ld b, b                                       ; $6B9B: $40
    ld b, c                                       ; $6B9C: $41
    nop                                           ; $6B9D: $00
    ld b, d                                       ; $6B9E: $42
    ld b, e                                       ; $6B9F: $43
    nop                                           ; $6BA0: $00
    ld bc, $0049                                  ; $6BA1: $01 $49 $00
    ld c, d                                       ; $6BA4: $4A
    ld c, e                                       ; $6BA5: $4B
    nop                                           ; $6BA6: $00
    ld c, h                                       ; $6BA7: $4C
    ld c, l                                       ; $6BA8: $4D
    nop                                           ; $6BA9: $00
    ld bc, $004E                                  ; $6BAA: $01 $4E $00
    ld c, a                                       ; $6BAD: $4F
    ld d, b                                       ; $6BAE: $50
    nop                                           ; $6BAF: $00
    ld d, c                                       ; $6BB0: $51
    ld d, d                                       ; $6BB1: $52
    nop                                           ; $6BB2: $00
    ld bc, $005D                                  ; $6BB3: $01 $5D $00
    ld e, [hl]                                    ; $6BB6: $5E
    ld e, a                                       ; $6BB7: $5F
    nop                                           ; $6BB8: $00
    ld h, b                                       ; $6BB9: $60
    ld h, c                                       ; $6BBA: $61
    nop                                           ; $6BBB: $00

jr_03C_6BBC:
    ld bc, $0062                                  ; $6BBC: $01 $62 $00
    ld bc, $0063                                  ; $6BBF: $01 $63 $00
    ld bc, $0064                                  ; $6BC2: $01 $64 $00
    ld bc, $0068                                  ; $6BC5: $01 $68 $00
    ld l, c                                       ; $6BC8: $69
    ld l, d                                       ; $6BC9: $6A
    nop                                           ; $6BCA: $00
    ld l, e                                       ; $6BCB: $6B
    ld l, h                                       ; $6BCC: $6C
    nop                                           ; $6BCD: $00
    ld bc, $0030                                  ; $6BCE: $01 $30 $00
    ld sp, $0032                                  ; $6BD1: $31 $32 $00
    inc sp                                        ; $6BD4: $33
    inc [hl]                                      ; $6BD5: $34
    nop                                           ; $6BD6: $00
    ld bc, $003A                                  ; $6BD7: $01 $3A $00
    dec sp                                        ; $6BDA: $3B
    inc a                                         ; $6BDB: $3C
    nop                                           ; $6BDC: $00
    dec a                                         ; $6BDD: $3D
    ld a, $00                                     ; $6BDE: $3E $00
    ld bc, $0044                                  ; $6BE0: $01 $44 $00
    ld b, l                                       ; $6BE3: $45
    ld b, [hl]                                    ; $6BE4: $46
    nop                                           ; $6BE5: $00
    ld b, a                                       ; $6BE6: $47
    ld c, b                                       ; $6BE7: $48
    nop                                           ; $6BE8: $00
    ld bc, $0053                                  ; $6BE9: $01 $53 $00
    ld d, h                                       ; $6BEC: $54
    ld d, l                                       ; $6BED: $55
    nop                                           ; $6BEE: $00
    ld d, [hl]                                    ; $6BEF: $56
    ld d, a                                       ; $6BF0: $57
    nop                                           ; $6BF1: $00
    ld bc, $0058                                  ; $6BF2: $01 $58 $00
    ld e, c                                       ; $6BF5: $59
    ld e, d                                       ; $6BF6: $5A
    nop                                           ; $6BF7: $00
    ld e, e                                       ; $6BF8: $5B
    ld e, h                                       ; $6BF9: $5C
    nop                                           ; $6BFA: $00
    ld bc, $006D                                  ; $6BFB: $01 $6D $00
    ld l, [hl]                                    ; $6BFE: $6E
    ld l, a                                       ; $6BFF: $6F
    nop                                           ; $6C00: $00
    ld [hl], b                                    ; $6C01: $70
    ld [hl], a                                    ; $6C02: $77
    nop                                           ; $6C03: $00
    ld bc, $0065                                  ; $6C04: $01 $65 $00
    ld h, [hl]                                    ; $6C07: $66
    ld h, a                                       ; $6C08: $67
    nop                                           ; $6C09: $00
    ld bc, $0001                                  ; $6C0A: $01 $01 $00
    ld bc, $6C2E                                  ; $6C0D: $01 $2E $6C
    ld h, h                                       ; $6C10: $64
    ld l, h                                       ; $6C11: $6C
    sbc d                                         ; $6C12: $9A
    ld l, h                                       ; $6C13: $6C
    ret nc                                        ; $6C14: $D0

    ld l, h                                       ; $6C15: $6C
    ld b, $6D                                     ; $6C16: $06 $6D
    inc a                                         ; $6C18: $3C
    ld l, l                                       ; $6C19: $6D
    ld [hl], d                                    ; $6C1A: $72
    ld l, l                                       ; $6C1B: $6D
    xor b                                         ; $6C1C: $A8
    ld l, l                                       ; $6C1D: $6D
    sbc $6D                                       ; $6C1E: $DE $6D
    inc d                                         ; $6C20: $14
    ld l, [hl]                                    ; $6C21: $6E
    ld c, d                                       ; $6C22: $4A
    ld l, [hl]                                    ; $6C23: $6E
    add b                                         ; $6C24: $80
    ld l, [hl]                                    ; $6C25: $6E
    or [hl]                                       ; $6C26: $B6
    ld l, [hl]                                    ; $6C27: $6E
    db $EC                                        ; $6C28: $EC
    ld l, [hl]                                    ; $6C29: $6E
    ld [hl+], a                                   ; $6C2A: $22
    ld l, a                                       ; $6C2B: $6F
    ld e, b                                       ; $6C2C: $58
    ld l, a                                       ; $6C2D: $6F
    ld bc, $0100                                  ; $6C2E: $01 $00 $01
    ld bc, $0100                                  ; $6C31: $01 $00 $01
    ld d, l                                       ; $6C34: $55
    nop                                           ; $6C35: $00
    ld [hl], a                                    ; $6C36: $77
    ld d, l                                       ; $6C37: $55
    nop                                           ; $6C38: $00
    ld [hl], a                                    ; $6C39: $77
    ld bc, $0100                                  ; $6C3A: $01 $00 $01
    ld bc, $0100                                  ; $6C3D: $01 $00 $01
    ld bc, $0100                                  ; $6C40: $01 $00 $01
    ld bc, $0100                                  ; $6C43: $01 $00 $01
    ld bc, $0100                                  ; $6C46: $01 $00 $01
    ld bc, $0100                                  ; $6C49: $01 $00 $01
    ld bc, $0100                                  ; $6C4C: $01 $00 $01
    ld bc, $0100                                  ; $6C4F: $01 $00 $01
    xor d                                         ; $6C52: $AA
    nop                                           ; $6C53: $00
    adc c                                         ; $6C54: $89
    cp a                                          ; $6C55: $BF
    nop                                           ; $6C56: $00
    halt                                          ; $6C57: $76
    sbc d                                         ; $6C58: $9A
    nop                                           ; $6C59: $00
    jr nc, jr_03C_6C9C                            ; $6C5A: $30 $40

    nop                                           ; $6C5C: $00
    jr nc, @+$29                                  ; $6C5D: $30 $27

    nop                                           ; $6C5F: $00
    ld e, l                                       ; $6C60: $5D
    scf                                           ; $6C61: $37
    nop                                           ; $6C62: $00
    ret                                           ; $6C63: $C9


    ld bc, $3700                                  ; $6C64: $01 $00 $37
    ld d, [hl]                                    ; $6C67: $56
    nop                                           ; $6C68: $00
    ld b, d                                       ; $6C69: $42
    ld c, l                                       ; $6C6A: $4D
    nop                                           ; $6C6B: $00
    xor d                                         ; $6C6C: $AA
    adc c                                         ; $6C6D: $89
    nop                                           ; $6C6E: $00
    cp a                                          ; $6C6F: $BF
    halt                                          ; $6C70: $76
    nop                                           ; $6C71: $00
    sbc d                                         ; $6C72: $9A
    jr nc, jr_03C_6C75                            ; $6C73: $30 $00

jr_03C_6C75:
    ld bc, $0001                                  ; $6C75: $01 $01 $00
    ld bc, $0001                                  ; $6C78: $01 $01 $00
    ld c, d                                       ; $6C7B: $4A
    ld h, [hl]                                    ; $6C7C: $66
    nop                                           ; $6C7D: $00
    jr z, @+$6B                                   ; $6C7E: $28 $69

    nop                                           ; $6C80: $00
    ld h, a                                       ; $6C81: $67
    dec l                                         ; $6C82: $2D
    nop                                           ; $6C83: $00

jr_03C_6C84:
    ld bc, $0001                                  ; $6C84: $01 $01 $00
    ld bc, $0001                                  ; $6C87: $01 $01 $00
    ld bc, $0001                                  ; $6C8A: $01 $01 $00
    dec [hl]                                      ; $6C8D: $35
    ld l, e                                       ; $6C8E: $6B
    nop                                           ; $6C8F: $00
    ld e, l                                       ; $6C90: $5D
    ld [hl], $00                                  ; $6C91: $36 $00
    ccf                                           ; $6C93: $3F
    ret                                           ; $6C94: $C9


    nop                                           ; $6C95: $00
    ld bc, $0001                                  ; $6C96: $01 $01 $00
    ld bc, $0001                                  ; $6C99: $01 $01 $00

jr_03C_6C9C:
    ld bc, $0089                                  ; $6C9C: $01 $89 $00
    sub c                                         ; $6C9F: $91
    halt                                          ; $6CA0: $76
    nop                                           ; $6CA1: $00
    ld a, b                                       ; $6CA2: $78
    jp nz, $AA00                                  ; $6CA3: $C2 $00 $AA

    halt                                          ; $6CA6: $76
    nop                                           ; $6CA7: $00
    ld bc, $0001                                  ; $6CA8: $01 $01 $00
    ld bc, $0001                                  ; $6CAB: $01 $01 $00
    ld bc, $0001                                  ; $6CAE: $01 $01 $00
    ld b, e                                       ; $6CB1: $43
    jr z, jr_03C_6CB4                             ; $6CB2: $28 $00

jr_03C_6CB4:
    dec sp                                        ; $6CB4: $3B
    ld h, a                                       ; $6CB5: $67
    nop                                           ; $6CB6: $00
    jr z, jr_03C_6C84                             ; $6CB7: $28 $CB

    nop                                           ; $6CB9: $00

jr_03C_6CBA:
    ld bc, $0001                                  ; $6CBA: $01 $01 $00
    ld bc, $0001                                  ; $6CBD: $01 $01 $00
    ld bc, $0001                                  ; $6CC0: $01 $01 $00
    ld bc, $0001                                  ; $6CC3: $01 $01 $00
    ld bc, $0001                                  ; $6CC6: $01 $01 $00
    ld bc, $0001                                  ; $6CC9: $01 $01 $00
    ld bc, $0001                                  ; $6CCC: $01 $01 $00
    ld bc, $0001                                  ; $6CCF: $01 $01 $00
    ld bc, $0001                                  ; $6CD2: $01 $01 $00
    ld a, b                                       ; $6CD5: $78
    cp h                                          ; $6CD6: $BC
    nop                                           ; $6CD7: $00
    sub h                                         ; $6CD8: $94
    or b                                          ; $6CD9: $B0
    nop                                           ; $6CDA: $00
    adc c                                         ; $6CDB: $89
    ld bc, $0100                                  ; $6CDC: $01 $00 $01
    ld bc, $0100                                  ; $6CDF: $01 $00 $01
    ld bc, $0100                                  ; $6CE2: $01 $00 $01
    ld bc, $4300                                  ; $6CE5: $01 $00 $43
    jr z, jr_03C_6CEA                             ; $6CE8: $28 $00

jr_03C_6CEA:
    dec sp                                        ; $6CEA: $3B
    ld h, a                                       ; $6CEB: $67
    nop                                           ; $6CEC: $00
    jr z, jr_03C_6CBA                             ; $6CED: $28 $CB

    nop                                           ; $6CEF: $00
    ld bc, $0001                                  ; $6CF0: $01 $01 $00
    ld bc, $0001                                  ; $6CF3: $01 $01 $00
    ld bc, $0001                                  ; $6CF6: $01 $01 $00
    ld bc, $0001                                  ; $6CF9: $01 $01 $00
    ld bc, $0001                                  ; $6CFC: $01 $01 $00
    ld bc, $0001                                  ; $6CFF: $01 $01 $00
    ld bc, $0001                                  ; $6D02: $01 $01 $00
    ld bc, $00D0                                  ; $6D05: $01 $D0 $00
    ccf                                           ; $6D08: $3F
    ccf                                           ; $6D09: $3F
    nop                                           ; $6D0A: $00
    dec hl                                        ; $6D0B: $2B
    add hl, hl                                    ; $6D0C: $29
    nop                                           ; $6D0D: $00
    res 4, [hl]                                   ; $6D0E: $CB $A6
    nop                                           ; $6D10: $00
    halt                                          ; $6D11: $76
    adc c                                         ; $6D12: $89
    nop                                           ; $6D13: $00
    sub l                                         ; $6D14: $95
    pop de                                        ; $6D15: $D1
    nop                                           ; $6D16: $00
    ld b, a                                       ; $6D17: $47
    adc c                                         ; $6D18: $89
    nop                                           ; $6D19: $00
    sub c                                         ; $6D1A: $91
    halt                                          ; $6D1B: $76
    nop                                           ; $6D1C: $00
    adc c                                         ; $6D1D: $89
    ld a, a                                       ; $6D1E: $7F
    nop                                           ; $6D1F: $00
    cp e                                          ; $6D20: $BB
    halt                                          ; $6D21: $76
    nop                                           ; $6D22: $00
    or c                                          ; $6D23: $B1
    jr nc, jr_03C_6D26                            ; $6D24: $30 $00

jr_03C_6D26:
    ret z                                         ; $6D26: $C8

    add hl, hl                                    ; $6D27: $29
    nop                                           ; $6D28: $00
    ld l, b                                       ; $6D29: $68
    ld d, [hl]                                    ; $6D2A: $56
    nop                                           ; $6D2B: $00
    ld e, l                                       ; $6D2C: $5D
    scf                                           ; $6D2D: $37
    nop                                           ; $6D2E: $00
    ret                                           ; $6D2F: $C9


    ld bc, $0100                                  ; $6D30: $01 $00 $01
    ld bc, $0100                                  ; $6D33: $01 $00 $01
    ld bc, $0100                                  ; $6D36: $01 $00 $01
    ld bc, $0100                                  ; $6D39: $01 $00 $01
    ret nc                                        ; $6D3C: $D0

    nop                                           ; $6D3D: $00
    ccf                                           ; $6D3E: $3F
    ccf                                           ; $6D3F: $3F
    nop                                           ; $6D40: $00
    dec hl                                        ; $6D41: $2B
    add hl, hl                                    ; $6D42: $29
    nop                                           ; $6D43: $00
    res 4, [hl]                                   ; $6D44: $CB $A6
    nop                                           ; $6D46: $00
    halt                                          ; $6D47: $76
    adc c                                         ; $6D48: $89
    nop                                           ; $6D49: $00
    sub l                                         ; $6D4A: $95
    pop de                                        ; $6D4B: $D1
    nop                                           ; $6D4C: $00
    ld b, a                                       ; $6D4D: $47
    dec c                                         ; $6D4E: $0D
    nop                                           ; $6D4F: $00
    dec c                                         ; $6D50: $0D
    jr nc, jr_03C_6D53                            ; $6D51: $30 $00

jr_03C_6D53:
    add hl, hl                                    ; $6D53: $29
    ld l, b                                       ; $6D54: $68
    nop                                           ; $6D55: $00
    ld d, [hl]                                    ; $6D56: $56
    ld e, l                                       ; $6D57: $5D
    nop                                           ; $6D58: $00
    scf                                           ; $6D59: $37
    ret                                           ; $6D5A: $C9


    nop                                           ; $6D5B: $00
    ld bc, $0001                                  ; $6D5C: $01 $01 $00
    ld bc, $0001                                  ; $6D5F: $01 $01 $00
    ld bc, $0001                                  ; $6D62: $01 $01 $00
    ld bc, $0001                                  ; $6D65: $01 $01 $00
    ld bc, $0001                                  ; $6D68: $01 $01 $00
    ld bc, $0001                                  ; $6D6B: $01 $01 $00
    ld bc, $0001                                  ; $6D6E: $01 $01 $00
    ld bc, $002A                                  ; $6D71: $01 $2A $00
    ld e, l                                       ; $6D74: $5D
    ld l, $00                                     ; $6D75: $2E $00
    ld c, l                                       ; $6D77: $4D
    add c                                         ; $6D78: $81
    nop                                           ; $6D79: $00
    halt                                          ; $6D7A: $76
    sbc e                                         ; $6D7B: $9B
    nop                                           ; $6D7C: $00
    halt                                          ; $6D7D: $76
    ld b, a                                       ; $6D7E: $47
    nop                                           ; $6D7F: $00
    ret nc                                        ; $6D80: $D0

    add d                                         ; $6D81: $82
    nop                                           ; $6D82: $00
    halt                                          ; $6D83: $76
    sbc d                                         ; $6D84: $9A
    nop                                           ; $6D85: $00
    ld b, a                                       ; $6D86: $47
    ld [de], a                                    ; $6D87: $12
    nop                                           ; $6D88: $00
    ld a, [de]                                    ; $6D89: $1A
    rlc b                                         ; $6D8A: $CB $00
    pop de                                        ; $6D8C: $D1
    jr nc, jr_03C_6D8F                            ; $6D8D: $30 $00

jr_03C_6D8F:
    ret z                                         ; $6D8F: $C8

    ld h, $00                                     ; $6D90: $26 $00
    add hl, sp                                    ; $6D92: $39
    ld d, [hl]                                    ; $6D93: $56
    nop                                           ; $6D94: $00
    ld e, l                                       ; $6D95: $5D
    scf                                           ; $6D96: $37
    nop                                           ; $6D97: $00
    ret                                           ; $6D98: $C9


    ld bc, $0100                                  ; $6D99: $01 $00 $01
    ld bc, $0100                                  ; $6D9C: $01 $00 $01
    ld bc, $0100                                  ; $6D9F: $01 $00 $01
    ld bc, $0100                                  ; $6DA2: $01 $00 $01
    ld bc, $0100                                  ; $6DA5: $01 $00 $01
    ld a, [hl+]                                   ; $6DA8: $2A
    nop                                           ; $6DA9: $00
    ld e, l                                       ; $6DAA: $5D
    ld l, $00                                     ; $6DAB: $2E $00
    ld c, l                                       ; $6DAD: $4D
    add c                                         ; $6DAE: $81
    nop                                           ; $6DAF: $00
    halt                                          ; $6DB0: $76
    sbc e                                         ; $6DB1: $9B
    nop                                           ; $6DB2: $00
    halt                                          ; $6DB3: $76
    ld b, a                                       ; $6DB4: $47
    nop                                           ; $6DB5: $00
    ret nc                                        ; $6DB6: $D0

    add d                                         ; $6DB7: $82
    nop                                           ; $6DB8: $00
    halt                                          ; $6DB9: $76
    sbc d                                         ; $6DBA: $9A
    nop                                           ; $6DBB: $00
    ld b, a                                       ; $6DBC: $47
    ld [de], a                                    ; $6DBD: $12
    nop                                           ; $6DBE: $00
    ld a, [de]                                    ; $6DBF: $1A
    rlc b                                         ; $6DC0: $CB $00
    inc b                                         ; $6DC2: $04
    pop de                                        ; $6DC3: $D1
    nop                                           ; $6DC4: $00

jr_03C_6DC5:
    jr nc, jr_03C_6D8F                            ; $6DC5: $30 $C8

    nop                                           ; $6DC7: $00
    ld h, $39                                     ; $6DC8: $26 $39
    nop                                           ; $6DCA: $00
    ld d, [hl]                                    ; $6DCB: $56
    ld e, l                                       ; $6DCC: $5D
    nop                                           ; $6DCD: $00
    scf                                           ; $6DCE: $37
    ret                                           ; $6DCF: $C9


    nop                                           ; $6DD0: $00
    ld bc, $0001                                  ; $6DD1: $01 $01 $00
    ld bc, $0001                                  ; $6DD4: $01 $01 $00
    ld bc, $0001                                  ; $6DD7: $01 $01 $00
    ld bc, $0001                                  ; $6DDA: $01 $01 $00
    ld bc, $002A                                  ; $6DDD: $01 $2A $00
    ld e, l                                       ; $6DE0: $5D
    ld l, $00                                     ; $6DE1: $2E $00
    ld c, l                                       ; $6DE3: $4D
    add c                                         ; $6DE4: $81
    nop                                           ; $6DE5: $00
    halt                                          ; $6DE6: $76
    sbc e                                         ; $6DE7: $9B
    nop                                           ; $6DE8: $00
    halt                                          ; $6DE9: $76
    ld b, a                                       ; $6DEA: $47
    nop                                           ; $6DEB: $00
    ret nc                                        ; $6DEC: $D0

    ld c, [hl]                                    ; $6DED: $4E
    nop                                           ; $6DEE: $00
    ld [hl], $6B                                  ; $6DEF: $36 $6B
    nop                                           ; $6DF1: $00
    res 4, [hl]                                   ; $6DF2: $CB $A6
    nop                                           ; $6DF4: $00
    halt                                          ; $6DF5: $76
    adc c                                         ; $6DF6: $89
    nop                                           ; $6DF7: $00
    sub l                                         ; $6DF8: $95
    pop de                                        ; $6DF9: $D1
    nop                                           ; $6DFA: $00
    jr nc, jr_03C_6DC5                            ; $6DFB: $30 $C8

    nop                                           ; $6DFD: $00
    ld h, $39                                     ; $6DFE: $26 $39
    nop                                           ; $6E00: $00
    ld d, [hl]                                    ; $6E01: $56
    ld e, l                                       ; $6E02: $5D
    nop                                           ; $6E03: $00
    scf                                           ; $6E04: $37
    ret                                           ; $6E05: $C9


    nop                                           ; $6E06: $00
    ld bc, $0001                                  ; $6E07: $01 $01 $00
    ld bc, $0001                                  ; $6E0A: $01 $01 $00
    ld bc, $0001                                  ; $6E0D: $01 $01 $00
    ld bc, $0001                                  ; $6E10: $01 $01 $00
    ld bc, $002A                                  ; $6E13: $01 $2A $00
    ld e, l                                       ; $6E16: $5D
    ld l, $00                                     ; $6E17: $2E $00
    ld c, l                                       ; $6E19: $4D
    add c                                         ; $6E1A: $81
    nop                                           ; $6E1B: $00
    halt                                          ; $6E1C: $76
    sbc e                                         ; $6E1D: $9B
    nop                                           ; $6E1E: $00
    halt                                          ; $6E1F: $76
    ld b, a                                       ; $6E20: $47
    nop                                           ; $6E21: $00
    ret nc                                        ; $6E22: $D0

    ccf                                           ; $6E23: $3F
    nop                                           ; $6E24: $00
    ccf                                           ; $6E25: $3F
    dec hl                                        ; $6E26: $2B
    nop                                           ; $6E27: $00
    add hl, hl                                    ; $6E28: $29
    rlc b                                         ; $6E29: $CB $00
    and [hl]                                      ; $6E2B: $A6
    halt                                          ; $6E2C: $76
    nop                                           ; $6E2D: $00
    adc c                                         ; $6E2E: $89
    sub l                                         ; $6E2F: $95
    nop                                           ; $6E30: $00

jr_03C_6E31:
    pop de                                        ; $6E31: $D1
    jr nc, jr_03C_6E34                            ; $6E32: $30 $00

jr_03C_6E34:
    ret z                                         ; $6E34: $C8

    ld h, $00                                     ; $6E35: $26 $00

jr_03C_6E37:
    add hl, sp                                    ; $6E37: $39
    ld d, [hl]                                    ; $6E38: $56
    nop                                           ; $6E39: $00
    ld e, l                                       ; $6E3A: $5D
    scf                                           ; $6E3B: $37
    nop                                           ; $6E3C: $00
    ret                                           ; $6E3D: $C9


    ld bc, $0100                                  ; $6E3E: $01 $00 $01
    ld bc, $0100                                  ; $6E41: $01 $00 $01
    ld bc, $0100                                  ; $6E44: $01 $00 $01
    ld bc, $0100                                  ; $6E47: $01 $00 $01
    ld a, [hl+]                                   ; $6E4A: $2A
    nop                                           ; $6E4B: $00
    ld e, l                                       ; $6E4C: $5D
    ld l, $00                                     ; $6E4D: $2E $00
    ld c, l                                       ; $6E4F: $4D
    add c                                         ; $6E50: $81
    nop                                           ; $6E51: $00
    halt                                          ; $6E52: $76
    sbc e                                         ; $6E53: $9B
    nop                                           ; $6E54: $00
    halt                                          ; $6E55: $76
    ld c, d                                       ; $6E56: $4A
    nop                                           ; $6E57: $00
    ret nc                                        ; $6E58: $D0

    adc b                                         ; $6E59: $88
    nop                                           ; $6E5A: $00
    halt                                          ; $6E5B: $76
    cp h                                          ; $6E5C: $BC
    nop                                           ; $6E5D: $00
    ld l, [hl]                                    ; $6E5E: $6E
    ld b, c                                       ; $6E5F: $41
    nop                                           ; $6E60: $00
    dec l                                         ; $6E61: $2D
    ld l, h                                       ; $6E62: $6C
    nop                                           ; $6E63: $00
    jr z, jr_03C_6E37                             ; $6E64: $28 $D1

    nop                                           ; $6E66: $00
    jr nc, jr_03C_6E31                            ; $6E67: $30 $C8

    nop                                           ; $6E69: $00
    ld d, b                                       ; $6E6A: $50
    add hl, hl                                    ; $6E6B: $29
    nop                                           ; $6E6C: $00
    ld e, l                                       ; $6E6D: $5D
    ld [hl], $00                                  ; $6E6E: $36 $00
    ccf                                           ; $6E70: $3F
    ret                                           ; $6E71: $C9


    nop                                           ; $6E72: $00
    ld bc, $0001                                  ; $6E73: $01 $01 $00
    ld bc, $0001                                  ; $6E76: $01 $01 $00
    ld bc, $0001                                  ; $6E79: $01 $01 $00
    ld bc, $0001                                  ; $6E7C: $01 $01 $00
    ld bc, $002A                                  ; $6E7F: $01 $2A $00
    ld e, l                                       ; $6E82: $5D
    ld l, $00                                     ; $6E83: $2E $00
    ld c, l                                       ; $6E85: $4D
    xor h                                         ; $6E86: $AC
    nop                                           ; $6E87: $00
    cp [hl]                                       ; $6E88: $BE
    and d                                         ; $6E89: $A2
    nop                                           ; $6E8A: $00
    call nz, $0076                                ; $6E8B: $C4 $76 $00
    cp h                                          ; $6E8E: $BC
    ld b, a                                       ; $6E8F: $47
    nop                                           ; $6E90: $00
    ret z                                         ; $6E91: $C8

    ld c, c                                       ; $6E92: $49
    nop                                           ; $6E93: $00
    ld e, l                                       ; $6E94: $5D
    add hl, hl                                    ; $6E95: $29
    nop                                           ; $6E96: $00
    ld c, l                                       ; $6E97: $4D
    ld h, h                                       ; $6E98: $64
    nop                                           ; $6E99: $00
    cpl                                           ; $6E9A: $2F
    ld b, a                                       ; $6E9B: $47
    nop                                           ; $6E9C: $00
    pop hl                                        ; $6E9D: $E1
    ld c, l                                       ; $6E9E: $4D
    nop                                           ; $6E9F: $00
    sbc $6E                                       ; $6EA0: $DE $6E
    nop                                           ; $6EA2: $00
    ld bc, $002A                                  ; $6EA3: $01 $2A $00
    ld [hl], $49                                  ; $6EA6: $36 $49
    nop                                           ; $6EA8: $00
    jr nc, @+$6A                                  ; $6EA9: $30 $68

    nop                                           ; $6EAB: $00
    ldh [c], a                                    ; $6EAC: $E2
    ld l, [hl]                                    ; $6EAD: $6E
    nop                                           ; $6EAE: $00
    ld a, [hl+]                                   ; $6EAF: $2A
    ld [hl], $00                                  ; $6EB0: $36 $00
    ld e, l                                       ; $6EB2: $5D
    scf                                           ; $6EB3: $37
    nop                                           ; $6EB4: $00
    ret                                           ; $6EB5: $C9


    ld c, c                                       ; $6EB6: $49
    nop                                           ; $6EB7: $00
    ld l, a                                       ; $6EB8: $6F
    daa                                           ; $6EB9: $27
    nop                                           ; $6EBA: $00
    ld c, b                                       ; $6EBB: $48
    ld bc, $D000                                  ; $6EBC: $01 $00 $D0
    ccf                                           ; $6EBF: $3F
    nop                                           ; $6EC0: $00
    ld b, c                                       ; $6EC1: $41
    dec sp                                        ; $6EC2: $3B
    nop                                           ; $6EC3: $00
    ld l, a                                       ; $6EC4: $6F
    pop de                                        ; $6EC5: $D1
    nop                                           ; $6EC6: $00
    jr nc, jr_03C_6EF2                            ; $6EC7: $30 $29

    nop                                           ; $6EC9: $00
    ld l, b                                       ; $6ECA: $68
    ld d, [hl]                                    ; $6ECB: $56
    nop                                           ; $6ECC: $00
    ld e, l                                       ; $6ECD: $5D
    scf                                           ; $6ECE: $37
    nop                                           ; $6ECF: $00
    ret                                           ; $6ED0: $C9


    ld bc, $0100                                  ; $6ED1: $01 $00 $01
    ld bc, $0100                                  ; $6ED4: $01 $00 $01
    ld bc, $0100                                  ; $6ED7: $01 $00 $01
    ld bc, $0100                                  ; $6EDA: $01 $00 $01
    ld bc, $0100                                  ; $6EDD: $01 $00 $01
    ld bc, $0100                                  ; $6EE0: $01 $00 $01
    ld bc, $0100                                  ; $6EE3: $01 $00 $01
    ld bc, $0100                                  ; $6EE6: $01 $00 $01
    ld bc, $0100                                  ; $6EE9: $01 $00 $01
    ld bc, $0100                                  ; $6EEC: $01 $00 $01
    ld bc, $0100                                  ; $6EEF: $01 $00 $01

jr_03C_6EF2:
    ld bc, $0100                                  ; $6EF2: $01 $00 $01
    ld bc, $0100                                  ; $6EF5: $01 $00 $01
    ld bc, $0100                                  ; $6EF8: $01 $00 $01
    ld bc, $0100                                  ; $6EFB: $01 $00 $01
    ld bc, $0100                                  ; $6EFE: $01 $00 $01
    ld c, h                                       ; $6F01: $4C
    jr nz, jr_03C_6F2A                            ; $6F02: $20 $26

    add hl, sp                                    ; $6F04: $39
    nop                                           ; $6F05: $00
    ld d, h                                       ; $6F06: $54
    ld c, [hl]                                    ; $6F07: $4E
    ld [bc], a                                    ; $6F08: $02
    ld a, [bc]                                    ; $6F09: $0A
    or c                                          ; $6F0A: $B1
    db $10                                        ; $6F0B: $10
    ld bc, $0001                                  ; $6F0C: $01 $01 $00
    ld bc, $0001                                  ; $6F0F: $01 $01 $00
    ld bc, $0001                                  ; $6F12: $01 $01 $00
    ld bc, $0001                                  ; $6F15: $01 $01 $00
    ld bc, $0001                                  ; $6F18: $01 $01 $00
    ld bc, $0001                                  ; $6F1B: $01 $01 $00
    ld bc, $0001                                  ; $6F1E: $01 $01 $00
    ld bc, $0001                                  ; $6F21: $01 $01 $00
    ld bc, $0001                                  ; $6F24: $01 $01 $00
    ld bc, $0001                                  ; $6F27: $01 $01 $00

jr_03C_6F2A:
    ld bc, $0001                                  ; $6F2A: $01 $01 $00
    ld bc, $0001                                  ; $6F2D: $01 $01 $00
    ld bc, $0001                                  ; $6F30: $01 $01 $00
    ld bc, $0001                                  ; $6F33: $01 $01 $00
    ld bc, $0001                                  ; $6F36: $01 $01 $00
    ld bc, $0001                                  ; $6F39: $01 $01 $00
    ld bc, $0001                                  ; $6F3C: $01 $01 $00
    ld bc, $0001                                  ; $6F3F: $01 $01 $00
    ld bc, $0001                                  ; $6F42: $01 $01 $00
    ld bc, $0001                                  ; $6F45: $01 $01 $00
    ld bc, $0001                                  ; $6F48: $01 $01 $00
    ld a, l                                       ; $6F4B: $7D
    cp d                                          ; $6F4C: $BA
    nop                                           ; $6F4D: $00
    halt                                          ; $6F4E: $76
    sub h                                         ; $6F4F: $94
    nop                                           ; $6F50: $00
    adc c                                         ; $6F51: $89
    sub l                                         ; $6F52: $95
    nop                                           ; $6F53: $00
    ld bc, $0001                                  ; $6F54: $01 $01 $00
    ld bc, $0001                                  ; $6F57: $01 $01 $00
    ld bc, $0034                                  ; $6F5A: $01 $34 $00
    ld l, c                                       ; $6F5D: $69
    ld l, b                                       ; $6F5E: $68
    nop                                           ; $6F5F: $00
    ld c, l                                       ; $6F60: $4D
    ld bc, $2A00                                  ; $6F61: $01 $00 $2A
    ld [hl], $00                                  ; $6F64: $36 $00
    ld l, c                                       ; $6F66: $69
    ld bc, $0100                                  ; $6F67: $01 $00 $01
    ld bc, $0100                                  ; $6F6A: $01 $00 $01
    ld bc, $0100                                  ; $6F6D: $01 $00 $01
    ld bc, $0100                                  ; $6F70: $01 $00 $01
    ld bc, $0100                                  ; $6F73: $01 $00 $01
    ld bc, $0100                                  ; $6F76: $01 $00 $01
    ld bc, $0100                                  ; $6F79: $01 $00 $01
    ld bc, $0100                                  ; $6F7C: $01 $00 $01
    ld bc, $0100                                  ; $6F7F: $01 $00 $01
    ld bc, $5A00                                  ; $6F82: $01 $00 $5A
    ld [hl], e                                    ; $6F85: $73
    nop                                           ; $6F86: $00
    ld bc, $0001                                  ; $6F87: $01 $01 $00
    ld bc, $0001                                  ; $6F8A: $01 $01 $00
    ld bc, $EAAF                                  ; $6F8D: $01 $AF $EA
    add hl, de                                    ; $6F90: $19
    jp $1AEA                                      ; $6F91: $C3 $EA $1A


    jp $0031                                      ; $6F94: $C3 $31 $00


    db $DD                                        ; $6F97: $DD
    di                                            ; $6F98: $F3
    rst RST_10                                    ; $6F99: $D7
    ld hl, $C03A                                  ; $6F9A: $21 $3A $C0
    res 1, [hl]                                   ; $6F9D: $CB $8E
    xor a                                         ; $6F9F: $AF
    ldh [rBGP], a                                 ; $6FA0: $E0 $47
    ldh [rOBP0], a                                ; $6FA2: $E0 $48
    ldh [rOBP1], a                                ; $6FA4: $E0 $49
    call Call_000_13ED                            ; $6FA6: $CD $ED $13
    ld de, $0021                                  ; $6FA9: $11 $21 $00
    call Call_000_14C0                            ; $6FAC: $CD $C0 $14
    xor a                                         ; $6FAF: $AF
    ld [$C2AA], a                                 ; $6FB0: $EA $AA $C2
    ld [$C2AC], a                                 ; $6FB3: $EA $AC $C2
    ldh [$FFE2], a                                ; $6FB6: $E0 $E2
    ldh [$FFE4], a                                ; $6FB8: $E0 $E4
    ld hl, $6B96                                  ; $6FBA: $21 $96 $6B
    ld de, $C359                                  ; $6FBD: $11 $59 $C3
    ld b, $30                                     ; $6FC0: $06 $30
    rst RST_20                                    ; $6FC2: $E7
    ld hl, $C359                                  ; $6FC3: $21 $59 $C3
    ld de, $8000                                  ; $6FC6: $11 $00 $80
    ld b, $70                                     ; $6FC9: $06 $70
    call Call_000_1188                            ; $6FCB: $CD $88 $11
    ld hl, $7413                                  ; $6FCE: $21 $13 $74
    ld de, $C359                                  ; $6FD1: $11 $59 $C3
    ld b, $30                                     ; $6FD4: $06 $30
    rst RST_20                                    ; $6FD6: $E7
    ld hl, $C359                                  ; $6FD7: $21 $59 $C3
    ld de, $8810                                  ; $6FDA: $11 $10 $88
    ld b, $1C                                     ; $6FDD: $06 $1C
    call Call_000_1188                            ; $6FDF: $CD $88 $11
    ld hl, $C519                                  ; $6FE2: $21 $19 $C5
    ld de, $8700                                  ; $6FE5: $11 $00 $87
    ld b, $08                                     ; $6FE8: $06 $08
    call Call_000_1188                            ; $6FEA: $CD $88 $11
    xor a                                         ; $6FED: $AF
    ld hl, $C339                                  ; $6FEE: $21 $39 $C3
    ld c, $10                                     ; $6FF1: $0E $10

jr_03C_6FF3:
    ld [hl+], a                                   ; $6FF3: $22
    dec c                                         ; $6FF4: $0D
    jr nz, jr_03C_6FF3                            ; $6FF5: $20 $FC

    ld hl, $C339                                  ; $6FF7: $21 $39 $C3
    ld de, $8800                                  ; $6FFA: $11 $00 $88
    ld b, $01                                     ; $6FFD: $06 $01
    call Call_000_1188                            ; $6FFF: $CD $88 $11
    ld e, $00                                     ; $7002: $1E $00
    ld d, $80                                     ; $7004: $16 $80
    ld hl, $9800                                  ; $7006: $21 $00 $98
    ld b, $14                                     ; $7009: $06 $14
    ld c, $12                                     ; $700B: $0E $12
    call Call_000_10EA                            ; $700D: $CD $EA $10
    ld e, $00                                     ; $7010: $1E $00
    ld d, $81                                     ; $7012: $16 $81
    ld hl, $9826                                  ; $7014: $21 $26 $98
    ld b, $08                                     ; $7017: $06 $08
    ld c, $02                                     ; $7019: $0E $02
    call Call_000_1139                            ; $701B: $CD $39 $11
    ld e, $00                                     ; $701E: $1E $00
    ld d, $91                                     ; $7020: $16 $91
    ld hl, $9A27                                  ; $7022: $21 $27 $9A
    ld b, $0C                                     ; $7025: $06 $0C
    ld c, $01                                     ; $7027: $0E $01
    call Call_000_1111                            ; $7029: $CD $11 $11
    ld de, $76C4                                  ; $702C: $11 $C4 $76
    ld a, [$C006]                                 ; $702F: $FA $06 $C0
    or a                                          ; $7032: $B7
    jr z, jr_03C_7038                             ; $7033: $28 $03

    ld de, $772D                                  ; $7035: $11 $2D $77

jr_03C_7038:
    ld hl, $89D0                                  ; $7038: $21 $D0 $89
    ld c, $07                                     ; $703B: $0E $07

jr_03C_703D:
    push bc                                       ; $703D: $C5
    push hl                                       ; $703E: $E5
    push de                                       ; $703F: $D5
    ld hl, $C429                                  ; $7040: $21 $29 $C4
    ld de, $C529                                  ; $7043: $11 $29 $C5
    ld [hl], e                                    ; $7046: $73
    inc hl                                        ; $7047: $23
    ld [hl], d                                    ; $7048: $72
    inc hl                                        ; $7049: $23
    pop de                                        ; $704A: $D1
    push de                                       ; $704B: $D5
    call Call_03C_74C1                            ; $704C: $CD $C1 $74
    pop hl                                        ; $704F: $E1
    pop de                                        ; $7050: $D1
    push de                                       ; $7051: $D5
    push hl                                       ; $7052: $E5
    ld hl, $C929                                  ; $7053: $21 $29 $C9
    ld a, [$C42B]                                 ; $7056: $FA $2B $C4
    add a                                         ; $7059: $87
    ld b, a                                       ; $705A: $47
    call Call_000_1188                            ; $705B: $CD $88 $11
    pop hl                                        ; $705E: $E1
    ld de, $000F                                  ; $705F: $11 $0F $00
    add hl, de                                    ; $7062: $19
    ld e, l                                       ; $7063: $5D
    ld d, h                                       ; $7064: $54
    pop hl                                        ; $7065: $E1
    ld bc, $01E0                                  ; $7066: $01 $E0 $01
    add hl, bc                                    ; $7069: $09
    pop bc                                        ; $706A: $C1
    dec c                                         ; $706B: $0D
    jr nz, jr_03C_703D                            ; $706C: $20 $CF

    call Call_000_0F9E                            ; $706E: $CD $9E $0F
    ld a, $87                                     ; $7071: $3E $87
    rst RST_18                                    ; $7073: $DF
    xor a                                         ; $7074: $AF
    ldh [rSTAT], a                                ; $7075: $E0 $41
    ei                                            ; $7077: $FB
    ld de, $7525                                  ; $7078: $11 $25 $75
    ld hl, $C329                                  ; $707B: $21 $29 $C3
    ld c, $10                                     ; $707E: $0E $10

jr_03C_7080:
    ld a, [de]                                    ; $7080: $1A
    inc de                                        ; $7081: $13
    ld [hl+], a                                   ; $7082: $22
    dec c                                         ; $7083: $0D
    jr nz, jr_03C_7080                            ; $7084: $20 $FA

jr_03C_7086:
    ld a, [$C003]                                 ; $7086: $FA $03 $C0
    ld hl, $C331                                  ; $7089: $21 $31 $C3
    ld d, $00                                     ; $708C: $16 $00
    ld b, $00                                     ; $708E: $06 $00
    ld c, $07                                     ; $7090: $0E $07

jr_03C_7092:
    add a                                         ; $7092: $87
    jr nc, jr_03C_7098                            ; $7093: $30 $03

    inc d                                         ; $7095: $14
    ld [hl], b                                    ; $7096: $70
    inc hl                                        ; $7097: $23

jr_03C_7098:
    inc b                                         ; $7098: $04
    dec c                                         ; $7099: $0D
    jr nz, jr_03C_7092                            ; $709A: $20 $F6

    ld a, d                                       ; $709C: $7A
    or a                                          ; $709D: $B7
    jr nz, jr_03C_70AA                            ; $709E: $20 $0A

    ld a, [$C001]                                 ; $70A0: $FA $01 $C0
    or $80                                        ; $70A3: $F6 $80
    ld [$C001], a                                 ; $70A5: $EA $01 $C0
    jr jr_03C_7086                                ; $70A8: $18 $DC

jr_03C_70AA:
    ld [$C330], a                                 ; $70AA: $EA $30 $C3
    add a                                         ; $70AD: $87
    ld c, a                                       ; $70AE: $4F
    ld b, $00                                     ; $70AF: $06 $00
    ld hl, $7533                                  ; $70B1: $21 $33 $75
    add hl, bc                                    ; $70B4: $09
    ld c, [hl]                                    ; $70B5: $4E
    inc hl                                        ; $70B6: $23
    ld b, [hl]                                    ; $70B7: $46
    ld a, d                                       ; $70B8: $7A
    ld de, $C331                                  ; $70B9: $11 $31 $C3
    ld hl, $D6C0                                  ; $70BC: $21 $C0 $D6

jr_03C_70BF:
    push af                                       ; $70BF: $F5
    ld a, [de]                                    ; $70C0: $1A
    inc de                                        ; $70C1: $13
    push de                                       ; $70C2: $D5
    push af                                       ; $70C3: $F5
    ld a, [bc]                                    ; $70C4: $0A
    inc bc                                        ; $70C5: $03
    ld d, a                                       ; $70C6: $57
    ld a, [bc]                                    ; $70C7: $0A
    inc bc                                        ; $70C8: $03
    ld e, a                                       ; $70C9: $5F
    pop af                                        ; $70CA: $F1
    push bc                                       ; $70CB: $C5
    push hl                                       ; $70CC: $E5
    push de                                       ; $70CD: $D5
    push af                                       ; $70CE: $F5
    ld de, $75AC                                  ; $70CF: $11 $AC $75
    call Call_000_0F8E                            ; $70D2: $CD $8E $0F
    pop af                                        ; $70D5: $F1
    pop de                                        ; $70D6: $D1
    pop bc                                        ; $70D7: $C1
    push bc                                       ; $70D8: $C5
    ld hl, $0002                                  ; $70D9: $21 $02 $00
    add hl, bc                                    ; $70DC: $09
    add $01                                       ; $70DD: $C6 $01
    ld [hl], a                                    ; $70DF: $77
    ld hl, $0004                                  ; $70E0: $21 $04 $00
    add hl, bc                                    ; $70E3: $09
    ld [hl], d                                    ; $70E4: $72
    ld hl, $0006                                  ; $70E5: $21 $06 $00
    add hl, bc                                    ; $70E8: $09
    ld [hl], e                                    ; $70E9: $73
    pop hl                                        ; $70EA: $E1
    ld de, $0040                                  ; $70EB: $11 $40 $00
    add hl, de                                    ; $70EE: $19
    pop bc                                        ; $70EF: $C1
    pop de                                        ; $70F0: $D1
    pop af                                        ; $70F1: $F1
    dec a                                         ; $70F2: $3D
    jr nz, jr_03C_70BF                            ; $70F3: $20 $CA

    ld hl, $D680                                  ; $70F5: $21 $80 $D6
    ld de, $75CC                                  ; $70F8: $11 $CC $75
    call Call_000_0F8E                            ; $70FB: $CD $8E $0F
    ld hl, $0000                                  ; $70FE: $21 $00 $00
    ld a, [$C319]                                 ; $7101: $FA $19 $C3
    ld [$C32F], a                                 ; $7104: $EA $2F $C3
    or a                                          ; $7107: $B7
    jr z, jr_03C_7111                             ; $7108: $28 $07

    ld de, $0040                                  ; $710A: $11 $40 $00

jr_03C_710D:
    add hl, de                                    ; $710D: $19
    dec a                                         ; $710E: $3D
    jr nz, jr_03C_710D                            ; $710F: $20 $FC

jr_03C_7111:
    ld de, $D6C0                                  ; $7111: $11 $C0 $D6
    add hl, de                                    ; $7114: $19
    ld e, l                                       ; $7115: $5D
    ld d, h                                       ; $7116: $54
    ld hl, $C32D                                  ; $7117: $21 $2D $C3
    ld [hl], e                                    ; $711A: $73
    inc hl                                        ; $711B: $23
    ld [hl], d                                    ; $711C: $72
    ld hl, $0004                                  ; $711D: $21 $04 $00
    add hl, de                                    ; $7120: $19
    ld a, [hl]                                    ; $7121: $7E
    ld [$D684], a                                 ; $7122: $EA $84 $D6
    ld hl, $0006                                  ; $7125: $21 $06 $00
    add hl, de                                    ; $7128: $19
    ld a, [hl]                                    ; $7129: $7E
    ld [$D686], a                                 ; $712A: $EA $86 $D6
    call Call_03C_7492                            ; $712D: $CD $92 $74
    ld a, $81                                     ; $7130: $3E $81
    call Call_000_135D                            ; $7132: $CD $5D $13
    call Call_000_0424                            ; $7135: $CD $24 $04
    ld a, $1B                                     ; $7138: $3E $1B
    ldh [rOBP0], a                                ; $713A: $E0 $48
    ldh [rOBP1], a                                ; $713C: $E0 $49
    ldh [rBGP], a                                 ; $713E: $E0 $47
    call Call_000_147A                            ; $7140: $CD $7A $14

jr_03C_7143:
    call Call_03C_72B0                            ; $7143: $CD $B0 $72
    call Call_03C_7367                            ; $7146: $CD $67 $73
    ld hl, $C329                                  ; $7149: $21 $29 $C3
    ld e, [hl]                                    ; $714C: $5E
    inc hl                                        ; $714D: $23
    ld d, [hl]                                    ; $714E: $56
    inc de                                        ; $714F: $13
    ld [hl], d                                    ; $7150: $72
    dec hl                                        ; $7151: $2B
    ld [hl], e                                    ; $7152: $73
    call Call_000_0424                            ; $7153: $CD $24 $04
    ldh a, [$FF99]                                ; $7156: $F0 $99
    ld e, a                                       ; $7158: $5F
    ldh a, [$FFAC]                                ; $7159: $F0 $AC
    or e                                          ; $715B: $B3
    ld e, a                                       ; $715C: $5F
    and $60                                       ; $715D: $E6 $60
    jr nz, jr_03C_7169                            ; $715F: $20 $08

    ld a, e                                       ; $7161: $7B
    and $90                                       ; $7162: $E6 $90
    jr z, jr_03C_7143                             ; $7164: $28 $DD

    jp Jump_03C_717C                              ; $7166: $C3 $7C $71


jr_03C_7169:
    ld hl, $C03A                                  ; $7169: $21 $3A $C0
    res 2, [hl]                                   ; $716C: $CB $96
    ld a, $00                                     ; $716E: $3E $00
    call Call_000_135D                            ; $7170: $CD $5D $13
    call Call_000_0424                            ; $7173: $CD $24 $04
    ld b, $2B                                     ; $7176: $06 $2B
    ld hl, $4000                                  ; $7178: $21 $00 $40
    rst RST_00                                    ; $717B: $C7

Jump_03C_717C:
    di                                            ; $717C: $F3
    rst RST_10                                    ; $717D: $D7
    ld hl, $C03A                                  ; $717E: $21 $3A $C0
    res 1, [hl]                                   ; $7181: $CB $8E
    xor a                                         ; $7183: $AF
    ldh [rBGP], a                                 ; $7184: $E0 $47
    ldh [rOBP0], a                                ; $7186: $E0 $48
    ldh [rOBP1], a                                ; $7188: $E0 $49
    call Call_000_13ED                            ; $718A: $CD $ED $13
    ld de, $0021                                  ; $718D: $11 $21 $00
    call Call_000_14C0                            ; $7190: $CD $C0 $14
    xor a                                         ; $7193: $AF
    ld [$C2AA], a                                 ; $7194: $EA $AA $C2
    ld [$C2AC], a                                 ; $7197: $EA $AC $C2
    ldh [$FFE2], a                                ; $719A: $E0 $E2
    ldh [$FFE4], a                                ; $719C: $E0 $E4
    ld hl, $7568                                  ; $719E: $21 $68 $75
    ld de, $C359                                  ; $71A1: $11 $59 $C3
    ld b, $30                                     ; $71A4: $06 $30
    rst RST_20                                    ; $71A6: $E7
    ld hl, $C359                                  ; $71A7: $21 $59 $C3
    ld de, $8000                                  ; $71AA: $11 $00 $80
    ld b, $0C                                     ; $71AD: $06 $0C
    call Call_000_1188                            ; $71AF: $CD $88 $11
    xor a                                         ; $71B2: $AF
    ld hl, $C339                                  ; $71B3: $21 $39 $C3
    ld c, $10                                     ; $71B6: $0E $10

jr_03C_71B8:
    ld [hl+], a                                   ; $71B8: $22
    dec c                                         ; $71B9: $0D
    jr nz, jr_03C_71B8                            ; $71BA: $20 $FC

    ld hl, $C339                                  ; $71BC: $21 $39 $C3
    ld de, $8800                                  ; $71BF: $11 $00 $88
    ld b, $01                                     ; $71C2: $06 $01
    call Call_000_1188                            ; $71C4: $CD $88 $11
    ld e, $00                                     ; $71C7: $1E $00
    ld d, $80                                     ; $71C9: $16 $80
    ld hl, $9800                                  ; $71CB: $21 $00 $98
    ld b, $14                                     ; $71CE: $06 $14
    ld c, $12                                     ; $71D0: $0E $12
    call Call_000_10EA                            ; $71D2: $CD $EA $10
    ld d, $81                                     ; $71D5: $16 $81
    ld e, $07                                     ; $71D7: $1E $07
    ld hl, $9841                                  ; $71D9: $21 $41 $98

jr_03C_71DC:
    push de                                       ; $71DC: $D5
    push hl                                       ; $71DD: $E5
    ld e, $00                                     ; $71DE: $1E $00
    ld b, $12                                     ; $71E0: $06 $12
    ld c, $02                                     ; $71E2: $0E $02
    call Call_000_1139                            ; $71E4: $CD $39 $11
    pop hl                                        ; $71E7: $E1
    ld de, $0040                                  ; $71E8: $11 $40 $00
    add hl, de                                    ; $71EB: $19
    pop de                                        ; $71EC: $D1
    ld a, $24                                     ; $71ED: $3E $24
    add d                                         ; $71EF: $82
    ld d, a                                       ; $71F0: $57
    dec e                                         ; $71F1: $1D
    jr nz, jr_03C_71DC                            ; $71F2: $20 $E8

    ld hl, $757B                                  ; $71F4: $21 $7B $75
    ld a, [$C006]                                 ; $71F7: $FA $06 $C0
    or a                                          ; $71FA: $B7
    jr z, jr_03C_7200                             ; $71FB: $28 $03

    ld hl, $7589                                  ; $71FD: $21 $89 $75

jr_03C_7200:
    ld a, [$C32C]                                 ; $7200: $FA $2C $C3
    add a                                         ; $7203: $87
    ld e, a                                       ; $7204: $5F
    ld d, $00                                     ; $7205: $16 $00
    add hl, de                                    ; $7207: $19
    ld e, [hl]                                    ; $7208: $5E
    inc hl                                        ; $7209: $23
    ld d, [hl]                                    ; $720A: $56
    ld hl, $8810                                  ; $720B: $21 $10 $88
    ld c, $07                                     ; $720E: $0E $07

jr_03C_7210:
    push bc                                       ; $7210: $C5
    push hl                                       ; $7211: $E5
    push de                                       ; $7212: $D5
    ld hl, $C429                                  ; $7213: $21 $29 $C4
    ld de, $C529                                  ; $7216: $11 $29 $C5
    ld [hl], e                                    ; $7219: $73
    inc hl                                        ; $721A: $23
    ld [hl], d                                    ; $721B: $72
    inc hl                                        ; $721C: $23
    pop de                                        ; $721D: $D1
    push de                                       ; $721E: $D5
    call Call_03C_74BB                            ; $721F: $CD $BB $74
    pop hl                                        ; $7222: $E1
    pop de                                        ; $7223: $D1
    push de                                       ; $7224: $D5
    push hl                                       ; $7225: $E5
    ld hl, $C929                                  ; $7226: $21 $29 $C9
    ld a, [$C42B]                                 ; $7229: $FA $2B $C4
    add a                                         ; $722C: $87
    ld b, a                                       ; $722D: $47
    call Call_000_1188                            ; $722E: $CD $88 $11
    pop hl                                        ; $7231: $E1
    ld de, $0012                                  ; $7232: $11 $12 $00
    add hl, de                                    ; $7235: $19
    ld e, l                                       ; $7236: $5D
    ld d, h                                       ; $7237: $54
    pop hl                                        ; $7238: $E1
    ld bc, $0240                                  ; $7239: $01 $40 $02
    add hl, bc                                    ; $723C: $09
    pop bc                                        ; $723D: $C1
    dec c                                         ; $723E: $0D
    jr nz, jr_03C_7210                            ; $723F: $20 $CF

    call Call_000_0F9E                            ; $7241: $CD $9E $0F
    ld hl, $D680                                  ; $7244: $21 $80 $D6
    ld de, $764B                                  ; $7247: $11 $4B $76
    call Call_000_0F8E                            ; $724A: $CD $8E $0F
    ld a, $87                                     ; $724D: $3E $87
    rst RST_18                                    ; $724F: $DF
    xor a                                         ; $7250: $AF
    ldh [rSTAT], a                                ; $7251: $E0 $41
    ei                                            ; $7253: $FB
    ld a, $AD                                     ; $7254: $3E $AD
    call Call_000_1360                            ; $7256: $CD $60 $13
    call Call_000_0424                            ; $7259: $CD $24 $04
    ld a, $1B                                     ; $725C: $3E $1B
    ldh [rOBP0], a                                ; $725E: $E0 $48
    ldh [rOBP1], a                                ; $7260: $E0 $49
    ldh [rBGP], a                                 ; $7262: $E0 $47
    call Call_000_147A                            ; $7264: $CD $7A $14

jr_03C_7267:
    ld hl, $D680                                  ; $7267: $21 $80 $D6
    call Call_000_0E28                            ; $726A: $CD $28 $0E
    ld hl, $C329                                  ; $726D: $21 $29 $C3
    ld e, [hl]                                    ; $7270: $5E
    inc hl                                        ; $7271: $23
    ld d, [hl]                                    ; $7272: $56
    inc de                                        ; $7273: $13
    ld [hl], d                                    ; $7274: $72
    dec hl                                        ; $7275: $2B
    ld [hl], e                                    ; $7276: $73
    call Call_000_0424                            ; $7277: $CD $24 $04
    ldh a, [$FF99]                                ; $727A: $F0 $99
    ld e, a                                       ; $727C: $5F
    ldh a, [$FFAC]                                ; $727D: $F0 $AC
    or e                                          ; $727F: $B3
    ld e, a                                       ; $7280: $5F
    ld a, e                                       ; $7281: $7B
    and $90                                       ; $7282: $E6 $90
    jr z, jr_03C_7267                             ; $7284: $28 $E1

    ld hl, $C03A                                  ; $7286: $21 $3A $C0
    res 2, [hl]                                   ; $7289: $CB $96
    ld a, $00                                     ; $728B: $3E $00
    call Call_000_135D                            ; $728D: $CD $5D $13
    call Call_000_0424                            ; $7290: $CD $24 $04
    ld a, [$C32F]                                 ; $7293: $FA $2F $C3
    ld [$C319], a                                 ; $7296: $EA $19 $C3
    ld a, [$C32C]                                 ; $7299: $FA $2C $C3
    ld [$C31A], a                                 ; $729C: $EA $1A $C3
    ld e, a                                       ; $729F: $5F
    add a                                         ; $72A0: $87
    add e                                         ; $72A1: $83
    ld e, a                                       ; $72A2: $5F
    ld d, $00                                     ; $72A3: $16 $00
    ld hl, $7597                                  ; $72A5: $21 $97 $75
    add hl, de                                    ; $72A8: $19
    ld b, [hl]                                    ; $72A9: $46
    inc hl                                        ; $72AA: $23
    ld a, [hl+]                                   ; $72AB: $2A
    ld d, [hl]                                    ; $72AC: $56
    ld l, a                                       ; $72AD: $6F
    ld h, d                                       ; $72AE: $62
    rst RST_00                                    ; $72AF: $C7

Call_03C_72B0:
    ldh a, [$FF99]                                ; $72B0: $F0 $99
    ld e, a                                       ; $72B2: $5F
    ldh a, [$FFAC]                                ; $72B3: $F0 $AC
    or e                                          ; $72B5: $B3
    bit 0, a                                      ; $72B6: $CB $47
    jr nz, jr_03C_72CA                            ; $72B8: $20 $10

    bit 1, a                                      ; $72BA: $CB $4F
    jr z, jr_03C_72EB                             ; $72BC: $28 $2D

    ld a, [$C32F]                                 ; $72BE: $FA $2F $C3
    or a                                          ; $72C1: $B7
    jr nz, jr_03C_72C7                            ; $72C2: $20 $03

    ld a, [$C330]                                 ; $72C4: $FA $30 $C3

jr_03C_72C7:
    dec a                                         ; $72C7: $3D
    jr jr_03C_72D6                                ; $72C8: $18 $0C

jr_03C_72CA:
    ld a, [$C330]                                 ; $72CA: $FA $30 $C3
    ld e, a                                       ; $72CD: $5F
    ld a, [$C32F]                                 ; $72CE: $FA $2F $C3
    inc a                                         ; $72D1: $3C
    cp e                                          ; $72D2: $BB
    jr c, jr_03C_72D6                             ; $72D3: $38 $01

    xor a                                         ; $72D5: $AF

jr_03C_72D6:
    ld [$C32F], a                                 ; $72D6: $EA $2F $C3
    call Call_03C_7492                            ; $72D9: $CD $92 $74
    ld a, [$C32D]                                 ; $72DC: $FA $2D $C3
    ld l, a                                       ; $72DF: $6F
    ld a, [$C32E]                                 ; $72E0: $FA $2E $C3
    ld h, a                                       ; $72E3: $67
    ld de, $001D                                  ; $72E4: $11 $1D $00
    add hl, de                                    ; $72E7: $19
    ld a, $02                                     ; $72E8: $3E $02
    ld [hl], a                                    ; $72EA: $77

jr_03C_72EB:
    ld a, [$C32F]                                 ; $72EB: $FA $2F $C3
    or a                                          ; $72EE: $B7
    jr z, jr_03C_7303                             ; $72EF: $28 $12

    ld de, $0040                                  ; $72F1: $11 $40 $00
    ld hl, $0000                                  ; $72F4: $21 $00 $00

jr_03C_72F7:
    add hl, de                                    ; $72F7: $19
    dec a                                         ; $72F8: $3D
    jr nz, jr_03C_72F7                            ; $72F9: $20 $FC

    ld de, $D6C0                                  ; $72FB: $11 $C0 $D6
    add hl, de                                    ; $72FE: $19
    ld e, l                                       ; $72FF: $5D
    ld d, h                                       ; $7300: $54
    jr jr_03C_7306                                ; $7301: $18 $03

jr_03C_7303:
    ld de, $D6C0                                  ; $7303: $11 $C0 $D6

jr_03C_7306:
    ld a, e                                       ; $7306: $7B
    ld [$C32D], a                                 ; $7307: $EA $2D $C3
    ld a, d                                       ; $730A: $7A
    ld [$C32E], a                                 ; $730B: $EA $2E $C3
    ld hl, $001D                                  ; $730E: $21 $1D $00
    add hl, de                                    ; $7311: $19
    xor a                                         ; $7312: $AF
    ld [hl], a                                    ; $7313: $77
    ld hl, $0004                                  ; $7314: $21 $04 $00
    add hl, de                                    ; $7317: $19
    ld b, [hl]                                    ; $7318: $46
    ld hl, $0006                                  ; $7319: $21 $06 $00
    add hl, de                                    ; $731C: $19
    ld c, [hl]                                    ; $731D: $4E
    ld a, [$D684]                                 ; $731E: $FA $84 $D6
    cp b                                          ; $7321: $B8
    jr z, jr_03C_7342                             ; $7322: $28 $1E

    jr nc, jr_03C_7335                            ; $7324: $30 $0F

    ld e, a                                       ; $7326: $5F
    ld a, b                                       ; $7327: $78
    sub e                                         ; $7328: $93
    sra a                                         ; $7329: $CB $2F
    sra a                                         ; $732B: $CB $2F
    sra a                                         ; $732D: $CB $2F
    or a                                          ; $732F: $B7
    jr nz, jr_03C_733E                            ; $7330: $20 $0C

    inc a                                         ; $7332: $3C
    jr jr_03C_733E                                ; $7333: $18 $09

jr_03C_7335:
    ld e, a                                       ; $7335: $5F
    ld a, b                                       ; $7336: $78
    sub e                                         ; $7337: $93
    sra a                                         ; $7338: $CB $2F
    sra a                                         ; $733A: $CB $2F
    sra a                                         ; $733C: $CB $2F

jr_03C_733E:
    add e                                         ; $733E: $83
    ld [$D684], a                                 ; $733F: $EA $84 $D6

jr_03C_7342:
    ld a, [$D686]                                 ; $7342: $FA $86 $D6
    cp c                                          ; $7345: $B9
    jr z, jr_03C_7366                             ; $7346: $28 $1E

    jr nc, jr_03C_7359                            ; $7348: $30 $0F

    ld e, a                                       ; $734A: $5F
    ld a, c                                       ; $734B: $79
    sub e                                         ; $734C: $93
    sra a                                         ; $734D: $CB $2F
    sra a                                         ; $734F: $CB $2F
    sra a                                         ; $7351: $CB $2F
    or a                                          ; $7353: $B7
    jr nz, jr_03C_7362                            ; $7354: $20 $0C

    inc a                                         ; $7356: $3C
    jr jr_03C_7362                                ; $7357: $18 $09

jr_03C_7359:
    ld e, a                                       ; $7359: $5F
    ld a, c                                       ; $735A: $79
    sub e                                         ; $735B: $93
    sra a                                         ; $735C: $CB $2F
    sra a                                         ; $735E: $CB $2F
    sra a                                         ; $7360: $CB $2F

jr_03C_7362:
    add e                                         ; $7362: $83
    ld [$D686], a                                 ; $7363: $EA $86 $D6

jr_03C_7366:
    ret                                           ; $7366: $C9


Call_03C_7367:
    ld hl, $D680                                  ; $7367: $21 $80 $D6
    call Call_000_0E28                            ; $736A: $CD $28 $0E
    ld hl, $D6C0                                  ; $736D: $21 $C0 $D6
    call Call_000_0E28                            ; $7370: $CD $28 $0E
    ld hl, $D700                                  ; $7373: $21 $00 $D7
    call Call_000_0E28                            ; $7376: $CD $28 $0E
    ld hl, $D740                                  ; $7379: $21 $40 $D7
    call Call_000_0E28                            ; $737C: $CD $28 $0E
    ld hl, $D780                                  ; $737F: $21 $80 $D7
    call Call_000_0E28                            ; $7382: $CD $28 $0E
    ld hl, $D7C0                                  ; $7385: $21 $C0 $D7
    call Call_000_0E28                            ; $7388: $CD $28 $0E
    ld hl, $D800                                  ; $738B: $21 $00 $D8
    call Call_000_0E28                            ; $738E: $CD $28 $0E
    ld hl, $D840                                  ; $7391: $21 $40 $D8
    call Call_000_0E28                            ; $7394: $CD $28 $0E
    ld a, [$D6D4]                                 ; $7397: $FA $D4 $D6
    ld b, $00                                     ; $739A: $06 $00
    cp $40                                        ; $739C: $FE $40
    jr c, jr_03C_73A2                             ; $739E: $38 $02

    ld b, $40                                     ; $73A0: $06 $40

jr_03C_73A2:
    ld a, b                                       ; $73A2: $78
    ld [$D6CE], a                                 ; $73A3: $EA $CE $D6
    ld a, [$D6DC]                                 ; $73A6: $FA $DC $D6
    or a                                          ; $73A9: $B7
    jr nz, jr_03C_73B5                            ; $73AA: $20 $09

    ld a, [$D6D4]                                 ; $73AC: $FA $D4 $D6
    ld hl, $D6C6                                  ; $73AF: $21 $C6 $D6
    call Call_03C_746A                            ; $73B2: $CD $6A $74

jr_03C_73B5:
    ld a, [$D714]                                 ; $73B5: $FA $14 $D7
    ld b, $00                                     ; $73B8: $06 $00
    cp $40                                        ; $73BA: $FE $40
    jr c, jr_03C_73C0                             ; $73BC: $38 $02

    ld b, $40                                     ; $73BE: $06 $40

jr_03C_73C0:
    ld a, b                                       ; $73C0: $78
    ld [$D70E], a                                 ; $73C1: $EA $0E $D7
    ld a, [$D71C]                                 ; $73C4: $FA $1C $D7
    or a                                          ; $73C7: $B7
    jr nz, jr_03C_73D3                            ; $73C8: $20 $09

    ld a, [$D714]                                 ; $73CA: $FA $14 $D7
    ld hl, $D706                                  ; $73CD: $21 $06 $D7
    call Call_03C_746A                            ; $73D0: $CD $6A $74

jr_03C_73D3:
    ld a, [$D754]                                 ; $73D3: $FA $54 $D7
    ld b, $00                                     ; $73D6: $06 $00
    cp $40                                        ; $73D8: $FE $40
    jr c, jr_03C_73DE                             ; $73DA: $38 $02

    ld b, $40                                     ; $73DC: $06 $40

jr_03C_73DE:
    ld a, b                                       ; $73DE: $78
    ld [$D74E], a                                 ; $73DF: $EA $4E $D7
    ld a, [$D75C]                                 ; $73E2: $FA $5C $D7
    or a                                          ; $73E5: $B7
    jr nz, jr_03C_73F1                            ; $73E6: $20 $09

    ld a, [$D754]                                 ; $73E8: $FA $54 $D7
    ld hl, $D746                                  ; $73EB: $21 $46 $D7
    call Call_03C_746A                            ; $73EE: $CD $6A $74

jr_03C_73F1:
    ld a, [$D794]                                 ; $73F1: $FA $94 $D7
    ld b, $00                                     ; $73F4: $06 $00
    cp $40                                        ; $73F6: $FE $40
    jr c, jr_03C_73FC                             ; $73F8: $38 $02

    ld b, $40                                     ; $73FA: $06 $40

jr_03C_73FC:
    ld a, b                                       ; $73FC: $78
    ld [$D78E], a                                 ; $73FD: $EA $8E $D7
    ld a, [$D79C]                                 ; $7400: $FA $9C $D7
    or a                                          ; $7403: $B7
    jr nz, jr_03C_740F                            ; $7404: $20 $09

    ld a, [$D794]                                 ; $7406: $FA $94 $D7
    ld hl, $D786                                  ; $7409: $21 $86 $D7
    call Call_03C_746A                            ; $740C: $CD $6A $74

jr_03C_740F:
    ld a, [$D7D4]                                 ; $740F: $FA $D4 $D7
    ld b, $00                                     ; $7412: $06 $00
    cp $40                                        ; $7414: $FE $40
    jr c, jr_03C_741A                             ; $7416: $38 $02

    ld b, $40                                     ; $7418: $06 $40

jr_03C_741A:
    ld a, b                                       ; $741A: $78
    ld [$D7CE], a                                 ; $741B: $EA $CE $D7
    ld a, [$D7DC]                                 ; $741E: $FA $DC $D7
    or a                                          ; $7421: $B7
    jr nz, jr_03C_742D                            ; $7422: $20 $09

    ld a, [$D7D4]                                 ; $7424: $FA $D4 $D7
    ld hl, $D7C6                                  ; $7427: $21 $C6 $D7
    call Call_03C_746A                            ; $742A: $CD $6A $74

jr_03C_742D:
    ld a, [$D814]                                 ; $742D: $FA $14 $D8
    ld b, $00                                     ; $7430: $06 $00
    cp $40                                        ; $7432: $FE $40
    jr c, jr_03C_7438                             ; $7434: $38 $02

    ld b, $40                                     ; $7436: $06 $40

jr_03C_7438:
    ld a, b                                       ; $7438: $78
    ld [$D80E], a                                 ; $7439: $EA $0E $D8
    ld a, [$D81C]                                 ; $743C: $FA $1C $D8
    or a                                          ; $743F: $B7
    jr nz, jr_03C_744B                            ; $7440: $20 $09

    ld a, [$D814]                                 ; $7442: $FA $14 $D8
    ld hl, $D806                                  ; $7445: $21 $06 $D8
    call Call_03C_746A                            ; $7448: $CD $6A $74

jr_03C_744B:
    ld a, [$D854]                                 ; $744B: $FA $54 $D8
    ld b, $00                                     ; $744E: $06 $00
    cp $40                                        ; $7450: $FE $40
    jr c, jr_03C_7456                             ; $7452: $38 $02

    ld b, $40                                     ; $7454: $06 $40

jr_03C_7456:
    ld a, b                                       ; $7456: $78
    ld [$D84E], a                                 ; $7457: $EA $4E $D8
    ld a, [$D85C]                                 ; $745A: $FA $5C $D8
    or a                                          ; $745D: $B7
    jr nz, jr_03C_7469                            ; $745E: $20 $09

    ld a, [$D854]                                 ; $7460: $FA $54 $D8
    ld hl, $D846                                  ; $7463: $21 $46 $D8
    call Call_03C_746A                            ; $7466: $CD $6A $74

jr_03C_7469:
    ret                                           ; $7469: $C9


Call_03C_746A:
    cp $30                                        ; $746A: $FE $30
    jr c, jr_03C_7480                             ; $746C: $38 $12

    cp $38                                        ; $746E: $FE $38
    jr z, jr_03C_747E                             ; $7470: $28 $0C

    cp $44                                        ; $7472: $FE $44
    jr z, jr_03C_747E                             ; $7474: $28 $08

    cp $4C                                        ; $7476: $FE $4C
    jr z, jr_03C_747E                             ; $7478: $28 $04

    cp $58                                        ; $747A: $FE $58
    jr nz, jr_03C_747F                            ; $747C: $20 $01

jr_03C_747E:
    inc [hl]                                      ; $747E: $34

jr_03C_747F:
    ret                                           ; $747F: $C9


jr_03C_7480:
    cp $08                                        ; $7480: $FE $08
    jr z, jr_03C_7490                             ; $7482: $28 $0C

    cp $14                                        ; $7484: $FE $14
    jr z, jr_03C_7490                             ; $7486: $28 $08

    cp $1C                                        ; $7488: $FE $1C
    jr z, jr_03C_7490                             ; $748A: $28 $04

    cp $28                                        ; $748C: $FE $28
    jr nz, jr_03C_747F                            ; $748E: $20 $EF

jr_03C_7490:
    dec [hl]                                      ; $7490: $35
    ret                                           ; $7491: $C9


Call_03C_7492:
    ld a, [$C32F]                                 ; $7492: $FA $2F $C3
    ld e, a                                       ; $7495: $5F
    ld d, $00                                     ; $7496: $16 $00
    ld hl, $C331                                  ; $7498: $21 $31 $C3
    add hl, de                                    ; $749B: $19
    ld a, [hl]                                    ; $749C: $7E
    ld [$C32C], a                                 ; $749D: $EA $2C $C3
    or a                                          ; $74A0: $B7
    jr z, jr_03C_74AB                             ; $74A1: $28 $08

    ld c, a                                       ; $74A3: $4F
    xor a                                         ; $74A4: $AF
    ld e, $1E                                     ; $74A5: $1E $1E

jr_03C_74A7:
    add e                                         ; $74A7: $83
    dec c                                         ; $74A8: $0D
    jr nz, jr_03C_74A7                            ; $74A9: $20 $FC

jr_03C_74AB:
    ld e, $00                                     ; $74AB: $1E $00
    ld d, $9D                                     ; $74AD: $16 $9D
    add d                                         ; $74AF: $82
    ld d, a                                       ; $74B0: $57
    ld hl, $99C2                                  ; $74B1: $21 $C2 $99
    ld b, $0F                                     ; $74B4: $06 $0F
    ld c, $02                                     ; $74B6: $0E $02
    jp Jump_000_1139                              ; $74B8: $C3 $39 $11


Call_03C_74BB:
    ld a, $12                                     ; $74BB: $3E $12
    ld [hl+], a                                   ; $74BD: $22
    ld c, a                                       ; $74BE: $4F
    jr jr_03C_74C5                                ; $74BF: $18 $04

Call_03C_74C1:
    ld a, $0F                                     ; $74C1: $3E $0F
    ld [hl+], a                                   ; $74C3: $22
    ld c, a                                       ; $74C4: $4F

Jump_03C_74C5:
jr_03C_74C5:
    ld a, [de]                                    ; $74C5: $1A
    inc de                                        ; $74C6: $13
    ld [hl+], a                                   ; $74C7: $22
    dec c                                         ; $74C8: $0D
    jp nz, Jump_03C_74C5                          ; $74C9: $C2 $C5 $74

    ld de, $C429                                  ; $74CC: $11 $29 $C4
    ld hl, $C312                                  ; $74CF: $21 $12 $C3
    ld [hl], e                                    ; $74D2: $73
    inc hl                                        ; $74D3: $23
    ld [hl], d                                    ; $74D4: $72
    ld b, $36                                     ; $74D5: $06 $36
    ld hl, $4000                                  ; $74D7: $21 $00 $40
    rst RST_08                                    ; $74DA: $CF
    ld a, [$C42B]                                 ; $74DB: $FA $2B $C4
    add a                                         ; $74DE: $87
    ld c, a                                       ; $74DF: $4F
    ld de, $C529                                  ; $74E0: $11 $29 $C5
    ld hl, $C929                                  ; $74E3: $21 $29 $C9

Jump_03C_74E6:
    xor a                                         ; $74E6: $AF
    ld [hl+], a                                   ; $74E7: $22
    ld [hl+], a                                   ; $74E8: $22
    ld [hl+], a                                   ; $74E9: $22
    ld [hl+], a                                   ; $74EA: $22
    ld a, [de]                                    ; $74EB: $1A
    inc de                                        ; $74EC: $13
    ld [hl+], a                                   ; $74ED: $22
    ld [hl+], a                                   ; $74EE: $22
    ld a, [de]                                    ; $74EF: $1A
    inc de                                        ; $74F0: $13
    ld [hl+], a                                   ; $74F1: $22
    ld [hl+], a                                   ; $74F2: $22
    ld a, [de]                                    ; $74F3: $1A
    inc de                                        ; $74F4: $13
    ld [hl+], a                                   ; $74F5: $22
    ld [hl+], a                                   ; $74F6: $22
    ld a, [de]                                    ; $74F7: $1A
    inc de                                        ; $74F8: $13
    ld [hl+], a                                   ; $74F9: $22
    ld [hl+], a                                   ; $74FA: $22
    ld a, [de]                                    ; $74FB: $1A
    inc de                                        ; $74FC: $13
    ld [hl+], a                                   ; $74FD: $22
    ld [hl+], a                                   ; $74FE: $22
    ld a, [de]                                    ; $74FF: $1A
    inc de                                        ; $7500: $13
    ld [hl+], a                                   ; $7501: $22
    ld [hl+], a                                   ; $7502: $22
    ld a, [de]                                    ; $7503: $1A
    inc de                                        ; $7504: $13
    ld [hl+], a                                   ; $7505: $22
    ld [hl+], a                                   ; $7506: $22
    ld a, [de]                                    ; $7507: $1A
    inc de                                        ; $7508: $13
    ld [hl+], a                                   ; $7509: $22
    ld [hl+], a                                   ; $750A: $22
    ld a, [de]                                    ; $750B: $1A
    inc de                                        ; $750C: $13
    ld [hl+], a                                   ; $750D: $22
    ld [hl+], a                                   ; $750E: $22
    ld a, [de]                                    ; $750F: $1A
    inc de                                        ; $7510: $13
    ld [hl+], a                                   ; $7511: $22
    ld [hl+], a                                   ; $7512: $22
    ld a, [de]                                    ; $7513: $1A
    inc de                                        ; $7514: $13
    ld [hl+], a                                   ; $7515: $22
    ld [hl+], a                                   ; $7516: $22
    ld a, [de]                                    ; $7517: $1A
    inc de                                        ; $7518: $13
    ld [hl+], a                                   ; $7519: $22
    ld [hl+], a                                   ; $751A: $22
    xor a                                         ; $751B: $AF
    ld [hl+], a                                   ; $751C: $22
    ld [hl+], a                                   ; $751D: $22
    ld [hl+], a                                   ; $751E: $22
    ld [hl+], a                                   ; $751F: $22
    dec c                                         ; $7520: $0D
    jp nz, Jump_03C_74E6                          ; $7521: $C2 $E6 $74

    ret                                           ; $7524: $C9


    nop                                           ; $7525: $00
    nop                                           ; $7526: $00
    nop                                           ; $7527: $00
    nop                                           ; $7528: $00
    ret nz                                        ; $7529: $C0

    sub $00                                       ; $752A: $D6 $00
    nop                                           ; $752C: $00
    nop                                           ; $752D: $00
    nop                                           ; $752E: $00
    nop                                           ; $752F: $00
    nop                                           ; $7530: $00
    nop                                           ; $7531: $00
    nop                                           ; $7532: $00
    nop                                           ; $7533: $00
    nop                                           ; $7534: $00
    ld b, e                                       ; $7535: $43
    ld [hl], l                                    ; $7536: $75
    ld b, l                                       ; $7537: $45
    ld [hl], l                                    ; $7538: $75
    ld c, c                                       ; $7539: $49
    ld [hl], l                                    ; $753A: $75
    ld c, a                                       ; $753B: $4F
    ld [hl], l                                    ; $753C: $75
    ld d, a                                       ; $753D: $57
    ld [hl], l                                    ; $753E: $75
    ld h, c                                       ; $753F: $61
    ld [hl], l                                    ; $7540: $75
    ld l, l                                       ; $7541: $6D
    ld [hl], l                                    ; $7542: $75
    ld c, b                                       ; $7543: $48
    ld b, b                                       ; $7544: $40
    jr nc, jr_03C_7587                            ; $7545: $30 $40

    ld h, b                                       ; $7547: $60
    ld b, b                                       ; $7548: $40
    jr z, jr_03C_7583                             ; $7549: $28 $38

    ld c, b                                       ; $754B: $48
    ld c, h                                       ; $754C: $4C
    ld l, b                                       ; $754D: $68
    jr c, jr_03C_7568                             ; $754E: $38 $18

    jr c, jr_03C_758A                             ; $7550: $38 $38

    ld c, h                                       ; $7552: $4C
    ld e, b                                       ; $7553: $58
    ld c, h                                       ; $7554: $4C
    ld a, b                                       ; $7555: $78
    jr c, @+$1A                                   ; $7556: $38 $18

    jr nc, jr_03C_75A2                            ; $7558: $30 $48

    jr nc, jr_03C_75D4                            ; $755A: $30 $78

    jr nc, jr_03C_758E                            ; $755C: $30 $30

    ld d, h                                       ; $755E: $54
    ld h, b                                       ; $755F: $60
    ld d, h                                       ; $7560: $54
    jr jr_03C_7593                                ; $7561: $18 $30

    jr c, jr_03C_7595                             ; $7563: $38 $30

    ld e, b                                       ; $7565: $58
    jr nc, jr_03C_75E0                            ; $7566: $30 $78

jr_03C_7568:
    jr nc, jr_03C_7592                            ; $7568: $30 $28

    ld d, h                                       ; $756A: $54
    ld l, b                                       ; $756B: $68
    ld d, h                                       ; $756C: $54
    jr jr_03C_759F                                ; $756D: $18 $30

    jr c, jr_03C_75A1                             ; $756F: $38 $30

    ld e, b                                       ; $7571: $58
    jr nc, jr_03C_75EC                            ; $7572: $30 $78

    jr nc, @+$2A                                  ; $7574: $30 $28

    ld d, h                                       ; $7576: $54
    ld c, b                                       ; $7577: $48
    ld d, h                                       ; $7578: $54
    ld l, b                                       ; $7579: $68
    ld d, h                                       ; $757A: $54
    sub [hl]                                      ; $757B: $96
    ld [hl], a                                    ; $757C: $77
    sub d                                         ; $757D: $92
    ld a, b                                       ; $757E: $78
    adc [hl]                                      ; $757F: $8E
    ld a, c                                       ; $7580: $79
    adc d                                         ; $7581: $8A
    ld a, d                                       ; $7582: $7A

jr_03C_7583:
    add [hl]                                      ; $7583: $86
    ld a, e                                       ; $7584: $7B
    add d                                         ; $7585: $82
    ld a, h                                       ; $7586: $7C

jr_03C_7587:
    and d                                         ; $7587: $A2
    ld a, l                                       ; $7588: $7D
    inc d                                         ; $7589: $14

jr_03C_758A:
    ld a, b                                       ; $758A: $78
    db $10                                        ; $758B: $10
    ld a, c                                       ; $758C: $79
    inc c                                         ; $758D: $0C

jr_03C_758E:
    ld a, d                                       ; $758E: $7A
    ld [$047B], sp                                ; $758F: $08 $7B $04

jr_03C_7592:
    ld a, h                                       ; $7592: $7C

jr_03C_7593:
    ld [de], a                                    ; $7593: $12
    ld a, l                                       ; $7594: $7D

jr_03C_7595:
    jr nz, @+$80                                  ; $7595: $20 $7E

    ld a, $79                                     ; $7597: $3E $79
    ld c, h                                       ; $7599: $4C
    ld a, $79                                     ; $759A: $3E $79
    ld c, h                                       ; $759C: $4C
    ld a, $79                                     ; $759D: $3E $79

jr_03C_759F:
    ld c, h                                       ; $759F: $4C
    dec a                                         ; $75A0: $3D

jr_03C_75A1:
    nop                                           ; $75A1: $00

jr_03C_75A2:
    ld b, b                                       ; $75A2: $40
    dec a                                         ; $75A3: $3D
    nop                                           ; $75A4: $00
    ld b, b                                       ; $75A5: $40
    dec sp                                        ; $75A6: $3B
    ld bc, $3B60                                  ; $75A7: $01 $60 $3B
    ld e, e                                       ; $75AA: $5B
    ld [hl], d                                    ; $75AB: $72
    add b                                         ; $75AC: $80
    nop                                           ; $75AD: $00
    add b                                         ; $75AE: $80
    add b                                         ; $75AF: $80
    ld c, b                                       ; $75B0: $48
    nop                                           ; $75B1: $00
    ld d, b                                       ; $75B2: $50
    nop                                           ; $75B3: $00
    nop                                           ; $75B4: $00
    nop                                           ; $75B5: $00
    nop                                           ; $75B6: $00
    nop                                           ; $75B7: $00
    nop                                           ; $75B8: $00
    nop                                           ; $75B9: $00
    nop                                           ; $75BA: $00
    nop                                           ; $75BB: $00
    add b                                         ; $75BC: $80
    inc a                                         ; $75BD: $3C
    dec de                                        ; $75BE: $1B
    ld b, a                                       ; $75BF: $47
    nop                                           ; $75C0: $00
    nop                                           ; $75C1: $00
    dec de                                        ; $75C2: $1B
    ld b, a                                       ; $75C3: $47
    nop                                           ; $75C4: $00
    nop                                           ; $75C5: $00
    nop                                           ; $75C6: $00
    nop                                           ; $75C7: $00
    ld [bc], a                                    ; $75C8: $02
    ld [bc], a                                    ; $75C9: $02
    ret nz                                        ; $75CA: $C0

    ret c                                         ; $75CB: $D8

    add b                                         ; $75CC: $80
    nop                                           ; $75CD: $00
    add b                                         ; $75CE: $80
    add b                                         ; $75CF: $80
    ld c, b                                       ; $75D0: $48
    nop                                           ; $75D1: $00
    ld b, b                                       ; $75D2: $40
    nop                                           ; $75D3: $00

jr_03C_75D4:
    nop                                           ; $75D4: $00
    nop                                           ; $75D5: $00
    nop                                           ; $75D6: $00
    nop                                           ; $75D7: $00
    nop                                           ; $75D8: $00
    nop                                           ; $75D9: $00
    ld [hl], b                                    ; $75DA: $70
    nop                                           ; $75DB: $00
    add b                                         ; $75DC: $80
    inc a                                         ; $75DD: $3C
    db $EC                                        ; $75DE: $EC
    ld [hl], l                                    ; $75DF: $75

jr_03C_75E0:
    nop                                           ; $75E0: $00
    nop                                           ; $75E1: $00
    db $EC                                        ; $75E2: $EC
    ld [hl], l                                    ; $75E3: $75
    nop                                           ; $75E4: $00
    nop                                           ; $75E5: $00
    nop                                           ; $75E6: $00
    nop                                           ; $75E7: $00
    inc bc                                        ; $75E8: $03
    inc bc                                        ; $75E9: $03
    ret nz                                        ; $75EA: $C0

    ret c                                         ; $75EB: $D8

jr_03C_75EC:
    ld b, $76                                     ; $75EC: $06 $76
    rst RST_38                                    ; $75EE: $FF
    rst RST_38                                    ; $75EF: $FF
    ld b, $76                                     ; $75F0: $06 $76
    rst RST_38                                    ; $75F2: $FF
    rst RST_38                                    ; $75F3: $FF
    dec e                                         ; $75F4: $1D
    halt                                          ; $75F5: $76
    rst RST_38                                    ; $75F6: $FF
    rst RST_38                                    ; $75F7: $FF
    inc [hl]                                      ; $75F8: $34
    halt                                          ; $75F9: $76
    rst RST_38                                    ; $75FA: $FF
    rst RST_38                                    ; $75FB: $FF
    inc [hl]                                      ; $75FC: $34
    halt                                          ; $75FD: $76
    rst RST_38                                    ; $75FE: $FF
    rst RST_38                                    ; $75FF: $FF

Call_03C_7600:
    dec e                                         ; $7600: $1D
    halt                                          ; $7601: $76
    rst RST_38                                    ; $7602: $FF
    rst RST_38                                    ; $7603: $FF
    rst RST_38                                    ; $7604: $FF
    rst RST_38                                    ; $7605: $FF
    sub b                                         ; $7606: $90
    nop                                           ; $7607: $00
    nop                                           ; $7608: $00
    rst RST_38                                    ; $7609: $FF
    rst RST_38                                    ; $760A: $FF
    rst RST_38                                    ; $760B: $FF
    db $10                                        ; $760C: $10
    halt                                          ; $760D: $76
    nop                                           ; $760E: $00
    nop                                           ; $760F: $00
    inc b                                         ; $7610: $04
    cp $FA                                        ; $7611: $FE $FA
    nop                                           ; $7613: $00
    cp $0D                                        ; $7614: $FE $0D
    ld [bc], a                                    ; $7616: $02
    ld [de], a                                    ; $7617: $12
    ld a, [$1204]                                 ; $7618: $FA $04 $12
    dec c                                         ; $761B: $0D
    ld b, $90                                     ; $761C: $06 $90
    nop                                           ; $761E: $00
    nop                                           ; $761F: $00
    rst RST_38                                    ; $7620: $FF
    rst RST_38                                    ; $7621: $FF
    rst RST_38                                    ; $7622: $FF
    daa                                           ; $7623: $27
    halt                                          ; $7624: $76
    nop                                           ; $7625: $00
    nop                                           ; $7626: $00
    inc b                                         ; $7627: $04
    rst RST_38                                    ; $7628: $FF
    ei                                            ; $7629: $FB
    nop                                           ; $762A: $00
    rst RST_38                                    ; $762B: $FF
    inc c                                         ; $762C: $0C
    ld [bc], a                                    ; $762D: $02
    ld de, $04FB                                  ; $762E: $11 $FB $04
    ld de, $060C                                  ; $7631: $11 $0C $06
    sub b                                         ; $7634: $90
    nop                                           ; $7635: $00
    nop                                           ; $7636: $00
    rst RST_38                                    ; $7637: $FF
    rst RST_38                                    ; $7638: $FF
    rst RST_38                                    ; $7639: $FF
    ld a, $76                                     ; $763A: $3E $76
    nop                                           ; $763C: $00
    nop                                           ; $763D: $00
    inc b                                         ; $763E: $04
    nop                                           ; $763F: $00
    db $FC                                        ; $7640: $FC
    nop                                           ; $7641: $00
    nop                                           ; $7642: $00
    dec bc                                        ; $7643: $0B
    ld [bc], a                                    ; $7644: $02
    db $10                                        ; $7645: $10
    db $FC                                        ; $7646: $FC
    inc b                                         ; $7647: $04
    db $10                                        ; $7648: $10
    dec bc                                        ; $7649: $0B
    ld b, $80                                     ; $764A: $06 $80
    nop                                           ; $764C: $00
    add b                                         ; $764D: $80
    add b                                         ; $764E: $80
    adc b                                         ; $764F: $88
    nop                                           ; $7650: $00
    adc h                                         ; $7651: $8C
    nop                                           ; $7652: $00
    nop                                           ; $7653: $00
    nop                                           ; $7654: $00
    nop                                           ; $7655: $00
    nop                                           ; $7656: $00
    nop                                           ; $7657: $00
    nop                                           ; $7658: $00
    nop                                           ; $7659: $00
    nop                                           ; $765A: $00
    add b                                         ; $765B: $80
    inc a                                         ; $765C: $3C
    ld l, e                                       ; $765D: $6B
    halt                                          ; $765E: $76
    nop                                           ; $765F: $00
    nop                                           ; $7660: $00
    ld l, e                                       ; $7661: $6B
    halt                                          ; $7662: $76
    nop                                           ; $7663: $00
    nop                                           ; $7664: $00
    nop                                           ; $7665: $00
    nop                                           ; $7666: $00
    inc bc                                        ; $7667: $03
    inc bc                                        ; $7668: $03
    ret nz                                        ; $7669: $C0

    ret c                                         ; $766A: $D8

    sub c                                         ; $766B: $91
    halt                                          ; $766C: $76
    rst RST_38                                    ; $766D: $FF
    rst RST_38                                    ; $766E: $FF
    sub c                                         ; $766F: $91
    halt                                          ; $7670: $76
    rst RST_38                                    ; $7671: $FF
    rst RST_38                                    ; $7672: $FF
    sub c                                         ; $7673: $91
    halt                                          ; $7674: $76
    rst RST_38                                    ; $7675: $FF
    rst RST_38                                    ; $7676: $FF
    and d                                         ; $7677: $A2
    halt                                          ; $7678: $76
    rst RST_38                                    ; $7679: $FF
    rst RST_38                                    ; $767A: $FF
    or e                                          ; $767B: $B3
    halt                                          ; $767C: $76
    rst RST_38                                    ; $767D: $FF
    rst RST_38                                    ; $767E: $FF
    or e                                          ; $767F: $B3
    halt                                          ; $7680: $76
    rst RST_38                                    ; $7681: $FF
    rst RST_38                                    ; $7682: $FF
    or e                                          ; $7683: $B3
    halt                                          ; $7684: $76
    rst RST_38                                    ; $7685: $FF
    rst RST_38                                    ; $7686: $FF
    or e                                          ; $7687: $B3
    halt                                          ; $7688: $76
    rst RST_38                                    ; $7689: $FF
    rst RST_38                                    ; $768A: $FF
    and d                                         ; $768B: $A2
    halt                                          ; $768C: $76
    rst RST_38                                    ; $768D: $FF
    rst RST_38                                    ; $768E: $FF
    rst RST_38                                    ; $768F: $FF
    rst RST_38                                    ; $7690: $FF
    sub b                                         ; $7691: $90
    nop                                           ; $7692: $00
    nop                                           ; $7693: $00
    rst RST_38                                    ; $7694: $FF
    rst RST_38                                    ; $7695: $FF
    rst RST_38                                    ; $7696: $FF
    sbc e                                         ; $7697: $9B
    halt                                          ; $7698: $76
    nop                                           ; $7699: $00
    nop                                           ; $769A: $00
    ld [bc], a                                    ; $769B: $02
    nop                                           ; $769C: $00
    nop                                           ; $769D: $00
    nop                                           ; $769E: $00
    nop                                           ; $769F: $00
    ld [$9002], sp                                ; $76A0: $08 $02 $90
    nop                                           ; $76A3: $00
    nop                                           ; $76A4: $00
    rst RST_38                                    ; $76A5: $FF
    rst RST_38                                    ; $76A6: $FF
    rst RST_38                                    ; $76A7: $FF
    xor h                                         ; $76A8: $AC
    halt                                          ; $76A9: $76
    nop                                           ; $76AA: $00
    nop                                           ; $76AB: $00
    ld [bc], a                                    ; $76AC: $02
    nop                                           ; $76AD: $00
    nop                                           ; $76AE: $00
    inc b                                         ; $76AF: $04
    nop                                           ; $76B0: $00
    ld [$9006], sp                                ; $76B1: $08 $06 $90
    nop                                           ; $76B4: $00
    nop                                           ; $76B5: $00
    rst RST_38                                    ; $76B6: $FF
    rst RST_38                                    ; $76B7: $FF
    rst RST_38                                    ; $76B8: $FF
    cp l                                          ; $76B9: $BD
    halt                                          ; $76BA: $76
    nop                                           ; $76BB: $00
    nop                                           ; $76BC: $00
    ld [bc], a                                    ; $76BD: $02
    nop                                           ; $76BE: $00
    nop                                           ; $76BF: $00
    ld [$0800], sp                                ; $76C0: $08 $00 $08
    ld a, [bc]                                    ; $76C3: $0A
    ld bc, $0100                                  ; $76C4: $01 $00 $01
    xor d                                         ; $76C7: $AA
    nop                                           ; $76C8: $00
    pop bc                                        ; $76C9: $C1
    sub d                                         ; $76CA: $92
    nop                                           ; $76CB: $00
    ld b, a                                       ; $76CC: $47
    ld [de], a                                    ; $76CD: $12
    nop                                           ; $76CE: $00
    ld a, [de]                                    ; $76CF: $1A
    rlc b                                         ; $76D0: $CB $00
    ld bc, $0001                                  ; $76D2: $01 $01 $00
    ld bc, $0082                                  ; $76D5: $01 $82 $00
    halt                                          ; $76D8: $76
    sbc d                                         ; $76D9: $9A
    nop                                           ; $76DA: $00
    ld b, a                                       ; $76DB: $47
    ld [de], a                                    ; $76DC: $12
    nop                                           ; $76DD: $00
    ld a, [de]                                    ; $76DE: $1A
    rlc b                                         ; $76DF: $CB $00
    ld bc, $0001                                  ; $76E1: $01 $01 $00
    add d                                         ; $76E4: $82
    halt                                          ; $76E5: $76
    nop                                           ; $76E6: $00
    sbc d                                         ; $76E7: $9A
    ld b, a                                       ; $76E8: $47
    nop                                           ; $76E9: $00
    ld [de], a                                    ; $76EA: $12
    ld a, [de]                                    ; $76EB: $1A
    nop                                           ; $76EC: $00
    rlc h                                         ; $76ED: $CB $04
    nop                                           ; $76EF: $00
    ld bc, $0001                                  ; $76F0: $01 $01 $00
    ld c, [hl]                                    ; $76F3: $4E
    ld [hl], $00                                  ; $76F4: $36 $00
    ld l, e                                       ; $76F6: $6B
    rlc b                                         ; $76F7: $CB $00
    and [hl]                                      ; $76F9: $A6
    halt                                          ; $76FA: $76
    nop                                           ; $76FB: $00
    adc c                                         ; $76FC: $89
    sub l                                         ; $76FD: $95
    nop                                           ; $76FE: $00
    ld bc, $0001                                  ; $76FF: $01 $01 $00
    ccf                                           ; $7702: $3F
    ccf                                           ; $7703: $3F
    nop                                           ; $7704: $00
    dec hl                                        ; $7705: $2B
    add hl, hl                                    ; $7706: $29
    nop                                           ; $7707: $00
    res 4, [hl]                                   ; $7708: $CB $A6
    nop                                           ; $770A: $00
    halt                                          ; $770B: $76
    adc c                                         ; $770C: $89
    nop                                           ; $770D: $00
    sub l                                         ; $770E: $95
    ld bc, $8800                                  ; $770F: $01 $00 $88
    halt                                          ; $7712: $76
    nop                                           ; $7713: $00
    cp h                                          ; $7714: $BC
    ld l, [hl]                                    ; $7715: $6E
    nop                                           ; $7716: $00
    ld b, c                                       ; $7717: $41
    dec l                                         ; $7718: $2D
    nop                                           ; $7719: $00
    ld l, h                                       ; $771A: $6C
    jr z, jr_03C_771D                             ; $771B: $28 $00

jr_03C_771D:
    ld bc, $0001                                  ; $771D: $01 $01 $00
    ld bc, $00AC                                  ; $7720: $01 $AC $00
    cp [hl]                                       ; $7723: $BE
    and d                                         ; $7724: $A2
    nop                                           ; $7725: $00
    call nz, $0076                                ; $7726: $C4 $76 $00
    cp h                                          ; $7729: $BC
    ld bc, $0100                                  ; $772A: $01 $00 $01
    ld bc, $AA00                                  ; $772D: $01 $00 $AA
    pop bc                                        ; $7730: $C1
    nop                                           ; $7731: $00
    sub d                                         ; $7732: $92
    ld b, a                                       ; $7733: $47
    nop                                           ; $7734: $00
    ld [de], a                                    ; $7735: $12
    ld a, [de]                                    ; $7736: $1A
    nop                                           ; $7737: $00
    rlc c                                         ; $7738: $CB $01
    nop                                           ; $773A: $00
    ld bc, $0001                                  ; $773B: $01 $01 $00
    add d                                         ; $773E: $82
    halt                                          ; $773F: $76
    nop                                           ; $7740: $00
    sbc d                                         ; $7741: $9A
    ld b, a                                       ; $7742: $47
    nop                                           ; $7743: $00
    ld [de], a                                    ; $7744: $12
    ld a, [de]                                    ; $7745: $1A
    nop                                           ; $7746: $00
    rlc c                                         ; $7747: $CB $01
    nop                                           ; $7749: $00
    ld bc, $0001                                  ; $774A: $01 $01 $00
    add d                                         ; $774D: $82
    halt                                          ; $774E: $76
    nop                                           ; $774F: $00
    sbc d                                         ; $7750: $9A
    ld b, a                                       ; $7751: $47
    nop                                           ; $7752: $00
    ld [de], a                                    ; $7753: $12
    ld a, [de]                                    ; $7754: $1A
    nop                                           ; $7755: $00
    rlc h                                         ; $7756: $CB $04
    nop                                           ; $7758: $00
    ld bc, $0101                                  ; $7759: $01 $01 $01
    jr z, @+$6D                                   ; $775C: $28 $6B

    nop                                           ; $775E: $00
    res 4, [hl]                                   ; $775F: $CB $A6
    nop                                           ; $7761: $00
    halt                                          ; $7762: $76
    adc c                                         ; $7763: $89
    nop                                           ; $7764: $00
    sub l                                         ; $7765: $95
    ld bc, $0100                                  ; $7766: $01 $00 $01
    ld bc, $6201                                  ; $7769: $01 $01 $62
    add hl, hl                                    ; $776C: $29
    nop                                           ; $776D: $00
    res 4, [hl]                                   ; $776E: $CB $A6
    nop                                           ; $7770: $00
    halt                                          ; $7771: $76
    adc c                                         ; $7772: $89
    nop                                           ; $7773: $00
    sub l                                         ; $7774: $95
    ld bc, $0100                                  ; $7775: $01 $00 $01
    ld bc, $8800                                  ; $7778: $01 $00 $88
    halt                                          ; $777B: $76
    nop                                           ; $777C: $00
    cp h                                          ; $777D: $BC
    ld l, [hl]                                    ; $777E: $6E
    ld bc, $6C5A                                  ; $777F: $01 $5A $6C
    nop                                           ; $7782: $00
    jr z, jr_03C_7786                             ; $7783: $28 $01

    nop                                           ; $7785: $00

jr_03C_7786:
    ld bc, $0001                                  ; $7786: $01 $01 $00
    xor h                                         ; $7789: $AC
    cp [hl]                                       ; $778A: $BE
    nop                                           ; $778B: $00
    and d                                         ; $778C: $A2
    call nz, Call_03C_7600                        ; $778D: $C4 $00 $76
    cp h                                          ; $7790: $BC
    nop                                           ; $7791: $00
    ld bc, $0001                                  ; $7792: $01 $01 $00
    ld bc, $0027                                  ; $7795: $01 $27 $00
    ld l, l                                       ; $7798: $6D
    ld c, l                                       ; $7799: $4D
    nop                                           ; $779A: $00
    ld c, c                                       ; $779B: $49
    dec hl                                        ; $779C: $2B
    nop                                           ; $779D: $00
    ld c, l                                       ; $779E: $4D
    ld bc, $3700                                  ; $779F: $01 $00 $37
    daa                                           ; $77A2: $27
    nop                                           ; $77A3: $00
    ld [hl], $67                                  ; $77A4: $36 $67
    nop                                           ; $77A6: $00
    jr z, jr_03C_7817                             ; $77A7: $28 $6E

    nop                                           ; $77A9: $00
    ld bc, $003F                                  ; $77AA: $01 $3F $00
    ccf                                           ; $77AD: $3F
    inc l                                         ; $77AE: $2C
    nop                                           ; $77AF: $00
    ld b, h                                       ; $77B0: $44
    scf                                           ; $77B1: $37
    nop                                           ; $77B2: $00
    ld c, l                                       ; $77B3: $4D
    ld b, h                                       ; $77B4: $44
    nop                                           ; $77B5: $00
    ret                                           ; $77B6: $C9


    ld bc, $0100                                  ; $77B7: $01 $00 $01
    ld c, a                                       ; $77BA: $4F
    nop                                           ; $77BB: $00
    ccf                                           ; $77BC: $3F
    scf                                           ; $77BD: $37
    nop                                           ; $77BE: $00
    ld l, b                                       ; $77BF: $68
    ret z                                         ; $77C0: $C8

    nop                                           ; $77C1: $00
    ld bc, $0001                                  ; $77C2: $01 $01 $00
    ld bc, $0001                                  ; $77C5: $01 $01 $00
    ld bc, $0001                                  ; $77C8: $01 $01 $00
    ld bc, $0028                                  ; $77CB: $01 $28 $00
    ld b, c                                       ; $77CE: $41
    ld d, [hl]                                    ; $77CF: $56
    nop                                           ; $77D0: $00
    ld [hl], $CB                                  ; $77D1: $36 $CB
    nop                                           ; $77D3: $00
    jr z, jr_03C_7817                             ; $77D4: $28 $41

    nop                                           ; $77D6: $00
    ld d, [hl]                                    ; $77D7: $56
    ld [hl], $00                                  ; $77D8: $36 $00
    rlc c                                         ; $77DA: $CB $01
    nop                                           ; $77DC: $00
    ld bc, $0001                                  ; $77DD: $01 $01 $00
    ld bc, $0001                                  ; $77E0: $01 $01 $00
    ld bc, $0001                                  ; $77E3: $01 $01 $00
    ld bc, $0001                                  ; $77E6: $01 $01 $00
    ld bc, $0001                                  ; $77E9: $01 $01 $00
    ld bc, $0001                                  ; $77EC: $01 $01 $00
    ld bc, $0001                                  ; $77EF: $01 $01 $00
    ldh [c], a                                    ; $77F2: $E2
    ld bc, $AA00                                  ; $77F3: $01 $00 $AA
    pop bc                                        ; $77F6: $C1
    nop                                           ; $77F7: $00
    sub d                                         ; $77F8: $92
    ld bc, $0100                                  ; $77F9: $01 $00 $01
    ld bc, $0100                                  ; $77FC: $01 $00 $01
    ld bc, $0100                                  ; $77FF: $01 $00 $01
    ld bc, $0100                                  ; $7802: $01 $00 $01
    ld bc, $0100                                  ; $7805: $01 $00 $01
    ld bc, $0100                                  ; $7808: $01 $00 $01
    ld bc, $0100                                  ; $780B: $01 $00 $01
    ld bc, $0100                                  ; $780E: $01 $00 $01
    ld bc, $0100                                  ; $7811: $01 $00 $01
    xor c                                         ; $7814: $A9
    db $10                                        ; $7815: $10
    ld c, l                                       ; $7816: $4D

jr_03C_7817:
    ld e, b                                       ; $7817: $58
    db $10                                        ; $7818: $10
    ld c, l                                       ; $7819: $4D
    ld [bc], a                                    ; $781A: $02
    ld de, $6E03                                  ; $781B: $11 $03 $6E
    nop                                           ; $781E: $00
    ld bc, $1043                                  ; $781F: $01 $43 $10
    inc l                                         ; $7822: $2C
    jr @+$12                                      ; $7823: $18 $10

    scf                                           ; $7825: $37
    ld c, l                                       ; $7826: $4D
    nop                                           ; $7827: $00
    ld b, h                                       ; $7828: $44
    ret                                           ; $7829: $C9


    nop                                           ; $782A: $00
    ld bc, $0001                                  ; $782B: $01 $01 $00
    ld bc, $0001                                  ; $782E: $01 $01 $00
    ld bc, $0001                                  ; $7831: $01 $01 $00
    ld bc, $0001                                  ; $7834: $01 $01 $00
    ld bc, $004F                                  ; $7837: $01 $4F $00
    ccf                                           ; $783A: $3F
    scf                                           ; $783B: $37
    nop                                           ; $783C: $00
    ld l, b                                       ; $783D: $68
    ret z                                         ; $783E: $C8

    nop                                           ; $783F: $00
    ld bc, $0001                                  ; $7840: $01 $01 $00
    ld bc, $0001                                  ; $7843: $01 $01 $00
    ld bc, $0001                                  ; $7846: $01 $01 $00
    ld bc, $0028                                  ; $7849: $01 $28 $00
    ld b, c                                       ; $784C: $41
    ld d, [hl]                                    ; $784D: $56
    nop                                           ; $784E: $00
    ld [hl], $CB                                  ; $784F: $36 $CB
    nop                                           ; $7851: $00
    jr z, jr_03C_7895                             ; $7852: $28 $41

    nop                                           ; $7854: $00
    ld d, [hl]                                    ; $7855: $56
    ld [hl], $00                                  ; $7856: $36 $00
    rlc c                                         ; $7858: $CB $01
    nop                                           ; $785A: $00
    ld bc, $0001                                  ; $785B: $01 $01 $00
    ld bc, $0001                                  ; $785E: $01 $01 $00
    ld bc, $0001                                  ; $7861: $01 $01 $00
    ld bc, $0001                                  ; $7864: $01 $01 $00
    ld bc, $0001                                  ; $7867: $01 $01 $00
    ld bc, $0001                                  ; $786A: $01 $01 $00
    ld bc, $0001                                  ; $786D: $01 $01 $00
    ldh [c], a                                    ; $7870: $E2
    ld bc, $AA00                                  ; $7871: $01 $00 $AA
    pop bc                                        ; $7874: $C1
    nop                                           ; $7875: $00
    sub d                                         ; $7876: $92
    ld bc, $0100                                  ; $7877: $01 $00 $01
    ld bc, $0100                                  ; $787A: $01 $00 $01
    ld bc, $0100                                  ; $787D: $01 $00 $01
    ld bc, $0100                                  ; $7880: $01 $00 $01
    ld bc, $0100                                  ; $7883: $01 $00 $01
    ld bc, $0100                                  ; $7886: $01 $00 $01
    ld bc, $0100                                  ; $7889: $01 $00 $01
    ld bc, $0100                                  ; $788C: $01 $00 $01
    ld bc, $0100                                  ; $788F: $01 $00 $01
    ld b, e                                       ; $7892: $43
    nop                                           ; $7893: $00
    ld l, a                                       ; $7894: $6F

jr_03C_7895:
    ld b, a                                       ; $7895: $47
    nop                                           ; $7896: $00
    dec l                                         ; $7897: $2D
    ld l, d                                       ; $7898: $6A
    nop                                           ; $7899: $00
    ld a, c                                       ; $789A: $79
    cp a                                          ; $789B: $BF
    nop                                           ; $789C: $00
    ld l, [hl]                                    ; $789D: $6E
    add d                                         ; $789E: $82
    nop                                           ; $789F: $00
    halt                                          ; $78A0: $76
    sbc d                                         ; $78A1: $9A
    nop                                           ; $78A2: $00
    ld [hl], $42                                  ; $78A3: $36 $42
    nop                                           ; $78A5: $00
    ret z                                         ; $78A6: $C8

    ld d, b                                       ; $78A7: $50
    nop                                           ; $78A8: $00
    jr c, jr_03C_78DD                             ; $78A9: $38 $32

    nop                                           ; $78AB: $00
    ld c, l                                       ; $78AC: $4D
    ld b, h                                       ; $78AD: $44
    nop                                           ; $78AE: $00
    rlc c                                         ; $78AF: $CB $01
    nop                                           ; $78B1: $00
    ld bc, $0001                                  ; $78B2: $01 $01 $00
    ld bc, $0001                                  ; $78B5: $01 $01 $00
    ld bc, $0001                                  ; $78B8: $01 $01 $00
    ld bc, $0001                                  ; $78BB: $01 $01 $00
    ld bc, $0001                                  ; $78BE: $01 $01 $00
    ld bc, $0001                                  ; $78C1: $01 $01 $00
    ld bc, $0001                                  ; $78C4: $01 $01 $00
    ld bc, $00E1                                  ; $78C7: $01 $E1 $00
    jp c, Jump_000_0001                           ; $78CA: $DA $01 $00

    ld c, a                                       ; $78CD: $4F
    ld b, h                                       ; $78CE: $44
    nop                                           ; $78CF: $00
    ld l, c                                       ; $78D0: $69
    jr z, jr_03C_78D3                             ; $78D1: $28 $00

jr_03C_78D3:
    add hl, hl                                    ; $78D3: $29
    ld c, l                                       ; $78D4: $4D
    nop                                           ; $78D5: $00
    add d                                         ; $78D6: $82
    halt                                          ; $78D7: $76
    nop                                           ; $78D8: $00
    sbc d                                         ; $78D9: $9A
    pop hl                                        ; $78DA: $E1
    nop                                           ; $78DB: $00
    db $DB                                        ; $78DC: $DB

jr_03C_78DD:
    ld bc, $4F00                                  ; $78DD: $01 $00 $4F
    ld b, h                                       ; $78E0: $44
    nop                                           ; $78E1: $00
    ld l, c                                       ; $78E2: $69
    ld [hl], $00                                  ; $78E3: $36 $00
    ccf                                           ; $78E5: $3F
    ld c, l                                       ; $78E6: $4D
    nop                                           ; $78E7: $00
    add d                                         ; $78E8: $82
    halt                                          ; $78E9: $76
    nop                                           ; $78EA: $00
    sbc d                                         ; $78EB: $9A
    pop hl                                        ; $78EC: $E1
    nop                                           ; $78ED: $00
    sbc $01                                       ; $78EE: $DE $01
    nop                                           ; $78F0: $00
    ld e, [hl]                                    ; $78F1: $5E
    ld sp, $2800                                  ; $78F2: $31 $00 $28
    add hl, hl                                    ; $78F5: $29
    nop                                           ; $78F6: $00
    ld c, l                                       ; $78F7: $4D
    add d                                         ; $78F8: $82
    nop                                           ; $78F9: $00
    halt                                          ; $78FA: $76
    sbc d                                         ; $78FB: $9A
    nop                                           ; $78FC: $00
    ld bc, $00E1                                  ; $78FD: $01 $E1 $00
    db $DD                                        ; $7900: $DD
    ld bc, $5E00                                  ; $7901: $01 $00 $5E
    ld sp, $3600                                  ; $7904: $31 $00 $36
    ccf                                           ; $7907: $3F
    nop                                           ; $7908: $00
    ld c, l                                       ; $7909: $4D
    add d                                         ; $790A: $82
    nop                                           ; $790B: $00
    halt                                          ; $790C: $76
    sbc d                                         ; $790D: $9A
    nop                                           ; $790E: $00
    ld bc, $0043                                  ; $790F: $01 $43 $00
    ld l, a                                       ; $7912: $6F
    ld b, a                                       ; $7913: $47
    nop                                           ; $7914: $00
    dec l                                         ; $7915: $2D
    ld l, d                                       ; $7916: $6A
    ld bc, $6EA9                                  ; $7917: $01 $A9 $6E
    nop                                           ; $791A: $00
    add d                                         ; $791B: $82
    halt                                          ; $791C: $76
    nop                                           ; $791D: $00
    sbc d                                         ; $791E: $9A
    ld [hl], $00                                  ; $791F: $36 $00
    ld b, d                                       ; $7921: $42
    ld b, d                                       ; $7922: $42
    nop                                           ; $7923: $00
    ret z                                         ; $7924: $C8

    adc h                                         ; $7925: $8C
    db $10                                        ; $7926: $10
    ld [hl-], a                                   ; $7927: $32
    ld c, l                                       ; $7928: $4D
    nop                                           ; $7929: $00
    ld b, h                                       ; $792A: $44
    rlc b                                         ; $792B: $CB $00
    ld bc, $0001                                  ; $792D: $01 $01 $00
    ld bc, $0001                                  ; $7930: $01 $01 $00
    ld bc, $0001                                  ; $7933: $01 $01 $00
    ld bc, $0001                                  ; $7936: $01 $01 $00
    ld bc, $0001                                  ; $7939: $01 $01 $00
    ld bc, $0001                                  ; $793C: $01 $01 $00
    ld bc, $0001                                  ; $793F: $01 $01 $00
    ld bc, $0001                                  ; $7942: $01 $01 $00
    ld bc, $00E1                                  ; $7945: $01 $E1 $00
    jp c, Jump_000_0101                           ; $7948: $DA $01 $01

    sub [hl]                                      ; $794B: $96
    adc d                                         ; $794C: $8A
    db $10                                        ; $794D: $10
    ld c, l                                       ; $794E: $4D
    add d                                         ; $794F: $82
    nop                                           ; $7950: $00
    halt                                          ; $7951: $76
    sbc d                                         ; $7952: $9A
    nop                                           ; $7953: $00
    ld bc, $0001                                  ; $7954: $01 $01 $00
    ld bc, $00E1                                  ; $7957: $01 $E1 $00
    db $DB                                        ; $795A: $DB
    ld bc, $9601                                  ; $795B: $01 $01 $96
    dec c                                         ; $795E: $0D
    db $10                                        ; $795F: $10
    ld c, l                                       ; $7960: $4D
    add d                                         ; $7961: $82
    nop                                           ; $7962: $00
    halt                                          ; $7963: $76
    sbc d                                         ; $7964: $9A
    nop                                           ; $7965: $00
    ld bc, $0001                                  ; $7966: $01 $01 $00
    ld bc, $00E1                                  ; $7969: $01 $E1 $00
    sbc $01                                       ; $796C: $DE $01
    ld bc, $8A97                                  ; $796E: $01 $97 $8A
    db $10                                        ; $7971: $10
    ld c, l                                       ; $7972: $4D
    add d                                         ; $7973: $82
    nop                                           ; $7974: $00
    halt                                          ; $7975: $76
    sbc d                                         ; $7976: $9A
    nop                                           ; $7977: $00
    ld bc, $0001                                  ; $7978: $01 $01 $00
    ld bc, $00E1                                  ; $797B: $01 $E1 $00
    db $DD                                        ; $797E: $DD
    ld bc, $9701                                  ; $797F: $01 $01 $97
    dec c                                         ; $7982: $0D
    db $10                                        ; $7983: $10
    ld c, l                                       ; $7984: $4D
    add d                                         ; $7985: $82
    nop                                           ; $7986: $00
    halt                                          ; $7987: $76
    sbc d                                         ; $7988: $9A
    nop                                           ; $7989: $00
    ld bc, $0001                                  ; $798A: $01 $01 $00
    ld bc, $0003                                  ; $798D: $01 $03 $00
    dec hl                                        ; $7990: $2B
    daa                                           ; $7991: $27
    nop                                           ; $7992: $00
    ld b, a                                       ; $7993: $47
    ld h, c                                       ; $7994: $61
    nop                                           ; $7995: $00
    add d                                         ; $7996: $82
    halt                                          ; $7997: $76
    nop                                           ; $7998: $00
    sbc d                                         ; $7999: $9A
    ld b, a                                       ; $799A: $47
    nop                                           ; $799B: $00
    inc l                                         ; $799C: $2C
    ld c, c                                       ; $799D: $49
    nop                                           ; $799E: $00
    ld l, $6B                                     ; $799F: $2E $6B
    nop                                           ; $79A1: $00
    ld d, e                                       ; $79A2: $53
    ret z                                         ; $79A3: $C8

    nop                                           ; $79A4: $00
    ld a, [hl+]                                   ; $79A5: $2A
    ld l, l                                       ; $79A6: $6D
    nop                                           ; $79A7: $00
    ld l, c                                       ; $79A8: $69
    ld c, c                                       ; $79A9: $49
    nop                                           ; $79AA: $00
    ld c, l                                       ; $79AB: $4D
    ld b, h                                       ; $79AC: $44
    nop                                           ; $79AD: $00
    rlc c                                         ; $79AE: $CB $01
    nop                                           ; $79B0: $00
    ld bc, $0001                                  ; $79B1: $01 $01 $00
    ld bc, $0001                                  ; $79B4: $01 $01 $00
    ld bc, $0001                                  ; $79B7: $01 $01 $00
    ld bc, $0001                                  ; $79BA: $01 $01 $00
    ld bc, $0001                                  ; $79BD: $01 $01 $00
    ld bc, $0001                                  ; $79C0: $01 $01 $00
    ld bc, $00E1                                  ; $79C3: $01 $E1 $00
    jp c, Jump_000_0001                           ; $79C6: $DA $01 $00

    ld c, a                                       ; $79C9: $4F
    ld b, h                                       ; $79CA: $44
    nop                                           ; $79CB: $00
    ld l, c                                       ; $79CC: $69
    jr z, jr_03C_79CF                             ; $79CD: $28 $00

jr_03C_79CF:
    add hl, hl                                    ; $79CF: $29
    ld c, l                                       ; $79D0: $4D
    nop                                           ; $79D1: $00
    add d                                         ; $79D2: $82
    halt                                          ; $79D3: $76
    nop                                           ; $79D4: $00
    sbc d                                         ; $79D5: $9A
    pop hl                                        ; $79D6: $E1
    nop                                           ; $79D7: $00
    db $DB                                        ; $79D8: $DB
    ld bc, $4F00                                  ; $79D9: $01 $00 $4F
    ld b, h                                       ; $79DC: $44
    nop                                           ; $79DD: $00
    ld l, c                                       ; $79DE: $69
    ld [hl], $00                                  ; $79DF: $36 $00
    ccf                                           ; $79E1: $3F
    ld c, l                                       ; $79E2: $4D
    nop                                           ; $79E3: $00
    add d                                         ; $79E4: $82
    halt                                          ; $79E5: $76
    nop                                           ; $79E6: $00
    sbc d                                         ; $79E7: $9A
    pop hl                                        ; $79E8: $E1
    nop                                           ; $79E9: $00
    sbc $01                                       ; $79EA: $DE $01
    nop                                           ; $79EC: $00
    ld e, [hl]                                    ; $79ED: $5E
    ld sp, $2800                                  ; $79EE: $31 $00 $28
    add hl, hl                                    ; $79F1: $29
    nop                                           ; $79F2: $00
    ld c, l                                       ; $79F3: $4D
    add d                                         ; $79F4: $82
    nop                                           ; $79F5: $00
    halt                                          ; $79F6: $76
    sbc d                                         ; $79F7: $9A
    nop                                           ; $79F8: $00
    ld bc, $00E1                                  ; $79F9: $01 $E1 $00
    db $DD                                        ; $79FC: $DD
    ld bc, $5E00                                  ; $79FD: $01 $00 $5E
    ld sp, $3600                                  ; $7A00: $31 $00 $36
    ccf                                           ; $7A03: $3F
    nop                                           ; $7A04: $00
    ld c, l                                       ; $7A05: $4D
    add d                                         ; $7A06: $82
    nop                                           ; $7A07: $00
    halt                                          ; $7A08: $76
    sbc d                                         ; $7A09: $9A
    nop                                           ; $7A0A: $00
    ld bc, $0082                                  ; $7A0B: $01 $82 $00
    halt                                          ; $7A0E: $76
    sbc d                                         ; $7A0F: $9A
    nop                                           ; $7A10: $00
    ld b, a                                       ; $7A11: $47
    inc l                                         ; $7A12: $2C
    nop                                           ; $7A13: $00
    ld c, c                                       ; $7A14: $49
    ld l, $00                                     ; $7A15: $2E $00
    ld l, e                                       ; $7A17: $6B
    ld d, e                                       ; $7A18: $53
    ld bc, $6DB5                                  ; $7A19: $01 $B5 $6D
    nop                                           ; $7A1C: $00
    ld l, c                                       ; $7A1D: $69
    ld c, l                                       ; $7A1E: $4D
    ld bc, $4DBB                                  ; $7A1F: $01 $BB $4D
    nop                                           ; $7A22: $00
    add l                                         ; $7A23: $85
    halt                                          ; $7A24: $76
    nop                                           ; $7A25: $00
    or c                                          ; $7A26: $B1
    ld c, c                                       ; $7A27: $49
    nop                                           ; $7A28: $00
    ld c, l                                       ; $7A29: $4D
    ld b, h                                       ; $7A2A: $44
    nop                                           ; $7A2B: $00
    rlc c                                         ; $7A2C: $CB $01
    nop                                           ; $7A2E: $00
    ld bc, $0001                                  ; $7A2F: $01 $01 $00
    ld bc, $0001                                  ; $7A32: $01 $01 $00
    ld bc, $0001                                  ; $7A35: $01 $01 $00
    ld bc, $0001                                  ; $7A38: $01 $01 $00
    ld bc, $0001                                  ; $7A3B: $01 $01 $00
    ld bc, $0001                                  ; $7A3E: $01 $01 $00
    ld bc, $00E1                                  ; $7A41: $01 $E1 $00
    jp c, Jump_000_0101                           ; $7A44: $DA $01 $01

    sub [hl]                                      ; $7A47: $96
    adc d                                         ; $7A48: $8A
    db $10                                        ; $7A49: $10
    ld c, l                                       ; $7A4A: $4D
    add d                                         ; $7A4B: $82
    nop                                           ; $7A4C: $00
    halt                                          ; $7A4D: $76
    sbc d                                         ; $7A4E: $9A
    nop                                           ; $7A4F: $00
    ld bc, $0001                                  ; $7A50: $01 $01 $00
    ld bc, $00E1                                  ; $7A53: $01 $E1 $00
    db $DB                                        ; $7A56: $DB
    ld bc, $9601                                  ; $7A57: $01 $01 $96
    dec c                                         ; $7A5A: $0D
    db $10                                        ; $7A5B: $10
    ld c, l                                       ; $7A5C: $4D
    add d                                         ; $7A5D: $82
    nop                                           ; $7A5E: $00
    halt                                          ; $7A5F: $76
    sbc d                                         ; $7A60: $9A
    nop                                           ; $7A61: $00
    ld bc, $0001                                  ; $7A62: $01 $01 $00
    ld bc, $00E1                                  ; $7A65: $01 $E1 $00
    sbc $01                                       ; $7A68: $DE $01
    ld bc, $8A97                                  ; $7A6A: $01 $97 $8A
    db $10                                        ; $7A6D: $10
    ld c, l                                       ; $7A6E: $4D
    add d                                         ; $7A6F: $82
    nop                                           ; $7A70: $00
    halt                                          ; $7A71: $76
    sbc d                                         ; $7A72: $9A
    nop                                           ; $7A73: $00
    ld bc, $0001                                  ; $7A74: $01 $01 $00
    ld bc, $00E1                                  ; $7A77: $01 $E1 $00
    db $DD                                        ; $7A7A: $DD
    ld bc, $9701                                  ; $7A7B: $01 $01 $97
    dec c                                         ; $7A7E: $0D
    db $10                                        ; $7A7F: $10
    ld c, l                                       ; $7A80: $4D
    add d                                         ; $7A81: $82
    nop                                           ; $7A82: $00
    halt                                          ; $7A83: $76
    sbc d                                         ; $7A84: $9A
    nop                                           ; $7A85: $00
    ld bc, $0001                                  ; $7A86: $01 $01 $00
    ld bc, $0001                                  ; $7A89: $01 $01 $00
    ld bc, $0001                                  ; $7A8C: $01 $01 $00
    ld bc, $0001                                  ; $7A8F: $01 $01 $00
    ld bc, $0001                                  ; $7A92: $01 $01 $00
    ld bc, $0001                                  ; $7A95: $01 $01 $00
    ld bc, $0001                                  ; $7A98: $01 $01 $00
    ld bc, $0026                                  ; $7A9B: $01 $26 $00
    ld c, c                                       ; $7A9E: $49
    ld c, d                                       ; $7A9F: $4A
    nop                                           ; $7AA0: $00
    ld a, [hl+]                                   ; $7AA1: $2A
    ld b, b                                       ; $7AA2: $40
    nop                                           ; $7AA3: $00
    ld c, c                                       ; $7AA4: $49
    daa                                           ; $7AA5: $27
    nop                                           ; $7AA6: $00
    ld h, h                                       ; $7AA7: $64
    jr z, jr_03C_7AAA                             ; $7AA8: $28 $00

jr_03C_7AAA:
    ld c, d                                       ; $7AAA: $4A
    ld [hl], $00                                  ; $7AAB: $36 $00
    ld b, d                                       ; $7AAD: $42
    ld a, [hl+]                                   ; $7AAE: $2A
    nop                                           ; $7AAF: $00
    ld c, [hl]                                    ; $7AB0: $4E
    ld c, c                                       ; $7AB1: $49
    nop                                           ; $7AB2: $00
    ld d, e                                       ; $7AB3: $53
    ccf                                           ; $7AB4: $3F
    nop                                           ; $7AB5: $00
    ld l, $6E                                     ; $7AB6: $2E $6E
    nop                                           ; $7AB8: $00
    ld bc, $0001                                  ; $7AB9: $01 $01 $00
    ld bc, $0001                                  ; $7ABC: $01 $01 $00
    ld bc, $0060                                  ; $7ABF: $01 $60 $00
    ld a, [hl-]                                   ; $7AC2: $3A
    ld [hl], $00                                  ; $7AC3: $36 $00
    ld b, d                                       ; $7AC5: $42
    ld c, [hl]                                    ; $7AC6: $4E
    nop                                           ; $7AC7: $00
    ld [hl], $6A                                  ; $7AC8: $36 $6A
    nop                                           ; $7ACA: $00
    ld c, l                                       ; $7ACB: $4D
    ld b, h                                       ; $7ACC: $44
    nop                                           ; $7ACD: $00
    rlc c                                         ; $7ACE: $CB $01
    nop                                           ; $7AD0: $00
    ld bc, $0001                                  ; $7AD1: $01 $01 $00
    ld bc, $0001                                  ; $7AD4: $01 $01 $00
    ld bc, $0001                                  ; $7AD7: $01 $01 $00
    ld bc, $0001                                  ; $7ADA: $01 $01 $00
    ld bc, $0001                                  ; $7ADD: $01 $01 $00
    ld bc, $0001                                  ; $7AE0: $01 $01 $00
    ld bc, $0001                                  ; $7AE3: $01 $01 $00
    pop hl                                        ; $7AE6: $E1
    ld bc, $2700                                  ; $7AE7: $01 $00 $27
    ld c, b                                       ; $7AEA: $48
    nop                                           ; $7AEB: $00
    jr z, jr_03C_7AEF                             ; $7AEC: $28 $01

    nop                                           ; $7AEE: $00

jr_03C_7AEF:
    ld bc, $0001                                  ; $7AEF: $01 $01 $00
    ld bc, $0001                                  ; $7AF2: $01 $01 $00
    ld bc, $0001                                  ; $7AF5: $01 $01 $00
    ld bc, $0001                                  ; $7AF8: $01 $01 $00
    ld bc, $0001                                  ; $7AFB: $01 $01 $00
    ld bc, $0001                                  ; $7AFE: $01 $01 $00
    ld bc, $0001                                  ; $7B01: $01 $01 $00
    ld bc, $0001                                  ; $7B04: $01 $01 $00
    ld bc, $0001                                  ; $7B07: $01 $01 $00
    ld bc, $0001                                  ; $7B0A: $01 $01 $00
    ld bc, $0001                                  ; $7B0D: $01 $01 $00
    ld bc, $0001                                  ; $7B10: $01 $01 $00
    ld bc, $0001                                  ; $7B13: $01 $01 $00
    ld bc, $0001                                  ; $7B16: $01 $01 $00
    ld bc, $10AA                                  ; $7B19: $01 $AA $10
    ld c, d                                       ; $7B1C: $4A
    xor e                                         ; $7B1D: $AB
    db $10                                        ; $7B1E: $10
    ld b, b                                       ; $7B1F: $40
    ld c, c                                       ; $7B20: $49
    nop                                           ; $7B21: $00
    daa                                           ; $7B22: $27
    ld h, h                                       ; $7B23: $64
    nop                                           ; $7B24: $00
    jr z, @+$4C                                   ; $7B25: $28 $4A

    nop                                           ; $7B27: $00
    ld [hl], $42                                  ; $7B28: $36 $42
    nop                                           ; $7B2A: $00
    ret z                                         ; $7B2B: $C8

    ld a, [hl+]                                   ; $7B2C: $2A
    ld bc, $BAB9                                  ; $7B2D: $01 $B9 $BA
    db $10                                        ; $7B30: $10
    ld e, l                                       ; $7B31: $5D
    ld b, a                                       ; $7B32: $47
    ld bc, $6A28                                  ; $7B33: $01 $28 $6A
    nop                                           ; $7B36: $00
    ld c, l                                       ; $7B37: $4D
    ld b, h                                       ; $7B38: $44
    nop                                           ; $7B39: $00
    rlc c                                         ; $7B3A: $CB $01
    nop                                           ; $7B3C: $00
    ld bc, $0001                                  ; $7B3D: $01 $01 $00
    ld bc, $0001                                  ; $7B40: $01 $01 $00
    ld bc, $0001                                  ; $7B43: $01 $01 $00
    ld bc, $0001                                  ; $7B46: $01 $01 $00
    ld bc, $0001                                  ; $7B49: $01 $01 $00
    ld bc, $0001                                  ; $7B4C: $01 $01 $00
    ld bc, $0001                                  ; $7B4F: $01 $01 $00
    ld bc, $0001                                  ; $7B52: $01 $01 $00
    ld bc, $0001                                  ; $7B55: $01 $01 $00
    ld bc, $0001                                  ; $7B58: $01 $01 $00
    ld bc, $0001                                  ; $7B5B: $01 $01 $00
    ld bc, $0001                                  ; $7B5E: $01 $01 $00
    ld bc, $0001                                  ; $7B61: $01 $01 $00
    pop hl                                        ; $7B64: $E1
    ld bc, $AC01                                  ; $7B65: $01 $01 $AC
    xor l                                         ; $7B68: $AD
    db $10                                        ; $7B69: $10
    ld bc, $0001                                  ; $7B6A: $01 $01 $00
    ld bc, $0001                                  ; $7B6D: $01 $01 $00
    ld bc, $0001                                  ; $7B70: $01 $01 $00
    ld bc, $0001                                  ; $7B73: $01 $01 $00
    ld bc, $0001                                  ; $7B76: $01 $01 $00
    ld bc, $0001                                  ; $7B79: $01 $01 $00
    ld bc, $0001                                  ; $7B7C: $01 $01 $00
    ld bc, $0001                                  ; $7B7F: $01 $01 $00
    ld bc, $0001                                  ; $7B82: $01 $01 $00
    ld bc, $007B                                  ; $7B85: $01 $7B $00
    sbc [hl]                                      ; $7B88: $9E
    cp h                                          ; $7B89: $BC
    nop                                           ; $7B8A: $00
    add e                                         ; $7B8B: $83
    halt                                          ; $7B8C: $76
    nop                                           ; $7B8D: $00
    ld l, [hl]                                    ; $7B8E: $6E
    scf                                           ; $7B8F: $37
    nop                                           ; $7B90: $00
    daa                                           ; $7B91: $27
    ld b, e                                       ; $7B92: $43
    nop                                           ; $7B93: $00
    ld l, d                                       ; $7B94: $6A
    and l                                         ; $7B95: $A5
    nop                                           ; $7B96: $00
    ld a, a                                       ; $7B97: $7F
    sub h                                         ; $7B98: $94
    nop                                           ; $7B99: $00
    cp e                                          ; $7B9A: $BB
    ld a, b                                       ; $7B9B: $78
    nop                                           ; $7B9C: $00
    jr nc, jr_03C_7BC9                            ; $7B9D: $30 $2A

    nop                                           ; $7B9F: $00
    ld a, [hl+]                                   ; $7BA0: $2A
    inc l                                         ; $7BA1: $2C
    nop                                           ; $7BA2: $00
    dec l                                         ; $7BA3: $2D
    ld c, c                                       ; $7BA4: $49
    nop                                           ; $7BA5: $00
    ld [hl], b                                    ; $7BA6: $70
    ld b, d                                       ; $7BA7: $42
    nop                                           ; $7BA8: $00
    ret z                                         ; $7BA9: $C8

    ld h, $00                                     ; $7BAA: $26 $00
    ld d, e                                       ; $7BAC: $53
    ld l, e                                       ; $7BAD: $6B
    nop                                           ; $7BAE: $00
    ld b, d                                       ; $7BAF: $42
    daa                                           ; $7BB0: $27
    nop                                           ; $7BB1: $00
    ld l, d                                       ; $7BB2: $6A
    rlc b                                         ; $7BB3: $CB $00
    ld bc, $0001                                  ; $7BB5: $01 $01 $00
    ld bc, $0001                                  ; $7BB8: $01 $01 $00
    ld bc, $00A5                                  ; $7BBB: $01 $A5 $00
    ld a, a                                       ; $7BBE: $7F
    sub h                                         ; $7BBF: $94
    nop                                           ; $7BC0: $00
    cp e                                          ; $7BC1: $BB
    ld a, b                                       ; $7BC2: $78
    nop                                           ; $7BC3: $00
    ld l, [hl]                                    ; $7BC4: $6E
    ccf                                           ; $7BC5: $3F
    nop                                           ; $7BC6: $00
    ld a, [hl+]                                   ; $7BC7: $2A
    scf                                           ; $7BC8: $37

jr_03C_7BC9:
    nop                                           ; $7BC9: $00
    ld c, l                                       ; $7BCA: $4D
    ld b, h                                       ; $7BCB: $44
    nop                                           ; $7BCC: $00

jr_03C_7BCD:
    rlc c                                         ; $7BCD: $CB $01
    nop                                           ; $7BCF: $00
    ld bc, $0001                                  ; $7BD0: $01 $01 $00
    ld bc, $0001                                  ; $7BD3: $01 $01 $00
    ld bc, $0001                                  ; $7BD6: $01 $01 $00
    ld bc, $0001                                  ; $7BD9: $01 $01 $00
    ld bc, $0001                                  ; $7BDC: $01 $01 $00
    ld bc, $0001                                  ; $7BDF: $01 $01 $00
    pop hl                                        ; $7BE2: $E1
    ld bc, $2700                                  ; $7BE3: $01 $00 $27
    ld c, b                                       ; $7BE6: $48
    nop                                           ; $7BE7: $00
    jr z, jr_03C_7BEB                             ; $7BE8: $28 $01

    nop                                           ; $7BEA: $00

jr_03C_7BEB:
    ld bc, $0001                                  ; $7BEB: $01 $01 $00
    ld bc, $0001                                  ; $7BEE: $01 $01 $00
    ld bc, $0001                                  ; $7BF1: $01 $01 $00
    ldh [c], a                                    ; $7BF4: $E2
    ld bc, $2F00                                  ; $7BF5: $01 $00 $2F
    jr z, jr_03C_7BFA                             ; $7BF8: $28 $00

jr_03C_7BFA:
    inc sp                                        ; $7BFA: $33
    inc l                                         ; $7BFB: $2C
    nop                                           ; $7BFC: $00
    ld bc, $0001                                  ; $7BFD: $01 $01 $00
    ld bc, $0001                                  ; $7C00: $01 $01 $00
    ld bc, $007B                                  ; $7C03: $01 $7B $00
    sbc [hl]                                      ; $7C06: $9E
    cp h                                          ; $7C07: $BC
    nop                                           ; $7C08: $00
    add e                                         ; $7C09: $83
    halt                                          ; $7C0A: $76
    nop                                           ; $7C0B: $00
    ld l, [hl]                                    ; $7C0C: $6E
    xor [hl]                                      ; $7C0D: $AE
    ld de, $37AF                                  ; $7C0E: $11 $AF $37
    nop                                           ; $7C11: $00
    ld l, d                                       ; $7C12: $6A
    and l                                         ; $7C13: $A5
    nop                                           ; $7C14: $00
    ld a, a                                       ; $7C15: $7F
    sub h                                         ; $7C16: $94
    nop                                           ; $7C17: $00
    cp e                                          ; $7C18: $BB
    ld a, b                                       ; $7C19: $78
    nop                                           ; $7C1A: $00
    jr nc, jr_03C_7BCD                            ; $7C1B: $30 $B0

    ld de, $B101                                  ; $7C1D: $11 $01 $B1
    db $10                                        ; $7C20: $10
    ld [hl], $42                                  ; $7C21: $36 $42
    nop                                           ; $7C23: $00
    ret z                                         ; $7C24: $C8

    daa                                           ; $7C25: $27
    db $10                                        ; $7C26: $10
    ld l, e                                       ; $7C27: $6B
    ld b, d                                       ; $7C28: $42
    nop                                           ; $7C29: $00
    daa                                           ; $7C2A: $27
    ld l, d                                       ; $7C2B: $6A
    nop                                           ; $7C2C: $00
    rlc c                                         ; $7C2D: $CB $01
    nop                                           ; $7C2F: $00
    ld bc, $0001                                  ; $7C30: $01 $01 $00
    ld bc, $0001                                  ; $7C33: $01 $01 $00
    ld bc, $0001                                  ; $7C36: $01 $01 $00
    ld bc, $00A5                                  ; $7C39: $01 $A5 $00
    ld a, a                                       ; $7C3C: $7F
    sub h                                         ; $7C3D: $94
    nop                                           ; $7C3E: $00
    cp e                                          ; $7C3F: $BB
    ld a, b                                       ; $7C40: $78
    nop                                           ; $7C41: $00
    ld l, [hl]                                    ; $7C42: $6E
    or d                                          ; $7C43: $B2
    db $10                                        ; $7C44: $10
    scf                                           ; $7C45: $37
    ld c, l                                       ; $7C46: $4D
    nop                                           ; $7C47: $00
    ld b, h                                       ; $7C48: $44
    rlc b                                         ; $7C49: $CB $00
    ld bc, $0001                                  ; $7C4B: $01 $01 $00
    ld bc, $0001                                  ; $7C4E: $01 $01 $00
    ld bc, $0001                                  ; $7C51: $01 $01 $00
    ld bc, $0001                                  ; $7C54: $01 $01 $00
    ld bc, $0001                                  ; $7C57: $01 $01 $00
    ld bc, $0001                                  ; $7C5A: $01 $01 $00
    ld bc, $0001                                  ; $7C5D: $01 $01 $00
    pop hl                                        ; $7C60: $E1
    ld bc, $AC01                                  ; $7C61: $01 $01 $AC
    xor l                                         ; $7C64: $AD
    db $10                                        ; $7C65: $10
    ld bc, $0001                                  ; $7C66: $01 $01 $00
    ld bc, $0001                                  ; $7C69: $01 $01 $00
    ld bc, $0001                                  ; $7C6C: $01 $01 $00
    ld bc, $0001                                  ; $7C6F: $01 $01 $00
    ldh [c], a                                    ; $7C72: $E2
    ld bc, $8D01                                  ; $7C73: $01 $01 $8D
    adc e                                         ; $7C76: $8B
    db $10                                        ; $7C77: $10
    ld bc, $0001                                  ; $7C78: $01 $01 $00
    ld bc, $0001                                  ; $7C7B: $01 $01 $00
    ld bc, $0001                                  ; $7C7E: $01 $01 $00
    ld bc, $00AE                                  ; $7C81: $01 $AE $00
    add b                                         ; $7C84: $80
    jp nz, $9500                                  ; $7C85: $C2 $00 $95

    xor h                                         ; $7C88: $AC
    nop                                           ; $7C89: $00
    cp e                                          ; $7C8A: $BB
    pop bc                                        ; $7C8B: $C1
    nop                                           ; $7C8C: $00
    sub c                                         ; $7C8D: $91
    ld b, a                                       ; $7C8E: $47
    nop                                           ; $7C8F: $00
    adc b                                         ; $7C90: $88
    halt                                          ; $7C91: $76
    nop                                           ; $7C92: $00
    cp h                                          ; $7C93: $BC
    jr nc, jr_03C_7C96                            ; $7C94: $30 $00

jr_03C_7C96:
    ld b, c                                       ; $7C96: $41
    dec l                                         ; $7C97: $2D
    nop                                           ; $7C98: $00
    ld l, e                                       ; $7C99: $6B
    ld l, d                                       ; $7C9A: $6A
    nop                                           ; $7C9B: $00
    ld h, h                                       ; $7C9C: $64
    ret                                           ; $7C9D: $C9


    nop                                           ; $7C9E: $00
    ld bc, $0001                                  ; $7C9F: $01 $01 $00
    ld bc, $0001                                  ; $7CA2: $01 $01 $00
    ld bc, $002B                                  ; $7CA5: $01 $2B $00
    inc l                                         ; $7CA8: $2C
    cpl                                           ; $7CA9: $2F
    nop                                           ; $7CAA: $00
    ld l, a                                       ; $7CAB: $6F
    ld b, a                                       ; $7CAC: $47
    nop                                           ; $7CAD: $00
    ld bc, $0041                                  ; $7CAE: $01 $41 $00
    dec hl                                        ; $7CB1: $2B
    ld a, [hl+]                                   ; $7CB2: $2A
    nop                                           ; $7CB3: $00
    jr z, @-$35                                   ; $7CB4: $28 $C9

    nop                                           ; $7CB6: $00
    ld bc, $0001                                  ; $7CB7: $01 $01 $00
    ld bc, $0001                                  ; $7CBA: $01 $01 $00
    ld bc, $0001                                  ; $7CBD: $01 $01 $00
    ld bc, $0001                                  ; $7CC0: $01 $01 $00
    ld bc, $0001                                  ; $7CC3: $01 $01 $00
    ld bc, $0001                                  ; $7CC6: $01 $01 $00
    ld bc, $0001                                  ; $7CC9: $01 $01 $00
    pop hl                                        ; $7CCC: $E1
    sbc $00                                       ; $7CCD: $DE $00
    jp c, Jump_000_0001                           ; $7CCF: $DA $01 $00

    add hl, hl                                    ; $7CD2: $29
    ld l, b                                       ; $7CD3: $68
    nop                                           ; $7CD4: $00
    ld d, l                                       ; $7CD5: $55
    ld bc, $0100                                  ; $7CD6: $01 $00 $01
    ld bc, $0100                                  ; $7CD9: $01 $00 $01
    ld bc, $D300                                  ; $7CDC: $01 $00 $D3
    call nc, $D500                                ; $7CDF: $D4 $00 $D5
    ld bc, $2700                                  ; $7CE2: $01 $00 $27
    ld l, a                                       ; $7CE5: $6F
    nop                                           ; $7CE6: $00
    dec [hl]                                      ; $7CE7: $35
    ld b, c                                       ; $7CE8: $41
    nop                                           ; $7CE9: $00
    ld bc, $0001                                  ; $7CEA: $01 $01 $00
    ld bc, $0001                                  ; $7CED: $01 $01 $00
    db $E3                                        ; $7CF0: $E3
    ld bc, $0100                                  ; $7CF1: $01 $00 $01
    ld bc, $2A00                                  ; $7CF4: $01 $00 $2A
    ld l, l                                       ; $7CF7: $6D
    nop                                           ; $7CF8: $00
    ld l, d                                       ; $7CF9: $6A
    ld bc, $0100                                  ; $7CFA: $01 $00 $01
    ld bc, $0100                                  ; $7CFD: $01 $00 $01
    ld bc, $0100                                  ; $7D00: $01 $00 $01
    ld bc, $0100                                  ; $7D03: $01 $00 $01
    ld bc, $0100                                  ; $7D06: $01 $00 $01
    ld bc, $0100                                  ; $7D09: $01 $00 $01

jr_03C_7D0C:
    ld bc, $0100                                  ; $7D0C: $01 $00 $01
    ld bc, $0100                                  ; $7D0F: $01 $00 $01
    xor [hl]                                      ; $7D12: $AE
    nop                                           ; $7D13: $00
    add b                                         ; $7D14: $80
    jp nz, $9500                                  ; $7D15: $C2 $00 $95

    xor h                                         ; $7D18: $AC
    nop                                           ; $7D19: $00
    cp e                                          ; $7D1A: $BB
    pop bc                                        ; $7D1B: $C1
    nop                                           ; $7D1C: $00
    sub c                                         ; $7D1D: $91
    ld b, a                                       ; $7D1E: $47
    nop                                           ; $7D1F: $00
    adc b                                         ; $7D20: $88
    halt                                          ; $7D21: $76
    nop                                           ; $7D22: $00
    cp h                                          ; $7D23: $BC
    jr nc, jr_03C_7D27                            ; $7D24: $30 $01

    ld e, d                                       ; $7D26: $5A

jr_03C_7D27:
    ld l, e                                       ; $7D27: $6B
    nop                                           ; $7D28: $00
    ld l, d                                       ; $7D29: $6A
    ld h, h                                       ; $7D2A: $64
    nop                                           ; $7D2B: $00
    ret                                           ; $7D2C: $C9


    ld bc, $0100                                  ; $7D2D: $01 $00 $01
    ld bc, $0100                                  ; $7D30: $01 $00 $01
    ld bc, $0100                                  ; $7D33: $01 $00 $01
    sub l                                         ; $7D36: $95
    jr nz, jr_03C_7D65                            ; $7D37: $20 $2C

    ld [hl], $20                                  ; $7D39: $36 $20
    ld l, a                                       ; $7D3B: $6F
    ld b, a                                       ; $7D3C: $47
    ld bc, $2A1A                                  ; $7D3D: $01 $1A $2A
    nop                                           ; $7D40: $00
    jr z, jr_03C_7D0C                             ; $7D41: $28 $C9

    nop                                           ; $7D43: $00
    ld bc, $0001                                  ; $7D44: $01 $01 $00
    ld bc, $0001                                  ; $7D47: $01 $01 $00
    ld bc, $0001                                  ; $7D4A: $01 $01 $00
    ld bc, $0001                                  ; $7D4D: $01 $01 $00
    ld bc, $0001                                  ; $7D50: $01 $01 $00
    ld bc, $0001                                  ; $7D53: $01 $01 $00
    ld bc, $0001                                  ; $7D56: $01 $01 $00
    ld bc, $0001                                  ; $7D59: $01 $01 $00
    pop hl                                        ; $7D5C: $E1
    sbc $00                                       ; $7D5D: $DE $00
    jp c, Jump_000_0101                           ; $7D5F: $DA $01 $01

    or e                                          ; $7D62: $B3
    ld d, l                                       ; $7D63: $55
    nop                                           ; $7D64: $00

jr_03C_7D65:
    ld bc, $0001                                  ; $7D65: $01 $01 $00
    ld bc, $0001                                  ; $7D68: $01 $01 $00
    ld bc, $0001                                  ; $7D6B: $01 $01 $00
    db $D3                                        ; $7D6E: $D3
    call nc, $D500                                ; $7D6F: $D4 $00 $D5
    ld bc, $1001                                  ; $7D72: $01 $01 $10
    or h                                          ; $7D75: $B4
    db $10                                        ; $7D76: $10
    ld bc, $0001                                  ; $7D77: $01 $01 $00
    ld bc, $0001                                  ; $7D7A: $01 $01 $00
    ld bc, $0001                                  ; $7D7D: $01 $01 $00
    db $E3                                        ; $7D80: $E3
    ld bc, $0100                                  ; $7D81: $01 $00 $01
    ld bc, $B501                                  ; $7D84: $01 $01 $B5
    or [hl]                                       ; $7D87: $B6
    db $10                                        ; $7D88: $10
    ld bc, $0001                                  ; $7D89: $01 $01 $00
    ld bc, $0001                                  ; $7D8C: $01 $01 $00
    ld bc, $0001                                  ; $7D8F: $01 $01 $00
    ld bc, $0001                                  ; $7D92: $01 $01 $00
    ld bc, $0001                                  ; $7D95: $01 $01 $00
    ld bc, $0001                                  ; $7D98: $01 $01 $00
    ld bc, $0001                                  ; $7D9B: $01 $01 $00
    ld bc, $0001                                  ; $7D9E: $01 $01 $00
    ld bc, $0001                                  ; $7DA1: $01 $01 $00
    ld bc, $0001                                  ; $7DA4: $01 $01 $00
    ld bc, $0001                                  ; $7DA7: $01 $01 $00
    ld bc, $0001                                  ; $7DAA: $01 $01 $00
    ld bc, $0001                                  ; $7DAD: $01 $01 $00
    ld bc, $0001                                  ; $7DB0: $01 $01 $00
    ld bc, $00AC                                  ; $7DB3: $01 $AC $00
    cp [hl]                                       ; $7DB6: $BE
    and d                                         ; $7DB7: $A2
    nop                                           ; $7DB8: $00
    call nz, $0076                                ; $7DB9: $C4 $76 $00
    cp h                                          ; $7DBC: $BC
    jr nc, jr_03C_7DBF                            ; $7DBD: $30 $00

jr_03C_7DBF:
    ld e, [hl]                                    ; $7DBF: $5E
    ld l, e                                       ; $7DC0: $6B
    nop                                           ; $7DC1: $00
    ld l, d                                       ; $7DC2: $6A
    ld h, h                                       ; $7DC3: $64
    nop                                           ; $7DC4: $00
    ret                                           ; $7DC5: $C9


    ld bc, $0100                                  ; $7DC6: $01 $00 $01
    ld bc, $0100                                  ; $7DC9: $01 $00 $01
    ld bc, $0100                                  ; $7DCC: $01 $00 $01
    ld bc, $0100                                  ; $7DCF: $01 $00 $01
    ld bc, $0100                                  ; $7DD2: $01 $00 $01
    ld bc, $0100                                  ; $7DD5: $01 $00 $01
    ld bc, $0100                                  ; $7DD8: $01 $00 $01
    ld bc, $0100                                  ; $7DDB: $01 $00 $01
    ld bc, $0100                                  ; $7DDE: $01 $00 $01
    ld bc, $0100                                  ; $7DE1: $01 $00 $01
    ld bc, $0100                                  ; $7DE4: $01 $00 $01
    ld bc, $0100                                  ; $7DE7: $01 $00 $01
    ld bc, $0100                                  ; $7DEA: $01 $00 $01
    ld bc, $0100                                  ; $7DED: $01 $00 $01
    ld bc, $0100                                  ; $7DF0: $01 $00 $01
    ld bc, $0100                                  ; $7DF3: $01 $00 $01
    ld bc, $0100                                  ; $7DF6: $01 $00 $01
    ld bc, $0100                                  ; $7DF9: $01 $00 $01
    ld bc, $0100                                  ; $7DFC: $01 $00 $01
    ld bc, $0100                                  ; $7DFF: $01 $00 $01
    ld bc, $0100                                  ; $7E02: $01 $00 $01
    ld bc, $0100                                  ; $7E05: $01 $00 $01
    ld bc, $0100                                  ; $7E08: $01 $00 $01
    ld bc, $0100                                  ; $7E0B: $01 $00 $01
    ld bc, $0100                                  ; $7E0E: $01 $00 $01
    ld bc, $0100                                  ; $7E11: $01 $00 $01
    ld bc, $0100                                  ; $7E14: $01 $00 $01
    ld bc, $0100                                  ; $7E17: $01 $00 $01
    ld bc, $0100                                  ; $7E1A: $01 $00 $01
    ld bc, $0100                                  ; $7E1D: $01 $00 $01
    ld bc, $0100                                  ; $7E20: $01 $00 $01
    ld bc, $0100                                  ; $7E23: $01 $00 $01
    ld bc, $0100                                  ; $7E26: $01 $00 $01
    ld bc, $0100                                  ; $7E29: $01 $00 $01
    ld bc, $0100                                  ; $7E2C: $01 $00 $01
    ld bc, $0100                                  ; $7E2F: $01 $00 $01
    xor h                                         ; $7E32: $AC
    nop                                           ; $7E33: $00
    cp [hl]                                       ; $7E34: $BE
    and d                                         ; $7E35: $A2
    nop                                           ; $7E36: $00
    call nz, $0076                                ; $7E37: $C4 $76 $00
    cp h                                          ; $7E3A: $BC
    jr nc, jr_03C_7E3E                            ; $7E3B: $30 $01

    sbc b                                         ; $7E3D: $98

jr_03C_7E3E:
    ld l, e                                       ; $7E3E: $6B
    nop                                           ; $7E3F: $00
    ld l, d                                       ; $7E40: $6A
    ld h, h                                       ; $7E41: $64
    nop                                           ; $7E42: $00
    ret                                           ; $7E43: $C9


    ld bc, $0100                                  ; $7E44: $01 $00 $01
    ld bc, $0100                                  ; $7E47: $01 $00 $01
    ld bc, $0100                                  ; $7E4A: $01 $00 $01
    ld bc, $0100                                  ; $7E4D: $01 $00 $01
    ld bc, $0100                                  ; $7E50: $01 $00 $01
    ld bc, $0100                                  ; $7E53: $01 $00 $01
    ld bc, $0100                                  ; $7E56: $01 $00 $01
    ld bc, $0100                                  ; $7E59: $01 $00 $01
    ld bc, $0100                                  ; $7E5C: $01 $00 $01
    ld bc, $0100                                  ; $7E5F: $01 $00 $01
    ld bc, $0100                                  ; $7E62: $01 $00 $01
    ld bc, $0100                                  ; $7E65: $01 $00 $01
    ld bc, $0100                                  ; $7E68: $01 $00 $01
    ld bc, $0100                                  ; $7E6B: $01 $00 $01
    ld bc, $0100                                  ; $7E6E: $01 $00 $01
    ld bc, $0100                                  ; $7E71: $01 $00 $01
    ld bc, $0100                                  ; $7E74: $01 $00 $01
    ld bc, $0100                                  ; $7E77: $01 $00 $01
    ld bc, $0100                                  ; $7E7A: $01 $00 $01
    ld bc, $0100                                  ; $7E7D: $01 $00 $01
    ld bc, $0100                                  ; $7E80: $01 $00 $01
    ld bc, $0100                                  ; $7E83: $01 $00 $01
    ld bc, $0100                                  ; $7E86: $01 $00 $01
    ld bc, $0100                                  ; $7E89: $01 $00 $01
    ld bc, $0100                                  ; $7E8C: $01 $00 $01
    ld bc, $0100                                  ; $7E8F: $01 $00 $01
    ld bc, $0100                                  ; $7E92: $01 $00 $01
    ld bc, $0100                                  ; $7E95: $01 $00 $01
    ld bc, $0100                                  ; $7E98: $01 $00 $01
    ld bc, $0100                                  ; $7E9B: $01 $00 $01
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
